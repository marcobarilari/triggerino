triggerCounter = 0;

nbTriggersToWait = 5;

cfg.mri.triggerKey = 't';


while triggerCounter < nbTriggersToWait
    
    keyCode = []; %#ok<NASGU>
    
    [~, keyCode] = KbPressWait(6);
    
    if strcmp(KbName(keyCode), cfg.mri.triggerKey)
        
        triggerCounter = triggerCounter + 1;
        
        msg = sprintf(' Trigger %i', triggerCounter);
        
        fprintf(msg)
        fprintf(newline)
        
    end
    
end


