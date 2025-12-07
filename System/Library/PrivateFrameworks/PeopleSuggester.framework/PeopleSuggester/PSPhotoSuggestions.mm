@interface PSPhotoSuggestions
@end

@implementation PSPhotoSuggestions

void __39___PSPhotoSuggestions_sharedMADService__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v1 = getMADServiceClass_softClass_0;
  v8 = getMADServiceClass_softClass_0;
  if (!getMADServiceClass_softClass_0)
  {
    MediaAnalysisServicesLibraryCore_0();
    v6[3] = objc_getClass("MADService");
    getMADServiceClass_softClass_0 = v6[3];
    v1 = v6[3];
  }

  v2 = v1;
  _Block_object_dispose(&v5, 8);
  v3 = [v1 service];
  v4 = sharedMADService__pasExprOnceResult_0;
  sharedMADService__pasExprOnceResult_0 = v3;

  objc_autoreleasePoolPop(v0);
}

void __49___PSPhotoSuggestions_allOutstandingRequestsLock__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E69C5D60]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];
  v4 = allOutstandingRequestsLock__pasExprOnceResult;
  allOutstandingRequestsLock__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

void __123___PSPhotoSuggestions_mdPersonIDsOfPeopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_254(uint64_t a1, uint64_t a2, void *a3)
{
  v86[2] = *MEMORY[0x1E69E9840];
  v45 = a3;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v5 = +[_PSPhotoSuggestions allOutstandingRequestsLock];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_2;
  v64[3] = &unk_1E7C26E30;
  v64[4] = &v66;
  v65 = a2;
  [v5 runWithLockAcquired:v64];

  if ((v67[3] & 1) == 0)
  {
    goto LABEL_47;
  }

  if (v45)
  {
    if ([v45 isEqual:*(a1 + 56)])
    {
      v6 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B5ED1000, v6, OS_LOG_TYPE_DEFAULT, "Media Analysis request was cancelled (due to timeout or other reasons)", buf, 2u);
      }

      v7 = *(a1 + 40);
      v79 = @"MADRequestError";
      obj = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(a1 + 56)];
      v80 = obj;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      [v7 addAttributes:v8];
      goto LABEL_42;
    }

    v28 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [v45 localizedDescription];
      __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_254_cold_1(v29, v78, v28);
    }

    v30 = *(a1 + 40);
    v76 = @"MADRequestError";
    v31 = MEMORY[0x1E696AEC0];
    obj = [v45 localizedDescription];
    v8 = [v31 stringWithFormat:@"%@", obj];
    v77 = v8;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    [v30 addAttributes:v32];
  }

  else
  {
    obj = [*(a1 + 32) results];
    v9 = +[_PSLogging generalChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [obj count];
      *buf = 134217984;
      *&buf[4] = v10;
      _os_log_impl(&dword_1B5ED1000, v9, OS_LOG_TYPE_DEFAULT, "Got results back from MAD, fetched %tu results in photo", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    v85[0] = @"MADRequestID";
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
    v85[1] = @"MADResults_count";
    v86[0] = v12;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(obj, "count")];
    v86[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
    [v11 addAttributes:v14];

    if (![obj count])
    {
      goto LABEL_43;
    }

    v8 = objc_opt_new();
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = obj;
    v15 = [obj countByEnumeratingWithState:&v60 objects:v84 count:16];
    if (v15)
    {
      LODWORD(v50) = 0;
      v47 = *v61;
      do
      {
        v52 = 0;
        v48 = v15;
        do
        {
          if (*v61 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v60 + 1) + 8 * v52);
          v16 = [v51 resultItems];
          v49 = [v16 count];

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v17 = [v51 resultItems];
          v18 = [v17 countByEnumeratingWithState:&v56 objects:v83 count:16];
          if (v18)
          {
            v19 = *v57;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v57 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v56 + 1) + 8 * i);
                if (*(a1 + 80) == 1)
                {
                  [*(*(&v56 + 1) + 8 * i) mdID];
                }

                else
                {
                  [*(*(&v56 + 1) + 8 * i) personIdentifier];
                }
                v22 = ;
                if (v22)
                {
                  [v8 addObject:v22];
                  v23 = +[_PSLogging generalChannel];
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    [v21 confidence];
                    v25 = v24;
                    v26 = [v21 verified];
                    *buf = 138478339;
                    *&buf[4] = v22;
                    *&buf[12] = 2048;
                    *&buf[14] = v25;
                    *&buf[22] = 1024;
                    LODWORD(v73) = v26;
                    _os_log_impl(&dword_1B5ED1000, v23, OS_LOG_TYPE_DEFAULT, "Got back one personIdentifier %{private}@ from MAD, with confidence: %f and verified state: %d", buf, 0x1Cu);
                  }
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v56 objects:v83 count:16];
            }

            while (v18);
          }

          v50 = v49 + v50;
          ++v52;
        }

        while (v52 != v48);
        v15 = [obj countByEnumeratingWithState:&v60 objects:v84 count:16];
      }

      while (v15);
      v27 = v50;
    }

    else
    {
      v27 = 0;
    }

    if ([v8 count])
    {
      v33 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = v8;
        _os_log_impl(&dword_1B5ED1000, v33, OS_LOG_TYPE_DEFAULT, "Adding personIdentifiers: %{private}@", buf, 0xCu);
      }

      v34 = *(a1 + 48);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_270;
      v54[3] = &unk_1E7C26E58;
      v55 = v8;
      [v34 runWithLockAcquired:v54];
    }

    v35 = *(a1 + 40);
    v81[0] = @"Faces_count";
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v27];
    v82[0] = v32;
    v81[1] = @"PersonIdentifiers_count";
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v8, "count")];
    v82[1] = v36;
    v81[2] = @"MADRequest_maximumFaceCount";
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(*(a1 + 32), "maximumFaceCount")];
    v82[2] = v37;
    v81[3] = @"MADRequest_allowOnDemand";
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "allowOnDemand")];
    v82[3] = v38;
    v81[4] = @"MADRequest_allowUnverifiedIdentity";
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "allowUnverifiedIdentity")];
    v82[4] = v39;
    v81[5] = @"MADRequest_useLowResolutionPicture";
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(*(a1 + 32), "useLowResolutionPicture")];
    v82[5] = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:6];
    [v35 addAttributes:v41];
  }

