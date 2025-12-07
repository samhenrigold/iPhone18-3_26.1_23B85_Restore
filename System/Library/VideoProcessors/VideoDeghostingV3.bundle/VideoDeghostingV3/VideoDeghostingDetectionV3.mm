@interface VideoDeghostingDetectionV3
- ($43C834F0531B50B92CAF4577069D180C)configuration;
- (VideoDeghostingDetectionV3)initWithMetalContext:(id)context config:(id *)config tuningParamDict:(id)dict imageDimensions:(id)dimensions;
- (float)getWeightsOriginalFromInfo:(id)info;
- (id)extractLightSourceBBoxFromBuffer:(VideoDeghostingDetectionV3 *)self BoxCount:(SEL)count;
- (id)getRoisFromPackedHwLsMask:(VideoDeghostingDetectionV3 *)self opticalCenter:(SEL)center prevMetaContainer:(__CVBuffer *)container considerDist2PrevGhostWhenSort:(id *)sort lightSourceMaskTotalArea:(float)area;
- (id)process:(__CVBuffer *)process metaData:(id)data ispTimeStamp:(id *)stamp keypoints:(__CVBuffer *)keypoints lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames;
- (int)allocateHWMetadata;
- (int64_t)_initDetection:(__CVBuffer *)detection metaData:(id)data futureFrames:(id *)frames;
- (void)_getProbMapInput:(id)input motionCueRef:(id)ref motionCueRefRepaired:(id)repaired trackingRef:(id)trackingRef trackingRefProb:(id)prob trackingRefSpaProb:(id)spaProb trackingRefLs:(id)ls probMapRepairRef0:(id)self0 probMapRepairRef1:(id)self1 metaBuf:(id)self2 metaBufArray:(id *)self3 trackingRefMetaBuf:(id)self4 motionCueRefMetaBuf:(id)self5 probMap:(id)self6 rawRefinedProbMap:(id)self7 refinedProbMap:(id)self8 refinedReflLs:(id)self9 probMapStash4FutureTracking:(id)tracking commandBuffer:(id)buffer;
- (void)_getProbMapsLiteTarget:(id)target refProbMap:(id)map refProbMapStash4FutureTracking:(id)tracking refRawRefinedProbMap:(id)probMap refRefinedProbMap:(id)refinedProbMap probMap:(id)a8 refinedLsMap:(id)lsMap probMapStash4FutureTracking:(id)self0 rawRefinedProbMap:(id)self1 refinedProbMap:(id)self2 probMapRepairRef0:(id)self3 probMapRepairRef1:(id)self4 metaBuf:(id)self5 metaBufArray:(id *)self6 commandBuffer:(id)self7;
- (void)_getRefinedLsMapsTarget:(id)target refLsMap:(id)map refRefinedLsMap:(id)lsMap lsMap:(id)a6 refinedLsMap:(id)refinedLsMap metaBuf:(id)buf metaBufArray:(id *)array doLite:(BOOL)self0 commandBuffer:(id)self1;
- (void)_initParamsWithTuningParamsDict:(id)dict isLowLight:(BOOL)light;
- (void)_resetIntermediateVariables;
- (void)_resetTrackingRoiAvoidList;
- (void)dealloc;
- (void)doTrackingToNextFrameCurrMeta:(id)meta futureMeta:(id)futureMeta doLite:(BOOL)lite commandBuffer:(id)buffer;
- (void)getFutureRoisFutureOpticalCenter:(float)center futureLightSourceMaskTotalArea:(id *)area currFrameMetaContainer:(float)container futureFrameMetaBuf:;
- (void)getMvfToNextFrameForTrackingCurrMeta:(id)meta lsMap:(id)map futureLsMap:(id)lsMap commandBuffer:(id)buffer;
- (void)getProbMapsTarget:(id)target rawProbMap:(id)map probMap:(id)probMap rawRefinedProbMap:(id)refinedProbMap refinedProbMap:(id)a7 refinedReflLsMap:(id)lsMap reflLsMap4TrackingRef:(id)ref probMapRepairRef0:(id)self0 probMapRepairRef1:(id)self1 metaBuf:(id)self2 metaBufArray:(id *)self3 commandBuffer:(id)self4;
- (void)prepareDataForNextFrameWithFrameData:(id *)data outputFutureOpticalCenter:outputFutureLightSourceMaskTotalArea:doLite:;
- (void)processPackedHwLsMaskNormalizedCenter:(id)center input:(id)input lowResOutput:(id)output highResOutput:(id)resOutput commandBuffer:;
- (void)releaseHWMetadata;
- (void)repairTarget:(id)target frRef0:(id)ref0 frRef1:(id)ref1 trRef0:(id)trRef0 trRef1:(id)trRef1 hwSimRef0:(id)simRef0 hwSimRef1:(id)simRef1 probMap:(id)self0 refinedProbMap:(id)self1 rawRefinedProbMap:(id)self2 metaBuf:(id)self3 metaRef0Buf:(id)self4 metaRef1Buf:(id)self5 metaBufArray:(id *)self6 trOutput:(id)self7 hwSimOutput:(id)self8 commandBuffer:(id)self9 addEndOfDetectionSignPost:(BOOL)post;
- (void)reset;
- (void)setConfiguration:(id *)configuration;
- (void)warpTrackingRefProbMap:(id)map refSpaProbMap:(id)probMap refReflLs:(id)ls refinedReflLsMap:(id)lsMap target:(id)target motionCueRef:(id)ref motionCueRepairedRef:(id)repairedRef metaBuf:(id)self0 motionCueRefMetaBuf:(id)self1 metaBufArray:(id *)self2 commandBuffer:(id)self3;
@end

@implementation VideoDeghostingDetectionV3

