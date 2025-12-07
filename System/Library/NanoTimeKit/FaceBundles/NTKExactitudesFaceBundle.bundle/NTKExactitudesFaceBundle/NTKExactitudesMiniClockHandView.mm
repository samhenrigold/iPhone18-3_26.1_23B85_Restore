@interface NTKExactitudesMiniClockHandView
- (_TtC24NTKExactitudesFaceBundle31NTKExactitudesMiniClockHandView)initWithConfiguration:(id)configuration forDevice:(id)device maskedShadow:(BOOL)shadow;
- (_TtC24NTKExactitudesFaceBundle31NTKExactitudesMiniClockHandView)initWithFrame:(CGRect)frame;
- (void)_layoutInlayLayer;
@end

@implementation NTKExactitudesMiniClockHandView

- (void)_layoutInlayLayer
{
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1F168();
}

- (_TtC24NTKExactitudesFaceBundle31NTKExactitudesMiniClockHandView)initWithConfiguration:(id)configuration forDevice:(id)device maskedShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for NTKExactitudesMiniClockHandView();
  v9 = [(NTKExactitudesHandView *)&v11 initWithConfiguration:configuration forDevice:device maskedShadow:shadowCopy];

  return v9;
}

- (_TtC24NTKExactitudesFaceBundle31NTKExactitudesMiniClockHandView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_216EC();
  sub_216DC();
  sub_216CC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for NTKExactitudesMiniClockHandView();
  height = [(NTKExactitudesHandView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

@end