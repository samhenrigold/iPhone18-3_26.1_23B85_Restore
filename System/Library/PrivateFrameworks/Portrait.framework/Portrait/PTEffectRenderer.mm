@interface PTEffectRenderer
+ (BOOL)useStudioLightFromSegmentation:(id)segmentation;
- (BOOL)isRenderRequiredForRequest:(id)request;
- (PTEffectRenderer)initWithDescriptor:(id)descriptor metalContext:(id)context depthPrioritization:(int64_t)prioritization humanDetections:(id)detections prevTemporalState:(id)state sharedResources:(id)resources;
- (id)activeReactions;
- (id)copyTemporalState:(id)state;
- (int)render:(id)render waitUntilCompleted:(BOOL)completed gpuCompleted:(id)gpuCompleted;
- (int)renderReaction:(id)reaction effectRenderRequest:(id)request;
- (int)runGestureDetection:(id)detection asyncWork:(id)work;
- (void)copyInColor:(id)color toOutColor:(id)outColor;
- (void)createVfxTextures:(id *)textures;
- (void)dealloc;
- (void)reset:(id)reset;
@end

@implementation PTEffectRenderer

- (PTEffectRenderer)initWithDescriptor:(id)descriptor metalContext:(id)context depthPrioritization:(int64_t)prioritization humanDetections:(id)detections prevTemporalState:(id)state sharedResources:(id)resources
{
  v284[1] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  contextCopy = context;
  detectionsCopy = detections;
  stateCopy = state;
  resourcesCopy = resources;
  v270.receiver = self;
  v270.super_class = PTEffectRenderer;
  v13 = [(PTEffectRenderer *)&v270 init];
  v15 = v13;
  if (v13)
  {
    PTKTraceInit(v13, v14);
    kdebug_trace();
    objc_storeStrong(&v15->_metalContext, context);
    v16 = [descriptorCopy copy];
    effectDescriptor = v15->_effectDescriptor;
    v15->_effectDescriptor = v16;

    v15->_debugType = 0;
    v15->_availableEffectTypes = [descriptorCopy availableEffectTypes];
    objc_storeStrong(&v15->_sharedResources, resources);
    objc_storeStrong(&v15->_humanDetections, detections);
    v283 = *MEMORY[0x277CC4D40];
    v284[0] = &unk_2837F39F0;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v284 forKeys:&v283 count:1];
    v19 = objc_msgSend_device(v15->_metalContext);
    LODWORD(v18) = CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v18, v19, 0, &v15->_textureCache);

    if (v18 || !v15->_textureCache)
    {
      v21 = _PTLogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
      }

      v15->_textureCache = 0;
    }

    v15->effectQuality = [descriptorCopy effectQuality];
    availableEffectTypes = v15->_availableEffectTypes;
    v246 = availableEffectTypes;
    v247 = availableEffectTypes & 0x48;
    v24 = (availableEffectTypes & 3) != 0 || ((availableEffectTypes & 4) == 0 || (availableEffectTypes & 0x48) == 0) && (availableEffectTypes & 0x50) == 16;
    v248 = v24;
    v15->_studiolightFromSegmentation = [PTEffectRenderer useStudioLightFromSegmentation:descriptorCopy];
    v15->_frameIndex = 0;
    *&v15->_runCVMNetworkPreviousFrame = 0;
    v15->_lastFrameTime = NAN;
    objc_msgSend_colorSize(descriptorCopy);
    v28 = v27;
    objc_msgSend_colorSize(descriptorCopy);
    v29 = 0;
    v30 = v28;
    v32 = v31;
    v33 = *MEMORY[0x277CC4DE8];
    v34 = 1;
    v35 = MEMORY[0x277CBEC10];
    while (1)
    {
      v36 = v34;
      v281 = v33;
      v282 = v35;
      v37 = CVPixelBufferCreate(0, v28, v32, 0x34323076u, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v282 forKeys:&v281 count:1], &v15->_intermediateColorPixelbuffers[v29]);
      if (v37)
      {
        break;
      }

      v34 = 0;
      v29 = 1;
      if ((v36 & 1) == 0)
      {
        v15->_focusDisparityMax = 2.0;
        *&v15->_focusDisparityUpdateCoefficientSDOF = 0x3F0000003E800000;
        v38 = PTDefaultsGetDictionary();
        v15->_disparityFocusOffsetSDOF = 1064262697;
        v15->_disparityFocusOffsetReactions = vbsl_s8(vcgtd_u64(2uLL, prioritization - 1), 0x3DCCCCCD3F800000, 0x3E3333333F800000);
        v15->_disparityFocusOffsetStudioLight = 0x3E4CCCCD3F800000;
        v39 = [v38 objectForKeyedSubscript:@"PTEffectFocusDisparityMax"];
        v40 = v39;
        if (v39)
        {
          floatValue = [v39 floatValue];
          v15->_focusDisparityMax = v42;
          v43 = _PTLogSystem(floatValue);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            [PTEffectRenderer initWithDescriptor:v40 metalContext:? depthPrioritization:? humanDetections:? prevTemporalState:? sharedResources:?];
          }
        }

        v44 = [v38 objectForKeyedSubscript:@"PTEffectFocusDisparityExponentialMovingAverage"];

        if (v44)
        {
          floatValue2 = [v44 floatValue];
          v15->_focusDisparityUpdateCoefficientSDOF = v46;
          v47 = _PTLogSystem(floatValue2);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            [PTEffectRenderer initWithDescriptor:v44 metalContext:? depthPrioritization:? humanDetections:? prevTemporalState:? sharedResources:?];
          }
        }

        v251 = [v38 objectForKeyedSubscript:@"PTEffectFocusDisparityExponentialMovingAverageStudioLight"];

        if (v251)
        {
          floatValue3 = [v251 floatValue];
          v15->_focusDisparityUpdateCoefficientStudioLight = v49;
          v50 = _PTLogSystem(floatValue3);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            [PTEffectRenderer initWithDescriptor:v251 metalContext:? depthPrioritization:? humanDetections:? prevTemporalState:? sharedResources:?];
          }
        }

        v51 = objc_msgSend_device(v15->_metalContext);
        v52 = [v51 newBufferWithLength:16 options:0];
        faceDisparityArray = v15->_faceDisparityArray;
        v15->_faceDisparityArray = v52;

        if (v15->_faceDisparityArray)
        {
          v55 = objc_msgSend_device(v15->_metalContext);
          v56 = [v55 newBufferWithLength:4 options:0];
          focusDisparityRaw = v15->_focusDisparityRaw;
          v15->_focusDisparityRaw = v56;

          if (v15->_focusDisparityRaw)
          {
            v269 = 1;
            v59 = objc_msgSend_device(v15->_metalContext);
            v60 = [v59 newBufferWithBytes:&v269 length:1 options:0];
            useDisparityBufferForReactions = v15->_useDisparityBufferForReactions;
            v15->_useDisparityBufferForReactions = v60;

            if (!v15->_useDisparityBufferForReactions)
            {
              v68 = _PTLogSystem(v62);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
              }

              goto LABEL_120;
            }

            cvmNetwork = v15->_cvmNetwork;
            v15->_cvmNetwork = 0;

            msrColorPyramid = v15->_msrColorPyramid;
            v15->_msrColorPyramid = 0;

            if ([descriptorCopy prewarmOnly])
            {
              v65 = [[PTEspressoGenericExecutor alloc] initWithMetalContext:v15->_metalContext];
              if (v65)
              {

                width = 320;
                height = 176;
                goto LABEL_61;
              }

              v68 = _PTLogSystem(0);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
              }

LABEL_120:

LABEL_158:
              v22 = 0;
LABEL_159:

              goto LABEL_160;
            }

            if (v248)
            {
              v69 = [PTCVMNetwork alloc];
              metalContext = v15->_metalContext;
              v275 = v28;
              *&v276 = v32;
              *(&v276 + 1) = 1;
              v71 = [(PTCVMNetwork *)v69 initWithMetalContext:metalContext colorSize:&v275 depthPrioritization:prioritization sharedResources:resourcesCopy];
              v72 = v15->_cvmNetwork;
              v15->_cvmNetwork = v71;

              v73 = v15->_cvmNetwork;
              if (!v73)
              {
                v68 = _PTLogSystem(0);
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                }

                goto LABEL_120;
              }

              outDisparity = [(PTCVMNetwork *)v73 outDisparity];
              width = [outDisparity width];
              outDisparity2 = [(PTCVMNetwork *)v15->_cvmNetwork outDisparity];
              height = [outDisparity2 height];

              if (!width || !height)
              {
                v77 = _PTLogSystem(v76);
                if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                {
                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                }

                width = 320;
                height = 176;
              }

              v78 = [PTMSRResize alloc];
              v79 = v15->_metalContext;
              rotated = [(PTCVMNetwork *)v15->_cvmNetwork rotated];
              v275 = v28;
              *&v276 = v32;
              *(&v276 + 1) = 1;
              *&v267 = width;
              *(&v267 + 1) = height;
              v268 = 1;
              v81 = [(PTMSRResize *)v78 initWithMetalContext:v79 inputSize:&v275 targetSize:&v267 rotateTargetPixelBuffer:rotated compressedIntermediates:v247 == 0 sRGB:0 sharedResources:resourcesCopy];
              v82 = v15->_msrColorPyramid;
              v15->_msrColorPyramid = v81;

              v83 = v15->_msrColorPyramid;
              if (v83)
              {
                [(PTCVMNetwork *)v15->_cvmNetwork bindColorInputPixelBuffer:[(PTMSRResize *)v83 targetRGBAPixelBuffer]];
LABEL_61:
                v84 = 1;
LABEL_62:
                if (!v15->_msrColorPyramid && ([descriptorCopy prewarmOnly] & 1) == 0)
                {
                  v85 = [PTMSRResize alloc];
                  v86 = v15->_metalContext;
                  v275 = v28;
                  *&v276 = v32;
                  *(&v276 + 1) = 1;
                  v267 = xmmword_2244C60A0;
                  v268 = 1;
                  v87 = [(PTMSRResize *)v85 initWithMetalContext:v86 inputSize:&v275 targetSize:&v267 rotateTargetPixelBuffer:0 compressedIntermediates:0 sRGB:0 sharedResources:resourcesCopy];
                  v88 = v15->_msrColorPyramid;
                  v15->_msrColorPyramid = v87;

                  width = 320;
                  height = 176;
                  v84 = 1;
                }

LABEL_68:
                if (v30 >= v32)
                {
                  v98 = v32;
                }

                else
                {
                  v98 = v30;
                }

                v99 = 2.0;
                if (v98 > 0x2CF)
                {
                  v99 = 3.0;
                }

                if (v98 <= 0x437)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = 4.0;
                }

                v101 = [[PTColorConversion alloc] initWithMetalContext:contextCopy];
                colorConversion = v15->_colorConversion;
                v15->_colorConversion = v101;

                if (v15->_colorConversion)
                {
                  if ((v246 & 2) == 0)
                  {
                    goto LABEL_80;
                  }

                  v104 = [[PTNormalAndDiffuseEstimation alloc] initWithMetalContext:v15->_metalContext];
                  diffuseEstimation = v15->_diffuseEstimation;
                  v15->_diffuseEstimation = v104;

                  if (v15->_diffuseEstimation)
                  {
                    textureUtil = [(PTMetalContext *)v15->_metalContext textureUtil];
                    v108 = [textureUtil createWithWidth:width height:height pixelFormat:20];
                    diffuse = v15->_diffuse;
                    v15->_diffuse = v108;

                    if (v15->_diffuse)
                    {
LABEL_80:
                      if (!v248)
                      {
                        goto LABEL_94;
                      }

                      v111 = [PTEffectTemporalFilter alloc];
                      v112 = v15->_metalContext;
                      v275 = width;
                      *&v276 = height;
                      *(&v276 + 1) = v84;
                      v113 = [(PTEffectTemporalFilter *)v111 initWithMetalContext:v112 disparitySize:&v275];
                      temporalFilter = v15->_temporalFilter;
                      v15->_temporalFilter = v113;

                      if (v15->_temporalFilter)
                      {
                        textureUtil2 = [(PTMetalContext *)v15->_metalContext textureUtil];
                        v249 = (width * 1.5);
                        v243 = (height * 1.5);
                        v117 = [textureUtil2 createWithWidth:? height:? pixelFormat:?];
                        disparityCenteredUpscaledSDOF = v15->_disparityCenteredUpscaledSDOF;
                        v15->_disparityCenteredUpscaledSDOF = v117;

                        if (v15->_disparityCenteredUpscaledSDOF)
                        {
                          textureUtil3 = [(PTMetalContext *)v15->_metalContext textureUtil];
                          v121 = [textureUtil3 createWithWidth:v249 height:v243 pixelFormat:25];
                          disparityCenteredUpscaledReactions = v15->_disparityCenteredUpscaledReactions;
                          v15->_disparityCenteredUpscaledReactions = v121;

                          if (v15->_disparityCenteredUpscaledReactions)
                          {
                            if ((v246 & 0x4C) != 0 && (-[PTMetalContext textureUtil](v15->_metalContext, "textureUtil"), v124 = objc_claimAutoreleasedReturnValue(), [v124 createWithWidth:v249 height:v243 pixelFormat:25], v125 = objc_claimAutoreleasedReturnValue(), disparityCenteredUpscaledWithScreenCaptureRect = v15->_disparityCenteredUpscaledWithScreenCaptureRect, v15->_disparityCenteredUpscaledWithScreenCaptureRect = v125, disparityCenteredUpscaledWithScreenCaptureRect, v124, !v15->_disparityCenteredUpscaledWithScreenCaptureRect))
                            {
                              v196 = _PTLogSystem(v127);
                              if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                              {
                                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                              }
                            }

                            else
                            {
                              if (stateCopy && v15->_cvmNetwork)
                              {
                                commandQueue = [(PTMetalContext *)v15->_metalContext commandQueue];
                                commandBuffer = [commandQueue commandBuffer];

                                if (!commandBuffer)
                                {
                                  v131 = _PTLogSystem(v130);
                                  if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                                  {
                                    [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
                                  }
                                }

                                [commandBuffer setLabel:@"PTEffectRenderer Restore temporal state"];
                                [stateCopy restoreState:commandBuffer cvmNetwork:v15->_cvmNetwork temporalFilter:v15->_temporalFilter];
                                [commandBuffer commit];
                                [commandBuffer waitUntilScheduled];
                              }

                              pyramidRGBA = [(PTMSRResize *)v15->_msrColorPyramid pyramidRGBA];
                              v275 = (width * 1.5);
                              *&v276 = (height * 1.5);
                              *(&v276 + 1) = 1;
                              v133 = [PTUtil findMipmapLevel:pyramidRGBA largerThan:&v275];
                              guideRGBAUpscale = v15->_guideRGBAUpscale;
                              v15->_guideRGBAUpscale = v133;

                              pyramidRGBA2 = [(PTMSRResize *)v15->_msrColorPyramid pyramidRGBA];
                              v275 = width;
                              *&v276 = height;
                              *(&v276 + 1) = v84;
                              v136 = [PTUtil findMipmapLevel:pyramidRGBA2 largerThan:&v275];
                              guideRGBACoefficients = v15->_guideRGBACoefficients;
                              v15->_guideRGBACoefficients = v136;

                              v138 = [PTGuidedFilter alloc];
                              v139 = v15->_metalContext;
                              v275 = width;
                              *&v276 = height;
                              *(&v276 + 1) = v84;
                              LODWORD(v140) = 1028443341;
                              v141 = [(PTGuidedFilter *)v138 initWithMetalContext:v139 inputSize:&v275 epsilon:v140];
                              guidedFilter = v15->_guidedFilter;
                              v15->_guidedFilter = v141;

                              if (v15->_guidedFilter)
                              {
LABEL_94:
                                if (v247)
                                {
                                  textureUtil4 = [(PTMetalContext *)v15->_metalContext textureUtil];
                                  v145 = [textureUtil4 createWithWidth:v30 height:v32 pixelFormat:10];
                                  upscaledPersonSegmentation = v15->_upscaledPersonSegmentation;
                                  v15->_upscaledPersonSegmentation = v145;
                                }

                                v280 = 0;
                                v279 = 0;
                                v147 = objc_msgSend_device(v15->_metalContext);
                                v148 = [v147 newBufferWithBytes:&v279 length:12 options:0];
                                lastFocus = v15->_lastFocus;
                                v15->_lastFocus = v148;

                                if (v15->_lastFocus)
                                {
                                  LODWORD(v276) = 0;
                                  v275 = 0xFF7FFFFFBFC00000;
                                  HIDWORD(v276) = 0;
                                  *(&v276 + 4) = 0xFF7FFFFFBFC00000;
                                  v278 = 0;
                                  v277 = 0xFF7FFFFFBFC00000;
                                  v151 = objc_msgSend_device(v15->_metalContext);
                                  v152 = [v151 newBufferWithBytes:&v275 length:36 options:0];
                                  focusDisparityModifiers = v15->_focusDisparityModifiers;
                                  v15->_focusDisparityModifiers = v152;

                                  if (v15->_focusDisparityModifiers)
                                  {
                                    v266 = 1065353216;
                                    v155 = objc_msgSend_device(v15->_metalContext);
                                    v156 = [v155 newBufferWithBytes:&v266 length:4 options:0];
                                    studioLightEffectModifier = v15->_studioLightEffectModifier;
                                    v15->_studioLightEffectModifier = v156;

                                    if (v15->_studioLightEffectModifier)
                                    {
                                      if ((v246 & 2) == 0 || (v160 = [PTEffectRelighting alloc], v161 = v15->_metalContext, v162 = v15->_availableEffectTypes, v163 = [descriptorCopy prewarmOnly], v164 = v15->_msrColorPyramid, studiolightFromSegmentation = v15->_studiolightFromSegmentation, *&v267 = v30, *(&v267 + 1) = v32, v268 = 1, v166 = -[PTEffectRelighting initWithMetalContext:availableEffectTypes:prewarmOnly:colorSize:msrColorPyramid:studiolightFromSegmentation:sharedResources:](v160, "initWithMetalContext:availableEffectTypes:prewarmOnly:colorSize:msrColorPyramid:studiolightFromSegmentation:sharedResources:", v161, v162, v163, &v267, v164, studiolightFromSegmentation, resourcesCopy), v167 = v15->_effectRelighting, v15->_effectRelighting = v166, v167, v15->_effectRelighting))
                                      {
                                        v273 = &unk_2837F3700;
                                        *&v159 = fminf(v100, 4.0);
                                        v169 = [MEMORY[0x277CCABB0] numberWithFloat:v159];
                                        v274 = v169;
                                        v170 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
                                        v250 = [PTQualitySettings createWithQuality:25 options:v170];

                                        if (!v250)
                                        {
                                          v199 = _PTLogSystem(0);
                                          p_super = v199;
                                          if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
                                          {
                                            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                            v22 = 0;
                                            p_super = v199;
                                          }

                                          else
                                          {
                                            v22 = 0;
                                          }

                                          goto LABEL_217;
                                        }

                                        [v250 setDoCenterDisparity:0];
                                        LODWORD(v171) = 1.0;
                                        [v250 setDisparityUpsampleFactor:v171];
                                        [v250 setIntermediatePixelFormat:71];
                                        v172 = [PTRenderPipelineDescriptor alloc];
                                        v173 = objc_msgSend_device(v15->_metalContext);
                                        v245 = [(PTRenderPipelineDescriptor *)v172 initWithDevice:v173 version:3001 colorSize:v30 disparitySize:v32, (width * 1.5), (height * 1.5)];

                                        if (v245)
                                        {
                                          v175 = [PTPyramid alloc];
                                          objc_msgSend_colorSize(descriptorCopy);
                                          v176 = [(PTPyramid *)v175 initWithMetalContext:contextCopy colorSize:71 pixelFormat:1 skipFullSizeLayer:0 doFirstLevelGaussianDownsample:4 mipmapLevelCount:?];
                                          colorPyramid = v15->_colorPyramid;
                                          v15->_colorPyramid = v176;

                                          v179 = v15->_colorPyramid;
                                          if (v179)
                                          {
                                            v271[0] = &unk_2837F3718;
                                            v271[1] = &unk_2837F3730;
                                            v272[0] = v250;
                                            v272[1] = MEMORY[0x277CBEC28];
                                            v271[2] = &unk_2837F3748;
                                            v180 = v15->_metalContext;
                                            v271[3] = &unk_2837F3760;
                                            v272[2] = v180;
                                            v272[3] = v179;
                                            v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v272 forKeys:v271 count:4];
                                            [(PTRenderPipelineDescriptor *)v245 setOptions:v181];

                                            v182 = [[PTRenderPipeline alloc] initWithDescriptor:v245];
                                            renderPipeline = v15->_renderPipeline;
                                            v15->_renderPipeline = v182;

                                            v185 = v15->_renderPipeline;
                                            if (v185)
                                            {
                                              v186 = [(PTRenderPipeline *)v185 createRenderStateWithQuality:[v250 quality]];
                                              renderState = v15->_renderState;
                                              v15->_renderState = v186;

                                              v188 = v15->_renderState;
                                              if (v188)
                                              {
                                                [(PTRenderState *)v188 setSourceColorBitDepth:8];
                                                [(PTRenderState *)v15->_renderState prepareForRendering:1];
                                                v189 = objc_opt_new();
                                                p_sdofRenderRequest = &v15->_sdofRenderRequest;
                                                sdofRenderRequest = v15->_sdofRenderRequest;
                                                v15->_sdofRenderRequest = v189;

                                                [(PTRenderRequest *)v15->_sdofRenderRequest setFrameId:0];
                                                [(PTRenderRequest *)v15->_sdofRenderRequest setRenderState:v15->_renderState];
                                                LODWORD(v192) = dword_2244C6078[prioritization == 2];
                                                if (prioritization == 1)
                                                {
                                                  *&v192 = 39.0;
                                                }

                                                [*p_sdofRenderRequest setFocalLenIn35mmFilm:v192];
                                                LODWORD(v193) = 1.0;
                                                [*p_sdofRenderRequest setFocusDisparity:v193];
                                                v15->_externalHandDetectionsAvailable = 0;
                                                if (v247)
                                                {
                                                  objc_initWeak(&location, v15);
                                                  v261[0] = MEMORY[0x277D85DD0];
                                                  v261[1] = 3221225472;
                                                  v261[2] = __122__PTEffectRenderer_initWithDescriptor_metalContext_depthPrioritization_humanDetections_prevTemporalState_sharedResources___block_invoke;
                                                  v261[3] = &unk_278523738;
                                                  objc_copyWeak(&v264, &location);
                                                  v194 = descriptorCopy;
                                                  v262 = v194;
                                                  v263 = resourcesCopy;
                                                  v195 = MEMORY[0x22AA50020](v261);
                                                  if (([(PTEffectDescriptor *)v15->_effectDescriptor activeEffectType]& 0x48) != 0)
                                                  {
                                                    v195[2](v195);
                                                  }

                                                  else
                                                  {
                                                    asyncInitQueue = [v194 asyncInitQueue];
                                                    dispatch_async(asyncInitQueue, v195);
                                                  }

                                                  objc_msgSend_colorSize(v194);
                                                  objc_msgSend_segmentationSizeForColorSize_(PTEffectPersonSegmentation);
                                                  v204 = v15->_msrColorPyramid;
                                                  *&v267 = v205;
                                                  *(&v267 + 1) = v206;
                                                  v268 = 1;
                                                  v207 = [(PTMSRResize *)v204 addAdditionalOutput:&v267 allowCompressed:0 pixelFormat:1111970369 highQuality:1];
                                                  personSegmentationInput = v15->_personSegmentationInput;
                                                  v15->_personSegmentationInput = v207;

                                                  objc_destroyWeak(&v264);
                                                  objc_destroyWeak(&location);
                                                }

                                                if ((v246 & 0x40) != 0)
                                                {
                                                  v209 = [[PTBackgroundReplacement alloc] initWithMetalContext:v15->_metalContext effectDescriptor:v15->_effectDescriptor sharedSDOFRenderRequest:v15->_sdofRenderRequest renderPipeline:v15->_renderPipeline];
                                                  backgroundReplacement = v15->_backgroundReplacement;
                                                  v15->_backgroundReplacement = v209;
                                                }

                                                if ((v15->_availableEffectTypes & 0x10) == 0)
                                                {
LABEL_184:
                                                  v211 = [PTEffectDebugLayer alloc];
                                                  v212 = v15->_metalContext;
                                                  effectRelighting = v15->_effectRelighting;
                                                  v214 = v15->_effectDescriptor;
                                                  v215 = v15->_renderState;
                                                  util = [(PTEffectResources *)v15->_sharedResources util];
                                                  v217 = [(PTEffectDebugLayer *)v211 initWithMetalContext:v212 effectRelighting:effectRelighting effectDescritor:v214 renderState:v215 util:util colorConversion:v15->_colorConversion msrColorPyramid:v15->_msrColorPyramid vfxRenderEffect:v15->_vfxEffect depthConverter:v15->_depthConverter disparityFixedFocus:v15->_disparityCenteredUpscaledSDOF faceDisparityArray:v15->_faceDisparityArray focusDisparityRaw:v15->_focusDisparityRaw focusDisparityModifiers:v15->_focusDisparityModifiers];
                                                  debugLayer = v15->_debugLayer;
                                                  v15->_debugLayer = v217;

                                                  v219 = v15->_debugLayer;
                                                  if (v219)
                                                  {
                                                    [(PTEffectDebugLayer *)v219 setReactionProvider:v15->_reactionProvider];
                                                    kdebug_trace();
                                                    v22 = v15;
                                                    goto LABEL_216;
                                                  }

                                                  v224 = _PTLogSystem(0);
                                                  if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                  }

LABEL_214:

LABEL_215:
                                                  v22 = 0;
LABEL_216:
                                                  p_super = &v245->super;
LABEL_217:

                                                  v198 = v250;
LABEL_218:

                                                  goto LABEL_159;
                                                }

                                                renderEffect = [resourcesCopy renderEffect];
                                                if (renderEffect)
                                                {
                                                  renderEffect2 = [resourcesCopy renderEffect];
                                                  v222 = renderEffect2;
                                                  if (renderEffect2)
                                                  {
                                                    objc_msgSend_colorSize(renderEffect2);
                                                    v223 = v260;
                                                  }

                                                  else
                                                  {
                                                    v223 = 0;
                                                  }

                                                  if (v223 == v30)
                                                  {
                                                    renderEffect3 = [resourcesCopy renderEffect];
                                                    v226 = renderEffect3;
                                                    if (renderEffect3)
                                                    {
                                                      objc_msgSend_colorSize(renderEffect3);
                                                      v227 = v259;
                                                    }

                                                    else
                                                    {
                                                      v227 = 0;
                                                    }

                                                    v228 = v227 == v32;

                                                    if (v228)
                                                    {
                                                      renderEffect4 = [resourcesCopy renderEffect];
                                                      vfxEffect = v15->_vfxEffect;
                                                      v15->_vfxEffect = renderEffect4;

LABEL_202:
                                                      *&v267 = v30;
                                                      *(&v267 + 1) = v32;
                                                      v268 = 1;
                                                      [(PTEffectRenderer *)v15 createVfxTextures:&v267];
                                                      v240 = [[PTDepthConverter alloc] initWithMetalContext:v15->_metalContext];
                                                      depthConverter = v15->_depthConverter;
                                                      v15->_depthConverter = v240;

                                                      if (v15->_depthConverter)
                                                      {
                                                        if (v15->_vfxEffect && v15->_vfxRenderTarget && v15->_vfxDepthBuffer)
                                                        {
                                                          goto LABEL_184;
                                                        }

                                                        v224 = _PTLogSystem(v242);
                                                        if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
                                                        {
                                                          [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v224 = _PTLogSystem(v242);
                                                        if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
                                                        {
                                                          [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                        }
                                                      }

                                                      goto LABEL_214;
                                                    }
                                                  }

                                                  else
                                                  {
                                                  }
                                                }

                                                v231 = [PTVFXRenderEffect alloc];
                                                v232 = v15->_metalContext;
                                                v233 = v15->_colorConversion;
                                                prewarmOnly = [descriptorCopy prewarmOnly];
                                                humanDetections = v15->_humanDetections;
                                                sharedResources = v15->_sharedResources;
                                                asyncInitQueue2 = [descriptorCopy asyncInitQueue];
                                                *&v267 = v30;
                                                *(&v267 + 1) = v32;
                                                v268 = 1;
                                                v237 = [(PTVFXRenderEffect *)v231 initWithMetalContext:v232 colorSize:&v267 colorConversion:v233 prewarmOnly:prewarmOnly humanDetections:humanDetections sharedResources:sharedResources asyncInitQueue:asyncInitQueue2];
                                                v238 = v15->_vfxEffect;
                                                v15->_vfxEffect = v237;

                                                if (!v15->_vfxEffect)
                                                {
                                                  v224 = _PTLogSystem(v239);
                                                  if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
                                                  {
                                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                                  }

                                                  goto LABEL_214;
                                                }

                                                [resourcesCopy setRenderEffect:?];
                                                goto LABEL_202;
                                              }

                                              v202 = _PTLogSystem(0);
                                              if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                                              {
                                                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                              }
                                            }

                                            else
                                            {
                                              v202 = _PTLogSystem(v184);
                                              if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                                              {
                                                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                              }
                                            }
                                          }

                                          else
                                          {
                                            v202 = _PTLogSystem(v178);
                                            if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                                            {
                                              [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v202 = _PTLogSystem(v174);
                                          if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
                                          {
                                            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                          }
                                        }

                                        goto LABEL_215;
                                      }

                                      v197 = _PTLogSystem(v168);
                                      v198 = v197;
                                      if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
                                      {
                                        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                        goto LABEL_167;
                                      }
                                    }

                                    else
                                    {
                                      v197 = _PTLogSystem(v158);
                                      v198 = v197;
                                      if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
                                      {
                                        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
LABEL_167:
                                        v22 = 0;
                                        v198 = v197;
                                        goto LABEL_218;
                                      }
                                    }

                                    v22 = 0;
                                    goto LABEL_218;
                                  }

                                  v196 = _PTLogSystem(v154);
                                  if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                  {
                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                  }
                                }

                                else
                                {
                                  v196 = _PTLogSystem(v150);
                                  if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                  {
                                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                  }
                                }
                              }

                              else
                              {
                                v196 = _PTLogSystem(v143);
                                if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                                {
                                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                                }
                              }
                            }
                          }

                          else
                          {
                            v196 = _PTLogSystem(v123);
                            if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                            {
                              [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                            }
                          }
                        }

                        else
                        {
                          v196 = _PTLogSystem(v119);
                          if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                          {
                            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                          }
                        }
                      }

                      else
                      {
                        v196 = _PTLogSystem(v115);
                        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                        {
                          [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                        }
                      }
                    }

                    else
                    {
                      v196 = _PTLogSystem(v110);
                      if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                      {
                        [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                      }
                    }
                  }

                  else
                  {
                    v196 = _PTLogSystem(v106);
                    if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                    {
                      [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                    }
                  }
                }

                else
                {
                  v196 = _PTLogSystem(v103);
                  if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                  {
                    [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                  }
                }
              }

              else
              {
                v196 = _PTLogSystem(0);
                if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
                {
                  [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
                }
              }
            }

            else
            {
              if (!v247)
              {
                v84 = 0;
                height = 0;
                width = 0;
                goto LABEL_62;
              }

              objc_msgSend_colorSize(descriptorCopy);
              objc_msgSend_segmentationSizeForColorSize_(PTEffectPersonSegmentation);
              v90 = v89;
              v92 = v91;
              v93 = [PTMSRResize alloc];
              v94 = v15->_metalContext;
              v275 = v90;
              *&v276 = v92;
              *(&v276 + 1) = 1;
              *&v267 = v30;
              *(&v267 + 1) = v32;
              v268 = 1;
              v95 = [(PTMSRResize *)v93 initWithMetalContext:v94 inputSize:&v267 targetSize:&v275 rotateTargetPixelBuffer:0 compressedIntermediates:0 sRGB:0 sharedResources:resourcesCopy];
              v96 = v15->_msrColorPyramid;
              v15->_msrColorPyramid = v95;

              if (v15->_msrColorPyramid)
              {
                v84 = 0;
                height = 0;
                width = 0;
                goto LABEL_68;
              }

              v196 = _PTLogSystem(v97);
              if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
              {
                [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
              }
            }

            goto LABEL_158;
          }

          v67 = _PTLogSystem(v58);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
          }
        }

        else
        {
          v67 = _PTLogSystem(v54);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
          }
        }

        goto LABEL_158;
      }
    }

    v38 = _PTLogSystem(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [PTEffectRenderer initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:];
    }

    v22 = 0;
LABEL_160:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __122__PTEffectRenderer_initWithDescriptor_metalContext_depthPrioritization_humanDetections_prevTemporalState_sharedResources___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v3 = [PTEffectPersonSegmentation alloc];
    v4 = v14[1];
    objc_msgSend_colorSize(*(a1 + 32));
    v6 = v5;
    v8 = v7;
    v9 = v14[19];
    v10 = [*(a1 + 32) prewarmOnly];
    v11 = [*(a1 + 32) asyncInitQueue];
    v12 = [(PTEffectPersonSegmentation *)v3 initWithMetalContext:v4 colorSize:v9 msrColorPyramid:v10 prewarmOnly:v11 asyncInitQueue:*(a1 + 40) sharedResources:v6, v8];
    v13 = v14[48];
    v14[48] = v12;

    WeakRetained = v14;
  }
}

- (void)createVfxTextures:(id *)textures
{
  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[PTVFXRenderEffect rgbaOutputPixelFormat](self->_vfxEffect width:"rgbaOutputPixelFormat") height:textures->var0 mipmapped:textures->var1, 0];
  [v12 setUsage:7];
  [v12 setStorageMode:0];
  v5 = objc_msgSend_device(self->_metalContext);
  v6 = [v5 newTextureWithDescriptor:v12];
  vfxRenderTarget = self->_vfxRenderTarget;
  self->_vfxRenderTarget = v6;

  v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[PTVFXRenderEffect depthOutputPixelFormat](self->_vfxEffect width:"depthOutputPixelFormat") height:textures->var0 mipmapped:textures->var1, 0];
  [v8 setUsage:7];
  [v8 setStorageMode:0];
  v9 = objc_msgSend_device(self->_metalContext);
  v10 = [v9 newTextureWithDescriptor:v8];
  vfxDepthBuffer = self->_vfxDepthBuffer;
  self->_vfxDepthBuffer = v10;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  CVPixelBufferRelease(self->_intermediateColorPixelbuffers[0]);
  CVPixelBufferRelease(self->_intermediateColorPixelbuffers[1]);
  v4.receiver = self;
  v4.super_class = PTEffectRenderer;
  [(PTEffectRenderer *)&v4 dealloc];
}

