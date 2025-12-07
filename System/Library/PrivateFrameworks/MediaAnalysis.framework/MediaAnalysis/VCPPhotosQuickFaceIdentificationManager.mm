@interface VCPPhotosQuickFaceIdentificationManager
- (BOOL)_faceProcessingPassGoalWithExtendTimeout:(id)timeout;
- (BOOL)_keepCurrentPersonsModelWithExtendTimeout:(id)timeout;
- (BOOL)_modelLastGenerationDidExceedTimeIntervalForType:(unint64_t)type;
- (BOOL)_needToGenerateModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time withExtendTimeout:(id)timeout;
- (BOOL)_persistPersonsModel:(id)model evaluationMode:(BOOL)mode error:(id *)error;
- (BOOL)_persistPetsModel:(id)model error:(id *)error;
- (VCPPhotosQuickFaceIdentificationManager)initWithPhotoLibrary:(id)library;
- (id)_fetchPersonsToFeedVIPModel:(BOOL)model allowUnverifiedPerson:(BOOL)person;
- (id)_fetchPetsToFeedVIPModel;
- (id)fetchEntityForModelType:(unint64_t)type evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person;
- (int)_classifyFaces:(id)faces forAsset:(id)asset detectedPersons:(id *)persons;
- (int)_generatePersonsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person;
- (int)_generatePetsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel;
- (int)_loadPersonsModelAndInitializeFaceAnalyzer;
- (int)_loadPetsModel;
- (int)classifyVIPPets;
- (int)generateVIPModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person modelGenerated:(BOOL *)generated extendTimeout:(id)timeout andCancel:(id)cancel;
- (int)loadPersonsModelAndInitializeFaceAnalyzerWrapper;
- (int)processAsset:(id)asset onDemandDetection:(BOOL)detection detectedFaces:(id *)faces detectedPersons:(id *)persons;
- (void)personIdentificationForSyndicationPhotoLibrary:(id)library withCancelOrExtendTimeoutBlock:(id)block;
@end

@implementation VCPPhotosQuickFaceIdentificationManager

- (VCPPhotosQuickFaceIdentificationManager)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = VCPPhotosQuickFaceIdentificationManager;
  v6 = [(VCPPhotosQuickFaceIdentificationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = dispatch_queue_create("com.apple.mediaanalysis.quickfaceid.management", 0);
    management = v7->_management;
    v7->_management = v8;
  }

  return v7;
}

- (int)loadPersonsModelAndInitializeFaceAnalyzerWrapper
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  management = self->_management;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__VCPPhotosQuickFaceIdentificationManager_loadPersonsModelAndInitializeFaceAnalyzerWrapper__block_invoke;
  v5[3] = &unk_1E834D538;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(management, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__91__VCPPhotosQuickFaceIdentificationManager_loadPersonsModelAndInitializeFaceAnalyzerWrapper__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2] && !result[1])
  {
    result = [result _loadPersonsModelAndInitializeFaceAnalyzer];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int)_loadPersonsModelAndInitializeFaceAnalyzer
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:self->_photoLibrary];
  if (_os_feature_enabled_impl())
  {
    vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)self->_photoLibrary vcp_visionCacheStorageDirectoryURL];
    v38 = 0;
    v5 = [objc_alloc(MEMORY[0x1E69E0678]) initWithClient:0 path:vcp_visionCacheStorageDirectoryURL error:&v38];
    v6 = v38;
    gallery = self->_gallery;
    self->_gallery = v5;

    v8 = self->_gallery;
    if (!v8)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VUWGallery instance - %@", buf, 0xCu);
      }

      goto LABEL_43;
    }

    faceprintRevision = [(VUWGallery *)v8 faceprintRevision];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v40 = faceprintRevision;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Gallery uses faceprint with revision %ld", buf, 0xCu);
    }

    if (faceprintRevision == 3737841669)
    {
      v10 = 15;
    }

    else
    {
      v10 = 11;
    }

    [v3 setProcessingVersion:v10];
LABEL_26:

    v32 = [[VCPFaceAnalyzer alloc] initWithContext:v3];
    faceAnalyzer = self->_faceAnalyzer;
    p_faceAnalyzer = &self->_faceAnalyzer;
    *p_faceAnalyzer = v32;

    if (*p_faceAnalyzer)
    {
      v35 = 0;
      goto LABEL_44;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID: failed to initialize face analyzer", buf, 2u);
    }

LABEL_43:
    v35 = -18;
    goto LABEL_44;
  }

  v11 = mach_absolute_time();
  v12 = VCPSignPostLog(v11);
  v13 = os_signpost_id_generate(v12);

  v15 = VCPSignPostLog(v14);
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPPersonVIPLoadModel", "", buf, 2u);
  }

  vcp_visionCacheStorageDirectoryURL = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  if (vcp_visionCacheStorageDirectoryURL)
  {
    v37 = 0;
    v17 = [VCPFaceIDModel loadVIPModelAtPath:vcp_visionCacheStorageDirectoryURL withVIPType:0 error:&v37];
    v6 = v37;
    personsModel = self->_personsModel;
    self->_personsModel = v17;

    if (!self->_personsModel)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Model: cannot load Persons Model: %@", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v20 = VCPSignPostLog(v19);
    v21 = v20;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v13, "VCPPersonVIPLoadModel", "", buf, 2u);
    }

    if (v11)
    {
      v22 = mach_absolute_time();
      VCPPerformance_LogMeasurement("VCPPersonVIPLoadModel", v22 - v11);
    }

    configuration = [(VNPersonsModel *)self->_personsModel configuration];
    faceprintRequestRevision = [configuration faceprintRequestRevision];

    [v3 setProcessingVersion:{-[VCPPhotosQuickFaceIdentificationManager faceProcessingVersionFromVNFaceprintRequestRevision:](self, "faceProcessingVersionFromVNFaceprintRequestRevision:", faceprintRequestRevision)}];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      configuration2 = [(VNPersonsModel *)self->_personsModel configuration];
      faceprintRequestRevision2 = [configuration2 faceprintRequestRevision];
      processingVersion = [v3 processingVersion];
      *buf = 134218240;
      v40 = faceprintRequestRevision2;
      v41 = 1024;
      v42 = processingVersion;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID Model: model with VNCreateFaceprintRequest revision %lu (FaceProcessing Version%d)", buf, 0x12u);
    }

    v28 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:self->_photoLibrary];
    currentProcessingVersion = [v28 currentProcessingVersion];

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v31 = VCPMAGetRevisionForVisionModel(v30, currentProcessingVersion);
      *buf = 134218240;
      v40 = v31;
      v41 = 1024;
      v42 = currentProcessingVersion;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID Model: system is using VNCreateFaceprintRequest revision %lu (FaceProcessing Version%d)", buf, 0x12u);
    }

    goto LABEL_26;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Model: persistent storageDirectoryURL is nil", buf, 2u);
  }

  v35 = -50;
LABEL_44:

  return v35;
}

- (int)_loadPetsModel
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = mach_absolute_time();
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPPetVIPLoadModel", "", buf, 2u);
  }

  v9 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  if (v9)
  {
    v19 = 0;
    v10 = [VCPFaceIDModel loadVIPModelAtPath:v9 withVIPType:1 error:&v19];
    v11 = v19;
    petsModel = self->_petsModel;
    p_petsModel = &self->_petsModel;
    *p_petsModel = v10;

    if (*p_petsModel)
    {
      v15 = VCPSignPostLog(v14);
      v16 = v15;
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_END, v5, "VCPPetVIPLoadModel", "", buf, 2u);
      }

      if (v3)
      {
        v17 = mach_absolute_time();
        VCPPerformance_LogMeasurement("VCPPetVIPLoadModel", v17 - v3);
        LODWORD(v3) = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet Model: cannot load Model: %@", buf, 0xCu);
      }

      LODWORD(v3) = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Pet Model: persistent storageDirectoryURL is nil; skip loading Model", buf, 2u);
    }

    LODWORD(v3) = -50;
  }

  return v3;
}

