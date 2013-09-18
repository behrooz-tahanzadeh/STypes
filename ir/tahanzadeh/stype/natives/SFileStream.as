package ir.tahanzadeh.stype.natives
{
import flash.filesystem.FileStream;

/*import declarations */

/**
 * contains a FileStream and its signals
 * SFileStreams value can not change after creation
 * Signal { Click }
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

/*Secret Class*/
import flash.events.*;
import flash.filesystem.FileStream;

import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class FileStreamSignalSet extends EventDispatcherSignalSet
{
	
	public function FileStreamSignalSet(target:FileStream)
	{
		super(target);
	}
	
	public function get close():NativeSignal
	{
		return getNativeSignal(Event.CLOSE);
	}
}//EOC