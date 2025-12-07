@interface FKTextDetector
- (BOOL)disableMultithreading;
- (FKTextDetector)initWithDimensions:(CGSize)dimensions;
- (NSString)recognitionLanguage;
- (id)createFeaturesForROI:(CGRect)i originalSize:(CGSize)size lastID:(int64_t *)d;
- (id)createFeaturesForSessionScale:(int)scale roi:(CGRect)roi originalSize:(CGSize)size startID:(int64_t *)d;
- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer error:(id *)error;
- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer withRegionOfInterest:(CGRect)interest error:(id *)error;
- (unint64_t)getMemoryUsageOfLastOperation;
- (unsigned)isValidPixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error;
- (void)dealloc;
- (void)mergeFeature:(id)feature withArray:(id)array;
- (void)resetOptions;
- (void)resetTimers;
- (void)runRecognizerOnFeatures:(id)features roi:(CGRect)roi size:(CGSize)size lastID:(int64_t *)d;
- (void)setMergeSettings:(id)settings;
- (void)setMultiThreadingQueue:(id)queue;
- (void)setRecognitionLanguage:(id)language;
- (void)setRecognitionLanguages:(id)languages;
- (void)translatePropertiesToOptionsWithNumSessions:(int)sessions;
@end

@implementation FKTextDetector

- (BOOL)disableMultithreading
{
  if (disableMultithreading_onceToken != -1)
  {
    [FKTextDetector disableMultithreading];
  }

  return disableMultithreading_disableMultithreading;
}

void *__39__FKTextDetector_disableMultithreading__block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = [result BOOLValue];
  }

  disableMultithreading_disableMultithreading = result;
  return result;
}

- (void)setMultiThreadingQueue:(id)queue
{
  if ([(FKTextDetector *)self disableMultithreading])
  {
    queueCopy = 0;
  }

  else
  {
    queueCopy = queue;
  }

  self->_multiThreadingQueue = queueCopy;
}

- (NSString)recognitionLanguage
{
  recognitionLanguages = self->_recognitionLanguages;
  if (!recognitionLanguages || ![(NSArray *)recognitionLanguages count])
  {
    return 0;
  }

  v4 = self->_recognitionLanguages;

  return [(NSArray *)v4 objectAtIndexedSubscript:0];
}

- (void)setRecognitionLanguage:(id)language
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (language)
  {
    v4[0] = language;
    -[FKTextDetector setRecognitionLanguages:](self, "setRecognitionLanguages:", [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1]);
  }

  else
  {

    self->_recognitionLanguages = 0;
  }
}

- (void)setRecognitionLanguages:(id)languages
{
  v16 = *MEMORY[0x1E69E9840];

  self->_recognitionLanguages = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [languages countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(languages);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length])
          {
            [(NSArray *)array addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [languages countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if ([(NSArray *)array count])
    {
      self->_recognitionLanguages = array;
    }

    else
    {
    }
  }
}

- (FKTextDetector)initWithDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  v12.receiver = self;
  v12.super_class = FKTextDetector;
  v5 = [(FKTextDetector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(FKTextDetector *)v5 resetOptions];
    v7 = 0;
    if (width >= height)
    {
      v8 = height;
    }

    else
    {
      v8 = width;
    }

    do
    {
      v9 = v7 + 1;
      if ((v7 + 1) > 7)
      {
        break;
      }

      v10 = v8 >> v7++;
    }

    while (v10 > 64);
    if (createOrResetSessions(v6->_sessions, width, height, v9))
    {

      return 0;
    }
  }

  return v6;
}

