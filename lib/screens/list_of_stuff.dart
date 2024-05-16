import 'package:flutter/material.dart';
import '../controllers/stuff_controller.dart';
import '../models/stuff.dart';
import '../tiles/stuff_tile.dart'; // Custom ListTile for stuff items

class ListOfStuff extends StatefulWidget {
  const ListOfStuff({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListStuffScreenState createState() => _ListStuffScreenState();
}

class _ListStuffScreenState extends State<ListOfStuff> {
  final StuffController _stuffController = StuffController();
  List<Stuff> _stuff = [];
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchStuff();
  }

  void _fetchStuff() async {
    try {
      _stuff = await _stuffController.fetchStuff();
      setState(() => _isLoading = false);
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'Failed to load stuff: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Stuff')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : ListView.builder(
                  itemCount: _stuff.length,
                  itemBuilder: (context, index) {
                    return CustomListTile(
                      name: _stuff[index].name,
                      role: _stuff[index].role,
                      imageUrl: _stuff[index].imageUrl,
                    );
                  },
                ),
    );
  }
}
