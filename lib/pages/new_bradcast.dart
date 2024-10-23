import 'package:flutter/material.dart';

class NewBroadcastPage extends StatelessWidget {
  List<String> contactNames = [
    'Shiv shankar pradhan',
    'Pallavi pradhan',
    'Alok giri',
    'Pahalad Dubey',
    'Chandu',
    'Kaushiki',
    'Monu Kumar',
    'Aditya Dubey',
    'Sourav',
    'Akhilesh',
    'Sunny',
    'Leo',
    'Mia',
    'Noah',
    'Olivia',
    'Paul',
    'Quinn',
    'Rose',
    'Sam',
    'Tina',
  ];
  List<String> contactMessages = [
    'At work',
    'Daddy little girl',
    'Hey there! I am using WhatsApp',
    'Hey there! I am using WhatsApp',
    'Busy',
    'Hey there! I am using WhatsApp',
    'Touch the sky with glory',
    'Mahadev',
    'Bullet raja',
    'Hey there! I am using WhatsApp',
    'Judge me when you are perfect',
    'Urgent calls only',
    'Never give up',
    'Hey there! I am using WhatsApp',
    'At work',
    'Available',
    'Hey there! I am using WhatsApp',
    'Indian Army',
    'Hey there! I am using WhatsApp',
    'One mistake game over',
  ];
  List<String> contactImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrVN9H11wCam0PY3Wp44gEjVOWihP2BNyltg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2qjgmPbnYdFT36nNPajIjtBZ-C4LPJULpiw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJopZhqB8gtlnYkigJlOZ1wPdiFSnA2uMJrw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzj0JiP3EbKP2k8X0_ybPi3LP3gMXRYZkaQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxNh6cKqF_ZMR26fTc-gI9noI2t3UrHMJOWg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTflfFY9fzEmz83IXucsBdJMr_Q140nY6ZqPQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL0bJYa-I36078Y0JWXbyBLHC9FnL7Arg--Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlSd4rBD3TpplIVUYUj8zoGVkJgXzRObUmYQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzj0JiP3EbKP2k8X0_ybPi3LP3gMXRYZkaQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxNh6cKqF_ZMR26fTc-gI9noI2t3UrHMJOWg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL0bJYa-I36078Y0JWXbyBLHC9FnL7Arg--Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTflfFY9fzEmz83IXucsBdJMr_Q140nY6ZqPQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEngfGc4E_MP98vSZTPaas2yJc22gSRodgsg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzj0JiP3EbKP2k8X0_ybPi3LP3gMXRYZkaQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxNh6cKqF_ZMR26fTc-gI9noI2t3UrHMJOWg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL0bJYa-I36078Y0JWXbyBLHC9FnL7Arg--Q&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTflfFY9fzEmz83IXucsBdJMr_Q140nY6ZqPQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzj0JiP3EbKP2k8X0_ybPi3LP3gMXRYZkaQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxNh6cKqF_ZMR26fTc-gI9noI2t3UrHMJOWg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL0bJYa-I36078Y0JWXbyBLHC9FnL7Arg--Q&s',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New broadcast',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Text(
              '0 of 256 selected',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Search action
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Text('Only contacts with +91 9693654565 in their address ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Text('     book will recieve your broadcast messages',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(width: 335,
            height: 1,
            color: Colors.black12,),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contactNames.length, // Use the length of contactNames
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                        contactImages[index]), // Initial of the contact
                  ),
                  title: Text(contactNames[index],
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500)), // Display contact name
                  subtitle: Text(contactMessages[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color:
                          Colors.grey[700])), // Replace with last message
                  onTap: () {
                    // Handle tap
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB press
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.arrow_forward,color: Colors.white,),
      ),
    );
  }
}