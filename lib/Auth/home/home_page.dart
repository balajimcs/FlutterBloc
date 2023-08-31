import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          // leading: Icon(
          //   Icons.menu,
          //   color: AppColors.white,
          // ),
          iconTheme: IconThemeData(color: Color(0xFF134FAF)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF134FAF), Color(0xFF134FAF)]),
            ),
          ),
          // backgroundColor: AppColors.primaryColor,
          elevation: 0,
          title:  Padding(
            padding: const EdgeInsets.only(left: 45),
            child: Text(
                "Angler Flutter Bloc",
                style: TextStyle(
                    color: Colors.white, fontSize: 18.0, fontFamily: 'Raleway'),
              
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child:
                        Image(image: AssetImage("assets/images/angler.png"), fit: BoxFit.contain,
                        width: 350,),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Text('WELCOME TO ANGLER TECHNOLOGIES',textAlign: TextAlign.center,
                                                 style: TextStyle(color: Color(0xFF134FAF) ,fontFamily: "Raleway", fontSize: 30, fontWeight: FontWeight.bold, ),),
                ),

                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Text('A pioneering India-based Internet-solutions company with offices worldwide. Our unique Full Service Provider (FSP) solutions model brings you the best of the worlds of Offshore Software Development, E-Business Products and Interactive Media.',textAlign: TextAlign.justify,
                                                   style: TextStyle(color: Colors.grey ,fontFamily: "Raleway", fontSize: 15, fontWeight: FontWeight.bold, ),),
                  ),
                ),

                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Text('How can YOU Benefit from ANGLER',textAlign: TextAlign.center,
                                                   style: TextStyle(color: Color(0xFF134FAF) ,fontFamily: "Raleway", fontSize: 30, fontWeight: FontWeight.bold, ),),
                  ),
                ),

                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Text('If you are an Independent Software Vendor (ISV) / Software Product Development Company or an exciting Technology Start-up, we can partner with you to either augment or outsource your development & testing needs for faster delivery and free up your valuable resources to focus on core business.',textAlign: TextAlign.justify,
                                                   style: TextStyle(color: Colors.grey ,fontFamily: "Raleway", fontSize: 15, fontWeight: FontWeight.bold, ),),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35, right: 35),
                    child: Text('Our ANGLER HeadStart is a unique Outsourced Product Development (OPD) model - a break-through software outsourcing model of partnering with ISVs and Software Product companies, making us the ideal Product Development Partne.',textAlign: TextAlign.justify,
                                                   style: TextStyle(color: Colors.grey ,fontFamily: "Raleway", fontSize: 15, fontWeight: FontWeight.bold, ),),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      
    );
  }
}
