import 'package:demo_app_admin/view/InstitutionAdmin/institutionView.dart';
import 'package:demo_app_admin/view/InstitutionAdmin/subjectView.dart';
import 'package:demo_app_admin/view/InstitutionAdmin/usersView.dart';
import 'package:flutter/material.dart';
import '/Custom/custom_Font.dart';
import '/Custom/DrawerItem.dart';



class InstitutionDrawerView extends StatefulWidget {

  final drawerFragments = [
    DrawerItem("Home", Icons.home, () =>  InstitutionView()),
    DrawerItem("Users", Icons.supervised_user_circle, () =>  UsersView()),
    DrawerItem("Subjects", Icons.book, () =>  SubjectView()),

  ];

  @override
  _InstitutionDrawerViewState createState() => _InstitutionDrawerViewState();
}

class _InstitutionDrawerViewState extends State<InstitutionDrawerView> {
  int _selectedDrawerFragmentIndex = 0;
  String _selectedDrawerFragmentTitle = 'Home';
  _getDrawerFragmentWidgetIndex(int pos) {
    if (widget.drawerFragments[pos] != null) {
      return widget.drawerFragments[pos].body();
    } else {
      return new Text("Error");
    }
  }

  _onSelectFragment(int index) {
    setState(()  {
      _selectedDrawerFragmentIndex = index;
      switch(_selectedDrawerFragmentIndex){
        case(0) : {_selectedDrawerFragmentTitle = 'Home';break;}
        case(1) : {_selectedDrawerFragmentTitle = 'Users';break;}
        case(2) : {_selectedDrawerFragmentTitle = 'Subjects';}
      }
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];

    for (var i = 0; i < widget.drawerFragments.length; i++) {
      var d = widget.drawerFragments[i];
      drawerOptions.add(
          ListTile(
            leading:  Icon(d.icon),
            title:  Text(d.title),
            selected: i == _selectedDrawerFragmentIndex,
            onTap: () => _onSelectFragment(i),
          )
      );
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: CustomFont(text: _selectedDrawerFragmentTitle,fontWeight: FontWeight.bold,fontSize: 18,letterSpacing: 0.7,fontFamily: 'Cabin',),
          centerTitle: true,
          actions: [
            Icon(
                Icons.logout
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        drawer:  Drawer(
          child:  Column(
            children: <Widget>[
              Column(children: drawerOptions)
            ],
          ),
        ),
        body: _getDrawerFragmentWidgetIndex(_selectedDrawerFragmentIndex),
      ),
    );
  }
}