- (void)resetOptions
{
  [(FKTextDetector *)self setThresholdingAlgorithm:4];
  [(FKTextDetector *)self setContrastLimit:48];
  [(FKTextDetector *)self setBinarizerLimit:128];
  [(FKTextDetector *)self setMinimumCharacterHeight:10];
  [(FKTextDetector *)self setDetectDiacritics:1];
  [(FKTextDetector *)self setEnableBinarizerFiltering:0];
  [(FKTextDetector *)self setReturnSubFeatures:0];
  [(FKTextDetector *)self setMergeSettings:0x800000000];
  [(FKTextDetector *)self setMinimizeFalseDetections:1];
  [(FKTextDetector *)self setRecognitionLanguages:0];
  if ([(FKTextDetector *)self disableMultithreading])
  {

    [(FKTextDetector *)self setMultiThreadingQueue:0];
  }

  else
  {
    v3 = dispatch_queue_create("com.apple.futhark.recognitionQueue", MEMORY[0x1E69E96A8]);
    [(FKTextDetector *)self setMultiThreadingQueue:v3];

    dispatch_release(v3);
  }
}

- (void)dealloc
{
  for (i = 8; i != 72; i += 8)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {
      FKSessionDestroy(v4);
      *(&self->super.isa + i) = 0;
    }
  }

  [(FKTextDetector *)self setMultiThreadingQueue:0];
  FKSessionDestroyRecognizer(&self->_recognizer->var0);
  [(FKTextDetector *)self setRecognitionLanguages:0];
  v5.receiver = self;
  v5.super_class = FKTextDetector;
  [(FKTextDetector *)&v5 dealloc];
}

- (void)setMergeSettings:(id)settings
{
  var1 = settings.var1;
  v4 = settings.var0 & ~(settings.var0 >> 31);
  if (v4 >= 7)
  {
    v4 = 7;
  }

  self->_mergeSettings.minScale = v4;
  if (v4 > settings.var1)
  {
    var1 = v4;
  }

  if (var1 >= 8)
  {
    var1 = 8;
  }

  self->_mergeSettings.maxScale = var1;
}

- (void)translatePropertiesToOptionsWithNumSessions:(int)sessions
{
  if ([(FKTextDetector *)self recognitionLanguage])
  {
    v5 = ![(NSString *)[(FKTextDetector *)self recognitionLanguage] isEqualToString:&stru_1F5C041F0];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  if (sessions >= 1)
  {
    v6 = 0;
    sessions = self->_sessions;
    v8 = v5 ^ 1;
    sessionsCopy = sessions;
    do
    {
      minimumCharacterHeight = [(FKTextDetector *)self minimumCharacterHeight];
      if (v6)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        v12 = minimumCharacterHeight <= 16 ? 16 : minimumCharacterHeight;
        if (*(*(&self->super.isa + v6) + 200))
        {
          minimumCharacterHeight = v12;
        }
      }

      sessions[v6]->var0 = minimumCharacterHeight;
      sessions[v6]->var3 = [(FKTextDetector *)self minimizeFalseDetections];
      sessions[v6]->var4 = [(FKTextDetector *)self minimizeFalseDetections];
      sessions[v6]->var5 = [(FKTextDetector *)self minimizeFalseDetections];
      sessions[v6]->var34 = [(FKTextDetector *)self colorSplits];
      recognitionLanguages = [(FKTextDetector *)self recognitionLanguages];
      if (recognitionLanguages)
      {
        v14 = recognitionLanguages;
        if ([(NSArray *)recognitionLanguages count])
        {
          v15 = 0;
          do
          {
            v16 = sessions[v6];
            if (v15)
            {
              FKRecognizeAddLanguage(v16, [-[NSArray objectAtIndexedSubscript:](v14 objectAtIndexedSubscript:{v15), "UTF8String"}]);
            }

            else
            {
              FKRecognizeSetLanguage(v16, [-[NSArray objectAtIndexedSubscript:](v14 objectAtIndexedSubscript:{0), "UTF8String"}]);
            }

            ++v15;
          }

          while ([(NSArray *)v14 count]> v15);
        }
      }

      ++v6;
    }

    while (v6 != sessionsCopy);
  }
}

