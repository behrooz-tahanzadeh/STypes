package ir.tahanzadeh.stype.natives
{
import fl.controls.DataGrid;


public class SDataGrid
{
	private var	_value:DataGrid,
				_signal:DataGridSignalSet;
	
	
	public function SDataGrid(value:DataGrid, eventHandler:Object = null)
	{
		_value = value;
		_signal = new DataGridSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():DataGrid{return _value;}//EOF
	
	public function get signal():DataGridSignalSet{return _signal;}//EOF
}//EOC
}//EOP

/*Secret Class*/

import fl.controls.DataGrid;
import flash.events.Event;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class DataGridSignalSet extends EventDispatcherSignalSet
{
	public function DataGridSignalSet(target:DataGrid)
	{
		super(target);
	}
	
	public function get change():NativeSignal
	{
		return getNativeSignal(Event.CHANGE);
	}
}//EOC