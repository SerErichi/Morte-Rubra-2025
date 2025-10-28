if (array_length(dialogues) <= 0)
{
	instance_destroy();
}


if !(numOfcharsVisible < string_length(dialogues[0]))
{
	if (keyboard_check(vk_space))
	{
		array_delete(dialogues, 0, 1);	
		numOfcharsVisible = 0;
		alarm[0] = timerToShowChars;
	}
	
}

show_debug_message("numOfVisibleChars: {0}", numOfcharsVisible);