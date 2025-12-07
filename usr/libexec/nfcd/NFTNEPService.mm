@interface NFTNEPService
+ (id)serviceWithURI:(id)i minWaitTime:(unsigned __int8)time maxWaitTimeExtension:(unsigned __int8)extension maxMessageSize:(unsigned __int16)size;
- (NFTNEPService)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTNEPService

+ (id)serviceWithURI:(id)i minWaitTime:(unsigned __int8)time maxWaitTimeExtension:(unsigned __int8)extension maxMessageSize:(unsigned __int16)size
{
  sizeCopy = size;
  extensionCopy = extension;
  timeCopy = time;
  iCopy = i;
  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setUri:iCopy];
    [v11 setMinWaitTime:timeCopy];
    [v11 setMaxWaitTimeExtension:extensionCopy];
    [v11 setMaxMessageSize:sizeCopy];
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = [(NSString *)self->_uri copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    *(v5 + 8) = self->_minWaitTime;
    *(v5 + 9) = self->_maxWaitTimeExtension;
    *(v5 + 5) = self->_maxMessageSize;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uri = self->_uri;
  coderCopy = coder;
  [coderCopy encodeObject:uri forKey:@"uri"];
  [coderCopy encodeInteger:self->_minWaitTime forKey:@"minWaitTime"];
  [coderCopy encodeInteger:self->_maxWaitTimeExtension forKey:@"maxWaitTimeExtension"];
  [coderCopy encodeInteger:self->_maxMessageSize forKey:@"maxMessageSize"];
}

- (NFTNEPService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFTNEPService;
  v5 = [(NFTNEPService *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
    uri = v5->_uri;
    v5->_uri = v6;

    v5->_minWaitTime = [coderCopy decodeIntegerForKey:@"minWaitTime"];
    v5->_maxWaitTimeExtension = [coderCopy decodeIntegerForKey:@"maxWaitTimeExtension"];
    v5->_maxMessageSize = [coderCopy decodeIntegerForKey:@"maxMessageSize"];
  }

  return v5;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NFTNEPService *)self uri];
  v5 = [v3 initWithFormat:@"{uri=%@, Nwait=%d, twait=%d, maxMsgSize=%d}", v4, -[NFTNEPService maxWaitTimeExtension](self, "maxWaitTimeExtension"), -[NFTNEPService minWaitTime](self, "minWaitTime"), -[NFTNEPService maxMessageSize](self, "maxMessageSize")];

  return v5;
}

@end