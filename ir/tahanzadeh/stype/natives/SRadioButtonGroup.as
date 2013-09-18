package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.RadioButtonGroup;
import org.osflash.signals.natives.sets.RadioButtonGroupSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SRadioButtonGroup
{
	private var	_value:RadioButtonGroup,
				_signal:RadioButtonGroupSignalSet;
	
	public function SRadioButtonGroup(value:RadioButtonGroup , eventHandler:Object = null)
	{
		_value = value;
		_signal = new RadioButtonGroupSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():RadioButtonGroup{return _value;}//EOF
	
	public function get signal():RadioButtonGroupSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP