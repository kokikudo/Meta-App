import 'package:flutter/material.dart';
import 'package:rps_ui_e1/custom_widgets/BorderIcon.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';

class DetailPage extends StatelessWidget {
  final dynamic itemData;
  final int index;

  const DetailPage({Key key, this.itemData, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.4,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('${itemData['image']}'))),
                    ),
                    Text(
                      '${index + 1}',
                      style: textTheme.headline1
                          .copyWith(color: kcParagraph, fontSize: 80),
                    ),
                    Text(
                      itemData['name'],
                      style: textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      itemData['inc'],
                      style: textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                    Divider(color: kcHeadline),
                    addVerticalSpace(32),
                    Text(itemData['summary']),
                    addVerticalSpace(32),
                    Divider(color: kcHeadline),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 2,
              left: 2,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back)),
            ),
          ],
        ),
      ),
    );
  }
}

class InformationTile extends StatelessWidget {
  final String content;
  final String name;

  const InformationTile({Key key, @required this.content, @required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final double tileSize = size.width * 0.20;
    return Container(
      margin: const EdgeInsets.only(left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BorderIcon(
              width: tileSize,
              height: tileSize,
              child: Text(
                content,
                style: themeData.textTheme.headline3,
              )),
          addVerticalSpace(15),
          Text(
            name,
            style: themeData.textTheme.headline6,
          )
        ],
      ),
    );
  }
}
