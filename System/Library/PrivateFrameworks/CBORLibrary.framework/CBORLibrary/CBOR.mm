@interface CBOR
+ (id)cborFalse;
+ (id)cborNil;
+ (id)cborTrue;
+ (id)cborWithArray:(id)array;
+ (id)cborWithData:(id)data;
+ (id)cborWithDateTime:(id)time;
+ (id)cborWithDictionary:(id)dictionary;
+ (id)cborWithDictionary:(id)dictionary keyOrderList:(id)list;
+ (id)cborWithDouble:(double)double;
+ (id)cborWithEmbeddedCBORData:(id)data;
+ (id)cborWithEncodedTag24Data:(id)data;
+ (id)cborWithFloat:(float)float;
+ (id)cborWithFullDate:(id)date;
+ (id)cborWithHalfFloat:(float)float;
+ (id)cborWithInteger:(int64_t)integer;
+ (id)cborWithUTF8String:(id)string;
+ (id)cborWithUnsignedInteger:(unint64_t)integer;
+ (id)decodeFromBytes:(const char *)bytes length:(unint64_t *)length recursionLevel:(int)level keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy;
+ (id)decodeFromData:(id)data keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy;
+ (id)decodeMajorType0And1FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag;
+ (id)decodeMajorType2And3FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag indefiniteLenContainerType:(unint64_t)type noCopy:(BOOL)copy;
+ (id)decodeMajorType4FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag recursionLevel:(int)level keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy;
+ (id)decodeMajorType5FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag recursionLevel:(int)level keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy;
+ (id)decodeMajorType6FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag;
+ (id)decodeMajorType7FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag;
+ (id)encodeMajorType2or3:(uint64_t)type2or3;
+ (id)encodeMajorType7Bool:(uint64_t)bool;
+ (id)encodeMajorType7Undefined;
- (BOOL)BOOLValue;
- (BOOL)isDate;
- (BOOL)isEmbeddedCBORData;
- (BOOL)isEqual:(id)equal;
- (CBOR)initWithCbor:(id)cbor tag:(id)tag;
- (CBOR)initWithType:(unint64_t)type value:(id)value valueSize:(int64_t)size tag:(id)tag;
- (NSArray)array;
- (NSData)data;
- (NSDate)date;
- (NSDictionary)dictionary;
- (NSNumber)numeric;
- (NSString)string;
- (double)doubleValue;
- (id)asJSON;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeToEmbeddedCBORData;
- (int64_t)longLongValue;
- (unint64_t)unsignedLongLongValue;
@end

@implementation CBOR

+ (id)encodeMajorType2or3:(uint64_t)type2or3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 dataUsingEncoding:4];
    v4 = 96;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = objc_opt_new();
      goto LABEL_17;
    }

    v3 = v2;
    v4 = 64;
  }

  [v3 length];
  if ([v3 length] >> 32)
  {
    v11 = v4 | 0x1B;
    v12[0] = bswap64([v3 length]);
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 9}];
    [v5 appendBytes:&v11 length:1];
    v6 = v12;
    v7 = v5;
    v8 = 8;
  }

  else if ([v3 length] < 0x10000)
  {
    if ([v3 length] < 0x100)
    {
      if ([v3 length] < 0x18)
      {
        v11 = v4 + [v3 length];
        v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 1}];
        v5 = v7;
        v6 = &v11;
      }

      else
      {
        v11 = v4 | 0x18;
        LOBYTE(v12[0]) = [v3 length];
        v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 2}];
        [v5 appendBytes:&v11 length:1];
        v6 = v12;
        v7 = v5;
      }

      v8 = 1;
    }

    else
    {
      v11 = v4 | 0x19;
      LOWORD(v12[0]) = bswap32([v3 length]) >> 16;
      v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 3}];
      [v5 appendBytes:&v11 length:1];
      v6 = v12;
      v7 = v5;
      v8 = 2;
    }
  }

  else
  {
    v11 = v4 | 0x1A;
    LODWORD(v12[0]) = bswap32([v3 length]);
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:{objc_msgSend(v3, "length") + 5}];
    [v5 appendBytes:&v11 length:1];
    v6 = v12;
    v7 = v5;
    v8 = 4;
  }

  [v7 appendBytes:v6 length:v8];
  [v5 appendData:v3];
  v9 = v5;

LABEL_17:

  return v9;
}

uint64_t __51__CBOR_Encoder__encodeMajorType5_encodingKeyOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEA90] dataWithCBOR:v5];
  v8 = [MEMORY[0x277CBEA90] dataWithCBOR:v6];
  v9 = *(a1 + 32);
  v10 = [v7 length];
  v11 = [v8 length];
  if (v9)
  {
    if (v10 < v11)
    {
LABEL_3:
      v12 = -1;
      goto LABEL_17;
    }

    v23 = [v7 length];
    if (v23 <= [v8 length])
    {
      v24 = [v7 length];
      v25 = [v7 bytes];
      v26 = [v8 bytes];
      if (!v24)
      {
        goto LABEL_3;
      }

      v27 = *v25;
      v28 = *v26;
      if (v27 <= v28)
      {
        v32 = v25 + 1;
        v33 = v26 + 1;
        v12 = 1;
        while (v27 >= v28)
        {
          v34 = *v32++;
          v27 = v34;
          v35 = *v33++;
          v28 = v35;
          if (v27 > v35)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_3;
      }
    }

LABEL_16:
    v12 = 1;
    goto LABEL_17;
  }

  if (v10 <= v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v7;
  }

  v14 = [v13 length];
  v15 = [v7 bytes];
  v16 = [v8 bytes];
  if (v14)
  {
    v17 = *v15;
    v18 = *v16;
    if (v17 <= v18)
    {
      v19 = v15 + 1;
      v20 = v16 + 1;
      v12 = 1;
      while (v17 >= v18)
      {
        v21 = *v19++;
        v17 = v21;
        v22 = *v20++;
        v18 = v22;
        if (v17 > v22)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_3;
    }

    goto LABEL_16;
  }

  v30 = [v7 length];
  if (v30 == [v8 length])
  {
    v12 = 0;
  }

  else
  {
    v31 = [v7 length];
    if (v31 > [v8 length])
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }
  }

LABEL_17:

  return v12;
}

+ (id)encodeMajorType7Undefined
{
  objc_opt_self();
  v3 = -9;
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v3 length:1];

  return v1;
}

+ (id)encodeMajorType7Bool:(uint64_t)bool
{
  objc_opt_self();
  if (a2)
  {
    v3 = -11;
  }

  else
  {
    v3 = -12;
  }

  v6 = v3;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v6 length:1];

  return v4;
}

+ (id)decodeFromData:(id)data keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy
{
  copyCopy = copy;
  orderingCopy = ordering;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  v14 = v11;
  v12 = [self decodeFromBytes:&bytes length:&v14 recursionLevel:0 keepKeyOrdering:orderingCopy noCopy:copyCopy];

  return v12;
}

