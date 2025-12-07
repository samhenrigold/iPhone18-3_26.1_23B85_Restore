@interface FMDPairingCheckHelper
+ (id)getPairingData:(id)data;
+ (id)getUserPrivateKey:(id)key;
+ (id)registerDevice:(id)device;
+ (id)updatePairingData:(id)data pairingData:(id)pairingData;
+ (void)checkAndHealPairingKeys:(id)keys completion:(id)completion;
+ (void)pairingCheckForAccessory:(id)accessory useEraseKeyType:(id)type completion:(id)completion;
@end

@implementation FMDPairingCheckHelper

+ (void)pairingCheckForAccessory:(id)accessory useEraseKeyType:(id)type completion:(id)completion
{
  accessoryCopy = accessory;
  typeCopy = type;
  completionCopy = completion;
  v9 = dispatch_group_create();
  v10 = sub_100004FC8(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "getting pairing data", buf, 2u);
  }

  dispatch_group_enter(v9);
  v139 = 0;
  v140 = &v139;
  v141 = 0x3032000000;
  v142 = sub_100002EB0;
  v143 = sub_100002EC0;
  v144 = 0;
  v133 = 0;
  v134 = &v133;
  v135 = 0x3032000000;
  v136 = sub_100002EB0;
  v137 = sub_100002EC0;
  v138 = 0;
  v129[0] = _NSConcreteStackBlock;
  v129[1] = 3221225472;
  v129[2] = sub_100002EC8;
  v129[3] = &unk_100024728;
  v131 = &v139;
  v132 = &v133;
  v11 = v9;
  v130 = v11;
  [accessoryCopy getPairingDataWithCompletion:v129];
  v12 = dispatch_time(0, 5000000000);
  v13 = dispatch_group_wait(v11, v12);
  if (!v134[5] && !v13)
  {
    v14 = sub_100004FC8(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      data = [v140[5] data];
      fm_hexString = [data fm_hexString];
      pairingCheckToken = [v140[5] pairingCheckToken];
      groupa = [pairingCheckToken fm_hexString];
      phoneNumber = [v140[5] phoneNumber];
      fm_hexString2 = [phoneNumber fm_hexString];
      keysUpdated = [v140[5] keysUpdated];
      fm_hexString3 = [keysUpdated fm_hexString];
      lostModePrivateKey = [v140[5] lostModePrivateKey];
      fm_hexString4 = [lostModePrivateKey fm_hexString];
      *buf = 138413314;
      *&buf[4] = fm_hexString;
      *&buf[12] = 2112;
      *&buf[14] = groupa;
      *&buf[22] = 2112;
      v154 = fm_hexString2;
      *v155 = 2112;
      *&v155[2] = fm_hexString3;
      *&v155[10] = 2112;
      *&v155[12] = fm_hexString4;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "pairingCheckData = %@\npairingCheckToken = %@\nphoneNumber = %@\nkeysUpdated = %@\nlostModePrivateKey = %@", buf, 0x34u);
    }

    if (typeCopy)
    {
      v15 = [typeCopy isEqualToString:@"2"];
      v16 = v15;
    }

    else
    {
      keysUpdated2 = [v140[5] keysUpdated];
      if (keysUpdated2)
      {
        v16 = [FMPreferencesUtil BOOLForKey:@"userKeyEraseDisabled" inDomain:kFMDNotBackedUpPrefDomain]^ 1;
      }

      else
      {
        v16 = 0;
      }
    }

    v21 = sub_100004FC8(v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "using userPrivateKeyErase = %d", buf, 8u);
    }

    v23 = sub_100004FC8(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "getting auth nonce", buf, 2u);
    }

    dispatch_group_enter(v11);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v154 = sub_100002EB0;
    *v155 = sub_100002EC0;
    *&v155[8] = 0;
    if (v16)
    {
      v24 = v128;
      v128[0] = _NSConcreteStackBlock;
      v128[1] = 3221225472;
      v128[2] = sub_100002FDC;
      v128[3] = &unk_100024750;
      v128[5] = buf;
      v128[6] = &v133;
      v128[4] = v11;
      [accessoryCopy beginUserKeyEraseWithCompletion:v128];
    }

    else
    {
      v24 = v127;
      v127[0] = _NSConcreteStackBlock;
      v127[1] = 3221225472;
      v127[2] = sub_1000030F0;
      v127[3] = &unk_100024750;
      v127[5] = buf;
      v127[6] = &v133;
      v127[4] = v11;
      [accessoryCopy getAuthNonceWithCompletion:v127];
    }

    v25 = dispatch_time(0, 5000000000);
    v26 = dispatch_group_wait(v11, v25);
    if (v134[5] || v26)
    {
      v43 = sub_100004FC8(v26);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_100014BC4();
      }

      v44 = v134[5];
      if (v44)
      {
        completionCopy[2](completionCopy, v44, 0);
LABEL_91:
        _Block_object_dispose(buf, 8);

        goto LABEL_92;
      }

      v28 = +[NSError fm_timeoutError];
      completionCopy[2](completionCopy, v28, 0);
