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
            BookList.Add(new Books("Cartel", "John Doe", 244, true));
            BookList.Add(new Books("Sommer of 99", "Jane Doe", 182, true));
            BookList.Add(new Books("Carl Smart", "Andersen", 124, true));
            Console.WriteLine("Book list!");
            Console.WriteLine("[1]" + BookList[0].bookName + " " + BookList[0].author);
            Console.WriteLine("[2]" + BookList[1].bookName + " " + BookList[1].author);
            Console.WriteLine("[3]" + BookList[2].bookName + " " + BookList[2].author);
            Console.WriteLine("=========================================================");
            Console.WriteLine("Rent book wich 1, 2 ,3?");

            string numbr = Console.ReadLine();
            if (numbr == "1")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                Console.Write("Enter age: ");
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (BookList[0].available == true)
                {
                    Console.WriteLine(n + "is " + p + " and rented the book!");
                    BookList[0].available = false;
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

                if (BookList[1].available == true)
                {
                    Console.WriteLine(n + "is " + p + " and rented the book!"); 
                    BookList[1].available = false;
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
                if (BookList[2].available == true)
                {
                    Console.WriteLine(n + "is " + p + " and rented the book!");
                    BookList[2].available = false;
                }
                else
                {
                    Console.WriteLine("Book already rented out");
                }
            }
            Console.Clear();
            Console.WriteLine("Return book! wich would you like to return? 1, 2 or 3 ");
            Console.WriteLine("Book list!");
            Console.WriteLine("[1]" + BookList[0].bookName + " " + BookList[0].author);
            Console.WriteLine("[2]" + BookList[1].bookName + " " + BookList[1].author);
            Console.WriteLine("[3]" + BookList[2].bookName + " " + BookList[2].author);
            Console.WriteLine("=========================================================");
            string numb = Console.ReadLine();
            if(numb == "1")
            {
                Console.Write("Enter name: ");
                ADD n = new ADD(Console.ReadLine());
                ADD p = new ADD(Int32.Parse(Console.ReadLine()));
                if (BookList[0].available == false)
                {
                    BookList[0].available = true;
                    Console.WriteLine(n + "is " + p + " and returned the book!" + BookList[0].bookName);
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
                if (BookList[1].available == false)
                {
                    BookList[1].available = true;
                    Console.WriteLine(n + "is " + p + " and returned the book!" + BookList[1].bookName);
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
                if (BookList[2].available == false)
                {
                    BookList[2].available = true;
                    Console.WriteLine(n + "is " + p + " and returnd the book!" + BookList[2].bookName);
                }
                else
                {
                    Console.WriteLine("Book alrdy returned");
                }
            }
            
        }
        
    }
}
