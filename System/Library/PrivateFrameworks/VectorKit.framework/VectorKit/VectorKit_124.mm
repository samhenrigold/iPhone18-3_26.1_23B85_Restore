uint64_t md::ARWalkingContinueLabelFeature::facingVector(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 272);
  if (v2)
  {
    v3 = *a2;
    v4 = result + 272;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 != result + 272 && v3 >= *(v4 + 32))
    {
      v8 = *(v4 + 40);
      if (v8)
      {
        return *(v8 + 96);
      }
    }
  }

  return result;
}

__int128 *md::ARWalkingContinueLabelFeature::labelPoint(md::LabelPoint *a1, unsigned int *a2)
{
  v2 = *(a1 + 34);
  if (v2)
  {
    v3 = *a2;
    v4 = a1 + 272;
    do
    {
      v5 = *(v2 + 8);
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *&v2[8 * v7];
    }

    while (v2);
    if (v4 != a1 + 272 && v3 >= *(v4 + 8))
    {
      v8 = *(v4 + 5);
      if (v8)
      {
        return (v8 + 48);
      }
    }
  }

  md::LabelPoint::NullPoint(a1);
  return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
}

BOOL md::ARWalkingContinueLabelFeature::updateDynamicStyling(md::ARWalkingContinueLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = *(a3 + 12);
  v4 = (a3 + 48);
  v3 = v5;
  v6 = *(this + 45);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = this + 360;
  do
  {
    v8 = *(v6 + 7);
    v9 = v8 >= v3;
    v10 = v8 < v3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *&v6[8 * v10];
  }

  while (v6);
  if (v7 != this + 360 && v3 >= *(v7 + 7))
  {
    v11 = v7[32] != *(this + 418);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  v12 = *(this + 418);
  v14 = v4;
  *(std::__tree<std::__value_type<md::LabelIdentifier,BOOL>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,BOOL>,std::less<md::LabelIdentifier>,true>,std::allocator<std::__value_type<md::LabelIdentifier,BOOL>>>::__emplace_unique_key_args<md::LabelIdentifier,std::piecewise_construct_t const&,std::tuple<md::LabelIdentifier const&>,std::tuple<>>(this + 44, v3, &v14) + 32) = v12;
  return v11;
}

uint64_t *std::__tree<std::__value_type<md::LabelIdentifier,BOOL>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,BOOL>,std::less<md::LabelIdentifier>,true>,std::allocator<std::__value_type<md::LabelIdentifier,BOOL>>>::__emplace_unique_key_args<md::LabelIdentifier,std::piecewise_construct_t const&,std::tuple<md::LabelIdentifier const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

mdm::zone_mallocator *md::ARWalkingContinueLabelFeature::newRootPart(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = md::ARWalkingContinueLabelFeature::layoutTypeForLabelIdentifier(a1, *(a3 + 48));
  v10 = a1[25];
  if (v10)
  {
    v4 = [v10 displayText];
    if (v4)
    {
      v29 = a1[25];
      v28 = [v29 displayText];
      v11 = [v28 UTF8String];
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = "";
    }
  }

  else
  {
    v12 = 0;
    v11 = "";
  }

  v31 = a3;
  v13 = strlen(v11);
  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v14 = v13;
  v15 = v9;
  if (v13 >= 0x17)
  {
    v30 = v4;
    v17 = a2;
    v18 = a4;
    if ((v13 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v13 | 7) + 1;
    }

    v20 = mdm::zone_mallocator::instance(v13);
    v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v20, v19);
    __dst[1] = v14;
    v33 = v19 | 0x8000000000000000;
    __dst[0] = v16;
    a4 = v18;
    a2 = v17;
    v4 = v30;
    goto LABEL_14;
  }

  HIBYTE(v33) = v13;
  v16 = __dst;
  if (v13)
  {
LABEL_14:
    memmove(v16, v11, v14);
  }

  *(v16 + v14) = 0;
  if (v12)
  {
  }

  if (v10)
  {
  }

  v21 = (*(*a1 + 61))(a1, 0);
  v22 = v15;
  if (v15 <= 0x100u)
  {
    v22 = 0;
  }

  LabelPart = md::ARWalkingManeuverLabelFeature::createLabelPart(a2, v31, a4, v22, __dst, v21);
  v24 = LabelPart;
  if (SHIBYTE(v33) < 0)
  {
    v25 = __dst[0];
    v26 = mdm::zone_mallocator::instance(LabelPart);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, v25);
  }

  return v24;
}

void md::ARWalkingContinueLabelFeature::~ARWalkingContinueLabelFeature(md::ARWalkingContinueLabelFeature *this)
{
  *this = &unk_1F2A32300;
  v2 = *(this + 49);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 45));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 42));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 288);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 34));
  geo::Pool<md::ARWalkingContinueLabelFeature::Placement>::~Pool(this + 216);
  *(this + 24) = &unk_1F2A325B8;

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A32300;
  v2 = *(this + 49);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 45));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 42));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 288);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 34));
  geo::Pool<md::ARWalkingContinueLabelFeature::Placement>::~Pool(this + 216);
  *(this + 24) = &unk_1F2A325B8;

  md::LabelFeature::~LabelFeature(this);
}

uint64_t geo::Pool<md::ARWalkingContinueLabelFeature::Placement>::~Pool(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v24 = &v25;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v24, v2, v3);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v26;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = v11 + 168 * v10;
          v13 = v25;
          if (!v25)
          {
            goto LABEL_21;
          }

          v14 = &v25;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v25)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            v18 = *(v12 + 152);
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
              v5 = *(a1 + 24);
            }
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v19 = v6[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v6[2];
          v8 = *v20 == v6;
          v6 = v20;
        }

        while (!v8);
      }

      v6 = v20;
    }

    while (v20 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v21 = v6[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v6[2];
          v8 = *v22 == v6;
          v6 = v22;
        }

        while (!v8);
      }

      v6 = v22;
    }

    while (v22 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v25);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B3105EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKARWalkingContinueFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A325B8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingContinueFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A325B8;

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::ARWalkingContinueFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,md::ARWalkingContinueFeatureDedupingGroup>,std::allocator<md::ARWalkingContinueFeatureDedupingGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::ARWalkingContinueFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,md::ARWalkingContinueFeatureDedupingGroup>,std::allocator<md::ARWalkingContinueFeatureDedupingGroup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

id GEOGetVectorKitARWalkingContinueLabelFeatureLog(void)
{
  if (GEOGetVectorKitARWalkingContinueLabelFeatureLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitARWalkingContinueLabelFeatureLog(void)::onceToken, &__block_literal_global_31918);
  }

  v1 = GEOGetVectorKitARWalkingContinueLabelFeatureLog(void)::log;

  return v1;
}

void md::ARWalkingContinueLabelFeature::prepareCandidatePlacements(geo::PolylineCoordinate const&)::$_0::operator()(id **a1, unsigned int *a2, uint64_t *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  [**a1 range];
  [**a1 range];
  if (GEOPolylineCoordinateWithinRange())
  {
    [*a1[1] pointAtRouteCoordinate:*a2];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = tan(v7 * 0.00872664626 + 0.785398163);
    v58 = log(v13);
    [*a1[1] courseAtRouteCoordinateIndex:*a2];
    v15 = fmod(360.0 - v14, 360.0);
    v16 = fmod(v15 + 360.0, 360.0) * 0.0174532925;
    v17 = __sincosf_stret(v16);
    *buf = v17.__cosval;
    *&buf[4] = v17.__sinval;
    *&buf[8] = 0;
    v18 = gm::Matrix<float,3,1>::normalized<int,void>(buf);
    v20 = v19;
    v22 = v21;
    v23 = a1[2];
    v24 = *v23 + 1;
    LODWORD(v60) = *v23;
    *v23 = v60 + 2;
    HIDWORD(v60) = v24;
    v25 = v12;
    if (*a1[3] == 1)
    {
      v26 = +[VKSharedResourcesManager sharedResources];
      v27 = [v26 undulationModel];

      Undulation = md::GeoidModel::getUndulation(v27, v8, v10);
      v29 = *&Undulation;
      if (!HIDWORD(Undulation))
      {
        v29 = 0.0;
      }

      v25 = v25 - v29;
    }

    memset(buf, 0, sizeof(buf));
    v30 = v6[32];
    if (!v30)
    {
      v31 = malloc_type_malloc(168 * v6[30], 0x10220403CD4D55AuLL);
      __p.__r_.__value_.__r.__words[0] = v31;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(v6 + 27, v31, &__p);
      v30 = v6[32];
      v32 = &v31[21 * v6[30] - 21];
      if (v32 >= v31)
      {
        do
        {
          v33 = v32;
          *v32 = v30;
          v32 -= 21;
          v30 = v33;
        }

        while (v32 >= v31);
        v30 = (v32 + 21);
      }

      v6[32] = v30;
    }

    v34 = v10 * 0.00277777778 + 0.5;
    v35 = v58 * 0.159154943 + 0.5;
    v6[32] = *v30;
    v36 = v60;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 0;
    *(v30 + 24) = v34;
    *(v30 + 32) = v35;
    *(v30 + 40) = v25;
    *(v30 + 44) = 256;
    *(v30 + 46) = 1;
    *(v30 + 48) = *buf;
    *(v30 + 64) = *&buf[16];
    *(v30 + 72) = v34;
    *(v30 + 80) = v35;
    *(v30 + 88) = v25;
    *(v30 + 92) = 256;
    *(v30 + 94) = 1;
    *(v30 + 96) = -v17.__sinval;
    *(v30 + 100) = v17.__cosval;
    *(v30 + 104) = 0;
    *(v30 + 108) = v18;
    *(v30 + 112) = v20;
    *(v30 + 116) = v22;
    *(v30 + 120) = 0x4000000040000000;
    *(v30 + 128) = *a2;
    *(v30 + 136) = 0;
    *(v30 + 144) = 0;
    *(v30 + 152) = 0;
    *(v30 + 160) = v36;
    *buf = &v60;
    std::__tree<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v6 + 33, v36, buf)[5] = v30;
    if (*(v6 + 417) == 1)
    {
      *buf = &v60 + 4;
      std::__tree<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v6 + 33, HIDWORD(v60), buf)[5] = v30;
    }

    v37 = 0x9DDFEA08EB382D69 * ((8 * (v30 & 0x1FFFFFFF) + 8) ^ HIDWORD(v30));
    v38 = 0x9DDFEA08EB382D69 * (HIDWORD(v30) ^ (v37 >> 47) ^ v37);
    v39 = 0x9DDFEA08EB382D69 * (v38 ^ (v38 >> 47));
    v40 = v6[37];
    if (!*&v40)
    {
      goto LABEL_33;
    }

    v41 = vcnt_s8(v40);
    v41.i16[0] = vaddlv_u8(v41);
    if (v41.u32[0] > 1uLL)
    {
      v42 = 0x9DDFEA08EB382D69 * (v38 ^ (v38 >> 47));
      if (v39 >= *&v40)
      {
        v42 = v39 % *&v40;
      }
    }

    else
    {
      v42 = v39 & (*&v40 - 1);
    }

    v48 = *(v6[36] + v42);
    if (!v48 || (v49 = *v48) == 0)
    {
LABEL_33:
      operator new();
    }

    while (1)
    {
      v50 = v49[1];
      if (v50 == v39)
      {
        if (v49[2] == v30)
        {
          v51 = GEOGetVectorKitARWalkingContinueLabelFeatureLog();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            md::LabelIdentifier::to_string(&__p, v60);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            v54 = **a1;
            v55 = *a3;
            v56 = *a2;
            v57 = *(a2 + 1);
            *buf = 136316162;
            *&buf[4] = p_p;
            *&buf[12] = 2112;
            *&buf[14] = v54;
            *&buf[22] = 2048;
            *v62 = v55;
            *&v62[8] = 1024;
            *&v62[10] = v56;
            v63 = 2048;
            v64 = v57;
            _os_log_impl(&dword_1B2754000, v51, OS_LOG_TYPE_INFO, "Added placement (%s) for %@ - distanceFromStart:%f routeCoordinate:(%d,%f)", buf, 0x30u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          return;
        }
      }

      else
      {
        if (v41.u32[0] > 1uLL)
        {
          if (v50 >= *&v40)
          {
            v50 %= *&v40;
          }
        }

        else
        {
          v50 &= *&v40 - 1;
        }

        if (v50 != v42)
        {
          goto LABEL_33;
        }
      }

      v49 = *v49;
      if (!v49)
      {
        goto LABEL_33;
      }
    }
  }

  v43 = GEOGetVectorKitARWalkingContinueLabelFeatureLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = **a1;
    v45 = *a3;
    v46 = *a2;
    v47 = *(a2 + 1);
    *buf = 138413058;
    *&buf[4] = v44;
    *&buf[12] = 2048;
    *&buf[14] = v45;
    *&buf[22] = 1024;
    *v62 = v46;
    *&v62[4] = 2048;
    *&v62[6] = v47;
    _os_log_impl(&dword_1B2754000, v43, OS_LOG_TYPE_INFO, "Failed to add placement for %@ - distanceFromStart:%f routeCoordinate:(%d,%f)", buf, 0x26u);
  }
}

void ___ZL47GEOGetVectorKitARWalkingContinueLabelFeatureLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARWalkingContinueLabelFeature");
  v1 = GEOGetVectorKitARWalkingContinueLabelFeatureLog(void)::log;
  GEOGetVectorKitARWalkingContinueLabelFeatureLog(void)::log = v0;
}

uint64_t *md::ARWalkingContinueLabelFeature::setHighPrecisionAltitudeForPlacement(uint64_t *result, unsigned int a2, uint64_t a3, char a4, double a5)
{
  v5 = result[34];
  if (v5)
  {
    v8 = result;
    v9 = result + 34;
    do
    {
      v10 = *(v5 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v5;
      }

      v5 = *(v5 + 8 * v12);
    }

    while (v5);
    if (v9 != result + 34 && *(v9 + 8) <= a2)
    {
      v13 = v9[5];
      if (v13)
      {
        v14 = a5;
        if (a4)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0.0;
        }

        if (*(v13 + 144))
        {
          goto LABEL_14;
        }

        if (*a3)
        {
          if (!md::HighPrecisionAltitudeRequest::resolveResults(*a3))
          {
LABEL_14:
            for (i = 160; i != 168; i += 4)
            {
              v22 = *(v13 + i);
              v23 = &v22;
              result = std::__tree<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,md::Ribbons::RibbonBatch<md::Ribbons::TransitRibbonDescriptor> *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v8 + 41, v22, &v23);
              result[5] = v13;
            }

            return result;
          }

          v17 = *a3;
        }

        else
        {
          v17 = 0;
        }

        *(v13 + 136) = 1;
        v18 = *(a3 + 8);
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v19 = *(v13 + 152);
        *(v13 + 144) = v17;
        *(v13 + 152) = v18;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v20 = 3;
        v21 = v13;
        do
        {
          v21[6] = *v21;
          ++v21;
          --v20;
        }

        while (v20);
        *(v13 + 88) = *(v13 + 40);
        *(v13 + 72) = *(v13 + 24);
        *(v13 + 91) = *(v13 + 43);
        if (a4)
        {
          *(v13 + 88) = v15;
        }

        goto LABEL_14;
      }
    }
  }

  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Textured::PoleTextured>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Textured::PoleTextured>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Textured::PoleTextured>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Textured::PoleTextured>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A328F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Textured::PoleTexturedMesh::~PoleTexturedMesh(ggl::Textured::PoleTexturedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::Textured::PoleTextured>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Textured::PoleTextured>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::Textured::Pos2DUVPipelineSetup::constantDataIsEnabled(ggl::Textured::Pos2DUVPipelineSetup *this, unint64_t a2)
{
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 306);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void ggl::Textured::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::Textured::SRGBBlendPos4DUVPipelineSetup::constantDataIsEnabled(ggl::Textured::SRGBBlendPos4DUVPipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 304);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 306);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::Textured::SRGBBlendPos4DUVPipelineSetup::~SRGBBlendPos4DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::Textured::SRGBBlendPos2DUVPipelineSetup::constantDataIsEnabled(ggl::Textured::SRGBBlendPos2DUVPipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 304);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 306);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::Textured::SRGBBlendPos2DUVPipelineSetup::~SRGBBlendPos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup::constantDataIsEnabled(ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    if (a2 == 4)
    {
      v2 = *(*(this + 2) + 304);
      return v2 & 1;
    }

    goto LABEL_8;
  }

  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 306);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
  }

  return v2 & 1;
}

void ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup::~SRGBBlendColormappedPos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::Textured::Pos2DUVExtendedPipelineSetup::constantDataIsEnabled(ggl::Textured::Pos2DUVExtendedPipelineSetup *this, unint64_t a2)
{
  v2 = 1;
  if (a2 >= 2 && a2 != 3)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 306);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

void ggl::Textured::Pos2DUVExtendedPipelineSetup::~Pos2DUVExtendedPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Textured::ScreenTexturedQuadPipelineSetup::~ScreenTexturedQuadPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Textured::PoleTexturedBlendPipelineSetup::~PoleTexturedBlendPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::OptimizedTraffic::BaseMesh::~BaseMesh(ggl::OptimizedTraffic::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::OptimizedTraffic::BaseMesh::~BaseMesh(ggl::OptimizedTraffic::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::OptimizedTraffic::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::OptimizedTraffic::BasePipelineState::~BasePipelineState(ggl::OptimizedTraffic::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::OptimizedTraffic::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::HybridMapEngineMode::applyRenderLayerSettings(uint64_t a1, uint64_t a2, void *a3)
{
  md::BaseHybridMapEngineMode::applyRenderLayerSettings(a1, a2, a3);
  v5 = *(a2 + 41936);
  v6 = *v5;
  v7 = v5[1];
  if (v6 == v7)
  {
    goto LABEL_11;
  }

  v8 = v6;
  while (*v8 != 2)
  {
    v8 += 16;
    if (v8 == v7)
    {
      goto LABEL_11;
    }
  }

  if (v8 == v7 || !*(v8 + 8))
  {
LABEL_11:
    while (v6 != v7)
    {
      if (*v6 == 4)
      {
        if (v6 == v7 || !*(v6 + 8))
        {
          return;
        }

        goto LABEL_15;
      }

      v6 += 16;
    }
  }

  else
  {
LABEL_15:
    v9 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x2Fu);
    if (v9)
    {
      if (*(v9 + 17) == 2)
      {
        *(v9 + 17) = 1;
      }
    }
  }
}

void md::HybridMapEngineMode::~HybridMapEngineMode(md::HybridMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **md::HybridMapEngineMode::HybridMapEngineMode(uint64_t **this, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = 9;
  }

  else
  {
    v4 = 7;
  }

  *md::BaseHybridMapEngineMode::BaseHybridMapEngineMode(this, v4, a2) = &unk_1F2A32A88;
  if (a2)
  {
    v6 = 45;
    v7 = a2;
    md::MapEngineMode::addRequiredMapDataTypes(this, &v6, 1);
    v6 = 21;
    v7 = a2;
    v8 = 76;
    v9 = a2;
    v10 = 77;
    v11 = a2;
    md::MapEngineMode::addOptionalMapDataTypes(this, &v6, 3);
    LOBYTE(v6) = 35;
    md::MapEngineMode::addRequiredRenderLayers(this, &v6, 1);
    LOBYTE(v6) = 47;
  }

  else
  {
    v6 = 2;
    v7 = 0;
    md::MapEngineMode::addRequiredMapDataTypes(this, &v6, 1);
    LOBYTE(v6) = 21;
    md::MapEngineMode::addRequiredRenderLayers(this, &v6, 1);
    v6 = 18;
    v7 = 0;
    md::MapEngineMode::addOptionalMapDataTypes(this, &v6, 1);
    LOBYTE(v6) = 43;
  }

  md::MapEngineMode::addAllowedRenderLayers(this, &v6, 1);
  v6 = 19;
  v7 = a2;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v6, 1);
  v6 = 10284;
  md::MapEngineMode::addOptionalRenderLayers(this, &v6, 2);
  v6 = 53;
  v7 = a2;
  v8 = 20;
  v9 = a2;
  v10 = 24;
  v11 = a2;
  v12 = 26;
  v13 = a2;
  v14 = 69;
  v15 = a2;
  v16 = 74;
  v17 = a2;
  md::MapEngineMode::addAllowedMapDataTypes(this, &v6, 6);
  return this;
}

unsigned __int8 *md::HikingRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 49) - *(a1 + 48) + 1;
  v7 = geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[]((a1 + 416), a3);
  v8 = ggl::StencilManager::reserveStencilValues(*(a2 + 24), v6, v7, 0) - *(a1 + 48);
  *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[]((a1 + 368), a3) = v8;
  v9 = +[VKSharedResourcesManager sharedResources];
  v10 = *([v9 gglDevice] + 20);

  if (v10 == 1)
  {
    result = geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[]((a1 + 392), a3);
    *result = 0;
  }

  else
  {
    v14 = 0;
    v12 = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 3, &v14, 0);
    result = geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[]((a1 + 392), a3);
    *result = v12;
    v13 = v14;
    if (v14)
    {
      result = geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[]((a1 + 416), a3);
      *result = v13;
    }
  }

  return result;
}

