@interface STUIStatusBarBackgroundActivityItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axBackgroundActivityLabelByBackgroundActivityID:(uint64_t)d;
- (id)_axStatusBarModern;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyLabelToBackground;
- (void)_axSetupIconViewWithUpdateData:(id)data;
@end

@implementation STUIStatusBarBackgroundActivityItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate"];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" isKindOfClass:@"STUIStatusBarIndicatorItem"];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarIndicatorItem" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STStatusBarData" hasInstanceMethod:@"backgroundActivityEntry" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STStatusBarDataBackgroundActivityEntry" hasInstanceMethod:@"backgroundActivityIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarBackgroundActivityItem" hasInstanceMethod:@"createDisplayItemForIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"setNeedsUpdate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"STUIStatusBarPillBackgroundActivityItem" hasInstanceMethod:@"combinedView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarPillBackgroundActivityItem" isKindOfClass:@"STUIStatusBarBackgroundActivityItem"];
  [validationsCopy validateClass:@"STUIStatusBarPillBackgroundActivityItem" isKindOfClass:@"STUIStatusBarBackgroundActivityItem"];
  [validationsCopy validateClass:@"STUIStatusBar_Wrapper" isKindOfClass:@"UIStatusBar_Base"];
  [validationsCopy validateClass:@"UIStatusBar_Base" hasInstanceMethod:@"forceUpdate:" withFullSignature:{"v", "B", 0}];
}

