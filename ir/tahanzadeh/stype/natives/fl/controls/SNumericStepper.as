package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.NumericStepper;
import org.osflash.signals.natives.sets.fl.controls.NumericStepperSignalSet;
import org.osflash.signals.natives.sets.fl.core.UIComponentSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SNumericStepper extends SNativeType
{
	public function SNumericStepper(value:NumericStepper=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new NumericStepper();
		_signal = new NumericStepperSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():NumericStepper
	{return _value;}//eof
	
	public function get signal():NumericStepperSignalSet
	{return _signal;}//eof
	
}//eoc
}//eop
