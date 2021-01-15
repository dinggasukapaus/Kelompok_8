import 'package:flutter/material.dart';
import 'package:tugas1/data/companydata.dart';
import 'package:tugas1/style/typografi.dart';

class CompanyTab extends StatelessWidget {
  final Company company;
  CompanyTab({this.company});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Text(
            "About Company",
            style: pageTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          Text(
            company.aboutCompany,
            style: subtitleStyle.copyWith(
              fontWeight: FontWeight.w300,
              height: 1.5,
              color: Color(0xFF5B5B5B),
            ),
          ),
        ],
      ),
    );
  }
}
