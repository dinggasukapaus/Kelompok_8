import 'package:flutter/material.dart';
import 'package:tugas1/style/typografi.dart';
import 'package:tugas1/data/companydata.dart';

class CompanyCard extends StatelessWidget {
  final Company company;
  CompanyCard({this.company});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(
        right: 18.0,
      ),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image and sallary
          Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                      image: AssetImage(company.image), fit: BoxFit.cover),
                ),
              ),
              Spacer(),
              Text(
                company.sallary,
                style: titleStyle.copyWith(color: Colors.white),
              )
            ],
          ),
          //job position
          SizedBox(
            height: 15.0,
          ),
          Text(
            company.job,
            style: titleStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "${company.companyName}  ${company.city}",
            style: subtitleStyle.copyWith(color: Colors.white),
          ),
          SizedBox(
            height: 15.0,
          ),
          //! membuat tag menggunakan for
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: company.tag
                    .map(
                      (e) => Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 5.0,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: blackAccent),
                        child: Text(
                          e,
                          style: subtitleStyle.copyWith(
                              color: Colors.white, fontSize: 12.0),
                        ),
                      ),
                    )
                    .toList()),
          )
        ],
      ),
    );
  }
}
