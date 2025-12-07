@interface DeterministicUserSelector
+ (id)calculateAnchorDateWithTargetSlot:(int64_t)slot;
+ (id)calculateAnchorDateWithTargetSlot:(int64_t)slot currentDate:(id)date;
+ (id)calculateUserSlotWithDeviceID:(id)d siriSharedUserId:(id)id locale:(id)locale;
- (_TtC23CoreSpeechDataAnalytics25DeterministicUserSelector)init;
@end

@implementation DeterministicUserSelector

+ (id)calculateUserSlotWithDeviceID:(id)d siriSharedUserId:(id)id locale:(id)locale
{
  v6 = sub_24794EF04();
  v8 = v7;
  if (id)
  {
    v9 = sub_24794EF04();
    id = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_24794EF04();
  v13 = _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(v6, v8, v9, id, v11, v12);

  return v13;
}

+ (id)calculateAnchorDateWithTargetSlot:(int64_t)slot currentDate:(id)date
{
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  sub_24794EB94();
  static DeterministicUserSelector.calculateAnchorDate(targetSlot:currentDate:)(slot, v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  v13 = (*(v6 + 48))(v11, 1, v5);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_24794EB34();
    v12(v11, v5);
    v14 = v15;
  }

  return v14;
}

+ (id)calculateAnchorDateWithTargetSlot:(int64_t)slot
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  static DeterministicUserSelector.calculateAnchorDate(targetSlot:)(slot, &v13 - v5);
  v7 = sub_24794EBB4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_24794EB34();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtC23CoreSpeechDataAnalytics25DeterministicUserSelector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end