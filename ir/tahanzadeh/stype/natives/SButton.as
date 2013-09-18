package ir.tahanzadeh.stype.natives
{
/*import declarations */
import fl.controls.Button;

/**
 * contains a button and its signals
 * Sbuttons value can not change after creation
 * Signal { Click }
 */
public class SButton
{
	private var	_value:Button,
				_signal:ButtonSignalSet;
	
	public function SButton(value:Button = null , eventHandler:Object = null)
	{
		_value = value || new Button();
		_signal = new ButtonSignalSet(_value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}//EOF
	
	public function get value():Button{return _value;}//EOF
	
	public function get signal():ButtonSignalSet{return _signal;}//EOF
}//EOC
}//EOP

/*Secret Class*/
import fl.controls.Button;

import flash.events.*;

import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class ButtonSignalSet extends EventDispatcherSignalSet
{
	public function ButtonSignalSet(target:Button)
	{
		super(target);
	}
	
	public function get click():NativeSignal
	{
		return getNativeSignal(MouseEvent.CLICK);
	}
}//EOC