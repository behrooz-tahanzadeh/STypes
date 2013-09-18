package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.TextInput;
import org.osflash.signals.natives.sets.TextInputSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class STextInput
{
	
	private var	_value:TextInput,
				_signal:TextInputSignalSet;
	
	
	public function STextInput(value:TextInput, eventHandler:Object = null)
	{
		this._value = value;
		this._signal = new TextInputSignalSet(value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():TextInput{return _value;}//EOF
	
	public function get signal():TextInputSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP