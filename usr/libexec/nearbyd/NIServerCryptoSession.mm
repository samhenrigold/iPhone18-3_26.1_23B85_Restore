@interface NIServerCryptoSession
- (NIServerCryptoSession)initWithKeyDerivationKey:(id)key sessionIdentifier:(id)identifier encrypt:(BOOL)encrypt;
- (id)_deriveSessionKeyFromKeyDerivationKey:(id)key sessionIdentifier:(id)identifier;
- (id)decrypt:(id)decrypt;
- (id)encrypt:(id)encrypt;
@end

@implementation NIServerCryptoSession

- (NIServerCryptoSession)initWithKeyDerivationKey:(id)key sessionIdentifier:(id)identifier encrypt:(BOOL)encrypt
{
  encryptCopy = encrypt;
  keyCopy = key;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = NIServerCryptoSession;
  v11 = [(NIServerCryptoSession *)&v22 init];
  if (!v11)
  {
    goto LABEL_18;
  }

  if ([keyCopy length])
  {
    if ([identifierCopy length])
    {
      objc_storeStrong(&v11->_keyDerivationKey, key);
      objc_storeStrong(&v11->_sessionIdentifier, identifier);
      v12 = CUPrintNSObjectMasked();
      logIdentifier = v11->_logIdentifier;
      v11->_logIdentifier = v12;

      v11->_encrypt = encryptCopy;
      v14 = [(NIServerCryptoSession *)v11 _deriveSessionKeyFromKeyDerivationKey:keyCopy sessionIdentifier:identifierCopy];
      sessionKey = v11->_sessionKey;
      v11->_sessionKey = v14;

      if (v11->_sessionKey)
      {
        if (encryptCopy)
        {
          v11->_nonce = arc4random_uniform(0xFFFF0000);
          v16 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v11->_logIdentifier;
            *buf = 138477827;
            v24 = v17;
            v18 = "#crypto,[%{private}@][Encryptor] initialized";
LABEL_17:
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
          }
        }

        else
        {
          v11->_nonce = 0;
          v16 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v11->_logIdentifier;
            *buf = 138477827;
            v24 = v20;
            v18 = "#crypto,[%{private}@][Decryptor] initialized";
            goto LABEL_17;
          }
        }

LABEL_18:
        v19 = v11;
        goto LABEL_19;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0934();
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0974();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B09B4();
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (id)encrypt:(id)encrypt
{
  encryptCopy = encrypt;
  if (!self->_encrypt)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B09F4();
    }

    goto LABEL_23;
  }

  nonce = self->_nonce;
  if (nonce >= 0xFFFFFFFF)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0CD4();
    }

    goto LABEL_23;
  }

  v6 = nonce + 1;
  self->_nonce = v6;
  v29 = v6;
  cryptorRef = 0;
  v7 = CCCryptorCreateWithMode(0, 0xCu, 0, 0x3E8u, 0, [(NSData *)self->_sessionKey bytes], [(NSData *)self->_sessionKey length], 0, 0, 0, 0, &cryptorRef);
  if (v7 || !cryptorRef)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138478339;
      *&buf[4] = logIdentifier;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v34 = 1024;
      v35 = cryptorRef != 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Encryptor] create failed %d. Cryptor needs release: %d", buf, 0x18u);
    }

    if (!cryptorRef)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [encryptCopy length];
  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0A64();
    }

