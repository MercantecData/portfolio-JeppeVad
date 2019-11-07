using System;

namespace Tæller
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Enter number: ");
            int num = Int32.Parse(Console.ReadLine());
            int i = 1;
            while (num >= i)
            {
                Console.WriteLine(i);
                i++;
            }

        }
    }
}
