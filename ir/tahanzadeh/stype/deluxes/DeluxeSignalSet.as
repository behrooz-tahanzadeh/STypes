package ir.tahanzadeh.stype.deluxes
{
/* import declarations */
import flash.utils.Dictionary;
import org.osflash.signals.DeluxeSignal;


public class DeluxeSignalSet
{
	private var	target:*;
	
	private const _signals:Dictionary = new Dictionary();
	
	public function DeluxeSignalSet(target:*) 
	{
		this.target = target;
	}
	
	public function getDeluxeSignal(eventType:String):DeluxeSignal 
	{
		return _signals[eventType] ||= new DeluxeSignal(target);
	}
	
}//EOC
}//EOP

/*Secret Classes*/