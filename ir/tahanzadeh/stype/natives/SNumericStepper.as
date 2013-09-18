package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.NumericStepper;
import org.osflash.signals.natives.sets.NumericStepperSignalSet;
import org.osflash.signals.natives.sets.UIComponentSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
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