void sub_270F38BA4(_Unwind_Exception *a1)
{
  __57__VGFaceFittingFrameSelector_getFaceKitTrackedLandmarks___block_invoke(v6);

  _Unwind_Resume(a1);
}

id VGLogVGFaceFittingFrameSelector(uint64_t a1)
{
  if (VGLogVGFaceFittingFrameSelector(void)::onceToken != -1)
  {
    VGLogVGFaceFittingFrameSelector();
  }

  v2 = VGLogVGFaceFittingFrameSelector(void)::handle;

  return v2;
}

void sub_270F39010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = a14;
  if (a14)
  {
    operator delete(a14);
  }

  __69__VGFaceFittingFrameSelector_checkMotionBlurFilter_frameTimestampMS___block_invoke(v17);

  _Unwind_Resume(a1);
}

void sub_270F39200(_Unwind_Exception *a1)
{
  __54__VGFaceFittingFrameSelector_getValidDataFrameBounds___block_invoke(a1);

  _Unwind_Resume(a1);
}

void sub_270F3ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, void *a27, void *a28)
{
  __91__VGFaceFittingFrameSelector_addPoseWithCaptureData_tracking_externalTracking_metricsData___block_invoke(v33);

  _Unwind_Resume(a1);
}

void sub_270F3B160(_Unwind_Exception *a1)
{
  vg::frame_selection::FrameRejectionState::~FrameRejectionState(v2);

  _Unwind_Resume(a1);
}

void ___ZL31VGLogVGFaceFittingFrameSelectorv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGFaceFittingFrameSelector");
  v1 = VGLogVGFaceFittingFrameSelector(void)::handle;
  VGLogVGFaceFittingFrameSelector(void)::handle = v0;
}

vg::frame_selection::VGBlurDetector *std::unique_ptr<vg::frame_selection::VGBlurDetector>::reset[abi:ne200100](vg::frame_selection::VGBlurDetector **a1, vg::frame_selection::VGBlurDetector *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::frame_selection::VGBlurDetector::~VGBlurDetector(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

id vg::frame_selection::detail::capturedStatesFromCapturedPoses(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = MEMORY[0x277CCABB0];
        v9 = [v3 objectForKey:{v7, v13}];
        v10 = [v8 numberWithBool:{objc_msgSend(v9, "valid")}];
        [v2 setObject:v10 forKeyedSubscript:v7];
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v11 = [v2 copy];

  return v11;
}

void vg::frame_selection::VGEarFrameSelectorImpl::init(vg::frame_selection::VGEarFrameSelectorImpl *this, const vg::frame_selection::VGEarCaptureOptions *a2)
{
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    __p = *(a2 + 88);
  }

  vg::ear_detection::EarPoseDetector::create();
}

void sub_270F3C4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id vg::frame_selection::VGEarFrameSelectorImpl::enrolledPoses(vg::frame_selection::VGEarFrameSelectorImpl *this)
{
  v1 = vg::frame_selection::VGEarFrameSelectorImpl::allPoseSelectors(this);
  v2 = vg::frame_selection::VGEarFrameSelectorImpl::posesFromSelectors(v1, v1);

  return v2;
}

id vg::frame_selection::VGEarFrameSelectorImpl::posesFromSelectors(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) yawResults];
        v9 = [v8 allValues];
        [v3 addObjectsFromArray:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];

  return v10;
}

id vg::frame_selection::VGEarFrameSelectorImpl::allPoseSelectors(vg::frame_selection::VGEarFrameSelectorImpl *this)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

id vg::frame_selection::VGEarFrameSelectorImpl::leftEarEnrolledPoses(vg::frame_selection::VGEarFrameSelectorImpl *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *(this + 1);
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = vg::frame_selection::VGEarFrameSelectorImpl::posesFromSelectors(v1, v1);

  return v2;
}

id vg::frame_selection::VGEarFrameSelectorImpl::rightEarEnrolledPoses(vg::frame_selection::VGEarFrameSelectorImpl *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *(this + 2);
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = vg::frame_selection::VGEarFrameSelectorImpl::posesFromSelectors(v1, v1);

  return v2;
}

void vg::frame_selection::VGEarFrameSelectorImpl::currentState(id *this@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = vg::frame_selection::VGEarFrameSelectorImpl::allPoseSelectors(this);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v7 += [v10 remainingPosesCount];
        v6 += [v10 requiredPosesCount];
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 108) = 0;
  *(a2 + 112) = 0;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 1) = v6 == 0;
  if (v6)
  {
    *a2 = v7 == 0;
    *(a2 + 4) = (v6 - v7) / v6;
    *(a2 + 200) = [this[1] results];
    v11 = [this[2] results];
    *(a2 + 208) = v11;
  }

  v12 = __VGLogSharedInstance(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v18 = v7;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " %u/%u ", buf, 0xEu);
  }
}

