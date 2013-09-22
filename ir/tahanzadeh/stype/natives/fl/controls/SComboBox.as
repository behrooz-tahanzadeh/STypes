package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.ComboBox;
import org.osflash.signals.natives.sets.fl.controls.ComboBoxSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SComboBox extends SNativeType
{
	public function SComboBox(value:ComboBox = null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new ComboBox();
		_signal = new ComboBoxSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():ComboBox
		{return _value;}//eof
	
	public function get signal():ComboBoxSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
