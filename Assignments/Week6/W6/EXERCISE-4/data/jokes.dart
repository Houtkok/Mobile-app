import 'package:my_app/W6/EXERCISE-4/model/jokes_model.dart';

List<Joke> joke = List<Joke>.generate(
  20,
  (i) => Joke(title: 'Joke ${i + 1}', description: 'This is the Joke ${i + 1}')
);