void vg::frame_selection::VGEarFrameSelectorImpl::addPoseWithCaptureData(vg::frame_selection::VGEarFrameSelectorImpl *this@<X0>, VGCaptureData *a2@<X1>, uint64_t a3@<X8>)
{
  v149 = *MEMORY[0x277D85DE8];
  v5 = a2;
  vg::frame_selection::VGEarFrameSelectorImpl::currentState(this, v134);
  v147 = 1;
  if (BYTE1(v134[0]) == 1)
  {
    v6 = 0;
    v7 = v144;
    *a3 = v134[0];
    v8 = v140;
    *(a3 + 80) = v139;
    *(a3 + 96) = v8;
    v9 = v142;
    *(a3 + 112) = v141;
    *(a3 + 128) = v9;
    v10 = v136;
    *(a3 + 16) = v135;
    *(a3 + 32) = v10;
    v11 = v138;
    *(a3 + 48) = v137;
    *(a3 + 64) = v11;
    *(a3 + 144) = __src;
    *(a3 + 160) = v7;
    __src = 0uLL;
    *(a3 + 168) = v145;
    *(a3 + 184) = v146;
    v144 = 0;
    v145 = 0uLL;
    v146 = 0;
    *(a3 + 192) = 1;
    v12 = v148;
    v148 = 0uLL;
    *(a3 + 200) = v12;
    goto LABEL_78;
  }

  if (v5)
  {
    objc_msgSend_timestamp(v5);
  }

  else
  {
    memset(time, 0, 24);
  }

  Seconds = CMTimeGetSeconds(time);
  v14 = CVPixelBufferGetIOSurface([(VGCaptureData *)v5 yuvRectified]);
  if (!v14)
  {
    v19 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *time = 0;
      _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " color image must be IOSurface backend. ", time, 2u);
    }

    v20 = v144;
    *a3 = v134[0];
    v21 = v140;
    *(a3 + 80) = v139;
    *(a3 + 96) = v21;
    v22 = v142;
    *(a3 + 112) = v141;
    *(a3 + 128) = v22;
    v23 = v136;
    *(a3 + 16) = v135;
    *(a3 + 32) = v23;
    v24 = v138;
    *(a3 + 48) = v137;
    *(a3 + 64) = v24;
    *(a3 + 144) = __src;
    *(a3 + 160) = v20;
    __src = 0uLL;
    *(a3 + 168) = v145;
    *(a3 + 184) = v146;
    v144 = 0;
    v145 = 0uLL;
    v146 = 0;
    *(a3 + 192) = v147;
    v25 = v148;
    v148 = 0uLL;
    *(a3 + 200) = v25;
    goto LABEL_77;
  }

  v15 = CVPixelBufferGetIOSurface([(VGCaptureData *)v5 depth]);
  if (!v15)
  {
    v26 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *time = 0;
      _os_log_impl(&dword_270F06000, v26, OS_LOG_TYPE_ERROR, " depth image must be IOSurface backend. ", time, 2u);
    }

    v27 = v144;
    *a3 = v134[0];
    v28 = v140;
    *(a3 + 80) = v139;
    *(a3 + 96) = v28;
    v29 = v142;
    *(a3 + 112) = v141;
    *(a3 + 128) = v29;
    v30 = v136;
    *(a3 + 16) = v135;
    *(a3 + 32) = v30;
    v31 = v138;
    *(a3 + 48) = v137;
    *(a3 + 64) = v31;
    *(a3 + 144) = __src;
    *(a3 + 160) = v27;
    __src = 0uLL;
    *(a3 + 168) = v145;
    *(a3 + 184) = v146;
    v144 = 0;
    v145 = 0uLL;
    v146 = 0;
    *(a3 + 192) = v147;
    v32 = v148;
    v148 = 0uLL;
    *(a3 + 200) = v32;
    goto LABEL_76;
  }

  v16 = *this;
  v99 = v15;
  [(VGCaptureData *)v5 depthIntrinsics];
  vg::ear_detection::EarPoseDetector::detectPose(v16, v14, v15, v150, time);
  v147 = v133;
  if (v132 != 1 || v133)
  {
    v33 = *(this + 25);
    if (v33)
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(v33);
    }

    v34 = __VGLogSharedInstance(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = (Seconds * 1000.0);
      _os_log_impl(&dword_270F06000, v34, OS_LOG_TYPE_DEBUG, " Frame#%zu rejected because No Ear detected ", buf, 0xCu);
    }

    v35 = v144;
    *a3 = v134[0];
    v36 = v140;
    *(a3 + 80) = v139;
    *(a3 + 96) = v36;
    v37 = v142;
    *(a3 + 112) = v141;
    *(a3 + 128) = v37;
    v38 = v136;
    *(a3 + 16) = v135;
    *(a3 + 32) = v38;
    v39 = v138;
    *(a3 + 48) = v137;
    *(a3 + 64) = v39;
    *(a3 + 144) = __src;
    *(a3 + 160) = v35;
    __src = 0uLL;
    *(a3 + 168) = v145;
    *(a3 + 184) = v146;
    v144 = 0;
    v145 = 0uLL;
    v146 = 0;
    *(a3 + 192) = v147;
    v40 = v148;
    v148 = 0uLL;
    *(a3 + 200) = v40;
    goto LABEL_71;
  }

  v112 = v125;
  v113 = v126;
  v114 = v127;
  *buf = *time;
  v108 = *&time[16];
  v109 = v122;
  v110 = v123;
  v111 = v124;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v115, v128, v129, (v129 - v128) >> 2);
  v118 = 0;
  v119 = 0;
  v120 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v118, v130, v131, (v131 - v130) >> 2);
  v139 = v111;
  v140 = v112;
  v141 = v113;
  v142 = v114;
  v135 = *buf;
  v136 = v108;
  v137 = v109;
  v138 = v110;
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&__src, v115, v116, (v116 - v115) >> 2);
  std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v145, v118, v119, (v119 - v118) >> 2);
  if (*(this + 25))
  {
    v97 = (Seconds * 1000.0);
    v98 = v14;
    v17 = (v116 - v115) >> 2;
    __p = 0;
    v101 = 0;
    v102 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, v17 >> 1);
    if (v17 > 1)
    {
      v41 = 0;
      v18 = v101;
      do
      {
        v42 = *(v115 + v41);
        if (v18 >= v102)
        {
          v43 = (v18 - __p) >> 3;
          if ((v43 + 1) >> 61)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v44 = (v102 - __p) >> 2;
          if (v44 <= v43 + 1)
          {
            v44 = v43 + 1;
          }

          if (v102 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v44;
          }

          if (v45)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v45);
          }

          v46 = (8 * v43);
          *v46 = v42;
          v18 = (8 * v43 + 8);
          v47 = v46 - (v101 - __p);
          memcpy(v47, __p, v101 - __p);
          v48 = __p;
          __p = v47;
          v101 = v18;
          v102 = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v18 = v42;
          v18 += 8;
        }

        v101 = v18;
        ++v41;
      }

      while (v17 >> 1 != v41);
    }

    else
    {
      v18 = v101;
    }

    v14 = v98;
    *v103 = v97;
    memset(&v103[8], 0, 24);
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v103[8], __p, v18, (v18 - __p) >> 3);
    v49 = vg::frame_selection::VGBlurDetector::detectMotionBlur(*(this + 25), v103);
    if (v50 & 1) == 0 || (v49)
    {
      v51 = __VGLogSharedInstance(v49);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *v105 = 134217984;
        v106 = v97;
        _os_log_impl(&dword_270F06000, v51, OS_LOG_TYPE_DEBUG, " Frame#%zu rejected because of motion blur ", v105, 0xCu);
      }

      v52 = v144;
      *a3 = v134[0];
      v147 = 5;
      v53 = v140;
      *(a3 + 80) = v139;
      *(a3 + 96) = v53;
      v54 = v142;
      *(a3 + 112) = v141;
      *(a3 + 128) = v54;
      v55 = v136;
      *(a3 + 16) = v135;
      *(a3 + 32) = v55;
      v56 = v138;
      *(a3 + 48) = v137;
      *(a3 + 64) = v56;
      *(a3 + 144) = __src;
      *(a3 + 160) = v52;
      __src = 0uLL;
      *(a3 + 168) = v145;
      *(a3 + 184) = v146;
      v144 = 0;
      v145 = 0uLL;
      v146 = 0;
      *(a3 + 192) = 5;
      v57 = v148;
      v148 = 0uLL;
      *(a3 + 200) = v57;
      if (*&v103[8])
      {
        *&v103[16] = *&v103[8];
        operator delete(*&v103[8]);
      }

      if (__p)
      {
        v101 = __p;
        operator delete(__p);
      }

      goto LABEL_67;
    }

    if (*&v103[8])
    {
      *&v103[16] = *&v103[8];
      operator delete(*&v103[8]);
    }

    if (__p)
    {
      v101 = __p;
      operator delete(__p);
    }
  }

  v58 = *(this + 4) + 1;
  *(this + 4) = v58;
  if (v58 > 1)
  {
    v65 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    if (*buf == 1)
    {
      v74 = *(this + 5) + 1;
      *(this + 5) = v74;
      if (v74 >= 2)
      {
        if (([*(this + 2) completed] & 1) == 0)
        {
          v86 = *(this + 2);
          *v103 = 0;
          *&v103[8] = 0;
          __asm { FMOV            V4.2D, #1.0 }

          *&v103[16] = _Q4;
          v104 = 1;
          v73 = [v86 processCaptureData:v5 trackingData:v65 framePose:v103 validDataFrameBounds:{*&v108, *&v109, *&v110, *&v111}];
          goto LABEL_84;
        }

LABEL_60:
        v75 = 0;
LABEL_61:
        vg::frame_selection::VGEarFrameSelectorImpl::currentState(this, a3);
        *(a3 + 192) = v147;
        v82 = v140;
        *(a3 + 80) = v139;
        *(a3 + 96) = v82;
        v83 = v142;
        *(a3 + 112) = v141;
        *(a3 + 128) = v83;
        v84 = v136;
        *(a3 + 16) = v135;
        *(a3 + 32) = v84;
        v85 = v138;
        *(a3 + 48) = v137;
        *(a3 + 64) = v85;
        if (v134 != a3)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 144), __src, *(&__src + 1), (*(&__src + 1) - __src) >> 2);
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a3 + 168), v145, *(&v145 + 1), (*(&v145 + 1) - v145) >> 2);
        }

        if (*a3 == 1)
        {
          *(this + 24) = 1;
          if (*(this + 112) == 1)
          {
            vg::frame_selection::VGEarFrameSelectorImpl::writeToPath(this, this + 15);
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (*buf)
      {
        goto LABEL_60;
      }

      v66 = *(this + 6) + 1;
      *(this + 6) = v66;
      if (v66 >= 2)
      {
        if (([*(this + 1) completed] & 1) == 0)
        {
          v67 = *(this + 1);
          *v103 = 0;
          *&v103[8] = 0;
          __asm { FMOV            V4.2D, #1.0 }

          *&v103[16] = _Q4;
          v104 = 1;
          v73 = [v67 processCaptureData:v5 trackingData:v65 framePose:v103 validDataFrameBounds:{*&v108, *&v109, *&v110, *&v111}];
LABEL_84:
          v75 = v73;
          if (v73)
          {
            objc_msgSend_rejectionState(v73);
            v88 = *v103 == 0;

            if (v88)
            {
              v90 = __VGLogSharedInstance(v89);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
              {
                v91 = @"RIGHT";
                if (!*buf)
                {
                  v91 = @"LEFT";
                }

                *v103 = 138412802;
                *&v103[4] = v91;
                *&v103[12] = 2048;
                *&v103[14] = *(&v113 + 1);
                *&v103[22] = 2048;
                *&v103[24] = *(&v113 + 2);
                _os_log_impl(&dword_270F06000, v90, OS_LOG_TYPE_DEBUG, " Captured Ear side %@, yaw %f , pitch %f ", v103, 0x20u);
              }

              v151.origin.x = *&v114;
              v151.origin.y = *(&v114 + 1);
              v151.size.width = (*(&v114 + 2) - *&v114);
              v151.size.height = (*(&v114 + 3) - *(&v114 + 1));
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v151);
              v93 = MEMORY[0x277CCABB0];
              if (*buf)
              {
                v94 = *(this + 24);
                [v75 angleInDegrees];
                v95 = [v93 numberWithFloat:?];
                [v94 setObject:DictionaryRepresentation forKeyedSubscript:v95];
              }

              else
              {
                v96 = *(this + 23);
                [v75 angleInDegrees];
                v95 = [v93 numberWithFloat:?];
                [v96 setObject:DictionaryRepresentation forKeyedSubscript:v95];
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    v75 = 0;
    v76 = v144;
    *a3 = v134[0];
    *(a3 + 160) = v76;
    *(a3 + 184) = v146;
    v77 = v140;
    *(a3 + 80) = v139;
    *(a3 + 96) = v77;
    v78 = v142;
    *(a3 + 112) = v141;
    *(a3 + 128) = v78;
    v79 = v136;
    *(a3 + 16) = v135;
    *(a3 + 32) = v79;
    v80 = v138;
    *(a3 + 48) = v137;
    *(a3 + 64) = v80;
    *(a3 + 144) = __src;
    __src = 0uLL;
    *(a3 + 168) = v145;
    v144 = 0;
    v145 = 0uLL;
    v146 = 0;
    *(a3 + 192) = v147;
    v81 = v148;
    v148 = 0uLL;
    *(a3 + 200) = v81;
LABEL_66:

    goto LABEL_67;
  }

  v59 = v144;
  *a3 = v134[0];
  v60 = v140;
  *(a3 + 80) = v139;
  *(a3 + 96) = v60;
  v61 = v142;
  *(a3 + 112) = v141;
  *(a3 + 128) = v61;
  v62 = v136;
  *(a3 + 16) = v135;
  *(a3 + 32) = v62;
  v63 = v138;
  *(a3 + 48) = v137;
  *(a3 + 64) = v63;
  *(a3 + 144) = __src;
  *(a3 + 160) = v59;
  __src = 0uLL;
  *(a3 + 168) = v145;
  *(a3 + 184) = v146;
  v144 = 0;
  v145 = 0uLL;
  v146 = 0;
  *(a3 + 192) = v147;
  v64 = v148;
  v148 = 0uLL;
  *(a3 + 200) = v64;
LABEL_67:
  if (v118)
  {
    v119 = v118;
    operator delete(v118);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

LABEL_71:
  v15 = v99;
  if (v132 == 1)
  {
    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }

    if (v128)
    {
      v129 = v128;
      operator delete(v128);
    }
  }

LABEL_76:

LABEL_77:
  v6 = *(&v148 + 1);
LABEL_78:

  if (v145)
  {
    *(&v145 + 1) = v145;
    operator delete(v145);
  }

  if (__src)
  {
    *(&__src + 1) = __src;
    operator delete(__src);
  }
}

void sub_270F3D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  vg::ear_detection::EarPose::~EarPose(&a25);
  vg::ear_detection::EarPCADetector::EarDetectionOutput::~EarDetectionOutput(&a47);

  vg::frame_selection::VGEarSelectionState::~VGEarSelectionState(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void vg::frame_selection::VGEarFrameSelectorImpl::writeToPath(vg::frame_selection::VGEarFrameSelectorImpl *a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [(objc_object *)v9 stringByAppendingPathComponent:@"capturedata"];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = objc_opt_new();
  v7 = vg::frame_selection::VGEarFrameSelectorImpl::leftEarEnrolledPoses(a1);
  [v6 setLeftEarEnrolledPoses:v7];

  v8 = vg::frame_selection::VGEarFrameSelectorImpl::rightEarEnrolledPoses(a1);
  [v6 setRightEarEnrolledPoses:v8];

  [v6 setLeftEarEnrolledYawToBoundingBox:*(a1 + 23)];
  [v6 setRightEarEnrolledYawToBoundingBox:*(a1 + 24)];
  vg::common::dumpDebugObject(v6, v9, 1);
}

void vg::frame_selection::VGEarFrameSelector::create()
{
  std::string::basic_string[abi:ne200100]<0>(&v1, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  v3 = 1;
  v4 = 1083808154;
  v5 = &unk_2880F5D70;
  vg::frame_selection::VGEarFrameSelector::create();
}

{
  operator new();
}

void sub_270F3DB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::frame_selection::VGEarFrameSelector>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

vg::frame_selection::VGEarFrameSelectorImpl ***std::unique_ptr<vg::frame_selection::VGEarFrameSelector>::~unique_ptr[abi:ne200100](vg::frame_selection::VGEarFrameSelectorImpl ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::frame_selection::VGEarFrameSelector::~VGEarFrameSelector(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::frame_selection::VGEarFrameSelector::~VGEarFrameSelector(vg::frame_selection::VGEarFrameSelectorImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    vg::frame_selection::VGEarFrameSelectorImpl::~VGEarFrameSelectorImpl(v2);
    MEMORY[0x2743B9370]();
  }
}

vg::frame_selection::VGEarFrameSelectorImpl *vg::frame_selection::VGEarFrameSelectorImpl::VGEarFrameSelectorImpl(vg::frame_selection::VGEarFrameSelectorImpl *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 56) = xmmword_270FA6670;
  *(this + 18) = 1061997773;
  *(this + 5) = xmmword_270FA6680;
  *(this + 6) = xmmword_270FA6690;
  *(this + 112) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 15, "");
  std::string::basic_string[abi:ne200100]<0>(this + 18, "");
  *(this + 168) = 1;
  *(this + 43) = 1083808154;
  *(this + 22) = &unk_2880F5D70;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  return this;
}

void sub_270F3DD6C(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  std::unique_ptr<vg::ear_detection::EarPoseDetector>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

vg::ear_detection::EarPoseDetector *std::unique_ptr<vg::ear_detection::EarPoseDetector>::reset[abi:ne200100](vg::ear_detection::EarPoseDetector **a1, vg::ear_detection::EarPoseDetector *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::ear_detection::EarPoseDetector::~EarPoseDetector(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

void vg::frame_selection::VGEarFrameSelectorImpl::~VGEarFrameSelectorImpl(vg::frame_selection::VGEarFrameSelectorImpl *this)
{
  std::unique_ptr<vg::frame_selection::VGBlurDetector>::reset[abi:ne200100](this + 25, 0);

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  std::unique_ptr<vg::ear_detection::EarPoseDetector>::reset[abi:ne200100](this, 0);
}

void vg::hrtf::unwrapPhaseAngles(float **a1@<X0>, const void **a2@<X8>)
{
  v3 = a1[1] - *a1;
  if (!v3)
  {
    vg::hrtf::unwrapPhaseAngles();
  }

  v5 = v3 >> 2;
  v43 = 0;
  std::vector<float>::vector[abi:ne200100](__p, v3 >> 2, &v43);
  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v8 = __p[0];
    v10 = *v6;
    v9 = (v6 + 4);
    v11 = v10;
    *__p[0] = v10;
    if (v9 != v7)
    {
      v12 = (v8 + 4);
      do
      {
        v13 = *v9++;
        *v12++ = v13 - v11;
        v11 = v13;
      }

      while (v9 != v7);
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::reserve(a2, v5);
  v14 = *a1;
  v16 = a2[1];
  v15 = a2[2];
  if (v16 >= v15)
  {
    v18 = *a2;
    v19 = v16 - *a2;
    v20 = v19 >> 2;
    v21 = (v19 >> 2) + 1;
    if (v21 >> 62)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v22 = v15 - v18;
    if (v22 >> 1 > v21)
    {
      v21 = v22 >> 1;
    }

    v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
    v24 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v23)
    {
      v24 = v21;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v24);
    }

    *(4 * v20) = *v14;
    v17 = (4 * v20 + 4);
    memcpy(0, v18, v19);
    v25 = *a2;
    *a2 = 0;
    a2[1] = v17;
    a2[2] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v16 = *v14;
    v17 = (v16 + 1);
  }

  a2[1] = v17;
  if (v5 >= 2)
  {
    v26 = 1;
    v27 = 0.0;
    do
    {
      v28 = *(__p[0] + v26);
      v29 = (v28 + 3.1416) - (floorf((v28 + 3.1416) / 6.2832) * 6.2832);
      v30 = v28 > 0.0 && v29 == 0.0;
      v31 = v29 + -3.1416;
      if (v30)
      {
        v31 = 3.1416;
      }

      v32 = fabsf(v28);
      v33 = v31 - v28;
      if (v32 < 3.1416)
      {
        v33 = 0.0;
      }

      v27 = v27 + v33;
      v34 = (*a1)[v26] + v27;
      v35 = a2[2];
      if (v17 >= v35)
      {
        v36 = *a2;
        v37 = v17 - *a2;
        v38 = v37 >> 2;
        v39 = (v37 >> 2) + 1;
        if (v39 >> 62)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v40 = v35 - v36;
        if (v40 >> 1 > v39)
        {
          v39 = v40 >> 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v41 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a2, v41);
        }

        *(4 * v38) = v34;
        v17 = (4 * v38 + 4);
        memcpy(0, v36, v37);
        v42 = *a2;
        *a2 = 0;
        a2[1] = v17;
        a2[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v17++ = v34;
      }

      a2[1] = v17;
      ++v26;
    }

    while (v5 != v26);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_270F40920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::hrtf::tukeyWindow(unint64_t this@<X0>, int32x2_t a2@<D0>, uint64_t *a3@<X8>)
{
  if (this <= 1)
  {
    vg::hrtf::tukeyWindow();
  }

  v4 = *a2.i32;
  if (*a2.i32 <= 0.0)
  {
    vg::hrtf::tukeyWindow();
  }

  if (*a2.i32 >= 1.0)
  {
    vg::hrtf::tukeyWindow();
  }

  *a2.i32 = (this - 1) * *a2.i32;
  v5 = vcvtms_u32_f32(*a2.i32 * 0.5);
  v6 = this - v5;
  if (this <= v5)
  {
    vg::hrtf::tukeyWindow();
  }

  v64 = 1065353216;
  *a2.i32 = 2.0 / *a2.i32;
  v40 = a2;
  v7 = 0;
  v8 = *std::vector<float>::vector[abi:ne200100](a3, this, &v64);
  v9 = vdupq_n_s64(v5);
  v44 = vdupq_n_s32(0x40490FDBu);
  v45 = vdupq_lane_s32(v40, 0);
  v43 = vdupq_n_s64(4uLL);
  v10 = xmmword_270FA6720;
  __asm { FMOV            V1.4S, #-1.0 }

  v41 = _Q1;
  v16 = xmmword_270FA6710;
  v47 = v9;
  do
  {
    v52 = v16;
    v54 = v10;
    v17 = vcgeq_u64(v9, v10);
    v18 = vmovn_s64(v17);
    *v17.i32 = v7;
    v48 = vuzp1_s16(v18, *v17.i8);
    v50 = vorrq_s8(vdupq_n_s64(v7), xmmword_270FA6710);
    v19 = v7 + 1;
    *&v17.i32[1] = (v7 + 1);
    v62 = vmulq_f32(vmlaq_f32(v41, v45, vcvt_hight_f32_f64(*v17.i8, vcvtq_f64_u64(v50))), v44);
    v56 = cosf(v62.f32[1]);
    *&v20 = cosf(v62.f32[0]);
    *(&v20 + 1) = v56;
    v57 = v20;
    v21 = cosf(v62.f32[2]);
    v22 = v57;
    *(&v22 + 2) = v21;
    v58 = v22;
    v23 = cosf(v62.f32[3]);
    v24 = v48;
    if (v48.i8[0])
    {
      *v24.i32 = (*&v58 + 1.0) * 0.5;
      *(v8 + 4 * v7) = v24.i32[0];
    }

    if (vuzp1_s16(v18, v24).i8[2])
    {
      *(v8 + 4 * v7 + 4) = (*(&v58 + 1) + 1.0) * 0.5;
    }

    v9 = v47;
    v25 = vmovn_s64(vcgeq_u64(v47, v52));
    if (vuzp1_s16(v25, v25).i32[1])
    {
      *(v8 + 4 * v50.i64[0]) = (*(&v58 + 2) + 1.0) * 0.5;
      *(v8 + 4 * v50.i64[1]) = (v23 + 1.0) * 0.5;
    }

    v26.i32[1] = v43.i32[1];
    v16 = vaddq_s64(v52, v43);
    v10 = vaddq_s64(v54, v43);
    v7 += 4;
  }

  while (v19 - 1 != (v5 & 0xFFFFFFFFFFFFFFFCLL));
  if (__CFADD__(~v5, this))
  {
    v27 = 0;
    v28 = (v8 - 4 * v5 + 4 * this);
    *v26.i32 = (-2.0 / v4) + 1.0;
    v49 = vdupq_lane_s32(v40, 0);
    v46 = vdupq_lane_s32(v26, 0);
    v29 = (v5 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v30 = xmmword_270FA6710;
    v42 = vdupq_n_s32(0x40490FDBu);
    do
    {
      v31 = v6 + v27 - 1;
      v53 = vdupq_n_s64(v27);
      v32 = vcgeq_u64(v9, vorrq_s8(v53, xmmword_270FA6720));
      v33 = vmovn_s64(v32);
      *v32.i32 = v31;
      v51 = vuzp1_s16(v33, *v32.i8);
      *&v32.i32[1] = (v6 + v27);
      v55 = vaddq_s64(vdupq_n_s64(v31), v30);
      v63 = vmulq_f32(vmlaq_f32(v46, v49, vcvt_hight_f32_f64(*v32.i8, vcvtq_f64_u64(v55))), v42);
      v59 = cosf(v63.f32[1]);
      *&v34 = cosf(v63.f32[0]);
      *(&v34 + 1) = v59;
      v60 = v34;
      v35 = cosf(v63.f32[2]);
      v36 = v60;
      *(&v36 + 2) = v35;
      v61 = v36;
      v37 = cosf(v63.f32[3]);
      v38 = v51;
      if (v51.i8[0])
      {
        *v38.i32 = (*&v61 + 1.0) * 0.5;
        *(v28 - 1) = *v38.i32;
      }

      if (vuzp1_s16(v33, v38).i8[2])
      {
        *v28 = (*(&v61 + 1) + 1.0) * 0.5;
      }

      v30 = xmmword_270FA6710;
      v9 = v47;
      v39 = vmovn_s64(vcgeq_u64(v47, vorrq_s8(v53, xmmword_270FA6710)));
      if (vuzp1_s16(v39, v39).i32[1])
      {
        *(v8 + 4 * v55.i64[0]) = (*(&v61 + 2) + 1.0) * 0.5;
        *(v8 + 4 * v55.i64[1]) = (v37 + 1.0) * 0.5;
      }

      v27 += 4;
      v28 += 4;
    }

    while (v29 != v27);
  }
}

void vg::hrtf::getPhaseShiftParameters(float **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v7 = __sincosf_stret(6283.2 / a4);
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<float>::reserve(&v106, a2);
  std::vector<float>::reserve(&v103, a2);
  if (a2)
  {
    v8 = 0;
    v9 = a4 / a2;
    v10 = 6.2832 / a4;
    do
    {
      v11 = v9 * v8;
      v12 = v107;
      if (v107 >= v108)
      {
        v14 = v106;
        v15 = v107 - v106;
        v16 = v107 - v106;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v18 = v108 - v106;
        if ((v108 - v106) >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v19 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v106, v19);
        }

        *(4 * v16) = v11;
        v13 = (4 * v16 + 4);
        memcpy(0, v14, v15);
        v20 = v106;
        v106 = 0;
        v107 = v13;
        v108 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v107 = v11;
        v13 = v12 + 1;
      }

      v107 = v13;
      v21 = v10 * v106[v8];
      v22 = v104;
      if (v104 >= v105)
      {
        v24 = v103;
        v25 = v104 - v103;
        v26 = v104 - v103;
        v27 = v26 + 1;
        if ((v26 + 1) >> 62)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v28 = v105 - v103;
        if ((v105 - v103) >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v29 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v103, v29);
        }

        *(4 * v26) = v21;
        v23 = (4 * v26 + 4);
        memcpy(0, v24, v25);
        v30 = v103;
        v103 = 0;
        v104 = v23;
        v105 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v104 = v21;
        v23 = v22 + 1;
      }

      v104 = v23;
      ++v8;
    }

    while (a2 != v8);
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  __p = 0;
  v95 = 0;
  v96 = 0;
  v31 = (a1[1] - *a1) >> 3;
  std::vector<float>::reserve(&v100, v31);
  std::vector<std::array<float,3ul>>::reserve(&v97, v31);
  std::vector<std::array<float,3ul>>::reserve(&__p, v31);
  v32 = *a1;
  v33 = a1[1];
  if (*a1 != v33)
  {
    v34 = v7.__cosval * -2.0;
    v35 = v7.__sinval * 0.5;
    do
    {
      v36 = 90.0 - fabsf(fmodf(v32[1], 180.0) + -90.0);
      v37 = *v32 * 3.14159265 / 180.0;
      v38 = cosf(v37);
      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v39 = v36 + -36.0;
      v40 = sqrtf(v38);
      if ((v36 + -36.0) <= 0.0)
      {
        v41 = v36 * 0.0;
        v42 = (v36 * 0.041667) * v40;
      }

      else
      {
        v41 = (v39 * 0.029089) + 0.0;
        v42 = ((v39 * -0.027778) * v40) + 1.5;
      }

      v43 = v40 * v41;
      v44 = v101;
      if (v101 >= v102)
      {
        v46 = v100;
        v47 = v101 - v100;
        v48 = v101 - v100;
        v49 = v48 + 1;
        if ((v48 + 1) >> 62)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v50 = v102 - v100;
        if ((v102 - v100) >> 1 > v49)
        {
          v49 = v50 >> 1;
        }

        v51 = v50 >= 0x7FFFFFFFFFFFFFFCLL;
        v52 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v51)
        {
          v52 = v49;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v100, v52);
        }

        *(4 * v48) = v43;
        v45 = (4 * v48 + 4);
        memcpy(0, v46, v47);
        v53 = v100;
        v100 = 0;
        v101 = v45;
        v102 = 0;
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *v101 = v43;
        v45 = v44 + 1;
      }

      v101 = v45;
      v54 = sqrtf(__exp10f(v42 / 20.0));
      v55 = (v35 * v54) + 1.0;
      v56 = (-(v7.__sinval * 0.5) * v54) + 1.0;
      v57 = v95;
      if (v95 >= v96)
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * ((v95 - __p) >> 2);
        v60 = v59 + 1;
        if (v59 + 1 > 0x1555555555555555)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v96 - __p) >> 2) > v60)
        {
          v60 = 0x5555555555555556 * ((v96 - __p) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v96 - __p) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v61 = 0x1555555555555555;
        }

        else
        {
          v61 = v60;
        }

        if (v61)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(&__p, v61);
        }

        v62 = (4 * ((v95 - __p) >> 2));
        *v62 = v55;
        v62[1] = v34;
        v62[2] = v56;
        v58 = (12 * v59 + 12);
        v63 = (12 * v59 - (v95 - __p));
        memcpy(v62 - (v95 - __p), __p, v95 - __p);
        v64 = __p;
        __p = v63;
        v95 = v58;
        v96 = 0;
        if (v64)
        {
          operator delete(v64);
        }
      }

      else
      {
        *v95 = v55;
        v57[1] = v34;
        v58 = v57 + 3;
        v57[2] = v56;
      }

      v95 = v58;
      v65 = v35 / v54;
      v66 = (v35 / v54) + 1.0;
      v67 = 1.0 - v65;
      v68 = v98;
      if (v98 >= v99)
      {
        v70 = 0xAAAAAAAAAAAAAAABLL * (v98 - v97);
        v71 = v70 + 1;
        if (v70 + 1 > 0x1555555555555555)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v99 - v97) >> 2) > v71)
        {
          v71 = 0x5555555555555556 * ((v99 - v97) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v99 - v97) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v72 = 0x1555555555555555;
        }

        else
        {
          v72 = v71;
        }

        if (v72)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(&v97, v72);
        }

        v73 = (4 * (v98 - v97));
        *v73 = v66;
        v73[1] = v34;
        v73[2] = v67;
        v69 = (12 * v70 + 12);
        v74 = (12 * v70 - (v98 - v97));
        memcpy(v73 - (v98 - v97), v97, v98 - v97);
        v75 = v97;
        v97 = v74;
        v98 = v69;
        v99 = 0;
        if (v75)
        {
          operator delete(v75);
        }
      }

      else
      {
        *v98 = v66;
        v68[1] = v34;
        v69 = v68 + 3;
        v68[2] = v67;
      }

      v98 = v69;
      v32 += 2;
    }

    while (v32 != v33);
  }

  v79 = 0uLL;
  v80 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v79, v100, v101, v101 - v100);
  v81 = 0uLL;
  v82 = 0;
  std::vector<std::array<float,3ul>>::__init_with_size[abi:ne200100]<std::array<float,3ul>*,std::array<float,3ul>*>(&v81, v97, v98, 0xAAAAAAAAAAAAAAABLL * (v98 - v97));
  v83 = 0uLL;
  v84 = 0;
  std::vector<std::array<float,3ul>>::__init_with_size[abi:ne200100]<std::array<float,3ul>*,std::array<float,3ul>*>(&v83, __p, v95, 0xAAAAAAAAAAAAAAABLL * ((v95 - __p) >> 2));
  v85 = 0uLL;
  v86 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v85, v106, v107, v107 - v106);
  v87 = 0uLL;
  v88 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v87, v103, v104, v104 - v103);
  v89 = xmmword_270FA6D88;
  v90 = xmmword_270FA6D70;
  v91 = 0x3F8000003FC00000;
  vg::hrtf::tukeyWindow(a2, 0x3F8000003DCCCCCDLL, &v92);
  *a3 = v79;
  *(a3 + 16) = v80;
  v80 = 0;
  v79 = 0uLL;
  *(a3 + 24) = v81;
  *(a3 + 40) = v82;
  v82 = 0;
  v81 = 0uLL;
  *(a3 + 48) = v83;
  *(a3 + 64) = v84;
  v83 = 0uLL;
  *(a3 + 72) = v85;
  *(a3 + 88) = v86;
  v84 = 0;
  v85 = 0uLL;
  v86 = 0;
  *(a3 + 96) = v87;
  *(a3 + 112) = v88;
  v87 = 0uLL;
  v88 = 0;
  v76 = v89;
  v77 = v90;
  *(a3 + 152) = v91;
  *(a3 + 136) = v77;
  *(a3 + 120) = v76;
  *(a3 + 160) = v92;
  *(a3 + 176) = v93;
  *(a3 + 184) = 1;
  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }
}

void sub_270F4154C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a39)
  {
    operator delete(a39);
  }

  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 224);
  if (v43)
  {
    *(v40 - 216) = v43;
    operator delete(v43);
  }

  v44 = *(v40 - 200);
  if (v44)
  {
    *(v40 - 192) = v44;
    operator delete(v44);
  }

  v45 = *(v40 - 176);
  if (v45)
  {
    *(v40 - 168) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::array<float,3ul>>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(a1, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }
}

