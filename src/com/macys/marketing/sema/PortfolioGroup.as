/**
 * PortfolioGroup.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package com.macys.marketing.sema{
    import mx.rpc.soap.types.*;
    /**
     * Wrapper class for a operation required type
     */
    
    public dynamic class PortfolioGroup
    {
        /**
         * Constructor, initializes the type class
         */
public function PortfolioGroup() {}
                
                   //public var Id:Number;
                   public var Status:com.macys.marketing.sema.SemaStatusType;
                   public var Description:String;
                   public var Name:String;
                   public var ModifiedDate:Date;//p139dak: maintain modified date to pass back to the service layer by constract
           	}
      	 }