void __101__STUIStatusBarBackgroundActivityItemAccessibility__axBackgroundActivityLabelByBackgroundActivityID___block_invoke()
{
  v22[47] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDC6EB0];
  v21[0] = *MEMORY[0x29EDC6EA8];
  v21[1] = v0;
  v22[0] = @"status.backgroundactivity.call.stewie";
  v22[1] = @"status.backgroundactivity.call.stewie.disconnected";
  v1 = *MEMORY[0x29EDC6F00];
  v21[2] = *MEMORY[0x29EDC6E20];
  v21[3] = v1;
  v22[2] = @"status.backgroundactivity.callRinging";
  v22[3] = @"status.backgroundactivity.videoConferenceRinging";
  v2 = *MEMORY[0x29EDC6EF8];
  v21[4] = *MEMORY[0x29EDC6E18];
  v21[5] = v2;
  v22[4] = @"status.backgroundactivity.call.handoff";
  v22[5] = @"status.backgroundactivity.video.handoff";
  v3 = *MEMORY[0x29EDC6E78];
  v21[6] = *MEMORY[0x29EDC6E70];
  v21[7] = v3;
  v22[6] = @"status.backgroundactivity.incall";
  v22[7] = @"status.backgroundactivity.videoconference";
  v4 = *MEMORY[0x29EDC6E68];
  v21[8] = *MEMORY[0x29EDC6DE8];
  v21[9] = v4;
  v22[8] = @"status.backgroundactivity.push.to.talk.active";
  v22[9] = @"status.backgroundactivity.push.to.talk.idle";
  v5 = *MEMORY[0x29EDC6F10];
  v21[10] = *MEMORY[0x29EDC6F18];
  v21[11] = v5;
  v22[10] = @"status.backgroundactivity.web.rtc.video";
  v22[11] = @"status.backgroundactivity.web.rtc.audio";
  v6 = *MEMORY[0x29EDC6E50];
  v21[12] = *MEMORY[0x29EDC6E58];
  v21[13] = v6;
  v22[12] = @"status.backgroundactivity.web.rtc.screen.video";
  v22[13] = @"status.backgroundactivity.web.rtc.screen.audio";
  v7 = *MEMORY[0x29EDC6E10];
  v21[14] = *MEMORY[0x29EDC6E88];
  v21[15] = v7;
  v22[14] = @"status.backgroundactivity.navigation";
  v22[15] = @"status.backgroundactivity.location";
  v8 = *MEMORY[0x29EDC6EA0];
  v21[16] = *MEMORY[0x29EDC6E90];
  v21[17] = v8;
  v22[16] = @"status.backgroundactivity.nearby.interactions";
  v22[17] = @"status.backgroundactivity.audiorecording";
  v9 = *MEMORY[0x29EDC6ED0];
  v21[18] = *MEMORY[0x29EDC6E60];
  v21[19] = v9;
  v22[18] = @"status.backgroundactivity.hearingaidrecording";
  v22[19] = @"status.backgroundactivity.shareplay";
  v10 = *MEMORY[0x29EDC6ED8];
  v21[20] = *MEMORY[0x29EDC6EE0];
  v21[21] = v10;
  v22[20] = @"status.backgroundactivity.shareplay.screen";
  v22[21] = @"status.backgroundactivity.shareplay.inactive";
  v11 = *MEMORY[0x29EDC6F08];
  v21[22] = *MEMORY[0x29EDC6E98];
  v21[23] = v11;
  v22[22] = @"status.backgroundactivity.playground";
  v22[23] = @"status.backgroundactivity.videoout";
  v12 = *MEMORY[0x29EDC6EC8];
  v21[24] = *MEMORY[0x29EDC6EC0];
  v21[25] = v12;
  v22[24] = @"status.backgroundactivity.screenshare";
  v22[25] = @"status.backgroundactivity.videoout";
  v13 = *MEMORY[0x29EDC6E08];
  v21[26] = *MEMORY[0x29EDC6EB8];
  v21[27] = v13;
  v22[26] = @"status.backgroundactivity.screenrecording";
  v22[27] = @"status.backgroundactivity.auto.airplay.ready";
  v14 = *MEMORY[0x29EDC6EE8];
  v21[28] = *MEMORY[0x29EDC6E00];
  v21[29] = v14;
  v22[28] = @"status.backgroundactivity.auto.airplay.play";
  v22[29] = @"status.backgroundactivity.sysdiagnose";
  v15 = *MEMORY[0x29EDC6E80];
  v21[30] = *MEMORY[0x29EDC6E48];
  v21[31] = v15;
  v22[30] = @"status.backgroundactivity.diagnostics";
  v22[31] = @"status.backgroundactivity.logging";
  v16 = *MEMORY[0x29EDC6DF8];
  v21[32] = *MEMORY[0x29EDC6E30];
  v21[33] = v16;
  v22[32] = @"status.backgroundactivity.carplay";
  v22[33] = @"status.backgroundactivity.assistant";
  v17 = *MEMORY[0x29EDC6DF0];
  v21[34] = *MEMORY[0x29EDC6EF0];
  v21[35] = v17;
  v22[34] = @"status.backgroundactivity.tethering";
  v22[35] = @"status.backgroundactivity.airprint";
  v18 = *MEMORY[0x29EDC6E40];
  v21[36] = *MEMORY[0x29EDC6E38];
  v21[37] = v18;
  v22[36] = @"status.backgroundactivity.sos";
  v22[37] = @"status.backgroundactivity.devtools";
  v21[38] = @"com.apple.mediaremoted.background-activity.routed-video";
  v21[39] = @"com.apple.mediaremoted.background-activity.routed-audio-pulse";
  v22[38] = @"status.backgroundactivity.mediaremote.video";
  v22[39] = @"status.backgroundactivity.mediaremote.video";
  v21[40] = @"com.apple.mediaremoted.background-activity.routed-audio";
  v21[41] = @"com.apple.mediaremoted.background-activity.routed-video-pulse";
  v22[40] = @"status.backgroundactivity.mediaremote.audio";
  v22[41] = @"status.backgroundactivity.mediaremote.audio";
  v21[42] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
  v21[43] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
  v22[42] = @"status.backgroundactivity.continuitycapture.video";
  v22[43] = @"status.backgroundactivity.continuitycapture.audio";
  v21[44] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
  v21[45] = @"com.apple.systemstatus.background-activity.guestpass";
  v22[44] = @"status.backgroundactivity.continuitycapture.none";
  v22[45] = @"status.backgroundactivity.guestpass.session.active";
  v21[46] = *MEMORY[0x29EDC6E28];
  v22[46] = @"status.backgroundactivity.call.screening";
  v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v22 forKeys:v21 count:47];
  v20 = _MergedGlobals;
  _MergedGlobals = v19;
}

- (void)_axApplyLabelToBackground
{
  v3 = [self safeUIViewForKey:@"backgroundView"];
  [v3 setAccessibilityLabel:a2];
}

id __77__STUIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = AXStatusBarPillTimeView(WeakRetained);
  v5 = [v2 accessibilityLabel];
  v3 = __UIAXStringForVariables();

  return v3;
}

