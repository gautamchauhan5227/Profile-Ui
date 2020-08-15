import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      // bottomNavigationBar: userDetailSheet(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: myProfileText(),
          ),
          userDetail(),
          profileImage(),
          userInfo(),
        ],
      ),
    );
  }

  Widget myProfileText() {
    return Row(
      children: [
        Expanded(
          child: Text(
            'My Profile',
            textAlign: TextAlign.center,
            style: TextStyle(shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ], fontSize: 24, fontWeight: FontWeight.w700),
          ),
          flex: 4,
        ),
        Expanded(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white.withOpacity(0.4),
            child: Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white.withOpacity(0.4),
            child: Icon(
              Icons.lock,
              color: Colors.grey,
              size: 20,
            ),
          ),
          flex: 1,
        )
      ],
    );
  }

  Widget userInfo() {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.3,
      left: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Gautam Chauhan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              Icon(
                Icons.edit,
                color: Colors.yellow[700],
              )
            ],
          ),
          Text(
            'gautam@gmail.com',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '9988855339',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Widget profileImage() {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.2,
      left: MediaQuery.of(context).size.width * 0.1,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.yellow[700],
        child: CircleAvatar(
          radius: 45,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                'https://homepages.cae.wisc.edu/~ece533/images/watch.png'),
          ),
        ),
      ),
    );
  }

  Widget userDetail() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Address',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    FlatButton.icon(
                        onPressed: null,
                        icon: Icon(
                          Icons.edit,
                          color: Colors.yellow[700],
                        ),
                        label: Text(
                          'Change',
                          style: TextStyle(color: Colors.yellow[700]),
                        ))
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Adajan Surat',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey[500]),
              ),
            )),
            Expanded(
              child: listTile(Icon(Icons.shopping_basket), Text('My Orders')),
            ),
            Expanded(
              child: listTile(
                  Icon(Icons.card_membership), Text('My Membership Card')),
            ),
            Expanded(
                child: listTile(
                    Icon(Icons.location_city), Text('My Delivery Address'))),
            Expanded(
                child:
                    listTile(Icon(Icons.view_list), Text('Terms & Condition'))),
            Expanded(
                child: listTile(Icon(Icons.settings_power), Text('Logout'))),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'V 1.0',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listTile(
    Icon icon,
    Text text,
  ) {
    return ListTile(
      leading: icon,
      title: text,
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
}
