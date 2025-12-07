@interface AXMFaceDetectorNode
- (AXMFaceDetectorNode)initWithCoder:(id)coder;
- (BOOL)validateVisionKitSoftLinkSymbols;
- (id)_createRequestsForContext:(id)context;
- (id)_faceDetectionResultsForVisionRequests:(id)requests canvasSize:(CGSize)size;
- (id)_faceResultForUUID:(id)d inFaceDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)evaluate:(id)evaluate metrics:(id)metrics;
- (void)nodeInitialize;
@end

@implementation AXMFaceDetectorNode

- (void)nodeInitialize
{
  v2.receiver = self;
  v2.super_class = AXMFaceDetectorNode;
  [(AXMEvaluationNode *)&v2 nodeInitialize];
}

- (AXMFaceDetectorNode)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = AXMFaceDetectorNode;
  return [(AXMEvaluationNode *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = AXMFaceDetectorNode;
  [(AXMEvaluationNode *)&v3 encodeWithCoder:coder];
}

- (BOOL)validateVisionKitSoftLinkSymbols
{
  if (getVNDetectFaceExpressionsRequestClass())
  {
    v5.receiver = self;
    v5.super_class = AXMFaceDetectorNode;
    return [(AXMVisionEngineNode *)&v5 validateVisionKitSoftLinkSymbols];
  }

  else
  {
    v4 = AXMediaLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [AXMFaceDetectorNode validateVisionKitSoftLinkSymbols];
    }

    return 0;
  }
}

