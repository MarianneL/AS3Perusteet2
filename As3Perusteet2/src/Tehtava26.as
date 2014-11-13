package
{
	import flash.display.Sprite;
	import flash.text.*;
	import flash.text.TextField;
	
	
	public class Tehtava26 extends Sprite
	{
		public function Tehtava26()
		{
			var vastaus:int = pienin(2, 7);
			var teksti:String = "Pienin: " + vastaus;
			
			var textF:TextField = new TextField();
			textF.text = teksti;
			textF.autoSize = TextFieldAutoSize.LEFT;
			textF.border = true;
			
			addChild(textF);
		}
		
		public function pienin(luku1:int, luku2:int):int {
			var pienempiLuku:int;
			
			if(luku1 < luku2) {
				pienempiLuku = luku1;
			} else if (luku2 < luku1) {
				pienempiLuku = luku2;
			}
			
			return pienempiLuku;
		}
	}
}