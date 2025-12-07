@interface ABPKDepthBasedScaleEstimation
- (ABPKDepthBasedScaleEstimation)init;
- (float)estimateScaleFromDepthData:(CGFloat)data depthConfidenceData:(CGFloat)confidenceData timestamp:(__n128)timestamp imageResolution:(__n128)resolution imageIntrinsics:(__n128)intrinsics cameraFromBodyPose:(uint64_t)pose liftingResult:(__CVBuffer *)result;
- (float)estimateScaleFromJasperCloud:(float32x4_t)cloud cameraFromBodyPose:(float32x4_t)pose liftingResult:(float32x4_t)result;
- (void)resetState;
@end

@implementation ABPKDepthBasedScaleEstimation

- (ABPKDepthBasedScaleEstimation)init
{
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Initializing ", buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = ABPKDepthBasedScaleEstimation;
  v4 = [(ABPKDepthBasedScaleEstimation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ABPKDepthBasedScaleEstimation *)v4 resetState];
  }

  return v5;
}

- (void)resetState
{
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Reset state ", v4, 2u);
  }

  self->_depth_scaler_num_den = 0;
  self->_depth_scaler_observation_count = 0;
}

- (float)estimateScaleFromDepthData:(CGFloat)data depthConfidenceData:(CGFloat)confidenceData timestamp:(__n128)timestamp imageResolution:(__n128)resolution imageIntrinsics:(__n128)intrinsics cameraFromBodyPose:(uint64_t)pose liftingResult:(__CVBuffer *)result
{
  *&v66[16] = resolution;
  *&v66[32] = intrinsics;
  *v66 = timestamp;
  v95 = *MEMORY[0x277D85DE8];
  v21 = a11;
  v22 = __ABPKLogSharedInstance(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Estimating scale from AppleDepth data ", buf, 2u);
  }

  if (a2 - *(self + 8) > 1.0)
  {
    [self resetState];
  }

  Width = CVPixelBufferGetWidth(result);
  Height = CVPixelBufferGetHeight(result);
  v25 = Height;
  v99.width = Width;
  v99.height = Height;
  v98.width = data;
  v98.height = confidenceData;
  v27.f32[0] = ABPKAdjustIntrinsicsForViewportSize(*v66, v98, v99);
  v26 = 0;
  v27.i32[3] = 0;
  v28.i32[3] = 0;
  v29.i32[3] = 0;
  *v85 = a17;
  *&v85[16] = a18;
  v86 = v96;
  v87 = v97;
  do
  {
    *&buf[v26] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v85[v26])), v28, *&v85[v26], 1), v29, *&v85[v26], 2), xmmword_23EE28170, *&v85[v26], 3);
    v26 += 16;
  }

  while (v26 != 64);
  v64 = v89;
  v65 = *buf;
  v62 = v91;
  v63 = v90;
  CVPixelBufferLockBaseAddress(result, 0);
  v30 = CVPixelBufferLockBaseAddress(a10, 0);
  v31 = __ABPKLogSharedInstance(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v31, OS_LOG_TYPE_DEBUG, " \t Accessing depth data pointers ", buf, 2u);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(result);
  BytesPerRow = CVPixelBufferGetBytesPerRow(result);
  v34 = CVPixelBufferGetBaseAddress(a10);
  v35 = CVPixelBufferGetBytesPerRow(a10);
  memset(buf, 0, sizeof(buf));
  v89.i64[0] = 0;
  memset(v85, 0, 24);
  memset(&v84, 0, sizeof(v84));
  std::vector<int>::reserve(buf, [v21 jointCount]);
  std::vector<int>::reserve(v85, [v21 jointCount]);
  std::vector<int>::reserve(&v84, [v21 jointCount]);
  v37 = __ABPKLogSharedInstance(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *v79 = 0;
    _os_log_impl(&dword_23EDDC000, v37, OS_LOG_TYPE_DEBUG, " \t Extracting depth data for the 2d keypoints ", v79, 2u);
  }

  v38 = 0;
  v39 = v35;
  v40 = BytesPerRow >> 2;
  v41 = v39 >> 2;
  while ([v21 jointCount] > v38)
  {
    if ([v21 isJointTracked:v38])
    {
      joints = [v21 joints];
      *v42.i32 = COERCE_FLOAT(HIDWORD(*&joints[4 * v38])) / 1000.0;
      *v43.i32 = COERCE_FLOAT(*&joints[4 * v38 + 2]) / 1000.0;
      v68 = v42;
      v69 = COERCE_FLOAT(*&joints[4 * v38]) / 1000.0;
      v67 = v43;
      v44 = vaddq_f32(v62, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v65, v69), v64, *v42.i32), v63, *v43.i32));
      v45 = vdivq_f32(v44, vdupq_laneq_s32(v44, 2)).u64[0];
      LODWORD(joints) = llroundf(*&v45);
      if ((joints & 0x80000000) == 0 && joints < Width)
      {
        v47 = llroundf(*(&v45 + 1));
        if ((v47 & 0x80000000) == 0 && v47 < v25)
        {
          DepthAndConfidenceInNeighborood(joints, v47, BaseAddress, v34, Width, v25, v40, v41);
          *v79 = v48;
          v80 = v49;
          std::vector<float>::push_back[abi:ne200100](v85, v79);
          std::vector<float>::push_back[abi:ne200100](&v84.__begin_, &v80);
          v75 = vaddq_f32(v97, vmlaq_f32(vmlaq_f32(vmulq_n_f32(a17, v69), vdupq_lane_s32(v68, 0), a18), vdupq_lane_s32(v67, 0), v96)).i32[2];
          std::vector<float>::push_back[abi:ne200100](buf, &v75);
        }
      }
    }

    ++v38;
  }

  CVPixelBufferUnlockBaseAddress(result, 0);
  v50 = CVPixelBufferUnlockBaseAddress(a10, 0);
  v51 = __ABPKLogSharedInstance(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    *v79 = 0;
    _os_log_impl(&dword_23EDDC000, v51, OS_LOG_TYPE_DEBUG, " \t Performing optimization ", v79, 2u);
  }

  *v79 = (*&buf[8] - *buf) >> 2;
  v81 = *buf;
  v82 = *v79;
  v83 = 0;
  v74 = 0;
  v75 = (*&v85[8] - *v85) >> 2;
  v76 = *v85;
  v77 = v75;
  v78 = 0;
  v71 = (v84.__end_ - v84.__begin_) >> 2;
  begin = v84.__begin_;
  v73 = v71;
  v93 = v79;
  v94 = &v71;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float,0u,1u,false>,cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>>(v79, &v93);
  v93 = &v75;
  v94 = &v71;
  cva::MatrixRef<float,0u,1u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixRef<float,0u,1u,false>,cva::MatrixRef<float,0u,1u,false>,cva::detail::MulOp>>(&v75, &v93);
  v70 = v79;
  if (*v79 != v75)
  {
    __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
  }

  v93 = &v70;
  v94 = &v75;
  v92 = 0.0;
  cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v92, &v93, v52);
  v53 = v92;
  v70 = v79;
  v93 = &v70;
  v94 = v79;
  v92 = 0.0;
  cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v92, &v93, v54);
  v55 = -1.0;
  if (v53 > 0.0 && v92 > 0.0)
  {
    v56 = v53 + *(self + 16);
    v57 = v92 + *(self + 20);
    *(self + 16) = v56;
    *(self + 20) = v57;
    *(self + 8) = a2;
    v55 = v56 / v57;
  }

  if (v84.__begin_)
  {
    v84.__end_ = v84.__begin_;
    operator delete(v84.__begin_);
  }

  if (*v85)
  {
    *&v85[8] = *v85;
    operator delete(*v85);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v55;
}

