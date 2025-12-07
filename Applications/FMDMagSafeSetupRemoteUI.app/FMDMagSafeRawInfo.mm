@interface FMDMagSafeRawInfo
- (BOOL)authPassed;
- (BOOL)hasEnoughInformation;
- (FMDMagSafeRawInfo)initWithCoder:(id)coder;
- (FMDMagSafeRawInfo)initWithConnectionInfo:(id)info;
- (NSString)name;
- (void)beginUserKeyEraseWithCompletion:(id)completion;
- (void)cancelUserKeyEraseWithCompletion:(id)completion;
- (void)cancelVendorKeyEraseWithCompletion:(id)completion;
- (void)continueUserKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion;
- (void)copyUserPrivateKeyWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)getAuthNonceWithCompletion:(id)completion;
- (void)getPairingDataWithCompletion:(id)completion;
- (void)getPairingStatus;
- (void)removeKeysWithCompletion:(id)completion;
- (void)setName:(id)name withCompletion:(id)completion;
- (void)setPairingData:(id)data withCompletion:(id)completion;
- (void)setupKeysWithCompletion:(id)completion;
- (void)updateWithAccessoryInfo:(id)info;
- (void)updateWithProperties:(id)properties;
- (void)vendorKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion;
@end

@implementation FMDMagSafeRawInfo

- (FMDMagSafeRawInfo)initWithConnectionInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = FMDMagSafeRawInfo;
  v5 = [(FMDMagSafeRawInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDMagSafeRawInfo *)v5 setConnectionInfo:infoCopy];
  }

  return v6;
}

- (BOOL)authPassed
{
  if ([(FMDMagSafeRawInfo *)self protocol]!= 14 || ![(FMDMagSafeRawInfo *)self infoAvailable])
  {
    return 0;
  }

  authStatus = [(FMDMagSafeRawInfo *)self authStatus];
  v4 = [authStatus isEqualToNumber:&off_10003D930];

  return v4;
}

- (void)updateWithAccessoryInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100002400(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWithAccessoryInfo with %@", &v18, 0xCu);
  }

  v6 = kACCInfo_SerialNumber;
  v7 = [infoCopy objectForKeyedSubscript:kACCInfo_SerialNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [infoCopy objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [infoCopy objectForKeyedSubscript:v6];
      [(FMDMagSafeRawInfo *)self setSerialNumber:v11];
    }
  }

  [(FMDMagSafeRawInfo *)self setFirmwareVersion:@"1.1.1"];
  v12 = kACCInfo_AccessoryDeviceUID;
  v13 = [infoCopy objectForKeyedSubscript:kACCInfo_AccessoryDeviceUID];
  if (v13)
  {
    v14 = v13;
    v15 = [infoCopy objectForKeyedSubscript:v12];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [infoCopy objectForKeyedSubscript:v12];
      [(FMDMagSafeRawInfo *)self setCoreAccessoryUID:v17];
    }
  }
}

- (void)updateWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = sub_100002400(propertiesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v51 = 138412290;
    v52 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updateWithProperties with %@", &v51, 0xCu);
  }

  v6 = kACCProperties_Endpoint_NFC_Type;
  v7 = [propertiesCopy objectForKeyedSubscript:kACCProperties_Endpoint_NFC_Type];
  if (v7)
  {
    v8 = v7;
    v9 = [propertiesCopy objectForKeyedSubscript:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [propertiesCopy objectForKeyedSubscript:v6];
      stringValue = [v11 stringValue];
      [(FMDMagSafeRawInfo *)self setAccessoryType:stringValue];
    }
  }

  v13 = kACCProperties_Endpoint_NFC_WashIndex;
  v14 = [propertiesCopy objectForKeyedSubscript:kACCProperties_Endpoint_NFC_WashIndex];
  if (v14)
  {
    v15 = v14;
    v16 = [propertiesCopy objectForKeyedSubscript:v13];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      v18 = [propertiesCopy objectForKeyedSubscript:v13];
      stringValue2 = [v18 stringValue];
      [(FMDMagSafeRawInfo *)self setStyle:stringValue2];

      v21 = sub_100002400(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        style = [(FMDMagSafeRawInfo *)self style];
        v51 = 138412290;
        v52 = style;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#colorTesting color of wallet = %@", &v51, 0xCu);
      }
    }
  }

  v23 = kACCExternalAccessoryAuthStatusKey;
  v24 = [propertiesCopy objectForKeyedSubscript:kACCExternalAccessoryAuthStatusKey];
  if (v24)
  {
    v25 = v24;
    v26 = [propertiesCopy objectForKeyedSubscript:v23];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if (v27)
    {
      v28 = [propertiesCopy objectForKeyedSubscript:v23];
      [(FMDMagSafeRawInfo *)self setAuthStatus:v28];
    }
  }

  v29 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
  if (v29 && (v30 = v29, [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"], v31 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v32 = objc_opt_isKindOfClass(), v31, v30, (v32 & 1) != 0))
  {
    v33 = sub_100002400(v29);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v35 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v36 = objc_opt_class();
      v51 = 138412546;
      v52 = v34;
      v53 = 2112;
      v54 = v36;
      v37 = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FMDMagSafeRawInfo: get NFC_InfoAvailable  = %@ %@", &v51, 0x16u);
    }

    v38 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
    [(FMDMagSafeRawInfo *)self setInfoAvailable:CFBooleanGetValue(v38) != 0];
  }

  else
  {
    v39 = sub_100002400(v29);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v41 = [propertiesCopy objectForKeyedSubscript:@"NFC_InfoAvailable"];
      v42 = objc_opt_class();
      v51 = 138412546;
      v52 = v40;
      v53 = 2112;
      v54 = v42;
      v43 = v42;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "FMDMagSafeRawInfo: get NFC_InfoAvailable unexpected  = %@ %@", &v51, 0x16u);
    }

    [(FMDMagSafeRawInfo *)self setInfoAvailable:0];
  }

  v44 = [propertiesCopy objectForKeyedSubscript:@"ACCMFi4PairingStatus"];
  if (v44 && (v45 = v44, [propertiesCopy objectForKeyedSubscript:@"ACCMFi4PairingStatus"], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_opt_respondsToSelector(), v46, v45, (v47 & 1) != 0))
  {
    v48 = [propertiesCopy objectForKeyedSubscript:@"ACCMFi4PairingStatus"];
    integerValue = [v48 integerValue];

    [(FMDMagSafeRawInfo *)self setIsNVMSetup:(integerValue & 0xFFFFFFFE) == 2];
    [(FMDMagSafeRawInfo *)self setKeysAvailable:integerValue == 2];
  }

  else
  {
    v50 = sub_100002400(v44);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "did not get ACCMFi4PairingStatus", &v51, 2u);
    }
  }
}

- (BOOL)hasEnoughInformation
{
  serialNumber = [(FMDMagSafeRawInfo *)self serialNumber];
  if (serialNumber)
  {
    accessoryType = [(FMDMagSafeRawInfo *)self accessoryType];
    v5 = accessoryType != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)name
{
  if (!self->_name && [(FMDMagSafeRawInfo *)self authPassed])
  {
    v3 = dispatch_group_create();
    endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
    if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableGetAccessoryUserName"])
    {
      dispatch_group_enter(v3);
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = sub_10001036C;
      v24 = sub_10001037C;
      v25 = 0;
      v6 = sub_100002400(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#CA calling getAccessoryUserName", buf, 2u);
      }

      connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100010384;
      v17[3] = &unk_100038DC0;
      v19 = &v20;
      v8 = v3;
      v18 = v8;
      [connectionInfo getAccessoryUserName:endPointUUID withReply:v17];

      v9 = dispatch_time(0, 5000000000);
      v10 = dispatch_group_wait(v8, v9);
      if (v10)
      {
        v11 = v10;
        name = sub_100002400(v10);
        if (os_log_type_enabled(name, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v21[5];
          *buf = 134218242;
          v27 = v11;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_DEFAULT, "#CA timeout while trying to getAccessoryUserName error %ld result = %@", buf, 0x16u);
        }
      }

      else
      {
        v14 = v21[5];
        name = self->_name;
        self->_name = v14;
      }

      _Block_object_dispose(&v20, 8);
    }
  }

  v15 = self->_name;

  return v15;
}

- (void)getPairingStatus
{
  v3 = dispatch_group_create();
  v4 = objc_alloc_init(NSMutableDictionary);
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  if ([(FMDMagSafeRawInfo *)self enableCAAPI:@"enableGetPairingStatus"]&& [(FMDMagSafeRawInfo *)self authPassed])
  {
    dispatch_group_enter(v3);
    v7 = sub_100002400(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#CA calling getPairingStatus", buf, 2u);
    }

    *buf = 0;
    v26 = buf;
    v27 = 0x2020000000;
    v28 = 0;
    connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000107A8;
    v22 = &unk_100038DE8;
    v24 = buf;
    v9 = v3;
    v23 = v9;
    [connectionInfo getPairingStatus:endPointUUID withReply:&v19];

    v10 = dispatch_time(0, 5000000000);
    v11 = dispatch_group_wait(v9, v10);
    v12 = v11;
    v13 = *(v26 + 6);
    if (v13 >= 4)
    {
      v14 = @"no value";
    }

    else
    {
      v14 = *(&off_100038F48 + v13);
    }

    v15 = sub_100002400(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v26 + 6);
      *v29 = 67109378;
      *v30 = v16;
      *&v30[4] = 2112;
      *&v30[6] = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#CA pairningstatus = %d %@", v29, 0x12u);
    }

    if (v12)
    {
      v18 = sub_100002400(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 134218242;
        *v30 = v12;
        *&v30[8] = 2112;
        *&v30[10] = v4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#CA timeout while trying to getPairingStatus error %ld result = %@", v29, 0x16u);
      }
    }

    else
    {
      [(FMDMagSafeRawInfo *)self setIsNVMSetup:(*(v26 + 6) & 0xFFFFFFFE) == 2, v19, v20, v21, v22];
      [(FMDMagSafeRawInfo *)self setKeysAvailable:*(v26 + 6) == 2];
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)setPairingData:(id)data withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v8 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting pairing Data", buf, 2u);
  }

  data = [dataCopy data];
  v10 = objc_alloc_init(NSMutableArray);
  v11 = 0;
  v12 = 4;
  do
  {
    if (([data length] - v11) < 0xF0)
    {
      if ([data length] == v11)
      {
        v14 = objc_alloc_init(NSData);
        [v10 addObject:v14];
      }

      else
      {
        v15 = [data subdataWithRange:{v11, objc_msgSend(data, "length") - v11}];
        [v10 addObject:v15];

        v11 = [data length];
      }
    }

    else
    {
      v13 = [data subdataWithRange:{v11, 240}];
      [v10 addObject:v13];

      v11 += 240;
    }

    --v12;
  }

  while (v12);
  v33[0] = &off_10003D948;
  v16 = [v10 objectAtIndexedSubscript:0];
  v34[0] = v16;
  v33[1] = &off_10003D960;
  v17 = [v10 objectAtIndexedSubscript:1];
  v34[1] = v17;
  v33[2] = &off_10003D978;
  v18 = [v10 objectAtIndexedSubscript:2];
  v34[2] = v18;
  v33[3] = &off_10003D990;
  v19 = [v10 objectAtIndexedSubscript:3];
  v34[3] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:4];

  v22 = sub_100002400(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#CA calling setPublicNVMKeyValues with %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100010C6C;
  v27[3] = &unk_100038E10;
  objc_copyWeak(&v30, buf);
  v25 = dataCopy;
  v28 = v25;
  v26 = completionCopy;
  v29 = v26;
  [connectionInfo setPublicNVMKeyValues:v20 forEndpoint:endPointUUID withReply:v27];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)getPairingDataWithCompletion:(id)completion
{
  completionCopy = completion;
  pairingData = [(FMDMagSafeRawInfo *)self pairingData];

  if (pairingData)
  {
    pairingData2 = [(FMDMagSafeRawInfo *)self pairingData];
    completionCopy[2](completionCopy, pairingData2, 0);
  }

  else
  {
    v8 = sub_100002400(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
      *buf = 138412546;
      v17 = endPointUUID;
      v18 = 2112;
      v19 = &off_10003DA08;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#CA calling getPublicNVMKeyValues %@ %@", buf, 0x16u);
    }

    connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
    endPointUUID2 = [(FMDMagSafeRawInfo *)self endPointUUID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100010F20;
    v12[3] = &unk_100038E38;
    v13 = &off_10003DA08;
    selfCopy = self;
    v15 = completionCopy;
    [connectionInfo getPublicNVMKeyValues:&off_10003DA08 forEndpoint:endPointUUID2 withReply:v12];
  }
}

- (void)setName:(id)name withCompletion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting accessory name", buf, 2u);
  }

  v9 = [(FMDMagSafeRawInfo *)self enableCAAPI:@"enableSetAccessoryUserName"];
  if (v9)
  {
    v10 = sub_100002400(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#CA calling setAccessoryUserName", buf, 2u);
    }

    objc_initWeak(buf, self);
    v11 = dispatch_get_global_queue(2, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100011384;
    v12[3] = &unk_100038E60;
    v12[4] = self;
    v13 = nameCopy;
    objc_copyWeak(&v15, buf);
    v14 = completionCopy;
    dispatch_async(v11, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    [(FMDMagSafeRawInfo *)self setName:nameCopy];
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)setupKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provisioning keys for accessory", buf, 2u);
  }

  isNVMSetup = [(FMDMagSafeRawInfo *)self isNVMSetup];
  if (isNVMSetup)
  {
    v7 = sub_100002400(isNVMSetup);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001E888(v7);
    }

    v8 = +[NSError fm_genericError];
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    objc_initWeak(buf, self);
    v9 = [(FMDMagSafeRawInfo *)self enableCAAPI:@"enableProvisionAccessoryForFindMy"];
    if (v9)
    {
      v10 = sub_100002400(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#CA calling provisionAccessoryForFindMy", v15, 2u);
      }

      v11 = dispatch_get_global_queue(2, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000117A4;
      block[3] = &unk_100038EB0;
      block[4] = self;
      objc_copyWeak(&v14, buf);
      v13 = completionCopy;
      dispatch_async(v11, block);

      objc_destroyWeak(&v14);
    }

    else
    {
      [(FMDMagSafeRawInfo *)self setIsNVMSetup:1];
      [(FMDMagSafeRawInfo *)self setKeysAvailable:1];
      completionCopy[2](completionCopy, 0);
    }

    objc_destroyWeak(buf);
  }
}

