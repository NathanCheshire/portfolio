import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nathan Cheshire',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  double floatinButtonSize = 40.0;
  double bottomBarHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("NathanCheshire.com"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed asdf butt this many times:',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: bottomBarHeight,
        color: Colors.orange,
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            right: floatinButtonSize * 2 + 20 * 3.5,
            bottom: 0,
            child: FloatingButton(icon: "Gmail.svg"),
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: FloatingButton(icon: "Discord.svg", color: Colors.white),
          ),
          Positioned(
            right: floatinButtonSize + 20 * 2,
            bottom: 0,
            child: FloatingButton(icon: "GitHub.svg", color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  final String icon;
  final Color? color;

  const FloatingButton({
    Key? key,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      splashColor: Color.fromARGB(255, 255, 255, 255),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      onPressed: () => {},
      child: SvgPicture.asset(
        "assets" + "/" + icon,
        height: 40.0,
        width: 40.0,
        color: color,
        allowDrawingOutsideViewBox: true,
      ),
    );
  }
}