- (int)_classifyFaces:(id)faces forAsset:(id)asset detectedPersons:(id *)persons
{
  v92 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  assetCopy = asset;
  v49 = facesCopy;
  if (![facesCopy count])
  {
    goto LABEL_31;
  }

  v8 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  v55 = [v8 stringWithFormat:@"[%@][QuickFaceID Classify]", localIdentifier];

  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v49, "count")}];
  v53 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BECF8];
  personsCopy = persons;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v49;
  v10 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (!v10)
  {
    goto LABEL_23;
  }

  v52 = *v79;
  do
  {
    v11 = 0;
    do
    {
      if (*v79 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v78 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = MEMORY[0x1E696AEC0];
      localIdentifier2 = [v12 localIdentifier];
      v16 = [v14 stringWithFormat:@"%@[%@]", v55, localIdentifier2];

      imageprintWrapper = [v12 imageprintWrapper];
      data = [imageprintWrapper data];

      v19 = [VCPFaceIDModel faceObservationFromFaceprintData:data];
      v72 = 0;
      v73 = &v72;
      v74 = 0x3032000000;
      v75 = __Block_byref_object_copy__39;
      v76 = __Block_byref_object_dispose__39;
      v77 = 0;
      v66 = 0;
      v67 = &v66;
      v68 = 0x3032000000;
      v69 = __Block_byref_object_copy__39;
      v70 = __Block_byref_object_dispose__39;
      v71 = 0;
      management = self->_management;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__VCPPhotosQuickFaceIdentificationManager__classifyFaces_forAsset_detectedPersons___block_invoke;
      block[3] = &unk_1E834FE50;
      block[4] = self;
      v21 = v19;
      v61 = v21;
      v64 = &v72;
      v22 = v16;
      v62 = v22;
      v63 = v53;
      v65 = &v66;
      dispatch_sync(management, block);
      if (v67[5])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v23 = v67[5];
          *buf = 138412546;
          v84 = v55;
          v85 = 2112;
          v86 = v23;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Matching person %@", buf, 0x16u);
        }

        [v12 setPersonLocalIdentifier:v67[5]];
        [v51 addObject:v67[5]];
      }

      else if (v73[5])
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [v12 centerX];
          v25 = v24;
          [v12 centerY];
          v26 = v73[5];
          *buf = 138413058;
          v84 = v55;
          v85 = 2048;
          v86 = v25;
          v87 = 2048;
          v88 = v27;
          v89 = 2112;
          v90 = v26;
          v28 = MEMORY[0x1E69E9C10];
          v29 = OS_LOG_TYPE_ERROR;
          v30 = "%@ No matching person at location (%.3f, %.3f) - %@";
          v31 = 42;
LABEL_21:
          _os_log_impl(&dword_1C9B70000, v28, v29, v30, buf, v31);
        }
      }

      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [v12 centerX];
        v33 = v32;
        [v12 centerY];
        *buf = 138412802;
        v84 = v55;
        v85 = 2048;
        v86 = v33;
        v87 = 2048;
        v88 = v34;
        v28 = MEMORY[0x1E69E9C10];
        v29 = OS_LOG_TYPE_DEBUG;
        v30 = "%@ No matching person at location (%.3f, %.3f)";
        v31 = 32;
        goto LABEL_21;
      }

      _Block_object_dispose(&v66, 8);
      _Block_object_dispose(&v72, 8);

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v10 != v11);
    v35 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    v10 = v35;
  }

  while (v35);
LABEL_23:

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v37 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v51 options:librarySpecificFetchOptions];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v56 objects:v82 count:16];
  if (v40)
  {
    v41 = *v57;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v57 != v41)
        {
          objc_enumerationMutation(v39);
        }

        v43 = *(*(&v56 + 1) + 8 * i);
        localIdentifier3 = [v43 localIdentifier];
        [dictionary setObject:v43 forKeyedSubscript:localIdentifier3];
      }

      v40 = [v39 countByEnumeratingWithState:&v56 objects:v82 count:16];
    }

    while (v40);
  }

  v45 = dictionary;
  *personsCopy = dictionary;

LABEL_31:
  return 0;
}

void __83__VCPPhotosQuickFaceIdentificationManager__classifyFaces_forAsset_detectedPersons___block_invoke(void *a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = a1[5];
    v3 = *(a1[4] + 8);
    v4 = *(a1[8] + 8);
    obj = *(v4 + 40);
    v5 = [v3 recognize:v2 context:0 recognitionPreset:0 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    if (*(*(a1[8] + 8) + 40))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1[6];
        v7 = *(*(a1[8] + 8) + 40);
        *buf = 138412546;
        v34 = v6;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@[VU] Failed to classify face - %@", buf, 0x16u);
      }
    }

    else
    {
      v13 = [v5 firstObject];
      v14 = v13;
      if (v13)
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = [v13 entityIdentifier];
        v17 = [v15 stringWithFormat:@"md:%ld", objc_msgSend(v16, "value")];

        v18 = MEMORY[0x1E6978978];
        v41[0] = v17;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
        v20 = [v18 fetchPersonsWithMdIDs:v19 options:a1[7]];
        v21 = [v20 firstObject];

        if (v21)
        {
          v22 = [v21 localIdentifier];
          v23 = *(a1[9] + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = v22;

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v25 = a1[6];
            v26 = [v21 localIdentifier];
            v27 = [v14 confidence];
            *buf = 138413058;
            v34 = v25;
            v35 = 2112;
            v36 = v26;
            v37 = 2112;
            v38 = v17;
            v39 = 2112;
            v40 = v27;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ %@ with confidence %@", buf, 0x2Au);
          }
        }

        else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v29 = a1[6];
          v30 = [v14 confidence];
          *buf = 138412802;
          v34 = v29;
          v35 = 2112;
          v36 = v17;
          v37 = 2112;
          v38 = v30;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ with confidence %@, but invalid person", buf, 0x20u);
        }
      }

      else if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v28 = a1[6];
        *buf = 138412290;
        v34 = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@[VU] No valid identification to face", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = a1[5];
    v9 = *(a1[4] + 16);
    v10 = *(a1[8] + 8);
    v31 = *(v10 + 40);
    v11 = [VCPFaceIDModel classifyFaceObservation:v8 withModel:v9 error:&v31];
    objc_storeStrong((v10 + 40), v31);
    v12 = *(a1[9] + 8);
    v5 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (int)processAsset:(id)asset onDemandDetection:(BOOL)detection detectedFaces:(id *)faces detectedPersons:(id *)persons
{
  detectionCopy = detection;
  v51[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v10 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  v12 = [v10 stringWithFormat:@"[%@] QuickFaceID Analysis", localIdentifier];

  v13 = _os_feature_enabled_impl();
  management = self->_management;
  if (!v13)
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke_449;
    v45[3] = &unk_1E834BDC0;
    v45[4] = self;
    dispatch_sync(management, v45);
    if (!self->_personsModel || !self->_faceAnalyzer)
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v48 = v12;
      v15 = MEMORY[0x1E69E9C10];
      goto LABEL_24;
    }

LABEL_9:
    v16 = MediaAnalysisLogLevel();
    if (v16 >= 6)
    {
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v16)
      {
        deferredProcessingNeeded = [assetCopy deferredProcessingNeeded];
        *buf = 138412546;
        v48 = v12;
        v49 = 1024;
        LODWORD(v50) = deferredProcessingNeeded;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Analyzing asset (deferType: %d)", buf, 0x12u);
      }
    }

    personsCopy = persons;
    v18 = VCPSignPostLog(v16);
    spid = os_signpost_id_generate(v18);

    v20 = VCPSignPostLog(v19);
    v21 = v20;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPersonVIPAssetProcessing", "", buf, 2u);
    }

    array = [MEMORY[0x1E695DF70] array];
    if (detectionCopy)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v48 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Detecting faces", buf, 0xCu);
      }

      faceAnalyzer = self->_faceAnalyzer;
      v44 = 0;
      v24 = [(VCPFaceAnalyzer *)faceAnalyzer quickAnalyzeAsset:assetCopy results:&v44];
      v25 = v44;
      v26 = v25;
      if (v24)
      {
        goto LABEL_41;
      }

      v27 = [v25 objectForKeyedSubscript:@"FaceResults"];
      v28 = [v27 objectForKeyedSubscript:@"FacesToPersist"];
      [array addObjectsFromArray:v28];
    }

    else
    {
      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v51[0] = *MEMORY[0x1E6978D68];
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      [librarySpecificFetchOptions setFetchPropertySets:v30];

      [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
      [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
      v31 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
      for (i = 0; i < [v31 count]; ++i)
      {
        v33 = [v31 objectAtIndexedSubscript:i];
        v34 = [VCPPhotosFace faceFromPHFace:v33 copyOption:1];
        [array addObject:v34];
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v35 = [array count];
        *buf = 138412546;
        v48 = v12;
        v49 = 2048;
        v50 = v35;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %lu detected faces", buf, 0x16u);
      }

      v24 = [(VCPFaceAnalyzer *)self->_faceAnalyzer updateMissingFaceprintForFaces:array withAsset:assetCopy];

      if (v24)
      {
        goto LABEL_42;
      }
    }

    v24 = [(VCPPhotosQuickFaceIdentificationManager *)self _classifyFaces:array forAsset:assetCopy detectedPersons:personsCopy];
    if (v24)
    {
LABEL_42:

      goto LABEL_43;
    }

    v36 = array;
    *faces = array;
    v37 = MediaAnalysisLogLevel();
    if (v37 >= 6)
    {
      v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v37)
      {
        v38 = [array count];
        *buf = 138412546;
        v48 = v12;
        v49 = 2048;
        v50 = v38;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ processed %lu faces", buf, 0x16u);
      }
    }

    v39 = VCPSignPostLog(v37);
    v26 = v39;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, spid, "VCPPersonVIPAssetProcessing", "", buf, 2u);
    }

    v24 = 0;
LABEL_41:

    goto LABEL_42;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(management, block);
  if (self->_gallery && self->_faceAnalyzer)
  {
    goto LABEL_9;
  }

  if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  *buf = 138412290;
  v48 = v12;
  v15 = MEMORY[0x1E69E9C10];
LABEL_24:
  _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_DEFAULT, "%@ Persons Model is not ready; skip processing", buf, 0xCu);
LABEL_25:
  v24 = 0;
LABEL_43:

  return v24;
}

void *__104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[1])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

void *__104__VCPPhotosQuickFaceIdentificationManager_processAsset_onDemandDetection_detectedFaces_detectedPersons___block_invoke_449(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

- (int)classifyVIPPets
{
  v92[3] = *MEMORY[0x1E69E9840];
  management = self->_management;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(management, block);
  if (self->_petsModel)
  {
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BED10];
    v4 = *MEMORY[0x1E6978D70];
    v92[0] = *MEMORY[0x1E6978D80];
    v92[1] = v4;
    v92[2] = *MEMORY[0x1E6978D68];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:3];
    selfCopy = self;
    [librarySpecificFetchOptions setFetchPropertySets:v5];

    v6 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    for (i = 0; i < [v6 count]; ++i)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v6 objectAtIndexedSubscript:i];
      if ([v9 nameSource])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier = [v9 localIdentifier];
          nameSource = [v9 nameSource];
          personLocalIdentifier = [v9 personLocalIdentifier];
          *buf = 138412802;
          *&buf[4] = localIdentifier;
          *&buf[12] = 2048;
          *&buf[14] = nameSource;
          *&buf[22] = 2112;
          v89 = personLocalIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: pet (PHFace) %@ already has a nameSource %ld for petPerson %@; skip", buf, 0x20u);
        }
      }

      else if ([v9 isInVIPModel])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier2 = [v9 localIdentifier];
          personLocalIdentifier2 = [v9 personLocalIdentifier];
          *buf = 138412546;
          *&buf[4] = localIdentifier2;
          *&buf[12] = 2112;
          *&buf[14] = personLocalIdentifier2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: pet (PHFace) %@ is used to train this VIP model with petPerson %@; skip", buf, 0x16u);
        }
      }

      else
      {
        faceClusteringProperties = [v9 faceClusteringProperties];
        faceprint = [faceClusteringProperties faceprint];
        faceprintData = [faceprint faceprintData];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v89 = __Block_byref_object_copy__39;
        v90 = __Block_byref_object_dispose__39;
        v91 = 0;
        v18 = objc_alloc(MEMORY[0x1E6984408]);
        v19 = *&buf[8];
        obj = *(*&buf[8] + 40);
        v20 = [v18 initWithState:faceprintData error:&obj];
        objc_storeStrong((v19 + 40), obj);
        if (v20 && !*(*&buf[8] + 40))
        {
          v22 = objc_alloc(MEMORY[0x1E6984400]);
          LODWORD(v23) = 1065336439;
          v24 = [v22 initWithAnimalprint:v20 confidence:v23];
          *v84 = 0;
          *&v84[8] = v84;
          *&v84[16] = 0x3032000000;
          v85 = __Block_byref_object_copy__39;
          v86 = __Block_byref_object_dispose__39;
          v87 = 0;
          v25 = selfCopy->_management;
          v70[0] = MEMORY[0x1E69E9820];
          v70[1] = 3221225472;
          v70[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_463;
          v70[3] = &unk_1E834D070;
          v73 = v84;
          v55 = v24;
          v71 = v55;
          v72 = selfCopy;
          v74 = buf;
          dispatch_sync(v25, v70);
          if (*(*&buf[8] + 40))
          {
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              localIdentifier3 = [v9 localIdentifier];
              v27 = *(*&buf[8] + 40);
              *v78 = 138412546;
              v79 = localIdentifier3;
              v80 = 2112;
              v81 = v27;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: Failed to classify %@ - %@; skip", v78, 0x16u);
            }
          }

          else if (*(*&v84[8] + 40))
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              localIdentifier4 = [v9 localIdentifier];
              v29 = *(*&v84[8] + 40);
              *v78 = 138412546;
              v79 = localIdentifier4;
              v80 = 2112;
              v81 = v29;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: classified %@ to petPerson %@", v78, 0x16u);
            }

            v30 = *(*&v84[8] + 40);
            localIdentifier5 = [v9 localIdentifier];
            [dictionary setObject:v30 forKeyedSubscript:localIdentifier5];

            [array2 addObject:*(*&v84[8] + 40)];
            [array addObject:v9];
          }

          else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            localIdentifier6 = [v9 localIdentifier];
            [v9 centerX];
            v34 = v33;
            [v9 centerY];
            *v78 = 138412802;
            v79 = localIdentifier6;
            v80 = 2048;
            v81 = v34;
            v82 = 2048;
            v83 = v35;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: did not match %@ (at %.3f, %.3f)", v78, 0x20u);
          }

          _Block_object_dispose(v84, 8);
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*&buf[8] + 40);
          *v84 = 138412546;
          *&v84[4] = v9;
          *&v84[12] = 2112;
          *&v84[14] = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: Could not create animalprint for pet (PHFace) %@ - %@", v84, 0x16u);
        }

        _Block_object_dispose(buf, 8);
      }

      objc_autoreleasePoolPop(v8);
    }

    librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_1F49BED28];
    v59 = [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:array2 options:librarySpecificFetchOptions2];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v37 = v59;
    v38 = [v37 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v38)
    {
      v39 = *v67;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v67 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v66 + 1) + 8 * j);
          localIdentifier7 = [v41 localIdentifier];
          [dictionary2 setObject:v41 forKeyedSubscript:localIdentifier7];
        }

        v38 = [v37 countByEnumeratingWithState:&v66 objects:v77 count:16];
      }

      while (v38);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_467;
    aBlock[3] = &unk_1E834D020;
    v43 = array;
    v63 = v43;
    v44 = dictionary;
    v64 = v44;
    v45 = dictionary2;
    v65 = v45;
    v46 = _Block_copy(aBlock);
    photoLibrary = selfCopy->_photoLibrary;
    v61 = 0;
    v48 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v46 error:&v61];
    v49 = v61;
    if (v48)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v50 = [v43 count];
        *buf = 134217984;
        *&buf[4] = v50;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID Pet: classified and persisted %lu Pet PHFace", buf, 0xCu);
      }

      code = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v49;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Pet: failed to persist pet classification results: %@", buf, 0xCu);
      }

      code = [v49 code];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pets Model is not ready; skip classifying", buf, 2u);
    }

    return 0;
  }

  return code;
}

void *__58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[3])
  {
    return [result _loadPetsModel];
  }

  return result;
}

void __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_463(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 24);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [VCPFaceIDModel classifyAnimalObservation:v2 withModel:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __58__VCPPhotosQuickFaceIdentificationManager_classifyVIPPets__block_invoke_467(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v3)
  {
    v5 = *v19;
    *&v4 = 138412290;
    v16 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [v7 localIdentifier];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = [v2 objectForKeyedSubscript:v10];
          if (v11)
          {
            goto LABEL_10;
          }

          v12 = [*(a1 + 48) objectForKeyedSubscript:v10];
          if (v12)
          {
            v11 = [MEMORY[0x1E6978988] changeRequestForPerson:v12];
            [v2 setObject:v11 forKeyedSubscript:v10];

LABEL_10:
            v22 = v7;
            v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
            [v11 addFaces:v13];

            v14 = [MEMORY[0x1E69787E0] changeRequestForFace:v7];
            [v14 setNameSource:6];

            goto LABEL_11;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v24 = v10;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID Pet: no petPerson %@; skipping", buf, 0xCu);
          }
        }

LABEL_11:

        ++v6;
      }

      while (v3 != v6);
      v15 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
      v3 = v15;
    }

    while (v15);
  }
}

- (void)personIdentificationForSyndicationPhotoLibrary:(id)library withCancelOrExtendTimeoutBlock:(id)block
{
  v94[3] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  v6 = MEMORY[0x1E696AEC0];
  v72 = libraryCopy;
  vcp_description = [libraryCopy vcp_description];
  v75 = [v6 stringWithFormat:@"[PersonIdentification][%@]", vcp_description];

  if (([libraryCopy vcp_isSyndicationLibrary] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v86 = v75;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Unsupported library", buf, 0xCu);
    }

    goto LABEL_104;
  }

  if (blockCopy && (blockCopy[2]() & 1) != 0)
  {
    goto LABEL_104;
  }

  v69 = [(PHPhotoLibrary *)self->_photoLibrary mad_allPersonsFetchOptionsWithDetectionTypes:0 andVerifiedTypes:&unk_1F49BED40];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  v8 = *MEMORY[0x1E6978D70];
  v94[0] = *MEMORY[0x1E6978D80];
  v94[1] = v8;
  v94[2] = *MEMORY[0x1E6978D68];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  mediaProcessingFacesSortDescriptorsForGeneratingPersonModel = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [librarySpecificFetchOptions setInternalSortDescriptors:mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource == %ld", 0];
  [librarySpecificFetchOptions setPredicate:v11];

  v76 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions];
  if (![v76 count])
  {
    if (MediaAnalysisLogLevel() < 6)
    {
      goto LABEL_103;
    }

    v14 = OS_LOG_TYPE_INFO;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_103;
    }

    *buf = 138412290;
    v86 = v75;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%@ No face needs to identify";
LABEL_21:
    _os_log_impl(&dword_1C9B70000, v15, v14, v16, buf, 0xCu);
    goto LABEL_103;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v86 = v75;
    v87 = 2048;
    v88 = [v76 count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identifying %lu faces", buf, 0x16u);
  }

  if (blockCopy && (blockCopy[2]() & 1) != 0)
  {
    goto LABEL_103;
  }

  v12 = _os_feature_enabled_impl();
  management = self->_management;
  if (v12)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke;
    block[3] = &unk_1E834BDC0;
    block[4] = self;
    dispatch_sync(management, block);
    if (!self->_gallery)
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_103;
      }

      v14 = OS_LOG_TYPE_DEFAULT;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_103;
      }

      *buf = 138412290;
      v86 = v75;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%@[VU] Persons Model is not ready; skip processing";
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_481;
  v83[3] = &unk_1E834BDC0;
  v83[4] = self;
  dispatch_sync(management, v83);
  if (!self->_personsModel)
  {
    if (MediaAnalysisLogLevel() < 5)
    {
      goto LABEL_103;
    }

    v14 = OS_LOG_TYPE_DEFAULT;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    *buf = 138412290;
    v86 = v75;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "%@ VIP Persons Model is not ready";
    goto LABEL_21;
  }