LABEL_42:
LABEL_43:

  [*(a1 + 40) end];
  if (atomic_fetch_add((*(*(a1 + 72) + 8) + 24), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v73 = __Block_byref_object_copy__20;
    v74 = __Block_byref_object_dispose__20;
    v75 = 0;
    v42 = *(a1 + 48);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_296;
    v53[3] = &unk_1E7C26E80;
    v53[4] = buf;
    [v42 runWithLockAcquired:v53];
    v43 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(*&buf[8] + 40);
      *v70 = 138477827;
      v71 = v44;
      _os_log_impl(&dword_1B5ED1000, v43, OS_LOG_TYPE_DEFAULT, "IDsOfPeopleInSharedPhotoAssets invoking callback with identifiers %{private}@", v70, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
    _Block_object_dispose(buf, 8);
  }

LABEL_47:
  _Block_object_dispose(&v66, 8);
}

uint64_t __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_296(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 copy];

  return MEMORY[0x1EEE66BB8]();
}

void __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_300(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((atomic_exchange((*(a1[5] + 8) + 32), 1u) & 1) == 0)
  {
    sandbox_extension_release();
  }

  (*(a1[4] + 16))();
}

void __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = v3;
  if (v3)
  {
    if (*(v3 + 8) == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_6:
      *(v3 + 8) = 0;
      v10 = *(v3 + 2);
      goto LABEL_7;
    }

    v4 = *(v3 + 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 40);
  v7 = v4;
  v8 = [v5 numberWithInt:v6];
  v9 = [v7 objectForKeyedSubscript:v8];
  *(*(*(a1 + 32) + 8) + 24) = v9 != 0;

  v3 = v15;
  if (v15)
  {
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:
  v11 = MEMORY[0x1E696AD98];
  v12 = *(a1 + 40);
  v13 = v10;
  v14 = [v11 numberWithInt:v12];
  [v13 setObject:0 forKeyedSubscript:v14];
}

void __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_298(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3[8] = 1;
  }

  v5 = MEMORY[0x1B8C8C060](*(a1 + 64));
  v6 = [*(a1 + 32) photoAnalysisRequestType];
  switch(v6)
  {
    case 1:
      v16 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) contentURL];
        v18 = [*(a1 + 32) photoLocalIdentifier];
        *buf = 138478083;
        *&buf[4] = v17;
        *&buf[12] = 2113;
        *&buf[14] = v18;
        _os_log_impl(&dword_1B5ED1000, v16, OS_LOG_TYPE_DEFAULT, "Fetching attachment info from fileURL: %{private}@ (photoLocalIdentifier: %{private}@)", buf, 0x16u);
      }

      v9 = [*(a1 + 32) contentURLSandboxExtension];
      [v9 bytes];
      v19 = sandbox_extension_consume();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2810000000;
      v52 = &unk_1B5FE851A;
      LOBYTE(v53) = 0;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_300;
      v41[3] = &unk_1E7C26ED0;
      v43 = buf;
      v44 = v19;
      v42 = *(a1 + 64);
      v15 = MEMORY[0x1B8C8C060](v41);

      v20 = [*(a1 + 80) sharedMADService];
      v50 = *(a1 + 40);
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
      v22 = [*(a1 + 32) contentURL];
      v23 = [*(a1 + 32) photoLocalIdentifier];
      *(*(*(a1 + 72) + 8) + 24) = [v20 performRequests:v21 onImageURL:v22 withIdentifier:v23 completionHandler:v15];

      _Block_object_dispose(buf, 8);
      goto LABEL_15;
    case 2:
