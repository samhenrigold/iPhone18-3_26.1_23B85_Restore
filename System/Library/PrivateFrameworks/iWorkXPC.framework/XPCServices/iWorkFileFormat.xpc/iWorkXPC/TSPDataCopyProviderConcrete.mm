@interface TSPDataCopyProviderConcrete
- (NSInputStream)inputStream;
- (NSURL)URL;
- (TSPDataCopyProviderConcrete)initWithDocumentURL:(id)l error:(id *)error;
- (TSUReadChannel)readChannel;
- (id)inputStreamForRange:(_NSRange)range;
- (void)cleanUp;
@end

@implementation TSPDataCopyProviderConcrete

- (TSPDataCopyProviderConcrete)initWithDocumentURL:(id)l error:(id *)error
{
  lCopy = l;
  v25.receiver = self;
  v25.super_class = TSPDataCopyProviderConcrete;
  v7 = [(TSPDataCopyProviderConcrete *)&v25 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v8 = +[NSFileManager defaultManager];
  v9 = v8;
  if (lCopy)
  {
    v24 = 0;
    v10 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:&v24];
    v11 = v24;

    if (v10)
    {
LABEL_4:
      directory = v7->_directory;
      v7->_directory = v10;
      v13 = v10;

      goto LABEL_14;
    }
  }

  else
  {
    v23 = 0;
    v14 = [v8 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v23];
    v15 = v23;

    if (v14 && (+[NSUUID UUID](NSUUID, "UUID"), v16 = objc_claimAutoreleasedReturnValue(), [v16 UUIDString], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "URLByAppendingPathComponent:", v17), v10 = objc_claimAutoreleasedReturnValue(), v14, v17, v16, v10))
    {
      v18 = +[NSFileManager defaultManager];
      v22 = v15;
      v19 = [v18 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v22];
      v11 = v22;

      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = v15;
    }
  }

  if (error)
  {
    v20 = v11;
    v7 = 0;
    *error = v11;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)cleanUp
{
  v3 = +[NSFileManager defaultManager];
  directory = [(TSPDataCopyProviderConcrete *)self directory];
  [v3 removeItemAtURL:directory error:0];

  [(TSPDataCopyProviderConcrete *)self setURLInternal:0];
  [(TSPDataCopyProviderConcrete *)self setReadChannelInternal:0];

  [(TSPDataCopyProviderConcrete *)self setInputStreamInternal:0];
}

- (NSURL)URL
{
  uRLInternal = [(TSPDataCopyProviderConcrete *)self URLInternal];
  if (!uRLInternal)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150C34();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150C48();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPDataCopyProviderConcrete URL]", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 55, "URL");
    v4 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete URL]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:55 isFatal:1 description:"invalid nil value for '%{public}s'", "URL"];

    TSUCrashBreakpoint();
    abort();
  }

  return uRLInternal;
}

- (TSUReadChannel)readChannel
{
  readChannelInternal = [(TSPDataCopyProviderConcrete *)self readChannelInternal];
  if (!readChannelInternal)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150CDC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150CF0();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPDataCopyProviderConcrete readChannel]", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 61, "readChannel");
    v4 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete readChannel]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:61 isFatal:1 description:"invalid nil value for '%{public}s'", "readChannel"];

    TSUCrashBreakpoint();
    abort();
  }

  return readChannelInternal;
}

- (NSInputStream)inputStream
{
  inputStreamInternal = [(TSPDataCopyProviderConcrete *)self inputStreamInternal];
  if (!inputStreamInternal)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150D84();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150D98();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPDataCopyProviderConcrete inputStream]", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 67, "inputStream");
    v4 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete inputStream]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:67 isFatal:1 description:"invalid nil value for '%{public}s'", "inputStream"];

    TSUCrashBreakpoint();
    abort();
  }

  return inputStreamInternal;
}

- (id)inputStreamForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [TSUReadChannelInputStreamAdapter alloc];
  readChannelInternal = [(TSPDataCopyProviderConcrete *)self readChannelInternal];
  v8 = [(TSUReadChannelInputStreamAdapter *)v6 initWithReadChannel:readChannelInternal length:location + length closeChannelOnClose:0];

  if (location)
  {
    v9 = [[SFUOffsetInputStream alloc] initWithInputStream:v8 initialOffset:location];

    v8 = v9;
  }

  v10 = [[SFUReadChannelNSInputStreamAdaptor alloc] initWithSFUInputStream:v8];
  if (!v10)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150E2C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150E40();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPDataCopyProviderConcrete inputStreamForRange:]", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 83, "inputStream");
    v13 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete inputStreamForRange:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:83 isFatal:1 description:"invalid nil value for '%{public}s'", "inputStream"];

    TSUCrashBreakpoint();
    abort();
  }

  v11 = v10;

  return v11;
}

@end