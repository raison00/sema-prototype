package com.macys.marketing.sema.event.adkeyword
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.macys.marketing.sema.control.ServiceController;

	public class ReplicateAdKeywordEvent extends CairngormEvent
	{
		
		public var sourceEntityId:Number;
		public var parentDestinationEntityId:Number;
		
		public function ReplicateAdKeywordEvent(sourceEntityId:Number,parentDestinationEntityId:Number) 
		{
			super( ServiceController.EVENT_REPLICATE_ADKEYWORD );
			this.sourceEntityId = sourceEntityId;
			this.parentDestinationEntityId = parentDestinationEntityId;
		}
	}
}