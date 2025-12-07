void std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType>(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }
}

uint64_t non-virtual thunk tomd::MapNavLabeler::isNavHighZoomActive(md::MapNavLabeler *this)
{
  result = (*(*(this - 1) + 360))();
  if (result)
  {
    return *(this + 123) == 1;
  }

  return result;
}

void md::CaptionedIconLabelPart::updateWithStyle(md::CaptionedIconLabelPart *this, md::LabelManager *a2)
{
  md::CompositeLabelPart::updateWithStyle(this, a2);
  v5 = *(this + 4);
  if (*(this + 926) == 1)
  {
    v6 = *v5;
    v7 = *(*v5 + 272);
    if (!v7)
    {
      v8 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v5);
      v7 = *v8;
      *(v6 + 272) = *v8;
      v6 = *v5;
    }

    v9 = *(v6 + 246);
    if (v9 != *(this + 425))
    {
      *(this + 425) = v9;
      if (*(this + 921) == 1 && *(this + 955) == 1)
      {
        md::CaptionedIconLabelPart::initAlternatePlacements(this);
        md::CaptionedIconLabelPart::updateSnapToDefaultPlacement(this);
        v6 = *v5;
      }
    }

    v10 = *(v6 + 244);
    *(this + 845) = v10;
    if (v10 >= 8)
    {
      v11 = 0;
    }

    else
    {
      v11 = 32 * v10;
    }

    *(this + 846) = v11;
    v12 = *(v6 + 249);
    if (v12 != *(this + 852))
    {
      *(this + 852) = v12;
    }

    *(this + 957) = *(v6 + 143);
    v13 = *(v6 + 296);
    if (!v13)
    {
      v14 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v6, 0);
      v13 = *v14;
      *(v6 + 296) = *v14;
    }

    v4.i32[0] = *(v13 + 36);
    v15 = vdupq_lane_s32(v4, 0).u64[0];
    v16 = vmulq_n_f32(*(v7 + 24), *v4.i32);
    *(this + 632) = vuzp1q_s32(vextq_s8(v16, v16, 0xCuLL), v16);
    *(this + 81) = vrev64_s32(vmul_f32(*(v7 + 52), v15));
    *(this + 794) = 0;
    if (*(this + 925) == 1)
    {
      v17 = (*(***(this + 72) + 208))(**(this + 72));
    }

    else
    {
      v17 = 0;
    }

    v18 = *(*v5 + 145);
    *(this + 945) = v18;
    if (v18 >= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      v20 = 0;
      v21 = this + 792;
      v22 = 361;
      do
      {
        v23 = *v5;
        if (v20 >= *(*v5 + 145))
        {
          goto LABEL_29;
        }

        if ((*(v23 + 457) & 1) == 0)
        {
          md::LabelStyle::prepareAlternateStyles(*v5);
        }

        if (*(v23 + v22 - 1))
        {
          v24 = *(v23 + v22);
          v21[v20] = v24;
          if ((*(this + 794) & 1) == 0 && v24 != 1)
          {
            *(this + 794) = 1;
            *(this + 795) = v20;
          }
        }

        else
        {
LABEL_29:
          v21[v20] = 0;
        }

        ++v20;
        v22 += 16;
      }

      while (v19 != v20);
    }
  }

  if (!*(this + 946))
  {
    v25 = *(*v5 + 241);
    v26 = 2;
    if (v25 > 1)
    {
      if (v25 != 3)
      {
        if (v25 != 2)
        {
          goto LABEL_43;
        }

        if (*(a2 + 3650))
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }
      }
    }

    else if (*(*v5 + 241))
    {
      if (v25 != 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = 3;
    }

    *(this + 947) = v26;
  }

LABEL_43:
  if (*(a2 + 3665) == 1 && *(*(a2 + 53) + 32) >= *(a2 + 918))
  {
    *(this + 947) = 1;
  }
}

void md::CompositeLabelPart::updateWithStyle(md::CompositeLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 73);
  v4 = *(this + 72);
  if (v4 == v3)
  {
    v6 = *(**(this + 4) + 172);
  }

  else
  {
    v6 = -3.4028e38;
    do
    {
      v7 = *v4++;
      (*(*v7 + 72))(v7, a2);
      v6 = fmaxf(v6, (*(*v7 + 248))(v7));
    }

    while (v4 != v3);
  }

  *(this + 42) = v6;
}

uint64_t *md::ImageLabelPart::updateWithStyle(md::ImageLabelPart *this, md::LabelManager *a2)
{
  v4 = *(this + 4);
  v5 = *v4;
  v6 = *(*v4 + 296);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v6 = *v7;
    *(v5 + 296) = *v7;
    v5 = *v4;
  }

  *(this + 143) = (*(*this + 912))(this, v5);
  if (*(this + 632) == 1)
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = 1.0;
  }

  *(this + 144) = v8;
  *(this + 145) = *(v6 + 20);
  v9 = *v4;
  if (*(*(a2 + 53) + 10))
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = *(v9 + 243);
    if (v10 >= 5)
    {
      LOBYTE(v10) = 0;
    }
  }

  *(this + 592) = v10;
  result = (*(*this + 904))(this, v9);
  *(this + 594) = result;
  v12 = *(v6 + 8);
  if (v12 != *(this + 155))
  {
    *(this + 155) = v12;
    *(this + 314) = 257;
  }

  v13 = *v4;
  v14 = *(*v4 + 296);
  if (!v14)
  {
    result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v14 = *result;
    *(v13 + 296) = *result;
    v13 = *v4;
  }

  if (*(v14 + 12) != *(this + 156))
  {
    v15 = *(v13 + 296);
    if (!v15)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v13, 0);
      v15 = *result;
      *(v13 + 296) = *result;
      v13 = *v4;
    }

    *(this + 156) = *(v15 + 12);
    *(this + 314) = 257;
  }

  v16 = *(v13 + 296);
  if (!v16)
  {
    result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v13, 0);
    v16 = *result;
    *(v13 + 296) = *result;
    v13 = *v4;
  }

  if (*(v16 + 95) != *(this + 631))
  {
    v17 = *(v13 + 296);
    if (!v17)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v13, 0);
      v17 = *result;
      *(v13 + 296) = *result;
      v13 = *v4;
    }

    *(this + 631) = *(v17 + 95);
    *(this + 314) = 257;
  }

  v18 = *(v13 + 16) + 20 * *(v13 + 93);
  v19 = *(this + 562);
  switch(v19)
  {
    case 2:
      v20 = *(v18 + 16);
      goto LABEL_27;
    case 3:
      v21 = 1.0;
      break;
    case 10:
      v22 = *(v13 + 312);
      if (v22)
      {
        v23 = fminf(*(v22 + 40), *(v18 + 8));
      }

      else
      {
        result = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(v13);
        v24 = *result;
        *(v13 + 312) = *result;
        v25 = *v4;
        v22 = *(*v4 + 312);
        v23 = fminf(*(v24 + 40), *(v18 + 8));
        if (!v22)
        {
          result = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*v4);
          v22 = *result;
          *(v25 + 312) = *result;
        }
      }

      v21 = *(v22 + 36) * v23;
      break;
    default:
      v20 = *(v18 + 8);
LABEL_27:
      v21 = fminf(*(v6 + 40), v20) * *(v6 + 36);
      break;
  }

  if (v21 != *(this + 147))
  {
    *(this + 147) = v21;
    *(this + 628) = 1;
  }

  return result;
}

uint64_t md::PointIconLabelPart::updateWithStyle(md::PointIconLabelPart *this, md::LabelManager *a2)
{
  md::ImageLabelPart::updateWithStyle(this, a2);
  result = *(this + 105);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

float md::ImageLabelPart::styleBrightness(md::ImageLabelPart *this, const md::LabelStyle *a2)
{
  v2 = *(a2 + 37);
  if (!v2)
  {
    v4 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2, 0);
    v2 = *v4;
    *(a2 + 37) = *v4;
  }

  return *(v2 + 28);
}

void md::LabelNavEtaLabeler::extractAndSortAnnotations(uint64_t a1, void *a2, uint64_t a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x5012000000;
  v30 = __Block_byref_object_copy__59;
  v31 = __Block_byref_object_dispose__60;
  v32 = "";
  memset(v33, 0, 24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3321888768;
  v22[2] = ___ZN2md18LabelNavEtaLabeler25extractAndSortAnnotationsEP11VKRouteInfoNSt3__18functionIFbRKNS_27RouteRangeAnnotationRequestEEEE_block_invoke;
  v22[3] = &unk_1F29F0E00;
  v25 = a1;
  v6 = v5;
  v23 = v6;
  std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::__value_func[abi:nn200100](v26, a3);
  v24 = &v27;
  [v6 visitAnnotations:v22];
  v7 = v28[6];
  v8 = v28[7];
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v8 - v7));
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,false>(v7, v8, v10, 1);
  v11 = v28;
  v19 = [v6 route];
  v20 = &v19;
  v12 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((a1 + 520), v19, &v20);
  v13 = v12;
  v14 = v12 + 5;
  v15 = v12[5];
  if (v15)
  {
    v16 = v12[6];
    v17 = v12[5];
    if (v16 != v15)
    {
      do
      {
        v16 -= 48;
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v16);
      }

      while (v16 != v15);
      v17 = *v14;
    }

    v13[6] = v15;
    v18 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(v18, v17);
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  *(v13 + 5) = *(v11 + 3);
  v13[7] = v11[8];
  v11[6] = 0;
  v11[7] = 0;
  v11[8] = 0;

  std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v26);
  _Block_object_dispose(&v27, 8);
  v21 = v33;
  std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v21);
}

void sub_1B2B76A5C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void **);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, id);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);

  std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](v8 + 56);
  _Block_object_dispose(va1, 8);
  std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F10F0;
  a2[1] = v2;
  return result;
}

float md::TextLabelPart::updateWithStyle(md::TextLabelPart *this, md::LabelManager *a2)
{
  v4 = *(this + 4);
  if (*(this + 76))
  {
    v5 = *(this + 880);
    v6 = *(*v4 + 16 * (v5 == 1) + 408);
    if (!v6)
    {
      if (v5 == 1)
      {
        v21 = 6;
      }

      else
      {
        v21 = 0;
      }

      md::LabelStyle::prepareDisplayTextStyleGroup(&v22, *v4, v5 == 1, v21);
    }

    v7 = *(*v4 + 16 * (v5 == 1) + 416);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 76) = v6;
    v8 = *(this + 77);
    *(this + 77) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  v9 = *v4;
  v10 = *(this + 880) == 1;
  v11 = *v4 + 280;
  if (*(this + 880) == 1)
  {
    v12 = 6;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v11 + 8 * (*(this + 880) == 1));
  if (v13)
  {
    if (vabds_f32(v13[2], *(v9 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v9, v13, v12);
      v13 = *(v11 + 8 * v10);
    }
  }

  else
  {
    v13 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v9, v12);
    *(v11 + 8 * v10) = v13;
  }

  v14 = *v13;
  v15 = *(*v13 + 36);
  v16 = 0;
  *(this + 164) = fminf(fmaxf(*(a2 + 44) * *(*v13 + 32), 0.0), truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56)));
  *(this + 718) = *(v14 + 16);
  if (*(*(a2 + 53) + 10))
  {
    LOBYTE(v17) = 0;
  }

  else
  {
    v17 = *(*v4 + 243);
    if (v17 >= 5)
    {
      LOBYTE(v17) = 0;
    }
  }

  *(this + 705) = v17;
  v18 = truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56));
  *(this + 165) = fminf(fmaxf(*(a2 + 44) * v15, -v18), v18);
  *(this + 714) = *(v14 + 20);
  *(this + 161) = fminf(fmaxf(*(v14 + 104), 0.0), truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56)));
  *(this + 710) = *(v14 + 12);
  *(this + 166) = truncf(*(*(*(a2 + 29) + 8) + 176) * *(*(a2 + 29) + 56));
  *(this + 167) = fminf(fmaxf(*(v14 + 40), 0.0), 1.0);
  *(this + 169) = *(v14 + 48);
  *(this + 170) = *(v14 + 56);
  *(this + 171) = *(v14 + 60);
  if (*(this + 888) == 1)
  {
    v16 = *(v14 + 96);
  }

  *(this + 156) = v16;
  *(this + 168) = *(*v4 + 172);
  *(this + 944) = *(v14 + 64);
  (*(*this + 904))(&v22, this);
  *(this + 706) = v22;
  (*(*this + 912))(&v22, this, *(this + 944), v4);
  *(this + 722) = v22;
  if (*(this + 876))
  {
    v19 = (this + 872);
  }

  else
  {
    v19 = (v14 + 100);
  }

  *(this + 157) = fmaxf(*v19, 0.0);
  *(this + 42) = *(this + 168);
  result = *(*v4 + 176);
  *(this + 43) = result;
  return result;
}

void md::HorizontalTextLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  md::TextLabelPart::updateWithStyle(this, a2);
  v3 = this[4];
  v4 = *v3;
  if (*(*v3 + 236) == 0.0)
  {
    return;
  }

  if (*(this + 562) == 11)
  {
    v5 = *(v4 + 312);
    if (!v5)
    {
      v6 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*v3);
      v5 = *v6;
      *(v4 + 312) = *v6;
    }

    v7 = 12;
    if (*(this + 1248))
    {
      v7 = 16;
    }

    v8 = *(v5 + v7);
  }

  else
  {
    v13 = *(v4 + 272);
    if (*(this + 1248) == 1)
    {
      if (!v13)
      {
        v21 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
        v13 = *v21;
        *(v4 + 272) = *v21;
      }

      v15 = (v13 + 16);
    }

    else
    {
      if (!v13)
      {
        v14 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
        v13 = *v14;
        *(v4 + 272) = *v14;
      }

      v15 = (v13 + 12);
    }

    v8 = *v15;
    v16 = *v3;
    v5 = *(*v3 + 272);
    if (!v5)
    {
      v17 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
      v18 = *v17;
      *(v16 + 272) = *v17;
      v19 = *v3;
      v5 = *(*v3 + 272);
      v9 = *(v18 + 20);
      if (!v5)
      {
        v20 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
        v5 = *v20;
        *(v19 + 272) = *v20;
      }

      goto LABEL_9;
    }
  }

  v9 = *(v5 + 20);
LABEL_9:
  v10 = *(v5 + 8);
  v11 = *(this + 313);
  if (*(this + 1248))
  {
    v12 = 8;
  }

  else
  {
    v12 = 18;
  }

  if (v11 == 1)
  {
    v11 = v12;
  }

  if (v8 != 1)
  {
    v12 = v8;
  }

  *(this + 313) = v8;
  if (v12 != v11)
  {
    *(this + 1077) = 1;
  }

  if (*(this + 314) != v9)
  {
    *(this + 314) = v9;
    *(this + 1077) = 1;
  }

  if (*(this + 253) != v10)
  {
    *(this + 253) = v10;
    *(this + 1077) = 1;
  }

  *(this + 1079) = *(*v3 + 240);
}

__n128 __Block_byref_object_copy__59(uint64_t a1, __n128 *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2[4].n128_u8[8];
  result = a2[3];
  *(a1 + 48) = result;
  *(a1 + 64) = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void md::HorizontalTextLabelPart::textColorForSource(uint64_t *result@<X0>, int a2@<W1>, _DWORD *a3@<X8>, uint64_t *a4@<X2>)
{
  if ((a2 - 5) <= 1u && *(result + 1270) == 1 && *(result + 1264) == 1)
  {
    *a3 = *(result + 315);
  }

  else
  {
    md::TextLabelPart::textColorForSource(result, a2, a4, a3);
  }
}

void ___ZN2md18LabelNavEtaLabeler25extractAndSortAnnotationsEP11VKRouteInfoNSt3__18functionIFbRKNS_27RouteRangeAnnotationRequestEEEE_block_invoke(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[6];
  v5 = a1[4];
  v6 = v3;
  *&v41 = [v5 route];
  *(&v41 + 1) = v6;
  v45 = 0;
  v42 = &v43;
  v43 = 0;
  v7 = a1[10];
  if (!v7 || ((*(*v7 + 48))(v7, &v41) & 1) == 0)
  {
    inserted = std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__find_equal<md::RouteRangeAnnotationRequest>(v4 + 576, &v36, &v41);
    v9 = inserted;
    if (!*inserted)
    {
      std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__construct_node<md::RouteRangeAnnotationRequest const&>(&v37, v4 + 576, &v41);
      inserted = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at((v4 + 576), v36, v9, v37);
    }

    v10 = *(a1[5] + 8);
    v11 = v10[7];
    v12 = v10[8];
    if (v11 >= v12)
    {
      v17 = v10[6];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v17) >> 4);
      v19 = v18 + 1;
      if (v18 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v17) >> 4);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x2AAAAAAAAAAAAAALL)
      {
        v21 = 0x555555555555555;
      }

      else
      {
        v21 = v19;
      }

      v40 = v10 + 9;
      if (v21)
      {
        v22 = mdm::zone_mallocator::instance(inserted);
        v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteRangeAnnotationRequest>(v22, v21);
      }

      else
      {
        v23 = 0;
      }

      v25 = &v23[6 * v18];
      v37 = v23;
      v38 = v25;
      *(&v39 + 1) = &v23[6 * v21];
      v26 = v41;
      v41 = 0uLL;
      *v25 = v26;
      v25[2] = v42;
      v27 = v43;
      v25[3] = v43;
      v28 = v25 + 3;
      *(v25 + 32) = v44;
      v29 = v45;
      v25[5] = v45;
      if (v29)
      {
        v27[2] = v28;
        v42 = &v43;
        v43 = 0;
        v45 = 0;
      }

      else
      {
        v25[2] = v28;
      }

      *&v39 = v25 + 6;
      v30 = v10[6];
      v31 = v10[7];
      v32 = v25 + v30 - v31;
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>,md::RouteRangeAnnotationRequest*>(v30, v31, v32);
      v33 = v10[6];
      v10[6] = v32;
      v34 = v10[8];
      v35 = v39;
      *(v10 + 7) = v39;
      *&v39 = v33;
      *(&v39 + 1) = v34;
      v37 = v33;
      v38 = v33;
      std::__split_buffer<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator> &>::~__split_buffer(&v37);
      v24 = v35;
    }

    else
    {
      v13 = v41;
      v41 = 0uLL;
      *v11 = v13;
      *(v11 + 16) = v42;
      v14 = v43;
      *(v11 + 24) = v43;
      v15 = v11 + 24;
      *(v11 + 32) = v44;
      v16 = v45;
      *(v11 + 40) = v45;
      if (v16)
      {
        v14[2] = v15;
        v42 = &v43;
        v43 = 0;
        v45 = 0;
      }

      else
      {
        *(v11 + 16) = v15;
      }

      v24 = v11 + 48;
    }

    v10[7] = v24;
  }

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v43);
}

void md::HorizontalTextLabelPart::shadowColorForSource(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 - 5) <= 1 && *(a1 + 1270) == 1 && *(a1 + 1269) == 1)
  {
    *a4 = *(a1 + 1265);
    v6 = *a3;
    v7 = *(a1 + 880) == 1;
    v8 = *a3 + 280;
    if (*(a1 + 880) == 1)
    {
      v9 = 6;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v8 + 8 * (*(a1 + 880) == 1));
    if (v10)
    {
      if (vabds_f32(v10[2], *(v6 + 104)) >= 0.01)
      {
        md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v6, v10, v9);
        v10 = *(v8 + 8 * v7);
      }
    }

    else
    {
      v10 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v6, v9);
      *(v8 + 8 * v7) = v10;
    }

    *(a4 + 3) = *(*v10 + 27);
  }

  else
  {

    md::TextLabelPart::shadowColorForSource(a1, a3, a4);
  }
}

void md::TextLabelPart::shadowColorForSource(uint64_t a1@<X0>, uint64_t *a2@<X2>, _DWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a1 + 880) == 1;
  v7 = *a2 + 280;
  if (*(a1 + 880) == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v7 + 8 * (*(a1 + 880) == 1));
  if (v9)
  {
    if (vabds_f32(v9[2], *(v5 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v5, v9, v8);
      v9 = *(v7 + 8 * v6);
    }
  }

  else
  {
    v9 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v5, v8);
    *(v7 + 8 * v6) = v9;
  }

  *a3 = *(*v9 + 24);
}

uint64_t md::RouteRangeAnnotationRequest::etaType(md::RouteRangeAnnotationRequest *this)
{
  v1 = [(md::RouteRangeAnnotationRequest *)this etaDescription];
  v2 = [v1 routeEtaType];

  return v2;
}

BOOL std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_0>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  return std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v2, v3) != 0;
}

uint64_t md::CaptionedIconLabelPart::layoutForStaging(md::CaptionedIconLabelPart *this, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 424);
  v7 = v6[2].u8[2];
  if (__PAIR64__(*(this + 566), *(this + 565)) == 0x100000001)
  {
    md::CaptionedIconLabelPart::generateStagingModelMatrix(this, *(a2 + 424));
  }

  v8 = *(this + 925);
  if (v8)
  {
    if ((*(this + 926) & 1) != 0 && *(this + 947) != 3)
    {
      v9 = *(this + 72);
      v10 = *v9;
      v11 = v9[v8];
      v99.i64[0] = 0;
      v12 = (*(*v10 + 80))(v10, a2, a3, &v99);
      v13 = v12;
      if (v12 != 37 && v12 != 15)
      {
        return v13;
      }

      v15 = md::CaptionedIconLabelPart::textAlignmentForPosition(this, *(this + 847), *(this + 848));
      (*(*v11 + 360))(v11, 0, v15);
      (*(*v11 + 368))(v11, 0, v15);
      v16 = (*(*v11 + 80))(v11, a2, a3, this + 656);
      if (v13 != 37)
      {
        return v13;
      }

      if (v16 == 37)
      {
        *&v18 = (*(*v10 + 272))(v10);
        v19 = 0;
        v97.i64[0] = __PAIR64__(v20, v18);
        v21 = &v97;
        v97.i64[1] = __PAIR64__(v23, v22);
        v24 = 1;
        v25 = xmmword_1B33B0730;
        while (v97.f32[v19 + 2] >= v21->f32[0])
        {
          v26 = v24;
          v24 = 0;
          v21 = &v97.i32[1];
          v19 = 1;
          if ((v26 & 1) == 0)
          {
            v27 = 0;
            v99 = v97;
            v28 = &v99;
            v29 = 1;
            while (v99.f32[v27 + 2] >= v28->f32[0])
            {
              v30 = v29;
              v29 = 0;
              v28 = &v99.i32[1];
              v27 = 1;
              if ((v30 & 1) == 0)
              {
                v31.i64[0] = *a3;
                v31.i64[1] = *a3;
                v25 = vsubq_f32(v99, v31);
                goto LABEL_23;
              }
            }

            v25 = v99;
            break;
          }
        }

LABEL_23:
        v32 = 0;
        v33 = &v98;
        v98 = v25;
        v34 = v11[3];
        v35 = (v34 + 72);
        v36 = 1;
        do
        {
          if (v98.f32[v32 + 2] < v33->f32[0])
          {
            return 16;
          }

          v37 = v36;
          v36 = 0;
          v33 = &v98.i32[1];
          v32 = 1;
        }

        while ((v37 & 1) != 0);
        v38 = 0;
        v39 = v34 + 80;
        v40 = 1;
        while (*(v39 + 4 * v38) >= v35[v38])
        {
          v41 = v40;
          v40 = 0;
          v38 = 1;
          if ((v41 & 1) == 0)
          {
            if (!*(this + 854))
            {
              v88 = *(this + 853);
              if (!v88)
              {
                v89 = 0;
                v90 = 0;
                v91 = v10[3];
                v92 = (v91 + 72);
                v93 = (v91 + 80);
                do
                {
                  v94 = v93[v90];
                  v95 = v92[v90];
                  if (v89)
                  {
                    break;
                  }

                  v89 = 1;
                  v90 = 1;
                }

                while (v94 >= v95);
                v96 = 0.0;
                if (v94 >= v95)
                {
                  v96 = *v93 - *v92;
                }

                if (v96 <= (*(a2 + 176) * 14.1))
                {
                  v88 = 1;
                }

                else
                {
                  v88 = 2;
                }
              }

              *(this + 854) = v88;
            }

            v42.n128_u64[0] = md::CaptionedIconLabelPart::textOriginOffsetForPosition(this, 0, *(this + 847), *(this + 855), *(this + 848), v98.f32, v35, v11);
            if (v7)
            {
              v46 = v6[58].f32[0];
              v47 = v6[58].f32[1];
              v48 = v47 * v43.n128_f32[0];
              v43.n128_f32[0] = (v46 * v43.n128_f32[0]) + (v47 * v42.n128_f32[0]);
              v42.n128_f32[0] = -(v48 - (v46 * v42.n128_f32[0]));
            }

            v49 = 0;
            v50 = 1;
            v44.n128_u32[0] = 1036831949;
            v45.n128_u32[0] = v42.n128_u32[0];
            while (vabds_f32(v45.n128_f32[0], *(this + v49 + 164)) < 0.1)
            {
              v51 = v50;
              v50 = 0;
              v45.n128_u32[0] = v43.n128_u32[0];
              v49 = 1;
              if ((v51 & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            *(this + 164) = v42.n128_u32[0];
            *(this + 165) = v43.n128_u32[0];
            v42.n128_f64[0] = (*(*v11 + 80))(v11, a2, a3, this + 656);
LABEL_58:
            v82 = (*(*v10 + 256))(v10, v42, v43, v44, v45);
            v83 = (*(*v11 + 256))(v11);
            v84 = 0;
            v99 = *v82;
            v85 = &v99;
            v86 = 1;
            do
            {
              v87 = v86;
              v85->f32[0] = fminf(*(v83 + 4 * v84), v85->f32[0]);
              v99.f32[v84 + 2] = fmaxf(v99.f32[v84 + 2], *(v83 + 8 + 4 * v84));
              v85 = &v99.i32[1];
              v84 = 1;
              v86 = 0;
            }

            while ((v87 & 1) != 0);
            *(this + 152) = v99;
            goto LABEL_40;
          }
        }

        return 14;
      }

      return v16;
    }

    v52 = **(this + 72);
    v99.i64[0] = 0;
    v16 = (*(*v52 + 80))(v52, a2, a3, &v99);
    if (v16 != 37)
    {
      return v16;
    }

    v53 = (*(*v52 + 256))(v52);
    *(this + 38) = *v53;
    *(this + 39) = v53[1];
    *(this + 40) = v53[2];
    *(this + 41) = v53[3];
  }

  else
  {
    if ((*(this + 926) & 1) == 0 || *(this + 947) == 3)
    {
      return 14;
    }

    v54 = *(*(this + 72) + 8 * v8);
    v55 = md::CaptionedIconLabelPart::textAlignmentForPosition(this, *(this + 847), *(this + 848));
    (*(*v54 + 360))(v54, 0, v55);
    (*(*v54 + 368))(v54, 0, v55);
    v99.i64[0] = 0;
    (*(*v54 + 80))(v54, a2, a3, &v99);
    v56 = v54[3];
    v99 = 0uLL;
    LODWORD(v57) = md::CaptionedIconLabelPart::textOriginOffsetForPosition(this, 0, *(this + 847), *(this + 855), *(this + 848), v99.f32, (v56 + 72), v54).u32[0];
    v59 = (this + 656);
    *(this + 164) = v57;
    *(this + 165) = v58;
    if (v7)
    {
      v60 = v6[58];
      v61 = vmul_n_f32(v60, v57);
      v62 = vrev64_s32(vmul_n_f32(v60, v58));
      v60.i32[0] = vsub_f32(v61, v62).u32[0];
      v60.i32[1] = vadd_f32(v61, v62).i32[1];
      *v59 = v60;
    }

    v16 = (*(*v54 + 80))(v54, a2, a3, v59);
    if (v16 != 37)
    {
      return v16;
    }

    v63 = (*(*v54 + 256))(v54);
    *(this + 38) = *v63;
    *(this + 39) = v63[1];
    *(this + 40) = v63[2];
    *(this + 41) = v63[3];
    v64 = (*(*v54 + 272))(v54);
    v98.i64[0] = __PAIR64__(v65, v64.u32[0]);
    v98.i64[1] = __PAIR64__(v67, v66);
    v64.i64[0] = *a3;
    *(this + 166) = gm::Box<float,2>::operator-(&v98, v64);
    *(this + 167) = v68;
    *(this + 168) = v69;
    *(this + 169) = v70;
  }

LABEL_40:
  *(this + 70) = *a3;
  *(this + 71) = *(a3 + 4);
  if (*(this + 960) == 1 && *(this + 926) == 1 && *(this + 947) != 3)
  {
    v71 = *(*(this + 72) + 8 * *(this + 925));
    v72 = *(a2 + 424);
    *&v73 = (*(*v71 + 272))(v71);
    v74 = 0;
    v75 = 0;
    v99.i64[0] = __PAIR64__(v76, v73);
    v77 = &v99;
    v99.i64[1] = __PAIR64__(v79, v78);
    while (v77->f32[0] >= *(v72 + 1136 + 4 * v75))
    {
      v80 = v99.f32[v75 + 2] > *(v72 + 1144 + 4 * v75);
      v81 = v74 | v80;
      v74 = 1;
      v77 = &v99.i32[1];
      v75 = 1;
      if (v81)
      {
        goto LABEL_56;
      }
    }

    v80 = 1;
LABEL_56:
    *(this + 959) = v80;
  }

  else
  {
    *(this + 959) = 0;
  }

  *(this + 23) = *(this + 112);
  return 37;
}

uint64_t md::IconLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result == 37)
  {
    (*(*a1 + 600))(a1, 0);
    v9 = *(*&a1[4] + 20);
    a1[22].f32[0] = v9;
    a1[14].i32[0] = a3->i32[0];
    a1[14].i32[1] = a3->i32[1];
    a1[33].i8[6] = fabsf(v9 + -1.0) > 0.000001;
    v10 = *(a2 + 424);
    v11 = a1[36].f32[0];
    v12.i32[0] = *(v10 + 464);
    a1[37].i32[0] = v12.i32[0];
    v13 = *(v10 + 468);
    a1[37].f32[1] = v13;
    v14.f32[0] = -v13;
    v14.i32[1] = v12.i32[0];
    v12.f32[1] = v13;
    v15 = vmla_n_f32(vmul_n_f32(v12, v11), v14, a1[36].f32[1]);
    a1[11] = v15;
    a1[33].i8[4] = fabsf(v15.f32[0] + -1.0) > 0.000001;
    a1[38].i32[0] = a4->i32[0];
    a1[38].i32[1] = a4->i32[1];
    v16 = vadd_f32(*a4, *a3);
    a1[35] = v16;
    a1[13] = v16;
    md::CollisionObject::setupShapeData(&a1[9]);
    if (a1[70].i8[5] == 1 && a1[70].i8[6] == 1)
    {
      if (!*&a1[100])
      {
        operator new();
      }

      md::IconLabelPart::generateStagingModelMatrix(a1, v17);
      a1[23] = a1[100];
    }

    return 37;
  }

  return result;
}

