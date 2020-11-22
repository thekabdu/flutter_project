import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  DetailPage(this.index);

  void _showModalSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Positioned(
                    child: Text(
                      "Информация о пассажире",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    top: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Aigerim",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "77078836639",
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Почта",
                          hintStyle: TextStyle(color: Colors.green)),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Место",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Цена",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "0 В верхни ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "3000",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            "ИЗМЕНИТЬ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green),
                        child: Center(
                          child: Text(
                            "ОТПРАВИТЬ ЧЕК",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Center(
                    child: Expanded(
                        child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green),
                      child: Center(
                        child: Text(
                          "ОТМЕНИТЬ ПОКУПКУ БИЛЕТА",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                  )
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Пассажиры'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            showCheckboxColumn: false,
            columns: [
              DataColumn(label: Text('Имя', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('Место', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('Тип', style: TextStyle(fontSize: 20))),
            ],
            rows: [
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('Aigerim')),
                    DataCell(Text('0 A')),
                    DataCell(Text('OFFLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.grey))),
                  ]),
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('Arlan')),
                    DataCell(Text('0 B')),
                    DataCell(Text('OFFLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.grey))),
                  ]),
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('ASSEL')),
                    DataCell(Text('1')),
                    DataCell(Text('ONLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green))),
                  ]),
              DataRow(
                  onSelectChanged: (value) {
                    _showModalSheet(context);
                  },
                  cells: [
                    DataCell(Text('TEMIRLAN')),
                    DataCell(Text('1')),
                    DataCell(Text('ONLINE',
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.green))),
                  ]),
            ],
          ),
          Center(
              child: Text(
            'Свободные места',
            style: TextStyle(fontSize: 20),
          )),
          DataTable(
            columns: [
              DataColumn(label: Text('', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('', style: TextStyle(fontSize: 20))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Нет имени')),
                DataCell(Text('0 A')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('Нет имени')),
                DataCell(Text('0 B')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('Нет имени')),
                DataCell(Text('2')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('Нет имени')),
                DataCell(Text('2')),
                DataCell(Text('no type',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
            ],
          ),
        ]));
  }
}
