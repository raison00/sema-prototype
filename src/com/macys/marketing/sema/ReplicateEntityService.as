
/**
 * ReplicateEntityServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:ReplicateEntityService= new ReplicateEntityService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addReplicateAdCopyListEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.ReplicateAdCopyList(myReplicateAdCopyList,myReplicateAdCopy);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ReplicateEntityService id="myService">
  *   <srv:ReplicateAdCopyList_request_var>
  *		<srv:ReplicateAdCopyList_request ReplicateAdCopyList=myValue,ReplicateAdCopy=myValue/>
  *   </srv:ReplicateAdCopyList_request_var>
  * </srv:ReplicateEntityService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.ReplicateAdCopyList_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation ReplicateAdCopyList completes with success
     * and returns some data
     * @eventType ReplicateAdCopyListResultEvent
     */
    [Event(name="ReplicateAdCopyList_result", type="com.macys.marketing.sema.ReplicateAdCopyListResultEvent")]
    
    /**
     * Dispatches when a call to the operation ReplicateAdKeyWordList completes with success
     * and returns some data
     * @eventType ReplicateAdKeyWordListResultEvent
     */
    [Event(name="ReplicateAdKeyWordList_result", type="com.macys.marketing.sema.ReplicateAdKeyWordListResultEvent")]
    
    /**
     * Dispatches when a call to the operation ReplicateAdGroupList completes with success
     * and returns some data
     * @eventType ReplicateAdGroupListResultEvent
     */
    [Event(name="ReplicateAdGroupList_result", type="com.macys.marketing.sema.ReplicateAdGroupListResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class ReplicateEntityService extends EventDispatcher implements IReplicateEntityService
	{
    	private var _baseService:BaseReplicateEntityService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function ReplicateEntityService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseReplicateEntityService(destination,rootURL);
        }
        
		//stub functions for the ReplicateAdCopyList operation
          

        /**
         * @see IReplicateEntityService#ReplicateAdCopyList()
         */
        public function replicateAdCopyList(replicateAdCopyList:ReplicateAdCopyList):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.replicateAdCopyList(_ReplicateAdCopyList_header.userName21,replicateAdCopyList);
            _internal_token.addEventListener("result",_ReplicateAdCopyList_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IReplicateEntityService#ReplicateAdCopyList_send()
		 */    
        public function replicateAdCopyList_send():AsyncToken
        {
        	return replicateAdCopyList(_ReplicateAdCopyList_request.ReplicateAdCopyList);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _ReplicateAdCopyList_request:ReplicateAdCopyList_request;
		/**
		 * @see IReplicateEntityService#ReplicateAdCopyList_request_var
		 */
		[Bindable]
		public function get replicateAdCopyList_request_var():ReplicateAdCopyList_request
		{
			return _ReplicateAdCopyList_request;
		}
		
		/**
		 * @private
		 */
		public function set replicateAdCopyList_request_var(request:ReplicateAdCopyList_request):void
		{
			_ReplicateAdCopyList_request = request;
		}
					  
		/**
		 * Internal representation of the header wrapper
		 * @private
		 */
		private var _ReplicateAdCopyList_header:Object;
		[Bindable]
		/**
		 * @see IReplicateEntityService#replicateAdCopyList_header
		 */
		public function get replicateAdCopyList_header():Object
		{
			return _ReplicateAdCopyList_header;
		}
		public function set replicateAdCopyList_header(header:Object):void
		{
			_ReplicateAdCopyList_header = header;
		}
		/**
		 * Add values for the various parts of the header
         * @param 
         userName21
		 */ 
		public function addreplicateAdCopyList_header(userName21:com.macys.marketing.sema.UserName):void
		{
			_ReplicateAdCopyList_header = new Object;
            _ReplicateAdCopyList_header.userName21 = userName21;
              		
		}
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _ReplicateAdCopyList_lastResult:ReplicateAdCopyListResponse;
		[Bindable]
		/**
		 * @see IReplicateEntityService#ReplicateAdCopyList_lastResult
		 */	  
		public function get replicateAdCopyList_lastResult():ReplicateAdCopyListResponse
		{
			return _ReplicateAdCopyList_lastResult;
		}
		/**
		 * @private
		 */
		public function set replicateAdCopyList_lastResult(lastResult:ReplicateAdCopyListResponse):void
		{
			_ReplicateAdCopyList_lastResult = lastResult;
		}
		
		/**
		 * @see IReplicateEntityService#addReplicateAdCopyList()
		 */
		public function addreplicateAdCopyListEventListener(listener:Function):void
		{
			addEventListener(ReplicateAdCopyListResultEvent.ReplicateAdCopyList_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _ReplicateAdCopyList_populate_results(event:ResultEvent):void
        {
        var e:ReplicateAdCopyListResultEvent = new ReplicateAdCopyListResultEvent();
		            e.result = event.result as ReplicateAdCopyListResponse;
		                       e.headers = event.headers;
		             replicateAdCopyList_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the ReplicateAdKeyWordList operation
          

        /**
         * @see IReplicateEntityService#ReplicateAdKeyWordList()
         */
        public function replicateAdKeyWordList(replicateAdKeyWordList:ReplicateAdKeyWordList):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.replicateAdKeyWordList(_ReplicateAdKeyWordList_header.userName24,replicateAdKeyWordList);
            _internal_token.addEventListener("result",_ReplicateAdKeyWordList_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IReplicateEntityService#ReplicateAdKeyWordList_send()
		 */    
        public function replicateAdKeyWordList_send():AsyncToken
        {
        	return replicateAdKeyWordList(_ReplicateAdKeyWordList_request.ReplicateAdKeyWordList);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _ReplicateAdKeyWordList_request:ReplicateAdKeyWordList_request;
		/**
		 * @see IReplicateEntityService#ReplicateAdKeyWordList_request_var
		 */
		[Bindable]
		public function get replicateAdKeyWordList_request_var():ReplicateAdKeyWordList_request
		{
			return _ReplicateAdKeyWordList_request;
		}
		
		/**
		 * @private
		 */
		public function set replicateAdKeyWordList_request_var(request:ReplicateAdKeyWordList_request):void
		{
			_ReplicateAdKeyWordList_request = request;
		}
					  
		/**
		 * Internal representation of the header wrapper
		 * @private
		 */
		private var _ReplicateAdKeyWordList_header:Object;
		[Bindable]
		/**
		 * @see IReplicateEntityService#replicateAdKeyWordList_header
		 */
		public function get replicateAdKeyWordList_header():Object
		{
			return _ReplicateAdKeyWordList_header;
		}
		public function set replicateAdKeyWordList_header(header:Object):void
		{
			_ReplicateAdKeyWordList_header = header;
		}
		/**
		 * Add values for the various parts of the header
         * @param 
         userName24
		 */ 
		public function addreplicateAdKeyWordList_header(userName24:com.macys.marketing.sema.UserName):void
		{
			_ReplicateAdKeyWordList_header = new Object;
            _ReplicateAdKeyWordList_header.userName24 = userName24;
              		
		}
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _ReplicateAdKeyWordList_lastResult:ReplicateAdKeyWordListResponse;
		[Bindable]
		/**
		 * @see IReplicateEntityService#ReplicateAdKeyWordList_lastResult
		 */	  
		public function get replicateAdKeyWordList_lastResult():ReplicateAdKeyWordListResponse
		{
			return _ReplicateAdKeyWordList_lastResult;
		}
		/**
		 * @private
		 */
		public function set replicateAdKeyWordList_lastResult(lastResult:ReplicateAdKeyWordListResponse):void
		{
			_ReplicateAdKeyWordList_lastResult = lastResult;
		}
		
		/**
		 * @see IReplicateEntityService#addReplicateAdKeyWordList()
		 */
		public function addreplicateAdKeyWordListEventListener(listener:Function):void
		{
			addEventListener(ReplicateAdKeyWordListResultEvent.ReplicateAdKeyWordList_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _ReplicateAdKeyWordList_populate_results(event:ResultEvent):void
        {
        var e:ReplicateAdKeyWordListResultEvent = new ReplicateAdKeyWordListResultEvent();
		            e.result = event.result as ReplicateAdKeyWordListResponse;
		                       e.headers = event.headers;
		             replicateAdKeyWordList_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the ReplicateAdGroupList operation
          

        /**
         * @see IReplicateEntityService#ReplicateAdGroupList()
         */
        public function replicateAdGroupList(replicateAdGroupList:ReplicateAdGroupList):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.replicateAdGroupList(_ReplicateAdGroupList_header.userName27,replicateAdGroupList);
            _internal_token.addEventListener("result",_ReplicateAdGroupList_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IReplicateEntityService#ReplicateAdGroupList_send()
		 */    
        public function replicateAdGroupList_send():AsyncToken
        {
        	return replicateAdGroupList(_ReplicateAdGroupList_request.ReplicateAdGroupList);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _ReplicateAdGroupList_request:ReplicateAdGroupList_request;
		/**
		 * @see IReplicateEntityService#ReplicateAdGroupList_request_var
		 */
		[Bindable]
		public function get replicateAdGroupList_request_var():ReplicateAdGroupList_request
		{
			return _ReplicateAdGroupList_request;
		}
		
		/**
		 * @private
		 */
		public function set replicateAdGroupList_request_var(request:ReplicateAdGroupList_request):void
		{
			_ReplicateAdGroupList_request = request;
		}
					  
		/**
		 * Internal representation of the header wrapper
		 * @private
		 */
		private var _ReplicateAdGroupList_header:Object;
		[Bindable]
		/**
		 * @see IReplicateEntityService#replicateAdGroupList_header
		 */
		public function get replicateAdGroupList_header():Object
		{
			return _ReplicateAdGroupList_header;
		}
		public function set replicateAdGroupList_header(header:Object):void
		{
			_ReplicateAdGroupList_header = header;
		}
		/**
		 * Add values for the various parts of the header
         * @param 
         userName27
		 */ 
		public function addreplicateAdGroupList_header(userName27:com.macys.marketing.sema.UserName):void
		{
			_ReplicateAdGroupList_header = new Object;
            _ReplicateAdGroupList_header.userName27 = userName27;
              		
		}
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _ReplicateAdGroupList_lastResult:ReplicateAdGroupListResponse;
		[Bindable]
		/**
		 * @see IReplicateEntityService#ReplicateAdGroupList_lastResult
		 */	  
		public function get replicateAdGroupList_lastResult():ReplicateAdGroupListResponse
		{
			return _ReplicateAdGroupList_lastResult;
		}
		/**
		 * @private
		 */
		public function set replicateAdGroupList_lastResult(lastResult:ReplicateAdGroupListResponse):void
		{
			_ReplicateAdGroupList_lastResult = lastResult;
		}
		
		/**
		 * @see IReplicateEntityService#addReplicateAdGroupList()
		 */
		public function addreplicateAdGroupListEventListener(listener:Function):void
		{
			addEventListener(ReplicateAdGroupListResultEvent.ReplicateAdGroupList_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _ReplicateAdGroupList_populate_results(event:ResultEvent):void
        {
        var e:ReplicateAdGroupListResultEvent = new ReplicateAdGroupListResultEvent();
		            e.result = event.result as ReplicateAdGroupListResponse;
		                       e.headers = event.headers;
		             replicateAdGroupList_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IReplicateEntityService#getWebService()
		 */
		public function getWebService():BaseReplicateEntityService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addReplicateEntityServiceFaultEventListener(listener:Function):void
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
