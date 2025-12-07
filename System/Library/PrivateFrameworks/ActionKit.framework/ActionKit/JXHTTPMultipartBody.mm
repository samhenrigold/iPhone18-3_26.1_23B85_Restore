@interface JXHTTPMultipartBody
+ (id)withDictionary:(id)dictionary;
- (JXHTTPMultipartBody)init;
- (JXHTTPMultipartBody)initWithDictionary:(id)dictionary;
- (int64_t)httpContentLength;
- (unint64_t)loadMutableData:(id)data withDataInRange:(_NSRange)range;
- (void)addFile:(id)file forKey:(id)key contentType:(id)type fileName:(id)name;
- (void)addPartWithType:(int)type forKey:(id)key contentType:(id)contentType fileName:(id)name data:(id)data;
- (void)addString:(id)string forKey:(id)key;
- (void)dealloc;
- (void)httpOperationDidFail:(id)fail;
- (void)httpOperationDidFinishLoading:(id)loading;
- (void)recreateStreamsForOperation:(id)operation;
- (void)scheduleOutputStreamOnThread:(id)thread;
- (void)setFile:(id)file forKey:(id)key contentType:(id)type fileName:(id)name;
- (void)setPartWithType:(int)type forKey:(id)key contentType:(id)contentType fileName:(id)name data:(id)data;
- (void)setString:(id)string forKey:(id)key;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation JXHTTPMultipartBody

- (void)setFile:(id)file forKey:(id)key contentType:(id)type fileName:(id)name
{
  nameCopy = name;
  typeCopy = type;
  keyCopy = key;
  v13 = [file dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self setPartWithType:1 forKey:keyCopy contentType:typeCopy fileName:nameCopy data:v13];
}

- (void)addFile:(id)file forKey:(id)key contentType:(id)type fileName:(id)name
{
  nameCopy = name;
  typeCopy = type;
  keyCopy = key;
  v13 = [file dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self addPartWithType:1 forKey:keyCopy contentType:typeCopy fileName:nameCopy data:v13];
}

- (void)setString:(id)string forKey:(id)key
{
  keyCopy = key;
  v7 = [string dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self setData:v7 forKey:keyCopy contentType:@"text/plain; charset=utf-8" fileName:0];
}

- (void)addString:(id)string forKey:(id)key
{
  keyCopy = key;
  v7 = [string dataUsingEncoding:4];
  [(JXHTTPMultipartBody *)self addData:v7 forKey:keyCopy contentType:@"text/plain; charset=utf-8" fileName:0];
}

- (unint64_t)loadMutableData:(id)data withDataInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  [dataCopy setLength:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  partsArray = [(JXHTTPMultipartBody *)self partsArray];
  v8 = [partsArray countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(partsArray);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        dataLength = [v14 dataLength];
        v32.location = v11;
        v32.length = dataLength;
        v34.location = location;
        v34.length = length;
        v16 = NSIntersectionRange(v32, v34);
        if (v16.length)
        {
          v10 += [v14 loadMutableData:dataCopy withDataInRange:{v16.location - v11, v16.length}];
        }

        v11 += dataLength;
      }

      v9 = [partsArray countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  finalBoundaryData = [(JXHTTPMultipartBody *)selfCopy finalBoundaryData];
  v18 = [finalBoundaryData length];

  v33.location = v11;
  v33.length = v18;
  v35.location = location;
  v35.length = length;
  v19 = NSIntersectionRange(v33, v35);
  if (v19.length)
  {
    v20 = v19.location - v11;
    finalBoundaryData2 = [(JXHTTPMultipartBody *)selfCopy finalBoundaryData];
    v22 = [finalBoundaryData2 subdataWithRange:{v20, v19.length}];

    if (v22)
    {
      [dataCopy appendData:v22];
      v10 += [v22 length];
    }
  }

  return v10;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  httpOutputStream = [(JXHTTPMultipartBody *)self httpOutputStream];

  v7 = streamCopy;
  if (httpOutputStream == streamCopy)
  {
    if (event == 4)
    {
      bytesWritten = [(JXHTTPMultipartBody *)self bytesWritten];
      if (bytesWritten != [(JXHTTPMultipartBody *)self httpContentLength])
      {
        httpContentLength = [(JXHTTPMultipartBody *)self httpContentLength];
        streamBufferLength = httpContentLength - [(JXHTTPMultipartBody *)self bytesWritten];
        if (streamBufferLength >= [(JXHTTPMultipartBody *)self streamBufferLength])
        {
          streamBufferLength = [(JXHTTPMultipartBody *)self streamBufferLength];
        }

        bodyDataBuffer = [(JXHTTPMultipartBody *)self bodyDataBuffer];
        v17 = [(JXHTTPMultipartBody *)self loadMutableData:bodyDataBuffer withDataInRange:[(JXHTTPMultipartBody *)self bytesWritten], streamBufferLength];

        if (v17)
        {
          httpOutputStream2 = [(JXHTTPMultipartBody *)self httpOutputStream];
          bodyDataBuffer2 = [(JXHTTPMultipartBody *)self bodyDataBuffer];
          v20 = [httpOutputStream2 write:objc_msgSend(bodyDataBuffer2 maxLength:{"bytes"), v17}];

          if (v20 >= 1)
          {
            [(JXHTTPMultipartBody *)self setBytesWritten:[(JXHTTPMultipartBody *)self bytesWritten]+ v20];
LABEL_13:
            v7 = streamCopy;
            goto LABEL_14;
          }
        }
      }
    }

    else
    {
      if (event != 8)
      {
        goto LABEL_14;
      }

      streamError = [streamCopy streamError];

      if (streamError)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPMultipartBody.m"];
        lastPathComponent = [v9 lastPathComponent];
        streamError2 = [streamCopy streamError];
        localizedDescription = [streamError2 localizedDescription];
        NSLog(&cfstr_DError.isa, lastPathComponent, 305, localizedDescription);
      }
    }

    httpOutputStream3 = [(JXHTTPMultipartBody *)self httpOutputStream];
    [httpOutputStream3 close];

    goto LABEL_13;
  }

LABEL_14:
}

