@interface DepthSettingsController
- (_TtC22DepthCompanionSettings23DepthSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)openUserGuide;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DepthSettingsController

- (_TtC22DepthCompanionSettings23DepthSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_A174();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_562C(bundle, v6, bundle);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_59D0(appearCopy);
}

- (id)localizedPaneTitle
{
  v2 = sub_A154();

  return v2;
}

- (id)applicationBundleIdentifier
{
  v2 = sub_A154();

  return v2;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_5F70();

  if (v3)
  {
    v4.super.isa = sub_A1E4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_9FF4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9FE4();
  viewCopy = view;
  selfCopy = self;
  sub_67B4(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)openUserGuide
{
  sub_21F8(&qword_14CA8, &unk_AC48);
  __chkstk_darwin();
  v1 = v20 - v0;
  v2 = sub_9FA4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0xD000000000000025;
  v25 = 0x800000000000B900;
  sharedInstance = [objc_opt_self() sharedInstance];
  if (!sharedInstance)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = sharedInstance;
  getActivePairedDevice = [sharedInstance getActivePairedDevice];

  if (!getActivePairedDevice)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = [getActivePairedDevice valueForProperty:NRDevicePropertyAbsoluteDepthLimit];

  if (v9)
  {
    sub_A2F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  sub_7690(v23, &v21);
  if (!*(&v22 + 1))
  {
    sub_7700(&v21, &qword_14928, &unk_AB10);
    goto LABEL_12;
  }

  sub_2578(0, &qword_14CB0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v27._object = 0x800000000000B930;
    v27._countAndFlagsBits = 0xD000000000000013;
    sub_A1B4(v27);
    goto LABEL_13;
  }

  v10 = v20[1];
  isa = sub_A2B4(6).super.super.isa;
  v12 = sub_A2D4();

  if ((v12 & 1) == 0)
  {

    goto LABEL_12;
  }

  v26._countAndFlagsBits = 0x333730396470612FLL;
  v26._object = 0xED00003664333863;
  sub_A1B4(v26);

LABEL_13:
  sub_9F94();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_7700(v23, &qword_14928, &unk_AB10);

    v13 = &qword_14CA8;
    v14 = &unk_AC48;
    v15 = v1;
LABEL_17:
    sub_7700(v15, v13, v14);
    return;
  }

  (*(v3 + 32))(v5, v1, v2);
  if (UIApp)
  {
    v16 = UIApp;

    sub_9F84(v17);
    v19 = v18;
    [v16 openURL:v18 withCompletionHandler:0];

    (*(v3 + 8))(v5, v2);
    v13 = &qword_14928;
    v14 = &unk_AB10;
    v15 = v23;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

@end