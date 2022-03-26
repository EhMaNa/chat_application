import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            child: SvgPicture.asset('assets/svg/person_black_36dp.svg',
                color: Colors.white,
              height: 30,
              width: 30,
            ),
            backgroundColor: Colors.white,
          ),
          title: Text('Checking', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
          subtitle: Row(
            children: [
              Icon(Icons.done_all),
              Text('fa wo gyimie ko', style: TextStyle(
                fontSize: 13,
              ),),
              SizedBox(width: 3,)
            ],
          ),
          trailing: Text('20:48'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 80),
          child: Divider(
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
