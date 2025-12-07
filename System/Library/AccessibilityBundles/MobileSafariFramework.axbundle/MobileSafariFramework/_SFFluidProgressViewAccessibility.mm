@interface _SFFluidProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_progressBarBoundsForValue:(double)value;
- (void)_axCheckProgress;
- (void)_axHandleProgressComplete;
- (void)_axHandleProgressStart:(id)start;
- (void)_finishProgressBarWithDuration:(double)duration;
- (void)fluidProgressController:(id)controller setProgressToCurrentPosition:(id)position;
- (void)fluidProgressController:(id)controller startFluidProgressBar:(id)bar animateFillFade:(BOOL)fade;
- (void)fluidProgressController:(id)controller updateFluidProgressBar:(id)bar completion:(id)completion;
- (void)fluidProgressControllerFinishProgressBar:(id)bar animateFillFade:(BOOL)fade;
@end

@implementation _SFFluidProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressController:setProgressToCurrentPosition:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressControllerFinishProgressBar:animateFillFade:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressController:startFluidProgressBar:animateFillFade:" withFullSignature:{"v", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"_finishProgressBarWithDuration:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressController:updateFluidProgressBar:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"WBSFluidProgressState"];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceVariable:@"_clippingView" withType:"UIView"];
  [validationsCopy validateClass:@"WBSFluidProgressState" hasInstanceMethod:@"fluidProgressValue" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"WBSFluidProgressState" hasInstanceMethod:@"hasCompletedLoad" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"_progressBarBoundsForValue:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "d", 0}];
}

- (CGRect)_progressBarBoundsForValue:(double)value
{
  v23 = *MEMORY[0x29EDCA608];
  v20.receiver = self;
  v20.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v20 _progressBarBoundsForValue:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible]&& vabdd_f64(*&_progressBarBoundsForValue__LastProgressValue, value) > 0.05)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      valueCopy = value;
      _os_log_impl(&dword_29BFCD000, v13, OS_LOG_TYPE_INFO, "Sending fluid progress notification in progressBar: %f", buf, 0xCu);
    }

    v14 = *MEMORY[0x29EDC75E8];
    v15 = [MEMORY[0x29EDBA070] numberWithDouble:value];
    UIAccessibilityPostNotification(v14, v15);

    _progressBarBoundsForValue__LastProgressValue = *&value;
  }

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_finishProgressBarWithDuration:(double)duration
{
  v12 = *MEMORY[0x29EDCA608];
  v7.receiver = self;
  v7.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v7 _finishProgressBarWithDuration:?];
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x29EDBA070] numberWithDouble:duration];
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_29BFCD000, v5, OS_LOG_TYPE_INFO, "Progress bar done after: %@ %@", buf, 0x16u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)fluidProgressController:(id)controller updateFluidProgressBar:(id)bar completion:(id)completion
{
  barCopy = bar;
  v13.receiver = self;
  v13.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v13 fluidProgressController:controller updateFluidProgressBar:barCopy completion:completion];
  [barCopy fluidProgressValue];
  if (v9 > 0.0 && [(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    [(_SFFluidProgressViewAccessibility *)self _axHandleProgressStart:barCopy];
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BFCD000, v10, OS_LOG_TYPE_INFO, "Fluid progress notification posted", buf, 2u);
    }
  }

  else if ([barCopy safeBoolForKey:@"hasCompletedLoad"])
  {
    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BFCD000, v11, OS_LOG_TYPE_INFO, "Completed load, marking started", buf, 2u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_axCheckProgress
{
  v19 = *MEMORY[0x29EDCA608];
  buf[0] = 0;
  v3 = [(_SFFluidProgressViewAccessibility *)self safeValueForKey:@"_state"];
  v4 = __UIAccessibilitySafeClass();

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [v4 fluidProgressValue];
    *buf = 134217984;
    v18 = v6;
    _os_log_impl(&dword_29BFCD000, v5, OS_LOG_TYPE_INFO, "Check progress in axtimer: %f", buf, 0xCu);
  }

  [v4 fluidProgressValue];
  if (!v4)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [(_SFFluidProgressViewAccessibility *)self safeUIViewForKey:@"_clippingView"];
  if (![v9 _accessibilityViewIsVisible] || (objc_msgSend(v4, "fluidProgressValue"), v10 == 1.0) || objc_msgSend(v4, "hasCompletedLoad"))
  {

LABEL_8:
    [(_SFFluidProgressViewAccessibility *)self _axHandleProgressComplete];
    goto LABEL_9;
  }

  hasCanceledLoad = [v4 hasCanceledLoad];

  if (hasCanceledLoad)
  {
    goto LABEL_8;
  }

  if (v8 > 0.0)
  {
    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = v8;
      _os_log_impl(&dword_29BFCD000, v12, OS_LOG_TYPE_INFO, "Sending fluid progress notification in setProgress: %f", buf, 0xCu);
    }

    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v13 = *MEMORY[0x29EDC75E8];
    v14 = [MEMORY[0x29EDBA070] numberWithDouble:v8];
    UIAccessibilityPostNotification(v13, v14);

    _axProgressTimer = [(_SFFluidProgressViewAccessibility *)self _axProgressTimer];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __53___SFFluidProgressViewAccessibility__axCheckProgress__block_invoke;
    v16[3] = &unk_29F2D6938;
    v16[4] = self;
    [_axProgressTimer afterDelay:v16 processBlock:0.1];
  }