id __77__STUIStatusBarBackgroundActivityItemAccessibility__axApplyLabelToBackground__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = AXStatusBarPillTimeView(WeakRetained);
  v5 = [v2 accessibilityLabel];
  v3 = __UIAXStringForVariables();

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  *block = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  block[3] = &unk_29F306D68;
  block[4] = a2;
  dispatch_async(MEMORY[0x29EDCA578], block);
}

uint64_t __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"setNeedsUpdate"];
  AXPerformSafeBlock();
  MEMORY[0x29ED3ADB0](@"STUIStatusBarPillBackgroundActivityItem");
  result = objc_opt_isKindOfClass();
  if (result)
  {
    return AXPerformSafeBlock();
  }

  return result;
}

void __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUIViewForKey:@"backgroundView"];
  v1 = [v2 _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar_Wrapper")];
  [v1 forceUpdate:1];
}

void __94__STUIStatusBarBackgroundActivityItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUIViewForKey:@"combinedView"];
  v1 = [v2 _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar_Wrapper")];
  [v1 forceUpdate:1];
}

- (id)_axStatusBarModern
{
  _axBackgroundView = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundView];
  v3 = [_axBackgroundView _accessibilityAncestorIsKindOf:MEMORY[0x29ED3ADB0](@"STUIStatusBar_Wrapper")];

  return v3;
}

- (void)_axSetupIconViewWithUpdateData:(id)data
{
  dataCopy = data;
  MEMORY[0x29ED3ADB0](@"STUIStatusBarPillBackgroundActivityItem");
  if (objc_opt_isKindOfClass())
  {
    v5 = [(STUIStatusBarBackgroundActivityItemAccessibility *)self safeUIViewForKey:@"iconView"];
    if (dataCopy)
    {
      v6 = [dataCopy safeValueForKeyPath:@"data.backgroundActivityEntry"];
      v7 = [v6 safeStringForKey:@"backgroundActivityIdentifier"];

      if (([*MEMORY[0x29EDC6E70] isEqualToString:v7] & 1) != 0 || objc_msgSend(*MEMORY[0x29EDC6E78], "isEqualToString:", v7))
      {
        _axBackgroundView = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundView];
        _axStatusBarModern = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axStatusBarModern];
        [_axStatusBarModern safeCGRectForKey:@"frame"];
        if (_axBackgroundView)
        {
          v11 = v10;
          if (v10 != 0.0)
          {
            [_axBackgroundView frame];
            if (v11 == v12)
            {
              [v5 _setIsAccessibilityElementBlock:&__block_literal_global_523];
              v13 = [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axBackgroundActivityLabelByBackgroundActivityID:v7];
              v15[0] = MEMORY[0x29EDCA5F8];
              v15[1] = 3221225472;
              v15[2] = __83__STUIStatusBarBackgroundActivityItemAccessibility__axSetupIconViewWithUpdateData___block_invoke_2;
              v15[3] = &unk_29F306DB0;
              v16 = v13;
              v14 = v13;
              [v5 _setAccessibilityLabelBlock:v15];

              goto LABEL_11;
            }
          }
        }
      }
    }

    [v5 _setIsAccessibilityElementBlock:0];
    [v5 _setAccessibilityLabelBlock:0];
LABEL_11:
  }
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarBackgroundActivityItemAccessibility;
  v4 = [(STUIStatusBarBackgroundActivityItemAccessibility *)&v6 createDisplayItemForIdentifier:identifier];
  [(STUIStatusBarBackgroundActivityItemAccessibility *)self _axApplyLabelToBackground];

  return v4;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarBackgroundActivityItemAccessibility;
  updateCopy = update;
  v7 = [(STUIStatusBarBackgroundActivityItemAccessibility *)&v9 applyUpdate:updateCopy toDisplayItem:item];
  [(STUIStatusBarBackgroundActivityItemAccessibility *)self _accessibilitySetRetainedValue:updateCopy forKey:@"AccessibilityStatusBarUpdateData", v9.receiver, v9.super_class];

  [(STUIStatusBarBackgroundActivityItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v7;
}

- (id)_axBackgroundActivityLabelByBackgroundActivityID:(uint64_t)d
{
  v3 = a2;
  if (d)
  {
    if (qword_2A19F4620 != -1)
    {
      dispatch_once(&qword_2A19F4620, &__block_literal_global_0);
    }

    v4 = [_MergedGlobals objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = accessibilityLocalizedString(v4);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end