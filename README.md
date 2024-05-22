# 🐹 쮝사 - 내 손 안의 작은 집사  
**삼성 청년 SW 아카데미** 10기 서울 2반 2조 369팀

#### 목차

1. [프로젝트 소개](#-프로젝트-소개)   
2. [기능](#-기능)
3. [서비스 화면](#-서비스-화면)
5. [팀원 소개](#-팀원-소개)  

<br>

## 🐹 프로젝트 소개

### 📅 프로젝트 기간
2024.04.09 - 2024.05.20 (7주)
> **기획 및 설계** : 2024.04.09 - 2023.04.30 (3주)
>
> **기능 구현** : 2024.05.01 - 2024.05.20 (4주)
  

<br>

###  💡 서비스 개요
#### 배경
해야할 일을 메모하고도 떠올리지 못하거나, 기프티콘의 유효기간, 남은 금액, 사용여부를 까먹는 일이 많이 발생
#### 목표
일상에서 잊어버리기 쉬운 일들을 기록하고 까먹지 않게 챙겨주는 서비스 제작

<br>

### 🐥 기술 스택
|구분|기술|
|:---|:---|
|Infra|<img src="https://img.shields.io/badge/AWS EC2-FF9900?style=flat-square&logo=amazonec2&logoColor=white"><img src="https://img.shields.io/badge/NGINX-009639?style=flat-square&logo=nginx&logoColor=white"><img src="https://img.shields.io/badge/DOCKER-2496ED?style=flat-square&logo=docker&logoColor=white"><img src="https://img.shields.io/badge/UBUNTU-E95420?style=flat-square&logo=ubuntu&logoColor=white"><img src="https://img.shields.io/badge/JENKINS-D24939?style=flat-square&logo=jenkins&logoColor=white">|
|Frontend|<img src="https://img.shields.io/badge/Flutter-2496ED?style=flat-square&logo=FLUTTER&logoColor=white"><img src="https://img.shields.io/badge/Dart-1572B6?style=flat-square&logo=Dart&logoColor=white"><img src="https://img.shields.io/badge/Android-6DB33F?style=flat-square&logo=Android&logoColor=white">|
|Backend|<img src="https://img.shields.io/badge/JAVA-FF4000?style=flat-square&logo=openjdk&logoColor=white"><img src="https://img.shields.io/badge/SPRING-6DB33F?style=flat-square&logo=spring&logoColor=white"><img src="https://img.shields.io/badge/HIBERNATE-59666C?style=flat-square&logo=hibernate&logoColor=white"><img src="https://img.shields.io/badge/MYSQL-4479A1?style=flat-square&logo=mysql&logoColor=white"><img src="https://img.shields.io/badge/KAKAO API-FFCD00?style=flat-square&logo=kakao&logoColor=white">|
|Management Tool|<img src="https://img.shields.io/badge/Jira-0052CC?style=flat-square&logo=Jira&logoColor=white"><img src="https://img.shields.io/badge/GitLab-FC6D26?style=flat-square&logo=GitLab&logoColor=white"><img src="https://img.shields.io/badge/MATTERMOST-0058CC?style=flat-square&logo=mattermost&logoColor=white"><img src="https://img.shields.io/badge/NOTION-000000?style=flat-square&logo=notion&logoColor=white"><img src="https://img.shields.io/badge/FIGMA-F24E1E?style=flat-square&logo=figma&logoColor=white">
|IDE|<img src="https://img.shields.io/badge/vscode-007ACC?style=flat-square&logo=visualstudiocode&logoColor=white"><img src="https://img.shields.io/badge/IntellJ IDEA-000000?style=flat-square&logo=intellijidea&logoColor=white">|


<br>

## 🐣 기능

|구분|기능|설명|비고|
|--|--|--|--|
|1|일정 관리|✔ 자연어 형식 일정을 자동으로 인식하여 생성<br>✔ 반복 일정 생성<br>✔ 대시보드에서 오늘의 일정, 일정 통계 확인<br>✔ 등록된 일정의 위치에 가까워지면 해당 일정 알림|-TMAP API 사용<br>-Open API 사용|
|2|기프티콘 관리|✔ 기프티콘 이미지를 인식하여 자동으로 등록<br>✔ 유효기간과 남은 금액 관리|-CLOVA OCR 활용하여 이미지 인식| 
|3|대시보드 및 통계|✔ 당일의 일정 정보들을 모아서 확인<br>✔ 전체 일정 달성률과 카테고리별, 주간 달성률 시각적으로 확인 가능||      

<br>
<br>
<br>

## 🔍 서비스 화면
#### 대시보드
- **홈 화면**
![홈화면](/docs/asset/홈화면.jpg)

#### 일정 관리
- **일정 관리 캘린더**
![일정관리 캘린더](/docs/asset/일정관리 캘린더 화면.jpg)
- **캘린더 상세 화면**
![캘린더 상세 화면](/docs/asset/캘린더 상세 화면.jpg)
- **일정 상세 화면**
![일정 상세 화면](/docs/asset/일정 상세화면.jpg)

#### 기프티콘
- **기프티콘 관리**

#### 마이페이지
- **마이페이지**



<br>



## 🦜 설계

**인프라 아키텍쳐**

![erd](exec/architecture.png)

<br/>

**ERD**

![erd](exec/erd.png)

**외부 문서**
- [와이어프레임](https://www.figma.com/design/9TAmxpJ0IR71gbQ0Q22BwS/A202)

<br>
<br>
<br>

### 🕊 실행방법

exec 폴더 내 포팅 메뉴얼 참조

<br>
<br>
<br>

## 👨‍👩‍👧‍👦 팀원 소개 

**삼성 청년 SW 아카데미** 10기 서울 2반 2조 369팀

|조아영|유소연|최은비|박이언|최지원|
|:---|:---|:---|:---|:---|
|FE|BE/Infra|FE|BE/Infra|FE/BE|
|로그인/대시보드<br/>마이페이지|로그인/대시보드 API<br/>날씨 정보|일정화면<br/>지도|일정/소요시간 API<br/>자연어 일정 인식|기프티콘<br/>OCR|
