/**
 * PutAdGroupResponse.as
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

    public class PutAdGroupResponse extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function PutAdGroupResponse(source:Array = null)
        {
            super(source);
        }
        
        
        public function addAdGroupAt(item:AdGroup,index:int):void {
            addItemAt(item,index);
        }
            
        public function addAdGroup(item:AdGroup):void {
            addItem(item);
        } 

        public function getAdGroupAt(index:int):AdGroup {
            return getItemAt(index) as AdGroup;
        }
                
        public function getAdGroupIndex(item:AdGroup):int {
            return getItemIndex(item);
        }
                            
        public function setAdGroupAt(item:AdGroup,index:int):void {
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