LABEL_90:

      goto LABEL_91;
    }

    v27 = sub_100004FC8(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "getting pairingCheckInfo", v121, 2u);
    }

    v28 = objc_alloc_init(FMDPairingCheckCommandRequestInfo);
    pairingCheckToken2 = [v140[5] pairingCheckToken];
    fm_hexString5 = [pairingCheckToken2 fm_hexString];
    [v28 setPairingCheckToken:fm_hexString5];

    fm_hexString6 = [*(*&buf[8] + 40) fm_hexString];
    [v28 setAuthNonce:fm_hexString6];

    accessoryType = [accessoryCopy accessoryType];
    [v28 setAccessoryType:accessoryType];

    if (v16)
    {
      v33 = @"2";
    }

    else
    {
      v33 = @"1";
    }

    [v28 setEraseKeyType:v33];
    dispatch_group_enter(v11);
    *v121 = 0;
    v122 = v121;
    v123 = 0x3032000000;
    v124 = sub_100002EB0;
    v125 = sub_100002EC0;
    v126 = 0;
    v34 = +[FMDFMIPManager sharedInstance];
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_100003204;
    v117[3] = &unk_100024778;
    v119 = v121;
    v120 = &v133;
    group = v11;
    v118 = group;
    [v34 pairingCheckWith:v28 completion:v117];

    v35 = dispatch_time(0, 5000000000);
    v36 = dispatch_group_wait(group, v35);
    if (v134[5] || v36)
    {
      if (v16)
      {
        v45 = [accessoryCopy cancelUserKeyEraseWithCompletion:0];
      }

      else
      {
        v45 = [accessoryCopy cancelVendorKeyEraseWithCompletion:0];
      }

      v46 = sub_100004FC8(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100014BC4();
      }

      v47 = v134[5];
      if (v47)
      {
        completionCopy[2](completionCopy, v47, 0);
LABEL_89:

        _Block_object_dispose(v121, 8);
        goto LABEL_90;
      }

      v48 = +[NSError fm_timeoutError];
      completionCopy[2](completionCopy, v48, 0);
LABEL_88:

      goto LABEL_89;
    }

    v37 = sub_100004FC8(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "getting lostModeInfo", v145, 2u);
    }

    lostModeInfo = [*(v122 + 5) lostModeInfo];
    v39 = [NSData dataWithHexString:lostModeInfo];
    lostModePrivateKey2 = [v140[5] lostModePrivateKey];
    v106 = [FMDCryptoUtil decryptData:v39 privateKeyData:lostModePrivateKey2];

    if (v106)
    {
      v41 = [NSJSONSerialization JSONObjectWithData:v106 options:0 error:0];
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v49 = sub_100004FC8(v41);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      lostModeInfo2 = [*(v122 + 5) lostModeInfo];
      *v145 = 138412802;
      v146 = lostModeInfo2;
      v147 = 2112;
      v148 = v106;
      v149 = 2112;
      v150 = v42;
      _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "got lostModeInfo encrypted = %@ decrypted = %@ json = %@", v145, 0x20u);
    }

    v50 = [v42 objectForKeyedSubscript:@"isLost"];
    if (objc_opt_respondsToSelector())
    {
      v51 = [v42 objectForKeyedSubscript:@"isLost"];
      bOOLValue = [v51 BOOLValue];

      if (bOOLValue)
      {
        goto LABEL_61;
      }
    }

    else
    {
    }

    v54 = sub_100004FC8(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_100014B4C(v42, v54);
    }

    v42 = 0;
