@interface AAUIFMIPHeaderDeviceInfoPageSurrogate
- (AAUIFMIPHeaderDeviceInfoPageDelegate)delegate;
- (AAUIFMIPHeaderDeviceInfoPageSurrogate)initWithPage:(id)page device:(id)device appleAccount:(id)account;
- (BOOL)respondsToSelector:(SEL)selector;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_dateStringOfLatestBackup:(id)backup;
- (id)_footerForBackupRow;
- (id)backupForUDID:(id)d backupList:(id)list;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_addActivityIndicatorToCell:(id)cell;
- (void)_removeActivityIndicatorFromCell:(id)cell;
- (void)dealloc;
- (void)fetchBackupWithCompletion:(id)completion;
- (void)forwardInvocation:(id)invocation;
- (void)refreshBackupDetailText:(id)text;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateDetailLabelWithBackup:(id)backup;
@end

@implementation AAUIFMIPHeaderDeviceInfoPageSurrogate

- (AAUIFMIPHeaderDeviceInfoPageSurrogate)initWithPage:(id)page device:(id)device appleAccount:(id)account
{
  pageCopy = page;
  deviceCopy = device;
  accountCopy = account;
  v23.receiver = self;
  v23.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  v12 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    objc_storeStrong(&v13->_remoteUIPage, page);
    tableViewOM = [pageCopy tableViewOM];
    tableView = [tableViewOM tableView];
    remoteTableView = v13->_remoteTableView;
    v13->_remoteTableView = tableView;

    tableViewOM2 = [pageCopy tableViewOM];
    remoteTableViewController = v13->_remoteTableViewController;
    v13->_remoteTableViewController = tableViewOM2;

    objc_storeStrong(&v13->_appleAccount, account);
    [(UITableView *)v13->_remoteTableView setDataSource:v13];
    [(UITableView *)v13->_remoteTableView setDelegate:v13];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.appleaccount.backup_list", v19);
    backupListQueue = v13->_backupListQueue;
    v13->_backupListQueue = v20;
  }

  return v13;
}

- (void)dealloc
{
  remoteTableView = self->_remoteTableView;
  if (remoteTableView)
  {
    [(UITableView *)remoteTableView setDataSource:0];
    [(UITableView *)self->_remoteTableView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v4 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:self->_remoteTableViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v5 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  v5 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(UITableViewDelegate *)self->_remoteTableViewController methodSignatureForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AAUIFMIPHeaderDeviceInfoPageSurrogate;
  return [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)&v6 respondsToSelector:selector];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = viewCopy;
  if (self->_remoteTableView == viewCopy)
  {
    if (section)
    {
      v8 = [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy viewForHeaderInSection:section];
    }

    else
    {
      v9 = _AAUILogSystem(viewCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Creating a device info header view", v14, 2u);
      }

      v10 = [AAUIDeviceInfoHeaderView alloc];
      device = self->_device;
      style = [(RUIPage *)self->_remoteUIPage style];
      v8 = [(AAUIDeviceInfoHeaderView *)v10 initWithDevice:device style:style];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if (self->_remoteTableView == viewCopy)
  {
    if (section)
    {
      v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v8 _bodyLeading];
      v7 = v9;
    }

    else
    {
      +[AAUIDeviceInfoHeaderView desiredHeight];
      v7 = v10;
    }
  }

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if (self->_remoteTableView == viewCopy)
  {
    if (section)
    {
      [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy heightForHeaderInSection:section];
      v7 = v8;
    }

    else
    {
      v7 = UITableViewAutomaticDimension;
    }
  }

  return v7;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_remoteTableView == viewCopy)
  {
    if (!section && [(AATrustedDevice *)self->_device showBackupRow]&& [(ACAccount *)self->_appleAccount aa_isPrimaryAccount])
    {
      _footerForBackupRow = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _footerForBackupRow];
    }

    else
    {
      _footerForBackupRow = [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy titleForFooterInSection:section];
    }

    v7 = _footerForBackupRow;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_footerForBackupRow
{
  v3 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _dateStringOfLatestBackup:0];
  rawLatestBackup = [(AATrustedDevice *)self->_device rawLatestBackup];

  if (rawLatestBackup)
  {
    rawLatestBackup2 = [(AATrustedDevice *)self->_device rawLatestBackup];
    [rawLatestBackup2 doubleValue];
    v7 = v6 / 1000.0;

    v8 = [NSDate dateWithTimeIntervalSince1970:v7];
    v9 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _dateStringOfLatestBackup:v8];

    v3 = v9;
  }

  if (([(AATrustedDevice *)self->_device currentDevice]& 1) == 0)
  {
    v10 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self cellWithTag:1002];
    detailTextLabel = [v10 detailTextLabel];
    [detailTextLabel setText:0];

    [v10 setActivityIndicatorVisible:1];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_ED70;
    v14[3] = &unk_59748;
    v15 = v10;
    selfCopy = self;
    v12 = v10;
    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self fetchBackupWithCompletion:v14];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = [v8 tag];
  if (![(AATrustedDevice *)self->_device currentDevice])
  {
    if (v9 != &stru_3D8.segname[3])
    {
      goto LABEL_10;
    }

LABEL_7:
    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self _addActivityIndicatorToCell:v8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    serialNumber = [(AATrustedDevice *)self->_device serialNumber];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_EF4C;
    v16 = &unk_594A0;
    selfCopy = self;
    v18 = v8;
    [WeakRetained userTappedAppleCare:serialNumber completion:&v13];

    goto LABEL_10;
  }

  if (v9 == &stru_3D8.segname[3])
  {
    goto LABEL_7;
  }

  if (v9 == &stru_3D8.segname[2])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userTappedBackup];
    goto LABEL_9;
  }

  if (v9 == &stru_3D8.segname[1])
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 userTappedFMIP];
LABEL_9:
  }

