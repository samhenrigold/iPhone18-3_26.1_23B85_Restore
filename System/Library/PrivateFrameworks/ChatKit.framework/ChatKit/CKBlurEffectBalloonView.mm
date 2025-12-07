@interface CKBlurEffectBalloonView
- (CKBlurEffectBalloonView)initWithFrame:(CGRect)frame;
- (UIView)commSafetyBadgeView;
- (UIVisualEffectView)blurEffectView;
- (id)description;
- (void)layoutSubviews;
@end

@implementation CKBlurEffectBalloonView

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  animatedImage = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKBlurEffectBalloonView;
  v5 = [(CKImageBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKBlurEffectBalloonView animatedImage:%@ %@]", animatedImage, v5];

  return v6;
}

- (CKBlurEffectBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKBlurEffectBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    blurEffectView = [(CKBlurEffectBalloonView *)v3 blurEffectView];
    [(CKBlurEffectBalloonView *)v4 addSubview:blurEffectView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = CKBlurEffectBalloonView;
  layoutSubviews = [(CKImageBalloonView *)&v34 layoutSubviews];
  v4 = CKIsRunningInMessagesNotificationExtension(layoutSubviews);
  if (v4 || CKIsRunningInMessagesNotificationViewService(v4, v5))
  {
    layer = [(CKBlurEffectBalloonView *)self layer];
    [layer setContents:0];
  }

  blurEffectView = [(CKBlurEffectBalloonView *)self blurEffectView];
  [(CKBlurEffectBalloonView *)self bounds];
  [blurEffectView setFrame:?];

  blurEffectView2 = [(CKBlurEffectBalloonView *)self blurEffectView];
  [(CKBlurEffectBalloonView *)self bringSubviewToFront:blurEffectView2];

  blurEffectView3 = [(CKBlurEffectBalloonView *)self blurEffectView];
  superview = [blurEffectView3 superview];

  if (!superview)
  {
    blurEffectView4 = [(CKBlurEffectBalloonView *)self blurEffectView];
    [(CKBlurEffectBalloonView *)self addSubview:blurEffectView4];
  }

  commSafetyBadgeView = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];

  if (commSafetyBadgeView)
  {
    v13 = +[CKUIBehavior sharedBehaviors];
    [v13 verticalBalloonBadgeInset];
    v15 = v14;

    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 horizontalBalloonBadgeInset];
    v18 = v17;

    commSafetyBadgeView2 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView2 sizeToFit];

    commSafetyBadgeView3 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView3 frame];
    v22 = v21;
    v24 = v23;

    [(CKBlurEffectBalloonView *)self frame];
    v26 = v25 - v22 - v18;
    [(CKBlurEffectBalloonView *)self frame];
    v28 = v27 - v24 - v15;
    if ([(CKBalloonView *)self orientation]== 1)
    {
      v29 = +[CKUIBehavior sharedBehaviors];
      [v29 balloonMaskTailSizeForTailShape:1];
      v26 = v26 - v30;
    }

    commSafetyBadgeView4 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [commSafetyBadgeView4 setFrame:{v26, v28, v22, v24}];
  }

  blurEffectView5 = [(CKBlurEffectBalloonView *)self blurEffectView];
  if (blurEffectView5)
  {
    commSafetyBadgeView5 = [(CKBlurEffectBalloonView *)self commSafetyBadgeView];
    [(CKBlurEffectBalloonView *)self insertSubview:commSafetyBadgeView5 aboveSubview:blurEffectView5];
  }
}

- (UIVisualEffectView)blurEffectView
{
  blurEffectView = self->_blurEffectView;
  if (!blurEffectView)
  {
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
    v6 = self->_blurEffectView;
    self->_blurEffectView = v5;

    blurEffectView = self->_blurEffectView;
  }

  return blurEffectView;
}

- (UIView)commSafetyBadgeView
{
  [(CKImageBalloonView *)self setIsIrisAsset:0];
  [(CKImageBalloonView *)self setIsMonoskiAsset:0];
  commSafetyBadgeView = self->_commSafetyBadgeView;
  if (!commSafetyBadgeView)
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash"];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithHierarchicalColor:labelColor];
    v7 = [v4 imageWithSymbolConfiguration:v6];

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    v9 = self->_commSafetyBadgeView;
    self->_commSafetyBadgeView = v8;

    commSafetyBadgeView = self->_commSafetyBadgeView;
  }

  return commSafetyBadgeView;
}

@end