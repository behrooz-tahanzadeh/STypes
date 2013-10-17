package ir.tahanzadeh.stype.deluxes
{
import ir.tahanzadeh.stype.deluxes.sets.GenericSignalSet;


public class SString
{
	private var _signal:GenericSignalSet,
				_value:String;
	
	
	
	
	public function SString(value:String='')
	{
		_value = value;
		_signal = new GenericSignalSet(this);
	}//eof
	
	
	
	
	public function get value():String
		{return _value;}
	
	
	
	
	public function set value(value:String):void
	{
		if(_value == value)return;	
		_value = value;
		_signal.change.dispatch();
	}//eof
	
	
	
	
	public function get signal():GenericSignalSet
		{return this._signal;}//eof
	
	
	
	
	public function toString() : String
		{return "[SString value="+_value+"]";}//eof
	
	
	
	
}//eoc
}//eop