- (void)removeKeysWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### removing keys for accessory", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [(FMDMagSafeRawInfo *)self enableCAAPI:@"enableResetPairingInformation"];
  if (v6)
  {
    v7 = sub_100002400(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "### #CA calling resetPairingInformation", v14, 2u);
    }

    connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
    endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100011B84;
    v11[3] = &unk_100038E88;
    objc_copyWeak(&v13, buf);
    v12 = completionCopy;
    [connectionInfo resetPairingInformation:endPointUUID withReply:v11];

    objc_destroyWeak(&v13);
  }

  else
  {
    [(FMDMagSafeRawInfo *)self setIsNVMSetup:0];
    [(FMDMagSafeRawInfo *)self setKeysAvailable:0];
    v10 = +[NSError fm_genericError];
    (*(completionCopy + 2))(completionCopy, v10);
  }

  objc_destroyWeak(buf);
}

- (void)getAuthNonceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling beginVendorKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100011D8C;
  v9[3] = &unk_100038ED8;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo beginVendorKeyErase:endPointUUID withReply:v9];
}

- (void)vendorKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  endpointCopy = endpoint;
  nonceCopy = nonce;
  signatureCopy = signature;
  eraseCopy = erase;
  v17 = sub_100002400(eraseCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#CA calling continueVendorKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100011FD0;
  v20[3] = &unk_100038F00;
  v20[4] = self;
  v21 = completionCopy;
  v19 = completionCopy;
  [connectionInfo continueVendorKeyErase:eraseCopy withSignature:signatureCopy andAccessoryNonce:nonceCopy forEndpoint:endpointCopy withReply:v20];
}

- (void)copyUserPrivateKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling copyUserPrivateKey", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000121C8;
  v9[3] = &unk_100038ED8;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo copyUserPrivateKey:endPointUUID withReply:v9];
}

- (void)beginUserKeyEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling beginUserKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000123C4;
  v9[3] = &unk_100038ED8;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo beginUserKeyErase:endPointUUID withReply:v9];
}

- (void)continueUserKeyErase:(id)erase withSignature:(id)signature andAccessoryNonce:(id)nonce forEndpoint:(id)endpoint completion:(id)completion
{
  completionCopy = completion;
  endpointCopy = endpoint;
  nonceCopy = nonce;
  signatureCopy = signature;
  eraseCopy = erase;
  v17 = sub_100002400(eraseCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#CA calling continueUserKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100012608;
  v20[3] = &unk_100038F00;
  v20[4] = self;
  v21 = completionCopy;
  v19 = completionCopy;
  [connectionInfo continueUserKeyErase:eraseCopy withSignature:signatureCopy andAccessoryNonce:nonceCopy forEndpoint:endpointCopy withReply:v20];
}

- (void)cancelUserKeyEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling cancelUserKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100012800;
  v9[3] = &unk_100038F28;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo cancelUserKeyErase:endPointUUID withReply:v9];
}

- (void)cancelVendorKeyEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_100002400(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#CA calling cancelVendorKeyErase", buf, 2u);
  }

  connectionInfo = [(FMDMagSafeRawInfo *)self connectionInfo];
  endPointUUID = [(FMDMagSafeRawInfo *)self endPointUUID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000129E0;
  v9[3] = &unk_100038F28;
  v10 = completionCopy;
  v8 = completionCopy;
  [connectionInfo cancelVendorKeyErase:endPointUUID withReply:v9];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryType = [(FMDMagSafeRawInfo *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];
}

- (FMDMagSafeRawInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDMagSafeRawInfo;
  v5 = [(FMDMagSafeRawInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v6;
  }

  return v5;
}

@end