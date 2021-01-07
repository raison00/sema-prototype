/**
 * Portfolio.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package com.macys.marketing.sema{
    import mx.rpc.soap.types.*;
    /**
     * Wrapper class for a operation required type
     */
    
    public dynamic class Portfolio
    {
        /**
         * Constructor, initializes the type class
         */
public function Portfolio() {}
                
                   //public var Id:Number;
                   public var PortfolioGroupId:Number;
                   public var Status:com.macys.marketing.sema.SemaStatusType;
                   public var Name:String;
                   public var Description:String;
                   public var ModifiedDate:Date;//p139dak: services expect the modified date of the existing record on update and current timestamp on add
           	}
      	 }