char *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](char **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_10;
  }

  v5 = *a1;
  while (*a2 != *v5 || a2[1] != v5[1])
  {
    v5 += 8;
    if (v5 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    v7 = *a2;
    if (v3 == v4)
    {
      goto LABEL_19;
    }

    v5 = *a1;
    while (*v5 != *a2 || v5[1] != v7 >> 8)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    if (v5 == v4)
    {
LABEL_19:
      v9 = a1[2];
      if (v4 >= v9)
      {
        v11 = (v4 - v3) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v12 = v9 - v3;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(v14);
        }

        v15 = (8 * v11);
        *v15 = v7;
        v10 = (8 * v11 + 8);
        v16 = a1[1] - *a1;
        v17 = v15 - v16;
        memcpy(v15 - v16, *a1, v16);
        v18 = *a1;
        *a1 = v17;
        a1[1] = v10;
        a1[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v4 = v7;
        v10 = v4 + 8;
      }

      a1[1] = v10;
      v5 = v10 - 8;
    }
  }

  return v5 + 4;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::HikingRenderLayer::layout(md::HikingRenderLayer *this, const md::LayoutContext *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = md::LayoutContext::get<md::SettingsContext>(*(a2 + 1));
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    if (*v5 == 34)
    {
      if (v5 != v6)
      {
        v7 = *(v5 + 8) == 0;
        goto LABEL_8;
      }

      break;
    }

    v5 += 16;
  }

  v7 = 1;
LABEL_8:
  v51 = v7;
  v8 = *(this + 44);
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  v9 = gdc::Context::get<md::HikingContext>(*(a2 + 1));
  v10 = *(this + 61);
  v11 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *v10);
  if (v11)
  {
    v12 = *(*(v11 + 16) + 8 * v10[1]);
  }

  else
  {
    v12 = 0;
  }

  v62 = v12;
  v13 = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 46, v10);
  v14 = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 49, *(this + 61));
  ggl::CommandBuffer::clearRenderItems(v12);
  *(v12 + 4) = *geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[](this + 52, *(this + 61));
  LOBYTE(v63[0]) = 0;
  v76 = 0;
  v50 = v13;
  md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::layoutStencilTiles(this, a2, v12, v13, v63);
  v61 = 0;
  v15 = *(this + 61);
  if ((*(this + 62) - v15) < 3)
  {
    v49 = 0;
  }

  else
  {
    v16 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(v15 + 2));
    if (v16)
    {
      v17 = *(*(v16 + 16) + 8 * *(v15 + 3));
    }

    else
    {
      v17 = 0;
    }

    v61 = v17;
    ggl::CommandBuffer::clearRenderItems(v17);
    *(v17 + 4) = *geo::linear_map<md::CommandBufferLocation,ggl::ClearItem *,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>,std::vector<std::pair<md::CommandBufferLocation,ggl::ClearItem *>>>::operator[](this + 52, (*(this + 61) + 2));
    LODWORD(v49) = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 46, (*(this + 61) + 2));
    HIDWORD(v49) = *geo::linear_map<md::CommandBufferLocation,int,std::equal_to<md::CommandBufferLocation>,std::allocator<std::pair<md::CommandBufferLocation,int>>,std::vector<std::pair<md::CommandBufferLocation,int>>>::operator[](this + 49, (*(this + 61) + 2));
  }

  v18 = gdc::Context::context<md::PolygonContext>(*(a2 + 1));
  if (v18)
  {
    v19 = *(v18 + 4);
  }

  else
  {
    v19 = 0;
  }

  md::RibbonLayoutContext::RibbonLayoutContext(v52, a2);
  v57 = 0x10000;
  v58 = 1065353216;
  v59 = 0;
  v60 = 0;
  v20 = +[VKDebugSettings sharedSettings];
  [v20 ribbonCrispness];
  v54 = v21;

  v22 = *(this + 55);
  v55 = *(*(v22 + 120) + 8);
  v60 = v22;
  HIBYTE(v59) = (*(this + 91) == 0) & v19;
  v23 = 1.0;
  if (*(this + 34) == 17)
  {
    v23 = v9[1];
  }

  v58 = LODWORD(v23);
  LOBYTE(v59) = 1;
  if (md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1)))
  {
    v56 = 0;
  }

  md::RoadStyling::update(**(this + 60), *(*(this + 60) + 8), v52);
  v24 = *(this + 34);
  v25 = *(this + 35);
  if (v24 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0;
    do
    {
      v27 = *v24;
      v28 = *(*v24 + 392);
      HIBYTE(v57) = 0;
      LOBYTE(v53) = *(this + 360);
      v29 = v14;
      if (v53 == 1)
      {
        v29 = v50 + *(v28 + 169);
      }

      HIBYTE(v53) = v29;
      md::RoadTileData::updateWithContext(v28, a2, *(v27 + 56), (v27 + 240));
      v30 = *(v28 + 728);
      if (v30)
      {
        v31 = *(v30 + 208);
        v32 = *(this + 55);
        if (v31)
        {
          v33 = v31 == v32;
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          md::RoadLayer::setSharedResources(*(v28 + 728), v32);
        }

        md::RoadLayer::layout(v30, v52);
        v63[0] = &off_1F2A36810;
        v63[1] = v62;
        v65 = v63;
        md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::collectRenderItemsForPasses(*(v30 + 8), *(v30 + 16), v63);
        std::__function::__value_func<void ()(md::Ribbons::RoadRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](v63);
      }

      v34 = *(v28 + 736);
      if (v34)
      {
        md::RibbonLayoutContext::RibbonLayoutContext(v63, a2);
        v72 = 0;
        v73 = 0;
        LOWORD(v70) = v53;
        v75 = v59;
        v74 = v58;
        v35 = *(v34 + 200);
        v36 = *(this + 59);
        if (v35)
        {
          v37 = v35 == v36;
        }

        else
        {
          v37 = 0;
        }

        if (!v37)
        {
          *(v34 + 200) = v36;
        }

        md::PatternedLayer::layout(v34, v63);
        v77 = &off_1F2A36858;
        v78 = v62;
        v80 = &v77;
        md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::collectRenderItemsForPasses(*(v34 + 8), *(v34 + 16), &v77);
        std::__function::__value_func<void ()(md::Ribbons::PatternedRibbonDescriptor::Passes,ggl::RenderItem *)>::~__value_func[abi:nn200100](&v77);
      }

      if (*(v27 + 408) != 0 && !v51)
      {
        md::JunctionLayoutContext::JunctionLayoutContext(v63, a2);
        v66 = v53;
        v39 = BYTE4(v49);
        if (v53 == 1)
        {
          v39 = v49 + *(v28 + 169);
        }

        v67 = v39;
        v41 = *(v27 + 240);
        v40 = *(v27 + 248);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v71;
        v70 = v41;
        v71 = v40;
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v42);
        }

        v44 = *(v27 + 224);
        v43 = *(v27 + 232);
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = v69;
        v68 = v44;
        v69 = v43;
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v45);
        }

        v46 = *(v27 + 408);
        v47 = *(v46 + 14);
        v48 = *(this + 64);
        if (!v47 || v47 != v48)
        {
          *(v46 + 14) = v48;
        }

        md::TrailJunctionsResource::updateWithContext(v46, v63, v38);
        v77 = &unk_1F2A32BC0;
        v78 = &v62;
        v79 = &v61;
        v80 = &v77;
        md::TrailJunctionsResource::collectRenderItems(v46, &v77);
        std::__function::__value_func<void ()(ggl::RenderItem *,BOOL)>::~__value_func[abi:nn200100](&v77);
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v71);
        }

        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v69);
        }

        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v64);
        }

        v26 = 1;
      }

      ++v24;
    }

    while (v24 != v25);
  }

  ggl::CommandBuffer::sortRenderItems(*(v62 + 9), *(v62 + 10));
  if (v26)
  {
    if (v61)
    {
      LOBYTE(v63[0]) = 0;
      v76 = 0;
      md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::layoutStencilTiles(this, a2, v61, v49, v63);
      ggl::CommandBuffer::stableSortRenderItems(*(v61 + 9), *(v61 + 10));
    }
  }
}

ggl::zone_mallocator *std::__function::__func<md::HikingRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::HikingRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(ggl::RenderItem *,BOOL)>::operator()(uint64_t a1, ggl::RenderItem **a2, unsigned __int8 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *(v3 + 6) = 0;
  if (v4 == 1)
  {
    result = **(a1 + 8);
    return ggl::CommandBuffer::pushRenderItem(result, v3);
  }

  result = **(a1 + 16);
  if (result)
  {
    return ggl::CommandBuffer::pushRenderItem(result, v3);
  }

  return result;
}

__n128 std::__function::__func<md::HikingRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::HikingRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(ggl::RenderItem *,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A32BC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL md::TransitLineLabelFeature::hasAnnotatedShieldText(md::TransitLineLabelFeature *this)
{
  v1 = *(this + 10);
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 264);
  if (!v3)
  {
    v4 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*(this + 10));
    v3 = *v4;
    *(v1 + 264) = *v4;
  }

  return *(v3 + 56) == 1 && *(v3 + 60) == 1 && *(*(this + 10) + 144) - 3 < 2;
}

void md::TransitLineLabelFeature::removeTile(uint64_t a1, uint64_t *a2)
{
  md::LabelLineStore::removeRoadFeaturesInTile<geo::codec::VectorTile>(*(a1 + 192), a2);
  std::mutex::lock((a1 + 608));
  v5 = *(a1 + 688);
  v6 = *(a1 + 696);
  if (v5 >= v6)
  {
    v10 = *(a1 + 680);
    v11 = (v5 - v10) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v6 - v10;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v28 = a1 + 704;
    if (v14)
    {
      v15 = mdm::zone_mallocator::instance(v4);
      v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitLineLabelFeature::WorkUnit>(v15, v14);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[32 * v11];
    *(&v27 + 1) = &v16[32 * v14];
    *v17 = 2;
    v19 = *a2;
    v18 = a2[1];
    *(v17 + 1) = 0;
    *(v17 + 2) = v19;
    *(v17 + 3) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    *&v27 = v17 + 32;
    v20 = *(a1 + 688);
    v21 = *(a1 + 680);
    v22 = &v17[v21 - v20];
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator>,md::TransitLineLabelFeature::WorkUnit*>(v21, v20, v22);
    v23 = *(a1 + 680);
    *(a1 + 680) = v22;
    v24 = *(a1 + 696);
    v25 = v27;
    *(a1 + 688) = v27;
    *&v27 = v23;
    *(&v27 + 1) = v24;
    v26[0] = v23;
    v26[1] = v23;
    std::__split_buffer<md::TransitLineLabelFeature::WorkUnit,geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator> &>::~__split_buffer(v26);
    v9 = v25;
  }

  else
  {
    *v5 = 2;
    v8 = *a2;
    v7 = a2[1];
    *(v5 + 8) = 0;
    *(v5 + 16) = v8;
    *(v5 + 24) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v5 + 32;
  }

  *(a1 + 688) = v9;
  atomic_store(1u, (a1 + 672));

  std::mutex::unlock((a1 + 608));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitLineLabelFeature::WorkUnit>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 32 * a2, 0x1020040509EF904uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator>,md::TransitLineLabelFeature::WorkUnit*>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      a3[1] = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v5 += 32;
      a3 += 2;
    }

    while (v5 != a2);
    do
    {
      v6 = *(v4 + 24);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v4 += 32;
    }

    while (v4 != a2);
  }
}

std::__shared_weak_count *std::__split_buffer<md::TransitLineLabelFeature::WorkUnit,geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 32;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 32;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::WorkUnit>(v5, v4);
  }

  return v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::WorkUnit>(uint64_t a1, void *a2)
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

void md::TransitLineLabelFeature::debugPopulateAttributeStrings(md::TransitLineLabelFeature *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v51 = a2;
  md::LineLabelPlacer::positionForIdentifier(&v52, this + 192, *a4);
  if (!v52)
  {
    goto LABEL_11;
  }

  v6 = (*(*v52 + 128))(v52);
  v7 = *(this + 72);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = (this + 576);
  do
  {
    v9 = v7[4];
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = v7[v11];
  }

  while (v7);
  if (v8 == (this + 576) || v8[4] > v6 || (v12 = v8[5]) == 0)
  {
LABEL_11:
    v13 = **(this + 63);
    if (v13)
    {
      v12 = v13 + 8;
    }

    else
    {
      v12 = 0;
    }
  }

  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (v14 != v15)
  {
    v16 = 0;
    do
    {
      v17 = *(this + 67) + 32 * *(v14 + 14);
      v60[0] = 0;
      v60[1] = 0;
      v61 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      if (*(v17 + 8) == 255)
      {
        if (*(v17 + 12))
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v60, (*(this + 44) + 48 * *(v17 + 10)));
          if (SHIBYTE(v59) < 0)
          {
            v58 = 6;
            v20 = v57;
          }

          else
          {
            HIBYTE(v59) = 6;
            v20 = &v57;
          }

          strcpy(v20, "SHIELD");
        }
      }

      else
      {
        v18 = (*(*this + 480))(this);
        if (v18)
        {
          v56 = *(v18 + 24);
          if (*(v18 + 23) < 0)
          {
            std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, *v18, *(v18 + 8));
          }

          else
          {
            v19 = *v18;
            v55 = *(v18 + 16);
            __dst = v19;
          }
        }

        else
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&__dst, "");
        }

        v21 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v60, &__dst);
        if (SHIBYTE(v55) < 0)
        {
          v22 = __dst;
          v23 = mdm::zone_mallocator::instance(v21);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, v22);
        }

        v24 = (*(*this + 488))(this, *(v17 + 8));
        if (v24)
        {
          v56 = *(v24 + 24);
          if (*(v24 + 23) < 0)
          {
            std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, *v24, *(v24 + 8));
          }

          else
          {
            v25 = *v24;
            v55 = *(v24 + 16);
            __dst = v25;
          }
        }

        else
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&__dst, "");
        }

        v26 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(&v57, &__dst);
        if (SHIBYTE(v55) < 0)
        {
          v27 = __dst;
          v28 = mdm::zone_mallocator::instance(v26);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v28, v27);
        }
      }

      __dst = 0uLL;
      v29 = *(v14 + 16);
      if (v29 == -1)
      {
        v29 = *(v17 + 24);
      }

      v30 = (*(this + 34) + 80 * v29);
      v31 = *v30;
      v32 = v30[1];
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
        *&__dst = v31;
        *(&__dst + 1) = v32;
      }

      else
      {
        *&__dst = v31;
      }

      v33 = MEMORY[0x1E696AEC0];
      v34 = SHIBYTE(v61);
      v35 = v60[0];
      v36 = SHIBYTE(v59);
      v37 = v57;
      v38 = md::HighlightHelper::debugAttributesToString(&__dst);
      v39 = v38;
      v40 = &v57;
      if (v36 < 0)
      {
        v40 = v37;
      }

      v41 = v60;
      if (v34 < 0)
      {
        v41 = v35;
      }

      v42 = [v33 stringWithFormat:@"[%i]%s(%s):{%@}", v16, v41, v40, v38];
      [(NSMutableSet *)v51 addObject:v42];

      v43 = md::LabelFeature::debugClientAttributesToString(&__dst, *(a3 + 42));
      if (v43)
      {
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v43];
        [(NSMutableSet *)v51 addObject:v44];
      }

      v45 = *(&__dst + 1);
      if (*(&__dst + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&__dst + 1));
      }

      if (SHIBYTE(v59) < 0)
      {
        v46 = v57;
        v47 = mdm::zone_mallocator::instance(v45);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v47, v46);
      }

      if (SHIBYTE(v61) < 0)
      {
        v48 = v60[0];
        v49 = mdm::zone_mallocator::instance(v45);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v49, v48);
      }

      v14 += 20;
      v16 = (v16 + 1);
    }

    while (v14 != v15);
  }

  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }
}

void sub_1B310930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void md::TransitLineLabelFeature::populateFeatureIDs(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 544);
  v5 = *(a1 + 536);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v10 = 0;
  }

  else
  {
    v7 = v6 >> 5;
    std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__vallocate[abi:nn200100](&v37, v6 >> 5);
    v8 = v38;
    bzero(v38, v6 >> 2);
    v9 = 0;
    v10 = &v8[v6 >> 2];
    v38 = v10;
    v6 = v37;
    if (v7 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v7;
    }

    v12 = vdupq_n_s64(v11 - 1);
    v13 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = xmmword_1B33B0560;
    v15 = vdupq_n_s64(2uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v12, v14));
      if (v16.i8[0])
      {
        *(v6 + 8 * v9) = v9;
      }

      if (v16.i8[4])
      {
        *(v6 + 8 * v9 + 8) = v9 + 1;
      }

      v9 += 2;
      v14 = vaddq_s64(v14, v15);
    }

    while (v13 != v9);
  }

  v17 = 126 - 2 * __clz(&v10[-v6] >> 3);
  v36[0] = a1;
  if (v10 == v6)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,false>(v6, v10, v36, v18, 1);
  if (v10 != v6)
  {
    v20 = a2[1];
    do
    {
      v21 = (*(a1 + 536) + 32 * *v6);
      v22 = a2[2];
      if (v20 >= v22)
      {
        v23 = *a2;
        v24 = v20 - *a2;
        v25 = v24 >> 3;
        v26 = (v24 >> 3) + 1;
        if (v26 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = v22 - v23;
        if (v27 >> 2 > v26)
        {
          v26 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v28 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v26;
        }

        v36[4] = (a2 + 3);
        if (v28)
        {
          v29 = mdm::zone_mallocator::instance(v19);
          v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v29, v28);
          v23 = *a2;
          v24 = a2[1] - *a2;
        }

        else
        {
          v30 = 0;
        }

        v31 = &v30[8 * v25];
        v32 = &v30[8 * v28];
        v33 = &v31[-8 * (v24 >> 3)];
        *v31 = *v21;
        v20 = v31 + 8;
        memcpy(v33, v23, v24);
        v34 = *a2;
        *a2 = v33;
        a2[1] = v20;
        v35 = a2[2];
        a2[2] = v32;
        v36[2] = v34;
        v36[3] = v35;
        v36[0] = v34;
        v36[1] = v34;
        v19 = std::__split_buffer<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator> &>::~__split_buffer(v36);
      }

      else
      {
        *v20++ = *v21;
      }

      a2[1] = v20;
      v6 += 8;
    }

    while (v6 != v10);
  }

  std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v37);
}

char *std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v94 = *v11;
        if (*(*(*a3 + 536) + 32 * *v10 + 16) >= *(*(*a3 + 536) + 32 * *v11 + 16))
        {
          return result;
        }

        *v11 = *v10;