- (id)copyTemporalState:(id)state
{
  stateCopy = state;
  v5 = [[PTEffectTemporalState alloc] initWithMetalContext:self->_metalContext];
  [(PTEffectTemporalState *)v5 saveState:stateCopy cvmNetwork:self->_cvmNetwork msrColorPyramid:self->_msrColorPyramid];

  return v5;
}

- (void)reset:(id)reset
{
  self->_frameIndex = 0;
  self->_networkFrameIndex = 0;
  [(PTEffectTemporalFilter *)self->_temporalFilter reset];
  [(PTCVMNetwork *)self->_cvmNetwork reset];
  [(PTEffectRelighting *)self->_effectRelighting reset];
  personSegmentation = self->_personSegmentation;

  [(PTEffectPersonSegmentation *)personSegmentation reset];
}

- (int)render:(id)render waitUntilCompleted:(BOOL)completed gpuCompleted:(id)gpuCompleted
{
  completedCopy = completed;
  *(&v229[1] + 4) = *MEMORY[0x277D85DE8];
  renderCopy = render;
  gpuCompletedCopy = gpuCompleted;
  v212 = objc_opt_new();
  isCommandBufferCommitted = [(PTMetalContext *)self->_metalContext isCommandBufferCommitted];
  if (isCommandBufferCommitted)
  {
    v9 = 0;
  }

  else
  {
    v10 = _PTLogSystem(isCommandBufferCommitted);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTEffect render:];
    }

    v9 = -9;
  }

  v217 = v9;
  [renderCopy frameTimeSeconds];
  intermediateColor = self->_intermediateColor;
  if (!self->_intermediateColor[0])
  {
    v25 = 0;
    intermediateColorPixelbuffers = self->_intermediateColorPixelbuffers;
    v27 = 1;
    do
    {
      v28 = v27;
      CVBufferPropagateAttachments([renderCopy inColorBuffer], intermediateColorPixelbuffers[v25]);
      v29 = intermediateColorPixelbuffers[v25];
      v30 = objc_msgSend_device(self->_metalContext);
      v31 = [PTTexture createFromPixelbuffer:v29 device:v30 textureCache:self->_textureCache metalYCBCRConversion:1 read:1 write:1];
      v32 = intermediateColor[v25];
      intermediateColor[v25] = v31;

      if (!intermediateColor[v25])
      {
        v34 = _PTLogSystem(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [PTEffectRenderer render:v228 waitUntilCompleted:v229 gpuCompleted:v34];
        }
      }

      v27 = 0;
      v25 = 1;
    }

    while ((v28 & 1) != 0);
  }

  v12 = self->_availableEffectTypes & [renderCopy effectType];
  v13 = (v12 & 0x40) == 0;
  if (self->_personSegmentation || (v12 & 0x40) == 0)
  {
    v14 = [(PTBackgroundReplacement *)self->_backgroundReplacement updateAndGetBackgroundState:renderCopy frameIndex:self->_frameIndex];
  }

  else
  {
    v14 = 0;
    v12 &= ~0x40uLL;
    v13 = 1;
  }

  inColorBuffer = [renderCopy inColorBuffer];
  outColorBuffer = [renderCopy outColorBuffer];
  v16 = !v13 && [renderCopy inBackgroundReplacementBuffer] || v14 != 0;
  v218 = v16;
  v17 = 0;
  v198 = v14;
  v19 = v14 != 4 && v14 != 1;
  v20 = v12 & v19;
  if ((v12 & 2) == 0 && (v20 & 1) == 0 && !v218)
  {
    v17 = [renderCopy outColorBuffer] != 0;
  }

  v202 = v17;
  [renderCopy remappedAperture];
  v22 = v21;
  context = objc_autoreleasePoolPush();
  reactions = [renderCopy reactions];
  reactionsToRender = self->_reactionsToRender;

  if (reactions == reactionsToRender)
  {
    [renderCopy setReactions:0];
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
LABEL_27:
    [renderCopy setGestureCount:0];
    goto LABEL_37;
  }

  [(PTEffectRenderer *)self runGestureDetection:renderCopy asyncWork:v212];
