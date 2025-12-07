@interface FASuggestionsTableViewDecorator
+ (BOOL)shouldShowSuggestionsInPage:(id)page;
- (FASuggestionsTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView pictureStore:(id)store recommendations:(id)recommendations proactiveModelUsed:(int64_t)used emergencyContacts:(id)contacts context:(id)context viewController:(id)self0 suggester:(id)self1 objectModel:(id)self2;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)accessoryViewFor:(id)for;
- (id)indexFor:(id)for;
- (id)indexForSuggestionsSection;
- (id)inviteButtonForSuggestion;
- (id)inviteSentImageForSuggestion;
- (id)relationForContact:(id)contact;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didTapInviteButtonInCell:(id)cell;
- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error;
- (void)sendSuggestionFeedbackFor:(id)for;
- (void)setupInviteConfiguratioControllerFor:(int64_t)for contactHandle:(id)handle;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSuggestionCellFor:(id)for;
@end

@implementation FASuggestionsTableViewDecorator

- (FASuggestionsTableViewDecorator)initWithTableView:(id)view ruiTableView:(id)tableView pictureStore:(id)store recommendations:(id)recommendations proactiveModelUsed:(int64_t)used emergencyContacts:(id)contacts context:(id)context viewController:(id)self0 suggester:(id)self1 objectModel:(id)self2
{
  tableViewCopy = tableView;
  storeCopy = store;
  recommendationsCopy = recommendations;
  contactsCopy = contacts;
  contextCopy = context;
  controllerCopy = controller;
  suggesterCopy = suggester;
  modelCopy = model;
  v34.receiver = self;
  v34.super_class = FASuggestionsTableViewDecorator;
  v18 = [(FATableViewDecorator *)&v34 initWithTableView:view];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_familySuggestionsPictureStore, store);
    objc_storeStrong(&v19->_remoteTableViewController, tableView);
    objc_storeStrong(&v19->_recommendedFamilyMembers, recommendations);
    v19->_proactiveModelUsedToDeriveRecommendations = used;
    objc_storeStrong(&v19->_emergencyContacts, contacts);
    objc_storeStrong(&v19->_context, context);
    objc_storeStrong(&v19->_viewController, controller);
    objc_storeStrong(&v19->_suggester, suggester);
    v20 = objc_alloc_init(MEMORY[0x277CBEB98]);
    invitedHandles = v19->_invitedHandles;
    v19->_invitedHandles = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    contactStore = v19->_contactStore;
    v19->_contactStore = v22;

    objc_storeStrong(&v19->_objectModel, model);
  }

  return v19;
}

+ (BOOL)shouldShowSuggestionsInPage:(id)page
{
  v20 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if ([pageCopy hasTableView])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    tableViewOM = [pageCopy tableViewOM];
    sections = [tableViewOM sections];

    v6 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(sections);
          }

          attributes = [*(*(&v15 + 1) + 8 * i) attributes];
          v11 = [attributes objectForKeyedSubscript:@"familyAction"];
          v12 = [v11 isEqual:@"InjectFamilySuggestionsView"];

          if (v12)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }

        v7 = [sections countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_13:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)accessoryViewFor:(id)for
{
  forCopy = for;
  v5 = _IDSCopyIDForEmailAddress();
  v6 = [v5 stringByReplacingOccurrencesOfString:@"mailto:" withString:&stru_282D9AA68];

  v7 = _IDSCopyIDForPhoneNumberWithOptions();
  v8 = [v7 stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_282D9AA68];

  if ([(NSSet *)self->_invitedHandles containsObject:v6]|| [(NSSet *)self->_invitedHandles containsObject:v8])
  {
    inviteSentImageForSuggestion = [(FASuggestionsTableViewDecorator *)self inviteSentImageForSuggestion];
  }

  else
  {
    inviteSentImageForSuggestion = [(FASuggestionsTableViewDecorator *)self inviteButtonForSuggestion];
  }

  v10 = inviteSentImageForSuggestion;

  return v10;
}

