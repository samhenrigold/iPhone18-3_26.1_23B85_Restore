@interface NSString(DiagnosticsController)
- (id)maximumLogLevelString:()DiagnosticsController;
@end

@implementation NSString(DiagnosticsController)

- (id)maximumLogLevelString:()DiagnosticsController
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  v6 = selfCopy;
  v7 = selfCopy;
  if (v4)
  {
    selfCopy = [selfCopy isEqualToString:v4];
    v7 = v6;
    if ((selfCopy & 1) == 0)
    {
      if ([v6 isEqualToString:@"debug"])
      {
        v8 = 4;
      }

      else if ([v6 isEqualToString:@"info"])
      {
        v8 = 3;
      }

      else if ([v6 isEqualToString:@"default"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      selfCopy = [v4 isEqualToString:@"debug"];
      if (selfCopy)
      {
        v9 = 4;
      }

      else
      {
        selfCopy = [v4 isEqualToString:@"info"];
        if (selfCopy)
        {
          v9 = 3;
        }

        else
        {
          selfCopy = [v4 isEqualToString:@"default"];
          v9 = 2;
          if (!selfCopy)
          {
            v9 = 0;
          }
        }
      }

      v7 = v6;
      if (v9 > v8)
      {
        v7 = v4;
      }
    }
  }

  v10 = diagcollectLogHandle(selfCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "> Choosing log level: %@", &v12, 0xCu);
  }

  return v7;
}

@end