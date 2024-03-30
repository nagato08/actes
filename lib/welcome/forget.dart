import 'package:flutter/material.dart';
class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon:const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child:  Column(
          children: [
            SizedBox(height: 20,),
            Text("Mot de passe Oublie",
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue
              ) ,
            ),
            SizedBox(height: 20,),
            Text("Entrer votre adresse email. Nous vous enverrons un lien pour creer un nouveau mot de passe via votre email"),
            Form(
                child: Column(
                  children: [
                    const SizedBox(height: 25,),
                    TextFormField(
                      style: TextStyle(
                          height: 0.9
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        label: Text("Adresse email"),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      // validator: (val) => val!.isEmpty ? "Entrer la profession du pere" : null,
                      // //onSaved: (val) => mail = val!,
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.all(13)
                        ),
                        onPressed: (){},
                        child:const Text("Envoyer",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
