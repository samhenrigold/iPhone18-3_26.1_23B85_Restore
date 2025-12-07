@interface VCPFaceAnalyzer
- (VCPFaceAnalyzer)initWithContext:(id)context;
- (id)_existingFacesFromAsset:(id)asset;
- (id)_processForwardCompatibleFaces:(id)faces withExistingFaces:(id)existingFaces orientedWidth:(unint64_t)width orientedHeight:(unint64_t)height session:(id)session;
- (int)_createBlurRequests:(id *)requests andExposureRequests:(id *)exposureRequests forFaceObservations:(id)observations;
- (int)_loadImageRequestHandler:(id *)handler orientation:(unsigned int *)orientation bufferWidth:(int *)width bufferHeight:(int *)height withResource:(id)resource resourceURL:(id)l andAsset:(id)asset;
- (int)_performAnalysis:(id *)analysis withRequestHandler:(id)handler quickMode:(BOOL)mode sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height;
- (int)_refineAnalysis:(id *)analysis requestHandler:(id)handler forAsset:(id)asset resource:(id)resource isBestResource:(BOOL)bestResource orientedWidth:(unint64_t)width orientedHeight:(unint64_t)height;
- (int)analyzeAsset:(id)asset withResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource quickMode:(BOOL)mode results:(id *)results;
- (int)analyzeFaceQuality:(id *)quality withAsset:(id)asset andCancelBlock:(id)block;
- (int)quickAnalyzeAsset:(id)asset results:(id *)results;
- (int)quickAnalyzeCVPixelBuffer:(__CVBuffer *)buffer results:(id *)results;
- (int)updateMissingFaceprintForFaces:(id)faces withAsset:(id)asset;
- (void)_checkAnalysisRequests:(id)requests forTooSmallFaceObservations:(id)observations withAnalysisResults:(id)results;
@end

@implementation VCPFaceAnalyzer

- (VCPFaceAnalyzer)initWithContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = VCPFaceAnalyzer;
  v5 = [(VCPFaceAnalyzer *)&v13 init];
  if (v5)
  {
    v5->_processingVersion = [contextCopy processingVersion];
    v6 = [VCPFaceMerger alloc];
    [contextCopy faceMergeFaceprintDistanceThreshold];
    v8 = [(VCPFaceMerger *)v6 initWithThreshold:v7];
    faceMerger = v5->_faceMerger;
    v5->_faceMerger = v8;

    v10 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_50];
    sessionPool = v5->_sessionPool;
    v5->_sessionPool = v10;

    v5->_errorCode = 0;
    v5->_errorLine = 0;
  }

  return v5;
}

id __35__VCPFaceAnalyzer_initWithContext___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6984688]);

  return v0;
}

