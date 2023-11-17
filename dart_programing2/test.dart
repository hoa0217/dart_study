void main() {
  /*
  // Switch 문
  int num = 101;
  // dart는 break가 필요없음.
  switch (num){
    case 1:
      print('Switch $num');
    case 2:
      print('Switch $num');
    case 3:
      print('Switch $num');
    case 4:
      print('Switch $num');
    case 5:
      print('Switch $num');
      // Only upper 3.0
    case > 100:
      print('Wow big number!! $num');
    default:
      print('Not 1 ~ 5');
  }

  for(int i = 0; i<10; i++){
    print('Running For Index $i');
  }

  List<int> indexes = [0,1,2,3,4,5];
  for (var index in indexes) {
    print('Running For Index $index');
  }
  */

  try{
    throw Exception('Unknown Error');
  }
  on UnsupportedError catch(e, s){
    print('~/ 해당 연산자는 0으로 나눌 수 없습니다.');
    print(e);
    print(s);
  }
  on TypeError catch(e, s){
    print('Null 값이 참조 되었습니다.');
    print(e);
    print(s);
  }
  catch(e,s){
    rethrow;
    print('모르는 에러가 발생했습니다');
  }
  finally{
    print('예외처리 문을 지나쳤습니다.');
  }

}