import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:devigma_store/admin/admin_screens/admin_product/pizza.dart';
import 'package:devigma_store/users/screens/home/fetch_data_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {

  display(){
    return ListView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 2.25,
          child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("Products").doc("salad").collection("Salad").snapshots(),
            builder: (context, snapshot){
              return snapshot.hasData && !snapshot.hasError ?
              ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                itemCount: snapshot.data!.docs.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  DocumentSnapshot data = snapshot.data!.docs[index];
                  return GestureDetector(
                    onTap: (){
                      ProductDetails().ShowFullContent(data['Id'], "Salad", context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("${data['ImageUrl']}"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Name']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                          Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Price']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                        ],
                      ),
                    ),
                  );
                },
              )
                  :
              Center(child: CircularProgressIndicator(),);
            }
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 2.25,
          child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection("Products").doc("pizza").collection("Pizza").snapshots(),
              builder: (context, snapshot){
                return snapshot.hasData && !snapshot.hasError ?
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                  itemCount: snapshot.data!.docs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    DocumentSnapshot data = snapshot.data!.docs[index];
                    return InkWell(
                      onTap: (){
                        ProductDetails().ShowFullContent(data['Id'], "Pizza", context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${data['ImageUrl']}"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Name']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                            Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Price']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                          ],
                        ),
                      ),
                    );
                  },
                )
                    :
                Center(child: CircularProgressIndicator(),);
              }
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 2.25,
          child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection("Products").doc("mushroom").collection("Mushroom").snapshots(),
              builder: (context, snapshot){
                return snapshot.hasData && !snapshot.hasError ?
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                  itemCount: snapshot.data!.docs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    DocumentSnapshot data = snapshot.data!.docs[index];
                    return InkWell(
                      onTap: (){
                        ProductDetails().ShowFullContent(data['Id'], "Mushroom", context);
                        },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${data['ImageUrl']}"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Name']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                            Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Price']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                          ],
                        ),
                      ),
                    );
                  },
                )
                    :
                Center(child: CircularProgressIndicator(),);
              }
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 2.25,
          child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection("Products").doc("salad").collection("Salad").snapshots(),
              builder: (context, snapshot){
                return snapshot.hasData && !snapshot.hasError ?
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                  itemCount: snapshot.data!.docs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    DocumentSnapshot data = snapshot.data!.docs[index];
                    return InkWell(
                      onTap: (){
                        ProductDetails().ShowFullContent(data['Id'], "Salad", context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${data['ImageUrl']}"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Name']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                            Container(padding: EdgeInsets.all(5.0),decoration: BoxDecoration(color: Colors.black ,borderRadius: BorderRadius.circular(20.0)) ,child: Text("${data['Price']}", style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.white),),),
                          ],
                        ),
                      ),
                    );
                  },
                )
                    :
                Center(child: CircularProgressIndicator(),);
              }
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 537.5),
          child: ImageSlideshow(
            width: MediaQuery.of(context).size.width,
           // height: 200,
            initialPage: 0,
            indicatorColor: Colors.blue,
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                "images/1stBanner.jpg",
              ),
              Image.asset(
                "images/2ndBanner.png",
              ),
              Image.asset(
                "images/3rdBanner.png",
              ),
              Image.asset(
                "images/4thBanner.png",
              ),
              Image.asset(
                "images/5thBanner.png",
              ),
              Image.asset(
                "images/6thBanner.png",
              ),
              Image.asset(
                "images/7thBanner.png",
              ),
              Image.asset(
                "images/8thBanner.png",
              ),
            ],
           ),
          ),
          Container(margin: EdgeInsets.symmetric(vertical: 100.0),padding: EdgeInsets.all(2.0),child: Text("All Categories", style: GoogleFonts.nanumGothic(fontSize: 12, color: Colors.white),), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.black,),),
          Container(
            margin: EdgeInsets.fromLTRB(2.0, 120.0, 2.0, 0.0),
              child: display(),
          ),
        ],
      ),
    );
  }
}