LABEL_37:
  v35 = (v12 >> 3) & 1 | v218;
  v36 = v12 & 2;
  v211 = (v12 & 0x10) != 0 && [(PTVFXRenderEffect *)self->_vfxEffect updateWithRenderRequest:renderCopy lastFrameTime:self->_lastFrameTime];
  v201 = (v12 >> 2) & 1;
  if ((v12 & 2) != 0)
  {
    v37 = 1;
  }

  else
  {
    v37 = v20;
  }

  v200 = v201 & v35 | v218;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = ((v201 & v35 | v218) ^ 1) & v211;
  }

  v215 = v20;
  if (!v218)
  {
LABEL_52:
    if ((v38 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_53;
  }

  if ((v12 & 2) == 0)
  {
    LOBYTE(v38) = v38 & ((v198 & 0xFFFFFFFFFFFFFFFELL) == 2);
    goto LABEL_52;
  }

  studiolightFromSegmentation = self->_studiolightFromSegmentation;
  if (studiolightFromSegmentation & v38)
  {
    if ((v198 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
LABEL_50:
      v219 = 0;
      v199 = 0;
      v40 = (v12 & 8) != 0 || v218;
      goto LABEL_54;
    }
  }

  else if (studiolightFromSegmentation)
  {
    goto LABEL_50;
  }

LABEL_53:
  v199 = [(PTHumanDetections *)self->_humanDetections detectionsRawCount]> 0;
  v40 = 1;
  v219 = 1;
LABEL_54:
  frameTimeSeconds = [renderCopy frameTimeSeconds];
  v43 = v42 - self->_lastFrameTime;
  if (v43 > 1.0)
  {
    self->_frameIndex = 0;
  }

  v214 = v12 & 2;
  if ((v12 >> 3) & 1 | v218 && (v43 > 1.0 || !self->_renderSegmentationPreviousFrame))
  {
    v44 = _PTLogSystem(frameTimeSeconds);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v44, OS_LOG_TYPE_INFO, "Reset segmentation network", buf, 2u);
    }

    frameTimeSeconds = [(PTEffectPersonSegmentation *)self->_personSegmentation reset];
    v36 = v12 & 2;
  }

  self->_renderSegmentationPreviousFrame = (v12 & 8) != 0 || v218;
  if (v219 && (v43 > 1.0 || !self->_runCVMNetworkPreviousFrame))
  {
    v45 = _PTLogSystem(frameTimeSeconds);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v45, OS_LOG_TYPE_INFO, "Reset network", buf, 2u);
    }

    [(PTCVMNetwork *)self->_cvmNetwork reset];
    frameTimeSeconds = [(PTEffectTemporalFilter *)self->_temporalFilter reset];
    v36 = v12 & 2;
  }

  self->_runCVMNetworkPreviousFrame = v219;
  if (v36 && (v43 > 1.0 || !self->_renderStudioLightPreviousFrame))
  {
    v46 = _PTLogSystem(frameTimeSeconds);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2243FB000, v46, OS_LOG_TYPE_INFO, "Reset studio light", buf, 2u);
    }

    [(PTEffectRelighting *)self->_effectRelighting reset];
    v36 = v12 & 2;
  }

  self->_renderStudioLightPreviousFrame = v36 >> 1;
  PTDefaultsFlush();
  v205 = PTDefaultsPublicGetDictionary();
  v204 = [v205 objectForKeyedSubscript:@"PTEffectDebug"];
  v213 = v12;
  v47 = [v204 intValue] > 0 || self->_debugType != 0;
  v48 = objc_msgSend_device(self->_metalContext);
  v216 = [PTTexture createFromPixelbuffer:inColorBuffer device:v48 textureCache:self->_textureCache metalYCBCRConversion:1 read:1 write:0];

  if (outColorBuffer)
  {
    v49 = objc_msgSend_device(self->_metalContext);
    v50 = [PTTexture createFromPixelbuffer:outColorBuffer device:v49 textureCache:self->_textureCache metalYCBCRConversion:1 read:v47 write:1];
  }

  else
  {
    v50 = 0;
  }

  v51 = objc_opt_new();
  [v51 addObject:v216];
  if (v214)
  {
    [v51 addObject:{intermediateColor[objc_msgSend(v51, "count") & 1]}];
  }

  if (v215)
  {
    [v51 addObject:{intermediateColor[objc_msgSend(v51, "count") & 1]}];
  }

  if (v218)
  {
    [v51 addObject:{intermediateColor[objc_msgSend(v51, "count") & 1]}];
  }

  if (v50)
  {
    [v51 replaceObjectAtIndex:objc_msgSend(v51 withObject:{"count") - 1, v50}];
  }

  v207 = v50;
  asRGBAFromYUV = [v216 asRGBAFromYUV];

  v53 = v214;
  if ([v51 count] && !asRGBAFromYUV)
  {
    do
    {
      v54 = [v51 objectAtIndexedSubscript:asRGBAFromYUV];
      asRGBAFromYUV2 = [v54 asRGBAFromYUV];

      if (asRGBAFromYUV2)
      {
        v56 = [v51 objectAtIndexedSubscript:asRGBAFromYUV];
        asYUV = [v56 asYUV];
        [v51 replaceObjectAtIndex:asRGBAFromYUV withObject:asYUV];
      }

      ++asRGBAFromYUV;
    }

    while ([v51 count] > asRGBAFromYUV);
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_102;
  }

  if (v214)
  {
    v58 = 1;
  }

  else
  {
    v58 = v219;
  }

  [(PTMSRResize *)self->_msrColorPyramid setEnablePyramidDownsampling:v58];
  [(PTMSRResizeAdditionalOutput *)self->_personSegmentationInput setEnabled:v35 & 1];
  v59 = [(PTMSRResize *)self->_msrColorPyramid downsample:inColorBuffer];
  v217 |= v59;
  if (!v217)
  {
    v217 = 0;
LABEL_102:
    v61 = v215;
    goto LABEL_103;
  }

  v60 = _PTLogSystem(v59);
  v61 = v215;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    [PTCVMNetwork executeNetwork:];
  }

