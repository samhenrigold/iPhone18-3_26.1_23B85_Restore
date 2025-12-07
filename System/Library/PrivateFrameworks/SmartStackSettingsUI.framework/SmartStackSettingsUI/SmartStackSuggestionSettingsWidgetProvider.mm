@interface SmartStackSuggestionSettingsWidgetProvider
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
@end

@implementation SmartStackSuggestionSettingsWidgetProvider

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036BCE8, &qword_26A0AF0C0);
  MEMORY[0x28223BE20]();
  v5 = &v8 - v4;
  v6 = sub_26A0AE9E4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_26A0AB2EC(0, 0, v5, &unk_26A0AF188, v7);
}

@end