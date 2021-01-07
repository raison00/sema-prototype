/**
 * GetAllAdKeywordsResultEvent.as
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
    
    public class GetAllAdKeywordsResultEvent extends Event
    {
        /**
         * The event type value
         */
        public static var GetAllAdKeywords_RESULT:String="GetAllAdKeywords_result";
        /**
         * Constructor for the new event type
         */
        public function GetAllAdKeywordsResultEvent()
        {
            super(GetAllAdKeywords_RESULT,false,false);
        }
        
        private var _headers:Object;
        private var _result:GetAllAdKeywordsResponse;
         public function get result():GetAllAdKeywordsResponse
        {
            return _result;
        }
        
        public function set result(value:GetAllAdKeywordsResponse):void
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