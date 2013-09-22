package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.TextInput;
import org.osflash.signals.natives.sets.fl.controls.TextInputSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class STextInput extends SNativeType
{
	public function STextInput(value:TextInput=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new TextInput();
		_signal = new TextInputSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():TextInput
	{return _value;}//eof
	
	public function get signal():TextInputSignalSet
	{return _signal;}//eof
	
}//eoc
}//eop
