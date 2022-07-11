import 'package:demo_app_admin/Custom/CustomAddIntitution.dart';
import 'package:demo_app_admin/Custom/custom_Font.dart';
import 'package:demo_app_admin/Custom/custom_card.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final itemsFragments = [
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomSubcard(imageCover: 'images/inst.png', imageIcon: 'images/icon.png', instName: 'Auspicium aevi', function: (){}),
    CustomAddInstitution(institution: 'Institution\'s name', description: 'Description', formKey: new GlobalKey(),)
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    print(_size.width);
    return SizedBox.expand(
      child: Scaffold(
        body: Container(
          color: Colors.grey.shade50,
          child: Flex(
              direction: Axis.vertical,
              children:[
                Flexible(
                    fit: FlexFit.loose,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return GridView.builder(
                        itemCount: itemsFragments.length,
                        itemBuilder: (context,index) => itemsFragments[index],
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: _size.width < 1536.0 ? 1.1 : 1.4 ,
                          crossAxisCount: _size.width > 1171.2 ? 4: _size.width > 880.0 ? 3: _size.width > 585.6 ? 2:1,
                          // childAspectRatio: 1,
                        ),
                      );
                    })
                ),
              ]
          ),
        ),
      ),
    );
  }
}
