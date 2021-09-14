import 'package:flutter/material.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:rps_ui_e1/screens/DetailPage.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class GameTile extends StatelessWidget {
  final dynamic itemData;
  final int index;

  const GameTile({Key key, this.itemData, this.index}) : super(key: key);

  Color _getMetascoreColor(int score) {
    if (score >= 70) {
      return kcHighRate;
    } else {
      return kcRowRate;
    }
  }

  Color _getUserscoreColor(double score) {
    if (score >= 7.0) {
      return kcHighRate;
    } else {
      return kcRowRate;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final image = itemData['image'];
    final title = itemData['name'];
    final incName = itemData['inc'];
    final metascore = itemData['metascore'];
    final userscore = itemData['userscore'];

    return GestureDetector(
      onTap: () {
        pushNewScreen(context, screen: DetailPage(
          itemData: itemData,
          index: index,
        ), withNavBar: false);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: kcNonActive, width: 0.5))),
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: themeData.textTheme.headline1,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          addVerticalSpace(2),
                          Text(
                            incName,
                            style: themeData.textTheme.bodyText2,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: _getMetascoreColor(metascore),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    '$metascore',
                                    style: themeData.textTheme.headline1
                                        .copyWith(color: kcWhite),
                                  ),
                                ),
                              ),
                              Text('meta score',
                                  style: themeData.textTheme.bodyText2)
                            ],
                          ),
                          addHorizontalSpace(10),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: userscore != null ? _getUserscoreColor(userscore) : kcNonActive,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: userscore != null ? Text(
                                    '$userscore',
                                    style: themeData.textTheme.headline1
                                        .copyWith(color: kcWhite),
                                  ) : Text(
                                    'tbd',
                                    style: themeData.textTheme.headline1
                                        .copyWith(color: kcWhite),
                                ),
                              ),),
                              Text('user score')
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
