package ir.tahanzadeh.stype.natives
{
//import declarations
import flash.filesystem.FileStream;
import org.osflash.signals.natives.sets.FileStreamSignalSet;





/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SFileStream extends SNativeType
{
	public function SFileStream(value:FileStream=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new FileStream();
		_signal = new FileStreamSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():FileStream
		{return _value;}//eof
	
	public function get signal():FileStreamSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
