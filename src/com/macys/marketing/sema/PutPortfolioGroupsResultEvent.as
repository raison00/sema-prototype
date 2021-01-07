/**
 * PutPortfolioGroupsResultEvent.as
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
    
    public class PutPortfolioGroupsResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var PutPortfolioGroups_RESULT:String="PutPortfolioGroups_result";
        /**
         * Constructor for the new event type
         */
        public function PutPortfolioGroupsResultEvent()
        {
            super(PutPortfolioGroups_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:PutPortfolioGroupsResponse;
         public function get result():PutPortfolioGroupsResponse
        {
            return _result;
        }
        
        public function set result(value:PutPortfolioGroupsResponse):void
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