@interface _UIReparentingView
- (_TtC5UIKit18_UIReparentingView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _UIReparentingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if ([(UIView *)selfCopy isUserInteractionEnabled])
  {
    v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal);
    [(UIView *)selfCopy convertPoint:v9 toCoordinateSpace:x, y];
    v10 = [v9 hitTest:eventCopy withEvent:?];
    v11 = selfCopy;
    selfCopy = eventCopy;
  }

  else
  {
    v10 = 0;
    v11 = eventCopy;
  }

  return v10;
}

- (_TtC5UIKit18_UIReparentingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC5UIKit18_UIReparentingView_portal;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(_UIPortalView) init];
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit18_UIReparentingView_OpacityPairInputAmount);
  *v9 = 0xD00000000000001FLL;
  v9[1] = 0x800000018A6891C0;
  type metadata accessor for _UIReparentingView();
  v12.receiver = self;
  v12.super_class = v10;
  return [(UIView *)&v12 initWithFrame:x, y, width, height];
}

@end