- (id)createFeaturesForSessionScale:(int)scale roi:(CGRect)roi originalSize:(CGSize)size startID:(int64_t *)d
{
  v6 = *d;
  v21 = 0;
  v22 = v6;
  v7 = self->_sessions[scale];
  origin = self->_roi.origin;
  size = self->_size;
  v20 = origin;
  LODWORD(v21) = scale;
  if (!v7)
  {
    return MEMORY[0x1E695E0F0];
  }

  var31 = v7->var31;
  if (var31 != -1)
  {
    v12 = MEMORY[0x1E695DF70];
    goto LABEL_4;
  }

  if (![(FKTextDetector *)self createFeaturesForAllConcomps:size])
  {
    return MEMORY[0x1E695E0F0];
  }

  var31 = v7->var31;
  v12 = MEMORY[0x1E695DF70];
  if (var31 != -1)
  {
LABEL_4:
    v13 = 0;
    do
    {
      var31 = *(v7->var29 + 26 * var31);
      ++v13;
    }

    while (var31 != -1);
  }

  v14 = [v12 arrayWithCapacity:{size, v20, v21}];
  for (i = v7->var31; i != -1; i = *(v7->var29 + 26 * i))
  {
    [v14 addObject:{+[FKTextFeature featureFromSequenceIndex:session:scaling:createConcompFeatures:createDiacriticFeatures:featureID:](FKTextFeature, "featureFromSequenceIndex:session:scaling:createConcompFeatures:createDiacriticFeatures:featureID:", i, v7, &size, -[FKTextDetector returnSubFeatures](self, "returnSubFeatures"), -[FKTextDetector detectDiacritics](self, "detectDiacritics"), &v22)}];
  }

  if ([(FKTextDetector *)self createFeaturesForAllConcomps])
  {
    for (j = v7->var25; j != -1; j = *(v17 + 4))
    {
      v17 = v7->var22 + 100 * j;
      if ((*(v17 + 94) & 1) == 0)
      {
        [v14 addObject:{+[FKTextFeature featureFromConcompIndex:session:scaling:type:createDiacriticFeatures:featureID:](FKTextFeature, "featureFromConcompIndex:session:scaling:type:createDiacriticFeatures:featureID:")}];
      }
    }
  }

  *d = v22;
  return v14;
}

- (void)mergeFeature:(id)feature withArray:(id)array
{
  v4 = *(*(feature + 2) + 312);
  v5 = *(feature + 2);
  if (*(v4 + 104 * v5 + 60) > 79)
  {
    return;
  }

  if (![array count])
  {
    goto LABEL_35;
  }

  v65 = v4 + 104 * v5;
  v8 = 0;
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = [array objectAtIndexedSubscript:v8];
    v12 = *(*(v11 + 16) + 312);
    v13 = *(v11 + 8);
    type = [v11 type];
    if (v11 != feature && !type && *(v11 + 16) != *(feature + 2) && *(v65 + 92) == *(v12 + 104 * v13 + 92))
    {
      [feature boundingBox];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v11 boundingBox];
      v69.origin.x = v23;
      v69.origin.y = v24;
      v69.size.width = v25;
      v69.size.height = v26;
      v67.origin.x = v16;
      v67.origin.y = v18;
      v67.size.width = v20;
      v67.size.height = v22;
      if (CGRectIntersectsRect(v67, v69))
      {
        NumSharedConcomps = getNumSharedConcomps(feature, v11, v27, v28, v29, v30);
        if (NumSharedConcomps > v9)
        {
          v10 = v8;
          v9 = NumSharedConcomps;
        }
      }
    }

    ++v8;
  }

  while ([array count] > v8);
  if (v10 == -1)
  {
    goto LABEL_35;
  }

  v32 = [array objectAtIndexedSubscript:v10];
  v33 = *(*(v32 + 16) + 312);
  v34 = *(v32 + 8);
  [feature boundingBox];
  v36 = v35;
  [v32 boundingBox];
  v38 = v36 - v37;
  [v32 boundingBox];
  v40 = v38 / v39;
  v41 = v38 / v39 <= 0.1 || *(v65 + 44) - *(v33 + 104 * v34 + 44) <= 1;
  if (!v41 || v40 > -0.1 && *(v65 + 52) >= 24 && *(v65 + 60) >= 16)
  {
    v42 = [array count];
    if (v42 >= 1)
    {
      v43 = (v42 & 0x7FFFFFFF) + 1;
      do
      {
        v44 = [array objectAtIndexedSubscript:v43 - 2];
        v45 = *(*(v44 + 16) + 312);
        v46 = *(v44 + 8);
        type2 = [v44 type];
        if (v44 != feature && type2 == 0 && *(v44 + 16) != *(feature + 2) && *(v65 + 92) == *(v45 + 104 * v46 + 92))
        {
          [feature boundingBox];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;
          [v44 boundingBox];
          v70.origin.x = v57;
          v70.origin.y = v58;
          v70.size.width = v59;
          v70.size.height = v60;
          v68.origin.x = v50;
          v68.origin.y = v52;
          v68.size.width = v54;
          v68.size.height = v56;
          if (CGRectIntersectsRect(v68, v70) && getNumSharedConcomps(v44, feature, v61, v62, v63, v64) >= 1)
          {
            [array removeObjectAtIndex:v43 - 2];
          }
        }

        --v43;
      }

      while (v43 > 1);
    }

LABEL_35:

    [array addObject:feature];
  }
}

