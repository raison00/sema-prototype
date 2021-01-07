
/**
 * CampaignStatsServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:CampaignStatsService= new CampaignStatsService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetCampaignStatsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getCampaignStats(mygetCampaignStats,myCampaignIds,myType);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:CampaignStatsService id="myService">
  *   <srv:getCampaignStats_request_var>
  *		<srv:GetCampaignStats_request getCampaignStats=myValue,CampaignIds=myValue,Type=myValue/>
  *   </srv:getCampaignStats_request_var>
  * </srv:CampaignStatsService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getCampaignStats_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getCampaignStats completes with success
     * and returns some data
     * @eventType GetCampaignStatsResultEvent
     */
    [Event(name="GetCampaignStats_result", type="com.macys.marketing.sema.GetCampaignStatsResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class CampaignStatsService extends EventDispatcher implements ICampaignStatsService
	{
    	private var _baseService:BaseCampaignStatsService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function CampaignStatsService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseCampaignStatsService(destination,rootURL);
        }
        
		//stub functions for the getCampaignStats operation
          

        /**
         * @see ICampaignStatsService#getCampaignStats()
         */
        public function getCampaignStats(getCampaignStats:GetCampaignStats):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCampaignStats(getCampaignStats);
            _internal_token.addEventListener("result",_getCampaignStats_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see ICampaignStatsService#getCampaignStats_send()
		 */    
        public function getCampaignStats_send():AsyncToken
        {
        	return getCampaignStats(_getCampaignStats_request.getCampaignStats);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCampaignStats_request:GetCampaignStats_request;
		/**
		 * @see ICampaignStatsService#getCampaignStats_request_var
		 */
		[Bindable]
		public function get getCampaignStats_request_var():GetCampaignStats_request
		{
			return _getCampaignStats_request;
		}
		
		/**
		 * @private
		 */
		public function set getCampaignStats_request_var(request:GetCampaignStats_request):void
		{
			_getCampaignStats_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCampaignStats_lastResult:GetCampaignStatsResponse;
		[Bindable]
		/**
		 * @see ICampaignStatsService#getCampaignStats_lastResult
		 */	  
		public function get getCampaignStats_lastResult():GetCampaignStatsResponse
		{
			return _getCampaignStats_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCampaignStats_lastResult(lastResult:GetCampaignStatsResponse):void
		{
			_getCampaignStats_lastResult = lastResult;
		}
		
		/**
		 * @see ICampaignStatsService#addgetCampaignStats()
		 */
		public function addgetCampaignStatsEventListener(listener:Function):void
		{
			addEventListener(GetCampaignStatsResultEvent.GetCampaignStats_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCampaignStats_populate_results(event:ResultEvent):void
        {
        var e:GetCampaignStatsResultEvent = new GetCampaignStatsResultEvent();
		            e.result = event.result as GetCampaignStatsResponse;
		                       e.headers = event.headers;
		             getCampaignStats_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see ICampaignStatsService#getWebService()
		 */
		public function getWebService():BaseCampaignStatsService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addCampaignStatsServiceFaultEventListener(listener:Function):void
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
