package ir.tahanzadeh.stype.deluxes
{
/* import declarations */
import ir.tahanzadeh.stype.deluxes.sets.GenericSignalSet;

import org.osflash.signals.Signal;
import org.osflash.signals.events.GenericEvent;

/**
 * 
 * Contain a boolean value with a signal class object.
 * Default value is false.
 * 
 */
public class SBoolean
{
	private var _signal:GenericSignalSet,
				_value:Boolean;
	
	/**
	 * Class constructor
	 */
	public function SBoolean(value:Boolean=false)
	{
		_value = value;
		_signal = new GenericSignalSet(this);
	}
	
	/**
	 * value getter function 
	 */
	public function get value():Boolean{return _value;}//EOF
	
	/**
	 *value setter function
	 * dispatch signal.change after value changes
	 */
	public function set value(value:Boolean):void
	{
		if(_value == value)return;
		_value = value;
		this.signal.change.dispatch();
	}//EOF
	
	/**
	* signal getter function 
	*/
	public function get signal():GenericSignalSet{return _signal;}//EOF
	
	/**
	 * overrides default toString behavior
	 */
	public function toString() : String{
		return "[SBoolean value="+this.value+"]";
	}//eof
	
}//eoc
}//eop
