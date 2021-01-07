
/**
 * AccountServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:AccountService= new AccountService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetAllAccountsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getAllAccounts(mygetAllAccounts);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:AccountService id="myService">
  *   <srv:getAllAccounts_request_var>
  *		<srv:GetAllAccounts_request getAllAccounts=myValue/>
  *   </srv:getAllAccounts_request_var>
  * </srv:AccountService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getAllAccounts_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getAllAccounts completes with success
     * and returns some data
     * @eventType GetAllAccountsResultEvent
     */
    [Event(name="GetAllAccounts_result", type="com.macys.marketing.sema.GetAllAccountsResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class AccountService extends EventDispatcher implements IAccountService
	{
    	private var _baseService:BaseAccountService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function AccountService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseAccountService(destination,rootURL);
        }
        
		//stub functions for the getAllAccounts operation
          

        /**
         * @see IAccountService#getAllAccounts()
         */
        public function getAllAccounts(getAllAccounts:GetAllAccounts):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllAccounts(getAllAccounts);
            _internal_token.addEventListener("result",_getAllAccounts_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IAccountService#getAllAccounts_send()
		 */    
        public function getAllAccounts_send():AsyncToken
        {
        	return getAllAccounts(_getAllAccounts_request.getAllAccounts);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllAccounts_request:GetAllAccounts_request;
		/**
		 * @see IAccountService#getAllAccounts_request_var
		 */
		[Bindable]
		public function get getAllAccounts_request_var():GetAllAccounts_request
		{
			return _getAllAccounts_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllAccounts_request_var(request:GetAllAccounts_request):void
		{
			_getAllAccounts_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllAccounts_lastResult:GetAllAccountsResponse;
		[Bindable]
		/**
		 * @see IAccountService#getAllAccounts_lastResult
		 */	  
		public function get getAllAccounts_lastResult():GetAllAccountsResponse
		{
			return _getAllAccounts_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllAccounts_lastResult(lastResult:GetAllAccountsResponse):void
		{
			_getAllAccounts_lastResult = lastResult;
		}
		
		/**
		 * @see IAccountService#addgetAllAccounts()
		 */
		public function addgetAllAccountsEventListener(listener:Function):void
		{
			addEventListener(GetAllAccountsResultEvent.GetAllAccounts_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllAccounts_populate_results(event:ResultEvent):void
        {
        var e:GetAllAccountsResultEvent = new GetAllAccountsResultEvent();
		            e.result = event.result as GetAllAccountsResponse;
		                       e.headers = event.headers;
		             getAllAccounts_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IAccountService#getWebService()
		 */
		public function getWebService():BaseAccountService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addAccountServiceFaultEventListener(listener:Function):void
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
