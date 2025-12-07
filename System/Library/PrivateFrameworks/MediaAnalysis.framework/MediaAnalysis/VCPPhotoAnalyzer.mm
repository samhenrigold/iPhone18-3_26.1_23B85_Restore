@interface VCPPhotoAnalyzer
+ (BOOL)canAnalyzeUndegraded:(id)undegraded withResources:(id)resources;
+ (id)analyzerWithVCPAsset:(id)asset forAnalysisTypes:(unint64_t)types;
+ (id)resourceForAsset:(id)asset withResources:(id)resources;
- (VCPPhotoAnalyzer)initWithPHAsset:(id)asset existingAnalysis:(id)analysis analysisTypes:(unint64_t)types downloadedData:(id)data;
- (VCPPhotoAnalyzer)initWithVCPAsset:(id)asset withExistingAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types;
- (id).cxx_construct;
- (id)analyzeAsset:(id)asset withOptions:(id)options;
- (id)existingAnalysisForMovieAnalyzer;
- (int)analyzeImage:(unint64_t *)image performedAnalyses:(unint64_t *)analyses cancel:(id)cancel;
- (int)checkFaceDominant;
- (int)downscaleImage:(__CVBuffer *)image scaledImage:(__CVBuffer *)scaledImage majorDimension:(int)dimension;
- (int)runBlock:(id)block queue:(id)queue;
- (void)_reportPetsAnalysisWithResults:(id)results;
- (void)processExistingAnalyses:(id)analyses;
@end

@implementation VCPPhotoAnalyzer

+ (id)resourceForAsset:(id)asset withResources:(id)resources
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourcesCopy = resources;
  v7 = [resourcesCopy vcp_localPhotoResourcesSorted:{objc_msgSend(assetCopy, "hasAdjustments")}];

  if ([v7 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if ([v13 vcp_fileSize] <= 0x800000 && objc_msgSend(v13, "vcp_isDecodable"))
          {
            [v13 vcp_size];
            if (v14 < v15)
            {
              v16 = v15;
            }

            else
            {
              v16 = v14;
            }

            v17 = v13;
            if (v16 > 1536.0)
            {

              goto LABEL_19;
            }

            v9 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v9 = v9;
    v17 = v9;
LABEL_19:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (BOOL)canAnalyzeUndegraded:(id)undegraded withResources:(id)resources
{
  undegradedCopy = undegraded;
  v6 = [VCPPhotoAnalyzer resourceForAsset:undegradedCopy withResources:resources];
  [v6 vcp_size];
  if (v7 < v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9 >= 1536.0)
  {
    v12 = 1;
  }

  else
  {
    [undegradedCopy vcp_originalSize];
    if (v10 < v11)
    {
      v10 = v11;
    }

    v12 = v9 >= v10;
  }

  return v12;
}

- (VCPPhotoAnalyzer)initWithVCPAsset:(id)asset withExistingAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types
{
  v45 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  v11 = MEMORY[0x1E696AEC0];
  localIdentifier = [assetCopy localIdentifier];
  v13 = [v11 stringWithFormat:@"[%@][PhotoAnalyzer]", localIdentifier];

  v38.receiver = self;
  v38.super_class = VCPPhotoAnalyzer;
  v14 = [(VCPPhotoAnalyzer *)&v38 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_24;
  }

  modificationDate = [assetCopy modificationDate];
  v17 = modificationDate == 0;

  if (!v17)
  {
    *(v14 + 60) = 0;
    *(v14 + 17) = 0;
    *(v14 + 18) = 0;
    *(v14 + 16) = 1;
    *(v14 + 1) = types;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = *(v14 + 2);
    *(v14 + 2) = dictionary;

    objc_storeStrong(v14 + 6, asset);
    __asm { FMOV            V0.2S, #1.0 }

    *(v14 + 7) = -_D0;
    v25 = *(v14 + 1);
    v26 = v25 & 0xFFFCBE36FFFFFFFFLL;
    if ((v25 & 0xFFFCBE36FFFFFFFFLL) != 0)
    {
      v25 |= 0x80200uLL;
    }

    if (v26 | v25 & 0x2000000000)
    {
      *(v14 + 1) = v25 | ((v25 & 0x2000000000uLL) >> 20);
    }

    [v14 processExistingAnalyses:analysisCopy];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v27 = MediaAnalysisTypeShortDescription(*(v14 + 1));
      *buf = 138412546;
      v40 = v13;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Initial to process (%@)", buf, 0x16u);
    }

    isLivePhoto = [*(v14 + 6) isLivePhoto];
    v29 = *(v14 + 1);
    if (!isLivePhoto)
    {
      goto LABEL_16;
    }

    v30 = v29 & 0x4000AF47FCA400D0;
    *(v14 + 3) = v29 & 0x4000AF47FCA400D0;
    v14[65] = (v29 & 0x40000000) != 0;
    if ((v29 & 0x80) != 0)
    {
      v30 |= 8uLL;
      *(v14 + 3) = v30;
      v29 |= 0x200uLL;
      *(v14 + 1) = v29;
      if ((v30 & 0x40000) == 0)
      {
LABEL_13:
        if ((v30 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }
    }

    else if ((v29 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    v29 |= 0x200uLL;
    *(v14 + 1) = v29;
    if ((v30 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v29 & 0x100000) == 0)
      {
LABEL_16:
        if ((v29 & 0x2000000000200) != 0)
        {
          *(v14 + 1) = (v29 >> 6) & 8 | (v29 >> 1) & 0x1000000000000 | v29;
        }

        [*(v14 + 2) vcp_setVersion:75];
        v31 = *(v14 + 2);
        modificationDate2 = [(VCPAsset *)v15->_asset modificationDate];
        [v31 vcp_setDateModified:modificationDate2];

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v33 = MediaAnalysisTypeShortDescription(v15->_requestedAnalyses);
          v34 = MediaAnalysisTypeShortDescription(v15->_irisAnalyses);
          *buf = 138412802;
          v40 = v13;
          v41 = 2112;
          v42 = v33;
          v43 = 2112;
          v44 = v34;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Initialized to process (%@), iris (%@)", buf, 0x20u);
        }

        goto LABEL_24;
      }

LABEL_15:
      v29 |= 0x20008uLL;
      *(v14 + 1) = v29;
      goto LABEL_16;
    }

LABEL_30:
    *(v14 + 3) = v30 | 0x88;
    if ((v29 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!*(v14 + 17))
  {
    *(v14 + 136) = xmmword_1C9F638E0;
  }

  *(v14 + 16) = 3;
  v35 = *(v14 + 2);
  *(v14 + 2) = 0;

LABEL_24:
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v36 = [(NSMutableDictionary *)v15->_analysis vcp_analysisDescriptionWithResultDetails:1];
    *buf = 138412546;
    v40 = v13;
    v41 = 2112;
    v42 = v36;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Initialized analysis %@", buf, 0x16u);
  }

  return v15;
}

+ (id)analyzerWithVCPAsset:(id)asset forAnalysisTypes:(unint64_t)types
{
  assetCopy = asset;
  v6 = [objc_alloc(objc_opt_class()) initWithVCPAsset:assetCopy withExistingAnalysis:0 forAnalysisTypes:types];

  return v6;
}

- (VCPPhotoAnalyzer)initWithPHAsset:(id)asset existingAnalysis:(id)analysis analysisTypes:(unint64_t)types downloadedData:(id)data
{
  v38 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  v13 = [VCPPhotosAsset assetWithPHAsset:assetCopy downloadedData:data];
  v14 = MediaAnalysisStripOutdatedAnalysis(assetCopy, analysisCopy);
  v15 = [(VCPPhotoAnalyzer *)self initWithVCPAsset:v13 withExistingAnalysis:v14 forAnalysisTypes:types];

  if (v15)
  {
    objc_storeStrong(&v15->_phAsset, asset);
    if ((v15->_requestedAnalyses & 0x200) != 0)
    {
      if ([assetCopy vcp_needSceneProcessing])
      {
        v15->_preAnalysisSharpnessScore = -1.0;
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier = [assetCopy localIdentifier];
          *buf = 138412290;
          v37 = localIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] missing Pre Analysis result", buf, 0xCu);
        }
      }

      else
      {
        mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];

        if (mediaAnalysisProperties)
        {
          mediaAnalysisProperties2 = [assetCopy mediaAnalysisProperties];
          [mediaAnalysisProperties2 blurrinessScore];
          v15->_preAnalysisSharpnessScore = v19;
        }

        else
        {
          v15->_preAnalysisSharpnessScore = -1.0;
        }
      }
    }

    requestedAnalyses = v15->_requestedAnalyses;
    if (((requestedAnalyses & 0xC) == 4 || (requestedAnalyses & 8) != 0 && [MEMORY[0x1E6978628] vcp_usePHFace]) && (objc_msgSend(assetCopy, "vcp_needsFaceProcessing") & 1) == 0)
    {
      v35 = 0;
      v21 = [assetCopy vcp_queryPHFaces:&v15->_phFaceFlags results:&v35];
      v22 = v35;
      analysis = v22;
      if (v21)
      {
        if (!v15->_errorCode)
        {
          *&v15->_errorCode = xmmword_1C9F638F0;
        }

        v15->_status = 3;
        analysis = v15->_analysis;
        v15->_analysis = 0;
      }

      else
      {
        if (v22 && [(NSMutableDictionary *)v22 count])
        {
          v24 = [(NSMutableDictionary *)analysis objectForKey:@"FaceQualityFlag"];
          intValue = [v24 intValue];

          if ((v15->_requestedAnalyses & 0x40000) != 0 && ((v26 = [(VCPAsset *)v15->_asset isLivePhoto], !intValue) ? (v27 = v26) : (v27 = 0), v27))
          {
            phFaceResults = v15->_phFaceResults;
            v15->_phFaceResults = 0;
          }

          else
          {
            v30 = MEMORY[0x1E695DF20];
            phFaceResults = [(NSMutableDictionary *)analysis objectForKeyedSubscript:@"FaceResults"];
            v31 = [(NSMutableDictionary *)analysis objectForKeyedSubscript:@"ShotTypeResults"];
            v32 = [v30 dictionaryWithObjectsAndKeys:{phFaceResults, @"FaceResults", v31, @"ShotTypeResults", 0}];
            v33 = v15->_phFaceResults;
            v15->_phFaceResults = v32;
          }
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF20] dictionary];
          phFaceResults = v15->_phFaceResults;
          v15->_phFaceResults = dictionary;
        }
      }
    }
  }

  return v15;
}

- (void)processExistingAnalyses:(id)analyses
{
  analysesCopy = analyses;
  if (analysesCopy)
  {
    v4 = [analysesCopy objectForKey:@"performedAnalysisTypes"];

    if (v4)
    {
      vcp_types = [analysesCopy vcp_types];
      v6 = self->_requestedAnalyses & vcp_types;
      if ([(VCPAsset *)self->_asset isMovie])
      {
        if ((self->_requestedAnalyses & 0x2000000000000) != 0)
        {
          vcp_results = [analysesCopy vcp_results];
          v8 = [vcp_results objectForKeyedSubscript:@"MiCaImageCaptionResults"];

          if (!v8)
          {
            vcp_types &= 0xFFFCFFFFFFFFFFFFLL;
            v6 &= 0xFFFCFFFFFFFFFFFFLL;
          }
        }
      }

      analysis = self->_analysis;
      self->_requestedAnalyses &= ~v6;
      vcp_results2 = [analysesCopy vcp_results];
      [(NSMutableDictionary *)analysis vcp_addEntriesFromResults:vcp_results2];

      [(NSMutableDictionary *)self->_analysis vcp_addTypes:vcp_types];
      v11 = self->_analysis;
      [analysesCopy vcp_quality];
      [(NSMutableDictionary *)v11 vcp_setQuality:?];
    }
  }
}

- (id)existingAnalysisForMovieAnalyzer
{
  v12[4] = *MEMORY[0x1E69E9840];
  vcp_types = [(NSMutableDictionary *)self->_analysis vcp_types];
  vcp_results = [(NSMutableDictionary *)self->_analysis vcp_results];
  v5 = [vcp_results mutableCopy];

  [v5 removeObjectForKey:@"FaceResults"];
  [v5 removeObjectForKey:@"FacePrintResults"];
  [v5 removeObjectForKey:@"FeatureVectorResults"];
  [v5 removeObjectForKey:@"SceneprintResults"];
  [v5 removeObjectForKey:@"SaliencyResults"];
  [v5 removeObjectForKey:@"HumanPoseResults"];
  if (v5)
  {
    v11[0] = @"version";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSMutableDictionary vcp_version](self->_analysis, "vcp_version")}];
    v12[0] = v6;
    v11[1] = @"dateModified";
    vcp_dateModified = [(NSMutableDictionary *)self->_analysis vcp_dateModified];
    v12[1] = vcp_dateModified;
    v11[2] = @"performedAnalysisTypes";
    0xFFFFFFFFFFBFE7F3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:vcp_types & 0xFFFFFFFFFFBFE7F3];
    v11[3] = @"metadataRanges";
    v12[2] = 0xFFFFFFFFFFBFE7F3;
    v12[3] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)downscaleImage:(__CVBuffer *)image scaledImage:(__CVBuffer *)scaledImage majorDimension:(int)dimension
{
  *scaledImage = 0;
  if (image)
  {
    Width = CVPixelBufferGetWidth(image);
    Height = CVPixelBufferGetHeight(image);
    if (Width <= Height)
    {
      v11 = Height;
    }

    else
    {
      v11 = Width;
    }

    if (v11 <= dimension)
    {
      v14 = CFRetain(image);
      v13 = 0;
      *scaledImage = v14;
    }

    else
    {
      Scaler::Scale(&self->_scaler, image, scaledImage, (Width * dimension / v11) & 0xFFFFFFFE, (Height * dimension / v11) & 0xFFFFFFFE, 875704422);
      v13 = v12;
      if (v12)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63900;
        }

        if (*scaledImage)
        {
          CFRelease(*scaledImage);
          *scaledImage = 0;
        }
      }
    }
  }

  else
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63910;
    }

    return -50;
  }

  return v13;
}

