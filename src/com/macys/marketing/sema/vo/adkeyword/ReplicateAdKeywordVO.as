package com.macys.marketing.sema.vo.adkeyword
{
	import com.adobe.cairngorm.vo.ValueObject;

	[Bindable]
	public class ReplicateAdKeywordVO implements ValueObject
	{
		
		private var _id : Number;
		private var _groupId : Number;
		private var _status : String;
		private var _adVendorStatus : String;
		private var _state : String;
		private var _keywordText : String;
		private var _destinationUrl : String;
		private var _maxCpc : Number;
		private var _minCpc : Number;
		private var _negativeMatch : Boolean;
		private var _vendorPolicyExemptionRequest : String;		
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
				
		public function get groupId() : Number {
			return _groupId;
		}
		
		public function set groupId(groupId:Number) : void {
			_groupId = groupId; 
		}
		
		public function get status() : String {
			return _status;
		}
		
		public function set status(status:String) : void {
			_status = status; 
		}

		public function get adVendorStatus() : String {
			return _adVendorStatus;
		}
		
		public function set adVendorStatus(adVendorStatus:String) : void {
			_adVendorStatus = adVendorStatus; 
		}
		
		public function get state() : String {
			return _state;
		}
		
		public function set state(state:String) : void {
			_state = state; 
		}
		
		public function get keywordText() : String {
			return _keywordText;
		}
		
		public function set keywordText(keywordText:String) : void {
			_keywordText = keywordText; 
		}

		public function get destinationUrl() : String {
			return _destinationUrl;
		}
		
		public function set destinationUrl(destinationUrl:String) : void {
			_destinationUrl = destinationUrl; 
		}

		public function get minCpc() : Number {
			return _minCpc;
		}
	
		public function set minCpc(minCpc:Number) : void {
			_minCpc = minCpc; 
		}
		
		public function get maxCpc() : Number {
			return _maxCpc;
		}
	
		public function set maxCpc(maxCpc:Number) : void {
			_maxCpc = maxCpc; 
		}

		public function get negativeMatch() : Boolean {
			return _negativeMatch;
		}
		
		public function set negativeMatch(negativeMatch:Boolean) : void {
			_negativeMatch = negativeMatch; 
		}

		public function get vendorPolicyExemptionRequest() : String {
			return _vendorPolicyExemptionRequest;
		}
		
		public function set vendorPolicyExemptionRequest(vendorPolicyExemptionRequest:String) : void {
			_vendorPolicyExemptionRequest = vendorPolicyExemptionRequest; 
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