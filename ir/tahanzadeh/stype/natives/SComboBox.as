package ir.tahanzadeh.stype.natives{

import fl.controls.ComboBox;


public class SComboBox{
	
	private var	_value:ComboBox,
				_signal:ComboBoxSignalSet;
	
	
	public function SComboBox(value:ComboBox, eventHandler:Object = null)
	{
		_value = value;
		_signal = new ComboBoxSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():ComboBox{return _value;}//EOF
	
	public function get signal():ComboBoxSignalSet{return _signal;}//EOF
}//EOC
}//EOP

/*Secret Class*/
import fl.controls.ComboBox;
import flash.events.Event;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class ComboBoxSignalSet extends EventDispatcherSignalSet
{
	public function ComboBoxSignalSet(target:ComboBox)
	{
		super(target);
	}
	
	public function get change():NativeSignal
	{
		return getNativeSignal(Event.CHANGE);
	}
}//EOC