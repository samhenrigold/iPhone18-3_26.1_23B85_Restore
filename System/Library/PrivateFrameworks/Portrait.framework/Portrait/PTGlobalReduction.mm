@interface PTGlobalReduction
- (PTGlobalReduction)initWithMetalContext:(id)context textureSize:(CGSize)size pixelFormat:(unint64_t)format;
- (void)parallelReduction:(id)reduction inTexture:(id)texture globalBuffer:(id)buffer offset:(int)offset pipelineState:(id)state reductionType:(int)type factor:(float)factor;
- (void)parallelReductionAverage:(id)average inTexture:(id)texture outGlobalAverage:(id)globalAverage;
- (void)parallelReductionMax:(id)max inTexture:(id)texture globalMaxBuffer:(id)buffer;
- (void)parallelReductionMin:(id)min inTexture:(id)texture globalMinBuffer:(id)buffer;
- (void)parallelReductionMinMax:(id)max inTexture:(id)texture globalMinMaxBuffer:(id)buffer;
- (void)parallelReductionTextureMinMaxSimd:(id)simd inTexture:(id)texture globalBuffer:(id)buffer;
- (void)parallelReductionTextureSimd:(id)simd inTexture:(id)texture globalBuffer:(id)buffer offset:(int)offset reductionType:(int)type factor:(float)factor;
@end

@implementation PTGlobalReduction

- (PTGlobalReduction)initWithMetalContext:(id)context textureSize:(CGSize)size pixelFormat:(unint64_t)format
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v133.receiver = self;
  v133.super_class = PTGlobalReduction;
  v11 = [(PTGlobalReduction *)&v133 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metalContext, context);
    v13 = [(PTMetalContext *)v12->_metalContext supportsFamily:1007];
    v12->_supportGpuSIMD = v13;
    if (v13)
    {
      v14 = [contextCopy computePipelineStateFor:@"parallelReductionTextureSimd" withConstants:0];
      parallelReductionTextureSimd = v12->_parallelReductionTextureSimd;
      v12->_parallelReductionTextureSimd = v14;

      if (v12->_parallelReductionTextureSimd)
      {
        v17 = [contextCopy computePipelineStateFor:@"parallelReductionTextureMinMaxSimd" withConstants:0];
        parallelReductionTextureMinMaxSimd = v12->_parallelReductionTextureMinMaxSimd;
        v12->_parallelReductionTextureMinMaxSimd = v17;

        if (v12->_parallelReductionTextureMinMaxSimd)
        {
          threadExecutionWidth = [(MTLComputePipelineState *)v12->_parallelReductionTextureSimd threadExecutionWidth];
          v12->simdReductionThreadsPerGroup.width = 4;
          v12->simdReductionThreadsPerGroup.height = threadExecutionWidth >> 2;
          v12->simdReductionThreadsPerGroup.depth = 1;
          maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v12->_parallelReductionTextureSimd maxTotalThreadsPerThreadgroup];
          if (maxTotalThreadsPerThreadgroup < v12->simdReductionThreadsPerGroup.height * v12->simdReductionThreadsPerGroup.width)
          {
            v22 = _PTLogSystem(maxTotalThreadsPerThreadgroup);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [(PTGlobalReduction *)v22 initWithMetalContext:v23 textureSize:v24 pixelFormat:v25, v26, v27, v28, v29];
            }
          }

          v30 = objc_opt_new();
          v31 = width;
          v32 = height;
          v33 = height;
          v34 = width;
          while (1)
          {
            v35 = 2 * v12->simdReductionThreadsPerGroup.width;
            v36 = 2 * v12->simdReductionThreadsPerGroup.height;
            if (v35 >= v34 && v36 >= v33)
            {
              break;
            }

            v34 = vcvtps_s32_f32(v34 / v35);
            v33 = vcvtps_s32_f32(v33 / v36);
            textureUtil = [(PTMetalContext *)v12->_metalContext textureUtil];
            v38 = [textureUtil createWithWidth:v34 height:v33 pixelFormat:format];

            if (!v38)
            {
              v79 = _PTLogSystem(v39);
              if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
              {
                [(PTGlobalReduction *)v79 initWithMetalContext:v80 textureSize:v81 pixelFormat:v82, v83, v84, v85, v86];
              }

              goto LABEL_46;
            }

            [v30 addObject:v38];
          }

          v108 = [v30 copy];
          simdTextures = v12->_simdTextures;
          v12->_simdTextures = v108;

          for (i = objc_opt_new(); ; [i addObject:v30])
          {

            v111 = 2 * v12->simdReductionThreadsPerGroup.width;
            v112 = 2 * v12->simdReductionThreadsPerGroup.height;
            if (v111 >= v31 && v112 >= v32)
            {
              v131 = [i copy];
              simdMinMaxTextures = v12->_simdMinMaxTextures;
              v12->_simdMinMaxTextures = v131;

              goto LABEL_48;
            }

            v31 = vcvtps_s32_f32(v31 / v111);
            v32 = 2 * vcvtps_s32_f32(v32 / v112);
            textureUtil2 = [(PTMetalContext *)v12->_metalContext textureUtil];
            v30 = [textureUtil2 createWithWidth:v31 height:v32 pixelFormat:format];

            if (!v30)
            {
              break;
            }
          }

          v79 = _PTLogSystem(v114);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            [(PTGlobalReduction *)v79 initWithMetalContext:v124 textureSize:v125 pixelFormat:v126, v127, v128, v129, v130];
          }

          v30 = i;
