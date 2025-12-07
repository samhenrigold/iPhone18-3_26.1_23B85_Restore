@interface SCMLVideoFrameProcessor
- (BOOL)addFrameBuffer:(opaqueCMSampleBuffer *)buffer;
- (SCMLVideoFrameProcessor)initWithImageAnalyzer:(id)analyzer;
- (id)analyze:(id *)analyze;
- (id)finalizeAnalysis:(id *)analysis;
- (id)popFrame;
- (void)dealloc;
- (void)outputDebugInfoForFrame:(id)frame isSensitive:(BOOL)sensitive sensitivityScore:(id)score;
- (void)pushFrame:(id)frame;
- (void)reset;
- (void)startAnalysisWithConfig:(id)config;
@end

@implementation SCMLVideoFrameProcessor

- (SCMLVideoFrameProcessor)initWithImageAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  v14.receiver = self;
  v14.super_class = SCMLVideoFrameProcessor;
  v6 = [(SCMLVideoFrameProcessor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageAnalyzer, analyzer);
    array = [MEMORY[0x1E695DF70] array];
    frameQueue = v7->_frameQueue;
    v7->_frameQueue = array;

    v10 = +[SCMLVideoAnalysisConfiguration defaultConfig];
    config = v7->_config;
    v7->_config = v10;

    v12 = v7->_result;
    v7->_result = 0;

    v7->_frameCount = 0;
    v7->_sensitiveFrameCount = 0;
  }

  return v7;
}

- (void)dealloc
{
  frameQueue = [(SCMLVideoFrameProcessor *)self frameQueue];
  [frameQueue removeAllObjects];

  v4.receiver = self;
  v4.super_class = SCMLVideoFrameProcessor;
  [(SCMLVideoFrameProcessor *)&v4 dealloc];
}

- (void)reset
{
  frameQueue = [(SCMLVideoFrameProcessor *)self frameQueue];
  [frameQueue removeAllObjects];

  [(SCMLVideoFrameProcessor *)self setFrameCount:0];
  [(SCMLVideoFrameProcessor *)self setSensitiveFrameCount:0];

  [(SCMLVideoFrameProcessor *)self setResult:0];
}

- (id)popFrame
{
  frameQueue = [(SCMLVideoFrameProcessor *)self frameQueue];
  v4 = [frameQueue count];

  if (v4)
  {
    frameQueue2 = [(SCMLVideoFrameProcessor *)self frameQueue];
    v4 = [frameQueue2 objectAtIndexedSubscript:0];

    frameQueue3 = [(SCMLVideoFrameProcessor *)self frameQueue];
    [frameQueue3 removeObjectAtIndex:0];
  }

  return v4;
}

- (void)pushFrame:(id)frame
{
  frameCopy = frame;
  [(NSMutableArray *)self->_frameQueue addObject:?];
  [(SCMLVideoFrameProcessor *)self setFrameCount:[(SCMLVideoFrameProcessor *)self frameCount]+ 1];
}

- (void)startAnalysisWithConfig:(id)config
{
  configCopy = config;
  [(SCMLVideoFrameProcessor *)self reset];
  v4 = configCopy;
  if (!configCopy)
  {
    v4 = +[SCMLVideoAnalysisConfiguration defaultConfig];
  }

  v6 = v4;
  [(SCMLVideoFrameProcessor *)self setConfig:?];
}

- (BOOL)addFrameBuffer:(opaqueCMSampleBuffer *)buffer
{
  if (buffer)
  {
    v5 = [[SCMLVideoFrame alloc] initWithFrameBuffer:buffer frameIndex:[(SCMLVideoFrameProcessor *)self frameCount]];
    [(SCMLVideoFrameProcessor *)self pushFrame:v5];
  }

  return buffer != 0;
}

- (void)outputDebugInfoForFrame:(id)frame isSensitive:(BOOL)sensitive sensitivityScore:(id)score
{
  sensitiveCopy = sensitive;
  v34 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  scoreCopy = score;
  v9 = +[SCMLLog videoAnalyzer];
  config = [(SCMLVideoFrameProcessor *)self config];
  debugFramesOutputPathPrefix = [config debugFramesOutputPathPrefix];

  if (debugFramesOutputPathPrefix)
  {
    metaDataInfo = [frameCopy metaDataInfo];
    v13 = v9;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      [scoreCopy doubleValue];
      if (sensitiveCopy)
      {
        v15 = "Y";
      }

      else
      {
        v15 = "N";
      }

      *buf = 138412802;
      v29 = metaDataInfo;
      v30 = 2080;
      v31 = v15;
      v32 = 2048;
      v33 = v14;
      _os_log_impl(&dword_1B8A3C000, v13, OS_LOG_TYPE_INFO, "Frame %@ sensitive=%s score=%.4f", buf, 0x20u);
    }

    v16 = scoreCopy;
    v17 = MEMORY[0x1E696AEC0];
    config2 = [(SCMLVideoFrameProcessor *)self config];
    debugFramesOutputPathPrefix2 = [config2 debugFramesOutputPathPrefix];
    [v16 doubleValue];
    if (sensitiveCopy)
    {
      v21 = "Y";
    }

    else
    {
      v21 = "N";
    }

    v22 = [v17 stringWithFormat:@"%@%@-%s-%.4f.png", debugFramesOutputPathPrefix2, metaDataInfo, v21, v20];

    scoreCopy = v16;
    v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v22 isDirectory:0];
    [frameCopy saveToPngWithUrl:v23];

