@interface PTRaytracingUtils
+ (PTFocus)createFocusObject:(SEL)object anamorphicFactor:(id)factor radialObstructionFactor:(float)obstructionFactor colorSize:(float)size circleOfConfusionReference:(float)reference fNumberLimitWeight:(float)weight;
+ (PTFocusEdge)createFocusEdge;
- (PTRaytracingUtils)initWithMetalContext:(id)context;
- (int)detectDilatedEdges:(id)edges inDisparity:(id)disparity tempEdges:(id)tempEdges outEdges:(id)outEdges focusObject:(PTFocus *)object disparityDiffMinMax:(id)max edgeTolerance:(float)tolerance;
- (int)sobelEdgeDetection:(id)detection inImage:(id)image outEdges:(id)edges edgeTolerance:(float)tolerance;
- (void)disparityApplyPostModifier:(id)modifier inDisparity:(id)disparity outDisparity:(id)outDisparity postModifier:(PTPostModifier)postModifier;
- (void)disparityMinMaxApplyPostModifier:(id)modifier disparityMinMaxBuffer:(id)buffer postModifier:(PTPostModifier)postModifier;
- (void)disparityPortraitPreviewDeadzone:(id)deadzone inDisparity:(id)disparity outDisparity:(id)outDisparity postModifier:(PTPostModifier)modifier;
- (void)focusEdgeMask:(id)mask inDisparityDiff:(id)diff focusEdge:(PTFocusEdge)edge outFocusEdgeMask:(id)edgeMask;
@end

@implementation PTRaytracingUtils

- (PTRaytracingUtils)initWithMetalContext:(id)context
{
  contextCopy = context;
  v71.receiver = self;
  v71.super_class = PTRaytracingUtils;
  v6 = [(PTRaytracingUtils *)&v71 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_22;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [contextCopy computePipelineStateFor:@"disparityApplyPostModifier" withConstants:0];
  disparityApplyPostModifier = v7->_disparityApplyPostModifier;
  v7->_disparityApplyPostModifier = v8;

  if (!v7->_disparityApplyPostModifier)
  {
    v27 = _PTLogSystem(v10);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v27 initWithMetalContext:v28, v29, v30, v31, v32, v33, v34];
    }

    goto LABEL_21;
  }

  v11 = [contextCopy computePipelineStateFor:@"disparityPortraitPreviewDeadzone" withConstants:0];
  disparityPortraitPreviewDeadzone = v7->_disparityPortraitPreviewDeadzone;
  v7->_disparityPortraitPreviewDeadzone = v11;

  if (!v7->_disparityPortraitPreviewDeadzone)
  {
    v27 = _PTLogSystem(v13);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v27 initWithMetalContext:v35, v36, v37, v38, v39, v40, v41];
    }

    goto LABEL_21;
  }

  v14 = [contextCopy computePipelineStateFor:@"disparityMinMaxApplyPostModifier" withConstants:0];
  disparityMinMaxApplyPostModifier = v7->_disparityMinMaxApplyPostModifier;
  v7->_disparityMinMaxApplyPostModifier = v14;

  if (!v7->_disparityMinMaxApplyPostModifier)
  {
    v27 = _PTLogSystem(v16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v27 initWithMetalContext:v42, v43, v44, v45, v46, v47, v48];
    }

    goto LABEL_21;
  }

  v17 = [contextCopy computePipelineStateFor:@"sobelEdgeDetector" withConstants:0];
  sobelEdgeDetector = v7->_sobelEdgeDetector;
  v7->_sobelEdgeDetector = v17;

  if (!v7->_sobelEdgeDetector)
  {
    v27 = _PTLogSystem(v19);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v27 initWithMetalContext:v49, v50, v51, v52, v53, v54, v55];
    }

    goto LABEL_21;
  }

  v20 = [contextCopy computePipelineStateFor:@"edgeDilation" withConstants:0];
  edgeDilation = v7->_edgeDilation;
  v7->_edgeDilation = v20;

  if (!v7->_edgeDilation)
  {
    v27 = _PTLogSystem(v22);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v27 initWithMetalContext:v56, v57, v58, v59, v60, v61, v62];
    }

    goto LABEL_21;
  }

  v23 = [contextCopy computePipelineStateFor:@"focusEdgeMask" withConstants:0];
  focusEdgeMask = v7->_focusEdgeMask;
  v7->_focusEdgeMask = v23;

  if (!v7->_focusEdgeMask)
  {
    v27 = _PTLogSystem(v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v27 initWithMetalContext:v63, v64, v65, v66, v67, v68, v69];
    }

LABEL_21:

LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v26 = v7;
LABEL_23:

  return v26;
}

