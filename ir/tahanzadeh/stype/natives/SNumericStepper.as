package ir.tahanzadeh.stype.natives{
/*import declarations */
import fl.controls.NumericStepper;
import fl.controls.NumericStepper;

/**
 * contains a NumericStepper and its signals
 * SNumericSteppers value can not change after creation
 * Signal { Click }
 */
public class SNumericStepper
{
	private var	_value:NumericStepper,
				_signal:NumericStepperSignalSet;
	
	public function SNumericStepper(value:NumericStepper , eventHandler:Object = null)
	{
		_value = value;
		_signal = new NumericStepperSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():NumericStepper{return _value;}//EOF
	
	public function get signal():NumericStepperSignalSet{return _signal;}//EOF
}//EOC
}//EOP

/*Secret Class*/
import fl.controls.NumericStepper;
import flash.events.*;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class NumericStepperSignalSet extends EventDispatcherSignalSet
{
	public function NumericStepperSignalSet(target:NumericStepper)
	{
		super(target);
	}
	
	public function get change():NativeSignal
	{
		return getNativeSignal(Event.CHANGE);
	}
}//EOC