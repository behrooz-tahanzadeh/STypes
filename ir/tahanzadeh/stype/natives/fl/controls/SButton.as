package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.Button;
import org.osflash.signals.natives.sets.fl.controls.LabelButtonSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SButton extends SNativeType
{
	public function SButton(value:Button = null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new Button();
		_signal = new LabelButtonSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():Button
		{return _value;}//eof
	
	public function get signal():LabelButtonSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
