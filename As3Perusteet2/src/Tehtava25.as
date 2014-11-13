package
{
	import flash.display.Sprite;
	import flash.text.*;
	
	
	public class Tehtava25 extends Sprite
	{
		public function Tehtava25()
		{
			var vastaus:int = summa(4, 3, 6, 1);
			var teksti:String = "Summa: " + vastaus;
			
			var textF:TextField = new TextField();
			textF.text = teksti;
			textF.autoSize = TextFieldAutoSize.LEFT;
			textF.border = true;
			
			addChild(textF);
			
			function summa(luku1:int, luku2:int, luku3:int, luku4:int):int {
				return luku1+luku2+luku3+luku4;
			}
			
		}
		
	}

}