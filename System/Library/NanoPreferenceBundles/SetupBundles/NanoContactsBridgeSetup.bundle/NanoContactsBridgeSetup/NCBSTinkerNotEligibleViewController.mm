@interface NCBSTinkerNotEligibleViewController
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerNotEligibleViewController)init;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation NCBSTinkerNotEligibleViewController

- (NCBSTinkerNotEligibleViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSTinkerNotEligibleViewController;
  v2 = [(NCBSTinkerNotEligibleViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSTinkerNotEligibleViewController *)v2 setStyle:2];
  }

  return v3;
}

- (id)titleString
{
  miniFlowDelegate = [(NCBSTinkerNotEligibleViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v5 = NanoContactsBridgeSetupBundle(v4);
  v6 = [v5 localizedStringForKey:@"TK_CONTACTS_NOT_ELIGIBLE_TITLE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v7 = [NSString stringWithFormat:v6, familyMemberFirstName];

  return v7;
}

- (id)detailString
{
  miniFlowDelegate = [(NCBSTinkerNotEligibleViewController *)self miniFlowDelegate];
  activePairingDeviceSupportsContactsApp = [miniFlowDelegate activePairingDeviceSupportsContactsApp];
  v5 = @"TK_CONTACTS_NOT_ELIGIBLE_PHONEAPP_DETAIL";
  if (activePairingDeviceSupportsContactsApp)
  {
    v5 = @"TK_CONTACTS_NOT_ELIGIBLE_CONTACTSAPP_DETAIL";
  }

  v6 = v5;

  miniFlowDelegate2 = [(NCBSTinkerNotEligibleViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate2 familyMemberFirstName];

  v10 = NanoContactsBridgeSetupBundle(v9);
  v11 = [v10 localizedStringForKey:v6 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  v12 = [NSString stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, familyMemberFirstName];

  return v12;
}

- (id)suggestedButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle(self);
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_NOT_ELIGIBLE_BUTTON_CONTINUE" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSTinkerNotEligibleViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end