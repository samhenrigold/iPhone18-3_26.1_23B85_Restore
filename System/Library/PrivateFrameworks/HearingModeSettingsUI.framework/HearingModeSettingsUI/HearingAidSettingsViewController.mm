@interface HearingAidSettingsViewController
- (_TtC21HearingModeSettingsUI32HearingAidSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)mediaAssistEnabled;
- (id)specifiers;
- (uint64_t)hearingOptionsInControllcenterTapped;
- (void)useNewTestResultTapped;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HearingAidSettingsViewController

- (_TtC21HearingModeSettingsUI32HearingAidSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return HearingAidSettingsViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_251FF94C4();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_251FFA6D8();

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HearingAidSettingsViewController();
  v4 = v5.receiver;
  [(HearingAidSettingsViewController *)&v5 viewWillAppear:appearCopy];
  [v4 reloadSpecifiers];
}

- (id)mediaAssistEnabled
{
  selfCopy = self;
  result = sub_251FF6DB8();
  if (result)
  {
    v4 = result;
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    v5 = sub_252003E60();

    sub_2520040D0();
    v6 = sub_252004970();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)useNewTestResultTapped
{
  selfCopy = self;
  sub_251FFB324();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HearingAidSettingsViewController();
  v4 = v6.receiver;
  v5 = [(HearingAidSettingsViewController *)&v6 viewDidDisappear:disappearCopy];
  (*((*MEMORY[0x277D85000] & *v4) + 0x1B0))(v5);
}

- (uint64_t)hearingOptionsInControllcenterTapped
{
  v30 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v27 - v2;
  v4 = sub_252003B10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_251FC6470(v3, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v5 + 32))(v8, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7208, &qword_252008A28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007350;
  *(inited + 32) = sub_2520046E0();
  *(inited + 40) = v11;
  *(inited + 48) = 1;
  *(inited + 56) = sub_2520046E0();
  *(inited + 64) = v12;
  *(inited + 72) = 1;
  v13 = sub_251FFC544(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7210, &unk_252008A30);
  swift_arrayDestroy();
  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v15 = defaultWorkspace;
    v16 = sub_252003AF0();
    sub_251FFB484(v13);

    v17 = MEMORY[0x277D837D0];
    v18 = sub_252004600();

    v28 = 0;
    v19 = [v15 openSensitiveURL:v16 withOptions:v18 error:&v28];

    if (v19)
    {
      v20 = *(v5 + 8);
      v21 = v28;
      return v20(v8, v4);
    }

    else
    {
      v22 = v28;
      v23 = sub_252003AE0();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A80, &qword_252008650);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_252007360;
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_252004A70();
      MEMORY[0x253096310](0xD000000000000019, 0x800000025200F290);
      v27[1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7218, &unk_252008A40);
      sub_252004B00();
      v25 = v28;
      v26 = v29;
      *(v24 + 56) = v17;
      *(v24 + 32) = v25;
      *(v24 + 40) = v26;
      sub_252004BF0();

      return (*(v5 + 8))(v8, v4);
    }
  }

  else
  {
    (*(v5 + 8))(v8, v4);
  }
}

@end