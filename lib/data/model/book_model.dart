class BookModel {
  String bookCover;
  String bookTitle;
  String bookAuthor;
  String bookDescription;
  double bookRating;
  String bookLanguage;
  int bookPages;

  BookModel({
    required this.bookCover,
    required this.bookTitle,
    required this.bookAuthor,
    required this.bookDescription,
    required this.bookRating,
    required this.bookLanguage,
    required this.bookPages,
  });
}

var bookModelList = [
  BookModel(
      bookCover: 'assets/images/enchantment.png',
      bookTitle: 'Enchantment',
      bookAuthor: 'Guy Kawasaki',
      bookDescription:
          "Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships. It con­verts hostility into civility and civility into affinity. It changes skeptics and cynics into believers and the undecided into the loyal.",
      bookRating: 3.7,
      bookLanguage: "ENG",
      bookPages: 211),
  BookModel(
      bookCover: 'assets/images/baskervilles_hound.png',
      bookTitle: 'The Hound of the Baskervilles',
      bookAuthor: 'Arthur Conan Doyle',
      bookDescription:
          "Sherlock Holmes and Dr. Watson are called to investigate the death of Sir Charles Baskerville, believed to be caused by a legendary supernatural hound. Set on the eerie moors, they uncover secrets and face the eerie mystery haunting the Baskerville estate.",
      bookRating: 4.2,
      bookLanguage: "ENG",
      bookPages: 256),
  BookModel(
      bookCover: 'assets/images/death_nile.png',
      bookTitle: 'Death on the Nile',
      bookAuthor: 'Agatha Christie',
      bookDescription:
          "Hercule Poirot's relaxing holiday aboard a luxury cruise down the Nile turns into a tense investigation when the wealthy heiress Linnet Doyle is found murdered. As tensions rise, Poirot must identify the killer hidden among the passengers before they strike again.",
      bookRating: 4.1,
      bookLanguage: "ENG",
      bookPages: 333),
  BookModel(
      bookCover: 'assets/images/house_onTheCliff.png',
      bookTitle: 'The House on the Cliff',
      bookAuthor: 'Franklin W. Dixon',
      bookDescription:
          "Frank and Joe Hardy, teenage detectives, investigate the mysterious activity at an old, abandoned house on the cliff. The case leads them into danger as they discover smugglers operating nearby, testing their bravery and detective skills in this exciting adventure.",
      bookRating: 3.9,
      bookLanguage: "ENG",
      bookPages: 192),
  BookModel(
      bookCover: 'assets/images/murder_festive.png',
      bookTitle: 'Murder Most Festive',
      bookAuthor: 'Ada Moncrieff',
      bookDescription:
          "A classic Christmas mystery set in 1930s England, where a family holiday gathering turns tragic with an unexpected murder. As secrets unravel, guests and family members fall under suspicion, adding suspense and intrigue to the festive season at the grand estate.",
      bookRating: 3.8,
      bookLanguage: "ENG",
      bookPages: 304),
  BookModel(
      bookCover: 'assets/images/orient_express.png',
      bookTitle: 'Murder on the Orient Express',
      bookAuthor: 'Agatha Christie',
      bookDescription:
          "When a murder is committed aboard the luxurious Orient Express train, Detective Poirot faces one of his most challenging cases. Trapped on the train with a myriad of suspects, he must unravel the clues to expose the killer before they reach their destination.",
      bookRating: 4.3,
      bookLanguage: "ENG",
      bookPages: 274),
  BookModel(
      bookCover: 'assets/images/secret_oldMill.png',
      bookTitle: 'The Secret of the Old Mill',
      bookAuthor: 'Franklin W. Dixon',
      bookDescription:
          "The Hardy brothers find themselves entangled in a dangerous mystery when they investigate suspicious activities at an old mill. Their search leads them to uncover a counterfeiting operation, testing their detective skills and determination to bring the criminals to justice.",
      bookRating: 3.8,
      bookLanguage: "ENG",
      bookPages: 192),
  BookModel(
      bookCover: 'assets/images/solomon_mines.png',
      bookTitle: 'King Solomon\'s Mines',
      bookAuthor: 'H. Rider Haggard',
      bookDescription:
          "Allan Quatermain, an adventurer and explorer, embarks on a dangerous journey across Africa in search of the legendary mines of King Solomon. Facing perilous landscapes, wild animals, and hostile tribes, Quatermain and his companions strive to unearth hidden treasures.",
      bookRating: 4.0,
      bookLanguage: "ENG",
      bookPages: 336),
  BookModel(
      bookCover: 'assets/images/study_inScarlet.png',
      bookTitle: 'A Study in Scarlet',
      bookAuthor: 'Arthur Conan Doyle',
      bookDescription:
          "The novel introduces Sherlock Holmes and Dr. Watson as they solve a perplexing murder case involving revenge and mystery. Following clues across London, Holmes applies his brilliant deductive skills to uncover the truth in the story that launched the Sherlock Holmes legacy.",
      bookRating: 4.1,
      bookLanguage: "ENG",
      bookPages: 188),
  BookModel(
      bookCover: 'assets/images/drucker_lectures.png',
      bookTitle: 'The Drucker Lectures',
      bookAuthor: 'Peter F. Drucker',
      bookDescription:
          "A collection of Peter Drucker's most influential lectures, providing insights into management, society, and the economy. These talks cover topics like leadership, social responsibility, and organizational effectiveness, offering timeless advice relevant to both new managers and experienced executives alike.",
      bookRating: 4.5,
      bookLanguage: "ENG",
      bookPages: 368),
  BookModel(
      bookCover: 'assets/images/grow_rich.png',
      bookTitle: 'Think and Grow Rich',
      bookAuthor: 'Napoleon Hill',
      bookDescription:
          "Napoleon Hill distills the wisdom of some of the world’s most successful individuals in this classic self-help book. He outlines principles for achieving financial success, personal growth, and wealth accumulation, providing a step-by-step guide to unlocking one’s potential.",
      bookRating: 4.3,
      bookLanguage: "ENG",
      bookPages: 320),
  BookModel(
      bookCover: 'assets/images/money_psychology.png',
      bookTitle: 'The Psychology of Money',
      bookAuthor: 'Morgan Housel',
      bookDescription:
          "Morgan Housel dives into the behavioral aspects of personal finance, showing how emotions and habits influence financial decisions. Through stories and case studies, he illustrates how we can make smarter, more sustainable financial choices that lead to true wealth and happiness.",
      bookRating: 4.4,
      bookLanguage: "ENG",
      bookPages: 256),
  BookModel(
      bookCover: 'assets/images/atomic_habits.png',
      bookTitle: 'Atomic Habits',
      bookAuthor: 'James Clear',
      bookDescription:
          "James Clear reveals how tiny changes can yield remarkable results in life and work. This book teaches readers how to build good habits, break bad ones, and leverage the power of compounding improvement, making personal transformation accessible through small, daily actions.",
      bookRating: 4.5,
      bookLanguage: "ENG",
      bookPages: 320),
];