- (int)checkFaceDominant
{
  v24 = *MEMORY[0x1E69E9840];
  vcp_flags = [(NSMutableDictionary *)self->_analysis vcp_flags];
  phFaceResults = self->_phFaceResults;
  if (!phFaceResults)
  {
    exif = [(VCPAsset *)self->_asset exif];
    if (exif)
    {
      v6 = [[VCPExifAnalyzer alloc] initWithProperties:exif forAnalysisTypes:4];
      v7 = v6;
      if (!v6)
      {
        v10 = 0;
        v8 = -108;
        if (self->_errorCode)
        {
          goto LABEL_12;
        }

        v11 = 481;
LABEL_11:
        self->_errorCode = 9;
        self->_errorLine = v11;
LABEL_12:

        v4 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v21 = 0;
      v8 = [(VCPExifAnalyzer *)v6 analyzeAsset:&vcp_flags results:&v21];
      v9 = v21;
      v10 = v9;
      if (v8)
      {
        if (self->_errorCode)
        {
          goto LABEL_12;
        }

        v11 = 482;
        goto LABEL_11;
      }

      v4 = [v9 objectForKeyedSubscript:@"FaceResults"];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_15;
  }

  v4 = [(NSDictionary *)phFaceResults objectForKeyedSubscript:@"FaceResults"];
LABEL_15:
  if (![v4 count])
  {
    v8 = 0;
    goto LABEL_29;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  exif = v4;
  v12 = [exif countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(exif);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{@"attributes", v17}];
        v10 = [v15 objectForKeyedSubscript:@"faceBounds"];

        v25 = NSRectFromString(v10);
        if (v25.size.height * v25.size.width > 0.200000003)
        {
          v8 = 0;
          self->_faceDominated = 1;
          v4 = exif;
          goto LABEL_26;
        }
      }

      v12 = [exif countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
  v4 = exif;
LABEL_27:

LABEL_29:
  return v8;
}

- (void)_reportPetsAnalysisWithResults:(id)results
{
  v35 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v26 = [resultsCopy objectForKeyedSubscript:@"PetsResults"];
  v27 = [resultsCopy objectForKeyedSubscript:@"PetsFaceResults"];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v26;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = *v29;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
        v15 = [v14 objectForKeyedSubscript:@"petsBounds"];

        v36 = NSRectFromString(v15);
        v38.origin.x = v36.origin.x;
        v38.origin.y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = v7;
        v36.size.height = v8;
        v38.size.width = width;
        v38.size.height = height;
        v37 = CGRectUnion(v36, v38);
        x = v37.origin.x;
        y = v37.origin.y;
        v7 = v37.size.width;
        v8 = v37.size.height;
        if (width * height > v12)
        {
          v12 = width * height;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  v18 = +[VCPMADCoreAnalyticsManager sharedManager];
  v32[0] = @"AssetType";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCPAsset mediaType](self->_asset, "mediaType")}];
  v33[0] = v19;
  v32[1] = @"SceneType";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSDictionary count](self->_phFaceResults, "count") != 0}];
  v33[1] = v20;
  v33[2] = &unk_1F49BE4D0;
  v32[2] = @"ResourceType";
  v32[3] = @"NumberOfPetsDetected";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v33[3] = v21;
  v32[4] = @"AggregatedBoundingBoxSizeRatio";
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * v8];
  v33[4] = v22;
  v32[5] = @"LargestBoundingBoxSizeRatio";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v33[5] = v23;
  v32[6] = @"NumberOfPetFacesDetected";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
  v33[6] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:7];
  [v18 sendEvent:@"com.apple.mediaanalysisd.analysis.pets" withAnalytics:v25];
}

- (int)runBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  if (queueCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__VCPPhotoAnalyzer_runBlock_queue___block_invoke;
    v9[3] = &unk_1E83519A8;
    v11 = &v12;
    v10 = blockCopy;
    dispatch_sync(queueCopy, v9);
    v7 = *(v13 + 6);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = blockCopy[2](blockCopy);
  }

  return v7;
}

uint64_t __35__VCPPhotoAnalyzer_runBlock_queue___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)analyzeImage:(unint64_t *)image performedAnalyses:(unint64_t *)analyses cancel:(id)cancel
{
  cancelCopy = cancel;
  v7 = VCPSignPostLog(cancelCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPPhotoAnalyzer_Image", "", buf, 2u);
  }

  *buf = 0;
  v252 = buf;
  v253 = 0x3812000000;
  v254 = __Block_byref_object_copy__70;
  v255 = __Block_byref_object_dispose__70;
  v256 = &unk_1CA01F5A2;
  v257 = 0;
  v250[0] = MEMORY[0x1E69E9820];
  v250[1] = 3221225472;
  v250[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke;
  v250[3] = &unk_1E83519D0;
  v250[4] = self;
  v250[5] = buf;
  queueDecode = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueDecode];
  v13 = [(VCPPhotoAnalyzer *)self runBlock:v250 queue:queueDecode];

  if (!v13)
  {
    v249 = 0;
    v14 = [(VCPPhotoAnalyzer *)self downscaleImage:*(v252 + 6) scaledImage:&v249 majorDimension:576];
    v13 = v14;
    if (v14)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63930;
      }

      goto LABEL_204;
    }

    if (cancelCopy)
    {
      v14 = cancelCopy[2]();
      if (v14)
      {
        v13 = -128;
LABEL_204:
        CF<__CVBuffer *>::~CF(&v249);
        goto LABEL_205;
      }
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 8) == 0)
    {
      context = 0;
      if ((requestedAnalyses & 0x100) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }

    isPano = [(VCPAsset *)self->_asset isPano];
    v17 = (v252 + 48);
    if (!isPano)
    {
      v17 = &v249;
    }

    v18 = *v17;
    *v243 = 0;
    v244 = v243;
    v245 = 0x3032000000;
    v246 = __Block_byref_object_copy__689;
    v247 = __Block_byref_object_dispose__690;
    v248 = 0;
    if ([MEMORY[0x1E6978628] vcp_usePHFace] && self->_phFaceResults)
    {
      if (([MEMORY[0x1E6978628] vcp_usePHFaceExpression] & 1) == 0)
      {
        v19 = [(NSDictionary *)self->_phFaceResults objectForKeyedSubscript:@"FaceResults"];
        v20 = v19;
        if (v19 && [v19 count])
        {
          v234[0] = MEMORY[0x1E69E9820];
          v234[1] = 3221225472;
          v234[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_694;
          v234[3] = &unk_1E8351A20;
          v234[4] = self;
          v236 = v18;
          imageCopy = image;
          v235 = cancelCopy;
          queueFace = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueFace];
          v22 = [(VCPPhotoAnalyzer *)self runBlock:v234 queue:queueFace];

          if (v22)
          {
            context = v22;
            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F63940;
            }

LABEL_32:
            v25 = 0;
            goto LABEL_40;
          }
        }

        if (self->_phFaceResults)
        {
          *analyses |= 0xCuLL;
        }
      }

      context = 0;
    }

    else
    {
      v238[0] = MEMORY[0x1E69E9820];
      v238[1] = 3221225472;
      v238[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_691;
      v238[3] = &unk_1E83519F8;
      imageCopy2 = image;
      v241 = v18;
      v240 = v243;
      v239 = cancelCopy;
      v238[4] = self;
      queueFace2 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueFace];
      v24 = [(VCPPhotoAnalyzer *)self runBlock:v238 queue:queueFace2];

      if (v24)
      {
        context = v24;
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63950;
        }

        goto LABEL_32;
      }

      context = 0;
      *analyses |= 0xCuLL;
    }

    v25 = 1;
LABEL_40:
    _Block_object_dispose(v243, 8);

    if (!v25)
    {
LABEL_79:
      v13 = context;
      goto LABEL_204;
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 0x100) == 0)
    {
LABEL_15:
      if ((requestedAnalyses & 0x200) == 0)
      {
        goto LABEL_58;
      }

LABEL_53:
      v229[0] = MEMORY[0x1E69E9820];
      v229[1] = 3221225472;
      v229[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_699;
      v229[3] = &unk_1E8351A48;
      v229[4] = self;
      v231 = buf;
      imageCopy3 = image;
      v230 = cancelCopy;
      queueBlur = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueBlur];
      v13 = [(VCPPhotoAnalyzer *)self runBlock:v229 queue:queueBlur];

      if (v13)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63970;
        }

        v38 = v230;
        goto LABEL_203;
      }

      *analyses |= 0x200uLL;
LABEL_58:
      isLivePhoto = +[VCPPhotoAnalyzer isLivePhotoKeyFrameEnabled];
      if (isLivePhoto)
      {
        if ((self->_requestedAnalyses & 0x40000) != 0)
        {
          isLivePhoto = [(VCPAsset *)self->_asset isLivePhoto];
          if (isLivePhoto)
          {
            v40 = VCPSignPostLog(isLivePhoto);
            v41 = os_signpost_id_generate(v40);

            v43 = VCPSignPostLog(v42);
            v44 = v43;
            spida = analyses;
            if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
            {
              *v243 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_BEGIN, v41, "VCPPhotoAnalyzer_Image_VCPLowResImageBlurAnalyzer", "", v243, 2u);
            }

            v45 = [[VCPImageBlurAnalyzer alloc] initWithFaceResults:0 sdof:[(VCPAsset *)self->_asset isSDOF]];
            v228 = 0;
            v13 = [(VCPImageBlurAnalyzer *)v45 analyzePixelBuffer:v249 flags:image results:&v228 cancel:cancelCopy];
            v46 = v228;
            if (v13)
            {
              if (!self->_errorCode)
              {
                *&self->_errorCode = xmmword_1C9F63980;
              }

LABEL_92:
              goto LABEL_204;
            }

            [(VCPImageBlurAnalyzer *)v45 textureScore];
            self->_imageBlurTextureScore = v47;
            analysis = self->_analysis;
            v49 = [v46 objectForKeyedSubscript:@"BlurResults"];
            [(NSMutableDictionary *)analysis vcp_setResult:v49 forKey:@"KeyFrameBlurResults"];

            v51 = VCPSignPostLog(v50);
            v52 = v51;
            if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
            {
              *v243 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v52, OS_SIGNPOST_INTERVAL_END, v41, "VCPPhotoAnalyzer_Image_VCPLowResImageBlurAnalyzer", "", v243, 2u);
            }

            analyses = spida;
          }
        }
      }

      if ((self->_requestedAnalyses & 0x80000) != 0)
      {
        v225[0] = MEMORY[0x1E69E9820];
        v225[1] = 3321888768;
        v225[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_703;
        v225[3] = &unk_1F496AA58;
        v227[0] = v249;
        if (v249)
        {
          CFRetain(v249);
        }

        v227[1] = image;
        v226 = cancelCopy;
        v225[4] = self;
        queueExposure = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueExposure];
        v54 = [(VCPPhotoAnalyzer *)self runBlock:v225 queue:queueExposure];

        if (v54)
        {
          context = v54;
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63990;
            context = v54;
          }
        }

        isLivePhoto = CF<__CVBuffer *>::~CF(v227);
        if (v54)
        {
          goto LABEL_79;
        }

        *analyses |= 0x80000uLL;
      }

      if ((self->_irisAnalyses & 0x80) != 0)
      {
        v55 = VCPSignPostLog(isLivePhoto);
        v56 = os_signpost_id_generate(v55);

        v58 = VCPSignPostLog(v57);
        v59 = v58;
        v60 = v56 - 1;
        if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
        {
          *v243 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v59, OS_SIGNPOST_INTERVAL_BEGIN, v56, "VCPPhotoAnalyzer_Image_VCPImageLivePhotoBlurAnalyzer", "", v243, 2u);
        }

        spidb = v56;
        analysesCopy = analyses;

        vcp_results = [(NSMutableDictionary *)self->_analysis vcp_results];
        v63 = [vcp_results objectForKeyedSubscript:@"IrisObjectsResults"];
        v64 = [v63 count];

        if (v64)
        {
          vcp_results2 = [(NSMutableDictionary *)self->_analysis vcp_results];
          v66 = [vcp_results2 objectForKeyedSubscript:@"IrisObjectsResults"];
          v67 = [v66 objectAtIndexedSubscript:0];

          v68 = [v67 objectForKeyedSubscript:@"attributes"];
          v46 = [v68 objectForKeyedSubscript:@"objectBounds"];
        }

        else
        {
          v46 = 0;
        }

        v69 = [[VCPImageLivePhotoBlurAnalyzer alloc] initWithMovingObjectsResults:v46];
        v70 = *(v252 + 6);
        v224 = 0;
        v13 = [(VCPImageLivePhotoBlurAnalyzer *)v69 analyzePixelBuffer:v70 flags:image results:&v224 cancel:cancelCopy];
        v71 = v224;
        if (v13)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F639A0;
          }

          goto LABEL_92;
        }

        v72 = VCPSignPostLog([(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v71]);
        v73 = v72;
        if (v60 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
        {
          *v243 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v73, OS_SIGNPOST_INTERVAL_END, spidb, "VCPPhotoAnalyzer_Image_VCPImageLivePhotoBlurAnalyzer", "", v243, 2u);
        }

        analyses = analysesCopy;
      }

      if ((self->_requestedAnalyses & 0x2000) != 0)
      {
        v74 = VCPSignPostLog(isLivePhoto);
        v75 = os_signpost_id_generate(v74);

        v77 = VCPSignPostLog(v76);
        v78 = v77;
        spidc = analyses;
        if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
        {
          *v243 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v78, OS_SIGNPOST_INTERVAL_BEGIN, v75, "VCPPhotoAnalyzer_Image_VCPImageCompositionAnalyzer", "", v243, 2u);
        }

        v31 = objc_alloc_init(VCPImageCompositionAnalyzer);
        v79 = *(v252 + 6);
        v223 = 0;
        v13 = [(VCPImageCompositionAnalyzer *)v31 analyzePixelBuffer:v79 flags:image results:&v223 cancel:cancelCopy];
        v32 = v223;
        if (v13)
        {
          if (self->_errorCode)
          {
            goto LABEL_103;
          }

          v33 = xmmword_1C9F639B0;
          goto LABEL_48;
        }

        v80 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v32];
        *spidc |= 0x2000uLL;
        v81 = VCPSignPostLog(v80);
        v82 = v81;
        if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
        {
          *v243 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v82, OS_SIGNPOST_INTERVAL_END, v75, "VCPPhotoAnalyzer_Image_VCPImageCompositionAnalyzer", "", v243, 2u);
        }

        analyses = spidc;
      }

      *v243 = 0;
      v244 = v243;
      v245 = 0x3032000000;
      v246 = __Block_byref_object_copy__689;
      v247 = __Block_byref_object_dispose__690;
      v248 = 0;
      v83 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
      v84 = self->_requestedAnalyses;
      if ((v83 & BYTE6(v84) & 1) == 1)
      {
        isPano2 = [(VCPAsset *)self->_asset isPano];
        v86 = (v252 + 48);
        if (!isPano2)
        {
          v86 = &v249;
        }

        v87 = *v86;
        v218[0] = MEMORY[0x1E69E9820];
        v218[1] = 3221225472;
        v218[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_711;
        v218[3] = &unk_1E8351A70;
        v218[4] = self;
        v221 = v87;
        imageCopy4 = image;
        v219 = cancelCopy;
        v220 = v243;
        queueBackbone = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueBackbone];
        v13 = [(VCPPhotoAnalyzer *)self runBlock:v218 queue:queueBackbone];

        if (v13)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F639C0;
          }

          v89 = v219;
LABEL_143:

LABEL_202:
          _Block_object_dispose(v243, 8);
          v38 = v248;
