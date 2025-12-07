@interface IMDCollaborationNoticeTypeGenerator
+ (id)sharedGenerator;
- (IMDCollaborationNoticeTypeGenerator)init;
- (int64_t)processMentionForPersonHandle:(id)handle;
- (int64_t)processMentionForPersonIdentity:(id)identity highlightURL:(id)l;
- (int64_t)typeForHighlightEvent:(id)event;
@end

@implementation IMDCollaborationNoticeTypeGenerator

+ (id)sharedGenerator
{
  if (qword_27D8CFDD8 != -1)
  {
    sub_22B7D005C();
  }

  v3 = qword_27D8CFDD0;

  return v3;
}

- (IMDCollaborationNoticeTypeGenerator)init
{
  v6.receiver = self;
  v6.super_class = IMDCollaborationNoticeTypeGenerator;
  v2 = [(IMDCollaborationNoticeTypeGenerator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x231897B40](@"SWHighlightCenter", @"SharedWithYou"));
    highlightCenter = v2->_highlightCenter;
    v2->_highlightCenter = v3;
  }

  return v2;
}

- (int64_t)typeForHighlightEvent:(id)event
{
  eventCopy = event;
  if (objc_opt_respondsToSelector())
  {
    changeEventType = [eventCopy changeEventType];
    if (changeEventType == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = -1;
    }

    if (changeEventType == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([eventCopy mentionedPersonHandle], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
      {
        mentionedPersonHandle = [eventCopy mentionedPersonHandle];
        v7 = [(IMDCollaborationNoticeTypeGenerator *)self processMentionForPersonHandle:mentionedPersonHandle];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          if (objc_opt_respondsToSelector())
          {
            persistenceEventType = [eventCopy persistenceEventType];
            if ((persistenceEventType - 1) >= 4)
            {
              v7 = -1;
            }

            else
            {
              v7 = persistenceEventType + 3;
            }
          }

          else
          {
            v7 = -1;
          }

          goto LABEL_26;
        }

        mentionedPersonHandle = [eventCopy mentionedPersonIdentity];
        highlightURL = [eventCopy highlightURL];
        v7 = [(IMDCollaborationNoticeTypeGenerator *)self processMentionForPersonIdentity:mentionedPersonHandle highlightURL:highlightURL];
      }

      goto LABEL_26;
    }

    membershipEventType = [eventCopy membershipEventType];
    v9 = 9;
    if (membershipEventType != 2)
    {
      v9 = -1;
    }

    if (membershipEventType == 1)
    {
      v7 = 8;
    }

    else
    {
      v7 = v9;
    }
  }

LABEL_26:

  return v7;
}

- (int64_t)processMentionForPersonHandle:(id)handle
{
  v14 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (handleCopy)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = +[IMDAccountController sharedAccountController];
    activeAliases = [v5 activeAliases];
    v7 = [v4 setWithArray:activeAliases];

    if ([v7 containsObject:handleCopy])
    {
      v8 = 3;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = handleCopy;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received a mention for a handle not associated with local account: %@", &v12, 0xCu);
        }
      }

      v8 = -1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received a mention for a handle not associated with local account: %@", &v12, 0xCu);
      }
    }

    v8 = -1;
  }

  return v8;
}

- (int64_t)processMentionForPersonIdentity:(id)identity highlightURL:(id)l
{
  v51 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  lCopy = l;
  highlightCenter = [(IMDCollaborationNoticeTypeGenerator *)self highlightCenter];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    highlightCenter2 = [(IMDCollaborationNoticeTypeGenerator *)self highlightCenter];
    v44 = 0;
    v32 = [highlightCenter2 collaborationHighlightForURL:lCopy error:&v44];
    v31 = v44;

    if (v31)
    {
      v9 = 1;
    }

    else
    {
      v9 = v32 == 0;
    }

    v10 = !v9;
    v11 = IMOSLoggingEnabled();
    if (v10)
    {
      if (v11)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          stringIdentifier = [v32 stringIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = stringIdentifier;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Received a mention with a person identity for highlight: %@. Attempting to find the handle for the mentioned identity.", &buf, 0xCu);
        }
      }

      v14 = MEMORY[0x277CBEB98];
      v15 = +[IMDAccountController sharedAccountController];
      activeAliases = [v15 activeAliases];
      v34 = [v14 setWithArray:activeAliases];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v49 = 0x2020000000;
      v50 = -1;
      highlightCenter3 = [(IMDCollaborationNoticeTypeGenerator *)self highlightCenter];
      v30 = [highlightCenter3 fetchAttributionsForHighlight:v32];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      attributions = [v30 attributions];
      v19 = [attributions countByEnumeratingWithState:&v40 objects:v47 count:16];
      if (v19)
      {
        v20 = *v41;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v41 != v20)
            {
              objc_enumerationMutation(attributions);
            }

            collaborationMetadata = [*(*(&v40 + 1) + 8 * i) collaborationMetadata];
            if (objc_opt_respondsToSelector())
            {
              handleToIdentityMap = [collaborationMetadata handleToIdentityMap];
              v36[0] = MEMORY[0x277D85DD0];
              v36[1] = 3221225472;
              v36[2] = sub_22B50AF2C;
              v36[3] = &unk_278703250;
              v37 = identityCopy;
              v38 = v34;
              p_buf = &buf;
              [handleToIdentityMap enumerateKeysAndObjectsUsingBlock:v36];
            }
          }

          v19 = [attributions countByEnumeratingWithState:&v40 objects:v47 count:16];
        }

        while (v19);
      }

      if (*(*(&buf + 1) + 24) == 3)
      {
        v24 = @"IMCollaborationNoticeTypeMentionedMe";
      }

      else
      {
        v24 = @"IMCollaborationNoticeTypeInvalid";
      }

      v25 = v24;
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v45 = 138412290;
          v46 = v25;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "processMentionForPersonIdentity returning: %@", v45, 0xCu);
        }
      }

      v27 = *(*(&buf + 1) + 24);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (v11)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Received a notice for a URL without a tracked highlight, returning invalid for this notice. error: %@", &buf, 0xCu);
        }
      }

      v27 = -1;
    }
  }

  else
  {
    v27 = -1;
  }

  return v27;
}

@end