import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
// const MyApp() 에서 빨간 밑줄이 나오면 ctrl . 누르기 : 생성자 자동완성
  runApp(const App());
}

// runApp 이 실행되면 build 가 실행됨

/// App 화면의 전체적인 Layout 을 구성하는 class
/// 변화가 없는 text, 이미지 등을 표현하거나
/// StatefulWedget 을 포함하는 layout class 이다
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // 강제 exception 을 만듦
    // throw UnimplementedError();

    return const MaterialApp(
        title: "안녕하세요",
        home: Scaffold(
            body: Row(children: [
          Text(
            "우리나라만세",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            "대한민국만세",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            "Republic of Korea",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ])));
    // const 가 붙는 함수는 읽기 전용
  }
}

/// 화면에 구체적인 기능을 수행할 Widget 을 포함하는 class
/// State class 를 생성하는 일을 수행
/// State class 들을 관리하는 역할 수행
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override

//   State<StatefulWidget> createState() {
//     return _Homepage();
// }
  State<StatefulWidget> createState() => _Homepage();
}

/// 화면을 구현하는 구체적인 역할 수행
/// 변화하는 Text, 이미지 등을 표현한다.
/// 언더바(_) 가 부착된 함수, 변수, 클래스 등은 private 특성을 갖는다
class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold : 발판, flutter 의 가장 기본적인 틀
    return const Scaffold(
      body: Center(
        child: Text(
          "반갑습니다",
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
