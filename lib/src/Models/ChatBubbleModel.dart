class ChatBubbleModel {
  final bool mine;
  final bool isMine;
  final String message;

  ChatBubbleModel(this.mine, this.isMine, this.message);
}

List<ChatBubbleModel> messages = [
  ChatBubbleModel(false, false, "Hi"),
  ChatBubbleModel(false, true, "You always working. It’s 4 in the morning."),
  ChatBubbleModel(true, false, "Hey Kerry"),
  ChatBubbleModel(true, true, "You know legends sleep after 5 in morning."),
  ChatBubbleModel(false, false, "Who is legend here?"),
  ChatBubbleModel(false, true, "?"),
];