void vg::hrtf::PhaseShiftParameters::~PhaseShiftParameters(vg::hrtf::PhaseShiftParameters *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void vg::hrtf::addDelayFractions(uint64_t a1, uint64_t a2, const vDSP_DFT_SetupStruct *a3, const DSPSplitComplex *a4, float a5)
{
  v5 = *(a1 + 8) - *a1;
  if (!v5)
  {
    vg::hrtf::addDelayFractions();
  }

  if ((v5 & 4) != 0)
  {
    vg::hrtf::addDelayFractions();
  }

  v11 = v5 >> 2;
  LODWORD(__Or[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v32, v5 >> 2, __Or);
  LODWORD(__Oi[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__Or, v11, __Oi);
  LODWORD(v29[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__Oi, v11, v29);
  vDSP_DFT_Execute(a3, *a1, v32[0], __Or[0], __Oi[0]);
  LODWORD(__p[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v29, v11, __p);
  LODWORD(__B.realp) = 0;
  std::vector<float>::vector[abi:ne200100](__p, v11, &__B);
  v12 = 0;
  v13 = v11 >> 1;
  if (v11 >> 1 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11 >> 1;
  }

  do
  {
    v15 = *(*(a2 + 96) + 4 * v12);
    *&__B.realp = (v15 * a5) * -0.0;
    *(&__B.realp + 1) = -(v15 * a5);
    std::exp[abi:ne200100]<float>(&__B);
    v16 = v29[0];
    *(v29[0] + v12) = v17;
    v18 = __p[0];
    *(__p[0] + v12++) = v19;
  }

  while (v14 != v12);
  v16[v13] = 0.0;
  v18[v13] = 0.0;
  if (v11 >= 3)
  {
    v20 = 2;
    if (v13 > 2)
    {
      v20 = v11 >> 1;
    }

    v21 = v20 - 1;
    v22 = v18 - 1;
    v23 = v16 - 1;
    v24 = v18 + 1;
    v25 = v16 + 1;
    do
    {
      v25[v13] = v23[v13];
      v24[v13] = -v22[v13];
      --v22;
      --v23;
      ++v24;
      ++v25;
      --v21;
    }

    while (v21);
  }

  __B.realp = v16;
  __B.imagp = v18;
  __A.realp = __Or[0];
  __A.imagp = __Oi[0];
  vDSP_zvmul(&__A, 1, &__B, 1, a4, 1, v11, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (__Oi[0])
  {
    __Oi[1] = __Oi[0];
    operator delete(__Oi[0]);
  }

  if (__Or[0])
  {
    __Or[1] = __Or[0];
    operator delete(__Or[0]);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }
}

void sub_270F419B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  v26 = *(v24 - 88);
  if (v26)
  {
    *(v24 - 80) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void std::exp[abi:ne200100]<float>(float *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 == 0.0)
  {
    expf(v1);
    return;
  }

  if (fabsf(v1) == INFINITY)
  {
    if (v1 >= 0.0)
    {
      if ((LODWORD(v2) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        return;
      }
    }

    else if ((LODWORD(v2) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v2 = 1.0;
    }
  }

  v3 = v2;
  expf(v1);
  __sincosf_stret(v3);
}

void vg::hrtf::phaseShift(uint64_t a1@<X0>, float *a2@<X1>, void *a3@<X2>, const vDSP_DFT_SetupStruct *a4@<X3>, uint64_t a5@<X4>, const vDSP_biquad_SetupStruct *a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v74[0] = a8;
  v9 = *(a1 + 8) - *a1;
  v10 = v9 >> 2;
  v72 = v9 >> 2;
  v73 = a5;
  if (!v9)
  {
    vg::hrtf::addDelayFractions();
  }

  v12 = a1 + 32;
  if (v9 != *(a1 + 40) - *(a1 + 32))
  {
    vg::hrtf::phaseShift();
  }

  if ((v9 & 4) != 0)
  {
    vg::hrtf::addDelayFractions();
  }

  LODWORD(v68.realp) = 0;
  std::vector<float>::vector[abi:ne200100](v70, v9 >> 2, &v68);
  LODWORD(__C.realp) = 0;
  std::vector<float>::vector[abi:ne200100](v71, v72, &__C);
  v68.realp = v70[0];
  v68.imagp = v71[0];
  vg::hrtf::addDelayFractions(a1, a2, a4, &v68, *(a1 + 24));
  LODWORD(__C.realp) = 0;
  std::vector<float>::vector[abi:ne200100](&v68, v72, &__C);
  LODWORD(v67[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v69, v72, v67);
  __C.realp = v68.realp;
  __C.imagp = v69[0];
  vg::hrtf::addDelayFractions(v12, a2, a4, &__C, *(a1 + 56));
  v17 = v10 >> 1;
  LODWORD(__A.realp) = 0;
  std::vector<float>::vector[abi:ne200100](&__C, v10 >> 1, &__A);
  __A.realp = v70[0];
  __A.imagp = v71[0];
  vDSP_zvphas(&__A, 1, __C.realp, 1, v10 >> 1);
  vg::hrtf::unwrapPhaseAngles(&__C.realp, v67);
  if (__C.realp)
  {
    __C.imagp = __C.realp;
    operator delete(__C.realp);
  }

  LODWORD(v65.realp) = 0;
  std::vector<float>::vector[abi:ne200100](&__C, v10 >> 1, &v65);
  v65.realp = v68.realp;
  v65.imagp = v69[0];
  vDSP_zvphas(&v65, 1, __C.realp, 1, v10 >> 1);
  vg::hrtf::unwrapPhaseAngles(&__C.realp, &__A.realp);
  if (__C.realp)
  {
    __C.imagp = __C.realp;
    operator delete(__C.realp);
  }

  LODWORD(__C.realp) = 0;
  std::vector<float>::vector[abi:ne200100](&v65, v10 >> 1, &__C);
  MEMORY[0x2743B9D80](v67[0], 1, __A.realp, 1, v65.realp, 1, v10 >> 1);
  LODWORD(__C.realp) = 0;
  std::vector<float>::vector[abi:ne200100](__p, v10 >> 1, &__C);
  if (*(a1 + 24) >= *(a1 + 56))
  {
    *v58 = -v74[0];
    MEMORY[0x2743B9D60](v65.realp, 1, v58, __p[0], 1, v10 >> 1);
    MEMORY[0x2743B9D50](__p[0], 1, *a3, 1, __p[0], 1, v10 >> 1);
    v33 = 0;
    v34 = v17 - 1;
    if (v17 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = v10 >> 1;
    }

    do
    {
      v36 = *(__p[0] + v33);
      *__X = v36 * 0.0;
      *(__X + 1) = v36;
      std::exp[abi:ne200100]<float>(__X);
      __C.realp = __PAIR64__(v38, v37);
      v39 = *(v71[0] + 4 * v33);
      LODWORD(__X[0]) = *(v70[0] + 4 * v33);
      HIDWORD(__X[0]) = v39;
      v40 = std::operator*[abi:ne200100]<float,0>(__X, &__C);
      v41 = v70[0];
      *(v70[0] + 4 * v33) = v40;
      v42 = v71[0];
      *(v71[0] + 4 * v33++) = v43;
    }

    while (v35 != v33);
    *(v41 + 4 * v17) = 0;
    *(v42 + 4 * v17) = 0;
    if (v10 >= 3)
    {
      v44 = v42 - 4;
      v45 = v41 - 4;
      v46 = v42 + 4;
      v47 = v41 + 4;
      do
      {
        *(v47 + 4 * v17) = *(v45 + 4 * v17);
        *(v46 + 4 * v17) = -*(v44 + 4 * v17);
        v44 -= 4;
        v45 -= 4;
        v46 += 4;
        v47 += 4;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    MEMORY[0x2743B9D60](v65.realp, 1, v74, __p[0], 1, v10 >> 1);
    MEMORY[0x2743B9D50](__p[0], 1, *a3, 1, __p[0], 1, v10 >> 1);
    v18 = 0;
    v19 = v17 - 1;
    if (v17 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v10 >> 1;
    }

    do
    {
      v21 = *(__p[0] + v18);
      *__X = v21 * -0.0;
      *(__X + 1) = -v21;
      std::exp[abi:ne200100]<float>(__X);
      __C.realp = __PAIR64__(v23, v22);
      v24 = *(v69[0] + 4 * v18);
      *__X = v68.realp[v18];
      HIDWORD(__X[0]) = v24;
      v25 = std::operator*[abi:ne200100]<float,0>(__X, &__C);
      realp = v68.realp;
      v68.realp[v18] = v25;
      v27 = v69[0];
      *(v69[0] + 4 * v18++) = v28;
    }

    while (v20 != v18);
    realp[v17] = 0.0;
    *(v27 + 4 * v17) = 0;
    if (v10 >= 3)
    {
      v29 = v27 - 4;
      v30 = realp - 1;
      v31 = v27 + 4;
      v32 = realp + 1;
      do
      {
        v32[v17] = v30[v17];
        *(v31 + 4 * v17) = -*(v29 + 4 * v17);
        v29 -= 4;
        --v30;
        v31 += 4;
        ++v32;
        --v19;
      }

      while (v19);
    }
  }

  v63 = 1.0 / v72;
  __C.realp = a2;
  __C.imagp = &v73;
  v61 = &v72;
  v62 = &v63;
  vg::hrtf::phaseShift(vg::hrtf::IRFilters const&,vg::hrtf::PhaseShiftParameters const&,float,std::vector<float> const&,vDSP_DFT_SetupStruct *,vDSP_DFT_SetupStruct *,vDSP_biquad_SetupStruct *)::$_3::operator()(&__C, v70, __X);
  vg::hrtf::phaseShift(vg::hrtf::IRFilters const&,vg::hrtf::PhaseShiftParameters const&,float,std::vector<float> const&,vDSP_DFT_SetupStruct *,vDSP_DFT_SetupStruct *,vDSP_biquad_SetupStruct *)::$_3::operator()(&__C, &v68.realp, v58);
  v57 = 0.0;
  v48 = __X;
  if (*(a1 + 24) >= *(a1 + 56))
  {
    v48 = v58;
  }

  vDSP_vfill(&v57, *v48, 1, a2[32]);
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  LODWORD(__Delay[0]) = 0;
  std::vector<float>::resize(a7, v72, __Delay, v49);
  *(a7 + 24) = 0;
  LODWORD(__Delay[0]) = 0;
  std::vector<float>::resize((a7 + 32), v72, __Delay, v50);
  *(a7 + 56) = 0;
  v55 = 0;
  std::vector<float>::vector[abi:ne200100](__Delay, 4uLL, &v55);
  vDSP_biquad(a6, __Delay[0], __X[0], 1, *a7, 1, v72);
  vDSP_biquad(a6, __Delay[0], v58[0], 1, *(a7 + 32), 1, v72);
  if (__Delay[0])
  {
    __Delay[1] = __Delay[0];
    operator delete(__Delay[0]);
  }

  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }

  if (__X[0])
  {
    __X[1] = __X[0];
    operator delete(__X[0]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v65.realp)
  {
    v65.imagp = v65.realp;
    operator delete(v65.realp);
  }

  if (__A.realp)
  {
    __A.imagp = __A.realp;
    operator delete(__A.realp);
  }

  if (v67[0])
  {
    v67[1] = v67[0];
    operator delete(v67[0]);
  }

  for (i = 0; i != -6; i -= 3)
  {
    v52 = v69[i];
    if (v52)
    {
      v69[i + 1] = v52;
      operator delete(v52);
    }
  }

  for (j = 0; j != -6; j -= 3)
  {
    v54 = v70[j + 3];
    if (v54)
    {
      v71[j + 1] = v54;
      operator delete(v54);
    }
  }
}

void vg::hrtf::phaseShift(vg::hrtf::IRFilters const&,vg::hrtf::PhaseShiftParameters const&,float,std::vector<float> const&,vDSP_DFT_SetupStruct *,vDSP_DFT_SetupStruct *,vDSP_biquad_SetupStruct *)::$_3::operator()(uint64_t a1@<X0>, const float **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = **(a1 + 16);
  LODWORD(v15[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&__Or, v6, v15);
  v7 = **(a1 + 16);
  v11 = 0;
  std::vector<float>::vector[abi:ne200100](__Oi, v7, &v11);
  vDSP_DFT_Execute(**(a1 + 8), *a2, a2[3], __Or, __Oi[0]);
  MEMORY[0x2743B9D70](__Or, 1, *(a1 + 24), __Or, 1, **(a1 + 16));
  v8 = &v13[-4 * *(*a1 + 128)];
  std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<float *>>,std::reverse_iterator<std::__wrap_iter<float *>>>(v13, v13, v8, __Or, __Or, v15, v8);
  MEMORY[0x2743B9D50](__Or, 1, *(*a1 + 160), 1, __Or, 1, **(a1 + 16));
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, __Or, v13, (v13 - __Or) >> 2);
  for (i = 0; i != -6; i -= 3)
  {
    v10 = __Oi[i];
    if (v10)
    {
      __Oi[i + 1] = v10;
      operator delete(v10);
    }
  }
}

void sub_270F4243C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = &a15;
  v17 = -48;
  while (1)
  {
    v18 = *(v16 - 1);
    if (v18)
    {
      *v16 = v18;
      operator delete(v18);
    }

    v16 -= 3;
    v17 += 24;
    if (!v17)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void std::vector<float>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (result[1] - *result) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(result, a2 - v4, a3, a4);
  }
}

void vg::hrtf::IRFilters::~IRFilters(vg::hrtf::IRFilters *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void vg::hrtf::ITDWindow(vg::hrtf *this@<X0>, float a2@<S0>, float a3@<S1>, uint64_t a4@<X1>, uint64_t *a5@<X8>)
{
  v9 = fmodf(a3, 180.0);
  v10 = a2 * 3.14159265 / 180.0;
  v11 = cosf(v10);
  v17 = 0;
  std::vector<float>::vector[abi:ne200100](a5, this, &v17);
  if (this)
  {
    v12 = 90.0 - fabsf(v9 + -90.0);
    v13 = (*(a4 + 132) - *(a4 + 120)) / (fabsf(*(a4 + 136) + -45.0) + 45.0);
    v14 = *(a4 + 72);
    v15 = *a5;
    do
    {
      v16 = *v14++;
      *v15++ = (1.0 - tanhf(((*(a4 + 120) + ((v13 * vabds_f32(v12, *(a4 + 136))) * v11)) - v16) / *(a4 + 124))) * 0.5;
      this = (this - 1);
    }

    while (this);
  }
}

float64_t vg::hrtf::biquadParameters@<D0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  if (*a1 <= 0.00000011921)
  {
    vg::hrtf::biquadParameters();
  }

  v3 = 1.0 / *a1;
  v4.i32[0] = a2[1].i32[0];
  v4.i32[1] = *(a1 + 4);
  *a3 = vcvtq_f64_f32(vmul_n_f32(*a2, v3));
  a3[1] = vcvtq_f64_f32(vmul_n_f32(v4, v3));
  result = (v3 * *(a1 + 8));
  a3[2].f64[0] = result;
  return result;
}

void vg::hrtf::modifyIRDataWithITD(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  v93 = *a1;
  v94 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  vg::hrtf::getIRValues(&v93, &v95);
  v5 = v94;
  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }

  if (v99)
  {
    memset(v92, 0, sizeof(v92));
    std::vector<vg::hrtf::IRFilters>::__init_with_size[abi:ne200100]<vg::hrtf::IRFilters*,vg::hrtf::IRFilters*>(v92, v97, v98, (v98 - v97) >> 6);
    if ((v99 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v89 = 0;
    v90 = 0;
    v91 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v89, v95, v96, (v96 - v95) >> 3);
    FilterLength = IR::IRData::getFilterLength(*a1);
    if (FilterLength)
    {
      v34 = __VGLogSharedInstance(FilterLength);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v74 = 0;
        v35 = " Number of IR taps must be multiple of 2. ";
LABEL_38:
        _os_log_impl(&dword_270F06000, v34, OS_LOG_TYPE_ERROR, v35, v74, 2u);
      }
    }

    else
    {
      v7 = FilterLength;
      Setup = vDSP_DFT_zop_CreateSetup(0, FilterLength, vDSP_DFT_FORWARD);
      v9 = Setup;
      if (Setup)
      {
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = ___ZN2vg4hrtf19modifyIRDataWithITDENSt3__110shared_ptrIN2IR6IRDataEEE_block_invoke;
        v88[3] = &__block_descriptor_40_e5_v8__0l;
        v88[4] = Setup;
        v10 = MEMORY[0x2743B9AA0](v88);
        v11 = vDSP_DFT_zop_CreateSetup(0, v7, vDSP_DFT_INVERSE);
        v12 = v11;
        if (v11)
        {
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = ___ZN2vg4hrtf19modifyIRDataWithITDENSt3__110shared_ptrIN2IR6IRDataEEE_block_invoke_10;
          v87[3] = &__block_descriptor_40_e5_v8__0l;
          v87[4] = v11;
          v13 = MEMORY[0x2743B9AA0](v87);
          IR::IRData::getSampleRate(*a1);
          vg::hrtf::getPhaseShiftParameters(&v89, v7, v74, v14);
          if (v86)
          {
            v41 = v10;
            v42 = v13;
            vg::hrtf::PhaseShiftParameters::PhaseShiftParameters(v62, v74);
            v59 = 0;
            v60 = 0;
            v61 = 0;
            std::vector<vg::hrtf::IRFilters>::reserve(&v59, (v90 - v89) >> 3);
            v16 = v89;
            v17 = v90;
            if (v90 == v89)
            {
              v32 = (v90 - v89) >> 3;
LABEL_47:
              *buf = 0;
              v47 = 0;
              v48 = 0;
              _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(buf, v16, v17, v32);
              v49 = 0;
              __p = 0;
              v51 = 0;
              std::vector<vg::hrtf::IRFilters>::__init_with_size[abi:ne200100]<vg::hrtf::IRFilters*,vg::hrtf::IRFilters*>(&v49, v59, v60, (v60 - v59) >> 6);
              PeriodForCyclicalDimensions = IR::IRData::getPeriodForCyclicalDimensions(*a1);
              __Coefficients = 0uLL;
              *&v54 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__Coefficients, *PeriodForCyclicalDimensions, *(PeriodForCyclicalDimensions + 8), (*(PeriodForCyclicalDimensions + 8) - *PeriodForCyclicalDimensions) >> 2);
              InterpolationMethod = IR::IRData::getInterpolationMethod(*a1);
              v56 = 0;
              v57 = 0;
              v58 = 0;
              std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v56, *InterpolationMethod, *(InterpolationMethod + 8), (*(InterpolationMethod + 8) - *InterpolationMethod) >> 2);
              IR::IRData::getUserData(&cf, *a1);
              if (cf)
              {
                CFRetain(cf);
              }

              vg::hrtf::getIRData(buf);
            }

            v44 = v12;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v43 = a2;
            while (1)
            {
              vg::hrtf::ITDWindow(v7, v16[v20], v16[v20 + 1], v62, &v56);
              v22 = v64 + v19;
              if (fabsf(*(v64 + v19)) < 0.00000001)
              {
                break;
              }

              v55 = 0;
              __Coefficients = 0u;
              v54 = 0u;
              vg::hrtf::biquadParameters(v22, (v66 + v19), &__Coefficients);
              v23 = vDSP_biquad_CreateSetup(__Coefficients.f64, 1uLL);
              v24 = v23;
              if (v23)
              {
                v25 = v7;
                v52[0] = MEMORY[0x277D85DD0];
                v52[1] = 3221225472;
                v52[2] = ___ZN2vg4hrtf19modifyIRDataWithITDENSt3__110shared_ptrIN2IR6IRDataEEE_block_invoke_11;
                v52[3] = &__block_descriptor_40_e5_v8__0l;
                v52[4] = v23;
                v26 = MEMORY[0x2743B9AA0](v52);
                v27 = v9;
                vg::hrtf::phaseShift(v92[0] + v18, v62, &v56, v9, v44, v24, buf, *(*v62 + 4 * v21));
                v28 = v60;
                if (v60 >= v61)
                {
                  v30 = std::vector<vg::hrtf::IRFilters>::__emplace_back_slow_path<vg::hrtf::IRFilters&>(&v59, buf);
                }

                else
                {
                  v29.n128_f32[0] = std::allocator_traits<std::allocator<vg::hrtf::IRFilters>>::construct[abi:ne200100]<vg::hrtf::IRFilters,vg::hrtf::IRFilters&,void,0>(&v59, v60, buf);
                  v30 = v28 + 8;
                }

                v9 = v27;
                v60 = v30;
                v7 = v25;
                if (__p)
                {
                  v51 = __p;
                  operator delete(__p);
                }

                if (*buf)
                {
                  v47 = *buf;
                  operator delete(*buf);
                }

                v26[2](v26, v29);
              }

              else
              {
                v31 = __VGLogSharedInstance(0);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_270F06000, v31, OS_LOG_TYPE_ERROR, " Failed to setup biquadratic filter. ", buf, 2u);
                }

                *v43 = 0;
                v43[1] = 0;
              }

              if (v56)
              {
                v57 = v56;
                operator delete(v56);
              }

              if (!v24)
              {
                goto LABEL_54;
              }

              ++v21;
              v16 = v89;
              v17 = v90;
              v20 += 2;
              v19 += 12;
              v18 += 64;
              if (v21 >= (v90 - v89) >> 3)
              {
                v32 = (v90 - v89) >> 3;
                goto LABEL_47;
              }
            }

            v40 = __VGLogSharedInstance(v22);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_ERROR, " IIR biquad a0 filter too small. ", buf, 2u);
            }

            *v43 = 0;
            v43[1] = 0;
            if (v56)
            {
              v57 = v56;
              operator delete(v56);
            }

LABEL_54:
            *buf = &v59;
            std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](buf);
            if (v72)
            {
              v73 = v72;
              operator delete(v72);
            }

            v10 = v41;
            v13 = v42;
            if (v70)
            {
              v71 = v70;
              operator delete(v70);
            }

            if (v68)
            {
              v69 = v68;
              operator delete(v68);
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }

            if (v64)
            {
              v65 = v64;
              operator delete(v64);
            }

            if (*v62)
            {
              v63 = *v62;
              operator delete(*v62);
            }
          }

          else
          {
            v37 = __VGLogSharedInstance(v15);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *v62 = 0;
              _os_log_impl(&dword_270F06000, v37, OS_LOG_TYPE_ERROR, " Failed to compute phaseShift params. ", v62, 2u);
            }

            *a2 = 0;
            a2[1] = 0;
          }

          if (v86 == 1)
          {
            if (v84)
            {
              v85 = v84;
              operator delete(v84);
            }

            if (v82)
            {
              v83 = v82;
              operator delete(v82);
            }

            if (v80)
            {
              v81 = v80;
              operator delete(v80);
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            if (v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            if (*v74)
            {
              v75 = *v74;
              operator delete(*v74);
            }
          }

          v13[2](v13);
        }

        else
        {
          v36 = __VGLogSharedInstance(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v74 = 0;
            _os_log_impl(&dword_270F06000, v36, OS_LOG_TYPE_ERROR, " Failed to setup inverse fft. ", v74, 2u);
          }

          *a2 = 0;
          a2[1] = 0;
        }

        v10[2](v10);

        goto LABEL_81;
      }

      v34 = __VGLogSharedInstance(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v74 = 0;
        v35 = " Failed to setup fft. ";
        goto LABEL_38;
      }
    }

    *a2 = 0;
    a2[1] = 0;
LABEL_81:
    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    *v74 = v92;
    std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](v74);
    goto LABEL_84;
  }

  v33 = __VGLogSharedInstance(v5);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *v74 = 0;
    _os_log_impl(&dword_270F06000, v33, OS_LOG_TYPE_ERROR, " Failed to read coefficients and delay values from IRData. ", v74, 2u);
  }

  *a2 = 0;
  a2[1] = 0;
LABEL_84:
  if (v99 == 1)
  {
    *v74 = &v97;
    std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](v74);
    if (v95)
    {
      v96 = v95;
      operator delete(v95);
    }
  }
}

