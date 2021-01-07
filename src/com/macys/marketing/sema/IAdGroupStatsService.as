
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IAdGroupStatsService
    {
    	//Stub functions for the getAdGroupStats operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param AdGroupIds
    	 * @param Type
    	 * @param getAdGroupStats
    	 * @return An AsyncToken
    	 */
    	function getAdGroupStats(getAdGroupStats:GetAdGroupStats):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAdGroupStats_send():AsyncToken;
        
        /**
         * The getAdGroupStats operation lastResult property
         */
        function get getAdGroupStats_lastResult():GetAdGroupStatsResponse;
		/**
		 * @private
		 */
        function set getAdGroupStats_lastResult(lastResult:GetAdGroupStatsResponse):void;
       /**
        * Add a listener for the getAdGroupStats operation successful result event
        * @param The listener function
        */
       function addgetAdGroupStatsEventListener(listener:Function):void;
       
       
        /**
         * The getAdGroupStats operation request wrapper
         */
        function get getAdGroupStats_request_var():GetAdGroupStats_request;
        
        /**
         * @private
         */
        function set getAdGroupStats_request_var(request:GetAdGroupStats_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseAdGroupStatsService;
	}
}