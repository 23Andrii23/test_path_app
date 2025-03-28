import 'package:flutter/material.dart';
import 'package:webspark_test/models/custom_point.model.dart';
import 'package:webspark_test/models/main_response.model.dart';
import 'package:webspark_test/screens/preview_screen/preview_screen.dart';

class ResultListScreen extends StatelessWidget {
  final MainResponse mainResponse;
  final Map<String, List<CustomPoint>>? paths;

  const ResultListScreen({
    required this.mainResponse,
    required this.paths,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result list screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemCount: mainResponse.data.length,
        itemBuilder: (context, index) {
          final item = mainResponse.data[index];
          final path = paths?[item.id];

          String pathRepresentation = 'No path found';
          if (path != null && path.isNotEmpty) {
            pathRepresentation =
                path.map((point) => '(${point.x},${point.y})').join('->');
          }

          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PreviewScreen(
                    mainResponse: mainResponse,
                    pathString: pathRepresentation,
                    pathId: item.id,
                  ),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
              ),
              child: Center(
                child: Text(
                  pathRepresentation,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
