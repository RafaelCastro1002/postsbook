String getInitials(String bankAccountName) {
  List<String> names = bankAccountName.split(" ");
  String initials = "";
  int numWords = 2;

  if (numWords < names.length) {
    numWords = names.length;
  }
  for (var i = 0; i < numWords; i++) {
    initials += '${names[i][0]}';
  }
  return '${initials[0]}${initials[1]}';
}
