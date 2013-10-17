package ir.tahanzadeh.stype.deluxes.sets
{
import org.osflash.signals.DeluxeSignal;


public class GenericSignalSet extends DeluxeSignalSet
{
	public function GenericSignalSet(target:*) 
	{
		super(target);
	}
	
	public function get change():DeluxeSignal
	{
		return getDeluxeSignal('change');
	}
}
}