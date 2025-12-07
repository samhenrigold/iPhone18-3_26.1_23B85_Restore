@interface RevealingVideoView
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation RevealingVideoView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_100569AF0(window);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for RevealingVideoView(0);
  v2 = v4.receiver;
  [(RevealingVideoView *)&v4 layoutSubviews];
  sub_100569CD4(v3);
  sub_10056A1AC();
}

@end