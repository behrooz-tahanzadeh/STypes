package ir.tahanzadeh.stype.natives
{

import flash.display.NativeMenuItem;


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

/*Secret Class*/

import flash.display.NativeMenuItem;
import flash.events.Event;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class NativeMenuItemSignalSet extends EventDispatcherSignalSet
{
	public function NativeMenuItemSignalSet(target:NativeMenuItem)
	{
		super(target);
	}
	
	public function get select():NativeSignal
	{
		return getNativeSignal(Event.SELECT);
	}
}//EOC