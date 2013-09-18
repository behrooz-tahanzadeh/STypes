package ir.tahanzadeh.stype.natives
{
import flash.net.URLLoader;

import org.osflash.signals.natives.sets.URLLoaderSignalSet;

/**
 * Contain an URLLoadereger value with a signal class object
 * Default value is 0
 * Signal { change }
 */

public class SURLLoader
{	
	private var _signal:URLLoaderSignalSet,
				_value:URLLoader;
	
	/**
	 * 
	 * SURLLoader Constructor
	 * 
	 */
	public function SURLLoader(value:URLLoader=null, onComplete:Function = null , onIOError:Function = null)
	{
		_value = value?value:new URLLoader();
		_signal = new URLLoaderSignalSet(_value);
		
		Boolean(onComplete) && _signal.complete.add(onComplete);
		Boolean(onIOError) && _signal.ioError.add(onIOError);
	}//EOF
	
	
	
	
	/**
	 * 
	 * value getter function
	 *  
	 */
	public function get value():URLLoader{return _value;}//EOF
	
	
	
	
	/**
	 * 
	 * signal getter function
	 *  
	 */
	public function get signal():URLLoaderSignalSet{return _signal;}//EOF
	
	
	
	
	/**
	 * 
	 * overrides default toString behavior
	 * 
	 */
	public function toString() : String
	{
		return "[SURLLoader]";
	}//EOF
	
}//EOC
}//EOP