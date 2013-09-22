package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.CheckBox;
import org.osflash.signals.natives.sets.fl.controls.LabelButtonSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SCheckBox extends SNativeType
{
	public function SCheckBox(value:CheckBox = null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new CheckBox();
		_signal = new LabelButtonSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():CheckBox
		{return _value;}//eof
	
	public function get signal():LabelButtonSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
