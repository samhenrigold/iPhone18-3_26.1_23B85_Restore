void sub_1B2E3FDB0(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v53 - 240));
  a52 = v53 - 208;
  std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a52);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  _Unwind_Resume(a1);
}

void labelPointToWorldPoint(const md::LabelPoint *a1, const LabelLayoutContext *a2, double a3)
{
  if (a2)
  {
    md::LabelPoint::mercatorPoint(a1);
  }

  else
  {
    v5 = md::LabelPoint::geocentricPoint(a1);
    md::LabelPoint::geocentricPoint(v5);
    for (i = 0; i != 3; ++i)
    {
      *(&v20 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(a1 + i * 8);
    }

    v7 = gm::Matrix<double,3,1>::normalized<int,void>(&v20);
    v8 = 0;
    *v15 = v7;
    v15[1] = v9;
    v15[2] = v10;
    v11 = *(a1 + 10);
    if (v11 == 3.4028e38)
    {
      v11 = 0.0;
    }

    v12 = v11;
    do
    {
      *(&v20 + v8 * 8) = *&v15[v8] * v12;
      ++v8;
    }

    while (v8 != 3);
    v13 = 0;
    v16 = v20;
    v17 = v21;
    do
    {
      *(&v20 + v13) = *(&v16 + v13) * a3;
      v13 += 8;
    }

    while (v13 != 24);
    v14 = 0;
    v18 = v20;
    v19 = v21;
    do
    {
      *(&v20 + v14) = *(&v18 + v14) + *(a1 + v14);
      v14 += 8;
    }

    while (v14 != 24);
  }
}

void std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlockGroup>(v2, v1);
  }
}

void std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 25);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 216);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlock>(v6, v4);
  }
}

uint64_t md::LineLabelFeature::containsPixel(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4, uint64_t a5)
{
  v10 = *(*(a2 + 232) + 64);
  v11 = *(a2 + 484);
  v12 = *(a2 + 464);
  v13 = *(a1 + 192);
  v14 = atomic_load(v13 + 155);
  if (v14)
  {
    md::LabelLineStore::consumeWorkUnits(v13);
  }

  v15 = *(a1 + 192);
  v16 = md::LabelLineStore::lineSetIndexForZoom(v15, v12);
  if ((v16 & 0x80000000) != 0)
  {
    return 0;
  }

  v17 = *(v15 + 12);
  if (!v17)
  {
    return 0;
  }

  v18 = v17 + 112 * v16;
  v20 = *(v18 + 80);
  v19 = *(v18 + 88);
  v21 = (v18 + 80);
  if (v19 == v20)
  {
    return 0;
  }

  v87 = 0;
  v89 = 0;
  v86 = 0;
  v22 = 0;
  v23 = v10 * v11;
  v24 = *a4 * *a4;
  v25 = a2 + 1296;
  __asm { FMOV            V0.2D, #1.0 }

  v90 = _Q0;
  do
  {
    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v98, **(a1 + 192), *(*(a1 + 192) + 8));
    v88 = v98;
    v98 = 0uLL;
    v31 = *(v20 + 8 * v22);
    started = md::LabelLine::startCoordinate(*(v31 + 8), *(v31 + 16));
    v93 = v88;
    if (*&v88.f64[1])
    {
      atomic_fetch_add_explicit((*&v88.f64[1] + 8), 1uLL, memory_order_relaxed);
    }

    v94 = v31;
    v96 = started;
    v97 = *(*&v88.f64[0] + 16);
    v33 = started;
    v34 = *(v31 + 8);
    v35 = (v34 + 16 * started);
    if (v33 >= (*(v31 + 16) - v34) >> 4)
    {
      v35 = 0;
    }

    v95 = v35;
    if (*&v88.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v88.f64[1]);
    }

    if (*&v98.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v98.f64[1]);
    }

    v36 = (*(**v95 + 24))(*v95, SWORD1(v96));
    labelPointToWorldPoint(v36, *(a2 + 440), v23);
    v92[0] = v37;
    v92[1] = v38;
    v92[2] = v39;
    isDistanceClipped = md::LabelLayoutContext::isDistanceClipped(a2 + 432, v92);
    if (!isDistanceClipped)
    {
      v41 = 0;
      v42 = (a2 + 1296);
      do
      {
        v43 = 0;
        v44 = 0.0;
        v45 = v42;
        do
        {
          v46 = *v45;
          v45 += 4;
          v44 = v44 + *&v92[v43++] * v46;
        }

        while (v43 != 3);
        v98.f64[v41] = *(v25 + 8 * v41 + 96) + v44;
        ++v41;
        ++v42;
      }

      while (v41 != 4);
      v5 = vcvt_f32_f64(vmulq_f64(v98, vdivq_f64(v90, vdupq_lane_s64(v100, 0))));
    }

    while (1)
    {
      v63 = md::LabelLinePosition::pointAtOffset(&v93, 1);
      if (!v63)
      {
        break;
      }

      labelPointToWorldPoint(v63, *(a2 + 440), v23);
      v91[0] = v47;
      v91[1] = v48;
      v91[2] = v49;
      v50 = md::LabelLayoutContext::isDistanceClipped(a2 + 432, v91);
      if (v50)
      {
        v51 = v5;
      }

      else
      {
        v52 = 0;
        v53 = (a2 + 1296);
        do
        {
          v54 = 0;
          v55 = 0.0;
          v56 = v53;
          do
          {
            v57 = *v56;
            v56 += 4;
            v55 = v55 + *&v91[v54++] * v57;
          }

          while (v54 != 3);
          v98.f64[v52] = *(v25 + 8 * v52 + 96) + v55;
          ++v52;
          ++v53;
        }

        while (v52 != 4);
        v51 = vcvt_f32_f64(vmulq_f64(v98, vdivq_f64(v90, vdupq_lane_s64(v100, 0))));
        if (!isDistanceClipped)
        {
          v58 = vsub_f32(v51, v5);
          v59 = vmul_f32(v58, v58);
          if (vaddv_f32(v59) > 0.00000011921)
          {
            v60 = vmul_f32(vsub_f32(*a3, v5), v58);
            v61 = vsub_f32(*a3, vmla_n_f32(v5, v58, fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v60, 1), v60), vadd_f32(vdup_lane_s32(v59, 1), v59)).f32[0], 0.0), 1.0)));
            v62 = vaddv_f32(vmul_f32(v61, v61));
            if (v62 < v24)
            {
              v86 = v96;
              v87 = 1;
              v89 = v22;
              goto LABEL_32;
            }
          }
        }
      }

      v62 = v24;
LABEL_32:
      md::LabelLinePosition::moveToNextPoint(&v93);
      v5 = v51;
      isDistanceClipped = v50;
      v24 = v62;
    }

    if (*&v93.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v93.f64[1]);
    }

    ++v22;
    v20 = *v21;
  }

  while (v22 < (v21[1] - *v21) >> 3);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  *(a5 + 8) = v86;
  v64 = *(*(*(v20 + 8 * v89) + 8) + 16 * v86);
  if (*(v64 + 32))
  {
    v65 = 0;
  }

  else
  {
    v65 = *(v64 + 16);
  }

  *(a5 + 16) = v65;
  *a5 = 0;
  *(a5 + 4) = v89;
  v67 = *(a1 + 224);
  if (v67 != (a1 + 232))
  {
    v68 = *a4 * *a4;
    do
    {
      v69 = (*(*v67[5] + 200))(v67[5]);
      md::LabelLineResolvedPosition::ensureValidLinePosition(v69, v70);
      if (*(v69 + 2) == *(v20 + 8 * v89))
      {
        v71 = (*(*v67[5] + 56))(v67[5]);
        labelPointToWorldPoint(v71, *(a2 + 440), v23);
        v98.f64[0] = v72;
        v98.f64[1] = v73;
        v99 = v74;
        if (!md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v98))
        {
          v75 = 0;
          v76 = (a2 + 1296);
          do
          {
            v77 = 0;
            v78 = 0.0;
            v79 = v76;
            do
            {
              v80 = *v79;
              v79 += 4;
              v78 = v78 + v98.f64[v77++] * v80;
            }

            while (v77 != 3);
            v93.f64[v75] = *(v25 + 8 * v75 + 96) + v78;
            ++v75;
            ++v76;
          }

          while (v75 != 4);
          v81 = vsub_f32(*a3, vcvt_f32_f64(vmulq_f64(v93, vdivq_f64(v90, vdupq_lane_s64(v95, 0)))));
          v82 = vaddv_f32(vmul_f32(v81, v81));
          if (v82 < v68)
          {
            *a5 = *(v67 + 8);
            v68 = v82;
          }
        }
      }

      v83 = v67[1];
      if (v83)
      {
        do
        {
          v84 = v83;
          v83 = *v83;
        }

        while (v83);
      }

      else
      {
        do
        {
          v84 = v67[2];
          _ZF = *v84 == v67;
          v67 = v84;
        }

        while (!_ZF);
      }

      v67 = v84;
    }

    while (v84 != (a1 + 232));
  }

  *a4 = sqrtf(v24);
  return 1;
}

void sub_1B2E40674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (*(&a15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&a15 + 1));
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E40778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(ggl::DiffuseLandmark::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::DiffuseLandmark::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2E4192C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_5,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_5>,ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A066A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *std::vector<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2E41ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_4,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_4>,ggl::DiffuseLandmark::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2E42300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2E42718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2E42AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::FoggedDiffuseLandmark::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A062B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseLandmark::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedSpecularLandmark::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularLandmark::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::LandmarkFlat::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A061D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::LandmarkDepth::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A061A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::VenueLayerLayoutCharacteristics::getOverridePolygonDepthType(md::VenueLayerLayoutCharacteristics *this, VKPolygonGroup *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(this + 9) == 1 && *(*(this + 7) + 288) == 1)
  {
    if (!v3 || (objc_msgSend_styleAttributes(v3), std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v12), v5 = v12, v12 == v13))
    {
      v10 = 1;
      v9 = 3;
    }

    else
    {
      v6 = 0;
      do
      {
        v8 = *v5 == 3 && *(v5 + 4) == 113;
        v6 |= v8;
        v5 += 8;
      }

      while (v5 != v13);
      if (v6)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      v10 = 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v9 | (v10 << 8);
}

uint64_t md::VenueLayerLayoutCharacteristics::focusState(md::VenueLayerLayoutCharacteristics *this, VKPolygonGroup *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(this + 7) + 272);
  if (v5)
  {
    v6 = v3;
    v7 = *(this + 7);
    v8 = [(VKPolygonGroup *)v6 buildingId];
    v9 = (v7 + 16);
    do
    {
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v9[3];
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v11 != v12)
      {
        while (*(v11 + 24) != v8)
        {
          v11 += 120;
          if (v11 == v12)
          {
            v11 = v12;
            break;
          }
        }
      }
    }

    while (v11 == v12);
    if (!v11)
    {
LABEL_12:
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v14 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 134217984;
        v17 = [(VKPolygonGroup *)v6 buildingId];
        _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "building is null, venueGroups is null or there is no corresponding building for this venue group, and the venueGourp.building ID is : %llu .", &v16, 0xCu);
      }

      goto LABEL_17;
    }

    if (*(v11 + 40) == *v5)
    {
      v13 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v13 = 0;
LABEL_18:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t md::VenueLayerLayoutCharacteristics::shouldLayoutPolygonGroup(md::VenueLogicContext **this, VKPolygonGroup *a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(this[7], [(VKPolygonGroup *)v5 buildingId]);
  v7 = [(VKPolygonGroup *)v5 layer];
  v8 = v6;
  if (v7 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (a3 && v7 != v8)
  {
    v9 = [(VKPolygonGroup *)v5 layer]!= v8;
  }

  if (*(this + 9) == 1)
  {
    v10 = [(VKPolygonGroup *)v5 layer];
    if (v5)
    {
      objc_msgSend_styleAttributes(v5);
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v15);
    for (i = *&v15[0]; i != *(&v15[0] + 1); i += 8)
    {
      v12 = *(i + 4);
      if (*i == 3 && v12 == 113)
      {
        v9 = v8 >= v10;
        break;
      }

      if (*i == 3 && v12 == 31)
      {
        v9 = 0;
        break;
      }
    }
  }

  return v9;
}

BOOL md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    shouldCullPolygonGroup = md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(a1, a2, [v7 buildingId], objc_msgSend(v7, "layer"), objc_msgSend(v7, "cullingMask"), v4);
  }

  else
  {
    shouldCullPolygonGroup = 0;
  }

  return shouldCullPolygonGroup;
}

BOOL md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, int a5, int a6)
{
  if (*(a1 + 9) == 1)
  {
    ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v22, *(a2 + 240));
    ggl::BufferMemory::~BufferMemory(v22);
    v11 = *(a1 + 56);
    v12 = (v11 + 16);
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      v13 = v12[3];
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v14 != v15)
      {
        while (v14[3] != a3)
        {
          v14 += 15;
          if (v14 == v15)
          {
            v14 = v15;
            break;
          }
        }
      }

      if (v14 != v15)
      {
        goto LABEL_11;
      }
    }

    v14 = 0;
LABEL_11:
    v16 = a4;
    v17 = v22;
    md::VenueLayerLayoutCharacteristics::offsetLevel(v22, a1, (v11 + 144), a2 + 96, v14, v16);
    for (i = 0; i != 64; i += 16)
    {
      v20 = *v17;
      v19 = v17[1];
      v17 += 2;
      *&v23[i] = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v19);
    }

    a6 = ggl::CullingGrid::intersectedCellsForView(v23, 0.0);
  }

  return (a6 & a5) == 0;
}

void md::VenueLayerLayoutCharacteristics::offsetLevel(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t *a5, unsigned __int16 a6)
{
  if (!a5)
  {
    return;
  }

  *&v12 = COERCE_DOUBLE(md::VenueLogicContext::buildingElevation(*(a2 + 56), a5[3], 1));
  v14 = v13;
  v15 = *&v12;
  v16 = *(a2 + 56);
  md::FloorInfo::FloorInfo(v47, v16, a5);
  v17 = a5[3];
  v18 = *(v16 + 312);
  if (!*&v18)
  {
    goto LABEL_18;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = a5[3];
    if (v17 >= *&v18)
    {
      v20 = v17 % *&v18;
    }
  }

  else
  {
    v20 = (*&v18 - 1) & v17;
  }

  v21 = *(*(v16 + 38) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    v23 = v22[1];
    if (v17 == v23)
    {
      break;
    }

    if (v19.u32[0] > 1uLL)
    {
      if (v23 >= *&v18)
      {
        v23 %= *&v18;
      }
    }

    else
    {
      v23 &= *&v18 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_18;
    }
  }

  if (v22[2] != v17)
  {
    goto LABEL_17;
  }

  v45 = v22[3];
  v46 = v22[4];
  if (v45 == v46)
  {
    goto LABEL_18;
  }

  while (*(v45 + 32) != a6)
  {
    v24 = 0;
    v45 += 56;
    if (v45 == v46)
    {
      goto LABEL_19;
    }
  }

  v24 = v45;
LABEL_19:
  if ((v14 & 1) == 0)
  {
    v15 = 0.0;
  }

  md::VenueLogicContext::getVenueLevelElevation(v16, v17, a6, 1);
  v26 = v25;
  if ((v27 & 1) == 0)
  {
    v26 = v15;
  }

  v28 = v26 + 0.100000001;
  if (v24 && (*(a2 + 54) & 1) != 0)
  {
    v28 = *(v24 + 16) + v15;
  }

  v52 = *(a4 + 96);
  v53 = *(a4 + 112);
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v51, &v52);
  v29 = v51[1];
  v30 = __sincos_stret(v51[0]);
  v31 = 6378137.0 / sqrt(v30.__sinval * v30.__sinval * -0.00669437999 + 1.0);
  v32 = (v31 + v28) * v30.__cosval;
  v33 = __sincos_stret(v29);
  v34 = 0;
  v35 = *(a4 + 112);
  v49 = *(a4 + 96);
  *v50 = v35;
  v36 = *(a4 + 80);
  v48[4] = *(a4 + 64);
  v48[5] = v36;
  v37 = *(a4 + 16);
  v48[0] = *a4;
  v48[1] = v37;
  v38 = *(a4 + 48);
  v48[2] = *(a4 + 32);
  v48[3] = v38;
  *&v49 = v32 * v33.__cosval;
  *(&v49 + 1) = v32 * v33.__sinval;
  v50[0] = (v28 + v31 * 0.99330562) * v30.__sinval;
  do
  {
    v39 = 0;
    v40 = v48;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = a3;
      do
      {
        v44 = *v43;
        v43 += 4;
        v42 = v42 + *(v40 + v41) * v44;
        v41 += 8;
      }

      while (v41 != 32);
      *(a1 + 8 * (4 * v39++ + v34)) = v42;
      v40 += 2;
    }

    while (v39 != 4);
    ++v34;
    ++a3;
  }

  while (v34 != 4);
}

uint64_t md::FloorInfo::FloorInfo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a2 + 40), a3[3]);
  v6 = v5 + 3;
  if (!v5)
  {
    v6 = a3 + 7;
  }

  v7 = *v6;
  *a1 = v7;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    while (*(v8 + 8) != v7)
    {
      v8 += 184;
      if (v8 == v9)
      {
        v8 = a3[1];
        break;
      }
    }
  }

  *(a1 + 2) = v8 != v9;
  v10 = *(a3 + 28);
  if (v8 != v9)
  {
    v10 = v7;
  }

  *(a1 + 4) = v10;
  return a1;
}

void md::VenueLayerLayoutCharacteristics::modifyMVCForPolygonGroup(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = a5;
  v12 = v11;
  if (*(a1 + 9) == 1 && *(*(a1 + 56) + 288) == 1)
  {
    v13 = v11;
    v14 = [v13 buildingId];
    v15 = (*(a1 + 56) + 16);
    do
    {
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = v15[3];
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 != v17)
      {
        while (v18[3] != v14)
        {
          v18 += 15;
          if (v18 == v17)
          {
            v18 = v17;
            break;
          }
        }
      }
    }

    while (v18 == v17);
    if (!v18)
    {
LABEL_15:
      v23 = a3[1];
      *a6 = *a3;
      a6[1] = v23;
      v24 = a3[3];
      a6[2] = a3[2];
      a6[3] = v24;
      goto LABEL_16;
    }

    v19 = [v13 layer];
    ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v25, *a2);
    ggl::BufferMemory::~BufferMemory(v25);
    md::VenueLayerLayoutCharacteristics::offsetLevel(v25, a1, (*(a1 + 56) + 144), a4, v18, v19);
    for (i = 0; i != 16; i += 4)
    {
      *a6++ = vcvt_hight_f32_f64(vcvt_f32_f64(*&v25[i]), *&v25[i + 2]);
    }

LABEL_16:
  }

  else
  {
    v21 = a3[1];
    *a6 = *a3;
    a6[1] = v21;
    v22 = a3[3];
    a6[2] = a3[2];
    a6[3] = v22;
  }
}

unint64_t md::VenueLayerLayoutCharacteristics::renderOrderForAttributes(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5, unsigned int a6, int a7, void *a8, void *a9)
{
  v16 = *(a1 + 9);
  v17 = a5 >> 4;
  v18 = (20 * [a9 layer]) | 2;
  if (!v16)
  {
    v18 = 2;
  }

  v19 = 0x800000000;
  if (!a4)
  {
    v19 = 0;
  }

  v20 = 0x2000000;
  if (a2)
  {
    v20 = 0;
  }

  v21 = 0x20000;
  if (!a7)
  {
    v21 = 0;
  }

  return (v20 & 0xFFFFFFFFFFFE01FFLL | (a3 << 26) | v19 & 0xFFFFFFFFFFFE01FFLL | (a6 << 18) | v21 & 0xFFFFFFFFFFFE01FFLL | (v17 << 9) | (*(a5 + 1) << 20) | (*a8 >> 3) & 0x1FELL) + v18;
}

