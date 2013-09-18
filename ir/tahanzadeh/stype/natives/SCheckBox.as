package ir.tahanzadeh.stype.natives
{
/* import declarations */
import fl.controls.CheckBox;

/**
 * contains a button and its signals
 * Sbuttons value can not change after creation
 * Signal { click }
 */
public class SCheckBox
{
	private var	_value:CheckBox,
				_signal:CheckBoxSignalSet;
	
		
	public function SCheckBox(value:CheckBox, eventHandler:Object = null)
	{
		_value = value;
		_signal = new CheckBoxSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():CheckBox{return _value;}//EOF
	
	public function get signal():CheckBoxSignalSet{return _signal;}
}//EOC
}//EOP

/*Secret Class*/
import fl.controls.CheckBox;
import flash.events.*;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class CheckBoxSignalSet extends EventDispatcherSignalSet
{
	public function CheckBoxSignalSet(target:CheckBox)
	{
		super(target);
	}
	
	public function get click():NativeSignal
	{
		return getNativeSignal(MouseEvent.CLICK);
	}
	
	
}//EOC