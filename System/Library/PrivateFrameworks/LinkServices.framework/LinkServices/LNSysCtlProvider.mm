@interface LNSysCtlProvider
+ (id)bootUUID;
+ (id)runningProcessIDs;
@end

@implementation LNSysCtlProvider

+ (id)runningProcessIDs
{
  v12 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  *v10 = xmmword_19775FCA0;
  v11 = 0;
  size = 0;
  v3 = 0;
  if (!sysctl(v10, 3u, 0, &size, 0, 0))
  {
    v4 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    if (sysctl(v10, 3u, v4, &size, 0, 0))
    {
      free(v4);
      v3 = 0;
    }

    else
    {
      if (size >= 0x288)
      {
        v5 = size / 0x288;
        v6 = v4 + 10;
        do
        {
          v7 = [MEMORY[0x1E696AD98] numberWithInt:*v6];
          [array addObject:v7];

          v6 += 162;
          --v5;
        }

        while (v5);
      }

      free(v4);
      v3 = [array copy];
    }
  }

  return v3;
}

+ (id)bootUUID
{
  if (bootUUID_onceToken != -1)
  {
    dispatch_once(&bootUUID_onceToken, &__block_literal_global_2530);
  }

  v3 = bootUUID_bootUUID;

  return v3;
}

void __28__LNSysCtlProvider_bootUUID__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  *in = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", in, &v2, 0, 0))
  {
    if (v2 != 37)
    {
      __assert_rtn("+[LNSysCtlProvider bootUUID]_block_invoke", "LNSysCtlProvider.m", 23, "len == sizeof(uuidString)");
    }

    memset(uu, 0, sizeof(uu));
    if (!uuid_parse(in, uu))
    {
      v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
      v1 = bootUUID_bootUUID;
      bootUUID_bootUUID = v0;
    }
  }
}

@end