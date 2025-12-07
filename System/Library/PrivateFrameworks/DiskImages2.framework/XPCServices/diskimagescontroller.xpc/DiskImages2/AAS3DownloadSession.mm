@interface AAS3DownloadSession
+ (void)completeRequest:(id)request data:(id)data response:(id)response error:(id)error;
- (AAS3DownloadSession)initWithURL:(id)l streamBase:(id *)base maxAttempts:(unsigned int)attempts pauseInterval:(float)interval maxRequestsInFlight:(unsigned int)flight;
- (id)enqueueRequestWithSize:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore;
- (int)addRequest:(id)request;
- (int)readToAsyncByteStream:(AAAsyncByteStream_impl *)stream size:(unint64_t)size atOffset:(int64_t)offset;
- (int)syncRequests;
- (int64_t)readToBuffer:(void *)buffer size:(unint64_t)size atOffset:(int64_t)offset;
- (void)cacheDocument:(id)document;
- (void)invalidateAndCancel;
- (void)removeRequest:(id)request;
@end

@implementation AAS3DownloadSession

- (AAS3DownloadSession)initWithURL:(id)l streamBase:(id *)base maxAttempts:(unsigned int)attempts pauseInterval:(float)interval maxRequestsInFlight:(unsigned int)flight
{
  lCopy = l;
  v50.receiver = self;
  v50.super_class = AAS3DownloadSession;
  v14 = [(AAS3DownloadSession *)&v50 init];
  if (v14)
  {
    obj = l;
    attemptsCopy = attempts;
    flightCopy = flight;
    v49 = lCopy;
    v48 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v15 = objc_alloc_init(NSMutableDictionary);
    baseCopy = base;
    var2 = base->var2;
    if (*(var2 + 348))
    {
      v17 = [NSString stringWithUTF8String:?];
      [v15 setValue:v17 forKey:@"User-Agent"];
    }

    for (i = *(var2 + 349); i; i = *(i + 8))
    {
      v19 = *i;
      if (*i)
      {
        v20 = strlen(*i);
        v21 = v20 + 1;
        if (v20 + 1 < 0x2000000001)
        {
          v22 = malloc(v20 + 1);
          if (v22)
          {
            v23 = v22;
            memcpy(v22, v19, v21);
            v24 = strchr(v23, 58);
            if (v24)
            {
              *v24 = 0;
              v25 = [NSString stringWithUTF8String:v24 + 1];
              v26 = [NSString stringWithUTF8String:v23];
              [v15 setValue:v25 forKey:v26];
            }

            else
            {
              sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 252, 121, 0, "invalid header: %s", v23);
            }

            free(v23);
            continue;
          }
        }

        else
        {
          *__error() = 12;
        }
      }

      v27 = __error();
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 250, 121, *v27, "malloc");
    }

    if (*(var2 + 350))
    {
      sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 259, 121, "Non supported options in AAS3DownloadSession (ignored): proxy_headers %s", *(var2 + 350));
    }

    if (*(var2 + 346))
    {
      sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 260, 121, "Non supported options in AAS3DownloadSession (ignored): pinned_public_key %s", *(var2 + 346));
    }

    if (*(var2 + 347))
    {
      sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 261, 121, "Non supported options in AAS3DownloadSession (ignored): proxy_pinned_public_key %s", *(var2 + 347));
    }

    [(NSURLSessionConfiguration *)v48 setHTTPAdditionalHeaders:v15];
    [(NSURLSessionConfiguration *)v48 setHTTPMaximumConnectionsPerHost:16];
    [(NSURLSessionConfiguration *)v48 setTimeoutIntervalForRequest:120.0];
    [(NSURLSessionConfiguration *)v48 setTimeoutIntervalForResource:1200.0];
    v28 = [NSURLSession sessionWithConfiguration:v48];
    urlSession = v14->_urlSession;
    v14->_urlSession = v28;

    objc_storeStrong(&v14->_url, obj);
    v14->_streamBase = baseCopy;
    v30 = objc_alloc_init(NSMutableSet);
    requests = v14->_requests;
    v14->_requests = v30;

    v32 = objc_alloc_init(NSLock);
    requestsLock = v14->_requestsLock;
    v14->_requestsLock = v32;

    if (attemptsCopy)
    {
      v34 = attemptsCopy;
    }

    else
    {
      v34 = 5;
    }

    intervalCopy = 250.0;
    if (interval != 0.0)
    {
      intervalCopy = interval;
    }

    v14->_pauseInterval = intervalCopy;
    if (flightCopy)
    {
      v36 = flightCopy;
    }

    else
    {
      v36 = 16;
    }

    v14->_maxRequests = v36;
    v14->_maxAttempts = v34;
    v37 = dispatch_semaphore_create(v36);
    requestsSem = v14->_requestsSem;
    v14->_requestsSem = v37;

    atomic_store(0, &v14->_bytesDownloaded);
    v39 = objc_alloc_init(NSLock);
    cacheLock = v14->_cacheLock;
    v14->_cacheLock = v39;

    cache = v14->_cache;
    v14->_cache = 0;

    v42 = v14;
    lCopy = v49;
  }

  return v14;
}