void sub_270F42EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (**a10)(void), void (**a11)(void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  a17 = &a40;
  std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](&a17);
  vg::hrtf::PhaseShiftParameters::~PhaseShiftParameters(&a43);
  std::optional<vg::hrtf::PhaseShiftParameters>::~optional(&a65);
  a11[2]();

  a10[2]();
  v67 = *(v65 - 240);
  if (v67)
  {
    *(v65 - 232) = v67;
    operator delete(v67);
  }

  a65 = v65 - 216;
  std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](&a65);
  std::optional<vg::hrtf::IRGrid>::~optional(v65 - 176);
  _Unwind_Resume(a1);
}

void sub_270F430B4()
{
  v1 = *(v0 - 184);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x270F430ACLL);
}

uint64_t *std::vector<vg::hrtf::IRFilters>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_270F43184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<vg::hrtf::IRFilters>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<std::array<float,3ul>>::__init_with_size[abi:ne200100]<std::array<float,3ul>*,std::array<float,3ul>*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::array<float,3ul>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F4328C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::array<float,3ul>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<float *>>,std::reverse_iterator<std::__wrap_iter<float *>>>@<X0>(char *result@<X0>, int *a2@<X1>, int *a3@<X3>, char *a4@<X4>, int *a5@<X5>, char **a6@<X8>, char *a7@<X2>)
{
  v7 = a5;
  if (a2 != a3)
  {
    if (a3 == a5)
    {
      *a6 = result;
      a6[1] = a2;
      v7 = a3;
      goto LABEL_17;
    }

    if (a2 - 1 == a3)
    {
      v10 = a2 - 1;
      v11 = *(a2 - 1);
      do
      {
        v12 = *--a3;
        *v10-- = v12;
        --a2;
      }

      while (a3 != a5);
      *v10 = v11;
    }

    else
    {
      if (a3 - 1 == a5)
      {
        v13 = a5 + 1;
        v14 = *a5;
        v15 = a5;
        if (a5 + 1 != a2)
        {
          v15 = a5;
          v16 = a5;
          do
          {
            v17 = *v13++;
            *v16++ = v17;
            ++v15;
          }

          while (v13 != a2);
        }

        *(a2 - 1) = v14;
        result = a4;
        goto LABEL_16;
      }

      result = std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<float *>>>(result, a2, a7, a3, a4, a5);
    }

    v15 = a2;
LABEL_16:
    *a6 = result;
    a6[1] = v15;
    goto LABEL_17;
  }

  *a6 = a4;
  a6[1] = a5;
LABEL_17:
  a6[2] = a4;
  a6[3] = v7;
  return result;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<float *>>>(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, char *a6)
{
  v6 = (a2 - a4) >> 2;
  v7 = a4 - a6;
  if (v6 == (a4 - a6) >> 2)
  {
    result = a3;
    if (a2 != a4 && a4 != a6)
    {
      v9 = a2 - 4;
      v10 = a4 - 4;
      v11 = a4 - 4;
      do
      {
        v12 = *v9;
        v13 = v9 == a4;
        *v9 = *v10;
        v9 -= 4;
        *v11 = v12;
        v11 -= 4;
        if (v13)
        {
          break;
        }

        v13 = v10 == a6;
        v10 = v11;
      }

      while (!v13);
    }
  }

  else
  {
    v14 = v7 >> 2;
    v15 = (a2 - a4) >> 2;
    do
    {
      v16 = v15;
      v15 = v14;
      v14 = v16 % v14;
    }

    while (v14);
    v17 = &a2[-4 * v15];
    do
    {
      v18 = *v17;
      v17 += 4;
      v19 = v18;
      v20 = &v17[-(a2 - a4)];
      v21 = v17;
      do
      {
        v22 = v20;
        *(v21 - 1) = *(v20 - 1);
        v23 = (v20 - a6) >> 2;
        v24 = v23 <= v6;
        v20 = &a2[4 * (v23 - v6)];
        if (!v24)
        {
          v20 = &v22[-4 * v6];
        }

        v21 = v22;
      }

      while (v20 != v17);
      *(v22 - 1) = v19;
    }

    while (v17 != a2);
    return &a2[-v7];
  }

  return result;
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_270FA6720)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_270FA6710)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_270FA6720)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_270FA6710)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

uint64_t *std::vector<vg::hrtf::IRFilters>::__init_with_size[abi:ne200100]<vg::hrtf::IRFilters*,vg::hrtf::IRFilters*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vg::hrtf::IRFilters>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F437BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<vg::hrtf::IRFilters>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>,vg::hrtf::IRFilters*,vg::hrtf::IRFilters*,vg::hrtf::IRFilters*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = 0;
    do
    {
      std::allocator_traits<std::allocator<vg::hrtf::IRFilters>>::construct[abi:ne200100]<vg::hrtf::IRFilters,vg::hrtf::IRFilters&,void,0>(a1, a4, v6);
      v6 += 64;
      a4 += 8;
      v8 -= 64;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_270F438D0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 64;
    do
    {
      std::__destroy_at[abi:ne200100]<vg::hrtf::IRFilters,0>(v4);
      v4 -= 64;
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

float std::allocator_traits<std::allocator<vg::hrtf::IRFilters>>::construct[abi:ne200100]<vg::hrtf::IRFilters,vg::hrtf::IRFilters&,void,0>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v5 = *(a3 + 24);
  a2[4] = 0;
  *(a2 + 6) = v5;
  a2[5] = 0;
  a2[6] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2 + 4, *(a3 + 32), *(a3 + 40), (*(a3 + 40) - *(a3 + 32)) >> 2);
  result = *(a3 + 56);
  *(a2 + 14) = result;
  return result;
}

void sub_270F43964(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<vg::hrtf::IRFilters,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        std::__destroy_at[abi:ne200100]<vg::hrtf::IRFilters,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

vg::hrtf::PhaseShiftParameters *vg::hrtf::PhaseShiftParameters::PhaseShiftParameters(vg::hrtf::PhaseShiftParameters *this, const vg::hrtf::PhaseShiftParameters *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::array<float,3ul>>::__init_with_size[abi:ne200100]<std::array<float,3ul>*,std::array<float,3ul>*>(this + 3, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 2));
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::array<float,3ul>>::__init_with_size[abi:ne200100]<std::array<float,3ul>*,std::array<float,3ul>*>(this + 6, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 2));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 9, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 12, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 2);
  v4 = *(a2 + 120);
  v5 = *(a2 + 136);
  v6 = *(a2 + 19);
  *(this + 20) = 0;
  *(this + 19) = v6;
  *(this + 136) = v5;
  *(this + 120) = v4;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 20, *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  return this;
}

void sub_270F43B74(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 104) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v10;
    operator delete(v10);
  }

  v11 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>,vg::hrtf::IRFilters*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = *(v6 + 56);
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<vg::hrtf::IRFilters,0>(v5);
      v5 += 64;
    }
  }
}

uint64_t std::__split_buffer<vg::hrtf::IRFilters>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<vg::hrtf::IRFilters,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<vg::hrtf::IRFilters>::__emplace_back_slow_path<vg::hrtf::IRFilters&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>>(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  std::allocator_traits<std::allocator<vg::hrtf::IRFilters>>::construct[abi:ne200100]<vg::hrtf::IRFilters,vg::hrtf::IRFilters&,void,0>(a1, (v2 << 6), a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::IRFilters>,vg::hrtf::IRFilters*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<vg::hrtf::IRFilters>::~__split_buffer(&v14);
  return v13;
}

void sub_270F43DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<vg::hrtf::IRFilters>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vg::hrtf::IRGrid::~IRGrid(vg::hrtf::IRGrid *this)
{
  v3 = (this + 24);
  std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t std::optional<vg::hrtf::PhaseShiftParameters>::~optional(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      *(a1 + 168) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 96);
    if (v3)
    {
      *(a1 + 104) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      *(a1 + 80) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      *(a1 + 56) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      *(a1 + 32) = v6;
      operator delete(v6);
    }

    v7 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v7;
      operator delete(v7);
    }
  }

  return a1;
}

uint64_t std::optional<vg::hrtf::IRGrid>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v4 = (a1 + 24);
    std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](&v4);
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void vg::hrtf::tukeyWindow()
{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

void vg::hrtf::addDelayFractions()
{
  _os_crash();
  __break(1u);
}

{
  _os_crash();
  __break(1u);
}

BOOL vg::hrtf::HRTFDecoderModelEspressoImpl::init(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v6 = __VGLogSharedInstance(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v26.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_DEBUG, " Initializing HRTFDecoderModel (EspressoV1)... ", &v26, 2u);
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [v7 initWithCString:v8];
  v28 = 0;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9 options:0 error:&v28];
  v11 = v28;
  if (v11)
  {
    v12 = v11;
    v13 = 0;
  }

  else
  {
    v27 = 0;
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v27];
    v12 = v27;
    v15 = [v14 objectForKeyedSubscript:@"properties"];
    v16 = v15;
    v13 = 0;
    if (!v12 && v15)
    {
      v32[0] = v9;
      v31[0] = @"model_path";
      v31[1] = @"config";
      v29[0] = @"version";
      v17 = [v15 objectForKeyedSubscript:?];
      v30[0] = v17;
      v30[1] = @"CPU";
      v29[1] = @"engine";
      v29[2] = @"input_name";
      v29[3] = @"output_name";
      v30[2] = &unk_2880F5D88;
      v30[3] = &unk_2880F5DA0;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
      v32[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

      v20 = [[VGMLEspressoModel alloc] initWithModelInfo:v19];
      v21 = *(a1 + 24);
      *(a1 + 24) = v20;

      v22 = *(a1 + 24);
      v13 = v22 != 0;
      if (v22)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v26, "", a3);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = v26;
        v24 = __VGLogSharedInstance(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v26.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_270F06000, v24, OS_LOG_TYPE_DEBUG, " Successfully initialized HRTFDecoderModel (EspressoV1) ", &v26, 2u);
        }
      }
    }
  }

  return v13;
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, uint64_t a3@<X0>)
{
  if (*(a3 + 24) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      v7 = *a3;
      v8 = *(a3 + 8);

      std::string::__init_copy_ctor_external(a1, v7, v8);
    }

    else
    {
      *a1 = *a3;
    }
  }

  else
  {
    v5 = strlen(__s);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&a1->__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memcpy(a1, __s, v5);
    }

    a1->__r_.__value_.__s.__data_[v6] = 0;
  }
}

void vg::hrtf::HRTFDecoderModelEspressoImpl::predict(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __VGLogSharedInstance(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_DEBUG, " Running predict for HRTFDecoderModel (EspressoV1)... ", buf, 2u);
  }

  if (*(a2 + 16) != 32)
  {
    v19 = __VGLogSharedInstance(v7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = " Face encoding input dimension mismatch. ";
LABEL_16:
      _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    }

LABEL_17:

    *a3 = 0;
    *(a3 + 24) = 0;
    return;
  }

  if (*(a2 + 40) != 64)
  {
    v19 = __VGLogSharedInstance(v7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = " Ear encoding input dimension mismatch. ";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v21 = [[VGMLFloatIOData alloc] initWithSize:32 withData:*a2];
  v8 = [[VGMLFloatIOData alloc] initWithSize:64 withData:*(a2 + 24)];
  v9 = [*(a1 + 24) getOutputSize];
  v10 = (4 * v9 + 31) & 0x7FFFFFFE0;
  *buf = 0;
  malloc_type_posix_memalign(buf, 0x20uLL, v10, 0xE1AC2527uLL);
  v11 = *buf;
  v12 = [[VGMLFloatIOData alloc] initWithSize:v9 withData:*buf];
  v13 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v21, v8, 0}];
  v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v12, 0}];
  v15 = __VGLogSharedInstance(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_DEBUG, " Running infer for HRTFDecoderModel (EspressoV1)... ", buf, 2u);
  }

  v16 = __VGLogSharedInstance([*(a1 + 24) inferInputs:v13 toOutputs:v14]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_DEBUG, " Successfully completed infer for HRTFDecoderModel (EspressoV1) ", buf, 2u);
  }

  v18 = __VGLogSharedInstance(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_DEBUG, " Successfully completed predict for HRTFDecoderModel (EspressoV1) ", buf, 2u);
  }

  *a3 = v11;
  *(a3 + 8) = v10 >> 2;
  *(a3 + 16) = v9;
  *(a3 + 24) = 1;
}

void sub_270F44780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  free(v13);

  _Unwind_Resume(a1);
}

void sub_270F44890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::hrtf::HRTFDecoderModelEspresso>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::hrtf::HRTFDecoderModelEspresso::HRTFDecoderModelEspresso(vg::hrtf::HRTFDecoderModelEspresso *this)
{
  operator new();
}

{
  operator new();
}

vg::hrtf::HRTFDecoderModelEspresso **std::unique_ptr<vg::hrtf::HRTFDecoderModelEspresso>::~unique_ptr[abi:ne200100](vg::hrtf::HRTFDecoderModelEspresso **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::HRTFDecoderModelEspresso::~HRTFDecoderModelEspresso(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::HRTFDecoderModelEspresso::~HRTFDecoderModelEspresso(vg::hrtf::HRTFDecoderModelEspresso *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x2743B9370](v1, 0x1092C40BF85EB35);
  }
}

BOOL vg::hrtf::DTFModelEspressoImpl::init(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [v6 initWithCString:v7];
  v25 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:0 error:&v25];
  v10 = v25;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v24 = 0;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v24];
    v11 = v24;
    v14 = [v13 objectForKeyedSubscript:@"properties"];
    v15 = v14;
    v12 = 0;
    if (!v11 && v14)
    {
      v29[0] = v8;
      v28[0] = @"model_path";
      v28[1] = @"config";
      v26[0] = @"version";
      v16 = [v14 objectForKeyedSubscript:?];
      v27[0] = v16;
      v27[1] = @"CPU";
      v26[1] = @"engine";
      v26[2] = @"input_name";
      v26[3] = @"output_name";
      v27[2] = &unk_2880F5DB8;
      v27[3] = &unk_2880F5DD0;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
      v29[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

      v19 = [[VGMLEspressoModel alloc] initWithModelInfo:v18];
      v20 = *(a1 + 24);
      *(a1 + 24) = v19;

      v21 = *(a1 + 24);
      v12 = v21 != 0;
      if (v21)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v23, "", a3);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = v23;
      }
    }
  }

  return v12;
}

void vg::hrtf::DTFModelEspressoImpl::predict(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 284160)
  {
    std::vector<float>::vector[abi:ne200100](&v37, 0x45600uLL);
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = *a2;
      v8 = v37;
      do
      {
        v9 = *v7++;
        *v8++ = v9;
        --v6;
      }

      while (v6);
    }

    v10 = [VGMLFloatIOData alloc];
    v11 = [(VGMLFloatIOData *)v10 initWithSize:(v38 - v37) >> 2 withData:?];
    std::vector<float>::vector[abi:ne200100](v36, 0x2C680uLL);
    v12 = [VGMLFloatIOData alloc];
    v13 = [(VGMLFloatIOData *)v12 initWithSize:181888 withData:v36[0]];
    std::vector<float>::vector[abi:ne200100](__p, 0x40uLL);
    v14 = [VGMLFloatIOData alloc];
    v15 = [(VGMLFloatIOData *)v14 initWithSize:64 withData:__p[0]];
    v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v11, 0}];
    v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v13, v15, 0}];
    [*(a1 + 24) inferInputs:v16 toOutputs:v17];
    v33[1] = 181888;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, 0xB1A00uLL, 0xE1AC2527uLL);
    v18 = memptr;
    v33[0] = memptr;
    v34 = 0xB1A00000040;
    v31[1] = 64;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, 0x100uLL, 0xE1AC2527uLL);
    v19 = 0;
    v20 = memptr;
    v31[0] = memptr;
    v32 = 64;
    v21 = v36[0];
    v22 = __p[0];
    do
    {
      v23 = 0;
      v24 = v18;
      do
      {
        *v24 = v21[v23++];
        v24 += 64;
      }

      while (v23 != 2842);
      v20[v19] = v22[v19];
      ++v19;
      ++v18;
      v21 += 2842;
    }

    while (v19 != 64);
    cva::MatrixData<float,0ul,0ul,false>::MatrixData(&memptr, v33, 181888);
    *(&v29 + 1) = v34;
    cva::MatrixData<float,0ul,0ul,false>::MatrixData(v30, v31, 64);
    v25 = v32;
    *a3 = memptr;
    *(a3 + 8) = v29;
    v26 = v30[1];
    *(a3 + 24) = v30[0];
    *(a3 + 32) = v26;
    *(a3 + 40) = v25;
    *(a3 + 48) = 1;
    free(v31[0]);
    free(v33[0]);

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v36[0])
    {
      v36[1] = v36[0];
      operator delete(v36[0]);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }

  else
  {
    v27 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(memptr) = 0;
      _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_ERROR, " HRTF input dimension mismatch. ", &memptr, 2u);
    }

    *a3 = 0;
    *(a3 + 48) = 0;
  }
}

void sub_270F44FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  free(a11);
  free(a18);
  free(a21);

  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 128);
  if (v32)
  {
    *(v30 - 120) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 104);
  if (v33)
  {
    *(v30 - 96) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_270F45148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::hrtf::DTFModelEspresso>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::hrtf::DTFModelEspresso::DTFModelEspresso(vg::hrtf::DTFModelEspresso *this)
{
  operator new();
}

{
  operator new();
}

vg::hrtf::DTFModelEspresso **std::unique_ptr<vg::hrtf::DTFModelEspresso>::~unique_ptr[abi:ne200100](vg::hrtf::DTFModelEspresso **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::DTFModelEspresso::~DTFModelEspresso(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::DTFModelEspresso::~DTFModelEspresso(vg::hrtf::DTFModelEspresso *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x2743B9370](v1, 0x1092C40BF85EB35);
  }
}

BOOL vg::hrtf::DTFBiasModelEspressoImpl::init(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [v6 initWithCString:v7];
  v25 = 0;
  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v8 options:0 error:&v25];
  v10 = v25;
  if (v10)
  {
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v24 = 0;
    v13 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v9 options:0 error:&v24];
    v11 = v24;
    v14 = [v13 objectForKeyedSubscript:@"properties"];
    v15 = v14;
    v12 = 0;
    if (!v11 && v14)
    {
      v29[0] = v8;
      v28[0] = @"model_path";
      v28[1] = @"config";
      v26[0] = @"version";
      v16 = [v14 objectForKeyedSubscript:?];
      v27[0] = v16;
      v27[1] = @"CPU";
      v26[1] = @"engine";
      v26[2] = @"input_name";
      v26[3] = @"output_name";
      v27[2] = &unk_2880F5DE8;
      v27[3] = &unk_2880F5E00;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
      v29[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

      v19 = [[VGMLEspressoModel alloc] initWithModelInfo:v18];
      v20 = *(a1 + 24);
      *(a1 + 24) = v19;

      v21 = *(a1 + 24);
      v12 = v21 != 0;
      if (v21)
      {
        std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&v23, "", a3);
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        *a1 = v23;
      }
    }
  }

  return v12;
}

void vg::hrtf::DTFBiasModelEspressoImpl::predict(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 4) == 64 && *(a2 + 5) == 2842)
  {
    std::vector<float>::vector[abi:ne200100](buf, 0x2C680uLL);
    v6 = 0;
    v7 = *(a2 + 4);
    v8 = *a2;
    v9 = *buf;
    do
    {
      v10 = 0;
      v11 = v6;
      do
      {
        *(v9 + 4 * v10++) = *(v8 + 4 * v11);
        v11 += v7;
      }

      while (v10 != 2842);
      ++v6;
      v9 += 11368;
    }

    while (v6 != 64);
    v12 = [VGMLFloatIOData alloc];
    v13 = [(VGMLFloatIOData *)v12 initWithSize:181888 withData:*buf];
    std::vector<float>::vector[abi:ne200100](__p, 0x2C680uLL);
    v14 = [VGMLFloatIOData alloc];
    v15 = [(VGMLFloatIOData *)v14 initWithSize:181888 withData:__p[0]];
    v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v13, 0}];
    v17 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v15, 0}];
    [*(a1 + 24) inferInputs:v16 toOutputs:v17];
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, 0xB1A00uLL, 0xE1AC2527uLL);
    v18 = 0;
    v19 = memptr;
    v20 = __p[0];
    v21 = memptr;
    do
    {
      v22 = 0;
      v23 = v21;
      do
      {
        *v23 = v20[v22++];
        v23 += 64;
      }

      while (v22 != 2842);
      ++v18;
      v20 += 2842;
      ++v21;
    }

    while (v18 != 64);
    *a3 = v19;
    *(a3 + 8) = xmmword_270FA6DC0;
    *(a3 + 24) = 1;

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*buf)
    {
      v27 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    v24 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v24, OS_LOG_TYPE_ERROR, " DTF input dimension mismatch. ", buf, 2u);
    }

    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

