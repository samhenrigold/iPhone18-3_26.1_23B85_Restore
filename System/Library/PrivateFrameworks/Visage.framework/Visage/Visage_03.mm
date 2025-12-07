void sub_270F5DEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  vg::IOSurfaceData::~IOSurfaceData(va);

  _Unwind_Resume(a1);
}

void vg::hrtf::preprocessCaptureData(float32x4_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  context = objc_autoreleasePoolPush();
  v70 = 0uLL;
  v71 = 0;
  std::vector<vg::hrtf::ProcessedROIData>::reserve(&v70, (a1[1] - *a1) >> 5);
  v7 = *a1;
  v52 = a1[1];
  if (*a1 == v52)
  {
LABEL_23:
    *a4 = v70;
    *(a4 + 16) = v71;
    v71 = 0;
    v70 = 0uLL;
    *(a4 + 24) = 1;
  }

  else
  {
    v8.i64[0] = a3;
    v8.i64[1] = a2;
    v9.i64[0] = -1;
    v9.i64[1] = -1;
    v10 = vcvtq_f64_u64(vaddq_s64(v8, v9));
    v50 = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v10);
    while (1)
    {
      v69 = 0x400000003;
      v11 = [*(v7 + 1) width];
      *buf = __PAIR64__([*(v7 + 1) height], v11);
      *v12.i64 = vg::hrtf::makeBoxWithAspectRatio(v7 + 1, buf, &v69);
      v58 = v12;
      v13 = [*v7 height];
      v14.i64[0] = [*v7 width];
      v14.i64[1] = v13;
      v15.i64[0] = -1;
      v15.i64[1] = -1;
      v16 = vcvtq_f64_s64(vaddq_s64(v14, v15));
      v68 = vcvtq_u32_f32(vmulq_f32(v58, vcvt_hight_f32_f64(vcvt_f32_f64(v16), v16)));
      v17 = createCropAndScaledSurface(*v7, &v68, a2, a3);
      v56 = v17;
      if (!v17)
      {
        break;
      }

      v18 = vg::shared::getPersonSegmentationMapFromVision(*v7, 0);
      v19 = v18;
      v55 = v18;
      if (!v18)
      {
        v45 = __VGLogSharedInstance(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v45, OS_LOG_TYPE_ERROR, " Failed to get person segmentation mask. ", buf, 2u);
        }

        *a4 = 0;
        *(a4 + 24) = 0;
        goto LABEL_41;
      }

      v21 = createCropAndScaledSurface(v18, &v68, a2, a3);
      v54 = v21;
      if (!v21)
      {
        v46 = __VGLogSharedInstance(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v46, OS_LOG_TYPE_ERROR, " Failed to crop and rescale mask. ", buf, 2u);
        }

        *a4 = 0;
        *(a4 + 24) = 0;
        goto LABEL_40;
      }

      v22 = createMaskedImageARGB32(v17, v21, 0.5, 0xFF, v20);
      v53 = v22;
      v57 = create32BGRASurfaceFrom32ARGBSurface(v22);
      v23 = [*(v7 + 1) height];
      v24.i64[0] = [*(v7 + 1) width];
      v24.i64[1] = v23;
      v25.i64[0] = -1;
      v25.i64[1] = -1;
      v26 = vcvtq_f64_s64(vaddq_s64(v24, v25));
      v67 = vcvtq_u32_f32(vmulq_f32(v58, vcvt_hight_f32_f64(vcvt_f32_f64(v26), v26)));
      v27 = createCropAndScaledSurface(*(v7 + 1), &v67, a2, a3);
      v29 = v27;
      if (!v27)
      {
        v47 = __VGLogSharedInstance(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v47, OS_LOG_TYPE_ERROR, " Failed to crop and rescale local depth image. ", buf, 2u);
        }

        *a4 = 0;
        *(a4 + 24) = 0;
LABEL_39:

LABEL_40:
LABEL_41:

        goto LABEL_42;
      }

      v30 = vg::hrtf::createNormalizedDepth(v27, v28);
      v31 = v30;
      if (!v30)
      {
        v48 = __VGLogSharedInstance(0);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_ERROR, " Failed normalize depth image. ", buf, 2u);
        }

        *a4 = 0;
        *(a4 + 24) = 0;

        goto LABEL_39;
      }

      v32 = v21;
      v33 = a2;
      v34 = a3;
      v35 = createMaskedImage1CF32(v30, v32, 0.5, 1.0);
      v66 = vcvtq_u32_f32(vmulq_f32(v58, v50));
      v37 = createFloat32SurfaceWithROI(v35, &v66);
      if (v37)
      {
        v38 = vg::hrtf::createNormalizedDepth(*(v7 + 1), v36);
        v39 = v38 != 0;
        if (v38)
        {
          *buf = v57;
          v60 = v35;
          v61 = v37;
          v62 = *v7;
          v63 = v38;
          v64 = v68;
          v65 = v67;
          v40 = *(&v70 + 1);
          if (*(&v70 + 1) >= v71)
          {
            v41 = std::vector<vg::hrtf::ProcessedROIData>::__emplace_back_slow_path<vg::hrtf::ProcessedROIData&>(&v70, buf);
          }

          else
          {
            std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::construct[abi:ne200100]<vg::hrtf::ProcessedROIData,vg::hrtf::ProcessedROIData&,void,0>(&v70, *(&v70 + 1), buf);
            v41 = v40 + 80;
          }

          *(&v70 + 1) = v41;
        }

        else
        {
          v43 = __VGLogSharedInstance(0);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_ERROR, " Failed normalize depth image. ", buf, 2u);
          }

          *a4 = 0;
          *(a4 + 24) = 0;
        }
      }

      else
      {
        v42 = __VGLogSharedInstance(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_270F06000, v42, OS_LOG_TYPE_ERROR, " Failed to crop and rescale global depth image. ", buf, 2u);
        }

        v39 = 0;
        *a4 = 0;
        *(a4 + 24) = 0;
      }

      if (!v39)
      {
        goto LABEL_42;
      }

      v7 += 32;
      a3 = v34;
      a2 = v33;
      if (v7 == v52)
      {
        goto LABEL_23;
      }
    }

    v44 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v44, OS_LOG_TYPE_ERROR, " Failed to crop and rescale capture rgb image. ", buf, 2u);
    }

    *a4 = 0;
    *(a4 + 24) = 0;
  }

LABEL_42:
  *buf = &v70;
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](buf);
  objc_autoreleasePoolPop(context);
}

void sub_270F5E578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = (v25 - 128);
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<vg::hrtf::ProcessedROIData>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_270F5E734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<vg::hrtf::ProcessedROIData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vg::hrtf::preprocessFaceCaptureData(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = 0;
  v58 = 0;
  v59 = 0;
  std::vector<vg::hrtf::FrameROIData>::reserve(&v57, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5));
  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v51 = _Q0;
    v52 = xmmword_270FA9190;
    do
    {
      v15 = [*v8 width];
      v16 = [*v8 height];
      v17 = *(v8 + 80);
      v18 = *(v8 + 64);
      if (v17)
      {
        v19 = *(v8 + 64);
      }

      else
      {
        v19 = 0;
      }

      v20 = (2 * v17);
      v21 = (v18 + 4 * v20);
      v22 = v19 + 2;
      v23 = *v19;
      if (!v17 || (v24.f32[0] = *v19, v21 != v22))
      {
        v25 = v19 + 4;
        v24.f32[0] = *v19;
        do
        {
          v26 = v25;
          if (*(v25 - 2) < v24.f32[0])
          {
            v24.f32[0] = *(v25 - 2);
          }

          v25 += 2;
        }

        while (!v17 || v26 != v21);
      }

      if (v21 != v22)
      {
        v27 = v19 + 4;
        do
        {
          v28 = v27;
          if (v23 < *(v27 - 2))
          {
            v23 = *(v27 - 2);
          }

          v27 += 2;
        }

        while (v28 != v21);
      }

      v29 = *(v18 + 4);
      if (v20 == 2)
      {
        v30 = *(v18 + 4);
      }

      else
      {
        v31 = 4 * v20;
        v32 = (v18 + 12);
        v33 = v31 - 16;
        v34 = v32;
        v30 = v29;
        do
        {
          v35 = v33;
          v36 = *v34;
          v34 += 2;
          v37 = v36;
          if (v36 < v30)
          {
            v30 = v37;
          }

          v33 -= 8;
        }

        while (v35);
        v38 = v31 - 8;
        do
        {
          v39 = *v32;
          v32 += 2;
          v40 = v39;
          if (v29 < v39)
          {
            v29 = v40;
          }

          v38 -= 8;
        }

        while (v38);
      }

      v41.i64[0] = __PAIR64__(v16, v15);
      v41.i64[1] = __PAIR64__(v16, v15);
      v24.f32[1] = v30;
      v24.i64[1] = __PAIR64__(LODWORD(v29), LODWORD(v23));
      v42 = vcvtq_s32_f32(v24);
      *v43.i8 = vadd_s32(__PAIR64__(v16, v15), -1);
      *v44.f32 = vcvt_f32_u32(*v43.i8);
      v43.i64[1] = v43.i64[0];
      v45 = vandq_s8(vcgezq_s32(v42), vminq_s32(v43, v42));
      *v43.i8 = vcvt_f32_s32(vsub_s32(*&vextq_s8(v45, v45, 8uLL), *v45.i8));
      v43.i64[1] = v43.i64[0];
      v46 = vcvtq_s32_f32(vmulq_f32(v43, v52));
      v47.i64[0] = vsubq_s32(v45, v46).u64[0];
      v47.i64[1] = vaddq_s32(v45, v46).i64[1];
      v44.i64[1] = v44.i64[0];
      v48 = vdivq_f32(vcvtq_f32_s32(vandq_s8(vcgezq_s32(v47), vminq_s32(v41, v47))), v44);
      v53 = vbicq_s8(vbslq_s8(vcgtq_f32(v48, v51), v51, v48), vcltzq_f32(v48));
      v54 = *v8;
      v55 = *(v8 + 8);
      v56 = v53;
      v49 = v58;
      if (v58 >= v59)
      {
        i64 = std::vector<vg::hrtf::FrameROIData>::__emplace_back_slow_path<vg::hrtf::FrameROIData&>(&v57, &v54);
      }

      else
      {
        v49->i64[0] = v54;
        v49->i64[1] = v55;
        v49[1] = v56;
        i64 = v49[2].i64;
      }

      v58 = i64;

      v8 += 96;
    }

    while (v8 != v9);
  }

  vg::hrtf::preprocessCaptureData(&v57, a2, a3, a4);
  v54 = &v57;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&v54);
}

void sub_270F5EA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = (v15 - 72);
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<vg::hrtf::FrameROIData>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_270F5EB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<vg::hrtf::EarFrameData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vg::hrtf::preprocessEarCaptureData(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v55 = 0;
  v56 = 0;
  v57 = 0;
  std::vector<vg::hrtf::FrameROIData>::reserve(&v55, (a1[1] - *a1) >> 5);
  v9 = *a1;
  v10 = a1[1];
  while (v9 != v10)
  {
    *v42 = *v9;
    *&v42[8] = *(v9 + 8);
    v43 = *(v9 + 16);
    v11 = v56;
    if (v56 >= v57)
    {
      v12 = std::vector<vg::hrtf::FrameROIData>::__emplace_back_slow_path<vg::hrtf::FrameROIData&>(&v55, v42);
    }

    else
    {
      *v11 = *v42;
      *(v11 + 8) = *&v42[8];
      *(v11 + 16) = v43;
      v12 = v11 + 32;
    }

    v56 = v12;

    v9 += 32;
  }

  vg::hrtf::preprocessCaptureData(&v55, a2, a3, &v52);
  if (v54)
  {
    if (a4)
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
      std::vector<vg::hrtf::ProcessedROIData>::__init_with_size[abi:ne200100]<vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(&v49, v52, v53, 0xCCCCCCCCCCCCCCCDLL * ((v53 - v52) >> 4));
      v47 = 0uLL;
      v48 = 0;
      std::vector<vg::hrtf::ProcessedROIData>::reserve(&v47, (a1[1] - *a1) >> 5);
      v15 = v49;
      v14 = v50;
      for (i = v50; ; v14 = i)
      {
        if (v15 == v14)
        {
          *a5 = v47;
          *(a5 + 16) = v48;
          v48 = 0;
          v47 = 0uLL;
          *(a5 + 24) = 1;
          goto LABEL_35;
        }

        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        *&v20 = v18;
        *(&v20 + 1) = v19;
        *&v21 = v16;
        *(&v21 + 1) = v17;
        *v42 = v21;
        v43 = v20;
        v22 = *(v15 + 32);
        v44 = v22;
        v23 = *(v15 + 64);
        v45 = *(v15 + 48);
        v46 = v23;
        v24 = createHorizontallyReflectedSurface(v16);
        if (!v24)
        {
          break;
        }

        v25 = createHorizontallyReflectedSurface(v17);
        if (!v25)
        {
          v32 = __VGLogSharedInstance(0);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, v32, OS_LOG_TYPE_ERROR, " Failed to refect depth local surface. ", buf, 2u);
          }

          *a5 = 0;
          *(a5 + 24) = 0;

          goto LABEL_34;
        }

        v26 = createHorizontallyReflectedSurface(v18);
        if (v26)
        {
          *buf = v24;
          v36 = v25;
          v37 = v26;
          v38 = v19;
          v39 = v22;
          v40 = v45;
          v41 = v46;
          v27 = *(&v47 + 1);
          if (*(&v47 + 1) >= v48)
          {
            v28 = std::vector<vg::hrtf::ProcessedROIData>::__emplace_back_slow_path<vg::hrtf::ProcessedROIData&>(&v47, buf);
          }

          else
          {
            std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::construct[abi:ne200100]<vg::hrtf::ProcessedROIData,vg::hrtf::ProcessedROIData&,void,0>(&v47, *(&v47 + 1), buf);
            v28 = v27 + 80;
          }

          *(&v47 + 1) = v28;
        }

        else
        {
          v29 = __VGLogSharedInstance(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, " Failed to refect depth global surface. ", buf, 2u);
          }

          *a5 = 0;
          *(a5 + 24) = 0;
        }

        if (!v26)
        {
          goto LABEL_35;
        }

        v15 += 80;
      }

      v31 = __VGLogSharedInstance(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v31, OS_LOG_TYPE_ERROR, " Failed to refect color surface. ", buf, 2u);
      }

      *a5 = 0;
      *(a5 + 24) = 0;
LABEL_34:

LABEL_35:
      *v42 = &v47;
      std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](v42);
      *v42 = &v49;
      std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](v42);
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      std::vector<vg::hrtf::ProcessedROIData>::__init_with_size[abi:ne200100]<vg::hrtf::ProcessedROIData*,vg::hrtf::ProcessedROIData*>(a5, v52, v53, 0xCCCCCCCCCCCCCCCDLL * ((v53 - v52) >> 4));
      *(a5 + 24) = 1;
    }
  }

  else
  {
    v30 = __VGLogSharedInstance(v13);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_impl(&dword_270F06000, v30, OS_LOG_TYPE_ERROR, " Failed to preprocess capture data. ", v42, 2u);
    }

    *a5 = 0;
    *(a5 + 24) = 0;
  }

  if (v54 == 1)
  {
    *v42 = &v52;
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](v42);
  }

  *v42 = &v55;
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](v42);
}

void sub_270F5F01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  vg::hrtf::ProcessedROIData::~ProcessedROIData(&a21);
  a21 = &a31;
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = (v33 - 168);
  std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (*(v33 - 120) == 1)
  {
    a21 = (v33 - 144);
    std::vector<vg::hrtf::ProcessedROIData>::__destroy_vector::operator()[abi:ne200100](&a21);
  }

  a21 = (v33 - 112);
  std::vector<vg::hrtf::EarFrameData>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*>(uint64_t a1, void **a2, __int128 *a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0uLL;
      *a4 = v8;
      v9 = v7[1];
      v7[1] = 0uLL;
      *(a4 + 16) = v9;
      v10 = *(v7 + 4);
      *(v7 + 4) = 0;
      *(a4 + 32) = v10;
      v11 = v7[4];
      *(a4 + 48) = v7[3];
      *(a4 + 64) = v11;
      v7 += 5;
      a4 += 80;
    }

    while (v7 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::destroy[abi:ne200100]<vg::hrtf::ProcessedROIData,void,0>(a1, v5);
      v5 += 10;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

void std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::destroy[abi:ne200100]<vg::hrtf::ProcessedROIData,void,0>(uint64_t a1, void **a2)
{
  v3 = *a2;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 10;
      std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::destroy[abi:ne200100]<vg::hrtf::ProcessedROIData,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<vg::hrtf::ProcessedROIData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<vg::hrtf::ProcessedROIData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<vg::hrtf::ProcessedROIData>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::destroy[abi:ne200100]<vg::hrtf::ProcessedROIData,void,0>(v5, (v4 - 80));
  }
}

uint64_t std::vector<vg::hrtf::ProcessedROIData>::__emplace_back_slow_path<vg::hrtf::ProcessedROIData&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>>(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::construct[abi:ne200100]<vg::hrtf::ProcessedROIData,vg::hrtf::ProcessedROIData&,void,0>(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = 80 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::ProcessedROIData>,vg::hrtf::ProcessedROIData*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<vg::hrtf::ProcessedROIData>::~__split_buffer(&v13);
  return v12;
}

void sub_270F5F42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<vg::hrtf::ProcessedROIData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::construct[abi:ne200100]<vg::hrtf::ProcessedROIData,vg::hrtf::ProcessedROIData&,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 32) = *(a3 + 32);
  result = *(a3 + 64);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 64) = result;
  return result;
}

void std::vector<vg::hrtf::ProcessedROIData>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<vg::hrtf::ProcessedROIData>>::destroy[abi:ne200100]<vg::hrtf::ProcessedROIData,void,0>(a1, i))
  {
    i -= 10;
  }

  *(a1 + 8) = a2;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::FrameROIData>,vg::hrtf::FrameROIData*>(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *v4 = 0;
      v4[1] = 0;
      *a4 = v5;
      a4[1] = *(v4 + 1);
      v4 += 4;
      a4 += 2;
    }

    while (v4 != a3);
    v10 = a4;
  }

  v8 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,vg::hrtf::EarFrameData*,vg::hrtf::EarFrameData*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FrameROIData>,vg::hrtf::FrameROIData*>>::~__exception_guard_exceptions[abi:ne200100](v7);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<vg::hrtf::FrameROIData>,vg::hrtf::FrameROIData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>,std::reverse_iterator<vg::hrtf::EarFrameData*>,std::reverse_iterator<vg::hrtf::EarFrameData*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t std::vector<vg::hrtf::FrameROIData>::__emplace_back_slow_path<vg::hrtf::FrameROIData&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vg::hrtf::EarFrameData>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  *(v8 + 16) = *(a2 + 16);
  *&v17 = v8 + 32;
  v9 = *(a1 + 8);
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<vg::hrtf::FrameROIData>,vg::hrtf::FrameROIData*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<vg::hrtf::EarFrameData>::~__split_buffer(&v15);
  return v14;
}

void sub_270F5F6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<vg::hrtf::EarFrameData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void vg::hrtf::writeHRTFModelDebugData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v49[1] = *MEMORY[0x277D85DE8];
  if (*(a5 + 23) >= 0)
  {
    v10 = *(a5 + 23);
  }

  else
  {
    v10 = a5[1];
  }

  v11 = __p;
  std::string::basic_string[abi:ne200100](__p, v10 + 36);
  if (v47 < 0)
  {
    v11 = __p[0];
  }

  if (v10)
  {
    if (*(a5 + 23) >= 0)
    {
      v12 = a5;
    }

    else
    {
      v12 = *a5;
    }

    memmove(v11, v12, v10);
  }

  strcpy(v11 + v10, "/hrtf_model_debug_data_left_ear.json");
  v13 = vg::hrtf::detail::createEarDebugData(a3, a2);
  v45 = 0;
  v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:1 error:&v45];
  v15 = v45;
  v16 = v15;
  if (v15)
  {
    v17 = __VGLogSharedInstance(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_ERROR, " Failed to write left ear debug data. ", buf, 2u);
    }
  }

  else
  {
    if (v47 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
    [v14 writeToFile:v17 atomically:1];
  }

  if (*(a5 + 23) >= 0)
  {
    v19 = *(a5 + 23);
  }

  else
  {
    v19 = a5[1];
  }

  v20 = buf;
  std::string::basic_string[abi:ne200100](buf, v19 + 37);
  if (v44 < 0)
  {
    v20 = *buf;
  }

  if (v19)
  {
    if (*(a5 + 23) >= 0)
    {
      v21 = a5;
    }

    else
    {
      v21 = *a5;
    }

    memmove(v20, v21, v19);
  }

  strcpy(&v20[v19], "/hrtf_model_debug_data_right_ear.json");
  v22 = vg::hrtf::detail::createEarDebugData(a4, a2 + 24);
  v42 = v16;
  v23 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v22 options:1 error:&v42];
  v24 = v42;

  if (v24)
  {
    v26 = __VGLogSharedInstance(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_impl(&dword_270F06000, v26, OS_LOG_TYPE_ERROR, " Failed to write right ear debug data. ", v40, 2u);
    }
  }

  else
  {
    if (v44 >= 0)
    {
      v27 = buf;
    }

    else
    {
      v27 = *buf;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
    [v23 writeToFile:v26 atomically:1];
  }

  v48 = @"face_encodings";
  v28 = [MEMORY[0x277CBEA60] vg_arrayWithNumbersFromVectorf:a1];
  v49[0] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];

  if (*(a5 + 23) >= 0)
  {
    v30 = *(a5 + 23);
  }

  else
  {
    v30 = a5[1];
  }

  v31 = v40;
  std::string::basic_string[abi:ne200100](v40, v30 + 42);
  if (v41 < 0)
  {
    v31 = *v40;
  }

  if (v30)
  {
    if (*(a5 + 23) >= 0)
    {
      v32 = a5;
    }

    else
    {
      v32 = *a5;
    }

    memmove(v31, v32, v30);
  }

  strcpy(&v31[v30], "/hrtf_model_debug_data_face_encodings.json");
  v39 = v24;
  v33 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v29 options:1 error:&v39];
  v34 = v39;

  if (v34)
  {
    v36 = __VGLogSharedInstance(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *v38 = 0;
      _os_log_impl(&dword_270F06000, v36, OS_LOG_TYPE_ERROR, " Failed to write encoding debug data. ", v38, 2u);
    }
  }

  else
  {
    if (v41 >= 0)
    {
      v37 = v40;
    }

    else
    {
      v37 = *v40;
    }

    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
    [v33 writeToFile:v36 atomically:1];
  }

  if (v41 < 0)
  {
    operator delete(*v40);
  }

  if (v44 < 0)
  {
    operator delete(*buf);
  }

  if (v47 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_270F5FCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

id vg::hrtf::detail::createEarDebugData(uint64_t a1, uint64_t a2)
{
  v44[7] = *MEMORY[0x277D85DE8];
  v43[0] = @"ear_encodings";
  v4 = [MEMORY[0x277CBEA60] vg_arrayWithNumbersFromVectorf:a1];
  v44[0] = v4;
  v43[1] = @"hrtf_coefficients";
  v5 = [MEMORY[0x277CBEA60] vg_arrayWithNumbersFromVectorf:a1 + 24];
  v44[1] = v5;
  v43[2] = @"dtf_coefficients";
  v6 = MEMORY[0x277CBEA60];
  v7 = (*(a1 + 64) * *(a1 + 68));
  v8 = (4 * v7 + 31) & 0x7FFFFFFE0;
  v40[1] = (v8 >> 2);
  v38[0] = 0;
  malloc_type_posix_memalign(v38, 0x20uLL, v8, 0xE1AC2527uLL);
  v9 = v38[0];
  v40[0] = v38[0];
  v41 = v7;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 68);
    v14 = *(a1 + 48);
    do
    {
      v15 = v12;
      v16 = v11;
      v17 = v13;
      if (v13)
      {
        do
        {
          v9[v16++] = *(v14 + 4 * v15);
          v15 += v10;
          --v17;
        }

        while (v17);
      }

      ++v12;
      v11 += v13;
    }

    while (v12 != v10);
  }

  v18 = [v6 vg_arrayWithNumbersFromVectorf:v40];
  v44[2] = v18;
  v43[3] = @"bias_dtf_coefficients";
  v19 = MEMORY[0x277CBEA60];
  v20 = (*(a1 + 88) * *(a1 + 92));
  v21 = (4 * v20 + 31) & 0x7FFFFFFE0;
  v38[1] = (v21 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v21, 0xE1AC2527uLL);
  v22 = memptr;
  v38[0] = memptr;
  v39 = v20;
  v23 = *(a1 + 88);
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    v26 = *(a1 + 92);
    v27 = *(a1 + 72);
    do
    {
      v28 = v25;
      v29 = v24;
      v30 = v26;
      if (v26)
      {
        do
        {
          v22[v29++] = *(v27 + 4 * v28);
          v28 += v23;
          --v30;
        }

        while (v30);
      }

      ++v25;
      v24 += v26;
    }

    while (v25 != v23);
  }

  v31 = [v19 vg_arrayWithNumbersFromVectorf:v38];
  v44[3] = v31;
  v43[4] = @"ctf_coefficients";
  v32 = [MEMORY[0x277CBEA60] vg_arrayWithNumbersFromVectorf:a1 + 96];
  v44[4] = v32;
  v43[5] = @"delay_coefficients";
  v33 = [MEMORY[0x277CBEA60] vg_arrayWithNumbersFromVectorf:a2];
  v44[5] = v33;
  v43[6] = @"eq_coefficients";
  v34 = *(a1 + 144);
  if (v34 == 1)
  {
    v35 = [MEMORY[0x277CBEA60] vg_arrayWithNumbersFromVectorf:{a1 + 120, v38[0]}];
  }

  else
  {
    v35 = MEMORY[0x277CBEBF8];
  }

  v44[6] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:{7, v38[0]}];
  if (v34)
  {
  }

  free(v38[0]);
  free(v40[0]);

  return v36;
}

