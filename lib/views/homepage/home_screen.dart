import 'package:auction_app/views/homepage/details_page/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Aman the baiter"),
                accountEmail: Text('eyosi69@gmail.com')),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.save_outlined),
              title: const Text('Saved Tenders'),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.logout_outlined),
              title: const Text('Logout'),
            ),
            const Divider(),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Tenders',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        // ignore: prefer_const_constructors
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: const Alignment(0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/active_tenders.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '10',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Active Tenders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: const Alignment(0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/published.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '17',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Published Today',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: const Alignment(0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/closed.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '32',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Closed Tenders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: const Alignment(0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/opened.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '24',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Opened Tenders',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(height: 0.3),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          fillColor: Colors.white,
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.grey),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: const BorderSide(color: Colors.cyan),
                          shape: const CircleBorder()),
                      child: const Icon(
                        FontAwesomeIcons.filter,
                        size: 20,
                        color: Colors.cyan,
                      )),
                ],
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsScreen()));
                          },
                          title: const Text(
                            'ያገለገሉ ልዩ ልዩ ንብረቶች በግልጽ ጨረታ ለመሸጥ የተዘጋጀ የጨረታ ሰነድ ቁጥር PPS/NVP-5FBI/01/02/2016',
                            style: TextStyle(fontWeight: FontWeight.w700),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  side: const BorderSide(color: Colors.cyan),
                                  shape: const CircleBorder()),
                              child: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.cyan,
                              )),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Posted 10 hours ago',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Federal Prisoners Commission',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Security',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text('Bid Closing Date'),
                              Text('Dec 13,2023 9:30 AM',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: 10)
          ],
        ),
      ),
    );
  }

  Widget listOfTenders() {
    return const Row(
      children: [],
    );
  }

  Widget search() {
    return const Row(
      children: [],
    );
  }
}
