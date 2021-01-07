
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IAdKeyWordService
    {
    	//Stub functions for the getAdKeywordList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAdKeywordList
    	 * @param AdKeywordId
    	 * @return An AsyncToken
    	 */
    	function getAdKeywordList(getAdKeywordList:GetAdKeywordList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAdKeywordList_send():AsyncToken;
        
        /**
         * The getAdKeywordList operation lastResult property
         */
        function get getAdKeywordList_lastResult():GetAdKeywordListResponse;
		/**
		 * @private
		 */
        function set getAdKeywordList_lastResult(lastResult:GetAdKeywordListResponse):void;
       /**
        * Add a listener for the getAdKeywordList operation successful result event
        * @param The listener function
        */
       function addgetAdKeywordListEventListener(listener:Function):void;
       
       
        /**
         * The getAdKeywordList operation request wrapper
         */
        function get getAdKeywordList_request_var():GetAdKeywordList_request;
        
        /**
         * @private
         */
        function set getAdKeywordList_request_var(request:GetAdKeywordList_request):void;
                   
    	//Stub functions for the getAllAdKeywords operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllAdKeywords
    	 * @param AdGroupId
    	 * @return An AsyncToken
    	 */
    	function getAllAdKeywords(getAllAdKeywords:GetAllAdKeywords):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllAdKeywords_send():AsyncToken;
        
        /**
         * The getAllAdKeywords operation lastResult property
         */
        function get getAllAdKeywords_lastResult():GetAllAdKeywordsResponse;
		/**
		 * @private
		 */
        function set getAllAdKeywords_lastResult(lastResult:GetAllAdKeywordsResponse):void;
       /**
        * Add a listener for the getAllAdKeywords operation successful result event
        * @param The listener function
        */
       function addgetAllAdKeywordsEventListener(listener:Function):void;
       
       
        /**
         * The getAllAdKeywords operation request wrapper
         */
        function get getAllAdKeywords_request_var():GetAllAdKeywords_request;
        
        /**
         * @private
         */
        function set getAllAdKeywords_request_var(request:GetAllAdKeywords_request):void;
                   
    	//Stub functions for the putAdKeywords operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param putAdKeywords
    	 * @param AdKeyword
    	 * @return An AsyncToken
    	 */
    	function putAdKeywords(putAdKeywords:PutAdKeywords):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function putAdKeywords_send():AsyncToken;
        
        /**
         * The putAdKeywords operation lastResult property
         */
        function get putAdKeywords_lastResult():PutAdKeywordsResponse;
		/**
		 * @private
		 */
        function set putAdKeywords_lastResult(lastResult:PutAdKeywordsResponse):void;
       /**
        * Add a listener for the putAdKeywords operation successful result event
        * @param The listener function
        */
       function addputAdKeywordsEventListener(listener:Function):void;
       
       
        /**
         * The putAdKeywords operation request wrapper
         */
        function get putAdKeywords_request_var():PutAdKeywords_request;
        
        /**
         * @private
         */
        function set putAdKeywords_request_var(request:PutAdKeywords_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseAdKeyWordService;
	}
}