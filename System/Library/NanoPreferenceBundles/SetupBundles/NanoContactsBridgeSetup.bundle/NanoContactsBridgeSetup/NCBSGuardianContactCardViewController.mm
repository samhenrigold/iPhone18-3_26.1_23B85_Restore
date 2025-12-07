@interface NCBSGuardianContactCardViewController
- (BOOL)hasMeCard;
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSGuardianContactCardViewController)init;
- (id)_newMeContactForGuardian:(id)guardian;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)guardianContactStore;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_setGuardianMeContact:(id)contact;
- (void)_visitMeCard;
- (void)alternateButtonPressed:(id)pressed;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
@end

@implementation NCBSGuardianContactCardViewController

- (NCBSGuardianContactCardViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSGuardianContactCardViewController;
  v2 = [(NCBSGuardianContactCardViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSGuardianContactCardViewController *)v2 setStyle:10];
  }

  return v3;
}

- (id)titleString
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v3 = hasMeCard;
  v4 = NanoContactsBridgeSetupBundle(hasMeCard);
  v5 = v4;
  if (v3)
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_TITLE_UPDATE";
  }

  else
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_TITLE_CREATE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v7;
}

- (id)detailString
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v4 = hasMeCard;
  v5 = NanoContactsBridgeSetupBundle(hasMeCard);
  v6 = v5;
  if (v4)
  {
    v7 = @"TK_CONTACTS_GUARDIAN_ME_DETAIL_UPDATE";
  }

  else
  {
    v7 = @"TK_CONTACTS_GUARDIAN_ME_DETAIL_CREATE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v11 = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@%@" error:0, familyMemberFirstName, familyMemberFirstName];

  return v11;
}

- (id)suggestedButtonTitle
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v3 = hasMeCard;
  v4 = NanoContactsBridgeSetupBundle(hasMeCard);
  v5 = v4;
  if (v3)
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_UPDATE";
  }

  else
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_CREATE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v7;
}

- (id)alternateButtonTitle
{
  hasMeCard = [(NCBSGuardianContactCardViewController *)self hasMeCard];
  v3 = hasMeCard;
  v4 = NanoContactsBridgeSetupBundle(hasMeCard);
  v5 = v4;
  if (v3)
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_SKIP";
  }

  else
  {
    v6 = @"TK_CONTACTS_GUARDIAN_ME_BUTTON_LATER";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v7;
}

- (void)alternateButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (id)guardianContactStore
{
  guardianContactStore = self->_guardianContactStore;
  if (!guardianContactStore)
  {
    v4 = objc_alloc_init(CNContactStore);
    v5 = self->_guardianContactStore;
    self->_guardianContactStore = v4;

    v7 = self->_guardianContactStore;
    if (v7)
    {
      v8 = +[CNContactViewController descriptorForRequiredKeys];
      v24 = v8;
      v9 = [NSArray arrayWithObjects:&v24 count:1];
      v15 = 0;
      v10 = [(CNContactStore *)v7 _ios_meContactWithKeysToFetch:v9 error:&v15];
      v7 = v15;

      self->_hasMeCard = v10 != 0;
    }

    v11 = NCBS_Tinker_log(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_guardianContactStore;
      hasMeCard = self->_hasMeCard;
      *buf = 136446978;
      v17 = "[NCBSGuardianContactCardViewController guardianContactStore]";
      v18 = 2112;
      v19 = v12;
      v20 = 1024;
      v21 = hasMeCard;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - OPENED guardianContactStore: %@, hasMeCard: %d (error: %{public}@)", buf, 0x26u);
    }

    guardianContactStore = self->_guardianContactStore;
  }

  return guardianContactStore;
}

- (BOOL)hasMeCard
{
  if (self->_hasMeCard)
  {
    return 1;
  }

  else if (self->_guardianContactStore)
  {
    return 0;
  }

  else
  {
    guardianContactStore = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
    return self->_hasMeCard;
  }
}

