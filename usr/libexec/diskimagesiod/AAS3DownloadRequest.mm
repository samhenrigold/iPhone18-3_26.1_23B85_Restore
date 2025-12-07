@interface AAS3DownloadRequest
- (AAS3DownloadRequest)initWithSession:(id)session size:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore;
- (AAS3DownloadSession)downloadSession;
- (OS_dispatch_semaphore)sem;
- (int)createAndResumeTask;
@end

@implementation AAS3DownloadRequest

- (AAS3DownloadRequest)initWithSession:(id)session size:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore
{
  sessionCopy = session;
  semaphoreCopy = semaphore;
  v27.receiver = self;
  v27.super_class = AAS3DownloadRequest;
  v16 = [(AAS3DownloadRequest *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_downloadSession, sessionCopy);
    v18 = [NSMutableURLRequest alloc];
    v19 = [sessionCopy url];
    v20 = [v18 initWithURL:v19];
    urlRequest = v17->_urlRequest;
    v17->_urlRequest = v20;

    v17->_nbyte = size;
    v17->_offset = offset;
    v17->_buf = buffer;
    v17->_stream = stream;
    objc_storeWeak(&v17->_sem, semaphoreCopy);
    v17->_remainingAttempts = [sessionCopy maxAttempts];
    [sessionCopy pauseInterval];
    v17->_pauseInterval = v22;
    v17->_status = 0;
    snprintf(__str, 0xC8uLL, "bytes=%llu-%llu", offset, size + offset - 1);
    v23 = v17->_urlRequest;
    v24 = [NSString stringWithUTF8String:__str];
    [(NSMutableURLRequest *)v23 addValue:v24 forHTTPHeaderField:@"Range"];

    v25 = v17;
  }

  return v17;
}

- (int)createAndResumeTask
{
  if ([(AAS3DownloadRequest *)self remainingAttempts])
  {
    [(AAS3DownloadRequest *)self setRemainingAttempts:[(AAS3DownloadRequest *)self remainingAttempts]- 1];
    objc_initWeak(&location, self);
    downloadSession = [(AAS3DownloadRequest *)self downloadSession];
    urlSession = [(AAS3DownloadSession *)downloadSession urlSession];
    urlRequest = [(AAS3DownloadRequest *)self urlRequest];
    v9 = _NSConcreteStackBlock;
    v10 = 3254779904;
    v11 = sub_10001F8A8;
    v12 = &unk_1001F7560;
    objc_copyWeak(&v13, &location);
    v6 = [(NSURLSession *)urlSession dataTaskWithRequest:urlRequest completionHandler:&v9];

    if (v6)
    {
      [(NSURLSessionDataTask *)v6 resume:v9];
      v7 = 0;
    }

    else
    {
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadRequest createAndResumeTask]", 164, 121, 0, "dataTaskWithRequest", v9, v10, v11, v12);
      v7 = -1;
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadRequest createAndResumeTask]", 150, 121, 0, "no more attempts allowed");
    return -1;
  }

  return v7;
}

- (AAS3DownloadSession)downloadSession
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadSession);

  return WeakRetained;
}

- (OS_dispatch_semaphore)sem
{
  WeakRetained = objc_loadWeakRetained(&self->_sem);

  return WeakRetained;
}

@end