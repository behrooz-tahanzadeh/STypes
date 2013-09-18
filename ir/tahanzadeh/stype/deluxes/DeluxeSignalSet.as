package ir.tahanzadeh.stype.deluxes
{
/* import declarations */
import flash.utils.Dictionary;
import org.osflash.signals.DeluxeSignal;



/**
 * 
 * A convenient way to access a logical set of deluxe signals.
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class DeluxeSignalSet
{
	private var	target:*;
	
	private const _signals:Dictionary = new Dictionary();
	
	
	
	
	public function DeluxeSignalSet(target:*) 
	{
		this.target = target;
	}//EOF
	
	
	
	
	public function getDeluxeSignal(eventType:String):DeluxeSignal 
	{
		return _signals[eventType] ||= new DeluxeSignal(target);
	}//EOF
	
	
	
	
}//EOC
}//EOP