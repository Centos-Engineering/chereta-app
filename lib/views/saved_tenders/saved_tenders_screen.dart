import 'package:auction_app/navigation/drawer.dart';
import 'package:auction_app/views/home_page/details_page/details_screen.dart';
import 'package:flutter/material.dart';

class SavedTendersScreen extends StatefulWidget {
  const SavedTendersScreen({super.key});

  @override
  State<SavedTendersScreen> createState() => _SavedTendersScreenState();
}

class _SavedTendersScreenState extends State<SavedTendersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saved tenders',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        // ignore: prefer_const_constructors
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
}
