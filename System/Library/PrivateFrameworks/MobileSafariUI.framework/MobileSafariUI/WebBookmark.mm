@interface WebBookmark
- (id)safari_bestCurrentURL;
@end

@implementation WebBookmark

- (id)safari_bestCurrentURL
{
  selfCopy = self;
  if (self)
  {
    if (([self isReadingListItem] & 1) == 0 || (objc_msgSend(MEMORY[0x277CEC5B8], "sharedNetworkObserver"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isNetworkReachable"), v2, v3))
    {
      address = [selfCopy address];
      _web_bestURLForUserTypedString = [address _web_bestURLForUserTypedString];
      goto LABEL_5;
    }

    if ([selfCopy isFullArchiveAvailable])
    {
      v14 = 0;
      v7 = [selfCopy webarchivePathInReaderForm:0 fileExists:&v14];
      address = v7;
      if (v14 != 1)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXReadingList(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(WebBookmark *)v9 safari_bestCurrentURL];
        }

        lockSync = [MEMORY[0x277D7B5A8] lockSync];
        if (lockSync)
        {
          [selfCopy setArchiveStatus:6];
          mainBookmarkCollection = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
          [mainBookmarkCollection saveBookmark:selfCopy];

          [MEMORY[0x277D7B5A8] unlockSync];
        }

        else
        {
          v13 = WBS_LOG_CHANNEL_PREFIXReadingList(lockSync, v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(WebBookmark *)v13 safari_bestCurrentURL];
          }
        }

        selfCopy = 0;
        goto LABEL_6;
      }

      _web_bestURLForUserTypedString = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0];
LABEL_5:
      selfCopy = _web_bestURLForUserTypedString;
LABEL_6:

      goto LABEL_7;
    }

    selfCopy = 0;
  }

LABEL_7:

  return selfCopy;
}

@end