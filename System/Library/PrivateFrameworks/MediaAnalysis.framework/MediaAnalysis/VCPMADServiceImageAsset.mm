@interface VCPMADServiceImageAsset
+ (VCPMADServiceImageAsset)assetWithImageData:(id)data uniformTypeIdentifier:(id)identifier identifier:(id)a5 clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
+ (VCPMADServiceImageAsset)assetWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD;
- (CGSize)resolution;
- (VCPMADServiceImageAsset)initWithClientBundleID:(id)d clientTeamID:(id)iD;
- (id)vcp_annotationWithTypes:(unint64_t)types;
- (id)vcp_scenenetAnnotation;
- (id)vcp_textAnnotation;
@end

@implementation VCPMADServiceImageAsset

- (id)vcp_textAnnotation
{
  documentObservations = [(VCPMADServiceImageAsset *)self documentObservations];
  if (documentObservations)
  {
    v3 = [MEMORY[0x1E69E04A8] textBlockWithDocumentObservations:documentObservations];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vcp_scenenetAnnotation
{
  v37 = *MEMORY[0x1E69E9840];
  scenenetClassifications = [(VCPMADServiceImageAsset *)self scenenetClassifications];
  if (scenenetClassifications)
  {
    array = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = scenenetClassifications;
    v3 = scenenetClassifications;
    v4 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v31;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          vcp_sharedTaxonomy = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
          v10 = [vcp_sharedTaxonomy nodeForExtendedSceneClassId:{objc_msgSend(v8, "extendedSceneIdentifier")}];

          if (v10 && ([v10 name], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
          {
            v12 = objc_alloc(MEMORY[0x1E69E0490]);
            name = [v10 name];
            [v8 boundingBox];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            [v8 confidence];
            *&v23 = v22;
            v24 = [v12 initWithLabel:name normalizedBoundingBox:v15 confidence:{v17, v19, v21, v23}];
            [array addObject:v24];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            extendedSceneIdentifier = [v8 extendedSceneIdentifier];
            *buf = 134217984;
            v35 = extendedSceneIdentifier;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[SceneNet] Failed to find label for identifier %llu", buf, 0xCu);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v5);
    }

    v26 = [objc_alloc(MEMORY[0x1E69E0498]) initWithAnnotations:array revision:3737841665];
    scenenetClassifications = v28;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)vcp_annotationWithTypes:(unint64_t)types
{
  typesCopy = types;
  selfCopy = self;
  v150 = *MEMORY[0x1E69E9840];
  if ((types & 3) == 0)
  {
    array = 0;
    array2 = 0;
    v122 = 0;
    goto LABEL_79;
  }

  v5 = [(VCPMADServiceImageAsset *)self facesWithDetectionTypes:0];
  if ([v5 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    firstObject = [v5 firstObject];
    photoLibrary = [firstObject photoLibrary];

    v125 = array;
    v113 = v5;
    v114 = photoLibrary;
    v115 = typesCopy;
    v117 = selfCopy;
    if (photoLibrary)
    {
      goto LABEL_4;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      identifier = [(VCPMADServiceImageAsset *)selfCopy identifier];
      *buf = 138412290;
      v145 = identifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> face without photoLibrary", buf, 0xCu);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      photoLibrary2 = [(VCPMADServiceImageAsset *)selfCopy photoLibrary];
      v9 = MediaAnalysisLogLevel();
      v114 = photoLibrary2;
      if (photoLibrary2)
      {
        if (v9 >= 6)
        {
          v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
          if (v9)
          {
            identifier2 = [(VCPMADServiceImageAsset *)selfCopy identifier];
            *buf = 138412546;
            v145 = identifier2;
            v146 = 2112;
            v147 = photoLibrary2;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VI][%@] -> asset's photoLibrary %@", buf, 0x16u);
          }
        }

LABEL_4:
        v10 = VCPSignPostLog(v9);
        v11 = os_signpost_id_generate(v10);

        v13 = VCPSignPostLog(v12);
        v14 = v13;
        type = v11 - 1;
        if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADVIFetchVerifiedPeople", "", buf, 2u);
        }

        spid = v11;

        v121 = [v114 mad_allPersonsFetchOptionsWithDetectionTypes:&unk_1F49BEB48 andVerifiedTypes:&unk_1F49BEB60];
        v15 = [MEMORY[0x1E6978978] fetchPersonsWithFaces:v5 options:?];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v16 = [v15 count];
          *buf = 134217984;
          v145 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Fetched %lu verified identities", buf, 0xCu);
        }

        v17 = [v15 count];
        if (v17)
        {
          v18 = 0;
          v19 = MEMORY[0x1E69E9C10];
          do
          {
            v20 = objc_autoreleasePoolPush();
            v21 = [v15 objectAtIndexedSubscript:v18];
            localIdentifier = [v21 localIdentifier];
            [dictionary setObject:v21 forKeyedSubscript:localIdentifier];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              localIdentifier2 = [v21 localIdentifier];
              verifiedType = [v21 verifiedType];
              *buf = 138412546;
              v145 = localIdentifier2;
              v146 = 2048;
              v147 = verifiedType;
              _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_DEBUG, "[VI][Identity] -> identitity %@ with verified type %ld", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v20);
            ++v18;
            v17 = [v15 count];
          }

          while (v18 < v17);
        }

        v25 = VCPSignPostLog(v17);
        v26 = v25;
        if (type < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, spid, "MADVIFetchVerifiedPeople", "", buf, 2u);
        }

        typesCopy = v115;
        if ((v115 & 1) == 0)
        {
LABEL_20:
          v122 = 0;
          if ((typesCopy & 2) != 0)
          {
LABEL_21:
            array2 = [MEMORY[0x1E695DF70] array];
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v27 = v5;
            v28 = [v27 countByEnumeratingWithState:&v133 objects:v142 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v134;
              v31 = 0x1E69E0000uLL;
              spida = v27;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v134 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v33 = *(*(&v133 + 1) + 8 * i);
                  v34 = objc_autoreleasePoolPush();
                  if ([v33 vcp_hasBody])
                  {
                    [v33 vcp_normalizedBodyBounds];
                    v36 = v35;
                    v38 = v37;
                    v40 = v39;
                    v42 = v41;
                    v43 = objc_alloc(*(v31 + 1168));
                    LODWORD(v44) = 1.0;
                    v45 = [v43 initWithLabel:@"Human" normalizedBoundingBox:v36 confidence:{v38, v40, v42, v44}];
                    [array2 addObject:v45];

                    personLocalIdentifier = [v33 personLocalIdentifier];
                    v47 = [dictionary objectForKeyedSubscript:personLocalIdentifier];

                    if (v47 && [v47 faceCount])
                    {
                      v48 = v31;
                      faceCount = [v47 faceCount];
                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        personLocalIdentifier2 = [v33 personLocalIdentifier];
                        name = [v47 name];
                        *buf = 138412802;
                        v145 = personLocalIdentifier2;
                        v146 = 2112;
                        v147 = name;
                        v148 = 2048;
                        v149 = faceCount;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Creating VIReducePersonOverTriggerRegionalAnnotation for human (torso) identity %@ (%@) with %ld faces in Photos library", buf, 0x20u);
                      }

                      v52 = objc_alloc(MEMORY[0x1E69E0480]);
                      personLocalIdentifier3 = [v33 personLocalIdentifier];
                      LODWORD(v54) = 1.0;
                      v55 = [v52 initWithLabel:personLocalIdentifier3 boundingBox:faceCount confidence:v36 faceCount:{v38, v40, v42, v54}];

                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v145 = v55;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Created VIReducePersonOverTriggerRegionalAnnotation %@", buf, 0xCu);
                      }

                      array = v125;
                      [v125 addObject:v55];

                      v31 = v48;
                      v27 = spida;
                    }
                  }

                  objc_autoreleasePoolPop(v34);
                }

                v29 = [v27 countByEnumeratingWithState:&v133 objects:v142 count:16];
              }

              while (v29);
            }

            typesCopy = v115;
            selfCopy = v117;
            v5 = v113;
            goto LABEL_77;
          }

LABEL_76:
          array2 = 0;
LABEL_77:

          goto LABEL_78;
        }

LABEL_57:
        array3 = [MEMORY[0x1E695DF70] array];
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v66 = v5;
        v67 = [v66 countByEnumeratingWithState:&v137 objects:v143 count:16];
        v122 = array3;
        if (v67)
        {
          v68 = v67;
          v69 = *v138;
          do
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v138 != v69)
              {
                objc_enumerationMutation(v66);
              }

              v71 = *(*(&v137 + 1) + 8 * j);
              v72 = objc_autoreleasePoolPush();
              if ([v71 vcp_hasFace])
              {
                [v71 vcp_normalizedFaceBounds];
                v74 = v73;
                v76 = v75;
                v78 = v77;
                v80 = v79;
                v81 = objc_alloc(MEMORY[0x1E69E0490]);
                LODWORD(v82) = 1.0;
                v83 = [v81 initWithLabel:@"Face" normalizedBoundingBox:v74 confidence:{v76, v78, v80, v82}];
                [array3 addObject:v83];

                personLocalIdentifier4 = [v71 personLocalIdentifier];
                v85 = [dictionary objectForKeyedSubscript:personLocalIdentifier4];

                if (v85 && [v85 faceCount])
                {
                  faceCount2 = [v85 faceCount];
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    personLocalIdentifier5 = [v71 personLocalIdentifier];
                    name2 = [v85 name];
                    *buf = 138412802;
                    v145 = personLocalIdentifier5;
                    v146 = 2112;
                    v147 = name2;
                    v148 = 2048;
                    v149 = faceCount2;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Creating VIReducePersonOverTriggerRegionalAnnotation for face identity %@ (%@) with %ld faces in Photos library", buf, 0x20u);
                  }

                  v89 = objc_alloc(MEMORY[0x1E69E0480]);
                  personLocalIdentifier6 = [v71 personLocalIdentifier];
                  LODWORD(v91) = 1.0;
                  v92 = [v89 initWithLabel:personLocalIdentifier6 boundingBox:faceCount2 confidence:v74 faceCount:{v76, v78, v80, v91}];

                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v145 = v92;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Created VIReducePersonOverTriggerRegionalAnnotation %@", buf, 0xCu);
                  }

                  array = v125;
                  [v125 addObject:v92];

                  array3 = v122;
                }
              }

              objc_autoreleasePoolPop(v72);
            }

            v68 = [v66 countByEnumeratingWithState:&v137 objects:v143 count:16];
          }

          while (v68);
        }

        typesCopy = v115;
        selfCopy = v117;
        v5 = v113;
        if ((v115 & 2) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_76;
      }

      if (v9 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        identifier3 = [(VCPMADServiceImageAsset *)selfCopy identifier];
        *buf = 138412290;
        v145 = identifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> asset without photoLibrary", buf, 0xCu);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      identifier4 = [(VCPMADServiceImageAsset *)selfCopy identifier];
      v60 = objc_opt_class();
      v61 = v60;
      v62 = objc_opt_class();
      *buf = 138412802;
      v145 = identifier4;
      v146 = 2112;
      v147 = v60;
      v148 = 2112;
      v149 = v62;
      v63 = v62;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VI][%@] -> faces from %@ (expected %@)", buf, 0x20u);

      array = v125;
    }

    v114 = 0;
    if ((typesCopy & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_57;
  }

  array = 0;
  array2 = 0;
  v122 = 0;
LABEL_78:

LABEL_79:
  if ([array count])
  {
    v93 = [objc_alloc(MEMORY[0x1E69E0478]) initWithRegionsItems:array];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v94 = [array count];
      *buf = 134218242;
      v145 = v94;
      v146 = 2112;
      v147 = v93;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VI][Identity] Packaged VIReducePersonOverTriggerAnnotation with %lu VIReducePersonOverTriggerRegionalAnnotation - %@", buf, 0x16u);
    }

    if ((typesCopy & 4) == 0)
    {
LABEL_84:
      array4 = 0;
      if ((typesCopy & 8) != 0)
      {
        goto LABEL_85;
      }

LABEL_104:
      vcp_textAnnotation = 0;
      if ((typesCopy & 0x10) != 0)
      {
        goto LABEL_86;
      }

      goto LABEL_105;
    }
  }

  else
  {
    v93 = 0;
    if ((typesCopy & 4) == 0)
    {
      goto LABEL_84;
    }
  }

  nsfwClassifications = [(VCPMADServiceImageAsset *)selfCopy nsfwClassifications];
  if (nsfwClassifications)
  {
    typea = v93;
    v116 = typesCopy;
    v118 = selfCopy;
    v126 = array;
    array4 = [MEMORY[0x1E695DF70] array];
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v99 = nsfwClassifications;
    v100 = [v99 countByEnumeratingWithState:&v129 objects:v141 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v130;
      do
      {
        for (k = 0; k != v101; ++k)
        {
          if (*v130 != v102)
          {
            objc_enumerationMutation(v99);
          }

          v104 = *(*(&v129 + 1) + 8 * k);
          v105 = VCPSpecialLabelFromExtendedSceneClassificationID([v104 extendedSceneIdentifier]);
          if (v105)
          {
            v106 = objc_alloc(MEMORY[0x1E69E0490]);
            [v104 confidence];
            *&v108 = v107;
            v109 = [v106 initWithLabel:v105 normalizedBoundingBox:0.0 confidence:{0.0, 1.0, 1.0, v108}];
            [array4 addObject:v109];
          }

          else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            extendedSceneIdentifier = [v104 extendedSceneIdentifier];
            *buf = 134217984;
            v145 = extendedSceneIdentifier;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[NSFW] Failed to find label for identifier %llu", buf, 0xCu);
          }
        }

        v101 = [v99 countByEnumeratingWithState:&v129 objects:v141 count:16];
      }

      while (v101);
    }

    array = v126;
    typesCopy = v116;
    selfCopy = v118;
    v93 = typea;
  }

  else
  {
    array4 = 0;
  }

  if ((typesCopy & 8) == 0)
  {
    goto LABEL_104;
  }

