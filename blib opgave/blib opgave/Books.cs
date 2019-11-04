using System;
using System.Collections.Generic;
using System.Text;

namespace blib_opgave
{
    class Books
    {
        public string bookName;
        public string author;
        public int pages;
        public BookAvailable available;

        

        public Books(string bookName, string author, int pages, BookAvailable available)
        {
            this.bookName = bookName;
            this.author = author;
            this.pages = pages;
            this.available = available;
        }
    }
}
