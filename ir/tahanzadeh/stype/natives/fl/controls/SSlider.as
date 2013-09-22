package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.Slider;
import org.osflash.signals.natives.sets.fl.controls.SliderSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SSlider extends SNativeType
{
	public function SSlider(value:Slider=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new Slider();
		_signal = new SliderSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():Slider
	{return _value;}//eof
	
	public function get signal():SliderSignalSet
	{return _signal;}//eof
	
}//eoc
}//eop
