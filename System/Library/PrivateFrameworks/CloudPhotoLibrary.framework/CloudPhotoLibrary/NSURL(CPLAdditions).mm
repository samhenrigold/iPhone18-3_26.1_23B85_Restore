@interface NSURL(CPLAdditions)
- (id)cpl_redactedShareURL;
@end

@implementation NSURL(CPLAdditions)

- (id)cpl_redactedShareURL
{
  v40 = *MEMORY[0x1E69E9840];
  host = [self host];
  if ([host hasPrefix:@"redacted."] && objc_msgSend(host, "hasSuffix:", @".icloud.com"))
  {
    selfCopy = self;
    goto LABEL_24;
  }

  absoluteString = [self absoluteString];
  uTF8String = [absoluteString UTF8String];

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v6 = strlen(uTF8String);
  CC_SHA256_Update(&c, uTF8String, v6);
  CC_SHA256_Final(md, &c);
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
  for (i = 0; i != 32; ++i)
  {
    [v7 appendFormat:@"%02x", md[i]];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:1];
  v10 = objc_alloc_init(MEMORY[0x1E696AF20]);
  scheme = [v9 scheme];
  [v10 setScheme:scheme];

  host2 = [v9 host];
  if (host2)
  {
    scheme2 = [v9 scheme];
    if ([scheme2 isEqualToString:@"https"])
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = [(__CFString *)_isKnownICloudHost_knownHosts[v15] isEqualToString:host2];
        v17 = v16;
        if (v14)
        {
          break;
        }

        v14 = 1;
        v15 = 1;
      }

      while (!v16);

      if (v17)
      {
        v18 = [@"redacted." stringByAppendingString:host2];
        [v10 setHost:v18];

        path = [v9 path];
        pathComponents = [path pathComponents];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = pathComponents;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v22)
        {
          v23 = v22;
          v32 = host;
          v24 = *v34;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v33 + 1) + 8 * j);
              if (([v26 isEqualToString:@"/"] & 1) == 0)
              {
                v27 = v26;
                goto LABEL_28;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v33 objects:v38 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }

          v27 = 0;
LABEL_28:
          host = v32;
        }

        else
        {
          v27 = 0;
        }

        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v30 = @"unknown";
        if (v27)
        {
          v30 = v27;
        }

        v31 = [v29 initWithFormat:@"/%@/%@", v30, v7];
        [v10 setPath:v31];

        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  [v10 setHost:@"redacted.icloud.com"];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", v7];
  [v10 setPath:v21];
LABEL_23:

  selfCopy = [v10 URL];

LABEL_24:

  return selfCopy;
}

@end