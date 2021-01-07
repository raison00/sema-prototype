
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ICampaignService
    {
    	//Stub functions for the getCampaignList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param CampaignIds
    	 * @param getCampaignList
    	 * @return An AsyncToken
    	 */
    	function getCampaignList(getCampaignList:GetCampaignList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCampaignList_send():AsyncToken;
        
        /**
         * The getCampaignList operation lastResult property
         */
        function get getCampaignList_lastResult():GetCampaignListResponse;
		/**
		 * @private
		 */
        function set getCampaignList_lastResult(lastResult:GetCampaignListResponse):void;
       /**
        * Add a listener for the getCampaignList operation successful result event
        * @param The listener function
        */
       function addgetCampaignListEventListener(listener:Function):void;
       
       
        /**
         * The getCampaignList operation request wrapper
         */
        function get getCampaignList_request_var():GetCampaignList_request;
        
        /**
         * @private
         */
        function set getCampaignList_request_var(request:GetCampaignList_request):void;
                   
    	//Stub functions for the putCampaigns operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param putCampaigns
    	 * @param Campaigns
    	 * @return An AsyncToken
    	 */
    	function putCampaigns(putCampaigns:PutCampaigns):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function putCampaigns_send():AsyncToken;
        
        /**
         * The putCampaigns operation lastResult property
         */
        function get putCampaigns_lastResult():PutCampaignsResponse;
		/**
		 * @private
		 */
        function set putCampaigns_lastResult(lastResult:PutCampaignsResponse):void;
       /**
        * Add a listener for the putCampaigns operation successful result event
        * @param The listener function
        */
       function addputCampaignsEventListener(listener:Function):void;
       
       
        /**
         * The putCampaigns operation request wrapper
         */
        function get putCampaigns_request_var():PutCampaigns_request;
        
        /**
         * @private
         */
        function set putCampaigns_request_var(request:PutCampaigns_request):void;
                   
    	//Stub functions for the getAllCampaigns operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param PortfolioId
    	 * @param getAllCampaigns
    	 * @return An AsyncToken
    	 */
    	function getAllCampaigns(getAllCampaigns:GetAllCampaigns):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllCampaigns_send():AsyncToken;
        
        /**
         * The getAllCampaigns operation lastResult property
         */
        function get getAllCampaigns_lastResult():GetAllCampaignsResponse;
		/**
		 * @private
		 */
        function set getAllCampaigns_lastResult(lastResult:GetAllCampaignsResponse):void;
       /**
        * Add a listener for the getAllCampaigns operation successful result event
        * @param The listener function
        */
       function addgetAllCampaignsEventListener(listener:Function):void;
       
       
        /**
         * The getAllCampaigns operation request wrapper
         */
        function get getAllCampaigns_request_var():GetAllCampaigns_request;
        
        /**
         * @private
         */
        function set getAllCampaigns_request_var(request:GetAllCampaigns_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseCampaignService;
	}
}