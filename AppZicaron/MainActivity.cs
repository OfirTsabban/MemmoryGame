using Android.App;
using Android.OS;
using Android.Support.V7.App;
using Android.Runtime;
using Android.Widget;
using Android.Content;

namespace AppZicaron
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        private Button buttonStart;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            // Set our view from the "main" layout resource
            SetContentView(Resource.Layout.activity_main);
            this.buttonStart = (Button)this.FindViewById(Resource.Id.buttonStart);
            this.buttonStart.Click += ButtonStart_Click;     
        }

        private void ButtonStart_Click(object sender, System.EventArgs e)
        {
            Intent intent = new Intent(this, typeof(GameActivity));
            this.StartActivityForResult(intent, 200);
        }
    }
}