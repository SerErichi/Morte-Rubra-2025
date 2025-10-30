	draw_sprite_ext(sprite_index, 0, 
	basePositionForDrawing.x, 
	basePositionForDrawing.y, 
	image_xscale, image_yscale, 0, c_white, .75);

var _actualDialogueWithVisibleChars = string_delete(dialogues[0], -1, -(string_length(dialogues[0]) - numOfcharsVisible));



draw_text_ext(basePositionText.x, basePositionText.y, 
_actualDialogueWithVisibleChars, 
string_height(_actualDialogueWithVisibleChars), sprite_width - offSetPositionText - 35);
