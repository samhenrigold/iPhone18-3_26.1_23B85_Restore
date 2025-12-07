@interface PHMediaFormatConversionImplementation_MediaConversionService
- (PHMediaFormatConversionImplementation_MediaConversionService)init;
- (id)submitNonSinglePassVideoConversionRequest:(id)request destination:(id)destination completionHandler:(id)handler;
- (id)submitSinglePassVideoConversionRequest:(id)request destination:(id)destination completionHandler:(id)handler;
- (int64_t)transferBehaviorUserPreference;
- (void)applyCommonOptionsFromRequest:(id)request toOptions:(id)options;
- (void)applyCommonOptionsFromVideoRequest:(id)request toOptions:(id)options;
- (void)dealloc;
- (void)performConversionRequest:(id)request completionHandler:(id)handler;
- (void)performImageConversionRequest:(id)request completionHandler:(id)handler;
- (void)performVideoConversionRequest:(id)request completionHandler:(id)handler;
@end

@implementation PHMediaFormatConversionImplementation_MediaConversionService

- (void)applyCommonOptionsFromRequest:(id)request toOptions:(id)options
{
  optionsCopy = options;
  if ([request requiresPassthroughConversion])
  {
    [optionsCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  }

  [optionsCopy setObject:&unk_2869A1048 forKeyedSubscript:@"PAMediaConversionServiceOptionJobPriorityKey"];
}

- (void)performImageConversionRequest:(id)request completionHandler:(id)handler
{
  v76 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v8 = objc_opt_new();
  [v8 setMediaType:2];
  outputPathExtension = [requestCopy outputPathExtension];
  [v8 setOutputPathExtension:outputPathExtension];

  [v8 generateTemporaryOutputFileURLForRequest:requestCopy];
  v73 = 0;
  v10 = [v8 createTemporaryOutputFileWithErrorError:&v73];
  v11 = v73;
  if (v10)
  {
    array = [MEMORY[0x277CBEB18] array];
    standardPolicy = [MEMORY[0x277D3B420] standardPolicy];
    [array addObject:standardPolicy];

    source = [requestCopy source];
    renderOriginatingSignature = [source renderOriginatingSignature];

    v67 = renderOriginatingSignature;
    if (renderOriginatingSignature)
    {
      v16 = MEMORY[0x277D3B410];
      renderOriginatingAssetIdentifierMetadataKey = [MEMORY[0x277D3B458] renderOriginatingAssetIdentifierMetadataKey];
      originatingAssetIdentifierMetadataKey = [v16 policyWithKey:renderOriginatingAssetIdentifierMetadataKey value:renderOriginatingSignature];
      [array addObject:originatingAssetIdentifierMetadataKey];
    }

    else
    {
      if (![requestCopy requiresFormatConversion])
      {
LABEL_11:
        livePhotoPairingIdentifier = [requestCopy livePhotoPairingIdentifier];
        livePhotoPairingIdentifierBehavior = [requestCopy livePhotoPairingIdentifierBehavior];
        v66 = livePhotoPairingIdentifier;
        if (livePhotoPairingIdentifierBehavior <= 2)
        {
          if (!livePhotoPairingIdentifierBehavior)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:322 description:@"Unexpected uninitialized live photo pairing identifier behavior"];
            goto LABEL_27;
          }

          if (livePhotoPairingIdentifierBehavior != 2 || ([requestCopy source], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "livePhotoPairingIdentifier"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, !v29))
          {
LABEL_28:
            if ([requestCopy locationMetadataBehavior] == 1)
            {
              location = [MEMORY[0x277D3B440] policyWithLocation:0];
              [array addObject:location];
            }

            else
            {
              if ([requestCopy locationMetadataBehavior] != 2 || (objc_msgSend(requestCopy, "location"), v40 = objc_claimAutoreleasedReturnValue(), v40, !v40))
              {
LABEL_34:
                if ([requestCopy creationDateMetadataBehavior] == 2)
                {
                  creationDate = [requestCopy creationDate];

                  if (creationDate)
                  {
                    v44 = MEMORY[0x277D3B438];
                    creationDate2 = [requestCopy creationDate];
                    creationDateTimeZone = [requestCopy creationDateTimeZone];
                    v47 = [v44 policyWithCreationDate:creationDate2 inTimeZone:creationDateTimeZone];
                    [array addObject:v47];
                  }
                }

                if ([requestCopy captionMetadataBehavior] == 1)
                {
                  caption = [MEMORY[0x277D3B430] policyWithCaption:0];
                  [array addObject:caption];
                }

                else
                {
                  if ([requestCopy captionMetadataBehavior] != 2 || (objc_msgSend(requestCopy, "caption"), v49 = objc_claimAutoreleasedReturnValue(), v49, !v49))
                  {
LABEL_43:
                    if ([requestCopy accessibilityDescriptionMetadataBehavior] == 1)
                    {
                      accessibilityDescription2 = [MEMORY[0x277D3B428] policyWithAccessibilityDescription:0];
                      [array addObject:accessibilityDescription2];
                    }

                    else
                    {
                      if ([requestCopy accessibilityDescriptionMetadataBehavior] != 2)
                      {
                        goto LABEL_49;
                      }

                      accessibilityDescription = [requestCopy accessibilityDescription];

                      if (!accessibilityDescription)
                      {
                        goto LABEL_49;
                      }

                      v54 = MEMORY[0x277D3B428];
                      accessibilityDescription2 = [requestCopy accessibilityDescription];
                      v55 = [v54 policyWithAccessibilityDescription:accessibilityDescription2];
                      [array addObject:v55];
                    }

LABEL_49:
                    dictionary = [MEMORY[0x277CBEB38] dictionary];
                    v57 = [MEMORY[0x277D3B418] policyWithPolicies:array];
                    [dictionary setObject:v57 forKeyedSubscript:@"PAMediaConversionServiceOptionMetadataPolicyKey"];

                    [dictionary setObject:&unk_2869A1210 forKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];
                    [dictionary setObject:&unk_2869A1030 forKeyedSubscript:@"PAMediaConversionServiceOptionColorSpaceKey"];
                    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionFormatConversionOnlyKey"];
                    [dictionary setObject:@"PHMediaFormatConversion" forKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
                    [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromRequest:requestCopy toOptions:dictionary];
                    source2 = [requestCopy source];
                    fileURL = [source2 fileURL];
                    v60 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:fileURL];

                    fileURL2 = [v8 fileURL];
                    v62 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:fileURL2];

                    imageConversionServiceClient = [(PHMediaFormatConversionImplementation_MediaConversionService *)self imageConversionServiceClient];
                    v69[0] = MEMORY[0x277D85DD0];
                    v69[1] = 3221225472;
                    v69[2] = __112__PHMediaFormatConversionImplementation_MediaConversionService_performImageConversionRequest_completionHandler___block_invoke;
                    v69[3] = &unk_27989B908;
                    v70 = requestCopy;
                    v72 = handlerCopy;
                    v71 = v8;
                    [imageConversionServiceClient convertImageAtSourceURLCollection:v60 toDestinationURLCollection:v62 options:dictionary completionHandler:v69];

LABEL_50:
                    goto LABEL_51;
                  }

                  v50 = MEMORY[0x277D3B430];
                  caption = [requestCopy caption];
                  v51 = [v50 policyWithCaption:caption];
                  [array addObject:v51];
                }

                goto LABEL_43;
              }

              v41 = MEMORY[0x277D3B440];
              location = [requestCopy location];
              v42 = [v41 policyWithLocation:location];
              [array addObject:v42];
            }

            goto LABEL_34;
          }
        }

        else
        {
          if (livePhotoPairingIdentifierBehavior == 3)
          {
            v34 = MEMORY[0x277D3B410];
            currentHandler = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
            v31 = v34;
            v32 = currentHandler;
            v33 = livePhotoPairingIdentifier;
            goto LABEL_25;
          }

          if (livePhotoPairingIdentifierBehavior == 4)
          {
            source3 = [requestCopy source];
            livePhotoPairingIdentifier2 = [source3 livePhotoPairingIdentifier];

            if (!livePhotoPairingIdentifier2)
            {
              goto LABEL_28;
            }

            v37 = MEMORY[0x277D3B410];
            currentHandler = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
            v31 = v37;
            v32 = currentHandler;
            v33 = v66;
            goto LABEL_25;
          }

          if (livePhotoPairingIdentifierBehavior != 5)
          {
            goto LABEL_28;
          }

          currentHandler = [requestCopy source];
          livePhotoPairingIdentifier3 = [currentHandler livePhotoPairingIdentifier];
          if (!livePhotoPairingIdentifier3)
          {
            goto LABEL_27;
          }

          v26 = livePhotoPairingIdentifier3;
          requiresFormatConversion = [requestCopy requiresFormatConversion];

          if (!requiresFormatConversion)
          {
            goto LABEL_28;
          }
        }

        v30 = MEMORY[0x277D3B410];
        currentHandler = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
        v31 = v30;
        v32 = currentHandler;
        v33 = 0;
LABEL_25:
        v38 = [v31 policyWithKey:v32 value:v33];
        [array addObject:v38];

LABEL_27:
        goto LABEL_28;
      }

      source4 = [requestCopy source];
      renderOriginatingAssetIdentifierMetadataKey = [source4 fileSignature];

      if (!renderOriginatingAssetIdentifierMetadataKey)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          source5 = [requestCopy source];
          *buf = 138412290;
          v75 = source5;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil file signature for source %@", buf, 0xCu);
        }

        v64 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:5 userInfo:0];
        [requestCopy setError:v64];

        [requestCopy setStatus:5];
        handlerCopy[2](handlerCopy);
        goto LABEL_50;
      }

      v20 = MEMORY[0x277D3B410];
      originatingAssetIdentifierMetadataKey = [MEMORY[0x277D3B458] originatingAssetIdentifierMetadataKey];
      v21 = [v20 policyWithKey:originatingAssetIdentifierMetadataKey value:renderOriginatingAssetIdentifierMetadataKey];
      [array addObject:v21];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v75 = v11;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary file: %@", buf, 0xCu);
  }

  [requestCopy setError:v11];
  [requestCopy setStatus:5];
  handlerCopy[2](handlerCopy);
