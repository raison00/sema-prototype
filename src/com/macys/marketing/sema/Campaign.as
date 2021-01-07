/**
 * Campaign.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package com.macys.marketing.sema{
    import mx.utils.ObjectProxy;
    import flash.utils.ByteArray;
    import mx.rpc.soap.types.*;
    /**
     * Wrapper class for a operation required type
     */
    
    public dynamic class Campaign
    {
        /**
         * Constructor, initializes the type class
         */
public function Campaign() {}
                
                   public var PortfolioId:Number;
                   //public var AccountId:Number;
                   public var Status:com.macys.marketing.sema.SemaStatusType;
                   public var AdVendorStatus:String;
                   public var CampaignName:String;
                   public var DailyBudget:Number;
                   public var EffectiveDate:Date;
                   public var ExpirationDate:Date;
                   public var AdRunOption:com.macys.marketing.sema.AdRunOption;
                   public var ModifiedDate:Date;//p139dak: added back a field that must always be passed back to the services
           	}
      	 }