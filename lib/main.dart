import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
  int _counter = 0;
  GlobalKey<ScaffoldState> _key = GlobalKey();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _icon(IconData icon, {Color color = Colors.blue}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(13)),
        color: Theme.of(context).backgroundColor,
      ),
      child: InkWell(
        onTap: () {
          _key.currentState.openDrawer();
        },
        child: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }

  bool isHomePageSelected = true;
  Widget _appBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RotatedBox(
            quarterTurns: 4,
            child: _icon(Icons.menu, color: Colors.black54),
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0xfff8f8f8),
                      blurRadius: 10,
                      spreadRadius: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(leading: _appBar()),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Kadirbay Abylaikhan'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Продажа билетов'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Список администраторов'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Автобусы'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Статистика'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Пассажиры'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Расписание'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('История'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Настройки'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Bus-logo.svg/1024px-Bus-logo.svg.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text('End2End Test'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('KZ 123'),
                                Text('ABC'),
                              ],
                            ),
                            Container(width: 10),
                            Column(
                              children: [
                                Text('53 мест'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text('Город Х - Сарыагаш'),
                        Container(height: 30),
                        Text('Отправление',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Дата - 06.02.2020 Thu'),
                        Text('Время - 19:30'),
                        Text('Прибытие',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Дата - 07.02.2020 Thu'),
                        Text('Время - 18:36'),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: FlatButton(
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.green),
                      ),
                      child: Container(
                          width: 1000,
                          child: Center(child: Text('Удалить рейс')))),
                  onPressed: null,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