LABEL_51:
}

- (void)applyCommonOptionsFromVideoRequest:(id)request toOptions:(id)options
{
  requestCopy = request;
  optionsCopy = options;
  source = [requestCopy source];
  renderOriginatingSignature = [source renderOriginatingSignature];

  if (renderOriginatingSignature)
  {
    [optionsCopy setObject:renderOriginatingSignature forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataRenderOriginatingSignatureKey"];
  }

  livePhotoPairingIdentifier = [requestCopy livePhotoPairingIdentifier];
  livePhotoPairingIdentifierBehavior = [requestCopy livePhotoPairingIdentifierBehavior];
  if (livePhotoPairingIdentifierBehavior <= 2)
  {
    if (!livePhotoPairingIdentifierBehavior)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:220 description:@"Unexpected uninitialized live photo pairing identifier behavior"];

      goto LABEL_19;
    }

    if (livePhotoPairingIdentifierBehavior == 2)
    {
      source2 = [requestCopy source];
      livePhotoPairingIdentifier2 = [source2 livePhotoPairingIdentifier];

      if (livePhotoPairingIdentifier2)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_19;
  }

  switch(livePhotoPairingIdentifierBehavior)
  {
    case 3:
LABEL_15:
      v19 = optionsCopy;
      v18 = livePhotoPairingIdentifier;
      goto LABEL_16;
    case 4:
      source3 = [requestCopy source];
      livePhotoPairingIdentifier3 = [source3 livePhotoPairingIdentifier];

      if (!livePhotoPairingIdentifier3)
      {
        break;
      }

      goto LABEL_15;
    case 5:
      source4 = [requestCopy source];
      livePhotoPairingIdentifier4 = [source4 livePhotoPairingIdentifier];
      if (!livePhotoPairingIdentifier4)
      {

        break;
      }

      v14 = livePhotoPairingIdentifier4;
      requiresFormatConversion = [requestCopy requiresFormatConversion];

      if (!requiresFormatConversion)
      {
        break;
      }

LABEL_13:
      v18 = &stru_28699D8A8;
      v19 = optionsCopy;
LABEL_16:
      [v19 setObject:v18 forKeyedSubscript:@"PAMediaConversionServiceOptionLivePhotoPairingIdentifierKey"];
      break;
  }

LABEL_19:
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(requestCopy, "locationMetadataBehavior") != 1}];
  [optionsCopy setObject:v23 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeLocationKey"];

  if ([requestCopy locationMetadataBehavior] == 2)
  {
    location = [requestCopy location];

    if (location)
    {
      location2 = [requestCopy location];
      [optionsCopy setObject:location2 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataLocationKey"];
    }
  }

  if ([requestCopy creationDateMetadataBehavior] == 2)
  {
    creationDate = [requestCopy creationDate];

    if (creationDate)
    {
      creationDate2 = [requestCopy creationDate];
      [optionsCopy setObject:creationDate2 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataContentCreationDateKey"];

      creationDateTimeZone = [requestCopy creationDateTimeZone];

      if (creationDateTimeZone)
      {
        creationDateTimeZone2 = [requestCopy creationDateTimeZone];
        creationDate3 = [requestCopy creationDate];
        v31 = [creationDateTimeZone2 secondsFromGMTForDate:creationDate3];

        v32 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
        [optionsCopy setObject:v32 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataContentCreationDateTimeZoneOffsetKey"];
      }
    }
  }

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(requestCopy, "captionMetadataBehavior") != 1}];
  [optionsCopy setObject:v33 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeDescriptionKey"];

  if ([requestCopy captionMetadataBehavior] == 2)
  {
    caption = [requestCopy caption];

    if (caption)
    {
      caption2 = [requestCopy caption];
      [optionsCopy setObject:caption2 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataDescriptionKey"];
    }
  }

  v36 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(requestCopy, "accessibilityDescriptionMetadataBehavior") != 1}];
  [optionsCopy setObject:v36 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataIncludeAccessibilityDescriptionKey"];

  if ([requestCopy accessibilityDescriptionMetadataBehavior] == 2)
  {
    accessibilityDescription = [requestCopy accessibilityDescription];

    if (accessibilityDescription)
    {
      accessibilityDescription2 = [requestCopy accessibilityDescription];
      [optionsCopy setObject:accessibilityDescription2 forKeyedSubscript:@"PAMediaConversionServiceOptionAVMetadataAccessibilityDescriptionKey"];
    }
  }

  [optionsCopy setObject:&unk_2869A1000 forKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyKey"];
  [optionsCopy setObject:&unk_2869A1018 forKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyMinimumDurationKey"];
  v39 = *MEMORY[0x277CE5C00];
  videoExportPreset = [requestCopy videoExportPreset];

  if (videoExportPreset)
  {
    videoExportPreset2 = [requestCopy videoExportPreset];

    [optionsCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  }

  else
  {
    if (![requestCopy shouldExportAsHDR])
    {
      goto LABEL_37;
    }

    videoExportPreset2 = *MEMORY[0x277CE5BF8];
  }

  v39 = videoExportPreset2;
LABEL_37:
  [optionsCopy setObject:v39 forKeyedSubscript:@"PAMediaConversionServiceOptionExportPresetNameKey"];
}

- (id)submitSinglePassVideoConversionRequest:(id)request destination:(id)destination completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  destinationCopy = destination;
  handlerCopy = handler;
  v10 = objc_opt_new();
  v11 = MEMORY[0x277CBEB38];
  v30 = @"PAMediaConversionServiceOptionTargetFileSizeKey";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(requestCopy, "estimatedOutputFileLength")}];
  v31[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v14 = [v11 dictionaryWithDictionary:v13];

  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromRequest:requestCopy toOptions:v14];
  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromVideoRequest:requestCopy toOptions:v14];
  objc_initWeak(&location, requestCopy);
  videoConversionServiceClient = [(PHMediaFormatConversionImplementation_MediaConversionService *)self videoConversionServiceClient];
  source = [requestCopy source];
  fileURL = [source fileURL];
  destination = [requestCopy destination];
  fileURL2 = [destination fileURL];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __133__PHMediaFormatConversionImplementation_MediaConversionService_submitSinglePassVideoConversionRequest_destination_completionHandler___block_invoke;
  v25[3] = &unk_27989B858;
  v20 = v10;
  v26 = v20;
  objc_copyWeak(&v28, &location);
  v21 = handlerCopy;
  v27 = v21;
  v22 = [videoConversionServiceClient convertVideoAtSourceURL:fileURL toDestinationURL:fileURL2 options:v14 completionHandler:v25];

  [v20 startObservingProgress:v22 forRequest:requestCopy];
  objc_destroyWeak(&v28);

  objc_destroyWeak(&location);

  return v22;
}

- (id)submitNonSinglePassVideoConversionRequest:(id)request destination:(id)destination completionHandler:(id)handler
{
  v29[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  destinationCopy = destination;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEB38];
  v12 = *MEMORY[0x277CE5DA8];
  v28[0] = @"PAMediaConversionServiceOptionOutputFileTypeKey";
  v28[1] = @"PAMediaConversionServiceOptionAVIncludeMetadataKey";
  v29[0] = v12;
  v29[1] = MEMORY[0x277CBEC38];
  v28[2] = @"PAMediaConversionServiceOptionAudioTrackGroupHandlingKey";
  v29[2] = &unk_2869A0FE8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
  v14 = [v11 dictionaryWithDictionary:v13];

  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromRequest:requestCopy toOptions:v14];
  [(PHMediaFormatConversionImplementation_MediaConversionService *)self applyCommonOptionsFromVideoRequest:requestCopy toOptions:v14];
  objc_initWeak(&location, requestCopy);
  videoConversionServiceClient = [(PHMediaFormatConversionImplementation_MediaConversionService *)self videoConversionServiceClient];
  source = [requestCopy source];
  fileURL = [source fileURL];
  fileURL2 = [destinationCopy fileURL];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __136__PHMediaFormatConversionImplementation_MediaConversionService_submitNonSinglePassVideoConversionRequest_destination_completionHandler___block_invoke;
  v23[3] = &unk_27989B858;
  objc_copyWeak(&v26, &location);
  v19 = destinationCopy;
  v24 = v19;
  v20 = handlerCopy;
  v25 = v20;
  v21 = [videoConversionServiceClient convertVideoAtSourceURL:fileURL toDestinationURL:fileURL2 options:v14 completionHandler:v23];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v21;
}

