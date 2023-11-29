## Flutter는 어떻게 구성되어 돌아갈까?
### Architectural layers
<img src="https://github.com/hoa0217/dart_study/assets/48192141/e5ed5b64-eb8b-4aa3-8bc3-5eda8b25bd1b" width="700">

Flutter Framwork(Dart)
- Material또는 Cupertino를 사용하여 Widget을 만든다.
- Widget은 Rendering되어 애니메이션, 제스처 등을 만든다.
- 최종단 Foundation에서 Engine으로 내려간다.

Engine(C/C++)
- 위 그림에 보이는 여러 서비스들을 제공한다.
- Dart Isolate Setup : Dart가 분리되어 실행되게하는 방법.
> 중요한 부분 : 프레임워크와 Embedder사이에 별도의 엔진(스키아 등)이 **소통역할**을한다.

<img src="https://github.com/hoa0217/dart_study/assets/48192141/850e7da4-630e-4d56-b854-9c5e263fec8b" width="700">

1. Flutter : Dart App(우리가 만든 코드베이스) + Framework
2. Engine: Engine + Embedder API
	- Flutter는 dart: ui라는 코드를 통해 Engine과 Embedder API와 소통
3. **플랫폼 각각에 특화**되어있는 Embedder 혹은 Runner
> **Note:** Flutter 3.10 set Impeller as the default rendering engine on iOS. It’s in preview for Android behind a flag.
> 3.10 버전부터는 IOS 기본 엔진으로 Impeller가 제공이 되고 있다.
- 스키아 -> 2D 특화
- Impeller -> 3D 특화

### Widgets
![스크린샷 2023-11-29 21 56 53](https://github.com/hoa0217/dart_study/assets/48192141/0c0cfa6e-3e5d-4dec-8920-a6eb98f55954)

- Widget안에 동작하는 Element가 있고 그안에 Render가 있다.
- 실질적으로 우린 Widget만 개발함.

### Platform Channel
<img src="https://github.com/hoa0217/dart_study/assets/48192141/8303b671-ada8-4b76-966a-cf57d43a2093" width="700">

- 플랫폼에 특화된 기능이 필요할 때 이를 사용 (ex 애플 로그인 등)
- Method Channel 치명적 단점 : 한번 ping을 보내면 pong을 받아야하는 구조이다보니, 실시간이 아님. 어느정도 제약 존재.

## Foreign Function Interface
- 다른 언어와의 소통을위한 인터페이스 FFI.
- 아두이노, 임베디드 시스템에서 많이 사용됨.

## Flutter web support
<img src="https://github.com/hoa0217/dart_study/assets/48192141/342e6199-1177-44ca-9dd1-3477a8a9b0f5" width="700">

- Flutter도 웹에 대한 지원을 한다.
- 쉽게 빌드가능하며 구조가 굉장히 간단하다.
- Framework가 바로 Browser로 변환.
- JavaScript/C++ -> 와즌? 으로 전환 예정
> Flutter Web이 성능상으로 문제가 있다라는 말이 있는데, Dart를 Javascript로 전환하는 과정에 리소스가 많이 소모된다고 함.

출처 : https://docs.flutter.dev/resources/architectural-overview#flutter-web-support