uint64_t md::VenueLayerLayoutCharacteristics::shouldStencil(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 9) != 1 || *(a1 + 55) != 1)
  {
    return 0;
  }

  *a3 = -1;
  return 1;
}

void md::VenueLayerLayoutCharacteristics::~VenueLayerLayoutCharacteristics(md::VenueLayerLayoutCharacteristics *this)
{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void *geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1F2A4E798;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4E798;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4E798;

  return a1;
}

ggl::zone_mallocator *md::VenueRenderLayer::_layoutDimmingOverlay(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  result = md::LayoutContext::get<md::VenueLogicContext>(a2);
  if (result)
  {
    v5 = result;
    if (*(result + 70) >= 0.00000011921)
    {
      result = gdc::Context::get<md::GeometryContext>(a2);
      if (result)
      {
        md::VenueRenderLayer::_venuesCommandBuffer(this, a2);
        v19 = 0u;
        v20 = 0u;
        v21 = 0;
        v18 = 0u;
        v17 = 0x40000000;
        LODWORD(v19) = 0x40000000;
        v22 = 1065353216;
        DWORD1(v20) = 1065353216;
        memset(v15, 0, sizeof(v15));
        v14 = 0u;
        v13 = 1065353216;
        v15[0] = 1065353216;
        v16 = xmmword_1B33B0B00;
        v15[5] = 1065353216;
        gm::operator*<float,4,4,4>(v12, &v13, &v17);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v10, **(this + 47), 1);
        v6 = 0;
        v7 = v11;
        do
        {
          *(v7 + v6) = *&v12[v6];
          v6 += 16;
        }

        while (v6 != 64);
        ggl::BufferMemory::~BufferMemory(&v10);
        v8 = *(v5 + 70);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v10, *(*(this + 47) + 16));
        v9 = v11;
        *(v11 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 76) = v8;
        ggl::BufferMemory::~BufferMemory(&v10);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(*(*(this + 47) + 64) + 136), *(*(*(this + 47) + 64) + 232), **(this + 47), *(*(this + 47) + 8));
        md::GeometryLogic::createUnitTransformConstantData(&v10);
      }
    }
  }

  return result;
}

void md::VenueRenderLayer::_layoutVenueWalls(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = md::VenueRenderLayer::_venuesCommandBuffer(this, *(a2 + 1));
  operator new();
}

void sub_1B2E44180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::VenueRenderLayer::_layoutOpenToBelowAreas(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = md::VenueRenderLayer::_venuesCommandBuffer(this, *(a2 + 1));
  operator new();
}

void sub_1B2E44250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::VenueRenderLayer::_layoutVenueFootprints(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  md::VenueRenderLayer::_venuesCommandBuffer(this, a2);
  v4 = md::LayoutContext::get<md::VenueLogicContext>(a2);
  if (v4)
  {
    v5 = v4;
    if (gdc::Context::get<md::GeometryContext>(a2))
    {
      v41 = md::LayoutContext::get<md::CameraContext>(a2);
      md::LayoutContext::zoomAtCentrePoint(a2);
      v6 = *(this + 34);
      v42 = *(this + 35);
      if (v6 != v42)
      {
        do
        {
          v43 = v6;
          v7 = *v6;
          v8 = *(*v6 + 392);
          v9 = *(*v6 + 224);
          v10 = *(*v6 + 232);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v44 = v10;
          ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, v9, 0);
          v11 = *(v61 + 16);
          v56 = *v61;
          v57 = v11;
          v12 = *(v61 + 48);
          v58 = *(v61 + 32);
          v59 = v12;
          ggl::BufferMemory::~BufferMemory(&v60);
          v13 = ggl::CullingGrid::intersectedCellsForView(&v56, 0.0);
          v14 = *(v8 + 784);
          v48 = *(v8 + 792);
          if (v14 != v48)
          {
            v15 = v13;
            v16 = *(v41 + 3768) * 10.0 * (1 << *(v8 + 169)) / *(v41 + 1368);
            v45 = v7;
            do
            {
              if ((*(this + 393) & 1) != 0 || !md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(this + 384, v7, *(v14 + 64), *(v14 + 60), *(v14 + 56), v15))
              {
                v17 = (v5 + 16);
                while (1)
                {
                  v17 = *v17;
                  if (!v17)
                  {
                    break;
                  }

                  v18 = v17[3];
                  v19 = *(v18 + 16);
                  v20 = *(v18 + 24);
                  if (v19 != v20)
                  {
                    while (*(v19 + 24) != *(v14 + 64))
                    {
                      v19 += 120;
                      if (v19 == v20)
                      {
                        v19 = v20;
                        break;
                      }
                    }
                  }

                  if (v19 != v20)
                  {
                    if (v19)
                    {
                      v21 = *(v19 + 56);
                      md::FloorInfo::FloorInfo(v54, v5, v19);
                      v22 = *(v14 + 60);
                      if (((*(this + 438) & 1) != 0 || v22 == v55) && v22 >= v21 && v22 <= v55)
                      {
                        v23 = md::PolygonViewConstantsFrameCache::pop((*(this + 46) + 240));
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, *v23, 1);
                        v24 = v61;
                        v25 = v57;
                        *v61 = v56;
                        v24[1] = v25;
                        v26 = v59;
                        v24[2] = v58;
                        v24[3] = v26;
                        ggl::BufferMemory::~BufferMemory(&v60);
                        v27 = *(v7 + 376);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, *v23, 1);
                        *(v61 + 64) = v27;
                        ggl::BufferMemory::~BufferMemory(&v60);
                        v28 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(*(*(this + 47) + 2728));
                        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v28 + 17), *(v28 + 29), *(v7 + 240), *(v7 + 248));
                        v29 = md::PolygonViewConstantsFrameCache::pop((*(this + 46) + 240));
                        v31 = *v29;
                        v30 = v29[1];
                        if (v30)
                        {
                          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
                        }

                        v47 = v30;
                        v32 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(*(*(this + 47) + 3448));
                        v33 = md::PolygonViewConstantsFrameCache::pop((*(this + 46) + 240));
                        v35 = *v33;
                        v34 = v33[1];
                        if (v34)
                        {
                          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
                        }

                        v46 = v34;
                        *v51 = v56;
                        *&v51[16] = v57;
                        *&v51[32] = v58;
                        v52 = v59;
                        memset(&v49[2] + 4, 0, 28);
                        *(v49 + 4) = 0u;
                        LODWORD(v49[0]) = 1065353216;
                        HIDWORD(v49[2]) = 1065353216;
                        LODWORD(v49[5]) = 1065353216;
                        v50 = xmmword_1B33B0710;
                        gm::operator*<float,4,4,4>(&v60, v51, v49);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(v53, v35, 1);
                        v36 = 0;
                        v37 = v53[5];
                        do
                        {
                          *(v37 + v36) = *(&v60 + v36);
                          v36 += 16;
                        }

                        while (v36 != 64);
                        ggl::BufferMemory::~BufferMemory(v53);
                        v38 = *(v45 + 376);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, v35, 1);
                        *(v61 + 64) = v38;
                        ggl::BufferMemory::~BufferMemory(&v60);
                        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v28 + 17), *(v28 + 29), v35, v46);
                        memset(&v51[20], 0, 28);
                        *&v51[4] = 0u;
                        *v51 = 1065353216;
                        *&v51[20] = 1065353216;
                        *&v52 = 0;
                        *&v51[40] = 1065353216;
                        *(&v52 + 1) = LODWORD(v16) | 0x3F80000000000000;
                        gm::operator*<float,4,4,4>(&v60, &v56, v51);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(v49, v31, 1);
                        v39 = 0;
                        v40 = v49[5];
                        do
                        {
                          *(v40 + v39) = *(&v60 + v39);
                          v39 += 16;
                        }

                        while (v39 != 64);
                        ggl::BufferMemory::~BufferMemory(v49);
                        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v32 + 17), *(v32 + 29), v31, v47);
                        md::GeometryLogic::createUnitTransformConstantData(&v60);
                      }
                    }

                    break;
                  }
                }
              }

              v14 += 72;
            }

            while (v14 != v48);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }

          v6 = v43 + 1;
        }

        while (v43 + 1 != v42);
      }
    }
  }
}

void sub_1B2E44AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::VenueRenderLayer::_forEachVisibleVenueGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = *(*(a1 + 40) + 104);
  v5 = *(a2 + 8);
  v84 = md::LayoutContext::get<md::CameraContext>(v5);
  v6 = md::LayoutContext::get<md::VenueLogicContext>(v5);
  v83 = md::LayoutContext::get<md::SharedResourcesContext>(v5);
  md::LayoutContext::zoomAtCentrePoint(v5);
  v8 = *(a1 + 272);
  v82 = *(a1 + 280);
  if (v8 != v82)
  {
    v9 = v7;
    v10 = v6 + 2;
    v11 = ceilf(v7);
    v89 = v6;
    v91 = v6 + 2;
    while (1)
    {
      v12 = *(*v8 + 392);
      v13 = *(v12 + 169);
      v14 = *(v84 + 3768);
      v15 = *(v84 + 1368);
      v16 = *(*v8 + 224);
      v17 = *(*v8 + 232);
      v93 = *v8;
      v116 = v16;
      v117 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, v16, 0);
      v18 = v96[1];
      v112 = *v96;
      v113 = v18;
      v19 = v96[3];
      v114 = v96[2];
      v115 = v19;
      ggl::BufferMemory::~BufferMemory(&v94);
      v20 = ggl::CullingGrid::intersectedCellsForView(&v112, 0.0);
      v21 = *(v12 + 752);
      v103[0] = &v116;
      [v85 size];
      v103[1] = v22;
      v103[2] = v23;
      v24 = *(v12 + 169);
      v104 = *(v12 + 169);
      v105 = v9;
      v106 = 1065353216;
      v107 = *(v6 + 71);
      v108 = v14 * (1 << v13) / v15;
      v109 = v20;
      v25 = v21;
      if (v25)
      {
        if (v25 < 513)
        {
          v26 = 0;
          i = 512;
        }

        else
        {
          v26 = 0;
          for (i = 512; i < v25; i *= 2)
          {
            ++v26;
          }
        }

        if (i > v25)
        {
          do
          {
            --v26;
            v78 = i <= 2 * v25;
            v25 *= 2;
          }

          while (!v78);
        }
      }

      else
      {
        v26 = 0;
      }

      v110 = exp2f(v11 - (v26 + v24)) * v21;
      v28 = *v83;
      objc_msgSend_textureManager(v28);
      v87 = v8;
      v111 = *v94;
      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v95);
      }

      v29 = *(v12 + 760);
      v30 = *(v12 + 768);
      if (v29 != v30)
      {
        break;
      }

LABEL_65:
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
      }

      v8 = v87 + 1;
      if (v87 + 1 == v82)
      {
        goto LABEL_68;
      }
    }

    v90 = *(v12 + 768);
    while ((*(a1 + 393) & 1) == 0)
    {
      v31 = *(v29 + 8);
      shouldCullPolygonGroup = md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(a1 + 384, v93, v31, v20);

      if (!shouldCullPolygonGroup)
      {
        break;
      }

LABEL_64:
      v29 += 24;
      if (v29 == v30)
      {
        goto LABEL_65;
      }
    }

    v33 = *(v29 + 8);
    v34 = [v33 buildingId];

    v35 = v10;
    do
    {
      v35 = *v35;
      if (!v35)
      {
        goto LABEL_64;
      }

      v36 = v35[3];
      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      if (v38 != v37)
      {
        while (*(v38 + 24) != v34)
        {
          v38 += 120;
          if (v38 == v37)
          {
            v38 = v37;
            break;
          }
        }
      }
    }

    while (v38 == v37);
    if (!v38)
    {
      goto LABEL_64;
    }

    md::FloorInfo::FloorInfo(v101, v6, v38);
    v39 = *(v29 + 8);
    v40 = [v39 layer];

    v92 = *(v38 + 56);
    v41 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v6, v34);
    v42 = v41;
    v43 = v40;
    if (*(a1 + 438) == 1)
    {
      v88 = v41;
      ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v94, *(v93 + 240));
      ggl::BufferMemory::~BufferMemory(&v94);
      v44 = *(v29 + 8);
      v45 = &v94;
      md::VenueLayerLayoutCharacteristics::offsetLevel(&v94, a1 + 384, v6 + 18, v93 + 96, v38, v43);
      for (j = 0; j != 64; j += 16)
      {
        v48 = *v45;
        v47 = v45[1];
        v45 += 2;
        *(&v97 + j) = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
      }

      v112 = v97;
      v113 = v98;
      v114 = v99;
      v115 = v100;

      v49 = md::PolygonViewConstantsFrameCache::pop((*(a1 + 368) + 240));
      v50 = v103[0];
      v52 = *v49;
      v51 = v49[1];
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      v53 = v50[1];
      *v50 = v52;
      v50[1] = v51;
      v42 = v88;
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, *v103[0], 1);
      v54 = v96;
      v55 = v113;
      *v96 = v112;
      v54[1] = v55;
      v56 = v115;
      v54[2] = v114;
      v54[3] = v56;
      ggl::BufferMemory::~BufferMemory(&v94);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, v116, 0);
      v57 = *(v96 + 16);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v97, *v103[0], 1);
      *(*(&v99 + 1) + 64) = v57;
      ggl::BufferMemory::~BufferMemory(&v97);
      ggl::BufferMemory::~BufferMemory(&v94);
    }

    else if (v40 == v41 && v102 == 1 && *(a1 + 393) == 1)
    {
      v58 = v41;
      ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v94, *(v93 + 240));
      ggl::BufferMemory::~BufferMemory(&v94);
      if (!*(a1 + 438))
      {
        v40 = v92;
      }

      v59 = *(v29 + 8);
      v60 = v40;
      v61 = &v94;
      md::VenueLayerLayoutCharacteristics::offsetLevel(&v94, a1 + 384, v89 + 18, v93 + 96, v38, v60);
      for (k = 0; k != 64; k += 16)
      {
        v64 = *v61;
        v63 = v61[1];
        v61 += 2;
        *(&v97 + k) = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v63);
      }

      v112 = v97;
      v113 = v98;
      v114 = v99;
      v115 = v100;

      v65 = md::PolygonViewConstantsFrameCache::pop((*(a1 + 368) + 240));
      v66 = v103[0];
      v68 = *v65;
      v67 = v65[1];
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v69 = v66[1];
      *v66 = v68;
      v66[1] = v67;
      v42 = v58;
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      v109 = ggl::CullingGrid::intersectedCellsForView(&v112, 0.0);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, *v103[0], 1);
      v70 = v96;
      v71 = v113;
      *v96 = v112;
      v70[1] = v71;
      v72 = v115;
      v70[2] = v114;
      v70[3] = v72;
      ggl::BufferMemory::~BufferMemory(&v94);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, v116, 0);
      v73 = *(v96 + 16);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v97, *v103[0], 1);
      *(*(&v99 + 1) + 64) = v73;
      ggl::BufferMemory::~BufferMemory(&v97);
      ggl::BufferMemory::~BufferMemory(&v94);
    }

    v74 = *(v29 + 8);
    if (md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(a1 + 384, v93, v74, v20))
    {

      v10 = v91;
      if (*(a1 + 438) != 1)
      {
        goto LABEL_63;
      }

      LOBYTE(v75) = 0;
    }

    else
    {
      v76 = *(v29 + 8);
      shouldLayoutPolygonGroup = md::VenueLayerLayoutCharacteristics::shouldLayoutPolygonGroup((a1 + 384), v76, 0);
      v75 = (shouldLayoutPolygonGroup & v102);

      if ((*(a1 + 438) & 1) == 0)
      {
        v10 = v91;
        if (v75)
        {
LABEL_61:
          v79 = *(v29 + 8);
          v94 = v79;
          v80 = *(a3 + 24);
          if (!v80)
          {
            v81 = std::__throw_bad_function_call[abi:nn200100]();
            if (v117)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v117);
            }

            _Unwind_Resume(v81);
          }

          (*(*v80 + 48))(v80, &v94, v103);

          v10 = v91;
        }

LABEL_63:
        v6 = v89;
        v30 = v90;
        goto LABEL_64;
      }

      v10 = v91;
    }

    v78 = v43 >= v92 && v43 < v42;
    if (v78 || (v75 & 1) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

LABEL_68:
}

uint64_t std::__function::__value_func<void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::operator()(uint64_t a1, id *a2, uint64_t a3)
{
  v266 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v4;
  v233 = v7;
  LOBYTE(v250) = 0;
  BYTE1(v250) = md::VenueLayerLayoutCharacteristics::focusState((v6 + 384), v7);
  v8 = [(VKPolygonalItemGroup *)v7 styleQueries:&v250];
  v9 = *v8;
  v242 = v6;
  if (*(v8 + 8) == *v8)
  {
    goto LABEL_74;
  }

  v10 = *v9;
  v11 = v9[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v250, v10, v11);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (BYTE8(v252) != 1)
  {
    goto LABEL_70;
  }

  v12 = *(a3 + 28);
  v13 = v250;
  v14 = v250[3];
  if (v12 >= 0x17)
  {
    v15 = 23;
  }

  else
  {
    v15 = v12;
  }

  v16 = *v14;
  v236 = a1;
  if (!*v14)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v17 = *v16;
  v18 = *v16 == 1.0;
  if (*(v14 + 10) != 1 || (v17 != 0.0 ? (v19 = v17 == 1.0) : (v19 = 1), v19))
  {
LABEL_17:
    v20 = *(v14 + v18 + 11);
    if (v20 != 2)
    {
      goto LABEL_28;
    }
  }

  v21 = *(v14 + 16);
  if (v21)
  {
    v22 = *(v21 + 72);
    if (v22)
    {
      v23 = *v22 + 120 * *(v22 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x93u) != *(v23 + 12))
      {
        goto LABEL_31;
      }
    }

    if (*(v14 + 56))
    {
      v24 = *(v14 + 48);
      v25 = 8 * *(v14 + 56);
      while (1)
      {
        v26 = *(*v24 + 72);
        if (v26)
        {
          v27 = *v26 + 120 * *(v26 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v27, 0x93u) != *(v27 + 12))
          {
            break;
          }
        }

        v24 += 8;
        v20 = 1;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_28;
        }
      }

LABEL_31:
      if (v16)
      {
        v31 = *v16;
        v32 = *v16 == 1.0;
        if (*(v14 + 10) == 1 && v31 != 0.0 && v31 != 1.0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v32 = 0;
      }

      v34 = *(v14 + v32 + 11);
      if (v34 != 2)
      {
LABEL_55:
        v47 = *(v14 + 16 * v34 + 16);
        if (v47)
        {
          v48 = *(v47 + 72);
          if (v48)
          {
            v49 = *v48 + 120 * *(v48 + v15 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x92u) != *(v49 + 12))
            {
LABEL_58:
              (*(*v13 + 56))(v13);
              v7 = v233;
              v6 = v242;
              a1 = v236;
              if (v252)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v252);
              }

              if (v251)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v251);
              }

              if (gdc::Context::get<md::GeometryContext>(*(v5 + 8)))
              {
                v50 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(*(*(v242 + 376) + 2008));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v50 + 17), *(v50 + 29), **a3, *(*a3 + 8));
                md::GeometryLogic::createUnitTransformConstantData(&v250);
              }

              goto LABEL_74;
            }
          }

          v51 = v14 + 16 * v34;
          if (*(v51 + 56))
          {
            v52 = *(v51 + 48);
            v53 = 8 * *(v51 + 56);
            while (1)
            {
              v54 = *(*v52 + 72);
              if (v54)
              {
                v55 = *v54 + 120 * *(v54 + v15 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v55, 0x92u) != *(v55 + 12))
                {
                  goto LABEL_58;
                }
              }

              v52 += 8;
              v53 -= 8;
              if (!v53)
              {
                goto LABEL_69;
              }
            }
          }
        }

        goto LABEL_69;
      }

