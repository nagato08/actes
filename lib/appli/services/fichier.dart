import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';

class Fichier extends StatefulWidget {
  const Fichier({super.key});

  @override
  State<Fichier> createState() => _FichierState();
}

class _FichierState extends State<Fichier> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;

  FilePickerResult? result1;
  String? _fileName1;
  PlatformFile? pickedfile1;
  bool isLoading1 = false;
  File? fileToDisplay1;

  FilePickerResult? result2;
  String? _fileName2;
  PlatformFile? pickedfile2;
  bool isLoading2 = false;
  File? fileToDisplay2;

  void pickFile() async{
    try{
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        //allowedExtensions: ,
        allowMultiple: false,
      );
      if(result!=null){
        _fileName = result!.files.first.name;
        pickedfile=result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print("File name $_fileName");
      }
      setState(() {
        isLoading = false;
      });
    }catch(e){

    }
  }

  void pickFile1() async{
    try{
      setState(() {
        isLoading1 = true;
      });
      result1 = await FilePicker.platform.pickFiles(
        type: FileType.any,
        //allowedExtensions: ,
        allowMultiple: false,
      );
      if(result!=null){
        _fileName1 = result1!.files.first.name;
        pickedfile1=result1!.files.first;
        fileToDisplay1 = File(pickedfile1!.path.toString());

        print("File name $_fileName1");
      }
      setState(() {
        isLoading1 = false;
      });
    }catch(e){

    }
  }

  void pickFile2() async{
    try{
      setState(() {
        isLoading2 = true;
      });
      result2 = await FilePicker.platform.pickFiles(
        type: FileType.any,
        //allowedExtensions: ,
        allowMultiple: false,
      );
      if(result!=null){
        _fileName2 = result2!.files.first.name;
        pickedfile2=result2!.files.first;
        fileToDisplay2 = File(pickedfile2!.path.toString());

        print("File name $_fileName2");
      }
      setState(() {
        isLoading2 = false;
      });
    }catch(e){

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Derniere etape",
          style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(
                  left: 50,
                  right: 50
              ),
              child:  const Center(
                child: Text("Veuillez charger les documents demandes!",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(
                left: 70,
                right: 70,
              ),
              child: Center(
                  child: isLoading
                      ? CircularProgressIndicator()
                      : TextButton(
                    onPressed: pickFile,
                    child:const Text("certificat de naissance établit par le médecin ou la sage femme"),
                  )
              ),
            ),
            if(pickedfile!=null)
              SizedBox(
                height:200,width: 200,
                child: Image.file(fileToDisplay!),
              ),
            const SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(
                  left: 70,
                  right: 70
              ),
              child: Center(
                  child: isLoading1
                      ? CircularProgressIndicator()
                      : TextButton(
                    onPressed: pickFile1,
                    child:const Text("Carte National d'Identite du pere"),
                  )
              ),
            ),
            if(pickedfile1!=null)
              SizedBox(
                height:200,width: 200,
                child: Image.file(fileToDisplay1!),
              ),

            const SizedBox(height: 20,),
            Padding(
              padding:const EdgeInsets.only(
                  left: 70,
                  right: 70
              ),
              child: Center(
                  child: isLoading2
                      ? CircularProgressIndicator()
                      : TextButton(
                    onPressed: pickFile1,
                    child:const Text("Carte National d'Identite de la mere"),
                  )
              ),
            ),
            if(pickedfile2!=null)
              SizedBox(
                height:200,width: 200,
                child: Image.file(fileToDisplay2!),
              ),
          ],
        ),
      ),
    );

  }
}
