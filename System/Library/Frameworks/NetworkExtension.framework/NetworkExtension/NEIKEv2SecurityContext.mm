@interface NEIKEv2SecurityContext
+ (id)removePaddingFromDecryptedPayload:(uint64_t)payload;
- (_DWORD)initWithMinimumEncryptedPayloadSize:(void *)size;
- (unsigned)maximumPayloadSizeWithinLimit:(unsigned int)limit;
- (unsigned)overheadForPlaintextLength:(unsigned int)length;
@end

@implementation NEIKEv2SecurityContext

- (unsigned)maximumPayloadSizeWithinLimit:(unsigned int)limit
{
  if (self)
  {
    minimumEncryptedPayloadSize = self->_minimumEncryptedPayloadSize;
    if (minimumEncryptedPayloadSize >= limit)
    {
      LODWORD(self) = 0;
      return self;
    }
  }

  else
  {
    minimumEncryptedPayloadSize = 0;
    if (!limit)
    {
      return self;
    }
  }

  LODWORD(self) = limit - minimumEncryptedPayloadSize;
  return self;
}

- (unsigned)overheadForPlaintextLength:(unsigned int)length
{
  if (self)
  {
    LODWORD(self) = self->_minimumEncryptedPayloadSize;
  }

  return self;
}

+ (id)removePaddingFromDecryptedPayload:(uint64_t)payload
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 length];
  v4 = v3;
  if (!v3)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "BACKTRACE Can't remove padding from payload of length 0", buf, 2u);
    }

    goto LABEL_14;
  }

  v11 = 0;
  [v2 getBytes:&v11 range:{v3 - 1, 1}];
  v5 = v11 + 1;
  if (v11 >= v4)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v13 = v5;
      v14 = 1024;
      v15 = v4;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "BACKTRACE Padding len (%u) > decrypted data len (%u)", buf, 0xEu);
    }

LABEL_14:
    v7 = 0;
    goto LABEL_7;
  }

  if (v4 == v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  else
  {
    [v2 setLength:v4 - v5];
    v6 = v2;
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (_DWORD)initWithMinimumEncryptedPayloadSize:(void *)size
{
  v6.receiver = size;
  v6.super_class = NEIKEv2SecurityContext;
  result = objc_msgSendSuper2(&v6, sel_init);
  if (result)
  {
    result[2] = a2;
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "[super init] failed", v5, 2u);
    }

    return 0;
  }

  return result;
}

@end