LABEL_85:
  vcp_textAnnotation = [(VCPMADServiceImageAsset *)selfCopy vcp_textAnnotation];
  if ((typesCopy & 0x10) != 0)
  {
LABEL_86:
    vcp_scenenetAnnotation = [(VCPMADServiceImageAsset *)selfCopy vcp_scenenetAnnotation];
    goto LABEL_106;
  }

LABEL_105:
  vcp_scenenetAnnotation = 0;
LABEL_106:
  v111 = [objc_alloc(MEMORY[0x1E69E0448]) initWithReducePersonOverTriggerAnnotation:v93 faceAnnotations:v122 humanAnnotations:array2 nsfwAnnotations:array4 textBlockAnnotation:vcp_textAnnotation scenenetAnnotation:vcp_scenenetAnnotation barcodeAnnotation:0];

  return v111;
}

- (VCPMADServiceImageAsset)initWithClientBundleID:(id)d clientTeamID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = VCPMADServiceImageAsset;
  v9 = [(VCPMADServiceImageAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientBundleID, d);
    objc_storeStrong(&v10->_clientTeamID, iD);
  }

  return v10;
}

+ (VCPMADServiceImageAsset)assetWithPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  v9 = *&orientation;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v14 = [[VCPMADServiceImagePixelBufferAsset alloc] initWithPixelBuffer:buffer orientation:v9 andIdentifier:identifierCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v14;
}

