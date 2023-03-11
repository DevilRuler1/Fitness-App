import 'package:flare_ui/components/custom_card.dart';
import 'package:flare_ui/constants.dart';
import 'package:flare_ui/model/services.dart';
import 'package:flare_ui/model/trainers.dart';
import 'package:flare_ui/ui/All_Trainers.dart';
import 'package:flare_ui/ui/home/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../post_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xfffafafa),
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 8,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 8,
                          offset: Offset(0, -5),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'Example "Yoga"',
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Services',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StaggeredGridView.countBuilder(
                    crossAxisCount: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 4
                        : 6,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemCount: services.length,
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(2, 3),
                    itemBuilder: (context, index) {
                      return CustomCard(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => PostPage(
                            imagePath: services[index].cover,
                            title: services[index].name,
                          )));
                        },
                        imagePath: services[index].cover,
                        title: services[index].name,
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlineButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/All_Services');
                    },
                    borderSide: BorderSide(
                      color: kColorOrange,
                    ),
                    highlightedBorderColor: kColorOrange,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'See all Services',
                          style: TextStyle(
                            color: kColorOrange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Trainers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StaggeredGridView.countBuilder(
                    crossAxisCount: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 4
                        : 6,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                    itemCount: trainers.length,
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(2, 3),
                    itemBuilder: (context, index) {
                      return CustomCard(
                        onTap: () {},
                        imagePath: trainers[index].cover,
                        title: trainers[index].name,
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlineButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/All_Trainers');
                    },
                    borderSide: BorderSide(
                      color: kColorOrange,
                    ),
                    highlightedBorderColor: kColorOrange,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'See all Trainers',
                          style: TextStyle(
                            color: kColorOrange,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
