using System;
using System.Collections.Generic;
using System.Text;

namespace blib_opgave
{
    class returnBook
    {
        public string bookName;
        public uint timeRented;

        public returnBook(string bookName, uint timeRented)
        {
            this.bookName = bookName;
            this.timeRented = timeRented;
        }
        public void Availableto()
        {

        }
    }
}
