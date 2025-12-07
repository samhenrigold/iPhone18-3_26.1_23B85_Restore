@interface MFIMAPMessageDownload
- (BOOL)isComplete;
- (BOOL)isSuccessful;
- (MFIMAPMessageDownload)initWithMessage:(id)message;
- (id)_networkConverterWithConsumer:(id)consumer didReceiveData:(id)data;
- (id)data;
- (id)topLevelPart;
- (void)_addSubdownloadForBodyTextWithCache:(id)cache;
- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache;
- (void)handleFetchResult:(id)result;
- (void)processResults;
- (void)setFetchBodyData:(BOOL)data;
- (void)setTopLevelPart:(id)part;
@end

@implementation MFIMAPMessageDownload

void ___ef_log_MFIMAPMessageDownload_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFIMAPMessageDownload");
  v1 = _ef_log_MFIMAPMessageDownload_log;
  _ef_log_MFIMAPMessageDownload_log = v0;
}

- (MFIMAPMessageDownload)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = MFIMAPMessageDownload;
  v6 = -[MFIMAPDownload initWithUid:](&v9, sel_initWithUid_, [messageCopy uid]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
    v7->_nextByteToFetch = 0;
  }

  return v7;
}

- (id)topLevelPart
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = self->_topLevelPart;
  [(MFIMAPMessageDownload *)self mf_unlock];

  return v3;
}

