import 'package:flutter/material.dart';
 const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white);

class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("page 1",style: optionStyle,);
  }
}

class mainpage2 extends StatelessWidget {
  const mainpage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("page 2",style: optionStyle,);
  }
}
class mainpage3 extends StatelessWidget {
  const mainpage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("page 3",style: optionStyle,);
  }
}
class mainpage4 extends StatelessWidget {
  const mainpage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("page 4",style: optionStyle,);
  }
}