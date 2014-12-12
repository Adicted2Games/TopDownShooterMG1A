package  
{
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author David Zwitser
	 */
	public class ScoreBoard extends TextField
	{
		//[Embed(source = "../lib/Olympic Branding.ttf")]
		//private var Font:Class;
		
		private var _score:Number = 0;
		
		public function set score(s:Number):void
		{
			_score = s;
			this.text = "score : " + _score;
			
		}
		public function get score():Number
		{
			return _score;
		}
		
		public function ScoreBoard() 
		{
					
			removeEventListener(Event.ADDED_TO_STAGE, init);
			this.defaultTextFormat = new TextFormat("Verdana", 30, 0x8824FF, true);
			this.width = 300;
			this.text = "Score : " + _score;
			
		}
		
	}

}