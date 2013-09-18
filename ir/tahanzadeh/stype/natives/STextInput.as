package ir.tahanzadeh.stype.natives
{

import fl.controls.TextInput;


public class STextInput
{
	
	private var	_value:TextInput,
				_signal:TextInputSignalSet;
	
	
	public function STextInput(value:TextInput, eventHandler:Object = null)
	{
		this._value = value;
		this._signal = new TextInputSignalSet(value);
		
		if(eventHandler)
		{
			for (var key:String in eventHandler)
			{
				_signal[key] && _signal[key].add(eventHandler[key])
			}
		}
	}
	
	public function get value():TextInput{return _value;}//EOF
	
	public function get signal():TextInputSignalSet{return _signal;}//EOF
}//EOC
}//EOP


import fl.controls.TextInput;
import fl.events.*;
import flash.events.Event;
import org.osflash.signals.natives.NativeSignal;
import org.osflash.signals.natives.sets.EventDispatcherSignalSet;

class TextInputSignalSet extends EventDispatcherSignalSet
{
	public function TextInputSignalSet(target:TextInput)
	{
		super(target);
	}
	
	public function get enter():NativeSignal
	{
		return getNativeSignal(ComponentEvent.ENTER);
	}
	
	public function get change():NativeSignal
	{
		return getNativeSignal(Event.CHANGE);
	}
}//EOC