import 'package:flutter/material.dart';
import 'package:practiceflutter/Widgets/my_tital.dart';
import 'package:practiceflutter/Widgets/power_badge.dart';

import 'Feature_Title_Text.dart';
import 'Feature_value_Text.dart';

class DetailsPage extends StatelessWidget {
  final Map data;
  final List types;

  const DetailsPage({
    super.key,
    required this.data,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4ad0b0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTital(
                              color: Colors.white, mytext: "${data['name']}"),
                          Row(
                              children:
                                  // PowerBaged(
                                  //     tital: data.containsKey("type") ? "${
                                  //       data["type"]![0]
                                  //     }":"No poewer"
                                  // )
                             data['type'].map<Widget>((item) => PowerBaged(tital: "${item}"))
                                      .toList()),
                          Container(
                            height: 170.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(34.0),
                            topLeft: Radius.circular(34.0))),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(top: 60.0),
                              height: double.infinity,
                              child: const Column(
                                children: [
                                  FeatureTitleText(myText: "Height"),
                                  FeatureTitleText(myText: "Weight"),
                                  FeatureTitleText(myText: "Candy"),
                                  FeatureTitleText(myText: "Egg"),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                                padding: const EdgeInsets.only(top: 60.0),
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FeatureValueText(
                                        myText: "${data["height"]}"),
                                    FeatureValueText(
                                        myText: "${data["weight"]}"),
                                    FeatureValueText(
                                        myText: "${data["candy"]}"),
                                    FeatureValueText(myText: "${data["egg"]}"),
                                  ],
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 160.0,
              child: Container(
                child: Hero(
                  tag: "pokemon1-${data["name"]}",
                  child: Image.network(
                    "${data["img"]}",
                    width: 170.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
