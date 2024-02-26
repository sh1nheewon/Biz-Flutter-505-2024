# Flutter & Dart Project

## SDK 설치

- `https://flutter.dev` 에서 `flutter sdk` 다운로드
- 압축풀기 : `c:\dev\flutter` 폴더에 압축풀기
- `시스템 환경변수 path` 에 `flutter/bin` 폴더 지정해주기
- 검색창에 '고급 시스템' 검색 -> 환경변수 -> 시스템 변수 -> path -> 편집 -> flutter.dev (압축 푼 파일) 의 bin 주소 복사 붙여넣기 후 확인

- `cmd` 창에서 `flutter` 명령 입력하여 확인하기
- `vsCode` 터미널 창에서 `flutter` 명령 입력하여 확인하기

## vsCode 확장팩 설치
- `flutter` 검색하여 `flutter`, `flutter widget snapshot` , `flutter files` 도구 설치하기
- `dart` 검색하여 `dart lang.` 팩 설치 확인

## flutter 와 Android studio 연결하기

- `flutter doctor`

- `Android cmd-line toolchain` 설치 
- Android studio -> More Actions -> SDK Manager -> SDK Tools -> Android SDK Command-line Tools 

- `flutter doctor --android-licenses` 실행

### 문제 발생하면

- `dart pub cache repair`
- `dart pub cache clean`

- `flutter create --org=com.callor hello`
- json package 를 org=com.callor 로 설치, 프로젝트 파일명은 hello 로 설치.



android studio 설치
sdk manager

virtual device
tiramisu 33v

7.1
6
5.1
5

설치

- lib -> main.dart 의 `run` 클릭

- 왼쪽 아래 설정에서 `codeAction` 검색 후 `json` 에서 편집

- [git reference ](https://github.com/callor/Reference/blob/master/Settings/dart_setting.xml) 를 settings.json 에 붙여넣기