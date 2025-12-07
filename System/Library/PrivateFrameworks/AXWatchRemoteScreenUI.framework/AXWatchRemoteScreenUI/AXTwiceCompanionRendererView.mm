@interface AXTwiceCompanionRendererView
- (BOOL)performAXAction:(int)action withValue:(id)value onBridgeElement:(id)element;
- (_TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AXTwiceCompanionRendererView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23D6D2AE0();
}

- (_TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_mirroringLayer) = 0;
  swift_unknownObjectWeakInit();
  sub_23D6EE5E0();
  v8 = sub_23D6EE560();
  v9 = MEMORY[0x23EEE8CF0]();

  v10 = 0.23;
  if (v9)
  {
    v10 = 0.29;
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC21AXWatchRemoteScreenUI28AXTwiceCompanionRendererView_cornerRadiusRatio) = v10;
  v12.receiver = self;
  v12.super_class = type metadata accessor for AXTwiceCompanionRendererView();
  return [(AXTwiceCompanionRendererView *)&v12 initWithFrame:x, y, width, height];
}

- (BOOL)performAXAction:(int)action withValue:(id)value onBridgeElement:(id)element
{
  v6 = *&action;
  if (value)
  {
    elementCopy = element;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23D6EE8A0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    elementCopy2 = element;
    selfCopy2 = self;
  }

  v12 = AXTwiceCompanionRendererView.perform(_:withValue:on:)(v6, v14, element);

  sub_23D6D4260(v14);
  return v12;
}

@end