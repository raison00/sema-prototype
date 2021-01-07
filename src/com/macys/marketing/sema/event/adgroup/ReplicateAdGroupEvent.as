package com.macys.marketing.sema.event.adgroup
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.macys.marketing.sema.control.ServiceController;

	public class ReplicateAdGroupEvent extends CairngormEvent
	{
		
		public var sourceEntityId:Number;
		public var parentDestinationEntityId:Number;
		
		public function ReplicateAdGroupEvent(sourceEntityId:Number,parentDestinationEntityId:Number) 
		{
			super( ServiceController.EVENT_REPLICATE_ADGROUP );
			this.sourceEntityId = sourceEntityId;
			this.parentDestinationEntityId = parentDestinationEntityId;
		}
	}
}