- (int)_createBlurRequests:(id *)requests andExposureRequests:(id *)exposureRequests forFaceObservations:(id)observations
{
  v34 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = observationsCopy;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = *v30;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v29 + 1) + 8 * i) boundingBox];
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = 1.0;
        v37.size.height = 1.0;
        v36 = CGRectIntersection(v35, v37);
        x = v36.origin.x;
        y = v36.origin.y;
        width = v36.size.width;
        height = v36.size.height;
        v28 = 0;
        v16 = [VCPFaceUtils configureVNRequest:&v28 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
        v17 = v28;
        v18 = v17;
        if (v16)
        {
          goto LABEL_12;
        }

        [v17 setBlurDeterminationMethod:1];
        [v18 setMaximumIntermediateSideLength:128];
        [v18 setRegionOfInterest:{x, y, width, height}];
        [array addObject:v18];
        v27 = 0;
        v16 = [VCPFaceUtils configureVNRequest:&v27 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
        v19 = v27;
        v20 = v19;
        if (v16)
        {

LABEL_12:
          goto LABEL_13;
        }

        [v19 setRegionOfInterest:{x, y, width, height}];
        [array2 addObject:v20];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v21 = array;
  *requests = array;
  v22 = array2;
  v16 = 0;
  *exposureRequests = array2;
LABEL_13:

  return v16;
}

- (void)_checkAnalysisRequests:(id)requests forTooSmallFaceObservations:(id)observations withAnalysisResults:(id)results
{
  v24 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  observationsCopy = observations;
  resultsCopy = results;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = requestsCopy;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    v11 = *MEMORY[0x1E69849E8];
    v12 = *MEMORY[0x1E69849F0];
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        warnings = [*(*(&v19 + 1) + 8 * v13) warnings];
        v15 = [warnings objectForKeyedSubscript:v11];
        if ([v15 BOOLValue])
        {
          [resultsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ImageTooSmall"];
        }

        v16 = [warnings objectForKeyedSubscript:v12];
        if (v16)
        {
          [observationsCopy addObjectsFromArray:v16];
        }

        ++v13;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (int)_performAnalysis:(id *)analysis withRequestHandler:(id)handler quickMode:(BOOL)mode sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height
{
  v206 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v197 = 0;
  v9 = [VCPFaceUtils configureVNRequest:&v197 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
  v171 = v197;
  if (!v9)
  {
    if (self->_processingVersion == 11)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v11 = array;
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] Set precicion recall threshold to 0.96", buf, 2u);
        }

        array = v11;
      }

      LODWORD(v10) = 1064682127;
      [v171 setPrecisionRecallThreshold:v10];
    }

    v14 = [array addObject:v171];
    if (mode)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v196 = 0;
      v9 = [VCPFaceUtils configureVNRequest:&v196 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
      v32 = v196;
      v168 = v32;
      if (v9)
      {
        v166 = 0;
        v167 = 0;
        goto LABEL_159;
      }

      [array addObject:v32];
      v195 = 0;
      v9 = [VCPFaceUtils configureVNRequest:&v195 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
      v34 = v195;
      v167 = v34;
      if (v9)
      {
        v166 = 0;
        goto LABEL_159;
      }

      [array addObject:v34];
      v194 = 0;
      v9 = [VCPFaceUtils configureVNRequest:&v194 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
      v35 = v194;
      v15 = v35;
      if (v9)
      {
        v166 = v35;
        goto LABEL_159;
      }

      v16 = v167;
      v17 = v168;
      v14 = [array addObject:v35];
    }

    v166 = v15;
    v167 = v16;
    v168 = v17;
    v161 = array;
    v18 = VCPSignPostLog(v14);
    v19 = os_signpost_id_generate(v18);

    v21 = VCPSignPostLog(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPFaceAnalyzerImageRequestHandlerPerformDetectionRequests", "", buf, 2u);
    }

    v193 = 0;
    v23 = [handlerCopy performRequests:v161 error:&v193];
    type = COERCE_DOUBLE(v193);
    v24 = VCPSignPostLog(*&type);
    v25 = v24;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v19, "VCPFaceAnalyzerImageRequestHandlerPerformDetectionRequests", "", buf, 2u);
    }

    if ((v23 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [*&type description];
        v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412290;
        v200 = v33;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform detector requests - %@", buf, 0xCu);
      }

      v9 = -18;
      goto LABEL_158;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    results = [v171 results];
    if (![results count])
    {
      results2 = [v168 results];
      if (![results2 count])
      {
        results3 = [v167 results];
        if (![results3 count])
        {
          results4 = [v15 results];
          v66 = [results4 count] == 0;

          if (v66)
          {
            v67 = dictionary;
            v9 = 0;
            *analysis = dictionary;
LABEL_157:

LABEL_158:
            array = v161;
            goto LABEL_159;
          }

LABEL_24:
          array2 = [MEMORY[0x1E695DF70] array];
          results5 = [v171 results];
          v30 = [results5 count] == 0;

          if (v30)
          {
            v160 = 0;
          }

          else
          {
            v192 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v192 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v160 = v192;
            if (v9)
            {
              v157 = 0;
LABEL_54:
              v153 = 0;
              v154 = 0;
              v152 = 0;
              v155 = 0;
              v156 = 0;
LABEL_156:

              goto LABEL_157;
            }

            if ([objc_opt_class() _faceprintFastMode])
            {
              [v160 setDetectionLevel:2];
            }

            results6 = [v171 results];
            [v160 setInputFaceObservations:results6];

            v31 = [array2 addObject:v160];
          }

          if (mode)
          {
            v156 = 0;
            v157 = 0;
            v153 = 0;
            v154 = 0;
            v152 = 0;
            v155 = 0;
            goto LABEL_43;
          }

          results7 = [v171 results];
          v49 = [results7 count] == 0;

          if (v49)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = 0;
          }

          else
          {
            v191 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v191 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v157 = v191;
            if (v9)
            {
              goto LABEL_54;
            }

            results8 = [v171 results];
            [v157 setInputFaceObservations:results8];

            [array2 addObject:v157];
            v190 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v190 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v156 = v190;
            if (v9)
            {
              v153 = 0;
              v154 = 0;
              v152 = 0;
              v155 = 0;
              goto LABEL_156;
            }

            results9 = [v171 results];
            [v156 setInputFaceObservations:results9];

            [array2 addObject:v156];
            v189 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v189 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v155 = v189;
            if (v9)
            {
              v153 = 0;
              v154 = 0;
              goto LABEL_162;
            }

            results10 = [v171 results];
            [v155 setInputFaceObservations:results10];

            [array2 addObject:v155];
            v188 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v188 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v153 = v188;
            if (v9)
            {
              v154 = 0;
              goto LABEL_162;
            }

            results11 = [v171 results];
            [v153 setInputFaceObservations:results11];

            v52 = v153;
            v53 = v155;
            v54 = v156;
            v51 = v157;
            [array2 addObject:v153];
          }

          results12 = [v168 results];
          v156 = v54;
          v157 = v51;
          v153 = v52;
          v155 = v53;
          v56 = [results12 count] == 0;

          if (v56)
          {
            v58 = 0;
          }

          else
          {
            v187 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v187 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v154 = v187;
            if (v9)
            {
LABEL_162:
              v152 = 0;
              goto LABEL_156;
            }

            results13 = [v168 results];
            [v154 setInputDetectedObjectObservations:results13];

            v58 = v154;
            [array2 addObject:v154];
          }

          v154 = v58;
          array3 = [MEMORY[0x1E695DF70] array];
          results14 = [v166 results];
          v70 = [results14 count] == 0;

          if (!v70)
          {
            results15 = [v166 results];
            [array3 addObjectsFromArray:results15];
          }

          results16 = [v167 results];
          v73 = [results16 count] == 0;

          if (!v73)
          {
            results17 = [v167 results];
            [array3 addObjectsFromArray:results17];
          }

          if ([array3 count])
          {
            v186 = 0;
            v9 = [VCPFaceUtils configureVNRequest:&v186 withClass:objc_opt_class() andProcessingVersion:self->_processingVersion];
            v75 = v186;
            if (v9)
            {
              v152 = v75;

              goto LABEL_156;
            }

            v98 = v75;
            [v75 setInputDetectedObjectObservations:array3];
            [array2 addObject:v98];
          }

          else
          {
            v98 = 0;
          }

          v152 = v98;

LABEL_43:
          v37 = VCPSignPostLog(v31);
          v38 = os_signpost_id_generate(v37);

          v40 = VCPSignPostLog(v39);
          v41 = v40;
          if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v38, "VCPFaceAnalyzerImageRequestHandlerPerformAdditionalRequests", "", buf, 2u);
          }

          v185 = type;
          v42 = [handlerCopy performRequests:array2 error:&v185];
          v150 = COERCE_DOUBLE(*&v185);

          v44 = VCPSignPostLog(v43);
          v45 = v44;
          if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_END, v38, "VCPFaceAnalyzerImageRequestHandlerPerformAdditionalRequests", "", buf, 2u);
          }

          if ((v42 & 1) == 0)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [*&v150 description];
              v50 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412290;
              v200 = v50;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform additional requests - %@", buf, 0xCu);
            }

            v9 = -18;
            goto LABEL_155;
          }

          array4 = [MEMORY[0x1E695DF70] array];
          [array4 addObjectsFromArray:v161];
          [array4 addObjectsFromArray:array2];
          v147 = [MEMORY[0x1E695DFA8] set];
          v46 = [VCPFaceAnalyzer _checkAnalysisRequests:"_checkAnalysisRequests:forTooSmallFaceObservations:withAnalysisResults:" forTooSmallFaceObservations:array4 withAnalysisResults:?];
          if (mode)
          {
            v47 = 0;
            v149 = 0;
          }

          else
          {
            v59 = VCPSignPostLog(v46);
            spid = os_signpost_id_generate(v59);

            v61 = VCPSignPostLog(v60);
            v62 = v61;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v62, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerBlurExposureAnalysis", "", buf, 2u);
            }

            v183 = 0;
            v184 = 0;
            results18 = [v171 results];
            v9 = [(VCPFaceAnalyzer *)self _createBlurRequests:&v184 andExposureRequests:&v183 forFaceObservations:results18];
            v148 = v184;
            v145 = v183;

            if (v9)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to create blur/exposure request", buf, 2u);
              }

              v47 = v145;
              goto LABEL_154;
            }

            v182 = v150;
            v76 = [handlerCopy performRequests:v148 error:&v182];
            v77 = COERCE_DOUBLE(*&v182);

            v151 = v77;
            if (v76)
            {
              [(VCPFaceAnalyzer *)self _checkAnalysisRequests:v148 forTooSmallFaceObservations:v147 withAnalysisResults:dictionary];
              v78 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v148, "count")}];
              v180 = 0u;
              v181 = 0u;
              v178 = 0u;
              v179 = 0u;
              v79 = v148;
              v80 = [v79 countByEnumeratingWithState:&v178 objects:v205 count:16];
              if (v80)
              {
                v81 = *v179;
                v82 = MEMORY[0x1E69E9C10];
                do
                {
                  for (i = 0; i != v80; ++i)
                  {
                    if (*v179 != v81)
                    {
                      objc_enumerationMutation(v79);
                    }

                    results19 = [*(*(&v178 + 1) + 8 * i) results];
                    firstObject = [results19 firstObject];

                    if (firstObject)
                    {
                      blurScore = [firstObject blurScore];
                      [blurScore floatValue];
                      if (v87 < 1.0)
                      {
                        v88 = v87;
                      }

                      else
                      {
                        v88 = 1.0;
                      }

                      if (v87 <= 0.0)
                      {
                        v89 = 0.0;
                      }

                      else
                      {
                        v89 = v88;
                      }

                      blurScore2 = [firstObject blurScore];
                      [blurScore2 floatValue];
                      v92 = v89 != v91;

                      if (v92 && MediaAnalysisLogLevel() >= 4)
                      {
                        v94 = v82;
                        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                        {
                          blurScore3 = [firstObject blurScore];
                          [blurScore3 floatValue];
                          *buf = 134218496;
                          v200 = v96;
                          v201 = 2048;
                          v202 = 0;
                          v203 = 2048;
                          v204 = 0x3FF0000000000000;
                          _os_log_impl(&dword_1C9B70000, v82, OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Blur score %f out of bound [%f, %f]", buf, 0x20u);
                        }
                      }

                      *&v93 = v89;
                      v97 = [MEMORY[0x1E696AD98] numberWithFloat:v93];
                      [v78 addObject:v97];
                    }

                    else
                    {
                      [v78 addObject:&unk_1F49BB158];
                    }
                  }

                  v80 = [v79 countByEnumeratingWithState:&v178 objects:v205 count:16];
                }

                while (v80);
              }

              v149 = v78;
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v200 = v77;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform blur requests - %@", buf, 0xCu);
              }

              v149 = 0;
            }

            v177 = v151;
            v100 = [handlerCopy performRequests:v145 error:&v177];
            v143 = COERCE_DOUBLE(*&v177);

            if (v100)
            {
              [(VCPFaceAnalyzer *)self _checkAnalysisRequests:v145 forTooSmallFaceObservations:v147 withAnalysisResults:dictionary];
              v101 = [v145 count];
              v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v101];
              v175 = 0u;
              v176 = 0u;
              v173 = 0u;
              v174 = 0u;
              v102 = v145;
              v103 = [v102 countByEnumeratingWithState:&v173 objects:v198 count:16];
              if (v103)
              {
                v104 = *v174;
                v105 = MEMORY[0x1E69E9C10];
                do
                {
                  for (j = 0; j != v103; ++j)
                  {
                    if (*v174 != v104)
                    {
                      objc_enumerationMutation(v102);
                    }

                    results20 = [*(*(&v173 + 1) + 8 * j) results];
                    firstObject2 = [results20 firstObject];

                    if (firstObject2)
                    {
                      exposureScore = [firstObject2 exposureScore];
                      [exposureScore floatValue];
                      if (v110 < 1.0)
                      {
                        v111 = v110;
                      }

                      else
                      {
                        v111 = 1.0;
                      }

                      if (v110 <= 0.0)
                      {
                        v112 = 0.0;
                      }

                      else
                      {
                        v112 = v111;
                      }

                      exposureScore2 = [firstObject2 exposureScore];
                      [exposureScore2 floatValue];
                      v115 = v112 != v114;

                      if (v115 && MediaAnalysisLogLevel() >= 4)
                      {
                        v117 = v105;
                        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                        {
                          exposureScore3 = [firstObject2 exposureScore];
                          [exposureScore3 floatValue];
                          *buf = 134218496;
                          v200 = v119;
                          v201 = 2048;
                          v202 = 0;
                          v203 = 2048;
                          v204 = 0x3FF0000000000000;
                          _os_log_impl(&dword_1C9B70000, v105, OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Exposure score %f out of bound [%f, %f]", buf, 0x20u);
                        }
                      }

                      *&v116 = v112;
                      v120 = [MEMORY[0x1E696AD98] numberWithFloat:v116];
                      [v47 addObject:v120];
                    }

                    else
                    {
                      [v47 addObject:&unk_1F49BB168];
                    }
                  }

                  v103 = [v102 countByEnumeratingWithState:&v173 objects:v198 count:16];
                }

                while (v103);
              }
            }

            else
            {
              v121 = MediaAnalysisLogLevel();
              if (v121 >= 3)
              {
                v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                if (v121)
                {
                  *buf = 138412290;
                  v200 = v143;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform exposure requests - %@", buf, 0xCu);
                }
              }

              v47 = 0;
            }

            v122 = VCPSignPostLog(v121);
            v123 = v122;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v123, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerBlurExposureAnalysis", "", buf, 2u);
            }

            v150 = v143;
          }

          v124 = VCPSignPostLog(v46);
          v125 = os_signpost_id_generate(v124);

          v127 = VCPSignPostLog(v126);
          v128 = v127;
          if (v125 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v127))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v128, OS_SIGNPOST_INTERVAL_BEGIN, v125, "VCPFaceAnalyzerVCPFaceCreation", "", buf, 2u);
          }

          results21 = [v171 results];
          results22 = [v168 results];
          results23 = [v167 results];
          results24 = [v166 results];
          processingVersion = self->_processingVersion;
          v172 = 0;
          LODWORD(v142) = processingVersion;
          v134 = [VCPPhotosFace facesFromFaceObservations:results21 humanObservations:results22 animalHeadObservations:results23 animalBodyObservations:results24 sourceWidth:width sourceHeight:height visionRequests:array4 blurScorePerFace:v149 exposureScorePerFace:v47 tooSmallFaceObservations:v147 processingVersion:v142 animalResults:&v172];
          v135 = v172;
          [dictionary setObject:v134 forKeyedSubscript:@"FaceResults"];

          v136 = VCPSignPostLog([dictionary setObject:v135 forKeyedSubscript:@"VNAnimalObservationResults"]);
          v137 = v136;
          if (v125 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v136))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v137, OS_SIGNPOST_INTERVAL_END, v125, "VCPFaceAnalyzerVCPFaceCreation", "", buf, 2u);
          }

          v138 = dictionary;
          *analysis = dictionary;

          v9 = 0;
          v148 = v149;
