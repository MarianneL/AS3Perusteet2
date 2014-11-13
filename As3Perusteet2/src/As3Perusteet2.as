package
{
	import flash.display.Sprite;
	import flash.events.*;
	import flash.text.*;
	import flash.text.engine.TextElement;

	public class As3Perusteet2 extends Sprite
	{
		/*var luku:int = 7;
		var myTextBox:TextField = new TextField();
		var myOutputBox:TextField = new TextField();
		var myText:String = "";*/
		
		private var myTextBox1:TextField = new TextField();
		private var myTextBox2:TextField = new TextField();
		
		public function As3Perusteet2()
		{
				
			/*var kuka:String = "Matti";
			var kerrat:int = 3;
			
			var textF:TextField;
			textF = new TextField();
			for(var i:int = 0; i < 100; i++) {
				textF.text = i + " ";
			}
			//textF.text = "Luomme tekstikentän ja kirjoitamme siihen";
			textF.autoSize = TextFieldAutoSize.LEFT;
			textF.background = true;
			textF.backgroundColor = 0x66FF66;
			textF.border = true;
			textF.borderColor = 0xFF0000;
			textF.selectable = true;
			textF.maxChars = 100;
			//addChild(textF);
			
			//tulostaTeksti();
			//tervehdiMontaKertaa(kuka, kerrat);
			//tekstinTulostus();
			//captureText();
			//textInput();*/
			
			//var teht25:Tehtava25 = new Tehtava25();
			//addChild(teht25);
			//var teht26:Tehtava26 = new Tehtava26();
			//addChild(teht26);
			var teht27:Tehtava27 = new Tehtava27();
			addChild(teht27);
		}
		
		
		public function tulostaTeksti():void {
			var kerrat:int = 7;
			var i:int = 0;
			var textF:TextField = new TextField();
			textF.autoSize = TextFieldAutoSize.LEFT;
			textF.text = "Kuinka monta kertaa?\n" + kerrat + "\n";
			addChild(textF);
			
			while(i < kerrat){
				textF.appendText("Alussa olivat suo, kuokka ja Jussi.\n");
				addChild(textF);
				i++;
			}
		}
		
		
		private function tervehdiMontaKertaa(kuka:String, kerrat:int):void
		{
			var i:int = 0;
			while ( i < kerrat ) {
				tervehdi(kuka);
				i++;
			}
		}
				
		private function tervehdi(nimi:String):void
		{
			var teksti:String = "Hei " + nimi + ", terveiset tervehdi-metodista\n";
			var textF:TextField = new TextField();
			textF.autoSize = TextFieldAutoSize.LEFT;
			textF.multiline = true; 
			textF.border = true; 
			textF.text = teksti;
			addChild(textF);
		}
		
		
		/*public function captureUserInput():void {
			captureText();
		}*/
		
		/*public function captureText():void {
			myTextBox.type = TextFieldType.INPUT;
			myTextBox.autoSize = TextFieldAutoSize.LEFT;
			myTextBox.border = true;
			addChild(myTextBox);
			myTextBox.text = myText;
			myTextBox.addEventListener(TextEvent.TEXT_INPUT, textInputCapture);
		}
		
		public function textInputCapture(event:TextEvent):void 
		{ 
			var str:String = myTextBox.text; 
			createOutputBox(str); 
		} 
		
		public function createOutputBox(str:String):void 
		{ 
			myOutputBox.autoSize = TextFieldAutoSize.LEFT;
			myOutputBox.background = true;
			myOutputBox.border = true;
			myOutputBox.x = 200; 
			addChild(myOutputBox); 
			myOutputBox.text = str; 
		} */
		
		
		public function textInput():void {
			myTextBox1.type = TextFieldType.INPUT;
			myTextBox1.width = 200;
			myTextBox1.height = 20;
			myTextBox1.background = true;
			myTextBox1.border = true;
			
			myTextBox2.x = 220;
			
			addChild(myTextBox1);
			addChild(myTextBox2);
			myTextBox1.addEventListener(TextEvent.TEXT_INPUT, textInputHandler);
		}
		
		public function textInputHandler(event:TextEvent):void {
			myTextBox2.text = event.text;
		}
		
		
	}
}