@interface ABPK2DExtrapolationFiltering
- (ABPK2DExtrapolationFiltering)initWithUse3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time;
- (id).cxx_construct;
- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)abpk :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :(id)a8 Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:personTracker:;
- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)abpk :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:;
- (uint64_t)_getTrackedHumanForHumans:(abpk:(double)humans@<D0> :(float64x2_t)a5@<Q1> Human *)a3@<X8> atTimestamp:(float64_t)timestamp@<D2> withImageResolution:;
- (void)_getTrackedHumanForHumans:(void *)humans@<X3> atTimestamp:(uint64_t)timestamp@<X8> withImageResolution:(double)resolution@<D0> withPersonTracker:(CGFloat)tracker@<D1>;
@end

@implementation ABPK2DExtrapolationFiltering

- (ABPK2DExtrapolationFiltering)initWithUse3DSkeletonForExtrapolation:(BOOL)extrapolation shouldPush3DSupportSkeleton:(BOOL)skeleton withExtrapolationTime:(double)time
{
  v9.receiver = self;
  v9.super_class = ABPK2DExtrapolationFiltering;
  result = [(ABPK2DExtrapolationFiltering *)&v9 init];
  if (result)
  {
    result->_extrapolationTime = time;
    result->_use3DSupportSkeletonForExtrapolation = extrapolation;
    result->_shouldPush3DSupportSkeleton = skeleton;
    result->_lastANSTTrackedInstanceId = 10000;
  }

  return result;
}

- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)abpk :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:
{
  height = abpk.height;
  width = abpk.width;
  v13 = a7;
  memset(v15, 0, sizeof(v15));
  std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(v15, a3->__begin_, a3->__end_, 0xEEEEEEEEEEEEEEEFLL * ((a3->__end_ - a3->__begin_) >> 3));
  LODWORD(a6) = [(ABPK2DExtrapolationFiltering *)self performExtrapolationOnHumans:v15 withImageResolution:a6 atTimestamp:v13 rotationNeeded:0 previousSkeleton3D:width personTracker:height, a5];
  v16 = v15;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&v16);

  return a6;
}

