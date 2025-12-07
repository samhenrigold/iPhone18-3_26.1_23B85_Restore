void sub_100000FD4(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 processReferenceExtractionRequest:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_100001140(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 compareExistingPatientResourceData:v3 incomingPatientResourceData:v4 error:&v7];
  v6 = v7;

  (*(*(a1 + 56) + 16))();
}

void sub_10000128C(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 processExtractionRequest:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_1000013D8(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 extractAttachmentContentFromFHIRResource:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_100001544(uint64_t a1)
{
  v2 = [*(a1 + 32) FHIRProcessor];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  v5 = [v2 processOptInRequest:v3 redactor:v4 error:&v7];
  v6 = v7;

  (*(*(a1 + 56) + 16))();
}

void sub_100001690(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalData starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v7 = a1[5];
  v8 = a1[7];
  v16 = 0;
  v9 = [v6 preprocessDataInSource:v7 options:v8 error:&v16];
  v10 = v16;
  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalData finished successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_100003040(a1, v11, v10, v15);
  }

  (*(a1[6] + 16))();
}

void sub_10000192C(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalDataFHIRResourceObject starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v7 = a1[5];
  v8 = a1[7];
  v16 = 0;
  v9 = [v6 preprocessFHIRResourceObject:v7 options:v8 error:&v16];
  v10 = v16;
  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_preprocessSignedClinicalDataFHIRResourceObject finished successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_1000030D4(a1, v11, v10, v15);
  }

  (*(a1[6] + 16))();
}

void sub_100001BC8(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_reprocessOriginalRecords starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v7 = a1[5];
  v8 = a1[7];
  v16 = 0;
  v9 = [v6 reprocessOriginalRecords:v7 options:v8 error:&v16];
  v10 = v16;
  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (v9)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_reprocessOriginalRecords finished successfully", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_100003168(a1, v11, v10, v15);
  }

  (*(a1[6] + 16))();
}

void sub_100001E64(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processOriginalSignedClinicalDataRecords starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001FC4;
  v9[3] = &unk_100008210;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v6 processOriginalSignedClinicalDataRecords:v7 options:v8 completion:v9];
}

void sub_100001FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processOriginalSignedClinicalDataRecords finished successfully", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_1000031FC(a1, v7, v5, v11);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000021C0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processSignedClinicalDataContextCollection starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(HDHRSignedClinicalDataHandler);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000231C;
  v8[3] = &unk_100008210;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v6 processContextCollection:v7 completion:v8];
}

void sub_10000231C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (a2)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_processSignedClinicalDataContextCollection finished successfully", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
  {
    sub_100003290(a1, v7, v5, v11);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002518(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  v4 = [v3 substringFromIndex:24];

  _HKInitializeLogging();
  v5 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_indexClinicalDocumentsWithRequest %{public}@ starting", buf, 0x16u);
  }

  v9 = objc_alloc_init(HKClinicalDocumentIndexingRequestHandler);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026CC;
  v12[3] = &unk_100008238;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v4;
  v14 = *(a1 + 48);
  v11 = v4;
  [v9 indexClinicalDocumentsWithRequest:v10 completion:v12];
}

void sub_1000026CC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = a1[5];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_indexClinicalDocumentsWithRequest %{public}@ completed", &v12, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_1000028B0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_fetchSpotlightSearchResultsForQueryString starting", buf, 0xCu);
  }

  v6 = objc_alloc_init(HKClinicalDocumentIndexingRequestHandler);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002A0C;
  v8[3] = &unk_100008260;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v6 fetchSpotlightSearchResultsForQueryString:v7 completion:v8];
}

void sub_100002A0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: remote_fetchSpotlightSearchResultsForQueryString completed", &v11, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100002D04(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100002D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _objc_retain_x1(a1, a2, a3, a4);
}

uint64_t sub_100002D3C()
{

  return objc_opt_class();
}

int main(int argc, const char **argv, const char **envp)
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = +[NSProcessInfo processInfo];
    v6 = [v5 processName];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@ did launch", &v10, 0xCu);
  }

  v7 = +[HDXPCListener serviceListener];
  v8 = [[HDHealthRecordsXPCServiceManager alloc] initWithListener:v7];
  [(HDHealthRecordsXPCServiceManager *)v8 resume];

  return 0;
}

void sub_100002F48(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsXPCService.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_100002FC4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHealthRecordsXPCService.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_100003040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_preprocessSignedClinicalData failed with error: %{public}@", v9, v10, v11, v12);
}

void sub_1000030D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_preprocessSignedClinicalDataFHIRResourceObject failed with error: %{public}@", v9, v10, v11, v12);
}

void sub_100003168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_reprocessOriginalRecords failed with error: %{public}@", v9, v10, v11, v12);
}

void sub_1000031FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_processOriginalSignedClinicalDataRecords failed with error: %{public}@", v9, v10, v11, v12);
}

void sub_100003290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100002D24(a1, a2, a3, a4);
  v5 = sub_100002D3C();
  v6 = NSStringFromClass(v5);
  sub_100002CEC();
  sub_100002D04(&_mh_execute_header, v7, v8, "%{public}@: remote_processSignedClinicalDataContextCollection failed with error: %{public}@", v9, v10, v11, v12);
}