@interface VOSCommandProfile
+ (BOOL)_overlay:(id)_overlay shouldIncludeItem:(id)item;
+ (id)_parseProfileProperties:(id)properties overlayProperties:(id)overlayProperties;
+ (id)_profileKeyChordsFromDictionaryValue:(id)value;
+ (void)_addGesturesToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties;
+ (void)_addKeyboardShortcutsToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties;
+ (void)_addQuickNavShortcutsToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties;
+ (void)_addSecondaryCommandsToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties;
- (BOOL)commandHasAnyBindings:(id)bindings withResolver:(id)resolver;
- (BOOL)commandHasModifiedBindingsWhenZoomEnabled:(id)enabled withResolver:(id)resolver;
- (VOSCommandProfile)initWithCoder:(id)coder;
- (VOSCommandProfile)initWithProfileProperties:(id)properties overlayProperties:(id)overlayProperties;
- (VOSCommandProfileDelegate)delegate;
- (id)_initWithModes:(id)modes;
- (id)_profileCommandForCommand:(id)command inMode:(id)mode;
- (id)_profileModeForResolver:(id)resolver;
- (id)_profileModeForScreenreaderMode:(id)mode;
- (id)_resolvedSecondaryCommandForProfileCommand:(id)command resolver:(id)resolver;
- (id)addGesture:(id)gesture toCommand:(id)command withResolver:(id)resolver;
- (id)addKeyChord:(id)chord toCommand:(id)command withResolver:(id)resolver;
- (id)allCommandsWithResolver:(id)resolver;
- (id)allShortcutBindingsWithResolver:(id)resolver;
- (id)allSiriShortcutCommandsWithResolver:(id)resolver;
- (id)commandForKeyChord:(id)chord withResolver:(id)resolver;
- (id)commandForTouchGesture:(id)gesture withResolver:(id)resolver;
- (id)debugDescription;
- (id)gestureBindingsForCommand:(id)command withResolver:(id)resolver;
- (id)removeGesture:(id)gesture fromCommand:(id)command withResolver:(id)resolver;
- (id)removeKeyChord:(id)chord fromCommand:(id)command withResolver:(id)resolver;
- (id)shortcutBindingsForCommand:(id)command withResolver:(id)resolver;
- (id)userPresentableAllShortcutBindingsWithResolver:(id)resolver;
- (id)validateCanAddGesture:(id)gesture toCommand:(id)command withResolver:(id)resolver;
- (id)validateCanAddKeyChord:(id)chord toCommand:(id)command withResolver:(id)resolver;
- (unint64_t)availabilityForCommand:(id)command withResolver:(id)resolver;
- (unint64_t)availabilityForGesture:(id)gesture withResolver:(id)resolver;
- (unint64_t)availabilityForShortcut:(id)shortcut withResolver:(id)resolver;
@end

@implementation VOSCommandProfile

- (VOSCommandProfile)initWithProfileProperties:(id)properties overlayProperties:(id)overlayProperties
{
  v5 = [VOSCommandProfile _parseProfileProperties:properties overlayProperties:overlayProperties];
  v6 = [(VOSCommandProfile *)self _initWithModes:v5];

  return v6;
}

- (id)_initWithModes:(id)modes
{
  modesCopy = modes;
  v9.receiver = self;
  v9.super_class = VOSCommandProfile;
  v6 = [(VOSCommandProfile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modes, modes);
  }

  return v7;
}

- (id)debugDescription
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"VOSCommandProfile:<%p>\n", self];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = self->_modes;
  v35 = [(NSMutableSet *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v35)
  {
    v34 = *v55;
    do
    {
      v4 = 0;
      do
      {
        if (*v55 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v4;
        v5 = *(*(&v54 + 1) + 8 * v4);
        [v3 appendFormat:@" %@\n", v5];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        commands = [v5 commands];
        v6 = [commands countByEnumeratingWithState:&v50 objects:v61 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v51;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v51 != v8)
              {
                objc_enumerationMutation(commands);
              }

              v10 = *(*(&v50 + 1) + 8 * i);
              [v3 appendFormat:@"  %@\n", v10];
              gestures = [v10 gestures];
              v12 = [gestures count];

              if (v12)
              {
                [v3 appendString:@"   Gestures:\n"];
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                gestures2 = [v10 gestures];
                v14 = [gestures2 countByEnumeratingWithState:&v46 objects:v60 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v47;
                  do
                  {
                    for (j = 0; j != v15; ++j)
                    {
                      if (*v47 != v16)
                      {
                        objc_enumerationMutation(gestures2);
                      }

                      [v3 appendFormat:@"    %@\n", *(*(&v46 + 1) + 8 * j)];
                    }

                    v15 = [gestures2 countByEnumeratingWithState:&v46 objects:v60 count:16];
                  }

                  while (v15);
                }
              }

              keyboardShortcuts = [v10 keyboardShortcuts];
              v19 = [keyboardShortcuts count];

              if (v19)
              {
                [v3 appendString:@"   Keyboard Shortcuts:\n"];
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                keyboardShortcuts2 = [v10 keyboardShortcuts];
                v21 = [keyboardShortcuts2 countByEnumeratingWithState:&v42 objects:v59 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v43;
                  do
                  {
                    for (k = 0; k != v22; ++k)
                    {
                      if (*v43 != v23)
                      {
                        objc_enumerationMutation(keyboardShortcuts2);
                      }

                      [v3 appendFormat:@"    %@\n", *(*(&v42 + 1) + 8 * k)];
                    }

                    v22 = [keyboardShortcuts2 countByEnumeratingWithState:&v42 objects:v59 count:16];
                  }

                  while (v22);
                }
              }

              quickNavShortcuts = [v10 quickNavShortcuts];
              v26 = [quickNavShortcuts count];

              if (v26)
              {
                [v3 appendString:@"   QuickNav Shortcuts:\n"];
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                quickNavShortcuts2 = [v10 quickNavShortcuts];
                v28 = [quickNavShortcuts2 countByEnumeratingWithState:&v38 objects:v58 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v39;
                  do
                  {
                    for (m = 0; m != v29; ++m)
                    {
                      if (*v39 != v30)
                      {
                        objc_enumerationMutation(quickNavShortcuts2);
                      }

                      [v3 appendFormat:@"    %@\n", *(*(&v38 + 1) + 8 * m)];
                    }

                    v29 = [quickNavShortcuts2 countByEnumeratingWithState:&v38 objects:v58 count:16];
                  }

                  while (v29);
                }
              }
            }

            v7 = [commands countByEnumeratingWithState:&v50 objects:v61 count:16];
          }

          while (v7);
        }

        v4 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [(NSMutableSet *)obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v35);
  }

  return v3;
}

