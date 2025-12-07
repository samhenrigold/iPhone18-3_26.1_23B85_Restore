@interface VCPMADPersonIdentificationTask
+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (VCPMADPersonIdentificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload;
- (id)identifyObservations:(id)observations gallery:(id)gallery photoLibrary:(id)library;
- (id)identifyObservations:(id)observations personsModel:(id)model petsModel:(id)petsModel photoLibrary:(id)library;
- (int)run;
@end

@implementation VCPMADPersonIdentificationTask

- (VCPMADPersonIdentificationTask)initWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = VCPMADPersonIdentificationTask;
  v12 = [(VCPMADPersonIdentificationTask *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_imageAsset, asset);
    objc_storeStrong(&v13->_signpostPayload, payload);
  }

  return v13;
}

+ (id)taskWithRequest:(id)request imageAsset:(id)asset andSignpostPayload:(id)payload
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  assetCopy = asset;
  payloadCopy = payload;
  if ([requestCopy isMemberOfClass:objc_opt_class()])
  {
    v11 = [[self alloc] initWithRequest:requestCopy imageAsset:assetCopy andSignpostPayload:payloadCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Incompatible request (%@) specified to %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)identifyObservations:(id)observations gallery:(id)gallery photoLibrary:(id)library
{
  v79 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  galleryCopy = gallery;
  libraryCopy = library;
  v8 = MEMORY[0x1E696AEC0];
  selfCopy = self;
  taskName = [objc_opt_class() taskName];
  clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
  v49 = [v8 stringWithFormat:@"[%@][%@][VU]", taskName, clientBundleID];

  array = [MEMORY[0x1E695DF70] array];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = observationsCopy;
  v11 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v11)
  {
    v55 = *v63;
    do
    {
      v12 = 0;
      v57 = v11;
      do
      {
        if (*v63 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v61 = 0;
        v60 = [galleryCopy recognize:v13 context:0 recognitionPreset:1 error:&v61];
        v59 = v61;
        if (v59)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v69 = v49;
            v70 = 2112;
            v71 = v13;
            v72 = 2112;
            v73 = v59;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to identify observation %@ - %@", buf, 0x20u);
          }
        }

        else
        {
          firstObject = [v60 firstObject];
          v58 = firstObject;
          if (firstObject)
          {
            v16 = MEMORY[0x1E696AEC0];
            entityIdentifier = [firstObject entityIdentifier];
            v54 = [v16 stringWithFormat:@"md:%ld", objc_msgSend(entityIdentifier, "value")];

            v18 = MEMORY[0x1E6978978];
            v19 = [v58 tag];
            uUIDString = [v19 UUIDString];
            v52 = [v18 localIdentifierWithUUID:uUIDString];

            confidence = [v58 confidence];
            [confidence floatValue];
            v23 = v22;

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              [v13 boundingBox];
              v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.*f, y:%.*f}, {width:%.*f, height:%.*f}} ", 3, v24, 3, v25, 3, v26, 3, v27];
              *buf = 138413314;
              v69 = v49;
              v70 = 2112;
              v71 = v52;
              v72 = 2112;
              v73 = v54;
              v74 = 2048;
              v75 = v23;
              v76 = 2112;
              v77 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Prediction: %@, (mdid: %@), confidence: %.3f at %@", buf, 0x34u);
            }

            librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
            if ([(MADPersonIdentificationRequest *)selfCopy->_request includePets])
            {
              [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEBD8];
            }

            if (v54 && (v29 = MEMORY[0x1E6978978], v67 = v54, [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "fetchPersonsWithMdIDs:options:", v30, librarySpecificFetchOptions), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "firstObject"), v32 = objc_claimAutoreleasedReturnValue(), v31, v30, v32) || (v33 = MEMORY[0x1E6978978], v66 = v52, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v66, 1), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "fetchPersonsWithLocalIdentifiers:options:", v34, librarySpecificFetchOptions), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "firstObject"), v32 = objc_claimAutoreleasedReturnValue(), v35, v34, v32))
            {
              if ((-[MADPersonIdentificationRequest allowUnverifiedIdentity](selfCopy->_request, "allowUnverifiedIdentity") & 1) != 0 || [v32 isVerified])
              {
                v36 = objc_alloc(MEMORY[0x1E69AE380]);
                localIdentifier = [v32 localIdentifier];
                name = [v32 name];
                mdID = [v32 mdID];
                detectionType = [v32 detectionType];
                isVerified = [v32 isVerified];
                [v13 boundingBox];
                v42 = [v36 initWithPersonIdentifier:localIdentifier personName:name mdID:mdID detectionType:detectionType verified:isVerified boundingBox:? andConfidence:?];

                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v69 = v49;
                  v70 = 2112;
                  v71 = v42;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Adding result - %@", buf, 0x16u);
                }

                [array addObject:v42];
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4)
              {
                v43 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v69 = v49;
                  v70 = 2112;
                  v71 = v52;
                  v72 = 2112;
                  v73 = v54;
                  _os_log_impl(&dword_1C9B70000, v43, OS_LOG_TYPE_DEFAULT, "%@ Failed to fetch identity %@ and mdID %@", buf, 0x20u);
                }
              }

              v32 = 0;
            }
          }

          else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v69 = v49;
            v70 = 2112;
            v71 = v13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ No identification returns for %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v57 != v12);
      v11 = [obj countByEnumeratingWithState:&v62 objects:v78 count:16];
    }

    while (v11);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v44 = [array count];
    *buf = 138412546;
    v69 = v49;
    v70 = 2048;
    v71 = v44;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu observations", buf, 0x16u);
  }

  return array;
}