- (void)addPartWithType:(int)type forKey:(id)key contentType:(id)contentType fileName:(id)name data:(id)data
{
  v10 = *&type;
  dataCopy = data;
  nameCopy = name;
  contentTypeCopy = contentType;
  keyCopy = key;
  boundaryString = [(JXHTTPMultipartBody *)self boundaryString];
  v18 = [JXHTTPMultipartPart withMultipartType:v10 key:keyCopy data:dataCopy contentType:contentTypeCopy fileName:nameCopy boundary:boundaryString];

  partsArray = [(JXHTTPMultipartBody *)self partsArray];
  [partsArray addObject:v18];

  [(JXHTTPMultipartBody *)self setHttpContentLength:-1];
}

- (void)setPartWithType:(int)type forKey:(id)key contentType:(id)contentType fileName:(id)name data:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  contentTypeCopy = contentType;
  nameCopy = name;
  dataCopy = data;
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  partsArray = [(JXHTTPMultipartBody *)self partsArray];
  v14 = [v12 initWithCapacity:{objc_msgSend(partsArray, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  partsArray2 = [(JXHTTPMultipartBody *)self partsArray];
  v16 = [partsArray2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(partsArray2);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = [v20 key];
        v22 = [v21 isEqualToString:keyCopy];

        if (v22)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [partsArray2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  partsArray3 = [(JXHTTPMultipartBody *)self partsArray];
  [partsArray3 removeObjectsInArray:v14];

  [(JXHTTPMultipartBody *)self addPartWithType:type forKey:keyCopy contentType:contentTypeCopy fileName:nameCopy data:dataCopy];
}

- (void)scheduleOutputStreamOnThread:(id)thread
{
  threadCopy = thread;
  if (!threadCopy || ([MEMORY[0x277CCACC8] currentThread], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == threadCopy))
  {
    httpOutputStream = [(JXHTTPMultipartBody *)self httpOutputStream];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [httpOutputStream scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    httpOutputStream2 = [(JXHTTPMultipartBody *)self httpOutputStream];
    [httpOutputStream2 open];
  }

  else
  {
    [(JXHTTPMultipartBody *)self performSelector:sel_scheduleOutputStreamOnThread_ onThread:threadCopy withObject:threadCopy waitUntilDone:1];
  }
}

- (void)recreateStreamsForOperation:(id)operation
{
  operationCopy = operation;
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{-[JXHTTPMultipartBody streamBufferLength](self, "streamBufferLength")}];
  [(JXHTTPMultipartBody *)self setBodyDataBuffer:v5];

  [(JXHTTPMultipartBody *)self setHttpContentLength:-1];
  [(JXHTTPMultipartBody *)self setBytesWritten:0];
  httpOutputStream = [(JXHTTPMultipartBody *)self httpOutputStream];
  [httpOutputStream setDelegate:0];

  httpOutputStream2 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [httpOutputStream2 close];

  [(JXHTTPMultipartBody *)self setHttpInputStream:0];
  [(JXHTTPMultipartBody *)self setHttpOutputStream:0];
  cf = 0;
  readStream = 0;
  CFStreamCreateBoundPair(*MEMORY[0x277CBECE8], &readStream, &cf, [(JXHTTPMultipartBody *)self streamBufferLength]);
  v8 = cf;
  v9 = readStream;
  if (readStream && cf)
  {
    [(JXHTTPMultipartBody *)self setHttpInputStream:readStream];

    v10 = cf;
    [(JXHTTPMultipartBody *)self setHttpOutputStream:cf];

    httpOutputStream3 = [(JXHTTPMultipartBody *)self httpOutputStream];
    [httpOutputStream3 setDelegate:self];

    networkThread = [objc_opt_class() networkThread];
    [(JXHTTPMultipartBody *)self scheduleOutputStreamOnThread:networkThread];
  }

  else
  {
    if (readStream)
    {
      CFRelease(readStream);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }
}

- (void)httpOperationDidFail:(id)fail
{
  httpOutputStream = [(JXHTTPMultipartBody *)self httpOutputStream];
  [httpOutputStream close];
}

- (void)httpOperationDidFinishLoading:(id)loading
{
  httpOutputStream = [(JXHTTPMultipartBody *)self httpOutputStream];
  [httpOutputStream close];
}

- (int64_t)httpContentLength
{
  v15 = *MEMORY[0x277D85DE8];
  result = self->_httpContentLength;
  if (result == -1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    partsArray = [(JXHTTPMultipartBody *)self partsArray];
    v5 = [partsArray countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(partsArray);
          }

          v7 += [*(*(&v10 + 1) + 8 * i) dataLength];
        }

        v6 = [partsArray countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);

      if (v7 < 1)
      {
        goto LABEL_13;
      }

      partsArray = [(JXHTTPMultipartBody *)self finalBoundaryData];
      v7 += [partsArray length];
    }

    else
    {
      v7 = 0;
    }

LABEL_13:
    [(JXHTTPMultipartBody *)self setHttpContentLength:v7];
    return self->_httpContentLength;
  }

  return result;
}

- (JXHTTPMultipartBody)initWithDictionary:(id)dictionary
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [(JXHTTPMultipartBody *)self init];
  if (v5)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [dictionaryCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [dictionaryCopy objectForKey:v11];
          [(JXHTTPMultipartBody *)v5 addString:v12 forKey:v11];
        }

        v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (JXHTTPMultipartBody)init
{
  v17.receiver = self;
  v17.super_class = JXHTTPMultipartBody;
  v2 = [(JXHTTPMultipartBody *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [v4 timeIntervalSince1970];
    v6 = [v3 initWithFormat:@"%.0f", v5];

    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    v10 = [v7 initWithFormat:@"JXHTTP-%@-%@", globallyUniqueString, v6];

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"--%@", v10];
    [(JXHTTPMultipartBody *)v2 setBoundaryString:v11];

    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"--%@--\r\n", v10];
    v13 = [v12 dataUsingEncoding:4];
    [(JXHTTPMultipartBody *)v2 setFinalBoundaryData:v13];

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"multipart/form-data; charset=utf-8; boundary=%@", v10];
    [(JXHTTPMultipartBody *)v2 setHttpContentType:v14];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(JXHTTPMultipartBody *)v2 setPartsArray:v15];

    [(JXHTTPMultipartBody *)v2 setStreamBufferLength:0x10000];
  }

  return v2;
}

- (void)dealloc
{
  httpOutputStream = [(JXHTTPMultipartBody *)self httpOutputStream];
  [httpOutputStream setDelegate:0];

  httpOutputStream2 = [(JXHTTPMultipartBody *)self httpOutputStream];
  [httpOutputStream2 close];

  v5.receiver = self;
  v5.super_class = JXHTTPMultipartBody;
  [(JXHTTPMultipartBody *)&v5 dealloc];
}

+ (id)withDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

@end