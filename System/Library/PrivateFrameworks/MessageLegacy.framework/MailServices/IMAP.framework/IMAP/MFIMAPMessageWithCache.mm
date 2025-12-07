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
  v3.receiver = self;
  v3.super_class = MFIMAPMessageWithCache;
  [(MFIMAPMessage *)&v3 dealloc];
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
    v5.receiver = self;
    v5.super_class = MFIMAPMessageWithCache;
    return [(MFIMAPMessageWithCache *)&v5 messageData];
  }

  return v3;
}

- (void)setMessageData:(id)data isPartial:(BOOL)partial
{
  if (self->_messageData != data)
  {
    partialCopy = partial;
    if (data)
    {
      mf_rangeOfRFC822HeaderData = [data mf_rangeOfRFC822HeaderData];
      if (mf_rangeOfRFC822HeaderData != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [data mf_subdataWithRange:{mf_rangeOfRFC822HeaderData, v8}];
        v10 = [objc_alloc(MEMORY[0x277D24F40]) initWithHeaderData:v9 encoding:{-[MFIMAPMessageWithCache preferredEncoding](self, "preferredEncoding")}];
        if (v10)
        {
          v11 = v10;
          [(MFIMAPMessageWithCache *)self setHeaders:v10];
        }
      }
    }

    self->_messageData = data;
    v12.receiver = self;
    v12.super_class = MFIMAPMessageWithCache;
    [(MFIMAPMessage *)&v12 setIsPartial:partialCopy];
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
  headers = self->_headers;
  if (headers != headers)
  {

    self->_headers = headers;
  }
}

- (id)headerData
{
  messageData = [(MFIMAPMessageWithCache *)self messageData];
  if (!messageData || (v4 = messageData, v5 = [messageData mf_rangeOfRFC822HeaderData], v5 == 0x7FFFFFFFFFFFFFFFLL) || (result = objc_msgSend(v4, "mf_subdataWithRange:", v5, v6)) == 0)
  {
    v8.receiver = self;
    v8.super_class = MFIMAPMessageWithCache;
    return [(MFIMAPMessageWithCache *)&v8 headerData];
  }

  return result;
}

@end