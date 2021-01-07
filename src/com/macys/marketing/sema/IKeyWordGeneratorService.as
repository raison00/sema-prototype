
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IKeyWordGeneratorService
    {
    	//Stub functions for the getKeywordVariations operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getKeywordVariations
    	 * @param SeedKeyword
    	 * @return An AsyncToken
    	 */
    	function getKeywordVariations(getKeywordVariations:GetKeywordVariations):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getKeywordVariations_send():AsyncToken;
        
        /**
         * The getKeywordVariations operation lastResult property
         */
        function get getKeywordVariations_lastResult():GetKeywordVariationsResponse;
		/**
		 * @private
		 */
        function set getKeywordVariations_lastResult(lastResult:GetKeywordVariationsResponse):void;
       /**
        * Add a listener for the getKeywordVariations operation successful result event
        * @param The listener function
        */
       function addgetKeywordVariationsEventListener(listener:Function):void;
       
       
        /**
         * The getKeywordVariations operation request wrapper
         */
        function get getKeywordVariations_request_var():GetKeywordVariations_request;
        
        /**
         * @private
         */
        function set getKeywordVariations_request_var(request:GetKeywordVariations_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseKeyWordGeneratorService;
	}
}