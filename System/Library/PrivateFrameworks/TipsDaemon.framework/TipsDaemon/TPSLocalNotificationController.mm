@interface TPSLocalNotificationController
- (TPSLocalNotificationController)initWithBundleIdentifier:(id)identifier;
- (id)personalizedStringForText:(id)text;
- (void)notificationCompletedForIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD error:(id)error;
- (void)removeAllNotifications;
- (void)removeNotificationWithIdentifier:(id)identifier;
- (void)sendNotificationWithIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD title:(id)title text:(id)text attachmentURL:(id)l extensionPayload:(id)payload;
- (void)showNotificationForNotificationCache:(id)cache attachmentURL:(id)l;
@end

@implementation TPSLocalNotificationController

- (TPSLocalNotificationController)initWithBundleIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = TPSLocalNotificationController;
  return [(TPSLocalNotificationController *)&v4 init];
}

- (id)personalizedStringForText:(id)text
{
  v3 = MEMORY[0x277D716E8];
  textCopy = text;
  deviceMarketingName = [v3 deviceMarketingName];
  v6 = [textCopy stringByReplacingOccurrencesOfString:@"{{device_name}}" withString:deviceMarketingName];

  return v6;
}

- (void)showNotificationForNotificationCache:(id)cache attachmentURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  lCopy = l;
  if (([MEMORY[0x277D71740] suppressNotifications] & 1) == 0)
  {
    document = [cacheCopy document];
    notification = [document notification];
    title = [notification title];
    v11 = [(TPSLocalNotificationController *)self personalizedStringForText:title];

    text = [notification text];
    v13 = [(TPSLocalNotificationController *)self personalizedStringForText:text];

    identifier = [document identifier];
    collectionIdentifier = [cacheCopy collectionIdentifier];
    correlationID = [document correlationID];
    if (([v11 length] || objc_msgSend(v13, "length")) && identifier | collectionIdentifier)
    {
      [cacheCopy extensionPayload];
      v22 = notification;
      v17 = lCopy;
      v18 = v13;
      v20 = v19 = correlationID;
      [(TPSLocalNotificationController *)self sendNotificationWithIdentifier:identifier collectionID:collectionIdentifier correlationID:v19 title:v11 text:v18 attachmentURL:v17 extensionPayload:v20];

      correlationID = v19;
      v13 = v18;
      lCopy = v17;
      notification = v22;
    }

    else
    {
      daemon = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v24 = v11;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = identifier;
        v29 = 2112;
        v30 = collectionIdentifier;
        _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Notification document missing information Title: %@ text: %@ identifier: %@ collectionID: %@.", buf, 0x2Au);
      }
    }
  }
}

- (void)sendNotificationWithIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD title:(id)title text:(id)text attachmentURL:(id)l extensionPayload:(id)payload
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = identifierCopy;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = iDCopy;
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Send notification with identifier %@, collectionID %@, correlationID %@", &v15, 0x20u);
  }
}

- (void)removeAllNotifications
{
  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Remove all notifications.", v3, 2u);
  }
}

- (void)removeNotificationWithIdentifier:(id)identifier
{
  v7 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = identifierCopy;
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Remove notification for identifier: %@.", &v5, 0xCu);
  }
}

- (void)notificationCompletedForIdentifier:(id)identifier collectionID:(id)d correlationID:(id)iD error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  if (!identifierCopy)
  {
    identifierCopy = dCopy;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{+[TPSNotificationController remainingCountOfNotificationsUntilOptOut](TPSNotificationController, "remainingCountOfNotificationsUntilOptOut")}];
  v14 = MEMORY[0x277D71640];
  if (errorCopy)
  {
    localizedDescription = [errorCopy localizedDescription];
    v16 = [v14 eventWithContentID:identifierCopy collectionID:dCopy correlationID:iDCopy remainingNotificationsCount:v13 errorCode:localizedDescription];
    [v16 log];

    daemon = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = errorCopy;
      v18 = "Notification error %@";
LABEL_8:
      _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, v18, &v20, 0xCu);
    }
  }

  else
  {
    v19 = [MEMORY[0x277D71640] eventWithContentID:identifierCopy collectionID:dCopy correlationID:iDCopy remainingNotificationsCount:v13 errorCode:0];
    [v19 log];

    daemon = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = identifierCopy;
      v18 = "Notification sent for identifier %@";
      goto LABEL_8;
    }
  }
}

@end