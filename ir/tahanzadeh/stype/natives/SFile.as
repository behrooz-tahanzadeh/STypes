package ir.tahanzadeh.stype.natives
{
/*import declarations */
import flash.filesystem.File;
import org.osflash.signals.natives.sets.FileSignalSet;




/**
 * 
 * @author Behrooz Tahanzadeh
 * 
 */
public class SFile
{
	private var	_value:File,
				_signal:FileSignalSet;
	
	public function SFile(value:File = null)
	{
		_value = value?value:new File();
		_signal = new FileSignalSet(_value);
	}//EOF
	
	public function get value():File{return _value;}//EOF
	
	public function get signal():FileSignalSet{return _signal;}//EOF
	
}//EOC
}//EOP
