@interface TKCompactTLVRecord
+ (id)parseFromDataSource:(id)source;
- (TKCompactTLVRecord)initWithTag:(UInt8)tag value:(NSData *)value;
@end

@implementation TKCompactTLVRecord

- (TKCompactTLVRecord)initWithTag:(UInt8)tag value:(NSData *)value
{
  v4 = tag;
  v6 = value;
  v7 = MEMORY[0x1E695D940];
  if (v4 >= 0x10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad tag value for TKCompactTLVRecord (%u)", v4}];
  }

  if ([(NSData *)v6 length]>= 0x10)
  {
    [MEMORY[0x1E695DF30] raise:*v7 format:{@"value for TKCompactTLVRecord too big (%lu)", -[NSData length](v6, "length")}];
  }

  v12 = [(NSData *)v6 length]| (16 * v4);
  v8 = [MEMORY[0x1E695DF88] dataWithBytes:&v12 length:1];
  [v8 appendData:v6];
  v11.receiver = self;
  v11.super_class = TKCompactTLVRecord;
  v9 = [(TKTLVRecord *)&v11 initWithTag:v4 value:v6 data:v8];

  return v9;
}

+ (id)parseFromDataSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy bytesSafeToRead:1])
  {
    v5 = [sourceCopy ptr];
    fetchByte = [sourceCopy fetchByte];
    v7 = fetchByte;
    v8 = [sourceCopy fetchDataWithLength:fetchByte & 0xF];
    if (v8)
    {
      v13.receiver = self;
      v13.super_class = &OBJC_METACLASS___TKCompactTLVRecord;
      v9 = objc_msgSendSuper2(&v13, sel_alloc);
      v10 = [sourceCopy dataFromPtr:v5];
      v11 = [v9 initWithTag:v7 >> 4 value:v8 data:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end