LABEL_203:

          goto LABEL_204;
        }

        *analyses |= 0x1000000000000uLL;
        v84 = self->_requestedAnalyses;
      }

      if ((v84 & 0x2000000000000) != 0)
      {
        if (*(v244 + 5) && (+[VCPVideoTransformerBackbone revision](VCPVideoTransformerBackbone, "revision") == 5 || +[VCPVideoTransformerBackbone revision]== 6))
        {
          v215[0] = MEMORY[0x1E69E9820];
          v215[1] = 3221225472;
          v215[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_715;
          v215[3] = &unk_1E8351A98;
          v217 = v243;
          v215[4] = self;
          v216 = cancelCopy;
          queueCaption = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueCaption];
          v13 = [(VCPPhotoAnalyzer *)self runBlock:v215 queue:queueCaption];

          if (v13)
          {
            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F639D0;
            }

            v89 = v216;
            goto LABEL_143;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v91 = MEMORY[0x1E69E9C10];
            v92 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              *v214 = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Image embedding not available. Compute image caption w/o re-using image embedding", v214, 2u);
            }
          }

          v210[0] = MEMORY[0x1E69E9820];
          v210[1] = 3321888768;
          v210[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_718;
          v210[3] = &unk_1F496AA90;
          v210[4] = self;
          v212 = buf;
          v213 = v249;
          if (v249)
          {
            CFRetain(v249);
          }

          v211 = cancelCopy;
          queueBackbone2 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueBackbone];
          v94 = [(VCPPhotoAnalyzer *)self runBlock:v210 queue:queueBackbone2];

          if (v94)
          {
            context = v94;
            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F639E0;
              context = v94;
            }
          }

          CF<__CVBuffer *>::~CF(&v213);
          v13 = context;
          if (v94)
          {
            goto LABEL_202;
          }
        }

        *analyses |= 0x2000000000000uLL;
        v84 = self->_requestedAnalyses;
      }

      if ((v84 & 0x100000000) != 0)
      {
        v207[0] = MEMORY[0x1E69E9820];
        v207[1] = 3221225472;
        v207[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_719;
        v207[3] = &unk_1E8351A98;
        v209 = buf;
        v207[4] = self;
        v208 = cancelCopy;
        queueCaption2 = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueCaption];
        v13 = [(VCPPhotoAnalyzer *)self runBlock:v207 queue:queueCaption2];

        if (v13)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F639F0;
          }

          v89 = v208;
          goto LABEL_143;
        }

        *analyses |= 0x100000000uLL;
      }

      v96 = v252;
      v97 = *(v252 + 6);
      if (v97)
      {
        CFRelease(v97);
        *(v96 + 6) = 0;
      }

      v98 = self->_requestedAnalyses;
      if ((v98 & 0x800) != 0)
      {
        v205[0] = MEMORY[0x1E69E9820];
        v205[1] = 3321888768;
        v205[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_721;
        v205[3] = &unk_1F496AAC8;
        v206 = v249;
        if (v249)
        {
          CFRetain(v249);
        }

        v205[4] = self;
        queueDescriptor = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueDescriptor];
        v100 = [(VCPPhotoAnalyzer *)self runBlock:v205 queue:queueDescriptor];

        if (v100)
        {
          context = v100;
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63A00;
            context = v100;
          }
        }

        v97 = CF<__CVBuffer *>::~CF(&v206);
        if (v100)
        {
          v13 = context;
          goto LABEL_202;
        }

        *analyses |= 0x800uLL;
        v98 = self->_requestedAnalyses;
      }

      if ((v98 & 0x1000) == 0)
      {
        if ((v98 & 0x20000) == 0)
        {
          goto LABEL_158;
        }

LABEL_182:
        v127 = VCPSignPostLog(v97);
        analysesCopy2 = analyses;
        v129 = os_signpost_id_generate(v127);

        v131 = VCPSignPostLog(v130);
        v132 = v131;
        v133 = v129 - 1;
        if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
        {
          *v214 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v132, OS_SIGNPOST_INTERVAL_BEGIN, v129, "VCPPhotoAnalyzer_Image_VCPImagePetsAnalyzer", "", v214, 2u);
        }

        v134 = [[VCPImagePetsAnalyzer alloc] initWithMaxNumRegions:5];
        v109 = v134;
        if (v134)
        {
          spidf = v129;
          v203 = 0;
          v13 = [(VCPImagePetsAnalyzer *)v134 analyzePixelBuffer:v249 flags:image results:&v203 cancel:cancelCopy];
          v113 = v203;
          if (!v13)
          {
            v135 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v113];
            *analysesCopy2 |= 0x20000uLL;
            v136 = VCPSignPostLog(v135);
            v137 = v136;
            if (v133 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v136))
            {
              *v214 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v137, OS_SIGNPOST_INTERVAL_END, spidf, "VCPPhotoAnalyzer_Image_VCPImagePetsAnalyzer", "", v214, 2u);
            }

            [(VCPPhotoAnalyzer *)self _reportPetsAnalysisWithResults:v113];
            v98 = self->_requestedAnalyses;
            analyses = analysesCopy2;
            if ((v98 & 0x2000000000) == 0)
            {
              goto LABEL_211;
            }

            goto LABEL_159;
          }

          if (self->_errorCode)
          {
            goto LABEL_201;
          }

          v114 = 851;
        }

        else
        {
          v113 = 0;
          v13 = -108;
          if (self->_errorCode)
          {
            goto LABEL_201;
          }

          v114 = 846;
        }

        v123 = 28;
LABEL_200:
        self->_errorCode = v123;
        self->_errorLine = v114;
        goto LABEL_201;
      }

      v115 = VCPSignPostLog(v97);
      analysesCopy3 = analyses;
      v117 = os_signpost_id_generate(v115);

      v119 = VCPSignPostLog(v118);
      v120 = v119;
      v121 = v117 - 1;
      if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
      {
        *v214 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v120, OS_SIGNPOST_INTERVAL_BEGIN, v117, "VCPPhotoAnalyzer_Image_VCPImageSaliencyAnalyzer", "", v214, 2u);
      }

      v122 = [VCPImageSaliencyAnalyzer analyzerWith:3 prune:1];
      v109 = v122;
      if (v122)
      {
        spide = v117;
        v204 = 0;
        v13 = [(VCPImagePetsKeypointsAnalyzer *)v122 analyzePixelBuffer:v249 flags:image results:&v204 cancel:cancelCopy];
        v113 = v204;
        if (!v13)
        {
          v124 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v113];
          *analysesCopy3 |= 0x1000uLL;
          v125 = VCPSignPostLog(v124);
          v126 = v125;
          if (v121 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v125))
          {
            *v214 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v126, OS_SIGNPOST_INTERVAL_END, spide, "VCPPhotoAnalyzer_Image_VCPImageSaliencyAnalyzer", "", v214, 2u);
          }

          v98 = self->_requestedAnalyses;
          analyses = analysesCopy3;
          if ((v98 & 0x20000) == 0)
          {
LABEL_158:
            if ((v98 & 0x2000000000) == 0)
            {
              goto LABEL_211;
            }

LABEL_159:
            HasANE = +[VCPCNNEspressoContext supportGPU];
            if ((HasANE & 1) != 0 || (HasANE = DeviceHasANE(HasANE, v102), HasANE))
            {
              v103 = VCPSignPostLog(HasANE);
              v104 = os_signpost_id_generate(v103);

              v106 = VCPSignPostLog(v105);
              v107 = v106;
              v108 = v104 - 1;
              if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v106))
              {
                *v214 = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v107, OS_SIGNPOST_INTERVAL_BEGIN, v104, "VCPPhotoAnalyzer_Image_VCPImagePetKeypointsAnalyzer", "", v214, 2u);
              }

              v109 = [[VCPImagePetsKeypointsAnalyzer alloc] initWithMaxNumRegions:5 forceCPU:0 sharedModel:1];
              if (!v109)
              {
                v113 = 0;
                v13 = -108;
                if (!self->_errorCode)
                {
                  v114 = 870;
                  goto LABEL_199;
                }

LABEL_201:

                goto LABEL_202;
              }

              spidd = analyses;
              v110 = v249;
              v111 = [(NSMutableDictionary *)self->_analysis objectForKeyedSubscript:@"metadataRanges"];
              v112 = [v111 objectForKeyedSubscript:@"PetsResults"];
              v179 = v104;
              v202 = 0;
              v13 = [(VCPImagePetsKeypointsAnalyzer *)v109 analyzePixelBuffer:v110 flags:image petsDetections:v112 results:&v202 cancel:cancelCopy];
              v113 = v202;

              if (v13)
              {
                if (!self->_errorCode)
                {
                  v114 = 876;
LABEL_199:
                  v123 = 29;
                  goto LABEL_200;
                }

                goto LABEL_201;
              }

              v139 = VCPSignPostLog([(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v113]);
              v140 = v139;
              if (v108 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
              {
                *v214 = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v140, OS_SIGNPOST_INTERVAL_END, v179, "VCPPhotoAnalyzer_Image_VCPImagePetKeypointsAnalyzer", "", v214, 2u);
              }

              analyses = spidd;
            }

            *analyses |= 0x2000000000uLL;
            v98 = self->_requestedAnalyses;
LABEL_211:
            if ((v98 & 0x400000) != 0)
            {
              v141 = +[VCPCNNEspressoContext supportGPU];
              if ((v141 & 1) != 0 || DeviceHasANE(v141, v142))
              {
                v199[0] = MEMORY[0x1E69E9820];
                v199[1] = 3321888768;
                v199[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_732;
                v199[3] = &unk_1F496AA58;
                v201[0] = v249;
                if (v249)
                {
                  CFRetain(v249);
                }

                v201[1] = image;
                v199[4] = self;
                v200 = cancelCopy;
                queueHumanPose = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueHumanPose];
                v144 = [(VCPPhotoAnalyzer *)self runBlock:v199 queue:queueHumanPose];

                if (v144)
                {
                  context = v144;
                  if (!self->_errorCode)
                  {
                    *&self->_errorCode = xmmword_1C9F63A10;
                    context = v144;
                  }
                }

                CF<__CVBuffer *>::~CF(v201);
                v13 = context;
                if (v144)
                {
                  goto LABEL_202;
                }
              }

              *analyses |= 0x400000uLL;
            }

            v13 = context;
            phAsset = self->_phAsset;
            if (phAsset && (self->_requestedAnalyses & 0x40000000) != 0)
            {
              if (![phAsset vcp_isLivePhoto] || (*(analyses + 3) & 0x40) != 0)
              {
                spidg = analyses;
                contexta = objc_autoreleasePoolPush();
                v148 = VCPSignPostLog(contexta);
                v149 = os_signpost_id_generate(v148);

                v151 = VCPSignPostLog(v150);
                v152 = v151;
                v180 = v149;
                v153 = v149 - 1;
                if (v149 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v151))
                {
                  *v214 = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v152, OS_SIGNPOST_INTERVAL_BEGIN, v149, "VCPPhotoAnalyzer_Image_VCPImageHumanActionAnalyzer", "", v214, 2u);
                }

                faces = [(VCPAsset *)self->_asset faces];
                v155 = [faces count];
                if (!v155)
                {
                  goto LABEL_240;
                }

                v194[0] = MEMORY[0x1E69E9820];
                v194[1] = 3321888768;
                v194[2] = __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_735;
                v194[3] = &unk_1F496AB00;
                v195 = faces;
                selfCopy = self;
                v198[0] = v249;
                if (v249)
                {
                  CFRetain(v249);
                }

                v198[1] = image;
                v197 = cancelCopy;
                queueHumanAction = [(VCPPhotoAnalyzerSharedContext *)self->_sharedContext queueHumanAction];
                v157 = [(VCPPhotoAnalyzer *)self runBlock:v194 queue:queueHumanAction];

                if (v157)
                {
                  v13 = v157;
                  if (!self->_errorCode)
                  {
                    *&self->_errorCode = xmmword_1C9F63A20;
                    v13 = v157;
                  }
                }

                CF<__CVBuffer *>::~CF(v198);
                if (v157)
                {
                  v158 = 0;
                }

                else
                {
LABEL_240:
                  v159 = VCPSignPostLog(v155);
                  v160 = v159;
                  if (v153 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v159))
                  {
                    *v214 = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v160, OS_SIGNPOST_INTERVAL_END, v180, "VCPPhotoAnalyzer_Image_VCPImageHumanActionAnalyzer", "", v214, 2u);
                  }

                  v158 = 1;
                }

                objc_autoreleasePoolPop(contexta);
                analyses = spidg;
                if (!v158)
                {
                  goto LABEL_202;
                }

                *spidg |= 0x40000000uLL;
              }

              else
              {
                phAsset = MediaAnalysisLogLevel();
                if (phAsset >= 6)
                {
                  v146 = MEMORY[0x1E69E9C10];
                  v147 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                  {
                    *v214 = 0;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Human action on Live Photo requires paired movie, skip analyzing still", v214, 2u);
                  }
                }
              }
            }

            if ((self->_requestedAnalyses & 0x2000000) == 0)
            {
              goto LABEL_247;
            }

            v163 = VCPSignPostLog(phAsset);
            v164 = os_signpost_id_generate(v163);

            v166 = VCPSignPostLog(v165);
            v167 = v166;
            if (v164 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v166))
            {
              *v214 = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v167, OS_SIGNPOST_INTERVAL_BEGIN, v164, "VCPPhotoAnalyzer_Image_VCPImageHandsAnalyzer", "", v214, 2u);
            }

            LODWORD(v178) = 2;
            HIDWORD(v176) = CVPixelBufferGetWidth(v249);
            LODWORD(v177) = CVPixelBufferGetHeight(v249);
            LOBYTE(v176) = 1;
            v168 = [[VCPImageHandsAnalyzer alloc] initWithKeypointsOption:5 forceCPU:0 sharedModel:1 enableHandDetection:1 enableANSTHandDetection:0 enableRejectHandsNearBoundaries:0 enableHandObject:v176 sourceWidth:v177 sourceHeight:@"hand_keypoint_detector_lite.espresso.net" modelName:v178 revision:0 options:?];
            v169 = v168;
            if (v168)
            {
              analysesCopy4 = analyses;
              v193 = 0;
              v13 = [(VCPImageHandsAnalyzer *)v168 analyzePixelBuffer:v249 flags:image results:&v193 cancel:cancelCopy];
              v171 = v193;
              if (!v13)
              {
                v173 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v171];
                *analysesCopy4 |= 0x2000000uLL;
                v174 = VCPSignPostLog(v173);
                v175 = v174;
                if (v164 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v174))
                {
                  *v214 = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v175, OS_SIGNPOST_INTERVAL_END, v164, "VCPPhotoAnalyzer_Image_VCPImageHandsAnalyzer", "", v214, 2u);
                }

LABEL_247:
                v161 = VCPSignPostLog(phAsset);
                v162 = v161;
                if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v161))
                {
                  *v214 = 0;
                  _os_signpost_emit_with_name_impl(&dword_1C9B70000, v162, OS_SIGNPOST_INTERVAL_END, v8, "VCPPhotoAnalyzer_Image", "", v214, 2u);
                }

                v13 = 0;
                goto LABEL_202;
              }

              if (!self->_errorCode)
              {
                v172 = 965;
LABEL_260:
                self->_errorCode = 21;
                self->_errorLine = v172;
              }
            }

            else
            {
              v171 = 0;
              v13 = -108;
              if (!self->_errorCode)
              {
                v172 = 960;
                goto LABEL_260;
              }
            }

            goto LABEL_202;
          }

          goto LABEL_182;
        }

        if (self->_errorCode)
        {
          goto LABEL_201;
        }

        v114 = 835;
      }

      else
      {
        v113 = 0;
        v13 = -108;
        if (self->_errorCode)
        {
          goto LABEL_201;
        }

        v114 = 830;
      }

      v123 = 31;
      goto LABEL_200;
    }

LABEL_42:
    v26 = VCPSignPostLog(v14);
    v27 = os_signpost_id_generate(v26);

    v29 = VCPSignPostLog(v28);
    v30 = v29;
    spid = analyses;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *v243 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v27, "VCPPhotoAnalyzer_Image_VCPImageJunkAnalyzer", "", v243, 2u);
    }

    v31 = objc_alloc_init(VCPJunkAnalyzer);
    v233 = 0;
    v13 = [(VCPImageCompositionAnalyzer *)v31 analyzePixelBuffer:v249 flags:image results:&v233 cancel:cancelCopy];
    v32 = v233;
    if (v13)
    {
      if (self->_errorCode)
      {
LABEL_103:

        goto LABEL_204;
      }

      v33 = xmmword_1C9F63960;
LABEL_48:
      *&self->_errorCode = v33;
      goto LABEL_103;
    }

    v34 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v32];
    *spid |= 0x100uLL;
    v35 = VCPSignPostLog(v34);
    v36 = v35;
    if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *v243 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_END, v27, "VCPPhotoAnalyzer_Image_VCPImageJunkAnalyzer", "", v243, 2u);
    }

    analyses = spid;
    if ((self->_requestedAnalyses & 0x200) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  if (!self->_errorCode)
  {
    *&self->_errorCode = xmmword_1C9F63920;
  }

LABEL_205:
  _Block_object_dispose(buf, 8);
  CF<__CVBuffer *>::~CF(&v257);

  return v13;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 48) imageWithPreferredDimension:1536];
  CF<__CVBuffer *>::operator=((*(*(a1 + 40) + 8) + 48), &v3);
  CF<__CVBuffer *>::~CF(&v3);
  if (*(*(*(a1 + 40) + 8) + 48))
  {
    return 0;
  }

  else
  {
    return 4294967278;
  }
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_691(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceDetector", "", buf, 2u);
  }

  v7 = +[VCPImageFaceDetector faceDetector];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[5];
  v11 = *(a1[6] + 8);
  obj = *(v11 + 40);
  v12 = [v7 analyzePixelBuffer:v8 flags:v9 results:&obj cancel:v10];
  objc_storeStrong((v11 + 40), obj);
  if (!v12)
  {
    v13 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:*(*(a1[6] + 8) + 40)]);
    v14 = v13;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceDetector", "", v16, 2u);
    }
  }

  return v12;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_694(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceExpressionAnalyzer", "", buf, 2u);
  }

  v7 = [[VCPImageFaceExpressionAnalyzer alloc] initWithFaceResults:*(a1[4] + 32)];
  v8 = a1[6];
  v9 = a1[7];
  v17 = 0;
  v10 = [(VCPImageFaceExpressionAnalyzer *)v7 analyzePixelBuffer:v8 flags:v9 results:&v17 cancel:a1[5]];
  v11 = v17;
  if (!v10)
  {
    v12 = [*(a1[4] + 32) objectForKeyedSubscript:@"ShotTypeResults"];
    if (v12)
    {
      [*(a1[4] + 16) vcp_setResult:v12 forKey:@"ShotTypeResults"];
    }

    v13 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:v11]);
    v14 = v13;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageFaceExpressionAnalyzer", "", v16, 2u);
    }
  }

  return v10;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_699(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageBlurAnalyzer", "", buf, 2u);
  }

  v7 = [VCPImageBlurAnalyzer alloc];
  v8 = [*(a1[4] + 16) vcp_results];
  v9 = -[VCPImageBlurAnalyzer initWithFaceResults:sdof:](v7, "initWithFaceResults:sdof:", v8, [*(a1[4] + 48) isSDOF]);

  v10 = [*(a1[4] + 16) vcp_results];
  v11 = [v10 objectForKeyedSubscript:@"MetaStabilizationResults"];

  v12 = [*(a1[4] + 16) vcp_results];
  v13 = [v12 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
  v14 = [v11 objectForKeyedSubscript:@"MetaStabilizationFrameResults"];
  [*(a1[4] + 48) originalPhotoOffsetSeconds];
  v16 = v15;
  [*(a1[4] + 48) exposureTimeSeconds];
  LODWORD(v18) = v17;
  LODWORD(v19) = v16;
  [(VCPImageBlurAnalyzer *)v9 setGyroSharpnessParam:v13 homographyResults:v14 livePhotoStillDisplayTime:v19 imageExposureTime:v18];

  v20 = a1[7];
  v21 = *(*(a1[6] + 8) + 48);
  v22 = a1[5];
  LODWORD(v23) = *(a1[4] + 60);
  v30 = 0;
  v24 = [(VCPImageBlurAnalyzer *)v9 analyzePixelBuffer:v21 flags:v20 withPreAnalysisScore:&v30 results:v22 cancel:v23];
  v25 = v30;
  if (!v24)
  {
    v26 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:v25]);
    v27 = v26;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v29 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageBlurAnalyzer", "", v29, 2u);
    }
  }

  return v24;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_703(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageExposureAnalyzer", "", buf, 2u);
  }

  v7 = objc_alloc_init(VCPImageExposureAnalyzer);
  v8 = a1[6];
  v9 = a1[7];
  v16 = 0;
  v10 = [(VCPImageExposureAnalyzer *)v7 analyzePixelBuffer:v8 flags:v9 results:&v16 cancel:a1[5]];
  v11 = v16;
  if (!v10)
  {
    v12 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:v11]);
    v13 = v12;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageExposureAnalyzer", "", v15, 2u);
    }
  }

  return v10;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_711(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageBackboneAnalyzer", "", buf, 2u);
  }

  v7 = [[VCPImageBackboneAnalyzer alloc] initWithRequestedAnalyses:*(a1[4] + 8) andRevision:0 useSharedModel:1];
  v8 = v7;
  if (v7)
  {
    v9 = a1[7];
    v10 = a1[8];
    v21 = 0;
    v11 = [(VCPImageBackboneAnalyzer *)v7 analyzePixelBuffer:v9 flags:v10 results:&v21 cancel:a1[5]];
    v12 = v21;
    if (!v11)
    {
      [*(a1[4] + 16) vcp_appendResults:v12];
      v13 = [(VCPImageBackboneAnalyzer *)v8 spatialEmbedding];
      v14 = *(a1[6] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v17 = VCPSignPostLog(v16);
      v18 = v17;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *v20 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageBackboneAnalyzer", "", v20, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 4294967188;
  }

  return v11;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_715(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPCSUImageCaptionAnalyzer", "", buf, 2u);
  }

  v7 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:3 captionSafetyType:0 useSharedModel:1];
  v8 = v7;
  if (v7)
  {
    v9 = a1[5];
    v10 = *(*(a1[6] + 8) + 40);
    v17 = 0;
    v11 = [(VCPImageCaptionAnalyzer *)v7 analyzeEmbedding:v10 flags:0 results:&v17 cancel:v9];
    v12 = v17;
    if (!v11)
    {
      v13 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:v12]);
      v14 = v13;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "VCPCSUImageCaptionAnalyzer", "", v16, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 4294967278;
  }

  return v11;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_718(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPCSUImageCaptionAnalyzer", "", buf, 2u);
  }

  if ([*(a1[4] + 48) isPano])
  {
    v7 = (*(a1[6] + 8) + 48);
  }

  else
  {
    v7 = a1 + 7;
  }

  v8 = *v7;
  v9 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:3 captionSafetyType:0 useSharedModel:1];
  v10 = v9;
  if (v9)
  {
    v17 = 0;
    v11 = [(VCPImageCaptionAnalyzer *)v9 analyzePixelBuffer:v8 flags:0 results:&v17 cancel:a1[5]];
    v12 = v17;
    if (!v11)
    {
      v13 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:v12]);
      v14 = v13;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "VCPCSUImageCaptionAnalyzer", "", v16, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 4294967278;
  }

  return v11;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_719(void *a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageCaptionAnalyzer", "", buf, 2u);
  }

  v7 = [[VCPImageCaptionAnalyzer alloc] initWithCaptionModelType:1 captionSafetyType:0 useSharedModel:1];
  v8 = v7;
  if (v7)
  {
    v9 = a1[5];
    v10 = *(*(a1[6] + 8) + 48);
    v17 = 0;
    v11 = [(VCPImageCaptionAnalyzer *)v7 analyzePixelBuffer:v10 flags:0 results:&v17 cancel:v9];
    v12 = v17;
    if (!v11)
    {
      v13 = VCPSignPostLog([*(a1[4] + 16) vcp_addEntriesFromResults:v12]);
      v14 = v13;
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *v16 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageCaptionAnalyzer", "", v16, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 4294967278;
  }

  return v11;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_721(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageDescriptor", "", v18, 2u);
  }

  v7 = [VCPImageDescriptor descriptorWithImage:*(a1 + 40)];
  v8 = VCPSignPostLog(v7);
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageDescriptor", "", v18, 2u);
  }

  if (v7)
  {
    v10 = [v7 serialize];
    v11 = v10;
    if (v10)
    {
      v12 = *(*(a1 + 32) + 16);
      v20 = v10;
      v21 = @"attributes";
      v19 = @"featureVector";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v22 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v23[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [v12 vcp_setResult:v15 forKey:@"FeatureVectorResults"];

      v16 = 0;
    }

    else
    {
      v16 = 4294967188;
    }
  }

  else
  {
    v16 = 4294967188;
  }

  return v16;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_732(uint64_t a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "VCPPhotoAnalyzer_Image_VCPImageHumanPoseAnalyzer", "", buf, 2u);
  }

  Width = CVPixelBufferGetWidth(*(a1 + 48));
  v8 = Width / CVPixelBufferGetHeight(*(a1 + 48));
  v9 = [VCPImageHumanPoseAnalyzer alloc];
  v10 = +[VCPImageHumanPoseAnalyzer saveKeypoints];
  *&v11 = v8;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v13 = [(VCPImageHumanPoseAnalyzer *)v9 initWithKeypointsOption:v10 aspectRatio:v12 lightweight:0 forceCPU:0 sharedModel:1 flushModel:0];

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v22 = 0;
  v16 = [(VCPImageHumanPoseAnalyzer *)v13 analyzePixelBuffer:v14 flags:v15 results:&v22 cancel:*(a1 + 40)];
  v17 = v22;
  if (!v16)
  {
    v18 = VCPSignPostLog([*(*(a1 + 32) + 16) vcp_addEntriesFromResults:v17]);
    v19 = v18;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_END, v3, "VCPPhotoAnalyzer_Image_VCPImageHumanPoseAnalyzer", "", v21, 2u);
    }
  }

  return v16;
}

