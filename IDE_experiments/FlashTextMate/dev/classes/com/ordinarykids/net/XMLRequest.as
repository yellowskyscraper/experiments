﻿/** *	CLASS : XMLRequest *  VERSION : 1.10  *  DATE : 3/25/2009 *  ACTIONSCRIPT VERSION : 3.0  *  AUTHOR : Stephen Braitsch : stephen@ordinarykids.com**/package com.ordinarykids.net {		import flash.net.URLLoaderDataFormat;		import com.ordinarykids.net.HTTPRequest;	import com.ordinarykids.events.XMLRequestEvent;    import com.ordinarykids.events.HTTPRequestEvent;	/*	  	Simple class to cast the result of an HttpRequest into an XML Object	*/		public class XMLRequest extends HTTPRequest	{				private var _xml:XML;   			public function XMLRequest($url:String = ''):void		{			super.format = URLLoaderDataFormat.TEXT;			if ($url) super.load($url);			addEventListener(HTTPRequestEvent.COMPLETE, onXMLRequestComplete);					}				private function onXMLRequestComplete(evt:HTTPRequestEvent):void 		{			_xml = new XML(evt.data);			dispatchEvent(new XMLRequestEvent(XMLRequestEvent.COMPLETE, _xml));		}	         				}	}