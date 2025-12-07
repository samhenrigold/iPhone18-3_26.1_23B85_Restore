@interface KaleidoscopeContentView
- (id)provideAtlasBacking:(id)backing;
- (void)layoutSubviews;
- (void)quadViewWillDisplay:(id)display forTime:(double)time;
@end

@implementation KaleidoscopeContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10000F004();
}

- (void)quadViewWillDisplay:(id)display forTime:(double)time
{
  v5 = type metadata accessor for KaleidoscopePosterData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18KaleidoscopePoster23KaleidoscopeContentView_posterData;
  swift_beginAccess();
  sub_10000AAB0(self + v8, v7);
  selfCopy = self;

  sub_10000F690(v10, v7);

  sub_10000AB14(v7);
}

- (id)provideAtlasBacking:(id)backing
{
  v4 = sub_100024C78();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10000FED8(v4, v6);

  return v8;
}

@end