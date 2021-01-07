package com.macys.marketing.sema.business.adkeyword
{
	import com.macys.marketing.sema.business.SEMAWebService;
	import com.macys.marketing.sema.model.SEMAModelLocator;
	import com.macys.marketing.sema.view.event.ReplicateEvent;
	import com.macys.marketing.sema.view.event.ViewEventDispatcher;
	
	import mx.core.Application;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.soap.WebService;

	
	public class ReplicateAdKeywordDelegate {
 
		private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
	
   
    
	    public function execute(entityId:Number,destinationParentId:Number):void {
        
			var ws:WebService = new SEMAWebService("ReplicateEntityService");
	
	        ws.ReplicateAdKeyWordList.addEventListener("result", resultHandler);
	        ws.addEventListener("fault", faultHandler);
	        ws.ReplicateAdKeyWordList.send({EntityId:entityId, DestinationParentId:destinationParentId});
       
    	}
    
  

	    public function resultHandler(event:ResultEvent):void {
	  	
			model.replicateAdKeywordVO.id = event.result.Id;
			model.replicateAdKeywordVO.groupId = event.result.AdGroupId;
			model.replicateAdKeywordVO.status = event.result.Status;
			model.replicateAdKeywordVO.adVendorStatus = event.result.AdVendorStatus;
			model.replicateAdKeywordVO.state = event.result.State;
			model.replicateAdKeywordVO.keywordText = event.result.KeywordText;
			model.replicateAdKeywordVO.destinationUrl = event.result.DestinationURL;
			model.replicateAdKeywordVO.minCpc = event.result.MinCPC;
			model.replicateAdKeywordVO.maxCpc = event.result.MaxCPC;
			model.replicateAdKeywordVO.negativeMatch = event.result.NegativeMatch;
			model.replicateAdKeywordVO.vendorPolicyExemptionRequest = event.result.VendorPolicyExemptionRequest;
			model.replicateAdKeywordVO.createdDate = event.result.CreatedDate;
	       	model.replicateAdKeywordVO.modifiedDate = event.result.ModifiedDate;
	       	model.replicateAdKeywordVO.createdBy = event.result.CreatedBy;
	       	model.replicateAdKeywordVO.modifiedBy = event.result.ModifiedBy;
	       	
	       	var evt:ReplicateEvent = new ReplicateEvent(ReplicateEvent.AD_KEYWORD_CHANGED);
			evt.value = event;
			ViewEventDispatcher.dispatchViewEvent(evt);
	     	
	      
	    }
	
	    public function faultHandler(event:FaultEvent):void {
	  		Application.application.handleSoapFault(event);
	    }
		

	}
}