import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/fonction/firestoreHelper.dart';
import 'package:widget/getAll.dart';
import 'package:widget/informationUser.dart';
import 'package:widget/register.dart';
import 'package:widget/login.dart';
import 'package:widget/getAll.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String mail = 'adrien.leib@ynov.com';
  String password = '1234567';
  String prenom = '';
  String sexe = '';
  bool valeur = true;
  double nbr = 0.0;
  int nombreFOis=0;
  List couleur = ['rouge', 'bleu','yellow','orange', 'pink', 'purple'];
  List <Color> couleurs = [Colors.red, Colors.blue, Colors.greenAccent];


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
          /*
      SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(onChanged:(String text){
                setState((){
                  password = text;
                });
                print(password);

              },
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'mot de passe',
              ),
            ),
            ElevatedButton(
              onPressed: (){
                print('Login');
                setState(() {
                  nombreFOis++;
                });
              },
              child: Text('Sign UP'),
              onLongPress: (){
                print('J\'ai appuyé depuis longtemps');
              },
            ),
            Text("$nombreFOis de fois"),
            Icon(Icons.access_time_sharp),
            IconButton(onPressed: (){
              print('Icon button');
            }, icon: Icon(Icons.access_time_sharp)
            ),
            Container(
              // color: Colors.lightBlueAccent,
              // height: 200,
              height: MediaQuery.of(context).size.height/6,
              width: 300,
              child: const Center(
                child: Text('Welcome',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                color: Colors.pinkAccent,
                //borderRadius: BorderRadius.circular(20),
              ),
            ),
            Image.asset("assets/Messi.jpg",
              height: MediaQuery.of(context).size.height/6,),
            Container(
              // color: Colors.lightBlueAccent,
              // height: 200,
              height: MediaQuery.of(context).size.height/6,
              width: 300,
              child: const Center(
                child: Text('Adrien',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                // shape: BoxShape.circle,
                color: Colors.lightBlueAccent,
                //borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              // color: Colors.lightBlueAccent,
              // height: 200,
              height: MediaQuery.of(context).size.height/6,
              width: 300,
              child: const Center(
                child: Text('Bienvenue Messi',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/Messi.jpg'
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        )

      ), */

      /* ListView(
        children: [
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
          Text('Skoda'),
          Text('Jean'),
          Text('Boulette'),
          Text('Ragnarock'),
      ],
      ), */
      /*
      ListView.builder(
        itemCount: couleur.length,
          itemBuilder: (BuildContext context, int index){
            return Text(couleur[index]);
          }
      ) */

      /*
      ListView.builder(
        itemCount: couleurs.length,
          itemBuilder: (BuildContext context, int index){
              return Container(
                color:  couleurs[index],
                child: Dismissible(
                  /// direction: DismissDirection.endToStart,
                  key: Key(couleurs[index].toString()),
                  child: Text("Ma couleur", style: TextStyle(color: Colors.white)),
                  background: Container(
                    color: Colors.red,
                  ),
              ),
                // child: Text("La couleur est belle"),
              );
        }
      )

        */
      /*
      GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Container(
            color: Colors.red
          ),
          Container(
              color: Colors.orange
          ),
          Container(
              color: Colors.yellow,
          ),
          Container(
            color: Colors.greenAccent,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.purple,
          )

        ]
      ) */
      /*
      Stack(
        children: [
          Text('Je suis'),
          Text('Français'),
        ],
      ),
      */
      /*
      CupertinoSwitch(
        value: valeur,
        onChanged: (bool value) {
          setState(() {
            valeur= value;
          });
        },
      ),

       */
      /*
      Switch(
        value: valeur,
        onChanged: (bool value) {
          setState(() {
            valeur= value;
          });
          },
      ) */
      /*
      Slider(
        value: nbr,
        max: 20,
        min: 0,
        divisions: 10,
        onChanged: (double value){
          setState(() {
            nbr = value;
          });
        },
      ) */
      /*
      Divider(
        thickness: 5,
        color: Colors.blue,

      )

       */

      SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context){ return login();}
                  ));
                },
                child: Text('Connexion'),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context){ return register();}
                  ));
                },
                child: Text('Register'),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context){ return getAllPage();}
                  ));
                },
                child: Text('Tous les Users'),
              )

            ],
          )

      )
      ,

    );
  }
}

