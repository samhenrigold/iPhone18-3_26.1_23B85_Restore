@interface SSVMediaSocialPostExternalDestination
- (SSVMediaSocialPostExternalDestination)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostExternalDestination

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAccessToken:self->_accessToken];
  [v4 setPageAccessToken:self->_pageAccessToken];
  [v4 setPageIdentifier:self->_pageIdentifier];
  [v4 setServiceIdentifier:self->_serviceIdentifier];
  return v4;
}

- (SSVMediaSocialPostExternalDestination)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSVMediaSocialPostExternalDestination *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = objc_opt_class();
    v9 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0", v8);
    accessToken = v6->_accessToken;
    v6->_accessToken = v9;

    v11 = objc_opt_class();
    v12 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1", v11);
    pageAccessToken = v6->_pageAccessToken;
    v6->_pageAccessToken = v12;

    v14 = objc_opt_class();
    v15 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2", v14);
    pageIdentifier = v6->_pageIdentifier;
    v6->_pageIdentifier = v15;

    v17 = objc_opt_class();
    v18 = SSXPCDictionaryCopyCFObjectWithClass(v5, "3", v17);
    self = v6->_serviceIdentifier;
    v6->_serviceIdentifier = v18;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_accessToken);
  SSXPCDictionarySetObject(v3, "1", self->_pageAccessToken);
  SSXPCDictionarySetObject(v3, "2", self->_pageIdentifier);
  SSXPCDictionarySetObject(v3, "3", self->_serviceIdentifier);
  return v3;
}

@end