@interface LinkConfigurationCell
- (NSString)accessibilityLabel;
- (void)_linkViewMetadataDidBecomeComplete:(id)complete;
- (void)layoutSubviews;
- (void)linkViewNeedsResize:(id)resize;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation LinkConfigurationCell

- (NSString)accessibilityLabel
{
  _objc_retain(self);
  sub_10034570C();
  v7 = v2;
  _objc_release(self);
  if (v7)
  {
    v4 = String._bridgeToObjectiveC()();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  _objc_retain(label);
  _objc_retain(self);
  if (label)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;
    _objc_release(label);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  sub_1002C760C(v6, v7);
  _objc_release(self);
}

- (void)layoutSubviews
{
  _objc_retain(self);
  sub_1003458F4();
  _objc_release(self);
}

- (void)linkViewNeedsResize:(id)resize
{
  _objc_retain(resize);
  _objc_retain(self);
  sub_100346584(resize);
  _objc_release(self);
  _objc_release(resize);
}

- (void)_linkViewMetadataDidBecomeComplete:(id)complete
{
  _objc_retain(complete);
  _objc_retain(self);
  sub_100346584(complete);
  _objc_release(self);
  _objc_release(complete);
}

@end