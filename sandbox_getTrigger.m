%% getTrigger
%
% Shows you how to use Psychtoolbox to wait for a specific keyboard input before doing something.
% Example of usage: wait for n trigger inputs from the MRI (or 'triggerino') before starting your stimulation in a
% fMRI experiment

# Set the number if kb strokes to wait
nbTriggersToWait = 5;

# Set the kb stroker to listen to
cfg.mri.triggerKey = 't';

% Don't echo keypresses to Matlab window
ListenChar(-1);

triggerCounter = 0;

while triggerCounter < nbTriggersToWait

    keyCode = []; %#ok<NASGU>

    % Check if a key is pressed
    [~, keyCode] = KbPressWait(6);

    % If a key is pressed and is the target one then:
    if strcmp(KbName(keyCode), cfg.mri.triggerKey)

        triggerCounter = triggerCounter + 1;

        % Tell me which trigger has been sent
        msg = sprintf(' Trigger %i', triggerCounter);

        fprintf(msg)
        fprintf(newline)
        
    end

end

% Show again keypesses to Matlab window
ListenChar(0);
