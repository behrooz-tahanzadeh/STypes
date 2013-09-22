package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.RadioButtonGroup;
import org.osflash.signals.natives.sets.fl.controls.RadioButtonGroupSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SRadioButtonGroup extends SNativeType
{
	public function SRadioButtonGroup(value:RadioButtonGroup=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value;
		_signal = new RadioButtonGroupSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():RadioButtonGroup
	{return _value;}//eof
	
	public function get signal():RadioButtonGroupSignalSet
	{return _signal;}//eof
	
}//eoc
}//eop
