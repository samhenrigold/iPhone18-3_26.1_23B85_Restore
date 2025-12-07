@interface SSVServerAuthenticateResponse
- (SSVServerAuthenticateResponse)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SSVServerAuthenticateResponse

- (SSVServerAuthenticateResponse)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v14.receiver = self;
  v14.super_class = SSVServerAuthenticateResponse;
  v5 = [(SSVServerAuthenticateResponse *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass(encodingCopy, "0", v6);
    authenticatedAccountIdentifier = v5->_authenticatedAccountIdentifier;
    v5->_authenticatedAccountIdentifier = v7;

    v5->_performedButtonIndex = xpc_dictionary_get_int64(encodingCopy, "1");
    v5->_selectedButtonIndex = xpc_dictionary_get_int64(encodingCopy, "3");
    v9 = objc_opt_class();
    v10 = SSXPCDictionaryCopyCFObjectWithClass(encodingCopy, "2", v9);
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];
      redirectURL = v5->_redirectURL;
      v5->_redirectURL = v11;
    }
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_authenticatedAccountIdentifier);
  xpc_dictionary_set_int64(v3, "1", self->_performedButtonIndex);
  SSXPCDictionarySetCFObject(v3, "2", [(NSURL *)self->_redirectURL absoluteString]);
  xpc_dictionary_set_int64(v3, "3", self->_selectedButtonIndex);
  return v3;
}

@end