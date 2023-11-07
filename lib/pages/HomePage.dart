import 'package:flutter/material.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:training_app/models/conversation.dart';
import 'package:training_app/image-service2.dart/conversations_service.dart';
import 'package:training_app/style/style.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String name = "/home";
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
            )]),),
            
       drawer:Drawer(

        child:ListView(
          padding:EdgeInsets.zero,
          children:[
            const  DrawerHeader(
              decoration:BoxDecoration(
                color:Colors.blue,
              ),
              child:Text("wellcome")
            ),

          ]
        ),

       ),   
         
            
            );

       body: FirestoreListView<Conversation>(
        query: ConversationsServices.getAll().orderBy(
          'createdAt',
          descending: true,
        ),
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, snapshot) {
          final conversation = snapshot.data();
          return Column(
            children: [
              InkWell(
                splashColor: Colors.green,
                onTap: () {},
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(conversation.from),
                  trailing: const Icon(
                    Icons.arrow_right,
                    size: 40,
                  ),
                ),
              ),
              const Divider(),
            ],
          );
        },
      );
    
      
        
  }
       
  ///Retourne l'app bar de mon application

}