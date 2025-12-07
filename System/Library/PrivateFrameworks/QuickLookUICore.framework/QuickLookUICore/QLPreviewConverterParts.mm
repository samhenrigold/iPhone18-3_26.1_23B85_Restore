@interface QLPreviewConverterParts
+ (void)registerPreview:(id)preview;
+ (void)unregisterPreview:(id)preview;
- (BOOL)isCancelled;
- (NSURLResponse)previewResponse;
- (id)delegate;
- (id)newAttachmentURLWithID:(id)d properties:(id)properties;
- (id)previewRequest;
- (id)safeRequestForRequest:(id)request;
- (void)appendData:(id)data forURL:(id)l lastChunk:(BOOL)chunk;
- (void)computePreviewInThread;
- (void)dealloc;
- (void)registerURL:(id)l mimeType:(id)type textEncoding:(id)encoding;
- (void)setDelegate:(id)delegate;
- (void)setError:(id)error;
- (void)startComputingPreview;
- (void)startDataRepresentationWithContentType:(id)type properties:(id)properties;
@end

@implementation QLPreviewConverterParts

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeWeak(&self->_delegate, obj);
    objc_sync_exit(selfCopy);
  }
}

+ (void)registerPreview:(id)preview
{
  v14 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  objc_sync_enter(previewCopy);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [previewCopy setRegisteredURLs:v4];

  fileName = [previewCopy fileName];
  v6 = [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol newUniqueURLWithName:fileName];
  [previewCopy setPreviewURL:v6];

  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    previewURL = [previewCopy previewURL];
    v11 = [previewURL description];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_DEFAULT, "%@ #Conversion", &v12, 0xCu);
  }

  [QLPreviewConverterURLProtocol registerPreview:previewCopy];
  objc_sync_exit(previewCopy);
}

+ (void)unregisterPreview:(id)preview
{
  v14 = *MEMORY[0x277D85DE8];
  previewCopy = preview;
  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    previewURL = [previewCopy previewURL];
    v8 = [previewURL description];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_261653000, v6, OS_LOG_TYPE_DEFAULT, "%@ #Conversion", &v12, 0xCu);
  }

  v9 = previewCopy;
  objc_sync_enter(v9);
  registeredURLs = [v9 registeredURLs];
  [QLPreviewConverterURLProtocol unregisterURLs:registeredURLs andPreview:v9];

  [v9 setRegisteredURLs:0];
  [v9 setPreviewURL:0];
  v11 = v9[15];
  v9[15] = 0;

  objc_sync_exit(v9);
}

- (void)dealloc
{
  [(QLPreviewConverterParts *)self setUrl:0];
  [(QLPreviewConverterParts *)self setData:0];
  [(QLPreviewConverterParts *)self setFileName:0];
  [(QLPreviewConverterParts *)self setUti:0];
  [(QLPreviewConverterParts *)self setPassword:0];
  [(QLPreviewConverterParts *)self setConnection:0];
  [(QLPreviewConverterParts *)self setDelegate:0];
  delegateCallbackThread = self->delegateCallbackThread;
  self->delegateCallbackThread = 0;

  mainError = self->mainError;
  self->mainError = 0;

  v5.receiver = self;
  v5.super_class = QLPreviewConverterParts;
  [(QLPreviewParts *)&v5 dealloc];
}

