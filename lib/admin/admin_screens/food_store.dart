import 'package:flutter/material.dart';
import 'package:devigma_store/admin/admin_screens/admin_product/mushroom.dart';
import 'package:devigma_store/admin/admin_screens/admin_product/pizza.dart';
import 'package:google_fonts/google_fonts.dart';
import 'admin_product/salad.dart';

class FoodStore extends StatefulWidget {
  const FoodStore({Key? key}) : super(key: key);

  @override
  State<FoodStore> createState() => _FoodStoreState();
}

class _FoodStoreState extends State<FoodStore> {

  var BgColor = Colors.black;
  var TextColor = Colors.white;
  var shadowColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 74.5,),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AdminMushroom(),),
                        );
                      },
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Laptops.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: BgColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Computers",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AdminPizza(),),
                        );
                      },
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Electronics.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: BgColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Electronics",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AdminSalad(),),
                        );
                      },
                      child: Container(
                        width: 105,
                        height: 105,
                        padding: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Home_Appliances.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                            padding: EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: BgColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "Appliances",
                              style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Toys.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Toys",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Video_Games.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "video games",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/School.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "School",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Sports.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Sports",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Flask.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Flasks",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Foods.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Foods",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Beauty.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Beauty",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Fashion.png",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 82.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Fashion",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Text(''), flex: 2,),
                  Card(
                    elevation: 10,
                    shadowColor: shadowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      width: 105,
                      height: 105,
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Phones.jpg",),fit: BoxFit.cover,), borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0.8, 70.0, 0.8, 0.0),
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: BgColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "Mobile\n Phones",
                            style: GoogleFonts.raleway(color: TextColor, fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

