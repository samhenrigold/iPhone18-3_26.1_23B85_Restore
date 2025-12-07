@interface VCPHandPoseImageRequest
- (BOOL)cleanupWithOptions:(id)options error:(id *)error;
- (BOOL)updateWithOptions:(id)options error:(id *)error;
- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error;
- (VCPHandPoseImageRequest)init;
- (VCPHandPoseImageRequest)initWithOptions:(id)options;
- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error;
- (int)parseResults:(id)results observations:(id)observations;
@end

@implementation VCPHandPoseImageRequest

- (VCPHandPoseImageRequest)init
{
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not implemented, please use initWithOptions", v4, 2u);
  }

  return 0;
}

- (VCPHandPoseImageRequest)initWithOptions:(id)options
{
  v41 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = VCPSignPostLog(optionsCopy);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPHandPoseImageRequest_initWithOptions", "", buf, 2u);
  }

  v34.receiver = self;
  v34.super_class = VCPHandPoseImageRequest;
  v9 = [(VCPRequest *)&v34 initWithOptions:optionsCopy];
  v11 = v9;
  v12 = &OBJC_IVAR___VCPMovieAssetWriter__livePhotoInfoQueue;
  if (v9)
  {
    width = v9->super._width;
    if (width < 1 || (height = v9->super._height, height < 1))
    {
      v32 = 0;
    }

    else
    {
      *&v10 = width / height;
      v32 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    }

    maxNumHands = v11->super._maxNumHands;
    if (maxNumHands <= 0)
    {
      maxNumHands = 6;
    }

    v11->super._maxNumHands = maxNumHands;
    if (v11->super._enableHandPoseLite)
    {
      v16 = @"hand_keypoint_detector_lite.espresso.net";
    }

    else
    {
      v16 = @"hand_keypoint_detector_acc_v2.espresso.net";
    }

    v17 = v16;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      revision = v11->super._revision;
      enableHandDetection = v11->super._enableHandDetection;
      *buf = 67109634;
      v36 = revision;
      v37 = 1024;
      v38 = enableHandDetection;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPHandPoseImageRequest options: _revision = %d, enable detection = %d, model name = %@", buf, 0x18u);
    }

    v20 = [VCPImageHandsAnalyzer alloc];
    LODWORD(v31) = v11->super._revision;
    HIDWORD(v29) = v11->super._width;
    LODWORD(v30) = v11->super._height;
    LOBYTE(v29) = v11->super._enableHandPoseLite;
    v21 = [(VCPImageHandsAnalyzer *)v20 initWithKeypointsOption:v11->super._maxNumHands forceCPU:v11->super._useCPUOnly sharedModel:0 enableHandDetection:v11->super._enableHandDetection enableANSTHandDetection:v11->super._enableANSTHandDetection enableRejectHandsNearBoundaries:v11->super._enableRejectHandsNearBoundaries enableHandObject:v29 sourceWidth:v30 sourceHeight:v17 modelName:v31 revision:optionsCopy options:?];
    analyzer = v11->_analyzer;
    v11->_analyzer = v21;

    v23 = v11->_analyzer;
    if (v23)
    {
      [(VCPImageHandsAnalyzer *)v23 setOptimizeForDistance:v11->super._optimizeForDistance];
      [(VCPImageHandsAnalyzer *)v11->_analyzer preferredInputFormat:&v11->_preferredWidth height:&v11->_preferredHeight format:&v11->_preferredFormat];
    }

    v12 = &OBJC_IVAR___VCPMovieAssetWriter__livePhotoInfoQueue;
  }

  v24 = VCPSignPostLog(v9);
  v25 = v24;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v5, "VCPHandPoseImageRequest_initWithOptions", "", buf, 2u);
  }

  if (*(&v11->super.super.isa + v12[962]))
  {
    v26 = v11;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  return v27;
}

