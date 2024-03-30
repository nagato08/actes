import 'package:flutter/material.dart';
class Demande extends StatefulWidget {
  const Demande({super.key});

  @override
  State<Demande> createState() => _DemandeState();
}

class _DemandeState extends State<Demande> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.grey,
        title:const Text("Liste de demande",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        centerTitle: true,
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
    );
  }
}