uint64_t __58__VCPPhotoAnalyzer_analyzeImage_performedAnalyses_cancel___block_invoke_735(void *a1)
{
  v2 = [VCPImageHumanActionAnalyzer alloc];
  v3 = a1[4];
  v4 = [*(a1[5] + 16) vcp_results];
  v5 = [v4 objectForKeyedSubscript:@"HumanActionClassificationResults"];
  v6 = [(VCPImageHumanActionAnalyzer *)v2 initWithPHFaces:v3 existingResults:v5];

  if (v6)
  {
    v7 = a1[7];
    v8 = a1[8];
    v12 = 0;
    v9 = [(VCPImageHumanActionAnalyzer *)v6 analyzePixelBuffer:v7 flags:v8 results:&v12 cancel:a1[6]];
    v10 = v12;
    if (!v9)
    {
      [*(a1[5] + 16) vcp_addEntriesFromResults:v10];
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 4294967188;
  }

  return v9;
}

- (id)analyzeAsset:(id)asset withOptions:(id)options
{
  v242[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  v8 = optionsCopy;
  if (self->_status != 1)
  {
    goto LABEL_216;
  }

  v9 = VCPSignPostLog(optionsCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = VCPSignPostLog(v11);
  v13 = v12;
  spid = v10;
  v228 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPPhotoAnalyzer", "", buf, 2u);
  }

  v237 = 0;
  vcp_flags = [(NSMutableDictionary *)self->_analysis vcp_flags];
  v235 = 0;
  v236 = vcp_flags;
  if ((self->_requestedAnalyses & 8) != 0 && [MEMORY[0x1E6978628] vcp_usePHFace] && objc_msgSend(MEMORY[0x1E6978628], "vcp_usePHFaceExpression") && self->_phFaceResults)
  {
    [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:?];
    v236 |= self->_phFaceFlags;
    v237 |= 0xCuLL;
  }

  if (self->_requirePHFaceAnalysis && (phAsset = self->_phAsset) != 0 && ![(PHAsset *)phAsset vcp_quickFaceClassificationDone])
  {
    v22 = objc_autoreleasePoolPush();
    v23 = VCPSignPostLog(v22);
    v24 = os_signpost_id_generate(v23);

    v26 = VCPSignPostLog(v25);
    v27 = v26;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "VCPPhotoAnalyzer_VCPPhotosQuickFaceDetection", "", buf, 2u);
    }

    v28 = [VCPPhotosQuickFaceDetectionManager alloc];
    photoLibrary = [(PHAsset *)self->_phAsset photoLibrary];
    v30 = [(VCPPhotosQuickFaceDetectionManager *)v28 initWithPhotoLibrary:photoLibrary];

    if (v30)
    {
      v31 = [(VCPPhotosQuickFaceDetectionManager *)v30 processAsset:self->_phAsset];
      v226 = v31;
      if (v31)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63A30;
        }

        v32 = 6;
      }

      else
      {
        v33 = VCPSignPostLog(v31);
        v34 = v33;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, v24, "VCPPhotoAnalyzer_VCPPhotosQuickFaceDetection", "", buf, 2u);
        }

        v226 = 0;
        v32 = 0;
      }
    }

    else
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63A40;
      }

      v32 = 6;
      v226 = -18;
    }

    objc_autoreleasePoolPop(v22);
    if (v32)
    {
LABEL_205:
      checkFaceDominant = v226;
      if (!v226)
      {
        goto LABEL_209;
      }

      goto LABEL_206;
    }
  }

  else
  {
    v226 = 0;
  }

  if ((self->_requestedAnalyses & 0xC) == 4)
  {
    if (self->_phFaceResults)
    {
      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:?];
      v236 |= self->_phFaceFlags;
      v237 |= 4uLL;
      goto LABEL_45;
    }

    exif = [(VCPAsset *)self->_asset exif];
    if (exif)
    {
      v17 = [[VCPExifAnalyzer alloc] initWithProperties:exif forAnalysisTypes:self->_requestedAnalyses];
      v18 = v17;
      if (!v17)
      {
        v20 = 0;
        checkFaceDominant = -108;
        if (!self->_errorCode)
        {
          v21 = 1016;
          goto LABEL_35;
        }

LABEL_36:

        goto LABEL_206;
      }

      v234 = 0;
      checkFaceDominant = [(VCPExifAnalyzer *)v17 analyzeAsset:&v236 results:&v234];
      v20 = v234;
      if (checkFaceDominant)
      {
        if (!self->_errorCode)
        {
          v21 = 1017;
LABEL_35:
          self->_errorCode = 9;
          self->_errorLine = v21;
          goto LABEL_36;
        }

        goto LABEL_36;
      }

      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v20];
      v237 |= 4uLL;
    }
  }

