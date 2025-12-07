@interface PNPFeatureListController
+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate;
- (BOOL)addScribbleBulletIfNecessary;
- (void)addDoubleTapBullet;
- (void)addDoubleTapBulletForPro;
- (void)addHoverBullet;
- (void)addQuickNoteBullet;
- (void)addScreenshotsBullet;
- (void)addScreenshotsBulletForPro;
- (void)addSqueezeBullet;
- (void)configureFor532;
- (void)configureForType:(int64_t)type;
- (void)tempDoTheNormalThing;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PNPFeatureListController

+ (id)_controllerWithType:(int64_t)type buttonType:(int64_t)buttonType deviceType:(int64_t)deviceType delegate:(id)delegate
{
  delegateCopy = delegate;
  v10 = PencilPairingUIBundle(delegateCopy);
  v11 = [v10 localizedStringForKey:@"WELCOME_TITLE" value:&stru_286FDFDB8 table:0];

  v12 = [PNPFeatureListController alloc];
  v13 = PencilPairingUIBundle(v12);
  v14 = [v13 localizedStringForKey:@"WELCOME_DETAIL_TEXT" value:&stru_286FDFDB8 table:0];
  v15 = [(PNPWelcomeController *)v12 initWithTitle:v11 detailText:v14 icon:0];

  if (deviceType == 4)
  {
    v17 = PencilPairingUIBundle(v16);
    buttonTypeCopy = buttonType;
    v18 = [v17 localizedStringForKey:@"WELCOME_TITLE_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];

    v19 = [PNPFeatureListController alloc];
    v20 = PencilPairingUIBundle(v19);
    v21 = [v20 localizedStringForKey:@"WELCOME_DETAIL_TEXT_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
    v22 = [(PNPWelcomeController *)v19 initWithTitle:v18 detailText:v21 icon:0];

    v11 = v18;
    v15 = v22;
    buttonType = buttonTypeCopy;
  }

  [(PNPWelcomeController *)v15 setControllerType:type buttonType:buttonType deviceType:deviceType delegate:delegateCopy];

  return v15;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PNPFeatureListController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(PNPFeatureListController *)self configureForType:[(PNPWelcomeController *)self deviceType]];
}

- (void)configureForType:(int64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        [(PNPFeatureListController *)self configureFor222];
      }
    }

    else
    {
      [(PNPFeatureListController *)self configureForGeneric];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        [(PNPFeatureListController *)self configureFor332];
        break;
      case 3:
        [(PNPFeatureListController *)self configureFor482];
        break;
      case 4:
        [(PNPFeatureListController *)self configureFor532];
        break;
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PNPFeatureListController;
  [(PNPFeatureListController *)&v5 viewWillAppear:1];
  view = [(PNPFeatureListController *)self view];
  [view setHidden:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PNPFeatureListController;
  [(OBBaseWelcomeController *)&v5 viewDidDisappear:disappear];
  view = [(PNPFeatureListController *)self view];
  [view setHidden:1];
}

- (void)configureFor532
{
  [(PNPFeatureListController *)self addSqueezeBullet];
  [(PNPFeatureListController *)self addDoubleTapBulletForPro];
  [(PNPFeatureListController *)self addScribbleBulletIfNecessary];

  [(PNPFeatureListController *)self addScreenshotsBulletForPro];
}

- (void)addHoverBullet
{
  v7 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v7 localizedStringForKey:@"PENCIL_HOVER_PREVIEW_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle(v3);
  v5 = [v4 localizedStringForKey:@"PENCIL_HOVER_PREVIEW_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"Preview"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addQuickNoteBullet
{
  v11 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v11 localizedStringForKey:@"WELCOME_NOTES_TITLE" value:&stru_286FDFDB8 table:0];
  isRTL = [(PNPWelcomeController *)self isRTL];
  v5 = isRTL;
  v6 = PencilPairingUIBundle(isRTL);
  v7 = v6;
  if (v5)
  {
    v8 = @"WELCOME_NOTES_DESCRIPTION_RTOL";
  }

  else
  {
    v8 = @"WELCOME_NOTES_DESCRIPTION";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_286FDFDB8 table:0];
  v10 = [(PNPWelcomeController *)self bundleImageNamed:@"Notes"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v9 image:v10];
}

- (BOOL)addScribbleBulletIfNecessary
{
  mEMORY[0x277CD9698] = [MEMORY[0x277CD9698] sharedSettings];
  supportedKeyboardLocaleExists = [mEMORY[0x277CD9698] supportedKeyboardLocaleExists];

  if (supportedKeyboardLocaleExists)
  {
    v5 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
    v6 = [v5 localizedStringForKey:@"WELCOME_SCRIBBLE_TITLE" value:&stru_286FDFDB8 table:0];
    v7 = PencilPairingUIBundle(v6);
    v8 = [v7 localizedStringForKey:@"WELCOME_SCRIBBLE_DESCRIPTION" value:&stru_286FDFDB8 table:0];
    v9 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_scribble"];
    [(PNPFeatureListController *)self addBulletedListItemWithTitle:v6 description:v8 image:v9];
  }

  return supportedKeyboardLocaleExists;
}

- (void)addDoubleTapBullet
{
  v7 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v7 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle(v3);
  v5 = [v4 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_DESCRIPTION" value:&stru_286FDFDB8 table:0];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_double_tap"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addScreenshotsBullet
{
  v11 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v11 localizedStringForKey:@"WELCOME_SCREENSHOT_TITLE" value:&stru_286FDFDB8 table:0];
  isRTL = [(PNPWelcomeController *)self isRTL];
  v5 = isRTL;
  v6 = PencilPairingUIBundle(isRTL);
  v7 = v6;
  if (v5)
  {
    v8 = @"WELCOME_SCREENSHOT_DESCRIPTION_RTOL";
  }

  else
  {
    v8 = @"WELCOME_SCREENSHOT_DESCRIPTION";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_286FDFDB8 table:0];
  v10 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_swipe"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v9 image:v10];
}

- (void)addSqueezeBullet
{
  v7 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v7 localizedStringForKey:@"WELCOME_SQUEEZE_TITLE" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v4 = PencilPairingUIBundle(v3);
  v5 = [v4 localizedStringForKey:@"WELCOME_SQUEEZE_DESCRIPTION" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_squeeze"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addDoubleTapBulletForPro
{
  v7 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v7 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_TITLE" value:&stru_286FDFDB8 table:0];
  v4 = PencilPairingUIBundle(v3);
  v5 = [v4 localizedStringForKey:@"WELCOME_SWITCH_TOOLS_DESCRIPTION_PRO" value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v6 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_double_tap"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v5 image:v6];
}

- (void)addScreenshotsBulletForPro
{
  v11 = PencilPairingUIBundle([(PNPFeatureListController *)self setBulletCount:[(PNPFeatureListController *)self bulletCount]+ 1]);
  v3 = [v11 localizedStringForKey:@"WELCOME_SCREENSHOT_TITLE" value:&stru_286FDFDB8 table:0];
  isRTL = [(PNPWelcomeController *)self isRTL];
  v5 = isRTL;
  v6 = PencilPairingUIBundle(isRTL);
  v7 = v6;
  if (v5)
  {
    v8 = @"WELCOME_SCREENSHOT_DESCRIPTION_RTOL_PRO";
  }

  else
  {
    v8 = @"WELCOME_SCREENSHOT_DESCRIPTION_PRO";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_286FDFDB8 table:@"PencilPairingSqueeze-B532"];
  v10 = [(PNPWelcomeController *)self bundleImageNamed:@"welcome_swipe"];
  [(PNPFeatureListController *)self addBulletedListItemWithTitle:v3 description:v9 image:v10];
}

- (void)tempDoTheNormalThing
{
  isHoverActive = [MEMORY[0x277CD9628] isHoverActive];
  v4 = isHoverActive;
  if (isHoverActive)
  {
    [(PNPFeatureListController *)self addHoverBullet];
  }

  [(PNPFeatureListController *)self addQuickNoteBullet];
  [(PNPFeatureListController *)self addScribbleBulletIfNecessary];
  if ([(PNPWelcomeController *)self deviceType]== 2)
  {
    [(PNPFeatureListController *)self addDoubleTapBullet];
  }

  if ((v4 & 1) == 0)
  {

    [(PNPFeatureListController *)self addScreenshotsBullet];
  }
}

@end