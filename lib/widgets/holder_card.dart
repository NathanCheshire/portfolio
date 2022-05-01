import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

class HolderCard extends StatefulWidget {
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
  State<HolderCard> createState() => _HolderCardState();
}

class _HolderCardState extends State<HolderCard> {
  @override
  Widget build(BuildContext context) {
    const double borderRadius = 20.0;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: widget.cardWidth,
            height: widget.cardHeight,
            decoration: BoxDecoration(
              color: widget.cardColor,
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
                                color: widget.cardSubContainerColor),
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
                                      color: widget.cardSubContainerColor),
                                ),
                                Container(
                                  width: 100,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      color: widget.cardSubContainerColor),
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