LABEL_154:

LABEL_155:
          type = v150;
          goto LABEL_156;
        }
      }
    }

    goto LABEL_24;
  }

  v166 = 0;
  v167 = 0;
  v168 = 0;
LABEL_159:

  return v9;
}

- (id)_existingFacesFromAsset:(id)asset
{
  v62[3] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v39 = librarySpecificFetchOptions;
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEE18];
  v5 = *MEMORY[0x1E6978D70];
  v62[0] = *MEMORY[0x1E6978D80];
  v62[1] = v5;
  v62[2] = *MEMORY[0x1E6978D68];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v6];

  v38 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  array = [MEMORY[0x1E695DF70] array];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v38;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v8)
  {
    v9 = *v52;
    v10 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v13 = [VCPPhotosFace faceFromPHFace:v12 copyOption:1];
        if (array)
        {
          [array addObject:v13];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier = [assetCopy localIdentifier];
          localIdentifier2 = [v12 localIdentifier];
          *buf = 138412546;
          v58 = localIdentifier;
          v59 = 2112;
          v60 = localIdentifier2;
          _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEFAULT, "[VCPFaceAnalyzer][%@] Failed to create VCPPhotosFace from PHFace %@", buf, 0x16u);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v8);
  }

  v16 = [array valueForKey:@"personLocalIdentifier"];
  v37 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_378];
  v40 = [v16 filteredArrayUsingPredicate:?];

  array2 = [MEMORY[0x1E695DF70] array];
  if ([v40 count])
  {
    photoLibrary2 = [assetCopy photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(verifiedType = %d) OR (verifiedType = %d)", 1, 2];
    [librarySpecificFetchOptions2 setPredicate:v20];

    [librarySpecificFetchOptions2 setMinimumVerifiedFaceCount:1];
    [v39 setIncludedDetectionTypes:&unk_1F49BEE30];
    [MEMORY[0x1E6978978] fetchPersonsWithLocalIdentifiers:v40 options:librarySpecificFetchOptions2];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v21 = v48 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v22)
    {
      v23 = *v48;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v21);
          }

          localIdentifier3 = [*(*(&v47 + 1) + 8 * j) localIdentifier];
          [array2 addObject:localIdentifier3];
        }

        v22 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v22);
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = array;
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v28)
  {
    v29 = *v44;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v44 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v43 + 1) + 8 * k);
        personLocalIdentifier = [v31 personLocalIdentifier];
        if (personLocalIdentifier && (![array2 containsObject:personLocalIdentifier] || objc_msgSend(v31, "nameSource") == 6))
        {
          [v31 setPersonLocalIdentifier:0];
        }

        localIdentifier4 = [v31 localIdentifier];
        v34 = localIdentifier4 == 0;

        if (!v34)
        {
          localIdentifier5 = [v31 localIdentifier];
          [dictionary setObject:v31 forKeyedSubscript:localIdentifier5];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v28);
  }

  return dictionary;
}

uint64_t __43__VCPFaceAnalyzer__existingFacesFromAsset___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

