package com.larrio.dump.encrypt
{
	import com.larrio.dump.tags.DoABCTag;
	import com.larrio.dump.tags.FrameLabelTag;
	import com.larrio.dump.tags.SymbolClassTag;
	
	/**
	 * 
	 * @author larryhou
	 * @createTime Dec 22, 2012 8:51:50 PM
	 */
	public class EncryptItem
	{
		/**
		 * DoABC包含定义列表
		 */		
		public var definitions:Vector.<DefinitionItem>;
		
		/**
		 * 字符串常量池
		 */		
		public var strings:Vector.<String>;
		
		/**
		 * DoABCTag引用
		 */		
		public var tag:DoABCTag;
				
		/**
		 * 构造函数
		 * create a [EncryptItem] object
		 */
		public function EncryptItem(tag:DoABCTag)
		{
			this.tag = tag;
			
			this.strings = tag.abc.constants.strings;
			this.definitions = new Vector.<DefinitionItem>();
		}
	}
}