- (id)safeRequestForRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy URL];
  if ([v5 isFileURL])
  {
    voidRequest = [(QLPreviewParts *)self voidRequest];
    goto LABEL_14;
  }

  hTTPMethod = [requestCopy HTTPMethod];
  v8 = hTTPMethod;
  if (!hTTPMethod || ![hTTPMethod caseInsensitiveCompare:@"get"])
  {
    scheme = [v5 scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqual:@"about"])
    {
      v11 = requestCopy;
    }

    else
    {
      if (([lowercaseString isEqual:@"applewebdata"] & 1) == 0 && !objc_msgSend(lowercaseString, "isEqual:", @"data"))
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        previewURL = [(QLPreviewParts *)selfCopy previewURL];

        if (previewURL && ((-[QLPreviewParts previewURL](selfCopy, "previewURL"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v5 isEqual:v15], v15, (v16 & 1) != 0) || objc_msgSend(objc_msgSend(objc_opt_class(), "urlProtocolClass"), "isSafeRequest:", requestCopy) && ((objc_msgSend(v5, "host"), v18 = objc_claimAutoreleasedReturnValue(), -[QLPreviewParts previewURL](selfCopy, "previewURL"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "host"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v18, "isEqual:", v20), v20, v19, v18, (v21 & 1) != 0) || (-[QLPreviewParts registeredURLs](selfCopy, "registeredURLs"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "containsObject:", v5), v22, (v23 & 1) != 0))))
        {
          voidRequest2 = requestCopy;
        }

        else
        {
          voidRequest2 = [(QLPreviewParts *)selfCopy voidRequest];
        }

        voidRequest = voidRequest2;
        objc_sync_exit(selfCopy);

        goto LABEL_12;
      }

      v11 = [(QLPreviewParts *)self requestForURL:v5];
    }

    voidRequest = v11;
LABEL_12:

    goto LABEL_13;
  }

  voidRequest = [(QLPreviewParts *)self voidRequest];
LABEL_13:

LABEL_14:

  return voidRequest;
}

- (void)startComputingPreview
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  delegateCallbackThread = self->delegateCallbackThread;
  self->delegateCallbackThread = currentThread;

  v5.receiver = self;
  v5.super_class = QLPreviewConverterParts;
  [(QLPreviewParts *)&v5 startComputingPreview];
}