void sub_270F600D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  free(a9);

  free(a12);
  _Unwind_Resume(a1);
}

void vg::hrtf::writeDebugPreprocessedData(uint64_t *a1, void *a2)
{
  v5 = a2;
  std::string::basic_string[abi:ne200100]<0>(__p, "face");
  vg::hrtf::writeDebugPreprocessedData(vg::hrtf::HRTFPrepData const&,std::string const&)::$_0::operator()(&v5, a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "left_ear");
  vg::hrtf::writeDebugPreprocessedData(vg::hrtf::HRTFPrepData const&,std::string const&)::$_0::operator()(&v5, a1 + 3, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "right_ear");
  vg::hrtf::writeDebugPreprocessedData(vg::hrtf::HRTFPrepData const&,std::string const&)::$_0::operator()(&v5, a1 + 6, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_270F60214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vg::hrtf::writeDebugPreprocessedData(vg::hrtf::HRTFPrepData const&,std::string const&)::$_0::operator()(void **a1, uint64_t *a2, uint64_t *a3)
{
  v216[19] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v153 = a2[1];
  if (*a2 != v153)
  {
    v4 = a3;
    v5 = 0;
    v151 = *(MEMORY[0x277D82810] + 24);
    v152 = *MEMORY[0x277D82810];
    v149 = *(MEMORY[0x277D82818] + 64);
    v150 = *MEMORY[0x277D82818];
    v148 = *(MEMORY[0x277D82818] + 72);
    do
    {
      v6 = *v3;
      v7 = *(v3 + 8);
      v8 = *(v3 + 16);
      v155 = *(v3 + 24);
      *&v9 = v8;
      *(&v9 + 1) = v155;
      v156 = v7;
      v157 = v6;
      *&v10 = v6;
      *(&v10 + 1) = v7;
      *&v205[152] = v10;
      v206 = v9;
      v154 = *(v3 + 32);
      v207 = v154;
      v11 = *(v3 + 64);
      v208 = *(v3 + 48);
      v209 = v11;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v200);
      v12 = *(*a1 + 23);
      if (v12 >= 0)
      {
        v13 = *a1;
      }

      else
      {
        v13 = **a1;
      }

      if (v12 >= 0)
      {
        v14 = *(*a1 + 23);
      }

      else
      {
        v14 = (*a1)[1];
      }

      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v201, v13, v14);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "/", 1);
      v17 = *(v4 + 23);
      if (v17 >= 0)
      {
        v18 = v4;
      }

      else
      {
        v18 = *v4;
      }

      if (v17 >= 0)
      {
        v19 = *(v4 + 23);
      }

      else
      {
        v19 = v4[1];
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "_RGB_", 5);
      v22 = MEMORY[0x2743B9140](v21, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ".png", 4);
      v23 = MEMORY[0x277CCACA8];
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v200, &__p);
      if (v214 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v25 = [v23 stringWithUTF8String:p_p];
      v26 = VGDumpIOSurface(v157, v25, 1.0);

      if (v214 < 0)
      {
        operator delete(__p);
        if (v26)
        {
          goto LABEL_25;
        }
      }

      else if (v26)
      {
        goto LABEL_25;
      }

      v28 = __VGLogSharedInstance(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_270F06000, v28, OS_LOG_TYPE_ERROR, " Unable to write image. ", &__p, 2u);
      }

LABEL_25:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v194);
      v29 = *(*a1 + 23);
      if (v29 >= 0)
      {
        v30 = *a1;
      }

      else
      {
        v30 = **a1;
      }

      if (v29 >= 0)
      {
        v31 = *(*a1 + 23);
      }

      else
      {
        v31 = (*a1)[1];
      }

      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v195, v30, v31);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "/", 1);
      v34 = *(v4 + 23);
      if (v34 >= 0)
      {
        v35 = v4;
      }

      else
      {
        v35 = *v4;
      }

      if (v34 >= 0)
      {
        v36 = *(v4 + 23);
      }

      else
      {
        v36 = v4[1];
      }

      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "_local_depth_", 13);
      v39 = MEMORY[0x2743B9140](v38, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ".tiff", 5);
      v40 = MEMORY[0x277CCACA8];
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v194, &__p);
      if (v214 >= 0)
      {
        v41 = &__p;
      }

      else
      {
        v41 = __p;
      }

      v42 = [v40 stringWithUTF8String:v41];
      v43 = VGDumpIOSurface(v156, v42, 1.0);

      if (v214 < 0)
      {
        operator delete(__p);
        if (v43)
        {
          goto LABEL_47;
        }
      }

      else if (v43)
      {
        goto LABEL_47;
      }

      v45 = __VGLogSharedInstance(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_270F06000, v45, OS_LOG_TYPE_ERROR, " Unable to write local depth. ", &__p, 2u);
      }

LABEL_47:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v188);
      v46 = *(*a1 + 23);
      if (v46 >= 0)
      {
        v47 = *a1;
      }

      else
      {
        v47 = **a1;
      }

      if (v46 >= 0)
      {
        v48 = *(*a1 + 23);
      }

      else
      {
        v48 = (*a1)[1];
      }

      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v189, v47, v48);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "/", 1);
      v51 = *(v4 + 23);
      if (v51 >= 0)
      {
        v52 = v4;
      }

      else
      {
        v52 = *v4;
      }

      if (v51 >= 0)
      {
        v53 = *(v4 + 23);
      }

      else
      {
        v53 = v4[1];
      }

      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "_global_depth_", 14);
      v56 = MEMORY[0x2743B9140](v55, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ".tiff", 5);
      v57 = MEMORY[0x277CCACA8];
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v188, &__p);
      if (v214 >= 0)
      {
        v58 = &__p;
      }

      else
      {
        v58 = __p;
      }

      v59 = [v57 stringWithUTF8String:v58];
      v60 = VGDumpIOSurface(v8, v59, 1.0);

      if (v214 < 0)
      {
        operator delete(__p);
        if (v60)
        {
          goto LABEL_69;
        }
      }

      else if (v60)
      {
        goto LABEL_69;
      }

      v62 = __VGLogSharedInstance(v61);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_270F06000, v62, OS_LOG_TYPE_ERROR, " Unable to write global depth. ", &__p, 2u);
      }

LABEL_69:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v182);
      v63 = *(*a1 + 23);
      if (v63 >= 0)
      {
        v64 = *a1;
      }

      else
      {
        v64 = **a1;
      }

      if (v63 >= 0)
      {
        v65 = *(*a1 + 23);
      }

      else
      {
        v65 = (*a1)[1];
      }

      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v183, v64, v65);
      v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "/", 1);
      v68 = *(v4 + 23);
      if (v68 >= 0)
      {
        v69 = v4;
      }

      else
      {
        v69 = *v4;
      }

      if (v68 >= 0)
      {
        v70 = *(v4 + 23);
      }

      else
      {
        v70 = v4[1];
      }

      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v69, v70);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "_base_RGB_", 10);
      v73 = MEMORY[0x2743B9140](v72, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ".png", 4);
      v74 = MEMORY[0x277CCACA8];
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v182, &__p);
      if (v214 >= 0)
      {
        v75 = &__p;
      }

      else
      {
        v75 = __p;
      }

      v76 = [v74 stringWithUTF8String:v75];
      v77 = VGDumpIOSurface(v155, v76, 1.0);

      if (v214 < 0)
      {
        operator delete(__p);
        if (v77)
        {
          goto LABEL_91;
        }
      }

      else if (v77)
      {
        goto LABEL_91;
      }

      v79 = __VGLogSharedInstance(v78);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_270F06000, v79, OS_LOG_TYPE_ERROR, " Unable to write base color depth. ", &__p, 2u);
      }

LABEL_91:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v176);
      v80 = *(*a1 + 23);
      if (v80 >= 0)
      {
        v81 = *a1;
      }

      else
      {
        v81 = **a1;
      }

      if (v80 >= 0)
      {
        v82 = *(*a1 + 23);
      }

      else
      {
        v82 = (*a1)[1];
      }

      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v177, v81, v82);
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "/", 1);
      v85 = *(v4 + 23);
      if (v85 >= 0)
      {
        v86 = v4;
      }

      else
      {
        v86 = *v4;
      }

      if (v85 >= 0)
      {
        v87 = *(v4 + 23);
      }

      else
      {
        v87 = v4[1];
      }

      v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v86, v87);
      v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "_normalized_depth_", 18);
      v90 = MEMORY[0x2743B9140](v89, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, ".tiff", 5);
      v91 = MEMORY[0x277CCACA8];
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v176, &__p);
      if (v214 >= 0)
      {
        v92 = &__p;
      }

      else
      {
        v92 = __p;
      }

      v93 = [v91 stringWithUTF8String:v92];
      v94 = VGDumpIOSurface(v154, v93, 1.0);

      if (v214 < 0)
      {
        operator delete(__p);
        if ((v94 & 1) == 0)
        {
LABEL_110:
          v96 = __VGLogSharedInstance(v95);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p) = 0;
            _os_log_impl(&dword_270F06000, v96, OS_LOG_TYPE_ERROR, " Unable to write normalized depth. ", &__p, 2u);
          }
        }
      }

      else if ((v94 & 1) == 0)
      {
        goto LABEL_110;
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v170);
      v97 = *(*a1 + 23);
      if (v97 >= 0)
      {
        v98 = *a1;
      }

      else
      {
        v98 = **a1;
      }

      if (v97 >= 0)
      {
        v99 = *(*a1 + 23);
      }

      else
      {
        v99 = (*a1)[1];
      }

      v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v171, v98, v99);
      v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "/", 1);
      v102 = *(v4 + 23);
      if (v102 >= 0)
      {
        v103 = v4;
      }

      else
      {
        v103 = *v4;
      }

      if (v102 >= 0)
      {
        v104 = *(v4 + 23);
      }

      else
      {
        v104 = v4[1];
      }

      v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, v103, v104);
      v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "_RGB_bbox_", 10);
      v107 = MEMORY[0x2743B9140](v106, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v107, ".json", 5);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v170, &v210);
      std::ofstream::basic_ofstream(&__p, &v210, 16);
      if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v210.__r_.__value_.__l.__data_);
      }

      v158 = v208;
      std::to_string(&v210, v208);
      if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &v210;
      }

      else
      {
        v108 = v210.__r_.__value_.__r.__words[0];
      }

      if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v210.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v210.__r_.__value_.__l.__size_;
      }

      v110 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v108, size);
      v111 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v110, ",", 1);
      std::to_string(&v163, DWORD1(v158));
      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v112 = &v163;
      }

      else
      {
        v112 = v163.__r_.__value_.__r.__words[0];
      }

      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v113 = HIBYTE(v163.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v113 = v163.__r_.__value_.__l.__size_;
      }

      v114 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v111, v112, v113);
      v115 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v114, ",", 1);
      std::to_string(&v169, DWORD2(v158));
      if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v116 = &v169;
      }

      else
      {
        v116 = v169.__r_.__value_.__r.__words[0];
      }

      if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v117 = HIBYTE(v169.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v117 = v169.__r_.__value_.__l.__size_;
      }

      v118 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v115, v116, v117);
      v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v118, ",", 1);
      std::to_string(&v168, HIDWORD(v158));
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v120 = &v168;
      }

      else
      {
        v120 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v121 = v168.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v120, v121);
      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v169.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v163.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v210.__r_.__value_.__l.__data_);
      }

      if (!std::filebuf::close())
      {
        std::ios_base::clear((&__p + *(__p - 3)), *&v215[*(__p - 3)] | 4);
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v163);
      v122 = *(*a1 + 23);
      if (v122 >= 0)
      {
        v123 = *a1;
      }

      else
      {
        v123 = **a1;
      }

      if (v122 >= 0)
      {
        v124 = *(*a1 + 23);
      }

      else
      {
        v124 = (*a1)[1];
      }

      v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v163.__r_.__value_.__r.__words[2], v123, v124);
      v126 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v125, "/", 1);
      v127 = *(v4 + 23);
      if (v127 >= 0)
      {
        v128 = v4;
      }

      else
      {
        v128 = *v4;
      }

      if (v127 >= 0)
      {
        v129 = *(v4 + 23);
      }

      else
      {
        v129 = v4[1];
      }

      v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v126, v128, v129);
      v131 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, "_depth_bbox_", 12);
      v132 = MEMORY[0x2743B9140](v131, v5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v132, ".json", 5);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v163, &v169);
      std::ofstream::basic_ofstream(&v210, &v169, 16);
      if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v169.__r_.__value_.__l.__data_);
      }

      v159 = v209;
      std::to_string(&v169, v209);
      if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &v169;
      }

      else
      {
        v133 = v169.__r_.__value_.__r.__words[0];
      }

      if ((v169.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = HIBYTE(v169.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v134 = v169.__r_.__value_.__l.__size_;
      }

      v135 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v210, v133, v134);
      v136 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v135, ",", 1);
      std::to_string(&v168, DWORD1(v159));
      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v137 = &v168;
      }

      else
      {
        v137 = v168.__r_.__value_.__r.__words[0];
      }

      if ((v168.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v138 = HIBYTE(v168.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v138 = v168.__r_.__value_.__l.__size_;
      }

      v139 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v136, v137, v138);
      v140 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v139, ",", 1);
      std::to_string(&v162, DWORD2(v159));
      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = &v162;
      }

      else
      {
        v141 = v162.__r_.__value_.__r.__words[0];
      }

      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v142 = v162.__r_.__value_.__l.__size_;
      }

      v143 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v140, v141, v142);
      v144 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v143, ",", 1);
      std::to_string(&v161, HIDWORD(v159));
      if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v145 = &v161;
      }

      else
      {
        v145 = v161.__r_.__value_.__r.__words[0];
      }

      if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v146 = HIBYTE(v161.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v146 = v161.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v144, v145, v146);
      if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v161.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v162.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v168.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v169.__r_.__value_.__l.__data_);
      }

      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v210 + *(v210.__r_.__value_.__r.__words[0] - 24)), *(&v210 + *(v210.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
      }

      v210.__r_.__value_.__r.__words[0] = v152;
      *(v210.__r_.__value_.__r.__words + *(v152 - 3)) = v151;
      MEMORY[0x2743B90B0](&v210.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x2743B92E0](&v211);
      v163.__r_.__value_.__r.__words[0] = v150;
      *(v163.__r_.__value_.__r.__words + *(v150 - 24)) = v149;
      v163.__r_.__value_.__r.__words[2] = v148;
      v164 = MEMORY[0x277D82878] + 16;
      if (v166 < 0)
      {
        operator delete(v165[7].__locale_);
      }

      v164 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v165);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](&v167);
      __p = v152;
      *(&__p + *(v152 - 3)) = v151;
      MEMORY[0x2743B90B0](&v213);
      std::ostream::~ostream();
      MEMORY[0x2743B92E0](v216);
      v170[0] = v150;
      *(v170 + *(v150 - 24)) = v149;
      v171 = v148;
      v172 = MEMORY[0x277D82878] + 16;
      if (v174 < 0)
      {
        operator delete(v173[7].__locale_);
      }

      v172 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v173);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](&v175);
      v176[0] = v150;
      *(v176 + *(v150 - 24)) = v149;
      v177 = v148;
      v178 = MEMORY[0x277D82878] + 16;
      if (v180 < 0)
      {
        operator delete(v179[7].__locale_);
      }

      v178 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v179);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](&v181);
      v182[0] = v150;
      *(v182 + *(v150 - 24)) = v149;
      v183 = v148;
      v184 = MEMORY[0x277D82878] + 16;
      if (v186 < 0)
      {
        operator delete(v185[7].__locale_);
      }

      v184 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v185);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](&v187);
      v188[0] = v150;
      *(v188 + *(v150 - 24)) = v149;
      v189 = v148;
      v190 = MEMORY[0x277D82878] + 16;
      if (v192 < 0)
      {
        operator delete(v191[7].__locale_);
      }

      v190 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v191);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](&v193);
      v194[0] = v150;
      *(v194 + *(v150 - 24)) = v149;
      v195 = v148;
      v196 = MEMORY[0x277D82878] + 16;
      if (v198 < 0)
      {
        operator delete(v197[7].__locale_);
      }

      v196 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v197);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](&v199);
      v200[0] = v150;
      *(v200 + *(v150 - 24)) = v149;
      v201 = v148;
      v202 = MEMORY[0x277D82878] + 16;
      if (v204 < 0)
      {
        operator delete(v203[7].__locale_);
      }

      v202 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v203);
      std::iostream::~basic_iostream();
      MEMORY[0x2743B92E0](v205);

      v4 = a3;
      v3 += 80;
      ++v5;
    }

    while (v3 != v153);
  }
}

void sub_270F61588(_Unwind_Exception *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x490]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x5A8]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x6C0]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x7D8]);
  vg::hrtf::ProcessedROIData::~ProcessedROIData(&STACK[0x8F0]);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_270F61ABC(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2743B92E0](v1);
  _Unwind_Resume(a1);
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2743B92E0](a1 + 128);
  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743B90F0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2743B9100](v13);
  return a1;
}

void sub_270F61E20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2743B9100](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x270F61E00);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_270F62054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

simd::quatf *vg::shared::Transform::add@<X0>(vg::shared::Transform *this@<X0>, const vg::shared::Transform *a2@<X1>, float32x4_t *x8_0@<X8>)
{
  *v6.i64 = vg::shared::Transform::toMatrix(a2);
  v18 = v6;
  v19 = v7;
  v16 = v9;
  v17 = v8;
  *&v10 = vg::shared::Transform::toMatrix(this);
  v11 = 0;
  v20[0] = v10;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  do
  {
    *(&v21 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v20[v11])), v19, *&v20[v11], 1), v17, v20[v11], 2), v16, v20[v11], 3);
    ++v11;
  }

  while (v11 != 4);
  return vg::shared::Transform::fromMatrix(&v21, x8_0);
}

simd::quatf *vg::shared::Transform::fromMatrix@<X0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  v4 = *this;
  v5 = this[1];
  v6 = vmulq_f32(v4, v4);
  v7 = vmulq_f32(v5, v5);
  v8 = this[2];
  v9 = vmulq_f32(v8, v8);
  a2->f32[0] = sqrtf(vaddv_f32(vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL))));
  *&v10 = *&v6.i32[2] + vaddv_f32(*v6.i8);
  v11 = vrsqrte_f32(v10);
  v12 = vmul_f32(v11, vrsqrts_f32(v10, vmul_f32(v11, v11)));
  LODWORD(v13) = vmul_f32(v12, vrsqrts_f32(v10, vmul_f32(v12, v12))).u32[0];
  v12.f32[0] = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v12.u32[0]);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v7.f32, *v7.f32)));
  *v6.i32 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v6.u32[0]);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v9.f32, *v9.f32)));
  v23.columns[0] = vmulq_n_f32(v4, v13);
  v23.columns[1] = vmulq_n_f32(v5, vmul_f32(*v7.f32, vrsqrts_f32(v12.u32[0], vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  v23.columns[2] = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v9.f32, *v9.f32))).f32[0]);
  result = simd::quatf::quatf(&v22, v23);
  v15 = vmulq_f32(v22, v22);
  v16 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  if (vaddv_f32(v16) == 0.0)
  {
    v17 = xmmword_270FA6D20;
  }

  else
  {
    v18 = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
    v19 = vrsqrte_f32(v18);
    v20 = vmul_f32(v19, vrsqrts_f32(v18, vmul_f32(v19, v19)));
    v17 = vmulq_n_f32(v22, vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).f32[0]);
  }

  v21 = this[3];
  a2[1] = v17;
  a2[2] = v21;
  return result;
}

double vg::shared::Transform::toMatrix(vg::shared::Transform *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v3.i32[3] = 1.0;
  v13 = v3;
  simd::float4x4::float4x4(&v14, v2);
  v4 = 0;
  v15 = v14;
  do
  {
    v16[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_270FA6CF0, COERCE_FLOAT(*&v15.columns[v4])), xmmword_270FA91A0, *v15.columns[v4].f32, 1), xmmword_270FA91B0, v15.columns[v4], 2), v13, v15.columns[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v5 = 0;
  v6 = v16[0];
  v7 = v16[1];
  v8 = v16[2];
  v9 = v16[3];
  v10.i64[0] = 0;
  v11.i32[0] = 0;
  v11.i32[3] = 0;
  *(v11.i64 + 4) = *this;
  v10.i64[1] = *(v11.i64 + 4);
  v15.columns[0] = *this;
  v15.columns[1] = v11;
  v15.columns[2] = v10;
  v15.columns[3] = xmmword_270FA6D20;
  do
  {
    v16[v5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*&v15.columns[v5])), v7, *v15.columns[v5].f32, 1), v8, v15.columns[v5], 2), v9, v15.columns[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  return *v16;
}

simd::quatf *vg::shared::Transform::sub@<X0>(vg::shared::Transform *this@<X0>, const vg::shared::Transform *a2@<X1>, float32x4_t *a3@<X8>)
{
  *v17.columns[0].i64 = vg::shared::Transform::toMatrix(a2);
  v18 = __invert_f4(v17);
  v13 = v18.columns[0];
  v14 = v18.columns[1];
  v11 = v18.columns[3];
  v12 = v18.columns[2];
  *&v5 = vg::shared::Transform::toMatrix(this);
  v6 = 0;
  v15[0] = v5;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  do
  {
    *(&v16 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v15[v6])), v14, *&v15[v6], 1), v12, v15[v6], 2), v11, v15[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return vg::shared::Transform::fromMatrix(&v16, a3);
}

void vg::shared::Transform::lerp(float32x4_t *this@<X0>, float32x4_t *a2@<X1>, float a3@<S0>, float32x4_t *a4@<X8>)
{
  a4->f32[0] = this->f32[0] + (a3 * (a2->f32[0] - this->f32[0]));
  v7 = this[1];
  v8 = a2[1];
  v9 = vmulq_f32(v7, v8);
  v10 = vextq_s8(v9, v9, 8uLL);
  *v9.f32 = vadd_f32(*v9.f32, *v10.f32);
  v9.f32[0] = vaddv_f32(*v9.f32);
  v10.i64[0] = 0;
  v11 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v9, v10)), 0), vnegq_f32(v8), v8);
  v12 = 1.0;
  v43 = v7;
  v13 = 1.0 - a3;
  v14 = vsubq_f32(v7, v11);
  v15 = vmulq_f32(v14, v14);
  v42 = v11;
  v16 = vaddq_f32(v7, v11);
  v17 = vmulq_f32(v16, v16);
  v18 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))));
  v19 = v18 + v18;
  v20 = (v18 + v18) == 0.0;
  v21 = 1.0;
  if (!v20)
  {
    v21 = sinf(v19) / v19;
  }

  v22 = v21;
  v23 = vrecpe_f32(LODWORD(v21));
  v24 = vmul_f32(v23, vrecps_f32(LODWORD(v22), v23));
  LODWORD(v25) = vmul_f32(v24, vrecps_f32(LODWORD(v22), v24)).u32[0];
  if ((v13 * v19) != 0.0)
  {
    v40 = v25;
    v24.f32[0] = sinf(v13 * v19);
    v25 = v40;
    v12 = v24.f32[0] / (v13 * v19);
  }

  v24.f32[0] = v13 * (v25 * v12);
  v26 = vdupq_lane_s32(v24, 0);
  v27 = a3;
  v28 = v19 * a3;
  v29 = 1.0;
  if (v28 != 0.0)
  {
    v39 = v26;
    v41 = v25;
    v30 = sinf(v28);
    v26 = v39;
    v25 = v41;
    v27 = a3;
    v29 = v30 / v28;
  }

  v31 = vmlaq_f32(vmulq_n_f32(v42, (v25 * v29) * v27), v43, v26);
  v32 = vmulq_f32(v31, v31);
  v33 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  if (vaddv_f32(v33) == 0.0)
  {
    v34 = xmmword_270FA6D20;
  }

  else
  {
    v35 = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
    v36 = vrsqrte_f32(v35);
    v37 = vmul_f32(v36, vrsqrts_f32(v35, vmul_f32(v36, v36)));
    v34 = vmulq_n_f32(v31, vmul_f32(v37, vrsqrts_f32(v35, vmul_f32(v37, v37))).f32[0]);
  }

  v38 = vmlaq_n_f32(this[2], vsubq_f32(a2[2], this[2]), v27);
  a4[1] = v34;
  a4[2] = v38;
}

