class Quiz {
  Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

Quiz q1 = Quiz('Кыргызстанда 5 область барбы ?', false);
Quiz q2 = Quiz('Франция чемпион болобу ?', true);
Quiz q3 = Quiz('Евро Даниянын акча бирдигиби ?', false);
Quiz q4 = Quiz('Марокко чемпион болобу ?', true);
Quiz q5 = Quiz('Кенгуру Австралиянын улуттук жаныбарыбы ?', true);
Quiz q6 = Quiz('Шанхай Кытайдын борбор шаарыбы ?', false);
Quiz q7 = Quiz('Нил дуйнодогу эн узун дарыябы ?', true);
Quiz q8 = Quiz('Чынгыз Айтматов мугалимби ?', false);
Quiz q9 = Quiz('Флаттер менен операциондук система жазса болобу?', false);

List<Quiz> quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8, q9];
