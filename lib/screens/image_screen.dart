import "package:flutter/material.dart";
import "package:onestopwindow/widgets/list.dart";
import "package:url_launcher/url_launcher.dart";
import "package:google_fonts/google_fonts.dart";

class ImageScreen extends StatelessWidget {
  final String url;
  var listc = ShopList.clothes.toList();
  ImageScreen(this.url);

  @override
  Widget build(BuildContext context) {
    if (url == 'https://cdn7.dissolve.com/p/D593_10_049/D593_10_049_1200.jpg')
      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("Clothes"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              print(listc[index]["image"]);
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Center(
                        child: Material(
                          elevation: 80,
                          child: Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.black87, width: 5),
                            // ),
                            height: MediaQuery.of(context).size.height / 3,
                            //child: Center(

                            //child:Material(elevation: 10,
                            //child:
                            child: InkWell(
                              onTap: () => launch(listc[index]["url"]),
                              child: Image(
                                height: MediaQuery.of(context).size.height/4,
                                image: NetworkImage(
                                  
                                  listc[index]["image"],
                                ),
                              ),
                            ),
                            // ),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(10),
                  // ),
                  Row(children: <Widget>[
                  Icon(Icons.favorite,color: Colors.yellow,),
                  Padding(padding: EdgeInsets.only(right: 5),),
                  Text(
                    listc[index]["title"],
                    style: GoogleFonts.pacifico(
                      fontSize: 20,
                      color: Colors.white,

                      // ),
                    ),
                  ),
                  ])
                ],
              );
            },
            itemCount: ShopList.clothes.length,
          ),
        ),
      );
    else if (url ==
        'https://i.pinimg.com/originals/a6/79/1d/a6791d4057e9c1d48eb8441c1b47a240.jpg') {
      var listc = ShopList.groceries.toList();

      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("Groceries"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              print(listc[index]["image"]);
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Material(
                          elevation: 80,
                          child: Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.black87, width: 5),
                            // ),
                            height: MediaQuery.of(context).size.height / 4,
                            //child: Center(

                            //child:Material(elevation: 10,
                            //child:
                            child: InkWell(
                              onTap: () => launch(listc[index]["url"]),
                              child: Image(
                                image: NetworkImage(
                                  listc[index]["image"],
                                ),
                              ),
                            ),
                            // ),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                  Icon(Icons.favorite,color: Colors.yellow,),
                  Padding(padding: EdgeInsets.only(right: 5),),
                  Text(
                    listc[index]["title"],
                    style: GoogleFonts.pacifico(
                      fontSize: 20,
                      color: Colors.white,

                      // ),
                    ),
                  )
                  ]),
                  
                ],
              );
            },
            itemCount: ShopList.groceries.length,
          ),
        ),
      );
    } else if (url ==
        'https://www.essentialhome.eu/inspirations/wp-content/uploads/2018/12/Room-By-Room-5-Home-Decor-Inspirations-That-Will-Seduce-You_1.jpg') {
      var listc = ShopList.household.toList();

      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("Home Decor"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              print(listc[index]["image"]);
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Material(
                          elevation: 80,
                          child: Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.black87, width: 5),
                            // ),
                            height: MediaQuery.of(context).size.height / 4,
                            //child: Center(

                            //child:Material(elevation: 10,
                            //child:
                            child: InkWell(
                              onTap: () => launch(listc[index]["url"]),
                              child: Image(
                                image: NetworkImage(
                                  listc[index]["image"],
                                ),
                              ),
                            ),
                            // ),
                            // ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                  Icon(Icons.favorite,color: Colors.yellow,),
                  Padding(padding: EdgeInsets.only(right: 5),),
                  Text(
                    listc[index]["title"],
                    style: GoogleFonts.pacifico(
                      fontSize: 20,
                      color: Colors.white,

                      // ),
                    ),
                  ),
                  ])
                ],
              );
            },
            itemCount: ShopList.household.length,
          ),
        ),
      );
    } else if (url ==
        'https://i.pinimg.com/originals/e5/47/eb/e547ebf4b79240fcfc9df936ef6ce13c.jpg') {
      var listc = ShopList.books.toList();

      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("Books"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              print(listc[index]["image"]);
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Center(
                        child: Material(
                          elevation: 80,
                          child: Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.black87, width: 5),
                            // ),
                            height: MediaQuery.of(context).size.height / 4,
                            //child: Center(

                            //child:Material(elevation: 10,
                            //child:
                            child: InkWell(
                              onTap: () => launch(listc[index]["url"]),
                              child: Image(
                                image: NetworkImage(
                                  listc[index]["image"],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                  Icon(Icons.favorite,color: Colors.yellow,),
                  Padding(padding: EdgeInsets.only(right: 5),),
                  Text(
                    listc[index]["title"],
                    style: GoogleFonts.pacifico(
                      fontSize: 20,
                      color: Colors.white,

                      // ),
                    ),
                  ),
                  ])
                ],
              );
            },
            itemCount: ShopList.books.length,
          ),
        ),
      );
    }
  }
}
