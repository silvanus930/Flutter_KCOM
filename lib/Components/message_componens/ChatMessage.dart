enum ChatMessageType { text, audio, image, video }

enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String username;
  final String message;
  final String time;
  final String date;

  ChatMessage({
    required this.username,
    required this.message,
    required this.date,
    required this.time,
  });
}

List demeChatMessages = [
  ChatMessage(
      username: "Hamaya Toyo",
      date: "Wednesday 5 August",
      time: "12 : 35 AM",
      message: "Hello?"),
  ChatMessage(
      username: "Kassmi Toyo",
      date: "Wednesday 25 August",
      time: "11:35 AM",
      message: "My name is HamayaToyo"),
  ChatMessage(
      username: "Silvanue HAmer",
      date: "Wednesday 5 August",
      time: "6:30 PM",
      message: "what are you doing now? \n I am doing develop Flutter app "),
  ChatMessage(
      username: "Six Bee",
      date: "Wednesday 10 January",
      time: "3:35 PM",
      message: "Are you ok?"),
];
