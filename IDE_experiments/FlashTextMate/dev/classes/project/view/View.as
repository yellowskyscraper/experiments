﻿package project.view {	import flash.events.Event;	import flash.display.Sprite;			import project.model.Model;			import project.events.*;	import project.view.nav.NavController;	import project.view.main.SceneController;	import project.utils.DeepLinkController;////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| //| View Manages: Navigation, View Controller, Deep Link Controller	public class View extends Sprite {		private static var _nav 	:NavController;		private static var _scene 	:SceneController;		private static var _deep	:DeepLinkController;////////////////////////////////////////////////////////////////////////////////////////////////////////////| 				public function View()		{					_scene = new SceneController();		    			_nav = new NavController();				    			_deep = new DeepLinkController();			_deep.addEventListener(Event.CHANGE, onAddressBarChange);							addEventListener(GlobalNavEvent.NAV_SELECTION, onGlobalNavSelection);			addEventListener(GlobalNavEvent.RETURN_TO_HOME, onHomeBtnSelection); 		    addEventListener(GlobalNavEvent.UPDATE_PATH, updateGlobalDeepLink);			addEventListener(AppEvent.SCENE_TRANSITIONING, onSceneTransitioning);		    addEventListener(AppEvent.SCENE_FINISHED, onSceneFinished);		}////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| //| SITE NAVIGATION EVENTS				   			private function onAddressBarChange(e:Event):void		{		//| When Address Bar Changes notify ViewController and NavController			if(_scene) _scene.path = _deep.path;			if(_nav) _nav.path = _deep.path;		}				private function onGlobalNavSelection(e:GlobalNavEvent):void		{			_deep.path = [e.data.path];   			_scene.path = _deep.path; 		}					private function updateGlobalDeepLink(e:GlobalNavEvent):void		{		    _deep.path = [e.data.path];		}				private function onHomeBtnSelection(e:GlobalNavEvent):void		{            _deep.path = [e.data.path];			_scene.path = _deep.path;			_nav.path = _deep.path;		}  ////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| //| SCENE STATUS HANDLERS		private function onSceneTransitioning(e:AppEvent):void		{		    _nav.deactivate();	    }	    private function onSceneFinished(e:AppEvent):void		{		    _nav.activate();	    }	 ////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| //| HANDLE STAGE RESIZING				private function onAddedToStage(evt:Event):void		{				//| code around firefox bug on the mac	 			addEventListener(Event.ENTER_FRAME, checkForStageWidth);		}				private function checkForStageWidth(evt:Event):void		{			if (stage.stageWidth!=0){			//| tell the view & nav about any deeplinked value			    _scene.path = _deep.path;    			addChild(_scene);    			    			_nav.path = _deep.path;    			addChild(_nav);			 			//| Set Up Stage Positioning 				onStageResize(evt);				stage.addEventListener(Event.RESIZE, onStageResize);								removeEventListener(Event.ENTER_FRAME, checkForStageWidth);						}		}				private function onStageResize(e:Event):void		{			var w:int = stage.stageWidth;						var h:int = stage.stageHeight;					//| position elements based on stage size				if(_scene) _scene.position(w, h);						if(_nav) _nav.position(w, h);				}		////////////////////////////////////////////////////////////////////////////////////////////////////////////| 		}}