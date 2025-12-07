@interface UIResponder(SUUIExtensions)
- (uint64_t)_SUUIView;
@end

@implementation UIResponder(SUUIExtensions)

- (uint64_t)_SUUIView
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = NSStringFromSelector(a2);
  v11 = 138412546;
  selfCopy = self;
  v13 = 2112;
  v14 = v8;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &dword_259CB8000, oSLogObject, 1, "Returning nil because %@ doesn't implement %@.", &v11, 22);

  if (v9)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_10:
  }

  return 0;
}

@end