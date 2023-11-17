### Flutter에게 UI란?
- Flutter = Cross Platform, UI Toolkit
- Flutter는 하나의 소스코드로 UI를 **여러 Platform**에 출력할 수 있기 때문에 UI는 상당히 중요한 요소이다.

### Flutter UI에서 Widget이란?
- Widget : Flutter UI의 가장 기본적인 단위
- UI를 구성하는 각각의 요소가 모두 Widget으로 이루어져있다.
- ex) 간단한 블록, 텍스트 입력 창, 심지어 특정 요소 간의 간격 등
- Flutter 개발자는 이 **Widget을 얼마나 적제적소에 사용하느냐**가 관건
- Flutter는 기본 SDK의 Widget, pub.dev 등 오픈소스 Widget을 더한다면 상당히 많다.

### Widget Tree
- Widget Tree : Widget들 간의 관계를 나타낸 형태
  수평적관계, 수직적관계도 가능 (상태관리에 중요한 개념)
- 블록과 같은 Widget을 조합하는 방식에 따라 전혀 다른 UI를 만들 수 있으며 재사용도 가능하다.

### Stateless Widget/Stateful Widget
- Stateless Widget : 화면을 갱신 할 필요가 없는 정적 화면 구성 시 사용
- Stateful Widget : 상황에 따라 화면을 갱신할 필요가 있는 동적 화면 구성 시 사용

### 프로젝트 설정
1. fvm 버전 선택
   
   ![](https://velog.velcdn.com/images/gjwjdghk123/post/57f12434-c501-40ff-a483-129bbc5497a5/image.png)

3. 프로젝트 이름, 도메인, 언어, 플랫폼 선택 후 create
   
   ![](https://velog.velcdn.com/images/gjwjdghk123/post/6941fcb1-4577-4c24-9838-e588cedb583f/image.png)

> 1. Flutter Pub Get
> 2. Device Manager에서 Device 생성 및 실행 (해당 강의에서는 Pixel 4 API 34 선택)
> 3. Flutter Device Selection에 Device 선택
> 4. main.dart 실행

### Hot restart, Hot reload
- Dart언어 = JIT 컴파일러 + AOT 컴파일러
- Flutter는 JIT컴파일러를 활용하여 시간이 오래걸리는 컴파일 과정을 거치지 않고서 코드의 변경사항을 앱에 즉시 반영할 수 있다.
- **Hot restart : 앱을 재실행 하는 형태**
  이 기능 활용 시 앱의 모든 상태가 초기화 되고, 앱의 코드 변경 사항을 반영할 수 있다.
  → 상태가 날라감
- **Hot reload : 앱을 재실행하지는 않지만 코드의 변경사항을 반영하는 기능**
  이 기능 활용 시 앱의 상태를 유지한 채로 코드의 수정사항을 확인하여 더욱 빠른 개발이 가능하다.
  → 상태가 유지됨
> 주의사항   
모두 앱을 재 컴파일 후 빌드하는 것이 아니기 때문에, 앱의 기초가 되는 네이티브 코드 수정, 라이브러리 추가, Asset의 추가 등의 상황에서는 정상적으로 작동되지 않는다.
또한 지나치게 많은 코드의 변경이 있을 경우 Reload/Restart 순으로 실행중인 프로세스가 상위 재시동을 요청할 수 있다.
특히 추후 상태를 관리하는 개발 단계에 도달하게 된다면, 해당 기능을 사용 할 때 주의를 요하게 될 수도 있다.

### Design Guide
- 개발자들 만으로도 사용성 높은 앱을 구현하는데 있어 디자인 가이드를 지키는 것이 앱의 완성도를 높이는데 큰 도움을 줄 수 있다.
- Flutter내의 대표적인 디자인 가이드 2가지
- Material Design : Google의 철학이 녹아져 있는 디자인 가이드.
> 공식 홈페이지 : https://m3.material.io/styles
- Cupertino Design : Apple의 철학이 녹아져 있는 디자인 가이드
- 디바이스에 따라 분리해서 구현할 수 있다.
> widget catalog : https://docs.flutter.dev/ui/widgets


