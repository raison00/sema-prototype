package com.macys.marketing.sema.command.adkeyword
{
	import com.adobe.cairngorm.commands.Command;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.macys.marketing.sema.business.adkeyword.ReplicateAdKeywordDelegate;
	import com.macys.marketing.sema.event.adkeyword.ReplicateAdKeywordEvent;
	import com.macys.marketing.sema.model.SEMAModelLocator;
	
	import mx.rpc.IResponder;
	
	public class ReplicateAdKeywordCommand implements Command, IResponder
	{
		public function ReplicateAdKeywordCommand()
		{
		}
		
		private var model : SEMAModelLocator = SEMAModelLocator.getInstance();
	
		
		
		public function execute(event:CairngormEvent):void
		{
			var businessDelegate : ReplicateAdKeywordDelegate = new ReplicateAdKeywordDelegate;
			var replicateAdKeywordEvent : ReplicateAdKeywordEvent = ReplicateAdKeywordEvent(event);	
			businessDelegate.execute(replicateAdKeywordEvent.sourceEntityId,replicateAdKeywordEvent.parentDestinationEntityId);
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