- (id)indexForSuggestionsSection
{
  sections = [(RUITableView *)self->_remoteTableViewController sections];
  v4 = [sections count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      sections2 = [(RUITableView *)self->_remoteTableViewController sections];
      v7 = [sections2 objectAtIndex:v5];

      attributes = [v7 attributes];
      v9 = [attributes objectForKeyedSubscript:@"familyAction"];
      v10 = [v9 isEqual:@"InjectFamilySuggestionsView"];

      if (v10)
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  return v11;
}

- (id)indexFor:(id)for
{
  forCopy = for;
  v19 = [(NSArray *)self->_recommendedFamilyMembers count];
  if (v19)
  {
    v3 = 0;
    while (1)
    {
      v4 = [(NSArray *)self->_recommendedFamilyMembers objectAtIndex:v3];
      v5 = _IDSCopyIDForEmailAddress();
      v6 = [v5 stringByReplacingOccurrencesOfString:@"mailto:" withString:&stru_282D9AA68];

      v7 = _IDSCopyIDForPhoneNumberWithOptions();
      v8 = [v7 stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_282D9AA68];

      iMessageHandle = [v4 iMessageHandle];
      v10 = _IDSCopyIDForEmailAddress();
      v11 = [v10 stringByReplacingOccurrencesOfString:@"mailto:" withString:&stru_282D9AA68];

      iMessageHandle2 = [v4 iMessageHandle];
      v13 = _IDSCopyIDForPhoneNumberWithOptions();
      v14 = [v13 stringByReplacingOccurrencesOfString:@"tel:" withString:&stru_282D9AA68];

      if (([v11 isEqual:v6] & 1) != 0 || objc_msgSend(v14, "isEqual:", v8))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) == 0)
      {
        break;
      }

      if (v19 == ++v3)
      {
        goto LABEL_9;
      }
    }

    v16 = v18;
  }

  else
  {
LABEL_9:
    v16 = 0;
  }

  return v16;
}

- (id)inviteButtonForSuggestion
{
  filledButtonConfiguration = [MEMORY[0x277D75230] filledButtonConfiguration];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [filledButtonConfiguration setBaseBackgroundColor:systemBlueColor];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [filledButtonConfiguration setBaseForegroundColor:whiteColor];

  [filledButtonConfiguration setButtonSize:0];
  [filledButtonConfiguration setCornerStyle:4];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D750C8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"INVITE_BUTTON_TITLE" value:&stru_282D9AA68 table:@"Localizable"];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __60__FASuggestionsTableViewDecorator_inviteButtonForSuggestion__block_invoke;
  v15 = &unk_2782F2A88;
  objc_copyWeak(&v16, &location);
  v9 = [v6 actionWithTitle:v8 image:0 identifier:0 handler:&v12];

  v10 = [MEMORY[0x277D75220] buttonWithConfiguration:filledButtonConfiguration primaryAction:{v9, v12, v13, v14, v15}];
  [v10 sizeToFit];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

void __60__FASuggestionsTableViewDecorator_inviteButtonForSuggestion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained didTapInviteButtonInCell:v4];
}

