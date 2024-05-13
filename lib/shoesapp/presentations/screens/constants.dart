// import 'dart:math';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:faker/faker.dart';
// import 'package:shoesapp/core/models/shoesmodel.dart';
// import 'package:shoesapp/core/services/meta.dart';
// import 'package:shoesapp/shoesapp/presentations/screens/review/model/reviewmodels.dart';
// import 'package:shoesapp/shoesapp/presentations/screens/homedisplay/shoesgridview.dart';

// const brand = ['Nike', 'Jordan', 'Adidas', 'Reebok', 'Puma', 'Vans'];

// const imageURL = [
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand3.png?alt=media&token=ae3e3a5f-358a-475b-a38b-203d7b687b4a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand3.png?alt=media&token=fbf560df-1263-4847-aa95-81d86505882e'
//       'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand1.png?alt=media&token=2c827d47-4e69-459a-a7aa-9edeef7b222b',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand2.png?alt=media&token=bde2bd34-277a-4673-a46a-79d11e8c372d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand4.png?alt=media&token=78802029-a790-4f23-9db4-fac8806abe9d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand5.png?alt=media&token=d4d04f10-94c0-4d9c-beba-196f31f8ea5c',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand1.png?alt=media&token=7a2c9a8b-6a68-4747-ba49-ca511d87c4ab',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand2.png?alt=media&token=1758b11d-f578-4b4d-9409-d6899e177ce4',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand3.png?alt=media&token=79fdfa4f-2faf-46d6-ad5a-b300e4c7a12a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand1.png?alt=media&token=60ff4c61-c3df-495f-9c74-33223aff8b18',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand2.png?alt=media&token=c70d1618-8252-482e-b0a2-a546638f65a0',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand1.png?alt=media&token=87756113-b878-44d2-8fca-a857fbb103d2',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand2.png?alt=media&token=6bc9daf4-ea1f-4fec-afad-c4d44b4fd39b',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand3.png?alt=media&token=ae3e3a5f-358a-475b-a38b-203d7b687b4a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand3.png?alt=media&token=fbf560df-1263-4847-aa95-81d86505882e'
//       'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand2.png?alt=media&token=bde2bd34-277a-4673-a46a-79d11e8c372d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand4.png?alt=media&token=78802029-a790-4f23-9db4-fac8806abe9d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand5.png?alt=media&token=d4d04f10-94c0-4d9c-beba-196f31f8ea5c',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand1.png?alt=media&token=7a2c9a8b-6a68-4747-ba49-ca511d87c4ab',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand2.png?alt=media&token=1758b11d-f578-4b4d-9409-d6899e177ce4',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand3.png?alt=media&token=79fdfa4f-2faf-46d6-ad5a-b300e4c7a12a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand1.png?alt=media&token=60ff4c61-c3df-495f-9c74-33223aff8b18',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand2.png?alt=media&token=c70d1618-8252-482e-b0a2-a546638f65a0',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand1.png?alt=media&token=87756113-b878-44d2-8fca-a857fbb103d2',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand2.png?alt=media&token=6bc9daf4-ea1f-4fec-afad-c4d44b4fd39b',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand3.png?alt=media&token=ae3e3a5f-358a-475b-a38b-203d7b687b4a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand3.png?alt=media&token=fbf560df-1263-4847-aa95-81d86505882e'
//       'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand1.png?alt=media&token=2c827d47-4e69-459a-a7aa-9edeef7b222b',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand2.png?alt=media&token=bde2bd34-277a-4673-a46a-79d11e8c372d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand4.png?alt=media&token=78802029-a790-4f23-9db4-fac8806abe9d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand5.png?alt=media&token=d4d04f10-94c0-4d9c-beba-196f31f8ea5c',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand1.png?alt=media&token=7a2c9a8b-6a68-4747-ba49-ca511d87c4ab',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand2.png?alt=media&token=1758b11d-f578-4b4d-9409-d6899e177ce4',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand3.png?alt=media&token=79fdfa4f-2faf-46d6-ad5a-b300e4c7a12a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand1.png?alt=media&token=60ff4c61-c3df-495f-9c74-33223aff8b18',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand2.png?alt=media&token=c70d1618-8252-482e-b0a2-a546638f65a0',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand1.png?alt=media&token=87756113-b878-44d2-8fca-a857fbb103d2',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand2.png?alt=media&token=6bc9daf4-ea1f-4fec-afad-c4d44b4fd39b',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand1.png?alt=media&token=2c827d47-4e69-459a-a7aa-9edeef7b222b',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand2.png?alt=media&token=bde2bd34-277a-4673-a46a-79d11e8c372d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand4.png?alt=media&token=78802029-a790-4f23-9db4-fac8806abe9d',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FNike%2Fnikebrand5.png?alt=media&token=d4d04f10-94c0-4d9c-beba-196f31f8ea5c',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand1.png?alt=media&token=7a2c9a8b-6a68-4747-ba49-ca511d87c4ab',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand2.png?alt=media&token=1758b11d-f578-4b4d-9409-d6899e177ce4',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FAdidas%2Fadidasbrand3.png?alt=media&token=79fdfa4f-2faf-46d6-ad5a-b300e4c7a12a',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand1.png?alt=media&token=60ff4c61-c3df-495f-9c74-33223aff8b18',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FJordan%2Fjordanbrand2.png?alt=media&token=c70d1618-8252-482e-b0a2-a546638f65a0',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand1.png?alt=media&token=87756113-b878-44d2-8fca-a857fbb103d2',
//   'https://firebasestorage.googleapis.com/v0/b/shoedealer-1724b.appspot.com/o/shoes%2FReebok%2Freebokbrand2.png?alt=media&token=6bc9daf4-ea1f-4fec-afad-c4d44b4fd39b',
// ];

