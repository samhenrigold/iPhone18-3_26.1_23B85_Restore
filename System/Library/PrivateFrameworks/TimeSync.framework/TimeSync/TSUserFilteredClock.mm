@interface TSUserFilteredClock
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (BOOL)waitTimeSyncTimeUpdate;
- (TSUserFilteredClock)initWithImplDC:(id)c;
@end

@implementation TSUserFilteredClock

- (TSUserFilteredClock)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TSUserFilteredClock *)self initWithImplDC:&v11];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSUserFilteredClock;
  v5 = [(TSKernelClock *)&v9 initWithImplDC:cCopy];
  if (v5)
  {
    v6 = cCopy;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

- (BOOL)waitTimeSyncTimeUpdate
{
  impl = self->_impl;
  if (impl)
  {
    LOBYTE(impl) = [(TSDCUserFilteredClock *)impl waitTimeSyncTimeUpdate];
  }

  return impl;
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___TSUserFilteredClock;
  v8 = objc_msgSendSuper2(&v17, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  [v8 appendFormat:indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    [v8 appendFormat:objc_msgSend(v9, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:?];

  if (v11)
  {
    [v8 appendFormat:objc_msgSend(v11, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:?];

  if (v12)
  {
    [v8 appendFormat:objc_msgSend(v12, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:?];

  if (v13)
  {
    bOOLValue = [v13 BOOLValue];
    v15 = @"NO";
    if (bOOLValue)
    {
      v15 = @"YES";
    }

    [v8 appendFormat:v15];
  }

  else
  {
    [v8 appendString:?];
  }

  return v8;
}

- (void)initWithImplDC:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136316418;
    v7 = "[kernelClock isKindOfClass:[TSDCUserFilteredClock class]]";
    v8 = 2048;
    v9 = 0;
    v10 = 2048;
    v11 = 0;
    v12 = 2080;
    v13 = "";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSUserFilteredClock.m";
    v16 = 1024;
    v17 = 47;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v6, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
}

@end