- (void)setTopLevelPart:(id)part
{
  partCopy = part;
  [(MFIMAPMessageDownload *)self mf_lock];
  objc_storeStrong(&self->_topLevelPart, part);
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (id)data
{
  if (![(MFIMAPMessageDownload *)self isComplete])
  {
    v6 = 0;
    goto LABEL_35;
  }

  [(MFIMAPMessageDownload *)self mf_lock];
  [(_MFSharedBufferedDataConsumer *)self->_textConsumer _reallyDone];
  if ((*(self + 64) & 2) != 0)
  {
    if (self->_receivedHeaders)
    {
      data = [(MFCollectingDataConsumer *)self->_headerConsumer data];
      v6 = [data mutableCopy];
    }

    else
    {
      v6 = 0;
    }

    if (self->_receivedText && ([(MFBufferedDataConsumer *)self->_textConsumer data], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = v8;
      if (!v6)
      {
        v6 = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytes:"\n" length:1];
      }

      [v6 appendData:v4];
    }

    else
    {
      if (self->_topLevelPart)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v6)
        {
          type = [(MFMimePart *)self->_topLevelPart type];
          if ([type isEqualToString:@"multipart"])
          {
            v11 = [(MFMimePart *)self->_topLevelPart bodyParameterForKey:@"boundary"];

            if (!v11)
            {
              [v6 length];
              if (MFMimeDataGetRangeOfHeader())
              {
                [v6 bytes];
                MFMimePartParseContentTypeHeader();
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v6 = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytes:"\n" length:1];
        }

        v12 = objc_alloc_init(MFMessageWriter);
        [(MFMessageWriter *)v12 appendDataForMimePart:self->_topLevelPart toData:v6 withPartData:Mutable];
      }

      v4 = 0;
    }
  }

  else
  {
    if (!self->_receivedHeaders || ([(MFCollectingDataConsumer *)self->_headerConsumer data], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = 0;
      goto LABEL_30;
    }

    v4 = v3;
    if (self->_receivedText && ([(MFBufferedDataConsumer *)self->_textConsumer data], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = [v4 mutableCopy];
      [v6 appendData:v5];
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_30:
  [(MFIMAPMessageDownload *)self mf_unlock];
  if (v6)
  {
    v13 = (*(self + 64) & 2) != 0 && (*(self + 64) & 0x10) == 0;
    [(MFMessage *)self->_message setMessageData:v6 isPartial:v13];
  }

LABEL_35:

  return v6;
}

- (BOOL)isComplete
{
  v3 = +[MFActivityMonitor currentMonitor];
  error = [v3 error];

  if (error)
  {
    v5 = [error mf_shouldFailDownload] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  if ((*(self + 64) & 4) == 0 || (*(self + 64) & 0x20) == 0)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = MFIMAPMessageDownload;
  return [(MFIMAPCompoundDownload *)&v7 isComplete]& v5;
}

- (BOOL)isSuccessful
{
  if (![(MFIMAPMessageDownload *)self isComplete])
  {
    return 0;
  }

  headerConsumer = self->_headerConsumer;
  textConsumer = self->_textConsumer;
  if (!headerConsumer)
  {
    if (textConsumer)
    {
      return headerConsumer == 0 && self->_receivedText;
    }

    return 0;
  }

  receivedHeaders = self->_receivedHeaders;
  if (textConsumer)
  {
    if (self->_receivedHeaders && self->_receivedText)
    {
      return 1;
    }

    return headerConsumer == 0 && self->_receivedText;
  }

  return receivedHeaders;
}

- (void)handleFetchResult:(id)result
{
  resultCopy = result;
  [(MFIMAPMessageDownload *)self mf_lock];
  if (self->_topLevelPart || [resultCopy type] != 6)
  {
    if ([resultCopy type] != 12)
    {
      goto LABEL_9;
    }

    p_pendingFetchResults = &self->super.super._pendingFetchResults;
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
      goto LABEL_7;
    }
  }

  else
  {
    p_pendingFetchResults = &self->super.super._pendingFetchResults;
    pendingFetchResults = self->super.super._pendingFetchResults;
    if (!pendingFetchResults)
    {
LABEL_7:
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      v7 = *p_pendingFetchResults;
      *p_pendingFetchResults = v6;

      pendingFetchResults = *p_pendingFetchResults;
    }
  }

  [(NSMutableArray *)pendingFetchResults addObject:resultCopy];
LABEL_9:
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)processResults
{
  [(MFIMAPMessageDownload *)self mf_lock];
  v3 = [(NSMutableArray *)self->super.super._pendingFetchResults count];
  if (v3)
  {
    v4 = v3;
    v12 = sel_setRemoteContentLinks_;
    while (1)
    {
      v5 = [(NSMutableArray *)self->super.super._pendingFetchResults objectAtIndex:0, v12];
      v6 = v5;
      if (!self->_topLevelPart && [v5 type] == 6)
      {
        break;
      }

      if ([v6 type] != 12 || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_23;
      }

      v10 = self->_message;
      appleRemoteLinks = [v6 appleRemoteLinks];
      [(MFMessage *)v10 setRemoteContentLinks:appleRemoteLinks];
LABEL_22:

LABEL_23:
      [(NSMutableArray *)self->super.super._pendingFetchResults removeObjectAtIndex:0];
      --v4;

      if (!v4)
      {
        goto LABEL_24;
      }
    }

    appleRemoteLinks = [v6 bodyStructure];
    if (appleRemoteLinks)
    {
      topLevelPart = objc_alloc_init(MFMailMimePart);
      v9 = [(MFMailMimePart *)topLevelPart parseIMAPPropertyList:appleRemoteLinks];
      if ((v9 & 1) == 0)
      {
        v10 = 0;
        goto LABEL_14;
      }

      if (topLevelPart)
      {
        v10 = topLevelPart;
        topLevelPart = self->_topLevelPart;
        self->_topLevelPart = v10;
LABEL_14:

LABEL_15:
        if (![(MFMessage *)v10 isSecurePart]&& [(MFMessage *)v10 hasSecureSubparts])
        {
          *(self + 64) &= ~2u;
          *(self + 64) |= 8u;
        }

        v11 = v9 ^ 1;
        if ((*(self + 64) & 2) == 0)
        {
          v11 = 1;
        }

        if ((v11 & 1) == 0)
        {
          v14 = -86;
          v13 = -86;
          [(MFMessage *)v10 getNumberOfAttachments:0 isSigned:&v14 isEncrypted:&v13];
        }

        goto LABEL_22;
      }
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

LABEL_24:
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (id)_networkConverterWithConsumer:(id)consumer didReceiveData:(id)data
{
  v20[2] = *MEMORY[0x1E69E9840];
  consumerCopy = consumer;
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E69AD6D0]) initWithConsumer:consumerCopy];
  v8 = v7;
  if (dataCopy)
  {
    v9 = objc_alloc(MEMORY[0x1E69AD690]);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __70__MFIMAPMessageDownload__networkConverterWithConsumer_didReceiveData___block_invoke;
    v18 = &unk_1E7AA57E8;
    v19 = dataCopy;
    v10 = [v9 initWithAppendHandler:&v15 doneHandler:0];
    v11 = MEMORY[0x1E69AD688];
    v20[0] = v8;
    v20[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:{2, v15, v16, v17, v18}];
    v13 = [v11 filterWithConsumers:v12];
  }

  else
  {
    v13 = v7;
  }

  return v13;
}

uint64_t __70__MFIMAPMessageDownload__networkConverterWithConsumer_didReceiveData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = [v3 length];

  return v4;
}

- (void)addCommandsToPipeline:(id)pipeline withCache:(id)cache
{
  pipelineCopy = pipeline;
  cacheCopy = cache;
  [(MFIMAPMessageDownload *)self mf_lock];
  if ((*(self + 64) & 4) == 0)
  {
    if (*(self + 64))
    {
      if ((*(self + 64) & 0x40) != 0)
      {
        messageSize = [(MFMessage *)self->_message messageSize];
        v10 = 2 * (messageSize >= [pipelineCopy chunkSize]);
        goto LABEL_12;
      }
    }

    else if ((*(self + 64) & 0x40) != 0)
    {
      goto LABEL_13;
    }

    v10 = 2;
LABEL_12:
    *(self + 64) = *(self + 64) & 0xFD | v10;
LABEL_13:
    v12 = objc_alloc_init(MEMORY[0x1E69AD698]);
    headerConsumer = self->_headerConsumer;
    self->_headerConsumer = v12;

    v14 = self->_headerConsumer;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__MFIMAPMessageDownload_addCommandsToPipeline_withCache___block_invoke;
    v21[3] = &unk_1E7AA25C0;
    v21[4] = self;
    v15 = [(MFIMAPMessageDownload *)self _networkConverterWithConsumer:v14 didReceiveData:v21];
    v16 = [cacheCopy downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"HEADER" consumer:{1024, v15}];
    [(MFIMAPCompoundDownload *)self addSubdownload:v16];

    if ((*(self + 64) & 2) != 0)
    {
      [pipelineCopy addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"BODYSTRUCTURE" bodyDataConsumer:256 consumerSection:{0, 0}];
    }

    else
    {
      [(MFIMAPMessageDownload *)self _addSubdownloadForBodyTextWithCache:cacheCopy];
      *(self + 64) |= 8u;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      account = [(MFMessage *)self->_message account];
      dateReceived = [(MFMessage *)self->_message dateReceived];
      v19 = [account shouldFetchRemoteLinksWithDateReceived:dateReceived];

      if (v19)
      {
        [pipelineCopy addFetchCommandForUid:-[MFIMAPDownload uid](self fetchItem:"uid") expectedLength:@"X-APPLE-REMOTE-LINKS" bodyDataConsumer:1024 consumerSection:{0, 0}];
      }
    }

    *(self + 64) |= 4u;

    goto LABEL_23;
  }

  v8 = *(self + 64);
  if ((v8 & 0x20) == 0)
  {
    if ((*(self + 64) & 8) != 0)
    {
      nextByteToFetch = self->_nextByteToFetch;
      if (nextByteToFetch < [(MFMessage *)self->_message messageSize])
      {
        [(MFIMAPMessageDownload *)self _addSubdownloadForBodyTextWithCache:cacheCopy];
        goto LABEL_23;
      }

      v8 = *(self + 64);
    }

    *(self + 64) = v8 | 0x20;
  }

LABEL_23:
  v20.receiver = self;
  v20.super_class = MFIMAPMessageDownload;
  [(MFIMAPCompoundDownload *)&v20 addCommandsToPipeline:pipelineCopy withCache:cacheCopy];
  [(MFIMAPMessageDownload *)self mf_unlock];
}

- (void)_addSubdownloadForBodyTextWithCache:(id)cache
{
  cacheCopy = cache;
  if (objc_opt_respondsToSelector())
  {
    account = [(MFMessage *)self->_message account];
    fetchLimits = [account fetchLimits];
    fetchMinBytes = [fetchLimits fetchMinBytes];

    if (fetchMinBytes)
    {
      v8 = fetchMinBytes == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 0x4000;
    }

    else
    {
      v9 = fetchMinBytes;
    }
  }

  else
  {
    v9 = 0x4000;
  }

  if (self->_nextByteToFetch)
  {
    v10 = [(MFIMAPMessageDownload *)self _networkConverterWithConsumer:self->_textConsumer didReceiveData:0];
    messageSize = [(MFMessage *)self->_message messageSize];
    nextByteToFetch = self->_nextByteToFetch;
    if (v9 >= messageSize - nextByteToFetch)
    {
      v9 = messageSize - nextByteToFetch;
    }

    v13 = [cacheCopy downloadForUid:-[MFIMAPDownload uid](self section:"uid") range:@"TEXT" consumer:{nextByteToFetch, v9, v10}];
    [(MFIMAPCompoundDownload *)self addSubdownload:v13];

    self->_nextByteToFetch = v9 + nextByteToFetch;
  }

  else
  {
    v14 = objc_alloc_init(_MFSharedBufferedDataConsumer);
    textConsumer = self->_textConsumer;
    self->_textConsumer = v14;

    v16 = self->_textConsumer;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__MFIMAPMessageDownload__addSubdownloadForBodyTextWithCache___block_invoke;
    v20[3] = &unk_1E7AA25C0;
    v20[4] = self;
    v10 = [(MFIMAPMessageDownload *)self _networkConverterWithConsumer:v16 didReceiveData:v20];
    messageSize2 = [(MFMessage *)self->_message messageSize];
    if (messageSize2 <= v9)
    {
      v19 = [cacheCopy downloadForUid:-[MFIMAPDownload uid](self section:"uid") expectedLength:@"TEXT" consumer:{messageSize2, v10}];
      [(MFIMAPCompoundDownload *)self addSubdownload:v19];

      *(self + 64) |= 0x20u;
    }

    else
    {
      v18 = [cacheCopy downloadForUid:-[MFIMAPDownload uid](self section:"uid") range:@"TEXT" consumer:{self->_nextByteToFetch, v9, v10}];
      [(MFIMAPCompoundDownload *)self addSubdownload:v18];

      self->_nextByteToFetch = v9;
    }
  }
}

- (void)setFetchBodyData:(BOOL)data
{
  if (data)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 64) = *(self + 64) & 0xBF | v3;
}

@end