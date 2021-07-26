import "package:flutter/material.dart";

class SingleServices extends StatelessWidget {
  final textTitle;
  final svgSrc;
  const SingleServices({
    Key? key,
    this.textTitle,
    this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        height: 135,
        width: 115,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0.5, 0))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image(
              image: AssetImage(svgSrc),
              fit: BoxFit.contain,
              height: 60,
            ),
            SizedBox(height: 10),
            Text(
              textTitle,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
