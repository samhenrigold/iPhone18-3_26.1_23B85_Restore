@interface RevealingVideoView
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation RevealingVideoView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_100665EE8(window);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RevealingVideoView(0);
  v2 = v3.receiver;
  [(RevealingVideoView *)&v3 layoutSubviews];
  sub_1006660CC();
  sub_1006665A4();
}

@end