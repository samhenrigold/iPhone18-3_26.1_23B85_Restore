@interface LiveListenLeadingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC10HearingApp21LiveListenLeadingView)initWithCoder:(id)coder;
- (_TtC10HearingApp21LiveListenLeadingView)initWithFrame:(CGRect)frame;
@end

@implementation LiveListenLeadingView

- (_TtC10HearingApp21LiveListenLeadingView)initWithCoder:(id)coder
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize);
  nullsub_1();
  *v5 = v6;
  v5[1] = v7;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize);
  nullsub_1();
  *v8 = v9;
  v8[1] = v10;
  v14.receiver = self;
  v14.super_class = type metadata accessor for LiveListenLeadingView();
  coderCopy = coder;
  v12 = [(LiveListenLeadingView *)&v14 initWithCoder:coderCopy];

  if (v12)
  {
  }

  return v12;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = &OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_customElementSize;
  if (mode != 4)
  {
    v4 = &OBJC_IVAR____TtC10HearingApp21LiveListenLeadingView_compressedElementSize;
  }

  v5 = (self + *v4);
  v6 = *v5;
  v7 = v5[1];
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC10HearingApp21LiveListenLeadingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end