LABEL_169:
        *v10 = v94;
        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v88 = *(*a3 + 536);

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(v11, v11 + 1, v11 + 2, a2 - 1, v88);
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v95 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v96 = 0;
            v97 = *(*a3 + 536);
            v98 = v11;
            do
            {
              v99 = v98;
              v98 = v95;
              v100 = v99[1];
              v101 = v97 + 32 * v100;
              v102 = *(v101 + 20);
              if (*(v101 + 16) < *(v97 + 32 * *v99 + 16))
              {
                v99[1] = *v99;
                v103 = v11;
                if (v99 != v11)
                {
                  v104 = v96;
                  while (1)
                  {
                    result = v97 + 32 * *(v11 + v104 - 8);
                    v105 = *(result + 20);
                    if (v102 >= v105)
                    {
                      if (v102 != v105)
                      {
                        v103 = (v11 + v104);
                        goto LABEL_189;
                      }

                      result = *(result + 16);
                      if (*(v101 + 16) >= result)
                      {
                        break;
                      }
                    }

                    --v99;
                    *(v11 + v104) = *(v11 + v104 - 8);
                    v104 -= 8;
                    if (!v104)
                    {
                      v103 = v11;
                      goto LABEL_189;
                    }
                  }

                  v103 = v99;
                }

LABEL_189:
                *v103 = v100;
              }

              v95 = v98 + 1;
              v96 += 8;
            }

            while (v98 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = *(*a3 + 536);
          do
          {
            v146 = v9;
            v9 = v144;
            v148 = *v146;
            v147 = v146[1];
            v149 = v145 + 32 * v147;
            v150 = *(v149 + 20);
            if (*(v149 + 16) < *(v145 + 32 * *v146 + 16))
            {
              do
              {
                v151 = v146;
                v152 = *--v146;
                v146[2] = v148;
                v148 = v152;
              }

              while (__PAIR64__(v150, *(v149 + 16)) < *(v145 + 32 * v152 + 16));
              *v151 = v147;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v106 = (v12 - 2) >> 1;
      v107 = *a3;
      v108 = v106;
      do
      {
        v109 = v108;
        if (v106 >= v108)
        {
          v110 = (2 * v108) | 1;
          v111 = &v11[v110];
          if (2 * v109 + 2 >= v12)
          {
            v112 = *(v107 + 536);
          }

          else
          {
            v112 = *(v107 + 536);
            if (*(v112 + 32 * *v111 + 16) < *(v112 + 32 * *(v111 + 4) + 16))
            {
              ++v111;
              v110 = 2 * v109 + 2;
            }
          }

          result = *v111;
          v113 = v11[v109];
          v114 = v112 + 32 * v113;
          v115 = *(v114 + 20);
          if (*(v112 + 32 * *v111 + 16) >= *(v114 + 16))
          {
            v11[v109] = result;
            if (v106 >= v110)
            {
              while (1)
              {
                v116 = 2 * v110;
                v110 = (2 * v110) | 1;
                result = &v11[v110];
                v117 = v116 + 2;
                if (v117 < v12 && *(v112 + 32 * *result + 16) < *(v112 + 32 * *(result + 8) + 16))
                {
                  result += 8;
                  v110 = v117;
                }

                if (*(v112 + 32 * *result + 16) < __PAIR64__(v115, *(v114 + 16)))
                {
                  break;
                }

                *v111 = *result;
                v111 = result;
                if (v106 < v110)
                {
                  goto LABEL_202;
                }
              }
            }

            result = v111;
LABEL_202:
            *result = v113;
          }
        }

        v108 = v109 - 1;
      }

      while (v109);
      while (2)
      {
        v118 = 0;
        v119 = *v11;
        v120 = *a3;
        v121 = v11;
        do
        {
          v122 = v121;
          v123 = &v121[v118];
          v121 = v123 + 1;
          v124 = 2 * v118;
          v118 = (2 * v118) | 1;
          v125 = v124 + 2;
          if (v125 < v12)
          {
            v127 = *(v123 + 8);
            v126 = v123 + 2;
            v128 = *(v120 + 536);
            v129 = v128 + 32 * *(v126 - 4);
            v130 = *(v129 + 20);
            result = v128 + 32 * v127;
            v131 = *(result + 20);
            if (v130 < v131 || v130 == v131 && (result = *(result + 16), *(v129 + 16) < result))
            {
              v121 = v126;
              v118 = v125;
            }
          }

          *v122 = *v121;
        }

        while (v118 <= ((v12 - 2) >> 1));
        if (v121 != --a2)
        {
          *v121 = *a2;
          *a2 = v119;
          v132 = (v121 - v11 + 8) >> 3;
          v133 = v132 - 2;
          if (v132 < 2 || (v134 = v133 >> 1, v135 = &v11[v133 >> 1], v119 = *v121, v136 = *(v120 + 536), result = v136 + 32 * *v135, v137 = *(result + 20), v138 = v136 + 32 * *v121, v139 = *(v138 + 20), v137 >= v139) && (v137 != v139 || (result = *(result + 16), result >= *(v138 + 16))))
          {
LABEL_233:
            if (v12-- <= 2)
            {
              return result;
            }

            continue;
          }

          *v121 = *v135;
          if (v133 >= 2)
          {
            while (1)
            {
              v140 = v134 - 1;
              v134 = (v134 - 1) >> 1;
              v121 = &v11[v134];
              result = v136 + 32 * *v121;
              v141 = *(result + 20);
              if (v141 >= v139)
              {
                if (v141 != v139)
                {
                  break;
                }

                result = *(result + 16);
                if (result >= *(v138 + 16))
                {
                  break;
                }
              }

              *v135 = *v121;
              v135 = &v11[v134];
              if (v140 <= 1)
              {
                goto LABEL_232;
              }
            }
          }

          v121 = v135;
        }

        break;
      }

LABEL_232:
      *v121 = v119;
      goto LABEL_233;
    }

    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = v14;
    v16 = *(*a3 + 536);
    if (v12 >= 0x81)
    {
      v17 = *v14;
      v18 = *v11;
      v19 = v16 + 32 * *v14;
      v20 = v16 + 32 * *v11;
      v21 = *(v20 + 20);
      if (*(v19 + 16) < *(v20 + 16))
      {
        if (*(v16 + 32 * *v10 + 16) < *(v19 + 16))
        {
          *v11 = *v10;
        }

        else
        {
          *v11 = v17;
          *v14 = v18;
          if (*(v16 + 32 * *v10 + 16) >= __PAIR64__(v21, *(v20 + 16)))
          {
            goto LABEL_31;
          }

          *v14 = *v10;
        }

        *v10 = v18;
        goto LABEL_31;
      }

      if (*(v16 + 32 * *v10 + 16) < *(v19 + 16))
      {
        *v14 = *v10;
        *v10 = v17;
        v28 = *v11;
        if (*(v16 + 32 * *v14 + 16) < *(v16 + 32 * *v11 + 16))
        {
          *v11 = *v14;
          *v14 = v28;
        }
      }

LABEL_31:
      v30 = v13 - 1;
      v31 = v11[v13 - 1];
      v32 = v11[1];
      v33 = v16 + 32 * v31;
      v34 = v16 + 32 * v32;
      v35 = *(v34 + 20);
      if (*(v33 + 16) < *(v34 + 16))
      {
        if (*(v16 + 32 * *(a2 - 2) + 16) < *(v33 + 16))
        {
          v11[1] = *(a2 - 2);
        }

        else
        {
          v11[1] = v31;
          v11[v30] = v32;
          if (*(v16 + 32 * *(a2 - 2) + 16) >= __PAIR64__(v35, *(v34 + 16)))
          {
            goto LABEL_46;
          }

          v11[v30] = *(a2 - 2);
        }

        *(a2 - 2) = v32;
        goto LABEL_46;
      }

      if (*(v16 + 32 * *(a2 - 2) + 16) < *(v33 + 16))
      {
        v11[v30] = *(a2 - 2);
        *(a2 - 2) = v31;
        v36 = v11[1];
        if (*(v16 + 32 * v11[v30] + 16) < *(v16 + 32 * v11[1] + 16))
        {
          v11[1] = v11[v30];
          v11[v30] = v36;
        }
      }

LABEL_46:
      v39 = v14[1];
      v37 = v14 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = v16 + 32 * v39;
      v42 = v16 + 32 * v40;
      v43 = *(v42 + 20);
      if (*(v41 + 16) < *(v42 + 16))
      {
        if (*(v16 + 32 * *(a2 - 3) + 16) < *(v41 + 16))
        {
          v11[2] = *(a2 - 3);
        }

        else
        {
          v11[2] = v38;
          *v37 = v40;
          if (*(v16 + 32 * *(a2 - 3) + 16) >= __PAIR64__(v43, *(v42 + 16)))
          {
            goto LABEL_57;
          }

          *v37 = *(a2 - 3);
        }

        *(a2 - 3) = v40;
        goto LABEL_57;
      }

      if (*(v16 + 32 * *(a2 - 3) + 16) < *(v41 + 16))
      {
        *v37 = *(a2 - 3);
        *(a2 - 3) = v38;
        v44 = v11[2];
        if (*(v16 + 32 * *v37 + 16) < *(v16 + 32 * v11[2] + 16))
        {
          v11[2] = *v37;
          *v37 = v44;
        }
      }

LABEL_57:
      v45 = *v15;
      v46 = v11[v30];
      v47 = v16 + 32 * *v15;
      result = *(v47 + 20);
      v48 = v16 + 32 * v46;
      v49 = *(v48 + 20);
      if (*(v47 + 16) < *(v48 + 16))
      {
        v50 = *v37;
        v51 = v16 + 32 * *v37;
        v52 = *(v51 + 20);
        if (v52 < result || v52 == result && (result = *(v51 + 16), result < *(v47 + 16)))
        {
          v11[v30] = v50;
        }

        else
        {
          v11[v30] = v45;
          *v15 = v46;
          if (v52 >= v49 && (v52 != v49 || *(v51 + 16) >= *(v48 + 16)))
          {
            v45 = v46;
            goto LABEL_69;
          }

          *v15 = v50;
          v45 = v50;
        }
      }

      else
      {
        v53 = *v37;
        v54 = v16 + 32 * *v37;
        v55 = *(v54 + 20);
        if (v55 >= result)
        {
          if (v55 != result)
          {
            goto LABEL_69;
          }

          result = *(v54 + 16);
          if (result >= *(v47 + 16))
          {
            goto LABEL_69;
          }
        }

        *v15 = v53;
        *v37 = v45;
        if (v55 >= v49 && (v55 != v49 || *(v54 + 16) >= *(v48 + 16)))
        {
          v45 = v53;
          goto LABEL_69;
        }

        v11[v30] = v53;
        v37 = v15;
        v45 = v46;
      }

      *v37 = v46;
LABEL_69:
      v56 = *v11;
      *v11 = v45;
      *v15 = v56;
      goto LABEL_70;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = v16 + 32 * *v11;
    v25 = v16 + 32 * *v15;
    v26 = *(v25 + 20);
    if (*(v24 + 16) < *(v25 + 16))
    {
      v27 = v16 + 32 * *v10;
      result = *(v27 + 20);
      if (*(v27 + 16) < *(v24 + 16))
      {
        *v15 = *v10;
LABEL_41:
        *v10 = v23;
        goto LABEL_70;
      }

      *v15 = v22;
      *v11 = v23;
      if (*(v16 + 32 * *v10 + 16) < __PAIR64__(v26, *(v25 + 16)))
      {
        *v11 = *v10;
        goto LABEL_41;
      }
    }

    else if (*(v16 + 32 * *v10 + 16) < *(v24 + 16))
    {
      *v11 = *v10;
      *v10 = v22;
      v29 = *v15;
      if (*(v16 + 32 * *v11 + 16) < *(v16 + 32 * *v15 + 16))
      {
        *v15 = *v11;
        *v11 = v29;
      }
    }

LABEL_70:
    --a4;
    v57 = *v11;
    if (a5)
    {
      v58 = *v11;
      v59 = *(v16 + 32 * v58 + 20);
      goto LABEL_75;
    }

    v60 = v16 + 32 * *(v11 - 4);
    v61 = *(v60 + 20);
    v58 = *v11;
    v62 = v16 + 32 * v58;
    v59 = *(v62 + 20);
    if (v61 < v59 || v61 == v59 && (v59 = *(v60 + 20), *(v60 + 16) < *(v62 + 16)))
    {
LABEL_75:
      v63 = v16 + 32 * v58;
      for (i = v11 + 1; ; ++i)
      {
        v65 = *i;
        if (*(v16 + 32 * *i + 16) >= __PAIR64__(v59, *(v63 + 16)))
        {
          break;
        }
      }

      v66 = i - 1;
      if (i - 1 == v11)
      {
        v69 = a2;
        if (i < a2)
        {
          v71 = *v10;
          v72 = *(v16 + 32 * v71 + 20);
          v69 = a2 - 1;
          if (v72 >= v59)
          {
            v69 = a2 - 1;
            do
            {
              if (v72 == v59)
              {
                if (i >= v69 || *(v16 + 32 * v71 + 16) < *(v63 + 16))
                {
                  break;
                }
              }

              else if (i >= v69)
              {
                break;
              }

              v73 = *(v69-- - 4);
              v71 = v73;
              v72 = *(v16 + 32 * v73 + 20);
            }

            while (v72 >= v59);
          }
        }
      }

      else
      {
        v67 = *v10;
        v68 = *(v16 + 32 * v67 + 20);
        v69 = a2 - 1;
        while (v68 >= v59 && (v68 != v59 || *(v16 + 32 * v67 + 16) >= *(v63 + 16)))
        {
          v70 = *(v69-- - 4);
          v67 = v70;
          v68 = *(v16 + 32 * v70 + 20);
        }
      }

      if (i < v69)
      {
        v74 = *v69;
        v75 = i;
        v76 = v69;
        do
        {
          *v75++ = v74;
          *v76 = v65;
          while (1)
          {
            v65 = *v75;
            if (*(v16 + 32 * *v75 + 16) >= __PAIR64__(v59, *(v63 + 16)))
            {
              break;
            }

            ++v75;
          }

          v66 = v75 - 1;
          do
          {
            v77 = *--v76;
            v74 = v77;
          }

          while (*(v16 + 32 * v77 + 16) >= __PAIR64__(v59, *(v63 + 16)));
        }

        while (v75 < v76);
      }

      if (v66 != v11)
      {
        *v11 = *v66;
      }

      *v66 = v57;
      if (i < v69)
      {
        goto LABEL_106;
      }

      v78 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *>(v11, v66, a3);
      v11 = v66 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *>(v66 + 1, a2, a3);
      if (result)
      {
        a2 = v66;
        if (v78)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v78)
      {
LABEL_106:
        result = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,false>(v9, v66, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v66 + 1;
      }
    }

    else
    {
      v79 = *v10;
      if (__PAIR64__(v59, *(v62 + 16)) < *(v16 + 32 * v79 + 16))
      {
        do
        {
          v80 = *(v11++ + 4);
        }

        while (__PAIR64__(v59, *(v62 + 16)) >= *(v16 + 32 * v80 + 16));
      }

      else
      {
          ;
        }
      }

      v81 = a2;
      if (v11 < a2)
      {
        v81 = a2 - 1;
        while (__PAIR64__(v59, *(v62 + 16)) < *(v16 + 32 * v79 + 16))
        {
          v82 = *(v81-- - 4);
          LOWORD(v79) = v82;
        }
      }

      if (v11 < v81)
      {
        v83 = *v11;
        v84 = *v81;
        do
        {
          *v11 = v84;
          *v81 = v83;
          do
          {
            v85 = v11[1];
            ++v11;
            v83 = v85;
          }

          while (__PAIR64__(v59, *(v62 + 16)) >= *(v16 + 32 * v85 + 16));
          do
          {
            v86 = *--v81;
            v84 = v86;
          }

          while (__PAIR64__(v59, *(v62 + 16)) < *(v16 + 32 * v86 + 16));
        }

        while (v11 < v81);
      }

      v87 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v87;
      }

      a5 = 0;
      *v87 = v57;
    }
  }

  v94 = *v11;
  v89 = v11[1];
  v90 = *(*a3 + 536);
  v91 = v90 + 32 * v89;
  v92 = v90 + 32 * *v11;
  v93 = *(v92 + 20);
  if (*(v91 + 16) < *(v92 + 16))
  {
    if (*(v90 + 32 * *v10 + 16) < *(v91 + 16))
    {
      *v11 = *v10;
      goto LABEL_169;
    }

    *v11 = v89;
    v11[1] = v94;
    if (*(v90 + 32 * *v10 + 16) < __PAIR64__(v93, *(v92 + 16)))
    {
      v11[1] = *v10;
      goto LABEL_169;
    }
  }

  else if (*(v90 + 32 * *v10 + 16) < *(v91 + 16))
  {
    v11[1] = *v10;
    *v10 = v89;
    v143 = *v11;
    if (*(v90 + 32 * v11[1] + 16) < *(v90 + 32 * *v11 + 16))
    {
      *v11 = v11[1];
      v11[1] = v143;
    }
  }

  return result;
}

void std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(uint64_t a1, void *a2)
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

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a2;
  v8 = a5 + 32 * v7;
  v9 = *result;
  v10 = a5 + 32 * v9;
  v11 = *(v10 + 20);
  if (*(v8 + 16) < *(v10 + 16))
  {
    if (*(a5 + 32 * *a3 + 16) < *(v8 + 16))
    {
      *result = *a3;
    }

    else
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      v7 = *a3;
      if (*(a5 + 32 * v7 + 16) >= __PAIR64__(v11, *(v10 + 16)))
      {
        goto LABEL_17;
      }

      *a2 = v5;
    }

    *a3 = v6;
LABEL_12:
    v7 = v9;
    v5 = v6;
    goto LABEL_17;
  }

  v6 = *a3;
  v9 = *a3;
  if (*(a5 + 32 * v9 + 16) >= *(v8 + 16))
  {
    goto LABEL_12;
  }

  *a2 = v6;
  *a3 = v5;
  v12 = *result;
  if (*(a5 + 32 * *a2 + 16) < *(a5 + 32 * *result + 16))
  {
    *result = *a2;
    *a2 = v12;
    v5 = *a3;
    v7 = *a3;
  }

LABEL_17:
  if (*(a5 + 32 * *a4 + 16) < *(a5 + 32 * v7 + 16))
  {
    *a3 = *a4;
    *a4 = v5;
    v13 = *a2;
    if (*(a5 + 32 * *a3 + 16) < *(a5 + 32 * *a2 + 16))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a5 + 32 * *a2 + 16) < *(a5 + 32 * *result + 16))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(a1, a2, a3, a4, *(*a6 + 536));
  v13 = *a4;
  v14 = *(*a6 + 536);
  if (*(v14 + 32 * *a5 + 16) < *(v14 + 32 * *a4 + 16))
  {
    *a4 = *a5;
    *a5 = v13;
    v15 = *a3;
    if (*(v14 + 32 * *a4 + 16) < *(v14 + 32 * *a3 + 16))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(v14 + 32 * *a3 + 16) < *(v14 + 32 * *a2 + 16))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *a1;
        if (*(v14 + 32 * *a2 + 16) < *(v14 + 32 * *a1 + 16))
        {
          *a1 = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = *a1;
        v5 = a1[1];
        v6 = *(*a3 + 536);
        v7 = v6 + 32 * v5;
        v8 = v6 + 32 * *a1;
        v9 = *(v8 + 20);
        if (*(v7 + 16) >= *(v8 + 16))
        {
          if (*(v6 + 32 * *(a2 - 1) + 16) < *(v7 + 16))
          {
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v5;
            v21 = *a1;
            if (*(v6 + 32 * a1[1] + 16) < *(v6 + 32 * *a1 + 16))
            {
              *a1 = a1[1];
              a1[1] = v21;
            }
          }

          return 1;
        }

        if (*(v6 + 32 * *(a2 - 1) + 16) < *(v7 + 16))
        {
          *a1 = *(a2 - 1);
        }

        else
        {
          *a1 = v5;
          a1[1] = v4;
          if (*(v6 + 32 * *(a2 - 1) + 16) >= __PAIR64__(v9, *(v8 + 16)))
          {
            return 1;
          }

          a1[1] = *(a2 - 1);
        }

LABEL_30:
        *(a2 - 1) = v4;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, *(*a3 + 536));
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::populateFeatureIDs(std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *a1;
    if (*(*(*a3 + 536) + 32 * *(a2 - 1) + 16) >= *(*(*a3 + 536) + 32 * *a1 + 16))
    {
      return 1;
    }

    *a1 = *(a2 - 1);
    goto LABEL_30;
  }

LABEL_13:
  v10 = a1 + 2;
  v11 = *a1;
  v12 = a1 + 1;
  v13 = a1[1];
  v14 = *(*a3 + 536);
  v15 = v14 + 32 * v13;
  v16 = v14 + 32 * *a1;
  v17 = *(v16 + 20);
  if (*(v15 + 16) >= *(v16 + 16))
  {
    v22 = *v10;
    v23 = v14 + 32 * *v10;
    v24 = *(v23 + 20);
    if (*(v23 + 16) >= *(v15 + 16))
    {
      goto LABEL_36;
    }

    *v12 = v22;
    *v10 = v13;
    if (v24 >= v17 && (v24 != v17 || *(v23 + 16) >= *(v16 + 16)))
    {
      goto LABEL_36;
    }

    *a1 = v22;
LABEL_35:
    *v12 = v11;
    goto LABEL_36;
  }

  v18 = *v10;
  v19 = v14 + 32 * *v10;
  v20 = *(v19 + 20);
  if (*(v19 + 16) < *(v15 + 16))
  {
    *a1 = v18;
LABEL_34:
    v12 = a1 + 2;
    goto LABEL_35;
  }

  *a1 = v13;
  a1[1] = v11;
  if (v20 < v17 || v20 == v17 && *(v19 + 16) < *(v16 + 16))
  {
    *v12 = v18;
    goto LABEL_34;
  }

LABEL_36:
  v25 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = *v25;
    v29 = v14 + 32 * *v25;
    v30 = *(v29 + 20);
    if (*(v29 + 16) < *(v14 + 32 * *v10 + 16))
    {
      *v25 = *v10;
      v31 = v26;
      do
      {
        v32 = v14 + 32 * *(a1 + v31 + 8);
        v33 = *(v32 + 20);
        if (v30 >= v33)
        {
          if (v30 != v33)
          {
            v10 = (a1 + v31 + 16);
            goto LABEL_48;
          }

          if (*(v29 + 16) >= *(v32 + 16))
          {
            goto LABEL_48;
          }
        }

        --v10;
        *(a1 + v31 + 16) = *(a1 + v31 + 8);
        v31 -= 8;
      }

      while (v31 != -16);
      v10 = a1;
LABEL_48:
      *v10 = v28;
      if (++v27 == 8)
      {
        return v25 + 1 == a2;
      }
    }

    v10 = v25;
    v26 += 8;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t md::TransitLineLabelFeature::styleForElementIndex(md::TransitLineLabelFeature *this, unsigned int a2)
{
  v2 = *(this + 67);
  if (a2 >= ((*(this + 68) - v2) >> 5))
  {
    return 0;
  }

  v3 = *(v2 + 32 * a2 + 24);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 35) - *(this + 34)) >> 4) <= v3 || (v4 = *(this + 12), v3 >= (*(this + 13) - v4) >> 4))
  {
    v5 = this + 80;
  }

  else
  {
    v5 = (v4 + 16 * v3);
  }

  return *v5;
}

mdm::zone_mallocator *md::TransitLineLabelFeature::populateStyleQueries(void *a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  v12 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  v6 = a1[34];
  v7 = a1[35];
  if (v6 != v7)
  {
    v8 = v12;
    do
    {
      md::LabelStyleCache::styleQueryForFeatureAttributes(&v10, a3, v6, v8);
      std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      v6 += 10;
    }

    while (v6 != v7);
  }

  return std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](&v12, 0);
}

void sub_1B310B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B8C62190](v7, 0x1012C40B602C572, a3, a4);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

const FeatureStyleAttributes **md::TransitLineLabelFeature::style(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return (a1 + 80);
  }

  md::LineLabelPlacer::positionForIdentifier(&v23, a1 + 192, a2);
  if (!v23)
  {
    goto LABEL_20;
  }

  v10 = (*(*v23 + 128))(v23);
  v11 = *(a1 + 576);
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = a1 + 576;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v10;
    v15 = v13 < v10;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 != a1 + 576 && *(v12 + 32) <= v10 && (v16 = *(v12 + 40)) != 0)
  {
    v17 = *(v16 + 42);
    if (v17 == 0xFFFF)
    {
      v17 = *(a1 + 600);
    }

    v18 = *(v16 + 8) + 20 * v17;
    v19 = *(v18 + 16);
    if (v19 == -1)
    {
      v19 = *(*(a1 + 536) + 32 * *(v18 + 14) + 24);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 280) - *(a1 + 272)) >> 4) <= v19 || (v20 = *(a1 + 96), v19 >= ((*(a1 + 104) - v20) >> 4)))
    {
      v21 = (a1 + 80);
    }

    else
    {
      v21 = (v20 + 16 * v19);
    }
  }

  else
  {
LABEL_20:
    v21 = md::LineLabelFeature::style(a1, a2, a3, a4, a5);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  return v21;
}

void sub_1B310B48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitLineLabelFeature::publicShieldName(md::TransitLineLabelFeature *this)
{
  if (*(this + 44) == *(this + 45))
  {
    return 0;
  }

  else
  {
    return *(this + 44);
  }
}

void md::TransitLineLabelFeature::debugString(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v13, "Transit line");
  v10 = md::LineLabelFeature::debugRoadString(a5, a1, a2, a3, a4, v13);
  if (v14 < 0)
  {
    v11 = v13[0];
    v12 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
  }
}

