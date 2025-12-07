@interface NSNumber(SiriCoreSQLiteValue)
- (id)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue;
- (id)siriCoreSQLiteValue_toData;
- (uint64_t)siriCoreSQLiteValue_type;
@end

@implementation NSNumber(SiriCoreSQLiteValue)

- (uint64_t)siriCoreSQLiteValue_type
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *[self objCType] - 66;
  if (v2 > 0x31)
  {
    goto LABEL_6;
  }

  if (((1 << v2) & 0x2848200028483) != 0)
  {
    return 3;
  }

  if (((1 << v2) & 0x1400000000) != 0)
  {
    return 2;
  }

LABEL_6:
  v4 = *MEMORY[0x277CEF0B0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
  {
    selfCopy = self;
    v6 = v4;
    v7 = 136315650;
    v8 = "[NSNumber(SiriCoreSQLiteValue) siriCoreSQLiteValue_type]";
    v9 = 2112;
    selfCopy2 = self;
    v11 = 2080;
    objCType = [self objCType];
    _os_log_error_impl(&dword_2669D1000, v6, OS_LOG_TYPE_ERROR, "%s %@ (objCType = %s)", &v7, 0x20u);
  }

  return 0;
}

- (id)siriCoreSQLiteValue_toData
{
  siriCoreSQLiteValue_toString = [self siriCoreSQLiteValue_toString];
  siriCoreSQLiteValue_toData = [siriCoreSQLiteValue_toString siriCoreSQLiteValue_toData];

  return siriCoreSQLiteValue_toData;
}

- (id)siriCoreSQLiteValue_escapedString:()SiriCoreSQLiteValue
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CEF0B0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B0], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[NSNumber(SiriCoreSQLiteValue) siriCoreSQLiteValue_escapedString:]";
      v9 = 2112;
      selfCopy = self;
      _os_log_error_impl(&dword_2669D1000, v4, OS_LOG_TYPE_ERROR, "%s Using %@ as identifier is NOT supported.", &v7, 0x16u);
    }

    stringValue = 0;
  }

  else
  {
    stringValue = [self stringValue];
  }

  return stringValue;
}

@end