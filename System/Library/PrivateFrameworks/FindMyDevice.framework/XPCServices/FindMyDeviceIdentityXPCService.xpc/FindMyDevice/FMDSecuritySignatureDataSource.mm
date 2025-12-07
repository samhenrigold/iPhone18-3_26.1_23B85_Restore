@interface FMDSecuritySignatureDataSource
- (id)passcodeActivationUnlockSignatureForPayload:(id)payload usingKey:(__SecKey *)key error:(id *)error;
@end

@implementation FMDSecuritySignatureDataSource

- (id)passcodeActivationUnlockSignatureForPayload:(id)payload usingKey:(__SecKey *)key error:(id *)error
{
  payloadCopy = payload;
  v8 = payloadCopy;
  if (payloadCopy)
  {
    if (key)
    {
      v9 = sub_100001AC8(payloadCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDSecuritySignatureDataSource signing payload.", &v18, 2u);
      }

      v18 = 0;
      Signature = SecKeyCreateSignature(key, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v8, &v18);
      v11 = Signature;
      if (v18)
      {
        v12 = sub_100001AC8(Signature);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100003F2C(&v18, v12);
        }

        if (error)
        {
          *error = v18;
        }
      }

      goto LABEL_17;
    }

    v13 = @"key";
  }

  else
  {
    v13 = @"payload";
  }

  v14 = sub_100001AC8(payloadCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100003FA8(v13, v14);
  }

  if (error)
  {
    v15 = kFindMyDeviceIdentityXPCInterfaceErrorDomain;
    v19 = @"kFMDSecuritySignatureDataSourceErrorMissingField";
    v20 = v13;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *error = [NSError errorWithDomain:v15 code:1 userInfo:v16];
  }

  v11 = 0;
LABEL_17:

  return v11;
}

@end