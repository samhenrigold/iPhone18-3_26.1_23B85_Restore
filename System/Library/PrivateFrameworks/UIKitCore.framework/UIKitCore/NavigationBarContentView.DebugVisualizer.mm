@interface NavigationBarContentView.DebugVisualizer
- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)insets;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)layoutSubviews;
@end

@implementation NavigationBarContentView.DebugVisualizer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188EC0CD0();
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v10.receiver = self;
  v10.super_class = v8;
  selfCopy = self;
  [(UIView *)&v10 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
  [(UIView *)selfCopy setNeedsLayout:v10.receiver];
}

- (void)_clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:(id)insets
{
  type metadata accessor for NavigationBarContentView.DebugVisualizer();
  v7.receiver = self;
  v7.super_class = v5;
  selfCopy = self;
  [(UIView *)&v7 _clippedSafeAreaCornerInsetsDidChangeFromOldCornerInsets:insets.var1];
  [(UIView *)selfCopy setNeedsLayout:v7.receiver];
}

@end