LABEL_13:
    goto LABEL_14;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    metaDataInfo = v9;
    if (os_log_type_enabled(metaDataInfo, OS_LOG_TYPE_DEBUG))
    {
      metaDataInfo2 = [frameCopy metaDataInfo];
      [scoreCopy doubleValue];
      v26 = "N";
      *buf = 138412802;
      v29 = metaDataInfo2;
      if (sensitiveCopy)
      {
        v26 = "Y";
      }

      v30 = 2080;
      v31 = v26;
      v32 = 2048;
      v33 = v25;
      _os_log_debug_impl(&dword_1B8A3C000, metaDataInfo, OS_LOG_TYPE_DEBUG, "Frame %@ sensitive=%s score=%.4f", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)analyze:(id *)analyze
{
  v47 = *MEMORY[0x1E69E9840];
  result = [(SCMLVideoFrameProcessor *)self result];
  sensitiveExplicit = [result sensitiveExplicit];

  result2 = [(SCMLVideoFrameProcessor *)self result];
  result4 = result2;
  if ((sensitiveExplicit & 1) == 0)
  {
    sensitivityScoreExplicit = [result2 sensitivityScoreExplicit];

    selfCopy2 = self;
    result3 = [(SCMLVideoFrameProcessor *)self result];
    scoresForLabels = [result3 scoresForLabels];
    dictionary = [scoresForLabels mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = 0;
    while (1)
    {
      sensitiveFrameCount = [(SCMLVideoFrameProcessor *)selfCopy2 sensitiveFrameCount];
      config = [(SCMLVideoFrameProcessor *)selfCopy2 config];
      if (sensitiveFrameCount >= [config sensitiveFrameCountThreshold])
      {

        v39 = v11;
        goto LABEL_25;
      }

      popFrame = [(SCMLVideoFrameProcessor *)selfCopy2 popFrame];

      if (!popFrame)
      {
        break;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer([popFrame frameBuffer]);
      imageAnalyzer = [(SCMLVideoFrameProcessor *)self imageAnalyzer];
      v16 = [imageAnalyzer generateClassificationScoresForPixelBuffer:ImageBuffer error:analyze];

      imageAnalyzer2 = [(SCMLVideoFrameProcessor *)self imageAnalyzer];
      v45 = &unk_1F37519D8;
      v18 = [imageAnalyzer2 isSensitive:v16 sensitivityScore:&v45 classificationMode:0];
      v19 = v45;

      [(SCMLVideoFrameProcessor *)self outputDebugInfoForFrame:popFrame isSensitive:v18 sensitivityScore:v19];
      if (v18)
      {
        [(SCMLVideoFrameProcessor *)self setSensitiveFrameCount:[(SCMLVideoFrameProcessor *)self sensitiveFrameCount]+ 1];
      }

      v20 = sensitivityScoreExplicit;
      if (!sensitivityScoreExplicit || (v20 = sensitivityScoreExplicit, [v19 compare:sensitivityScoreExplicit] == 1))
      {
        v21 = v19;

        sensitivityScoreExplicit = v21;
      }

      v22 = [v16 objectForKeyedSubscript:SCMLHandlerImageClassificationScores[0]];
      v23 = [SCMLAnalysisResult obfuscateLabels:v22];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v25)
      {
        v26 = *v42;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v41 + 1) + 8 * i);
            v29 = [v24 objectForKeyedSubscript:v28];
            v30 = [dictionary objectForKeyedSubscript:v28];
            if (!v30 || [v29 compare:v30] == 1)
            {
              [dictionary setObject:v29 forKeyedSubscript:v28];
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v25);
      }

      v11 = popFrame;
      selfCopy2 = self;
    }

    v39 = 0;
LABEL_25:
    v31 = [SCMLVideoAnalysisResult alloc];
    sensitiveFrameCount2 = [(SCMLVideoFrameProcessor *)self sensitiveFrameCount];
    config2 = [(SCMLVideoFrameProcessor *)self config];
    v34 = -[SCMLAnalysisResult initWithSensitive:sensitivityScore:scoresForLabels:](v31, "initWithSensitive:sensitivityScore:scoresForLabels:", sensitiveFrameCount2 >= [config2 sensitiveFrameCountThreshold], sensitivityScoreExplicit, dictionary);
    [(SCMLVideoFrameProcessor *)self setResult:v34];

    result4 = [(SCMLVideoFrameProcessor *)self result];
  }

  return result4;
}

- (id)finalizeAnalysis:(id *)analysis
{
  result = [(SCMLVideoFrameProcessor *)self result];

  if (result)
  {
    result2 = [(SCMLVideoFrameProcessor *)self result];
    sensitiveExplicit = [result2 sensitiveExplicit];

    frameCount = [(SCMLVideoFrameProcessor *)self frameCount];
    config = [(SCMLVideoFrameProcessor *)self config];
    sensitiveFrameCountThreshold = [config sensitiveFrameCountThreshold];

    if (frameCount < sensitiveFrameCountThreshold)
    {
      frameCount2 = [(SCMLVideoFrameProcessor *)self frameCount];
      sensitiveExplicit = frameCount2 == [(SCMLVideoFrameProcessor *)self sensitiveFrameCount];
    }

    v11 = [SCMLVideoAnalysisResult alloc];
    result3 = [(SCMLVideoFrameProcessor *)self result];
    sensitivityScoreExplicit = [result3 sensitivityScoreExplicit];
    result4 = [(SCMLVideoFrameProcessor *)self result];
    scoresForLabels = [result4 scoresForLabels];
    v16 = [(SCMLAnalysisResult *)v11 initWithSensitive:sensitiveExplicit sensitivityScore:sensitivityScoreExplicit scoresForLabels:scoresForLabels];

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  [(SCMLVideoFrameProcessor *)self reset];

  return v17;
}

@end