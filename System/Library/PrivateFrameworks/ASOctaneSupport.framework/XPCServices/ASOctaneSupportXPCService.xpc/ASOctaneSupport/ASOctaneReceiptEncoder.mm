@interface ASOctaneReceiptEncoder
- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version UTF8String:(int64_t)string;
- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version data:(int64_t)data;
- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version integer:(int64_t)integer;
- ($E570233E5C131744623CAF595F5D8D88)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version IA5String:(int64_t)string;
- (ASOctaneReceiptEncoder)initWithBundleID:(id)d bundleVersion:(id)version deviceID:(id)iD transactions:(id)transactions;
- (id)_dateFormatter;
- (id)_encodePayload;
- (id)_encodePayloadForIAPReceipt:(id)receipt;
- (id)_smallestInt:(int64_t)int;
- (id)encodeAndSignWithIdentity:(__SecIdentity *)identity error:(id *)error;
@end

@implementation ASOctaneReceiptEncoder

- (ASOctaneReceiptEncoder)initWithBundleID:(id)d bundleVersion:(id)version deviceID:(id)iD transactions:(id)transactions
{
  dCopy = d;
  versionCopy = version;
  iDCopy = iD;
  transactionsCopy = transactions;
  v18.receiver = self;
  v18.super_class = ASOctaneReceiptEncoder;
  v15 = [(ASOctaneReceiptEncoder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleID, d);
    objc_storeStrong(&v16->_bundleVersion, version);
    objc_storeStrong(&v16->_deviceID, iD);
    objc_storeStrong(&v16->_transactions, transactions);
  }

  return v16;
}

- (id)_dateFormatter
{
  if (qword_1002BD418 != -1)
  {
    sub_1001F5684();
  }

  v3 = qword_1002BD410;

  return v3;
}

- (id)encodeAndSignWithIdentity:(__SecIdentity *)identity error:(id *)error
{
  v5 = [(ASOctaneReceiptEncoder *)self _encodePayload:identity];
  cmsEncoderOut = 0;
  CMSEncoderCreate(&cmsEncoderOut);
  CMSEncoderSetSignerAlgorithm(cmsEncoderOut, kCMSEncoderDigestAlgorithmSHA256);
  CMSEncoderAddSigners(cmsEncoderOut, identity);
  CMSEncoderUpdateContent(cmsEncoderOut, [v5 bytes], objc_msgSend(v5, "length"));
  encodedContentOut = 0;
  v6 = CMSEncoderCopyEncodedContent(cmsEncoderOut, &encodedContentOut);
  if (v6)
  {
    v7 = SecCopyErrorMessageString(v6, 0);
    NSLog(@"Error encoding and signing content: %@", v7);
  }

  v8 = encodedContentOut;
  CFRelease(cmsEncoderOut);

  return v8;
}

- (id)_encodePayload
{
  coder = 0;
  SecAsn1CoderCreate(&coder);
  transactions = [(ASOctaneReceiptEncoder *)self transactions];
  v4 = malloc_type_malloc(8 * [transactions count] + 160, 0x2004093837F09uLL);

  transactions2 = [(ASOctaneReceiptEncoder *)self transactions];
  bzero(v4, 8 * [transactions2 count] + 160);

  memset(v53, 0, sizeof(v53));
  objc_msgSend__receiptAttributeWithCoder_type_version_UTF8String_(self);
  *v4 = v53;
  memset(v52, 0, sizeof(v52));
  objc_msgSend__receiptAttributeWithCoder_type_version_integer_(self);
  v4[1] = v52;
  v51 = 0u;
  memset(v50, 0, sizeof(v50));
  [(NSString *)self->_bundleID UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_UTF8String_(self);
  v4[2] = v50;
  memset(v49, 0, sizeof(v49));
  [(NSString *)self->_bundleVersion UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_UTF8String_(self);
  v4[3] = v49;
  v6 = arc4random();
  v48 = arc4random() | (16 * v6);
  v7 = 8;
  v8 = [NSData dataWithBytes:&v48 length:8];
  memset(v47, 0, sizeof(v47));
  objc_msgSend__receiptAttributeWithCoder_type_version_data_(self);
  v4[4] = v47;
  deviceID = [(ASOctaneReceiptEncoder *)self deviceID];
  v10 = [deviceID stringByReplacingOccurrencesOfString:@"-" withString:&stru_100296B10];

  v37 = v10;
  v11 = [NSMutableData oct_dataWithHexString:v10];
  v38 = v8;
  [v11 appendData:v8];
  v12 = [NSData dataWithBytes:*(&v51 + 1) length:v51];
  [v11 appendData:v12];

  CC_SHA1([v11 bytes], objc_msgSend(v11, "length"), md);
  memset(v46, 0, sizeof(v46));
  v13 = [NSData dataWithBytes:md length:20];
  objc_msgSend__receiptAttributeWithCoder_type_version_data_(self);

  v4[5] = v46;
  memset(v45, 0, sizeof(v45));
  objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);
  v4[6] = v45;
  _dateFormatter = [(ASOctaneReceiptEncoder *)self _dateFormatter];
  memset(v44, 0, sizeof(v44));
  v15 = +[NSDate now];
  v16 = [_dateFormatter stringFromDate:v15];
  [v16 UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);

  v4[7] = v44;
  transactions3 = [(ASOctaneReceiptEncoder *)self transactions];
  v18 = malloc_type_malloc(48 * [transactions3 count], 0x10100402F876B04uLL);

  transactions4 = [(ASOctaneReceiptEncoder *)self transactions];
  v20 = [transactions4 count];

  if (v20)
  {
    v36 = _dateFormatter;
    v21 = 8;
    v22 = v18;
    do
    {
      v23 = v21;
      v24 = objc_autoreleasePoolPush();
      transactions5 = [(ASOctaneReceiptEncoder *)self transactions];
      v26 = [transactions5 objectAtIndexedSubscript:v21 - 8];

      v27 = [(ASOctaneReceiptEncoder *)self _encodePayloadForIAPReceipt:v26];
      objc_msgSend__receiptAttributeWithCoder_type_version_data_(self);
      v28 = v41;
      v29 = v43;
      v22[1] = v42;
      v22[2] = v29;
      *v22 = v28;
      v4[v21++] = v22;

      objc_autoreleasePoolPop(v24);
      transactions6 = [(ASOctaneReceiptEncoder *)self transactions];
      v31 = [transactions6 count];

      v22 += 3;
    }

    while (v31 > v23 - 7);
    v7 = v21;
    _dateFormatter = v36;
  }

  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v32 = +[NSDate distantFuture];
  v33 = [_dateFormatter stringFromDate:v32];
  [v33 UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);

  v4[v7] = &v41;
  dest.Data = 0;
  src = v4;
  dest.Length = 0;
  SecAsn1EncodeItem(coder, &src, &unk_1002786B0, &dest);
  v34 = [NSData dataWithBytes:dest.Data length:dest.Length];
  SecAsn1CoderRelease(coder);
  if (v18)
  {
    free(v18);
  }

  free(v4);

  return v34;
}

- (id)_encodePayloadForIAPReceipt:(id)receipt
{
  coder = 0;
  receiptCopy = receipt;
  SecAsn1CoderCreate(&coder);
  v5 = [receiptCopy objectForKeyedSubscript:@"quantity"];
  [v5 integerValue];

  v6 = [receiptCopy objectForKeyedSubscript:@"productID"];
  v7 = [receiptCopy objectForKeyedSubscript:@"transactionID"];
  v8 = [receiptCopy objectForKeyedSubscript:@"originalTransactionDate"];
  v9 = [receiptCopy objectForKeyedSubscript:@"originalTransactionID"];
  v10 = [receiptCopy objectForKeyedSubscript:@"purchaseDate"];
  v22 = [receiptCopy objectForKeyedSubscript:@"subscriptionExpirationDate"];
  v21 = [receiptCopy objectForKeyedSubscript:@"introPeriod"];
  v20 = [receiptCopy objectForKeyedSubscript:@"cancellationDate"];

  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  memset(v34, 0, sizeof(v34));
  objc_msgSend__receiptAttributeWithCoder_type_version_integer_(self);
  v36[0] = v34;
  memset(v33, 0, sizeof(v33));
  v23 = v6;
  [v6 UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_UTF8String_(self);
  v36[1] = v33;
  memset(v32, 0, sizeof(v32));
  [v7 UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_UTF8String_(self);
  v36[2] = v32;
  _dateFormatter = [(ASOctaneReceiptEncoder *)self _dateFormatter];
  memset(v31, 0, sizeof(v31));
  v12 = [_dateFormatter stringFromDate:v8];
  [v12 UTF8String];
  objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);

  v36[3] = v31;
  memset(v30, 0, sizeof(v30));
  if (v9)
  {
    [v9 UTF8String];
    objc_msgSend__receiptAttributeWithCoder_type_version_UTF8String_(self);
    *&v37 = v30;
    v13 = 5;
  }

  else
  {
    v13 = 4;
  }

  memset(v29, 0, sizeof(v29));
  if (v10)
  {
    v14 = [_dateFormatter stringFromDate:v10];
    [v14 UTF8String];
    objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);

    v36[v13++] = v29;
  }

  v15 = 0uLL;
  memset(v28, 0, sizeof(v28));
  if (v22)
  {
    v16 = [_dateFormatter stringFromDate:v22];
    [v16 UTF8String];
    objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);

    v15 = 0uLL;
    v36[v13++] = v28;
  }

  v27[1] = v15;
  v27[2] = v15;
  v27[0] = v15;
  if (v20)
  {
    v17 = [_dateFormatter stringFromDate:v20];
    [v17 UTF8String];
    objc_msgSend__receiptAttributeWithCoder_type_version_IA5String_(self);

    v36[v13++] = v27;
  }

  memset(v26, 0, sizeof(v26));
  if (v21)
  {
    [v21 BOOLValue];
    objc_msgSend__receiptAttributeWithCoder_type_version_integer_(self);
    v36[v13] = v26;
  }

  dest.Data = 0;
  src = v36;
  dest.Length = 0;
  SecAsn1EncodeItem(coder, &src, &unk_1002786B0, &dest);
  v18 = [NSData dataWithBytes:dest.Data length:dest.Length];
  SecAsn1CoderRelease(coder);

  return v18;
}

