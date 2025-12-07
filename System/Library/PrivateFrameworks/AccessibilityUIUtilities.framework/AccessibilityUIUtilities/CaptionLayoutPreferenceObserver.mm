@interface CaptionLayoutPreferenceObserver
- (void)captionAppearanceChanged;
@end

@implementation CaptionLayoutPreferenceObserver

- (void)captionAppearanceChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA0, &qword_1C0E58BD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1C0E50D64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C0E50D34();
  swift_retain_n();
  v7 = sub_1C0E50D24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = self;
  sub_1C0E4BA60(0, 0, v5, &unk_1C0E58BE0, v8);
}

@end