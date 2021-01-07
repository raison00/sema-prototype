/**
 * GetAdGroupStatsResponse.as
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

    public class GetAdGroupStatsResponse extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function GetAdGroupStatsResponse(source:Array = null)
        {
            super(source);
        }
        
        
        public function addAdGroupStatsAt(item:AdGroupStats,index:int):void {
            addItemAt(item,index);
        }
            
        public function addAdGroupStats(item:AdGroupStats):void {
            addItem(item);
        } 

        public function getAdGroupStatsAt(index:int):AdGroupStats {
            return getItemAt(index) as AdGroupStats;
        }
                
        public function getAdGroupStatsIndex(item:AdGroupStats):int {
            return getItemIndex(item);
        }
                            
        public function setAdGroupStatsAt(item:AdGroupStats,index:int):void {
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
