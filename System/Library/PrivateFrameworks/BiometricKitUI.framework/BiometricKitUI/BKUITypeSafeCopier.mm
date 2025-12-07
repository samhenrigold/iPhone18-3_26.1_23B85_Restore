@interface BKUITypeSafeCopier
+ (id)copy:(id)copy;
@end

@implementation BKUITypeSafeCopier

+ (id)copy:(id)copy
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:copy requiringSecureCoding:0 error:&v13];
  v4 = v13;
  if (!v4)
  {
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v12];
    v8 = v12;
    v5 = v8;
    if (!v8)
    {
      [v6 setRequiresSecureCoding:0];
      v10 = [v6 decodeObjectForKey:*MEMORY[0x277CCA308]];
      goto LABEL_9;
    }

    v7 = _BKUILoggingFacility(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 description];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_241B0A000, v7, OS_LOG_TYPE_DEFAULT, "[BKUITypeSafeDeepCopier copy], unarchive failed %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = _BKUILoggingFacility(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 description];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, "[BKUITypeSafeDeepCopier copy], archive failed %@", buf, 0xCu);
LABEL_7:
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end