- (id)identifyObservations:(id)observations personsModel:(id)model petsModel:(id)petsModel photoLibrary:(id)library
{
  v83 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  modelCopy = model;
  petsModelCopy = petsModel;
  libraryCopy = library;
  v10 = MEMORY[0x1E696AEC0];
  selfCopy = self;
  taskName = [objc_opt_class() taskName];
  clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
  v61 = [v10 stringWithFormat:@"[%@][%@][VIP]", taskName, clientBundleID];

  array = [MEMORY[0x1E695DF70] array];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = observationsCopy;
  v13 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v13)
  {
    v65 = *v70;
    do
    {
      v14 = 0;
      v66 = v13;
      do
      {
        if (*v70 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v68 = 0;
          v18 = [modelCopy predictPersonFromFaceObservation:v15 limit:1 canceller:0 error:&v68];
          v19 = v68;
          if (v19)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v78 = 2112;
              v79 = *&v19;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to identify face %@ - %@", buf, 0x20u);
            }

LABEL_17:

            v18 = v19;
            goto LABEL_37;
          }

          firstObject = [v18 firstObject];
          v24 = firstObject;
          if (firstObject)
          {
            predictedPersonUniqueIdentifier = [firstObject predictedPersonUniqueIdentifier];
            [v24 confidence];
            goto LABEL_23;
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v51 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v52 = v51;
              v53 = "%@ No identification returns for face %@";
LABEL_45:
              _os_log_impl(&dword_1C9B70000, v52, OS_LOG_TYPE_INFO, v53, buf, 0x16u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = 0;
            predictedPersonUniqueIdentifier = 0;
            v22 = -1.0;
            goto LABEL_24;
          }

          v67 = 0;
          v18 = [petsModelCopy entityPredictionsForObservation:v15 limit:1 canceller:0 error:&v67];
          v19 = v67;
          if (v19)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v78 = 2112;
              v79 = *&v19;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to identify pet %@ - %@", buf, 0x20u);
            }

            goto LABEL_17;
          }

          firstObject2 = [v18 firstObject];
          v24 = firstObject2;
          if (firstObject2)
          {
            predictedPersonUniqueIdentifier = [firstObject2 entityUniqueIdentifier];
            [v24 confidence];
LABEL_23:
            v27 = v25;

            v20 = isKindOfClass ^ 1;
            v22 = v27;
LABEL_24:
            [v15 boundingBox];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{{x:%.*f, y:%.*f}, {width:%.*f, height:%.*f}} ", 3, *&v29, 3, *&v31, 3, *&v33, 3, *&v35];
              *buf = 138413058;
              v75 = v61;
              v76 = 2112;
              v77 = predictedPersonUniqueIdentifier;
              v78 = 2048;
              v79 = v22;
              v80 = 2112;
              v81 = v36;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Prediction: %@, confidence: %.3f at %@", buf, 0x2Au);
            }

            librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
            v38 = librarySpecificFetchOptions;
            if (v20)
            {
              [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEBF0];
            }

            v39 = MEMORY[0x1E6978978];
            v73 = predictedPersonUniqueIdentifier;
            v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
            v41 = [v39 fetchPersonsWithLocalIdentifiers:v40 options:v38];
            firstObject3 = [v41 firstObject];

            if (firstObject3)
            {
              if (-[MADPersonIdentificationRequest allowUnverifiedIdentity](selfCopy->_request, "allowUnverifiedIdentity") & 1) != 0 || ([firstObject3 isVerified])
              {
                v43 = objc_alloc(MEMORY[0x1E69AE380]);
                localIdentifier = [firstObject3 localIdentifier];
                name = [firstObject3 name];
                mdID = [firstObject3 mdID];
                detectionType = [firstObject3 detectionType];
                isVerified = [firstObject3 isVerified];
                *&v49 = v22;
                v50 = [v43 initWithPersonIdentifier:localIdentifier personName:name mdID:mdID detectionType:detectionType verified:isVerified boundingBox:v29 andConfidence:{v31, v33, v35, v49}];

                [array addObject:v50];
              }
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v75 = v61;
              v76 = 2112;
              v77 = predictedPersonUniqueIdentifier;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to fetch with identifier %@", buf, 0x16u);
            }

            v18 = predictedPersonUniqueIdentifier;
            goto LABEL_37;
          }

          if (MediaAnalysisLogLevel() >= 6)
          {
            v54 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v75 = v61;
              v76 = 2112;
              v77 = v15;
              v52 = v54;
              v53 = "%@ No identification returns for pet %@";
              goto LABEL_45;
            }
          }
        }

LABEL_37:

        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v66 != v14);
      v13 = [obj countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v13);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v55 = [array count];
    *buf = 138412546;
    v75 = v61;
    v76 = 2048;
    v77 = v55;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu observations", buf, 0x16u);
  }

  return array;
}

