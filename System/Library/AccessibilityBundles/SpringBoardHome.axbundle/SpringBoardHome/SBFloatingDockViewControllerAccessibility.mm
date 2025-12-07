@interface SBFloatingDockViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)dismissPresentedFolderAnimated:(BOOL)animated completion:(id)completion;
- (void)dockViewDidResignVisible;
@end

@implementation SBFloatingDockViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFloatingDockViewController" hasInstanceMethod:@"dismissPresentedFolderAnimated:completion:" withFullSignature:{"v", "B", "@?", 0}];
  [validationsCopy validateClass:@"SBFloatingDockViewController" hasInstanceMethod:@"dockViewDidResignVisible" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isIconStylePickerVisible" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = SBFloatingDockViewControllerAccessibility;
  [(SBFloatingDockViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFloatingDockViewControllerAccessibility *)self safeValueForKey:@"view"];
  v5 = AXSBHIconManagerFromSharedIconController(v3, v4);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __87__SBFloatingDockViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F300378;
  v8 = v5;
  v6 = v5;
  [v3 setAccessibilityElementsHiddenBlock:v7];
}

- (void)dismissPresentedFolderAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = [(SBFloatingDockViewControllerAccessibility *)self _axSetIsClosingFolder:1];
  v9 = AXSBHIconManagerFromSharedIconController(v7, v8);
  v25 = MEMORY[0x29EDCA5F8];
  v26 = 3221225472;
  v27 = __87__SBFloatingDockViewControllerAccessibility_dismissPresentedFolderAnimated_completion___block_invoke;
  v28 = &unk_29F3001B8;
  v29 = v9;
  AXPerformSafeBlock();
  v10 = [v29 safeValueForKey:@"openedFolder"];
  v11 = [v10 safeValueForKey:@"displayName"];
  v12 = [completionCopy copy];

  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __87__SBFloatingDockViewControllerAccessibility_dismissPresentedFolderAnimated_completion___block_invoke_2;
  v18[3] = &unk_29F3003A0;
  v23 = v10 != 0;
  v19 = v29;
  selfCopy = self;
  v24 = animatedCopy;
  v21 = v11;
  v22 = v12;
  v13 = v11;
  v14 = v12;
  v15 = v29;
  v16 = MEMORY[0x29ED38BB0](v18);
  v17.receiver = self;
  v17.super_class = SBFloatingDockViewControllerAccessibility;
  [(SBFloatingDockViewControllerAccessibility *)&v17 dismissPresentedFolderAnimated:animatedCopy completion:v16];
}

void __87__SBFloatingDockViewControllerAccessibility_dismissPresentedFolderAnimated_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) safeBoolForKey:@"hasOpenFolder"];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }

  if (!(v4 & 1 | ((*(a1 + 64) & 1) == 0)) && [*(a1 + 40) _axIsClosingFolder])
  {
    if (*(a1 + 65) == 1)
    {
      v6 = *MEMORY[0x29EDC7EA8];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA68]);
      v7 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
      v8 = [MEMORY[0x29EDBA070] numberWithInt:1];
      v9 = [v7 initWithObjectsAndKeys:{v8, *MEMORY[0x29EDBD860], *MEMORY[0x29EDB8F00], *MEMORY[0x29EDBD8E8], 0}];

      v10 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"closing.folder");
      v13 = [v11 stringWithFormat:v12, *(a1 + 48)];
      v14 = [v10 initWithString:v13 attributes:v9];

      UIAccessibilityPostNotification(v6, v14);
    }

    [*(a1 + 40) _axSetIsClosingFolder:0];
  }

  v15 = *MEMORY[0x29EDC7F10];

  UIAccessibilityPostNotification(v15, 0);
}

- (void)dockViewDidResignVisible
{
  v3.receiver = self;
  v3.super_class = SBFloatingDockViewControllerAccessibility;
  [(SBFloatingDockViewControllerAccessibility *)&v3 dockViewDidResignVisible];
  server = [MEMORY[0x29EDBDFA8] server];
  [server didPotentiallyDismissNonExclusiveSystemUI];
}

@end