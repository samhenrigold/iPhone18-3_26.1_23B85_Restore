@interface ABPKBreakthroughPipeline
- (ABPKBreakthroughPipeline)initWithFrequency:(unsigned int)frequency;
- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage;
- (int)runWithInput:(__CVBuffer *)input atTimeStamp:(double)stamp andOutput:(id)output;
@end

@implementation ABPKBreakthroughPipeline

- (ABPKBreakthroughPipeline)initWithFrequency:(unsigned int)frequency
{
  v3 = *&frequency;
  v8.receiver = self;
  v8.super_class = ABPKBreakthroughPipeline;
  v4 = [(ABPKBreakthroughPipeline *)&v8 init];
  if (v4)
  {
    v5 = [[ABPKGestureDetectionPipeline alloc] initWithFrequency:v3];
    gestureDetection = v4->_gestureDetection;
    v4->_gestureDetection = v5;
  }

  return v4;
}

- (int)runWithInput:(__CVBuffer *)input atTimeStamp:(double)stamp andOutput:(id)output
{
  v39 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(ABPKGestureDetectionPipeline *)self->_gestureDetection runWithInput:input abpkDeviceOrientation:3 atTimeStamp:v8 andOutput:stamp];
  if (v9)
  {
    v11 = __ABPKLogSharedInstance(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " Gesture detection failed ", buf, 2u);
    }

    v12 = 1;
  }

  else
  {
    v13 = 0;
    *&v10 = 138412290;
    v34 = v10;
    while ([v8 count] > v13)
    {
      v36 = objc_alloc_init(ABPKBreakthroughResult);
      v14 = __ABPKLogSharedInstance(v36);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v8 objectAtIndexedSubscript:v13];
        gestureTypes = [v15 gestureTypes];
        *buf = v34;
        v38 = gestureTypes;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " Gestures detected: %@ ", buf, 0xCu);
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = [v8 objectAtIndexedSubscript:v13];
        gestureTypes2 = [v21 gestureTypes];
        v23 = [gestureTypes2 count] > v17;

        if (!v23)
        {
          break;
        }

        v24 = [v8 objectAtIndexedSubscript:v13];
        gestureTypes3 = [v24 gestureTypes];
        v26 = [gestureTypes3 objectAtIndexedSubscript:v17];
        integerValue = [v26 integerValue];

        if (integerValue)
        {
          if (integerValue == 1)
          {
            v19 = 1;
          }

          else if (integerValue == 2)
          {
            v18 = 1;
          }
        }

        else
        {
          v20 = 1;
        }

        ++v17;
      }

      v28 = [v8 objectAtIndexedSubscript:v13];
      skeleton2D = [v28 skeleton2D];
      v30 = [v8 objectAtIndexedSubscript:v13];
      isPoseValid = [v30 isPoseValid];
      v32 = [v8 objectAtIndexedSubscript:v13];
      -[ABPKBreakthroughResult set2dSkeleton:isPoseValid:trackingId:isFaceVisible:isRaisingHand:isWavingHand:](v36, "set2dSkeleton:isPoseValid:trackingId:isFaceVisible:isRaisingHand:isWavingHand:", skeleton2D, isPoseValid, [v32 trackingId], v18 & 1, v19 & 1, v20 & 1);

      [outputCopy addObject:v36];
      ++v13;
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)overlayResult:(id)result OnImage:(__CVBuffer *)image andGenerateOverlayImage:(__CVBuffer *)overlayImage
{
  *(&v37 + 1) = *MEMORY[0x277D85DE8];
  resultCopy = result;
  *buf = xmmword_23EE281B0;
  v26 = xmmword_23EE281C0;
  *&v8 = 255;
  *(&v8 + 1) = 255;
  v27 = xmmword_23EE281D0;
  v28 = v8;
  v29 = xmmword_23EE281E0;
  v30 = xmmword_23EE281F0;
  *&v9 = 0xFF000000FFLL;
  *(&v9 + 1) = 0xFF000000FFLL;
  v31 = v9;
  v32 = 0u;
  v33 = xmmword_23EE28200;
  v34 = xmmword_23EE28210;
  v35 = xmmword_23EE28220;
  v36 = xmmword_23EE28230;
  v23 = 0;
  v24 = 0;
  __p = 0;
  _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&__p, buf, &v37, 0xCuLL);
  v10 = 0;
  *&v11 = 134217984;
  v21 = v11;
  while (1)
  {
    v12 = [resultCopy count];
    if (v10 >= v12)
    {
      break;
    }

    v13 = __ABPKLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = v21;
      *&buf[4] = v10;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_DEBUG, " \x10Overlaying result for Person: %lu ", buf, 0xCu);
    }

    v14 = [resultCopy objectAtIndexedSubscript:v10];
    if ([v14 isFaceVisible])
    {
      if ([v14 isWavingHand])
      {
        isRaisingHand = 1;
      }

      else
      {
        isRaisingHand = [v14 isRaisingHand];
      }
    }

    else
    {
      isRaisingHand = 0;
    }

    trackingId = [v14 trackingId];
    if (isRaisingHand)
    {
      v17 = __ABPKLogSharedInstance(trackingId);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_DEBUG, " Breakthrough detected ", buf, 2u);
      }

      *&v18 = 0xFF00000000;
    }

    else
    {
      v18 = *(__p + trackingId % ((v23 - __p) >> 4));
    }

    if (v10)
    {
      imageCopy = overlayImage;
    }

    else
    {
      imageCopy = image;
    }

    [v14 overlayResultOnImage:imageCopy withResult:overlayImage withColor:*&v18];

    ++v10;
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  return 1;
}

@end