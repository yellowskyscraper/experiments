﻿/** *	CLASS : BaseSystem *  VERSION : 1.00  *  UPDATED : 7/23/2008 *  ACTIONSCRIPT VERSION : 3.0  *  AUTHOR : Stephen Braitsch : stephen@ordinarykids.com**/package com.ordinarykids.core {	import flash.display.MovieClip;	import flash.system.Capabilities;	import flash.net.URLVariables;	import com.ordinarykids.net.HTTPRequest;		////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| //| Class to detect features and activity of the end user's machine//| From here we can decide which config file or swf to load up.		public class BaseSystem extends MovieClip {				private static var _mailscript				:String = 'http://localhost:8888/php/diagnostics/flashplayer.php';	//| System Capabilites		protected static var avHardwareDisable		:Boolean = Capabilities.avHardwareDisable;		protected static var hasAccessibility		:Boolean = Capabilities.hasAccessibility;		protected static var hasAudio				:Boolean = Capabilities.hasAudio;		protected static var hasAudioEncoder		:Boolean = Capabilities.hasAudioEncoder;		protected static var hasEmbeddedVideo		:Boolean = Capabilities.hasEmbeddedVideo;		protected static var hasMP3					:Boolean = Capabilities.hasMP3;			protected static var hasPrinting			:Boolean = Capabilities.hasPrinting;		protected static var hasScreenBroadcast		:Boolean = Capabilities.hasScreenBroadcast;		protected static var hasScreenPlayback		:Boolean = Capabilities.hasScreenPlayback;		protected static var hasStreamingAudio		:Boolean = Capabilities.hasStreamingAudio;		protected static var hasVideoEncoder		:Boolean = Capabilities.hasVideoEncoder;				protected static var isDebugger				:Boolean = Capabilities.isDebugger;		protected static var language				:String  = Capabilities.language;			protected static var localFileReadDisable	:Boolean = Capabilities.localFileReadDisable;		protected static var manufacturer			:String  = Capabilities.manufacturer;		protected static var os						:String  = Capabilities.os;				protected static var pixelAspectRatio		:Number  = Capabilities.pixelAspectRatio;		protected static var playerType				:String  = Capabilities.playerType;			protected static var screenColor			:String  = Capabilities.screenColor;		protected static var screenDPI				:Number  = Capabilities.screenDPI;		protected static var screenResolutionX		:Number  = Capabilities.screenResolutionX;				protected static var screenResolutionY		:Number  = Capabilities.screenResolutionY;		protected static var serverString			:String  = Capabilities.serverString;		protected static var version				:String  = Capabilities.version;									 	protected static var bandwidth				:Number; //| todo assess user's bandwidth			public function BaseSystem () 		{            //dispatchCapabilities();		}		protected function dispatchCapabilities():void		{            var vars:URLVariables 			= new URLVariables();				vars.avHardwareDisable 		= avHardwareDisable;				vars.hasAccessibility 		= hasAccessibility;				vars.hasAudio 				= hasAudio;				vars.hasAudioEncoder 		= hasAudioEncoder;				vars.hasEmbeddedVideo 		= hasEmbeddedVideo;				vars.hasMP3	 				= hasMP3;				vars.hasPrinting			= hasPrinting;				vars.hasScreenBroadcast		= hasScreenBroadcast;				vars.hasScreenPlayback		= hasScreenPlayback;				vars.hasStreamingAudio		= hasStreamingAudio;				vars.hasVideoEncoder		= hasVideoEncoder;						vars.isDebugger				= isDebugger;				vars.language				= language;					vars.localFileReadDisable	= localFileReadDisable;				vars.manufacturer			= manufacturer;				vars.os						= os;						vars.pixelAspectRatio		= pixelAspectRatio;				vars.playerType				= playerType;					vars.screenColor			= screenColor;				vars.screenDPI				= screenDPI;				vars.screenResolutionX		= screenResolutionX;						vars.screenResolutionY		= screenResolutionY;				vars.serverString			= serverString;				vars.version				= version;						//| send and email with the user's system status 					var req = new HTTPRequest(_mailscript);				req.data = vars;				req.load();														}		}	}