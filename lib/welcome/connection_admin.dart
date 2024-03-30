import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../dashboard/dashboard.dart';
import 'Forgot_admin.dart';
class ConnectionAdmin extends StatefulWidget {
  const ConnectionAdmin({super.key});

  @override
  State<ConnectionAdmin> createState() => _ConnectionAdminState();
}

class _ConnectionAdminState extends State<ConnectionAdmin> {
  var _obscuretext = true;
  final formkey = GlobalKey<FormState>();


  validationform() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      formkey.currentState!.reset();
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (_) =>const Dashboard())
      );

    } else {
      debugPrint("Erreur ");
    }
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController  _emailController =TextEditingController();
  TextEditingController  _passController =TextEditingController();
  String _email = "";
  String _password ="";

  void _handleSignUp() async{
    try{
      UserCredential userCredential=await _auth.createUserWithEmailAndPassword(email: _email, password: _password);
      print("User Registered : ${userCredential.user?.email}");
      switch (await showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title:const Text("Connexion Reussi!",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.redAccent),
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SimpleDialogOption(
                  child:const Text("OK"),
                  onPressed: (){
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>const Dashboard())
                    );
                  },
                ),
              ],
            )

          ],
        ),
      )
      ){}

    }catch(e){
      print("Error During Registration $e ");
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon:const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 300,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images_projet/connexion_admin.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),
          Expanded(
              child: Container(
                decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )
                ),
                child: SingleChildScrollView(
                  child: Container(
                    padding:const EdgeInsets.only(
                        top: 40,right: 35,left: 35
                    ),
                    child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            const Text("Bienvenue!",
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 10,),
                            const Text("Connectez vous a votre compte administrateur",
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black87),
                            ),
                            const SizedBox(height: 20,),
                            TextFormField(
                              controller: _emailController,
                              style:const TextStyle(
                                  height: 0.9
                              ),
                              decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Adresse email",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                prefixIcon:const Icon(Icons.mail),
                              ),
                              validator: (val){
                                if(val!.isEmpty ||!RegExp(r'^[\w-.]+@([\w-]+\.)+\w{2,4}').hasMatch(val)){
                                  return "Entrer une adresse email valide";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              onChanged: (value){
                                setState(() {
                                  _email=value;
                                });
                              },
                            ),
                            const SizedBox(height: 20,),
                            TextFormField(
                              controller: _passController,
                              style:const TextStyle(
                                  height: 0.9
                              ),
                              decoration: InputDecoration(
                                  prefixIcon:const Icon(Icons.fingerprint),
                                  suffixIcon: IconButton(
                                    icon:const Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscuretext = !_obscuretext;
                                      });
                                    },
                                  ),

                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Mot de passe",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)
                                  )
                              ),
                              onChanged: (value){
                                setState(() {
                                  _password=value;
                                });
                              },
                              validator: (val) => val!.isEmpty ? "Entrer votre mot de passe" : null,
                              keyboardType: TextInputType.text,
                              obscureText: _obscuretext,
                            ),
                            const SizedBox(height: 30,),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    shape: const StadiumBorder(),
                                    padding: const EdgeInsets.all(13)
                                ),
                                onPressed: (){
                                  if(_formkey.currentState!.validate()){
                                    _handleSignUp();
                                  }
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
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Mot de passe oublie?",
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                                TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>const ForgotAdmin())
                                      );
                                    },
                                    child:const Text("Cliquez ici!",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        color: Colors.lightBlueAccent,

                                      ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
