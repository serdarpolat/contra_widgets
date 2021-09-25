class ChatItemModel {
  final String sender;
  final String message;
  final String time;
  final int unreadcount;

  ChatItemModel(this.sender, this.message, this.time, this.unreadcount);
}

List<ChatItemModel> chatItems = [
  ChatItemModel("Charli", "Please have a look.", "2:16am", 2),
  ChatItemModel("Sheldon", "There is no alcohal to the drink", "3:54am", 0),
  ChatItemModel("Kerry", "You always working, it's 4:44am.", "27 mar", 0),
  ChatItemModel("Leonard", "Why should we talk to teacher?", "12 feb", 0),
  ChatItemModel("Garry", "Can you reply last messages?", "1 jan", 1),
];
