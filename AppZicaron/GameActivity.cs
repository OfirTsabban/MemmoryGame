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
    [Activity(Label = "GameActivity")]
    public class GameActivity : Activity
    {
        private const int N = 4;
        private LinearLayout linearLayoutButtons;
        private IndexableButton[,] klafim;
        private int screenWidth;
        private int screenHeight;
        private IndexableButton firstPress,secondPress;
        private bool isBusy;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            this.SetContentView(Resource.Layout.game_layout);
            this.klafim = new IndexableButton[N, N];
            Point pointScreen = new Point();
            this.WindowManager.DefaultDisplay.GetSize(pointScreen);
            this.screenWidth = pointScreen.X;
            this.screenHeight = pointScreen.Y;
            this.linearLayoutButtons = (LinearLayout)this.FindViewById(Resource.Id.linearLayoutButtons);
            this.isBusy = false;
            this.BillyBoard();            
        }
        private void BillyBoard()
        {
            string[] mixedArray = this.GetMixedCardsNamesArray();
            int mixIndex = 0;
            //IndexableButton.SetButtonLayoutParams(new LinearLayout.LayoutParams(this.screenWidth / (N + 1), this.screenHeight / (N + 1)));
            //IndexableButton.GetButtonLayoutParams().SetMargins(5, 5, 5, 5);
            LinearLayout.LayoutParams layoutParams= new LinearLayout.LayoutParams(this.screenWidth / (N + 1), this.screenHeight / (N + 1));
            layoutParams.SetMargins(5, 5, 5, 5);
            for (int i = 0; i < N; i++)
            {
                LinearLayout linearLayoutRow = new LinearLayout(this);
                linearLayoutRow.Orientation = Orientation.Horizontal;
                linearLayoutRow.SetGravity(GravityFlags.Center);
                for (int j = 0; j < N; j++)
                {
                    this.klafim[i, j] = new IndexableButton(this, i, j, mixedArray[mixIndex],layoutParams);
                    mixIndex++;
                    this.klafim[i, j].Click += Button_Click; 
                    linearLayoutRow.AddView(this.klafim[i, j]);
                }
                this.linearLayoutButtons.AddView(linearLayoutRow);
            }
        }
        private void ToFlip()
        {
            if(this.secondPress == null || this.firstPress == null)
            {
                return;
            }
			if (!this.secondPress.IsMatched(this.firstPress))
			{
				this.firstPress.Flip();
				this.secondPress.Flip();               
			}
			this.firstPress = null;
			this.secondPress = null;
		}
        private void Button_Click(object sender, EventArgs e)
        {
            this.ToFlip();
            IndexableButton indexableButton =(IndexableButton)sender;
            if (this.firstPress==null)
            {
                this.firstPress = indexableButton;
                this.firstPress.Flip();
                return;
            }
            if (this.secondPress==null)
            {
				this.secondPress = indexableButton;				
                if(this.firstPress.Equals(this.secondPress))
                {
                    this.secondPress = null;
                    return;
                }
				this.secondPress.Flip();                
            }			
		}

        public string[] GetMixedCardsNamesArray()
        {
            string[] beforeShuffle = new string[N * N];
            for (int i = 0, j=1; i < N*N; i=i+2,j++)
            {
                beforeShuffle[i] = "card" + j + ".png";
                beforeShuffle[i+1] = "card" + j + ".png";
            }
            string[] afterShuffle = new string[N * N];
            Random random = new Random(DateTime.Now.Millisecond);
            int index = 0;
            while (index<N*N)
            {
                int randomNum = random.Next(0, N * N);
                if (beforeShuffle[randomNum]!=null)
                {
                    afterShuffle[index] = beforeShuffle[randomNum];
                    index++;
                    beforeShuffle[randomNum] = null;
                }
            }
            return afterShuffle;
        }
    }
}