uint64_t md::PointIconLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v8 = a1[105];
  if (v8)
  {
    (*(**&v8 + 80))(v8, a2, a3, a4);
  }

  return md::IconLabelPart::layoutForStaging(a1, a2, a3, a4);
}

uint64_t md::IconLabelPart::checkResourcesReady(md::IconLabelPart *this, md::LabelManager *a2)
{
  v2 = *(this + 80);
  if (!v2)
  {
    return 37;
  }

  v3 = atomic_load((v2 + 142));
  if ((v3 & 1) == 0)
  {
    return 15;
  }

  v4 = atomic_load((*(this + 80) + 143));
  if (v4)
  {
    return 37;
  }

  return 16;
}

void md::IconLabelPart::updateCollisionObject(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = a1 + 640;
    v4 = *(a1 + 640);
    if (!v4)
    {
      goto LABEL_6;
    }

    v5 = atomic_load((v4 + 143));
    if ((v5 & 1) == 0)
    {
      return;
    }

    if (!*v3 || (v6 = atomic_load((*v3 + 143)), (v6 & 1) != 0))
    {
LABEL_6:
      if (*(a1 + 629) == 1)
      {
        *(a1 + 629) = 0;
        v7 = (*(*a1 + 944))(a1, *(a1 + 640));
        *&v7 = 0.5 - (fminf(v10 - v9, v8 - *&v7) * 0.5);
        *(a1 + 168) = vmaxnm_f32(*(a1 + 620), vdup_lane_s32(*&v7, 0));
        *(a1 + 271) = *(a1 + 631);
        *(a1 + 272) = *(a1 + 630);
      }
    }

    if ((*(a1 + 628) & 1) == 0)
    {
      v11 = 0;
      v12 = 1;
      while (*(a1 + 80 + 4 * v11) >= *(a1 + 72 + 4 * v11))
      {
        v13 = v12;
        v12 = 0;
        v11 = 1;
        if ((v13 & 1) == 0)
        {
          return;
        }
      }
    }

    *(a1 + 628) = 0;
    v14 = *(*a1 + 920);

    v14(a1, 0, v3, a1 + 72);
  }
}

uint64_t *std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__construct_node<md::RouteRangeAnnotationRequest const&>(mdm::zone_mallocator *a1, uint64_t a2, id *a3)
{
  v6 = mdm::zone_mallocator::instance(a1);
  v7 = pthread_rwlock_rdlock((v6 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "read lock", v8);
  }

  v9 = malloc_type_zone_malloc(*v6, 0x50uLL, 0x10A004019D5BD40uLL);
  atomic_fetch_add((v6 + 24), 1u);
  geo::read_write_lock::unlock((v6 + 32));
  *a1 = v9;
  *(a1 + 1) = a2 + 16;
  *(a1 + 2) = 0;
  v9[4] = *a3;
  v9[5] = a3[1];
  result = std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v9 + 6, (a3 + 2));
  *(a1 + 16) = 1;
  return result;
}

void sub_1B2B7838C(_Unwind_Exception *a1)
{
  *v1 = 0;
  v5 = mdm::zone_mallocator::instance(v4);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<md::RouteRangeAnnotationRequest,void *>>(v5, v2);
  _Unwind_Resume(a1);
}

uint64_t md::CaptionedIconLabelPart::textAlignmentForPosition(_BYTE *a1, unsigned int a2, int a3)
{
  if (a1[925] & 1) == 0 && (a1[927])
  {
LABEL_10:
    if (a1[928] == 1)
    {
      if (a1[930])
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 0;
  }

  v3 = &horizontalLabelAnchors;
  if (a3 == 4)
  {
    v3 = &diagonalUpLabelAnchors;
  }

  if (a3 == 8)
  {
    v3 = &diagonalDownLabelAnchors;
  }

  v4 = v3[2 * a2];
  if ((v4 - 1) >= 2u)
  {
    if ((a1[927] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_10;
  }

  return v4;
}

uint64_t md::HorizontalTextLabelPart::setTextAlignment(uint64_t result, int a2, int a3)
{
  v3 = 1088;
  if (!a2)
  {
    v3 = 976;
  }

  v4 = result + v3;
  if (*(v4 + 100) != a3)
  {
    *(v4 + 100) = a3;
    *(v4 + 101) = 1;
  }

  return result;
}

void *std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__find_equal<md::RouteRangeAnnotationRequest>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = (v4 + 4);
        if (!md::RouteRangeAnnotationRequest::operator<(a3, v4[4]))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!md::RouteRangeAnnotationRequest::operator<(v8, *a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](uint64_t *inserted, uint64_t a2)
{
  v2 = inserted;
  inserted[1] = 0;
  v3 = inserted + 1;
  *inserted = 0;
  *(inserted + 16) = *(a2 + 16);
  inserted[3] = 0;
  *inserted = (inserted + 1);
  v4 = *a2;
  v5 = (a2 + 8);
  if (*a2 != a2 + 8)
  {
    do
    {
      v6 = v2[1];
      v7 = v3;
      if (*v2 == v3)
      {
        goto LABEL_8;
      }

      v8 = v2[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      v11 = *(v4 + 8);
      if (*(v7 + 8) < v11)
      {
LABEL_8:
        if (v6)
        {
          v12 = v7;
        }

        else
        {
          v12 = v3;
        }

        if (v6)
        {
          v13 = (v7 + 1);
        }

        else
        {
          v13 = v3;
        }
      }

      else
      {
        v12 = v3;
        v13 = v3;
        if (v6)
        {
          v13 = v3;
          while (1)
          {
            while (1)
            {
              v12 = v6;
              v18 = *(v6 + 8);
              if (v11 >= v18)
              {
                break;
              }

              v6 = *v12;
              v13 = v12;
              if (!*v12)
              {
                goto LABEL_15;
              }
            }

            if (v18 >= v11)
            {
              break;
            }

            v13 = v12 + 1;
            v6 = v12[1];
            if (!v6)
            {
              goto LABEL_15;
            }
          }
        }
      }

      if (!*v13)
      {
LABEL_15:
        v14 = mdm::zone_mallocator::instance(inserted);
        v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(v14);
        *(v15 + 8) = *(v4 + 8);
        std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::vector[abi:nn200100]((v15 + 5), (v4 + 5));
        inserted = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v2, v12, v13, v15);
      }

      v16 = v4[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v4[2];
          v10 = *v17 == v4;
          v4 = v17;
        }

        while (!v10);
      }

      v4 = v17;
    }

    while (v17 != v5);
  }

  return v2;
}

uint64_t md::HorizontalTextLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = md::TextLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (result == 37)
  {
    v9 = *(*&a1[72] + 108);
    if ((a1[134].i8[5] & 1) != 0 || v9 != a1[127].i32[0])
    {
      a1[127].i32[0] = v9;
      a1[126].f32[0] = a1[126].f32[1] * a1[78].f32[1];
      if (a1[156].i8[0])
      {
        v10 = 8;
      }

      else
      {
        v10 = 18;
      }

      if (a1[156].i32[1] != 1)
      {
        v10 = a1[156].i32[1];
      }

      a1[127].i32[1] = v10;
      a1[128].i32[0] = a1[157].i32[0];
      md::HorizontalTextLabelPart::placeLines(&a1[72], &a1[122], a2, &a1[9]);
      v11 = a1[133].u32[0];
      a1[86].i32[0] = v11;
      a1[86].i32[1] = a1[134].u16[0] << 16;
      v12 = HIWORD(v11);
    }

    else
    {
      v12 = a1[133].u16[1];
      LOWORD(v11) = a1[133].i16[0];
    }

    if (v12 == v11)
    {
      v16 = 0;
      LODWORD(v17) = 0;
      a1[133].i32[1] = 0;
    }

    else
    {
      v13 = (v12 - v11);
      v14 = a1[72];
      v15 = v14[4] + 40 * v11;
      v16 = *(v15 + 36) | ((*(v15 + 40 * v13 - 4) + *(v15 + 40 * v13 - 2)) << 16);
      a1[133].i32[1] = v16;
      v17 = (v14[21] - v14[20]) >> 6;
    }

    a1[134].i16[1] = v17;
    a1[87].i32[0] = v16;
    a1[87].i32[1] = v17 << 16;
    v18 = *(*&a1[4] + 20);
    a1[22].f32[0] = v18;
    a1[14].i32[0] = a3->i32[0];
    a1[14].i32[1] = a3->i32[1];
    a1[33].i8[6] = fabsf(v18 + -1.0) > 0.000001;
    v19 = *(a2 + 424);
    v20 = a1[36].f32[0];
    v21.i32[0] = *(v19 + 464);
    a1[37].i32[0] = v21.i32[0];
    v22 = *(v19 + 468);
    v23.f32[0] = -v22;
    v23.i32[1] = v21.i32[0];
    v21.f32[1] = v22;
    a1[37].f32[1] = v22;
    v24 = vmla_n_f32(vmul_n_f32(v21, v20), v23, a1[36].f32[1]);
    a1[11] = v24;
    a1[33].i8[4] = fabsf(v24.f32[0] + -1.0) > 0.000001;
    v25 = vadd_f32(*a4, *a3);
    a1[35] = v25;
    a1[13] = v25;
    md::CollisionObject::setupShapeData(&a1[9]);
    if (a1[70].i8[5] == 1 && a1[70].i8[6] == 1)
    {
      md::TextLabelPart::generateStagingModelMatrix(a1, v26, v27);
      a1[23] = a1[108];
    }

    return 37;
  }

  return result;
}

uint64_t md::TextLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (__PAIR64__(*(a1 + 566), *(a1 + 565)) == 0x100000001 && !*(a1 + 864))
  {
    operator new();
  }

  result = (*(*a1 + 352))(a1, a2, a3);
  if (result == 37)
  {
    *(a1 + 636) = *(a1 + 932);
    *(a1 + 304) = *a4;
    *(a1 + 308) = a4[1];
    v7 = *(*(a1 + 576) + 16);
    v8 = atomic_load((v7 + 130));
    if ((v8 & 1) == 0 || *(v7 + 56) == *(v7 + 64))
    {
      return 12;
    }

    else if (*(*(a1 + 576) + 64) == *(*(a1 + 576) + 72))
    {
      return 13;
    }

    else
    {
      return 37;
    }
  }

  return result;
}

uint64_t md::TextLabelPart::checkResourcesReady(md::TextLabelPart *this, mdm::zone_mallocator **a2)
{
  v2 = *(this + 157);
  if (v2 <= 0.0)
  {
    return 27;
  }

  v5 = *(this + 4);
  v6 = fmaxf(*(v5 + 20) * v2, 0.0);
  *(this + 158) = v6;
  v7 = 628;
  if (*(this + 881))
  {
    v7 = 632;
  }

  v8 = *(this + v7);
  v9 = *(this + 156);
  v10 = v8 != *(this + 159) || v9 != *(this + 160);
  v11 = *(this + 72);
  v12 = *(v5 + 29);
  md::LabelTextDataLoader::loadTextData(a2[34], (v11 + 16), v12, v6);
  v13 = atomic_load((*(v11 + 16) + 130));
  if (v13)
  {
    v14.n128_f64[0] = md::FontTrackingCache::trackingScale(a2[39], *(v11 + 16), v8, *(*a2[39] + 3419));
    v15 = v14.n128_u64[0];
    v16 = v8 / *(*(v11 + 16) + 120);
    v14.n128_f32[0] = v8;
    v17.n128_f32[0] = v6;
    v18.n128_f32[0] = v9;
    v19.n128_u64[0] = v15;
    md::FontGlyphCache::populateQuads(a2[396], v11 + 32, (v11 + 16), v10, v14, v17, v18, v19, v16);
    if (*(v11 + 208) != 1)
    {
LABEL_10:
      *(this + 233) = v8;
      *(this + 160) = v9;
      return 37;
    }

    md::LabelTextDataLoader::loadTextData(a2[34], (v11 + 112), v12, v6);
    v24 = atomic_load((*(v11 + 112) + 130));
    if (v24)
    {
      v20.n128_f32[0] = v8;
      v21.n128_f32[0] = v6;
      v22.n128_f32[0] = v9;
      v23.n128_u64[0] = v15;
      md::FontGlyphCache::populateQuads(a2[396], v11 + 128, (v11 + 112), v10, v20, v21, v22, v23, v16);
      goto LABEL_10;
    }
  }

  return 11;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>,md::RouteRangeAnnotationRequest*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      std::construct_at[abi:nn200100]<md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest*>(a3, v6);
      v6 += 3;
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v5);
      v5 += 48;
    }

    while (v5 != a2);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 48;
    std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(i - 48);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteRangeAnnotationRequest>(v5, v4);
  }

  return a1;
}

uint64_t std::construct_at[abi:nn200100]<md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest,md::RouteRangeAnnotationRequest*>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  *result = v2;
  *(result + 16) = *(a2 + 2);
  v3 = *(a2 + 3);
  *(result + 24) = v3;
  v4 = result + 24;
  *(result + 32) = *(a2 + 32);
  v5 = *(a2 + 5);
  *(result + 40) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[1] = a2 + 24;
    *(a2 + 5) = 0;
  }

  else
  {
    *(result + 16) = v4;
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::RouteRangeAnnotationRequest const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__introsort<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  v300 = *MEMORY[0x1E69E9840];
LABEL_2:
  v288 = (a2 - 3);
  k = a1;
  while (1)
  {
    a1 = k;
    v8 = a2 - k;
    v9 = 0xAAAAAAAAAAAAAAABLL * (a2 - k);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, (k + 3), v288);
          return;
        case 4uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, (k + 3), (k + 6), v288);
          return;
        case 5uLL:
          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, (k + 3), (k + 6), (k + 9), v288);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v108 = md::RouteRangeAnnotationRequest::etaType(*(a2 - 5));
        v109 = md::RouteRangeAnnotationRequest::etaType(*(k + 1));
        v110 = *(a2 - 5);
        if (v108 == v109)
        {
          v111 = [v110 start];
          v112 = [*(k + 1) start];
          if (v111 >= v112 && (v111 != v112 || *(&v111 + 1) >= *(&v112 + 1)))
          {
            return;
          }
        }

        else
        {
          v262 = md::RouteRangeAnnotationRequest::etaType(v110);
          if (v262 >= md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
          {
            return;
          }
        }

        std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, v288);
        return;
      }
    }

    if (v8 <= 1151)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return;
      }

      v145 = v10 >> 1;
      v146 = v10 >> 1;
      while (1)
      {
        v147 = v146;
        if (v145 < v146)
        {
          goto LABEL_219;
        }

        v148 = (2 * v146) | 1;
        v149 = &a1[3 * v148];
        if (2 * v146 + 2 < v9)
        {
          v150 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 1));
          v151 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 7));
          v152 = *(v149 + 1);
          if (v150 != v151)
          {
            v156 = md::RouteRangeAnnotationRequest::etaType(v152);
            if (v156 >= md::RouteRangeAnnotationRequest::etaType(*(v149 + 7)))
            {
              goto LABEL_183;
            }

LABEL_182:
            v149 += 3;
            v148 = 2 * v147 + 2;
            goto LABEL_183;
          }

          v153 = [(md::RouteRangeAnnotationRequest *)v152 start];
          v154 = [*(v149 + 7) start];
          if (v153 < v154)
          {
            goto LABEL_182;
          }

          if (v153 == v154 && *(&v153 + 1) < *(&v154 + 1))
          {
            goto LABEL_182;
          }
        }

LABEL_183:
        v157 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 1));
        v158 = &a1[3 * v147];
        v159 = md::RouteRangeAnnotationRequest::etaType(*(v158 + 1));
        v160 = *(v149 + 1);
        if (v157 != v159)
        {
          v164 = md::RouteRangeAnnotationRequest::etaType(v160);
          if (v164 < md::RouteRangeAnnotationRequest::etaType(*(v158 + 1)))
          {
            goto LABEL_219;
          }

LABEL_192:
          v165 = *v158;
          *v158 = 0;
          *(v158 + 1) = 0;
          *v295 = v165;
          v296 = *(v158 + 2);
          v166 = *(v158 + 3);
          v297 = v166;
          v298 = *(v158 + 32);
          v299 = *(v158 + 5);
          if (v299)
          {
            v166[2] = &v297;
            *(v158 + 2) = v158 + 24;
            *(v158 + 3) = 0;
            *(v158 + 5) = 0;
          }

          else
          {
            v296 = &v297;
          }

          while (2)
          {
            v167 = v149;
            v168 = *v149;
            *v149 = 0;
            v169 = *v158;
            *v158 = v168;

            v170 = *(v149 + 1);
            *(v149 + 1) = 0;
            v171 = *(v158 + 1);
            *(v158 + 1) = v170;

            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(v158 + 2, v149 + 2);
            if (v145 < v148)
            {
LABEL_215:
              v188 = v295[0];
              v295[0] = 0;
              v189 = *v167;
              *v167 = v188;

              v190 = v295[1];
              v295[1] = 0;
              v191 = *(v167 + 1);
              *(v167 + 1) = v190;

              v192 = v167 + 24;
              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v167 + 3));
              *(v167 + 2) = v296;
              v193 = v297;
              *(v167 + 3) = v297;
              v194 = v299;
              *(v167 + 5) = v299;
              if (v194)
              {
                v195 = 0;
                v193[2] = v192;
                v296 = &v297;
                v297 = 0;
                v299 = 0;
              }

              else
              {
                *(v167 + 2) = v192;
                v195 = v297;
              }

              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v195);

              goto LABEL_219;
            }

            v172 = 2 * v148;
            v148 = (2 * v148) | 1;
            v149 = &a1[3 * v148];
            v173 = v172 + 2;
            if (v172 + 2 < v9)
            {
              v174 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 1));
              v175 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 7));
              v176 = *(v149 + 1);
              if (v174 == v175)
              {
                v177 = [v176 start];
                v178 = [*(v149 + 7) start];
                if (v177 >= v178 && (v177 != v178 || *(&v177 + 1) >= *(&v178 + 1)))
                {
                  goto LABEL_206;
                }
              }

              else
              {
                v180 = md::RouteRangeAnnotationRequest::etaType(v176);
                if (v180 >= md::RouteRangeAnnotationRequest::etaType(*(v149 + 7)))
                {
                  goto LABEL_206;
                }
              }

              v149 += 3;
              v148 = v173;
            }

LABEL_206:
            v181 = md::RouteRangeAnnotationRequest::etaType(*(v149 + 1));
            v182 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            v183 = *(v149 + 1);
            if (v181 == v182)
            {
              v184 = [v183 start];
              v185 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
              if (v184 < v185)
              {
                goto LABEL_215;
              }

              v186 = v184 == v185 && *(&v184 + 1) < *(&v185 + 1);
              v158 = v167;
              if (v186)
              {
                goto LABEL_215;
              }
            }

            else
            {
              v187 = md::RouteRangeAnnotationRequest::etaType(v183);
              v158 = v167;
              if (v187 < md::RouteRangeAnnotationRequest::etaType(v295[1]))
              {
                goto LABEL_215;
              }
            }

            continue;
          }
        }

        v161 = [(md::RouteRangeAnnotationRequest *)v160 start];
        v162 = [*(v158 + 1) start];
        if (v161 >= v162 && (v161 != v162 || *(&v161 + 1) >= *(&v162 + 1)))
        {
          goto LABEL_192;
        }