- (id)inviteSentImageForSuggestion
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:22.0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle" withConfiguration:v2];
  v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v3];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v4 setTintColor:systemGrayColor];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(RUITableView *)self->_remoteTableViewController sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  attributes = [v9 attributes];
  v11 = [attributes objectForKeyedSubscript:@"familyAction"];
  v12 = [v11 isEqual:@"InjectFamilySuggestionsView"];

  if (v12)
  {
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"suggestionCell"];
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"suggestionCell"];
    }

    v14 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [pathCopy row]);
    contact = [v14 contact];

    v16 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [pathCopy row]);
    iMessageHandle = [v16 iMessageHandle];

    v18 = [(FASuggestionsTableViewDecorator *)self accessoryViewFor:iMessageHandle];
    [v13 setAccessoryView:v18];

    v19 = [pathCopy row];
    accessoryView = [v13 accessoryView];
    [accessoryView setTag:v19];

    v21 = [MEMORY[0x277CBDA78] stringFromContact:contact style:0];
    textLabel = [v13 textLabel];
    [textLabel setText:v21];

    v23 = [(FASuggestionsTableViewDecorator *)self relationForContact:contact];
    detailTextLabel = [v13 detailTextLabel];
    [detailTextLabel setText:v23];

    v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    detailTextLabel2 = [v13 detailTextLabel];
    [detailTextLabel2 setFont:v25];

    familySuggestionsPictureStore = self->_familySuggestionsPictureStore;
    v28 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [pathCopy row]);
    v29 = [(FAProfilePictureStore *)familySuggestionsPictureStore profilePictureForRecommendedFamilyMember:v28];

    if (v29)
    {
      v30 = MEMORY[0x277D755B8];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v32 = [v30 imageWithData:v29 scale:?];
      imageView = [v13 imageView];
      [imageView setImage:v32];

      imageView2 = [v13 imageView];
      [imageView2 setContentMode:4];
    }
  }

  else
  {
    contact = [(FATableViewDecorator *)self dataSource];
    v13 = [contact tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(RUITableView *)self->_remoteTableViewController sections];
  v8 = [sections objectAtIndexedSubscript:section];

  attributes = [v8 attributes];
  v10 = [attributes objectForKeyedSubscript:@"familyAction"];
  v11 = [v10 isEqual:@"InjectFamilySuggestionsView"];

  if (v11)
  {
    v12 = [(NSArray *)self->_recommendedFamilyMembers count];
  }

  else
  {
    dataSource = [(FATableViewDecorator *)self dataSource];
    v12 = [dataSource tableView:viewCopy numberOfRowsInSection:section];
  }

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(RUITableView *)self->_remoteTableViewController sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  attributes = [v9 attributes];
  v11 = [attributes objectForKeyedSubscript:@"familyAction"];
  v12 = [v11 isEqual:@"InjectFamilySuggestionsView"];

  if (v12)
  {
    v13 = *MEMORY[0x277D76F30];
  }

  else
  {
    delegate = [(FATableViewDecorator *)self delegate];
    [delegate tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v13 = v15;
  }

  return v13;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  remoteTableViewController = self->_remoteTableViewController;
  pathCopy = path;
  sections = [(RUITableView *)remoteTableViewController sections];
  section = [pathCopy section];

  v11 = [sections objectAtIndexedSubscript:section];

  attributes = [v11 attributes];
  v13 = [attributes objectForKeyedSubscript:@"familyAction"];
  v14 = [v13 isEqual:@"InjectFamilySuggestionsView"];

  if (v14)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    detailTextLabel = [cellCopy detailTextLabel];
    [detailTextLabel setTextColor:secondaryLabelColor];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [cellCopy setBackgroundColor:secondarySystemBackgroundColor];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  sections = [(RUITableView *)self->_remoteTableViewController sections];
  v8 = [sections objectAtIndex:section];

  attributes = [v8 attributes];
  v10 = [attributes objectForKeyedSubscript:@"familyAction"];
  if ([v10 isEqual:@"InjectFamilySuggestionsView"])
  {
    v11 = [(NSArray *)self->_recommendedFamilyMembers count];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  dataSource = [(FATableViewDecorator *)self dataSource];
  v12 = [dataSource tableView:viewCopy titleForHeaderInSection:section];

  v14 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FamilyCircle"];
  if ([v14 BOOLForKey:@"DebugMegadome"] && objc_msgSend(v12, "length"))
  {
    proactiveModelUsedToDeriveRecommendations = self->_proactiveModelUsedToDeriveRecommendations;
    v16 = @"Unknown";
    if (proactiveModelUsedToDeriveRecommendations == 3)
    {
      v16 = @"Megadome";
    }

    if (proactiveModelUsedToDeriveRecommendations == 2)
    {
      v17 = @"PeopleSuggester";
    }

    else
    {
      v17 = v16;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Model: %@)", v12, v17];

    v12 = v18;
  }

LABEL_14:

  return v12;
}

- (id)relationForContact:(id)contact
{
  v60 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = self->_emergencyContacts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        nameContactIdentifier = [v10 nameContactIdentifier];
        identifier = [contactCopy identifier];
        v13 = [nameContactIdentifier isEqual:identifier];

        if (v13)
        {
          v37 = _FALogSystem(v14);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            relationship = [v10 relationship];
            *buf = 138412290;
            v58 = relationship;
            _os_log_impl(&dword_21BB35000, v37, OS_LOG_TYPE_DEFAULT, "contact relation from emergency contacts  %@", buf, 0xCu);
          }

          v39 = MEMORY[0x277CBDB20];
          relationship2 = [v10 relationship];
          v41 = [v39 localizedStringForLabel:relationship2];

          if (v41)
          {
            localizedCapitalizedString = [v41 localizedCapitalizedString];
          }

          else
          {
            relationship3 = [v10 relationship];
            localizedCapitalizedString = [relationship3 localizedCapitalizedString];
          }

          goto LABEL_28;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  contactStore = self->_contactStore;
  v16 = *MEMORY[0x277CBD000];
  v56[0] = *MEMORY[0x277CBD018];
  v56[1] = v16;
  v17 = *MEMORY[0x277CBCFF8];
  v56[2] = *MEMORY[0x277CBD058];
  v56[3] = v17;
  v18 = *MEMORY[0x277CBD098];
  v56[4] = *MEMORY[0x277CBCFC0];
  v56[5] = v18;
  v56[6] = *MEMORY[0x277CBD120];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:7];
  v50 = 0;
  v20 = [(CNContactStore *)contactStore _ios_meContactWithKeysToFetch:v19 error:&v50];
  v45 = v50;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = v20;
  contactRelations = [v20 contactRelations];
  v22 = [contactRelations countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(contactRelations);
        }

        v26 = *(*(&v46 + 1) + 8 * j);
        value = [v26 value];
        name = [value name];
        v29 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:0];
        v30 = [name isEqualToString:v29];

        if (v30)
        {
          v32 = _FALogSystem(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = value;
            _os_log_impl(&dword_21BB35000, v32, OS_LOG_TYPE_DEFAULT, "contact relation from contacts %@", buf, 0xCu);
          }

          v33 = MEMORY[0x277CBDB20];
          label = [v26 label];
          v35 = [v33 localizedStringForLabel:label];

          if (v35)
          {
            localizedCapitalizedString = [v35 localizedCapitalizedString];

            goto LABEL_26;
          }
        }
      }

      v23 = [contactRelations countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  contactRelations = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  localizedCapitalizedString = [contactRelations localizedStringForKey:@"FAMILY_SUGGESTION_DEFAULT_DETAIL_LABEL" value:&stru_282D9AA68 table:@"Localizable"];
LABEL_26:

  v41 = v44;
  v5 = v45;
LABEL_28:

  return localizedCapitalizedString;
}