LABEL_23:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0;
  v18 = MEMORY[0x1E69E9C10];
  v19 = 0;
  while (v17 < [v76 count])
  {
    v20 = v19;
    v21 = v18;
    v22 = objc_autoreleasePoolPush();
    if (!blockCopy || (blockCopy[2]() & 1) == 0)
    {
      v24 = [v76 objectAtIndexedSubscript:v17];
      v25 = MEMORY[0x1E696AEC0];
      localIdentifier = [v24 localIdentifier];
      v73 = [v25 stringWithFormat:@"%@[%@]", v75, localIdentifier];

      faceClusteringProperties = [v24 faceClusteringProperties];
      faceprint = [faceClusteringProperties faceprint];

      if (!faceprint)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v73;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Failed to obtain faceprint; skipping", buf, 0xCu);
        }

        v23 = 14;
        goto LABEL_81;
      }

      faceprintData = [faceprint faceprintData];
      v30 = [VCPFaceIDModel faceObservationFromFaceprintData:faceprintData];

      if (!v30)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v86 = v73;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Failed to obtain face observation; skipping", buf, 0xCu);
        }

        v23 = 14;
        goto LABEL_80;
      }

      if (_os_feature_enabled_impl())
      {
        gallery = self->_gallery;
        v82 = 0;
        v70 = [(VUWGallery *)gallery recognize:v30 context:0 recognitionPreset:0 error:&v82];
        v32 = v82;
        if (v32)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v86 = v73;
            v87 = 2112;
            v88 = v32;
            _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@[VU] Failed to classify face - %@", buf, 0x16u);
          }

          v33 = v32;

          v23 = 14;
LABEL_79:

LABEL_80:
LABEL_81:

          v18 = v21;
          v19 = v20;
          goto LABEL_82;
        }

        firstObject = [v70 firstObject];
        if (firstObject)
        {
          v36 = MEMORY[0x1E696AEC0];
          v65 = firstObject;
          entityIdentifier = [firstObject entityIdentifier];
          v66 = [v36 stringWithFormat:@"md:%ld", objc_msgSend(entityIdentifier, "value")];

          v38 = MEMORY[0x1E6978978];
          v93 = v66;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
          v40 = [v38 fetchPersonsWithMdIDs:v39 options:v69];
          firstObject2 = [v40 firstObject];

          if (firstObject2)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              localIdentifier2 = [firstObject2 localIdentifier];
              confidence = [v65 confidence];
              *buf = 138413058;
              v86 = v73;
              v87 = 2112;
              v88 = localIdentifier2;
              v89 = 2112;
              v90 = *&v66;
              v91 = 2112;
              v92 = confidence;
              _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ (%@) with confidence:%@", buf, 0x2Au);
            }

            localIdentifier3 = [firstObject2 localIdentifier];
            [dictionary setObject:localIdentifier3 forKeyedSubscript:v24];
          }

          else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            confidence2 = [v65 confidence];
            *buf = 138412802;
            v86 = v73;
            v87 = 2112;
            v88 = v66;
            v89 = 2112;
            v90 = *&confidence2;
            _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@[VU] Identified as %@ with confidence:%@, but invalid person", buf, 0x20u);
          }

          v23 = 0;
          goto LABEL_72;
        }

        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v21, v19))
        {
          *buf = 138412290;
          v86 = v73;
          _os_log_impl(&dword_1C9B70000, v21, v19, "%@[VU] No valid identification", buf, 0xCu);
        }

LABEL_49:
        v23 = 14;
LABEL_72:
        v33 = v70;
        goto LABEL_79;
      }

      personsModel = self->_personsModel;
      v81 = 0;
      v33 = [(VNPersonsModel *)personsModel predictPersonFromFaceObservation:v30 limit:1 canceller:0 error:&v81];
      v70 = v81;
      if (v70)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v86 = v73;
          v87 = 2112;
          v88 = v70;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ Face identification process failed - %@; skipping", buf, 0x16u);
        }

        goto LABEL_49;
      }

      firstObject3 = [v33 firstObject];
      [firstObject3 confidence];
      if (v45 > VCPPersonFaceVIPMatchingThreshold())
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          predictedPersonUniqueIdentifier = [firstObject3 predictedPersonUniqueIdentifier];
          [firstObject3 confidence];
          *buf = 138412802;
          v86 = v73;
          v87 = 2112;
          v88 = predictedPersonUniqueIdentifier;
          v89 = 2048;
          v90 = v47;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ Face identified as %@ confidence:%.2f", buf, 0x20u);
        }

        firstObject4 = [v33 firstObject];
        predictedPersonUniqueIdentifier2 = [firstObject4 predictedPersonUniqueIdentifier];
        [dictionary setObject:predictedPersonUniqueIdentifier2 forKeyedSubscript:v24];

        goto LABEL_77;
      }

      if (MediaAnalysisLogLevel() >= 7)
      {
        firstObject4 = v21;
        v50 = v21;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          if (firstObject3)
          {
            v51 = MEMORY[0x1E696AD98];
            [firstObject3 confidence];
            v52 = [v51 numberWithFloat:?];
            v53 = v52;
          }

          else
          {
            v53 = @"NaN";
            v52 = v64;
          }

          v64 = v52;
          *buf = 138412546;
          v86 = v73;
          v87 = 2112;
          v88 = v53;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEBUG, "%@ Face not identified, confidence:%@", buf, 0x16u);
          if (firstObject3)
          {
          }

          firstObject4 = v21;
        }

LABEL_77:
      }

      v23 = 0;
      goto LABEL_79;
    }

    v23 = 1;
LABEL_82:
    objc_autoreleasePoolPop(v22);
    if (v23 && v23 != 14)
    {
      goto LABEL_102;
    }

    ++v17;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v55 = [dictionary count];
    v56 = [v76 count];
    *buf = 138412802;
    v86 = v75;
    v87 = 2048;
    v88 = v55;
    v89 = 2048;
    v90 = *&v56;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Identified %lu out of %lu faces", buf, 0x20u);
  }

  if ([dictionary count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_486;
    aBlock[3] = &unk_1E834BDC0;
    v80 = dictionary;
    v57 = _Block_copy(aBlock);
    v78 = 0;
    v58 = [v72 performChangesAndWait:v57 error:&v78];
    v59 = v78;
    if (v58)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v86 = v75;
        v60 = MEMORY[0x1E69E9C10];
        v61 = "%@ Successfully persisted identification results";
        v62 = OS_LOG_TYPE_INFO;
        v63 = 12;
        goto LABEL_100;
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v86 = v75;
      v87 = 2112;
      v88 = v59;
      v60 = MEMORY[0x1E69E9C10];
      v61 = "%@ Failed to persist identification results - %@";
      v62 = OS_LOG_TYPE_ERROR;
      v63 = 22;
LABEL_100:
      _os_log_impl(&dword_1C9B70000, v60, v62, v61, buf, v63);
    }
  }

LABEL_102:

LABEL_103:
LABEL_104:
}

void *__121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[1])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

void *__121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_481(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _loadPersonsModelAndInitializeFaceAnalyzer];
  }

  return result;
}

void __121__VCPPhotosQuickFaceIdentificationManager_personIdentificationForSyndicationPhotoLibrary_withCancelOrExtendTimeoutBlock___block_invoke_486(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        v6 = [MEMORY[0x1E69787E0] changeRequestForFace:v5];
        v7 = MEMORY[0x1E6978950];
        v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v9 = [v7 uuidFromLocalIdentifier:v8];

        [v6 associateFaceWithPersonUUID:v9];
        [v6 setNameSource:6];
      }

      v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }
}

- (BOOL)_persistPersonsModel:(id)model evaluationMode:(BOOL)mode error:(id *)error
{
  modelCopy = model;
  v8 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:0];
  LOBYTE(error) = [VCPFaceIDModel persistModel:modelCopy toPath:v8 error:error];

  return error;
}

- (BOOL)_persistPetsModel:(id)model error:(id *)error
{
  modelCopy = model;
  v7 = [(PHPhotoLibrary *)self->_photoLibrary vcp_vipModelFilepathForVIPType:1];
  LOBYTE(error) = [VCPFaceIDModel persistPetsModel:modelCopy toPath:v7 error:error];

  return error;
}

- (id)_fetchPersonsToFeedVIPModel:(BOOL)model allowUnverifiedPerson:(BOOL)person
{
  personCopy = person;
  v17[2] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@ OR verifiedType = %@", &unk_1F49BD798, &unk_1F49BD7B0];
  [librarySpecificFetchOptions setPredicate:v6];

  if (personCopy)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"verifiedType = %@", &unk_1F49BD7F8];
    predicate = [librarySpecificFetchOptions predicate];
    v17[0] = predicate;
    v17[1] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

    v10 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v9];
    [librarySpecificFetchOptions setPredicate:v10];
  }

  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v16[0] = v11;
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v13];

  v14 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v14;
}

- (id)_fetchPetsToFeedVIPModel
{
  v8[2] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setFetchLimit:100];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"faceCount" ascending:0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:0];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v5];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BED58];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludeTorsoOnlyPerson:0];
  v6 = [MEMORY[0x1E6978978] fetchPersonsWithOptions:librarySpecificFetchOptions];

  return v6;
}