- (VOSCommandProfile)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"modes"];

  v10 = [v9 mutableCopy];
  v11 = [(VOSCommandProfile *)self _initWithModes:v10];

  return v11;
}

- (id)commandForTouchGesture:(id)gesture withResolver:(id)resolver
{
  v49 = *MEMORY[0x277D85DE8];
  resolverCopy = resolver;
  v7 = [(VOSCommandProfile *)self _modifiedGestureRespectingHandednessSetting:gesture];
  selfCopy = self;
  v8 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  screenreaderMode = [resolverCopy screenreaderMode];
  v10 = +[VOSScreenreaderMode BrailleScreenInput];
  if (screenreaderMode != v10)
  {
    goto LABEL_2;
  }

  bsiTypingMode = [resolverCopy bsiTypingMode];

  if (bsiTypingMode == 1)
  {
    v30 = [VOSGesture horizontalMirrorGestureForGesture:v7];
    screenreaderMode = v30;
    if (!v30)
    {
      goto LABEL_3;
    }

    screenreaderMode = v30;
    v10 = v7;
    v7 = screenreaderMode;
LABEL_2:

LABEL_3:
  }

  screenreaderMode2 = [resolverCopy screenreaderMode];
  v12 = +[VOSScreenreaderMode Default];
  if (screenreaderMode2 != v12)
  {
    goto LABEL_5;
  }

  shouldApplyRTL = [resolverCopy shouldApplyRTL];

  if (shouldApplyRTL)
  {
    v32 = [VOSGesture rtlGestureForGesture:v7];
    screenreaderMode2 = v32;
    if (!v32)
    {
      goto LABEL_6;
    }

    screenreaderMode2 = v32;
    v12 = v7;
    v7 = screenreaderMode2;
LABEL_5:

LABEL_6:
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  commands = [v8 commands];
  v14 = [commands countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    v35 = v8;
    v36 = resolverCopy;
    v38 = commands;
    v34 = *v44;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(commands);
        }

        v18 = *(*(&v43 + 1) + 8 * i);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        gestures = [v18 gestures];
        v20 = [gestures countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v40;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(gestures);
              }

              gesture = [*(*(&v39 + 1) + 8 * j) gesture];
              v25 = [gesture isEqual:v7];

              if (v25)
              {
                command = [v18 command];
                if (command)
                {
                  resolverCopy = v36;
                  v27 = selfCopy;
                  v8 = v35;
                  if ([(VOSCommandProfile *)selfCopy availabilityForCommand:command withResolver:v36]== 1)
                  {
                    v28 = VOTLogCommon();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      [VOSCommandProfile commandForTouchGesture:withResolver:];
                    }

                    command = 0;
                  }
                }

                else
                {
                  v8 = v35;
                  resolverCopy = v36;
                  v27 = selfCopy;
                }

                if (![(VOSCommandProfile *)v27 _checkCommandCapabilities:command])
                {

                  command = 0;
                }

                commands = v38;

                goto LABEL_39;
              }
            }

            v21 = [gestures countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        commands = v38;
        v16 = v34;
      }

      v15 = [v38 countByEnumeratingWithState:&v43 objects:v48 count:16];
      command = 0;
      v8 = v35;
      resolverCopy = v36;
    }

    while (v15);
  }

  else
  {
    command = 0;
  }

LABEL_39:

  return command;
}

