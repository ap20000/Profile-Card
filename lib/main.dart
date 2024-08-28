import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 255, 255),
          brightness: Brightness.light,
          primary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Card'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/abhishek.jpeg'),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Abhishek Patel',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  '9821805722',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Passionate developer with experience in mobile applications. Loves coding and coffee!',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileDetailsScreen(),
                      ),
                    );
                  },
                  child: const Text('View More'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Details'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/abhishek.jpeg'),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text(
            'Abhishek Patel',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Flutter Developer  in building cross-platform mobile applications. Proficient in Dart, Firebase, and RESTful APIs.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.work),
            title: Text('Current Position'),
            subtitle: Text('Intern Flutter Developer at Blue fox Company'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.school),
            title: Text('Education'),
            subtitle: Text('Bachelor of Technology in Computer Science'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Location'),
            subtitle: Text('Imadol, Lalitpur'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.mail),
            title: Text('Email'),
            subtitle: Text('abishekpatel46@gmail.com'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            subtitle: Text('9821805722'),
          ),
        ],
      ),
    );
  }
}
