import 'dart:ui';

import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/250?image=9',
              height: 300,
              width: double.infinity,
              fit: BoxFit.fill,
            )),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Hello s bjk bjk ua; 0pewn odfh  appora ti a ffi an rnna l;fvihcxnmwe mfjsjk jkhdfshjisdfhj jks jksdfjkbsdfjkhsdf',
          maxLines: 2,
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Hello I Am Belal Akkad So, fgr Namdfgdf dfg dfsg sg s jiam a oara r amao ar afj anf ',
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
