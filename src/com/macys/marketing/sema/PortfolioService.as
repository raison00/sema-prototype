
/**
 * PortfolioServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:PortfolioService= new PortfolioService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addputPortfoliosEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.putPortfolios(myPortfolios,myputPortfolios);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:PortfolioService id="myService">
  *   <srv:putPortfolios_request_var>
  *		<srv:PutPortfolios_request Portfolios=myValue,putPortfolios=myValue/>
  *   </srv:putPortfolios_request_var>
  * </srv:PortfolioService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.putPortfolios_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation putPortfolios completes with success
     * and returns some data
     * @eventType PutPortfoliosResultEvent
     */
    [Event(name="PutPortfolios_result", type="com.macys.marketing.sema.PutPortfoliosResultEvent")]
    
    /**
     * Dispatches when a call to the operation getPortfolioList completes with success
     * and returns some data
     * @eventType GetPortfolioListResultEvent
     */
    [Event(name="GetPortfolioList_result", type="com.macys.marketing.sema.GetPortfolioListResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllPortfolios completes with success
     * and returns some data
     * @eventType GetAllPortfoliosResultEvent
     */
    [Event(name="GetAllPortfolios_result", type="com.macys.marketing.sema.GetAllPortfoliosResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class PortfolioService extends EventDispatcher implements IPortfolioService
	{
    	private var _baseService:BasePortfolioService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function PortfolioService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BasePortfolioService(destination,rootURL);
        }
        
		//stub functions for the putPortfolios operation
          

        /**
         * @see IPortfolioService#putPortfolios()
         */
        public function putPortfolios(putPortfolios:PutPortfolios):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.putPortfolios(_putPortfolios_header.userName15,putPortfolios);
            _internal_token.addEventListener("result",_putPortfolios_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IPortfolioService#putPortfolios_send()
		 */    
        public function putPortfolios_send():AsyncToken
        {
        	return putPortfolios(_putPortfolios_request.putPortfolios);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _putPortfolios_request:PutPortfolios_request;
		/**
		 * @see IPortfolioService#putPortfolios_request_var
		 */
		[Bindable]
		public function get putPortfolios_request_var():PutPortfolios_request
		{
			return _putPortfolios_request;
		}
		
		/**
		 * @private
		 */
		public function set putPortfolios_request_var(request:PutPortfolios_request):void
		{
			_putPortfolios_request = request;
		}
					  
		/**
		 * Internal representation of the header wrapper
		 * @private
		 */
		private var _putPortfolios_header:Object;
		[Bindable]
		/**
		 * @see IPortfolioService#putPortfolios_header
		 */
		public function get putPortfolios_header():Object
		{
			return _putPortfolios_header;
		}
		public function set putPortfolios_header(header:Object):void
		{
			_putPortfolios_header = header;
		}
		/**
		 * Add values for the various parts of the header
         * @param 
         userName15
		 */ 
		public function addputPortfolios_header(userName15:com.macys.marketing.sema.UserName):void
		{
			_putPortfolios_header = new Object;
            _putPortfolios_header.userName15 = userName15;
              		
		}
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _putPortfolios_lastResult:PutPortfoliosResponse;
		[Bindable]
		/**
		 * @see IPortfolioService#putPortfolios_lastResult
		 */	  
		public function get putPortfolios_lastResult():PutPortfoliosResponse
		{
			return _putPortfolios_lastResult;
		}
		/**
		 * @private
		 */
		public function set putPortfolios_lastResult(lastResult:PutPortfoliosResponse):void
		{
			_putPortfolios_lastResult = lastResult;
		}
		
		/**
		 * @see IPortfolioService#addputPortfolios()
		 */
		public function addputPortfoliosEventListener(listener:Function):void
		{
			addEventListener(PutPortfoliosResultEvent.PutPortfolios_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _putPortfolios_populate_results(event:ResultEvent):void
        {
        var e:PutPortfoliosResultEvent = new PutPortfoliosResultEvent();
		            e.result = event.result as PutPortfoliosResponse;
		                       e.headers = event.headers;
		             putPortfolios_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the getPortfolioList operation
          

        /**
         * @see IPortfolioService#getPortfolioList()
         */
        public function getPortfolioList(getPortfolioList:GetPortfolioList):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getPortfolioList(getPortfolioList);
            _internal_token.addEventListener("result",_getPortfolioList_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IPortfolioService#getPortfolioList_send()
		 */    
        public function getPortfolioList_send():AsyncToken
        {
        	return getPortfolioList(_getPortfolioList_request.getPortfolioList);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getPortfolioList_request:GetPortfolioList_request;
		/**
		 * @see IPortfolioService#getPortfolioList_request_var
		 */
		[Bindable]
		public function get getPortfolioList_request_var():GetPortfolioList_request
		{
			return _getPortfolioList_request;
		}
		
		/**
		 * @private
		 */
		public function set getPortfolioList_request_var(request:GetPortfolioList_request):void
		{
			_getPortfolioList_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getPortfolioList_lastResult:GetPortfolioListResponse;
		[Bindable]
		/**
		 * @see IPortfolioService#getPortfolioList_lastResult
		 */	  
		public function get getPortfolioList_lastResult():GetPortfolioListResponse
		{
			return _getPortfolioList_lastResult;
		}
		/**
		 * @private
		 */
		public function set getPortfolioList_lastResult(lastResult:GetPortfolioListResponse):void
		{
			_getPortfolioList_lastResult = lastResult;
		}
		
		/**
		 * @see IPortfolioService#addgetPortfolioList()
		 */
		public function addgetPortfolioListEventListener(listener:Function):void
		{
			addEventListener(GetPortfolioListResultEvent.GetPortfolioList_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getPortfolioList_populate_results(event:ResultEvent):void
        {
        var e:GetPortfolioListResultEvent = new GetPortfolioListResultEvent();
		            e.result = event.result as GetPortfolioListResponse;
		                       e.headers = event.headers;
		             getPortfolioList_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the getAllPortfolios operation
          

        /**
         * @see IPortfolioService#getAllPortfolios()
         */
        public function getAllPortfolios(getAllPortfolios:GetAllPortfolios):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllPortfolios(getAllPortfolios);
            _internal_token.addEventListener("result",_getAllPortfolios_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IPortfolioService#getAllPortfolios_send()
		 */    
        public function getAllPortfolios_send():AsyncToken
        {
        	return getAllPortfolios(_getAllPortfolios_request.getAllPortfolios);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllPortfolios_request:GetAllPortfolios_request;
		/**
		 * @see IPortfolioService#getAllPortfolios_request_var
		 */
		[Bindable]
		public function get getAllPortfolios_request_var():GetAllPortfolios_request
		{
			return _getAllPortfolios_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllPortfolios_request_var(request:GetAllPortfolios_request):void
		{
			_getAllPortfolios_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllPortfolios_lastResult:GetAllPortfoliosResponse;
		[Bindable]
		/**
		 * @see IPortfolioService#getAllPortfolios_lastResult
		 */	  
		public function get getAllPortfolios_lastResult():GetAllPortfoliosResponse
		{
			return _getAllPortfolios_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllPortfolios_lastResult(lastResult:GetAllPortfoliosResponse):void
		{
			_getAllPortfolios_lastResult = lastResult;
		}
		
		/**
		 * @see IPortfolioService#addgetAllPortfolios()
		 */
		public function addgetAllPortfoliosEventListener(listener:Function):void
		{
			addEventListener(GetAllPortfoliosResultEvent.GetAllPortfolios_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllPortfolios_populate_results(event:ResultEvent):void
        {
        var e:GetAllPortfoliosResultEvent = new GetAllPortfoliosResultEvent();
		            e.result = event.result as GetAllPortfoliosResponse;
		                       e.headers = event.headers;
		             getAllPortfolios_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IPortfolioService#getWebService()
		 */
		public function getWebService():BasePortfolioService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addPortfolioServiceFaultEventListener(listener:Function):void
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
