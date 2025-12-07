@interface RevealingVideoView
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation RevealingVideoView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_10020E57C(window);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RevealingVideoView(0);
  v2 = v4.receiver;
  [(RevealingVideoView *)&v4 layoutSubviews];
  sub_10020E760(v3);
  sub_10020EC38();
}

@end