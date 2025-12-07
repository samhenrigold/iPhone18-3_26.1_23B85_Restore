@interface ASTMotionTrackingSettingsAutoHideOpacitySliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ASTMotionTrackingSettingsAutoHideOpacitySliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = ASTMotionTrackingSettingsAutoHideOpacitySliderCell;
  [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)self initialValue];
  [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  valueCopy = value;
  v5 = AXFormatFloatWithPercentage(valueCopy);
  [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)self setLabelText:v5];

  slider = [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)self slider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_initWeak(&location, self);
    slider2 = [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)self slider];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __81__ASTMotionTrackingSettingsAutoHideOpacitySliderCell__updateRightLabelWithValue___block_invoke;
    v10[3] = &unk_255F00;
    objc_copyWeak(&v11, &location);
    [slider2 _setAccessibilityValueBlock:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

id __81__ASTMotionTrackingSettingsAutoHideOpacitySliderCell__updateRightLabelWithValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initialValue];
  *&v2 = v2;
  v3 = AXFormatFloatWithPercentage(*&v2);

  return v3;
}

- (void)handleSliderBeingDragged:(id)dragged
{
  draggedCopy = dragged;
  [draggedCopy value];
  [draggedCopy setValue:0 animated:?];
  [draggedCopy value];
  v6 = v5;
  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchEyeTrackingAutoHideOpacity:v6];

  [draggedCopy value];
  v9 = v8;

  [(ASTMotionTrackingSettingsAutoHideOpacitySliderCell *)self _updateRightLabelWithValue:v9];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchEyeTrackingAutoHideOpacity:v4];
}

- (double)initialValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchEyeTrackingAutoHideOpacity];
  v4 = v3;

  return v4;
}

@end