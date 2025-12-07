@interface FullScreenPreferenceTipController
- (void)hideTipAnimated:(BOOL)animated completion:(id)completion;
- (void)showTipFrom:(id)from sourceItem:(id)item passthroughViews:(id)views permittedArrowDirections:(unint64_t)directions shouldHideArrow:(BOOL)arrow tintColor:(id)color animated:(BOOL)animated;
@end

@implementation FullScreenPreferenceTipController

- (void)showTipFrom:(id)from sourceItem:(id)item passthroughViews:(id)views permittedArrowDirections:(unint64_t)directions shouldHideArrow:(BOOL)arrow tintColor:(id)color animated:(BOOL)animated
{
  arrowCopy = arrow;
  viewsCopy = views;
  if (views)
  {
    sub_100068320();
    viewsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  fromCopy = from;
  swift_unknownObjectRetain();
  colorCopy = color;
  selfCopy = self;
  sub_1000668FC(fromCopy, item, viewsCopy, directions, arrowCopy, color, animated);

  swift_unknownObjectRelease();

  viewsCopy, v19, v20, v21, v22, v23, v24, v25;
}

- (void)hideTipAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100068310;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_100065428(animated, v6, v7);
  sub_1000682C8(v6, v7);
}

@end