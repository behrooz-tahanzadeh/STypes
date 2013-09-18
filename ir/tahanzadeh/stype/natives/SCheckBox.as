package ir.tahanzadeh.stype.natives
{
/* import declarations */
import fl.controls.CheckBox;
import org.osflash.signals.natives.sets.LabelButtonSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SCheckBox
{
	private var	_value:CheckBox,
				_signal:LabelButtonSignalSet;
	
	
	
	
	public function SCheckBox(value:CheckBox, eventHandler:Object = null)
	{
		_value = value;
		_signal = new LabelButtonSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():CheckBox{return _value;}//EOF
	
	public function get signal():LabelButtonSignalSet{return _signal;}
	
}//EOC
}//EOP