LABEL_39:
      v35 = *(v14 + 16);
      if (v35)
      {
        v36 = *(v35 + 72);
        if (v36)
        {
          v37 = *v36 + 120 * *(v36 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v37, 0x92u) != *(v37 + 12))
          {
            goto LABEL_58;
          }
        }

        if (*(v14 + 56))
        {
          v38 = *(v14 + 48);
          v39 = 8 * *(v14 + 56);
          while (1)
          {
            v40 = *(*v38 + 72);
            if (v40)
            {
              v41 = *v40 + 120 * *(v40 + v15 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x92u) != *(v41 + 12))
              {
                goto LABEL_58;
              }
            }

            v38 += 8;
            v34 = 1;
            v39 -= 8;
            if (!v39)
            {
              goto LABEL_55;
            }
          }
        }
      }

      v34 = 1;
      goto LABEL_55;
    }
  }

  v20 = 1;
LABEL_28:
  v28 = *(v14 + 16 * v20 + 16);
  if (v28)
  {
    v29 = *(v28 + 72);
    if (v29)
    {
      v30 = *v29 + 120 * *(v29 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x93u) != *(v30 + 12))
      {
        goto LABEL_31;
      }
    }

    v42 = v14 + 16 * v20;
    if (*(v42 + 56))
    {
      v43 = *(v42 + 48);
      v44 = 8 * *(v42 + 56);
      do
      {
        v45 = *(*v43 + 72);
        if (v45)
        {
          v46 = *v45 + 120 * *(v45 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x93u) != *(v46 + 12))
          {
            goto LABEL_31;
          }
        }

        v43 += 8;
        v44 -= 8;
      }

      while (v44);
    }
  }

LABEL_69:
  v7 = v233;
  (*(*v250 + 56))(v250);
  v6 = v242;
  a1 = v236;
LABEL_70:
  if (v252)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v252);
  }

  if (v251)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v251);
  }

LABEL_74:

  v56 = *(a1 + 16);
  v239 = **(a1 + 24);
  v241 = v7;
  v57 = md::VenueLayerLayoutCharacteristics::focusState((v6 + 384), v241);
  LOBYTE(v250) = 0;
  BYTE1(v250) = v57;
  v58 = [(VKPolygonalItemGroup *)v241 styleQueries:&v250];
  v59 = *v58;
  if (*(v58 + 8) == *v58)
  {
    goto LABEL_165;
  }

  v60 = *v59;
  v61 = v59[1];
  if (v61)
  {
    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v250, v60, v61);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v61);
  }

  if (BYTE8(v252) != 1)
  {
    goto LABEL_161;
  }

  v62 = *(a3 + 28);
  v63 = v250[3];
  if (v62 >= 0x17)
  {
    v64 = 23;
  }

  else
  {
    v64 = v62;
  }

  v65 = *v63;
  if (!*v63)
  {
    v67 = 0;
    goto LABEL_90;
  }

  v66 = *v65;
  v67 = *v65 == 1.0;
  if (*(v63 + 10) != 1 || (v66 != 0.0 ? (v68 = v66 == 1.0) : (v68 = 1), v68))
  {
LABEL_90:
    v69 = *(v63 + v67 + 11);
    if (v69 != 2)
    {
      goto LABEL_101;
    }
  }

  v70 = *(v63 + 16);
  if (v70)
  {
    v71 = *(v70 + 72);
    if (v71)
    {
      v72 = *v71 + 120 * *(v71 + v64 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v72, 0x93u) != *(v72 + 12))
      {
        goto LABEL_104;
      }
    }

    if (*(v63 + 56))
    {
      v73 = *(v63 + 48);
      v74 = 8 * *(v63 + 56);
      while (1)
      {
        v75 = *(*v73 + 72);
        if (v75)
        {
          v76 = *v75 + 120 * *(v75 + v64 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x93u) != *(v76 + 12))
          {
            goto LABEL_104;
          }
        }

        v73 += 8;
        v69 = 1;
        v74 -= 8;
        if (!v74)
        {
          goto LABEL_101;
        }
      }
    }
  }

  v69 = 1;
LABEL_101:
  v77 = *(v63 + 16 * v69 + 16);
  if (!v77)
  {
    goto LABEL_160;
  }

  v78 = *(v77 + 72);
  if (!v78 || (v79 = *v78 + 120 * *(v78 + v64 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v79, 0x93u) == *(v79 + 12)))
  {
    v91 = v63 + 16 * v69;
    if (!*(v91 + 56))
    {
      goto LABEL_160;
    }

    v92 = *(v91 + 48);
    v93 = 8 * *(v91 + 56);
    while (1)
    {
      v94 = *(*v92 + 72);
      if (v94)
      {
        v95 = *v94 + 120 * *(v94 + v64 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v95, 0x93u) != *(v95 + 12))
        {
          break;
        }
      }

      v92 += 8;
      v93 -= 8;
      if (!v93)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_104:
  if (!v65)
  {
    v81 = 0;
    goto LABEL_111;
  }

  v80 = *v65;
  v81 = *v65 == 1.0;
  if (*(v63 + 10) != 1 || (v80 != 0.0 ? (v82 = v80 == 1.0) : (v82 = 1), v82))
  {
LABEL_111:
    v83 = *(v63 + v81 + 11);
    if (v83 != 2)
    {
      goto LABEL_128;
    }
  }

  v84 = *(v63 + 16);
  if (v84)
  {
    v85 = *(v84 + 72);
    if (v85)
    {
      v86 = *v85 + 120 * *(v85 + v64 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v86, 0x92u) != *(v86 + 12))
      {
        goto LABEL_131;
      }
    }

    if (*(v63 + 56))
    {
      v87 = *(v63 + 48);
      v88 = 8 * *(v63 + 56);
      while (1)
      {
        v89 = *(*v87 + 72);
        if (v89)
        {
          v90 = *v89 + 120 * *(v89 + v64 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v90, 0x92u) != *(v90 + 12))
          {
            goto LABEL_131;
          }
        }

        v87 += 8;
        v83 = 1;
        v88 -= 8;
        if (!v88)
        {
          goto LABEL_128;
        }
      }
    }
  }

  v83 = 1;
LABEL_128:
  v96 = *(v63 + 16 * v83 + 16);
  if (!v96)
  {
    goto LABEL_160;
  }

  v97 = *(v96 + 72);
  if (!v97 || (v98 = *v97 + 120 * *(v97 + v64 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v98, 0x92u) == *(v98 + 12)))
  {
    v110 = v63 + 16 * v83;
    if (!*(v110 + 56))
    {
      goto LABEL_160;
    }

    v111 = *(v110 + 48);
    v112 = 8 * *(v110 + 56);
    while (1)
    {
      v113 = *(*v111 + 72);
      if (v113)
      {
        v114 = *v113 + 120 * *(v113 + v64 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v114, 0x92u) != *(v114 + 12))
        {
          break;
        }
      }

      v111 += 8;
      v112 -= 8;
      if (!v112)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_131:
  if (!v65)
  {
    v100 = 0;
    goto LABEL_138;
  }

  v99 = *v65;
  v100 = *v65 == 1.0;
  if (*(v63 + 10) != 1 || (v99 != 0.0 ? (v101 = v99 == 1.0) : (v101 = 1), v101))
  {
LABEL_138:
    v102 = *(v63 + v100 + 11);
    if (v102 != 2)
    {
      goto LABEL_155;
    }
  }

  v103 = *(v63 + 16);
  if (v103)
  {
    v104 = *(v103 + 72);
    if (v104)
    {
      v105 = *v104 + 120 * *(v104 + v64 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v105, 0x5Bu) != *(v105 + 12))
      {
        goto LABEL_158;
      }
    }

    if (*(v63 + 56))
    {
      v106 = *(v63 + 48);
      v107 = 8 * *(v63 + 56);
      while (1)
      {
        v108 = *(*v106 + 72);
        if (v108)
        {
          v109 = *v108 + 120 * *(v108 + v64 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v109, 0x5Bu) != *(v109 + 12))
          {
            goto LABEL_158;
          }
        }

        v106 += 8;
        v102 = 1;
        v107 -= 8;
        if (!v107)
        {
          goto LABEL_155;
        }
      }
    }
  }

  v102 = 1;
LABEL_155:
  v115 = *(v63 + 16 * v102 + 16);
  if (!v115)
  {
    goto LABEL_173;
  }

  v116 = *(v115 + 72);
  if (!v116 || (v117 = *v116 + 120 * *(v116 + v64 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v117, 0x5Bu) == *(v117 + 12)))
  {
    v118 = v63 + 16 * v102;
    if (!*(v118 + 56))
    {
      goto LABEL_173;
    }

    v119 = *(v118 + 48);
    v120 = 8 * *(v118 + 56);
    while (1)
    {
      v121 = *(*v119 + 72);
      if (v121)
      {
        v122 = *v121 + 120 * *(v121 + v64 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v122, 0x5Bu) != *(v122 + 12))
        {
          break;
        }
      }

      v119 += 8;
      v120 -= 8;
      if (!v120)
      {
        goto LABEL_173;
      }
    }
  }

LABEL_158:
  if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v63, 91, v62 == 0.0, 2u, 0))
  {
    if ((BYTE8(v252) & 1) == 0)
    {
LABEL_161:
      if (v252)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v252);
      }

      if (v251)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v251);
      }

      goto LABEL_165;
    }

LABEL_160:
    (*(*v250 + 56))(v250);
    goto LABEL_161;
  }

LABEL_173:
  v123 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v56 + 16), *(*(v56 + 16) + 8));
  v125.n128_u32[0] = *(a3 + 28);
  if (v125.n128_f32[0] >= 0x17)
  {
    v126 = 23;
  }

  else
  {
    v126 = v125.n128_f32[0];
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v259, v250[3], 147, v126, 2u, 0, v125, v124);
  *v243 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v259)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v250[3], 493, v126, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(v259, *v123, v243, v127);
  v237 = *v259;
  if (*(a3 + 28) >= 0x17)
  {
    v128 = 23;
  }

  else
  {
    v128 = *(a3 + 28);
  }

  v234 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(v250[3], v128, 2).u32[0];
  v232 = v129;
  if (BYTE8(v252) == 1)
  {
    (*(*v250 + 56))(v250);
  }

  if (v252)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v252);
  }

  v130 = v251;
  if (v251)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v251);
  }

  v231 = *(a3 + 8);
  v131 = *(*(v6 + 376) + 2248);
  v132 = v131[1];
  if (v132 == *v131)
  {
    v134 = v131[11];
    if (!v134)
    {
      goto LABEL_250;
    }

    v130 = (*(*v134 + 48))(v134);
    v133 = v130;
  }

  else
  {
    v133 = *(v132 - 8);
    v131[1] = v132 - 8;
  }

  v136 = v131[5];
  v135 = v131[6];
  if (v136 >= v135)
  {
    v138 = v131[4];
    v139 = (v136 - v138) >> 3;
    if ((v139 + 1) >> 61)
    {
      goto LABEL_251;
    }

    v140 = v135 - v138;
    v141 = v140 >> 2;
    if (v140 >> 2 <= (v139 + 1))
    {
      v141 = v139 + 1;
    }

    if (v140 >= 0x7FFFFFFFFFFFFFF8)
    {
      v142 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v142 = v141;
    }

    *(&v252 + 1) = v131 + 7;
    if (v142)
    {
      v143 = ggl::zone_mallocator::instance(v130);
      v144 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(v143, v142);
    }

    else
    {
      v144 = 0;
    }

    v146 = &v144[8 * v142];
    v145 = &v144[8 * v139];
    *v145 = v133;
    v137 = v145 + 1;
    v147 = v131[4];
    v148 = v131[5] - v147;
    v149 = v145 - v148;
    memcpy(v145 - v148, v147, v148);
    v150 = v131[4];
    v131[4] = v149;
    v131[5] = v137;
    v151 = v131[6];
    v131[6] = v146;
    *(&v251 + 1) = v150;
    *&v252 = v151;
    v250 = v150;
    *&v251 = v150;
    std::__split_buffer<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v250);
  }

  else
  {
    *v136 = v133;
    v137 = v136 + 1;
  }

  v131[5] = v137;
  v250 = v133;
  v152 = v131[15];
  if (!v152)
  {
    goto LABEL_250;
  }

  (*(*v152 + 48))(v152, &v250);
  v153 = *a3;
  v154 = v133[17];
  v154[1] = 0;
  v155 = *v153;
  *v154 = *v153;
  v156 = v133[29];
  v157 = v153[1];
  if (v157)
  {
    atomic_fetch_add_explicit((v157 + 8), 1uLL, memory_order_relaxed);
  }

  v158 = v156[1];
  *v156 = v155;
  v156[1] = v157;
  if (v158)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v158);
  }

  v159 = *(*(v6 + 376) + 2488);
  v160 = v159[1];
  if (v160 != *v159)
  {
    v161 = *(v160 - 8);
    v159[1] = v160 - 8;
    goto LABEL_210;
  }

  v162 = v159[11];
  if (!v162)
  {
LABEL_250:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_251:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v158 = (*(*v162 + 48))(v162);
  v161 = v158;
LABEL_210:
  v164 = v159[5];
  v163 = v159[6];
  if (v164 >= v163)
  {
    v166 = v159[4];
    v167 = (v164 - v166) >> 3;
    if ((v167 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v168 = v163 - v166;
    v169 = v168 >> 2;
    if (v168 >> 2 <= (v167 + 1))
    {
      v169 = v167 + 1;
    }

    if (v168 >= 0x7FFFFFFFFFFFFFF8)
    {
      v170 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v170 = v169;
    }

    *(&v252 + 1) = v159 + 7;
    if (v170)
    {
      v171 = ggl::zone_mallocator::instance(v158);
      v172 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(v171, v170);
    }

    else
    {
      v172 = 0;
    }

    v174 = &v172[8 * v170];
    v173 = &v172[8 * v167];
    *v173 = v161;
    v165 = v173 + 1;
    v175 = v159[4];
    v176 = v159[5] - v175;
    v177 = v173 - v176;
    memcpy(v173 - v176, v175, v176);
    v178 = v159[4];
    v159[4] = v177;
    v159[5] = v165;
    v179 = v159[6];
    v159[6] = v174;
    *(&v251 + 1) = v178;
    *&v252 = v179;
    v250 = v178;
    *&v251 = v178;
    std::__split_buffer<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v250);
  }

  else
  {
    *v164 = v161;
    v165 = v164 + 1;
  }

  v159[5] = v165;
  v250 = v161;
  v180 = v159[15];
  if (!v180)
  {
    goto LABEL_250;
  }

  (*(*v180 + 48))(v180, &v250);
  v181 = vcvtq_f64_f32(__PAIR64__(v232, v234));
  v182 = *a3;
  v183 = v161[17];
  v183[1] = 0;
  v184 = *v182;
  *v183 = *v182;
  v185 = v161[29];
  v186 = v182[1];
  if (v186)
  {
    atomic_fetch_add_explicit((v186 + 8), 1uLL, memory_order_relaxed);
  }

  v187 = vdivq_f64(v181, v231);
  v188 = v185[1];
  *v185 = v184;
  v185[1] = v186;
  if (v188)
  {
    v235 = v187;
    std::__shared_weak_count::__release_shared[abi:nn200100](v188);
    v187 = v235;
  }

  v189 = vcvt_f32_f64(v187);
  v190 = v161[17];
  *(v190 + 16) = *(v133[17] + 16);
  *(v190 + 24) = 0;
  v191 = v161[29];
  v192 = *(v191 + 24);
  *(v191 + 16) = 0;
  *(v191 + 24) = 0;
  if (v192)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v192);
  }

  v193 = *(v133[17] + 16);
  ggl::BufferMemory::BufferMemory(v243);
  ggl::ResourceAccessor::accessConstantData(&v250, 0, v193, 1);
  ggl::BufferMemory::operator=(v243, &v250);
  ggl::BufferMemory::~BufferMemory(&v250);
  v194 = v245;
  *v245 = v237;
  v194[2] = v189;
  ggl::BufferMemory::~BufferMemory(v243);
  *&v195 = ggl::RenderItem::RenderItem(v243, "").u64[0];
  v196 = *(v6 + 376);
  *&v244 = v196 + 2256;
  *(&v244 + 1) = v133;
  LODWORD(v245) = *(v196 + 3673);
  v197 = *(v6 + 393);
  v198 = 20 * [(VKPolygonGroup *)v241 layer]+ 0x800000004;
  if (!v197)
  {
    v198 = 0x800000004;
  }

  *(&v245 + 1) = v198;
  *&v199 = ggl::RenderItem::RenderItem(v259, "").u64[0];
  v200 = *(v6 + 376);
  *&v260 = v200 + 2496;
  *(&v260 + 1) = v161;
  LODWORD(v261) = *(v200 + 3673);
  v201 = *(v6 + 393);
  v202 = 20 * [(VKPolygonGroup *)v241 layer]+ 0x800000005;
  if (!v201)
  {
    v202 = 0x800000005;
  }

  *(&v261 + 1) = v202;
  v203 = [(VKPolygonGroup *)v241 strokeMeshes];
  v204 = *v203;
  v238 = *(v203 + 8);
  if (*v203 != v238)
  {
    v205 = 0;
    do
    {
      v206 = *(v6 + 376);
      v207 = *(a3 + 48);
      v258[0] = &unk_1F2A4E800;
      v258[3] = v258;
      v208 = [(VKPolygonalItemGroup *)v241 commitRangesToStrokeRenderItemBatcher:v206 + 3712 forMeshAtIndex:v205 cullingMask:v207 featureIdPredicate:v258];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v258);
      v209 = *(v6 + 376);
      v210 = *v204;
      v250 = &off_1F2A5D8B8;
      v253 = v245;
      v252 = v244;
      v251 = *&v243[8];
      v257 = v249;
      v256 = v248;
      v255 = v247;
      v254 = v246;
      v211 = *(v209 + 3800);
      v212 = v211[1];
      if (v212 == *(v209 + 3808))
      {
        v211 = *v211;
        if (!v211)
        {
          v211 = malloc_type_malloc(120 * v212 + 16, 0x1020040EDED9539uLL);
          *v211 = 0;
          v211[1] = 0;
          **(v209 + 3800) = v211;
        }

        *(v209 + 3800) = v211;
        v212 = v211[1];
      }

      v213 = &v211[15 * v212];
      v211[1] = v212 + 1;
      v213[2] = &off_1F2A5D8B8;
      v214 = v251;
      v215 = v252;
      *(v213 + 7) = v253;
      *(v213 + 5) = v215;
      *(v213 + 3) = v214;
      v216 = v254;
      v217 = v255;
      v218 = v256;
      *(v213 + 15) = v257;
      *(v213 + 13) = v218;
      *(v213 + 11) = v217;
      *(v213 + 9) = v216;
      ggl::RenderItem::~RenderItem(&v250);
      v213[10] = v210;
      v219 = *v208;
      v213[13] = *v208;
      v213[14] = (v208[1] - v219) >> 4;
      ggl::CommandBuffer::pushRenderItem(v239, (v213 + 2));
      v220 = *(v242 + 376);
      v221 = *v204;
      v250 = &off_1F2A5D8B8;
      v251 = *&v259[8];
      v252 = v260;
      v253 = v261;
      v257 = v265;
      v256 = v264;
      v255 = v263;
      v254 = v262;
      v222 = *(v220 + 3800);
      v223 = v222[1];
      if (v223 == *(v220 + 3808))
      {
        v222 = *v222;
        if (!v222)
        {
          v222 = malloc_type_malloc(120 * v223 + 16, 0x1020040EDED9539uLL);
          *v222 = 0;
          v222[1] = 0;
          **(v220 + 3800) = v222;
        }

        *(v220 + 3800) = v222;
        v223 = v222[1];
      }

      v224 = &v222[15 * v223];
      v222[1] = v223 + 1;
      v224[2] = &off_1F2A5D8B8;
      v225 = v251;
      v226 = v252;
      *(v224 + 7) = v253;
      *(v224 + 5) = v226;
      *(v224 + 3) = v225;
      v227 = v254;
      v228 = v255;
      v229 = v256;
      *(v224 + 15) = v257;
      *(v224 + 13) = v229;
      *(v224 + 11) = v228;
      *(v224 + 9) = v227;
      ggl::RenderItem::~RenderItem(&v250);
      v224[10] = v221;
      v230 = *v208;
      v224[13] = *v208;
      v224[14] = (v208[1] - v230) >> 4;
      ggl::CommandBuffer::pushRenderItem(v239, (v224 + 2));
      ++v205;
      v204 += 2;
      v6 = v242;
    }

    while (v204 != v238);
  }