- (int)run
{
  v442[1] = *MEMORY[0x1E69E9840];
  clientBundleID = [(VCPMADServiceImageAsset *)self->_imageAsset clientBundleID];
  v3 = MEMORY[0x1E696AEC0];
  taskName = [objc_opt_class() taskName];
  v382 = [v3 stringWithFormat:@"[%@][%@]", taskName, clientBundleID];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v382;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Running ...", buf, 0xCu);
    }
  }

  v7 = atomic_load(&self->_canceled);
  if ((v7 & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      asset = [(VCPMADServiceImageAsset *)self->_imageAsset asset];
      [asset fetchPropertySetsIfNeeded];
      importProperties = [asset importProperties];
      v377 = [importProperties importedBy] == 2;
    }

    else
    {
      v377 = -1;
    }

    v12 = VCPSignPostPersistentLog(isKindOfClass);
    v13 = os_signpost_id_generate(v12);

    v15 = VCPSignPostPersistentLog(v14);
    v16 = v15;
    v17 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPMADPersonIdentificationTask_FetchResults", " enableTelemetry=YES ", buf, 2u);
    }

    v380 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F49BC2C8];
    if ([(MADPersonIdentificationRequest *)self->_request includePets])
    {
      [v380 addObjectsFromArray:&unk_1F49BEC08];
    }

    v379 = [(VCPMADServiceImageAsset *)self->_imageAsset facesWithDetectionTypes:v380];
    if (v379)
    {
      v375 = objc_autoreleasePoolPush();
      v18 = [v379 count];
      if (v18)
      {
        v19 = VCPSignPostLog(v18);
        spid = os_signpost_id_generate(v19);

        v21 = VCPSignPostLog(v20);
        v22 = v21;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          signpostPayload = self->_signpostPayload;
          *buf = 138412290;
          *&buf[4] = signpostPayload;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADPersonIdentificationTask_ExistingFaces", "%@", buf, 0xCu);
        }

        firstObject = [v379 firstObject];
        photoLibrary = [firstObject photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        if ([(MADPersonIdentificationRequest *)self->_request includePets])
        {
          [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEC20];
        }

        array = [MEMORY[0x1E695DF70] array];
        v405[0] = MEMORY[0x1E69E9820];
        v405[1] = 3221225472;
        v405[2] = __37__VCPMADPersonIdentificationTask_run__block_invoke;
        v405[3] = &unk_1E834E680;
        v28 = librarySpecificFetchOptions;
        v406 = v28;
        selfCopy = self;
        v29 = array;
        v408 = v29;
        [v379 enumerateObjectsUsingBlock:v405];
        request = self->_request;
        v31 = [objc_alloc(MEMORY[0x1E69AE378]) initWithResultItems:v29 frontCameraCaptureState:v377];
        v442[0] = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v442 count:1];
        [(MADPersonIdentificationRequest *)request setResults:v32];

        v33 = MediaAnalysisLogLevel();
        if (v33 >= 6)
        {
          v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
          if (v33)
          {
            *buf = 138412290;
            *&buf[4] = v382;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Complete", buf, 0xCu);
          }
        }

        v34 = VCPSignPostPersistentLog(v33);
        v35 = v34;
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          v36 = clientBundleID;
          uTF8String = [clientBundleID UTF8String];
          *buf = 136446466;
          *&buf[4] = "Success";
          *&buf[12] = 2082;
          *&buf[14] = uTF8String;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v13, "VCPMADPersonIdentificationTask_FetchResults", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
        }

        v39 = VCPSignPostLog(v38);
        v40 = v39;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          v41 = self->_signpostPayload;
          *buf = 138412290;
          *&buf[4] = v41;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADPersonIdentificationTask_ExistingFaces", "%@", buf, 0xCu);
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v382;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ No face detected from CVPixelBuffer", buf, 0xCu);
        }

        v68 = VCPSignPostPersistentLog([(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]]);
        v28 = v68;
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
        {
          v69 = clientBundleID;
          uTF8String2 = [clientBundleID UTF8String];
          *buf = 136446466;
          *&buf[4] = "NoDetectedFaceCount";
          *&buf[12] = 2082;
          *&buf[14] = uTF8String2;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v13, "VCPMADPersonIdentificationTask_FetchResults", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v375);
      goto LABEL_279;
    }

    v42 = VCPSignPostPersistentLog(0);
    v43 = v42;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      v44 = clientBundleID;
      uTF8String3 = [clientBundleID UTF8String];
      *buf = 136446466;
      *&buf[4] = "NoExistingResults";
      *&buf[12] = 2082;
      *&buf[14] = uTF8String3;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v43, OS_SIGNPOST_INTERVAL_END, v13, "VCPMADPersonIdentificationTask_FetchResults", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x16u);
    }

    allowOnDemand = [(MADPersonIdentificationRequest *)self->_request allowOnDemand];
    if ((allowOnDemand & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v382;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Complete without on-demand disabled", buf, 0xCu);
      }

      [(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]];
      goto LABEL_279;
    }

    v47 = VCPSignPostPersistentLog(allowOnDemand);
    v376 = os_signpost_id_generate(v47);

    v49 = VCPSignPostPersistentLog(v48);
    v50 = v49;
    v51 = v376 - 1;
    if (v376 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_BEGIN, v376, "VCPMADPersonIdentificationTask_OnDemand", " enableTelemetry=YES ", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v439 = __Block_byref_object_copy__35;
    v440 = __Block_byref_object_dispose__35;
    v441 = 0;
    v399 = 0;
    v400 = &v399;
    v401 = 0x3032000000;
    v402 = __Block_byref_object_copy__35;
    v403 = __Block_byref_object_dispose__35;
    v404 = 0;
    v371 = dispatch_semaphore_create(0);
    v52 = qos_class_self();
    v53 = dispatch_get_global_queue(v52, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__VCPMADPersonIdentificationTask_run__block_invoke_419;
    block[3] = &unk_1E834E6A8;
    block[4] = self;
    v397 = buf;
    v398 = &v399;
    spida = v371;
    v396 = spida;
    dispatch_async(v53, block);

    v55 = VCPSignPostLog(v54);
    v56 = os_signpost_id_generate(v55);

    v58 = VCPSignPostLog(v57);
    v59 = v58;
    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      v60 = self->_signpostPayload;
      *v410 = 138412290;
      v411 = v60;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v56, "VCPMADPersonIdentificationTask_loadBuffer", "%@", v410, 0xCu);
    }

    cf = 0;
    v393 = 0;
    useLowResolutionPicture = [(MADPersonIdentificationRequest *)self->_request useLowResolutionPicture];
    if (useLowResolutionPicture)
    {
      imageAsset = self->_imageAsset;
      v392 = 0;
      v63 = [(VCPMADServiceImageAsset *)imageAsset loadLowResPixelBuffer:&cf orientation:&v393 error:&v392];
      v64 = v392;
      v65 = v64;
      if (!v63)
      {
        goto LABEL_75;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v66 = MEMORY[0x1E69E9C10];
        v67 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *v410 = 138412802;
          v411 = v382;
          v412 = 1024;
          *v413 = v63;
          *&v413[4] = 2112;
          *&v413[6] = v65;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to load low-res image (%d) - %@", v410, 0x1Cu);
        }
      }
    }

    else
    {
      v65 = 0;
    }

    v71 = self->_imageAsset;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (useLowResolutionPicture)
    {
      v72 = 0;
    }

    else
    {
      v72 = &v391;
    }

    if ((useLowResolutionPicture & 1) == 0)
    {
      v391 = v65;
    }

    v64 = [(VCPMADServiceImageAsset *)v71 loadPixelBuffer:&cf orientation:&v393 error:v72];
    v73 = v64;
    if ((useLowResolutionPicture & 1) == 0)
    {
      v74 = v391;

      v65 = v74;
    }

    if (v73)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v410 = 138412802;
        v411 = v382;
        v412 = 1024;
        *v413 = v73;
        *&v413[4] = 2112;
        *&v413[6] = v65;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to load image (%d) - %@", v410, 0x1Cu);
      }

      v75 = self->_request;
      v76 = MEMORY[0x1E696ABC0];
      v436 = *MEMORY[0x1E696A578];
      v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load image"];
      v437 = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v437 forKeys:&v436 count:1];
      v79 = [v76 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v78];
      [(MADPersonIdentificationRequest *)v75 setError:v79];

      if (v65)
      {
        v80 = [v65 description];
        v81 = v80;
      }

      else
      {
        v81 = @"PixelBuffer";
      }

      v103 = VCPSignPostPersistentLog(v80);
      v104 = v103;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v103))
      {
        v105 = v81;
        uTF8String4 = [(__CFString *)v81 UTF8String];
        v107 = clientBundleID;
        uTF8String5 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = uTF8String4;
        v412 = 2082;
        *v413 = uTF8String5;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v104, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
      }

      goto LABEL_278;
    }

