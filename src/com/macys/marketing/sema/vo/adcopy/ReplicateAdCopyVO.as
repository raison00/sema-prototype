package com.macys.marketing.sema.vo.adcopy
{
	import com.adobe.cairngorm.vo.ValueObject;

	[Bindable]
	public class ReplicateAdCopyVO implements ValueObject
	{
		
		private var _id : Number;
		private var _groupId : Number;
		private var _status : String;
		private var _state : String;
		private var _headline : String;
		private var _description1 : String;
		private var _description2 : String;
		private var _destinationUrl : String;
		private var _displayUrl : String;
		private var _vendorPolicyExemptionRequest : String;
		private var _expirationDate : Date;
		private var _effectiveDate : Date;		
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
		
		public function get state() : String {
			return _state;
		}
		
		public function set state(state:String) : void {
			_state = state; 
		}
		
		public function get headline() : String {
			return _headline;
		}
		
		public function set headline(headline:String) : void {
			_headline = headline; 
		}

		public function get description1() : String {
			return _description1;
		}
		
		public function set description1(description1:String) : void {
			_description1 = description1; 
		}

		public function get description2() : String {
			return _description2;
		}
		
		public function set description2(description2:String) : void {
			_description2 = description2; 
		}

		public function get displayUrl() : String {
			return _displayUrl;
		}
		
		public function set displayUrl(displayUrl:String) : void {
			_displayUrl = displayUrl; 
		}

		public function get destinationUrl() : String {
			return _destinationUrl;
		}
		
		public function set destinationUrl(destinationUrl:String) : void {
			_destinationUrl = destinationUrl; 
		}

		public function get vendorPolicyExemptionRequest() : String {
			return _vendorPolicyExemptionRequest;
		}
	
		public function set vendorPolicyExemptionRequest(vendorPolicyExemptionRequest:String) : void {
			_vendorPolicyExemptionRequest = vendorPolicyExemptionRequest; 
		}

		public function get expirationDate() : Date {
			return _expirationDate;
		}
		
		public function set expirationDate(expirationDate:Date) : void {
			_expirationDate = expirationDate; 
		}

		public function get effectiveDate() : Date {
			return _effectiveDate;
		}
		
		public function set effectiveDate(effectiveDate:Date) : void {
			_effectiveDate = effectiveDate; 
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