LABEL_9:
}

- (void)_axHandleProgressStart:(id)start
{
  v19[2] = *MEMORY[0x29EDCA608];
  startCopy = start;
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v18[0] = @"progress";
    v5 = MEMORY[0x29EDBA070];
    [startCopy fluidProgressValue];
    v6 = [v5 numberWithDouble:?];
    v18[1] = @"url";
    v19[0] = v6;
    loadURL = [startCopy loadURL];
    v8 = loadURL;
    v9 = &stru_2A2220B98;
    if (loadURL)
    {
      v9 = loadURL;
    }

    v19[1] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    UIAccessibilityPostNotification(0x430u, v10);

    v11 = *MEMORY[0x29EDC75E8];
    v12 = MEMORY[0x29EDBA070];
    [startCopy fluidProgressValue];
    v13 = [v12 numberWithDouble:?];
    UIAccessibilityPostNotification(v11, v13);

    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      [startCopy fluidProgressValue];
      v16 = 134217984;
      v17 = v15;
      _os_log_impl(&dword_29BFCD000, v14, OS_LOG_TYPE_INFO, "Marking fluid progress in start: %f", &v16, 0xCu);
    }
  }
}

- (void)fluidProgressController:(id)controller startFluidProgressBar:(id)bar animateFillFade:(BOOL)fade
{
  fadeCopy = fade;
  barCopy = bar;
  v17.receiver = self;
  v17.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v17 fluidProgressController:controller startFluidProgressBar:barCopy animateFillFade:fadeCopy];
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BFCD000, v9, OS_LOG_TYPE_INFO, "Start fluid progress", buf, 2u);
    }

    _axProgressTimer = [(_SFFluidProgressViewAccessibility *)self _axProgressTimer];

    if (!_axProgressTimer)
    {
      v11 = objc_alloc(MEMORY[0x29EDBD6A0]);
      v12 = [v11 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
      [(_SFFluidProgressViewAccessibility *)self _axSetProgressTimer:v12];
    }

    [barCopy fluidProgressValue];
    if (v13 > 0.0)
    {
      [(_SFFluidProgressViewAccessibility *)self _axHandleProgressStart:barCopy];
    }

    _axProgressTimer2 = [(_SFFluidProgressViewAccessibility *)self _axProgressTimer];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __99___SFFluidProgressViewAccessibility_fluidProgressController_startFluidProgressBar_animateFillFade___block_invoke;
    v15[3] = &unk_29F2D6938;
    v15[4] = self;
    [_axProgressTimer2 afterDelay:v15 processBlock:0.1];
  }
}

- (void)fluidProgressControllerFinishProgressBar:(id)bar animateFillFade:(BOOL)fade
{
  v7.receiver = self;
  v7.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v7 fluidProgressControllerFinishProgressBar:bar animateFillFade:fade];
  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_29BFCD000, v5, OS_LOG_TYPE_INFO, "Fluid progress finish", v6, 2u);
  }

  [(_SFFluidProgressViewAccessibility *)self _axHandleProgressComplete];
}

- (void)_axHandleProgressComplete
{
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityBoolValueForKey:@"StartedFluidProgress"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75E8], &unk_2A2228048);
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_29BFCD000, v3, OS_LOG_TYPE_INFO, "Posting finish notification during finish progress", v4, 2u);
    }
  }

  [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"StartedFluidProgress"];
}

- (void)fluidProgressController:(id)controller setProgressToCurrentPosition:(id)position
{
  v16 = *MEMORY[0x29EDCA608];
  v13.receiver = self;
  v13.super_class = _SFFluidProgressViewAccessibility;
  positionCopy = position;
  [(_SFFluidProgressViewAccessibility *)&v13 fluidProgressController:controller setProgressToCurrentPosition:positionCopy];
  [positionCopy fluidProgressValue];
  v8 = v7;

  v9 = AXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29BFCD000, v9, OS_LOG_TYPE_INFO, "Fluid progress updated position", buf, 2u);
  }

  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible]&& v8 > 0.0)
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = v8;
      _os_log_impl(&dword_29BFCD000, v10, OS_LOG_TYPE_INFO, "Sending fluid progress notification in setProgress: %f", buf, 0xCu);
    }

    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v11 = *MEMORY[0x29EDC75E8];
    v12 = [MEMORY[0x29EDBA070] numberWithDouble:v8];
    UIAccessibilityPostNotification(v11, v12);
  }
}

@end