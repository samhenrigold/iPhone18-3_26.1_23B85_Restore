@interface CKRecordUtilities
+ (id)recordIDUsingName:(id)name zoneID:(id)d;
+ (id)recordIDUsingSalt:(id)salt zoneID:(id)d guid:(id)guid;
+ (id)recordNameForRecordChangeTag:(id)tag ckRecordID:(id)d salt:(id)salt guid:(id)guid;
+ (id)recordNameUsingSalt:(id)salt guid:(id)guid;
@end

@implementation CKRecordUtilities

+ (id)recordNameUsingSalt:(id)salt guid:(id)guid
{
  v17 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  guidCopy = guid;
  if ([guidCopy length] && objc_msgSend(saltCopy, "length"))
  {
    v7 = MEMORY[0x231896740](guidCopy, saltCopy);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138412802;
        v12 = v7;
        v13 = 2112;
        v14 = guidCopy;
        v15 = 2112;
        v16 = saltCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Computed message record name hash %@ from guid %@ and salt %@", &v11, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v11 = 138412802;
        v12 = 0;
        v13 = 2112;
        v14 = guidCopy;
        v15 = 2112;
        v16 = saltCopy;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not compute message record name hash %@ from guid %@ and salt %@ as one or both are nil", &v11, 0x20u);
      }
    }

    v7 = 0;
  }

  return v7;
}

+ (id)recordNameForRecordChangeTag:(id)tag ckRecordID:(id)d salt:(id)salt guid:(id)guid
{
  dCopy = d;
  saltCopy = salt;
  guidCopy = guid;
  if ([dCopy length])
  {
    v12 = dCopy;
  }

  else
  {
    v12 = [self recordNameUsingSalt:saltCopy guid:guidCopy];
  }

  v13 = v12;

  return v13;
}

+ (id)recordIDUsingName:(id)name zoneID:(id)d
{
  nameCopy = name;
  dCopy = d;
  if ([nameCopy length])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:nameCopy zoneID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recordIDUsingSalt:(id)salt zoneID:(id)d guid:(id)guid
{
  dCopy = d;
  v9 = [self recordNameUsingSalt:salt guid:guid];
  v10 = [self recordIDUsingName:v9 zoneID:dCopy];

  return v10;
}

@end