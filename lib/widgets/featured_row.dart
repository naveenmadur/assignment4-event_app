import 'package:flutter/material.dart';


class FeaturedRow extends StatelessWidget {
  const FeaturedRow({
    Key? key, required this.featureText
  }) : super(key: key);
final String featureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            featureText,
            style:  TextStyle(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
                // color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'See All',
            style: TextStyle(
                fontSize: 18,
                color: Colors.indigoAccent,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
