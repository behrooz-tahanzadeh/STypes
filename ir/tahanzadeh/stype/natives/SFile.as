package ir.tahanzadeh.stype.natives
{
import flash.filesystem.File;

/*import declarations */

/**
 * 
 * contains a File and its signals.
 * SFiles value can not change after creation.
 * 
 */
public class SFile
{
	private var	_value:File,
				_signal:FileSignalSet;
	
	public function SFile(value:File = null)
	{
		_value = value?value:new File();
		_signal = new FileSignalSet(_value);
	}//EOF
	
	public function get value():File{return _value;}//EOF
	
	public function get signal():FileSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP

/*Secret Class*/
import flash.events.*;
import flash.filesystem.File;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class FileSignalSet extends EventDispatcherSignalSet
{
	public function FileSignalSet(target:File)
	{
		super(target);
	}
	
	public function get select():NativeSignal
	{
		return getNativeSignal(Event.SELECT);
	}
	
	public function get cancel():NativeSignal
	{
		return getNativeSignal(Event.CANCEL);
	}
}//EOC