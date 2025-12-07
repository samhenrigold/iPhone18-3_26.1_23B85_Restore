@interface UIResponder(SKUIExtensions)
- (uint64_t)_SKUIView;
- (void)_SKUIView;
@end

@implementation UIResponder(SKUIExtensions)

- (uint64_t)_SKUIView
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(UIResponder(SKUIExtensions) *)v4 _SKUIView:v5];
      }
    }
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v14) = shouldLog | 2;
  }

  else
  {
    LODWORD(v14) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v14 = v14;
  }

  else
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v16 = NSStringFromSelector(a2);
  v19 = 138412546;
  selfCopy = self;
  v21 = 2112;
  v22 = v16;
  v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_215BAE000, oSLogObject, 1, "Returning nil because %@ doesn't implement %@.", &v19, 22);

  if (v17)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_14:
  }

  return 0;
}

- (void)_SKUIView
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[UIResponder(SKUIExtensions) _SKUIView]";
}

@end