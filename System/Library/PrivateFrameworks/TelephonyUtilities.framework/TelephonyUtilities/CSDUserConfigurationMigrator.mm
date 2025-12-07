@interface CSDUserConfigurationMigrator
- (CSDUserConfigurationMigrator)init;
- (void)migrateAnnounceCalls;
- (void)migrateConversationLinkBaseURL;
- (void)perform;
@end

@implementation CSDUserConfigurationMigrator

- (CSDUserConfigurationMigrator)init
{
  v6.receiver = self;
  v6.super_class = CSDUserConfigurationMigrator;
  v2 = [(CSDUserConfigurationMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v2->_userConfiguration;
    v2->_userConfiguration = v3;
  }

  return v2;
}

- (void)perform
{
  [(CSDUserConfigurationMigrator *)self migrateAnnounceCalls];

  [(CSDUserConfigurationMigrator *)self migrateConversationLinkBaseURL];
}

- (void)migrateAnnounceCalls
{
  userConfiguration = [(CSDUserConfigurationMigrator *)self userConfiguration];
  announceCalls = [userConfiguration announceCalls];

  if (!announceCalls)
  {
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.InCallService"];
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrator is looking for legacy Announce Calls setting in %@", &v14, 0xCu);
    }

    v7 = [v5 objectForKey:@"announcements"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = isKindOfClass;
    userConfiguration2 = sub_100004778(isKindOfClass);
    v11 = os_log_type_enabled(userConfiguration2, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, userConfiguration2, OS_LOG_TYPE_DEFAULT, "Migrator found legacy Announce Calls setting %@", &v14, 0xCu);
      }

      v12 = [v7 unsignedIntegerValue] - 1;
      if (v12 > 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = qword_10057A250[v12];
      }

      userConfiguration2 = [(CSDUserConfigurationMigrator *)self userConfiguration];
      [userConfiguration2 setAnnounceCalls:v13];
    }

    else if (v11)
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, userConfiguration2, OS_LOG_TYPE_DEFAULT, "Migrator did not find legacy Announce Calls setting in %@", &v14, 0xCu);
    }

    [v5 removeObjectForKey:@"announcements"];
  }
}

- (void)migrateConversationLinkBaseURL
{
  userConfiguration = [(CSDUserConfigurationMigrator *)self userConfiguration];
  conversationLinkBaseURL = [userConfiguration conversationLinkBaseURL];

  if (conversationLinkBaseURL)
  {
    v5 = +[NSUserDefaults tu_defaults];
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrator is looking for legacy Conversation Link Base URL setting in %@", &v11, 0xCu);
    }

    v7 = [v5 stringForKey:@"GondolaLinkOverrideBaseURL"];
    v8 = sub_100004778(v7);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migrator found legacy Conversation Link Base URL setting %@", &v11, 0xCu);
      }

      v8 = [[NSURL alloc] initWithString:v7];
      userConfiguration2 = [(CSDUserConfigurationMigrator *)self userConfiguration];
      [userConfiguration2 setConversationLinkBaseURL:v8];
    }

    else if (v9)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migrator did not find legacy Conversation Link Base URL setting in %@", &v11, 0xCu);
    }

    [v5 removeObjectForKey:@"GondolaLinkOverrideBaseURL"];
  }
}

@end