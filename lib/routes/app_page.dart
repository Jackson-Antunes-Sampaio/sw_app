import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sw_app/screens/base/base_screen.dart';
import 'package:sw_app/screens/games//games_screen.dart';
part 'app_routes.dart';
class AppPage {
  static const INITIAL = Routes.GAMES;

  static final routes = [
    GetPage(
      name: Routes.GAMES,
      page: () => GamesScreen(),
      //binding: HomeBindings()
    ),
    GetPage(
        name: Routes.BASE,
        page: ()=> BaseScreen(),
    )
  ];
}
