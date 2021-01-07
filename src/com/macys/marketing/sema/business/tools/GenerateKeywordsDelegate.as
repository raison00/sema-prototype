package com.macys.marketing.sema.business.tools
{	
	import com.macys.marketing.sema.business.SEMAWebService;
	import com.macys.marketing.sema.model.SEMAModelLocator;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.soap.WebService;
	
	
	public class GenerateKeywordsDelegate {
    

		private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
 
 
 
 	   public function execute(seedKeyword:String,matchType:String,negativeFlag:Boolean,useSynonym:Boolean):void {
        
	    
	    	var ws:WebService = new SEMAWebService("KeyWordGeneratorService");
	        
	        ws.getKeywordVariations.addEventListener("result", resultHandler);
	        ws.addEventListener("fault", faultHandler);
	
			ws.getKeywordVariations.send({SeedKeyword:seedKeyword,MatchType:matchType,NegativeFlag:negativeFlag,useSynonym:useSynonym});
	       
			model.generateKeywordsVO.seedKeyword = seedKeyword;
			model.generateKeywordsVO.matchType = matchType;
			model.generateKeywordsVO.negativeFlag = negativeFlag;
			model.generateKeywordsVO.useSynonym = useSynonym;
			model.generateKeywordsVO.relatedKeywords = new ArrayCollection;
			model.generateKeywordsVO.alsoToConsiderKeywords = new ArrayCollection;
       
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
		

	}
}