- (id)asJSON
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(CBOR *)self type]== 4)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    array = [(CBOR *)self array];
    value = [v3 initWithCapacity:{objc_msgSend(array, "count")}];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    array2 = [(CBOR *)self array];
    v7 = [array2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(array2);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          asJSON = [v11 asJSON];
          if (asJSON)
          {
            [v11 asJSON];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v13 = ;
          [value addObject:v13];
        }

        v8 = [array2 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }
  }

  else if ([(CBOR *)self type]== 5)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    dictionary = [(CBOR *)self dictionary];
    value = [v14 initWithCapacity:{objc_msgSend(dictionary, "count")}];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    dictionary2 = [(CBOR *)self dictionary];
    v17 = [dictionary2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(dictionary2);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          dictionary3 = [(CBOR *)self dictionary];
          v23 = [dictionary3 objectForKeyedSubscript:v21];

          asJSON2 = [v21 asJSON];
          asJSON3 = [v23 asJSON];
          v26 = asJSON3;
          if (asJSON2)
          {
            if (asJSON3)
            {
              [value setObject:asJSON3 forKey:asJSON2];
            }

            else
            {
              null = [MEMORY[0x277CBEB68] null];
              [value setObject:null forKey:asJSON2];
            }
          }
        }

        v18 = [dictionary2 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);
    }
  }

  else
  {
    value = [(CBOR *)self value];
    if (!value)
    {
      value = [MEMORY[0x277CBEB68] null];
    }
  }

  return value;
}

+ (id)decodeFromBytes:(const char *)bytes length:(unint64_t *)length recursionLevel:(int)level keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy
{
  if (!length || !*length)
  {
    v16 = 0;
    goto LABEL_34;
  }

  if (!bytes || !*bytes)
  {
    v16 = 0;
    *length = 0;
    goto LABEL_34;
  }

  copyCopy = copy;
  orderingCopy = ordering;
  v11 = *&level;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = **bytes;
    if (v14 <= 0x3F)
    {
      v17 = [CBOR decodeMajorType0And1FromBuffer:bytes length:length tag:v12];
      goto LABEL_26;
    }

    if ((v14 & 0x80) == 0)
    {
      v17 = [CBOR decodeMajorType2And3FromBuffer:bytes length:length tag:v12 indefiniteLenContainerType:16 noCopy:copyCopy];
      goto LABEL_26;
    }

    if (v14 <= 0x9F)
    {
      if (v11 > 4999)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_32;
        }

        v24 = 0;
        v18 = MEMORY[0x277D86220];
        v19 = "Max CBOR decoding level reached";
        v20 = &v24;
        goto LABEL_38;
      }

      v17 = [CBOR decodeMajorType4FromBuffer:bytes length:length tag:v12 recursionLevel:v11 keepKeyOrdering:orderingCopy noCopy:copyCopy];
LABEL_26:
      v16 = v17;
      goto LABEL_33;
    }

    if (v14 <= 0xBF)
    {
      if (v11 <= 4999)
      {
        v17 = [CBOR decodeMajorType5FromBuffer:bytes length:length tag:v12 recursionLevel:v11 keepKeyOrdering:orderingCopy noCopy:copyCopy];
        goto LABEL_26;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v18 = MEMORY[0x277D86220];
      v19 = "Max CBOR decoding level reached";
      v20 = buf;
LABEL_38:
      _os_log_fault_impl(&dword_222774000, v18, OS_LOG_TYPE_FAULT, v19, v20, 2u);
      goto LABEL_32;
    }

    if (v14 > 0xDF)
    {
      v17 = [CBOR decodeMajorType7FromBuffer:bytes length:length tag:v12];
      goto LABEL_26;
    }

    if (v13 == 100)
    {
      break;
    }

    v15 = [CBOR decodeMajorType6FromBuffer:bytes length:length tag:v12];

    if (v15)
    {
      ++v13;
    }

    else
    {
      v13 = 0;
    }

    v12 = v15;
    if (!*length)
    {
      v16 = 0;
      v12 = v15;
      goto LABEL_33;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v22 = 0;
    v18 = MEMORY[0x277D86220];
    v19 = "Max CBOR recursive tagging level reached";
    v20 = &v22;
    goto LABEL_38;
  }

LABEL_32:
  v16 = 0;
LABEL_33:

LABEL_34:

  return v16;
}

+ (id)decodeMajorType0And1FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag
{
  tagCopy = tag;
  v8 = *length;
  if (!*length)
  {
    v16 = 0;
    goto LABEL_33;
  }

  v9 = *buffer;
  v10 = **buffer;
  v11 = v10 & 0xFFFFFFDF;
  v12 = (v10 >> 5) & 1;
  if ((v10 & 0xFFFFFFDF) <= 0x17)
  {
    if ((v10 & 0x20) != 0)
    {
      v13 = ~v11;
    }

    else
    {
      v13 = v11;
    }

    v14 = [CBOR alloc];
    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v13];
    v16 = [(CBOR *)v14 initWithType:v12 value:v15 valueSize:0 tag:tagCopy];

    v17 = v8 - 1;
    v18 = 1;
    goto LABEL_7;
  }

  v17 = 0;
  if (v11 > 25)
  {
    if (v11 == 26)
    {
      v17 = v8 - 5;
      if (v8 - 5 > 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_31;
      }

      v26 = *(v9 + 1);
      if ((v10 & 0x20) != 0)
      {
        v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:bswap32(~v26)];
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:bswap32(v26)];
      }

      v32 = v27;
      v16 = [[CBOR alloc] initWithType:v12 value:v27 valueSize:4 tag:tagCopy];

      v18 = 5;
    }

    else
    {
      if (v11 != 27)
      {
        goto LABEL_21;
      }

      v17 = v8 - 9;
      if (v8 - 9 > 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_31;
      }

      v22 = *(v9 + 1);
      if ((v10 & 0x20) != 0)
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:bswap64(~v22)];
      }

      else
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:bswap64(v22)];
      }

      v30 = v23;
      v16 = [[CBOR alloc] initWithType:v12 value:v23 valueSize:8 tag:tagCopy];

      v18 = 9;
    }

LABEL_7:
    v19 = &v9[v18];
    if (v16)
    {
LABEL_23:
      if (&v19[v17] > &v9[v8])
      {
        __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType0And1FromBuffer:length:tag:]", "CBOR+decoder.m", 277, "buffer + bufferSize <= endOfBuffer");
      }

      *buffer = v19;
      goto LABEL_32;
    }

LABEL_22:
    v16 = [[CBOR alloc] initWithType:16 value:0 valueSize:0 tag:tagCopy];
    goto LABEL_23;
  }

  if (v11 == 24)
  {
    if (v8 == 1)
    {
      goto LABEL_31;
    }

    v24 = *(v9 + 1);
    if ((v10 & 0x20) != 0)
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:~v24];
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v24];
    }

    v31 = v25;
    v16 = [[CBOR alloc] initWithType:v12 value:v25 valueSize:1 tag:tagCopy];

    v17 = v8 - 2;
    v18 = 2;
    goto LABEL_7;
  }

  if (v11 != 25)
  {
LABEL_21:
    v19 = *buffer;
    goto LABEL_22;
  }

  v17 = v8 - 3;
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = *(v9 + 1);
    if ((v10 & 0x20) != 0)
    {
      v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:(bswap32(~v20) >> 16)];
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedShort:__rev16(v20)];
    }

    v29 = v21;
    v16 = [[CBOR alloc] initWithType:v12 value:v21 valueSize:2 tag:tagCopy];

    v18 = 3;
    goto LABEL_7;
  }

LABEL_31:
  v17 = 0;
  v16 = 0;
LABEL_32:
  *length = v17;
LABEL_33:

  return v16;
}

