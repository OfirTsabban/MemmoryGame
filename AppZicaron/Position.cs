using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace AppZicaron
{
    public class Position : Object
    {
        private int row;
        private int col;
        public  Position (int row, int col):base()
        {
            this.row = row;
            this.col = col;
        }
        public override bool Equals(object other)
        {
            return (this.row ==((Position) other).row) && (this.col ==((Position) other).col);
        }
        //public bool SamePlace(Position other)
        //{
        //    return (this.row == other.row) && (this.col == other.col);
        //}
        public int GetCol()
        {
            return this.col;
        }
        public int GetRow()
        {
            return this.row;
        }
    }
}