package com.macys.marketing.sema.model
{
	public class SemaUser
	{
		
		private var _firstName : String;
		private var _lastName : String;
		
		private var _userName : String;
		private var _password : String;
		private var _role : String;
		
		
		
		public function SemaUser(userName:String) {
			_userName = userName;
		}
			
		
		public function get firstName() : String{
			return _firstName;
		}
		
		public function set firstName(firstName:String) : void {
			_firstName = firstName;
		}
		
		public function get lastName() : String{
			return _lastName;
		}
		
		public function set lastName(lastName:String) : void {
			_lastName = lastName;
		}
		
		public function get userName() : String {
			return _userName;
		}
		
		public function set userName(userName:String) : void{
			_userName = userName;
		}
		
		public function get password() : String {
			return _password;
		}
		
		public function set password(password:String) : void{
			_password = password;
		}
		
		
		
		public function get role() : String{
			return _role;
		}
		
		public function set role(role:String) : void {
			_role = role;
		}
		
		
		
	
	}
}