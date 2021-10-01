import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:facebook_task/view/components.dart';
import 'package:facebook_task/view/cubit/cubit.dart';
import 'package:facebook_task/view/cubit/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class FacebookScreen extends StatefulWidget {
  @override
  _FacebookScreenState createState() => _FacebookScreenState();
}

class _FacebookScreenState extends State<FacebookScreen>  with TickerProviderStateMixin {
    late TabController tabController ;
    TextEditingController textEditingController = TextEditingController();
    void initState() {
      tabController = TabController(length: 6, vsync: this, initialIndex: 0);
      super.initState();
      setState(() {

      });
    }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> FacebookCubit()..getStories(),
      child: BlocConsumer<FacebookCubit, FacebookState>(
          listener: (context, state){},
        builder: (context, state){
            var width = MediaQuery.of(context).size.width;
            return DefaultTabController(
              length: 6,
              initialIndex: tabController.index,
              child: Scaffold(
                backgroundColor: HexColor('#cccdd2'),
                appBar: AppBar(
                  elevation: 1.0,
                  backgroundColor: Colors.white,
                  title: Text(
                    'facebook',
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#1a80ff')),
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: HexColor('#f4f5f9'),
                            child: Icon(
                              Icons.search_sharp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          CircleAvatar(
                            child: Image.asset('assets/images/messengerIcon.png'),
                            backgroundColor: HexColor('#f4f5f9'),
                          )
                        ],
                      ),
                    )
                  ],
                  bottom: TabBar(
                    onTap: (void index){
                      setState(() {});
                    },
                    controller: tabController,
                    tabs: <Widget>[
                      Tab(
                        icon: Icon(Icons.home,
                          color: (tabController.index == 0) ? HexColor('#1a80ff') : HexColor('#a7a7a9'),
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.shop_sharp,
                            color: (tabController.index == 1) ? HexColor('#1a80ff') : HexColor('#a7a7a9')
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.add_business_sharp,
                            color: (tabController.index == 2) ? HexColor('#1a80ff') : HexColor('#a7a7a9')
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.wallet_travel_sharp,
                            color: (tabController.index == 3) ? HexColor('#1a80ff') : HexColor('#a7a7a9')
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.notifications_sharp,
                            color: (tabController.index == 4) ? HexColor('#1a80ff') : HexColor('#a7a7a9')
                        ),
                      ),
                      Tab(
                        icon: Icon(Icons.view_headline_sharp,
                            color: (tabController.index == 5) ? HexColor('#1a80ff') : HexColor('#a7a7a9')
                        ),
                      ),
                    ],
                  ),
                ),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                                ),
                                SizedBox(width: 5.0,),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.topLeft,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                        border: Border.all(color: Colors.grey),
                                        color: Colors.white,
                                      ),
                                      padding: EdgeInsetsDirectional.only(
                                        end: 10,
                                        start: 20,
                                      ),
                                      child: TextFormField(
                                          autofocus: false,
                                          controller: textEditingController,
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.left,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            hintText: 'What\'s on your mind?',
                                            hintStyle: TextStyle(color: Colors.black),
                                            border: InputBorder.none,
                                          )
                                      )
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
                            Divider(
                              thickness: 0.7,
                              color: HexColor('#d3d3d3'),
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.video_call,color: Colors.red,),
                                          Text('Live'),
                                        ],
                                      )
                                  ),
                                  Text('|'),
                                  SizedBox(width: 15,),
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.photo,color: Colors.green,size: 18,),
                                          Text('Photo'),
                                        ],
                                      )
                                  ),
                                  Text('|'),
                                  SizedBox(width: 15,),
                                  Expanded(
                                      child: Row(
                                        children: [
                                          Icon(Icons.video_call_sharp,color: Colors.purple,),
                                          Text('Room'),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 210,
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                defaultCreateStory(),
                                SizedBox(width: 10,),
                                Container(
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index)=> defaultViewStory(
                                        story: FacebookCubit.get(context).getStory[index]
                                      ),
                                      separatorBuilder: (context, index)=> SizedBox(width: 10,),
                                      itemCount: FacebookCubit.get(context).getStory.length
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      ConditionalBuilder(
                        condition: state is! FacebookGetPostLoading ,
                        builder: (context)=> ListView.separated(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index)=> defaultpost(
                                width,
                                FacebookCubit.get(context).getStory[index]
                            ),
                            separatorBuilder: (context, index)=> SizedBox(height: 10,),
                            itemCount: FacebookCubit.get(context).getStory.length
                        ),
                        fallback: (context)=> Center(child: CircularProgressIndicator(),),
                      )
                    ],
                  ),
                ),
              ),
            );
        },
      ),
    );
  }
}