- (id)_processForwardCompatibleFaces:(id)faces withExistingFaces:(id)existingFaces orientedWidth:(unint64_t)width orientedHeight:(unint64_t)height session:(id)session
{
  v118 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  existingFacesCopy = existingFaces;
  sessionCopy = session;
  if (_os_feature_enabled_impl())
  {
    [facesCopy objectForKeyedSubscript:@"FacesToPersist"];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    obj = v104 = 0u;
    v9 = [obj countByEnumeratingWithState:&v103 objects:v117 count:16];
    if (!v9)
    {
      goto LABEL_77;
    }

    v92 = *v104;
    while (1)
    {
      v10 = 0;
      v93 = v9;
      do
      {
        if (*v104 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v103 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = MEMORY[0x1E696AEC0];
        localIdentifier = [v11 localIdentifier];
        v15 = [v13 stringWithFormat:@"[FaceAnalyzer][FC][%@]", localIdentifier];

        localIdentifier2 = [v11 localIdentifier];
        LODWORD(localIdentifier) = localIdentifier2 == 0;

        if (localIdentifier)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [v11 gist];
            v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v108 = v15;
            v109 = 2112;
            v110 = v47;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Skipping new face %@", buf, 0x16u);
          }
        }

        else
        {
          if ([v11 detectionType] == 1)
          {
            localIdentifier3 = [v11 localIdentifier];
            v94 = [existingFacesCopy objectForKeyedSubscript:localIdentifier3];

            imageprintWrapper = [v94 imageprintWrapper];
            if (![imageprintWrapper type])
            {
              imageprintWrapper2 = [v94 imageprintWrapper];
              if ([imageprintWrapper2 version] == 11)
              {
                imageprintWrapper3 = [v94 imageprintWrapper];
                data = [imageprintWrapper3 data];
                v22 = data == 0;

                if (!v22)
                {
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    [v11 gist];
                    v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    *buf = 138412546;
                    v108 = v15;
                    v109 = 2112;
                    v110 = v23;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Processing forward-compabitle face %@", buf, 0x16u);
                  }

                  imageprintWrapper4 = [v94 imageprintWrapper];
                  data2 = [imageprintWrapper4 data];
                  v102 = 0;
                  v87 = [VCPVNImageprintWrapper generateVNImageprintWithType:0 archiveData:data2 andError:&v102];
                  v26 = v102;

                  imageprintWrapper5 = [v11 imageprintWrapper];
                  data3 = [imageprintWrapper5 data];
                  v101 = v26;
                  v89 = [VCPVNImageprintWrapper generateVNImageprintWithType:0 archiveData:data3 andError:&v101];
                  v29 = COERCE_DOUBLE(v101);

                  faceprint = [v89 faceprint];
                  faceprint2 = [v87 faceprint];
                  if (!faceprint2 || ([v89 faceprint], v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 == 0, v32, faceprint2, v33))
                  {
                    v86 = faceprint;
                    v88 = v29;
                    goto LABEL_42;
                  }

                  v35 = VCPSignPostLog(v34);
                  spid = os_signpost_id_generate(v35);

                  v37 = VCPSignPostLog(v36);
                  v38 = v37;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADUpgradeFaceprint", "", buf, 2u);
                  }

                  v100 = 0.0;
                  faceprint3 = [v87 faceprint];
                  faceprint4 = [v89 faceprint];
                  v98 = v29;
                  v99 = faceprint;
                  v41 = VNUpgradeFaceprint();
                  v86 = v99;

                  v88 = COERCE_DOUBLE(*&v98);
                  if (v41)
                  {
                    v42 = MediaAnalysisLogLevel();
                    if (v42 >= 7)
                    {
                      v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
                      if (v42)
                      {
                        v43 = v100;
                        [v86 confidence];
                        *buf = 138412802;
                        v108 = v15;
                        v109 = 2048;
                        v110 = v43;
                        v111 = 2048;
                        v112 = v44;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ FC faceprint sigma %.3f and confidence: %.3f", buf, 0x20u);
                      }
                    }

                    v45 = VCPSignPostLog(v42);
                    v46 = v45;
                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_END, spid, "MADUpgradeFaceprint", "", buf, 2u);
                    }

LABEL_42:
                    torsoprint = [v89 torsoprint];
                    torsoprint2 = [v87 torsoprint];
                    if (!torsoprint2 || ([v89 torsoprint], v59 = objc_claimAutoreleasedReturnValue(), v60 = v59 == 0, v59, torsoprint2, v60))
                    {
                      v69 = torsoprint;
                      v70 = v88;
                      goto LABEL_56;
                    }

                    v62 = VCPSignPostLog(v61);
                    spida = os_signpost_id_generate(v62);

                    v64 = VCPSignPostLog(v63);
                    v65 = v64;
                    if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v65, OS_SIGNPOST_INTERVAL_BEGIN, spida, "MADUpgradeTorsoprint", "", buf, 2u);
                    }

                    v100 = 0.0;
                    torsoprint3 = [v87 torsoprint];
                    torsoprint4 = [v89 torsoprint];
                    v96 = v88;
                    v97 = torsoprint;
                    v68 = VNUpgradeTorsoprint();
                    v69 = v97;

                    v70 = COERCE_DOUBLE(*&v96);
                    if (v68)
                    {
                      v71 = MediaAnalysisLogLevel();
                      if (v71 >= 7)
                      {
                        v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
                        if (v71)
                        {
                          v72 = v100;
                          [v69 confidence];
                          *buf = 138412802;
                          v108 = v15;
                          v109 = 2048;
                          v110 = v72;
                          v111 = 2048;
                          v112 = v73;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ FC torsoprint sigma %.3f and confidence: %.3f", buf, 0x20u);
                        }
                      }

                      v74 = VCPSignPostLog(v71);
                      v75 = v74;
                      if (spida - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v75, OS_SIGNPOST_INTERVAL_END, spida, "MADUpgradeTorsoprint", "", buf, 2u);
                      }

LABEL_56:
                      v76 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:v86 torsoprint:v69];
                      v95 = v70;
                      v77 = [v76 serializeStateAndReturnError:&v95];
                      v78 = COERCE_DOUBLE(*&v95);

                      if (v77)
                      {
                        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                        {
                          [v11 gist];
                          v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                          *buf = 138412546;
                          v108 = v15;
                          v109 = 2112;
                          v110 = v79;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Wrapping forward-compatible faceprint for face %@", buf, 0x16u);
                        }

                        v80 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:14 andData:v77];
                        [v11 setImageprintWrapper:v80];

                        [v11 setVuObservationID:0];
                        [v11 setAlgorithmVersion:14];
                      }

                      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v108 = v15;
                        v109 = 2112;
                        v110 = v78;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Unable to serialize forward-compatible faceTorsoprint - %@; ignore", buf, 0x16u);
                      }

                      v70 = v78;
                    }

                    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v108 = v15;
                      v109 = 2112;
                      v110 = v70;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to upgrade torsoprint - %@; skipping", buf, 0x16u);
                    }

                    v88 = v70;
                  }

                  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v108 = v15;
                    v109 = 2112;
                    v110 = v88;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to upgrade faceprint - %@; skipping", buf, 0x16u);
                  }

LABEL_67:
                  goto LABEL_68;
                }

LABEL_36:
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  [v11 gist];
                  v49 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  imageprintWrapper6 = [v94 imageprintWrapper];
                  *&v51 = COERCE_DOUBLE([imageprintWrapper6 type]);
                  imageprintWrapper7 = [v94 imageprintWrapper];
                  version = [imageprintWrapper7 version];
                  imageprintWrapper8 = [v94 imageprintWrapper];
                  data4 = [imageprintWrapper8 data];
                  *buf = 138413314;
                  v56 = &stru_1F496CB30;
                  if (!data4)
                  {
                    v56 = @"missing faceprint";
                  }

                  v108 = v15;
                  v109 = 2112;
                  v110 = v49;
                  v111 = 2048;
                  v112 = *&v51;
                  v113 = 1024;
                  v114 = version;
                  v115 = 2112;
                  v116 = v56;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Skipping data incomplete face %@ %lu %d %@", buf, 0x30u);
                }

                goto LABEL_67;
              }
            }

            goto LABEL_36;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [v11 gist];
            v48 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 138412546;
            v108 = v15;
            v109 = 2112;
            v110 = v48;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Skipping non-human face %@", buf, 0x16u);
          }
        }

LABEL_68:

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v93 != v10);
      v9 = [obj countByEnumeratingWithState:&v103 objects:v117 count:16];
      if (!v9)
      {
LABEL_77:

        goto LABEL_81;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC] Feature is disabled; skip", buf, 2u);
  }

LABEL_81:

  return facesCopy;
}