LABEL_61:
    v55 = *(v122 + 5);
    if (v55)
    {
      statusCode = [v55 statusCode];
      if (([statusCode isEqualToString:@"409"] & 1) != 0 || (objc_msgSend(*(v122 + 5), "signature"), (v57 = objc_claimAutoreleasedReturnValue()) == 0))
      {
      }

      else
      {
        serverNonce = [*(v122 + 5) serverNonce];
        v59 = serverNonce == 0;

        if (!v59)
        {
          v60 = sub_100004FC8(v55);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = @"vendorKeyErase";
            if (v16)
            {
              v61 = @"userKeyErase";
            }

            *v145 = 138412290;
            v146 = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "calling erase Key API %@", v145, 0xCu);
          }

          dispatch_group_enter(group);
          serverNonce2 = [*(v122 + 5) serverNonce];
          v111 = [NSData dataWithHexString:serverNonce2];

          signature = [*(v122 + 5) signature];
          v104 = [NSData dataWithHexString:signature];

          if (v16)
          {
            v65 = sub_100004FC8(v64);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = *(*&buf[8] + 40);
              endPointUUID = [accessoryCopy endPointUUID];
              *v145 = 138413058;
              v146 = v111;
              v147 = 2112;
              v148 = v104;
              v149 = 2112;
              v150 = v66;
              v151 = 2112;
              v152 = endPointUUID;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "continueUserKeyErase serverNonce = %@, signature  = %@, accessoryNonce = %@ endPointUUID = %@", v145, 0x2Au);
            }

            v68 = *(*&buf[8] + 40);
            endPointUUID2 = [accessoryCopy endPointUUID];
            v70 = v114;
            v114[0] = _NSConcreteStackBlock;
            v114[1] = 3221225472;
            v114[2] = sub_10000345C;
            v114[3] = &unk_1000247C8;
            v71 = v111;
            v114[4] = v71;
            v114[6] = &v133;
            v114[5] = group;
            [accessoryCopy continueUserKeyErase:v71 withSignature:v104 andAccessoryNonce:v68 forEndpoint:endPointUUID2 completion:v114];
          }

          else
          {
            v88 = sub_100004FC8(v64);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              v89 = *(*&buf[8] + 40);
              endPointUUID3 = [accessoryCopy endPointUUID];
              *v145 = 138413058;
              v146 = v111;
              v147 = 2112;
              v148 = v104;
              v149 = 2112;
              v150 = v89;
              v151 = 2112;
              v152 = endPointUUID3;
              _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "vendorKeyErase serverNonce = %@, signature  = %@, accessoryNonce = %@ endPointUUID = %@", v145, 0x2Au);
            }

            v91 = *(*&buf[8] + 40);
            endPointUUID2 = [accessoryCopy endPointUUID];
            v70 = v113;
            v113[0] = _NSConcreteStackBlock;
            v113[1] = 3221225472;
            v113[2] = sub_100003548;
            v113[3] = &unk_1000247C8;
            v92 = v111;
            v113[4] = v92;
            v113[6] = &v133;
            v113[5] = group;
            [accessoryCopy vendorKeyErase:v92 withSignature:v104 andAccessoryNonce:v91 forEndpoint:endPointUUID2 completion:v113];
          }

          v93 = dispatch_time(0, 5000000000);
          v94 = dispatch_group_wait(group, v93);
          if (v134[5] || v94)
          {
            v95 = sub_100004FC8(v94);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              sub_100014BC4();
            }

            v96 = v134[5];
            if (v96)
            {
              (completionCopy)[2](completionCopy, v96, v42);
            }

            else
            {
              v101 = +[NSError fm_timeoutError];
              (completionCopy)[2](completionCopy, v101, v42);
            }
          }

          else
          {
            (completionCopy)[2](completionCopy, 0, v42);
          }

          useEraseKeyType4 = v111;
