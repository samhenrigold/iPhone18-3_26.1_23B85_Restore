@interface ScheduleSettingsStyleController
- (id)notAvailableText;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accountsChanged;
- (void)_reloadFoldersAndSpecifiersForced:(BOOL)forced;
- (void)dealloc;
- (void)listItemSelected:(id)selected;
- (void)reloadFolders;
- (void)setPushStateForMailbox:(id)mailbox state:(BOOL)state;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ScheduleSettingsStyleController

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = ScheduleSettingsStyleController;
  [(PSListItemsController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_isExchangeAccount)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _DAFoldersThatExternalClientsCareAboutChanged, @"ASAccountFoldersThatExternalClientsCareAboutExternallyChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, self, _DAFolderHierarchyChanged, @"ASAccountFolderHierarchyExternallyChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountsChanged name:*MEMORY[0x277CB8B78] object:0];
  v8.receiver = self;
  v8.super_class = ScheduleSettingsStyleController;
  [(PSListItemsController *)&v8 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (self->_isExchangeAccount)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"ASAccountFoldersThatExternalClientsCareAboutExternallyChangedNotification", 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v6, self, @"ASAccountFolderHierarchyExternallyChangedNotification", 0);
  }

  v7.receiver = self;
  v7.super_class = ScheduleSettingsStyleController;
  [(PSListItemsController *)&v7 viewWillDisappear:disappearCopy];
}

- (id)specifiers
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v2)
  {
    v31 = *MEMORY[0x277D3FC48];
    v41.receiver = self;
    v41.super_class = ScheduleSettingsStyleController;
    v2 = [-[PSListItemsController specifiers](&v41 specifiers)];
    v4 = [-[ScheduleSettingsStyleController specifier](self "specifier")];

    v5 = [v4 objectForKey:@"ScheduleSettingsAccountKey"];
    self->_account = v5;
    identifier = [(ACAccountType *)[(ACAccount *)v5 accountType] identifier];
    self->_isExchangeAccount = [(NSString *)identifier isEqualToString:*MEMORY[0x277CB8C00]];

    self->_mailAccountUniqueId = 0;
    v7 = [v4 objectForKey:@"ScheduleSettingsAccountUniqueIdentifierKey"];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    mailAccounts = [MEMORY[0x277D28280] mailAccounts];
    v9 = [mailAccounts countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(mailAccounts);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          if ([objc_msgSend(v13 "uniqueIdForPersistentConnection")])
          {
            self->_mailAccountUniqueId = [v13 uniqueID];
            self->_supportsUserPushedMailboxes = [v13 supportsUserPushedMailboxes];
            goto LABEL_12;
          }
        }

        v10 = [mailAccounts countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v14 = [v2 objectAtIndex:0];
    [v14 setName:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SELECT_SCHEDULE", &stru_284EEC2E8, @"ScheduleSettings"}];
    notAvailableText = [(ScheduleSettingsStyleController *)self notAvailableText];
    if (notAvailableText)
    {
      v16 = notAvailableText;
      [v14 setProperty:notAvailableText forKey:*MEMORY[0x277D3FF88]];
      if ([v16 _isNaturallyRTL])
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithInt:v17];
      [v14 setProperty:v18 forKey:*MEMORY[0x277D3FF40]];
      v19 = [MEMORY[0x277CCABB0] numberWithInt:v17];
      [v14 setProperty:v19 forKey:*MEMORY[0x277D3FD78]];
    }

    selfCopy = self;
    if ([(ScheduleSettingsStyleController *)self shouldShowMailboxes])
    {
      mailboxInfos = self->_mailboxInfos;
      if (!mailboxInfos)
      {
        [(ScheduleSettingsStyleController *)self reloadFolders];
        mailboxInfos = self->_mailboxInfos;
      }

      if ([(NSArray *)mailboxInfos count])
      {
        [v2 addObject:{objc_msgSend(MEMORY[0x277D3FAD8], "groupSpecifierWithName:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PUSHED_MAILBOXES", &stru_284EEC2E8, @"ScheduleSettings"}];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = self->_mailboxInfos;
        v22 = [(NSArray *)v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v34;
          v25 = *MEMORY[0x277D25820];
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v33 + 1) + 8 * j);
              v28 = [v27 objectForKey:v25];
              v29 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:13 edit:0];
              [v29 setProperty:v27 forKey:@"mailbox"];
              [v2 addObject:v29];
            }

            v23 = [(NSArray *)v21 countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v23);
        }
      }
    }

    *(&selfCopy->super.super.super.super.super.super.isa + v31) = v2;
  }

  return v2;
}

- (void)reloadFolders
{
  v8[5] = *MEMORY[0x277D85DE8];

  self->_mailboxInfos = 0;
  self->_monitored = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = *MEMORY[0x277D25838];
  v8[0] = *MEMORY[0x277D25820];
  v8[1] = v3;
  v4 = *MEMORY[0x277D25830];
  v8[2] = *MEMORY[0x277D25828];
  v8[3] = v4;
  v8[4] = *MEMORY[0x277D25840];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  mailAccountUniqueId = self->_mailAccountUniqueId;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ScheduleSettingsStyleController_reloadFolders__block_invoke;
  v7[3] = &unk_278BB4680;
  v7[4] = self;
  [MEMORY[0x277D25848] mailboxListingForAccountWithUniqueIdentifier:mailAccountUniqueId keys:v5 completionBlock:v7];
}

