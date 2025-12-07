@interface CRLiOSMiniFormatterBuilder
+ (id)makeSmallButtonWith:(id)with title:(id)title action:(id)action backgroundColor:(id)color pressedBackgroundColor:(id)backgroundColor foregroundColor:(id)foregroundColor pressedForegroundColor:(id)pressedForegroundColor cornerRadius:(double)self0 italicTitle:(BOOL)self1;
- (_TtC8Freeform26CRLiOSMiniFormatterBuilder)init;
- (id)viewControllerForLargeContentViewerInteraction:(id)interaction;
@end

@implementation CRLiOSMiniFormatterBuilder

+ (id)makeSmallButtonWith:(id)with title:(id)title action:(id)action backgroundColor:(id)color pressedBackgroundColor:(id)backgroundColor foregroundColor:(id)foregroundColor pressedForegroundColor:(id)pressedForegroundColor cornerRadius:(double)self0 italicTitle:(BOOL)self1
{
  foregroundColorCopy2 = foregroundColor;
  if (title)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    foregroundColorCopy2 = foregroundColor;
    v28 = v18;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  swift_getObjCClassMetadata();
  withCopy = with;
  actionCopy = action;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v22 = foregroundColorCopy2;
  pressedForegroundColorCopy = pressedForegroundColor;
  v24 = sub_1005D48C8(with, v27, v28, action, color, backgroundColor, v22, pressedForegroundColorCopy, radius, italicTitle);

  return v24;
}

- (id)viewControllerForLargeContentViewerInteraction:(id)interaction
{
  interactionCopy = interaction;
  selfCopy = self;
  v6 = sub_1005D8B5C();

  return v6;
}

- (_TtC8Freeform26CRLiOSMiniFormatterBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end