+ (id)decodeMajorType2And3FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag indefiniteLenContainerType:(unint64_t)type noCopy:(BOOL)copy
{
  copyCopy = copy;
  tagCopy = tag;
  v12 = *buffer;
  v13 = *length;
  v66 = v13;
  v67 = v12;
  if (!v13)
  {
    v16 = 0;
    goto LABEL_86;
  }

  v14 = *v12;
  if ((v14 & 0x20) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  if (type != 16 && v15 != type)
  {
    goto LABEL_7;
  }

  v17 = v14 & 0xFFFFFFDF;
  v62 = copyCopy;
  if ((v14 & 0xFFFFFFDF) <= 0x57)
  {
    v18 = v14 & 0x1F;
    if (v13 < v18)
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v21 = 0;
      v22 = 1;
      v23 = v13;
      goto LABEL_56;
    }

    v22 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = v13 - 1;
    v66 = v13 - 1;
    v31 = v12 + 1;
    goto LABEL_33;
  }

  v19 = 0;
  v22 = 0;
  v20 = 1;
  if (v17 <= 89)
  {
    if (v17 == 88)
    {
      v23 = v13 - 1;
      v66 = v13 - 1;
      v67 = v12 + 1;
      if (v13 != 1)
      {
        v19 = 0;
        v20 = 0;
        v35 = *(v12 + 1);
        v23 = v13 - 2;
        v66 = v13 - 2;
        v67 = v12 + 2;
        v22 = v13 - 2 < v35;
        v21 = v13 - 2 >= v35;
        if (v13 - 2 >= v35)
        {
          v18 = v35;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v23 = v13;
      v18 = 0;
      v21 = 0;
      if (v17 != 89)
      {
        goto LABEL_56;
      }

      v23 = v13 - 1;
      v66 = v13 - 1;
      v67 = v12 + 1;
      if (v13 - 1 >= 2)
      {
        v19 = 0;
        v20 = 0;
        v32 = bswap32(*(v12 + 1)) >> 16;
        v23 = v13 - 3;
        v66 = v13 - 3;
        v67 = v12 + 3;
        v22 = v13 - 3 < v32;
        if (v13 - 3 >= v32)
        {
          v18 = v32;
        }

        else
        {
          v18 = 0;
        }

        v21 = 2 * (v13 - 3 >= v32);
        goto LABEL_56;
      }
    }

LABEL_55:
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    goto LABEL_56;
  }

  if (v17 == 90)
  {
    v23 = v13 - 1;
    v66 = v13 - 1;
    v67 = v12 + 1;
    if (v13 - 1 >= 4)
    {
      v19 = 0;
      v20 = 0;
      v33 = bswap32(*(v12 + 1));
      v23 = v13 - 5;
      v66 = v13 - 5;
      v67 = v12 + 5;
      v22 = v13 - 5 < v33;
      if (v13 - 5 >= v33)
      {
        v18 = v33;
      }

      else
      {
        v18 = 0;
      }

      v21 = 4 * (v13 - 5 >= v33);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v17 == 91)
  {
    v23 = v13 - 1;
    v66 = v13 - 1;
    v67 = v12 + 1;
    if (v13 - 1 >= 8)
    {
      v19 = 0;
      v20 = 0;
      v34 = bswap64(*(v12 + 1));
      v23 = v13 - 9;
      v66 = v13 - 9;
      v67 = v12 + 9;
      v22 = v13 - 9 < v34;
      if (v13 - 9 >= v34)
      {
        v18 = v34;
      }

      else
      {
        v18 = 0;
      }

      v21 = 8 * (v13 - 9 >= v34);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v23 = v13;
  v18 = 0;
  v21 = 0;
  if (v17 != 95)
  {
    goto LABEL_56;
  }

  if (type != 16)
  {
LABEL_7:
    v16 = 0;
    *length = 0;
    goto LABEL_86;
  }

  v24 = tagCopy;
  v25 = v13 - 1;
  v66 = v13 - 1;
  v67 = v12 + 1;
  v19 = objc_opt_new();
  if (v13 != 1)
  {
    v63 = 0;
    tagCopy = v24;
    while (1)
    {
      v26 = *v67;
      if (v26 == 255)
      {
        break;
      }

      if ((v26 & 0xE0) == 0x60)
      {
        v27 = (v14 >> 5) & 1;
      }

      else
      {
        v27 = 1;
      }

      v22 = 1;
      if ((v26 & 0xE0) == 64 && (v14 & 0x20) != 0 || !v27 || (v26 | 0x20) == 0x7F)
      {
        v20 = 0;
        v18 = 0;
        v21 = 0;
LABEL_92:
        v23 = v25;
        goto LABEL_56;
      }

      v28 = [CBOR decodeMajorType2And3FromBuffer:&v67 length:&v66 tag:0 indefiniteLenContainerType:v15 noCopy:v62];
      v29 = v28;
      if (v28 && [v28 type] == v15)
      {
        data = [v29 data];
        [v19 appendData:data];
      }

      else
      {

        v19 = 0;
        v66 = 0;
        v63 = 1;
      }

      v23 = 0;
      v20 = 0;
      v18 = 0;
      v21 = 0;
      v25 = v66;
      v22 = 1;
      tagCopy = v24;
      if (!v66)
      {
        goto LABEL_56;
      }
    }

    if (v63)
    {
      v20 = 0;
      v18 = 0;
      v21 = 0;
      v22 = 1;
      goto LABEL_92;
    }

    v22 = 0;
    v20 = 0;
    v18 = 0;
    v21 = 0;
    v23 = v25 - 1;
    v66 = v25 - 1;
    v31 = v67 + 1;
LABEL_33:
    v67 = v31;
    goto LABEL_56;
  }

  v23 = 0;
  v20 = 0;
  v18 = 0;
  v21 = 0;
  v22 = 1;
  tagCopy = v24;
LABEL_56:
  v36 = v20;
  v61 = v21;
  v37 = v18 > v23 || v22;
  v65 = tagCopy;
  numeric = [tagCopy numeric];
  v64 = numeric;
  if (numeric)
  {
    if ([numeric unsignedIntValue] == 24)
    {
      v39 = (v14 >> 5) & 1;
    }

    else
    {
      v39 = 0;
    }

    if ((v39 | v37))
    {
      goto LABEL_63;
    }
  }

  else if (v37)
  {
    goto LABEL_63;
  }

  v60 = v19;
  if (v19)
  {
    if ((v14 & 0x20) != 0)
    {
      if ([v19 length])
      {
        v40 = objc_alloc(MEMORY[0x277CCACA8]);
        bytes = [v19 bytes];
        v42 = [v19 length];
        if (v62)
        {
          v43 = [v40 initWithBytesNoCopy:bytes length:v42 encoding:4 freeWhenDone:0];
        }

        else
        {
          v43 = [v40 initWithBytes:bytes length:v42 encoding:4];
        }

        goto LABEL_81;
      }

LABEL_80:
      v43 = objc_opt_new();
LABEL_81:
      v50 = v43;
      v51 = [CBOR alloc];
      v52 = 3;
LABEL_82:
      v47 = [(CBOR *)v51 initWithType:v52 value:v50 valueSize:0 tag:v65];

      goto LABEL_83;
    }

    v44 = [CBOR alloc];
    v45 = 2;
    v46 = v19;
LABEL_72:
    v47 = [(CBOR *)v44 initWithType:v45 value:v46 valueSize:0 tag:v65];
LABEL_83:
    v53 = v66;
    if (&v67[v66] > &v12[v13])
    {
      __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType2And3FromBuffer:length:tag:indefiniteLenContainerType:noCopy:]", "CBOR+decoder.m", 541, "buffer + bufferSize <= endOfBuffer");
    }

    *buffer = v67;
    *length = v53;
    v16 = v47;
    v19 = v60;
    goto LABEL_85;
  }

  if (v36)
  {
    v44 = [CBOR alloc];
    v45 = 16;
    v46 = 0;
    goto LABEL_72;
  }

  if (!v18)
  {
    if ((v14 & 0x20) == 0)
    {
      v50 = objc_opt_new();
      v51 = [CBOR alloc];
      v52 = 2;
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (v18 <= v66)
  {
    if ((v14 & 0x20) != 0)
    {
      v48 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v62)
      {
        v49 = [v48 initWithBytesNoCopy:v67 length:v18 encoding:4 freeWhenDone:0];
      }

      else
      {
        v49 = [v48 initWithBytes:v67 length:v18 encoding:4];
      }

      v57 = v49;
      v58 = [CBOR alloc];
      v59 = 3;
    }

    else
    {
      v55 = objc_alloc(MEMORY[0x277CBEA90]);
      if (v62)
      {
        v56 = [v55 initWithBytesNoCopy:v67 length:v18 freeWhenDone:0];
      }

      else
      {
        v56 = [v55 initWithBytes:v67 length:v18];
      }

      v57 = v56;
      v58 = [CBOR alloc];
      v59 = 2;
    }

    v47 = [(CBOR *)v58 initWithType:v59 value:v57 valueSize:v61 tag:v65];

    v66 -= v18;
    v67 += v18;
    goto LABEL_83;
  }

LABEL_63:
  v16 = 0;
  *length = 0;
LABEL_85:

  tagCopy = v65;
LABEL_86:

  return v16;
}

+ (id)decodeMajorType4FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag recursionLevel:(int)level keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy
{
  copyCopy = copy;
  orderingCopy = ordering;
  tagCopy = tag;
  v15 = tagCopy;
  v16 = *buffer;
  v43 = *buffer;
  v17 = *length;
  if (!*length)
  {
    goto LABEL_43;
  }

  v18 = *v16;
  v40 = tagCopy;
  if (v18 <= 0x97)
  {
    v19 = 0;
    v20 = v18 & 0x1F;
    v21 = v17 - 1;
    v42 = v17 - 1;
    v43 = v16 + 1;
    goto LABEL_4;
  }

  if (*v16 <= 0x99u)
  {
    if (v18 == 152)
    {
      v42 = v17 - 1;
      v43 = v16 + 1;
      if (v17 != 1)
      {
        v20 = *(v16 + 1);
        v21 = v17 - 2;
        v42 = v17 - 2;
        v43 = v16 + 2;
        v19 = 1;
LABEL_4:
        if (v21 < v20)
        {
          v15 = tagCopy;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_222774000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Number of items is greater than buffer size", buf, 2u);
          }

          v22 = 0;
          *length = 0;
          goto LABEL_47;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v42 = v17 - 1;
      v43 = v16 + 1;
      if (v17 - 1 >= 2)
      {
        v20 = bswap32(*(v16 + 1)) >> 16;
        v21 = v17 - 3;
        v42 = v17 - 3;
        v43 = v16 + 3;
        v19 = 2;
        goto LABEL_4;
      }
    }
  }

  else
  {
    switch(v18)
    {
      case 0x9Au:
        v42 = v17 - 1;
        v43 = v16 + 1;
        if (v17 - 1 >= 4)
        {
          v20 = bswap32(*(v16 + 1));
          v21 = v17 - 5;
          v42 = v17 - 5;
          v43 = v16 + 5;
          v19 = 4;
          goto LABEL_4;
        }

        break;
      case 0x9Bu:
        v42 = v17 - 1;
        v43 = v16 + 1;
        if (v17 - 1 >= 8)
        {
          v20 = bswap64(*(v16 + 1));
          v21 = v17 - 9;
          v42 = v17 - 9;
          v43 = v16 + 9;
          v19 = 8;
          goto LABEL_4;
        }

        break;
      case 0x9Fu:
        bufferCopy2 = buffer;
        lengthCopy2 = length;
        v42 = v17 - 1;
        v43 = v16 + 1;
        v23 = objc_opt_new();
        while (1)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = [self decodeFromBytes:&v43 length:&v42 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
          if (!v25)
          {
            break;
          }

          v26 = v25;
          if ([v25 type] != 15)
          {
            [v23 addObject:v26];
          }

          type = [v26 type];

          objc_autoreleasePoolPop(v24);
          if (type == 15)
          {
            v38 = 0;
            goto LABEL_32;
          }
        }

        objc_autoreleasePoolPop(v24);
        v38 = 0;
LABEL_39:
        v31 = 1;
        goto LABEL_40;
      default:
        v22 = [[CBOR alloc] initWithType:16 value:0 valueSize:0 tag:tagCopy];
        v32 = 0;
        v42 = 0;
        v33 = v16;
        goto LABEL_45;
    }
  }

  v19 = 0;
  v20 = 0;
LABEL_28:
  bufferCopy2 = buffer;
  v38 = v19;
  lengthCopy2 = length;
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v20];
  if (v20)
  {
    while (v42 >= v20)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = [self decodeFromBytes:&v43 length:&v42 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
      if (!v29)
      {
        objc_autoreleasePoolPop(v28);
        goto LABEL_39;
      }

      v30 = v29;
      [v23 addObject:v29];

      objc_autoreleasePoolPop(v28);
      if (!--v20)
      {
        goto LABEL_32;
      }
    }

    v15 = v40;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_222774000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Number of items is greater than buffer size", buf, 2u);
    }

    v31 = 1;
    goto LABEL_41;
  }

LABEL_32:
  v31 = 0;
LABEL_40:
  v15 = v40;
LABEL_41:
  v34 = [CBOR alloc];
  v35 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v23 copyItems:0];
  v22 = [(CBOR *)v34 initWithType:4 value:v35 valueSize:v38 tag:v15];

  if (v31)
  {
    *lengthCopy2 = 0;

LABEL_43:
    v22 = 0;
    goto LABEL_47;
  }

  v32 = v42;
  v33 = v43;
  length = lengthCopy2;
  buffer = bufferCopy2;
LABEL_45:
  if (&v33[v32] > &v16[v17])
  {
    __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType4FromBuffer:length:tag:recursionLevel:keepKeyOrdering:noCopy:]", "CBOR+decoder.m", 697, "buffer + bufferSize <= endOfBuffer");
  }

  *buffer = v33;
  *length = v32;
LABEL_47:

  return v22;
}

+ (id)decodeMajorType5FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag recursionLevel:(int)level keepKeyOrdering:(BOOL)ordering noCopy:(BOOL)copy
{
  copyCopy = copy;
  orderingCopy = ordering;
  tagCopy = tag;
  v15 = *buffer;
  v49 = *buffer;
  v16 = *length;
  if (!*length)
  {
    goto LABEL_53;
  }

  v17 = *v15;
  if (v17 > 0xB7)
  {
    if (*v15 <= 0xB9u)
    {
      if (v17 == 184)
      {
        v20 = v16 - 1;
        v48 = v16 - 1;
        v49 = v15 + 1;
        if (v16 != 1)
        {
          v19 = *(v15 + 1);
          v20 = v16 - 2;
          v48 = v16 - 2;
          v49 = v15 + 2;
          v18 = 1;
          goto LABEL_25;
        }
      }

      else
      {
        v20 = v16 - 1;
        v48 = v16 - 1;
        v49 = v15 + 1;
        if (v16 - 1 >= 2)
        {
          v19 = bswap32(*(v15 + 1)) >> 16;
          v20 = v16 - 3;
          v48 = v16 - 3;
          v49 = v15 + 3;
          v18 = 2;
          goto LABEL_25;
        }
      }
    }

    else
    {
      switch(v17)
      {
        case 0xBAu:
          v20 = v16 - 1;
          v48 = v16 - 1;
          v49 = v15 + 1;
          if (v16 - 1 >= 4)
          {
            v19 = bswap32(*(v15 + 1));
            v20 = v16 - 5;
            v48 = v16 - 5;
            v49 = v15 + 5;
            v18 = 4;
            goto LABEL_25;
          }

          break;
        case 0xBBu:
          v20 = v16 - 1;
          v48 = v16 - 1;
          v49 = v15 + 1;
          if (v16 - 1 > 7)
          {
            v19 = bswap64(*(v15 + 1));
            v20 = v16 - 9;
            v48 = v16 - 9;
            v49 = v15 + 9;
            if ((v19 & 0x8000000000000000) == 0)
            {
              v18 = 8;
              goto LABEL_25;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_222774000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Number of items is greater than buffer size", buf, 2u);
            }

LABEL_53:
            v33 = 0;
            goto LABEL_54;
          }

          break;
        case 0xBFu:
          v44 = v15;
          v45 = *length;
          v48 = v16 - 1;
          v49 = v15 + 1;
          v21 = objc_opt_new();
          v46 = objc_opt_new();
          v22 = objc_autoreleasePoolPush();
          v23 = [self decodeFromBytes:&v49 length:&v48 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
          if (v23)
          {
            v24 = v23;
            bufferCopy2 = buffer;
            while (1)
            {
              if ([v24 type] == 15)
              {

                objc_autoreleasePoolPop(v22);
                v42 = 0;
                goto LABEL_42;
              }

              v25 = [self decodeFromBytes:&v49 length:&v48 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
              if (!v25)
              {
                break;
              }

              v26 = v25;
              [v21 addObject:v24];
              [v46 addObject:v26];

              objc_autoreleasePoolPop(v22);
              v22 = objc_autoreleasePoolPush();
              v24 = [self decodeFromBytes:&v49 length:&v48 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
              if (!v24)
              {
                goto LABEL_48;
              }
            }
          }

LABEL_48:
          objc_autoreleasePoolPop(v22);
          goto LABEL_49;
        default:
          v45 = *length;
          v33 = [[CBOR alloc] initWithType:16 value:0 valueSize:0 tag:tagCopy];
          v34 = 0;
          v48 = 0;
          v35 = v15;
          goto LABEL_45;
      }
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_25;
  }

  v18 = 0;
  v19 = v17 & 0x1F;
  v20 = v16 - 1;
  v48 = v16 - 1;
  v49 = v15 + 1;
LABEL_25:
  if (v20 < 2 * v19)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_222774000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Number of items is greater than buffer size", buf, 2u);
    }

    goto LABEL_50;
  }

  v42 = v18;
  bufferCopy2 = buffer;
  v44 = v15;
  v45 = v16;
  v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
  v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v19];
  if (v19)
  {
    lengthCopy = length;
    v41 = tagCopy;
    v27 = 2 * v19 + 2;
    while (1)
    {
      v27 -= 2;
      if (v48 < v27)
      {
        break;
      }

      v28 = objc_autoreleasePoolPush();
      v29 = [self decodeFromBytes:&v49 length:&v48 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
      if (!v29)
      {
        goto LABEL_40;
      }

      v30 = v29;
      v31 = [self decodeFromBytes:&v49 length:&v48 recursionLevel:(level + 1) keepKeyOrdering:orderingCopy noCopy:copyCopy];
      if (!v31)
      {

LABEL_40:
        objc_autoreleasePoolPop(v28);
        length = lengthCopy;
        tagCopy = v41;
        goto LABEL_49;
      }

      v32 = v31;
      --v19;
      [v21 addObject:v30];
      [v46 addObject:v32];

      objc_autoreleasePoolPop(v28);
      if (!v19)
      {
        length = lengthCopy;
        tagCopy = v41;
        goto LABEL_42;
      }
    }

    length = lengthCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_222774000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Number of items is greater than buffer size", buf, 2u);
    }

    tagCopy = v41;
LABEL_49:

LABEL_50:
    v33 = 0;
    *length = 0;
    goto LABEL_54;
  }

LABEL_42:
  v36 = [CBOR alloc];
  v37 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v46 forKeys:v21];
  v33 = [(CBOR *)v36 initWithType:5 value:v37 valueSize:v42 tag:tagCopy];

  if (orderingCopy)
  {
    v38 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v21 copyItems:0];
    [(CBOR *)v33 setOrderedKeys:v38];
  }

  v34 = v48;
  v35 = v49;
  buffer = bufferCopy2;
  v15 = v44;
LABEL_45:
  if (&v35[v34] > &v15[v45])
  {
    __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType5FromBuffer:length:tag:recursionLevel:keepKeyOrdering:noCopy:]", "CBOR+decoder.m", 896, "buffer + bufferSize <= endOfBuffer");
  }

  *buffer = v35;
  *length = v34;
LABEL_54:

  return v33;
}

+ (id)decodeMajorType6FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag
{
  tagCopy = tag;
  v8 = *length;
  if (!*length)
  {
    v12 = 0;
    goto LABEL_24;
  }

  v9 = *buffer;
  v10 = **buffer & 0x3F;
  if (v10 <= 0x17)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v10];
    v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:0 tag:tagCopy];
    v13 = v8 - 1;
    v14 = 1;
LABEL_4:
    v15 = &v9[v14];

LABEL_5:
    if (&v15[v13] > &v9[v8])
    {
      __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType6FromBuffer:length:tag:]", "CBOR+decoder.m", 1003, "buffer + bufferSize <= endOfBuffer");
    }

    *buffer = v15;
    goto LABEL_23;
  }

  v12 = 0;
  if ((**buffer & 0x3Fu) > 0x19)
  {
    if (v10 == 26)
    {
      v13 = v8 - 5;
      if (v8 - 5 <= 0xFFFFFFFFFFFFFFFBLL)
      {
        v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:bswap32(*(v9 + 1))];
        v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:4 tag:tagCopy];
        v14 = 5;
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    if (v10 == 27)
    {
      v13 = v8 - 9;
      if (v8 - 9 <= 0xFFFFFFFFFFFFFFF7)
      {
        v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:bswap64(*(v9 + 1))];
        v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:8 tag:tagCopy];
        v14 = 9;
        goto LABEL_4;
      }

      goto LABEL_22;
    }

LABEL_17:
    v13 = 0;
    v15 = *buffer;
    goto LABEL_5;
  }

  if (v10 == 24)
  {
    if (v8 != 1)
    {
      v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v9[1]];
      v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:1 tag:tagCopy];
      v13 = v8 - 2;
      v14 = 2;
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  if (v10 != 25)
  {
    goto LABEL_17;
  }

  v13 = v8 - 3;
  if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [objc_alloc(MEMORY[0x277CCABB0]) initWithShort:(bswap32(*(v9 + 1)) >> 16)];
    v12 = [[CBOR alloc] initWithType:14 value:v11 valueSize:2 tag:tagCopy];
    v14 = 3;
    goto LABEL_4;
  }

LABEL_22:
  v13 = 0;
  v12 = 0;
LABEL_23:
  *length = v13;
LABEL_24:

  return v12;
}

+ (id)decodeMajorType7FromBuffer:(const char *)buffer length:(unint64_t *)length tag:(id)tag
{
  tagCopy = tag;
  v8 = *length;
  if (!*length)
  {
    v15 = 0;
    goto LABEL_46;
  }

  v9 = *buffer;
  v10 = **buffer;
  v11 = v10 & 0x1F;
  if ((v10 & 0x1Fu) <= 0x17)
  {
    if ((v10 & 0x1Fu) > 0x15)
    {
      if (v11 == 22)
      {
        v25 = [CBOR alloc];
        null = [MEMORY[0x277CBEB68] null];
        v13 = v25;
        v14 = 11;
        goto LABEL_25;
      }

      if (v11 == 23)
      {
        v18 = [CBOR alloc];
        null = [MEMORY[0x277CBEB68] null];
        v13 = v18;
        v14 = 12;
        goto LABEL_25;
      }
    }

    else
    {
      if (v11 == 20)
      {
        null = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:0];
        v13 = [CBOR alloc];
        v14 = 9;
        goto LABEL_25;
      }

      if (v11 == 21)
      {
        null = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
        v13 = [CBOR alloc];
        v14 = 10;
LABEL_25:
        v15 = [(CBOR *)v13 initWithType:v14 value:null valueSize:0 tag:tagCopy];

        v16 = v8 - 1;
        v17 = v9 + 1;
LABEL_43:
        if (&v17[v16] > &v9[v8])
        {
          __assert_rtn("+[CBOR(Decoder_Private) decodeMajorType7FromBuffer:length:tag:]", "CBOR+decoder.m", 1137, "buffer + bufferSize <= endOfBuffer");
        }

        *buffer = v17;
        goto LABEL_45;
      }
    }

    null = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v11];
    v13 = [CBOR alloc];
    v14 = 13;
    goto LABEL_25;
  }

  v15 = 0;
  if ((v10 & 0x1Fu) <= 0x19)
  {
    if (v11 == 24)
    {
      if (v8 != 1)
      {
        v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(v9 + 1)];
        v15 = [[CBOR alloc] initWithType:13 value:v29 valueSize:1 tag:tagCopy];
        v16 = v8 - 2;
        v17 = v9 + 2;
        goto LABEL_42;
      }
    }

    else
    {
      if (v11 != 25)
      {
        v16 = *length;
        v17 = *buffer;
        goto LABEL_43;
      }

      v16 = v8 - 3;
      if (v8 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = *(v9 + 1);
        v20 = v19;
        v21 = (v19 >> 2) & 0x1F;
        v22 = *(v9 + 2) | ((v19 & 3) << 8);
        if (v21 == 31)
        {
          if (v22)
          {
            v30 = NAN;
          }

          else
          {
            v30 = INFINITY;
          }
        }

        else
        {
          if (v21)
          {
            v23 = (v22 | 0x400);
            v24 = v21 - 25;
          }

          else
          {
            v23 = v22;
            v24 = -24;
          }

          v30 = ldexp(v23, v24);
        }

        v31 = objc_alloc(MEMORY[0x277CCABB0]);
        v32 = -v30;
        if (v20 >= 0)
        {
          v32 = v30;
        }

        v29 = [v31 initWithDouble:v32];
        v15 = [[CBOR alloc] initWithType:6 value:v29 valueSize:2 tag:tagCopy];
        v17 = v9 + 3;
        goto LABEL_42;
      }
    }
  }

  else if (v11 == 26)
  {
    v16 = v8 - 5;
    if (v8 - 5 <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v26 = bswap32(*(v9 + 1));
      v27 = objc_alloc(MEMORY[0x277CCABB0]);
      LODWORD(v28) = v26;
      v29 = [v27 initWithFloat:v28];
      v15 = [[CBOR alloc] initWithType:7 value:v29 valueSize:4 tag:tagCopy];
      v17 = v9 + 5;
LABEL_42:

      goto LABEL_43;
    }
  }

  else
  {
    if (v11 != 27)
    {
      v16 = *length;
      v17 = *buffer;
      if (v11 == 31)
      {
        v16 = v8 - 1;
        v17 = v9 + 1;
        v15 = [[CBOR alloc] initWithType:15 value:0 valueSize:0 tag:tagCopy];
      }

      goto LABEL_43;
    }

    v16 = v8 - 9;
    if (v8 - 9 <= 0xFFFFFFFFFFFFFFF7)
    {
      v29 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:COERCE_DOUBLE(bswap64(*(v9 + 1)))];
      v15 = [[CBOR alloc] initWithType:8 value:v29 valueSize:8 tag:tagCopy];
      v17 = v9 + 9;
      goto LABEL_42;
    }
  }

  v16 = 0;
  v15 = 0;
LABEL_45:
  *length = v16;
LABEL_46:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CBOR alloc];
  value = self->_value;
  valueSize = self->_valueSize;
  type = self->_type;
  tag = self->_tag;

  return [(CBOR *)v4 initWithType:type value:value valueSize:valueSize tag:tag];
}

- (CBOR)initWithType:(unint64_t)type value:(id)value valueSize:(int64_t)size tag:(id)tag
{
  v37 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  tagCopy = tag;
  v31.receiver = self;
  v31.super_class = CBOR;
  v13 = [(CBOR *)&v31 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_23;
  }

  v13->_type = type;
  objc_storeStrong(&v13->_value, value);
  v14->_valueSize = size;
  objc_storeStrong(&v14->_tag, tag);
  v15 = v14->_valueSize ^ v14->_type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v14->_value;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:v21];
          v23 = [v21 hash] ^ v15;
          v15 = v23 ^ [v22 hash];
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      value = v14->_value;
      if (value && [value conformsToProtocol:&unk_2835DEA00])
      {
        v15 ^= [v14->_value hash];
      }

      goto LABEL_20;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v14->_value;
    v24 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v16);
          }

          v15 ^= [*(*(&v32 + 1) + 8 * j) hash];
        }

        v25 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v25);
    }
  }

LABEL_20:
  tag = v14->_tag;
  if (tag)
  {
    v15 ^= [(CBOR *)tag hash];
  }

  v14->_cachedHash = v15;
LABEL_23:

  return v14;
}

- (CBOR)initWithCbor:(id)cbor tag:(id)tag
{
  tagCopy = tag;
  cborCopy = cbor;
  type = [cborCopy type];
  value = [cborCopy value];
  valueSize = [cborCopy valueSize];

  v11 = [(CBOR *)self initWithType:type value:value valueSize:valueSize tag:tagCopy];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if ([(CBOR *)v6 type]== self->_type)
    {
      v7 = [(CBOR *)self hash];
      v8 = v7 == [(CBOR *)v6 hash];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)longLongValue
{
  type = self->_type;
  if (type != 13 && type != 1)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  value = self->_value;

  return [value longLongValue];
}

- (unint64_t)unsignedLongLongValue
{
  type = self->_type;
  v3 = type > 0xE;
  v4 = (1 << type) & 0x6001;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  value = self->_value;

  return [value unsignedLongLongValue];
}

- (double)doubleValue
{
  if (self->_type - 6 > 2)
  {
    return 0.0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0.0;
  }

  value = self->_value;

  [value doubleValue];
  return result;
}

- (NSNumber)numeric
{
  type = self->_type;
  v4 = type > 0xE;
  v5 = (1 << type) & 0x61C3;
  if (v4 || v5 == 0)
  {
    v8 = &unk_2835DCF00;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = self->_value;
    }

    else
    {
      v8 = &unk_2835DCF00;
    }
  }

  return v8;
}

- (BOOL)BOOLValue
{
  type = self->_type;
  if (type == 10)
  {
    return 1;
  }

  if (type == 9)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  value = self->_value;

  return [value BOOLValue];
}

- (NSString)string
{
  type = self->_type;
  if (type != 3)
  {
LABEL_5:
    if (type == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      value = self->_value;
      v6 = MEMORY[0x277CCACA8];
      v7 = value;
      v8 = [v6 alloc];
      bytes = [v7 bytes];
      v10 = [v7 length];

      v4 = [v8 initWithBytes:bytes length:v10 encoding:4];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    type = self->_type;
    goto LABEL_5;
  }

  v4 = self->_value;
LABEL_9:

  return v4;
}

- (NSData)data
{
  type = self->_type;
  if (type != 3)
  {
LABEL_5:
    if (type == 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = self->_value;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    type = self->_type;
    goto LABEL_5;
  }

  v4 = [self->_value dataUsingEncoding:4];
LABEL_9:

  return v4;
}

- (NSArray)array
{
  if (self->_type == 4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_value;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)dictionary
{
  if (self->_type == 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_value;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)date
{
  v38 = *MEMORY[0x277D85DE8];
  if (self->_type != 3)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  numeric = [(CBOR *)self->_tag numeric];
  intValue = [numeric intValue];

  if (intValue == 1004)
  {
    v23 = _getRFC3339DateFormatter(0);
    v9 = [v23 dateFromString:self->_value];

    goto LABEL_18;
  }

  if (intValue)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v5 = self->_value;
  v6 = [v5 cStringUsingEncoding:4];
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = v6;
  v8 = [v5 lengthOfBytesUsingEncoding:4];
  if (v8 < 0x14 || *(v7 + 10) != 84)
  {
    goto LABEL_47;
  }

  v9 = 0;
  v10 = (v7 + v8);
  memset(&v33, 0, sizeof(v33));
  v12 = (v7 + 19);
  v11 = *(v7 + 19);
  if (v11 <= 0x2D)
  {
    if (v11 != 43 && v11 != 45)
    {
      goto LABEL_48;
    }

    v13 = *(v10 - 1);
    v34 = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    __strlcpy_chk();
    v14 = -1.0;
    if (v13 == 90)
    {
      goto LABEL_12;
    }

LABEL_44:
    if (v10 - v12 == 6 && v12[3] == 58)
    {
      __strlcpy_chk();
      __strlcpy_chk();
      v15 = "%Y-%m-%dT%H:%M:%S%z";
      goto LABEL_13;
    }

LABEL_47:
    v9 = 0;
    goto LABEL_48;
  }

  if (v11 == 46)
  {
    if (v8 < 21)
    {
      goto LABEL_47;
    }

    v26 = 20;
    do
    {
      v27 = *(v7 + v26);
      if ((v27 - 43) <= 0x2F && ((1 << (v27 - 43)) & 0x800000000005) != 0)
      {
        v29 = v26 - 20;
        v30 = (v7 + v26);
        goto LABEL_37;
      }

      if ((v27 - 48) > 9)
      {
        goto LABEL_47;
      }

      ++v26;
      v30 = (v7 + v26);
    }

    while (v7 + v26 < v10);
    v29 = v26 - 20;
LABEL_37:
    v9 = 0;
    if (v30 == v10 || (v29 - 4) < 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_48;
    }

    v34 = &v12[v29];
    v31 = strtod((v7 + 19), &v34);
    if (v34 == v12)
    {
      goto LABEL_47;
    }

    v14 = v31;
    v32 = *(v10 - 1);
    if (*v30 == 90 && v32 != 90)
    {
      goto LABEL_47;
    }

    v34 = 0;
    v35 = 0;
    v37 = 0;
    v36 = 0;
    __strlcpy_chk();
    if (v32 == 90)
    {
LABEL_12:
      v15 = "%Y-%m-%dT%H:%M:%S";
LABEL_13:
      v16 = strptime_l(&v34, v15, &v33, 0);
      if (v16 && !*v16)
      {
        v17 = objc_alloc(MEMORY[0x277CBEAA8]);
        v18 = mktime(&v33);
        v19 = [v17 initWithTimeIntervalSince1970:{v18, *&v33.tm_sec, *&v33.tm_mon, *&v33.tm_isdst, v33.tm_zone}];
        v20 = v19;
        if (v14 <= 0.0)
        {
          v21 = v19;
        }

        else
        {
          v21 = [v19 dateByAddingTimeInterval:v14];
        }

        v9 = v21;

        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v12 = v30;
    goto LABEL_44;
  }

  if (v11 == 90)
  {
    if (v8 > 20 || !strptime_l(v7, "%Y-%m-%dT%H:%M:%S", &v33, 0))
    {
      goto LABEL_47;
    }

    v24 = objc_alloc(MEMORY[0x277CBEAA8]);
    v25 = timegm(&v33);
    v9 = [v24 initWithTimeIntervalSince1970:{v25, *&v33.tm_sec, *&v33.tm_mon, *&v33.tm_isdst, v33.tm_zone}];
  }

LABEL_48:

LABEL_18:

  return v9;
}

- (BOOL)isDate
{
  if (self->_type != 3)
  {
    return 0;
  }

  tag = self->_tag;
  if (!tag)
  {
    return 0;
  }

  numeric = [(CBOR *)tag numeric];
  if ([numeric intValue])
  {
    numeric2 = [(CBOR *)self->_tag numeric];
    v6 = [numeric2 intValue] == 1004;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEmbeddedCBORData
{
  if (self->_type != 2)
  {
    return 0;
  }

  tag = self->_tag;
  if (!tag)
  {
    return 0;
  }

  numeric = [(CBOR *)tag numeric];
  v4 = [numeric intValue] == 24;

  return v4;
}

- (id)description
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  tag = self->_tag;
  if (tag)
  {
    v5 = [(CBOR *)tag description];
    [v3 appendFormat:@"(%@)", v5];
  }

  switch(self->_type)
  {
    case 0uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsigned int<%@>", self->_value];
      goto LABEL_22;
    case 1uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"negative int<%@>", self->_value];
      goto LABEL_22;
    case 2uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"byte string<%@>", self->_value];
      goto LABEL_22;
    case 3uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"UTF8 string<%@>", self->_value];
      goto LABEL_22;
    case 4uLL:
      v7 = @"array";
      break;
    case 5uLL:
      v7 = @"dictionary";
      break;
    case 6uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"half float<%@>", self->_value];
      goto LABEL_22;
    case 7uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"single float<%@>", self->_value];
      goto LABEL_22;
    case 8uLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"double float<%@>", self->_value];
      goto LABEL_22;
    case 9uLL:
      v7 = @"false";
      break;
    case 0xAuLL:
      v7 = @"true";
      break;
    case 0xBuLL:
      v7 = @"null";
      break;
    case 0xCuLL:
      v7 = @"undefined";
      break;
    case 0xDuLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"simple<%@>", self->_value];
      goto LABEL_22;
    case 0xEuLL:
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"tag<%@>", self->_value];
LABEL_22:
      v7 = v6;
      break;
    case 0xFuLL:
      v7 = @"break";
      break;
    case 0x10uLL:
      v7 = @"uknown";
      break;
    default:
      v7 = 0;
      break;
  }

  [v3 appendString:v7];
  type = self->_type;
  if (type == 4)
  {
    v21 = self->_value;
    [v3 appendString:@"<["];
    v22 = [v21 count];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v21;
    v23 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v31 = v7;
      v25 = *v34;
      do
      {
        v26 = 0;
        v27 = v22;
        do
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v11);
          }

          v28 = [*(*(&v33 + 1) + 8 * v26) description];
          [v3 appendFormat:@"%@", v28];

          if (v27 >= 2)
          {
            [v3 appendString:{@", "}];
          }

          ++v26;
          --v27;
        }

        while (v24 != v26);
        v22 -= v24;
        v24 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v24);
      v7 = v31;
    }

    v20 = @"]>";
  }

  else
  {
    if (type != 5)
    {
      goto LABEL_48;
    }

    v9 = self->_value;
    [v3 appendString:@"<{"];
    v10 = [v9 count];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v30 = v7;
      v14 = *v38;
      do
      {
        v15 = 0;
        v32 = v10;
        do
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * v15);
          v17 = [v11 objectForKeyedSubscript:v16];
          v18 = [v16 description];
          v19 = [v17 description];
          [v3 appendFormat:@"%@: %@", v18, v19];

          if (v10 >= 2)
          {
            [v3 appendString:{@", "}];
          }

          ++v15;
          --v10;
        }

        while (v13 != v15);
        v10 = v32 - v13;
        v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
      v7 = v30;
    }

    v20 = @"}>";
  }

  [v3 appendString:v20];
