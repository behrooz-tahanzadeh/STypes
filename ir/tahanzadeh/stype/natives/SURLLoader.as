package ir.tahanzadeh.stype.natives
{
//import declarations
import flash.net.URLLoader;
import org.osflash.signals.natives.sets.URLLoaderSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SURLLoader extends SNativeType
{
	public function SURLLoader(value:URLLoader=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new URLLoader();
		_signal = new URLLoaderSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():URLLoader
		{return _value;}//eof
	
	public function get signal():URLLoaderSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