void sub_1B310B578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitLineLabelFeature::featureID(md::TransitLineLabelFeature *this)
{
  v1 = *(this + 67);
  if (v1 == *(this + 68))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void md::TransitLineLabelFeature::populateFeatureInfo(uint64_t a1, uint64_t a2)
{
  md::LabelFeature::populateFeatureInfo(a1, a2);
  md::TransitLineLabelFeature::populateFeatureIDs(a1, (a2 + 32));
  *a2 = 0;
  *(a2 + 64) = (*(a2 + 40) - *(a2 + 32)) >> 3;
}

uint64_t md::TransitLineLabelFeature::updateDynamicStyling(md::TransitLineLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  md::LineLabelPlacer::positionForIdentifier(&v42, this + 192, *(a3 + 12));
  v5 = v42;
  if (v42)
  {
    v6 = (*(*v42 + 128))(v42);
    v7 = *(this + 72);
    if (v7)
    {
      v8 = (this + 576);
      do
      {
        v9 = v7[4];
        v10 = v9 >= v6;
        v11 = v9 < v6;
        if (v10)
        {
          v8 = v7;
        }

        v7 = v7[v11];
      }

      while (v7);
      if (v8 != (this + 576) && v8[4] <= v6)
      {
        v12 = v8[5];
        if (v12)
        {
          v13 = (*(**(*(a2 + 21) + 64) + 16))(*(*(a2 + 21) + 64));
          if (v13)
          {
            v14 = (*(*v5 + 128))(v5);
            md::LabelExternalObjectsModerator::externalTransitLink(&v40, v13, v14);
            if (v40 && (v15 = atomic_load((v40 + 104)), (v15 & 1) != 0) && (v16 = atomic_load((v40 + 105)), (v16 & 1) != 0))
            {
              md::LabelExternalTransitLink::linkData(&v38, v40);
              v17 = v38;
              if (v38 && (v18 = *(v38 + 8), *v38 != v18) && (v19 = (v18 - *v38) >> 4, v20 = *(this + 68), v21 = *(this + 67), v19 == (v20 - v21) >> 5) && 0xCCCCCCCCCCCCCCCDLL * ((*(v12 + 16) - *(v12 + 8)) >> 2) == v19)
              {
                v22 = *(v12 + 40);
                v23 = *(v38 + 33);
                v36 = v22 != v23;
                if (v22 != v23)
                {
                  *(v12 + 40) = v23;
                }

                v24 = *(v17 + 32);
                if (*(v12 + 41) != v24)
                {
                  *(v12 + 41) = v24;
                  v36 = 1;
                }

                *(v12 + 42) = -1;
                if (v20 == v21)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = 0;
                  v26 = 0;
                  if (v19 <= 1)
                  {
                    v19 = 1;
                  }

                  v35 = v19;
                  do
                  {
                    v27 = *v17 + 16 * v26;
                    v28 = *(v12 + 8) + 20 * v26;
                    if (v36 || *(v28 + 16) == -1 || *(v28 + 6) != *(v27 + 8) || *(v28 + 7) != *(v27 + 9) || *(v28 + 8) != *(v27 + 10) || *(v28 + 4) != *(v27 + 11) || *(v28 + 5) != *(v27 + 12))
                    {
                      *(v28 + 6) = *(v27 + 8);
                      *(v28 + 7) = *(v27 + 9);
                      *(v28 + 4) = *(v27 + 11);
                      std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>(&v37, *(*(this + 34) + 80 * *(*(this + 67) + 32 * v26 + 24)));
                    }

                    if (*(v28 + 4))
                    {
                      *(v12 + 42) = v26;
                    }

                    ++v26;
                  }

                  while (v26 != v35);
                }

                v33 = 1;
              }

              else
              {
                v25 = 0;
                v33 = 0;
              }

              if (v39)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v39);
              }

              if ((v33 & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v29 = *(v12 + 8);
              v30 = *(v12 + 16) - v29;
              if (!v30)
              {
LABEL_53:
                if (v41)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v41);
                }

                goto LABEL_55;
              }

              v25 = 0;
              v31 = 0xCCCCCCCCCCCCCCCDLL * (v30 >> 2);
              if (v31 <= 1)
              {
                v31 = 1;
              }

              v32 = (v29 + 16);
              do
              {
                if (*v32 != -1)
                {
                  *v32 = -1;
                  v25 = 1;
                }

                v32 += 5;
                --v31;
              }

              while (v31);
            }

            if (v25)
            {
              (*(*this + 552))(this, a2);
            }

            goto LABEL_53;
          }
        }
      }
    }
  }

LABEL_55:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  return 0;
}

void sub_1B310BBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, ...)
{
  va_start(va, a19);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(a1);
}

void md::TransitLineLabelFeature::updateText(md::TransitLineLabelFeature *this, void *a2, int a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v3 = *(this + 72);
  if (v3)
  {
    v5 = this;
    v6 = (this + 576);
    do
    {
      v7 = v3[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = v3[v9];
    }

    while (v3);
    if (v6 != (this + 576) && v6[4] <= a2)
    {
      v75 = v6[5];
      if (v75)
      {
        std::mutex::lock((this + 440));
        v10 = *(v5 + 44);
        for (i = *(v5 + 45); i != v10; std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(i))
        {
          i = (i - 48);
        }

        *(v5 + 45) = v10;
        v12 = *(v5 + 68) - *(v5 + 67);
        if (v12)
        {
          v13 = 0;
          v72 = 0;
          v14 = 0;
          v15 = (v5 + 360);
          v16 = v12 >> 5;
          if (v16 <= 1)
          {
            v16 = 1;
          }

          v73 = v16;
          v74 = v5;
          v71 = v5 + 376;
          v17 = 9;
          while (1)
          {
            v78 = v17;
            v18 = geo::codec::vectorTransitLineAlongLink(a2, v14);
            v19 = *(v5 + 67);
            v76 = *(v75 + 8);
            v20 = v19 + v13;
            *(v19 + v13 + 10) = 0xFFFF;
            v97 = 0uLL;
            v98 = 0;
            v95 = 0uLL;
            v96 = 0;
            md::LabelFeature::textFromFeature(__s, v18, a3, &v95, 0);
            v97 = *__s;
            v98 = v92;
            md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__s, &v97, &v95);
            v21 = md::LineLabelFeature::textIndexForText(v5, __s);
            *(v19 + v13 + 8) = v21;
            if (v94 < 0)
            {
              v22 = v93;
              v23 = mdm::zone_mallocator::instance(v21);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, v22);
            }

            if (SBYTE7(v92) < 0)
            {
              v24 = __s[0];
              v25 = mdm::zone_mallocator::instance(v21);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v24);
            }

            v89 = 0uLL;
            v90 = 0;
            v87 = 0uLL;
            v88 = 0;
            v82 = 0;
            v83 = 0;
            geo::codec::transitLinkExtractLineInfo(a2, v14, &v83, &v82);
            v26 = v83;
            if (v83)
            {
              v27 = v82;
              if (v82)
              {
                break;
              }
            }

            v5 = v74;
            std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v84, "");
LABEL_42:
            v89 = v84;
            v90 = v85;
            md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__s, &v89, &v87);
            v33 = md::LineLabelFeature::textIndexForText(v5, __s);
            *(v19 + v13 + 9) = v33;
            if (v94 < 0)
            {
              v34 = v93;
              v35 = mdm::zone_mallocator::instance(v33);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v35, v34);
            }

            if (SBYTE7(v92) < 0)
            {
              v36 = __s[0];
              v37 = mdm::zone_mallocator::instance(v33);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
            }

            NativeShieldCount = geo::codec::featureGetNativeShieldCount(v18);
            if (NativeShieldCount == 1 && (v39 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 45) - *(v5 + 44)) >> 4), v39 < (v72 + 1)) && v39 <= 0x3F)
            {
              v83 = 0;
              __s[0] = 0;
              geo::codec::featureGetNativeShield(v18, 0, __s, &v83, 0);
              NativeShieldCount = localizedLabel(&v84, v18, __s[0], a3, 0);
              *(v20 + 10) = v72;
              *(v20 + 12) = 1;
              v41 = *(v5 + 45);
              v40 = *(v5 + 46);
              if (v41 >= v40)
              {
                v45 = *(v5 + 44);
                v46 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v45) >> 4);
                v47 = v46 + 1;
                if (v46 + 1 > 0x555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v48 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v45) >> 4);
                if (2 * v48 > v47)
                {
                  v47 = 2 * v48;
                }

                if (v48 >= 0x2AAAAAAAAAAAAAALL)
                {
                  v49 = 0x555555555555555;
                }

                else
                {
                  v49 = v47;
                }

                v93 = v71;
                if (v49)
                {
                  v50 = mdm::zone_mallocator::instance(NativeShieldCount);
                  v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v50, v49);
                }

                else
                {
                  v51 = 0;
                }

                v53 = &v51[48 * v46];
                __s[0] = v51;
                __s[1] = v53;
                *&v92 = v53;
                *(&v92 + 1) = &v51[48 * v49];
                v54 = v83;
                v53[24] = v86;
                if (SHIBYTE(v85) < 0)
                {
                  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v53, v84, *(&v84 + 1));
                }

                else
                {
                  v55 = v84;
                  *(v53 + 2) = v85;
                  *v53 = v55;
                }

                *(v53 + 4) = v54;
                v44 = v78;
                *(v53 + 10) = *(v76 + v78);
                v53[44] = 2;
                *&v92 = v92 + 48;
                v56 = *(v5 + 44);
                v57 = *(v5 + 45);
                v58 = &__s[1][v56 - v57];
                std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(v56, v57, v58);
                v59 = *(v5 + 44);
                *(v5 + 44) = v58;
                v60 = *(v5 + 46);
                v77 = v92;
                *v15 = v92;
                *&v92 = v59;
                *(&v92 + 1) = v60;
                __s[0] = v59;
                __s[1] = v59;
                NativeShieldCount = std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(__s);
                v52 = v77;
              }

              else
              {
                v42 = v83;
                *(v41 + 24) = v86;
                if (SHIBYTE(v85) < 0)
                {
                  NativeShieldCount = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v41, v84, *(&v84 + 1));
                }

                else
                {
                  v43 = v84;
                  *(v41 + 16) = v85;
                  *v41 = v43;
                }

                *(v41 + 32) = v42;
                v44 = v78;
                *(v41 + 40) = *(v76 + v78);
                *(v41 + 44) = 2;
                v52 = v41 + 48;
                *v15 = v41 + 48;
              }

              *v15 = v52;
              if (SHIBYTE(v85) < 0)
              {
                v61 = v84;
                v62 = mdm::zone_mallocator::instance(NativeShieldCount);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v62, v61);
              }

              v72 = (v72 + 1);
            }

            else
            {
              v44 = v78;
            }

            if (SHIBYTE(v88) < 0)
            {
              v63 = v87;
              v64 = mdm::zone_mallocator::instance(NativeShieldCount);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v64, v63);
            }

            if (SHIBYTE(v90) < 0)
            {
              v65 = v89;
              v66 = mdm::zone_mallocator::instance(NativeShieldCount);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v66, v65);
            }

            if (SHIBYTE(v96) < 0)
            {
              v67 = v95;
              v68 = mdm::zone_mallocator::instance(NativeShieldCount);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v68, v67);
            }

            if (SHIBYTE(v98) < 0)
            {
              v69 = v97;
              v70 = mdm::zone_mallocator::instance(NativeShieldCount);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v70, v69);
            }

            ++v14;
            v17 = v44 + 20;
            v13 += 32;
            if (v73 == v14)
            {
              goto LABEL_80;
            }
          }

          v80 = 0;
          v81 = 0;
          v28 = *(v83 + 8);
          if (v28)
          {
            v29 = std::__shared_weak_count::lock(v28);
            if (v29)
            {
              v30 = *v26;
              goto LABEL_29;
            }
          }

          else
          {
            v29 = 0;
          }

          v30 = 0;
LABEL_29:
          if (!a3 || (geo::codec::transitSystemInfoGetLocalizedLabel(v30, *(v27 + 40), *(v27 + 48), &v81, &v80), !v81) || !*v81)
          {
            geo::codec::transitSystemInfoGetNativeLabel(v30, v27, &v81, &v80);
          }

          if (v80)
          {
            v31 = v80;
          }

          else
          {
            v31 = "";
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(__s, v31);
          v87 = *__s;
          v88 = v92;
          if (v81)
          {
            v32 = v81;
          }

          else
          {
            v32 = "";
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v84, v32);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v29);
          }

          v5 = v74;
          goto LABEL_42;
        }

LABEL_80:
        std::mutex::unlock((v5 + 440));
      }
    }
  }
}

void sub_1B310C274(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  *v43 = v42;
  if (a28 < 0)
  {
    v46 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v46, a23);
  }

  if (a35 < 0)
  {
    v47 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v47, a30);
  }

  if (a42 < 0)
  {
    v48 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v48, a37);
  }

  if (*(v44 - 137) < 0)
  {
    v49 = *(v44 - 160);
    v50 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v50, v49);
  }

  if (*(v44 - 105) < 0)
  {
    v51 = *(v44 - 128);
    v52 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v52, v51);
  }

  std::mutex::unlock((a13 + 440));
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::LabelShieldEntry::LabelShieldEntry(mdm::zone_mallocator *__dst, char a2, __int128 *a3, uint64_t a4, _DWORD *a5)
{
  *(__dst + 24) = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v9;
  }

  *(__dst + 4) = a4;
  *(__dst + 10) = *a5;
  *(__dst + 44) = a2;
  return __dst;
}

std::__shared_weak_count **md::TransitLineLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v153 = *MEMORY[0x1E69E9840];
  if (*(a1 + 536) == *(a1 + 544))
  {
    return 0;
  }

  md::LineLabelPlacer::positionForIdentifier(&v134, a1 + 192, *(a3 + 48));
  v8 = v134;
  v9 = BYTE1(v134->__shared_owners_);
  if ((v9 - 2) >= 2)
  {
    if (v9 == 1)
    {
      v56 = (v134->__vftable[3].~__shared_weak_count_0)(v134);
      v57 = *(a1 + 576);
      if (v57)
      {
        v58 = a1 + 576;
        do
        {
          v59 = *(v57 + 32);
          v14 = v59 >= v56;
          v60 = v59 < v56;
          if (v14)
          {
            v58 = v57;
          }

          v57 = *(v57 + 8 * v60);
        }

        while (v57);
        if (v58 != a1 + 576 && *(v58 + 32) <= v56)
        {
          v17 = *(v58 + 40);
          if (!v17)
          {
            goto LABEL_87;
          }

          v61 = *(v17 + 21);
          if (v61 == 0xFFFF)
          {
            v61 = *(a1 + 600);
          }

          v62 = v17[1] + 20 * v61;
          v63 = *(v62 + 16);
          if (v63 == -1)
          {
            v63 = *(*(a1 + 536) + 32 * *(v62 + 14) + 24);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 280) - *(a1 + 272)) >> 4) <= v63 || (v64 = *(a1 + 96), v63 >= ((*(a1 + 104) - v64) >> 4)))
          {
            v65 = (a1 + 80);
          }

          else
          {
            v65 = (v64 + 16 * v63);
          }

          v67 = *v65;
          if (*(*v65 + 236) != 0.0)
          {
            v68 = *(v67 + 264);
            if (!v68)
            {
              v69 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(v67);
              v68 = *v69;
              *(v67 + 264) = *v69;
            }

            if (*(v68 + 56) == 1 && *(v68 + 60) == 1)
            {
              v70 = *(v67 + 144);
              if (v70 != 1)
              {
                v71 = v70 == 3 ? 8 : 9;
                v72 = *(*(a1 + 536) + 32 * v61 + v71);
                if (v72 != 255)
                {
                  v73 = md::LabelStyle::textStyleGroup(v67, 0);
                  md::LabelFeature::textDataForZoom(&v148, a1, v72, v73);
                  if (v148)
                  {
                    operator new();
                  }

                  v17 = 0;
                  v66 = v149;
                  if (v149)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_87;
                }
              }
            }
          }
        }
      }
    }

LABEL_86:
    v17 = 0;
    goto LABEL_87;
  }

  v10 = (v134->__vftable[3].~__shared_weak_count_0)(v134);
  v11 = *(a1 + 576);
  if (!v11)
  {
    goto LABEL_86;
  }

  v12 = a1 + 576;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v10;
    v15 = v13 < v10;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == a1 + 576)
  {
    goto LABEL_86;
  }

  if (*(v12 + 32) > v10)
  {
    goto LABEL_86;
  }

  v16 = *(v12 + 40);
  if (!v16)
  {
    goto LABEL_86;
  }

  v17 = (*(**(*(a2 + 168) + 64) + 16))(*(*(a2 + 168) + 64));
  if (!v17)
  {
    goto LABEL_87;
  }

  v18 = (v8->__vftable[3].~__shared_weak_count_0)(v8);
  md::LabelExternalObjectsModerator::externalTransitLink(&v140, v17, v18);
  if (!v140 || (v19 = atomic_load((v140 + 104)), (v19 & 1) == 0) || (v20 = atomic_load((v140 + 105)), (v20 & 1) == 0))
  {
    v17 = 0;
    goto LABEL_68;
  }

  md::LabelExternalTransitLink::linkData(&v138, v140);
  v22 = v138;
  if (!v138 || (v23 = v138[1], *v138 == v23) || (v24 = (v23 - *v138) >> 4, v25 = *(a1 + 544), v26 = *(a1 + 536), v24 != (v25 - v26) >> 5) || (v27 = *(v16 + 8), v28 = *(v16 + 16), v29 = (v16 + 8), 0xCCCCCCCCCCCCCCCDLL * ((v28 - v27) >> 2) != v24))
  {
    v17 = 0;
    goto LABEL_80;
  }

  if (v28 != v27)
  {
    v30 = 0;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v31 = 9;
    v32 = 4;
    do
    {
      v33 = 0;
      v34 = (*v22 + 16 * v30);
      v35 = (v29->__vftable + 20 * v30);
      v36 = v29->__vftable + v31;
      v21 = (*v22 + v32);
      do
      {
        *(v36 + v33) = *(v21 + v33);
        ++v33;
      }

      while (v33 != 4);
      *v35 = *v34;
      ++v30;
      v31 += 20;
      v32 += 16;
    }

    while (v30 != v24);
    v25 = *(a1 + 544);
    v26 = *(a1 + 536);
    v24 = (v25 - v26) >> 5;
  }

  v144 = 0;
  v145 = 0;
  v146 = 0;
  v37 = 0;
  if (v25 == v26)
  {
    v55 = 0;
  }

  else
  {
    v38 = 0;
    if (v24 <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v24;
    }

    v40 = 12;
    v129 = v39;
    do
    {
      if (*(*(a1 + 536) + v40))
      {
        if (v37 >= v146)
        {
          v41 = v144;
          v42 = v37 - v144;
          v43 = v37 - v144;
          v44 = v43 + 1;
          if ((v43 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v45 = v146 - v144;
          if ((v146 - v144) >> 2 > v44)
          {
            v44 = v45 >> 2;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF8)
          {
            v46 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v44;
          }

          v152 = &v147;
          if (v46)
          {
            v47 = mdm::zone_mallocator::instance(v21);
            v48 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v47, v46);
            v41 = v144;
            v42 = v145 - v144;
            v49 = v145 - v144;
          }

          else
          {
            v48 = 0;
            v49 = v43;
          }

          v50 = &v48[8 * v43];
          v51 = &v48[8 * v46];
          v52 = &v50[-v49];
          *v50 = v38;
          v37 = v50 + 1;
          memcpy(v52, v41, v42);
          v53 = v144;
          v54 = v146;
          v144 = v52;
          v145 = v37;
          v146 = v51;
          v150 = v53;
          v151 = v54;
          v148 = v53;
          v149 = v53;
          v21 = std::__split_buffer<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator> &>::~__split_buffer(&v148);
          v39 = v129;
        }

        else
        {
          *v37++ = v38;
        }

        v145 = v37;
      }

      ++v38;
      v40 += 32;
    }

    while (v39 != v38);
    v55 = v144;
    v29 = (v16 + 8);
  }

  v75 = 126 - 2 * __clz((v37 - v55) >> 3);
  v148 = a1;
  v149 = v29;
  if (v37 == v55)
  {
    v76 = 0;
  }

  else
  {
    v76 = v75;
  }

  v77 = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,false>(v55, v37, &v148, v76, 1);
  v78 = *(v16 + 42);
  if (v78 == 0xFFFF)
  {
    v78 = *(a1 + 600);
  }

  v79 = *(&v29->~__shared_weak_count + 5 * v78);
  v127 = v78;
  v130 = *(*(a1 + 536) + 32 * v78 + 9);
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v143[2] = 0;
  v142 = v143;
  v143[0] = 0;
  if (v145 == v144)
  {
    goto LABEL_152;
  }

  v80 = 0;
  v81 = v145 - v144;
  if (v81 <= 1)
  {
    v81 = 1;
  }

  v128 = v81;
  v132 = (a1 + 80);
  do
  {
    v82 = v144[v80];
    v83 = *(a1 + 536);
    v84 = v29->__vftable + 20 * v82;
    v85 = *(v84 + 16);
    if (v85 == -1)
    {
      v85 = *(v83 + 32 * *(v84 + 14) + 24);
    }

    v86 = (a1 + 80);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 280) - *(a1 + 272)) >> 4) > v85)
    {
      v87 = *(a1 + 96);
      v88 = *(a1 + 104) - v87;
      v89 = (v87 + 16 * v85);
      if (v85 >= v88 >> 4)
      {
        v86 = (a1 + 80);
      }

      else
      {
        v86 = v89;
      }
    }

    v90 = v83 + 32 * v82;
    if (*(v90 + 9) == v130 || *v84 == v79)
    {
      v91 = *v86;
      if (*v86)
      {
        v92 = v91[33];
        if (!v92)
        {
          v77 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*v86);
          v92 = *v77;
          v91[33] = *v77;
        }

        if (*(v92 + 56) == 1 && *(v92 + 58) == 1 && *(v84 + 5) == 1)
        {
          v93 = *(v90 + 10);
          v94 = *(a1 + 352);
          v95 = v91[37];
          if (!v95)
          {
            v126 = v93;
            v96 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v91, 0);
            v95 = *v96;
            v91[37] = *v96;
            v93 = v126;
          }

          v97 = v94 + 48 * v93;
          v98 = *(v95 + 89);
          if (v98 > 2)
          {
            if (v98 != 3)
            {
              if (v98 == 4)
              {
                v101 = v91[34];
                if (!v101)
                {
                  v102 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v91);
                  v101 = *v102;
                  v91[34] = *v102;
                }

                *(v97 + 40) = *(v101 + 65);
              }

LABEL_131:
              md::LabelStyle::shieldIcon(&v136, v91, a2, a3, v97, 1, -1);
            }
          }

          else if (v98 >= 2)
          {
            v99 = 0;
            v100 = v95 + 72;
            do
            {
              *(v97 + 40 + v99) = *(v100 + v99);
              ++v99;
            }

            while (v99 != 4);
            goto LABEL_131;
          }

          for (i = 0; i != 4; ++i)
          {
            *(v97 + 40 + i) = *(v84 + 9 + i);
          }

          goto LABEL_131;
        }
      }
    }

    v29 = (v16 + 8);
    ++v80;
  }

  while (v80 != v128);
  v104 = v148;
  if (!v148)
  {
LABEL_152:
    v17 = 0;
    goto LABEL_169;
  }

  v105 = *(v16 + 8) + 20 * v127;
  v106 = *(v105 + 16);
  if (v106 == -1)
  {
    v106 = *(*(a1 + 536) + 32 * *(v105 + 14) + 24);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 280) - *(a1 + 272)) >> 4) > v106)
  {
    v107 = *(a1 + 96);
    v108 = *(a1 + 104) - v107;
    v109 = (v107 + 16 * v106);
    v14 = v106 >= (v108 >> 4);
    v110 = (a1 + 80);
    if (!v14)
    {
      v110 = v109;
    }

    v132 = v110;
  }

  v133 = *v132;
  LODWORD(v111) = *(v133 + 160);
  v112 = -v148 >> 3;
  v113 = (v111 & 0x80000000) != 0;
  if ((v111 & 0x80000000) == 0)
  {
    v111 = v111;
  }

  else
  {
    v111 = -v111;
  }

  if (v113)
  {
    v114 = 0;
  }

  else
  {
    v114 = v111;
  }

  if (v112 <= v111)
  {
    v115 = -v148 >> 3;
  }

  else
  {
    v115 = v114;
  }

  if (v115)
  {
    v131 = -v148 >> 3;
    v116 = mdm::zone_mallocator::instance(v77);
    v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v116, 0x2C0uLL);
    md::MultipleShieldLabelPart::MultipleShieldLabelPart(v17, &v134);
    v117 = v104;
    v118 = v115;
    do
    {
      md::CompositeLabelPart::addLabelPart(v17, *v117++);
      --v118;
    }

    while (v118);
    v112 = v131;
  }

  else
  {
    v17 = 0;
  }

  if (v115 < v112)
  {
    do
    {
      v119 = *(v104 + 8 * v115);
      if (v119)
      {
        (*(*v119 + 8))(v119);
        v120 = v112;
      }

      else
      {
        v120 = -v104 >> 3;
      }

      ++v115;
    }

    while (v115 < v120);
  }

  if (BYTE1(v134->__shared_owners_) != 3)
  {
    if (v133)
    {
      v121 = *(v133 + 144);
      if (v121 != 1)
      {
        v122 = v121 == 3;
        v123 = 9;
        if (v122)
        {
          v123 = 8;
        }

        v124 = *(*(a1 + 536) + 32 * v127 + v123);
        if (v124 != 255)
        {
          v125 = md::LabelStyle::textStyleGroup(v133, 0);
          md::LabelFeature::textDataForZoom(&v136, a1, v124, v125);
          if (v136)
          {
            operator new();
          }

          if (v137)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v137);
          }
        }
      }
    }
  }

