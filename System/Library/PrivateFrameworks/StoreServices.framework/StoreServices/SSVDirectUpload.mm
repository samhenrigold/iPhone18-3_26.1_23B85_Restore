@interface SSVDirectUpload
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SSVDirectUpload)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)_adoptStatusFromUpload:(id)upload;
@end

@implementation SSVDirectUpload

- (void)_adoptStatusFromUpload:(id)upload
{
  uploadCopy = upload;
  self->_countOfBytesExpectedToSend = [uploadCopy countOfBytesExpectedToSend];
  self->_countOfBytesSent = [uploadCopy countOfBytesSent];
  error = [uploadCopy error];
  error = self->_error;
  self->_error = error;

  state = [uploadCopy state];
  self->_state = state;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = SSVDirectUpload;
  v4 = [(SSVDirectUpload *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ [PID: %lld]", v4, self->_persistentIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    persistentIdentifier = [(SSVDirectUpload *)self persistentIdentifier];
    v6 = persistentIdentifier == [equalCopy persistentIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SSVDirectUpload)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v31.receiver = self;
    v31.super_class = SSVDirectUpload;
    v6 = [(SSVDirectUpload *)&v31 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2", v8);
      categoryName = v6->_categoryName;
      v6->_categoryName = v9;

      v6->_countOfBytesExpectedToSend = xpc_dictionary_get_int64(v5, "0");
      v6->_countOfBytesSent = xpc_dictionary_get_int64(v5, "1");
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = xpc_dictionary_get_value(v5, "3");
      v13 = [v11 initWithXPCEncoding:v12];
      error = v6->_error;
      v6->_error = v13;

      v6->_explicitContent = xpc_dictionary_get_BOOL(v5, "4");
      v6->_persistentIdentifier = xpc_dictionary_get_int64(v5, "5");
      v6->_state = xpc_dictionary_get_int64(v5, "6");
      v15 = objc_opt_class();
      v16 = SSXPCDictionaryCopyCFObjectWithClass(v5, "7", v15);
      subtitle = v6->_subtitle;
      v6->_subtitle = v16;

      v18 = objc_opt_class();
      v19 = SSXPCDictionaryCopyCFObjectWithClass(v5, "9", v18);
      title = v6->_title;
      v6->_title = v19;

      v21 = objc_opt_class();
      v22 = SSXPCDictionaryCopyCFObjectWithClass(v5, "A", v21);
      uploadKind = v6->_uploadKind;
      v6->_uploadKind = v22;

      v24 = objc_opt_class();
      v25 = SSXPCDictionaryCopyCFObjectWithClass(v5, "B", v24);
      uti = v6->_uti;
      v6->_uti = v25;

      v27 = objc_opt_class();
      v28 = SSXPCDictionaryCopyCFObjectWithClass(v5, "8", v27);
      if (v28)
      {
        v29 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v28];
        thumbnailImageURL = v6->_thumbnailImageURL;
        v6->_thumbnailImageURL = v29;
      }
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
  SSXPCDictionarySetObject(v3, "2", self->_categoryName);
  xpc_dictionary_set_int64(v3, "0", self->_countOfBytesExpectedToSend);
  xpc_dictionary_set_int64(v3, "1", self->_countOfBytesSent);
  SSXPCDictionarySetObject(v3, "3", self->_error);
  xpc_dictionary_set_BOOL(v3, "4", self->_explicitContent);
  xpc_dictionary_set_int64(v3, "5", self->_persistentIdentifier);
  xpc_dictionary_set_int64(v3, "6", self->_state);
  SSXPCDictionarySetObject(v3, "7", self->_subtitle);
  absoluteString = [(NSURL *)self->_thumbnailImageURL absoluteString];
  SSXPCDictionarySetObject(v3, "8", absoluteString);

  SSXPCDictionarySetObject(v3, "9", self->_title);
  SSXPCDictionarySetObject(v3, "A", self->_uploadKind);
  SSXPCDictionarySetObject(v3, "B", self->_uti);
  return v3;
}

@end