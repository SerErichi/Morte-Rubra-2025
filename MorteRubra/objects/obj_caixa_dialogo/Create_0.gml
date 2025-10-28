//sprite configuration
spriteDimensions = new Vector2D(sprite_width, sprite_height); 
newDimensions = new Vector2D(768, 240);
basePositionForDrawing = new Vector2D(view_wport[0]/2, 
							view_wport[0]/2);


updateImageScale(newDimensions);

//Array com proposito de guardar as falas, quando as falas acabarem, instancia sera destruida
offSetPositionText = 4 * image_xscale
basePositionText = new Vector2D(basePositionForDrawing.x - sprite_width/2 + offSetPositionText, 
					basePositionForDrawing.y - sprite_height/2 + offSetPositionText);


dialogues = [];
numOfcharsVisible = 0;
timerToShowChars = .05*game_get_speed(gamespeed_fps); // timer é em frames, pegando 1/4 de seg em frames
alarm[0] = timerToShowChars;

//adiciona dialogo
addDialogue = function(_string)
{
	array_push(dialogues, _string);	
}