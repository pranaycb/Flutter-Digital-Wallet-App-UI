import "package:flutter/material.dart";

class AllAppServices extends StatelessWidget {
  final icon;
  final title;
  final subTitle;
  final Function() onTap;
  const AllAppServices({Key? key, this.icon, this.title, this.subTitle, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 15),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0.5, 0)),
            ]
        ),
        child: ListTile(
            leading: Image.asset(icon),
            title: Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.w600
              ),
            ),
            subtitle: Text(subTitle)
        ),
      ),
    );
  }
}
