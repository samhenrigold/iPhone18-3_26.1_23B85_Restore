@interface HMIVideoAnalyzerConfiguration
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerConfiguration)init;
- (HMIVideoAnalyzerConfiguration)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAnalysisFPS:(double)s;
- (void)setMinFrameQuality:(double)quality;
- (void)setMinFrameScale:(double)scale;
- (void)setTimelapseVideo:(BOOL)video;
@end

@implementation HMIVideoAnalyzerConfiguration

- (HMIVideoAnalyzerConfiguration)init
{
  v11.receiver = self;
  v11.super_class = HMIVideoAnalyzerConfiguration;
  v2 = [(HMIVideoAnalyzerConfiguration *)&v11 init];
  if (v2)
  {
    CMTimeMake(&v10, 1, 1);
    v3 = *&v10.value;
    *(v2 + 14) = v10.epoch;
    *(v2 + 6) = v3;
    *(v2 + 6) = 100;
    v4 = MEMORY[0x277CC0898];
    *(v2 + 120) = *MEMORY[0x277CC0898];
    *(v2 + 17) = *(v4 + 16);
    CMTimeMake(&v10, 20, 1);
    v5 = *&v10.value;
    *(v2 + 20) = v10.epoch;
    *(v2 + 9) = v5;
    *(v2 + 4) = 1635148593;
    *(v2 + 7) = 0x4014000000000000;
    CMTimeMake(&v10, 8, 1);
    v6 = *&v10.value;
    *(v2 + 23) = v10.epoch;
    *(v2 + 168) = v6;
    *(v2 + 10) = 2;
    v2[8] = 1;
    v2[9] = 1;
    v7 = *(v2 + 8);
    *(v2 + 8) = 0;

    v8 = *(v2 + 9);
    *(v2 + 9) = 0;

    *(v2 + 3) = 0x3FE8000000000000;
    *(v2 + 4) = 0x3FD0000000000000;
    *(v2 + 11) = 1;
    v2[10] = 0;
    v2[11] = 1;
    *(v2 + 6) = 1;
    *(v2 + 5) = 1635148593;
    *(v2 + 5) = 0x3FF0000000000000;
  }

  return v2;
}

