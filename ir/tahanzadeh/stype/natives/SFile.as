package ir.tahanzadeh.stype.natives
{
//import declarations
import flash.filesystem.File;
import org.osflash.signals.natives.sets.FileSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SFile extends SNativeType
{
	public function SFile(value:File=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new File();
		_signal = new FileSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():File
		{return _value;}//eof
	
	public function get signal():FileSignalSet
		{return _signal;}//eof
}//eoc
}//eop
