@interface _UNNotificationContactService
+ (id)sharedInstance;
+ (void)sharedInstance;
- (BOOL)canAddToCuratedContacts:(id)contacts bundleIdentifier:(id)identifier;
- (id)curatedContactForContact:(id)contact bundleIdentifier:(id)identifier keysToFetch:(id)fetch;
- (id)curatedContactMatchDetailsForContact:(id)contact bundleIdentifier:(id)identifier;
- (id)newCuratedContactForContact:(id)contact imageData:(id)data bundleIdentifier:(id)identifier;
- (void)confirmCuratedContactSuggestion:(BOOL)suggestion forContact:(id)contact bundleIdentifier:(id)identifier;
- (void)didAddToCuratedContactsForContact:(id)contact bundleIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier;
@end

@implementation _UNNotificationContactService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_UNNotificationContactService sharedInstance];
  }

  NCRegisterUserNotificationsUILogging(self, a2);
  v2 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v2 sharedInstance:v3];
  }

  v10 = sharedInstance___sharedInstance;

  return v10;
}

- (id)curatedContactMatchDetailsForContact:(id)contact bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging(self, a2);
  v4 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v4 curatedContactMatchDetailsForContact:v5 bundleIdentifier:v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (id)curatedContactForContact:(id)contact bundleIdentifier:(id)identifier keysToFetch:(id)fetch
{
  NCRegisterUserNotificationsUILogging(self, a2);
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 curatedContactForContact:v6 bundleIdentifier:v7 keysToFetch:v8, v9, v10, v11, v12];
  }

  return 0;
}

- (void)confirmCuratedContactSuggestion:(BOOL)suggestion forContact:(id)contact bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging(self, a2);
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 confirmCuratedContactSuggestion:v6 forContact:v7 bundleIdentifier:v8, v9, v10, v11, v12];
  }
}

- (BOOL)canAddToCuratedContacts:(id)contacts bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging(self, a2);
  v4 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v4 canAddToCuratedContacts:v5 bundleIdentifier:v6, v7, v8, v9, v10, v11];
  }

  return 0;
}

- (id)newCuratedContactForContact:(id)contact imageData:(id)data bundleIdentifier:(id)identifier
{
  NCRegisterUserNotificationsUILogging(self, a2);
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 newCuratedContactForContact:v6 imageData:v7 bundleIdentifier:v8, v9, v10, v11, v12];
  }

  return objc_alloc_init(MEMORY[0x277CBDA58]);
}

- (void)didAddToCuratedContactsForContact:(id)contact bundleIdentifier:(id)identifier cnContactIdentifier:(id)contactIdentifier
{
  NCRegisterUserNotificationsUILogging(self, a2);
  v5 = NCUILogCommunicationNotifications;
  if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
  {
    [(_UNNotificationContactService *)v5 didAddToCuratedContactsForContact:v6 bundleIdentifier:v7 cnContactIdentifier:v8, v9, v10, v11, v12];
  }
}

+ (void)sharedInstance
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[_UNNotificationContactService sharedInstance]";
  OUTLINED_FUNCTION_0(&dword_270A33000, self, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)curatedContactMatchDetailsForContact:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactService curatedContactMatchDetailsForContact:bundleIdentifier:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)curatedContactForContact:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 keysToFetch:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactService curatedContactForContact:bundleIdentifier:keysToFetch:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)confirmCuratedContactSuggestion:(uint64_t)a3 forContact:(uint64_t)a4 bundleIdentifier:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactService confirmCuratedContactSuggestion:forContact:bundleIdentifier:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)canAddToCuratedContacts:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactService canAddToCuratedContacts:bundleIdentifier:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)newCuratedContactForContact:(uint64_t)a3 imageData:(uint64_t)a4 bundleIdentifier:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactService newCuratedContactForContact:imageData:bundleIdentifier:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)didAddToCuratedContactsForContact:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 cnContactIdentifier:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactService didAddToCuratedContactsForContact:bundleIdentifier:cnContactIdentifier:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactService.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end