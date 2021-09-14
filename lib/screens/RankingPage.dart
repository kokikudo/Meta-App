import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:rps_ui_e1/sample_data.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rps_ui_e1/screens/DetailPage.dart';

const List<String> categoryList = ['game', 'movies', 'TV'];

// 表示するデータ
final showDataProvider = StateProvider<List<dynamic>>((ref) => game_sample);
// 選択したドロップダウン
final selectedDropItemProvider = StateProvider((ref) => 'game');

class RankingPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final showData = ref.watch(showDataProvider).state;
    final selectedDropItem = ref.watch(selectedDropItemProvider).state;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ranking',
                style: textTheme.headline1,
              ),
              DropdownButton(
                value: selectedDropItem,
                items: categoryList
                    .map((category) => DropdownMenuItem(
                        child: Text(category), value: category))
                    .toList(),
                style: textTheme.bodyText1,
                onChanged: (value) {
                  ref.read(selectedDropItemProvider).state = value;
                  switch (value) {
                    case 'game':
                      ref.read(showDataProvider).state = game_sample;
                      break;
                    case 'movies':
                      ref.read(showDataProvider).state = movies_sample;
                      break;
                    case 'TV':
                      ref.read(showDataProvider).state = tv_sample;
                  }
                },
                icon: Icon(Icons.arrow_drop_down),
                underline: SizedBox(),
              ),

              // Swiper
              Container(
                height: size.height * 0.7,
                //padding: const EdgeInsets.only(left: 10),
                child: Swiper(
                  itemCount: 3,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        activeSize: 20, space: 8, color: kcNonActive),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        pushNewScreen(context, screen: DetailPage(
                          itemData: showData[index],
                          index: index,
                        ), withNavBar: false);

                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100),
                                      Text(
                                        showData[index]['name'],
                                        style: textTheme.headline2,
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        showData[index]['inc'],
                                        style: textTheme.bodyText1,
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Know more',
                                            style: textTheme.subtitle1,
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: kcButton,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 100,
                            right: 40,
                            child: Text(
                              '${index + 1}',
                              style: textTheme.headline1
                                  .copyWith(color: kcParagraph, fontSize: 80),
                            ),
                          ),
                          Positioned(
                            right: 50,
                            child: Container(
                              height: size.height * 0.3,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('${showData[index]['image']}'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