- (int)performExtrapolationOnHumans:()vector<abpk:(std:(CGSize)abpk :(double)a5 allocator<abpk:(int64_t)a6 :(id)a7 Human>> *)a3 :(id)a8 Human withImageResolution:atTimestamp:rotationNeeded:previousSkeleton3D:personTracker:
{
  height = abpk.height;
  width = abpk.width;
  v89[2] = *MEMORY[0x277D85DE8];
  anon_178 = self->_anon_178;
  v16 = a7;
  v17 = a8;
  std::vector<abpk::Human>::__vdeallocate(anon_178 + 16);
  *(anon_178 + 128) = *a3;
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__cap_ = 0;
  v19 = *(anon_178 + 16);
  if (v19 == self->_rawTrackedHumanVector.__end_)
  {
    v33 = __ABPKLogSharedInstance(v18);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_DEBUG, " \t\t No humans detected in the image ", buf, 2u);
    }

    goto LABEL_58;
  }

  v21 = *v19;
  v20 = v19[1];
  v22 = __ABPKLogSharedInstance(v18);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = 0xEEEEEEEEEEEEEEEFLL * ((self->_rawTrackedHumanVector.__end_ - self->_rawTrackedHumanVector.__begin_) >> 3);
    *buf = 134217984;
    *&buf[4] = v23;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " \t ABPK2DExtrapolationFiltering: Found 2d skeletons: %lu ", buf, 0xCu);
  }

  if (v17)
  {
    v25 = __ABPKLogSharedInstance(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v17 count];
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_DEBUG, " \t ABPK2DExtrapolationFiltering: Found full bodies in the image: %lu ", buf, 0xCu);
    }

    v27 = [v17 count];
    if (v27)
    {
      v28 = __ABPKLogSharedInstance(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, " \t Associating skeletons with ANST BBs ", buf, 2u);
      }

      memset(v80, 0, sizeof(v80));
      std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(v80, self->_rawTrackedHumanVector.__begin_, self->_rawTrackedHumanVector.__end_, 0xEEEEEEEEEEEEEEEFLL * ((self->_rawTrackedHumanVector.__end_ - self->_rawTrackedHumanVector.__begin_) >> 3));
      objc_msgSend__getTrackedHumanForHumans_atTimestamp_withImageResolution_withPersonTracker_(self, a5, width, height);
      v29 = *anon_178;
      if (*anon_178)
      {
        *&self->_anon_178[8] = v29;
        operator delete(v29);
        *anon_178 = 0;
        *(anon_178 + 1) = 0;
        *(anon_178 + 2) = 0;
      }

      *anon_178 = *buf;
      *&self->_anon_178[16] = v82;
      v82 = 0;
      memset(buf, 0, sizeof(buf));
      v30 = *&self->_anon_178[24];
      if (v30)
      {
        *&self->_anon_178[32] = v30;
        operator delete(v30);
        *&self->_anon_178[24] = 0;
        *&self->_anon_178[32] = 0;
        *&self->_anon_178[40] = 0;
      }

      *&self->_anon_178[24] = *__p;
      *&self->_anon_178[40] = v84;
      __p[1] = 0;
      v84 = 0;
      __p[0] = 0;
      v31 = *&self->_anon_178[48];
      if (v31)
      {
        *&self->_anon_178[56] = v31;
        operator delete(v31);
        *(anon_178 + 6) = 0;
        *(anon_178 + 7) = 0;
        *(anon_178 + 8) = 0;
      }

      *(anon_178 + 3) = v85;
      *&self->_anon_178[64] = v86;
      v86 = 0;
      v85 = 0uLL;
      _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100INS_27__optional_move_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_178[72], &v87);
      *&self->_anon_178[104] = v89[0];
      *&self->_anon_178[109] = *(v89 + 5);
      if (v88 == 1 && v87.n128_u64[0])
      {
        v87.n128_u64[1] = v87.n128_u64[0];
        operator delete(v87.n128_u64[0]);
      }

      if (v85)
      {
        *(&v85 + 1) = v85;
        operator delete(v85);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v32 = v80;
      goto LABEL_50;
    }
  }

  else
  {
    v34 = __ABPKLogSharedInstance(v24);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v34, OS_LOG_TYPE_DEBUG, " \t ABPK2DExtrapolationFiltering: No full bodies in the image ", buf, 2u);
    }
  }

  v35 = __ABPKLogSharedInstance(v27);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v35, OS_LOG_TYPE_DEBUG, " \t Associating skeletons with legacy 2d skeleton matching ", buf, 2u);
  }

  memset(v79, 0, sizeof(v79));
  std::vector<abpk::Human>::__init_with_size[abi:ne200100]<abpk::Human*,abpk::Human*>(v79, self->_rawTrackedHumanVector.__begin_, self->_rawTrackedHumanVector.__end_, 0xEEEEEEEEEEEEEEEFLL * ((self->_rawTrackedHumanVector.__end_ - self->_rawTrackedHumanVector.__begin_) >> 3));
  objc_msgSend__getTrackedHumanForHumans_atTimestamp_withImageResolution_(self, a5, width, height);
  v36 = *anon_178;
  if (*anon_178)
  {
    *&self->_anon_178[8] = v36;
    operator delete(v36);
    *anon_178 = 0;
    *(anon_178 + 1) = 0;
    *(anon_178 + 2) = 0;
  }

  *anon_178 = *buf;
  *&self->_anon_178[16] = v82;
  v82 = 0;
  memset(buf, 0, sizeof(buf));
  v37 = *&self->_anon_178[24];
  if (v37)
  {
    *&self->_anon_178[32] = v37;
    operator delete(v37);
    *&self->_anon_178[24] = 0;
    *&self->_anon_178[32] = 0;
    *&self->_anon_178[40] = 0;
  }

  *&self->_anon_178[24] = *__p;
  *&self->_anon_178[40] = v84;
  __p[1] = 0;
  v84 = 0;
  __p[0] = 0;
  v38 = *&self->_anon_178[48];
  if (v38)
  {
    *&self->_anon_178[56] = v38;
    operator delete(v38);
    *(anon_178 + 6) = 0;
    *(anon_178 + 7) = 0;
    *(anon_178 + 8) = 0;
  }

  *(anon_178 + 3) = v85;
  *&self->_anon_178[64] = v86;
  v86 = 0;
  v85 = 0uLL;
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100INS_27__optional_move_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_178[72], &v87);
  *&self->_anon_178[104] = v89[0];
  *&self->_anon_178[109] = *(v89 + 5);
  if (v88 == 1 && v87.n128_u64[0])
  {
    v87.n128_u64[1] = v87.n128_u64[0];
    operator delete(v87.n128_u64[0]);
  }

  if (v85)
  {
    *(&v85 + 1) = v85;
    operator delete(v85);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v32 = v79;
LABEL_50:
  v78.__begin_ = v32;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&v78);
  v39 = *self->_anon_178;
  v40 = *&self->_anon_178[8];
  if (v40 == v39)
  {
LABEL_58:
    self->_extrapolationFilter2D.m_values.__end_ = self->_extrapolationFilter2D.m_values.__begin_;
    self->_extrapolationFilter2DForLiftingData.m_values.__end_ = self->_extrapolationFilter2DForLiftingData.m_values.__begin_;
    v46 = -6667;
    goto LABEL_96;
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(self->_anon_100, v39, v40, (v40 - v39) >> 3);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_100[24], *&self->_anon_178[24], *&self->_anon_178[32], (*&self->_anon_178[32] - *&self->_anon_178[24]) >> 2);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_100[48], *&self->_anon_178[48], *&self->_anon_178[56], (*&self->_anon_178[56] - *&self->_anon_178[48]) >> 2);
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100IRKNS_27__optional_copy_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_100[72], &self->_anon_178[72]);
  *&self->_anon_100[104] = *&self->_anon_178[104];
  *&self->_anon_100[112] = *&self->_anon_178[112];
  self->_anon_100[116] = self->_anon_178[116];
  if (v16)
  {
    v42 = __ABPKLogSharedInstance(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " Previous 3d skeleton is not nil ", buf, 2u);
    }

    jointCount = [v16 jointCount];
    if (jointCount)
    {
      v44 = __ABPKLogSharedInstance(jointCount);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v44, OS_LOG_TYPE_DEBUG, " Previous 3d skeleton valid. Using it for alignment ", buf, 2u);
      }

      v45 = [[ABPK2DDetectionResult alloc] initWithJoints:*abpk::Human::jointVector(self->_anon_100) trackingStates:*&self->_anon_100[24] numberOfJoints:(*&self->_anon_100[8] - *self->_anon_100) >> 3 aligningPreviousSkeleton:v16 rotation:a6];
    }

    else
    {
      v47 = __ABPKLogSharedInstance(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v47, OS_LOG_TYPE_DEBUG, " previousSkeleton3D.jointCount == 0 ", buf, 2u);
      }

      v49 = __ABPKLogSharedInstance(v48);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v49, OS_LOG_TYPE_DEBUG, " Setting _aligned3DSkeleton = nil ", buf, 2u);
      }

      v45 = 0;
    }

    aligned3DSkeleton = self->_aligned3DSkeleton;
    self->_aligned3DSkeleton = v45;
  }

  anon_210 = self->_anon_210;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(self->_anon_210, *self->_anon_100, *&self->_anon_100[8], (*&self->_anon_100[8] - *self->_anon_100) >> 3);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_210[24], *&self->_anon_100[24], *&self->_anon_100[32], (*&self->_anon_100[32] - *&self->_anon_100[24]) >> 2);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_anon_210[48], *&self->_anon_100[48], *&self->_anon_100[56], (*&self->_anon_100[56] - *&self->_anon_100[48]) >> 2);
  _ZNSt3__123__optional_storage_baseINS_6vectorIDv2_fNS_9allocatorIS2_EEEELb0EE13__assign_fromB8ne200100IRKNS_27__optional_copy_assign_baseIS5_Lb0EEEEEvOT_(&self->_anon_210[72], &self->_anon_100[72]);
  *&self->_anon_210[104] = *&self->_anon_100[104];
  *&self->_anon_210[112] = *&self->_anon_100[112];
  self->_anon_210[116] = self->_anon_100[116];
  v52 = *&self->_anon_210[24];
  if (!*v52 && v52[1] && v52[16])
  {
    v53 = (*anon_210)[1];
    v54 = vsub_f32(v53, (*anon_210)[16]);
    v55 = vmul_f32(v54, v54);
    v56 = vadd_f32(v55, vdup_lane_s32(v55, 1)).u32[0];
    v57 = vrsqrte_f32(v56);
    v58 = vmul_f32(v57, vrsqrts_f32(v56, vmul_f32(v57, v57)));
    abpk::Human::updateJoint(self->_anon_210, 0, COERCE_DOUBLE(vmla_f32(v53, vdup_n_s32(0x3E99999Au), vmul_n_f32(vmul_n_f32(v54, vmul_f32(v58, vrsqrts_f32(v56, vmul_f32(v58, v58))).f32[0]), sqrtf(vaddv_f32(v55))))));
  }

  abpk::Human::resize(self->_anon_210, 0xEuLL);
  v59 = abpk::SkeletonJointFilter<float>::filter(&self->_extrapolationFilter2D, *self->_anon_100, (*&self->_anon_100[8] - *self->_anon_100) >> 2, a5);
  v60 = abpk::SkeletonJointFilter<float>::filter(&self->_extrapolationFilter2DForLiftingData, *self->_anon_210, (*&self->_anon_210[8] - *self->_anon_210) >> 2, a5);
  memset(buf, 0, sizeof(buf));
  v82 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(buf, *&self->_anon_100[24], *&self->_anon_100[32], (*&self->_anon_100[32] - *&self->_anon_100[24]) >> 2);
  abpk::Human::updateFromRawJointArray(self->_anon_100, v59);
  v61 = self->_aligned3DSkeleton;
  if (v61 && self->_use3DSupportSkeletonForExtrapolation)
  {
    rawJointsOutput = [(ABPK2DDetectionResult *)v61 rawJointsOutput];
    v63 = v20 - v21;
    memset(&v78, 0, sizeof(v78));
    std::vector<int>::reserve(&v78, (v20 - v21) >> 2);
    if (v20 != v21)
    {
      v64 = 0;
      if ((v63 >> 3) <= 1)
      {
        v65 = 1;
      }

      else
      {
        v65 = v63 >> 3;
      }

      v66 = 4;
      do
      {
        if (*(*buf + 4 * v64) || (v67 = vsub_f32(*(*abpk::Human::jointVector(self->_anon_100) + 8 * v64), *(rawJointsOutput + 8 * v64)), sqrtf(vaddv_f32(vmul_f32(v67, v67))) <= 0.03))
        {
          std::vector<float>::push_back[abi:ne200100](&v78.__begin_, (*self->_anon_100 + v66 - 4));
          std::vector<float>::push_back[abi:ne200100](&v78.__begin_, (*self->_anon_100 + v66));
        }

        else
        {
          v76 = HIDWORD(*(rawJointsOutput + 8 * v64));
          v77 = *(rawJointsOutput + 8 * v64);
          std::vector<float>::push_back[abi:ne200100](&v78.__begin_, &v77);
          v77 = v76;
          std::vector<float>::push_back[abi:ne200100](&v78.__begin_, &v77);
        }

        ++v64;
        v66 += 8;
      }

      while (v65 != v64);
    }

    v68 = abpk::SkeletonJointFilter<float>::filter(&self->_extrapolationFilter2D, v78.__begin_, v78.__end_ - v78.__begin_, a5);
    abpk::Human::updateFromRawJointArray(self->_anon_100, v68);
    if (v78.__begin_)
    {
      v78.__end_ = v78.__begin_;
      operator delete(v78.__begin_);
    }

    extrapolationTime = -1.0;
  }

  else
  {
    extrapolationTime = self->_extrapolationTime;
  }

  v70 = abpk::SkeletonJointFilter<float>::applyTimeConstraint(&self->_extrapolationFilter2D, a5, extrapolationTime);
  abpk::Human::updateFromRawJointArray(self->_anon_100, v70);
  if (*&self->_anon_100[104] < ((*&self->_anon_100[8] - *self->_anon_100) >> 3))
  {
    v72 = __ABPKLogSharedInstance(v71);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v78.__begin_) = 0;
      _os_log_impl(&dword_23EDDC000, v72, OS_LOG_TYPE_DEBUG, " \t\t Missing joints detected in _trackedHuman skeleton. ", &v78, 2u);
    }

    abpk::Human::printMissingJoints(self->_anon_100);
  }

  abpk::Human::updateFromRawJointArray(self->_anon_210, v60);
  if (*&self->_anon_210[104] < ((*&self->_anon_210[8] - *self->_anon_210) >> 3))
  {
    v74 = __ABPKLogSharedInstance(v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v78.__begin_) = 0;
      _os_log_impl(&dword_23EDDC000, v74, OS_LOG_TYPE_DEBUG, " \t\t Missing joints detected in _trackedHumanForLifting skeleton. ", &v78, 2u);
    }

    abpk::Human::printMissingJoints(anon_210);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v46 = 0;