+ (VCPMADServiceImageAsset)assetWithURL:(id)l identifier:(id)identifier clientBundleID:(id)d clientTeamID:(id)iD
{
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v13 = [[VCPMADServiceImageURLAsset alloc] initWithURL:lCopy identifier:identifierCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v13;
}

+ (VCPMADServiceImageAsset)assetWithImageData:(id)data uniformTypeIdentifier:(id)identifier identifier:(id)a5 clientBundleID:(id)d clientTeamID:(id)iD
{
  dataCopy = data;
  identifierCopy = identifier;
  v13 = a5;
  dCopy = d;
  iDCopy = iD;
  v16 = [[VCPMADServiceImageDataAsset alloc] initWithImageData:dataCopy uniformTypeIdentifier:identifierCopy identifier:v13 clientBundleID:dCopy clientTeamID:iDCopy];

  return v16;
}

+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset clientBundleID:(id)d clientTeamID:(id)iD
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  v10 = [[VCPMADServiceImagePhotosAsset alloc] initWithPhotosAsset:assetCopy clientBundleID:dCopy clientTeamID:iDCopy];

  return v10;
}

+ (VCPMADServiceImageAsset)assetWithPhotosAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation clientBundleID:(id)d clientTeamID:(id)iD
{
  v9 = *&orientation;
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  v14 = [[VCPMADServiceImagePhotosAsset alloc] initWithPhotosAsset:assetCopy pixelBuffer:buffer orientation:v9 clientBundleID:dCopy clientTeamID:iDCopy];

  return v14;
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

@end