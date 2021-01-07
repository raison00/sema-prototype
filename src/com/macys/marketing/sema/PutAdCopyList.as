/**
 * PutAdCopyList.as
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

    public class PutAdCopyList extends ArrayCollection
    {
        /**
         * Constructor - initializes the array collection based on a source array
         */
        
        public function PutAdCopyList(source:Array = null)
        {
            super(source);
        }
        
        
        public function addAdCopyAt(item:AdCopy,index:int):void {
            addItemAt(item,index);
        }
            
        public function addAdCopy(item:AdCopy):void {
            addItem(item);
        } 

        public function getAdCopyAt(index:int):AdCopy {
            return getItemAt(index) as AdCopy;
        }
                
        public function getAdCopyIndex(item:AdCopy):int {
            return getItemIndex(item);
        }
                            
        public function setAdCopyAt(item:AdCopy,index:int):void {
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