float vg::shared::makeProjection(int8x8_t *a1)
{
  v1 = *a1->i8;
  v2 = vextq_s8(v1, v1, 8uLL).u64[0];
  v1.i32[1] = v2.i32[1];
  return 2.0 / vadd_f32(vext_s8(*a1, v2, 4uLL), *v1.i8).f32[0];
}

float vg::shared::makeProjection(float *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *v2.i32 = tanf(a1[2] * 0.5);
  v3 = *a1;
  *v3.i32 = (*v2.i32 * COERCE_FLOAT(*a1)) / COERCE_FLOAT(HIDWORD(*a1));
  *&v4 = vdup_lane_s32(v3, 0);
  *(&v4 + 1) = vdup_lane_s32(v2, 0);
  v6 = v4;
  v7 = *(a1 + 2);
  return vg::shared::makeProjection(&v6);
}

double vg::shared::extractTangents(vg::shared *this, const simd::float4x4 *a2, int32x4_t a3)
{
  a3.i32[0] = vld2_f32(this).val[0].u32[0];
  v3 = *(this + 2);
  v4.f32[0] = -(*&v3 + -1.0);
  a3.i32[1] = *(this + 5);
  __asm { FMOV            V5.2S, #1.0 }

  *a3.i8 = vdiv_f32(_D5, *a3.i8);
  v4.f32[1] = *&v3 + 1.0;
  v4.i64[1] = __PAIR64__(-(COERCE_FLOAT(HIDWORD(*(this + 4))) + -1.0), COERCE_FLOAT(HIDWORD(*(this + 4))) + 1.0);
  a3.i64[0] = vmulq_f32(vzip1q_s32(a3, a3), v4).u64[0];
  return *a3.i64;
}

float vg::shared::extractZNear(vg::shared *this, const simd::float4x4 *a2)
{
  v2 = *(this + 10);
  v3 = 1.0;
  if (v2 < 0.0)
  {
    v3 = 0.0;
  }

  return *(this + 14) / (-v2 - v3);
}

__n64 vg::shared::computeViewport(float32x2_t *a1, _WORD *a2, _WORD *a3, float a4)
{
  v6.i32[0] = vld2_f32(a1).val[0].u32[0];
  v6.i32[1] = a1[2].i32[1];
  __asm { FMOV            V3.2S, #1.0 }

  v12 = vdiv_f32(_D3, v6);
  __asm { FMOV            V4.2S, #-1.0 }

  v28 = vsub_f32(vmul_f32(v12, vadd_f32(a1[4], _D3)), vmul_f32(v12, vadd_f32(a1[4], _D4)));
  v14 = (1.0 / a4) * 3.14159265 / 180.0;
  v15 = tanf(v14);
  HIWORD(v16) = v28.i16[1];
  v17 = v28.f32[0] / v15;
  LOWORD(v18) = *a2;
  v19 = v18;
  LOWORD(v20) = *a3;
  v21 = v20;
  if (v17 <= v21)
  {
    v21 = v17;
  }

  if (v17 >= v19)
  {
    result.n64_f32[0] = v21;
  }

  else
  {
    result.n64_f32[0] = v19;
  }

  HIWORD(v23) = v28.i16[1];
  v24 = vmuls_lane_f32(result.n64_f32[0], v28, 1) / v28.f32[0];
  LOWORD(v23) = a2[1];
  v25 = v23;
  LOWORD(v16) = a3[1];
  v26 = v16;
  if (v24 <= v26)
  {
    v26 = v24;
  }

  if (v24 >= v25)
  {
    *&v27 = v26;
  }

  else
  {
    *&v27 = v25;
  }

  result.n64_u32[1] = v27;
  return result;
}

int8x8_t vg::shared::computeBoxZRange(float32x4_t *a1, float32x4_t *a2, int32x4_t *a3)
{
  v3.i64[0] = vzip2q_s32(*a3, a3[1]).u64[0];
  v3.i32[2] = a3[2].i32[2];
  v3.i32[3] = a3[3].i32[2];
  v4 = *a1;
  v5 = *a2;
  v6.i64[0] = a1->i64[0];
  v7 = *a1;
  v8 = *a2;
  v8.i32[0] = *a1;
  v9 = *a2;
  v9.i32[1] = HIDWORD(a1->i64[0]);
  v10.i64[0] = a2->i64[0];
  v10.i32[2] = a1->i64[1];
  v11 = *a1;
  v11.i32[3] = 1.0;
  v12 = vmulq_f32(v3, v11);
  *v12.i8 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
  v6.i32[2] = a2->i64[1];
  v6.i32[3] = 1.0;
  v13 = vmulq_f32(v3, v6);
  v7.i32[1] = HIDWORD(a2->i64[0]);
  v14 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  v7.i32[3] = 1.0;
  v15 = vmulq_f32(v3, v7);
  *v7.f32 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v8.i32[3] = 1.0;
  v16 = vmulq_f32(v3, v8);
  v4.i32[0] = *a2;
  *v8.f32 = vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v4.i32[3] = 1.0;
  v17 = vmulq_f32(v3, v4);
  *v16.i8 = vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  v9.i32[3] = 1.0;
  v18 = vmulq_f32(v3, v9);
  v10.i32[3] = 1.0;
  *v9.f32 = vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  v19 = vmulq_f32(v3, v10);
  *v19.i8 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
  v5.i32[3] = 1.0;
  v20 = vmulq_f32(v3, v5);
  *v10.f32 = vadd_f32(vzip1_s32(*v12.i8, v14), vzip2_s32(*v12.i8, v14));
  v12.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(fmaxf(v10.f32[0], -3.4028e38)), v10.u32[0]);
  v14.i32[1] = v10.i32[1];
  v14.i32[0] = -1275068416;
  v21 = vcgt_f32(v14, *v12.i8);
  v12.i32[0] = -1275068416;
  *v12.i8 = vbsl_s8(v21, *v10.f32, *v12.i8);
  *v7.f32 = vadd_f32(vzip1_s32(*v7.f32, *v8.f32), vzip2_s32(*v7.f32, *v8.f32));
  *v8.f32 = vzip2_s32(*v10.f32, *v12.i8);
  *v8.f32 = vbsl_s8(vcgt_f32(vzip1_s32(*v12.i8, *v7.f32), *v8.f32), vzip1_s32(*v8.f32, *v7.f32), *v12.i8);
  *v20.i8 = vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  *v5.f32 = vbsl_s8(vcgt_f32(__PAIR64__(v7.u32[1], v8.u32[0]), __PAIR64__(v8.u32[1], v7.u32[0])), *v7.f32, *v8.f32);
  *v16.i8 = vadd_f32(vzip1_s32(*v16.i8, *v9.f32), vzip2_s32(*v16.i8, *v9.f32));
  *v7.f32 = vzip2_s32(*v7.f32, *v5.f32);
  *v5.f32 = vbsl_s8(vcgt_f32(vzip1_s32(*v5.f32, *v16.i8), *v7.f32), vzip1_s32(*v7.f32, *v16.i8), *v5.f32);
  *v5.f32 = vbsl_s8(vcgt_f32(__PAIR64__(v16.u32[1], v5.u32[0]), __PAIR64__(v5.u32[1], v16.u32[0])), *v16.i8, *v5.f32);
  *v20.i8 = vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8));
  *v19.i8 = vzip2_s32(*v16.i8, *v5.f32);
  *v5.f32 = vbsl_s8(vcgt_f32(vzip1_s32(*v5.f32, *v20.i8), *v19.i8), vzip1_s32(*v19.i8, *v20.i8), *v5.f32);
  *v5.f32 = vbsl_s8(vcgt_f32(__PAIR64__(v20.u32[1], v5.u32[0]), __PAIR64__(v5.u32[1], v20.u32[0])), *v20.i8, *v5.f32);
  *v3.f32 = vzip2_s32(*v20.i8, 0xB4000000B4000000);
  return vbsl_s8(vcgt_f32(*v5.f32, *v3.f32), *v3.f32, *v5.f32);
}

int8x8_t vg::shared::computeBoxDepthRange(float32x4_t *a1, float32x4_t *a2, int32x4_t *a3, uint64_t a4)
{
  v5 = vrev64_s32(vg::shared::computeBoxZRange(a1, a2, a3));
  v6 = vdiv_f32(vmla_n_f32(vdup_lane_s32(*(a4 + 56), 0), v5, COERCE_FLOAT(*(a4 + 40))), vmul_n_f32(v5, COERCE_FLOAT(*(a4 + 44))));
  __asm { FMOV            V2.2S, #1.0 }

  return vbic_s8(vbsl_s8(vcgt_f32(v6, _D2), _D2, v6), vcltz_f32(v6));
}

float32x2_t *vg::shared::computeBoxNDCRange@<X0>(float32x2_t *result@<X0>, float32x2_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float32x2_t *a5@<X8>)
{
  v5 = 0;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = vmulq_n_f32(*a3, COERCE_FLOAT(*result->f32));
  v10 = vmlaq_lane_f32(v9, v6, *result, 1);
  v11 = *a2->f32;
  v12 = vmulq_n_f32(*a3, COERCE_FLOAT(*a2->f32));
  v13 = vmlaq_lane_f32(v12, v6, *result, 1);
  v14 = vmlaq_lane_f32(v9, v6, *a2, 1);
  v15 = vmlaq_lane_f32(v12, v6, *a2, 1);
  v16 = vaddq_f32(v8, vmlaq_laneq_f32(v15, v7, *result->f32, 2));
  v46[2] = vaddq_f32(v8, vmlaq_laneq_f32(v14, v7, *result->f32, 2));
  v46[3] = v16;
  v46[4] = vaddq_f32(v8, vmlaq_laneq_f32(v10, v7, v11, 2));
  v46[5] = vaddq_f32(v8, vmlaq_laneq_f32(v13, v7, v11, 2));
  v46[6] = vaddq_f32(v8, vmlaq_laneq_f32(v14, v7, v11, 2));
  v46[7] = vaddq_f32(v8, vmlaq_laneq_f32(v15, v7, v11, 2));
  v17 = a4[2].f32[2];
  v18 = 1.0;
  if (v17 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = a4[3].f32[2] / (-v17 - v18);
  v20 = *a4;
  v21 = a4[1];
  v22 = a4[2];
  v23 = a4[3];
  __asm
  {
    FMOV            V1.2S, #1.0
    FMOV            V0.2S, #-1.0
  }

  do
  {
    if (COERCE_FLOAT(*(&v46[v5] + 1)) < v19)
    {
      v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v46[v5])), v21, *&v46[v5], 1), v22, v46[v5], 2), v23, v46[v5], 3);
      v31 = vdiv_f32(*v30.i8, vdup_laneq_s32(v30, 3));
      _D1 = vminnm_f32(_D1, v31);
      _D0 = vmaxnm_f32(_D0, v31);
    }

    ++v5;
  }

  while (v5 != 8);
  v32 = &unk_270FA91F4;
  v33 = 96;
  do
  {
    v34 = *(v32 - 1);
    v35 = *v32;
    v36 = v46[v34];
    v37 = COERCE_FLOAT(*(&v46[v34] + 1));
    if (v37 < v19 != COERCE_FLOAT(*(&v46[v35] + 1)) < v19)
    {
      v38 = vsubq_f32(v46[v35], v36);
      v39 = vmlaq_n_f32(v36, v38, (v19 - v37) / v38.f32[2]);
      v40 = vaddq_f32(v23, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v39.f32[0]), v21, *v39.f32, 1), v22, v39, 2));
      *v40.i8 = vdiv_f32(*v40.i8, vdup_laneq_s32(v40, 3));
      _D1 = vminnm_f32(_D1, *v40.i8);
      _D0 = vmaxnm_f32(_D0, *v40.i8);
    }

    v32 += 2;
    v33 -= 8;
  }

  while (v33);
  *v41.f32 = _D0;
  *&v41.u32[2] = _D1;
  v42.i32[0] = vmovn_s32(vcgeq_f32(xmmword_270FA91C0, v41)).u32[0];
  v42.i32[1] = vmovn_s32(vcgeq_f32(v41, xmmword_270FA91C0)).i32[1];
  if (vmaxv_u16(v42))
  {
    v43 = 0;
    a5->i8[0] = 0;
  }

  else
  {
    __asm
    {
      FMOV            V2.2S, #-1.0
      FMOV            V3.2S, #1.0
    }

    *a5 = vminnm_f32(vmaxnm_f32(_D1, _D2), _D3);
    a5[1] = vminnm_f32(vmaxnm_f32(_D0, _D2), _D3);
    v43 = 1;
  }

  a5[2].i8[0] = v43;
  return result;
}

double vg::shared::computeTransformedBox(float32x2_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = a3[1];
  v4 = a3[2];
  v5 = a3[3];
  v6 = vmulq_n_f32(*a3, COERCE_FLOAT(*a1->f32));
  v7 = vmlaq_lane_f32(v6, v3, *a1, 1);
  v8 = vaddq_f32(v5, vmlaq_laneq_f32(v7, v4, *a1->f32, 2));
  v8.i32[3] = 0;
  v9 = vminnmq_f32(v8, xmmword_270FA91D0);
  v10 = vaddq_f32(v5, vmlaq_laneq_f32(v7, v4, *a2, 2));
  v9.i32[3] = 0;
  v10.i32[3] = 0;
  v11 = vminnmq_f32(v9, v10);
  v12 = vmlaq_lane_f32(v6, v3, *a2->f32, 1);
  v13 = vaddq_f32(v5, vmlaq_laneq_f32(v12, v4, *a1->f32, 2));
  v11.i32[3] = 0;
  v13.i32[3] = 0;
  v14 = vminnmq_f32(v11, v13);
  v15 = vaddq_f32(v5, vmlaq_laneq_f32(v12, v4, *a2, 2));
  v14.i32[3] = 0;
  v15.i32[3] = 0;
  v16 = vminnmq_f32(v14, v15);
  v17 = vmulq_n_f32(*a3, COERCE_FLOAT(*a2));
  v18 = vmlaq_lane_f32(v17, v3, *a1, 1);
  v19 = vaddq_f32(v5, vmlaq_laneq_f32(v18, v4, *a1->f32, 2));
  v16.i32[3] = 0;
  v19.i32[3] = 0;
  v20 = vminnmq_f32(v16, v19);
  v21 = vaddq_f32(v5, vmlaq_laneq_f32(v18, v4, *a2, 2));
  v20.i32[3] = 0;
  v21.i32[3] = 0;
  v22 = vminnmq_f32(v20, v21);
  v23 = vmlaq_lane_f32(v17, v3, *a2->f32, 1);
  v24 = vaddq_f32(v5, vmlaq_laneq_f32(v23, v4, *a1->f32, 2));
  v22.i32[3] = 0;
  v24.i32[3] = 0;
  v25 = vminnmq_f32(v22, v24);
  v26 = vaddq_f32(v5, vmlaq_laneq_f32(v23, v4, *a2, 2));
  v25.i32[3] = 0;
  v26.i32[3] = 0;
  *&result = vminnmq_f32(v25, v26).u64[0];
  return result;
}

float32x2_t vg::shared::computeConeNDCRange(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x4_t *a4, float32x4_t *a5, float a6)
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v48 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, COERCE_FLOAT(*a1->f32)), v8, *a1, 1), v9, *a1->f32, 2));
  v49 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, COERCE_FLOAT(*a2->f32)), v8, *a2, 1), v9, *a2->f32, 2), 0, v10);
  v11 = vmulq_f32(v49, v49);
  v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v13 = tanf(a6);
  v14 = 0;
  v15 = *a3;
  v16 = v13 * v12;
  *&v17 = v13 * v12;
  *&v18 = -(v13 * v12);
  LODWORD(v19) = 0;
  *(&v19 + 1) = v16;
  v50[0] = vaddq_f32(v49, v17);
  v50[1] = vaddq_f32(v49, v18);
  LODWORD(v20) = 0;
  HIDWORD(v20) = v18;
  v50[2] = vaddq_f32(v49, v19);
  v50[3] = vaddq_f32(v49, v20);
  v21 = *a5;
  v22 = a5[1];
  v23 = a5[2];
  v24 = a5[3];
  v25 = vsub_f32(v15, vdup_laneq_s32(v48, 2));
  __asm
  {
    FMOV            V2.2S, #-1.0
    FMOV            V4.2S, #1.0
  }

  do
  {
    v33 = v50[v14];
    v32 = vdup_laneq_s32(v33, 2);
    v33.i32[3] = 0;
    v32.i32[0] = DWORD2(v50[v14]);
    v34 = vdiv_f32(v25, v32);
    v35 = vcltz_f32(v34);
    v36 = v35.i8[4];
    if (v35.i8[0])
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v34.f32[0];
    }

    v38 = vmlaq_n_f32(v48, v33, v37);
    v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v38.f32[0]), v22, *v38.f32, 1), v23, v38, 2), v24, v38, 3);
    v40 = v34.f32[1];
    v41 = vdup_laneq_s32(v39, 3);
    if (v36)
    {
      v40 = 0.0;
    }

    v42 = vmlaq_n_f32(v48, v33, v40);
    v43 = vdiv_f32(*v39.i8, v41);
    v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v42.f32[0]), v22, *v42.f32, 1), v23, v42, 2), v24, v42, 3);
    *v44.i8 = vdiv_f32(*v44.i8, vdup_laneq_s32(v44, 3));
    _D4 = vminnm_f32(vminnm_f32(_D4, v43), *v44.i8);
    _D2 = vmaxnm_f32(vmaxnm_f32(_D2, v43), *v44.i8);
    ++v14;
  }

  while (v14 != 4);
  __asm
  {
    FMOV            V1.2S, #-1.0
    FMOV            V3.2S, #1.0
  }

  return vminnm_f32(vmaxnm_f32(_D4, _D1), _D3);
}

simd::quatf *__cdecl simd::quatf::quatf(simd::quatf *this, simd_float3x3 matrix)
{
  v2 = matrix.columns[2].f32[2] + (matrix.columns[0].f32[0] + matrix.columns[1].f32[1]);
  if (v2 >= 0.0)
  {
    v10 = sqrtf(v2 + 1.0);
    v11 = v10 + v10;
    v12 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
    v13 = vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12));
    v13.i32[0] = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v13)).u32[0];
    *v24.vector.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(matrix.columns[1], matrix.columns[1], 8uLL), *matrix.columns[2].f32), vext_s8(*matrix.columns[2].f32, *&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL), 4uLL)), v13.f32[0]);
    v14.f32[0] = matrix.columns[0].f32[1] - matrix.columns[1].f32[0];
    v14.f32[1] = v11;
    v13.i32[1] = 0.25;
    *matrix.columns[0].f32 = vmul_f32(v14, v13);
  }

  else if (matrix.columns[0].f32[0] < matrix.columns[1].f32[1] || matrix.columns[0].f32[0] < matrix.columns[2].f32[2])
  {
    v4 = 1.0 - matrix.columns[0].f32[0];
    if (matrix.columns[1].f32[1] >= matrix.columns[2].f32[2])
    {
      v25 = sqrtf(matrix.columns[1].f32[1] + (v4 - matrix.columns[2].f32[2]));
      *&v26 = v25 + v25;
      v27 = vrecpe_f32(v26);
      v28 = vmul_f32(v27, vrecps_f32(v26, v27));
      v29.i32[0] = vmul_f32(v28, vrecps_f32(v26, v28)).u32[0];
      v28.f32[0] = matrix.columns[0].f32[1] + matrix.columns[1].f32[0];
      v28.i32[1] = v26;
      *matrix.columns[0].f32 = vmul_n_f32(vext_s8(vadd_f32(*matrix.columns[2].f32, vdup_laneq_s32(matrix.columns[1], 2)), vsub_f32(*matrix.columns[2].f32, *&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL)), 4uLL), v29.f32[0]);
      v29.i32[1] = 0.25;
      *v24.vector.f32 = vmul_f32(v28, v29);
    }

    else
    {
      v5 = sqrtf(matrix.columns[2].f32[2] + (v4 - matrix.columns[1].f32[1]));
      v6.f32[0] = v5 + v5;
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v5 + v5));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v5 + v5), v7));
      v8.i32[0] = vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v5 + v5), v8)).u32[0];
      *v24.vector.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL), *&vextq_s8(matrix.columns[1], matrix.columns[1], 8uLL)), *matrix.columns[2].f32), v8.f32[0]);
      v6.f32[1] = matrix.columns[0].f32[1] - matrix.columns[1].f32[0];
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v8.i32[0];
      *matrix.columns[0].f32 = vmul_f32(v6, _D0);
    }
  }

  else
  {
    v15 = sqrtf(matrix.columns[0].f32[0] + ((1.0 - matrix.columns[1].f32[1]) - matrix.columns[2].f32[2]));
    v16.f32[0] = v15 + v15;
    v17 = vrecpe_f32(v16.u32[0]);
    v18 = vmul_f32(v17, vrecps_f32(v16.u32[0], v17));
    LODWORD(v19) = vmul_f32(v18, vrecps_f32(v16.u32[0], v18)).u32[0];
    v16.f32[1] = matrix.columns[0].f32[1] + matrix.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v19;
    *v24.vector.f32 = vmul_f32(v16, _D5);
    matrix.columns[0].i32[0] = vadd_f32(*&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL), *matrix.columns[2].f32).u32[0];
    matrix.columns[0].i32[1] = vsub_f32(vdup_laneq_s32(*(&matrix + 16), 2), *(&matrix + 32)).i32[1];
    *matrix.columns[0].f32 = vmul_n_f32(*matrix.columns[0].f32, v19);
  }

  v24.vector.i64[1] = matrix.columns[0].i64[0];
  *this = v24;
  return this;
}

simd::float4x4 *__cdecl simd::float4x4::float4x4(simd::float4x4 *this, simd_quatf q)
{
  _S1 = q.vector.i32[1];
  _S3 = q.vector.i32[2];
  __asm { FMLS            S2, S3, V0.S[2] }

  _S5 = q.vector.i32[3];
  __asm { FMLA            S2, S5, V0.S[3] }

  v11 = vmuls_lane_f32(q.vector.f32[2], q, 3);
  v12.f32[0] = vmuls_lane_f32(q.vector.f32[1], q, 3);
  v13.i32[3] = 0;
  v14.i32[3] = 0;
  v14.i32[0] = _S2;
  v14.f32[1] = (v11 + (q.vector.f32[0] * q.vector.f32[1])) + (v11 + (q.vector.f32[0] * q.vector.f32[1]));
  v14.f32[2] = -(v12.f32[0] - (q.vector.f32[0] * q.vector.f32[2])) - (v12.f32[0] - (q.vector.f32[0] * q.vector.f32[2]));
  v15 = -(v11 - (q.vector.f32[0] * q.vector.f32[1])) - (v11 - (q.vector.f32[0] * q.vector.f32[1]));
  __asm
  {
    FMLA            S4, S1, V0.S[1]
    FMLA            S4, S5, V0.S[3]
    FMLA            S6, S3, V0.S[1]
  }

  v13.f32[0] = v15;
  v13.f32[1] = _S4 - (q.vector.f32[0] * q.vector.f32[0]);
  v13.f32[2] = _S6 + _S6;
  v12.f32[1] = -(q.vector.f32[0] * q.vector.f32[3]);
  v19 = vmla_laneq_f32(v12, *q.vector.f32, q, 2);
  *v20.f32 = vadd_f32(v19, v19);
  __asm
  {
    FMLA            S4, S3, V0.S[2]
    FMLS            S3, S1, V0.S[1]
  }

  v20.i64[1] = _S3;
  this->columns[0] = v14;
  this->columns[1] = v13;
  this->columns[2] = v20;
  this->columns[3] = xmmword_270FA6D20;
  return this;
}

void sub_270F6342C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_270F64728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  v23[2](v23, a2, a3, a4, a5, a6, a7, a8);

  v22[2](v22);
  _Unwind_Resume(a1);
}

void sub_270F64C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  v28[2](v28, a2, a3, a4, a5, a6, a7, a8);

  v27[2](v27);
  _Unwind_Resume(a1);
}

void sub_270F65A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  v29[2](v29, a2, a3, a4, a5, a6, a7, a8);

  v28[2](v28);
  _Unwind_Resume(a1);
}

void sub_270F65E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  v29[2](v29, a2, a3, a4, a5, a6, a7, a8);

  v28[2](v28);
  _Unwind_Resume(a1);
}

void sub_270F668A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, id);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

void sub_270F66A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v19 = va_arg(va1, id);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

void sub_270F66E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  v32[2](v32, a2, a3, a4, a5, a6, a7, a8);

  v30[2](v30);
  _Unwind_Resume(a1);
}

void sub_270F67230(_Unwind_Exception *a1)
{
  v3[2](v3);

  v2[2](v2);
  _Unwind_Resume(a1);
}

void sub_270F676AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  v34[2](v34, a2, a3, a4, a5, a6, a7, a8);

  v32[2](v32);
  _Unwind_Resume(a1);
}

