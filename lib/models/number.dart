import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String? image;
  final String gerName;
  final String engName;
  const ItemModel(
      {required this.sound,
      this.image,
      required this.gerName,
      required this.engName});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}