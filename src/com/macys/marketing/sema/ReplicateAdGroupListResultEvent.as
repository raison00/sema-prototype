/**
 * ReplicateAdGroupListResultEvent.as
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
    
    public class ReplicateAdGroupListResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var ReplicateAdGroupList_RESULT:String="ReplicateAdGroupList_result";
        /**
         * Constructor for the new event type
         */
        public function ReplicateAdGroupListResultEvent()
        {
            super(ReplicateAdGroupList_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:ReplicateAdGroupListResponse;
         public function get result():ReplicateAdGroupListResponse
        {
            return _result;
        }
        
        public function set result(value:ReplicateAdGroupListResponse):void
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