void sub_270F67A58(_Unwind_Exception *a1)
{
  v3[2](v3);

  v2[2](v2);
  _Unwind_Resume(a1);
}

void sub_270F68800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, id);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData(va1);

  _Unwind_Resume(a1);
}

void sub_270F68CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  vg::IOSurfaceData::~IOSurfaceData(va);
  vg::IOSurfaceData::~IOSurfaceData((v17 - 88));

  _Unwind_Resume(a1);
}

id vg::shared::metrics::createDictionary(vg::shared::metrics *this)
{
  v1 = [MEMORY[0x277CCA8D8] vg_bundle];
  v2 = [v1 infoDictionary];
  v3 = [v2 valueForKey:@"CFBundleVersion"];

  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCA8D8] vg_bundle];
  v6 = [v5 bundleIdentifier];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundleIdentifier"];
  [v4 setObject:v6 forKeyedSubscript:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundleVersion"];
  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = &unk_2880F6130;
  }

  [v4 setObject:v9 forKeyedSubscript:v8];

  return v4;
}

uint64_t vg::shared::metrics::sendEvent(vg::shared::metrics *this, char *a2, NSDictionary *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  AnalyticsSendEvent();

  v7 = __VGLogSharedInstance(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = this;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_270F06000, v7, OS_LOG_TYPE_INFO, " Sent analytics event:%s dictionary:%@ ", &v9, 0x16u);
  }

  return 1;
}

void sub_270F693E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VGMLImageIOData;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

uint64_t vg::shared::computeMedian<unsigned long>(uint64_t a1)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  v1 = __p;
  v2 = ((v7 - __p) >> 3) >> 1;
  v3 = __p + 8 * v2;
  if (v3 != v7)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned long *>>(__p, v3, v7);
    v1 = __p;
  }

  v4 = *&v1[8 * v2];
  v7 = v1;
  operator delete(v1);
  return v4;
}

void sub_270F6968C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float vg::shared::computeMedian<float>(uint64_t a1)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  v2 = __p;
  v3 = ((v8 - __p) >> 2) >> 1;
  v4 = (__p + 4 * v3);
  if (v4 != v8)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__p, v4, v8, v1);
    v2 = __p;
  }

  v5 = v2[v3];
  v8 = v2;
  operator delete(v2);
  return v5;
}

void sub_270F69728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vg::shared::isPointInTriangle(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  LODWORD(v4) = HIDWORD(*a2);
  LODWORD(v5) = HIDWORD(*a3);
  LODWORD(v6) = HIDWORD(*a1);
  v7 = (vsub_f32(*a1, *a3).f32[0] * (v4 - v5)) - (vsub_f32(*a2, *a3).f32[0] * (v6 - v5));
  LODWORD(v8) = HIDWORD(*a4);
  v9 = (vsub_f32(*a1, *a4).f32[0] * (v5 - v8)) - (vsub_f32(*a3, *a4).f32[0] * (v6 - v8));
  v10 = (vsub_f32(*a1, *a2).f32[0] * (v8 - v4)) - (vsub_f32(*a4, *a2).f32[0] * (v6 - v4));
  v11 = fminf(fminf(v7, v9), v10) >= 0.0;
  return fmaxf(fmaxf(v7, v9), v10) <= 0.0 || v11;
}

BOOL vg::shared::arePointsCollinear(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  v4 = vsubq_f32(*a2, *a1);
  v5 = vmulq_f32(v4, v4);
  v6 = vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v5.f32[2] + v6));
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v5.f32[2] + v6), vmul_f32(*v5.f32, *v5.f32)));
  v7 = vmulq_n_f32(v4, vmul_f32(*v5.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v5.f32[2] + v6), vmul_f32(*v5.f32, *v5.f32))).f32[0]);
  v8 = vsubq_f32(*a3, *a1);
  v9 = vmulq_f32(v8, v8);
  *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  *v9.f32 = vrsqrte_f32(v10);
  *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
  v11 = vmulq_f32(v7, vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
  return fabsf(v11.f32[2] + vaddv_f32(*v11.f32)) > a4;
}

BOOL vg::shared::intersectPlane(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, _DWORD *a5)
{
  v5 = vmulq_f32(*a1, *a4);
  v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  if (v6 <= 0.000001)
  {
    return 0;
  }

  v7 = vmulq_f32(*a1, vsubq_f32(*a2, *a3));
  v7.f32[0] = (v7.f32[2] + vaddv_f32(*v7.f32)) / v6;
  *a5 = v7.i32[0];
  return v7.f32[0] >= 0.0;
}

double vg::shared::eulerRotationFromTheta(__int128 *a1)
{
  v9 = *a1;
  LODWORD(v1) = *(a1 + 1);
  v2 = __sincosf_stret(COERCE_FLOAT(HIDWORD(*a1)));
  v3 = __sincosf_stret(v1);
  v4 = __sincosf_stret(*&v9);
  *&v5 = v2.__cosval * v3.__cosval;
  *(&v5 + 1) = ((v3.__cosval * v4.__sinval) * v2.__sinval) - (v4.__cosval * v3.__sinval);
  *&v6 = v2.__cosval * v3.__sinval;
  *(&v6 + 1) = (v3.__sinval * (v4.__sinval * v2.__sinval)) + (v4.__cosval * v3.__cosval);
  *&v7 = -v2.__sinval;
  *(&v7 + 1) = v4.__sinval * v2.__cosval;
  *&result = vzip1q_s32(vzip1q_s32(v5, v7), vzip1q_s32(v6, 0)).u64[0];
  return result;
}

void vg::shared::generateGaussianKernel(vg::shared *this@<X0>, double a2@<D0>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::vector<double>>::reserve(a3, this);
  if (this)
  {
    v6 = 0;
    v7 = vcvts_n_f32_u64(this - 1, 1uLL);
    v8 = a2 + a2;
    v9 = 1.0 / ((a2 + a2) * 3.14159265);
    v10 = 0.0;
    do
    {
      __src = 0;
      v29 = 0;
      v30 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__src, this);
      v11 = 0;
      v12 = v29;
      do
      {
        v13 = v9 * exp(-((v11 - v7) * (v11 - v7) + (v6 - v7) * (v6 - v7)) / v8);
        if (v12 >= v30)
        {
          v14 = __src;
          v15 = v12 - __src;
          v16 = (v12 - __src) >> 3;
          v17 = v16 + 1;
          if ((v16 + 1) >> 61)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v18 = v30 - __src;
          if ((v30 - __src) >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__src, v19);
          }

          v20 = (v12 - __src) >> 3;
          v21 = (8 * v16);
          v22 = (8 * v16 - 8 * v20);
          *v21 = v13;
          v12 = v21 + 1;
          memcpy(v22, v14, v15);
          v23 = __src;
          __src = v22;
          v29 = v12;
          v30 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12++ = v13;
        }

        v29 = v12;
        v10 = v10 + *(v12 - 1);
        v11 = (v11 + 1);
      }

      while (this != v11);
      std::vector<std::vector<double>>::push_back[abi:ne200100](a3, &__src);
      if (__src)
      {
        v29 = __src;
        operator delete(__src);
      }

      v6 = (v6 + 1);
    }

    while (v6 != this);
    v24 = 0;
    v25 = *a3;
    do
    {
      v26 = 0;
      v27 = v25[3 * v24];
      do
      {
        *(v27 + 8 * v26) = *(v27 + 8 * v26) / v10;
        v26 = (v26 + 1);
      }

      while (this != v26);
      v24 = (v24 + 1);
    }

    while (v24 != this);
  }
}

const void **std::vector<std::vector<double>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, a2);
    }

    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::vector<std::vector<double>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

void vg::shared::generateBoxKernel(unint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<std::vector<double>>::reserve(a2, this);
  if (this)
  {
    v4 = 0;
    v5 = 1.0 / (this * this);
    do
    {
      __src = 0;
      v19 = 0;
      v20 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__src, this);
      v6 = v19;
      v7 = this;
      do
      {
        if (v6 >= v20)
        {
          v8 = __src;
          v9 = v6 - __src;
          v10 = (v6 - __src) >> 3;
          v11 = v10 + 1;
          if ((v10 + 1) >> 61)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v12 = v20 - __src;
          if ((v20 - __src) >> 2 > v11)
          {
            v11 = v12 >> 2;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__src, v13);
          }

          v14 = (v6 - __src) >> 3;
          v15 = (8 * v10);
          v16 = (8 * v10 - 8 * v14);
          *v15 = v5;
          v6 = v15 + 1;
          memcpy(v16, v8, v9);
          v17 = __src;
          __src = v16;
          v19 = v6;
          v20 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v6++ = v5;
        }

        v19 = v6;
        --v7;
      }

      while (v7);
      std::vector<std::vector<double>>::push_back[abi:ne200100](a2, &__src);
      if (__src)
      {
        v19 = __src;
        operator delete(__src);
      }

      ++v4;
    }

    while (v4 != this);
  }
}

void vg::shared::generateGaussianNoise(float *a1, uint64_t a2, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type a3, float a4, float a5)
{
  v10 = std::random_device::random_device[abi:ne200100](&v16);
  if (!a3)
  {
    a3 = MEMORY[0x2743B9170](v10);
  }

  v15.__x_[0] = a3;
  for (i = 1; i != 624; ++i)
  {
    a3 = i + 1812433253 * (a3 ^ (a3 >> 30));
    v15.__x_[i] = a3;
  }

  v15.__i_ = 0;
  v13[0] = a4;
  v13[1] = a5;
  v14 = 0;
  if (a2)
  {
    v12 = 4 * a2;
    do
    {
      *a1++ = std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v13, &v15, v13);
      v12 -= 4;
    }

    while (v12);
  }

  std::random_device::~random_device(&v16);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_270F6A018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double vg::shared::computeBBox(uint64_t **a1, float64x2_t *a2, float32_t a3, float32x2_t a4)
{
  v5 = *a2;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v17 = vadd_s32(vmovn_s64(vcvtq_s64_f64(v5)), -1);
    v16 = v17.i32[0] & (v17.i32[0] >> 31);
    v14 = v17;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0x8000000080000000;
    do
    {
      v11 = *v6++;
      v12 = *&v11;
      v13 = *(&v11 + 1);
      if (v8 <= *&v11)
      {
        v8 = v12;
      }

      v10 = vmin_s32(v10, __PAIR64__(v13, v12));
      if (v9 <= v13)
      {
        v9 = v13;
      }
    }

    while (v6 != v7);
    v14 = vadd_s32(vmovn_s64(vcvtq_s64_f64(v5)), -1);
    v15 = vmin_s32(v14, v10);
    v16 = v14.i32[0];
    if (v14.i32[0] >= v8)
    {
      v16 = v8;
    }

    v17 = vand_s8(vcgez_s32(v10), v15);
  }

  *v4.i32 = v14.i32[0];
  a4.f32[1] = a3;
  v18 = vmul_n_f32(a4, (v16 - v17.i32[0]));
  v19 = vdup_lane_s32(v17, 0);
  v20 = vcvt_s32_f32(v18);
  v21 = vsub_s32(v19, v20);
  v19.i32[0] = v16;
  v20.i32[0] = vadd_s32(v19, v20).u32[0];
  v20.i32[1] = v21.i32[1];
  v22 = vdiv_f32(vcvt_f32_s32(vand_s8(vcgez_s32(v20), vmin_s32(vdup_lane_s32(v14, 0), v20))), vdup_lane_s32(v4, 0));
  __asm { FMOV            V6.2S, #1.0 }

  return COERCE_FLOAT(vbic_s8(vbsl_s8(vcgt_f32(v22, _D6), *&_D6, *&v22), vcltz_f32(v22)).i32[1]);
}

int32x2_t vg::shared::expandBBoxToMatchAspectRatio(int32x2_t *a1, int a2, void *a3, float a4)
{
  if (a4 >= 0.0001)
  {
    v5 = a3[1];
    v6 = *a1;
    v7 = *a1;
    if (v7 - a2 <= *a3)
    {
      v10 = v7 - 1;
      v8 = a1[1];
      v9 = v8.i32[0];
    }

    else
    {
      v8 = a1[1];
      v9 = v8.i32[0];
      v10 = v5 + ~a1[1].i32[0];
      if (v8.i32[0] + a2 < v5)
      {
        v10 = a2;
      }
    }

    v11 = vsub_s32(v8, v6);
    v12 = ((v9 - v7 + 2 * v10) / a4) - v11.i32[1];
    if (v6.i32[1] - v12 / 2 <= HIDWORD(*a3))
    {
      v13 = v6.i32[1] - 1;
    }

    else
    {
      v13 = v12 / 2;
      if (v12 / 2 + v8.i32[1] >= SHIDWORD(v5))
      {
        v13 = HIDWORD(v5) + ~v8.i32[1];
      }
    }

    v14.i32[0] = (((v11.i32[1] + 2 * v13) * a4) - v11.i32[0]) / 2;
    v14.i32[1] = v13;
    return vsub_s32(v6, v14);
  }

  else
  {
    return *a1;
  }
}

unsigned int vg::shared::clipFToUInt8(vg::shared *this, float a2, float a3, float a4)
{
  if (a2 < a4)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    return llroundf(((a2 - a4) * 255.0) / (a3 - a4));
  }

  return 255;
}

float32x2_t vg::shared::scaleFromMatrix(float32x4_t *this, const simd_float4x4 *a2)
{
  v2 = vmulq_f32(*this, *this);
  v3 = vmulq_f32(this[1], this[1]);
  return vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v3, v3, 8uLL)), vadd_f32(vzip1_s32(*v2.i8, *v3.i8), vzip2_s32(*v2.i8, *v3.i8))));
}

double vg::shared::rotationFromMatrix(int32x4_t *this, const simd_float4x4 *a2)
{
  v2 = this[1];
  v3 = vzip1q_s32(*this, v2);
  v4 = vzip2q_s32(*this, v2);
  v3.i32[2] = this[2];
  v4.i32[2] = this[2].i64[1];
  v5 = vmulq_f32(*this, *this);
  v5.f32[0] = sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
  *&result = vdivq_f32(vzip1q_s32(vzip1q_s32(v3, v4), vdupq_lane_s32(*this->i8, 1)), vdupq_lane_s32(*v5.f32, 0)).u64[0];
  return result;
}

__n64 vg::shared::rotation4x4ForAngle(float32x4_t *a1, float a2)
{
  v18 = *a1;
  v2 = __sincosf_stret(a2 * 0.5);
  _Q3 = vmulq_n_f32(v18, v2.__sinval);
  _S5 = _Q3.i32[1];
  _S6 = _Q3.i32[2];
  __asm { FMLS            S0, S6, V3.S[2] }

  v11 = vmuls_lane_f32(v2.__cosval, _Q3, 2);
  result.n64_f32[0] = _S0 + (v2.__cosval * v2.__cosval);
  result.n64_f32[1] = (v11 + (_Q3.f32[0] * _Q3.f32[1])) + (v11 + (_Q3.f32[0] * _Q3.f32[1]));
  __asm
  {
    FMLA            S4, S5, V3.S[1]
    FMLA            S18, S6, V3.S[1]
    FMLA            S16, S6, V3.S[1]
    FMLA            S1, S6, V3.S[2]
    FMLS            S1, S5, V3.S[1]
  }

  return result;
}

double vg::shared::matrixFromEulerAngles(__int128 *a1)
{
  v25 = *a1;
  LODWORD(v1) = HIDWORD(*a1);
  v28 = xmmword_270FA91A0;
  *v2.f32 = vg::shared::rotation4x4ForAngle(&v28, v1);
  v23 = v3;
  v24 = v2;
  v21 = v5;
  v22 = v4;
  v27 = xmmword_270FA6CF0;
  *v6.f32 = vg::shared::rotation4x4ForAngle(&v27, *&v25);
  v19 = v6;
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v26 = xmmword_270FA91B0;
  *&v10 = vg::shared::rotation4x4ForAngle(&v26, *(&v25 + 2));
  v11 = 0;
  v29 = v10;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  do
  {
    v33[v11 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(&v29 + v11))), v20, *(&v29 + v11), 1), v18, *(&v29 + v11), 2), v17, *(&v29 + v11), 3);
    v11 += 16;
  }

  while (v11 != 64);
  v15 = 0;
  v29 = v33[0];
  v30 = v33[1];
  v31 = v33[2];
  v32 = v33[3];
  do
  {
    v33[v15 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v29 + v15))), v23, *(&v29 + v15), 1), v22, *(&v29 + v15), 2), v21, *(&v29 + v15), 3);
    v15 += 16;
  }

  while (v15 != 64);
  return *v33;
}

double vg::shared::eulerAnglesFromMatrix(vg::shared *this, simd_float4x4 a2)
{
  if (a2.columns[2].f32[1] >= 1.0)
  {
    atan2f(-a2.columns[0].f32[2], -a2.columns[1].f32[2]);
    LODWORD(v2) = -1077342245;
LABEL_6:
    HIDWORD(v2) = 0;
    return v2;
  }

  if (a2.columns[2].f32[1] <= -1.0)
  {
    atan2f(a2.columns[0].f32[2], a2.columns[1].f32[2]);
    LODWORD(v2) = 1070141403;
    goto LABEL_6;
  }

  v5 = a2.columns[2];
  v6 = a2.columns[1].f32[1];
  v4 = a2.columns[0].f32[1];
  v7 = asinf(-a2.columns[2].f32[1]);
  v5.i32[0] = atan2f(v5.f32[0], v5.f32[2]);
  atan2f(v4, v6);
  return COERCE_DOUBLE(__PAIR64__(v5.u32[0], LODWORD(v7)));
}

unint64_t *std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned long *>>(unint64_t *result, char *a2, char *a3)
{
  while (a3 != a2)
  {
    v3 = (a3 - result) >> 3;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v43 = result[1];
      v44 = *(a3 - 1);
      if (v43 >= v44)
      {
        v45 = *(a3 - 1);
      }

      else
      {
        v45 = result[1];
      }

      if (v43 <= v44)
      {
        v43 = *(a3 - 1);
      }

      *(a3 - 1) = v43;
      result[1] = v45;
      v46 = *(a3 - 1);
      if (v46 >= *result)
      {
        v47 = *result;
      }

      else
      {
        v47 = *(a3 - 1);
      }

      if (v46 <= *result)
      {
        v46 = *result;
      }

      *(a3 - 1) = v46;
      v48 = result[1];
      if (v47 >= v48)
      {
        *result = v48;
        v48 = v47;
      }

      result[1] = v48;
      return result;
    }

    if (v3 == 2)
    {
      v49 = *(a3 - 1);
      v50 = *result;
      if (v49 < *result)
      {
        *result = v49;
        *(a3 - 1) = v50;
      }

      return result;
    }

    if (v3 <= 7)
    {
      return std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned long *>>(result, a3);
    }

    v4 = &result[(a3 - result) >> 4];
    v5 = a3 - 8;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 >= v6)
    {
      v8 = *(a3 - 1);
    }

    else
    {
      v8 = *v4;
    }

    if (*v4 <= v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 >= *result)
    {
      v12 = *result;
    }

    else
    {
      v12 = *v5;
    }

    if (*v5 <= *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    if (v12 < *v4)
    {
      v15 = *v4;
    }

    else
    {
      *result = v14;
      v15 = v12;
    }

    *v4 = v15;
    v18 = v7 >= v6 || v10 >= v11 || v12 >= v14;
    v19 = *result;
    if (*result >= v15)
    {
      v20 = (a3 - 8);
      while (--v20 != result)
      {
        if (*v20 < v15)
        {
          *result = *v20;
          *v20 = v19;
          if (v18)
          {
            v18 = 2;
          }

          else
          {
            v18 = 1;
          }

          goto LABEL_39;
        }
      }

      v32 = result + 1;
      if (v19 >= *v5)
      {
        while (v32 != v5)
        {
          v33 = *v32;
          if (v19 < *v32)
          {
            *v32++ = *v5;
            *v5 = v33;
            goto LABEL_71;
          }

          ++v32;
        }

        return result;
      }

LABEL_71:
      if (v32 == v5)
      {
        return result;
      }

      while (1)
      {
        v37 = *result;
        do
        {
          v39 = *v32++;
          v38 = v39;
        }

        while (v37 >= v39);
        v40 = (v32 - 1);
        do
        {
          v42 = *(v5 - 1);
          v5 -= 8;
          v41 = v42;
        }

        while (v37 < v42);
        if (v40 >= v5)
        {
          break;
        }

        *v40 = v41;
        *v5 = v38;
      }

      result = v32 - 1;
      if (v40 > a2)
      {
        return result;
      }
    }

    else
    {
      v20 = (a3 - 8);
LABEL_39:
      v21 = result + 1;
      if (result + 1 >= v20)
      {
        v26 = result + 1;
      }

      else
      {
        v22 = result + 1;
        while (1)
        {
          v23 = *v4;
          do
          {
            v25 = *v22++;
            v24 = v25;
          }

          while (v25 < v23);
          v26 = v22 - 1;
          do
          {
            v28 = *--v20;
            v27 = v28;
          }

          while (v28 >= v23);
          if (v26 >= v20)
          {
            break;
          }

          *v26 = v27;
          *v20 = v24;
          ++v18;
          if (v26 == v4)
          {
            v4 = v20;
          }
        }
      }

      if (v26 != v4)
      {
        v29 = *v26;
        if (*v4 < *v26)
        {
          *v26 = *v4;
          *v4 = v29;
          ++v18;
        }
      }

      if (v26 == a2)
      {
        return result;
      }

      if (!v18)
      {
        if (v26 <= a2)
        {
          v34 = (v26 + 1);
          while (v34 != a3)
          {
            v36 = *(v34 - 1);
            v35 = *v34;
            v34 += 8;
            if (v35 < v36)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          while (v21 != v26)
          {
            v31 = *(v21 - 1);
            v30 = *v21++;
            if (v30 < v31)
            {
              goto LABEL_55;
            }
          }
        }

        return result;
      }

LABEL_55:
      if (v26 <= a2)
      {
        result = v26 + 1;
      }

      else
      {
        a3 = v26;
      }
    }
  }

  return result;
}

