@interface NSNull(SiriCoreSQLiteValue)
- (__CFString)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue;
@end

@implementation NSNull(SiriCoreSQLiteValue)

- (__CFString)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return @"null";
  }

  v4 = *MEMORY[0x277CEF0B0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[NSNull(SiriCoreSQLiteValue) siriCoreSQLiteValue_escapedString:]";
    v8 = 2112;
    selfCopy = self;
    _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s Using %@ as identifier is NOT supported.", &v6, 0x16u);
  }

  return 0;
}

@end