import 'package:flutter/material.dart';

class NoteAppBar extends StatelessWidget {
  const NoteAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        "Notes",
        style: TextStyle(fontSize: 35),
      ),
      Spacer(),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Color(0xff3B3B3B), borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Color(0xff3B3B3B), borderRadius: BorderRadius.circular(8)),
        child: Center(
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))),
      )
    ]);
  }
}
