import 'package:civils1/dashboard/user.dart';
import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List img=[
    "images_projet/gowther.jpg",
    "images_projet/gojo.jpg",
    "images_projet/anos.jpg",
    "images_projet/kakashi.jpg",
    "images_projet/denki.jpg",
    "images_projet/rengoku.jpg",
    "images_projet/sasuke.jpg",
    "images_projet/utah.jpg",
  ];
  List lien =[
    "HomeScreen()",
  ];
  List title=[
    "Gowther",
    "Gojo",
    "Anos",
    "Kakashi",
    "Denki",
    "Rengoky",
    "Sasuke",
    "Utah",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo,
          //height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(),
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 35,
                          left: 20,
                          right: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),

                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("images_projet/gowther.jpg")
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dashboard",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("Derniere mise a jour : 8 Mars 2024",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white54,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      ),
                    ),
                    //height: MediaQuery.of(context).size.height*0.75,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(

                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>const HomeScreen())
                                );
                              },
                              child: Container(
                                height: 200,
                                width: 150,
                                margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 6
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset( "images_projet/user1.jpg",
                                      width: 100,
                                    ),
                                    Text("Utilisateurs",
                                      style:TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                      ) ,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 200,
                                width: 150,
                                margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 6
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset( "images_projet/nais.jpg",
                                      width: 150,
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text("Actes de naissance",
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ) ,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(

                              onTap: (){},
                              child: Container(
                                height: 200,
                                width: 150,
                                margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 6
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset( "images_projet/mariage.jpg",
                                      width: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text("Actes de mariage",
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ) ,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                height: 200,
                                width: 150,
                                margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 6
                                      )
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset( "images_projet/deces.jpg",
                                      width: 150,
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text("Actes de Deces",
                                        style:TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                        ) ,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
