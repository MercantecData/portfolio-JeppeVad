using System;
using System.Collections.Generic;

namespace Cykel_shop
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Bicycle> bicycles = new List<Bicycle>();
            BicycleShop objekt = new BicycleShop("Carls butik");
            bicycles.Add(new Bicycle { brand = "f", color = "red", wheelSize = 13, price = 999.99});
            objekt.brandDisplay();
        }
    }
}