- (id)attributeDescriptions
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [&time thumbnailInterval];
  CMTimeGetSeconds(&time);
  v68 = [v4 numberWithDouble:?];
  v67 = [v3 initWithName:? value:?];
  v70 = v67;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self thumbnailHeight];
  v66 = [v6 numberWithUnsignedInteger:?];
  v65 = [v5 initWithName:? value:?];
  v71 = v65;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = MEMORY[0x277CCABB0];
  [&time timelapseInterval];
  CMTimeGetSeconds(&time);
  v64 = [v8 numberWithDouble:?];
  v63 = [v7 initWithName:? value:?];
  v72 = v63;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  [&time timelapsePreferredFragmentDuration];
  CMTimeGetSeconds(&time);
  v62 = [v10 numberWithDouble:?];
  v61 = [v9 initWithName:? value:?];
  v73 = v61;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v60 = HMIFourCCString([(HMIVideoAnalyzerConfiguration *)self timelapseCodecType]);
  v59 = [v11 initWithName:? value:?];
  v74 = v59;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = MEMORY[0x277CCABB0];
  [&time maxFragmentDuration];
  CMTimeGetSeconds(&time);
  v58 = [v13 numberWithDouble:?];
  v57 = [v12 initWithName:? value:?];
  v75 = v57;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration];
  v56 = [v15 numberWithDouble:?];
  v55 = [v14 initWithName:? value:?];
  v76 = v55;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  initialDecodeMode = [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
  v18 = @"IFrameOnly";
  if (initialDecodeMode != 1)
  {
    v18 = @"None";
  }

  if (initialDecodeMode == 2)
  {
    v18 = @"Full";
  }

  v50 = v18;
  v54 = [v16 initWithName:? value:?];
  v77 = v54;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self transcode];
  v53 = HMFBooleanToString();
  v52 = [v19 initWithName:? value:?];
  v78 = v52;
  v20 = objc_alloc(MEMORY[0x277D0F778]);
  v51 = HMIFourCCString([(HMIVideoAnalyzerConfiguration *)self transcodeCodecType]);
  v49 = [v20 initWithName:? value:?];
  v79 = v49;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
  v48 = HMFBooleanToString();
  v47 = [v21 initWithName:? value:?];
  v80 = v47;
  v22 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self redactFrames];
  v46 = HMFBooleanToString();
  v45 = [v22 initWithName:? value:?];
  v81 = v45;
  v23 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
  v44 = [v24 numberWithDouble:?];
  v43 = [v23 initWithName:? value:?];
  v82 = v43;
  v25 = objc_alloc(MEMORY[0x277D0F778]);
  v26 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
  v27 = [v26 numberWithDouble:?];
  v28 = [v25 initWithName:? value:?];
  v83 = v28;
  v29 = objc_alloc(MEMORY[0x277D0F778]);
  camera = [(HMIVideoAnalyzerConfiguration *)self camera];
  v31 = [v29 initWithName:? value:?];
  v84 = v31;
  v32 = objc_alloc(MEMORY[0x277D0F778]);
  homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
  v34 = [v32 initWithName:? value:?];
  v85 = v34;
  v35 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerConfiguration *)self packageClassifierMode];
  v36 = [v35 initWithName:? value:?];
  v86 = v36;
  v37 = objc_alloc(MEMORY[0x277D0F778]);
  v38 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
  v39 = [v38 numberWithDouble:?];
  v40 = [v37 initWithName:? value:?];
  v87 = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v41;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [&time1 thumbnailInterval];
      if (v5)
      {
        [&v54 thumbnailInterval];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v7 = CMTimeCompare(&time1, &v54);
      thumbnailHeight = [(HMIVideoAnalyzerConfiguration *)self thumbnailHeight];
      thumbnailHeight2 = [(HMIVideoAnalyzerConfiguration *)v5 thumbnailHeight];
      [&time1 timelapseInterval];
      if (v5)
      {
        [&v54 timelapseInterval];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v10 = CMTimeCompare(&time1, &v54) | v7;
      [&time1 timelapsePreferredFragmentDuration];
      if (v5)
      {
        [&v54 timelapsePreferredFragmentDuration];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      v11 = CMTimeCompare(&time1, &v54);
      timelapseCodecType = [(HMIVideoAnalyzerConfiguration *)self timelapseCodecType];
      timelapseCodecType2 = [(HMIVideoAnalyzerConfiguration *)v5 timelapseCodecType];
      v16 = thumbnailHeight == thumbnailHeight2 && (v10 | v11) == 0 && timelapseCodecType == timelapseCodecType2;
      [&time1 maxFragmentDuration];
      if (v5)
      {
        [&v54 maxFragmentDuration];
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
      }

      if (CMTimeCompare(&time1, &v54))
      {
        v16 = 0;
      }

      [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration:v54.value];
      v18 = v17;
      [(HMIVideoAnalyzerConfiguration *)v5 maxFragmentAnalysisDuration];
      v20 = v18 == v19 && v16;
      initialDecodeMode = [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
      if (initialDecodeMode != [(HMIVideoAnalyzerConfiguration *)v5 initialDecodeMode])
      {
        v20 = 0;
      }

      transcode = [(HMIVideoAnalyzerConfiguration *)self transcode];
      v23 = v20 & ~(transcode ^ [(HMIVideoAnalyzerConfiguration *)v5 transcode]);
      transcodeCodecType = [(HMIVideoAnalyzerConfiguration *)self transcodeCodecType];
      if (transcodeCodecType != [(HMIVideoAnalyzerConfiguration *)v5 transcodeCodecType])
      {
        v23 = 0;
      }

      passthroughAudio = [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
      v26 = passthroughAudio ^ [(HMIVideoAnalyzerConfiguration *)v5 passthroughAudio];
      redactFrames = [(HMIVideoAnalyzerConfiguration *)self redactFrames];
      v28 = v26 | redactFrames ^ [(HMIVideoAnalyzerConfiguration *)v5 redactFrames];
      allowReducedConfiguration = [(HMIVideoAnalyzerConfiguration *)self allowReducedConfiguration];
      v30 = allowReducedConfiguration ^ [(HMIVideoAnalyzerConfiguration *)v5 allowReducedConfiguration];
      enableTemporalEventFiltering = [(HMIVideoAnalyzerConfiguration *)self enableTemporalEventFiltering];
      v32 = v28 | v30 | enableTemporalEventFiltering ^ [(HMIVideoAnalyzerConfiguration *)v5 enableTemporalEventFiltering];
      saveAnalyzerResultsToDisk = [(HMIVideoAnalyzerConfiguration *)self saveAnalyzerResultsToDisk];
      v34 = v23 & ~(v32 | saveAnalyzerResultsToDisk ^ [(HMIVideoAnalyzerConfiguration *)v5 saveAnalyzerResultsToDisk]);
      [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
      v36 = v35;
      [(HMIVideoAnalyzerConfiguration *)v5 minFrameQuality];
      if (v36 != v37)
      {
        LOBYTE(v34) = 0;
      }

      [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
      v39 = v38;
      [(HMIVideoAnalyzerConfiguration *)v5 minFrameScale];
      if (v39 == v40)
      {
        v41 = v34;
      }

      else
      {
        v41 = 0;
      }

      packageClassifierMode = [(HMIVideoAnalyzerConfiguration *)self packageClassifierMode];
      if (packageClassifierMode == [(HMIVideoAnalyzerConfiguration *)v5 packageClassifierMode])
      {
        v43 = v41;
      }

      else
      {
        v43 = 0;
      }

      [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
      v45 = v44;
      [(HMIVideoAnalyzerConfiguration *)v5 analysisFPS];
      if (v45 == v46)
      {
        v47 = v43;
      }

      else
      {
        v47 = 0;
      }

      camera = [(HMIVideoAnalyzerConfiguration *)self camera];
      camera2 = [(HMIVideoAnalyzerConfiguration *)v5 camera];
      v50 = HMFEqualObjects();

      homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
      homeUUID2 = [(HMIVideoAnalyzerConfiguration *)v5 homeUUID];
      LOBYTE(camera2) = HMFEqualObjects();

      v6 = v47 & v50 & camera2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setMinFrameQuality:(double)quality
{
  if (quality <= 0.0 || quality > 1.0)
  {
    v4 = [HMIVideoAnalyzerConfiguration setMinFrameQuality:];
    [(HMIVideoAnalyzerConfiguration *)v4 minFrameQuality];
  }

  else
  {
    self->_minFrameQuality = quality;
  }
}

- (void)setMinFrameScale:(double)scale
{
  if (scale <= 0.0 || scale > 1.0)
  {
    v4 = [HMIVideoAnalyzerConfiguration setMinFrameScale:];
    [(HMIVideoAnalyzerConfiguration *)v4 minFrameScale];
  }

  else
  {
    self->_minFrameScale = scale;
  }
}

- (void)setTimelapseVideo:(BOOL)video
{
  if (video)
  {
    CMTimeMake(&v4, 1, 1);
  }

  else
  {
    v4 = **&MEMORY[0x277CC0898];
  }

  [(HMIVideoAnalyzerConfiguration *)self setTimelapseInterval:v4.value, *&v4.timescale, v4.epoch];
}

- (void)setAnalysisFPS:(double)s
{
  if (s <= 0.0)
  {
    [HMIVideoAnalyzerConfiguration setAnalysisFPS:];
    [(HMIVideoAnalyzerConfiguration *)v3 copyWithZone:v4, v5];
  }

  else
  {
    self->_analysisFPS = s;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMIVideoAnalyzerConfiguration);
  [&v16 thumbnailInterval];
  v14 = v16;
  v15 = v17;
  [(HMIVideoAnalyzerConfiguration *)v4 setThumbnailInterval:?];
  [(HMIVideoAnalyzerConfiguration *)self thumbnailHeight];
  [(HMIVideoAnalyzerConfiguration *)v4 setThumbnailHeight:?];
  [&v12 timelapseInterval];
  v14 = v12;
  v15 = v13;
  [(HMIVideoAnalyzerConfiguration *)v4 setTimelapseInterval:?];
  [&v10 timelapsePreferredFragmentDuration];
  v14 = v10;
  v15 = v11;
  [(HMIVideoAnalyzerConfiguration *)v4 setTimelapsePreferredFragmentDuration:?];
  [(HMIVideoAnalyzerConfiguration *)self timelapseCodecType];
  [(HMIVideoAnalyzerConfiguration *)v4 setTimelapseCodecType:?];
  [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration];
  [(HMIVideoAnalyzerConfiguration *)v4 setMaxFragmentAnalysisDuration:?];
  [&v8 maxFragmentDuration];
  v14 = v8;
  v15 = v9;
  [(HMIVideoAnalyzerConfiguration *)v4 setMaxFragmentDuration:?];
  [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
  [(HMIVideoAnalyzerConfiguration *)v4 setInitialDecodeMode:?];
  [(HMIVideoAnalyzerConfiguration *)self transcode];
  [(HMIVideoAnalyzerConfiguration *)v4 setTranscode:?];
  [(HMIVideoAnalyzerConfiguration *)self transcodeCodecType];
  [(HMIVideoAnalyzerConfiguration *)v4 setTranscodeCodecType:?];
  [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
  [(HMIVideoAnalyzerConfiguration *)v4 setPassthroughAudio:?];
  camera = [(HMIVideoAnalyzerConfiguration *)self camera];
  [(HMIVideoAnalyzerConfiguration *)v4 setCamera:?];

  homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
  [(HMIVideoAnalyzerConfiguration *)v4 setHomeUUID:?];

  [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
  [(HMIVideoAnalyzerConfiguration *)v4 setMinFrameQuality:?];
  [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
  [(HMIVideoAnalyzerConfiguration *)v4 setMinFrameScale:?];
  [(HMIVideoAnalyzerConfiguration *)self packageClassifierMode];
  [(HMIVideoAnalyzerConfiguration *)v4 setPackageClassifierMode:?];
  [(HMIVideoAnalyzerConfiguration *)self redactFrames];
  [(HMIVideoAnalyzerConfiguration *)v4 setRedactFrames:?];
  [(HMIVideoAnalyzerConfiguration *)self allowReducedConfiguration];
  [(HMIVideoAnalyzerConfiguration *)v4 setAllowReducedConfiguration:?];
  [(HMIVideoAnalyzerConfiguration *)self enableTemporalEventFiltering];
  [(HMIVideoAnalyzerConfiguration *)v4 setEnableTemporalEventFiltering:?];
  [(HMIVideoAnalyzerConfiguration *)self saveAnalyzerResultsToDisk];
  [(HMIVideoAnalyzerConfiguration *)v4 setSaveAnalyzerResultsToDisk:?];
  [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
  [(HMIVideoAnalyzerConfiguration *)v4 setAnalysisFPS:?];
  return v4;
}

- (HMIVideoAnalyzerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMIVideoAnalyzerConfiguration *)self init];
  v6 = NSStringFromSelector(sel_thumbnailInterval);
  if (coderCopy)
  {
    [&v38 decodeCMTimeForKey:?];
  }

  else
  {
    v38 = 0uLL;
    v39 = 0;
  }

  v36 = v38;
  v37 = v39;
  [(HMIVideoAnalyzerConfiguration *)v5 setThumbnailInterval:?];

  v7 = NSStringFromSelector(sel_thumbnailHeight);
  [coderCopy decodeIntegerForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setThumbnailHeight:?];

  v8 = NSStringFromSelector(sel_timelapseInterval);
  if (coderCopy)
  {
    [&v34 decodeCMTimeForKey:?];
  }

  else
  {
    v34 = 0uLL;
    v35 = 0;
  }

  v36 = v34;
  v37 = v35;
  [(HMIVideoAnalyzerConfiguration *)v5 setTimelapseInterval:?];

  v9 = NSStringFromSelector(sel_timelapsePreferredFragmentDuration);
  if (coderCopy)
  {
    [&v32 decodeCMTimeForKey:?];
  }

  else
  {
    v32 = 0uLL;
    v33 = 0;
  }

  v36 = v32;
  v37 = v33;
  [(HMIVideoAnalyzerConfiguration *)v5 setTimelapsePreferredFragmentDuration:?];

  v10 = NSStringFromSelector(sel_timelapseCodecType);
  [coderCopy decodeIntegerForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setTimelapseCodecType:?];

  v11 = NSStringFromSelector(sel_maxFragmentAnalysisDuration);
  [coderCopy decodeDoubleForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setMaxFragmentAnalysisDuration:?];

  v12 = NSStringFromSelector(sel_maxFragmentDuration);
  if (coderCopy)
  {
    [&v30 decodeCMTimeForKey:?];
  }

  else
  {
    v30 = 0uLL;
    v31 = 0;
  }

  v36 = v30;
  v37 = v31;
  [(HMIVideoAnalyzerConfiguration *)v5 setMaxFragmentDuration:?];

  v13 = NSStringFromSelector(sel_initialDecodeMode);
  [coderCopy decodeIntegerForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setInitialDecodeMode:?];

  v14 = NSStringFromSelector(sel_transcode);
  [coderCopy decodeBoolForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setTranscode:?];

  v15 = NSStringFromSelector(sel_transcodeCodecType);
  [coderCopy decodeIntegerForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setTranscodeCodecType:?];

  v16 = NSStringFromSelector(sel_passthroughAudio);
  [coderCopy decodeBoolForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setPassthroughAudio:?];

  v17 = NSStringFromSelector(sel_redactFrames);
  [coderCopy decodeBoolForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setRedactFrames:?];

  v18 = NSStringFromSelector(sel_allowReducedConfiguration);
  [coderCopy decodeBoolForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setAllowReducedConfiguration:?];

  v19 = NSStringFromSelector(sel_enableTemporalEventFiltering);
  [coderCopy decodeBoolForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setEnableTemporalEventFiltering:?];

  v20 = NSStringFromSelector(sel_saveAnalyzerResultsToDisk);
  [coderCopy decodeBoolForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setSaveAnalyzerResultsToDisk:?];

  v21 = NSStringFromSelector(sel_minFrameQuality);
  [coderCopy decodeDoubleForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setMinFrameQuality:?];

  v22 = NSStringFromSelector(sel_minFrameScale);
  [coderCopy decodeDoubleForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setMinFrameScale:?];

  objc_opt_class();
  v23 = NSStringFromSelector(sel_camera);
  v24 = [coderCopy decodeObjectOfClass:? forKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setCamera:?];

  objc_opt_class();
  v25 = NSStringFromSelector(sel_homeUUID);
  v26 = [coderCopy decodeObjectOfClass:? forKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setHomeUUID:?];

  v27 = NSStringFromSelector(sel_packageClassifierMode);
  [coderCopy decodeIntegerForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setPackageClassifierMode:?];

  v28 = NSStringFromSelector(sel_analysisFPS);
  [coderCopy decodeDoubleForKey:?];
  [(HMIVideoAnalyzerConfiguration *)v5 setAnalysisFPS:?];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [v28 thumbnailInterval];
  v5 = NSStringFromSelector(sel_thumbnailInterval);
  [coderCopy encodeCMTime:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self thumbnailHeight];
  v6 = NSStringFromSelector(sel_thumbnailHeight);
  [coderCopy encodeInteger:? forKey:?];

  [v28 timelapseInterval];
  v7 = NSStringFromSelector(sel_timelapseInterval);
  [coderCopy encodeCMTime:? forKey:?];

  [v28 timelapsePreferredFragmentDuration];
  v8 = NSStringFromSelector(sel_timelapsePreferredFragmentDuration);
  [coderCopy encodeCMTime:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self timelapseCodecType];
  v9 = NSStringFromSelector(sel_timelapseCodecType);
  [coderCopy encodeInteger:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self maxFragmentAnalysisDuration];
  v10 = NSStringFromSelector(sel_maxFragmentAnalysisDuration);
  [coderCopy encodeDouble:? forKey:?];

  [v28 maxFragmentDuration];
  v11 = NSStringFromSelector(sel_maxFragmentDuration);
  [coderCopy encodeCMTime:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self initialDecodeMode];
  v12 = NSStringFromSelector(sel_initialDecodeMode);
  [coderCopy encodeInteger:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self transcode];
  v13 = NSStringFromSelector(sel_transcode);
  [coderCopy encodeBool:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self transcodeCodecType];
  v14 = NSStringFromSelector(sel_transcodeCodecType);
  [coderCopy encodeInteger:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self passthroughAudio];
  v15 = NSStringFromSelector(sel_passthroughAudio);
  [coderCopy encodeBool:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self redactFrames];
  v16 = NSStringFromSelector(sel_redactFrames);
  [coderCopy encodeBool:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self allowReducedConfiguration];
  v17 = NSStringFromSelector(sel_allowReducedConfiguration);
  [coderCopy encodeBool:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self enableTemporalEventFiltering];
  v18 = NSStringFromSelector(sel_enableTemporalEventFiltering);
  [coderCopy encodeBool:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self saveAnalyzerResultsToDisk];
  v19 = NSStringFromSelector(sel_saveAnalyzerResultsToDisk);
  [coderCopy encodeBool:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self minFrameQuality];
  v20 = NSStringFromSelector(sel_minFrameQuality);
  [coderCopy encodeDouble:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self minFrameScale];
  v21 = NSStringFromSelector(sel_minFrameScale);
  [coderCopy encodeDouble:? forKey:?];

  camera = [(HMIVideoAnalyzerConfiguration *)self camera];
  v23 = NSStringFromSelector(sel_camera);
  [coderCopy encodeObject:? forKey:?];

  homeUUID = [(HMIVideoAnalyzerConfiguration *)self homeUUID];
  v25 = NSStringFromSelector(sel_homeUUID);
  [coderCopy encodeObject:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self packageClassifierMode];
  v26 = NSStringFromSelector(sel_packageClassifierMode);
  [coderCopy encodeInteger:? forKey:?];

  [(HMIVideoAnalyzerConfiguration *)self analysisFPS];
  v27 = NSStringFromSelector(sel_analysisFPS);
  [coderCopy encodeDouble:? forKey:?];
}

@end