LABEL_75:
    v82 = VCPSignPostLog(v64);
    v83 = v82;
    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
    {
      v84 = self->_signpostPayload;
      *v410 = 138412290;
      v411 = v84;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v83, OS_SIGNPOST_INTERVAL_END, v56, "VCPMADPersonIdentificationTask_loadBuffer", "%@", v410, 0xCu);
    }

    v86 = VCPSignPostLog(v85);
    v87 = os_signpost_id_generate(v86);

    v89 = VCPSignPostLog(v88);
    v90 = v89;
    if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
    {
      v91 = self->_signpostPayload;
      *v410 = 138412290;
      v411 = v91;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v90, OS_SIGNPOST_INTERVAL_BEGIN, v87, "VCPMADPersonIdentificationTask_createVisionImageRequest", "%@", v410, 0xCu);
    }

    v390 = 0;
    v92 = [VCPFaceUtils configureVNRequest:&v390 withClass:objc_opt_class() andVisionRevision:[(MADPersonIdentificationRequest *)self->_request faceDetectorVisionRevision]];
    v81 = v390;
    if (v92)
    {
      v381 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configuate VNDetectFaceRectanglesRequest", v382];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v410 = 138412290;
        v411 = v381;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
      }

      v93 = self->_request;
      v94 = MEMORY[0x1E696ABC0];
      v434 = *MEMORY[0x1E696A578];
      v372 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v381];
      v435 = v372;
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v435 forKeys:&v434 count:1];
      v97 = [v94 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v96];
      [(MADPersonIdentificationRequest *)v93 setError:v97];

      v99 = VCPSignPostPersistentLog(v98);
      v100 = v99;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
      {
        v101 = clientBundleID;
        uTF8String6 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = "ConfigureVNDetectFaceRectanglesRequest";
        v412 = 2082;
        *v413 = uTF8String6;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v100, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
      }

      goto LABEL_277;
    }

    v389 = 0;
    v109 = [VCPFaceUtils configureVNRequest:&v389 withClass:objc_opt_class() andProcessingVersion:15];
    v381 = v389;
    if (v109)
    {
      v3812 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configuate VNCreateFaceprintRequest", v382];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v410 = 138412290;
        v411 = v3812;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
      }

      v110 = self->_request;
      v111 = MEMORY[0x1E696ABC0];
      v432 = *MEMORY[0x1E696A578];
      v370 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3812];
      v433 = v370;
      v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v433 forKeys:&v432 count:1];
      v114 = [v111 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v113];
      [(MADPersonIdentificationRequest *)v110 setError:v114];

      v116 = VCPSignPostPersistentLog(v115);
      v117 = v116;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
      {
        v118 = clientBundleID;
        uTF8String7 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = "ConfigureVNCreateFaceprintRequest";
        v412 = 2082;
        *v413 = uTF8String7;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v117, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
      }

      goto LABEL_276;
    }

    v367 = v81;
    includePets = [(MADPersonIdentificationRequest *)self->_request includePets];
    if (includePets)
    {
      v388 = 0;
      v121 = [VCPFaceUtils configureVNRequest:&v388 withClass:objc_opt_class() andProcessingVersion:15];
      v3812 = v388;
      if (v121)
      {
        v3813 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configure VNRecognizeAnimalFacesRequest", v382];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v410 = 138412290;
          v411 = v3813;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
        }

        v122 = self->_request;
        v123 = MEMORY[0x1E696ABC0];
        v430 = *MEMORY[0x1E696A578];
        v368 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3813];
        v431 = v368;
        v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v431 forKeys:&v430 count:1];
        v126 = [v123 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v125];
        [(MADPersonIdentificationRequest *)v122 setError:v126];

        log = VCPSignPostPersistentLog(v127);
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
        {
          v128 = clientBundleID;
          uTF8String8 = [clientBundleID UTF8String];
          *v410 = 136446466;
          v411 = "ConfigureVNRecognizeAnimalFacesRequest";
          v412 = 2082;
          *v413 = uTF8String8;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, log, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
        }

        goto LABEL_275;
      }

      v387 = 0;
      v173 = [VCPFaceUtils configureVNRequest:&v387 withClass:objc_opt_class() andProcessingVersion:15];
      includePets = v387;
      v3813 = includePets;
      if (v173)
      {
        log = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to configure VNCreateAnimalprintRequest", v382];
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v410 = 138412290;
          v411 = log;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
        }

        v174 = self->_request;
        v175 = MEMORY[0x1E696ABC0];
        v428 = *MEMORY[0x1E696A578];
        v176 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", log];
        v429 = v176;
        v177 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v429 forKeys:&v428 count:1];
        v178 = [v175 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v177];
        [(MADPersonIdentificationRequest *)v174 setError:v178];

        v180 = VCPSignPostPersistentLog(v179);
        v181 = v180;
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v180))
        {
          v182 = clientBundleID;
          uTF8String9 = [clientBundleID UTF8String];
          *v410 = 136446466;
          v411 = "ConfigureVNCreateAnimalprintRequest";
          v412 = 2082;
          *v413 = uTF8String9;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v181, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
        }

        goto LABEL_275;
      }
    }

    else
    {
      v3813 = 0;
      v3812 = 0;
    }

    v130 = VCPSignPostLog(includePets);
    v131 = v130;
    if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v130))
    {
      v132 = self->_signpostPayload;
      *v410 = 138412290;
      v411 = v132;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v131, OS_SIGNPOST_INTERVAL_END, v87, "VCPMADPersonIdentificationTask_createVisionImageRequest", "%@", v410, 0xCu);
    }

    v133 = objc_alloc(MEMORY[0x1E69845B8]);
    v134 = cf;
    session = [*(*&buf[8] + 40) session];
    log = [v133 initWithCVPixelBuffer:v134 options:MEMORY[0x1E695E0F8] session:session];

    v137 = VCPSignPostPersistentLog(v136);
    v361 = os_signpost_id_generate(v137);

    v139 = VCPSignPostPersistentLog(v138);
    v140 = v139;
    v141 = v361 - 1;
    if (v361 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
    {
      *v410 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v140, OS_SIGNPOST_INTERVAL_BEGIN, v361, "VCPMADPersonIdentificationTask_detectFace", " enableTelemetry=YES ", v410, 2u);
    }

    v427 = v81;
    v142 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v427 count:1];
    v386 = 0;
    v143 = [log performRequests:v142 error:&v386];
    v366 = v386;

    if ((v143 & 1) == 0)
    {
      v366 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to detect faces - %@", v382, v366];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v410 = 138412290;
        v411 = v366;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
      }

      v157 = self->_request;
      v158 = MEMORY[0x1E696ABC0];
      v425 = *MEMORY[0x1E696A578];
      v156 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v366];
      photoLibrary2 = v366;
      v426 = v156;
      v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
      v162 = [v158 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v161];
      [(MADPersonIdentificationRequest *)v157 setError:v162];

      v164 = VCPSignPostPersistentLog(v163);
      v165 = v164;
      if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v164))
      {
        v166 = clientBundleID;
        uTF8String10 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = uTF8String10;
        v412 = 2050;
        *v413 = -1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v165, OS_SIGNPOST_INTERVAL_END, v361, "VCPMADPersonIdentificationTask_detectFace", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
      }

      v169 = VCPSignPostPersistentLog(v168);
      v170 = v169;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v169))
      {
        v171 = clientBundleID;
        uTF8String11 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = "DetectFace";
        v412 = 2082;
        *v413 = uTF8String11;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v170, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
      }

      goto LABEL_274;
    }

    results = [(__CFString *)v81 results];
    v360 = [results count];

    v146 = VCPSignPostPersistentLog(v145);
    v147 = v146;
    if (v141 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v146))
    {
      v148 = clientBundleID;
      uTF8String12 = [clientBundleID UTF8String];
      *v410 = 136446466;
      v411 = uTF8String12;
      v412 = 2050;
      *v413 = v360;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v147, OS_SIGNPOST_INTERVAL_END, v361, "VCPMADPersonIdentificationTask_detectFace", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
    }

    if ([(MADPersonIdentificationRequest *)self->_request maximumFaceCount]&& v360 >= [(MADPersonIdentificationRequest *)self->_request maximumFaceCount])
    {
      results2 = [(__CFString *)v81 results];
      v152 = [results2 sortedArrayUsingComparator:&__block_literal_global_465];

      v185 = [v152 subarrayWithRange:0, [(MADPersonIdentificationRequest *)self->_request maximumFaceCount]];
      [v381 setInputFaceObservations:v185];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v186 = MEMORY[0x1E69E9C10];
        v187 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
        {
          results3 = [(__CFString *)v81 results];
          v189 = [results3 count];
          inputFaceObservations = [v381 inputFaceObservations];
          v191 = [inputFaceObservations count];
          *v410 = 138412802;
          v411 = v382;
          v412 = 2048;
          *v413 = v189;
          *&v413[8] = 2048;
          *&v413[10] = v191;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu faces, identifying top %lu faces (by confidence) ...", v410, 0x20u);
        }
      }
    }

    else
    {
      results4 = [(__CFString *)v81 results];
      [v381 setInputFaceObservations:results4];

      v151 = v360;
      if (MediaAnalysisLogLevel() < 7)
      {
        goto LABEL_146;
      }

      v152 = MEMORY[0x1E69E9C10];
      v153 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        results5 = [(__CFString *)v81 results];
        v155 = [results5 count];
        *v410 = 138412546;
        v411 = v382;
        v412 = 2048;
        *v413 = v155;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu faces, identifying ...", v410, 0x16u);

        v152 = MEMORY[0x1E69E9C10];
      }
    }

    v151 = v360;
