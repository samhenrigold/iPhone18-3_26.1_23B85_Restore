@interface SFUMemoryOutputStream
- (SFUMemoryOutputStream)initWithData:(id)data;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
@end

@implementation SFUMemoryOutputStream

- (SFUMemoryOutputStream)initWithData:(id)data
{
  v4 = [(SFUMemoryOutputStream *)self init];
  if (v4)
  {
    v4->mData = data;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryOutputStream;
  [(SFUMemoryOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  v4 = [TSUAssertionHandler _atomicIncrementAssertCount:offset];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015A9A8();
  }

  v5 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015A9BC(v4, v5);
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[SFUMemoryOutputStream seekToOffset:whence:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/sf/SFUMemoryOutputStream.m"] lineNumber:42 isFatal:0 description:"Not implemented"];
  +[TSUAssertionHandler logBacktraceThrottled];
}

@end