import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class masserngerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
        title: Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a-/AFdZucpl5C8nD9exbbaRgn0-qjXV-WH-P8ygNIdAjlGJ=s288-p-rw-no'),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt))),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
                child: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //search par
                Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // shape: BoxShape.circle,
                    color: Colors.blueGrey,
                  ),
                  child: Row(children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 15,
                    ),
                    Text('search'),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                // story icon
                Container(
                  height: 100,
                  child: ListView.separated(
                      //shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: ((context, index) => storyItem()),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          )),
                ),
                SizedBox(
                  height: 15,
                ),
                // chat icon
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: ((context, index) => chatItem()),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget chatItem() => Row(
        children: [
          // icon rhoto
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a-/AFdZucpl5C8nD9exbbaRgn0-qjXV-WH-P8ygNIdAjlGJ=s288-p-rw-no'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 5,
                  end: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'abdo ahmed habib',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Container(
                    width: 250,
                    child: Text(
                      ' hi man hmiss you i called for youyaster day',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text('sep 4'),
                ],
              ),
            ],
          ),
        ],
      );
  Widget storyItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a-/AFdZucpl5C8nD9exbbaRgn0-qjXV-WH-P8ygNIdAjlGJ=s288-p-rw-no'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 5, end: 5),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 7,
                    ),
                  ),
                )
              ],
            ),
            Text(
              'abdulrahman ahmed abdultwab',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