- (id)_createRequestsForContext:(id)context
{
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  analysisOptions = [contextCopy analysisOptions];
  detectFaceNames = [analysisOptions detectFaceNames];

  if (detectFaceNames)
  {
    sourceInput = [contextCopy sourceInput];
    photoLibraryURL = [sourceInput photoLibraryURL];

    _faceNameHelper = [(AXMFaceDetectorNode *)self _faceNameHelper];

    if (!_faceNameHelper)
    {
      v11 = objc_alloc_init(AXMVisionFaceNameHelper);
      [(AXMFaceDetectorNode *)self set_faceNameHelper:v11];
    }

    _faceNameHelper2 = [(AXMFaceDetectorNode *)self _faceNameHelper];
    v13 = [_faceNameHelper2 prepareForLookupWithPhotoLibraryURL:photoLibraryURL];

    if (v13)
    {
      if (!getVNCreateFaceprintRequestClass())
      {
        v45 = AXMediaLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [AXMFaceDetectorNode _createRequestsForContext:];
        }

        goto LABEL_54;
      }

      _faceprintRequest = [(AXMFaceDetectorNode *)self _faceprintRequest];

      if (!_faceprintRequest)
      {
        v46 = objc_alloc_init(getVNCreateFaceprintRequestClass());
        [(AXMFaceDetectorNode *)self set_faceprintRequest:v46];

        _faceprintRequest2 = [(AXMFaceDetectorNode *)self _faceprintRequest];
        _faceNameHelper3 = [(AXMFaceDetectorNode *)self _faceNameHelper];
        v55 = 0;
        [_faceprintRequest2 setRevision:objc_msgSend(_faceNameHelper3 error:{"faceprintRequestRevisionForPersonsModel"), &v55}];
        v45 = v55;

        if (v45)
        {
          v49 = AXMediaLogCommon();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [(AXMFaceDetectorNode *)self _createRequestsForContext:v45, v49];
          }

LABEL_54:
LABEL_59:

          goto LABEL_60;
        }
      }

      _faceprintRequest3 = [(AXMFaceDetectorNode *)self _faceprintRequest];
      [array addObject:_faceprintRequest3];
    }
  }

  analysisOptions2 = [contextCopy analysisOptions];
  detectFaceAttributes = [analysisOptions2 detectFaceAttributes];

  if (detectFaceAttributes)
  {
    if (!getVNClassifyFaceAttributesRequestClass())
    {
      v41 = AXMediaLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode _createRequestsForContext:];
      }

      goto LABEL_49;
    }

    _faceAttributesRequest = [(AXMFaceDetectorNode *)self _faceAttributesRequest];

    if (!_faceAttributesRequest)
    {
      v42 = objc_alloc_init(getVNClassifyFaceAttributesRequestClass());
      [(AXMFaceDetectorNode *)self set_faceAttributesRequest:v42];

      _faceAttributesRequest2 = [(AXMFaceDetectorNode *)self _faceAttributesRequest];
      v54 = 0;
      [_faceAttributesRequest2 setRevision:3737841666 error:&v54];
      photoLibraryURL = v54;

      if (photoLibraryURL)
      {
        v44 = AXMediaLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [(AXMFaceDetectorNode *)photoLibraryURL _createRequestsForContext:v44];
        }

LABEL_58:

        goto LABEL_59;
      }
    }

    _faceAttributesRequest3 = [(AXMFaceDetectorNode *)self _faceAttributesRequest];
    [array addObject:_faceAttributesRequest3];
  }

  analysisOptions3 = [contextCopy analysisOptions];
  detectFaceExpressions = [analysisOptions3 detectFaceExpressions];

  if (detectFaceExpressions)
  {
    if (!getVNDetectFaceExpressionsRequestClass())
    {
      v41 = AXMediaLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode validateVisionKitSoftLinkSymbols];
      }

      goto LABEL_49;
    }

    _faceExpressionsRequest = [(AXMFaceDetectorNode *)self _faceExpressionsRequest];

    if (!_faceExpressionsRequest)
    {
      v23 = objc_alloc_init(getVNDetectFaceExpressionsRequestClass());
      [(AXMFaceDetectorNode *)self set_faceExpressionsRequest:v23];
    }

    _faceExpressionsRequest2 = [(AXMFaceDetectorNode *)self _faceExpressionsRequest];
    [array addObject:_faceExpressionsRequest2];
  }

  analysisOptions4 = [contextCopy analysisOptions];
  detectFaceLandmarks = [analysisOptions4 detectFaceLandmarks];

  if (detectFaceLandmarks)
  {
    if (!getVNDetectFaceLandmarksRequestClass())
    {
      v41 = AXMediaLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode _createRequestsForContext:];
      }

      goto LABEL_49;
    }

    _faceLandmarksRequest = [(AXMFaceDetectorNode *)self _faceLandmarksRequest];

    if (!_faceLandmarksRequest)
    {
      v28 = objc_alloc_init(getVNDetectFaceLandmarksRequestClass());
      [(AXMFaceDetectorNode *)self set_faceLandmarksRequest:v28];
    }

    _faceLandmarksRequest2 = [(AXMFaceDetectorNode *)self _faceLandmarksRequest];
    [array addObject:_faceLandmarksRequest2];
  }

  analysisOptions5 = [contextCopy analysisOptions];
  detectFacePose = [analysisOptions5 detectFacePose];

  if (detectFacePose)
  {
    if (!getVNDetectFacePoseRequestClass())
    {
      v41 = AXMediaLogCommon();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [AXMFaceDetectorNode _createRequestsForContext:];
      }

      goto LABEL_49;
    }

    _facePoseRequest = [(AXMFaceDetectorNode *)self _facePoseRequest];

    if (!_facePoseRequest)
    {
      v33 = objc_alloc_init(getVNDetectFacePoseRequestClass());
      [(AXMFaceDetectorNode *)self set_facePoseRequest:v33];
    }

    _facePoseRequest2 = [(AXMFaceDetectorNode *)self _facePoseRequest];
    [array addObject:_facePoseRequest2];
  }

  v35 = [array count];
  analysisOptions6 = [contextCopy analysisOptions];
  detectFaceRectangles = [analysisOptions6 detectFaceRectangles];

  if ((detectFaceRectangles & 1) == 0 && !v35)
  {
    goto LABEL_33;
  }

  if (getVNDetectFaceRectanglesRequestClass())
  {
    _faceRectanglesRequest = [(AXMFaceDetectorNode *)self _faceRectanglesRequest];

    if (!_faceRectanglesRequest)
    {
      v50 = objc_alloc_init(getVNDetectFaceRectanglesRequestClass());
      [(AXMFaceDetectorNode *)self set_faceRectanglesRequest:v50];

      _faceRectanglesRequest2 = [(AXMFaceDetectorNode *)self _faceRectanglesRequest];
      v53 = 0;
      [_faceRectanglesRequest2 setRevision:3737841666 error:&v53];
      photoLibraryURL = v53;

      if (photoLibraryURL)
      {
        v44 = AXMediaLogCommon();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [(AXMFaceDetectorNode *)photoLibraryURL _createRequestsForContext:v44];
        }

        goto LABEL_58;
      }
    }

    _faceRectanglesRequest3 = [(AXMFaceDetectorNode *)self _faceRectanglesRequest];
    [array addObject:_faceRectanglesRequest3];

LABEL_33:
    v40 = array;
    goto LABEL_61;
  }

  v41 = AXMediaLogCommon();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    [AXMFaceDetectorNode _createRequestsForContext:];
  }

LABEL_49:

LABEL_60:
  v40 = 0;
LABEL_61:

  return v40;
}

- (id)_faceDetectionResultsForVisionRequests:(id)requests canvasSize:(CGSize)size
{
  v5 = MEMORY[0x1E695DF90];
  requestsCopy = requests;
  dictionary = [v5 dictionary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AXMFaceDetectorNode__faceDetectionResultsForVisionRequests_canvasSize___block_invoke;
  v12[3] = &unk_1E7A1C9B0;
  v12[4] = self;
  v8 = dictionary;
  v13 = v8;
  [requestsCopy enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __73__AXMFaceDetectorNode__faceDetectionResultsForVisionRequests_canvasSize___block_invoke(uint64_t a1, void *a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = a2;
  getVNDetectFaceRectanglesRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v4 = [v3 results];
    v5 = [v4 countByEnumeratingWithState:&v94 objects:v103 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v95;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v95 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v94 + 1) + 8 * i);
          v10 = *(a1 + 32);
          v11 = [v9 uuid];
          v12 = [v10 _faceResultForUUID:v11 inFaceDictionary:*(a1 + 40)];

          [v12 setFaceId:{objc_msgSend(v9, "faceId")}];
          v13 = [v9 uuid];
          [v12 setUuid:v13];

          [v9 boundingBox];
          [v12 setFrame:?];
          [v9 confidence];
          [v12 setRectanglesConfidence:v14];
        }

        v6 = [v4 countByEnumeratingWithState:&v94 objects:v103 count:16];
      }

      while (v6);
    }

    goto LABEL_54;
  }

  getVNCreateFaceprintRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v4 = [v3 results];
    v15 = [v4 countByEnumeratingWithState:&v90 objects:v102 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v91;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v91 != v17)
          {
            objc_enumerationMutation(v4);
          }

          v19 = *(*(&v90 + 1) + 8 * j);
          v20 = *(a1 + 32);
          v21 = [v19 uuid];
          v22 = [v20 _faceResultForUUID:v21 inFaceDictionary:*(a1 + 40)];

          v23 = [*(a1 + 32) _faceNameHelper];
          v24 = [v23 nameForFaceObservation:v19];
          [v22 setName:v24];

          [v19 confidence];
          [v22 setNameConfidence:v25];
        }

        v16 = [v4 countByEnumeratingWithState:&v90 objects:v102 count:16];
      }

      while (v16);
    }

    goto LABEL_54;
  }

  getVNClassifyFaceAttributesRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v4 = [v3 results];
    v26 = [v4 countByEnumeratingWithState:&v86 objects:v101 count:16];
    if (!v26)
    {
LABEL_54:

      goto LABEL_55;
    }

    v27 = v26;
    v73 = v3;
    v28 = *v87;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v87 != v28)
        {
          objc_enumerationMutation(v4);
        }

        v30 = *(*(&v86 + 1) + 8 * k);
        v31 = *(a1 + 32);
        v32 = [v30 uuid];
        v33 = [v31 _faceResultForUUID:v32 inFaceDictionary:*(a1 + 40)];

        v34 = [AXMVisionFeatureFaceAttributes alloc];
        v35 = [v30 faceAttributes];
        v36 = [(AXMVisionFeatureFaceAttributes *)v34 initWithVisionFaceAttributes:v35];
        [v33 setAttributes:v36];

        v37 = +[AXMVisionFeatureFaceAttributes defaultExcludeOptions];
        v38 = [v33 attributes];
        [v38 setExcludeOptions:v37];

        [v30 confidence];
        [v33 setAttributesConfidence:v39];
      }

      v27 = [v4 countByEnumeratingWithState:&v86 objects:v101 count:16];
    }

    while (v27);
LABEL_27:
    v3 = v73;
    goto LABEL_54;
  }

  getVNDetectFaceExpressionsRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v4 = [v3 results];
    v40 = [v4 countByEnumeratingWithState:&v82 objects:v100 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v83;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v83 != v42)
          {
            objc_enumerationMutation(v4);
          }

          v44 = *(*(&v82 + 1) + 8 * m);
          v45 = *(a1 + 32);
          v46 = [v44 uuid];
          v47 = [v45 _faceResultForUUID:v46 inFaceDictionary:*(a1 + 40)];

          v48 = [v44 expressionsAndConfidence];
          [v47 setExpressionsAndConfidence:v48];
        }

        v41 = [v4 countByEnumeratingWithState:&v82 objects:v100 count:16];
      }

      while (v41);
    }

    goto LABEL_54;
  }

  getVNDetectFaceLandmarksRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v4 = [v3 results];
    v49 = [v4 countByEnumeratingWithState:&v78 objects:v99 count:16];
    if (!v49)
    {
      goto LABEL_54;
    }

    v50 = v49;
    v73 = v3;
    v51 = *v79;
    do
    {
      for (n = 0; n != v50; ++n)
      {
        if (*v79 != v51)
        {
          objc_enumerationMutation(v4);
        }

        v53 = *(*(&v78 + 1) + 8 * n);
        v54 = *(a1 + 32);
        v55 = [v53 uuid];
        v56 = [v54 _faceResultForUUID:v55 inFaceDictionary:*(a1 + 40)];

        v57 = [AXMVisionFeatureFaceLandmarks alloc];
        v58 = [v53 landmarks];
        v59 = [(AXMVisionFeatureFaceLandmarks *)v57 initWithVisionFaceLandmarks:v58];
        [v56 setLandmarks:v59];

        v60 = [AXMVisionFeatureFaceLandmarks alloc];
        v61 = [v53 landmarks3d];
        v62 = [(AXMVisionFeatureFaceLandmarks *)v60 initWithVisionFaceLandmarks:v61];
        [v56 setLandmarks3d:v62];

        [v53 confidence];
        [v56 setLandmarksConfidence:v63];
      }

      v50 = [v4 countByEnumeratingWithState:&v78 objects:v99 count:16];
    }

    while (v50);
    goto LABEL_27;
  }

  getVNDetectFacePoseRequestClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v4 = [v3 results];
    v64 = [v4 countByEnumeratingWithState:&v74 objects:v98 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v75;
      do
      {
        for (ii = 0; ii != v65; ++ii)
        {
          if (*v75 != v66)
          {
            objc_enumerationMutation(v4);
          }

          v68 = *(*(&v74 + 1) + 8 * ii);
          v69 = *(a1 + 32);
          v70 = [v68 uuid];
          v71 = [v69 _faceResultForUUID:v70 inFaceDictionary:*(a1 + 40)];

          [v68 pose];
          [v71 setPose:?];
          [v68 confidence];
          [v71 setPoseConfidence:v72];
        }

        v65 = [v4 countByEnumeratingWithState:&v74 objects:v98 count:16];
      }

      while (v65);
    }

    goto LABEL_54;
  }

LABEL_55:
}

- (void)evaluate:(id)evaluate metrics:(id)metrics
{
  evaluateCopy = evaluate;
  metricsCopy = metrics;
  v15.receiver = self;
  v15.super_class = AXMFaceDetectorNode;
  [(AXMEvaluationNode *)&v15 evaluate:evaluateCopy metrics:metricsCopy];
  v8 = objc_autoreleasePoolPush();
  v9 = [(AXMFaceDetectorNode *)self _createRequestsForContext:evaluateCopy];
  if ([v9 count])
  {
    [(AXMEvaluationNode *)self evaluateRequests:v9 withContext:evaluateCopy requestHandlerOptions:0 metrics:metricsCopy error:0];
    [evaluateCopy size];
    v10 = [(AXMFaceDetectorNode *)self _faceDetectionResultsForVisionRequests:v9 canvasSize:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__AXMFaceDetectorNode_evaluate_metrics___block_invoke;
    v12[3] = &unk_1E7A1C9D8;
    v11 = evaluateCopy;
    v13 = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:v12];
    [v11 addEvaluatedFeatureType:5];
  }

  else
  {
    v10 = AXMediaLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEFAULT, "AXMFaceDetectorNode: no requests to evaluate", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void __40__AXMFaceDetectorNode_evaluate_metrics___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v3 size];
  v5 = [AXMVisionFeature featureWithFaceDetectionResult:v4 canvasSize:?];

  [v3 appendFeature:v5];
}

- (id)_faceResultForUUID:(id)d inFaceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uUIDString = [d UUIDString];
  v7 = [dictionaryCopy objectForKeyedSubscript:uUIDString];
  if (!v7)
  {
    v7 = objc_alloc_init(AXMVisionFeatureFaceDetectionResult);
    [dictionaryCopy setObject:v7 forKeyedSubscript:uUIDString];
  }

  return v7;
}

- (void)_createRequestsForContext:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 _faceNameHelper];
  v6 = 134218242;
  v7 = [v5 faceprintRequestRevisionForPersonsModel];
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1AE37B000, a3, OS_LOG_TYPE_ERROR, "Could not set revision %ld. Error : %@", &v6, 0x16u);
}

- (void)_createRequestsForContext:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218242;
  v3 = 3737841666;
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not set face attributes revision %ld. Error : %@", &v2, 0x16u);
}

- (void)_createRequestsForContext:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "Could not set revision VNDetectFaceRectanglesRequestPrivateRevisionANOD3Detector. Error : %@", &v2, 0xCu);
}

@end