@interface NCBSTinkerMeCardViewController
- (BOOL)_addSatellitePhoneNumberToContactIfNotPresent:(id)present;
- (BOOL)hasMeCard;
- (NCBSBridgeSetupControllerDelegate)miniFlowDelegate;
- (NCBSTinkerMeCardViewController)init;
- (id)_activeSatellitePhoneNumber;
- (id)_newMeContactForFamilyMember:(id)member;
- (id)_updatedContactForFamilyMember:(id)member originalContact:(id)contact;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)familyMemberScopedContactStore;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_addFamilyMemberContactToGuardianStore:(id)store;
- (void)_setFamilyMemberMeContact:(id)contact;
- (void)_visitMeCard;
- (void)alternateButtonPressed:(id)pressed;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NCBSTinkerMeCardViewController

- (NCBSTinkerMeCardViewController)init
{
  v5.receiver = self;
  v5.super_class = NCBSTinkerMeCardViewController;
  v2 = [(NCBSTinkerMeCardViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NCBSTinkerMeCardViewController *)v2 setStyle:10];
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = NCBSTinkerMeCardViewController;
  [(NCBSTinkerMeCardViewController *)&v3 viewWillAppear:appear];
}

- (id)titleString
{
  selfCopy = self;
  miniFlowDelegate = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  hasMeCard = [(NCBSTinkerMeCardViewController *)selfCopy hasMeCard];
  LODWORD(selfCopy) = hasMeCard;
  v6 = NanoContactsBridgeSetupBundle(hasMeCard);
  v7 = v6;
  if (selfCopy)
  {
    v8 = @"TK_CONTACTS_TINKERUSER_ME_TITLE_UPDATE";
  }

  else
  {
    v8 = @"TK_CONTACTS_TINKERUSER_ME_TITLE_CREATE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v10 = [NSString stringWithFormat:v9, familyMemberFirstName];

  return v10;
}

- (id)detailString
{
  miniFlowDelegate = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v5 = NanoContactsBridgeSetupBundle(v4);
  v6 = [v5 localizedStringForKey:@"TK_CONTACTS_TINKERUSER_ME_DETAIL" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];
  v7 = [NSString stringWithFormat:v6, familyMemberFirstName];

  return v7;
}

- (id)suggestedButtonTitle
{
  hasMeCard = [(NCBSTinkerMeCardViewController *)self hasMeCard];
  v3 = hasMeCard;
  v4 = NanoContactsBridgeSetupBundle(hasMeCard);
  v5 = v4;
  if (v3)
  {
    v6 = @"TK_CONTACTS_TINKERUSER_ME_BUTTON_UPDATE";
  }

  else
  {
    v6 = @"TK_CONTACTS_TINKERUSER_ME_BUTTON_CREATE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v7;
}

- (id)alternateButtonTitle
{
  v2 = NanoContactsBridgeSetupBundle(self);
  v3 = [v2 localizedStringForKey:@"TK_CONTACTS_TINKERUSER_ME_BUTTON_LATER" value:&stru_1C900 table:@"NanoContactsBridgeSetup"];

  return v3;
}

- (void)alternateButtonPressed:(id)pressed
{
  miniFlowDelegate = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  [miniFlowDelegate miniFlowStepComplete:self];
}

- (id)familyMemberScopedContactStore
{
  v3 = NCBS_Tinker_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    familyMemberScopedContactStore = self->_familyMemberScopedContactStore;
    *buf = 136446466;
    v21 = "[NCBSTinkerMeCardViewController familyMemberScopedContactStore]";
    v22 = 2112;
    v23 = familyMemberScopedContactStore;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}s - _familyMemberScopedContactStore: %@", buf, 0x16u);
  }

  v5 = self->_familyMemberScopedContactStore;
  if (!v5)
  {
    miniFlowDelegate = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
    familyMember = [miniFlowDelegate familyMember];

    if (familyMember)
    {
      v8 = [CNContactStore storeForFamilyMember:familyMember];
      v9 = self->_familyMemberScopedContactStore;
      self->_familyMemberScopedContactStore = v8;

      v11 = self->_familyMemberScopedContactStore;
      if (v11)
      {
        v12 = +[CNContactViewController descriptorForRequiredKeys];
        v30 = v12;
        v13 = [NSArray arrayWithObjects:&v30 count:1];
        v19 = 0;
        v14 = [(CNContactStore *)v11 _ios_meContactWithKeysToFetch:v13 error:&v19];
        v11 = v19;

        self->_hasMeCard = v14 != 0;
      }

      v15 = NCBS_Tinker_log(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_familyMemberScopedContactStore;
        hasMeCard = self->_hasMeCard;
        *buf = 136447234;
        v21 = "[NCBSTinkerMeCardViewController familyMemberScopedContactStore]";
        v22 = 2112;
        v23 = familyMember;
        v24 = 2112;
        v25 = v16;
        v26 = 1024;
        v27 = hasMeCard;
        v28 = 2114;
        v29 = v11;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMember: %@; OPENED familyMemberScopedContactStore: %@, hasMeCard: %d (error: %{public}@)", buf, 0x30u);
      }
    }

    v5 = self->_familyMemberScopedContactStore;
  }

  return v5;
}