LABEL_103:
  if (v219)
  {
    commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer)
    {
      v64 = _PTLogSystem(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer2 setLabel:@"PTEffectRenderer prepare disparity filter"];

    temporalFilter = self->_temporalFilter;
    commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
    targetRGBA = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
    [(PTEffectTemporalFilter *)temporalFilter prepareFilter:commandBuffer3 opticalFlowRGB:targetRGBA frameIndex:self->_networkFrameIndex];

    [(PTMetalContext *)self->_metalContext commit];
    if ([renderCopy inExternalDisparityBuffer])
    {
      inExternalDisparityBuffer = [renderCopy inExternalDisparityBuffer];
      v70 = objc_msgSend_device(self->_metalContext);
      outDisparity = [PTPixelBufferUtil createTextureFromPixelBuffer:inExternalDisparityBuffer device:v70 textureCache:self->_textureCache sRGB:0];
    }

    else
    {
      [(PTCVMNetwork *)self->_cvmNetwork executeNetwork:self->_networkFrameIndex];
      outDisparity = [(PTCVMNetwork *)self->_cvmNetwork outDisparity];
    }

    commandBuffer4 = [(PTMetalContext *)self->_metalContext commandBuffer];

    if (!commandBuffer4)
    {
      v74 = _PTLogSystem(v73);
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer5 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer5 setLabel:@"PTEffectRenderer filter disparity and normal."];

    [(PTHumanDetections *)self->_humanDetections detectionsRawCount];
    if (v214)
    {
      [(PTNormalAndDiffuseEstimation *)self->_diffuseEstimation estimateDiffuseFromDisparity:outDisparity outDiffuse:self->_diffuse];
    }

    v77 = 1.0;
    if ([(PTCVMNetwork *)self->_cvmNetwork networkVersionID]== 7)
    {
      depthPrioritization = [(PTCVMNetwork *)self->_cvmNetwork depthPrioritization];
      LODWORD(v76) = 1070138536;
      if (depthPrioritization != 2)
      {
        *&v76 = 1.0;
      }

      if (depthPrioritization == 1)
      {
        v77 = 1.941;
      }

      else
      {
        v77 = *&v76;
      }
    }

    v79 = self->_temporalFilter;
    commandBuffer6 = [(PTMetalContext *)self->_metalContext commandBuffer];
    if (v214)
    {
      diffuse = self->_diffuse;
    }

    else
    {
      diffuse = 0;
    }

    LODWORD(v197) = self->_networkFrameIndex;
    *&v81 = v77;
    [(PTEffectTemporalFilter *)v79 filter:commandBuffer6 inDisparity:outDisparity inNormal:0 inDiffuse:diffuse filterNormalSpatial:1 filterDiffuseSpatial:1 frameIndex:v81 disparityScale:v197];

    v61 = v215;
  }

  if ((v35 & 1) == 0)
  {
    v210 = 0;
    v85 = v213;
    goto LABEL_141;
  }

  [(PTMetalContext *)self->_metalContext commit];
  if ([renderCopy outPersonSegmentationMatteBuffer])
  {
    outPersonSegmentationMatteBuffer = [renderCopy outPersonSegmentationMatteBuffer];
    v84 = objc_msgSend_device(self->_metalContext);
    v210 = [PTPixelBufferUtil createTextureFromPixelBuffer:outPersonSegmentationMatteBuffer device:v84];

LABEL_133:
    personSegmentation = self->_personSegmentation;
    commandBuffer7 = [(PTMetalContext *)self->_metalContext commandBuffer];
    if (renderCopy)
    {
      objc_msgSend_transform(renderCopy);
    }

    else
    {
      v226 = 0u;
      v227 = 0u;
      *buf = 0u;
    }

    pixelbuffer = [(PTMSRResizeAdditionalOutput *)self->_personSegmentationInput pixelbuffer];
    texture = [(PTMSRResizeAdditionalOutput *)self->_personSegmentationInput texture];
    v217 |= [(PTEffectPersonSegmentation *)personSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:commandBuffer7 inColor:v216 transform:buf inSegmentationRGBA:pixelbuffer inSegmentationRGBATexture:texture outUpscaledSegmentation:v210];

    [(PTMetalContext *)self->_metalContext commit];
    commandBuffer8 = [(PTMetalContext *)self->_metalContext commandBuffer];

    v85 = v213;
    v61 = v215;
    if (!commandBuffer8)
    {
      v93 = _PTLogSystem(v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
      }
    }

    commandBuffer9 = [(PTMetalContext *)self->_metalContext commandBuffer];
    [commandBuffer9 setLabel:@"PTEffectRenderer renderPostSegmentationMask"];

LABEL_141:
    if (v199 || [(PTVFXRenderEffect *)self->_vfxEffect emitNewReaction])
    {
      if ([(PTVFXRenderEffect *)self->_vfxEffect emitNewReaction])
      {
        v95 = [(PTHumanDetections *)self->_humanDetections detectionsRawCount]== 0;
      }

      else
      {
        v95 = 0;
      }

      v96 = [(PTHumanDetections *)self->_humanDetections faceDetectionsFilteredState:v95];
      effectUtil = [(PTEffectResources *)self->_sharedResources effectUtil];
      commandBuffer10 = [(PTMetalContext *)self->_metalContext commandBuffer];
      faceDetectionsRaw = [(PTHumanDetections *)self->_humanDetections faceDetectionsRaw];
      focusDisparityMax = self->_focusDisparityMax;
      disparityFiltered = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
      *&v102 = focusDisparityMax;
      [effectUtil sampleFaceRects:commandBuffer10 maxFaceRects:4 faceRects:faceDetectionsRaw faceRectsState:v96 focusDisparityMax:disparityFiltered inDisparity:self->_faceDisparityArray outFaceDistanceArray:v102];

      effectUtil2 = [(PTEffectResources *)self->_sharedResources effectUtil];
      commandBuffer11 = [(PTMetalContext *)self->_metalContext commandBuffer];
      detectionsRawCount = [(PTHumanDetections *)self->_humanDetections detectionsRawCount];
      focusDisparityUpdateCoefficientSDOF = self->_focusDisparityUpdateCoefficientSDOF;
      focusDisparityUpdateCoefficientStudioLight = self->_focusDisparityUpdateCoefficientStudioLight;
      v108 = self->_networkFrameIndex == 0;
      emitNewReaction = [(PTVFXRenderEffect *)self->_vfxEffect emitNewReaction];
      focusOnAll = [renderCopy focusOnAll];
      *&v111 = self->_disparityFocusOffsetSDOF.disparityOffsetFactor;
      *&v112 = self->_disparityFocusOffsetSDOF.offsetInMeters;
      *&v113 = self->_disparityFocusOffsetReactions.disparityOffsetFactor;
      *&v114 = self->_disparityFocusOffsetReactions.offsetInMeters;
      *&v115 = self->_disparityFocusOffsetStudioLight.disparityOffsetFactor;
      *&v116 = self->_disparityFocusOffsetStudioLight.offsetInMeters;
      *&v117 = focusDisparityUpdateCoefficientSDOF;
      *&v118 = focusDisparityUpdateCoefficientStudioLight;
      [effectUtil2 updateFocusObject:commandBuffer11 faceRectCount:detectionsRawCount disparityFocusOffsetSDOF:v96 disparityFocusOffsetReactions:v108 disparityFocusOffsetStudioLight:emitNewReaction exponentialMovingAverageSDOF:focusOnAll exponentialMovingAverageStudioLight:v111 faceRectsState:v112 isFirstFrame:v113 emitNewReaction:v114 focusOnAll:v115 lastFocus:v116 inFaceDisparityArray:v117 outDisparityModifiers:v118 outDisparityFocus:self->_lastFocus outStudioLightEffectModifier:self->_faceDisparityArray outUseDisparityBufferForReactions:{self->_focusDisparityModifiers, self->_focusDisparityRaw, self->_studioLightEffectModifier, self->_useDisparityBufferForReactions}];

      v85 = v213;
      v53 = v214;
      v61 = v215;
    }

    v119 = v61 | v211 & ~v200;
    diffuseFiltered = [(PTEffectTemporalFilter *)self->_temporalFilter diffuseFiltered];
    if (v53)
    {
      if (self->_studiolightFromSegmentation && v218)
      {
        v121 = [(PTEffectRelighting *)self->_effectRelighting approximateDiffuseFromSegmentation:v210];
        backgroundReplacement = self->_backgroundReplacement;
        if (backgroundReplacement && (v198 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(PTBackgroundReplacement *)backgroundReplacement transitionTimeNormalized:renderCopy];
          if (v198 == 3)
          {
            v124 = 1.0 - v123;
          }

          else
          {
            v124 = v123;
          }

          textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
          commandBuffer12 = [(PTMetalContext *)self->_metalContext commandBuffer];
          *&v127 = v124;
          [textureUtil mix:commandBuffer12 inTexX:diffuseFiltered inTexY:v121 outTex:v121 alpha:v127];
        }

        v128 = v121;

        diffuseFiltered = v128;
      }

      [(PTMetalContext *)self->_metalContext commit];
      [(PTEffectRelighting *)self->_effectRelighting estimateLightIntensity:v216 inFaceRects:[(PTHumanDetections *)self->_humanDetections faceDetectionsRaw] numberOfFaceRects:[(PTHumanDetections *)self->_humanDetections detectionsRawCount] humanDetections:self->_humanDetections effectRenderRequest:renderCopy asyncWork:v212];
      commandBuffer13 = [(PTMetalContext *)self->_metalContext commandBuffer];

      if (!commandBuffer13)
      {
        v131 = _PTLogSystem(v130);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
        }
      }

      commandBuffer14 = [(PTMetalContext *)self->_metalContext commandBuffer];
      [commandBuffer14 setLabel:@"PTEffectRenderer renderPostLightEstimation"];

      [(PTHumanDetections *)self->_humanDetections detectionsRawCount];
      effectRelighting = self->_effectRelighting;
      v134 = [v51 objectAtIndexedSubscript:0];
      if (v219)
      {
        disparityFiltered2 = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
      }

      else
      {
        disparityFiltered2 = 0;
      }

      focusDisparityModifiers = self->_focusDisparityModifiers;
      v137 = [v51 objectAtIndexedSubscript:1];
      [renderCopy relightStrengthStudioLight];
      [PTEffectRelighting studioLightInColor:"studioLightInColor:inDiffuse:inDisparity:inFocusDisparityModifier:outColor:relightStrength:studioLightFromSegmentationBlend:studioLightEffectModifier:" inDiffuse:v134 inDisparity:diffuseFiltered inFocusDisparityModifier:disparityFiltered2 outColor:focusDisparityModifiers relightStrength:v137 studioLightFromSegmentationBlend:self->_studioLightEffectModifier studioLightEffectModifier:?];

      if (v219)
      {
      }

      [v51 removeObjectAtIndex:0];
      v85 = v213;
      v61 = v215;
    }

    v138 = v119 & v219;
    if (v61)
    {
      colorPyramid = self->_colorPyramid;
      commandBuffer15 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v141 = [v51 objectAtIndexedSubscript:0];
      [(PTPyramid *)colorPyramid updatePyramid:commandBuffer15 inPTTexture:v141];

      if (!v138)
      {
LABEL_168:
        if (!v61)
        {
          goto LABEL_187;
        }

        goto LABEL_179;
      }
    }

    else if (!v138)
    {
      goto LABEL_168;
    }

    if (v211)
    {
      disparityCenteredUpscaledReactions = self->_disparityCenteredUpscaledReactions;
    }

    else
    {
      disparityCenteredUpscaledReactions = 0;
    }

    v143 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_disparityCenteredUpscaledSDOF, disparityCenteredUpscaledReactions, 0}];
    guidedFilter = self->_guidedFilter;
    commandBuffer16 = [(PTMetalContext *)self->_metalContext commandBuffer];
    disparityFiltered3 = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
    v147 = [(PTGuidedFilter *)guidedFilter guidedFilter:commandBuffer16 image:disparityFiltered3 guideRGBACoefficients:self->_guideRGBACoefficients guideRGBAUpscale:self->_guideRGBAUpscale upscaledImageArray:v143 sourceColorBitDepth:8 postModifierBuffer:self->_focusDisparityModifiers]| v217;

    v217 = v147;
    v85 = v213;
    if (v147)
    {
      v149 = _PTLogSystem(v148);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer render:waitUntilCompleted:gpuCompleted:];
      }
    }

    if (!v61)
    {
LABEL_187:
      if (v218)
      {
        v177 = self->_backgroundReplacement;
        commandBuffer17 = [(PTMetalContext *)self->_metalContext commandBuffer];
        v179 = [v51 objectAtIndexedSubscript:0];
        v180 = self->_colorPyramid;
        v181 = [v51 objectAtIndexedSubscript:1];
        LODWORD(v197) = self->_frameIndex;
        v182 = v180;
        v85 = v213;
        [(PTBackgroundReplacement *)v177 replaceBackground:commandBuffer17 inColor:v179 inColorPyramid:v182 inSegmentation:v210 effectRenderRequest:renderCopy outColor:v181 frameIndex:v197];

        [v51 removeObjectAtIndex:0];
      }

      [renderCopy setOutColorBufferWriteSkipped:0];
      if (!v202)
      {
        goto LABEL_197;
      }

      if ([(PTEffectDescriptor *)self->_effectDescriptor allowSkipOutColorBufferWrite])
      {
        activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
        if ([activeReactions count])
        {
        }

        else
        {
          debugType = self->_debugType;

          if (!debugType)
          {
            [renderCopy setOutColorBufferWriteSkipped:1];
            goto LABEL_197;
          }
        }
      }

      [(PTEffectRenderer *)self copyInColor:v216 toOutColor:v207];
LABEL_197:
      if (((v201 | !v211) & 1) == 0)
      {
        commandBuffer18 = [(PTMetalContext *)self->_metalContext commandBuffer];
        v217 |= [(PTEffectRenderer *)self renderReaction:commandBuffer18 effectRenderRequest:renderCopy];
      }

      asyncProcessingQueue = [(PTEffectDescriptor *)self->_effectDescriptor asyncProcessingQueue];
      commandBuffer19 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v222[0] = MEMORY[0x277D85DD0];
      v222[1] = 3221225472;
      v222[2] = __59__PTEffectRenderer_render_waitUntilCompleted_gpuCompleted___block_invoke;
      v222[3] = &unk_278523760;
      v223 = v212;
      v188 = asyncProcessingQueue;
      v224 = v188;
      [commandBuffer19 addScheduledHandler:v222];

      commandBuffer20 = [(PTMetalContext *)self->_metalContext commandBuffer];
      v220[0] = MEMORY[0x277D85DD0];
      v220[1] = 3221225472;
      v220[2] = __59__PTEffectRenderer_render_waitUntilCompleted_gpuCompleted___block_invoke_2;
      v220[3] = &unk_278523788;
      v221 = gpuCompletedCopy;
      [commandBuffer20 addCompletedHandler:v220];

      metalContext = self->_metalContext;
      if (completedCopy)
      {
        [(PTMetalContext *)metalContext commitAndWaitUntilCompleted];
      }

      else
      {
        [(PTMetalContext *)metalContext commitAndWaitUntilScheduled];
      }

      if (v219)
      {
        ++self->_networkFrameIndex;
      }

      [renderCopy frameTimeSeconds];
      self->_lastFrameTime = v191;

      v192 = 1;
      goto LABEL_205;
    }

LABEL_179:
    v150 = [v51 objectAtIndexedSubscript:0];
    [(PTRenderRequest *)self->_sdofRenderRequest setSourceColor:v150];

    v151 = [v51 objectAtIndexedSubscript:1];
    [(PTRenderRequest *)self->_sdofRenderRequest setDestinationColor:v151];

    LODWORD(v152) = v22;
    [(PTRenderRequest *)self->_sdofRenderRequest setFNumber:v152];
    if ((v85 & 4) != 0)
    {
      effectUtil3 = [(PTEffectResources *)self->_sharedResources effectUtil];
      commandBuffer21 = [(PTMetalContext *)self->_metalContext commandBuffer];
      [renderCopy inScreenCaptureRect];
      v156 = v155;
      v158 = v157;
      v160 = v159;
      v162 = v161;
      p_disparityCenteredUpscaledWithScreenCaptureRect = &self->_disparityCenteredUpscaledWithScreenCaptureRect;
      disparityCenteredUpscaledWithScreenCaptureRect = self->_disparityCenteredUpscaledWithScreenCaptureRect;
      disparityCenteredUpscaledSDOF = self->_disparityCenteredUpscaledSDOF;
      [(PTRenderRequest *)self->_sdofRenderRequest focalLenIn35mmFilm];
      v167 = v166;
      [(PTRenderRequest *)self->_sdofRenderRequest fNumber];
      LODWORD(v169) = v168;
      v170 = disparityCenteredUpscaledSDOF;
      v85 = v213;
      LODWORD(v171) = v167;
      [effectUtil3 updateDisparity:commandBuffer21 inScreenCaptureRect:v170 inDisparity:disparityCenteredUpscaledWithScreenCaptureRect outDisparity:v156 focalLenIn35mmFilm:v158 fNumber:{v160, v162, v171, v169}];
    }

    else
    {
      p_disparityCenteredUpscaledWithScreenCaptureRect = &self->_disparityCenteredUpscaledSDOF;
    }

    [(PTRenderRequest *)self->_sdofRenderRequest setSourceDisparity:*p_disparityCenteredUpscaledWithScreenCaptureRect];
    renderPipeline = self->_renderPipeline;
    commandBuffer22 = [(PTMetalContext *)self->_metalContext commandBuffer];
    v174 = [(PTRenderPipeline *)renderPipeline encodeRenderTo:commandBuffer22 withRenderRequest:self->_sdofRenderRequest]| v217;

    v217 = v174;
    if (v174)
    {
      v176 = _PTLogSystem(v175);
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer render:waitUntilCompleted:gpuCompleted:];
      }
    }

    [v51 removeObjectAtIndex:0];
    goto LABEL_187;
  }

  upscaledPersonSegmentation = self->_upscaledPersonSegmentation;
  if (upscaledPersonSegmentation)
  {
    v210 = upscaledPersonSegmentation;
    goto LABEL_133;
  }

  v210 = _PTLogSystem(0);
  if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
  {
    [PTEffectRenderer render:waitUntilCompleted:gpuCompleted:];
  }

  v192 = 0;
  v85 = v213;
