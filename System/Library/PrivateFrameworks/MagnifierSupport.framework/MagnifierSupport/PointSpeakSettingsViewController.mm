@interface PointSpeakSettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport32PointSpeakSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)colorPickerViewControllerDidSelectColor:(id)color;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)didToggleFlashlightSwitch:(id)switch;
- (void)didToggleOutlineSwitch:(id)switch;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PointSpeakSettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257D23D6C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257D246B8(appear);
}

- (_TtC16MagnifierSupport32PointSpeakSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_257D24874(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = 2;
  if (section > 1)
  {
    if (section == 2)
    {
      return 1;
    }

    else if (section != 3)
    {
      return 0;
    }
  }

  else if (section)
  {
    if (section != 1)
    {
      return 0;
    }
  }

  else
  {
    return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport32PointSpeakSettingsViewController_availablePointSpeakFeedbacks))[2];
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_257D24EA4(viewCopy);

  (*(v7 + 8))(v13, v6);

  return v16;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257D27694(switchCopy);
}

- (void)didToggleFlashlightSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257D27A74(switchCopy, &OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__pointSpeakFlashlightEnabled, sub_257BFB460);
}

- (void)didToggleOutlineSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257D27A74(switchCopy, &OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__outlinePointSpeak, sub_257BD2BA4);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v12 = sub_257ECCEA0();
  (*(v5 + 8))(v11, v4);
  return (v12 > 3) | (0xEu >> (v12 & 0xF)) & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_257ECCEB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  sub_257D267D8(viewCopy);

  (*(v7 + 8))(v13, v6);
}

- (void)colorPickerViewControllerDidSelectColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_257D26F08(colorCopy);
}

@end