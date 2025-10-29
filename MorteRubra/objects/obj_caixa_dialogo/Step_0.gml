if (numOfcharsVisible >= string_length(dialogues[0]))
{
	if (keyboard_check(vk_space))
	{
		array_delete(dialogues, 0, 1);	
		numOfcharsVisible = 0;
		alarm[0] = timerToShowChars;
		show_debug_message(array_length(dialogues));
	}
	
}

// Destroi a caixa quando os dialogos acabarem
if (array_length(dialogues) <= 0)
{
	instance_destroy();
}

// Printa a quantidade de caracteres exibidos
//show_debug_message("numOfVisibleChars: {0}", numOfcharsVisible);