LABEL_205:

  objc_autoreleasePoolPop(context);
  if (v192)
  {
    isCommandBufferCommitted2 = [(PTMetalContext *)self->_metalContext isCommandBufferCommitted];
    if (isCommandBufferCommitted2)
    {
      v194 = v217;
    }

    else
    {
      v195 = _PTLogSystem(isCommandBufferCommitted2);
      if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
      {
        [PTEffect render:];
      }

      v194 = v217 | 0xFFFFFFF7;
    }

    ++self->_frameIndex;
    self->_lastEffectType = v85;
  }

  else
  {
    v194 = -10;
  }

  return v194;
}

void __59__PTEffectRenderer_render_waitUntilCompleted_gpuCompleted___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        dispatch_async(*(a1 + 40), *(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)copyInColor:(id)color toOutColor:(id)outColor
{
  outColorCopy = outColor;
  asYUV = [color asYUV];
  asYUV2 = [outColorCopy asYUV];

  commandBuffer = [(PTMetalContext *)self->_metalContext commandBuffer];

  if (!commandBuffer)
  {
    v11 = _PTLogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTEffectPersonSegmentation runPersonSegmentationToOutPersonSegmentationMatteBuffer:inColor:transform:inSegmentationRGBA:inSegmentationRGBATexture:outUpscaledSegmentation:];
    }
  }

  commandBuffer2 = [(PTMetalContext *)self->_metalContext commandBuffer];
  [commandBuffer2 setLabel:@"PTEffectRenderer renderByPass"];

  textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
  commandBuffer3 = [(PTMetalContext *)self->_metalContext commandBuffer];
  texLuma = [asYUV texLuma];
  texLuma2 = [asYUV2 texLuma];
  [textureUtil copy:commandBuffer3 inTex:texLuma outTex:texLuma2];

  textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
  commandBuffer4 = [(PTMetalContext *)self->_metalContext commandBuffer];
  texChroma = [asYUV texChroma];
  texChroma2 = [asYUV2 texChroma];
  [textureUtil2 copy:commandBuffer4 inTex:texChroma outTex:texChroma2];
}

- (BOOL)isRenderRequiredForRequest:(id)request
{
  requestCopy = request;
  effectType = [requestCopy effectType];
  if (self->_frameIndex)
  {
    v6 = (effectType & 0x4F) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = effectType;
  if ([(PTBackgroundReplacement *)self->_backgroundReplacement updateAndGetBackgroundState:requestCopy frameIndex:?])
  {
    goto LABEL_7;
  }

  if ((v7 & 0x10) != 0)
  {
    activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
    if ([activeReactions count])
    {

      goto LABEL_7;
    }

    reactions = [requestCopy reactions];
    v17 = [reactions count];

    if (v17)
    {
      goto LABEL_7;
    }
  }

  [requestCopy frameTimeSeconds];
  if ((v7 & 0x20) == 0)
  {
LABEL_11:
    [requestCopy frameTimeSeconds];
    v8 = 0;
    self->_lastFrameTime = v11;
    *&self->_runCVMNetworkPreviousFrame = 0;
    self->_networkFrameIndex = 0;
    goto LABEL_8;
  }

  reactionProvider = self->_reactionProvider;
  if (reactionProvider)
  {
    v14 = v10;
    latestReactions = [(PTEffectReactionProvider *)reactionProvider latestReactions];
    if ([latestReactions count])
    {
    }

    else
    {
      v18 = self->_reactionProvider;
      v20[0] = (v14 * 100000.0);
      v20[1] = 0x1000186A0;
      v20[2] = 0;
      v19 = [(PTEffectReactionProvider *)v18 runGestureDetectionForTimeStamp:v20];

      if (!v19)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_7:
  v8 = 1;
LABEL_8:

  return v8;
}

- (int)runGestureDetection:(id)detection asyncWork:(id)work
{
  v61 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  workCopy = work;
  detectedObjects = [detectionCopy detectedObjects];
  v9 = [detectedObjects objectForKeyedSubscript:@"DetectedObjectsInfo"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;

    detectedObjects = v11;
  }

  v12 = [detectedObjects objectForKeyedSubscript:@"HumanHands"];
  v13 = [v12 objectForKeyedSubscript:@"ObjectsArray"];

  v14 = [detectedObjects objectForKeyedSubscript:@"HumanFaces"];
  v15 = [v14 objectForKeyedSubscript:@"ObjectsArray"];

  if (!detectedObjects || self->_reactionProvider)
  {
    if (self->_externalHandDetectionsAvailable && !v13)
    {
      v24 = _PTLogSystem(v16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer runGestureDetection:asyncWork:];
      }
    }
  }

  else
  {
    self->_externalHandDetectionsAvailable = v13 != 0;
    v17 = _PTLogSystem(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      if (self->_externalHandDetectionsAvailable)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_2243FB000, v17, OS_LOG_TYPE_INFO, "External hand detections available: %@", buf, 0xCu);
    }

    v19 = [[PTEffectReactionProvider alloc] initWithEffectDescriptor:self->_effectDescriptor sharedResources:self->_sharedResources externalHandDetectionsEnabled:self->_externalHandDetectionsAvailable];
    reactionProvider = self->_reactionProvider;
    self->_reactionProvider = v19;

    v22 = self->_reactionProvider;
    if (!v22)
    {
      v23 = _PTLogSystem(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer runGestureDetection:asyncWork:];
      }

      v22 = self->_reactionProvider;
    }

    [(PTEffectDebugLayer *)self->_debugLayer setReactionProvider:v22];
  }

  if (self->_reactionProvider)
  {
    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    reactions = [detectionCopy reactions];
    v53 = [v25 initWithArray:reactions];

    [detectionCopy frameTimeSeconds];
    v28 = (v27 * 100000.0);
    if (detectionCopy)
    {
      objc_msgSend_transform(detectionCopy);
    }

    else
    {
      v60 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    v29 = [PTUtil getRotationDegreesFromAffineTransform:buf];
    v30 = self->_reactionProvider;
    inColorBuffer = [detectionCopy inColorBuffer];
    *buf = v28;
    *&buf[8] = 0x1000186A0;
    *&buf[16] = 0;
    [(PTEffectReactionProvider *)v30 updateWithFrame:inColorBuffer withTimeStamp:buf withRotationDegrees:v29 withDetectedHands:v13 withDetectedFaces:v15 asyncWork:workCopy];
    latestReactions = [(PTEffectReactionProvider *)self->_reactionProvider latestReactions];
    v33 = latestReactions;
    if (latestReactions && [latestReactions count])
    {
      v48 = v15;
      v49 = v13;
      v50 = v10;
      v51 = detectedObjects;
      v52 = workCopy;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v47 = v33;
      v34 = v33;
      v35 = [v34 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v55;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v55 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v54 + 1) + 8 * i);
            [v39 startTimeSeconds];
            if (v40 < 0.0)
            {
              [detectionCopy frameTimeSeconds];
              v41 = _PTLogSystem([v39 setStartTimeSeconds:?]);
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                triggerID = [v39 triggerID];
                emoji = [v39 emoji];
                *buf = 134218242;
                *&buf[4] = triggerID;
                *&buf[12] = 2112;
                *&buf[14] = emoji;
                _os_log_debug_impl(&dword_2243FB000, v41, OS_LOG_TYPE_DEBUG, "PTEffect: Detected reaction with ID %li, type %@", buf, 0x16u);
              }
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v36);
      }

      [v53 addObjectsFromArray:v34];
      detectedObjects = v51;
      workCopy = v52;
      v13 = v49;
      v10 = v50;
      v33 = v47;
      v15 = v48;
    }

    v44 = [v53 copy];
    reactionsToRender = self->_reactionsToRender;
    self->_reactionsToRender = v44;

    if (([detectionCopy suppressGestureTriggeredReactions] & 1) == 0)
    {
      [detectionCopy setReactions:self->_reactionsToRender];
    }

    [detectionCopy setGestureCount:{-[NSArray count](self->_reactionsToRender, "count")}];
  }

  return 0;
}

- (int)renderReaction:(id)reaction effectRenderRequest:(id)request
{
  reactionCopy = reaction;
  requestCopy = request;
  v8 = ([requestCopy effectType] & 0x40) != 0 && objc_msgSend(requestCopy, "inBackgroundReplacementBuffer") != 0;
  activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
  vfxRenderTarget = [activeReactions count];

  if (vfxRenderTarget)
  {
    [(PTVFXRenderEffect *)self->_vfxEffect depthNearFar];
    v12 = v11;
    reverseZ = [(PTVFXRenderEffect *)self->_vfxEffect reverseZ];
    outColorROI = [requestCopy outColorROI];
    if (v15 <= 0.0 || (outColorROI = [requestCopy outColorROI], v16 <= 0.0))
    {
      v19 = _PTLogSystem(outColorROI);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PTEffectRenderer renderReaction:effectRenderRequest:];
      }

      LODWORD(vfxRenderTarget) = -10;
    }

    else
    {
      if ([requestCopy outPersonSegmentationMatteBuffer])
      {
        outPersonSegmentationMatteBuffer = [requestCopy outPersonSegmentationMatteBuffer];
        v18 = objc_msgSend_device(self->_metalContext);
        v19 = [PTPixelBufferUtil createTextureFromPixelBuffer:outPersonSegmentationMatteBuffer device:v18 textureCache:self->_textureCache sRGB:0];
      }

      else if (v8)
      {
        v19 = self->_upscaledPersonSegmentation;
      }

      else
      {
        v19 = 0;
      }

      [requestCopy outColorROI];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      LOWORD(v48) = CVPixelBufferGetWidth([requestCopy outColorBuffer]);
      HIWORD(v48) = CVPixelBufferGetHeight([requestCopy outColorBuffer]);
      [PTEffectUtil computeRectInPixelCoordinates:v48 pixelBufferSize:131074 alignment:v21, v23, v25, v27];
      v47 = v28;
      v30 = v29;
      if ([(MTLTexture *)self->_vfxRenderTarget width]!= v29 || [(MTLTexture *)self->_vfxRenderTarget height]!= v47)
      {
        valuePtr[0] = v30;
        valuePtr[1] = v47;
        valuePtr[2] = 1;
        [(PTEffectRenderer *)self createVfxTextures:valuePtr];
      }

      depthConverter = self->_depthConverter;
      if (v19)
      {
        inBilbyAlphaMaskTexture = [requestCopy inBilbyAlphaMaskTexture];
        vfxDepthBuffer = self->_vfxDepthBuffer;
        [requestCopy reactionsCombinedCropRect];
        LODWORD(v34) = 0.75;
        [(PTDepthConverter *)depthConverter segmentationToDepth:reactionCopy inSegmentation:v19 inAlphaMask:inBilbyAlphaMaskTexture outDepth:vfxDepthBuffer depthNearFar:reverseZ segmentationDepthNearFar:v12 reverseZ:5.27765665e13 threshold:v34 cropRect:v35];
      }

      else
      {
        disparityCenteredUpscaledReactions = self->_disparityCenteredUpscaledReactions;
        v37 = self->_vfxDepthBuffer;
        useDisparityBufferForReactions = self->_useDisparityBufferForReactions;
        [requestCopy reactionsCombinedCropRect];
        [(PTDepthConverter *)depthConverter thresholdedDisparityToDepth:reactionCopy inBaseDisparity:disparityCenteredUpscaledReactions outDepth:v37 depthNearFar:reverseZ segmentationDepthNearFar:useDisparityBufferForReactions disparityThresholdNearFar:v12 reverseZ:5.27765665e13 useDisparityBuffer:-5.2386921e-11 cropRect:v39];
      }

      v40 = self->_vfxDepthBuffer;
      vfxRenderTarget = self->_vfxRenderTarget;
      v41 = self->_disparityCenteredUpscaledReactions;
      vfxEffect = self->_vfxEffect;
      disparityFiltered = [(PTEffectTemporalFilter *)self->_temporalFilter disparityFiltered];
      LODWORD(vfxRenderTarget) = [(PTVFXRenderEffect *)vfxEffect renderWithBackgroundDimming:reactionCopy effectRGBA:vfxRenderTarget inCenteredDisparity:v41 inSegmentation:v19 effectDepth:v40 disparityFiltered:disparityFiltered focusDisparityModifiers:self->_focusDisparityModifiers renderRequest:requestCopy debugType:self->_debugType];

      LODWORD(valuePtr[0]) = [(PTVFXRenderEffect *)self->_vfxEffect maxReactionEffectComplexity];
      outColorBuffer = [requestCopy outColorBuffer];
      v45 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
      CMSetAttachment(outColorBuffer, @"ReactionEffectComplexity", v45, 1u);
    }
  }

  return vfxRenderTarget;
}

- (id)activeReactions
{
  activeReactions = [(PTVFXRenderEffect *)self->_vfxEffect activeReactions];
  v3 = [activeReactions copy];

  return v3;
}

+ (BOOL)useStudioLightFromSegmentation:(id)segmentation
{
  v3 = FTGetChipIdentifier();
  if ([v3 isEqualToString:@"H13"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"H14"];
  }

  v5 = ([&stru_2837D16E8 length] != 0) | v4;

  return v5 & 1;
}

- (void)initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDescriptor:(void *)a1 metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.3(void *a1)
{
  [a1 floatValue];
  v2 = OUTLINED_FUNCTION_3_7(v1);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v3, v4, "defaults write com.apple.coremedia PTEffectFocusDisparityMax %f", v5, v6, v7, v8, v2);
}

- (void)initWithDescriptor:(void *)a1 metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.4(void *a1)
{
  [a1 floatValue];
  v2 = OUTLINED_FUNCTION_3_7(v1);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v3, v4, "defaults write com.apple.coremedia PTEffectFocusDisparityExponentialMovingAverage %f", v5, v6, v7, v8, v2);
}

- (void)initWithDescriptor:(void *)a1 metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.5(void *a1)
{
  [a1 floatValue];
  v2 = OUTLINED_FUNCTION_3_7(v1);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v3, v4, "defaults write com.apple.coremedia PTEffectFocusDisparityExponentialMovingAverageStudioLight %f", v5, v6, v7, v8, v2);
}

- (void)initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.7()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithDescriptor:metalContext:depthPrioritization:humanDetections:prevTemporalState:sharedResources:.cold.15()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)render:(uint8_t *)buf waitUntilCompleted:(void *)a2 gpuCompleted:(os_log_t)log .cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "_intermediateColor[i]";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

- (void)render:waitUntilCompleted:gpuCompleted:.cold.10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)runGestureDetection:asyncWork:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)renderReaction:effectRenderRequest:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end