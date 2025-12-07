@interface Pride2025MiniClockView
- (CLKUITimeViewConfiguration)configuration;
- (NSDate)overrideDate;
- (_TtC22NTKPride2025FaceBundle22Pride2025MiniClockView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)setOverrideDate:(id)date;
- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation Pride2025MiniClockView

- (_TtC22NTKPride2025FaceBundle22Pride2025MiniClockView)initWithCoder:(id)coder
{
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_token] = 0;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveHour] = -1;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveIndex] = -1;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumHour] = -1;
  *&self->CLKUIAnalogTimeView_opaque[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumMinute] = -1;
  result = sub_12924();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for Pride2025MiniClockView();
  v2 = v5.receiver;
  [(Pride2025MiniClockView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView];
  [v2 bounds];
  [v4 setFrame:?];
}

- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_7BC4(change, collectionCopy);
  swift_unknownObjectRelease();
}

- (NSDate)overrideDate
{
  v3 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Pride2025MiniClockView();
  v20.receiver = self;
  v20.super_class = v9;
  selfCopy = self;
  overrideDate = [(Pride2025MiniClockView *)&v20 overrideDate];
  if (overrideDate)
  {
    v12 = overrideDate;
    sub_12684();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_126A4();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v6, v13, 1, v14);
  sub_87F8(v6, v8);
  v16 = (*(v15 + 48))(v8, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    isa = sub_12674().super.isa;
    (*(v15 + 8))(v8, v14);
    v17 = isa;
  }

  return v17;
}

- (void)setOverrideDate:(id)date
{
  v5 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  if (date)
  {
    sub_12684();
    v11 = sub_126A4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v11 = sub_126A4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  sub_6554(v10, v8);
  sub_126A4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  selfCopy = self;
  isa = 0;
  if (v13 != 1)
  {
    isa = sub_12674().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v16 = type metadata accessor for Pride2025MiniClockView();
  v17.receiver = selfCopy;
  v17.super_class = v16;
  [(Pride2025MiniClockView *)&v17 setOverrideDate:isa];

  sub_833C();
  sub_8790(v10);
}

- (CLKUITimeViewConfiguration)configuration
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Pride2025MiniClockView();
  configuration = [(Pride2025MiniClockView *)&v4 configuration];

  return configuration;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_8614(configuration, selfCopy);
}

@end