LABEL_45:
  if (self->_irisAnalyses)
  {
    if ([(VCPAsset *)self->_asset isMovieResourceLocalAvailable]|| [(VCPPhotoAnalyzer *)self allowStreaming])
    {
      asset = self->_asset;
      existingAnalysisForMovieAnalyzer = [(VCPPhotoAnalyzer *)self existingAnalysisForMovieAnalyzer];
      v38 = [VCPMovieAnalyzer analyzerWithVCPAsset:asset withExistingAnalysis:existingAnalysisForMovieAnalyzer forAnalysisTypes:self->_irisAnalyses withOptions:v8];

      checkFaceDominant = [(VCPPhotoAnalyzer *)self checkFaceDominant];
      if (checkFaceDominant)
      {
        if (self->_errorCode)
        {
LABEL_67:

          goto LABEL_206;
        }

        v39 = 1030;
LABEL_51:
        self->_errorCode = 49;
        self->_errorLine = v39;
        goto LABEL_67;
      }

      [v38 setFaceDominated:self->_faceDominated];
      [v38 setAllowStreaming:[(VCPPhotoAnalyzer *)self allowStreaming]];
      v40 = [v38 setRequiresOnDemandDownload:[(VCPPhotoAnalyzer *)self requiresOnDemandDownload]];
      if (!v38)
      {
        checkFaceDominant = -18;
        if (self->_errorCode)
        {
          goto LABEL_67;
        }

        v39 = 1034;
        goto LABEL_51;
      }

      v41 = VCPSignPostLog(v40);
      v42 = os_signpost_id_generate(v41);

      v44 = VCPSignPostLog(v43);
      v45 = v44;
      if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v42, "VCPPhotoAnalyzer_VCPMovieAnalyzer", "", buf, 2u);
      }

      v46 = [v38 analyzeAsset:assetCopy streamed:0];
      v47 = VCPSignPostLog(v46);
      v48 = v47;
      if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v48, OS_SIGNPOST_INTERVAL_END, v42, "VCPPhotoAnalyzer_VCPMovieAnalyzer", "", buf, 2u);
      }

      if ([v38 status]== 4)
      {
        checkFaceDominant = -128;
        if (!self->_errorCode)
        {
          errorLine = 1038;
LABEL_106:
          self->_errorLine = errorLine;
          goto LABEL_107;
        }

        goto LABEL_107;
      }

      if ([v38 status]!= 2)
      {
        if (!self->_errorCode)
        {
          self->_errorCode = [v38 errorCode];
          errorLine = [v38 errorLine];
          checkFaceDominant = -18;
          goto LABEL_106;
        }

        checkFaceDominant = -18;
LABEL_107:

        goto LABEL_206;
      }

      vcp_flags2 = [v46 vcp_flags];
      v236 |= vcp_flags2 & 0x20000000;
      vcp_types = [v46 vcp_types];
      v53 = objc_alloc(MEMORY[0x1E695DF90]);
      vcp_results = [v46 vcp_results];
      v224 = [v53 initWithDictionary:vcp_results];

      if (!v224)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63A50;
        }

        goto LABEL_166;
      }

      [v224 removeObjectForKey:@"FaceResults"];
      [v224 removeObjectForKey:@"FacePrintResults"];
      [v224 removeObjectForKey:@"FeatureVectorResults"];
      [v224 removeObjectForKey:@"SceneprintResults"];
      [v224 removeObjectForKey:@"SaliencyResults"];
      [v224 removeObjectForKey:@"HumanPoseResults"];
      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v224];
      v237 |= vcp_types & 0xFFFFFFFFFFBFE7F3;
      privateResults = [v38 privateResults];
      v56 = [privateResults objectForKeyedSubscript:@"MetaFocusResults"];
      v57 = v56 == 0;

      if (!v57)
      {
        analysis = self->_analysis;
        privateResults2 = [v38 privateResults];
        v60 = [privateResults2 objectForKeyedSubscript:@"MetaFocusResults"];
        [(NSMutableDictionary *)analysis vcp_setResult:v60 forKey:@"MetaFocusResults"];
      }

      privateResults3 = [v38 privateResults];
      v62 = [privateResults3 objectForKeyedSubscript:@"MetaMotionResults"];
      v63 = v62 == 0;

      if (!v63)
      {
        v64 = self->_analysis;
        privateResults4 = [v38 privateResults];
        v66 = [privateResults4 objectForKeyedSubscript:@"MetaMotionResults"];
        [(NSMutableDictionary *)v64 vcp_setResult:v66 forKey:@"MetaMotionResults"];
      }

      privateResults5 = [v38 privateResults];
      v68 = [privateResults5 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
      v69 = v68 == 0;

      if (!v69)
      {
        v70 = self->_analysis;
        privateResults6 = [v38 privateResults];
        v72 = [privateResults6 objectForKeyedSubscript:@"MetaItemPTSResultsKey"];
        [(NSMutableDictionary *)v70 vcp_setResult:v72 forKey:@"MetaItemPTSResultsKey"];
      }

      privateResults7 = [v38 privateResults];
      v74 = [privateResults7 objectForKeyedSubscript:@"MetaStabilizationResults"];
      v75 = v74 == 0;

      if (!v75)
      {
        v76 = self->_analysis;
        privateResults8 = [v38 privateResults];
        v78 = [privateResults8 objectForKeyedSubscript:@"MetaStabilizationResults"];
        [(NSMutableDictionary *)v76 vcp_setResult:v78 forKey:@"MetaStabilizationResults"];
      }

      goto LABEL_79;
    }

    if (self->_irisAnalyses && MediaAnalysisLogLevel() >= 6)
    {
      v38 = MEMORY[0x1E69E9C10];
      v50 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v38, OS_LOG_TYPE_INFO, "Live Photo w/o local movie resource and streaming not allowed, skip paired movie analysis", buf, 2u);
      }

LABEL_79:
    }
  }

  if ((self->_requestedAnalyses & 0x32821424A3B08 & (~v237 | 0x3280140000000)) != 0 || (self->_irisAnalyses & 0x40080) != 0)
  {
    checkFaceDominant = [(VCPPhotoAnalyzer *)self analyzeImage:&v236 performedAnalyses:&v237 cancel:assetCopy];
    if (checkFaceDominant)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63A60;
      }

      goto LABEL_206;
    }

    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"IrisObjectsResults"];
    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaItemPTSResultsKey"];
    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaStabilizationResults"];
  }

  vcp_quality = [(NSMutableDictionary *)self->_analysis vcp_quality];
  if (v80 == -1.0)
  {
    v81 = objc_alloc_init(VCPImageQualityAnalyzer);
    vcp_results2 = [(NSMutableDictionary *)self->_analysis vcp_results];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    v83 = [(VCPImageQualityAnalyzer *)v81 analyzeImageQuality:vcp_results2 irisPhotoOffsetSec:assetCopy cancel:?]== 0;

    if (v83)
    {
      v84 = self->_analysis;
      [(VCPImageQualityAnalyzer *)v81 qualityScore];
      [(NSMutableDictionary *)v84 vcp_setQuality:v85];
    }
  }

  if ((self->_requestedAnalyses & 0x100000) != 0)
  {
    vcp_quality = [(VCPAsset *)self->_asset isLivePhoto];
    if (vcp_quality)
    {
      originalMovie = [(VCPAsset *)self->_asset originalMovie];
      v87 = originalMovie == 0;

      if (v87)
      {
        vcp_quality = MediaAnalysisLogLevel();
        if (vcp_quality < 4)
        {
          goto LABEL_116;
        }

        v96 = MEMORY[0x1E69E9C10];
        v100 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, v96, OS_LOG_TYPE_DEFAULT, "[MediaAnalysis] PhotoAnalyzer - Original movie is not available, skip effects analysis", buf, 2u);
        }
      }

      else
      {
        v89 = VCPSignPostLog(v88);
        v90 = os_signpost_id_generate(v89);

        v92 = VCPSignPostLog(v91);
        v93 = v92;
        if (v90 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v93, OS_SIGNPOST_INTERVAL_BEGIN, v90, "VCPPhotoAnalyzer_VCPEffectsAnalyzer", "", buf, 2u);
        }

        v94 = [VCPEffectsAnalyzer alloc];
        vcp_results3 = [(NSMutableDictionary *)self->_analysis vcp_results];
        v96 = [(VCPEffectsAnalyzer *)v94 initWithAnalysisResults:vcp_results3];

        if (!v96)
        {
          goto LABEL_166;
        }

        v97 = self->_asset;
        v233 = 0;
        checkFaceDominant = [v96 analyzeAsset:v97 onDemand:0 cancel:assetCopy statsFlags:&v235 results:&v233];
        v98 = v233;
        v99 = v98;
        if (checkFaceDominant)
        {

          goto LABEL_206;
        }

        v101 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v98];
        v237 |= 0x100000uLL;
        v102 = VCPSignPostLog(v101);
        v103 = v102;
        if (v90 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v103, OS_SIGNPOST_INTERVAL_END, v90, "VCPPhotoAnalyzer_VCPEffectsAnalyzer", "", buf, 2u);
        }
      }
    }
  }

LABEL_116:
  requestedAnalyses = self->_requestedAnalyses;
  if ((requestedAnalyses & 0x800000000) != 0)
  {
    v113 = VCPSignPostLog(vcp_quality);
    v114 = os_signpost_id_generate(v113);

    v116 = VCPSignPostLog(v115);
    v117 = v116;
    if (v114 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v116))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v117, OS_SIGNPOST_INTERVAL_BEGIN, v114, "VCPPhotoAnalyzer_VCPParallaxAnalyzer", "", buf, 2u);
    }

    v118 = [VCPParallaxAnalyzer alloc];
    vcp_results4 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v120 = [(VCPParallaxAnalyzer *)v118 initWithOptions:v8 andExistingResults:vcp_results4];

    if (!v120)
    {
      if (self->_errorCode)
      {
        goto LABEL_166;
      }

      v124 = xmmword_1C9F63A80;
      goto LABEL_165;
    }

    v121 = self->_phAsset;
    v232 = 0;
    checkFaceDominant = [(VCPParallaxAnalyzer *)v120 analyzeAsset:v121 cancel:assetCopy results:&v232];
    v122 = v232;
    v123 = v122;
    if (checkFaceDominant)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63A70;
      }

      goto LABEL_206;
    }

    v125 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v122];
    v237 |= 0x800000000uLL;
    v126 = VCPSignPostLog(v125);
    v127 = v126;
    if (v114 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v126))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v127, OS_SIGNPOST_INTERVAL_END, v114, "VCPPhotoAnalyzer_VCPParallaxAnalyzer", "", buf, 2u);
    }

    requestedAnalyses = self->_requestedAnalyses;
    if ((requestedAnalyses & 0x8000000000) == 0)
    {
      goto LABEL_118;
    }
  }

  else if ((requestedAnalyses & 0x8000000000) == 0)
  {
LABEL_118:
    if ((requestedAnalyses & 0x400000000000) == 0)
    {
      goto LABEL_119;
    }

LABEL_155:
    v142 = VCPSignPostLog(vcp_quality);
    v143 = os_signpost_id_generate(v142);

    v145 = VCPSignPostLog(v144);
    v146 = v145;
    if (v143 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v146, OS_SIGNPOST_INTERVAL_BEGIN, v143, "VCPPhotoAnalyzer_VCPWatchFaceAnalyzer", "", buf, 2u);
    }

    v147 = [[VCPWatchFaceAnalyzer alloc] initWithOptions:v8];
    v148 = v147;
    if (v147)
    {
      v149 = self->_phAsset;
      v230 = 0;
      checkFaceDominant = [(VCPWatchFaceAnalyzer *)v147 analyzeAsset:v149 cancel:assetCopy results:&v230];
      v150 = v230;
      v151 = v150;
      if (checkFaceDominant)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63AB0;
        }

        goto LABEL_206;
      }

      v153 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v150];
      v237 |= 0x400000000000uLL;
      v154 = VCPSignPostLog(v153);
      v155 = v154;
      if (v143 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v154))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v155, OS_SIGNPOST_INTERVAL_END, v143, "VCPPhotoAnalyzer_VCPWatchFaceAnalyzer", "", buf, 2u);
      }

      if ((self->_requestedAnalyses & 0x1000000000) != 0)
      {
        goto LABEL_120;
      }

      goto LABEL_176;
    }

    if (self->_errorCode)
    {
      goto LABEL_166;
    }

    v124 = xmmword_1C9F63AC0;