- (int)addRequest:(id)request
{
  requestCopy = request;
  requestsSem = [(AAS3DownloadSession *)self requestsSem];
  v6 = dispatch_time(0, 600000000000);
  v7 = dispatch_semaphore_wait(requestsSem, v6);

  if (v7)
  {
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession addRequest:]", 292, 121, 0, "euqueueRequest timed out");
    v8 = -1;
  }

  else
  {
    requestsLock = [(AAS3DownloadSession *)self requestsLock];
    [(NSLock *)requestsLock lock];

    requests = [(AAS3DownloadSession *)self requests];
    [(NSMutableSet *)requests addObject:requestCopy];

    requestsLock2 = [(AAS3DownloadSession *)self requestsLock];
    [(NSLock *)requestsLock2 unlock];

    v8 = 0;
  }

  return v8;
}

- (void)removeRequest:(id)request
{
  requestCopy = request;
  requestsLock = [(AAS3DownloadSession *)self requestsLock];
  [(NSLock *)requestsLock lock];

  requests = [(AAS3DownloadSession *)self requests];
  [(NSMutableSet *)requests removeObject:requestCopy];

  requestsLock2 = [(AAS3DownloadSession *)self requestsLock];
  [(NSLock *)requestsLock2 unlock];

  requestsSem = [(AAS3DownloadSession *)self requestsSem];
  dispatch_semaphore_signal(requestsSem);
}

