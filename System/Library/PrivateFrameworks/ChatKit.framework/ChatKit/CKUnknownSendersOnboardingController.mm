@interface CKUnknownSendersOnboardingController
- (id)initUnknownSendersOnboardingController;
- (void)setUpLaterButtonAction;
- (void)turnOnScreeningButtonAction;
- (void)viewDidLoad;
@end

@implementation CKUnknownSendersOnboardingController

- (id)initUnknownSendersOnboardingController
{
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"line.3.horizontal.decrease.circle.fill"];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v26 = v4;
  v6 = [v4 imageWithTintColor:labelColor];

  v25 = v6;
  [v3 setImage:v6];
  v27 = v3;
  v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];
  v31 = *MEMORY[0x1E69DB650];
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v32[0] = labelColor2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];

  v11 = CKFrameworkBundle(v10);
  v12 = [v11 localizedStringForKey:@"UNKNOWN_SENDERS_ONBOARDING_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];

  v24 = v9;
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:v9];
  v14 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v13, v7];
  selfCopy = self;
  v30.receiver = self;
  v30.super_class = CKUnknownSendersOnboardingController;
  v16 = [(CKUnknownSendersOnboardingController *)&v30 respondsToSelector:sel_initWithTitle_attributedDetailText_contentLayout_];
  LODWORD(v6) = v16;
  v17 = CKFrameworkBundle(v16);
  v18 = [v17 localizedStringForKey:@"UNKNOWN_SENDERS_ONBOARDING_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v19 = v18;
  if (v6)
  {
    v29.receiver = selfCopy;
    v29.super_class = CKUnknownSendersOnboardingController;
    v20 = [(CKUnknownSendersOnboardingController *)&v29 initWithTitle:v18 attributedDetailText:v14 contentLayout:1];
  }

  else
  {
    v21 = CKFrameworkBundle(v18);
    v22 = [v21 localizedStringForKey:@"UNKNOWN_SENDERS_ONBOARDING_SUBTITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v28.receiver = selfCopy;
    v28.super_class = CKUnknownSendersOnboardingController;
    v20 = [(CKUnknownSendersOnboardingController *)&v28 initWithTitle:v19 detailText:v22 icon:0 contentLayout:1];
  }

  return v20;
}

- (void)viewDidLoad
{
  selfCopy = self;
  CKUnknownSendersOnboardingController.viewDidLoad()();
}

- (void)turnOnScreeningButtonAction
{
  v3 = objc_allocWithZone(type metadata accessor for PriorityOnboardingController());
  selfCopy = self;
  v4 = PriorityOnboardingController.init()();
  navigationController = [(CKUnknownSendersOnboardingController *)selfCopy navigationController];
  if (navigationController)
  {
    v7 = navigationController;
    [navigationController pushViewController:v4 animated:1];
  }

  CKSetMessageFilteringEnabled(1, v6);
}

- (void)setUpLaterButtonAction
{
  selfCopy = self;
  navigationController = [(CKUnknownSendersOnboardingController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

@end