LABEL_169:
  std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(v143[0]);
  std::vector<md::TransitShieldIconLabelPart *,geo::allocator_adapter<md::TransitShieldIconLabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v148);
  std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v144);
LABEL_80:
  if (v139)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v139);
  }

LABEL_68:
  v66 = v141;
  if (v141)
  {
LABEL_69:
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

LABEL_87:
  if (v135)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v135);
  }

  return v17;
}

void sub_1B310D448(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, md::IconLabelPart *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33)
{
  v36 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v36, v33);
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a31);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  if (*(v34 - 176))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v34 - 176));
  }

  v37 = *(v34 - 144);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

float md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(uint64_t a1, uint64_t a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = (a2 + 8);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v7 = v5 - v4;
  v8 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
  if (v7)
  {
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v34[4] = v38;
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v9, v8);
    v11 = &v10[8 * v8];
    bzero(v10, 8 * v8);
    v12 = &v10[-(v36 - v35)];
    memcpy(v12, v35, v36 - v35);
    v13 = v35;
    v14 = v37;
    v35 = v12;
    v36 = v11;
    v37 = v11;
    v34[2] = v13;
    v34[3] = v14;
    v34[0] = v13;
    v34[1] = v13;
    std::__split_buffer<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator> &>::~__split_buffer(v34);
    v15 = 0;
    v16 = v35;
    if (v8 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v8;
    }

    v18 = vdupq_n_s64(v17 - 1);
    v19 = (v17 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v20 = xmmword_1B33B0560;
    v21 = vdupq_n_s64(2uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v18, v20));
      if (v22.i8[0])
      {
        v16[v15] = v15;
      }

      if (v22.i8[4])
      {
        v16[v15 + 1] = v15 + 1;
      }

      v15 += 2;
      v20 = vaddq_s64(v20, v21);
    }

    while (v19 != v15);
  }

  else
  {
    v16 = 0;
  }

  v23 = 126 - 2 * __clz((v36 - v16) >> 3);
  v34[0] = v6;
  if (v36 == v16)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *,false>(v16, v36, v34, v24, 1);
  v25 = v8 - 1;
  v26 = *(a2 + 42);
  if (v26 == 0xFFFF)
  {
    v26 = *(a1 + 600);
  }

  v27 = 0;
  if (v8 == 1)
  {
    goto LABEL_32;
  }

  v28 = *(a1 + 536);
  v29 = *(v28 + 32 * v26 + 9);
  do
  {
    if (*(v28 + 32 * *&v35[8 * v27] + 9) == v29)
    {
      goto LABEL_24;
    }

    ++v27;
  }

  while (v25 != v27);
  v27 = v8 - 1;
LABEL_24:
  while (*(v28 + 32 * *&v35[8 * v25] + 9) != v29)
  {
    if (!--v25)
    {
      goto LABEL_32;
    }
  }

  if (v27 >= v25)
  {
    goto LABEL_32;
  }

  v30 = 0;
  v31 = v27;
  do
  {
    v30 = v30 - v29 + *(v28 + 32 * *&v35[8 * v31++] + 9);
  }

  while (v25 != v31);
  if (!v30)
  {
LABEL_32:
    v32 = (*(*v6 + 20 * *&v35[8 * v25]) + *(*v6 + 20 * *&v35[8 * v27])) * 0.5;
  }

  else
  {
    v32 = *(*v6 + 20 * v26);
  }

  std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v35);
  return v32;
}

void sub_1B310D8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *v11;
        if (*(**a3 + 20 * *v10) >= *(**a3 + 20 * *v11))
        {
          return result;
        }

        *v11 = *v10;
LABEL_176:
        *v10 = v79;
        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v86 = v11 + 1;
      v87 = v11[1];
      v88 = v11 + 2;
      v89 = v11[2];
      v90 = *v11;
      v91 = **a3;
      v92 = *(v91 + 20 * v87);
      v93 = *(v91 + 20 * *v11);
      v94 = *(v91 + 20 * v89);
      if (v92 >= v93)
      {
        if (v94 >= v92)
        {
          goto LABEL_169;
        }

        *v86 = v89;
        *v88 = v87;
        v95 = v11;
        v96 = v11 + 1;
        result = v87;
        if (v94 < v93)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v95 = v11;
        v96 = v11 + 2;
        result = *v11;
        if (v94 >= v92)
        {
          *v11 = v87;
          v11[1] = v90;
          v95 = v11 + 1;
          v96 = v11 + 2;
          result = v90;
          if (v94 >= v93)
          {
LABEL_169:
            v87 = v89;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v95 = v89;
        *v96 = v90;
        v87 = result;
      }

LABEL_170:
      if (*(v91 + 20 * *v10) < *(v91 + 20 * v87))
      {
        *v88 = *v10;
        *v10 = v87;
        v149 = *v88;
        v150 = *v86;
        v151 = *(v91 + 20 * v149);
        if (v151 < *(v91 + 20 * v150))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 < *(v91 + 20 * *v11))
          {
            *v11 = v149;
            v11[1] = v152;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v78 = **a3;

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v97 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v98 = **a3;
            v99 = 8;
            v100 = v11;
            do
            {
              v102 = *v100;
              v101 = v100[1];
              v100 = v97;
              v103 = *(v98 + 20 * v101);
              if (v103 < *(v98 + 20 * v102))
              {
                v104 = v99;
                while (1)
                {
                  *(v11 + v104) = v102;
                  v105 = v104 - 8;
                  if (v104 == 8)
                  {
                    break;
                  }

                  v102 = *(v11 + v104 - 16);
                  v104 -= 8;
                  if (v103 >= *(v98 + 20 * v102))
                  {
                    v106 = (v11 + v105);
                    goto LABEL_123;
                  }
                }

                v106 = v11;
LABEL_123:
                *v106 = v101;
              }

              v97 = v100 + 1;
              v99 += 8;
            }

            while (v100 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = **a3;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 20 * v146);
            if (v148 < *(v145 + 20 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 < *(v145 + 20 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v107 = (v12 - 2) >> 1;
        v108 = *a3;
        v109 = v107;
        do
        {
          v110 = v109;
          if (v107 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = &v11[v111];
            v113 = 2 * v109 + 2;
            v114 = *v108;
            if (v113 < v12 && *(v114 + 20 * *v112) < *(v114 + 20 * v112[1]))
            {
              ++v112;
              v111 = 2 * v110 + 2;
            }

            v115 = &v11[v110];
            v116 = *v112;
            v117 = *v115;
            v118 = *(v114 + 20 * *v115);
            if (*(v114 + 20 * *v112) >= v118)
            {
              do
              {
                v119 = v112;
                *v115 = v116;
                if (v107 < v111)
                {
                  break;
                }

                v120 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = &v11[v111];
                v121 = v120 + 2;
                if (v121 < v12 && *(v114 + 20 * *v112) < *(v114 + 20 * v112[1]))
                {
                  ++v112;
                  v111 = v121;
                }

                v116 = *v112;
                v115 = v119;
              }

              while (*(v114 + 20 * *v112) >= v118);
              *v119 = v117;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = v125;
            v127 = &v125[v122];
            v125 = v127 + 1;
            v128 = 2 * v122;
            result = (2 * v122) | 1;
            v122 = result;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = 20 * v131;
              if (*(*v124 + 20 * *(v130 - 1)) < *(*v124 + 20 * v131))
              {
                v125 = v130;
                v122 = v129;
              }
            }

            *v126 = *v125;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v123;
          }

          else
          {
            *v125 = *a2;
            *a2 = v123;
            v132 = (v125 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v125;
              v139 = *v124;
              v140 = *(v139 + 20 * *v125);
              if (*(v139 + 20 * *v136) < v140)
              {
                do
                {
                  v141 = v136;
                  *v125 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v125 = v141;
                }

                while (*(v139 + 20 * *v136) < v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 20 * *v10);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 20 * *v13);
      v21 = *(v15 + 20 * *v11);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 20 * *v13) < *(v15 + 20 * *v11))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 20 * *v10) < v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 20 * v29);
      v32 = *(v15 + 20 * v30);
      v33 = *(a2 - 2);
      v34 = *(v15 + 20 * v33);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 20 * *v28) < *(v15 + 20 * v35))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 20 * v36) < v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 20 * v39);
      v42 = *(v15 + 20 * v40);
      v43 = *(a2 - 3);
      v44 = *(v15 + 20 * v43);
      if (v41 >= v42)
      {
        if (v44 < v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 20 * *v37) < *(v15 + 20 * v45))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 < v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 20 * v46) < v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 20 * *v14);
      v50 = *(v15 + 20 * *v28);
      v51 = *v37;
      v52 = *(v15 + 20 * *v37);
      if (v49 >= v50)
      {
        if (v52 >= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 >= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 >= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 20 * *v11);
    v25 = *(v15 + 20 * *v14);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 20 * *v11) < *(v15 + 20 * *v14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 20 * *v10) < v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 20 * v54);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 20 * v59) < v55);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v15 + 20 * v62) >= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 20 * v61) >= v55);
      }

      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v15 + 20 * v66) < v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 20 * v67) >= v55);
        }

        while (v64 < v65);
      }

      if (v57 != v11)
      {
        *v11 = *v57;
      }

      *v57 = v54;
      if (v56 < v60)
      {
        goto LABEL_79;
      }

      v68 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *>(v11, v57, *a3);
      v11 = v57 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *>(v57 + 1, a2, *a3);
      if (result)
      {
        a2 = v57;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *,false>(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 20 * v54);
      if (*(v15 + 20 * *(v11 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v15 + 20 * *v10))
      {
        v70 = (v11 + 1);
        do
        {
          v11 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v70 += 8;
        }

        while (v55 >= *(v15 + 20 * *v11));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 >= *(v15 + 20 * v69));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 < *(v15 + 20 * v72));
      }

      if (v11 < v71)
      {
        v73 = *v11;
        v74 = *v71;
        do
        {
          *v11 = v74;
          *v71 = v73;
          do
          {
            v75 = v11[1];
            ++v11;
            v73 = v75;
          }

          while (v55 >= *(v15 + 20 * v75));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 < *(v15 + 20 * v76));
        }

        while (v11 < v71);
      }

      v77 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v77;
      }

      a5 = 0;
      *v77 = v54;
    }
  }

  v79 = *v11;
  v80 = v11[1];
  v81 = **a3;
  v82 = *(v81 + 20 * v80);
  v83 = *(v81 + 20 * *v11);
  v84 = *v10;
  v85 = *(v81 + 20 * *v10);
  if (v82 < v83)
  {
    if (v85 >= v82)
    {
      *v11 = v80;
      v11[1] = v79;
      if (*(v81 + 20 * *v10) >= v83)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v84;
    }

    goto LABEL_176;
  }

  if (v85 < v82)
  {
    v11[1] = v84;
    *v10 = v80;
    v143 = *v11;
    v142 = v11[1];
    if (*(v81 + 20 * v142) < *(v81 + 20 * *v11))
    {
      *v11 = v142;
      v11[1] = v143;
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 20 * *a2);
  v9 = *(a6 + 20 * *result);
  v10 = *a3;
  v11 = *(a6 + 20 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 20 * *a2) < *(a6 + 20 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 20 * *a3) < v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 20 * *a4) < *(a6 + 20 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 20 * *a3) < *(a6 + 20 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 20 * *a2) < *(a6 + 20 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 20 * *a5) < *(a6 + 20 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 20 * *a4) < *(a6 + 20 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 20 * *a3) < *(a6 + 20 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 20 * *a2) < *(a6 + 20 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 20 * v6);
      v9 = *(*a3 + 20 * *a1);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 20 * v10);
      if (v8 >= v9)
      {
        if (v11 < v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v35 = *a1;
          v34 = a1[1];
          if (*(v7 + 20 * v34) < *(v7 + 20 * *a1))
          {
            *a1 = v34;
            a1[1] = v35;
          }
        }

        return 1;
      }

      if (v11 < v8)
      {
        *a1 = v10;
        goto LABEL_48;
      }

      *a1 = v6;
      a1[1] = v5;
      v50 = *(a2 - 1);
      if (*(v7 + 20 * v50) < v9)
      {
        a1[1] = v50;
        goto LABEL_48;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::calculateTextOffsetFromTransitLineSegments(md::TransitLineLabelFeature::LabelTransitLink const*)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 20 * v23);
    v29 = *(*a3 + 20 * *a1);
    v30 = *(*a3 + 20 * v25);
    if (v28 >= v29)
    {
      if (v30 >= v28)
      {
LABEL_41:
        v23 = v25;
        goto LABEL_42;
      }

      *v22 = v25;
      *v24 = v23;
      v31 = a1;
      v32 = a1 + 1;
      v33 = v23;
      if (v30 >= v29)
      {
LABEL_42:
        v45 = *(a2 - 1);
        if (*(v27 + 20 * v45) < *(v27 + 20 * v23))
        {
          *v24 = v45;
          *(a2 - 1) = v23;
          v46 = *v24;
          v47 = *v22;
          v48 = *(v27 + 20 * v46);
          if (v48 < *(v27 + 20 * v47))
          {
            a1[1] = v46;
            a1[2] = v47;
            v49 = *a1;
            if (v48 < *(v27 + 20 * *a1))
            {
              *a1 = v46;
              a1[1] = v49;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v31 = a1;
      v32 = a1 + 2;
      v33 = *a1;
      if (v30 >= v28)
      {
        *a1 = v23;
        a1[1] = v26;
        v31 = a1 + 1;
        v32 = a1 + 2;
        v33 = v26;
        if (v30 >= v29)
        {
          goto LABEL_41;
        }
      }
    }

    *v31 = v25;
    *v32 = v26;
    v23 = v33;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 20 * v4) < *(*a3 + 20 * *a1))
    {
      *a1 = v4;
LABEL_48:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 20 * v14);
  v18 = *(*a3 + 20 * *a1);
  v19 = *(*a3 + 20 * v12);
  if (v17 < v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 >= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 >= v18)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v20 = v12;
    *v21 = v15;
    goto LABEL_27;
  }

  if (v19 < v17)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 24; ; i += 8)
  {
    v39 = *v36;
    v40 = *v13;
    v41 = *(v16 + 20 * *v36);
    if (v41 < *(v16 + 20 * v40))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v40;
        v43 = v42 - 8;
        if (v42 == 8)
        {
          break;
        }

        v40 = *(a1 + v42 - 16);
        v42 -= 8;
        if (v41 >= *(v16 + 20 * v40))
        {
          v44 = (a1 + v43);
          goto LABEL_35;
        }
      }

      v44 = a1;
LABEL_35:
      *v44 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v13 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}

