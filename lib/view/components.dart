import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget defaultCreateStory() => Container(
    alignment: Alignment.center,
    width: 110,
    height: 200,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.black12, spreadRadius: 0, blurRadius: 0),
      ],
      color: HexColor('#f7f8fa'),
      borderRadius: BorderRadius.circular(15),),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    height: 150,
                    fit: BoxFit.fill,
                  )),
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text('Create Story')
        ],
      ),
    );
Widget defaultViewStory({story}) => Container(
  alignment: Alignment.center,
  width: 110,
  height: 200,
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
          color: Colors.black12, spreadRadius: 0, blurRadius: 0),
    ],
    color: HexColor('#f7f8fa'),
    borderRadius: BorderRadius.circular(15),),
  child: Stack(
    alignment: Alignment.topLeft,
    children: [
      Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                '${story['photo']}',
                height: 200,
                fit: BoxFit.fill,
              )),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('${story['name']}', style: TextStyle(color: Colors.white),),
          )
        ],
      ),
      Padding(
        padding:  EdgeInsets.only(top: 5.0,left: 5.0),
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            radius: 16,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('${story['photo']}')
          ),
        ),
      ),
    ],
  ),
);
Widget defaultpost(width, posts) => Container(
  height: 650,
  width: width * 1,
  color: Colors.white,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5, left: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage('${posts['photo']}'),
            ),
          ),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${posts['name']}', style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text('sep 11', style: TextStyle(color: Colors.black45),),
                  Icon(Icons.vpn_lock_sharp, size: 12,)
                ],
              ),

            ],
          )
        ],
      ),
      SizedBox(height: 10,),
      if(posts['description'] != null) Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text('${posts['description']}'),
      ),
      SizedBox(height: 20,),
      Container(
          child: Image.asset('${posts['photo']}',)),
      Divider(height: 50, thickness: 0.7,indent: 10,endIndent: 10,),
      Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red,size: 20,),
                Text('Like'),
              ],
            ),
            SizedBox(width: 60,),
            Row(
              children: [
                Icon(Icons.message,size: 20,),
                Text('Comment'),
              ],
            ),
            SizedBox(width: 40,),
            Row(
              children: [
                Icon(Icons.share_sharp,size: 20,),
                Text('Share'),
              ],
            )
          ],),
      )
    ],
  ),

);