- (id)createFeaturesForROI:(CGRect)i originalSize:(CGSize)size lastID:(int64_t *)d
{
  height = size.height;
  width = size.width;
  v8 = i.size.height;
  v9 = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:16];
  LODWORD(v14) = [(FKTextDetector *)self mergeSettings];
  mergeSettings = [(FKTextDetector *)self mergeSettings];
  v16 = 0;
  if (v14 < mergeSettings.var1)
  {
    v14 = v14;
    do
    {
      if (!self->_sessions[v14])
      {
        break;
      }

      height = [(FKTextDetector *)self createFeaturesForSessionScale:v14 roi:&v28 originalSize:x startID:y, v9, v8, width, height];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = [height countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(height);
            }

            v22 = *(*(&v24 + 1) + 8 * i);
            if (![v22 type])
            {
              [(FKTextDetector *)self mergeFeature:v22 withArray:v13];
            }
          }

          v19 = [height countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v19);
      }

      ++v14;
    }

    while (v14 < [(FKTextDetector *)self mergeSettings]>> 32);
    v16 = v28;
  }

  *d = v16;
  return v13;
}

- (unsigned)isValidPixelBuffer:(__CVBuffer *)buffer regionOfInterest:(CGRect)interest error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (buffer)
  {
    height = interest.size.height;
    width = interest.size.width;
    y = interest.origin.y;
    x = interest.origin.x;
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
    if (PixelFormatType <= 875704949)
    {
      if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
      {
        goto LABEL_14;
      }

      v12 = 875704934;
    }

    else
    {
      if (PixelFormatType <= 875836533)
      {
        if (PixelFormatType != 875704950)
        {
          v12 = 875836518;
          goto LABEL_13;
        }

LABEL_14:
        v17 = CVPixelBufferGetWidth(buffer);
        v18 = CVPixelBufferGetHeight(buffer);
        interest.origin.x = y + height;
        interest.origin.y = v18;
        v19 = x + width <= v17 && interest.origin.x <= interest.origin.y;
        if (v19 && x >= 0.0 && y >= 0.0 && width > 0.0 && height > 0.0)
        {
          return 1;
        }

        if (error)
        {
          v13 = MEMORY[0x1E696ABC0];
          v26 = *MEMORY[0x1E696A578];
          v27 = @"Region of interest is outside of input pixel buffer";
          v14 = MEMORY[0x1E695DF20];
          v15 = &v27;
          v16 = &v26;
          goto LABEL_20;
        }

        return 0;
      }

      if (PixelFormatType == 875836534)
      {
        goto LABEL_14;
      }

      v12 = 1278226488;
    }

LABEL_13:
    if (PixelFormatType != v12)
    {
      if (error)
      {
        v25 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        v29 = @"Unsupported pixel format";
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v21 = v25;
        v22 = 2;
        goto LABEL_21;
      }

      return 0;
    }

    goto LABEL_14;
  }

  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A578];
    v31[0] = @"pixelBuffer may not be NULL";
    v14 = MEMORY[0x1E695DF20];
    v15 = v31;
    v16 = &v30;
