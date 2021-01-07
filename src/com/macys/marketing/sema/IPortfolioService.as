
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IPortfolioService
    {
    	//Stub functions for the putPortfolios operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param Portfolios
    	 * @param putPortfolios
    	 * @return An AsyncToken
    	 */
    	function putPortfolios(putPortfolios:PutPortfolios):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function putPortfolios_send():AsyncToken;
        
        /**
         * The putPortfolios operation lastResult property
         */
        function get putPortfolios_lastResult():PutPortfoliosResponse;
		/**
		 * @private
		 */
        function set putPortfolios_lastResult(lastResult:PutPortfoliosResponse):void;
       /**
        * Add a listener for the putPortfolios operation successful result event
        * @param The listener function
        */
       function addputPortfoliosEventListener(listener:Function):void;
       
       
        /**
         * The putPortfolios operation request wrapper
         */
        function get putPortfolios_request_var():PutPortfolios_request;
        
        /**
         * @private
         */
        function set putPortfolios_request_var(request:PutPortfolios_request):void;
                   
    	//Stub functions for the getPortfolioList operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param PortfolioIds
    	 * @param getPortfolioList
    	 * @return An AsyncToken
    	 */
    	function getPortfolioList(getPortfolioList:GetPortfolioList):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getPortfolioList_send():AsyncToken;
        
        /**
         * The getPortfolioList operation lastResult property
         */
        function get getPortfolioList_lastResult():GetPortfolioListResponse;
		/**
		 * @private
		 */
        function set getPortfolioList_lastResult(lastResult:GetPortfolioListResponse):void;
       /**
        * Add a listener for the getPortfolioList operation successful result event
        * @param The listener function
        */
       function addgetPortfolioListEventListener(listener:Function):void;
       
       
        /**
         * The getPortfolioList operation request wrapper
         */
        function get getPortfolioList_request_var():GetPortfolioList_request;
        
        /**
         * @private
         */
        function set getPortfolioList_request_var(request:GetPortfolioList_request):void;
                   
    	//Stub functions for the getAllPortfolios operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param getAllPortfolios
    	 * @param PortfolioGroupId
    	 * @return An AsyncToken
    	 */
    	function getAllPortfolios(getAllPortfolios:GetAllPortfolios):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllPortfolios_send():AsyncToken;
        
        /**
         * The getAllPortfolios operation lastResult property
         */
        function get getAllPortfolios_lastResult():GetAllPortfoliosResponse;
		/**
		 * @private
		 */
        function set getAllPortfolios_lastResult(lastResult:GetAllPortfoliosResponse):void;
       /**
        * Add a listener for the getAllPortfolios operation successful result event
        * @param The listener function
        */
       function addgetAllPortfoliosEventListener(listener:Function):void;
       
       
        /**
         * The getAllPortfolios operation request wrapper
         */
        function get getAllPortfolios_request_var():GetAllPortfolios_request;
        
        /**
         * @private
         */
        function set getAllPortfolios_request_var(request:GetAllPortfolios_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BasePortfolioService;
	}
}