class Person {
    String name;
    String country;
    void setCountry(String country){
      this.country = country;
    }
    String toString() => 'Name:$name\nCountry:$country';
}

class Point {
    num x;
    num y;
    num z;
    
    Point(this.x, this.y, z) { //第一个值传递给this.x，第二个值传递给this.y
            this.z = z;
    }
    
    Point.fromeList(var list): //命名构造函数，格式为Class.name(var param)
            x = list[0], y = list[1], z = list[2]{//使用冒号初始化变量
    }

    //当然，上面句你也可以简写为：
    //Point.fromeList(var list):this(list[0], list[1], list[2]);

     String toString() => 'x:$x  y:$y  z:$z';
}

//当你要对一个单一的对象进行一系列的操作的时候
// 可以使用级联操作符 ..
void main() {
  Person p = new Person();
  p..name = 'Wang'..setCountry('China');
  print(p);

  var p1 = new Point(1, 2, 3);
  var p2 = new Point.fromeList([1, 2, 3]);
  print(p1);//默认调用toString()函数
}