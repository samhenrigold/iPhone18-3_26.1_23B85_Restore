@interface WFPortalContext
- (WFPortalContext)initWithCaptiveProfile:(id)profile anqpVenueURLs:(id)ls;
- (id)fullPortalURLString;
- (id)portalHostnameForDisplay;
@end

@implementation WFPortalContext

- (id)fullPortalURLString
{
  venueInfoURL = [(WFPortalContext *)self venueInfoURL];

  if (venueInfoURL)
  {
    [(WFPortalContext *)self venueInfoURL];
  }

  else
  {
    [(WFPortalContext *)self userPortalURL];
  }
  v4 = ;

  return v4;
}

- (WFPortalContext)initWithCaptiveProfile:(id)profile anqpVenueURLs:(id)ls
{
  v50 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  lsCopy = ls;
  v43.receiver = self;
  v43.super_class = WFPortalContext;
  v8 = [(WFPortalContext *)&v43 init];
  if (v8)
  {
    if (lsCopy && [(NSString *)lsCopy count])
    {
      v9 = WFLogForCategory(0);
      v10 = OSLogForWFLogLevel(3uLL);
      v11 = v10;
      if (WFCurrentLogLevel(v10, v12) >= 3 && v9 && os_log_type_enabled(v9, v11))
      {
        v44 = 136315394;
        v45 = "[WFPortalContext initWithCaptiveProfile:anqpVenueURLs:]";
        v46 = 2112;
        v47 = lsCopy;
        OUTLINED_FUNCTION_0();
        _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      }

      p_super = [(NSString *)lsCopy firstObject];
      [(WFPortalContext *)v8 setVenueInfoURL:p_super];
    }

    else if (profileCopy)
    {
      v19 = [profileCopy objectForKey:*MEMORY[0x277CF7F98]];
      venueInfoURL = v8->_venueInfoURL;
      v8->_venueInfoURL = v19;

      v21 = [profileCopy objectForKey:*MEMORY[0x277CF7F88]];
      userPortalURL = v8->_userPortalURL;
      v8->_userPortalURL = v21;

      p_super = WFLogForCategory(0);
      v23 = OSLogForWFLogLevel(3uLL);
      v24 = v23;
      if (WFCurrentLogLevel(v23, v25) >= 3 && p_super && os_log_type_enabled(p_super, v24))
      {
        v26 = v8->_venueInfoURL;
        v27 = v8->_userPortalURL;
        v44 = 136315650;
        v45 = "[WFPortalContext initWithCaptiveProfile:anqpVenueURLs:]";
        v46 = 2112;
        v47 = v26;
        v48 = 2112;
        v49 = v27;
        OUTLINED_FUNCTION_0();
        _os_log_impl(v28, v29, v30, v31, v32, 0x20u);
      }
    }

    else
    {
      v34 = WFLogForCategory(0);
      v35 = OSLogForWFLogLevel(4uLL);
      v36 = v35;
      if (WFCurrentLogLevel(v35, v37) >= 4 && v34 && os_log_type_enabled(v34, v36))
      {
        v44 = 136315138;
        v45 = "[WFPortalContext initWithCaptiveProfile:anqpVenueURLs:]";
        OUTLINED_FUNCTION_0();
        _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      }

      p_super = &v8->super;
      v8 = 0;
    }
  }

  else
  {
    p_super = 0;
  }

  return v8;
}

- (id)portalHostnameForDisplay
{
  v16 = *MEMORY[0x277D85DE8];
  fullPortalURLString = [(WFPortalContext *)self fullPortalURLString];
  if (!fullPortalURLString)
  {
LABEL_10:
    v4 = 0;
    host = 0;
    goto LABEL_4;
  }

  v3 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:fullPortalURLString];
  if (!v3)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(3uLL);
    v10 = v9;
    if (WFCurrentLogLevel(v9, v11) >= 3 && v8 && os_log_type_enabled(v8, v10))
    {
      v12 = 136315394;
      v13 = "[WFPortalContext portalHostnameForDisplay]";
      v14 = 2112;
      v15 = fullPortalURLString;
      _os_log_impl(&dword_273ECD000, v8, v10, "%s: urlComponents nil for URL %@", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  v4 = v3;
  host = [v3 host];
LABEL_4:
  v6 = host;

  return host;
}

@end