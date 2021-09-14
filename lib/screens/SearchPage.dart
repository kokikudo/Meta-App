import 'package:flutter/material.dart';
import 'package:rps_ui_e1/sample_data.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';
import 'package:rps_ui_e1/custom_widgets/CategoryBubbles.dart';
import 'package:rps_ui_e1/custom_widgets/GameTile.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 検索ワードの文字列
final inputGameTitleProvider = StateProvider.autoDispose((ref) => '');
// カテゴリ
enum Categories {
  games,
  movies,
  TV,
}
// 選択しているカテゴリ
final categoryProvider = StateProvider((ref) => Categories.games);
// 検索後のデータ
final resultDataProvider = StateProvider<List<dynamic>>((ref) => []);


class SearchPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 35;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final gameTitle = ref.watch(inputGameTitleProvider).state;
    final selectedCategory = ref.watch(categoryProvider).state;
    final resultData = ref.watch(resultDataProvider).state;

    // カテゴリのスクロールが途切れないように全体をPaddingせずに個別に指定している
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addVerticalSpace(20),
              Padding(
                padding: sidePadding,
                child: Text(
                  "Search Title",
                  style: themeData.textTheme.bodyText2,
                ),
              ),
              addVerticalSpace(10),
              Padding(
                padding: sidePadding,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Please input title!',
                    hintStyle: themeData.textTheme.headline1
                        .copyWith(color: kcNonActive),
                  ),
                  style: themeData.textTheme.headline1,
                  onChanged: (value) {
                    ref.read(inputGameTitleProvider).state = value;
                  },
                ),
              ),
              addVerticalSpace(10),

              // カテゴリ選択Widgets
              // 端末幅を超えたときにスクロールする
              Row(
                children: [
                  addHorizontalSpace(35),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                        children: Categories.values.map(
                      (category) {
                        final categoryName =
                            category.toString().split('.')[1];
                        return CategoryBobbles(
                          text: categoryName,
                          isSelected: selectedCategory == category,
                          onTapped: () {
                            ref.read(categoryProvider).state = category;
                          },
                        );
                      },
                    ).toList()),
                  ),
                ],
              ),
              addVerticalSpace(20),
              Padding(
                padding: sidePadding,
                child: ElevatedButton(
                  onPressed: () {
                    List<Map<String, dynamic>> searchData;
                    switch (selectedCategory) {
                      case Categories.games:
                        searchData = game_sample;
                        break;
                      case Categories.movies:
                        searchData = movies_sample;
                        break;
                      case Categories.TV:
                        searchData = tv_sample;
                    }
                    var getData = searchData
                        .where((data) => data['name']
                    .toString()
                            .toLowerCase()
                            .contains(gameTitle.toLowerCase()))
                        .toList();
                    ref.read(resultDataProvider).state = getData;
                  },
                  style: ElevatedButton.styleFrom(
                    primary: kcParagraph,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                  ),
                  child: Text(
                    'Search',
                    style: TextStyle(color: kcWhite),
                  ),
                ),
              ),
              addVerticalSpace(10),
              Padding(
                  padding: sidePadding,
                  child: Divider(
                    height: 25,
                    color: kcNonActive,
                  )),
              Expanded(
                child: Padding(
                  padding: sidePadding,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: resultData.length,
                      itemBuilder: (context, index) {
                        return GameTile(
                          itemData: resultData[index],
                          index: index,
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
