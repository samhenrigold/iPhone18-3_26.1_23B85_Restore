@interface FocusPixelDisparityDemosaic
- (FocusPixelDisparityDemosaic)initWithMetalContext:(id)context;
- (int)demosaicGreenOnly:(id)only fromL00h:(id)l00h validRect:(CGRect)rect waitForCompletion:(BOOL)completion;
- (void)dealloc;
@end

@implementation FocusPixelDisparityDemosaic

- (FocusPixelDisparityDemosaic)initWithMetalContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = FocusPixelDisparityDemosaic;
  v6 = [(FocusPixelDisparityDemosaic *)&v18 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_mtlContext, context);
  v10 = objc_msgSend_commandQueue(contextCopy, v8, v9);
  commandQueue = v7->_commandQueue;
  v7->_commandQueue = v10;

  v13 = objc_opt_new();
  if (!v13)
  {
    sub_2957998AC();
LABEL_9:

    v16 = 0;
    goto LABEL_6;
  }

  v14 = objc_msgSend_computePipelineStateFor_constants_(v7->_mtlContext, v12, @"demosaicHamiltonAdam", v13);
  v15 = v7->_pipelineStates[0];
  v7->_pipelineStates[0] = v14;

  if (!v7->_pipelineStates[0])
  {
    sub_295799834();
    goto LABEL_9;
  }

LABEL_5:
  v16 = v7;
LABEL_6:

  return v16;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_mtlContext, a2, v2);
  objc_msgSend_releaseResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = FocusPixelDisparityDemosaic;
  [(FocusPixelDisparityDemosaic *)&v6 dealloc];
}

- (int)demosaicGreenOnly:(id)only fromL00h:(id)l00h validRect:(CGRect)rect waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  width = rect.size.width;
  height = rect.size.height;
  v69 = *&rect.origin.y;
  x = rect.origin.x;
  onlyCopy = only;
  l00hCopy = l00h;
  if (objc_msgSend_width(l00hCopy, v11, v12) & 1) != 0 || (objc_msgSend_height(l00hCopy, v13, v14))
  {
    sub_295799924();
    v17 = 0;
    v37 = 0;
    v34 = 0;
LABEL_15:
    completionCopy = -12786;
    goto LABEL_10;
  }

  v17 = self->_pipelineStates[0];
  if (!v17)
  {
    sub_295799A80();
    v37 = 0;
    v34 = 0;
    completionCopy = -12782;
    goto LABEL_10;
  }

  v18 = objc_msgSend_width(l00hCopy, v15, v16);
  v21 = objc_msgSend_height(l00hCopy, v19, v20);
  v24 = objc_msgSend_width(onlyCopy, v22, v23);
  v76[0] = (v18 - v24 + (v18 < v24)) >> 1;
  v76[1] = (v21 - objc_msgSend_height(onlyCopy, v25, v26)) / 2;
  v27.f64[0] = x;
  *&v27.f64[1] = v69;
  v28.f64[0] = width;
  v28.f64[1] = height;
  v75 = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v27), vcvtq_s64_f64(v28)));
  v31 = objc_msgSend_commandBuffer(self->_commandQueue, v29, v30);
  v34 = v31;
  if (!v31)
  {
    sub_295799A0C();
    v37 = 0;
    goto LABEL_15;
  }

  v35 = objc_msgSend_computeCommandEncoder(v31, v32, v33);
  v37 = v35;
  if (!v35)
  {
    sub_295799998();
    goto LABEL_15;
  }

  objc_msgSend_setComputePipelineState_(v35, v36, v17);
  objc_msgSend_setTexture_atIndex_(v37, v38, l00hCopy, 0);
  objc_msgSend_setTexture_atIndex_(v37, v39, onlyCopy, 1);
  objc_msgSend_setBytes_length_atIndex_(v37, v40, v76, 8, 0);
  objc_msgSend_setBytes_length_atIndex_(v37, v41, &v75, 8, 1);
  v44 = objc_msgSend_threadExecutionWidth(v17, v42, v43);
  v47 = objc_msgSend_maxTotalThreadsPerThreadgroup(v17, v45, v46) / v44;
  v74[0] = objc_msgSend_width(onlyCopy, v48, v49) >> 1;
  v74[1] = objc_msgSend_height(onlyCopy, v50, v51) >> 1;
  v74[2] = 1;
  v73[0] = v44;
  v73[1] = v47;
  v73[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v37, v52, v74, v73);
  objc_msgSend_endEncoding(v37, v53, v54);
  if (*MEMORY[0x29EDB9270])
  {
    v57 = objc_msgSend_commandQueue(v34, v55, v56);
    v60 = objc_msgSend_commandBuffer(v57, v58, v59);

    objc_msgSend_setLabel_(v60, v61, @"KTRACE_MTLCMDBUF");
    objc_msgSend_addCompletedHandler_(v60, v62, &unk_2A1C9F990);
    objc_msgSend_commit(v60, v63, v64);
    objc_msgSend_addCompletedHandler_(v34, v65, &unk_2A1C9F9B0);
  }

  objc_msgSend_commit(v34, v55, v56, v69);
  if (completionCopy)
  {
    objc_msgSend_waitUntilCompleted(v34, v66, v67);
    completionCopy = 0;
  }

LABEL_10:

  return completionCopy;
}

@end