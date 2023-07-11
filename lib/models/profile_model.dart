class ProfileModels {
  final String name;
  final String imagePath;
  final String email;
  final String description;
  final String? phone;
  ProfileModels({
    required this.name,
    required this.imagePath,
    required this.email,
    required this.description,
    this.phone,
  });

}
ProfileModels profile = ProfileModels(
  name: "Marvis Ighedosa",
  imagePath: "assets/images/avatar_image.png",
  email: "dosamarvis@gmail.com",
  phone: "+234 9011039271",
  description: "No 15 uti street off ovie palace road effurun delta state",
);

