package com.macys.marketing.sema.vo.adgroup
{
	import com.adobe.cairngorm.vo.ValueObject;

	[Bindable]
	public class ReplicateAdGroupVO implements ValueObject
	{
		
		private var _id : Number;
		private var _campaignId : Number;
		private var _status : String;
		private var _adGroupName : String;
		private var _defaultMaxCpc : Number;
		private var _destinationUrl : String;
		private var _state : String;
		private var _createdDate : Date;
		private var _modifiedDate : Date;
		private var _createdBy : String;
		private var _modifiedBy : String;
	
		
		public function get id() : Number {
			return _id;
		} 
		
		public function set id(id:Number) : void {
			_id = id;
		}
		
		public function get campaignId() : Number {
			return _campaignId;
		} 
		
		public function set campaignId(campaignId:Number) : void {
			_campaignId = campaignId;
		}
				
		public function get status() : String {
			return _status;
		}
		
		public function set status(status:String) : void {
			_status = status; 
		}

		public function get adGroupName() : String {
			return _adGroupName;
		}
		
		public function set adGroupName(adGroupName:String) : void {
			_adGroupName = adGroupName; 
		}
		
		public function get defaultMaxCpc() : Number {
			return _defaultMaxCpc;
		}
	
		public function set defaultMaxCpc(defaultMaxCpc:Number) : void {
			_defaultMaxCpc = defaultMaxCpc; 
		}
		
		public function get destinationUrl() : String {
			return _destinationUrl;
		}
		
		public function set destinationUrl(destinationUrl:String) : void {
			_destinationUrl = destinationUrl; 
		}
		
		public function get state() : String {
			return _state;
		}
		
		public function set state(state:String) : void {
			_state = state; 
		}
		
	
		public function get modifiedDate() : Date {
			return _modifiedDate;
		}
		
		public function set modifiedDate(modifiedDate:Date) : void {
			_modifiedDate = modifiedDate; 
		}
		
		public function get createdDate() : Date {
			return _createdDate;
		}
		
		public function set createdDate(createdDate:Date) : void {
			_createdDate = createdDate; 
		}

		public function get modifiedBy() : String {
			return _modifiedBy;
		}
		
		public function set modifiedBy(modifiedBy:String) : void {
			_modifiedBy = modifiedBy; 
		}
		
		
		public function get createdBy() : String {
			return _createdBy;
		}
		
		public function set createdBy(createdBy:String) : void {
			_createdBy = createdBy; 
		}

	}
}