LABEL_165:
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

__n128 std::__function::__func<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06978;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::operator()(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v567 = *(a1 + 16);
  v583 = **(a1 + 24);
  v7 = v5;
  v576 = v7;
  v559 = ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::pop(*(*(v6 + 376) + 536));
  v8 = ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::pop(*(*(v6 + 376) + 536));
  v558 = v8;
  v9 = *(*(v6 + 376) + 992);
  v10 = v9[1];
  if (v10 == *v9)
  {
    v12 = v9[11];
    if (!v12)
    {
      goto LABEL_443;
    }

    v8 = (*(*v12 + 48))(v12);
    v11 = v8;
  }

  else
  {
    v11 = *(v10 - 8);
    v9[1] = v10 - 8;
  }

  v14 = v9[5];
  v13 = v9[6];
  v585 = a3;
  if (v14 >= v13)
  {
    v16 = v9[4];
    v17 = (v14 - v16) >> 3;
    if ((v17 + 1) >> 61)
    {
      goto LABEL_444;
    }

    v18 = v13 - v16;
    v19 = v18 >> 2;
    if (v18 >> 2 <= (v17 + 1))
    {
      v19 = v17 + 1;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v19;
    }

    *(&v645 + 1) = v9 + 7;
    if (v20)
    {
      v21 = ggl::zone_mallocator::instance(v8);
      v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(v21, v20);
    }

    else
    {
      v22 = 0;
    }

    v24 = &v22[8 * v20];
    v23 = &v22[8 * v17];
    *v23 = v11;
    v15 = v23 + 1;
    v25 = v9[4];
    v26 = v9[5] - v25;
    v27 = v23 - v26;
    memcpy(v23 - v26, v25, v26);
    v28 = v9[4];
    v9[4] = v27;
    v9[5] = v15;
    v29 = v9[6];
    v9[6] = v24;
    *(&v644 + 1) = v28;
    *&v645 = v29;
    *&v644 = v28;
    v643 = v28;
    std::__split_buffer<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v643);
    a3 = v585;
  }

  else
  {
    *v14 = v11;
    v15 = v14 + 1;
  }

  v9[5] = v15;
  v643 = v11;
  v30 = v9[15];
  if (!v30)
  {
    goto LABEL_443;
  }

  v31 = (*(*v30 + 48))(v30, &v643);
  v32 = *(*(v6 + 376) + 1232);
  v33 = v32[1];
  v560 = v11;
  if (v33 == *v32)
  {
    v35 = v32[11];
    if (!v35)
    {
      goto LABEL_443;
    }

    v31 = (*(*v35 + 48))(v35);
    v34 = v31;
  }

  else
  {
    v34 = *(v33 - 8);
    v32[1] = v33 - 8;
  }

  v37 = v32[5];
  v36 = v32[6];
  if (v37 >= v36)
  {
    v39 = v32[4];
    v40 = (v37 - v39) >> 3;
    if ((v40 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v41 = v36 - v39;
    v42 = v41 >> 2;
    if (v41 >> 2 <= (v40 + 1))
    {
      v42 = v40 + 1;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v42;
    }

    *(&v645 + 1) = v32 + 7;
    if (v43)
    {
      v44 = ggl::zone_mallocator::instance(v31);
      v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(v44, v43);
    }

    else
    {
      v45 = 0;
    }

    v47 = &v45[8 * v43];
    v46 = &v45[8 * v40];
    *v46 = v34;
    v38 = v46 + 1;
    v48 = v32[4];
    v49 = v32[5] - v48;
    v50 = v46 - v49;
    memcpy(v46 - v49, v48, v49);
    v51 = v32[4];
    v32[4] = v50;
    v32[5] = v38;
    v52 = v32[6];
    v32[6] = v47;
    *(&v644 + 1) = v51;
    *&v645 = v52;
    *&v644 = v51;
    v643 = v51;
    std::__split_buffer<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v643);
    a3 = v585;
  }

  else
  {
    *v37 = v34;
    v38 = v37 + 1;
  }

  v32[5] = v38;
  v643 = v34;
  v53 = v32[15];
  if (!v53)
  {
    goto LABEL_443;
  }

  (*(*v53 + 48))(v53, &v643);
  v557 = ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pop(*(*(v6 + 376) + 1520));
  v54 = ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pop(*(*(v6 + 376) + 1760));
  v556 = v54;
  v55 = *(*(v6 + 376) + 1984);
  v56 = v55[1];
  if (v56 == *v55)
  {
    v58 = v55[11];
    if (!v58)
    {
      goto LABEL_443;
    }

    v54 = (*(*v58 + 48))(v58);
    v57 = v54;
  }

  else
  {
    v57 = *(v56 - 8);
    v55[1] = v56 - 8;
  }

  v60 = v55[5];
  v59 = v55[6];
  if (v60 >= v59)
  {
    v62 = v55[4];
    v63 = (v60 - v62) >> 3;
    if ((v63 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v64 = v59 - v62;
    v65 = v64 >> 2;
    if (v64 >> 2 <= (v63 + 1))
    {
      v65 = v63 + 1;
    }

    if (v64 >= 0x7FFFFFFFFFFFFFF8)
    {
      v66 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v66 = v65;
    }

    *(&v645 + 1) = v55 + 7;
    if (v66)
    {
      v67 = ggl::zone_mallocator::instance(v54);
      v68 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(v67, v66);
    }

    else
    {
      v68 = 0;
    }

    v70 = &v68[8 * v66];
    v69 = &v68[8 * v63];
    *v69 = v57;
    v61 = v69 + 1;
    v71 = v55[4];
    v72 = v55[5] - v71;
    v73 = v69 - v72;
    memcpy(v69 - v72, v71, v72);
    v74 = v55[4];
    v55[4] = v73;
    v55[5] = v61;
    v75 = v55[6];
    v55[6] = v70;
    *(&v644 + 1) = v74;
    *&v645 = v75;
    *&v644 = v74;
    v643 = v74;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator> &>::~__split_buffer(&v643);
    a3 = v585;
  }

  else
  {
    *v60 = v57;
    v61 = v60 + 1;
  }

  v55[5] = v61;
  v643 = v57;
  v76 = v55[15];
  if (!v76)
  {
    goto LABEL_443;
  }

  (*(*v76 + 48))(v76, &v643);
  v77 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(v567 + 8), 0x41E8D6E445F4145uLL);
  if (v77 && (v78 = v77[5], *(v78 + 8) == 0x41E8D6E445F4145))
  {
    v79 = *(v78 + 32);
  }

  else
  {
    v79 = 0;
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v559 + 17), *(v559 + 29), **a3, *(*a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v559 + 17), *(v559 + 29), *v79, *(v79 + 8));
  v80 = *(v559 + 17);
  *(v80 + 32) = v57;
  *(v80 + 40) = 0;
  v81 = *(v559 + 29);
  v82 = *(v81 + 40);
  *(v81 + 32) = 0;
  *(v81 + 40) = 0;
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v558 + 17), *(v558 + 29), **a3, *(*a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v558 + 17), *(v558 + 29), *v79, *(v79 + 8));
  v83 = *(v558 + 17);
  *(v83 + 32) = v57;
  *(v83 + 40) = 0;
  v84 = *(v558 + 29);
  v85 = *(v84 + 40);
  *(v84 + 32) = 0;
  *(v84 + 40) = 0;
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v85);
  }

  v86 = *a3;
  v87 = v560[17];
  v87[1] = 0;
  v88 = *v86;
  *v87 = *v86;
  v89 = v560[29];
  v90 = v86[1];
  if (v90)
  {
    atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
  }

  v91 = v89[1];
  *v89 = v88;
  v89[1] = v90;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v91);
  }

  v92 = v560[17];
  *(v92 + 3) = 0;
  v93 = *v79;
  *(v92 + 2) = *v79;
  v94 = v560[29];
  v95 = *(v79 + 8);
  if (v95)
  {
    atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
  }

  v96 = *(v94 + 3);
  *(v94 + 2) = v93;
  *(v94 + 3) = v95;
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v96);
  }

  v97 = *a3;
  v98 = *(v34 + 17);
  v98[1] = 0;
  v99 = *v97;
  *v98 = *v97;
  v100 = *(v34 + 29);
  v101 = v97[1];
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v102 = v100[1];
  *v100 = v99;
  v100[1] = v101;
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v102);
  }

  v103 = *(v34 + 17);
  *(v103 + 24) = 0;
  v104 = *v79;
  *(v103 + 16) = *v79;
  v105 = *(v34 + 29);
  v106 = *(v79 + 8);
  if (v106)
  {
    atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
  }

  v107 = *(v105 + 24);
  *(v105 + 16) = v104;
  *(v105 + 24) = v106;
  if (v107)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v107);
  }

  v108 = *(v34 + 17);
  *(v108 + 32) = v57;
  *(v108 + 40) = 0;
  v109 = *(v34 + 29);
  v110 = *(v109 + 40);
  *(v109 + 32) = 0;
  *(v109 + 40) = 0;
  if (v110)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v110);
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v557 + 17), *(v557 + 29), **a3, *(*a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v556 + 17), *(v556 + 29), **a3, *(*a3 + 8));
  *v580 = *(v79 + 80);
  v111 = md::VenueLayerLayoutCharacteristics::focusState((v6 + 384), v7);
  v555 = v34;
  v586 = v6;
  LOBYTE(v643) = 0;
  BYTE1(v643) = v111;
  v112 = [(VKPolygonalItemGroup *)v7 styleQueries:&v643];
  v113 = v112;
  if (((v112[2] - *v112) >> 4))
  {
    v565 = ((v112[2] - *v112) >> 4);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v635, *(*(v559 + 17) + 48));
    v114 = *(*(v34 + 17) + 48);
    ggl::BufferMemory::BufferMemory(&v619);
    ggl::ResourceAccessor::accessConstantData(&v643, 0, v114, 1);
    ggl::BufferMemory::operator=(&v619, &v643);
    ggl::BufferMemory::~BufferMemory(&v643);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v611, v57);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v603, *(*(v558 + 17) + 48));
    v115 = *(v560[17] + 4);
    ggl::BufferMemory::BufferMemory(&v595);
    ggl::ResourceAccessor::accessConstantData(&v643, 0, v115, 1);
    ggl::BufferMemory::operator=(&v595, &v643);
    ggl::BufferMemory::~BufferMemory(&v643);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v643, *(*(v557 + 17) + 16));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v587, *(*(v556 + 17) + 16));
    v116 = [(VKPolygonGroup *)v7 wallTexture];
    v554 = a1;
    if (v116)
    {
      v117 = v116;
    }

    else
    {
      v117 = *(a3 + 56);
    }

    v118 = *(a3 + 52);
    v119 = *(v117 + 80);
    [(VKPolygonGroup *)v7 maximumSectionLength];
    v120 = 0;
    v121 = 0;
    v562 = vcvt_f32_f64(*v580);
    v122 = v118 / v119;
    **(v559 + 21) = v117;
    **(v558 + 21) = v117;
    *v560[21] = v117;
    **(v34 + 21) = *(a3 + 56);
    v123 = v638;
    *(v638 + 448) = -1082130432;
    *(v123 + 456) = v124;
    *(v123 + 452) = v122;
    v125 = v606;
    *(v606 + 448) = 1065353216;
    *(v125 + 456) = v124;
    *(v125 + 452) = v122;
    v126 = v598;
    *(v598 + 456) = v124;
    *(v126 + 452) = v122;
    v127 = 1.0;
    v561 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v562, v562)));
    v128 = 23.0;
    v581 = vdupq_n_s32(0x37800080u);
    v129 = 1;
    v130 = v565;
    v563 = v113;
    while (1)
    {
      v131 = *(*v113 + 16 * v120);
      v132 = *(*v113 + 16 * v120 + 8);
      if (v132)
      {
        atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v629, v131, v132);
      if (v132)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v132);
      }

      if (v632 == 1)
      {
        if (v120 || ((v133 = *(a3 + 28), v133 >= 0x17) ? (v134 = 23) : (v134 = v133), (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v629[3], 91, v134, 2u, 0) & 1) != 0))
        {
          v577 = v121;
          v135 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v567 + 16), *(*(v567 + 16) + 8));
          v136 = fminf(fmaxf(*(a3 + 28), 0.0), v128);
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v628, v629[3], 161, 2u, v136);
          v633 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v628)), v581);
          v137 = v629[3];
          v138 = *v137;
          if (*v137 && (v139 = *v138, LODWORD(v138) = *v138 == v127, *(v137 + 10) == 1) && (v139 != 0.0 ? (v140 = v139 == v127) : (v140 = 1), !v140))
          {
LABEL_204:
            LOBYTE(v628) = 1;
            LOBYTE(v627) = 1;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 489, 0, &v628, v136);
            v253 = v252;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v137, 489, 1, &v627, v136);
            v142 = v253 + ((v254 - v253) * v139);
            v127 = 1.0;
          }

          else
          {
            v141 = *(v137 + v138 + 11);
            if (v141 == 2)
            {
              v139 = 0.0;
              goto LABEL_204;
            }

            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v629[3], 489, v141, 0, v136);
          }

          md::AccessibilityHelper::luminanceAdjustedColor(&v628, *v135, &v633, v142);
          v143 = fminf(fmaxf(*(a3 + 28), 0.0), v128);
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v627, v137, 160, 2u, v143);
          v633 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v627)), v581);
          v144 = v629[3];
          v145 = *v144;
          if (*v144 && (v146 = *v145, LODWORD(v145) = *v145 == v127, *(v144 + 10) == 1) && (v146 != 0.0 ? (v147 = v146 == v127) : (v147 = 1), !v147))
          {
LABEL_206:
            LOBYTE(v627) = 1;
            v634 = 1;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v144, 495, 0, &v627, v143);
            v256 = v255;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v144, 495, 1, &v634, v143);
            v149 = v256 + ((v257 - v256) * v146);
            v127 = 1.0;
          }

          else
          {
            v148 = *(v144 + v145 + 11);
            if (v148 == 2)
            {
              v146 = 0.0;
              goto LABEL_206;
            }

            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v629[3], 495, v148, 0, v143);
          }

          md::AccessibilityHelper::luminanceAdjustedColor(&v627, *v135, &v633, v149);
          v150 = fabsf(*(&v628 + 3) + -1.0) > 0.00000011921;
          v151.n128_u32[0] = *(a3 + 28);
          if (v151.n128_f32[0] >= 0x17)
          {
            v152 = 23;
          }

          else
          {
            v152 = v151.n128_f32[0];
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v633, v144, 141, v152, 2u, 0, v151, 3.18618444e-58);
          v574 = *v633.f32;
          v153 = *(a3 + 28);
          if (v153 >= 0x17)
          {
            v154 = 23;
          }

          else
          {
            v154 = v153;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v629[3], 139, v154, 2u, 0);
          v572 = v155;
          v156 = *(a3 + 32);
          v157 = *(a3 + 28);
          if (v157 >= 0x17)
          {
            v158 = 23;
          }

          else
          {
            v158 = v157;
          }

          if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v629[3], 325, v158, 2u, 0))
          {
            v159 = 1.0;
          }

          else
          {
            v159 = *(a3 + 36);
          }

          v160 = *(a3 + 40);
          v161 = *(a3 + 28);
          v162 = v629[3];
          v163 = fminf(fmaxf(v161, 0.0), v128);
          v164 = *v162;
          if (!*v162)
          {
            v166 = 0;
            goto LABEL_126;
          }

          v165 = *v164;
          v166 = *v164 == v127;
          if (*(v162 + 10) != 1 || v165 == 0.0 || v165 == v127)
          {
LABEL_126:
            v167 = *(v162 + v166 + 11);
            if (v167 != 2)
            {
              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v629[3], 321, v167, 0, v163);
              v169 = v168;
              if (v164)
              {
LABEL_128:
                v170 = *v164;
                v171 = *v164 == v127;
                if (*(v162 + 10) != 1 || v170 == 0.0 || v170 == v127)
                {
LABEL_131:
                  v172 = 1.0;
                  v173 = *(v162 + v171 + 11);
                  if (v173 != 2)
                  {
                    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 335, v173, 0, v163);
                    goto LABEL_133;
                  }

                  v170 = 0.0;
                }

                v172 = 1.0;
                v633.i8[0] = 1;
                v634 = 1;
                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 335, 0, &v633, v163);
                v570 = v261;
                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 335, 1, &v634, v163);
                v174 = v570 + ((v262 - v570) * v170);
LABEL_133:
                v569 = v174;
                v175 = v159 * v156;
                v176 = v169 * v160 * v175;
                v177 = 0.0;
                if (v176 >= 0.00000011921)
                {
                  if (!v164)
                  {
                    v179 = 0;
                    goto LABEL_138;
                  }

                  v178 = *v164;
                  v179 = *v164 == v172;
                  if (*(v162 + 10) != 1 || v178 == 0.0 || v178 == v172)
                  {
LABEL_138:
                    v180 = *(v162 + v179 + 11);
                    if (v180 != 2)
                    {
                      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 320, v180, 0, v163);
                      goto LABEL_140;
                    }

                    v178 = 0.0;
                  }

                  v633.i8[0] = 1;
                  v634 = 1;
                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 320, 0, &v633, v163);
                  v553 = v263;
                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 320, 1, &v634, v163);
                  v181 = v553 + ((v264 - v553) * v178);
LABEL_140:
                  v177 = v160 * v181;
                }

                if (v161 >= 0x17)
                {
                  v182 = 23;
                }

                else
                {
                  v182 = v161;
                }

                if (!v164)
                {
                  v184 = 0;
                  goto LABEL_148;
                }

                v183 = *v164;
                v184 = *v164 == v172;
                if (*(v162 + 10) != 1 || v183 == 0.0 || v183 == v172)
                {
LABEL_148:
                  v185 = *(v162 + v184 + 11);
                  if (v185 == 2)
                  {
                    goto LABEL_149;
                  }

LABEL_161:
                  v209 = *(v162 + 16 * v185 + 16);
                  if (v209)
                  {
                    v210 = *(v209 + 72);
                    if (v210)
                    {
                      v211 = *v210 + 120 * *(v210 + v182 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v211, 0x13Fu) != *(v211 + 12))
                      {
                        goto LABEL_164;
                      }
                    }

                    v214 = v162 + 16 * v185;
                    if (*(v214 + 56))
                    {
                      v215 = *(v214 + 48);
                      v216 = 8 * *(v214 + 56);
                      while (1)
                      {
                        v217 = *(*v215 + 72);
                        if (v217)
                        {
                          v218 = *v217 + 120 * *(v217 + v182 + 16);
                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v218, 0x13Fu) != *(v218 + 12))
                          {
                            goto LABEL_164;
                          }
                        }

                        v215 += 8;
                        v212 = 1;
                        v216 -= 8;
                        if (!v216)
                        {
                          goto LABEL_174;
                        }
                      }
                    }
                  }

                  v212 = 1;
