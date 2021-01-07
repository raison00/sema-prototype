
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IAdCopyStatsService
    {
    	//Stub functions for the getAdCopyStats operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAdCopyStats
    	 * @param AdCopyIds
    	 * @param Type
    	 * @return An AsyncToken
    	 */
    	function getAdCopyStats(getAdCopyStats:GetAdCopyStats):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAdCopyStats_send():AsyncToken;
        
        /**
         * The getAdCopyStats operation lastResult property
         */
        function get getAdCopyStats_lastResult():GetAdCopyStatsResponse;
		/**
		 * @private
		 */
        function set getAdCopyStats_lastResult(lastResult:GetAdCopyStatsResponse):void;
       /**
        * Add a listener for the getAdCopyStats operation successful result event
        * @param The listener function
        */
       function addgetAdCopyStatsEventListener(listener:Function):void;
       
       
        /**
         * The getAdCopyStats operation request wrapper
         */
        function get getAdCopyStats_request_var():GetAdCopyStats_request;
        
        /**
         * @private
         */
        function set getAdCopyStats_request_var(request:GetAdCopyStats_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseAdCopyStatsService;
	}
}