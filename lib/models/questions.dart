class Question{
  late final int id, answer;
  late String question;
  late final List<String>options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sampleData = [
  {
    "id": 1,
    "question": "Who is Chelsea's number 7?",
    "options": ["Ngolo Kante", "Mason Mount", "Kai Havertz", "Timo Werner"],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Who is Chelsea's coach?",
    "options": ["Thomas Tuchel", "Jose Mourinho", "Pep Guardiola", "Diego Simeone"],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "Where is Chelsea located?",
    "options": ["Paris", "Manchester", "London", "Berlin"],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Who is Chelsea's number 11?",
    "options": ["Ngolo Kante", "Mason Mount", "Kai Havertz", "Timo Werner"],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "Who is Chelsea's number 19?",
    "options": ["Ngolo Kante", "Mason Mount", "Kai Havertz", "Timo Werner"],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Who is Chelsea's number 29?",
    "options": ["Ngolo Kante", "Mason Mount", "Kai Havertz", "Timo Werner"],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "What is Chelsea's Stadium called?",
    "options": ["Stamford Bridge", "Camp nou", "Wembley", "Old Trafford"],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "Who is Manchester United number 7?",
    "options": ["Edinson Cavani", "Marcus Rashford", "Cristiano Ronaldo", "Harry Maguire"],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question": "Who is Manchester United number 10?",
    "options": ["Edinson Cavani", "Marcus Rashford", "Cristiano Ronaldo", "Harry Maguire"],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question": "Who is Manchester United number 5?",
    "options": ["Edinson Cavani", "Marcus Rashford", "Cristiano Ronaldo", "Harry Maguire"],
    "answer_index": 3,
  },
  {
    "id": 11,
    "question": "Who has scored the fastest hattrick in Premier League?",
    "options": ["Mo Salah", "Sadio Mane", "Cristiano Ronaldo", "Thierry Henry"],
    "answer_index": 1,
  },
  {
    "id": 12,
    "question": "Who has made the most appearances in Premier League?",
    "options": ["Frank Lampard", "Gareth Barry", "Wayne Rooney", "Gary Neville"],
    "answer_index": 1,
  },
  {
    "id": 13,
    "question": "Who has scored the most goals in Premier League?",
    "options": ["Alan Shearer", "Wayne Rooney", "Sergio Aguero", "Thierry Henry"],
    "answer_index": 0,
  },
  {
    "id": 14,
    "question": "Who has the most clean sheets in Premier League?",
    "options": ["Peter Schmeichel", "Petr Cech", "David James", "David Seaman"],
    "answer_index": 1,
  },
  {
    "id": 15,
    "question": "Who won the inaugural premier league season?",
    "options": ["Arsenal", "Manchester United", "Liverpool", "Nottingham Forest"],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question": "When was the inaugural premier league season?",
    "options": ["1990/91", "1991/92", "1992/93", "1993/94"],
    "answer_index": 2,
  },
  {
    "id": 17,
    "question": "Who scored the fastest ever goal in a Premier League Match?",
    "options": ["Christian Eriksen", "Jamie Vardy", "Shane Long", "Troy Deeney"],
    "answer_index": 2,
  },
  {
    "id": 18,
    "question": "How many teams competed in the inaugural Premier League Season?",
    "options": ["18", "20", "22", "24"],
    "answer_index": 2,
  },
  {
    "id": 19,
    "question": "What team attained the least amount of points in a single premier league season?",
    "options": ["Derby County", "Sheffield Wednesday", "Sheffield United", "Reading"],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question": "How many times did Sir Alex Ferguson win the English Premier League?",
    "options": ["14", "13", "15", "12"],
    "answer_index": 1,
  },
];