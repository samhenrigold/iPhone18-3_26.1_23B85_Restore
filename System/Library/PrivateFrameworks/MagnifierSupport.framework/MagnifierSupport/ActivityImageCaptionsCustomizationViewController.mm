@interface ActivityImageCaptionsCustomizationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didToggleFeedbackSwitch:(id)switch;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleImageCaptionsSwitchChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation ActivityImageCaptionsCustomizationViewController

- (void)loadView
{
  selfCopy = self;
  sub_257D2AA08();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257D2ABA8();
}

- (_TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_257D2B044(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section == 1)
  {
    return (*(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport48ActivityImageCaptionsCustomizationViewController_availableImageCaptionFeedbacks))[2];
  }

  else
  {
    return section == 0;
  }
}

- (void)toggleImageCaptionsSwitchChanged:(id)changed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (changed)
    {
      changedCopy = changed;
      selfCopy = self;
      isOn = [changedCopy isOn];
      sub_257CE2DFC(isOn, v7);
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
  v16 = sub_257D2B54C(viewCopy);

  (*(v7 + 8))(v13, v6);

  return v16;
}

- (void)didToggleFeedbackSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_257D2BB20(switchCopy);
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
  v5 = sub_257ECCEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8, v9, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCE40();
  viewCopy = view;
  v14 = sub_257ECCE30();
  [viewCopy deselectRowAtIndexPath:v14 animated:1];

  (*(v6 + 8))(v12, v5);
}

@end