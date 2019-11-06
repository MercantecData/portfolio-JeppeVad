using System;
using System.Collections.Generic;
using System.Text;

namespace Cykel_shop
{
    class Bicycle
    {
        
        public string brand;
        public string color;
        public int wheelSize;
        public double price;

        public Bicycle(string brand, string color, int wheelSize, double price)
        {
            this.brand = brand;
            this.color = color;
            this.wheelSize = wheelSize;
            this.price = price;
        }
    }
}
