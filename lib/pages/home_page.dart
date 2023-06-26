import 'package:first_flutter/utils/house_tile.dart';
import 'package:first_flutter/utils/view_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of view types
  final List viewTypeList = [
    // [viewType,isSelected]
    [
      'Nearby',
      true,
    ],
    [
      'Recommended',
      false,
    ],
    [
      'Upcoming',
      false,
    ],
  ];

  void viewTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < viewTypeList.length; i++) {
        viewTypeList[i][1] = false;
      }
      viewTypeList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //! homeco text

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'HOMECO',
                          style: GoogleFonts.archivoBlack(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //! two icons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(9.0),
                          child: Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.person_circle_fill,
                          color: Colors.black,
                          size: 45,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 13,
            ),

            // search bar and filters icon

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade300),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: 30,
                        child: Image.asset('assets/search.png'),
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Find Something New'),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 7, 10, 7),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_list_outlined,
                            color: Colors.grey,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // nearby, recc, upcoming bar...
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(34),
                    border: Border.all(width: 2, color: Colors.grey.shade200)),
                child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 21,),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: viewTypeList.length,
                        itemBuilder: (context, index) {
                          return ViewType(
                              viewName: viewTypeList[index][0],
                              isSelected: viewTypeList[index][1],
                              onTap: () {
                                viewTypeSelected(index);
                              });
                        })),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  HouseTile(buiName: 'Lakeshore Blvd West', buiRent: '\$1980', buiType: '4bd  2ba 1493sq m', buiImage: 'assets/bui1.jpg',),
                  HouseTile(buiName: 'Lakeshore Blvd North', buiRent: '\$2600', buiType: '4bd  4ba 1693sq m', buiImage: 'assets/bui2.jpg',),
                  HouseTile(buiName: 'Lakeshore Blvd East', buiRent: '\$1600', buiType: '3bd  3ba 1400sq m', buiImage: 'assets/bui3.jpg',),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