LABEL_22:
    CCCryptorRelease(cryptorRef);
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0ACC();
    }

    goto LABEL_22;
  }

  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0B34();
    }

    goto LABEL_22;
  }

  v27 = 1;
  LOBYTE(v25) = 0;
  sub_100025100(buf, 5, &v25);
  **buf = v27;
  *(*buf + 1) = v29;
  if (CCCryptorAddParameter())
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0B9C();
    }

    CCCryptorRelease(cryptorRef);
    v9 = 0;
  }

  else
  {
    OutputLength = CCCryptorGetOutputLength(cryptorRef, [encryptCopy length], 0);
    LOBYTE(__p) = 0;
    sub_100025100(&v25, OutputLength, &__p);
    dataOutMoved = 0;
    v13 = cryptorRef;
    v14 = encryptCopy;
    bytes = [encryptCopy bytes];
    v16 = [encryptCopy length];
    if (CCCryptorUpdate(v13, bytes, v16, v25, v26 - v25, &dataOutMoved))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0C04();
      }

      CCCryptorRelease(cryptorRef);
      v9 = 0;
    }

    else
    {
      if (dataOutMoved < v26 - v25)
      {
        sub_1002501F0(&v25, dataOutMoved);
      }

      v30[0] = 0;
      sub_100025100(&__p, 16, v30);
      v21 = 0;
      v17 = CCCryptorFinal(cryptorRef, __p, v23 - __p, &v21);
      if (v17 || v21)
      {
        v18 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          v19 = self->_logIdentifier;
          *v30 = 138478339;
          *&v30[4] = v19;
          *&v30[12] = 1024;
          *&v30[14] = v17;
          v31 = 1024;
          v32 = v21;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Encryptor] cryptor-final failed %d. Leftover: %d", v30, 0x18u);
        }

        CCCryptorRelease(cryptorRef);
        v9 = 0;
      }

      else
      {
        LOBYTE(v20) = 0;
        sub_100025100(v30, 6, &v20);
        v20 = *&v30[8] - *v30;
        if (CCCryptorGetParameter())
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B0C6C();
          }

          CCCryptorRelease(cryptorRef);
          v9 = 0;
        }

        else
        {
          CCCryptorRelease(cryptorRef);
          v9 = objc_opt_new();
          [v9 appendBytes:&v27 length:1];
          [v9 appendBytes:&v29 length:4];
          [v9 appendBytes:*v30 length:*&v30[8] - *v30];
          [v9 appendBytes:v25 length:v26 - v25];
        }

        if (*v30)
        {
          *&v30[8] = *v30;
          operator delete(*v30);
        }
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

LABEL_24:

  return v9;
}