LABEL_96:

  return v46;
}

- (void)_getTrackedHumanForHumans:(void *)humans@<X3> atTimestamp:(uint64_t)timestamp@<X8> withImageResolution:(double)resolution@<D0> withPersonTracker:(CGFloat)tracker@<D1>
{
  v87 = *MEMORY[0x277D85DE8];
  humansCopy = humans;
  v14 = __ABPKLogSharedInstance(humansCopy);
  resolutionCopy = resolution;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " ANST Bounding boxes ", buf, 2u);
  }

  v15 = 0;
  trackerCopy = tracker;
  v17 = trackerCopy / 288.0;
  v18 = a7;
  v19 = v18 / 192.0;
  while (1)
  {
    v20 = [humansCopy count];
    if (v20 <= v15)
    {
      break;
    }

    v21 = __ABPKLogSharedInstance(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v86) = v15;
      _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " Person: %d ", buf, 8u);
    }

    v22 = [humansCopy objectAtIndexedSubscript:v15];
    boundingBox = [v22 boundingBox];
    printCGRect(v91, v17, v19, boundingBox);

    ++v15;
  }

  v24 = __ABPKLogSharedInstance(v20);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " 2d Skeleton Bounding boxes ", buf, 2u);
  }

  v26 = *a2;
  if (*a2 != a2[1])
  {
    v27 = 0.0;
    do
    {
      v28 = __ABPKLogSharedInstance(v25);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v86 = v27;
        _os_log_impl(&dword_23EDDC000, v28, OS_LOG_TYPE_DEBUG, " Human: %lu ", buf, 0xCu);
      }

      v88.width = tracker;
      v88.height = a7;
      v92.origin.x = abpk::Human::boundingBox(v26, v88);
      printCGRect(v92, 1.0, 1.0, v29);
      ++*&v27;
      v26 = (v26 + 120);
    }

    while (v26 != a2[1]);
  }

  v30 = __ABPKLogSharedInstance(v25);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = x0_0[82];
    *buf = 134217984;
    v86 = v31;
    _os_log_impl(&dword_23EDDC000, v30, OS_LOG_TYPE_DEBUG, " _lastANSTTrackedInstanceId %lu ", buf, 0xCu);
  }

  for (i = 0; ; ++i)
  {
    v33 = [humansCopy count];
    if (i >= v33)
    {
      break;
    }

    v34 = [humansCopy objectAtIndexedSubscript:i];
    v35 = [v34 objectID] == *(x0_0 + 82);

    if (v35)
    {
      v53 = [humansCopy objectAtIndexedSubscript:i];
      [v53 boundingBox];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v62 = [humansCopy objectAtIndexedSubscript:i];
      *&v49 = COERCE_DOUBLE([v62 objectID]);

      v63 = v17;
      v41 = v55 * v17;
      v64 = v19;
      v43 = v57 * v19;
      v45 = v59 * v63;
      v47 = v61 * v64;
      x0_0[83] = resolutionCopy;
      goto LABEL_30;
    }
  }

  v36 = __ABPKLogSharedInstance(v33);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v36, OS_LOG_TYPE_DEBUG, " _lastANSTTrackedInstanceId not found in the current frame ", buf, 2u);
  }

  x0_0[2] = x0_0[1];
  x0_0[18] = x0_0[17];
  if (resolution - x0_0[83] > 2.0)
  {
    v38 = __ABPKLogSharedInstance(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v38, OS_LOG_TYPE_DEBUG, " Primary person occluded for more than set threshold. Shifting tracking to a different person ", buf, 2u);
    }

    v39 = [humansCopy objectAtIndexedSubscript:0];
    [v39 boundingBox];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = [humansCopy objectAtIndexedSubscript:0];
    *&v49 = COERCE_DOUBLE([v48 objectID]);

    v51 = __ABPKLogSharedInstance(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v86 = *&v49;
      _os_log_impl(&dword_23EDDC000, v51, OS_LOG_TYPE_DEBUG, " Picked %lu as the new ID ", buf, 0xCu);
    }

