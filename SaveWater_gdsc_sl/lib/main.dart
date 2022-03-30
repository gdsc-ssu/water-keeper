import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:savewater_gdsc_sl/Screens/Home/home_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Login/login_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Main/main_screen.dart';
import 'package:savewater_gdsc_sl/Screens/News/home.dart';
import 'package:savewater_gdsc_sl/Screens/Pages/test1.dart';
import 'package:savewater_gdsc_sl/Screens/Pages/test2.dart';
import 'package:savewater_gdsc_sl/Screens/Pages/test3.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/quest_screen.dart';
import 'package:savewater_gdsc_sl/Screens/Quest/widgets/take_picture.dart';
import 'package:savewater_gdsc_sl/Screens/Welcome/welcome_screen.dart';
import 'package:savewater_gdsc_sl/Screens/details/details_screen.dart';
import 'package:savewater_gdsc_sl/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'channel', // id
  'notification', // title
  //'description', //description
  importance: Importance.high,
  playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('A bg message just showed up : ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin.
    resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
    ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: WelcomeScreen(), //WelcomeScreen()
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if(notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              //channel.description,
              color: Colors.blue,
              playSound: true,
              icon: 'assets/icons/flower.svg',
            )
          )
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessage event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(context: context, builder: (_) {
          return AlertDialog(
            title: Text("notification.title"),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("notification.body")
                ],
              ),
            ),
          );
        });
      }
    });
  }

  void showNotification() {
    flutterLocalNotificationsPlugin.show(
      0,
      "Testing",
      "How you doin?",
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          //channel.description,
          importance: Importance.high,
          color: Colors.blue,
          playSound: true,
          icon: 'assets/icons/flower.svg'
        )
      )
    );
  }

  final screens = [
    MainScreen(),
    QuestScreen(),
    HomeScreen(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.water_drop, size: 25),
      Icon(Icons.app_registration, size: 25),
      Icon(Icons.shopping_bag, size: 25),
      Icon(Icons.newspaper, size: 25),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: kPrimaryColor,
      body: IndexedStack(
        index: index,
        children: screens,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
          //type: BottomNavigationBarType.fixed,
          //backgroundColor: kPrimaryColor,
          //selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.grey,
          //iconSize: 30,
          //selectedFontSize: 25,
          //unselectedFontSize: 16,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          color: kPrimaryColor,
          //buttonBackgroundColor: Colors.white,
          height: 50,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          items: items,
        ),
      ),
    );
  }
}


