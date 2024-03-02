import 'package:flutter/material.dart';


class CustomBottomAppBar extends StatelessWidget {
  final int selectedIndex; // 0 for Home, 1 for Marketplace
  final Function(int) onItemSelected;

  const CustomBottomAppBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white, // Set the BottomAppBar color to white
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomAppBarItem(
            icon: Icons.home,
            label: 'Home',
            index: 0,
          ),
          _buildBottomAppBarItem(
            icon: Icons.store,
            label: 'Marketplace',
            index: 1,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomAppBarItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return Expanded(
      child: SizedBox(
        height: 60, // Set a fixed height for the icon and text
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onItemSelected(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, color: selectedIndex == index ? Colors.purple : Colors.grey),
                Text(label, style: TextStyle(color: selectedIndex == index ? Colors.purple : Colors.grey, fontSize: 12)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}