
/**
 * AdGroupServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:AdGroupService= new AdGroupService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetAllAdGroupsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getAllAdGroups(mygetAllAdGroups,myCampaignId);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="com.macys.marketing.sema.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:AdGroupService id="myService">
  *   <srv:getAllAdGroups_request_var>
  *		<srv:GetAllAdGroups_request getAllAdGroups=myValue,CampaignId=myValue/>
  *   </srv:getAllAdGroups_request_var>
  * </srv:AdGroupService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getAllAdGroups_send()" />
  */
 package com.macys.marketing.sema{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getAllAdGroups completes with success
     * and returns some data
     * @eventType GetAllAdGroupsResultEvent
     */
    [Event(name="GetAllAdGroups_result", type="com.macys.marketing.sema.GetAllAdGroupsResultEvent")]
    
    /**
     * Dispatches when a call to the operation putAdGroup completes with success
     * and returns some data
     * @eventType PutAdGroupResultEvent
     */
    [Event(name="PutAdGroup_result", type="com.macys.marketing.sema.PutAdGroupResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAdGroupList completes with success
     * and returns some data
     * @eventType GetAdGroupListResultEvent
     */
    [Event(name="GetAdGroupList_result", type="com.macys.marketing.sema.GetAdGroupListResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class AdGroupService extends EventDispatcher implements IAdGroupService
	{
    	private var _baseService:BaseAdGroupService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function AdGroupService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseAdGroupService(destination,rootURL);
        }
        
		//stub functions for the getAllAdGroups operation
          

        /**
         * @see IAdGroupService#getAllAdGroups()
         */
        public function getAllAdGroups(getAllAdGroups:GetAllAdGroups):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllAdGroups(getAllAdGroups);
            _internal_token.addEventListener("result",_getAllAdGroups_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IAdGroupService#getAllAdGroups_send()
		 */    
        public function getAllAdGroups_send():AsyncToken
        {
        	return getAllAdGroups(_getAllAdGroups_request.getAllAdGroups);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllAdGroups_request:GetAllAdGroups_request;
		/**
		 * @see IAdGroupService#getAllAdGroups_request_var
		 */
		[Bindable]
		public function get getAllAdGroups_request_var():GetAllAdGroups_request
		{
			return _getAllAdGroups_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllAdGroups_request_var(request:GetAllAdGroups_request):void
		{
			_getAllAdGroups_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllAdGroups_lastResult:GetAllAdGroupsResponse;
		[Bindable]
		/**
		 * @see IAdGroupService#getAllAdGroups_lastResult
		 */	  
		public function get getAllAdGroups_lastResult():GetAllAdGroupsResponse
		{
			return _getAllAdGroups_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllAdGroups_lastResult(lastResult:GetAllAdGroupsResponse):void
		{
			_getAllAdGroups_lastResult = lastResult;
		}
		
		/**
		 * @see IAdGroupService#addgetAllAdGroups()
		 */
		public function addgetAllAdGroupsEventListener(listener:Function):void
		{
			addEventListener(GetAllAdGroupsResultEvent.GetAllAdGroups_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllAdGroups_populate_results(event:ResultEvent):void
        {
        var e:GetAllAdGroupsResultEvent = new GetAllAdGroupsResultEvent();
		            e.result = event.result as GetAllAdGroupsResponse;
		                       e.headers = event.headers;
		             getAllAdGroups_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the putAdGroup operation
          

        /**
         * @see IAdGroupService#putAdGroup()
         */
        public function putAdGroup(putAdGroup:PutAdGroup):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.putAdGroup(_putAdGroup_header.userName17,putAdGroup);
            _internal_token.addEventListener("result",_putAdGroup_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IAdGroupService#putAdGroup_send()
		 */    
        public function putAdGroup_send():AsyncToken
        {
        	return putAdGroup(_putAdGroup_request.putAdGroup);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _putAdGroup_request:PutAdGroup_request;
		/**
		 * @see IAdGroupService#putAdGroup_request_var
		 */
		[Bindable]
		public function get putAdGroup_request_var():PutAdGroup_request
		{
			return _putAdGroup_request;
		}
		
		/**
		 * @private
		 */
		public function set putAdGroup_request_var(request:PutAdGroup_request):void
		{
			_putAdGroup_request = request;
		}
					  
		/**
		 * Internal representation of the header wrapper
		 * @private
		 */
		private var _putAdGroup_header:Object;
		[Bindable]
		/**
		 * @see IAdGroupService#putAdGroup_header
		 */
		public function get putAdGroup_header():Object
		{
			return _putAdGroup_header;
		}
		public function set putAdGroup_header(header:Object):void
		{
			_putAdGroup_header = header;
		}
		/**
		 * Add values for the various parts of the header
         * @param 
         userName17
		 */ 
		public function addputAdGroup_header(userName17:com.macys.marketing.sema.UserName):void
		{
			_putAdGroup_header = new Object;
            _putAdGroup_header.userName17 = userName17;
              		
		}
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _putAdGroup_lastResult:PutAdGroupResponse;
		[Bindable]
		/**
		 * @see IAdGroupService#putAdGroup_lastResult
		 */	  
		public function get putAdGroup_lastResult():PutAdGroupResponse
		{
			return _putAdGroup_lastResult;
		}
		/**
		 * @private
		 */
		public function set putAdGroup_lastResult(lastResult:PutAdGroupResponse):void
		{
			_putAdGroup_lastResult = lastResult;
		}
		
		/**
		 * @see IAdGroupService#addputAdGroup()
		 */
		public function addputAdGroupEventListener(listener:Function):void
		{
			addEventListener(PutAdGroupResultEvent.PutAdGroup_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _putAdGroup_populate_results(event:ResultEvent):void
        {
        var e:PutAdGroupResultEvent = new PutAdGroupResultEvent();
		            e.result = event.result as PutAdGroupResponse;
		                       e.headers = event.headers;
		             putAdGroup_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//stub functions for the getAdGroupList operation
          

        /**
         * @see IAdGroupService#getAdGroupList()
         */
        public function getAdGroupList(getAdGroupList:GetAdGroupList):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAdGroupList(getAdGroupList);
            _internal_token.addEventListener("result",_getAdGroupList_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IAdGroupService#getAdGroupList_send()
		 */    
        public function getAdGroupList_send():AsyncToken
        {
        	return getAdGroupList(_getAdGroupList_request.getAdGroupList);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAdGroupList_request:GetAdGroupList_request;
		/**
		 * @see IAdGroupService#getAdGroupList_request_var
		 */
		[Bindable]
		public function get getAdGroupList_request_var():GetAdGroupList_request
		{
			return _getAdGroupList_request;
		}
		
		/**
		 * @private
		 */
		public function set getAdGroupList_request_var(request:GetAdGroupList_request):void
		{
			_getAdGroupList_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAdGroupList_lastResult:GetAdGroupListResponse;
		[Bindable]
		/**
		 * @see IAdGroupService#getAdGroupList_lastResult
		 */	  
		public function get getAdGroupList_lastResult():GetAdGroupListResponse
		{
			return _getAdGroupList_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAdGroupList_lastResult(lastResult:GetAdGroupListResponse):void
		{
			_getAdGroupList_lastResult = lastResult;
		}
		
		/**
		 * @see IAdGroupService#addgetAdGroupList()
		 */
		public function addgetAdGroupListEventListener(listener:Function):void
		{
			addEventListener(GetAdGroupListResultEvent.GetAdGroupList_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAdGroupList_populate_results(event:ResultEvent):void
        {
        var e:GetAdGroupListResultEvent = new GetAdGroupListResultEvent();
		            e.result = event.result as GetAdGroupListResponse;
		                       e.headers = event.headers;
		             getAdGroupList_lastResult = e.result;
		             dispatchEvent(e);
	        		
		}
		
		//service-wide functions
		/**
		 * @see IAdGroupService#getWebService()
		 */
		public function getWebService():BaseAdGroupService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addAdGroupServiceFaultEventListener(listener:Function):void
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
