@interface TSgPTPLocalClockPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSgPTPLocalClockPort)initWithImplDC:(id)c;
@end

@implementation TSgPTPLocalClockPort

- (TSgPTPLocalClockPort)initWithImplDC:(id)c
{
  cCopy = c;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPLocalClockPort initWithImplDC:];
    impl = v10;
    v5 = v11;
    goto LABEL_4;
  }

  v9.receiver = self;
  v9.super_class = TSgPTPLocalClockPort;
  v5 = [(TSgPTPPort *)&v9 initWithImplDC:cCopy];
  if (v5)
  {
    v6 = cCopy;
    impl = v5->_impl;
    v5->_impl = v6;
LABEL_4:
  }

  return v5;
}

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v38.receiver = self;
  v38.super_class = &OBJC_METACLASS___TSgPTPLocalClockPort;
  v8 = objc_msgSendSuper2(&v38, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  [v8 appendFormat:indentCopy];
  v9 = [infoCopy objectForKeyedSubscript:?];
  v10 = v9;
  if (v9)
  {
    [v8 appendFormat:objc_msgSend(v9, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v11 = [infoCopy objectForKeyedSubscript:?];

  if (v11)
  {
    [v8 appendFormat:objc_msgSend(v11, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:?];

  if (v12)
  {
    [v8 appendFormat:objc_msgSend(v12, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:?];

  if (v13)
  {
    [v8 appendFormat:objc_msgSend(v13, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v14 = [infoCopy objectForKeyedSubscript:?];

  if (v14)
  {
    [v8 appendFormat:objc_msgSend(v14, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v15 = [infoCopy objectForKeyedSubscript:?];

  if (v15)
  {
    [v8 appendFormat:objc_msgSend(v15, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v16 = [infoCopy objectForKeyedSubscript:?];

  if (v16)
  {
    [v8 appendFormat:objc_msgSend(v16, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v17 = [infoCopy objectForKeyedSubscript:?];

  if (v17)
  {
    [v8 appendFormat:objc_msgSend(v17, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v18 = [infoCopy objectForKeyedSubscript:?];

  if (v18)
  {
    [v8 appendFormat:objc_msgSend(v18, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v19 = [infoCopy objectForKeyedSubscript:?];

  if (v19)
  {
    [v8 appendFormat:objc_msgSend(v19, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v20 = [infoCopy objectForKeyedSubscript:?];

  if (v20)
  {
    [v8 appendFormat:objc_msgSend(v20, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v21 = [infoCopy objectForKeyedSubscript:?];

  if (v21)
  {
    [v8 appendFormat:objc_msgSend(v21, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v22 = [infoCopy objectForKeyedSubscript:?];

  if (v22)
  {
    [v8 appendFormat:objc_msgSend(v22, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v23 = [infoCopy objectForKeyedSubscript:?];

  if (v23)
  {
    [v8 appendFormat:objc_msgSend(v23, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v24 = [infoCopy objectForKeyedSubscript:?];

  if (v24)
  {
    [v8 appendFormat:objc_msgSend(v24, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v25 = [infoCopy objectForKeyedSubscript:?];

  if (v25)
  {
    [v8 appendFormat:objc_msgSend(v25, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v26 = [infoCopy objectForKeyedSubscript:?];

  if (v26)
  {
    [v26 BOOLValue];
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v27 = [infoCopy objectForKeyedSubscript:?];

  if (v27)
  {
    [v27 BOOLValue];
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v28 = [infoCopy objectForKeyedSubscript:?];

  if (v28)
  {
    [v28 BOOLValue];
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v29 = [infoCopy objectForKeyedSubscript:?];

  if (v29)
  {
    [v29 BOOLValue];
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v30 = [infoCopy objectForKeyedSubscript:?];

  if (v30)
  {
    [v30 BOOLValue];
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v31 = [infoCopy objectForKeyedSubscript:?];

  if (!v31)
  {
    goto LABEL_62;
  }

  unsignedCharValue = [v31 unsignedCharValue];
  if (unsignedCharValue > 4)
  {
    if (unsignedCharValue <= 9)
    {
      goto LABEL_62;
    }
  }

  else if (unsignedCharValue >= 0)
  {
LABEL_62:
    [v8 appendString:?];
    goto LABEL_63;
  }

  [v8 appendFormat:objc_msgSend(v31, "unsignedCharValue")];
LABEL_63:
  [v8 appendFormat:indentCopy];
  v33 = [infoCopy objectForKeyedSubscript:?];

  if (v33)
  {
    [v8 appendFormat:objc_msgSend(v33, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v34 = [infoCopy objectForKeyedSubscript:?];

  if (v34)
  {
    [v8 appendFormat:objc_msgSend(v34, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v35 = [infoCopy objectForKeyedSubscript:?];

  if (v35)
  {
    [v8 appendFormat:objc_msgSend(v35, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  [v8 appendFormat:indentCopy];
  v36 = [infoCopy objectForKeyedSubscript:?];

  if (v36)
  {
    [v8 appendFormat:objc_msgSend(v36, "intValue")];
  }

  else
  {
    [v8 appendString:?];
  }

  return v8;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3_0();
}

@end