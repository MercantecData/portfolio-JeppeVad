using System;
using System.Collections.Generic;

namespace blib_opgave
{
    class Program
    {
        static List<Books> bookList = new List<Books>();
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to the library");
            createBook("Navn", "author", 321, true);
            bookList.Add(new Books("Cartel", "John Doe", 244, true));
            bookList.Add(new Books("Sommer of 99", "Jane Doe", 182, true));
            bookList.Add(new Books("Carl Smart", "Andersen", 124, true));

            Console.WriteLine("Book list!");
            Console.WriteLine("[1]" + bookList[0].bookName + " " + bookList[0].author);
            Console.WriteLine("[2]" + bookList[1].bookName + " " + bookList[1].author);
            Console.WriteLine("[3]" + bookList[2].bookName + " " + bookList[2].author);
            Console.WriteLine("=========================================================");
            Console.WriteLine("Rent book wich 1, 2 ,3?");

            string numbr = Console.ReadLine();
            if (numbr == "1")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                Console.Write("Enter age: ");
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (bookList[0].available == true)
                {
                    Console.WriteLine(n + "is " + p + " and rented the book!");
                    bookList[0].available = false;
                }
                else
                {
                    Console.WriteLine("Book already rented out");
                }
            }
            else if (numbr == "2")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                Console.Write("Enter age: ");
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));

                if (bookList[1].available == true)
                {
                    Console.WriteLine(n + "is " + p + " and rented the book!"); 
                    bookList[1].available = false;
                }
                else
                {
                    Console.WriteLine("Book already rented out");
                }
            }
            else if (numbr == "3")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                Console.Write("Enter age: ");
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (bookList[2].available == true)
                {
                    Console.WriteLine(n + "is " + p + " and rented the book!");
                    bookList[2].available = false;
                }
                else
                {
                    Console.WriteLine("Book already rented out");
                }
            }
            Console.Clear();
            Console.WriteLine("Return book! wich would you like to return? 1, 2 or 3 ");
            Console.WriteLine("Book list!");
            Console.WriteLine("[1]" + bookList[0].bookName + " " + bookList[0].author);
            Console.WriteLine("[2]" + bookList[1].bookName + " " + bookList[1].author);
            Console.WriteLine("[3]" + bookList[2].bookName + " " + bookList[2].author);
            Console.WriteLine("=========================================================");
            string numb = Console.ReadLine();
            if(numb == "1")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (bookList[0].available == false)
                {
                    bookList[0].available = true;
                    Console.WriteLine(n + "is " + p + " and returned the book!" + bookList[0].bookName);
                }
                else
                {
                    Console.WriteLine("Book alrdy returned");
                }
            }
            else if (numb == "2")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (bookList[1].available == false)
                {
                    bookList[1].available = true;
                    Console.WriteLine(n + "is " + p + " and returned the book!" + bookList[1].bookName);
                }
                else
                {
                    Console.WriteLine("Book alrdy returned");
                }

            }
            else if (numb == "3")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (bookList[2].available == false)
                {
                    bookList[2].available = true;
                    Console.WriteLine(n + "is " + p + " and returnd the book!" + bookList[2].bookName);
                }
                else
                {
                    Console.WriteLine("Book alrdy returned");
                }
            }
            
        }
        public static void createBook(string bookname, string author, int pages, bool available)
        {
            bookList.Add(new Books(bookname, author, pages, available));
        }
    }
}
