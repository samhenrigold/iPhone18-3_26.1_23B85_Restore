uint64_t sub_1000015AC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t sub_1000018C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100001AC8(uint64_t a1)
{
  if (qword_1000116E8 != -1)
  {
    sub_100004020();
  }

  v2 = qword_1000116F0;

  return v2;
}

void sub_100001B0C(id a1)
{
  qword_1000116F0 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_100001B50(uint64_t a1)
{
  if (qword_1000116F8 != -1)
  {
    sub_100004034();
  }

  v2 = qword_100011700;

  return v2;
}

void sub_100001B94(id a1)
{
  qword_100011700 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_100001BD8(uint64_t a1)
{
  if (qword_100011708 != -1)
  {
    sub_100004048();
  }

  v2 = qword_100011710;

  return v2;
}

void sub_100001C1C(id a1)
{
  qword_100011710 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_100001C60(uint64_t a1)
{
  if (qword_100011718 != -1)
  {
    sub_10000405C();
  }

  v2 = qword_100011720;

  return v2;
}

void sub_100001CA4(id a1)
{
  qword_100011720 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_100001CE8(uint64_t a1)
{
  if (qword_100011728 != -1)
  {
    sub_100004070();
  }

  v2 = qword_100011730;

  return v2;
}

void sub_100001D2C(id a1)
{
  qword_100011730 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_100001D70(uint64_t a1)
{
  if (qword_100011738 != -1)
  {
    sub_100004084();
  }

  v2 = qword_100011740;

  return v2;
}

void sub_100001DB4(id a1)
{
  qword_100011740 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_100001DF8(uint64_t a1)
{
  if (qword_100011748 != -1)
  {
    sub_100004098();
  }

  v2 = qword_100011750;

  return v2;
}

void sub_100001E3C(id a1)
{
  qword_100011750 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_100001E80(uint64_t a1)
{
  if (qword_100011758 != -1)
  {
    sub_1000040AC();
  }

  v2 = qword_100011760;

  return v2;
}

void sub_100001EC4(id a1)
{
  qword_100011760 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_100001F08(uint64_t a1)
{
  if (qword_100011768 != -1)
  {
    sub_1000040C0();
  }

  v2 = qword_100011770;

  return v2;
}

void sub_100001F4C(id a1)
{
  qword_100011770 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_100001F90(uint64_t a1)
{
  if (qword_100011778 != -1)
  {
    sub_1000040D4();
  }

  v2 = qword_100011780;

  return v2;
}

void sub_100001FD4(id a1)
{
  qword_100011780 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_100002018(uint64_t a1)
{
  if (qword_100011788 != -1)
  {
    sub_1000040E8();
  }

  v2 = qword_100011790;

  return v2;
}

void sub_10000205C(id a1)
{
  qword_100011790 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_1000020A0(uint64_t a1)
{
  if (qword_100011798 != -1)
  {
    sub_1000040FC();
  }

  v2 = qword_1000117A0;

  return v2;
}

void sub_1000020E4(id a1)
{
  qword_1000117A0 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_100002128(uint64_t a1)
{
  if (qword_1000117A8 != -1)
  {
    sub_100004110();
  }

  v2 = qword_1000117B0;

  return v2;
}

void sub_10000216C(id a1)
{
  qword_1000117B0 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_1000021B0(uint64_t a1)
{
  if (qword_1000117B8 != -1)
  {
    sub_100004124();
  }

  v2 = qword_1000117C0;

  return v2;
}

void sub_1000021F4(id a1)
{
  qword_1000117C0 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_100002238(uint64_t a1)
{
  if (qword_1000117C8 != -1)
  {
    sub_100004138();
  }

  v2 = qword_1000117D0;

  return v2;
}

void sub_10000227C(id a1)
{
  qword_1000117D0 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_1000022C0(uint64_t a1)
{
  if (qword_1000117D8 != -1)
  {
    sub_10000414C();
  }

  v2 = qword_1000117E0;

  return v2;
}

void sub_100002304(id a1)
{
  qword_1000117E0 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_100002348(uint64_t a1)
{
  if (qword_1000117E8 != -1)
  {
    sub_100004160();
  }

  v2 = qword_1000117F0;

  return v2;
}

void sub_10000238C(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_1000117F0 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_1000025B0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_100001AC8(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v38 = v7;
    v39 = 2112;
    v40 = a3;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FMDActivationLockIdentityEncoder got certs %@, keyRef %@, error %@", buf, 0x20u);
  }

  if (v8)
  {
    v11 = v8;
    v12 = 0;
    goto LABEL_28;
  }

  v13 = sub_100001AC8(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FMDActivationLockIdentityEncoder computing signature.", buf, 2u);
  }

  v14 = [*(a1 + 32) signatureDataSource];
  v15 = [*(a1 + 40) dataToSign];
  v34 = 0;
  v16 = [v14 passcodeActivationUnlockSignatureForPayload:v15 usingKey:a3 error:&v34];
  v17 = v34;

  v19 = sub_100001AC8(v18);
  v20 = v19;
  if (v17)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100004174();
    }

    v11 = v17;
    v12 = 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "FMDActivationLockIdentityEncoder computing certificates", buf, 2u);
  }

  +[NSMutableArray array];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100002A20;
  v21 = v32[3] = &unk_10000CF48;
  v33 = v21;
  [v7 enumerateObjectsUsingBlock:v32];
  v35 = @"certs";
  v36 = v21;
  v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v31 = 0;
  v23 = [NSJSONSerialization dataWithJSONObject:v22 options:0 error:&v31];
  v24 = v31;
  v25 = v24;
  v29 = v23;
  v30 = v22;
  if (v24)
  {
    v11 = v24;
    v26 = sub_100001AC8(v11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1000041E8();
    }
  }

  else
  {
    if (v23)
    {
      v27 = sub_100001AC8(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v22;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FMDActivationLockIdentityEncoder final attestation %@", buf, 0xCu);
      }

      v26 = [*(a1 + 32) _compressData:v23];
      if (v26)
      {
        v11 = 0;
      }

      else
      {
        v11 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.FMDActivationLockIdentityEncoder" code:2 userInfo:0];
      }

      v12 = [[FMDBAAAttestation alloc] initWithAttestation:v26 signature:v16];
      goto LABEL_26;
    }

    v11 = [NSError errorWithDomain:@"com.apple.icloud.findmydevice.FMDActivationLockIdentityEncoder" code:1 userInfo:0];
    v26 = sub_100001AC8(v11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000425C();
    }
  }

  v12 = 0;
LABEL_26:

LABEL_27:
LABEL_28:
  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))(v28, v12, v11);
  }
}

void sub_100002A20(uint64_t a1, SecCertificateRef certificate)
{
  v4 = SecCertificateCopyData(certificate);
  v3 = [(__CFData *)v4 base64EncodedStringWithOptions:0];
  [*(a1 + 32) fm_safeAddObject:v3];
}

uint64_t sub_10000305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a2);
  }

  return result;
}

void sub_100003DD4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t start(uint64_t a1)
{
  v1 = sub_100001AC8(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "FindMyDeviceIdentityXPCService started", v6, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(FindMyDeviceIdentityXPCServer);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_100003EB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_100003F2C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDSecuritySignatureDataSource signature error : %@", &v3, 0xCu);
}

void sub_100003FA8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FMDSecuritySignatureDataSource passcodeActivationUnlockSignatureForPayload: missing required argument: %@", &v2, 0xCu);
}

void sub_1000042DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating baa request : %@", &v2, 0xCu);
}