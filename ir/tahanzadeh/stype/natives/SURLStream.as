package ir.tahanzadeh.stype.natives
{
//import declarations
import flash.net.URLStream;
import org.osflash.signals.natives.sets.URLStreamSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SURLStream extends SNativeType
{
	public function SURLStream(value:URLStream=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new URLStream();
		_signal = new URLStreamSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():URLStream
	{return _value;}//eof
	
	public function get signal():URLStreamSignalSet
	{return _signal;}//eof
	
}//eoc
}//eop
