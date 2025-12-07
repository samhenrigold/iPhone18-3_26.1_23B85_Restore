@interface TSgPTPPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
+ (id)gPTPPortWithClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number;
+ (id)gPTPPortWithImplDC:(id)c;
- (TSgPTPPort)init;
- (TSgPTPPort)initWithClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number;
- (TSgPTPPort)initWithImplDC:(id)c;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (void)dealloc;
@end

@implementation TSgPTPPort

- (TSgPTPPort)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

+ (id)gPTPPortWithImplDC:(id)c
{
  cCopy = c;
  portType = [cCopy portType];
  if (portType > 8 || (v5 = [objc_alloc(*off_279DBDA20[portType]) initWithImplDC:?]) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [TSgPTPPort gPTPPortWithImplDC:cCopy];
    }

    v5 = 0;
  }

  return v5;
}

+ (id)gPTPPortWithClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number
{
  v4 = [_TSF_TSDgPTPPort gPTPPortWithClockIdentifier:"gPTPPortWithClockIdentifier:portNumber:" portNumber:?];
  v5 = [TSgPTPPort gPTPPortWithImplDC:?];

  return v5;
}

- (TSgPTPPort)initWithClockIdentifier:(unint64_t)identifier andPortNumber:(unsigned __int16)number
{
  v5 = [_TSF_TSDgPTPPort gPTPPortWithClockIdentifier:"gPTPPortWithClockIdentifier:portNumber:" portNumber:?];
  v6 = [(TSgPTPPort *)self initWithImplDC:?];

  return v6;
}

- (TSgPTPPort)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPPort initWithImplDC:?];
    goto LABEL_8;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPPort;
  v6 = [(TSgPTPPort *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (cCopy)
    {
      objc_storeStrong(&v6->_impl, c);
      goto LABEL_5;
    }

    [TSgPTPPort initWithImplDC:v6];
LABEL_8:
    v7 = 0;
  }

LABEL_5:

  return v7;
}

- (void)dealloc
{
  [(_TSF_TSDgPTPPort *)self->_impl finalizeNotifications];
  v3.receiver = self;
  v3.super_class = TSgPTPPort;
  [(TSgPTPPort *)&v3 dealloc];
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  string = [MEMORY[0x277CCAB68] string];
  v8 = [infoCopy objectForKeyedSubscript:?];
  [string appendFormat:indentCopy, v8];

  [string appendFormat:indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    [string appendFormat:objc_msgSend(v9, "unsignedShortValue")];
  }

  else
  {
    [string appendString:?];
  }

  [string appendFormat:indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:?];

  if (!v11)
  {
    goto LABEL_12;
  }

  intValue = [v11 intValue];
  if (intValue > 1)
  {
    if (intValue == 2 || intValue == 3)
    {
      goto LABEL_12;
    }

LABEL_11:
    [string appendFormat:objc_msgSend(v11, "intValue")];
    goto LABEL_13;
  }

  if (intValue > 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  [string appendString:?];
LABEL_13:
  [string appendFormat:indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:?];

  if (!v13)
  {
LABEL_18:
    [string appendString:?];
    goto LABEL_19;
  }

  intValue2 = [v13 intValue];
  if (intValue2 > 4)
  {
    if (intValue2 < 8 || intValue2 == 8)
    {
      goto LABEL_18;
    }
  }

  else if (intValue2 > 2 || intValue2 == 1 || intValue2 == 2)
  {
    goto LABEL_18;
  }

  [string appendFormat:objc_msgSend(v13, "intValue")];
LABEL_19:
  [string appendFormat:indentCopy];
  v15 = [infoCopy objectForKeyedSubscript:?];

  if (v15)
  {
    [string appendFormat:objc_msgSend(v15, "intValue")];
  }

  else
  {
    [string appendString:?];
  }

  [string appendFormat:indentCopy];
  v16 = [infoCopy objectForKeyedSubscript:?];

  if (v16)
  {
    [string appendFormat:objc_msgSend(v16, "BOOLValue")];
  }

  else
  {
    [string appendString:?];
  }

  return string;
}

- (id)getMetrics
{
  getMetrics = [(_TSF_TSDgPTPPort *)self->_impl getMetrics];
  if (getMetrics)
  {
    v3 = [[TSPortMetrics alloc] initWithDaemonMetrics:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getMetricsWithDelta:(id)delta
{
  impl = self->_impl;
  toDaemonMetrics = [delta toDaemonMetrics];
  v5 = [(_TSF_TSDgPTPPort *)impl getMetricsWithDelta:?];

  if (v5)
  {
    v6 = [[TSPortMetrics alloc] initWithDaemonMetrics:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)gPTPPortWithImplDC:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 136315650;
  v5 = [v3 UTF8String];
  v6 = 2048;
  v7 = objc_opt_class();
  v8 = 1024;
  v9 = [a1 portType];
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create port for %s %p %u", &v4, 0x1Cu);
}

- (void)initWithImplDC:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithImplDC:(void *)a1 .cold.2(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

@end