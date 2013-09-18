package ir.tahanzadeh.stype.deluxes
{
import org.osflash.signals.events.GenericEvent;

/**
 * Contain an integer value with a signal class object
 * Default value is 0
  * Signal { change }
 */

public class SInt
{	
	private var _signal:IntSignalSet,
				_value:int;
	
	/**
	 * SInt Constructor
	 */
	public function SInt(value:int=0)
	{
		_value = value;
		_signal = new IntSignalSet(this);
	}//EOF
	
	
	
	
	/**
	 * value getter function 
	 */
	public function get value():int{return _value;}//EOF
	
	
	
	
	/**
	 *value setter function
	 * dispatch signal.change after value changes
	 */
	public function set value(value:int):void
	{
		if(_value == value)return;	
		_value = value;
		_signal.change.dispatch(new GenericEvent());
	}//EOF
	
	
	
	
	/**
	 * signal getter function 
	 */
	public function get signal():IntSignalSet
	{
		return this._signal;
	}//EOF
	
	
	
	
	/**
	 * overrides default toString behavior
	 */
	public function toString() : String
	{
		return "[SInt value="+_value+"]";
	}//EOF
	
}//EOC
}//EOP

/*Secret Classes*/
import ir.tahanzadeh.stype.deluxes.DeluxeSignalSet;
import ir.tahanzadeh.stype.deluxes.SInt;
import org.osflash.signals.DeluxeSignal;

class IntSignalSet extends DeluxeSignalSet
{
	public function IntSignalSet(target:SInt) 
	{
		super(target);
	}
	
	public function get change():DeluxeSignal
	{
		return getDeluxeSignal('change');
	}
}//EOC