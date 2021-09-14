import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:rps_ui_e1/screens/RankingPage.dart';
import 'package:rps_ui_e1/screens/SearchPage.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'dart:ui';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

///アプリのアイデアを考えつつ、今回のコードを復習する

// BottomNavigationのインデックス
final bottomBarIndexProvider = StateProvider((ref) => 0);

class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _bottomBarIndex = ref.watch(bottomBarIndexProvider).state;
    final List<Widget> _pages = [SearchPage(), RankingPage()];
    final List<PersistentBottomNavBarItem> _navBarsItems = [
      PersistentBottomNavBarItem(
          icon: Icon(Icons.search),
          title: 'Search',
          activeColorPrimary: kcActive,
          inactiveColorPrimary: kcNonActive),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.trending_up),
          title: 'Ranking',
          activeColorPrimary: kcActive,
          inactiveColorPrimary: kcNonActive),
    ];
    final _controller = PersistentTabController(initialIndex: _bottomBarIndex);
    double screenWidth = window.physicalSize.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      theme: ThemeData(
        scaffoldBackgroundColor: kcBackground,
          primaryColor: kcParagraph,
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat",
          ),
      home: Builder(
        builder:(context) => PersistentTabView(
          context,
          controller: _controller,
          screens: _pages,
          items: _navBarsItems,
          confineInSafeArea: true,
          backgroundColor: kcParagraph,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
            )
          ),
          itemAnimationProperties: const ItemAnimationProperties(
            // タブ変更時のアニメーションを指定
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // スクリーン移動時のアニメーションを指定
            animateTabTransition: true, // 初期値false。アニメーションさせたいときにtrueにする
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style3,
        ),
      ),
    );
  }
}
