package com.larrio.dump.tags
{
	import com.larrio.dump.codec.FileDecoder;
	import com.larrio.dump.codec.FileEncoder;
	import com.larrio.dump.model.RGBColor;
	
	/**
	 * 
	 * @author larryhou
	 * @createTime Dec 23, 2012 5:57:32 PM
	 */
	public class SetBackgroundColorTag extends SWFTag
	{
		public static const TYPE:uint = TagType.SET_BACKGROUND_COLOR;
		
		private var _color:RGBColor;
		
		/**
		 * 构造函数
		 * create a [SetBackgroundColorTag] object
		 */
		public function SetBackgroundColorTag()
		{
			
		}
		
		/**
		 * 二进制解码 
		 * @param decoder	解码器
		 */		
		override public function decode(decoder:FileDecoder):void
		{
			super.decode(decoder);
			
			decoder = new FileDecoder();
			decoder.writeBytes(_bytes);
			decoder.position = 0;
			
			_color = new RGBColor();
			_color.decode(decoder);
			
			trace(this);
		}
		
		/**
		 * 二进制编码 
		 * @param encoder	编码器
		 */		
		override public function encode(encoder:FileEncoder):void
		{
			writeTagHeader(encoder);
			
			_color.encode(encoder);
		}
		
		/**
		 * 字符串输出
		 */		
		public function toString():String
		{
			var result:XML = new XML("<SetBackgroundColorTag/>");
			result.appendChild(new XML(_color.toString()));
			return result.toXMLString();	
		}		

		/**
		 * 背景颜色
		 */		
		public function get color():RGBColor { return _color; }

	}
}