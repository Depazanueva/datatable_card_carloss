import 'package:flutter/material.dart';

class DataTable1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ColorInfo> colors = [
      ColorInfo('Rojo', Colors.red),
      ColorInfo('Verde', Colors.green),
      ColorInfo('Azul', Colors.blue),
      ColorInfo('Amarillo', Colors.yellow),
      ColorInfo('Naranja', Colors.orange),
      ColorInfo('Rosa', Colors.pink),
      ColorInfo('Morado', Colors.purple),
      ColorInfo('Gris', Colors.grey),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable 1'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: DataTable(
            dataRowHeight: 60,
            dataTextStyle: TextStyle(fontSize: 14),
            headingRowHeight: 70,
            horizontalMargin: 20,
            columns: [
              DataColumn(
                label: Text(
                  'Color',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  'Nombre',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: colors
                .map(
                  (colorInfo) => DataRow(
                    cells: [
                      DataCell(
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: colorInfo.color,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      DataCell(
                        Container(
                          child: Center(
                            child: Text(
                              colorInfo.name,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class ColorInfo {
  final String name;
  final Color color;

  ColorInfo(this.name, this.color);
}