- (void)didTapInviteButtonInCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [cellCopy tag]);
    iMessageHandle = [v4 iMessageHandle];

    v6 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
    [v6 sendTapInviteOnSuggestedContactEvent];

    [(FASuggestionsTableViewDecorator *)self setupInviteConfiguratioControllerFor:1 contactHandle:iMessageHandle];
  }
}

- (void)setupInviteConfiguratioControllerFor:(int64_t)for contactHandle:(id)handle
{
  handleCopy = handle;
  if (for == 2)
  {
    v12 = +[FAMailInviteConfigurationController isAvailable];
    if (v12)
    {
      v13 = [FAMailInviteConfigurationController alloc];
      context = self->_context;
      hostViewController = [(RemoteUIController *)self->_viewController hostViewController];
      v11 = [(FAMailInviteConfigurationController *)v13 initWithInviteContext:context presentingController:hostViewController email:handleCopy];
      goto LABEL_7;
    }

    v16 = _FALogSystem(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v17 = "Device cannot send emails";
      v18 = &v19;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (for == 1)
  {
    v7 = +[FAMessagesInviteConfigurationController isAvailable];
    if (v7)
    {
      v8 = [FAMessagesInviteConfigurationController alloc];
      v9 = self->_context;
      hostViewController = [(RemoteUIController *)self->_viewController hostViewController];
      v11 = [(FAMessagesInviteConfigurationController *)v8 initWithInviteContext:v9 presentingController:hostViewController familySuggestionHandle:handleCopy];
LABEL_7:
      inviteConfigurationController = self->_inviteConfigurationController;
      self->_inviteConfigurationController = v11;

      goto LABEL_14;
    }

    v16 = _FALogSystem(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v17 = "Device cannot send messages";
      v18 = &v20;
LABEL_12:
      _os_log_impl(&dword_21BB35000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

LABEL_14:
  [(FAInviteConfigurationController *)self->_inviteConfigurationController setDelegate:self, v19];
  [(FAInviteConfigurationController *)self->_inviteConfigurationController presentWhenReadyWithCompletion:&__block_literal_global_1];
}

- (void)inviteController:(id)controller didFinishWithStatus:(unint64_t)status recipients:(id)recipients userInfo:(id)info error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  v10 = _FALogSystem(recipientsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    statusCopy = status;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "FASuggestions Controller did finish with status: %lu", buf, 0xCu);
  }

  v11 = +[_TtC14FamilyCircleUI21FamilyInviteAnalytics shared];
  [v11 sendSuggestedContactInvitedEventWithInviteCompletionStatus:status];

  if (status == 1)
  {
    v12 = objc_alloc_init(MEMORY[0x277D082A8]);
    [v12 setStatus:1];
    [v12 setTransportType:1];
    [v12 setRecipients:recipientsCopy];
    serverReadableDictionary = [v12 serverReadableDictionary];
    v14 = [serverReadableDictionary mutableCopy];

    inviteURL = [(FAInviteContext *)self->_context inviteURL];
    absoluteString = [inviteURL absoluteString];
    [v14 setObject:absoluteString forKey:@"inviteUrl"];

    serverInfo = [(RUIObjectModel *)self->_objectModel serverInfo];
    [v14 addEntriesFromDictionary:serverInfo];

    v27 = 0;
    v18 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:100 options:0 error:&v27];
    v19 = v27;
    v20 = v19;
    if (v18)
    {
      viewController = self->_viewController;
      reportInviteeDetailsUrl = [(FAInviteContext *)self->_context reportInviteeDetailsUrl];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __98__FASuggestionsTableViewDecorator_inviteController_didFinishWithStatus_recipients_userInfo_error___block_invoke;
      v24[3] = &unk_2782F2AD0;
      v25 = recipientsCopy;
      selfCopy = self;
      [(RemoteUIController *)viewController loadURL:reportInviteeDetailsUrl postBody:v18 completion:v24];

      v23 = v25;
    }

    else
    {
      v23 = _FALogSystem(v19);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        statusCopy = v20;
        _os_log_impl(&dword_21BB35000, v23, OS_LOG_TYPE_DEFAULT, "Couldn't serialize FAInviteCompletionInfo with error: %@", buf, 0xCu);
      }
    }
  }
}

void __98__FASuggestionsTableViewDecorator_inviteController_didFinishWithStatus_recipients_userInfo_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _FALogSystem(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "successfully sent pending invite info to server for  %@", &v10, 0xCu);
    }

    [*(a1 + 40) updateSuggestionCellFor:*(a1 + 32)];
    [*(a1 + 40) sendSuggestionFeedbackFor:*(a1 + 32)];
  }

  else
  {
    if (v7)
    {
      v9 = [v5 localizedDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "Error sending invite info to server %@", &v10, 0xCu);
    }
  }
}

