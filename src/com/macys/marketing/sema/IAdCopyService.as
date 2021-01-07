
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IAdCopyService
    {
    	//Stub functions for the getAllAdCopy operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllAdCopy
    	 * @param GroupId
    	 * @return An AsyncToken
    	 */
    	function getAllAdCopy(getAllAdCopy:GetAllAdCopy):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllAdCopy_send():AsyncToken;
        
        /**
         * The getAllAdCopy operation lastResult property
         */
        function get getAllAdCopy_lastResult():GetAllAdCopyResponse;
		/**
		 * @private
		 */
        function set getAllAdCopy_lastResult(lastResult:GetAllAdCopyResponse):void;
       /**
        * Add a listener for the getAllAdCopy operation successful result event
        * @param The listener function
        */
       function addgetAllAdCopyEventListener(listener:Function):void;
       
       
        /**
         * The getAllAdCopy operation request wrapper
         */
        function get getAllAdCopy_request_var():GetAllAdCopy_request;
        
        /**
         * @private
         */
        function set getAllAdCopy_request_var(request:GetAllAdCopy_request):void;
                   
    	//Stub functions for the getAdCopyList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAdCopyList
    	 * @param AdCopyId
    	 * @return An AsyncToken
    	 */
    	function getAdCopyList(getAdCopyList:GetAdCopyList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAdCopyList_send():AsyncToken;
        
        /**
         * The getAdCopyList operation lastResult property
         */
        function get getAdCopyList_lastResult():GetAdCopyListResponse;
		/**
		 * @private
		 */
        function set getAdCopyList_lastResult(lastResult:GetAdCopyListResponse):void;
       /**
        * Add a listener for the getAdCopyList operation successful result event
        * @param The listener function
        */
       function addgetAdCopyListEventListener(listener:Function):void;
       
       
        /**
         * The getAdCopyList operation request wrapper
         */
        function get getAdCopyList_request_var():GetAdCopyList_request;
        
        /**
         * @private
         */
        function set getAdCopyList_request_var(request:GetAdCopyList_request):void;
                   
    	//Stub functions for the putAdCopyList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param putAdCopyList
    	 * @param AdCopy
    	 * @return An AsyncToken
    	 */
    	function putAdCopyList(putAdCopyList:PutAdCopyList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function putAdCopyList_send():AsyncToken;
        
        /**
         * The putAdCopyList operation lastResult property
         */
        function get putAdCopyList_lastResult():PutAdCopyListResponse;
		/**
		 * @private
		 */
        function set putAdCopyList_lastResult(lastResult:PutAdCopyListResponse):void;
       /**
        * Add a listener for the putAdCopyList operation successful result event
        * @param The listener function
        */
       function addputAdCopyListEventListener(listener:Function):void;
       
       
        /**
         * The putAdCopyList operation request wrapper
         */
        function get putAdCopyList_request_var():PutAdCopyList_request;
        
        /**
         * @private
         */
        function set putAdCopyList_request_var(request:PutAdCopyList_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseAdCopyService;
	}
}