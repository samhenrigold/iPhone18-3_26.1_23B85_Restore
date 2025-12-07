@interface _UICollectionViewListSeparatorView
- (_UICollectionViewListSeparatorView)initWithFrame:(CGRect)frame;
- (void)_setUpEffectViewWithEffect:(id)effect;
- (void)_tearDownEffectView;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation _UICollectionViewListSeparatorView

- (void)_tearDownEffectView
{
  [(UIView *)self->_effectView removeFromSuperview];
  effectView = self->_effectView;
  self->_effectView = 0;
}

- (_UICollectionViewListSeparatorView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewListSeparatorView;
  v3 = [(UICollectionReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v14.receiver = self;
  v14.super_class = _UICollectionViewListSeparatorView;
  attributesCopy = attributes;
  [(UICollectionReusableView *)&v14 applyLayoutAttributes:attributesCopy];
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)attributesCopy _existingListAttributes];

  if (_existingListAttributes)
  {
    v6 = *(_existingListAttributes + 48);
    v7 = *(_existingListAttributes + 56);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    v13 = 0u;
    v11 = +[_UIListMetrics sharedMetrics];
    traitCollection = [(UIView *)self traitCollection];
    if (v11)
    {
      objc_msgSend_metricsForSeparatorWithListStyle_traitCollection_(v11);
    }

    else
    {
      v13 = 0u;
    }

    v6 = *(&v13 + 1);
    goto LABEL_14;
  }

  if (v8)
  {
LABEL_14:
    [(_UICollectionViewListSeparatorView *)self _setUpEffectViewWithEffect:v9, v13];
    goto LABEL_15;
  }

  [(_UICollectionViewListSeparatorView *)self _tearDownEffectView];
LABEL_15:
  [(UIView *)self setBackgroundColor:v6];
}

- (void)_setUpEffectViewWithEffect:(id)effect
{
  effectCopy = effect;
  if (!effectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListSeparatorView.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"effect != nil"}];
  }

  effectView = self->_effectView;
  if (effectView)
  {
    effect = [(UIVisualEffectView *)effectView effect];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = isKindOfClass ^ 1;
  }

  else
  {
    v9 = 1;
  }

  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  v11 = v10;
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    [(_UICollectionViewListSeparatorView *)self _tearDownEffectView];
  }

  v12 = self->_effectView;
  if (!v12)
  {
    v19 = [[UIVisualEffectView alloc] initWithEffect:effectCopy];
    v20 = self->_effectView;
    self->_effectView = v19;

    layer = [(UIView *)self->_effectView layer];
    [layer setAllowsEdgeAntialiasing:1];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65___UICollectionViewListSeparatorView__setUpEffectViewWithEffect___block_invoke;
    v23[3] = &unk_1E70F3590;
    v23[4] = self;
    [UIView performWithoutAnimation:v23];
    [(UIView *)self->_effectView setAutoresizingMask:18];
    [(UIView *)self addSubview:self->_effectView];
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(UIVisualEffectView *)v12 setEffect:effectCopy];
  if (v11)
  {
LABEL_11:
    contentView = [(UIVisualEffectView *)self->_effectView contentView];
    tintColor = [contentView tintColor];
    contentView2 = [(UIVisualEffectView *)self->_effectView contentView];
    [contentView2 setBackgroundColor:tintColor];

    contentView3 = [(UIVisualEffectView *)self->_effectView contentView];
    layer2 = [contentView3 layer];
    [layer2 setAllowsEdgeAntialiasing:1];

    contentView4 = [(UIVisualEffectView *)self->_effectView contentView];
    [contentView4 setClipsToBounds:0];
  }

LABEL_12:
}

@end