import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ExpenseApp());
}

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kharcha Manager',
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.teal, brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Colors.black),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double totalBalance = 0.0;
  double income = 0.0;
  double expense = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("खर्च मैनेजर"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Balance Card
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text("कुल बचा हुआ बैलेंस", style: TextStyle(color: Colors.white, fontSize: 16)),
                  Text("₹ $totalBalance", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [Text("आमदनी", style: TextStyle(color: Colors.white70)), Text("₹ $income", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))]),
                      Column(children: [Text("खर्च", style: TextStyle(color: Colors.white70)), Text("₹ $expense", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))]),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_balance, color: Colors.blue),
                    title: Text("बैंक खाता जोड़ें (Manual)"),
                    trailing: Icon(Icons.add),
                    onTap: () {},
                  ),
                  Divider(),
                  Text("आज का खर्च", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  // यहाँ खर्चों की लिस्ट आएगी
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
