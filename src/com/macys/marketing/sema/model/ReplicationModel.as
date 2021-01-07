package com.macys.marketing.sema.model
{
	
import com.macys.marketing.sema.model.type.ReplicateToken;

[Bindable]
public class ReplicationModel
{
	
	private var map:Array = new Array();
	
	public function ReplicationModel()
	{
		super();
	}
	
	/**
	 * This will overwrite existing key values
	 */
	public function add(key:String, value:ReplicateToken):void
	{
		trace("[RepModel] adding:", key);
		map[key] = value;
	}
	
	public function retrieve(key:String):ReplicateToken 
	{
		trace("[RepModel] getting:", key, map[key]);
		return map[key];
	}
	
	public function clear(key:String=""):void
	{
		if (key != "")
		{
			delete map[key];
		}
		else
		{
			//remove all
			map.removeAll();
		}
	}
	
	public function copyCount():Number
	{
		return map.length;
	}
	
	//TODO To handle multiple selection the map will need to handle duplicate keys
	
}
}