LABEL_46:

          goto LABEL_41;
        }

        v57 = _PTLogSystem(v19);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [(PTGlobalReduction *)v57 initWithMetalContext:v87 textureSize:v88 pixelFormat:v89, v90, v91, v92, v93];
        }
      }

      else
      {
        v57 = _PTLogSystem(v16);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [(PTGlobalReduction *)v57 initWithMetalContext:v65 textureSize:v66 pixelFormat:v67, v68, v69, v70, v71];
        }
      }
    }

    else
    {
      textureUtil3 = [(PTMetalContext *)v12->_metalContext textureUtil];
      v41 = [textureUtil3 createWithWidth:((width + 1.0) * 0.5) height:((height + 1.0) * 0.5) pixelFormat:format];
      texPing = v12->_texPing;
      v12->_texPing = v41;

      if (v12->_texPing)
      {
        textureUtil4 = [(PTMetalContext *)v12->_metalContext textureUtil];
        format = [textureUtil4 createWithWidth:(-[MTLTexture width](v12->_texPing height:"width") + 1) >> 1 pixelFormat:(-[MTLTexture height](v12->_texPing, "height") + 1) >> 1, format];
        texPong = v12->_texPong;
        v12->_texPong = format;

        if (v12->_texPong)
        {
          v48 = [contextCopy computePipelineStateFor:@"parallelReductionAverage" withConstants:0];
          parallelReductionAverage = v12->_parallelReductionAverage;
          v12->_parallelReductionAverage = v48;

          if (v12->_parallelReductionAverage)
          {
            v51 = [contextCopy computePipelineStateFor:@"parallelReductionMax" withConstants:0];
            parallelReductionMax = v12->_parallelReductionMax;
            v12->_parallelReductionMax = v51;

            if (v12->_parallelReductionMax)
            {
              v54 = [contextCopy computePipelineStateFor:@"parallelReductionMin" withConstants:0];
              parallelReductionMin = v12->_parallelReductionMin;
              v12->_parallelReductionMin = v54;

              if (v12->_parallelReductionMin)
              {
LABEL_48:
                v122 = v12;
                goto LABEL_42;
              }

              v57 = _PTLogSystem(v56);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                [(PTGlobalReduction *)v57 initWithMetalContext:v58 textureSize:v59 pixelFormat:v60, v61, v62, v63, v64];
              }
            }

            else
            {
              v57 = _PTLogSystem(v53);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                [(PTGlobalReduction *)v57 initWithMetalContext:v115 textureSize:v116 pixelFormat:v117, v118, v119, v120, v121];
              }
            }
          }

          else
          {
            v57 = _PTLogSystem(v50);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              [(PTGlobalReduction *)v57 initWithMetalContext:v101 textureSize:v102 pixelFormat:v103, v104, v105, v106, v107];
            }
          }
        }

        else
        {
          v57 = _PTLogSystem(v47);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            [(PTGlobalReduction *)v57 initWithMetalContext:v94 textureSize:v95 pixelFormat:v96, v97, v98, v99, v100];
          }
        }
      }

      else
      {
        v57 = _PTLogSystem(v43);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [(PTGlobalReduction *)v57 initWithMetalContext:v72 textureSize:v73 pixelFormat:v74, v75, v76, v77, v78];
        }
      }
    }
  }

