@interface SharedMailboxController
+ (id)allSharedInstances;
+ (id)sharedInstanceForSourceType:(unint64_t)type;
+ (id)sharedInstanceMapping;
+ (id)sharedSmartMailboxForSourceType:(unint64_t)type;
- (CGPoint)iconOffset;
- (SharedMailboxController)initWithType:(unint64_t)type;
- (id)icon;
- (id)iconImage;
- (id)lastInitialBadgeCountDefaultKey;
- (id)startCountQuery;
- (int64_t)badgeCount;
- (void)_startCountQueryIfNeededWithToken:(id)token;
- (void)_startCountQueryWithToken:(id)token;
- (void)_updateMailboxes;
- (void)dealloc;
- (void)invalidateIcon;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)presentFromSelectionTarget:(id)target item:(id)item accessoryTapped:(BOOL)tapped animated:(BOOL)animated;
- (void)resume;
- (void)setBadgeCount:(int64_t)count notifyChange:(BOOL)change;
@end

@implementation SharedMailboxController

+ (id)sharedInstanceMapping
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BD6C;
  v4[3] = &unk_100656840;
  v4[4] = a2;
  v4[5] = self;
  if (qword_1006DD818 != -1)
  {
    dispatch_once(&qword_1006DD818, v4);
  }

  v2 = qword_1006DD810;

  return v2;
}

- (id)lastInitialBadgeCountDefaultKey
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [NSString stringWithFormat:@"%@BadgeCount", v3];

  return v4;
}

+ (id)allSharedInstances
{
  sharedInstanceMapping = [self sharedInstanceMapping];
  allValues = [sharedInstanceMapping allValues];

  return allValues;
}

- (void)resume
{
  [(EFSuspendableScheduler *)self->_scheduler resume];
  if ([(SharedMailboxController *)self alwaysActiveCountQuery])
  {
    scheduler = self->_scheduler;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002038C;
    v5[3] = &unk_10064E780;
    v5[4] = self;
    v4 = [(EFSuspendableScheduler *)scheduler performCancelableBlock:v5];
  }
}

- (void)_updateMailboxes
{
  [(EFSuspendableScheduler *)self->_scheduler assertIsExecuting:1];
  v3 = +[UIApplication sharedApplication];
  accountsProvider = [v3 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];

  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(displayedAccounts, "count")}];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = displayedAccounts;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        primaryMailboxUid = [*(*(&v14 + 1) + 8 * v10) primaryMailboxUid];
        [v6 addObject:primaryMailboxUid];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v6 copy];
  mailboxes = self->_mailboxes;
  self->_mailboxes = v12;
}

+ (id)sharedSmartMailboxForSourceType:(unint64_t)type
{
  if (qword_1006DD828 != -1)
  {
    sub_10048D4C0();
  }

  v4 = qword_1006DD820;
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (id)sharedInstanceForSourceType:(unint64_t)type
{
  if (type && _MSSourceTypeIsValid())
  {
    sharedInstanceMapping = [self sharedInstanceMapping];
    v7 = [NSNumber numberWithUnsignedInteger:type];
    v8 = [sharedInstanceMapping objectForKeyedSubscript:v7];

    IsValid = _MSSourceTypeIsValid();
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = IsValid;
    }

    if (v10 == 1)
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"SharedMailboxController.m" lineNumber:147 description:@"Unsupported source type"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SharedMailboxController)initWithType:(unint64_t)type
{
  v23.receiver = self;
  v23.super_class = SharedMailboxController;
  v4 = [(SharedMailboxController *)&v23 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_sourceType = type;
    v6 = [objc_opt_class() sharedSmartMailboxForSourceType:type];
    mailbox = v5->_mailbox;
    v5->_mailbox = v6;

    v8 = [NSString stringWithFormat:@"com.apple.mobilemail.%@", objc_opt_class()];
    v9 = [EFScheduler serialDispatchQueueSchedulerWithName:v8];
    scheduler = v5->_scheduler;
    v5->_scheduler = v9;

    [(EFSuspendableScheduler *)v5->_scheduler suspend];
    v11 = +[NSUserDefaults standardUserDefaults];
    lastInitialBadgeCountDefaultKey = [(SharedMailboxController *)v5 lastInitialBadgeCountDefaultKey];
    v5->_badgeCount = [v11 integerForKey:lastInitialBadgeCountDefaultKey];

    unreadCriterion = [(SharedMailboxController *)v5 unreadCriterion];
    criterion = v5->_criterion;
    v5->_criterion = unreadCriterion;

    v15 = [EFDebouncer alloc];
    v16 = +[EFScheduler mainThreadScheduler];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10024A8CC;
    v21[3] = &unk_10064D900;
    v17 = v5;
    v22 = v17;
    v18 = [v15 initWithTimeInterval:v16 scheduler:1 startAfter:v21 block:0.2];
    badgeCountDebouncer = v17->_badgeCountDebouncer;
    v17->_badgeCountDebouncer = v18;
  }

  return v5;
}

- (void)dealloc
{
  [(EFCancelable *)self->_unreadCountToken cancel];
  [(EFDebouncer *)self->_badgeCountDebouncer cancel];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SharedMailboxController;
  [(SharedMailboxController *)&v4 dealloc];
}

- (int64_t)badgeCount
{
  os_unfair_lock_lock(&self->_lock);
  badgeCount = self->_badgeCount;
  os_unfair_lock_unlock(&self->_lock);
  return badgeCount;
}

- (void)setBadgeCount:(int64_t)count notifyChange:(BOOL)change
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_badgeCount == count)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_badgeCount = count;
    v7 = +[NSUserDefaults standardUserDefaults];
    badgeCount = self->_badgeCount;
    lastInitialBadgeCountDefaultKey = [(SharedMailboxController *)self lastInitialBadgeCountDefaultKey];
    [v7 setInteger:badgeCount forKey:lastInitialBadgeCountDefaultKey];

    os_unfair_lock_unlock(&self->_lock);
    if (change)
    {
      v13 = SharedNetworkControllerBadgeCountKey;
      v10 = [NSNumber numberWithInteger:count];
      v14 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 postNotificationName:SharedMailboxControllerBadgeCountDidChangeNotification object:self userInfo:v11];
    }
  }
}

