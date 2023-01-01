import 'package:flutter/material.dart';

class ListViewWithColumn extends StatefulWidget {
  const ListViewWithColumn({super.key});

  @override
  State<ListViewWithColumn> createState() => _ListViewWithColumnState();
}

class _ListViewWithColumnState extends State<ListViewWithColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            customBanner(),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    color: Colors.yellow,
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  );
                }))
          ],
        ),
      ),
    );
  }
}

customBanner() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.red,
          width: 200,
          height: 100,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.red,
          width: 200,
          height: 100,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.red,
          width: 200,
          height: 100,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.red,
          width: 200,
          height: 100,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.red,
          width: 200,
          height: 100,
        ),
      ],
    ),
  );
}
