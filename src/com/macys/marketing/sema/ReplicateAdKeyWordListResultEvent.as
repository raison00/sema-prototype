/**
 * ReplicateAdKeyWordListResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package com.macys.marketing.sema
{
    import mx.utils.ObjectProxy;
    import flash.events.Event;
    import flash.utils.ByteArray;
    import mx.rpc.soap.types.*;
    /**
     * Typed event handler for the result of the operation
     */
    
    public class ReplicateAdKeyWordListResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var ReplicateAdKeyWordList_RESULT:String="ReplicateAdKeyWordList_result";
        /**
         * Constructor for the new event type
         */
        public function ReplicateAdKeyWordListResultEvent()
        {
            super(ReplicateAdKeyWordList_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:ReplicateAdKeyWordListResponse;
         public function get result():ReplicateAdKeyWordListResponse
        {
            return _result;
        }
        
        public function set result(value:ReplicateAdKeyWordListResponse):void
        {
            _result = value;
        }

        public function get headers():Object
	    {
            return _headers;
	    }
			
	    public function set headers(value:Object):void
	    {
            _headers = value;
	    }
    }
}