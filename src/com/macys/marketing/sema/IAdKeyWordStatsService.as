
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IAdKeyWordStatsService
    {
    	//Stub functions for the getAdKeyWordStats operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param AdKeyWordIds
    	 * @param Type
    	 * @param getAdKeyWordStats
    	 * @return An AsyncToken
    	 */
    	function getAdKeyWordStats(getAdKeyWordStats:GetAdKeyWordStats):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAdKeyWordStats_send():AsyncToken;
        
        /**
         * The getAdKeyWordStats operation lastResult property
         */
        function get getAdKeyWordStats_lastResult():GetAdKeyWordStatsResponse;
		/**
		 * @private
		 */
        function set getAdKeyWordStats_lastResult(lastResult:GetAdKeyWordStatsResponse):void;
       /**
        * Add a listener for the getAdKeyWordStats operation successful result event
        * @param The listener function
        */
       function addgetAdKeyWordStatsEventListener(listener:Function):void;
       
       
        /**
         * The getAdKeyWordStats operation request wrapper
         */
        function get getAdKeyWordStats_request_var():GetAdKeyWordStats_request;
        
        /**
         * @private
         */
        function set getAdKeyWordStats_request_var(request:GetAdKeyWordStats_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseAdKeyWordStatsService;
	}
}