- (id)commandForKeyChord:(id)chord withResolver:(id)resolver
{
  v43 = *MEMORY[0x277D85DE8];
  chordCopy = chord;
  resolverCopy = resolver;
  v8 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  commands = [v8 commands];
  v30 = [commands countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v30)
  {
    command = 0;
    goto LABEL_33;
  }

  v10 = *v38;
  v31 = v8;
  v32 = commands;
  v28 = *v38;
  selfCopy = self;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(commands);
      }

      v12 = *(*(&v37 + 1) + 8 * i);
      if ([resolverCopy isQuickNavKeyboardMode])
      {
        [v12 quickNavShortcuts];
      }

      else
      {
        [v12 keyboardShortcuts];
      }
      v13 = ;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = *v34;
      while (2)
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          keyChord = [*(*(&v33 + 1) + 8 * j) keyChord];
          v20 = [keyChord isEqual:chordCopy];

          if (v20)
          {
            if ([v12 hasSecondaryCommands])
            {
              v22 = selfCopy;
              v23 = [(VOSCommandProfile *)selfCopy _resolvedSecondaryCommandForProfileCommand:v12 resolver:resolverCopy];
              v8 = v31;
              if (v23)
              {
                command = v23;
LABEL_27:
                commands = v32;
                if ([(VOSCommandProfile *)v22 availabilityForCommand:command withResolver:resolverCopy]== 1)
                {
                  v26 = VOTLogCommon();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    [VOSCommandProfile commandForTouchGesture:withResolver:];
                  }

                  command = 0;
                  v8 = v31;
                }

                goto LABEL_32;
              }
            }

            else
            {
              resolvingEventOccurredBlock = [resolverCopy resolvingEventOccurredBlock];

              v8 = v31;
              v22 = selfCopy;
              if (resolvingEventOccurredBlock)
              {
                resolvingEventOccurredBlock2 = [resolverCopy resolvingEventOccurredBlock];
                (resolvingEventOccurredBlock2)[2](resolvingEventOccurredBlock2, 0, resolverCopy);
              }
            }

            command = [v12 command];
            if (command)
            {
              goto LABEL_27;
            }

            commands = v32;
LABEL_32:

            goto LABEL_33;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

LABEL_17:

      commands = v32;
      v10 = v28;
    }

    command = 0;
    v8 = v31;
    v30 = [v32 countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v30);
LABEL_33:

  return command;
}

- (id)_resolvedSecondaryCommandForProfileCommand:(id)command resolver:(id)resolver
{
  v29 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  resolverCopy = resolver;
  pressCount = [resolverCopy pressCount];
  v8 = [commandCopy secondaryCommandsForPressCount:pressCount];
  v9 = [v8 count];
  if (pressCount >= 2 && !v9)
  {
    resolvingEventOccurredBlock = [resolverCopy resolvingEventOccurredBlock];

    if (resolvingEventOccurredBlock)
    {
      resolvingEventOccurredBlock2 = [resolverCopy resolvingEventOccurredBlock];
      (resolvingEventOccurredBlock2)[2](resolvingEventOccurredBlock2, 1, resolverCopy);
    }

    v12 = [commandCopy secondaryCommandsForPressCount:1];

    v8 = v12;
  }

  if ([v8 count])
  {
    context = [resolverCopy context];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v25;
LABEL_9:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if ([v20 context] == context)
        {
          break;
        }

        if (![v20 context])
        {
          command = [v20 command];

          v17 = command;
        }

        if (v16 == ++v19)
        {
          v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v16)
          {
            goto LABEL_9;
          }

          goto LABEL_22;
        }
      }

      command2 = [v20 command];

      if (command2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = 0;
LABEL_22:
    }

    v17 = v17;
    command2 = v17;
LABEL_24:
  }

  else
  {
    command2 = 0;
  }

  return command2;
}

- (id)allCommandsWithResolver:(id)resolver
{
  v28 = *MEMORY[0x277D85DE8];
  resolverCopy = resolver;
  v5 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v6 = [MEMORY[0x277CBEB58] set];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  commands = [v5 commands];
  v8 = [commands countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(commands);
        }

        command = [*(*(&v23 + 1) + 8 * i) command];
        [v6 addObject:command];
      }

      v9 = [commands countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v13 = MEMORY[0x277CCAC30];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __45__VOSCommandProfile_allCommandsWithResolver___block_invoke;
  v20 = &unk_2784F38E0;
  selfCopy = self;
  v22 = resolverCopy;
  v14 = resolverCopy;
  v15 = [v13 predicateWithBlock:&v17];
  [v6 filterUsingPredicate:{v15, v17, v18, v19, v20, selfCopy}];

  return v6;
}

- (id)allSiriShortcutCommandsWithResolver:(id)resolver
{
  delegate = [(VOSCommandProfile *)self delegate];
  v5 = [delegate availableSiriShortcuts:self];
  v6 = [v5 ax_mappedArrayUsingBlock:&__block_literal_global_13];

  return v6;
}

- (id)allShortcutBindingsWithResolver:(id)resolver
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  resolverCopy = resolver;
  v6 = [v4 set];
  v7 = [resolverCopy copy];

  v8 = +[VOSScreenreaderMode Default];
  [v7 setScreenreaderMode:v8];

  [(VOSCommandProfile *)self _profileModeForResolver:v7];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = v31 = 0u;
  obj = [v22 commands];
  v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        if ([v7 isQuickNavKeyboardMode])
        {
          [v13 quickNavShortcuts];
        }

        else
        {
          [v13 keyboardShortcuts];
        }
        v14 = ;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              keyChord = [*(*(&v24 + 1) + 8 * j) keyChord];
              [v6 addObject:keyChord];
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  return v6;
}

- (id)userPresentableAllShortcutBindingsWithResolver:(id)resolver
{
  v3 = [(VOSCommandProfile *)self allShortcutBindingsWithResolver:resolver];
  allObjects = [v3 allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_317_0];

  return v5;
}

