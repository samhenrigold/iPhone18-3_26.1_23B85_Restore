@interface PTEffectTemporalFilter
- (PTEffectTemporalFilter)initWithMetalContext:(id)context disparitySize:(id *)size;
- (unsigned)filter:(id)filter inDisparity:(id)disparity inNormal:(id)normal inDiffuse:(id)diffuse filterNormalSpatial:(BOOL)spatial filterDiffuseSpatial:(BOOL)diffuseSpatial frameIndex:(int)index disparityScale:(float)self0;
- (unsigned)prepareFilter:(id)filter opticalFlowRGB:(id)b frameIndex:(int)index;
- (unsigned)reset;
@end

@implementation PTEffectTemporalFilter

- (PTEffectTemporalFilter)initWithMetalContext:(id)context disparitySize:(id *)size
{
  contextCopy = context;
  v84.receiver = self;
  v84.super_class = PTEffectTemporalFilter;
  v8 = [(PTEffectTemporalFilter *)&v84 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&size->var0;
    *(v8 + 13) = size->var2;
    *(v8 + 88) = v10;
    objc_storeStrong(v8 + 1, context);
    if (v9[1])
    {
      v81 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(*&size->var0)), 0x3F0000003F000000)));
      v82 = v81;
      v83 = 1;
      v12 = [[PTOpticalFlow alloc] initWithMetalContext:contextCopy colorSize:&v82 lktPreset:4 allocateDisplacementFWD:1 needConversionBGRA2YUVA:0 inverseFlow:1];
      v13 = v9[2];
      v9[2] = v12;

      if (v9[2])
      {
        v15 = 0;
        v16 = v9 + 4;
        v17 = v9 + 6;
        v18 = v9 + 8;
        v19 = 1;
        do
        {
          v20 = v19;
          textureUtil = [contextCopy textureUtil];
          v22 = [textureUtil createWithWidth:size->var0 height:size->var1 pixelFormat:25];
          v23 = v16[v15];
          v16[v15] = v22;

          if (!v16[v15])
          {
            v37 = _PTLogSystem(v24);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectTemporalFilter *)v37 initWithMetalContext:v52 disparitySize:v53, v54, v55, v56, v57, v58];
            }

            goto LABEL_23;
          }

          textureUtil2 = [contextCopy textureUtil];
          v26 = [textureUtil2 createWithWidth:size->var0 height:size->var1 pixelFormat:115];
          v27 = v17[v15];
          v17[v15] = v26;

          if (!v17[v15])
          {
            v37 = _PTLogSystem(v28);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectTemporalFilter *)v37 initWithMetalContext:v59 disparitySize:v60, v61, v62, v63, v64, v65];
            }

            goto LABEL_23;
          }

          textureUtil3 = [contextCopy textureUtil];
          v30 = [textureUtil3 createWithWidth:size->var0 height:size->var1 pixelFormat:10];
          v31 = v18[v15];
          v18[v15] = v30;

          if (!v18[v15])
          {
            v37 = _PTLogSystem(v32);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectTemporalFilter *)v37 initWithMetalContext:v66 disparitySize:v67, v68, v69, v70, v71, v72];
            }

            goto LABEL_23;
          }

          v19 = 0;
          v15 = 1;
        }

        while ((v20 & 1) != 0);
        v33 = [[PTFilterEMA_LKT alloc] initWithMetalContext:contextCopy];
        v34 = v9[10];
        v9[10] = v33;

        if (v9[10])
        {
          v36 = v9;
          goto LABEL_25;
        }

        v37 = _PTLogSystem(v35);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [(PTEffectTemporalFilter *)v37 initWithMetalContext:v73 disparitySize:v74, v75, v76, v77, v78, v79];
        }
      }

      else
      {
        v37 = _PTLogSystem(v14);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [(PTEffectTemporalFilter *)v37 initWithMetalContext:v45 disparitySize:v46, v47, v48, v49, v50, v51];
        }
      }
    }

    else
    {
      v37 = _PTLogSystem(v11);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [(PTEffectTemporalFilter *)v37 initWithMetalContext:v38 disparitySize:v39, v40, v41, v42, v43, v44];
      }
    }

LABEL_23:
  }

  v36 = 0;
LABEL_25:

  return v36;
}