LABEL_174:
                  a3 = v585;
                }

                else
                {
LABEL_149:
                  v186 = *(v162 + 16);
                  if (!v186)
                  {
                    goto LABEL_160;
                  }

                  v187 = *(v186 + 72);
                  if (v187)
                  {
                    v188 = *v187 + 120 * *(v187 + v182 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v188, 0x13Fu) != *(v188 + 12))
                    {
                      goto LABEL_164;
                    }
                  }

                  if (!*(v162 + 56))
                  {
LABEL_160:
                    v185 = 1;
                    goto LABEL_161;
                  }

                  v189 = *(v162 + 48);
                  v190 = 8 * *(v162 + 56);
                  while (1)
                  {
                    v191 = *(*v189 + 72);
                    if (v191)
                    {
                      v192 = *v191 + 120 * *(v191 + v182 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v192, 0x13Fu) != *(v192 + 12))
                      {
                        break;
                      }
                    }

                    v189 += 8;
                    v185 = 1;
                    v190 -= 8;
                    if (!v190)
                    {
                      goto LABEL_161;
                    }
                  }

LABEL_164:
                  v212 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v162, 319, v182, 2, 0);
                  a3 = v585;
                  v162 = v629[3];
                  v213 = *(v585 + 28);
                  if (v213 >= 0x17)
                  {
                    v182 = 23;
                  }

                  else
                  {
                    v182 = v213;
                  }
                }

                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v162, 330, v182, 2u, 0);
                v220 = v219;
                v221 = *(a3 + 28);
                if (v221 >= 0x17)
                {
                  v222 = 23;
                }

                else
                {
                  v222 = v221;
                }

                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v629[3], 331, v222, 2u, 0);
                if (v212 == 2)
                {
                  v224 = -0.5;
                  v225 = 0.5;
                  v113 = v563;
                  v226 = v577;
                }

                else
                {
                  v224 = 0.0;
                  v225 = 1.0;
                  v113 = v563;
                  v226 = v577;
                  if (!v212)
                  {
                    v224 = -1.0;
                    v225 = 0.0;
                  }
                }

                v121 = v226 | v150;
                v227 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v574)), v581);
                v228 = v160;
                v229 = vmul_n_f32(v562, ((v572 * v228) * v561) * v175);
                v231 = v220 * 40075017.0 / ((1 << *(a3 + 24)) * v223);
                v232 = v638;
                v233 = v628;
                *(v638 + 16 * v120) = v628;
                v234 = v231;
                v235 = v225 * v177;
                if (v177 >= 0.00000011921)
                {
                  v236 = v176;
                }

                else
                {
                  v236 = 0.0;
                }

                if (v177 >= 0.00000011921)
                {
                  v237 = v569 * v160 * v175;
                }

                else
                {
                  v237 = 0.0;
                }

                v238 = (v232 + 4 * v120);
                v238[64] = v235;
                v238[96] = v236;
                v238[80] = v237;
                v239 = v622;
                *(v622 + 16 * v120) = v233;
                v240 = v224 * v177;
                v241 = (v239 + 4 * v120);
                v241[64] = v240;
                v241[80] = v235;
                v241[112] = v236;
                v241[96] = v237;
                v242 = (v614 + 8 * v120);
                *v242 = v234;
                v242[1] = 1.0 - v220;
                v243 = v606;
                *(v606 + 16 * v120) = v233;
                v244 = *(a3 + 40) * 0.200000003;
                if (v177 >= 0.00000011921)
                {
                  v244 = v240;
                }

                v245 = (v243 + 4 * v120);
                v245[64] = v244;
                v245[96] = v176;
                v230 = v569 * v160 * v175;
                v245[80] = v230;
                v246 = v598;
                *(v598 + 16 * v120) = v627;
                v247 = (v246 + 4 * v120);
                v247[64] = v240;
                v247[80] = v235;
                v247[96] = v236;
                v127 = 1.0;
                v248 = v646;
                v249 = v646 + 16 * v120;
                *v249 = 0;
                *(v249 + 8) = 0;
                *(v249 + 12) = 1.0 - v227.f32[3];
                *(v248 + 8 * v120 + 256) = v229;
                v250 = v590;
                v251 = v590 + 16 * v120;
                *v251 = v227.i64[0];
                *(v251 + 8) = v227.i32[2];
                *(v251 + 12) = 1065353216;
                *(v250 + 8 * v120 + 256) = v229;
                v208 = 1;
                v130 = v565;
                v128 = 23.0;
                goto LABEL_191;
              }

LABEL_209:
              v171 = 0;
              goto LABEL_131;
            }

            v165 = 0.0;
          }

          v633.i8[0] = 1;
          v634 = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 321, 0, &v633, v163);
          v259 = v258;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v162, 321, 1, &v634, v163);
          v169 = v259 + ((v260 - v259) * v165);
          v127 = 1.0;
          if (v164)
          {
            goto LABEL_128;
          }

          goto LABEL_209;
        }

        v208 = 0;
      }

      else
      {
        v193 = v638;
        v194 = (v638 + 16 * v120);
        *v194 = 0;
        v194[1] = 0;
        v195 = (v193 + 4 * v120);
        v195[64] = 0;
        v195[96] = 0;
        v195[80] = 0;
        v196 = v622;
        v197 = (v622 + 16 * v120);
        *v197 = 0;
        v197[1] = 0;
        v198 = (v196 + 4 * v120);
        v198[64] = 0;
        v198[80] = 0;
        v198[112] = 0;
        v198[96] = 0;
        *(v614 + 8 * v120) = 0x3F8000007FC00000;
        v199 = v606;
        v200 = (v606 + 16 * v120);
        *v200 = 0;
        v200[1] = 0;
        v201 = (v199 + 4 * v120);
        v201[64] = 0;
        v201[96] = 0;
        v201[80] = 0;
        v202 = v598;
        v203 = (v598 + 16 * v120);
        *v203 = 0;
        v203[1] = 0;
        v204 = (v202 + 4 * v120);
        v204[64] = 0;
        v204[80] = 0;
        v204[96] = 0;
        v205 = (v646 + 16 * v120);
        v206 = v646 + 8 * v120;
        *v205 = 0;
        v205[1] = 0;
        *(v206 + 256) = 0;
        v207 = v590;
        *(v590 + 16 * v120) = xmmword_1B33B0710;
        *(v207 + 8 * v120 + 256) = 0;
        v208 = 1;
      }

LABEL_191:
      if (v632 == 1)
      {
        (*(*v629 + 56))(v629);
      }

      if (v631)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v631);
      }

      if (v630)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v630);
      }

      if (v208)
      {
        v129 = ++v120 < v130;
        if (v120 != v130)
        {
          continue;
        }
      }

      ggl::BufferMemory::~BufferMemory(&v587);
      ggl::BufferMemory::~BufferMemory(&v643);
      ggl::BufferMemory::~BufferMemory(&v595);
      ggl::BufferMemory::~BufferMemory(&v603);
      ggl::BufferMemory::~BufferMemory(&v611);
      ggl::BufferMemory::~BufferMemory(&v619);
      ggl::BufferMemory::~BufferMemory(&v635);
      a1 = v554;
      if (!v129)
      {
        *&v265 = ggl::RenderItem::RenderItem(&v635, "").u64[0];
        v266 = v586;
        v267 = *(v586 + 393);
        if (v267 == 1 && (*(v586 + 439) & 1) != 0)
        {
          v268 = 760;
        }

        else
        {
          v268 = 544;
        }

        v269 = *(v586 + 376) + v268;
        LODWORD(v638) = 100;
        *&v637 = v269;
        *(&v637 + 1) = v559;
        v270 = [(VKPolygonGroup *)v7 layer];
        v271 = 2;
        if ((v121 & 1) == 0)
        {
          v271 = -1;
        }

        v272 = 20 * v270;
        if (!v267)
        {
          v272 = 0;
        }

        *(&v638 + 1) = v271 + 0x800000007 + v272;
        v624 = v640;
        v625 = v641;
        v626 = v642;
        v620 = v636;
        *&v621 = v637;
        v622 = v638;
        v623 = v639;
        v619 = &off_1F2A5D8B8;
        *(&v621 + 1) = v558;
        v613 = v637;
        v615 = v639;
        v616 = v640;
        v617 = v641;
        v618 = v642;
        v612 = v636;
        v614 = v638;
        v273 = *(v586 + 376);
        v611 = &off_1F2A5D8B8;
        *&v613 = v273 + 1000;
        *(&v613 + 1) = v560;
        *&v274 = ggl::RenderItem::RenderItem(&v603, "").u64[0];
        *&v605 = v273 + 1528;
        LODWORD(v273) = *(v586 + 393);
        v275 = 20 * [(VKPolygonGroup *)v7 layer]+ 0x800000007;
        if (!v273)
        {
          v275 = 0x800000007;
        }

        *(&v606 + 1) = v275;
        *(&v605 + 1) = v557;
        *&v276 = ggl::RenderItem::RenderItem(&v595, "").u64[0];
        *&v597 = *(v586 + 376) + 1768;
        v277 = *(v586 + 393);
        v278 = 20 * [(VKPolygonGroup *)v7 layer]+ 0x800000008;
        if (!v277)
        {
          v278 = 0x800000008;
        }

        *(&v598 + 1) = v278;
        *(&v597 + 1) = v556;
        v279 = [(VKPolygonGroup *)v7 venueWallMeshes];
        v280 = *v279;
        v578 = *(v279 + 8);
        if (*v279 != v578)
        {
          v281 = 0;
          do
          {
            v282 = [(VKPolygonalItemGroup *)v7 commitRangesToVenueWallRenderItemBatcher:*(v266 + 376) + 3712 forMeshAtIndex:v281 cullingMask:*(v585 + 48)];
            v283 = *(v266 + 376);
            v284 = *v280;
            v643 = &off_1F2A5D8B8;
            v644 = v636;
            v645 = v637;
            v646 = v638;
            v650 = v642;
            v649 = v641;
            v648 = v640;
            v647 = v639;
            v285 = *(v283 + 3800);
            v286 = v285[1];
            if (v286 == *(v283 + 3808))
            {
              v285 = *v285;
              if (!v285)
              {
                v285 = malloc_type_malloc(120 * v286 + 16, 0x1020040EDED9539uLL);
                *v285 = 0;
                v285[1] = 0;
                **(v283 + 3800) = v285;
              }

              *(v283 + 3800) = v285;
              v286 = v285[1];
            }

            v287 = &v285[15 * v286];
            v285[1] = v286 + 1;
            v287[2] = &off_1F2A5D8B8;
            v288 = v644;
            v289 = v645;
            *(v287 + 7) = v646;
            *(v287 + 5) = v289;
            *(v287 + 3) = v288;
            v290 = v647;
            v291 = v648;
            v292 = v649;
            *(v287 + 15) = v650;
            *(v287 + 13) = v292;
            *(v287 + 11) = v291;
            *(v287 + 9) = v290;
            ggl::RenderItem::~RenderItem(&v643);
            v287[10] = v284;
            v293 = *v282;
            v287[13] = *v282;
            v287[14] = (v282[1] - v293) >> 4;
            ggl::CommandBuffer::pushRenderItem(v583, (v287 + 2));
            v294 = *(v586 + 376);
            v295 = *v280;
            v643 = &off_1F2A5D8B8;
            v644 = v620;
            v645 = v621;
            v646 = v622;
            v650 = v626;
            v649 = v625;
            v648 = v624;
            v647 = v623;
            v296 = *(v294 + 3800);
            v297 = v296[1];
            if (v297 == *(v294 + 3808))
            {
              v296 = *v296;
              if (!v296)
              {
                v296 = malloc_type_malloc(120 * v297 + 16, 0x1020040EDED9539uLL);
                *v296 = 0;
                v296[1] = 0;
                **(v294 + 3800) = v296;
              }

              *(v294 + 3800) = v296;
              v297 = v296[1];
            }

            v298 = &v296[15 * v297];
            v296[1] = v297 + 1;
            v298[2] = &off_1F2A5D8B8;
            v299 = v644;
            v300 = v645;
            *(v298 + 7) = v646;
            *(v298 + 5) = v300;
            *(v298 + 3) = v299;
            v301 = v647;
            v302 = v648;
            v303 = v649;
            *(v298 + 15) = v650;
            *(v298 + 13) = v303;
            *(v298 + 11) = v302;
            *(v298 + 9) = v301;
            ggl::RenderItem::~RenderItem(&v643);
            v298[10] = v295;
            v304 = *v282;
            v298[13] = *v282;
            v298[14] = (v282[1] - v304) >> 4;
            ggl::CommandBuffer::pushRenderItem(v583, (v298 + 2));
            v305 = *(v586 + 376);
            v306 = *v280;
            v643 = &off_1F2A5D8B8;
            v644 = v612;
            v645 = v613;
            v646 = v614;
            v650 = v618;
            v649 = v617;
            v648 = v616;
            v647 = v615;
            v307 = *(v305 + 3800);
            v308 = v307[1];
            if (v308 == *(v305 + 3808))
            {
              v307 = *v307;
              if (!v307)
              {
                v307 = malloc_type_malloc(120 * v308 + 16, 0x1020040EDED9539uLL);
                *v307 = 0;
                v307[1] = 0;
                **(v305 + 3800) = v307;
              }

              *(v305 + 3800) = v307;
              v308 = v307[1];
            }

            v309 = &v307[15 * v308];
            v307[1] = v308 + 1;
            v309[2] = &off_1F2A5D8B8;
            v310 = v644;
            v311 = v645;
            *(v309 + 7) = v646;
            *(v309 + 5) = v311;
            *(v309 + 3) = v310;
            v312 = v647;
            v313 = v648;
            v314 = v649;
            *(v309 + 15) = v650;
            *(v309 + 13) = v314;
            *(v309 + 11) = v313;
            *(v309 + 9) = v312;
            ggl::RenderItem::~RenderItem(&v643);
            v309[10] = v306;
            v315 = *v282;
            v309[13] = *v282;
            v309[14] = (v282[1] - v315) >> 4;
            ggl::CommandBuffer::pushRenderItem(v583, (v309 + 2));
            v316 = *(v586 + 376);
            v317 = *v280;
            v643 = &off_1F2A5D8B8;
            v644 = v604;
            v645 = v605;
            v646 = v606;
            v650 = v610;
            v649 = v609;
            v648 = v608;
            v647 = v607;
            v318 = *(v316 + 3800);
            v319 = v318[1];
            if (v319 == *(v316 + 3808))
            {
              v318 = *v318;
              if (!v318)
              {
                v318 = malloc_type_malloc(120 * v319 + 16, 0x1020040EDED9539uLL);
                *v318 = 0;
                v318[1] = 0;
                **(v316 + 3800) = v318;
              }

              *(v316 + 3800) = v318;
              v319 = v318[1];
            }

            v320 = &v318[15 * v319];
            v318[1] = v319 + 1;
            v320[2] = &off_1F2A5D8B8;
            v321 = v644;
            v322 = v645;
            *(v320 + 7) = v646;
            *(v320 + 5) = v322;
            *(v320 + 3) = v321;
            v323 = v647;
            v324 = v648;
            v325 = v649;
            *(v320 + 15) = v650;
            *(v320 + 13) = v325;
            *(v320 + 11) = v324;
            *(v320 + 9) = v323;
            ggl::RenderItem::~RenderItem(&v643);
            v320[10] = v317;
            v326 = *v282;
            v320[13] = *v282;
            v320[14] = (v282[1] - v326) >> 4;
            ggl::CommandBuffer::pushRenderItem(v583, (v320 + 2));
            v327 = *(v586 + 376);
            v328 = *v280;
            v643 = &off_1F2A5D8B8;
            v644 = v596;
            v645 = v597;
            v646 = v598;
            v650 = v602;
            v649 = v601;
            v648 = v600;
            v647 = v599;
            v329 = *(v327 + 3800);
            v330 = v329[1];
            if (v330 == *(v327 + 3808))
            {
              v329 = *v329;
              if (!v329)
              {
                v329 = malloc_type_malloc(120 * v330 + 16, 0x1020040EDED9539uLL);
                *v329 = 0;
                v329[1] = 0;
                **(v327 + 3800) = v329;
              }

              *(v327 + 3800) = v329;
              v330 = v329[1];
            }

            v331 = &v329[15 * v330];
            v329[1] = v330 + 1;
            v331[2] = &off_1F2A5D8B8;
            v332 = v644;
            v333 = v645;
            *(v331 + 7) = v646;
            *(v331 + 5) = v333;
            *(v331 + 3) = v332;
            v334 = v647;
            v335 = v648;
            v336 = v649;
            *(v331 + 15) = v650;
            *(v331 + 13) = v336;
            *(v331 + 11) = v335;
            *(v331 + 9) = v334;
            ggl::RenderItem::~RenderItem(&v643);
            v331[10] = v328;
            v337 = *v282;
            v331[13] = *v282;
            v331[14] = (v282[1] - v337) >> 4;
            ggl::CommandBuffer::pushRenderItem(v583, (v331 + 2));
            v266 = v586;
            ++v281;
            v280 += 2;
            v7 = v576;
          }

          while (v280 != v578);
        }

        v587 = &off_1F2A5D8B8;
        v591 = v639;
        v592 = v640;
        v593 = v641;
        v594 = v642;
        v588 = v636;
        *&v589 = v637;
        v590 = v638;
        *(&v589 + 1) = v555;
        v338 = [(VKPolygonGroup *)v7 venueWallEndMeshes];
        v339 = *v338;
        v340 = *(v338 + 8);
        if (*v338 != v340)
        {
          v341 = 0;
          do
          {
            v342 = [(VKPolygonalItemGroup *)v7 commitRangesToVenueWallEndCapRenderItemBatcher:*(v586 + 376) + 3712 forMeshAtIndex:v341 cullingMask:*(v585 + 48)];
            v343 = *(v586 + 376);
            v344 = *v339;
            v643 = &off_1F2A5D8B8;
            v644 = v588;
            v645 = v589;
            v646 = v590;
            v650 = v594;
            v649 = v593;
            v648 = v592;
            v647 = v591;
            v345 = *(v343 + 3800);
            v346 = v345[1];
            if (v346 == *(v343 + 3808))
            {
              v345 = *v345;
              if (!v345)
              {
                v345 = malloc_type_malloc(120 * v346 + 16, 0x1020040EDED9539uLL);
                *v345 = 0;
                v345[1] = 0;
                **(v343 + 3800) = v345;
              }

              *(v343 + 3800) = v345;
              v346 = v345[1];
            }

            v347 = &v345[15 * v346];
            v345[1] = v346 + 1;
            v347[2] = &off_1F2A5D8B8;
            v348 = v644;
            v349 = v645;
            *(v347 + 7) = v646;
            *(v347 + 5) = v349;
            *(v347 + 3) = v348;
            v350 = v647;
            v351 = v648;
            v352 = v649;
            *(v347 + 15) = v650;
            *(v347 + 13) = v352;
            *(v347 + 11) = v351;
            *(v347 + 9) = v350;
            ggl::RenderItem::~RenderItem(&v643);
            v347[10] = v344;
            v353 = *v342;
            v347[13] = *v342;
            v347[14] = (v342[1] - v353) >> 4;
            ggl::CommandBuffer::pushRenderItem(v583, (v347 + 2));
            ++v341;
            v339 += 2;
            v7 = v576;
          }

          while (v339 != v340);
        }

        a3 = v585;
        a1 = v554;
      }

      break;
    }
  }

  v354 = *(a1 + 16);
  v582 = **(a1 + 24);
  v584 = v7;
  v573 = *(*(v586 + 40) + 104);
  v355 = [v573 sizeInPixels];
  v357 = v356;
  v359 = v358;
  v360 = *(*(v586 + 376) + 1256);
  v361 = v360[1];
  if (v361 == *v360)
  {
    v362 = v360[11];
    if (!v362)
    {
      goto LABEL_443;
    }

    v355 = (*(*v362 + 48))(v362);
    v575 = v355;
  }

  else
  {
    v575 = *(v361 - 8);
    v360[1] = v361 - 8;
  }

  v364 = v360[5];
  v363 = v360[6];
  if (v364 >= v363)
  {
    v367 = v360[4];
    v368 = (v364 - v367) >> 3;
    if ((v368 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v369 = v363 - v367;
    v370 = v369 >> 2;
    if (v369 >> 2 <= (v368 + 1))
    {
      v370 = v368 + 1;
    }

    if (v369 >= 0x7FFFFFFFFFFFFFF8)
    {
      v371 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v371 = v370;
    }

    *(&v645 + 1) = v360 + 7;
    if (v371)
    {
      v372 = ggl::zone_mallocator::instance(v355);
      v373 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(v372, v371);
    }

    else
    {
      v373 = 0;
    }

    v375 = &v373[8 * v371];
    v374 = &v373[8 * v368];
    v365 = v575;
    *v374 = v575;
    v366 = v374 + 1;
    v376 = v360[4];
    v377 = v360[5] - v376;
    v378 = v374 - v377;
    memcpy(v374 - v377, v376, v377);
    v379 = v360[4];
    v360[4] = v378;
    v360[5] = v366;
    v380 = v360[6];
    v360[6] = v375;
    *(&v644 + 1) = v379;
    *&v645 = v380;
    *&v644 = v379;
    v643 = v379;
    std::__split_buffer<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v643);
    a3 = v585;
  }

  else
  {
    v365 = v575;
    *v364 = v575;
    v366 = v364 + 1;
  }

  v360[5] = v366;
  v643 = v365;
  v381 = v360[15];
  if (!v381)
  {
    goto LABEL_443;
  }

  v382 = (*(*v381 + 48))(v381, &v643);
  v383 = *(*(v586 + 376) + 1280);
  v384 = v383[1];
  if (v384 != *v383)
  {
    v385 = *(v384 - 8);
    v383[1] = v384 - 8;
    v386 = v575;
    goto LABEL_279;
  }

  v387 = v383[11];
  v386 = v575;
  if (!v387)
  {
LABEL_443:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_444:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v382 = (*(*v387 + 48))(v387);
  v385 = v382;
LABEL_279:
  v389 = v383[5];
  v388 = v383[6];
  if (v389 >= v388)
  {
    v391 = v383[4];
    v392 = (v389 - v391) >> 3;
    if ((v392 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v393 = v388 - v391;
    v394 = v393 >> 2;
    if (v393 >> 2 <= (v392 + 1))
    {
      v394 = v392 + 1;
    }

    if (v393 >= 0x7FFFFFFFFFFFFFF8)
    {
      v395 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v395 = v394;
    }

    *(&v645 + 1) = v383 + 7;
    if (v395)
    {
      v396 = ggl::zone_mallocator::instance(v382);
      v397 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(v396, v395);
    }

    else
    {
      v397 = 0;
    }

    v399 = &v397[8 * v395];
    v398 = &v397[8 * v392];
    *v398 = v385;
    v390 = v398 + 1;
    v400 = v383[4];
    v401 = v383[5] - v400;
    v402 = v398 - v401;
    memcpy(v398 - v401, v400, v401);
    v403 = v383[4];
    v383[4] = v402;
    v383[5] = v390;
    v404 = v383[6];
    v383[6] = v399;
    *(&v644 + 1) = v403;
    *&v645 = v404;
    *&v644 = v403;
    v643 = v403;
    std::__split_buffer<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v643);
    a3 = v585;
  }

  else
  {
    *v389 = v385;
    v390 = v389 + 1;
  }

  v383[5] = v390;
  v643 = v385;
  v405 = v383[15];
  if (!v405)
  {
    goto LABEL_443;
  }

  (*(*v405 + 48))(v405, &v643);
  v406 = md::LayoutContext::get<md::SharedResourcesContext>(*(v354 + 8));
  v407 = *a3;
  v408 = *(v386 + 17);
  v408[1] = 0;
  v409 = *v407;
  *v408 = *v407;
  v410 = *(v386 + 29);
  v411 = v407[1];
  if (v411)
  {
    atomic_fetch_add_explicit((v411 + 8), 1uLL, memory_order_relaxed);
  }

  v412 = v410[1];
  *v410 = v409;
  v410[1] = v411;
  if (v412)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v412);
  }

  v413 = *v406;
  **(v386 + 21) = *([v413 alphaAtlas] + 24);

  v414 = *a3;
  v415 = *(v385 + 17);
  v415[1] = 0;
  v416 = *v414;
  *v415 = *v414;
  v417 = *(v385 + 29);
  v418 = v414[1];
  if (v418)
  {
    atomic_fetch_add_explicit((v418 + 8), 1uLL, memory_order_relaxed);
  }

  v419 = v417[1];
  *v417 = v416;
  v417[1] = v418;
  if (v419)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v419);
  }

  v420 = *v406;
  **(v385 + 21) = *([v420 alphaAtlas] + 24);

  v421 = md::VenueLayerLayoutCharacteristics::focusState((v586 + 384), v584);
  LOBYTE(v643) = 0;
  BYTE1(v643) = v421;
  v422 = [(VKPolygonalItemGroup *)v584 styleQueries:&v643];
  v423 = v422[2] - *v422;
  v424 = (v423 >> 4);
  if ((v423 >> 4))
  {
    v568 = v359;
    v571 = v357;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v643, *(*(v386 + 17) + 16));
    v566 = v385;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v635, *(*(v385 + 17) + 16));
    v425 = 0;
    while (1)
    {
      v426 = *(*v422 + 16 * v425);
      v427 = *(*v422 + 16 * v425 + 8);
      if (v427)
      {
        atomic_fetch_add_explicit(&v427->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v619, v426, v427);
      if (v427)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v427);
      }

      if (BYTE8(v621) == 1)
      {
        break;
      }

      v456 = v646;
      v457 = (v646 + 16 * v425);
      *v457 = 0;
      v457[1] = 0;
      v458 = (v456 + 4 * v425);
      v458[32] = 0;
      v458[40] = 0;
      v458[48] = 0;
      v458[56] = 0;
      v459 = v638;
      v460 = (v638 + 16 * v425);
      *v460 = 0;
      v460[1] = 0;
      v461 = (v459 + 4 * v425);
      v461[32] = 0;
      v461[40] = 0;
      v461[48] = 0;
      v461[56] = 0;
