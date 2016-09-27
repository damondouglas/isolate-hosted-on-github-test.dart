import 'dart:isolate';

main(List<String> args, SendPort replyTo) {
  var reply = new String.fromCharCodes(args[0].codeUnits.reversed);
  replyTo.send("Hi I'm Hosted: " + reply);
}
