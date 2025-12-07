@interface MADComputeService(Photos)
- (id)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:;
- (id)scheduleRequests:()Photos assets:photoLibrary:options:error:;
@end

@implementation MADComputeService(Photos)

- (id)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:
{
  v91 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v14 = a4;
  v54 = a5;
  v57 = a7;
  v56 = a8;
  v58 = a9;
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x277CCABB0];
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "hash")}];
  stringValue = [v18 stringValue];
  v20 = [v15 stringWithFormat:@"OnDemand-%@", stringValue];

  v61 = v20;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request: %@ %@ with assets %@", v20, v59, v14];
  selfCopy = self;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v88 = @"[MADComputeService+Photos]";
    v89 = 2112;
    v90 = v21;
    _os_log_impl(&dword_25845A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  v55 = v21;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v23 = v14;
  v24 = [v23 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v24)
  {
    v25 = *v77;
    v26 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v77 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v76 + 1) + 8 * i);
        localIdentifier = [v28 localIdentifier];
        v30 = localIdentifier == 0;

        if (v30)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v88 = @"[MADComputeService+Photos]";
            v89 = 2112;
            v90 = v28;
            _os_log_error_impl(&dword_25845A000, v26, OS_LOG_TYPE_ERROR, "%@ Asset (%@) without localIdentifier; skip", buf, 0x16u);
          }
        }

        else
        {
          localIdentifier2 = [v28 localIdentifier];
          [dictionary setObject:v28 forKeyedSubscript:localIdentifier2];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v24);
  }

  v74 = 0;
  v75 = 0;
  v32 = [self extensionDataForResultDirectoryURL:&v75 error:&v74];
  v33 = v75;
  v34 = v74;
  if (!v33)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    v36 = [v34 copy];
    v58[2](v58, v61, v36);
    goto LABEL_26;
  }

  v35 = [self registerProgressHandler:v57 requestID:v61];
  if (v35)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to register progressHandler (%d)", @"[MADComputeService+Photos]", v35];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    [self deregisterProgressHandlerForRequestID:v61];
    [self deregisterResultsHandlerForRequestID:v61];
    v84 = *MEMORY[0x277CCA450];
    v85 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v35 userInfo:v37];
    v58[2](v58, 0, v38);

LABEL_26:
    v42 = 0;
    goto LABEL_27;
  }

  v39 = [self registerResultsHandler:v56 requestID:v61];
  if (v39)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to register resultsHandler (%d)", @"[MADComputeService+Photos]", v39];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    [self deregisterProgressHandlerForRequestID:v61];
    [self deregisterResultsHandlerForRequestID:v61];
    v82 = *MEMORY[0x277CCA450];
    v83 = v36;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v39 userInfo:v40];
    v58[2](v58, 0, v41);

    goto LABEL_26;
  }

  connection = [self connection];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke;
  v69[3] = &unk_279899108;
  v70 = @"[MADComputeService+Photos]";
  selfCopy2 = self;
  v42 = v61;
  v72 = v42;
  v45 = v58;
  v73 = v45;
  v62 = [connection remoteObjectProxyWithErrorHandler:v69];

  if (v62)
  {
    allKeys = [dictionary allKeys];
    photoLibraryURL = [v54 photoLibraryURL];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __122__MADComputeService_Photos__performRequests_assets_photoLibrary_options_progressHandler_resultsHandler_completionHandler___block_invoke_208;
    v63[3] = &unk_279899130;
    v64 = @"[MADComputeService+Photos]";
    v65 = v55;
    v66 = selfCopy;
    v47 = v42;
    v67 = v47;
    v68 = v45;
    [v62 requestProcessing:v59 localIdentifiers:allKeys photoLibraryURL:photoLibraryURL resultDirectoryURL:v33 resultExtensionData:v32 requestID:v47 reply:v63];

    v48 = v47;
  }

  else
  {
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService+Photos]"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    v80 = *MEMORY[0x277CCA450];
    v81 = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    [selfCopy deregisterProgressHandlerForRequestID:v42];
    [selfCopy deregisterResultsHandlerForRequestID:v42];
    v51 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:v50];
    v45[2](v45, v42, v51);

    v52 = v42;
  }

  v36 = v70;
LABEL_27:

  return v42;
}

- (id)scheduleRequests:()Photos assets:photoLibrary:options:error:
{
  v72 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v41 = a4;
  v38 = a5;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "hash")}];
  stringValue = [v12 stringValue];
  v64 = [v9 stringWithFormat:@"Offline-%@", stringValue];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Schedule: %@ %@ on assets %@", v60[5], v43, v41];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v69 = @"[MADComputeService+Photos]";
    v70 = 2112;
    v71 = v14;
    _os_log_impl(&dword_25845A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@[Start] %@", buf, 0x16u);
  }

  v39 = v14;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = v41;
  v17 = [v16 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v17)
  {
    v18 = *v56;
    v19 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v55 + 1) + 8 * i);
        localIdentifier = [v21 localIdentifier];
        v23 = localIdentifier == 0;

        if (v23)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v69 = @"[MADComputeService+Photos]";
            v70 = 2112;
            v71 = v21;
            _os_log_error_impl(&dword_25845A000, v19, OS_LOG_TYPE_ERROR, "%@ Asset (%@) without localIdentifier; skip", buf, 0x16u);
          }
        }

        else
        {
          localIdentifier2 = [v21 localIdentifier];
          [dictionary setObject:v21 forKeyedSubscript:localIdentifier2];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v17);
  }

  v53 = 0;
  v54 = 0;
  v25 = [self extensionDataForResultDirectoryURL:&v54 error:&v53];
  v26 = v54;
  v27 = v53;
  if (v26)
  {
    connection = [self connection];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __80__MADComputeService_Photos__scheduleRequests_assets_photoLibrary_options_error___block_invoke;
    v49[3] = &unk_279899158;
    v50 = @"[MADComputeService+Photos]";
    v51 = &v59;
    v52 = a7;
    v29 = [connection synchronousRemoteObjectProxyWithErrorHandler:v49];

    if (v29)
    {
      allKeys = [dictionary allKeys];
      photoLibraryURL = [v38 photoLibraryURL];
      v32 = v60[5];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __80__MADComputeService_Photos__scheduleRequests_assets_photoLibrary_options_error___block_invoke_218;
      v44[3] = &unk_279899180;
      v45 = @"[MADComputeService+Photos]";
      v46 = v39;
      v47 = &v59;
      v48 = a7;
      [v29 scheduleProcessing:v43 localIdentifiers:allKeys photoLibraryURL:photoLibraryURL resultDirectoryURL:v26 resultExtensionData:v25 requestID:v32 reply:v44];

      v33 = v45;
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Failed to connect to compute service", @"[MADComputeService+Photos]"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
      }

      if (a7)
      {
        v65 = *MEMORY[0x277CCA450];
        v66 = v33;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:v35];
      }

      v36 = v60[5];
      v60[5] = 0;
    }

    v34 = v60[5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MADComputeService(Photos) performRequests:assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:];
    }

    v34 = 0;
    if (a7)
    {
      *a7 = [v27 copy];
    }
  }

  _Block_object_dispose(&v59, 8);

  return v34;
}

- (void)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)performRequests:()Photos assets:photoLibrary:options:progressHandler:resultsHandler:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end