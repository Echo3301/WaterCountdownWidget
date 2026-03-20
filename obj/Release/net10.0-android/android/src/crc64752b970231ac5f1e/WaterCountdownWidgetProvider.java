package crc64752b970231ac5f1e;


public class WaterCountdownWidgetProvider
	extends android.appwidget.AppWidgetProvider
	implements
		mono.android.IGCUserPeer
{

	public WaterCountdownWidgetProvider ()
	{
		super ();
		if (getClass () == WaterCountdownWidgetProvider.class) {
			mono.android.TypeManager.Activate ("WaterCountdownWidget.WaterCountdownWidgetProvider, WaterCountdownWidget", "", this, new java.lang.Object[] {  });
		}
	}

	public void onUpdate (android.content.Context p0, android.appwidget.AppWidgetManager p1, int[] p2)
	{
		n_onUpdate (p0, p1, p2);
	}

	private native void n_onUpdate (android.content.Context p0, android.appwidget.AppWidgetManager p1, int[] p2);

	public void onReceive (android.content.Context p0, android.content.Intent p1)
	{
		n_onReceive (p0, p1);
	}

	private native void n_onReceive (android.content.Context p0, android.content.Intent p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
