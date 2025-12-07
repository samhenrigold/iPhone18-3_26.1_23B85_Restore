@interface PHMediaFormatAssetBundleConversionRequest
- (BOOL)prepareWithError:(id *)error;
- (BOOL)requiresFormatConversion;
- (id)outputFileType;
- (id)outputPathExtension;
- (void)enqueueSubrequestsOnConversionManager:(id)manager;
- (void)enumerateSubrequests:(id)subrequests;
@end

@implementation PHMediaFormatAssetBundleConversionRequest

- (id)outputFileType
{
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1962 description:@"Request must be preflighted"];
  }

  source = [(PHMediaFormatConversionRequest *)self source];

  if (!source)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1963 description:@"Invalid request for output type identifier on request without source"];
  }

  source2 = [(PHMediaFormatConversionRequest *)self source];
  fileType = [source2 fileType];

  return fileType;
}

- (id)outputPathExtension
{
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1953 description:@"Request must be preflighted"];
  }

  source = [(PHMediaFormatConversionRequest *)self source];

  if (!source)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1954 description:@"Invalid request for output path extension on request without source"];
  }

  source2 = [(PHMediaFormatConversionRequest *)self source];
  fileURL = [source2 fileURL];
  pathExtension = [fileURL pathExtension];

  return pathExtension;
}

- (BOOL)requiresFormatConversion
{
  if (![(PHMediaFormatConversionRequest *)self preflighted])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:1910 description:@"Request must be preflighted"];
  }

  return 0;
}

- (void)enumerateSubrequests:(id)subrequests
{
  v15 = *MEMORY[0x277D85DE8];
  subrequestsCopy = subrequests;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subrequests = [(PHMediaFormatAssetBundleConversionRequest *)self subrequests];
  v6 = [subrequests countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(subrequests);
        }

        subrequestsCopy[2](subrequestsCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [subrequests countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)enqueueSubrequestsOnConversionManager:(id)manager
{
  v15 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  [(PHMediaFormatConversionCompositeRequest *)self propagateRequestOptionsToSubrequests];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  subrequests = [(PHMediaFormatAssetBundleConversionRequest *)self subrequests];
  v6 = [subrequests countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(subrequests);
        }

        [managerCopy enqueueConversionRequest:? completionHandler:?];
      }

      v7 = [subrequests countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __83__PHMediaFormatAssetBundleConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Asset Bundle request subrequest finished: %@", &v3, 0xCu);
  }
}

- (BOOL)prepareWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  source = [(PHMediaFormatConversionRequest *)self source];
  fileURL = [source fileURL];

  v6 = [objc_alloc(MEMORY[0x277D3B3F0]) initWithAssetBundleAtURL:fileURL];
  if (!v6)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:5 userInfo:0];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path = [fileURL path];
      v9 = 138412290;
      v10 = path;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create asset photo bundle with path %@", &v9, 0xCu);
    }
  }

  return v6 != 0;
}

@end