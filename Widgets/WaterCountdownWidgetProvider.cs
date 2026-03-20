using Android.Appwidget;
using Android.Content;
using Android.OS;
using Java.Util;
namespace WaterCountdownWidget
{
    [BroadcastReceiver(Label = "Countdown Widget")]
    [IntentFilter(new[] {
        "android.appwidget.action.APPWIDGET_UPDATE",
        "WIDGET_CLICK",
        "WIDGET_RESET",
        "MIDNIGHT_RESET"
    })]
    [MetaData("android.appwidget.provider", Resource = "@xml/widget_info")]
    public class WaterCountdownWidgetProvider : AppWidgetProvider
    {
        const string PREFS_NAME = "CountdownPrefs";
        const string KEY = "count";

        static Android.Graphics.Color[] colors = new Android.Graphics.Color[]
        {
            Android.Graphics.Color.Red,
            Android.Graphics.Color.Blue,
            Android.Graphics.Color.Yellow,
            Android.Graphics.Color.Magenta,
            Android.Graphics.Color.Cyan,
            Android.Graphics.Color.Orange,
            Android.Graphics.Color.Pink,
            Android.Graphics.Color.Purple,
            Android.Graphics.Color.Teal,
            Android.Graphics.Color.Gray
        };

        public override void OnUpdate(Context context, AppWidgetManager manager, int[] ids)
        {
            ScheduleMidnightReset(context);

            foreach (var id in ids)
                UpdateWidget(context, manager, id);
        }

        public override void OnReceive(Context context, Intent intent)
        {
            base.OnReceive(context, intent);

            var prefs = context.GetSharedPreferences(PREFS_NAME, FileCreationMode.Private);
            int count = prefs.GetInt(KEY, 7);

            if (intent.Action == "WIDGET_CLICK")
            {
                if (count > 0)
                    count--;
                else
                    count = 7; // Resets on click 0

                Vibrate(context);
            }

            if (intent.Action == "WIDGET_RESET" || intent.Action == "MIDNIGHT_RESET")
            {
                count = 7;
            }

            prefs.Edit().PutInt(KEY, count).Apply();

            var manager = AppWidgetManager.GetInstance(context);
            var component = new ComponentName(context, Java.Lang.Class.FromType(typeof(WaterCountdownWidgetProvider)));
            var ids = manager.GetAppWidgetIds(component);

            foreach (var id in ids)
                UpdateWidget(context, manager, id);
        }

        private void UpdateWidget(Context context, AppWidgetManager manager, int widgetId)
        {
            var prefs = context.GetSharedPreferences(PREFS_NAME, FileCreationMode.Private);
            int count = prefs.GetInt(KEY, 7);

            var views = new RemoteViews(context.PackageName, Resource.Layout.widget_layout);

            views.SetTextViewText(Resource.Id.widget_text, count.ToString());

            //Changes background depending on number & random color when 0
            if (count == 0)
            {
                views.SetInt(Resource.Id.widget_background, "setBackgroundResource", Resource.Drawable.water_empty);

                //random color of 0
                var rnd = new System.Random();
                var color = colors[rnd.Next(colors.Length)];
                views.SetTextColor(Resource.Id.widget_text, color);
            }
            else
            {
                views.SetInt(Resource.Id.widget_background, "setBackgroundResource", Resource.Drawable.water_full);
                views.SetTextColor(Resource.Id.widget_text, Android.Graphics.Color.White);
            }

            //Clicks on the number
            var clickIntent = new Intent(context, typeof(WaterCountdownWidgetProvider));
            clickIntent.SetAction("WIDGET_CLICK");
            var clickPending = PendingIntent.GetBroadcast(
                context, 0, clickIntent,
                PendingIntentFlags.Immutable | PendingIntentFlags.UpdateCurrent);
            views.SetOnClickPendingIntent(Resource.Id.widget_text, clickPending);

            manager.UpdateAppWidget(widgetId, views);
        }

        //Vibrate
        private void Vibrate(Context context)
        {
            var vibrator = (Vibrator)context.GetSystemService(Context.VibratorService);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                vibrator.Vibrate(VibrationEffect.CreateOneShot(100, VibrationEffect.DefaultAmplitude));
            }
            else
            {
                vibrator.Vibrate(100);
            }
        }

        //Reset at midnight
        private void ScheduleMidnightReset(Context context)
        {
            var alarmManager = (AlarmManager)context.GetSystemService(Context.AlarmService);

            var intent = new Intent(context, typeof(WaterCountdownWidgetProvider));
            intent.SetAction("MIDNIGHT_RESET");

            var pendingIntent = PendingIntent.GetBroadcast(
                context, 2, intent,
                PendingIntentFlags.Immutable | PendingIntentFlags.UpdateCurrent
            );

            var calendar = Calendar.Instance;
            calendar.Set(CalendarField.HourOfDay, 0);
            calendar.Set(CalendarField.Minute, 0);
            calendar.Set(CalendarField.Second, 0);
            calendar.Add(CalendarField.DayOfMonth, 1);

            alarmManager.SetRepeating(
                AlarmType.RtcWakeup,
                calendar.TimeInMillis,
                AlarmManager.IntervalDay,
                pendingIntent
            );
        }
    }
}