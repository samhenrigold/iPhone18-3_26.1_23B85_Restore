@interface TSPPackageWriterComponentWriteChannel
- (TSPPackageWriterComponentWriteChannel)initWithArchiveWriter:(id)writer;
- (void)writeData:(id)data;
@end

@implementation TSPPackageWriterComponentWriteChannel

- (TSPPackageWriterComponentWriteChannel)initWithArchiveWriter:(id)writer
{
  writerCopy = writer;
  v9.receiver = self;
  v9.super_class = TSPPackageWriterComponentWriteChannel;
  v6 = [(TSPPackageWriterComponentWriteChannel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveWriter, writer);
  }

  return v7;
}

- (void)writeData:(id)data
{
  dataCopy = data;
  v5 = atomic_load(&self->_isClosed);
  v10 = dataCopy;
  if (v5)
  {
    v6 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100152184();
    }

    v7 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100152198(v6, v7);
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Channel is closed", "[TSPPackageWriterComponentWriteChannel writeData:]", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriterComponentWriteChannel.mm", 30);
    v8 = [NSString stringWithUTF8String:"[TSPPackageWriterComponentWriteChannel writeData:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriterComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:30 isFatal:1 description:"Channel is closed"];

    TSUCrashBreakpoint();
    abort();
  }

  [(TSUZipWriter *)self->_archiveWriter addData:dataCopy];
}

@end