void main() {
  List conversations = [
    {
      "name_or_phone": "Tazo Eric",
      "avatar": 'https://1.pravatar.cc/3000',
      "datetime": "9/11/17",
      "unread_messages": 1,
      "last_message": "Hello Friend",
      "archived": false,
    },
    {
      "name_or_phone": "Collins Eric",
      "avatar": 'https://1.pravatar.cc/3000',
      "datetime": "29/11/17",
      "unread_messages": 4,
      "last_message": "Hi there. How are you?",
      "archived": false,
    },
    {
      "name_or_phone": "John Erasmus",
      "avatar": 'https://1.pravatar.cc/3000',
      "datetime": "30/11/17",
      "unread_messages": 2,
      "last_message": "All good",
      "archived": true,
    },
  ];

  Map<String, dynamic> map1 = {
    "name_or_phone": "Tazo Eric",
    "avatar": 'https://1.pravatar.cc/3000',
    "datetime": "9/11/17",
    "unread_messages": 1,
    "last_message": "Hello Friend",
    "archived": false,
  };

  Map<String, dynamic> map2 = {
    "name_or_phone": "Collins Eric",
    "avatar": 'https://1.pravatar.cc/3000',
    "datetime": "29/11/17",
    "unread_messages": 4,
    "last_message": "Hi there. How are you?",
    "archived": false,
  };

  Map<String, dynamic> map3 = {
    "name_or_phone": "John Erasmus",
    "avatar": 'https://1.pravatar.cc/3000',
    "datetime": "30/11/17",
    "unread_messages": 2,
    "last_message": "All good",
    "archived": true,
  };
//task 1
  var mainMap = {map1, map2, map3};
  print(mainMap);

  //task 2

  var unreadmgs =
      conversations.where((con) => con["unread_messages"] != 0).toList();

   print(unreadmgs);

  //task 3
  Map<String, dynamic> map4 = {
    "name_or_phone": "Franc Eric",
    "avatar": 'https://1.pravatar.cc/3000',
    "datetime": "1/03/2023",
    "unread_messages": 1,
    "last_message": "Greetings john",
    "archived": true,
  };
  conversations.add(map4);

  //task 4
  num count = 0;
  for (var i = 0; i < conversations.length; i++) {
    count = count + conversations[i]["unread_messages"];
  }
  print(count);
 

//task 5

  var filtercon = conversations
      .where((con) => con["name_or_phone"].contains('Eri'))
      .toList();
  print(filtercon);

  //task 6
  for (var i = 0; i < conversations.length; i++) {
    if (conversations[i]["name_or_phone"] == "John Erasmus") {
      conversations[i]["archived"] = false;
      print(conversations[i]["archived"]);
    }
  }

  //task 7
  conversations.remove(map4);
  print(conversations);

  //task 8
  for (var i = 0; i < conversations.length; i++) {
    if (conversations[i]["name_or_phone"] == "Collins Eric") {
      conversations[i]["name_or_phone"] = "Jonh doe";
      print(conversations[i]["name_or_phone"]);
    }
  }

  //task 9
  conversations.sort((a, b) {
    var sort = a["unread_messages"].compareTo(b["unread_messages"]);
    return sort;
  });

  conversations.sort((a, b) {
    var sort = a["name_or_phone"].compareTo(b["name_or_phone"]);
    return sort;
  });

//task 10

  var cons = conversations.map((e) => e["name_or_phone"]);
  print("i am the cons list \n");
  print(cons);
}
