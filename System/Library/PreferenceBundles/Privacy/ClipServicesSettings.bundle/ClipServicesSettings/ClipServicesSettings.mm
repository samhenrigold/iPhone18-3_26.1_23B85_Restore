void sub_1CD8(id a1)
{
  v3 = objc_alloc_init(AMSMutableBagKeySet);
  [v3 addBagKey:@"app-clips-report-problem" valueType:6];
  [AMSBagKeySet registerBagKeySet:v3 forProfile:@"clipserviced" profileVersion:@"1"];
  v1 = [AMSBag bagForProfile:@"clipserviced" profileVersion:@"1"];
  v2 = qword_1A050;
  qword_1A050 = v1;
}

uint64_t sub_1F58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1F70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2078;
  block[3] = &unk_14708;
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_group_leave(*(*(a1 + 32) + 32));
}

void sub_2078(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 24);

  objc_storeStrong(v3, v2);
}

void sub_20C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2168;
  v5[3] = &unk_14758;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
  dispatch_group_leave(*(*(a1 + 32) + 32));
}

uint64_t sub_2174(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_23B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSUserDefaults cps_clipServicesDefaults];
  v8 = [v7 cps_forceReportProblemErrorNoDeveloperSupportURL];

  if (v8)
  {
    v11 = CPSErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = @"Unable to obtain developer support URL (forced for testing).";
    v12 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v13 = [NSError errorWithDomain:v11 code:1 userInfo:v12];

    v6 = v13;
  }

  if (v6)
  {
    v14 = sub_59B0(v9, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_9E4C();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = [v5 responseDataItems];
    v16 = [v15 firstObject];

    v17 = [v16 safari_dictionaryForKey:@"attributes"];
    v18 = [v17 safari_dictionaryForKey:@"platformAttributes"];
    v19 = [v18 safari_dictionaryForKey:@"ios"];

    v20 = [v19 safari_stringForKey:@"supportURLForLanguage"];
    v21 = [NSURL URLWithString:v20];
    v23 = sub_59B0(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v21;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "RAP: Obtained developer support URL: %@", &v24, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_2750(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = +[NSUserDefaults cps_clipServicesDefaults];
  v9 = [v8 cps_forceReportProblemErrorFetchProblemTypes];

  if (v9)
  {
    v12 = CPSErrorDomain;
    v46 = NSLocalizedDescriptionKey;
    v47 = @"Unable to obtain bag values (forced for testing).";
    v13 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v14 = [NSError errorWithDomain:v12 code:1 userInfo:v13];

    v7 = v14;
  }

  v15 = sub_59B0(v10, v11);
  v16 = v15;
  if (v7)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_9EB4();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v37 = a1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "RAP: Obtained problem types: %@", buf, 0xCu);
    }

    v36 = v6;
    [v6 safari_arrayForKey:{@"types", 0}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v42 = 0u;
    v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v22 = [v21 safari_stringForKey:@"name"];
          v23 = [v21 safari_stringForKey:@"nameUpperCase"];
          v24 = [v21 safari_stringForKey:@"label"];
          v25 = [v21 safari_numberForKey:@"id"];
          v26 = [v21 safari_BOOLForKey:@"offerDeveloperWebsite"];
          if (v22)
          {
            v27 = v23 == 0;
          }

          else
          {
            v27 = 1;
          }

          if (!v27 && v24 != 0 && v25 != 0)
          {
            v30 = [[CPSReportProblemProblemType alloc] initWithLocalizedTitle:v22 localizedUpperCaseTitle:v23 label:v24 identifier:v25 offerDeveloperWebsite:v26];
            if (v30)
            {
              [*(v37 + 32) addObject:v30];
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v18);
    }

    v6 = v36;
    v31 = [v36 safari_stringForKey:@"url"];
    v32 = [NSURL URLWithString:v31];
    v33 = *(v37 + 40);
    if (v33)
    {
      v34 = [*(v37 + 32) copy];
      (*(v33 + 16))(v33, v34, v32, 0);
    }

    v7 = v35;
  }
}

void sub_2C10(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  v4 = [v3 pageURL];

  v5 = objc_alloc_init(AMSMetricsIdentifier);
  v6 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.ClipServices.clipserviced"];
  [v5 setClientInfo:v6];

  [v5 setDuration:2592000.0];
  v57[0] = @"contentid";
  v7 = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 16)];
  v8 = [v7 stringValue];
  v57[1] = @"bundleid";
  v9 = *(*(a1 + 32) + 8);
  v58[0] = v8;
  v58[1] = v9;
  v57[2] = @"metricsidentifier";
  v45 = v5;
  v10 = [v5 generateIdentifier];
  v58[2] = v10;
  v57[3] = @"invocationurl";
  v46 = v4;
  v11 = [v4 absoluteString];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_14F50;
  }

  v58[3] = v13;
  v57[4] = @"concernid";
  v14 = [*(a1 + 40) identifier];
  v15 = [v14 stringValue];
  v16 = v15;
  v47 = a1;
  v17 = *(a1 + 48);
  if (!v17)
  {
    v17 = &stru_14F50;
  }

  v58[4] = v15;
  v58[5] = v17;
  v57[5] = @"usernote";
  v57[6] = @"version";
  v58[6] = @"report";
  v18 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:7];

  v21 = sub_59B0(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v18;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "RAP: Asked to submit problem with parameters: %@", buf, 0xCu);
  }

  v22 = [NSMutableURLRequest requestWithURL:*(*(a1 + 32) + 24)];
  [v22 setHTTPMethod:@"POST"];
  [v22 setCachePolicy:0];
  [v22 setTimeoutInterval:10.0];
  v44 = v22;
  [v22 setAllHTTPHeaderFields:&off_15A28];
  v23 = [v18 allKeys];
  v24 = [v23 mutableCopy];

  v25 = objc_alloc_init(NSMutableString);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = v18;
  v27 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v50 + 1) + 8 * i);
        [v24 removeObject:v31];
        v32 = [v26 objectForKeyedSubscript:v31];
        v33 = +[NSCharacterSet URLQueryAllowedCharacterSet];
        v34 = [v32 stringByAddingPercentEncodingWithAllowedCharacters:v33];
        [v25 appendFormat:@"%@=%@", v31, v34];

        if ([v24 count])
        {
          [v25 appendString:@"&"];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v28);
  }

  v35 = [v25 dataUsingEncoding:4];
  [v44 setHTTPBody:v35];

  v36 = [AMSURLRequestEncoder alloc];
  v37 = [objc_opt_class() sharedAMSBag];
  v38 = [v36 initWithBag:v37];

  [v38 setAnisetteType:2];
  [v38 setMescalType:0];
  [v38 setIncludeClientVersions:0];
  v39 = +[ACAccountStore ams_sharedAccountStore];
  v40 = [v39 ams_activeiTunesAccount];
  [v38 setAccount:v40];

  v41 = [v38 requestByEncodingRequest:v44 parameters:0];
  v43 = sub_59B0(v41, v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v44;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "RAP: Encoding request: %@", buf, 0xCu);
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_31B0;
  v48[3] = &unk_14870;
  v49 = *(v47 + 56);
  [v41 addFinishBlock:v48];
}

