package ir.tahanzadeh.stype.natives
{
import flash.display.Stage;
import org.osflash.signals.natives.sets.StageSignalSet;


public class SStage extends SNativeType
{
	public function SStage(value:Stage=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new Stage();
		_signal = new StageSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}
	
	public function get value():Stage
		{return _value;}//eof
	
	public function get signal():StageSignalSet
		{return _signal;}//eof
	
}//eoc
}//eop