LABEL_20:
    v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:{1, interest.origin.x, interest.origin.y, interest.size.width, interest.size.height}];
    v21 = v13;
    v22 = 1;
LABEL_21:
    v23 = [v21 errorWithDomain:@"FKTextDetector" code:v22 userInfo:v20];
    result = 0;
    *error = v23;
    return result;
  }

  return 0;
}

- (void)runRecognizerOnFeatures:(id)features roi:(CGRect)roi size:(CGSize)size lastID:(int64_t *)d
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(FKTextDetector *)self recognitionLanguage:roi.origin.x])
  {
    if (self->_recognizer || (Recognizer = FKSessionCreateRecognizer(), (self->_recognizer = Recognizer) != 0))
    {
      if ([features count])
      {
        v9 = 0;
        featuresCopy = features;
        do
        {
          v10 = [features objectAtIndexedSubscript:v9];
          v11 = v10[2];
          *(v11 + 344) = self->_recognizer;
          v12 = *(v10 + 2);
          v13 = *(v11 + 312) + 104 * v12;
          if (FKRecognizeSequence(v11, v13, v14))
          {
            origin = self->_roi.origin;
            v34[0] = self->_size;
            v35 = 0;
            v34[1] = origin;
            LODWORD(v35) = *(v10 + 6);
            v10 = [FKTextFeature featureFromSequenceIndex:v12 session:v11 scaling:v34 createConcompFeatures:[(FKTextDetector *)self returnSubFeatures] createDiacriticFeatures:[(FKTextDetector *)self detectDiacritics] featureID:d];
            [features setObject:v10 atIndexedSubscript:v9];
          }

          [v10 setText:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(v13 + 80))}];
          [v10 setConfidence:{FKSeqMatchGetConfidence(v11, v13)}];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          subFeatures = [v10 subFeatures];
          v17 = [subFeatures countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v31;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(subFeatures);
                }

                v21 = *(*(&v30 + 1) + 8 * i);
                v22 = *(*(v21 + 16) + 280) + 100 * *(v21 + 8);
                [v21 setText:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v22 + 40)}];
                *&v23 = FKCCMatchGetConfidence(v22);
                [v21 setConfidence:v23];
              }

              v18 = [subFeatures countByEnumeratingWithState:&v30 objects:v36 count:16];
            }

            while (v18);
          }

          ++v9;
          features = featuresCopy;
        }

        while ([featuresCopy count] > v9);
      }

      v24 = [features count];
      if (v24 - 1 >= 0)
      {
        v25 = v24;
        do
        {
          v26 = [features objectAtIndexedSubscript:--v25];
          if (*(v26[2] + 20))
          {
            [v26 confidence];
            if (v27 <= 0.5)
            {
              [features removeObjectAtIndex:v25];
            }
          }
        }

        while (v25 > 0);
      }
    }
  }
}

- (void)resetTimers
{
  *self->_timeRecognizer = 0u;
  *&self->_timeRecognizer[4] = 0u;
  *self->_timeSequences = 0u;
  *&self->_timeSequences[4] = 0u;
  *self->_timeConcomps = 0u;
  *&self->_timeConcomps[4] = 0u;
  *self->_timeBinarizer = 0u;
  *&self->_timeBinarizer[4] = 0u;
  *self->_timeDownscale = 0u;
  *&self->_timeDownscale[4] = 0u;
}

- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer withRegionOfInterest:(CGRect)interest error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v87[1] = *MEMORY[0x1E69E9840];
  if (![FKTextDetector isValidPixelBuffer:"isValidPixelBuffer:regionOfInterest:error:" regionOfInterest:? error:?])
  {
    return 0;
  }

  v12 = 0;
  if (width >= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  do
  {
    v14 = v12 + 1;
    if ((v12 + 1) > 7)
    {
      break;
    }

    v15 = v13 >> v12++;
  }

  while (v15 > 64);
  sessions = self->_sessions;
  v17 = createOrResetSessions(self->_sessions, width, height, v14);
  if (v17)
  {
    if (error)
    {
      v86 = *MEMORY[0x1E696A578];
      v87[0] = @"Could not create sessions";
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FKTextDetector" code:v17 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v87, &v86, 1)}];
LABEL_13:
      v19 = 0;
      *error = v18;
      return v19;
    }

    return 0;
  }

  if (CVPixelBufferLockBaseAddress(buffer, 1uLL))
  {
    if (error)
    {
      v84 = *MEMORY[0x1E696A578];
      v85 = @"Could not lock pixelBuffer for reading";
      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FKTextDetector" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v85, &v84, 1)}];
      goto LABEL_13;
    }

    return 0;
  }

  [(FKTextDetector *)self translatePropertiesToOptionsWithNumSessions:v14];
  v21 = CVPixelBufferGetWidth(buffer);
  v22 = CVPixelBufferGetHeight(buffer);
  self->_size.width = v21;
  self->_size.height = v22;
  self->_roi.origin.x = x;
  self->_roi.origin.y = y;
  self->_roi.size.width = width;
  self->_roi.size.height = height;
  [(FKTextDetector *)self resetTimers];
  selfCopy = self;
  pixelBuffer = buffer;
  errorCopy = error;
  if (CVPixelBufferIsPlanar(buffer))
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 0);
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(buffer);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(buffer);
  }

  v25 = v14 - 1;
  v26 = *sessions;
  v26->var11.width = width;
  v26->var11.rowBytes = BytesPerRowOfPlane;
  v26->var11.data = &BaseAddressOfPlane[BytesPerRowOfPlane * y + x];
  v26->var11.height = height;
  if (v14 >= 2)
  {
    v27 = 0;
    do
    {
      v28 = self->_sessions[v27 + 1];
      var7 = v28->var7;
      var8 = v28->var8;
      v28->var11.height = var8;
      v28->var11.width = var7;
      v28->var11.rowBytes = var7;
      v28->var11.data = malloc_type_malloc(var8 * var7, 0x847020D9uLL);
      ++v27;
    }

    while (v25 != v27);
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  self->_timeDownscale[0] = 0;
  timeDownscale = self->_timeDownscale;
  thresholdingAlgorithm = [(FKTextDetector *)self thresholdingAlgorithm];
  v32 = 0;
  v63 = thresholdingAlgorithm;
  if ([(FKTextDetector *)self multiThreadingQueue])
  {
    v33 = thresholdingAlgorithm == 4;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  v73 = 0;
  do
  {
    while (1)
    {
      if (v32)
      {
        v35 = mach_absolute_time();
        v36 = &sessions[v32];
        v38 = *(v36 - 1);
        v37 = *v36;
        v39 = *(v38 + 184);
        *&src.data = *(v38 + 168);
        *&src.width = v39;
        v40 = *&v37->var11.width;
        *&dest.data = *&v37->var11.data;
        *&dest.width = v40;
        v41 = vImageScale_Planar8(&src, &dest, 0, 0);
        v42 = sessions;
        if (!v41)
        {
          v43 = dest.rowBytes - dest.width;
          if (dest.rowBytes > dest.width)
          {
            if (dest.height)
            {
              v44 = 0;
              v45 = dest.data + dest.width;
              do
              {
                memset(v45, *(v45 - 1), v43);
                v45 += dest.rowBytes;
                ++v44;
              }

              while (dest.height > v44);
            }
          }
        }

        v46 = mach_absolute_time();
        sessions = v42;
        v47 = dword_1ECEA795C;
        if (!dword_1ECEA795C)
        {
          mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
          v47 = dword_1ECEA795C;
        }

        timeDownscale[v32] = (v46 - v35) * getTimeInMicro_sTimebaseInfo / (1000 * v47);
        if (v41)
        {
          if (!errorCopy)
          {
            goto LABEL_66;
          }

          v82 = *MEMORY[0x1E696A578];
          v83 = @"Downscaling failed";
          v52 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FKTextDetector" code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v83, &v82, 1)}];
          goto LABEL_49;
        }
      }

      if (v34)
      {
        break;
      }

      multiThreadingQueue = [(FKTextDetector *)selfCopy multiThreadingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__FKTextDetector_detectFeaturesInBuffer_withRegionOfInterest_error___block_invoke;
      block[3] = &unk_1E8704878;
      v70 = v32;
      block[4] = selfCopy;
      block[5] = &v74;
      dispatch_async(multiThreadingQueue, block);
      if (++v32 == v14)
      {
        dispatch_barrier_sync([(FKTextDetector *)selfCopy multiThreadingQueue], &__block_literal_global_108);
        goto LABEL_43;
      }
    }

    ++v32;
  }

  while (v32 != v14);
  if (v63 == 4)
  {
    v53 = &v73;
  }

  else
  {
    v53 = 0;
  }

  for (i = v14; ; runDetectionOnSession(selfCopy, i, v73, v53))
  {
    v55 = __OFSUB__(i--, 1);
    if (i < 0 != v55)
    {
      break;
    }
  }

LABEL_43:
  v49 = v75[3];
  if (!v49)
  {
    v68 = 0;
    v19 = [(FKTextDetector *)selfCopy createFeaturesForROI:&v68 originalSize:x lastID:y, width, height, v21, v22];
    if ([v19 count])
    {
      v56 = 0x1ECEA7000uLL;
LABEL_58:
      v57 = mach_absolute_time();
      [(FKTextDetector *)selfCopy runRecognizerOnFeatures:v19 roi:&v68 size:x lastID:y, width, height, v21, v22];
      v58 = mach_absolute_time();
      v59 = *(v56 + 2396);
      if (!v59)
      {
        mach_timebase_info(&getTimeInMicro_sTimebaseInfo);
        v59 = *(v56 + 2396);
      }

      selfCopy->_timeRecognizer[0] = (v58 - v57) * getTimeInMicro_sTimebaseInfo / (1000 * v59);
      sortSequencesInSensibleOrder(v19);
      goto LABEL_67;
    }

    v60 = *(&selfCopy->super.isa + v14);
    if (*(v60 + 200))
    {
      v56 = 0x1ECEA7000;
      if (FKSequenceOneBox(v60))
      {
        v19 = [(FKTextDetector *)selfCopy createFeaturesForROI:&v68 originalSize:x lastID:y, width, height, v21, v22];
      }

      goto LABEL_58;
    }

    if (!errorCopy)
    {
      goto LABEL_66;
    }

    v50 = MEMORY[0x1E696ABC0];
    v78 = *MEMORY[0x1E696A578];
    v79 = @"Detection failed due to unsupported input dimensions";
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v49 = 2;
LABEL_46:
    v52 = [v50 errorWithDomain:@"FKTextDetector" code:v49 userInfo:{v51, v63, pixelBuffer}];
LABEL_49:
    v19 = 0;
    *errorCopy = v52;
    goto LABEL_67;
  }

  if (errorCopy)
  {
    v50 = MEMORY[0x1E696ABC0];
    v80 = *MEMORY[0x1E696A578];
    v81 = @"Detection failed with";
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    goto LABEL_46;
  }

LABEL_66:
  v19 = 0;
LABEL_67:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  if (v14 >= 2)
  {
    v61 = &selfCopy->_sessions[1];
    do
    {
      free((*v61)->var11.data);
      v62 = *v61++;
      *(v62 + 168) = 0;
      --v25;
    }

    while (v25);
  }

  _Block_object_dispose(&v74, 8);
  return v19;
}

- (id)detectFeaturesInBuffer:(__CVBuffer *)buffer error:(id *)error
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);

  return [(FKTextDetector *)self detectFeaturesInBuffer:buffer withRegionOfInterest:error error:0.0, 0.0, Width, Height];
}

- (unint64_t)getMemoryUsageOfLastOperation
{
  v3 = 0;
  result = 0;
  sessions = self->_sessions;
  p_total = &self->_memoryUsage[0].total;
  do
  {
    if (!sessions[v3])
    {
      break;
    }

    v7 = *p_total;
    p_total += 6;
    result += v7;
    ++v3;
  }

  while (v3 != 8);
  return result;
}

@end