LABEL_146:
    includePets2 = [(MADPersonIdentificationRequest *)self->_request includePets];
    if (!includePets2)
    {
      v208 = 0;
      goto LABEL_177;
    }

    v193 = VCPSignPostPersistentLog(includePets2);
    v362 = os_signpost_id_generate(v193);

    v195 = VCPSignPostPersistentLog(v194);
    v196 = v195;
    v197 = v362 - 1;
    if (v362 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v195))
    {
      *v410 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v196, OS_SIGNPOST_INTERVAL_BEGIN, v362, "VCPMADPersonIdentificationTask_detectAnimal", " enableTelemetry=YES ", v410, 2u);
    }

    v424 = v3812;
    v198 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v424 count:1];
    v385 = v366;
    v199 = [log performRequests:v198 error:&v385];
    v200 = v385;

    v366 = v200;
    if ((v199 & 1) == 0)
    {
      v200 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to recognize animal faces - %@", v382, v200];
      v364 = v200;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v214 = MEMORY[0x1E69E9C10];
        v215 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
        {
          *v410 = 138412290;
          v411 = v200;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
        }
      }

      v216 = self->_request;
      v217 = MEMORY[0x1E696ABC0];
      v422 = *MEMORY[0x1E696A578];
      v213 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v200];
      v423 = v213;
      v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v423 forKeys:&v422 count:1];
      v220 = [v217 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v219];
      [(MADPersonIdentificationRequest *)v216 setError:v220];

      v222 = VCPSignPostPersistentLog(v221);
      v223 = v222;
      if (v197 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v222))
      {
        v224 = clientBundleID;
        uTF8String13 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = uTF8String13;
        v412 = 2050;
        *v413 = -1;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v223, OS_SIGNPOST_INTERVAL_END, v362, "VCPMADPersonIdentificationTask_detectAnimal", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
      }

      v227 = VCPSignPostPersistentLog(v226);
      v228 = v227;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
      {
        v229 = clientBundleID;
        uTF8String14 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = "RecognizeAnimalFace";
        v412 = 2082;
        *v413 = uTF8String14;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v228, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
      }

      goto LABEL_251;
    }

    results6 = [v3812 results];
    v358 = [results6 count];

    v203 = VCPSignPostPersistentLog(v202);
    v204 = v203;
    if (v197 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v203))
    {
      v205 = clientBundleID;
      uTF8String15 = [clientBundleID UTF8String];
      *v410 = 136446466;
      v411 = uTF8String15;
      v412 = 2050;
      *v413 = v358;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v204, OS_SIGNPOST_INTERVAL_END, v362, "VCPMADPersonIdentificationTask_detectAnimal", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
    }

    if ([(MADPersonIdentificationRequest *)self->_request maximumFaceCount]&& v358 >= [(MADPersonIdentificationRequest *)self->_request maximumFaceCount])
    {
      results7 = [v3812 results];
      v209 = [results7 sortedArrayUsingComparator:&__block_literal_global_473];

      v232 = [v209 subarrayWithRange:0, [(MADPersonIdentificationRequest *)self->_request maximumFaceCount]];
      [v3813 setInputDetectedObjectObservations:v232];

      if (MediaAnalysisLogLevel() >= 7)
      {
        v233 = MEMORY[0x1E69E9C10];
        v234 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v233, OS_LOG_TYPE_DEBUG))
        {
          results8 = [v3812 results];
          v236 = [results8 count];
          inputDetectedObjectObservations = [v3813 inputDetectedObjectObservations];
          v238 = [inputDetectedObjectObservations count];
          *v410 = 138412802;
          v411 = v382;
          v412 = 2048;
          *v413 = v236;
          *&v413[8] = 2048;
          *&v413[10] = v238;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu animal faces, identifying top %lu faces (by confidence) ...", v410, 0x20u);
        }
      }
    }

    else
    {
      results9 = [v3812 results];
      [v3813 setInputDetectedObjectObservations:results9];

      includePets2 = MediaAnalysisLogLevel();
      v208 = v358;
      if (includePets2 < 7)
      {
        v151 = v360;
        goto LABEL_177;
      }

      v209 = MEMORY[0x1E69E9C10];
      v210 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEBUG))
      {
        results10 = [v3812 results];
        v212 = [results10 count];
        *v410 = 138412546;
        v411 = v382;
        v412 = 2048;
        *v413 = v212;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detected %lu animal faces, identifying ...", v410, 0x16u);

        v209 = MEMORY[0x1E69E9C10];
      }
    }

    v208 = v358;
    v151 = v360;
