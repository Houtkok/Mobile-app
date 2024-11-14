import 'package:flutter/material.dart';
import 'package:my_app/W6/EXERCISE-2/model/profile_tile_model.dart';
 
ProfileData ronanProfile = ProfileData(
    name: "Sam Kokhout",
    position: "Flutter Developer",
    avatarUrl: 'assets/w4-s2/bird.jpg',
    tiles: [
      TileData( icon: Icons.phone, title: "Phone Number", value: "+123 123 1234"),
      TileData(icon: Icons.location_on, title: "Address", value: "Cambodia 123"),
      TileData(icon: Icons.email, title: "Mail", value: "kokhout.sam@cadt.edu.kh"),
    ]);