LABEL_219:
        v146 = v147 - 1;
        if (!v147)
        {
          v196 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
          while (1)
          {
            v197 = *a1;
            *a1 = 0;
            *(a1 + 1) = 0;
            v290 = v197;
            v198 = *(a1 + 3);
            v291 = *(a1 + 2);
            v292 = v198;
            v293 = *(a1 + 32);
            v294 = *(a1 + 5);
            if (v294)
            {
              v198[2] = &v292;
              *(a1 + 2) = a1 + 24;
              *(a1 + 3) = 0;
              *(a1 + 5) = 0;
            }

            else
            {
              v291 = &v292;
            }

            v199 = 0;
            v200 = a1;
            do
            {
              v201 = &v200[3 * v199];
              v202 = v201 + 3;
              v203 = 2 * v199;
              v199 = (2 * v199) | 1;
              v204 = v203 + 2;
              if (v203 + 2 >= v196)
              {
                goto LABEL_235;
              }

              v205 = md::RouteRangeAnnotationRequest::etaType(*(v201 + 7));
              v206 = md::RouteRangeAnnotationRequest::etaType(*(v201 + 13));
              v207 = *(v201 + 7);
              if (v205 != v206)
              {
                v211 = md::RouteRangeAnnotationRequest::etaType(v207);
                if (v211 >= md::RouteRangeAnnotationRequest::etaType(*(v201 + 13)))
                {
                  goto LABEL_235;
                }

LABEL_234:
                v202 = v201 + 6;
                v199 = v204;
                goto LABEL_235;
              }

              v208 = [(md::RouteRangeAnnotationRequest *)v207 start];
              v209 = [*(v201 + 13) start];
              if (v208 < v209)
              {
                goto LABEL_234;
              }

              if (v208 == v209 && *(&v208 + 1) < *(&v209 + 1))
              {
                goto LABEL_234;
              }

LABEL_235:
              v212 = *v202;
              *v202 = 0;
              v213 = *v200;
              *v200 = v212;

              v214 = *(v202 + 1);
              *(v202 + 1) = 0;
              v215 = *(v200 + 1);
              *(v200 + 1) = v214;

              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(v200 + 2, v202 + 2);
              v200 = v202;
            }

            while (v199 <= ((v196 - 2) >> 1));
            if (v202 == a2 - 3)
            {
              v225 = *v202;
              *v202 = v290;

              v226 = *(v202 + 1);
              *(v202 + 1) = *(&v290 + 1);

              v227 = v202 + 24;
              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v202 + 3));
              *(v202 + 2) = v291;
              v228 = v292;
              *(v202 + 3) = v292;
              v229 = v294;
              *(v202 + 5) = v294;
              if (v229)
              {
                v228[2] = v227;
                v292 = 0;
                v294 = 0;
              }

              else
              {
                *(v202 + 2) = v227;
              }

              goto LABEL_268;
            }

            v216 = *(a2 - 6);
            *(a2 - 6) = 0;
            v217 = *v202;
            *v202 = v216;

            v218 = *(a2 - 5);
            *(a2 - 5) = 0;
            v219 = *(v202 + 1);
            *(v202 + 1) = v218;

            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(v202 + 2, a2 - 4);
            v220 = *(a2 - 6);
            *(a2 - 6) = v290;

            v221 = *(a2 - 5);
            *(a2 - 5) = *(&v290 + 1);

            v222 = a2 - 3;
            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a2 - 3));
            *(a2 - 4) = v291;
            v223 = v292;
            *v222 = v292;
            v224 = v294;
            v222[2] = v294;
            if (v224)
            {
              v223[2] = v222;
              v292 = 0;
              v294 = 0;
            }

            else
            {
              *(a2 - 4) = v222;
            }

            v230 = v202 - a1 + 48;
            if (v230 >= 49)
            {
              v231 = (-2 - 0x5555555555555555 * (v230 >> 4)) >> 1;
              v232 = &a1[3 * v231];
              v233 = md::RouteRangeAnnotationRequest::etaType(*(v232 + 1));
              v234 = md::RouteRangeAnnotationRequest::etaType(*(v202 + 1));
              v235 = *(v232 + 1);
              if (v233 == v234)
              {
                v236 = [v235 start];
                v237 = [*(v202 + 1) start];
                if (v236 >= v237 && (v236 != v237 || *(&v236 + 1) >= *(&v237 + 1)))
                {
                  goto LABEL_268;
                }
              }

              else
              {
                v239 = md::RouteRangeAnnotationRequest::etaType(v235);
                if (v239 >= md::RouteRangeAnnotationRequest::etaType(*(v202 + 1)))
                {
                  goto LABEL_268;
                }
              }

              v240 = *v202;
              *v202 = 0;
              *(v202 + 1) = 0;
              *v295 = v240;
              v241 = *(v202 + 3);
              v296 = *(v202 + 2);
              v297 = v241;
              v298 = *(v202 + 32);
              v299 = *(v202 + 5);
              if (v299)
              {
                v241[2] = &v297;
                *(v202 + 2) = v202 + 24;
                *(v202 + 3) = 0;
                *(v202 + 5) = 0;
              }

              else
              {
                v296 = &v297;
              }

              while (1)
              {
                v242 = v232;
                v243 = *v232;
                *v232 = 0;
                v244 = *v202;
                *v202 = v243;

                v245 = *(v232 + 1);
                *(v232 + 1) = 0;
                v246 = *(v202 + 1);
                *(v202 + 1) = v245;

                std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(v202 + 2, v232 + 2);
                if (!v231)
                {
                  break;
                }

                v231 = (v231 - 1) >> 1;
                v232 = &a1[3 * v231];
                v247 = md::RouteRangeAnnotationRequest::etaType(*(v232 + 1));
                v248 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
                v249 = *(v232 + 1);
                if (v247 == v248)
                {
                  v250 = [v249 start];
                  v251 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
                  v202 = v242;
                  if (v250 >= v251)
                  {
                    v252 = v250 == v251 && *(&v250 + 1) < *(&v251 + 1);
                    v202 = v242;
                    if (!v252)
                    {
                      break;
                    }
                  }
                }

                else
                {
                  v253 = md::RouteRangeAnnotationRequest::etaType(v249);
                  v202 = v242;
                  if (v253 >= md::RouteRangeAnnotationRequest::etaType(v295[1]))
                  {
                    break;
                  }
                }
              }

              v254 = v295[0];
              v295[0] = 0;
              v255 = *v242;
              *v242 = v254;

              v256 = v295[1];
              v295[1] = 0;
              v257 = *(v242 + 1);
              *(v242 + 1) = v256;

              v258 = v242 + 24;
              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v242 + 3));
              *(v242 + 2) = v296;
              v259 = v297;
              *(v242 + 3) = v297;
              v260 = v299;
              *(v242 + 5) = v299;
              if (v260)
              {
                v259[2] = v258;
                v259 = 0;
                v296 = &v297;
                v297 = 0;
                v299 = 0;
              }

              else
              {
                *(v242 + 2) = v258;
              }

              std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v259);
            }

LABEL_268:
            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v292);

            a2 -= 3;
            if (v196-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v11 = v9 >> 1;
    if (v8 < 0x1801)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(&k[3 * (v9 >> 1)], k, v288);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(k, &k[3 * (v9 >> 1)], v288);
      v12 = &k[3 * v11 - 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>((k + 3), v12, (a2 - 6));
      v13 = &k[3 * v11];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>((k + 6), (v13 + 3), (a2 - 9));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,0>(v12, &k[3 * (v9 >> 1)], (v13 + 3));
      std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, &k[3 * (v9 >> 1)]);
    }

    --a3;
    if (a4)
    {
      goto LABEL_23;
    }

    v14 = md::RouteRangeAnnotationRequest::etaType(*(k - 5));
    v15 = md::RouteRangeAnnotationRequest::etaType(*(k + 1));
    v16 = *(k - 5);
    if (v14 != v15)
    {
      v21 = md::RouteRangeAnnotationRequest::etaType(v16);
      if (v21 >= md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v17 = [(md::RouteRangeAnnotationRequest *)v16 start];
    v18 = [*(a1 + 1) start];
    if (v17 < v18 || v17 == v18 && *(&v17 + 1) < *(&v18 + 1))
    {
LABEL_23:
      v22 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      *v295 = v22;
      v23 = *(a1 + 3);
      v296 = *(a1 + 2);
      v297 = v23;
      v298 = *(a1 + 32);
      v299 = *(a1 + 5);
      if (v299)
      {
        v23[2] = &v297;
        *(a1 + 2) = a1 + 24;
        *(a1 + 3) = 0;
        *(a1 + 5) = 0;
      }

      else
      {
        v296 = &v297;
      }

      for (i = a1 + 3; ; i += 3)
      {
        v25 = md::RouteRangeAnnotationRequest::etaType(*(i + 1));
        v26 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        v27 = *(i + 1);
        if (v25 == v26)
        {
          break;
        }

        v30 = md::RouteRangeAnnotationRequest::etaType(v27);
        if (v30 >= md::RouteRangeAnnotationRequest::etaType(v295[1]))
        {
          goto LABEL_34;
        }

LABEL_33:
        ;
      }

      v28 = [(md::RouteRangeAnnotationRequest *)v27 start];
      v29 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
      if (v28 < v29 || v28 == v29 && *(&v28 + 1) < *(&v29 + 1))
      {
        goto LABEL_33;
      }

LABEL_34:
      j = a2 - 3;
      if (i - 3 != a1)
      {
        while (1)
        {
          v32 = md::RouteRangeAnnotationRequest::etaType(*(j + 1));
          v33 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          v34 = *(j + 1);
          if (v32 == v33)
          {
            v35 = [v34 start];
            v36 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
            if (v35 < v36 || v35 == v36 && *(&v35 + 1) < *(&v36 + 1))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v37 = md::RouteRangeAnnotationRequest::etaType(v34);
            if (v37 < md::RouteRangeAnnotationRequest::etaType(v295[1]))
            {
              goto LABEL_52;
            }
          }

          j -= 3;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 3; ; j -= 3)
        {
          v38 = md::RouteRangeAnnotationRequest::etaType(*(j + 1));
          v39 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          v40 = *(j + 1);
          if (v38 == v39)
          {
            v41 = [v40 start];
            v42 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
            if (v41 < v42 || i >= j || v41 == v42 && *(&v41 + 1) < *(&v42 + 1))
            {
              break;
            }
          }

          else
          {
            v43 = md::RouteRangeAnnotationRequest::etaType(v40);
            v44 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (i >= j || v43 < v44)
            {
              break;
            }
          }
        }
      }

LABEL_52:
      k = i;
      if (i < j)
      {
        k = i;
        v45 = j;
        do
        {
          std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, v45);
          do
          {
            while (1)
            {
              k += 3;
              v46 = md::RouteRangeAnnotationRequest::etaType(*(k + 1));
              v47 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              v48 = *(k + 1);
              if (v46 == v47)
              {
                break;
              }

              v51 = md::RouteRangeAnnotationRequest::etaType(v48);
              if (v51 >= md::RouteRangeAnnotationRequest::etaType(v295[1]))
              {
                goto LABEL_63;
              }
            }

            v49 = [(md::RouteRangeAnnotationRequest *)v48 start];
            v50 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          }

          while (v49 < v50 || v49 == v50 && *(&v49 + 1) < *(&v50 + 1));
          do
          {
LABEL_63:
            while (1)
            {
              v45 -= 48;
              v53 = md::RouteRangeAnnotationRequest::etaType(*(v45 + 8));
              v54 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              v55 = *(v45 + 8);
              if (v53 == v54)
              {
                break;
              }

              v52 = md::RouteRangeAnnotationRequest::etaType(v55);
              if (v52 < md::RouteRangeAnnotationRequest::etaType(v295[1]))
              {
                goto LABEL_67;
              }
            }

            v56 = [(md::RouteRangeAnnotationRequest *)v55 start];
            v57 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          }

          while (v56 >= v57 && (v56 != v57 || *(&v56 + 1) >= *(&v57 + 1)));
LABEL_67:
          ;
        }

        while (k < v45);
      }

      if (k - 3 != a1)
      {
        v58 = *(k - 6);
        *(k - 6) = 0;
        v59 = *a1;
        *a1 = v58;

        v60 = *(k - 5);
        *(k - 5) = 0;
        v61 = *(a1 + 1);
        *(a1 + 1) = v60;

        std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(a1 + 2, k - 4);
      }

      v62 = v295[0];
      v295[0] = 0;
      v63 = *(k - 6);
      *(k - 6) = v62;

      v64 = v295[1];
      v295[1] = 0;
      v65 = *(k - 5);
      *(k - 5) = v64;

      v66 = k - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(k - 3));
      *(k - 4) = v296;
      v67 = v297;
      *(k - 3) = v297;
      v68 = v299;
      *(k - 1) = v299;
      if (v68)
      {
        v69 = 0;
        v67[2] = v66;
        v296 = &v297;
        v297 = 0;
        v299 = 0;
      }

      else
      {
        *(k - 4) = v66;
        v69 = v297;
      }

      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v69);

      if (i < j)
      {
LABEL_76:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*,false>(a1, (k - 3), a3, a4 & 1);
        goto LABEL_77;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*>(a1, k - 3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavEtaLabeler::extractAndSortAnnotations(VKRouteInfo *,std::function<BOOL ()(md::RouteRangeAnnotationRequest const&)>)::$_0 &,md::RouteRangeAnnotationRequest*>(k, a2))
      {
        a2 = k - 3;
        if (v70)
        {
          return;
        }

        goto LABEL_2;
      }

      if (!v70)
      {
        goto LABEL_76;
      }
    }

    else
    {
LABEL_20:
      v19 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      *v295 = v19;
      v20 = *(a1 + 3);
      v296 = *(a1 + 2);
      v297 = v20;
      v298 = *(a1 + 32);
      v299 = *(a1 + 5);
      if (v299)
      {
        v20[2] = &v297;
        *(a1 + 2) = a1 + 24;
        *(a1 + 3) = 0;
        *(a1 + 5) = 0;
      }

      else
      {
        v296 = &v297;
      }

      v71 = md::RouteRangeAnnotationRequest::etaType(*(&v19 + 1));
      if (v71 == md::RouteRangeAnnotationRequest::etaType(*(a2 - 5)))
      {
        v72 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
        v73 = [*(a2 - 5) start];
        if (v72 < v73 || v72 == v73 && *(&v72 + 1) < *(&v73 + 1))
        {
LABEL_83:
          for (k = a1 + 3; ; k += 3)
          {
            v74 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v74 == md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
            {
              v75 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
              v76 = [*(k + 1) start];
              if (v75 < v76 || v75 == v76 && *(&v75 + 1) < *(&v76 + 1))
              {
                goto LABEL_101;
              }
            }

            else
            {
              v77 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              if (v77 < md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
              {
                goto LABEL_101;
              }
            }
          }
        }
      }

      else
      {
        v78 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        if (v78 < md::RouteRangeAnnotationRequest::etaType(*(a2 - 5)))
        {
          goto LABEL_83;
        }
      }

      for (k = a1 + 3; k < a2; k += 3)
      {
        v79 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        if (v79 == md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
        {
          v80 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          v81 = [*(k + 1) start];
          if (v80 < v81 || v80 == v81 && *(&v80 + 1) < *(&v81 + 1))
          {
            break;
          }
        }

        else
        {
          v82 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          if (v82 < md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
          {
            break;
          }
        }
      }

LABEL_101:
      m = a2;
      if (k < a2)
      {
        for (m = (a2 - 3); ; m -= 48)
        {
          v84 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
          if (v84 == md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
          {
            v85 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
            v86 = [*(m + 8) start];
            if (v85 >= v86 && (v85 != v86 || *(&v85 + 1) >= *(&v86 + 1)))
            {
              break;
            }
          }

          else
          {
            v87 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v87 >= md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
            {
              break;
            }
          }
        }
      }

LABEL_123:
      while (k < m)
      {
        std::swap[abi:nn200100]<md::RouteRangeAnnotationRequest>(k, m);
        do
        {
          while (1)
          {
            k += 3;
            v88 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v88 == md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
            {
              break;
            }

            v91 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v91 < md::RouteRangeAnnotationRequest::etaType(*(k + 1)))
            {
              goto LABEL_119;
            }
          }

          v89 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          v90 = [*(k + 1) start];
        }

        while (v89 >= v90 && (v89 != v90 || *(&v89 + 1) >= *(&v90 + 1)));
        do
        {
LABEL_119:
          while (1)
          {
            m -= 48;
            v93 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v93 == md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
            {
              break;
            }

            v92 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v92 >= md::RouteRangeAnnotationRequest::etaType(*(m + 8)))
            {
              goto LABEL_123;
            }
          }

          v94 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
          v95 = [*(m + 8) start];
        }

        while (v94 < v95 || v94 == v95 && *(&v94 + 1) < *(&v95 + 1));
      }

      if (k - 3 != a1)
      {
        v96 = *(k - 6);
        *(k - 6) = 0;
        v97 = *a1;
        *a1 = v96;

        v98 = *(k - 5);
        *(k - 5) = 0;
        v99 = *(a1 + 1);
        *(a1 + 1) = v98;

        std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(a1 + 2, k - 4);
      }

      v100 = v295[0];
      v295[0] = 0;
      v101 = *(k - 6);
      *(k - 6) = v100;

      v102 = v295[1];
      v295[1] = 0;
      v103 = *(k - 5);
      *(k - 5) = v102;

      v104 = k - 24;
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(k - 3));
      *(k - 4) = v296;
      v105 = v297;
      *(k - 3) = v297;
      v106 = v299;
      *(k - 1) = v299;
      if (v106)
      {
        v107 = 0;
        v105[2] = v104;
        v296 = &v297;
        v297 = 0;
        v299 = 0;
      }

      else
      {
        *(k - 4) = v104;
        v107 = v297;
      }

      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v107);

LABEL_77:
      a4 = 0;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (k == a2)
    {
      return;
    }

    v263 = k + 3;
    if (k + 3 == a2)
    {
      return;
    }

    while (1)
    {
      v264 = a1;
      a1 = v263;
      v265 = md::RouteRangeAnnotationRequest::etaType(*(v263 + 1));
      if (v265 == md::RouteRangeAnnotationRequest::etaType(*(v264 + 1)))
      {
        v266 = [*(v264 + 7) start];
        v267 = [*(v264 + 1) start];
        if (v266 < v267 || v266 == v267 && *(&v266 + 1) < *(&v267 + 1))
        {
LABEL_281:
          v269 = *a1;
          *a1 = 0;
          v270 = *(v264 + 9);
          *(v264 + 7) = 0;
          *v295 = v269;
          v296 = *(v264 + 8);
          v297 = v270;
          v298 = *(v264 + 80);
          v299 = *(v264 + 11);
          if (v299)
          {
            v270[2] = &v297;
            *(v264 + 8) = v264 + 72;
            *(v264 + 9) = 0;
            *(v264 + 11) = 0;
          }

          else
          {
            v296 = &v297;
          }

          for (n = 0; ; n = v279)
          {
            v272 = *v264;
            *v264 = 0;
            *(v264 + 6) = v272;

            v273 = *(v264 + 1);
            *(v264 + 1) = 0;
            v274 = *(v264 + 7);
            *(v264 + 7) = v273;

            std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign(v264 + 8, v264 + 2);
            v275 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
            if (v275 == md::RouteRangeAnnotationRequest::etaType(*(v264 - 5)))
            {
              v276 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
              v277 = [*(v264 - 5) start];
              if (v276 >= v277 && (v276 != v277 || *(&v276 + 1) >= *(&v277 + 1)))
              {
LABEL_292:
                v280 = v295[0];
                v295[0] = 0;
                v281 = *v264;
                *v264 = v280;

                v282 = v295[1];
                v295[1] = 0;
                v283 = *(v264 + 1);
                *(v264 + 1) = v282;

                v284 = v264 + 24;
                std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(v264 + 3));
                *(v264 + 2) = v296;
                v285 = v297;
                *(v264 + 3) = v297;
                v286 = v299;
                *(v264 + 5) = v299;
                if (v286)
                {
                  v287 = 0;
                  v285[2] = v284;
                  v296 = &v297;
                  v297 = 0;
                  v299 = 0;
                }

                else
                {
                  *(v264 + 2) = v284;
                  v287 = v297;
                }

                std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v287);

                break;
              }
            }

            else
            {
              v278 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
              if (v278 >= md::RouteRangeAnnotationRequest::etaType(*(v264 - 5)))
              {
                goto LABEL_292;
              }
            }

            v279 = *v264;
            v264 -= 3;
          }
        }
      }

      else
      {
        v268 = md::RouteRangeAnnotationRequest::etaType(*(a1 + 1));
        if (v268 < md::RouteRangeAnnotationRequest::etaType(*(v264 + 1)))
        {
          goto LABEL_281;
        }
      }

      v263 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return;
      }
    }
  }

  if (k == a2)
  {
    return;
  }

  v113 = k + 3;
  if (k + 3 == a2)
  {
    return;
  }

  v114 = 0;
  v115 = k;
  while (2)
  {
    v116 = v115;
    v115 = v113;
    v117 = md::RouteRangeAnnotationRequest::etaType(*(v113 + 1));
    if (v117 == md::RouteRangeAnnotationRequest::etaType(*(v116 + 1)))
    {
      v118 = [*(v116 + 7) start];
      v119 = [*(v116 + 1) start];
      if (v118 >= v119 && (v118 != v119 || *(&v118 + 1) >= *(&v119 + 1)))
      {
        goto LABEL_168;
      }
    }

    else
    {
      v120 = md::RouteRangeAnnotationRequest::etaType(*(v115 + 1));
      if (v120 >= md::RouteRangeAnnotationRequest::etaType(*(v116 + 1)))
      {
        goto LABEL_168;
      }
    }

    v121 = *v115;
    *v115 = 0;
    v122 = *(v116 + 9);
    *(v116 + 7) = 0;
    *v295 = v121;
    v296 = *(v116 + 8);
    v297 = v122;
    v298 = *(v116 + 80);
    v299 = *(v116 + 11);
    if (v299)
    {
      v122[2] = &v297;
      *(v116 + 8) = v116 + 72;
      *(v116 + 9) = 0;
      *(v116 + 11) = 0;
    }

    else
    {
      v296 = &v297;
    }

    v123 = 0;
    v124 = v114;
    while (2)
    {
      v125 = (a1 + v124);
      v126 = *(a1 + v124);
      *v125 = 0;
      v125[6] = v126;

      v127 = *(a1 + v124 + 8);
      v125[1] = 0;
      v128 = *(a1 + v124 + 56);
      v125[7] = v127;

      v129 = (a1 + v124 + 16);
      std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__move_assign((a1 + v124 + 64), v129);
      if (!v124)
      {
        v135 = a1;
        goto LABEL_164;
      }

      v130 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
      v131 = (a1 + v124);
      if (v130 != md::RouteRangeAnnotationRequest::etaType(*(a1 + v124 - 40)))
      {
        v134 = md::RouteRangeAnnotationRequest::etaType(v295[1]);
        if (v134 >= md::RouteRangeAnnotationRequest::etaType(*(v131 - 5)))
        {
          break;
        }

        goto LABEL_161;
      }

      v132 = [(md::RouteRangeAnnotationRequest *)v295[1] start];
      v133 = [(md::RouteRangeAnnotationRequest *)*(v131 - 5) start];
      if (v132 < v133 || v132 == v133 && *(&v132 + 1) < *(&v133 + 1))
      {
LABEL_161:
        v123 = *v125;
        v124 -= 48;
        continue;
      }

      break;
    }

    v135 = (a1 + v124);
    v129 = v135 + 1;
LABEL_164:
    v136 = v295[0];
    v295[0] = 0;
    v137 = *v135;
    *v135 = v136;

    v138 = v295[1];
    v295[1] = 0;
    v139 = *(v135 + 1);
    *(v135 + 1) = v138;

    v141 = *(v135 + 3);
    v140 = v135 + 3;
    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v141);
    *v129 = v296;
    v142 = v297;
    *v140 = v297;
    v143 = v299;
    v140[2] = v299;
    if (v143)
    {
      v144 = 0;
      v142[2] = v140;
      v296 = &v297;
      v297 = 0;
      v299 = 0;
    }

    else
    {
      *v129 = v140;
      v144 = v297;
    }

    std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v144);

LABEL_168:
    v113 = v115 + 3;
    v114 += 48;
    if (v115 + 3 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_1B2B7A5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a24);

  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeature::elementAtZoom(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 440);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 440;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 == a1 + 440 || *(v4 + 32) > a2)
  {
    return 0;
  }

  v10 = v4 + 40;
  v9 = *(v4 + 40);
  v11 = (*(v10 + 8) - v9) >> 3;
  if (v11 < 2)
  {
    v14 = 1;
  }

  else
  {
    if (*v9)
    {
      v12 = *v9 + 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 72);
    v14 = 1;
    while (1)
    {
      v15 = v9[v14];
      v16 = v15 ? v15 + 8 : 0;
      if (*(v16 + 72) != v13 || *(v16 + 129) > a3)
      {
        break;
      }

      if (v11 == ++v14)
      {
        v14 = v11;
        break;
      }
    }
  }

  v17 = v9[v14 - 1];
  if (v17)
  {
    return v17 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x48uLL, 0x10E00404E70DBE6uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v13 = **a3;
    **a3 = 0;
    v12[4] = v13;
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = 0;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v14 = **a1;
    v15 = v12;
    if (v14)
    {
      *a1 = v14;
      v15 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

uint64_t md::CaptionedIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, const LabelLayoutContext *a3, _BYTE *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  if (*(a1 + 926) == 1)
  {
    v9 = *(a1 + 16);
    v10 = *(v9 + 8);
    v11 = *(v9 + 392);
    v12 = *(v9 + 256);
    v13 = atomic_load((a2 + 3368));
    v14 = md::PointLabelFeature::elementAtZoom(v10, *(v9 + 48), (v11 - v13) & ~((v11 - v13) >> 31));
    if (v14)
    {
      if (*(v14 + 130) != *(a1 + 943))
      {
        goto LABEL_9;
      }

      v15 = 131;
      if (v12 == 3)
      {
        v15 = 133;
      }

      if (v12 == 2)
      {
        v15 = 132;
      }

      if (*(v14 + v15) != *(a1 + 944))
      {
        goto LABEL_9;
      }
    }
  }

  if (v5)
  {
    v17 = *v8;
    if (*(*v8 + 250) != *(a1 + 922) || *(a1 + 926) == 1 && *(a1 + 958) == 1 && !*(v17 + 246) && !md::LabelPlacement::operator==((a1 + 832), (a1 + 837)))
    {
LABEL_9:
      result = 1;
      a4[8] = 1;
      *a4 = 1;
      return result;
    }

    if (*(v17 + 253) != *(a1 + 857) || (md::LabelIconStyleMonitor::needsCrossfade(a1 + 736, v17, a4) & 1) != 0)
    {
      return 1;
    }

    v18 = *(a1 + 576);
    v19 = *(a1 + 584);
    if (v18 != v19)
    {
      v20 = v18 + 8;
      do
      {
        v21 = (*(**(v20 - 8) + 768))(*(v20 - 8), a2, 1, a4);
        if (v21)
        {
          break;
        }

        v22 = v20 == v19;
        v20 += 8;
      }

      while (!v22);
      if (v21)
      {
        return 1;
      }
    }

    v23 = *v8;
    if (*(*v8 + 144) != *(a1 + 923))
    {
      return 1;
    }

    v24 = *(v23 + 272);
    if (!v24)
    {
      v25 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v8);
      v24 = *v25;
      *(v23 + 272) = *v25;
    }

    if (*(a1 + 924) != *(v24 + 70))
    {
      return 1;
    }

    if (*(a1 + 926) != 1)
    {
      goto LABEL_39;
    }

    v26 = *v8;
    v27 = *(*v8 + 272);
    if (!v27)
    {
      v28 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v8);
      v27 = *v28;
      *(v26 + 272) = *v28;
    }

    if (*(v27 + 64) != *(a1 + 853))
    {
      return 1;
    }

    v29 = md::LabelAnnotationStyleMonitor::needsCrossfade(a1 + 933, *v8);
  }

  else
  {
    v30 = *(a1 + 576);
    v31 = *(a1 + 584);
    if (v30 == v31)
    {
      goto LABEL_39;
    }

    v32 = v30 + 8;
    do
    {
      v29 = (*(**(v32 - 8) + 768))(*(v32 - 8), a2, 0, a4);
      if (v29)
      {
        break;
      }

      v22 = v32 == v31;
      v32 += 8;
    }

    while (!v22);
  }

  if (v29)
  {
    return 1;
  }

