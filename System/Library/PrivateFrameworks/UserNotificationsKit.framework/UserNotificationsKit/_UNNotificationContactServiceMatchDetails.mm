@interface _UNNotificationContactServiceMatchDetails
- (_UNNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)identifier cnContactFullname:(id)fullname isSuggestedContact:(BOOL)contact;
@end

@implementation _UNNotificationContactServiceMatchDetails

- (_UNNotificationContactServiceMatchDetails)initWithCnContactIdentifier:(id)identifier cnContactFullname:(id)fullname isSuggestedContact:(BOOL)contact
{
  v17.receiver = self;
  v17.super_class = _UNNotificationContactServiceMatchDetails;
  v5 = [(_UNNotificationContactServiceMatchDetails *)&v17 init:identifier];
  v7 = v5;
  if (v5)
  {
    NCRegisterUserNotificationsUILogging(v5, v6);
    v8 = NCUILogCommunicationNotifications;
    if (os_log_type_enabled(NCUILogCommunicationNotifications, OS_LOG_TYPE_ERROR))
    {
      [(_UNNotificationContactServiceMatchDetails *)v8 initWithCnContactIdentifier:v9 cnContactFullname:v10 isSuggestedContact:v11, v12, v13, v14, v15];
    }
  }

  return v7;
}

- (void)initWithCnContactIdentifier:(uint64_t)a3 cnContactFullname:(uint64_t)a4 isSuggestedContact:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_UNNotificationContactServiceMatchDetails initWithCnContactIdentifier:cnContactFullname:isSuggestedContact:]";
  OUTLINED_FUNCTION_0(&dword_270A33000, a1, a3, "%{public}s: DEPRECATED WITHOUT SUPPORT. Please use UserNotificationsServices/UNSNotificationContactServiceMatchDetails.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end