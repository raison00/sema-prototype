
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface ICampaignStatsService
    {
    	//Stub functions for the getCampaignStats operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getCampaignStats
    	 * @param CampaignIds
    	 * @param Type
    	 * @return An AsyncToken
    	 */
    	function getCampaignStats(getCampaignStats:GetCampaignStats):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCampaignStats_send():AsyncToken;
        
        /**
         * The getCampaignStats operation lastResult property
         */
        function get getCampaignStats_lastResult():GetCampaignStatsResponse;
		/**
		 * @private
		 */
        function set getCampaignStats_lastResult(lastResult:GetCampaignStatsResponse):void;
       /**
        * Add a listener for the getCampaignStats operation successful result event
        * @param The listener function
        */
       function addgetCampaignStatsEventListener(listener:Function):void;
       
       
        /**
         * The getCampaignStats operation request wrapper
         */
        function get getCampaignStats_request_var():GetCampaignStats_request;
        
        /**
         * @private
         */
        function set getCampaignStats_request_var(request:GetCampaignStats_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseCampaignStatsService;
	}
}