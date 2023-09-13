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
                primarySwatch: Colors.green,
            ),
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