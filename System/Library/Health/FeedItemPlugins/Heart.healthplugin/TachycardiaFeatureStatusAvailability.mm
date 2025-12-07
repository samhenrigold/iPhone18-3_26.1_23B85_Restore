@interface TachycardiaFeatureStatusAvailability
- (void)heartRhythmAvailabilityDidUpdate;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change;
@end

@implementation TachycardiaFeatureStatusAvailability

- (void)heartRhythmAvailabilityDidUpdate
{
  sub_29D6D278C(0);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v10 - v8;

  sub_29D70034C(v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v9, v6);
  sub_29D9383D8();
  sub_29D700CF0(v9);
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change
{
  sub_29D6D278C(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v11 - v9;

  sub_29D70034C(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v10, v7);
  sub_29D9383D8();
  sub_29D700CF0(v10);
}

@end