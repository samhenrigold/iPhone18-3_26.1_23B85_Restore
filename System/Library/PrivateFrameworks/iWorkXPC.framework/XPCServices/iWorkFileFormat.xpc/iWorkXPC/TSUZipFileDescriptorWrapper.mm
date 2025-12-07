@interface TSUZipFileDescriptorWrapper
- (TSUZipFileDescriptorWrapper)init;
- (TSUZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor;
- (void)dealloc;
@end

@implementation TSUZipFileDescriptorWrapper

- (TSUZipFileDescriptorWrapper)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CC690);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSUZipFileDescriptorWrapper init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m";
    v15 = 1024;
    v16 = 474;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSUZipFileDescriptorWrapper init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUZipFileArchive.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:474 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSUZipFileDescriptorWrapper init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor
{
  selfCopy = self;
  if ((descriptor & 0x80000000) == 0)
  {
    v4 = *&descriptor;
    v14.receiver = self;
    v14.super_class = TSUZipFileDescriptorWrapper;
    v5 = [(TSUZipFileDescriptorWrapper *)&v14 init];
    selfCopy = v5;
    if (!v5)
    {
      close(v4);
      goto LABEL_7;
    }

    v5->_fileDescriptor = v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007EBBC;
    v12[3] = &unk_1001CC6B0;
    v13 = v4;
    v6 = [[TSUFileIOChannel alloc] initForReadingDescriptor:v4 cleanupHandler:v12];
    readChannel = selfCopy->_readChannel;
    selfCopy->_readChannel = v6;

    if (selfCopy->_readChannel)
    {
      v8 = dispatch_group_create();
      accessGroup = selfCopy->_accessGroup;
      selfCopy->_accessGroup = v8;

LABEL_7:
      selfCopy = selfCopy;
      v10 = selfCopy;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)dealloc
{
  [(TSUReadChannel *)self->_readChannel close];
  v3.receiver = self;
  v3.super_class = TSUZipFileDescriptorWrapper;
  [(TSUZipFileDescriptorWrapper *)&v3 dealloc];
}

@end