package ir.tahanzadeh.stype.natives
{
/* import declarations */
import flash.display.NativeMenuItem;
import org.osflash.signals.natives.sets.NativeMenuItemSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SNativeMenuItem
{
	private var	_value:NativeMenuItem,
				_signal:NativeMenuItemSignalSet;
	
	
	public function SNativeMenuItem(value:NativeMenuItem, eventHandler:Object = null)
	{
		_value = value;
		_signal = new NativeMenuItemSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():NativeMenuItem{return _value;}//EOF
	
	public function get signal():NativeMenuItemSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP
