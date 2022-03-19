// class ProductModel {
//   String title;
//   String description;
//   String price;
//   String imageLink;

//   ProductModel({
//     required this.description,
//     required this.title,
//     required this.price,
//     required this.imageLink,
//   });
// }

// List<ProductModel> products = [
//   ProductModel(
//       description:
//           "The lorem ipsum is a placeholder text used in publishing and graphic design. This filler text is a short paragraph that contains all the letters of the alphabet. The characters are spread out evenly so that the reader's attention is focused on the layout of the text instead of its content",
//       title: "Title",
//       price: "\$20",
//       imageLink:
//           "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80")
// ];

class Task {
  String title;
  String description;

  Task({required this.title, required this.description});
}

// List<Todo> tasks = [

//   Todo(title: "Get Eggs", description: "From XYZ milk shop"),
//   Todo(title: "Kidnap", description: "Jo assignment na kry"),
  
  
// ];


List<Task> tasks = [];