mdm::zone_mallocator *std::__split_buffer<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v5, v4);
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  k = v8;
  while (1)
  {
    v8 = k;
    v11 = a2 - k;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v68 = *a3;
          v69 = *a3[1];

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(k, k + 1, a2 - 1, v68, v69);
        case 4:
          result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(k, k + 1, k + 2, *a3, *a3[1]);
          v56 = *v9;
          v57 = k[2];
          v58 = *a3;
          v59 = *a3[1];
          v60 = *(v59 + 20 * *v9);
          v61 = *(v59 + 20 * v57);
          if (v60 < v61 || v60 == v61 && *(*(v58 + 536) + 32 * v56 + 14) < *(*(v58 + 536) + 32 * v57 + 14))
          {
            k[2] = v56;
            *v9 = v57;
            v63 = k[1];
            v62 = k[2];
            v64 = *(v59 + 20 * v62);
            v65 = *(v59 + 20 * v63);
            if (v64 < v65 || v64 == v65 && *(*(v58 + 536) + 32 * v62 + 14) < *(*(v58 + 536) + 32 * v63 + 14))
            {
              k[1] = v62;
              k[2] = v63;
              v66 = *k;
              v67 = *(v59 + 20 * *k);
              if (v64 < v67 || v64 == v67 && *(*(v58 + 536) + 32 * v62 + 14) < *(*(v58 + 536) + 32 * v66 + 14))
              {
                *k = v62;
                k[1] = v66;
              }
            }
          }

          return result;
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(k, k + 1, k + 2, k + 3, a2 - 1, a3);
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v70 = *v9;
        v71 = *k;
        v72 = *a3[1];
        v73 = *(v72 + 20 * *v9);
        v74 = *(v72 + 20 * *k);
        if (v73 < v74 || v73 == v74 && *(*(*a3 + 536) + 32 * v70 + 14) < *(*(*a3 + 536) + 32 * v71 + 14))
        {
          *k = v70;
          *v9 = v71;
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (k == a2)
      {
        return result;
      }

      v91 = (v11 - 2) >> 1;
      v92 = *a3;
      v93 = a3[1];
      v94 = v91;
      do
      {
        v95 = v94;
        if (v91 >= v94)
        {
          v96 = (2 * v94) | 1;
          v97 = &k[v96];
          if (2 * v95 + 2 >= v11)
          {
            v99 = *v93;
          }

          else
          {
            v98 = v97[1];
            v99 = *v93;
            v100 = *(*v93 + 20 * *v97);
            v101 = *(*v93 + 20 * v98);
            if (v100 < v101 || v100 == v101 && *(*(v92 + 536) + 32 * *v97 + 14) < *(*(v92 + 536) + 32 * v98 + 14))
            {
              ++v97;
              v96 = 2 * v95 + 2;
            }
          }

          v102 = *v97;
          v103 = k[v95];
          v104 = *(v99 + 20 * *v97);
          v105 = *(v99 + 20 * v103);
          if (v104 >= v105 && (v104 != v105 || *(*(v92 + 536) + 32 * v102 + 14) >= *(*(v92 + 536) + 32 * v103 + 14)))
          {
            k[v95] = v102;
            if (v91 >= v96)
            {
              while (1)
              {
                v107 = 2 * v96;
                v96 = (2 * v96) | 1;
                v106 = &k[v96];
                v108 = v107 + 2;
                if (v108 < v11)
                {
                  v109 = v106[1];
                  v110 = *(v99 + 20 * *v106);
                  v111 = *(v99 + 20 * v109);
                  if (v110 < v111 || v110 == v111 && *(*(v92 + 536) + 32 * *v106 + 14) < *(*(v92 + 536) + 32 * v109 + 14))
                  {
                    ++v106;
                    v96 = v108;
                  }
                }

                v112 = *v106;
                v113 = *(v99 + 20 * *v106);
                if (v113 < v105 || v113 == v105 && *(*(v92 + 536) + 32 * v112 + 14) < *(*(v92 + 536) + 32 * v103 + 14))
                {
                  break;
                }

                *v97 = v112;
                v97 = v106;
                if (v91 < v96)
                {
                  goto LABEL_145;
                }
              }
            }

            v106 = v97;
LABEL_145:
            *v106 = v103;
          }
        }

        v94 = v95 - 1;
      }

      while (v95);
      while (2)
      {
        v114 = 0;
        v115 = *k;
        v116 = *a3;
        v117 = a3[1];
        v118 = k;
        do
        {
          v119 = v118;
          v120 = &v118[v114];
          v118 = v120 + 1;
          v121 = 2 * v114;
          v114 = (2 * v114) | 1;
          result = v121 + 2;
          if (result < v11)
          {
            v124 = v120[2];
            v123 = v120 + 2;
            v122 = v124;
            v125 = *(v123 - 1);
            v126 = *(*v117 + 20 * v125);
            v127 = *(*v117 + 20 * v124);
            if (v126 < v127 || v126 == v127 && *(*(v116 + 536) + 32 * v125 + 14) < *(*(v116 + 536) + 32 * v122 + 14))
            {
              v118 = v123;
              v114 = result;
            }
          }

          *v119 = *v118;
        }

        while (v114 <= ((v11 - 2) >> 1));
        if (v118 == --a2)
        {
LABEL_176:
          *v118 = v115;
        }

        else
        {
          *v118 = *a2;
          *a2 = v115;
          v128 = (v118 - k + 8) >> 3;
          v129 = v128 - 2;
          if (v128 >= 2)
          {
            v130 = v129 >> 1;
            v131 = &k[v129 >> 1];
            v132 = *v131;
            v115 = *v118;
            v133 = *v117;
            v134 = *(v133 + 20 * *v131);
            result = 20 * *v118;
            v135 = *(v133 + result);
            if (v134 < v135 || v134 == v135 && (v136 = *(v116 + 536), v137 = *(v136 + 32 * v132 + 14), result = *(v136 + 32 * v115 + 14), v137 < result))
            {
              *v118 = v132;
              if (v129 >= 2)
              {
                while (1)
                {
                  v138 = v130 - 1;
                  v130 = (v130 - 1) >> 1;
                  v118 = &k[v130];
                  v139 = *v118;
                  result = 20 * *v118;
                  v140 = *(v133 + result);
                  if (v140 >= v135)
                  {
                    if (v140 != v135)
                    {
                      break;
                    }

                    v141 = *(v116 + 536);
                    v142 = *(v141 + 32 * v139 + 14);
                    result = *(v141 + 32 * v115 + 14);
                    if (v142 >= result)
                    {
                      break;
                    }
                  }

                  *v131 = v139;
                  v131 = &k[v130];
                  if (v138 <= 1)
                  {
                    goto LABEL_176;
                  }
                }
              }

              v118 = v131;
              goto LABEL_176;
            }
          }
        }

        if (v11-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = &k[v11 >> 1];
    v14 = *a3;
    v15 = *a3[1];
    if (v11 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(&v8[v11 >> 1], v8, a2 - 1, v14, v15);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(v8, &v8[v11 >> 1], a2 - 1, v14, v15);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(v8 + 1, v13 - 1, a2 - 2, *a3, *a3[1]);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(v8 + 2, &v8[v12 + 1], a2 - 3, *a3, *a3[1]);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(v13 - 1, v13, &v8[v12 + 1], *a3, *a3[1]);
      v16 = *v8;
      *v8 = *v13;
      *v13 = v16;
    }

    --a4;
    v17 = *v8;
    v18 = *a3;
    v19 = *a3[1];
    if (a5)
    {
      v20 = *(v19 + 20 * v17);
LABEL_20:
      for (i = v8 + 1; ; ++i)
      {
        v24 = *i;
        v25 = *(v19 + 20 * *i);
        if (v25 >= v20 && (v25 != v20 || *(*(v18 + 536) + 32 * v24 + 14) >= *(*(v18 + 536) + 32 * v17 + 14)))
        {
          break;
        }
      }

      v26 = i - 1;
      if (i - 1 == v8)
      {
        j = a2;
        if (i < a2)
        {
          v31 = *v9;
          v32 = *(v19 + 20 * *v9);
          j = a2 - 1;
          if (v32 >= v20)
          {
            j = a2 - 1;
            do
            {
              if (v32 == v20)
              {
                if (i >= j || *(*(v18 + 536) + 32 * v31 + 14) < *(*(v18 + 536) + 32 * v17 + 14))
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v33 = *--j;
              v31 = v33;
              v32 = *(v19 + 20 * v33);
            }

            while (v32 >= v20);
          }
        }
      }

      else
      {
        v27 = *v9;
        v28 = *(v19 + 20 * *v9);
        for (j = a2 - 1; v28 >= v20; v28 = *(v19 + 20 * v30))
        {
          if (v28 == v20 && *(*(v18 + 536) + 32 * v27 + 14) < *(*(v18 + 536) + 32 * v17 + 14))
          {
            break;
          }

          v30 = *--j;
          v27 = v30;
        }
      }

      if (i < j)
      {
        v34 = *j;
        v35 = i;
        v36 = j;
        do
        {
          *v35++ = v34;
          *v36 = v24;
          while (1)
          {
            v24 = *v35;
            v37 = *(v19 + 20 * *v35);
            if (v37 >= v20 && (v37 != v20 || *(*(v18 + 536) + 32 * v24 + 14) >= *(*(v18 + 536) + 32 * v17 + 14)))
            {
              break;
            }

            ++v35;
          }

          v26 = v35 - 1;
          do
          {
            v38 = *--v36;
            v34 = v38;
            v39 = *(v19 + 20 * v38);
          }

          while (v39 >= v20 && (v39 != v20 || *(*(v18 + 536) + 32 * v34 + 14) >= *(*(v18 + 536) + 32 * v17 + 14)));
        }

        while (v35 < v36);
      }

      if (v26 != v8)
      {
        *v8 = *v26;
      }

      *v26 = v17;
      if (i < j)
      {
        goto LABEL_57;
      }

      v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *>(v8, v26, a3);
      k = v26 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *>(v26 + 1, a2, a3);
      if (result)
      {
        a2 = v26;
        if (v40)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v40)
      {
LABEL_57:
        result = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,false>(v8, v26, a3, a4, a5 & 1);
        a5 = 0;
        k = v26 + 1;
      }
    }

    else
    {
      v21 = *(v8 - 1);
      v22 = *(v19 + 20 * v21);
      v20 = *(v19 + 20 * v17);
      if (v22 < v20 || v22 == v20 && *(*(v18 + 536) + 32 * v21 + 14) < *(*(v18 + 536) + 32 * v17 + 14))
      {
        goto LABEL_20;
      }

      v41 = *v9;
      v42 = *(v19 + 20 * *v9);
      if (v20 < v42 || v20 == v42 && *(*(v18 + 536) + 32 * v17 + 14) < *(*(v18 + 536) + 32 * v41 + 14))
      {
        k = v8;
        do
        {
          v44 = k[1];
          ++k;
          v43 = v44;
          v45 = *(v19 + 20 * v44);
        }

        while (v20 >= v45 && (v20 != v45 || *(*(v18 + 536) + 32 * v17 + 14) >= *(*(v18 + 536) + 32 * v43 + 14)));
      }

      else
      {
        for (k = v8 + 1; k < a2; ++k)
        {
          v55 = *(v19 + 20 * *k);
          if (v20 < v55 || v20 == v55 && *(*(v18 + 536) + 32 * v17 + 14) < *(*(v18 + 536) + 32 * *k + 14))
          {
            break;
          }
        }
      }

      v46 = a2;
      if (k < a2)
      {
        v46 = a2 - 1;
        while (v20 < v42 || v20 == v42 && *(*(v18 + 536) + 32 * v17 + 14) < *(*(v18 + 536) + 32 * v41 + 14))
        {
          v47 = *--v46;
          v41 = v47;
          v42 = *(v19 + 20 * v47);
        }
      }

      if (k < v46)
      {
        v48 = *k;
        v49 = *v46;
        do
        {
          *k = v49;
          *v46 = v48;
          do
          {
            v50 = k[1];
            ++k;
            v48 = v50;
            v51 = *(v19 + 20 * v50);
          }

          while (v20 >= v51 && (v20 != v51 || *(*(v18 + 536) + 32 * v17 + 14) >= *(*(v18 + 536) + 32 * v48 + 14)));
          do
          {
            do
            {
              v52 = *--v46;
              v49 = v52;
              v53 = *(v19 + 20 * v52);
            }

            while (v20 < v53);
          }

          while (v20 == v53 && *(*(v18 + 536) + 32 * v17 + 14) < *(*(v18 + 536) + 32 * v49 + 14));
        }

        while (k < v46);
      }

      v54 = k - 1;
      if (k - 1 != v8)
      {
        *v8 = *v54;
      }

      a5 = 0;
      *v54 = v17;
    }
  }

  if (a5)
  {
    if (k != a2)
    {
      v75 = k + 1;
      if (k + 1 != a2)
      {
        v76 = 0;
        v77 = *a3;
        v78 = *a3[1];
        v79 = k;
        do
        {
          v80 = v79;
          v79 = v75;
          v82 = *v80;
          v81 = v80[1];
          v83 = *(v78 + 20 * v81);
          v84 = *(v78 + 20 * *v80);
          if (v83 < v84 || v83 == v84 && *(*(v77 + 536) + 32 * v81 + 14) < *(*(v77 + 536) + 32 * v82 + 14))
          {
            v80[1] = v82;
            v85 = k;
            if (v80 != k)
            {
              v86 = v76;
              while (1)
              {
                v87 = *(k + v86 - 8);
                result = 20 * v87;
                v88 = *(v78 + 20 * v87);
                if (v83 >= v88)
                {
                  if (v83 != v88)
                  {
                    v85 = (k + v86);
                    goto LABEL_128;
                  }

                  v89 = *(v77 + 536);
                  v90 = *(v89 + 32 * v81 + 14);
                  result = *(v89 + 32 * v87 + 14);
                  if (v90 >= result)
                  {
                    break;
                  }
                }

                --v80;
                *(k + v86) = v87;
                v86 -= 8;
                if (!v86)
                {
                  v85 = k;
                  goto LABEL_128;
                }
              }

              v85 = v80;
            }

LABEL_128:
            *v85 = v81;
          }

          v75 = v79 + 1;
          v76 += 8;
        }

        while (v79 + 1 != a2);
      }
    }
  }

  else if (k != a2)
  {
    v144 = k + 1;
    if (k + 1 != a2)
    {
      v145 = *a3;
      v146 = *a3[1];
      do
      {
        v147 = v8;
        v8 = v144;
        v149 = *v147;
        v148 = v147[1];
        v150 = *(v146 + 20 * v148);
        v151 = *(v146 + 20 * *v147);
        if (v150 < v151 || v150 == v151 && *(*(v145 + 536) + 32 * v148 + 14) < *(*(v145 + 536) + 32 * v149 + 14))
        {
          do
          {
            do
            {
              v152 = v147;
              v153 = v149;
              v154 = *--v147;
              v149 = v154;
              v147[2] = v153;
              v155 = *(v146 + 20 * v154);
            }

            while (v150 < v155);
          }

          while (v150 == v155 && *(*(v145 + 536) + 32 * v148 + 14) < *(*(v145 + 536) + 32 * v149 + 14));
          *v152 = v148;
        }

        v144 = v8 + 1;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelShieldEntry,md::LabelShieldEntry const&>(_BOOL8 a1, uint64_t a2, __int128 *a3)
{
  v4 = a1;
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v6 = v5;
        a1 = md::LabelShieldEntry::operator<(a2, (v5 + 4));
        if (!a1)
        {
          break;
        }

        v5 = *v6;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_9;
        }
      }

      a1 = md::LabelShieldEntry::operator<((v6 + 4), a2);
      if (!a1)
      {
        return 0;
      }

      v8 = v6 + 1;
      v5 = v6[1];
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = (a1 + 8);
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x50uLL, 0x10320400AEB4F02uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>((v12 + 4), a3);
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v6;
    *v8 = v12;
    v13 = **v4;
    if (v13)
    {
      *v4 = v13;
      v12 = *v8;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v4[1], v12);
    v4[3] = (v4[3] + 1);
    return 1;
  }
}

void sub_1B310F7A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v3 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::LabelShieldEntry,void *>>(v3, v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(char **result)
{
  if (result)
  {
    std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(result[1]);
    std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>((result + 4));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::LabelShieldEntry,void *>>(v3, result);
  }
}

void std::vector<md::TransitShieldIconLabelPart *,geo::allocator_adapter<md::TransitShieldIconLabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitShieldIconLabelPart *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitShieldIconLabelPart *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::LabelShieldEntry,void *>>(uint64_t a1, void *a2)
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

BOOL md::LabelShieldEntry::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) < *(a2 + 32))
  {
    return 1;
  }

  if (*(a1 + 44) < *(a2 + 44) || (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2) & 0x80) != 0)
  {
    return 1;
  }

  return bswap32(*(a1 + 40)) < bswap32(*(a2 + 40));
}

uint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(a5 + 20 * *a2);
  v8 = *(a5 + 20 * *result);
  if (v7 < v8 || v7 == v8 && *(*(a4 + 536) + 32 * v5 + 14) < *(*(a4 + 536) + 32 * v6 + 14))
  {
    v9 = *a3;
    v10 = *(a5 + 20 * *a3);
    if (v10 < v7 || v10 == v7 && *(*(a4 + 536) + 32 * v9 + 14) < *(*(a4 + 536) + 32 * v5 + 14))
    {
      *result = v9;
LABEL_19:
      *a3 = v6;
      return result;
    }

    *result = v5;
    *a2 = v6;
    v17 = *a3;
    v18 = *(a5 + 20 * *a3);
    if (v18 < v8 || v18 == v8 && *(*(a4 + 536) + 32 * v17 + 14) < *(*(a4 + 536) + 32 * v6 + 14))
    {
      *a2 = v17;
      goto LABEL_19;
    }
  }

  else
  {
    v11 = *a3;
    v12 = *(a5 + 20 * *a3);
    if (v12 < v7 || v12 == v7 && *(*(a4 + 536) + 32 * v11 + 14) < *(*(a4 + 536) + 32 * v5 + 14))
    {
      *a2 = v11;
      *a3 = v5;
      v13 = *a2;
      v14 = *result;
      v15 = *(a5 + 20 * *a2);
      v16 = *(a5 + 20 * *result);
      if (v15 < v16 || v15 == v16 && *(*(a4 + 536) + 32 * v13 + 14) < *(*(a4 + 536) + 32 * v14 + 14))
      {
        *result = v13;
        *a2 = v14;
      }
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(a1, a2, a3, *a6, **(a6 + 8));
  v13 = *a4;
  v14 = *a3;
  v15 = *a6;
  v16 = **(a6 + 8);
  v17 = *(v16 + 20 * *a4);
  v18 = *(v16 + 20 * *a3);
  if (v17 < v18 || v17 == v18 && *(*(v15 + 536) + 32 * v13 + 14) < *(*(v15 + 536) + 32 * v14 + 14))
  {
    *a3 = v13;
    *a4 = v14;
    v19 = *a3;
    v20 = *a2;
    v21 = *(v16 + 20 * *a3);
    v22 = *(v16 + 20 * *a2);
    if (v21 < v22 || v21 == v22 && *(*(v15 + 536) + 32 * v19 + 14) < *(*(v15 + 536) + 32 * v20 + 14))
    {
      *a2 = v19;
      *a3 = v20;
      v23 = *a2;
      v24 = *a1;
      v25 = *(v16 + 20 * *a2);
      v26 = *(v16 + 20 * *a1);
      if (v25 < v26 || v25 == v26 && *(*(v15 + 536) + 32 * v23 + 14) < *(*(v15 + 536) + 32 * v24 + 14))
      {
        *a1 = v23;
        *a2 = v24;
      }
    }
  }

  v27 = *a5;
  v28 = *a4;
  v29 = *(v16 + 20 * *a5);
  v30 = *(v16 + 20 * *a4);
  if (v29 < v30 || v29 == v30 && *(*(v15 + 536) + 32 * v27 + 14) < *(*(v15 + 536) + 32 * v28 + 14))
  {
    *a4 = v27;
    *a5 = v28;
    v31 = *a4;
    v32 = *a3;
    v33 = *(v16 + 20 * *a4);
    v34 = *(v16 + 20 * *a3);
    if (v33 < v34 || v33 == v34 && *(*(v15 + 536) + 32 * v31 + 14) < *(*(v15 + 536) + 32 * v32 + 14))
    {
      *a3 = v31;
      *a4 = v32;
      v35 = *a3;
      v36 = *a2;
      v37 = *(v16 + 20 * *a3);
      v38 = *(v16 + 20 * *a2);
      if (v37 < v38 || v37 == v38 && *(*(v15 + 536) + 32 * v35 + 14) < *(*(v15 + 536) + 32 * v36 + 14))
      {
        *a2 = v35;
        *a3 = v36;
        v39 = *a2;
        v40 = *a1;
        v41 = *(v16 + 20 * *a2);
        v42 = *(v16 + 20 * *a1);
        if (v41 < v42 || v41 == v42 && *(*(v15 + 536) + 32 * v39 + 14) < *(*(v15 + 536) + 32 * v40 + 14))
        {
          *a1 = v39;
          *a2 = v40;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a2 - 1, *a3, **(a3 + 8));
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, *a3, **(a3 + 8));
        v25 = *(a2 - 1);
        v26 = a1[2];
        v27 = *a3;
        v28 = **(a3 + 8);
        v29 = *(v28 + 20 * v25);
        v30 = *(v28 + 20 * v26);
        if (v29 < v30 || v29 == v30 && *(*(v27 + 536) + 32 * v25 + 14) < *(*(v27 + 536) + 32 * v26 + 14))
        {
          a1[2] = v25;
          *(a2 - 1) = v26;
          v32 = a1[1];
          v31 = a1[2];
          v33 = *(v28 + 20 * v31);
          v34 = *(v28 + 20 * v32);
          if (v33 < v34 || v33 == v34 && *(*(v27 + 536) + 32 * v31 + 14) < *(*(v27 + 536) + 32 * v32 + 14))
          {
            a1[1] = v31;
            a1[2] = v32;
            v35 = *a1;
            v36 = *(v28 + 20 * *a1);
            if (v33 < v36 || v33 == v36 && *(*(v27 + 536) + 32 * v31 + 14) < *(*(v27 + 536) + 32 * v35 + 14))
            {
              *a1 = v31;
              a1[1] = v35;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    v9 = **(a3 + 8);
    v10 = *(v9 + 20 * v7);
    v11 = *(v9 + 20 * *a1);
    if (v10 < v11 || v10 == v11 && *(*(*a3 + 536) + 32 * v7 + 14) < *(*(*a3 + 536) + 32 * v8 + 14))
    {
      *a1 = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::newShieldPart(md::LabelManager *,md::Label *,md::LabelPartCreationOptions &,std::shared_ptr<md::RoadPosition> const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, *a3, **(a3 + 8));
  v13 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  v16 = *a3;
  v17 = **(a3 + 8);
  while (1)
  {
    v18 = *v13;
    v19 = *v12;
    v20 = *(v17 + 20 * *v13);
    v21 = *(v17 + 20 * *v12);
    if (v20 < v21 || v20 == v21 && *(*(v16 + 536) + 32 * v18 + 14) < *(*(v16 + 536) + 32 * v19 + 14))
    {
      *v13 = v19;
      v22 = v14;
      do
      {
        v23 = *(a1 + v22 + 8);
        v24 = *(v17 + 20 * v23);
        if (v20 >= v24)
        {
          if (v20 != v24)
          {
            v12 = (a1 + v22 + 16);
            goto LABEL_25;
          }

          if (*(*(v16 + 536) + 32 * v18 + 14) >= *(*(v16 + 536) + 32 * v23 + 14))
          {
            goto LABEL_25;
          }
        }

        --v12;
        *(a1 + v22 + 16) = v23;
        v22 -= 8;
      }

      while (v22 != -16);
      v12 = a1;
LABEL_25:
      *v12 = v18;
      if (++v15 == 8)
      {
        return v13 + 1 == a2;
      }
    }

    v12 = v13;
    v14 += 8;
    if (++v13 == a2)
    {
      return 1;
    }
  }
}

void md::TransitLineLabelFeature::~TransitLineLabelFeature(md::TransitLineLabelFeature *this)
{
  md::TransitLineLabelFeature::~TransitLineLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A32C08;
  v2 = (this + 680);
  std::vector<md::TransitLineLabelFeature::WorkUnit,geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::mutex::~mutex((this + 608));
  std::__tree<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::__map_value_compare<GeoCodecsTransitLink const*,std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::less<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,mdm::zone_mallocator>>::destroy(*(this + 72));
  std::vector<md::TransitLineLabelFeature::LabelTransitLine,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLine,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 536));
  v2 = (this + 504);
  std::vector<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  std::mutex::~mutex((this + 440));

  md::LineLabelFeature::~LineLabelFeature(this);
}

void std::vector<md::TransitLineLabelFeature::WorkUnit,geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
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
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 32);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::WorkUnit>(v6, v4);
  }
}

void std::__tree<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::__map_value_compare<GeoCodecsTransitLink const*,std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::less<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::__map_value_compare<GeoCodecsTransitLink const*,std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::less<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::__map_value_compare<GeoCodecsTransitLink const*,std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,std::less<GeoCodecsTransitLink const*>,true>,geo::allocator_adapter<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,mdm::zone_mallocator>>::destroy(result[1]);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,void *>>(v3, result);
  }
}

void std::vector<md::TransitLineLabelFeature::LabelTransitLine,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLine,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::LabelTransitLine>(v2, v1);
  }
}

