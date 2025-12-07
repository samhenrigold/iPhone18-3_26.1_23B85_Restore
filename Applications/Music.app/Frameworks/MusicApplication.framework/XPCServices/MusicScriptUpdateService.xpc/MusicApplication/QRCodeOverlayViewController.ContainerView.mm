@interface QRCodeOverlayViewController.ContainerView
- (void)layoutSubviews;
- (void)updateColor;
@end

@implementation QRCodeOverlayViewController.ContainerView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView(self, a2);
  v2 = v5.receiver;
  [(QRCodeOverlayViewController.ContainerView *)&v5 layoutSubviews];
  sub_100009130(0, &qword_100610548, CATransaction_ptr);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = v2;
  static CATransaction.performWithoutAnimation(_:)(sub_10039A308, v3);
}

- (void)updateColor
{
  selfCopy = self;
  sub_1003993D8();
}

@end