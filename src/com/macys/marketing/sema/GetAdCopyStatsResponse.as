/**
 * GetAdCopyStatsResponse.as
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

    public class GetAdCopyStatsResponse extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function GetAdCopyStatsResponse(source:Array = null)
        {
            super(source);
        }
        
        
        public function addAdCopyStatsAt(item:AdCopyStats,index:int):void {
            addItemAt(item,index);
        }
            
        public function addAdCopyStats(item:AdCopyStats):void {
            addItem(item);
        } 

        public function getAdCopyStatsAt(index:int):AdCopyStats {
            return getItemAt(index) as AdCopyStats;
        }
                
        public function getAdCopyStatsIndex(item:AdCopyStats):int {
            return getItemIndex(item);
        }
                            
        public function setAdCopyStatsAt(item:AdCopyStats,index:int):void {
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
