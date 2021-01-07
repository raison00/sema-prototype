
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IAdGroupService
    {
    	//Stub functions for the getAllAdGroups operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllAdGroups
    	 * @param CampaignId
    	 * @return An AsyncToken
    	 */
    	function getAllAdGroups(getAllAdGroups:GetAllAdGroups):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllAdGroups_send():AsyncToken;
        
        /**
         * The getAllAdGroups operation lastResult property
         */
        function get getAllAdGroups_lastResult():GetAllAdGroupsResponse;
		/**
		 * @private
		 */
        function set getAllAdGroups_lastResult(lastResult:GetAllAdGroupsResponse):void;
       /**
        * Add a listener for the getAllAdGroups operation successful result event
        * @param The listener function
        */
       function addgetAllAdGroupsEventListener(listener:Function):void;
       
       
        /**
         * The getAllAdGroups operation request wrapper
         */
        function get getAllAdGroups_request_var():GetAllAdGroups_request;
        
        /**
         * @private
         */
        function set getAllAdGroups_request_var(request:GetAllAdGroups_request):void;
                   
    	//Stub functions for the putAdGroup operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param putAdGroup
    	 * @param AdGroup
    	 * @return An AsyncToken
    	 */
    	function putAdGroup(putAdGroup:PutAdGroup):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function putAdGroup_send():AsyncToken;
        
        /**
         * The putAdGroup operation lastResult property
         */
        function get putAdGroup_lastResult():PutAdGroupResponse;
		/**
		 * @private
		 */
        function set putAdGroup_lastResult(lastResult:PutAdGroupResponse):void;
       /**
        * Add a listener for the putAdGroup operation successful result event
        * @param The listener function
        */
       function addputAdGroupEventListener(listener:Function):void;
       
       
        /**
         * The putAdGroup operation request wrapper
         */
        function get putAdGroup_request_var():PutAdGroup_request;
        
        /**
         * @private
         */
        function set putAdGroup_request_var(request:PutAdGroup_request):void;
                   
    	//Stub functions for the getAdGroupList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param AdGroupIds
    	 * @param getAdGroupList
    	 * @return An AsyncToken
    	 */
    	function getAdGroupList(getAdGroupList:GetAdGroupList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAdGroupList_send():AsyncToken;
        
        /**
         * The getAdGroupList operation lastResult property
         */
        function get getAdGroupList_lastResult():GetAdGroupListResponse;
		/**
		 * @private
		 */
        function set getAdGroupList_lastResult(lastResult:GetAdGroupListResponse):void;
       /**
        * Add a listener for the getAdGroupList operation successful result event
        * @param The listener function
        */
       function addgetAdGroupListEventListener(listener:Function):void;
       
       
        /**
         * The getAdGroupList operation request wrapper
         */
        function get getAdGroupList_request_var():GetAdGroupList_request;
        
        /**
         * @private
         */
        function set getAdGroupList_request_var(request:GetAdGroupList_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseAdGroupService;
	}
}