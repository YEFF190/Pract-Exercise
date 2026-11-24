import 'package:flutter/material.dart';

void main() => runApp(const CardApp());
final items = [
'Item 1',
'Item 2',
'Item 3',
];
class CardApp extends StatelessWidget {
const CardApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
theme: ThemeData(
colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
),
home: Scaffold(
  appBar: AppBar(title: const Text('My Items')),
  body: Padding(
  padding: const EdgeInsets.all(16),
  child: Row(
    children: [
      Expanded(
        child: Text('A BROAD BROAD BROAD LONG TEXT ' * 5),
      ),
    ],
  ),
),
),
);
}
}

class ProfileCard extends StatelessWidget {
const ProfileCard({
super.key,
required this.name,
required this.role,
required this.phone,
});
final String name;
final String role;
final String phone;
@override
Widget build(BuildContext context) {
final textTheme = Theme.of(context).textTheme;
return Card(
child: Padding(
padding: const EdgeInsets.all(16),
child: Row(
children: [
const CircleAvatar(radius: 32, child: Icon(Icons.person, size: 32)),
const SizedBox(width: 16),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisSize: MainAxisSize.min,
children: [
Text(name, style: textTheme.titleLarge),
Text(role),
const SizedBox(height: 8),
Row(
children: [
const Icon(Icons.phone, size: 16),
const SizedBox(width: 4),
Text(phone),
],
),
],
),
),
],
),
),
);
}
}