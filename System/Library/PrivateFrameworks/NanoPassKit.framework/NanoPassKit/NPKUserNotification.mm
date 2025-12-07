@interface NPKUserNotification
- (NSArray)identifierHashComponents;
- (NSString)body;
- (NSString)identifier;
- (NSString)title;
@end

@implementation NPKUserNotification

- (NSString)title
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKUserNotification title]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/User Notifications/NPKUserNotification.m";
      v10 = 2048;
      v11 = 24;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (NSString)body
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pk_General_log(self);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);

  if (v3)
  {
    v5 = pk_General_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[NPKUserNotification body]";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/User Notifications/NPKUserNotification.m";
      v10 = 2048;
      v11 = 29;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Subclasses must override)", &v6, 0x20u);
    }
  }

  _NPKAssertAbort();
}

- (NSArray)identifierHashComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  title = [(NPKUserNotification *)self title];
  [v3 safelyAddObject:title];

  body = [(NPKUserNotification *)self body];
  [v3 safelyAddObject:body];

  notificationCategoryIdentifier = [(NPKUserNotification *)self notificationCategoryIdentifier];
  [v3 safelyAddObject:notificationCategoryIdentifier];

  return v3;
}

- (NSString)identifier
{
  v3 = objc_opt_class();
  identifierHashComponents = [(NPKUserNotification *)self identifierHashComponents];
  v5 = [v3 generateModelIdentifierWith:identifierHashComponents];

  return v5;
}

@end