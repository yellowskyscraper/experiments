﻿package project.view.graphics.text {	import flash.display.Sprite;	import flash.text.Font;	import flash.text.TextFormat;	import flash.text.TextField;	import flash.text.TextFieldAutoSize;	import flash.text.TextFieldType;	import flash.text.AntiAliasType;		import flash.events.Event;	import flash.events.MouseEvent;////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////|////////////////////////////////////////////////////////////////////////////////////////////////////////////| 	public class ParagraphText extends Sprite {	    	    private var _title          :String;	    private var _font           :Font;		private var _format         :TextFormat;		private var _field          :TextField;				public function ParagraphText($gui:Object)		{   		    var gui:Object = $gui;        		    _title                  = (gui.text) ? gui.text : "Paragraph Text";		    		    if(gui.fontcolor == 0xFFFFFF) _font = new ApexNewLight();		    else _font = new ApexNewMedium();		    		    _format                 = new TextFormat();		    _format.font            = _font.fontName;			_format.leading         = 4;			_format.size            = (gui.fontsize) ? gui.fontsize : 13;			_format.color           = (gui.fontcolor) ? gui.fontcolor : 0x747474;    						_field                  = new TextField();		    _field.x                = 0;			_field.y                = 0;			_field.width            = (gui.w) ? gui.w : 200; //| Width			_field.height           = 20;			_field.embedFonts       = true;			_field.multiline        = true;			_field.wordWrap         = true;			_field.selectable       = false;			_field.border           = false;			_field.borderColor      = 0xFFFFFF;			_field.htmlText         = _title;			_field.autoSize         = TextFieldAutoSize.LEFT;			_field.type             = TextFieldType.DYNAMIC;			_field.antiAliasType    = AntiAliasType.ADVANCED;						_field.setTextFormat(_format);						addChild(_field);		}				public function get getName():String		{		    return _title;		}					}}