void sub_31B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = sub_59B0(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_9F1C();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_33A0;
    block[3] = &unk_14820;
    v16 = *(a1 + 32);
    v15 = v6;
    dispatch_async(&_dispatch_main_q, block);

    v10 = v16;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "RAP: Submitting encoded request: %@", buf, 0xCu);
    }

    v10 = +[AMSURLSession defaultSession];
    v11 = [v10 dataTaskPromiseWithRequest:v5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_33C0;
    v12[3] = &unk_14848;
    v13 = *(a1 + 32);
    [v11 addFinishBlock:v12];
  }
}

uint64_t sub_33A0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_33C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSUserDefaults cps_clipServicesDefaults];
  v8 = [v7 cps_forceReportProblemErrorUnableToSubmitResponse];

  if (v8)
  {
    v11 = CPSErrorDomain;
    v25 = NSLocalizedDescriptionKey;
    v26 = @"Unable to submit response (forced for testing).";
    v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = [NSError errorWithDomain:v11 code:1 userInfo:v12];

    v6 = v13;
  }

  v14 = sub_59B0(v9, v10);
  v15 = v14;
  if (v6)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_9F84();
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v5 response];
    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "RAP: Submitted request. Result response: %@", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_35DC;
  v20[3] = &unk_14820;
  v18 = *(a1 + 32);
  v21 = v6;
  v22 = v18;
  v19 = v6;
  dispatch_async(&_dispatch_main_q, v20);
}

uint64_t sub_35DC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_37EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_3ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_3D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ASCLockup alloc];
  v5 = *(a1 + 40);
  v6 = ASCLockupKindApp;
  v7 = [ASCArtwork alloc];
  v12 = [v7 initWithImage:v3 decoration:ASCArtworkDecorationNone];

  v8 = [*(a1 + 48) cps_appClipApplicationRecord];
  v9 = [v8 localizedName];
  v10 = _CPSLocalizedString();
  v11 = [v4 initWithID:v5 kind:v6 metrics:0 icon:v12 heading:0 title:v9 subtitle:v10 ageRating:0 offer:0];
  [*(*(a1 + 32) + 120) setLockup:v11];
}