- (VideoDeghostingDetectionV3)initWithMetalContext:(id)context config:(id *)config tuningParamDict:(id)dict imageDimensions:(id)dimensions
{
  contextCopy = context;
  dictCopy = dict;
  v180.receiver = self;
  v180.super_class = VideoDeghostingDetectionV3;
  v12 = [(VideoDeghostingDetectionV3 *)&v180 init];
  v13 = v12;
  if (!v12)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
LABEL_74:
    v177 = 0;
    goto LABEL_91;
  }

  v12->_hwMode = config->var1.var11 != 0;
  v12->_processedFrameCnt = 0;
  LOBYTE(v12->_trackingRoiAvoidListBuf) = 0;
  v14 = [[GGMMetalToolBox alloc] initWithMetalContext:contextCopy tuningParamDict:dictCopy];
  metalToolBox = v13->_metalToolBox;
  v13->_metalToolBox = v14;

  if (!v13->_metalToolBox)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    goto LABEL_74;
  }

  v16 = *&config->var0.var0;
  v17 = *&config->var0.var7;
  v18 = *&config->var1.var4;
  *&v13->_configuration.externalCfg.detectionType = *&config->var1.var0;
  *&v13->_configuration.externalCfg.luxLevelGating = v18;
  *&v13->_configuration.internalCfg.antiFlareSize = v16;
  *&v13->_configuration.internalCfg.initGGarray = v17;
  v19 = objc_alloc_init(CalcHomography);
  calcTransform = v13->_calcTransform;
  v13->_calcTransform = v19;

  if (!v13->_calcTransform)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    goto LABEL_74;
  }

  [(VideoDeghostingDetectionV3 *)v13 _initParamsWithTuningParamsDict:dictCopy isLowLight:1];
  v13->_imageDimensions = dimensions;
  *&v13->_params.lightSourceGatingThresholdON = 0x100000001;
  v21 = [[MaskToRoi alloc] initWithMetalToolBox:v13->_metalToolBox];
  maskToRoi = v13->_maskToRoi;
  v13->_maskToRoi = v21;

  if (!v13->_maskToRoi)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    goto LABEL_74;
  }

  v23 = [[VDGDetectionUtilsV3 alloc] initWithConfiguration:config];
  detectionUtils = v13->_detectionUtils;
  v13->_detectionUtils = v23;

  if (!v13->_detectionUtils)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    goto LABEL_74;
  }

  [(VideoDeghostingDetectionV3 *)v13 _resetIntermediateVariables];
  v13->_forceGPUWaitForComplete = 0;
  v25 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL);
  *v13->_arrayOfLightSourceBBox = v25;
  if (!v25)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    goto LABEL_74;
  }

  v26 = [[RepairWeightsGenerator alloc] initWithConfiguration:config withToolBox:v13->_metalToolBox homographyHandle:v13->_calcTransform imageDimensions:dimensions tuningParameters:dictCopy];
  repairWeightsGenerator = v13->_repairWeightsGenerator;
  v13->_repairWeightsGenerator = v26;

  if (!v13->_repairWeightsGenerator)
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    goto LABEL_74;
  }

  for (i = 0; i != 66; ++i)
  {
    v29 = [NSMutableData dataWithLength:10192];
    v30 = (&v13->super.isa + i * 8);
    v31 = v13->_metaArray[i];
    v13->_metaArray[i] = v29;

    if (!v13->_metaArray[i])
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      goto LABEL_74;
    }

    getDevice = [(GGMMetalToolBox *)v13->_metalToolBox getDevice];
    v33 = [getDevice newBufferWithBytesNoCopy:objc_msgSend(v30[143] length:"mutableBytes") options:10192 deallocator:{0, 0}];
    v34 = v30[77];
    v30[77] = v33;

    if (!v30[77])
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      goto LABEL_74;
    }
  }

  v179 = contextCopy;
  for (j = 1672; j != 1696; j += 8)
  {
    PixelBuffer = CreatePixelBuffer();
    *(&v13->super.isa + j) = PixelBuffer;
    if (!PixelBuffer)
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      goto LABEL_89;
    }

    v37 = PixelBuffer;
    cvMetalTextureCacheRef = [(GGMMetalToolBox *)v13->_metalToolBox cvMetalTextureCacheRef];
    metalContext = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
    v40 = createSingleCachedTextureFromPixelBuffer(v37, cvMetalTextureCacheRef, metalContext, 0, 0);
    v41 = *(&v13->_calcTransform + j);
    *(&v13->_calcTransform + j) = v40;

    if (!*(&v13->_calcTransform + j))
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      goto LABEL_89;
    }

    v42 = CreatePixelBuffer();
    *(&v13->_frameT + j) = v42;
    if (!v42)
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      goto LABEL_89;
    }

    v43 = v42;
    cvMetalTextureCacheRef2 = [(GGMMetalToolBox *)v13->_metalToolBox cvMetalTextureCacheRef];
    metalContext2 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
    v46 = createSingleCachedTextureFromPixelBuffer(v43, cvMetalTextureCacheRef2, metalContext2, 0, 0);
    v47 = *(&v13->_frameTPlus2Buf + j);
    *(&v13->_frameTPlus2Buf + j) = v46;

    if (!*(&v13->_frameTPlus2Buf + j))
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      goto LABEL_89;
    }
  }

  if ([(VideoDeghostingDetectionV3 *)v13 allocateHWMetadata])
  {
    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
  }

  else
  {
    *v13->_frameDim = dimensions;
    v13->_processedFrameCnt = 0;
    v48 = CreatePixelBuffer();
    v13->_warpedReflTrackingRef = v48;
    if (v48)
    {
      v49 = v48;
      metalContext3 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
      v51 = createSingleTextureFromYuvBuffer(v49, metalContext3, 0, 0);
      warpedReflTrackingRefTexture = v13->_warpedReflTrackingRefTexture;
      v13->_warpedReflTrackingRefTexture = v51;

      if (v13->_warpedReflTrackingRefTexture)
      {
        v53 = CreatePixelBuffer();
        v13->_warpedRefProbMap = v53;
        if (v53)
        {
          v54 = v53;
          metalContext4 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
          v56 = createTextureFromCVPixelBuffer(v54, metalContext4, 0);
          warpedRefProbMapTexture = v13->_warpedRefProbMapTexture;
          v13->_warpedRefProbMapTexture = v56;

          if (v13->_warpedRefProbMapTexture)
          {
            v58 = CreatePixelBuffer();
            v13->_rawWarpedRefProbMap = v58;
            if (v58)
            {
              v59 = v58;
              metalContext5 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
              v61 = createTextureFromCVPixelBuffer(v59, metalContext5, 0);
              rawWarpedRefProbMapTexture = v13->_rawWarpedRefProbMapTexture;
              v13->_rawWarpedRefProbMapTexture = v61;

              if (v13->_rawWarpedRefProbMapTexture)
              {
                v63 = CreatePixelBuffer();
                v13->_rawWarpedRefSpaProbMap = v63;
                if (v63)
                {
                  v64 = v63;
                  metalContext6 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                  v66 = createTextureFromCVPixelBuffer(v64, metalContext6, 0);
                  rawWarpedRefSpaProbMapTexture = v13->_rawWarpedRefSpaProbMapTexture;
                  v13->_rawWarpedRefSpaProbMapTexture = v66;

                  if (v13->_rawWarpedRefSpaProbMapTexture)
                  {
                    v68 = CreatePixelBuffer();
                    v13->_warpedRefSpatialProbMap = v68;
                    if (v68)
                    {
                      v69 = v68;
                      metalContext7 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                      v71 = createTextureFromCVPixelBuffer(v69, metalContext7, 0);
                      warpedRefSpatialProbMapTexture = v13->_warpedRefSpatialProbMapTexture;
                      v13->_warpedRefSpatialProbMapTexture = v71;

                      if (v13->_warpedRefSpatialProbMapTexture)
                      {
                        v73 = CreatePixelBuffer();
                        v13->_refinedReflLs4trackingRefWarped = v73;
                        if (v73)
                        {
                          v74 = v73;
                          metalContext8 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                          v76 = createTextureFromCVPixelBuffer(v74, metalContext8, 0);
                          refinedReflLs4trackingRefWarpedTexture = v13->_refinedReflLs4trackingRefWarpedTexture;
                          v13->_refinedReflLs4trackingRefWarpedTexture = v76;

                          if (v13->_refinedReflLs4trackingRefWarpedTexture)
                          {
                            v78 = CreatePixelBuffer();
                            v13->_reflHwLsMask0 = v78;
                            if (v78)
                            {
                              v79 = v78;
                              metalContext9 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                              v81 = createTextureFromCVPixelBuffer(v79, metalContext9, 0);
                              reflHwLsMask0Texture = v13->_reflHwLsMask0Texture;
                              v13->_reflHwLsMask0Texture = v81;

                              if (v13->_reflHwLsMask0Texture)
                              {
                                v83 = CreatePixelBuffer();
                                v13->_reflHwLsMask1 = v83;
                                if (v83)
                                {
                                  v84 = v83;
                                  metalContext10 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                  v86 = createTextureFromCVPixelBuffer(v84, metalContext10, 0);
                                  reflHwLsMask1Texture = v13->_reflHwLsMask1Texture;
                                  v13->_reflHwLsMask1Texture = v86;

                                  if (v13->_reflHwLsMask1Texture)
                                  {
                                    v88 = CreatePixelBuffer();
                                    v13->_dilatedLsMap = v88;
                                    if (v88)
                                    {
                                      v89 = v88;
                                      metalContext11 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                      v91 = createTextureFromCVPixelBuffer(v89, metalContext11, 0);
                                      dilatedLsMapTexture = v13->_dilatedLsMapTexture;
                                      v13->_dilatedLsMapTexture = v91;

                                      if (v13->_dilatedLsMapTexture)
                                      {
                                        v93 = CreatePixelBuffer();
                                        v13->_temporalMitigated = v93;
                                        if (v93)
                                        {
                                          v94 = v93;
                                          metalContext12 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                          v96 = createSingleTextureFromYuvBuffer(v94, metalContext12, 0, 0);
                                          temporalMitigatedTexture = v13->_temporalMitigatedTexture;
                                          v13->_temporalMitigatedTexture = v96;

                                          if (v13->_temporalMitigatedTexture)
                                          {
                                            v98 = CreatePixelBuffer();
                                            v13->_hwSimTemporalMitigated = v98;
                                            if (v98)
                                            {
                                              v99 = v98;
                                              metalContext13 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                              v101 = createSingleTextureFromYuvBuffer(v99, metalContext13, 0, 0);
                                              hwSimTemporalMitigatedTexture = v13->_hwSimTemporalMitigatedTexture;
                                              v13->_hwSimTemporalMitigatedTexture = v101;

                                              if (v13->_hwSimTemporalMitigatedTexture)
                                              {
                                                v103 = CreatePixelBuffer();
                                                v13->_hwSimTemporalMitigatedOriRef = v103;
                                                if (v103)
                                                {
                                                  v104 = v103;
                                                  metalContext14 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                  v106 = createSingleTextureFromYuvBuffer(v104, metalContext14, 0, 0);
                                                  hwSimTemporalMitigatedOriRefTexture = v13->_hwSimTemporalMitigatedOriRefTexture;
                                                  v13->_hwSimTemporalMitigatedOriRefTexture = v106;

                                                  if (v13->_hwSimTemporalMitigatedOriRefTexture)
                                                  {
                                                    v108 = CreatePixelBuffer();
                                                    v13->_inputCopy = v108;
                                                    if (v108)
                                                    {
                                                      v109 = v108;
                                                      metalContext15 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                      v111 = createSingleTextureFromYuvBuffer(v109, metalContext15, 0, 0);
                                                      inputCopyTexture = v13->_inputCopyTexture;
                                                      v13->_inputCopyTexture = v111;

                                                      if (v13->_inputCopyTexture)
                                                      {
                                                        v113 = CreatePixelBuffer();
                                                        v13->_fullResInputCopy = v113;
                                                        if (v113)
                                                        {
                                                          v114 = v113;
                                                          metalContext16 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                          v116 = createSingleTextureFromYuvBuffer(v114, metalContext16, 0, 0);
                                                          fullResInputCopyTexture = v13->_fullResInputCopyTexture;
                                                          v13->_fullResInputCopyTexture = v116;

                                                          if (v13->_fullResInputCopyTexture)
                                                          {
                                                            v118 = CreatePixelBuffer();
                                                            v13->_input4MotionCue = v118;
                                                            if (v118)
                                                            {
                                                              v119 = v118;
                                                              metalContext17 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                              v121 = createSingleTextureFromYuvBuffer(v119, metalContext17, 0, 0);
                                                              input4MotionCueTexture = v13->_input4MotionCueTexture;
                                                              v13->_input4MotionCueTexture = v121;

                                                              if (v13->_input4MotionCueTexture)
                                                              {
                                                                v123 = CreatePixelBuffer();
                                                                v13->_ref4MotionCue = v123;
                                                                if (v123)
                                                                {
                                                                  v124 = v123;
                                                                  metalContext18 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                  v126 = createSingleTextureFromYuvBuffer(v124, metalContext18, 0, 0);
                                                                  ref4MotionCueTexture = v13->_ref4MotionCueTexture;
                                                                  v13->_ref4MotionCueTexture = v126;

                                                                  if (v13->_ref4MotionCueTexture)
                                                                  {
                                                                    v128 = CreatePixelBuffer();
                                                                    v13->_spatialMitigatedLl = v128;
                                                                    if (v128)
                                                                    {
                                                                      v129 = v128;
                                                                      metalContext19 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                      v131 = createSingleTextureFromYuvBuffer(v129, metalContext19, 0, 0);
                                                                      spatialMitigatedLlTexture = v13->_spatialMitigatedLlTexture;
                                                                      v13->_spatialMitigatedLlTexture = v131;

                                                                      if (v13->_spatialMitigatedLlTexture)
                                                                      {
                                                                        v133 = CreatePixelBuffer();
                                                                        v13->_warpedHwLsMask4Track = v133;
                                                                        if (v133)
                                                                        {
                                                                          v134 = v133;
                                                                          metalContext20 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                          v136 = createTextureFromCVPixelBuffer(v134, metalContext20, 0);
                                                                          warpedHwLsMask4TrackTexture = v13->_warpedHwLsMask4TrackTexture;
                                                                          v13->_warpedHwLsMask4TrackTexture = v136;

                                                                          if (v13->_warpedHwLsMask4TrackTexture)
                                                                          {
                                                                            getDevice2 = [(GGMMetalToolBox *)v13->_metalToolBox getDevice];
                                                                            v139 = [getDevice2 newBufferWithLength:10192 options:0];
                                                                            futureMetaTmp = v13->_futureMetaTmp;
                                                                            v13->_futureMetaTmp = v139;

                                                                            if (v13->_futureMetaTmp)
                                                                            {
                                                                              getDevice3 = [(GGMMetalToolBox *)v13->_metalToolBox getDevice];
                                                                              v142 = [getDevice3 newBufferWithLength:10192 options:0];
                                                                              futureMeta4LsCheck = v13->_futureMeta4LsCheck;
                                                                              v13->_futureMeta4LsCheck = v142;

                                                                              if (v13->_futureMeta4LsCheck)
                                                                              {
                                                                                getDevice4 = [(GGMMetalToolBox *)v13->_metalToolBox getDevice];
                                                                                v145 = [getDevice4 newBufferWithLength:10192 options:0];
                                                                                futureMeta4RedoTracking = v13->_futureMeta4RedoTracking;
                                                                                v13->_futureMeta4RedoTracking = v145;

                                                                                if (v13->_futureMeta4RedoTracking)
                                                                                {
                                                                                  *&v13->_estOpticalCenterOffset[7] = 0;
                                                                                  *&v13->_prevOpticalCenterEstConf = 0;
                                                                                  metalContext21 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                                  device = [metalContext21 device];
                                                                                  v149 = [device newBufferWithLength:264 options:0];
                                                                                  v150 = *&v13->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount;
                                                                                  *&v13->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount = v149;

                                                                                  if (*&v13->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount)
                                                                                  {
                                                                                    [(VideoDeghostingDetectionV3 *)v13 _resetTrackingRoiAvoidList];
                                                                                    v151 = 3024;
                                                                                    while (1)
                                                                                    {
                                                                                      v152 = CreatePixelBuffer();
                                                                                      *(&v13->super.isa + v151) = v152;
                                                                                      if (!v152)
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v153 = v152;
                                                                                      metalContext22 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                                      v155 = createTextureFromCVPixelBuffer(v153, metalContext22, 0);
                                                                                      v156 = *(&v13->_calcTransform + v151);
                                                                                      *(&v13->_calcTransform + v151) = v155;

                                                                                      if (!*(&v13->_calcTransform + v151))
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v157 = CreatePixelBuffer();
                                                                                      *(&v13->_frameT + v151) = v157;
                                                                                      if (!v157)
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v158 = v157;
                                                                                      metalContext23 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                                      v160 = createTextureFromCVPixelBuffer(v158, metalContext23, 0);
                                                                                      v161 = *(&v13->_frameTPlus2Buf + v151);
                                                                                      *(&v13->_frameTPlus2Buf + v151) = v160;

                                                                                      if (!*(&v13->_frameTPlus2Buf + v151))
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v162 = CreatePixelBuffer();
                                                                                      *(&v13->_hmgrphyTMinus1ToT.confidence + v151) = v162;
                                                                                      if (!v162)
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v163 = v162;
                                                                                      metalContext24 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                                      v165 = createTextureFromCVPixelBuffer(v163, metalContext24, 0);
                                                                                      v166 = *&v13->_anon_64[v151 + 20];
                                                                                      *&v13->_anon_64[v151 + 20] = v165;

                                                                                      if (!*&v13->_anon_64[v151 + 20])
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v167 = CreatePixelBuffer();
                                                                                      *&v13->_anon_64[v151 + 44] = v167;
                                                                                      if (!v167)
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v168 = v167;
                                                                                      metalContext25 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                                      v170 = createSingleTextureFromYuvBuffer(v168, metalContext25, 0, 0);
                                                                                      v171 = *&v13->_anon_a4[v151 + 4];
                                                                                      *&v13->_anon_a4[v151 + 4] = v170;

                                                                                      if (!*&v13->_anon_a4[v151 + 4])
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v172 = CreatePixelBuffer();
                                                                                      *&v13->_anon_a4[v151 + 28] = v172;
                                                                                      if (!v172)
                                                                                      {
                                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                        goto LABEL_89;
                                                                                      }

                                                                                      v173 = v172;
                                                                                      metalContext26 = [(GGMMetalToolBox *)v13->_metalToolBox metalContext];
                                                                                      v175 = createSingleTextureFromYuvBuffer(v173, metalContext26, 0, 0);
                                                                                      v176 = *&v13->_anon_a4[v151 + 52];
                                                                                      *&v13->_anon_a4[v151 + 52] = v175;

                                                                                      if (!*&v13->_anon_a4[v151 + 52])
                                                                                      {
                                                                                        break;
                                                                                      }

                                                                                      v151 += 8;
                                                                                      if (v151 == 3048)
                                                                                      {
                                                                                        v177 = v13;
                                                                                        goto LABEL_90;
                                                                                      }
                                                                                    }

                                                                                    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                                }
                                                              }

                                                              else
                                                              {
                                                                [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                              }
                                                            }

                                                            else
                                                            {
                                                              [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                            }
                                                          }

                                                          else
                                                          {
                                                            [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                          }
                                                        }

                                                        else
                                                        {
                                                          [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                        }
                                                      }

                                                      else
                                                      {
                                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                      }
                                                    }

                                                    else
                                                    {
                                                      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                    }
                                                  }

                                                  else
                                                  {
                                                    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                  }
                                                }

                                                else
                                                {
                                                  [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                                }
                                              }

                                              else
                                              {
                                                [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                              }
                                            }

                                            else
                                            {
                                              [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                            }
                                          }

                                          else
                                          {
                                            [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                          }
                                        }

                                        else
                                        {
                                          [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                        }
                                      }

                                      else
                                      {
                                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                      }
                                    }

                                    else
                                    {
                                      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                    }
                                  }

                                  else
                                  {
                                    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                  }
                                }

                                else
                                {
                                  [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                                }
                              }

                              else
                              {
                                [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                              }
                            }

                            else
                            {
                              [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                            }
                          }

                          else
                          {
                            [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                          }
                        }

                        else
                        {
                          [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                        }
                      }

                      else
                      {
                        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                      }
                    }

                    else
                    {
                      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                    }
                  }

                  else
                  {
                    [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                  }
                }

                else
                {
                  [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
                }
              }

              else
              {
                [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
              }
            }

            else
            {
              [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
            }
          }

          else
          {
            [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
          }
        }

        else
        {
          [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
        }
      }

      else
      {
        [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
      }
    }

    else
    {
      [VideoDeghostingDetectionV3 initWithMetalContext:config:tuningParamDict:imageDimensions:];
    }
  }

LABEL_89:
  v177 = 0;
LABEL_90:
  contextCopy = v179;
LABEL_91:

  return v177;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_frameT);
  CVPixelBufferRelease(self->_frameTMinus1);
  CVPixelBufferRelease(self->_frameTMinus2);
  CVPixelBufferRelease(self->_warpedReflTrackingRef);
  CVPixelBufferRelease(self->_warpedRefProbMap);
  CVPixelBufferRelease(self->_rawWarpedRefProbMap);
  CVPixelBufferRelease(self->_rawWarpedRefSpaProbMap);
  CVPixelBufferRelease(self->_refinedReflLs4trackingRefWarped);
  CVPixelBufferRelease(self->_temporalMitigated);
  CVPixelBufferRelease(self->_hwSimTemporalMitigated);
  CVPixelBufferRelease(self->_hwSimTemporalMitigatedOriRef);
  CVPixelBufferRelease(self->_inputCopy);
  CVPixelBufferRelease(self->_fullResInputCopy);
  CVPixelBufferRelease(self->_lrHwLsMask0);
  CVPixelBufferRelease(self->_lrHwLsMask1);
  CVPixelBufferRelease(self->_reflHwLsMask0);
  CVPixelBufferRelease(self->_reflHwLsMask1);
  CVPixelBufferRelease(self->_warpedHwLsMask4Track);
  CVPixelBufferRelease(self->_input4MotionCue);
  CVPixelBufferRelease(self->_ref4MotionCue);
  CVPixelBufferRelease(self->_dilatedLsMap);
  CVPixelBufferRelease(self->_spatialMitigatedLl);
  CVPixelBufferRelease(self->_reflTarget);
  CVPixelBufferRelease(self->_reflRef);
  CVPixelBufferRelease(self->_warpedRefSpatialProbMap);
  for (i = 3024; i != 3048; i += 8)
  {
    CVPixelBufferRelease(*(&self->_hmgrphyTMinus1ToT.confidence + i));
    CVPixelBufferRelease(*(&self->super.isa + i));
    CVPixelBufferRelease(*(&self->_frameT + i));
    CVPixelBufferRelease(*&self->_anon_64[i + 44]);
    CVPixelBufferRelease(*&self->_anon_a4[i + 28]);
  }

  for (j = 0; j != 3; ++j)
  {
    CVPixelBufferRelease(self->_probMap4RepairQueue[j]);
    CVPixelBufferRelease(self->_probMap4SpatialRepairQueue[j]);
  }

  [(VideoDeghostingDetectionV3 *)self releaseHWMetadata];
  free(*self->_arrayOfLightSourceBBox);
  v5.receiver = self;
  v5.super_class = VideoDeghostingDetectionV3;
  [(VideoDeghostingDetectionV3 *)&v5 dealloc];
}

- (int)allocateHWMetadata
{
  v3 = 0;
  metaArray_HW = self->_metaArray_HW;
  while (1)
  {
    v5 = [NSMutableData dataWithLength:2584];
    v6 = metaArray_HW[v3];
    metaArray_HW[v3] = v5;

    bytes = [(NSMutableData *)metaArray_HW[v3] bytes];
    if (!metaArray_HW[v3])
    {
      break;
    }

    v8 = bytes;
    if ([(RepairWeightsGenerator *)self->_repairWeightsGenerator borderPixelBufferPool])
    {
      CVPixelBufferPoolCreatePixelBuffer(0, [(RepairWeightsGenerator *)self->_repairWeightsGenerator borderPixelBufferPool], v8 + 321);
    }

    if (++v3 == 66)
    {
      return 0;
    }
  }

  [(VideoDeghostingDetectionV3 *)bytes allocateHWMetadata];
  return -1;
}

- (void)releaseHWMetadata
{
  v2 = 0;
  metaArray_HW = self->_metaArray_HW;
  do
  {
    v4 = metaArray_HW[v2];
    if (v4)
    {
      CVPixelBufferRelease(*([(NSMutableData *)v4 bytes]+ 321));
      v5 = metaArray_HW[v2];
      metaArray_HW[v2] = 0;
    }

    ++v2;
  }

  while (v2 != 66);
}

- (void)reset
{
  inputTexture = self->_inputTexture;
  self->_inputTexture = 0;

  frameTMinus1Texture = self->_frameTMinus1Texture;
  self->_frameTMinus1Texture = 0;

  frameTMinus2Texture = self->_frameTMinus2Texture;
  self->_frameTMinus2Texture = 0;

  localMotionReferenceTexture = self->_localMotionReferenceTexture;
  self->_localMotionReferenceTexture = 0;

  frameTPlus1Texture = self->_frameTPlus1Texture;
  self->_frameTPlus1Texture = 0;

  frameT = self->_frameT;
  if (frameT)
  {
    CFRelease(frameT);
    self->_frameT = 0;
  }

  frameTMinus1 = self->_frameTMinus1;
  if (frameTMinus1)
  {
    CFRelease(frameTMinus1);
    self->_frameTMinus1 = 0;
  }

  frameTMinus2 = self->_frameTMinus2;
  if (frameTMinus2)
  {
    CFRelease(frameTMinus2);
    self->_frameTMinus2 = 0;
  }

  [(RepairWeightsGenerator *)self->_repairWeightsGenerator reset];
  [(VideoDeghostingDetectionV3 *)self _resetIntermediateVariables];

  [(VideoDeghostingDetectionV3 *)self _resetTrackingRoiAvoidList];
}

- (void)_resetIntermediateVariables
{
  self->_currSegmentProcessedFrameCnt = 0;
  LOBYTE(self->_trackingRoiAvoidListBuf) = 0;
  v2 = matrix_identity_float3x3.columns[0];
  v3 = matrix_identity_float3x3.columns[1];
  *&self->_hmgrphyTMinus1ToT.confidence = matrix_identity_float3x3.columns[0];
  *&self->_anon_64[12] = v3;
  v4 = matrix_identity_float3x3.columns[2];
  *&self->_anon_64[28] = v4;
  *&self->_anon_64[44] = 0;
  *&self->_anon_64[52] = 0;
  *&self->_hmgrphyTMinus2ToTMinus1.confidence = v2;
  *&self->_anon_a4[12] = v3;
  *&self->_anon_a4[28] = v4;
  *&self->_anon_a4[44] = 0;
  *&self->_anon_a4[52] = 0;
  *&self->_hmgrphyTMinus2ToT.confidence = v2;
  *&self->_anon_e4[12] = v3;
  *&self->_anon_e4[28] = v4;
  *&self->_anon_e4[44] = 0;
  *&self->_anon_e4[52] = 0;
  *&self->_localMotionRefHomography.confidence = v2;
  *&self->_anon_124[12] = v3;
  *&self->_anon_124[28] = v4;
  *&self->_estOpticalCenterOffset[7] = 0;
  *&self->_prevOpticalCenterEstConf = 0;
  *&self->_anon_124[44] = 0;
  *&self->_anon_124[52] = 0;
}

- (void)_resetTrackingRoiAvoidList
{
  contents = [*&self->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount contents];
  memset_pattern16(contents, &unk_43810, 0x100uLL);
  *(contents + 64) = 0;
  *(contents + 260) = 0;
}

- (void)_initParamsWithTuningParamsDict:(id)dict isLowLight:(BOOL)light
{
  dictCopy = dict;
  v5 = [dictCopy objectForKeyedSubscript:@"DetectionAndTracking"];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdON"];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v5 objectForKeyedSubscript:@"LSGatingThresholdON"];
  if (!v10)
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v5 objectForKeyedSubscript:@"LSGatingThresholdOFF"];
  if (!v12)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v5 objectForKeyedSubscript:@"LSBboxSizeThreshold"];
  if (!v14)
  {
LABEL_11:

    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v5 objectForKeyedSubscript:@"LSSelectionCntLimitNew"];
  if (!v16)
  {

    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v5 objectForKeyedSubscript:@"LSSelectionCntLimitAll"];

  if (v18)
  {
    v19 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdON"];
    LODWORD(self->_params.lightSourceBoxSizeThreshold) = [v19 intValue];

    v20 = [dictCopy objectForKeyedSubscript:@"LuxLevelThresholdOFF"];
    self->_configuration.internalCfg.clipThreshold = [v20 intValue];

    v21 = [v5 objectForKeyedSubscript:@"LSGatingThresholdON"];
    self->_params.lightSourceSelectionCntLimitNew = [v21 intValue];

    v22 = [v5 objectForKeyedSubscript:@"LSGatingThresholdOFF"];
    self->_params.lightSourceSelectionCntLimitAll = [v22 intValue];

    v23 = [v5 objectForKeyedSubscript:@"LSBboxSizeThreshold"];
    *&self->_configuration.internalCfg.patchSize = [v23 intValue];

    v24 = [v5 objectForKeyedSubscript:@"LSSelectionCntLimitNew"];
    self->_params.luxLevelGatingThresholdON = [v24 intValue];

    v25 = [v5 objectForKeyedSubscript:@"LSSelectionCntLimitAll"];
    self->_params.luxLevelGatingThresholdOFF = [v25 intValue];

    goto LABEL_16;
  }

LABEL_15:
  *&self->_params.lightSourceBoxSizeThreshold = 0x3E800000320;
  self->_configuration.internalCfg.patchSize = 1090519040;
  *&self->_params.lightSourceSelectionCntLimitNew = xmmword_43800;
LABEL_16:
}

- (void)prepareDataForNextFrameWithFrameData:(id *)data outputFutureOpticalCenter:outputFutureLightSourceMaskTotalArea:doLite:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  self->_futurePackedLsMask = data->var5;
  objc_storeStrong(&self->_futureInfo, data->var1);
  var0 = data->var0;
  cvMetalTextureCacheRef = [(GGMMetalToolBox *)self->_metalToolBox cvMetalTextureCacheRef];
  metalContext = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  v14 = createSingleCachedTextureFromPixelBuffer(var0, cvMetalTextureCacheRef, metalContext, 0, 0);
  frameTPlus1Texture = self->_frameTPlus1Texture;
  self->_frameTPlus1Texture = v14;

  calcTransform = self->_calcTransform;
  if (calcTransform)
  {
    objc_msgSend_ispHomographyFromMetaInfo_(calcTransform);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
  }

  v17 = v36;
  *&self->_hmgrphyTToTPlus1.confidence = v35;
  *&self->_anon_164[12] = v17;
  v18 = v38;
  *&self->_anon_164[28] = v37;
  *&self->_anon_164[44] = v18;
  *&self->_anon_1a4[44] = *&self->_anon_164[44];
  v67 = __invert_f3(*&self->_hmgrphyTToTPlus1.confidence);
  *&self->_anon_1a4[4] = v67.columns[0].i32[2];
  *&self->_hmgrphyTPlus1ToT.confidence = v67.columns[0].i64[0];
  *&self->_anon_1a4[20] = v67.columns[1].i32[2];
  *&self->_anon_1a4[12] = v67.columns[1].i64[0];
  *&self->_anon_1a4[36] = v67.columns[2].i32[2];
  *&self->_anon_1a4[28] = v67.columns[2].i64[0];
  [(VDGDetectionUtilsV3 *)self->_detectionUtils calcOpticalCenterFromMetaData:self->_futureInfo];
  v20.f64[1] = v19;
  *&v20.f64[0] = vcvt_f32_f64(v20);
  *&self->_futureIspBaseOpticalCenter[7] = v20.f64[0];
  *v8 = vadd_f32(*&self->_estOpticalCenterOffset[7], *&v20.f64[0]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = [(NSDictionary *)self->_futureInfo objectForKeyedSubscript:@"IspScalerInfo", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  [v21 getBytes:&v35 length:576];
  [(VDGDetectionUtilsV3 *)self->_detectionUtils setSimParams:&self->_futureSimParams withMetaData:self->_futureInfo];
  v22 = (self->_futureSimParams.lsMaskMapping[0] * HIDWORD(v46)) * self->_futureSimParams.lsMaskMapping[1];
  self->_lightweightDetectorInputs.exposureTime = v22;
  *v7 = v22;
  LOBYTE(self->_trackingRoiAvoidListBuf) = v22 <= 1.0;
  if ((v6 & 1) == 0)
  {
    if (self->_useContainer0ForNextFrame)
    {
      v23 = 2856;
    }

    else
    {
      v23 = 2872;
    }

    if (self->_useContainer0ForNextFrame)
    {
      v24 = 2864;
    }

    else
    {
      v24 = 2880;
    }

    if (!*(&self->super.isa + v23) || (lightSourceWidth = self->_futureSimParams.lightSourceWidth, lightSourceWidth != [*(&self->super.isa + v24) width]) || (lightSourceHeight = self->_futureSimParams.lightSourceHeight, lightSourceHeight != objc_msgSend(*(&self->super.isa + v24), "height")))
    {
      CVPixelBufferRelease(*(&self->super.isa + v23));
      PixelBuffer = CreatePixelBuffer();
      *(&self->super.isa + v23) = PixelBuffer;
      metalContext2 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
      v29 = createTextureFromCVPixelBuffer(PixelBuffer, metalContext2, 0);
      v30 = *(&self->super.isa + v24);
      *(&self->super.isa + v24) = v29;
    }

    futurePackedLsMask = self->_futurePackedLsMask;
    metalContext3 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
    v33 = createTextureFromCVPixelBufferWithReadFmt(futurePackedLsMask, metalContext3, 0, 0);
    futurePackedLsMaskTex = self->_futurePackedLsMaskTex;
    self->_futurePackedLsMaskTex = v33;
  }

  __destructor_8_s8_s16_s24_s32(data);
}

- (void)getFutureRoisFutureOpticalCenter:(float)center futureLightSourceMaskTotalArea:(id *)area currFrameMetaContainer:(float)container futureFrameMetaBuf:
{
  v8 = *&center;
  detectionType = self->_configuration.externalCfg.detectionType;
  futureInfo = self->_futureInfo;
  v12 = v5;
  v13 = isLowLightingCondition(detectionType, futureInfo);
  LODWORD(futureInfo) = self->_useContainer0ForNextFrame;
  *&v14 = container;
  v15 = [(VideoDeghostingDetectionV3 *)self getRoisFromPackedHwLsMask:self->_futurePackedLsMask opticalCenter:area prevMetaContainer:1 considerDist2PrevGhostWhenSort:v8 lightSourceMaskTotalArea:v14];
  if (futureInfo)
  {
    v16 = 544;
  }

  else
  {
    v16 = 552;
  }

  v17 = *(&self->super.isa + v16);
  *(&self->super.isa + v16) = v15;

  if (self->_useContainer0ForNextFrame)
  {
    v18 = 544;
  }

  else
  {
    v18 = 552;
  }

  v26 = [(VDGDetectionUtilsV3 *)self->_detectionUtils generateDetectionRoiList:*(&self->super.isa + v18)];
  contents = [v12 contents];

  bzero(contents, 0x27D0uLL);
  LODWORD(v20) = *&self->_gateOutFrame;
  *&v21 = container;
  [(GGMMetalToolBox *)self->_metalToolBox updateMetaContainerBuffer:self->_futureMetaTmp withDetectedROI:v26 isLowLight:v13 opticalCenter:v8 ispBaseOpticalCenter:*&self->_futureIspBaseOpticalCenter[7] opticalCenterEstConf:v20 frameDim:*self->_frameDim lightSourceMaskTotalArea:v21];
  [(VideoDeghostingDetectionV3 *)self getWeightsOriginalFromInfo:self->_futureInfo];
  contents[2378] = v22;
  contents2 = [(MTLBuffer *)self->_futureMeta4LsCheck contents];
  contents3 = [(MTLBuffer *)self->_futureMeta4RedoTracking contents];
  contents4 = [(MTLBuffer *)self->_futureMetaTmp contents];
  bzero(contents2, 0x27D0uLL);
  bzero(contents3, 0x27D0uLL);
  *(contents2 + 8) = *(contents4 + 8);
  *(contents2 + 3) = *(contents4 + 3);
  *(contents2 + 4) = *(contents4 + 4);
  *(contents2 + 1204) = *(contents4 + 1204);
  *(contents3 + 8) = *(contents4 + 8);
  *(contents3 + 3) = *(contents4 + 3);
  *(contents3 + 4) = *(contents4 + 4);
  *(contents3 + 1204) = *(contents4 + 1204);
}

- (void)getMvfToNextFrameForTrackingCurrMeta:(id)meta lsMap:(id)map futureLsMap:(id)lsMap commandBuffer:(id)buffer
{
  metaCopy = meta;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [(GGMMetalToolBox *)self->_metalToolBox encodeGetTrackingHmgrphyAlignmentErrorYUVToCommandEncoder:computeCommandEncoder target:self->_inputTexture ref:self->_frameTPlus1Texture meta:metaCopy];
  [(GGMMetalToolBox *)self->_metalToolBox encodeBMSearch1RefToCommandEncoder:computeCommandEncoder target:self->_inputTexture ref:self->_frameTPlus1Texture meta:metaCopy];
  [(GGMMetalToolBox *)self->_metalToolBox encodeCollectMvToFuture:computeCommandEncoder metaBuf:metaCopy];

  [computeCommandEncoder endEncoding];
}

- (void)doTrackingToNextFrameCurrMeta:(id)meta futureMeta:(id)futureMeta doLite:(BOOL)lite commandBuffer:(id)buffer
{
  liteCopy = lite;
  futureMetaCopy = futureMeta;
  bufferCopy = buffer;
  metaCopy = meta;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  LOBYTE(v18) = liteCopy;
  HIDWORD(v17) = self->_params.lightSourceGatingThresholdOFF;
  LOBYTE(v17) = self->_isFirstFrameOfCurrSegment;
  [(GGMMetalToolBox *)self->_metalToolBox encodeWarpRefMeta:computeCommandEncoder refMetaBuf:metaCopy metaBuf:self->_futureMetaTmp outMetaBuf:futureMetaCopy lsCheckOutmetaBuf:self->_futureMeta4LsCheck redoTrackingOutmetaBuf:self->_futureMeta4RedoTracking roiAvoidList:*&self->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount capRefMetaCnt:v17 currTrackId:v18 doLite:?];

  if (!liteCopy)
  {
    if (self->_useContainer0ForNextFrame)
    {
      v14 = 2912;
    }

    else
    {
      v14 = 2896;
    }

    [(GGMMetalToolBox *)self->_metalToolBox encodeBMTransferGrayToCommandEncoder:computeCommandEncoder ref:*(&self->super.isa + v14) warpedRef:self->_warpedHwLsMask4TrackTexture meta:self->_futureMeta4LsCheck];
    [(GGMMetalToolBox *)self->_metalToolBox encodeBMTransferYUVToCommandEncoder:computeCommandEncoder ref:self->_inputTexture warpedRef:self->_warpedReflTrackingRefTexture meta:self->_futureMeta4LsCheck];
    if (self->_useContainer0ForNextFrame)
    {
      v15 = 2896;
    }

    else
    {
      v15 = 2912;
    }

    [(GGMMetalToolBox *)self->_metalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:computeCommandEncoder reflHwMap:*(&self->super.isa + v15) target:self->_frameTPlus1Texture warpedRefReflHwMap:self->_warpedHwLsMask4TrackTexture warpedReflRef:self->_warpedReflTrackingRefTexture metaBuf:self->_futureMeta4LsCheck];
  }

  [(GGMMetalToolBox *)self->_metalToolBox encodeCollectMetaContainers:computeCommandEncoder metaBuf:futureMetaCopy lsCheckOutmetaBuf:self->_futureMeta4LsCheck redoTrackingOutmetaBuf:self->_futureMeta4RedoTracking doLite:liteCopy roiAvoidList:*&self->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount];
  [computeCommandEncoder endEncoding];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __92__VideoDeghostingDetectionV3_doTrackingToNextFrameCurrMeta_futureMeta_doLite_commandBuffer___block_invoke;
  v19[3] = &unk_48A10;
  v19[4] = self;
  v16 = objc_retainBlock(v19);
  [bufferCopy addCompletedHandler:v16];
}

uint64_t __92__VideoDeghostingDetectionV3_doTrackingToNextFrameCurrMeta_futureMeta_doLite_commandBuffer___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 3640) += *[*(*(a1 + 32) + 3472) contents];

  return kdebug_trace();
}

- (float)getWeightsOriginalFromInfo:(id)info
{
  v4 = kFigCaptureStreamMetadata_LuxLevel;
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:v4];
  intValue = [v6 intValue];

  clipThreshold = self->_configuration.internalCfg.clipThreshold;
  v9 = clipThreshold + ((SLODWORD(self->_params.lightSourceBoxSizeThreshold) - clipThreshold) * 0.5);
  v10 = fminf(fmaxf((intValue - v9) / (clipThreshold - v9), 0.0), 1.0);
  self->_trackID = intValue;
  v11 = [infoCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_ExposureTime];

  [v11 floatValue];
  self->_LSTrackID = v12;

  return v10;
}

- (id)process:(__CVBuffer *)process metaData:(id)data ispTimeStamp:(id *)stamp keypoints:(__CVBuffer *)keypoints lightSourceMask:(__CVBuffer *)mask futureFrames:(id *)frames
{
  dataCopy = data;
  if (self->_trackingRoiAvoidListBuf)
  {
    v14 = 0;
    goto LABEL_69;
  }

  maskCopy = mask;
  stampCopy = stamp;
  kdebug_trace();
  v150 = isLowLightingCondition(self->_configuration.externalCfg.detectionType, dataCopy);
  [(VDGDetectionUtilsV3 *)self->_detectionUtils calcOpticalCenterFromMetaData:dataCopy];
  v139 = v15;
  v140 = v16;
  processedFrameCnt = self->_processedFrameCnt;
  v18 = processedFrameCnt % 0x42;
  v129 = processedFrameCnt;
  currSegmentProcessedFrameCnt = self->_currSegmentProcessedFrameCnt;
  v128 = (processedFrameCnt - 1) % 0x42;
  v149 = self->_metaBufferArray[v128];
  v148 = self->_metaBufferArray[(self->_processedFrameCnt - 2) % 0x42];
  v133 = v18;
  v20 = self->_metaBufferArray[v18];
  metaBufferArray = self->_metaBufferArray;
  v21 = self->_metaBufferArray[(self->_processedFrameCnt + 1) % 0x42];
  v22 = self->_currSegmentProcessedFrameCnt;
  self->_useContainer0ForNextFrame = currSegmentProcessedFrameCnt & 1;
  var2 = frames->var2;
  self->_isFirstFrameOfEntireVideo = self->_processedFrameCnt == 0;
  self->_isFirstFrameOfCurrSegment = v22 == 0;
  processCopy = process;
  framesCopy = frames;
  [(VideoDeghostingDetectionV3 *)self _initDetection:process metaData:dataCopy futureFrames:frames];
  v146 = v20;
  contents = [(MTLBuffer *)v20 contents];
  v25 = v149;
  v147 = dataCopy;
  v135 = v21;
  v144 = var2;
  v143 = currSegmentProcessedFrameCnt;
  v137 = v22;
  if (!self->_isFirstFrameOfCurrSegment)
  {
    goto LABEL_25;
  }

  v26 = v149;
  [(VDGDetectionUtilsV3 *)self->_detectionUtils setSimParams:&self->_futureSimParams withMetaData:dataCopy];
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v27 = [dataCopy objectForKeyedSubscript:@"IspScalerInfo"];
  [v27 getBytes:&v155 length:576];
  v28 = (self->_futureSimParams.lsMaskMapping[0] * HIDWORD(v166)) * self->_futureSimParams.lsMaskMapping[1];
  if (v28 > 1.0)
  {
    v29.f64[0] = v139;
    v29.f64[1] = v140;
    v30 = vcvt_f32_f64(v29);
    if (!self->_lrHwLsMask0 || (lightSourceWidth = self->_futureSimParams.lightSourceWidth, lightSourceWidth != [(MTLTexture *)self->_lrHwLsMask0Texture width]) || (lightSourceHeight = self->_futureSimParams.lightSourceHeight, lightSourceHeight != [(MTLTexture *)self->_lrHwLsMask0Texture height]))
    {
      CVPixelBufferRelease(self->_lrHwLsMask0);
      PixelBuffer = CreatePixelBuffer();
      self->_lrHwLsMask0 = PixelBuffer;
      metalContext = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
      v35 = createTextureFromCVPixelBuffer(PixelBuffer, metalContext, 0);
      lrHwLsMask0Texture = self->_lrHwLsMask0Texture;
      self->_lrHwLsMask0Texture = v35;
    }

    metalContext2 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
    v38 = createTextureFromCVPixelBufferWithReadFmt(maskCopy, metalContext2, 0, 0);
    futurePackedLsMaskTex = self->_futurePackedLsMaskTex;
    self->_futurePackedLsMaskTex = v38;

    metalContext3 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
    commandQueue = [metalContext3 commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    [commandBuffer setLabel:@"detection"];
    width = [(MTLTexture *)self->_inputTexture width];
    height = [(MTLTexture *)self->_inputTexture height];
    v44.f32[0] = width;
    v44.f32[1] = height;
    [(VideoDeghostingDetectionV3 *)self processPackedHwLsMaskNormalizedCenter:self->_futurePackedLsMaskTex input:self->_lrHwLsMask0Texture lowResOutput:self->_reflHwLsMask0Texture highResOutput:commandBuffer commandBuffer:COERCE_DOUBLE(vdiv_f32(v30, v44))];
    commitCommandBuffer(commandBuffer, 1);
    *&v45 = v28;
    v46 = [(VideoDeghostingDetectionV3 *)self getRoisFromPackedHwLsMask:maskCopy opticalCenter:0 prevMetaContainer:0 considerDist2PrevGhostWhenSort:*&v30 lightSourceMaskTotalArea:v45];
    v47 = +[NSMutableArray array];
    v48 = 0;
    v49 = (fminf(fmaxf((v28 + -65536.0) / 196610.0, 0.0), 1.0) * -12000.0) + 18000.0;
    while (1)
    {
      v50 = [v46 count] > 5 ? &dword_4 + 2 : objc_msgSend(v46, "count");
      if (v50 <= v48)
      {
        break;
      }

      v51 = [v46 objectAtIndexedSubscript:v48];
      v52 = v51;
      if (!v150 || ([v51 area], v53 <= v49))
      {
        [v47 addObject:v52];
      }

      ++v48;
    }

    v54 = [(VDGDetectionUtilsV3 *)self->_detectionUtils generateDetectionRoiList:v47];
    bzero(contents, 0x27D0uLL);
    *&v55 = self->_prevOpticalCenterEstConf;
    *&v56 = v28;
    [(GGMMetalToolBox *)self->_metalToolBox updateMetaContainerBuffer:v146 withDetectedROI:v54 isLowLight:v150 opticalCenter:*&v30 ispBaseOpticalCenter:*&v30 opticalCenterEstConf:v55 frameDim:*self->_frameDim lightSourceMaskTotalArea:v56];
    [(VideoDeghostingDetectionV3 *)self getWeightsOriginalFromInfo:v147];
    contents[1189].i32[0] = v57;
    v58 = contents->i16[0];
    v25 = v149;
    if (v58 >= 1)
    {
      if (self->_isFirstFrameOfEntireVideo)
      {
        v59 = 16;
      }

      else
      {
        v59 = 0;
      }

      v60 = contents;
      do
      {
        lightSourceGatingThresholdOFF = self->_params.lightSourceGatingThresholdOFF;
        self->_params.lightSourceGatingThresholdOFF = lightSourceGatingThresholdOFF + 1;
        v60[133].i32[1] = lightSourceGatingThresholdOFF;
        v60[581].i32[0] = v59;
        v60 = (v60 + 4);
        --v58;
      }

      while (v58);
    }

    dataCopy = v147;
    currSegmentProcessedFrameCnt = v143;
    v22 = v137;
LABEL_25:
    v62 = currSegmentProcessedFrameCnt % 3;
    v132 = (currSegmentProcessedFrameCnt - 1) % 3;
    v151 = (currSegmentProcessedFrameCnt - 2) % 3;
    v142 = (currSegmentProcessedFrameCnt + 1) % 6;
    v130 = v22 % 3;
    v63 = [dataCopy objectForKeyedSubscript:@"ScalingFactor"];
    [v63 doubleValue];
    *&v64 = v64;
    contents[1203].i32[0] = LODWORD(v64);

    contents[1203].i32[1] = *([(MTLBuffer *)v25 contents]+ 2406);
    v65 = *&self->_hmgrphyTMinus1ToT.confidence;
    v66 = *&self->_anon_64[12];
    *contents[1194].f32 = *&self->_anon_64[28];
    *contents[1192].f32 = v66;
    *contents[1190].f32 = v65;
    contents[1202].i32[0] = *&self->_anon_64[44];
    v68 = *&self->_anon_e4[12];
    v67 = *&self->_anon_e4[28];
    *contents[1196].f32 = *&self->_hmgrphyTMinus2ToT.confidence;
    *contents[1198].f32 = v68;
    *contents[1200].f32 = v67;
    contents[1202].i32[1] = *&self->_anon_e4[44];
    contents[1212].i8[1] = self->_isFirstFrameOfEntireVideo;
    contents[1212].i8[0] = self->_isFirstFrameOfCurrSegment;
    v69 = *&self->_localMotionRefHomography.confidence;
    v70 = *&self->_anon_124[12];
    *contents[1210].f32 = *&self->_anon_124[28];
    *contents[1208].f32 = v70;
    *contents[1206].f32 = v69;
    contents[1220].i8[4] = currSegmentProcessedFrameCnt < 2;
    v154 = 0.0;
    v153 = 0;
    if (var2 >= 1)
    {
      __copy_constructor_8_8_t0w8_s8_s16_s24_s32_t40w8(v152, *framesCopy);
      [(VideoDeghostingDetectionV3 *)self prepareDataForNextFrameWithFrameData:v152 outputFutureOpticalCenter:&v154 outputFutureLightSourceMaskTotalArea:&v153 doLite:v142 != 0];
      v71 = *&self->_hmgrphyTPlus1ToT.confidence;
      v72 = *&self->_anon_1a4[12];
      *contents[1218].f32 = *&self->_anon_1a4[28];
      *contents[1216].f32 = v72;
      *contents[1214].f32 = v71;
      contents[1220].i32[0] = *&self->_anon_1a4[44];
      *&v71 = v154;
      *&contents[275] = v154;
      contents[276] = vdiv_f32(*&v71, vcvt_f32_u32(contents[1204]));
    }

    v73 = v22 % 6 != 0;
    v74 = v146;
    v75 = [(GGMMetalToolBox *)self->_metalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:v146 imageRect:0.0, 0.0, [(MTLTexture *)self->_inputTexture width], [(MTLTexture *)self->_inputTexture height]];
    metalContext4 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
    commandQueue2 = [metalContext4 commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    v79 = v75;
    [commandBuffer2 setLabel:@"detection"];
    v80 = 2896;
    if (v137)
    {
      v81 = 2896;
    }

    else
    {
      v81 = 2912;
    }

    lsMapTexQueue = self->_lsMapTexQueue;
    v83 = (currSegmentProcessedFrameCnt - 1) % 3;
    if (v137)
    {
      v80 = 2912;
    }

    LOBYTE(v125) = v73;
    [(VideoDeghostingDetectionV3 *)self _getRefinedLsMapsTarget:self->_inputTexture refLsMap:*(&self->super.isa + v81) refRefinedLsMap:self->_lsMapTexQueue[v132] lsMap:*(&self->super.isa + v80) refinedLsMap:lsMapTexQueue[v62] metaBuf:v146 metaBufArray:v79 doLite:v125 commandBuffer:commandBuffer2];
    inputTexture = self->_inputTexture;
    v85 = &self->super.isa + v62;
    if (v130)
    {
      v86 = v79;
      [VideoDeghostingDetectionV3 _getProbMapsLiteTarget:"_getProbMapsLiteTarget:refProbMap:refProbMapStash4FutureTracking:refRawRefinedProbMap:refRefinedProbMap:probMap:refinedLsMap:probMapStash4FutureTracking:rawRefinedProbMap:refinedProbMap:probMapRepairRef0:probMapRepairRef1:metaBuf:metaBufArray:commandBuffer:" refProbMap:inputTexture refProbMapStash4FutureTracking:self->_probMap4RepairTexQueue[v132] refRawRefinedProbMap:lsMapTexQueue[v62] refRefinedProbMap:self->_probMapTexQueue[v62] probMap:self->_spaProbMapTexQueue[v62] refinedLsMap:self->_probMap4SpatialRepairTexQueue[v62] probMapStash4FutureTracking:self->_probMapTexQueue[v132] rawRefinedProbMap:self->_probMapTexQueue[v151] refinedProbMap:v146 probMapRepairRef0:v79 probMapRepairRef1:commandBuffer2 metaBuf:? metaBufArray:? commandBuffer:?];
      v87 = v144;
    }

    else
    {
      v86 = v79;
      localMotionReferenceTexture = self->_localMotionReferenceTexture;
      v87 = v144;
      if (self->_currSegmentProcessedFrameCnt >= 4)
      {
        localMotionReferenceTexture = self->_trRepairedRefTexQueue[v151];
      }

      [VideoDeghostingDetectionV3 _getProbMapInput:"_getProbMapInput:motionCueRef:motionCueRefRepaired:trackingRef:trackingRefProb:trackingRefSpaProb:trackingRefLs:probMapRepairRef0:probMapRepairRef1:metaBuf:metaBufArray:trackingRefMetaBuf:motionCueRefMetaBuf:probMap:rawRefinedProbMap:refinedProbMap:refinedReflLs:probMapStash4FutureTracking:commandBuffer:" motionCueRef:inputTexture motionCueRefRepaired:self->_localMotionReferenceTexture trackingRef:localMotionReferenceTexture trackingRefProb:self->_frameTMinus1Texture trackingRefSpaProb:lsMapTexQueue[v132] trackingRefLs:self->_probMapTexQueue[v132] probMapRepairRef0:self->_probMapTexQueue[v151] probMapRepairRef1:v146 metaBuf:v86 metaBufArray:v149 trackingRefMetaBuf:v148 motionCueRefMetaBuf:v85[212] probMap:self->_spaProbMapTexQueue[v62] rawRefinedProbMap:v85[218] refinedProbMap:lsMapTexQueue[v62] refinedReflLs:self->_probMapTexQueue[v62] probMapStash4FutureTracking:commandBuffer2 commandBuffer:?];
    }

    v89 = v143;
    if (v87 >= 1)
    {
      if (!v142)
      {
        v90 = *&v154;
        width2 = [(MTLTexture *)self->_inputTexture width];
        height2 = [(MTLTexture *)self->_inputTexture height];
        v92.f32[0] = width2;
        v92.f32[1] = height2;
        v93 = COERCE_DOUBLE(vdiv_f32(v90, v92));
        v94 = 2880;
        if (self->_useContainer0ForNextFrame)
        {
          v94 = 2864;
        }

        v95 = *(&self->super.isa + v94);
        v96 = 2912;
        if (self->_useContainer0ForNextFrame)
        {
          v96 = 2896;
        }

        [(VideoDeghostingDetectionV3 *)self processPackedHwLsMaskNormalizedCenter:self->_futurePackedLsMaskTex input:v95 lowResOutput:*(&self->super.isa + v96) highResOutput:commandBuffer2 commandBuffer:v93];
        commitCommandBuffer(commandBuffer2, 1);
        metalContext5 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
        commandQueue3 = [metalContext5 commandQueue];
        commandBuffer3 = [commandQueue3 commandBuffer];

        v89 = v143;
        [commandBuffer3 setLabel:@"detection"];
        commandBuffer2 = commandBuffer3;
        v83 = v132;
        v87 = v144;
      }

      v100 = 2864;
      if (self->_useContainer0ForNextFrame)
      {
        v101 = 2880;
      }

      else
      {
        v101 = 2864;
      }

      if (!self->_useContainer0ForNextFrame)
      {
        v100 = 2880;
      }

      [(VideoDeghostingDetectionV3 *)self getMvfToNextFrameForTrackingCurrMeta:v146 lsMap:*(&self->super.isa + v101) futureLsMap:*(&self->super.isa + v100) commandBuffer:commandBuffer2];
    }

    frameTMinus1Texture = self->_inputTexture;
    if (v89 >= 2)
    {
      frameTMinus1Texture = self->_frameTMinus1Texture;
    }

    v103 = v146;
    v104 = v146;
    if (v89 >= 2)
    {
      v105 = 576;
    }

    else
    {
      v105 = 560;
    }

    trRepairedRefTexQueue = self->_trRepairedRefTexQueue;
    p_inputTexture = &self->_trRepairedRefTexQueue[v83];
    if (v89 < 2)
    {
      p_inputTexture = &self->_inputTexture;
    }

    v108 = &trRepairedRefTexQueue[v151];
    if (v89 < 2)
    {
      v108 = &self->_inputTexture;
    }

    hwSimRepairedRefTexQueue = self->_hwSimRepairedRefTexQueue;
    v110 = &self->_hwSimRepairedRefTexQueue[v83];
    if (v89 < 2)
    {
      v110 = &self->_inputTexture;
    }

    v111 = &hwSimRepairedRefTexQueue[v151];
    if (v89 >= 2)
    {
      v103 = metaBufferArray[v128];
      v104 = metaBufferArray[(v129 - 2) % 0x42];
    }

    else
    {
      v111 = &self->_inputTexture;
    }

    LOBYTE(v126) = v87 < 1;
    [(VideoDeghostingDetectionV3 *)self updateRepairedRefYUVInput:self->_inputTexture prob:v85[212] refinedProb:v85[218] rawRefinedProb:v85[387] frRef0:frameTMinus1Texture frRef1:*(&self->super.isa + v105) trRef0:*p_inputTexture trRef1:*v108 hwSimRef0:*v110 hwSimRef1:*v111 metaBuf:v146 metaBufArray:v86 metaRef0Buf:v103 metaRef1Buf:v104 trOutput:trRepairedRefTexQueue[v62] hwSimOutput:hwSimRepairedRefTexQueue[v62] commandBuffer:commandBuffer2 addEndOfDetectionSignPost:v126];
    v21 = v135;
    if (v87 >= 1)
    {
      LODWORD(v112) = v153;
      [(VideoDeghostingDetectionV3 *)self getFutureRoisFutureOpticalCenter:contents futureLightSourceMaskTotalArea:v135 currFrameMetaContainer:v154 futureFrameMetaBuf:v112];
      [(VideoDeghostingDetectionV3 *)self doTrackingToNextFrameCurrMeta:v146 futureMeta:v135 doLite:v142 != 0 commandBuffer:commandBuffer2];
    }

    commitCommandBuffer(commandBuffer2, 1);
    v113 = &self->super.isa + v133;
    v114 = v113[143];
    v115 = v113[287];
    v116 = v115;
    v117 = v114;
    [(RepairWeightsGenerator *)self->_repairWeightsGenerator process:processCopy info:v147 metaContainerBuffer:v146 computeBlendingWeights:contents->i16[0] > 0 futureFrames:framesCopy metaContainerBuffer_HW:[(objc_class *)v115 mutableBytes]];
    v118 = self->_configuration.externalCfg.forceLosslessFormat != 0;
    v119 = *(&self->_configuration.externalCfg.reportProcessingTime + 2) != 0;
    v120 = LOBYTE(self[1].super.isa) != 0;
    v121 = v113[287];
    prevOpticalCenterEstConf = self->_prevOpticalCenterEstConf;
    v123 = *&self->_estOpticalCenterOffset[7];
    v155 = *&stampCopy->var0;
    *&v156 = stampCopy->var3;
    v14 = packDetectionResult(v117, 0, v139, v140, prevOpticalCenterEstConf, v123, 0, v118, v147, &v155, v119, v120, 0, v121, *&self->_lightweightDetectorInputs.exposureTime);
    ++self->_processedFrameCnt;
    ++self->_currSegmentProcessedFrameCnt;

    dataCopy = v147;
    v26 = v149;
    goto LABEL_68;
  }

  v14 = 0;
  v74 = v146;
LABEL_68:

LABEL_69:

  return v14;
}

- (void)processPackedHwLsMaskNormalizedCenter:(id)center input:(id)input lowResOutput:(id)output highResOutput:(id)resOutput commandBuffer:
{
  v10 = v6;
  outputCopy = output;
  inputCopy = input;
  centerCopy = center;
  computeCommandEncoder = [resOutput computeCommandEncoder];
  [(GGMMetalToolBox *)self->_metalToolBox encodeUnpackLsMask:computeCommandEncoder input:centerCopy normalizedCenter:inputCopy output:v10];

  [(GGMMetalToolBox *)self->_metalToolBox encodeUpscaleThenReflectLsMap:computeCommandEncoder input:inputCopy normalizedCenter:outputCopy output:v10];
  [computeCommandEncoder endEncoding];
}

- (id)getRoisFromPackedHwLsMask:(VideoDeghostingDetectionV3 *)self opticalCenter:(SEL)center prevMetaContainer:(__CVBuffer *)container considerDist2PrevGhostWhenSort:(id *)sort lightSourceMaskTotalArea:(float)area
{
  v7 = v6;
  v8 = v5;
  v10 = *&area;
  kdebug_trace();
  LODWORD(v13) = 1.0;
  v14 = [(VideoDeghostingDetectionV3 *)self extractLightSourceBBoxFromBuffer:*self->_arrayOfLightSourceBBox BoxCount:[(MaskToRoi *)self->_maskToRoi extractRoiByGraphTraversalInput:container bboxSizeThreshold:&self->_futureSimParams scaleFactorInv:self->_futureSimParams.lightSourceWidth validWidth:self->_futureSimParams.lightSourceHeight validHeight:*self->_arrayOfLightSourceBBox lightSourceBBox:v13]];
  v15 = *&self->_gateOutFrame;
  v16 = +[NSMutableArray array];
  if ([v14 count])
  {
    v17 = 0;
    v18 = 1.0 - fminf(fmaxf(v15 / 0.9, 0.0), 1.0);
    v19 = (fminf(fmaxf((v7 + -65536.0) / 196610.0, 0.0), 1.0) * -12000.0) + 18000.0;
    v20 = v19 * 0.5;
    v21 = v19 - (v19 * 0.5);
    while (1)
    {
      v22 = [v14 objectAtIndexedSubscript:v17];
      [v22 reflectAroundCenter:v10];
      [v22 bbox];
      v78 = v23;
      [v22 bbox];
      v73 = v24;
      [v22 bbox];
      v77 = v25;
      [v22 bbox];
      v27.i32[0] = vextq_s8(v73, v73, 8uLL).u32[0];
      v27.i32[1] = vextq_s8(v26, v26, 8uLL).i32[1];
      v79 = vmla_f32(__PAIR64__(v77, v78), 0x3F0000003F000000, v27);
      [v22 bbox];
      v29 = v28;
      [v22 bbox];
      v30.f32[0] = 1.0 - fminf(fmaxf((vmuls_lane_f32(v29, v30, 3) - v20) / v21, 0.0), 1.0);
      if (v18 < v30.f32[0])
      {
        v30.f32[0] = v18;
      }

      if (v79.f32[0] > 0.0)
      {
        v31 = *self->_frameDim;
        if (v79.f32[0] < (v31 - 1) && v79.f32[1] > 0.0 && v79.f32[1] < (HIDWORD(v31) - 1))
        {
          break;
        }
      }

      [v16 addObject:{v22, *v30.i64}];
LABEL_24:

      if ([v14 count] <= ++v17)
      {
        goto LABEL_57;
      }
    }

    v30.f32[0] = v30.f32[0] * 10.0;
    v76 = *v30.f32;
    [v22 bbox];
    v74 = v32;
    [v22 bbox];
    v75 = COERCE_DOUBLE(vsub_f32(__PAIR64__(v33, v74), vdup_lane_s32(v76, 0)));
    [v22 bbox];
    [v22 bbox];
    [v22 setBbox:v75];
    [v22 setTrackedCnt:30];
    if (v8)
    {
      var0 = sort->var0;
      if (var0 >= 1)
      {
        v35 = 64.0;
        p_var6 = &sort[3].var9[25].var6;
        v37 = &sort->var9[1];
        while (1)
        {
          v38 = *p_var6++;
          if (v38 >= 0x10)
          {
            v39 = vsub_f32(vabd_f32(v79, v37[-1]), *v37);
            v40 = v39.f32[1];
            if (v39.f32[0] > v39.f32[1])
            {
              v40 = v39.f32[0];
            }

            v41 = vaddv_f32(v39);
            v42 = vcgtz_f32(v39);
            if (vpmin_u32(v42, v42).i32[0] >= 0)
            {
              v43 = v40;
            }

            else
            {
              v43 = v41;
            }

            if (v43 < v35)
            {
              v35 = v43;
            }

            if (v43 <= 0.0)
            {
              break;
            }
          }

          v37 += 4;
          if (!--var0)
          {
            goto LABEL_29;
          }
        }

        v35 = 0.0;
LABEL_29:
        [v22 bbox];
        v46 = v45;
        [v22 bbox];
        v48 = v47;
        [v22 bbox];
        if (v46 <= v48)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v81 = v49;
        *&v49 = 0;
        if ((v35 + (*(&v81 | (4 * v50)) * -0.5)) < 0.0)
        {
          goto LABEL_55;
        }

        if (v8)
        {
          v51 = sort->var0;
          if (v51 >= 1)
          {
            v52 = 64.0;
            v53 = &sort[3].var9[25].var6;
            v54 = &sort->var9[1];
            while (1)
            {
              v55 = *v53++;
              if (v55 >= 0x10)
              {
                v56 = vsub_f32(vabd_f32(v79, v54[-1]), *v54);
                v57 = v56.f32[1];
                if (v56.f32[0] > v56.f32[1])
                {
                  v57 = v56.f32[0];
                }

                v58 = vaddv_f32(v56);
                v59 = vcgtz_f32(v56);
                *&v49 = vpmin_u32(v59, v59);
                if (v49 >= 0)
                {
                  *&v49 = v57;
                }

                else
                {
                  *&v49 = v58;
                }

                if (*&v49 < v52)
                {
                  v52 = *&v49;
                }

                if (*&v49 <= 0.0)
                {
                  break;
                }
              }

              v54 += 4;
              if (!--v51)
              {
                goto LABEL_51;
              }
            }

            v52 = 0.0;
            goto LABEL_51;
          }

          *&v60 = 64.0;
        }

        else
        {
          *&v60 = INFINITY;
        }

        v52 = *&v60;
LABEL_51:
        [v22 bbox];
        v62 = v61;
        [v22 bbox];
        v64 = v63;
        [v22 bbox];
        if (v62 <= v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v80 = v49;
        *&v49 = v52 + (*(&v80 | (4 * v65)) * -0.5);
LABEL_55:
        [v22 setDist2ghost:*&v49];
        [v22 bbox];
        v67 = v66;
        [v22 bbox];
        v68.f32[0] = vmuls_lane_f32(v67, v68, 3);
        [v22 setArea:*v68.i64];
        v69 = vsub_f32(*&v10, v79);
        v70 = vmul_f32(v69, v69);
        v70.f32[0] = sqrtf(vaddv_f32(v70));
        [v22 setDist2opticalCenter:*&v70];
        goto LABEL_24;
      }

      *&v44 = 64.0;
    }

    else
    {
      *&v44 = INFINITY;
    }

    v35 = *&v44;
    goto LABEL_29;
  }

LABEL_57:
  [v14 removeObjectsInArray:v16];
  v71 = [(VideoDeghostingDetectionV3 *)self sortLsList:v14];

  kdebug_trace();

  return v71;
}

- (void)warpTrackingRefProbMap:(id)map refSpaProbMap:(id)probMap refReflLs:(id)ls refinedReflLsMap:(id)lsMap target:(id)target motionCueRef:(id)ref motionCueRepairedRef:(id)repairedRef metaBuf:(id)self0 motionCueRefMetaBuf:(id)self1 metaBufArray:(id *)self2 commandBuffer:(id)self3
{
  arrayCopy2 = array;
  mapCopy = map;
  probMapCopy = probMap;
  lsCopy = ls;
  lsMapCopy = lsMap;
  targetCopy = target;
  refCopy = ref;
  v23 = lsCopy;
  v55 = refCopy;
  repairedRefCopy = repairedRef;
  metaBufCopy = metaBuf;
  bufferCopy = buffer;
  v25 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v53 = v25;
  if (array->var1 >= 1)
  {
    v26 = 0;
    do
    {
      metalToolBox = self->_metalToolBox;
      rawWarpedRefProbMapTexture = self->_rawWarpedRefProbMapTexture;
      rawWarpedRefSpaProbMapTexture = self->_rawWarpedRefSpaProbMapTexture;
      v30 = array->var0[v26];
      v46 = rawWarpedRefSpaProbMapTexture;
      v25 = v53;
      [(GGMMetalToolBox *)metalToolBox encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:v53 ref0:mapCopy ref1:probMapCopy ref2:0 ref3:0 warpedRef0:rawWarpedRefProbMapTexture warpedRef1:v46 warpedRef2:0 warpedRef3:0 meta:v30];
      [(GGMMetalToolBox *)self->_metalToolBox encodeBMTransferGrayToCommandEncoder:v53 ref:v23 warpedRef:self->_refinedReflLs4trackingRefWarpedTexture meta:v30];

      ++v26;
    }

    while (v26 < array->var1);
  }

  v49 = v23;
  v50 = probMapCopy;
  [v25 endEncoding];
  v31 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v33 = v55;
  v32 = targetCopy;
  v34 = repairedRefCopy;
  v35 = metaBufCopy;
  if (array->var1 >= 1)
  {
    v36 = 0;
    v52 = v35;
    do
    {
      v37 = self->_metalToolBox;
      v38 = self->_rawWarpedRefProbMapTexture;
      v39 = self->_rawWarpedRefSpaProbMapTexture;
      warpedRefProbMapTexture = self->_warpedRefProbMapTexture;
      warpedRefSpatialProbMapTexture = self->_warpedRefSpatialProbMapTexture;
      dilatedLsMapTexture = self->_dilatedLsMapTexture;
      v42 = arrayCopy2->var0[v36];
      v47 = dilatedLsMapTexture;
      v43 = v38;
      v44 = v39;
      v33 = v55;
      v32 = targetCopy;
      v34 = repairedRefCopy;
      v45 = warpedRefSpatialProbMapTexture;
      v35 = v52;
      [(GGMMetalToolBox *)v37 encodeDilate3ProbMapsHardR2SoftR2:v31 input0:v43 input1:v44 input2:lsMapCopy output0:warpedRefProbMapTexture output1:v45 output2:v47 meta:v42];
      [(GGMMetalToolBox *)self->_metalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:v31 input:targetCopy ref:v55 repairedRef:repairedRefCopy output:self->_input4MotionCueTexture refOutput:self->_ref4MotionCueTexture metaBuf:v42 refMeta:v52];

      arrayCopy2 = array;
      ++v36;
    }

    while (v36 < array->var1);
  }

  [v31 endEncoding];
}

- (void)_getRefinedLsMapsTarget:(id)target refLsMap:(id)map refRefinedLsMap:(id)lsMap lsMap:(id)a6 refinedLsMap:(id)refinedLsMap metaBuf:(id)buf metaBufArray:(id *)array doLite:(BOOL)self0 commandBuffer:(id)self1
{
  mapCopy = map;
  lsMapCopy = lsMap;
  v16 = a6;
  refinedLsMapCopy = refinedLsMap;
  v18 = [buffer computeCommandEncoderWithDispatchType:1];
  var1 = array->var1;
  if (lite)
  {
    if (var1 >= 1)
    {
      v20 = 0;
      do
      {
        [(GGMMetalToolBox *)self->_metalToolBox encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:v18 ref0:lsMapCopy ref1:mapCopy ref2:0 ref3:0 warpedRef0:refinedLsMapCopy warpedRef1:v16 warpedRef2:0 warpedRef3:0 meta:array->var0[v20++]];
      }

      while (v20 < array->var1);
    }
  }

  else if (var1 >= 1)
  {
    v21 = 0;
    v22 = (llroundf((fminf(fmaxf(*&self->_gateOutFrame / 0.9, 0.0), 1.0) * -4.0) + 16.0) / 2);
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeDilateReflLsMap:v18 lsMap:v16 dilatedLsMap:refinedLsMapCopy hardDilationRadius:v22 softDilationRadius:2 meta:array->var0[v21++]];
    }

    while (v21 < array->var1);
  }

  [v18 endEncoding];
}

- (void)_getProbMapsLiteTarget:(id)target refProbMap:(id)map refProbMapStash4FutureTracking:(id)tracking refRawRefinedProbMap:(id)probMap refRefinedProbMap:(id)refinedProbMap probMap:(id)a8 refinedLsMap:(id)lsMap probMapStash4FutureTracking:(id)self0 rawRefinedProbMap:(id)self1 refinedProbMap:(id)self2 probMapRepairRef0:(id)self3 probMapRepairRef1:(id)self4 metaBuf:(id)self5 metaBufArray:(id *)self6 commandBuffer:(id)self7
{
  targetCopy = target;
  mapCopy = map;
  trackingCopy = tracking;
  probMapCopy = probMap;
  refinedProbMapCopy = refinedProbMap;
  v25 = a8;
  lsMapCopy = lsMap;
  futureTrackingCopy = futureTracking;
  rawRefinedProbMapCopy = rawRefinedProbMap;
  v49 = a12;
  ref0Copy = ref0;
  ref1Copy = ref1;
  bufCopy = buf;
  bufferCopy = buffer;
  v27 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v28 = 0;
    do
    {
      v29 = v25;
      v30 = refinedProbMapCopy;
      v31 = mapCopy;
      metalToolBox = self->_metalToolBox;
      v33 = array->var0[v28];
      v34 = metalToolBox;
      mapCopy = v31;
      refinedProbMapCopy = v30;
      v25 = v29;
      [(GGMMetalToolBox *)v34 encodeBMTransferGrayMultiRefsLowLightToCommandEncoder:v27 ref0:mapCopy ref1:probMapCopy ref2:trackingCopy ref3:refinedProbMapCopy warpedRef0:v29 warpedRef1:rawRefinedProbMapCopy warpedRef2:futureTrackingCopy warpedRef3:v49 meta:v33];
      [(GGMMetalToolBox *)self->_metalToolBox encodeGetRoiMaxAndAvgLumaYUV:v27 target:targetCopy lsMap:lsMapCopy meta:v33];

      ++v28;
    }

    while (v28 < array->var1);
  }

  v41 = lsMapCopy;
  v42 = mapCopy;
  [v27 endEncoding];
  v35 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = self->_metalToolBox;
      v38 = array->var0[v36];
      [(GGMMetalToolBox *)v37 encodeCollectClusterMaxAndAvgLuma:v35 clusterMetaBuf:v38 metaBuf:bufCopy];
      [(GGMMetalToolBox *)self->_metalToolBox encodeCombineMapWithRefMapLiteToEncoder:v35 probMap:futureTrackingCopy spatialProbMap:rawRefinedProbMapCopy probMapRepairRef0:ref0Copy probMapRepairRef1:ref1Copy meta:v38];

      ++v36;
    }

    while (v36 < array->var1);
  }

  [v35 endEncoding];
  v39 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v40 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeCollectClusterMaxProb:v39 clusterMetaBuf:array->var0[v40++] metaBuf:bufCopy];
    }

    while (v40 < array->var1);
  }

  [v39 endEncoding];
}

- (void)getProbMapsTarget:(id)target rawProbMap:(id)map probMap:(id)probMap rawRefinedProbMap:(id)refinedProbMap refinedProbMap:(id)a7 refinedReflLsMap:(id)lsMap reflLsMap4TrackingRef:(id)ref probMapRepairRef0:(id)self0 probMapRepairRef1:(id)self1 metaBuf:(id)self2 metaBufArray:(id *)self3 commandBuffer:(id)self4
{
  targetCopy = target;
  mapCopy = map;
  probMapCopy = probMap;
  refinedProbMapCopy = refinedProbMap;
  v21 = a7;
  lsMapCopy = lsMap;
  refCopy = ref;
  ref0Copy = ref0;
  ref1Copy = ref1;
  bufCopy = buf;
  bufferCopy = buffer;
  v26 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  arrayCopy2 = array;
  v60 = v26;
  if (array->var1 >= 1)
  {
    v28 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeGetRoiMaxAndAvgLumaYUV:v60 target:targetCopy lsMap:lsMapCopy meta:array->var0[v28]];
      v26 = v60;
      ++v28;
    }

    while (v28 < array->var1);
  }

  v54 = ref1Copy;
  v55 = ref0Copy;
  v48 = v21;
  [v26 endEncoding];
  v29 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v30 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeCollectClusterMaxAndAvgLuma:v29 clusterMetaBuf:array->var0[v30++] metaBuf:bufCopy];
    }

    while (v30 < array->var1);
  }

  v47 = v29;
  [v29 endEncoding];
  v53 = bufferCopy;
  v31 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v59 = v31;
  if (array->var1 >= 1)
  {
    v32 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeCombineMapWithRefMapToEncoder:v59 ref:self->_rawWarpedRefProbMapTexture dilatedRef:self->_warpedRefProbMapTexture lsMap:lsMapCopy dilatedLsMap:self->_dilatedLsMapTexture refLsMap:refCopy targetFrameYUV:self->_inputTexture spaRef:self->_rawWarpedRefSpaProbMapTexture dilatedSpatialRef:self->_warpedRefSpatialProbMapTexture motionRef:self->_ref4MotionCueTexture motionTarget:self->_input4MotionCueTexture probMapRepairRef0:ref0Copy probMapRepairRef1:ref1Copy output:mapCopy spaOutput:refinedProbMapCopy meta:array->var0[v32]];
      v31 = v59;
      ++v32;
    }

    while (v32 < array->var1);
  }

  v49 = lsMapCopy;
  [v31 endEncoding];
  v57 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v33 = targetCopy;
  v34 = mapCopy;
  v35 = probMapCopy;
  if (array->var1 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = v35;
      v38 = v34;
      v39 = v33;
      metalToolBox = self->_metalToolBox;
      v41 = arrayCopy2->var0[v36];
      [(GGMMetalToolBox *)metalToolBox encodeCollectClusterMaxProb:v57 clusterMetaBuf:v41 metaBuf:bufCopy];
      [(GGMMetalToolBox *)self->_metalToolBox encodeCollectClusterOpticalCenterEstStats:v57 clusterMetaBuf:v41 metaBuf:bufCopy];
      v33 = v39;
      v42 = v39;
      v34 = v38;
      v43 = v38;
      v35 = v37;
      [(GGMMetalToolBox *)self->_metalToolBox encodeConditionalDilate2ProbMapsYUVHardR2SoftR2Simd:v57 inputYUV:v42 probMap0:refinedProbMapCopy probMap1:v43 dilatedProbMap0:v48 dilatedProbMap1:v37 meta:v41];

      ++v36;
      arrayCopy2 = array;
    }

    while (v36 < array->var1);
  }

  [v57 endEncoding];
  computeCommandEncoder = [v53 computeCommandEncoder];
  [(GGMMetalToolBox *)self->_metalToolBox encodeUpdateEstOpticalCenterOffset:computeCommandEncoder meta:bufCopy];
  [computeCommandEncoder endEncoding];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = __210__VideoDeghostingDetectionV3_getProbMapsTarget_rawProbMap_probMap_rawRefinedProbMap_refinedProbMap_refinedReflLsMap_reflLsMap4TrackingRef_probMapRepairRef0_probMapRepairRef1_metaBuf_metaBufArray_commandBuffer___block_invoke;
  v61[3] = &unk_48A38;
  v62 = bufCopy;
  selfCopy = self;
  v45 = bufCopy;
  v46 = objc_retainBlock(v61);
  [v53 addCompletedHandler:v46];
}

float __210__VideoDeghostingDetectionV3_getProbMapsTarget_rawProbMap_probMap_rawRefinedProbMap_refinedProbMap_refinedReflLsMap_reflLsMap4TrackingRef_probMapRepairRef0_probMapRepairRef1_metaBuf_metaBufArray_commandBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contents];
  *(*(a1 + 40) + 3584) = *(v2 + 1271);
  result = v2[2546];
  *(*(a1 + 40) + 3600) = result;
  return result;
}

- (void)_getProbMapInput:(id)input motionCueRef:(id)ref motionCueRefRepaired:(id)repaired trackingRef:(id)trackingRef trackingRefProb:(id)prob trackingRefSpaProb:(id)spaProb trackingRefLs:(id)ls probMapRepairRef0:(id)self0 probMapRepairRef1:(id)self1 metaBuf:(id)self2 metaBufArray:(id *)self3 trackingRefMetaBuf:(id)self4 motionCueRefMetaBuf:(id)self5 probMap:(id)self6 rawRefinedProbMap:(id)self7 refinedProbMap:(id)self8 refinedReflLs:(id)self9 probMapStash4FutureTracking:(id)tracking commandBuffer:(id)buffer
{
  bufferCopy = buffer;
  trackingCopy = tracking;
  reflLsCopy = reflLs;
  refinedProbMapCopy = refinedProbMap;
  probMapCopy = probMap;
  mapCopy = map;
  bufCopy = buf;
  ref1Copy = ref1;
  ref0Copy = ref0;
  inputCopy = input;
  [(VideoDeghostingDetectionV3 *)self warpTrackingRefProbMap:prob refSpaProbMap:spaProb refReflLs:ls refinedReflLsMap:reflLsCopy target:inputCopy motionCueRef:ref motionCueRepairedRef:repaired metaBuf:bufCopy motionCueRefMetaBuf:refMetaBuf metaBufArray:array commandBuffer:bufferCopy];
  [(VideoDeghostingDetectionV3 *)self getProbMapsTarget:inputCopy rawProbMap:trackingCopy probMap:mapCopy rawRefinedProbMap:probMapCopy refinedProbMap:refinedProbMapCopy refinedReflLsMap:reflLsCopy reflLsMap4TrackingRef:self->_refinedReflLs4trackingRefWarpedTexture probMapRepairRef0:ref0Copy probMapRepairRef1:ref1Copy metaBuf:bufCopy metaBufArray:array commandBuffer:bufferCopy];
}

- (void)repairTarget:(id)target frRef0:(id)ref0 frRef1:(id)ref1 trRef0:(id)trRef0 trRef1:(id)trRef1 hwSimRef0:(id)simRef0 hwSimRef1:(id)simRef1 probMap:(id)self0 refinedProbMap:(id)self1 rawRefinedProbMap:(id)self2 metaBuf:(id)self3 metaRef0Buf:(id)self4 metaRef1Buf:(id)self5 metaBufArray:(id *)self6 trOutput:(id)self7 hwSimOutput:(id)self8 commandBuffer:(id)self9 addEndOfDetectionSignPost:(BOOL)post
{
  targetCopy = target;
  ref0Copy = ref0;
  ref1Copy = ref1;
  trRef0Copy = trRef0;
  trRef1Copy = trRef1;
  simRef0Copy = simRef0;
  simRef1Copy = simRef1;
  mapCopy = map;
  probMapCopy = probMap;
  refinedProbMapCopy = refinedProbMap;
  bufCopy = buf;
  ref0BufCopy = ref0Buf;
  ref1BufCopy = ref1Buf;
  outputCopy = output;
  simOutputCopy = simOutput;
  bufferCopy = buffer;
  v33 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v79 = v33;
  if (array->var1 >= 1)
  {
    v34 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:v79 input:targetCopy frRef0:ref0Copy frRef1:ref1Copy trRef0:trRef0Copy trRef1:trRef1Copy hwSimRef0:simRef0Copy hwSimRef1:simRef1Copy rawProbMap4Spatial:refinedProbMapCopy probMap4Spatial:probMapCopy spatialOutput:self->_spatialMitigatedLlTexture temporalOutput:self->_temporalMitigatedTexture hwSimTemporalOutput:self->_hwSimTemporalMitigatedTexture hwSimTemporalOriRefOutput:self->_hwSimTemporalMitigatedOriRefTexture inputCopy:self->_inputCopyTexture metaBuf:array->var0[v34] ref0MetaBuf:ref0BufCopy ref1MetaBuf:ref1BufCopy];
      v33 = v79;
      ++v34;
    }

    while (v34 < array->var1);
  }

  v62 = ref1BufCopy;
  v63 = ref0BufCopy;
  v64 = refinedProbMapCopy;
  [v33 endEncoding];
  v35 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v36 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:v35 target:self->_inputCopyTexture hwSimTempRepaired:self->_hwSimTemporalMitigatedTexture hwSimTempRepairedOriRef:self->_hwSimTemporalMitigatedOriRefTexture probMap:mapCopy spaProbMap:probMapCopy meta:array->var0[v36++]];
    }

    while (v36 < array->var1);
  }

  [v35 endEncoding];
  v37 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v78 = v37;
  if (array->var1 >= 1)
  {
    v38 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeCollectClusterTempRepairErr:v78 clusterMetaBuf:array->var0[v38] metaBuf:bufCopy];
      v37 = v78;
      ++v38;
    }

    while (v38 < array->var1);
  }

  v65 = simRef1Copy;
  v66 = simRef0Copy;
  [v37 endEncoding];
  v39 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v40 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeSyncStats:v39 clusterMeta:array->var0[v40++] meta:bufCopy];
    }

    while (v40 < array->var1);
  }

  v60 = v39;
  v61 = v35;
  [v39 endEncoding];
  v41 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v42 = mapCopy;
  if (array->var1 >= 1)
  {
    v43 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeSetWOriToCommandEncoder:v41 clusterMetaBuf:array->var0[v43++] metaBuf:bufCopy];
    }

    while (v43 < array->var1);
  }

  v59 = v41;
  [v41 endEncoding];
  v44 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  v69 = probMapCopy;
  v70 = v44;
  if (array->var1 >= 1)
  {
    v45 = 0;
    do
    {
      metalToolBox = self->_metalToolBox;
      v47 = targetCopy;
      inputCopyTexture = self->_inputCopyTexture;
      temporalMitigatedTexture = self->_temporalMitigatedTexture;
      hwSimTemporalMitigatedTexture = self->_hwSimTemporalMitigatedTexture;
      spatialMitigatedLlTexture = self->_spatialMitigatedLlTexture;
      v52 = array->var0[v45];
      v53 = metalToolBox;
      v44 = v70;
      v54 = inputCopyTexture;
      targetCopy = v47;
      v42 = mapCopy;
      [(GGMMetalToolBox *)v53 encodeFuse4DetectionYUVToCommandEncoder:v70 inputTexture:v54 probMapTexture:mapCopy probMap4SpatialTexture:v69 temporalMitTexture:temporalMitigatedTexture hwSimTemporalMitTexture:hwSimTemporalMitigatedTexture spatialMitTexture:spatialMitigatedLlTexture trOutputTexture:outputCopy hwSimOutputTexture:simOutputCopy metaBuf:v52];
      [(GGMMetalToolBox *)self->_metalToolBox encodeCopyInput4DetectionYUVToCommandEncoder:v70 inputTexture:targetCopy outputTexture:self->_fullResInputCopyTexture metaBuf:v52];

      ++v45;
    }

    while (v45 < array->var1);
  }

  [v44 endEncoding];
  v55 = [bufferCopy computeCommandEncoderWithDispatchType:1];
  if (array->var1 >= 1)
  {
    v56 = 0;
    do
    {
      [(GGMMetalToolBox *)self->_metalToolBox encodeFuseSpatialOnly4DetectionYUVToCommandEncoder:v55 inputTexture:self->_fullResInputCopyTexture probMapTexture:v42 probMap4SpatialTexture:v69 temporalMitTexture:outputCopy spatialMitTexture:self->_spatialMitigatedLlTexture outputTexture:targetCopy metaBuf:array->var0[v56++]];
    }

    while (v56 < array->var1);
  }

  [v55 endEncoding];
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = __238__VideoDeghostingDetectionV3_repairTarget_frRef0_frRef1_trRef0_trRef1_hwSimRef0_hwSimRef1_probMap_refinedProbMap_rawRefinedProbMap_metaBuf_metaRef0Buf_metaRef1Buf_metaBufArray_trOutput_hwSimOutput_commandBuffer_addEndOfDetectionSignPost___block_invoke;
  v80[3] = &unk_48A60;
  v81 = bufCopy;
  postCopy = post;
  v57 = bufCopy;
  v58 = objc_retainBlock(v80);
  [bufferCopy addCompletedHandler:v58];
}

