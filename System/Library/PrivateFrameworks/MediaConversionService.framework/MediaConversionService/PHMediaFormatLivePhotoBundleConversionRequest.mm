@interface PHMediaFormatLivePhotoBundleConversionRequest
- (BOOL)prepareWithError:(id *)error;
- (void)enqueueSubrequestsOnConversionManager:(id)manager;
- (void)enumerateSubrequests:(id)subrequests;
- (void)postProcessSuccessfulCompositeRequest;
@end

@implementation PHMediaFormatLivePhotoBundleConversionRequest

- (void)postProcessSuccessfulCompositeRequest
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setMediaType:3];
  [v3 generateTemporaryOutputFileURLForRequest:self];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __86__PHMediaFormatLivePhotoBundleConversionRequest_postProcessSuccessfulCompositeRequest__block_invoke;
  v31[3] = &unk_27989B6F0;
  v31[4] = self;
  v32 = 0;
  v4 = MEMORY[0x259C84340](v31);
  v30 = 0;
  v5 = [v3 createTemporaryOutputDirectoryWithError:&v30];
  v6 = v30;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277D3B520]);
    source = [(PHMediaFormatConversionRequest *)self source];
    fileURL = [source fileURL];
    v10 = [v7 initWithBundleAtURL:fileURL];

    if (v10)
    {
      livePhotoConversionRequest = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
      videoConversionRequest = [livePhotoConversionRequest videoConversionRequest];
      destination = [videoConversionRequest destination];
      fileURL2 = [destination fileURL];

      livePhotoConversionRequest2 = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
      imageConversionRequest = [livePhotoConversionRequest2 imageConversionRequest];
      destination2 = [imageConversionRequest destination];
      fileURL3 = [destination2 fileURL];

      if ([(PHMediaFormatConversionCompositeRequest *)self requiresFormatConversion])
      {
        [(PHMediaFormatConversionRequest *)self livePhotoPairingIdentifier];
      }

      else
      {
        [v10 pairingIdentifier];
      }
      v19 = ;
      v20 = objc_alloc(MEMORY[0x277D3B520]);
      v28 = fileURL2;
      path = [fileURL2 path];
      v27 = fileURL3;
      path2 = [fileURL3 path];
      objc_msgSend_imageDisplayTime(v10);
      v23 = [v20 initWithPathToVideo:path pathToImage:path2 imageDisplayTime:buf pairingIdentifier:v19];

      temporaryOutputFileURL = [v3 temporaryOutputFileURL];
      v29 = v6;
      v25 = [v23 writeToBundleAtURL:temporaryOutputFileURL error:&v29];
      v26 = v29;

      if (v25)
      {
        [(PHMediaFormatConversionRequest *)self setDestination:v3];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v34 = v26;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo output bundle: %@", buf, 0xCu);
        }

        v4[2](v4);
      }

      v6 = v26;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo source bundle", buf, 2u);
      }

      v4[2](v4);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create temporary output parent directory for live photo bundle: %@", buf, 0xCu);
    }

    v4[2](v4);
  }
}

uint64_t __86__PHMediaFormatLivePhotoBundleConversionRequest_postProcessSuccessfulCompositeRequest__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *(a1 + 40);
  if (v3)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:7 userInfo:v4];
  [*(a1 + 32) setError:v5];

  if (v3)
  {
  }

  return [*(a1 + 32) setStatus:5];
}

- (void)enumerateSubrequests:(id)subrequests
{
  subrequestsCopy = subrequests;
  livePhotoConversionRequest = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
  (*(subrequests + 2))(subrequestsCopy, livePhotoConversionRequest);
}

- (void)enqueueSubrequestsOnConversionManager:(id)manager
{
  managerCopy = manager;
  [(PHMediaFormatConversionCompositeRequest *)self propagateRequestOptionsToSubrequests];
  livePhotoConversionRequest = [(PHMediaFormatLivePhotoBundleConversionRequest *)self livePhotoConversionRequest];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__PHMediaFormatLivePhotoBundleConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke;
  v6[3] = &unk_27989BA48;
  v6[4] = self;
  [managerCopy enqueueConversionRequest:livePhotoConversionRequest completionHandler:v6];
}

void __87__PHMediaFormatLivePhotoBundleConversionRequest_enqueueSubrequestsOnConversionManager___block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = [*(a1 + 32) livePhotoConversionRequest];
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Live photo bundle request subrequest finished: %@", &v3, 0xCu);
  }
}

- (BOOL)prepareWithError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  source = [(PHMediaFormatConversionRequest *)self source];
  fileURL = [source fileURL];

  v7 = [objc_alloc(MEMORY[0x277D3B520]) initWithBundleAtURL:fileURL];
  v8 = v7;
  if (v7)
  {
    imagePath = [v7 imagePath];
    videoPath = [v8 videoPath];
    v11 = videoPath;
    if (imagePath)
    {
      v12 = videoPath == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = fileURL;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to get image and video path from pvt bundle at path %@", buf, 0xCu);
      }

      v13 = 0;
    }

    else
    {
      v30 = imagePath;
      v31 = videoPath;
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:imagePath];
      v15 = [PHMediaFormatConversionSource imageSourceForFileURL:v14];

      destinationCapabilities = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
      v28 = v15;
      v17 = [PHMediaFormatConversionRequest requestForSource:v15 destinationCapabilities:destinationCapabilities error:error];

      v29 = v17;
      if (v17)
      {
        v11 = v31;
        v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31];
        v19 = [PHMediaFormatConversionSource videoSourceForFileURL:v18];

        destinationCapabilities2 = [(PHMediaFormatConversionRequest *)self destinationCapabilities];
        v27 = v19;
        v21 = [PHMediaFormatConversionRequest requestForSource:v19 destinationCapabilities:destinationCapabilities2 error:error];

        if (v21)
        {
          v22 = [PHMediaFormatLivePhotoConversionRequest requestForImageConversionRequest:v17 videoConversionRequest:v21 error:error];
          v13 = v22 != 0;
          if (v22)
          {
            [(PHMediaFormatConversionRequest *)self setLivePhotoPairingIdentifierBehavior:4];
            uUID = [MEMORY[0x277CCAD78] UUID];
            uUIDString = [uUID UUIDString];
            [(PHMediaFormatConversionRequest *)self setLivePhotoPairingIdentifier:uUIDString];

            [(PHMediaFormatLivePhotoBundleConversionRequest *)self setLivePhotoConversionRequest:v22];
            [v22 setParentRequest:self];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = fileURL;
            _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle request for %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v31;
            _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle video subrequest for %@", buf, 0xCu);
          }

          v13 = 0;
        }

        imagePath = v30;
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        imagePath = v30;
        v33 = v30;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle image subrequest for %@", buf, 0xCu);
        v13 = 0;
        v11 = v31;
      }

      else
      {
        v13 = 0;
        imagePath = v30;
        v11 = v31;
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:5 userInfo:0];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      path = [fileURL path];
      *buf = 138412290;
      v33 = path;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create live photo bundle with path %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

@end