import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Пассажиры'),
        ),
        body: ListView(children: <Widget>[
          DataTable(
            columns: [
              DataColumn(label: Text('Имя', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('Место', style: TextStyle(fontSize: 20))),
              DataColumn(label: Text('Тип', style: TextStyle(fontSize: 20))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Aigerim')),
                DataCell(Text('0 A')),
                DataCell(Text('OFFLINE',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.grey))),
              ]),
              DataRow(cells: [
                DataCell(Text('Arlan')),
                DataCell(Text('0 B')),
                DataCell(Text('OFFLINE',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.grey))),
              ]),
              DataRow(cells: [
                DataCell(Text('ASSEL')),
                DataCell(Text('1')),
                DataCell(Text('ONLINE',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
              ]),
              DataRow(cells: [
                DataCell(Text('TEMIRLAN')),
                DataCell(Text('1')),
                DataCell(Text('ONLINE',
                    style: TextStyle(
                        color: Colors.white, backgroundColor: Colors.green))),
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
