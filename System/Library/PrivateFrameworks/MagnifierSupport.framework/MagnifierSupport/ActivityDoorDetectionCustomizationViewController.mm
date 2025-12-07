@interface ActivityDoorDetectionCustomizationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)colorPickerViewControllerDidSelectColor:(id)color;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleDoorDetectionSwitchChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation ActivityDoorDetectionCustomizationViewController

- (void)loadView
{
  selfCopy = self;
  sub_257DC6B10();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257DC6F8C();
}

- (_TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257DC7334(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_257DCAF74(section);

  return v8;
}

- (void)toggleDoorDetectionSwitchChanged:(id)changed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (changed)
    {
      changedCopy = changed;
      selfCopy = self;
      isOn = [changedCopy isOn];
      sub_257CE2304(isOn, v7);
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
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_257ECCE40();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_257DC7B54(viewCopy, v13);

  (*(v7 + 8))(v13, v6);

  return v16;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257DC9BE0(switchCopy);
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
  return sub_257CA9794(v12) != 3;
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
  sub_257DCA158(viewCopy);

  (*(v7 + 8))(v13, v6);
}

- (void)colorPickerViewControllerDidSelectColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_257DCAA34(colorCopy);
}

@end