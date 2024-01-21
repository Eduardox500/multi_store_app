import 'package:flutter/material.dart';

class CategoryTextWidget extends StatelessWidget {
  const CategoryTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> _categoryName = ['eggs', 'vegetable', 'meat', 'rice', 'milk'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'CATEGORIES',
            style: TextStyle(fontSize: 19),
          ),
        ),
        Container(
          height: 40,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categoryName.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ActionChip(
                        backgroundColor: Colors.yellow.shade600,
                        label: Text(_categoryName[index]),
                        onPressed: () {},
                      ),
                    );
                  },
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined))
            ],
          ),
        )
      ],
    );
  }
}
