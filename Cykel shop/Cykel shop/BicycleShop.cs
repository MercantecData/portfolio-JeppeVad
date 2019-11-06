using System;
using System.Collections.Generic;
using System.Text;

namespace Cykel_shop
{
    class BicycleShop
    {
        public string name;
        public List<Bicycle> bicycles = new List<Bicycle>();

        public BicycleShop(string name)
        {
            this.name = name;
        }
        public void brandDisplay()
        {
            for (int i = 0; i < bicycles.Count; i++)
            {
                Console.WriteLine(bicycles[i].brand);
                
            }
        }

        
        
        
    }
}
