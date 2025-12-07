@interface SEABAAManager
+ (id)sharedManager;
- (id)PerformSEABAAWithAttestation:(id)attestation casdCertificate:(id)certificate nonce:(id)nonce OIDs:(id)ds validityInterval:(id)interval error:(id *)error;
@end

@implementation SEABAAManager

+ (id)sharedManager
{
  if (qword_10050CC00 != -1)
  {
    sub_1003AAA84();
  }

  v3 = qword_10050CBF8;

  return v3;
}

- (id)PerformSEABAAWithAttestation:(id)attestation casdCertificate:(id)certificate nonce:(id)nonce OIDs:(id)ds validityInterval:(id)interval error:(id *)error
{
  certificateCopy = certificate;
  nonceCopy = nonce;
  dsCopy = ds;
  intervalCopy = interval;
  attestationCopy = attestation;
  v18 = SESDefaultLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "", buf, 2u);
  }

  v57[0] = attestationCopy;
  sub_10002D244(SESSignatureFixer, v57);
  v19 = v57[0];

  *buf = 0;
  v52 = buf;
  v53 = 0x3032000000;
  v54 = sub_100012BE8;
  v55 = sub_100012BF8;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_100012BE8;
  v49 = sub_100012BF8;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_100012BE8;
  v43 = sub_100012BF8;
  v44 = objc_opt_new();
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100012C00;
  v34[3] = &unk_1004C12F0;
  v36 = &v39;
  v37 = &v45;
  v38 = buf;
  v20 = dispatch_semaphore_create(0);
  v35 = v20;
  sub_1003A9E28(self, v19, certificateCopy, nonceCopy, dsCopy, intervalCopy, v34);
  v21 = dispatch_time(0, 279000000000);
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = v40[5];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100012E30;
    v33[3] = &unk_1004C1318;
    v33[4] = &v45;
    [v22 invoke:v33];
  }

  if (v46[5] && SESInternalVariant())
  {
    v23 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    if ([v23 BOOLForKey:@"debug.allow.cert.failure"])
    {
      hexStringAsData = [@"DEAD" hexStringAsData];
      hexStringAsData2 = [@"DEAD" hexStringAsData];
      v26 = sub_100012D98(SEABAAResponse, hexStringAsData, hexStringAsData2);
      v27 = *(v52 + 5);
      *(v52 + 5) = v26;

      v28 = v46[5];
      v46[5] = 0;
    }
  }

  v29 = *(v52 + 5);
  if (error && !v29)
  {
    *error = SESEnsureError();
    v29 = *(v52 + 5);
  }

  v30 = v29;

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(buf, 8);

  return v30;
}

@end