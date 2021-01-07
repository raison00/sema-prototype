package com.macys.marketing.sema.business.adcopy
{
	import com.macys.marketing.sema.vo.adcopy.AdCopyVO;
	import mx.core.Application;
	
	public class GetAllAdCopyDelegate
	{
    import mx.rpc.soap.WebService;
    import mx.rpc.events.ResultEvent;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.soap.LoadEvent;
    
    import com.macys.marketing.sema.model.SEMAModelLocator;
    import com.macys.marketing.sema.business.SEMAWebService;

	private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
	
    public function execute(groupId:Number):void {
        trace("GetAllAdCopyDelegate: execute() model.semaUser.userName="+model.semaUser.userName);
       var ws:WebService = new SEMAWebService("AdCopyService");
 
 		//########### jasmine:  
    	//var ws:WebService = new WebService();
   		//md000yd3219978
        //md000yd3162201
      
      trace("groupId="+groupId);
      if(groupId >=0) {
       /* ws.wsdl = "http://md000yd3162201:8081/SEMAServices/services/v1/AdCopyService?wsdl";
       ws.endpointURI = "http://md000yd3162201:8081/SEMAServices/services/v1/AdCopyService";
       ws.addSimpleHeader("userName", "http://schemas.macys.com/definitions/ad/v1", "userName", "jasmine");
        
       if(ws.canLoadWSDL()) {
        	trace("GetAllAdCopyDelegate:[business] WSDL URI is valid.");
    		trace("GetAllAdCopyDelegate:[business] Service:" + ws.toString());
        } else {
        	trace("GetAllAdCopyDelegate:[business] WSDL URI is not valid.");
        }
        ws.loadWSDL();
   		//########### */
   		
        ws.getAllAdCopy.addEventListener(ResultEvent.RESULT, resultHandler);
        ws.getAllAdCopy.addEventListener(FaultEvent.FAULT, faultHandler);
        ws.addEventListener(LoadEvent.LOAD, loadHandler);
       
        //ws.getAllAdCopy.send({EntityId:entityId, DestinationParentId:destinationParentId});
        ws.getAllAdCopy.send(groupId);
      }
      else {	// invalid groupId
      	model.allAdCopyVO.removeAll();
      }  
    }
    
    // when wsdl load is a success
    public function loadHandler(event:LoadEvent):void {
    	trace("GetAllAdCopyDelegate: [business] WSDL loaded.");
    }

    public function resultHandler(event:ResultEvent):void {
    	trace("GetAllAdCopyDelegate:[business]result recieved: ");
  
        // get result set
        var adCopyVO:AdCopyVO;
        model.allAdCopyVO.removeAll();
        //Note: If the groupId that entered is invalid, it will have no result return.
        if(event.result!=null && event.result.length !=undefined) {
        	trace("GetAllAdCopyDelegate: resultHandler() event.result.toString()= "+ event.result.toString());
        	// for multiple results:
        	for(var s:String in event.result) {	
	        	//trace("member: " + s + " is: " + event.result[s].toString() );
	        	adCopyVO = new AdCopyVO();
	        	adCopyVO.id = event.result[s].Id;
	        	adCopyVO.adVendorId = event.result[s].AdVendorId;
		       	adCopyVO.groupId = event.result[s].GroupId;
		       	adCopyVO.status = event.result[s].Status;
		       	adCopyVO.adVendorStatus = event.result[s].AdVendorStatus;
		       	adCopyVO.state = event.result[s].State;
		       	adCopyVO.headline = event.result[s].Headline;
		       	adCopyVO.description1 = event.result[s].Description1;
		       	adCopyVO.description2 = event.result[s].Description2;
		       	adCopyVO.displayUrl = event.result[s].DisplayUrl;
		       	adCopyVO.publishedDate = event.result[s].PublishedDate;
		       	adCopyVO.destinationUrl = event.result[s].DestinationUrl;
		       	adCopyVO.vendorPolicyExemptionRequest = event.result[s].VendorPolicyExemptionRequest;
		       	adCopyVO.expirationDate = event.result[s].ExpirationDate;
		       	adCopyVO.effectiveDate = event.result[s].EffectiveDate;
		       	adCopyVO.type = event.result[s].Type;
		       	adCopyVO.createdDate = event.result[s].CreatedDate;
		       	adCopyVO.modifiedDate = event.result[s].ModifiedDate;
		       	adCopyVO.createdBy = event.result[s].CreatedBy;
		       	adCopyVO.modifiedBy = event.result[s].ModifiedBy;
		       	model.allAdCopyVO.addItem(adCopyVO); 
	        }
	        //trace("GetAllAdCopyDelegate:[business] model updated. model.allAdCopyVO="+model.allAdCopyVO[0].id);
     		//trace("GetAllAdCopyDelegate:[business] model updated. model.allAdCopyVO="+model.allAdCopyVO[0].headline);
        }
        else if(event.result!=null && event.result.length==undefined) {
        	//for single result:
       		adCopyVO = new AdCopyVO();
        	adCopyVO.id = event.result.Id;
        	adCopyVO.adVendorId = event.result.AdVendorId;
	       	adCopyVO.groupId = event.result.GroupId;
	       	adCopyVO.status = event.result.Status;
	       	adCopyVO.adVendorStatus = event.result.AdVendorStatus;
	       	adCopyVO.state = event.result.State;
	       	adCopyVO.headline = event.result.Headline;
	       	adCopyVO.description1 = event.result.Description1;
	       	adCopyVO.description2 = event.result.Description2;
	       	adCopyVO.displayUrl = event.result.DisplayUrl;
	       	adCopyVO.publishedDate = event.result.PublishedDate;
	       	adCopyVO.destinationUrl = event.result.DestinationUrl;
	       	adCopyVO.vendorPolicyExemptionRequest = event.result.VendorPolicyExemptionRequest;
	       	adCopyVO.expirationDate = event.result.ExpirationDate;
	       	adCopyVO.effectiveDate = event.result.EffectiveDate;
	       	adCopyVO.type = event.result.Type;
	       	adCopyVO.createdDate = event.result.CreatedDate;
	       	adCopyVO.modifiedDate = event.result.ModifiedDate;
	       	adCopyVO.createdBy = event.result.CreatedBy;
	       	adCopyVO.modifiedBy = event.result.ModifiedBy; 
	       	model.allAdCopyVO.addItem(adCopyVO);
	       	//trace("GetAllAdCopyDelegate:[business] model updated. model.allAdCopyVO="+model.allAdCopyVO[0].id);
     		//trace("GetAllAdCopyDelegate:[business] model updated. model.allAdCopyVO="+model.allAdCopyVO[0].headline);
        }
        
    }

    public function faultHandler(event:FaultEvent):void {
  		trace("GetAllAdCopyDelegate:[business] WebService error: " + event.fault);
  		trace("GetAllAdCopyDelegate:[business] Detail: " + event.message); 
  		
  		/* for(var s:String in event.message.body) {
        	trace("member: " + s + " is: " + event.message.body[s].toString() );
        } */
  		
    }
		

	}
}
