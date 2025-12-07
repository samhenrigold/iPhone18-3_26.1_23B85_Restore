@interface AXSSKeyboardCommandCategory
+ (id)_advancedCommandsFromAvailableCommands:(id)commands;
+ (id)_basicCommandsFromAvailableCommands:(id)commands;
+ (id)_categoryWithCommandIdentifiers:(id)identifiers availableCommands:(id)commands localizedName:(id)name;
+ (id)_categoryWithCommands:(id)commands availableCommands:(id)availableCommands localizedName:(id)name;
+ (id)_deviceCommandsFromAvailableCommands:(id)commands;
+ (id)_gesturesCommandsFromAvailableCommands:(id)commands;
+ (id)_interactionCommandsFromAvailableCommands:(id)commands;
+ (id)_movementCommandsFromAvailableCommands:(id)commands;
+ (id)_pointerCommandsFromAvailableCommands:(id)commands;
+ (id)allCategoriesForAvailableCommands:(id)commands;
- (AXSSKeyboardCommandCategory)initWithCommands:(id)commands localizedName:(id)name;
@end

@implementation AXSSKeyboardCommandCategory

+ (id)allCategoriesForAvailableCommands:(id)commands
{
  v28 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [self _basicCommandsFromAvailableCommands:{commandsCopy, 0}];
  v26[0] = v6;
  v7 = [self _movementCommandsFromAvailableCommands:commandsCopy];
  v26[1] = v7;
  v8 = [self _interactionCommandsFromAvailableCommands:commandsCopy];
  v26[2] = v8;
  v9 = [self _deviceCommandsFromAvailableCommands:commandsCopy];
  v26[3] = v9;
  v10 = [self _pointerCommandsFromAvailableCommands:commandsCopy];
  v26[4] = v10;
  v11 = [self _gesturesCommandsFromAvailableCommands:commandsCopy];
  v26[5] = v11;
  v12 = [self _advancedCommandsFromAvailableCommands:commandsCopy];
  v26[6] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];

  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        commands = [v18 commands];
        v20 = [commands count];

        if (v20)
        {
          [array addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v15);
  }

  return array;
}

+ (id)_categoryWithCommandIdentifiers:(id)identifiers availableCommands:(id)commands localizedName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  commandsCopy = commands;
  nameCopy = name;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = identifiersCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:*(*(&v20 + 1) + 8 * i), v20];
        [array addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [self _categoryWithCommands:array availableCommands:commandsCopy localizedName:nameCopy];

  return v18;
}

+ (id)_categoryWithCommands:(id)commands availableCommands:(id)availableCommands localizedName:(id)name
{
  availableCommandsCopy = availableCommands;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__AXSSKeyboardCommandCategory__categoryWithCommands_availableCommands_localizedName___block_invoke;
  v16[3] = &unk_1E8135E58;
  v17 = availableCommandsCopy;
  v8 = availableCommandsCopy;
  nameCopy = name;
  commandsCopy = commands;
  v11 = [commandsCopy indexesOfObjectsPassingTest:v16];
  v12 = [AXSSKeyboardCommandCategory alloc];
  v13 = [commandsCopy objectsAtIndexes:v11];

  v14 = [(AXSSKeyboardCommandCategory *)v12 initWithCommands:v13 localizedName:nameCopy];

  return v14;
}

+ (id)_basicCommandsFromAvailableCommands:(id)commands
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = @"Help";
  v12 = @"GoToNextElement";
  v13 = @"GoToPreviousElement";
  v14 = @"MoveUp";
  v15 = @"MoveDown";
  v16 = @"MoveLeft";
  v17 = @"MoveRight";
  v18 = @"PerformDefaultAction";
  v19 = @"GoHome";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:&v11 count:9];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11, v12, v13, v14, v15, v16, v17, v18, v19, v20}];
  v8 = [v7 localizedStringForKey:@"BASIC" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

+ (id)_movementCommandsFromAvailableCommands:(id)commands
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = @"GoToNextElement";
  v12 = @"GoToPreviousElement";
  v13 = @"MoveUp";
  v14 = @"MoveDown";
  v15 = @"MoveLeft";
  v16 = @"MoveRight";
  v17 = @"GoToFirstElement";
  v18 = @"GoToLastElement";
  v19 = @"MoveInsideNext";
  v20 = @"MoveInsidePrevious";
  v21 = @"EnterContainer";
  v22 = @"ExitContainer";
  v23 = @"GoToNextSection";
  v24 = @"GoToPreviousSection";
  v25 = @"ActivateTypeahead";
  v26 = @"ApplicationList";
  v27 = @"WindowList";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:&v11 count:17];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28}];
  v8 = [v7 localizedStringForKey:@"MOVEMENT" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

+ (id)_interactionCommandsFromAvailableCommands:(id)commands
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"PerformDefaultAction";
  v11[1] = @"PerformEscape";
  v11[2] = @"OpenContextualMenu";
  v11[3] = @"ShowAccessibilityActions";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:v11 count:4];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"INTERACTION" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

