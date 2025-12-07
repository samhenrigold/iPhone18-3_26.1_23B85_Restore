@interface AXWaveformSelectionBarElement
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)isWaveformOverview;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityIncreaseValue:(BOOL)value isThreeFingerScroll:(BOOL)scroll;
@end

@implementation AXWaveformSelectionBarElement

- (BOOL)isWaveformOverview
{
  v5 = 0;
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v3 = [accessibilityContainer safeValueForKey:@"_isOverView"];
  [v3 getValue:&v5];

  return v5;
}

- (id)accessibilityLabel
{
  v10 = 0;
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v4 = [accessibilityContainer safeValueForKey:@"_insertMode"];
  [v4 getValue:&v10];

  if (v10 == 1)
  {
    if ([(AXWaveformSelectionBarElement *)self adjustsStartTime])
    {
      v5 = @"WAVEFORM_SELECTION_START_TIME_BAR";
    }

    else
    {
      v5 = @"WAVEFORM_SELECTION_END_TIME_BAR";
    }
  }

  else
  {
    isWaveformOverview = [(AXWaveformSelectionBarElement *)self isWaveformOverview];
    adjustsStartTime = [(AXWaveformSelectionBarElement *)self adjustsStartTime];
    if (isWaveformOverview)
    {
      if (adjustsStartTime)
      {
        v5 = @"AX_TRIM_OVERVIEW_WAVEFORM_START";
      }

      else
      {
        v5 = @"AX_TRIM_OVERVIEW_WAVEFORM_END";
      }
    }

    else if (adjustsStartTime)
    {
      v5 = @"AX_TRIM_DETAIL_WAVEFORM_START";
    }

    else
    {
      v5 = @"AX_TRIM_DETAIL_WAVEFORM_END";
    }
  }

  v8 = RCLocalizedFrameworkString(v5);

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer:0];
  v4 = [v3 safeValueForKey:@"_selectedTimeRange"];
  [v4 getValue:&v7];

  [(AXWaveformSelectionBarElement *)self adjustsStartTime];
  v5 = UIAXTimeStringForDuration();

  return v5;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v4 = [accessibilityContainer safeValueForKey:@"_selectionRect"];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  accessibilityContainer2 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v14 = [accessibilityContainer2 safeValueForKey:@"_xAdjustmentAmount"];
  [v14 floatValue];
  v16 = v15;

  if ([(AXWaveformSelectionBarElement *)self adjustsStartTime])
  {
    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    MaxX = CGRectGetMinX(v27) + v16;
  }

  else
  {
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MaxX = CGRectGetMaxX(v28);
  }

  accessibilityContainer3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v29.size.width = 10.0;
  v29.origin.x = MaxX;
  v29.origin.y = v8;
  v29.size.height = v12;
  v30 = UIAccessibilityConvertFrameToScreenCoordinates(v29, accessibilityContainer3);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AXWaveformSelectionBarElement;
  return UIAccessibilityTraitAdjustable | [(AXWaveformSelectionBarElement *)&v3 accessibilityTraits];
}

- (void)_accessibilityIncreaseValue:(BOOL)value isThreeFingerScroll:(BOOL)scroll
{
  valueCopy = value;
  v34 = 0.0;
  v35 = 0.0;
  accessibilityContainer = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v7 = [accessibilityContainer safeValueForKey:@"_selectedTimeRange"];
  [v7 getValue:&v34];

  v33 = 0.0;
  accessibilityContainer2 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v9 = [accessibilityContainer2 safeValueForKey:@"_assetDuration"];
  [v9 getValue:&v33];

  [(AXWaveformSelectionBarElement *)self isWaveformOverview];
  adjustsStartTime = [(AXWaveformSelectionBarElement *)self adjustsStartTime];
  if (valueCopy)
  {
    if (adjustsStartTime)
    {
      goto LABEL_5;
    }
  }

  else if (adjustsStartTime)
  {
LABEL_5:
    RCTimeRangeMake();
    v12 = v11;
    v14 = v13;
    v15 = 0;
    v16 = 1;
    goto LABEL_7;
  }

  RCTimeRangeMake();
  v12 = v17;
  v14 = v18;
  v16 = 0;
  v15 = 1;
LABEL_7:
  if (!RCTimeRangeEqualToTimeRange(v34, v35, v12, v14))
  {
    accessibilityContainer3 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
    v20 = [accessibilityContainer3 safeValueForKey:@"_delegate"];
    accessibilityContainer4 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
    [v20 waveformSelectionOverlay:accessibilityContainer4 willChangeSelectedTimeRange:v16 isTrackingMin:v15 isTrackingMax:{v12, v14}];
    v23 = v22;
    v25 = v24;

    if (v23 >= 0.0 && v25 <= v33)
    {
      accessibilityContainer5 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
      [accessibilityContainer5 setSelectedTimeRange:{v23, v25}];
    }
  }

  accessibilityContainer6 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  v29 = [accessibilityContainer6 safeValueForKey:@"_delegate"];
  accessibilityContainer7 = [(AXWaveformSelectionBarElement *)self accessibilityContainer];
  [v29 waveformSelectionOverlay:accessibilityContainer7 didFinishTrackingSelectionBeginTime:v16 endTime:v15 assetCurrentTime:0];

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, self);
  v31 = UIAccessibilityAnnouncementNotification;
  accessibilityValue = [(AXWaveformSelectionBarElement *)self accessibilityValue];
  UIAccessibilityPostNotification(v31, accessibilityValue);
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = 0;
  if (scroll == 3)
  {
    goto LABEL_4;
  }

  if (scroll == 4)
  {
    v5 = 1;
LABEL_4:
    [(AXWaveformSelectionBarElement *)self _accessibilityIncreaseValue:v5 isThreeFingerScroll:1, v3, v4];
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end