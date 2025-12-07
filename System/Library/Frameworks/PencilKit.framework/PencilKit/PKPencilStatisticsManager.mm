@interface PKPencilStatisticsManager
+ (BOOL)isAllowedBundleID:(id)d;
+ (id)allowedBundleIDFromBundleID:(id)d;
- (void)endAnalyticsSessionIfNecessary;
- (void)startAnalyticsSessionIfNecessary;
@end

@implementation PKPencilStatisticsManager

+ (id)allowedBundleIDFromBundleID:(id)d
{
  dCopy = d;
  if ([self isAllowedBundleID:dCopy])
  {
    v5 = dCopy;
  }

  else if ([dCopy hasPrefix:@"com.apple"])
  {
    v5 = @"<unspecified Apple bundleID>";
  }

  else
  {
    v5 = @"<unspecified bundle ID>";
  }

  return v5;
}

- (void)startAnalyticsSessionIfNecessary
{
  if (self)
  {
    if ((*(self + 16) & 1) == 0)
    {
      operator new();
    }
  }
}

- (void)endAnalyticsSessionIfNecessary
{
  if (self)
  {
    if (*(self + 16) == 1)
    {
      *(self + 16) = 0;
      v2 = CACurrentMediaTime() - *(self + 48);
      if (v2 > 0.0)
      {
        v3 = *(self + 96);
        v4 = *(self + 104);
        v5 = *(self + 120);
        v6 = *(self + 40);
        if (!v6)
        {
          v6 = @"<unspecified tool>";
        }

        v24 = v6;
        v7 = *(self + 112);
        if (!v7)
        {
          v7 = @"<unspecified bundle ID>";
        }

        v8 = v7;
        v9 = *(self + 8);
        if (v9)
        {
          os_unfair_lock_lock(&v9->lock);
          numValues = v9->numValues;
          os_unfair_lock_unlock(&v9->lock);
          v11 = PKRunningStat::max(v9);
          v12 = PKRunningStat::min(v9);
          v13 = PKRunningStat::mean(v9);
        }

        else
        {
          numValues = 0;
          v12 = 0;
          v13 = 0;
          v11 = 0.0;
        }

        v14 = +[PKHoverSettings isHoverEnabled];
        v15 = +[PKHoverSettings allowDoubleTapOnlyWithPencilHover];
        v16 = +[PKTextInputSettings sharedSettings];
        isScribbleActive = [v16 isScribbleActive];

        v18 = *(self + 72);
        if (v18)
        {
          v19 = vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(*(self + 56)), *(self + 24)), vdupq_lane_s64(COERCE__INT64(v18), 0));
        }

        else
        {
          v19 = 0uLL;
        }

        v23 = v19;
        v20 = IOPSDrawingUnlimitedPower();
        v21 = +[PKStatisticsManager sharedStatisticsManager];
        [(PKStatisticsManager *)v21 recordHoverDuration:v14 onScreenDuration:0 hoverEdgeDuration:isScribbleActive hoverExteriorDuration:v15 sessionDuration:*(self + 80) showEffectsEnabled:*(self + 88) shadowEnabled:v20 scribbleEnabled:*(self + 24) doubleTapOnlyInHoverRangeEnabled:*(self + 32) doubleTapsInRange:v23.f64[0] doubleTapsOutsideRange:v23.f64[1] deviceIsConnectedToCharger:v2 intentionalHoverDuration:v4 intentionalToolPreviewHoverDuration:v3 countIntentionalHoverActions:v11 maxIntentionalHoverDuration:numValues meanIntentionalHoverDuration:v13 minIntentionalHoverDuration:v12];

        v22 = +[PKStatisticsManager sharedStatisticsManager];
        [(PKStatisticsManager *)v22 recordHoverToolType:v24 hoverDuration:numValues intentionalToolPreviewHoverDuration:v14 intentionalHoverDuration:0 maxIntentionalHoverDuration:isScribbleActive meanIntentionalHoverDuration:v15 minIntentionalHoverDuration:v8 countIntentionalHoverActions:*(self + 24) activepencilminutes:v3 onScreenDuration:v4 settingShowEffectsEnabled:v11 settingSystemShadowEnabled:*&v13 settingScribbleEnabled:*&v12 settingDoubleTapInRangeEnabled:v5 bundleID:*(self + 32)];
      }
    }
  }
}

+ (BOOL)isAllowedBundleID:(id)d
{
  dCopy = d;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v6 & 1) != 0 || ([dCopy hasPrefix:@"com.apple.quicklook"])
  {
    v7 = 1;
  }

  else
  {
    uTF8String = [dCopy UTF8String];
    v9 = strlen(uTF8String);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(__dst, uTF8String, v9);
    }

    *(__dst + v10) = 0;
    if (v13 < 0)
    {
      operator delete(__dst[0]);
    }

    v7 = 0;
  }

  return v7;
}

@end