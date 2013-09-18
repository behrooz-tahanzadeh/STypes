package ir.tahanzadeh.stype.natives
{
/* import declarations */
import flash.net.URLLoader;
import org.osflash.signals.natives.sets.URLLoaderSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SURLLoader
{	
	private var _signal:URLLoaderSignalSet,
				_value:URLLoader;
	
	public function SURLLoader(value:URLLoader=null , eventHandler:Object = null)
	{
		_value = value?value:new URLLoader();
		_signal = new URLLoaderSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():URLLoader{return _value;}//EOF
	
	public function get signal():URLLoaderSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP
