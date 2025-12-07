@interface NCNotificationCommunicationsSummaryContentProvider
- (id)_summaryStringForNotificationRequest:(id)request;
- (id)summaryTitle;
@end

@implementation NCNotificationCommunicationsSummaryContentProvider

- (id)summaryTitle
{
  notificationRequests = [(NCNotificationSummaryContentProvider *)self notificationRequests];
  v4 = [notificationRequests indexOfObjectPassingTest:&__block_literal_global_35];

  notificationRequests2 = [(NCNotificationSummaryContentProvider *)self notificationRequests];
  v6 = [notificationRequests2 indexOfObjectPassingTest:&__block_literal_global_164];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = NCUserNotificationsUIKitFrameworkBundle(v7);
    v10 = [v9 localizedStringForKey:@"NOTIFICATION_SUMMARY_COMMUNICATION_CALLS" value:&stru_282FE84F8 table:0];
    v8 = [&stru_282FE84F8 stringByAppendingString:v10];

    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }

    v12 = NCUserNotificationsUIKitFrameworkBundle(v11);
    v13 = [v12 localizedStringForKey:@"NOTIFICATION_SUMMARY_CONNECTOR_AND" value:&stru_282FE84F8 table:0];
    v14 = [(__CFString *)v8 stringByAppendingFormat:@" %@ ", v13];

    v8 = v14;
    goto LABEL_6;
  }

  v8 = &stru_282FE84F8;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v15 = NCUserNotificationsUIKitFrameworkBundle(v7);
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_SUMMARY_COMMUNICATION_MESSAGES" value:&stru_282FE84F8 table:0];
    v17 = [(__CFString *)v8 stringByAppendingString:v16];

    v8 = v17;
  }

LABEL_7:

  return v8;
}

uint64_t __66__NCNotificationCommunicationsSummaryContentProvider_summaryTitle__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 content];
  v3 = [v2 isMessagingType];

  return v3;
}

uint64_t __66__NCNotificationCommunicationsSummaryContentProvider_summaryTitle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 content];
  v3 = [v2 isCallType];

  return v3;
}

- (id)_summaryStringForNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = [(NCNotificationSummaryContentProvider *)self _summaryStringForCommunicationNotificationRequest:requestCopy];
  if ([(NCNotificationSummaryContentProvider *)self _shouldShowContentForNotificationRequest:requestCopy]&& v5)
  {
    defaultHeader = v5;
  }

  else
  {
    content = [requestCopy content];
    defaultHeader = [content defaultHeader];
  }

  return defaultHeader;
}

@end