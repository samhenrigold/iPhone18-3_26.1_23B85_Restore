@interface ABPKCameraRegistration
- (ABPKCameraRegistration)init;
- (ABPKRegistrationData)estimateCameraPoseFromMatchingwithImageIntrinsics:(__n128)intrinsics imageResolution:(__n128)resolution joints2d:(float64_t)joints2d jointsLifted3D:(float64_t)d jointsLifted3DCount:(uint64_t)count;
- (id).cxx_construct;
- (id)runCameraRegistrationWithImageIntrinsics:(__n128)intrinsics imageResolution:(__n128)resolution liftingResult:(float64_t)result;
@end

@implementation ABPKCameraRegistration

- (ABPKCameraRegistration)init
{
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ABPKCameraRegistration: Initializing ", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = ABPKCameraRegistration;
  return [(ABPKCameraRegistration *)&v5 init];
}

- (ABPKRegistrationData)estimateCameraPoseFromMatchingwithImageIntrinsics:(__n128)intrinsics imageResolution:(__n128)resolution joints2d:(float64_t)joints2d jointsLifted3D:(float64_t)d jointsLifted3DCount:(uint64_t)count
{
  v67 = a2;
  intrinsicsCopy = intrinsics;
  resolutionCopy = resolution;
  v14 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " ABPKCameraRegistration: Estimating camera pose ", buf, 2u);
  }

  v16 = __ABPKLogSharedInstance(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " \t Retargetting 2d keypoints to lifting skeleton type ", buf, 2u);
  }

  v66[0] = 0;
  v66[1] = 0;
  v65 = v66;
  *buf = 0x800000000;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x700000001;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0xD00000002;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0xE00000003;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0xF00000004;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0xA00000005;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0xB00000006;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0xC00000007;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x100000008;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x200000009;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x30000000ALL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x40000000BLL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x50000000CLL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  *buf = 0x60000000DLL;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,int>>(&v65, buf, buf);
  v17 = _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v63, 0x10uLL);
  v19 = v65;
  __asm { FMOV            V8.2S, #-1.0 }

  if (v65 != v66)
  {
    v25.f64[0] = joints2d;
    v25.f64[1] = d;
    do
    {
      v26 = a8[*(v19 + 7)];
      if (v26.f32[0] < 0.0 || v26.f32[1] < 0.0)
      {
        *&v63[8 * *(v19 + 8)] = _D8;
      }

      else
      {
        *&v63[8 * *(v19 + 8)] = vcvt_f32_f64(vmulq_f64(v25, vcvtq_f64_f32(v26)));
      }

      v27 = v19[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v19[2];
          _ZF = *v28 == v19;
          v19 = v28;
        }

        while (!_ZF);
      }

      v19 = v28;
    }

    while (v28 != v66);
  }

  v29 = determineDeviceANEVersionPriorOrEqualToH12(v17, v18);
  if (v29)
  {
    *v63 = vmul_f32(vadd_f32(*(v63 + 32), *(v63 + 8)), 0x3F0000003F000000);
    v30 = *(v63 + 64);
    v31 = vmul_f32(vadd_f32(v30, *(v63 + 56)), 0x3F0000003F000000);
    *&v32 = -(v31.f32[0] - (v30.f32[0] * 2.0));
    v30.f32[0] = v31.f32[1] * -0.6 + v30.f32[1] * 1.6;
    HIDWORD(v32) = v30.i32[0];
    *(v63 + 9) = v32;
  }

  else
  {
    v33 = a8[16];
    v34.f64[0] = joints2d;
    v34.f64[1] = d;
    v35 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v34, vcvtq_f64_f32(v33))));
    if (v33.f32[1] < 0.0)
    {
      v35 = _D8;
    }

    if (v33.f32[0] >= 0.0)
    {
      v36 = v35;
    }

    else
    {
      v36 = _D8;
    }

    v37 = v63;
    *(v63 + 9) = v36;
    v39 = v37[7];
    v38 = v37[8];
    if (v39.f32[0] >= 0.0 && v38.f32[0] >= 0.0 && v38.f32[1] >= 0.0)
    {
      v40 = vcvtq_f64_f32(vsub_f32(v39, v38));
      *v40.f64 = sqrt(vaddvq_f64(vmulq_f64(v40, v40)));
      *v40.f64 = v38.f32[1] + *v40.f64 * -0.5;
      v38.i32[1] = LODWORD(v40.f64[0]);
    }

    v37[9] = v38;
  }

  v41 = *(MEMORY[0x277D860B8] + 16);
  v62[0] = *MEMORY[0x277D860B8];
  v62[1] = v41;
  v42 = *(MEMORY[0x277D860B8] + 48);
  v62[2] = *(MEMORY[0x277D860B8] + 32);
  v62[3] = v42;
  v43 = __ABPKLogSharedInstance(v29);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_DEBUG, " \t Performing registration ", buf, 2u);
  }

  btr::BodyRegistration::RegisterBody(self + 16, v63, (v64 - v63) >> 3, a9, a10, v62, 1, &v67, buf);
  if (*buf)
  {
    v45 = __ABPKLogSharedInstance(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_impl(&dword_23EDDC000, v45, OS_LOG_TYPE_ERROR, " \t\t Registration Failed ", v52, 2u);
    }

    v46 = 0;
  }

  else
  {
    v47 = __ABPKLogSharedInstance(v44);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *v52 = 0;
      _os_log_impl(&dword_23EDDC000, v47, OS_LOG_TYPE_DEBUG, " \t Creating result type ", v52, 2u);
    }

    v48 = [ABPKRegistrationData alloc];
    v46 = [(ABPKRegistrationData *)v48 initWithImagePoints:v67.n128_f64[0] imagePointsCount:intrinsicsCopy.n128_f64[0] jointsLifted3D:resolutionCopy.n128_f64[0] jointsLifted3DCount:joints2d cameraIntrinsics:d imageDimensions:v54 cameraFromBodyPose:v55 registrationValid:v56, v57];
  }

  if (__p)
  {
    v61 = __p;
    operator delete(__p);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  std::__tree<unsigned char>::destroy(&v65, v66[0]);

  return v46;
}

