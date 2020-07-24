var list = [12, 43, 55, 67, 18];

main(List<String> args) {
  for (var i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0)
      print("${list[i]} is a multiple of 2");
    else
      print('${list[i]} is not a mulptile of 2');
  }
  print(list);
}
