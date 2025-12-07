@interface MFIMAPMessageWithCache
- (BOOL)isMessageContentsLocallyAvailable;
- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary;
- (id)headerData;
- (id)messageData;
- (void)setMessageData:(id)data isPartial:(BOOL)partial;
@end

@implementation MFIMAPMessageWithCache

- (id)messageData
{
  if ([(MFIMAPMessage *)self isPartial])
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_messageData;
  }

  if ([(MFIMAPMessage *)self isPartial])
  {
    v6.receiver = self;
    v6.super_class = MFIMAPMessageWithCache;
    messageData = [(MFIMAPMessageWithCache *)&v6 messageData];

    v3 = messageData;
  }

  return v3;
}

- (void)setMessageData:(id)data isPartial:(BOOL)partial
{
  partialCopy = partial;
  dataCopy = data;
  v8 = dataCopy;
  if (self->_messageData != dataCopy)
  {
    if (dataCopy)
    {
      mf_rangeOfRFC822HeaderData = [(NSData *)dataCopy mf_rangeOfRFC822HeaderData];
      if (mf_rangeOfRFC822HeaderData != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(NSData *)v8 mf_subdataWithRange:mf_rangeOfRFC822HeaderData, v9];
        v12 = [objc_alloc(MEMORY[0x1E69AD6F8]) initWithHeaderData:v11 encoding:{-[MFIMAPMessageWithCache preferredEncoding](self, "preferredEncoding")}];
        if (v12)
        {
          [(MFIMAPMessageWithCache *)self setHeaders:v12];
        }
      }
    }

    objc_storeStrong(&self->_messageData, data);
    v13.receiver = self;
    v13.super_class = MFIMAPMessageWithCache;
    [(MFIMAPMessage *)&v13 setIsPartial:partialCopy];
  }
}

- (BOOL)messageDataHolder:(id *)holder messageSize:(unint64_t *)size isComplete:(BOOL *)complete downloadIfNecessary:(BOOL)necessary
{
  messageData = self->_messageData;
  if (messageData)
  {
    if (size)
    {
      *size = [(NSData *)messageData length:holder];
    }

    if (complete)
    {
      *complete = 1;
    }

    if (holder)
    {
      v10 = [MEMORY[0x1E69AD6B8] dataHolderWithData:self->_messageData];
      v11 = v10;
      result = 0;
      *holder = v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MFIMAPMessageWithCache;
    return [(MFIMAPMessageWithCache *)&v13 messageDataHolder:holder messageSize:size isComplete:complete downloadIfNecessary:necessary];
  }

  return result;
}

- (BOOL)isMessageContentsLocallyAvailable
{
  if (self->_messageData)
  {
    return ![(MFIMAPMessage *)self isPartial];
  }

  else
  {
    return 0;
  }
}

- (id)headerData
{
  messageData = [(MFIMAPMessageWithCache *)self messageData];
  v5 = messageData;
  if (!messageData || (v4 = [messageData mf_rangeOfRFC822HeaderData], v4 == 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v5, "mf_subdataWithRange:", v4, v6), (headerData = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = MFIMAPMessageWithCache;
    headerData = [(MFIMAPMessageWithCache *)&v9 headerData];
  }

  return headerData;
}

@end