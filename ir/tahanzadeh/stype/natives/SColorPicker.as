package ir.tahanzadeh.stype.natives
{
/* import declaration */
import fl.controls.ColorPicker;


/**
 * contains a button and its signals
 * SColorPicker value can not change after creation
 * Signal 
 */
public class SColorPicker
{
	private var	_value:ColorPicker,
				_signal:ColorPickerSignalSet;
	
	public function SColorPicker(value:ColorPicker, eventHandler:Object = null)
	{
		_value = value;
		_signal = new ColorPickerSignalSet(value); 
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
		
	public function get value():ColorPicker{return _value;}//EOF
		
	public function get signal():ColorPickerSignalSet{return _signal;}//EOF
	}//EOC
}//EOP

/*Secret Class*/
import fl.controls.ColorPicker;
import fl.events.ColorPickerEvent;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class ColorPickerSignalSet extends EventDispatcherSignalSet
{
	public function ColorPickerSignalSet(target:ColorPicker)
	{
		super(target);
	}
	
	public function get change():NativeSignal
	{
		return getNativeSignal(ColorPickerEvent.CHANGE, ColorPickerEvent);
	}
}//EOC