LABEL_177:
    if (!(v151 | v208))
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v266 = MEMORY[0x1E69E9C10];
        v267 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v266, OS_LOG_TYPE_DEBUG))
        {
          *v410 = 138412290;
          v411 = v382;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ No human nor animal face detected from CVPixelBuffer", v410, 0xCu);
        }
      }

      v268 = VCPSignPostPersistentLog([(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]]);
      photoLibrary2 = v268;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v268))
      {
        v269 = clientBundleID;
        uTF8String16 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = "NoRecognizedFaceCount";
        v412 = 2082;
        *v413 = uTF8String16;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, photoLibrary2, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
      }

      goto LABEL_274;
    }

    if (v151)
    {
      v239 = VCPSignPostPersistentLog(includePets2);
      v363 = os_signpost_id_generate(v239);

      v241 = VCPSignPostPersistentLog(v240);
      v242 = v241;
      v243 = v363 - 1;
      if (v363 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v241))
      {
        *v410 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v242, OS_SIGNPOST_INTERVAL_BEGIN, v363, "VCPMADPersonIdentificationTask_generateFaceprint", " enableTelemetry=YES ", v410, 2u);
      }

      v421 = v381;
      v244 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v421 count:1];
      v384 = v366;
      v245 = [log performRequests:v244 error:&v384];
      v356 = v384;

      if ((v245 & 1) == 0)
      {
        v356 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to print faces - %@", v382, v356];
        v364 = v356;
        if (MediaAnalysisLogLevel() >= 3)
        {
          v272 = MEMORY[0x1E69E9C10];
          v273 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
          {
            *v410 = 138412290;
            v411 = v364;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
          }

          v356 = v364;
        }

        v274 = self->_request;
        v275 = MEMORY[0x1E696ABC0];
        v419 = *MEMORY[0x1E696A578];
        v271 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v356];
        v420 = v271;
        v277 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v420 forKeys:&v419 count:1];
        v278 = [v275 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v277];
        [(MADPersonIdentificationRequest *)v274 setError:v278];

        v280 = VCPSignPostPersistentLog(v279);
        v281 = v280;
        if (v243 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v280))
        {
          v282 = clientBundleID;
          uTF8String17 = [clientBundleID UTF8String];
          *v410 = 136446466;
          v411 = uTF8String17;
          v412 = 2050;
          *v413 = -1;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v281, OS_SIGNPOST_INTERVAL_END, v363, "VCPMADPersonIdentificationTask_generateFaceprint", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
        }

        v285 = VCPSignPostPersistentLog(v284);
        v286 = v285;
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v285))
        {
          v287 = clientBundleID;
          uTF8String18 = [clientBundleID UTF8String];
          *v410 = 136446466;
          v411 = "GenerateFaceprint";
          v412 = 2082;
          *v413 = uTF8String18;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v286, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
        }

        v289 = v356;
LABEL_250:
        v366 = v289;
LABEL_251:
        photoLibrary2 = v364;
LABEL_274:

LABEL_275:
        v117 = v3813;
LABEL_276:

        v100 = v3812;
LABEL_277:

        v104 = v381;
LABEL_278:

        CF<__CVBuffer *>::~CF(&cf);
        _Block_object_dispose(&v399, 8);

        _Block_object_dispose(buf, 8);
LABEL_279:

        v8 = 0;
        goto LABEL_280;
      }

      v247 = VCPSignPostPersistentLog(v246);
      v248 = v247;
      if (v243 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v247))
      {
        v249 = clientBundleID;
        uTF8String19 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = uTF8String19;
        v412 = 2050;
        *v413 = v360;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v248, OS_SIGNPOST_INTERVAL_END, v363, "VCPMADPersonIdentificationTask_generateFaceprint", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
      }

      v366 = v356;
    }

    if (!v208)
    {
      goto LABEL_197;
    }

    includePets3 = [(MADPersonIdentificationRequest *)self->_request includePets];
    if (!includePets3)
    {
      goto LABEL_197;
    }

    v252 = VCPSignPostPersistentLog(includePets3);
    v253 = os_signpost_id_generate(v252);

    v255 = VCPSignPostPersistentLog(v254);
    v256 = v255;
    v257 = v253 - 1;
    if (v253 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v255))
    {
      *v410 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v256, OS_SIGNPOST_INTERVAL_BEGIN, v253, "VCPMADPersonIdentificationTask_generateAnimalprint", " enableTelemetry=YES ", v410, 2u);
    }

    v418 = v3813;
    v258 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v418 count:1];
    v383 = v366;
    v259 = [log performRequests:v258 error:&v383];
    v364 = v383;

    if (v259)
    {
      v261 = VCPSignPostPersistentLog(v260);
      v262 = v261;
      if (v257 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v261))
      {
        v263 = clientBundleID;
        uTF8String20 = [clientBundleID UTF8String];
        *v410 = 136446466;
        v411 = uTF8String20;
        v412 = 2050;
        *v413 = v208;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v262, OS_SIGNPOST_INTERVAL_END, v253, "VCPMADPersonIdentificationTask_generateAnimalprint", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
      }

      v81 = v367;
      v366 = v364;