LABEL_10:
  [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy didSelectRowAtIndexPath:pathCopy, v13, v14, v15, v16, selfCopy];
}

- (void)_removeActivityIndicatorFromCell:(id)cell
{
  cellCopy = cell;
  [cellCopy setAccessoryView:0];
  [cellCopy setAccessoryType:1];
}

- (void)_addActivityIndicatorToCell:(id)cell
{
  cellCopy = cell;
  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [cellCopy setAccessoryView:v4];

  [v4 startAnimating];
}

- (id)_dateStringOfLatestBackup:(id)backup
{
  backupCopy = backup;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LAST_ICLOUD_BACKUP" value:&stru_5A5F0 table:@"Localizable"];

  if (backupCopy)
  {
    v6 = objc_alloc_init(NSDateFormatter);
    if ([backupCopy aaf_isToday])
    {
      [v6 setTimeStyle:1];
      [v6 setDateStyle:0];
    }

    else
    {
      v8 = +[NSLocale currentLocale];
      localeIdentifier = [v8 localeIdentifier];
      v10 = [localeIdentifier isEqualToString:@"en_US"];

      [v6 setDoesRelativeDateFormatting:1];
      if (v10)
      {
        [v6 setDateStyle:1];
        v11 = objc_alloc_init(NSDateFormatter);
        [v11 setTimeStyle:1];
        v12 = [NSBundle bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"DATE_AT_TIME" value:&stru_5A5F0 table:@"Localizable"];
        v14 = [v6 stringFromDate:backupCopy];
        v15 = [v11 stringFromDate:backupCopy];
        v16 = [NSString stringWithFormat:v13, v14, v15];
        v17 = [v5 stringByAppendingString:v16];

        v5 = v12;
        goto LABEL_10;
      }

      [v6 setDateStyle:3];
      [v6 setTimeStyle:1];
    }

    v7 = [v6 stringFromDate:backupCopy];
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"NEVER_BACKED_UP" value:&stru_5A5F0 table:@"Localizable"];
  }

  v11 = v7;
  v17 = [v5 stringByAppendingString:v7];
LABEL_10:

  return v17;
}

- (void)fetchBackupWithCompletion:(id)completion
{
  completionCopy = completion;
  backupListQueue = self->_backupListQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_F350;
  v7[3] = &unk_59770;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(backupListQueue, v7);
}

- (id)backupForUDID:(id)d backupList:(id)list
{
  dCopy = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(listCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        backupUUID = [v11 backupUUID];
        v13 = [backupUUID isEqualToString:dCopy];

        if (v13)
        {
          v18 = _AAUILogSystem(v14);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Found matching backupUUID", v20, 2u);
          }

          v17 = v11;
          v16 = listCopy;
          goto LABEL_15;
        }
      }

      v8 = [listCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = _AAUILogSystem(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "No peer backup info found.", v20, 2u);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (void)updateDetailLabelWithBackup:(id)backup
{
  backupCopy = backup;
  v5 = backupCopy;
  if (backupCopy)
  {
    if ([backupCopy hasBackupEnabledState])
    {
      isBackupEnabled = [v5 isBackupEnabled];
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = v7;
      if (isBackupEnabled)
      {
        v9 = @"ON";
      }

      else
      {
        v9 = @"OFF";
      }
    }

    else
    {
      v7 = [NSBundle bundleForClass:objc_opt_class()];
      v8 = v7;
      v9 = @"UNKNOWN";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_5A5F0 table:@"Localizable"];

    v12 = _AAUILogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_33C04(v10, v12);
    }

    [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self refreshBackupDetailText:v10];
  }
}

- (void)refreshBackupDetailText:(id)text
{
  textCopy = text;
  v4 = [(AAUIFMIPHeaderDeviceInfoPageSurrogate *)self cellWithTag:1002];
  v5 = v4;
  if (v4)
  {
    detailTextLabel = [v4 detailTextLabel];
    [detailTextLabel setText:textCopy];
  }
}

- (AAUIFMIPHeaderDeviceInfoPageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end