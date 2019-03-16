import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const double innerPadding = 18;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              child: FractionallySizedBox(
                child: Container(
                  child: Image.network(
                    "https://correresmidestino.com/wp-content/uploads/2016/08/Rainy-Day-23.jpg",
                    fit: BoxFit.cover,
                  ),
                  foregroundDecoration: BoxDecoration(color: Colors.black54),
                ),
                alignment: Alignment.topCenter,
                heightFactor: .6,
                widthFactor: 1,
              )),

          Positioned.fill(
              child: FractionallySizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0),
                        child: new Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            image: new DecorationImage(
                              image: new NetworkImage('https://regmedia.co.uk/2018/04/10/mark_zuckerberg.jpg?x=442&y=293&crop=1'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                            border: new Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      Text("Steve", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      Text("128k fans", style: TextStyle(color: Colors.white, fontSize: 12),),
                    ],
                  ),
                ),
                alignment: Alignment.topCenter,
                heightFactor: .4,
                widthFactor: 1,
              )),
          Positioned.fill(
              child: FractionallySizedBox(
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Photos & Videos", textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 18),),
                          Text("269 shots", textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 11, color: Colors.black45),),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 24.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(40)),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned.fill(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: innerPadding),
                                          child: FractionallySizedBox(
                                            child: Image.network(
                                              "https://i.pinimg.com/originals/6c/29/da/6c29daac63c1ff4eb94ce4f722227b72.jpg",
                                              fit: BoxFit.cover,),
                                            alignment: Alignment.centerLeft,
                                            heightFactor: 1,
                                            widthFactor: .5,),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: innerPadding,
                                              bottom: innerPadding),
                                          child: FractionallySizedBox(
                                            child: Image.network(
                                              "https://previews.123rf.com/images/1xpert/1xpert1302/1xpert130200135/17900632-abstract-architecture-architecture-design-and-model-my-own.jpg",
                                              fit: BoxFit.cover,),
                                            alignment: Alignment.topRight,
                                            heightFactor: .5,
                                            widthFactor: .5,),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: innerPadding,
                                              left: innerPadding),
                                          child: FractionallySizedBox(
                                            child: Image.network(
                                              "https://cms-assets.tutsplus.com/uploads/users/412/posts/25601/image/curve.jpg",
                                              fit: BoxFit.cover,),
                                            alignment: Alignment.bottomRight,
                                            heightFactor: .5,
                                            widthFactor: .5,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0)))),
                alignment: Alignment.bottomCenter,
                heightFactor: .6,
                widthFactor: 1,
              ))

//          Positioned.fromRelativeRect(child: )
        ],
      ),
    );
  }
}