uint64_t __68__VOSCommandProfile_userPresentableAllShortcutBindingsWithResolver___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isFunctionKeyChord];
  v7 = [v5 isFunctionKeyChord];
  if (!v6 || v7)
  {
    if (v6 & 1 | ((v7 & 1) == 0))
    {
      v9 = [v4 keys];
      v10 = [v9 reverseObjectEnumerator];
      v11 = [v10 allObjects];
      v12 = [v11 componentsJoinedByString:&stru_283729578];

      v13 = [v5 keys];
      v14 = [v13 reverseObjectEnumerator];
      v15 = [v14 allObjects];
      v16 = [v15 componentsJoinedByString:&stru_283729578];

      v17 = [v4 keys];
      v18 = [v17 lastObject];
      v19 = [v18 lowercaseString];

      v20 = [v5 keys];
      v21 = [v20 lastObject];
      v22 = [v21 lowercaseString];

      v8 = [v12 compare:v16 options:{objc_msgSend(v19, "isEqualToString:", v22) ^ 1}];
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)gestureBindingsForCommand:(id)command withResolver:(id)resolver
{
  v36 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  resolverCopy = resolver;
  v8 = [MEMORY[0x277CBEB58] set];
  v25 = resolverCopy;
  v9 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  commands = [v9 commands];
  v11 = [commands countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(commands);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        command = [v15 command];
        v17 = [command isEqual:commandCopy];

        if (v17)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          gestures = [v15 gestures];
          v19 = [gestures countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v27;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v27 != v21)
                {
                  objc_enumerationMutation(gestures);
                }

                gesture = [*(*(&v26 + 1) + 8 * j) gesture];
                [v8 addObject:gesture];
              }

              v20 = [gestures countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v20);
          }

          goto LABEL_18;
        }
      }

      v12 = [commands countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v8;
}

- (id)shortcutBindingsForCommand:(id)command withResolver:(id)resolver
{
  v35 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  resolverCopy = resolver;
  v8 = [MEMORY[0x277CBEB58] set];
  [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = v32 = 0u;
  commands = [v24 commands];
  v10 = [commands countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(commands);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        command = [v14 command];
        v16 = [command isEqual:commandCopy];

        if (v16)
        {
          if ([resolverCopy isQuickNavKeyboardMode])
          {
            [v14 quickNavShortcuts];
          }

          else
          {
            [v14 keyboardShortcuts];
          }

          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v17 = v26 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v26;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                keyChord = [*(*(&v25 + 1) + 8 * j) keyChord];
                [v8 addObject:keyChord];
              }

              v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v19);
          }

          goto LABEL_21;
        }
      }

      v11 = [commands countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  return v8;
}

- (BOOL)commandHasAnyBindings:(id)bindings withResolver:(id)resolver
{
  bindingsCopy = bindings;
  resolverCopy = resolver;
  v8 = [(VOSCommandProfile *)self gestureBindingsForCommand:bindingsCopy withResolver:resolverCopy];
  v9 = [v8 count];

  if (v9 || (-[VOSCommandProfile shortcutBindingsForCommand:withResolver:](self, "shortcutBindingsForCommand:withResolver:", bindingsCopy, resolverCopy), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11))
  {
    v12 = 1;
  }

  else
  {
    v14 = [resolverCopy copy];
    [v14 setKeyboardMode:1];
    v15 = [(VOSCommandProfile *)self shortcutBindingsForCommand:bindingsCopy withResolver:v14];
    v12 = [v15 count] != 0;
  }

  return v12;
}