- (id)enqueueRequestWithSize:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore
{
  semaphoreCopy = semaphore;
  v13 = [[AAS3DownloadRequest alloc] initWithSession:self size:size atOffset:offset destinationBuffer:buffer destinationStream:stream completionSemaphore:semaphoreCopy];

  if (v13)
  {
    if ([(AAS3DownloadSession *)self addRequest:v13]< 0)
    {
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession enqueueRequestWithSize:atOffset:destinationBuffer:destinationStream:completionSemaphore:]", 335, 121, 0, "addRequest");
    }

    else
    {
      if (([(AAS3DownloadRequest *)v13 createAndResumeTask]& 0x80000000) == 0)
      {
        v14 = v13;
        goto LABEL_9;
      }

      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession enqueueRequestWithSize:atOffset:destinationBuffer:destinationStream:completionSemaphore:]", 338, 121, 0, "createTask");
    }
  }

  else
  {
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession enqueueRequestWithSize:atOffset:destinationBuffer:destinationStream:completionSemaphore:]", 332, 121, 0, "Request creation");
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (int64_t)readToBuffer:(void *)buffer size:(unint64_t)size atOffset:(int64_t)offset
{
  cacheLock = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)cacheLock lock];

  cache = [(AAS3DownloadSession *)self cache];
  if (cache)
  {
    cache2 = [(AAS3DownloadSession *)self cache];
    v12 = [(NSData *)cache2 length];

    cache3 = [(AAS3DownloadSession *)self cache];
    bytes = [(NSData *)cache3 bytes];

    v15 = offset & ~(offset >> 63);
    v16 = offset + size;
    if (v12 < (offset + size))
    {
      v16 = v12;
    }

    v17 = v16 - v15;
    if (v16 > v15)
    {
      memcpy(buffer, &bytes[v15], v17);
    }

    cacheLock2 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock2 unlock];

    v19 = 0;
    v20 = 0;
  }

  else
  {
    cacheLock3 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock3 unlock];

    v20 = dispatch_semaphore_create(0);
    v19 = [(AAS3DownloadSession *)self enqueueRequestWithSize:size atOffset:offset destinationBuffer:buffer destinationStream:0 completionSemaphore:v20];
    if (v19)
    {
      v22 = dispatch_time(0, 600000000000);
      if (dispatch_semaphore_wait(v20, v22))
      {
        sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToBuffer:size:atOffset:]", 384, 121, 0, "Request timed out");
      }

      else
      {
        if ([v19 status] > 0)
        {
          goto LABEL_12;
        }

        sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToBuffer:size:atOffset:]", 386, 121, 0, "Request failed");
      }
    }

    else
    {
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToBuffer:size:atOffset:]", 380, 121, 0, "enqueueRequest");
    }

    size = -1;
  }

LABEL_12:

  return size;
}

- (int)syncRequests
{
  if ([(AAS3DownloadSession *)self maxRequests])
  {
    v3 = 0;
    while (1)
    {
      requestsSem = [(AAS3DownloadSession *)self requestsSem];
      v5 = dispatch_time(0, 600000000000);
      v6 = dispatch_semaphore_wait(requestsSem, v5);

      if (v6)
      {
        break;
      }

      if (++v3 >= [(AAS3DownloadSession *)self maxRequests])
      {
        goto LABEL_5;
      }
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession syncRequests]", 401, 121, 0, "Request timed out");
    return -1;
  }

  else
  {
LABEL_5:
    result = [(AAS3DownloadSession *)self maxRequests];
    if (result)
    {
      v8 = 0;
      do
      {
        requestsSem2 = [(AAS3DownloadSession *)self requestsSem];
        dispatch_semaphore_signal(requestsSem2);

        ++v8;
      }

      while (v8 < [(AAS3DownloadSession *)self maxRequests]);
      return 0;
    }
  }

  return result;
}

- (int)readToAsyncByteStream:(AAAsyncByteStream_impl *)stream size:(unint64_t)size atOffset:(int64_t)offset
{
  if (size)
  {
    cacheLock = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock lock];

    cache = [(AAS3DownloadSession *)self cache];
    if (cache)
    {
      cache2 = [(AAS3DownloadSession *)self cache];
      [(NSData *)cache2 length];

      cache3 = [(AAS3DownloadSession *)self cache];
      [(NSData *)cache3 bytes];

      AAAsyncByteStreamProcess();
      cacheLock2 = [(AAS3DownloadSession *)self cacheLock];
      [(NSLock *)cacheLock2 unlock];

      v17 = 0;
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    cacheLock3 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock3 unlock];

    v17 = [(AAS3DownloadSession *)self enqueueRequestWithSize:size atOffset:offset destinationBuffer:0 destinationStream:stream completionSemaphore:0];
    if (v17)
    {
      goto LABEL_7;
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToAsyncByteStream:size:atOffset:]", 451, 121, 0, "enqueueRequest");
    v17 = 0;
    v14 = -1;
  }

  else
  {
    v13 = [(AAS3DownloadSession *)self syncRequests:stream];
    v17 = 0;
    v14 = v13 >> 31;
  }

