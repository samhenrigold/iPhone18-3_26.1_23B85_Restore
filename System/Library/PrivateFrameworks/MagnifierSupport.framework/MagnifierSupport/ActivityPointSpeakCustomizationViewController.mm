@interface ActivityPointSpeakCustomizationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)colorPickerViewControllerDidSelectColor:(id)color;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)togglePointSpeakSwitchChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation ActivityPointSpeakCustomizationViewController

- (void)loadView
{
  selfCopy = self;
  sub_257DF2D44();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257DF31C0();
}

- (_TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257DF3484(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = 1;
  if (section <= 1)
  {
    if (!section)
    {
      return result;
    }

    if (section == 1)
    {
      return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks))[2];
    }

    return 0;
  }

  if (section == 2 || section == 4)
  {
    return 2;
  }

  if (section != 3)
  {
    return 0;
  }

  return result;
}

- (void)togglePointSpeakSwitchChanged:(id)changed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (changed)
    {
      changedCopy = changed;
      selfCopy = self;
      isOn = [changedCopy isOn];
      sub_257CE31C0(isOn, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
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
  v16 = sub_257DF3BEC(viewCopy);

  (*(v7 + 8))(v13, v6);

  return v16;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257DF4F88(switchCopy);
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  v12 = sub_257ECCEA0();
  (*(v5 + 8))(v11, v4);
  return v12 != 1;
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
  sub_257DF54D4(viewCopy);

  (*(v7 + 8))(v13, v6);
}

- (void)colorPickerViewControllerDidSelectColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_257DF5A3C(colorCopy);
}

@end