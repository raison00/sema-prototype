package com.macys.marketing.sema
{
	public class MatchTypeVO
	{
		
		[Inspectable(enumeration="Broad,Phrase,Exact", type="String")]
		public var _MatchTypeVO:String;
		
		public function toString():String
		{
			return _MatchTypeVO.toString();
		}
	}
}