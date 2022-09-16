import 'package:flutter/material.dart';

class GridViewTile extends StatelessWidget {
  const GridViewTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: const EdgeInsets.only(left: 16),
      width: MediaQuery.of(context).size.width / 2.5,
      child: Card(
        // color: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1563841930606-67e2bce48b78?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Text(
                'National Music Festival',
                softWrap: true,
                maxLines: 1,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Mon, Dec 24 - 18.00 - 23.00 PM',
                softWrap: true,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigoAccent),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.indigoAccent,
                  ),
                  Expanded(
                    child: Text(
                      'Grand Park, New York',
                      softWrap: true,
                      maxLines: 1,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Icon(Icons.favorite_outline, color: Colors.indigoAccent)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
