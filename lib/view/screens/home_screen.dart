import 'package:chat_message/model/messages_model.dart';
import 'package:flutter/material.dart';

import '../widgets/category_selector.dart';
import '../widgets/favourite_contacts.dart';
import '../widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: (){

          }, 
          icon:const  Icon(Icons.menu,size: 30,color: Colors.white,),
        ),
        title:const Text('Chats',style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation:0.0,
        actions: [
          IconButton(
          onPressed: (){

          }, 
          icon:const  Icon(Icons.search,size: 30,color: Colors.white,),
        ),
        ],
      ),
      body:Column(
        children: [
          //component that is in widget directory file name is CategorySelector
          const CategorySelector(),
          Expanded(
            child: Container(
              //height: 500,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius:const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child:const Column(
                children: [
                 FavouriteContacts(),
                 RecentChats(),
                ],
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}