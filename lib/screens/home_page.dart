import 'package:flutter/material.dart';

import '../widgets/profile_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const FlutterLogo(
          size: 25,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey.shade900,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.grey.shade900,
              ))
        ],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                alignment: const Alignment(0.0, -0.40),
                height: 130,
                color: Colors.white,
                child: const Text(
                  'Get Coaching',
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 90, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(blurRadius: 2, color: Colors.grey.shade200)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin:
                          const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 15.0),
                          child: const Text(
                            'YOU HAVE',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(
                                  25.0, 44.0, 5.0, 25.0),
                              child: const Text(
                                '206',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Stack(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(50)),

                                        // transform: Matrix4.skew(50, 50),
                                        margin: const EdgeInsets.only(top: 8),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 170,
                      margin: const EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 30.0),
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(.2),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Center(
                          child: Text(
                            'Buy more',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      fontFamily: 'Quicksand',
                      color: Colors.grey.shade600),
                ),
                const Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      fontFamily: 'Montserrat',
                      color: Colors.green),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
              itemCount:dataList.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (context, index) {
                return dataList[index];
              })
        ],
      ),
    );
  }
  }
List<ProfileCard>dataList = [
  ProfileCard(
      name: "Tom",
      status: "Online",
      index: 0,
      uri:"https://www.unigreet.com/wp-content/uploads/2022/11/100-very-special-good-morning-images-quotes-photos.jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://media.gettyimages.com/id/1217479787/photo/young-bussinessman-stock-images.jpg"
  ),
  ProfileCard(
      name: "Lilato",
      status: "active 1 hour ago",
      index: 3,
      uri:"https://www.imagephotoevents.com/img/s/v-10/p2314178220-2.jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://www.shutterstock.com/image-photo/smiling-young-middle-eastern-man-260nw-2063524544.jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://images.pexels.com/photos/206557/pexels-photo-206557.jpeg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://images.pexels.com/photos/1308881/pexels-photo-1308881.jpeg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://images.pexels.com/photos/1468377/pexels-photo-1468377.jpeg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://images.pexels.com/photos/1767434/pexels-photo-1767434.jpeg?cs=srgb&dl=pexels-suparada-intharoek-1767434.jpg&fm=jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://www.shutterstock.com/image-photo/boy-wings-sunset-imagines-himself-260nw-695361658.jpg"
  ),
  ProfileCard(
      name: "",
      status: "",
      index: 0,
      uri:"https://slp-statics.astockcdn.net/static_assets/staging/23winter/home/curated-collections/card-1.jpg"
  ),

];