- (BOOL)hasMeCard
{
  if (self->_hasMeCard)
  {
    return 1;
  }

  else if (self->_familyMemberScopedContactStore)
  {
    return 0;
  }

  else
  {
    familyMemberScopedContactStore = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
    return self->_hasMeCard;
  }
}

- (id)_newMeContactForFamilyMember:(id)member
{
  memberCopy = member;
  v5 = objc_opt_new();
  firstName = [memberCopy firstName];
  [v5 setGivenName:firstName];

  lastName = [memberCopy lastName];
  [v5 setFamilyName:lastName];

  appleID = [memberCopy appleID];

  if (appleID)
  {
    v9 = [CNLabeledValue labeledValueWithLabel:CNLabelEmailiCloud value:appleID];
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    [v5 setEmailAddresses:v10];
  }

  [(NCBSTinkerMeCardViewController *)self _addSatellitePhoneNumberToContactIfNotPresent:v5];
  v11 = [v5 copy];

  return v11;
}

- (id)_updatedContactForFamilyMember:(id)member originalContact:(id)contact
{
  v5 = [contact mutableCopy];
  [(NCBSTinkerMeCardViewController *)self _addSatellitePhoneNumberToContactIfNotPresent:v5];
  v6 = [v5 copy];

  return v6;
}

- (void)_visitMeCard
{
  miniFlowDelegate = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
  familyMember = [miniFlowDelegate familyMember];

  v6 = NCBS_Tinker_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    familyMemberScopedContactStore = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
    *buf = 136446722;
    v29 = "[NCBSTinkerMeCardViewController _visitMeCard]";
    v30 = 2112;
    v31 = familyMemberScopedContactStore;
    v32 = 2112;
    v33 = familyMember;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - familyMemberScopedContactStore: %@, familyMember: %@", buf, 0x20u);
  }

  familyMemberScopedContactStore2 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
  v9 = +[CNContactViewController descriptorForRequiredKeys];
  v27 = v9;
  v10 = [NSArray arrayWithObjects:&v27 count:1];
  v26 = 0;
  v11 = [familyMemberScopedContactStore2 _ios_meContactWithKeysToFetch:v10 error:&v26];
  v12 = v26;

  v14 = NCBS_Tinker_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v29 = "[NCBSTinkerMeCardViewController _visitMeCard]";
    v30 = 2112;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s - _ios_meContactWithKeysToFetch result: %@, error: %{public}@", buf, 0x20u);
  }

  if (v11)
  {
    v15 = [(NCBSTinkerMeCardViewController *)self _updatedContactForFamilyMember:familyMember originalContact:v11];
    [CNContactViewController viewControllerForUpdatingContact:v15 withPropertiesFromContact:0];
  }

  else
  {
    v15 = [(NCBSTinkerMeCardViewController *)self _newMeContactForFamilyMember:familyMember];
    [CNContactViewController viewControllerForNewContact:v15];
  }
  v16 = ;

  familyMemberScopedContactStore3 = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
  [v16 setContactStore:familyMemberScopedContactStore3];

  [v16 setDisplayMode:2];
  [v16 setDelegate:self];
  v18 = +[CNUICoreFamilyMemberContactsController propertyKeysContainingSenstiveData];
  [v16 setProhibitedPropertyKeys:v18];

  v20 = NCBS_Tinker_log(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    prohibitedPropertyKeys = [v16 prohibitedPropertyKeys];
    *buf = 136446466;
    v29 = "[NCBSTinkerMeCardViewController _visitMeCard]";
    v30 = 2114;
    v31 = prohibitedPropertyKeys;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}s - prohibitedPropertyKeys: %{public}@", buf, 0x16u);
  }

  v22 = [[UINavigationController alloc] initWithRootViewController:v16];
  view = [(NCBSTinkerMeCardViewController *)self view];
  tintColor = [view tintColor];
  view2 = [v22 view];
  [view2 setTintColor:tintColor];

  [(NCBSTinkerMeCardViewController *)self presentViewController:v22 animated:1 completion:0];
}

- (void)_setFamilyMemberMeContact:(id)contact
{
  contactCopy = contact;
  familyMemberScopedContactStore = [(NCBSTinkerMeCardViewController *)self familyMemberScopedContactStore];
  v10 = 0;
  v6 = [familyMemberScopedContactStore setMeContact:contactCopy error:&v10];
  v7 = v10;

  self->_hasMeCard |= v6;
  v9 = NCBS_Tinker_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v12 = "[NCBSTinkerMeCardViewController _setFamilyMemberMeContact:]";
    v13 = 1024;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    v17 = 2112;
    v18 = contactCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - setMeContact result: %d, error: %{public}@, contact: %@", buf, 0x26u);
  }
}

