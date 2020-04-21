// 但库的名字并不影响导入，因为import语句用的是字符串Uri, 必须放最前面
library person;

//dart:前缀表示Dart的标准库，如dart:io、dart:html
//import 'dart:math';

//当然，你也可以用相对路径或绝对路径的dart文件来引用
// import 'lib/student/student.dart';

//Pub包管理系统中有很多功能强大、实用的库，可以使用前缀 package:
// import 'package:args/args.dart';

// 当各个库有命名冲突的时候，可以使用as关键字来使用命名空间
// import 'lib/student/student.dart' as Stu;

// show关键字可以显示某个成员（屏蔽其他）
// hide关键字可以隐藏某个成员（显示其他）
// import 'lib/student/student.dart' show Student, Person;
// import 'lib/student/student.dart' hide Person;

// part和part of
// 为了维护一个库，我们可以把各个功能放到各个dart文件中
// 但part of所在文件不能包括import、library等关键字
// 可以包含在part关键字所在文件中

// 建议避免使用part和part of语句，因为那样会使代码很难阅读、修改，可以多用library
// part加字符串类型的Uri类似include，表示包含某个文件
// part of加库名表示该文件属于那个库

// // math.dart文件开头
// library math;
// part 'point.dart';
// part 'random.dart';

// // point.dart文件开头
// part of math;

// // random.dart文件开头
// part of math;



//你可以使用export关键字导出一个更大的库
// export 'random.dart';
// export 'point.dart';

// 也可以导出部分组合成一个新库
// export 'random.dart' show Random;
// export 'point.dart' hide Sin;

// pubspec.yaml