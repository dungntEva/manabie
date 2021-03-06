import 'package:flutter/cupertino.dart';
import 'package:flutter_manabie_redux_mvvm/features/Login/HomePage.dart';
import 'package:flutter_manabie_redux_mvvm/features/Login/HomeScreen.dart';
import 'package:flutter_manabie_redux_mvvm/features/Login/WelcomePage.dart';
import 'package:flutter_manabie_redux_mvvm/features/gallery/GalleryScreen.dart';
import 'package:flutter_manabie_redux_mvvm/features/image_preview/ImagePreviewScreen.dart';
import 'package:flutter_manabie_redux_mvvm/features/notFound/NotFoundScreen.dart';
import 'package:flutter_manabie_redux_mvvm/features/settings/SettingsScreen.dart';

//Routes
const String INDEX = '/';
const String GALLERY = '/gallery';
const String IMAGE_PREVIEW = '/image_preview';
const String SETTINGS = '/settings';
const String HOME = '/home';

Widget makeRoute(
    {@required BuildContext context,
    @required String routeName,
    Object arguments}) {
  final Widget child =
      _buildRoute(context: context, routeName: routeName, arguments: arguments);
  return child;
}

Widget _buildRoute(
    {@required BuildContext context,
    @required String routeName,
    Object arguments}) {
  switch (routeName) {
    case INDEX:
      return WelcomePage();
    case HOME:
      return HomePage();
    case GALLERY:
      return GalleryScreen();
    case SETTINGS:
      return SettingsScreen();
    case IMAGE_PREVIEW:
      ScreenArguments args = arguments;
      return ImagePreviewScreen(args.identifier);
    default:
      return NotFoundScreen();
  }
}

class ScreenArguments {
  final String identifier;
  final String title;
  final String content;

  ScreenArguments({this.identifier, this.title, this.content});
}