LABEL_39:
  if (*(a1 + 926) == 1)
  {
    if (*(a1 + 832) == 5)
    {
      v37 = md::CaptionedIconLabelPart::evaluateFeatureNormalTextPosition(*(a1 + 16), *(a2 + 424), a3);
      v33 = *(a1 + 847);
    }

    else
    {
      if (*(a1 + 920) != 1)
      {
        return 0;
      }

      v33 = *(a1 + 847);
      v34 = *(*(a2 + 424) + 472) + *(a1 + 836);
      v35 = ((v34 + 32) >> 5) & 6;
      v36 = (v34 + 16) >> 5;
      if (*(a1 + 856) == 1)
      {
        v37 = v36;
      }

      else
      {
        v37 = v35;
      }
    }

    if (v37 != v33)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t md::CompositeLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 576);
  v5 = *(a1 + 584);
  if (v4 == v5)
  {
    return 0;
  }

  v9 = v4 + 8;
  do
  {
    result = (*(**(v9 - 8) + 768))(*(v9 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v9 == v5;
    v9 += 8;
  }

  while (!v11);
  return result;
}

BOOL md::TextLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = md::LabelStyle::textStyleGroup(**(a1 + 32), *(a1 + 880));
  return *(v4 + 100) != 0.0 && !md::LabelText::checkValidForZoom(*(a1 + 576), *(*(a1 + 16) + 404), v4);
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::__tree_const_iterator<md::RouteRangeAnnotationRequest,std::__tree_node<md::RouteRangeAnnotationRequest,void *> *,long> &,std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v30 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    if (md::RouteRangeAnnotationRequest::operator<((v8 + 4), i[4]))
    {
      std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>::operator=[abi:nn200100](a6, (*a2 + 32));
      v15 = *a2;
      v16 = *(*a2 + 8);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v15[2];
          v18 = *v17 == v15;
          v15 = v17;
        }

        while (!v18);
      }

      *a2 = v17;
    }

    else
    {
      if (md::RouteRangeAnnotationRequest::operator<(*a4 + 32, *(*a2 + 32)))
      {
        v19 = *a4;
        v20 = *(*a4 + 8);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v18 = *v21 == v19;
            v19 = v21;
          }

          while (!v18);
        }
      }

      else
      {
        v22 = *a2;
        v23 = *(*a2 + 8);
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v22[2];
            v18 = *v24 == v22;
            v22 = v24;
          }

          while (!v18);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v21 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v21 = v25[2];
            v18 = *v21 == v25;
            v25 = v21;
          }

          while (!v18);
        }
      }

      *a4 = v21;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>::operator=[abi:nn200100](&v30, v8 + 4);
      v27 = v8[1];
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
          v28 = v8[2];
          v18 = *v28 == v8;
          v8 = v28;
        }

        while (!v18);
      }

      v8 = v28;
    }

    while (v28 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v30;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

BOOL md::LabelPlacement::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[3];
  if (v2 != a2[3])
  {
    return 0;
  }

  if (v2 == 10)
  {
    return a1[4] == a2[4];
  }

  return 1;
}

BOOL md::RouteRangeAnnotationRequest::operator<(uint64_t a1, unint64_t a2)
{
  if (*a1 == a2)
  {
    return [*(a1 + 8) compare:{v2, v3}] == -1;
  }

  else
  {
    return *a1 < a2;
  }
}

void md::TextLabelPart::prepareForDisplay(md::TextLabelPart *this, md::LabelManager *a2)
{
  if (!*(this + 74))
  {
    std::allocate_shared[abi:nn200100]<md::LabelText,std::allocator<md::LabelText>,md::LabelText&,0>(&v9, *(this + 72));
  }

  v3 = **(this + 4);
  v4 = *(this + 880);
  v5 = *(v3 + 16 * (v4 == 1) + 408);
  if (!v5)
  {
    if (v4 == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }

    md::LabelStyle::prepareDisplayTextStyleGroup(&v9, v3, v4 == 1, v8);
  }

  v6 = *(v3 + 16 * (v4 == 1) + 416);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 76) = v5;
  v7 = *(this + 77);
  *(this + 77) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *(this + 187) = *(this + 157);
  if (*(this + 565) == 1 && !*(this + 107))
  {
    operator new();
  }
}

float md::Label::boundsForStaging(md::Label *this)
{
  v2 = *(this + 33);
  if (v2 && (*(this + 1371) & 1) != 0)
  {
    return *(*(*v2 + 256))(v2);
  }

  v2 = *(this + 34);
  if (v2)
  {
    return *(*(*v2 + 256))(v2);
  }

  else
  {
    return 3.4028e38;
  }
}

uint64_t *md::Label::updateStateMachineForStaging(uint64_t *result, uint64_t a2, char a3)
{
  v3 = result;
  v11 = *MEMORY[0x1E69E9840];
  v4 = byte_1B3417E90[3 * a2 + *(result + 844)];
  atomic_load(result + 1330);
  if (v4 == 255)
  {
    v4 = *(result + 844);
  }

  else
  {
    if ((v4 == 0) == (*(result + 844) != 0))
    {
      v6 = 0;
      v10 = *(result + 33);
      do
      {
        result = *(&v10 + v6);
        if (result)
        {
          v7 = *result;
          if (v4)
          {
            result = (*(v7 + 152))(result, a2);
          }

          else
          {
            result = (*(v7 + 160))(result, a2);
          }
        }

        v6 += 8;
      }

      while (v6 != 16);
    }

    *(v3 + 844) = v4;
    *(v3 + 845) = a3;
  }

  if (v4 != 2)
  {
    if (!v4)
    {
      *(v3 + 1371) = 0;
      *(v3 + 1373) = 0;
      result = *(v3 + 264);
      *(v3 + 264) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (*(v3 + 288))
      {
        *(v3 + 288) = 0;
        *(v3 + 1335) = 1;
      }
    }

    *(v3 + 1378) = 0;
    *(v3 + 856) = *(v3 + 855);
    if (*(v3 + 1338) == 1)
    {
      atomic_load((v3 + 1330));
      *(v3 + 1338) = 0;
      v8 = atomic_load((v3 + 1328));
      if ((v8 & 1) == 0)
      {
        *(v3 + 858) = 1;
      }
    }
  }

  v9 = atomic_load((v3 + 481));
  if ((v9 & 1) == 0)
  {
    *(v3 + 485) = 2 * (*(v3 + 844) == 2);
  }

  return result;
}

unint64_t md::LabelStyle::collisionGroupInfo(uint64_t a1, int a2)
{
  v3 = *(a1 + 256);
  v4 = *(a1 + 261) | (*(a1 + 263) << 16);
  if (a2 == 8)
  {
    v5 = *(a1 + 264);
    if (!v5)
    {
      v6 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(a1);
      v5 = *v6;
      *(a1 + 264) = *v6;
    }

    v7 = (v5 + 63);
  }

  else
  {
    v7 = (a1 + 260);
  }

  return v3 | (v4 << 40) | (*v7 << 32);
}

uint64_t *md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = 0;
  v3 = *(a1 + 336);
  v4 = *(a1 + 344);
  while (1)
  {
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = *v3 == a2 && v3[1] == 0;
    if (v5 && v3[2] == 0)
    {
      break;
    }

    v3 += 16;
  }

  if (v3 == v4)
  {
LABEL_13:
    operator new();
  }

  v7 = *(v3 + 1);
  if ((*(v7 + 12) & 1) == 0)
  {
    v8 = *v7;
    *(v7 + 12) = 1;
    if (*a1)
    {
      v9 = md::LabelStyle::styleQueryForComponent(a1, a2, 0);
      v10 = *v9;
      if (*v9)
      {
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v15, v10, v11);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        if (v18 == 1)
        {
          md::LabelTextStyleGroup::update(v8, &v15, *(a1 + 16), *(a1 + 93), 1, *(a1 + 104), *(a1 + 88));
          if (v18)
          {
            (*(*v15 + 56))(v15);
          }
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }
      }
    }

    else
    {
      v12 = *(a1 + 88);
      *(v8 + 8) = 255;
      *(v8 + 10) = -1;
      *(v8 + 14) = -1;
      *(v8 + 44) = 1065353216;
      if (*(v8 + 95) < 0)
      {
        *(v8 + 80) = 5;
        v13 = *(v8 + 72);
      }

      else
      {
        v13 = (v8 + 72);
        *(v8 + 95) = 5;
      }

      strcpy(v13, "basic");
      *(v8 + 100) = v12 * 12.0;
      *(v8 + 104) = 1065353216;
    }
  }

  return v7;
}

void sub_1B2B7B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::TextLabelPart::textColorForSource(uint64_t *result@<X0>, int a2@<W1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = *a3;
  if (a2 == 4)
  {
    v11 = *(v5 + 272);
    if (!v11)
    {
      v12 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*a3);
      v11 = *v12;
      *(v5 + 272) = *v12;
    }

    v10 = (v11 + 65);
  }

  else
  {
    v6 = *(result + 880) == 1;
    v7 = v5 + 280;
    if (*(result + 880) == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v7 + 8 * (*(result + 880) == 1));
    if (v9)
    {
      if (vabds_f32(*(v9 + 2), *(v5 + 104)) >= 0.01)
      {
        md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v5, v9, v8);
        v9 = *(v7 + 8 * v6);
      }
    }

    else
    {
      v9 = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v5, v8);
      *(v7 + 8 * v6) = v9;
    }

    v10 = (*v9 + 8);
  }

  *a4 = *v10;
}

float gm::Box<float,2>::operator-(float32x4_t *a1, float32x4_t a2)
{
  v2 = 0;
  v3 = 1;
  v4 = 2139095039;
  while (a1->f32[v2 + 2] >= a1->f32[v2])
  {
    v5 = v3;
    v3 = 0;
    v2 = 1;
    if ((v5 & 1) == 0)
    {
      v6 = 0;
      v11 = *a1;
      v7 = &v11;
      v8 = 1;
      while (v11.f32[v6 + 2] >= v7->f32[0])
      {
        v9 = v8;
        v8 = 0;
        v7 = &v11.i32[1];
        v6 = 1;
        if ((v9 & 1) == 0)
        {
          a2.i64[1] = a2.i64[0];
          v4 = vsubq_f32(v11, a2).u32[0];
          return *&v4;
        }
      }

      v4 = v11.i32[0];
      return *&v4;
    }
  }

  return *&v4;
}

BOOL md::LineLabelFeature::hasIdentifier(md::LineLabelFeature *this, const md::LabelIdentifier *a2)
{
  v4 = *(this + 29);
  v2 = this + 232;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 8);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *&v3[8 * v9];
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 8))
  {
    return 0;
  }

  v11 = (*(**(v6 + 5) + 200))(*(v6 + 5));
  v13 = v11;
  if (*v11 && *(v11 + 10) == *(*v11 + 16) && *(v11 + 3) && (*(v11 + 17) & 0x80000000) == 0)
  {
    return 1;
  }

  md::LabelLineResolvedPosition::moveOntoPathForZoom(v11, v11[164], v12);
  if (!*v13 || *(v13 + 10) != *(*v13 + 16) || !*(v13 + 3))
  {
    return 0;
  }

  return *(v13 + 17) >= 0;
}

uint64_t *md::LabelNavEtaLabeler::annotatableSectionsForRoute(md::LabelNavEtaLabeler *this, GEOComposedRoute *a2)
{
  v3 = a2;
  {
    v15 = v3;
    v3 = v15;
    if (v14)
    {
      qword_1EB82A738 = 0;
      qword_1EB82A748 = 0;
      md::LabelNavEtaLabeler::annotatableSectionsForRoute(GEOComposedRoute *)const::empty = &qword_1EB82A738;
      v3 = v15;
    }
  }

  v4 = *(this + 49);
  if (v4)
  {
    v5 = this + 392;
    v6 = this + 392;
    do
    {
      v7 = *(v4 + 4);
      v8 = v7 >= v3;
      v9 = v7 < v3;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * v9];
    }

    while (v4);
    v10 = &md::LabelNavEtaLabeler::annotatableSectionsForRoute(GEOComposedRoute *)const::empty;
    if (v6 != v5)
    {
      v11 = *(v6 + 4);
      v12 = (v6 + 40);
      if (v11 <= v3)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = &md::LabelNavEtaLabeler::annotatableSectionsForRoute(GEOComposedRoute *)const::empty;
  }

  return v10;
}

uint64_t std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a1, v5 >> 4);
    v6 = *(a1 + 8);
    memmove(v6, v4, v5);
    *(a1 + 8) = &v6[v5];
  }

  return a1;
}

const FeatureStyleAttributes **md::LineLabelFeature::style(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return (a1 + 80);
  }

  v6 = *(a1 + 232);
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = a4;
  v10 = a1 + 232;
  do
  {
    v11 = *(v6 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v10 = v6;
    }

    v6 = *(v6 + 8 * v13);
  }

  while (v6);
  if (v10 == a1 + 232 || *(v10 + 32) > a2)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v17 = *(v10 + 40);
  v14 = *(v10 + 48);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = (*(*v17 + 200))(v17);
  v20 = v18;
  if (!v18)
  {
    goto LABEL_48;
  }

  if (*v18 && *(v18 + 10) == *(*v18 + 16) && *(v18 + 3) && (*(v18 + 17) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  md::LabelLineResolvedPosition::moveOntoPathForZoom(v18, v18[164], v19);
  v21 = *v20;
  if (!*v20)
  {
    goto LABEL_33;
  }

  if (*(v20 + 10) != *(v21 + 16))
  {
    goto LABEL_48;
  }

  v21 = *(v20 + 3);
  if (!v21)
  {
    goto LABEL_33;
  }

  if ((*(v20 + 17) & 0x80000000) == 0)
  {
LABEL_27:
    md::LabelLineResolvedPosition::ensureValidLinePosition(v20, v19);
    if (*v20 && *(v20 + 10) == *(*v20 + 16) && (v22 = *(v20 + 3)) != 0 && (*(v20 + 17) & 0x80000000) == 0 && (v21 = *v22) != 0)
    {
      LODWORD(v21) = *(v21 + 40);
    }

    else
    {
      LODWORD(v21) = -1;
    }
  }

  else
  {
LABEL_48:
    LODWORD(v21) = 0;
  }

LABEL_33:
  v23 = *(a1 + 272);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 280) - v23) >> 4) > v21)
  {
    v24 = v17[9];
    v25 = (v23 + 80 * v21);
    if (v8)
    {
      if (*(a1 + 304) != v21)
      {
        *(a1 + 304) = v21;
        operator new();
      }

      v25 = *(a1 + 312);
    }

    if (a3 || v24 > 8)
    {
      v27 = 0;
      v26 = 0;
    }

    else if (((1 << v24) & 0x1E7) != 0)
    {
      v26 = 0;
      v27 = v25 + 2;
    }

    else
    {
      v27 = v25 + 6;
      if (v24 == 3)
      {
        v26 = 1;
      }

      else
      {
        v27 = v25 + 8;
        v26 = 12;
      }
    }

    if (v27)
    {
      v15 = v27;
    }

    else
    {
      v15 = v25 + 2;
    }

    if (a5 && !*v15)
    {
      md::LineLabelFeature::resolvedStyleAttributes(&v28, a1, *v25, v8, v26);
    }

    goto LABEL_12;
  }

LABEL_11:
  v15 = (a1 + 80);
LABEL_12:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  return v15;
}

void sub_1B2B7BE58(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::updateDynamicStyling(md::LineLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  if (*(this + 432) == 1)
  {
    (*(*this + 552))(this, a2, a3);
    *(this + 432) = 0;
  }

  return 0;
}

char *std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ShareSection>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

BOOL md::LabelLineResolvedPosition::ensureValidLinePosition(md::LabelLineResolvedPosition *this, double a2)
{
  if (*this && *(this + 10) == *(*this + 16) && *(this + 3) && (*(this + 17) & 0x80000000) == 0)
  {
    return 1;
  }

  md::LabelLineResolvedPosition::moveOntoPathForZoom(this, *(this + 164), a2);
  return *this && *(this + 10) == *(*this + 16) && *(this + 3) && *(this + 17) >= 0;
}

uint64_t **std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 8);
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,void *>>(v9);
    v10[8] = **a3;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    *(v10 + 5) = 0;
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1, v7, v6, v10);
    return v10;
  }

  return v7;
}

void md::CurvedTextLabelPart::updateWithStyle(md::CurvedTextLabelPart *this, md::LabelManager *a2)
{
  md::TextLabelPart::updateWithStyle(this, a2);
  v4 = *(this + 4);
  v5 = *v4;
  v6 = *(this + 880) == 1;
  v7 = *v4 + 280;
  if (*(this + 880) == 1)
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v7 + 8 * (*(this + 880) == 1));
  if (v9)
  {
    if (vabds_f32(*(v9 + 8), *(v5 + 104)) >= 0.01)
    {
      md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(v5, v9, v8);
    }
  }

  else
  {
    *(v7 + 8 * v6) = md::LabelStyle::prepareStyleGroup<md::LabelTextStyleGroup>(v5, v8);
  }

  v10 = *(this + 157);
  if (v10 != 0.0)
  {
    v11 = **(v7 + 8 * v6);
    v12 = *v4;
    v14 = *(*v4 + 148);
    v13 = *(*v4 + 152);
    *(this + 248) = v13;
    *(this + 1154) = *(v12 + 240);
    *(this + 246) = v14 + (v10 * 0.33);
    *(this + 247) = (*(a2 + 44) * v13) + (*(v11 + 100) * 0.33);
    v15 = *(v12 + 264);
    if (!v15)
    {
      v16 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(v12);
      v15 = *v16;
      *(v12 + 264) = *v16;
      v12 = *v4;
    }

    *(this + 291) = *(v15 + 52);
    v17 = *(this + 1479);
    v18 = *(v12 + 248);
    if (v18 == 32)
    {
      v22 = **(*(this + 72) + 16);
      v19 = (*(v22 + 128) == 2) & *(v22 + 130);
    }

    else
    {
      v19 = 0;
    }

    *(this + 1479) = v19;
    if (v17 && (v19 & 1) == 0)
    {
      *(this + 1476) = v18;
    }

    if ((*(this + 1481) & 1) == 0)
    {
      v20 = *(*(this + 4) + 16);
      if (vabds_f32(v20, *(this + 357)) > 0.5)
      {
        *(this + 357) = v20;
        v21 = *(*this + 560);

        v21(this);
      }
    }
  }
}

uint64_t md::CurvedTextLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v7 = md::TextLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (v7 != 37)
  {
    return v7;
  }

  v8 = *(a2 + 424);
  v9 = *(a1 + 1155);
  *(a1 + 1155) = 0;
  if (*(a1 + 1160))
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(**(a1 + 1088) + 168))(*(a1 + 1088), *(*(a1 + 32) + 16));
    v9 |= v10;
  }

  v11 = *(v8 + 1176);
  if (*(a1 + 1016) != v11)
  {
    *(a1 + 1016) = v11;
    v9 = 1;
    *(a1 + 1490) = 1;
  }

  v12 = *(*(a1 + 576) + 108);
  if (*(a1 + 1020) != v12)
  {
    *(a1 + 1020) = v12;
    v9 = 1;
  }

  if ((*(a1 + 1481) & 1) == 0)
  {
    v41 = *(*(a1 + 16) + 96);
    if (*(a1 + 1432) != v41)
    {
      *(a1 + 1490) = 1;
      *(a1 + 1432) = v41;
      if ((v9 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_10:
      v13 = *(a1 + 32);
      v14 = *(v13 + 16);
      *(a1 + 1153) = v14;
      *(a1 + 976) = v14;
      *(a1 + 996) = *(v13 + 20) * *(a1 + 628);
      *(a1 + 1024) = a1 + 72;
      *(a1 + 1000) = *(a1 + 168);
      v15 = *(a1 + 16);
      v16 = (v15 + 616);
      for (i = 129; i != 132; ++i)
      {
        v18 = *v16++;
        *(a1 + 8 * i) = v18;
      }

      v19 = 0;
      *(a1 + 1080) = *(v15 + 784);
      *(a1 + 1072) = *(v15 + 680);
      *(a1 + 1012) = *(a2 + 176);
      do
      {
        v20 = *(v15 + 544 + 8 * v19);
        *(v43.f64 + v19++) = v20;
      }

      while (v19 != 3);
      v21 = 0;
      *(a1 + 1056) = v43.f64[0];
      *(a1 + 1064) = LODWORD(v43.f64[1]);
      v22 = v15 + 640;
      v23 = 864;
      do
      {
        v24 = 0;
        v25 = 0.0;
        v26 = v23;
        do
        {
          v25 = v25 + *(v22 + v24) * *(v8 + v26);
          v24 += 8;
          v26 += 32;
        }

        while (v24 != 24);
        v43.f64[v21] = *(v8 + 864 + 8 * v21 + 96) + v25;
        ++v21;
        v23 += 8;
      }

      while (v21 != 4);
      __asm { FMOV            V1.2D, #1.0 }

      v32 = vmulq_f64(v43, vdivq_f64(_Q1, vdupq_lane_s64(v44, 0)));
      *&v32.f64[0] = vcvt_f32_f64(v32);
      if (v10)
      {
        v42 = v32;
        v33 = (*(**(a1 + 1088) + 176))(*(a1 + 1088), 1.0);
        *&v32.f64[0] = v42.n128_u64[0];
        if (v33)
        {
          *(a1 + 1487) = 1;
          v34 = *(a1 + 1158);
          v35 = (*(**(a1 + 1088) + 80))(*(a1 + 1088), v42);
          *&v32.f64[0] = v42.n128_u64[0];
          if (v34 != v35)
          {
            v36 = (*(**(a1 + 1088) + 80))(*(a1 + 1088), v42);
            *&v32.f64[0] = v42.n128_u64[0];
            *(a1 + 1158) = v36;
            if (*(a1 + 1152))
            {
              if (*(a1 + 1152) == 2)
              {
                v37 = 1;
              }

              else
              {
                v37 = 2;
              }

              *(a1 + 1152) = v37;
            }
          }
        }
      }

      v38 = md::CurvedTextLabelPart::placeGlyphsOnRoadPath(a1, 0, (a1 + 1482), a1 + 976, v8, a2, *v32.f64, *(v32.f64 + 1));
      *(a1 + 1156) = v38;
      v39 = *(a1 + 576);
      *(a1 + 688) = -858980352 * ((*(*(v39 + 16) + 64) - *(*(v39 + 16) + 56)) >> 3);
      *(a1 + 692) = 0;
      *(a1 + 696) = ((*(v39 + 72) - *(v39 + 64)) << 10) & 0xFFFF0000;
      goto LABEL_27;
    }
  }

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_32:
  v38 = *(a1 + 1156);
LABEL_27:
  *(a1 + 280) = *a3;
  *(a1 + 284) = a3[1];
  *(a1 + 104) = *a3;
  *(a1 + 108) = a3[1];
  md::CollisionObject::setupShapeData(a1 + 72);
  return v38;
}

BOOL md::CurvedTextLabelPart::needsCrossfade(uint64_t a1, md::LabelManager *a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  if (*(a1 + 1482) != 4)
  {
    goto LABEL_7;
  }

  v9 = *(md::LabelStyle::textStyleGroup(*v8, *(a1 + 880)) + 100);
  if (v9 == 0.0)
  {
    goto LABEL_7;
  }

  v10 = v9 / *(a2 + 44);
  v11 = *(*v8 + 152) + *(*v8 + 152);
  if (*(a1 + 1485) != 8)
  {
    if (v10 < v11)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  if (v10 < v11)
  {
    goto LABEL_7;
  }

LABEL_5:
  v12 = 1;
  *(a4 + 8) = 1;
  *a4 = 1;
LABEL_8:
  if ((*(a1 + 1481) & 1) == 0 && *(a1 + 1489) == 1 && *(a1 + 1490) == 1 && *(a1 + 1156) == 37)
  {
    *(a1 + 1490) = 0;
    if (md::CurvedTextLabelPart::checkForTraffic(a1, a2))
    {
      v19 = *(a1 + 1480) ^ 1;
      v12 = 1;
      *(a4 + 10) = 1;
      *(a4 + 2) = v19;
    }
  }

  v13 = *(a1 + 1476);
  if (*(a1 + 1157) == v13 || v13 == 0)
  {
    v15 = *(a1 + 1478);
    if (*(a1 + 1152) != v15 && v15 != 0)
    {
      v12 = 1;
      *(a4 + 9) = 1;
      *(a4 + 1) = v15;
      *(a4 + 6) = *(a1 + 1153) | 0x100;
      if (a3)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v12 = 1;
    *(a4 + 11) = 1;
    *(a4 + 3) = v13;
    *(a4 + 9) = 1;
    *(a4 + 1) = 0;
  }

  if (a3)
  {
LABEL_24:
    if (*(*v8 + 253) == *(a1 + 1422))
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_28;
    }

    return 1;
  }

LABEL_21:
  if (v12)
  {
    return 1;
  }

LABEL_28:

  return md::TextLabelPart::needsCrossfade(a1, a2, a3);
}

double md::CurvedTextLabelPart::prepareForDisplay(md::CurvedTextLabelPart *this, md::LabelManager *a2)
{
  md::TextLabelPart::prepareForDisplay(this, a2);
  if ((*(this + 1160) & 1) == 0)
  {
    (*(**(this + 136) + 24))(*(this + 136), this + 1280);
    *(this + 1344) = *(this + 1152);
    *(this + 1349) = *(this + 1157);
  }

  *(this + 1350) = (*(**(this + 160) + 80))(*(this + 160));
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(*(this + 74) + 16) + 64) - *(*(*(this + 74) + 16) + 56)) >> 3);
  *(this + 202) = -858980352 * ((*(*(*(this + 74) + 16) + 64) - *(*(*(this + 74) + 16) + 56)) >> 3);
  *(this + 203) = 0;
  if (*(this + 126) < v3)
  {
    free(*(this + 62));
    *(this + 62) = malloc_type_calloc(v3, 0x18uLL, 0x1000040504FFAC1uLL);
    *(this + 126) = v3;
  }

  v4 = *(this + 59);
  if (v4)
  {
    free(v4);
    v5 = 0;
    *(this + 59) = 0;
    *(this + 123) = 0;
  }

  else
  {
    v5 = *(this + 123);
  }

  if (v5 < v3)
  {
    free(*(this + 60));
    v6 = malloc_type_malloc(12 * v3, 0x10000403E1C8BA9uLL);
    *(this + 60) = v6;
    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    *(this + 123) = v7;
  }

  *(this + 122) = 0;
  result = 1.40444743e306;
  *(this + 312) = xmmword_1B33B0730;
  return result;
}

