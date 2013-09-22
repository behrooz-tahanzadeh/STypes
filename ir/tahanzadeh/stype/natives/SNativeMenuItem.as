package ir.tahanzadeh.stype.natives
{
//import declarations
import flash.display.NativeMenuItem;
import org.osflash.signals.natives.sets.NativeMenuItemSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SNativeMenuItem extends SNativeType
{
	public function SNativeMenuItem(value:NativeMenuItem=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new NativeMenuItem();
		_signal = new NativeMenuItemSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():NativeMenuItem
		{return _value;}//eof
	
	public function get signal():NativeMenuItemSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop
