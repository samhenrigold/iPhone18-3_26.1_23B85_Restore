@interface SSPlayInfoRequestContext
- (SSPlayInfoRequestContext)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation SSPlayInfoRequestContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPlayInfoRequestContext;
  [(SSPlayInfoRequestContext *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  v5[2] = [(NSNumber *)self->_contentIdentifier copyWithZone:zone];
  v5[6] = [(NSString *)self->_playbackType copyWithZone:zone];
  v5[3] = [(NSString *)self->_playerGUID copyWithZone:zone];
  v5[4] = [(NSData *)self->_sic copyWithZone:zone];
  v5[5] = [(NSArray *)self->_sinfs copyWithZone:zone];
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_accountIdentifier);
  SSXPCDictionarySetCFObject(v3, "1", self->_contentIdentifier);
  SSXPCDictionarySetObject(v3, "5", self->_playbackType);
  SSXPCDictionarySetCFObject(v3, "2", self->_playerGUID);
  SSXPCDictionarySetCFObject(v3, "3", self->_sic);
  SSXPCDictionarySetCFObject(v3, "4", self->_sinfs);
  return v3;
}

- (SSPlayInfoRequestContext)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v13.receiver = self;
    v13.super_class = SSPlayInfoRequestContext;
    v5 = [(SSPlayInfoRequestContext *)&v13 init];
    if (v5)
    {
      v7 = objc_opt_class();
      v5->_accountIdentifier = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0", v7);
      v8 = objc_opt_class();
      v5->_contentIdentifier = SSXPCDictionaryCopyCFObjectWithClass(encoding, "1", v8);
      v9 = objc_opt_class();
      v5->_playbackType = SSXPCDictionaryCopyObjectWithClass(encoding, "5", v9);
      v10 = objc_opt_class();
      v5->_playerGUID = SSXPCDictionaryCopyCFObjectWithClass(encoding, "2", v10);
      v11 = objc_opt_class();
      v5->_sic = SSXPCDictionaryCopyCFObjectWithClass(encoding, "3", v11);
      v12 = objc_opt_class();
      v5->_sinfs = SSXPCDictionaryCopyCFObjectWithClass(encoding, "4", v12);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end