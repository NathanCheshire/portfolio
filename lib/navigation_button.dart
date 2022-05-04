import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/portfolio_colors.dart';
import 'package:portfolio/constants/portfolio_numbers.dart';
import 'package:portfolio/portfolio_base_view.dart';
import 'package:portfolio/portfolio_page_route.dart';

class NavigationButton extends StatefulWidget {
  const NavigationButton({
    Key? key,
    required this.index,
    required this.text,
    required this.flexibleChildWidget,
  }) : super(key: key);

  final String text;
  final int index;
  final Widget flexibleChildWidget;

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  bool _hovered = false;

  void _mouseEntered(PointerEvent details) {
    setState(() {
      _hovered = true;
    });
  }

  void _mouseExited(PointerEvent details) {
    setState(() {
      _hovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: MouseRegion(
        onEnter: _mouseEntered,
        onExit: _mouseExited,
        child: GestureDetector(
            child: Text(widget.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.passionOne(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: this.widget.index == getCurrentIndex()
                        ? (primaryThemeColor)
                        : (_hovered ? primaryThemeColor : offWhite),
                  ),
                )),
            onTap: () {
              if (getCurrentIndex() == this.widget.index) {
                return;
              }

              setCurrentIndex(this.widget.index);
              Navigator.push(
                  context,
                  PortfoliPageRoute(
                      widget: PortfolioBaseView(
                    index: this.widget.index,
                    flexibleChildWidget: widget.flexibleChildWidget,
                  )));
            }),
      ),
    );
  }
}
