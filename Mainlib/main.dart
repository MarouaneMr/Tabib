import 'package:flutter/material.dart';
import 'package:provider/provider.dart';






class MyApp extends StatelessWidget{
    const MyApp({super.key});
// Define theme data here
    //Push navigator
    static final navigatorKey = GlobalKey<NavigatorState>();

    @override
    Widget build(Build context){
        return MaterialApp(
            title: 'Tabib',
            navigatorKey:navigatorKey;
            debugShowCheckedModeBanner:false,
            theme: ThemeData(
                //pre-define input decoratiopn
              inputDecorationTheme: const InputDecorationTheme(
                focusColor: Config.primaryColor,
                border: Config.outlineBorder,
                focusedBorder: Config.focusBorder,
                errorBorder: Config.errorBorder,
                enabledBorder: Config.outlineBorder,
                floatingLabelStyle: Textstyle(color: Config.primaryColor),
                prefixIconColor: Colors.black38, 
              ),
              scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          ),
            ),
            //This is the initial route of the app
            //Which is the authentification(Sign up and Login)
            initialRoute: '/',
        routes: {
            //This is for main layout after login
          '/': (context) => const AuthPage(),
          }

            home: const MyHomePage(),
        );
    }
}

class MyHomePage extends StatefulWidget{
    const MyHomePage({super.key});

    @override
    State <MyHomePage> createState() => MyHomePageState();

}

class MyHomePageState extends State<MyHomePage>{
    @override
    Widget build(Build context){
        return Scaffold(
            appBar:appBar(
                title:const Text('Tabib'),
            ),
        );
    }
}