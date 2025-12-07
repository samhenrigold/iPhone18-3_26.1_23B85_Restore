@interface TMLModelSerialize
+ (ProtobufCMessage)unpackData:(id)data withDescriptor:(const ProtobufCMessageDescriptor *)descriptor;
+ (id)decode:(id)decode;
+ (id)decodeZ85:(id)z85;
+ (id)pack:(const ProtobufCMessage *)pack;
+ (id)verifySignature:(id)signature;
@end

@implementation TMLModelSerialize

+ (id)pack:(const ProtobufCMessage *)pack
{
  v4 = sub_26F1B3D74(pack);
  if (v4)
  {
    v8 = sub_26F1F90C0;
    cf = CFDataCreateMutable(0, v4);
    v5 = sub_26F1B52DC(pack, &v8);
    v6 = cf;
    [v6 setLength:{v5, v8}];
    CFRelease(cf);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (ProtobufCMessage)unpackData:(id)data withDescriptor:(const ProtobufCMessageDescriptor *)descriptor
{
  dataCopy = data;
  v6 = [dataCopy length];
  bytes = [dataCopy bytes];

  return sub_26F1B62B8(descriptor, 0, v6, bytes);
}

+ (id)decode:(id)decode
{
  decodeCopy = decode;
  if (![decodeCopy length])
  {
    goto LABEL_12;
  }

  if (*[decodeCopy bytes])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:decodeCopy encoding:5];
    if ([v5 hasPrefix:@"83847776"])
    {
      v6 = [v5 substringFromIndex:8];
      v7 = [self decodeZ85:v6];
      v8 = [self verifySignature:v7];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_13;
  }

  v9 = [decodeCopy subdataWithRange:{1, objc_msgSend(decodeCopy, "length") - 1}];
  v10 = [self verifySignature:v9];

  if (!v10)
  {
    decodeCopy = 0;
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = [v10 mutableCopy];
  mutableBytes = [v8 mutableBytes];
  for (i = [v8 length]; i; --i)
  {
    *mutableBytes++ ^= 0x3Au;
  }

  decodeCopy = v10;
LABEL_13:

  return v8;
}

+ (id)decodeZ85:(id)z85
{
  v3 = [z85 cStringUsingEncoding:4];
  v4 = strlen(v3);
  v5 = v4 / 5;
  v6 = 4 * (v4 / 5);
  v7 = v4 % 5;
  v8 = [MEMORY[0x277CBEB28] dataWithLength:v4 % 5 + v6];
  if (v4 >= 5)
  {
    v10 = 0;
    v11 = v3;
    do
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v13 = byte_26F208C60[v11[v12++]] + 85 * v13;
      }

      while (v12 != 5);
      v23 = bswap32(v13);
      [v8 replaceBytesInRange:4 * v10++ withBytes:{4, &v23}];
      v11 += 5;
    }

    while (v10 != v5);
    v9 = v6;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v14 = 0;
  v15 = &v3[5 * v5];
  v16 = v7;
  do
  {
    v17 = *v15++;
    v14 = byte_26F208C60[v17] + 85 * v14;
    --v16;
  }

  while (v16);
  v18 = (pow(85.0, (5 - v7)) * v14);
  v19 = 0xFFFFFFu >> (8 * v7 - 16);
  if (v7 == 1)
  {
    v19 = 0;
  }

  v22 = bswap32(v19 + v18);
  [v8 replaceBytesInRange:v6 withBytes:{4, &v22}];
  v9 = v7 + v9 - 1;
LABEL_14:
  v20 = [v8 subdataWithRange:{0, v9}];

  return v20;
}

+ (id)verifySignature:(id)signature
{
  signatureCopy = signature;
  v4 = [signatureCopy subdataWithRange:{128, objc_msgSend(signatureCopy, "length") - 128}];

  return v4;
}

@end