- (void)focusEdgeMask:(id)mask inDisparityDiff:(id)diff focusEdge:(PTFocusEdge)edge outFocusEdgeMask:(id)edgeMask
{
  edgeCopy = edge;
  edgeMaskCopy = edgeMask;
  diffCopy = diff;
  computeCommandEncoder = [mask computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_focusEdgeMask];
  [computeCommandEncoder setTexture:diffCopy atIndex:0];

  [computeCommandEncoder setTexture:edgeMaskCopy atIndex:1];
  [computeCommandEncoder setBytes:&edgeCopy length:16 atIndex:0];
  width = [edgeMaskCopy width];
  height = [edgeMaskCopy height];

  v16[0] = width;
  v16[1] = height;
  v16[2] = 1;
  v14 = xmmword_2244A5220;
  v15 = 1;
  [computeCommandEncoder dispatchThreads:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)disparityApplyPostModifier:(id)modifier inDisparity:(id)disparity outDisparity:(id)outDisparity postModifier:(PTPostModifier)postModifier
{
  postModifierCopy = postModifier;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  computeCommandEncoder = [modifier computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_disparityApplyPostModifier];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setBytes:&postModifierCopy length:12 atIndex:0];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v24[0] = width;
  v24[1] = height;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];
}

- (void)disparityPortraitPreviewDeadzone:(id)deadzone inDisparity:(id)disparity outDisparity:(id)outDisparity postModifier:(PTPostModifier)modifier
{
  modifierCopy = modifier;
  v9 = 1.0 / (0.1 - (1.0 / modifier.var0));
  v10 = 1.0 / fmax(-0.100000001 - 1.0 / modifier.var0, 0.05);
  v27 = v10;
  v28 = v9;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  computeCommandEncoder = [deadzone computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v14 = _PTLogSystem(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v14 disparityApplyPostModifier:v15 inDisparity:v16 outDisparity:v17 postModifier:v18, v19, v20, v21];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_disparityPortraitPreviewDeadzone];
  [computeCommandEncoder setTexture:disparityCopy atIndex:0];

  [computeCommandEncoder setTexture:outDisparityCopy atIndex:1];
  [computeCommandEncoder setBytes:&modifierCopy length:12 atIndex:0];
  [computeCommandEncoder setBytes:&v28 length:4 atIndex:1];
  [computeCommandEncoder setBytes:&v27 length:4 atIndex:2];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v26[0] = width;
  v26[1] = height;
  v26[2] = 1;
  v24 = xmmword_2244A5230;
  v25 = 1;
  [computeCommandEncoder dispatchThreads:v26 threadsPerThreadgroup:&v24];
  [computeCommandEncoder endEncoding];
}

