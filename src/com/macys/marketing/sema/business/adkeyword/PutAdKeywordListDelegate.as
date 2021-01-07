package com.macys.marketing.sema.business.adkeyword
{
	import com.macys.marketing.sema.vo.adkeyword.AdKeywordVO;
	
	public class PutAdKeywordListDelegate
	{
		
		
		
			import com.macys.marketing.sema.vo.adcopy.AdCopyVO;
			import mx.rpc.soap.WebService;
    		import mx.rpc.events.ResultEvent;
    		import mx.rpc.events.FaultEvent;
    		import mx.rpc.soap.LoadEvent;
   
    		import com.macys.marketing.sema.model.SEMAModelLocator;
    		import com.macys.marketing.sema.business.SEMAWebService;

			private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
	
      
      		public function execute(adKeyword : AdKeywordVO):void {
        
	    
	    		var ws:WebService = new SEMAWebService("AdKeyWordService",model.semaUser.userName);
	        
	        	ws.putAdKeywords.addEventListener("result", resultHandler);
	        	ws.addEventListener("fault", faultHandler);
	
			ws.putAdKeywords.send({SeedKeyword:seedKeyword,MatchType:matchType,NegativeFlag:negativeFlag,useSynonym:useSynonym});
	       
			
       
    	}
    
  
    	public function resultHandler(event:ResultEvent):void {
        
 			
 			
 			model.generateKeywordsVO.relatedKeywords = event.result.RelatedKeywordList;
			model.generateKeywordsVO.alsoToConsiderKeywords = event.result.AlsoToConsiderKeywordList;
     
    	}


    	public function faultHandler(event:FaultEvent):void {
  			trace("[business] WebService error: " + event.fault);
  			trace("[business] Detail: " + event.message); 
  		
  			for(var s:String in event.message.body) {
        		trace("member: " + s + " is: " + event.message.body[s].toString() );
        	}
  		
    	}
		
		
		/*
		
		
		 <VendorId>?</VendorId>
            <!--Optional:-->
            <GroupId>?</GroupId>
            <!--Optional:-->
            <MatchType>?</MatchType>
            <!--Optional:-->
            <Status>?</Status>
            <!--Optional:-->
            <VendorStatus>?</VendorStatus>
            <!--Optional:-->
            <State>?</State>
            <!--Optional:-->
            <KeywordText>?</KeywordText>
            <!--Optional:-->
            <DestinationURL>?</DestinationURL>
            <!--Optional:-->
            <MaxCPC>?</MaxCPC>
            <!--Optional:-->
            <MinCPC>?</MinCPC>
            <NegativeMatch>?</NegativeMatch>
            <!--Optional:-->
            <VendorPolicyExemptionRequest>?</VendorPolicyExemptionRequest>
            <!--Optional:-->
            <PublishDate>?</PublishDate>
            
            */

	}
}