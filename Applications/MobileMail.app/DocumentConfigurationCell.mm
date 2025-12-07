@interface DocumentConfigurationCell
- (NSString)accessibilityLabel;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation DocumentConfigurationCell

- (NSString)accessibilityLabel
{
  _objc_retain(self);
  sub_1002C7238();
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

@end