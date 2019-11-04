using System;
using System.Collections.Generic;
using System.Text;

namespace blib_opgave
{
    class BookAvailable
    {
        public bool available;
        public int returnTime;

        public BookAvailable(bool available, int returnTime)
        {
            this.available = available;
            this.returnTime = returnTime;
        }
    }
}