- (int)_refineAnalysis:(id *)analysis requestHandler:(id)handler forAsset:(id)asset resource:(id)resource isBestResource:(BOOL)bestResource orientedWidth:(unint64_t)width orientedHeight:(unint64_t)height
{
  bestResourceCopy = bestResource;
  v106 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  assetCopy = asset;
  resourceCopy = resource;
  v12 = VCPSignPostLog(resourceCopy);
  v13 = os_signpost_id_generate(v12);

  v15 = VCPSignPostLog(v14);
  v16 = v15;
  spid = v13;
  v72 = v13 - 1;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPFaceAnalyzerVerifyAndMergeFaces", "", buf, 2u);
  }

  v81 = [*analysis mutableCopy];
  [v81 removeObjectForKey:@"FaceResults"];
  v77 = [*analysis objectForKeyedSubscript:@"FaceResults"];
  v75 = [(VCPFaceAnalyzer *)self _existingFacesFromAsset:assetCopy];
  v17 = [v75 count];
  if (v17)
  {
    v70 = [(VCPFaceAnalyzer *)self _existingFacesFromAsset:assetCopy];
    faceMerger = self->_faceMerger;
    allValues = [v75 allValues];
    v20 = -[VCPFaceMerger mergeExistingFaces:andDetectedFaces:withRequestHandler:orientedWidth:orientedHeight:assetWidth:assetHeight:](faceMerger, "mergeExistingFaces:andDetectedFaces:withRequestHandler:orientedWidth:orientedHeight:assetWidth:assetHeight:", allValues, v77, handlerCopy, width, height, [assetCopy pixelWidth], objc_msgSend(assetCopy, "pixelHeight"));

    if ((_os_feature_enabled_impl() & 1) == 0 && [resourceCopy type] == 102 && !bestResourceCopy)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        widthCopy = width;
        v91 = 2048;
        heightCopy = height;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC] Start processing resource %lu x %lu", buf, 0x16u);
      }

      session = [handlerCopy session];
      v68 = [(VCPFaceAnalyzer *)self _processForwardCompatibleFaces:v20 withExistingFaces:v70 orientedWidth:width orientedHeight:height session:session];

      v22 = [v81 objectForKeyedSubscript:?];
      bOOLValue = [v22 BOOLValue];

      [v81 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ImageTooSmall"];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier = [assetCopy localIdentifier];
        v24 = localIdentifier;
        v25 = @"NO";
        if (bOOLValue)
        {
          v25 = @"YES";
        }

        *buf = 138412546;
        widthCopy = localIdentifier;
        v91 = 2112;
        heightCopy = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Vision image-too-small decision: %@", buf, 0x16u);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = [v68 objectForKeyedSubscript:@"FacesToPersist"];
      v26 = [obj countByEnumeratingWithState:&v83 objects:v105 count:16];
      if (v26)
      {
        v27 = *v84;
        if (width >= height)
        {
          widthCopy2 = height;
        }

        else
        {
          widthCopy2 = width;
        }

        v29 = widthCopy2;
        v30 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v84 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v83 + 1) + 8 * i);
            v33 = MEMORY[0x1E696AEC0];
            localIdentifier2 = [v32 localIdentifier];
            detectionType = [v32 detectionType];
            v36 = @"Pet";
            if (detectionType == 1)
            {
              v36 = @"Human";
            }

            v37 = [v33 stringWithFormat:@"[FaceAnalyzer][FC][SmallFace][%@][%@]", localIdentifier2, v36];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              imageprintWrapper = [v32 imageprintWrapper];
              version = [imageprintWrapper version];
              *buf = 138412546;
              widthCopy = v37;
              v91 = 1024;
              LODWORD(heightCopy) = version;
              _os_log_impl(&dword_1C9B70000, v30, OS_LOG_TYPE_DEBUG, "%@ Face faceprint version %d", buf, 0x12u);
            }

            [v32 size];
            v41 = v40;
            [v32 bodyWidth];
            v43 = v42;
            [v32 bodyHeight];
            if (v43 >= v44)
            {
              v43 = v44;
            }

            _smallFaceWarningThreshold = [objc_opt_class() _smallFaceWarningThreshold];
            v46 = v41 * v29;
            v47 = v43 * v29;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [v32 size];
              v49 = v48;
              [v32 bodyWidth];
              v51 = v50;
              [v32 bodyHeight];
              *buf = 138414082;
              widthCopy = v37;
              v91 = 2048;
              heightCopy = v49;
              v93 = 1024;
              v94 = v46;
              v95 = 1024;
              v96 = _smallFaceWarningThreshold;
              v97 = 2048;
              v98 = v51;
              v99 = 2048;
              v100 = v52;
              v101 = 1024;
              v102 = v47;
              v103 = 1024;
              v104 = _smallFaceWarningThreshold;
              _os_log_impl(&dword_1C9B70000, v30, OS_LOG_TYPE_DEBUG, "%@ face-%.3f|%dpx(%dpx), torso-%.3fx%.3f|%dpx(%dpx)", buf, 0x42u);
            }

            v53 = _smallFaceWarningThreshold;
            v54 = v46 != 0.0 && v46 < v53;
            if (v54 || (v47 != 0.0 ? (v55 = v47 < v53) : (v55 = 0), v55))
            {
              [v81 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ImageTooSmall"];
              [v32 setAlgorithmVersion:14];
            }
          }

          v26 = [obj countByEnumeratingWithState:&v83 objects:v105 count:16];
        }

        while (v26);
      }

      v56 = [v81 objectForKeyedSubscript:@"ImageTooSmall"];
      bOOLValue2 = [v56 BOOLValue];

      if (bOOLValue2)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier3 = [assetCopy localIdentifier];
          *buf = 138412290;
          widthCopy = localIdentifier3;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Resource size is too small", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier4 = [assetCopy localIdentifier];
        *buf = 138412290;
        widthCopy = localIdentifier4;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Resource size is good", buf, 0xCu);
      }

      v60 = [v81 objectForKeyedSubscript:@"ImageTooSmall"];
      bOOLValue3 = [v60 BOOLValue];

      if (bOOLValue != bOOLValue3 && MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier5 = [assetCopy localIdentifier];
        *buf = 138412290;
        widthCopy = localIdentifier5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][FC][SmallFace][asset-%@] Invert decision", buf, 0xCu);
      }

      v20 = v68;
    }

    if (v20)
    {
      [v81 setObject:v20 forKeyedSubscript:@"FaceResults"];
    }
  }

  else if (v77)
  {
    v87 = @"FacesToPersist";
    v88 = v77;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    [v81 setObject:? forKeyedSubscript:?];
  }

  v63 = VCPSignPostLog(v17);
  v64 = v63;
  if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v64, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerVerifyAndMergeFaces", "", buf, 2u);
  }

  if (bestResourceCopy)
  {
    [v81 removeObjectForKey:@"ImageTooSmall"];
  }

  v65 = v81;
  *analysis = v81;

  return 0;
}

- (int)_loadImageRequestHandler:(id *)handler orientation:(unsigned int *)orientation bufferWidth:(int *)width bufferHeight:(int *)height withResource:(id)resource resourceURL:(id)l andAsset:(id)asset
{
  v67 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  lCopy = l;
  assetCopy = asset;
  v56 = assetCopy;
  *handler = 0;
  if (orientation)
  {
    *orientation = 0;
  }

  if (width)
  {
    *width = 0;
  }

  if (height)
  {
    *height = 0;
  }

  v16 = VCPSignPostLog(assetCopy);
  v17 = os_signpost_id_generate(v16);

  v19 = VCPSignPostLog(v18);
  v20 = v19;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPFaceProcessingFastPathDecodeAsset", "", buf, 2u);
  }

  if (![objc_opt_class() _downsampleBeforeFaceProcessing] || (objc_msgSend(v56, "vcp_isPano") & 1) != 0)
  {
    v21 = 0;
    goto LABEL_13;
  }

  pixelWidth = [resourceCopy pixelWidth];
  pixelHeight = [resourceCopy pixelHeight];
  v46 = pixelHeight;
  if (pixelWidth && pixelHeight)
  {
    goto LABEL_49;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    spida = [v56 localIdentifier];
    type = [resourceCopy type];
    *buf = 138413058;
    v60 = spida;
    v61 = 1024;
    v62 = type;
    v63 = 1024;
    v64 = pixelWidth;
    v65 = 1024;
    v66 = v46;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer][%@] Resource (%d) has invalid dimensions (%dx%d); falling back to asset", buf, 0x1Eu);
  }

  pixelWidth = [v56 pixelWidth];
  pixelHeight2 = [v56 pixelHeight];
  v46 = pixelHeight2;
  if (pixelWidth)
  {
    if (pixelHeight2)
    {
LABEL_49:
      v21 = [v56 vcp_targetMajorDimensionForImageWithWidth:pixelWidth height:v46 andMinPreferredMinorDimension:1210];
LABEL_13:
      v58 = 0;
      v22 = +[VCPImageManager sharedImageManager];
      pixelBuffer = [v22 pixelBufferWithFormat:875704422 andMaxDimension:v21 fromImageURL:lCopy flushCache:0 orientation:&v58];

      v24 = VCPSignPostLog(v23);
      v25 = v24;
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v17, "VCPFaceProcessingFastPathDecodeAsset", "", buf, 2u);
      }

      if (pixelBuffer)
      {
        if (v58 - 9 > 0xFFFFFFF7)
        {
          v30 = VCPSignPostLog(v26);
          spid = os_signpost_id_generate(v30);

          v32 = VCPSignPostLog(v31);
          v33 = v32;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerLoadImageRequestHandler", "", buf, 2u);
          }

          v34 = objc_alloc(MEMORY[0x1E69845B8]);
          v35 = v58;
          getObject = [(VCPObjectPool *)self->_sessionPool getObject];
          object = [getObject object];
          *handler = [v34 initWithCVPixelBuffer:pixelBuffer orientation:v35 options:MEMORY[0x1E695E0F8] session:object];

          v39 = VCPSignPostLog(v38);
          v40 = v39;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerLoadImageRequestHandler", "", buf, 2u);
          }

          if (*handler)
          {
            Width = CVPixelBufferGetWidth(pixelBuffer);
            Height = CVPixelBufferGetHeight(pixelBuffer);
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              localIdentifier = [v56 localIdentifier];
              *buf = 138413058;
              v60 = localIdentifier;
              v61 = 1024;
              v62 = Width;
              v63 = 1024;
              v64 = Height;
              v65 = 1024;
              v66 = v58;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][%@] Loaded local resource (%dx%d orientation:%d)", buf, 0x1Eu);
            }

            if (orientation)
            {
              *orientation = v58;
            }

            if (width)
            {
              *width = Width;
            }

            v28 = 0;
            if (height)
            {
              *height = Height;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              localIdentifier2 = [v56 localIdentifier];
              *buf = 138412290;
              v60 = localIdentifier2;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to create VNImageRequestHandler", buf, 0xCu);
            }

            v28 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            localIdentifier3 = [v56 localIdentifier];
            *buf = 138412546;
            v60 = localIdentifier3;
            v61 = 1024;
            v62 = v58;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to decode orientation (%d)", buf, 0x12u);
          }

          v28 = -50;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier4 = [v56 localIdentifier];
          *buf = 138412290;
          v60 = localIdentifier4;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to decode image", buf, 0xCu);
        }

        v28 = -23802;
      }

      CF<__CVBuffer *>::~CF(&pixelBuffer);
      goto LABEL_55;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier5 = [v56 localIdentifier];
    *buf = 138412802;
    v60 = localIdentifier5;
    v61 = 1024;
    v62 = pixelWidth;
    v63 = 1024;
    v64 = v46;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Invalid dimensions (%dx%d)", buf, 0x18u);
  }

  v28 = -23802;
