import 'package:flutter/material.dart';
import 'package:ostello_apps/models/service_model.dart';

class ServiceTile extends StatelessWidget {
  final ServiceModel service;
  final VoidCallback onTap;

  const ServiceTile({
    Key? key,
    required this.service,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Menyediakan latar belakang berwarna putih
      child: InkWell(
        onTap: onTap,
        child: Padding(
          // Berikan jarak yang lebih luas ke tiap sisi untuk mencegah gambar mentok ke pinggir
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical:  1.0),
          child: Image.asset(
            service.imagePath,
            fit: BoxFit.contain, // Pastikan gambar pas dengan baik dalam wadahnya
          ),
        ),
      ),
    );
  }
}