void *__48__ScheduleSettingsStyleController_reloadFolders__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1504) = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(a1 + 32) + 1504);
  result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    v7 = *MEMORY[0x277D25830];
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([objc_msgSend(v9 objectForKey:{v7), "BOOLValue"}])
        {
          [*(*(a1 + 32) + 1512) addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (id)notAvailableText
{
  v3 = [objc_msgSend(-[ScheduleSettingsStyleController specifier](self "specifier")];
  v4 = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FD08]) styleForAccount:self->_account uniqueIdentifier:v3];
  if (v4)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v5 = @"WHEN_FETCH_NOT_AVAILABLE";
  }

  else
  {
    v5 = @"WHEN_PUSH_NOT_AVAILABLE";
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v6 localizedStringForKey:v5 value:&stru_284EEC2E8 table:@"ScheduleSettings"];
}

- (void)listItemSelected:(id)selected
{
  v4.receiver = self;
  v4.super_class = ScheduleSettingsStyleController;
  [(PSListItemsController *)&v4 listItemSelected:selected];
  [-[ScheduleSettingsStyleController table](self "table")];
  [(ScheduleSettingsStyleController *)self reloadSpecifiers];
}

- (void)setPushStateForMailbox:(id)mailbox state:(BOOL)state
{
  stateCopy = state;
  self->_ignoringNotifications = 1;
  v6 = [mailbox objectForKey:*MEMORY[0x277D25840]];
  [MEMORY[0x277D25848] setPushStateForMailboxWithPath:v6 account:self->_mailAccountUniqueId pushState:stateCopy error:0];
  v7 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ScheduleSettingsStyleController_setPushStateForMailbox_state___block_invoke;
  block[3] = &unk_278BB4638;
  block[4] = self;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

- (void)_reloadFoldersAndSpecifiersForced:(BOOL)forced
{
  if (!self->_ignoringNotifications)
  {
    if ([MEMORY[0x277D28280] accountWithUniqueId:self->_mailAccountUniqueId])
    {
      v6 = self->_monitored;
      [(ScheduleSettingsStyleController *)self reloadFolders];
      if (forced || ([(NSMutableSet *)self->_monitored isEqualToSet:v6]& 1) == 0)
      {
        [(ScheduleSettingsStyleController *)self reloadSpecifiers];
      }
    }

    else
    {
      navigationController = [(ScheduleSettingsStyleController *)self navigationController];

      [navigationController popViewControllerAnimated:1];
    }
  }
}

- (void)_accountsChanged
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadFoldersAndSpecifiers object:0];

  [(ScheduleSettingsStyleController *)self performSelector:sel__reloadFoldersAndSpecifiers withObject:0 afterDelay:0.1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7 = [(ScheduleSettingsStyleController *)self indexForIndexPath:path];
  v8 = [objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{v7), "propertyForKey:", @"mailbox"}];
  if (v8)
  {
    v9 = v8;
    v10 = [view dequeueReusableCellWithIdentifier:@"PushedMailboxTableCell"];
    if (!v10)
    {
      v10 = [[PushedMailboxTableCell alloc] initWithStyle:0 reuseIdentifier:@"PushedMailboxTableCell"];
    }

    v11 = [objc_msgSend(v9 objectForKey:{*MEMORY[0x277D25838]), "integerValue"}];
    [(PushedMailboxTableCell *)v10 setType:v11];
    -[PushedMailboxTableCell setLevel:](v10, "setLevel:", [objc_msgSend(v9 objectForKey:{*MEMORY[0x277D25828]), "intValue"}]);
    -[PushedMailboxTableCell setMailboxName:](v10, "setMailboxName:", [v9 objectForKey:*MEMORY[0x277D25820]]);
    [(PushedMailboxTableCell *)v10 setEnabled:v11 << 32 != 0x700000000];
    [(PushedMailboxTableCell *)v10 setChecked:[(NSMutableSet *)self->_monitored containsObject:v9]];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ScheduleSettingsStyleController;
    return [(PSListItemsController *)&v13 tableView:view cellForRowAtIndexPath:path];
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7 = [(ScheduleSettingsStyleController *)self indexForIndexPath:path];
  v8 = [objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) objectAtIndex:{v7), "propertyForKey:", @"mailbox"}];
  if (v8)
  {
    v9 = v8;
    v10 = [view cellForRowAtIndexPath:path];
    [view deselectRowAtIndexPath:path animated:1];
    v11 = [v10 isChecked] ^ 1;
    [v10 setChecked:v11];
    monitored = self->_monitored;
    if (v11)
    {
      [(NSMutableSet *)monitored addObject:v9];
    }

    else
    {
      [(NSMutableSet *)monitored removeObject:v9];
    }

    [(ScheduleSettingsStyleController *)self setPushStateForMailbox:v9 state:v11];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ScheduleSettingsStyleController;
    [(PSListItemsController *)&v13 tableView:view didSelectRowAtIndexPath:path];
  }
}

@end