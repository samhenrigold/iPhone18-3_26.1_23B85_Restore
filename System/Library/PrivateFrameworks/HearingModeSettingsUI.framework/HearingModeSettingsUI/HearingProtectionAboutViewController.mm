@interface HearingProtectionAboutViewController
- (_TtC21HearingModeSettingsUI36HearingProtectionAboutViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)getFeatureVersion;
- (id)getUpdateVersion;
- (id)getYearOfRelease;
- (id)specifiers;
- (uint64_t)handleTotalAttenuationLearnMore;
- (void)viewDidLoad;
@end

@implementation HearingProtectionAboutViewController

- (_TtC21HearingModeSettingsUI36HearingProtectionAboutViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2520046E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_251FCB39C(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_251FCB514();
}

- (id)getFeatureVersion
{
  v2 = sub_2520046B0();

  return v2;
}

- (id)getUpdateVersion
{
  selfCopy = self;
  sub_251FD10F4();

  v3 = sub_2520046B0();

  return v3;
}

- (id)getYearOfRelease
{
  v2 = sub_2520046B0();

  return v2;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_251FD12FC();

  if (v3)
  {
    v4 = sub_2520047A0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = sub_252003BA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B70();
  v9 = *MEMORY[0x277D76F30];
  (*(v5 + 8))(v8, v4);
  return v9;
}

- (uint64_t)handleTotalAttenuationLearnMore
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v13 - v2;
  v4 = sub_252003B10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_251FC6470(v3, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v5 + 32))(v8, v3, v4);
  sharedApplication = [objc_opt_self() sharedApplication];
  v11 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FD6138(&qword_27F4C6A60, &unk_2520079B4);
  v12 = sub_252004600();

  [sharedApplication openURL:v11 options:v12 completionHandler:0];

  return (*(v5 + 8))(v8, v4);
}

@end