void sub_270F457CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

void sub_270F458E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::hrtf::DTFBiasModelEspresso>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::hrtf::DTFBiasModelEspresso::DTFBiasModelEspresso(vg::hrtf::DTFBiasModelEspresso *this)
{
  operator new();
}

{
  operator new();
}

vg::hrtf::DTFBiasModelEspresso **std::unique_ptr<vg::hrtf::DTFBiasModelEspresso>::~unique_ptr[abi:ne200100](vg::hrtf::DTFBiasModelEspresso **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::DTFBiasModelEspresso::~DTFBiasModelEspresso(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::DTFBiasModelEspresso::~DTFBiasModelEspresso(vg::hrtf::DTFBiasModelEspresso *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x2743B9370](v1, 0x1092C40BF85EB35);
  }
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_270F45AAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **cva::MatrixData<float,0ul,0ul,false>::MatrixData(void **a1, const void **a2, uint64_t a3)
{
  v6 = 4 * a3;
  v7 = (4 * a3 + 31) & 0xFFFFFFFFFFFFFFE0;
  *a1 = 0;
  a1[1] = (v7 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
  v8 = memptr;
  *a1 = memptr;
  if (a3)
  {
    memcpy(v8, *a2, v6);
  }

  return a1;
}

uint64_t vg::hrtf::RectifyImpl::rectifyColor(vg::hrtf::RectifyImpl *this, IOSurface *a2, IOSurface *a3)
{
  v5 = a2;
  v6 = a3;
  if (vg::hrtf::detail::map<unsigned char>(this, 0, v5, v6))
  {
    v7 = vg::hrtf::detail::map<unsigned short>(this + 3, 1, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t vg::hrtf::detail::map<unsigned char>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 heightOfPlaneAtIndex:a2];
  v10 = [v7 widthOfPlaneAtIndex:a2];
  v11 = [v7 bytesPerRowOfPlaneAtIndex:a2];
  v12 = [v8 bytesPerRowOfPlaneAtIndex:a2];
  v13 = [v7 baseAddressOfPlaneAtIndex:a2];
  v14 = [v8 baseAddressOfPlaneAtIndex:a2];
  v15 = *(a1 + 16) == 2 * v10 && v9 == *(a1 + 20);
  v16 = v15;
  v32 = v16;
  if (v15)
  {
    v17 = v14;
    [v8 lockWithOptions:0 seed:0];
    [v7 lockWithOptions:1 seed:0];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ___ZN2vg4hrtf6detail3mapIhEEbRKN3cva6MatrixIiLj0ELj0ELb0EEEmP9IOSurfaceS9__block_invoke;
    v35[3] = &unk_279E28D98;
    v36 = v8;
    v31 = MEMORY[0x2743B9AA0](v35);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = ___ZN2vg4hrtf6detail3mapIhEEbRKN3cva6MatrixIiLj0ELj0ELb0EEEmP9IOSurfaceS9__block_invoke_2;
    v33[3] = &unk_279E28D98;
    v34 = v7;
    v18 = MEMORY[0x2743B9AA0](v33);
    v19 = v18;
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        if (v10)
        {
          v21 = 1;
          v22 = 1;
          v23 = v17;
          do
          {
            v24 = v21 + i * *(a1 + 16);
            v25 = *(*a1 + 4 * (v24 - 1));
            if ((v25 & 0x80000000) != 0)
            {
              v26 = 0;
            }

            else
            {
              v26 = *(v13 + v11 * *(*a1 + 4 * v24) + v25);
            }

            *v23++ = v26;
            v27 = v10 > v22++;
            v21 += 2;
          }

          while (v27);
        }

        v17 += v12;
      }
    }

    (*(v18 + 16))(v18);

    v31[2](v31);
    v28 = v36;
  }

  else
  {
    v28 = __VGLogSharedInstance(v14);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v28, OS_LOG_TYPE_ERROR, " Lookup table dimension mismatch. ", buf, 2u);
    }
  }

  return v32;
}

uint64_t vg::hrtf::detail::map<unsigned short>(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 heightOfPlaneAtIndex:a2];
  v10 = [v7 widthOfPlaneAtIndex:a2];
  v11 = [v7 bytesPerRowOfPlaneAtIndex:a2];
  v12 = [v8 bytesPerRowOfPlaneAtIndex:a2];
  v13 = [v7 baseAddressOfPlaneAtIndex:a2];
  v14 = [v8 baseAddressOfPlaneAtIndex:a2];
  v15 = *(a1 + 4) == 2 * v10 && v9 == *(a1 + 5);
  v16 = v15;
  v34 = v16;
  if (v15)
  {
    v17 = v14;
    [v8 lockWithOptions:0 seed:0];
    [v7 lockWithOptions:1 seed:0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = ___ZN2vg4hrtf6detail3mapItEEbRKN3cva6MatrixIiLj0ELj0ELb0EEEmP9IOSurfaceS9__block_invoke;
    v37[3] = &unk_279E28D98;
    v38 = v8;
    v33 = MEMORY[0x2743B9AA0](v37);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = ___ZN2vg4hrtf6detail3mapItEEbRKN3cva6MatrixIiLj0ELj0ELb0EEEmP9IOSurfaceS9__block_invoke_2;
    v35[3] = &unk_279E28D98;
    v36 = v7;
    v18 = MEMORY[0x2743B9AA0](v35);
    v19 = v18;
    if (v9)
    {
      v20 = 0;
      v21 = *(a1 + 4);
      v22 = *a1;
      v23 = 1;
      do
      {
        if (v10)
        {
          v24 = 1;
          v25 = v23;
          v26 = v17;
          do
          {
            v27 = *(v22 + 4 * (v25 - 1));
            if ((v27 & 0x80000000) != 0)
            {
              v28 = 0;
            }

            else
            {
              v28 = *(v13 + v11 * *(v22 + 4 * v25) + 2 * v27);
            }

            *v26++ = v28;
            v29 = v10 > v24++;
            v25 += 2;
          }

          while (v29);
        }

        ++v20;
        v17 = (v17 + v12);
        v23 += v21;
      }

      while (v9 > v20);
    }

    (*(v18 + 16))(v18);

    v33[2](v33);
    v30 = v38;
  }

  else
  {
    v30 = __VGLogSharedInstance(v14);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v30, OS_LOG_TYPE_ERROR, " Lookup table dimension mismatch. ", buf, 2u);
    }
  }

  return v34;
}

uint64_t vg::hrtf::RectifyImpl::rectifyDepth(vg::hrtf::RectifyImpl *this, IOSurface *a2, IOSurface *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(IOSurface *)v5 pixelFormat]!= 1278226534)
  {
    v7 = [(IOSurface *)v5 pixelFormat];
    if (v7 != 1717855600)
    {
      v27 = __VGLogSharedInstance(v7);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        v28 = " Invalid depth image format. ";
        goto LABEL_19;
      }

LABEL_20:

      v26 = 0;
      goto LABEL_21;
    }
  }

  v8 = *(this + 16);
  v9 = [(IOSurface *)v5 width];
  if (v8 != 2 * v9 || (v10 = *(this + 17), v9 = [(IOSurface *)v5 height], v9 != v10))
  {
    v27 = __VGLogSharedInstance(v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      v28 = " Depth lookup table dimension mismatch. ";
LABEL_19:
      _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  vg::IOSurfaceData::IOSurfaceData(buf, v5, 1);
  vg::IOSurfaceData::IOSurfaceData(v30, v6, 0);
  v11 = [(IOSurface *)v5 height];
  v12 = [(IOSurface *)v5 width];
  if (v11)
  {
    v13 = 0;
    v14 = v30[4];
    v15 = v30[5];
    do
    {
      if (v12)
      {
        v16 = *(this + 6);
        v17 = v32;
        v18 = v33;
        v19 = v34;
        v20 = *(this + 16) * v13;
        v21 = 1;
        v22 = v14;
        do
        {
          v23 = *(v16 + 4 * v20);
          if ((v23 & 0x80000000) != 0)
          {
            v24 = 0;
          }

          else
          {
            v24 = *(v17 + v18 * *(v16 + 4 * (v20 + 1)) + v19 * v23);
          }

          *v22 = v24;
          v22 += 4;
          v25 = v12 > v21++;
          v20 += 2;
        }

        while (v25);
      }

      ++v13;
      v14 = &v15[v14];
    }

    while (v11 > v13);
  }

  vg::IOSurfaceData::~IOSurfaceData(v30);
  vg::IOSurfaceData::~IOSurfaceData(buf);
  v26 = 1;
LABEL_21:

  return v26;
}

void sub_270F463DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, id);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

void vg::hrtf::RectifyImpl::process(float32x2_t *this@<X0>, IOSurface *a2@<X1>, IOSurface *a3@<X2>, IOSurface *a4@<X3>, IOSurface *a5@<X4>, simd_float3x3 a6@<0:Q0, 16:Q1, 32:Q2>, VGHRTFDepthCalibrationData *a7@<X5>, uint64_t a8@<X8>)
{
  v64 = a6;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v70 = a5;
  v17 = a7;
  v18 = [(VGHRTFDepthCalibrationData *)v17 lensDistortionLut];
  v19 = [v18 length];
  v20 = [v18 bytes];
  v19 >>= 2;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  std::vector<float>::reserve(&v74, v19);
  std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(buf, v20, &v20[v19], &v74);

  if (this[20].i8[0] == 1)
  {
    v21 = v74;
    v22 = this[17];
    if (v75 - v74 == *&this[18] - v22)
    {
      if (v75 == v74)
      {
LABEL_8:
        [(VGHRTFDepthCalibrationData *)v17 lensDistortionCenter:*v64.columns];
        v25 = vsub_f32(v24, this[16]);
        if (fabsf(v25.f32[0]) <= 0.000001 && fabsf(v25.f32[1]) <= 0.000001)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v23 = (v75 - v74) >> 2;
        if (v23 <= 1)
        {
          v23 = 1;
        }

        while (vabds_f32(*v21, *v22) <= 0.000001)
        {
          ++v22;
          ++v21;
          if (!--v23)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  v26 = [(IOSurface *)v16 width:*v64.columns];
  [(VGHRTFDepthCalibrationData *)v17 intrinsicMatrixReferenceDimension];
  v68 = v27;
  [(VGHRTFDepthCalibrationData *)v17 lensDistortionCenter];
  v66 = v28;
  [(VGHRTFDepthCalibrationData *)v17 lensDistortionCenter];
  v65 = v29;
  v30 = [(IOSurface *)v14 width];
  v31 = [(IOSurface *)v16 width];
  v32 = [(IOSurface *)v14 width];
  v33 = [(IOSurface *)v14 height];
  v34 = v26 / v68;
  v35.f32[0] = v34 * v66;
  v67 = v34;
  v35.i32[1] = vmuls_lane_f32(v34, v65, 1);
  v69 = *&v35;
  v36 = vmul_n_f32(v35, v30 / v31);
  *&v37 = v32;
  *(&v37 + 1) = v33;
  vg::hrtf::detail::buildLUT(&v74, buf, v37, *&v36);
  v38 = *this;
  v39 = v72;
  *this = *buf;
  this[1] = v39;
  this[2] = v73;
  free(v38);
  v40 = [(IOSurface *)v14 width];
  v41 = [(IOSurface *)v14 height];
  *&v42 = (v40 / 2);
  *(&v42 + 1) = (v41 / 2);
  vg::hrtf::detail::buildLUT(&v74, buf, v42, COERCE_DOUBLE(vmul_f32(v36, 0x3F0000003F000000)));
  v43 = this[3];
  v44 = v72;
  this[3] = *buf;
  this[4] = v44;
  this[5] = v73;
  free(v43);
  v45 = [(IOSurface *)v16 width];
  v46 = [(IOSurface *)v16 height];
  *&v47 = v45;
  *(&v47 + 1) = v46;
  vg::hrtf::detail::buildLUT(&v74, buf, v47, v69);
  v48 = this[6];
  v49 = v72;
  this[6] = *buf;
  this[7] = v49;
  this[8] = v73;
  free(v48);
  [(VGHRTFDepthCalibrationData *)v17 intrinsicMatrix];
  v51 = vmulq_n_f32(v50, v67);
  v53 = vmulq_n_f32(v52, v67);
  this[11].i32[0] = v51.i32[2];
  this[10] = *v51.f32;
  this[13].i32[0] = v53.i32[2];
  this[12] = *v53.f32;
  this[15].i32[0] = 1065353216;
  this[14] = vmulq_n_f32(v54, v67).u64[0];
  [(VGHRTFDepthCalibrationData *)v17 lensDistortionCenter];
  this[16] = v55;
  if (&this[17] != &v74)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&this[17], v74, v75, (v75 - v74) >> 2);
  }

  this[20].i8[0] = 1;
LABEL_13:
  v56 = vg::hrtf::RectifyImpl::rectifyColor(this, v14, v15);
  if (v56)
  {
    v57 = vg::hrtf::RectifyImpl::rectifyDepth(this, v16, v70);
    if (v57)
    {
      v58 = v15;
      v59 = v70;
      *a8 = v58;
      *(a8 + 16) = v64;
      *(a8 + 64) = v59;
      v60 = *this[12].f32;
      *(a8 + 80) = *this[10].f32;
      *(a8 + 96) = v60;
      v61 = 1;
      *(a8 + 112) = *this[14].f32;
      goto LABEL_22;
    }

    v62 = __VGLogSharedInstance(v57);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v63 = " Failed to rectify depth image. ";
      goto LABEL_20;
    }
  }

  else
  {
    v62 = __VGLogSharedInstance(v56);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v63 = " Failed to rectify YUV image. ";
LABEL_20:
      _os_log_impl(&dword_270F06000, v62, OS_LOG_TYPE_ERROR, v63, buf, 2u);
    }
  }

  v61 = 0;
  *a8 = 0;
LABEL_22:
  *(a8 + 128) = v61;
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }
}

void sub_270F4688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v28 = *(v26 - 128);
  if (v28)
  {
    *(v26 - 120) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t vg::hrtf::detail::buildLUT@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = *(&a3 + 1);
  v7 = *&a3;
  v8 = *(&a3 + 1);
  v10 = *a1;
  v9 = a1[1];
  v11 = 2 * *&a3;
  v12 = (4 * (v11 * *(&a3 + 1)) + 31) & 0x7FFFFFFE0;
  *(a2 + 8) = v12 >> 2;
  memptr = 0;
  result = malloc_type_posix_memalign(&memptr, 0x20uLL, v12, 0xE1AC2527uLL);
  v14 = memptr;
  *a2 = memptr;
  *(a2 + 16) = v11;
  *(a2 + 20) = v8;
  if (*&a3 > 0.0)
  {
    v15 = 0;
    v16 = vsub_f32(*&a3, *&a4);
    v17 = vbsl_s8(vcgt_f32(v16, *&a4), v16, *&a4);
    v18 = sqrtf(vaddv_f32(vmul_f32(v17, v17)));
    v19 = ((v9 - v10) >> 2) - 1;
    v20 = 0.0;
    v21 = 1;
    do
    {
      if (v6 > 0.0)
      {
        v22 = v20 - *&a4;
        v23 = *a1;
        v24 = *a1 + 4;
        v25 = 0.0;
        v26 = 1;
        v27 = v21;
        do
        {
          v28 = v25 - *(&a4 + 1);
          v29 = sqrtf(vaddv_f32(vmul_f32(__PAIR64__(LODWORD(v28), LODWORD(v22)), __PAIR64__(LODWORD(v28), LODWORD(v22)))));
          if (v29 >= v18)
          {
            v31 = *(v23 + 4 * v19);
          }

          else
          {
            v30 = (v29 * v19) / v18;
            v31 = ((v30 - v30) * *(v24 + 4 * v30)) + ((1.0 - (v30 - v30)) * *(v23 + 4 * v30));
          }

          v32 = v31 + 1.0;
          v33 = (*&a4 + (v22 * v32));
          if (v33 < 0)
          {
            v33 = -1;
            v34 = -1;
          }

          else
          {
            v34 = (*(&a4 + 1) + (v28 * v32));
            v36 = v34 >= 0 && v34 < v8;
            if (v33 >= v7 || !v36)
            {
              v33 = -1;
              v34 = -1;
            }
          }

          result = v27 - 1;
          v14[result] = v33;
          v14[v27] = v34;
          v25 = v26;
          v27 += v11;
          ++v26;
        }

        while (v6 > v25);
      }

      v20 = ++v15;
      v21 += 2;
    }

    while (*&a3 > v15);
  }

  return result;
}

void vg::hrtf::Rectify::Rectify(vg::hrtf::Rectify *this)
{
  operator new();
}

{
  operator new();
}

void vg::hrtf::Rectify::~Rectify(vg::hrtf::Rectify *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *(v1 + 136);
    if (v2)
    {
      *(v1 + 144) = v2;
      operator delete(v2);
    }

    free(*(v1 + 48));
    free(*(v1 + 24));
    free(*v1);
    MEMORY[0x2743B9370](v1, 0x1090C406D073E83);
  }
}

void vg::hrtf::Rectify::process(uint64_t *__return_ptr a1@<X8>, float32x2_t **this@<X0>, IOSurface *a3@<X1>, IOSurface *a4@<X2>, simd_float3x3 a5@<0:Q0, 16:Q1, 32:Q2>, VGHRTFDepthCalibrationData *a6@<X3>)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a4;
  v36 = a6;
  v9 = objc_alloc(MEMORY[0x277CD2930]);
  v45[0] = *MEMORY[0x277CD2928];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v37, "width")}];
  v46[0] = v10;
  v45[1] = *MEMORY[0x277CD28D0];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v37, "height")}];
  v12 = *MEMORY[0x277CD28D8];
  v46[1] = v11;
  v46[2] = &unk_2880F5FC8;
  v13 = *MEMORY[0x277CD28B0];
  v45[2] = v12;
  v45[3] = v13;
  v46[3] = &unk_2880F5FE0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
  v35 = [v9 initWithProperties:v14];

  v15 = MEMORY[0x277CD2920];
  v42[0] = *MEMORY[0x277CD2920];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v8, "width")}];
  v43[0] = v16;
  v17 = MEMORY[0x277CD2900];
  v42[1] = *MEMORY[0x277CD2900];
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v8, "height")}];
  v19 = MEMORY[0x277CD28E0];
  v42[2] = *MEMORY[0x277CD28E0];
  v43[1] = v18;
  v43[2] = &unk_2880F5FF8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
  v44[0] = v20;
  v40[0] = *v15;
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v8, "width") / 2}];
  v41[0] = v21;
  v40[1] = *v17;
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v8, "height") / 2}];
  v40[2] = *v19;
  v41[1] = v22;
  v41[2] = &unk_2880F6010;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v44[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];

  v25 = objc_alloc(MEMORY[0x277CD2930]);
  v38[0] = *MEMORY[0x277CD2928];
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface width](v8, "width")}];
  v39[0] = v26;
  v38[1] = *MEMORY[0x277CD28D0];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IOSurface height](v8, "height")}];
  v28 = *MEMORY[0x277CD28D8];
  v39[1] = v27;
  v39[2] = &unk_2880F6028;
  v29 = *MEMORY[0x277CD2908];
  v38[2] = v28;
  v38[3] = v29;
  v39[3] = v24;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v31 = [v25 initWithProperties:v30];

  vg::hrtf::RectifyImpl::process(*this, v8, v31, v37, v35, a5, v36, a1);
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

id vg::hrtf::createUserData(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    v5 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      v13 = " No CTF values found for user data field in IRData. ";
LABEL_12:
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_ERROR, v13, v15, 2u);
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (*(a2 + 16) != v2)
  {
    v5 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      v13 = " Left and right CTF values must be of same length. ";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = 0;
  v8 = 4 * v2;
  do
  {
    LODWORD(v6) = *(*a1 + v7);
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    [v5 addObject:v9];

    v7 += 4;
  }

  while (v8 != v7);
  v10 = 0;
  do
  {
    LODWORD(v6) = *(*a2 + v10);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    [v5 addObject:v11];

    v10 += 4;
  }

  while (v8 != v10);
  v16[0] = @"DiffuseFieldPowerRMS";
  v16[1] = @"CTF";
  v17[0] = &unk_2880F5D18;
  v17[1] = v5;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
LABEL_14:

  return v12;
}

