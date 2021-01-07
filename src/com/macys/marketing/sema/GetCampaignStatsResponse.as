/**
 * GetCampaignStatsResponse.as
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

    public class GetCampaignStatsResponse extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function GetCampaignStatsResponse(source:Array = null)
        {
            super(source);
        }
        
        
        public function addCampaignStatsAt(item:CampaignStats,index:int):void {
            addItemAt(item,index);
        }
            
        public function addCampaignStats(item:CampaignStats):void {
            addItem(item);
        } 

        public function getCampaignStatsAt(index:int):CampaignStats {
            return getItemAt(index) as CampaignStats;
        }
                
        public function getCampaignStatsIndex(item:CampaignStats):int {
            return getItemIndex(item);
        }
                            
        public function setCampaignStatsAt(item:CampaignStats,index:int):void {
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
