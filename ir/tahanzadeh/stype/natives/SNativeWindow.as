package ir.tahanzadeh.stype.natives
{
//import declarations
import flash.display.NativeWindow;
import org.osflash.signals.natives.sets.NativeWindowSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */

public class SNativeWindow extends SNativeType
{
	public function SNativeWindow(value:NativeWindow, properties:Object = null, eventHandler:Object = null)
	{
		_value = value;
		_signal = new NativeWindowSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():NativeWindow
	{return _value;}//eof
	
	public function get signal():NativeWindowSignalSet
	{return _signal;}//eof
	
}//eoc
}//eop
