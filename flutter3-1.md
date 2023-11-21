## Flutter LifyCycle
### Lifecycle 이란
생애주기 : 한 객체가 생성되고 동작이 이루어진 뒤, 프로그램내에서 정리되는 과정까지를 말한다.
- 객체 지향 프로그래밍을 비롯해 여러 프로그래밍 방식에서 중요한 개념이며 최적화나 안정성을 고려하는 프로그램인 경우 중요도가 높다.
- Flutter에서도 각각의 Widget을 비롯한 모든 객체가 각자의 Lifecycle을 가지고 있으며 이를 잘 컨트롤하여 **앱을 원활하게 동작**할 수 있도록 코드를 작성해야한다.

### Stateless Widget Lifecycle
![](https://velog.velcdn.com/images/gjwjdghk123/post/7cd060fb-7c54-4648-9fc5-6f5fdc469efa/image.png)

- 1차원적인 순서로 지나가기 때문에 많이 쓰여도 크게 리소스에 위협을 받지 않는다 (효율적인 위젯)
- 치명적인 단점 : 위젯이 한번 빌드가 되면 그안에 내용이 수정이되어도 다시 빌드가 되는게 불가능하다.
- 사용해야할 위치를 잘 알고쓰는 것이 중요하다.

### Stateful Widget Lifecycle
![](https://velog.velcdn.com/images/gjwjdghk123/post/26f9bd00-8948-4d10-8ef2-281f8440e938/image.png)
- 복잡한 순서를 지니고 있으며 맨처음 위젯이 만들어지며 쌍으로 추가적인 *State객체*가 생긴다.
- 해당 *State객체에도 따로 라이프사이클을 지닌다.*
- `initSate()` -> `build()` 이후 `setState()`/`didUpdatedWidget()`함수를 통해 상위 위젯에게 상태가 업데이트 됐음을 알릴 수 있으며 재차 `build()`를 통해 상태를 업데이트 할 수 있다.
- 그 후 build가 된 위젯이 더이상 activate하지 않은 시점이 오면 `dispose()`함수를 통해 리소스를 가지고 있던 객체를 dispose시키고 최종적으로 widget도 dispose시킨다.

> initState과정과 build과정이 분리가 되어있으므로, build과정에서 변수가 선언 또는 할당이 되면 setState()/didUpdatedWidget()가 호출이 되더라도 build안에서 다시 reset이 되기 때문에 initState과정 또는 이 사이클 밖에서 초기화하는 것을 추천.

### 쉽지않은 상태 관리
- 각각의 Widget의 내부 뿐 아니라 다른 Widget간의 상호작용도 신경써야하며 전역적인 변수와 함수에 대한 관리, 시기 적절한 dispose/initState 호출 등 다양한 관점에서 신경써야한다.
- 따라서 이러한 문제점들을 해결하기 위해 Flutter에는 여러 상태관리 모델이 오픈소스로 개발되어 공유되고 있다.
- 예) Riverpod / BLoC / GetX / Provider / Redux

> 오픈소스에 대한 내용은 보완예정입니다.





