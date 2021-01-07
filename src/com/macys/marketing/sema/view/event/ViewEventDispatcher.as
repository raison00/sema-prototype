
package com.macys.marketing.sema.view.event
{
    import flash.events.IEventDispatcher;
    import flash.events.EventDispatcher;
    import flash.events.Event;
    
    public class ViewEventDispatcher extends EventDispatcher
    {
        protected static var _internalReference:ViewEventDispatcher = new ViewEventDispatcher();
        
        public function ViewEventDispatcher(target:IEventDispatcher = null)
        {
            super(target);
        }
        
        override public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0.0, useWeakReference:Boolean = false):void
        {
             trace("[Dispatcher] adding listener for:", type);
            super.addEventListener(type, listener, useCapture, priority, useWeakReference);
        }
        
        override public function dispatchEvent(event:Event):Boolean
        {
            return super.dispatchEvent(event);
        }
        
        public static function dispatchViewEvent(event:Event):Boolean
        {
            return _internalReference.dispatchEvent(event);
        }
        
        public static function addViewEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0.0, useWeakReference:Boolean = false):void
        {
            _internalReference.addEventListener(type, listener, useCapture, priority, useWeakReference);
        }
    }
}