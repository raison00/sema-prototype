package com.macys.marketing.sema.command.adgroup
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.macys.marketing.sema.business.adgroup.ReplicateAdGroupDelegate;
	import com.macys.marketing.sema.event.adgroup.ReplicateAdGroupEvent;
	import com.macys.marketing.sema.model.SEMAModelLocator;
	
	import mx.rpc.IResponder;
	
	public class ReplicateAdGroupCommand implements Command, IResponder
	{
		public function ReplicateAdGroupCommand()
		{
			super();
		}
		
		private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
	
		
		
		public function execute(event:CairngormEvent):void
		{
			var businessDelegate : ReplicateAdGroupDelegate = new ReplicateAdGroupDelegate;
			var replicateAdGroupEvent : ReplicateAdGroupEvent = ReplicateAdGroupEvent(event);	
			businessDelegate.execute(replicateAdGroupEvent.sourceEntityId,replicateAdGroupEvent.parentDestinationEntityId);
		}
		
		public function fault(info:Object):void
		{
			trace("We have a fault");
		}
		
		public function result(data:Object):void
		{
			
		}

	}

}