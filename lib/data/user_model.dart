enum Gender { male, female }

class UserModel {
  final String displayName;
  final String username;
  final Gender gender;
  final String profilePhoto;

  UserModel({
    required this.displayName,
    required this.username,
    required this.gender,
    required this.profilePhoto,
  });
}

List<UserModel> userList = [
  UserModel(
    displayName: 'Srushti Gajera',
    username: 'shrush_.s1',
    gender: Gender.female,
    profilePhoto: 'assets/girl.png',
  ),
  UserModel(
    displayName: 'Harsh Patel',
    username: 'harrzz.zyy',
    gender: Gender.male,
    profilePhoto: 'assets/boy.png',
  ),
  UserModel(
    displayName: 'Kunj Patel',
    username: '_kunj_0605_',
    gender: Gender.male,
    profilePhoto: 'assets/boy.png',
  ),
  UserModel(
    displayName: 'Rekha Pachani',
    username: 'rekha_note10pro',
    gender: Gender.male,
    profilePhoto: 'assets/boy.png',
  ),
  UserModel(
    displayName: 'Ayush Panchal',
    username: 'ayush_.a1',
    gender: Gender.male,
    profilePhoto: 'assets/boy.png',
  ),
];