- (float)estimateScaleFromJasperCloud:(float32x4_t)cloud cameraFromBodyPose:(float32x4_t)pose liftingResult:(float32x4_t)result
{
  poseCopy = pose;
  resultCopy = result;
  v38 = a2;
  cloudCopy = cloud;
  v10 = a7;
  v11 = a8;
  v12 = __ABPKLogSharedInstance(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " ABPKDepthBasedScaleEstimation: Estimating scale from Jasper point cloud data ", buf, 2u);
  }

  ExtractJasperNSZs(v10, buf);
  v13 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0x700000000;
  do
  {
    v14 = *(&v54 + v13);
    if ([v11 isJointTracked:{v14, *&v38, *&cloudCopy, *&poseCopy, *&resultCopy}])
    {
      joints = [v11 joints];
      v16 = *buf;
      if (*buf != v62)
      {
        v42 = vaddq_f32(resultCopy, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v38, COERCE_FLOAT(*(joints + 16 * v14)) / 1000.0), cloudCopy, COERCE_FLOAT(HIDWORD(*(joints + 16 * v14))) / 1000.0), poseCopy, COERCE_FLOAT(*(joints + 16 * v14 + 8)) / 1000.0));
        v17 = vdiv_f32(*v42.i8, vdup_laneq_s32(v42, 2));
        v18 = *buf + 16;
        v19 = vsub_f32(**buf, v17);
        v20 = vaddv_f32(vmul_f32(v19, v19));
        if (v62 != (*buf + 16))
        {
          v21 = (*buf + 16);
          do
          {
            v22 = *v21;
            v21 += 2;
            v23 = vsub_f32(v22, v17);
            v24 = vaddv_f32(vmul_f32(v23, v23));
            if (v24 < v20)
            {
              v16 = v18;
              v20 = v24;
            }

            v18 = v21;
          }

          while (v21 != v62);
        }

        if (sqrtf(v20) <= 0.03)
        {
          v50 = v16[1].f32[0];
          if (v50 > 0.0)
          {
            std::vector<float>::push_back[abi:ne200100](&v55, &v50);
            v46 = v42.i32[2];
            std::vector<float>::push_back[abi:ne200100](&v58, &v46);
          }
        }
      }
    }

    v13 += 4;
  }

  while (v13 != 8);
  v25 = v55;
  if (v55 == v56)
  {
    v33 = -1.0;
  }

  else
  {
    v26 = (v59 - v58) >> 2;
    v49 = 0;
    v50 = *&v26;
    v51 = v58;
    v52 = v26;
    v53 = 0;
    v27 = (v56 - v55) >> 2;
    v46 = v27;
    v47 = v55;
    v48 = v27;
    if (v27)
    {
      v28 = 4 * ((v56 - v55) >> 2);
      do
      {
        *v25 = *v25 + 0.1;
        ++v25;
        v28 -= 4;
      }

      while (v28);
    }

    v29 = __ABPKLogSharedInstance(v25);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *v44 = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " \t Performing optimization ", v44, 2u);
    }

    v43 = &v50;
    if (v26 != v27)
    {
      __assert_rtn("MatrixMultExpr", "matrixmultexpr.h", 100, "((lhs.ref().columns() == rhs.ref().rows())) || cva::detail::assertMessage(Matrix sizes are not compatible!)");
    }

    *v44 = &v43;
    v45 = &v46;
    v63 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v63, v44, v30);
    v31 = v63;
    v43 = &v50;
    *v44 = &v43;
    v45 = &v50;
    v63 = 0.0;
    cva::assign<false,false,cva::Matrix<float,1u,1u,false>,cva::MatrixTransposeExpr<cva::MatrixRef<float,0u,1u,false>>,cva::MatrixRef<float,0u,1u,false>>(&v63, v44, v32);
    v33 = -1.0;
    v25 = v55;
    if (v31 > 0.0 && v63 > 0.0)
    {
      v34 = v31 + *(self + 16);
      v35 = v63 + *(self + 20);
      *(self + 16) = v34;
      *(self + 20) = v35;
      v36 = *(self + 24) + v56 - v25;
      *(self + 24) = v36;
      if (v36 >= 8)
      {
        v33 = v34 / v35;
      }
    }
  }

  if (v25)
  {
    v56 = v25;
    operator delete(v25);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (*buf)
  {
    v62 = *buf;
    operator delete(*buf);
  }

  return v33;
}

@end