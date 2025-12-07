@interface SUUITestDataURLProtocol
+ (BOOL)canInitWithRequest:(id)request;
- (void)startLoading;
@end

@implementation SUUITestDataURLProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  requestCopy = request;
  v4 = objc_autoreleasePoolPush();
  v5 = [requestCopy URL];
  scheme = [v5 scheme];

  LOBYTE(v5) = objc_msgSend_isEqualToString_(scheme);
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (void)startLoading
{
  v3 = objc_autoreleasePoolPush();
  request = [(NSURLProtocol *)self request];
  v5 = [request URL];

  resourceSpecifier = [v5 resourceSpecifier];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  resourcePath = [mainBundle resourcePath];
  v9 = [resourcePath stringByAppendingPathComponent:resourceSpecifier];

  v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v9];
  if (v10)
  {
    client2 = v10;
    goto LABEL_5;
  }

  v12 = SUUIBundle();
  resourcePath2 = [v12 resourcePath];
  v14 = [resourcePath2 stringByAppendingPathComponent:resourceSpecifier];

  v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v14];
  if (v15)
  {
    client2 = v15;
    v9 = v14;
LABEL_5:
    pathExtension = [resourceSpecifier pathExtension];
    if (pathExtension)
    {
      v18 = pathExtension;
      v19 = SUUIMobileCoreServicesFramework(pathExtension, v17);
      v20 = SUUIWeakLinkedSymbolForString("kUTTagClassFilenameExtension", v19);
      v21 = *v20;
      v23 = SUUIMobileCoreServicesFramework(v20, v22);
      v24 = SUUIWeakLinkedSymbolForString("UTTypeCreatePreferredIdentifierForTag", v23);
      if (v24 && (v25 = v24(v21, v18, 0)) != 0)
      {
        v27 = v25;
        v28 = SUUIMobileCoreServicesFramework(v25, v26);
        v29 = SUUIWeakLinkedSymbolForString("kUTTagClassMIMEType", v28);
        v30 = *v29;
        v32 = SUUIMobileCoreServicesFramework(v29, v31);
        v33 = SUUIWeakLinkedSymbolForString("UTTypeCopyPreferredTagWithClass", v32);
        if (v33)
        {
          v34 = v33(v27, v30);
        }

        else
        {
          v34 = 0;
        }

        CFRelease(v27);
        CFRelease(v18);
        if (v34)
        {
          goto LABEL_12;
        }
      }

      else
      {
        CFRelease(v18);
      }
    }

    v34 = @"text/xml+itml";
LABEL_12:
    client = [(NSURLProtocol *)self client];
    v36 = [objc_alloc(MEMORY[0x277CBABA8]) initWithURL:v5 MIMEType:v34 expectedContentLength:objc_msgSend(client2 textEncodingName:{"length"), 0}];
    [client URLProtocol:self didReceiveResponse:v36 cacheStoragePolicy:2];
    [client URLProtocol:self didLoadData:client2];
    [client URLProtocolDidFinishLoading:self];

    goto LABEL_13;
  }

  client2 = [(NSURLProtocol *)self client];
  v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SUUIErrorDomain" code:0 userInfo:0];
  [client2 URLProtocol:self didFailWithError:v34];
  v9 = v14;
LABEL_13:

  objc_autoreleasePoolPop(v3);
}

@end