// Copyright (C) 2020 covid19cuba
// Use of this source code is governed by a GNU GPL 3 license that can be
// found in the LICENSE file.

import 'package:covid19cuba/src/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:covid19cuba/src/models/models.dart';

class ResumeWidget extends StatelessWidget {
  final List<Item> resume;

  const ResumeWidget({this.resume}) : assert(resume != null);

  @override
  Widget build(BuildContext context) {
    var borderSide = BorderSide(
      color: Constants.primaryColor,
      width: 1,
    );
    return Column(
      children: <Widget>[
        Table(
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        'Resumen',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Table(
          columnWidths: {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(1),
          },
          border: TableBorder(
            top: borderSide,
            horizontalInside: borderSide,
          ),
          children: resume.map((item) {
            return TableRow(
              children: [
                TableCell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        item.value.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Constants.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
