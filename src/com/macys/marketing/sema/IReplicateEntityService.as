
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IReplicateEntityService
    {
    	//Stub functions for the ReplicateAdCopyList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param ReplicateAdCopyList
    	 * @param ReplicateAdCopy
    	 * @return An AsyncToken
    	 */
    	function replicateAdCopyList(replicateAdCopyList:ReplicateAdCopyList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function replicateAdCopyList_send():AsyncToken;
        
        /**
         * The replicateAdCopyList operation lastResult property
         */
        function get replicateAdCopyList_lastResult():ReplicateAdCopyListResponse;
		/**
		 * @private
		 */
        function set replicateAdCopyList_lastResult(lastResult:ReplicateAdCopyListResponse):void;
       /**
        * Add a listener for the replicateAdCopyList operation successful result event
        * @param The listener function
        */
       function addreplicateAdCopyListEventListener(listener:Function):void;
       
       
        /**
         * The replicateAdCopyList operation request wrapper
         */
        function get replicateAdCopyList_request_var():ReplicateAdCopyList_request;
        
        /**
         * @private
         */
        function set replicateAdCopyList_request_var(request:ReplicateAdCopyList_request):void;
                   
    	//Stub functions for the ReplicateAdKeyWordList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param ReplicateAdKeyWord
    	 * @param ReplicateAdKeyWordList
    	 * @return An AsyncToken
    	 */
    	function replicateAdKeyWordList(replicateAdKeyWordList:ReplicateAdKeyWordList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function replicateAdKeyWordList_send():AsyncToken;
        
        /**
         * The replicateAdKeyWordList operation lastResult property
         */
        function get replicateAdKeyWordList_lastResult():ReplicateAdKeyWordListResponse;
		/**
		 * @private
		 */
        function set replicateAdKeyWordList_lastResult(lastResult:ReplicateAdKeyWordListResponse):void;
       /**
        * Add a listener for the replicateAdKeyWordList operation successful result event
        * @param The listener function
        */
       function addreplicateAdKeyWordListEventListener(listener:Function):void;
       
       
        /**
         * The replicateAdKeyWordList operation request wrapper
         */
        function get replicateAdKeyWordList_request_var():ReplicateAdKeyWordList_request;
        
        /**
         * @private
         */
        function set replicateAdKeyWordList_request_var(request:ReplicateAdKeyWordList_request):void;
                   
    	//Stub functions for the ReplicateAdGroupList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param ReplicateAdGroupList
    	 * @param ReplicateAdGroup
    	 * @return An AsyncToken
    	 */
    	function replicateAdGroupList(replicateAdGroupList:ReplicateAdGroupList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function replicateAdGroupList_send():AsyncToken;
        
        /**
         * The replicateAdGroupList operation lastResult property
         */
        function get replicateAdGroupList_lastResult():ReplicateAdGroupListResponse;
		/**
		 * @private
		 */
        function set replicateAdGroupList_lastResult(lastResult:ReplicateAdGroupListResponse):void;
       /**
        * Add a listener for the replicateAdGroupList operation successful result event
        * @param The listener function
        */
       function addreplicateAdGroupListEventListener(listener:Function):void;
       
       
        /**
         * The replicateAdGroupList operation request wrapper
         */
        function get replicateAdGroupList_request_var():ReplicateAdGroupList_request;
        
        /**
         * @private
         */
        function set replicateAdGroupList_request_var(request:ReplicateAdGroupList_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseReplicateEntityService;
	}
}