- (void)computePreviewInThread
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(QLPreviewParts *)self setOutstandingURLs:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(QLPreviewParts *)self setEncodingsForURLs:v4];

  obj = self;
  objc_sync_enter(obj);
  previewURL = [(QLPreviewParts *)obj previewURL];

  if (previewURL)
  {
    outstandingURLs = [(QLPreviewParts *)obj outstandingURLs];
    previewURL2 = [(QLPreviewParts *)obj previewURL];
    [outstandingURLs addObject:previewURL2];

    objc_sync_exit(obj);
    v8 = MEMORY[0x277D43EF8];
    v9 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_DEFAULT, "will compute preview #Conversion", buf, 2u);
    }

    if (![(QLPreviewConverterParts *)obj isCancelled])
    {
      [(QLPreviewConverterParts *)obj computePreview];
    }

    v10 = *v8;
    if (!*v8)
    {
      QLSInitLogging();
      v10 = *v8;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v10, OS_LOG_TYPE_DEFAULT, "did compute preview #Conversion", buf, 2u);
    }

    v11 = obj;
    data = obj->_data;
    if (data)
    {
      obj->_data = 0;

      v11 = obj;
    }

    if (v11->_url && v11->_shouldRemoveURLAfterGeneration)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v14 = *v8;
      if (!*v8)
      {
        QLSInitLogging();
        v14 = *v8;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        url = obj->_url;
        *buf = 138412290;
        v64 = url;
        _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_DEFAULT, "Deleting temporary file created for the conversion %@. #Conversion", buf, 0xCu);
      }

      v16 = obj->_url;
      v61 = 0;
      v17 = [defaultManager removeItemAtURL:v16 error:&v61];
      v18 = v61;
      if ((v17 & 1) == 0)
      {
        v19 = *v8;
        if (!*v8)
        {
          QLSInitLogging();
          v19 = *v8;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = v18;
          _os_log_impl(&dword_261653000, v19, OS_LOG_TYPE_DEFAULT, "Problem deleting the temporary file for the preview converter (%@) #Conversion", buf, 0xCu);
        }
      }

      v20 = obj->_url;
      obj->_url = 0;

      v11 = obj;
    }

    htmlErrorDisabled = [(QLPreviewConverterParts *)v11 htmlErrorDisabled];
    v22 = obj;
    objc_sync_enter(v22);
    registeredURLs = [(QLPreviewParts *)v22 registeredURLs];
    previewURL3 = [(QLPreviewParts *)v22 previewURL];
    v25 = [registeredURLs containsObject:previewURL3];

    v26 = htmlErrorDisabled | v25;
    if ([(NSError *)v22->mainError code]== 4)
    {
      domain = [(NSError *)v22->mainError domain];
      v28 = [domain isEqualToString:@"QuickLookErrorDomain"];

      objc_sync_exit(v22);
      if ((v26 | v28))
      {
        goto LABEL_41;
      }
    }

    else
    {
      objc_sync_exit(v22);

      if (v26)
      {
LABEL_41:
        outstandingURLs2 = [(QLPreviewParts *)v22 outstandingURLs];
        v40 = [outstandingURLs2 count] == 0;

        if (!v40)
        {
          v41 = +[QLPreviewConverterURLProtocol _errorForNoPreview];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          obja = [(QLPreviewParts *)v22 outstandingURLs];
          v42 = [obja countByEnumeratingWithState:&v57 objects:v62 count:16];
          if (v42)
          {
            v43 = *v58;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v58 != v43)
                {
                  objc_enumerationMutation(obja);
                }

                v45 = *(*(&v57 + 1) + 8 * i);
                previewURL4 = [(QLPreviewParts *)v22 previewURL];
                v47 = [v45 isEqual:previewURL4];

                if (v47)
                {
                  mainError = v22->mainError;
                  if (!mainError)
                  {
                    mainError = v41;
                  }

                  v49 = mainError;
                  [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol setError:v49 forURL:v45];
                  WeakRetained = objc_loadWeakRetained(&v22->_delegate);
                  v51 = objc_opt_respondsToSelector();

                  if (v51)
                  {
                    v52 = [[QLThreadInvoker alloc] initWithConnection:v22->_connection data:0 error:v49];
                    delegateCallbackThread = v22->delegateCallbackThread;
                    v54 = objc_loadWeakRetained(&v22->_delegate);
                    [(QLThreadInvoker *)v52 performSelector:sel_connectionDidFailWithError_ onThread:delegateCallbackThread withObject:v54 waitUntilDone:0];
                  }
                }

                else
                {
                  [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol setError:v41 forURL:v45];
                }
              }

              v42 = [obja countByEnumeratingWithState:&v57 objects:v62 count:16];
            }

            while (v42);
          }
        }

        [(QLPreviewParts *)v22 setOutstandingURLs:0];
        [(QLPreviewParts *)v22 setEncodingsForURLs:0];
        if (![(QLPreviewConverterParts *)v22 isCancelled])
        {
          v22->computed = 1;
        }

        return;
      }
    }

    v29 = *v8;
    if (!*v8)
    {
      QLSInitLogging();
      v29 = *v8;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v29, OS_LOG_TYPE_DEFAULT, "Preview failed #Conversion", buf, 2u);
    }

    v30 = v22->mainError;
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = +[QLPreviewConverterURLProtocol _errorForNoPreview];
    }

    v32 = v31;
    localizedDescription = [(NSError *)v31 localizedDescription];
    localizedRecoverySuggestion = [(NSError *)v32 localizedRecoverySuggestion];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"<html><meta name=viewport content=width=device-width, minimum-scale=1.0, maximum-scale=1.6><style type=text/css> div {font-family: Arialfont-size: 18;}</style><body><div align=center><br><b>%@</b></div><br><div align=center>%@</div></body></html>", localizedDescription, localizedRecoverySuggestion];;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"text/html", @"MimeType", @"UTF-8", @"TextEncoding", 0}];
    identifier = [*MEMORY[0x277CE1DA0] identifier];
    [(QLPreviewConverterParts *)v22 startDataRepresentationWithContentType:identifier properties:v36];

    v38 = [v35 dataUsingEncoding:4];
    [(QLPreviewConverterParts *)v22 appendData:v38 forURL:0 lastChunk:0];

    goto LABEL_41;
  }

  [(QLPreviewParts *)obj setOutstandingURLs:0];
  [(QLPreviewParts *)obj setEncodingsForURLs:0];
  objc_sync_exit(obj);
}

