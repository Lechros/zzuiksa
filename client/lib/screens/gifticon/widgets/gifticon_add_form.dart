import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:client/screens/gifticon/model/gifticon_model.dart';

class GifticonAddForm extends StatefulWidget {
  final Gifticon? initialGifticon;
  final Function(Gifticon) onSubmit;

  const GifticonAddForm({
    Key? key, required this.onSubmit, this.initialGifticon
  }) : super(key: key);

  @override
  State<GifticonAddForm> createState() => _GifticonAddFormState();
}

class _GifticonAddFormState extends State<GifticonAddForm> {
  bool _isAmountVoucher = false;
  final _formKey = GlobalKey<FormState>();
  late Gifticon _gifticon;

  @override
  void initState() {
    super.initState();
    _gifticon = widget.initialGifticon ?? Gifticon();
    _isAmountVoucher = _gifticon.remainMoney != null;
  }

  void _handleSubmit() {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    widget.onSubmit(_gifticon);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            child: Image(
              image: AssetImage('assets/images/tempGifticon.jpeg'),
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            title: Text('금액권인가요?', style: Theme.of(context).textTheme.displayMedium),
            trailing: Switch(
              value: _isAmountVoucher,
              onChanged: (bool value) {
                setState(() {
                  _isAmountVoucher = value;
                  _gifticon.remainMoney = value ? 0 : null;  // 금액권 여부에 따라 금액 설정 초기화
                });
              },
              activeColor: Constants.main400,
            ),
          ),
          SizedBox(height: 30),
          _buildTextFormField(
            label: '기프티콘명',
            value: _gifticon.name,
            onChanged: (value) => _gifticon.name = value,
          ),
          _buildTextFormField(
            label: '브랜드명',
            value: _gifticon.store,
            onChanged: (value) => _gifticon.store = value,
          ),
          _buildTextFormField(
            label: '바코드',
            value: _gifticon.couponNum,
            onChanged: (value) => _gifticon.couponNum = value,
          ),
          _buildTextFormField(
            label: '유효기간',
            value: _gifticon.endDate,
            onChanged: (value) => _gifticon.endDate = value,
          ),
          if (_isAmountVoucher)
            _buildTextFormField(
              label: '금액',
              value: _gifticon.remainMoney?.toString(),
              onChanged: (value) => _gifticon.remainMoney = int.tryParse(value),
              keyboardType: TextInputType.number,
            ),
          _buildTextFormField(
            label: '메모',
            value: _gifticon.memo,
            onChanged: (value) => _gifticon.memo = value,
          ),
        ],
      ),
    );
  }

  Widget _buildTextFormField({
    required String label,
    String? value,
    required Function(String) onChanged,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextFormField(
      initialValue: value,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        filled: true,
        fillColor: Constants.main100,
        contentPadding: EdgeInsets.symmetric(horizontal: 30),
      ),
      style: Theme.of(context).textTheme.bodyLarge,
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$label을(를) 입력해주세요.';
        }
        return null;
      },
    );
  }
}
