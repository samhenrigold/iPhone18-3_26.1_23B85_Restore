@interface AXBuddySettingsMenuTableViewController
- (id)SCATVC;
- (id)createWelcomeControllerWithAXSettingsController:(id)controller title:(id)title;
- (id)keyboardSettingsVC;
- (id)speechVC;
- (id)tableSections;
- (id)touchAndReachVC;
- (id)voiceOverVC;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation AXBuddySettingsMenuTableViewController

- (void)dealloc
{
  AXUISettingsCleanUpWelcomeControllerTableViewObservations();
  v3.receiver = self;
  v3.super_class = AXBuddySettingsMenuTableViewController;
  [(AXBuddySettingsMenuTableViewController *)&v3 dealloc];
}

- (id)voiceOverVC
{
  v2 = AXSettingsBundle(self);
  v3 = [v2 classNamed:@"VoiceOverController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)speechVC
{
  v2 = AXSettingsBundle(self);
  v3 = [v2 classNamed:@"SpeechController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)touchAndReachVC
{
  v2 = AXSettingsBundle(self);
  v3 = [v2 classNamed:@"AXTouchAndReachability"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)keyboardSettingsVC
{
  v2 = AXSettingsBundle(self);
  v3 = [v2 classNamed:@"AXKeyboardsController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)SCATVC
{
  v2 = AXSettingsBundle(self);
  v3 = [v2 classNamed:@"SCATController"];

  v4 = objc_alloc_init(v3);

  return v4;
}

- (id)createWelcomeControllerWithAXSettingsController:(id)controller title:(id)title
{
  controllerCopy = controller;
  titleCopy = title;
  v7 = AXSettingsBundle(titleCopy);
  v8 = [v7 classNamed:controllerCopy];

  if (v8)
  {
    v9 = objc_alloc_init(v8);
    v10 = AXUISettingsCreatePreferencesController();
  }

  else
  {
    v11 = AXLogSettings();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_5668(controllerCopy, v11);
    }

    v10 = [[OBWelcomeController alloc] initWithTitle:titleCopy detailText:0 icon:0 contentLayout:3];
  }

  return v10;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ((AXUISettingsHandleWelcomeControllerTableViewUpdate() & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = AXBuddySettingsMenuTableViewController;
    [(AXBuddySettingsMenuTableViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id)tableSections
{
  objc_initWeak(&location, self);
  v68 = objc_alloc_init(NSMutableArray);
  v2 = [AXBuddySettingsLargeVCPushItem alloc];
  v64 = settingsLocString(@"VOICEOVER_TITLE", @"Accessibility");
  v66 = AXSettingsBundle(v64);
  traitCollection = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v62 = [UIImage imageNamed:@"VoiceOver" inBundle:v66 compatibleWithTraitCollection:traitCollection];
  v49 = traitCollection;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_2B30;
  v86[3] = &unk_C338;
  objc_copyWeak(&v87, &location);
  v60 = [(AXBuddySettingsVCPushItem *)v2 initWithName:v64 image:v62 viewControllerInstantiator:v86];
  v93[0] = v60;
  v4 = [AXBuddySettingsLargeVCPushItem alloc];
  v53 = settingsLocString(@"ZOOM_TITLE", @"Accessibility");
  v58 = AXSettingsBundle(v53);
  traitCollection2 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v54 = [UIImage imageNamed:@"Zoom" inBundle:v58 compatibleWithTraitCollection:traitCollection2];
  v5 = [UIColor colorWithRed:0.290196078 green:0.290196078 blue:0.290196078 alpha:1.0];
  v52 = AXUIIconImageWithBackgroundForImage();
  v48 = v5;
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_2BB4;
  v84[3] = &unk_C338;
  objc_copyWeak(&v85, &location);
  v51 = [(AXBuddySettingsVCPushItem *)v4 initWithName:v53 image:v52 viewControllerInstantiator:v84];
  v93[1] = v51;
  v6 = [AXBuddySettingsLargeVCPushItem alloc];
  v7 = settingsLocString(@"DISPLAY_AND_TEXT", @"Accessibility");
  v8 = AXSettingsBundle(v7);
  traitCollection3 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v10 = [UIImage imageNamed:@"Text Size" inBundle:v8 compatibleWithTraitCollection:traitCollection3];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_2C38;
  v82[3] = &unk_C338;
  objc_copyWeak(&v83, &location);
  v11 = [(AXBuddySettingsVCPushItem *)v6 initWithName:v7 image:v10 viewControllerInstantiator:v82];
  v93[2] = v11;
  v12 = [AXBuddySettingsLargeVCPushItem alloc];
  v13 = settingsLocString(@"MOTION_TITLE", @"Accessibility");
  v14 = AXSettingsBundle(v13);
  traitCollection4 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v16 = [UIImage imageNamed:@"Motion" inBundle:v14 compatibleWithTraitCollection:traitCollection4];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_2CBC;
  v80[3] = &unk_C338;
  objc_copyWeak(&v81, &location);
  v17 = [(AXBuddySettingsVCPushItem *)v12 initWithName:v13 image:v16 viewControllerInstantiator:v80];
  v93[3] = v17;
  v50 = [NSArray arrayWithObjects:v93 count:4];

  [v68 addObjectsFromArray:v50];
  if (AXDeviceSupportsAccessibilityReader())
  {
    v18 = [AXBuddySettingsLargeVCPushItem alloc];
    v19 = settingsLocString(@"READ_AND_SPEAK_TITLE", @"Accessibility");
    v20 = AXSettingsBundle(v19);
    traitCollection5 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
    v22 = [UIImage imageNamed:@"Speech" inBundle:v20 compatibleWithTraitCollection:traitCollection5];
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_2D40;
    v78[3] = &unk_C338;
    v23 = &v79;
    objc_copyWeak(&v79, &location);
    v24 = [(AXBuddySettingsVCPushItem *)v18 initWithName:v19 image:v22 viewControllerInstantiator:v78];
    v92 = v24;
    v25 = [NSArray arrayWithObjects:&v92 count:1];
    [v68 addObjectsFromArray:v25];
  }

  else
  {
    v26 = [AXBuddySettingsLargeVCPushItem alloc];
    v19 = settingsLocString(@"SPEECH_TITLE", @"Accessibility");
    v20 = AXSettingsBundle(v19);
    traitCollection5 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
    v22 = [UIImage imageNamed:@"Speech" inBundle:v20 compatibleWithTraitCollection:traitCollection5];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_2DC4;
    v76[3] = &unk_C338;
    v23 = &v77;
    objc_copyWeak(&v77, &location);
    v24 = [(AXBuddySettingsVCPushItem *)v26 initWithName:v19 image:v22 viewControllerInstantiator:v76];
    v91 = v24;
    v25 = [NSArray arrayWithObjects:&v91 count:1];
    [v68 addObjectsFromArray:v25];
  }

  objc_destroyWeak(v23);
  v27 = [AXBuddySettingsTableSection alloc];
  v28 = settingsLocString(@"VISION", @"Accessibility");
  v57 = [(AXBuddySettingsTableSection *)v27 initWithName:v28 subitems:v68];

  v29 = [AXBuddySettingsLargeVCPushItem alloc];
  v65 = settingsLocString(@"TOUCH", @"Accessibility");
  v67 = AXSettingsBundle(v65);
  traitCollection6 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v63 = [UIImage imageNamed:@"Touch" inBundle:v67 compatibleWithTraitCollection:traitCollection6];
  v55 = traitCollection6;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_2E48;
  v74[3] = &unk_C338;
  objc_copyWeak(&v75, &location);
  v61 = [(AXBuddySettingsVCPushItem *)v29 initWithName:v65 image:v63 viewControllerInstantiator:v74];
  v90[0] = v61;
  v31 = [AXBuddySettingsLargeVCPushItem alloc];
  v59 = AXBuddyBundleLocString(@"SWITCH_CONTROL_TITLE");
  v32 = AXSettingsBundle(v59);
  traitCollection7 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v34 = [UIImage imageNamed:@"SwitchControl" inBundle:v32 compatibleWithTraitCollection:traitCollection7];
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_2ECC;
  v72[3] = &unk_C338;
  objc_copyWeak(&v73, &location);
  v35 = [(AXBuddySettingsVCPushItem *)v31 initWithName:v59 image:v34 viewControllerInstantiator:v72];
  v90[1] = v35;
  v36 = [AXBuddySettingsLargeVCPushItem alloc];
  v37 = settingsLocString(@"KEYBOARDS", @"Accessibility");
  v38 = AXSettingsBundle(v37);
  traitCollection8 = [(AXBuddySettingsMenuTableViewController *)self traitCollection];
  v40 = [UIImage imageNamed:@"Keyboards" inBundle:v38 compatibleWithTraitCollection:traitCollection8];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_2F48;
  v70[3] = &unk_C338;
  objc_copyWeak(&v71, &location);
  v41 = [(AXBuddySettingsVCPushItem *)v36 initWithName:v37 image:v40 viewControllerInstantiator:v70];
  v90[2] = v41;
  v42 = [NSArray arrayWithObjects:v90 count:3];

  v43 = [AXBuddySettingsTableSection alloc];
  v44 = settingsLocString(@"MOBILITY_HEADING", @"Accessibility");
  v45 = [(AXBuddySettingsTableSection *)v43 initWithName:v44 subitems:v42];

  v89[0] = v57;
  v89[1] = v45;
  v46 = [NSArray arrayWithObjects:v89 count:2];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);

  objc_destroyWeak(&v81);
  objc_destroyWeak(&v83);
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v87);

  objc_destroyWeak(&location);

  return v46;
}

@end