LABEL_41:
  v122 = 0;
LABEL_42:

  return v122;
}

- (void)parallelReductionAverage:(id)average inTexture:(id)texture outGlobalAverage:(id)globalAverage
{
  parallelReductionAverage = self->_parallelReductionAverage;
  globalAverageCopy = globalAverage;
  textureCopy = texture;
  averageCopy = average;
  width = [textureCopy width];
  v12 = 1.0 / ([textureCopy height] * width);
  *&v12 = v12;
  [(PTGlobalReduction *)self parallelReduction:averageCopy inTexture:textureCopy globalBuffer:globalAverageCopy offset:0 pipelineState:parallelReductionAverage reductionType:2 factor:v12];
}

- (void)parallelReductionMax:(id)max inTexture:(id)texture globalMaxBuffer:(id)buffer
{
  maxCopy = max;
  textureCopy = texture;
  bufferCopy = buffer;
  v11 = [bufferCopy length];
  if (v11 <= 3)
  {
    v13 = _PTLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTGlobalReduction *)v13 parallelReductionMax:v14 inTexture:v15 globalMaxBuffer:v16, v17, v18, v19, v20];
    }
  }

  LODWORD(v12) = 1.0;
  [(PTGlobalReduction *)self parallelReduction:maxCopy inTexture:textureCopy globalBuffer:bufferCopy offset:0 pipelineState:self->_parallelReductionMax reductionType:1 factor:v12];
}

- (void)parallelReductionMin:(id)min inTexture:(id)texture globalMinBuffer:(id)buffer
{
  minCopy = min;
  textureCopy = texture;
  bufferCopy = buffer;
  v11 = [bufferCopy length];
  if (v11 <= 3)
  {
    v13 = _PTLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTGlobalReduction *)v13 parallelReductionMax:v14 inTexture:v15 globalMaxBuffer:v16, v17, v18, v19, v20];
    }
  }

  LODWORD(v12) = 1.0;
  [(PTGlobalReduction *)self parallelReduction:minCopy inTexture:textureCopy globalBuffer:bufferCopy offset:0 pipelineState:self->_parallelReductionMin reductionType:0 factor:v12];
}

- (void)parallelReductionMinMax:(id)max inTexture:(id)texture globalMinMaxBuffer:(id)buffer
{
  maxCopy = max;
  textureCopy = texture;
  bufferCopy = buffer;
  v11 = [bufferCopy length];
  if (v11 <= 7)
  {
    v13 = _PTLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTGlobalReduction *)v13 parallelReductionMinMax:v14 inTexture:v15 globalMinMaxBuffer:v16, v17, v18, v19, v20];
    }
  }

  if (self->_supportGpuSIMD)
  {
    [(PTGlobalReduction *)self parallelReductionTextureMinMaxSimd:maxCopy inTexture:textureCopy globalBuffer:bufferCopy];
  }

  else
  {
    LODWORD(v12) = 1.0;
    [(PTGlobalReduction *)self parallelReduction:maxCopy inTexture:textureCopy globalBuffer:bufferCopy offset:0 pipelineState:self->_parallelReductionMin reductionType:0 factor:v12];
    LODWORD(v21) = 1.0;
    [(PTGlobalReduction *)self parallelReduction:maxCopy inTexture:textureCopy globalBuffer:bufferCopy offset:4 pipelineState:self->_parallelReductionMax reductionType:1 factor:v21];
  }
}