- (void)performVideoConversionRequest:(id)request completionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  destination = [requestCopy destination];
  if (!destination)
  {
    destination = objc_opt_new();
    [destination setMediaType:1];
    [destination generateTemporaryOutputFileURLForRequest:requestCopy];
  }

  v13 = 0;
  v9 = [destination createTemporaryOutputFileWithErrorError:&v13];
  v10 = v13;
  if (v9)
  {
    if ([requestCopy requiresSinglePassVideoConversion])
    {
      [(PHMediaFormatConversionImplementation_MediaConversionService *)self submitSinglePassVideoConversionRequest:requestCopy destination:destination completionHandler:handlerCopy];
    }

    else
    {
      [(PHMediaFormatConversionImplementation_MediaConversionService *)self submitNonSinglePassVideoConversionRequest:requestCopy destination:destination completionHandler:handlerCopy];
    }
    v11 = ;
    if (v11)
    {
      progress = [requestCopy progress];
      [progress addChild:v11 withPendingUnitCount:1];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = requestCopy;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected nil progress for conversion request %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary file: %@", buf, 0xCu);
    }

    [requestCopy setError:v10];
    [requestCopy setStatus:5];
    handlerCopy[2](handlerCopy);
  }
}

- (void)performConversionRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = requestCopy;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    v8 = 0;
  }

  if ([v8 isCompositeRequest])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"!request.isCompositeRequest"}];

    if (handlerCopy)
    {
      goto LABEL_5;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionImplementation_MediaConversionService.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_5:
  source = [requestCopy source];
  mediaType = [source mediaType];

  if (mediaType == 1)
  {
    [(PHMediaFormatConversionImplementation_MediaConversionService *)self performVideoConversionRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    [(PHMediaFormatConversionImplementation_MediaConversionService *)self performImageConversionRequest:requestCopy completionHandler:handlerCopy];
  }
}

- (void)dealloc
{
  [(PAVideoConversionServiceClient *)self->_videoConversionServiceClient invalidateAfterPendingRequestCompletion];
  v3.receiver = self;
  v3.super_class = PHMediaFormatConversionImplementation_MediaConversionService;
  [(PHMediaFormatConversionImplementation_MediaConversionService *)&v3 dealloc];
}

- (PHMediaFormatConversionImplementation_MediaConversionService)init
{
  v8.receiver = self;
  v8.super_class = PHMediaFormatConversionImplementation_MediaConversionService;
  v2 = [(PHMediaFormatConversionImplementation_MediaConversionService *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    videoConversionServiceClient = v2->_videoConversionServiceClient;
    v2->_videoConversionServiceClient = v3;

    v5 = objc_opt_new();
    imageConversionServiceClient = v2->_imageConversionServiceClient;
    v2->_imageConversionServiceClient = v5;
  }

  return v2;
}

- (int64_t)transferBehaviorUserPreference
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.camera"];
  v3 = [v2 valueForKey:@"CAMUserPreferenceMediaTransferBehavior"];
  if (!v3 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_6:
    integerValue = 0;
    goto LABEL_7;
  }

  integerValue = [v3 integerValue];
  if (integerValue >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = integerValue;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unknown transfer behavior user preference value %ld, using automatic", &v6, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:

  return integerValue;
}

@end