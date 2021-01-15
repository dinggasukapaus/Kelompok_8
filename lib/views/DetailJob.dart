import 'package:flutter/material.dart';
import 'package:tugas1/data/companydata.dart';
import 'package:tugas1/style/typografi.dart';
import 'package:tugas1/views/company_tab.dart';
import 'package:tugas1/views/description_tab.dart';

class DetailJob extends StatelessWidget {
  final Company company;
  DetailJob({this.company});
// class _State extends State<DetailJob>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: silver,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: silver,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          company.companyName,
          style: pageTitleStyle,
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          width: double.infinity,
          // margin: EdgeInsets.only(top: 50.0),
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 250.0),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(company.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      company.job,
                      style: titleStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      company.sallary,
                      style: subtitleStyle,
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: company.tag
                          .map(
                            (e) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 5.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border:
                                    Border.all(color: black.withOpacity(.5)),
                              ),
                              child: Text(
                                e,
                                style: subtitleStyle,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: 25.0),
                    Material(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                          color: black.withOpacity(.2),
                        ),
                      ),
                      // borderRadius: BorderRadius.circular(12.0),
                      child: TabBar(
                        unselectedLabelColor: black,
                        indicator: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        tabs: [
                          Tab(text: "Description"),
                          Tab(text: "Company"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: TabBarView(
                  children: [
                    DescriptionTab(company: company),
                    CompanyTab(company: company),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          padding: EdgeInsets.only(left: 18.0, bottom: 25.0, right: 18.0),
          // margin: EdgeInsets.only(bottom: 25.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: black.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(
                  Icons.bookmark_border,
                  color: black,
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    color: black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "Apply for Job",
                      style: titleStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