LABEL_108:

          goto LABEL_87;
        }
      }
    }

    v72 = sub_100004FC8(v55);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v145 = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "phone is locked", v145, 2u);
    }

    dispatch_group_enter(group);
    if (v16)
    {
      v73 = v116;
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10000339C;
      v116[3] = &unk_1000247A0;
      v116[5] = &v133;
      v116[4] = group;
      [accessoryCopy cancelUserKeyEraseWithCompletion:v116];
    }

    else
    {
      v73 = v115;
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_1000033FC;
      v115[3] = &unk_1000247A0;
      v115[5] = &v133;
      v115[4] = group;
      [accessoryCopy cancelVendorKeyEraseWithCompletion:v115];
    }

    v74 = dispatch_time(0, 5000000000);
    v75 = dispatch_group_wait(group, v74);
    if (v75)
    {
      v76 = v75;
      v77 = sub_100004FC8(v75);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        sub_100014C2C(v76, v77);
      }
    }

    else if (!(typeCopy | v134[5]))
    {
      useEraseKeyType = [*(v122 + 5) useEraseKeyType];
      if (useEraseKeyType)
      {
        useEraseKeyType2 = [*(v122 + 5) useEraseKeyType];
        eraseKeyType = [v28 eraseKeyType];
        v81 = [useEraseKeyType2 isEqualToString:eraseKeyType];

        if ((v81 & 1) == 0)
        {
          v98 = sub_100004FC8(v82);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            useEraseKeyType3 = [*(v122 + 5) useEraseKeyType];
            *v145 = 138412290;
            v146 = useEraseKeyType3;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Performing pairing check again with eraseKeyType = %@", v145, 0xCu);
          }

          useEraseKeyType4 = [*(v122 + 5) useEraseKeyType];
          [self pairingCheckForAccessory:accessoryCopy useEraseKeyType:useEraseKeyType4 completion:completionCopy];
          goto LABEL_108;
        }
      }
    }

    (completionCopy)[2](completionCopy, 0, v42);
LABEL_87:

    v48 = v106;
    goto LABEL_88;
  }

  v17 = sub_100004FC8(v13);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100014BC4();
  }

  v18 = v134[5];
  if (v18)
  {
    completionCopy[2](completionCopy, v18, 0);
  }

  else
  {
    v19 = +[NSError fm_timeoutError];
    completionCopy[2](completionCopy, v19, 0);
  }

LABEL_92:

  _Block_object_dispose(&v133, 8);
  _Block_object_dispose(&v139, 8);
}

+ (void)checkAndHealPairingKeys:(id)keys completion:(id)completion
{
  keysCopy = keys;
  completionCopy = completion;
  v7 = [objc_opt_class() getPairingData:keysCopy];
  v8 = sub_100004FC8(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    data = [v7 data];
    fm_hexString = [data fm_hexString];
    keysUpdated = [v7 keysUpdated];
    *buf = 138412546;
    *v75 = fm_hexString;
    *&v75[8] = 2112;
    *v76 = keysUpdated;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pairing data = %@ keys Updated = %@", buf, 0x16u);
  }

  v13 = sub_100004FC8(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100014CA4(v7, v13);
  }

  pairingCheckToken = [v7 pairingCheckToken];
  v15 = pairingCheckToken == 0;

  if (pairingCheckToken)
  {
LABEL_8:
    v20 = +[FMDMagSafeDataStore sharedInstance];
    readLostModeAccessoriesList = [v20 readLostModeAccessoriesList];

    serialNumber = [keysCopy serialNumber];
    v23 = [FMDExtHelper deviceIDFromAddress:serialNumber];

    v24 = [readLostModeAccessoriesList containsObject:v23];
    v25 = v24;
    v26 = sub_100004FC8(v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "device is in lost Mode", buf, 2u);
    }

    if (v25 && ([v7 keysUpdated], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      lostModePrivateKey = [v7 lostModePrivateKey];

      if (lostModePrivateKey)
      {
        v30 = 0;
        goto LABEL_20;
      }
    }

    v72 = 0;
    v73 = 0;
    [FMDCryptoUtil generatePublicPrivateKeyPair:&v73 privateKey:&v72];
    v31 = v73;
    v32 = v72;
    v33 = sub_100004FC8(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100014DF8(v31, v32, v33);
    }

    if (!v31 || !v32)
    {
      v44 = [NSError errorWithMessage:@"lost mode key generation failed"];
      completionCopy[2](completionCopy, v44);

LABEL_47:
      goto LABEL_48;
    }

    [v7 setLostModePrivateKey:v32];

    v30 = 1;
    v15 = 1;
LABEL_20:
    v34 = sub_100004FC8(v29);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v75 = v30;
      *&v75[4] = 1024;
      *&v75[6] = v15;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "### updateServerInfo = %d, updateMulderInfo = %d", buf, 0xEu);
    }

    v67 = v23;
    if (v30)
    {
      keysUpdated2 = [v7 keysUpdated];

      if (keysUpdated2)
      {
        [v7 setKeysUpdated:0];
        v15 = 1;
      }

      serialNumber2 = [keysCopy serialNumber];
      [FMPreferencesUtil removeKey:serialNumber2 inDomain:kFMDNotBackedUpMagSafePrefDomain];

      v38 = 0;
      v39 = 1;
    }

    else
    {
      serialNumber3 = [keysCopy serialNumber];
      v41 = [FMPreferencesUtil BOOLForKey:serialNumber3 inDomain:kFMDNotBackedUpMagSafePrefDomain];

      keysUpdated3 = [v7 keysUpdated];

      if (keysUpdated3 || !v41)
      {
        keysUpdated4 = [v7 keysUpdated];
        v46 = keysUpdated4 == 0;

        v38 = 0;
        v39 = v46 & (v41 ^ 1);
      }

      else
      {
        v38 = 1;
        buf[0] = 1;
        v43 = [NSData dataWithBytes:buf length:1];
        [v7 setKeysUpdated:v43];

        v39 = 0;
        v15 = 1;
      }
    }

    v47 = sub_100004FC8(v37);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      keysUpdated5 = [v7 keysUpdated];
      *buf = 67109634;
      *v75 = v39;
      *&v75[4] = 1024;
      *&v75[6] = v15;
      *v76 = 2112;
      *&v76[2] = keysUpdated5;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "### updateServerInfo = %d, updateMulderInfo = %d %@", buf, 0x18u);
    }

    if (!v15)
    {
      goto LABEL_44;
    }

    v49 = [objc_opt_class() updatePairingData:keysCopy pairingData:v7];
    v50 = v49;
    if (v49)
    {
      v51 = sub_100004FC8(v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_100014EBC(keysCopy, v51);
      }
    }

    else
    {
      if (v38)
      {
        serialNumber4 = [keysCopy serialNumber];
        [FMPreferencesUtil removeKey:serialNumber4 inDomain:kFMDNotBackedUpMagSafePrefDomain];
      }

      if (!v25)
      {
        goto LABEL_43;
      }

      v53 = +[NSDate date];
      v54 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v53 fm_epoch]);

      v55 = +[FMDMagSafeDataStore sharedInstance];
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_100003EF4;
      v68[3] = &unk_1000247F0;
      v69 = v67;
      v70 = v54;
      v71 = readLostModeAccessoriesList;
      v51 = v54;
      [v55 updateLostModeKeyRollTimeFor:v69 lastLostModeKeyRollTime:v51 withCompletion:v68];
    }