_BYTE *__238__VideoDeghostingDetectionV3_repairTarget_frRef0_frRef1_trRef0_trRef1_hwSimRef0_hwSimRef1_probMap_refinedProbMap_rawRefinedProbMap_metaBuf_metaRef0Buf_metaRef1Buf_metaBufArray_trOutput_hwSimOutput_commandBuffer_addEndOfDetectionSignPost___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) contents];
  result[2168] = 1;
  if (*(a1 + 40) == 1)
  {

    return kdebug_trace();
  }

  return result;
}

- (int64_t)_initDetection:(__CVBuffer *)detection metaData:(id)data futureFrames:(id *)frames
{
  v8 = &self->_anon_e4[28];
  dataCopy = data;
  kdebug_trace();
  CVPixelBufferRelease(self->_frameTMinus2);
  self->_frameTMinus2 = self->_frameTMinus1;
  objc_storeStrong(&self->_frameTMinus2Texture, self->_frameTMinus1Texture);
  self->_frameTMinus1 = self->_frameT;
  objc_storeStrong(&self->_frameTMinus1Texture, self->_inputTexture);
  CVPixelBufferRetain(detection);
  if (self->_isFirstFrameOfCurrSegment)
  {
    cvMetalTextureCacheRef = [(GGMMetalToolBox *)self->_metalToolBox cvMetalTextureCacheRef];
    metalContext = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
    v12 = createSingleCachedTextureFromPixelBuffer(detection, cvMetalTextureCacheRef, metalContext, 0, 0);
    inputTexture = self->_inputTexture;
    self->_inputTexture = v12;
  }

  else
  {
    v14 = self->_frameTPlus1Texture;
    metalContext = self->_inputTexture;
    self->_inputTexture = v14;
  }

  v15 = 0;
  self->_frameT = detection;
  v16 = *&self->_anon_64[12];
  *&self->_hmgrphyTMinus2ToTMinus1.confidence = *&self->_hmgrphyTMinus1ToT.confidence;
  *&self->_anon_a4[12] = v16;
  v17 = *&self->_anon_64[44];
  *&self->_anon_a4[28] = *&self->_anon_64[28];
  *&self->_anon_a4[44] = v17;
  v18 = *&self->_anon_164[12];
  *&self->_hmgrphyTMinus1ToT.confidence = *&self->_hmgrphyTToTPlus1.confidence;
  *&self->_anon_64[12] = v18;
  v19 = *&self->_anon_164[44];
  *&self->_anon_64[28] = *&self->_anon_164[28];
  *&self->_anon_64[44] = v19;
  v20 = *&self->_hmgrphyTMinus2ToTMinus1.confidence;
  v21 = *&self->_anon_a4[12];
  v22 = *&self->_anon_a4[28];
  v23 = *&self->_anon_64[12];
  v24 = *&self->_anon_64[28];
  v55 = *&self->_hmgrphyTMinus1ToT.confidence;
  v56 = v23;
  v57 = v24;
  memset(&v51, 0, sizeof(v51));
  do
  {
    v51.columns[v15 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(&v55 + v15 * 4))), v21, *&v55.f32[v15], 1), v22, *(&v55 + v15 * 4), 2);
    v15 += 4;
  }

  while (v15 != 12);
  v25 = v51.columns[0].i32[2];
  v26 = v51.columns[1];
  v27 = v51.columns[2];
  *&self->_hmgrphyTMinus2ToT.confidence = v51.columns[0].i64[0];
  *&self->_anon_e4[4] = v25;
  *&self->_anon_e4[12] = v26.i64[0];
  *&self->_anon_e4[20] = v26.i32[2];
  *(v8 + 2) = v27.i32[2];
  *v8 = v27.i64[0];
  *&self->_anon_e4[44] = fminf(*&self->_anon_a4[44], *&self->_anon_64[44]);
  frameTMinus2Texture = self->_frameTMinus2Texture;
  if (frameTMinus2Texture)
  {
    self->_localMotionReference = self->_frameTMinus2;
    objc_storeStrong(&self->_localMotionReferenceTexture, frameTMinus2Texture);
    v29 = *&self->_anon_e4[12];
    *&self->_localMotionRefHomography.confidence = *&self->_hmgrphyTMinus2ToT.confidence;
    *&self->_anon_124[12] = v29;
    v30 = *&self->_anon_e4[44];
    *&self->_anon_124[28] = *&self->_anon_e4[28];
    *&self->_anon_124[44] = v30;
    goto LABEL_19;
  }

  if (frames->var2 < 2)
  {
    self->_localMotionReference = detection;
    objc_storeStrong(&self->_localMotionReferenceTexture, self->_inputTexture);
    v40 = matrix_identity_float3x3.columns[1];
    *&self->_localMotionRefHomography.confidence = matrix_identity_float3x3.columns[0];
    *&self->_anon_124[12] = v40;
    *&self->_anon_124[28] = matrix_identity_float3x3.columns[2];
    *&self->_anon_124[44] = 0;
    *&self->_anon_124[52] = 0;
    goto LABEL_19;
  }

  memset(v54, 0, sizeof(v54));
  __copy_constructor_8_8_t0w8_s8_s16_s24_s32_t40w8(v54, frames->var0);
  memset(v53, 0, sizeof(v53));
  __copy_constructor_8_8_t0w8_s8_s16_s24_s32_t40w8(v53, frames->var0 + 48);
  self->_frameTPlus2Buf = *&v53[0];
  v31 = *(&v54[0] + 1);
  v32 = *(&v53[0] + 1);
  calcTransform = self->_calcTransform;
  if (calcTransform)
  {
    objc_msgSend_ispHomographyFromMetaInfo_(calcTransform);
    v49 = v51.columns[1];
    v50 = v51.columns[0];
    v47 = v51.columns[2];
    v34 = v52;
    v35 = self->_calcTransform;
    if (v35)
    {
      objc_msgSend_ispHomographyFromMetaInfo_(v35);
      v37 = v51.columns[0];
      v36 = v51.columns[1];
      v38 = v51.columns[2];
      v39 = v52;
      goto LABEL_16;
    }

    v38 = 0uLL;
  }

  else
  {
    v38 = 0uLL;
    v49 = 0u;
    v50 = 0u;
    v34 = 0.0;
    v47 = 0u;
  }

  v39 = 0.0;
  v36 = 0uLL;
  v37 = 0uLL;
