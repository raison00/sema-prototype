
/**
 * AdKeyWordStatsServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:AdKeyWordStatsService= new AdKeyWordStatsService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetAdKeyWordStatsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getAdKeyWordStats(myAdKeyWordIds,myType,mygetAdKeyWordStats);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:AdKeyWordStatsService id="myService">
  *   <srv:getAdKeyWordStats_request_var>
  *		<srv:GetAdKeyWordStats_request AdKeyWordIds=myValue,Type=myValue,getAdKeyWordStats=myValue/>
  *   </srv:getAdKeyWordStats_request_var>
  * </srv:AdKeyWordStatsService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getAdKeyWordStats_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getAdKeyWordStats completes with success
     * and returns some data
     * @eventType GetAdKeyWordStatsResultEvent
     */
    [Event(name="GetAdKeyWordStats_result", type="com.macys.marketing.sema.GetAdKeyWordStatsResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class AdKeyWordStatsService extends EventDispatcher implements IAdKeyWordStatsService
	{
    	private var _baseService:BaseAdKeyWordStatsService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function AdKeyWordStatsService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseAdKeyWordStatsService(destination,rootURL);
        }
        
		//stub functions for the getAdKeyWordStats operation
          

        /**
         * @see IAdKeyWordStatsService#getAdKeyWordStats()
         */
        public function getAdKeyWordStats(getAdKeyWordStats:GetAdKeyWordStats):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAdKeyWordStats(getAdKeyWordStats);
            _internal_token.addEventListener("result",_getAdKeyWordStats_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IAdKeyWordStatsService#getAdKeyWordStats_send()
		 */    
        public function getAdKeyWordStats_send():AsyncToken
        {
        	return getAdKeyWordStats(_getAdKeyWordStats_request.getAdKeyWordStats);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAdKeyWordStats_request:GetAdKeyWordStats_request;
		/**
		 * @see IAdKeyWordStatsService#getAdKeyWordStats_request_var
		 */
		[Bindable]
		public function get getAdKeyWordStats_request_var():GetAdKeyWordStats_request
		{
			return _getAdKeyWordStats_request;
		}
		
		/**
		 * @private
		 */
		public function set getAdKeyWordStats_request_var(request:GetAdKeyWordStats_request):void
		{
			_getAdKeyWordStats_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAdKeyWordStats_lastResult:GetAdKeyWordStatsResponse;
		[Bindable]
		/**
		 * @see IAdKeyWordStatsService#getAdKeyWordStats_lastResult
		 */	  
		public function get getAdKeyWordStats_lastResult():GetAdKeyWordStatsResponse
		{
			return _getAdKeyWordStats_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAdKeyWordStats_lastResult(lastResult:GetAdKeyWordStatsResponse):void
		{
			_getAdKeyWordStats_lastResult = lastResult;
		}
		
		/**
		 * @see IAdKeyWordStatsService#addgetAdKeyWordStats()
		 */
		public function addgetAdKeyWordStatsEventListener(listener:Function):void
		{
			addEventListener(GetAdKeyWordStatsResultEvent.GetAdKeyWordStats_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAdKeyWordStats_populate_results(event:ResultEvent):void
        {
        var e:GetAdKeyWordStatsResultEvent = new GetAdKeyWordStatsResultEvent();
		            e.result = event.result as GetAdKeyWordStatsResponse;
		                       e.headers = event.headers;
		             getAdKeyWordStats_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IAdKeyWordStatsService#getWebService()
		 */
		public function getWebService():BaseAdKeyWordStatsService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addAdKeyWordStatsServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
