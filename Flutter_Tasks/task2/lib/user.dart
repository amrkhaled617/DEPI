
class User{
  String profileName;
  String name;
  String image;
  String location;
  int shots;
  int collections;
  int following;
  int followers;

  User({
    required this.profileName,
    required this.name,
    required this.image,
    required this.location,
    required this.shots,
    required this.collections,
    required this.following,
    required this.followers,
  });
}