- (void)updateSuggestionCellFor:(id)for
{
  forCopy = for;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__FASuggestionsTableViewDecorator_updateSuggestionCellFor___block_invoke;
  v6[3] = &unk_2782F2AF8;
  v6[4] = self;
  v7 = forCopy;
  v5 = forCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __59__FASuggestionsTableViewDecorator_updateSuggestionCellFor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) setByAddingObjectsFromArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) firstObject];
  v12 = [v5 indexFor:v6];

  v7 = [*(a1 + 32) indexForSuggestionsSection];
  if (v12)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v12 inSection:{"intValue"), objc_msgSend(v7, "intValue")}];
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v9, 0}];
    v11 = [*(a1 + 32) tableView];
    [v11 reloadRowsAtIndexPaths:v10 withRowAnimation:5];
  }
}

- (void)sendSuggestionFeedbackFor:(id)for
{
  v79 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v60 = objc_alloc_init(MEMORY[0x277D3A0E0]);
  v57 = forCopy;
  firstObject = [forCopy firstObject];
  v59 = [(FASuggestionsTableViewDecorator *)self indexFor:firstObject];

  v5 = -[NSArray objectAtIndexedSubscript:](self->_recommendedFamilyMembers, "objectAtIndexedSubscript:", [v59 intValue]);
  megadomeAdoption = [MEMORY[0x277D08258] megadomeAdoption];
  if (![megadomeAdoption isEnabled])
  {
    goto LABEL_4;
  }

  megadomeKillSwitch = [MEMORY[0x277D08300] megadomeKillSwitch];
  if ([megadomeKillSwitch isEnabledWithForceRefresh:1])
  {

LABEL_4:
    goto LABEL_5;
  }

  feedbackContext = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  megadomeFeedbackEventId = [feedbackContext megadomeFeedbackEventId];

  if (megadomeFeedbackEventId != -1)
  {
    v39 = _FALogSystem(v8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v39, OS_LOG_TYPE_DEFAULT, "Submitting feedback to Megadome for suggestion tap", buf, 2u);
    }

    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v40 = getGDPersonEntityTagEventIDSetClass_softClass;
    v77 = getGDPersonEntityTagEventIDSetClass_softClass;
    if (!getGDPersonEntityTagEventIDSetClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getGDPersonEntityTagEventIDSetClass_block_invoke;
      v72 = &unk_2782F2988;
      v73 = &v74;
      __getGDPersonEntityTagEventIDSetClass_block_invoke(buf);
      v40 = v75[3];
    }

    v41 = v40;
    _Block_object_dispose(&v74, 8);
    v42 = [v40 alloc];
    feedbackContext2 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
    v58 = [v42 initWithEventId:{objc_msgSend(feedbackContext2, "megadomeFeedbackEventId")}];

    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v44 = getGDPersonEntityTaggingStatefulFeedbackClass_softClass;
    v77 = getGDPersonEntityTaggingStatefulFeedbackClass_softClass;
    if (!getGDPersonEntityTaggingStatefulFeedbackClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke;
      v72 = &unk_2782F2988;
      v73 = &v74;
      __getGDPersonEntityTaggingStatefulFeedbackClass_block_invoke(buf);
      v44 = v75[3];
    }

    v45 = v44;
    _Block_object_dispose(&v74, 8);
    v62 = [[v44 alloc] initWithStatefulFeedbackType:2 eventIds:v58];
    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v46 = getGDConfigurationClass_softClass;
    v77 = getGDConfigurationClass_softClass;
    if (!getGDConfigurationClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getGDConfigurationClass_block_invoke;
      v72 = &unk_2782F2988;
      v73 = &v74;
      __getGDConfigurationClass_block_invoke(buf);
      v46 = v75[3];
    }

    v47 = v46;
    _Block_object_dispose(&v74, 8);
    suggesterWithDaemon = objc_alloc_init(v46);
    v74 = 0;
    v75 = &v74;
    v76 = 0x2050000000;
    v48 = getGDEntityTaggingServiceClass_softClass;
    v77 = getGDEntityTaggingServiceClass_softClass;
    if (!getGDEntityTaggingServiceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v70 = 3221225472;
      v71 = __getGDEntityTaggingServiceClass_block_invoke;
      v72 = &unk_2782F2988;
      v73 = &v74;
      __getGDEntityTaggingServiceClass_block_invoke(buf);
      v48 = v75[3];
    }

    v49 = v48;
    _Block_object_dispose(&v74, 8);
    v68 = 0;
    v50 = [[v48 alloc] initWithConfig:suggesterWithDaemon error:&v68];
    v51 = v68;
    v52 = v51;
    if (!v50)
    {
      v53 = _FALogSystem(v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [(FASuggestionsTableViewDecorator *)v52 sendSuggestionFeedbackFor:v53];
      }
    }

    v67 = 0;
    [v50 recordStatefulFeedback:v62 error:&v67];
    v54 = v67;
    v55 = v54;
    if (v54)
    {
      v56 = _FALogSystem(v54);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [(FASuggestionsTableViewDecorator *)v55 sendSuggestionFeedbackFor:v56];
      }
    }

    goto LABEL_18;
  }

