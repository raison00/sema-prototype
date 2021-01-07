package com.macys.marketing.sema.model
{
	import mx.collections.ArrayCollection;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	import mx.utils.ObjectProxy;
	
	public class ServiceRegistry
	{
		
		private var model : SEMAModelLocator;
		private var hostname : String;
		
		private static const serviceHostNameXML : String = "config/serviceHostname.xml";
		private static const serviceEndpointXML : String = "config/serviceEndpoint.xml";
		
		public static const AdGroupService : String = "AdGroupService";
		public static const AdCopyService : String = "AdCopyService";
		public static const AdKeywordService : String = "AdKeywordService";
		public static const CampaignService : String = "CampaignService";
		public static const PortfolioService : String = "PortfolioService";
		public static const PortfolioGroupService : String = "PortfolioGroupService";
		
		public static const AdCopyStatsService : String = "AdCopyStatsService";
		public static const AdKeywordStatsService : String = "AdKeywordStatsService";
		public static const AdGroupStatsService : String = "AdGroupStatsService";
		public static const CampaignStatsService : String = "CampaignStatsService";
		
		public static const AccountService : String = "AccountService";
		public static const ReplicateEntityService : String = "ReplicateEntityService";
		public static const KeyWordGeneratorService : String = "KeyWordGeneratorService";
		
		public function ServiceRegistry(model:SEMAModelLocator) {
			if (model == null) {
				throw new Error("Model cannot be null");
			}
			this.model = model;
		} 
		
		public function initializeServiceRegistry():void {
			var hostnameService : HTTPService = new HTTPService();
			hostnameService.url = ServiceRegistry.serviceHostNameXML;
			hostnameService.useProxy = false;
			hostnameService.addEventListener(ResultEvent.RESULT, handleHostnameResult);
			hostnameService.addEventListener(FaultEvent.FAULT, handleFault);
			hostnameService.send();
		}
		
		private function handleHostnameResult(event : ResultEvent):void {	
			var configRoot : ObjectProxy = event.result as ObjectProxy;
			var targetHost : String = configRoot.RootServiceHostname.CurrentEnvironment.Name;
			
			trace(targetHost);
			if (configRoot.RootServiceHostname.ServiceHostnames.ServiceHostname is ArrayCollection){
				var hostnames : ArrayCollection = configRoot.RootServiceHostname.ServiceHostnames.ServiceHostname;
				for each (var i:Object in hostnames) {
					if (i.envName == targetHost) {
						hostname = i.value;
						break;
					}
				}
		    }
		    else{
		    	hostname = configRoot.RootServiceHostname.ServiceHostnames.ServiceHostname;
		    }

			var serviceEndpointService : HTTPService = new HTTPService();
			serviceEndpointService.url = ServiceRegistry.serviceEndpointXML;
			serviceEndpointService.useProxy = false;
			serviceEndpointService.addEventListener(ResultEvent.RESULT, handleServiceEndpointResult);
			serviceEndpointService.addEventListener(FaultEvent.FAULT, handleFault);

			serviceEndpointService.send();
		}
		
		private function handleServiceEndpointResult(event : ResultEvent):void {
			var configRoot : ObjectProxy = event.result as ObjectProxy;
			var serviceEndpoints : ArrayCollection = configRoot.ServiceEndpoints.ServiceEndpointWsdl;
			var endPointCount : int = 0;
			for each (var i:Object in serviceEndpoints) {
				 model.serviceRegistry[i.name] =  hostname + i.value;
				 endPointCount++;
			}
				
			trace("Service Enpoint Configuration Successful:  " + endPointCount + " Services Registered");
		}

		private function handleFault(event: FaultEvent) :void {
			trace("Problem occured initializing service registry",event);
		}
	}
}