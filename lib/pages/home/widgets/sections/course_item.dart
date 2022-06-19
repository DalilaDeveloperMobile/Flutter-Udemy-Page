import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            'https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png',
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 4),
          const Flexible(
            child: AutoSizeText(
              'Criação de Apps Android e iOS com Flutter - Crie 16 Apps',
              minFontSize: 3,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            'Daniel Ciolfi',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const Text(
            'R\$22,90',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.white,
            ),
          )
        ],
      );
  });
  }
}
