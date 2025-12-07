@interface DigitalTimeView
- (BOOL)isHidden;
- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithCoder:(id)coder;
- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation DigitalTimeView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DigitalTimeView(0);
  return [(DigitalTimeView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_2A47C(hidden);
}

- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_fontTracking;
  *v3 = 0;
  v3[8] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_tritiumProgress) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_isFrozen) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeLabelHostingController);
  *v4 = 0;
  v4[1] = 0;
  v5 = self + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView____lazy_storage___timeLabelView;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 6) = 0;
  result = sub_37A30();
  __break(1u);
  return result;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v6 = sub_815C(qword_59170, &unk_42070);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = &v20 - v12;
  if (date)
  {
    sub_36CA0();
    v14 = sub_36CB0();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v14 = sub_36CB0();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter);
  sub_2B9E4(v13, v9);
  sub_36CB0();
  v16 = *(v14 - 8);
  v17 = (*(v16 + 48))(v9, 1, v14);
  selfCopy = self;
  isa = 0;
  if (v17 != 1)
  {
    isa = sub_36C90().super.isa;
    (*(v16 + 8))(v9, v14);
  }

  [v15 setOverrideDate:isa];

  sub_2BA54(v13);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2B328();
}

- (_TtC20NTKWarlockFaceBundle15DigitalTimeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)timeFormatterTextDidChange:(id)change
{
  selfCopy = self;
  sub_2A938(v4);
  sub_815C(&qword_59CD8, &qword_43710);
  sub_37280();
  sub_16B38(v4);
  sub_22C2C(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20NTKWarlockFaceBundle15DigitalTimeView_timeFormatter));
}

@end