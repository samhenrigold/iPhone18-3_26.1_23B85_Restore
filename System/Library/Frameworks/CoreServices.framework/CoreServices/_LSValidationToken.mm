@interface _LSValidationToken
- (_LSValidationToken)initWithCoder:(id)coder;
- (_LSValidationToken)initWithPayload:(id)payload;
- (id)setOwner:(id *)result;
- (uint64_t)isCorrectForPayload:(uint64_t)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSValidationToken

- (_LSValidationToken)initWithPayload:(id)payload
{
  v16 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = _LSValidationToken;
  v5 = [(_LSValidationToken *)&v14 init];
  _LSAssertRunningInServer("[_LSValidationToken initWithPayload:]", v6);
  if (v5)
  {
    v7 = [payloadCopy copy];
    payload = v5->_payload;
    v5->_payload = v7;

    SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, bytes);
    v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:32];
    nonce = v5->_nonce;
    v5->_nonce = v9;

    v11 = _LSValidationTokenComputeHMAC(v5->_payload, v5->_nonce);
    HMAC = v5->_HMAC;
    v5->_HMAC = v11;
  }

  return v5;
}

- (uint64_t)isCorrectForPayload:(uint64_t)payload
{
  v4 = a2;
  if (payload)
  {
    _LSAssertRunningInServer("[_LSValidationToken isCorrectForPayload:]", v3);
    if (*(payload + 8))
    {
      if (*(payload + 16))
      {
        v7 = *(payload + 24);
        if (v7)
        {
          v8 = v7;
          v9 = _LSValidationTokenComputeHMAC(v4, *(payload + 16));
          if (v9 && (v10 = [v8 length], v10 == objc_msgSend(v9, "length")))
          {
            v11 = timingsafe_bcmp([v8 bytes], objc_msgSend(v9, "bytes"), v10);

            if (!v11)
            {
              payload = 1;
              goto LABEL_20;
            }
          }

          else
          {
          }
        }
      }
    }

    v12 = [__LSDefaultsGetSharedInstance(v5 v6)];
    if (v12)
    {
      WeakRetained = objc_loadWeakRetained((payload + 32));

      if (WeakRetained)
      {
        v15 = _LSDefaultLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(_LSValidationToken *)(payload + 32) isCorrectForPayload:v15];
        }
      }

      else
      {
        v15 = _LSDefaultLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [_LSValidationToken isCorrectForPayload:v15];
        }
      }
    }

    v16 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_LSValidationToken isCorrectForPayload:v16];
    }

    payload = 0;
  }

LABEL_20:

  return payload;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_payload forKey:@"payload"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeObject:self->_HMAC forKey:@"HMAC"];
}

- (_LSValidationToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _LSValidationToken;
  v5 = [(_LSValidationToken *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    v7 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"HMAC"];
    v9 = v8;
    if (v6 && v7 && v8)
    {
      objc_storeStrong(&v5->_payload, v6);
      objc_storeStrong(&v5->_nonce, v7);
      objc_storeStrong(&v5->_HMAC, v9);
      if (![__LSDefaultsGetSharedInstance(v10 v11)] || (-[_LSValidationToken isCorrectForPayload:](v5, v5->_payload) & 1) != 0)
      {
        goto LABEL_10;
      }

      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[_LSValidationToken initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSValidationToken.mm", 114);
      [coderCopy failWithError:v12];
    }

    else
    {
      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, 0, "[_LSValidationToken initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSValidationToken.mm", 118);
      [coderCopy failWithError:v12];
    }

    v5 = 0;
LABEL_10:
  }

  return v5;
}

- (id)setOwner:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 4, a2);
  }

  return result;
}

- (void)isCorrectForPayload:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1);
  v4 = 138543362;
  v5 = WeakRetained;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Token validation failed against object %{public}@.", &v4, 0xCu);
}

@end