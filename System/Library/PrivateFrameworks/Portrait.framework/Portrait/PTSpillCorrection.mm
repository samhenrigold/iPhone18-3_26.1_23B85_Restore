@interface PTSpillCorrection
- (PTSpillCorrection)initWithMetalContext:(id)context refinementWidth:(unint64_t)width refinementHeight:(unint64_t)height refinementSteps:(unint64_t)steps minFilterKernelWidth:(unint64_t)kernelWidth minFilterKernelHeight:(unint64_t)kernelHeight maxFilterKernelWidth:(unint64_t)filterKernelWidth maxFilterKernelHeight:(unint64_t)self0 gaussianBlurSigma:(float)self1;
- (int)encodeToCommandBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture normChromaOffset:(id)offset segmentationTexture:;
- (int)encodeToCommandBuffer:(id)buffer rgbTexture:(id)texture segmentationTexture:(id)segmentationTexture;
- (int)encodeToCommandBuffer:(id)buffer segmentationTexture:(id)texture;
- (void)diffusion:(id)diffusion;
- (void)initConstraints:(id)constraints;
@end

@implementation PTSpillCorrection

- (PTSpillCorrection)initWithMetalContext:(id)context refinementWidth:(unint64_t)width refinementHeight:(unint64_t)height refinementSteps:(unint64_t)steps minFilterKernelWidth:(unint64_t)kernelWidth minFilterKernelHeight:(unint64_t)kernelHeight maxFilterKernelWidth:(unint64_t)filterKernelWidth maxFilterKernelHeight:(unint64_t)self0 gaussianBlurSigma:(float)self1
{
  contextCopy = context;
  v240.receiver = self;
  v240.super_class = PTSpillCorrection;
  v20 = [(PTSpillCorrection *)&v240 init];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_63;
  }

  objc_storeStrong(&v20->_metalContext, context);
  v21->_refinementSteps = steps;
  v22 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_initConstraintsPart1" withConstants:0];
  initConstraintsPart1 = v21->_initConstraintsPart1;
  v21->_initConstraintsPart1 = v22;

  if (!v21->_initConstraintsPart1)
  {
    v105 = _PTLogSystem(v24);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v106 refinementHeight:v107 refinementSteps:v108 minFilterKernelWidth:v109 minFilterKernelHeight:v110 maxFilterKernelWidth:v111 maxFilterKernelHeight:v112 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v25 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_initConstraintsPart2" withConstants:0];
  initConstraintsPart2 = v21->_initConstraintsPart2;
  v21->_initConstraintsPart2 = v25;

  if (!v21->_initConstraintsPart2)
  {
    v105 = _PTLogSystem(v27);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v113 refinementHeight:v114 refinementSteps:v115 minFilterKernelWidth:v116 minFilterKernelHeight:v117 maxFilterKernelWidth:v118 maxFilterKernelHeight:v119 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v28 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_initDiffusion" withConstants:0];
  initDiffusion = v21->_initDiffusion;
  v21->_initDiffusion = v28;

  if (!v21->_initDiffusion)
  {
    v105 = _PTLogSystem(v30);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v120 refinementHeight:v121 refinementSteps:v122 minFilterKernelWidth:v123 minFilterKernelHeight:v124 maxFilterKernelWidth:v125 maxFilterKernelHeight:v126 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v31 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_constrainDiffusion" withConstants:0];
  constrainDiffusion = v21->_constrainDiffusion;
  v21->_constrainDiffusion = v31;

  if (!v21->_constrainDiffusion)
  {
    v105 = _PTLogSystem(v33);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v127 refinementHeight:v128 refinementSteps:v129 minFilterKernelWidth:v130 minFilterKernelHeight:v131 maxFilterKernelWidth:v132 maxFilterKernelHeight:v133 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v34 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_computeUpsamplingCoefficients" withConstants:0];
  computeUpsamplingCoefficients = v21->_computeUpsamplingCoefficients;
  v21->_computeUpsamplingCoefficients = v34;

  if (!v21->_computeUpsamplingCoefficients)
  {
    v105 = _PTLogSystem(v36);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v134 refinementHeight:v135 refinementSteps:v136 minFilterKernelWidth:v137 minFilterKernelHeight:v138 maxFilterKernelWidth:v139 maxFilterKernelHeight:v140 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v37 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_averageUpsamplingCoefficients" withConstants:0];
  averageUpsamplingCoefficients = v21->_averageUpsamplingCoefficients;
  v21->_averageUpsamplingCoefficients = v37;

  if (!v21->_averageUpsamplingCoefficients)
  {
    v105 = _PTLogSystem(v39);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v141 refinementHeight:v142 refinementSteps:v143 minFilterKernelWidth:v144 minFilterKernelHeight:v145 maxFilterKernelWidth:v146 maxFilterKernelHeight:v147 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  v40 = [contextCopy computePipelineStateFor:@"PTSpillCorrection_applyUpsamplingCoefficients" withConstants:0];
  applyUpsamplingCoefficients = v21->_applyUpsamplingCoefficients;
  v21->_applyUpsamplingCoefficients = v40;

  if (!v21->_applyUpsamplingCoefficients)
  {
    v105 = _PTLogSystem(v42);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v148 refinementHeight:v149 refinementSteps:v150 minFilterKernelWidth:v151 minFilterKernelHeight:v152 maxFilterKernelWidth:v153 maxFilterKernelHeight:v154 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil = [contextCopy textureUtil];
  v44 = [textureUtil createWithWidth:width height:height pixelFormat:115];
  guideTexture = v21->_guideTexture;
  v21->_guideTexture = v44;

  if (!v21->_guideTexture)
  {
    v105 = _PTLogSystem(v46);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v155 refinementHeight:v156 refinementSteps:v157 minFilterKernelWidth:v158 minFilterKernelHeight:v159 maxFilterKernelWidth:v160 maxFilterKernelHeight:v161 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil2 = [contextCopy textureUtil];
  v48 = [textureUtil2 createWithWidth:width height:height pixelFormat:115];
  diffusionTexture = v21->_diffusionTexture;
  v21->_diffusionTexture = v48;

  if (!v21->_diffusionTexture)
  {
    v105 = _PTLogSystem(v50);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v162 refinementHeight:v163 refinementSteps:v164 minFilterKernelWidth:v165 minFilterKernelHeight:v166 maxFilterKernelWidth:v167 maxFilterKernelHeight:v168 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil3 = [contextCopy textureUtil];
  v52 = [textureUtil3 createWithWidth:width height:height pixelFormat:115];
  constraintsTexture = v21->_constraintsTexture;
  v21->_constraintsTexture = v52;

  if (!v21->_constraintsTexture)
  {
    v105 = _PTLogSystem(v54);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v169 refinementHeight:v170 refinementSteps:v171 minFilterKernelWidth:v172 minFilterKernelHeight:v173 maxFilterKernelWidth:v174 maxFilterKernelHeight:v175 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil4 = [contextCopy textureUtil];
  v56 = [textureUtil4 createWithWidth:width height:height pixelFormat:115];
  coeffXTexture = v21->_coeffXTexture;
  v21->_coeffXTexture = v56;

  if (!v21->_coeffXTexture)
  {
    v105 = _PTLogSystem(v58);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v176 refinementHeight:v177 refinementSteps:v178 minFilterKernelWidth:v179 minFilterKernelHeight:v180 maxFilterKernelWidth:v181 maxFilterKernelHeight:v182 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil5 = [contextCopy textureUtil];
  v60 = [textureUtil5 createWithWidth:width height:height pixelFormat:115];
  coeffYTexture = v21->_coeffYTexture;
  v21->_coeffYTexture = v60;

  if (!v21->_coeffYTexture)
  {
    v105 = _PTLogSystem(v62);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v183 refinementHeight:v184 refinementSteps:v185 minFilterKernelWidth:v186 minFilterKernelHeight:v187 maxFilterKernelWidth:v188 maxFilterKernelHeight:v189 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil6 = [contextCopy textureUtil];
  v64 = [textureUtil6 createWithWidth:width height:height pixelFormat:115];
  coeffZTexture = v21->_coeffZTexture;
  v21->_coeffZTexture = v64;

  if (!v21->_coeffZTexture)
  {
    v105 = _PTLogSystem(v66);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v190 refinementHeight:v191 refinementSteps:v192 minFilterKernelWidth:v193 minFilterKernelHeight:v194 maxFilterKernelWidth:v195 maxFilterKernelHeight:v196 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil7 = [contextCopy textureUtil];
  v68 = [textureUtil7 createWithWidth:width height:height pixelFormat:115];
  coeffXFilteredTexture = v21->_coeffXFilteredTexture;
  v21->_coeffXFilteredTexture = v68;

  if (!v21->_coeffXFilteredTexture)
  {
    v105 = _PTLogSystem(v70);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v197 refinementHeight:v198 refinementSteps:v199 minFilterKernelWidth:v200 minFilterKernelHeight:v201 maxFilterKernelWidth:v202 maxFilterKernelHeight:v203 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil8 = [contextCopy textureUtil];
  v72 = [textureUtil8 createWithWidth:width height:height pixelFormat:115];
  coeffYFilteredTexture = v21->_coeffYFilteredTexture;
  v21->_coeffYFilteredTexture = v72;

  if (!v21->_coeffYFilteredTexture)
  {
    v105 = _PTLogSystem(v74);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v204 refinementHeight:v205 refinementSteps:v206 minFilterKernelWidth:v207 minFilterKernelHeight:v208 maxFilterKernelWidth:v209 maxFilterKernelHeight:v210 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil9 = [contextCopy textureUtil];
  v76 = [textureUtil9 createWithWidth:width height:height pixelFormat:115];
  coeffZFilteredTexture = v21->_coeffZFilteredTexture;
  v21->_coeffZFilteredTexture = v76;

  if (!v21->_coeffZFilteredTexture)
  {
    v105 = _PTLogSystem(v78);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v211 refinementHeight:v212 refinementSteps:v213 minFilterKernelWidth:v214 minFilterKernelHeight:v215 maxFilterKernelWidth:v216 maxFilterKernelHeight:v217 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil10 = [contextCopy textureUtil];
  v80 = [textureUtil10 createWithWidth:width height:height pixelFormat:25];
  segmentationTexture = v21->_segmentationTexture;
  v21->_segmentationTexture = v80;

  if (!v21->_segmentationTexture)
  {
    v105 = _PTLogSystem(v82);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v218 refinementHeight:v219 refinementSteps:v220 minFilterKernelWidth:v221 minFilterKernelHeight:v222 maxFilterKernelWidth:v223 maxFilterKernelHeight:v224 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil11 = [contextCopy textureUtil];
  v84 = [textureUtil11 createWithWidth:width height:height pixelFormat:25];
  segmentationMinTexture = v21->_segmentationMinTexture;
  v21->_segmentationMinTexture = v84;

  if (!v21->_segmentationMinTexture)
  {
    v105 = _PTLogSystem(v86);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v225 refinementHeight:v226 refinementSteps:v227 minFilterKernelWidth:v228 minFilterKernelHeight:v229 maxFilterKernelWidth:v230 maxFilterKernelHeight:v231 gaussianBlurSigma:?];
    }

    goto LABEL_62;
  }

  textureUtil12 = [contextCopy textureUtil];
  v88 = [textureUtil12 createWithWidth:width height:height pixelFormat:25];
  segmentationMaxTexture = v21->_segmentationMaxTexture;
  v21->_segmentationMaxTexture = v88;

  if (!v21->_segmentationMaxTexture)
  {
    v105 = _PTLogSystem(v90);
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      [PTSpillCorrection initWithMetalContext:v105 refinementWidth:v232 refinementHeight:v233 refinementSteps:v234 minFilterKernelWidth:v235 minFilterKernelHeight:v236 maxFilterKernelWidth:v237 maxFilterKernelHeight:v238 gaussianBlurSigma:?];
    }

LABEL_62:

LABEL_63:
    v104 = 0;
    goto LABEL_64;
  }

  if ((PTDefaultsPublicGetBool(@"harvesting.enabled", 0) & 1) == 0)
  {
    v91 = objc_alloc(MEMORY[0x277CD74D0]);
    v92 = objc_msgSend_device(contextCopy);
    v93 = [v91 initWithDevice:v92 kernelWidth:kernelWidth kernelHeight:kernelHeight];
    minFilter = v21->_minFilter;
    v21->_minFilter = v93;

    v95 = objc_alloc(MEMORY[0x277CD74C8]);
    v96 = objc_msgSend_device(contextCopy);
    v97 = [v95 initWithDevice:v96 kernelWidth:filterKernelWidth kernelHeight:filterKernelHeight];
    maxFilter = v21->_maxFilter;
    v21->_maxFilter = v97;

    v99 = objc_alloc(MEMORY[0x277CD7520]);
    v100 = objc_msgSend_device(contextCopy);
    *&v101 = sigma;
    v102 = [v99 initWithDevice:v100 sigma:v101];
    gaussianBlur = v21->_gaussianBlur;
    v21->_gaussianBlur = v102;
  }

  v104 = v21;
LABEL_64:

  return v104;
}

- (int)encodeToCommandBuffer:(id)buffer rgbTexture:(id)texture segmentationTexture:(id)segmentationTexture
{
  metalContext = self->_metalContext;
  segmentationTextureCopy = segmentationTexture;
  textureCopy = texture;
  bufferCopy = buffer;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  [textureUtil copy:bufferCopy inTex:textureCopy outTex:self->_guideTexture];

  LODWORD(textureCopy) = [(PTSpillCorrection *)self encodeToCommandBuffer:bufferCopy segmentationTexture:segmentationTextureCopy];
  return textureCopy;
}

- (int)encodeToCommandBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture normChromaOffset:(id)offset segmentationTexture:
{
  metalContext = self->_metalContext;
  offsetCopy = offset;
  chromaTextureCopy = chromaTexture;
  textureCopy = texture;
  bufferCopy = buffer;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  [textureUtil resample420To444:bufferCopy inLuma:textureCopy inChroma:chromaTextureCopy outYUV:self->_guideTexture];

  LODWORD(chromaTextureCopy) = [(PTSpillCorrection *)self encodeToCommandBuffer:bufferCopy segmentationTexture:offsetCopy];
  return chromaTextureCopy;
}

- (int)encodeToCommandBuffer:(id)buffer segmentationTexture:(id)texture
{
  metalContext = self->_metalContext;
  textureCopy = texture;
  bufferCopy = buffer;
  textureUtil = [(PTMetalContext *)metalContext textureUtil];
  [textureUtil copy:bufferCopy inTex:textureCopy outTex:self->_segmentationTexture];

  [(PTSpillCorrection *)self updateFromDefaults];
  [(PTSpillCorrection *)self initConstraints:bufferCopy];
  [(PTSpillCorrection *)self diffusion:bufferCopy];

  return 0;
}

- (void)initConstraints:(id)constraints
{
  minFilter = self->_minFilter;
  segmentationTexture = self->_segmentationTexture;
  segmentationMinTexture = self->_segmentationMinTexture;
  constraintsCopy = constraints;
  [(MPSImageAreaMin *)minFilter encodeToCommandBuffer:constraintsCopy sourceTexture:segmentationTexture destinationTexture:segmentationMinTexture];
  [(MPSImageAreaMax *)self->_maxFilter encodeToCommandBuffer:constraintsCopy sourceTexture:self->_segmentationTexture destinationTexture:self->_segmentationMaxTexture];
  computeCommandEncoder = [constraintsCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_initConstraintsPart1];
  [computeCommandEncoder setTexture:self->_guideTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_segmentationMinTexture atIndex:1];
  p_constraintsTexture = &self->_constraintsTexture;
  [computeCommandEncoder setTexture:self->_constraintsTexture atIndex:2];
  width = [(MTLTexture *)self->_constraintsTexture width];
  height = [(MTLTexture *)self->_constraintsTexture height];
  v17 = width;
  v18 = height;
  v19 = 1;
  v15 = xmmword_2244A5230;
  v16 = 1;
  [computeCommandEncoder dispatchThreads:&v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder endEncoding];

  [(MPSImageGaussianBlur *)self->_gaussianBlur encodeToCommandBuffer:constraintsCopy inPlaceTexture:&self->_constraintsTexture fallbackCopyAllocator:0];
  computeCommandEncoder2 = [constraintsCopy computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self->_initConstraintsPart2];
  [computeCommandEncoder2 setTexture:self->_guideTexture atIndex:0];
  [computeCommandEncoder2 setTexture:self->_segmentationMinTexture atIndex:1];
  [computeCommandEncoder2 setTexture:self->_segmentationMaxTexture atIndex:2];
  [computeCommandEncoder2 setTexture:self->_constraintsTexture atIndex:3];
  width2 = [(MTLTexture *)self->_constraintsTexture width];
  height2 = [(MTLTexture *)*p_constraintsTexture height];
  v17 = width2;
  v18 = height2;
  v19 = 1;
  v15 = xmmword_2244A5230;
  v16 = 1;
  [computeCommandEncoder2 dispatchThreads:&v17 threadsPerThreadgroup:&v15];
  [computeCommandEncoder2 endEncoding];
}

- (void)diffusion:(id)diffusion
{
  diffusionCopy = diffusion;
  computeCommandEncoder = [diffusionCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_initDiffusion];
  [computeCommandEncoder setTexture:self->_guideTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_segmentationTexture atIndex:1];
  [computeCommandEncoder setTexture:self->_constraintsTexture atIndex:2];
  [computeCommandEncoder setTexture:self->_diffusionTexture atIndex:3];
  width = [(MTLTexture *)self->_diffusionTexture width];
  height = [(MTLTexture *)self->_diffusionTexture height];
  v23 = width;
  v24 = height;
  v25 = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [computeCommandEncoder dispatchThreads:&v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];

  if (self->_refinementSteps)
  {
    v8 = 0;
    do
    {
      computeCommandEncoder2 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder2 setComputePipelineState:self->_computeUpsamplingCoefficients];
      [computeCommandEncoder2 setTexture:self->_guideTexture atIndex:0];
      [computeCommandEncoder2 setTexture:self->_diffusionTexture atIndex:1];
      [computeCommandEncoder2 setTexture:self->_coeffXTexture atIndex:2];
      [computeCommandEncoder2 setTexture:self->_coeffYTexture atIndex:3];
      [computeCommandEncoder2 setTexture:self->_coeffZTexture atIndex:4];
      width2 = [(MTLTexture *)self->_coeffXTexture width];
      height2 = [(MTLTexture *)self->_coeffXTexture height];
      v23 = width2;
      v24 = height2;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder2 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder2 endEncoding];

      computeCommandEncoder3 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder3 setComputePipelineState:self->_averageUpsamplingCoefficients];
      [computeCommandEncoder3 setTexture:self->_coeffXTexture atIndex:0];
      [computeCommandEncoder3 setTexture:self->_coeffYTexture atIndex:1];
      [computeCommandEncoder3 setTexture:self->_coeffZTexture atIndex:2];
      [computeCommandEncoder3 setTexture:self->_coeffXFilteredTexture atIndex:3];
      [computeCommandEncoder3 setTexture:self->_coeffYFilteredTexture atIndex:4];
      [computeCommandEncoder3 setTexture:self->_coeffZFilteredTexture atIndex:5];
      width3 = [(MTLTexture *)self->_coeffXTexture width];
      height3 = [(MTLTexture *)self->_coeffXTexture height];
      v23 = width3;
      v24 = height3;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder3 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder3 endEncoding];

      computeCommandEncoder4 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder4 setComputePipelineState:self->_applyUpsamplingCoefficients];
      [computeCommandEncoder4 setTexture:self->_guideTexture atIndex:0];
      [computeCommandEncoder4 setTexture:self->_coeffXFilteredTexture atIndex:1];
      [computeCommandEncoder4 setTexture:self->_coeffYFilteredTexture atIndex:2];
      [computeCommandEncoder4 setTexture:self->_coeffZFilteredTexture atIndex:3];
      [computeCommandEncoder4 setTexture:self->_diffusionTexture atIndex:4];
      width4 = [(MTLTexture *)self->_diffusionTexture width];
      height4 = [(MTLTexture *)self->_diffusionTexture height];
      v23 = width4;
      v24 = height4;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder4 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder4 endEncoding];

      computeCommandEncoder5 = [diffusionCopy computeCommandEncoder];
      [computeCommandEncoder5 setComputePipelineState:self->_constrainDiffusion];
      [computeCommandEncoder5 setTexture:self->_constraintsTexture atIndex:0];
      [computeCommandEncoder5 setTexture:self->_diffusionTexture atIndex:1];
      width5 = [(MTLTexture *)self->_diffusionTexture width];
      height5 = [(MTLTexture *)self->_diffusionTexture height];
      v23 = width5;
      v24 = height5;
      v25 = 1;
      v21 = xmmword_2244A5230;
      v22 = 1;
      [computeCommandEncoder5 dispatchThreads:&v23 threadsPerThreadgroup:&v21];
      [computeCommandEncoder5 endEncoding];

      ++v8;
    }

    while (self->_refinementSteps > v8);
  }
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_segmentationMaxTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_segmentationMinTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_segmentationTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_coeffZFilteredTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_coeffYFilteredTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_coeffXFilteredTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_coeffZTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_coeffYTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_coeffXTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_constraintsTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_diffusionTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_guideTexture";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_applyUpsamplingCoefficients";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_averageUpsamplingCoefficients";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_computeUpsamplingCoefficients";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_constrainDiffusion";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_initDiffusion";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.18(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_initConstraintsPart2";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 refinementWidth:(uint64_t)a4 refinementHeight:(uint64_t)a5 refinementSteps:(uint64_t)a6 minFilterKernelWidth:(uint64_t)a7 minFilterKernelHeight:(uint64_t)a8 maxFilterKernelWidth:maxFilterKernelHeight:gaussianBlurSigma:.cold.19(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_initConstraintsPart1";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end