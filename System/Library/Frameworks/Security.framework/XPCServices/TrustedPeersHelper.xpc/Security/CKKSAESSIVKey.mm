@interface CKKSAESSIVKey
+ (id)randomKey:(id *)key;
- (BOOL)doSIV:(const ccmode_siv *)v nonce:(id)nonce text:(id)text buffer:(char *)buffer bufferLength:(unint64_t)length authenticatedData:(id)data error:(id *)error;
- (CKKSAESSIVKey)init;
- (CKKSAESSIVKey)initWithBase64:(id)base64;
- (CKKSAESSIVKey)initWithBytes:(char *)bytes len:(unint64_t)len;
- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)keyMaterial;
- (id)unwrapAESKey:(id)key error:(id *)error;
- (id)wrapAESKey:(id)key error:(id *)error;
@end

@implementation CKKSAESSIVKey

- (id)keyMaterial
{
  v2 = [NSData _newZeroingDataWithBytes:self->super.key length:self->super.size];

  return v2;
}

- (BOOL)doSIV:(const ccmode_siv *)v nonce:(id)nonce text:(id)text buffer:(char *)buffer bufferLength:(unint64_t)length authenticatedData:(id)data error:(id *)error
{
  errorCopy = error;
  nonceCopy = nonce;
  textCopy = text;
  dataCopy = data;
  v17 = v->var0 + 15;
  v18 = v17 & 0xFFFFFFFFFFFFFFF0;
  if (v17 >= 0x10)
  {
    v19 = (v42 - (v17 & 0xFFFFFFFFFFFFFFF0));
    do
    {
      *v19 = 0xAAAAAAAAAAAAAAAALL;
      v19[1] = 0xAAAAAAAAAAAAAAAALL;
      v19 += 2;
      v18 -= 16;
    }

    while (v18);
  }

  v20 = ccsiv_init();
  v46 = v42;
  if (v20)
  {
    v38 = v20;
    v58 = NSLocalizedDescriptionKey;
    v59 = @"could not ccsiv_init";
    v39 = &v59;
    v40 = &v58;
LABEL_26:
    v35 = [NSDictionary dictionaryWithObjects:v39 forKeys:v40 count:1];
    v32 = [NSError errorWithDomain:@"corecrypto" code:v38 userInfo:v35];
    v24 = 0;
    goto LABEL_19;
  }

  if (nonceCopy)
  {
    [nonceCopy length];
    [nonceCopy bytes];
    v21 = ccsiv_set_nonce();
    if (v21)
    {
      v38 = v21;
      v56 = NSLocalizedDescriptionKey;
      v57 = @"could not ccsiv_set_nonce";
      v39 = &v57;
      v40 = &v56;
      goto LABEL_26;
    }
  }

  v42[1] = buffer;
  errorCopy2 = error;
  v44 = textCopy;
  v45 = nonceCopy;
  allKeys = [dataCopy allKeys];
  v23 = [allKeys sortedArrayUsingSelector:"compare:"];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [dataCopy objectForKey:*(*(&v47 + 1) + 8 * i)];
        [v29 length];
        [v29 bytes];
        v30 = ccsiv_aad();
        if (v30)
        {
          v33 = v30;
          v53 = NSLocalizedDescriptionKey;
          v54 = @"could not ccsiv_aad";
          v34 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v32 = [NSError errorWithDomain:@"corecrypto" code:v33 userInfo:v34];

          v35 = v24;
          textCopy = v44;
          nonceCopy = v45;
          goto LABEL_18;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  textCopy = v44;
  [v44 length];
  [textCopy bytes];
  v31 = ccsiv_crypt();
  if (!v31)
  {
    v32 = 0;
    nonceCopy = v45;
    errorCopy = errorCopy2;
    goto LABEL_20;
  }

  v41 = v31;
  v51 = NSLocalizedDescriptionKey;
  v52 = @"could not ccsiv_crypt";
  v35 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v32 = [NSError errorWithDomain:@"corecrypto" code:v41 userInfo:v35];
  nonceCopy = v45;
LABEL_18:
  errorCopy = errorCopy2;
LABEL_19:

LABEL_20:
  cc_clear();
  if (errorCopy)
  {
    v36 = v32;
    *errorCopy = v32;
  }

  return v32 == 0;
}

- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v10 = ccaes_siv_decrypt_mode();
  if ([dataCopy length] > 0x10)
  {
    v15 = [dataCopy length] - 16;
    v13 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(dataCopy length:"bytes") freeWhenDone:{16, 0}];
    v14 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(dataCopy length:"bytes") + 16 freeWhenDone:{v15, 0}];
    v12 = [[NSMutableData alloc] initWithLength:ccsiv_plaintext_size()];
    if (-[CKKSAESSIVKey doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:](self, "doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:", v10, v13, v14, [v12 mutableBytes], objc_msgSend(v12, "length"), authenticatedDataCopy, error))
    {
      v12 = v12;
      error = v12;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (error)
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = @"ciphertext too short";
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:4 userInfo:v11];

    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_6:
    error = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_8:

  return error;
}

- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  dataCopy = data;
  authenticatedDataCopy = authenticatedData;
  v10 = ccaes_siv_encrypt_mode();
  v11 = [[NSMutableData alloc] initWithLength:16];
  Bytes = CCRandomGenerateBytes([v11 mutableBytes], objc_msgSend(v11, "length"));
  if (!Bytes)
  {
    [dataCopy length];
    v15 = [[NSMutableData alloc] initWithLength:ccsiv_ciphertext_size()];
    if (-[CKKSAESSIVKey doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:](self, "doSIV:nonce:text:buffer:bufferLength:authenticatedData:error:", v10, v11, dataCopy, [v15 mutableBytes], objc_msgSend(v15, "length"), authenticatedDataCopy, error))
    {
      error = objc_alloc_init(NSMutableData);
      [error appendData:v11];
      [error appendData:v15];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (error)
  {
    v13 = Bytes;
    v17 = NSLocalizedDescriptionKey;
    v18 = @"IV generation failed";
    v14 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = [NSError errorWithDomain:@"CommonCrypto" code:v13 userInfo:v14];

    v15 = 0;
LABEL_6:
    error = 0;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_8:

  return error;
}

- (id)unwrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  memset(__s, 0, sizeof(__s));
  ccaes_siv_decrypt_mode();
  if (ccsiv_plaintext_size() == 64)
  {
    v7 = ccaes_siv_decrypt_mode();
    v8 = [[NSData alloc] initWithBytesNoCopy:keyCopy + 1 length:keyCopy[11] freeWhenDone:0];
    v9 = [(CKKSAESSIVKey *)self doSIV:v7 nonce:0 text:v8 buffer:__s bufferLength:64 authenticatedData:0 error:error];

    if (v9)
    {
      v10 = [[CKKSAESSIVKey alloc] initWithBytes:__s len:64];
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
  }

  else
  {
    v15 = NSLocalizedDescriptionKey;
    v16 = @"unwrapped key size does not match key size";
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v14];

    v10 = 0;
  }

  memset_s(__s, 0x40uLL, 0, 0x40uLL);
  if (error && v11)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

- (id)wrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  if (keyCopy)
  {
    memset(__s, 0, sizeof(__s));
    ccaes_siv_encrypt_mode();
    if (ccsiv_ciphertext_size() == 80)
    {
      v7 = ccaes_siv_encrypt_mode();
      v8 = [NSData _newZeroingDataWithBytes:keyCopy + 1 length:keyCopy[11]];
      v9 = [(CKKSAESSIVKey *)self doSIV:v7 nonce:0 text:v8 buffer:__s bufferLength:80 authenticatedData:0 error:error];

      if (v9)
      {
        v10 = [[CKKSWrappedAESSIVKey alloc] initWithBytes:__s len:80];
        v11 = 0;
LABEL_5:
        memset_s(__s, 0x50uLL, 0, 0x40uLL);
        if (error && v11)
        {
          v12 = v11;
LABEL_10:
          *error = v11;
          goto LABEL_12;
        }

        goto LABEL_12;
      }

      v11 = 0;
    }

    else
    {
      v17 = NSLocalizedDescriptionKey;
      v18 = @"wrapped key size does not match key size";
      v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 userInfo:v16];
    }

    v10 = 0;
    goto LABEL_5;
  }

  v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-50 description:@"No key given"];
  v11 = v13;
  if (error)
  {
    v14 = v13;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (CKKSAESSIVKey)initWithBase64:(id)base64
{
  base64Copy = base64;
  v11.receiver = self;
  v11.super_class = CKKSAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v11 initWithBase64:base64Copy];
  v6 = v5;
  if (v5 && v5->super.size != 64)
  {
    v8 = [NSString stringWithFormat:@"length (%lu) was not %d", v5->super.size, 64];
    v9 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v6;
}

- (CKKSAESSIVKey)initWithBytes:(char *)bytes len:(unint64_t)len
{
  if (len != 64)
  {
    v5 = [NSString stringWithFormat:@"length (%lu) was not %d", len, 64];
    v6 = [NSException exceptionWithName:@"WrongKeySizeException" reason:v5 userInfo:0];
    v7 = v6;

    objc_exception_throw(v6);
  }

  v8.receiver = self;
  v8.super_class = CKKSAESSIVKey;
  return [(CKKSBaseAESSIVKey *)&v8 initWithBytes:bytes len:?];
}

- (CKKSAESSIVKey)init
{
  v3.receiver = self;
  v3.super_class = CKKSAESSIVKey;
  result = [(CKKSBaseAESSIVKey *)&v3 init];
  if (result)
  {
    result->super.size = 64;
  }

  return result;
}

+ (id)randomKey:(id *)key
{
  v4 = objc_alloc_init(CKKSAESSIVKey);
  Bytes = CCRandomGenerateBytes(v4->super.key, v4->super.size);
  if (Bytes)
  {
    if (key)
    {
      v6 = Bytes;
      bytes = [NSString stringWithFormat:@"CCRandomGenerateBytes failed with %d", Bytes];
      *key = [NSError errorWithDomain:@"corecrypto" code:v6 description:bytes];

      key = 0;
    }
  }

  else
  {
    key = v4;
  }

  return key;
}

@end