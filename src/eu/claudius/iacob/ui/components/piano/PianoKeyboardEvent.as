package eu.claudius.iacob.ui.components.piano {
    import flash.events.Event;


    public class PianoKeyboardEvent extends Event {
        public static const PIANO_KEYBOARD_EVENT : String = 'pianoKeyboardEvent';

        private var _keyCode:String;
        private var _octaveOffset:int;
        private var _isKeyDown:Boolean;

        public function PianoKeyboardEvent(keyCode:String, octaveOffset:int, isKeyDown:Boolean){
            super (PIANO_KEYBOARD_EVENT);
            _keyCode = keyCode;
            _octaveOffset = octaveOffset;
            _isKeyDown = isKeyDown;
        }

        public function get keyCode():String {
            return _keyCode;
        }

        public function get octaveOffset():int {
            return _octaveOffset;
        }

        public function get isKeyDown():Boolean {
            return _isKeyDown;
        }

        override public function get type () : String {
            return PIANO_KEYBOARD_EVENT;

        }

        override public function clone () : Event {
            return new PianoKeyboardEvent(_keyCode, _octaveOffset, _isKeyDown);
        }
    }
}