unint64_t *std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned long *>>(unint64_t *result, unint64_t *a2)
{
  while (result != a2 - 1)
  {
    v2 = result++;
    if (v2 != a2 && result != a2)
    {
      v3 = *v2;
      v4 = result;
      v5 = v2;
      v6 = result;
      do
      {
        v8 = *v6++;
        v7 = v8;
        if (v8 < v3)
        {
          v3 = v7;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v2)
      {
        v9 = *v2;
        *v2 = *v5;
        *v5 = v9;
      }
    }
  }

  return result;
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *result, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - result;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = result[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(result + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(result + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *result)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *result;
      }

      if (v40 < *result)
      {
        v40 = *result;
      }

      *(a3 - 1) = v40;
      v42 = result[1];
      if (v41 < v42)
      {
        v41 = result[1];
      }

      else
      {
        *result = v42;
      }

      result[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *result;
      if (v43 < *result)
      {
        *result = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(result, a3, a4);
      return;
    }

    v5 = &result[(a3 - result) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *result;
    if (*v6 < *result)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *result;
    }

    if (*v6 < *result)
    {
      v14 = *result;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *result = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *result;
    if (*result >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != result)
      {
        if (*v18 < v16)
        {
          *result = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = result + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *result;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      result = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = result + 1;
      if (result + 1 >= v18)
      {
        v23 = result + 1;
      }

      else
      {
        v20 = result + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        result = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<std::vector<double>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<double>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<double>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t *std::vector<std::vector<double>>::__construct_one_at_end[abi:ne200100]<std::vector<double> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<double>>::__emplace_back_slow_path<std::vector<double> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<double>>::~__split_buffer(&v14);
  return v8;
}

void sub_270F6AF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

float std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, float *a3)
{
  if (*(a1 + 12))
  {
    *(a1 + 12) = 0;
    v5 = *(a1 + 8);
  }

  else
  {
    do
    {
      do
      {
        v7 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v8 = (vcvts_n_f32_u32(std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this), 0x20uLL) * 2.0) + -1.0;
        v9 = (v8 * v8) + (v7 * v7);
      }

      while (v9 > 1.0);
    }

    while (v9 == 0.0);
    v10 = sqrtf((logf((v8 * v8) + (v7 * v7)) * -2.0) / v9);
    *(a1 + 8) = v8 * v10;
    *(a1 + 12) = 1;
    v5 = v7 * v10;
  }

  return *a3 + (v5 * a3[1]);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

id vg::shared::VNGetFaceObservations(vg::shared *this, IOSurface *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = this;
  if ([(vg::shared *)v2 pixelFormat]!= 32)
  {
    v3 = [(vg::shared *)v2 pixelFormat];
    if (v3 != 1111970369)
    {
      v6 = __VGLogSharedInstance(v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = vg::OSTypeToString([(vg::shared *)v2 pixelFormat]);
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Unsupported format for the input image: %@ ", buf, 0xCu);
      }

      goto LABEL_12;
    }
  }

  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v2);
  v5 = CVPixelBufferFromIOSurface;
  if (!CVPixelBufferFromIOSurface)
  {
    v6 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Failed to create pixel buffer ", buf, 2u);
    }

LABEL_12:
    v10 = 0;
    goto LABEL_17;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___ZN2vg6shared21VNGetFaceObservationsEP9IOSurface_block_invoke;
  v16[3] = &__block_descriptor_40_e5_v8__0l;
  v16[4] = CVPixelBufferFromIOSurface;
  v6 = MEMORY[0x2743B9AA0](v16);
  v7 = objc_alloc(MEMORY[0x277CE2D50]);
  v8 = [v7 initWithCVPixelBuffer:v5 options:MEMORY[0x277CBEC10]];
  v9 = v8;
  if (v8)
  {
    buf[0] = 0;
    buf[32] = 0;
    vg::shared::getVNFaceObservations(v8, buf, &v14);
    if (v15)
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v12 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_ERROR, " Vision request handler failed to instantiate ", buf, 2u);
    }

    v10 = 0;
  }

  (*(v6 + 16))(v6);
LABEL_17:

  return v10;
}

void sub_270F6B354(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

void vg::shared::getVNFaceObservations(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = VGLogVGSharedVision(v5);
  if (os_signpost_enabled(v6))
  {
    if (*(a2 + 32))
    {
      v7 = @"true";
    }

    else
    {
      v7 = @"false";
    }

    *buf = 138543362;
    v38 = v7;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetVNFaceObservations", "withFaceBounds: %{public}@", buf, 0xCu);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___ZN2vg6sharedL21getVNFaceObservationsEP21VNImageRequestHandlerNSt3__18optionalI6CGRectEE_block_invoke;
  v30[3] = &__block_descriptor_72_e5_v8__0l;
  v8 = a2[1];
  v31 = *a2;
  v32 = v8;
  v33 = *(a2 + 4);
  v9 = MEMORY[0x2743B9AA0](v30);
  if (*(a2 + 32) == 1)
  {
    v10 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:3737841669 boundingBox:0 roll:0 yaw:0 pitch:{*a2, *(a2 + 1), *(a2 + 2), *(a2 + 3)}];
    v36 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    *a3 = [v11 mutableCopy];
    *(a3 + 8) = 1;

    goto LABEL_30;
  }

  v12 = objc_opt_new();
  v34 = 0;
  v13 = [v12 setRevision:3737841669 error:&v34];
  v14 = v34;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = VGLogVGSharedVision(v14);
    if (os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_270F06000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceRectangles_PerformRequest", &unk_270FBF062, buf, 2u);
    }

    v35 = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v29 = 0;
    v18 = [v5 performRequests:v17 error:&v29];
    v19 = v29;

    if (v18)
    {
      ___ZN2vg6sharedL21getVNFaceObservationsEP21VNImageRequestHandlerNSt3__18optionalI6CGRectEE_block_invoke_173(v20);
    }

    else
    {
      v25 = __VGLogSharedInstance(v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v19;
        _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_ERROR, " Vision failed face detection request with error: %@ ", buf, 0xCu);
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      ___ZN2vg6sharedL21getVNFaceObservationsEP21VNImageRequestHandlerNSt3__18optionalI6CGRectEE_block_invoke_173(v26);
      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v27 = [v12 results];
    if ([v27 count])
    {
      *a3 = v27;
      *(a3 + 8) = 1;
    }

    else
    {
      v28 = __VGLogSharedInstance(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v28, OS_LOG_TYPE_ERROR, " Vision did not detect any faces ", buf, 2u);
      }

      *a3 = 0;
      *(a3 + 8) = 0;
    }

LABEL_29:

    goto LABEL_30;
  }

  v21 = v14;
  v22 = __VGLogSharedInstance(v14);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = v21;
    _os_log_impl(&dword_270F06000, v22, OS_LOG_TYPE_ERROR, " Vision VNDetectFaceRectanglesRequest failed to set revision with error: %@ ", buf, 0xCu);
  }

  v24 = __VGLogSharedInstance(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270F06000, v24, OS_LOG_TYPE_ERROR, " Unable to create Vision face detection request ", buf, 2u);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
LABEL_30:
  v9[2](v9);
}

void sub_270F6B824(_Unwind_Exception *a1)
{
  v2[2](v2);

  _Unwind_Resume(a1);
}

id vg::shared::VNGetLargestFaceObservation(vg::shared *this, IOSurface *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = this;
  v4 = vg::shared::VNGetFaceObservations(v2, v3);
  v5 = v4;
  if (v4 && [v4 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v5;
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          [v12 boundingBox];
          if (!CGRectIsEmpty(v26))
          {
            [v12 boundingBox];
            v14 = v13;
            [v12 boundingBox];
            v16 = v14 * v15;
            if (v16 > v10)
            {
              v17 = v12;

              v10 = v16;
              v7 = v17;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void vg::shared::VNDetectFaceMetadata(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v4))
  {
    v5 = @"false";
    if (*(a1 + 50))
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = *(a1 + 48);
    if (*(a1 + 49))
    {
      v8 = @"true";
    }

    else
    {
      v8 = @"false";
    }

    *buf = 138543874;
    if (v7)
    {
      v5 = @"true";
    }

    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    *&buf[24] = v5;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceMetadata", "isWarmupRun: %{public}@, generateFaceAttributes: %{public}@, generateFaceLandmarks2D: %{public}@", buf, 0x20u);
  }

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = ___ZN2vg6shared20VNDetectFaceMetadataERKNS0_11VNFaceInputE_block_invoke;
  v84[3] = &__block_descriptor_40_e5_v8__0l;
  v84[4] = a1;
  v9 = MEMORY[0x2743B9AA0](v84);
  v10 = v9;
  if (*(a1 + 49) & 1) != 0 || (*(a1 + 48))
  {
    if ([*a1 pixelFormat] == 32 || (v11 = objc_msgSend(*a1, "pixelFormat"), v11 == 1111970369))
    {
      CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(*a1);
      v13 = CVPixelBufferFromIOSurface;
      if (CVPixelBufferFromIOSurface)
      {
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = ___ZN2vg6shared20VNDetectFaceMetadataERKNS0_11VNFaceInputE_block_invoke_155;
        v83[3] = &__block_descriptor_40_e5_v8__0l;
        v83[4] = CVPixelBufferFromIOSurface;
        v14 = MEMORY[0x2743B9AA0](v83);
        v15 = objc_alloc(MEMORY[0x277CE2D50]);
        v16 = [v15 initWithCVPixelBuffer:v13 options:MEMORY[0x277CBEC10]];
        v17 = v16;
        if (!v16)
        {
          v51 = __VGLogSharedInstance(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, v51, OS_LOG_TYPE_ERROR, " Vision request handler failed to instantiate ", buf, 2u);
          }

          *a2 = 0;
          *(a2 + 16) = 0;
          goto LABEL_111;
        }

        v18 = *(a1 + 24);
        *buf = *(a1 + 8);
        *&buf[16] = v18;
        v89 = *(a1 + 40);
        vg::shared::getVNFaceObservations(v16, buf, &v81);
        v20 = v82;
        if (v82 != 1 || (v21 = v81, (v19 = [v81 count]) == 0))
        {
          v50 = __VGLogSharedInstance(v19);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_270F06000, v50, OS_LOG_TYPE_ERROR, " Unable to get VNFaceObservations ", buf, 2u);
          }

          *a2 = 0;
          *(a2 + 16) = 0;
          if (!v20)
          {
            goto LABEL_111;
          }

LABEL_110:

LABEL_111:
          v14[2](v14);

          goto LABEL_112;
        }

        v75 = [v21 firstObject];
        v22 = objc_opt_new();
        v76 = v22;
        LOBYTE(v79) = 0;
        v80 = 0;
        if (*(a1 + 48) == 1)
        {
          v23 = v75;
          v24 = VGLogVGSharedVision(v23);
          if (os_signpost_enabled(v24))
          {
            *v86 = 0;
            _os_signpost_emit_with_name_impl(&dword_270F06000, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateFaceLandmarksRequest", &unk_270FBF062, v86, 2u);
          }

          v25 = objc_opt_new();
          *v86 = v23;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
          [v25 setInputFaceObservations:v26];

          *buf = v25;
          buf[8] = 1;
          ___ZN2vg6sharedL26createFaceLandmarksRequestEP17VNFaceObservation_block_invoke(v27);

          std::__optional_storage_base<VNDetectFaceLandmarksRequest * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<VNDetectFaceLandmarksRequest * {__strong},false>>(&v79, buf);
          if (buf[8] == 1)
          {
          }

          if (v80)
          {
            v22 = [v76 addObject:v79];
          }
        }

        v86[0] = 0;
        v87 = 0;
        if (*(a1 + 49) == 1)
        {
          v74 = v75;
          v28 = VGLogVGSharedVision(v74);
          if (os_signpost_enabled(v28))
          {
            *v90 = 0;
            _os_signpost_emit_with_name_impl(&dword_270F06000, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CreateFaceAttributesRequest", &unk_270FBF062, v90, 2u);
          }

          v29 = objc_opt_new();
          v85 = 0;
          v30 = [v29 setRevision:3737841666 error:&v85];
          v31 = v85;
          if (v31)
          {
            v32 = 0;
          }

          else
          {
            v32 = v30;
          }

          v73 = v31;
          if (v32)
          {
            v33 = [MEMORY[0x277CE2DA0] defaultANEDevice];
            if (!v33)
            {
              v33 = [MEMORY[0x277CE2DA0] defaultDevice];
            }

            [v74 boundingBox];
            v35 = v34;
            v37 = v36;
            v39 = v38;
            v41 = v40;
            [v29 setProcessingDevice:v33];
            v42 = 1.0;
            if (v35 <= 1.0)
            {
              v43 = v35;
            }

            else
            {
              v43 = 1.0;
            }

            if (v35 < 0.0)
            {
              v43 = 0.0;
            }

            if (v37 <= 1.0)
            {
              v44 = v37;
            }

            else
            {
              v44 = 1.0;
            }

            if (v37 < 0.0)
            {
              v44 = 0.0;
            }

            if (v39 <= 1.0)
            {
              v45 = v39;
            }

            else
            {
              v45 = 1.0;
            }

            if (v39 < 0.0)
            {
              v45 = 0.0;
            }

            if (v41 <= 1.0)
            {
              v42 = v41;
            }

            if (v41 < 0.0)
            {
              v42 = 0.0;
            }

            [v29 setRegionOfInterest:{v43, v44, v45, v42}];
            *v90 = v74;
            v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:1];
            [v29 setInputFaceObservations:v46];

            *buf = v29;
            v47 = 1;
            v29 = v33;
          }

          else
          {
            v52 = v31;
            v53 = __VGLogSharedInstance(v31);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              *v90 = 138412290;
              *&v90[4] = v52;
              _os_log_impl(&dword_270F06000, v53, OS_LOG_TYPE_ERROR, " Vision VNClassifyFaceAttributesRequest failed to set revision with error: %@ ", v90, 0xCu);
            }

            v47 = 0;
            buf[0] = 0;
          }

          buf[8] = v47;

          ___ZN2vg6sharedL27createFaceAttributesRequestEP17VNFaceObservation_block_invoke(v54);
          std::__optional_storage_base<VNDetectFaceLandmarksRequest * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<VNDetectFaceLandmarksRequest * {__strong},false>>(v86, buf);
          if (buf[8] == 1)
          {
          }

          if (v87)
          {
            v22 = [v76 addObject:*v86];
          }
        }

        v55 = VGLogVGSharedVision(v22);
        if (os_signpost_enabled(v55))
        {
          v56 = @"false";
          if (*(a1 + 50))
          {
            v57 = @"true";
          }

          else
          {
            v57 = @"false";
          }

          v58 = *(a1 + 48);
          if (*(a1 + 49))
          {
            v59 = @"true";
          }

          else
          {
            v59 = @"false";
          }

          *buf = 138543874;
          if (v58)
          {
            v56 = @"true";
          }

          *&buf[4] = v57;
          *&buf[12] = 2114;
          *&buf[14] = v59;
          *&buf[22] = 2114;
          *&buf[24] = v56;
          _os_signpost_emit_with_name_impl(&dword_270F06000, v55, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceMetadata_PerformRequests", "isWarmupRun: %{public}@, generateFaceAttributes: %{public}@, generateFaceLandmarks2D: %{public}@", buf, 0x20u);
        }

        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = ___ZN2vg6shared20VNDetectFaceMetadataERKNS0_11VNFaceInputE_block_invoke_157;
        v78[3] = &__block_descriptor_40_e5_v8__0l;
        v78[4] = a1;
        v60 = MEMORY[0x2743B9AA0](v78);
        v77 = 0;
        v61 = [v17 performRequests:v76 error:&v77];
        v62 = v77;
        v63 = v62;
        if ((v61 & 1) == 0)
        {
          v64 = __VGLogSharedInstance(v62);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v63;
            _os_log_impl(&dword_270F06000, v64, OS_LOG_TYPE_ERROR, " Vision failed to perform requests with error: %@ ", buf, 0xCu);
          }
        }

        v60[2](v60);
        if (v80 == 1)
        {
          v65 = [v79 results];
          if (![v65 count])
          {
            v71 = __VGLogSharedInstance(0);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_270F06000, v71, OS_LOG_TYPE_ERROR, " Vision did not detect any face landmarks ", buf, 2u);
            }

            *a2 = 0;
            *(a2 + 16) = 0;

            goto LABEL_104;
          }

          v66 = [v65 firstObject];
          v67 = [v66 landmarks];
        }

        else
        {
          v67 = 0;
        }

        if (v87 == 1)
        {
          v68 = [*v86 results];
          if (![v68 count])
          {
            v72 = __VGLogSharedInstance(0);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_270F06000, v72, OS_LOG_TYPE_ERROR, " Vision did not detect any face attributes ", buf, 2u);
            }

            *a2 = 0;
            *(a2 + 16) = 0;

LABEL_105:
            if (v87 == 1)
            {
            }

            if (v80 == 1)
            {
            }

            if ((v82 & 1) == 0)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          }

          v69 = [v68 firstObject];
          v70 = [v69 faceAttributes];
        }

        else
        {
          v70 = 0;
        }

        *a2 = v67;
        *(a2 + 8) = v70;
        *(a2 + 16) = 1;
LABEL_104:
        v67 = 0;
        goto LABEL_105;
      }

      v48 = __VGLogSharedInstance(0);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_ERROR, " Failed to create pixel buffer ", buf, 2u);
      }
    }

    else
    {
      v48 = __VGLogSharedInstance(v11);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = vg::OSTypeToString([*a1 pixelFormat]);
        *buf = 138412290;
        *&buf[4] = v49;
        _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_ERROR, " Unsupported format for the input image: %@ ", buf, 0xCu);
      }
    }
  }

  else
  {
    v48 = __VGLogSharedInstance(v9);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_ERROR, " Invalid input for Vision Face Metadata ", buf, 2u);
    }
  }

  *a2 = 0;
  *(a2 + 16) = 0;
LABEL_112:
  v10[2](v10);
}

void sub_270F6C590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, char a21, void *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, char a36)
{
  ___ZN2vg6sharedL27createFaceAttributesRequestEP17VNFaceObservation_block_invoke(v41);

  if (a36 == 1)
  {
  }

  if (a21 == 1)
  {
  }

  if (a23)
  {
  }

  v37[2](v37);
  v36[2](v36);

  _Unwind_Resume(a1);
}

id VGLogVGSharedVision(uint64_t a1)
{
  if (VGLogVGSharedVision(void)::onceToken != -1)
  {
    VGLogVGSharedVision();
  }

  v2 = VGLogVGSharedVision(void)::handle;

  return v2;
}

void ___ZN2vg6shared20VNDetectFaceMetadataERKNS0_11VNFaceInputE_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    if (v3[50])
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    if (v3[49])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    if (v3[48])
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceMetadata", "isWarmupRun: %{public}@, generateFaceAttributes: %{public}@, generateFaceLandmarks2D: %{public}@", &v7, 0x20u);
  }
}

void ___ZN2vg6shared20VNDetectFaceMetadataERKNS0_11VNFaceInputE_block_invoke_157(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    if (v3[50])
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    if (v3[49])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    if (v3[48])
    {
      v6 = @"true";
    }

    else
    {
      v6 = @"false";
    }

    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceMetadata_PerformRequests", "isWarmupRun: %{public}@, generateFaceAttributes: %{public}@, generateFaceLandmarks2D: %{public}@", &v7, 0x20u);
  }
}

id vg::shared::VNDetectFaceLandmarks2D(void *a1, __int128 *a2)
{
  v3 = a1;
  v4 = VGLogVGSharedVision(v3);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceLandmarks2D", &unk_270FBF062, buf, 2u);
  }

  v5 = v3;
  *buf = v5;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v16 = *(a2 + 32);
  v17 = 1;
  v18 = 0;
  vg::shared::VNDetectFaceMetadata(buf, v11);
  if (v12)
  {
    v7 = v11[1];
    v8 = v11[0];
  }

  else
  {
    v8 = 0;
  }

  ___ZN2vg6shared23VNDetectFaceLandmarks2DEP9IOSurfaceRKNSt3__18optionalI6CGRectEE_block_invoke(v9);

  return v8;
}

void sub_270F6CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  ___ZN2vg6shared23VNDetectFaceLandmarks2DEP9IOSurfaceRKNSt3__18optionalI6CGRectEE_block_invoke(v15);

  _Unwind_Resume(a1);
}

void ___ZN2vg6shared23VNDetectFaceLandmarks2DEP9IOSurfaceRKNSt3__18optionalI6CGRectEE_block_invoke(uint64_t a1)
{
  v1 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceLandmarks2D", &unk_270FBF062, v2, 2u);
  }
}

uint64_t vg::shared::VNWarmupDetector(_BYTE *a1)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = @"false";
    if (a1[1])
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    if (*a1)
    {
      v3 = @"true";
    }

    *buf = 138543618;
    *&buf[4] = v4;
    v26 = 2114;
    v27 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNWarmupDetector", "warmupFaceAttributesRequest: %{public}@, warmupLandmarks2DRequest: %{public}@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = ___ZN2vg6shared16VNWarmupDetectorERKNS0_13VNWarmupInputE_block_invoke;
  v24[3] = &__block_descriptor_40_e5_v8__0l;
  v24[4] = a1;
  v5 = MEMORY[0x2743B9AA0](v24);
  v6 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] vg_resourcePath];
  v31[0] = v8;
  v31[1] = @"SharedData";
  v31[2] = @"vision_warmup_data.bin";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v10 = [v7 pathWithComponents:v9];
  v11 = [v6 initWithContentsOfFile:v10];

  if (!v11)
  {
    v14 = __VGLogSharedInstance(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_DEBUG, " Unable to load warmup data for Vision filter ", buf, 2u);
    }

    goto LABEL_17;
  }

  v13 = vg::createColorIOSurfaceFromData(v11, 0x42475241);
  v14 = v13;
  if (!v13)
  {
    v19 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v19, OS_LOG_TYPE_DEBUG, " Unable to construct BGRA IOSurface from warmup data for Vision filter ", buf, 2u);
    }

LABEL_17:
    v17 = 0;
    goto LABEL_21;
  }

  v15 = v13;
  *buf = v15;
  buf[8] = 0;
  v28 = 0;
  v29 = *a1;
  v30 = 1;
  vg::shared::VNDetectFaceMetadata(buf, v22);
  v17 = v23;
  if (v23)
  {

    v18 = v22[0];
  }

  else
  {
    v18 = __VGLogSharedInstance(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_DEBUG, " Failed to warmup Vision filter ", v21, 2u);
    }
  }

  v14 = v15;
LABEL_21:

  v5[2](v5);
  return v17;
}

void sub_270F6CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  v19[2](v19);

  _Unwind_Resume(a1);
}

void ___ZN2vg6shared16VNWarmupDetectorERKNS0_13VNWarmupInputE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    if (v3[1])
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    if (*v3)
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v5;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNWarmupDetector", "warmupFaceAttributesRequest: %{public}@, warmupLandmarks2DRequest: %{public}@", &v6, 0x16u);
  }
}

id vg::shared::VNGetFaceAttributes(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    if (*(a1 + 48))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    *buf = 138543362;
    *&buf[4] = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNGetFaceAttributes", "isWarmupRun: %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___ZN2vg6shared19VNGetFaceAttributesERKNS0_21VNFaceAttributesInputE_block_invoke;
  v9[3] = &__block_descriptor_40_e5_v8__0l;
  v9[4] = a1;
  v4 = MEMORY[0x2743B9AA0](v9);
  *buf = *a1;
  *&buf[8] = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = 256;
  v14 = *(a1 + 48);
  vg::shared::VNDetectFaceMetadata(buf, v7);
  if (v8)
  {
    v5 = v7[1];
  }

  else
  {
    v5 = 0;
  }

  v4[2](v4);

  return v5;
}

void ___ZN2vg6shared19VNGetFaceAttributesERKNS0_21VNFaceAttributesInputE_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    if (*(*(a1 + 32) + 48))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNGetFaceAttributes", "isWarmupRun: %{public}@", &v4, 0xCu);
  }
}

uint64_t vg::shared::VNGetIsBlinking(void *a1, float a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 eyesCategory];
    v6 = [v5 label];
    v7 = [v6 identifier];
    v8 = [v7 isEqual:*MEMORY[0x277CE2EC8]];

    v9 = [v4 eyesCategory];
    v10 = [v9 label];
    [v10 confidence];
    v12 = v11;

    if (v12 >= a2)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_270F06000, v14, OS_LOG_TYPE_ERROR, " Vision face attributes are nil ", v16, 2u);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t vg::shared::VNGetLeftPupilPoint(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v18 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v19 = " Vision face landmarks are nil ";
      v20 = &v23;
LABEL_8:
      _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    }

LABEL_9:

    v17 = 0;
    goto LABEL_10;
  }

  v5 = [v3 leftPupil];
  v6 = [v5 pointCount];

  if (v6 != 1)
  {
    v18 = __VGLogSharedInstance(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v19 = " Vision did not find the left pupil ";
      v20 = &v22;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [v4 leftPupil];
  v9 = v8;
  v10 = a2;
  v11 = HIWORD(a2);
  v12 = [v9 pointsInImageOfSize:{v10, v11}];
  v13 = *v12;
  v14 = v12[1];

  *&v15 = v13;
  v16 = v14;
  *(&v15 + 1) = v11 - v16;
  v17 = v15;
LABEL_10:

  return v17;
}

uint64_t vg::shared::VNGetRightPupilPoint(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v18 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v19 = " Vision face landmarks are nil ";
      v20 = &v23;
LABEL_8:
      _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    }

LABEL_9:

    v17 = 0;
    goto LABEL_10;
  }

  v5 = [v3 rightPupil];
  v6 = [v5 pointCount];

  if (v6 != 1)
  {
    v18 = __VGLogSharedInstance(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v19 = " Vision did not find the right pupil ";
      v20 = &v22;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [v4 rightPupil];
  v9 = v8;
  v10 = a2;
  v11 = HIWORD(a2);
  v12 = [v9 pointsInImageOfSize:{v10, v11}];
  v13 = *v12;
  v14 = v12[1];

  *&v15 = v13;
  v16 = v14;
  *(&v15 + 1) = v11 - v16;
  v17 = v15;
LABEL_10:

  return v17;
}

void vg::shared::VNGetHumanBBoxes(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VNGetHumanBBox", &unk_270FBF062, buf, 2u);
  }

  CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(*a1);
  v6 = CVPixelBufferFromIOSurface;
  if (CVPixelBufferFromIOSurface)
  {
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = ___ZN2vg6shared16VNGetHumanBBoxesERKNS0_16VNHumanBBoxInputE_block_invoke_170;
    v51[3] = &__block_descriptor_40_e5_v8__0l;
    v51[4] = CVPixelBufferFromIOSurface;
    v43 = MEMORY[0x2743B9AA0](v51);
    v7 = objc_alloc(MEMORY[0x277CE2D50]);
    v44 = [v7 initWithCVPixelBuffer:v6 options:MEMORY[0x277CBEC10]];
    v8 = objc_opt_new();
    [v8 setUpperBodyOnly:*(a1 + 8)];
    v50 = 0;
    v9 = [v8 setRevision:2 error:&v50];
    v10 = v50;
    v11 = v10;
    if (v9)
    {
      v53 = v8;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      v49 = v11;
      v13 = [v44 performRequests:v12 error:&v49];
      v42 = v49;

      if (v13)
      {
        v15 = [v8 results];
        v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v15, "count", v15)}];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = v15;
        v18 = [v17 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v18)
        {
          v19 = *v46;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v46 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v45 + 1) + 8 * i);
              [v21 boundingBox];
              if (v22 <= 1.0)
              {
                v26 = v22;
              }

              else
              {
                v26 = 1.0;
              }

              if (v22 >= 0.0)
              {
                v27 = v26;
              }

              else
              {
                v27 = 0.0;
              }

              v28 = 1.0 - (v23 + v25);
              if (v28 <= 1.0)
              {
                v29 = 1.0 - (v23 + v25);
              }

              else
              {
                v29 = 1.0;
              }

              if (v28 >= 0.0)
              {
                v30 = v29;
              }

              else
              {
                v30 = 0.0;
              }

              v31 = 1.0 - v27;
              if (1.0 - v27 >= v24)
              {
                v31 = v24;
              }

              if (v24 >= 0.0)
              {
                v32 = v31;
              }

              else
              {
                v32 = 0.0;
              }

              v33 = 1.0 - v30;
              if (1.0 - v30 >= v25)
              {
                v33 = v25;
              }

              if (v25 >= 0.0)
              {
                v34 = v33;
              }

              else
              {
                v34 = 0.0;
              }

              v35 = [VGHumanBBox alloc];
              [v21 confidence];
              v37 = [(VGHumanBBox *)v35 initWithBBox:v27 confidence:v30, v32, v34, v36];
              [v16 addObject:v37];
            }

            v18 = [v17 countByEnumeratingWithState:&v45 objects:v52 count:16];
          }

          while (v18);
        }

        *a2 = v16;
        *(a2 + 8) = 1;
      }

      else
      {
        v41 = __VGLogSharedInstance(v14);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v55 = v42;
          _os_log_impl(&dword_270F06000, v41, OS_LOG_TYPE_ERROR, " Failed to process human bbox request %@ ", buf, 0xCu);
        }

        *a2 = 0;
        *(a2 + 8) = 0;
      }

      v11 = v42;
    }

    else
    {
      v40 = __VGLogSharedInstance(v10);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v11;
        _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_ERROR, " Error setting revision for detect human rectangles model %@ ", buf, 0xCu);
      }

      *a2 = 0;
      *(a2 + 8) = 0;
    }

    v43[2](v43);
  }

  else
  {
    v38 = __VGLogSharedInstance(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v38, OS_LOG_TYPE_ERROR, " Failed to create pixel buffer ", buf, 2u);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
  }

  ___ZN2vg6shared16VNGetHumanBBoxesERKNS0_16VNHumanBBoxInputE_block_invoke(v39);
}