LABEL_165:
    *&self->_errorCode = v124;
    goto LABEL_166;
  }

  v128 = VCPSignPostLog(vcp_quality);
  v129 = os_signpost_id_generate(v128);

  v131 = VCPSignPostLog(v130);
  v132 = v131;
  if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v132, OS_SIGNPOST_INTERVAL_BEGIN, v129, "VCPPhotoAnalyzer_VCPParallaxExport", "", buf, 2u);
  }

  v133 = [VCPParallaxAnalyzer alloc];
  vcp_results5 = [(NSMutableDictionary *)self->_analysis vcp_results];
  v135 = [(VCPParallaxAnalyzer *)v133 initWithOptions:v8 andExistingResults:vcp_results5];

  if (!v135)
  {
    if (self->_errorCode)
    {
      goto LABEL_166;
    }

    v124 = xmmword_1C9F63AA0;
    goto LABEL_165;
  }

  v136 = self->_phAsset;
  v231 = 0;
  checkFaceDominant = [(VCPParallaxAnalyzer *)v135 exportWallpaperForAsset:v136 withOptions:v8 cancel:assetCopy results:&v231];
  v137 = v231;
  v138 = v137;
  if (checkFaceDominant)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63A90;
    }

    goto LABEL_206;
  }

  v139 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v137];
  v237 |= 0x8000000000uLL;
  v140 = VCPSignPostLog(v139);
  v141 = v140;
  if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v140))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v141, OS_SIGNPOST_INTERVAL_END, v129, "VCPPhotoAnalyzer_VCPParallaxExport", "", buf, 2u);
  }

  requestedAnalyses = self->_requestedAnalyses;
  if ((requestedAnalyses & 0x400000000000) != 0)
  {
    goto LABEL_155;
  }

LABEL_119:
  if ((requestedAnalyses & 0x1000000000) != 0)
  {
LABEL_120:
    v105 = VCPSignPostLog(vcp_quality);
    v225 = os_signpost_id_generate(v105);

    v107 = VCPSignPostLog(v106);
    v108 = v107;
    if (v225 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v108, OS_SIGNPOST_INTERVAL_BEGIN, v225, "VCPPhotoAnalyzer_VCPFaceQualityAnalysis", "", buf, 2u);
    }

    photoLibrary2 = [(PHAsset *)self->_phAsset photoLibrary];
    v110 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary2];

    v111 = [[VCPFaceAnalyzer alloc] initWithContext:v110];
    v229 = 0;
    checkFaceDominant = [(VCPFaceAnalyzer *)v111 analyzeFaceQuality:&v229 withAsset:self->_phAsset andCancelBlock:assetCopy];
    v112 = v229;
    if (checkFaceDominant)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63AD0;
      }

      goto LABEL_206;
    }

    v156 = [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v112];
    v237 |= 0x1000000000uLL;
    v157 = VCPSignPostLog(v156);
    v158 = v157;
    if (v225 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v157))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v158, OS_SIGNPOST_INTERVAL_END, v225, "VCPPhotoAnalyzer_VCPFaceQualityAnalysis", "", buf, 2u);
    }
  }

LABEL_176:
  if (!+[VCPPhotoAnalyzer isLivePhotoKeyFrameEnabled]|| (self->_requestedAnalyses & 0x40000) == 0 || (v159 = [(VCPAsset *)self->_asset isLivePhoto], !v159))
  {
    vcp_results6 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v177 = [vcp_results6 objectForKeyedSubscript:?];
    v178 = v177 == 0;

    if (!v178)
    {
      vcp_results7 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v180 = [vcp_results7 objectForKeyedSubscript:@"FaceResults"];
      v181 = [v180 mutableCopy];

      for (i = 0; [v181 count] > i; ++i)
      {
        v183 = [v181 objectAtIndexedSubscript:i];
        v184 = [v183 mutableCopy];

        v185 = [v184 objectForKeyedSubscript:@"attributes"];
        v186 = [v185 mutableCopy];

        [v186 removeObjectForKey:@"faceQuality"];
        [v184 setObject:v186 forKey:@"attributes"];
        [v181 setObject:v184 atIndexedSubscript:i];
      }

      [(NSMutableDictionary *)self->_analysis vcp_setResult:v181 forKey:@"FaceResults"];
    }

    vcp_results8 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v188 = [vcp_results8 objectForKeyedSubscript:@"ExposureResults"];
    v189 = v188 == 0;

    if (v189)
    {
      goto LABEL_193;
    }

    vcp_results9 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v191 = [vcp_results9 objectForKeyedSubscript:@"ExposureResults"];
    v192 = [v191 objectAtIndexedSubscript:0];
    v165 = [v192 mutableCopy];

    [(VCPLivePhotoKeyFrameAnalyzer *)v165 removeObjectForKey:@"attributes"];
    v193 = self->_analysis;
    v242[0] = v165;
    v194 = [MEMORY[0x1E695DEC8] arrayWithObjects:v242 count:1];
    [(NSMutableDictionary *)v193 vcp_setResult:v194 forKey:@"ExposureResults"];
LABEL_192:

LABEL_193:
    vcp_results10 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v196 = [vcp_results10 objectForKeyedSubscript:@"MetaFocusResults"];
    v197 = v196 == 0;

    if (!v197)
    {
      [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaFocusResults"];
    }

    vcp_results11 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v199 = [vcp_results11 objectForKeyedSubscript:@"MetaMotionResults"];
    v200 = v199 == 0;

    if (!v200)
    {
      [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"MetaMotionResults"];
    }

    vcp_results12 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v202 = [vcp_results12 objectForKeyedSubscript:@"CameraMotionResults"];
    v203 = v202 == 0;

    if (!v203)
    {
      vcp_results13 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v205 = [vcp_results13 objectForKeyedSubscript:@"CameraMotionResults"];
      v206 = [v205 mutableCopy];

      for (j = 0; [v206 count] > j; ++j)
      {
        v208 = [v206 objectAtIndexedSubscript:j];
        v209 = [v208 mutableCopy];

        [v209 removeObjectForKey:@"quality"];
        [v206 setObject:v209 atIndexedSubscript:j];
      }

      [(NSMutableDictionary *)self->_analysis vcp_setResult:v206 forKey:@"CameraMotionResults"];
    }

    v210 = self->_analysis;
    date = [MEMORY[0x1E695DF00] date];
    [(NSMutableDictionary *)v210 setObject:date forKey:@"dateAnalyzed"];

    [(NSMutableDictionary *)self->_analysis vcp_addTypes:v237];
    [(NSMutableDictionary *)self->_analysis vcp_addFlags:v236];
    isLivePhoto = [(VCPAsset *)self->_asset isLivePhoto];
    v213 = 1;
    if (isLivePhoto)
    {
      v213 = 2;
    }

    v235 |= v213;
    v35 = [(NSMutableDictionary *)self->_analysis vcp_addStatsFlags:?];
    self->_status = 2;
    goto LABEL_205;
  }

  v160 = VCPSignPostLog(v159);
  v161 = os_signpost_id_generate(v160);

  v163 = VCPSignPostLog(v162);
  v164 = v163;
  if (v161 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v163))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v164, OS_SIGNPOST_INTERVAL_BEGIN, v161, "VCPPhotoAnalyzer_VCPLivePhotoKeyFrameAnalyzer", "", buf, 2u);
  }

  v165 = [[VCPLivePhotoKeyFrameAnalyzer alloc] initWithWidth:[(VCPAsset *)self->_asset pixelWidth] height:[(VCPAsset *)self->_asset pixelHeight]];
  if (v165)
  {
    v166 = self->_analysis;
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    v168 = v167;
    [(VCPAsset *)self->_asset originalPhotoOffsetSeconds];
    v170 = v169;
    imageBlurTextureScore = self->_imageBlurTextureScore;
    hadFlash = [(VCPAsset *)self->_asset hadFlash];
    LODWORD(v173) = v168;
    LODWORD(v174) = v170;
    *&v175 = imageBlurTextureScore;
    checkFaceDominant = [(VCPLivePhotoKeyFrameAnalyzer *)v165 analyzeLivePhotoKeyFrame:v166 irisPhotoOffsetSec:hadFlash originalIrisPhotoOffsetSec:assetCopy photoTextureScore:v173 hadFlash:v174 cancel:v175];
    if (checkFaceDominant)
    {

LABEL_206:
      v152 = 3;
      if (checkFaceDominant == -128)
      {
        v152 = 4;
      }

      goto LABEL_208;
    }

    v223 = VCPSignPostLog([(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"KeyFrameBlurResults"]);
    v194 = v223;
    if (v161 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v223))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v194, OS_SIGNPOST_INTERVAL_END, v161, "VCPPhotoAnalyzer_VCPLivePhotoKeyFrameAnalyzer", "", buf, 2u);
    }

    goto LABEL_192;
  }

LABEL_166:
  v152 = 3;
LABEL_208:
  self->_status = v152;
  v214 = self->_analysis;
  self->_analysis = 0;

LABEL_209:
  v215 = VCPSignPostLog(v35);
  v216 = v215;
  if (v228 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v215))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v216, OS_SIGNPOST_INTERVAL_END, spid, "VCPPhotoAnalyzer", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v217 = MEMORY[0x1E69E9C10];
    v218 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [(VCPAsset *)self->_asset localIdentifier];
      v220 = [(NSMutableDictionary *)self->_analysis vcp_analysisDescriptionWithResultDetails:1];
      *buf = 138412546;
      v239 = localIdentifier;
      v240 = 2112;
      v241 = v220;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][PhotoAnalyzer] After analyzing %@", buf, 0x16u);
    }
  }

LABEL_216:
  v221 = self->_analysis;

  return v221;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 0;
  return self;
}

@end