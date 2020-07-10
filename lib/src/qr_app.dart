import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_reader/src/blocs/tab/home_tab_bloc.dart';
import 'package:qr_reader/src/ui/home_screen.dart';
import 'package:qr_reader/src/ui/qr_code_details_screen.dart';
import 'package:qr_reader/src/ui/qr_code_reader_screen.dart';
import 'package:qr_reader/src/utils/constants.dart';
import 'package:qr_reader/src/utils/routes.dart';

class QrApp extends StatelessWidget {
  //region StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,

        // Define primary colors
        primaryColor: const Color.fromARGB(255, 99, 78, 122),
        accentColor: const Color.fromARGB(255, 250, 190, 90),
        splashColor: const Color.fromARGB(255, 250, 190, 90),

        // Define app background color
        canvasColor: const Color.fromARGB(255, 228, 230, 231),

        // Define theme for icons
        iconTheme: IconThemeData(
          color: const Color.fromRGBO(66, 106, 163, 1.0),
        ),

        // Define bottom app bar colors
        bottomAppBarTheme: BottomAppBarTheme(
          color: const Color.fromRGBO(27, 61, 87, 1.0),
        ),

        // Define AppBar colors
        appBarTheme: AppBarTheme(
          color: const Color.fromRGBO(27, 61, 87, 1.0),
        ),

        // Define the default font family.
        fontFamily: 'Roboto',

        // Define theme for Card widgets
        cardTheme: CardTheme(
          elevation: 1,
        ),

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          body1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
          caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
        ),
      ),

      // Define app routes
      routes: {
        QrCodeReaderRoutes.home: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<HomeTabBloc>(
                create: (context) => HomeTabBloc(),
              ),
            ],
            child: HomeScreen(),
          );
        },
        QrCodeReaderRoutes.scan: (context) => QrCodeReaderScreen(),
        QrCodeReaderRoutes.details: (context) => QrCodeDetailsScreen()
      },

      // Define initial route
      initialRoute: QrCodeReaderRoutes.home,
    );
  }
//endregion
}
