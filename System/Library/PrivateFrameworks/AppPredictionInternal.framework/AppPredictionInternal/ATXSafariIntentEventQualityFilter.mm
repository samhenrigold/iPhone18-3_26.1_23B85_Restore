@interface ATXSafariIntentEventQualityFilter
- (ATXSafariIntentEventQualityFilter)init;
- (ATXSafariIntentEventQualityFilter)initWithContextKitClient:(id)client;
- (BOOL)shouldAcceptSafariDonation:(id)donation;
- (BOOL)shouldBlockURLForObjectionableContent:(id)content;
@end

@implementation ATXSafariIntentEventQualityFilter

- (ATXSafariIntentEventQualityFilter)init
{
  v3 = objc_opt_new();
  v4 = [(ATXSafariIntentEventQualityFilter *)self initWithContextKitClient:v3];

  return v4;
}

- (ATXSafariIntentEventQualityFilter)initWithContextKitClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = ATXSafariIntentEventQualityFilter;
  v6 = [(ATXSafariIntentEventQualityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ckClient, client);
  }

  return v7;
}

- (BOOL)shouldAcceptSafariDonation:(id)donation
{
  v27 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  bundleId = [donationCopy bundleId];
  intentType = [donationCopy intentType];
  if ([bundleId isEqualToString:@"com.apple.mobilesafari"] && objc_msgSend(intentType, "isEqualToString:", @"NSUA_NSUserActivityTypeBrowsingWeb"))
  {
    action = [donationCopy action];

    if (!action)
    {
      webpageURL = __atxlog_handle_default(v8);
      if (os_log_type_enabled(webpageURL, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v25 = 138412290;
        v26 = v22;
        _os_log_impl(&dword_2263AA000, webpageURL, OS_LOG_TYPE_DEFAULT, "%@ - No ATXAction found. Skipping this action.", &v25, 0xCu);
      }

      goto LABEL_15;
    }

    action2 = [donationCopy action];
    userActivity = [action2 userActivity];
    webpageURL = [userActivity webpageURL];

    absoluteString = [webpageURL absoluteString];
    v13 = [absoluteString length];

    if (v13)
    {
      v15 = [(ATXSafariIntentEventQualityFilter *)self shouldBlockURLForObjectionableContent:webpageURL];
      if (!v15)
      {
        v20 = 1;
        goto LABEL_16;
      }

      v16 = __atxlog_handle_default(v15);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v25 = 138412290;
      v26 = v18;
      v19 = "%@ - Objectionable Safari donation found by ContextKit. Skipping this action.";
    }

    else
    {
      v16 = __atxlog_handle_default(v14);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

LABEL_15:
        v20 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v23 = objc_opt_class();
      v18 = NSStringFromClass(v23);
      v25 = 138412290;
      v26 = v18;
      v19 = "%@ - No webpageURL found. Skipping this action.";
    }

    _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, v19, &v25, 0xCu);

    goto LABEL_14;
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (BOOL)shouldBlockURLForObjectionableContent:(id)content
{
  contentCopy = content;
  ckClient = [(ATXSafariIntentEventQualityFilter *)self ckClient];
  v6 = [ckClient level1TopicIdsForURL:contentCopy];

  LOBYTE(contentCopy) = [v6 containsObject:@"EC9001"];
  return contentCopy;
}

@end