void md::PolylineLabelPlacement::copyTo(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v3 + 38) = *(a1 + 38);
  *(v3 + 24) = v5;
  *(v3 + 8) = v4;
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v3 + 56);
  *(v3 + 48) = v7;
  *(v3 + 56) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = 0;
  v10 = *(a1 + 64);
  *(v3 + 76) = *(a1 + 76);
  *(v3 + 64) = v10;
  *(v3 + 96) = *(a1 + 96);
  do
  {
    *(v3 + 104 + v9) = *(a1 + 104 + v9);
    v9 += 8;
  }

  while (v9 != 24);
  v11 = 0;
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 136) = *(a1 + 136);
  v12 = *(a1 + 144);
  *(v3 + 147) = *(a1 + 147);
  *(v3 + 144) = v12;
  do
  {
    *(v3 + 152 + v11) = *(a1 + 152 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v13 = 0;
  *(v3 + 176) = *(a1 + 176);
  *(v3 + 184) = *(a1 + 184);
  v14 = *(a1 + 192);
  *(v3 + 195) = *(a1 + 195);
  *(v3 + 192) = v14;
  do
  {
    *(v3 + 200 + v13) = *(a1 + 200 + v13);
    v13 += 4;
  }

  while (v13 != 12);
  *(v3 + 212) = *(a1 + 212);
}

uint64_t *md::ShieldIconLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  result = md::ImageLabelPart::updateWithStyle(this, a2);
  if ((*(a2 + 3028) & 1) != 0 || *(this[2] + 1290) - 2 >= 8)
  {
    v6 = *this[4];
    v7 = *(v6 + 264);
    if (!v7)
    {
      result = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*this[4]);
      v7 = *result;
      *(v6 + 264) = *result;
    }

    if ((*(this[2] + 1362) & 1) != 0 || *(v7 + 56) == 1)
    {
      v8 = *(v7 + 58);
    }

    else
    {
      v8 = 0;
    }

    v5 = v8 & 1;
  }

  else
  {
    v5 = 0;
  }

  *(this + 593) = v5;
  return result;
}

uint64_t md::RouteLineSupport::resolveRouteLegWhen(md::RouteLineSupport *this, const PolylineCoordinate *a2)
{
  if (*(this + 31) == -1 || (v3 = *(this + 3)) == 0)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v5 = [v3 routeInfo];
    v6 = [v5 route];

    LODWORD(v5) = a2->index;
    if (v5 >= [v6 pointCount] || (v7 = objc_msgSend(v6, "legIndexForStepIndex:", objc_msgSend(v6, "stepIndexForPointIndex:", a2->index)), v7 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v10 = *(this + 31);
      v11 = v10 > v7;
      v12 = v10 >= v7;
      v8 = 1;
      if (v11)
      {
        v9 = 2;
      }

      else
      {
        v9 = v12;
      }
    }
  }

  return v9 | (v8 << 8);
}

BOOL md::ShieldIconLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *v4;
  v6 = *(*v4 + 296);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v6 = *v7;
    *(v5 + 296) = *v7;
  }

  if (*(v6 + 91) != *(a1 + 848))
  {
    return 1;
  }

  v8 = *v4;
  v9 = *(*v4 + 296);
  if (!v9)
  {
    v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v9 = *v10;
    *(v8 + 296) = *v10;
  }

  return *(a1 + 852) != *(v9 + 56) || *(a1 + 856) != *(v9 + 60);
}

void md::LineTextWithAuxLabelPart::updateWithStyle(md::LineTextWithAuxLabelPart *this, md::LabelManager *a2)
{
  v4 = **(this + 4);
  v5 = *(v4 + 264);
  if (!v5)
  {
    v6 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(**(this + 4));
    v5 = *v6;
    *(v4 + 264) = *v6;
  }

  *(this + 158) = *(v5 + 40);

  md::CompositeLabelPart::updateWithStyle(this, a2);
}

float md::MultipleShieldLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  md::CompositeLabelPart::updateWithStyle(this, a2);
  v4 = this[4];
  v5 = *v4;
  v6 = *(*v4 + 264);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*v4);
    v6 = *v7;
    *(v5 + 264) = *v7;
    v5 = *v4;
  }

  *(this + 162) = *(a2 + 44) * *(v6 + 36);
  result = *(v5 + 172);
  *(this + 42) = result;
  return result;
}

uint64_t md::LineTextWithAuxLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  result = (*(*a1 + 352))(a1);
  if (result != 37)
  {
    return result;
  }

  v57 = xmmword_1B33B0730;
  v9 = **(a1 + 576);
  v10 = *(*(a1 + 32) + 16);
  v11 = *(a2 + 424);
  if ((*(**(a1 + 640) + 168))(*(a1 + 640), v10))
  {
    if ((*(**(a1 + 640) + 176))(*(a1 + 640), v10, 1.0))
    {
      v12 = *(a1 + 658);
      if (v12 != (*(**(a1 + 640) + 80))(*(a1 + 640)))
      {
        *(a1 + 658) = (*(**(a1 + 640) + 80))(*(a1 + 640));
        v13 = *(a1 + 714);
        if (*(a1 + 714))
        {
          v14 = v13 == 2;
          v15 = v13 != 2;
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = 2;
          }

          *(a1 + 714) = v16;
          *(a1 + 657) = v15;
        }
      }
    }
  }

  Hiker = md::LabelPart::createHiker(&v62, v9, 0, v9[136], v11);
  v18 = v62;
  (*(*v62 + 88))(v62, Hiker);
  if ((v18[9] & 1) == 0)
  {
    (*(*v18 + 8))(v18);
    return 9;
  }

  v19 = (*(***(a1 + 576) + 344))(**(a1 + 576), 0);
  v20 = *(a1 + 632);
  v21 = (*(**(*(a1 + 576) + 8) + 344))(*(*(a1 + 576) + 8), 0);
  v55 = 0;
  v56[0] = 0;
  v22 = *(a1 + 640);
  v23 = (*(*v22 + 80))(v22);
  v26 = v22[45];
  if (v22[45])
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  if (v26 == 2)
  {
    v27 = 0;
  }

  if (v23)
  {
    LOBYTE(v26) = v27;
  }

  LineLayoutDirection = md::CurvedTextLabelPart::findLineLayoutDirection(v18, 1, v26, &v55, (v20 + v19) + v21, v24, v25);
  if (LineLayoutDirection)
  {
    if (*(v9 + 565) == 1)
    {
      v60 = *(v11 + 432);
      v61 = *(v11 + 440);
      v58 = *(v11 + 444);
      v59 = *(v11 + 452);
    }

    else
    {
      v60 = 1065353216;
      v61 = 0;
      v58 = 0x3F80000000000000;
      v59 = 0;
    }

    v29 = *(v9 + 1479);
    if (*(a1 + 714))
    {
      md::CurvedTextLabelPart::updateTextLayoutOptions(v29, &v60, &v58, &v55, *(a1 + 712), *(a1 + 714), (a1 + 713), (a1 + 715));
    }

    else
    {
      md::CurvedTextLabelPart::initTextLayoutOptions(v29, &v60, &v58, &v55, (a1 + 712), (a1 + 714));
      *(a1 + 657) = *(a1 + 714) == 2;
    }
  }

  (*(*v18 + 8))(v18);
  if ((LineLayoutDirection & 1) == 0)
  {
    return 9;
  }

  v30 = *(a1 + 657);
  md::LineTextWithAuxLabelPart::updateLayoutOffsets(a1, 0);
  (*(*v9 + 400))(v9, 0, v30);
  *(v9 + 1157) = *(a1 + 712);
  v31 = (*(*v9 + 80))(v9, a2, a3, a4);
  *(a1 + 656) = v31;
  *(a1 + 659) = v31 == 37;
  if (v31 == 37)
  {
    v32 = 0;
    v33 = v9[3];
    v34 = v33 + 72;
    v35 = v33 + 80;
    v36 = &v57;
    v37 = 1;
    do
    {
      v38 = v37;
      *v36 = fminf(*(v34 + 4 * v32), *v36);
      *(&v57 + v32 + 2) = fmaxf(*(&v57 + v32 + 2), *(v35 + 4 * v32));
      v36 = &v57 + 1;
      v32 = 1;
      v37 = 0;
    }

    while ((v38 & 1) != 0);
    v39 = 1;
    (*(**(*(a1 + 576) + 8) + 408))(*(*(a1 + 576) + 8), 0, 1);
    (*(**(*(a1 + 576) + 8) + 400))();
  }

  else
  {
    (*(**(*(a1 + 576) + 8) + 408))(*(*(a1 + 576) + 8), 0, 0);
    v39 = 0;
  }

  (*(**(*(a1 + 576) + 8) + 368))(*(*(a1 + 576) + 8), 0, v39);
  result = (*(**(*(a1 + 576) + 8) + 80))(*(*(a1 + 576) + 8), a2, a3, a4);
  if (result == 37)
  {
    v40 = *(*(a1 + 576) + 8);
    v41 = v40[3];
    LODWORD(v60) = (*(*v40 + 280))(v40, 0);
    HIDWORD(v60) = v42;
    v43 = gm::Box<float,2>::operator+((v41 + 72), &v60);
    v44 = 0;
    v55 = __PAIR64__(v45, LODWORD(v43));
    v46 = &v55;
    v56[0] = v47;
    v56[1] = v48;
    v49 = &v57;
    v50 = 1;
    do
    {
      v51 = v50;
      v52 = *v46;
      v53 = *v49;
      *(&v57 + v44 + 2) = fmaxf(*(&v57 + v44 + 2), *&v56[v44]);
      *v49 = fminf(v52, v53);
      v46 = &v55 + 1;
      v49 = &v57 + 1;
      v44 = 1;
      v50 = 0;
    }

    while ((v51 & 1) != 0);
    md::CollisionObject::resetWithRects((a1 + 72), 1u);
    md::CollisionObject::addRect(a1 + 72, &v57);
    v54 = vadd_f32(*a4, *a3);
    *(a1 + 280) = v54;
    *(a1 + 104) = v54;
    md::CollisionObject::setupShapeData(a1 + 72);
    return 37;
  }

  return result;
}

uint64_t geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[](uint64_t *a1, id *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if (md::RouteRangeAnnotationRequest::operator==(a2, j))
    {
      if (j != a1[1])
      {
        return j + 48;
      }

      break;
    }

    j += 56;
  }

  v32 = *a2;
  v33 = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v34, (a2 + 2));
  v35 = 0;
  for (j = *a1; ; j += 56)
  {
    v6 = a1[1];
    if (j == v6)
    {
      break;
    }

    if (md::RouteRangeAnnotationRequest::operator==(&v32, j))
    {
      v6 = a1[1];
      if (j != v6)
      {
        goto LABEL_31;
      }

      break;
    }
  }

  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - *a1) >> 3);
    if ((v9 + 1) > 0x492492492492492)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x249249249249249)
    {
      v12 = 0x492492492492492;
    }

    else
    {
      v12 = v11;
    }

    v31 = a1;
    if (v12)
    {
      if (v12 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v28 = 0;
    v29 = 56 * v9;
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::construct[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>,std::pair<md::RouteRangeAnnotationRequest,md::WhenState> const&,void,0>(56 * v9, &v32);
    v30 = (56 * v9 + 56);
    v13 = *a1;
    v14 = a1[1];
    v15 = v29 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 0;
      do
      {
        v17 = (v13 + v16);
        v18 = v15 + v16;
        v19 = *(v13 + v16);
        *v17 = 0;
        v17[1] = 0;
        *v18 = v19;
        *(v18 + 16) = *(v13 + v16 + 16);
        v20 = (v13 + v16 + 24);
        v21 = *v20;
        *(v15 + v16 + 24) = *v20;
        v22 = v15 + v16 + 24;
        *(v18 + 32) = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        *(v18 + 40) = v23;
        if (v23)
        {
          *(v21 + 16) = v22;
          v17[2] = v20;
          *v20 = 0;
          v17[5] = 0;
        }

        else
        {
          *(v18 + 16) = v22;
        }

        *(v15 + v16 + 48) = *(v13 + v16 + 48);
        v16 += 56;
      }

      while (v13 + v16 != v14);
      do
      {
        std::__destroy_at[abi:nn200100]<md::RouteRangeAnnotationRequest,0>(v13);
        v13 += 56;
      }

      while (v13 != v14);
    }

    v24 = *a1;
    *a1 = v15;
    v25 = a1[2];
    v27 = v30;
    *(a1 + 1) = v30;
    *&v30 = v24;
    *(&v30 + 1) = v25;
    v28 = v24;
    v29 = v24;
    std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>::~__split_buffer(&v28);
    v8 = v27;
  }

  else
  {
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::construct[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>,std::pair<md::RouteRangeAnnotationRequest,md::WhenState> const&,void,0>(v6, &v32);
    v8 = v6 + 56;
    a1[1] = v6 + 56;
  }

  a1[1] = v8;
  j = v8 - 56;
LABEL_31:
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v34[1]);

  return j + 48;
}

void sub_1B2B7D790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20)
{
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a20);

  _Unwind_Resume(a1);
}

uint64_t md::CompositeLabelPart::checkResourcesReady(md::CompositeLabelPart *this, md::LabelManager *a2)
{
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v2 == v3)
  {
    return 37;
  }

  while (1)
  {
    result = (*(**v2 + 352))(*v2, a2);
    if (result != 37)
    {
      break;
    }

    if (++v2 == v3)
    {
      return 37;
    }
  }

  return result;
}

uint64_t *std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::construct[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>,std::pair<md::RouteRangeAnnotationRequest,md::WhenState> const&,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100]((a1 + 16), a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void md::LabelNavEtaLabeler::setupRouteLabelingState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, unsigned int a6, char a7)
{
  v147 = *MEMORY[0x1E69E9840];
  v114 = a4;
  v9 = [(VKRouteInfo *)v114 route];
  v10 = v9;
  v11 = *(a1 + 464);
  if (v11)
  {
    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = v11[4];
        if (v9 >= v13)
        {
          break;
        }

        v11 = *v12;
        v14 = v12;
        if (!*v12)
        {
          goto LABEL_9;
        }
      }

      if (v13 >= v9)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        v14 = v12 + 1;
        goto LABEL_9;
      }
    }

    v126 = v12;
  }

  else
  {
    v14 = (a1 + 464);
    v12 = (a1 + 464);
LABEL_9:
    v15 = mdm::zone_mallocator::instance(v9);
    v16 = pthread_rwlock_rdlock((v15 + 32));
    if (v16)
    {
      geo::read_write_lock::logFailure(v16, "read lock", v17);
    }

    v18 = malloc_type_zone_malloc(*v15, 0x40uLL, 0x10E00408968D84CuLL);
    atomic_fetch_add((v15 + 24), 1u);
    geo::read_write_lock::unlock((v15 + 32));
    v18[4] = v10;
    v18[5] = 0;
    v18[6] = 0;
    v18[7] = 0;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v12;
    *v14 = v18;
    v19 = **(a1 + 456);
    v126 = v18;
    if (v19)
    {
      *(a1 + 456) = v19;
      v18 = *v14;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 464), v18);
    v10 = 0;
    ++*(a1 + 480);
  }

  v136 = [(VKRouteInfo *)v114 route];
  *&v143 = &v136;
  v111 = std::__tree<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::__map_value_compare<GEOComposedRoute * {__strong},std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,std::less<GEOComposedRoute * {__strong}>,true>,geo::allocator_adapter<std::__value_type<GEOComposedRoute * {__strong},std::vector<md::RouteRangeAnnotationRequest,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<GEOComposedRoute * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRoute * {__strong}&&>,std::tuple<>>((a1 + 488), v136, &v143);

  v20 = v114;
  v21 = [(VKRouteInfo *)v114 route];
  hasPolylineForRoute = md::LabelNavEtaLabeler::hasPolylineForRoute(a1, v114);
  v22 = v111[5];
  v124 = a2;
  v125 = v21;
  v131 = a1;
  v23 = v126;
  if (v111[6] != v22)
  {
    v24 = 0;
    v108 = (a1 + 424);
    v122 = 2;
    v121 = 0;
    do
    {
      v110 = v24;
      v25 = &v22[6 * v24];
      i = geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::operator[](v23 + 5, v25);
      *(i + 148) = a5;
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((i + 48));
      *(i + 152) = md::RouteRangeAnnotationRequest::etaType(v25[1]);
      v27 = v20;
      v28 = v108;
      v29 = *v108;
      v30 = 0.0;
      if (*v108)
      {
        do
        {
          v31 = *(v29 + 4);
          _CF = v31 >= v27;
          v33 = v31 < v27;
          if (_CF)
          {
            v28 = v29;
          }

          v29 = *&v29[2 * v33];
        }

        while (v29);
        if (v28 != v108 && *(v28 + 4) <= v27)
        {
          v30 = v28[11];
        }
      }

      v34 = *(*(a2 + 8) + 176);
      if (v30 == 0.0)
      {
        v35 = 8.0;
      }

      else
      {
        v35 = v30 + v30;
      }

      *(i + 84) = v35 * v34;
      v20 = v114;
      v23 = v126;
      if (hasPolylineForRoute)
      {
        *(i + 80) = -1;
        v36 = v25[2];
        v113 = v25 + 3;
        if (v36 != v25 + 3)
        {
          v129 = i;
          do
          {
            v37 = v36[5];
            v115 = v36;
            v116 = v36[6];
            if (v37 != v116)
            {
              do
              {
                (*(**(a1 + 40) + 24))(&v135);
                v117 = v37;
                v127 = v135.f64[1];
                v38 = v135.f64[0];
                if (*&v135.f64[0] != *&v135.f64[1])
                {
                  v39 = *(i + 80);
                  if (v39 >= *(v36 + 8))
                  {
                    v39 = *(v36 + 8);
                  }

                  *(i + 80) = v39;
                  do
                  {
                    __p[0] = 0;
                    __p[1] = 0;
                    v134 = 0;
                    v40 = v21;
                    v41 = *(*&v38 + 8);
                    v42 = *(*&v38 + 4);
                    if (**&v38 == LODWORD(v41) && vabds_f32(v42, *(*&v38 + 12)) < 0.00000011921)
                    {
                      v43 = 0;
                    }

                    else
                    {
                      if (v42 == 0.0)
                      {
                        v43 = 0;
                      }

                      else
                      {
                        v138 = **&v38;
                        *&v143 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v40, &v138);
                        *(&v143 + 1) = v44;
                        v144 = v45;
                        md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v143, v137);
                        v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, v137);
                        __p[1] = v43;
                        v42 = *(*&v38 + 4);
                        v41 = *(*&v38 + 8);
                      }

                      if (v42 <= 0.0)
                      {
                        v46 = **&v38;
                      }

                      else
                      {
                        v46 = **&v38 + 1;
                      }

                      if (v46 == LODWORD(v41))
                      {
                        *&v138.index = v41;
                        v138.offset = 0.0;
                        a1 = v131;
                        i = v129;
                        *&v143 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(v131 + 48), v40, &v138);
                        *(&v143 + 1) = v47;
                        v144 = v48;
                        md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v143, v137);
                        if (v43 >= v134)
                        {
                          v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, v137);
                        }

                        else
                        {
                          *v43++ = v137[0];
                        }

                        __p[1] = v43;
                      }

                      else if (v46 < LODWORD(v41) && (v49 = *(a2 + 24), v143 = *(v49 + 136), v144 = *(v49 + 152), v145 = *(v49 + 160), v146 = *(v49 + 176), v50 = *(v131 + 40), v138.index = v46, v138.offset = v41, (*(*v50 + 32))(v50, a3, v40, &v143, &v138, v137)))
                      {
                        a1 = v131;
                        md::RouteSimplifier::simplifiedRibbonIndices(*(v131 + 48), v40, v46, SLODWORD(v41), (v131 + 80), *v137 * 4.0 * *(v49 + 312) / *(v49 + 1064));
                        v52 = *(v131 + 80);
                        v51 = *(v131 + 88);
                        for (i = v129; v52 != v51; ++v52)
                        {
                          v142 = *v52;
                          v138 = COERCE_POLYLINECOORDINATE(md::RouteSimplifier::worldPointForPolylineCoordinate(*(v131 + 48), v40, &v142));
                          v139 = v53;
                          v140 = v54;
                          md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v138, &v141);
                          if (v43 >= v134)
                          {
                            v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, &v141);
                          }

                          else
                          {
                            *v43++ = v141;
                          }

                          __p[1] = v43;
                        }
                      }

                      else
                      {
                        i = v129;
                        a1 = v131;
                      }

                      if (*(*&v38 + 12) != 0.0)
                      {
                        v138 = *(*&v38 + 8);
                        *&v143 = md::RouteSimplifier::worldPointForPolylineCoordinate(*(a1 + 48), v40, &v138);
                        *(&v143 + 1) = v55;
                        v144 = v56;
                        md::LabelLayoutContext::projectPointToPixel(*(a2 + 24), &v143, v137);
                        if (v43 >= v134)
                        {
                          v43 = std::vector<md::PolylineCollider::VertexType>::__emplace_back_slow_path<md::PolylineCollider::VertexType const&>(__p, v137);
                        }

                        else
                        {
                          *v43++ = v137[0];
                        }

                        __p[1] = v43;
                      }
                    }

                    if ((v43 - __p[0]) >= 9)
                    {
                      operator new();
                    }

                    v23 = v126;
                    if (__p[0])
                    {
                      operator delete(__p[0]);
                    }

                    *&v38 += 16;
                  }

                  while (*&v38 != *&v127);
                  v38 = v135.f64[0];
                  v20 = v114;
                  v36 = v115;
                }

                if (v38 != 0.0)
                {
                  v135.f64[1] = v38;
                  operator delete(*&v38);
                }

                v37 = v117 + 16;
              }

              while (v117 + 16 != v116);
            }

            v57 = v36[1];
            if (v57)
            {
              do
              {
                v58 = v57;
                v57 = *v57;
              }

              while (v57);
            }

            else
            {
              do
              {
                v58 = v36[2];
                _ZF = *v58 == v36;
                v36 = v58;
              }

              while (!_ZF);
            }

            v36 = v58;
          }

          while (v58 != v113);
        }
      }

      v24 = v110 + 1;
      v22 = v111[5];
    }

    while (v110 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v111[6] - v22) >> 4));
  }

  v132 = md::LabelNavEtaLabeler::featuresForRoute(a1, v20);
  v60 = v111[5];
  if (v111[6] != v60)
  {
    v61 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v118 = _Q0;
    while (1)
    {
      v65 = &v60[6 * v61];
      v66 = geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::operator[](v23 + 5, v65);
      v130 = v61;
      v67 = v132;
      if (v132)
      {
        for (j = *v132; ; j += 72)
        {
          if (j == v67[1])
          {
            goto LABEL_92;
          }

          if (md::RouteRangeAnnotationRequest::operator==(v65, j))
          {
            break;
          }

          v67 = v132;
        }

        if (j == v132[1])
        {
LABEL_92:
          *&v143 = &unk_1F29F1180;
          *(&v143 + 1) = 0;
          v71 = geo::linear_map<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::operator[](v132, v65);
          geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v71, &v143);
          *&v143 = &unk_1F29F1180;

          goto LABEL_93;
        }

        v69 = *(j + 56);
        v70 = v69;
        if (!v69)
        {
          goto LABEL_94;
        }

        if ([v69 didStyleChange])
        {
          *(v66 + 40) = 0;
          [v70 setDidStyleChange:0];
        }

        v128 = 0;
      }

      else
      {
LABEL_93:
        v70 = 0;
LABEL_94:
        v128 = 1;
      }

      v72 = [v65[1] etaDescription];
      v73 = [v72 routeEtaType];
      if (v73 > 2)
      {
        break;
      }

      if (!v73)
      {
        goto LABEL_103;
      }

      if (v73 == 1)
      {
        LOWORD(v143) = 1798;
        std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v138, &v143, 2);
        goto LABEL_107;
      }

      if (v73 != 2)
      {
LABEL_104:
        LOBYTE(v143) = 6;
        std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v138, &v143, 1);
        goto LABEL_107;
      }

      LOWORD(v143) = 2057;
      std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v138, &v143, 2);