- (id)_newMeContactForGuardian:(id)guardian
{
  guardianCopy = guardian;
  v4 = objc_opt_new();
  firstName = [guardianCopy firstName];
  [v4 setGivenName:firstName];

  lastName = [guardianCopy lastName];
  [v4 setFamilyName:lastName];

  appleID = [guardianCopy appleID];

  if (appleID)
  {
    v8 = [CNLabeledValue labeledValueWithLabel:CNLabelEmailiCloud value:appleID];
    v11 = v8;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    [v4 setEmailAddresses:v9];
  }

  return v4;
}

- (void)_visitMeCard
{
  miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
  setupGuardian = [miniFlowDelegate setupGuardian];

  v6 = NCBS_Tinker_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    guardianContactStore = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
    *buf = 136446722;
    v25 = "[NCBSGuardianContactCardViewController _visitMeCard]";
    v26 = 2112;
    v27 = guardianContactStore;
    v28 = 2112;
    v29 = setupGuardian;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - guardianContactStore: %@, guardianFamilyMember: %@", buf, 0x20u);
  }

  guardianContactStore2 = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
  v9 = +[CNContactViewController descriptorForRequiredKeys];
  v23 = v9;
  v10 = [NSArray arrayWithObjects:&v23 count:1];
  v22 = 0;
  v11 = [guardianContactStore2 _ios_meContactWithKeysToFetch:v10 error:&v22];
  v12 = v22;

  v14 = NCBS_Tinker_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v25 = "[NCBSGuardianContactCardViewController _visitMeCard]";
    v26 = 2112;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - _ios_meContactWithKeysToFetch result: %@, error: %{public}@", buf, 0x20u);
  }

  if (v11)
  {
    v15 = [CNContactViewController viewControllerForUpdatingContact:v11 withPropertiesFromContact:0];
  }

  else
  {
    v16 = [(NCBSGuardianContactCardViewController *)self _newMeContactForGuardian:setupGuardian];
    v15 = [CNContactViewController viewControllerForNewContact:v16];
  }

  guardianContactStore3 = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
  [v15 setContactStore:guardianContactStore3];

  [v15 setDisplayMode:2];
  [v15 setDelegate:self];
  v18 = [[UINavigationController alloc] initWithRootViewController:v15];
  view = [(NCBSGuardianContactCardViewController *)self view];
  tintColor = [view tintColor];
  view2 = [v18 view];
  [view2 setTintColor:tintColor];

  [(NCBSGuardianContactCardViewController *)self presentViewController:v18 animated:1 completion:0];
}

- (void)_setGuardianMeContact:(id)contact
{
  contactCopy = contact;
  guardianContactStore = [(NCBSGuardianContactCardViewController *)self guardianContactStore];
  v12 = 0;
  v6 = [guardianContactStore setMeContact:contactCopy error:&v12];
  v7 = v12;

  v9 = self->_hasMeCard | v6;
  self->_hasMeCard |= v6;
  if (v9)
  {
    miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
    [miniFlowDelegate setSetupGuardianHasContactsToDonate:1];
  }

  v11 = NCBS_Tinker_log(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v14 = "[NCBSGuardianContactCardViewController _setGuardianMeContact:]";
    v15 = 1024;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2112;
    v20 = contactCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact result: %d, error: %{public}@, contact: %@", buf, 0x26u);
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  v6 = [(NCBSGuardianContactCardViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (contactCopy)
  {
    [(NCBSGuardianContactCardViewController *)self _setGuardianMeContact:contactCopy];
    miniFlowDelegate = [(NCBSGuardianContactCardViewController *)self miniFlowDelegate];
    [miniFlowDelegate miniFlowStepComplete:self];
  }

  else
  {
    v8 = NCBS_Tinker_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[NCBSGuardianContactCardViewController contactViewController:didCompleteWithContact:]";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact canceled (no contact)", &v9, 0xCu);
    }
  }
}

- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end