- (void)_addFamilyMemberContactToGuardianStore:(id)store
{
  storeCopy = store;
  copyWithDistinctIdentifier = [storeCopy copyWithDistinctIdentifier];
  v5 = objc_alloc_init(CNSaveRequest);
  v6 = [copyWithDistinctIdentifier mutableCopy];
  [v5 addContact:v6 toContainerWithIdentifier:0];

  v7 = objc_alloc_init(CNContactStore);
  v12 = 0;
  v8 = [v7 executeSaveRequest:v5 error:&v12];
  v9 = v12;
  v10 = NCBS_Tinker_log(v9);
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v14 = "[NCBSTinkerMeCardViewController _addFamilyMemberContactToGuardianStore:]";
      v15 = 2112;
      v16 = copyWithDistinctIdentifier;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}s - saved, contact: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v14 = "[NCBSTinkerMeCardViewController _addFamilyMemberContactToGuardianStore:]";
    v15 = 2114;
    v16 = v9;
    v17 = 2112;
    v18 = storeCopy;
    v19 = 2112;
    v20 = copyWithDistinctIdentifier;
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%{public}s - save failed, error: %{public}@, contact in: %@, contact to save: %@", buf, 0x2Au);
  }
}

- (id)_activeSatellitePhoneNumber
{
  v2 = +[NPHCellularBridgeUIManager sharedInstance];
  selectedCellularPlan = [v2 selectedCellularPlan];
  phoneNumber = [selectedCellularPlan phoneNumber];

  v6 = NCBS_Tinker_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[NCBSTinkerMeCardViewController _activeSatellitePhoneNumber]";
    v10 = 2112;
    v11 = phoneNumber;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - phoneNumber:%@", &v8, 0x16u);
  }

  return phoneNumber;
}

- (BOOL)_addSatellitePhoneNumberToContactIfNotPresent:(id)present
{
  presentCopy = present;
  _activeSatellitePhoneNumber = [(NCBSTinkerMeCardViewController *)self _activeSatellitePhoneNumber];
  if ([_activeSatellitePhoneNumber length])
  {
    v6 = [CNPhoneNumber phoneNumberWithStringValue:_activeSatellitePhoneNumber];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    phoneNumbers = [presentCopy phoneNumbers];
    v8 = [phoneNumbers countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          value = [v12 value];
          v14 = [value isLikePhoneNumber:v6];

          if (v14)
          {
            v18 = NCBS_Tinker_log(v15);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              value2 = [v12 value];
              *buf = 136446722;
              v29 = "[NCBSTinkerMeCardViewController _addSatellitePhoneNumberToContactIfNotPresent:]";
              v30 = 2112;
              v31 = value2;
              v32 = 2112;
              v33 = presentCopy;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s - contact already has device number:%@; contact: %@", buf, 0x20u);
            }

            goto LABEL_17;
          }
        }

        v9 = [phoneNumbers countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    phoneNumbers2 = [presentCopy phoneNumbers];
    if (phoneNumbers2)
    {
      phoneNumbers3 = [presentCopy phoneNumbers];
      phoneNumbers = [phoneNumbers3 mutableCopy];
    }

    else
    {
      phoneNumbers = +[NSMutableArray array];
    }

    v20 = [CNLabeledValue labeledValueWithLabel:CNLabelPhoneNumberAppleWatch value:v6];
    [phoneNumbers addObject:v20];

    v21 = [phoneNumbers copy];
    [presentCopy setPhoneNumbers:v21];

    v18 = NCBS_Tinker_log(v22);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v29 = "[NCBSTinkerMeCardViewController _addSatellitePhoneNumberToContactIfNotPresent:]";
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = presentCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}s - added device number:%@; contact: %@", buf, 0x20u);
    }

LABEL_17:
  }

  return 0;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  v6 = [(NCBSTinkerMeCardViewController *)self dismissViewControllerAnimated:1 completion:0];
  if (contactCopy)
  {
    [(NCBSTinkerMeCardViewController *)self _setFamilyMemberMeContact:contactCopy];
    [(NCBSTinkerMeCardViewController *)self _addFamilyMemberContactToGuardianStore:contactCopy];
    miniFlowDelegate = [(NCBSTinkerMeCardViewController *)self miniFlowDelegate];
    [miniFlowDelegate miniFlowStepComplete:self];
  }

  else
  {
    v8 = NCBS_Tinker_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = "[NCBSTinkerMeCardViewController contactViewController:didCompleteWithContact:]";
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