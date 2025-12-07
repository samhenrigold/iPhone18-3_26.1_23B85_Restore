@interface ARCoachingDotsRenderer
- (id)init:(id)init pixelFormat:(unint64_t)format metalLibrary:(id)library sampleCount:(int)count;
- (void)encode:(__n128)encode renderCommandEncoder:(__n128)encoder mvp:(__n128)mvp visibility:(float)visibility renderParams:(double)params time:(uint64_t)time;
@end

@implementation ARCoachingDotsRenderer

- (id)init:(id)init pixelFormat:(unint64_t)format metalLibrary:(id)library sampleCount:(int)count
{
  v99 = *MEMORY[0x277D85DE8];
  initCopy = init;
  libraryCopy = library;
  v88.receiver = self;
  v88.super_class = ARCoachingDotsRenderer;
  v12 = [(ARCoachingDotsRenderer *)&v88 init];
  v13 = v12;
  if (v12)
  {
    countCopy = count;
    v12->_pixelFormat = format;
    v14 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v15 = objc_alloc_init(MEMORY[0x277CD6D70]);
    v87 = 0;
    v16 = [libraryCopy newFunctionWithName:@"DotsVertex" constantValues:v15 error:&v87];
    v17 = v87;
    [v14 setVertexFunction:v16];

    v84 = v15;
    if (!v17)
    {
      goto LABEL_12;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARCoachingDotsRenderer init:pixelFormat:metalLibrary:sampleCount:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_1;
    v20 = _ARLogCoaching_4(v18);
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        NSStringFromClass(v22);
        v23 = v81 = initCopy;
        localizedDescription = [v17 localizedDescription];
        localizedFailureReason = [v17 localizedFailureReason];
        localizedRecoverySuggestion = [v17 localizedRecoverySuggestion];
        *buf = 138544386;
        v90 = v23;
        v91 = 2048;
        v92 = v13;
        v93 = 2112;
        v94 = localizedDescription;
        v95 = 2112;
        v96 = localizedFailureReason;
        v97 = 2112;
        v98 = localizedRecoverySuggestion;
        v27 = "%{public}@ <%p>: Failed to load vertex function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v28 = v21;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_23D3AE000, v28, v29, v27, buf, 0x34u);

        initCopy = v81;
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      v23 = v81 = initCopy;
      localizedDescription = [v17 localizedDescription];
      localizedFailureReason = [v17 localizedFailureReason];
      localizedRecoverySuggestion = [v17 localizedRecoverySuggestion];
      *buf = 138544386;
      v90 = v23;
      v91 = 2048;
      v92 = v13;
      v93 = 2112;
      v94 = localizedDescription;
      v95 = 2112;
      v96 = localizedFailureReason;
      v97 = 2112;
      v98 = localizedRecoverySuggestion;
      v27 = "Error: %{public}@ <%p>: Failed to load vertex function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
      v28 = v21;
      v29 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v15 = v84;
LABEL_12:

    v86 = 0;
    v31 = [libraryCopy newFunctionWithName:@"DotsFragment" constantValues:v15 error:&v86];
    v32 = v86;
    [v14 setFragmentFunction:v31];

    if (!v32)
    {
LABEL_22:
      colorAttachments = [v14 colorAttachments];
      v47 = [colorAttachments objectAtIndexedSubscript:0];
      [v47 setBlendingEnabled:1];

      colorAttachments2 = [v14 colorAttachments];
      v49 = [colorAttachments2 objectAtIndexedSubscript:0];
      [v49 setRgbBlendOperation:0];

      colorAttachments3 = [v14 colorAttachments];
      v51 = [colorAttachments3 objectAtIndexedSubscript:0];
      [v51 setAlphaBlendOperation:0];

      colorAttachments4 = [v14 colorAttachments];
      v53 = [colorAttachments4 objectAtIndexedSubscript:0];
      [v53 setSourceRGBBlendFactor:4];

      colorAttachments5 = [v14 colorAttachments];
      v55 = [colorAttachments5 objectAtIndexedSubscript:0];
      [v55 setDestinationRGBBlendFactor:5];

      colorAttachments6 = [v14 colorAttachments];
      v57 = [colorAttachments6 objectAtIndexedSubscript:0];
      [v57 setSourceAlphaBlendFactor:4];

      colorAttachments7 = [v14 colorAttachments];
      v59 = [colorAttachments7 objectAtIndexedSubscript:0];
      [v59 setDestinationAlphaBlendFactor:5];

      colorAttachments8 = [v14 colorAttachments];
      v61 = [colorAttachments8 objectAtIndexedSubscript:0];
      [v61 setPixelFormat:format];

      [v14 setRasterSampleCount:countCopy];
      vertexFunction = [v14 vertexFunction];
      if (!vertexFunction)
      {
        goto LABEL_34;
      }

      v63 = vertexFunction;
      fragmentFunction = [v14 fragmentFunction];

      if (!fragmentFunction)
      {
        goto LABEL_34;
      }

      v85 = 0;
      v65 = [initCopy newRenderPipelineStateWithDescriptor:v14 error:&v85];
      v32 = v85;
      pipelineState = v13->_pipelineState;
      v13->_pipelineState = v65;

      if (!v32)
      {
        goto LABEL_34;
      }

      if (ARShouldUseLogTypeError_onceToken_1 != -1)
      {
        [ARCoachingDotsRenderer init:pixelFormat:metalLibrary:sampleCount:];
      }

      v68 = ARShouldUseLogTypeError_internalOSVersion_1;
      v69 = _ARLogCoaching_4(v67);
      v70 = v69;
      if (v68 == 1)
      {
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          localizedDescription2 = [v32 localizedDescription];
          localizedFailureReason2 = [v32 localizedFailureReason];
          localizedRecoverySuggestion2 = [v32 localizedRecoverySuggestion];
          *buf = 138544386;
          v90 = v72;
          v91 = 2048;
          v92 = v13;
          v93 = 2112;
          v94 = localizedDescription2;
          v95 = 2112;
          v96 = localizedFailureReason2;
          v97 = 2112;
          v98 = localizedRecoverySuggestion2;
          v76 = "%{public}@ <%p>: Failed to create pipeline state for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
          v77 = v70;
          v78 = OS_LOG_TYPE_ERROR;
LABEL_32:
          _os_log_impl(&dword_23D3AE000, v77, v78, v76, buf, 0x34u);

          v15 = v84;
        }
      }

      else if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v79 = objc_opt_class();
        v72 = NSStringFromClass(v79);
        localizedDescription2 = [v32 localizedDescription];
        localizedFailureReason2 = [v32 localizedFailureReason];
        localizedRecoverySuggestion2 = [v32 localizedRecoverySuggestion];
        *buf = 138544386;
        v90 = v72;
        v91 = 2048;
        v92 = v13;
        v93 = 2112;
        v94 = localizedDescription2;
        v95 = 2112;
        v96 = localizedFailureReason2;
        v97 = 2112;
        v98 = localizedRecoverySuggestion2;
        v76 = "Error: %{public}@ <%p>: Failed to create pipeline state for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v77 = v70;
        v78 = OS_LOG_TYPE_INFO;
        goto LABEL_32;
      }

LABEL_34:
      goto LABEL_35;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARCoachingDotsRenderer init:pixelFormat:metalLibrary:sampleCount:];
    }

    v34 = ARShouldUseLogTypeError_internalOSVersion_1;
    v35 = _ARLogCoaching_4(v33);
    v36 = v35;
    if (v34 == 1)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        NSStringFromClass(v37);
        v38 = v82 = initCopy;
        localizedDescription3 = [v32 localizedDescription];
        localizedFailureReason3 = [v32 localizedFailureReason];
        localizedRecoverySuggestion3 = [v32 localizedRecoverySuggestion];
        *buf = 138544386;
        v90 = v38;
        v91 = 2048;
        v92 = v13;
        v93 = 2112;
        v94 = localizedDescription3;
        v95 = 2112;
        v96 = localizedFailureReason3;
        v97 = 2112;
        v98 = localizedRecoverySuggestion3;
        v42 = "%{public}@ <%p>: Failed to load fragment function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v43 = v36;
        v44 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_23D3AE000, v43, v44, v42, buf, 0x34u);

        initCopy = v82;
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v45 = objc_opt_class();
      NSStringFromClass(v45);
      v38 = v82 = initCopy;
      localizedDescription3 = [v32 localizedDescription];
      localizedFailureReason3 = [v32 localizedFailureReason];
      localizedRecoverySuggestion3 = [v32 localizedRecoverySuggestion];
      *buf = 138544386;
      v90 = v38;
      v91 = 2048;
      v92 = v13;
      v93 = 2112;
      v94 = localizedDescription3;
      v95 = 2112;
      v96 = localizedFailureReason3;
      v97 = 2112;
      v98 = localizedRecoverySuggestion3;
      v42 = "Error: %{public}@ <%p>: Failed to load fragment function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
      v43 = v36;
      v44 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

    v15 = v84;
    goto LABEL_22;
  }

