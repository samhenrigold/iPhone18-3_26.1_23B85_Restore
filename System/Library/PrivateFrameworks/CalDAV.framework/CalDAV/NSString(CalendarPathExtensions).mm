@interface NSString(CalendarPathExtensions)
+ (id)stringWithContentsOfFile:()CalendarPathExtensions usingEncoding:;
@end

@implementation NSString(CalendarPathExtensions)

+ (id)stringWithContentsOfFile:()CalendarPathExtensions usingEncoding:
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  if (v6)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithData:v6 encoding:a4];
  }

  else
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    v9 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
    v10 = v9;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_242742000, v10, OS_LOG_TYPE_ERROR, "unable to read data at path : %@", &v12, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

@end