// generateFakeShoesData() async {
//   final random = Random();
//   final docUser = FirebaseFirestore.instance.collection("Shoes");
//   for (var i = 0; i < 200; i++) {
//     int randomIndex = faker.randomGenerator.integer(brand.length);
//     final randomBrand = brand[randomIndex];
//     final randomDouble = random.nextDouble() * 5;
//     randomIndex = faker.randomGenerator.integer(imageURL.length);
//     final image = imageURL[randomIndex];
//     final shoes = Shoes(
//         id: faker.guid.guid(),
//         brand: randomBrand,
//         name: faker.person.name(),
//         discription: faker.lorem.sentences(5).join('. '),
//         imageUrl: image,
//         price: double.parse((random.nextDouble() * 5000).toStringAsFixed(2)),
//         noOfRating: faker.randomGenerator.integer(5000).toString(),
//         rating: double.parse(randomDouble.toStringAsFixed(1)));
//     await docUser.doc(shoes.id).set(shoes.toJson());
//   }
// }

// generateFakeReview() async {
//   final random = Random();
//   final docUser = FirebaseFirestore.instance.collection("reviews");
//   for (var i in shoesId) {
//     final doc = docUser.doc("AllReviews").collection(i);
//     for (var j = 0; j < 25; j++) {
//       final randomDouble = random.nextDouble() * 5;
//       final review = Review(
//           id: faker.guid.guid(),
//           imageUrl: faker.image.image(keywords: ['people'], random: true),
//           profileName: faker.person.name(),
//           rate: double.parse(randomDouble.toStringAsFixed(1)),
//           discription: faker.lorem.sentences(2).join('. '),
//           dateTime:
//               faker.date.dateTimeBetween(DateTime(2017, 9, 7), DateTime.now()));
//       try {
//         await doc.doc(review.id).set(review.toJson());
//       } catch (e) {
//         Meta.showToast(e.toString());
//       }
//     }
//   }
// }

// updateGender() async {
//   final random = Random();
//   final docShoes = FirebaseFirestore.instance.collection("Shoes");
//   for (var i in shoesId) {
//     final index = random.nextInt(3);
//     await docShoes.doc(i).update({'gender': sex[index]});
//     print("HI $i ${sex[index]}");
//   }
// }

// final sex = ["Man", "Woman", 'Unisex'];