void vg::hrtf::hrtfToIRData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (v6 == *(a2 + 16) && (v9 = *(a1 + 20), v9 == *(a2 + 20)) && *(a3 + 16) == *(a4 + 16))
  {
    LODWORD(v50) = 0;
    std::vector<float>::vector[abi:ne200100](v52, 4 * v6, &v50);
    std::vector<std::vector<float>>::vector[abi:ne200100](v49, v9, v52);
    if (*v52)
    {
      v53 = *v52;
      operator delete(*v52);
    }

    if (!v9)
    {
LABEL_27:
      LODWORD(v50) = 0;
      std::vector<float>::vector[abi:ne200100](v52, 2uLL, &v50);
      std::vector<std::vector<float>>::vector[abi:ne200100](&v47, v9, v52);
      if (*v52)
      {
        v53 = *v52;
        operator delete(*v52);
      }

      if (v9)
      {
        v19 = *a3;
        v20 = v47;
        v21 = v9;
        v22 = *a4;
        do
        {
          v23 = *v19++;
          v24 = v23;
          v26 = *v20;
          v20 += 3;
          v25 = v26;
          *v26 = v24;
          LODWORD(v26) = *v22++;
          v25[1] = v26;
          --v21;
        }

        while (v21);
        v27 = v47;
        do
        {
          v29 = *v27;
          v27 += 3;
          v28 = v29;
          v31 = *v29;
          v30 = v29[1];
          if (v30 >= *v29)
          {
            v32 = v31;
          }

          else
          {
            v32 = v30;
          }

          *v28 = v31 - v32;
          v28[1] = v30 - v32;
          --v9;
        }

        while (v9);
      }

      *v52 = 1;
      v45 = 0;
      v46 = 0;
      __p = 0;
      std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(&__p, v52, &v53, 2uLL);
      v33 = [MEMORY[0x277CCA8D8] vg_resourcePath];
      v34 = [v33 stringByAppendingPathComponent:@"ir_coordinates/ir_dimensions.bin"];

      v35 = v34;
      v36 = std::string::basic_string[abi:ne200100]<0>(v52, [v34 UTF8String]);
      vg::load2DVectorData<float>(v36, 0xB1AuLL, 2uLL, &v50);
      if (v54 < 0)
      {
        operator delete(*v52);
      }

      vg::toStdVector<float>(&v50, buf);
      free(v50);
      *v52 = 0x43B4000000000000;
      memset(v42, 0, sizeof(v42));
      std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v42, v52, &v53, 2uLL);
      *v52 = 0x100000001;
      memset(v41, 0, sizeof(v41));
      std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(v41, v52, &v53, 2uLL);
      v40[0] = 0;
      v40[1] = 0;
      v40[2] = applesauce::CF::details::make_CFDictionaryRef(v40);
      operator new();
    }

    v11 = 0;
    v12 = 0;
    v13 = 2 * v6;
    while (1)
    {
      vg::hrtf::getTaps(a1, v12, v52);
      vg::hrtf::getTaps(a2, v12, &v50);
      LODWORD(__p) = 0;
      std::vector<float>::vector[abi:ne200100](&v47, v13, &__p);
      MinimumPhase = vg::hrtf::makeMinimumPhase(v52, &v47);
      if (!MinimumPhase)
      {
        break;
      }

      LODWORD(buf[0]) = 0;
      std::vector<float>::vector[abi:ne200100](&__p, v13, buf);
      v15 = vg::hrtf::makeMinimumPhase(&v50, &__p);
      v16 = v15;
      if (v15)
      {
        v17 = *(v49[0] + v11);
        if (v48 != v47)
        {
          memmove(v17, v47, v48 - v47);
          v17 = *(v49[0] + v11);
        }

        if (v45 != __p)
        {
          memmove((&v17[v48] - v47), __p, v45 - __p);
        }
      }

      else
      {
        v18 = __VGLogSharedInstance(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, " Failed to transform right HRTF coefficients from the frequency domain to the time domain. ", buf, 2u);
        }

        *a5 = 0;
        a5[1] = 0;
      }

      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      if (*v52)
      {
        v53 = *v52;
        operator delete(*v52);
      }

      if (!v16)
      {
        goto LABEL_40;
      }

      ++v12;
      v11 += 24;
      if (24 * v9 == v11)
      {
        goto LABEL_27;
      }
    }

    v38 = __VGLogSharedInstance(MinimumPhase);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_270F06000, v38, OS_LOG_TYPE_ERROR, " Failed to transform left HRTF coefficients from the frequency domain to the time domain. ", &__p, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (*v52)
    {
      v53 = *v52;
      operator delete(*v52);
    }

LABEL_40:
    *v52 = v49;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v52);
  }

  else
  {
    v37 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_impl(&dword_270F06000, v37, OS_LOG_TYPE_ERROR, " Invalid inputs for HRTF to IRData conversion. ", v52, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
  }
}

void sub_270F47B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v35 = *(v33 - 152);
  if (v35)
  {
    *(v33 - 144) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 128);
  if (v36)
  {
    *(v33 - 120) = v36;
    operator delete(v36);
  }

  *(v33 - 152) = v33 - 176;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v33 - 152));
  _Unwind_Resume(a1);
}

void vg::hrtf::getTaps(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  v6 = *(a1 + 16);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<float>::reserve(a3, v6);
  if (v6)
  {
    v7 = 0;
    v8 = a3[1];
    do
    {
      v9 = __exp10f(*(*a1 + 4 * (v7 + *(a1 + 16) * a2)) / 20.0);
      v10 = a3[2];
      if (v8 >= v10)
      {
        v11 = *a3;
        v12 = v8 - *a3;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v15 = v10 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v16);
        }

        *(4 * v13) = v9;
        v8 = (4 * v13 + 4);
        memcpy(0, v11, v12);
        v17 = *a3;
        *a3 = 0;
        a3[1] = v8;
        a3[2] = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v8++ = v9;
      }

      a3[1] = v8;
      ++v7;
    }

    while (v6 != v7);
  }
}

void sub_270F47E54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL vg::hrtf::makeMinimumPhase(float **a1, float **a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = v6 - *a2;
  v9 = v8 >> 2;
  LODWORD(__Ii[0]) = 0;
  std::vector<float>::vector[abi:ne200100](v56, v8 >> 2, __Ii);
  v10 = v4 - v5;
  v11 = v10 >> 2;
  if (v10)
  {
    v12 = *a1;
    if (v11 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10 >> 2;
    }

    v14 = (v56[0] + 4);
    do
    {
      v15 = *v12++;
      v16 = logf(v15);
      if (v15 <= 0.000001)
      {
        v16 = 0.0;
      }

      *v14++ = v16;
      --v13;
    }

    while (v13);
  }

  if (v11 + 1 < v9)
  {
    v17 = v9 + ~v11;
    v18 = v56[0] + 4 * v11 + 4;
    v19 = (v56[0] + v10 - 4);
    do
    {
      v20 = *v19--;
      *v18++ = v20;
      --v17;
    }

    while (v17);
  }

  LODWORD(__Or[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__Ii, v8 >> 2, __Or);
  LODWORD(__Oi[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__Or, v8 >> 2, __Oi);
  LODWORD(__Ir[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__Oi, v8 >> 2, __Ir);
  Setup = vDSP_DFT_zop_CreateSetup(0, v8 >> 2, vDSP_DFT_INVERSE);
  v22 = Setup;
  if (Setup)
  {
    vDSP_DFT_Execute(Setup, v56[0], __Ii[0], __Or[0], __Oi[0]);
    vDSP_DFT_DestroySetup(v22);
    v23 = 1.0 / v9;
    if (v6 != v7)
    {
      v24 = __Or[0];
      if (v9 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v8 >> 2;
      }

      do
      {
        *v24 = v23 * *v24;
        ++v24;
        --v25;
      }

      while (v25);
    }

    LODWORD(v51[0]) = 0;
    std::vector<float>::vector[abi:ne200100](__Ir, v8 >> 2, v51);
    v26 = __Or[0];
    v27 = __Ir[0];
    *__Ir[0] = *__Or[0];
    v28 = (v8 >> 2) & 1;
    v29 = (v28 + v9) >> 1;
    if (v28 + v9 >= 4)
    {
      v30 = 2;
      if (v29 > 2)
      {
        v30 = (v28 + v9) >> 1;
      }

      v31 = v30 - 1;
      v32 = v26 + 1;
      v33 = v27 + 1;
      do
      {
        v34 = *v32++;
        *v33++ = v34 + v34;
        --v31;
      }

      while (v31);
    }

    if (!v28)
    {
      v27[v29] = v26[v29];
    }

    v35 = vDSP_DFT_zop_CreateSetup(0, v8 >> 2, vDSP_DFT_FORWARD);
    v36 = v35;
    v22 = v35 != 0;
    if (v35)
    {
      vDSP_DFT_Execute(v35, __Ir[0], __Ii[0], __Or[0], __Oi[0]);
      vDSP_DFT_DestroySetup(v36);
      LODWORD(v50[0]) = 0;
      std::vector<float>::vector[abi:ne200100](v51, v9, v50);
      v49 = 0;
      std::vector<float>::vector[abi:ne200100](v50, v9, &v49);
      if (v6 != v7)
      {
        v37 = __Or[0];
        v38 = __Oi[0];
        v39 = v51[0];
        v40 = v50[0];
        if (v9 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v9;
        }

        do
        {
          v42 = *v37++;
          v43 = expf(v42);
          *v39++ = v43 * cosf(*v38);
          v44 = *v38++;
          *v40++ = v43 * sinf(v44);
          --v41;
        }

        while (v41);
      }

      v45 = vDSP_DFT_zop_CreateSetup(0, v9, vDSP_DFT_INVERSE);
      vDSP_DFT_Execute(v45, v51[0], v50[0], *a2, __Oi[0]);
      vDSP_DFT_DestroySetup(v45);
      if (v6 != v7)
      {
        v46 = *a2;
        if (v9 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v9;
        }

        do
        {
          *v46 = v23 * *v46;
          ++v46;
          --v47;
        }

        while (v47);
      }

      if (v50[0])
      {
        v50[1] = v50[0];
        operator delete(v50[0]);
      }

      if (v51[0])
      {
        v51[1] = v51[0];
        operator delete(v51[0]);
      }
    }

    if (__Ir[0])
    {
      __Ir[1] = __Ir[0];
      operator delete(__Ir[0]);
    }
  }

  if (__Oi[0])
  {
    __Oi[1] = __Oi[0];
    operator delete(__Oi[0]);
  }

  if (__Or[0])
  {
    __Or[1] = __Or[0];
    operator delete(__Or[0]);
  }

  if (__Ii[0])
  {
    __Ii[1] = __Ii[0];
    operator delete(__Ii[0]);
  }

  if (v56[0])
  {
    v56[1] = v56[0];
    operator delete(v56[0]);
  }

  return v22;
}

void sub_270F48228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void vg::toStdVector<float>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 4);
  std::vector<float>::vector[abi:ne200100](__p, *(a1 + 5));
  std::vector<std::vector<float>>::vector[abi:ne200100](a2, v4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 5);
    v8 = *a1;
    v9 = *a2;
    do
    {
      if (v7)
      {
        v10 = *(v9 + 24 * v6);
        v11 = v7;
        v12 = v6;
        do
        {
          *v10++ = *(v8 + 4 * v12);
          v12 += v5;
          --v11;
        }

        while (v11);
      }

      ++v6;
    }

    while (v6 != v5);
  }
}

void sub_270F48398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::hrtf::getIRValues(IR::IRData **a1@<X0>, uint64_t a2@<X8>)
{
  NumFiltersPerSpatialPoint = IR::IRData::getNumFiltersPerSpatialPoint(*a1);
  if (NumFiltersPerSpatialPoint == 2)
  {
    CoordinateTree = IR::IRData::getCoordinateTree(&buf, *a1);
    if (buf == 1)
    {
      v6 = v52;
      v5 = v53;
      if (0x6DB6DB6DB6DB6DB7 * ((v54[1] - v54[0]) >> 3) == (v53 - v52) >> 2)
      {
        __p = 0;
        v49 = 0;
        v50 = 0;
        if (v53 == v52)
        {
          v8 = 0;
LABEL_39:
          FilterLength = IR::IRData::getFilterLength(*a1);
          vg::hrtf::IRGrid::GetIRGrid(v44, v8, FilterLength);
          if (v8)
          {
            v23 = 0;
            v24 = 0;
            do
            {
              std::vector<float>::vector[abi:ne200100](v41, FilterLength);
              std::vector<std::vector<float>>::vector[abi:ne200100](v43, 2uLL, v41);
              if (v41[0])
              {
                v41[1] = v41[0];
                operator delete(v41[0]);
              }

              std::vector<float>::vector[abi:ne200100](v42, 2uLL);
              IR::IRCoordinates::IRCoordinates(v41);
              IR::IRCoordinates::set();
              IR::IRCoordinates::set();
              IR::IRData::getInterpolatedTimeDomainCoeffs();
              v25 = *&v44[8];
              if (*&v44[8] >= v45)
              {
                v27 = (*&v44[8] - *v44) >> 3;
                if ((v27 + 1) >> 61)
                {
                  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                }

                v28 = (v45 - *v44) >> 2;
                if (v28 <= v27 + 1)
                {
                  v28 = v27 + 1;
                }

                if (v45 - *v44 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v29 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v29 = v28;
                }

                if (v29)
                {
                  _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v44, v29);
                }

                v30 = (8 * v27);
                *v30 = *(__p + v24);
                v26 = 8 * v27 + 8;
                v31 = v30 - (*&v44[8] - *v44);
                memcpy(v31, *v44, *&v44[8] - *v44);
                v32 = *v44;
                *v44 = v31;
                *&v44[8] = v26;
                v45 = 0;
                if (v32)
                {
                  operator delete(v32);
                }
              }

              else
              {
                **&v44[8] = *(__p + v24);
                v26 = v25 + 8;
              }

              *&v44[8] = v26;
              v33 = v43[0];
              v34 = v46;
              if (v46 + v23 != v43[0])
              {
                std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v46 + v23), *v43[0], *(v43[0] + 8), (*(v43[0] + 8) - *v43[0]) >> 2);
                v33 = v43[0];
                v34 = v46;
              }

              v35 = (v34 + v23 + 32);
              if (v35 != (v33 + 24))
              {
                std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v35, *(v33 + 24), *(v33 + 32), (*(v33 + 32) - *(v33 + 24)) >> 2);
                v34 = v46;
              }

              v36 = v42[0];
              v37 = v34 + v23;
              *(v37 + 24) = *v42[0];
              *(v37 + 56) = v36[1];
              v42[1] = v36;
              operator delete(v36);
              v41[0] = v43;
              std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v41);
              v24 += 8;
              v23 += 64;
              v8 = (v8 - 1);
            }

            while (v8);
          }

          *a2 = *v44;
          *(a2 + 16) = v45;
          memset(v44, 0, sizeof(v44));
          *(a2 + 24) = v46;
          *(a2 + 40) = v47;
          v45 = 0;
          v46 = 0uLL;
          v47 = 0;
          *(a2 + 48) = 1;
          v41[0] = &v46;
          std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](v41);
          if (*v44)
          {
            *&v44[8] = *v44;
            operator delete(*v44);
          }
        }

        else
        {
          v7 = 0;
          v8 = 0;
          v9 = 0;
          while (1)
          {
            v10 = v54[0] + 56 * v9;
            if (*v10)
            {
              v38 = __VGLogSharedInstance(CoordinateTree);
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_67;
              }

              *v44 = 0;
              v39 = " Subnode dimension must be of Azimuth type. ";
              goto LABEL_66;
            }

            if (*(v10 + 32) != *(v10 + 40))
            {
              break;
            }

            v12 = *(v10 + 8);
            v11 = *(v10 + 16);
            if (v12 != v11)
            {
              v13 = v6[v9];
              do
              {
                v14 = *v12;
                if (v7 >= v50)
                {
                  v15 = (v7 - __p) >> 3;
                  if ((v15 + 1) >> 61)
                  {
                    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
                  }

                  v16 = (v50 - __p) >> 2;
                  if (v16 <= v15 + 1)
                  {
                    v16 = v15 + 1;
                  }

                  if (v50 - __p >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v17 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v17 = v16;
                  }

                  if (v17)
                  {
                    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v17);
                  }

                  v18 = (8 * v15);
                  *v18 = v13;
                  v18[1] = v14;
                  v7 = (8 * v15 + 8);
                  memcpy((8 * v15 - (v49 - __p)), __p, v49 - __p);
                  CoordinateTree = __p;
                  __p = (8 * v15 - (v49 - __p));
                  v49 = v7;
                  v50 = 0;
                  if (CoordinateTree)
                  {
                    operator delete(CoordinateTree);
                  }
                }

                else
                {
                  *v7 = v13;
                  *(v7 + 1) = v14;
                  v7 += 8;
                }

                v49 = v7;
                v8 = (v8 + 1);
                ++v12;
              }

              while (v12 != v11);
              v6 = v52;
              v5 = v53;
            }

            if (++v9 >= ((v5 - v6) >> 2))
            {
              goto LABEL_39;
            }
          }

          v38 = __VGLogSharedInstance(CoordinateTree);
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_67;
          }

          *v44 = 0;
          v39 = " Unexpected dimension in subnode. ";
LABEL_66:
          _os_log_impl(&dword_270F06000, v38, OS_LOG_TYPE_ERROR, v39, v44, 2u);
LABEL_67:

          *a2 = 0;
          *(a2 + 48) = 0;
        }

        if (__p)
        {
          v49 = __p;
          operator delete(__p);
        }

        goto LABEL_35;
      }

      v20 = __VGLogSharedInstance(CoordinateTree);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        v21 = " Wrong subnode count in coordinate tree. ";
        goto LABEL_33;
      }
    }

    else
    {
      v20 = __VGLogSharedInstance(CoordinateTree);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        v21 = " Elevation must be the first level of coordinates in coordinate tree. ";
LABEL_33:
        _os_log_impl(&dword_270F06000, v20, OS_LOG_TYPE_ERROR, v21, v44, 2u);
      }
    }

    *a2 = 0;
    *(a2 + 48) = 0;
LABEL_35:
    *v44 = v54;
    std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](v44);
    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    return;
  }

  v19 = __VGLogSharedInstance(NumFiltersPerSpatialPoint);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_ERROR, " Incorrect number of filters in IRData. Expected two filters, left and right ears. ", &buf, 2u);
  }

  *a2 = 0;
  *(a2 + 48) = 0;
}

void sub_270F4895C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  IR::IRCoordinateTree::~IRCoordinateTree((v29 - 160));
  _Unwind_Resume(a1);
}

void vg::hrtf::IRGrid::GetIRGrid(uint64_t *__return_ptr a1@<X8>, vg::hrtf::IRGrid *this@<X0>, unint64_t a3@<X1>)
{
  v4 = this;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(a1, this);
  std::vector<vg::hrtf::IRFilters>::reserve(a1 + 3, v4);
  for (; v4; v4 = (v4 - 1))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<float>::reserve(&v8, a3);
    std::vector<float>::reserve(&__p, a3);
    v6 = a1[4];
    if (v6 >= a1[5])
    {
      v7 = std::vector<vg::hrtf::IRFilters>::__emplace_back_slow_path<vg::hrtf::IRFilters&>(a1 + 3, &v8);
    }

    else
    {
      std::allocator_traits<std::allocator<vg::hrtf::IRFilters>>::construct[abi:ne200100]<vg::hrtf::IRFilters,vg::hrtf::IRFilters&,void,0>((a1 + 3), a1[4], &v8);
      v7 = v6 + 64;
    }

    a1[4] = v7;
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }
  }
}

