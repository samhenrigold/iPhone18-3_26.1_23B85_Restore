@interface NTKGladiusQuad
- (BOOL)prepareForTime:(double)time;
- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)init;
- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)initWithDevice:(id)device stretchySecondHandData:(id)data;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)setColor:(id)color;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setShadowDensity:(double)density;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKGladiusQuad

- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)initWithDevice:(id)device stretchySecondHandData:(id)data
{
  *&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer] = 0;
  v7 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_dateOverride;
  v8 = type metadata accessor for GladiusUtilities.DateOverride(0);
  (*(*(v8 - 8) + 56))(&self->CLKUIQuad_opaque[v7], 1, 1, v8);
  deviceCopy = device;
  dataCopy = data;
  [deviceCopy screenBounds];
  v11 = &self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_screenSize];
  *v11 = v12;
  *(v11 + 1) = v13;
  swift_unknownObjectUnownedInit();
  v16.receiver = self;
  v16.super_class = type metadata accessor for NTKGladiusQuad(0);
  v14 = [(NTKGladiusQuad *)&v16 init];

  return v14;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_B654();
}

- (void)setColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_AFC4(colorCopy);
}

- (void)setShadowDensity:(double)density
{
  v3 = *&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer];
  if (v3)
  {
    densityCopy = density;
    *(v3 + 128) = densityCopy;
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7 = sub_AABC(&unk_29F50, &qword_16DC0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v23[-v11];
  v13 = sub_AABC(&qword_29D88, qword_16D70);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v23[-v17];
  if (date)
  {
    sub_12910();
    v19 = sub_12920();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = sub_12920();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  v21 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_dateOverride;
  swift_beginAccess();
  sub_BB0C(&self->CLKUIQuad_opaque[v21], v10, &unk_29F50, &qword_16DC0);
  sub_BB0C(v18, v16, &qword_29D88, qword_16D70);
  selfCopy = self;
  sub_BE14(v10, v16, v12, duration);
  sub_BB74(v18, &qword_29D88, qword_16D70);
  swift_beginAccess();
  sub_BA9C(v12, &self->CLKUIQuad_opaque[v21]);
  swift_endAccess();
}

- (BOOL)prepareForTime:(double)time
{
  selfCopy = self;
  v4 = sub_B898();

  return v4 & 1;
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  if (*&self->CLKUIQuad_opaque[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer])
  {
    swift_unknownObjectRetain();
    selfCopy = self;

    sub_12548(encoder);

    swift_unknownObjectRelease();
  }
}

- (_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end