- (void)disparityMinMaxApplyPostModifier:(id)modifier disparityMinMaxBuffer:(id)buffer postModifier:(PTPostModifier)postModifier
{
  postModifierCopy = postModifier;
  bufferCopy = buffer;
  computeCommandEncoder = [modifier computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v9 = _PTLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v9 disparityApplyPostModifier:v10 inDisparity:v11 outDisparity:v12 postModifier:v13, v14, v15, v16];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_disparityMinMaxApplyPostModifier];
  [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];

  [computeCommandEncoder setBytes:&postModifierCopy length:12 atIndex:1];
  v19 = vdupq_n_s64(1uLL);
  v20 = 1;
  v17 = xmmword_2244A5230;
  v18 = 1;
  [computeCommandEncoder dispatchThreads:&v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (int)sobelEdgeDetection:(id)detection inImage:(id)image outEdges:(id)edges edgeTolerance:(float)tolerance
{
  toleranceCopy = tolerance;
  edgesCopy = edges;
  imageCopy = image;
  computeCommandEncoder = [detection computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v12 = _PTLogSystem(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_sobelEdgeDetector];
  [computeCommandEncoder setTexture:imageCopy atIndex:0];

  [computeCommandEncoder setTexture:edgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&toleranceCopy length:4 atIndex:0];
  width = [edgesCopy width];
  height = [edgesCopy height];

  v25[0] = width;
  v25[1] = height;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [computeCommandEncoder dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)detectDilatedEdges:(id)edges inDisparity:(id)disparity tempEdges:(id)tempEdges outEdges:(id)outEdges focusObject:(PTFocus *)object disparityDiffMinMax:(id)max edgeTolerance:(float)tolerance
{
  disparityCopy = disparity;
  maxCopy = max;
  outEdgesCopy = outEdges;
  tempEdgesCopy = tempEdges;
  edgesCopy = edges;
  *&v21 = tolerance;
  [(PTRaytracingUtils *)self sobelEdgeDetection:edgesCopy inImage:disparityCopy outEdges:outEdgesCopy edgeTolerance:v21];
  computeCommandEncoder = [edgesCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v24 = _PTLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v24 disparityApplyPostModifier:v25 inDisparity:v26 outDisparity:v27 postModifier:v28, v29, v30, v31];
    }
  }

  var3 = object->var3;
  v42 = var3 * [disparityCopy width];
  v41 = 1;
  [computeCommandEncoder setComputePipelineState:self->_edgeDilation];
  [computeCommandEncoder setTexture:outEdgesCopy atIndex:0];
  [computeCommandEncoder setTexture:tempEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&v41 length:1 atIndex:0];
  [computeCommandEncoder setBytes:&v42 length:4 atIndex:1];
  [computeCommandEncoder setBuffer:maxCopy offset:0 atIndex:2];

  width = [outEdgesCopy width];
  height = [outEdgesCopy height];
  v40 = 1;
  v36 = xmmword_2244A5230;
  v37 = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v36];
  v41 = 0;
  [computeCommandEncoder setTexture:tempEdgesCopy atIndex:0];

  [computeCommandEncoder setTexture:outEdgesCopy atIndex:1];
  [computeCommandEncoder setBytes:&v41 length:1 atIndex:0];
  width2 = [outEdgesCopy width];
  height2 = [outEdgesCopy height];

  width = width2;
  height = height2;
  v40 = 1;
  v36 = xmmword_2244A5230;
  v37 = 1;
  [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v36];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (PTFocus)createFocusObject:(SEL)object anamorphicFactor:(id)factor radialObstructionFactor:(float)obstructionFactor colorSize:(float)size circleOfConfusionReference:(float)reference fNumberLimitWeight:(float)weight
{
  v9 = v8;
  v47 = *&reference;
  factorCopy = factor;
  [factorCopy visCropFactor];
  v50 = v14;
  [factorCopy visCropFactor];
  if (v50 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v50;
  }

  [factorCopy visCropFactorPreview];
  v51 = v17;
  [factorCopy visCropFactorPreview];
  if (v51 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v51;
  }

  [factorCopy focalLenIn35mmFilm];
  *&v21 = v20 / 1000.0 * v16;
  *v21.i32 = *v21.i32;
  v52 = v21;
  [factorCopy fNumber];
  v23 = v22 / v19;
  [factorCopy focusDisparity];
  v25 = v24;
  [factorCopy networkBias];
  v27 = ((((v25 - v26) * (*v52.i32 * *v52.i32)) / weight) * v9) + v23 * (1.0 - v9);
  if (v27 >= v23)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  [factorCopy alphaLowLight];
  v30 = v28;
  if (v28 < 0.1)
  {
    v30 = 0.1;
  }

  *&retstr[1].var0 = 0;
  *&retstr[1].var2 = 0;
  v31 = (1.0 - v29) * 22.0 + v30 * v29;
  *&retstr->var4 = 0;
  [factorCopy focusDisparity];
  v33 = v32;

  retstr->var1 = v33;
  LODWORD(retstr->var2) = v52.i32[0];
  v36 = *v52.i32 / (v31 + v31);
  v35 = v36;
  retstr->var0 = v35;
  LODWORD(v36) = v48.i32[1];
  v37.i32[0] = 1024685244;
  if (v48.f32[1] <= v48.f32[0])
  {
    v38.i32[0] = vdup_lane_s32(v37, 0).u32[0];
    v38.f32[1] = vmuls_lane_f32(0.036, v48, 1) / v48.f32[0];
  }

  else
  {
    v38 = vdup_lane_s32(v37, 0);
    v38.f32[0] = (v48.f32[0] * 0.036) / v48.f32[1];
  }

  *v39.i32 = 1.0 / obstructionFactor;
  *&v39.i32[1] = obstructionFactor;
  v40 = vmul_n_f32(vdiv_f32(vdup_lane_s32(v52, 0), v38), v35);
  *&retstr[1].var0 = vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(*&v36, v48), 0), vrev64_s32(v39), v39), v40);
  LODWORD(retstr->var3) = v40.i32[0];
  if (v48.f32[0] <= v48.f32[1])
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[1] = v48.f32[1] / v48.f32[0];
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }

    _D0.f32[0] = v48.f32[0] / v48.f32[1];
  }

  v46 = size + -1.0 / size;
  *&retstr[1].var4 = vmul_n_f32(_D0, v46);
  return result;
}

+ (PTFocusEdge)createFocusEdge
{
  v2 = 0.1;
  v3 = 3.0;
  v4 = 0.125;
  v5 = 6.0;
  result.minMaxThreshold = v2;
  result.gradientWeight = v5;
  result.gradientThreshold = v4;
  result.width = v3;
  return result;
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_focusEdgeMask";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_edgeDilation";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_sobelEdgeDetector";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityMinMaxApplyPostModifier";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityPortraitPreviewDeadzone";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityApplyPostModifier";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)disparityApplyPostModifier:(uint64_t)a3 inDisparity:(uint64_t)a4 outDisparity:(uint64_t)a5 postModifier:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "computeEncoder";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end