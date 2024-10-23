import 'package:demo/pages/payments.dart';
import 'package:demo/pages/settings.dart';
import 'package:demo/pages/starred_messages.dart';
import 'package:flutter/material.dart';
import 'camera_page.dart';
import 'linked_devices.dart';
import 'new_bradcast.dart';
import 'new_group.dart';

class PopScreen extends StatelessWidget {
  void _navigateToOption(BuildContext context, String option) {
    Widget page;

    switch (option) {
      case 'Option 1':
        page = NewGroupPage();
        break;
      case 'Option 2':
        page = NewBroadcastPage();
        break;
      case 'Option 3':
        page = LinkedDevicesPage();
        break;
      case 'Option 4':
        page = StarredMessagesPage();
        break;
      case 'Option 5':
        page = PaymentsPage();
        break;
      case 'Option 6':
        page = SettingsPage();
        break;
      default:
        page = Center(child: Text('Unknown option'));
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void _openCameraPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CameraPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.green),
        ),
        actions: [
          // Camera Icon Button
          IconButton(
            icon: Icon(Icons.camera_alt_outlined),
            onPressed: () {
              _openCameraPage(context);
            },
          ),
          // Popup Menu Button
          PopupMenuButton<String>(
            onSelected: (value) {
              _navigateToOption(context, value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Text('New Group', style: TextStyle(fontSize: 16)),
                ),
                PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Text('New Broadcast', style: TextStyle(fontSize: 16)),
                ),
                PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Linked Devices', style: TextStyle(fontSize: 16)),
                ),
                PopupMenuItem<String>(
                  value: 'Option 4',
                  child: Text('Starred Messages', style: TextStyle(fontSize: 16)),
                ),
                PopupMenuItem<String>(
                  value: 'Option 5',
                  child: Text('Payments', style: TextStyle(fontSize: 16)),
                ),
                PopupMenuItem<String>(
                  value: 'Option 6',
                  child: Text('Settings', style: TextStyle(fontSize: 16)),
                ),
              ];
            },
            icon: Icon(Icons.more_vert),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            color: Colors.white, // Background color of the popup
          ),
        ],
      ),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}