LABEL_8:

  return v14;
}

+ (void)completeRequest:(id)request data:(id)data response:(id)response error:(id)error
{
  requestCopy = request;
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  downloadSession = [requestCopy downloadSession];
  statusCode = [responseCopy statusCode];
  if ([downloadSession isCancelled] || errorCopy && objc_msgSend(errorCopy, "code") == -999)
  {
    goto LABEL_2;
  }

  if (statusCode == 416)
  {
    [dataCopy bytes];
    if ([requestCopy stream])
    {
      [requestCopy stream];
      [requestCopy offset];
      AAAsyncByteStreamProcess();
    }

    goto LABEL_2;
  }

  if (statusCode == 206)
  {
    v18 = [dataCopy length];
    nbyte = [requestCopy nbyte];
    if (v18 >= nbyte)
    {
      v29 = nbyte;
    }

    else
    {
      v29 = v18;
    }

    bytes = [dataCopy bytes];
    if ([requestCopy buf])
    {
      memcpy([requestCopy buf], bytes, v29);
    }

    if (![requestCopy stream])
    {
      goto LABEL_33;
    }

LABEL_32:
    [requestCopy stream];
    [requestCopy offset];
    AAAsyncByteStreamProcess();
LABEL_33:
    [downloadSession addBytesDownloaded:v18];
LABEL_2:
    v15 = 1;
    goto LABEL_3;
  }

  if (statusCode == 200)
  {
    v18 = [dataCopy length];
    bytes2 = [dataCopy bytes];
    [downloadSession cacheDocument:dataCopy];
    offset = [requestCopy offset];
    v21 = offset & ~(offset >> 63);
    offset2 = [requestCopy offset];
    v23 = &offset2[[requestCopy nbyte]];
    if (v18 < v23)
    {
      v23 = v18;
    }

    v24 = v23 <= v21;
    v25 = &v23[-v21];
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v21;
    }

    if (v24)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    if ([requestCopy buf])
    {
      memcpy([requestCopy buf], &bytes2[v26], v27);
    }

    if (![requestCopy stream])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (errorCopy && (v31 = [errorCopy description]) != 0)
  {
    v32 = v31;
    sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 546, 121, "Request failed: %03ld %s", statusCode, [v31 UTF8String]);
  }

  else
  {
    sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 547, 121, "Request failed: %03ld (error not set)", statusCode);
  }

  if ([requestCopy remainingAttempts])
  {
    [requestCopy pauseInterval];
    sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 554, 121, "Retrying request after %.0f seconds %zu bytes at offset %llu", v33, [requestCopy nbyte], objc_msgSend(requestCopy, "offset"));
    [requestCopy pauseInterval];
    [NSThread sleepForTimeInterval:v34];
    [requestCopy pauseInterval];
    *&v36 = v35 + v35;
    [requestCopy setPauseInterval:v36];
    if (([requestCopy createAndResumeTask] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 561, 121, 0, "createTask");
  }

  v15 = 0xFFFFFFFFLL;
LABEL_3:
  [requestCopy setStatus:v15];
  v16 = [requestCopy sem];

  if (v16)
  {
    v17 = [requestCopy sem];
    dispatch_semaphore_signal(v17);
  }

  [downloadSession removeRequest:requestCopy];
LABEL_6:
}

- (void)invalidateAndCancel
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_cancelled, &v3, 1u);
  urlSession = [(AAS3DownloadSession *)self urlSession];
  [(NSURLSession *)urlSession invalidateAndCancel];

  [(AAS3DownloadSession *)self syncRequests];
}

- (void)cacheDocument:(id)document
{
  documentCopy = document;
  cacheLock = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)cacheLock lock];

  cache = [(AAS3DownloadSession *)self cache];
  if (!cache)
  {
    [(AAS3DownloadSession *)self setCache:documentCopy];
  }

  cacheLock2 = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)cacheLock2 unlock];
}

@end