@interface MUTextPairVerticalCardView
- (MUTextPairVerticalCardView)initWithFrame:(CGRect)frame;
- (void)_recalculateStackingIfNeeded;
- (void)_updateAppearance;
- (void)layoutSubviews;
- (void)setViewModels:(id)models;
@end

@implementation MUTextPairVerticalCardView

- (void)_recalculateStackingIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v4 = [arrangedSubviews countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        [(MUTextPairVerticalCardView *)self bounds];
        if ([v7 shouldStackForProposedWidth:CGRectGetWidth(v24) + -32.0])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [arrangedSubviews countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrangedSubviews2 = [(MUStackView *)self arrangedSubviews];
  v9 = [arrangedSubviews2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(arrangedSubviews2);
        }

        [*(*(&v13 + 1) + 8 * j) setStacked:v4];
      }

      v10 = [arrangedSubviews2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUTextPairVerticalCardView;
  [(MUTextPairVerticalCardView *)&v4 layoutSubviews];
  [(MUTextPairVerticalCardView *)self _recalculateStackingIfNeeded];
  v3.receiver = self;
  v3.super_class = MUTextPairVerticalCardView;
  [(MUTextPairVerticalCardView *)&v3 layoutSubviews];
}

- (void)_updateAppearance
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  arrangedSubviews = [(MUStackView *)self arrangedSubviews];
  v4 = [arrangedSubviews countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        [(MUPlaceVerticalCardContainerView *)self removeArrangedSubview:*(*(&v24 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [arrangedSubviews countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_viewModels;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = [MUTextPairView alloc];
        v19 = [(MUTextPairView *)v18 initWithFrame:v12, v13, v14, v15, v20];
        [(MUTextPairView *)v19 setViewModel:v17];
        [(MUStackView *)self addArrangedSubview:v19];

        ++v16;
      }

      while (v10 != v16);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
  }
}

- (void)setViewModels:(id)models
{
  modelsCopy = models;
  if (![(NSArray *)self->_viewModels isEqualToArray:?])
  {
    v4 = [modelsCopy copy];
    viewModels = self->_viewModels;
    self->_viewModels = v4;

    [(MUTextPairVerticalCardView *)self _updateAppearance];
  }
}

- (MUTextPairVerticalCardView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUTextPairVerticalCardView;
  v3 = [(MUPlaceVerticalCardContainerView *)&v6 initWithShowsSeparators:0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUTextPairVerticalCardView *)v3 setAccessibilityIdentifier:@"TextPairVerticalCard"];
  }

  return v4;
}

@end