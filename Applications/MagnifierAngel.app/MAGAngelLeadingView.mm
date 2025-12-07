@interface MAGAngelLeadingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithCoder:(id)coder;
- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithFrame:(CGRect)frame;
@end

@implementation MAGAngelLeadingView

- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithCoder:(id)coder
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize);
  MAGAngelContentState.hash(into:)();
  *v5 = v6;
  v5[1] = v7;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize);
  MAGAngelContentState.hash(into:)();
  *v8 = v9;
  v8[1] = v10;
  v14.receiver = self;
  v14.super_class = type metadata accessor for MAGAngelLeadingView();
  coderCopy = coder;
  v12 = [(MAGAngelLeadingView *)&v14 initWithCoder:coderCopy];

  if (v12)
  {
  }

  return v12;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = &OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize;
  if (mode != 4)
  {
    v4 = &OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize;
  }

  v5 = (self + *v4);
  v6 = *v5;
  v7 = v5[1];
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC14MagnifierAngel19MAGAngelLeadingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end