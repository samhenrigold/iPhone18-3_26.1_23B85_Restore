@interface BLDAAPBuffer
- (BLDAAPBuffer)init;
- (NSData)data;
- (int64_t)appendHeader:(unsigned int)header size:(unsigned int)size;
- (int64_t)appendUInt32:(unsigned int)int32 withCode:(unsigned int)code;
- (int64_t)appendUInt64:(unint64_t)int64 withCode:(unsigned int)code;
- (int64_t)appendUInt8:(unsigned __int8)int8 withCode:(unsigned int)code;
@end

@implementation BLDAAPBuffer

- (BLDAAPBuffer)init
{
  v6.receiver = self;
  v6.super_class = BLDAAPBuffer;
  v2 = [(BLDAAPBuffer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

- (int64_t)appendUInt8:(unsigned __int8)int8 withCode:(unsigned int)code
{
  v4 = *&code;
  int8Copy = int8;
  v6 = self->_data;
  [(BLDAAPBuffer *)self appendHeader:v4 size:1];
  v7 = [(NSData *)v6 length];
  [(NSData *)v6 appendBytes:&int8Copy length:1];

  return v7;
}

- (int64_t)appendUInt32:(unsigned int)int32 withCode:(unsigned int)code
{
  v4 = *&code;
  data = self->_data;
  v10 = bswap32(int32);
  v7 = data;
  [(BLDAAPBuffer *)self appendHeader:v4 size:4];
  v8 = [(NSData *)v7 length];
  [(NSData *)v7 appendBytes:&v10 length:4];

  return v8;
}

- (int64_t)appendUInt64:(unint64_t)int64 withCode:(unsigned int)code
{
  v4 = *&code;
  data = self->_data;
  v10 = bswap64(int64);
  v7 = data;
  [(BLDAAPBuffer *)self appendHeader:v4 size:8];
  v8 = [(NSData *)v7 length];
  [(NSData *)v7 appendBytes:&v10 length:8];

  return v8;
}

- (int64_t)appendHeader:(unsigned int)header size:(unsigned int)size
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = self->_data;
  v7 = [(NSData *)v6 length];
  v9[0] = bswap32(header);
  v9[1] = bswap32(size);
  [(NSData *)v6 appendBytes:v9 length:8];

  return v7 + 4;
}

- (NSData)data
{
  v2 = [(NSData *)self->_data copy];

  return v2;
}

@end