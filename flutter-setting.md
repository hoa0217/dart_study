## MacOs 설치 과정
### 1. flutter sdk 다운로드 및 unzip
다운로드 경로 : https://docs.flutter.dev/get-started/install/macos
> 나는 ~/app 경로에 풀었음.

![](https://velog.velcdn.com/images/gjwjdghk123/post/576e7f82-d243-444c-80b1-b5b007278b3b/image.png)
### 2. flutter 환경변수 설정
  ```bash
  # 압축을 푼 경로로 들어가기
  cd ~/app
  
  # 환경변수 설정
  export PATH="$PATH:`pwd`/flutter/bin"
  
  #환경변수가 설정됐는지 check
  echo $PATH
  ```
### 3. flutter 버전 체크 및 doctor로 dependency check
  ```bash
  # 버전 체크
  flutter --version

  #dependency 확인
  flutter doctor
  ```
  > android toolcahin, xcode, android studio 관련 이슈가 나옴. (정상)
 
### 4. 안드로이드 스튜디오 이슈 해결
#### 안드로이드 스튜디오 설치 
다운로드 경로 : https://developer.android.com/studio?hl=ko

### 5. Xcode 이슈 해결
#### Xcode 설치
1.appStore에서 Xcode 설치

  ![](https://velog.velcdn.com/images/gjwjdghk123/post/2038cfc1-6573-45bf-b329-e6f4fe5a860b/image.png)

2.설치 후 flutter depency 확인
- 설치해도 아래와 같이 경고가 뜨면 하라는대로 xcode를 한번 실행해준다.
![](https://velog.velcdn.com/images/gjwjdghk123/post/819f9ee4-ceb0-426f-ba64-c3f37d6c4a37/image.png)
```bash 
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
```
- 그래도 다른 에러(simulator에러)가 또 뜨면 cmd에서 xcode를 한번 더 설치해준다.
![](https://velog.velcdn.com/images/gjwjdghk123/post/1c0be0eb-d39c-4cc0-869a-14d7daa7e6e3/image.png)
```bash
xcodebuild -downloadPlatform iOS
```
> 에러가 나는 이유는 앱스토어에서 설치하면 Simulator를 누락하는 것 같았다.. 굳이 cmd에서 다시 설치하지 않고 Xcode에 들어가서 simulator를 설치해도 된다.
참고 : https://stackoverflow.com/questions/77160074/unable-to-get-list-of-installed-simulator-runtimes

#### cocoaPods 설치
brew에서 cocoaPods를 설치해도 되지만 수강중인 [강의: 패스트캠퍼스 Dart&Flutter 개발](https://fastcampus.co.kr/dev_online_dartflutter)에 강사님은 신뢰하지 않는다고한다. 따라서 virtual ruby 환경을 사용한다.
1.ruby 설치
```bash
 # rbenv 설치
 brew install rbenv

 # 설치 가능한 최신 stable 버전 목록을 출력한다
 rbenv install -l

 # ruby 3.2.2 버전을 설치한다
 rbenv install 3.2.2
```
2.rbenv 초기화
init 명령어가 먹히지 않고 아래와 같이 설명이 나온다.
```bash
heojeonghwa@heojeonghwaui-MacBookPro > rbenv init
# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init - zsh)"
```
하라는 대로 ~/.zshrc 의 파일에 `eval "$(rbenv init - zsh)"` 를 입력 후 저장해준다.
```bash
heojeonghwa@heojeonghwaui-MacBookPro > vi ~/.zshrc
...
# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init - zsh)"

:wq
```
gem(ruby 라이브러리 관리 프로그램) 경로 확인
```bash
heojeonghwa@heojeonghwaui-MacBookPro > which gem
/Users/heojeonghwa/.rbenv/shims/gem
```
3.cocoaPods 설치
```bash
# 설치
sudo gem install cocoapods

# 버전 체크
pod --version
```
### 6. AndroidToolchain 이슈 해결

  ![](https://velog.velcdn.com/images/gjwjdghk123/post/18f1d3d8-3cb7-44e0-b43d-fa4df2c75eed/image.png)
#### cmdline-tools 설치
- Android Studio 실행
- settings > Android SDK > SDK Tools 경로에 들어가서 `Android SDK Command-line Tools` 체크 > OK
![](https://velog.velcdn.com/images/gjwjdghk123/post/c02dc7ab-1639-4bfa-81cb-5a5c2071dce7/image.png)

#### 라이센스 확인
```bash
flutter doctor --android-licenses
```
모조리 y해주고 넘어가면 **이슈 모두 해결~~!🙂**

![](https://velog.velcdn.com/images/gjwjdghk123/post/37d0664d-f816-460b-902d-88f9b8a7f8e5/image.png)

### 7. FVM을 활용하여 Flutter 설치
공식문서 : https://fvm.app/docs/getting_started/installation
```bash
# fvm 저장소 등록
brew tap leoafarias/fvm

# fvm 설치
brew install fvm

# fvm 통해 설치할 수 있는 flutter 버전
fvm releases

# stable 버전(현 시점 3.16.0) 설치
fvm install 3.16.0

# fvm 통해 설치한 flutter 목록
fvm list
```
다른 프로젝트에서 공통적으로 쓰고싶다면?
```bash
# global 설정
fvm global 3.16.0
```
특정 프로젝트에 버전을 설정하고 싶다면?
```bash
# 미리 만들어진 프로젝트 경로로 이동
cd ~/study/flutter/test_flutter_project
# fvm 버전 설정
fvm use 3.16.0
```
- 해당 프로젝트 settings > Flutter에 들어가서 Flutter SDK path를 잡아준다.
![](https://velog.velcdn.com/images/gjwjdghk123/post/1f536fd0-e779-48bc-a560-a2d62220c5d6/image.png)
- 설정 경로 : `프로젝트경로/.fvm/flutter_sdk`
![](https://velog.velcdn.com/images/gjwjdghk123/post/3cfc9139-e142-46e0-9940-9aafb6a64ecd/image.png)
> 숨김폴더 보는 법 `cmd + shift + .`


참고 : [강의: 패스트캠퍼스 Dart&Flutter 개발](https://fastcampus.co.kr/dev_online_dartflutter)
