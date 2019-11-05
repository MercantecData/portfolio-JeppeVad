using System;
using System.Collections.Generic;
using System.Text;

namespace blib_opgave
{
    class BookAvailable
    {
        public bool available;
        public uint returnTime;

        public BookAvailable(bool available, uint returnTime)
        {
            this.available = available;
            this.returnTime = returnTime;
        }




    }
}