void sub_270F6DC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void (**a11)(void), void *a12)
{
  a11[2]();

  ___ZN2vg6shared16VNGetHumanBBoxesERKNS0_16VNHumanBBoxInputE_block_invoke(v16);
  _Unwind_Resume(a1);
}

void ___ZN2vg6shared16VNGetHumanBBoxesERKNS0_16VNHumanBBoxInputE_block_invoke(uint64_t a1)
{
  v1 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNGetHumanBBox", &unk_270FBF062, v2, 2u);
  }
}

void ___ZN2vg6sharedL21getVNFaceObservationsEP21VNImageRequestHandlerNSt3__18optionalI6CGRectEE_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v2))
  {
    if (*(a1 + 64))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    v4 = 138543362;
    v5 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetVNFaceObservations", "withFaceBounds: %{public}@", &v4, 0xCu);
  }
}

void ___ZN2vg6sharedL21getVNFaceObservationsEP21VNImageRequestHandlerNSt3__18optionalI6CGRectEE_block_invoke_173(uint64_t a1)
{
  v1 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VNDetectFaceRectangles_PerformRequest", &unk_270FBF062, v2, 2u);
  }
}

void ___ZL19VGLogVGSharedVisionv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "VGSharedVision");
  v1 = VGLogVGSharedVision(void)::handle;
  VGLogVGSharedVision(void)::handle = v0;
}

void ___ZN2vg6sharedL26createFaceLandmarksRequestEP17VNFaceObservation_block_invoke(uint64_t a1)
{
  v1 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateFaceLandmarksRequest", &unk_270FBF062, v2, 2u);
  }
}

void std::__optional_storage_base<VNDetectFaceLandmarksRequest * {__strong},false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<VNDetectFaceLandmarksRequest * {__strong},false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
    }
  }

  else if (*(a1 + 8))
  {

    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }
}

void ___ZN2vg6sharedL27createFaceAttributesRequestEP17VNFaceObservation_block_invoke(uint64_t a1)
{
  v1 = VGLogVGSharedVision(a1);
  if (os_signpost_enabled(v1))
  {
    *v2 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateFaceAttributesRequest", &unk_270FBF062, v2, 2u);
  }
}

id humanAttributesMap(void)
{
  v5[4] = *MEMORY[0x277D85DE8];
  {
    v2 = *MEMORY[0x277CE3048];
    v4[0] = *MEMORY[0x277CE3050];
    v4[1] = v2;
    v5[0] = @"hair";
    v5[1] = @"facial_hair";
    v3 = *MEMORY[0x277CE3058];
    v4[2] = *MEMORY[0x277CE3060];
    v4[3] = v3;
    v5[2] = @"teeth";
    v5[3] = @"skin";
    humanAttributesMap(void)::kHumanAttributesMap = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  }

  v0 = humanAttributesMap(void)::kHumanAttributesMap;

  return v0;
}

id personInstancesMapNames(void)
{
  {
    personInstancesMapNames(void)::kPersonInstancesMapNames = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"person_instances_1", @"person_instances_2", @"person_instances_3", @"person_instances_4", 0}];
  }

  v0 = personInstancesMapNames(void)::kPersonInstancesMapNames;

  return v0;
}

uint64_t vg::shared::DebugRendererImpl::init(uint64_t a1, void *a2)
{
  if (!vg::shared::OffScreenRenderer::_checkStaticInfo(a2))
  {
    return 0;
  }

  *(a1 + 48) = *(a2 + 3);
  v4 = *(a2 + 10);
  *a1 = a2[4];
  *(a1 + 4) = v4;
  objc_storeStrong((a1 + 8), *a2);
  v5 = vg::shared::getMetalLibrary(*a2);
  v6 = v5;
  if (v5 && (vg::shared::DebugRendererImpl::_createRenderPipeline(v5, v5, a2[2], a2[3], 3), v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 16), *(a1 + 16) = v7, v8, vg::shared::DebugRendererImpl::_createRenderPipeline(v9, v6, a2[2], a2[3], 2), v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 24), *(a1 + 24) = v10, v11, vg::shared::DebugRendererImpl::_createRenderPipeline(v12, v6, a2[2], a2[3], 1), v13 = objc_claimAutoreleasedReturnValue(), v14 = *(a1 + 32), *(a1 + 32) = v13, v14, *(a1 + 16)))
  {
    if (a2[3])
    {
      v15 = objc_alloc_init(MEMORY[0x277CD6D60]);
      v16 = v15;
      v17 = *(a1 + 48);
      if (v17 == 3)
      {
        v18 = 6;
      }

      else
      {
        v18 = 4;
      }

      [v15 setDepthCompareFunction:v18];
      [v16 setDepthWriteEnabled:v17 == 3];
      v19 = [*(a1 + 8) newDepthStencilStateWithDescriptor:v16];
      v20 = *(a1 + 40);
      *(a1 + 40) = v19;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id vg::shared::DebugRendererImpl::_createRenderPipeline(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  *(&v35 + 1) = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = v8;
  v33 = v5;
  v32 = 0;
  switch(v5)
  {
    case 3:
      v10 = 3;
      goto LABEL_7;
    case 2:
      v10 = 2;
LABEL_7:
      v33 = v10;
LABEL_8:
      v11 = objc_alloc_init(MEMORY[0x277CD6D70]);
      v27 = a4;
      [v11 setConstantValue:&v33 type:33 atIndex:0];
      [v11 setConstantValue:&v32 type:53 atIndex:1];
      __p = @"vg::shared::debug_renderer::debugVertexShader";
      v12 = v11;
      v30 = v12;
      v13 = vg::shared::createMetalFunction(v9, &__p);

      __p = @"vg::shared::debug_renderer::debugFragmentShader";
      v14 = v12;
      v30 = v14;
      v15 = vg::shared::createMetalFunction(v9, &__p);

      v16 = 0;
      if (v13 && v15)
      {
        v34 = xmmword_270FA9330;
        v30 = 0;
        v31 = 0;
        __p = 0;
        std::vector<std::pair<unsigned long,MTLVertexFormat>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,MTLVertexFormat> const*,std::pair<unsigned long,MTLVertexFormat> const*>(&__p, &v34, &v35, 1uLL);
        v17 = objc_opt_new();
        [v17 setVertexFunction:v13];
        v18 = vg::shared::createMetalVertexDescriptor(__p, (v30 - __p) >> 4);
        [v17 setVertexDescriptor:v18];

        [v17 setFragmentFunction:v15];
        v19 = [v17 colorAttachments];
        v20 = [v19 objectAtIndexedSubscript:0];

        [v20 setPixelFormat:a3];
        [v17 setDepthAttachmentPixelFormat:v27];
        [v17 setInputPrimitiveTopology:v10];
        v21 = [v9 device];
        v28 = 0;
        v16 = [v21 newRenderPipelineStateWithDescriptor:v17 error:&v28];
        v22 = v28;

        if (v16)
        {
          v24 = v16;
        }

        else
        {
          v25 = VGLogSharedDebugRenderer(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            vg::shared::DebugRendererImpl::_createRenderPipeline(v22, v25);
          }
        }

        if (__p)
        {
          v30 = __p;
          operator delete(__p);
        }
      }

      goto LABEL_21;
    case 1:
      v10 = 1;
      v33 = 1;
      v32 = 1;
      goto LABEL_8;
  }

  v14 = VGLogSharedDebugRenderer(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    vg::shared::DebugRendererImpl::_createRenderPipeline(v5, v14);
  }

  v16 = 0;
LABEL_21:

  return v16;
}

void sub_270F6F840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id *vg::shared::DebugRendererImpl::update(id *a1, uint64_t *a2)
{
  if (!vg::shared::DebugRendererImpl::_checkUpdateInfo(a2, *a1, *(a1 + 1)))
  {
    return 0;
  }

  vg::shared::DebugQueue::metalBuffers(&obj, a2[6]);
  objc_storeStrong(a1 + 88, obj);
  objc_storeStrong(a1 + 89, v39);
  objc_storeStrong(a1 + 90, v40);
  objc_storeStrong(a1 + 91, v41);
  objc_storeStrong(a1 + 92, v42);
  objc_storeStrong(a1 + 93, v43);
  objc_storeStrong(a1 + 94, v44);
  *(a1 + 190) = vg::shared::DebugQueue::numTriangleVertices(a2[6]);
  *(a1 + 191) = vg::shared::DebugQueue::numLineVertices(a2[6]);
  v4 = vg::shared::DebugQueue::numPointVertices(a2[6]);
  v5 = a1 + 8;
  *(a1 + 192) = v4;
  if (*a1)
  {
    v6 = 0;
    v7 = *a2;
    do
    {
      v8 = v7 + 192 * v6;
      v9 = *(v8 + 176);
      if (*(a1 + 1) == 1)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      v36 = *(v8 + 64);
      v37 = *(v8 + 80);
      v34 = *(v8 + 112);
      v35 = *(v8 + 96);
      v47 = __invert_f4(*v8);
      v11 = 0;
      v45 = v47;
      do
      {
        v46[v11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*&v45.columns[v11])), v37, *v45.columns[v11].f32, 1), v35, v45.columns[v11], 2), v34, v45.columns[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      v5 = a1 + 8;
      v12 = &a1[40 * v9 + 8] + 18 * v10;
      v13 = v46[1];
      v14 = v46[2];
      v15 = v46[3];
      *(v12 + 1) = v46[0];
      *(v12 + 2) = v13;
      *(v12 + 3) = v14;
      *(v12 + 4) = v15;
      *(v12 + 40) = v10;
      v16 = *(v8 + 128);
      v17 = *(v8 + 160);
      *(v12 + 7) = *(v8 + 144);
      *(v12 + 8) = v17;
      *(v12 + 6) = v16;
      v7 = *a2;
      v18 = *(*a2 + 192 * v6 + 180);
      *(v12 + 36) = v9;
      *(v12 + 37) = v18;
      ++v6;
    }

    while (v6 < *a1);
  }

  v19 = a2[3];
  v20 = a2[4] - v19;
  *(a1 + 193) = v20 >> 6;
  if (v20)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      if (*(a1 + 1) == 1)
      {
        v23 = *a1;
      }

      else
      {
        v23 = 1;
      }

      v24 = &v5[40 * v21];
      *(v24 + 76) = v23;
      v25 = [MEMORY[0x277CD6F50] renderPassDescriptor];
      v26 = v19 + (v21 << 6);
      v27 = *v24;
      *v24 = v25;

      [*v24 setRasterizationRateMap:*v26];
      [*v24 setRenderTargetArrayLength:{objc_msgSend(*(v26 + 40), "arrayLength")}];
      v28 = [*v24 colorAttachments];
      v29 = [v28 objectAtIndexedSubscript:0];

      [v29 setLoadAction:1];
      [v29 setStoreAction:1];
      [v29 setClearColor:{*(v26 + 8), *(v26 + 16), *(v26 + 24), *(v26 + 32)}];
      [v29 setTexture:*(v26 + 40)];
      if (a1[5])
      {
        v30 = [*v24 depthAttachment];
        v31 = v30;
        if (*(a1 + 12) == 3)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        [v30 setLoadAction:v32];
        [v31 setStoreAction:*(a1 + 12) == 3];
        [v31 setClearDepth:*(v26 + 48)];
        [v31 setTexture:*(v26 + 56)];
      }

      v21 = v22;
      v19 = a2[3];
      ++v22;
      v5 = a1 + 8;
    }

    while (v21 < (a2[4] - v19) >> 6);
  }

  return a1 + 8;
}

void sub_270F6FC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  vg::shared::DebugQueue::MetalBuffers::~MetalBuffers(va);
  _Unwind_Resume(a1);
}

uint64_t vg::shared::DebugRendererImpl::_checkUpdateInfo(uint64_t a1, unsigned int a2, int a3)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6) != a2)
  {
    v5 = VGLogSharedDebugRenderer(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      vg::shared::DebugRendererImpl::_checkUpdateInfo();
    }

    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (v3 != (*(a1 + 32) - *(a1 + 24)) >> 6)
  {
    v5 = VGLogSharedDebugRenderer(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      vg::shared::DebugRendererImpl::_checkUpdateInfo();
    }

    goto LABEL_13;
  }

  isEmpty = vg::shared::DebugQueue::isEmpty(*(a1 + 48));
  if (isEmpty)
  {
    v5 = VGLogSharedDebugRenderer(isEmpty);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      vg::shared::DebugRendererImpl::_checkUpdateInfo();
    }

LABEL_13:

    return 0;
  }

  return 1;
}

uint64_t vg::shared::DebugRendererImpl::draw(uint64_t a1, id *a2)
{
  v4 = vg::shared::DebugRendererImpl::_checkDrawInfo(a2);
  if (v4 && *(a1 + 772))
  {
    v5 = 0;
    do
    {
      v6 = a1 + 64 + 320 * v5;
      v7 = [*a2 renderCommandEncoderWithDescriptor:*v6];
      [v7 setLabel:@"VistaDebugRendererDebugEncoder"];
      if (*(v6 + 304))
      {
        v8 = 0;
        do
        {
          vg::shared::DebugRendererImpl::_renderDebugPrimitives(a1, v7, v5, v8++);
        }

        while (v8 < *(v6 + 304));
      }

      [v7 endEncoding];

      ++v5;
    }

    while (v5 < *(a1 + 772));
  }

  return v4;
}

uint64_t vg::shared::DebugRendererImpl::_checkDrawInfo(void *a1)
{
  if (*a1)
  {
    if (a1[1])
    {
      return 1;
    }

    v2 = VGLogSharedDebugRenderer(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      vg::shared::DebugRendererImpl::_checkDrawInfo();
    }
  }

  else
  {
    v2 = VGLogSharedDebugRenderer(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      vg::shared::DebugRendererImpl::_checkDrawInfo();
    }
  }

  return 0;
}

void vg::shared::DebugRendererImpl::_renderDebugPrimitives(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = a2;
  vg::shared::ScopedMetalDebugGroup<objc_object  {objcproto23MTLRenderCommandEncoder}* {__strong}>::ScopedMetalDebugGroup(&v11, v7, @"render debug primitives");
  v8 = (a1 + 320 * a3 + 144 * a4);
  v9 = v8[11];
  v10[0] = v8[10];
  v10[1] = v9;
  v10[2] = v8[12];
  [v7 setViewport:v10];
  if (*(a1 + 40))
  {
    [v7 setDepthStencilState:?];
  }

  [v7 setVertexBytes:v8 + 5 length:80 atIndex:3];
  if (*(a1 + 760))
  {
    [v7 setRenderPipelineState:*(a1 + 16)];
    [v7 setFrontFacingWinding:1];
    [v7 setCullMode:0];
    [v7 setVertexBuffer:*(a1 + 704) offset:0 atIndex:0];
    [v7 setVertexBuffer:*(a1 + 712) offset:0 atIndex:1];
    [v7 drawPrimitives:3 vertexStart:0 vertexCount:*(a1 + 760)];
  }

  if (*(a1 + 764))
  {
    [v7 setRenderPipelineState:*(a1 + 24)];
    [v7 setVertexBuffer:*(a1 + 720) offset:0 atIndex:0];
    [v7 setVertexBuffer:*(a1 + 728) offset:0 atIndex:1];
    [v7 drawPrimitives:1 vertexStart:0 vertexCount:*(a1 + 764)];
  }

  if (*(a1 + 768))
  {
    [v7 setRenderPipelineState:*(a1 + 32)];
    [v7 setVertexBuffer:*(a1 + 736) offset:0 atIndex:0];
    [v7 setVertexBuffer:*(a1 + 752) offset:0 atIndex:1];
    [v7 setVertexBuffer:*(a1 + 744) offset:0 atIndex:2];
    [v7 drawPrimitives:0 vertexStart:0 vertexCount:*(a1 + 768)];
  }

  vg::shared::ScopedMetalDebugGroup<objc_object  {objcproto23MTLRenderCommandEncoder}* {__strong}>::~ScopedMetalDebugGroup(&v11);
}

id VGLogSharedDebugRenderer(uint64_t a1)
{
  if (VGLogSharedDebugRenderer(void)::onceToken != -1)
  {
    VGLogSharedDebugRenderer();
  }

  v2 = VGLogSharedDebugRenderer(void)::handle;

  return v2;
}

void sub_270F701B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<vg::shared::DebugRenderer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id ***std::unique_ptr<vg::shared::DebugRenderer>::~unique_ptr[abi:ne200100](id ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    vg::shared::DebugRenderer::~DebugRenderer(v2);
    MEMORY[0x2743B9370]();
  }

  return a1;
}

void vg::shared::DebugRenderer::~DebugRenderer(id **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {

    MEMORY[0x2743B9370](v1, 0x1080C407294E60FLL);
  }
}

void ___ZL24VGLogSharedDebugRendererv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "SharedDebugRenderer");
  v1 = VGLogSharedDebugRenderer(void)::handle;
  VGLogSharedDebugRenderer(void)::handle = v0;
}

uint64_t *std::vector<std::pair<unsigned long,MTLVertexFormat>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,MTLVertexFormat> const*,std::pair<unsigned long,MTLVertexFormat> const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_270F704E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *vg::shared::ScopedMetalDebugGroup<objc_object  {objcproto23MTLRenderCommandEncoder}* {__strong}>::ScopedMetalDebugGroup(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  [v5 pushDebugGroup:a3];

  return a1;
}

id *vg::shared::ScopedMetalDebugGroup<objc_object  {objcproto23MTLRenderCommandEncoder}* {__strong}>::~ScopedMetalDebugGroup(id *a1)
{
  [*a1 popDebugGroup];

  return a1;
}

void vg::shared::DebugRendererImpl::_createRenderPipeline(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270F06000, a2, OS_LOG_TYPE_ERROR, "Failed to create render pipeline state: %@", &v2, 0xCu);
}

void vg::shared::DebugRendererImpl::_createRenderPipeline(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_270F06000, a2, OS_LOG_TYPE_ERROR, "Unknown primitive type when creating debug render pipeline: %d", v2, 8u);
}

void vg::shared::DebugRendererImpl::_checkUpdateInfo()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid number of views", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid number of render targets", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "debug queue must not be empty", v2, v3, v4, v5);
}

void vg::shared::DebugRendererImpl::_checkDrawInfo()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Frame state must not be nil", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Command buffer must not be nil", v2, v3, v4, v5);
}

uint64_t vg::shared::OffScreenRenderer::_checkStaticInfo(uint64_t a1)
{
  if (!*a1)
  {
    v1 = VGLogSharedOffScreenRenderer(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      vg::shared::OffScreenRenderer::_checkStaticInfo();
    }

    goto LABEL_13;
  }

  if ((*(a1 + 8) != 0) == (*(a1 + 16) == 0))
  {
    v1 = VGLogSharedOffScreenRenderer(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      vg::shared::OffScreenRenderer::_checkStaticInfo();
    }

    goto LABEL_13;
  }

  if ((*(a1 + 12) != 0) == (*(a1 + 24) == 0))
  {
    v1 = VGLogSharedOffScreenRenderer(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      vg::shared::OffScreenRenderer::_checkStaticInfo();
    }

    goto LABEL_13;
  }

  if ((*(a1 + 32) - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v1 = VGLogSharedOffScreenRenderer(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      vg::shared::OffScreenRenderer::_checkStaticInfo();
    }

LABEL_13:

    return 0;
  }

  if (*(a1 + 40) >= 2u)
  {
    v1 = VGLogSharedOffScreenRenderer(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      vg::shared::OffScreenRenderer::_checkStaticInfo();
    }

    goto LABEL_13;
  }

  return 1;
}

id VGLogSharedOffScreenRenderer(uint64_t a1)
{
  if (VGLogSharedOffScreenRenderer(void)::onceToken != -1)
  {
    VGLogSharedOffScreenRenderer();
  }

  v2 = VGLogSharedOffScreenRenderer(void)::handle;

  return v2;
}

void ___ZL28VGLogSharedOffScreenRendererv_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "SharedOffScreenRenderer");
  v1 = VGLogSharedOffScreenRenderer(void)::handle;
  VGLogSharedOffScreenRenderer(void)::handle = v0;
}

void vg::shared::OffScreenRenderer::_checkStaticInfo()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid color mode", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid depth mode", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid render targets layout, should be layered or dedicated", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Invalid number of views", v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270F06000, v0, v1, "Device must be not null", v2, v3, v4, v5);
}

BOOL vg::shared::DebugQueueImpl::init(uint64_t a1, id *a2)
{
  result = vg::shared::DebugQueueImpl::_checkCreateInfo(a2);
  if (result)
  {
    objc_storeStrong(a1, *a2);
    v5 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Vertex Position Buffer";
    v29 = 0;
    v6 = vg::shared::createMetalBuffer(v5, &v26);
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    v8 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Vertex Color Buffer";
    v29 = 0;
    v9 = vg::shared::createMetalBuffer(v8, &v26);
    v10 = *(a1 + 40);
    *(a1 + 40) = v9;

    v11 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Line Position Buffer";
    v29 = 0;
    v12 = vg::shared::createMetalBuffer(v11, &v26);
    v13 = *(a1 + 48);
    *(a1 + 48) = v12;

    v14 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Line Color Buffer";
    v29 = 0;
    v15 = vg::shared::createMetalBuffer(v14, &v26);
    v16 = *(a1 + 56);
    *(a1 + 56) = v15;

    v17 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Point Position Buffer";
    v29 = 0;
    v18 = vg::shared::createMetalBuffer(v17, &v26);
    v19 = *(a1 + 64);
    *(a1 + 64) = v18;

    v20 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Point Size Buffer";
    v29 = 0;
    v21 = vg::shared::createMetalBuffer(v20, &v26);
    v22 = *(a1 + 72);
    *(a1 + 72) = v21;

    v23 = *a1;
    v26 = 0;
    v27 = xmmword_270FA9340;
    v28 = @"Vista Debug Point Color Buffer";
    v29 = 0;
    v24 = vg::shared::createMetalBuffer(v23, &v26);
    v25 = *(a1 + 80);
    *(a1 + 80) = v24;

    return *(a1 + 32) && *(a1 + 40) && *(a1 + 48) && *(a1 + 56) && *(a1 + 64) && *(a1 + 72) && *(a1 + 80) != 0;
  }

  return result;
}

BOOL vg::shared::DebugQueueImpl::_checkCreateInfo(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    v2 = VGLogSharedDebugQueue(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      vg::shared::DebugQueueImpl::_checkCreateInfo(v2);
    }
  }

  return v1 != 0;
}

uint64_t vg::shared::DebugQueueImpl::addTriangle(uint64_t a1, uint64_t a2)
{
  v4 = vg::shared::DebugQueueImpl::_reserveTriangles(a1, *(a1 + 8) + 1);
  if (v4)
  {
    v5 = [*(a1 + 32) contents];
    v6 = [*(a1 + 40) contents];
    v7 = *(a2 + 8);
    v8 = *(a1 + 8);
    v9 = v5 + 36 * v8;
    *v9 = *a2;
    *(v9 + 8) = v7;
    v10 = *(a2 + 20);
    *(v9 + 12) = *(a2 + 12);
    *(v9 + 20) = v10;
    v11 = *(a2 + 32);
    *(v9 + 24) = *(a2 + 24);
    *(v9 + 32) = v11;
    *&v12 = *(a2 + 36);
    DWORD2(v12) = *(a2 + 44);
    HIDWORD(v12) = 1.0;
    *(v6 + 16 * v8) = v12;
    ++*(a1 + 8);
  }

  return v4;
}

