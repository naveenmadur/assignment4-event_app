import 'package:event_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key, required this.text, required this.icon, required this.color
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const HomeScreen()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(vertical:8.0),
        decoration: BoxDecoration(
            border: Border.all(width: 0.10),
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(icon, size: 50, color: color,),
            Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
