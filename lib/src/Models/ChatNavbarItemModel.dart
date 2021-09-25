class ChatNavbarItemModel {
  final int id;
  final String name;

  ChatNavbarItemModel(this.id, this.name);
}

List<ChatNavbarItemModel> chatNavbarItems = [
  ChatNavbarItemModel(0, "Home"),
  ChatNavbarItemModel(1, "Search"),
  ChatNavbarItemModel(2, "Chat"),
  ChatNavbarItemModel(3, "About"),
];