+ (id)_advancedCommandsFromAvailableCommands:(id)commands
{
  v11[14] = *MEMORY[0x1E69E9840];
  v11[0] = @"NextButton";
  v11[1] = @"PreviousButton";
  v11[2] = @"NextCheckbox";
  v11[3] = @"PreviousCheckbox";
  v11[4] = @"NextTable";
  v11[5] = @"PreviousTable";
  v11[6] = @"NextImage";
  v11[7] = @"PreviousImage";
  v11[8] = @"NextLink";
  v11[9] = @"PreviousLink";
  v11[10] = @"NextHeading";
  v11[11] = @"PreviousHeading";
  v11[12] = @"NextTextField";
  v11[13] = @"PreviousTextField";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:v11 count:14];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ADVANCED" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

+ (id)_deviceCommandsFromAvailableCommands:(id)commands
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = @"GoHome";
  v12 = @"ToggleMenuBar";
  v13 = @"ToggleAppSwitcher";
  v14 = @"ToggleControlCenter";
  v15 = @"ToggleNotificationCenter";
  v16 = @"ToggleDock";
  v17 = @"ToggleAppLibrary";
  v18 = @"ToggleQuickNote";
  v19 = @"LockScreen";
  v20 = @"RebootDevice";
  v21 = @"ActivateSiri";
  v22 = @"ActivateAccessibilityShortcut";
  v23 = @"ActivateSOS";
  v24 = @"RotateDevice";
  v25 = @"ArmApplePay";
  v26 = @"PerformSysdiagnose";
  v27 = @"TogglePassthroughMode";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:&v11 count:17];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28}];
  v8 = [v7 localizedStringForKey:@"DEVICE" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

+ (id)_pointerCommandsFromAvailableCommands:(id)commands
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = @"MovePointerToFocus";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:&v11 count:1];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v11, v12}];
  v8 = [v7 localizedStringForKey:@"POINTER" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

+ (id)_gesturesCommandsFromAvailableCommands:(id)commands
{
  v11[16] = *MEMORY[0x1E69E9840];
  v11[0] = @"Gestures";
  v11[1] = @"PressAndLift";
  v11[2] = @"3DTouch";
  v11[3] = @"SwipeUp";
  v11[4] = @"SwipeDown";
  v11[5] = @"SwipeLeft";
  v11[6] = @"SwipeRight";
  v11[7] = @"PinchIn";
  v11[8] = @"PinchOut";
  v11[9] = @"RotateLeft";
  v11[10] = @"RotateRight";
  v11[11] = @"TwoFingerPressAndLift";
  v11[12] = @"TwoFingerSwipeDown";
  v11[13] = @"TwoFingerSwipeLeft";
  v11[14] = @"TwoFingerSwipeRight";
  v11[15] = @"TwoFingerSwipeUp";
  v4 = MEMORY[0x1E695DEC8];
  commandsCopy = commands;
  v6 = [v4 arrayWithObjects:v11 count:16];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"GESTURES" value:&stru_1F405A428 table:@"FullKeyboardAccess"];
  v9 = [self _categoryWithCommandIdentifiers:v6 availableCommands:commandsCopy localizedName:v8];

  return v9;
}

- (AXSSKeyboardCommandCategory)initWithCommands:(id)commands localizedName:(id)name
{
  commandsCopy = commands;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = AXSSKeyboardCommandCategory;
  v9 = [(AXSSKeyboardCommandCategory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedName, name);
    objc_storeStrong(&v10->_commands, commands);
  }

  return v10;
}

@end