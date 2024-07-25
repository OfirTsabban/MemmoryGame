using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace AppZicaron
{
    public class IndexableButton:ImageButton
    {
        private Position position;
        private string name;
        private Bitmap openImage;
        private static Bitmap closeImage;
        private bool faceUp;
        //private static LinearLayout.LayoutParams layoutParams;
        private bool active;
        public IndexableButton(Context context ,int row, int col ,string name, LinearLayout.LayoutParams layoutParams) :base(context)
        {
            this.position = new Position(row, col);
            this.faceUp = false;
            this.active = true;
            this.name = name;
            this.LayoutParameters = layoutParams;
            this.openImage = BitmapFactory.DecodeStream(Context.Assets.Open(this.name));
            //this.SetImageBitmap(this.openImage);
            IndexableButton.closeImage = BitmapFactory.DecodeStream(Context.Assets.Open("faceDownCard.jpg"));
            this.SetImageBitmap(IndexableButton.closeImage);
            this.SetBackgroundColor(Color.Transparent);
            this.SetScaleType(ScaleType.FitXy);
        }
        //public static void SetButtonLayoutParams(LinearLayout.LayoutParams layoutParams)
        //{
        //    IndexableButton.layoutParams = layoutParams;
        //}
        //public static LinearLayout.LayoutParams GetButtonLayoutParams()
        //{
        //    return IndexableButton.layoutParams;
        //}
        public bool IsMatched(IndexableButton other)
        {
            if(this.name==other.name)
            {
                return true;
            }
            return false;
        }
        public override bool Equals(object obj)
        {
            return this.position.Equals(((IndexableButton)obj).position);
        }
        public Position GetPosition()
        {
            return this.position;
        }
        public void Flip()
        {
            if (this.faceUp==true)
            {
                this.SetImageBitmap(IndexableButton.closeImage);
                this.faceUp = false;
                this.SetScaleType(ScaleType.FitXy);
            }
            else
            {
                this.SetImageBitmap(this.openImage);
                this.faceUp = true;
                this.SetScaleType(ScaleType.FitCenter);
            }
        }
    }
}