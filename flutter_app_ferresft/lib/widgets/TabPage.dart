// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_app_ferresft/ui/views/customer/CustomerPage.dart';
import 'package:flutter_app_ferresft/ui/views/login/Login_view.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => TabPageState();
}

class TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  List<Tab> menuTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.home),
      text: 'Home',
    ),
    const Tab(
      icon: Icon(Icons.person_2_outlined),
      text: 'User',
    ),
    const Tab(
      icon: Icon(Icons.email),
      text: 'Email',
    )
  ];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: menuTabs.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        print("Tab ${tabController.index}");
      });
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab'),
        bottom: TabBar(
          tabs: menuTabs,
          controller: tabController,
          indicatorColor: Colors.grey,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [CustomerPage(), CustomerPage(), LoginView()],
      )
    );
  }
}
