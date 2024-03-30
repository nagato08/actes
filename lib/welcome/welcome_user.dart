import 'package:flutter/material.dart';

import 'connection.dart';
class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images_projet/ordi.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350,top: 50),
              child: IconButton(
                icon:const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 40,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 450,),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(13)
                  ),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const ConnectionPage())
                    );
                  },
                  child:const Text("Connexion",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0,left: 30),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.all(13)
                  ),
                  onPressed: (){},
                  child:const Text("Connexion avec Google",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