- (id)decrypt:(id)decrypt
{
  decryptCopy = decrypt;
  v5 = decryptCopy;
  if (self->_encrypt)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B11D0();
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v32 = 0;
  if (![decryptCopy length])
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004B118C(self->_logIdentifier, [v5 length], &v42);
    }

    goto LABEL_15;
  }

  [v5 getBytes:&v32 range:{0, 1}];
  if (v32 != 1)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0D44();
    }

    goto LABEL_15;
  }

  v31 = 0;
  if ([v5 length] <= 4)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1148(self->_logIdentifier, [v5 length], &v42);
    }

    goto LABEL_15;
  }

  [v5 getBytes:&v31 range:{1, 4}];
  cryptorRef[1] = v31;
  LOBYTE(v39) = 0;
  sub_100025100(&v42, 6, &v39);
  if ([v5 length] > 0xA)
  {
    [v5 getBytes:v42 range:{5, 6}];
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v11 = [v5 length];
    v12 = (v11 - 11);
    if (v11 == 11)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1094();
      }

      goto LABEL_47;
    }

    buf[0] = 0;
    v13 = v39;
    if (v12 <= v40 - v39)
    {
      if (v12 < v40 - v39)
      {
        v40 = &v39[v12];
      }
    }

    else
    {
      sub_100250E48(&v39, v12 - (v40 - v39), buf);
      v13 = v39;
    }

    [v5 getBytes:v13 range:{11, v12}];
    if (v11 != [v5 length])
    {
      __assert_rtn("[NIServerCryptoSession decrypt:]", "NIServerCryptoSession.mm", 306, "byteOffset == ciphertext.length");
    }

    cryptorRef[0] = 0;
    v14 = CCCryptorCreateWithMode(1u, 0xCu, 0, 0x3E8u, 0, [(NSData *)self->_sessionKey bytes], [(NSData *)self->_sessionKey length], 0, 0, 0, 0, cryptorRef);
    if (v14 || !cryptorRef[0])
    {
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        logIdentifier = self->_logIdentifier;
        *buf = 138478339;
        *&buf[4] = logIdentifier;
        *&buf[12] = 1024;
        *&buf[14] = v14;
        v37 = 1024;
        v38 = cryptorRef[0] != 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Decryptor] create failed %d. Cryptor needs release: %d", buf, 0x18u);
      }

      if (!cryptorRef[0])
      {
        goto LABEL_47;
      }
    }

    else if (CCCryptorAddParameter())
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0DB4();
      }
    }

    else if (CCCryptorAddParameter())
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0E1C();
      }
    }

    else
    {
      if (!CCCryptorAddParameter())
      {
        LOBYTE(v28) = 0;
        sub_100025100(buf, 5, &v28);
        **buf = v32;
        *(*buf + 1) = v31;
        if (CCCryptorAddParameter())
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B0EEC();
          }

          CCCryptorRelease(cryptorRef[0]);
          v8 = 0;
        }

        else
        {
          OutputLength = CCCryptorGetOutputLength(cryptorRef[0], v40 - v39, 0);
          LOBYTE(v25) = 0;
          sub_100025100(&v28, OutputLength, &v25);
          dataOutMoved = 0;
          if (CCCryptorUpdate(cryptorRef[0], v39, v40 - v39, v28, v29 - v28, &dataOutMoved))
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004B0F54();
            }

            CCCryptorRelease(cryptorRef[0]);
            v8 = 0;
          }

          else
          {
            if (dataOutMoved < v29 - v28)
            {
              sub_1002501F0(&v28, dataOutMoved);
            }

            __p[0] = 0;
            sub_100025100(&v25, 16, __p);
            v24 = 0;
            v18 = CCCryptorFinal(cryptorRef[0], v25, v26 - v25, &v24);
            if (v18 || v24)
            {
              v19 = qword_1009F9820;
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                v22 = self->_logIdentifier;
                *__p = 138478339;
                *&__p[4] = v22;
                *&__p[12] = 1024;
                *&__p[14] = v18;
                v34 = 1024;
                v35 = v24;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][Decryptor] cryptor-final failed %d. Leftover: %d", __p, 0x18u);
              }

              CCCryptorRelease(cryptorRef[0]);
              v8 = 0;
            }

            else
            {
              LOBYTE(v23) = 0;
              sub_100025100(__p, 6, &v23);
              v23 = *&__p[8] - *__p;
              if (CCCryptorGetParameter())
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004B0FBC();
                }

                CCCryptorRelease(cryptorRef[0]);
                v8 = 0;
              }

              else
              {
                CCCryptorRelease(cryptorRef[0]);
                v20 = [NSData dataWithBytes:v42 length:v43 - v42];
                v21 = [NSData dataWithBytes:*__p length:*&__p[8] - *__p];
                if ([v20 isEqualToData:v21])
                {
                  v8 = [NSData dataWithBytes:v28 length:v29 - v28];
                }

                else
                {
                  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                  {
                    sub_1004B1024();
                  }

                  v8 = 0;
                }
              }

              if (*__p)
              {
                *&__p[8] = *__p;
                operator delete(*__p);
              }
            }

            if (v25)
            {
              v26 = v25;
              operator delete(v25);
            }
          }

          if (v28)
          {
            v29 = v28;
            operator delete(v28);
          }
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        goto LABEL_48;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B0E84();
      }
    }

    CCCryptorRelease(cryptorRef[0]);
LABEL_47:
    v8 = 0;
LABEL_48:
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

    goto LABEL_50;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1104(self->_logIdentifier, [v5 length], &v39);
  }

  v8 = 0;
LABEL_50:
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

LABEL_16:

  return v8;
}

- (id)_deriveSessionKeyFromKeyDerivationKey:(id)key sessionIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  [identifierCopy bytes];
  [identifierCopy length];
  Hkdf = CCKDFParametersCreateHkdf();
  v9 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    logIdentifier = self->_logIdentifier;
    __p = 138478339;
    __p_4 = logIdentifier;
    v14 = 1024;
    v15 = Hkdf;
    v16 = 1024;
    v17 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#crypto,[%{private}@][KDF] create parameters failed %d. Parameters need release: %d", &__p, 0x18u);
  }

  return 0;
}

@end