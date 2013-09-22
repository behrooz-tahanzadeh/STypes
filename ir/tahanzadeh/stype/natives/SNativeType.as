package ir.tahanzadeh.stype.natives
{


public class SNativeType
{
	protected var	_value:*,
					_signal:*;
	
	public function SNativeType()
	{
	}
	
	protected function setProperties(properties:Object=null, eventHandler:Object=null):void
	{
		var key:String;
		
		if(properties)
		{
			for (key in properties)
			{
				_value[key] = properties[key];
			}
		}
		
		if(eventHandler)
		{
			for (key in eventHandler)
			{
				_signal[key].add(eventHandler[key]);
			}
		}
	}
	
}//EOC
}//EOP