LABEL_390:
      if (v621)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v621);
      }

      if (v620)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v620);
      }

      if (++v425 == v424)
      {
        v512 = v571;
        v513 = v568;
        v514 = v646;
        *(v646 + 256) = v512;
        *(v514 + 260) = v513;
        v515 = v638;
        *(v638 + 256) = v512;
        *(v515 + 260) = v513;
        ggl::BufferMemory::~BufferMemory(&v635);
        ggl::BufferMemory::~BufferMemory(&v643);
        *&v516 = ggl::RenderItem::RenderItem(&v635, "").u64[0];
        v517 = v586;
        *&v637 = *(v586 + 376) + 1288;
        *(&v637 + 1) = v575;
        v518 = *(v586 + 393);
        v519 = [(VKPolygonGroup *)v584 layer];
        v520 = 20 * v519 + 0x80000000ALL;
        if (!v518)
        {
          v520 = 0x80000000ALL;
        }

        *(&v638 + 1) = v520;
        v521 = [(VKPolygonGroup *)v584 venueWallHorizontalStrokeMeshes];
        v522 = *v521;
        v523 = *(v521 + 8);
        if (*v521 != v523)
        {
          v524 = 0;
          do
          {
            v525 = [(VKPolygonalItemGroup *)v584 commitRangesToHorizontalVenueWallStrokeRenderItemBatcher:*(v517 + 376) + 3712 forMeshAtIndex:v524 cullingMask:*(a3 + 48)];
            v526 = *(v586 + 376);
            v527 = *v522;
            v643 = &off_1F2A5D8B8;
            v644 = v636;
            v645 = v637;
            v646 = v638;
            v650 = v642;
            v649 = v641;
            v648 = v640;
            v647 = v639;
            v528 = *(v526 + 3800);
            v529 = v528[1];
            if (v529 == *(v526 + 3808))
            {
              v528 = *v528;
              if (!v528)
              {
                v528 = malloc_type_malloc(120 * v529 + 16, 0x1020040EDED9539uLL);
                *v528 = 0;
                v528[1] = 0;
                **(v526 + 3800) = v528;
              }

              *(v526 + 3800) = v528;
              v529 = v528[1];
            }

            v530 = &v528[15 * v529];
            v528[1] = v529 + 1;
            v530[2] = &off_1F2A5D8B8;
            v531 = v644;
            v532 = v645;
            *(v530 + 7) = v646;
            *(v530 + 5) = v532;
            *(v530 + 3) = v531;
            v533 = v647;
            v534 = v648;
            v535 = v649;
            *(v530 + 15) = v650;
            *(v530 + 13) = v535;
            *(v530 + 11) = v534;
            *(v530 + 9) = v533;
            ggl::RenderItem::~RenderItem(&v643);
            v530[10] = v527;
            v536 = *v525;
            v530[13] = *v525;
            v530[14] = (v525[1] - v536) >> 4;
            ggl::CommandBuffer::pushRenderItem(v582, (v530 + 2));
            ++v524;
            v522 += 2;
            a3 = v585;
            v517 = v586;
          }

          while (v522 != v523);
        }

        *(&v637 + 1) = v566;
        v537 = [(VKPolygonGroup *)v584 venueWallVerticalStrokeMeshes];
        v538 = *v537;
        v539 = *(v537 + 8);
        if (*v537 != v539)
        {
          v540 = 0;
          do
          {
            v541 = [(VKPolygonalItemGroup *)v584 commitRangesToVerticalVenueWallStrokeRenderItemBatcher:*(v517 + 376) + 3712 forMeshAtIndex:v540 cullingMask:*(a3 + 48)];
            v542 = *(v517 + 376);
            v543 = *v538;
            v643 = &off_1F2A5D8B8;
            v644 = v636;
            v645 = v637;
            v646 = v638;
            v650 = v642;
            v649 = v641;
            v648 = v640;
            v647 = v639;
            v544 = *(v542 + 3800);
            v545 = v544[1];
            if (v545 == *(v542 + 3808))
            {
              v544 = *v544;
              if (!v544)
              {
                v544 = malloc_type_malloc(120 * v545 + 16, 0x1020040EDED9539uLL);
                *v544 = 0;
                v544[1] = 0;
                **(v542 + 3800) = v544;
              }

              *(v542 + 3800) = v544;
              v545 = v544[1];
            }

            v546 = &v544[15 * v545];
            v544[1] = v545 + 1;
            v546[2] = &off_1F2A5D8B8;
            v547 = v644;
            v548 = v645;
            *(v546 + 7) = v646;
            *(v546 + 5) = v548;
            *(v546 + 3) = v547;
            v549 = v647;
            v550 = v648;
            v551 = v649;
            *(v546 + 15) = v650;
            *(v546 + 13) = v551;
            *(v546 + 11) = v550;
            *(v546 + 9) = v549;
            ggl::RenderItem::~RenderItem(&v643);
            v546[10] = v543;
            v552 = *v541;
            v546[13] = *v541;
            v546[14] = (v541[1] - v552) >> 4;
            ggl::CommandBuffer::pushRenderItem(v582, (v546 + 2));
            v517 = v586;
            ++v540;
            v538 += 2;
            a3 = v585;
          }

          while (v538 != v539);
        }

        goto LABEL_439;
      }
    }

    if (!v425)
    {
      v428 = *(a3 + 28);
      v429 = v428 >= 0x17 ? 23 : v428;
      if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v619[3], 91, v429, 2u, 0) & 1) == 0)
      {
        if (BYTE8(v621) == 1)
        {
          (*(*v619 + 56))(v619);
        }

        if (v621)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v621);
        }

        if (v620)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v620);
        }

        ggl::BufferMemory::~BufferMemory(&v635);
        ggl::BufferMemory::~BufferMemory(&v643);
        goto LABEL_439;
      }
    }

    v430 = *(a3 + 32);
    v431 = *(a3 + 28);
    if (v431 >= 0x17)
    {
      v432 = 23;
    }

    else
    {
      v432 = v431;
    }

    if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v619[3], 325, v432, 2u, 0))
    {
      v433 = 1.0;
    }

    else
    {
      v433 = *(a3 + 36);
    }

    v434 = *(a3 + 28);
    v435 = v619[3];
    v436 = fminf(fmaxf(v434, 0.0), 23.0);
    v437 = *v435;
    if (*v435)
    {
      v438 = *v437;
      v439 = *v437 == 1.0;
      if (*(v435 + 10) == 1 && v438 != 0.0 && v438 != 1.0)
      {
        goto LABEL_408;
      }
    }

    else
    {
      v439 = 0;
    }

    v441 = *(v435 + v439 + 11);
    if (v441 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v619[3], 321, v441, 0, v436);
      v443 = v442;
      goto LABEL_327;
    }

    v438 = 0.0;
LABEL_408:
    LOBYTE(v611) = 1;
    v603 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 321, 0, &v611, v436);
    v502 = v501;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 321, 1, &v603, v436);
    v443 = v502 + ((v503 - v502) * v438);
LABEL_327:
    v444 = *(a3 + 40);
    if (v437)
    {
      v445 = *v437;
      v446 = *v437 == 1.0;
      if (*(v435 + 10) == 1 && v445 != 0.0 && v445 != 1.0)
      {
        goto LABEL_410;
      }
    }

    else
    {
      v446 = 0;
    }

    v448 = *(v435 + v446 + 11);
    if (v448 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 335, v448, 0, v436);
      v450 = v449;
      goto LABEL_336;
    }

    v445 = 0.0;
LABEL_410:
    LOBYTE(v611) = 1;
    v603 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 335, 0, &v611, v436);
    v505 = v504;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 335, 1, &v603, v436);
    v450 = v505 + ((v506 - v505) * v445);
LABEL_336:
    v451 = v433 * v430;
    v452 = v451;
    v453 = v443 * v444 * v451;
    v579 = 0u;
    v454 = 0.0;
    if (v453 < 0.00000011921)
    {
      v455 = 0.0;
      goto LABEL_359;
    }

    if (v437)
    {
      v462 = *v437;
      v463 = *v437 == 1.0;
      if (*(v435 + 10) == 1 && v462 != 0.0 && v462 != 1.0)
      {
        goto LABEL_412;
      }
    }

    else
    {
      v463 = 0;
    }

    v465 = *(v435 + v463 + 11);
    if (v465 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 2, v465, 0, v436);
      v455 = v466;
      goto LABEL_348;
    }

    v462 = 0.0;
LABEL_412:
    LOBYTE(v611) = 1;
    v603 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 2, 0, &v611, v436);
    v508 = v507;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 2, 1, &v603, v436);
    v455 = v508 + ((v509 - v508) * v462);
LABEL_348:
    if (v437)
    {
      v467 = *v437;
      v468 = *v437 == 1.0;
      if (*(v435 + 10) == 1 && v467 != 0.0 && v467 != 1.0)
      {
        goto LABEL_414;
      }
    }

    else
    {
      v468 = 0;
    }

    v470 = *(v435 + v468 + 11);
    if (v470 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 320, v470, 0, v436);
      goto LABEL_357;
    }

    v467 = 0.0;
LABEL_414:
    LOBYTE(v611) = 1;
    v603 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 320, 0, &v611, v436);
    v564 = v510;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v435, 320, 1, &v603, v436);
    v471 = v564 + ((v511 - v564) * v467);
LABEL_357:
    v454 = v444 * v471;
    if (v455 > 0.0)
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v611, v435, 3, 2u, v436);
      v579 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v611)), vdupq_n_s32(0x37800080u));
      v434 = *(a3 + 28);
      v435 = v619[3];
      v437 = *v435;
    }

LABEL_359:
    if (v434 >= 0x17)
    {
      v472 = 23;
    }

    else
    {
      v472 = v434;
    }

    if (v437)
    {
      v473 = *v437;
      v474 = *v437 == 1.0;
      if (*(v435 + 10) == 1 && v473 != 0.0 && v473 != 1.0)
      {
LABEL_370:
        v477 = *(v435 + 16);
        if (v477)
        {
          v478 = 1.0;
          v479 = *(v477 + 72);
          if (v479)
          {
            v480 = *v479 + 120 * *(v479 + v472 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v480, 0x13Fu) != *(v480 + 12))
            {
              goto LABEL_383;
            }
          }

          if (*(v435 + 56))
          {
            v481 = *(v435 + 48);
            v482 = 8 * *(v435 + 56);
            while (1)
            {
              v478 = 1.0;
              v483 = *(*v481 + 72);
              if (v483)
              {
                v484 = *v483 + 120 * *(v483 + v472 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v484, 0x13Fu) != *(v484 + 12))
                {
                  goto LABEL_383;
                }
              }

              v481 += 8;
              v476 = 1;
              v482 -= 8;
              if (!v482)
              {
                goto LABEL_380;
              }
            }
          }
        }

        v476 = 1;
LABEL_380:
        v478 = 1.0;
        v485 = *(v435 + 16 * v476 + 16);
        v486 = 1.0;
        if (v485)
        {
          v487 = *(v485 + 72);
          if (v487)
          {
            v488 = *v487 + 120 * *(v487 + v472 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v488, 0x13Fu) != *(v488 + 12))
            {
LABEL_383:
              v489 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v435, 319, v472, 2, 0);
              v490 = 0.0;
              if (v489)
              {
                v490 = v478;
              }

              if (v489 == 2)
              {
                v486 = 0.5;
              }

              else
              {
                v486 = v490;
              }

              goto LABEL_388;
            }
          }

          v496 = v435 + 16 * v476;
          if (*(v496 + 56))
          {
            v497 = *(v496 + 48);
            v498 = 8 * *(v496 + 56);
            do
            {
              v499 = *(*v497 + 72);
              if (v499)
              {
                v500 = *v499 + 120 * *(v499 + v472 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v500, 0x13Fu) != *(v500 + 12))
                {
                  goto LABEL_383;
                }
              }

              v497 += 8;
              v498 -= 8;
            }

            while (v498);
          }
        }

LABEL_388:
        v491 = v450 * v444 * v452;
        v492 = v646;
        *(v646 + 16 * v425) = v579;
        v493 = (v492 + 4 * v425);
        v493[32] = v455;
        v493[40] = v453;
        v493[48] = v491;
        v493[56] = v486 * v454;
        v494 = v638;
        *(v638 + 16 * v425) = v579;
        v495 = (v494 + 4 * v425);
        v495[32] = v455;
        v495[40] = v453;
        v495[48] = v491;
        v495[56] = v486 * v454;
        a3 = v585;
        if (BYTE8(v621))
        {
          (*(*v619 + 56))(v619);
        }

        goto LABEL_390;
      }
    }

    else
    {
      v474 = 0;
    }

    v476 = *(v435 + v474 + 11);
    if (v476 != 2)
    {
      goto LABEL_380;
    }

    goto LABEL_370;
  }

LABEL_439:
}

void sub_1B2E49D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2C0]);
  }

  if (STACK[0x2B0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWallShadow::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWallShadow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWallShadow::MeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::MeshPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

__n128 std::__function::__func<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06930;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::VenueRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A068E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a1 + 11);
  if (v6 == 2)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(v7 + 72);
      if (v8)
      {
        v9 = *v8 + 120 * *(v8 + v5 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9, a2) != *(v9 + 12))
        {
          return 1;
        }
      }

      if (*(a1 + 56))
      {
        v10 = *(a1 + 48);
        v11 = 8 * *(a1 + 56);
        while (1)
        {
          v12 = *(*v10 + 72);
          if (v12)
          {
            v13 = *v12 + 120 * *(v12 + v5 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, a2) != *(v13 + 12))
            {
              return 1;
            }
          }

          v10 += 8;
          v6 = 1;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v6 = 1;
  }

