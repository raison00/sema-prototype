package com.macys.marketing.sema.event.adcopy
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.macys.marketing.sema.control.ServiceController;

	public class GetAllAdCopyEvent extends CairngormEvent
	{
		
		public var groupId:Number;
		
		public function GetAllAdCopyEvent(groupId:Number) 
		{
			super( ServiceController.EVENT_GETALL_ADCOPY );
			trace("GetAllAdCopyEvent: GetAllAdCopyEvent()");
			this.groupId = groupId;
		}
	}
}