LABEL_43:
LABEL_44:
    if (v39)
    {
      v56 = objc_alloc_init(FMDPairingLockUpdateRequestInfo);
      pairingCheckToken2 = [v7 pairingCheckToken];
      fm_hexString2 = [pairingCheckToken2 fm_hexString];
      [v56 setPairingCheckToken:fm_hexString2];

      lostModePrivateKey2 = [v7 lostModePrivateKey];
      v60 = [FMDCryptoUtil publicKeyFromPrivateKey:lostModePrivateKey2];

      fm_hexString3 = [v60 fm_hexString];
      [v56 setLostModePubKey:fm_hexString3];

      v62 = [objc_opt_class() getUserPrivateKey:keysCopy];
      [v56 setUserPrivateKey:v62];

      serialNumber5 = [keysCopy serialNumber];
      [v56 setSerialNumber:serialNumber5];

      v64 = +[NSDate date];
      v65 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v64 fm_epoch]);
      [v56 setTimeStamp:v65];

      v66 = +[FMDFMIPManager sharedInstance];
      [v66 updatePairingLockInfo:v56 completion:&stru_100024830];
    }

    completionCopy[2](completionCopy, 0);
    v23 = v67;
    goto LABEL_47;
  }

  v16 = [objc_opt_class() registerDevice:keysCopy];
  if (v16)
  {
    v17 = v16;
    pairingToken = [v16 pairingToken];
    v19 = [NSData dataWithHexString:pairingToken];
    [v7 setPairingCheckToken:v19];

    goto LABEL_8;
  }

  readLostModeAccessoriesList = [NSError errorWithMessage:@"Unable to register device"];
  completionCopy[2](completionCopy, readLostModeAccessoriesList);
LABEL_48:
}

