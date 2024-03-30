import 'package:flutter/material.dart';
class ActionPage extends StatefulWidget {
  const ActionPage({super.key});

  @override
  State<ActionPage> createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage> {
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
        ],
      ),
    );
  }
}
