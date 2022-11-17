// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract MyContract {
    // Solidity lets you create your own types with struct
    struct Book {
        // it can have several attributes
        string title;
        string author;
        bool completed;
    }

    // Array of books
    Book[] public books;

    // Add new book to collection
    function add(string memory _title, string memory _author) public {
        // Book(_title, _author, false): creates a new book with the given attributes
        books.push(Book(_title, _author, false));
    }

    // Get book from the array
    function get(uint _index) public view returns(string memory title, string memory author, bool completed) {
        Book storage book = books[_index];
        return (book.title, book.author, book.completed);
    }

    // Update some attribute of specific book
    function complete(uint _index) public {
        Book storage book = books[_index];
        book.completed = true;
    }
}