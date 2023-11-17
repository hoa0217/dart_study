void main() {
  // 비동기 프로그래밍
  // 동기성 / 비동기성
  // 동기 : 모든 코드가 순차적으로 진행되는 형태
  // 비동기 : 코드가 동시다발적으로 실행되서. 순차적으로 보장을 할 수 없는 상태 -> 병렬
  
  todo(3);
  todo(1);
  todo(5);
  todo2().listen((event) {}); // Stream 객체는 지속적으로 listen하는 객체가 있어야함.
}

/// async / await / Future : 1회만 응답을 돌려받는 경우
Future<void> todo(int second) async {
  await Future.delayed(Duration(seconds: second));
  print('TODO Done in $second seconds');
}

/// async* / yield / Stream : 지속적으로 응답을 돌려받는 경우
Stream<int> todo2() async* {
  int counter = 0;

  while(counter <= 10){
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print('TODO Done in $counter');
    yield counter; // return 을 수시로 전달함.
  }

  print('TODO is Done');
}
