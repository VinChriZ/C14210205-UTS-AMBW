import 'package:flutter/material.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  final List<String> bookmarks = [];

  void _addBookmark(String item) {
    setState(() {
      bookmarks.add(item);
    });
  }

  void _removeBookmark(int index) {
    setState(() {
      bookmarks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmark'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _addBookmark('New Bookmark ${bookmarks.length}'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bookmarks[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _removeBookmark(index),
            ),
          );
        },
      ),
    );
  }
}
