package ir.tahanzadeh.stype.natives{
/*import declarations */
import fl.controls.RadioButtonGroup;

/**
 * contains a RadioButtonGroup and its signals
 * SRadioButtonGroups value can not change after creation
 * Signal { Click }
 */
public class SRadioButtonGroup
{
	private var	_value:RadioButtonGroup,
				_signal:RadioButtonGroupSignalSet;
	
	public function SRadioButtonGroup(value:RadioButtonGroup , eventHandler:Object = null)
	{
		_value = value;
		_signal = new RadioButtonGroupSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():RadioButtonGroup{return _value;}//EOF
	
	public function get signal():RadioButtonGroupSignalSet{return _signal;}//EOF
}//EOC
}//EOP

/*Secret Class*/
import fl.controls.RadioButtonGroup;
import flash.events.*;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class RadioButtonGroupSignalSet extends EventDispatcherSignalSet
{
	public function RadioButtonGroupSignalSet(target:RadioButtonGroup)
	{
		super(target);
	}
	
	public function get change():NativeSignal
	{
		return getNativeSignal(Event.CHANGE);
	}
}//EOC