void std::vector<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(v4 - 1);
      }

      while (v4 != v2);
      v5 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>>(v6, v5);
  }
}

void **geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 2));
      v4 = *a1;
      v6 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::_fast_shared_ptr_control>(v6, v4);
      *a1 = 0;
    }
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>>(uint64_t a1, void *a2)
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

void std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::LabelTransitLineSegment>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::_fast_shared_ptr_control>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::LabelTransitLineSegment>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::LabelTransitLine>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,void *>>(uint64_t a1, void *a2)
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

void md::TransitLineLabelFeature::addTransitLink(mdm::zone_mallocator *result, unint64_t a2)
{
  v4 = result + 576;
  v5 = *(result + 72);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = result + 576;
  do
  {
    v7 = *(v5 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 == v4 || *(v6 + 4) > a2 || !*(v6 + 5))
  {
LABEL_10:
    v63 = 0;
    v10 = mdm::zone_mallocator::instance(result);
    v11 = pthread_rwlock_rdlock((v10 + 32));
    v62 = result;
    if (v11)
    {
      geo::read_write_lock::logFailure(v11, "read lock", v12);
    }

    v61 = v4;
    v13 = malloc_type_zone_malloc(*v10, 0x38uLL, 0x1020040F3134C1FuLL);
    atomic_fetch_add((v10 + 24), 1u);
    geo::read_write_lock::unlock((v10 + 32));
    v63 = v13;
    v13[2] = 0;
    v15 = v13 + 2;
    *v13 = 1;
    v13[1] = a2;
    v13[3] = 0;
    v13[4] = 0;
    *(v13 + 12) = -65536;
    v16 = *(a2 + 32);
    if (v16)
    {
      if (v16 > 0xCCCCCCCCCCCCCCCLL)
      {
LABEL_66:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v68 = (v13 + 5);
      v17 = mdm::zone_mallocator::instance(v14);
      v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitLineLabelFeature::LabelTransitLineSegment>(v17, v16);
      v65 = v64;
      v66 = v64;
      v67 = &v64[20 * v16];
      std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__swap_out_circular_buffer(v13 + 2, &v64);
      v14 = std::__split_buffer<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator> &>::~__split_buffer(&v64);
      v18 = 0;
      v19 = v13[3];
      do
      {
        v20 = v13[4];
        if (v19 >= v20)
        {
          v21 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *v15) >> 2);
          v22 = v21 + 1;
          if (v21 + 1 > 0xCCCCCCCCCCCCCCCLL)
          {
            goto LABEL_66;
          }

          v23 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - *v15) >> 2);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x666666666666666)
          {
            v24 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v24 = v22;
          }

          v68 = (v13 + 5);
          if (v24)
          {
            v25 = mdm::zone_mallocator::instance(v14);
            v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitLineLabelFeature::LabelTransitLineSegment>(v25, v24);
          }

          else
          {
            v26 = 0;
          }

          v27 = &v26[20 * v21];
          v64 = v26;
          v65 = v27;
          v67 = &v26[20 * v24];
          v27[8] = 0;
          *v27 = 0;
          *(v27 + 9) = -16777216;
          *(v27 + 7) = v18;
          *(v27 + 4) = -1;
          v66 = v27 + 20;
          std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__swap_out_circular_buffer(v13 + 2, &v64);
          v19 = v13[3];
          v14 = std::__split_buffer<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator> &>::~__split_buffer(&v64);
        }

        else
        {
          *(v19 + 8) = 0;
          *v19 = 0;
          *(v19 + 9) = -16777216;
          *(v19 + 14) = v18;
          *(v19 + 16) = -1;
          v19 += 20;
        }

        v13[3] = v19;
        ++v18;
      }

      while (v16 != v18);
    }

    v63 = v13;
    v28 = *(v62 + 64);
    v29 = *(v62 + 65);
    if (v28 >= v29)
    {
      v31 = *(v62 + 63);
      v32 = v28 - v31;
      v33 = v32 + 1;
      if ((v32 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v34 = v29 - v31;
      if (v34 >> 2 > v33)
      {
        v33 = v34 >> 2;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF8)
      {
        v35 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        v36 = mdm::zone_mallocator::instance(v14);
        v37 = pthread_rwlock_rdlock((v36 + 32));
        if (v37)
        {
          geo::read_write_lock::logFailure(v37, "read lock", v38);
        }

        v39 = malloc_type_zone_malloc(*v36, 8 * v35, 0x2004093837F09uLL);
        atomic_fetch_add((v36 + 24), 1u);
        geo::read_write_lock::unlock((v36 + 32));
        v31 = *(v62 + 63);
        v28 = *(v62 + 64);
        v40 = v28 - v31;
      }

      else
      {
        v39 = 0;
        v40 = v28 - v31;
      }

      v41 = &v39[8 * v32];
      v42 = &v39[8 * v35];
      *v41 = 0;
      v43 = &v41[-8 * v40];
      *v41 = v63;
      v30 = v41 + 8;
      v63 = 0;
      if (v31 != v28)
      {
        v44 = v31;
        v45 = v43;
        do
        {
          *v45 = 0;
          *v45 = *v44;
          v45 += 8;
          *v44++ = 0;
        }

        while (v44 != v28);
        do
        {
          v14 = geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(v31++);
        }

        while (v31 != v28);
        v31 = *(v62 + 63);
      }

      *(v62 + 63) = v43;
      *(v62 + 64) = v30;
      *(v62 + 65) = v42;
      if (v31)
      {
        v46 = mdm::zone_mallocator::instance(v14);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>>(v46, v31);
      }
    }

    else
    {
      *v28 = 0;
      *v28 = v63;
      v63 = 0;
      v30 = v28 + 1;
    }

    v47 = v61;
    *(v62 + 64) = v30;
    v48 = geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(&v63);
    v49 = *(*(v62 + 64) - 8);
    if (v49)
    {
      v50 = v49 + 8;
    }

    else
    {
      v50 = 0;
    }

    v51 = mdm::zone_mallocator::instance(v48);
    v52 = pthread_rwlock_rdlock((v51 + 32));
    if (v52)
    {
      geo::read_write_lock::logFailure(v52, "read lock", v53);
    }

    v54 = malloc_type_zone_malloc(*v51, 0x30uLL, 0x1060040DD2E459AuLL);
    atomic_fetch_add((v51 + 24), 1u);
    geo::read_write_lock::unlock((v51 + 32));
    v54[4] = a2;
    v54[5] = v50;
    v56 = *v61;
    v57 = v61;
    if (*v61)
    {
      while (1)
      {
        while (1)
        {
          v57 = v56;
          v58 = v56[4];
          if (v58 <= a2)
          {
            break;
          }

          v56 = *v57;
          v47 = v57;
          if (!*v57)
          {
            goto LABEL_60;
          }
        }

        if (v58 >= a2)
        {
          break;
        }

        v56 = v57[1];
        if (!v56)
        {
          v47 = v57 + 1;
          goto LABEL_60;
        }
      }

      if (v54)
      {
        v60 = mdm::zone_mallocator::instance(v55);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,void *>>(v60, v54);
      }
    }

    else
    {
LABEL_60:
      *v54 = 0;
      v54[1] = 0;
      v54[2] = v57;
      *v47 = v54;
      v59 = **(v62 + 71);
      if (v59)
      {
        *(v62 + 71) = v59;
        v54 = *v47;
      }

      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(v62 + 72), v54);
      ++*(v62 + 74);
    }
  }
}

void sub_1B3110B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  geo::read_write_lock::unlock((v9 + 32));
  geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v101 = *v11;
        if (*(*(*a3 + 536) + 32 * *v10 + 16) >= *(*(*a3 + 536) + 32 * *v11 + 16))
        {
          return result;
        }

        *v11 = *v10;