LABEL_15:
  v14 = *(a1 + 16 * v6 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 72);
  if (!v15 || (v16 = *v15 + 120 * *(v15 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) == *(v16 + 12)))
  {
    v18 = a1 + 16 * v6;
    if (*(v18 + 56))
    {
      v19 = *(v18 + 48);
      v20 = 8 * *(v18 + 56);
      while (1)
      {
        v21 = *(*v19 + 72);
        if (v21)
        {
          v22 = *v21 + 120 * *(v21 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, a2) != *(v22 + 12))
          {
            break;
          }
        }

        result = 0;
        v19 += 8;
        v20 -= 8;
        if (!v20)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

void std::vector<md::DashTexture::DashTexture(gss::DashPattern,unsigned short,BOOL,BOOL)::DashGap,std::allocator<md::DashTexture::DashTexture(gss::DashPattern,unsigned short,BOOL,BOOL)::DashGap>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

void md::DashTextureCache::textureForPattern(void *a1, float *a2, uint64_t a3, unsigned __int8 a4, float a5)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v8 = (a5 + 0.5);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](&v25, a3);
  v9 = *(a3 + 32);
  v28 = v9;
  __dst = 0;
  v31 = 0;
  v29 = 0;
  v32 = v27;
  v10 = v25;
  v11 = v26 - v25;
  if (v26 != v25)
  {
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](&v29, v11 >> 2);
    v12 = __dst;
    memmove(__dst, v10, v11);
    __dst = &v12[v11];
    v9 = v28;
  }

  v33 = v9;
  v34 = v8;
  v35 = 0;
  v36 = a4;
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v25);
  v13 = std::hash<gss::DashPattern>::operator()(&v29);
  v14 = *(a2 + 2);
  if (!*&v14)
  {
    goto LABEL_19;
  }

  v15 = v13 ^ v34 ^ v35 ^ v36;
  v16 = vcnt_s8(v14);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13 ^ v34 ^ v35 ^ v36;
    if (v15 >= *&v14)
    {
      v18 = v15 % *&v14;
    }
  }

  else
  {
    v18 = (*&v14 - 1) & v15;
  }

  v19 = *(*a2 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v15 == v21)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= *&v14)
      {
        v21 %= *&v14;
      }
    }

    else
    {
      v21 &= *&v14 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (!std::equal_to<md::DashTextureCache::Key>::operator()[abi:nn200100]((v20 + 2), &v29))
  {
    goto LABEL_18;
  }

  v37[0] = &v29;
  v22 = std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::__emplace_unique_key_args<md::DashTextureCache::Key,std::piecewise_construct_t const&,std::tuple<md::DashTextureCache::Key const&>,std::tuple<>>(a2, &v29, v37);
  v23 = v22[9];
  *a1 = v22[8];
  a1[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v29);
}

void *std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::__emplace_unique_key_args<md::DashTextureCache::Key,std::piecewise_construct_t const&,std::tuple<md::DashTextureCache::Key const&>,std::tuple<>>(float *a1, uint64_t a2, uint64_t *a3)
{
  v5 = std::hash<gss::DashPattern>::operator()(a2) ^ *(a2 + 40);
  v6 = *(a2 + 42) ^ *(a2 + 43);
  v7 = v5 ^ v6;
  v8 = *(a1 + 2);
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5 ^ v6;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<md::DashTextureCache::Key>::operator()[abi:nn200100]((v13 + 2), a2))
  {
    goto LABEL_17;
  }

  return v13;
}

BOOL std::equal_to<md::DashTextureCache::Key>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  result = gss::DashPattern::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 40) == *(a2 + 40) && *(a1 + 42) == *(a2 + 42) && *(a1 + 43) == *(a2 + 43);
  }

  return result;
}

void std::__shared_ptr_emplace<md::DashTexture>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 24));
}

void std::__shared_ptr_emplace<md::DashTexture>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A069C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E4CE54(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKPolylineGroupOverlay;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

ggl::CommonMesh::Pos4Mesh *md::ModelTileDebugData::sharedPolygonLineMesh(md::ModelTileDebugData *this)
{
  result = *(this + 18);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ggl::PolygonStroke::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__node_insert_unique(float *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 == 1)
  {
    geo::QuadTile::computeHash((a2 + 16));
    LOBYTE(v4) = 0;
    *(a2 + 40) = 0;
  }

  v5 = *(a2 + 32);
  *(a2 + 8) = v5;
  v6 = *(a1 + 1);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v5;
      if (v6 <= v5)
      {
        v9 = v5 % v6;
      }
    }

    else
    {
      v9 = (v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = *(i + 1);
        if (v12 == v5)
        {
          if (i[40] == 1)
          {
            geo::QuadTile::computeHash(i + 16);
            i[40] = 0;
            LOBYTE(v4) = *(a2 + 40);
          }

          v13 = *(i + 4);
          if (v4)
          {
            LOBYTE(v4) = 0;
            v15 = (*(a2 + 17) + ((*(a2 + 16) - 0x61C8864680B583EBLL) << 6) + ((*(a2 + 16) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a2 + 16) - 0x61C8864680B583EBLL);
            v16 = (*(a2 + 20) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
            v14 = (*(a2 + 24) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
            *(a2 + 32) = v14;
            *(a2 + 40) = 0;
          }

          else
          {
            v14 = *(a2 + 32);
          }

          if (v13 == v14 && i[16] == *(a2 + 16) && i[17] == *(a2 + 17) && *(i + 5) == *(a2 + 20) && *(i + 6) == *(a2 + 24))
          {
            return 0;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }
          }

          else
          {
            v12 &= v6 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v17 = (*(a1 + 3) + 1);
  v18 = a1[8];
  if (!v6 || (v18 * v6) < v17)
  {
    v19 = 1;
    if (v6 >= 3)
    {
      v19 = (v6 & (v6 - 1)) != 0;
    }

    v20 = v19 | (2 * v6);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, v22);
  }

  v23 = *(a1 + 2);
  v24 = *(a2 + 8);
  v25 = vcnt_s8(v23);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    if (v24 >= *&v23)
    {
      v24 %= *&v23;
    }
  }

  else
  {
    v24 &= *&v23 - 1;
  }

  v26 = *a1;
  v27 = *(*a1 + 8 * v24);
  if (v27)
  {
    *a2 = *v27;
LABEL_49:
    *v27 = a2;
    goto LABEL_50;
  }

  *a2 = *(a1 + 2);
  *(a1 + 2) = a2;
  *(v26 + 8 * v24) = a1 + 4;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v25.u32[0] > 1uLL)
    {
      if (v28 >= *&v23)
      {
        v28 %= *&v23;
      }
    }

    else
    {
      v28 &= *&v23 - 1;
    }

    v27 = (*a1 + 8 * v28);
    goto LABEL_49;
  }

LABEL_50:
  ++*(a1 + 3);
  return 1;
}

md::mun::MuninNavigationGraph *std::unique_ptr<md::mun::MuninNavigationGraph>::reset[abi:nn200100](md::mun::MuninNavigationGraph **a1, md::mun::MuninNavigationGraph *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::mun::MuninNavigationGraph::~MuninNavigationGraph(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v2 + 14));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void md::mun::MuninMetadataContainer::~MuninMetadataContainer(md::mun::MuninMetadataContainer *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 600);
  std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::clear(this + 72);
  std::mutex::~mutex(this + 8);
  std::unique_ptr<md::mun::MuninNavigationGraph>::reset[abi:nn200100](this + 62, 0);
  geo::read_write_lock::~read_write_lock((this + 296));
  geo::read_write_lock::~read_write_lock((this + 96));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 10));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 7));
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void md::mun::MuninMetadataContainer::addActiveMetadataPoint(std::mutex *this, const CollectionPoint *a2)
{
  std::mutex::lock(this + 8);
  *&v6 = a2->pointId;
  *(&v6 + 1) = v6;
  v7 = *a2->frame._translation._e;
  v4 = *a2->frame._rotation._imaginary._e;
  v8 = a2->frame._translation._e[2];
  v9 = v4;
  v10 = a2->frame._rotation._imaginary._e[2];
  v11 = *&a2->frame._rotation._scalar;
  v5 = *&a2->mercatorPosition._e[2];
  v12 = *a2->mercatorPosition._e;
  v13 = v5;
  v14 = v18;
  v15 = v18;
  v16 = v18;
  v17 = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(&v14, a2->photos._begin, a2->photos._end);
  *(v19 + 5) = *&a2[6].photos.storage[2].__data[5];
  v19[0] = *a2[6].photos.storage[2].__data;
  v20[0] = v6;
  v20[1] = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27[0] = v28;
  v27[1] = v28;
  v27[2] = v28;
  v27[3] = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v27, v14, v15);
  *(v29 + 5) = *(v19 + 5);
  v29[0] = v19[0];
  v29[2] = 0;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&this[9].__m_.__opaque[16], *&v20[0]))
  {
    std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry const&>(v20);
  }

  std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry const&>(v20);
}

void sub_1B2E4D818(_Unwind_Exception *a1)
{
  operator delete(v2);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v4 + 96);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v3 + 96);
  std::mutex::unlock(v1 + 8);
  _Unwind_Resume(a1);
}

void md::mun::MuninMetadataContainer::nearestMetadataTiles(uint64_t a1, uint64_t a2, double *a3, double a4)
{
  v5 = atomic_load((a2 + 24));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (v5)
  {
    v7 = *a3;
    v8 = cos(v7 + v7) * -559.82 + 111132.92;
    v9 = v8 + cos(v7 * 4.0) * 1.175;
    v10 = v9 + cos(v7 * 6.0) * -0.0023;
    v11 = v7 * 0.5;
    v12 = tan(v7 * 0.5 + 0.78103484);
    v13 = log(v12);
    v14 = tan(v11 + 0.789761487);
    v15 = fabs((log(v14) - v13) * 0.159154943) * a4 / v10;
    v16 = a3[1];
    v17 = tan(v11 + 0.785398163);
    v18 = log(v17) * 0.159154943 + 0.5;
    v19 = 1 << v5;
    v20 = (1 << v5);
    v21 = v19 + ~vcvtmd_s64_f64((v15 + v18) * v19);
    v22 = vcvtmd_s64_f64((v18 - v15) * v20);
    if (v21 <= ((1 << v5) + ~v22))
    {
      v23 = v16 * 0.159154943 + 0.5;
      v24 = vcvtmd_s64_f64((v23 - v15) * v20);
      v25 = vcvtmd_s64_f64((v15 + v23) * v20);
      do
      {
        if (v24 <= v25)
        {
          operator new();
        }

        ++v21;
      }

      while (v21 != v19 - v22);
    }
  }
}

void sub_1B2E4DB4C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (a1[1])
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::destroy[abi:nn200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t **std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_1F2A06A80;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 2, 1uLL, memory_order_relaxed);
  }

  a2[4] = 0;
  a2[3] = (a2 + 4);
  v5 = a2 + 3;
  a2[5] = 0;
  result = std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(a2 + 3, *(a1 + 24), (a1 + 32));
  v5[3] = *(a1 + 48);
  return result;
}

void std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A06A80;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A06A80;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

__int128 *std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>,std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>,std::back_insert_iterator<std::vector<std::shared_ptr<md::mun::MuninMetadata>>>>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      std::vector<std::shared_ptr<md::LabelExternalRoadFeature>>::push_back[abi:nn200100](a3, v5 + 2);
      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a2;
}

void std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<md::mun::CollectionPoint,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 1864) == *(a2 + 1864))
  {
    if (*(result + 1864))
    {
      *result = *a2;
      for (i = 32; i != 44; i += 4)
      {
        *(result + i) = *(a2 + i);
      }

      *(result + 44) = *(a2 + 44);
      for (j = 8; j != 32; j += 8)
      {
        *(result + j) = *(a2 + j);
      }

      *(result + 48) = *(a2 + 48);
      for (k = 56; k != 80; k += 8)
      {
        *(result + k) = *(a2 + k);
      }

      *(result + 80) = *(a2 + 80);
      if (result != a2)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::copy((result + 88), (a2 + 88), (result + 120));
      }

      v7 = *(a2 + 1848);
      *(result + 1853) = *(a2 + 1853);
      *(result + 1848) = v7;
    }
  }

  else if (*(result + 1864))
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(result + 88);
    *(result + 1864) = 0;
  }

  else
  {
    std::__construct_at[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,md::mun::CollectionPoint*>(result, a2);
    *(result + 1864) = 1;
  }
}

uint64_t std::__construct_at[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,md::mun::CollectionPoint*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 44) = *(a2 + 44);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v7 = *(a2 + 1848);
  *(a1 + 1853) = *(a2 + 1853);
  *(a1 + 1848) = v7;
  return a1;
}

void md::mun::MuninMetadataContainer::activePoint(md::mun::MuninMetadataContainer *this, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a2 + 512));
  v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a2 + 600), a3);
  if (v6)
  {
    std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry const&>(v6[3] + 16);
  }

  *this = 0;
  *(this + 1864) = 0;
  std::mutex::unlock((a2 + 512));
}

uint64_t std::vector<md::mun::CollectionPoint>::__emplace_back_slow_path<md::mun::CollectionPoint const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x63FB9AEB1FDCD759 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2328A701194538)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xC7F735D63FB9AEB2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xC7F735D63FB9AEB2 * ((a1[2] - *a1) >> 3);
  }

  if ((0x63FB9AEB1FDCD759 * ((a1[2] - *a1) >> 3)) >= 0x119453808CA29CLL)
  {
    v5 = 0x2328A701194538;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(v5);
  }

  v12 = 0;
  v13 = 1864 * v2;
  std::__construct_at[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,md::mun::CollectionPoint*>(1864 * v2, a2);
  v14 = (1864 * v2 + 1864);
  v6 = a1[1];
  v7 = 1864 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(&v12);
  return v11;
}

