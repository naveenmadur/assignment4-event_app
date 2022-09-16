import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      // color: const Color.fromRGBO(252, 252, 252, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            //Row for profile
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ListTile(
                    title: const  Text(
                      'Good Morning ',
                      // style: TextStyle(color: Colors.grey),
                    ),
                    subtitle: Text(
                      'Andrew Ainsley',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                          ),
                    ),
                    // trailing:
                  ),
                ),
                 CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    // backgroundColor: Colors.white,
                    child:  Icon(
                      Icons.notifications_none_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Container for search bar
          
        ],
      ),
    );
  }
}
