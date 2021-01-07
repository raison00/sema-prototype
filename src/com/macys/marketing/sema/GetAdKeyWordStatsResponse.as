/**
 * GetAdKeyWordStatsResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package com.macys.marketing.sema{
    import mx.utils.ObjectProxy;
    import mx.collections.ArrayCollection;
    import mx.collections.IList;
    import mx.collections.ICollectionView;
    import mx.rpc.soap.types.*;
    /**
     * Typed array collection
     */

    public class GetAdKeyWordStatsResponse extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function GetAdKeyWordStatsResponse(source:Array = null)
        {
            super(source);
        }
        
        
        public function addAdKeyWordStatsAt(item:AdKeyWordStats,index:int):void {
            addItemAt(item,index);
        }
            
        public function addAdKeyWordStats(item:AdKeyWordStats):void {
            addItem(item);
        } 

        public function getAdKeyWordStatsAt(index:int):AdKeyWordStats {
            return getItemAt(index) as AdKeyWordStats;
        }
                
        public function getAdKeyWordStatsIndex(item:AdKeyWordStats):int {
            return getItemIndex(item);
        }
                            
        public function setAdKeyWordStatsAt(item:AdKeyWordStats,index:int):void {
            setItemAt(item,index);
        }

        public function asIList():IList {
            return this as IList;
        }
        
        public function asICollectionView():ICollectionView {
            return this as ICollectionView;
        }
    }
}
