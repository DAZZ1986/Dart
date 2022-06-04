import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

var greeting = 'Hey';

/*
Dart - имеет статическую типизацию, поэтому когда мы установили 
тип переменной, то он не инзменится в будущем.
В Дарт все что может быть помещено в переменную является объектом.
Как следствие если переменная не проинициализирована то она будет 
хранить в себе null.
Множественное наследование запрещено. Есть интерфейсы.
Dart чувствителен к регистру и это две разные переменные num1 и Num1.
*/

void main() {
  // veiables

  //Numbers
  //   num
  //   /  \
  // int  double
  num number1 = 1.1;
  int number2 = 2;
  double number3 = 3.1;
  var number4 = number1;

  print(number2.runtimeType);
  print(number4.runtimeType);

  //Strings
  String str = 'Stroka';
  String str2 = "Stroka2";
  var str3 = 'Stroka3';

  var str4 = 'Stroka \' stroka novay'; //экранируем кавычку
  var str5 = 'Stroka " stroka novay'; //экранируем кавычку

  print(str4);
  print(str5);

  var str6 = 'text1 ' 'text2'; //объединение строк
  print(str6);

  var str7 = 'text1 \n text2'; //перенос строк
  print(str7);

  var str8 = '''text1
  text2
  text3
  text4
  '''; //перенос строк2
  print(str8);

  var str9 = 'Number3: $number3'; //интерполяция
  print(str9);

  var str10 = 'Number4: ${number4.round()}'; //если нужна какая либо
  //операция, к примеру вызвать метод округления
  print(str10);

  //Booleans - могут быть null, false, true
  var bool1 = true;
  print(bool1);

  //переменная dynamic помогает нам изменять тип переменной в Дарт,
  //тк дарт имеет статическую типизацию и тип переменной менять
  //нельзя и тут нас выручает dynamic
  dynamic dynamicVarieble = 1;
  print(dynamicVarieble);
  dynamicVarieble = 'str';
  print(dynamicVarieble);
  dynamicVarieble = true;
  print(dynamicVarieble);

  //final and const
  var iterationNumber = 1;
  iterationNumber = 2; //тут создаем новый объект и переменная
  //начинает указывать на него.

  //0xAARRGGBB
  // 0-9, A-F
  var hexRedColor = 0xFFFF0000; //в переменной хранится цвет и его
  print(hexRedColor); //нужно запретить к изменению
  const int hexRedColor2 = 0xFFFF0000; //можно явно указывать тип
  const hexRedColor3 = 0xFFFF0000; //но проще НЕ указывать тип

  //final и const - обе запрещают изменять переменную
  //const - более строгая, значение не будет изменяться на этапе
  //компиляции и в рантайме.
  //final - менее строгая, оно позволяет вычислить и установить
  //значение в рантайме, но после установки значения изменять
  //его нельзя.

  //final and const - различия выделения памяти.
  //const - память веделится сразу и как следствие ее нужно сразу
  //проинициализировать.
  //final - память выделится только тогда когда произойдет
  //присвоение в процессе тех или иных расчетов.
  //_________________________________________________________

  //_________________________________________________________
  // #6 - Приведение типов
  print('\n\n\n\n\n_____#6 - Приведение типов_____');
  // int -> double = toDouble()
  int intNum = 1;
  double doubleNum = intNum.toDouble();
  print("intNum: $intNum");
  print("doubleNum: $doubleNum");

  // double -> int = round()
  double doubleNum2 = 1.1;
  //int intNum2 = doubleNum2; //неявное приведение не получится = ошибка
  int intNum2 = doubleNum2.round(); //сработает округление в меньшую
  //сторону
  print("doubleNum: $doubleNum2");
  print("intNum: $intNum2"); // otvet = 1

  // int -> string = toString()
  var stringNum = intNum2.toString();
  print(stringNum.runtimeType);
  print(stringNum);

  // int -> string = toStringAsFixed()
  var doubleNum3 = 1.666666666;
  var stringNum3 = doubleNum3.toStringAsFixed(3); //после точки выводит 3 знака
  print(stringNum3);

  //из строки в число - parse()
  String strNum4 = '1.333';
  double numDouble4 = double.parse(strNum4);
  print(numDouble4.runtimeType);
  print(numDouble4);

  //из строки в число - tryParse() - тоесть конвертнет если сможет
  String strNum5 = '1.333';
  var numDouble5 =
      int.tryParse(strNum5); //будет ошибка тк 1.333 это не int, а double
  print(numDouble5.runtimeType);
  print(numDouble5);
  //_________________________________________________________

  //_________________________________________________________
  //#7 - Арифметические операторы
  print('\n\n\n\n\n_____#7 - Арифметические операторы_____');
  print('3 + 2 = ${3 + 2}');
  print('3 - 2 = ${3 - 2}');
  print('3 / 2 = ${3 / 2}');
  print('3 * 2 = ${3 * 2}');
  print('-3 = ${-3}');
  print('3 % 2 = ${3 % 2}');
  print('3 ~/ 2 = ${3 ~/ 2}'); //деление с округлением в меньшую сторону

  var itarationNUmber2 = 1;
  itarationNUmber2 += 1;
  itarationNUmber2 *= 2;
  print(++itarationNUmber2);
  print(itarationNUmber2++);
  print(itarationNUmber2);

  print('==========');
  itarationNUmber2 = 1;
  var result = ++itarationNUmber2;
  print(itarationNUmber2); // 2
  print(result); // 2
  print('==========');

  int itarationNUmber3 = 1;
  var result2 = itarationNUmber3++;
  print(itarationNUmber3); // 2
  print(result2); // 1 - тк сначало присвоилась переменная
  //itarationNUmber3 и только в след строке она увеличилась.
  print('==========');
  //_________________________________________________________

  //_________________________________________________________
  //#8 - операторы ?. ?? ??= as is is!
  print('\n\n\n\n\n_____#8 - операторы ?. ?? ??= as is is!_____');
  //эту касту операторов используем когда не уверены что в
  //переменную установлены значения. Например:
  num number77; //тут null и в райнтайме мы можем зашпариться и
  //попытаться запустить программу с пустой переменной.

  //? - избегаем ошибки
  //print(number77.isNegative); //тут ошибка, тк number7 = null
  //print(number77?.isNegative); //тут удалось избежать ошибки в консоли

  //?? - если null то присвоится правая часть, если не null то правая
  //часть не выполнится.
  //print(number77 ?? 1); //если number77=null, то присвоится 1, а
  //если number77 не null, то правая часть выполнена не будет "?? 1".

  //??=
  //number77 ??= 1; //аналогично, если в number77 null то присвоится
  //1, если в ней не null, то 1 присвоена не будет.

  //Проверяем или изменяем тип объекта:  as, is, is!
  //as - приведим к другому типу
  //у класса int есть метод isEven() позволяет проверить четное ли
  //число.
  num number76 = 1; //у num данного метода нет
  //приводим к int оператором as, чтобы воспользоваться методом
  //isEven() и проверяем на четность.
  print('as - ${(number76 as int).isEven}'); // false - тк 1 не четное число

  //is - проверяем тип
  //Но мы не сможем привести к double тк number76 = 1, а это целое
  //число.0
  //print((number76 as double).isEven); //ошибка
  //и чтобы не поймать ошибку мы можем проверить на возможность
  //приведения.
  print('is - ${number76 is double}'); // false - тк int не
  //является потомком double.

  //is! - ! знак как обычно делает переворот ответа
  //а если добавим в конце "!" знак, is! - то тут мы будем проверять
  //не является ли тип потомком double.
  print('is! - ${number76 is! double}'); // true - тк int не
  //является потомком double.

  //удобно использовать в if()
  if (number76 is int) {
    print('if конструкция - ${number76 is! double}');
  }
}
