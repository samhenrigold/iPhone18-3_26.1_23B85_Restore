@interface SBHIconStyleLabelHidingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (SBHIconStyleLabelHidingView)initWithTarget:(id)target action:(SEL)action;
- (void)_layoutSegmentedControl;
- (void)_setupViewsForTarget:(id)target action:(SEL)action;
- (void)layoutSubviews;
- (void)setShouldUseLargeIcons:(BOOL)icons;
@end

@implementation SBHIconStyleLabelHidingView

- (SBHIconStyleLabelHidingView)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v10.receiver = self;
  v10.super_class = SBHIconStyleLabelHidingView;
  v7 = [(SBHIconStyleLabelHidingView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_animationCount = 0;
    [(SBHIconStyleLabelHidingView *)v7 _setupViewsForTarget:targetCopy action:action];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UISegmentedControl *)self->_segmentedControl sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(UISegmentedControl *)self->_segmentedControl systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setShouldUseLargeIcons:(BOOL)icons
{
  if (self->_shouldUseLargeIcons != icons)
  {
    [(SBHIconStyleLabelHidingView *)self willChangeValueForKey:@"shouldUseLargeIcons"];
    self->_shouldUseLargeIcons = icons;
    [(SBHIconStyleLabelHidingView *)self didChangeValueForKey:@"shouldUseLargeIcons"];

    [(SBHIconStyleLabelHidingView *)self _layoutSegmentedControl];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHIconStyleLabelHidingView;
  [(SBHIconStyleLabelHidingView *)&v3 layoutSubviews];
  [(SBHIconStyleLabelHidingView *)self _layoutSegmentedControl];
}

- (CGSize)intrinsicContentSize
{
  [(UISegmentedControl *)self->_segmentedControl intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_layoutSegmentedControl
{
  [(UISegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:[(SBHIconStyleLabelHidingView *)self shouldUseLargeIcons]];
  segmentedControl = self->_segmentedControl;
  objc_msgSend_bounds(self);

  [(UISegmentedControl *)segmentedControl setFrame:?];
}

- (void)_setupViewsForTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  if (!self->_segmentedControl)
  {
    inited = objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69DC628];
    v9 = SBHBundle(inited);
    v10 = [v9 localizedStringForKey:@"LABEL_HIDING_VIEW_SMALL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __59__SBHIconStyleLabelHidingView__setupViewsForTarget_action___block_invoke;
    v23[3] = &unk_1E808B348;
    objc_copyWeak(&v24, &location);
    v11 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v23];

    v12 = MEMORY[0x1E69DC628];
    v14 = SBHBundle(v13);
    v15 = [v14 localizedStringForKey:@"LABEL_HIDING_VIEW_LARGE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__SBHIconStyleLabelHidingView__setupViewsForTarget_action___block_invoke_2;
    v21[3] = &unk_1E808B348;
    objc_copyWeak(&v22, &location);
    v16 = [v12 actionWithTitle:v15 image:0 identifier:0 handler:v21];

    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, v16, 0}];
    v18 = [_SBHIconStyleLabelHidingSegmentedControl alloc];
    v19 = [(_SBHIconStyleLabelHidingSegmentedControl *)v18 initWithFrame:v17 actions:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v19;

    [(UISegmentedControl *)self->_segmentedControl sizeToFit];
    [(UISegmentedControl *)self->_segmentedControl addTarget:targetCopy action:action forControlEvents:4096];
    [(SBHIconStyleLabelHidingView *)self addSubview:self->_segmentedControl];
    objc_msgSend_bounds(self->_segmentedControl);
    [(SBHIconStyleLabelHidingView *)self setFrame:?];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

void __59__SBHIconStyleLabelHidingView__setupViewsForTarget_action___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateShouldLabelsBeHidden:0];
}

void __59__SBHIconStyleLabelHidingView__setupViewsForTarget_action___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateShouldLabelsBeHidden:1];
}

@end