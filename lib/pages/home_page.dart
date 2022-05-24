import 'package:first_task/pages/icons.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import './circle_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor:Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(33, 48, 33, 42),
                child: Image.asset(
                  "assets/product1.jpg",
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(33, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/product1.jpg", width: 100, height: 75),
                    SizedBox(width: 19),
                    Image.asset("assets/product2.jpg", width: 100, height: 75),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 30, 100, 13.83),
                child: Text(
                  "FootBall Boots",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    
 
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(56, 10.83, 13, 13.83),
                child: Row(
                  children: <Widget>[
                    RatingBar.builder(
                      itemSize: 18.35,
                      initialRating: 3,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(width: 11.83),
                    Text("10 Reviews",
                        style: GoogleFonts.montserrat(
                            fontSize: 14, fontWeight: FontWeight.w700))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(57, 16.5, 190, 13.83),
                child: Text(
                  "\$1,139.33",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(57, 1.5, 130, 13.83),
                  child: Row(children: <Widget>[
                    Text(
                      "Availability:",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "In Stock",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ])),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 2, color: Colors.grey)),
                ),
                margin: EdgeInsets.fromLTRB(57, 16.5, 45, 13.83),
                child: Text(
                  "Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. RELIT official consequent door ENIM RELIT Mollie. Excitation venial consequent sent nostrum met.",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(57, 1.5, 130, 13.83),
                child: Row(
                  children: [
                    CButton("23A6F0"),
                    SizedBox(
                      width: 10,
                    ),
                    CButton("2DC071"),
                    SizedBox(
                      width: 10,
                    ),
                    CButton("E77C40"),
                    SizedBox(
                      width: 10,
                    ),
                    CButton("252B42"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(57, 1.5, 13, 13.83),
                child: Row(
                  children: [
                   FlatButton(  
                child: Text('Select Options', style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),),
                  color: Colors.blueAccent,  
                textColor: Colors.white,   
                onPressed: () {},  
              ),  
              SizedBox(width: 10),
              CIcons(Icons.favorite_border),
              SizedBox(width: 10),
              CIcons(Icons.shopping_cart),
              SizedBox(width: 10),
              CIcons(Icons.remove_red_eye),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
