import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/details_page.dart';

class HouseTile extends StatelessWidget {
  final String buiName;
  final String buiRent;
  final String buiType;
  final String buiImage;
  const HouseTile(
      {super.key,
      required this.buiName,
      required this.buiRent,
      required this.buiType,
      required this.buiImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailedViewPage()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 15, right: 10),
        child: Container(
          width: 380,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.grey.shade500,
            image:
                DecorationImage(image: AssetImage(buiImage), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black26,
                      ),
                      height: 40,
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.view_in_ar,
                            color: Colors.white,
                            size: 22,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: Text(
                              '360`',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 7, right: 7, bottom: 7),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(22)),
                      width: 377,
                      height: 87,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  buiName,
                                  style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text(
                                    buiRent,
                                    style: GoogleFonts.rubik(
                                        textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  buiType,
                                  style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text(
                                    'Month',
                                    style: GoogleFonts.rubik(
                                        textStyle: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