- ($E570233E5C131744623CAF595F5D8D88)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version IA5String:(int64_t)string
{
  dest.Length = 0;
  dest.Data = 0;
  v13.Length = 0;
  v13.Data = 0;
  v10 = strlen(a7);
  SecAsn1AllocCopy(type, a7, v10, &dest);
  SecAsn1EncodeItem(type, &dest, kSecAsn1IA5StringTemplate, &v13);
  v11 = [NSData dataWithBytes:v13.Data length:v13.Length];
  objc_msgSend__receiptAttributeWithCoder_type_version_data_(self);

  return result;
}

- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version UTF8String:(int64_t)string
{
  dest.Length = 0;
  dest.Data = 0;
  v13.Length = 0;
  v13.Data = 0;
  v10 = strlen(a7);
  SecAsn1AllocCopy(type, a7, v10, &dest);
  SecAsn1EncodeItem(type, &dest, kSecAsn1UTF8StringTemplate, &v13);
  v11 = [NSData dataWithBytes:v13.Data length:v13.Length];
  objc_msgSend__receiptAttributeWithCoder_type_version_data_(self);

  return result;
}

- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version integer:(int64_t)integer
{
  dest.Length = 0;
  dest.Data = 0;
  v12.Length = 0;
  v12.Data = 0;
  v9 = [(ASOctaneReceiptEncoder *)self _smallestInt:a7];
  SecAsn1AllocCopy(type, [v9 bytes], objc_msgSend(v9, "length"), &dest);
  SecAsn1EncodeItem(type, &dest, kSecAsn1IntegerTemplate, &v12);
  v10 = [NSData dataWithBytes:v12.Data length:v12.Length];
  objc_msgSend__receiptAttributeWithCoder_type_version_data_(self);

  return result;
}

- ($70B4E917A6FC100F4FE37FEE569597D4)_receiptAttributeWithCoder:(SEL)coder type:(SecAsn1Coder *)type version:(int64_t)version data:(int64_t)data
{
  dest.Length = 0;
  dest.Data = 0;
  v20.Length = 0;
  v20.Data = 0;
  v19 = 0;
  v12 = a7;
  v13 = [(ASOctaneReceiptEncoder *)self _smallestInt:version];
  SecAsn1AllocCopy(type, [v13 bytes], objc_msgSend(v13, "length"), &dest);
  v14 = [(ASOctaneReceiptEncoder *)self _smallestInt:data];
  SecAsn1AllocCopy(type, [v14 bytes], objc_msgSend(v14, "length"), &v20);
  bytes = [v12 bytes];
  v16 = [v12 length];

  SecAsn1AllocCopy(type, bytes, v16, &v19);
  v17 = v20;
  retstr->var0 = dest;
  retstr->var1 = v17;
  retstr->var2 = v19;

  return result;
}

- (id)_smallestInt:(int64_t)int
{
  v10 = bswap64(int);
  v3 = &v10;
  v4 = v10;
  if (v10)
  {
    v5 = 8;
LABEL_3:
    v6 = v5 + (v4 >> 7);
    v7 = v3;
  }

  else
  {
    v6 = 8;
    v7 = &v10;
    while (1)
    {
      v5 = v6 - 1;
      if (v6 == 1)
      {
        break;
      }

      v3 = (v7 + 1);
      v4 = *(v7 + 1);
      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_4;
      }

      v7 = (v7 + 1);
      --v6;
      v4 = v4;
      if (v4)
      {
        goto LABEL_3;
      }
    }

    v7 = (&v10 + 7);
  }

LABEL_4:
  v8 = [NSData dataWithBytes:v7 length:v6];

  return v8;
}

@end