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
        public bool available;



        public Books(string bookName, string author, int pages, bool available)
        {
            this.bookName = bookName;
            this.author = author;
            this.pages = pages;
            this.available = available;
        }
        
        
    }
}
