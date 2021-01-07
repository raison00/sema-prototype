
/**
 * KeyWordGeneratorServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:KeyWordGeneratorService= new KeyWordGeneratorService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetKeywordVariationsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getKeywordVariations(mygetKeywordVariations,mySeedKeyword);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:KeyWordGeneratorService id="myService">
  *   <srv:getKeywordVariations_request_var>
  *		<srv:GetKeywordVariations_request getKeywordVariations=myValue,SeedKeyword=myValue/>
  *   </srv:getKeywordVariations_request_var>
  * </srv:KeyWordGeneratorService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getKeywordVariations_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getKeywordVariations completes with success
     * and returns some data
     * @eventType GetKeywordVariationsResultEvent
     */
    [Event(name="GetKeywordVariations_result", type="com.macys.marketing.sema.GetKeywordVariationsResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class KeyWordGeneratorService extends EventDispatcher implements IKeyWordGeneratorService
	{
    	private var _baseService:BaseKeyWordGeneratorService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function KeyWordGeneratorService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseKeyWordGeneratorService(destination,rootURL);
        }
        
		//stub functions for the getKeywordVariations operation
          

        /**
         * @see IKeyWordGeneratorService#getKeywordVariations()
         */
        public function getKeywordVariations(getKeywordVariations:GetKeywordVariations):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getKeywordVariations(_getKeywordVariations_header.userName7,getKeywordVariations);
            _internal_token.addEventListener("result",_getKeywordVariations_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IKeyWordGeneratorService#getKeywordVariations_send()
		 */    
        public function getKeywordVariations_send():AsyncToken
        {
        	return getKeywordVariations(_getKeywordVariations_request.getKeywordVariations);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getKeywordVariations_request:GetKeywordVariations_request;
		/**
		 * @see IKeyWordGeneratorService#getKeywordVariations_request_var
		 */
		[Bindable]
		public function get getKeywordVariations_request_var():GetKeywordVariations_request
		{
			return _getKeywordVariations_request;
		}
		
		/**
		 * @private
		 */
		public function set getKeywordVariations_request_var(request:GetKeywordVariations_request):void
		{
			_getKeywordVariations_request = request;
		}
					  
		/**
		 * Internal representation of the header wrapper
		 * @private
		 */
		private var _getKeywordVariations_header:Object;
		[Bindable]
		/**
		 * @see IKeyWordGeneratorService#getKeywordVariations_header
		 */
		public function get getKeywordVariations_header():Object
		{
			return _getKeywordVariations_header;
		}
		public function set getKeywordVariations_header(header:Object):void
		{
			_getKeywordVariations_header = header;
		}
		/**
		 * Add values for the various parts of the header
         * @param 
         userName7
		 */ 
		public function addgetKeywordVariations_header(userName7:com.macys.marketing.sema.UserName):void
		{
			_getKeywordVariations_header = new Object;
            _getKeywordVariations_header.userName7 = userName7;
              		
		}
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getKeywordVariations_lastResult:GetKeywordVariationsResponse;
		[Bindable]
		/**
		 * @see IKeyWordGeneratorService#getKeywordVariations_lastResult
		 */	  
		public function get getKeywordVariations_lastResult():GetKeywordVariationsResponse
		{
			return _getKeywordVariations_lastResult;
		}
		/**
		 * @private
		 */
		public function set getKeywordVariations_lastResult(lastResult:GetKeywordVariationsResponse):void
		{
			_getKeywordVariations_lastResult = lastResult;
		}
		
		/**
		 * @see IKeyWordGeneratorService#addgetKeywordVariations()
		 */
		public function addgetKeywordVariationsEventListener(listener:Function):void
		{
			addEventListener(GetKeywordVariationsResultEvent.GetKeywordVariations_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getKeywordVariations_populate_results(event:ResultEvent):void
        {
        var e:GetKeywordVariationsResultEvent = new GetKeywordVariationsResultEvent();
		            e.result = event.result as GetKeywordVariationsResponse;
		                       e.headers = event.headers;
		             getKeywordVariations_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IKeyWordGeneratorService#getWebService()
		 */
		public function getWebService():BaseKeyWordGeneratorService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addKeyWordGeneratorServiceFaultEventListener(listener:Function):void
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
