import 'package:flutter/material.dart';
import 'package:lims/screen/lists_scan_isbn.dart';
import 'package:lims/screen/wishlist.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';

import 'home-user.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _scanBarcode = 'Unknown';

  Future<void> scanBarcode() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List _app = [
      Home(),
      Home(),
      Whislist(),
    ];

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: _app.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).scaffoldBackgroundColor,
        shape: const CircularNotchedRectangle(),
        // notchMargin: 5,
        elevation: 15,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navButton(0, _selectedIndex, Icons.home_rounded, "Home", screenWidth * 0.2),
              navButton(1, _selectedIndex, Icons.qr_code_scanner_rounded, "Scan", screenWidth * 0.2),
              navButton(2, _selectedIndex, Icons.archive_rounded, "Whislist", screenWidth * 0.2),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
          scanBarcode();
        },
        label: const Text(
          'Pustakawan Virtual',
          style: TextStyle(letterSpacing: 0.1, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        icon: const Icon(
          Icons.history_edu_rounded,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget navButton(index, active, icon, label, screenWidth) {
    return Container(
      decoration: BoxDecoration(
        color: (index == active) ? Theme.of(context).primaryColorDark : Theme.of(context).highlightColor.withOpacity(.0),
        borderRadius: (index == 2)
            ? BorderRadius.only(topLeft: Radius.circular(10))
            : (index == 0)
                ? BorderRadius.only(topRight: Radius.circular(10))
                : BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0)),
      ),
      width: screenWidth,
      // color: (index == active) ? HexColor("#002D3B") : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              _onItemTapped(index);
            },
            child: Column(
              children: [
                Icon(
                  icon,
                  color: (active == index) ? Colors.white : Theme.of(context).primaryColor,
                ),
                Text(
                  (active == index) ? label : "",
                  style: TextStyle(fontSize: 12, color: (index == active) ? Colors.white : Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
