@interface FMDRemoteUnlockPairingData
+ (BOOL)testPairingData;
+ (BOOL)testPairingData2;
+ (BOOL)testPairingData3;
+ (id)keys;
+ (id)randomDataOfSize:(unint64_t)size;
- (FMDRemoteUnlockPairingData)initWithData:(id)data;
- (id)data;
@end

@implementation FMDRemoteUnlockPairingData

+ (id)keys
{
  if (qword_100045F78 != -1)
  {
    sub_10001F0A4();
  }

  v3 = qword_100045F70;

  return v3;
}

- (FMDRemoteUnlockPairingData)initWithData:(id)data
{
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = FMDRemoteUnlockPairingData;
  v5 = [(FMDRemoteUnlockPairingData *)&v28 init];
  if (v5)
  {
    keys = [objc_opt_class() keys];
    bytes = [dataCopy bytes];
    v23 = dataCopy;
    v8 = [dataCopy length];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = keys;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v25;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = v12 + 2;
          if (v12 + 2 <= v8)
          {
            v16 = __rev16(*&bytes[v12]);
            v12 = v15 + v16;
            if (v15 + v16 > v8)
            {
              v19 = sub_100002400(v10);
              dataCopy = v23;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_10001F0B8(v23, v19);
              }

              v20 = 0;
              goto LABEL_22;
            }

            if (v16)
            {
              v17 = *(*(&v24 + 1) + 8 * v14);
              v18 = [NSData dataWithBytes:&bytes[v15] length:?];
              [(FMDRemoteUnlockPairingData *)v5 setValue:v18 forKey:v17];
            }
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v11 = v10;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

    if (v8 > v12)
    {
      v21 = [NSData dataWithBytes:&bytes[v12] length:&v8[-v12]];
      [(FMDRemoteUnlockPairingData *)v5 setOtherData:v21];
    }

    dataCopy = v23;
  }

  v20 = v5;
LABEL_22:

  return v20;
}

- (id)data
{
  v3 = objc_alloc_init(NSMutableData);
  [objc_opt_class() keys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(FMDRemoteUnlockPairingData *)self valueForKey:*(*(&v20 + 1) + 8 * i), v20];
        v10 = malloc_type_malloc(2uLL, 0xF154F28DuLL);
        if (!v10)
        {

          v18 = 0;
          goto LABEL_16;
        }

        v11 = v10;
        v10[1] = [v9 length];
        *v11 = [v9 length] >> 8;
        [v3 appendBytes:v11 length:2];
        [v3 appendData:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  otherData = [(FMDRemoteUnlockPairingData *)self otherData];
  if (otherData)
  {
    v13 = otherData;
    otherData2 = [(FMDRemoteUnlockPairingData *)self otherData];
    v15 = [otherData2 length];

    if (v15)
    {
      otherData3 = [(FMDRemoteUnlockPairingData *)self otherData];
      [v3 appendData:otherData3];
    }
  }

  v17 = sub_100002400(otherData);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F130(v3, v17);
  }

  v18 = v3;
LABEL_16:

  return v18;
}

+ (id)randomDataOfSize:(unint64_t)size
{
  v4 = malloc_type_malloc(size, 0x855E318EuLL);
  if (v4)
  {
    v5 = v4;
    arc4random_buf(v4, size);
    v4 = [NSData dataWithBytesNoCopy:v5 length:size freeWhenDone:1];
  }

  return v4;
}

+ (BOOL)testPairingData
{
  v2 = objc_alloc_init(FMDRemoteUnlockPairingData);
  v3 = [objc_opt_class() randomDataOfSize:60];
  [(FMDRemoteUnlockPairingData *)v2 setPairingCheckToken:v3];

  v4 = [objc_opt_class() randomDataOfSize:64];
  [(FMDRemoteUnlockPairingData *)v2 setLostModePrivateKey:v4];

  data = [(FMDRemoteUnlockPairingData *)v2 data];
  if (data)
  {
    v6 = [[FMDRemoteUnlockPairingData alloc] initWithData:data];
    if (v6)
    {
      [objc_opt_class() keys];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v24 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            v13 = [(FMDRemoteUnlockPairingData *)v2 valueForKey:v12];
            v14 = [(FMDRemoteUnlockPairingData *)v6 valueForKey:v12];
            v15 = [v13 isEqualToData:v14];

            if (!v15)
            {
              v18 = 0;
              v17 = v7;
              goto LABEL_18;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v17 = sub_100002400(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "FMDRemoteUnlockPairingData: test 1 success", v20, 2u);
      }

      v18 = 1;
LABEL_18:
    }

    else
    {
      v7 = sub_100002400(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10001F1A8();
      }

      v18 = 0;
    }
  }

  else
  {
    v6 = sub_100002400(0);
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      sub_10001F1DC();
    }

    v18 = 0;
  }

  return v18;
}