+ (id)getUserPrivateKey:(id)key
{
  keyCopy = key;
  v4 = sub_100004FC8(keyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getting user private key", buf, 2u);
  }

  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = sub_100002EB0;
  v26 = sub_100002EC0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100002EB0;
  v20 = sub_100002EC0;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004344;
  v12[3] = &unk_100024750;
  v14 = buf;
  v15 = &v16;
  v6 = v5;
  v13 = v6;
  [keyCopy copyUserPrivateKeyWithCompletion:v12];
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_group_wait(v6, v7);
  if (*(v23 + 5) || v8)
  {
    v10 = sub_100004FC8(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100014F54();
    }

    fm_hexString = 0;
  }

  else
  {
    fm_hexString = [v17[5] fm_hexString];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return fm_hexString;
}

+ (id)updatePairingData:(id)data pairingData:(id)pairingData
{
  dataCopy = data;
  pairingDataCopy = pairingData;
  v7 = sub_100004FC8(pairingDataCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setting up pairing data", buf, 2u);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = sub_100002EB0;
  v27 = sub_100002EC0;
  v28 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100004670;
  v20 = &unk_1000247A0;
  v22 = buf;
  v9 = v8;
  v21 = v9;
  [dataCopy setPairingData:pairingDataCopy withCompletion:&v17];
  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_group_wait(v9, v10);
  if (*(v24 + 5) || (v12 = 0, v11))
  {
    v13 = sub_100004FC8(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100014F54();
    }

    v14 = *(v24 + 5);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = [NSError fm_timeoutError:v17];
    }

    v12 = v15;
  }

  _Block_object_dispose(buf, 8);

  return v12;
}

+ (id)registerDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_alloc_init(FMDPairingLockRegisterRequestInfo);
  serialNumber = [deviceCopy serialNumber];
  [v4 setSerialNumber:serialNumber];

  accessoryType = [deviceCopy accessoryType];
  [v4 setAccessoryType:accessoryType];

  v7 = dispatch_group_create();
  v8 = sub_100004FC8(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serialNumber2 = [v4 serialNumber];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = serialNumber2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Doing register to server for accessory with serial number = %@", &buf, 0xCu);
  }

  dispatch_group_enter(v7);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = sub_100002EB0;
  v38 = sub_100002EC0;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100002EB0;
  v32 = sub_100002EC0;
  v33 = 0;
  v10 = +[FMDFMIPManager sharedInstance];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100004B08;
  v24[3] = &unk_100024858;
  v26 = &v28;
  p_buf = &buf;
  v11 = v7;
  v25 = v11;
  [v10 registerDeviceForPairingLock:v4 completion:v24];

  v12 = dispatch_time(0, 5000000000);
  v13 = dispatch_group_wait(v11, v12);
  if (v29[5] || v13)
  {
    v19 = sub_100004FC8(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100014F54();
    }
  }

  else
  {
    pairingToken = *(*(&buf + 1) + 40);
    if (pairingToken)
    {
      pairingToken = [pairingToken pairingToken];
      v15 = pairingToken;
      if (pairingToken)
      {
        serialNumber3 = [*(*(&buf + 1) + 40) serialNumber];
        v17 = serialNumber3 == 0;

        if (!v17)
        {
          v18 = *(*(&buf + 1) + 40);
          goto LABEL_16;
        }
      }
    }

    v20 = sub_100004FC8(pairingToken);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      pairingToken2 = [*(*(&buf + 1) + 40) pairingToken];
      serialNumber4 = [*(*(&buf + 1) + 40) serialNumber];
      sub_100014FBC(pairingToken2, serialNumber4, v34, v20);
    }
  }

  v18 = 0;
LABEL_16:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  return v18;
}

+ (id)getPairingData:(id)data
{
  dataCopy = data;
  v4 = dispatch_group_create();
  v5 = sub_100004FC8(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getting pairing data", buf, 2u);
  }

  dispatch_group_enter(v4);
  *buf = 0;
  v23 = buf;
  v24 = 0x3032000000;
  v25 = sub_100002EB0;
  v26 = sub_100002EC0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100002EB0;
  v20 = sub_100002EC0;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004E6C;
  v12[3] = &unk_100024728;
  v14 = buf;
  v15 = &v16;
  v6 = v4;
  v13 = v6;
  [dataCopy getPairingDataWithCompletion:v12];
  v7 = dispatch_time(0, 5000000000);
  v8 = dispatch_group_wait(v6, v7);
  if (v17[5] || v8)
  {
    v10 = sub_100004FC8(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001502C();
    }

    v9 = 0;
  }

  else
  {
    v9 = *(v23 + 5);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(buf, 8);

  return v9;
}

@end