LABEL_172:
        *v10 = v101;
        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v95 = *(*a3 + 536);

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,0>(v11, v11 + 1, v11 + 2, a2 - 1, v95);
    }

    if (v12 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,0>(v11, v11 + 1, v11 + 2, v11 + 3, *(*a3 + 536));
      v102 = v11[3];
      v103 = *(*a3 + 536);
      if (*(v103 + 32 * *v10 + 16) < *(v103 + 32 * v102 + 16))
      {
        v11[3] = *v10;
        *v10 = v102;
        v105 = v11[2];
        v104 = v11[3];
        v106 = v103 + 32 * v104;
        v107 = *(v106 + 20);
        if (*(v106 + 16) < *(v103 + 32 * v105 + 16))
        {
          v11[2] = v104;
          v11[3] = v105;
          v108 = v11[1];
          if (__PAIR64__(v107, *(v106 + 16)) < *(v103 + 32 * v108 + 16))
          {
            v11[1] = v104;
            v11[2] = v108;
            v109 = *v11;
            if (__PAIR64__(v107, *(v106 + 16)) < *(v103 + 32 * *v11 + 16))
            {
              *v11 = v104;
              v11[1] = v109;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v110 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v111 = 0;
            v112 = *(*a3 + 536);
            v113 = v11;
            do
            {
              v114 = v113;
              v113 = v110;
              v115 = v114[1];
              v116 = v112 + 32 * v115;
              v117 = *(v116 + 20);
              if (*(v116 + 16) < *(v112 + 32 * *v114 + 16))
              {
                v114[1] = *v114;
                v118 = v11;
                if (v114 != v11)
                {
                  v119 = v111;
                  while (1)
                  {
                    v120 = *(v11 + v119 - 8);
                    result = v112 + 32 * v120;
                    v121 = *(result + 20);
                    if (v117 >= v121)
                    {
                      if (v117 != v121)
                      {
                        v118 = (v11 + v119);
                        goto LABEL_194;
                      }

                      result = *(result + 16);
                      if (*(v116 + 16) >= result)
                      {
                        break;
                      }
                    }

                    --v114;
                    *(v11 + v119) = v120;
                    v119 -= 8;
                    if (!v119)
                    {
                      v118 = v11;
                      goto LABEL_194;
                    }
                  }

                  v118 = v114;
                }

LABEL_194:
                *v118 = v115;
              }

              v110 = v113 + 1;
              v111 += 8;
            }

            while (v113 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v161 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v162 = *(*a3 + 536);
          do
          {
            v163 = v9;
            v9 = v161;
            v165 = *v163;
            v164 = v163[1];
            v166 = v162 + 32 * v164;
            v167 = *(v166 + 20);
            if (*(v166 + 16) < *(v162 + 32 * *v163 + 16))
            {
              do
              {
                v168 = v163;
                v169 = *--v163;
                v163[2] = v165;
                v165 = v169;
              }

              while (__PAIR64__(v167, *(v166 + 16)) < *(v162 + 32 * v169 + 16));
              *v168 = v164;
            }

            v161 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return result;
      }

      v122 = (v12 - 2) >> 1;
      v123 = *a3;
      v124 = v122;
      do
      {
        v125 = v124;
        if (v122 >= v124)
        {
          v126 = (2 * v124) | 1;
          v127 = &v11[v126];
          if (2 * v125 + 2 >= v12)
          {
            v128 = *(v123 + 536);
          }

          else
          {
            v128 = *(v123 + 536);
            if (*(v128 + 32 * *v127 + 16) < *(v128 + 32 * v127[1] + 16))
            {
              ++v127;
              v126 = 2 * v125 + 2;
            }
          }

          v129 = v11[v125];
          result = *v127;
          v130 = v128 + 32 * v129;
          v131 = *(v130 + 20);
          if (*(v128 + 32 * *v127 + 16) >= *(v130 + 16))
          {
            v11[v125] = result;
            if (v122 >= v126)
            {
              while (1)
              {
                v132 = 2 * v126;
                v126 = (2 * v126) | 1;
                result = &v11[v126];
                v133 = v132 + 2;
                if (v133 < v12 && *(v128 + 32 * *result + 16) < *(v128 + 32 * *(result + 8) + 16))
                {
                  result += 8;
                  v126 = v133;
                }

                if (*(v128 + 32 * *result + 16) < __PAIR64__(v131, *(v130 + 16)))
                {
                  break;
                }

                *v127 = *result;
                v127 = result;
                if (v122 < v126)
                {
                  goto LABEL_207;
                }
              }
            }

            result = v127;
LABEL_207:
            *result = v129;
          }
        }

        v124 = v125 - 1;
      }

      while (v125);
      while (2)
      {
        v134 = 0;
        v135 = *v11;
        v136 = *a3;
        v137 = v11;
        do
        {
          v138 = v137;
          v139 = &v137[v134];
          v137 = v139 + 1;
          v140 = 2 * v134;
          v134 = (2 * v134) | 1;
          v141 = v140 + 2;
          if (v141 < v12)
          {
            v143 = v139[2];
            v142 = v139 + 2;
            v144 = *(v136 + 536);
            v145 = v144 + 32 * *(v142 - 1);
            v146 = *(v145 + 20);
            result = v144 + 32 * v143;
            v147 = *(result + 20);
            if (v146 < v147 || v146 == v147 && (result = *(result + 16), *(v145 + 16) < result))
            {
              v137 = v142;
              v134 = v141;
            }
          }

          *v138 = *v137;
        }

        while (v134 <= ((v12 - 2) >> 1));
        if (v137 != --a2)
        {
          *v137 = *a2;
          *a2 = v135;
          v148 = (v137 - v11 + 8) >> 3;
          v149 = v148 - 2;
          if (v148 < 2 || (v150 = v149 >> 1, v151 = &v11[v149 >> 1], v135 = *v137, v152 = *(v136 + 536), result = v152 + 32 * *v151, v153 = *(result + 20), v154 = v152 + 32 * *v137, v155 = *(v154 + 20), v153 >= v155) && (v153 != v155 || (result = *(result + 16), result >= *(v154 + 16))))
          {
LABEL_238:
            if (v12-- <= 2)
            {
              return result;
            }

            continue;
          }

          *v137 = *v151;
          if (v149 >= 2)
          {
            while (1)
            {
              v156 = v150 - 1;
              v150 = (v150 - 1) >> 1;
              v137 = &v11[v150];
              result = v152 + 32 * *v137;
              v157 = *(result + 20);
              if (v157 >= v155)
              {
                if (v157 != v155)
                {
                  break;
                }

                result = *(result + 16);
                if (result >= *(v154 + 16))
                {
                  break;
                }
              }

              *v151 = *v137;
              v151 = &v11[v150];
              if (v156 <= 1)
              {
                goto LABEL_237;
              }
            }
          }

          v137 = v151;
        }

        break;
      }

LABEL_237:
      *v137 = v135;
      goto LABEL_238;
    }

    v13 = v12 >> 1;
    v14 = &v11[v12 >> 1];
    v15 = v14;
    v16 = *(*a3 + 536);
    if (v12 >= 0x81)
    {
      v17 = *v14;
      v18 = *v11;
      v19 = v16 + 32 * *v14;
      v20 = v16 + 32 * *v11;
      v21 = *(v20 + 20);
      if (*(v19 + 16) < *(v20 + 16))
      {
        if (*(v16 + 32 * *v10 + 16) < *(v19 + 16))
        {
          *v11 = *v10;
        }

        else
        {
          *v11 = v17;
          *v14 = v18;
          if (*(v16 + 32 * *v10 + 16) >= __PAIR64__(v21, *(v20 + 16)))
          {
            goto LABEL_31;
          }

          *v14 = *v10;
        }

        *v10 = v18;
        goto LABEL_31;
      }

      if (*(v16 + 32 * *v10 + 16) < *(v19 + 16))
      {
        *v14 = *v10;
        *v10 = v17;
        v28 = *v11;
        if (*(v16 + 32 * *v14 + 16) < *(v16 + 32 * *v11 + 16))
        {
          *v11 = *v14;
          *v14 = v28;
        }
      }

LABEL_31:
      v30 = v13 - 1;
      v31 = v11[v13 - 1];
      v32 = v11[1];
      v33 = v16 + 32 * v31;
      v34 = v16 + 32 * v32;
      v35 = *(v34 + 20);
      if (*(v33 + 16) < *(v34 + 16))
      {
        v36 = *(a2 - 2);
        if (*(v16 + 32 * v36 + 16) < *(v33 + 16))
        {
          v11[1] = v36;
        }

        else
        {
          v11[1] = v31;
          v11[v30] = v32;
          v40 = *(a2 - 2);
          if (*(v16 + 32 * v40 + 16) >= __PAIR64__(v35, *(v34 + 16)))
          {
            goto LABEL_46;
          }

          v11[v30] = v40;
        }

        *(a2 - 2) = v32;
        goto LABEL_46;
      }

      v37 = *(a2 - 2);
      if (*(v16 + 32 * v37 + 16) < *(v33 + 16))
      {
        v11[v30] = v37;
        *(a2 - 2) = v31;
        v38 = v11[v30];
        v39 = v11[1];
        if (*(v16 + 32 * v38 + 16) < *(v16 + 32 * v39 + 16))
        {
          v11[1] = v38;
          v11[v30] = v39;
        }
      }

LABEL_46:
      v43 = v14[1];
      v41 = v14 + 1;
      v42 = v43;
      v44 = v11[2];
      v45 = v16 + 32 * v43;
      v46 = v16 + 32 * v44;
      v47 = *(v46 + 20);
      if (*(v45 + 16) < *(v46 + 16))
      {
        v48 = *(a2 - 3);
        if (*(v16 + 32 * v48 + 16) < *(v45 + 16))
        {
          v11[2] = v48;
        }

        else
        {
          v11[2] = v42;
          *v41 = v44;
          v51 = *(a2 - 3);
          if (*(v16 + 32 * v51 + 16) >= __PAIR64__(v47, *(v46 + 16)))
          {
            goto LABEL_57;
          }

          *v41 = v51;
        }

        *(a2 - 3) = v44;
        goto LABEL_57;
      }

      v49 = *(a2 - 3);
      if (*(v16 + 32 * v49 + 16) < *(v45 + 16))
      {
        *v41 = v49;
        *(a2 - 3) = v42;
        v50 = v11[2];
        if (*(v16 + 32 * *v41 + 16) < *(v16 + 32 * v50 + 16))
        {
          v11[2] = *v41;
          *v41 = v50;
        }
      }

LABEL_57:
      v52 = v11[v30];
      v53 = *v15;
      v54 = v16 + 32 * *v15;
      result = *(v54 + 20);
      v55 = v16 + 32 * v52;
      v56 = *(v55 + 20);
      if (*(v54 + 16) < *(v55 + 16))
      {
        v57 = *v41;
        v58 = v16 + 32 * *v41;
        v59 = *(v58 + 20);
        if (v59 < result || v59 == result && (result = *(v58 + 16), result < *(v54 + 16)))
        {
          v11[v30] = v57;
        }

        else
        {
          v11[v30] = v53;
          *v15 = v52;
          if (v59 >= v56 && (v59 != v56 || *(v58 + 16) >= *(v55 + 16)))
          {
            v53 = v52;
            goto LABEL_69;
          }

          *v15 = v57;
          v53 = v57;
        }
      }

      else
      {
        v60 = *v41;
        v61 = v16 + 32 * *v41;
        v62 = *(v61 + 20);
        if (v62 >= result)
        {
          if (v62 != result)
          {
            goto LABEL_69;
          }

          result = *(v61 + 16);
          if (result >= *(v54 + 16))
          {
            goto LABEL_69;
          }
        }

        *v15 = v60;
        *v41 = v53;
        if (v62 >= v56 && (v62 != v56 || *(v61 + 16) >= *(v55 + 16)))
        {
          v53 = v60;
          goto LABEL_69;
        }

        v11[v30] = v60;
        v41 = v15;
        v53 = v52;
      }

      *v41 = v52;
LABEL_69:
      v63 = *v11;
      *v11 = v53;
      *v15 = v63;
      goto LABEL_70;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = v16 + 32 * *v11;
    v25 = v16 + 32 * *v15;
    v26 = *(v25 + 20);
    if (*(v24 + 16) < *(v25 + 16))
    {
      v27 = v16 + 32 * *v10;
      result = *(v27 + 20);
      if (*(v27 + 16) < *(v24 + 16))
      {
        *v15 = *v10;
LABEL_41:
        *v10 = v23;
        goto LABEL_70;
      }

      *v15 = v22;
      *v11 = v23;
      if (*(v16 + 32 * *v10 + 16) < __PAIR64__(v26, *(v25 + 16)))
      {
        *v11 = *v10;
        goto LABEL_41;
      }
    }

    else if (*(v16 + 32 * *v10 + 16) < *(v24 + 16))
    {
      *v11 = *v10;
      *v10 = v22;
      v29 = *v15;
      if (*(v16 + 32 * *v11 + 16) < *(v16 + 32 * *v15 + 16))
      {
        *v15 = *v11;
        *v11 = v29;
      }
    }

LABEL_70:
    --a4;
    v64 = *v11;
    v65 = v16 + 32 * *v11;
    if (a5)
    {
      v66 = *(v65 + 20);
      goto LABEL_75;
    }

    v67 = v16 + 32 * *(v11 - 1);
    v68 = *(v67 + 20);
    v66 = *(v65 + 20);
    if (v68 < v66 || v68 == v66 && (v66 = *(v67 + 20), *(v67 + 16) < *(v65 + 16)))
    {
LABEL_75:
      for (i = v11 + 1; ; ++i)
      {
        v70 = *i;
        if (*(v16 + 32 * *i + 16) >= __PAIR64__(v66, *(v65 + 16)))
        {
          break;
        }
      }

      v71 = i - 1;
      if (i - 1 == v11)
      {
        v74 = a2;
        if (i < a2)
        {
          v76 = *v10;
          v77 = *(v16 + 32 * *v10 + 20);
          v74 = a2 - 1;
          if (v77 >= v66)
          {
            v74 = a2 - 1;
            do
            {
              if (v77 == v66)
              {
                if (i >= v74 || *(v16 + 32 * v76 + 16) < *(v65 + 16))
                {
                  break;
                }
              }

              else if (i >= v74)
              {
                break;
              }

              v78 = *--v74;
              v76 = v78;
              v77 = *(v16 + 32 * v78 + 20);
            }

            while (v77 >= v66);
          }
        }
      }

      else
      {
        v72 = *v10;
        v73 = *(v16 + 32 * *v10 + 20);
        v74 = a2 - 1;
        if (v73 >= v66)
        {
          v74 = a2 - 1;
          do
          {
            if (v73 == v66 && *(v16 + 32 * v72 + 16) < *(v65 + 16))
            {
              break;
            }

            v75 = *--v74;
            v72 = v75;
            v73 = *(v16 + 32 * v75 + 20);
          }

          while (v73 >= v66);
        }
      }

      if (i < v74)
      {
        v79 = *v74;
        v80 = i;
        v81 = v74;
        do
        {
          *v80++ = v79;
          *v81 = v70;
          while (1)
          {
            v70 = *v80;
            if (*(v16 + 32 * *v80 + 16) >= __PAIR64__(v66, *(v65 + 16)))
            {
              break;
            }

            ++v80;
          }

          v71 = v80 - 1;
          do
          {
            v82 = *--v81;
            v79 = v82;
          }

          while (*(v16 + 32 * v82 + 16) >= __PAIR64__(v66, *(v65 + 16)));
        }

        while (v80 < v81);
      }

      if (v71 != v11)
      {
        *v11 = *v71;
      }

      *v71 = v64;
      if (i < v74)
      {
        goto LABEL_107;
      }

      v83 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *>(v11, v71, a3);
      v11 = v71 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *>(v71 + 1, a2, a3);
      if (result)
      {
        a2 = v71;
        if (v83)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v83)
      {
LABEL_107:
        result = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,false>(v9, v71, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v71 + 1;
      }
    }

    else
    {
      v84 = *v10;
      v85 = v16 + 32 * *v10;
      v86 = *(v85 + 20);
      if (__PAIR64__(v66, *(v65 + 16)) < *(v85 + 16))
      {
        do
        {
          v87 = v11[1];
          ++v11;
        }

        while (__PAIR64__(v66, *(v65 + 16)) >= *(v16 + 32 * v87 + 16));
      }

      else
      {
          ;
        }
      }

      v88 = a2;
      if (v11 < a2)
      {
        v88 = a2 - 1;
        while (v66 < v86 || v66 == v86 && *(v65 + 16) < *(v16 + 32 * v84 + 16))
        {
          v89 = *--v88;
          v84 = v89;
          v86 = *(v16 + 32 * v89 + 20);
        }
      }

      if (v11 < v88)
      {
        v90 = *v11;
        v91 = *v88;
        do
        {
          *v11 = v91;
          *v88 = v90;
          do
          {
            v92 = v11[1];
            ++v11;
            v90 = v92;
          }

          while (__PAIR64__(v66, *(v65 + 16)) >= *(v16 + 32 * v92 + 16));
          do
          {
            v93 = *--v88;
            v91 = v93;
          }

          while (__PAIR64__(v66, *(v65 + 16)) < *(v16 + 32 * v93 + 16));
        }

        while (v11 < v88);
      }

      v94 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v94;
      }

      a5 = 0;
      *v94 = v64;
    }
  }

  v101 = *v11;
  v96 = v11[1];
  v97 = *(*a3 + 536);
  v98 = v97 + 32 * v96;
  v99 = v97 + 32 * *v11;
  v100 = *(v99 + 20);
  if (*(v98 + 16) < *(v99 + 16))
  {
    if (*(v97 + 32 * *v10 + 16) < *(v98 + 16))
    {
      *v11 = *v10;
      goto LABEL_172;
    }

    *v11 = v96;
    v11[1] = v101;
    if (*(v97 + 32 * *v10 + 16) < __PAIR64__(v100, *(v99 + 16)))
    {
      v11[1] = *v10;
      goto LABEL_172;
    }
  }

  else if (*(v97 + 32 * *v10 + 16) < *(v98 + 16))
  {
    v11[1] = *v10;
    *v10 = v96;
    v160 = *v11;
    v159 = v11[1];
    if (*(v97 + 32 * v159 + 16) < *(v97 + 32 * *v11 + 16))
    {
      *v11 = v159;
      v11[1] = v160;
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = a5 + 32 * *a2;
  v8 = a5 + 32 * *result;
  v9 = *(v8 + 20);
  if (*(v7 + 16) < *(v8 + 16))
  {
    if (*(a5 + 32 * *a3 + 16) < *(v7 + 16))
    {
      *result = *a3;
    }

    else
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(a5 + 32 * *a3 + 16) >= __PAIR64__(v9, *(v8 + 16)))
      {
        goto LABEL_17;
      }

      *a2 = v5;
    }

    *a3 = v6;
LABEL_12:
    v5 = v6;
    goto LABEL_17;
  }

  v6 = *a3;
  if (*(a5 + 32 * *a3 + 16) >= *(v7 + 16))
  {
    goto LABEL_12;
  }

  *a2 = v6;
  *a3 = v5;
  v10 = *result;
  if (*(a5 + 32 * *a2 + 16) < *(a5 + 32 * *result + 16))
  {
    *result = *a2;
    *a2 = v10;
    v5 = *a3;
  }

LABEL_17:
  if (*(a5 + 32 * *a4 + 16) < *(a5 + 32 * v5 + 16))
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if (*(a5 + 32 * *a3 + 16) < *(a5 + 32 * *a2 + 16))
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (*(a5 + 32 * *a2 + 16) < *(a5 + 32 * *result + 16))
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v8 = *a1;
      v18 = a1[1];
      v19 = *(*a3 + 536);
      v20 = v19 + 32 * v18;
      v21 = v19 + 32 * *a1;
      v22 = *(v21 + 20);
      if (*(v20 + 16) >= *(v21 + 16))
      {
        v35 = *(a2 - 1);
        if (*(v19 + 32 * v35 + 16) < *(v20 + 16))
        {
          a1[1] = v35;
          *(a2 - 1) = v18;
          v37 = *a1;
          v36 = a1[1];
          if (*(v19 + 32 * v36 + 16) < *(v19 + 32 * *a1 + 16))
          {
            *a1 = v36;
            a1[1] = v37;
          }
        }

        return 1;
      }

      v23 = *(a2 - 1);
      if (*(v19 + 32 * v23 + 16) < *(v20 + 16))
      {
        *a1 = v23;
      }

      else
      {
        *a1 = v18;
        a1[1] = v8;
        v41 = *(a2 - 1);
        if (*(v19 + 32 * v41 + 16) >= __PAIR64__(v22, *(v21 + 16)))
        {
          return 1;
        }

        a1[1] = v41;
      }

LABEL_36:
      *(a2 - 1) = v8;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, *(*a3 + 536));
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(*a3 + 536);
        if (*(v11 + 32 * v9 + 16) < *(v11 + 32 * v10 + 16))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v13 = a1[2];
          v12 = a1[3];
          v14 = v11 + 32 * v12;
          v15 = *(v14 + 20);
          if (*(v14 + 16) < *(v11 + 32 * v13 + 16))
          {
            a1[2] = v12;
            a1[3] = v13;
            v16 = a1[1];
            if (__PAIR64__(v15, *(v14 + 16)) < *(v11 + 32 * v16 + 16))
            {
              a1[1] = v12;
              a1[2] = v16;
              v17 = *a1;
              if (__PAIR64__(v15, *(v14 + 16)) < *(v11 + 32 * *a1 + 16))
              {
                *a1 = v12;
                a1[1] = v17;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::initTransitLines(GeoCodecsTransitLink *)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, *(*a3 + 536));
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(*(*a3 + 536) + 32 * v7 + 16) >= *(*(*a3 + 536) + 32 * *a1 + 16))
    {
      return 1;
    }

    *a1 = v7;
    goto LABEL_36;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *(*a3 + 536);
  v29 = v28 + 32 * v27;
  v30 = v28 + 32 * *a1;
  v31 = *(v30 + 20);
  if (*(v29 + 16) >= *(v30 + 16))
  {
    v38 = *v24;
    v39 = v28 + 32 * *v24;
    v40 = *(v39 + 20);
    if (*(v39 + 16) >= *(v29 + 16))
    {
      goto LABEL_42;
    }

    *v26 = v38;
    *v24 = v27;
    if (v40 >= v31 && (v40 != v31 || *(v39 + 16) >= *(v30 + 16)))
    {
      goto LABEL_42;
    }

    *a1 = v38;
LABEL_41:
    *v26 = v25;
    goto LABEL_42;
  }

  v32 = *v24;
  v33 = v28 + 32 * *v24;
  v34 = *(v33 + 20);
  if (*(v33 + 16) < *(v29 + 16))
  {
    *a1 = v32;
LABEL_40:
    v26 = a1 + 2;
    goto LABEL_41;
  }

  *a1 = v27;
  a1[1] = v25;
  if (v34 < v31 || v34 == v31 && *(v33 + 16) < *(v30 + 16))
  {
    *v26 = v32;
    goto LABEL_40;
  }

LABEL_42:
  v42 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v43 = 0;
  v44 = 0;
  while (1)
  {
    v45 = *v42;
    v46 = v28 + 32 * *v42;
    v47 = *(v46 + 20);
    if (*(v46 + 16) < *(v28 + 32 * *v24 + 16))
    {
      *v42 = *v24;
      v48 = v43;
      do
      {
        v49 = *(a1 + v48 + 8);
        v50 = v28 + 32 * v49;
        v51 = *(v50 + 20);
        if (v47 >= v51)
        {
          if (v47 != v51)
          {
            v24 = (a1 + v48 + 16);
            goto LABEL_54;
          }

          if (*(v46 + 16) >= *(v50 + 16))
          {
            goto LABEL_54;
          }
        }

        --v24;
        *(a1 + v48 + 16) = v49;
        v48 -= 8;
      }

      while (v48 != -16);
      v24 = a1;
LABEL_54:
      *v24 = v45;
      if (++v44 == 8)
      {
        return v42 + 1 == a2;
      }
    }

    v24 = v42;
    v43 += 8;
    if (++v42 == a2)
    {
      return 1;
    }
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitLineLabelFeature::LabelTransitLineSegment>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 20 * a2, 0x100004055D53CDDuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t *std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 8) = *(v2 + 8);
      *v5 = v6;
      *(v5 + 9) = *(v2 + 9);
      LODWORD(v6) = *(v2 + 14);
      *(v5 + 18) = *(v2 + 18);
      *(v5 + 14) = v6;
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 20) % 0x14uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitLineLabelFeature::LabelTransitLineSegment>(v4, v3);
  }

  return a1;
}

uint64_t md::TransitLineLabelFeature::WorkUnit::WorkUnit(uint64_t a1, void *a2)
{
  *a1 = 1;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 24) = 0;
  v4 = a2[1];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    *(a1 + 24) = v6;
    if (v6)
    {
      *v3 = *a2;
    }
  }

  return a1;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v80 = *v11;
        if (*(*(*a3 + 536) + 32 * *v10 + 14) < *(*(*a3 + 536) + 32 * *v11 + 14))
        {
          *v11 = *v10;
          *v10 = v80;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v88 = v11 + 1;
      v89 = v11[1];
      v90 = v11 + 2;
      v91 = v11[2];
      v92 = *v11;
      v93 = *(*a3 + 536);
      v94 = *(v93 + 32 * v89 + 14);
      v95 = *(v93 + 32 * *v11 + 14);
      v96 = *(v93 + 32 * v91 + 14);
      if (v94 >= v95)
      {
        if (v96 >= v94)
        {
          goto LABEL_176;
        }

        *v88 = v91;
        *v90 = v89;
        v97 = v11;
        v98 = v11 + 1;
        result = v89;
        if (v96 < v95)
        {
          goto LABEL_166;
        }
      }

      else
      {
        v97 = v11;
        v98 = v11 + 2;
        result = *v11;
        if (v96 >= v94)
        {
          *v11 = v89;
          v11[1] = v92;
          v97 = v11 + 1;
          v98 = v11 + 2;
          result = v92;
          if (v96 >= v95)
          {
LABEL_176:
            v89 = v91;
            goto LABEL_177;
          }
        }

LABEL_166:
        *v97 = v91;
        *v98 = v92;
        v89 = result;
      }

LABEL_177:
      if (*(v93 + 32 * *v10 + 14) < *(v93 + 32 * v89 + 14))
      {
        *v90 = *v10;
        *v10 = v89;
        v150 = *v90;
        v151 = *v88;
        v152 = *(v93 + 32 * v150 + 14);
        if (v152 < *(v93 + 32 * v151 + 14))
        {
          v11[1] = v150;
          v11[2] = v151;
          v153 = *v11;
          if (v152 < *(v93 + 32 * *v11 + 14))
          {
            *v11 = v150;
            v11[1] = v153;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v79 = *(*a3 + 536);

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v79);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v99 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v100 = *(*a3 + 536);
            v101 = 8;
            v102 = v11;
            do
            {
              v104 = *v102;
              v103 = v102[1];
              v102 = v99;
              v105 = *(v100 + 32 * v103 + 14);
              if (v105 < *(v100 + 32 * v104 + 14))
              {
                v106 = v101;
                while (1)
                {
                  *(v11 + v106) = v104;
                  v107 = v106 - 8;
                  if (v106 == 8)
                  {
                    break;
                  }

                  v104 = *(v11 + v106 - 16);
                  v106 -= 8;
                  if (v105 >= *(v100 + 32 * v104 + 14))
                  {
                    v108 = (v11 + v107);
                    goto LABEL_123;
                  }
                }

                v108 = v11;
LABEL_123:
                *v108 = v103;
              }

              v99 = v102 + 1;
              v101 += 8;
            }

            while (v102 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = *(*a3 + 536);
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 32 * v146 + 14);
            if (v148 < *(v145 + 32 * v147 + 14))
            {
              v149 = v9;
              do
              {
                *v149 = v147;
                v147 = *(v149 - 2);
                --v149;
              }

              while (v148 < *(v145 + 32 * v147 + 14));
              *v149 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v109 = (v12 - 2) >> 1;
        v110 = *a3;
        v111 = v109;
        do
        {
          v112 = v111;
          if (v109 >= v111)
          {
            v113 = (2 * v111) | 1;
            v114 = &v11[v113];
            v115 = *v114;
            if (2 * v112 + 2 >= v12)
            {
              v116 = *(v110 + 536);
            }

            else
            {
              v116 = *(v110 + 536);
              if (*(v116 + 32 * v115 + 14) < *(v116 + 32 * v114[1] + 14))
              {
                v115 = v114[1];
                ++v114;
                v113 = 2 * v112 + 2;
              }
            }

            v117 = &v11[v112];
            v118 = *v117;
            v119 = *(v116 + 32 * *v117 + 14);
            if (*(v116 + 32 * v115 + 14) >= v119)
            {
              do
              {
                v120 = v114;
                *v117 = v115;
                if (v109 < v113)
                {
                  break;
                }

                v121 = (2 * v113) | 1;
                v114 = &v11[v121];
                v113 = 2 * v113 + 2;
                v115 = *v114;
                if (v113 >= v12)
                {
                  v113 = v121;
                }

                else if (*(v116 + 32 * v115 + 14) >= *(v116 + 32 * v114[1] + 14))
                {
                  v113 = v121;
                }

                else
                {
                  v115 = v114[1];
                  ++v114;
                }

                v117 = v120;
              }

              while (*(v116 + 32 * v115 + 14) >= v119);
              *v120 = v118;
            }
          }

          v111 = v112 - 1;
        }

        while (v112);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = &v125[v122];
            v127 = v126 + 1;
            v128 = v126[1];
            result = 2 * v122;
            v129 = (2 * v122) | 1;
            v122 = 2 * v122 + 2;
            if (v122 >= v12)
            {
              v122 = v129;
            }

            else
            {
              v131 = v126[2];
              v130 = v126 + 2;
              result = v131;
              if (*(*(v124 + 536) + 32 * v128 + 14) >= *(*(v124 + 536) + 32 * v131 + 14))
              {
                v122 = v129;
              }

              else
              {
                v128 = result;
                v127 = v130;
              }
            }

            *v125 = v128;
            v125 = v127;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v127 == --a2)
          {
            *v127 = v123;
          }

          else
          {
            *v127 = *a2;
            *a2 = v123;
            v132 = (v127 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v127;
              v139 = *(v124 + 536);
              v140 = *(v139 + 32 * *v127 + 14);
              if (*(v139 + 32 * *v136 + 14) < v140)
              {
                do
                {
                  v141 = v136;
                  *v127 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v127 = v141;
                }

                while (*(v139 + 32 * *v136 + 14) < v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = *(*a3 + 536);
    v16 = *v10;
    v17 = *(v15 + 32 * *v10 + 14);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 32 * *v13 + 14);
      v21 = *(v15 + 32 * *v11 + 14);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 32 * *v13 + 14) < *(v15 + 32 * *v11 + 14))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 32 * *v10 + 14) < v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 32 * v29 + 14);
      v32 = *(v15 + 32 * v30 + 14);
      v33 = *(a2 - 2);
      v34 = *(v15 + 32 * v33 + 14);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 32 * *v28 + 14) < *(v15 + 32 * v35 + 14))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 32 * v36 + 14) < v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 32 * v39 + 14);
      v42 = *(v15 + 32 * v40 + 14);
      v43 = *(a2 - 3);
      v44 = *(v15 + 32 * v43 + 14);
      if (v41 >= v42)
      {
        if (v44 < v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 32 * *v37 + 14) < *(v15 + 32 * v45 + 14))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 < v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 32 * v46 + 14) < v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 32 * *v14 + 14);
      v50 = *(v15 + 32 * *v28 + 14);
      v51 = *v37;
      v52 = *(v15 + 32 * *v37 + 14);
      if (v49 >= v50)
      {
        if (v52 >= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 >= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 >= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 32 * *v11 + 14);
    v25 = *(v15 + 32 * *v14 + 14);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 32 * *v11 + 14) < *(v15 + 32 * *v14 + 14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 32 * *v10 + 14) < v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    v55 = v15 + 32 * *v11;
    if (a5)
    {
      v56 = *(v55 + 14);
LABEL_60:
      v57 = v11;
      do
      {
        v58 = v57;
        v60 = v57[1];
        ++v57;
        v59 = v60;
      }

      while (*(v15 + 32 * v60 + 14) < v56);
      v61 = a2;
      if (v58 == v11)
      {
        v61 = a2;
        do
        {
          if (v57 >= v61)
          {
            break;
          }

          v63 = *--v61;
        }

        while (*(v15 + 32 * v63 + 14) >= v56);
      }

      else
      {
        do
        {
          v62 = *--v61;
        }

        while (*(v15 + 32 * v62 + 14) >= v56);
      }

      if (v57 < v61)
      {
        v64 = *v61;
        v65 = v57;
        v66 = v61;
        do
        {
          *v65 = v64;
          *v66 = v59;
          do
          {
            v58 = v65;
            v67 = v65[1];
            ++v65;
            v59 = v67;
          }

          while (*(v15 + 32 * v67 + 14) < v56);
          do
          {
            v68 = *--v66;
            v64 = v68;
          }

          while (*(v15 + 32 * v68 + 14) >= v56);
        }

        while (v65 < v66);
      }

      if (v58 != v11)
      {
        *v11 = *v58;
      }

      *v58 = v54;
      if (v57 < v61)
      {
        goto LABEL_79;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *>(v11, v58, *a3);
      v11 = v58 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *>(v58 + 1, a2, *a3);
      if (result)
      {
        a2 = v58;
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,false>(v9, v58, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v58 + 1;
      }
    }

    else
    {
      v56 = *(v55 + 14);
      if (*(v15 + 32 * *(v11 - 1) + 14) < v56)
      {
        goto LABEL_60;
      }

      if (v56 >= *(v15 + 32 * *v10 + 14))
      {
        v71 = (v11 + 1);
        do
        {
          v11 = v71;
          if (v71 >= a2)
          {
            break;
          }

          v71 += 8;
        }

        while (v56 >= *(v15 + 32 * *v11 + 14));
      }

      else
      {
        do
        {
          v70 = v11[1];
          ++v11;
        }

        while (v56 >= *(v15 + 32 * v70 + 14));
      }

      v72 = a2;
      if (v11 < a2)
      {
        v72 = a2;
        do
        {
          v73 = *--v72;
        }

        while (v56 < *(v15 + 32 * v73 + 14));
      }

      if (v11 < v72)
      {
        v74 = *v11;
        v75 = *v72;
        do
        {
          *v11 = v75;
          *v72 = v74;
          do
          {
            v76 = v11[1];
            ++v11;
            v74 = v76;
          }

          while (v56 >= *(v15 + 32 * v76 + 14));
          do
          {
            v77 = *--v72;
            v75 = v77;
          }

          while (v56 < *(v15 + 32 * v77 + 14));
        }

        while (v11 < v72);
      }

      v78 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v78;
      }

      a5 = 0;
      *v78 = v54;
    }
  }

  v81 = *v11;
  v82 = v11[1];
  v83 = *(*a3 + 536);
  v84 = *(v83 + 32 * v82 + 14);
  v85 = *(v83 + 32 * *v11 + 14);
  v86 = *v10;
  v87 = *(v83 + 32 * *v10 + 14);
  if (v84 >= v85)
  {
    if (v87 < v84)
    {
      v11[1] = v86;
      *v10 = v82;
      v143 = *v11;
      v142 = v11[1];
      if (*(v83 + 32 * v142 + 14) < *(v83 + 32 * *v11 + 14))
      {
        *v11 = v142;
        v11[1] = v143;
      }
    }
  }

  else
  {
    if (v87 >= v84)
    {
      *v11 = v82;
      v11[1] = v81;
      if (*(v83 + 32 * *v10 + 14) >= v85)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v86;
    }

    *v10 = v81;
  }

  return result;
}