- (id)runCameraRegistrationWithImageIntrinsics:(__n128)intrinsics imageResolution:(__n128)resolution liftingResult:(float64_t)result
{
  *(&v66[6] + 4) = *MEMORY[0x277D85DE8];
  v62[0] = a2;
  v62[1] = intrinsics;
  v62[2] = resolution;
  v9 = a8;
  v10 = __ABPKLogSharedInstance([self _startRunCameraRegistrationSignpost]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " ABPKCameraRegistration: Run camera registration ", buf, 2u);
  }

  v11 = objc_alloc_init(ABPKResultRegistration);
  v12 = *(self + 352);
  *(self + 352) = v11;

  skeletonDetectionResult2D = [v9 skeletonDetectionResult2D];
  liftingData = [skeletonDetectionResult2D liftingData];
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm((self + 360), [liftingData liftingData3DElementCount] >> 1);

  if (*(self + 368) != *(self + 360))
  {
    v15 = 0;
    v16 = 0;
    v17.f64[0] = result;
    v17.f64[1] = a6;
    v18 = vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(v17)));
    v19 = vdup_n_s32(0x447A0000u);
    do
    {
      liftingData2 = [skeletonDetectionResult2D liftingData];
      v52 = *([liftingData2 unnormalizedLiftingData3D] + v15);
      liftingData3 = [skeletonDetectionResult2D liftingData];
      v50 = *([liftingData3 unnormalizedLiftingData3D] + v15 + 4);

      *(*(self + 360) + v15) = vdiv_f32(vmul_f32(__PAIR64__(v50, v52), v18), v19);
      ++v16;
      v15 += 8;
    }

    while (v16 < (*(self + 368) - *(self + 360)) >> 3);
  }

  [*(self + 352) setJoints2d:?];
  v60.transform.m_data[15] = 0.0;
  v60.transform.m_data[14] = 0.0;
  v61 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v60.transform.m_data[14], [v9 jointCount]);
  v22 = 0;
  v53 = vdupq_n_s32(0x447A0000u);
  while ([v9 jointCount] > v22)
  {
    joints = [v9 joints];
    v24 = vdivq_f32(*(joints + 16 * v22), v53);
    v24.f32[2] = COERCE_FLOAT(*(joints + 16 * v22 + 8)) / 1000.0;
    *(*&v60.transform.m_data[14] + 16 * v22++) = v24;
  }

  v25 = *(MEMORY[0x277D860B8] + 16);
  *&v60.transform.m_data[5] = *MEMORY[0x277D860B8];
  *&v60.transform.m_data[7] = v25;
  v26 = *(MEMORY[0x277D860B8] + 48);
  *&v60.transform.m_data[9] = *(MEMORY[0x277D860B8] + 32);
  *&v60.transform.m_data[11] = v26;
  *&v60.camera_matrix.m_data[6] = *&v60.transform.m_data[5];
  *&v60.camera_matrix.m_data[8] = v25;
  *&v60.transform.m_data[1] = *&v60.transform.m_data[9];
  *&v60.transform.m_data[3] = v26;
  btr::BodyRegistration::RegisterBody(self + 16, *(self + 360), (*(self + 368) - *(self + 360)) >> 3, *&v60.transform.m_data[14], (*&v60.transform.m_data[15] - *&v60.transform.m_data[14]) >> 4, &v60.transform.m_data[5], 1, v62, buf);
  if (*buf)
  {
    v29 = __ABPKLogSharedInstance(v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v65 = 0;
      _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEFAULT, " \t\t Registration Failed ", v65, 2u);
    }

    [*(self + 352) setSuccess:{0, &v60.camera_matrix.m_data[6]}];
  }

  else
  {
    v30 = btr::ComputeReprojectionAvg(&v57, &v60, v28);
    v31 = btr::ComputeTotalBoneLength(&v60.camera_matrix.m_data[3]);
    v33 = __ABPKLogSharedInstance(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v65 = 134217984;
      *v66 = v30;
      _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_DEBUG, " \t\t Reprojection err evg[pixels]: %f ", v65, 0xCu);
    }

    v35 = __ABPKLogSharedInstance(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      *v65 = 134217984;
      *v66 = v31;
      _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " \t\t Bones length: %f) ", v65, 0xCu);
    }

    [*(self + 352) setCameraFromBodyPose:{COERCE_DOUBLE(vcvt_f32_f64(v58[0])), COERCE_DOUBLE(vcvt_f32_f64(v58[2])), COERCE_DOUBLE(vcvt_f32_f64(v58[4])), COERCE_DOUBLE(vcvt_f32_f64(v59)), &v60.camera_matrix.m_data[6]}];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((self + 384), 0x10uLL);
    v36 = *&v60.camera_matrix.m_data[3];
    v37 = v60.camera_matrix.m_data[4];
    if (*&v60.camera_matrix.m_data[3] != *&v60.camera_matrix.m_data[4])
    {
      v38 = 0;
      do
      {
        v39 = *v36;
        *&v39.f64[0] = vcvt_f32_f64(*v36);
        v40 = v36[1].f64[0];
        *&v39.f64[1] = v40;
        *(*(self + 384) + v38) = v39;
        v36 = (v36 + 24);
        v38 += 16;
      }

      while (v36 != *&v37);
    }

    [*(self + 352) setJoints3dWrtBody:*(self + 384)];
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((self + 408), 0x10uLL);
    v41 = *&v60.camera_matrix.m_data[3];
    v42 = v60.camera_matrix.m_data[4];
    if (*&v60.camera_matrix.m_data[3] != *&v60.camera_matrix.m_data[4])
    {
      v43 = 0;
      do
      {
        v63[0] = v58;
        v63[1] = 4;
        v64[0] = v63;
        v64[1] = v41;
        *(&v66[1] + 4) = 0;
        *(&v66[2] + 4) = 0;
        *(v66 + 4) = 0;
        cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::MatrixRef<double const,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(v66 + 4, v64);
        v44 = 0;
        v54 = 0uLL;
        v55 = 0.0;
        do
        {
          v54.f64[v44] = *(&v66[v44] + 4) + v59.f64[v44];
          ++v44;
        }

        while (v44 != 3);
        *&v45 = vcvt_f32_f64(v54);
        *&v46 = v55;
        *(&v45 + 1) = __PAIR64__(HIDWORD(v54.f64[1]), v46);
        *(*(self + 408) + 16 * v43++) = v45;
        v41 += 3;
      }

      while (v41 != *&v42);
    }

    [*(self + 352) setJoints3dWrtCamera:*(self + 408)];
    [*(self + 352) setSuccess:1];
  }

  [self _endRunCameraRegistrationSignpost];
  v47 = *(self + 352);
  if (*&v60.camera_matrix.m_data[3])
  {
    v60.camera_matrix.m_data[4] = v60.camera_matrix.m_data[3];
    operator delete(*&v60.camera_matrix.m_data[3]);
  }

  if (*&v60.camera_matrix.m_data[0])
  {
    v60.camera_matrix.m_data[1] = v60.camera_matrix.m_data[0];
    operator delete(*&v60.camera_matrix.m_data[0]);
  }

  if (*&v60.transform.m_data[14])
  {
    v60.transform.m_data[15] = v60.transform.m_data[14];
    operator delete(*&v60.transform.m_data[14]);
  }

  return v47;
}

- (id).cxx_construct
{
  *(self + 4) = 5;
  *(self + 168) = xmmword_23EE28CA8;
  *(self + 184) = unk_23EE28CB8;
  *(self + 200) = xmmword_23EE28CC8;
  *(self + 216) = unk_23EE28CD8;
  *(self + 104) = xmmword_23EE28C68;
  *(self + 120) = unk_23EE28C78;
  *(self + 136) = xmmword_23EE28C88;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 12) = 0;
  *(self + 152) = unk_23EE28C98;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 15) = 0u;
  *(self + 53) = 0;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  return self;
}

@end