uint64_t vg::shared::DebugQueueImpl::_reserveTriangles(void **this, uint64_t a2)
{
  v3 = 16 * a2;
  v4 = this + 4;
  v5 = vg::shared::DebugQueueImpl::_resizeBufferToFit(*this, this[4], 36 * a2);
  v6 = *this;
  v8 = this[5];
  v7 = this + 5;
  v9 = vg::shared::DebugQueueImpl::_resizeBufferToFit(v6, v8, v3);
  v10 = v9;
  if (v5)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    objc_storeStrong(v4, v5);
    objc_storeStrong(v7, v10);
  }

  return v12;
}

uint64_t vg::shared::DebugQueueImpl::addLine(uint64_t a1, __int128 *a2)
{
  v4 = vg::shared::DebugQueueImpl::_reserveLines(a1, *(a1 + 16) + 1);
  if (v4)
  {
    v5 = [*(a1 + 48) contents];
    v6 = [*(a1 + 56) contents];
    v7 = *a2;
    v8 = *(a1 + 16);
    v9 = v5 + 24 * v8;
    *v9 = *a2;
    *(v9 + 8) = DWORD2(v7);
    v10 = a2[1];
    v11 = v5 + 12 * ((2 * v8) | 1);
    *v11 = v10;
    *(v11 + 8) = DWORD2(v10);
    v12 = a2[2];
    HIDWORD(v12) = 1.0;
    *(v6 + 16 * v8) = v12;
    ++*(a1 + 16);
  }

  return v4;
}

uint64_t vg::shared::DebugQueueImpl::_reserveLines(void **this, uint64_t a2)
{
  v3 = 16 * a2;
  v4 = this + 6;
  v5 = vg::shared::DebugQueueImpl::_resizeBufferToFit(*this, this[6], 24 * a2);
  v6 = *this;
  v8 = this[7];
  v7 = this + 7;
  v9 = vg::shared::DebugQueueImpl::_resizeBufferToFit(v6, v8, v3);
  v10 = v9;
  if (v5)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    objc_storeStrong(v4, v5);
    objc_storeStrong(v7, v10);
  }

  return v12;
}

uint64_t vg::shared::DebugQueueImpl::addPoint(uint64_t a1, __int128 *a2)
{
  v4 = vg::shared::DebugQueueImpl::_reservePoints(a1, *(a1 + 24) + 1);
  if (v4)
  {
    v5 = [*(a1 + 64) contents];
    v6 = [*(a1 + 72) contents];
    v7 = [*(a1 + 80) contents];
    v8 = *a2;
    v9 = *(a1 + 24);
    v10 = v5 + 12 * v9;
    *v10 = *a2;
    *(v10 + 8) = DWORD2(v8);
    *(v6 + 4 * v9) = *(a2 + 8);
    v11 = a2[1];
    HIDWORD(v11) = 1.0;
    *(v7 + 16 * v9) = v11;
    ++*(a1 + 24);
  }

  return v4;
}

uint64_t vg::shared::DebugQueueImpl::_reservePoints(void **this, uint64_t a2)
{
  v4 = 4 * a2;
  v5 = this + 8;
  v6 = vg::shared::DebugQueueImpl::_resizeBufferToFit(*this, this[8], 12 * a2);
  v7 = this + 9;
  v8 = vg::shared::DebugQueueImpl::_resizeBufferToFit(*this, this[9], v4);
  v9 = *this;
  v11 = this[10];
  v10 = this + 10;
  v12 = vg::shared::DebugQueueImpl::_resizeBufferToFit(v9, v11, 16 * a2);
  v13 = v12;
  if (v6)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 || v12 == 0;
  v16 = !v15;
  if (!v15)
  {
    objc_storeStrong(v5, v6);
    objc_storeStrong(v7, v8);
    objc_storeStrong(v10, v13);
  }

  return v16;
}

uint64_t vg::shared::DebugQueueImpl::addConeWireframe(void **a1, uint64_t a2)
{
  v4 = vg::shared::DebugQueueImpl::_reserveLines(a1, a1[2] + 32);
  if (v4)
  {
    v24 = *(a2 + 48);
    v5 = v24 * tanf(*(a2 + 16));
    v6 = *(a2 + 32);
    *v7.i32 = COERCE_FLOAT(*(a2 + 40));
    v8.i32[0] = 1.0;
    v9.i64[0] = 0x8000000080000000;
    v9.i64[1] = 0x8000000080000000;
    v9.i32[0] = vbslq_s8(v9, v8, v7).i32[0];
    *v7.i32 = -1.0 / (*v7.i32 + *v9.i32);
    LODWORD(v10) = HIDWORD(*(a2 + 32));
    v11.f32[0] = vmuls_lane_f32(v6.f32[0], *v6.f32, 1) * *v7.i32;
    v12.f32[0] = (((*v9.i32 * v6.f32[0]) * v6.f32[0]) * *v7.i32) + 1.0;
    v12.f32[1] = *v9.i32 * v11.f32[0];
    v12.f32[2] = -*v9.i32 * v6.f32[0];
    v11.f32[1] = *v9.i32 + (vmuls_lane_f32(v10, *v6.f32, 1) * *v7.i32);
    v11.f32[2] = -v10;
    v19 = v11;
    v20 = v5;
    v18 = v12;
    v13 = vmulq_n_f32(v12, v5);
    v23 = vmlaq_n_f32(*a2, v6, v24);
    for (i = 1; i != 17; ++i)
    {
      v21 = v13;
      v15 = __sincosf_stret(i * 0.3927);
      v22 = vaddq_f32(v23, v21);
      v25 = vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, v15.__sinval), v18, v15.__cosval), v20);
      v26 = *a2;
      v16 = *(a2 + 64);
      v27 = v22;
      v28 = v16;
      vg::shared::DebugQueueImpl::addLine(a1, &v26);
      v26 = v22;
      v27 = vaddq_f32(v23, v25);
      v28 = *(a2 + 64);
      vg::shared::DebugQueueImpl::addLine(a1, &v26);
      v13 = v25;
    }
  }

  return v4;
}

uint64_t vg::shared::DebugQueueImpl::addBox(void **a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    return vg::shared::DebugQueueImpl::_addBoxWireframe(a1, a2);
  }

  else
  {
    return vg::shared::DebugQueueImpl::_addBoxSolid(a1, a2);
  }
}

uint64_t vg::shared::DebugQueueImpl::_addBoxWireframe(void **a1, uint64_t a2)
{
  v4 = vg::shared::DebugQueueImpl::_reserveLines(a1, a1[2] + 12);
  if (v4)
  {
    v21 = *a2;
    v22 = v21;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v21 = *a2;
    v22 = v21;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v21 = *a2;
    v22 = v21;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v5 = *(a2 + 16);
    v6 = *a2;
    DWORD2(v6) = *(a2 + 24);
    LODWORD(v5) = *a2;
    v21 = v6;
    v22 = v5;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v7 = *(a2 + 16);
    v8 = *a2;
    DWORD2(v8) = *(a2 + 24);
    DWORD1(v7) = HIDWORD(*a2);
    v21 = v8;
    v22 = v7;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v9 = *(a2 + 16);
    v10 = *a2;
    DWORD1(v10) = HIDWORD(*(a2 + 16));
    LODWORD(v9) = *a2;
    v21 = v10;
    v22 = v9;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v11 = *(a2 + 16);
    v12 = *a2;
    DWORD1(v12) = HIDWORD(*(a2 + 16));
    DWORD2(v11) = *(a2 + 8);
    v21 = v12;
    v22 = v11;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v13 = *(a2 + 16);
    v14 = *a2;
    LODWORD(v14) = v13;
    DWORD1(v13) = HIDWORD(*a2);
    v21 = v14;
    v22 = v13;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v15 = *(a2 + 16);
    v16 = *a2;
    LODWORD(v16) = v15;
    DWORD2(v15) = *(a2 + 8);
    v21 = v16;
    v22 = v15;
    v23 = *(a2 + 32);
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v17 = *(a2 + 32);
    v21 = *(a2 + 16);
    v22 = v21;
    v23 = v17;
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v18 = *(a2 + 32);
    v21 = *(a2 + 16);
    v22 = v21;
    v23 = v18;
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
    v19 = *(a2 + 32);
    v21 = *(a2 + 16);
    v22 = v21;
    v23 = v19;
    vg::shared::DebugQueueImpl::addLine(a1, &v21);
  }

  return v4;
}

uint64_t vg::shared::DebugQueueImpl::_addBoxSolid(uint64_t a1, uint64_t a2)
{
  v4 = vg::shared::DebugQueueImpl::_reserveTriangles(a1, *(a1 + 8) + 12);
  if (v4)
  {
    v5 = [*(a1 + 32) contents];
    v6 = [*(a1 + 40) contents];
    v7 = *a2;
    v8 = vsubq_f32(*(a2 + 16), *a2);
    v9.i64[0] = 0;
    v9.i64[1] = v8.u32[2];
    LODWORD(v10) = 0;
    HIDWORD(v10) = v8.i32[1];
    v11 = *(a2 + 32);
    v12 = *(a1 + 8);
    v13 = v5 + 36 * v12;
    v14 = vaddq_f32(*a2, v9);
    v15 = *a2;
    v15.i32[3] = v14.i32[0];
    v16 = vaddq_f32(v10, v14);
    *v13 = v15;
    *(v13 + 16) = vextq_s8(vextq_s8(v14, v14, 0xCuLL), v16, 8uLL);
    *(v13 + 32) = v16.i32[2];
    HIDWORD(v11) = 1.0;
    *(v6 + 16 * v12) = v11;
    v17 = *(a1 + 8) + 1;
    *(a1 + 8) = v17;
    v18 = v5 + 36 * v17;
    v19 = vaddq_f32(v7, v10);
    v7.i32[3] = v16.i32[0];
    *(v18 + 32) = v19.i32[2];
    *v18 = v7;
    *(v18 + 16) = vextq_s8(vextq_s8(v16, v16, 0xCuLL), v19, 8uLL);
    *(v6 + 16 * v17) = v11;
    v20 = *(a1 + 8) + 1;
    *(a1 + 8) = v20;
    v21 = vextq_s8(*a2, *a2, 0xCuLL);
    v22 = *a2;
    v22.i32[0] = *(a2 + 16);
    v23 = *(a2 + 32);
    v24 = v5 + 36 * v20;
    v25 = vaddq_f32(v9, v22);
    v26 = vaddq_f32(v10, v22);
    v22.i32[3] = v25.i32[0];
    v27 = vaddq_f32(v10, v25);
    *v24 = v22;
    *(v24 + 16) = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v27, 8uLL);
    *(v24 + 32) = v27.i32[2];
    HIDWORD(v23) = 1.0;
    *(v6 + 16 * v20) = v23;
    v28 = *(a1 + 8) + 1;
    *(a1 + 8) = v28;
    v29 = v5 + 36 * v28;
    *v29 = v22.i32[0];
    *(v29 + 4) = vextq_s8(v21, v27, 8uLL);
    *(v29 + 20) = vextq_s8(vuzp1q_s32(v27, v27), v26, 0xCuLL);
    *(v6 + 16 * v28) = v23;
    v30 = *(a1 + 8) + 1;
    *(a1 + 8) = v30;
    v31 = *a2;
    v7.i32[0] = v8.i32[0];
    v32 = *(a2 + 32);
    v33 = v5 + 36 * v30;
    v34 = vaddq_f32(v7.u32[0], *a2);
    v35 = *a2;
    v35.i32[3] = v34.i32[0];
    v36 = vaddq_f32(v9, v34);
    *v33 = v35;
    *(v33 + 16) = vextq_s8(vextq_s8(v34, v34, 0xCuLL), v36, 8uLL);
    *(v33 + 32) = v36.i32[2];
    HIDWORD(v32) = 1.0;
    *(v6 + 16 * v30) = v32;
    v37 = *(a1 + 8) + 1;
    *(a1 + 8) = v37;
    v38 = v5 + 36 * v37;
    v39 = vaddq_f32(v9, v31);
    v31.i32[3] = v36.i32[0];
    *v38 = v31;
    *(v38 + 16) = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v39, 8uLL);
    *(v38 + 32) = v39.i32[2];
    *(v6 + 16 * v37) = v32;
    v40 = *(a1 + 8) + 1;
    *(a1 + 8) = v40;
    v41 = *a2;
    v39.i32[0] = *a2;
    v42 = vuzp1q_s32(v41, v41);
    v41.i32[1] = *(a2 + 20);
    v43 = *(a2 + 32);
    v44 = v5 + 36 * v40;
    v45 = vaddq_f32(v7.u32[0], v41);
    v46 = vaddq_f32(v9, v45);
    *(v44 + 32) = v46.i32[2];
    v47 = vaddq_f32(v9, v41);
    v41.i32[3] = v45.i32[0];
    *v44 = v41;
    *(v44 + 16) = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v46, 8uLL);
    HIDWORD(v43) = 1.0;
    *(v6 + 16 * v40) = v43;
    v48 = *(a1 + 8) + 1;
    *(a1 + 8) = v48;
    v49 = v5 + 36 * v48;
    v39.i32[1] = v41.i32[1];
    *v49 = v39.i64[0];
    *(v49 + 8) = vextq_s8(v42, v46, 0xCuLL);
    *(v49 + 24) = v47.i64[0];
    *(v49 + 32) = v47.i32[2];
    *(v6 + 16 * v48) = v43;
    v50 = *(a1 + 8) + 1;
    *(a1 + 8) = v50;
    v51 = *a2;
    v52 = *(a2 + 32);
    v53 = v5 + 36 * v50;
    v54 = vaddq_f32(v7.u32[0], *a2);
    v55 = *a2;
    v55.i32[3] = v54.i32[0];
    v56 = vaddq_f32(v10, v54);
    *v53 = v55;
    *(v53 + 16) = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v56, 8uLL);
    *(v53 + 32) = v56.i32[2];
    HIDWORD(v52) = 1.0;
    *(v6 + 16 * v50) = v52;
    v57 = *(a1 + 8) + 1;
    *(a1 + 8) = v57;
    v58 = vaddq_f32(v10, v51);
    v51.i32[3] = v56.i32[0];
    v59 = v5 + 36 * v57;
    *v59 = v51;
    *(v59 + 16) = vextq_s8(vextq_s8(v56, v56, 0xCuLL), v58, 8uLL);
    *(v59 + 32) = v58.i32[2];
    *(v6 + 16 * v57) = v52;
    v60 = *(a1 + 8) + 1;
    *(a1 + 8) = v60;
    v61 = *a2;
    v62 = *(a2 + 16);
    v63 = *a2;
    v63.i32[2] = *(a2 + 24);
    v64 = *(a2 + 32);
    v65 = v5 + 36 * v60;
    v66 = vaddq_f32(v7.u32[0], v63);
    v67 = v63;
    v67.i32[3] = v66.i32[0];
    v68 = vaddq_f32(v10, v66);
    *v65 = v67;
    *(v65 + 16) = vextq_s8(vextq_s8(v66, v66, 0xCuLL), v68, 8uLL);
    *(v65 + 32) = v68.i32[2];
    HIDWORD(v64) = 1.0;
    *(v6 + 16 * v60) = v64;
    v69 = vaddq_f32(v10, v63);
    v70 = *(a1 + 8) + 1;
    *(a1 + 8) = v70;
    v71 = v5 + 36 * v70;
    *v71 = v61.i64[0];
    *(v71 + 8) = vextq_s8(vuzp1q_s32(v62, v62), v68, 0xCuLL);
    *(v71 + 32) = v69.i32[2];
    *(v71 + 24) = v69.i64[0];
    *(v6 + 16 * v70) = v64;
    ++*(a1 + 8);
  }

  return v4;
}

void *vg::shared::DebugQueueImpl::clear(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

id vg::shared::DebugQueueImpl::metalBuffers@<X0>(id *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this[4];
  v5 = this[5];
  v6 = this[6];
  v7 = this[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  *a2 = v9;
  *(a2 + 16) = v8;
  *(a2 + 32) = this[8];
  *(a2 + 40) = this[9];
  result = this[10];
  *(a2 + 48) = result;
  return result;
}

id vg::shared::DebugQueueImpl::_resizeBufferToFit(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 length] >= a3)
  {
    v8 = v6;
  }

  else
  {
    v7 = a3 + 1024;
    v13[0] = 0;
    v13[1] = a3 + 1024;
    v13[2] = 0;
    v14 = [v6 label];
    v15 = 0;
    v8 = vg::shared::createMetalBuffer(v5, v13);

    if (v8)
    {
      v9 = memcpy([v8 contents], objc_msgSend(v6, "contents"), objc_msgSend(v6, "length"));
      v10 = VGLogSharedDebugQueue(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        vg::shared::DebugQueueImpl::_resizeBufferToFit(v7, v10);
      }

      v11 = v8;
    }
  }

  return v8;
}

id VGLogSharedDebugQueue(uint64_t a1)
{
  if (VGLogSharedDebugQueue(void)::onceToken != -1)
  {
    VGLogSharedDebugQueue();
  }

  v2 = VGLogSharedDebugQueue(void)::handle;

  return v2;
}

void sub_270F71C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void vg::shared::DebugQueue::DebugQueue(vg::shared::DebugQueue *this)
{
  operator new();
}

{
  operator new();
}

void vg::shared::DebugQueue::~DebugQueue(vg::shared::DebugQueue *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *vg::shared::DebugQueue::clear(void *this)
{
  v1 = *this;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  return this;
}

void ___ZL21VGLogSharedDebugQueuev_block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] vg_bundleIdentifier];
  v0 = os_log_create([v2 UTF8String], "SharedDebugQueue");
  v1 = VGLogSharedDebugQueue(void)::handle;
  VGLogSharedDebugQueue(void)::handle = v0;
}

void sub_270F71F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<vg::shared::DebugQueue>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<vg::shared::DebugQueue *,std::shared_ptr<vg::shared::DebugQueue>::__shared_ptr_default_delete<vg::shared::DebugQueue,vg::shared::DebugQueue>,std::allocator<vg::shared::DebugQueue>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<vg::shared::DebugQueue>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x2743B9370);
  }
}

void std::__shared_ptr_emplace<vg::shared::DebugQueueImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2880E71A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743B9370);
}

void std::__shared_ptr_emplace<vg::shared::DebugQueueImpl>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void vg::shared::DebugQueueImpl::_resizeBufferToFit(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_270F06000, a2, OS_LOG_TYPE_DEBUG, "Created debug buffer with size %zu", &v2, 0xCu);
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::LRUCache(uint64_t *a1, unint64_t a2)
{
  *(std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clear();
}

{
  *(std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clear();
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clear(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v4 = 0;
    v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    v6 = 1;
    do
    {
      v7 = v2 + 40 * v4;
      if (*(v7 + 8) == 1)
      {
        objc_destroyWeak((v2 + 40 * v4));
        *(v7 + 8) = 0;
        v2 = *a1;
      }

      if (v5 - 1 == v4)
      {
        v8 = -1;
      }

      else
      {
        v8 = v6;
      }

      v9 = v2 + 40 * v4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      v4 = v6;
    }

    while (v5 > v6++);
  }

  *(a1 + 6) = 0;
}

__uint64_t vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clearStaleEntries(vg::shared *a1, __uint64_t a2)
{
  result = vg::shared::Time(a1);
  v5 = a1;
  while (1)
  {
    v6 = *(v5 + 6);
    if (v6 == -1)
    {
      break;
    }

    v5 = (*a1 + 40 * v6);
    if (result - *(v5 + 4) >= a2)
    {

      vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clearFromIndex();
    }
  }

  return result;
}

void vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clearFromIndex(void *a1, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    do
    {
      v4 = *a1 + 40 * v3;
      if (*(v4 + 8) == 1)
      {
        objc_destroyWeak(v4);
        *(v4 + 8) = 0;
      }

      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      *(v4 + 32) = 0;
      v3 = *(v4 + 24);
    }

    while (v3 != -1);
  }
}

uint64_t vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::find(uint64_t a1, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);
  v4 = (a1 + 24);
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
LABEL_6:
    v10 = 0;
  }

  else
  {
    v6 = (a1 + 24);
    while (1)
    {
      v7 = *a1 + 40 * v5;
      if (*(v7 + 8) == 1)
      {
        v8 = objc_loadWeakRetained((*a1 + 40 * v5));

        if (v8 == WeakRetained)
        {
          break;
        }
      }

      v5 = *(v7 + 24);
      v6 = (v7 + 24);
      if (*(v7 + 24) == -1)
      {
        goto LABEL_6;
      }
    }

    *(v7 + 32) = vg::shared::Time(v9);
    *v6 = *(v7 + 24);
    *(v7 + 24) = *v4;
    *v4 = v5;
    v10 = v7 + 16;
  }

  return v10;
}

uint64_t vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::insert(uint64_t a1, id *location, id *a3)
{
  WeakRetained = objc_loadWeakRetained(location);
  v16 = WeakRetained;
  v7 = (a1 + 24);
  v6 = *(a1 + 24);
  v8 = (a1 + 24);
  do
  {
    v9 = v8;
    v10 = v6;
    v11 = *a1 + 40 * v6;
    if (*(v11 + 8) == 1)
    {
      v12 = objc_loadWeakRetained(v11);
      v13 = v12 == WeakRetained;

      if (v13)
      {
        break;
      }
    }

    v8 = (v11 + 24);
    v6 = *(v11 + 24);
  }

  while (v6 != 0xFFFFFFFFLL);
  std::optional<objc_object  {objcproto10MTLTexture}* {__weak}>::operator=[abi:ne200100]<objc_object  {objcproto10MTLTexture} {__strong}&,void>(v11, &v16);
  objc_storeStrong((v11 + 16), *a3);
  *(v11 + 32) = vg::shared::Time(v14);
  *v9 = *(v11 + 24);
  *(v11 + 24) = *v7;
  *v7 = v10;

  return 1;
}

uint64_t std::optional<objc_object  {objcproto10MTLTexture}* {__weak}>::operator=[abi:ne200100]<objc_object  {objcproto10MTLTexture} {__strong}&,void>(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    objc_storeWeak(a1, v3);
  }

  else
  {
    objc_initWeak(a1, v3);
    *(a1 + 8) = 1;
  }

  return a1;
}

void _ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE5clearEv(void *result)
{
  v2 = *result;
  v3 = result[1] - *result;
  if (v3)
  {
    v4 = 0;
    v5 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 3);
    v6 = 1;
    do
    {
      std::__optional_destruct_base<std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>,false>::reset[abi:ne200100](v2 + 56 * v4);
      if (v5 - 1 == v4)
      {
        v7 = -1;
      }

      else
      {
        v7 = v6;
      }

      v2 = *result;
      v8 = *result + 56 * v4;
      *(v8 + 40) = v7;
      *(v8 + 48) = 0;
      v4 = v6;
    }

    while (v5 > v6++);
  }

  *(result + 6) = 0;
}

void _ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE17clearStaleEntriesEy(vg::shared *a1, unint64_t a2)
{
  v4 = vg::shared::Time(a1);
  v5 = *(a1 + 6);
  do
  {
    if (v5 == 0xFFFFFFFFLL)
    {
      break;
    }

    v6 = *a1 + 56 * v5;
    v7 = v4 - *(v6 + 48);
    if (v7 >= a2)
    {
      v8 = v5;
      do
      {
        v9 = *a1 + 56 * v8;
        std::__optional_destruct_base<std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>,false>::reset[abi:ne200100](v9);
        *(v9 + 48) = 0;
        *(v9 + 24) = 0;
        *(v9 + 32) = 0;
        v8 = *(v9 + 40);
      }

      while (v8 != -1);
    }

    else
    {
      v5 = *(v6 + 40);
    }
  }

  while (v7 < a2);
}

void _ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE14clearFromIndexEj(void *result, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    do
    {
      v4 = *result + 56 * v3;
      std::__optional_destruct_base<std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>,false>::reset[abi:ne200100](v4);
      *(v4 + 48) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      v3 = *(v4 + 40);
    }

    while (v3 != -1);
  }
}

uint64_t _ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE4findERKS7_(uint64_t a1, id *a2)
{
  objc_copyWeak(&v16, a2);
  objc_copyWeak(&v17, a2 + 1);
  v4 = (a1 + 24);
  v5 = *(a1 + 24);
  if (v5 != -1)
  {
    v6 = (a1 + 24);
    do
    {
      v7 = *a1 + 56 * v5;
      if (*(v7 + 16) == 1)
      {
        WeakRetained = objc_loadWeakRetained((*a1 + 56 * v5));
        v9 = objc_loadWeakRetained(&v16);
        v10 = v9;
        if (WeakRetained == v9)
        {
          v11 = objc_loadWeakRetained((v7 + 8));
          v12 = objc_loadWeakRetained(&v17);

          if (v11 == v12)
          {
            *(v7 + 48) = vg::shared::Time(v13);
            *v6 = *(v7 + 40);
            *(v7 + 40) = *v4;
            *v4 = v5;
            v14 = v7 + 24;
            goto LABEL_9;
          }
        }

        else
        {
        }
      }

      v5 = *(v7 + 40);
      v6 = (v7 + 40);
    }

    while (*(v7 + 40) != -1);
  }

  v14 = 0;
LABEL_9:
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  return v14;
}

