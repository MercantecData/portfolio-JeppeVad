using System;
using System.Collections.Generic;

namespace blib_opgave
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to the library");
            List<Books> BookList = new List<Books>();
            BookList.Add(new Books("Cartel", "John Doe", 244, new BookAvailable(true, 3)));
            BookList.Add(new Books("Sommer of 99", "Jane Doe", 182, new BookAvailable(true, 3)));
            BookList.Add(new Books("Carl Smart", "Andersen", 124, new BookAvailable(true, 3)));
            
            
        }
    }
}
