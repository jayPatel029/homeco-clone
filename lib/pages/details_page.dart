import 'package:first_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedViewPage extends StatelessWidget {
  const DetailedViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          border:
                              Border.all(width: 2, color: Colors.grey.shade300)),
                      height: 60,
                      width: 150,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade300),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()));
                                },
                                icon: const Icon(
                                  Icons.keyboard_backspace_sharp,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Go Back',
                              style: GoogleFonts.rubik(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  width: 2, color: Colors.grey.shade300)),
                          child: const Icon(
                            Icons.more_vert,
                            size: 25,
                          ),
                      ),
                    )
                  ],
                ),
              ),
              
              
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage('assets/bui1.jpg'), fit: BoxFit.cover),
                  ),
                  height: 500,
                  width: 400,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black26,
                              ),
                              height: 45,
                              width: 140,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                  'Open For Sale',
                                  style: GoogleFonts.rubik(
                                      textStyle: const TextStyle(
                                          fontSize: 18, color: Colors.white)),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Container(
                                height: 42,
                                width: 42,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black26,
                                    ),
                                child: const Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 300,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 7, right: 7, bottom: 7),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(22)),
                              width: 377,
                              height: 137,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, top: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Lakeshore Blvd West',
                                            maxLines: 2,
                                            style: GoogleFonts.rubik(
                                                textStyle: const TextStyle(
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 30,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Celnia, Delaware',
                                          style: GoogleFonts.rubik(
                                              textStyle: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      '\$3,822',
                      maxLines: 2,
                      style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 150,),

                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade200
                      ),
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                    child: const Icon(
                      Icons.bookmark_border_outlined,
                      size: 24,
                      color: Colors.black54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Colors.grey.shade200
                        ),
                        shape: BoxShape.circle,
                        color: Colors.white70,
                      ),
                      child: const Icon(
                        Icons.share_outlined,
                        size: 24,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Residence',
                  style: GoogleFonts.rubik(
                    textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6,),

              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '4 Beds * 2 Bath * 1493 sq.cm',
                      style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        'Penthouse',
                        style: GoogleFonts.rubik(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Divider(
                  height: 35,
                  thickness: 2,
                  color: Colors.grey[150],
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                  child: Text('Here at Market Street Village, you\'ll have all the benefits of living downtown without sacrificing convenience. Our hip downtown location means you\'re able to walk to nearby parks, festivals and events, hitting up all of San Diego\'s hotspots on foot or the nearby trolley line. Whoever said downtown apartments are small hasn\'t been to Market Street Village, where you\'ll have a fully equipped kitchen complete with modern stainless steel appliances, walk-in closets, oversized windows, an in-home washer and dryer and a rooftop deck that\'s perfect for hosting friends and family for dinner. Topped with community amenities like our media room with theater seating, heated swimming pool, business center and clubhouse, you\'ve never experienced downtown living like that at Market Street Village.',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),



                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
