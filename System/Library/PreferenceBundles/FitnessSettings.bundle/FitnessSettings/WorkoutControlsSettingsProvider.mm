@interface WorkoutControlsSettingsProvider
- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change;
@end

@implementation WorkoutControlsSettingsProvider

- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change
{
  v6 = sub_6DF4(&qword_2D800, &qword_21CA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_20050();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_20030();
  swift_retain_n();
  v10 = sub_20020();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = self;
  *(v11 + 40) = change;
  sub_1792C(0, 0, v8, &unk_21CB8, v11);
}

@end