String textFunction(String text) {
  int k = 0;
  bool x = true;
  for (int i = 0; i < text.length; i++) {
    if (text[i] == ' ') {
      x = false;
      k = i;
    } else {
      break;
    }
  }
  return text.substring(x ? k : k + 1, text.length);
}
