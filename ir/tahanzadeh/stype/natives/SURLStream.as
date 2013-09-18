package ir.tahanzadeh.stype.natives
{
/*import declarations */
import flash.net.URLStream;
import org.osflash.signals.natives.sets.URLStreamSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SURLStream
{
	private var	_value:URLStream,
				_signal:URLStreamSignalSet;
	
	
	
	
	public function SURLStream(value:URLStream = null , eventHandler:Object = null)
	{
		_value = value?value:new URLStream();
		_signal = new URLStreamSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():URLStream{return _value;}//EOF
	
	public function get signal():URLStreamSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP