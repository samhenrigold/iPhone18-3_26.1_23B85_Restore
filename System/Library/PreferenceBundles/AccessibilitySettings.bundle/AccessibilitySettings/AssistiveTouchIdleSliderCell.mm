@interface AssistiveTouchIdleSliderCell
- (double)initialValue;
- (void)_updateRightLabelWithValue:(double)value;
- (void)handleSliderBeingDragged:(id)dragged;
- (void)handleSliderDidFinishDrag:(id)drag;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AssistiveTouchIdleSliderCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = AssistiveTouchIdleSliderCell;
  [(AssistiveTouchIdleSliderCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(AssistiveTouchIdleSliderCell *)self initialValue];
  [(AssistiveTouchIdleSliderCell *)self _updateRightLabelWithValue:?];
}

- (void)_updateRightLabelWithValue:(double)value
{
  valueCopy = value;
  v5 = AXFormatFloatWithPercentage(valueCopy);
  [(AssistiveTouchIdleSliderCell *)self setLabelText:v5];

  v6 = objc_initWeak(&location, self);
  slider = [(AssistiveTouchIdleSliderCell *)self slider];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __59__AssistiveTouchIdleSliderCell__updateRightLabelWithValue___block_invoke;
  v8[3] = &unk_255F00;
  objc_copyWeak(&v9, &location);
  [slider _setAccessibilityValueBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __59__AssistiveTouchIdleSliderCell__updateRightLabelWithValue___block_invoke(uint64_t a1)
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
  [v7 setAssistiveTouchIdleOpacity:v6];

  [draggedCopy value];
  v9 = v8;

  [(AssistiveTouchIdleSliderCell *)self _updateRightLabelWithValue:v9];
}

- (void)handleSliderDidFinishDrag:(id)drag
{
  [drag value];
  v4 = v3;
  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchIdleOpacity:v4];
}

- (double)initialValue
{
  v2 = +[AXSettings sharedInstance];
  [v2 assistiveTouchIdleOpacity];
  v4 = v3;

  return v4;
}

@end