Class sub_4068(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1A068)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_4194;
    v3[4] = &unk_14920;
    v3[5] = v3;
    v4 = off_14908;
    v5 = 0;
    qword_1A068 = _sl_dlopen();
  }

  if (!qword_1A068)
  {
    sub_A168(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ISImageDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_A0EC();
  }

  qword_1A060 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_4194(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1A068 = result;
  return result;
}

void sub_4670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_469C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) problemTypes];
  [*(*(a1 + 32) + 8) setProblemTypes:v4];

  [*(a1 + 40) stopAnimating];
  if (_UISolariumEnabled())
  {
    v5 = [*(*(a1 + 32) + 8) navigationItem];
    [v5 setRightBarButtonItem:0];
  }

  if (v3)
  {
    v6 = _CPSLocalizedString();
    v7 = _CPSLocalizedString();
    v8 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_47FC;
    v9[3] = &unk_14948;
    v9[4] = v8;
    [v8 showAlertForError:v3 withTitle:v6 message:v7 completion:v9];
  }
}

uint64_t sub_47FC(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_4820(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_48C8;
    v5[3] = &unk_14970;
    v6 = v3;
    v7 = WeakRetained;
    [WeakRetained signInToAppStoreIfNeededWithCompletion:v5];
  }
}

void sub_48C8(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_497C;
  block[3] = &unk_14708;
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_497C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    if ([*(a1 + 40) offerDeveloperWebsite] && (objc_msgSend(*(*(a1 + 48) + 16), "developerSupportURL"), v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
    {
      v3 = *(a1 + 48);
      v6 = [v3[2] developerSupportURL];
      [v3 showVisitAppSupportForDeveloperURL:v6 problemType:*(a1 + 40)];
    }

    else
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);

      [v4 showConcernDetailVCWithProblemType:v5];
    }
  }
}

void sub_4A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained finishAction];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 finishAction];
      v3[2]();

      WeakRetained = v4;
    }
  }
}

void sub_4C28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = sub_59B0(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_A1E8(v8, v9);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

void sub_4DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_4E18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained navigationItem];
  v7 = [v6 rightBarButtonItem];

  v8 = [[UIBarButtonItem alloc] initWithCustomView:v4];
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 navigationItem];
  [v10 setRightBarButtonItem:v8];

  [v4 startAnimating];
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 16);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_5008;
  v22 = &unk_14A10;
  v13 = v4;
  v23 = v13;
  objc_copyWeak(&v26, (a1 + 48));
  v14 = v7;
  v15 = *(a1 + 32);
  v24 = v14;
  v25 = v15;
  [v12 submitResponseForProblemType:v11 userNote:v3 completion:&v19];
  v16 = [CPSAnalyticsLogger sharedLogger:v19];
  v17 = *(*(a1 + 32) + 24);
  v18 = [*(a1 + 40) label];
  [v16 recordReportProblemStepCompletedWithBundleID:v17 problemLabel:v18 event:5];

  objc_destroyWeak(&v26);
}

uint64_t sub_5008(uint64_t a1, void *a2)
{
  v9 = a2;
  [*(a1 + 32) stopAnimating];
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained navigationItem];
  [v5 setRightBarButtonItem:v3];

  if (v9)
  {
    v6 = _CPSLocalizedString();
    [*(a1 + 48) showAlertForError:v9 withTitle:v6 message:0 completion:0];
  }

  else
  {
    v7 = *(*(a1 + 48) + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  return _objc_release_x1();
}

void sub_5260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5280(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 2) submitResponseForProblemType:*(a1 + 32) userNote:0 completion:0];
    if (a2)
    {
      v6 = +[CPSAnalyticsLogger sharedLogger];
      v7 = v5[3];
      v8 = [*(a1 + 32) label];
      [v6 recordReportProblemStepCompletedWithBundleID:v7 problemLabel:v8 event:3];

      v9 = +[UIApplication sharedApplication];
      v10 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_53D0;
      v12[3] = &unk_14A60;
      v12[4] = v5;
      [v9 openURL:v10 options:&__NSDictionary0__struct completionHandler:v12];
    }

    else
    {
      v11 = v5[4];
      if (v11)
      {
        (*(v11 + 16))();
      }
    }
  }
}

