package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.Button;
import org.osflash.signals.natives.sets.LabelButtonSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SButton
{
	private var	_value:Button,
				_signal:LabelButtonSignalSet;
	
	public function SButton(value:Button = null , eventHandler:Object = null)
	{
		_value = value || new Button();
		_signal = new LabelButtonSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():Button{return _value;}//EOF
	
	public function get signal():LabelButtonSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP
