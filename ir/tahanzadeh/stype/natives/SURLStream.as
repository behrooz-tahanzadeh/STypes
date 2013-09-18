package ir.tahanzadeh.stype.natives
{
import flash.net.URLStream;
import org.osflash.signals.natives.sets.URLStreamSignalSet;

/*import declarations */

/**
 * 
 * contains a URLStream and its signals.
 * SURLStreams value can not change after creation.
 * 
 */
public class SURLStream
{
	private var	_value:URLStream,
				_signal:URLStreamSignalSet;
	
	
	
	
	public function SURLStream(value:URLStream = null, onComplete:Function = null, onIOError:Function = null)
	{
		_value = value?value:new URLStream();
		_signal = new URLStreamSignalSet(_value);
		
		Boolean(onComplete) && _signal.complete.add(onComplete);
		Boolean(onIOError) && _signal.ioError.add(onIOError);
	}//EOF
	
	
	
	
	public function get value():URLStream{return _value;}//EOF
	
	public function get signal():URLStreamSignalSet{return _signal;}//EOF
}//EOC
}//EOP