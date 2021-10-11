///
/// PageRoutes Will help to route using url
///

class PageRoutesNames {
  static const String Home = '/index.html';

  //static const String ContactUS = '/contact.html';

  static const String Pricing = '/pricing.html';

  static const String AboutUs = '/about.html';
}

// class HomeRoutePath {
//   final String pathName;
//   final bool isUnkown;

//   HomeRoutePath.home()
//       : pathName = "",
//         isUnkown = false;

//   HomeRoutePath.otherPage(this.pathName) : isUnkown = false;

//   HomeRoutePath.unKown()
//       : pathName = "",
//         isUnkown = true;

//   bool get isHomePage => pathName == null || pathName == "";
//   bool get isOtherPage => pathName != null || pathName != "";
// }

// class HomeRouteInformationParser extends RouteInformationParser<HomeRoutePath> {
//   @override
//   Future<HomeRoutePath> parseRouteInformation(
//       RouteInformation routeInformation) async {
//     final uri = Uri.parse(routeInformation.location!);

//     if (uri.pathSegments.length == 0) {
//       return HomeRoutePath.home();
//     }

//     if (uri.pathSegments.length == 1) {
//       final pathName = uri.pathSegments.elementAt(0).toString();
//       if (pathName == null) return HomeRoutePath.unKown();
//       return HomeRoutePath.otherPage(pathName);
//     }

//     return HomeRoutePath.unKown();
//   }

//   @override
//   RouteInformation? restoreRouteInformation(HomeRoutePath homeRoutePath) {
//     if (homeRoutePath.isUnkown) return RouteInformation(location: '/error');
//     if (homeRoutePath.isHomePage) return RouteInformation(location: '/');
//     if (homeRoutePath.isOtherPage)
//       return RouteInformation(location: '/${homeRoutePath.pathName}');

//     return null;
//   }
// }

// class HomeRouterDelegate extends RouterDelegate<HomeRoutePath>
//     with ChangeNotifier, PopNavigatorRouterDelegateMixin<HomeRoutePath> {
//   late String pathName;
//   bool isError = false;

//   @override
//   GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

//   @override
//   HomeRoutePath get currentConfiguration {
//     if (isError) return HomeRoutePath.unKown();

//     if (pathName == null) return HomeRoutePath.home();

//     return HomeRoutePath.otherPage(pathName);
//   }

//   void onTapped(String path) {
//     pathName = path;
//     print(pathName);
//     notifyListeners();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//         key: navigatorKey,
//         pages: [
//           MaterialPage(
//             key: ValueKey('HomePage'),
//             child: HomePageScreen(
//                 // onTapped: (String path) {
//                 //   pathName = path;
//                 //notifyListeners();
//                 //},
//                 ),
//           ),
//           // if (isError)
//           //   MaterialPage(key: ValueKey('UnknownPage'), child: UnkownPage())
//           // else
//           if (pathName != null)
//             MaterialPage(
//               key: ValueKey(pathName),
//               child: ContactScreen(),
//             ),
//         ],
//         onPopPage: (route, result) {
//           if (!route.didPop(result)) return false;

//           pathName = "";
//           isError = false;
//           notifyListeners();

//           return true;
//         });
//   }

//   @override
//   Future<void> setNewRoutePath(HomeRoutePath homeRoutePath) async {
//     if (homeRoutePath.isUnkown) {
//       pathName = "";
//       isError = true;
//       return;
//     }

//     if (homeRoutePath.isOtherPage) {
//       if (homeRoutePath.pathName != null) {
//         pathName = homeRoutePath.pathName;
//         isError = false;
//         return;
//       } else {
//         isError = true;
//         return;
//       }
//     } else {
//       pathName = "";
//     }
//   }
// }
