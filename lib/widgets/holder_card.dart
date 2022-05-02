import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

class HolderCard extends StatelessWidget {
   const HolderCard(
      {Key? key,
      required this.cardWidth,
      required this.cardHeight,
      required this.cardColor,
      required this.cardSubContainerColor})
      : super(key: key);

  final double cardWidth;
  final double cardHeight;
  final Color cardColor;
  final Color cardSubContainerColor;

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 20.0;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: cardWidth,
            height: cardHeight,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            ),
            child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                          child: Container(
                            width: 200,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: cardSubContainerColor),
                          ),
                        ),
                        FittedBox(
                            child: Column(children: descriptionHolderLines)),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 10.0, 5.0, 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: cardSubContainerColor),
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: cardSubContainerColor),
                                ),
                              ],
                            )),
                      ]),
                )),
          ),
        ],
      ),
    );
  }
}