void sub_270F72968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, id a10)
{
  objc_destroyWeak(&a10);
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZN2vg6shared8LRUCacheINSt3__14pairIU6__weakPU21objcproto10MTLTexture11objc_objectS6_EENS3_IDv2_fS8_EEE6insertERKS7_RKS9_(uint64_t a1, id *a2, void *a3)
{
  objc_copyWeak(&to, a2);
  objc_copyWeak(&v20, a2 + 1);
  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  v17 = (a1 + 24);
  do
  {
    while (1)
    {
      v7 = v6;
      v8 = v5;
      v9 = *a1 + 56 * v5;
      if (*(v9 + 16) == 1)
      {
        break;
      }

      v6 = (v9 + 40);
      v5 = *(v9 + 40);
      if (v5 == -1)
      {
        goto LABEL_10;
      }
    }

    WeakRetained = objc_loadWeakRetained(v9);
    v11 = objc_loadWeakRetained(&to);
    if (WeakRetained == v11)
    {
      v13 = objc_loadWeakRetained((v9 + 8));
      v14 = objc_loadWeakRetained(&v20);
      v12 = v13 == v14;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      break;
    }

    v6 = (v9 + 40);
    v5 = *(v9 + 40);
  }

  while (v5 != 0xFFFFFFFFLL);
LABEL_10:
  v15 = std::optional<std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>>::operator=[abi:ne200100]<objc_object  {objcproto10MTLTexture}* {__weak}&,void>(v9, &to);
  *(v9 + 24) = *a3;
  *(v9 + 32) = a3[1];
  *(v9 + 48) = vg::shared::Time(v15);
  *v7 = *(v9 + 40);
  *(v9 + 40) = *v17;
  *v17 = v8;
  objc_destroyWeak(&v20);
  objc_destroyWeak(&to);
  return 1;
}

void sub_270F72AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, id a12)
{
  objc_destroyWeak(&a12);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>>::operator=[abi:ne200100]<objc_object  {objcproto10MTLTexture}* {__weak}&,void>(uint64_t a1, id *location)
{
  if (*(a1 + 16) == 1)
  {
    std::pair<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture}*>::operator=[abi:ne200100](a1, location);
  }

  else
  {
    objc_copyWeak(a1, location);
    objc_copyWeak((a1 + 8), location + 1);
    *(a1 + 16) = 1;
  }

  return a1;
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::LRUCache(uint64_t *a1, unint64_t a2)
{
  *(std::vector<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clear();
}

{
  *(std::vector<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clear();
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clear(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v4 = 0;
    v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    v6 = 1;
    do
    {
      v7 = v2 + 40 * v4;
      if (*(v7 + 8) == 1)
      {

        *(v7 + 8) = 0;
        v2 = *a1;
      }

      if (v5 - 1 == v4)
      {
        v8 = -1;
      }

      else
      {
        v8 = v6;
      }

      v9 = v2 + 40 * v4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      v4 = v6;
    }

    while (v5 > v6++);
  }

  *(a1 + 6) = 0;
}

__uint64_t vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clearStaleEntries(vg::shared *a1, __uint64_t a2)
{
  result = vg::shared::Time(a1);
  v5 = a1;
  while (1)
  {
    v6 = *(v5 + 6);
    if (v6 == -1)
    {
      break;
    }

    v5 = (*a1 + 40 * v6);
    if (result - *(v5 + 4) >= a2)
    {

      vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clearFromIndex();
    }
  }

  return result;
}

void vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clearFromIndex(void *a1, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    do
    {
      v4 = *a1 + 40 * v3;
      if (*(v4 + 8) == 1)
      {

        *(v4 + 8) = 0;
      }

      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      *(v4 + 32) = 0;
      v3 = *(v4 + 24);
    }

    while (v3 != -1);
  }
}

uint64_t vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::find(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = a1 + 3;
  v6 = *(a1 + 6);
  if (v6 == -1)
  {
LABEL_6:
    v10 = 0;
  }

  else
  {
    v7 = *a1;
    v8 = a1 + 3;
    while (1)
    {
      v9 = v7 + 40 * v6;
      if (*(v9 + 8) == 1 && *v9 == v3)
      {
        break;
      }

      v6 = *(v9 + 24);
      v8 = (v9 + 24);
      if (*(v9 + 24) == -1)
      {
        goto LABEL_6;
      }
    }

    *(v9 + 32) = vg::shared::Time(v3);
    *v8 = *(v9 + 24);
    *(v9 + 24) = *v5;
    *v5 = v6;
    v10 = v9 + 16;
  }

  return v10;
}

uint64_t vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::insert(uint64_t *a1, id *a2, id *a3)
{
  v5 = *a2;
  v16 = v5;
  v7 = a1 + 3;
  v6 = *(a1 + 6);
  v8 = *a1;
  v9 = a1 + 3;
  do
  {
    while (1)
    {
      v10 = v9;
      v11 = v6;
      v12 = v8 + 40 * v6;
      if (*(v12 + 8) == 1)
      {
        break;
      }

      v9 = (v12 + 24);
      v6 = *(v12 + 24);
      if (v6 == -1)
      {
        goto LABEL_10;
      }
    }

    v9 = (v12 + 24);
    v6 = *(v12 + 24);
  }

  while (*v12 != v5 && v6 != 0xFFFFFFFFLL);
LABEL_10:
  std::optional<IOSurface * {__strong}>::operator=[abi:ne200100]<IOSurface * {__strong}&,void>(v12, &v16);
  objc_storeStrong((v12 + 16), *a3);
  *(v12 + 32) = vg::shared::Time(v14);
  *v10 = *(v12 + 24);
  *(v12 + 24) = *v7;
  *v7 = v11;

  return 1;
}

uint64_t std::optional<IOSurface * {__strong}>::operator=[abi:ne200100]<IOSurface * {__strong}&,void>(uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

void vg::shared::LRUCache<unsigned int,unsigned int>::LRUCache(uint64_t *a1, unint64_t a2)
{
  *(std::vector<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry,std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<unsigned int,unsigned int>::clear();
}

{
  *(std::vector<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry,std::allocator<vg::shared::LRUCache<unsigned int,unsigned int>::CacheEntry>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<unsigned int,unsigned int>::clear();
}

uint64_t vg::shared::LRUCache<unsigned int,unsigned int>::clear(uint64_t result)
{
  v1 = *(result + 8) - *result;
  if (v1)
  {
    v2 = 0xAAAAAAAAAAAAAAABLL * (v1 >> 3);
    v3 = *result + 12;
    v4 = 1;
    do
    {
      if (*(v3 - 8) == 1)
      {
        *(v3 - 8) = 0;
      }

      if (v2 == v4)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      *v3 = v5;
      *(v3 + 4) = 0;
      v6 = v2 > v4++;
      v3 += 24;
    }

    while (v6);
  }

  *(result + 24) = 0;
  return result;
}

__uint64_t vg::shared::LRUCache<unsigned int,unsigned int>::clearStaleEntries(vg::shared *a1, unint64_t a2)
{
  result = vg::shared::Time(a1);
  v5 = *(a1 + 6);
  do
  {
    if (v5 == 0xFFFFFFFFLL)
    {
      break;
    }

    v6 = *a1;
    v7 = *a1 + 24 * v5;
    v8 = result - *(v7 + 16);
    if (v8 >= a2)
    {
      v9 = v5;
      do
      {
        v10 = v6 + 24 * v9;
        if (*(v10 + 4) == 1)
        {
          *(v10 + 4) = 0;
        }

        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
        v9 = *(v10 + 12);
      }

      while (v9 != -1);
    }

    else
    {
      v5 = *(v7 + 12);
    }
  }

  while (v8 < a2);
  return result;
}

uint64_t *vg::shared::LRUCache<unsigned int,unsigned int>::clearFromIndex(uint64_t *result, unsigned int a2)
{
  if (a2 != -1)
  {
    v2 = a2;
    v3 = *result;
    do
    {
      v4 = v3 + 24 * v2;
      if (*(v4 + 4) == 1)
      {
        *(v4 + 4) = 0;
      }

      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      v2 = *(v4 + 12);
    }

    while (v2 != -1);
  }

  return result;
}

uint64_t vg::shared::LRUCache<unsigned int,unsigned int>::find(vg::shared *a1, _DWORD *a2)
{
  v2 = (a1 + 24);
  v3 = *(a1 + 6);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = (a1 + 24);
  while (1)
  {
    v5 = *a1 + 24 * v3;
    if (__PAIR64__(*(v5 + 4), *v5) == (*a2 | 0x100000000))
    {
      break;
    }

    v3 = *(v5 + 12);
    v4 = (v5 + 12);
    if (*(v5 + 12) == -1)
    {
      return 0;
    }
  }

  *(v5 + 16) = vg::shared::Time(a1);
  *v4 = *(v5 + 12);
  *(v5 + 12) = *v2;
  *v2 = v3;
  return v5 + 8;
}

uint64_t vg::shared::LRUCache<unsigned int,unsigned int>::insert(vg::shared *a1, int *a2, _DWORD *a3)
{
  v3 = *a2;
  v5 = (a1 + 24);
  v4 = *(a1 + 6);
  v6 = (a1 + 24);
  do
  {
    while (1)
    {
      v7 = v6;
      v8 = v4;
      v9 = *a1 + 24 * v4;
      if (*(v9 + 4) == 1)
      {
        break;
      }

      v6 = (v9 + 12);
      v4 = *(v9 + 12);
      if (v4 == -1)
      {
        goto LABEL_10;
      }
    }

    v6 = (v9 + 12);
    v4 = *(v9 + 12);
  }

  while (*v9 != v3 && v4 != 0xFFFFFFFFLL);
LABEL_10:
  *v9 = v3;
  *(v9 + 4) = 1;
  *(v9 + 8) = *a3;
  *(v9 + 16) = vg::shared::Time(a1);
  *v7 = *(v9 + 12);
  *(v9 + 12) = *v5;
  *v5 = v8;
  return 1;
}

void vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::LRUCache(uint64_t *a1, unint64_t a2)
{
  *(std::vector<vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clear();
}

{
  *(std::vector<vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>>>::vector[abi:ne200100](a1, a2) + 6) = 0;
  vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clear();
}

void vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clear(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  if (v3)
  {
    v4 = 0;
    v5 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    v6 = 1;
    do
    {
      v7 = v2 + 40 * v4;
      if (*(v7 + 8) == 1)
      {

        *(v7 + 8) = 0;
        v2 = *a1;
      }

      if (v5 - 1 == v4)
      {
        v8 = -1;
      }

      else
      {
        v8 = v6;
      }

      v9 = v2 + 40 * v4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      v4 = v6;
    }

    while (v5 > v6++);
  }

  *(a1 + 6) = 0;
}

__uint64_t vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clearStaleEntries(vg::shared *a1, __uint64_t a2)
{
  result = vg::shared::Time(a1);
  v5 = a1;
  while (1)
  {
    v6 = *(v5 + 6);
    if (v6 == -1)
    {
      break;
    }

    v5 = (*a1 + 40 * v6);
    if (result - *(v5 + 4) >= a2)
    {

      vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clearFromIndex();
    }
  }

  return result;
}

void vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::clearFromIndex(void *a1, unsigned int a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    do
    {
      v4 = *a1 + 40 * v3;
      if (*(v4 + 8) == 1)
      {

        *(v4 + 8) = 0;
      }

      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      *(v4 + 32) = 0;
      v3 = *(v4 + 24);
    }

    while (v3 != -1);
  }
}

uint64_t vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::find(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = a1 + 3;
  v6 = *(a1 + 6);
  if (v6 == -1)
  {
LABEL_6:
    v10 = 0;
  }

  else
  {
    v7 = *a1;
    v8 = a1 + 3;
    while (1)
    {
      v9 = v7 + 40 * v6;
      if (*(v9 + 8) == 1 && *v9 == v3)
      {
        break;
      }

      v6 = *(v9 + 24);
      v8 = (v9 + 24);
      if (*(v9 + 24) == -1)
      {
        goto LABEL_6;
      }
    }

    *(v9 + 32) = vg::shared::Time(v3);
    *v8 = *(v9 + 24);
    *(v9 + 24) = *v5;
    *v5 = v6;
    v10 = v9 + 16;
  }

  return v10;
}

uint64_t vg::shared::LRUCache<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>::insert(uint64_t *a1, id *a2, id *a3)
{
  v5 = *a2;
  v16 = v5;
  v7 = a1 + 3;
  v6 = *(a1 + 6);
  v8 = *a1;
  v9 = a1 + 3;
  do
  {
    while (1)
    {
      v10 = v9;
      v11 = v6;
      v12 = v8 + 40 * v6;
      if (*(v12 + 8) == 1)
      {
        break;
      }

      v9 = (v12 + 24);
      v6 = *(v12 + 24);
      if (v6 == -1)
      {
        goto LABEL_10;
      }
    }

    v9 = (v12 + 24);
    v6 = *(v12 + 24);
  }

  while (*v12 != v5 && v6 != 0xFFFFFFFFLL);
LABEL_10:
  std::optional<IOSurface * {__strong}>::operator=[abi:ne200100]<IOSurface * {__strong}&,void>(v12, &v16);
  objc_storeStrong((v12 + 16), *a3);
  *(v12 + 32) = vg::shared::Time(v14);
  *v10 = *(v12 + 24);
  *(v12 + 24) = *v7;
  *v7 = v11;

  return 1;
}

void vg::shared::MetalTextureViewCache::MetalTextureViewCache(vg::shared::MetalTextureViewCache *this, MTLPixelFormat a2, unint64_t a3)
{
  *this = a2;
  *(this + 8) = 1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::vector[abi:ne200100](this + 10, a3);
  *(this + 26) = 0;
  vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clear();
}

void sub_270F7368C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::shared::MetalTextureViewCache::MetalTextureViewCache(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[4];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::vector[abi:ne200100]((a1 + 80), a3);
  *(a1 + 104) = 0;
  vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clear();
}

void sub_270F7371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id vg::shared::MetalTextureViewCache::view(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 8) == 1 && (v3 = [v3 pixelFormat], v3 != *a1) || *(a1 + 24) == 1 && (v3 = objc_msgSend(v4, "textureType"), v3 != *(a1 + 16)) || *(a1 + 48) == 1 && (*(a1 + 32) || (v3 = objc_msgSend(v4, "mipmapLevelCount"), v3 > *(a1 + 40))) || *(a1 + 72) == 1 && (*(a1 + 56) || (v3 = objc_msgSend(v4, "arrayLength"), v3 > *(a1 + 64))))
  {
    if (*(a1 + 120) == 1)
    {
      if ([v4 width] != *(a1 + 112) || objc_msgSend(v4, "height") != *(a1 + 114) || objc_msgSend(v4, "depth") != *(a1 + 116) || (v3 = objc_msgSend(v4, "arrayLength"), v3 != *(a1 + 118)))
      {
        vg::shared::MetalTextureViewCache::clear(a1);
      }
    }

    v5 = vg::shared::Time(v3);
    if (v5 - *(a1 + 128) >= 0x3B9ACA01)
    {
      *(a1 + 128) = v5;
      vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::clearStaleEntries();
    }

    v6 = [v4 width];
    v7 = [v4 height];
    v8 = [v4 depth];
    v9 = [v4 arrayLength];
    LOWORD(v10) = v6;
    WORD1(v10) = v7;
    WORD2(v10) = v8;
    HIWORD(v10) = v9;
    if ((*(a1 + 120) & 1) == 0)
    {
      *(a1 + 120) = 1;
    }

    *(a1 + 112) = v10;
    objc_initWeak(&location, v4);
    vg::shared::LRUCache<objc_object  {objcproto10MTLTexture}* {__weak},objc_object  {objcproto10MTLTexture} {__strong}>::find();
  }

  v11 = v4;

  return v11;
}

void sub_270F73A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, void *a11, id a12)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id VGLogSharedMetalHelpers(uint64_t a1)
{
  if (VGLogSharedMetalHelpers(void)::onceToken != -1)
  {
    VGLogSharedMetalHelpers();
  }

  v2 = VGLogSharedMetalHelpers(void)::handle;

  return v2;
}

void sub_270F73BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void vg::shared::MetalBufferCache::buffer(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = vg::shared::Time(a3);
  if (v5 - *(a1 + 32) >= 0x3B9ACA01)
  {
    *(a1 + 32) = v5;
    vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::clearStaleEntries();
  }

  vg::shared::LRUCache<IOSurface * {__strong},objc_object  {objcproto9MTLBuffer}* {__strong}>::find();
}

id vg::shared::createMetalBuffer(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_opt_respondsToSelector();
  if (v4)
  {
    v4 = [v3 newBufferWithIOSurface:*a2];
    v5 = v4;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v6 = VGLogSharedMetalHelpers(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_INFO, "Unable to create a buffer from IOSurface, will fallback to regular buffer allocation", v10, 2u);
  }

  [*a2 lockWithOptions:1 seed:0];
  v5 = [v3 newBufferWithBytes:objc_msgSend(*a2 length:"baseAddress") options:{objc_msgSend(*a2, "bytesPerRow") * objc_msgSend(*a2, "height"), 0}];
  v7 = [*a2 unlockWithOptions:1 seed:0];
  if (v5)
  {
LABEL_6:
    [v5 setLabel:a2[1]];
  }

  else
  {
    v8 = VGLogSharedMetalHelpers(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      vg::shared::createMetalBuffer();
    }

    v5 = 0;
  }

  return v5;
}

vg::shared::MetalTextureCache *vg::shared::MetalTextureCache::MetalTextureCache(vg::shared::MetalTextureCache *this, unint64_t a2)
{
  v3 = std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::vector[abi:ne200100](this, a2);
  *(v3 + 6) = 0;
  vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clear(v3);
  *(this + 4) = vg::shared::Time(v4);
  return this;
}

void sub_270F73F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::CacheEntry,std::allocator<vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id vg::shared::MetalTextureCache::texture(vg::shared *a1, id *a2, void *a3)
{
  v5 = a3;
  v6 = vg::shared::Time(v5);
  if (v6 - *(a1 + 4) >= 0x3B9ACA01)
  {
    *(a1 + 4) = v6;
    vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearStaleEntries(a1, 0x3B9ACA00uLL);
  }

  v7 = [*a2 UTF8String];
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v19 = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
  v10 = vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::find(a1, &__dst);
  v11 = v10;
  if (v10 && vg::shared::MetalTextureCache::_isCompatibleTexture(*v10, a2[1]))
  {
    v12 = *v11;
  }

  else
  {
    v14 = a2[1];
    v15 = *a2;
    v16 = 0;
    v17 = vg::shared::createMetalTexture(v5, &v14);

    vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::insert(a1, &__dst, &v17);
    v12 = v17;
  }

  if (v19 < 0)
  {
    operator delete(__dst);
  }

  return v12;
}

void sub_270F74134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearStaleEntries(vg::shared *a1, __uint64_t a2)
{
  v4 = vg::shared::Time(a1);
  v5 = *(a1 + 6);
  if (v5 != -1)
  {
    while (1)
    {
      v6 = *a1 + 56 * v5;
      if (v4 - *(v6 + 48) >= a2)
      {
        break;
      }

      v5 = *(v6 + 40);
      if (v5 == -1)
      {
        return;
      }
    }

    vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::clearFromIndex(a1, v5);
  }
}

uint64_t vg::shared::LRUCache<std::string,objc_object  {objcproto10MTLTexture}* {__strong}>::find(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v3 = a1 + 3;
  v4 = *(a1 + 6);
  if (v4 == -1)
  {
LABEL_21:
    v14 = 0;
  }

  else
  {
    v5 = *a1;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = v3;
    while (1)
    {
      v9 = v5 + 56 * v4;
      if (*(v9 + 24) == 1)
      {
        v10 = *(v9 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v9 + 8);
        }

        if (v10 == size)
        {
          v12 = v11 >= 0 ? (v5 + 56 * v4) : *v9;
          v13 = memcmp(v12, p_p, size);
          if (!v13)
          {
            break;
          }
        }
      }

      v4 = *(v9 + 40);
      v8 = (v9 + 40);
      if (*(v9 + 40) == -1)
      {
        goto LABEL_21;
      }
    }

    *(v9 + 48) = vg::shared::Time(v13);
    *v8 = *(v9 + 40);
    *(v9 + 40) = *v3;
    *v3 = v4;
    v14 = v9 + 32;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_270F74338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL vg::shared::MetalTextureCache::_isCompatibleTexture(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 width];
  if (v5 == [v4 width] && (v6 = objc_msgSend(v3, "height"), v6 == objc_msgSend(v4, "height")) && (v7 = objc_msgSend(v3, "pixelFormat"), v7 == objc_msgSend(v4, "pixelFormat")))
  {
    v8 = [v3 arrayLength];
    v9 = v8 == [v4 arrayLength];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id vg::shared::createMetalTexture(void *a1, void *a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (*(a2 + 16) == 1)
  {
    v5 = [*a2 arrayLength];
    if (v5 >= 2)
    {
      v6 = VGLogSharedMetalHelpers(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        vg::shared::createMetalTexture();
      }

      goto LABEL_29;
    }

    v9 = [*a2 pixelFormat];
    if (v9 <= 79)
    {
      if ((v9 - 70) >= 2)
      {
        if (v9 != 55)
        {
          goto LABEL_27;
        }

        v10 = 1278226534;
      }

      else
      {
        v10 = 1380401729;
      }
    }

    else
    {
      if ((v9 - 80) >= 2)
      {
        if ((v9 - 552) < 2)
        {
          v10 = 1999908961;
LABEL_18:
          v11 = 8;
          goto LABEL_19;
        }

        if (v9 == 115)
        {
          v10 = 1380411457;
          goto LABEL_18;
        }

LABEL_27:
        v6 = VGLogSharedMetalHelpers(v9);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          vg::shared::createMetalTexture();
        }

        goto LABEL_29;
      }

      v10 = 1111970369;
    }

    v11 = 4;
LABEL_19:
    v12 = objc_alloc(MEMORY[0x277CD2930]);
    v21[0] = *MEMORY[0x277CD2928];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*a2, "width")}];
    v22[0] = v13;
    v21[1] = *MEMORY[0x277CD28D0];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*a2, "height")}];
    v22[1] = v14;
    v21[2] = *MEMORY[0x277CD28D8];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
    v22[2] = v15;
    v21[3] = *MEMORY[0x277CD28B0];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v11];
    v22[3] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v18 = [v12 initWithProperties:v17];

    if (!v18)
    {
      v6 = VGLogSharedMetalHelpers(v19);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        vg::shared::createMetalTexture();
      }

      goto LABEL_29;
    }

    v8 = [v4 newTextureWithDescriptor:*a2 iosurface:v18 plane:0];

    goto LABEL_21;
  }

  v7 = [v3 newTextureWithDescriptor:*a2];
  v8 = v7;
LABEL_21:
  if (v8)
  {
    [v8 setLabel:a2[1]];
    goto LABEL_30;
  }

  v6 = VGLogSharedMetalHelpers(v7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    vg::shared::createMetalTexture();
  }

LABEL_29:

  v8 = 0;
LABEL_30:

  return v8;
}

{
  v3 = a1;
  v4 = [*a2 pixelFormat];
  if (v4 <= 1380401728)
  {
    switch(v4)
    {
      case 0x20:
        v6 = *(a2 + 24) == 0;
        v7 = 84;
        break;
      case 0x42475241:
        v6 = *(a2 + 24) == 0;
        v7 = 80;
        break;
      case 0x4C303066:
        v5 = 55;
LABEL_19:
        v8 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v5 width:objc_msgSend(*a2 height:"width") mipmapped:objc_msgSend(*a2, "height"), 0];
        [v8 setTextureType:2];
        [v8 setUsage:a2[1]];
        v10 = [v3 newTextureWithDescriptor:v8 iosurface:*a2 plane:0];
        v9 = v10;
        if (v10)
        {
          [v10 setLabel:a2[2]];
          v11 = v9;
        }

        else
        {
          v12 = VGLogSharedMetalHelpers(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            vg::shared::createMetalTexture();
          }
        }

        goto LABEL_25;
      default:
        goto LABEL_12;
    }

LABEL_16:
    if (v6)
    {
      v5 = v7 + 1;
    }

    else
    {
      v5 = v7;
    }

    goto LABEL_19;
  }

  switch(v4)
  {
    case 0x52474241:
      v6 = *(a2 + 24) == 0;
      v7 = 70;
      goto LABEL_16;
    case 0x52476841:
      v5 = 115;
      goto LABEL_19;
    case 0x77343061:
      v6 = *(a2 + 24) == 0;
      v7 = 552;
      goto LABEL_16;
  }

LABEL_12:
  v8 = VGLogSharedMetalHelpers(v4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    vg::shared::createMetalTexture();
  }

  v9 = 0;
LABEL_25:

  return v9;
}