- (id)fetchEntityForModelType:(unint64_t)type evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person
{
  v10 = *MEMORY[0x1E69E9840];
  if (type == 1)
  {
    v6 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPetsToFeedVIPModel:1];
  }

  else if (type)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[QuickFaceID] Unknown VIP type (%lu); no entity fetched", &v8, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPersonsToFeedVIPModel:mode allowUnverifiedPerson:person];
  }

  return v6;
}

- (int)_generatePetsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel
{
  v165[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  cancelCopy = cancel;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v159 = @"[QuickFaceID][PetsModelGeneration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Starting ...", buf, 0xCu);
  }

  v92 = mach_absolute_time();
  selfCopy = self;
  v6 = VCPSignPostLog(v92);
  spid = os_signpost_id_generate(v6);

  v8 = VCPSignPostLog(v7);
  v9 = v8;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPetVIPGenerateModel", "", buf, 2u);
  }

  v96 = [(VCPPhotosQuickFaceIdentificationManager *)self fetchEntityForModelType:1 evaluationMode:0 allowUnverifiedPerson:0];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v165[0] = *MEMORY[0x1E6978D68];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v165 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v10];

  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setFetchLimit:512];
  mediaProcessingFacesSortDescriptorsForGeneratingPersonModel = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [librarySpecificFetchOptions setInternalSortDescriptors:mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"nameSource != %ld", 6];
  [librarySpecificFetchOptions setPredicate:v12];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BED70];
  v98 = [[VCPPhotosFaceProcessingContext alloc] initWithPhotoLibrary:self->_photoLibrary];
  v13 = objc_alloc_init(MEMORY[0x1E6984470]);
  v152 = v13;
  v108 = [VCPFaceUtils configureVNRequest:&v152 withClass:objc_opt_class() andProcessingVersion:[(VCPPhotosFaceProcessingContext *)v98 processingVersion]];
  v99 = v152;

  if (v108)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v159 = @"[QuickFaceID][PetsModelGeneration]";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to initialize VNAnimalObservation", buf, 0xCu);
    }
  }

  else
  {
    v151 = 0;
    v14 = [MEMORY[0x1E6984500] newConfigurationForEntityPrintsGeneratedByRequest:v99 error:&v151];
    v15 = v151;
    v16 = v15;
    v91 = v14;
    if (!v14 || v15)
    {
      type = v15;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v159 = @"[QuickFaceID][PetsModelGeneration]";
        v160 = 2112;
        v161 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to create VNEntityIdentificationModelConfiguration - %@", buf, 0x16u);
      }

      v108 = -18;
    }

    else
    {
      v150 = 0;
      v17 = [MEMORY[0x1E69845C8] modelWithConfiguration:v14 error:&v150];
      v18 = v150;
      v19 = v18;
      v103 = v17;
      if (!v17 || v18)
      {
        type = v18;
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v159 = v19;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VNMutableEntityIdentificationModel - %@", buf, 0xCu);
        }

        v108 = -18;
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        obj = v96;
        v21 = [obj countByEnumeratingWithState:&v146 objects:v164 count:16];
        if (v21)
        {
          v108 = 0;
          v95 = *v147;
          while (2)
          {
            v104 = 0;
            v94 = v21;
            do
            {
              if (*v147 != v95)
              {
                objc_enumerationMutation(obj);
              }

              v102 = *(*(&v146 + 1) + 8 * v104);
              context = objc_autoreleasePoolPush();
              if (cancelCopy && cancelCopy[2]())
              {
                if (MediaAnalysisLogLevel() >= 4)
                {
                  v22 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v159 = @"[QuickFaceID][PetsModelGeneration]";
                    _os_log_impl(&dword_1C9B70000, v22, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
                  }
                }

                v23 = 0;
                v108 = -128;
              }

              else
              {
                if (blockCopy)
                {
                  blockCopy[2]();
                }

                v119 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v102 options:librarySpecificFetchOptions];
                if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                {
                  localIdentifier = [v102 localIdentifier];
                  v25 = [v119 count];
                  *buf = 138412802;
                  v159 = @"[QuickFaceID][PetsModelGeneration]";
                  v160 = 2112;
                  v161 = localIdentifier;
                  v162 = 2048;
                  v163 = v25;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Fetched entity %@ with %lu faces", buf, 0x20u);
                }

                v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v119, "count")}];
                for (i = 0; ; ++i)
                {
                  v26 = [v119 count];
                  v111 = i >= v26;
                  if (i >= v26)
                  {
                    break;
                  }

                  v27 = objc_autoreleasePoolPush();
                  if (cancelCopy && cancelCopy[2]())
                  {
                    if (MediaAnalysisLogLevel() >= 4)
                    {
                      v28 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v159 = @"[QuickFaceID][PetsModelGeneration]";
                        _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
                      }
                    }

                    v108 = -128;
                    v29 = 1;
                  }

                  else
                  {
                    if (blockCopy)
                    {
                      blockCopy[2]();
                    }

                    v30 = [v119 objectAtIndexedSubscript:i];
                    faceClusteringProperties = [v30 faceClusteringProperties];
                    faceprint = [faceClusteringProperties faceprint];
                    faceprintData = [faceprint faceprintData];

                    v33 = objc_alloc(MEMORY[0x1E6984408]);
                    v145 = 0;
                    v34 = [v33 initWithState:faceprintData error:&v145];
                    v35 = v145;
                    v36 = v35;
                    if (!v34 || v35)
                    {
                      if (MediaAnalysisLogLevel() >= 4)
                      {
                        v43 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412802;
                          v159 = @"[QuickFaceID][PetsModelGeneration]";
                          v160 = 2112;
                          v161 = v30;
                          v162 = 2112;
                          v163 = v36;
                          _os_log_impl(&dword_1C9B70000, v43, OS_LOG_TYPE_DEFAULT, "%@ Failed to create animalprint for face %@ - %@; skipping...", buf, 0x20u);
                        }
                      }

                      v29 = 24;
                    }

                    else
                    {
                      v37 = objc_alloc(MEMORY[0x1E6984400]);
                      LODWORD(v38) = 1065336439;
                      v39 = [v37 initWithAnimalprint:v34 confidence:v38];
                      if (v39)
                      {
                        [v106 addObject:v39];
                        localIdentifier2 = [v30 localIdentifier];
                        uuid = [v39 uuid];
                        uUIDString = [uuid UUIDString];
                        [dictionary setObject:localIdentifier2 forKeyedSubscript:uUIDString];

                        v29 = 0;
                      }

                      else
                      {
                        if (MediaAnalysisLogLevel() >= 4)
                        {
                          v44 = MEMORY[0x1E69E9C10];
                          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            v159 = @"[QuickFaceID][PetsModelGeneration]";
                            v160 = 2112;
                            v161 = v30;
                            _os_log_impl(&dword_1C9B70000, v44, OS_LOG_TYPE_DEFAULT, "%@ Failed to create animalObservation face %@ ; skipping ...", buf, 0x16u);
                          }
                        }

                        v29 = 24;
                      }
                    }
                  }

                  objc_autoreleasePoolPop(v27);
                  if (v29 != 24 && v29)
                  {
                    goto LABEL_67;
                  }
                }

                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v45 = [v106 count];
                  *buf = 138412546;
                  v159 = @"[QuickFaceID][PetsModelGeneration]";
                  v160 = 2048;
                  v161 = v45;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Training %lu observations ...", buf, 0x16u);
                }

                if ([v106 count])
                {
                  localIdentifier3 = [v102 localIdentifier];
                  v144 = 0;
                  v47 = [v103 addObservations:v106 toEntityWithUniqueIdentifier:localIdentifier3 error:&v144];
                  v48 = v144;

                  if ((v47 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v159 = @"[QuickFaceID][PetsModelGeneration]";
                    v160 = 2112;
                    v161 = v48;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to train with observations - %@", buf, 0x16u);
                  }
                }

LABEL_67:

                v23 = v111;
              }

              objc_autoreleasePoolPop(context);
              if (!v23)
              {

                type = 0;
                goto LABEL_134;
              }

              ++v104;
            }

            while (v104 != v94);
            v21 = [obj countByEnumeratingWithState:&v146 objects:v164 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v50 = VCPSignPostLog(v49);
        v51 = v50;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v51, OS_SIGNPOST_INTERVAL_END, spid, "VCPPetVIPGenerateModel", "", buf, 2u);
        }

        if (v92)
        {
          v52 = mach_absolute_time();
          VCPPerformance_LogMeasurement("VCPPetVIPGenerateModel", v52 - v92);
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v159 = @"[QuickFaceID][PetsModelGeneration]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Finished training model", buf, 0xCu);
        }

        v143 = 0;
        v53 = [(VCPPhotosQuickFaceIdentificationManager *)selfCopy _persistPetsModel:v103 error:&v143];
        type = v143;
        if (v53)
        {
          v54 = [MEMORY[0x1E695DFA8] set];
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v109 = obj;
          v55 = [v109 countByEnumeratingWithState:&v139 objects:v157 count:16];
          if (v55)
          {
            v110 = *v140;
            do
            {
              v56 = 0;
              v112 = v55;
              do
              {
                if (*v140 != v110)
                {
                  objc_enumerationMutation(v109);
                }

                v57 = *(*(&v139 + 1) + 8 * v56);
                v116 = objc_autoreleasePoolPush();
                localIdentifier4 = [v57 localIdentifier];
                v138 = 0;
                v120 = [v103 trainingObservationsForEntityWithUniqueIdentifier:localIdentifier4 canceller:0 error:&v138];
                v123 = v138;

                if (v123)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    localIdentifier5 = [v57 localIdentifier];
                    *buf = 138412802;
                    v159 = @"[QuickFaceID][PetsModelGeneration]";
                    v160 = 2112;
                    v161 = localIdentifier5;
                    v162 = 2112;
                    v163 = v123;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to load observations for %@ from model - %@; skipping ...", buf, 0x20u);
                  }
                }

                else
                {
                  v136 = 0u;
                  v137 = 0u;
                  v134 = 0u;
                  v135 = 0u;
                  v60 = v120;
                  v61 = [v60 countByEnumeratingWithState:&v134 objects:v156 count:16];
                  if (v61)
                  {
                    v62 = *v135;
                    do
                    {
                      for (j = 0; j != v61; ++j)
                      {
                        if (*v135 != v62)
                        {
                          objc_enumerationMutation(v60);
                        }

                        uuid2 = [*(*(&v134 + 1) + 8 * j) uuid];
                        uUIDString2 = [uuid2 UUIDString];
                        v66 = [dictionary objectForKeyedSubscript:uUIDString2];

                        if (v66)
                        {
                          [v54 addObject:v66];
                        }
                      }

                      v61 = [v60 countByEnumeratingWithState:&v134 objects:v156 count:16];
                    }

                    while (v61);
                  }
                }

                objc_autoreleasePoolPop(v116);
                ++v56;
              }

              while (v56 != v112);
              v55 = [v109 countByEnumeratingWithState:&v139 objects:v157 count:16];
            }

            while (v55);
          }

          librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
          v68 = *MEMORY[0x1E6978D80];
          v155 = *MEMORY[0x1E6978D80];
          v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
          [librarySpecificFetchOptions2 setFetchPropertySets:v69];

          v70 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isInVIPModel == YES"];
          [librarySpecificFetchOptions2 setPredicate:v70];

          [librarySpecificFetchOptions2 setIncludedDetectionTypes:&unk_1F49BED88];
          v113 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions2];
          v71 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v113, "count")}];
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v72 = v113;
          v73 = [v72 countByEnumeratingWithState:&v130 objects:v154 count:16];
          if (v73)
          {
            v74 = *v131;
            do
            {
              for (k = 0; k != v73; ++k)
              {
                if (*v131 != v74)
                {
                  objc_enumerationMutation(v72);
                }

                localIdentifier6 = [*(*(&v130 + 1) + 8 * k) localIdentifier];
                [v71 addObject:localIdentifier6];
              }

              v73 = [v72 countByEnumeratingWithState:&v130 objects:v154 count:16];
            }

            while (v73);
          }

          v124 = [v71 mutableCopy];
          [v124 minusSet:v54];
          v77 = [v54 mutableCopy];
          [v77 minusSet:v71];
          allObjects = [v124 allObjects];
          allObjects2 = [v77 allObjects];
          v80 = [allObjects arrayByAddingObjectsFromArray:allObjects2];

          if ([v80 count])
          {
            v117 = objc_autoreleasePoolPush();
            librarySpecificFetchOptions3 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
            v153 = v68;
            v121 = librarySpecificFetchOptions2;
            v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
            [librarySpecificFetchOptions3 setFetchPropertySets:v82];

            [librarySpecificFetchOptions3 setIncludedDetectionTypes:&unk_1F49BEDA0];
            photoLibrary = selfCopy->_photoLibrary;
            v126[0] = MEMORY[0x1E69E9820];
            v126[1] = 3221225472;
            v126[2] = __91__VCPPhotosQuickFaceIdentificationManager__generatePetsModelWithExtendTimeoutBlock_cancel___block_invoke;
            v126[3] = &unk_1E834D020;
            v127 = v80;
            v84 = librarySpecificFetchOptions3;
            v128 = v84;
            v129 = v77;
            v125 = 0;
            v85 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v126 error:&v125];
            v86 = v125;
            if (v86)
            {
              v87 = 0;
            }

            else
            {
              v87 = v85;
            }

            librarySpecificFetchOptions2 = v121;
            if (!v87 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v159 = @"[QuickFaceID][PetsModelGeneration]";
              v160 = 2112;
              v161 = v86;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist isInVIPModel on trained pets - %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v117);
          }

          v88 = selfCopy->_photoLibrary;
          v89 = [MEMORY[0x1E695DF00] now];
          [(PHPhotoLibrary *)v88 vcp_setAnalysisPreferencesValue:v89 forKey:@"PetIDModelLastGenerationKey"];

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v159 = @"[QuickFaceID][PetsModelGeneration]";
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Finished model generation and persistence", buf, 0xCu);
          }

          v108 = 0;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v159 = @"[QuickFaceID][PetsModelGeneration]";
            v160 = 2112;
            v161 = type;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist model %@", buf, 0x16u);
          }

          v108 = -18;
        }

