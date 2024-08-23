typedef BookFilter = bool Function(Book book);

class Book{
  late String title;
  late String author;
  late int yearPublished;
  late bool isCheckedOut;
  
  Book(this.title, this.author, this.yearPublished, this.isCheckedOut);
  
  Book.unknownAuthor(this.title,this.yearPublished) {
    author = "Unknown";
    isCheckedOut = false;
  }

  Book.fromMap(Map<String, dynamic> map) {
    title = map['title'];
    author = map['author'];
    yearPublished = map['yearPublished'];
    isCheckedOut = map['isCheckedOut'];
  }
  
  filterBooks(List<Book> books, BookFilter bookFilter){
    return books.where((book) => bookFilter(book)).toList();
  }

  int countCheckedOutBooks(List<Book> books) {
    List<int> checkedOutBooks = books.map((book) => book.isCheckedOut ? 1 : 0).toList();
    return checkedOutBooks.reduce((value, element) =>  value + element);
  }

  totalBooksPublishedAfter(List<Book> books, int year) {
    return books.fold(0, (count, book) => book.yearPublished > year ? count + 1 : count);
  }
  booksBySpecificAuthor(List<Book> books, String author) {
    return books.where((book) => book.author == author).toList();
  }

  createListOfBooksTitles(List<Book> books){
    return books.map((book) => book.title).toList();
  }

  printBooks(List<Book> books) {
    books.forEach((book) => print(book.title + book.author + book.yearPublished.toString() + book.isCheckedOut.toString()));
  }

  getBookStatus(Book book){
    switch(book.isCheckedOut){
      case true:
        return "Checked Out";
      case false:
        return "Available";
    }
  }

  




}
