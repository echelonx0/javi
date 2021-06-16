import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:vc_app/models/property.dart';
import 'package:vc_app/utilities/constants.dart';
import 'package:vc_app/widgets/custom_card.dart';

class AppDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<AppDashboard> {
  @override
  Widget build(BuildContext context) {
    List<Property> searchResults = [];

    return Scaffold(
      body: Container(
          child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: TextField(
                onTap: () {
                  // showSearch(context: context, delegate: ArticleSearch());
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  contentPadding: EdgeInsets.only(
                    left: 30,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 24.0, left: 16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SearchPage()),
              // );
            },
            child: Padding(
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: kPrimaryColour,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.all(24),
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Find Properties",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Rentals, For Sale and Leases",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: kPrimaryColour,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PROPERTIES FOR SALE",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/map');
                  },
                  child: Row(
                    children: [
                      Text(
                        "Near you",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColour,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/propertyListingsAll');
                  },
                  child: Row(
                    children: [
                      Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColour,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: kPrimaryColour,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomDisplayCard()
          // StreamBuilder(
          //     stream: FirebaseFirestore.instance
          //         .collection('properties')
          //         .snapshots(),
          //     builder: (context, snapshot) {
          //       if (snapshot.hasData) {
          //         snapshot.data.documents.forEach((doc) {
          //           final agentPhoneNumber = doc.data()['agentPhoneNumber'];
          //           final agentLogo = doc.data()['agentLogo'];
          //           final agentEmail = doc.data()['agentEmail'];
          //           final approvedUse = doc.data()['approvedUse'];
          //           final shortDescription = doc.data()['shortDescription'];
          //           final location = doc.data()['location'];
          //           final saleAmount = doc.data()['saleAmount'];
          //           final imageOne = doc.data()['imageOne'];
          //           final totalBathrooms = doc.data()['bathrooms'];
          //           final totalBedrooms = doc.data()['rooms'];
          //           final description = doc.data()['description'];
          //           final agency = doc.data()['agency'];
          //           final propertyMessage = doc.data()['propertyMessage'];
          //           final imagesArray = doc.data()['images'];
          //           final agentAddress = doc.data()['agentAddress'];

          //           searchResults.add(property);
          //         });

          //         return Container(
          //             height: 255,
          //             child: ListView.builder(
          //               scrollDirection: Axis.horizontal,
          //               padding: const EdgeInsets.all(8.0),
          //               itemCount: searchResults.length,
          //               itemBuilder: (BuildContext context, int index) {
          //                 return makeCard(searchResults[index]);
          //               },
          //             ));
          //       }
          //       return Container();
          //     }),

          //   //Let's show a new set of content on the app below the list of properties
        ],
      )),
    );
  }
}
