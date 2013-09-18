package ir.tahanzadeh.stype.natives
{
/*import declarations */
import flash.filesystem.FileStream;
import org.osflash.signals.natives.sets.FileStreamSignalSet;





/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SFileStream
{
	private var	_value:FileStream,
				_signal:FileStreamSignalSet;
	
	public function SFileStream(value:FileStream = null , eventHandler:Object = null)
	{
		_value = value?value:new FileStream();
		_signal = new FileStreamSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():FileStream{return _value;}//EOF
	
	public function get signal():FileStreamSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP
