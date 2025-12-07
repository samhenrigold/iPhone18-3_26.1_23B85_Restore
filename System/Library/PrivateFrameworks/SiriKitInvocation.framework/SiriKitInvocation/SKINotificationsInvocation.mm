@interface SKINotificationsInvocation
+ (id)announceNotificationsRequestFromAnnounceDirectInvocationPayload:(id)payload;
+ (id)announcePayloadFromUserData:(id)data;
@end

@implementation SKINotificationsInvocation

+ (id)announceNotificationsRequestFromAnnounceDirectInvocationPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.notifications.announceNotification"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  appBundleId = [payloadCopy appBundleId];
  v8 = [appBundleId length];

  if (v8)
  {
    appBundleId2 = [payloadCopy appBundleId];
    [v6 setValue:appBundleId2 forKey:@"appBundleId"];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [v6 setValue:v10 forKey:@"synchronousBurstIndex"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isMediaPlaying")}];
  [v6 setValue:v11 forKey:@"isMediaPlaying"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isSameTypeAsLastAnnouncement")}];
  [v6 setValue:v12 forKey:@"isSameTypeAsLastAnnouncement"];

  notification = [payloadCopy notification];
  request = [notification request];

  content = [request content];
  identifier = [request identifier];
  v17 = [identifier length];

  if (v17)
  {
    identifier2 = [request identifier];
    [v6 setValue:identifier2 forKey:@"notificationId"];
  }

  notification2 = [payloadCopy notification];
  date = [notification2 date];

  if (date)
  {
    notification3 = [payloadCopy notification];
    date2 = [notification3 date];
    [v6 setValue:date2 forKey:@"notificationDate"];
  }

  title = [content title];

  if (title)
  {
    title2 = [content title];
    [v6 setValue:title2 forKey:@"notificationTitle"];
  }

  subtitle = [content subtitle];

  if (subtitle)
  {
    subtitle2 = [content subtitle];
    [v6 setValue:subtitle2 forKey:@"notificationSubtitle"];
  }

  body = [content body];

  if (body)
  {
    body2 = [content body];
    [v6 setValue:body2 forKey:@"notificationBody"];
  }

  threadIdentifier = [content threadIdentifier];

  if (threadIdentifier)
  {
    threadIdentifier2 = [content threadIdentifier];
    [v6 setValue:threadIdentifier2 forKey:@"notificationThreadId"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(content, "interruptionLevel")}];
  [v6 setValue:v31 forKey:@"interruptionLevel"];

  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [v6 setValue:v32 forKey:@"announcePlatform"];

  v40 = 0;
  v33 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v40];
  v34 = v40;
  v35 = v34;
  if (v33)
  {
    [v6 setValue:v33 forKey:@"announcePayload"];
  }

  else
  {
    v36 = SKIDefaultLog(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [(SKINotificationsInvocation *)v35 announceNotificationsRequestFromAnnounceDirectInvocationPayload:v36];
    }
  }

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v37 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v38 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v37];

  return v38;
}

+ (id)announcePayloadFromUserData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"announcePayload"];
  v9 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    v7 = SKIDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SKINotificationsInvocation *)v6 announceNotificationsRequestFromAnnounceDirectInvocationPayload:v7];
    }
  }

  return v4;
}

+ (void)announceNotificationsRequestFromAnnounceDirectInvocationPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error unarchiving SKIAnnounceNotificationDirectInvocationPayload from userData for SKINotificationsInvocation: %@", &v2, 0xCu);
}

@end