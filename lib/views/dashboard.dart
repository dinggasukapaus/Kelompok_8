import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tugas1/data/companydata.dart';
import 'package:tugas1/style/typografi.dart';
import 'package:tugas1/widgets/company_card.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: silver,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 18.0,
            top: 12.0,
            bottom: 12.0,
            right: 12.0,
          ),
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30.0,
          ),
        ),
        actions: [
          Icon(
            Icons.account_circle,
            color: Colors.green,
            size: 30.0,
          ),
          SizedBox(
            width: 18.0,
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.0),
              Text(
                "Hi senol ,\nfind your job",
                style: pageTitleStyle,
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.only(right: 20.0),
                child: Row(
                  children: [
                    // Search text field
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 25.0,
                              color: black,
                            ),
                            border: InputBorder.none,
                            hintText: "search for job title",
                            hintStyle: subtitleStyle.copyWith(
                              color: Colors.black38,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //icon setting
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 12.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Icon(
                        FontAwesomeIcons.slidersH,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              // pupular company
              SizedBox(
                height: 25.0,
              ),
              Text(
                'Pupolar Company',
                style: titleStyle,
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 190,
                child: ListView.builder(
                  itemCount: companyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var company = companyList[index];
                    return CompanyCard(
                      company: company,
                    );
                  },
                ),
              ),
              SizedBox(height: 35.0),
              Text(
                "Recent Jobs",
                style: titleStyle,
              ),
              ListView.builder(
                itemCount: recentList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var recent = recentList[index];
                  return Card(
                    elevation: 0.0,
                    margin: EdgeInsets.only(right: 18.0, top: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                              image: AssetImage(recent.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Text(
                        recent.job,
                        style: titleStyle,
                      ),
                      subtitle: Text(
                          "${recent.companyName} - ${recent.mainCriteria}"),
                      trailing: Icon(
                        Icons.more_vert,
                        color: black,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