LABEL_35:

  return v13;
}

- (void)encode:(__n128)encode renderCommandEncoder:(__n128)encoder mvp:(__n128)mvp visibility:(float)visibility renderParams:(double)params time:(uint64_t)time
{
  v37 = *MEMORY[0x277D85DE8];
  v15 = *(self + 16);
  v16 = a10;
  v17 = a9;
  [v16 setRenderPipelineState:v15];
  v35[0] = a2;
  v35[1] = encode;
  v35[2] = encoder;
  v35[3] = mvp;
  v18 = [v17 newBufferWithBytes:v35 length:64 options:0];
  [v16 setVertexBuffer:v18 offset:0 atIndex:0];
  v36[4] = xmmword_23D3DC590;
  v36[5] = unk_23D3DC5A0;
  v36[6] = xmmword_23D3DC5B0;
  v36[7] = unk_23D3DC5C0;
  v36[0] = xmmword_23D3DC550;
  v36[1] = unk_23D3DC560;
  v36[2] = xmmword_23D3DC570;
  v36[3] = unk_23D3DC580;
  v19 = [v17 newBufferWithBytes:v36 length:128 options:0];
  [v16 setVertexBuffer:v19 offset:0 atIndex:1];
  v20 = a11[5] + params;
  v21 = cosf(v20);
  *&v22 = a11[2];
  v23 = (1.0 - (a11[3] * v21)) * 0.5;
  *(&v22 + 1) = v23;
  v34 = 0;
  v30 = *a11;
  v31 = 1048576000;
  v24 = fmax(visibility, 0.0);
  v32 = v24;
  v33 = v22;
  *&v34 = a11[4];
  v25 = [v17 newBufferWithBytes:&v30 length:32 options:0];

  [v16 setFragmentBuffer:v25 offset:0 atIndex:0];
  [v16 drawPrimitives:4 vertexStart:0 vertexCount:4];
}

@end