LABEL_134:
      }
    }
  }

  return v108;
}

void __91__VCPPhotosQuickFaceIdentificationManager__generatePetsModelWithExtendTimeoutBlock_cancel___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:a1[4] options:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [MEMORY[0x1E69787E0] changeRequestForFace:v6];
        v8 = a1[6];
        v9 = [v6 localIdentifier];
        [v7 setIsInVIPModel:{objc_msgSend(v8, "containsObject:", v9)}];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (int)_generatePersonsModelWithExtendTimeoutBlock:(id)block cancel:(id)cancel evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person
{
  personCopy = person;
  modeCopy = mode;
  v166[4] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  cancelCopy = cancel;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v159 = @"[QuickFaceID][PeopleModelGeneration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Starting ...", buf, 0xCu);
  }

  v103 = mach_absolute_time();
  selfCopy = self;
  v9 = VCPSignPostLog(v103);
  spid = os_signpost_id_generate(v9);

  v11 = VCPSignPostLog(v10);
  v12 = v11;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPersonVIPGenerateModel", "", buf, 2u);
  }

  v110 = [(VCPPhotosQuickFaceIdentificationManager *)self _fetchPersonsToFeedVIPModel:modeCopy allowUnverifiedPerson:personCopy];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v13 = *MEMORY[0x1E6978D70];
  v102 = *MEMORY[0x1E6978D80];
  v166[0] = *MEMORY[0x1E6978D80];
  v166[1] = v13;
  v14 = *MEMORY[0x1E6978D90];
  v166[2] = *MEMORY[0x1E6978D68];
  v166[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v166 count:4];
  [librarySpecificFetchOptions setFetchPropertySets:v15];

  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setFetchLimit:5120];
  mediaProcessingFacesSortDescriptorsForGeneratingPersonModel = [MEMORY[0x1E69789B0] mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];
  [librarySpecificFetchOptions setInternalSortDescriptors:mediaProcessingFacesSortDescriptorsForGeneratingPersonModel];

  v107 = [librarySpecificFetchOptions copy];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"roll == 0.0"];
  [librarySpecificFetchOptions setInternalPredicate:v17];

  v121 = +[VCPFaceIDModel newMutablePersonsModel];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v114 = 0;
  while (2)
  {
    v19 = [v110 count];
    if (v114 >= v19)
    {
      v63 = VCPSignPostLog(v19);
      v64 = v63;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v64, OS_SIGNPOST_INTERVAL_END, spid, "VCPPersonVIPGenerateModel", "", buf, 2u);
      }

      if (v103)
      {
        v65 = mach_absolute_time();
        VCPPerformance_LogMeasurement("VCPPersonVIPGenerateModel", v65 - v103);
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v159 = @"[QuickFaceID][PeopleModelGeneration]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Finished model generation", buf, 0xCu);
      }

      v150 = 0;
      v66 = [(VCPPhotosQuickFaceIdentificationManager *)selfCopy _persistPersonsModel:v121 evaluationMode:modeCopy error:&v150];
      v115 = v150;
      if (v66)
      {
        v67 = [MEMORY[0x1E695DFA8] set];
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        obja = v110;
        v68 = [obja countByEnumeratingWithState:&v146 objects:v157 count:16];
        if (v68)
        {
          v119 = *v147;
          do
          {
            v69 = 0;
            v120 = v68;
            do
            {
              if (*v147 != v119)
              {
                objc_enumerationMutation(obja);
              }

              v70 = *(*(&v146 + 1) + 8 * v69);
              v123 = objc_autoreleasePoolPush();
              localIdentifier = [v70 localIdentifier];
              v145 = 0;
              v125 = [v121 trainingFaceObservationsForPersonWithUniqueIdentifier:localIdentifier canceller:0 error:&v145];
              v130 = v145;

              if (v130)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  localIdentifier2 = [v70 localIdentifier];
                  *buf = 138412802;
                  v159 = @"[QuickFaceID][PeopleModelGeneration]";
                  v160 = 2112;
                  v161 = localIdentifier2;
                  v162 = 2112;
                  v163 = v130;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to get face observations for person %@ - %@", buf, 0x20u);
                }
              }

              else
              {
                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v73 = v125;
                v74 = [v73 countByEnumeratingWithState:&v141 objects:v156 count:16];
                if (v74)
                {
                  v75 = *v142;
                  do
                  {
                    for (i = 0; i != v74; ++i)
                    {
                      if (*v142 != v75)
                      {
                        objc_enumerationMutation(v73);
                      }

                      uuid = [*(*(&v141 + 1) + 8 * i) uuid];
                      uUIDString = [uuid UUIDString];
                      v79 = [dictionary objectForKeyedSubscript:uUIDString];

                      if (v79)
                      {
                        [v67 addObject:v79];
                      }
                    }

                    v74 = [v73 countByEnumeratingWithState:&v141 objects:v156 count:16];
                  }

                  while (v74);
                }
              }

              objc_autoreleasePoolPop(v123);
              ++v69;
            }

            while (v69 != v120);
            v68 = [obja countByEnumeratingWithState:&v146 objects:v157 count:16];
          }

          while (v68);
        }

        librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
        v155 = v102;
        v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
        [librarySpecificFetchOptions2 setFetchPropertySets:v80];

        v81 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isInVIPModel == YES"];
        [librarySpecificFetchOptions2 setPredicate:v81];

        v126 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:librarySpecificFetchOptions2];
        v82 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v126, "count")}];
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v83 = v126;
        v84 = [v83 countByEnumeratingWithState:&v137 objects:v154 count:16];
        if (v84)
        {
          v85 = *v138;
          do
          {
            for (j = 0; j != v84; ++j)
            {
              if (*v138 != v85)
              {
                objc_enumerationMutation(v83);
              }

              localIdentifier3 = [*(*(&v137 + 1) + 8 * j) localIdentifier];
              [v82 addObject:localIdentifier3];
            }

            v84 = [v83 countByEnumeratingWithState:&v137 objects:v154 count:16];
          }

          while (v84);
        }

        v88 = [v82 mutableCopy];
        [v88 minusSet:v67];
        v89 = [v67 mutableCopy];
        [v89 minusSet:v82];
        allObjects = [v88 allObjects];
        allObjects2 = [v89 allObjects];
        v92 = [allObjects arrayByAddingObjectsFromArray:allObjects2];

        if ([v92 count])
        {
          librarySpecificFetchOptions3 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
          v153 = v102;
          v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
          [librarySpecificFetchOptions3 setFetchPropertySets:v94];

          photoLibrary = selfCopy->_photoLibrary;
          v133[0] = MEMORY[0x1E69E9820];
          v133[1] = 3221225472;
          v133[2] = __131__VCPPhotosQuickFaceIdentificationManager__generatePersonsModelWithExtendTimeoutBlock_cancel_evaluationMode_allowUnverifiedPerson___block_invoke;
          v133[3] = &unk_1E834D020;
          v134 = v92;
          v96 = librarySpecificFetchOptions3;
          v135 = v96;
          v136 = v89;
          v132 = 0;
          [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v133 error:&v132];
          v97 = v132;
          if (v97 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v159 = @"[QuickFaceID][PeopleModelGeneration]";
            v160 = 2112;
            v161 = v97;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist isInVIPModel on trained faces - %@", buf, 0x16u);
          }
        }

        v98 = selfCopy->_photoLibrary;
        date = [MEMORY[0x1E695DF00] date];
        [(PHPhotoLibrary *)v98 vcp_setAnalysisPreferencesValue:date forKey:@"FaceIDModelLastGenerationKey"];

        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v159 = @"[QuickFaceID][PeopleModelGeneration]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Finished model generation and persistence", buf, 0xCu);
        }

        v100 = 0;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v159 = @"[QuickFaceID][PeopleModelGeneration]";
          v160 = 2112;
          v161 = v115;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to persist model %@", buf, 0x16u);
        }

        v100 = -18;
      }

      goto LABEL_136;
    }

    context = objc_autoreleasePoolPush();
    v20 = MEMORY[0x1E69E9C10];
    if (cancelCopy && cancelCopy[2]())
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v159 = @"[QuickFaceID][PeopleModelGeneration]";
        _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
      }

      v21 = 1;
      goto LABEL_81;
    }

    if (blockCopy)
    {
      blockCopy[2]();
    }

    v113 = [v110 objectAtIndexedSubscript:v114];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      if ([v113 verifiedType] == 2)
      {
        v22 = @"graph";
      }

      else
      {
        v22 = @"user";
      }

      name = [v113 name];
      localIdentifier4 = [v113 localIdentifier];
      *buf = 138413058;
      v159 = @"[QuickFaceID][PeopleModelGeneration]";
      v160 = 2112;
      v161 = v22;
      v162 = 2112;
      v163 = name;
      v164 = 2112;
      v165 = localIdentifier4;
      _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_DEBUG, "%@ Building %@-confirmed person %@ (%@)", buf, 0x2Au);
    }

    v25 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v113 options:librarySpecificFetchOptions];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v25 count];
      *buf = 138412546;
      v159 = @"[QuickFaceID][PeopleModelGeneration]";
      v160 = 2048;
      v161 = v26;
      _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_DEBUG, "%@ fetched %lu faces", buf, 0x16u);
    }

    if ([v25 count] > 0x13)
    {
      v30 = v25;
    }

    else
    {
      v128 = [MEMORY[0x1E69787D0] fetchFacesForPerson:v113 options:v107];

      v27 = MediaAnalysisLogLevel();
      v28 = MEMORY[0x1E69E9C10];
      if (v27 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v29 = [v128 count];
        *buf = 138412546;
        v159 = @"[QuickFaceID][PeopleModelGeneration]";
        v160 = 2048;
        v161 = v29;
        _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEBUG, "%@ Fetched %lu faces without roll predicate", buf, 0x16u);
      }

      v30 = v128;
    }

    v129 = v30;
    v112 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v30, "count")}];
    v31 = 0;
    v109 = 0;
    while (v31 < [v129 count])
    {
      v32 = objc_autoreleasePoolPush();
      if (!cancelCopy || !cancelCopy[2]())
      {
        if (blockCopy)
        {
          blockCopy[2]();
        }

        v34 = [v129 objectAtIndexedSubscript:v31];
        if ([v34 trainingType] == 4 || objc_msgSend(v34, "trainingType") == 2)
        {
          v21 = 17;
LABEL_66:

          goto LABEL_67;
        }

        obj = [v34 faceClusteringProperties];
        faceprint = [obj faceprint];
        faceprintData = [faceprint faceprintData];

        v36 = objc_alloc(MEMORY[0x1E6984520]);
        v152 = 0;
        v37 = [v36 initWithState:faceprintData error:&v152];
        v118 = v152;
        if (v37)
        {
          v38 = objc_alloc_init(MEMORY[0x1E6984518]);
          [v38 setFaceTorsoprint:v37];
          faceprint2 = [v37 faceprint];
          [v38 setFaceprint:faceprint2];

          if (v38)
          {
            faceprint3 = [v38 faceprint];
            v41 = faceprint3 == 0;

            if (v41)
            {
              v21 = 0;
            }

            else
            {
              configuration = [v121 configuration];
              if ([configuration faceprintRequestRevision])
              {
                faceprint4 = [v38 faceprint];
                requestRevision = [faceprint4 requestRevision];
                configuration2 = [v121 configuration];
                LOBYTE(requestRevision) = requestRevision == [configuration2 faceprintRequestRevision];

                if ((requestRevision & 1) == 0)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    localIdentifier5 = [v34 localIdentifier];
                    faceprint5 = [v38 faceprint];
                    requestRevision2 = [faceprint5 requestRevision];
                    configuration3 = [v121 configuration];
                    faceprintRequestRevision = [configuration3 faceprintRequestRevision];
                    *buf = 138413058;
                    v159 = @"[QuickFaceID][PeopleModelGeneration]";
                    v160 = 2112;
                    v161 = localIdentifier5;
                    v162 = 2048;
                    v163 = requestRevision2;
                    v164 = 2048;
                    v165 = faceprintRequestRevision;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@[%@]: Mismatched faceprint version %lu (expected %lu); skipping ...", buf, 0x2Au);
                  }

                  goto LABEL_60;
                }
              }

              else
              {
              }

              [v112 addObject:v38];
              localIdentifier6 = [v34 localIdentifier];
              uuid2 = [v38 uuid];
              uUIDString2 = [uuid2 UUIDString];
              [dictionary setObject:localIdentifier6 forKeyedSubscript:uUIDString2];

              v21 = 0;
              ++v109;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 4)
            {
              v52 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v159 = @"[QuickFaceID][PeopleModelGeneration]";
                v160 = 2112;
                v161 = v34;
                _os_log_impl(&dword_1C9B70000, v52, OS_LOG_TYPE_DEFAULT, "%@ Failed to add faceprint to model for face: %@; skipping ...", buf, 0x16u);
              }
            }

LABEL_60:
            v21 = 17;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v51 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v159 = @"[QuickFaceID][PeopleModelGeneration]";
              v160 = 2112;
              v161 = v34;
              v162 = 2112;
              v163 = v118;
              _os_log_impl(&dword_1C9B70000, v51, OS_LOG_TYPE_DEFAULT, "%@ Failed to create faceprint for face: %@ - %@; skipping ...", buf, 0x20u);
            }
          }

          v21 = 17;
        }

        goto LABEL_66;
      }

      if (MediaAnalysisLogLevel() >= 4)
      {
        v33 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v159 = @"[QuickFaceID][PeopleModelGeneration]";
          _os_log_impl(&dword_1C9B70000, v33, OS_LOG_TYPE_DEFAULT, "%@ Process cancelled", buf, 0xCu);
        }
      }

      v21 = 1;
