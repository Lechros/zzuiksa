package com.zzuiksa.server.domain.auth.service;

import com.zzuiksa.server.domain.auth.data.MemberDetail;
import com.zzuiksa.server.domain.member.entity.Member;
import com.zzuiksa.server.domain.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberDetailService implements UserDetailsService {

    private final MemberRepository memberRepository;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        Member member = memberRepository.findById(Long.parseLong(id))
                .orElseThrow(() -> new UsernameNotFoundException(""));

        return new MemberDetail(member);
    }
}
