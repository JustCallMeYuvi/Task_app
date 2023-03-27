import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:task_app/model/music.dart';
import 'package:http/http.dart' as http;

class MusicListScreen extends StatefulWidget {
  const MusicListScreen({super.key});

  @override
  State<MusicListScreen> createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.queue_music,
                  color: Colors.deepOrangeAccent,
                ))
          ],
          title: const Text(
            'Here the Music List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Card(
          child: FutureBuilder<Music>(
            future: getMusics(),
            builder: (context, AsyncSnapshot<Music> snapshot) {
              List<Result> results = snapshot.data?.results ?? [];
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            results[index].artistName ?? '',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(results[index].collectionName ?? ''),
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFj-lhPKSNTrA9RZWtYDaE8A_UsQl8IQZHfLORWDUFEQ&usqp=CAU&ec=48600112'),
                            radius: 30,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        const Divider(
                          thickness: 0.3,
                          color: Colors.black,
                        ),
                      ],
                    );
                  },
                  itemCount: results.length,
                );
              }
            },
          ),
        ));
  }

  Future<Music> getMusics() async {
    var getData =
        await http.get(Uri.parse('https://itunes.apple.com/search?term=John'));
    print(getData.statusCode.toString());

    return musicFromJson(getData.body);
  }
}
