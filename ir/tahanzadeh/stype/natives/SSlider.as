package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.Slider;
import org.osflash.signals.natives.sets.SliderSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SSlider
{
	private var	_value:Slider,
				_signal:SliderSignalSet;
	
	public function SSlider(value:Slider , eventHandler:Object = null)
	{
		_value = value;
		_signal = new SliderSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():Slider{return _value;}//EOF
	
	public function get signal():SliderSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP