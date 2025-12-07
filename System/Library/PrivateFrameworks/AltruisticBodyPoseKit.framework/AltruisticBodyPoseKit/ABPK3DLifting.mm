@interface ABPK3DLifting
- ($8EF4127CF77ECA3DDB612FCF233DC3A8)get3DLiftingResultsAsModelPoses;
- (ABPK3DLifting)init;
- (BOOL)initMLNetwork;
- (id).cxx_construct;
- (int)runLiftingModelWithData:(id)data atTimestamp:(double)timestamp;
- (void)_adjustBoneLength:(ABPK3DLifting *)self;
- (void)_transformRelativeToHip:(ABPK3DLifting *)self count:(SEL)count;
- (void)dealloc;
@end

@implementation ABPK3DLifting

- (ABPK3DLifting)init
{
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ", &v14, 2u);
  }

  v16.receiver = self;
  v16.super_class = ABPK3DLifting;
  v4 = [(ABPK3DLifting *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = objc_alloc_init(ABPKMLModelConfiguration3DLifting);
  mlConfig = v4->_mlConfig;
  v4->_mlConfig = v6;

  std::vector<simd_float4x4>::vector[abi:ne200100](&v14, 0x11uLL);
  p_liftingResultAsModelPoses = &v4->_liftingResultAsModelPoses;
  begin = v5->_liftingResultAsModelPoses.__begin_;
  if (begin)
  {
    v5->_liftingResultAsModelPoses.__end_ = begin;
    operator delete(begin);
    p_liftingResultAsModelPoses->__begin_ = 0;
    p_liftingResultAsModelPoses->__end_ = 0;
    p_liftingResultAsModelPoses->__cap_ = 0;
  }

  *&p_liftingResultAsModelPoses->__begin_ = v14;
  v5->_liftingResultAsModelPoses.__cap_ = v15;
  v10 = [[ABPKSkeletonDefinition alloc] initWithType:3];
  abpkLiftingSkeletonDefinition = v5->_abpkLiftingSkeletonDefinition;
  v5->_abpkLiftingSkeletonDefinition = v10;

  if (![(ABPK3DLifting *)v5 initMLNetwork])
  {
    v12 = 0;
  }

  else
  {
LABEL_7:
    v12 = v5;
  }

  return v12;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = ABPK3DLifting;
  [(ABPK3DLifting *)&v3 dealloc];
}

- (BOOL)initMLNetwork
{
  v3 = __ABPKLogSharedInstance([(ABPK3DLifting *)self _startLoading3DLiftingMLModelSignpost]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Initializing ML Network ", &buf, 2u);
  }

  inputTensorNames = [(ABPKMLModelConfiguration3DLifting *)self->_mlConfig inputTensorNames];
  inputTensorNames = self->_inputTensorNames;
  self->_inputTensorNames = inputTensorNames;

  outputTensorNames = [(ABPKMLModelConfiguration3DLifting *)self->_mlConfig outputTensorNames];
  outputTensorNames = self->_outputTensorNames;
  self->_outputTensorNames = outputTensorNames;

  self->_useEspressoV2 = 0;
  compiledMLModelPath = [(ABPKMLModelConfiguration3DLifting *)self->_mlConfig compiledMLModelPath];
  v9 = compiledMLModelPath;
  if (!compiledMLModelPath)
  {
    goto LABEL_10;
  }

  if (![compiledMLModelPath hasSuffix:@".bundle"])
  {
    context = espresso_create_context();
    self->_context = context;
    if (context)
    {
      Espresso::get_internal_context(&buf, context, v17);
      self->_plan = espresso_create_plan();
      v18 = [v9 stringByAppendingPathComponent:@"model.espresso.net"];
      [v18 UTF8String];
      espresso_plan_add_network();
      espresso_plan_build();
      v19 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:0];
      [v19 UTF8String];
      espresso_network_bind_buffer();

      v20 = self->_inputTensorNames;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __30__ABPK3DLifting_initMLNetwork__block_invoke;
      v25[3] = &unk_278C718C0;
      v25[4] = self;
      [(NSArray *)v20 enumerateObjectsUsingBlock:v25];
      v21 = self->_outputTensorNames;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __30__ABPK3DLifting_initMLNetwork__block_invoke_2;
      v24[3] = &unk_278C718C0;
      v24[4] = self;
      [(NSArray *)v21 enumerateObjectsUsingBlock:v24];

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      goto LABEL_9;
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  self->_useEspressoV2 = 1;
  v10 = [[ABPKMLNetworkV2 alloc] initWithNetworkPath:v9 inputNames:self->_inputTensorNames outputNames:self->_outputTensorNames useSurface:0];
  networkV2 = self->_networkV2;
  self->_networkV2 = v10;

  inputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 inputBuffers];
  inputBufferDict = self->inputBufferDict;
  self->inputBufferDict = inputBuffers;

  outputBuffers = [(ABPKMLNetworkV2 *)self->_networkV2 outputBuffers];
  outputBufferDict = self->outputBufferDict;
  self->outputBufferDict = outputBuffers;

LABEL_9:
  [(ABPK3DLifting *)self _endLoading3DLiftingMLModelSignpost];
  v22 = 1;
LABEL_11:

  return v22;
}

void __30__ABPK3DLifting_initMLNetwork__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 UTF8String];
  espresso_network_query_blob_dimensions();
}

