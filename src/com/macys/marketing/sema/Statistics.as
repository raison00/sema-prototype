/**
 * Statistics.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package com.macys.marketing.sema{
    import mx.rpc.soap.types.*;
    /**
     * Wrapper class for a operation required type
     */
    
    public dynamic class Statistics
    {
        /**
         * Constructor, initializes the type class
         */
				   public function Statistics() {}
                   
                   //Statistics Fields - Common                   
                   public var _AdCopyStats:com.macys.marketing.sema.AdCopyStatsPK;
                   public var _AdKeyWordStats:com.macys.marketing.sema.AdKeyWordStatsPK;                   
                   public var _AdGroupStats:com.macys.marketing.sema.AdGroupStatsPK;
                   public var _CampaignStats:com.macys.marketing.sema.CampaignStatsPK;
                   
                   public var StartDate:Date;
                   public var EndDate:Date;
                   //public var PublishedDate:Date;
                   public var ExpirationDate:Date;
                   //public var CreatedDate:Date;
                   //public var ModifiedDate:Date;
                   public var EffectiveDate:Date;
                   public var Impressions:Number;
                   public var AveragePosition:Number;
                   public var Clicks:Number;
                   public var Cost:Number;
                   public var CTR:Number;
                   public var CPM:Number;
                   public var CPC:Number;                   
                  // public var CreatedBy:String;                   
                   //public var ModifiedBy:String;
             
                   public var Status:com.macys.marketing.sema.SemaStatusType;             
                   public var AdRunOption:com.macys.marketing.sema.AdRunOption;
                  
                   //public var AdVendorId:Number;
                   //public var AdVendorStatus:String;
                   
                   // AdCopy Fields                   
                   public var GroupId:Number;                                      
                   public var Headline:String;
                   public var Description1:String;
                   public var Description2:String;
                   public var DestinationUrl:String;
                   public var DisplayUrl:String;
                   public var VendorPolicyExemptionRequest:String;
                   public var Type:com.macys.marketing.sema.AdCopyType;
                   public var Disapproved:Boolean;
                   
                   //AdGroup Fields
                   public var CampaignId:Number;
                   public var AdGroupName:String;
                   public var DefaultMaxCPC:Number;
                   public var DefaultDestinationUrl:String;
                   
                   //Campaign Fields
                   public var PortfolioId:Number;
                   public var AccountId:Number;
                   public var CampaignName:String;
                   public var DailyBudget:Number;
                  
                   
                   //KeyWord Fields
                   //public var VendorId:Number;
                   public var AdGroupId:Number;
                   public var MatchType:com.macys.marketing.sema.MatchType;
                   public var KeywordText:String;
                   public var DestinationURL:String;
                   public var MaxCPC:Number;
                   public var MinCPC:Number;
                   public var NegativeMatch:Boolean;
                                                        
           	}
      	 }