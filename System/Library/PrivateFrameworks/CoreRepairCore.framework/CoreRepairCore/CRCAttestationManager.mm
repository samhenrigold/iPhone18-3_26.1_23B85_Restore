@interface CRCAttestationManager
- (BOOL)sendCertIssueRequestWith:(id)with serverCertResponse:(id *)response error:(id *)error;
- (BOOL)transformServerCertResponseUsing:(id)using serverCertResponseArray:(id *)array error:(id *)error;
@end

@implementation CRCAttestationManager

void __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a4);
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  if (v10)
  {
    v11 = handleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_cold_1();
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  if (!v8)
  {
    v12 = handleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_cold_2();
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v13 = handleForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v8;
    _os_log_impl(&dword_1CEDC5000, v13, OS_LOG_TYPE_DEFAULT, "Data:%@", buf, 0xCu);
  }

  if (v9)
  {
    v27 = v10;
    v28 = v9;
    v29 = a1;
    v30 = v8;
    v14 = v9;
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v14;
      _os_log_impl(&dword_1CEDC5000, v15, OS_LOG_TYPE_DEFAULT, "Body:%@", buf, 0xCu);
    }

    v26 = v14;
    v16 = [v14 allHeaderFields];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = [v16 allKeys];
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          v23 = handleForCategory(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v16 valueForKey:v22];
            *buf = 138412290;
            v37 = v24;
            _os_log_impl(&dword_1CEDC5000, v23, OS_LOG_TYPE_DEFAULT, "value:%@", buf, 0xCu);
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v19);
    }

    a1 = v29;
    v8 = v30;
    v10 = v27;
    v9 = v28;
  }

  else
  {
    v25 = handleForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_cold_3();
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  dispatch_group_leave(*(*(a1[7] + 8) + 40));
}

uint64_t __71__CRCAttestationManager_sendChallengeRequestWith_serverResponse_error___block_invoke_225(uint64_t a1)
{
  dispatch_group_enter(*(*(*(a1 + 32) + 8) + 40));
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 resume];
}

- (BOOL)transformServerCertResponseUsing:(id)using serverCertResponseArray:(id *)array error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  usingCopy = using;
  v8 = [@"-----BEGIN CERTIFICATE-----" mutableCopy];
  v9 = [@"-----BEGIN CERTIFICATE-----" mutableCopy];
  v36 = objc_opt_new();
  v37 = usingCopy;
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:usingCopy encoding:4];
  v11 = [v10 componentsSeparatedByString:@"-----BEGIN CERTIFICATE-----"];
  v12 = v11;
  if (v11 && [v11 count] == 3)
  {
    arrayCopy = array;
    v13 = [v12 objectAtIndexedSubscript:1];
    [v8 appendString:v13];

    v14 = [v12 objectAtIndexedSubscript:2];
    [v9 appendString:v14];

    [v8 dataUsingEncoding:4];
    v15 = SecCertificateCreateWithPEM();
    [v9 dataUsingEncoding:4];
    v16 = SecCertificateCreateWithPEM();
    v17 = handleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v15;
      _os_log_impl(&dword_1CEDC5000, v17, OS_LOG_TYPE_DEFAULT, "CAA leafRef : %@", buf, 0xCu);
    }

    v18 = handleForCategory(0);
    v19 = v36;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v16;
      _os_log_impl(&dword_1CEDC5000, v18, OS_LOG_TYPE_DEFAULT, "CAA intermediateRef: %@", buf, 0xCu);
    }

    if (v15 && v16)
    {
      [v36 addObject:v15];

      [v36 addObject:v16];
    }

    if (arrayCopy)
    {
      v20 = v36;
      v21 = 0;
      *arrayCopy = v36;
    }

    else
    {
      v21 = 0;
    }

    v32 = 1;
    if (!error)
    {
      goto LABEL_16;
    }

LABEL_15:
    v33 = v21;
    *error = v21;
    goto LABEL_16;
  }

  v22 = v10;
  v23 = v9;
  v24 = v8;
  errorCopy = error;
  v26 = handleForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [CRCAttestationManager transformServerCertResponseUsing:serverCertResponseArray:error:];
  }

  v27 = MEMORY[0x1E696ABC0];
  v38 = *MEMORY[0x1E696A578];
  v28 = MEMORY[0x1E696AEC0];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v37 encoding:4];
  v30 = [v28 stringWithFormat:@"CAA attestation failed:%@", v29];
  v39 = v30;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v21 = [v27 errorWithDomain:@"com.apple.corerepair" code:-38 userInfo:v31];

  v32 = 0;
  error = errorCopy;
  v8 = v24;
  v9 = v23;
  v10 = v22;
  v19 = v36;
  if (error)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v32;
}

- (BOOL)sendCertIssueRequestWith:(id)with serverCertResponse:(id *)response error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v8 = [CRFDRBaseDeviceHandler isFDRDataClassSupported:@"ChMf"];
  v9 = [MEMORY[0x1E695DFF8] URLWithString:@"https://sklaxm.apple.com/axiom/components/attest"];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__2;
  v63 = __Block_byref_object_dispose__2;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__2;
  v57 = __Block_byref_object_dispose__2;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v10 = dispatch_get_global_queue(0, 0);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__2;
  v41 = __Block_byref_object_dispose__2;
  v42 = dispatch_group_create();
  if (!MGGetBoolAnswer())
  {
    v12 = 0;
    goto LABEL_10;
  }

  v11 = objc_alloc(MEMORY[0x1E695E000]);
  v12 = [v11 persistentDomainForName:@"com.apple.corerepair"];

  v13 = [v12 objectForKeyedSubscript:@"ServerEnvironment"];
  v14 = [v13 isEqualToString:@"DEV"];

  if (v14)
  {
    v15 = @"http://localhost:8080/axiom/components/attest";
  }

  else
  {
    v16 = [v12 objectForKeyedSubscript:@"ServerEnvironment"];
    v17 = [v16 isEqualToString:@"UAT"];

    if (v17)
    {
      v15 = @"https://ma-axiom-uat.corp.apple.com/axiom/components/attest";
    }

    else
    {
      v18 = [v12 objectForKeyedSubscript:@"ServerEnvironment"];
      v19 = [v18 isEqualToString:@"STG"];

      if (!v19)
      {
        goto LABEL_10;
      }

      v15 = @"https://axiom-stg.corp.apple.com/axiom/components/attest";
    }
  }

  v20 = [MEMORY[0x1E695DFF8] URLWithString:v15];

  v9 = v20;
LABEL_10:
  if (v8)
  {
    v21 = [MEMORY[0x1E695DFF8] URLWithString:@"https://axiom-stg.corp.apple.com/axiom/components/attest"];

    v9 = v21;
  }

  v22 = [MEMORY[0x1E696AD68] requestWithURL:v9 cachePolicy:0 timeoutInterval:120.0];
  [v22 setHTTPMethod:@"POST"];
@end