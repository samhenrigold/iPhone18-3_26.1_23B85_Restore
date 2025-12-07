@interface GainMapStage
+ (int)prewarmShaders:(id)shaders;
- (GainMapStage)initWithMetalContext:(id)context;
- (int)runWithInput:(id)input output:(id)output minThreshold:(float)threshold maxThreshold:(float)maxThreshold inputIsLinear:(BOOL)linear inputScaling:(float)scaling;
@end

@implementation GainMapStage

- (GainMapStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_2958BD1B8(self);
LABEL_8:
    v7 = 0;
    goto LABEL_4;
  }

  v17.receiver = self;
  v17.super_class = GainMapStage;
  v6 = [(GainMapStage *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    sub_2958BD140();
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v11 = objc_msgSend_sharedInstance(GainMapShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7->_metalContext, v13);
  shaders = v7->_shaders;
  v7->_shaders = v14;

  if (!v7->_shaders)
  {
    sub_2958BD094(v7);
    goto LABEL_8;
  }

LABEL_4:

  return v7;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  if (shadersCopy)
  {
    v4 = [GainMapShaders alloc];
    v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      sub_2958BD274();
      v7 = 0;
      v8 = -12786;
    }
  }

  else
  {
    sub_2958BD2EC(&v10);
    v7 = 0;
    v8 = v10;
  }

  return v8;
}

- (int)runWithInput:(id)input output:(id)output minThreshold:(float)threshold maxThreshold:(float)maxThreshold inputIsLinear:(BOOL)linear inputScaling:(float)scaling
{
  v70 = *&maxThreshold;
  v71 = *&threshold;
  inputCopy = input;
  outputCopy = output;
  v75 = 0;
  shaders = self->_shaders;
  if (!shaders)
  {
    sub_2958BD5B4(v73);
LABEL_13:
    v68 = v73[0];
    goto LABEL_8;
  }

  if (!shaders->_gainMapFilter)
  {
    sub_2958BD508(v73);
    goto LABEL_13;
  }

  v18 = objc_msgSend_commandQueue(self->_metalContext, v13, v14, v15);
  v22 = objc_msgSend_commandBuffer(v18, v19, v20, v21);

  if (!v22)
  {
    sub_2958BD45C(v73);
    goto LABEL_13;
  }

  v26 = objc_msgSend_computeCommandEncoder(v22, v23, v24, v25);
  if (!v26)
  {
    sub_2958BD398(v22, v73);
    goto LABEL_13;
  }

  v29 = v26;
  v74 = __PAIR64__(v70, v71);
  LOBYTE(v75) = linear;
  *(&v75 + 1) = scaling;
  objc_msgSend_setComputePipelineState_(v26, v27, self->_shaders->_gainMapFilter, v28);
  objc_msgSend_setTexture_atIndex_(v29, v30, inputCopy, 0);
  objc_msgSend_setTexture_atIndex_(v29, v31, outputCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v29, v32, &v74, 16, 0);
  v36 = objc_msgSend_threadExecutionWidth(self->_shaders->_gainMapFilter, v33, v34, v35);
  v40 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_shaders->_gainMapFilter, v37, v38, v39) / v36;
  v73[0] = objc_msgSend_width(outputCopy, v41, v42, v43) >> 1;
  v73[1] = objc_msgSend_height(outputCopy, v44, v45, v46) >> 1;
  v73[2] = 1;
  v72[0] = v36;
  v72[1] = v40;
  v72[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v29, v47, v73, v72);
  objc_msgSend_endEncoding(v29, v48, v49, v50);
  if (*MEMORY[0x29EDB9270])
  {
    v54 = objc_msgSend_commandQueue(v22, v51, v52, v53);
    v58 = objc_msgSend_commandBuffer(v54, v55, v56, v57);

    objc_msgSend_setLabel_(v58, v59, @"KTRACE_MTLCMDBUF", v60);
    objc_msgSend_addCompletedHandler_(v58, v61, &unk_2A1CA9660, v62);
    objc_msgSend_commit(v58, v63, v64, v65);
    objc_msgSend_addCompletedHandler_(v22, v66, &unk_2A1CA9680, v67);
  }

  objc_msgSend_commit(v22, v51, v52, v53, v70, v71);

  v68 = 0;
LABEL_8:

  return v68;
}

@end