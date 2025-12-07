@interface ContentLensingView
- (_TtC5UIKit18ContentLensingView)initWithCoder:(id)coder;
- (_TtC5UIKit18ContentLensingView)initWithFrame:(CGRect)frame;
- (void)_addTrackedElementFor:(id)for with:(id)with;
- (void)_removeTrackedElementFor:(id)for;
@end

@implementation ContentLensingView

- (void)_addTrackedElementFor:(id)for with:(id)with
{
  forCopy = for;
  withCopy = with;
  selfCopy = self;
  sub_188C4FA84(forCopy);
}

- (_TtC5UIKit18ContentLensingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  *(&self->super.super.super.super.isa + v8) = sub_188C4FD60(MEMORY[0x1E69E7CC0]);
  type metadata accessor for ContentLensingView();
  v11.receiver = self;
  v11.super_class = v9;
  return [(_UIMaterialDefinitionView *)&v11 initWithFrame:x, y, width, height];
}

- (void)_removeTrackedElementFor:(id)for
{
  v5 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  forCopy = for;
  selfCopy = self;

  v9 = sub_18903AD20(forCopy, v6);

  if (v9)
  {
    [(UIView *)v9 removeFromSuperview];
    swift_beginAccess();
    v10 = sub_1891E9C1C(forCopy);
    swift_endAccess();

    v11 = type metadata accessor for ContentLensingView();
    v13.receiver = selfCopy;
    v13.super_class = v12;
    [(UIView *)&v13 _removeTrackedElementFor:forCopy, v11];

    forCopy = selfCopy;
    selfCopy = v9;
  }
}

- (_TtC5UIKit18ContentLensingView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC5UIKit18ContentLensingView_portals;
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v4) = sub_188C4FD60(MEMORY[0x1E69E7CC0]);
  v6 = type metadata accessor for ContentLensingView();
  v10.receiver = self;
  v10.super_class = v7;
  v8 = [(_UIMaterialDefinitionView *)&v10 initWithCoder:coderCopy, v6];

  if (v8)
  {
  }

  return v8;
}

@end