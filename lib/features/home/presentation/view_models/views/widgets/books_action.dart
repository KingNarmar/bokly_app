import 'package:flutter/material.dart';

import '../../../../../../core/utils/widgets/custome_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CustomeButton(
            backgroundColor: Colors.white,
            text: "19.99€",
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
          ),
          CustomeButton(
            backgroundColor: Color(0xffEF8262),
            text: "Free preview",
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