- (int)parseResults:(id)results observations:(id)observations
{
  v52 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v38 = resultsCopy;
  observationsCopy = observations;
  if (observationsCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = resultsCopy;
    v33 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v33)
    {
      v34 = *v47;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v46 + 1) + 8 * i);
          v7 = [v37 objectForKeyedSubscript:@"attributes"];
          v40 = [v7 objectForKeyedSubscript:@"handsKeypoints"];

          if ([v40 count] != 21)
          {
LABEL_29:

            v31 = -18;
            goto LABEL_31;
          }

          v8 = objc_alloc_init(VCPHandObservation);
          array = [MEMORY[0x1E695DF70] array];
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = v40;
          v10 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v10)
          {
            v11 = *v43;
            while (2)
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v43 != v11)
                {
                  objc_enumerationMutation(v41);
                }

                v13 = *(*(&v42 + 1) + 8 * j);
                if ([v13 count] != 4)
                {

                  goto LABEL_29;
                }

                v14 = objc_alloc_init(VCPKeypoint);
                v15 = [v13 objectAtIndexedSubscript:0];
                [v15 floatValue];
                v17 = v16;
                v18 = [v13 objectAtIndexedSubscript:1];
                [v18 floatValue];
                [(VCPKeypoint *)v14 setLocation:v17, v19];

                v20 = [v13 objectAtIndexedSubscript:2];
                [v20 floatValue];
                [(VCPKeypoint *)v14 setConfidence:?];

                [array addObject:v14];
                if (self->super._revision == 2 && ![(VCPHandObservation *)v8 chirality])
                {
                  v21 = [v13 objectAtIndexedSubscript:3];
                  -[VCPHandObservation setChirality:](v8, "setChirality:", [v21 intValue]);
                }

                else if ([(VCPHandObservation *)v8 chirality])
                {
                  [(VCPHandObservation *)v8 setChirality:0];
                }
              }

              v10 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          [(VCPHandObservation *)v8 setKeypoints:array];
          v22 = [v37 objectForKeyedSubscript:@"attributes"];
          v23 = [v22 objectForKeyedSubscript:@"handsGroupID"];
          -[VCPHandObservation setGroupID:](v8, "setGroupID:", [v23 intValue]);

          v24 = [v37 objectForKeyedSubscript:@"attributes"];
          v25 = [v24 objectForKeyedSubscript:@"handsTrackingID"];
          -[VCPHandObservation setHandID:](v8, "setHandID:", [v25 intValue]);

          v26 = [v37 objectForKeyedSubscript:@"attributes"];
          v27 = [v26 objectForKeyedSubscript:@"handsHoldObject"];
          [v27 floatValue];
          [(VCPHandObservation *)v8 setHoldObject:?];

          if (self->super._revision == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          [(VCPHandObservation *)v8 setRevision:v28];
          v29 = [v37 objectForKeyedSubscript:@"attributes"];
          v30 = [v29 objectForKeyedSubscript:@"handsBounds"];
          v53 = NSRectFromString(v30);
          [(VCPHandObservation *)v8 setBounds:v53.origin.x, v53.origin.y, v53.size.width, v53.size.height];

          [observationsCopy addObject:v8];
        }

        v31 = 0;
        v33 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_31:
  }

  else
  {
    v31 = -50;
  }

  return v31;
}

- (id)processImage:(__CVBuffer *)image withOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v8 = VCPSignPostLog(optionsCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = VCPSignPostLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPHandPoseImageRequest_processImage", "", buf, 2u);
  }

  v13 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"handObjects"];

  if (v13)
  {
    v14 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"handObjects"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSDictionary *)optionsCopy objectForKeyedSubscript:@"rotationInDegrees"];

  if (v15)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:getRotationInDegrees(optionsCopy)];
  }

  array = [MEMORY[0x1E695DF70] array];
  *buf = 0;
  analyzer = self->_analyzer;
  if (!analyzer)
  {
    v21 = 0;
    v19 = -18;
LABEL_18:
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v19 userInfo:0];
      *error = v27 = 0;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_21;
  }

  [(VCPImageHandsAnalyzer *)analyzer setHandObjects:v14];
  v18 = self->_analyzer;
  v31 = 0;
  v19 = [(VCPImageHandsAnalyzer *)v18 analyzePixelBuffer:image rotationInDegrees:v15 flags:buf results:&v31 cancel:&__block_literal_global_84];
  v20 = v31;
  v21 = v20;
  if (v19)
  {
    goto LABEL_18;
  }

  v22 = [v20 objectForKeyedSubscript:@"HandsResults"];

  if (v22)
  {
    v24 = [v21 objectForKeyedSubscript:@"HandsResults"];
    v19 = [(VCPHandPoseImageRequest *)self parseResults:v24 observations:array];

    if (v19)
    {
      goto LABEL_18;
    }
  }

  v25 = VCPSignPostLog(v23);
  v26 = v25;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v9, "VCPHandPoseImageRequest_processImage", "", v30, 2u);
  }

  v27 = array;
LABEL_21:

  return v27;
}

- (BOOL)updateWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  width = self->super._width;
  height = self->super._height;
  v16.receiver = self;
  v16.super_class = VCPHandPoseImageRequest;
  [(VCPRequest *)&v16 updateWithOptions:optionsCopy error:error];
  v9 = self->super._width;
  if (width == v9)
  {
    v10 = self->super._height;
    if (width < 1 || height == v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 < 1)
    {
LABEL_14:
      analyzer = self->_analyzer;
      v14 = [optionsCopy objectForKeyedSubscript:@"maxNumberHands"];
      [(VCPImageHandsAnalyzer *)analyzer updateMaxNumHands:v14];

      v12 = 1;
      goto LABEL_15;
    }

    v10 = self->super._height;
  }

  if (v10 < 1)
  {
    goto LABEL_14;
  }

  if (![VCPImageHandsAnalyzer updateModelForSourceWidth:"updateModelForSourceWidth:sourceHeight:" sourceHeight:?])
  {
    [(VCPImageHandsAnalyzer *)self->_analyzer preferredInputFormat:&self->_preferredWidth height:&self->_preferredHeight format:&self->_preferredFormat];
    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (CGSize)preferredInputSizeWithOptions:(id)options error:(id *)error
{
  preferredWidth = self->_preferredWidth;
  preferredHeight = self->_preferredHeight;
  result.height = preferredHeight;
  result.width = preferredWidth;
  return result;
}

- (BOOL)cleanupWithOptions:(id)options error:(id *)error
{
  analyzer = self->_analyzer;
  self->_analyzer = 0;

  return 1;
}

@end