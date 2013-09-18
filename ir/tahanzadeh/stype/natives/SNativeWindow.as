package ir.tahanzadeh.stype.natives
{
/*import declaration */
import flash.display.*;

public class SNativeWindow
{
	private var	_value:NativeWindow,
				_signal:NativeWindowSignalSet;
	
	
	public function SNativeWindow(value:NativeWindow, eventHandler:Object = null)
	{
		_value = value;
		_signal = new NativeWindowSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():NativeWindow{return _value;}//EOF
	
	public function get signal():NativeWindowSignalSet{return _signal;}//EOF
}//EOC
}//EOP

/*Secret Class*/

import flash.display.NativeWindow;
import flash.events.Event;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class NativeWindowSignalSet extends EventDispatcherSignalSet
{
	public function NativeWindowSignalSet(target:NativeWindow)
	{
		super(target);
	}
	
	public function get close():NativeSignal
	{
		return getNativeSignal(Event.CLOSE);
	}
}//EOC