void sub_1B2E4E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::mun::MuninMetadataContainer::navigationGraphAccessor(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 296));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (*(a1 + 496))
  {
    v8 = *(a1 + 496);
    v6 = *(a2 + 24);
    if (!v6)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      geo::read_write_lock::unlock((a1 + 296));
      _Unwind_Resume(v7);
    }

    (*(*v6 + 48))(v6, &v8);
  }

  geo::read_write_lock::unlock((a1 + 296));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBase *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t md::Label::collisionPriorityCmp(unint64_t a1, unint64_t a2)
{
  v2 = atomic_load((a1 + 1328));
  v3 = atomic_load((a2 + 1328));
  if ((v3 ^ v2))
  {
    LOBYTE(v4) = atomic_load((a1 + 1328));
    return v4 & 1;
  }

  v7 = 744;
  if (*(a1 + 1336))
  {
    v8 = 748;
  }

  else
  {
    v8 = 744;
  }

  v9 = *(a1 + v8);
  if (*(a2 + 1336))
  {
    v7 = 748;
  }

  v10 = *(a2 + v7);
  v11 = v9 < v10;
  if (v9 != v10)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 752);
  v13 = *(a2 + 752);
  v11 = v12 < v13;
  if (v12 != v13)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 764);
  v15 = *(a2 + 764);
  v11 = v14 < v15;
  if (v14 != v15)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 60);
  v17 = *(a2 + 60);
  v11 = v16 < v17;
  if (v16 != v17)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 1303);
  v18 = *(a2 + 1303);
  if (v4 != v18)
  {
    LOBYTE(v4) = v4 > v18;
    return v4 & 1;
  }

  v19 = *(a1 + 196);
  v20 = *(a2 + 196);
  v11 = v19 < v20;
  if (v19 != v20)
  {
LABEL_14:
    LOBYTE(v4) = v11;
    return v4 & 1;
  }

  v22 = (*(**(a1 + 8) + 480))(*(a1 + 8), 0);
  v23 = (*(**(a2 + 8) + 480))();
  LOBYTE(v4) = v22 != 0;
  if (!(v22 | v23))
  {
LABEL_42:
    LOBYTE(v4) = a1 < a2;
    return v4 & 1;
  }

  if (v22)
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(v23 + 23);
    v26 = *(v22 + 23);
    if ((v26 & 0x8000000000000000) != 0)
    {
      v27 = v22;
      v22 = *v22;
      v26 = *(v27 + 8);
    }

    if (v25 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = *(v23 + 8);
    }

    if (v25 >= 0)
    {
      v29 = v23;
    }

    else
    {
      v29 = *v23;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = memcmp(v22, v29, v30);
    if (v26 < v28)
    {
      v32 = -1;
    }

    else
    {
      v32 = v28 < v26;
    }

    if (v31)
    {
      v32 = v31;
    }

    if (v32)
    {
      v4 = v32 >> 31;
      return v4 & 1;
    }

    goto LABEL_42;
  }

  return v4 & 1;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 844);
  v7 = *(*result + 844);
  if ((v6 == 2) != (v7 == 2))
  {
    if (v6 != 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = v6 == 2;
    v9 = *a3;
    if ((v8 ^ (*(*a3 + 844) == 2)))
    {
      if (*(*a3 + 844) != 2)
      {
LABEL_9:
        *result = v4;
        *a2 = v5;
        v4 = *a3;
        if ((v7 == 2) != (*(*a3 + 844) == 2))
        {
          if (*(*a3 + 844) != 2)
          {
            goto LABEL_22;
          }
        }

        else if (*(v4 + 692) >= *(v5 + 692))
        {
          goto LABEL_22;
        }

        *a2 = v4;
        goto LABEL_20;
      }
    }

    else if (*(v9 + 692) >= *(v4 + 692))
    {
      goto LABEL_9;
    }

    *result = v9;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (*(v4 + 692) < *(v5 + 692))
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a3;
  if ((v6 == 2) != (*(*a3 + 844) == 2))
  {
    if (*(*a3 + 844) != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (*(v5 + 692) >= *(v4 + 692))
  {
LABEL_21:
    v4 = v5;
    goto LABEL_22;
  }

LABEL_13:
  *a2 = v5;
  *a3 = v4;
  v10 = *a2;
  v11 = *result;
  v12 = *(*a2 + 844);
  if ((v12 == 2) != (*(*result + 844) == 2))
  {
    if (v12 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (*(v10 + 692) >= *(v11 + 692))
  {
    goto LABEL_22;
  }

  *result = v10;
  *a2 = v11;
  v4 = *a3;
LABEL_22:
  v13 = *a4;
  v14 = *(*a4 + 844);
  if ((v14 == 2) != (*(v4 + 844) == 2))
  {
    if (v14 != 2)
    {
      return result;
    }
  }

  else if (*(v13 + 692) >= *(v4 + 692))
  {
    return result;
  }

  *a3 = v13;
  *a4 = v4;
  v15 = *a3;
  v16 = *a2;
  v17 = *(*a3 + 844);
  if ((v17 == 2) != (*(*a2 + 844) == 2))
  {
    if (v17 != 2)
    {
      return result;
    }
  }

  else if (*(v15 + 692) >= *(v16 + 692))
  {
    return result;
  }

  *a2 = v15;
  *a3 = v16;
  v18 = *a2;
  v19 = *result;
  v20 = *(*a2 + 844);
  if ((v20 == 2) != (*(*result + 844) == 2))
  {
    if (v20 == 2)
    {
      goto LABEL_36;
    }
  }

  else if (*(v18 + 692) < *(v19 + 692))
  {
LABEL_36:
    *result = v18;
    *a2 = v19;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_18;
      }

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
      v8 = *(a2 - 1);
      v9 = a1[3];
      v10 = *(v8 + 844);
      if ((v10 == 2) != (*(v9 + 844) == 2))
      {
        if (v10 != 2)
        {
          return 1;
        }
      }

      else if (*(v8 + 692) >= *(v9 + 692))
      {
        return 1;
      }

      a1[3] = v8;
      *(a2 - 1) = v9;
      v36 = a1[2];
      v35 = a1[3];
      v37 = *(v35 + 844);
      if ((v37 == 2) != (*(v36 + 844) == 2))
      {
        if (v37 != 2)
        {
          return 1;
        }

        a1[2] = v35;
        a1[3] = v36;
        v38 = a1[1];
        if (*(v38 + 844) == 2)
        {
          v39 = *(v35 + 692);
LABEL_92:
          if (v39 >= *(v38 + 692))
          {
            return 1;
          }

          a1[1] = v35;
          a1[2] = v38;
          v43 = *a1;
          if ((v37 == 2) != (*(*a1 + 844) == 2))
          {
            if (v37 == 2)
            {
              goto LABEL_97;
            }

            return 1;
          }

          goto LABEL_96;
        }
      }

      else
      {
        v39 = *(v35 + 692);
        if (v39 >= *(v36 + 692))
        {
          return 1;
        }

        a1[2] = v35;
        a1[3] = v36;
        v38 = a1[1];
        if ((v37 == 2) == (*(v38 + 844) == 2))
        {
          goto LABEL_92;
        }

        if (v37 != 2)
        {
          return 1;
        }
      }

      a1[1] = v35;
      a1[2] = v38;
      v43 = *a1;
      if (*(*a1 + 844) != 2)
      {
        goto LABEL_97;
      }

      v39 = *(v35 + 692);
LABEL_96:
      if (v39 >= *(v43 + 692))
      {
        return 1;
      }

LABEL_97:
      *a1 = v35;
      a1[1] = v43;
      return 1;
    }

    v6 = *a1;
    v11 = a1[1];
    v12 = *(v11 + 844);
    v13 = *(*a1 + 844);
    if ((v12 == 2) != (v13 == 2))
    {
      if (v12 != 2)
      {
        goto LABEL_15;
      }
    }

    else if (*(v11 + 692) >= *(v6 + 692))
    {
LABEL_15:
      v14 = *(a2 - 1);
      v15 = *(v14 + 844);
      if ((v12 == 2) != (v15 == 2))
      {
        if (v15 != 2)
        {
          return 1;
        }
      }

      else if (*(v14 + 692) >= *(v11 + 692))
      {
        return 1;
      }

      a1[1] = v14;
      *(a2 - 1) = v11;
      v41 = *a1;
      v40 = a1[1];
      v42 = *(v40 + 844);
      if ((v42 == 2) != (*(*a1 + 844) == 2))
      {
        if (v42 != 2)
        {
          return 1;
        }
      }

      else if (*(v40 + 692) >= *(v41 + 692))
      {
        return 1;
      }

      *a1 = v40;
      a1[1] = v41;
      return 1;
    }

    v26 = v12 == 2;
    v27 = *(a2 - 1);
    if ((v26 ^ (*(v27 + 844) == 2)))
    {
      if (*(v27 + 844) != 2)
      {
LABEL_28:
        v28 = v13 == 2;
        *a1 = v11;
        a1[1] = v6;
        v29 = *(a2 - 1);
        v30 = *(v29 + 844);
        if ((v28 ^ (v30 == 2)))
        {
          if (v30 != 2)
          {
            return 1;
          }
        }

        else if (*(v29 + 692) >= *(v6 + 692))
        {
          return 1;
        }

        a1[1] = v29;
        goto LABEL_62;
      }
    }

    else if (*(v27 + 692) >= *(v11 + 692))
    {
      goto LABEL_28;
    }

    *a1 = v27;
    goto LABEL_62;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 844);
    if ((v7 == 2) != (*(*a1 + 844) == 2))
    {
      if (v7 != 2)
      {
        return 1;
      }
    }

    else if (*(v5 + 692) >= *(v6 + 692))
    {
      return 1;
    }

    *a1 = v5;
LABEL_62:
    *(a2 - 1) = v6;
    return 1;
  }

LABEL_18:
  v16 = a1 + 2;
  v17 = *a1;
  v18 = a1 + 1;
  v19 = a1[1];
  v20 = *(v19 + 844);
  v21 = *(*a1 + 844);
  if ((v20 == 2) == (v21 == 2))
  {
    if (*(v19 + 692) >= *(v17 + 692))
    {
      goto LABEL_20;
    }

LABEL_32:
    v31 = v20 == 2;
    v32 = *v16;
    v33 = *(*v16 + 844);
    if ((v31 ^ (v33 == 2)))
    {
      if (v33 != 2)
      {
        *a1 = v19;
        a1[1] = v17;
        if (v21 == 2)
        {
          goto LABEL_74;
        }

        v34 = *(v32 + 692);
        goto LABEL_70;
      }
    }

    else
    {
      v34 = *(v32 + 692);
      if (v34 >= *(v19 + 692))
      {
        *a1 = v19;
        a1[1] = v17;
        if ((v21 == 2) != (v33 == 2))
        {
          if (v33 != 2)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_70:
        if (v34 >= *(v17 + 692))
        {
          goto LABEL_74;
        }

LABEL_71:
        *v18 = v32;
        goto LABEL_72;
      }
    }

    *a1 = v32;
LABEL_72:
    v18 = a1 + 2;
    goto LABEL_73;
  }

  if (v20 == 2)
  {
    goto LABEL_32;
  }

LABEL_20:
  v22 = v20 == 2;
  v23 = *v16;
  v24 = *(*v16 + 844);
  if ((v22 ^ (v24 == 2)))
  {
    if (v24 != 2)
    {
      goto LABEL_74;
    }

    *v18 = v23;
    *v16 = v19;
    if (v21 == 2)
    {
      v25 = *(v23 + 692);
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  v25 = *(v23 + 692);
  if (v25 >= *(v19 + 692))
  {
    goto LABEL_74;
  }

  *v18 = v23;
  *v16 = v19;
  if ((v21 == 2) == (v24 == 2))
  {
LABEL_65:
    if (v25 >= *(v17 + 692))
    {
      goto LABEL_74;
    }

    goto LABEL_66;
  }

  if (v24 == 2)
  {
LABEL_66:
    *a1 = v23;
LABEL_73:
    *v18 = v17;
  }

LABEL_74:
  v44 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (2)
  {
    v47 = *v44;
    v48 = *v16;
    v49 = *(*v44 + 844);
    if ((v49 == 2) != (*(*v16 + 844) == 2))
    {
      if (v49 != 2)
      {
        goto LABEL_89;
      }
    }

    else if (*(v47 + 692) >= *(v48 + 692))
    {
      goto LABEL_89;
    }

    *v44 = v48;
    v50 = v45;
    while (1)
    {
      v51 = *(a1 + v50 + 8);
      if ((v49 == 2) != (*(v51 + 844) == 2))
      {
        if (v49 != 2)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }

      if (*(v47 + 692) >= *(v51 + 692))
      {
        break;
      }

LABEL_85:
      --v16;
      *(a1 + v50 + 16) = v51;
      v50 -= 8;
      if (v50 == -16)
      {
        v16 = a1;
        goto LABEL_88;
      }
    }

    v16 = (a1 + v50 + 16);
LABEL_88:
    *v16 = v47;
    if (++v46 != 8)
    {
LABEL_89:
      v16 = v44;
      v45 += 8;
      if (++v44 == a2)
      {
        return 1;
      }

      continue;
    }

    return v44 + 1 == a2;
  }
}

void md::LabelSpacingDedupingGroup::~LabelSpacingDedupingGroup(md::LabelSpacingDedupingGroup *this)
{
  *this = &unk_1F2A06AC8;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06AC8;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

void sub_1B2E4F5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKNotificationObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2E4F8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v18 = v16;

  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

char *std::vector<geo::Color<unsigned char,4,(geo::ColorSpace)2>>::__assign_with_size[abi:nn200100]<geo::Color<unsigned char,4,(geo::ColorSpace)2>*,geo::Color<unsigned char,4,(geo::ColorSpace)2>*>(uint64_t *a1, int *a2, int *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 2)
  {
    while (v5 != a3)
    {
      for (i = 0; i != 4; ++i)
      {
        result[i] = *(v5 + i);
      }

      ++v5;
      result += 4;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        for (j = 0; j != 4; ++j)
        {
          result[j] = *(v5 + j);
        }

        ++v5;
        result += 4;
      }

      while (v5 != v12);
      v11 = a1[1];
    }

    v14 = v11;
    if (v12 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v12++;
        *v14++ = v15;
      }

      while (v12 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::__construct_node<std::pair<unsigned short const,std::string> const&>(grl::zone_mallocator *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16;
  v6 = grl::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(v6);
  *a1 = v7;
  *(a1 + 1) = v5;
  *(a1 + 2) = 0;
  *(v7 + 16) = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v8 = *(a3 + 8);
    *(v7 + 7) = *(a3 + 24);
    *(v7 + 40) = v8;
  }

  *(a1 + 16) = 1;
}

void sub_1B2E50648(grl::zone_mallocator *a1)
{
  *v1 = 0;
  v4 = grl::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(v4, v2);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x10320406A6885EAuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void sub_1B2E50928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t geo::_byteColor<float,4,(geo::ColorSpace)2>(_DWORD *a1, float32x4_t a2)
{
  v2 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(a2, vdupq_n_s32(0x437F0000u))));
  result = vuzp1_s8(v2, v2);
  *a1 = result.i32[0];
  return result;
}

void sub_1B2E51AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E51CDC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKIconManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

float VKShieldColorsFromHexString(void *a1)
{
  v1 = [a1 copy];
  if ([(NSString *)v1 hasPrefix:@"#"])
  {
    v2 = [(NSString *)v1 substringFromIndex:1];

    v1 = v2;
  }

  if ([(NSString *)v1 length]== 8)
  {
    colorFromStringInRange(v1, 6, 2);
    v3 = [(NSString *)v1 substringWithRange:0, 6];

    v1 = v3;
  }

  v4 = 0.0;
  if ([(NSString *)v1 length]== 6)
  {
    v4 = colorFromStringInRange(v1, 0, 2);
    colorFromStringInRange(v1, 2, 2);
    colorFromStringInRange(v1, 4, 2);
  }

  return v4;
}

double colorFromStringInRange(NSString *a1, const _NSRange *a2, uint64_t a3)
{
  v8 = 0;
  v3 = MEMORY[0x1E696AE88];
  v4 = [(NSString *)a1 substringWithRange:a2, a3];
  v5 = [v3 scannerWithString:v4];

  [v5 scanHexInt:&v8];
  v6 = (v8 * 0.0039216);

  return v6;
}

__CFString *VKSizeGroupToString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"ExtraExtraExtraSmall";
  }

  else
  {
    return *(&off_1E7B34AC8 + a1 - 1);
  }
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 8);
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 8) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 8) < *(v5 + 8))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 8) < *(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 8);
      v8 = *(*a1 + 8);
      v9 = *(a2 - 1);
      v10 = *(v9 + 8);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 8) < *(*a1 + 8))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 8) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 8);
    v26 = *(*a1 + 8);
    v27 = *(v23 + 8);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 8) < *(v21 + 8))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 8);
          if (v45 < *(v44 + 8))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 8))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 8) < *(*a1 + 8))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 8);
  v16 = *(*a1 + 8);
  v17 = *(v11 + 8);
  if (v15 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v18 = v11;
    *v19 = v14;
    goto LABEL_27;
  }

  if (v17 < v15)
  {
    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 8);
    if (v38 < *(v37 + 8))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 8))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t (***md::LabelClusterTree::labelMarkerForClusterNode@<X0>(uint64_t a1@<X0>, void *a2@<X8>))(void)
{
  result = *(a1 + 8);
  if (result)
  {
    return (**result)(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void md::LabelClusterTree::~LabelClusterTree(md::LabelClusterTree *this)
{
  *this = &unk_1F2A43720;
  v1 = (this + 16);
  v2 = (this + 48);
  std::vector<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A43720;
  v1 = (this + 16);
  v2 = (this + 48);
  std::vector<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeClusterNode>>(v7, v4);
  }
}

void std::vector<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeClusterNode>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

mdm::zone_mallocator *std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::reserve(mdm::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = mdm::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[8 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v4 = *--v2;
    a1 = v4;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v4)
    {
      a1 = (*(*a1 + 8))(a1);
      v2 = *(v1 + 2);
    }
  }

  v5 = *v1;
  if (*v1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(v6, v5);
  }

  return v1;
}

mdm::zone_mallocator *std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t std::__function::__value_func<md::ClusterNode * ()(std::pair<md::ClusterNode *,md::ClusterNode *> &,double)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ClusterNode *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ClusterNode *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::ClusterTreeClusterNode>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v4 = *--v2;
    a1 = v4;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v4)
    {
      a1 = (*(*a1 + 8))(a1);
      v2 = *(v1 + 2);
    }
  }

  v5 = *v1;
  if (*v1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeClusterNode>>(v6, v5);
  }

  return v1;
}

void geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A567C0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A567C0;

  return a1;
}

uint64_t md::ClusterTreeClusterNode::setupClusterNode(md::ClusterTreeClusterNode *this, char a2, float a3)
{
  *(this + 80) = 1;
  *(this + 180) = a2;
  if ((a2 & 1) == 0)
  {
    *(this + 3) = a3;
  }

  md::ClusterTreeClusterNode::updateDescendantNode(this, *(this + 18));
  v4 = *(this + 19);

  return md::ClusterTreeClusterNode::updateDescendantNode(this, v4);
}

uint64_t md::ClusterTreeClusterNode::updateDescendantNode(md::ClusterTreeClusterNode *this, md::ClusterTreeNode *a2)
{
  *(a2 + 2) = *(this + 3);
  *(a2 + 9) = this;
  if (*(a2 + 80) == 1)
  {
    if (((*(*a2 + 32))(a2) & 1) == 0)
    {
      *(this + 44) += *(a2 + 44);
      *(this + 181) |= *(a2 + 181);
    }
  }

  else if (!*(a2 + 80))
  {
    if ((*(*a2 + 32))(a2))
    {
      ++*(this + 44);
      if (*(this + 180))
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      *(a2 + 80) = v4;
    }

    else
    {
      *(a2 + 80) = 2;
      md::ClusterTreeClusterNode::updateDescendantNode(this, *(a2 + 18));
      md::ClusterTreeClusterNode::updateDescendantNode(this, *(a2 + 19));
    }
  }

  v5 = *(a2 + 21);
  if (v5 != -1)
  {
    v6 = *(this + 21);
    if (v6 == -1)
    {
      *(this + 21) = v5;
    }

    else
    {
      *(this + 181) |= v6 != v5;
    }
  }

  v7 = *(a2 + 22);
  if (v7 != -1 && *(this + 22) == -1)
  {
    *(this + 22) = v7;
  }

  result = (*(*a2 + 32))(a2);
  if (result)
  {
    v11 = *(this + 20);
    if (!v11 || *(v11 + 96) > *(a2 + 24))
    {
      *(this + 20) = a2;
    }
  }

  else
  {
    v9 = *(a2 + 20);
    v10 = *(this + 20);
    if (!v10 || v9 && *(v10 + 96) > *(v9 + 96))
    {
      *(this + 20) = v9;
    }
  }

  return result;
}

uint64_t md::ClusterTreeClusterNode::nodeTypeMask(md::ClusterTreeClusterNode *this)
{
  if (*(this + 80) == 2)
  {
    return 20;
  }

  if (*(this + 180))
  {
    return 12;
  }

  return 4;
}

uint64_t md::ClusterTreeClusterNode::populateNodes(void **a1, mdm::zone_mallocator *a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*a1)[4])(a1);
  if ((v8 & a3) != 0 && (v8 & a4) == 0)
  {
    v12 = a1;
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v12);
  }

  (*(*a1[18] + 24))(a1[18], a2, a3, a4);
  v10 = *(*a1[19] + 24);

  return v10();
}

uint64_t md::ClusterTreeClusterNode::populateChildNodes(uint64_t a1)
{
  (*(**(a1 + 144) + 24))(*(a1 + 144));
  v2 = *(**(a1 + 152) + 24);

  return v2();
}

void md::ClusterTreeClusterNode::~ClusterTreeClusterNode(md::ClusterTreeClusterNode *this)
{
  *this = &unk_1F2A06BC0;
  *(this + 15) = &unk_1F2A567C0;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06BC0;
  *(this + 15) = &unk_1F2A567C0;
}

uint64_t std::__function::__func<md::LabelClusterTree::generateClusters(std::shared_ptr<md::LabelClusterTree> const&,NSArray *,md::LabelManager *)::$_0,std::allocator<md::LabelClusterTree::generateClusters(std::shared_ptr<md::LabelClusterTree> const&,NSArray *,md::LabelManager *)::$_0>,md::ClusterNode * ()(std::pair<md::ClusterNode *,md::ClusterNode *> &,double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A06C30;
  a2[1] = v2;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ClusterNode *>(v5, v4);
  }

  return a1;
}

void *geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A567C0;
  a1[1] = v3;
  return a1;
}

uint64_t md::ClusterTreeFeatureNode::nodeTypeMask(md::ClusterTreeFeatureNode *this)
{
  if (*(this + 80) == 2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

mdm::zone_mallocator *md::ClusterTreeFeatureNode::populateNodes(uint64_t a1, mdm::zone_mallocator *a2, int a3, int a4)
{
  result = (*(*a1 + 32))(a1);
  if ((result & a3) != 0 && (result & a4) == 0)
  {
    v10 = a1;
    return std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v10);
  }

  return result;
}

void md::ClusterTreeFeatureNode::~ClusterTreeFeatureNode(md::ClusterTreeFeatureNode *this)
{
  *this = &unk_1F2A06B50;
  *(this + 15) = &unk_1F2A567C0;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06B50;
  *(this + 15) = &unk_1F2A567C0;
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 96) < *(*v9 + 96))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 96);
      v88 = *(*v9 + 96);
      v89 = *(v85 + 96);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = v9 + 1;
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = v9 + 2;
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = v9 + 2;
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 96) < *(v83 + 96))
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 96);
        if (v141 < *(v140 + 96))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 96))
          {
            *v9 = v139;
            v9[1] = v142;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 96);
            if (v99 < *(v98 + 96))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *(v98 + 96))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 96);
          if (v137 < *(v136 + 96))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 96));
            *v138 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            v108 = *v107;
            if (2 * v105 + 2 < v10 && *(v108 + 96) < *(v107[1] + 96))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 96);
            if (*(v108 + 96) >= v110)
            {
              do
              {
                v111 = v107;
                *result = v108;
                if (v103 < v106)
                {
                  break;
                }

                v112 = (2 * v106) | 1;
                v107 = &v9[v112];
                v113 = 2 * v106 + 2;
                v108 = *v107;
                if (v113 < v10 && *(v108 + 96) < *(v107[1] + 96))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 96) >= v110);
              *v111 = v109;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = &v116[v114];
            v118 = v117 + 1;
            v119 = v117[1];
            v120 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v10)
            {
              v114 = v120;
            }

            else
            {
              v123 = v117[2];
              v121 = v117 + 2;
              v122 = v123;
              result = *(v119 + 96);
              if (result >= *(v123 + 96))
              {
                v114 = v120;
              }

              else
              {
                v119 = v122;
                v118 = v121;
              }
            }

            *v116 = v119;
            v116 = v118;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v115;
          }

          else
          {
            *v118 = *a2;
            *a2 = v115;
            v124 = (v118 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v118;
              v131 = *(*v118 + 96);
              if (*(*v128 + 96) < v131)
              {
                do
                {
                  v132 = v128;
                  *v118 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v118 = v132;
                }

                while (*(*v128 + 96) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 96);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 96);
      v18 = *(*v9 + 96);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 96) < *(*v9 + 96))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 96) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 96);
      v29 = *(v27 + 96);
      v30 = *(a2 - 2);
      v31 = *(v30 + 96);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 96) < *(v32 + 96))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 96) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 96);
      v39 = *(v37 + 96);
      v40 = *(a2 - 3);
      v41 = *(v40 + 96);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 96) < *(v42 + 96))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 96) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 96);
      v47 = *(*v25 + 96);
      v48 = *v34;
      v49 = *(*v34 + 96);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 96);
    v22 = *(*v12 + 96);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 96) < *(*v12 + 96))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 96) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 96);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 96) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 96) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 96) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 96) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 96) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 96);
      if (*(*(v9 - 1) + 96) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 96))
      {
        v67 = (v9 + 1);
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v67 += 8;
        }

        while (v52 >= *(*v9 + 96));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 96));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 96));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 96));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 96));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 96);
  v79 = *(*v9 + 96);
  v80 = *v8;
  v81 = *(*v8 + 96);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 96) < *(*v9 + 96))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 96) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}