LABEL_55:

  return v28;
}

- (int)analyzeAsset:(id)asset withResource:(id)resource resourceURL:(id)l isBestResource:(BOOL)bestResource quickMode:(BOOL)mode results:(id *)results
{
  modeCopy = mode;
  bestResourceCopy = bestResource;
  v62 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resourceCopy = resource;
  *results = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v16 = [(VCPFaceAnalyzer *)self _loadImageRequestHandler:&v51 orientation:&v53 + 4 bufferWidth:&v53 bufferHeight:&v52 withResource:resourceCopy resourceURL:l andAsset:assetCopy];
  v17 = v51;
  v18 = v17;
  if (v16)
  {
    if (!self->_errorCode)
    {
      v19 = xmmword_1C9F62C20;
LABEL_30:
      *&self->_errorCode = v19;
    }
  }

  else
  {
    v20 = VCPSignPostLog(v17);
    v21 = os_signpost_id_generate(v20);

    v23 = VCPSignPostLog(v22);
    v24 = v23;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "VCPFaceAnalyzerPerformAnalysis", "", buf, 2u);
    }

    v25 = -[VCPFaceAnalyzer _performAnalysis:withRequestHandler:quickMode:sourceWidth:sourceHeight:](self, "_performAnalysis:withRequestHandler:quickMode:sourceWidth:sourceHeight:", results, v18, modeCopy, [assetCopy pixelWidth], objc_msgSend(assetCopy, "pixelHeight"));
    v16 = v25;
    if (v25)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [assetCopy localIdentifier];
        *buf = 138412290;
        v55 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to analyze resource", buf, 0xCu);
      }

      if (!self->_errorCode)
      {
        v19 = xmmword_1C9F62C30;
        goto LABEL_30;
      }
    }

    else
    {
      v27 = VCPSignPostLog(v25);
      v28 = v27;
      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v21, "VCPFaceAnalyzerPerformAnalysis", "", buf, 2u);
      }

      v30 = VCPSignPostLog(v29);
      v31 = os_signpost_id_generate(v30);

      v33 = VCPSignPostLog(v32);
      v34 = v33;
      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VCPFaceAnalyzerRefineAnalysis", "", buf, 2u);
      }

      v35 = [*results objectForKeyedSubscript:@"FaceResults"];
      v50 = [v35 count];

      v36 = v52;
      if (HIDWORD(v53) <= 4)
      {
        v37 = v53;
      }

      else
      {
        v37 = v52;
      }

      if (HIDWORD(v53) > 4)
      {
        v36 = v53;
      }

      v38 = [(VCPFaceAnalyzer *)self _refineAnalysis:results requestHandler:v18 forAsset:assetCopy resource:resourceCopy isBestResource:bestResourceCopy orientedWidth:v37 orientedHeight:v36];
      v16 = v38;
      if (v38)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier2 = [assetCopy localIdentifier];
          *buf = 138412290;
          v55 = localIdentifier2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Failed to refine analysis", buf, 0xCu);
        }

        if (!self->_errorCode)
        {
          v19 = xmmword_1C9F62C40;
          goto LABEL_30;
        }
      }

      else
      {
        v41 = VCPSignPostLog(v38);
        v42 = v41;
        if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_END, v31, "VCPFaceAnalyzerRefineAnalysis", "", buf, 2u);
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier3 = [assetCopy localIdentifier];
          v44 = [*results objectForKeyedSubscript:@"FaceResults"];
          v45 = [v44 objectForKeyedSubscript:@"FacesToPersist"];
          v46 = [v45 count];
          v47 = [*results objectForKeyedSubscript:@"FaceResults"];
          v48 = [v47 objectForKeyedSubscript:@"FacesToDelete"];
          v49 = [v48 count];
          *buf = 138413058;
          v55 = localIdentifier3;
          v56 = 2048;
          v57 = v50;
          v58 = 2048;
          v59 = v46;
          v60 = 2048;
          v61 = v49;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][%@] Face refine completed: detected %lu | persist: %lu | delete: %lu", buf, 0x2Au);
        }

        v16 = 0;
      }
    }
  }

  return v16;
}

- (int)quickAnalyzeAsset:(id)asset results:(id *)results
{
  v20 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v7 = [VCPFaceUtils preferredResourcesForFaceProcessingWithAsset:assetCopy];
  v8 = [VCPFaceUtils resourceForFaceProcessing:v7 allowStreaming:0];
  privateFileURL = [v8 privateFileURL];
  if (v8 && ([MEMORY[0x1E696AC08] defaultManager], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(privateFileURL, "path"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "fileExistsAtPath:", v11), v11, v10, (v12 & 1) != 0))
  {
    results = [(VCPFaceAnalyzer *)self analyzeAsset:assetCopy withResource:v8 resourceURL:privateFileURL isBestResource:[VCPFaceUtils isBestResourceForFaceProcessing:v7 fromResources:?], 1, results];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [assetCopy localIdentifier];
      v16 = 138412546;
      v17 = localIdentifier;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Missing local resource %@", &v16, 0x16u);
    }

    results = -18;
  }

  return results;
}

- (int)quickAnalyzeCVPixelBuffer:(__CVBuffer *)buffer results:(id *)results
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = VCPSignPostLog(self);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v32[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPFaceAnalyzerLoadImageRequestHandlerPixelBuffer", "", v32, 2u);
  }

  v12 = objc_alloc(MEMORY[0x1E69845B8]);
  getObject = [(VCPObjectPool *)self->_sessionPool getObject];
  object = [getObject object];
  v15 = [v12 initWithCVPixelBuffer:buffer options:MEMORY[0x1E695E0F8] session:object];

  v17 = VCPSignPostLog(v16);
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v32[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_END, v8, "VCPFaceAnalyzerLoadImageRequestHandlerPixelBuffer", "", v32, 2u);
  }

  if (v15)
  {
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v21 = MediaAnalysisLogLevel();
    if (v21 >= 7)
    {
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        v32[0] = 67109376;
        v32[1] = Width;
        v33 = 1024;
        v34 = Height;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer][PixelBuffer] Loaded pixelBuffer(%d x %d)", v32, 0xEu);
      }
    }

    v22 = VCPSignPostLog(v21);
    v23 = os_signpost_id_generate(v22);

    v25 = VCPSignPostLog(v24);
    v26 = v25;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      LOWORD(v32[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VCPFaceAnalyzerPerformAnalysisPixelBuffer", "", v32, 2u);
    }

    v27 = [(VCPFaceAnalyzer *)self _performAnalysis:results withRequestHandler:v15 quickMode:1 sourceWidth:Width sourceHeight:Height];
    v28 = v27;
    if (v27)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v32[0]) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][PixelBuffer] Failed to analyze resource", v32, 2u);
      }
    }

    else
    {
      v29 = VCPSignPostLog(v27);
      v30 = v29;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        LOWORD(v32[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v23, "VCPFaceAnalyzerPerformAnalysisPixelBuffer", "", v32, 2u);
      }

      v28 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32[0]) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][PixelBuffer] Failed to create VNImageRequestHandler", v32, 2u);
    }

    v28 = -18;
  }

  return v28;
}

- (int)updateMissingFaceprintForFaces:(id)faces withAsset:(id)asset
{
  v138 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  assetCopy = asset;
  v96 = facesCopy;
  if ([facesCopy count])
  {
    v7 = objc_opt_class();
    v8 = VCPMAGetRevisionForVisionModel(v7, self->_processingVersion);
    selfCopy = self;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v9 = facesCopy;
    v10 = [v9 countByEnumeratingWithState:&v116 objects:v137 count:16];
    if (v10)
    {
      v11 = *v117;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v117 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v116 + 1) + 8 * i);
          imageprintWrapper = [v13 imageprintWrapper];
          v15 = imageprintWrapper == 0;

          if (v15)
          {
            [v13 centerX];
            v17 = v16;
            [v13 centerY];
            v19 = v18;
            [v13 size];
            +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v17, v19, v20, [v13 sourceWidth], objc_msgSend(v13, "sourceHeight"));
            v22 = v21;
            v24 = v23;
            v26 = v25;
            v28 = v27;
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              [v13 centerX];
              v30 = v29;
              [v13 centerY];
              v32 = v31;
              [v13 size];
              *buf = 134219520;
              v124 = v30;
              v125 = 2048;
              v126 = v32;
              v127 = 2048;
              v128 = v33;
              v129 = 2048;
              v130 = v22;
              v131 = 2048;
              v132 = v24;
              v133 = 2048;
              v134 = v26;
              v135 = 2048;
              v136 = v28;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] face (center-x:%.2f, center-y:%.2f, size:%.2f) -> boundingBox (x:%.2f, y:%.2f, width:%.2f, height:%.2f)", buf, 0x48u);
            }

            v34 = [MEMORY[0x1E6984518] observationWithRequestRevision:v8 boundingBox:{v22, v24, v26, v28}];
            if (v34)
            {
              localIdentifier = [v13 localIdentifier];
              [dictionary setObject:v34 forKeyedSubscript:localIdentifier];
            }

            else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              [v13 gist];
              v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412290;
              v124 = v36;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Failed to generate VNFaceObservation from face %@", buf, 0xCu);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v116 objects:v137 count:16];
      }

      while (v10);
    }

    if (![dictionary count])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] All faces contain valid faceprint", buf, 2u);
      }

      v41 = 0;
      goto LABEL_98;
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v37 = COERCE_DOUBLE([dictionary count]);
      *buf = 134217984;
      v124 = v37;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] Updating %lu faces with missing faceprint", buf, 0xCu);
    }

    v92 = [VCPFaceUtils resourceForFaceProcessingWithAsset:assetCopy allowStreaming:0];
    privateFileURL = [v92 privateFileURL];
    if (!v92 || ([MEMORY[0x1E696AC08] defaultManager], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(privateFileURL, "path"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v38, "fileExistsAtPath:", v39), v39, v38, (v40 & 1) == 0))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [assetCopy localIdentifier];
        v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138412546;
        v124 = v42;
        v125 = 2112;
        v126 = v92;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Missing local resource %@", buf, 0x16u);
      }

      v41 = -18;
      goto LABEL_97;
    }

    v115 = 0;
    v41 = [(VCPFaceAnalyzer *)selfCopy _loadImageRequestHandler:&v115 orientation:0 bufferWidth:0 bufferHeight:0 withResource:v92 resourceURL:privateFileURL andAsset:assetCopy];
    v91 = v115;
    if (v41)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to create VNImageRequestHandler for face quality analysis", buf, 2u);
      }

      goto LABEL_96;
    }

    v88 = mach_absolute_time();
    v43 = VCPSignPostLog(v88);
    spid = os_signpost_id_generate(v43);

    v45 = VCPSignPostLog(v44);
    v46 = v45;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerFillMissingFaceprint", "", buf, 2u);
    }

    v47 = objc_alloc_init(MEMORY[0x1E6984478]);
    v114 = v47;
    v41 = [VCPFaceUtils configureVNRequest:&v114 withClass:objc_opt_class() andProcessingVersion:selfCopy->_processingVersion];
    v90 = v114;

    if (v41)
    {
LABEL_95:

LABEL_96:
LABEL_97:

LABEL_98:
      goto LABEL_99;
    }

    allValues = [dictionary allValues];
    [v90 setInputFaceObservations:allValues];

    v122 = v90;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
    v113 = 0;
    v50 = [v91 performRequests:v49 error:&v113];
    v87 = v113;

    if (v50)
    {
      results = [v90 results];
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      obj = v9;
      v51 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
      if (v51)
      {
        v99 = *v110;
        do
        {
          v100 = v51;
          for (j = 0; j != v100; ++j)
          {
            if (*v110 != v99)
            {
              objc_enumerationMutation(obj);
            }

            type = *(*(&v109 + 1) + 8 * j);
            context = objc_autoreleasePoolPush();
            localIdentifier2 = [type localIdentifier];
            v54 = [dictionary objectForKeyedSubscript:localIdentifier2];

            if (v54)
            {
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v55 = results;
              v56 = [v55 countByEnumeratingWithState:&v105 objects:v120 count:16];
              if (v56)
              {
                v57 = *v106;
                while (2)
                {
                  for (k = 0; k != v56; ++k)
                  {
                    if (*v106 != v57)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v59 = *(*(&v105 + 1) + 8 * k);
                    uuid = [v54 uuid];
                    uuid2 = [v59 uuid];
                    v62 = [uuid isEqual:uuid2];

                    if (v62)
                    {
                      faceprint = [v59 faceprint];
                      v65 = faceprint;
                      if (faceprint)
                      {
                        [faceprint confidence];
                        if (v66 >= 0.2)
                        {
                          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                          {
                            [v65 confidence];
                            v72 = v71;
                            v73 = [v59 description];
                            [v59 faceJunkinessIndex];
                            *buf = 134218498;
                            v124 = v72;
                            v125 = 2112;
                            v126 = v73;
                            v127 = 2048;
                            v128 = v74;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] Accepting faceprint with confidence: %.3f %@ - junkinessIndex: %.3f", buf, 0x20u);
                          }

                          v75 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:v65 torsoprint:0];
                          v104 = 0;
                          v76 = [v75 serializeStateAndReturnError:&v104];
                          v77 = COERCE_DOUBLE(v104);
                          if (v76)
                          {
                            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                            {
                              [type gist];
                              v78 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                              *buf = 138412290;
                              v124 = v78;
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] Update faceprint for face %@", buf, 0xCu);
                            }

                            v79 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:selfCopy->_processingVersion andData:v76];
                            [type setImageprintWrapper:v79];

                            [type setVuObservationID:0];
                          }

                          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v124 = v77;
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Unable to serialize faceTorsoprint - %@", buf, 0xCu);
                          }
                        }

                        else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                        {
                          [v65 confidence];
                          v68 = v67;
                          [v59 description];
                          v69 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                          [v59 faceJunkinessIndex];
                          *buf = 134218754;
                          v124 = v68;
                          v125 = 2048;
                          v126 = 0x3FC99999A0000000;
                          v127 = 2112;
                          v128 = v69;
                          v129 = 2048;
                          v130 = v70;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] faceprint.confidence is too low (%.3f < %.3f) %@ - junkinessIndex: %.3f", buf, 0x2Au);
                        }
                      }

                      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v124 = *&v59;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] No valid faceprint from observation %@", buf, 0xCu);
                      }

                      goto LABEL_81;
                    }
                  }

                  v56 = [v55 countByEnumeratingWithState:&v105 objects:v120 count:16];
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }
              }

              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                [type gist];
                v63 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                *buf = 138412290;
                v124 = v63;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[FaceAnalyzer] Failed to get faceprint for face %@", buf, 0xCu);
              }
            }

LABEL_81:

            objc_autoreleasePoolPop(context);
          }

          v51 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
        }

        while (v51);
      }

      v81 = VCPSignPostLog(v80);
      v82 = v81;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v82, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerFillMissingFaceprint", "", buf, 2u);
      }

      if (v88)
      {
        v83 = mach_absolute_time();
        VCPPerformance_LogMeasurement("VCPFaceAnalyzerFillMissingFaceprint", v83 - v88);
      }

      v41 = 0;
    }

    else
    {
      v84 = v87;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = -18;
        goto LABEL_94;
      }

      [v87 description];
      v85 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v124 = v85;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Faceprint VNImageRequestHandler::performRequests: %@", buf, 0xCu);

      v41 = -18;
    }

    v84 = v87;
LABEL_94:

    goto LABEL_95;
  }

  v41 = 0;
LABEL_99:

  return v41;
}