LABEL_197:
      results11 = [v381 results];
      v359 = v208;
      if ([results11 count])
      {
      }

      else
      {
        results12 = [v3813 results];
        v291 = [results12 count] == 0;

        if (v291)
        {
          if (MediaAnalysisLogLevel() >= 7)
          {
            v336 = MEMORY[0x1E69E9C10];
            v337 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v336, OS_LOG_TYPE_DEBUG))
            {
              *v410 = 138412290;
              v411 = v382;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ No faces nor animals to identify from CVPixelBuffer", v410, 0xCu);
            }
          }

          v338 = VCPSignPostPersistentLog([(MADPersonIdentificationRequest *)self->_request setResults:MEMORY[0x1E695E0F0]]);
          photoLibrary2 = v338;
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v338))
          {
            v339 = clientBundleID;
            uTF8String21 = [clientBundleID UTF8String];
            *v410 = 136446466;
            v411 = "NoFaceprintResultCount";
            v412 = 2082;
            *v413 = uTF8String21;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, photoLibrary2, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
          }

          v81 = v367;
          goto LABEL_274;
        }
      }

      dispatch_semaphore_wait(spida, 0xFFFFFFFFFFFFFFFFLL);
      photoLibrary2 = [*(*&buf[8] + 40) photoLibrary];
      if (+[MADManagedKeyValueStore isMACDReadEnabled])
      {
        mad_fetchRequest = [photoLibrary2 mad_fetchRequest];
        v355 = [mad_fetchRequest dataStoreValueForKey:@"NumberOfAssetsAnalyzedForPhotosFaceProcessing"];
      }

      else
      {
        mad_fetchRequest = [VCPDatabaseReader databaseForPhotoLibrary:photoLibrary2];
        v355 = [mad_fetchRequest valueForKey:@"NumberOfAssetsAnalyzedForPhotosFaceProcessing"];
      }

      array2 = [MEMORY[0x1E695DF70] array];
      results13 = [v381 results];
      v294 = [results13 count] == 0;

      if (!v294)
      {
        v296 = VCPSignPostPersistentLog(v295);
        v357 = os_signpost_id_generate(v296);

        v298 = VCPSignPostPersistentLog(v297);
        v299 = v298;
        if (v357 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v298))
        {
          *v410 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v299, OS_SIGNPOST_INTERVAL_BEGIN, v357, "VCPMADPersonIdentificationTask_identifyFace", " enableTelemetry=YES ", v410, 2u);
        }

        if ([(MADPersonIdentificationRequest *)self->_request useVIPModel])
        {
          results14 = [v381 results];
          personsModel = [*(*&buf[8] + 40) personsModel];
          petsModel = [*(*&buf[8] + 40) petsModel];
          v303 = [(VCPMADPersonIdentificationTask *)self identifyObservations:results14 personsModel:personsModel petsModel:petsModel photoLibrary:photoLibrary2];
        }

        else
        {
          results14 = [v381 results];
          personsModel = [*(*&buf[8] + 40) gallery];
          petsModel = [(VCPMADPersonIdentificationTask *)self identifyObservations:results14 gallery:personsModel photoLibrary:photoLibrary2];
          v303 = petsModel;
        }

        v81 = v367;

        v304 = VCPSignPostPersistentLog([array2 addObjectsFromArray:v303]);
        v305 = v304;
        if (v357 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v304))
        {
          v306 = clientBundleID;
          uTF8String22 = [clientBundleID UTF8String];
          *v410 = 136446722;
          v411 = uTF8String22;
          v412 = 2050;
          *v413 = v360;
          *&v413[8] = 2050;
          *&v413[10] = v355;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v305, OS_SIGNPOST_INTERVAL_END, v357, "VCPMADPersonIdentificationTask_identifyFace", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld CountLibraryAssets=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v410, 0x20u);
          v81 = v367;
        }
      }

      results15 = [v3813 results];
      if ([results15 count])
      {
        includePets4 = [(MADPersonIdentificationRequest *)self->_request includePets];

        if (!includePets4)
        {
          goto LABEL_266;
        }

        v311 = VCPSignPostPersistentLog(v310);
        v312 = os_signpost_id_generate(v311);

        v314 = VCPSignPostPersistentLog(v313);
        v315 = v314;
        if (v312 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v314))
        {
          *v410 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v315, OS_SIGNPOST_INTERVAL_BEGIN, v312, "VCPMADPersonIdentificationTask_identifyAnimal", " enableTelemetry=YES ", v410, 2u);
        }

        if ([(MADPersonIdentificationRequest *)self->_request useVIPModel])
        {
          results16 = [v3813 results];
          personsModel2 = [*(*&buf[8] + 40) personsModel];
          petsModel2 = [*(*&buf[8] + 40) petsModel];
          results15 = [(VCPMADPersonIdentificationTask *)self identifyObservations:results16 personsModel:personsModel2 petsModel:petsModel2 photoLibrary:photoLibrary2];
        }

        else
        {
          results16 = [v3813 results];
          personsModel2 = [*(*&buf[8] + 40) gallery];
          petsModel2 = [(VCPMADPersonIdentificationTask *)self identifyObservations:results16 gallery:personsModel2 photoLibrary:photoLibrary2];
          results15 = petsModel2;
        }

        v341 = VCPSignPostPersistentLog([array2 addObjectsFromArray:results15]);
        v342 = v341;
        v81 = v367;
        if (v312 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v341))
        {
          v343 = clientBundleID;
          uTF8String23 = [clientBundleID UTF8String];
          *v410 = 136446722;
          v411 = uTF8String23;
          v412 = 2050;
          *v413 = v359;
          *&v413[8] = 2050;
          *&v413[10] = v355;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v342, OS_SIGNPOST_INTERVAL_END, v312, "VCPMADPersonIdentificationTask_identifyAnimal", "Client=%{public, signpost.telemetry:string1}s CountFaces=%{public, signpost.telemetry:number1}lld CountLibraryAssets=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v410, 0x20u);
          v81 = v367;
        }
      }

