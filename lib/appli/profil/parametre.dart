import 'package:flutter/material.dart';
class ParamPage extends StatefulWidget {
  const ParamPage({super.key});

  @override
  State<ParamPage> createState() => _ParamPageState();
}

class _ParamPageState extends State<ParamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parametres",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
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
    );
  }
}