LABEL_48:

  return v3;
}

+ (id)cborWithInteger:(int64_t)integer
{
  v3 = integer ^ (integer >> 63);
  v4 = 1;
  v5 = 2;
  v6 = 8;
  if (!HIDWORD(v3))
  {
    v6 = 4;
  }

  if (v3 >= 0x10000)
  {
    v5 = v6;
  }

  if (v3 >= 0x100)
  {
    v4 = v5;
  }

  if (v3 >= 24)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = integer >> 63;
  v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:integer];
  v10 = [[CBOR alloc] initWithType:v8 value:v9 valueSize:v7 tag:0];

  return v10;
}

+ (id)cborWithUnsignedInteger:(unint64_t)integer
{
  v3 = 1;
  v4 = 2;
  v5 = 8;
  if (!HIDWORD(integer))
  {
    v5 = 4;
  }

  if (integer >= 0x10000)
  {
    v4 = v5;
  }

  if (integer >= 0x100)
  {
    v3 = v4;
  }

  if (integer >= 24)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:integer];
  v8 = [[CBOR alloc] initWithType:0 value:v7 valueSize:v6 tag:0];

  return v8;
}

+ (id)cborWithHalfFloat:(float)float
{
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v5 = float;
  v6 = [v4 initWithFloat:v5];
  v7 = [[CBOR alloc] initWithType:6 value:v6 valueSize:2 tag:0];

  return v7;
}

+ (id)cborWithFloat:(float)float
{
  v4 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v5 = float;
  v6 = [v4 initWithFloat:v5];
  v7 = [[CBOR alloc] initWithType:7 value:v6 valueSize:4 tag:0];

  return v7;
}

+ (id)cborWithDouble:(double)double
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:double];
  v4 = [[CBOR alloc] initWithType:8 value:v3 valueSize:8 tag:0];

  return v4;
}

+ (id)cborWithArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:4 value:arrayCopy valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy count];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:5 value:dictionaryCopy valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithDictionary:(id)dictionary keyOrderList:(id)list
{
  listCopy = list;
  v6 = [CBOR cborWithDictionary:dictionary];
  v7 = v6[6];
  v6[6] = listCopy;

  return v6;
}

+ (id)cborWithData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:2 value:dataCopy valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithEncodedTag24Data:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  v4 = [dataCopy length];

  if (v4 >= 2)
  {
    v6 = [CBOR decodeMajorType6FromBuffer:&bytes length:&v8 tag:0];
    v5 = 0;
    if (v6 && v8)
    {
      v5 = [CBOR decodeMajorType2And3FromBuffer:&bytes length:&v8 tag:v6 indefiniteLenContainerType:16 noCopy:0];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)cborWithUTF8String:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[CBOR alloc] initWithType:3 value:stringCopy valueSize:v8 tag:0];

  return v9;
}

+ (id)cborWithFullDate:(id)date
{
  dateCopy = date;
  v4 = [[CBOR alloc] initWithType:14 value:&unk_2835DCF18 valueSize:2 tag:0];
  v5 = _getRFC3339DateFormatter(0);
  v6 = [v5 stringFromDate:dateCopy];

  v7 = [CBOR alloc];
  v8 = [v6 length];
  v9 = 1;
  v10 = 2;
  v11 = 8;
  if (!HIDWORD(v8))
  {
    v11 = 4;
  }

  if (v8 >= 0x10000)
  {
    v10 = v11;
  }

  if (v8 >= 0x100)
  {
    v9 = v10;
  }

  if (v8 >= 24)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CBOR *)v7 initWithType:3 value:v6 valueSize:v12 tag:v4];

  return v13;
}

+ (id)cborWithDateTime:(id)time
{
  timeCopy = time;
  v4 = [[CBOR alloc] initWithType:14 value:&unk_2835DCF30 valueSize:0 tag:0];
  v5 = _getRFC3339DateFormatter(1);
  v6 = [v5 stringFromDate:timeCopy];

  v7 = [CBOR alloc];
  v8 = [v6 length];
  v9 = 1;
  v10 = 2;
  v11 = 8;
  if (!HIDWORD(v8))
  {
    v11 = 4;
  }

  if (v8 >= 0x10000)
  {
    v10 = v11;
  }

  if (v8 >= 0x100)
  {
    v9 = v10;
  }

  if (v8 >= 24)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(CBOR *)v7 initWithType:3 value:v6 valueSize:v12 tag:v4];

  return v13;
}

+ (id)cborNil
{
  v2 = [[CBOR alloc] initWithType:11 value:0 valueSize:0 tag:0];

  return v2;
}

+ (id)cborTrue
{
  v2 = [[CBOR alloc] initWithType:10 value:0 valueSize:0 tag:0];

  return v2;
}

+ (id)cborFalse
{
  v2 = [[CBOR alloc] initWithType:9 value:0 valueSize:0 tag:0];

  return v2;
}

+ (id)cborWithEmbeddedCBORData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = 1;
  v6 = 2;
  v7 = 8;
  if (!HIDWORD(v4))
  {
    v7 = 4;
  }

  if (v4 >= 0x10000)
  {
    v6 = v7;
  }

  if (v4 >= 0x100)
  {
    v5 = v6;
  }

  if (v4 >= 24)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = [CBOR cborWithInteger:24];
  v10 = [[CBOR alloc] initWithType:2 value:dataCopy valueSize:v8 tag:v9];

  return v10;
}

- (id)encodeToEmbeddedCBORData
{
  v2 = [MEMORY[0x277CBEA90] dataWithCBOR:self];
  v3 = [CBOR cborWithEmbeddedCBORData:v2];

  return v3;
}

@end