LABEL_67:
      objc_autoreleasePoolPop(v32);
      if (v21 != 17 && v21)
      {
        goto LABEL_80;
      }

      ++v31;
    }

    v56 = [v112 count];
    v57 = MEMORY[0x1E69E9C10];
    if (v56)
    {
      localIdentifier7 = [v113 localIdentifier];
      v151 = 0;
      v59 = [VCPFaceIDModel addFaceObservations:v112 forPersonIdentifier:localIdentifier7 toModel:v121 error:&v151];
      v60 = v151;

      if (!v59 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v159 = @"[QuickFaceID][PeopleModelGeneration]";
        v160 = 2112;
        v161 = v60;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to add observation to model - %@", buf, 0x16u);
      }

      v57 = MEMORY[0x1E69E9C10];
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      name2 = [v113 name];
      localIdentifier8 = [v113 localIdentifier];
      *buf = 138413058;
      v159 = @"[QuickFaceID][PeopleModelGeneration]";
      v160 = 2048;
      v161 = v109;
      v162 = 2112;
      v163 = name2;
      v164 = 2112;
      v165 = localIdentifier8;
      _os_log_impl(&dword_1C9B70000, v57, OS_LOG_TYPE_DEBUG, "%@ Prepared %lu faces for person %@ (%@)", buf, 0x2Au);
    }

    v21 = 0;