LABEL_30:
    v65 = *a2;
    if (*a2 == a2[1])
    {
      v67 = -10000.0;
    }

    else
    {
      v66 = 0;
      v67 = -10000.0;
      do
      {
        v89.width = tracker;
        v89.height = a7;
        v68 = abpk::Human::boundingBox(v65, v89);
        v72 = computeIOUbetweenRects(v68, v69, v70, v71, v41, v43, v45, v47);
        v74 = __ABPKLogSharedInstance(v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v86 = v72;
          _os_log_impl(&dword_23EDDC000, v74, OS_LOG_TYPE_DEBUG, " \t\t iou: %f ", buf, 0xCu);
        }

        if (v72 > v67)
        {
          v66 = v65;
          v67 = v72;
        }

        v65 = (v65 + 120);
      }

      while (v65 != a2[1]);
      if (v67 >= 0.0)
      {
        goto LABEL_43;
      }
    }

    v75 = __ABPKLogSharedInstance(v52);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v75, OS_LOG_TYPE_DEBUG, " IOU is lower than threshold. No closest human found from the previous frame. Assigning new tracking id ", buf, 2u);
    }

    v66 = *a2;
    x0_0[2] = x0_0[1];
    x0_0[18] = x0_0[17];
LABEL_43:
    v76 = __ABPKLogSharedInstance(v52);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v86 = v67;
      _os_log_impl(&dword_23EDDC000, v76, OS_LOG_TYPE_DEBUG, " Associated skeleton with IOU: %f ", buf, 0xCu);
    }

    v78 = __ABPKLogSharedInstance(v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v78, OS_LOG_TYPE_DEBUG, " _lastANSTTrackedInstanceIdBB ", buf, 2u);
    }

    v93.origin.x = v41;
    v93.origin.y = v43;
    v93.size.width = v45;
    v93.size.height = v47;
    printCGRect(v93, 1.0, 1.0, v79);
    v81 = __ABPKLogSharedInstance(v80);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v81, OS_LOG_TYPE_DEBUG, " Human ", buf, 2u);
    }

    v90.width = tracker;
    v90.height = a7;
    v94.origin.x = abpk::Human::boundingBox(v66, v90);
    printCGRect(v94, 1.0, 1.0, v82);
    if (*(x0_0 + 82) != v49)
    {
      x0_0[2] = x0_0[1];
      x0_0[18] = x0_0[17];
    }

    x0_0[82] = *&v49;
    *(x0_0 + 81) = v66;
    abpk::Human::Human(timestamp, v66);
    goto LABEL_55;
  }

  v83 = __ABPKLogSharedInstance(v37);
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v83, OS_LOG_TYPE_DEBUG, " Primary person occluded. Waiting for them to be visible. ", buf, 2u);
  }

  *(timestamp + 112) = 0;
  *(timestamp + 80) = 0u;
  *(timestamp + 96) = 0u;
  *(timestamp + 48) = 0u;
  *(timestamp + 64) = 0u;
  *(timestamp + 16) = 0u;
  *(timestamp + 32) = 0u;
  *timestamp = 0u;
