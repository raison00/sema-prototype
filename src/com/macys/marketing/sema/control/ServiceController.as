package com.macys.marketing.sema.control
{
	
	import com.adobe.cairngorm.control.FrontController;
	import com.macys.marketing.sema.command.adcopy.*;
	import com.macys.marketing.sema.command.adgroup.*;
	import com.macys.marketing.sema.command.adkeyword.*;
	import com.macys.marketing.sema.command.tools.*;
	
	public class ServiceController extends FrontController
	{
		public function ServiceController()
		{
			addCommand (ServiceController.EVENT_REPLICATE_ADCOPY, ReplicateAdCopyCommand );
			addCommand (ServiceController.EVENT_GETALL_ADCOPY, GetAllAdCopyCommand );
			
			addCommand (ServiceController.EVENT_REPLICATE_ADKEYWORD, ReplicateAdKeywordCommand );
			addCommand (ServiceController.EVENT_GETALL_ADKEYWORDS, GetAllAdKeywordsCommand );
			
			addCommand (ServiceController.EVENT_REPLICATE_ADGROUP, ReplicateAdGroupCommand );
			
			addCommand (ServiceController.EVENT_GET_KEYWORD_VARIATIONS, GenerateKeywordsCommand );
		
			
		
		}
		
		
		public static const EVENT_REPLICATE_ADCOPY : String = "EVENT_REPLICATE_ADCOPY";
		public static const EVENT_GETALL_ADCOPY : String = "EVENT_GETALL_ADCOPY";
		
		public static const EVENT_REPLICATE_ADKEYWORD : String = "EVENT_REPLICATE_ADKEYWORD";
		public static const EVENT_GETALL_ADKEYWORDS : String = "EVENT_GETALL_ADKEYWORDS";
		
		public static const EVENT_REPLICATE_ADGROUP : String = "EVENT_REPLICATE_ADGROUP";
		
		public static const EVENT_GET_KEYWORD_VARIATIONS : String = "EVENT_GET_KEYWORD_VARIATIONS";

		
	}
}
