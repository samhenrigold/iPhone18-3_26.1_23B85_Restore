@interface SSVMediaSocialPostArtist
- (SSVMediaSocialPostArtist)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
@end

@implementation SSVMediaSocialPostArtist

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIdentifier:self->_identifier];
  [v4 setName:self->_name];
  return v4;
}

- (SSVMediaSocialPostArtist)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v14.receiver = self;
    v14.super_class = SSVMediaSocialPostArtist;
    v6 = [(SSVMediaSocialPostArtist *)&v14 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0", v8);
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1", v11);
      name = v6->_name;
      v6->_name = v12;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_identifier);
  SSXPCDictionarySetObject(v3, "1", self->_name);
  return v3;
}

@end