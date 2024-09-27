class QuizeModel {

 String question;
 List<String >options;
 String answer;

QuizeModel({
required this.question,required this.options,required this.answer
});}

List<QuizeModel>list=[
QuizeModel(   question: 'What is the capital of Palestine?',
      options: ['Ramallah', 'Jerusalem', 'Nablus', 'Tulkarm'],
      answer: 'Jerusalem', ),
QuizeModel(   question: 'What is the capital of France?',
      options: ['Paris', 'Lyon', 'Marseille', 'Toulouse'],
      answer: 'Paris',),
QuizeModel(   question: 'What is the capital of Germany?',
      options:['Berlin', 'Hamburg', 'Munich', 'Cologne'],
      answer: 'Berlin', )
];










