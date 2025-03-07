//write tests for out class
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/calculator.dart';

//press this run button below
void main() {
  test("adds two integers", (){
    //actual value vs expected value

    //zindagi ka pehla unit test (simple)
    var obj = Calculator();
    // expect(obj.add(2, 2), 2); wrong test case as 2+2=4
    expect(obj.add(2, 2), 4);

  });
}