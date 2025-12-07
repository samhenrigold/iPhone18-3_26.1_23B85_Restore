@interface FMDBAADataSource
- (BOOL)passcodeActivationUnlockCertificateRequest:(id *)request withValidityInMins:(int64_t)mins refKey:(__SecKey *)key error:(id *)error;
- (void)activationLockCertificatesWithRequest:(id)request completion:(id)completion;
@end

@implementation FMDBAADataSource

- (BOOL)passcodeActivationUnlockCertificateRequest:(id *)request withValidityInMins:(int64_t)mins refKey:(__SecKey *)key error:(id *)error
{
  v21[0] = &off_10000FA18;
  v20[0] = kMAOptionsBAASCRTAttestation;
  v20[1] = kMAOptionsBAAValidity;
  v9 = [NSNumber numberWithInteger:mins];
  v21[1] = v9;
  v20[2] = kMAOptionsBAAOIDSToInclude;
  v19 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v21[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

  v12 = DeviceIdentityCreateClientCertificateRequest();
  v13 = 0;
  v14 = v13;
  if (v13)
  {
    v15 = sub_100001AC8(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000042DC(v14, v15);
    }

    if (error)
    {
      v16 = v14;
      *error = v14;
    }
  }

  if (request)
  {
    v17 = v12;
    *request = v12;
  }

  if (key)
  {
    *key = 0;
  }

  return v14 != 0;
}

- (void)activationLockCertificatesWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v16[0] = kMAOptionsBAAValidity;
  requestCopy = request;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [requestCopy validityInMinutes]);
  v17[0] = v7;
  v16[1] = kMAOptionsBAASCRTAttestation;
  useSCRT = [requestCopy useSCRT];

  v9 = &off_10000FA30;
  if (useSCRT)
  {
    v9 = &off_10000FA18;
  }

  v17[1] = v9;
  v16[2] = kMAOptionsBAAOIDSToInclude;
  v15 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v17[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  v12 = dispatch_get_global_queue(0, 0);
  v14 = completionCopy;
  v13 = completionCopy;
  DeviceIdentityIssueClientCertificateWithCompletion();
}

@end