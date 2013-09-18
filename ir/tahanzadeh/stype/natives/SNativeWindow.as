package ir.tahanzadeh.stype.natives
{
/*import declaration */
import flash.display.NativeWindow;
import org.osflash.signals.natives.sets.NativeWindowSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */

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
