@interface IMServiceAgentImpl
+ (id)imageNameForStatus:(unint64_t)status;
+ (id)imageURLForStatus:(unint64_t)status;
+ (id)sharedAgent;
+ (void)_determineStatusImageAppearance;
- (IMServiceAgentImpl)init;
- (id)myAvailableMessages;
- (id)myAwayMessages;
- (id)serviceWithName:(id)name;
- (unint64_t)vcCapabilities;
- (void)_customMessagesChanged:(id)changed;
- (void)_statusImageAppearanceChanged:(id)changed;
- (void)dealloc;
- (void)setMyAvailableMessages:(id)messages;
- (void)setMyAwayMessages:(id)messages;
- (void)setupComplete;
@end

@implementation IMServiceAgentImpl

+ (id)sharedAgent
{
  v2 = qword_1EB2EA230;
  if (!qword_1EB2EA230)
  {
    v3 = objc_alloc_init(IMServiceAgentImpl);
    v4 = qword_1EB2EA230;
    qword_1EB2EA230 = v3;

    v2 = qword_1EB2EA230;
  }

  return v2;
}

- (IMServiceAgentImpl)init
{
  v3.receiver = self;
  v3.super_class = IMServiceAgentImpl;
  return [(IMServiceAgentImpl *)&v3 init];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  v4.receiver = self;
  v4.super_class = IMServiceAgentImpl;
  [(IMServiceAgentImpl *)&v4 dealloc];
}

- (id)serviceWithName:(id)name
{
  nameCopy = name;
  v4 = +[IMDaemonController sharedController];
  [v4 blockUntilConnected];

  if ([(__CFString *)nameCopy isEqualToString:@"Bonjour"])
  {

    nameCopy = @"SubNet";
  }

  v5 = +[IMDaemonController sharedController];
  listener = [v5 listener];
  v7 = [listener serviceWithName:nameCopy];

  return v7;
}

- (void)_statusImageAppearanceChanged:(id)changed
{
  [objc_opt_class() forgetStatusImageAppearance];
  notificationCenter = [(IMServiceAgentImpl *)self notificationCenter];
  [notificationCenter __mainThreadPostNotificationName:@"__kIMStatusImagesChangedAppearanceNotification" object:0];
}

+ (void)_determineStatusImageAppearance
{
  v2 = [MEMORY[0x1E695E000] _IMAppObjectForKey:@"UseAlternateStatusIndicators"];
  qword_1EB2E4FE0 = [v2 BOOLValue];
}

+ (id)imageNameForStatus:(unint64_t)status
{
  if (qword_1EB2E4FE0 == -1)
  {
    [self _determineStatusImageAppearance];
  }

  if (status - 1 > 3)
  {
    v4 = @"NSStatusUnknown";
  }

  else
  {
    v4 = off_1E7811B20[status - 1];
  }

  if (qword_1EB2E4FE0)
  {
    v4 = [(__CFString *)v4 stringByAppendingString:@"Flat"];
  }

  return v4;
}

+ (id)imageURLForStatus:(unint64_t)status
{
  if (qword_1EB2E4FE0 == -1)
  {
    [self _determineStatusImageAppearance];
  }

  v4 = qword_1EB2EA238;
  if (!qword_1EB2EA238)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = qword_1EB2EA238;
    qword_1EB2EA238 = v5;

    v7 = MEMORY[0x1E695DF20];
    v8 = _IMFrameworkBundle();
    v9 = [v8 pathForResource:@"OnlineStatuses" ofType:@"plist"];
    v10 = [v7 dictionaryWithContentsOfFile:v9];

    v11 = [v10 objectForKey:@"StatusList"];
    v12 = [v11 count];
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [v11 objectAtIndex:IMPersonStatusFromFZPersonStatus(i)];
        v16 = qword_1EB2EA238;
        v17 = [v15 objectForKey:@"ImageName"];
        [v16 addObject:v17];
      }
    }

    v4 = qword_1EB2EA238;
  }

  if ([v4 count] && objc_msgSend(qword_1EB2EA238, "count") > status)
  {
    v18 = [qword_1EB2EA238 objectAtIndex:status];
    v19 = v18;
    if (qword_1EB2E4FE0 == 1)
    {
      v20 = [v18 stringByAppendingString:@"_flat"];

      v19 = v20;
    }

    if (v19)
    {
      v21 = MEMORY[0x1E695DFF8];
      v22 = _IMFrameworkBundle();
      v23 = [v22 pathForResource:v19 ofType:@"tiff"];
      v24 = [v21 fileURLWithPath:v23];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)_customMessagesChanged:(id)changed
{
  changedCopy = changed;
  IMSyncronizeAppPreferences();
  notificationCenter = [(IMServiceAgentImpl *)self notificationCenter];
  name = [changedCopy name];
  v7 = qword_1EB2EA230;
  userInfo = [changedCopy userInfo];

  [notificationCenter __mainThreadPostNotificationName:name object:v7 userInfo:userInfo];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMCustomStatusMessagesChangedNotification" object:0];
}

- (id)myAvailableMessages
{
  v2 = *MEMORY[0x1E69A6210];
  v3 = IMGetCachedDomainValueForKey();
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] _IMAppObjectForKey:v2];
  }

  v5 = v4;

  return v5;
}

- (id)myAwayMessages
{
  v2 = *MEMORY[0x1E69A6218];
  v3 = IMGetCachedDomainValueForKey();
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695E000] _IMAppObjectForKey:v2];
  }

  v5 = v4;

  return v5;
}

- (void)setMyAvailableMessages:(id)messages
{
  IMSetDomainValueForKey();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMCustomStatusMessagesChangedNotification" object:0];
}

- (void)setMyAwayMessages:(id)messages
{
  IMSetDomainValueForKey();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMCustomStatusMessagesChangedNotification" object:0];
}

- (void)setupComplete
{
  v4 = +[IMDaemonController sharedController];
  listener = [v4 listener];
  allServices = [listener allServices];
  [allServices makeObjectsPerformSelector:sel_doneSetup];
}

- (unint64_t)vcCapabilities
{
  v2 = +[IMDaemonController sharedController];
  listener = [v2 listener];
  vcCapabilities = [listener vcCapabilities];

  return vcCapabilities;
}

@end