@interface ASDObject(ASDTDiagnostics)
+ (void)asdtLogComponents:()ASDTDiagnostics withSeparator:;
- (id)asdtName;
- (void)logDiagnostics:()ASDTDiagnostics;
@end

@implementation ASDObject(ASDTDiagnostics)

+ (void)asdtLogComponents:()ASDTDiagnostics withSeparator:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  string = [MEMORY[0x277CCAB68] string];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [string length];
        v15 = [v13 length];
        if ((v15 + v14) > 0x1DF)
        {
          if (v14)
          {
            v18 = ASDTBaseLogType(v15, v16);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v27 = string;
              _os_log_impl(&dword_241659000, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }
          }

          [string setString:v13];
        }

        else
        {
          if (v14)
          {
            v17 = v6;
          }

          else
          {
            v17 = &stru_28534DD28;
          }

          [string appendFormat:@"%@%@", v17, v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v19 = [string length];
  if (v19)
  {
    v21 = ASDTBaseLogType(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = string;
      _os_log_impl(&dword_241659000, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (void)logDiagnostics:()ASDTDiagnostics
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [self diagnosticDescriptionWithIndent:&stru_28534DD28 walkTree:1];
  v6 = MEMORY[0x277CCACA8];
  driverClassName = [self driverClassName];
  v8 = driverClassName;
  v9 = @"(empty)";
  if (v5)
  {
    v9 = v5;
  }

  v10 = [v6 stringWithFormat:@"%@ Diags\n%@", driverClassName, v9];

  if (a3)
  {
    v13 = MEMORY[0x277CEFB58];
    v14 = [v10 componentsSeparatedByString:@"\n"];
    [v13 asdtLogComponents:v14 withSeparator:@"\n"];
  }

  else
  {
    v15 = ASDTBaseLogType(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_241659000, v15, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }
}

- (id)asdtName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceUID = [self deviceUID];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    driverClassName = [self driverClassName];
    deviceUID = [v3 stringWithFormat:@"%@(%p)", driverClassName, self];
  }

  return deviceUID;
}

@end