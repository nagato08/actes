import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mdpController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();

  CollectionReference _users = FirebaseFirestore.instance.collection("users");
  void _addUser(){
    _users.add({
      'name' : _nameController.text,
      'mdp' : _mdpController.text,
      'phone' : _phoneController.text,
      'mail' : _mailController.text,
    });
    _nameController.clear();
    _mdpController.clear();
    _phoneController.clear();
    _mailController.clear();
  }

  void _deleteUser(String userId){
    _users.doc(userId).delete();
  }

  void _editUser(DocumentSnapshot user){
    _nameController.text = user['name'];
    _mdpController.text = user['mdp'];
    _phoneController.text = user['phone'];
    _mailController.text = user['mail'];

    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Edit User"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "UserName"),
            ),
            SizedBox(height: 8,),
            IntlPhoneField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: "Phone"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 8,),
            TextFormField(
              controller: _mdpController,
              decoration: InputDecoration(labelText: "Mdp"),
            ),
            SizedBox(height: 8,),
            TextFormField(
              controller: _mailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child:const Text("Cancel")
          ),
          ElevatedButton(
              onPressed: (){
                _updateUser(user.id);
                Navigator.pop(context);
              },
              child: Text("Update")
          ),
        ],
      );
    });
  }

  void _updateUser(String userId){
    _users.doc(userId).update({
      'name' : _nameController.text,
      'mdp' : _mdpController.text,
      'phone' : _phoneController.text,
      'mail' : _mailController.text,
    });
    _nameController.clear();
    _mdpController.clear();
    _phoneController.clear();
    _mailController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestion des utilisateurs"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Enter your UserName"),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: "Enter phone"),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: _mdpController,
              decoration: InputDecoration(labelText: "Enter mdp"),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              controller: _mailController,
              decoration: InputDecoration(labelText: "Enter email"),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: _addUser,
                child: Text("Add User")
            ),
            const SizedBox(height: 20,),
            Expanded(child: StreamBuilder(
              stream: _users.snapshots(),
              builder: (context, snapshot) {
                if(!snapshot.hasData){
                  return Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index)
                    {
                      var user = snapshot.data!.docs[index];
                      return Dismissible(
                        key: Key(user.id),
                        background: Container(
                          color: Colors.redAccent,
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 36),
                          child: Icon(Icons.delete,color: Colors.white,),
                        ),
                        onDismissed: (direction){
                          _deleteUser(user.id);
                        },
                        direction: DismissDirection.endToStart,
                        child: Card(
                          elevation: 4,
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                              title: Text(
                                user['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(user["mail"],
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              trailing: IconButton(
                                onPressed: (){
                                  _editUser(user);
                                },
                                icon: Icon(Icons.edit),
                              )
                          ),
                        ),
                      );

                    });

              },
            ))
          ],
        ),
      ),
    );
  }
}