- (void)parallelReduction:(id)reduction inTexture:(id)texture globalBuffer:(id)buffer offset:(int)offset pipelineState:(id)state reductionType:(int)type factor:(float)factor
{
  v10 = *&type;
  v12 = *&offset;
  textureCopy = texture;
  bufferCopy = buffer;
  stateCopy = state;
  if (self->_supportGpuSIMD)
  {
    *&v18 = factor;
    [(PTGlobalReduction *)self parallelReductionTextureSimd:reduction inTexture:textureCopy globalBuffer:bufferCopy offset:v12 reductionType:v10 factor:v18];
  }

  else
  {
    computeCommandEncoder = [reduction computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      v20 = _PTLogSystem(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v20 disparityApplyPostModifier:v21 inDisparity:v22 outDisparity:v23 postModifier:v24, v25, v26, v27];
      }
    }

    selfCopy = self;
    v47 = bufferCopy;
    width = [textureCopy width];
    height = [textureCopy height];
    v30 = height;
    if (width > 1 || height >= 2)
    {
      v31 = 0;
      p_texPing = &self->_texPing;
      v45 = v12;
      while (1)
      {
        v33 = v30;
        *&v34 = width + -0.5;
        v35 = v30 + -0.5;
        *(&v34 + 1) = v35;
        v53 = v34;
        width2 = [textureCopy width];
        v52 = ([textureCopy height] * width2);
        if (v31)
        {
          p_texPong = p_texPing;
        }

        else
        {
          p_texPong = &selfCopy->_texPong;
        }

        v38 = *p_texPong;
        if (v31)
        {
          v39 = &selfCopy->_texPong;
        }

        else
        {
          v39 = p_texPing;
        }

        v40 = *v39;
        if (v31)
        {
          v41 = v38;
        }

        else
        {
          v41 = textureCopy;
        }

        v42 = v41;
        if ((width - 1) <= 1 && (v33 - 1) <= 1)
        {

          v40 = 0;
        }

        [computeCommandEncoder setComputePipelineState:stateCopy];
        [computeCommandEncoder setTexture:v42 atIndex:0];
        [computeCommandEncoder setTexture:v40 atIndex:1];
        [computeCommandEncoder setBuffer:v47 offset:v45 atIndex:0];
        if (selfCopy->_parallelReductionAverage == stateCopy)
        {
          [computeCommandEncoder setBytes:&v53 length:8 atIndex:1];
          [computeCommandEncoder setBytes:&v52 length:4 atIndex:2];
        }

        v43 = (width + 1) / 2;
        v30 = (v33 + 1) / 2;
        v51[0] = v43;
        v51[1] = v30;
        v51[2] = 1;
        v49 = vdupq_n_s64(8uLL);
        v50 = 1;
        [computeCommandEncoder dispatchThreads:v51 threadsPerThreadgroup:&v49];

        ++v31;
        v44 = width <= 2;
        width = v43;
        if (v44)
        {
          width = v43;
          if (v33 <= 2)
          {
            break;
          }
        }
      }
    }

    [computeCommandEncoder endEncoding];

    bufferCopy = v47;
  }
}

