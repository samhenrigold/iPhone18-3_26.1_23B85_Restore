@interface GKMultiplayerStepperController
- (_TtC12GameCenterUI30GKMultiplayerStepperController)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue valueChangedHandler:(id)handler;
@end

@implementation GKMultiplayerStepperController

- (_TtC12GameCenterUI30GKMultiplayerStepperController)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue valueChangedHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = sub_24E019BD4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  return sub_24E01990C(value, maximumValue, initialValue, v12, v11);
}

@end