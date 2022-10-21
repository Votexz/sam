local allowCountdown = false;
local playDialogue = false;
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('triggeredCutscene', true);
		runTimer('startDialogue', 0.1);
		tag = true;
		return Function_Stop;
	end
	return Function_Continue;
end
