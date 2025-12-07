@interface NTKGladiusLightSpillCoordinator
- (_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator)init;
- (_TtP29NTKGladiusFaceBundleCompanion45NTKGladiusLightSpillCoordinatorUpdateDelegate_)updateDelegate;
- (void)handleDialPaletteChangeWithHourStartColors:(id)colors minuteStartColor:(id)color minuteEndColor:(id)endColor hourEndColor:(id)hourEndColor hourTextColor:(id)textColor;
- (void)lowFrequencyLightingTimerFired;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)startSecondHandLightingAnimationAtDate:(id)date;
- (void)stopSecondHandLightingAnimation;
- (void)updateLightingOverride;
@end

@implementation NTKGladiusLightSpillCoordinator

- (_TtP29NTKGladiusFaceBundleCompanion45NTKGladiusLightSpillCoordinatorUpdateDelegate_)updateDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)handleDialPaletteChangeWithHourStartColors:(id)colors minuteStartColor:(id)color minuteEndColor:(id)endColor hourEndColor:(id)hourEndColor hourTextColor:(id)textColor
{
  sub_11B60(0, &qword_29F98, UIColor_ptr);
  v12 = sub_129E0();
  colorCopy = color;
  endColorCopy = endColor;
  hourEndColorCopy = hourEndColor;
  textColorCopy = textColor;
  selfCopy = self;
  sub_D3E4(v12, colorCopy, endColorCopy, hourEndColorCopy, textColorCopy);
}

- (void)startSecondHandLightingAnimationAtDate:(id)date
{
  v4 = sub_12920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12910();
  selfCopy = self;
  sub_D734(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)lowFrequencyLightingTimerFired
{
  selfCopy = self;
  sub_E6E8();
}

- (void)stopSecondHandLightingAnimation
{
  selfCopy = self;
  sub_EAC0();
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

  v21 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  swift_beginAccess();
  sub_BB0C(self + v21, v10, &unk_29F50, &qword_16DC0);
  sub_BB0C(v18, v16, &qword_29D88, qword_16D70);
  selfCopy = self;
  sub_BE14(v10, v16, v12, duration);
  sub_BB74(v18, &qword_29D88, qword_16D70);
  swift_beginAccess();
  sub_BA9C(v12, self + v21);
  swift_endAccess();
}

- (void)updateLightingOverride
{
  selfCopy = self;
  sub_F044();
}

- (_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end