- (BOOL)isCancelled
{
  if (self->cancelled)
  {
    return 1;
  }

  previewURL = [(QLPreviewParts *)self previewURL];
  v2 = previewURL == 0;

  return v2;
}

- (void)registerURL:(id)l mimeType:(id)type textEncoding:(id)encoding
{
  lCopy = l;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = QLPreviewConverterParts;
  [(QLPreviewParts *)&v13 registerURL:lCopy mimeType:typeCopy textEncoding:encoding];
  previewResponse = self->previewResponse;
  if (previewResponse)
  {
    v11 = [(NSURLResponse *)previewResponse URL];
    v12 = [v11 isEqual:lCopy];

    if (v12)
    {
      [(NSURLResponse *)self->previewResponse _setMIMEType:typeCopy];
    }
  }
}

- (void)startDataRepresentationWithContentType:(id)type properties:(id)properties
{
  v52 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  propertiesCopy = properties;
  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = typeCopy;
    v50 = 2112;
    v51 = propertiesCopy;
    _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_DEFAULT, "contentType = %@, properties = %@ #Conversion", buf, 0x16u);
  }

  v40 = propertiesCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  previewURL = [(QLPreviewParts *)selfCopy previewURL];
  LOBYTE(selfCopy) = previewURL == 0;

  if ((selfCopy & 1) == 0)
  {
    v11 = 134217984;
    if (!propertiesCopy)
    {
      v37 = 0;
      theString = 0;
      goto LABEL_24;
    }

    theString = [propertiesCopy objectForKey:@"TextEncoding"];
    if (theString)
    {
      v12 = CFStringConvertIANACharSetNameToEncoding(theString);
      if (v12 == -1)
      {
        v11 = 134217984;
      }

      else
      {
        v11 = v12;
      }
    }

    v37 = [propertiesCopy objectForKey:@"MimeType"];
    v13 = [propertiesCopy objectForKey:@"HTMLPageCount"];
    v14 = v13;
    if (v13)
    {
      obj->_pageCount = [v13 intValue];
    }

    v15 = [propertiesCopy objectForKey:@"Width"];

    if (v15)
    {
      [v15 floatValue];
    }

    else
    {
      v17 = [propertiesCopy objectForKey:@"HTMLWidth"];
      v15 = v17;
      if (!v17)
      {
LABEL_19:
        v18 = [propertiesCopy objectForKey:@"Height"];

        if (v18)
        {
          [v18 floatValue];
LABEL_23:
          obj->_pageHeight = v19;

          goto LABEL_24;
        }

        v20 = [propertiesCopy objectForKey:@"HTMLHeight"];
        v18 = v20;
        if (v20)
        {
          [v20 floatValue];
          goto LABEL_23;
        }

LABEL_24:
        encodingsForURLs = [(QLPreviewParts *)obj encodingsForURLs];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        previewURL2 = [(QLPreviewParts *)obj previewURL];
        [encodingsForURLs setObject:v22 forKey:previewURL2];

        previewURL3 = [(QLPreviewParts *)obj previewURL];
        [(QLPreviewConverterParts *)obj registerURL:previewURL3 mimeType:v37 textEncoding:theString];

        [propertiesCopy objectForKey:@"Attachments"];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v25 = v44 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v26)
        {
          v41 = *v44;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v44 != v41)
              {
                objc_enumerationMutation(v25);
              }

              v28 = *(*(&v43 + 1) + 8 * i);
              v29 = [v25 objectForKey:v28];
              v30 = [v29 objectForKey:@"MimeType"];
              v31 = [v29 objectForKey:@"TextEncoding"];
              v32 = [v29 objectForKey:@"AttachmentData"];
              v33 = MEMORY[0x277CBEBC0];
              previewURL4 = [(QLPreviewParts *)obj previewURL];
              v35 = [v33 URLWithString:v28 relativeToURL:previewURL4];
              absoluteURL = [v35 absoluteURL];

              if (absoluteURL)
              {
                [(QLPreviewConverterParts *)obj registerURL:absoluteURL mimeType:v30 textEncoding:v31];
                [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol appendData:v32 forURL:absoluteURL lastChunk:1];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
          }

          while (v26);
        }

        goto LABEL_34;
      }

      [v17 floatValue];
    }

    obj->_pageWidth = v16;
    goto LABEL_19;
  }

