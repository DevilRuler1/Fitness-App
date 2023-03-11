import 'package:flare_ui/components/custom_card.dart';
import 'package:flare_ui/model/Services_Data.dart';
import 'package:flare_ui/ui/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height,
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
                  Text(
                    'All Services',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'SFProDisplay',
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StaggeredGridView.countBuilder(
                    crossAxisCount: MediaQuery
                        .of(context)
                        .orientation ==
                        Orientation.portrait
                        ? 4
                        : 6,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemCount: services_all.length,
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(2, 3),
                    itemBuilder: (context, index) {
                      return CustomCard(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => PostPage(
                            imagePath: services_all[index].cover,
                            title: services_all[index].name,
                          )));
                        },
                        imagePath: services_all[index].cover,
                        title: services_all[index].name,
                      );
                    },
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