LABEL_5:
  v9 = _FALogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Submitting feedback to PeopleSuggester for suggestion tap", buf, 2u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  feedbackContext3 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  peopleSuggesterSuggestions = [feedbackContext3 peopleSuggesterSuggestions];

  v12 = [peopleSuggesterSuggestions countByEnumeratingWithState:&v63 objects:v78 count:16];
  if (v12)
  {
    v13 = *v64;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(peopleSuggesterSuggestions);
        }

        v15 = *(*(&v63 + 1) + 8 * i);
        recipients = [v15 recipients];
        firstObject2 = [recipients firstObject];

        handle = [v5 handle];
        handle2 = [firstObject2 handle];
        v20 = [handle isEqual:handle2];

        if (v20)
        {
          v21 = v15;

          v60 = v21;
          goto LABEL_17;
        }
      }

      v12 = [peopleSuggesterSuggestions countByEnumeratingWithState:&v63 objects:v78 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v22 = objc_alloc(MEMORY[0x277D3A0A8]);
  bundleID = [v60 bundleID];
  v58 = [v22 initWithType:0 suggestion:v60 transportBundleID:bundleID];

  v24 = MEMORY[0x277D3A0A0];
  date = [MEMORY[0x277CBEAA8] date];
  feedbackContext4 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  peopleSuggesterPredictionContext = [feedbackContext4 peopleSuggesterPredictionContext];
  suggestionDate = [peopleSuggesterPredictionContext suggestionDate];
  [date timeIntervalSinceDate:suggestionDate];
  v30 = v29;
  feedbackContext5 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  peopleSuggesterPredictionContext2 = [feedbackContext5 peopleSuggesterPredictionContext];
  feedbackContext6 = [(FAInviteSuggestions *)self->_suggester feedbackContext];
  peopleSuggesterSuggestions2 = [feedbackContext6 peopleSuggesterSuggestions];
  *&v35 = [(NSArray *)self->_recommendedFamilyMembers count];
  v62 = [v24 feedbackForAction:v58 delay:peopleSuggesterPredictionContext2 context:peopleSuggesterSuggestions2 suggestions:0 numberOfVisibleSuggestions:v30 sessionIdentifier:v35];

  suggesterWithDaemon = [MEMORY[0x277D3A0D0] suggesterWithDaemon];
  [suggesterWithDaemon provideFeedbackForSuggestions:v62];
LABEL_18:
}

- (void)sendSuggestionFeedbackFor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error initializing megadome entity tagging service while providing feedback: %@", &v2, 0xCu);
}

- (void)sendSuggestionFeedbackFor:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Error providing feedback to megadome: %@", &v2, 0xCu);
}

@end