LABEL_266:
      v345 = VCPSignPostPersistentLog(v310);
      v346 = v345;
      if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v345))
      {
        v347 = clientBundleID;
        uTF8String24 = [clientBundleID UTF8String];
        *v410 = 136446978;
        v411 = "Success";
        v412 = 2082;
        *v413 = uTF8String24;
        *&v413[8] = 2050;
        *&v413[10] = v360;
        v414 = 2050;
        v415 = v355;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v346, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s CountFaces=%{public, signpost.telemetry:number1}lld CountLibraryAssets=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v410, 0x2Au);
      }

      v349 = self->_request;
      v350 = [objc_alloc(MEMORY[0x1E69AE378]) initWithResultItems:array2 frontCameraCaptureState:v377];
      v409 = v350;
      v351 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v409 count:1];
      [(MADPersonIdentificationRequest *)v349 setResults:v351];

      [v400[5] reset];
      if (MediaAnalysisLogLevel() >= 6)
      {
        v352 = MEMORY[0x1E69E9C10];
        v353 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v352, OS_LOG_TYPE_INFO))
        {
          *v410 = 138412290;
          v411 = v382;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Complete with on-demand analysis", v410, 0xCu);
        }
      }

      goto LABEL_274;
    }

    v364 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to print animals - %@", v382, v364];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v319 = MEMORY[0x1E69E9C10];
      v320 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v319, OS_LOG_TYPE_ERROR))
      {
        *v410 = 138412290;
        v411 = v364;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", v410, 0xCu);
      }
    }

    v321 = self->_request;
    v322 = MEMORY[0x1E696ABC0];
    v416 = *MEMORY[0x1E696A578];
    v378 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v364];
    v417 = v378;
    v324 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v417 forKeys:&v416 count:1];
    v325 = [v322 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v324];
    [(MADPersonIdentificationRequest *)v321 setError:v325];

    v327 = VCPSignPostPersistentLog(v326);
    v328 = v327;
    if (v257 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v327))
    {
      v329 = clientBundleID;
      uTF8String25 = [clientBundleID UTF8String];
      *v410 = 136446466;
      v411 = uTF8String25;
      v412 = 2050;
      *v413 = -1;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v328, OS_SIGNPOST_INTERVAL_END, v253, "VCPMADPersonIdentificationTask_generateAnimalprint", "Client=%{public, signpost.telemetry:string1}s CountAnimalFaces=%{public, signpost.telemetry:number1}lld  enableTelemetry=YES ", v410, 0x16u);
    }

    v332 = VCPSignPostPersistentLog(v331);
    v333 = v332;
    if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v332))
    {
      v334 = clientBundleID;
      uTF8String26 = [clientBundleID UTF8String];
      *v410 = 136446466;
      v411 = "GenerateAnimalprint";
      v412 = 2082;
      *v413 = uTF8String26;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v333, OS_SIGNPOST_INTERVAL_END, v376, "VCPMADPersonIdentificationTask_OnDemand", "Result=%{public, signpost.telemetry:string1}s Client=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", v410, 0x16u);
    }

    v81 = v367;
    v289 = v364;
    goto LABEL_250;
  }

  v8 = -128;
LABEL_280:

  return v8;
}

void __37__VCPMADPersonIdentificationTask_run__block_invoke(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 personLocalIdentifier];

  if (v3)
  {
    v4 = [MEMORY[0x1E6978978] fetchPersonWithFace:v27 options:*(a1 + 32)];
    if ([v4 count])
    {
      v5 = [v4 firstObject];
      if ([*(*(a1 + 40) + 8) allowUnverifiedIdentity] & 1) != 0 || (objc_msgSend(v5, "isVerified"))
      {
        [v27 centerX];
        v7 = v6;
        [v27 centerY];
        v9 = v8;
        [v27 size];
        +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v7, v9, v10, [v27 sourceWidth], objc_msgSend(v27, "sourceHeight"));
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = objc_alloc(MEMORY[0x1E69AE380]);
        v20 = [v5 localIdentifier];
        v21 = [v5 name];
        v22 = [v5 mdID];
        v23 = [v5 detectionType];
        v24 = [v5 isVerified];
        LODWORD(v25) = 1.0;
        v26 = [v19 initWithPersonIdentifier:v20 personName:v21 mdID:v22 detectionType:v23 verified:v24 boundingBox:v12 andConfidence:{v14, v16, v18, v25}];

        [*(a1 + 48) addObject:v26];
      }
    }
  }
}

intptr_t __37__VCPMADPersonIdentificationTask_run__block_invoke_419(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = *(*(a1 + 32) + 24);
    v23 = 138412290;
    v24 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPMADPersonIdentificationTask_loadContext", "%@", &v23, 0xCu);
  }

  v8 = +[VCPMADPersonIdentificationTaskResource sharedResource];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = +[VCPMADResourceManager sharedManager];
  v12 = [v11 activateResource:*(*(*(a1 + 48) + 8) + 40)];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [*(*(a1 + 32) + 8) useVIPModel];
  v16 = *(*(*(a1 + 48) + 8) + 40);
  if (v15)
  {
    v17 = [v16 personsModel];
    v18 = [*(*(a1 + 32) + 8) includePets];
    if (v18)
    {
      v18 = [*(*(*(a1 + 48) + 8) + 40) petsModel];
    }
  }

  else
  {
    v18 = [v16 gallery];
  }

  v19 = VCPSignPostLog(v18);
  v20 = v19;
  if (v3 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v19))
  {
    v21 = *(*(a1 + 32) + 24);
    v23 = 138412290;
    v24 = v21;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v3, "VCPMADPersonIdentificationTask_loadContext", "%@", &v23, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __37__VCPMADPersonIdentificationTask_run__block_invoke_462(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 boundingBox];
  v7 = v6;
  [v4 boundingBox];
  v9 = v8;
  [v5 boundingBox];
  v11 = v10;
  [v5 boundingBox];
  if (v7 * v9 > v11 * v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v7 * v9 < v11 * v12;
  }

  return v13;
}

uint64_t __37__VCPMADPersonIdentificationTask_run__block_invoke_471(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 boundingBox];
  v7 = v6;
  [v4 boundingBox];
  v9 = v8;
  [v5 boundingBox];
  v11 = v10;
  [v5 boundingBox];
  if (v7 * v9 > v11 * v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v7 * v9 < v11 * v12;
  }

  return v13;
}

@end