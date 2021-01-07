package com.macys.marketing.sema.business.adgroup
{
	import com.macys.marketing.sema.business.SEMAWebService;
	import com.macys.marketing.sema.model.SEMAModelLocator;
	import com.macys.marketing.sema.view.event.ReplicateEvent;
	import com.macys.marketing.sema.view.event.ViewEventDispatcher;
	
	import mx.core.Application;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.soap.WebService;
	
	
	
	
	public class ReplicateAdGroupDelegate {
	
    	private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
	 	
	
    
	    public function execute(entityId:Number,destinationParentId:Number):void {
	    
	    	var ws:WebService = new SEMAWebService("ReplicateEntityService");
			
	        ws.ReplicateAdGroupList.addEventListener("result", resultHandler);
	        ws.addEventListener("fault", faultHandler);
			    
	        ws.ReplicateAdGroupList.send({EntityId:entityId, DestinationParentId:destinationParentId});
	    }
     
    
	    public function resultHandler(event:ResultEvent):void {
	           
			model.replicateAdGroupVO.id = event.result.Id;
			model.replicateAdGroupVO.campaignId = event.result.CampaignId;
			model.replicateAdGroupVO.status = event.result.Status;
			model.replicateAdGroupVO.adGroupName = event.result.AdGroupName;
			model.replicateAdGroupVO.defaultMaxCpc = event.result.DefaultMaxCPC;
			model.replicateAdGroupVO.destinationUrl = event.result.DefaultDestinationUrl;
			model.replicateAdGroupVO.state = event.result.State;
			model.replicateAdGroupVO.createdDate = event.result.CreatedDate;
	       	model.replicateAdGroupVO.modifiedDate = event.result.ModifiedDate;
	       	model.replicateAdGroupVO.createdBy = event.result.CreatedBy;
	       	model.replicateAdGroupVO.modifiedBy = event.result.ModifiedBy;
	      
			var evt:ReplicateEvent = new ReplicateEvent(ReplicateEvent.AD_GROUPS_CHANGED);
			evt.value = event;
			ViewEventDispatcher.dispatchViewEvent(evt);
	    }
	
	    
	    
	    public function faultHandler(event:FaultEvent):void {
	   		/*
	  		for(var s:String in event.message.body) {
	        	trace("member: " + s + " is: " + event.message.body[s].toString() );
	        }
	       */
	       Application.application.handleSoapFault(event);
	  		
	    }
		

	}
}