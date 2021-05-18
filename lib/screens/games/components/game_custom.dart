import 'package:flutter/material.dart';

class GameCustom extends StatelessWidget {
  GameCustom({@required this.image, @required this.text, this.voidCallback});

  final String image;
  final String text;
  final VoidCallback voidCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        padding: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Card(
            elevation: 4,
            child: Column(
              children: [
                Image.network(
                  image,
                  height: MediaQuery.of(context).size.height * 0.35,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: EdgeInsets.only(top: 5),
                  child: Center(
                    child: Text(
                      "$text",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
