@interface NSURL(SOS)
- (id)sos_urlActivationReason;
- (uint64_t)isSOS;
@end

@implementation NSURL(SOS)

- (uint64_t)isSOS
{
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:self resolvingAgainstBaseURL:0];
  scheme = [v1 scheme];
  v3 = [scheme isEqualToString:@"telSOS"];

  return v3;
}

- (id)sos_urlActivationReason
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:self resolvingAgainstBaseURL:0];
  scheme = [v1 scheme];
  v3 = [scheme isEqualToString:@"telSOS"];

  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    queryItems = [v1 queryItems];
    v5 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(queryItems);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:@"reason"];

          if (v11)
          {
            value = [v9 value];
            goto LABEL_13;
          }
        }

        v6 = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    value = 0;
LABEL_13:
  }

  else
  {
    value = 0;
  }

  return value;
}

@end