- (CGPoint)iconOffset
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)iconImage
{
  iconImageName = [(SharedMailboxController *)self iconImageName];
  v3 = [UIImage mf_systemImageNamed:iconImageName forView:7];

  return v3;
}

- (id)icon
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_icon)
  {
    iconImage = [(SharedMailboxController *)self iconImage];
    icon = self->_icon;
    self->_icon = iconImage;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_icon;

  return v5;
}

- (void)invalidateIcon
{
  icon = self->_icon;
  self->_icon = 0;
}

- (void)presentFromSelectionTarget:(id)target item:(id)item accessoryTapped:(BOOL)tapped animated:(BOOL)animated
{
  animatedCopy = animated;
  targetCopy = target;
  itemCopy = item;
  [targetCopy selectCombinedInboxWithSourceType:-[SharedMailboxController sourceType](self item:"sourceType") animated:{itemCopy, animatedCopy}];
}

- (id)startCountQuery
{
  v3 = [EFManualCancelationToken alloc];
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithLabel:v4];

  if (![(SharedMailboxController *)self alwaysActiveCountQuery])
  {
    scheduler = self->_scheduler;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10024B03C;
    v9[3] = &unk_10064E780;
    v9[4] = self;
    v7 = [(EFSuspendableScheduler *)scheduler performCancelableBlock:v9];
    [v5 addCancelable:v7];
  }

  return v5;
}

- (void)_startCountQueryIfNeededWithToken:(id)token
{
  tokenCopy = token;
  unreadCountToken = [(SharedMailboxController *)self unreadCountToken];
  v6 = unreadCountToken;
  if (unreadCountToken)
  {
    unreadCountToken = [unreadCountToken isCanceled];
    v7 = unreadCountToken;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1000203A0(unreadCountToken);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109378;
    v9[1] = v7;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting count query %{BOOL}d token: %{public}@", v9, 0x12u);
  }

  if (v7)
  {
    [(SharedMailboxController *)self _updateMailboxes];
    [(SharedMailboxController *)self _startCountQueryWithToken:tokenCopy];
  }
}

- (void)_startCountQueryWithToken:(id)token
{
  tokenCopy = token;
  [(EFSuspendableScheduler *)self->_scheduler assertIsExecuting:1];
  unreadCountToken = [(SharedMailboxController *)self unreadCountToken];
  [unreadCountToken cancel];

  [(SharedMailboxController *)self setUnreadCountToken:0];
  unscopedCountPredicate = [(SharedMailboxController *)self unscopedCountPredicate];
  v7 = [unscopedCountPredicate copy];

  mailbox = [(SharedMailboxController *)self mailbox];
  mailboxScope = [mailbox mailboxScope];
  v10 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:mailboxScope];

  if (v10)
  {
    v30[0] = v7;
    v30[1] = v10;
    v12 = [NSArray arrayWithObjects:v30 count:2];
    v13 = [NSCompoundPredicate andPredicateWithSubpredicates:v12];

    v7 = v13;
  }

  if (v7 && (v11 = [(NSArray *)self->_mailboxes count]) != 0)
  {
    v14 = +[UIApplication sharedApplication];
    focusController = [v14 focusController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10024B4C0;
    v19[3] = &unk_100656888;
    v19[4] = self;
    v20 = v7;
    v21 = tokenCopy;
    [focusController getCurrentFocus:v19];
  }

  else
  {
    v16 = sub_1000203A0(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = [(NSArray *)self->_mailboxes count];
      *buf = 138544130;
      v23 = v17;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = v7;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ not starting query: scopePredicate: %p, countPredicate: %p, _mailboxes.count %ld", buf, 0x2Au);
    }
  }
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  v7 = [(SharedMailboxController *)self badgeCountDebouncer:repository];
  v6 = [NSNumber numberWithInteger:change];
  [v7 debounceResult:v6];
}

@end