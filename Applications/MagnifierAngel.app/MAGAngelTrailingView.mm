@interface MAGAngelTrailingView
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithCoder:(id)coder;
- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithFrame:(CGRect)frame;
@end

@implementation MAGAngelTrailingView

- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithCoder:(id)coder
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize);
  MAGAngelContentState.hash(into:)();
  *v5 = v6;
  v5[1] = v7;
  v11.receiver = self;
  v11.super_class = type metadata accessor for MAGAngelTrailingView();
  coderCopy = coder;
  v9 = [(MAGAngelTrailingView *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize);
  v5 = *&self->compressedElementSize[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC14MagnifierAngel20MAGAngelTrailingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end