LABEL_7:
      v7 = +[_PSLogging generalChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) photoLocalIdentifier];
        *buf = 138477827;
        *&buf[4] = v8;
        _os_log_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_DEFAULT, "Fetching attachment info from photoLocalIdentifier: %{private}@", buf, 0xCu);
      }

      v9 = [*(a1 + 80) sharedMADService];
      v49 = *(a1 + 40);
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      v11 = [*(a1 + 32) photoLocalIdentifier];
      v45 = 0;
      v46 = &v45;
      v47 = 0x2050000000;
      v12 = getPHPhotoLibraryClass_softClass_1;
      v48 = getPHPhotoLibraryClass_softClass_1;
      if (!getPHPhotoLibraryClass_softClass_1)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPHPhotoLibraryClass_block_invoke_1;
        v52 = &unk_1E7C23BF0;
        v53 = &v45;
        __getPHPhotoLibraryClass_block_invoke_1(buf);
        v12 = v46[3];
      }

      v13 = v12;
      _Block_object_dispose(&v45, 8);
      v14 = [v12 systemPhotoLibraryURL];
      *(*(*(a1 + 72) + 8) + 24) = [v9 performRequests:v10 onAssetWithLocalIdentifier:v11 fromPhotoLibraryWithURL:v14 completionHandler:v5];

      v15 = v5;
LABEL_15:

      v5 = v15;
      break;
    case 0:
      __break(1u);
      goto LABEL_7;
  }

  if (v4 && *(v4 + 8) == 1)
  {
    *(v4 + 8) = 0;
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_302;
    v37 = &unk_1E7C26EF8;
    v24 = *(a1 + 64);
    v26 = a1 + 72;
    v25 = *(a1 + 72);
    v39 = v24;
    v40 = v25;
    v38 = *(a1 + 48);
    v27 = MEMORY[0x1B8C8C060](&v34);
    v28 = MEMORY[0x1E696AD98];
    v29 = *(*(*(a1 + 72) + 8) + 24);
    v30 = v4[2];
    v31 = [v28 numberWithInt:{v29, v34, v35, v36, v37}];
    [v30 setObject:v27 forKeyedSubscript:v31];

    v32 = *(a1 + 56);
    v33 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*v26 + 8) + 24)];
    [v32 addObject:v33];
  }
}

void __46___PSPhotoSuggestions_cancelRequestWithToken___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v8 = v3;
  v5 = [v8 objectForKeyedSubscript:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_254_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_ERROR, "Media Analysis returned an error %@", buf, 0xCu);
}

@end