%% getTrigger
%
% Shows you how to use Psychtoolbox to wait for a specific keyboard input before doing something.
% Example of usage: wait for n trigger inputs from 'triggerino' (or MRI) before starting your
% stimulation in an fMRI experiment
%
% To find out which `deviceNumber` is assigned to the Arduino board, c/p this in the matlab/octave
% command window (if empty, the main kb is default):
%
% [keyboardNumbers, keyboardNames] = GetKeyboardIndices

% Set the number if kb strokes to wait
nbTriggersToWait = 5;

% Set the kb stroker to listen to
triggerKey = 't';

% Set the device number of the Arduino Leonardo
deviceNumber = [];

% Don't echo keypresses to Matlab window
ListenChar(-1);

triggerCounter = 0;

while triggerCounter < nbTriggersToWait

    keyCode = []; %#ok<NASGU>

    % Check if a key is pressed
    [~, keyCode] = KbPressWait(deviceNumber);

    % If a key is pressed and is the target one then:
    if strcmp(KbName(keyCode), triggerKey)

        triggerCounter = triggerCounter + 1;

        % Tell me which trigger has been sent
        msg = sprintf(' Trigger %i', triggerCounter);

        fprintf(msg)
        fprintf(newline)

    end

end

% Show again keypesses to Matlab window
ListenChar(0);
