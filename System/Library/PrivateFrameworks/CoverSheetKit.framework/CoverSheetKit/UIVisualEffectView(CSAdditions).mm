@interface UIVisualEffectView(CSAdditions)
- (id)cs_copyVisualEffectView;
@end

@implementation UIVisualEffectView(CSAdditions)

- (id)cs_copyVisualEffectView
{
  v3 = objc_alloc(objc_opt_class());
  [self frame];
  v4 = [v3 initWithFrame:?];
  [v4 setAutoresizingMask:{objc_msgSend(self, "autoresizingMask")}];
  [v4 setClipsToBounds:{objc_msgSend(self, "clipsToBounds")}];
  [v4 setUserInteractionEnabled:{objc_msgSend(self, "isUserInteractionEnabled")}];
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  backgroundEffects = [self backgroundEffects];
  v7 = [v5 initWithArray:backgroundEffects copyItems:1];

  [v4 setBackgroundEffects:v7];
  [self _continuousCornerRadius];
  [v4 _setContinuousCornerRadius:?];
  _groupName = [self _groupName];
  [v4 _setGroupName:_groupName];

  contentView = [v4 contentView];
  contentView2 = [self contentView];
  backgroundColor = [contentView2 backgroundColor];
  [contentView setBackgroundColor:backgroundColor];

  contentView3 = [v4 contentView];
  contentView4 = [self contentView];
  [contentView4 alpha];
  [contentView3 setAlpha:?];

  contentView5 = [v4 contentView];
  contentView6 = [self contentView];
  [contentView5 setHidden:{objc_msgSend(contentView6, "isHidden")}];

  return v4;
}

@end