LABEL_80:

LABEL_81:
    objc_autoreleasePoolPop(context);
    if (!v21)
    {
      ++v114;
      continue;
    }

    break;
  }

  v100 = -128;
LABEL_136:

  return v100;
}

void __131__VCPPhotosQuickFaceIdentificationManager__generatePersonsModelWithExtendTimeoutBlock_cancel_evaluationMode_allowUnverifiedPerson___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [MEMORY[0x1E69787D0] fetchFacesWithLocalIdentifiers:a1[4] options:{a1[5], 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [MEMORY[0x1E69787E0] changeRequestForFace:v6];
        v8 = a1[6];
        v9 = [v6 localIdentifier];
        [v7 setIsInVIPModel:{objc_msgSend(v8, "containsObject:", v9)}];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

- (BOOL)_modelLastGenerationDidExceedTimeIntervalForType:(unint64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  vcp_analysisPreferences = [(PHPhotoLibrary *)self->_photoLibrary vcp_analysisPreferences];
  v5 = @"PetIDModelLastGenerationKey";
  if (!type)
  {
    v5 = @"FaceIDModelLastGenerationKey";
  }

  v6 = v5;
  distantPast = [vcp_analysisPreferences objectForKeyedSubscript:v6];
  if (!distantPast)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:distantPast];
  v10 = v9;

  v11 = 0x15180uLL;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v12 = VCPMAVIPTypeDescription(type);
    v13 = @"No";
    v15 = 138412802;
    v16 = v12;
    if (v10 > v11)
    {
      v13 = @"Yes";
    }

    v17 = 2048;
    v18 = v10;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "QuickFaceID %@ Model: Last job generation %.0fs ago, job is due = %@", &v15, 0x20u);
  }

  return v10 > v11;
}

- (BOOL)_faceProcessingPassGoalWithExtendTimeout:(id)timeout
{
  v34 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__VCPPhotosQuickFaceIdentificationManager__faceProcessingPassGoalWithExtendTimeout___block_invoke;
  aBlock[3] = &unk_1E834C9F0;
  v23 = timeoutCopy;
  v27 = v23;
  v24 = _Block_copy(aBlock);
  v25 = 0;
  [VCPAnalysisProgressQuery queryProgressDetail:&v25 photoLibrary:self->_photoLibrary taskID:3 cancelOrExtendTimeoutBlock:v24];
  v5 = v25;
  v6 = [v5 objectForKeyedSubscript:@"total-allowed"];
  integerValue = [v6 integerValue];

  v8 = [v5 objectForKeyedSubscript:@"processed"];
  integerValue2 = [v8 integerValue];

  v10 = [v5 objectForKeyedSubscript:@"failed"];
  integerValue3 = [v10 integerValue];

  v12 = 100 * (integerValue3 + integerValue2);
  v13 = 90 * integerValue;
  v14 = 100 * integerValue3;
  v15 = 10 * integerValue;
  if (integerValue)
  {
    v16 = v12 <= v13;
  }

  else
  {
    v16 = 1;
  }

  v18 = !v16 && v14 <= v15;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v29 = integerValue;
    v30 = 2048;
    v31 = integerValue2;
    v32 = 2048;
    v33 = integerValue3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID [FastMigration]: asset processing progress: total: %ld, processed: %ld, failed: %ld", buf, 0x20u);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v19 = "No";
    if (v12 <= v13)
    {
      v20 = "No";
    }

    else
    {
      v20 = "Yes";
    }

    if (v14 > v15)
    {
      v21 = "Yes";
    }

    else
    {
      v21 = "No";
    }

    *buf = 136315650;
    v29 = v20;
    v30 = 2080;
    v31 = v21;
    if (v18)
    {
      v19 = "Yes";
    }

    v32 = 2080;
    v33 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID [FastMigration]: asset processing rate: processed>90%%: %s, failure>10%%: %s, pass: %s", buf, 0x20u);
  }

  return v18;
}

- (BOOL)_keepCurrentPersonsModelWithExtendTimeout:(id)timeout
{
  timeoutCopy = timeout;
  if ([objc_opt_class() _fastFaceMigrationEnabled])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    management = self->_management;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__VCPPhotosQuickFaceIdentificationManager__keepCurrentPersonsModelWithExtendTimeout___block_invoke;
    block[3] = &unk_1E834FE78;
    block[4] = self;
    v9 = timeoutCopy;
    v10 = &v11;
    dispatch_sync(management, block);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __85__VCPPhotosQuickFaceIdentificationManager__keepCurrentPersonsModelWithExtendTimeout___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) vcp_vipModelFilepathForVIPType:0];
  if (v2)
  {
    v9 = 0;
    v3 = [VCPFaceIDModel loadVIPModelAtPath:v2 withVIPType:0 error:&v9];
    v4 = v9;
    if (v3)
    {
      v5 = [*(*(a1 + 32) + 16) configuration];
      v6 = [v5 faceprintRequestRevision];

      LODWORD(v5) = [*(a1 + 32) faceProcessingVersionFromVNFaceprintRequestRevision:v6];
      v7 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:*(*(a1 + 32) + 32)];
      v8 = [v7 currentProcessingVersion];

      if (v5 != v8 && ([*(a1 + 32) _faceProcessingPassGoalWithExtendTimeout:*(a1 + 40)] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID [FastMigration]: cannot load Persons Model: %@", buf, 0xCu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "QuickFaceID [FastMigration]: persistent storageDirectoryURL is nil", buf, 2u);
  }
}

- (BOOL)_needToGenerateModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time withExtendTimeout:(id)timeout
{
  timeCopy = time;
  v19 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  if (([(PHPhotoLibrary *)self->_photoLibrary isSystemPhotoLibrary]& 1) == 0)
  {
    goto LABEL_10;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = VCPMAVIPTypeDescription(type);
    v10 = v9;
    v11 = "NO";
    if (timeCopy)
    {
      v11 = "YES";
    }

    v15 = 138412546;
    v16 = v9;
    v17 = 2080;
    v18 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID %@ Model: ignoreLastGenerationTime: %s", &v15, 0x16u);
  }

  if ([(VCPPhotosQuickFaceIdentificationManager *)self _modelLastGenerationDidExceedTimeIntervalForType:type]|| timeCopy)
  {
    if (type)
    {
      v12 = 0;
    }

    else
    {
      v12 = [(VCPPhotosQuickFaceIdentificationManager *)self _keepCurrentPersonsModelWithExtendTimeout:timeoutCopy];
    }

    v13 = !v12;
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  return v13;
}

- (int)generateVIPModelWithType:(unint64_t)type ignoreLastGenerationTime:(BOOL)time evaluationMode:(BOOL)mode allowUnverifiedPerson:(BOOL)person modelGenerated:(BOOL *)generated extendTimeout:(id)timeout andCancel:(id)cancel
{
  personCopy = person;
  modeCopy = mode;
  timeCopy = time;
  v23 = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  cancelCopy = cancel;
  if ([(VCPPhotosQuickFaceIdentificationManager *)self _needToGenerateModelWithType:type ignoreLastGenerationTime:timeCopy withExtendTimeout:timeoutCopy])
  {
    if (generated)
    {
      *generated = 1;
    }

    if (type == 1)
    {
      v17 = [(VCPPhotosQuickFaceIdentificationManager *)self _generatePetsModelWithExtendTimeoutBlock:timeoutCopy cancel:cancelCopy];
      goto LABEL_13;
    }

    if (!type)
    {
      v17 = [(VCPPhotosQuickFaceIdentificationManager *)self _generatePersonsModelWithExtendTimeoutBlock:timeoutCopy cancel:cancelCopy evaluationMode:modeCopy allowUnverifiedPerson:personCopy];
LABEL_13:
      v19 = v17;
      goto LABEL_18;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "QuickFaceID Model: unknown VIP type (%lu); no model generated", &v21, 0xCu);
    }

    v19 = -50;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v18 = VCPMAVIPTypeDescription(type);
      v21 = 138412290;
      typeCopy = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "QuickFaceID %@ Model: No need to generate model", &v21, 0xCu);
    }

    v19 = 0;
    if (generated)
    {
      *generated = 0;
    }
  }

LABEL_18:

  return v19;
}

@end