﻿package project.events {	import flash.events.Event////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| //| Application Specific Events	    public class GlobalNavEvent extends Event {    //| Application Events		public static const NEW_DEEP_LINK		:String = 'NewDeepLinkAddress';			public static const NAV_SELECTION		:String = 'GlobalNavSelection';			public static const RETURN_TO_HOME		:String = 'DisplayHomeState';		 	        public static const UPDATE_PATH         :String = 'UpdatePath';			private var _evt_type 			        :String;		private var _evt_data 			        :Object;			    public function GlobalNavEvent( $type:String, $data:Object = null )	    {			_evt_type = $type;			_evt_data = $data;			super($type, true, true);	    }	    		public function get data():Object 		{			return _evt_data;		}		public override function get type():String		{			return _evt_type;		}	    ////////////////////////////////////////////////////////////////////////////////////////////////////////////|     }}