LABEL_16:
  v41 = 0;
  v55 = v37;
  v56 = v36;
  v57 = v38;
  memset(&v51, 0, sizeof(v51));
  do
  {
    v51.columns[v41 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*(&v55 + v41 * 4))), v49, *&v55.f32[v41], 1), v47, *(&v55 + v41 * 4), 2);
    v41 += 4;
  }

  while (v41 != 12);
  v48 = __invert_f3(v51);
  frameTPlus2Buf = self->_frameTPlus2Buf;
  self->_localMotionReference = frameTPlus2Buf;
  metalContext2 = [(GGMMetalToolBox *)self->_metalToolBox metalContext];
  v44 = createSingleTextureFromYuvBuffer(frameTPlus2Buf, metalContext2, 0, 1);
  localMotionReferenceTexture = self->_localMotionReferenceTexture;
  self->_localMotionReferenceTexture = v44;

  *(v8 + 10) = v48.columns[0].i32[2];
  *(v8 + 4) = v48.columns[0].i64[0];
  *(v8 + 14) = v48.columns[1].i32[2];
  *(v8 + 18) = v48.columns[2].i32[2];
  *(v8 + 6) = v48.columns[1].i64[0];
  *(v8 + 8) = v48.columns[2].i64[0];
  *&self->_anon_124[44] = fminf(v34, v39);
  *&self->_anon_124[48] = 0;
  *&self->_anon_124[56] = 0;

  __destructor_8_s8_s16_s24_s32(v53);
  __destructor_8_s8_s16_s24_s32(v54);
