package com.macys.marketing.sema.model
{
	import com.adobe.cairngorm.model.ModelLocator;
	import com.macys.marketing.sema.vo.adcopy.ReplicateAdCopyVO;
	import com.macys.marketing.sema.vo.adgroup.ReplicateAdGroupVO;
	import com.macys.marketing.sema.vo.adkeyword.ReplicateAdKeywordVO;
	import com.macys.marketing.sema.vo.tools.GenerateKeywordsVO;
	
	import flash.utils.Dictionary;
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class SEMAModelLocator implements com.adobe.cairngorm.model.ModelLocator
	{
		
		//Note:  UserRegistry is temporary.
		//       Our plans are to replace the UserRegistry with a service call to authenticate a user.
		public var userRegistry:Dictionary = new Dictionary();
		public var semaUser : SemaUser = new SemaUser("Default User");
		
		
		public static const ENABLE_MAIN_APP_PAGE:int = 1;
		public static const ENABLE_LOGIN_PAGE:int  = 0;
		public var enableAppOrLogin : int = ENABLE_LOGIN_PAGE; //.... is there a more clever way to do this?
		
		public var loginRequired :  Boolean = false;

		public var serviceRegistry:Dictionary = new Dictionary();
		
		
		
		
		public var replicateAdCopyVO:ReplicateAdCopyVO = new ReplicateAdCopyVO();
		public var allAdCopyVO:ArrayCollection = new ArrayCollection();
		
		 
		public var replicateAdKeywordVO:ReplicateAdKeywordVO = new ReplicateAdKeywordVO;
		public var adKeywordsVO:ArrayCollection = new ArrayCollection();
		
		public var replicateAdGroupVO:ReplicateAdGroupVO = new ReplicateAdGroupVO;
		
		public var generateKeywordsVO:GenerateKeywordsVO = new GenerateKeywordsVO;
		
		public var replicationModel:ReplicationModel = new ReplicationModel();
		
		
		
		
		private static var modelLocator : SEMAModelLocator;
		
			public function SEMAModelLocator() 
	   		{
	   			if ( modelLocator != null )
				throw new Error( "Only a single instance of ModelLocator is allowed." );
	   		}
   	
   	
		
			public static function getInstance() : com.macys.marketing.sema.model.SEMAModelLocator
			{
				if ( modelLocator == null ) {
					modelLocator = new SEMAModelLocator();
		
					var serviceRegistry: ServiceRegistry = new ServiceRegistry(modelLocator);
					serviceRegistry.initializeServiceRegistry();
					
					var userRegistry: UserRegistry = new UserRegistry(modelLocator);
					userRegistry.initializeUserRegistry();
				}
				
				return modelLocator;
	   		 }
	}
}