uint64_t sub_53D0(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_552C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_59B0(uint64_t a1, uint64_t a2)
{
  if (qword_1A078 != -1)
  {
    sub_A260();
  }

  return qword_1A070;
}

void sub_59E8(id a1)
{
  qword_1A070 = os_log_create("com.apple.ClipServices.settings", "ClipServicesSettings");

  _objc_release_x1();
}

uint64_t sub_6030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6048(uint64_t a1)
{
  if (([*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier) cps_isAppClipInstalled] & 1) == 0)
  {
    [*(a1 + 32) _popAndShowAllAppClips];
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_61E0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = +[CPSAnalyticsLogger sharedLogger];
    [v5 didManuallyDeleteClip:*(a1 + 32) withEvent:1];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6294;
    block[3] = &unk_14948;
    block[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_6C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_6C98(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ClipServicesSettings"];

  return v3;
}

Class sub_6DC0(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1A088)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_6EEC;
    v3[4] = &unk_14920;
    v3[5] = v3;
    v4 = off_14B18;
    v5 = 0;
    qword_1A088 = _sl_dlopen();
  }

  if (!qword_1A088)
  {
    sub_A2F0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("OBTextWelcomeController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_A274();
  }

  qword_1A080 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6EEC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1A088 = result;
  return result;
}

uint64_t sub_78B0(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
    v4 = [v3 bundleIdentifier];
    if ([*(a1 + 32) _isDimSumApp:v4])
    {
      v5 = [[PSThirdPartyApp alloc] initWithApplicationProxy:v3];
      [v5 load];
      [*(a1 + 40) addObject:v5];
    }
  }

  return _objc_release_x1();
}

id sub_7DFC(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _didClearAllAppClips];
}

void sub_80D4(id *a1)
{
  if (![a1[4] numberOfRowsInSection:{objc_msgSend(a1[5], "section")}])
  {
    v2 = [a1[6] specifiers];
    v3 = [v2 specifierForID:@"CLEAR_CLIP_HISTORY"];

    [v3 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    [a1[6] reloadSpecifier:v3];
  }
}

void sub_8364(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) bundleIdentifier];
        [v7 reloadSpecifierID:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

unint64_t sub_98A8()
{
  result = qword_1A010;
  if (!qword_1A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A010);
  }

  return result;
}

uint64_t sub_9918()
{
  sub_A460();
  __chkstk_darwin();
  v0 = sub_A440();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A4D0();
  sub_A4C0();
  sub_A4B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_9D20(0, &qword_1A028, &off_142E8);
  sub_A450();
  sub_A430();
  sub_A470();
  sub_9D20(0, &qword_1A030, NSBundle_ptr);
  if (!sub_A4E0())
  {
    v4 = [objc_opt_self() mainBundle];
  }

  v5 = sub_A480();
  v7 = v6;
  v9 = v8;
  sub_9CC8();
  sub_A490();
  sub_9D68(v5, v7, v9 & 1);

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_9BD8()
{
  sub_9C80(&qword_1A018, &unk_D890);
  sub_A440();
  sub_9CC8();
  swift_getOpaqueTypeConformance2();
  return sub_A4A0();
}

uint64_t sub_9C80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_9CC8()
{
  result = qword_1A020;
  if (!qword_1A020)
  {
    sub_A440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A020);
  }

  return result;
}

uint64_t sub_9D20(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_9D68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_9D8C()
{
  result = qword_1A038;
  if (!qword_1A038)
  {
    sub_9DF0(&unk_1A040, &qword_D8B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A038);
  }

  return result;
}

uint64_t sub_9DF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_A030(uint64_t a1, NSObject *a2)
{
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "The app clip %{sensitive}@ does not have a store item identifier and is not a TestFight app", &v2, 0xCu);
}

void sub_A0EC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getISImageDescriptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSClipStoreTableViewCell.m" lineNumber:15 description:{@"Unable to find class %s", "ISImageDescriptor"}];

  __break(1u);
}

void sub_A168(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *IconServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSClipStoreTableViewCell.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void sub_A1E8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "RAP: Unable to sign in to app store: %@", &v2, 0xCu);
}

void sub_A274()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getOBTextWelcomeControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CPSAboutViewController.m" lineNumber:11 description:{@"Unable to find class %s", "OBTextWelcomeController"}];

  __break(1u);
}

void sub_A2F0(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CPSAboutViewController.m" lineNumber:10 description:{@"%s", *a1}];

  __break(1u);
}

void sub_A370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v7 = 138740227;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unable to obtain the application record for %{sensitive}@ with error %{public}@", &v7, 0x16u);
}