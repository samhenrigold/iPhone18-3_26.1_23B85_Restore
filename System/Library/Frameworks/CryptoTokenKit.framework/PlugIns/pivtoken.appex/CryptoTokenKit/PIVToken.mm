@interface PIVToken
- (BOOL)populateIdentityFromSmartCard:(id)card into:(id)into certificateTag:(unint64_t)tag name:(id)name keyTag:(unint64_t)keyTag name:(id)a8 sign:(BOOL)sign suitableForLogin:(BOOL)self0 keyManagement:(BOOL)self1 constraint:(id)self2 error:(id *)self3;
- (PIVToken)initWithSmartCard:(id)card AID:(id)d PIVDriver:(id)driver error:(id *)p_isa;
- (id)dataOfCertificate:(id)certificate smartCard:(id)card error:(id *)error;
- (id)token:(id)token createSessionWithError:(id *)error;
@end

@implementation PIVToken

- (id)dataOfCertificate:(id)certificate smartCard:(id)card error:(id *)error
{
  certificateCopy = certificate;
  cardCopy = card;
  v9 = [cardCopy recordsOfObject:certificateCopy error:error];
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1000025CC;
    v24 = sub_1000025DC;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000025E4;
    v15[3] = &unk_100008310;
    v15[4] = &v20;
    v15[5] = &v16;
    [v9 enumerateObjectsUsingBlock:v15];
    v11 = v21[5];
    if (v11)
    {
      if (*(v17 + 24) == 1)
      {
        inflate = [v11 inflate];
      }

      else
      {
        inflate = v11;
      }

      v13 = inflate;
    }

    else if (error)
    {
      [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)populateIdentityFromSmartCard:(id)card into:(id)into certificateTag:(unint64_t)tag name:(id)name keyTag:(unint64_t)keyTag name:(id)a8 sign:(BOOL)sign suitableForLogin:(BOOL)self0 keyManagement:(BOOL)self1 constraint:(id)self2 error:(id *)self3
{
  errorCopy = error;
  intoCopy = into;
  nameCopy = name;
  v44 = a8;
  constraintCopy = constraint;
  cardCopy = card;
  v24 = [TKBERTLVRecord dataForTag:tag];
  v25 = [(PIVToken *)self dataOfCertificate:v24 smartCard:cardCopy error:error];

  if (v25)
  {
    domain = SecCertificateCreateWithData(kCFAllocatorDefault, v25);
    if (domain)
    {
      v27 = [[TKTokenKeychainCertificate alloc] initWithCertificate:domain objectID:v24];
      v28 = v27;
      if (!v27)
      {
        errorCopy = 0;
LABEL_23:

        goto LABEL_24;
      }

      v43 = constraintCopy;
      [v27 setName:nameCopy];
      v29 = [PIVTokenKeychainKey alloc];
      v30 = [NSNumber numberWithUnsignedLongLong:keyTag];
      objectID = [v28 objectID];
      v32 = [(PIVTokenKeychainKey *)v29 initWithCertificate:domain objectID:v30 certificateID:objectID];

      errorCopy = v32 != 0;
      if (!v32)
      {
LABEL_22:

        constraintCopy = v43;
        goto LABEL_23;
      }

      [(PIVTokenKeychainKey *)v32 setName:v44];
      v42 = +[NSMutableDictionary dictionary];
      [(PIVTokenKeychainKey *)v32 setCanSign:sign];
      [(PIVTokenKeychainKey *)v32 setSuitableForLogin:login];
      if (sign)
      {
        [v42 setObject:v43 forKeyedSubscript:&off_100008688];
      }

      keyType = [(PIVTokenKeychainKey *)v32 keyType];
      v34 = [keyType isEqual:kSecAttrKeyTypeRSA];

      if (v34)
      {
        [(PIVTokenKeychainKey *)v32 setCanDecrypt:management];
        if (!management)
        {
LABEL_21:
          [(PIVTokenKeychainKey *)v32 setConstraints:v42];
          [intoCopy addObject:v28];
          [intoCopy addObject:v32];

          goto LABEL_22;
        }

        v35 = &off_1000086A0;
      }

      else
      {
        keyType2 = [(PIVTokenKeychainKey *)v32 keyType];
        v40 = [keyType2 isEqual:kSecAttrKeyTypeECSECPrimeRandom];

        if (!v40)
        {
          goto LABEL_21;
        }

        [(PIVTokenKeychainKey *)v32 setCanPerformKeyExchange:management];
        if (!management)
        {
          goto LABEL_21;
        }

        v35 = &off_1000086B8;
      }

      [v42 setObject:v43 forKeyedSubscript:v35];
      goto LABEL_21;
    }

    if (error)
    {
      v45 = NSLocalizedDescriptionKey;
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"CORRUPTED_CERT" value:&stru_1000083D8 table:0];
      v46 = v37;
      v38 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *error = [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:v38];

      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (error)
  {
    domain = [*error domain];
    if (![domain isEqual:TKErrorDomain])
    {
LABEL_15:
      errorCopy = 0;
      goto LABEL_24;
    }

    errorCopy = [*error code] == -6;
LABEL_24:
  }

  return errorCopy;
}

- (PIVToken)initWithSmartCard:(id)card AID:(id)d PIVDriver:(id)driver error:(id *)p_isa
{
  cardCopy = card;
  dCopy = d;
  driverCopy = driver;
  v10 = [TKBERTLVRecord dataForTag:6275330];
  v74 = [cardCopy recordsOfObject:v10 error:p_isa];

  if (v74)
  {
    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = sub_1000025CC;
    v95 = sub_1000025DC;
    v96 = 0;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000034B8;
    v90[3] = &unk_100008338;
    v90[4] = &v91;
    [v74 enumerateObjectsUsingBlock:v90];
    v11 = v92[5];
    if (v11 && [v11 length])
    {
      v12 = v92[5];
      v89.receiver = self;
      v89.super_class = PIVToken;
      v13 = [(PIVToken *)&v89 initWithSmartCard:cardCopy AID:dCopy instanceID:v12 tokenDriver:driverCopy];
      if (v13)
      {
        v75 = v13;
        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        v88 = 0;
        v14 = [TKBERTLVRecord dataForTag:6275340];
        v84 = 0;
        v71 = [cardCopy recordsOfObject:v14 error:&v84];
        v15 = v84;

        if (v71)
        {
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_10000354C;
          v83[3] = &unk_100008338;
          v83[4] = &v85;
          [v71 enumerateObjectsUsingBlock:v83];
        }

        else
        {
          v19 = sub_1000021D4(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_10000389C();
          }

          v15 = 0;
        }

        v76 = [NSMutableArray arrayWithCapacity:v86[3] + 4];
        v20 = +[NSBundle mainBundle];
        v21 = [v20 localizedStringForKey:@"PIV_AUTH_CERT" value:&stru_1000083D8 table:0];
        v22 = +[NSBundle mainBundle];
        v23 = [v22 localizedStringForKey:@"PIV_AUTH_KEY" value:&stru_1000083D8 table:0];
        v82 = v15;
        BYTE2(v66) = 0;
        LOWORD(v66) = 257;
        v24 = [PIVToken populateIdentityFromSmartCard:v75 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:cardCopy name:v76 keyTag:6275333 name:v21 sign:154 suitableForLogin:v23 keyManagement:v66 constraint:@"PIN" error:&v82];
        v25 = v82;

        if ((v24 & 1) == 0)
        {
          v27 = sub_1000021D4(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10000390C();
          }

          v25 = 0;
        }

        v28 = +[NSBundle mainBundle];
        v29 = [v28 localizedStringForKey:@"CARD_AUTH_CERT" value:&stru_1000083D8 table:0];
        v30 = +[NSBundle mainBundle];
        v31 = [v30 localizedStringForKey:@"CARD_AUTH_KEY" value:&stru_1000083D8 table:0];
        v81 = v25;
        BYTE2(v67) = 0;
        LOWORD(v67) = 1;
        v32 = [PIVToken populateIdentityFromSmartCard:v75 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:cardCopy name:v76 keyTag:6275329 name:v29 sign:158 suitableForLogin:v31 keyManagement:v67 constraint:&__kCFBooleanTrue error:&v81];
        v33 = v81;

        if ((v32 & 1) == 0)
        {
          v35 = sub_1000021D4(v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_10000397C();
          }

          v33 = 0;
        }

        v36 = +[NSBundle mainBundle];
        v37 = [v36 localizedStringForKey:@"DIG_SIG_CERT" value:&stru_1000083D8 table:0];
        v38 = +[NSBundle mainBundle];
        v39 = [v38 localizedStringForKey:@"DIG_SIG_KEY" value:&stru_1000083D8 table:0];
        v80 = v33;
        BYTE2(v68) = 0;
        LOWORD(v68) = 1;
        v40 = [PIVToken populateIdentityFromSmartCard:v75 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:cardCopy name:v76 keyTag:6275338 name:v37 sign:156 suitableForLogin:v39 keyManagement:v68 constraint:@"PINAlways" error:&v80];
        v41 = v80;

        if ((v40 & 1) == 0)
        {
          v43 = sub_1000021D4(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_1000039EC();
          }

          v41 = 0;
        }

        v44 = +[NSBundle mainBundle];
        v45 = [v44 localizedStringForKey:@"KEY_MGMT_CERT" value:&stru_1000083D8 table:0];
        v46 = +[NSBundle mainBundle];
        v47 = [v46 localizedStringForKey:@"KEY_MGMT_KEY" value:&stru_1000083D8 table:0];
        v79 = v41;
        BYTE2(v69) = 1;
        LOWORD(v69) = 0;
        v48 = [PIVToken populateIdentityFromSmartCard:v75 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:cardCopy name:v76 keyTag:6275339 name:v45 sign:157 suitableForLogin:v47 keyManagement:v69 constraint:@"PIN" error:&v79];
        v49 = v79;

        if ((v48 & 1) == 0)
        {
          v51 = sub_1000021D4(v50);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            sub_100003A5C();
          }

          v49 = 0;
        }

        if (v86[3] >= 1)
        {
          v52 = 0;
          do
          {
            v53 = +[NSBundle mainBundle];
            v54 = [v53 localizedStringForKey:@"RET_KEY_MGMT_CERT" value:&stru_1000083D8 table:0];
            v55 = v52 + 1;
            v56 = [NSString stringWithFormat:v54, v52 + 1];

            v57 = +[NSBundle mainBundle];
            v58 = [v57 localizedStringForKey:@"RET_KEY_MGMT_KEY" value:&stru_1000083D8 table:0];
            v59 = [NSString stringWithFormat:v58, v52 + 1];

            v78 = v49;
            BYTE2(v70) = 1;
            LOWORD(v70) = 0;
            LOBYTE(v58) = [PIVToken populateIdentityFromSmartCard:v75 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:cardCopy name:v76 keyTag:v52 + 6275341 name:v56 sign:v52 + 130 suitableForLogin:v59 keyManagement:v70 constraint:@"PIN" error:&v78];
            v60 = v78;

            if (v58)
            {
              v49 = v60;
            }

            else
            {
              v62 = sub_1000021D4(v61);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                v98 = v52;
                v99 = 2114;
                v100 = v60;
                _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "failed to read retired key management (%ld) identity (%{public}@)", buf, 0x16u);
              }

              v49 = 0;
            }

            ++v52;
          }

          while (v55 < v86[3]);
        }

        if (![v76 count])
        {
          v63 = sub_1000021D4(0);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_100003ACC();
          }
        }

        keychainContents = [(PIVToken *)v75 keychainContents];
        [keychainContents fillWithItems:v76];

        _Block_object_dispose(&v85, 8);
        v13 = v75;
      }

      self = v13;
      p_isa = &self->super.super.super.isa;
    }

    else if (p_isa)
    {
      v16 = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
      *p_isa = v16;
      v17 = sub_1000021D4(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100003B0C();
      }

      p_isa = 0;
    }

    _Block_object_dispose(&v91, 8);
  }

  else
  {
    v18 = sub_1000021D4(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100003B4C();
    }

    p_isa = 0;
  }

  return p_isa;
}

- (id)token:(id)token createSessionWithError:(id *)error
{
  v4 = [[PIVTokenSession alloc] initWithToken:self];

  return v4;
}

@end