- (void)parallelReductionTextureSimd:(id)simd inTexture:(id)texture globalBuffer:(id)buffer offset:(int)offset reductionType:(int)type factor:(float)factor
{
  textureCopy = texture;
  bufferCopy = buffer;
  typeCopy = type;
  factorCopy = factor;
  computeCommandEncoder = [simd computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v16 = _PTLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v16 disparityApplyPostModifier:v17 inDisparity:v18 outDisparity:v19 postModifier:v20, v21, v22, v23];
    }
  }

  [(NSArray *)self->_simdTextures count];
  v24 = 0;
  do
  {
    if (v24)
    {
      v25 = [(NSArray *)self->_simdTextures objectAtIndexedSubscript:v24 - 1];
    }

    else
    {
      v25 = textureCopy;
    }

    v26 = v25;
    if (v24 == [(NSArray *)self->_simdTextures count])
    {
      v27 = 0;
    }

    else
    {
      v27 = [(NSArray *)self->_simdTextures objectAtIndexedSubscript:v24];
    }

    v28 = ([v26 width] + 1) >> 1;
    v29 = ([v26 height] + 1) >> 1;
    [computeCommandEncoder setComputePipelineState:self->_parallelReductionTextureSimd];
    [computeCommandEncoder setTexture:v26 atIndex:0];
    [computeCommandEncoder setTexture:v27 atIndex:1];
    [computeCommandEncoder setBytes:&factorCopy length:4 atIndex:0];
    [computeCommandEncoder setBuffer:bufferCopy offset:offset atIndex:1];
    [computeCommandEncoder setBytes:&typeCopy length:4 atIndex:2];
    v34[0] = v28;
    v34[1] = v29;
    v34[2] = 1;
    v32 = *&self->simdReductionThreadsPerGroup.width;
    depth = self->simdReductionThreadsPerGroup.depth;
    [computeCommandEncoder dispatchThreads:v34 threadsPerThreadgroup:&v32];
  }

  while ([(NSArray *)self->_simdTextures count]> v24++);
  [computeCommandEncoder endEncoding];
}

- (void)parallelReductionTextureMinMaxSimd:(id)simd inTexture:(id)texture globalBuffer:(id)buffer
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  simdCopy = simd;
  textureCopy = texture;
  bufferCopy = buffer;
  [(NSArray *)self->_simdMinMaxTextures count];
  v10 = 0;
  do
  {
    if (v10)
    {
      v11 = [(NSArray *)self->_simdMinMaxTextures objectAtIndexedSubscript:v10 - 1];
    }

    else
    {
      v11 = textureCopy;
    }

    v12 = v11;
    if (v10 == [(NSArray *)self->_simdMinMaxTextures count])
    {
      v13 = 0;
    }

    else
    {
      v13 = [(NSArray *)self->_simdMinMaxTextures objectAtIndexedSubscript:v10];
    }

    width = [v12 width];
    height = [v12 height];
    computeCommandEncoder = [simdCopy computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      v17 = _PTLogSystem(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTGlobalReduction parallelReductionTextureMinMaxSimd:buf inTexture:v24 globalBuffer:v17];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_parallelReductionTextureMinMaxSimd];
    [computeCommandEncoder setTexture:v12 atIndex:0];
    [computeCommandEncoder setTexture:v13 atIndex:1];
    [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:0];
    v22[0] = (width + 1) >> 1;
    v22[1] = (height + 1) >> 1;
    v22[2] = 1;
    v20 = *&self->simdReductionThreadsPerGroup.width;
    depth = self->simdReductionThreadsPerGroup.depth;
    [computeCommandEncoder dispatchThreads:v22 threadsPerThreadgroup:&v20];
    [computeCommandEncoder endEncoding];
  }

  while ([(NSArray *)self->_simdMinMaxTextures count]> v10++);
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_parallelReductionMin";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_parallelReductionMax";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_parallelReductionAverage";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_texPong";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_texPing";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_parallelReductionTextureSimd.maxTotalThreadsPerThreadgroup >= simdReductionThreadsPerGroup.width * simdReductionThreadsPerGroup.height";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "tex";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_parallelReductionTextureMinMaxSimd";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 textureSize:(uint64_t)a4 pixelFormat:(uint64_t)a5 .cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_parallelReductionTextureSimd";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)parallelReductionTextureMinMaxSimd:(uint8_t *)buf inTexture:(void *)a2 globalBuffer:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "computeEncoder";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

@end