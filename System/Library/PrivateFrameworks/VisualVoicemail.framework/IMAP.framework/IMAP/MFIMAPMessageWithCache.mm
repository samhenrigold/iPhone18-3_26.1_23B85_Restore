@interface MFIMAPMessageWithCache
- (BOOL)isMessageContentsLocallyAvailable;
- (id)headerData;
- (id)messageData;
- (void)dealloc;
- (void)setHeaders:(id)headers;
- (void)setMessageData:(id)data isPartial:(BOOL)partial;
@end

@implementation MFIMAPMessageWithCache

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPMessageWithCache;
  [(MFIMAPMessage *)&v2 dealloc];
}

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
        v11 = [(NSData *)v8 mf_subdataWithRange:mf_rangeOfRFC822HeaderData, v10];
        v12 = [objc_alloc(MEMORY[0x277D24F40]) initWithHeaderData:v11 encoding:{-[MFIMAPMessageWithCache preferredEncoding](self, "preferredEncoding")}];
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

- (void)setHeaders:(id)headers
{
  headersCopy = headers;
  if (self->_headers != headersCopy)
  {
    v6 = headersCopy;
    objc_storeStrong(&self->_headers, headers);
    headersCopy = v6;
  }
}

- (id)headerData
{
  messageData = [(MFIMAPMessageWithCache *)self messageData];
  v4 = messageData;
  if (!messageData || (v5 = [messageData mf_rangeOfRFC822HeaderData], v5 == 0x7FFFFFFFFFFFFFFFLL) || (objc_msgSend(v4, "mf_subdataWithRange:", v5, v6), (headerData = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9.receiver = self;
    v9.super_class = MFIMAPMessageWithCache;
    headerData = [(MFIMAPMessageWithCache *)&v9 headerData];
  }

  return headerData;
}

@end