package com.macys.marketing.sema.command.adkeyword
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.macys.marketing.sema.business.adkeyword.AdKeywordService;
	import com.macys.marketing.sema.event.adkeyword.GetAllAdKeywordsEvent;
	import com.macys.marketing.sema.model.SEMAModelLocator;
	import com.macys.marketing.sema.vo.adkeyword.AdKeywordVO;
	
	import mx.rpc.IResponder;

	public class GetAllAdKeywordsCommand implements Command, IResponder
	{
		
		private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
		private var service : AdKeywordService = new AdKeywordService();
		
				
		
		public function execute(event : CairngormEvent) : void
		{
			service.getAllAdKeywords(this,event.data);	
		}//end execute()
		
				
		public function result(event : Object) : void
		{
       		model.adKeywordsVO.removeAll();
			
        	
        	if (event.result == null) {
       			return;  
        	}//endif
        	

			if (event.result.length > 1) 
			{
 
 	        	var i:int=0;
				for (i = 0; i < event.result.length; i++)
				{
			       	model.adKeywordsVO.addItem(getAdKeywordVO(event.result.getItemAt(i)));
		        }//end for
		        
		    } else {
		    	model.adKeywordsVO.addItem(getAdKeywordVO(event.result));
		    }//end if
	
			

		}//end result()
		
		
		
		public function fault(event : Object) : void
		{
			trace("GetAllAdKeywords Command fault");
		}//end fault()
	
	
	
		private function getAdKeywordVO(myResult:Object) : AdKeywordVO
		{
			var adKeywordVO:AdKeywordVO = new AdKeywordVO();
					
	 	    adKeywordVO.id = myResult.Id;
		    adKeywordVO.groupId = myResult.AdGroupId;
		    adKeywordVO.matchType = myResult.MatchType;
		    adKeywordVO.status = myResult.Status;
		    adKeywordVO.adVendorStatus = myResult.AdVendorStatus;
		    adKeywordVO.keywordText = myResult.KeywordText;
		    adKeywordVO.destinationUrl = myResult.DestinationURL;
		    adKeywordVO.maxCpc = myResult.MaxCPC;
		    adKeywordVO.minCpc = myResult.MinCPC;
		    adKeywordVO.negativeMatch = myResult.NegativeMatch;
		    adKeywordVO.vendorPolicyExemptionRequest = myResult.VendorPolicyExemptionRequest;
		    adKeywordVO.publishedDate = myResult.PublishedDate;
		    adKeywordVO.vendorPaused = myResult.VendorPaused;
		    adKeywordVO.createdDate = myResult.CreatedDate;
		    adKeywordVO.modifiedDate = myResult.ModifiedDate;
		    adKeywordVO.createdBy = myResult.CreatedBy;
		    adKeywordVO.modifiedBy = myResult.ModifiedBy;
		    
		    return adKeywordVO;
			
			
		}//end getAdKeywordVO
	
	}
}