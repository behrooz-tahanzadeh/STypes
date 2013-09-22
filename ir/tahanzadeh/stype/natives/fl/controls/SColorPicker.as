package ir.tahanzadeh.stype.natives.fl.controls
{
//import declaration
import fl.controls.ColorPicker;
import org.osflash.signals.natives.sets.fl.controls.ColorPickerSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SColorPicker extends SNativeType
{
	public function SColorPicker(value:ColorPicker = null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new ColorPicker();
		_signal = new ColorPickerSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
		
	public function get value():ColorPicker
		{return _value;}//eof
		
	public function get signal():ColorPickerSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
