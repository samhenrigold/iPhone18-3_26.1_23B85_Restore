@interface ATLLoggerObj
+ (id)FormatLogWithLine:(int)line fmt:(id)fmt;
+ (void)Log:(int)log msg:(id)msg;
@end

@implementation ATLLoggerObj

+ (void)Log:(int)log msg:(id)msg
{
  logCopy = log;
  v9 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  v6 = ATLLogObject(msgCopy);
  if (os_log_type_enabled(v6, logCopy))
  {
    v7 = 138412290;
    v8 = msgCopy;
    _os_log_impl(&dword_22EEF5000, v6, logCopy, "%@", &v7, 0xCu);
  }
}

+ (id)FormatLogWithLine:(int)line fmt:(id)fmt
{
  v4 = *&line;
  v5 = MEMORY[0x277CCACA8];
  fmtCopy = fmt;
  v7 = [[v5 alloc] initWithFormat:fmtCopy arguments:&v11];

  v8 = [(objc_class *)v5 stringWithFormat:@"OVM/%d : %@", v4, v7];

  return v8;
}

@end