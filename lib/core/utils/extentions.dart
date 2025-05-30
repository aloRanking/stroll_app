extension ImagePath on String {
  String get png => 'assets/images/$this.png';
  String get jpg => 'assets/images/$this.jpg';
  String get gif => 'assets/images/$this.gif';
  String get svg => 'assets/images/svg/$this.svg';

  String get iconpng => 'assets/icons/$this.png';
  String get iconjpg => 'assets/icons/$this.jpg';
  String get icongif => 'assets/icons/$this.gif';
  String get iconsvg => 'assets/icons/$this.svg';
}