LABEL_107:
      if ((*(v66 + 40) & 1) == 0)
      {
        v120 = v70;
        [(VKRouteInfo *)v114 hasFocus];
        [VKLabelNavRouteEta toStyleEtaComparison:a6];
        v74 = [(VKRouteInfo *)v114 route];
        [v74 transportType];
        +[VKLabelNavRouteEta toStyleNavLabelType:](VKLabelNavRouteEta, "toStyleNavLabelType:", [v72 routeEtaType]);
        v75 = *geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[]((v131 + 552), v65);
        v76 = *(geo::linear_map<md::RouteRangeAnnotationRequest,md::WhenState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::WhenState>>>::operator[]((v131 + 552), v65) + 2);
        v77 = objc_msgSend_styleAttributes(v72);
        v122 = v122 & 0xFFFFFFFFFFFF0000 | v76;
        v121 = v121 & 0xFFFFFFFFFFFF0000 | v75;
        a2 = v124;
        objc_msgSend_styleForNavContext_selected_focused_etaComparison_transportType_navLabelType_when_routeLegWhen_additionalAttributes_(VKLabelNavRouteEta, v121, v122, v77);

        v21 = v125;
        v78 = [(VKRouteInfo *)v114 route];
        [v78 pointAt:{objc_msgSend(v65[1], "start")}];
        v123 = v79;
        v81 = v80;

        v82 = tan(v81 * 0.00872664626 + 0.785398163);
        v83 = log(v82);
        v84.f64[0] = v123;
        v84.f64[1] = v83;
        v135 = vmlaq_f64(v118, xmmword_1B33B0700, v84);
        v85 = v138;
        v86 = v139;
        while (v85 != v86)
        {
          v141.i8[0] = *v85;
          v87 = [VKLabelNavRouteEta artworkForEtaDescription:"artworkForEtaDescription:navContext:roadSignStyleGroup:mercatorPoint:orientation:isSelected:artworkCache:" navContext:v72 roadSignStyleGroup:v124 mercatorPoint:&v143 orientation:&v135 isSelected:*(v131 + 144) artworkCache:?];
          v88 = v87;
          if (!v87)
          {
            break;
          }

          [v87 offsetPixelForPixel:{0.0, 0.0}];
          v142.index = v89;
          v142.offset = v90;
          [v88 localSignBounds];
          __p[0] = __PAIR64__(v92, v91);
          __p[1] = __PAIR64__(v94, v93);
          v95 = gm::Box<float,2>::operator+(__p, &v142);
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v137[0] = &v141;
          v102 = std::__hash_table<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::__unordered_map_hasher<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::hash<md::RoadSignOrientation>,std::equal_to<md::RoadSignOrientation>,true>,std::__unordered_map_equal<md::RoadSignOrientation,std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>,std::equal_to<md::RoadSignOrientation>,std::hash<md::RoadSignOrientation>,true>,std::allocator<std::__hash_value_type<md::RoadSignOrientation,gm::Box<float,2>>>>::__emplace_unique_key_args<md::RoadSignOrientation,std::piecewise_construct_t const&,std::tuple<md::RoadSignOrientation const&>,std::tuple<>>(v66, v141.u8[0], v137);
          *(v102 + 5) = v95;
          *(v102 + 6) = v97;
          *(v102 + 7) = v99;
          *(v102 + 8) = v101;
          *(v66 + 40) = 1;

          ++v85;
        }

        if (v146)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v146);
        }

        v70 = v120;
        if (v145)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v145);
        }

        if (*(&v143 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v143 + 1));
        }
      }

      *(v66 + 88) = 0;
      if ((v128 & 1) == 0 && (hasPolylineForRoute & [v70 hasLabelWithAnchor]) == 1 && (a7 & 1) == 0)
      {
        [v70 worldPointForStaging];
        *&v143 = v103;
        *(&v143 + 1) = v104;
        v144 = v105;
        md::LabelNavEtaLabeler::updateEtaBoundsInRouteState(*(a2 + 24), v66, &v143, [v70 orientation]);
      }

      if (v138)
      {
        v139 = v138;
        operator delete(*&v138);
      }

      v61 = v130 + 1;
      v60 = v111[5];
      v23 = v126;
      if (v130 + 1 >= 0xAAAAAAAAAAAAAAABLL * ((v111[6] - v60) >> 4))
      {
        goto LABEL_125;
      }
    }

    if (v73 != 6)
    {
      if (v73 == 4)
      {
        LOWORD(v143) = 1284;
        std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v138, &v143, 2);
        goto LABEL_107;
      }

      if (v73 != 3)
      {
        goto LABEL_104;
      }
    }

LABEL_103:
    LODWORD(v143) = 185337865;
    std::vector<md::RoadSignOrientation>::vector[abi:nn200100](&v138, &v143, 4);
    goto LABEL_107;
  }

LABEL_125:
}

void sub_1B2B7EB74(_Unwind_Exception *a1)
{
  *(v1 + 328) = v3;
  v5 = *(v1 + 384);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  MEMORY[0x1B8C62190](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t geo::linear_map<md::RouteRangeAnnotationRequest,md::RouteLabelState,std::equal_to<md::RouteRangeAnnotationRequest>,std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>,std::vector<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::operator[](unint64_t *a1, id *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if (md::RouteRangeAnnotationRequest::operator==(a2, j))
    {
      if (j != a1[1])
      {
        return j + 48;
      }

      break;
    }

    j += 384;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  *&v56[4] = 0u;
  v52 = 0u;
  v53 = 0u;
  v49 = 0u;
  memset(v48, 0, sizeof(v48));
  LODWORD(v49) = 1065353216;
  v51 = 0uLL;
  v50 = 0uLL;
  v54 = 2139095039;
  v55 = 0;
  *v56 = 0uLL;
  v56[16] = 1;
  v68 = 0uLL;
  v67 = 0uLL;
  v69 = *a2;
  v70 = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](v71, (a2 + 2));
  v48[0] = 0uLL;
  memset(v72, 0, sizeof(v72));
  v73 = 1065353216;
  v74 = 0;
  memset(v75, 0, sizeof(v75));
  v76 = 0;
  *&v51 = 0;
  v50 = 0uLL;
  v79 = 0x7F7FFFFFu;
  v80 = *&v56[4];
  v77 = 0u;
  v78 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v91, 0, sizeof(v91));
  v92 = 0;
  *&v68 = 0;
  v67 = 0uLL;
  for (j = *a1; ; j += 384)
  {
    v6 = a1[1];
    if (j == v6)
    {
      break;
    }

    if (md::RouteRangeAnnotationRequest::operator==(&v69, j))
    {
      v6 = a1[1];
      if (j != v6)
      {
        goto LABEL_37;
      }

      break;
    }
  }

  v7 = a1[2];
  if (v6 >= v7)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 7);
    if (v9 + 1 > 0xAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 7);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x55555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v47 = a1;
    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v44 = 0;
    v45 = 384 * v9;
    std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>::pair[abi:nn200100](384 * v9, &v69);
    v46 = 384 * v9 + 384;
    v13 = *a1;
    v14 = a1[1];
    v15 = v45 + *a1 - v14;
    if (*a1 != v14)
    {
      v16 = 0;
      do
      {
        v17 = v15 + v16;
        v18 = (v13 + v16);
        v19 = *(v13 + v16);
        *v18 = 0;
        v18[1] = 0;
        *v17 = v19;
        *(v17 + 16) = *(v13 + v16 + 16);
        v20 = (v13 + v16 + 24);
        v21 = *v20;
        *(v15 + v16 + 24) = *v20;
        v22 = v15 + v16 + 24;
        *(v17 + 32) = *(v13 + v16 + 32);
        v23 = *(v13 + v16 + 40);
        *(v17 + 40) = v23;
        if (v23)
        {
          *(v21 + 16) = v22;
          v18[2] = v20;
          *v20 = 0;
          v18[5] = 0;
        }

        else
        {
          *(v17 + 16) = v22;
        }

        v24 = v15 + v16;
        v25 = v13 + v16;
        v26 = *(v13 + v16 + 48);
        *(v13 + v16 + 48) = 0;
        *(v24 + 48) = v26;
        v27 = *(v13 + v16 + 64);
        *(v24 + 56) = *(v13 + v16 + 56);
        *(v13 + v16 + 56) = 0;
        *(v15 + v16 + 64) = v27;
        v28 = *(v13 + v16 + 72);
        *(v24 + 72) = v28;
        *(v24 + 80) = *(v13 + v16 + 80);
        if (v28)
        {
          v29 = *(v27 + 8);
          v30 = *(v24 + 56);
          if ((v30 & (v30 - 1)) != 0)
          {
            if (v29 >= v30)
            {
              v29 %= v30;
            }
          }

          else
          {
            v29 &= v30 - 1;
          }

          *(v26 + 8 * v29) = v15 + v16 + 64;
          *(v13 + v16 + 64) = 0;
          *(v13 + v16 + 72) = 0;
        }

        *(v24 + 88) = *(v25 + 88);
        *(v24 + 104) = 0;
        *(v24 + 112) = 0;
        *(v24 + 96) = 0;
        *(v24 + 120) = *(v25 + 120);
        *(v24 + 96) = *(v25 + 96);
        *(v24 + 112) = *(v25 + 112);
        *(v25 + 104) = 0;
        *(v25 + 112) = 0;
        *(v25 + 96) = 0;
        v31 = *(v25 + 192);
        v33 = *(v25 + 144);
        v32 = *(v25 + 160);
        *(v24 + 176) = *(v25 + 176);
        *(v24 + 192) = v31;
        *(v24 + 144) = v33;
        *(v24 + 160) = v32;
        *(v24 + 128) = *(v25 + 128);
        v34 = *(v25 + 224);
        v35 = *(v25 + 240);
        v36 = *(v25 + 272);
        *(v24 + 256) = *(v25 + 256);
        *(v24 + 272) = v36;
        *(v24 + 224) = v34;
        *(v24 + 240) = v35;
        v37 = *(v25 + 288);
        v38 = *(v25 + 304);
        v39 = *(v25 + 336);
        *(v24 + 320) = *(v25 + 320);
        *(v24 + 336) = v39;
        *(v24 + 288) = v37;
        *(v24 + 304) = v38;
        *(v24 + 208) = *(v25 + 208);
        *(v24 + 360) = 0;
        *(v24 + 368) = 0;
        *(v24 + 352) = 0;
        *(v24 + 376) = *(v25 + 376);
        *(v24 + 352) = *(v25 + 352);
        *(v24 + 368) = *(v25 + 368);
        *(v25 + 352) = 0;
        *(v25 + 360) = 0;
        *(v25 + 368) = 0;
        v16 += 384;
      }

      while (v13 + v16 != v14);
      do
      {
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>,void,0>(v13);
        v13 += 384;
      }

      while (v13 != v14);
    }

    v40 = *a1;
    *a1 = v15;
    v41 = a1[2];
    v43 = v46;
    *(a1 + 1) = v46;
    *&v46 = v40;
    *(&v46 + 1) = v41;
    v44 = v40;
    v45 = v40;
    std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>>::~__split_buffer(&v44);
    v8 = v43;
  }

  else
  {
    std::pair<md::RouteRangeAnnotationRequest,md::RouteLabelState>::pair[abi:nn200100](v6, &v69);
    v8 = v6 + 384;
    a1[1] = v6 + 384;
  }

  a1[1] = v8;
  j = v8 - 384;
LABEL_37:
  v44 = v91;
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  v44 = v75;
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v72);
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(v71[1]);

  v44 = &v67;
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  v44 = &v50;
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v44);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v48);
  return j + 48;
}

void sub_1B2B7F0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, id a61, uint64_t a62, void *a63)
{
  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v63 + 48);
  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(a63);

  std::vector<md::PolylineSampleDebug,geo::allocator_adapter<md::PolylineSampleDebug,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::vector<std::shared_ptr<md::PolylineCollider>,geo::allocator_adapter<std::shared_ptr<md::PolylineCollider>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

double md::LabelPart::createHiker(double *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 565) == 1)
  {
    v9 = 0;
    v10 = *(a5 + 328);
    v11 = 1040;
    if (!a3)
    {
      v11 = 640;
    }

    v12 = *(a2 + 16) + v11;
    v50 = *v12;
    v13 = *(v12 + 16);
    v45 = 0;
    v47 = 0u;
    v44 = 0u;
    v51 = v13;
    v48 = 0;
    v14 = 1.0 / v10;
    v43 = v14;
    v46 = v14;
    v49 = v14;
    do
    {
      *(&v52 + v9) = -*(&v50 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v15 = 0;
    v41 = v52;
    v42 = v53;
    do
    {
      *(&v52 + v15) = *(&v41 + v15) * v14;
      v15 += 8;
    }

    while (v15 != 24);
    v16 = 0;
    v17 = v52;
    v18 = v53;
    v19 = &v54;
    v20 = &v43;
    do
    {
      v21 = 0;
      v22 = v19;
      do
      {
        *v22 = v20[v21];
        v22 += 2;
        v21 += 3;
      }

      while (v21 != 9);
      ++v16;
      v19 = (v19 + 8);
      ++v20;
    }

    while (v16 != 3);
    *(&v55 + 1) = 0;
    *(&v57 + 1) = 0;
    *(&v59 + 1) = 0;
    v60 = v17;
    *&v61 = v18;
    *(&v61 + 1) = 0x3FF0000000000000;
    (*(*a4 + 40))(&v43, a4, (*(a5 + 8) & 1) == 0, &v54, 0);
    v23 = v43;
  }

  else
  {
    (*(*a4 + 40))(&v54, a4, (*(a5 + 8) & 1) == 0, a5 + 864, 1);
    v23 = *&v54;
  }

  *a1 = v23;
  v24 = *(a2 + 16);
  v25 = *(v24 + 232);
  result = v25;
  *(*&v23 + 56) = result;
  LODWORD(result) = *(a5 + 52);
  *(*&v23 + 52) = LODWORD(result);
  v27 = 1072;
  if (!a3)
  {
    v27 = 696;
  }

  v28 = *(v24 + v27);
  if (v28)
  {
    if ((*(v28 + 208) & 1) == 0)
    {
      md::GeocentricFrame::_updateMatrix(v28);
    }

    v29 = 0;
    *(*&v23 + 64) = 1;
    v30 = (*&v23 + 72);
    do
    {
      v31 = 0;
      v32 = v28 + 80;
      do
      {
        v33 = 0;
        v34 = 0.0;
        v35 = v30;
        do
        {
          v36 = *v35;
          v35 += 4;
          v34 = v34 + *(v32 + v33) * v36;
          v33 += 8;
        }

        while (v33 != 32);
        *(&v54 + 4 * v31++ + v29) = v34;
        v32 += 32;
      }

      while (v31 != 4);
      ++v29;
      ++v30;
    }

    while (v29 != 4);
    v37 = v55;
    *(*&v23 + 200) = v54;
    *(*&v23 + 216) = v37;
    v38 = v57;
    *(*&v23 + 232) = v56;
    *(*&v23 + 248) = v38;
    v39 = v59;
    *(*&v23 + 264) = v58;
    *(*&v23 + 280) = v39;
    result = *&v60;
    v40 = v61;
    *(*&v23 + 296) = v60;
    *(*&v23 + 312) = v40;
  }

  return result;
}

uint64_t md::RouteRangeAnnotationRequest::operator==(id *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == v5)
  {
    v6 = [a1[1] isEqual:*(a2 + 8)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void std::__shared_ptr_emplace<md::PolylineCollider>::__on_zero_shared(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

__n128 md::LabelLineResolvedPosition::LabelLineResolvedPosition(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = 0;
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 99) = *(a2 + 99);
  *(a1 + 96) = v4;
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  result = *(a2 + 128);
  *(a1 + 128) = result;
  v7 = *(a2 + 144);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 144) = v7;
  v8 = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 152) = v8;
  *(a1 + 164) = *(a2 + 164);
  return result;
}

void md::MercatorRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, float *a4@<X3>, const void **a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = a3;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v11 = v9;
  if ([v9 pointCount])
  {
    v10 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v8, v11);
    if (v10)
    {
      md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustum(v10, a2, a4, a5);
    }
  }
}

void sub_1B2B7F62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

float md::RoadPosition::RoadPosition(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F29EAEC0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = 0;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return result;
}

void md::PolylinePixelHiker::validateIfNeeded(uint64_t this)
{
  if (*(this + 8) == 1)
  {
    md::PolylinePixelHiker::validate(this);
  }
}

uint64_t md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(uint64_t **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(*v4 + 8);

      if (v7 == v3)
      {
        v6 = *v4;
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  return v6;
}

void md::PolylinePixelHiker::validate(uint64_t this)
{
  *(this + 8) = 256;
  *(this + 10) = 0;
  v2 = *(this + 544);
  if (!v2)
  {
    goto LABEL_49;
  }

  if (*(this + 584) != *(v2 + 16))
  {
    goto LABEL_49;
  }

  v3 = *(this + 568);
  if (!v3 || (*(this + 578) & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v4 = (*(**v3 + 24))();
  v5 = 74;
  v6 = v4;
  do
  {
    v7 = *v6++;
    *(this + 8 * v5++) = v7;
  }

  while (v5 != 77);
  *(this + 616) = *(v4 + 24);
  *(this + 624) = *(v4 + 32);
  v8 = *(v4 + 40);
  *(this + 635) = *(v4 + 43);
  *(this + 632) = v8;
  v9 = md::LabelLinePosition::pointExists((this + 544));
  *(this + 9) = v9;
  if (!v9)
  {
    return;
  }

  v10 = md::RoadHiker::pixelForPoint(this, (this + 592), (this + 688), (this + 712));
  *(this + 9) = v10;
  if (!v10)
  {
    return;
  }

  v11 = md::LabelLinePosition::pointAtOffset((this + 544), 1);
  if (!v11)
  {
LABEL_49:
    *(this + 9) = 0;
    return;
  }

  v12 = v11;
  for (i = 0; i != 24; i += 8)
  {
    *(this + i + 640) = *(v11 + i);
  }

  *(this + 664) = *(v11 + 24);
  *(this + 672) = *(v11 + 32);
  v14 = *(v11 + 40);
  *(this + 683) = *(v11 + 43);
  *(this + 680) = v14;
  v15 = md::RoadHiker::pixelForPoint(this, (this + 640), (this + 700), (this + 716));
  *(this + 9) = v15;
  if (v15)
  {
    v16 = 0;
    v17 = *(this + 712);
    v18 = *(this + 716);
    do
    {
      *(v63 + v16 + 32) = *(this + v16 + 700) - *(this + v16 + 688);
      v16 += 4;
    }

    while (v16 != 12);
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(v63 + v19 + 32) * *(v63 + v19 + 32));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = v17 - v18;
    v22 = sqrtf(v20);
    v23 = 1.0 / sqrtf(v20 + (v21 * v21));
    *(this + 40) = v23 * v21;
    *(this + 44) = v23 * v22;
    md::LabelPoint::lerped(&v62, (this + 592), *(this + 580), this + 640);
    if (md::RoadHiker::pixelForPoint(this, &v62, (this + 16), (this + 48)))
    {
      if (*(this + 760) != 0.0)
      {
        v24 = md::LabelLinePosition::pointAtOffset((this + 544), -1);
        if (v24)
        {
          md::RoadHiker::pixelForPoint(this, v24, v63, 0);
        }

        *(this + 720) = md::PolylinePixelHiker::computeBisector(this, v63, v24 != 0, (this + 688), (this + 700), 1, (this + 592));
        *(this + 724) = v25;
        *(this + 728) = v26;
        v27 = md::LabelLinePosition::pointAtOffset((this + 544), 2);
        if (v27)
        {
          md::RoadHiker::pixelForPoint(this, v12, &v60, 0);
        }

        *(this + 732) = md::PolylinePixelHiker::computeBisector(this, (this + 688), 1, (this + 700), &v60, v27 != 0, (this + 640));
        *(this + 736) = v28;
        *(this + 740) = v29;
      }

      v30 = 700;
      v31 = (this + 688);
      do
      {
        v32 = v31[3];
        v33 = *v31++;
        *&v63[v30 - 700] = v32 - v33;
        v30 += 4;
      }

      while (v30 != 712);
      v34 = 0;
      v36 = *&v63[4];
      v35 = *v63;
      v60 = *v63;
      v61 = *&v63[4];
      v37 = 0.0;
      do
      {
        v37 = v37 + (*(&v60 + v34) * *(&v60 + v34));
        v34 += 4;
      }

      while (v34 != 12);
      v38 = sqrtf(v37);
      *(this + 9) = v38 > 0.001;
      if (v38 > 0.001)
      {
        v39 = 0;
        v40 = 1.0 / v38;
        do
        {
          *&v63[v39] = *(&v60 + v39) * v40;
          v39 += 4;
        }

        while (v39 != 12);
        v41 = *&v63[8];
        *(this + 28) = *v63;
        *(this + 36) = v41;
        v42 = fabsf(v35);
        v43 = fabsf(v36);
        v44 = 692;
        if (v42 > v43)
        {
          v44 = 688;
        }

        v45 = 20;
        if (v42 <= v43)
        {
          v35 = v36;
        }

        else
        {
          v45 = 16;
        }

        v46 = (*(this + v45) - *(this + v44)) / v35;
        *(this + 764) = v46;
        v47 = *(this + 760);
        if (v47 != 0.0)
        {
          for (j = 0; j != 12; j += 4)
          {
            *&v63[j] = *(this + 720 + j) * v47;
          }

          v49 = 0;
          v58 = *v63;
          v59 = *&v63[8];
          do
          {
            *&v63[v49] = *(&v58 + v49) + *(this + 688 + v49);
            v49 += 4;
          }

          while (v49 != 12);
          v50 = 0;
          v51 = *v63;
          v52 = *&v63[8];
          do
          {
            *&v63[v50] = *(this + 732 + v50) * v47;
            v50 += 4;
          }

          while (v50 != 12);
          v53 = 0;
          v56 = *v63;
          v57 = *&v63[8];
          do
          {
            *&v63[v53] = *(&v56 + v53) + *(this + 700 + v53);
            v53 += 4;
          }

          while (v53 != 12);
          v54 = 0;
          v58 = *v63;
          v59 = *&v63[8];
          *v63 = v51;
          *&v63[8] = v52;
          do
          {
            *&v63[v54] = *&v63[v54] + ((*(&v58 + v54) - *&v63[v54]) * v46);
            v54 += 4;
          }

          while (v54 != 12);
          v55 = *&v63[8];
          *(this + 16) = *v63;
          *(this + 24) = v55;
        }

        *(this + 768) = 0;
      }
    }
  }
}

uint64_t md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 48);
  if (*(a1 + 56) == v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 - (a3 == 1);
  while (1)
  {
    v8 = *(v3 + 8 * v5);
    if ([v8 startPointIndex] <= v7 && objc_msgSend(v8, "endPointIndex") > v7)
    {
      break;
    }

    v5 = ++v6;
    v3 = *(a1 + 48);
    if (v6 >= ((*(a1 + 56) - v3) >> 3))
    {
      return 0;
    }
  }

  v10 = v7 - [v8 startPointIndex];

  return v6 | (v10 << 16);
}

double md::MercatorPointSource::segmentWorldPoint(uint64_t a1, int a2, int a3)
{
  v4 = HIWORD(a2);
  v5 = *(a1 + 8 * a2);
  v6 = [v5 points];
  if (v5)
  {
    objc_msgSend_bounds(v5);
    v7 = v12;
    v8 = v13;
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  v9 = v4;
  if (a3 == 1)
  {
    v9 = v4 + 1;
  }

  v10 = (v7 + v8 * *(v6 + 12 * v9)) / *MEMORY[0x1E69A1690];

  return v10;
}

BOOL md::RoadHiker::pixelForPoint(uint64_t a1, md::LabelPoint *this, float32x2_t *a3, float *a4)
{
  if (*(a1 + 13) == 1)
  {
    v52 = 0uLL;
    v53 = 0.0;
    v8 = *(this + 10);
    if (v8 == 3.4028e38)
    {
      v8 = 0.0;
    }

    v9 = v8 * *(a1 + 52);
    v10 = v9;
    v11 = (a1 + 72);
    if (*(a1 + 65) == 1)
    {
      if (*(a1 + 64))
      {
        v12 = *md::LabelPoint::mercatorPoint(this);
        v13 = *(md::LabelPoint::mercatorPoint(this) + 8);
        *&v52 = v12;
        *(&v52 + 1) = v13;
        v53 = 0.0;
        v11 = (a1 + 200);
      }

      else
      {
        md::LabelPoint::geocentricPoint(this);
        v52 = *this;
        v53 = *(this + 2);
        if (v9 != 0.0)
        {
          v35 = md::LabelPoint::geocentricNormal(this);
          v36 = 0;
          v50.f64[0] = v35;
          v50.f64[1] = v37;
          v51 = v38;
          do
          {
            v54.f64[v36] = v50.f64[v36] * v10;
            ++v36;
          }

          while (v36 != 3);
          for (i = 0; i != 3; ++i)
          {
            *(&v52 + i * 8) = *(&v52 + i * 8) + v54.f64[i];
          }
        }
      }
    }

    else
    {
      v23 = *md::LabelPoint::mercatorPoint(this);
      v24 = *(md::LabelPoint::mercatorPoint(this) + 8);
      v25 = *(a1 + 56) * v10;
      *&v52 = v23;
      *(&v52 + 1) = v24;
      v53 = v25;
    }

    if (a4)
    {
      v40 = v11[7].f64[0] + v11[5].f64[0] * v10;
      *a4 = v40;
    }

    v41 = v11[1].f64[1];
    v42 = v11[3].f64[1];
    v43 = v11[5].f64[1];
    v44 = v11[7].f64[1];
    v45 = v11[4];
    v46 = vmlaq_n_f64(vmlaq_n_f64(v11[6], *v11, *&v52), v11[2], *(&v52 + 1));
    v50 = v46;
    v47 = v44 + *&v52 * v41 + *(&v52 + 1) * v42;
    v51 = v47;
    if (v53 != 0.0)
    {
      v50 = vmlaq_n_f64(v46, v45, v53);
      v47 = v47 + v53 * v43;
      v51 = v47;
    }

    result = v47 > 2.22044605e-16;
    if (v47 > 2.22044605e-16)
    {
      v48 = 0;
      v49 = 1.0 / v47;
      do
      {
        v54.f64[v48] = v50.f64[v48] * v49;
        ++v48;
      }

      while (v48 != 3);
      *a3 = vcvt_f32_f64(v54);
      a3[1].i32[0] = 0;
    }
  }

  else
  {
    v52 = 0uLL;
    v53 = 0.0;
    v14 = *(this + 10);
    if (v14 == 3.4028e38)
    {
      v14 = 0.0;
    }

    v15 = v14 * *(a1 + 52);
    v16 = v15;
    if (*(a1 + 65) == 1)
    {
      md::LabelPoint::geocentricPoint(this);
      for (j = 0; j != 24; j += 8)
      {
        *(&v52 + j) = *(this + j);
      }

      if (v15 != 0.0)
      {
        v18 = md::LabelPoint::geocentricNormal(this);
        v19 = 0;
        v50.f64[0] = v18;
        v50.f64[1] = v20;
        v51 = v21;
        do
        {
          v54.f64[v19] = v50.f64[v19] * v16;
          ++v19;
        }

        while (v19 != 3);
        for (k = 0; k != 3; ++k)
        {
          *(&v52 + k * 8) = *(&v52 + k * 8) + v54.f64[k];
        }
      }
    }

    else
    {
      v16 = *(a1 + 56) * v16;
      v26 = *md::LabelPoint::mercatorPoint(this);
      v27 = *(md::LabelPoint::mercatorPoint(this) + 8);
      *&v52 = v26;
      *(&v52 + 1) = v27;
      v53 = v16;
    }

    if (a4)
    {
      v28 = *(a1 + 184) + *(a1 + 152) * v16;
      *a4 = v28;
    }

    v29 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((a1 + 72), &v52);
    v30 = 0;
    v54.f64[0] = v29;
    v54.f64[1] = v31;
    v55 = v32;
    do
    {
      v33 = v54.f64[v30];
      *(&v52 + v30++) = v33;
    }

    while (v30 != 3);
    *a3 = v52;
    a3[1].i32[0] = DWORD2(v52);
    return 1;
  }

  return result;
}

BOOL gm::Range<md::PointSource::SegmentIndex>::overlapsRange(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = a2[2];
  v3 = *a1;
  if (v2 < v3 || v2 == v3 && a2[3] < a1[1])
  {
    return 0;
  }

  v4 = *a2;
  v5 = a1[2];
  if (v4 > v5)
  {
    return 0;
  }

  if (v4 == v5)
  {
    return a2[1] <= a1[3];
  }

  return 1;
}

uint64_t md::LabelLinePosition::pointAtOffset(md::LabelLinePosition *this, int a2)
{
  v5 = -1;
  if (!md::LabelLinePosition::getPointCoordinateAtOffset(this, a2, &v5))
  {
    return 0;
  }

  v3 = *(**(*(*(this + 2) + 8) + 16 * v5) + 24);

  return v3();
}

uint64_t geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(uint64_t a1, uint64_t a2, int a3, double *a4, double *a5)
{
  v5 = 0;
  v6 = dbl_1B33B29D8[a3];
  *a4 = dbl_1B33B29C0[a3];
  *a5 = v6;
  for (i = a1; ; i += 32)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v9 = v9 + *(a2 + 24 + v8) * *(i + v8);
      v8 += 8;
    }

    while (v8 != 24);
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(a2 + v10) * *(i + v10);
      v10 += 8;
    }

    while (v10 != 24);
    v12 = v11 + *(a1 + v5 + 24);
    v13 = v9 <= 0.0;
    if (v9 == 0.0)
    {
      if (v12 < 0.0)
      {
        return 0;
      }
    }

    else
    {
      v14 = -v12 / v9;
      if (v13)
      {
        v6 = fmin(v14, v6);
        *a5 = v6;
      }

      else
      {
        *a4 = fmax(*a4, v14);
        v6 = *a5;
      }
    }

    if (*a4 > v6)
    {
      break;
    }

    v5 += 32;
    if (v5 == 192)
    {
      return 1;
    }
  }

  return 0;
}

void std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

float64x2_t *md::LabelPoint::lerped(md::LabelPoint *this, const md::LabelPoint *a2, double a3, uint64_t a4)
{
  v7 = *(a2 + 10);
  v8 = 3.4028e38;
  if (v7 != 3.4028e38)
  {
    v9 = *(a4 + 40);
    v10 = v9 == 3.4028e38;
    v11 = v7 + (v9 - v7) * a3;
    if (v10)
    {
      v8 = 3.4028e38;
    }

    else
    {
      v8 = v11;
    }
  }

  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  if (*(a2 + 45) == 1 && *(a4 + 45) == 1)
  {
    result = md::LabelPoint::mercatorPoint(a4);
    v13 = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    *(this + 24) = vmlaq_n_f64(*(a2 + 24), vsubq_f64(*result, *(a2 + 24)), a3);
    v14 = 1;
  }

  else
  {
    result = md::LabelPoint::geocentricPoint(a4);
    v15 = 0;
    v18 = *a2;
    v19 = *(a2 + 2);
    do
    {
      *(&v18 + v15) = *(&v18 + v15) + (*(a4 + v15) - *(&v18 + v15)) * a3;
      v15 += 8;
    }

    while (v15 != 24);
    v14 = 0;
    v16 = v19;
    *this = v18;
    *(this + 2) = v16;
    *(this + 3) = 0;
    *(this + 4) = 0;
    v13 = 1;
  }

  *(this + 10) = v8;
  *(this + 44) = v13;
  *(this + 45) = v14;
  *(this + 46) = 1;
  return result;
}

float std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(float *a1, float *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return a5.n128_f32[0];
      }

      if (v11 == 2)
      {
        if (*v9 >= *v10)
        {
          if (*v9 != *v10)
          {
            return a5.n128_f32[0];
          }

          a5.n128_f32[0] = *(a2 - 1);
          if (a5.n128_f32[0] >= v10[1])
          {
            return a5.n128_f32[0];
          }
        }

LABEL_209:
        v78 = *v10;
        *v10 = *v9;
LABEL_210:
        *v9 = v78;
        return a5.n128_f32[0];
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      a5.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
      return a5.n128_f32[0];
    }

    if (v11 == 5)
    {
      a5.n128_f32[0] = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
      v79 = *(v10 + 6);
      if (*v9 < v79 || *v9 == v79 && (a5.n128_f32[0] = *(a2 - 1), a5.n128_f32[0] < v10[7]))
      {
        v80 = *(v10 + 3);
        *(v10 + 3) = *v9;
        *v9 = v80;
        v81 = *(v10 + 6);
        v82 = *(v10 + 4);
        if (v81 < v82 || v81 == v82 && (a5.n128_f32[0] = v10[7], a5.n128_f32[0] < v10[5]))
        {
          v84 = *(v10 + 2);
          v83 = *(v10 + 3);
          *(v10 + 2) = v83;
          *(v10 + 3) = v84;
          v85 = *(v10 + 2);
          a5.n128_u32[0] = HIDWORD(v83);
          if (v85 > v83 || v85 == v83 && v10[3] > *(&v83 + 1))
          {
            v86 = *(v10 + 1);
            *(v10 + 1) = v83;
            *(v10 + 2) = v86;
            if (*v10 > v83 || *v10 == v83 && v10[1] > *(&v83 + 1))
            {
              v87 = *v10;
              *v10 = v83;
              *(v10 + 1) = v87;
            }
          }
        }
      }

      return a5.n128_f32[0];
    }

LABEL_9:
    if (v11 <= 23)
    {
      v88 = v10 + 2;
      v90 = v10 == a2 || v88 == a2;
      if (a4)
      {
        if (v90)
        {
          return a5.n128_f32[0];
        }

        v91 = 0;
        v92 = v10;
        while (2)
        {
          v93 = v92;
          v92 = v88;
          v94 = *(v93 + 2);
          if (v94 < *v93)
          {
            a5.n128_f32[0] = v93[3];
            goto LABEL_227;
          }

          if (v94 == *v93)
          {
            a5.n128_f32[0] = v93[3];
            if (a5.n128_f32[0] < v93[1])
            {
LABEL_227:
              *(v93 + 1) = *v93;
              v95 = v10;
              if (v93 != v10)
              {
                v96 = v91;
                do
                {
                  v97 = *(v10 + v96 - 8);
                  if (v94 >= v97)
                  {
                    if (v94 != v97)
                    {
                      v95 = v93;
                      goto LABEL_238;
                    }

                    v95 = (v10 + v96);
                    if (*(v10 + v96 - 4) <= a5.n128_f32[0])
                    {
                      goto LABEL_238;
                    }
                  }

                  v93 -= 2;
                  *(v10 + v96) = *(v10 + v96 - 8);
                  v96 -= 8;
                }

                while (v96);
                v95 = v10;
              }

LABEL_238:
              *v95 = v94;
              v95[1] = a5.n128_f32[0];
            }
          }

          v88 = v92 + 2;
          v91 += 8;
          if (v92 + 2 == a2)
          {
            return a5.n128_f32[0];
          }

          continue;
        }
      }

      if (v90)
      {
        return a5.n128_f32[0];
      }

      while (2)
      {
        v129 = a1;
        a1 = v88;
        v130 = *(v129 + 2);
        if (v130 >= *v129)
        {
          if (v130 == *v129)
          {
            a5.n128_f32[0] = v129[3];
            if (a5.n128_f32[0] < v129[1])
            {
              goto LABEL_307;
            }
          }
        }

        else
        {
          a5.n128_f32[0] = v129[3];
          do
          {
            do
            {
LABEL_307:
              v131 = v129;
              *(v129 + 1) = *v129;
              v132 = *(v129 - 2);
              v129 -= 2;
              v133 = v130 == v132;
            }

            while (v130 < v132);
          }

          while (v133 && *(v131 - 1) > a5.n128_f32[0]);
          *v131 = v130;
          v131[1] = a5.n128_f32[0];
        }

        v88 = a1 + 2;
        if (a1 + 2 == a2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v10 == a2)
      {
        return a5.n128_f32[0];
      }

      v98 = (v11 - 2) >> 1;
      v99 = v98;
      while (2)
      {
        v100 = v99;
        if (v98 >= v99)
        {
          v101 = (2 * v99) | 1;
          v102 = &v10[2 * v101];
          if (2 * v100 + 2 < v11)
          {
            v103 = *(v102 + 2);
            if (*v102 < v103 || *v102 == v103 && (a5.n128_f32[0] = v102[1], a5.n128_f32[0] < v102[3]))
            {
              v102 += 2;
              v101 = 2 * v100 + 2;
            }
          }

          v104 = &v10[2 * v100];
          v105 = *v104;
          if (*v102 >= *v104)
          {
            if (*v102 != v105)
            {
              a5.n128_f32[0] = v104[1];
              goto LABEL_253;
            }

            a5.n128_f32[0] = v104[1];
            if (v102[1] >= a5.n128_f32[0])
            {
LABEL_253:
              *v104 = *v102;
              if (v98 >= v101)
              {
                while (1)
                {
                  v107 = 2 * v101;
                  v101 = (2 * v101) | 1;
                  v106 = &v10[2 * v101];
                  v108 = v107 + 2;
                  if (v108 < v11)
                  {
                    v109 = *(v106 + 2);
                    if (*v106 < v109 || *v106 == v109 && v106[1] < v106[3])
                    {
                      v106 += 2;
                      v101 = v108;
                    }
                  }

                  if (*v106 < v105 || *v106 == v105 && v106[1] < a5.n128_f32[0])
                  {
                    break;
                  }

                  *v102 = *v106;
                  v102 = v106;
                  if (v98 < v101)
                  {
                    goto LABEL_255;
                  }
                }
              }

              v106 = v102;
LABEL_255:
              *v106 = v105;
              v106[1] = a5.n128_f32[0];
            }
          }
        }

        v99 = v100 - 1;
        if (v100)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v110 = 0;
        v111 = *v10;
        v112 = v10;
        do
        {
          v113 = v112;
          v114 = &v112[2 * v110];
          v112 = v114 + 2;
          v115 = 2 * v110;
          v110 = (2 * v110) | 1;
          v116 = v115 + 2;
          if (v116 < v11)
          {
            v117 = *(v114 + 4);
            v118 = *(v114 + 2);
            if (v118 < v117 || v118 == v117 && (a5.n128_f32[0] = v114[3], a5.n128_f32[0] < v114[5]))
            {
              v112 = v114 + 4;
              v110 = v116;
            }
          }

          *v113 = *v112;
        }

        while (v110 <= (v11 - 2) / 2);
        a2 -= 2;
        if (v112 == a2)
        {
          *v112 = v111;
        }

        else
        {
          *v112 = *a2;
          *a2 = v111;
          v119 = (v112 - v10 + 8) >> 3;
          v120 = v119 - 2;
          if (v119 >= 2)
          {
            v121 = v120 >> 1;
            v122 = &v10[2 * (v120 >> 1)];
            v123 = *v112;
            if (*v122 < *v112)
            {
              a5.n128_f32[0] = v112[1];
              goto LABEL_282;
            }

            if (*v122 == v123)
            {
              a5.n128_f32[0] = v112[1];
              if (v122[1] < a5.n128_f32[0])
              {
LABEL_282:
                *v112 = *v122;
                if (v120 >= 2)
                {
                  while (1)
                  {
                    v125 = v121 - 1;
                    v121 = (v121 - 1) >> 1;
                    v124 = &v10[2 * v121];
                    if (*v124 >= v123 && (*v124 != v123 || v124[1] >= a5.n128_f32[0]))
                    {
                      break;
                    }

                    *v122 = *v124;
                    v122 = &v10[2 * v121];
                    if (v125 <= 1)
                    {
                      goto LABEL_288;
                    }
                  }
                }

                v124 = v122;
LABEL_288:
                *v124 = v123;
                v124[1] = a5.n128_f32[0];
              }
            }
          }
        }

        if (v11-- <= 2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    v12 = &v10[2 * (v11 >> 1)];
    v13 = v12;
    if (v11 >= 0x81)
    {
      v14 = *v12;
      if (*v12 < *v10 || v14 == *v10 && v12[1] < v10[1])
      {
        if (*v9 < v14 || *v9 == v14 && *(a2 - 1) < v12[1])
        {
          v15 = *v10;
          *v10 = *v9;
        }

        else
        {
          v15 = *v10;
          *v10 = *v12;
          *v12 = v15;
          if (*v9 >= v15 && (*v9 != v15 || *(a2 - 1) >= *(&v15 + 1)))
          {
            goto LABEL_33;
          }

          *v12 = *v9;
        }

        *v9 = v15;
        goto LABEL_33;
      }

      if (*v9 < v14 || *v9 == v14 && *(a2 - 1) < v12[1])
      {
        v18 = *v12;
        *v12 = *v9;
        *v9 = v18;
        if (*v12 < *v10 || *v12 == *v10 && v12[1] < v10[1])
        {
          v19 = *v10;
          *v10 = *v12;
          *v12 = v19;
        }
      }

LABEL_33:
      v22 = v12 - 2;
      v23 = *(v12 - 2);
      v24 = *(v10 + 2);
      if (v23 < v24 || v23 == v24 && *(v12 - 1) < v10[3])
      {
        v25 = *(a2 - 4);
        if (v25 < v23 || v25 == v23 && *(a2 - 3) < *(v12 - 1))
        {
          v26 = *(v10 + 1);
          *(v10 + 1) = *(a2 - 2);
        }

        else
        {
          v26 = *(v10 + 1);
          *(v10 + 1) = *v22;
          *v22 = v26;
          v31 = *(a2 - 4);
          if (v31 >= v26 && (v31 != v26 || *(a2 - 3) >= *(&v26 + 1)))
          {
            goto LABEL_51;
          }

          *v22 = *(a2 - 2);
        }

        *(a2 - 2) = v26;
        goto LABEL_51;
      }

      v27 = *(a2 - 4);
      if (v27 < v23 || v27 == v23 && *(a2 - 3) < *(v12 - 1))
      {
        v28 = *v22;
        *v22 = *(a2 - 2);
        *(a2 - 2) = v28;
        v29 = *(v10 + 2);
        if (*v22 < v29 || *v22 == v29 && *(v12 - 1) < v10[3])
        {
          v30 = *(v10 + 1);
          *(v10 + 1) = *v22;
          *v22 = v30;
        }
      }

LABEL_51:
      v34 = *(v12 + 2);
      v32 = v12 + 2;
      v33 = v34;
      v35 = *(v10 + 4);
      v36 = v34 == v35;
      if (v34 >= v35 && (!v36 || v32[1] >= v10[5]))
      {
        v39 = *(a2 - 6);
        if (v39 < v33 || v39 == v33 && *(a2 - 5) < v32[1])
        {
          v40 = *v32;
          *v32 = *(a2 - 3);
          *(a2 - 3) = v40;
          v41 = *(v10 + 4);
          if (*v32 < v41 || *v32 == v41 && v32[1] < v10[5])
          {
            v42 = *(v10 + 2);
            *(v10 + 2) = *v32;
            *v32 = v42;
          }
        }

        goto LABEL_65;
      }

      v37 = *(a2 - 6);
      if (v37 < v33 || v37 == v33 && *(a2 - 5) < v32[1])
      {
        v38 = *(v10 + 2);
        *(v10 + 2) = *(a2 - 3);
      }

      else
      {
        v38 = *(v10 + 2);
        *(v10 + 2) = *v32;
        *v32 = v38;
        v43 = *(a2 - 6);
        if (v43 >= v38 && (v43 != v38 || *(a2 - 5) >= *(&v38 + 1)))
        {
          goto LABEL_65;
        }

        *v32 = *(a2 - 3);
      }

      *(a2 - 3) = v38;
LABEL_65:
      v44 = *v13;
      v45 = *v22;
      if (*v13 < *v22 || v44 == v45 && v13[1] < v22[1])
      {
        v46 = *v32;
        if (*v32 < v44 || v46 == v44 && v32[1] < v13[1])
        {
          v47 = *v22;
          *v22 = *v32;
          *v32 = v47;
        }

        else
        {
          a5 = *v22;
          *v22 = vextq_s8(*v22, *v22, 8uLL);
          if (v46 < a5.n128_u32[0] || v46 == a5.n128_u32[0] && v32[1] < a5.n128_f32[1])
          {
            *v13 = *v32;
            *v32 = a5.n128_u64[0];
          }
        }
      }

      else if (*v32 < v44 || *v32 == v44 && v32[1] < v13[1])
      {
        v48 = *v13;
        v49 = *v32;
        *v13 = *v32;
        *v32 = v48;
        if (v45 > v49 || v45 == v49 && v22[1] > *(&v49 + 1))
        {
          v50 = *v22;
          *v22 = v49;
          *v13 = v50;
        }
      }

      v51 = *v10;
      *v10 = *v13;
      *v13 = v51;
      goto LABEL_122;
    }

    v16 = *v10;
    if (*v10 < *v12 || LODWORD(v16) == *v12 && v10[1] < v12[1])
    {
      if (*v9 < LODWORD(v16) || *v9 == LODWORD(v16) && *(a2 - 1) < v10[1])
      {
        v17 = *v12;
        *v12 = *v9;
LABEL_45:
        *v9 = v17;
        goto LABEL_122;
      }

      v17 = *v12;
      *v12 = *v10;
      *v10 = v17;
      if (*v9 < v17 || *v9 == v17 && *(a2 - 1) < *(&v17 + 1))
      {
        *v10 = *v9;
        goto LABEL_45;
      }
    }

    else if (*v9 < LODWORD(v16) || *v9 == LODWORD(v16) && *(a2 - 1) < v10[1])
    {
      v20 = *v10;
      *v10 = *v9;
      *v9 = v20;
      if (*v10 < *v12 || *v10 == *v12 && v10[1] < v12[1])
      {
        v21 = *v12;
        *v12 = *v10;
        *v10 = v21;
      }
    }

LABEL_122:
    --a3;
    v52 = *v10;
    if (a4)
    {
      goto LABEL_127;
    }

    v53 = *(v10 - 2);
    if (v53 < LODWORD(v52))
    {
      goto LABEL_127;
    }

    if (v53 == LODWORD(v52))
    {
      a5.n128_f32[0] = v10[1];
      if (*(v10 - 1) >= a5.n128_f32[0])
      {
        goto LABEL_167;
      }

LABEL_127:
      v54 = v10[1];
      a5.n128_f32[0] = v54;
        ;
      }

      if ((i - 8) == v10)
      {
        j = a2;
        if (i < a2)
        {
          v59 = *v9;
          j = a2 - 2;
          if (*v9 >= LODWORD(v52))
          {
            j = a2 - 2;
            do
            {
              if (v59 == LODWORD(v52))
              {
                if (j[1] < v54 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v61 = *(j - 2);
              j -= 2;
              v59 = v61;
            }

            while (v61 >= LODWORD(v52));
          }
        }
      }

      else
      {
        v56 = *v9;
        for (j = a2 - 2; v56 >= LODWORD(v52) && (v56 != LODWORD(v52) || j[1] >= v54); j -= 2)
        {
          v58 = *(j - 2);
          v56 = v58;
        }
      }

      v10 = i;
      if (i < j)
      {
        v10 = i;
        v62 = j;
        do
        {
          v63 = *v10;
          *v10 = *v62;
          v10 += 2;
          *v62 = v63;
          while (*v10 < LODWORD(v52) || *v10 == LODWORD(v52) && v10[1] < v54)
          {
            v10 += 2;
          }

          do
          {
            v65 = *(v62 - 2);
            v62 -= 2;
            v64 = v65;
          }

          while (v65 >= LODWORD(v52) && (v64 != LODWORD(v52) || v62[1] >= v54));
        }

        while (v10 < v62);
      }

      if (v10 - 2 != a1)
      {
        *a1 = *(v10 - 1);
      }

      *(v10 - 2) = v52;
      *(v10 - 1) = v54;
      if (i < j)
      {
        goto LABEL_166;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *>(a1, v10 - 1);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *>(v10, a2))
      {
        a2 = v10 - 2;
        if (v66)
        {
          return a5.n128_f32[0];
        }

        goto LABEL_1;
      }

      if (!v66)
      {
LABEL_166:
        a5.n128_f32[0] = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(a1, v10 - 2, a3, a4 & 1, a5);
        a4 = 0;
      }
    }

    else
    {
      a5.n128_f32[0] = v10[1];
LABEL_167:
      v67 = *v9;
      if (LODWORD(v52) < *v9 || LODWORD(v52) == v67 && *(a2 - 1) > a5.n128_f32[0])
      {
        do
        {
          v69 = *(v10 + 2);
          v10 += 2;
          v68 = v69;
        }

        while (LODWORD(v52) >= v69 && (LODWORD(v52) != v68 || v10[1] <= a5.n128_f32[0]));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (v10 < a2)
      {
        for (k = a2 - 2; LODWORD(v52) < v67 || LODWORD(v52) == v67 && k[1] > a5.n128_f32[0]; k -= 2)
        {
          v71 = *(k - 2);
          v67 = v71;
        }
      }

      while (v10 < k)
      {
        v72 = *v10;
        *v10 = *k;
        *k = v72;
        do
        {
          v74 = *(v10 + 2);
          v10 += 2;
          v73 = v74;
        }

        while (LODWORD(v52) >= v74 && (LODWORD(v52) != v73 || v10[1] <= a5.n128_f32[0]));
        do
        {
          do
          {
            v75 = *(k - 2);
            k -= 2;
            v76 = LODWORD(v52) == v75;
          }

          while (LODWORD(v52) < v75);
        }

        while (v76 && k[1] > a5.n128_f32[0]);
      }

      if (v10 - 2 != a1)
      {
        *a1 = *(v10 - 1);
      }

      a4 = 0;
      *(v10 - 2) = v52;
      *(v10 - 1) = a5.n128_f32[0];
    }
  }

  v77 = *(v10 + 2);
  if (v77 < *v10 || v77 == *v10 && (a5.n128_f32[0] = v10[3], a5.n128_f32[0] < v10[1]))
  {
    if (*v9 < v77)
    {
      goto LABEL_209;
    }

    if (*v9 == v77)
    {
      a5.n128_f32[0] = *(a2 - 1);
      if (a5.n128_f32[0] < v10[3])
      {
        goto LABEL_209;
      }
    }

    a5 = *v10;
    *v10 = vextq_s8(*v10, *v10, 8uLL);
    v78 = a5.n128_u64[0];
    if (*v9 < a5.n128_u32[0] || *v9 == a5.n128_u32[0] && (a5.n128_u32[0] = a5.n128_u32[1], *(a2 - 1) < *(&v78 + 1)))
    {
      *(v10 + 1) = *v9;
      goto LABEL_210;
    }
  }

  else if (*v9 < v77 || *v9 == v77 && (a5.n128_f32[0] = *(a2 - 1), a5.n128_f32[0] < v10[3]))
  {
    v127 = *(v10 + 1);
    *(v10 + 1) = *v9;
    *v9 = v127;
    v128 = *(v10 + 2);
    if (v128 < *v10 || v128 == *v10 && (a5.n128_f32[0] = v10[3], a5.n128_f32[0] < v10[1]))
    {
      a5 = vextq_s8(*v10, *v10, 8uLL);
      *v10 = a5;
    }
  }

  return a5.n128_f32[0];
}

float md::MultipleShieldLabelPart::hikerWidth(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 576);
  v3 = *(a1 + 584);
  if (v2 == v3)
  {
    return 0.0;
  }

  v6 = 0;
  v7 = 0.0;
  do
  {
    v8 = *v2;
    if ((*(**v2 + 744))(*v2, a2))
    {
      ++v6;
      (*(*v8 + 600))(v8, a2);
      v7 = (*(*v8 + 344))(v8, a2) + v7;
    }

    ++v2;
  }

  while (v2 != v3);
  if (v6 > 1)
  {
    v9 = 664;
    if (!a2)
    {
      v9 = 632;
    }

    return v7 + (*(a1 + v9 + 16) * (v6 - 1));
  }

  return v7;
}

uint64_t md::MercatorRouteCollider::computeRayBoundsOfRouteSectionWithinFrustum(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int *a5, double *a6)
{
  v9 = *(a1 + 8);
  v11 = *a5;
  v10 = a5[1];
  v12 = a3;
  if ([v12 pointCount] && (v13 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v9, v12)) != 0)
  {
    v14 = v13;
    *a6 = xmmword_1B33B0520;
    v17[0] = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(v13, v11, 0);
    v17[1] = md::RouteCollisionObject<md::MercatorPointSource>::segmentIndexForVertexIndex(v14, v10, 1);
    md::RouteCollisionObject<md::MercatorPointSource>::computeRayBoundsWithinFrustum(a2, a4, *(v14 + 72), v17, a6);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

float md::ShieldIconLabelPart::hikerWidth(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 312;
  if (!a2)
  {
    v4 = 72;
  }

  v5 = (a1 + v4);
  v6 = v5 + 2;
  do
  {
    v7 = v6[v3];
    v8 = v5[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v7 >= v8);
  v9 = 0.0;
  if (v7 >= v8)
  {
    v9 = v5[2] - *v5;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v6[v11];
    v13 = v5[v11];
    if (v10)
    {
      break;
    }

    v10 = 1;
    v11 = 1;
  }

  while (v12 >= v13);
  v14 = 0.0;
  if (v12 >= v13)
  {
    v14 = v5[3] - v5[1];
  }

  return fmaxf(v9, v14);
}

void md::RouteCollisionObject<md::MercatorPointSource>::computeRayBoundsWithinFrustum(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, double *a5)
{
  v10 = a2 + 24;
LABEL_2:
  if (*a3)
  {
    memset(v47, 0, sizeof(v47));
    v46 = *(a3 + 24);
    *(v47 + 8) = *(a3 + 40);
    v33 = gm::Box<double,3>::center<double>(&v46);
    v34 = 0;
    *&v48 = v33;
    *(&v48 + 1) = v35;
    v49 = v36;
    do
    {
      v50.f64[v34] = *(&v48 + v34 * 8) - *(a2 + v34 * 8);
      ++v34;
    }

    while (v34 != 3);
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + v50.f64[v37] * *(v10 + v37 * 8);
      ++v37;
    }

    while (v37 != 3);
    for (i = 0; i != 24; i += 8)
    {
      *(&v47[-1] + i) = fabs(*(v10 + i));
    }

    v40 = 0;
    v49 = *&v47[0];
    v47[1] = 0u;
    v48 = v46;
    v46 = *(a3 + 24);
    v47[0] = 0u;
    *(v47 + 8) = *(a3 + 40);
    do
    {
      v50.f64[v40] = *(v47 + v40 * 8 + 8) - *(&v47[-1] + v40 * 8);
      ++v40;
    }

    while (v40 != 3);
    v41 = 0;
    v42 = 0.0;
    v50 = vmaxnmq_f64(v50, 0);
    v51 = fmax(v51, 0.0);
    do
    {
      v42 = v42 + v50.f64[v41] * *(&v48 + v41 * 8);
      ++v41;
    }

    while (v41 != 3);
    v43 = v42 * 0.5;
    v44 = v38 - v43;
    v45 = fmax(v43 + v38, a5[1]);
    *a5 = fmin(*a5, v44);
    a5[1] = v45;
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 72), a4))
  {
    v11 = 0;
    memset(v47, 0, sizeof(v47));
    v46 = *(a3 + 24);
    *(v47 + 8) = *(a3 + 40);
    while (1)
    {
      v12 = 0;
      v13 = *(a1 + v11 + 16);
      v48 = *(a1 + v11);
      v49 = v13;
      do
      {
        v14 = (&v47[-1] + v12 * 8);
        if (*(&v48 + v12 * 8) >= 0.0)
        {
          v14 = (v47 + v12 * 8 + 8);
        }

        v50.f64[v12++] = *v14;
      }

      while (v12 != 3);
      v15 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a1 + v11 + v15 * 8) * v50.f64[v15];
        ++v15;
      }

      while (v15 != 3);
      if (*(a1 + v11 + 24) + v16 < 0.0)
      {
        break;
      }

      v11 += 32;
      if (v11 == 192)
      {
        v18 = *a5;
        v17 = a5[1];
        if (v17 < *a5)
        {
          goto LABEL_28;
        }

        memset(v47, 0, sizeof(v47));
        v46 = *(a3 + 24);
        *(v47 + 8) = *(a3 + 40);
        v19 = gm::Box<double,3>::center<double>(&v46);
        v20 = 0;
        *&v48 = v19;
        *(&v48 + 1) = v21;
        v49 = v22;
        do
        {
          v50.f64[v20] = *(&v48 + v20 * 8) - *(a2 + v20 * 8);
          ++v20;
        }

        while (v20 != 3);
        v23 = 0;
        v24 = 0.0;
        do
        {
          v24 = v24 + v50.f64[v23] * *(v10 + v23 * 8);
          ++v23;
        }

        while (v23 != 3);
        for (j = 0; j != 24; j += 8)
        {
          *(&v47[-1] + j) = fabs(*(v10 + j));
        }

        v26 = 0;
        v48 = v46;
        v49 = *&v47[0];
        memset(v47, 0, sizeof(v47));
        v46 = *(a3 + 24);
        *(v47 + 8) = *(a3 + 40);
        do
        {
          v50.f64[v26] = *(v47 + v26 * 8 + 8) - *(&v47[-1] + v26 * 8);
          ++v26;
        }

        while (v26 != 3);
        v27 = 0;
        v28 = 0.0;
        v50 = vmaxnmq_f64(v50, 0);
        v51 = fmax(v51, 0.0);
        do
        {
          v28 = v28 + v50.f64[v27] * *(&v48 + v27 * 8);
          ++v27;
        }

        while (v27 != 3);
        v29 = v28 * 0.5;
        v30 = v24 - v29;
        v31 = v29 + v24;
        if (v18 > v30 || v31 > v17)
        {
LABEL_28:
          md::RouteCollisionObject<md::MercatorPointSource>::computeRayBoundsWithinFrustum(a1, a2, *(a3 + 8), a4, a5);
          a3 = *(a3 + 16);
          goto LABEL_2;
        }

        return;
      }
    }
  }
}