LABEL_34:
  objc_sync_exit(obj);
}

- (id)newAttachmentURLWithID:(id)d properties:(id)properties
{
  propertiesCopy = properties;
  dCopy = d;
  v8 = [propertiesCopy objectForKey:@"TextEncoding"];
  v9 = [propertiesCopy objectForKey:@"MimeType"];

  v10 = [(QLPreviewParts *)self newAttachmentURLWithID:dCopy mimeType:v9 textEncoding:v8];
  return v10;
}

- (void)appendData:(id)data forURL:(id)l lastChunk:(BOOL)chunk
{
  chunkCopy = chunk;
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  v10 = MEMORY[0x277D43EF8];
  v11 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [lCopy description];
    v14 = v13;
    v15 = &stru_2873E9F50;
    if (chunkCopy)
    {
      v15 = @"(last chunk)";
    }

    v23 = 138412546;
    v24 = v13;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_DEFAULT, "%@ %@ #Conversion", &v23, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  previewURL = [(QLPreviewParts *)selfCopy previewURL];
  v18 = previewURL == 0;

  if (!v18)
  {
    previewURL2 = lCopy;
    if (!lCopy)
    {
      previewURL2 = [(QLPreviewParts *)selfCopy previewURL];
    }

    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    objc_sync_exit(selfCopy);

    [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol appendData:dataCopy forURL:previewURL2 lastChunk:chunkCopy];
    if (lCopy)
    {
      if (!chunkCopy)
      {
        goto LABEL_24;
      }

LABEL_22:
      selfCopy = [(QLPreviewParts *)selfCopy outstandingURLs];
      [(QLPreviewConverterParts *)selfCopy removeObject:previewURL2];
      lCopy = previewURL2;
      goto LABEL_23;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = &selRef_connectionDidReceiveDataLengthReceived_;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_19:
        if (!chunkCopy)
        {
LABEL_24:
          lCopy = previewURL2;
          goto LABEL_25;
        }

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained performSelector:sel_connectionDidFinishLoading_ onThread:selfCopy->delegateCallbackThread withObject:selfCopy->_connection waitUntilDone:0];
        }

        goto LABEL_22;
      }

      v21 = &selRef_connectionDidReceiveData_;
    }

    v22 = [[QLThreadInvoker alloc] initWithConnection:selfCopy->_connection data:dataCopy error:0];
    [(QLThreadInvoker *)v22 performSelector:*v21 onThread:selfCopy->delegateCallbackThread withObject:WeakRetained waitUntilDone:0];

    goto LABEL_19;
  }

  objc_sync_exit(selfCopy);
  WeakRetained = 0;
LABEL_23:

LABEL_25:
}

- (void)setError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  mainError = obj->mainError;
  obj->mainError = errorCopy;

  objc_sync_exit(obj);
}

- (id)previewRequest
{
  v3 = objc_alloc(MEMORY[0x277CCAD20]);
  previewURL = [(QLPreviewParts *)self previewURL];
  v5 = [v3 initWithURL:previewURL cachePolicy:1 timeoutInterval:300.0];

  return v5;
}

- (NSURLResponse)previewResponse
{
  previewResponse = self->previewResponse;
  if (!previewResponse)
  {
    previewURL = [(QLPreviewParts *)self previewURL];
    v5 = [(QLPreviewURLProtocol *)QLPreviewConverterURLProtocol mimeTypeForAttachmentURL:previewURL];

    if (!v5)
    {
      v5 = @"text/html";
    }

    v6 = objc_alloc(MEMORY[0x277CCAD28]);
    previewURL2 = [(QLPreviewParts *)self previewURL];
    v8 = [v6 initWithURL:previewURL2 MIMEType:v5 expectedContentLength:-1 textEncodingName:@"UTF-8"];
    v9 = self->previewResponse;
    self->previewResponse = v8;

    previewResponse = self->previewResponse;
  }

  return previewResponse;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end