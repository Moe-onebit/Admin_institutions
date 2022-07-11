import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import '/Custom/Forms/settingForm.dart';


//TODO:: get the institution data from the database and convert it to a map


class InstitutionView extends StatefulWidget {
  @override
  _InstitutionViewState createState() => _InstitutionViewState();
}

class _InstitutionViewState extends State<InstitutionView> {
  void _showSettingsPanel() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: SettingsForm(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            buildTop(),
            buildContent(),
          ],
        ));
  }

  Widget buildTop() => Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.topCenter,
    children: [
      Container(
          margin: EdgeInsets.only(bottom: 55), child: buildCoverImage()),
      Positioned(
        top: 105,
        child: buildProfileImage(),
      ),
    ],
  );

  //Cover Image
  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.asset('images/inst.png',
        width: double.infinity, height: 175, fit: BoxFit.fill),
  );

  //Profile Image
  Widget buildProfileImage() => Container(
    child: CircleAvatar(
      radius: 63,
      backgroundColor: Colors.teal.shade500,
      child: CircleAvatar(
        radius: 60,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('images/icon.png'),
      ),
    ),
  );

  buildContent() => Column(
    children: [
      Text(
        'Moe Zoubi',
        style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Cabin'),
      ),
      SizedBox(
        height: 5,
      ),

      //Clickable text
      GestureDetector(
        onTap: _showSettingsPanel,
        child: Text(
          'Edit Information',
          style: TextStyle(
              color: Colors.grey[400], fontSize: 18, fontFamily: 'Cabin'),
        ),
      ),


      SizedBox(
        height: 20,
      ),

      //The divider line
      Divider(
        color: Colors.grey.shade500,
        thickness: 0.1,
      ),
      SizedBox(
        height: 20,
      ),

      ExpandableText(
        'Opens at 10:00 am ',
        style: TextStyle(
            fontFamily: 'Cabin',
            color: Colors.grey.shade500,
            fontSize: 20,
            fontWeight: FontWeight.w100),
        expandText: 'show more',
        collapseText: 'show less',
        maxLines: 1,
        linkColor: Colors.lightBlueAccent,
        textAlign: TextAlign.left,
      ),

    ],
  );


//User Information builder class
  _buildInformation(final String _word1, final String _word2) => Container(
    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _word1,
            style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Text(
            _word2,
            style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
      SizedBox(height: 20)
    ]),
  );

}
