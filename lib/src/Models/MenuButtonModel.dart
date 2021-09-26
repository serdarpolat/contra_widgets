class MenuButtonModel {
  final int id;
  final String title;

  MenuButtonModel(this.id, this.title);
}

List<MenuButtonModel> menuItems = [
  MenuButtonModel(0, "Home"),
  MenuButtonModel(1, "Profile"),
  MenuButtonModel(2, "History"),
  MenuButtonModel(3, "Settings"),
  MenuButtonModel(4, "About"),
];
