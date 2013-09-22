package ir.tahanzadeh.stype.natives.fl.controls
{
//import declarations
import fl.controls.DataGrid;
import org.osflash.signals.natives.sets.fl.controls.DataGridSignalSet;
import ir.tahanzadeh.stype.natives.SNativeType;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SDataGrid extends SNativeType
{
	public function SDataGrid(value:DataGrid=null, properties:Object = null, eventHandler:Object = null)
	{
		_value = value || new DataGrid();
		_signal = new DataGridSignalSet(_value);
		
		setProperties(properties, eventHandler);
	}//eof
	
	public function get value():DataGrid
		{return _value;}//eof
	
	public function get signal():DataGridSignalSet
		{return _signal;}//eof
}//eoc
}//eop