- (unint64_t)availabilityForGesture:(id)gesture withResolver:(id)resolver
{
  gestureCopy = gesture;
  resolverCopy = resolver;
  screenreaderMode = [resolverCopy screenreaderMode];
  v8 = +[VOSScreenreaderMode Default];

  if (screenreaderMode == v8)
  {
    v12 = +[VOSGesture OneFingerSingleTap];
    if (v12 == gestureCopy)
    {
      goto LABEL_37;
    }

    v13 = +[VOSGesture OneFingerDoubleTap];
    if (v13 != gestureCopy)
    {
      v14 = +[VOSGesture OneFingerFlickLeft];
      v15 = v14;
      if (v14 != gestureCopy)
      {
        v16 = +[VOSGesture OneFingerFlickRight];

        if (v16 == gestureCopy)
        {
          goto LABEL_38;
        }

        v17 = +[VOSGesture TwoFingerSingleTapAndHold];

        if (v17 == gestureCopy)
        {
          goto LABEL_38;
        }

        v18 = +[VOSGesture OneFingerSingleTapAndHold];
        if (v18 != gestureCopy)
        {
          v19 = +[VOSGesture OneFingerDoubleTapAndHold];
          if (v19 != gestureCopy)
          {
            v20 = +[VOSGesture TwoFingerDoubleTapAndHold];
            if (v20 != gestureCopy)
            {
              v21 = +[VOSGesture ThreeFingerSingleTapAndHold];
              v22 = v21;
              if (v21 != gestureCopy)
              {
                v23 = +[VOSGesture ThreeFingerDoubleTapAndHold];

                if (v23 == gestureCopy)
                {
LABEL_65:
                  v11 = 2;
LABEL_39:
                  if (([resolverCopy isIPad] & 1) == 0)
                  {
                    v37 = +[VOSGesture fiveFingerGestures];
                    v38 = [v37 containsObject:gestureCopy];

                    if (v38)
                    {
                      v11 = 2;
                    }
                  }

                  v39 = +[VOSGesture oneFingerSplitGestures];
                  if ([v39 containsObject:gestureCopy])
                  {
                    goto LABEL_49;
                  }

                  v40 = +[VOSGesture twoFingerSplitGestures];
                  v41 = [v40 containsObject:gestureCopy];

                  if (v41)
                  {
                    goto LABEL_50;
                  }

LABEL_57:
                  if (v11 != -1)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_4;
                }

                v12 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
                if (v12 != gestureCopy)
                {
                  v24 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];

                  if (v24 != gestureCopy)
                  {
                    v18 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
                    if (v18 != gestureCopy)
                    {
                      v25 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];

                      if (v25 != gestureCopy)
                      {
                        v26 = +[VOSGesture TwoFingerPinch];

                        if (v26 == gestureCopy)
                        {
                          v11 = 2;
                        }

                        else
                        {
                          v11 = -1;
                        }

                        goto LABEL_39;
                      }

                      goto LABEL_65;
                    }

                    goto LABEL_64;
                  }

LABEL_38:
                  v11 = 1;
                  goto LABEL_39;
                }

LABEL_37:

                goto LABEL_38;
              }
            }
          }
        }

LABEL_64:

        goto LABEL_65;
      }
    }

    goto LABEL_37;
  }

  v9 = +[VOSScreenreaderMode Handwriting];

  if (screenreaderMode != v9)
  {
    v10 = +[VOSScreenreaderMode BrailleScreenInput];

    if (screenreaderMode != v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_51;
    }

    v33 = +[VOSGesture TwoFingerRotateCounterclockwise];
    if (v33 != gestureCopy)
    {
      v34 = +[VOSGesture TwoFingerRotateClockwise];

      if (v34 == gestureCopy)
      {
        goto LABEL_50;
      }

      v35 = +[VOSGesture TwoFingerScrub];

      if (v35 == gestureCopy)
      {
LABEL_60:
        v11 = 1;
        goto LABEL_51;
      }

      if ([VOSGestureCategory isTapGesture:gestureCopy]|| [VOSGestureCategory isTapAndHoldGesture:gestureCopy])
      {
LABEL_50:
        v11 = 2;
        goto LABEL_51;
      }

      v36 = +[VOSGesture oneFingerSplitGestures];
      if ([v36 containsObject:gestureCopy])
      {

        goto LABEL_60;
      }

      v49 = +[VOSGesture twoFingerSplitGestures];
      v50 = [v49 containsObject:gestureCopy];

      if (v50)
      {
        goto LABEL_60;
      }

      v33 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickLeft];
      if (v33 != gestureCopy)
      {
        v51 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickRight];
        if (v51 != gestureCopy)
        {
          v52 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickUp];
          v53 = v52;
          if (v52 != gestureCopy)
          {
            v54 = +[VOSGesture ThreeFingerDoubleTapHoldAndFlickDown];

            if (v54 != gestureCopy)
            {
              goto LABEL_4;
            }

            goto LABEL_50;
          }
        }
      }
    }

    goto LABEL_50;
  }

  v27 = +[VOSGesture TwoFingerRotateCounterclockwise];
  if (v27 == gestureCopy)
  {
    goto LABEL_46;
  }

  v28 = +[VOSGesture TwoFingerRotateClockwise];
  v29 = v28;
  if (v28 == gestureCopy)
  {

LABEL_46:
    goto LABEL_47;
  }

  v30 = +[VOSGesture TwoFingerScrub];

  if (v30 == gestureCopy)
  {
LABEL_47:
    v32 = 1;
    goto LABEL_48;
  }

  v31 = +[VOSGesture TwoFingerPinch];

  if (v31 == gestureCopy)
  {
    v32 = 2;
  }

  else
  {
    v32 = -1;
  }

LABEL_48:
  v42 = +[VOSGesture oneFingerGestures];
  v43 = [v42 containsObject:gestureCopy];

  v39 = +[VOSGesture oneFingerSplitGestures];
  if ([v39 containsObject:gestureCopy])
  {
LABEL_49:

    goto LABEL_50;
  }

  v45 = v43 == 0;
  v11 = 2;
  if (v45)
  {
    v46 = v32;
  }

  else
  {
    v46 = 2;
  }

  v47 = +[VOSGesture twoFingerSplitGestures];
  v48 = [v47 containsObject:gestureCopy];

  if ((v48 & 1) == 0)
  {
    v11 = v46;
    goto LABEL_57;
  }

LABEL_51:

  return v11;
}

