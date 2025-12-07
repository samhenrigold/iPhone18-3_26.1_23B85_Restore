@interface SFSafariSettings
+ (void)openExportBrowsingDataSettingsWithCompletionHandler:(id)handler;
- (SFSafariSettings)init;
@end

@implementation SFSafariSettings

+ (void)openExportBrowsingDataSettingsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7DEE08, &qword_1D47DFA90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1D47BF360();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D47DFAC8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D47DFAD8;
  v12[5] = v11;
  sub_1D47A248C(0, 0, v7, &unk_1D47DFAE8, v12);
}

- (SFSafariSettings)init
{
  v3.receiver = self;
  v3.super_class = SFSafariSettings;
  return [(SFSafariSettings *)&v3 init];
}

@end