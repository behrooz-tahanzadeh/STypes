package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.DataGrid;
import org.osflash.signals.natives.sets.DataGridSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
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
