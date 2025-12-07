@interface SymbolButton.BackgroundView
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithCoder:(id)coder;
- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation SymbolButton.BackgroundView

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration);
  *v3 = 0;
  v3[1] = 0x3FF0000000000000;
  result = sub_1004BD624();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SymbolButton.BackgroundView(0, a2);
  v2 = v5.receiver;
  tintColorDidChange = [(SymbolButton.BackgroundView *)&v5 tintColorDidChange];
  sub_1003B55A0(tintColorDidChange, v4);
}

- (_TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end