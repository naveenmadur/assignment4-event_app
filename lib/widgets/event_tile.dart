import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  const EventTile({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: MediaQuery.of(context).size.width / 1.33,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          // color: Colors.green,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.47,
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
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Mon, Dec 24 - 18.00 - 23.00 PM',
                softWrap: true,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigoAccent),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.indigoAccent,
                    size: 30,
                  ),
                  Text(
                    'Grand Park, New York',
                    softWrap: true,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.indigoAccent,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