LABEL_19:
  *([*&self->_lightweightDetectorInputs.scaleAdjustedTotalClippedPixelsCount contents] + 260) = 0;
  *&self->_gateOutFrame = self->_prevOpticalCenterEstConf;
  kdebug_trace();

  return 0;
}

- (id)extractLightSourceBBoxFromBuffer:(VideoDeghostingDetectionV3 *)self BoxCount:(SEL)count
{
  v4 = v3;
  v5 = v2;
  v6 = +[NSMutableArray array];
  if (v5)
  {
    if (v4 >= 1)
    {
      do
      {
        v7 = [ROI alloc];
        v8 = *v5++;
        v9 = [(ROI *)v7 initWithBbox:*&v8];
        [v6 addObject:v9];

        --v4;
      }

      while (v4);
    }
  }

  else
  {
    [VideoDeghostingDetectionV3 extractLightSourceBBoxFromBuffer:BoxCount:];
  }

  return v6;
}

- ($43C834F0531B50B92CAF4577069D180C)configuration
{
  v3 = *&self[57].var1.var2;
  *&retstr->var0.var0 = *&self[57].var0.var10;
  *&retstr->var0.var7 = v3;
  v4 = *&self[58].var0.var2;
  *&retstr->var1.var0 = *&self[57].var1.var9;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.detectionType = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.luxLevelGating = v5;
  *&self->_configuration.internalCfg.antiFlareSize = v3;
  *&self->_configuration.internalCfg.initGGarray = v4;
}

- (uint64_t)initWithMetalContext:config:tuningParamDict:imageDimensions:.cold.12()
{
  fig_log_get_emitter();
  v2 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v0, v5, v7, v8, v9, vars0, vars8);
  fig_log_get_emitter();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v6);
}

@end