LABEL_55:
}

- (uint64_t)_getTrackedHumanForHumans:(abpk:(double)humans@<D0> :(float64x2_t)a5@<Q1> Human *)a3@<X8> atTimestamp:(float64_t)timestamp@<D2> withImageResolution:
{
  if (*(self + 8) == *(self + 16))
  {
    v9 = *a2;
    if (*a2 != a2[1])
    {
      v25 = -2147500000.0;
      v26 = *a2;
      do
      {
        v27 = v26[13];
        *&humans = abpk::Human::area(v26, *&humans);
        *&humans = *&humans + v27;
        if (*&humans > v25)
        {
          v9 = v26;
          v25 = *&humans;
        }

        v26 += 15;
      }

      while (v26 != a2[1]);
    }
  }

  else
  {
    v10 = *a2;
    v9 = a2[1];
    if (*a2 == v9)
    {
      v12 = 3.4028e38;
    }

    else
    {
      humansCopy = humans;
      a5.f64[1] = timestamp;
      v12 = 3.4028e38;
      v38 = a5;
      do
      {
        memset(&buf, 0, sizeof(buf));
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&buf, *(self + 8), *(self + 16), (*(self + 16) - *(self + 8)) >> 2);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v40, *(self + 32), *(self + 40), (*(self + 40) - *(self + 32)) >> 2);
        __p = 0;
        v44 = 0;
        v45 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(self + 56), *(self + 64), (*(self + 64) - *(self + 56)) >> 3);
        v13 = *(self + 96);
        v46 = *(self + 80);
        v47[0] = v13;
        *(v47 + 12) = *(self + 108);
        v14 = abpk::SkeletonJointFilter<float>::filter(&buf, *v10, (v10[1] - *v10) >> 2, humansCopy);
        v15 = *v10;
        v16 = v10[1];
        v17 = v16 - *v10;
        if (v16 == *v10)
        {
          humans = 0.0;
        }

        else
        {
          v18 = 0;
          v19 = v17 >> 2;
          begin = v14->__begin_;
          humans = 0.0;
          do
          {
            v21 = vcvt_f32_f64(vmulq_f64(v38, vcvtq_f64_f32(*v15)));
            if (v21.f32[0] >= 0.0 && v21.f32[1] >= 0.0)
            {
              v22 = vcvt_f32_f64(vmulq_f64(v38, vcvtq_f64_f32(*begin)));
              v23 = vcltz_f32(v22);
              if (((v23.i32[0] | v23.i32[1]) & 1) == 0)
              {
                v24 = vsub_f32(v21, v22);
                *&humans = *&humans + sqrtf(vaddv_f32(vmul_f32(v24, v24)));
              }
            }

            v18 += 2;
            ++v15;
            ++begin;
          }

          while (v18 < v19);
        }

        if (*&humans <= v12)
        {
          v9 = v10;
          v12 = *&humans;
        }

        if (__p)
        {
          v44 = __p;
          operator delete(__p);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (buf.__begin_)
        {
          buf.__end_ = buf.__begin_;
          operator delete(buf.__begin_);
        }

        v10 += 15;
      }

      while (v10 != a2[1]);
      v10 = *a2;
    }

    *&humans = (4 * (((v10[1] - *v10) >> 1) + ((v10[1] - *v10) >> 3)));
    if (v12 > *&humans)
    {
      *(self + 16) = *(self + 8);
      *(self + 144) = *(self + 136);
    }
  }

  v28 = v9[13];
  v30 = abpk::Human::area(v9, *&humans);
  v31 = v30.f32[0] + v28;
  v32 = *a2;
  v33 = -2147500000.0;
  if (*a2 != a2[1])
  {
    v34 = *a2;
    do
    {
      if (v34 != v9)
      {
        v35 = v34[13];
        v30 = abpk::Human::area(v34, v30);
        v30.f32[0] = v30.f32[0] + v35;
        if (v30.f32[0] > v33)
        {
          v32 = v34;
          v33 = v30.f32[0];
        }
      }

      v34 += 15;
    }

    while (v34 != a2[1]);
  }

  if (v33 > v31)
  {
    v36 = __ABPKLogSharedInstance(*&v29);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__begin_) = 0;
      _os_log_impl(&dword_23EDDC000, v36, OS_LOG_TYPE_DEBUG, " Resetting tracking as new human found ", &buf, 2u);
    }

    *(self + 16) = *(self + 8);
    *(self + 144) = *(self + 136);
    v9 = v32;
  }

  *(self + 648) = v9;
  return abpk::Human::Human(a3, v9);
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 5) = xmmword_23EE289D0;
  *(self + 6) = xmmword_23EE289E0;
  *(self + 14) = 0x40D5555542C80000;
  *(self + 30) = 1045220557;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 25) = 0;
  *(self + 13) = xmmword_23EE289D0;
  *(self + 14) = xmmword_23EE289E0;
  *(self + 30) = 0x40D5555542C80000;
  *(self + 62) = 1045220557;
  *(self + 352) = 0;
  *(self + 368) = 0;
  *(self + 372) = 0;
  *(self + 313) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 472) = 0;
  *(self + 488) = 0;
  *(self + 492) = 0;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 433) = 0u;
  *(self + 624) = 0;
  *(self + 640) = 0;
  *(self + 644) = 0;
  *(self + 81) = 0;
  *(self + 504) = 0u;
  *(self + 520) = 0u;
  *(self + 536) = 0u;
  *(self + 552) = 0u;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 600) = 0;
  return self;
}

@end