- (unint64_t)availabilityForShortcut:(id)shortcut withResolver:(id)resolver
{
  resolverCopy = resolver;
  screenreaderMode = [resolverCopy screenreaderMode];
  isQuickNavKeyboardMode = [resolverCopy isQuickNavKeyboardMode];

  if (isQuickNavKeyboardMode)
  {
    v7 = 1;
  }

  else
  {
    v8 = +[VOSScreenreaderMode Default];

    if (screenreaderMode != v8)
    {
      v9 = +[VOSScreenreaderMode Handwriting];

      if (screenreaderMode != v9)
      {
        +[VOSScreenreaderMode BrailleScreenInput];
      }
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)availabilityForCommand:(id)command withResolver:(id)resolver
{
  commandCopy = command;
  resolverCopy = resolver;
  if ((AXIsInternalInstall() & 1) != 0 || (+[VOSCommandCategory internalOnly](VOSCommandCategory, "internalOnly"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsCommand:commandCopy], v7, (v8 & 1) == 0))
  {
    screenreaderMode = [resolverCopy screenreaderMode];
    v11 = +[VOSScreenreaderMode Default];

    if (screenreaderMode == v11)
    {
      if ([resolverCopy isIPad] & 1) != 0 || (objc_msgSend(resolverCopy, "isWatch"))
      {
        v9 = -1;
      }

      else
      {
        v17 = +[VOSCommand ToggleDock];

        if (v17 == commandCopy)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }
      }

      if (([resolverCopy isIPhone] & 1) == 0)
      {
        v18 = +[VOSCommand ToggleReachability];

        if (v18 == commandCopy)
        {
          v9 = 1;
          goto LABEL_22;
        }
      }

      if (v9 != -1)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v12 = +[VOSScreenreaderMode Handwriting];
      v13 = v12;
      if (screenreaderMode == v12)
      {

LABEL_12:
        v15 = +[VOSCommand GesturedTextInputLaunchApp];

        if (v15 != commandCopy)
        {
          v16 = +[VOSScreenreaderMode Handwriting];

          if (screenreaderMode != v16)
          {
            +[VOSScreenreaderMode BrailleScreenInput];
          }
        }

        goto LABEL_21;
      }

      v14 = +[VOSScreenreaderMode BrailleScreenInput];

      if (screenreaderMode == v14)
      {
        goto LABEL_12;
      }
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v9 = 1;
LABEL_23:

  return v9;
}

- (BOOL)commandHasModifiedBindingsWhenZoomEnabled:(id)enabled withResolver:(id)resolver
{
  v4 = [(VOSCommandProfile *)self gestureBindingsForCommand:enabled withResolver:resolver];
  v5 = +[VOSGesture conflictingZoomGestures];
  v6 = [v4 intersectsSet:v5];

  return v6;
}

- (id)addGesture:(id)gesture toCommand:(id)command withResolver:(id)resolver
{
  commandCopy = command;
  resolverCopy = resolver;
  v10 = [(VOSCommandProfile *)self _modifiedGestureRespectingHandednessSetting:gesture];
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];

  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:commandCopy inMode:v11];
  if (!v12)
  {
    v12 = [_VOSProfileCommand profileCommandWithCommand:commandCopy];
  }

  v13 = +[VOSCommand None];
  v14 = [(VOSCommandProfile *)self _profileCommandForCommand:v13 inMode:v11];

  v15 = [_VOSProfileGesture profileGestureWithGesture:v10];
  gestures = [v14 gestures];
  v17 = [gestures containsObject:v15];

  if (v17)
  {
    [v14 removeGesture:v15];
  }

  [v12 addGesture:v15];
  [v11 addCommand:v12];

  return 0;
}

- (id)removeGesture:(id)gesture fromCommand:(id)command withResolver:(id)resolver
{
  commandCopy = command;
  resolverCopy = resolver;
  v10 = [(VOSCommandProfile *)self _modifiedGestureRespectingHandednessSetting:gesture];
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:commandCopy inMode:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 profileGestureForGesture:v10];
    if (v14)
    {
      [v13 removeGesture:v14];
      gestures = [v13 gestures];
      v16 = [gestures count];

      if (!v16)
      {
        v17 = +[VOSCommand None];
        v18 = [(VOSCommandProfile *)self addGesture:v10 toCommand:v17 withResolver:resolverCopy];
      }

      v19 = 0;
    }

    else
    {
      v19 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove gesture '%@' from command '%@' with resolver '%@'. profileGesture was nil.", v10, commandCopy, resolverCopy}];
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove gesture '%@' from command '%@' with resolver '%@'. profileCommand was nil.", v10, commandCopy, resolverCopy}];
  }

  return v19;
}

- (id)addKeyChord:(id)chord toCommand:(id)command withResolver:(id)resolver
{
  commandCopy = command;
  resolverCopy = resolver;
  chordCopy = chord;
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:commandCopy inMode:v11];
  if (v12)
  {
    v13 = [_VOSProfileKeyChord profileKeyChordWithKeyChord:chordCopy];

    if ([resolverCopy isQuickNavKeyboardMode])
    {
      [v12 addQuickNavShortcut:v13];
    }

    else
    {
      [v12 addKeyboardShortcut:v13];
    }

    v14 = 0;
    chordCopy = v13;
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot add keychord '%@' to command '%@' with resolver '%@'. ProfileCommand was nil.", chordCopy, commandCopy, resolverCopy}];
  }

  return v14;
}

