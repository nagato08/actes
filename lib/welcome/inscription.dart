import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';
import '../appli/menu_navigation.dart';
import 'connection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mdpController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();

  Uint8List? _image;
  File? selectedImage;
  var _obscuretext = true;
  var textobscure = true;
  final formkey = GlobalKey<FormState>();

  validationform() async {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      CollectionReference _users = FirebaseFirestore.instance.collection("users");
      _users.add({
        'name' : _nameController.text,
        'mdp' : _mdpController.text,
        'phone' : _phoneController.text,
        'mail' : _mailController.text,
      });
      formkey.currentState!.reset();
      switch (await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title:const Text("Inscription Reussi!",
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
                          builder: (_) =>const NavigationMenu())
                  );
                },
              ),
            ],
          )

        ],
      ),
    )
    ){}


    } else {
      debugPrint("Erreur ");
    }
  }


  // CollectionReference _users = FirebaseFirestore.instance.collection("users");
  // void _addUser(){
  //   _users.add({
  //     'name' : _nameController.text,
  //     'mdp' : _mdpController.text,
  //     'phone' : _phoneController.text,
  //     'mail' : _mailController.text,
  //   });
  //   if (formkey.currentState!.validate()) {
  //     formkey.currentState!.save();
  //
  //     //formkey.currentState!.reset();
  //     Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //             builder: (_) =>const NavigationMenu())
  //     );
  //
  //   } else {
  //     debugPrint("Erreur ");
  //   }
  //   _nameController.clear();
  //   _mdpController.clear();
  //   _phoneController.clear();
  //   _mailController.clear();
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
        centerTitle: true,
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
      body: Column(
        children: [
          Container(
            height: 300,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images_projet/inscription.jpg"),
                    fit: BoxFit.cover
                )
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Form(
                      key: formkey,
                      child: Column(
                        children: [
                          // Stack(
                          //   children: [
                          //     _image!=null?
                          //
                          //     CircleAvatar(
                          //       radius: 70,
                          //       backgroundImage:(MemoryImage(_image!)),
                          //     ):const CircleAvatar(
                          //       radius: 70,
                          //       backgroundImage: AssetImage("images_projet/user.jpg"),
                          //     ),
                          //     Positioned(
                          //       bottom: 0,
                          //       right: 0,
                          //       child: Container(
                          //           width: 35,
                          //           height: 35,
                          //           decoration: BoxDecoration(
                          //               borderRadius: BorderRadius.circular(100),color: Colors.amber
                          //           ),
                          //           child:IconButton(
                          //             onPressed: (){
                          //               showImagePickerOption(context);
                          //             },
                          //             icon:const Icon(Icons.camera_alt),
                          //           )
                          //       ),
                          //     )
                          //   ],
                          // ),
                          const SizedBox(height: 30,),
                          TextFormField(
                            controller: _nameController,
                            style:const TextStyle(
                                height: 0.9
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Nom d'utilisateur",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              prefixIcon:const Icon(Icons.person),
                            ),
                            keyboardType: TextInputType.text,
                            validator: (val) => val!.isEmpty ? "Entrer votre nom d'utilisateur" : null,
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            controller: _mailController,
                            style:const TextStyle(
                                height: 0.9
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              prefixIcon:const Icon(Icons.mail),
                            ),
                            validator: (val) => val!.isEmpty ? "Entrer votre Email" : null,
                            keyboardType: TextInputType.text,
                          ),
                          const SizedBox(height: 20,),
                          IntlPhoneField(
                            controller: _phoneController,
                            style:const TextStyle(
                                height: 0.9
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Telephone",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              prefixIcon:const Icon(Icons.phone),
                            ),
                            keyboardType: TextInputType.phone,
                            //validator: (val) => val!.isEmpty ? "Entrer votre numero de telephone" : null,
                          ),
                          const SizedBox(height: 20,),
                          TextFormField(
                            controller: _mdpController,
                            style:const TextStyle(
                                height: 0.9
                            ),
                            decoration: InputDecoration(
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
                              ),
                              prefixIcon:const Icon(Icons.fingerprint),
                            ),
                            validator: (val) => val!.isEmpty ? "Entrer votre mot de passe" : null,
                            keyboardType: TextInputType.text,
                            obscureText: _obscuretext,
                          ),

                          // const SizedBox(height: 20,),
                          //
                          // TextFormField(
                          //   style:const TextStyle(
                          //       height: 0.9
                          //   ),
                          //   decoration: InputDecoration(
                          //     suffixIcon: IconButton(
                          //       icon:const Icon(
                          //         Icons.visibility,
                          //         color: Colors.black,
                          //       ),
                          //       onPressed: () {
                          //         setState(() {
                          //           textobscure = !textobscure;
                          //         });
                          //       },
                          //     ),
                          //     fillColor: Colors.grey.shade100,
                          //     filled: true,
                          //     hintText: "Confirmer mot de passe",
                          //     border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular(50)
                          //     ),
                          //     prefixIcon:const Icon(Icons.fingerprint),
                          //   ),
                          //   validator: (val) => val!.isEmpty ? "Confirmer votre mot de passe" : null,
                          //   keyboardType: TextInputType.text,
                          //   obscureText: textobscure,
                          // ),


                          const SizedBox(height: 30,),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: validationform,

                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: const StadiumBorder(),
                                  padding: const EdgeInsets.all(13)
                              ),
                              child:const Text("Inscription",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Vous avez deja un compte?",
                                style: TextStyle(
                                    fontSize: 15
                                ),
                              ),
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>const ConnectionPage())
                                    );
                                  },
                                  child:const Text("Connexion!",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 15,
                                      color: Colors.lightBlueAccent,

                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
  void showImagePickerOption(BuildContext context){
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        _pickImageFromGallery();
                      },
                      child:const SizedBox(
                        child: Column(
                          children: [
                            Icon(Icons.image,size: 70,),Text("Gallery"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        _pickImageFromCamera();
                      },
                      child:const SizedBox(
                        child: Column(
                          children: [
                            Icon(Icons.camera_alt,size: 70,),Text("Camera"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  //Gallery
  Future _pickImageFromGallery() async{
    final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(returnImage == null)return;
    setState(() {
      selectedImage=File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();

    });
    Navigator.of(context).pop();
  }

  //Camera
  Future _pickImageFromCamera() async{
    final returnImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if(returnImage == null)return;
    setState(() {
      selectedImage=File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();

    });
    Navigator.of(context).pop();
  }
}
