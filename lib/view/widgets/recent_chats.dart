import 'package:flutter/material.dart';

import '../../model/messages_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
                   child: Container(
                    decoration:const BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius:const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: ListView.builder(
                        itemCount: chats.length,
                        
                        itemBuilder: (BuildContext context , index){
                          final Message chat =chats[index];
                          return Container(
                            margin:const EdgeInsets.only(top: 5,bottom: 5,right: 20),
                            padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            decoration: BoxDecoration(
                              color:chat.unread?const Color.fromARGB(255, 224, 198, 196):Colors.white,
                              borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage: AssetImage(chat.sender.imageUrl),
                                                  
                                    ),
                                    const SizedBox(width: 10.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(chat.sender.name,style:
                                          const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                        const SizedBox(height: 5.0,),
                                        Container(
                                          width: MediaQuery.of(context).size.width *0.50,
                                          child: Text(chat.text,style:
                                            const TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.0,
                                              overflow: TextOverflow.ellipsis
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(chat.time,style:
                                          const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                    chat.unread ? Container(
                                      width: 40,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      alignment: Alignment.center,
                                      child:const  Text('NEW',style:
                                          TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                           ),
                                          ),
                                      ):Text(''),
                                              
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                      ),
                    ),
                   ),
                 );
  }
}