- (id)removeKeyChord:(id)chord fromCommand:(id)command withResolver:(id)resolver
{
  chordCopy = chord;
  commandCopy = command;
  resolverCopy = resolver;
  v11 = [(VOSCommandProfile *)self _profileModeForResolver:resolverCopy];
  v12 = [(VOSCommandProfile *)self _profileCommandForCommand:commandCopy inMode:v11];
  if (v12)
  {
    if ([resolverCopy isQuickNavKeyboardMode])
    {
      [v12 profileQuickNavShortcutForKeyChord:chordCopy];
    }

    else
    {
      [v12 profileKeyboardShortcutForKeyChord:chordCopy];
    }
    v14 = ;
    if (v14)
    {
      if ([resolverCopy isQuickNavKeyboardMode])
      {
        [v12 removeQuickNavShortcut:v14];
      }

      else
      {
        [v12 removeKeyboardShortcut:v14];
      }

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove keychord '%@' from command '%@' with resolver '%@'. profileKeyChord was nil.", chordCopy, commandCopy, resolverCopy}];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:@"VoiceOverCommands" description:{@"Cannot remove keychord '%@' from command '%@' with resolver '%@'. profileCommand was nil.", chordCopy, commandCopy, resolverCopy}];
  }

  return v13;
}

- (id)validateCanAddGesture:(id)gesture toCommand:(id)command withResolver:(id)resolver
{
  commandCopy = command;
  v9 = [(VOSCommandProfile *)self commandForTouchGesture:gesture withResolver:resolver];
  LODWORD(gesture) = [v9 isEqual:commandCopy];

  if (gesture)
  {
    v10 = [[VOSCommandProfileValidation alloc] initWithType:1];
  }

  else if (v9 && (+[VOSCommand None](VOSCommand, "None"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v9 isEqual:v11], v11, (v12 & 1) == 0))
  {
    v10 = [VOSCommandProfileValidation gestureAssignedToOtherCommandValidation:v9];
  }

  else
  {
    v10 = +[VOSCommandProfileValidation successfulValidation];
  }

  v13 = v10;

  return v13;
}

- (id)validateCanAddKeyChord:(id)chord toCommand:(id)command withResolver:(id)resolver
{
  commandCopy = command;
  v9 = [(VOSCommandProfile *)self commandForKeyChord:chord withResolver:resolver];
  LODWORD(chord) = [v9 isEqual:commandCopy];

  if (chord)
  {
    v10 = [[VOSCommandProfileValidation alloc] initWithType:3];
  }

  else
  {
    if (v9)
    {
      [VOSCommandProfileValidation keyboardShortcutAssignedToOtherCommandValidation:v9];
    }

    else
    {
      +[VOSCommandProfileValidation successfulValidation];
    }
    v10 = ;
  }

  v11 = v10;

  return v11;
}

- (id)_profileModeForResolver:(id)resolver
{
  screenreaderMode = [resolver screenreaderMode];
  v5 = [(VOSCommandProfile *)self _profileModeForScreenreaderMode:screenreaderMode];

  return v5;
}

- (id)_profileModeForScreenreaderMode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_modes;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        mode = [v9 mode];
        v11 = [mode isEqual:modeCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_profileCommandForCommand:(id)command inMode:(id)mode
{
  v41 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  modeCopy = mode;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  commands = [modeCopy commands];
  v8 = [commands countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(commands);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        command = [v12 command];
        v14 = [command isEqual:commandCopy];

        if (v14)
        {
          v19 = v12;

          goto LABEL_28;
        }
      }

      v9 = [commands countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  commandType = [commandCopy commandType];
  if (commandType == 1)
  {
    goto LABEL_22;
  }

  if (commandType)
  {
LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  mode = [modeCopy mode];
  v17 = +[VOSScreenreaderMode Handwriting];
  v18 = v17;
  if (mode == v17)
  {
    v20 = +[VOSCommandCategory handwriting];
    v21 = [v20 containsCommand:commandCopy];

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  mode2 = [modeCopy mode];
  v23 = +[VOSScreenreaderMode BrailleScreenInput];
  v24 = v23;
  if (mode2 == v23)
  {
    v25 = +[VOSCommandCategory brailleScreenInput];
    v26 = [v25 containsCommand:commandCopy];

    if (v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  mode3 = [modeCopy mode];
  v28 = +[VOSScreenreaderMode Default];
  v29 = v28;
  if (mode3 == v28)
  {
    v30 = +[VOSCommandCategory allCategories];
    v31 = [VOSCommandCategory categories:v30 containsCommand:commandCopy];

    if (v31)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v32 = +[VOSCommand None];
  v33 = [commandCopy isEqual:v32];

  if ((v33 & 1) == 0)
  {
    v34 = VOTLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [VOSCommandProfile _profileCommandForCommand:inMode:];
    }

    goto LABEL_27;
  }

LABEL_22:
  v19 = [_VOSProfileCommand profileCommandWithCommand:commandCopy];
  if (v19)
  {
    [modeCopy addCommand:v19];
  }

LABEL_28:

  return v19;
}

+ (BOOL)_overlay:(id)_overlay shouldIncludeItem:(id)item
{
  bOOLValue = 1;
  if (_overlay && item)
  {
    v5 = [_overlay objectForKeyedSubscript:item];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v5 BOOLValue];
    }
  }

  return bOOLValue;
}

+ (id)_parseProfileProperties:(id)properties overlayProperties:(id)overlayProperties
{
  v6 = MEMORY[0x277CBEB58];
  overlayPropertiesCopy = overlayProperties;
  propertiesCopy = properties;
  v9 = [v6 set];
  v10 = [propertiesCopy objectForKeyedSubscript:@"ScreenReaderModes"];

  v11 = [overlayPropertiesCopy objectForKeyedSubscript:@"ScreenReaderModes"];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_2;
  v17[3] = &unk_2784F39B8;
  selfCopy = self;
  v18 = v11;
  v12 = v9;
  v19 = v12;
  v20 = &__block_literal_global_348;
  v13 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v17];
  v14 = v20;
  v15 = v12;

  return v12;
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a2;
  v8 = a4;
  v9 = a5;
  v10 = [_VOSProfileCommand profileCommandWithStringValue:a3];
  if (v10)
  {
    [v11 addCommand:v10];
    [VOSCommandProfile _addGesturesToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
    [VOSCommandProfile _addKeyboardShortcutsToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
    [VOSCommandProfile _addQuickNavShortcutsToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
    [VOSCommandProfile _addSecondaryCommandsToCommand:v10 fromCommandProperties:v8 overlayProperties:v9];
  }
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([a1[7] _overlay:a1[4] shouldIncludeItem:v5])
  {
    v7 = [_VOSProfileMode profileModeWithStringValue:v5];
    if (v7)
    {
      [a1[5] addObject:v7];
      v8 = [a1[4] objectForKeyedSubscript:v5];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_3;
      v19[3] = &unk_2784F3968;
      v20 = v8;
      v14 = *(a1 + 3);
      v9 = v14;
      v22 = v14;
      v10 = v7;
      v21 = v10;
      v11 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v19];
      v12 = [v6 allKeys];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_4;
      v15[3] = &unk_2784F3990;
      v16 = v12;
      v18 = a1[6];
      v17 = v10;
      v13 = v12;
      [v11 enumerateKeysAndObjectsUsingBlock:v15];
    }
  }
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([*(a1 + 56) _overlay:*(a1 + 32) shouldIncludeItem:v9])
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = [*(a1 + 32) objectForKeyedSubscript:v9];
    (*(v6 + 16))(v6, v7, v9, v5, v8);
  }
}

void __63__VOSCommandProfile__parseProfileProperties_overlayProperties___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }
}

+ (void)_addGesturesToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties
{
  v24[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  propertiesCopy = properties;
  overlayPropertiesCopy = overlayProperties;
  if ([self _overlay:overlayPropertiesCopy shouldIncludeItem:@"TouchGesture"])
  {
    v11 = [overlayPropertiesCopy objectForKeyedSubscript:@"TouchGesture"];
    if (!v11)
    {
      v11 = [propertiesCopy objectForKeyedSubscript:@"TouchGesture"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24[0] = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      }

      else
      {
        v12 = 0;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [_VOSProfileGesture profileGestureWithStringValue:*(*(&v19 + 1) + 8 * v17), v19];
          if (v18)
          {
            [commandCopy addGesture:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

+ (void)_addKeyboardShortcutsToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties
{
  v22 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  propertiesCopy = properties;
  overlayPropertiesCopy = overlayProperties;
  if ([self _overlay:overlayPropertiesCopy shouldIncludeItem:@"KeyChord"])
  {
    v11 = [overlayPropertiesCopy objectForKeyedSubscript:@"KeyChord"];
    if (!v11)
    {
      v11 = [propertiesCopy objectForKeyedSubscript:@"KeyChord"];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [self _profileKeyChordsFromDictionaryValue:{v11, 0}];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [commandCopy addKeyboardShortcut:*(*(&v17 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

+ (void)_addQuickNavShortcutsToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties
{
  v22 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  propertiesCopy = properties;
  overlayPropertiesCopy = overlayProperties;
  if ([self _overlay:overlayPropertiesCopy shouldIncludeItem:@"QuickNav"])
  {
    v11 = [overlayPropertiesCopy objectForKeyedSubscript:@"QuickNav"];
    if (!v11)
    {
      v11 = [propertiesCopy objectForKeyedSubscript:@"QuickNav"];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [self _profileKeyChordsFromDictionaryValue:{v11, 0}];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [commandCopy addQuickNavShortcut:*(*(&v17 + 1) + 8 * v16++)];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

+ (void)_addSecondaryCommandsToCommand:(id)command fromCommandProperties:(id)properties overlayProperties:(id)overlayProperties
{
  commandCopy = command;
  v7 = [properties objectForKeyedSubscript:@"SecondaryCommands"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke;
    v9[3] = &unk_2784F39E0;
    v10 = commandCopy;
    [v7 enumerateKeysAndObjectsUsingBlock:v9];
    v8 = v10;
LABEL_6:

    goto LABEL_7;
  }

  if (v7)
  {
    v8 = VOTLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[VOSCommandProfile _addSecondaryCommandsToCommand:fromCommandProperties:overlayProperties:];
    }

    goto LABEL_6;
  }

LABEL_7:
}

void __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"Context"];
  v8 = v7;
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"TextEntry"])
  {
    v9 = 1;
LABEL_7:
    v10 = [v6 objectForKeyedSubscript:@"PressCount"];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &unk_2837363C8;
    }

    v12 = [_VOSProfileSecondaryCommand profileSecondaryCommandWithStringValue:v5 context:v9 pressCount:[v11 unsignedIntegerValue]];
    if (v12)
    {
      [*(a1 + 32) addSecondaryCommand:v12];
    }

    else
    {
      v13 = VOTLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke_cold_2();
      }
    }

    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"TableNavigation"])
  {
    v9 = 2;
    goto LABEL_7;
  }

  v11 = VOTLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __92__VOSCommandProfile__addSecondaryCommandsToCommand_fromCommandProperties_overlayProperties___block_invoke_cold_1();
  }

LABEL_16:
}

+ (id)_profileKeyChordsFromDictionaryValue:(id)value
{
  v19[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = valueCopy;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([v5 count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_VOSProfileKeyChord profileKeyChordWithStringValue:*(*(&v14 + 1) + 8 * i), v14];
          if (v12)
          {
            [array addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (VOSCommandProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end