void __30__ABPK3DLifting_initMLNetwork__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 UTF8String];
  espresso_network_query_blob_dimensions();
}

- (int)runLiftingModelWithData:(id)data atTimestamp:(double)timestamp
{
  v63 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = __ABPKLogSharedInstance([(ABPK3DLifting *)self _startRunLiftingModelSignpostWithTimestamp:timestamp]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Run Lifting Model With Data ", buf, 2u);
  }

  if (self->_useEspressoV2)
  {
    liftingData = [dataCopy liftingData];
    liftingData3D = [liftingData liftingData3D];

    inputBufferDict = self->inputBufferDict;
    v11 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    v12 = [(NSMutableDictionary *)inputBufferDict objectForKeyedSubscript:v11];
    bytes = [v12 bytes];

    for (i = 0; i != 128; i += 4)
    {
      _S0 = *(liftingData3D + i);
      __asm { FCVT            H0, S0 }

      *bytes = _S0;
      bytes += 32;
    }

    [(ABPKMLNetworkV2 *)self->_networkV2 execute];
  }

  else
  {
    v31 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:0];
    v32 = v31;
    [v31 UTF8String];
    v33 = espresso_network_bind_buffer();

    if (v33 || ([dataCopy liftingData], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "liftingData3D"), v34, v36 = *buf, v37 = *v35, v38 = v35[1], v39 = v35[3], *(*buf + 32) = v35[2], v36[3] = v39, *v36 = v37, v36[1] = v38, v40 = v35[4], v41 = v35[5], v42 = v35[7], v36[6] = v35[6], v36[7] = v42, v36[4] = v40, v36[5] = v41, espresso_plan_execute_sync()))
    {
      v43 = -6662;
      goto LABEL_18;
    }
  }

  [(ABPK3DLifting *)self _endRunLiftingModelSignpostWithTimestamp:timestamp];
  [(ABPK3DLifting *)self _startPostProcessDataSignpostWithTimestamp:timestamp];
  if (self->_useEspressoV2)
  {
    outputBufferDict = self->outputBufferDict;
    v22 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:0];
    v23 = [(NSMutableDictionary *)outputBufferDict objectForKeyedSubscript:v22];
    bytes2 = [v23 bytes];

    for (j = 0; j != 48; ++j)
    {
      v26 = self->outputBufferDict;
      v27 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:0];
      v28 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:v27];
      _H0 = *(bytes2 + 2 * [v28 strideChannels] * j);
      __asm { FCVT            S0, H0 }

      *(v62 + j) = _S0;
    }
  }

  else
  {
    data = self->_outputTensor.data;
    v45 = data[9];
    v62[8] = data[8];
    v62[9] = v45;
    v46 = data[11];
    v62[10] = data[10];
    v62[11] = v46;
    v47 = data[5];
    v62[4] = data[4];
    v62[5] = v47;
    v48 = data[7];
    v62[6] = data[6];
    v62[7] = v48;
    v49 = data[1];
    v62[0] = *data;
    v62[1] = v49;
    v50 = data[3];
    v62[2] = data[2];
    v62[3] = v50;
  }

  v51 = 0;
  *buf = 0u;
  v60[0] = 0u;
  v52 = 1;
  __asm { FMOV            V1.2S, #-10.0 }

  v54 = -_D1;
  do
  {
    *&v20 = *(v62 + v51);
    v55 = vmla_f32(*(&unk_23EE28A94 + v51), *(&unk_23EE28B54 + v51), *&v20);
    DWORD2(v20) = *(v62 + v51 + 8);
    v56 = &buf[v52 * 16];
    *v56 = v20;
    v60[v52] = v20;
    *(v56 + 2) = (*(&unk_23EE28A94 + v51 + 8) + (*(&v20 + 2) * *(&unk_23EE28B54 + v51 + 8))) * 10.0;
    *v56 = vmul_f32(v55, *&v54);
    v51 += 12;
    ++v52;
  }

  while (v51 != 192);
  [(ABPK3DLifting *)self _adjustBoneLength:buf, COERCE_DOUBLE(COERCE_UNSIGNED_INT(10.0)), v60[0]];
  [(ABPK3DLifting *)self _transformRelativeToHip:buf count:17];
  v57 = [[ABPK3DLiftingResult alloc] initWithJoints:buf numberOfJoints:17 rawNetworkOutputs:v60 referenceDetectionResult:dataCopy];
  liftingResult = self->_liftingResult;
  self->_liftingResult = v57;

  [(ABPK3DLifting *)self _endPostProcessDataSignpostWithTimestamp:timestamp];
  v43 = 0;
LABEL_18:

  return v43;
}

- ($8EF4127CF77ECA3DDB612FCF233DC3A8)get3DLiftingResultsAsModelPoses
{
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D860B8];
  v14 = vdupq_n_s32(0x447A0000u);
  do
  {
    v6 = *([(ABPK3DLiftingResult *)self->_liftingResult joints]+ v4);
    v7 = (self->_liftingResultAsModelPoses.__begin_ + v3);
    v8 = *v5;
    v9 = v5[1];
    v10 = v5[3];
    v7[2] = v5[2];
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
    v11 = (self->_liftingResultAsModelPoses.__begin_ + v3);
    v12 = vdivq_f32(v6, v14);
    v12.i32[3] = v11[3].i32[3];
    v11[3] = v12;
    v4 += 16;
    v3 += 64;
  }

  while (v4 != 272);
  return self->_liftingResultAsModelPoses.__begin_;
}

- (void)_adjustBoneLength:(ABPK3DLifting *)self
{
  v3 = v2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: Adjust bone length ", buf, 2u);
  }

  v6 = memcpy(buf, v3, sizeof(buf));
  v7 = __ABPKLogSharedInstance(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " ABPK3DLifting: _abpkLiftingSkeletonDefinition once init ", v32, 2u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  *v32 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(ABPKSkeletonDefinition *)self->_abpkLiftingSkeletonDefinition getChildrenIndices:0];
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        intValue = [*(*(&v28 + 1) + 8 * v11) intValue];
        std::deque<std::pair<int,int>>::push_back(v32, &intValue);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v9);
  }

  for (i = *(&v34 + 1); *(&v34 + 1); i = *(&v34 + 1))
  {
    v13 = (*(*&v32[8] + ((v34 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v34 & 0x1FF));
    v15 = *v13;
    v14 = v13[1];
    *&v34 = v34 + 1;
    *(&v34 + 1) = i - 1;
    if (v34 >= 0x400)
    {
      operator delete(**&v32[8]);
      *&v32[8] += 8;
      *&v34 = v34 - 512;
    }

    v16 = vsubq_f32(v3[v15], v3[v14]);
    v17 = vmulq_f32(v16, v16);
    v17.f32[0] = sqrtf(v17.f32[2] + vaddv_f32(*v17.f32));
    buf[v15] = vmlaq_n_f32(buf[v14], vdivq_f32(v16, vdupq_lane_s32(*v17.f32, 0)), [ABPK3DLifting _adjustBoneLength:]::bones[v15] * 1000.0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = [(ABPKSkeletonDefinition *)self->_abpkLiftingSkeletonDefinition getChildrenIndices:v15, 0];
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v19)
    {
      v20 = *v24;
      v21 = v15 << 32;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v18);
          }

          intValue = v21 | [*(*(&v23 + 1) + 8 * v22) intValue];
          std::deque<std::pair<int,int>>::push_back(v32, &intValue);
          ++v22;
        }

        while (v19 != v22);
        v19 = [v18 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v19);
    }
  }

  memcpy(v3, buf, 0x110uLL);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](v32);
}

- (void)_transformRelativeToHip:(ABPK3DLifting *)self count:(SEL)count
{
  if (v3)
  {
    v4 = *v2[14].f32;
    v5 = vmulq_f32(v4, v4);
    *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
    v7 = vrsqrte_f32(v6);
    v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
    v9 = vmulq_n_f32(v4, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]);
    v10 = *v2[8].f32;
    v11 = vmulq_f32(v10, v10);
    *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    *v11.f32 = vrsqrte_f32(v12);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
    v13 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    v14 = vmulq_f32(v9, v13);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v15 = vmlsq_lane_f32(v9, v13, *v14.f32, 0);
    v16 = vmulq_f32(v15, v15);
    *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    *v16.f32 = vrsqrte_f32(v17);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
    v18 = vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]);
    v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), vnegq_f32(v13)), v18, vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL));
    v20 = vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL);
    v21 = vmulq_f32(v19, v19);
    v5.f32[0] = v21.f32[1] + (v21.f32[2] + v21.f32[0]);
    *v21.f32 = vrsqrte_f32(v5.u32[0]);
    *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v21.f32, *v21.f32)));
    v22 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v21.f32, *v21.f32))).f32[0]);
    v23 = vzip1q_s32(v13, v18);
    v23.i32[2] = v22.i32[0];
    v24 = vzip2q_s32(vzip1q_s32(v13, v22), vdupq_lane_s32(*v18.f32, 1));
    v25 = vzip2q_s32(v13, v18);
    v25.i32[2] = v22.i32[2];
    do
    {
      *v2->f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*v2->f32)), v24, *v2, 1), v25, *v2->f32, 2);
      v2 += 2;
      --v3;
    }

    while (v3);
  }
}

- (id).cxx_construct
{
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  return self;
}

@end