+ (BOOL)testPairingData2
{
  v2 = malloc_type_malloc(0x15uLL, 0x47A2CFEAuLL);
  *v2 = 1280;
  *(v2 + 2) = 875770417;
  v2[6] = 53;
  *(v2 + 7) = 3072;
  *(v2 + 17) = 1818978921;
  *(v2 + 9) = *"abcdefghijkl";
  v3 = [[NSData alloc] initWithBytes:v2 length:21];
  v4 = [[FMDRemoteUnlockPairingData alloc] initWithData:v3];
  if (v4)
  {
    v5 = [[NSData alloc] initWithBytes:"12345" length:5];
    v6 = [[NSData alloc] initWithBytes:"abcdefghijkl" length:12];
    pairingCheckToken = [(FMDRemoteUnlockPairingData *)v4 pairingCheckToken];
    v8 = [v5 isEqualToData:pairingCheckToken];

    if (v8 && (-[FMDRemoteUnlockPairingData lostModePrivateKey](v4, "lostModePrivateKey"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v6 isEqualToData:v9], v9, v10))
    {
      v12 = sub_100002400(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15[0] = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDRemoteUnlockPairingData: test 2 success", v15, 2u);
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v5 = sub_100002400(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001F1A8();
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)testPairingData3
{
  v2 = malloc_type_malloc(0x28uLL, 0xDBBBE2E2uLL);
  *v2 = 1280;
  *(v2 + 2) = 875770417;
  v2[6] = 53;
  *(v2 + 7) = 3072;
  *(v2 + 17) = 1818978921;
  *(v2 + 9) = *"abcdefghijkl";
  *(v2 + 21) = 2304;
  v2[31] = 57;
  *(v2 + 23) = *"123456789";
  *(v2 + 4) = 0x6867666564636261;
  v3 = [[NSData alloc] initWithBytes:v2 length:40];
  v4 = [[FMDRemoteUnlockPairingData alloc] initWithData:v3];
  if (v4)
  {
    v5 = [[NSData alloc] initWithBytes:"12345" length:5];
    v6 = [[NSData alloc] initWithBytes:"abcdefghijkl" length:12];
    v7 = [[NSData alloc] initWithBytes:"123456789" length:9];
    v8 = [[NSData alloc] initWithBytes:"abcdefgh" length:8];
    pairingCheckToken = [(FMDRemoteUnlockPairingData *)v4 pairingCheckToken];
    v10 = [v5 isEqualToData:pairingCheckToken];

    if (v10)
    {
      lostModePrivateKey = [(FMDRemoteUnlockPairingData *)v4 lostModePrivateKey];
      v13 = [v6 isEqualToData:lostModePrivateKey];

      if (v13)
      {
        phoneNumber = [(FMDRemoteUnlockPairingData *)v4 phoneNumber];
        v16 = [v7 isEqualToData:phoneNumber];

        if (v16)
        {
          otherData = [(FMDRemoteUnlockPairingData *)v4 otherData];
          v19 = [v8 isEqualToData:otherData];

          if (v19)
          {
            data = [(FMDRemoteUnlockPairingData *)v4 data];
            v22 = [data isEqualToData:v3];
            v23 = sub_100002400(v22);
            v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
            if (v22)
            {
              if (v24)
              {
                v30 = 0;
                v25 = "FMDRemoteUnlockPairingData: test 3 success";
                v26 = &v30;
LABEL_26:
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, v26, 2u);
              }
            }

            else if (v24)
            {
              *v31 = 0;
              v25 = "FMDRemoteUnlockPairingData: decodedData failure";
              v26 = v31;
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          data = sub_100002400(v20);
          if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v27 = "FMDRemoteUnlockPairingData: otherData failure";
            v28 = buf;
            goto LABEL_20;
          }

LABEL_21:
          LOBYTE(v22) = 0;
LABEL_22:

          goto LABEL_23;
        }

        data = sub_100002400(v17);
        if (!os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v33 = 0;
        v27 = "FMDRemoteUnlockPairingData: phoneNumber failure";
        v28 = &v33;
      }

      else
      {
        data = sub_100002400(v14);
        if (!os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v34 = 0;
        v27 = "FMDRemoteUnlockPairingData: lostModePrivateKey failure";
        v28 = &v34;
      }
    }

    else
    {
      data = sub_100002400(v11);
      if (!os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v35 = 0;
      v27 = "FMDRemoteUnlockPairingData: pairingCheckToken failure";
      v28 = &v35;
    }

LABEL_20:
    _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_DEFAULT, v27, v28, 2u);
    goto LABEL_21;
  }

  v5 = sub_100002400(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10001F210();
  }

  LOBYTE(v22) = 0;
LABEL_23:

  return v22;
}

@end