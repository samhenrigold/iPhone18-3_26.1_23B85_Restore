@interface IMDCollaborationNoticeRateLimiter
+ (id)loadNoticeEventHistory;
+ (id)peristencePath;
- (BOOL)shouldSendNotice:(id)notice;
- (IMDCollaborationNoticeRateLimiter)init;
- (id)dateLastUpdatedForURL:(id)l;
- (int64_t)thresholdForNoticeType:(int64_t)type;
- (void)didSendNotice:(id)notice;
- (void)saveNoticeEventHistory;
@end

@implementation IMDCollaborationNoticeRateLimiter

- (IMDCollaborationNoticeRateLimiter)init
{
  v8.receiver = self;
  v8.super_class = IMDCollaborationNoticeRateLimiter;
  v2 = [(IMDCollaborationNoticeRateLimiter *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("IMDCollaborationNoticeRateLimiter.persistenceQueue", 0);
    persistenceQueue = v2->_persistenceQueue;
    v2->_persistenceQueue = v3;

    v5 = +[IMDCollaborationNoticeRateLimiter loadNoticeEventHistory];
    noticeEventHistory = v2->_noticeEventHistory;
    v2->_noticeEventHistory = v5;
  }

  return v2;
}

- (BOOL)shouldSendNotice:(id)notice
{
  v44 = *MEMORY[0x277D85DE8];
  noticeCopy = notice;
  if (noticeCopy)
  {
    v5 = [IMDCollaborationNoticeDispatcher unarchiveNoticeTransmissionEvent:noticeCopy];
    highlightURL = [v5 highlightURL];
    absoluteString = [highlightURL absoluteString];

    if (!absoluteString)
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D836C();
      }

      v9 = 0;
      goto LABEL_33;
    }

    if (IMGetDomainBoolForKeyWithDefaultValue())
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "RateLimiter: Overriden by kRateLimiterOverride, approved to send.", buf, 2u);
        }
      }
    }

    else
    {
      noticeEventHistory = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v12 = [noticeEventHistory objectForKey:absoluteString];

      if (v12)
      {
        v13 = +[IMDCollaborationNoticeTypeGenerator sharedGenerator];
        v14 = [v13 typeForHighlightEvent:v5];

        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
        stringValue = [v15 stringValue];

        noticeEventHistory2 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
        v17 = [noticeEventHistory2 objectForKeyedSubscript:absoluteString];
        v18 = [v17 objectForKeyedSubscript:stringValue];

        if (v18)
        {
          date = [MEMORY[0x277CBEAA8] date];
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          v20 = [currentCalendar components:64 fromDate:v18 toDate:date options:0];

          v21 = [(IMDCollaborationNoticeRateLimiter *)self thresholdForNoticeType:v14];
          minute = [v20 minute];
          v9 = minute >= v21;
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              if (minute < v21)
              {
                v24 = @"NO";
              }

              else
              {
                v24 = @"YES";
              }

              v33 = v20;
              v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "minute", v24)}];
              [MEMORY[0x277CCABB0] numberWithInteger:v21];
              *buf = 138413058;
              v37 = v31;
              v38 = 2112;
              v39 = stringValue;
              v40 = 2112;
              v41 = v25;
              v43 = v42 = 2112;
              v32 = v25;
              v26 = v43;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "RateLimiter: result=%@ for noticeType: %@, elapsedMinutes: %@ < threshold: %@", buf, 0x2Au);

              v20 = v33;
            }
          }

          if (minute < v21)
          {
            noticeEventHistory3 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
            v28 = [noticeEventHistory3 objectForKeyedSubscript:absoluteString];
            [v28 setObject:date forKeyedSubscript:@"lastUpdated"];
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = stringValue;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "RateLimiter: noticeType (%@) hasn't been sent before, approved to send.", buf, 0xCu);
            }
          }

          v9 = 1;
        }

        goto LABEL_33;
      }
    }

    v9 = 1;
LABEL_33:

    goto LABEL_34;
  }

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D83E4();
  }

  v9 = 0;
LABEL_34:

  return v9;
}