void IR::IRCoordinateTree::~IRCoordinateTree(IR::IRCoordinateTree *this)
{
  v3 = (this + 32);
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void vg::hrtf::getIRData(uint64_t *a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v11 = *v9;
  v10 = v9[1];
  LODWORD(__p) = 0;
  std::vector<float>::vector[abi:ne200100](&v32, 2uLL, &__p);
  v12 = (v7 - v8) >> 3;
  std::vector<std::vector<float>>::vector[abi:ne200100](v30, v12, &v32);
  v13 = v10 - v11;
  if (v32)
  {
    v33[0] = v32;
    operator delete(v32);
  }

  LODWORD(__p) = 0;
  std::vector<float>::vector[abi:ne200100](&v32, v13 >> 1, &__p);
  std::vector<std::vector<float>>::vector[abi:ne200100](v29, (v7 - v8) >> 3, &v32);
  if (v32)
  {
    v33[0] = v32;
    operator delete(v32);
  }

  LODWORD(__p) = 0;
  std::vector<float>::vector[abi:ne200100](&v32, 2uLL, &__p);
  std::vector<std::vector<float>>::vector[abi:ne200100](v28, (v7 - v8) >> 3, &v32);
  if (v32)
  {
    v33[0] = v32;
    operator delete(v32);
  }

  v32 = 1;
  memset(v27, 0, sizeof(v27));
  std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(v27, &v32, v33, 2uLL);
  if (v7 != v8)
  {
    v14 = 0;
    v15 = 0;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v16 = 4;
    do
    {
      v17 = (*a1 + v16);
      v18 = *(v30[0] + v15);
      *v18 = *(v17 - 1);
      v18[1] = *v17;
      v19 = a1[3];
      v20 = *(v28[0] + v15);
      *v20 = *(v19 + v14 + 24);
      v20[1] = *(v19 + v14 + 56);
      v21 = *(v19 + v14);
      v22 = *(v19 + v14 + 8);
      v23 = *(v29[0] + v15);
      if (v22 != v21)
      {
        memmove(v23, v21, v22 - v21);
        v19 = a1[3];
        v23 = *(v29[0] + v15);
      }

      v24 = v19 + v14;
      v25 = *(v24 + 32);
      v26 = *(v24 + 40);
      if (v26 != v25)
      {
        memmove(&v23[v13], v25, v26 - v25);
      }

      v15 += 24;
      v16 += 8;
      v14 += 64;
      --v12;
    }

    while (v12);
  }

  operator new();
}

void sub_270F48E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char *__p, char *a28)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  if (*(v29 - 113) < 0)
  {
    operator delete(*(v29 - 136));
  }

  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v31);
  if (a15)
  {
    operator delete(a15);
  }

  __p = &a18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a24;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_270F48F40()
{
  v1 = *(v0 - 136);
  if (v1)
  {
    *(v0 - 128) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x270F48F28);
}

void sub_270F48F60()
{
  v1 = *(v0 - 136);
  if (v1)
  {
    *(v0 - 128) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x270F48F38);
}

void vg::hrtf::createIRDataWithUserData(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = *(a1 + 8);
  v25[0] = *a1;
  v25[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  vg::hrtf::getIRValues(v25, &v26);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v30)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<vg::hrtf::IRFilters>::__init_with_size[abi:ne200100]<vg::hrtf::IRFilters*,vg::hrtf::IRFilters*>(&v22, v28, v29, (v29 - v28) >> 6);
    if (v30)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v19, v26, v27, (v27 - v26) >> 3);
      IR::IRData::getSampleRate(*a1);
      *buf = 0;
      v16 = 0;
      v17 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(buf, v19, v20, (v20 - v19) >> 3);
      memset(v18, 0, 24);
      std::vector<vg::hrtf::IRFilters>::__init_with_size[abi:ne200100]<vg::hrtf::IRFilters*,vg::hrtf::IRFilters*>(v18, v22, v23, (v23 - v22) >> 6);
      PeriodForCyclicalDimensions = IR::IRData::getPeriodForCyclicalDimensions(*a1);
      memset(v14, 0, sizeof(v14));
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v14, *PeriodForCyclicalDimensions, *(PeriodForCyclicalDimensions + 8), (*(PeriodForCyclicalDimensions + 8) - *PeriodForCyclicalDimensions) >> 2);
      InterpolationMethod = IR::IRData::getInterpolationMethod(*a1);
      memset(__p, 0, sizeof(__p));
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *InterpolationMethod, *(InterpolationMethod + 8), (*(InterpolationMethod + 8) - *InterpolationMethod) >> 2);
      if (v5)
      {
        CFRetain(v5);
        v10 = CFGetTypeID(v5);
        if (v10 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        CFRetain(v5);
      }

      vg::hrtf::getIRData(buf);
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v11 = __VGLogSharedInstance(v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " Failed to create IR values from IRData. ", buf, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
  if (v30 == 1)
  {
    *buf = &v28;
    std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }
}

void sub_270F49274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v28);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  vg::hrtf::IRGrid::~IRGrid(&a17);
  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  a17 = &a27;
  std::vector<vg::hrtf::IRFilters>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::optional<vg::hrtf::IRGrid>::~optional(v29 - 120);

  _Unwind_Resume(a1);
}

void sub_270F49360()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v0);
  }

  JUMPOUT(0x270F49354);
}

uint64_t *std::vector<std::vector<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<IR::IRCoordinateType>::__init_with_size[abi:ne200100]<IR::IRCoordinateType const*,IR::IRCoordinateType const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F4952C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void vg::load2DVectorData<float>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v8];
  std::vector<float>::vector[abi:ne200100](__p, a3 * a2);
  [v9 getBytes:__p[0] length:4 * a3 * a2];
  v10 = (((4 * a3 * a2) & 0x3FFFFFFFCLL) + 31) & 0x7FFFFFFE0;
  *a4 = 0;
  *(a4 + 8) = v10 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v11 = memptr;
  *a4 = memptr;
  *(a4 + 16) = a2;
  *(a4 + 20) = a3;
  v12 = __p[0];
  if (a2)
  {
    LODWORD(v13) = 0;
    v14 = __p[0];
    do
    {
      if (a3)
      {
        v15 = 1;
        v16 = v13;
        v17 = v14;
        do
        {
          v18 = *v17++;
          v11[v16] = v18;
          v19 = v15++;
          v16 += a2;
        }

        while (v19 < a3);
      }

      v13 = (v13 + 1);
      v14 += 4 * a3;
    }

    while (v13 < a2);
  }

  if (v12)
  {
    __p[1] = v12;
    operator delete(v12);
  }
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  std::vector<void const*>::reserve(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_270F49928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<IR::IRCoordinateTree>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<IR::IRCoordinateTree>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 3;
    do
    {
      v8 = v5;
      std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v8);
      v6 = *(v5 - 3);
      if (v6)
      {
        *(v5 - 2) = v6;
        operator delete(v6);
      }

      v7 = v5 - 4;
      v5 -= 7;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__shared_ptr_emplace<IR::IRData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2880E6FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743B9370);
}

uint64_t vg::hrtf::HRTFDecoderModelImpl::init(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  isANESupported = vg::shared::VGE5RT::isANESupported(a1);
  vg::shared::VGE5RT::compileModel(a2, isANESupported, &__p);
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, &__p);
  v7 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "face_encodings");
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(InputPorts, &__p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = v9[5];
  v10 = v9[6];
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v13 = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "ear_encodings");
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(v13, &__p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = v14[5];
  v15 = v14[6];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 56);
  *(a1 + 48) = v16;
  *(a1 + 56) = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "hrtf");
  v19 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(OutputPorts, &__p);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v21 = v19[5];
  v20 = v19[6];
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 72);
  *(a1 + 64) = v21;
  *(a1 + 72) = v20;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(a1 + 64));
  result = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  if (result)
  {
    E5RT::TensorDescriptor::AllocateMemory();
    std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>((a1 + 80), &__p);
    v25 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = *(a1 + 88);
    v29 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    v27 = v29;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    E5RT::ExecutionStream::CreateExecutionStream(&__p, v27);
    std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>((a1 + 16), &__p);
    v28 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, "", a3);
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 96) = __p;
    return *(a1 + 16) && *a1 != 0;
  }

  return result;
}

void vg::hrtf::HRTFDecoderModelImpl::predict(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) != 32)
  {
    v8 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      v9 = " Face encoding input dimension mismatch. ";
LABEL_9:
      _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, v9, v18, 2u);
    }

LABEL_10:

    *a3 = 0;
    *(a3 + 24) = 0;
    return;
  }

  if (*(a2 + 40) != 64)
  {
    v8 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      v9 = " Ear encoding input dimension mismatch. ";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(a1[4]);
  v7 = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  vg::shared::VGE5RT::convert1DVectorToSurface(a2, v7);
  E5RT::BufferObject::CreateBufferFromHandle<__IOSurface *>();
  v24 = v18[0];
  if (v18[0])
  {
    operator new();
  }

  v25 = 0;
  E5RT::IOPort::BindMemoryObject();
  v18[0] = 0;
  v10 = E5RT::IOPort::GetPortDescriptorRef(a1[6]);
  v11 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v10);
  vg::shared::VGE5RT::convert1DVectorToSurface(a2 + 24, v11);
  E5RT::BufferObject::CreateBufferFromHandle<__IOSurface *>();
  v22 = 0;
  v23 = 0;
  E5RT::IOPort::BindMemoryObject();
  v18[0] = 0;
  v12 = a1[1];
  v20 = *a1;
  v21 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  E5RT::ExecutionStream::EncodeOperation();
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  E5RT::ExecutionStream::ExecuteStreamSync(a1[2]);
  E5RT::ExecutionStream::ResetStream(a1[2]);
  v13 = E5RT::BufferObject::GetHandle<__IOSurface *>();
  v14 = E5RT::IOPort::GetPortDescriptorRef(a1[8]);
  v15 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v14);
  vg::shared::VGE5RT::convertSurfaceTo1DVector(v18, v13, v15, v16);
  v17 = v18[1];
  *a3 = v18[0];
  *(a3 + 8) = v17;
  *(a3 + 16) = v19;
  *(a3 + 24) = 1;
}

void sub_270F4A218(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_270F4A360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::hrtf::HRTFDecoderModel>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::hrtf::HRTFDecoderModel::HRTFDecoderModel(vg::hrtf::HRTFDecoderModel *this)
{
  operator new();
}

{
  operator new();
}

vg::hrtf::HRTFDecoderModel **std::unique_ptr<vg::hrtf::HRTFDecoderModel>::~unique_ptr[abi:ne200100](vg::hrtf::HRTFDecoderModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::HRTFDecoderModel::~HRTFDecoderModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::HRTFDecoderModel::~HRTFDecoderModel(vg::hrtf::HRTFDecoderModel *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    v2 = *(v1 + 88);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v1 + 56);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v1 + 40);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(v1 + 24);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    MEMORY[0x2743B9370](v1, 0x1032C400634D662);
  }
}

BOOL vg::hrtf::DTFModelImpl::init(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  vg::shared::VGE5RT::compileModel(a2, 1, &__p);
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, &__p);
  v5 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "hrtf");
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(InputPorts, &__p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v9 = v7[5];
  v8 = v7[6];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "dtf");
  v12 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(OutputPorts, &__p);
  if (!v12)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v14 = v12[5];
  v13 = v12[6];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 56);
  *(a1 + 48) = v14;
  *(a1 + 56) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v16 = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "ctf");
  v17 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(v16, &__p);
  if (!v17)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = v17[5];
  v18 = v17[6];
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 72);
  *(a1 + 64) = v19;
  *(a1 + 72) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(a1 + 48));
  v22 = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  v23 = E5RT::IOPort::GetPortDescriptorRef(*(a1 + 64));
  v24 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v23);
  result = 0;
  if (v22 && v24)
  {
    E5RT::TensorDescriptor::AllocateMemory();
    std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>((a1 + 80), &__p);
    v26 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    E5RT::TensorDescriptor::AllocateMemory();
    std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>((a1 + 96), &__p);
    v27 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(a1 + 88);
    v33 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    v29 = *(a1 + 104);
    v32 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    v30 = v32;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    E5RT::ExecutionStream::CreateExecutionStream(&__p, v30);
    std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>((a1 + 16), &__p);
    v31 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, "", a3);
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 112) = __p;
    return *(a1 + 16) && *a1 != 0;
  }

  return result;
}

void sub_270F4A8BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (__p)
  {
    vg::hrtf::HRTFDecoderModelImpl::init();
  }

  _Unwind_Resume(exception_object);
}

void vg::hrtf::DTFModelImpl::predict(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 284160)
  {
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(a1[4]);
    v7 = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
    vg::shared::VGE5RT::convert1DVectorToSurface(a2, v7);
    E5RT::BufferObject::CreateBufferFromHandle<__IOSurface *>();
    v25 = v19;
    if (v19)
    {
      operator new();
    }

    v26 = 0;
    E5RT::IOPort::BindMemoryObject();
    v19 = 0;
    v9 = a1[1];
    v23 = *a1;
    v24 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::ExecutionStream::EncodeOperation();
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    E5RT::ExecutionStream::ExecuteStreamSync(a1[2]);
    E5RT::ExecutionStream::ResetStream(a1[2]);
    v10 = E5RT::BufferObject::GetHandle<__IOSurface *>();
    v11 = E5RT::BufferObject::GetHandle<__IOSurface *>();
    v12 = E5RT::IOPort::GetPortDescriptorRef(a1[6]);
    v13 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v12);
    v14 = E5RT::IOPort::GetPortDescriptorRef(a1[8]);
    v15 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v14);
    vg::shared::VGE5RT::convertSurfaceTo2DMatrix(&v19, v10, v13, v16);
    vg::shared::VGE5RT::convertSurfaceTo1DVector(v21, v11, v15, v17);
    *a3 = v19;
    *(a3 + 8) = v20;
    v18 = v21[1];
    *(a3 + 24) = v21[0];
    *(a3 + 32) = v18;
    *(a3 + 40) = v22;
    *(a3 + 48) = 1;
  }

  else
  {
    v8 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, " HRTF input dimension mismatch. ", &v19, 2u);
    }

    *a3 = 0;
    *(a3 + 48) = 0;
  }
}

void sub_270F4AB9C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_270F4ACF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::hrtf::DTFModel>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::hrtf::DTFModel::DTFModel(vg::hrtf::DTFModel *this)
{
  operator new();
}

{
  operator new();
}

void ****std::unique_ptr<vg::hrtf::DTFModel>::~unique_ptr[abi:ne200100](void ****a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::DTFModel::~DTFModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::DTFModel::~DTFModel(void ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    vg::hrtf::DTFModelImpl::~DTFModelImpl(v2);
    MEMORY[0x2743B9370]();
  }
}

uint64_t vg::hrtf::DTFBiasModelImpl::init(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  isANESupported = vg::shared::VGE5RT::isANESupported(a1);
  vg::shared::VGE5RT::compileModel(a2, isANESupported, &__p);
  std::shared_ptr<E5RT::ExecutionStreamOperation>::operator=[abi:ne200100]<E5RT::ExecutionStreamOperation,std::default_delete<E5RT::ExecutionStreamOperation>,0>(a1, &__p);
  v7 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "dtf");
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(InputPorts, &__p);
  if (!v9)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v11 = v9[5];
  v10 = v9[6];
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(*a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "dtf_bias");
  v14 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::find<std::string>(OutputPorts, &__p);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = v14[5];
  v15 = v14[6];
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 56);
  *(a1 + 48) = v16;
  *(a1 + 56) = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(*(a1 + 48));
  result = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
  if (result)
  {
    E5RT::TensorDescriptor::AllocateMemory();
    std::shared_ptr<E5RT::BufferObject>::operator=[abi:ne200100]<E5RT::BufferObject,std::default_delete<E5RT::BufferObject>,0>((a1 + 64), &__p);
    v20 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(a1 + 72);
    v24 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::IOPort::BindMemoryObject();
    v22 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    E5RT::ExecutionStream::CreateExecutionStream(&__p, v22);
    std::shared_ptr<E5RT::ExecutionStream>::operator=[abi:ne200100]<E5RT::ExecutionStream,std::default_delete<E5RT::ExecutionStream>,0>((a1 + 16), &__p);
    v23 = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[0] = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    std::optional<std::string>::value_or[abi:ne200100]<char const(&)[1]>(&__p, "", a3);
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = __p;
    return *(a1 + 16) && *a1 != 0;
  }

  return result;
}

void sub_270F4B238(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vg::hrtf::DTFBiasModelImpl::predict(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 64 && *(a2 + 20) == 2842)
  {
    PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(a1[4]);
    v7 = E5RT::OperandDescriptor::TryAsTensorDescriptor(PortDescriptorRef);
    vg::shared::VGE5RT::convert2DMatrixToSurface(a2, v7);
    E5RT::BufferObject::CreateBufferFromHandle<__IOSurface *>();
    v18 = v14;
    if (v14)
    {
      operator new();
    }

    v19 = 0;
    E5RT::IOPort::BindMemoryObject();
    v14 = 0;
    v9 = a1[1];
    v16 = *a1;
    v17 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    E5RT::ExecutionStream::EncodeOperation();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    E5RT::ExecutionStream::ExecuteStreamSync(a1[2]);
    E5RT::ExecutionStream::ResetStream(a1[2]);
    v10 = E5RT::BufferObject::GetHandle<__IOSurface *>();
    v11 = E5RT::IOPort::GetPortDescriptorRef(a1[6]);
    v12 = E5RT::OperandDescriptor::TryAsTensorDescriptor(v11);
    vg::shared::VGE5RT::convertSurfaceTo2DMatrix(&v14, v10, v12, v13);
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 24) = 1;
  }

  else
  {
    v8 = __VGLogSharedInstance(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_270F06000, v8, OS_LOG_TYPE_ERROR, " DTF input dimension mismatch. ", &v14, 2u);
    }

    *a3 = 0;
    *(a3 + 24) = 0;
  }
}

void sub_270F4B440(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_270F4B570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::hrtf::DTFBiasModel>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::hrtf::DTFBiasModel::DTFBiasModel(vg::hrtf::DTFBiasModel *this)
{
  operator new();
}

{
  operator new();
}

vg::hrtf::DTFBiasModel **std::unique_ptr<vg::hrtf::DTFBiasModel>::~unique_ptr[abi:ne200100](vg::hrtf::DTFBiasModel **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::DTFBiasModel::~DTFBiasModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::DTFBiasModel::~DTFBiasModel(vg::hrtf::DTFBiasModel *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    v2 = *(v1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = *(v1 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v1 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    v6 = *(v1 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    MEMORY[0x2743B9370](v1, 0x1032C40BF93447ELL);
  }
}

void vg::hrtf::DTFModelImpl::~DTFModelImpl(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[11];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[9];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[7];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[5];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = this[3];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = this[1];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t vg::hrtf::HRTFDecoderModelImpl::init()
{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 8))();
}

{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 8))();
}

{
  OUTLINED_FUNCTION_0_0();
  return (*(v0 + 8))();
}

std::string *vg::hrtf::HRTFModelImpl::HRTFModelImpl(std::string *this, const vg::hrtf::HRTFModelImplInput *a2, NSString *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v7 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v8 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v9 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v9;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v10 = *(a2 + 120);
    this[5].__r_.__value_.__r.__words[2] = *(a2 + 17);
    *&this[5].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v11 = *(a2 + 9);
    this[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
    *&this[6].__r_.__value_.__l.__data_ = v11;
  }

  this[7].__r_.__value_.__s.__data_[0] = 0;
  LOBYTE(__p[0]) = 0;
  vg::hrtf::HRTFModelImpl::setDefaultsWithSuiteName(__p, @"com.apple.visage");
  this[7].__r_.__value_.__s.__data_[0] = __p[0];
  v13 = __VGLogSharedInstance(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    vg::hrtf::HRTFModelImpl::HRTFModelOptions::description(__p, &this[7]);
    if (v17 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    *buf = 136315138;
    v19 = v14;
    _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_INFO, " HRTFModel initialized with options:\n%s ", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_270F4BA78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vg::hrtf::HRTFModelImpl::initOptions(vg::hrtf::HRTFModelImpl *this, uint64_t a2, NSString *a3)
{
  v4 = 0;
  vg::hrtf::HRTFModelImpl::setDefaultsWithSuiteName(&v4, @"com.apple.visage");
  return v4;
}

void vg::hrtf::HRTFModelImpl::HRTFModelOptions::description(uint64_t *__return_ptr a1@<X8>, vg::hrtf::HRTFModelImpl::HRTFModelOptions *this@<X0>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  v7[2] = 12;
  v6[2] = 12;
  v7[0] = v3;
  v8 = v12;
  *__len = xmmword_270FA6E30;
  v10 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v11 = 0;
  __src = v12;
  v6[0] = 1;
  v6[1] = v7;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v8, "Skip DtfBias model: {}", 22, v6);
  v4 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = __src;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = __len[1];
  if (v4)
  {
    memmove(a1, v5, v4);
  }

  *(a1 + v4) = 0;
  if (__src != v12)
  {
    operator delete(__src);
  }
}

void sub_270F4BCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p)
{
  if (__p != v55)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::hrtf::HRTFModelImpl::setDefaultsWithSuiteName(_BYTE *a1, void *a2)
{
  v5 = a2;
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v5];
  v4 = [v3 objectForKey:@"skipDtfBiasModel"];

  if (v4)
  {
    *a1 = [v3 BOOLForKey:@"skipDtfBiasModel"];
  }
}

void vg::hrtf::HRTFModelImpl::preprocessData(const vg::hrtf::HRTFModelInputs *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  v5 = VGLogHRTFModel(a3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    vg::hrtf::HRTFModelImpl::preprocessData();
  }

  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 5) > 2)
  {
    memset(v30, 0, sizeof(v30));
    std::vector<vg::hrtf::FaceFrameData>::__init_with_size[abi:ne200100]<std::__wrap_iter<vg::hrtf::FaceFrameData const*>,std::__wrap_iter<vg::hrtf::FaceFrameData const*>>(v30, v7, v7 + 288, 3uLL);
    vg::hrtf::preprocessFaceCaptureData(v30, 320, 240, &v27);
    if (v29)
    {
      vg::hrtf::preprocessEarCaptureData(a1 + 3, 320, 240, 0, &v24);
      if (v26)
      {
        vg::hrtf::preprocessEarCaptureData(a1 + 6, 320, 240, 1, &v21);
        if (v23)
        {
          if ((v29 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v15 = 0uLL;
          v16 = 0;
          std::vector<vg::hrtf::ProcessedROIData>::__init_with_size[abi:ne200100]<vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(&v15, v27, v28, 0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 4));
          if ((v26 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v17 = 0uLL;
          v18 = 0;
          std::vector<vg::hrtf::ProcessedROIData>::__init_with_size[abi:ne200100]<vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(&v17, v24, v25, 0xCCCCCCCCCCCCCCCDLL * ((v25 - v24) >> 4));
          if ((v23 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v19 = 0uLL;
          v20 = 0;
          std::vector<vg::hrtf::ProcessedROIData>::__init_with_size[abi:ne200100]<vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(&v19, v21, v22, 0xCCCCCCCCCCCCCCCDLL * ((v22 - v21) >> 4));
          *a2 = v15;
          *(a2 + 16) = v16;
          v16 = 0;
          v15 = 0uLL;
          *(a2 + 24) = v17;
          *(a2 + 40) = v18;
          v18 = 0;
          v17 = 0uLL;
          *(a2 + 48) = v19;
          *(a2 + 64) = v20;
          v20 = 0;
          v19 = 0uLL;
          *(a2 + 72) = 1;
          v31 = &v19;
          std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v31);
          v31 = &v17;
          std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v31);
          v31 = &v15;
          std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v31);
        }

        else
        {
          v14 = VGLogHRTFModel(v11);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            vg::hrtf::HRTFModelImpl::preprocessData();
          }

          *a2 = 0;
          *(a2 + 72) = 0;
        }

        if (v23 == 1)
        {
          *&v15 = &v21;
          std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v15);
        }
      }

      else
      {
        v13 = VGLogHRTFModel(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          vg::hrtf::HRTFModelImpl::preprocessData();
        }

        *a2 = 0;
        *(a2 + 72) = 0;
      }

      if (v26 == 1)
      {
        *&v15 = &v24;
        std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v15);
      }
    }

    else
    {
      v12 = VGLogHRTFModel(v9);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        vg::hrtf::HRTFModelImpl::preprocessData();
      }

      *a2 = 0;
      *(a2 + 72) = 0;
    }

    if (v29 == 1)
    {
      *&v15 = &v27;
      std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v15);
    }

    *&v15 = v30;
    std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](&v15);
  }

  else
  {
    v8 = VGLogHRTFModel(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      vg::hrtf::HRTFModelImpl::preprocessData();
    }

    *a2 = 0;
    *(a2 + 72) = 0;
  }
}