- (int)analyzeFaceQuality:(id *)quality withAsset:(id)asset andCancelBlock:(id)block
{
  v132[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  blockCopy = block;
  v6 = objc_opt_class();
  v7 = VCPMAGetRevisionForVisionModel(v6, self->_processingVersion);
  v8 = objc_opt_class();
  if (VCPMAVNRequestSupportRevision(v8, v7) & 1) != 0 && (v93 = VCPMAGetRevisionForMediaAnalysisType(0x1000000000), v9 = objc_opt_class(), (VCPMAVNRequestSupportRevision(v9, v93)))
  {
    if ([assetCopy vcp_quickFaceClassificationDone])
    {
      photoLibrary = [assetCopy photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      v11 = *MEMORY[0x1E6978D70];
      v132[0] = *MEMORY[0x1E6978D80];
      v132[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
      [librarySpecificFetchOptions setFetchPropertySets:v12];

      v101 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
      if ([v101 count])
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v13 = 0;
        v14 = MEMORY[0x1E69E9C10];
        while (v13 < [v101 count])
        {
          v15 = [v101 objectAtIndexedSubscript:v13];
          [v15 centerX];
          v17 = v16;
          [v15 centerY];
          v19 = v18;
          [v15 size];
          +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v17, v19, v20, [v15 sourceWidth], objc_msgSend(v15, "sourceHeight"));
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [v15 centerX];
            v30 = v29;
            [v15 centerY];
            v32 = v31;
            [v15 size];
            *buf = 134219520;
            v117 = v30;
            v118 = 2048;
            v119 = v32;
            v120 = 2048;
            v121 = v33;
            v122 = 2048;
            v123 = v22;
            v124 = 2048;
            v125 = v24;
            v126 = 2048;
            v127 = v26;
            v128 = 2048;
            v129 = v28;
            _os_log_impl(&dword_1C9B70000, v14, OS_LOG_TYPE_DEBUG, "[FaceAnalyzer] face (center-x:%.2f, center-y:%.2f, size:%.2f) -> boundingBox (x:%.2f, y:%.2f, width:%.2f, height:%.2f)", buf, 0x48u);
          }

          v34 = [MEMORY[0x1E6984518] observationWithRequestRevision:v7 boundingBox:{v22, v24, v26, v28}];
          if (v34)
          {
            localIdentifier = [v15 localIdentifier];
            [dictionary setObject:v34 forKeyedSubscript:localIdentifier];
          }

          ++v13;
        }

        if ([dictionary count])
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v39 = [dictionary count];
            *buf = 134217984;
            v117 = v39;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer] Analyzing %lu face observations for face quality", buf, 0xCu);
          }

          v90 = [VCPFaceUtils resourceForFaceProcessingWithAsset:assetCopy allowStreaming:0];
          privateFileURL = [v90 privateFileURL];
          if (v90 && ([MEMORY[0x1E696AC08] defaultManager], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(privateFileURL, "path"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v40, "fileExistsAtPath:", v41), v41, v40, (v42 & 1) != 0))
          {
            v108 = 0;
            v36 = [(VCPFaceAnalyzer *)self _loadImageRequestHandler:&v108 orientation:0 bufferWidth:0 bufferHeight:0 withResource:v90 resourceURL:privateFileURL andAsset:assetCopy];
            v43 = v108;
            if (v36)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to create VNImageRequestHandler for face quality analysis", buf, 2u);
              }
            }

            else if (blockCopy && (blockCopy[2]() & 1) != 0)
            {
              v36 = -128;
            }

            else
            {
              v87 = v43;
              v84 = mach_absolute_time();
              v48 = VCPSignPostLog(v84);
              spid = os_signpost_id_generate(v48);

              v50 = VCPSignPostLog(v49);
              v51 = v50;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v51, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPFaceAnalyzerFaceQuality", "", buf, 2u);
              }

              v52 = objc_alloc_init(MEMORY[0x1E69844B0]);
              v107 = 0;
              v86 = v52;
              v53 = [v52 setRevision:v93 error:&v107];
              v54 = v107;
              if (v53)
              {
                [v52 setMetalContextPriority:1];
                v55 = [v52 setPreferBackgroundProcessing:1];
                if (DeviceHasANE(v55, v56))
                {
                  defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
                  [v52 setProcessingDevice:defaultANEDevice];
                }

                allValues = [dictionary allValues];
                [v52 setInputFaceObservations:allValues];

                v113 = v52;
                v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
                v106 = v54;
                v60 = [v87 performRequests:v59 error:&v106];
                v83 = v106;

                if (v60)
                {
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                  results = [v86 results];
                  for (i = 0; ; ++i)
                  {
                    v61 = [v101 count];
                    if (i >= v61)
                    {
                      break;
                    }

                    v62 = objc_autoreleasePoolPush();
                    v94 = [v101 objectAtIndexedSubscript:i];
                    localIdentifier2 = [v94 localIdentifier];
                    v64 = [dictionary objectForKeyedSubscript:localIdentifier2];

                    if (v64)
                    {
                      v104 = 0u;
                      v105 = 0u;
                      v102 = 0u;
                      v103 = 0u;
                      v65 = results;
                      v66 = [v65 countByEnumeratingWithState:&v102 objects:v112 count:16];
                      if (v66)
                      {
                        v67 = *v103;
                        while (2)
                        {
                          for (j = 0; j != v66; ++j)
                          {
                            if (*v103 != v67)
                            {
                              objc_enumerationMutation(v65);
                            }

                            v69 = *(*(&v102 + 1) + 8 * j);
                            uuid = [v64 uuid];
                            uuid2 = [v69 uuid];
                            v72 = [uuid isEqual:uuid2];

                            if (v72)
                            {
                              faceCaptureQuality = [v69 faceCaptureQuality];
                              v74 = faceCaptureQuality == 0;

                              if (v74)
                              {
                                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                                {
                                  localIdentifier3 = [assetCopy localIdentifier];
                                  localIdentifier4 = [v94 localIdentifier];
                                  *buf = 138412546;
                                  v117 = localIdentifier3;
                                  v118 = 2112;
                                  v119 = localIdentifier4;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@][%@] No valid Face Quality score; skipping", buf, 0x16u);
                                }
                              }

                              else
                              {
                                faceCaptureQuality2 = [v69 faceCaptureQuality];
                                localIdentifier5 = [v94 localIdentifier];
                                [dictionary2 setObject:faceCaptureQuality2 forKeyedSubscript:localIdentifier5];
                              }

                              goto LABEL_68;
                            }
                          }

                          v66 = [v65 countByEnumeratingWithState:&v102 objects:v112 count:16];
                          if (v66)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_68:
                    }

                    objc_autoreleasePoolPop(v62);
                  }

                  v79 = VCPSignPostLog(v61);
                  v80 = v79;
                  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v80, OS_SIGNPOST_INTERVAL_END, spid, "VCPFaceAnalyzerFaceQuality", "", buf, 2u);
                  }

                  if (v84)
                  {
                    v81 = mach_absolute_time();
                    VCPPerformance_LogMeasurement("VCPFaceAnalyzerFaceQuality", v81 - v84);
                  }

                  v109 = dictionary2;
                  v110 = @"FaceQualityResults";
                  v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
                  v111 = v82;
                  *quality = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];

                  v36 = 0;
                  v54 = v83;
                  v52 = v86;
                }

                else
                {
                  v52 = v86;
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v117 = v83;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to perform Face Quality request - %@", buf, 0xCu);
                  }

                  v36 = -18;
                  v54 = v83;
                }
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v117 = v93;
                  v118 = 2112;
                  v119 = v54;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer] Failed to set Face Quality revision (%lu) - %@", buf, 0x16u);
                }

                v36 = -18;
              }

              v43 = v87;
            }
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              localIdentifier6 = [assetCopy localIdentifier];
              *buf = 138412546;
              v117 = localIdentifier6;
              v118 = 2112;
              v119 = v90;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[FaceAnalyzer][%@] Missing local resource %@", buf, 0x16u);
            }

            v36 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            localIdentifier7 = [assetCopy localIdentifier];
            v47 = [v101 count];
            *buf = 138412546;
            v117 = localIdentifier7;
            v118 = 2048;
            v119 = v47;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer][%@] No valid face observations from %lu faces; skip face quality analysis", buf, 0x16u);
          }

          v114 = @"FaceQualityResults";
          v115 = MEMORY[0x1E695E0F0];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
          *quality = v36 = 0;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          localIdentifier8 = [assetCopy localIdentifier];
          *buf = 138412290;
          v117 = localIdentifier8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer][%@] No face detected; skip face quality analysis", buf, 0xCu);
        }

        v130 = @"FaceQualityResults";
        v131 = MEMORY[0x1E695E0F0];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        *quality = v36 = 0;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        localIdentifier9 = [assetCopy localIdentifier];
        *buf = 138412290;
        v117 = localIdentifier9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceAnalyzer][%@] No face detected; skip face quality analysis", buf, 0xCu);
      }

      v36 = 0;
    }
  }

  else
  {
    v36 = -50;
  }

  return v36;
}

@end