- (void)didSendNotice:(id)notice
{
  v31 = *MEMORY[0x277D85DE8];
  noticeCopy = notice;
  if (noticeCopy)
  {
    v5 = [IMDCollaborationNoticeDispatcher unarchiveNoticeTransmissionEvent:noticeCopy];
    highlightURL = [v5 highlightURL];
    absoluteString = [highlightURL absoluteString];

    if (absoluteString)
    {
      v8 = +[IMDCollaborationNoticeTypeGenerator sharedGenerator];
      v9 = [v8 typeForHighlightEvent:v5];

      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      stringValue = [v10 stringValue];

      date = [MEMORY[0x277CBEAA8] date];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v23 = 136315906;
          v24 = "[IMDCollaborationNoticeRateLimiter didSendNotice:]";
          v25 = 2112;
          v26 = absoluteString;
          v27 = 2112;
          v28 = stringValue;
          v29 = 2112;
          v30 = date;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%s url: %@, noticeType: %@ => %@", &v23, 0x2Au);
        }
      }

      noticeEventHistory = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v15 = [noticeEventHistory objectForKey:absoluteString];
      v16 = v15 == 0;

      if (v16)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        noticeEventHistory2 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
        [noticeEventHistory2 setObject:dictionary forKeyedSubscript:absoluteString];
      }

      noticeEventHistory3 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v20 = [noticeEventHistory3 objectForKeyedSubscript:absoluteString];
      [v20 setObject:date forKeyedSubscript:@"lastUpdated"];

      noticeEventHistory4 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
      v22 = [noticeEventHistory4 objectForKeyedSubscript:absoluteString];
      [v22 setObject:date forKeyedSubscript:stringValue];

      [(IMDCollaborationNoticeRateLimiter *)self saveNoticeEventHistory];
    }

    else
    {
      stringValue = IMLogHandleForCategory();
      if (os_log_type_enabled(stringValue, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D845C();
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D84D4();
    }
  }
}

- (id)dateLastUpdatedForURL:(id)l
{
  absoluteString = [l absoluteString];
  noticeEventHistory = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
  v6 = [noticeEventHistory objectForKey:absoluteString];

  if (v6)
  {
    noticeEventHistory2 = [(IMDCollaborationNoticeRateLimiter *)self noticeEventHistory];
    v8 = [noticeEventHistory2 objectForKeyedSubscript:absoluteString];
    v9 = [v8 objectForKeyedSubscript:@"lastUpdated"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)thresholdForNoticeType:(int64_t)type
{
  if ((type - 8) < 2)
  {
    return MEMORY[0x2821F9670](IMDCollaborationNoticeRateLimiter, sel_participantChangeThreshold);
  }

  if ((type - 2) > 1)
  {
    return MEMORY[0x2821F9670](IMDCollaborationNoticeRateLimiter, sel_defaultThreshold);
  }

  return MEMORY[0x2821F9670](IMDCollaborationNoticeRateLimiter, sel_commentThreshold);
}

+ (id)peristencePath
{
  if (qword_281421258 != -1)
  {
    sub_22B7D854C();
  }

  v3 = qword_281421250;

  return v3;
}

+ (id)loadNoticeEventHistory
{
  v20 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = +[IMDCollaborationNoticeRateLimiter peristencePath];
  v4 = [defaultManager fileExistsAtPath:v3];

  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = +[IMDCollaborationNoticeRateLimiter peristencePath];
    v7 = [v5 fileURLWithPath:v6];

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfURL:v7];
    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v8;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Loaded noticeEventHistory: %@", &v18, 0xCu);
        }
      }

      dictionary = v8;
    }

    else
    {
      if (v9)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Loaded empty dictionary, creating a new dictionary.", &v18, 2u);
        }
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    dictionary2 = dictionary;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Creating rateLimiter persistence.", &v18, 2u);
      }
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = +[IMDCollaborationNoticeRateLimiter peristencePath];
    [defaultManager2 createFileAtPath:v14 contents:0 attributes:0];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  return dictionary2;
}

- (void)saveNoticeEventHistory
{
  persistenceQueue = self->_persistenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65EADC;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_sync(persistenceQueue, block);
}

@end