void sub_270F4C128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, int a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 56) = v27;
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100]((v28 - 56));
  *(v28 - 56) = &a9;
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100]((v28 - 56));
  if (a22 == 1)
  {
    a9 = &a19;
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a9);
  }

  if (a27 == 1)
  {
    a9 = &a24;
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a9);
  }

  if (*(v28 - 88) == 1)
  {
    a9 = (v28 - 112);
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a9);
  }

  a9 = (v28 - 80);
  std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

id VGLogHRTFModel(uint64_t a1)
{
  if (VGLogHRTFModel(void)::onceToken != -1)
  {
    VGLogHRTFModel();
  }

  v2 = VGLogHRTFModel(void)::handle;

  return v2;
}

void vg::hrtf::HRTFModelImpl::predictHRTFData(uint64_t a1)
{
  v5 = VGLogHRTFModel(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    vg::hrtf::HRTFModelImpl::predictHRTFData();
  }

  LOBYTE(v12) = 0;
  v13 = 0;
  v11 = 0;
  isANESupported = vg::shared::VGE5RT::isANESupported(objc_autoreleasePoolPush());
  if (isANESupported)
  {
    v7 = VGLogHRTFModel(isANESupported);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      vg::hrtf::HRTFModelImpl::predictHRTFData();
    }

    LOBYTE(__p[0]) = 0;
    LOBYTE(v10[0]) = 0;
    vg::hrtf::HRTFDecoderModel::create();
  }

  v8 = VGLogHRTFModel(isANESupported);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    vg::hrtf::HRTFModelImpl::predictHRTFData();
  }

  LOBYTE(__p[0]) = 0;
  LOBYTE(v10[0]) = 0;
  vg::hrtf::HRTFDecoderModelEspresso::create();
}

void sub_270F4CDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<vg::hrtf::DTFBiasModel>::reset[abi:ne200100]((v35 - 120), 0);
  if (a35 == 1)
  {
    free(a32);
  }

  if (*(v35 - 128) == 1)
  {
    free(*(v35 - 152));
    free(*(v35 - 176));
  }

  if (*(v35 - 88) == 1)
  {
    free(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

void vg::hrtf::HRTFData::~HRTFData(void **this)
{
  if (*(this + 144) == 1)
  {
    free(this[15]);
  }

  free(this[12]);
  free(this[9]);
  free(this[6]);
  free(this[3]);
  free(*this);
}

id vg::hrtf::HRTFModelImpl::predict(uint64_t a1, const vg::hrtf::HRTFModelInputs *a2, uint64_t a3)
{
  if (*(a2 + 4) - *(a2 + 3) == *(a2 + 7) - *(a2 + 6))
  {
    LOBYTE(v23) = 0;
    v24 = 0;
    LOBYTE(v21) = 0;
    v22 = 0;
    LOBYTE(v19) = 0;
    v20 = 0;
    v6 = objc_autoreleasePoolPush();
    vg::hrtf::HRTFModelImpl::preprocessData(a2, v11, v6);
    if (v14)
    {
      if (*(a3 + 24) == 1)
      {
        vg::hrtf::writeDebugPreprocessedData(v11, a3);
      }

      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *a1, *(a1 + 8));
      }

      else
      {
        v15 = *a1;
      }

      LOBYTE(v16) = 1;
      std::string::basic_string[abi:ne200100]<0>(&v18, "faceEncoderModel");
      if (v14)
      {
        vg::hrtf::HRTFModelImpl::predict(vg::hrtf::HRTFModelInputs const&,std::optional<std::string> const&)const::$_0::operator()(&v15);
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v9 = VGLogHRTFModel(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      vg::hrtf::HRTFModelImpl::predict();
    }

    if (v14 == 1)
    {
      v17 = &v13;
      std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v17);
      v17 = &v12;
      std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v17);
      v17 = v11;
      std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    objc_autoreleasePoolPop(v6);
    if (v20 == 1)
    {
      free(v19);
    }

    if (v22 == 1)
    {
      free(v21);
    }

    if (v24 == 1)
    {
      free(v23);
    }
  }

  else
  {
    v8 = VGLogHRTFModel(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      vg::hrtf::HRTFModelImpl::predict();
    }
  }

  return 0;
}

void sub_270F4D998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  vg::hrtf::AudioProfileInputs::~AudioProfileInputs(&a10);
  std::optional<vg::hrtf::HRTFData>::~optional(&__p);
  std::optional<vg::hrtf::HRTFData>::~optional(&STACK[0x228]);
  if (*(v57 - 152) == 1)
  {
    free(*(v57 - 176));
    free(*(v57 - 200));
  }

  if (*(v57 - 120) == 1)
  {
    free(*(v57 - 144));
  }

  if (*(v57 - 88) == 1)
  {
    free(*(v57 - 112));
  }

  if (*(v57 - 56) == 1)
  {
    free(*(v57 - 80));
  }

  _Unwind_Resume(a1);
}

void vg::hrtf::HRTFModelImpl::predict(vg::hrtf::HRTFModelInputs const&,std::optional<std::string> const&)const::$_0::operator()(uint64_t a1)
{
  v5 = VGLogHRTFModel(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    vg::hrtf::HRTFModelImpl::predict(vg::hrtf::HRTFModelInputs const&,std::optional<std::string> const&)const::$_0::operator()();
  }

  v10 = 0;
  if (*(a1 + 24) == 1)
  {
    isANESupported = vg::shared::VGE5RT::isANESupported(isANESupported);
    if (isANESupported)
    {
      LOBYTE(__p) = 0;
      v9 = 0;
      vg::hrtf::EncoderModel::create();
    }
  }

  v7 = VGLogHRTFModel(isANESupported);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    vg::hrtf::HRTFModelImpl::predict(vg::hrtf::HRTFModelInputs const&,std::optional<std::string> const&)const::$_0::operator()();
  }

  LOBYTE(__p) = 0;
  v9 = 0;
  vg::hrtf::EncoderModelEspresso::create();
}

void ****std::unique_ptr<vg::hrtf::DelayCoefficientsModel>::~unique_ptr[abi:ne200100](void ****a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::DelayCoefficientsModel::~DelayCoefficientsModel(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::hrtf::AudioProfileInputs::~AudioProfileInputs(void **this)
{
  if (*(this + 375) < 0)
  {
    operator delete(this[44]);
  }

  if (*(this + 344) == 1)
  {
    free(this[40]);
  }

  free(this[37]);
  free(this[34]);
  free(this[31]);
  free(this[28]);
  free(this[25]);
  if (*(this + 192) == 1)
  {
    free(this[21]);
  }

  free(this[18]);
  free(this[15]);
  free(this[12]);
  free(this[9]);
  free(this[6]);
  free(this[3]);
  free(*this);
}

uint64_t std::optional<vg::hrtf::HRTFData>::~optional(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    if (*(a1 + 144) == 1)
    {
      free(*(a1 + 120));
    }

    free(*(a1 + 96));
    free(*(a1 + 72));
    free(*(a1 + 48));
    free(*(a1 + 24));
    free(*a1);
  }

  return a1;
}

void vg::hrtf::HRTFModel::~HRTFModel(void ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    vg::hrtf::HRTFModelImplInput::~HRTFModelImplInput(v2);
    MEMORY[0x2743B9370]();
  }
}

void vg::hrtf::HRTFModel::create(uint64_t a1@<X0>, vg::hrtf::HRTFModel **a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = VGLogHRTFModel(a1);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 23) >= 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = *a1;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Using model root path %s", buf, 0xCu);
    }

    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v23 = 0u;
    memset(&v24, 0, sizeof(v24));
    *v21 = 0u;
    *v22 = 0u;
    *v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    *v18 = 0u;
    *buf = 0u;
    *v16 = 0u;
    __str.__r_.__value_.__s.__data_[0] = 0;
    v14 = 0;
    detail::getModelPath(&__p, v9, &cfstr_FaceEncoderMlm.isa, &cfstr_FaceEncoderMod.isa);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
    if (v12 == 1 && v11 < 0)
    {
      operator delete(__p.n128_u64[0]);
    }

    if (v14)
    {
      std::string::operator=(buf, &__str);
      detail::getModelPath(&__p, v9, &cfstr_EarEncoderMlmo.isa, &cfstr_EarEncoderMode.isa);
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
      if (v12 == 1 && v11 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      if (v14)
      {
        std::string::operator=(&v16[1], &__str);
        detail::getModelPath(&__p, v9, &cfstr_LeftDtfMlmodel.isa, &cfstr_LeftDtfModelEs.isa);
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        if (v14)
        {
          std::string::operator=(v18, &__str);
          detail::getModelPath(&__p, v9, &cfstr_RightDtfMlmode.isa, &cfstr_RightDtfModelE.isa);
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
          if (v12 == 1 && v11 < 0)
          {
            operator delete(__p.n128_u64[0]);
          }

          if (v14)
          {
            std::string::operator=(&v19[1], &__str);
            detail::getModelPath(&__p, v9, &cfstr_HrtfDecoderMlm.isa, &cfstr_HrtfDecoderMod.isa);
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
            if (v12 == 1 && v11 < 0)
            {
              operator delete(__p.n128_u64[0]);
            }

            if (v14)
            {
              std::string::operator=(v21, &__str);
              detail::getModelPath(&__p, v9, &cfstr_DtfBiasMlmodel.isa, &cfstr_DtfBiasModelEs.isa);
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
              if (v12 == 1 && v11 < 0)
              {
                operator delete(__p.n128_u64[0]);
              }

              if (v14)
              {
                std::string::operator=(&v22[1], &__str);
                detail::getModelPath(&__p, v9, &cfstr_DelayMlmodel.isa, &cfstr_DelayModelEspr.isa);
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(&__str, &__p);
                if (v12 == 1 && v11 < 0)
                {
                  operator delete(__p.n128_u64[0]);
                }

                if (v14)
                {
                  std::string::operator=(&v24, &__str);
                  operator new();
                }
              }
            }
          }
        }
      }
    }

    *a2 = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[1]);
    }

    if (SHIBYTE(v22[0]) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }

    if (SHIBYTE(v19[0]) < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[1]);
    }

    if (SHIBYTE(v16[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      vg::hrtf::HRTFModel::create();
    }

    *a2 = 0;
  }
}

void sub_270F4E450(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, void *a21)
{
  MEMORY[0x2743B9370](v22, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  vg::hrtf::HRTFModelImplInput::~HRTFModelImplInput(&a21);

  _Unwind_Resume(a1);
}

void detail::getModelPath(uint64_t *__return_ptr a1@<X8>, detail *this@<X0>, NSString *a3@<X1>, NSString *a4@<X2>)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v7 = this;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCACA8];
  v25[0] = v7;
  v25[1] = v8;
  v25[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v12 = [v10 pathWithComponents:v11];

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = v13;
  if (!v12)
  {
    v18 = VGLogHRTFModel(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, "Failed to create model path from modelRootPath %@ with directory %@ and model file %@", &v19, 0x20u);
    }

    goto LABEL_8;
  }

  v15 = [v13 fileExistsAtPath:v12];
  if ((v15 & 1) == 0)
  {
    v18 = VGLogHRTFModel(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      vg::ear_detection::EarLandmarksModel::create(v12, v18);
    }

LABEL_8:

    v17 = 0;
    *a1 = 0;
    goto LABEL_9;
  }

  v16 = v12;
  std::string::basic_string[abi:ne200100]<0>(a1, [v12 UTF8String]);
  v17 = 1;
LABEL_9:
  *(a1 + 24) = v17;
}

void ___ZL14VGLogHRTFModelv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "HRTFModel");
  v1 = VGLogHRTFModel(void)::handle;
  VGLogHRTFModel(void)::handle = v0;
}

uint64_t *std::vector<vg::hrtf::FaceFrameData>::__init_with_size[abi:ne200100]<std::__wrap_iter<vg::hrtf::FaceFrameData const*>,std::__wrap_iter<vg::hrtf::FaceFrameData const*>>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vg::hrtf::FaceFrameData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F4E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<vg::hrtf::FaceFrameData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<vg::hrtf::FaceFrameData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData const*,vg::hrtf::FaceFrameData const*,vg::hrtf::FaceFrameData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 64;
    do
    {
      v7 = v6 - 64;
      *v4 = *(v6 - 64);
      *(v4 + 8) = *(v6 - 56);
      v9 = *(v6 - 32);
      v8 = *(v6 - 16);
      *(v4 + 16) = *(v6 - 48);
      *(v4 + 32) = v9;
      *(v4 + 48) = v8;
      cva::MatrixData<float,0ul,0ul,false>::MatrixData((v4 + 64), v6, (2 * *(v6 + 16)));
      *(v4 + 80) = *(v6 + 16);
      v4 = v14 + 96;
      v14 += 96;
      v6 += 96;
    }

    while (v7 + 96 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FaceFrameData>,vg::hrtf::FaceFrameData*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::FaceFrameData>,std::reverse_iterator<vg::hrtf::FaceFrameData*>,std::reverse_iterator<vg::hrtf::FaceFrameData*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      free(*(v6 - 32));

      v7 = *(v6 - 96);
      v6 -= 96;
    }

    while (v6 != a5);
  }
}

void std::vector<vg::hrtf::FaceFrameData>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    free(*(i - 32));

    v4 = *(i - 96);
  }

  a1[1] = v2;
}

uint64_t *std::vector<vg::hrtf::ProcessedROIData>::__init_with_size[abi:ne200100]<vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<vg::hrtf::ProcessedROIData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_270F4EA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<vg::hrtf::ProcessedROIData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>>(a1, a2);
  }

  std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v13;
    do
    {
      *v4 = *v6;
      *(v4 + 8) = *(v6 + 8);
      *(v4 + 16) = *(v6 + 16);
      *(v4 + 24) = *(v6 + 24);
      *(v4 + 32) = *(v6 + 32);
      v8 = *(v6 + 64);
      *(v4 + 48) = *(v6 + 48);
      *(v4 + 64) = v8;
      v6 += 80;
      v7 += 80;
      v4 = v7;
    }

    while (v6 != a3);
    v13 = v7;
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v7;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>,std::reverse_iterator<vg::hrtf::ProcessedROIData*>,std::reverse_iterator<vg::hrtf::ProcessedROIData*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>,std::reverse_iterator<vg::hrtf::ProcessedROIData*>,std::reverse_iterator<vg::hrtf::ProcessedROIData*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 80);
      v6 -= 80;
    }

    while (v6 != a5);
  }
}

void std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<vg::hrtf::ProcessedROIData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<vg::hrtf::ProcessedROIData>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {

    v4 = *(i - 80);
  }

  a1[1] = v2;
}

void std::__optional_storage_base<vg::hrtf::DTFOutputs,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vg::hrtf::DTFOutputs,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      v3 = *a1;
      v4 = *(a1 + 8);
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      *a2 = v3;
      *(a2 + 8) = v4;
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v8;
      *(a2 + 24) = v6;
      *(a2 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 40) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    free(*(a1 + 24));
    free(*a1);
    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v10 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 48) = 1;
  }
}

vg::hrtf::EncoderModelEspresso **std::unique_ptr<vg::hrtf::EncoderModelEspresso>::~unique_ptr[abi:ne200100](vg::hrtf::EncoderModelEspresso **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::hrtf::EncoderModelEspresso::~EncoderModelEspresso(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

vg::hrtf::EncoderModelImpl **std::unique_ptr<vg::hrtf::EncoderModel>::reset[abi:ne200100](vg::hrtf::EncoderModelImpl ***a1, vg::hrtf::EncoderModelImpl **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    vg::hrtf::EncoderModel::~EncoderModel(result);

    JUMPOUT(0x2743B9370);
  }

  return result;
}

uint64_t std::optional<vg::hrtf::HRTFPrepData>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 48);
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 24);
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a1;
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  return a1;
}

void std::__optional_storage_base<vg::hrtf::DelayData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<vg::hrtf::DelayData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      v3 = *a1;
      v4 = *(a1 + 8);
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      *a2 = v3;
      *(a2 + 8) = v4;
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 16) = 0;
      v6 = *(a1 + 24);
      v7 = *(a1 + 32);
      v8 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v8;
      *(a2 + 24) = v6;
      *(a2 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      *(a2 + 40) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    free(*(a1 + 24));
    free(*a1);
    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v10 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v10;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 48) = 1;
  }
}

uint64_t vg::hrtf::DelayData::DelayData(uint64_t a1, uint64_t a2)
{
  v4 = cva::MatrixData<float,0ul,0ul,false>::MatrixData(a1, a2, *(a2 + 16));
  *(v4 + 4) = *(a2 + 16);
  cva::MatrixData<float,0ul,0ul,false>::MatrixData(v4 + 3, (a2 + 24), *(a2 + 40));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void **vg::hrtf::HRTFData::HRTFData(void **this, const void **a2)
{
  v4 = cva::MatrixData<float,0ul,0ul,false>::MatrixData(this, a2, *(a2 + 4));
  *(v4 + 4) = *(a2 + 4);
  cva::MatrixData<float,0ul,0ul,false>::MatrixData(v4 + 3, a2 + 3, *(a2 + 10));
  *(this + 10) = *(a2 + 10);
  cva::MatrixData<float,0ul,0ul,false>::MatrixData(this + 6, a2 + 6, (*(a2 + 17) * *(a2 + 16)));
  this[8] = a2[8];
  cva::MatrixData<float,0ul,0ul,false>::MatrixData(this + 9, a2 + 9, (*(a2 + 23) * *(a2 + 22)));
  this[11] = a2[11];
  cva::MatrixData<float,0ul,0ul,false>::MatrixData(this + 12, a2 + 12, *(a2 + 28));
  *(this + 28) = *(a2 + 28);
  std::__optional_copy_base<cva::Matrix<float,0u,1u,false>,false>::__optional_copy_base[abi:ne200100]((this + 15), (a2 + 15));
  return this;
}

void sub_270F4F0F8(_Unwind_Exception *a1)
{
  free(v1[12]);
  free(v1[9]);
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<cva::Matrix<float,0u,1u,false>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    cva::MatrixData<float,0ul,0ul,false>::MatrixData(a1, a2, *(a2 + 16));
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_270F4F1A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void vg::hrtf::HRTFModelImplInput::~HRTFModelImplInput(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

unsigned __int8 *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_270F4F440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}