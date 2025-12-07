@interface BlockedSenderSettingsPane
+ (OS_os_log)log;
- (PSListController)parentListController;
- (id)blockSenderStateWithSpecifier:(id)specifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_writeBlockSenderEnabled:(BOOL)enabled optionValue:(int64_t)value;
- (void)setBlockSenderState:(id)state withSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation BlockedSenderSettingsPane

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2AE0;
  block[3] = &unk_3CD10;
  block[4] = self;
  if (qword_448C8 != -1)
  {
    dispatch_once(&qword_448C8, block);
  }

  v2 = qword_448C0;

  return v2;
}

- (id)specifiers
{
  [(BlockedSenderSettingsPane *)self setBlockSenderEnabled:getMailBoolPreferenceValueWithDefault(EMUserDefaultBlockedSenderEnabled, 1)];
  v3 = getMailPreferenceValueWithDefault(EMUserDefaultBlockedSenderAction, &off_3F750);
  [(BlockedSenderSettingsPane *)self setBlockSenderOptionState:v3];

  v4 = +[BlockedSenderSettingsPane log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ([(BlockedSenderSettingsPane *)self blockSenderEnabled])
    {
      v5 = @"ON";
    }

    else
    {
      v5 = @"OFF";
    }

    blockSenderOptionState = [(BlockedSenderSettingsPane *)self blockSenderOptionState];
    *buf = 138543618;
    v18 = v5;
    v19 = 2048;
    integerValue = [blockSenderOptionState integerValue];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "current block sender '%{public}@' and preference action '%li'", buf, 0x16u);
  }

  v7 = OBJC_IVAR___PSListController__specifiers;
  v8 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"BLOCKED_SENDER_MARK_BLOCKED_SENDER" value:&stru_3D2B0 table:@"Preferences"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setBlockSenderState:withSpecifier:" get:"blockSenderStateWithSpecifier:" detail:objc_opt_class() cell:6 edit:0];
    [(BlockedSenderSettingsPane *)self setBlockSenderSwitch:v12];

    blockSenderSwitch = [(BlockedSenderSettingsPane *)self blockSenderSwitch];
    [v9 addObject:blockSenderSwitch];

    if ([(BlockedSenderSettingsPane *)self blockSenderEnabled])
    {
      _blockedSenderActionOptionsSpecifier = [(BlockedSenderSettingsPane *)self _blockedSenderActionOptionsSpecifier];
      [v9 addObjectsFromArray:_blockedSenderActionOptionsSpecifier];
    }

    v15 = *&self->PSListController_opaque[v7];
    *&self->PSListController_opaque[v7] = v9;

    v8 = *&self->PSListController_opaque[v7];
  }

  return v8;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BlockedSenderSettingsPane;
  [(BlockedSenderSettingsPane *)&v5 viewDidAppear:appear];
  parentController = [(BlockedSenderSettingsPane *)self parentController];
  [(BlockedSenderSettingsPane *)self setParentListController:parentController];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BlockedSenderSettingsPane;
  [(BlockedSenderSettingsPane *)&v4 viewDidDisappear:disappear];
  [(BlockedSenderSettingsPane *)self setParentListController:0];
}

- (id)blockSenderStateWithSpecifier:(id)specifier
{
  v3 = [NSNumber numberWithBool:[(BlockedSenderSettingsPane *)self blockSenderEnabled]];

  return v3;
}

- (void)setBlockSenderState:(id)state withSpecifier:(id)specifier
{
  stateCopy = state;
  -[BlockedSenderSettingsPane setBlockSenderEnabled:](self, "setBlockSenderEnabled:", [stateCopy BOOLValue]);
  blockSenderEnabled = [(BlockedSenderSettingsPane *)self blockSenderEnabled];
  blockSenderOptionState = [(BlockedSenderSettingsPane *)self blockSenderOptionState];
  -[BlockedSenderSettingsPane _writeBlockSenderEnabled:optionValue:](self, "_writeBlockSenderEnabled:optionValue:", blockSenderEnabled, [blockSenderOptionState integerValue]);

  if ([(BlockedSenderSettingsPane *)self blockSenderEnabled])
  {
    _blockedSenderActionOptionsSpecifier = [(BlockedSenderSettingsPane *)self _blockedSenderActionOptionsSpecifier];
    blockSenderSwitch = [(BlockedSenderSettingsPane *)self blockSenderSwitch];
    [(BlockedSenderSettingsPane *)self insertContiguousSpecifiers:_blockedSenderActionOptionsSpecifier afterSpecifier:blockSenderSwitch];
  }

  else
  {
    [(BlockedSenderSettingsPane *)self beginUpdates];
    actionOptionsSpecifiers = [(BlockedSenderSettingsPane *)self actionOptionsSpecifiers];
    [(BlockedSenderSettingsPane *)self removeContiguousSpecifiers:actionOptionsSpecifiers animated:0];

    [(BlockedSenderSettingsPane *)self endUpdates];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = BlockedSenderSettingsPane;
  [(BlockedSenderSettingsPane *)&v13 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(BlockedSenderSettingsPane *)self indexForIndexPath:pathCopy];
  v8 = -[BlockedSenderSettingsPane specifierAtIndex:](self, "specifierAtIndex:", -[BlockedSenderSettingsPane indexOfGroup:](self, "indexOfGroup:", [pathCopy section]));
  v9 = [v8 propertyForKey:PSIsRadioGroupKey];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [(BlockedSenderSettingsPane *)self specifierAtIndex:v7];
    v12 = [v11 propertyForKey:PSValueKey];
    -[BlockedSenderSettingsPane _writeBlockSenderEnabled:optionValue:](self, "_writeBlockSenderEnabled:optionValue:", -[BlockedSenderSettingsPane blockSenderEnabled](self, "blockSenderEnabled"), [v12 integerValue]);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = BlockedSenderSettingsPane;
  v7 = [(BlockedSenderSettingsPane *)&v13 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = -[BlockedSenderSettingsPane specifierAtIndex:](self, "specifierAtIndex:", -[BlockedSenderSettingsPane indexOfGroup:](self, "indexOfGroup:", [pathCopy section]));
  v9 = [v8 propertyForKey:@"AllowMultiLines"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    textLabel = [v7 textLabel];
    [textLabel setLineBreakMode:0];
    [textLabel setNumberOfLines:0];
  }

  return v7;
}

- (void)_writeBlockSenderEnabled:(BOOL)enabled optionValue:(int64_t)value
{
  enabledCopy = enabled;
  v7 = +[BlockedSenderSettingsPane log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"OFF";
    if (enabledCopy)
    {
      v8 = @"ON";
    }

    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    valueCopy = value;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "block sender is %{public}@, preference action %li", &v12, 0x16u);
  }

  setEmailPreferenceBoolValue(EMUserDefaultBlockedSenderEnabled, enabledCopy);
  if (enabledCopy)
  {
    v9 = [NSNumber numberWithInteger:value];
    setEmailPreferenceValue(EMUserDefaultBlockedSenderAction, v9);
  }

  else
  {
    v9 = +[NSUserDefaults em_userDefaults];
    [v9 removeObjectForKey:EMUserDefaultBlockedSenderAction];
  }

  parentListController = [(BlockedSenderSettingsPane *)self parentListController];
  [parentListController reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, EMUserDefaultsDidChangeNotification, 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, EMBlockedSenderOptionsDidChangeNotification, 0, 0, 1u);
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end