- (unsigned)prepareFilter:(id)filter opticalFlowRGB:(id)b frameIndex:(int)index
{
  opticalFlow = self->_opticalFlow;
  v7 = (index + 1) & 1;
  if (index >= -1)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = [(PTOpticalFlow *)opticalFlow estimateDisplacementStream:filter index:v8 doOpticalFlow:index > 0 destRGBA:b];
  v10 = v9;
  if (v9)
  {
    v11 = _PTLogSystem(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTEffectTemporalFilter prepareFilter:v10 opticalFlowRGB:v11 frameIndex:?];
    }
  }

  return v10;
}

- (unsigned)filter:(id)filter inDisparity:(id)disparity inNormal:(id)normal inDiffuse:(id)diffuse filterNormalSpatial:(BOOL)spatial filterDiffuseSpatial:(BOOL)diffuseSpatial frameIndex:(int)index disparityScale:(float)self0
{
  diffuseSpatialCopy = diffuseSpatial;
  filterCopy = filter;
  disparityCopy = disparity;
  normalCopy = normal;
  diffuseCopy = diffuse;
  width = [disparityCopy width];
  if (width != self->_disparitySize.width || (width = [disparityCopy height], width != self->_disparitySize.height))
  {
    v32 = _PTLogSystem(width);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTEffectTemporalFilter filter:v32 inDisparity:? inNormal:? inDiffuse:? filterNormalSpatial:? filterDiffuseSpatial:? frameIndex:? disparityScale:?];
    }

    diffuseSpatialCopy = -10;
    goto LABEL_13;
  }

  v22 = (index + 1) & 1;
  if (index < -1)
  {
    v22 = -v22;
  }

  v23 = index & 1;
  if (index < 0)
  {
    v23 = -v23;
  }

  self->_indexIn = v22;
  self->_indexOut = v23;
  disparityFilter = self->_disparityFilter;
  displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
  indexIn = self->_indexIn;
  indexOut = self->_indexOut;
  v29 = self->_temporalDisparity[indexIn];
  v30 = self->_temporalDisparity[indexOut];
  if (!spatial)
  {
    LODWORD(v39) = index;
    [(PTFilterEMA_LKT *)disparityFilter emaFilterDisparityNormal:filterCopy inDisplacement:displacementFWD inDisparityPrev:v29 inDisparity:disparityCopy outDisparity:v30 inNormalPrev:self->_temporalNormal[indexIn] inNormal:normalCopy outNormal:self->_temporalNormal[indexOut] frameIndex:v39];
    goto LABEL_15;
  }

  *&v26 = scale;
  [(PTFilterEMA_LKT *)disparityFilter emaFilter:filterCopy inDisplacement:displacementFWD inTexPrev:v29 inTex:disparityCopy outTex:v30 frameIndex:index scale:v26];

  if (normalCopy)
  {
    v31 = self->_disparityFilter;
    displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    [(PTFilterEMA_LKT *)v31 gaussEMAFilterNormal:filterCopy inDisplacement:displacementFWD inNormalPrev:self->_temporalNormal[self->_indexIn] inNormal:normalCopy outNormal:self->_temporalNormal[self->_indexOut] frameIndex:index];
LABEL_15:
  }

  if (diffuseCopy)
  {
    v34 = self->_disparityFilter;
    displacementFWD2 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    v37 = self->_temporalDiffuse[self->_indexIn];
    v38 = self->_temporalDiffuse[self->_indexOut];
    if (!diffuseSpatialCopy)
    {
      LODWORD(v36) = 1.0;
      [(PTFilterEMA_LKT *)v34 emaFilter:filterCopy inDisplacement:displacementFWD2 inTexPrev:v37 inTex:diffuseCopy outTex:v38 frameIndex:index scale:v36];

      goto LABEL_13;
    }

    [(PTFilterEMA_LKT *)v34 gaussEMAFilter:filterCopy inDisplacement:displacementFWD2 inTexPrev:v37 inTex:diffuseCopy outTex:v38 frameIndex:index];
  }

  diffuseSpatialCopy = 0;
LABEL_13:

  return diffuseSpatialCopy;
}

- (unsigned)reset
{
  kdebug_trace();
  [(PTOpticalFlow *)self->_opticalFlow reset];
  kdebug_trace();
  return 0;
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityFilter";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_temporalDiffuse[i]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_temporalNormal[i]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_temporalDisparity[i]";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_opticalFlow";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 disparitySize:(uint64_t)a4 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_metalContext";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)prepareFilter:(int)a1 opticalFlowRGB:(NSObject *)a2 frameIndex:.cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "status";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Assertion failed %s %i", &v2, 0x12u);
}

@end