uint64_t md::CurvedTextLabelPart::findLineLayoutDirection(uint64_t a1, int a2, int a3, uint64_t a4, float a5, __n128 a6, __n128 a7)
{
  *(a1 + 11) = 0;
  *(a1 + 8) = 1;
  a6.n128_u64[0] = 0;
  a7.n128_f32[0] = a5 * -0.5;
  v10 = a5 * 0.5;
  if (a3 == 2)
  {
    a7.n128_f32[0] = -a5;
    v10 = 0.0;
  }

  if (a3)
  {
    v11 = a7.n128_f32[0];
  }

  else
  {
    v11 = 0.0;
  }

  if (a3)
  {
    v12 = v10;
  }

  else
  {
    v12 = a5;
  }

  v33 = 0;
  v34 = 0;
  (*(*a1 + 32))(a1, (v12 + v11) * 0.5, a6, a7);
  (*(*a1 + 88))(a1);
  v13 = 0;
  if (*(a1 + 9) == 1)
  {
    (*(*a1 + 88))(a1);
    v14 = 0;
    v31 = *(a1 + 28);
    v32 = *(a1 + 36);
    do
    {
      *(&v33 + v14) = *(&v33 + v14) + *(&v31 + v14);
      v14 += 4;
    }

    while (v14 != 12);
    if (a2)
    {
      (*(*a1 + 72))(a1, &v31);
    }

    (*(*a1 + 16))(a1);
    (*(*a1 + 32))(a1, v11);
    (*(*a1 + 88))(a1);
    if (*(a1 + 9) == 1)
    {
      (*(*a1 + 88))(a1);
      for (i = 0; i != 12; i += 4)
      {
        *(&v33 + i) = *(&v33 + i) + *(a1 + i + 28);
      }

      (*(*a1 + 88))(a1);
      v29 = *(a1 + 16);
      v30 = *(a1 + 24);
      (*(*a1 + 16))(a1);
      (*(*a1 + 32))(a1, v12);
      (*(*a1 + 88))(a1);
      v13 = *(a1 + 9);
      if (v13 == 1)
      {
        (*(*a1 + 88))(a1);
        for (j = 0; j != 12; j += 4)
        {
          *(&v33 + j) = *(&v33 + j) + *(a1 + j + 28);
        }

        (*(*a1 + 88))(a1);
        v17 = 0;
        v27 = *(a1 + 16);
        v28 = *(a1 + 24);
        do
        {
          *(&v35 + v17) = *(&v27 + v17) - *(&v29 + v17);
          v17 += 4;
        }

        while (v17 != 12);
        v18 = gm::Matrix<float,3,1>::normalized<int,void>(&v35);
        v19 = 0;
        *v26 = v18;
        v26[1] = v20;
        v26[2] = v21;
        do
        {
          *(&v35 + v19 * 4) = *&v26[v19] * 3.0;
          ++v19;
        }

        while (v19 != 3);
        for (k = 0; k != 12; k += 4)
        {
          *(&v33 + k) = *(&v33 + k) + *(&v35 + k);
        }

        *a4 = gm::Matrix<float,3,1>::normalized<int,void>(&v33);
        *(a4 + 4) = v23;
        *(a4 + 8) = v24;
        (*(*a1 + 80))(a1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void md::PolylinePixelHiker::moveCursor(uint64_t this, float a2)
{
  if (*(this + 8) == 1)
  {
    md::PolylinePixelHiker::validate(this);
  }

  *(this + 768) = *(this + 768) + a2;
  if (*(this + 11))
  {
    a2 = -a2;
  }

  v108 = *(this + 688);
  v109 = *(this + 696);
  v4 = (this + 700);
  v106 = *(this + 700);
  v107 = *(this + 708);
  v5 = *(this + 760);
  if (v5 != 0.0)
  {
    for (i = 0; i != 12; i += 4)
    {
      *&v104[i] = *(this + 720 + i) * v5;
    }

    for (j = 0; j != 3; ++j)
    {
      v108.f32[j] = v108.f32[j] + *&v104[j * 4];
    }

    for (k = 0; k != 12; k += 4)
    {
      *&v104[k] = *(this + 732 + k) * v5;
    }

    for (m = 0; m != 3; ++m)
    {
      v106.f32[m] = v106.f32[m] + *&v104[m * 4];
    }
  }

  v10 = 0;
  v11 = (this + 688);
  do
  {
    *&v104[v10 * 4] = v108.f32[v10] - v106.f32[v10];
    ++v10;
  }

  while (v10 != 3);
  v12 = 0;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*&v104[v12] * *&v104[v12]);
    v12 += 4;
  }

  while (v12 != 12);
  v14 = sqrtf(v13);
  v15 = a2 + (*(this + 764) * v14);
  memset(v104, 0, sizeof(v104));
  *v105 = 2139095039;
  *&v105[4] = 0;
  v105[6] = 0;
  if (v15 < 0.0 || v15 > v14)
  {
    v17 = md::PolylinePixelHiker::moveAlongEdgeInDirection(this, a2 >= 0.0, v104);
    if (*(this + 9) != 1)
    {
      return;
    }

    if (v17)
    {
      v18 = *(this + 540);
      if (v18 < (md::LabelLinePosition::vertexInfo((this + 544)) >> 16))
      {
LABEL_25:
        *(this + 9) = 0;
        return;
      }

      v32 = (this + 720);
      v33 = a2 * a2;
      v34 = (this + 732);
      v95 = (this + 680);
      v96 = (this + 640);
      v93 = (this + 592);
      v94 = (this + 632);
      v35 = this + 16;
      v36 = (this + 616);
      while (1)
      {
        if (a2 < 0.0)
        {
          v37 = (this + 700);
          v38 = 3;
          do
          {
            *v37 = *(v37 - 3);
            ++v37;
            --v38;
          }

          while (v38);
          *(this + 716) = *(this + 712);
          v39 = (this + 732);
          v40 = 3;
          do
          {
            *v39 = *(v39 - 3);
            ++v39;
            --v40;
          }

          while (v40);
          v106 = v108;
          v107 = v109;
          v41 = (this + 640);
          v42 = 3;
          do
          {
            *v41 = *(v41 - 6);
            ++v41;
            --v42;
          }

          while (v42);
          *(this + 664) = *(this + 616);
          *(this + 672) = *(this + 624);
          *v95 = *v94;
          *(this + 683) = *(this + 635);
        }

        else
        {
          *v11 = *v4;
          *(this + 696) = *(this + 708);
          *(this + 712) = *(this + 716);
          *v32 = *v34;
          *(this + 728) = *(this + 740);
          v108 = v106;
          v109 = v107;
          *(this + 608) = *(this + 656);
          *v93 = *v96;
          *v36 = v36[3];
          *(this + 635) = *(this + 683);
          *v94 = *v95;
        }

        v101 = 0;
        v43 = md::RoadHiker::pixelForPoint(this, v104, &v102, &v101);
        *(this + 9) = v43;
        if (!v43)
        {
          return;
        }

        if (a2 < 0.0)
        {
          *v11 = v102;
          *(this + 696) = v103;
          *(this + 712) = v101;
          *v93 = *v104;
          *(this + 608) = *&v104[16];
          *v36 = *&v104[24];
          *(this + 635) = *&v105[3];
          v53 = *(this + 760);
          *v94 = *v105;
          if (v53 != 0.0)
          {
            v54 = md::LabelLinePosition::pointAtOffset((this + 544), -1);
            if (v54)
            {
              md::RoadHiker::pixelForPoint(this, v54, &v99, 0);
            }

            v55 = md::PolylinePixelHiker::computeBisector(this, &v99, v54 != 0, (this + 688), (this + 700), 1, v104);
            v56 = 0;
            *(this + 720) = v55;
            *(this + 724) = v57;
            *(this + 728) = v58;
            v59 = *(this + 760);
            do
            {
              v110.f32[v56] = *(v32 + v56 * 4) * v59;
              ++v56;
            }

            while (v56 != 3);
            v60 = 0;
            v97 = v110;
            v98 = v111;
            v36 = (this + 616);
            do
            {
              v110.f32[v60] = v97.f32[v60] + v11[v60];
              ++v60;
            }

            while (v60 != 3);
            v108 = v110;
            v109 = v111;
            v102 = v110;
            v52 = v111;
            goto LABEL_62;
          }

          v108 = v102;
          v109 = v103;
        }

        else
        {
          *v4 = v102;
          *(this + 708) = v103;
          *(this + 716) = v101;
          *v96 = *v104;
          *(this + 656) = *&v104[16];
          v36[3] = *&v104[24];
          *(this + 683) = *&v105[3];
          v44 = *(this + 760);
          *v95 = *v105;
          if (v44 != 0.0)
          {
            v45 = md::LabelLinePosition::pointAtOffset((this + 544), 2);
            if (v45)
            {
              md::RoadHiker::pixelForPoint(this, v45, &v99, 0);
            }

            v46 = md::PolylinePixelHiker::computeBisector(this, (this + 688), 1, (this + 700), &v99, v45 != 0, v104);
            v47 = 0;
            *(this + 732) = v46;
            *(this + 736) = v48;
            *(this + 740) = v49;
            v50 = *(this + 760);
            do
            {
              v110.f32[v47] = *(v34 + v47 * 4) * v50;
              ++v47;
            }

            while (v47 != 3);
            v51 = 0;
            v97 = v110;
            v98 = v111;
            v36 = (this + 616);
            do
            {
              v110.f32[v51] = v97.f32[v51] + *(v4 + v51 * 4);
              ++v51;
            }

            while (v51 != 3);
            v106 = v110;
            v107 = v111;
            v102 = v110;
            v52 = v111;
LABEL_62:
            v103 = v52;
            goto LABEL_65;
          }

          v106 = v102;
          v107 = v103;
        }

LABEL_65:
        if (*(this + 772) == 1)
        {
          for (n = 0; n != 3; ++n)
          {
            v110.f32[n] = v106.f32[n] - v108.f32[n];
          }

          v62 = 0;
          v99 = v110;
          v100 = v111;
          v63 = 0.0;
          do
          {
            v63 = v63 + (v99.f32[v62] * *(this + 744 + v62 * 4));
            ++v62;
          }

          while (v62 != 3);
          if (v63 <= 0.0)
          {
            goto LABEL_25;
          }
        }

        for (ii = 0; ii != 3; ++ii)
        {
          v110.f32[ii] = v102.f32[ii] - *(this + ii * 4 + 16);
        }

        v65 = 0;
        v66 = 0.0;
        do
        {
          v66 = v66 + (v110.f32[v65] * v110.f32[v65]);
          ++v65;
        }

        while (v65 != 3);
        if (v66 <= v33)
        {
          v67 = md::PolylinePixelHiker::moveAlongEdgeInDirection(this, a2 >= 0.0, v104);
          if ((*(this + 9) & 1) == 0)
          {
            return;
          }

          if (v67)
          {
            continue;
          }
        }

        for (jj = 0; jj != 3; ++jj)
        {
          v110.f32[jj] = v106.f32[jj] - v108.f32[jj];
        }

        v69 = 0;
        v102 = v110;
        v103 = v111;
        do
        {
          v110.f32[v69] = v106.f32[v69] - v108.f32[v69];
          ++v69;
        }

        while (v69 != 3);
        v70 = 0;
        v71 = 0.0;
        do
        {
          v71 = v71 + (v110.f32[v70] * v110.f32[v70]);
          ++v70;
        }

        while (v70 != 3);
        v72 = 0;
        v73 = sqrtf(v71);
        do
        {
          v110.f32[v72] = v102.f32[v72] * (1.0 / v73);
          ++v72;
        }

        while (v72 != 3);
        v74 = v111;
        *(this + 28) = v110;
        *(this + 36) = v74;
        v75 = 1.0;
        if (a2 >= 0.0)
        {
          v76 = 0.0;
        }

        else
        {
          v76 = 1.0;
        }

        if (a2 < 0.0)
        {
          v75 = 0.0;
        }

        if (v66 <= v33)
        {
          v77 = 0;
          v78 = a2 / v73;
          while (1)
          {
            v79 = 0;
            v20 = v75 + v78;
            v110 = v108;
            v111 = v109;
            do
            {
              v110.f32[v79] = v110.f32[v79] + ((v106.f32[v79] - v110.f32[v79]) * v20);
              ++v79;
            }

            while (v79 != 3);
            v80 = 0;
            v99 = v110;
            v100 = v111;
            do
            {
              v110.f32[v80] = v99.f32[v80] - *(v35 + v80 * 4);
              ++v80;
            }

            while (v80 != 3);
            v81 = 0;
            v82 = 0.0;
            do
            {
              v82 = v82 + (v110.f32[v81] * v110.f32[v81]);
              ++v81;
            }

            while (v81 != 3);
            if (v82 > v33)
            {
              break;
            }

            ++v77;
            v75 = v75 + v78;
            if (v77 == 4)
            {
              goto LABEL_25;
            }
          }

          v73 = fabsf(v78) * v73;
        }

        else
        {
          v20 = v75;
          v75 = v76;
        }

        for (; v73 > 0.5; v73 = v73 * 0.5)
        {
          v83 = 0;
          v110 = v108;
          v111 = v109;
          do
          {
            v110.f32[v83] = v110.f32[v83] + ((v106.f32[v83] - v110.f32[v83]) * ((v75 + v20) * 0.5));
            ++v83;
          }

          while (v83 != 3);
          v84 = 0;
          v99 = v110;
          v100 = v111;
          do
          {
            v110.f32[v84] = v99.f32[v84] - *(v35 + v84 * 4);
            ++v84;
          }

          while (v84 != 3);
          v85 = 0;
          v86 = 0.0;
          do
          {
            v86 = v86 + (v110.f32[v85] * v110.f32[v85]);
            ++v85;
          }

          while (v85 != 3);
          if (v86 < v33)
          {
            v75 = (v75 + v20) * 0.5;
          }

          else
          {
            v20 = (v75 + v20) * 0.5;
          }
        }

        v87 = 0;
        *(this + 764) = v20;
        v110 = v108;
        v111 = v109;
        do
        {
          v110.f32[v87] = v110.f32[v87] + ((v106.f32[v87] - v110.f32[v87]) * v20);
          ++v87;
        }

        while (v87 != 3);
        v88 = v111;
        *(this + 16) = v110;
        *(this + 24) = v88;
        v22 = *(this + 712);
        v23 = *(this + 716);
        *(this + 48) = v22 + ((v23 - v22) * v20);
        for (kk = 175; kk != 178; ++kk)
        {
          v90 = v11[3];
          v91 = *v11++;
          v110.f32[kk - 175] = v90 - v91;
        }

        v92 = 0;
        v28 = 0.0;
        do
        {
          v28 = v28 + (v110.f32[v92] * v110.f32[v92]);
          ++v92;
        }

        while (v92 != 3);
        goto LABEL_32;
      }
    }
  }

  v19 = 0;
  v20 = v15 / v14;
  *(this + 764) = v15 / v14;
  v110 = v108;
  v111 = v109;
  do
  {
    v110.f32[v19] = v110.f32[v19] + ((v106.f32[v19] - v110.f32[v19]) * v20);
    ++v19;
  }

  while (v19 != 3);
  v21 = v111;
  *(this + 16) = v110;
  *(this + 24) = v21;
  v22 = *(this + 712);
  v23 = *(this + 716);
  *(this + 48) = v22 + ((v23 - v22) * v20);
  for (mm = 175; mm != 178; ++mm)
  {
    v25 = v11[3];
    v26 = *v11++;
    v110.f32[mm - 175] = v25 - v26;
  }

  v27 = 0;
  v28 = 0.0;
  do
  {
    v28 = v28 + (v110.f32[v27] * v110.f32[v27]);
    ++v27;
  }

  while (v27 != 3);
LABEL_32:
  v29 = v22 - v23;
  v30 = sqrtf(v28);
  v31 = 1.0 / sqrtf(v28 + (v29 * v29));
  *(this + 40) = v31 * v29;
  *(this + 44) = v31 * v30;
  *(this + 10) = v20 < 0.0 || v20 > 1.0;
}

void md::RouteSimplifier::simplifiedRibbonIndices(uint64_t a1, void *a2, int a3, int a4, std::vector<unsigned int> *a5, double a6)
{
  v41 = a2;
  if (![v41 pointCount])
  {
    goto LABEL_10;
  }

  v13 = *(a1 + 16);
  v11 = a1 + 16;
  v12 = v13;
  v14 = log2(*(v11 + 16) * a6);
  if (!v13)
  {
    goto LABEL_10;
  }

  v15 = v11;
  do
  {
    v16 = *(v12 + 32);
    v17 = v16 >= v41;
    v18 = v16 < v41;
    if (v17)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * v18);
  }

  while (v12);
  if (v15 != v11 && *(v15 + 32) <= v41)
  {
    v19 = *(v15 + 40);
    v20 = (0.5 - v14);
    v43 = a4;
    v44 = a3;
    a5->__end_ = a5->__begin_;
    v21 = (*(v19 + 8) - *v19);
    std::vector<unsigned int>::reserve(a5, (v21 + *(*(v19 + 96) + 4 * (0.5 - v14)) * (a4 - a3 + 1) - 1) / v21 + 2);
    std::vector<unsigned int>::push_back[abi:nn200100](a5, &v44);
    v22 = a3 + 1;
    v23 = a4 - 1;
    if (*(v19 + 24) >= v20)
    {
      v24 = *(v19 + 56);
      v25 = *(v19 + 64);
      if (v25 != v24)
      {
        v26 = (v25 - v24) >> 2;
        v27 = *(v19 + 56);
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[4 * (v28 >> 1)];
          v32 = *v30;
          v31 = (v30 + 1);
          v28 += ~(v28 >> 1);
          if (v32 < v22)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
        v33 = *(v19 + 56);
        do
        {
          v34 = v26 >> 1;
          v35 = &v33[4 * (v26 >> 1)];
          v37 = *v35;
          v36 = (v35 + 1);
          v26 += ~(v26 >> 1);
          if (v23 < v37)
          {
            v26 = v34;
          }

          else
          {
            v33 = v36;
          }
        }

        while (v26);
        if (v27 != v25)
        {
          v38 = (v27 - v24) >> 2;
          v39 = (v33 - v24 + 0x3FFFFFFFCLL) >> 2;
          while (v38 <= v39)
          {
            v40 = v38;
            if (*(*(v19 + 32) + v38) <= v20)
            {
              std::vector<unsigned int>::push_back[abi:nn200100](a5, (*(v19 + 56) + 4 * v38));
            }

            LODWORD(v38) = v40 + 1;
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v42 = v22;
        if (v22 > v23)
        {
          break;
        }

        if (*(*v19 + v22) <= v20)
        {
          std::vector<unsigned int>::push_back[abi:nn200100](a5, &v42);
        }

        ++v22;
      }
    }

    if (a4 != a3)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a5, &v43);
    }
  }

  else
  {
LABEL_10:
    a5->__end_ = a5->__begin_;
  }
}