void *std::__copy_impl::operator()[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>,std::shared_ptr<md::LabelMapTile>*>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = v5[2];
      v6 = v5[3];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v5 = *v5;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
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
        v7 = *--v3;
        v6 = v7;
        *v3 = 0;
        if (v7)
        {
          std::vector<md::LabelAnimationItem,geo::allocator_adapter<md::LabelAnimationItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v6);
          result = MEMORY[0x1B8C62190](v6, 0x1020C4094DC1443);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v8 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelAnimationTrack>>(v8, v4);
  }
}

void md::AnimatedCrossFadeLabelPart::~AnimatedCrossFadeLabelPart(md::AnimatedCrossFadeLabelPart *this)
{
  *this = &unk_1F2A0D4C0;
  md::AnimatedCrossFadeLabelPart::emitEndSignpost(this);
  v2 = (this + 696);
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 664);
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

{
  md::AnimatedCrossFadeLabelPart::~AnimatedCrossFadeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void std::vector<md::LabelAnimationItem,geo::allocator_adapter<md::LabelAnimationItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimationItem>(v2, v1);
  }
}

char *non-virtual thunk tomd::MapNavLabeler::setRouteLabelBoundingRects(uint64_t a1, __int128 **a2)
{
  result = (a1 + 728);
  if (result != a2)
  {
    result = std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::LabelBoundingRect*,md::LabelBoundingRect*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  *(a1 + 792) = 1;
  return result;
}

void md::AnimatedCrossFadeLabelPart::emitEndSignpost(md::AnimatedCrossFadeLabelPart *this)
{
  if (*(this + 738) == 1)
  {
    v8 = v1;
    v9 = v2;
    *(this + 738) = 0;
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v4 = GEOGetVectorKitPerformanceLog_log;
    v5 = v4;
    v6 = *(this + 736);
    if (v6)
    {
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LabelsPickAnimation", &unk_1B3514CAA, v7, 2u);
      }
    }
  }
}

char *std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::LabelBoundingRect*,md::LabelBoundingRect*>(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *(result + 2);
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 4) >= a4)
  {
    v16 = *(result + 1);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v9) >> 4) >= a4)
    {
      while (v6 != a3)
      {
        v21 = *v6;
        v9[2] = *(v6 + 2);
        *v9 = v21;
        *(v9 + 6) = *(v6 + 6);
        *(v9 + 7) = *(v6 + 7);
        *(v9 + 8) = *(v6 + 8);
        *(v9 + 9) = *(v6 + 9);
        *(v9 + 40) = *(v6 + 40);
        v6 += 3;
        v9 += 6;
      }

      *(result + 1) = v9;
    }

    else
    {
      v17 = (a2 + v16 - v9);
      if (v16 != v9)
      {
        do
        {
          v18 = *v6;
          v9[2] = *(v6 + 2);
          *v9 = v18;
          *(v9 + 6) = *(v6 + 6);
          *(v9 + 7) = *(v6 + 7);
          *(v9 + 8) = *(v6 + 8);
          *(v9 + 9) = *(v6 + 9);
          *(v9 + 40) = *(v6 + 40);
          v6 += 3;
          v9 += 6;
        }

        while (v6 != v17);
        v16 = *(result + 1);
      }

      v19 = v16;
      if (v17 != a3)
      {
        v19 = v16;
        do
        {
          *v19 = *v17;
          *(v19 + 8) = *(v17 + 8);
          v20 = *(v17 + 24);
          v19[40] = *(v17 + 40);
          *(v19 + 24) = v20;
          v17 += 3;
          v19 += 48;
        }

        while (v17 != a3);
      }

      *(result + 1) = v19;
    }
  }

  else
  {
    if (v9)
    {
      *(result + 1) = v9;
      v10 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBoundingRect>(v10, v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 > 0x555555555555555)
    {
      goto LABEL_26;
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= a4)
    {
      v12 = a4;
    }

    v13 = v11 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v12;
    if (v13 > 0x555555555555555)
    {
LABEL_26:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBoundingRect>(v14, v13);
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[48 * v13];
    while (v6 != a3)
    {
      *result = *v6;
      *(result + 8) = *(v6 + 8);
      v15 = *(v6 + 24);
      result[40] = *(v6 + 40);
      *(result + 24) = v15;
      v6 += 3;
      result += 48;
    }

    v7[1] = result;
  }

  return result;
}

void std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
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
        v6 = *(v3 - 18);
        v3 -= 18;
        result = v6;
        if (v6 != v3[2])
        {
          free(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimation>(v7, v4);
  }
}

void md::NullLabelPart::~NullLabelPart(void **this)
{
  *this = &unk_1F2A5B190;
  v2 = this + 9;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(v2);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A5B190;
  v1 = this + 9;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(v1);
}

void std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__assign_multi<std::__tree_const_iterator<gm::Box<double,2>,std::__tree_node<gm::Box<double,2>,void *> *,long>>(uint64_t ***a1, void *a2, void *a3)
{
  if (!a1[2])
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = (a1 + 1);
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v9[4] = v13[4];
      v9[5] = v13[5];
      v9[6] = v13[6];
      v9[7] = v13[7];
      v14 = *v8;
      v15 = (a1 + 1);
      v16 = (a1 + 1);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v15 = v14;
            if (!md::MultiRectSetCompare::operator()((v9 + 4), (v14 + 4)))
            {
              break;
            }

            v14 = *v15;
            v16 = v15;
            if (!*v15)
            {
              goto LABEL_16;
            }
          }

          v14 = v15[1];
        }

        while (v14);
        v16 = v15 + 1;
      }

LABEL_16:
      std::__tree<unsigned short>::__insert_node_at(a1, v15, v16, v9);
      if (v11)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v11);
      }

      else
      {
        v10 = 0;
      }

      v17 = v13[1];
      if (v17)
      {
        do
        {
          a2 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v18 = *a2 == v13;
          v13 = a2;
        }

        while (!v18);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t std::insert_iterator<std::set<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>>::operator=[abi:nn200100](uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 8;
  if (v6 != v5 && !md::RouteRangeAnnotationRequest::operator<(a2, v5[4]))
  {
    if (!md::RouteRangeAnnotationRequest::operator<((v5 + 4), *a2))
    {
      goto LABEL_29;
    }

    v10 = (v5 + 1);
    v9 = v5[1];
    if (v9)
    {
      v11 = v5[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = v5;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 != v6)
    {
      if (!md::RouteRangeAnnotationRequest::operator<(a2, v12[4]))
      {
LABEL_25:
        v10 = std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__find_equal<md::RouteRangeAnnotationRequest>(v4, &v21, a2);
        goto LABEL_26;
      }

      v9 = *v10;
    }

    if (v9)
    {
      v21 = v12;
      v10 = v12;
    }

    else
    {
      v21 = v5;
    }

    goto LABEL_26;
  }

  v7 = v5;
  if (*v4 != v5)
  {
    v8 = *v5;
    if (*v5)
    {
      do
      {
        v7 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v13 = v5;
      do
      {
        v7 = v13[2];
        v14 = *v7 == v13;
        v13 = v7;
      }

      while (v14);
    }

    if (!md::RouteRangeAnnotationRequest::operator<((v7 + 4), *a2))
    {
      goto LABEL_25;
    }
  }

  v10 = v5;
  if (!*v5)
  {
    goto LABEL_28;
  }

  v21 = v7;
  v10 = (v7 + 1);
LABEL_26:
  v5 = *v10;
  if (*v10)
  {
    goto LABEL_29;
  }

  v5 = v21;
LABEL_28:
  std::__tree<md::RouteRangeAnnotationRequest,std::less<md::RouteRangeAnnotationRequest>,geo::allocator_adapter<md::RouteRangeAnnotationRequest,mdm::zone_mallocator>>::__construct_node<md::RouteRangeAnnotationRequest const&>(&v20, v4, a2);
  v16 = v20;
  std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(v4, v5, v10, v20);
  v5 = v16;
LABEL_29:
  *(a1 + 8) = v5;
  v17 = v5[1];
  if (v17)
  {
    do
    {
      v18 = v17;
      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    do
    {
      v18 = v5[2];
      v14 = *v18 == v5;
      v5 = v18;
    }

    while (!v14);
  }

  *(a1 + 8) = v18;
  return a1;
}

id GEOGetVectorKitLabelNavEtaLabelerLog(void)
{
  if (GEOGetVectorKitLabelNavEtaLabelerLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitLabelNavEtaLabelerLog(void)::onceToken, &__block_literal_global_6345);
  }

  v1 = GEOGetVectorKitLabelNavEtaLabelerLog(void)::log;

  return v1;
}

uint64_t md::RouteRangeAnnotationRequest::to_string(md::RouteRangeAnnotationRequest *this, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v36);
  v4 = [*(a2 + 8) etaDescription];
  v5 = [v4 etaText];
  if (v5)
  {
    v6 = [*(a2 + 8) etaDescription];
    v7 = [v6 etaText];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  }

  else
  {
    v8 = &stru_1F2A61C40;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v36, "{ route:", 8);
  v9 = *a2;
  v10 = *a2;
  v11 = MEMORY[0x1B8C61C40](&v36, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", route.end:(", 13);
  v12 = *a2;
  [v12 endRouteCoordinate];
  v13 = GEOPolylineCoordinateAsFullString();
  v14 = [v13 UTF8String];
  v15 = strlen(v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v14, v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "), annotation.start:(", 21);
  [*(a2 + 8) start];
  v16 = GEOPolylineCoordinateAsFullString();
  v17 = [v16 UTF8String];
  v18 = strlen(v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "), annotation.end:(", 19);
  [*(a2 + 8) end];
  v19 = GEOPolylineCoordinateAsFullString();
  v20 = [v19 UTF8String];
  v21 = strlen(v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v20, v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, "), annotation.type:", 19);
  v22 = md::RouteRangeAnnotationRequest::etaType(*(a2 + 8));
  if (v22 > 6)
  {
    v23 = @"VKRouteEtaUnknown";
  }

  else
  {
    v23 = *(&off_1E7B32EE0 + v22);
  }

  v24 = [(__CFString *)v23 UTF8String];
  v25 = strlen(v24);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v24, v25);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", annotation.text:", 19);
  v26 = [(__CFString *)v8 UTF8String];
  v27 = strlen(v26);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v26, v27);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ", sections:", 12);
  v28 = *(a2 + 16);
  if (v28 == (a2 + 24))
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      v30 = v28[1];
      v31 = v28;
      if (v30)
      {
        do
        {
          v32 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v32 = v31[2];
          v33 = *v32 == v31;
          v31 = v32;
        }

        while (!v33);
      }

      v29 += (v28[6] - v28[5]) >> 4;
      v28 = v32;
    }

    while (v32 != (a2 + 24));
  }

  v34 = MEMORY[0x1B8C61CB0](v11, v29);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, " }", 2);

  std::ostringstream::str[abi:nn200100](this, &v36);
  v36 = *MEMORY[0x1E69E54E8];
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v37 = MEMORY[0x1E69E5548] + 16;
  if (v39 < 0)
  {
    operator delete(v38[7].__locale_);
  }

  v37 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v38);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v40);
}

void sub_1B2BCB1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:nn200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:nn200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F29F1180;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void *std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::pair[abi:nn200100](void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  std::map<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>,std::less<unsigned int>,geo::allocator_adapter<std::pair<unsigned int const,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::map[abi:nn200100](a1 + 2, (a2 + 2));
  a1[6] = &unk_1F29F1180;
  a1[7] = 0;
  v4 = a2[7];
  v5 = a1[7];
  a1[7] = v4;

  return a1;
}

uint64_t std::__split_buffer<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::LabelMapTile::updateLabels(uint64_t *this, md::LabelManager *a2, md::LabelPool *a3, uint64_t a4, int a5)
{
  v5 = a4;
  v7 = this;
  v544[1] = *MEMORY[0x1E69E9840];
  v529 = a2;
  if (*(this + 552) == a4 && (*(this + 130) & 1) == 0 && (*(this + 132) & 1) == 0 && (*(this + 131) & 1) == 0 && (this[17] & 1) == 0 && !a5)
  {
    return;
  }

  v8 = *(a2 + 53);
  *(this + 552) = a4;
  v542[2] = 0;
  v541 = v542;
  v542[0] = 0;
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::swap(this + 52, &v541);
  v504 = v8;
  if (*(v8 + 424) > 0.0 && *(v8 + 28) == 1)
  {
    *buf = xmmword_1B33B0710;
    *&buf[16] = 0;
    *v536 = 0;
    __asm { FMOV            V2.2D, #0.5 }

    v530 = vmlaq_f64(v7[3], _Q2, vsubq_f64(v7[4], v7[3]));
    v543.__r_.__value_.__r.__words[0] = (*(*&v7->f64[0] + 16))(v7, &v530);
    v543.__r_.__value_.__l.__size_ = v13;
    v543.__r_.__value_.__r.__words[2] = v14;
    LOBYTE(__p[0]) = 0;
    BYTE4(__p[1]) = 0;
    v15.n128_u64[0] = 1.0;
    md::LabelLayoutContext::evaluateWorldPoint(v8, &v543, __p, 1, 0, buf, v15);
    if ((v536[0] & 1) == 0)
    {
      v16 = *buf & ~(*buf >> 31);
      if (v16 >= v5)
      {
        v16 = v5;
      }

      if (v16 >= 23)
      {
        v5 = 23;
      }

      else
      {
        v5 = v16;
      }
    }
  }

  v17 = (*(**(*(v529 + 21) + 64) + 8))(*(*(v529 + 21) + 64));
  if (v17)
  {
    v18 = v17[16] != v17[17] || v17[30] != v17[31];
    v511 = v18;
  }

  else
  {
    v511 = 0;
  }

  if (*(*(v529 + 29) + 28) == 1)
  {
    v506 = *(v529 + 3423);
  }

  else
  {
    v506 = 0;
  }

  v508 = v17;
  v503 = (*(**(*(v529 + 21) + 32) + 80))(*(*(v529 + 21) + 32));
  v505 = *(v8 + 1232);
  v7[6].f64[0] = 0.0;
  LODWORD(v7[6].f64[1]) = 0;
  f64 = v7[3].f64;
  v525 = v7 + 4;
  v20 = (v5 + 1);
  v21 = 176;
  v22 = v5;
  v517 = v7;
  v521 = a3;
  v524 = v7[3].f64;
  v515 = v5;
  do
  {
    v23 = *(v7->f64 + v21);
    if (!v23)
    {
      goto LABEL_475;
    }

    v507 = v21;
    v24 = *(v529 + 37);
    v25 = *(v23 + 70);
    v26 = v24[3];
    v513 = *(v7->f64 + v21);
    if (v25 != v26)
    {
      *(v23 + 70) = v26;
      v28 = v25 > v26 || v25 <= v24[4];
      __src = v28;
      memset(&v543, 0, sizeof(v543));
      std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::reserve(&v543, v23[8] + v23[28]);
      v29 = atomic_load((*v24 + 3428));
      v30 = v23[25];
      v31 = v23 + 26;
      if (v30 != v31)
      {
        do
        {
          v32 = v30[5];
          if (v32)
          {
            v33 = std::__shared_weak_count::lock(v32);
            if (v33)
            {
              v34 = v33;
              v35 = v30[4];
              if (v35)
              {
                if (v35[32] != v24[3])
                {
                  size = v543.__r_.__value_.__l.__size_;
                  if (v543.__r_.__value_.__l.__size_ >= v543.__r_.__value_.__r.__words[2])
                  {
                    v38 = 0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]) >> 3);
                    v39 = v38 + 1;
                    if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
LABEL_887:
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    if (0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) > v39)
                    {
                      v39 = 0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                    {
                      v40 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v40 = v39;
                    }

                    *v536 = v544;
                    if (v40)
                    {
                      v41 = mdm::zone_mallocator::instance(v33);
                      v42 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v41, v40);
                    }

                    else
                    {
                      v42 = 0;
                    }

                    v43 = &v42[24 * v38];
                    v44 = &v42[24 * v40];
                    *(v43 + 1) = 0;
                    *(v43 + 2) = 0;
                    *v43 = v35;
                    v37 = (v43 + 24);
                    v45 = &v43[-(v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0])];
                    memcpy(v45, v543.__r_.__value_.__l.__data_, v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]);
                    v46 = v543.__r_.__value_.__r.__words[0];
                    v47 = v543.__r_.__value_.__r.__words[2];
                    v543.__r_.__value_.__r.__words[0] = v45;
                    v543.__r_.__value_.__l.__size_ = v37;
                    v543.__r_.__value_.__r.__words[2] = v44;
                    *&buf[16] = v46;
                    v535 = v47;
                    *buf = v46;
                    *&buf[8] = v46;
                    std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                    a3 = v521;
                  }

                  else
                  {
                    *(v543.__r_.__value_.__l.__size_ + 8) = 0;
                    size[2] = 0;
                    v37 = (size + 3);
                    *size = v35;
                  }

                  v543.__r_.__value_.__l.__size_ = v37;
                }

                (*(*v35 + 544))(v35, v29);
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v34);
            }
          }

          v48 = v30[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v30[2];
              _ZF = *v49 == v30;
              v30 = v49;
            }

            while (!_ZF);
          }

          v30 = v49;
        }

        while (v49 != v31);
      }

      v50 = v513[5];
      if (v50 != v513 + 6)
      {
        do
        {
          v51 = v50[5];
          if (v51)
          {
            v52 = std::__shared_weak_count::lock(v51);
            if (v52)
            {
              v53 = v52;
              v54 = v50[4];
              if (v54 && *(v54 + 128) != v24[3])
              {
                v55 = v543.__r_.__value_.__l.__size_;
                if (v543.__r_.__value_.__l.__size_ >= v543.__r_.__value_.__r.__words[2])
                {
                  v57 = 0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]) >> 3);
                  v58 = v57 + 1;
                  if (v57 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) > v58)
                  {
                    v58 = 0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v59 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v59 = v58;
                  }

                  *v536 = v544;
                  if (v59)
                  {
                    v60 = mdm::zone_mallocator::instance(v52);
                    v61 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v60, v59);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v62 = &v61[24 * v57];
                  v63 = &v61[24 * v59];
                  *(v62 + 1) = 0;
                  *(v62 + 2) = 0;
                  *v62 = v54;
                  v56 = (v62 + 24);
                  v64 = &v62[-(v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0])];
                  memcpy(v64, v543.__r_.__value_.__l.__data_, v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]);
                  v65 = v543.__r_.__value_.__r.__words[0];
                  v66 = v543.__r_.__value_.__r.__words[2];
                  v543.__r_.__value_.__r.__words[0] = v64;
                  v543.__r_.__value_.__l.__size_ = v56;
                  v543.__r_.__value_.__r.__words[2] = v63;
                  *&buf[16] = v65;
                  v535 = v66;
                  *buf = v65;
                  *&buf[8] = v65;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v517;
                }

                else
                {
                  *(v543.__r_.__value_.__l.__size_ + 8) = 0;
                  v55[2] = 0;
                  v56 = (v55 + 3);
                  *v55 = v54;
                }

                v543.__r_.__value_.__l.__size_ = v56;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v53);
              a3 = v521;
            }
          }

          v67 = v50[1];
          if (v67)
          {
            do
            {
              v68 = v67;
              v67 = *v67;
            }

            while (v67);
          }

          else
          {
            do
            {
              v68 = v50[2];
              _ZF = *v68 == v50;
              v50 = v68;
            }

            while (!_ZF);
          }

          v50 = v68;
        }

        while (v68 != v513 + 6);
      }

      v69 = v513[17];
      if (v69 != v513 + 18)
      {
        do
        {
          v70 = v69[5];
          if (v70)
          {
            v71 = std::__shared_weak_count::lock(v70);
            if (v71)
            {
              v72 = v71;
              v73 = v69[4];
              if (v73 && *(v73 + 128) != v24[3])
              {
                v74 = v543.__r_.__value_.__l.__size_;
                if (v543.__r_.__value_.__l.__size_ >= v543.__r_.__value_.__r.__words[2])
                {
                  v76 = 0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]) >> 3);
                  v77 = v76 + 1;
                  if (v76 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) > v77)
                  {
                    v77 = 0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v78 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v78 = v77;
                  }

                  *v536 = v544;
                  if (v78)
                  {
                    v79 = mdm::zone_mallocator::instance(v71);
                    v80 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v79, v78);
                  }

                  else
                  {
                    v80 = 0;
                  }

                  v81 = &v80[24 * v76];
                  v82 = &v80[24 * v78];
                  *(v81 + 1) = 0;
                  *(v81 + 2) = 0;
                  *v81 = v73;
                  v75 = (v81 + 24);
                  v83 = &v81[-(v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0])];
                  memcpy(v83, v543.__r_.__value_.__l.__data_, v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]);
                  v84 = v543.__r_.__value_.__r.__words[0];
                  v85 = v543.__r_.__value_.__r.__words[2];
                  v543.__r_.__value_.__r.__words[0] = v83;
                  v543.__r_.__value_.__l.__size_ = v75;
                  v543.__r_.__value_.__r.__words[2] = v82;
                  *&buf[16] = v84;
                  v535 = v85;
                  *buf = v84;
                  *&buf[8] = v84;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v517;
                }

                else
                {
                  *(v543.__r_.__value_.__l.__size_ + 8) = 0;
                  v74[2] = 0;
                  v75 = (v74 + 3);
                  *v74 = v73;
                }

                v543.__r_.__value_.__l.__size_ = v75;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v72);
              a3 = v521;
            }
          }

          v86 = v69[1];
          if (v86)
          {
            do
            {
              v87 = v86;
              v86 = *v86;
            }

            while (v86);
          }

          else
          {
            do
            {
              v87 = v69[2];
              _ZF = *v87 == v69;
              v69 = v87;
            }

            while (!_ZF);
          }

          v69 = v87;
        }

        while (v87 != v513 + 18);
      }

      v88 = v513[29];
      if (v88 != v513 + 30)
      {
        do
        {
          v89 = v88[5];
          if (v89)
          {
            v90 = std::__shared_weak_count::lock(v89);
            if (v90)
            {
              v91 = v90;
              v92 = v88[4];
              if (v92 && *(v92 + 128) != v24[3])
              {
                v93 = v543.__r_.__value_.__l.__size_;
                if (v543.__r_.__value_.__l.__size_ >= v543.__r_.__value_.__r.__words[2])
                {
                  v95 = 0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]) >> 3);
                  v96 = v95 + 1;
                  if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) > v96)
                  {
                    v96 = 0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v97 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v97 = v96;
                  }

                  *v536 = v544;
                  if (v97)
                  {
                    v98 = mdm::zone_mallocator::instance(v90);
                    v99 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v98, v97);
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v100 = &v99[24 * v95];
                  v101 = &v99[24 * v97];
                  *(v100 + 1) = 0;
                  *(v100 + 2) = 0;
                  *v100 = v92;
                  v94 = (v100 + 24);
                  v102 = &v100[-(v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0])];
                  memcpy(v102, v543.__r_.__value_.__l.__data_, v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]);
                  v103 = v543.__r_.__value_.__r.__words[0];
                  v104 = v543.__r_.__value_.__r.__words[2];
                  v543.__r_.__value_.__r.__words[0] = v102;
                  v543.__r_.__value_.__l.__size_ = v94;
                  v543.__r_.__value_.__r.__words[2] = v101;
                  *&buf[16] = v103;
                  v535 = v104;
                  *buf = v103;
                  *&buf[8] = v103;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v517;
                }

                else
                {
                  *(v543.__r_.__value_.__l.__size_ + 8) = 0;
                  v93[2] = 0;
                  v94 = (v93 + 3);
                  *v93 = v92;
                }

                v543.__r_.__value_.__l.__size_ = v94;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v91);
              a3 = v521;
            }
          }

          v105 = v88[1];
          if (v105)
          {
            do
            {
              v106 = v105;
              v105 = *v105;
            }

            while (v105);
          }

          else
          {
            do
            {
              v106 = v88[2];
              _ZF = *v106 == v88;
              v88 = v106;
            }

            while (!_ZF);
          }

          v88 = v106;
        }

        while (v106 != v513 + 30);
      }

      v107 = v513[13];
      if (v107 != v513 + 14)
      {
        do
        {
          v108 = v107[5];
          if (v108)
          {
            v109 = std::__shared_weak_count::lock(v108);
            if (v109)
            {
              v110 = v109;
              v111 = v107[4];
              if (v111 && *(v111 + 128) != v24[3])
              {
                v112 = v543.__r_.__value_.__l.__size_;
                if (v543.__r_.__value_.__l.__size_ >= v543.__r_.__value_.__r.__words[2])
                {
                  v114 = 0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]) >> 3);
                  v115 = v114 + 1;
                  if (v114 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) > v115)
                  {
                    v115 = 0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v116 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v116 = v115;
                  }

                  *v536 = v544;
                  if (v116)
                  {
                    v117 = mdm::zone_mallocator::instance(v109);
                    v118 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v117, v116);
                  }

                  else
                  {
                    v118 = 0;
                  }

                  v119 = &v118[24 * v114];
                  v120 = &v118[24 * v116];
                  *(v119 + 1) = 0;
                  *(v119 + 2) = 0;
                  *v119 = v111;
                  v113 = (v119 + 24);
                  v121 = &v119[-(v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0])];
                  memcpy(v121, v543.__r_.__value_.__l.__data_, v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]);
                  v122 = v543.__r_.__value_.__r.__words[0];
                  v123 = v543.__r_.__value_.__r.__words[2];
                  v543.__r_.__value_.__r.__words[0] = v121;
                  v543.__r_.__value_.__l.__size_ = v113;
                  v543.__r_.__value_.__r.__words[2] = v120;
                  *&buf[16] = v122;
                  v535 = v123;
                  *buf = v122;
                  *&buf[8] = v122;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v517;
                }

                else
                {
                  *(v543.__r_.__value_.__l.__size_ + 8) = 0;
                  v112[2] = 0;
                  v113 = (v112 + 3);
                  *v112 = v111;
                }

                v543.__r_.__value_.__l.__size_ = v113;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v110);
              a3 = v521;
            }
          }

          v124 = v107[1];
          if (v124)
          {
            do
            {
              v125 = v124;
              v124 = *v124;
            }

            while (v124);
          }

          else
          {
            do
            {
              v125 = v107[2];
              _ZF = *v125 == v107;
              v107 = v125;
            }

            while (!_ZF);
          }

          v107 = v125;
        }

        while (v125 != v513 + 14);
      }

      v126 = v513[21];
      if (v126 != v513 + 22)
      {
        do
        {
          v127 = v126[5];
          if (v127)
          {
            v128 = std::__shared_weak_count::lock(v127);
            if (v128)
            {
              v129 = v128;
              v130 = v126[4];
              if (v130 && *(v130 + 128) != v24[3])
              {
                v131 = v543.__r_.__value_.__l.__size_;
                if (v543.__r_.__value_.__l.__size_ >= v543.__r_.__value_.__r.__words[2])
                {
                  v133 = 0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]) >> 3);
                  v134 = v133 + 1;
                  if (v133 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_887;
                  }

                  if (0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) > v134)
                  {
                    v134 = 0x5555555555555556 * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v543.__r_.__value_.__r.__words[2] - v543.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
                  {
                    v135 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v135 = v134;
                  }

                  *v536 = v544;
                  if (v135)
                  {
                    v136 = mdm::zone_mallocator::instance(v128);
                    v137 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(v136, v135);
                  }

                  else
                  {
                    v137 = 0;
                  }

                  v138 = &v137[24 * v133];
                  v139 = &v137[24 * v135];
                  *(v138 + 1) = 0;
                  *(v138 + 2) = 0;
                  *v138 = v130;
                  v132 = (v138 + 24);
                  v140 = &v138[-(v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0])];
                  memcpy(v140, v543.__r_.__value_.__l.__data_, v543.__r_.__value_.__l.__size_ - v543.__r_.__value_.__r.__words[0]);
                  v141 = v543.__r_.__value_.__r.__words[0];
                  v142 = v543.__r_.__value_.__r.__words[2];
                  v543.__r_.__value_.__r.__words[0] = v140;
                  v543.__r_.__value_.__l.__size_ = v132;
                  v543.__r_.__value_.__r.__words[2] = v139;
                  *&buf[16] = v141;
                  v535 = v142;
                  *buf = v141;
                  *&buf[8] = v141;
                  std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(buf);
                  v7 = v517;
                }

                else
                {
                  *(v543.__r_.__value_.__l.__size_ + 8) = 0;
                  v131[2] = 0;
                  v132 = (v131 + 3);
                  *v131 = v130;
                }

                v543.__r_.__value_.__l.__size_ = v132;
              }

              std::__shared_weak_count::__release_shared[abi:nn200100](v129);
              a3 = v521;
            }
          }

          v143 = v126[1];
          if (v143)
          {
            do
            {
              v144 = v143;
              v143 = *v143;
            }

            while (v143);
          }

          else
          {
            do
            {
              v144 = v126[2];
              _ZF = *v144 == v126;
              v126 = v144;
            }

            while (!_ZF);
          }

          v126 = v144;
        }

        while (v144 != v513 + 22);
      }

      md::LabelFeatureStyler::styleLabelFeatures(v24, &v543, __src, 0, *(*(*v24 + 152) + 64));
      std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v543);
      v5 = v515;
      v23 = v513;
    }

    v145 = v23[3];
    v147 = *v145;
    v146 = v145[1];
    if (v146)
    {
      atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v516 = v146;
    v148 = v23[25];
    __srca = v23 + 26;
    if (v148 != v23 + 26)
    {
      do
      {
        v149 = v148[5];
        if (v149)
        {
          v150 = std::__shared_weak_count::lock(v149);
          if (v150)
          {
            v151 = v148[4];
            if (v151)
            {
              if (!v511 || (v152 = (*(*v151 + 160))(v148[4]), !std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v508 + 20, v152)))
              {
                if (*(*(*v151 + 568))(v151, 0, 0, 0, 0))
                {
                  md::PointLabelFeature::updatePositions(v151);
                  v153 = (*(*v151 + 160))(v151);
                  if (md::DebugStreamingPOIFeatureID && md::DebugStreamingPOIFeatureID == v153)
                  {
                    if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
                    {
                      dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
                    }

                    v154 = GEOGetVectorKitStreamingPOILog_log;
                    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
                    {
                      md::HighlightHelper::debugTileToString(&v543, &v7->f64[1]);
                      v155 = SHIBYTE(v543.__r_.__value_.__r.__words[2]);
                      v156 = v543.__r_.__value_.__r.__words[0];
                      md::HighlightHelper::debugTileToString(__p, (v513 + 36));
                      v157 = &v543;
                      if (v155 < 0)
                      {
                        v157 = v156;
                      }

                      v158 = __p;
                      if (v533.i8[7] < 0)
                      {
                        v158 = __p[0];
                      }

                      v160 = v151[51];
                      v159 = v151[52];
                      *buf = 136316418;
                      *&buf[4] = v157;
                      *&buf[12] = 2080;
                      *&buf[14] = v158;
                      *&buf[22] = 2048;
                      v535 = v513;
                      *v536 = 2048;
                      *&v536[2] = v147;
                      v537 = 2048;
                      v538 = v159;
                      v539 = 2048;
                      v540 = v160;
                      _os_log_impl(&dword_1B2754000, v154, OS_LOG_TYPE_DEBUG, "Add MapTileFeature, mapTile=(%s), labelTile=(%s)[%p] geoTile[%p] removeVersion=%llu, updateVersion=%llu", buf, 0x3Eu);
                      v23 = v513;
                      if (v533.i8[7] < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (SHIBYTE(v543.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v543.__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  if (v151[52] <= v151[51] && (*(v151 + 687) & v506 & 1) == 0)
                  {
                    if (!v505 || !(*(*v151 + 376))(v151) || !(*(*v151 + 392))(v151) || (v161 = (*(*v151 + 384))(v151), v162 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v505, v161), v162 == (*(*v151 + 408))(v151)))
                    {
                      v163 = v151[54];
                      if (v163 == v151 + 55)
                      {
                        v5 = v515;
                        v23 = v513;
                      }

                      else
                      {
                        do
                        {
                          if ((*(v151 + 141) & 1) != 0 || ((v172 = atomic_load(v151 + 693), v173 = *(v163 + v172 + 30), v173 < 254.0) ? (v174 = v173 < v20) : (v174 = 1), v174 && ((v175 = *(v163 + 34), v175 < 254.0) ? (v176 = v175 <= v22) : (v176 = 0), !v176)))
                          {
                            v165 = v163[5];
                            v164 = v163[6];
                            if (v516)
                            {
                              atomic_fetch_add_explicit(&v516->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            if (v165 == v164)
                            {
                              v170 = 0;
                            }

                            else
                            {
                              v166 = v165 + 8;
                              do
                              {
                                v167 = *(v166 - 8);
                                if (v167)
                                {
                                  v168 = v167 + 8;
                                }

                                else
                                {
                                  v168 = 0;
                                }

                                v169 = *(v168 + 8);
                                v170 = v169 == v147;
                                _ZF = v169 == v147 || v166 == v164;
                                v166 += 8;
                              }

                              while (!_ZF);
                            }

                            if (v516)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v516);
                            }

                            if (v170)
                            {
                              if (LOBYTE(v7->f64[1]) == 255)
                              {
                                v180 = (*(*v151 + 112))(v151, v163 + 4);
                                v181 = md::LabelPoint::mercatorPoint(v180);
                                v182 = 0;
                                v183 = 1;
                                while (1)
                                {
                                  v184 = v183;
                                  v185 = *(v181 + 8 * v182);
                                  if (v185 < v524[v182] || v185 > v525->f64[v182])
                                  {
                                    break;
                                  }

                                  v183 = 0;
                                  v182 = 1;
                                  if ((v184 & 1) == 0)
                                  {
                                    goto LABEL_243;
                                  }
                                }
                              }

                              else
                              {
LABEL_243:
                                v543.__r_.__value_.__r.__words[0] = v151;
                                v543.__r_.__value_.__l.__size_ = v150;
                                atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
                                md::LabelPool::labelForFeature(buf, a3, v529, &v543, v163 + 8, 1);
                                std::__shared_weak_count::__release_shared[abi:nn200100](v150);
                                v177 = *buf;
                                if (*buf)
                                {
                                  md::LabelMapTile::addLabel(v7, buf);
                                  atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
                                  md::Label::update(v177, v529, v7);
                                  std::__shared_weak_count::__release_shared[abi:nn200100](v150);
                                }

                                if (*&buf[8])
                                {
                                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                                }
                              }
                            }
                          }

                          v178 = v163[1];
                          if (v178)
                          {
                            do
                            {
                              v179 = v178;
                              v178 = *v178;
                            }

                            while (v178);
                          }

                          else
                          {
                            do
                            {
                              v179 = v163[2];
                              _ZF = *v179 == v163;
                              v163 = v179;
                            }

                            while (!_ZF);
                          }

                          v163 = v179;
                        }

                        while (v179 != v151 + 55);
                        v5 = v515;
                        v23 = v513;
                      }
                    }
                  }
                }

                else
                {
                  ++HIDWORD(v7[6].f64[0]);
                }
              }

LABEL_261:
              std::__shared_weak_count::__release_shared[abi:nn200100](v150);
              goto LABEL_262;
            }
          }
        }

        else
        {
          v150 = 0;
        }

        ++LODWORD(v7[6].f64[0]);
        if (v150)
        {
          goto LABEL_261;
        }

LABEL_262:
        v186 = v148[1];
        if (v186)
        {
          do
          {
            v187 = v186;
            v186 = *v186;
          }

          while (v186);
        }

        else
        {
          do
          {
            v187 = v148[2];
            _ZF = *v187 == v148;
            v148 = v187;
          }

          while (!_ZF);
        }

        v148 = v187;
      }

      while (v187 != __srca);
    }

    v188 = v23;
    v189 = v23[5];
    v190 = v188 + 6;
    if (v189 != v188 + 6)
    {
      __srcb = 0;
      f64 = v524;
      while (1)
      {
        v191 = v189[5];
        if (!v191)
        {
          v192 = 0;
          goto LABEL_282;
        }

        v192 = std::__shared_weak_count::lock(v191);
        if (!v192)
        {
          goto LABEL_282;
        }

        v193 = v189[4];
        if (!v193)
        {
          f64 = v524;
LABEL_282:
          ++LODWORD(v7[6].f64[0]);
          if (!v192)
          {
            goto LABEL_297;
          }

          goto LABEL_296;
        }

        if (*(*(*v193 + 568))(v189[4], 0, 0, 0, 0))
        {
          if ((*(v193 + 141) & 1) != 0 || v5 >= *(v193 + 136))
          {
            md::LineLabelFeature::updatePositions(v193, v529, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v193 + 192), v524, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v194 = *&buf[8];
            v195 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              f64 = v524;
              v5 = v515;
            }

            else
            {
              do
              {
                v543.__r_.__value_.__r.__words[0] = v193;
                v543.__r_.__value_.__l.__size_ = v192;
                atomic_fetch_add_explicit(&v192->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v529, &v543, v195, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v192);
                v196 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v192->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v196, v529, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v192);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v195;
              }

              while (v195 != v194);
              f64 = v524;
              v5 = v515;
            }

            goto LABEL_296;
          }

          ++LODWORD(v7[6].f64[1]);
        }

        else
        {
          ++HIDWORD(v7[6].f64[0]);
        }

        f64 = v524;
LABEL_296:
        std::__shared_weak_count::__release_shared[abi:nn200100](v192);
LABEL_297:
        v197 = v189[1];
        if (v197)
        {
          do
          {
            v198 = v197;
            v197 = *v197;
          }

          while (v197);
        }

        else
        {
          do
          {
            v198 = v189[2];
            _ZF = *v198 == v189;
            v189 = v198;
          }

          while (!_ZF);
        }

        v189 = v198;
        if (v198 == v190)
        {
          goto LABEL_305;
        }
      }
    }

    __srcb = 0;
    f64 = v524;
LABEL_305:
    v199 = v513[17];
    if (v199 != v513 + 18)
    {
      do
      {
        v200 = v199[5];
        if (!v200)
        {
          v201 = 0;
          goto LABEL_315;
        }

        v201 = std::__shared_weak_count::lock(v200);
        if (!v201)
        {
          goto LABEL_315;
        }

        v202 = v199[4];
        if (!v202)
        {
          f64 = v524;
LABEL_315:
          ++LODWORD(v7[6].f64[0]);
          if (!v201)
          {
            goto LABEL_330;
          }

          goto LABEL_329;
        }

        if (*(*(*v202 + 568))(v199[4], 0, 0, 0, 0))
        {
          if ((*(v202 + 141) & 1) != 0 || v5 >= *(v202 + 136))
          {
            md::LineLabelFeature::updatePositions(v202, v529, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v202 + 192), v524, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v203 = *&buf[8];
            v204 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              f64 = v524;
              v5 = v515;
            }

            else
            {
              do
              {
                v543.__r_.__value_.__r.__words[0] = v202;
                v543.__r_.__value_.__l.__size_ = v201;
                atomic_fetch_add_explicit(&v201->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v529, &v543, v204, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v201);
                v205 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v201->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v205, v529, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v201);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v204;
              }

              while (v204 != v203);
              f64 = v524;
              v5 = v515;
            }

            goto LABEL_329;
          }

          ++LODWORD(v7[6].f64[1]);
        }

        else
        {
          ++HIDWORD(v7[6].f64[0]);
        }

        f64 = v524;
LABEL_329:
        std::__shared_weak_count::__release_shared[abi:nn200100](v201);
LABEL_330:
        v206 = v199[1];
        if (v206)
        {
          do
          {
            v207 = v206;
            v206 = *v206;
          }

          while (v206);
        }

        else
        {
          do
          {
            v207 = v199[2];
            _ZF = *v207 == v199;
            v199 = v207;
          }

          while (!_ZF);
        }

        v199 = v207;
      }

      while (v207 != v513 + 18);
    }

    v208 = v513[29];
    if (v208 != v513 + 30)
    {
      do
      {
        v209 = v208[5];
        if (!v209)
        {
          v210 = 0;
          goto LABEL_346;
        }

        v210 = std::__shared_weak_count::lock(v209);
        if (!v210)
        {
          goto LABEL_346;
        }

        v211 = v208[4];
        if (!v211)
        {
          f64 = v524;
LABEL_346:
          ++LODWORD(v7[6].f64[0]);
          if (!v210)
          {
            goto LABEL_361;
          }

          goto LABEL_360;
        }

        if (*(*(*v211 + 568))(v208[4], 0, 0, 0, 0))
        {
          if ((*(v211 + 141) & 1) != 0 || v5 >= *(v211 + 136))
          {
            md::LineLabelFeature::updatePositions(v211, v529, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v211 + 192), v524, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v212 = *&buf[8];
            v213 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              f64 = v524;
              v5 = v515;
            }

            else
            {
              do
              {
                v543.__r_.__value_.__r.__words[0] = v211;
                v543.__r_.__value_.__l.__size_ = v210;
                atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v529, &v543, v213, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v210);
                v214 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v214, v529, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v210);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v213;
              }

              while (v213 != v212);
              f64 = v524;
              v5 = v515;
            }

            goto LABEL_360;
          }

          ++LODWORD(v7[6].f64[1]);
        }

        else
        {
          ++HIDWORD(v7[6].f64[0]);
        }

        f64 = v524;
LABEL_360:
        std::__shared_weak_count::__release_shared[abi:nn200100](v210);
LABEL_361:
        v215 = v208[1];
        if (v215)
        {
          do
          {
            v216 = v215;
            v215 = *v215;
          }

          while (v215);
        }

        else
        {
          do
          {
            v216 = v208[2];
            _ZF = *v216 == v208;
            v208 = v216;
          }

          while (!_ZF);
        }

        v208 = v216;
      }

      while (v216 != v513 + 30);
    }

    v217 = v513[13];
    if (v217 != v513 + 14)
    {
      do
      {
        v218 = v217[5];
        if (!v218)
        {
          v219 = 0;
          goto LABEL_377;
        }

        v219 = std::__shared_weak_count::lock(v218);
        if (!v219)
        {
          goto LABEL_377;
        }

        v220 = v217[4];
        if (!v220)
        {
          f64 = v524;
LABEL_377:
          ++LODWORD(v7[6].f64[0]);
          if (!v219)
          {
            goto LABEL_392;
          }

          goto LABEL_391;
        }

        if (*(*(*v220 + 568))(v217[4], 0, 0, 0, 0))
        {
          if ((*(v220 + 141) & 1) != 0 || v5 >= *(v220 + 136))
          {
            md::LineLabelFeature::updatePositions(v220, v529, v5, v7);
            md::LineLabelPlacer::placementsForRect(buf, (v220 + 192), v524, v5);
            if (__srcb)
            {
              operator delete(__srcb);
            }

            v221 = *&buf[8];
            v222 = *buf;
            __srcb = *buf;
            if (*buf == *&buf[8])
            {
              f64 = v524;
              v5 = v515;
            }

            else
            {
              do
              {
                v543.__r_.__value_.__r.__words[0] = v220;
                v543.__r_.__value_.__l.__size_ = v219;
                atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
                md::LabelPool::labelForFeature(buf, a3, v529, &v543, v222, 1);
                std::__shared_weak_count::__release_shared[abi:nn200100](v219);
                v223 = *buf;
                if (*buf)
                {
                  md::LabelMapTile::addLabel(v7, buf);
                  atomic_fetch_add_explicit(&v219->__shared_owners_, 1uLL, memory_order_relaxed);
                  md::Label::update(v223, v529, v7);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v219);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
                }

                ++v222;
              }

              while (v222 != v221);
              f64 = v524;
              v5 = v515;
            }

            goto LABEL_391;
          }

          ++LODWORD(v7[6].f64[1]);
        }

        else
        {
          ++HIDWORD(v7[6].f64[0]);
        }

        f64 = v524;
LABEL_391:
        std::__shared_weak_count::__release_shared[abi:nn200100](v219);
LABEL_392:
        v224 = v217[1];
        if (v224)
        {
          do
          {
            v225 = v224;
            v224 = *v224;
          }

          while (v224);
        }

        else
        {
          do
          {
            v225 = v217[2];
            _ZF = *v225 == v217;
            v217 = v225;
          }

          while (!_ZF);
        }

        v217 = v225;
      }

      while (v225 != v513 + 14);
    }

    v226 = v513[21];
    v227 = v513 + 22;
    _ZF = v226 == v513 + 22;
    v514 = v513 + 22;
    if (!_ZF)
    {
      while (1)
      {
        v228 = v226[5];
        if (!v228)
        {
          v229 = 0;
          goto LABEL_408;
        }

        v229 = std::__shared_weak_count::lock(v228);
        if (!v229)
        {
          goto LABEL_408;
        }

        v230 = v226[4];
        if (!v230)
        {
          f64 = v524;
LABEL_408:
          ++LODWORD(v7[6].f64[0]);
          if (!v229)
          {
            goto LABEL_465;
          }

          goto LABEL_464;
        }

        if (!*(*(*v230 + 568))(v226[4], 0, 0, 0, 0))
        {
          ++HIDWORD(v7[6].f64[0]);
          goto LABEL_462;
        }

        if ((v230[141] & 1) != 0 || v5 >= v230[136])
        {
          break;
        }

        ++LODWORD(v7[6].f64[1]);
LABEL_462:
        f64 = v524;
LABEL_464:
        std::__shared_weak_count::__release_shared[abi:nn200100](v229);
LABEL_465:
        v262 = v226[1];
        if (v262)
        {
          do
          {
            v263 = v262;
            v262 = *v262;
          }

          while (v262);
        }

        else
        {
          do
          {
            v263 = v226[2];
            _ZF = *v263 == v226;
            v226 = v263;
          }

          while (!_ZF);
        }

        v226 = v263;
        if (v263 == v227)
        {
          goto LABEL_471;
        }
      }

      md::LineLabelFeature::updatePositions(v230, v529, v5, v7);
      v231 = atomic_load(v230 + 672);
      if ((v231 & 1) == 0)
      {
LABEL_452:
        md::LineLabelPlacer::placementsForRect(buf, v230 + 24, v524, v5);
        if (__srcb)
        {
          operator delete(__srcb);
        }

        v259 = *&buf[8];
        v260 = *buf;
        __srcb = *buf;
        if (*buf == *&buf[8])
        {
          f64 = v524;
          v227 = v514;
        }

        else
        {
          do
          {
            v543.__r_.__value_.__r.__words[0] = v230;
            v543.__r_.__value_.__l.__size_ = v229;
            atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
            md::LabelPool::labelForFeature(buf, a3, v529, &v543, v260, 1);
            std::__shared_weak_count::__release_shared[abi:nn200100](v229);
            v261 = *buf;
            if (*buf)
            {
              md::LabelMapTile::addLabel(v7, buf);
              atomic_fetch_add_explicit(&v229->__shared_owners_, 1uLL, memory_order_relaxed);
              md::Label::update(v261, v529, v7);
              std::__shared_weak_count::__release_shared[abi:nn200100](v229);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
            }

            ++v260;
          }

          while (v260 != v259);
          f64 = v524;
          v227 = v514;
        }

        goto LABEL_464;
      }

      memset(buf, 0, sizeof(buf));
      std::mutex::lock((v230 + 608));
      v512 = *(v230 + 680);
      *(v230 + 85) = 0;
      *buf = v512;
      *&buf[16] = *(v230 + 87);
      *(v230 + 43) = 0u;
      atomic_store(0, v230 + 672);
      std::mutex::unlock((v230 + 608));
      v232 = v512;
      if (v512 == *(&v512 + 1))
      {
LABEL_451:
        v543.__r_.__value_.__r.__words[0] = buf;
        std::vector<md::TransitLineLabelFeature::WorkUnit,geo::allocator_adapter<md::TransitLineLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v543);
        v7 = v517;
        a3 = v521;
        v5 = v515;
        goto LABEL_452;
      }

      v233 = (v230 + 576);
      while (1)
      {
        v234 = *v232;
        if (v234 != 2)
        {
          if (v234 == 1)
          {
            md::TransitLineLabelFeature::addTransitLink(v230, *(v232 + 1));
          }

          goto LABEL_450;
        }

        v235 = *(v230 + 63);
        if (v235 != *(v230 + 64))
        {
          break;
        }

LABEL_450:
        v232 += 32;
        if (v232 == *(&v512 + 1))
        {
          goto LABEL_451;
        }
      }

      while (1)
      {
        v236 = (*v235)[1];
        v237 = v236[1];
        if (v237)
        {
          v238 = std::__shared_weak_count::lock(v237);
          v239 = *(v232 + 2);
          if (v238)
          {
            v240 = *v236;
            std::__shared_weak_count::__release_shared[abi:nn200100](v238);
            if (v240 == v239)
            {
              goto LABEL_420;
            }

            goto LABEL_448;
          }
        }

        else
        {
          v239 = *(v232 + 2);
        }

        if (!v239)
        {
LABEL_420:
          v241 = *v233;
          if (*v233)
          {
            v242 = (*v235)[1];
            v243 = (v230 + 576);
            v244 = *v233;
            do
            {
              v245 = v244[4];
              _CF = v245 >= v242;
              v246 = v245 < v242;
              if (_CF)
              {
                v243 = v244;
              }

              v244 = v244[v246];
            }

            while (v244);
            if (v243 != v233 && v242 >= v243[4])
            {
              v247 = v243[1];
              v248 = v243;
              if (v247)
              {
                do
                {
                  v249 = v247;
                  v247 = *v247;
                }

                while (v247);
              }

              else
              {
                do
                {
                  v249 = v248[2];
                  _ZF = *v249 == v248;
                  v248 = v249;
                }

                while (!_ZF);
              }

              if (*(v230 + 71) == v243)
              {
                *(v230 + 71) = v249;
              }

              --*(v230 + 74);
              v250 = std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v241, v243);
              v251 = mdm::zone_mallocator::instance(v250);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<GeoCodecsTransitLink const*,md::TransitLineLabelFeature::LabelTransitLink *>,void *>>(v251, v243);
            }
          }

          v252 = *(v230 + 64);
          v253 = v235;
          if (v235 + 1 != v252)
          {
            do
            {
              v254 = v253;
              v255 = *v253;
              if (*v253)
              {
                _ZF = (*v255)-- == 1;
                if (_ZF)
                {
                  std::vector<md::TransitLineLabelFeature::LabelTransitLineSegment,geo::allocator_adapter<md::TransitLineLabelFeature::LabelTransitLineSegment,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v255 + 2));
                  v256 = *v253;
                  v258 = mdm::zone_mallocator::instance(v257);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::_fast_shared_ptr_control>(v258, v256);
                  *v254 = 0;
                }
              }

              v253 = (v254 + 1);
              *v254 = v254[1];
              v254[1] = 0;
            }

            while (v254 + 2 != v252);
            v252 = *(v230 + 64);
          }

          while (v252 != v253)
          {
            geo::fast_shared_ptr<md::TransitLineLabelFeature::LabelTransitLink,mdm::allocator>::~fast_shared_ptr(--v252);
          }

          *(v230 + 64) = v253;
          goto LABEL_449;
        }

LABEL_448:
        ++v235;
        v253 = *(v230 + 64);
LABEL_449:
        if (v235 == v253)
        {
          goto LABEL_450;
        }
      }
    }

LABEL_471:
    if (__srcb)
    {
      operator delete(__srcb);
    }

    v21 = v507;
    if (v516)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v516);
    }

LABEL_475:
    v21 += 16;
  }

  while (v21 != 336);
  v528[0] = v7;
  v528[1] = &v529;
  v528[2] = a3;
  v264 = v7[21].f64[0];
  if (v264 != 0.0)
  {
    v265 = *(v529 + 3022);
    if ((v265 & 1) != 0 || *(v529 + 3023) == 1)
    {
      v267 = *(*&v264 + 176);
      v266 = *(*&v264 + 184);
      while (v267 != v266)
      {
        if ((v265 & 1) != 0 || *(*v267 + 353) == 1)
        {
          md::LabelMapTile::updateLabels(md::LabelManager *,md::LabelPool &,int,BOOL)::$_0::operator()(v528, v267);
        }

        v267 += 2;
      }
    }
  }

  if ((*(**(*(v529 + 21) + 48) + 24))(*(*(v529 + 21) + 48)))
  {
    v268 = (*(**(*(v529 + 21) + 48) + 24))(*(*(v529 + 21) + 48));
    v270 = *v268;
    v269 = *(v268 + 8);
    while (v270 != v269)
    {
      md::LabelMapTile::updateLabels(md::LabelManager *,md::LabelPool &,int,BOOL)::$_0::operator()(v528, v270);
      v270 += 2;
    }
  }

  v271 = v529;
  memset(buf, 0, sizeof(buf));
  v272 = (*(**(*(v529 + 21) + 40) + 16))(*(*(v529 + 21) + 40));
  if (v272)
  {
    v273 = *v272;
    v274 = *(v272 + 8);
    if (*v272 != v274)
    {
      do
      {
        if (*(*(**v273 + 568))(*v273, 0, 0, 0, 0))
        {
          v275 = *v273;
          if (!*(*v273 + 72))
          {
            *(v275 + 72) = atomic_fetch_add((*(v271 + 36) + 680), 1uLL) + 1;
            v275 = *v273;
          }

          md::PointLabelFeature::updatePositions(v275);
          v276 = *(*v273 + 432);
          v277 = *v273 + 440;
          if (v276 != v277)
          {
            do
            {
              v278 = (*(**v273 + 112))(*v273, v276 + 4);
              v279 = md::LabelPoint::mercatorPoint(v278);
              v280 = 0;
              v281 = 1;
              while (1)
              {
                v282 = *(v279 + 8 * v280);
                if (v282 < f64[v280])
                {
                  break;
                }

                v283 = v281;
                if (v282 > v525->f64[v280])
                {
                  break;
                }

                v281 = 0;
                v280 = 1;
                if ((v283 & 1) == 0)
                {
                  v284 = v273[1];
                  __p[0] = *v273;
                  __p[1] = v284;
                  if (v284)
                  {
                    atomic_fetch_add_explicit(&v284->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  md::LabelPool::labelForFeature(&v543, v521, v271, __p, v276 + 8, 1);
                  if (v284)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v284);
                  }

                  v285 = v543.__r_.__value_.__r.__words[0];
                  if (v543.__r_.__value_.__r.__words[0])
                  {
                    md::LabelMapTile::addLabel(v517, &v543);
                    v286 = v273[1];
                    if (v286)
                    {
                      atomic_fetch_add_explicit(&v286->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    md::Label::update(v285, v271, v517);
                    if (v286)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v286);
                    }
                  }

                  if (v543.__r_.__value_.__l.__size_)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v543.__r_.__value_.__l.__size_);
                  }

                  break;
                }
              }

              v287 = *(v276 + 1);
              if (v287)
              {
                do
                {
                  v288 = v287;
                  v287 = *v287;
                }

                while (v287);
              }

              else
              {
                do
                {
                  v288 = *(v276 + 2);
                  _ZF = *v288 == v276;
                  v276 = v288;
                }

                while (!_ZF);
              }

              v276 = v288;
            }

            while (v288 != v277);
          }
        }

        else
        {
          ++*(v517 + 25);
        }

        v273 += 2;
      }

      while (v273 != v274);
    }
  }

  v289 = (*(**(*(v271 + 21) + 40) + 24))(*(*(v271 + 21) + 40));
  if (v289)
  {
    v291 = *v289;
    v290 = *(v289 + 8);
    if (*v289 != v290)
    {
      v292 = *buf;
      do
      {
        *&buf[8] = v292;
        if (*(*(**v291 + 568))(*v291, 0, 0, 0, 0))
        {
          v293 = *v291;
          if (!*(*v291 + 72))
          {
            v293[9] = atomic_fetch_add((*(v271 + 36) + 680), 1uLL) + 1;
            v293 = *v291;
          }

          v294 = v293[41];
          v295 = v293 + 42;
          if (v294 != v293 + 42)
          {
            do
            {
              v296 = md::LabelPoint::mercatorPoint((v294[5] + 48));
              v297 = 0;
              v298 = 1;
              while (1)
              {
                v299 = v298;
                v300 = *(v296 + 8 * v297);
                if (v300 < v524[v297] || v300 > v525->f64[v297])
                {
                  break;
                }

                v298 = 0;
                v297 = 1;
                if ((v299 & 1) == 0)
                {
                  v301 = *&buf[8];
                  if (*&buf[8] >= *&buf[16])
                  {
                    v302 = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(buf, v294 + 8);
                  }

                  else
                  {
                    **&buf[8] = *(v294 + 8);
                    v302 = (v301 + 4);
                  }

                  *&buf[8] = v302;
                  break;
                }
              }

              v303 = v294[1];
              if (v303)
              {
                do
                {
                  v304 = v303;
                  v303 = *v303;
                }

                while (v303);
              }

              else
              {
                do
                {
                  v304 = v294[2];
                  _ZF = *v304 == v294;
                  v294 = v304;
                }

                while (!_ZF);
              }

              v294 = v304;
            }

            while (v304 != v295);
          }

          v292 = *buf;
          v305 = *&buf[8];
          if (*buf != *&buf[8])
          {
            v306 = *buf;
            do
            {
              v307 = v291[1];
              __p[0] = *v291;
              __p[1] = v307;
              if (v307)
              {
                atomic_fetch_add_explicit(&v307->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              md::LabelPool::labelForFeature(&v543, v521, v271, __p, v306, 1);
              if (v307)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v307);
              }

              v308 = v543.__r_.__value_.__r.__words[0];
              if (v543.__r_.__value_.__r.__words[0])
              {
                md::LabelMapTile::addLabel(v517, &v543);
                v309 = v291[1];
                if (v309)
                {
                  atomic_fetch_add_explicit(&v309->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::Label::update(v308, v271, v517);
                if (v309)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v309);
                }
              }

              if (v543.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v543.__r_.__value_.__l.__size_);
              }

              ++v306;
            }

            while (v306 != v305);
          }
        }

        else
        {
          ++*(v517 + 25);
        }

        v291 += 2;
      }

      while (v291 != v290);
    }
  }

  v310 = (*(**(*(v271 + 21) + 40) + 32))(*(*(v271 + 21) + 40));
  v311 = v524;
  if (v310)
  {
    v313 = *v310;
    v312 = *(v310 + 8);
    if (*v310 != v312)
    {
      v314 = *buf;
      do
      {
        *&buf[8] = v314;
        if (*(*(**v313 + 568))(*v313, 0, 0, 0, 0))
        {
          v315 = *v313;
          if (!*(*v313 + 72))
          {
            v315[9] = atomic_fetch_add((*(v271 + 36) + 680), 1uLL) + 1;
            v315 = *v313;
          }

          v316 = v315[33];
          v317 = v315[34];
          while (v316 != v317)
          {
            v318 = md::LabelPoint::mercatorPoint((v316 + 2));
            v319 = 0;
            v320 = 1;
            while (1)
            {
              v321 = *(v318 + 8 * v319);
              if (v321 < v311[v319])
              {
                break;
              }

              v322 = v320;
              if (v321 > v525->f64[v319])
              {
                break;
              }

              v320 = 0;
              v319 = 1;
              if ((v322 & 1) == 0)
              {
                v323 = *&buf[8];
                if (*&buf[8] >= *&buf[16])
                {
                  v324 = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(buf, v316);
                }

                else
                {
                  **&buf[8] = *v316;
                  v324 = (v323 + 4);
                }

                *&buf[8] = v324;
                break;
              }
            }

            v316 += 40;
          }

          v314 = *buf;
          v325 = *&buf[8];
          if (*buf != *&buf[8])
          {
            v326 = *buf;
            do
            {
              v327 = v313[1];
              __p[0] = *v313;
              __p[1] = v327;
              if (v327)
              {
                atomic_fetch_add_explicit(&v327->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              md::LabelPool::labelForFeature(&v543, v521, v271, __p, v326, 1);
              if (v327)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v327);
              }

              v328 = v543.__r_.__value_.__r.__words[0];
              if (v543.__r_.__value_.__r.__words[0])
              {
                md::LabelMapTile::addLabel(v517, &v543);
                v329 = v313[1];
                if (v329)
                {
                  atomic_fetch_add_explicit(&v329->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::Label::update(v328, v271, v517);
                if (v329)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v329);
                }
              }

              if (v543.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v543.__r_.__value_.__l.__size_);
              }

              ++v326;
            }

            while (v326 != v325);
          }

          v311 = v524;
        }

        else
        {
          ++*(v517 + 25);
        }

        v313 += 2;
      }

      while (v313 != v312);
    }
  }

  v330 = (*(**(*(v271 + 21) + 40) + 40))(*(*(v271 + 21) + 40));
  if (v330)
  {
    v331 = *v330;
    v332 = *(v330 + 8);
    if (*v330 != v332)
    {
      do
      {
        if (*(*(**v331 + 568))(*v331, 0, 0, 0, 0))
        {
          v333 = *v331;
          if (!*(*v331 + 72))
          {
            *(v333 + 72) = atomic_fetch_add((*(v271 + 36) + 680), 1uLL) + 1;
            v333 = *v331;
          }

          md::PointLabelFeature::updatePositions(v333);
          v334 = *(*v331 + 432);
          v335 = *v331 + 440;
          if (v334 != v335)
          {
            do
            {
              v336 = (*(**v331 + 112))(*v331, v334 + 4);
              v337 = md::LabelPoint::mercatorPoint(v336);
              v338 = 0;
              v339 = 1;
              while (1)
              {
                v340 = *(v337 + 8 * v338);
                if (v340 < v311[v338])
                {
                  break;
                }

                v341 = v339;
                if (v340 > v525->f64[v338])
                {
                  break;
                }

                v339 = 0;
                v338 = 1;
                if ((v341 & 1) == 0)
                {
                  v342 = v331[1];
                  __p[0] = *v331;
                  __p[1] = v342;
                  if (v342)
                  {
                    atomic_fetch_add_explicit(&v342->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  md::LabelPool::labelForFeature(&v543, v521, v271, __p, v334 + 8, 1);
                  if (v342)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v342);
                  }

                  v343 = v543.__r_.__value_.__r.__words[0];
                  if (v543.__r_.__value_.__r.__words[0])
                  {
                    md::LabelMapTile::addLabel(v517, &v543);
                    v344 = v331[1];
                    if (v344)
                    {
                      atomic_fetch_add_explicit(&v344->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    md::Label::update(v343, v271, v517);
                    if (v344)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v344);
                    }
                  }

                  if (v543.__r_.__value_.__l.__size_)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v543.__r_.__value_.__l.__size_);
                  }

                  break;
                }
              }

              v345 = *(v334 + 1);
              if (v345)
              {
                do
                {
                  v346 = v345;
                  v345 = *v345;
                }

                while (v345);
              }

              else
              {
                do
                {
                  v346 = *(v334 + 2);
                  _ZF = *v346 == v334;
                  v334 = v346;
                }

                while (!_ZF);
              }

              v334 = v346;
            }

            while (v346 != v335);
          }
        }

        else
        {
          ++*(v517 + 25);
        }

        v331 += 2;
      }

      while (v331 != v332);
    }
  }

  if (*buf)
  {
    operator delete(*buf);
  }

  v347 = v529;
  v348 = (*(**(*(v529 + 21) + 32) + 208))(*(*(v529 + 21) + 32));
  if (v348)
  {
    v349 = *v348;
    v350 = *(v348 + 8);
    if (*v348 != v350)
    {
      do
      {
        v351 = *v349;
        *buf = 1;
        v352 = (*(*v351 + 112))(v351, buf);
        v353 = md::LabelPoint::mercatorPoint(v352);
        v354 = 0;
        v355 = 1;
        while (1)
        {
          v356 = *(v353 + 8 * v354);
          if (v356 < v311[v354])
          {
            break;
          }

          v357 = v355;
          if (v356 > v525->f64[v354])
          {
            break;
          }

          v355 = 0;
          v354 = 1;
          if ((v357 & 1) == 0)
          {
            v358 = v349[1];
            v543.__r_.__value_.__r.__words[0] = *v349;
            v543.__r_.__value_.__l.__size_ = v358;
            if (v358)
            {
              atomic_fetch_add_explicit(&v358->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            LODWORD(__p[0]) = 1;
            md::LabelPool::labelForFeature(buf, v521, v347, &v543, __p, 1);
            if (v358)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v358);
            }

            v359 = *buf;
            if (*buf)
            {
              md::LabelMapTile::addLabel(v517, buf);
              v360 = v349[1];
              if (v360)
              {
                atomic_fetch_add_explicit(&v360->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              md::Label::update(v359, v347, v517);
              if (v360)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v360);
              }
            }

            if (!*(*(**v349 + 568))(*v349, 0, 0, 0, 0))
            {
              ++*(v517 + 25);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
            }

            break;
          }
        }

        v349 += 2;
      }

      while (v349 != v350);
    }
  }

  v361 = v529;
  v362 = (*(**(*(v529 + 21) + 32) + 200))(*(*(v529 + 21) + 32));
  if (v362)
  {
    v363 = *v362;
    v364 = *(v362 + 8);
    if (*v362 != v364)
    {
      do
      {
        v365 = *v363;
        *buf = 1;
        v366 = (*(*v365 + 112))(v365, buf);
        v367 = md::LabelPoint::mercatorPoint(v366);
        v368 = 0;
        v369 = 1;
        while (1)
        {
          v370 = *(v367 + 8 * v368);
          if (v370 < v311[v368])
          {
            break;
          }

          v371 = v369;
          if (v370 > v525->f64[v368])
          {
            break;
          }

          v369 = 0;
          v368 = 1;
          if ((v371 & 1) == 0)
          {
            v372 = *v363;
            if (!*(*v363 + 72))
            {
              v372[9] = atomic_fetch_add((*(v361 + 36) + 680), 1uLL) + 1;
              v372 = *v363;
            }

            if (*(*(*v372 + 568))(v372, 0, 0, 0, 0))
            {
              v373 = v363[1];
              v543.__r_.__value_.__r.__words[0] = *v363;
              v543.__r_.__value_.__l.__size_ = v373;
              if (v373)
              {
                atomic_fetch_add_explicit(&v373->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              LODWORD(__p[0]) = 1;
              md::LabelPool::labelForFeature(buf, v521, v361, &v543, __p, 1);
              if (v373)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v373);
              }

              v374 = *buf;
              if (*buf)
              {
                md::LabelMapTile::addLabel(v517, buf);
                v375 = v363[1];
                if (v375)
                {
                  atomic_fetch_add_explicit(&v375->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                md::Label::update(v374, v361, v517);
                if (v375)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v375);
                }
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
              }
            }

            else
            {
              ++*(v517 + 25);
            }

            break;
          }
        }

        v363 += 2;
      }

      while (v363 != v364);
    }
  }

  v376 = v529;
  v377 = (*(**(*(v529 + 21) + 32) + 216))(*(*(v529 + 21) + 32));
  v378 = v517;
  v379 = v521;
  if (v377)
  {
    v381 = *v377;
    v380 = *(v377 + 8);
    if (*v377 != v380)
    {
      v382 = 0;
      do
      {
        v383 = *v381;
        if (*(*(**v381 + 568))(*v381, 0, 0, 0, 0))
        {
          if ((*(v383 + 141) & 1) != 0 || v515 >= *(v383 + 136))
          {
            md::LineLabelFeature::updatePositions(v383, v376, v515, v517);
            md::LineLabelPlacer::placementsForRect(buf, (v383 + 192), v311, v515);
            if (v382)
            {
              operator delete(v382);
            }

            v382 = *buf;
            v384 = *&buf[8];
            for (i = *buf; i != v384; ++i)
            {
              md::LabelPool::labelForFeature(buf, v521, v376, v381, i, 1);
              v386 = *buf;
              if (*buf)
              {
                md::LabelMapTile::addLabel(v517, buf);
                md::Label::update(v386, v376, v517);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
              }
            }

            v379 = v521;
          }

          else
          {
            ++*(v517 + 26);
          }
        }

        else
        {
          ++*(v517 + 25);
        }

        v381 += 2;
      }

      while (v381 != v380);
      if (v382)
      {
        operator delete(v382);
      }
    }
  }

  if (v511)
  {
    v387 = v508[16];
    for (j = v508[17]; v387 != j; v387 += 2)
    {
      v389 = *v387;
      *buf = 1;
      v390 = (*(*v389 + 112))(v389, buf);
      v391 = md::LabelPoint::mercatorPoint(v390);
      v392 = 0;
      v393 = 1;
      while (1)
      {
        v394 = *(v391 + 8 * v392);
        if (v394 < v311[v392])
        {
          break;
        }

        v395 = v393;
        if (v394 > v525->f64[v392])
        {
          break;
        }

        v393 = 0;
        v392 = 1;
        if ((v395 & 1) == 0)
        {
          if (*(*(**v387 + 568))(*v387, 0, 0, 0, 0))
          {
            LODWORD(v543.__r_.__value_.__l.__data_) = 1;
            md::LabelPool::labelForFeature(buf, v379, v529, v387, &v543, 1);
            v396 = *buf;
            if (*buf)
            {
              md::LabelMapTile::addLabel(v517, buf);
              md::Label::update(v396, v529, v517);
            }

            if (*&buf[8])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
            }
          }

          else
          {
            ++*(v517 + 25);
          }

          break;
        }
      }
    }

    v398 = v508[30];
    v397 = v508[31];
    if (v398 != v397)
    {
      v399 = 0;
      do
      {
        v400 = *v398;
        md::LineLabelFeature::updatePositions(*v398, v529, v515, v517);
        md::LineLabelPlacer::placementsForRect(buf, v400 + 24, v311, v515);
        if (v399)
        {
          operator delete(v399);
        }

        v399 = *buf;
        v401 = *&buf[8];
        for (k = *buf; k != v401; ++k)
        {
          md::LabelPool::labelForFeature(buf, v521, v529, v398, k, 1);
          v403 = *buf;
          if (*buf)
          {
            md::LabelMapTile::addLabel(v517, buf);
            md::Label::update(v403, v529, v517);
          }

          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
          }
        }

        v398 += 2;
        v379 = v521;
      }

      while (v398 != v397);
      if (v399)
      {
        operator delete(v399);
      }
    }
  }

  v404 = *(v517 + 44);
  for (m = *(v517 + 45); v404 != m; v404 += 2)
  {
    v406 = *v404;
    *buf = 1;
    v407 = (*(*v406 + 112))(v406, buf);
    v408 = md::LabelPoint::mercatorPoint(v407);
    v409 = 0;
    v410 = 1;
    while (1)
    {
      v411 = *(v408 + 8 * v409);
      if (v411 < v311[v409])
      {
        break;
      }

      v412 = v410;
      if (v411 > v525->f64[v409])
      {
        break;
      }

      v410 = 0;
      v409 = 1;
      if ((v412 & 1) == 0)
      {
        if (*(*(**v404 + 568))(*v404, 0, 0, 0, 0))
        {
          v413 = *v404;
          if (((*v404)[141] & 1) != 0 || v515 >= v413[136])
          {
            if (!v505 || !*(v505 + 34) || !(*(*v413 + 376))(v413) || !(*(**v404 + 392))(*v404) || (v414 = (*(**v404 + 384))(*v404), v415 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v505, v414), v415 == (*(**v404 + 408))(*v404)))
            {
              LODWORD(v543.__r_.__value_.__l.__data_) = 1;
              md::LabelPool::labelForCustomFeature(buf, v379, v529, v404, &v543, 1);
              v416 = *buf;
              if (*buf)
              {
                md::LabelMapTile::addLabel(v517, buf);
                md::Label::update(v416, v529, v517);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
              }
            }
          }

          else
          {
            ++*(v517 + 26);
          }
        }

        else
        {
          ++*(v517 + 25);
        }

        break;
      }
    }
  }

  v417 = v541;
  if (*(v517 + 133) == 1 && v541 != v542)
  {
    do
    {
      v419 = v417[4];
      if (atomic_fetch_add((v419 + 1384), 0xFFu) == 1)
      {
        if (*(v419 + 1352) == 1)
        {
          *(v419 + 1349) = 1;
          *(v419 + 1312) = 0;
        }

        else
        {
          md::Label::updateStateMachineForStaging(v419, 1, 37);
        }
      }

      v420 = v417[1];
      if (v420)
      {
        do
        {
          v421 = v420;
          v420 = *v420;
        }

        while (v420);
      }

      else
      {
        do
        {
          v421 = v417[2];
          _ZF = *v421 == v417;
          v417 = v421;
        }

        while (!_ZF);
      }

      v417 = v421;
    }

    while (v421 != v542);
  }

  *(v517 + 133) = 1;
  if (*(v517 + 134) == 1)
  {
    v422 = *(v517 + 57);
    *(v517 + 56) = 0;
    *(v517 + 57) = 0;
    if (v422)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v422);
    }

    if (*(v517 + 28))
    {
      v423 = atomic_load(v529 + 3425);
      if (v423)
      {
        v424 = *(v517 + 28);
        v425 = *(v424 + 272);
        if (v425)
        {
          v426 = std::__shared_weak_count::lock(v425);
          if (v426)
          {
            v427 = *(v424 + 264);
            if (v427)
            {
              LOBYTE(__p[0]) = *(*(v529 + 29) + 17) ^ 1;
              v543.__r_.__value_.__r.__words[0] = v427;
              LOBYTE(v530.f64[0]) = 3;
              std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelTileCollisionInfo *,md::LabelCollidableItem::ItemType,0>(buf, __p, v311, &v543, &v530);
            }

            std::__shared_weak_count::__release_shared[abi:nn200100](v426);
          }
        }
      }
    }
  }

  *(v517 + 134) = 0;
  if (*(v517 + 135) == 1)
  {
    v428 = *(v517 + 59);
    *(v517 + 58) = 0;
    *(v517 + 59) = 0;
    if (v428)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v428);
    }

    v429 = *(v517 + 36);
    if (v429)
    {
      v430 = *(v429 + 272);
      if (v430)
      {
        v431 = std::__shared_weak_count::lock(v430);
        if (v431)
        {
          v432 = *(v429 + 264);
          if (v432)
          {
            LOBYTE(__p[0]) = *(*(v529 + 29) + 17) ^ 1;
            v543.__r_.__value_.__r.__words[0] = v432;
            LOBYTE(v530.f64[0]) = 2;
            std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelTileCollisionInfo *,md::LabelCollidableItem::ItemType,0>(buf, __p, v311, &v543, &v530);
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v431);
        }
      }
    }

    *(v517 + 135) = 0;
  }

  if (!v508 || (v433 = v529, *(v529 + 201) != 1))
  {
    if (!v503)
    {
      goto LABEL_829;
    }

    v522 = v529;
    if (*(v529 + 201) != 2)
    {
      goto LABEL_829;
    }

    v437 = v503[25];
    if (v437)
    {
      v438 = *(v437 + 24);
      if (*(v517 + 130) != v438)
      {
        *(v517 + 130) = v438;
        v543.__r_.__value_.__r.__words[0] = md::LabelRouteCollisionInfo::tileCollisionInfo(*(v437 + 96), *(v517 + 9), v524);
        if (v543.__r_.__value_.__r.__words[0])
        {
          LOBYTE(__p[0]) = *(*(v522 + 29) + 17) ^ 1;
          std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelRouteTileCollisionInfo *&,0>(buf, __p, v524, &v543);
        }

        v502 = *(v517 + 61);
        *(v517 + 60) = 0;
        *(v517 + 61) = 0;
        if (v502)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v502);
        }
      }

      v439 = v503[26];
      v526 = v503[27];
      if (v439 == v526)
      {
        goto LABEL_832;
      }
    }

    else
    {
      v439 = v503[26];
      v526 = v503[27];
      if (v439 == v526)
      {
        goto LABEL_829;
      }
    }

    v440 = 0;
    v441 = (v517 + 536);
    do
    {
      v442 = *v441;
      v443 = (v517 + 536);
      v444 = *v441;
      if (!*v441)
      {
LABEL_797:
        operator new();
      }

      do
      {
        v445 = *(v444 + 28);
        _CF = v445 >= v440;
        v446 = v445 < v440;
        if (_CF)
        {
          v443 = v444;
        }

        v444 = v444[v446];
      }

      while (v444);
      v447 = (v517 + 536);
      if (v443 == v441 || (v447 = (v517 + 536), *(v443 + 28) > v440) || (v447 = v443, *(v443 + 8) != *(*v439 + 24)))
      {
        v448 = *v439;
        if (!v442)
        {
          goto LABEL_797;
        }

        while (1)
        {
          while (1)
          {
            v449 = v442;
            v450 = *(v442 + 28);
            if (v450 <= v440)
            {
              break;
            }

            v442 = *v449;
            if (!*v449)
            {
              goto LABEL_797;
            }
          }

          if (v450 >= v440)
          {
            break;
          }

          v442 = *(v449 + 8);
          if (!v442)
          {
            goto LABEL_797;
          }
        }

        *(v449 + 32) = *(*v439 + 24);
        v543.__r_.__value_.__r.__words[0] = md::LabelRouteCollisionInfo::tileCollisionInfo(*(v448 + 96), *(v378 + 9), v524);
        if (v543.__r_.__value_.__r.__words[0])
        {
          LOBYTE(__p[0]) = *(*(v522 + 29) + 17) ^ 1;
          std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelRouteTileCollisionInfo *&,0>(buf, __p, v524, &v543);
        }

        v378 = v517;
        if (v447 != v441)
        {
          v451 = v447[1];
          v452 = v447;
          if (v451)
          {
            do
            {
              v453 = v451;
              v451 = *v451;
            }

            while (v451);
          }

          else
          {
            do
            {
              v453 = v452[2];
              _ZF = *v453 == v452;
              v452 = v453;
            }

            while (!_ZF);
          }

          if (*(v517 + 66) == v447)
          {
            *(v517 + 66) = v453;
          }

          --*(v517 + 68);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(v517 + 67), v447);
          operator delete(v447);
          v454 = *(v517 + 63);
          if (v454)
          {
            v455 = v517 + 504;
            v456 = *(v517 + 63);
            do
            {
              v457 = v456[32];
              _CF = v457 >= v440;
              v458 = v457 < v440;
              if (_CF)
              {
                v455 = v456;
              }

              v456 = *&v456[8 * v458];
            }

            while (v456);
            if (v455 != v517 + 504 && v455[32] <= v440)
            {
              v459 = *(v455 + 1);
              v460 = v455;
              if (v459)
              {
                do
                {
                  v461 = v459;
                  v459 = *v459;
                }

                while (v459);
              }

              else
              {
                do
                {
                  v461 = *(v460 + 2);
                  _ZF = *v461 == v460;
                  v460 = v461;
                }

                while (!_ZF);
              }

              if (*(v517 + 62) == v455)
              {
                *(v517 + 62) = v461;
              }

              --*(v517 + 64);
              std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v454, v455);
              v462 = *(v455 + 6);
              if (v462)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v462);
              }

              operator delete(v455);
            }
          }
        }
      }

      ++v440;
      ++v439;
    }

    while (v439 != v526);
    goto LABEL_832;
  }

  v434 = v508[41];
  if (!v434)
  {
LABEL_829:
    *(v517 + 130) = 0;
    v463 = *(v517 + 61);
    *(v517 + 60) = 0;
    *(v517 + 61) = 0;
    if (v463)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v463);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v517 + 67));
    *(v517 + 66) = v517 + 536;
    *(v517 + 536) = 0u;
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v517 + 63));
    *(v517 + 63) = 0;
    *(v517 + 64) = 0;
    *(v517 + 62) = v517 + 504;
    goto LABEL_832;
  }

  v435 = *(v434 + 48);
  if (*(v517 + 130) != v435)
  {
    *(v517 + 130) = v435;
    v436 = *(v434 + 304);
    if (v436)
    {
      v543.__r_.__value_.__r.__words[0] = md::LabelRouteCollisionInfo::tileCollisionInfo(v436, *(v517 + 9), v524);
      if (v543.__r_.__value_.__r.__words[0])
      {
        LOBYTE(__p[0]) = *(*(v433 + 29) + 17) ^ 1;
        std::allocate_shared[abi:nn200100]<md::LabelMapTileCollisionInfo,std::allocator<md::LabelMapTileCollisionInfo>,BOOL,gm::Box<double,2> const&,md::LabelRouteTileCollisionInfo *&,0>(buf, __p, v524, &v543);
      }
    }

    v501 = *(v517 + 61);
    *(v517 + 60) = 0;
    *(v517 + 61) = 0;
    if (v501)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v501);
    }
  }

LABEL_832:
  v464 = v529;
  v465 = *(v378 + 8);
  v466 = (*(**(*(v529 + 21) + 32) + 80))(*(*(v529 + 21) + 32));
  if (v465 == 255 && v466 && (v467 = *(v466 + 200)) != 0 && *(v504 + 1208) != *(v504 + 1216))
  {
    v468 = *(v378 + 9);
    v523 = *(v504 + 1197);
    v469 = *(v467 + 24);
    v470 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v471 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    if (v468 >= 0xF)
    {
      v468 = 15;
    }

    *__p = v470;
    v533 = v471;
    v472 = *(v378 + 52);
    v473 = (v378 + 424);
    if (v472 != (v378 + 424))
    {
      v509 = v468;
      v510 = v469;
      v474 = 0;
      v475 = 0;
      do
      {
        v476 = v472[4];
        if (v476[1367] == 1 && (v476[1369] != v523 || v476[1368] != v510 || v476[1370] < v509))
        {
          v477 = v474;
          v478 = v475 >> 3;
          if (((v475 >> 3) + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v475 >> 3 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>((v475 >> 3) + 1);
          }

          *(8 * v478) = v476;
          v527 = 8 * v478 + 8;
          memcpy(0, 0, v475);
          v473 = (v378 + 424);
          v479 = (*(**(v472[4] + 8) + 112))(*(v472[4] + 8), v472[4] + 48);
          v480 = md::LabelPoint::mercatorPoint(v479);
          v481 = v477 >> 4;
          if (((v477 >> 4) + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v477 >> 4 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>((v477 >> 4) + 1);
          }

          *(16 * v481) = *v480;
          if (v477)
          {
            v482 = 0;
            v483 = 0;
            do
            {
              v484 = *v482++;
              *v483++ = v484;
            }

            while (v482 != v477);
          }

          v474 = 16 * v481 + 16;
          v475 = v527;
          v485 = 0;
          v486 = 16 * v481;
          v487 = __p;
          v488 = 1;
          do
          {
            v489 = v488;
            *v487 = fmin(*(v486 + 8 * v485), *v487);
            *&v533.i64[v485] = fmax(*&v533.i64[v485], *(v486 + 8 * v485));
            v487 = &__p[1];
            v485 = 1;
            v488 = 0;
          }

          while ((v489 & 1) != 0);
        }

        v490 = v472[1];
        if (v490)
        {
          do
          {
            v491 = v490;
            v490 = *v490;
          }

          while (v490);
        }

        else
        {
          do
          {
            v491 = v472[2];
            _ZF = *v491 == v472;
            v472 = v491;
          }

          while (!_ZF);
        }

        v472 = v491;
      }

      while (v491 != v473);
      if (v475)
      {
        v492 = 0;
        v493 = 0;
        v494 = __p;
        do
        {
          v495 = *&v533.i64[v493];
          v496 = *v494;
          if (v492)
          {
            break;
          }

          v492 = 1;
          v494 = &__p[1];
          v493 = 1;
        }

        while (v495 >= v496);
        v530 = 0uLL;
        v531 = 0;
        if (((v475 >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v378 = v517;
    }
  }

  else
  {
    v497 = *(v378 + 52);
    if (v497 != (v378 + 424))
    {
      do
      {
        v498 = v497[4];
        if (*(v498 + 1367) == 1)
        {
          *(v498 + 1368) = 0;
          *(v498 + 1370) = 0;
          if ((*(**(v498 + 8) + 536))(*(v498 + 8), 0xFFFFFFFFLL))
          {
            md::LabelFeatureStyler::restyleFeature(*(v464 + 37), *(v497[4] + 8));
          }
        }

        v499 = v497[1];
        if (v499)
        {
          do
          {
            v500 = v499;
            v499 = *v499;
          }

          while (v499);
        }

        else
        {
          do
          {
            v500 = v497[2];
            _ZF = *v500 == v497;
            v497 = v500;
          }

          while (!_ZF);
        }

        v497 = v500;
      }

      while (v500 != (v378 + 424));
    }
  }

  *(v378 + 65) = 0;
  *(v378 + 132) = 0;
  *(v378 + 136) = 0;
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(v542[0]);
}

void sub_1B2BCF658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::destroy(*(v42 - 176));
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<double,2,1>>(v5, v4);
  }

  return a1;
}

void md::LineLabelFeature::updatePositions(md::LineLabelFeature *this, md::LabelManager *a2, uint64_t a3, md::LabelMapTile *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(this + 10))
  {
    v9 = this + 192;
    v8 = *(this + 24);
    v10 = atomic_load(v8 + 155);
    if (v10)
    {
      md::LabelLineStore::consumeWorkUnits(v8);
    }

    v11 = *(a2 + 53);
    v12 = (*(*this + 480))(this, 0);
    if (v12)
    {
      v13 = *(v12 + 23);
      if (v13 < 0)
      {
        v13 = *(v12 + 8);
      }

      v14 = v13 != 0;
    }

    else
    {
      v14 = 0;
    }

    if (*(v11 + 424) > 0.0 && a4 && (*(v11 + 28) & 1) != 0)
    {
      for (i = 0; i != 40; i += 10)
      {
        v16 = &v57[i];
        *v16 = xmmword_1B33B0710;
        *(v16 + 2) = 0;
        *(v16 + 16) = 0;
      }

      v17 = *(*v9 + 32);
      v19 = *(*v9 + 40);
      v20 = *(*v9 + 48);
      v50 = *(*v9 + 24);
      v18 = v50;
      v51 = v17;
      v54 = (*(*a4 + 16))(a4, &v50, xmmword_1B33B0710);
      v55 = v21;
      v56 = v22;
      v52.i8[0] = 0;
      v53 = 0;
      v23.n128_u64[0] = 1.0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v54, &v52, 1, 0, v57, v23);
      v50 = v18;
      v51 = v20;
      v54 = (*(*a4 + 16))(a4, &v50);
      v55 = v24;
      v56 = v25;
      v52.i8[0] = 0;
      v53 = 0;
      v26.n128_u64[0] = 1.0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v54, &v52, 1, 0, v58, v26);
      v50 = v19;
      v51 = v20;
      v54 = (*(*a4 + 16))(a4, &v50);
      v55 = v27;
      v56 = v28;
      v52.i8[0] = 0;
      v53 = 0;
      v29.n128_u64[0] = 1.0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v54, &v52, 1, 0, v59, v29);
      v50 = v19;
      v51 = v17;
      v54 = (*(*a4 + 16))(a4, &v50);
      v55 = v30;
      v56 = v31;
      v52.i8[0] = 0;
      v53 = 0;
      v32.n128_u64[0] = 1.0;
      md::LabelLayoutContext::evaluateWorldPoint(v11, &v54, &v52, 1, 0, v60, v32);
      v33 = *v57;
      v54 = COERCE_DOUBLE(__PAIR64__(v58[0], v57[0]));
      v55 = __PAIR64__(v60[0], v59[0]);
      v34 = &v54;
      v35 = 4;
      v36 = *v57;
      do
      {
        v37 = *(&v54 + v35);
        v38 = v37 < v36;
        v36 = fminf(v37, v36);
        if (v38)
        {
          v34 = (&v54 + v35);
        }

        v35 += 4;
      }

      while (v35 != 16);
      v39 = *v34;
      v54 = COERCE_DOUBLE(__PAIR64__(v58[0], v57[0]));
      v40 = 4;
      v41 = &v54;
      v55 = __PAIR64__(v60[0], v59[0]);
      do
      {
        v42 = *(&v54 + v40);
        v38 = v33 < v42;
        v33 = fmaxf(v33, v42);
        if (v38)
        {
          v41 = (&v54 + v40);
        }

        v40 += 4;
      }

      while (v40 != 16);
      v43 = *v41;
      v44 = v39;
      v45 = *(this + 136);
      if (v39 <= v45)
      {
        v44 = *(this + 136);
      }

      if (v44 >= a3)
      {
        v46 = a3;
      }

      else
      {
        v46 = v44;
      }

      v47 = v43;
      if (v43 <= v45)
      {
        v47 = *(this + 136);
      }

      if (v47 < a3)
      {
        LOBYTE(a3) = v47;
      }

      while (v46 <= a3)
      {
        v48 = md::LineLabelFeature::roadMetricsForZ(this, v46, v11);
        if (v48)
        {
          md::LineLabelPlacer::updatePlacements(v9, v46, v48, a2, *(this + 433), v14);
          *(this + 433) = 0;
        }

        ++v46;
      }
    }

    else
    {
      v49 = md::LineLabelFeature::roadMetricsForZ(this, a3, v11);
      if (v49)
      {
        md::LineLabelPlacer::updatePlacements(v9, a3, v49, a2, *(this + 433), v14);
        *(this + 433) = 0;
      }
    }
  }
}

uint64_t **md::LineLabelFeature::roadMetricsForZ(md::LineLabelFeature *this, uint64_t a2, const LabelLayoutContext *a3)
{
  v4 = a2;
  v71 = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 568))(this, 0, 0, 0, 0);
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = *(this + 41);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = this + 328;
  do
  {
    v10 = v8[32];
    _CF = v10 >= v4;
    v12 = v10 < v4;
    if (_CF)
    {
      v9 = v8;
    }

    v8 = *&v8[8 * v12];
  }

  while (v8);
  if (v9 == (this + 328) || v9[32] > v4)
  {
LABEL_10:
    v13 = *(a3 + 11);
    md::LabelStyle::setZoom(*v6, v4);
    v14 = *(v7 + 33);
    if (!v14)
    {
      v15 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(v7);
      v14 = *v15;
      *(v7 + 33) = *v15;
    }

    v60 = *(v7 + 16);
    v16 = ldexp(1.0, v4);
    if ((*(*this + 480))(this, 0))
    {
      v17 = (*(*this + 480))(this, 0);
      v18 = *(v17 + 23);
      if ((v18 & 0x8000000000000000) != 0)
      {
        v18 = *(v17 + 8);
      }

      v19 = vcvtd_n_f64_u64(v18, 1uLL);
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    v22 = 0.00130208333 / v16;
    __asm { FMOV            V1.2D, #3.0 }

    _Q1.f64[0] = v20;
    v27 = vdivq_f64(_Q1, vdupq_lane_s64(v60, 0));
    v28 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 45) - *(this + 44)) >> 4);
    if (*(this + 45) == *(this + 44))
    {
      v29 = 0.0;
    }

    else
    {
      v29 = *(v14 + 36) * (v28 - 1);
    }

    v30 = v22 * (v29 + (v28 * 15.0));
    v31 = *(v14 + 44);
    __asm { FMOV            V0.2D, #0.5 }

    v62 = v27;
    v33 = vmulq_f64(v27, _Q0);
    v68 = v33;
    v65 = v30;
    v69 = v30;
    v70 = v22 * 15.0;
    v57 = v22 * 15.0;
    v58 = v22;
    v34 = 1;
    v35 = &v68;
    do
    {
      v36 = v68.f64[v34];
      _NF = v33.f64[0] < v36;
      v33.f64[0] = fmax(v33.f64[0], v36);
      if (_NF)
      {
        v35 = (&v68 + v34 * 8);
      }

      ++v34;
    }

    while (v34 != 4);
    v63 = v35->f64[0];
    if ((*(*this + 672))(this))
    {
      v38 = *(v14 + 24);
      if (v38 <= 0.0)
      {
        v38 = 300.0;
      }

      *v37.i32 = fmaxf(((*(a3 + 267) + *(a3 + 266)) * 0.375) / v13, 10.0);
      v39 = v58 * fminf(fmaxf(v38, 10.0), *v37.i32);
      __asm { FMOV            V2.2S, #10.0 }

      v41 = vminnm_f32(vmaxnm_f32(*(v14 + 28), _D2), vdup_lane_s32(v37, 0));
      v59 = vmulq_n_f64(vcvtq_f64_f32(v41), v58);
      v42 = v41.i32[1];
    }

    else
    {
      __asm { FMOV            V1.2D, #1.0 }

      v57 = 1.0;
      v59 = _Q1;
      v42 = 0;
      v39 = 1.0;
    }

    v61 = 1.5 / *&v60;
    v44 = *(v14 + 8);
    v45 = (*(v14 + 56) << 40) | (*(v14 + 16) << 48) | (*(v14 + 20) << 56);
    if ((*(*this + 344))(this))
    {
      v46 = v45 | *(v14 + 60);
      if (*(a3 + 14))
      {
LABEL_32:
        v46 |= *(v14 + 59) << 8;
      }
    }

    else
    {
      if ((*(v14 + 56) & 1) == 0)
      {
        v47 = 0;
        goto LABEL_38;
      }

      v46 = v45 | *(v14 + 60);
      if (*(a3 + 14) == 1)
      {
        goto LABEL_32;
      }
    }

    v45 = v46 & 0xFFFFFF000000FFFFLL | (*(v14 + 58) << 16);
    v47 = *(v14 + 57) << 24;
LABEL_38:
    v48 = (*(*this + 664))(this);
    v49 = 0x100000000;
    if (!v48)
    {
      v49 = 0;
    }

    v50 = v45 | v47 | v49;
    if (*(this + 144))
    {
      v51 = (v50 & 0xFFFFFFFFFFFFFF00) + 1;
    }

    else
    {
      v51 = v50;
    }

    v52.f64[0] = v63;
    v53.f64[0] = v65;
    v52.f64[1] = v61;
    v53.f64[1] = v57;
    if (*(*(this + 24) + 159) == 1)
    {
      v54 = v62.f64[0] * 40075017.0;
      v39 = v39 * 40075017.0;
      v55 = vdupq_n_s64(0x41831BF848000000uLL);
      v59 = vmulq_f64(v59, v55);
      v52 = vmulq_f64(v52, v55);
      v53 = vmulq_f64(v53, v55);
    }

    else
    {
      v54 = v62.f64[0];
    }

    v64 = v52;
    v66 = v53;
    v67 = v4;
    *&v68.f64[0] = &v67;
    v56 = std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(this + 40, v4, &v68);
    *(v56 + 5) = v39;
    *(v56 + 3) = v59;
    *(v56 + 8) = v54;
    v56[9] = *&v62.f64[1];
    *(v56 + 5) = v66;
    *(v56 + 6) = v64;
    *(v56 + 28) = v42;
    *(v56 + 29) = v31;
    *(v56 + 30) = v44;
    *(v56 + 124) = v51;
  }

  v67 = v4;
  *&v68.f64[0] = &v67;
  return std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(this + 40, v4, &v68) + 5;
}

uint64_t **std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(uint64_t **a1, unsigned __int8 a2, char **a3)
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
        v8 = *(v5 + 32);
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

    v12 = malloc_type_zone_malloc(*v9, 0x88uLL, 0x1020040ADBB207DuLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[32] = **a3;
    *(v12 + 16) = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v12 + 40) = _Q0;
    *(v12 + 56) = _Q0;
    *(v12 + 72) = _Q0;
    *(v12 + 88) = _Q0;
    *(v12 + 13) = 0xBFF0000000000000;
    __asm { FMOV            V0.2S, #-1.0 }

    *(v12 + 14) = _Q0;
    *(v12 + 30) = -1;
    *(v12 + 124) = 0;
    *v12 = 0;
    *(v12 + 1) = 0;
    *(v12 + 2) = v7;
    *v6 = v12;
    v18 = **a1;
    v19 = v12;
    if (v18)
    {
      *a1 = v18;
      v19 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v19);
    a1[3] = (a1[3] + 1);
  }

  return v12;
}

void md::LineLabelPlacer::updatePlacements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned __int8 a6)
{
  v8 = a2;
  v188 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = *(a1 + 16);
  if ((*(*a1 + 157) & 1) != 0 || (v13 = md::LabelLineStore::lineSetIndexForZoom(v10, a2), (v13 & 0x80000000) != 0) || (v14 = *(v10 + 12)) == 0)
  {
    v16 = 0;
  }

  else
  {
    v15 = *(v14 + 112 * v13 + 8);
    v16 = v15 > 12.0 / ldexpf(1.0, v8);
  }

  v17 = *(a1 + 20);
  v139 = 1 << a2;
  if (v11 != v12)
  {
    goto LABEL_13;
  }

  v18 = *(a1 + 68);
  if ((v139 & v18) != 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = 1;
  }

  if (!(v19 | v16) && (v139 & v17) == 0)
  {
    return;
  }

  if (a5)
  {
LABEL_13:
    LODWORD(v18) = 0;
  }

  v20 = *a1;
  v21 = v17 & ~v139;
  v22 = v17 | v139;
  if (!v16)
  {
    v22 = v21;
  }

  *(a1 + 16) = *(*a1 + 16);
  *(a1 + 20) = v22;
  *(a1 + 68) = v18 | v139;
  v23 = *(a1 + 32);
  v130 = a1 + 32;
  v136 = (a1 + 40);
  if (v23 != (a1 + 40))
  {
    v24 = *(a3 + 56);
    while (1)
    {
      v25 = v23[5];
      if ((v139 & v25[3]) == 0)
      {
LABEL_32:
        v38 = v23[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v23[2];
            v59 = *v39 == v23;
            v23 = v39;
          }

          while (!v59);
        }

        goto LABEL_39;
      }

      if (v16)
      {
        v26 = (*(*v25 + 56))(v25);
        v27 = md::LabelPoint::mercatorPoint(v26);
        v28 = *(a4 + 424);
        *__dst = *v27;
        *v168 = 0;
        v29 = &v153;
        v30.n128_u64[0] = md::LabelLayoutContext::projectPointToPixel(v28, __dst, &v153);
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v30.n128_u32[0] = v29->i32[0];
          if (*v29->i32 < *(v28 + 1104 + 4 * v32))
          {
            break;
          }

          v33 = *(v28 + 1112 + 4 * v32);
          v32 = 1;
          v34 = (v30.n128_f32[0] < v33) & ~v31;
          v31 = 1;
          v29 = (v153.i64 + 4);
          if ((v34 & 1) == 0)
          {
            if (v30.n128_f32[0] < v33)
            {
              v25 = v23[5];
              goto LABEL_27;
            }

            break;
          }
        }

        v35 = (*(**(*(a4 + 168) + 64) + 56))(*(*(a4 + 168) + 64), v27, v30);
        v25 = v23[5];
        if (v35)
        {
          goto LABEL_27;
        }

        v36 = a2;
      }

      else
      {
LABEL_27:
        v37 = (*(*v25 + 176))(v25, a2, v24);
        v25 = v23[5];
        if (v37)
        {
          *(v25 + 11) = 0;
          goto LABEL_31;
        }

        v36 = a2;
      }

      md::RoadPosition::setValidAtZoom(v25, v36, 0);
LABEL_31:
      if (*(v23[5] + 12))
      {
        goto LABEL_32;
      }

      v39 = std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::erase(v130, v23);
LABEL_39:
      v23 = v39;
      if (v39 == v136)
      {
        v20 = *a1;
        break;
      }
    }
  }

  v40 = md::LabelLineStore::lineSetIndexForZoom(v20, a2);
  if ((v40 & 0x80000000) != 0)
  {
    goto LABEL_174;
  }

  v41 = *(v20 + 12);
  if (!v41)
  {
    goto LABEL_174;
  }

  if (*(a3 + 40) <= 0.0)
  {
    v42 = 0;
  }

  else
  {
    v42 = *(a3 + 86);
  }

  v43 = *a3;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v137 = *(a1 + 24);
  __p = 0;
  v148 = 0;
  v149 = 0;
  v44 = v41 + 112 * v40;
  v45 = *(v44 + 80);
  v131 = *(v44 + 88);
  if (v45 == v131)
  {
    goto LABEL_173;
  }

  v46 = 2.0;
  v133 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v134 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v140 = 1.0 / v43;
  v135 = v42;
  do
  {
    v47 = v185;
    for (i = v186; i != v47; i -= 216)
    {
      v49 = *(i - 200);
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v49);
      }
    }

    v186 = v47;
    v183 = v182;
    md::LineLabelPlacer::populateBlocks(a1, a2, *v45, &v185, &v182);
    v132 = v45;
    v50 = *(*v45 + 112);
    v148 = __p;
    v51 = v185;
    v52 = v186;
    while (v51 != v52)
    {
      if (*(v51 + 23) - *(v51 + 22) + fmin(*(v51 + 25), *(v51 + 24)) * v46 < *(a3 + 64))
      {
        goto LABEL_169;
      }

      if (v16)
      {
        v153 = v134;
        v154[0] = v133;
        md::LabelLineResolvedPosition::ensureValidLinePosition((v51 + 2), *v133.i64);
        v53 = *(v51 + 2);
        __dst[0] = *(v51 + 1);
        __dst[1] = v53;
        if (v53)
        {
          atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
        }

        *v168 = *(v51 + 6);
        *&v168[16] = *(v51 + 5);
        *&v168[24] = v51[12];
        md::LabelLinePosition::offsetDistance(__dst, &v153, *(v51 + 23) - *(v51 + 22));
        if (__dst[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
        }

        v152[0] = v153;
        v152[1] = v154[0];
        if (((*(**(*(a4 + 168) + 64) + 64))(*(*(a4 + 168) + 64), v152) & 1) == 0)
        {
          goto LABEL_169;
        }
      }

      if (*(a1 + 24) == 1)
      {
        v50 = (v182[2 * *v51 + 1] + v182[2 * *v51]) * 0.5;
      }

      v54 = *(v51 + 22);
      v55 = *(v51 + 23);
      v56 = ((v54 - v50) * v140);
      v57 = v54 > v50 || v55 < v50;
      v58 = (v55 - v50) * v140;
      v59 = v57 && v56 == v58;
      if (v59)
      {
        goto LABEL_169;
      }

      if ((v42 & 1) != 0 && *(a3 + 88) == 1)
      {
        v60 = *(a3 + 84);
      }

      else
      {
        v60 = 0;
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition((v51 + 2), v58);
      if (md::LabelLinePosition::textIndex((v51 + 2)) == 255)
      {
        v62 = 0;
      }

      else
      {
        v62 = *(a3 + 84);
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition((v51 + 2), v61);
      if (md::LabelLinePosition::hasAnnotation((v51 + 2)))
      {
        v64 = *(a3 + 85);
      }

      else
      {
        v64 = 0;
      }

      md::LabelLineResolvedPosition::ensureValidLinePosition((v51 + 2), v63);
      v65 = md::LabelLinePosition::travelDirection((v51 + 2));
      v66 = *(a1 + 72);
      if (v66 != 7 && v65 - 3 > 0xFFFFFFFD)
      {
        LOBYTE(v67) = 0;
        v68 = *(a3 + 87) == 0;
        LODWORD(v69) = 4;
        goto LABEL_87;
      }

      LOBYTE(v67) = 0;
      v69 = 0;
      if (v66 == 7 && v65 < 2)
      {
        v67 = *(a3 + 87);
        v68 = v67 == 0;
        LODWORD(v69) = 5;
LABEL_87:
        if (v68)
        {
          v69 = 0;
        }

        else
        {
          v69 = v69;
        }
      }

      if (v60)
      {
        v70 = 2;
      }

      else
      {
        v70 = 3;
      }

      if ((v60 | v42))
      {
        goto LABEL_104;
      }

      if (v62 & v64)
      {
        v70 = 7;
LABEL_104:
        *v144 = v50;
        v71 = v16;
        v179[0] = &unk_1F2A2A340;
        v179[1] = &__p;
        LOBYTE(v180) = v137;
        memset(&v180 + 1, 0, 7);
        v181 = v179;
        v72 = *(a3 + 76);
        if (v72 < 0.0)
        {
          v73 = 80.0;
        }

        else
        {
          v73 = v72;
        }

        v74 = *(v51 + 23) - *(v51 + 22);
        v75 = v74 + fmin(*(v51 + 25), *(v51 + 24)) * 2.0;
        v76 = a2 < 0xE || v72 >= 0.0;
        while (1)
        {
          v77 = v69;
          v78 = v70;
          v79 = metricsForPositionType(v70, a3);
          v80 = v79;
          v82 = v81;
          v83 = v73;
          if (!v76)
          {
            if (*(*a1 + 154) == 2)
            {
              v83 = 8.0;
            }

            else
            {
              v83 = 10.0;
            }
          }

          if (v77)
          {
            if (v78 != v77)
            {
              v69 = 0;
              v70 = v77;
              if (v79 > v75)
              {
                continue;
              }
            }
          }

          if (v78 != 7)
          {
            break;
          }

          v69 = 0;
          v70 = 6;
          if (v79 <= v75)
          {
            break;
          }
        }

        v142 = *(a3 + 48);
        __src = v74 * 0.5;
        v141 = v51[52];
        v84 = metricsForPositionType(v78, a3);
        v86 = fmax(v80 + v82, v84 + v85);
        v87 = v86 * 0.800000012 * (v86 * 0.800000012);
        if (!*(*a1 + 159))
        {
          v83 = v83 * 0.0000000249532021;
        }

        v88 = (v74 / v86);
        v89 = 1 << (__clz(v88) ^ 0x1F);
        if (v88)
        {
          v90 = v89;
        }

        else
        {
          v90 = 0;
        }

        if (v90 > 2)
        {
LABEL_137:
          if (v77 | v88)
          {
            v97 = v66 == 0;
          }

          else
          {
            v97 = 0;
          }

          if (v97)
          {
            v98 = v78;
            if (v77)
            {
              v86 = v80 * 0.5 + *(a3 + 48) * 2.0;
              v98 = v77;
            }

            if (__src > v86 + v83)
            {
              *__dst = 0u;
              *v168 = 0u;
              *&v168[20] = 0;
              *&v168[16] = -1;
              v169 = 0;
              v170 = 0u;
              memset(v171, 0, sizeof(v171));
              *v172 = 2139095039;
              *&v172[4] = 0;
              v172[6] = 0;
              v173 = 0u;
              memset(v174, 0, sizeof(v174));
              *v175 = 2139095039;
              *&v175[4] = 0;
              v175[6] = 0;
              v176 = 0;
              v177 = 0;
              v178 = 255;
              if (md::LabelLineResolvedPosition::positionAtDistance(v51 + 1, __dst, v83))
              {
                std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v181, __dst, v87);
                if ((v102 & 1) == 0)
                {
                  v99.f64[0] = v142;
                  v100.n128_f64[0] = v75;
                  v101.n128_u32[0] = v141;
                  md::LineLabelPlacer::addPositionIfValid(&v153, a1, __dst, 0, v98, a2, 1, v99, v100, v101);
                  if (v153.i64[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v153.i64[1]);
                  }
                }
              }

              if (md::LabelLineResolvedPosition::positionAtDistance(v51 + 1, __dst, v74 - v83))
              {
                std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v181, __dst, v87);
                if ((v106 & 1) == 0)
                {
                  v103.f64[0] = v142;
                  v104.n128_f64[0] = v75;
                  v105.n128_u32[0] = v141;
                  md::LineLabelPlacer::addPositionIfValid(v152, a1, __dst, 2, v98, a2, 2, v103, v104, v105);
                  if (*(&v152[0] + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v152[0] + 1));
                  }
                }
              }

              if (__dst[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
              }
            }
          }

          if (v90 >= 3)
          {
            *__dst = 0u;
            *v168 = 0u;
            *&v168[20] = 0;
            *&v168[16] = -1;
            v169 = 0;
            v170 = 0u;
            memset(v171, 0, sizeof(v171));
            *v172 = 2139095039;
            *&v172[4] = 0;
            v172[6] = 0;
            v173 = 0u;
            memset(v174, 0, sizeof(v174));
            *v175 = 2139095039;
            *&v175[4] = 0;
            v175[6] = 0;
            v176 = 0;
            v177 = 0;
            v178 = 255;
            v107 = __clz(__rbit32(v90));
            v108 = 1;
            v109 = v78;
            do
            {
              v110 = md::LabelLineResolvedPosition::positionAtDistance(v51 + 1, __dst, v74 * v108 * (1.0 / v90));
              v111 = v78;
              if (v110)
              {
                std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v181, __dst, v87);
                if (v115)
                {
                  v111 = v109;
                }

                else
                {
                  v116 = v107 + ~__clz(__rbit32(v108));
                  v59 = v116 == 0;
                  v117 = v116 + 3;
                  if (v59)
                  {
                    v118 = 0;
                  }

                  else
                  {
                    v118 = v117;
                  }

                  v112.f64[0] = v142;
                  v113.n128_f64[0] = v75;
                  v114.n128_u32[0] = v141;
                  md::LineLabelPlacer::addPositionIfValid(v150, a1, __dst, 1, v109, a2, v118, v112, v113, v114);
                  v111 = v78;
                  if (v151)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v151);
                    v111 = v78;
                  }
                }
              }

              ++v108;
              v109 = v111;
            }

            while (v90 != v108);
            if (__dst[1])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
            }
          }
        }

        else if (v80 <= v75)
        {
          *__dst = 0u;
          *v168 = 0u;
          *&v168[20] = 0;
          *&v168[16] = -1;
          v169 = 0;
          v170 = 0u;
          memset(v171, 0, sizeof(v171));
          *v172 = 2139095039;
          *&v172[4] = 0;
          v172[6] = 0;
          v173 = 0u;
          memset(v174, 0, sizeof(v174));
          *v175 = 2139095039;
          *&v175[4] = 0;
          v175[6] = 0;
          v176 = 0;
          v177 = 0;
          v178 = 255;
          if (md::LabelLineResolvedPosition::positionAtDistance(v51 + 1, __dst, __src))
          {
            std::function<BOOL ()(md::LabelLineResolvedPosition const&,double)>::operator()(v181, __dst, v87);
            if ((v94 & 1) == 0)
            {
              v91.f64[0] = v142;
              v92.n128_f64[0] = v75;
              v93.n128_u32[0] = v141;
              md::LineLabelPlacer::addPositionIfValid(&v153, a1, __dst, 1, v78, a2, 0, v91, v92, v93);
              v95 = v153;
              if (v153.i64[1])
              {
                atomic_fetch_add_explicit((v153.i64[1] + 8), 1uLL, memory_order_relaxed);
              }

              v96 = __dst[1];
              *__dst = v95;
              if (v96)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v96);
              }

              *v168 = v154[0];
              *&v168[12] = *(v154 + 12);
              v169 = v155;
              v170 = v156;
              v171[0] = v157;
              *&v172[3] = *(v159 + 3);
              *v172 = v159[0];
              v174[0] = v161;
              v173 = v160;
              *&v171[1] = v158;
              *&v174[1] = v162;
              *&v175[3] = *(v163 + 3);
              *v175 = v163[0];
              v177 = v165;
              v176 = v164;
              v178 = v166;
              if (v153.i64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v153.i64[1]);
              }
            }
          }

          if (__dst[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__dst[1]);
          }

          v66 = *(a1 + 72);
          goto LABEL_137;
        }

        std::__function::__value_func<BOOL ()(md::LabelLineResolvedPosition const&,double)>::~__value_func[abi:nn200100](v179);
        v16 = v71;
        v42 = v135;
        v46 = 2.0;
        v50 = *v144;
        goto LABEL_169;
      }

      if ((v62 & 1 & v67) != 0)
      {
        LODWORD(v70) = 8;
      }

      else
      {
        LODWORD(v70) = 1;
      }

      if (v62)
      {
        v70 = v70;
      }

      else
      {
        v70 = 6;
      }

      if ((v62 | v64))
      {
        goto LABEL_104;
      }

      v70 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

LABEL_169:
      v51 += 54;
    }

    v45 = v132 + 1;
  }

  while (v132 + 1 != v131);
  if (__p)
  {
    v148 = __p;
    operator delete(__p);
  }

LABEL_173:
  std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v182);
  __dst[0] = &v185;
  std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](__dst);
LABEL_174:
  v145 = *(*a1 + 159);
  v119 = *(a1 + 32);
  if (v119 == v136)
  {
    v120 = 0;
    goto LABEL_199;
  }

  v120 = 0;
  v121 = a2;
  while (2)
  {
    v122 = v119[5];
    if ((v139 & *(v122 + 12)) != 0)
    {
      if (*(v122 + 11) == 1)
      {
        v123 = *(v122 + 9);
        if (v123 == 8 || v123 == 4)
        {
          *(v122 + 10) = 1;
          *(v122 + 16) |= v139;
        }

        else
        {
          *(v122 + 10) = 0;
          v127 = v120 >> 3;
          if (((v120 >> 3) + 1) >> 61)
          {
            goto LABEL_204;
          }

          if (v120 >> 3 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>((v120 >> 3) + 1);
          }

          *(8 * v127) = v122;
          memcpy(0, 0, v120);
          v120 = 8 * v127 + 8;
          v121 = a2;
        }

        goto LABEL_190;
      }

      md::RoadPosition::setValidAtZoom(v119[5], v121, 0);
      v125 = v119[5];
      v126 = *(v125 + 12);
      *(v125 + 16) &= ~v139;
      if (v126)
      {
        goto LABEL_190;
      }

      v119 = std::__tree<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,std::shared_ptr<md::RoadPosition>>,mdm::zone_mallocator>>::erase(v130, v119);
    }

    else
    {
LABEL_190:
      v128 = v119[1];
      if (v128)
      {
        do
        {
          v119 = v128;
          v128 = *v128;
        }

        while (v128);
      }

      else
      {
        do
        {
          v129 = v119;
          v119 = v119[2];
        }

        while (*v119 != v129);
      }
    }

    if (v119 != v136)
    {
      continue;
    }

    break;
  }

  if (v120)
  {
    if (!((v120 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v120 >> 3);
    }

LABEL_204:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_199:
  if (v145)
  {
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(0, 0, 0, 1);
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(0, 0, 0, 1);
  }

  else
  {
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByX &,md::RoadPosition **,false>(0, 0, 0, 1);
    std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByY &,md::RoadPosition **,false>(0, 0, 0, 1);
  }

  std::__introsort<std::_ClassicAlgPolicy,md::LineLabelPlacer::dedupePlacements(unsigned char,BOOL,md::RoadMetricsEntry const*)::SorterByPriority &,md::RoadPosition **,false>(0, v120, 0, 1);
}

void sub_1B2BD2034(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else if (!v2)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(v2);
  goto LABEL_6;
}

uint64_t md::LabelLineStore::lineSetIndexForZoom(md::LabelLineStore *this, unsigned int a2)
{
  if (a2 >= 0x17)
  {
    v2 = 23;
  }

  else
  {
    v2 = a2;
  }

  v3 = this + 128;
  v4 = atomic_load(this + v2 + 128);
  if (v4 != 254)
  {
    return v4;
  }

  if (*(this + 158))
  {
    v5 = 24;
  }

  else
  {
    v5 = 5;
  }

  v6 = *(this + 12);
  v7 = *(this + 13);
  v8 = v7 - v6;
  if (v7 == v6)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
    v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 4);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    result = 0xFFFFFFFFLL;
    v12 = 1000.0;
    while (1)
    {
      v13 = *v6;
      v6 += 112;
      v14 = v2 - v13;
      if (v2 == v13)
      {
        break;
      }

      if (v14 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -v14;
      }

      if (v15 <= v5)
      {
        v16 = v14;
        if (v14 < 0)
        {
          v16 = v14 * -0.8;
        }

        v17 = v16 < v12;
        v12 = fminf(v16, v12);
        if (v17)
        {
          result = v9;
        }

        else
        {
          result = result;
        }
      }

      if (v10 == ++v9)
      {
        goto LABEL_27;
      }
    }

    result = v9;
  }

LABEL_27:
  atomic_store(result, &v3[v2]);
  return result;
}

void *md::LineLabelPlacer::placementsForRect(void *result, void *a2, uint64_t a3, char a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v4 = a2[4];
  v5 = a2 + 5;
  if (v4 != a2 + 5)
  {
    v8 = result;
    v9 = 0;
    v10 = 1 << a4;
    v11 = a3 + 16;
    do
    {
      result = v4[5];
      if ((v10 & result[2]) != 0)
      {
        if (*(*a2 + 159))
        {
          if (v9 < v8[2])
          {
LABEL_12:
            *v9++ = *(v4 + 8);
          }

          else
          {
LABEL_13:
            result = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(v8, v4 + 8);
            v9 = result;
          }

          v8[1] = v9;
        }

        else
        {
          v12 = (*(*result + 56))(result);
          result = md::LabelPoint::mercatorPoint(v12);
          v13 = 0;
          v14 = 1;
          while (1)
          {
            v15 = *&result[v13];
            if (v15 < *(a3 + 8 * v13) || v15 > *(v11 + 8 * v13))
            {
              break;
            }

            v16 = v14;
            v14 = 0;
            v13 = 1;
            if ((v16 & 1) == 0)
            {
              if (v9 >= v8[2])
              {
                goto LABEL_13;
              }

              goto LABEL_12;
            }
          }
        }
      }

      v17 = v4[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v4[2];
          v19 = *v18 == v4;
          v4 = v18;
        }

        while (!v19);
      }

      v4 = v18;
    }

    while (v18 != v5);
  }

  return result;
}

void sub_1B2BD23EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::PointLabelFeature::updatePositions(uint64_t this)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((this + 312));
  if (v1)
  {
    v46 = 0uLL;
    v47 = 0;
    std::mutex::lock((this + 248));
    v45 = *(this + 320);
    v46 = v45;
    *(this + 320) = 0;
    *(this + 328) = 0;
    v47 = *(this + 336);
    *(this + 336) = 0;
    atomic_store(0, (this + 312));
    std::mutex::unlock((this + 248));
    v3 = v45;
    if (v45 != *(&v45 + 1))
    {
      v4 = (this + 440);
      do
      {
        v5 = *v3;
        if (v5 == 2)
        {
          v40 = *(v3 + 5);
          v41 = (*(*this + 160))(this);
          if (md::DebugStreamingPOIFeatureID)
          {
            v42 = md::DebugStreamingPOIFeatureID == v41;
          }

          else
          {
            v42 = 0;
          }

          if (v42)
          {
            if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
            }

            v43 = GEOGetVectorKitStreamingPOILog_log;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              v44 = *(this + 416);
              *buf = 134218240;
              *&buf[4] = v44;
              v49 = 2048;
              v50 = v40;
              _os_log_impl(&dword_1B2754000, v43, OS_LOG_TYPE_DEBUG, "PointLabelFeature::setPoiRemoveVersion, oldVersion=%llu, newVersion=%llu", buf, 0x16u);
            }
          }

          *(this + 416) = v40;
        }

        else if (v5 == 1)
        {
          v6 = (*(*this + 160))(this);
          if (md::DebugStreamingPOIFeatureID)
          {
            v7 = md::DebugStreamingPOIFeatureID == v6;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
            }

            v8 = GEOGetVectorKitStreamingPOILog_log;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v9 = *(v3 + 2);
              *buf = 134217984;
              *&buf[4] = v9;
              _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "PointLabelFeature::removeTileElements, geoTile=%p", buf, 0xCu);
            }
          }

          v10 = *(this + 432);
          if (v10 != v4)
          {
            do
            {
              v12 = v10[5];
              v11 = v10[6];
              v13 = *(v3 + 2);
              v14 = *(v3 + 3);
              if (v14)
              {
                atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v12 != v11)
              {
                while (1)
                {
                  v15 = *v12 ? (*v12 + 1) : 0;
                  if (*(v15 + 8) == v13)
                  {
                    break;
                  }

                  if (++v12 == v11)
                  {
                    v12 = v11;
                    goto LABEL_37;
                  }
                }

                if (v12 != v11)
                {
                  for (i = v12 + 1; i != v11; ++i)
                  {
                    if (*i)
                    {
                      v17 = *i + 8;
                    }

                    else
                    {
                      v17 = 0;
                    }

                    if (*(v17 + 8) != v13)
                    {
                      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v12++, i);
                    }
                  }
                }
              }

LABEL_37:
              if (v14)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v14);
              }

              v18 = v10[6];
              if (v12 != v18)
              {
                while (v18 != v12)
                {
                  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(--v18);
                }

                v10[6] = v12;
              }

              v19 = v10[5];
              if (v19 != v12)
              {
                v20 = *v19 ? *v19 + 8 : 0;
                if (*(v20 + 72) != *(this + 408))
                {
                  v21 = (*(*this + 160))(this);
                  if (md::DebugStreamingPOIFeatureID && md::DebugStreamingPOIFeatureID == v21)
                  {
                    if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
                    {
                      dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
                    }

                    v22 = GEOGetVectorKitStreamingPOILog_log;
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                    {
                      v23 = *(this + 408);
                      if (*v19)
                      {
                        v24 = *v19 + 8;
                      }

                      else
                      {
                        v24 = 0;
                      }

                      v25 = *(v24 + 72);
                      *buf = 134218240;
                      *&buf[4] = v23;
                      v49 = 2048;
                      v50 = v25;
                      _os_log_impl(&dword_1B2754000, v22, OS_LOG_TYPE_DEBUG, "PointLabelFeature::removeTile, unexpire elements oldVersion=%llu -> updateVersion=%llu", buf, 0x16u);
                    }
                  }

                  if (*v19)
                  {
                    v26 = *v19 + 8;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  *(this + 408) = *(v26 + 72);
                  v27 = v10[5];
                  v28 = v10[6];
                  while (v27 != v28)
                  {
                    v29 = *v27;
                    *buf = v29;
                    if (v29)
                    {
                      ++*v29;
                      v30 = v29 + 1;
                    }

                    else
                    {
                      v30 = 0;
                    }

                    if (v30[9] != *(this + 408))
                    {
                      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(buf);
                      break;
                    }

                    md::PointLabelFeatureElement::updateText(v30, this, *(this + 689));
                    if (*buf)
                    {
                      v31 = (*buf + 8);
                    }

                    else
                    {
                      v31 = 0;
                    }

                    md::PointLabelFeatureElement::updateLabelPlacements(v31, this);
                    geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(buf);
                    ++v27;
                  }
                }
              }

              v32 = v10[1];
              if (v10[5] == v10[6])
              {
                v34 = v10[1];
                v35 = v10;
                if (v32)
                {
                  do
                  {
                    v33 = v34;
                    v34 = *v34;
                  }

                  while (v34);
                }

                else
                {
                  do
                  {
                    v33 = v35[2];
                    v7 = *v33 == v35;
                    v35 = v33;
                  }

                  while (!v7);
                }

                v36 = v10;
                if (v32)
                {
                  do
                  {
                    v37 = v32;
                    v32 = *v32;
                  }

                  while (v32);
                }

                else
                {
                  do
                  {
                    v37 = v36[2];
                    v7 = *v37 == v36;
                    v36 = v37;
                  }

                  while (!v7);
                }

                if (*(this + 432) == v10)
                {
                  *(this + 432) = v37;
                }

                --*(this + 456);
                std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 440), v10);
                *buf = v10 + 5;
                std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
                v39 = mdm::zone_mallocator::instance(v38);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v39, v10);
              }

              else if (v32)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
              }

              else
              {
                do
                {
                  v33 = v10[2];
                  v7 = *v33 == v10;
                  v10 = v33;
                }

                while (!v7);
              }

              v10 = v33;
            }

            while (v33 != v4);
          }
        }

        else if (!*v3)
        {
          (*(*this + 776))(this, v3 + 8, v3[32]);
        }

        v3 += 48;
      }

      while (v3 != *(&v45 + 1));
    }

    *buf = &v46;
    std::vector<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
  }
}

void sub_1B2BD2A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  a19 = &a15;
  std::vector<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

__int128 *md::PointLabelFeature::labelPoint(md::LabelPoint *a1, unsigned int *a2)
{
  v2 = *(a1 + 55);
  if (v2)
  {
    v3 = *a2;
    v4 = (a1 + 440);
    do
    {
      v5 = v2[8];
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *&v2[2 * v7];
    }

    while (v2);
    if (v4 != (a1 + 440) && v3 >= v4[8])
    {
      return (v4 + 18);
    }
  }

  md::LabelPoint::NullPoint(a1);
  return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
}

void md::LabelPool::labelForFeature(md::LabelDedupingGroup **a1, md::LabelPool *this, uint64_t a3, void *a4, unsigned int *a5, int a6)
{
  v83 = a3;
  if (*(this + 27) > *(this + 76))
  {
    md::LabelPool::pruneCachedLabels(this);
    *(this + 76) = *this + *(this + 27);
  }

  *a1 = 0;
  a1[1] = 0;
  v11 = *(*a4 + 72);
  v81 = v11;
  v82 = *a5;
  v12 = v82;
  v13 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(this + 224, v11, v82);
  if ((this + 232) == v13)
  {
    if (!a6)
    {
      return;
    }

    v16 = *(this + 25);
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = this + 200;
    do
    {
      v18 = *(v16 + 4);
      v20 = v18 == v11;
      v19 = v18 < v11;
      if (v20)
      {
        v19 = *(v16 + 10) < v82;
      }

      v20 = !v19;
      if (v19)
      {
        v21 = 8;
      }

      else
      {
        v21 = 0;
      }

      if (v20)
      {
        v17 = v16;
      }

      v16 = *&v16[v21];
    }

    while (v16);
    if (v17 == this + 200)
    {
      goto LABEL_27;
    }

    v22 = *(v17 + 4);
    v20 = v11 == v22;
    v23 = v11 < v22;
    if (v20)
    {
      v23 = v82 < *(v17 + 10);
    }

    if (v23 || (v24 = *(v17 + 7)) == 0 || v24->__shared_owners_ == -1)
    {
LABEL_27:
      std::allocate_shared[abi:nn200100]<md::Label,std::allocator<md::Label>,md::LabelManager *&,std::shared_ptr<md::LabelFeature> const&,md::LabelIdentifier const&,0>(&v85, &v83, a4, a5);
    }

    v25 = std::__shared_weak_count::lock(v24);
    v26 = v25;
    if (v25)
    {
      v27 = *(v17 + 6);
    }

    else
    {
      v27 = 0;
    }

    *a1 = v27;
    a1[1] = v25;
    v85 = &v81;
    v28 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>((this + 224), v81, v82, &v85);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v28 + 7);
    *(v28 + 6) = v27;
    *(v28 + 7) = v26;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if ((*(v27 + 1341) & 1) == 0)
    {
      *(v27 + 1341) = 1;
    }

    if (*(*(this + 1) + 3653))
    {
      goto LABEL_152;
    }

    (*(**(v27 + 8) + 288))(&v85);
    v30 = v85;
    if (v86)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v86);
    }

    if (v30)
    {
      v31 = (*(**(v27 + 8) + 288))(&v85);
      v32 = v85;
      v33 = 0x9DDFEA08EB382D69 * ((8 * (v85 & 0x1FFFFFFF) + 8) ^ (v85 >> 32));
      v34 = 0x9DDFEA08EB382D69 * ((v85 >> 32) ^ (v33 >> 47) ^ v33);
      v35 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
      v36 = *(this + 40);
      if (v36)
      {
        v37 = vcnt_s8(v36);
        v37.i16[0] = vaddlv_u8(v37);
        if (v37.u32[0] > 1uLL)
        {
          v12 = 0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47));
          if (v35 >= v36)
          {
            v12 = v35 % v36;
          }
        }

        else
        {
          v12 = v35 & (v36 - 1);
        }

        v43 = *(*(this + 39) + 8 * v12);
        if (v43)
        {
          for (i = *v43; i; i = *i)
          {
            v45 = i[1];
            if (v45 == v35)
            {
              if (i[2] == v85)
              {
                goto LABEL_134;
              }
            }

            else
            {
              if (v37.u32[0] > 1uLL)
              {
                if (v45 >= v36)
                {
                  v45 %= v36;
                }
              }

              else
              {
                v45 &= v36 - 1;
              }

              if (v45 != v12)
              {
                break;
              }
            }
          }
        }
      }

      v46 = mdm::zone_mallocator::instance(v31);
      v47 = pthread_rwlock_rdlock((v46 + 32));
      if (v47)
      {
        geo::read_write_lock::logFailure(v47, "read lock", v48);
      }

      v49 = malloc_type_zone_malloc(*v46, 0x20uLL, 0x10200404161829EuLL);
      atomic_fetch_add((v46 + 24), 1u);
      geo::read_write_lock::unlock((v46 + 32));
      *v49 = 0;
      v49[1] = v35;
      v51 = v86;
      v49[2] = v85;
      v49[3] = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = (*(this + 44) + 1);
      v53 = *(this + 90);
      if (v36 && (v53 * v36) >= v52)
      {
LABEL_124:
        v77 = *(this + 39);
        v78 = *(v77 + 8 * v12);
        if (v78)
        {
          *v49 = *v78;
        }

        else
        {
          *v49 = *(this + 42);
          *(this + 42) = v49;
          *(v77 + 8 * v12) = this + 336;
          if (!*v49)
          {
LABEL_133:
            ++*(this + 44);
            v27 = *a1;
            v32 = v85;
LABEL_134:
            md::LabelBase::setDedupingGroup(v27, v32);
            v80 = v86;
            if (!v86)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }

          v79 = *(*v49 + 8);
          if ((v36 & (v36 - 1)) != 0)
          {
            if (v79 >= v36)
            {
              v79 %= v36;
            }
          }

          else
          {
            v79 &= v36 - 1;
          }

          v78 = (*(this + 39) + 8 * v79);
        }

        *v78 = v49;
        goto LABEL_133;
      }

      v54 = 1;
      if (v36 >= 3)
      {
        v54 = (v36 & (v36 - 1)) != 0;
      }

      v55 = v54 | (2 * v36);
      v56 = vcvtps_u32_f32(v52 / v53);
      if (v55 <= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v55;
      }

      if (v57 == 1)
      {
        v57 = 2;
      }

      else if ((v57 & (v57 - 1)) != 0)
      {
        prime = std::__next_prime(v57);
        v57 = prime;
      }

      v36 = *(this + 40);
      if (v57 > v36)
      {
        goto LABEL_77;
      }

      if (v57 < v36)
      {
        prime = vcvtps_u32_f32(*(this + 44) / *(this + 90));
        if (v36 < 3 || (v66 = vcnt_s8(v36), v66.i16[0] = vaddlv_u8(v66), v66.u32[0] > 1uLL))
        {
          prime = std::__next_prime(prime);
        }

        else
        {
          v67 = 1 << -__clz(prime - 1);
          if (prime >= 2)
          {
            prime = v67;
          }
        }

        if (v57 <= prime)
        {
          v57 = prime;
        }

        if (v57 >= v36)
        {
          v36 = *(this + 40);
        }

        else
        {
          if (v57)
          {
LABEL_77:
            v58 = mdm::zone_mallocator::instance(prime);
            v59 = pthread_rwlock_rdlock((v58 + 32));
            if (v59)
            {
              geo::read_write_lock::logFailure(v59, "read lock", v60);
            }

            v61 = malloc_type_zone_malloc(*v58, 8 * v57, 0x2004093837F09uLL);
            atomic_fetch_add((v58 + 24), 1u);
            geo::read_write_lock::unlock((v58 + 32));
            std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> **,0>((this + 312), v61);
            v62 = 0;
            *(this + 40) = v57;
            do
            {
              *(*(this + 39) + 8 * v62++) = 0;
            }

            while (v57 != v62);
            v63 = *(this + 42);
            if (v63)
            {
              v64 = v63[1];
              v65 = vcnt_s8(v57);
              v65.i16[0] = vaddlv_u8(v65);
              if (v65.u32[0] > 1uLL)
              {
                if (v64 >= v57)
                {
                  v64 %= v57;
                }
              }

              else
              {
                v64 &= v57 - 1;
              }

              *(*(this + 39) + 8 * v64) = this + 336;
              v74 = *v63;
              if (*v63)
              {
                do
                {
                  v75 = v74[1];
                  if (v65.u32[0] > 1uLL)
                  {
                    if (v75 >= v57)
                    {
                      v75 %= v57;
                    }
                  }

                  else
                  {
                    v75 &= v57 - 1;
                  }

                  if (v75 != v64)
                  {
                    v76 = *(this + 39);
                    if (!*(v76 + 8 * v75))
                    {
                      *(v76 + 8 * v75) = v63;
                      goto LABEL_115;
                    }

                    *v63 = *v74;
                    *v74 = **(v76 + 8 * v75);
                    **(v76 + 8 * v75) = v74;
                    v74 = v63;
                  }

                  v75 = v64;
LABEL_115:
                  v63 = v74;
                  v74 = *v74;
                  v64 = v75;
                }

                while (v74);
              }
            }

            v36 = v57;
            goto LABEL_119;
          }

          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> **,0>((this + 312), 0);
          v36 = 0;
          *(this + 40) = 0;
        }
      }

LABEL_119:
      if ((v36 & (v36 - 1)) != 0)
      {
        if (v35 >= v36)
        {
          v12 = v35 % v36;
        }

        else
        {
          v12 = v35;
        }
      }

      else
      {
        v12 = (v36 - 1) & v35;
      }

      goto LABEL_124;
    }

    v38 = *(v27 + 38);
    if (v38 == 1)
    {
      v68 = *(*(v27 + 8) + 72);
      v84 = v68;
      if (!v68)
      {
        goto LABEL_152;
      }

      v69 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 53, v68);
      if (!v69)
      {
        operator new();
      }

      v42 = v69[3];
      v41 = v69[4];
      if (!v41)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v38 != 2)
      {
        if (!*(v27 + 1297))
        {
          goto LABEL_152;
        }

        v70 = (*(**(v27 + 8) + 480))(*(v27 + 8), 0);
        if (!v70)
        {
          goto LABEL_152;
        }

        v71 = *(v70 + 23);
        if (v71 < 0)
        {
          v71 = *(v70 + 8);
        }

        if (!v71)
        {
          goto LABEL_152;
        }

        v72 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(this + 32, v70);
        if (!v72)
        {
          operator new();
        }

        v73 = v72[6];
        v41 = v72[7];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        md::LabelBase::setDedupingGroup(v27, v73);
LABEL_149:
        if (v41)
        {
          v80 = v41;
LABEL_151:
          std::__shared_weak_count::__release_shared[abi:nn200100](v80);
        }

LABEL_152:
        *(this + 758) = 1;
        return;
      }

      v39 = (*(**(v27 + 8) + 160))(*(v27 + 8));
      v84 = v39;
      if (!v39)
      {
        goto LABEL_152;
      }

      v40 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(this + 46, v39);
      if (!v40)
      {
        operator new();
      }

      v42 = v40[3];
      v41 = v40[4];
      if (!v41)
      {
LABEL_144:
        md::LabelBase::setDedupingGroup(v27, v42);
        goto LABEL_149;
      }
    }

    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_144;
  }

  v15 = v13[6];
  v14 = v13[7];
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  *a1 = v15;
  a1[1] = v14;
}

void sub_1B2BD3600(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 40) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 32);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 40) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

void sub_1B2BD48AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  v20 = *(v18 + 1344);
  *(v18 + 1344) = 0;
  if (v20)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v20);
  }

  v21 = *(v18 + 1304);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](a10, 0);
  v22 = *(v18 + 1200);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(v18 + 1136);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  v24 = *(v18 + 1120);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(v18 + 1104);
  *(v18 + 1104) = 0;
  if (v25)
  {
    MEMORY[0x1B8C62190](v25, 0x1000C4057661CB1);
  }

  v26 = *(v18 + 1096);
  *(v18 + 1096) = 0;
  if (v26)
  {
    MEMORY[0x1B8C62190](v26, 0x1000C4015B1EB14);
  }

  if (*(v18 + 912) == 1)
  {
    v27 = *(v18 + 888);
    if (v27)
    {
      *(v18 + 896) = v27;
      operator delete(v27);
    }
  }

  v28 = *(v18 + 760);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(v18 + 744);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = *(v18 + 728);
  *(v18 + 728) = 0;
  if (v30)
  {
    MEMORY[0x1B8C62190](v30, 0x1000C4057661CB1);
  }

  v31 = *(v18 + 720);
  *(v18 + 720) = 0;
  if (v31)
  {
    MEMORY[0x1B8C62190](v31, 0x1000C4015B1EB14);
  }

  v32 = *(v18 + 488);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(v18 + 408);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(v18 + 368);
  *(v18 + 368) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *a11;
  *a11 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(v18 + 352);
  *(v18 + 352) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(v18 + 328);
  *(v18 + 328) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  v38 = *(v18 + 320);
  *(v18 + 320) = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  v39 = *(v18 + 304);
  *(v18 + 304) = 0;
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = *(v18 + 296);
  *(v18 + 296) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *a12;
  *a12 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v18 + 112);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  v43 = *(v18 + 96);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  *(v18 + 24) = a13;
  v44 = *(v18 + 40);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v45);
  _Unwind_Resume(a1);
}

double md::LabelPoint::coordinate(float64x2_t *this, uint64_t a2)
{
  if (*(a2 + 45) == 1)
  {
    if (*(a2 + 40) == 3.4028e38)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = *(a2 + 40);
    }

    v5 = *(a2 + 24) * 6.28318531;
    v6 = exp(*(a2 + 32) * 6.28318531 + -3.14159265);
    v11 = atan(v6);
    v7 = fmod(v5, 6.28318531);
    v8 = fmod(v7 + 6.28318531, 6.28318531);
    v9.f64[0] = v11;
    v9.f64[1] = v8;
    *this = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v9);
  }

  else
  {
    geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(a2, this);
    if (*(a2 + 40) == 3.4028e38)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = *(a2 + 40);
    }
  }

  result = v4;
  this[1].f64[0] = v4;
  return result;
}

float md::PointLabelFeatureElement::extendedPosition(md::PointLabelFeatureElement *this, uint64_t a2)
{
  if (*(a2 + 64) != 3.4028e38 || (*(a2 + 100) & 1) != 0 || (*(a2 + 108) & 1) != 0 || (result = *(a2 + 112), result != 0.0))
  {
    operator new();
  }

  *this = 0;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,mdm::zone_mallocator>>::__find_equal<std::pair<unsigned long long,md::LabelIdentifier>>(uint64_t a1, uint64_t **a2, unint64_t a3, unsigned int a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 32);
        v9 = *(v7 + 10);
        v10 = v9 > a4;
        if (v8 != a3)
        {
          v10 = v8 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v11 = v9 < a4;
      v12 = v8 == a3;
      v13 = v8 < a3;
      if (v12)
      {
        v13 = v11;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_13:
  *a2 = v7;
  return result;
}

_OWORD *std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>(mdm::zone_mallocator *a1, unint64_t a2, unsigned int a3, _OWORD **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 1);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v7 = v6;
        v8 = v6[4];
        v9 = *(v7 + 10);
        v10 = v9 > a3;
        if (v8 != a2)
        {
          v10 = v8 > a2;
        }

        if (!v10)
        {
          break;
        }

        v6 = *v7;
        v11 = v7;
        if (!*v7)
        {
          goto LABEL_13;
        }
      }

      v12 = v9 < a3;
      v13 = v8 == a2;
      v14 = v8 < a2;
      if (v13)
      {
        v14 = v12;
      }

      if (!v14)
      {
        return v7;
      }

      v11 = v7 + 1;
      v6 = v7[1];
      if (!v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v11 = (a1 + 8);
LABEL_13:
    v15 = mdm::zone_mallocator::instance(a1);
    v16 = pthread_rwlock_rdlock((v15 + 32));
    if (v16)
    {
      geo::read_write_lock::logFailure(v16, "read lock", v17);
    }

    v18 = malloc_type_zone_malloc(*v15, 0x40uLL, 0x102004081FDBCCDuLL);
    atomic_fetch_add((v15 + 24), 1u);
    geo::read_write_lock::unlock((v15 + 32));
    v18[2] = **a4;
    *(v18 + 6) = 0;
    *(v18 + 7) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v7;
    *v11 = v18;
    v19 = **a1;
    v20 = v18;
    if (v19)
    {
      *a1 = v19;
      v20 = *v11;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 1), v20);
    ++*(a1 + 3);
  }

  return v18;
}

uint64_t std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>(uint64_t **a1, unint64_t a2, uint64_t *a3)
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
        return 0;
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

    v12 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x10200409B2CA512uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v13 = a3[1];
    v12[4] = *a3;
    v12[5] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *v12 = 0;
    v12[1] = 0;
    v12[2] = v7;
    *v6 = v12;
    v14 = **a1;
    if (v14)
    {
      *a1 = v14;
      v12 = *v6;
    }

    std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v12);
    a1[3] = (a1[3] + 1);
    return 1;
  }
}

uint64_t md::LabelMapTile::addLabel(uint64_t a1, unint64_t *a2)
{
  result = std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::Label>,std::shared_ptr<md::Label> const&>((a1 + 416), *a2, a2);
  if (result)
  {
    v4 = *a2;

    return md::Label::incTileRefCount(v4);
  }

  return result;
}

uint64_t *md::Label::incTileRefCount(uint64_t *this)
{
  v1 = this;
  if (!atomic_fetch_add(this + 1384, 1u) && !*(this + 844))
  {
    *(this + 1295) = -1;
    this = md::Label::updateStateMachineForStaging(this, 0, 37);
  }

  *(v1 + 1349) = 0;
  v1[164] = 0;
  return this;
}

void md::Label::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 24))(a3, a1);
  v6 = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 48);
  md::LabelPoint::coordinate(__p, v6);
  *(a1 + 128) = *__p;
  *(a1 + 144) = v38;
  v7 = *(v6 + 40);
  v8 = v7 != 3.4028e38;
  if (v7 == 3.4028e38)
  {
    v7 = 0.0;
  }

  *(a1 + 188) = v7;
  *(a1 + 192) = v8;
  if (*(*(a2 + 232) + 17) == 1)
  {
    v9 = (*(**(a1 + 8) + 112))(*(a1 + 8), a1 + 48);
    v10 = md::LabelPoint::mercatorPoint(v9);
    *(a1 + 664) = *v10;
    *(a1 + 672) = v10[1];
  }

  if (*(a1 + 1291) == 1)
  {
    v11 = *(a1 + 8);
    v12 = *(a2 + 3369) + *(a3 + 9);
    v13 = atomic_load((a2 + 3368));
    v14 = md::PointLabelFeature::elementAtZoom(v11, *(a1 + 48), (v12 - v13) & ~((v12 - v13) >> 31));
    if (v14 && (v15 = v14, *(v14 + 128) == 1))
    {
      v16 = *(a1 + 704);
      if (!v16)
      {
        operator new();
      }

      *v16 = *(v15 + 80);
      *(v16 + 8) = *(v15 + 88);
      *(v16 + 16) = *(v15 + 129);
    }

    else
    {
      v17 = *(a1 + 704);
      if (!v17)
      {
        goto LABEL_14;
      }

      *(a1 + 704) = 0;
      MEMORY[0x1B8C62190](v17, 0x1000C4057661CB1);
    }

    *(a1 + 1382) = 1;
  }

LABEL_14:
  if (*(a2 + 3022) == 1)
  {
    v18 = *(a3 + 336);
    if (*(a1 + 64) == v18)
    {
      goto LABEL_24;
    }

    v19 = *(a3 + 344);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    v20 = *(a1 + 72);
    *(a1 + 64) = v18;
    *(a1 + 72) = v19;
    if (!v20)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!*(a1 + 64))
  {
    goto LABEL_24;
  }

  v20 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v20)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

LABEL_23:
  ++*(a1 + 96);
LABEL_24:
  v21 = *(a3 + 304);
  if (*(a1 + 80) != v21)
  {
    v22 = *(a3 + 312);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v23 = *(a1 + 88);
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    }

    ++*(a1 + 100);
  }

  if (*(a1 + 1291) == 1)
  {
    v24 = *(a1 + 8);
    v25 = *(v24 + 440);
    if (v25)
    {
      v26 = v24 + 440;
      v27 = *(a1 + 48);
      v28 = v26;
      do
      {
        v29 = *(v25 + 32);
        v30 = v29 >= v27;
        v31 = v29 < v27;
        if (v30)
        {
          v28 = v25;
        }

        v25 = *(v25 + 8 * v31);
      }

      while (v25);
      if (v28 != v26 && v27 >= *(v28 + 32))
      {
        v32 = *(v28 + 40);
        v33 = *(v28 + 48);
        if (v32 != v33 && (*(v28 + 147) & 1) != 0)
        {
          v34 = (v33 - v32) >> 3;
          if (!(v34 >> 59))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::PointLabelZoomPosition>>(v34);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }
      }
    }

    LOBYTE(__p[0]) = 0;
    v35 = (a1 + 864);
    if (*(a1 + 888))
    {
      v36 = *v35;
      if (*v35)
      {
        *(a1 + 872) = v36;
        operator delete(v36);
      }

      *(a1 + 888) = 0;
    }

    *(a1 + 861) = -1;
  }
}

void sub_1B2BD5878(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double md::StandardLabelMapTile::assignWorldPointToLabel(md::StandardLabelMapTile *this, md::Label *a2)
{
  v4 = (*(**(a2 + 1) + 120))(*(a2 + 1), a2 + 48, *(this + 9), *(this + 70));
  v5 = md::LabelPoint::mercatorPoint(v4);
  v6 = *(v5 + 8);
  v7 = *v5 + *(this + 40);
  v12[2] = 0;
  *v12 = v7;
  v12[1] = v6;
  v11[0] = 0;
  v11[1] = 0;
  v11[2] = 0x3FF0000000000000;
  v8 = v4[10];
  v9 = v8 != 3.4028e38;
  if (v8 == 3.4028e38)
  {
    v8 = 0.0;
  }

  return md::Label::setWorldPoint(a2, v12, v11, LODWORD(v8) | (v9 << 32));
}

char *md::PointLabelFeature::labelPointWithElevationUpdate(md::LabelPoint *a1, unsigned int *a2, int a3, md::PointLabelFeatureBase *this)
{
  v4 = *(a1 + 55);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *a2;
  v6 = a1 + 440;
  do
  {
    v7 = *(v4 + 8);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != a1 + 440 && v5 >= *(v6 + 8))
  {
    if (this)
    {
      if ((v6[146] & 1) == 0)
      {
        md::PointLabelFeatureBase::updatePointElevation(this, (v6 + 148), (v6 + 72), this);
      }
    }

    return v6 + 72;
  }

  else
  {
LABEL_9:
    md::LabelPoint::NullPoint(a1);
    return &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
  }
}

double md::Label::setWorldPoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(a1 + 188) = a4;
  *(a1 + 192) = BYTE4(a4);
  *(a1 + 859) = BYTE4(a4) & 1;
  do
  {
    *(a1 + 496 + v4) = *(a2 + v4);
    v4 += 8;
  }

  while (v4 != 24);
  v5 = 0;
  v6 = *&a4;
  if ((a4 & 0x100000000) == 0)
  {
    v6 = 0.0;
  }

  v7 = *(a1 + 232) * v6;
  *(a1 + 680) = v7;
  do
  {
    *(&v11 + v5) = *(a3 + v5) * v7;
    v5 += 8;
  }

  while (v5 != 24);
  v8 = 0;
  v9 = v12;
  *(a1 + 568) = v11;
  *(a1 + 584) = v9;
  do
  {
    result = *(a3 + v8);
    *(a1 + 544 + v8) = result;
    v8 += 8;
  }

  while (v8 != 24);
  return result;
}

uint64_t md::LabelRouteCollisionInfo::collisionInfoForZoom(md::LabelRouteCollisionInfo *this, unsigned int a2)
{
  if (a2 >> 1 >= 8)
  {
    v2 = 8;
  }

  else
  {
    v2 = a2 >> 1;
  }

  v3 = *(*this + 8 * v2);
  if (!v3)
  {
    operator new();
  }

  return v3 + 8;
}

void sub_1B2BD61C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollisionPath>(v5, v4);
  }

  return a1;
}

void std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelCollisionPath>(v2, v1);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>>(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>,gdc::LayerDataRequestKeyPair*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 8;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 += 15;
      *(v5 - 8) = v8;
      v5 = gdc::LayerDataRequestKey::LayerDataRequestKey(v5, (v6 + 1)) + 120;
      v6 = v7;
    }

    while (v7 != a2);
    do
    {
      v9 = v4[3];
      if (v9 != v4[5])
      {
        free(v9);
      }

      v4 += 15;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gdc::LayerDataRequestKeyPair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 120;
    v4 = *(v2 - 96);
    if (v4 == *(v2 - 80))
    {
      v2 -= 120;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL md::PointLabelFeatureBase::setFlexZone(md::PointLabelFeatureBase *this, unsigned __int8 a2)
{
  v2 = *(this + 244);
  if (v2 != a2)
  {
    *(this + 244) = a2;
  }

  return v2 != a2;
}

uint64_t md::MapTileData::estimatedCost(md::MapTileData *this)
{
  v1 = *(this + 86);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

void md::Label::~Label(md::Label *this)
{
  *this = &unk_1F2A476D0;
  *(this + 5) = &unk_1F2A47728;
  if (*(this + 483) == 1)
  {
    *(*(this + 57) + 285) = 1;
  }

  atomic_fetch_add(md::Label::_totalLabels, 0xFFFFFFFF);
  v2 = *(this + 165);
  *(this + 165) = 0;
  if (v2)
  {
    std::default_delete<md::LabelPartTransferResource>::operator()[abi:nn200100](v2);
  }

  v3 = *(this + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](this + 158, 0);
  v4 = *(this + 147);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 139);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 137);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 135);
  *(this + 135) = 0;
  if (v7)
  {
    MEMORY[0x1B8C62190](v7, 0x1000C4057661CB1);
  }

  v8 = *(this + 134);
  *(this + 134) = 0;
  if (v8)
  {
    MEMORY[0x1B8C62190](v8, 0x1000C4015B1EB14);
  }

  if (*(this + 888) == 1)
  {
    v9 = *(this + 108);
    if (v9)
    {
      *(this + 109) = v9;
      operator delete(v9);
    }
  }

  v10 = *(this + 92);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 90);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 88);
  *(this + 88) = 0;
  if (v12)
  {
    MEMORY[0x1B8C62190](v12, 0x1000C4057661CB1);
  }

  v13 = *(this + 87);
  *(this + 87) = 0;
  if (v13)
  {
    MEMORY[0x1B8C62190](v13, 0x1000C4015B1EB14);
  }

  v14 = *(this + 58);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(this + 48);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 43);
  *(this + 43) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 42);
  *(this + 42) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 41);
  *(this + 41) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 38);
  *(this + 38) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(this + 37);
  *(this + 37) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(this + 35);
  *(this + 35) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(this + 34);
  *(this + 34) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(this + 33);
  *(this + 33) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v25 = *(this + 9);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  *this = &unk_1F2A3C020;
  v26 = *(this + 2);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }
}

{
  md::Label::~Label(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 4);
    if ((v7 + 1) > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x124924924924924)
    {
      v10 = 0x249249249249249;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v10);
    }

    v11 = 112 * v7;
    gdc::LayerDataRequestKey::LayerDataRequestKey(v11, a2);
    v18 = (v11 + 112);
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = a1[2];
    v16 = v18;
    *(a1 + 1) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v17[0] = v14;
    v17[1] = v14;
    result = std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(v17);
    v6 = v16;
  }

  else
  {
    result = gdc::LayerDataRequestKey::LayerDataRequestKey(v3, a2);
    v6 = result + 112;
  }

  a1[1] = v6;
  return result;
}

uint64_t std::vector<gdc::LayerDataRequestKeyPair>::push_back[abi:nn200100](uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0x222222222222222)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xEEEEEEEEEEEEEEEFLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>>(v10);
    }

    v11 = 120 * v7;
    *v11 = *a2;
    v5 = 120 * v7 + 120;
    gdc::LayerDataRequestKey::LayerDataRequestKey(v11 + 8, (a2 + 1));
    v12 = a1[1];
    v13 = v11 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKeyPair>,gdc::LayerDataRequestKeyPair*>(*a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v5;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<gdc::LayerDataRequestKeyPair>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 15);
    result = gdc::LayerDataRequestKey::LayerDataRequestKey((v4 + 1), (a2 + 1));
  }

  a1[1] = v5;
  return result;
}

uint64_t *std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = (v2 + 24);
    std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void gdc::LayerDataRequest::~LayerDataRequest(gdc::LayerDataRequest *this)
{
  v3 = *(this + 15);
  v4 = *(this + 16);
  v2 = (this + 120);
  while (v3 != v4)
  {
    for (i = *(v3 + 24); i; i = *i)
    {
      v6 = *(this + 24);
      v14 = (i + 2);
      v7 = std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>((v6 + 8), i + 16, &v14);
      v7[15] = (v7[15] - 1);
    }

    v3 += 48;
  }

  v8 = *(this + 18);
  v9 = *(this + 19);
  while (v8 != v9)
  {
    for (j = *(v8 + 24); j; j = *j)
    {
      v11 = *(this + 24);
      v14 = (j + 2);
      v12 = std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>((v11 + 8), j + 16, &v14);
      v12[15] = (v12[15] - 1);
    }

    v8 += 48;
  }

  v14 = (this + 168);
  std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = (this + 144);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v14 = v2;
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  v13 = *(this + 2);
  if (v13 != *(this + 4))
  {
    free(v13);
  }
}

uint64_t md::RouteAnnotationLabelFeature::facingVector(uint64_t a1)
{
  if (*(a1 + 380) == 1)
  {
    return *(a1 + 384);
  }

  else
  {
    return 0;
  }
}

void std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 6;
        std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(v4 - 5);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<gdc::LayerDataRequestKeyPair>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 120)
  {
    v4 = *(i - 96);
    if (v4 != *(i - 80))
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<gdc::LayerDataWithWorld>::__emplace_hint_unique_key_args<gdc::LayerDataWithWorld,gdc::LayerDataWithWorld const&>(*a1, *(a1 + 8), *a2, *(a2 + 16), a2);
  *(a1 + 8) = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 104);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 104);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v10 == v4)
    {
      if (gdc::LayerDataRequestKey::operator==(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 104);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 104);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 1);
    if (v4 == v10)
    {
      if (gdc::LayerDataRequestKey::operator==(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v6 > 1)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t md::RouteAnnotationLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 256);
  *a2 = *(this + 248);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::LabelBase::setDedupingGroup(md::LabelBase *this, md::LabelDedupingGroup *a2)
{
  *(this + 3) = a2;
  v5 = *(a2 + 2);
  v4 = *(a2 + 3);
  if (v5 >= v4)
  {
    v7 = *(a2 + 1);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v22[4] = a2 + 32;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[8 * v11];
    v14 = &v13[8 * v8];
    *v14 = this;
    v6 = v14 + 8;
    v16 = *(a2 + 1);
    v17 = *(a2 + 2) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(a2 + 1);
    *(a2 + 1) = v18;
    *(a2 + 2) = v6;
    v20 = *(a2 + 3);
    *(a2 + 3) = v15;
    v22[2] = v19;
    v22[3] = v20;
    v22[0] = v19;
    v22[1] = v19;
    std::__split_buffer<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    *v5 = this;
    v6 = v5 + 1;
  }

  *(a2 + 2) = v6;
  return (*(*a2 + 40))(a2, this);
}

uint64_t geo::small_vector_base<md::OcclusionTest>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[10];
      if (v4 != v2[12])
      {
        free(v4);
      }

      v5 = v2[1];
      if (v5 != v2[3])
      {
        free(v5);
      }

      v2 += 31;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != *(a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t md::LabelFeature::dedupingFeatureID(md::LabelFeature *this)
{
  if ((*(*this + 176))(this) || (*(*this + 160))(this))
  {
    return 4;
  }

  result = (*(*this + 168))(this);
  if (result)
  {
    (*(*this + 168))(this);
    return 3;
  }

  return result;
}

void md::BaseMapTileDataRenderable::BaseMapTileDataRenderable(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6)
{
  *a1 = &unk_1F2A4BA20;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 255;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = a4;
  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_((a1 + 224));
}

void sub_1B2BD7240(_Unwind_Exception *exception_object)
{
  v3 = v1[33];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = v1[31];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[29];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***std::__hash_table<md::LabelFeatureID,std::hash<md::LabelFeatureID>,std::equal_to<md::LabelFeatureID>,geo::allocator_adapter<md::LabelFeatureID,mdm::zone_mallocator>>::find<md::LabelFeatureID>(void *a1, unsigned __int8 a2, uint64_t **a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (&a3[8 * a2 - 0xC3910C8D016B07DLL] + (a2 >> 2) - 3) ^ a2;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (&a3[8 * a2 - 0xC3910C8D016B07DLL] + (a2 >> 2) - 3) ^ a2;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v4 == v9)
    {
      if (*(result + 16) == a2 && result[3] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

float64_t md::BaseMapTileDataRenderable::_setupLocalBasisForTiled(md::BaseMapTileDataRenderable *this, const md::MapTileData *a2)
{
  v4 = 1 << *(a2 + 169);
  v5 = 1.0 / v4;
  v6 = v5 * *(a2 + 44);
  v7 = v5 * (v4 + ~*(a2 + 43));
  v8 = v6 + v5;
  *(this + 8) = v6;
  *(this + 9) = v7;
  *(this + 10) = v6 + v5;
  *(this + 11) = v7 + v5;
  v9 = *(a2 + 168);
  *(this + 33) = *(a2 + 177);
  *(this + 24) = v9;
  if (*(this + 56))
  {
    v10 = *(this + 56);
    *(this + 8) = v6 + v10;
    *(this + 10) = v8 + v10;
  }

  if (*(this + 384) == 1)
  {
    v11 = geo::OrientedBox<double,3u,double,double>::operator=(this + 272, a2 + 200);
    if ((*(*a2 + 40))(a2, v11))
    {
      {
        *&qword_1EB829F58 = 0u;
        *&algn_1EB829F60[24] = 0u;
        unk_1EB829F98 = 0u;
        unk_1EB829F88 = 0u;
        *&algn_1EB829F60[8] = 0u;
        unk_1EB829F48 = 0u;
        unk_1EB829F38 = 0u;
        qword_1EB829FA8 = 0x3FF0000000000000;
        md::BaseMapTileDataRenderable::_setupLocalBasisForTiled(md::MapTileData const*)::kTileSkirtsFactorMatrix = 0x3FF00029F16B11C7;
        qword_1EB829F58 = 0x3FF00029F16B11C7;
        qword_1EB829F80 = 0x3FF0000000000000;
      }

      v12 = 0;
      v13 = (a2 + 352);
      do
      {
        v14 = 0;
        v15 = &md::BaseMapTileDataRenderable::_setupLocalBasisForTiled(md::MapTileData const*)::kTileSkirtsFactorMatrix;
        do
        {
          v16 = 0;
          v17 = 0.0;
          v18 = v13;
          do
          {
            v19 = *v18;
            v18 += 4;
            v17 = v17 + *&v15[v16++] * v19;
          }

          while (v16 != 4);
          *(&v41[2 * v14++] + v12) = v17;
          v15 += 4;
        }

        while (v14 != 4);
        ++v12;
        ++v13;
      }

      while (v12 != 4);
      v20 = v45;
      *(this + 10) = v44;
      *(this + 11) = v20;
      v21 = v47;
      *(this + 12) = v46;
      *(this + 13) = v21;
      v22 = v41[1];
      *(this + 6) = v41[0];
      *(this + 7) = v22;
      *&v23.f64[0] = v42;
      v24 = v43;
      *(this + 8) = v42;
      *(this + 9) = v24;
    }

    else
    {
      for (i = 0; i != 128; i += 8)
      {
        v23.f64[0] = *(a2 + i + 352);
        *(this + i + 96) = v23.f64[0];
      }
    }
  }

  else
  {
    v25 = (*(*a2 + 40))(a2);
    v26 = *(this + 11);
    if (v25)
    {
      v27.f64[0] = *(this + 10);
      *(this + 104) = 0u;
      *(this + 120) = 0u;
      *(this + 9) = 0u;
      *(this + 10) = 0u;
      *(this + 23) = 0;
      v27.f64[1] = v26;
      v28 = *(this + 4);
      v29 = vsubq_f64(v27, v28);
      v30 = vmulq_f64(vmaxnmq_f64(v29, 0), vdupq_n_s64(0x3FF00029F16B11C7uLL));
      __asm { FMOV            V3.2D, #0.5 }

      v23 = vmlaq_f64(v28, _Q3, vsubq_f64(v29, v30));
      *(this + 17) = *&v30.f64[1];
      *(this + 12) = *&v30.f64[0];
      *(this + 22) = *&v30.f64[0];
      *(this + 12) = v23;
    }

    else
    {
      v37 = *(this + 8);
      v38 = *(this + 9);
      v39 = *(this + 10) - v37;
      *(this + 12) = v39;
      *(this + 104) = 0u;
      *(this + 120) = 0u;
      *(this + 17) = v26 - v38;
      *(this + 9) = 0u;
      *(this + 10) = 0u;
      *(this + 22) = v39;
      *(this + 23) = 0;
      *(this + 24) = v37;
      *(this + 25) = v38;
      v23.f64[0] = 0.0;
    }

    *(this + 13) = xmmword_1B33B0740;
  }

  return v23.f64[0];
}

uint64_t *md::Label::createNextPart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1335) = 1;
  LOBYTE(v40[0]) = 1;
  memset(v40 + 1, 0, 7);
  v6 = *(a1 + 264);
  if (v6 || (v6 = *(a1 + 272)) != 0)
  {
    (*(*v6 + 440))(v6, v40);
  }

  if (a3)
  {
    if (*(a3 + 8) == 1)
    {
      LOBYTE(v40[0]) = *a3;
    }

    if (*(a3 + 9) == 1)
    {
      HIBYTE(v40[0]) = *(a3 + 1);
    }

    if (*(a3 + 10) == 1)
    {
      LOBYTE(v40[1]) = *(a3 + 2);
    }

    if (*(a3 + 11) == 1)
    {
      HIBYTE(v40[1]) = *(a3 + 3);
    }

    v40[3] = *(a3 + 6);
  }

  if ((*(**(*(a2 + 168) + 32) + 24))(*(*(a2 + 168) + 32)))
  {
    LOBYTE(v40[0]) = 0;
  }

  atomic_load((a1 + 1330));
  v7 = *(a1 + 8);
  v8 = *(a1 + 48);
  v9 = atomic_load((a1 + 1328));
  result = (*(*v7 + 568))(v7, v8, 0, v9 & 1, 0);
  v11 = *result;
  if (*result)
  {
    v12 = result;
    v13 = *(*(a1 + 8) + 132);
    *(a1 + 1295) = *(a1 + 404);
    v14 = *(a2 + 3336);
    *(a1 + 52) = v13;
    *(a1 + 56) = v14;
    *(a1 + 1371) = 0;
    *(a1 + 1373) = 0;
    *(a1 + 1376) = 0;
    if (*(a1 + 1338) == 1)
    {
      *(a1 + 1338) = 0;
      *(a1 + 1375) = 4;
      v15 = atomic_load((a1 + 1328));
      if (v15)
      {
        if ((*(a1 + 1333) & 1) != 0 || (v16 = atomic_load((a1 + 1328)), (v16) && (*(a1 + 1333) & 1) == 0 || (*(a1 + 1333)) && *(a1 + 846) != 1)
        {
          v17 = 4;
          v18 = 3;
        }

        else
        {
          v17 = 2;
          v18 = 1;
        }

        *(a1 + 1376) = v18;
        *(a1 + 1377) = v17;
        *(a1 + 857) = 1;
        goto LABEL_51;
      }

      v24 = atomic_load((a1 + 1331));
      if (v24)
      {
        *(a1 + 1373) = 1;
        *(a1 + 858) = 1;
        *(a1 + 1376) = *(a1 + 1377);
        goto LABEL_51;
      }
    }

    else
    {
      v19 = *(v11 + 296);
      if (!v19)
      {
        v20 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v11, 0);
        v19 = *v20;
        *(v11 + 296) = *v20;
      }

      if (*(v19 + 88) == 11)
      {
        v21 = *(a1 + 1272);
        if (v21)
        {
          if ((v22 = *(v21 + 52), v22 == 1) || v22 == 2 && *(*(*v21 + 424) + 336) - *(v21 + 104) < 0.5 || *(a1 + 1361) == 1)
          {
            if (*(a2 + 3703) == 1)
            {
              *(a1 + 1375) = 2308;
LABEL_51:
              v26 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a1, *v12, v40);
              v27 = *(a1 + 264);
              *(a1 + 264) = v26;
              if (v27)
              {
                v27 = (*(*v27 + 8))(v27);
                v26 = *(a1 + 264);
              }

              *(a1 + 1361) = 0;
              if (v26 || (v34 = mdm::zone_mallocator::instance(v27), v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v34, 0x240uLL), bzero(v26, 0x240uLL), v35 = md::LabelPart::LabelPart(v26), *v26 = &unk_1F2A47848, v36 = *(a1 + 264), *(a1 + 264) = v26, !v36) || (result = (*(*v36 + 8))(v36, v35), (v26 = *(a1 + 264)) != 0))
              {
                (*(*v26 + 16))(v26, a1);
                v28 = *(a1 + 272);
                if (v28)
                {
                  v29 = *(a1 + 264);
                  v30 = (*(*v28 + 432))(v28);
                  (*(*v29 + 424))(v29, v30);
                }

                if (*(a1 + 1363) & 1) != 0 || (v31 = atomic_load((a1 + 1328)), (v31))
                {
                  (*(**(a1 + 264) + 824))(*(a1 + 264), 3);
                }

                (*(**(a1 + 264) + 72))(*(a1 + 264), a2);
                result = (*(**(a1 + 264) + 536))(&v38);
                v32 = v38;
                *(a1 + 312) = v38;
                v33 = v39;
                *(a1 + 316) = v39;
                *(a1 + 317) = v32;
                *(a1 + 321) = v33;
                atomic_load((a1 + 1330));
              }

              return result;
            }
          }
        }
      }

      if (*(a2 + 3407) == 1)
      {
        v23 = 2;
LABEL_50:
        *(a1 + 1375) = v23;
        goto LABEL_51;
      }

      if ((*(a1 + 1333) & 1) == 0)
      {
        v25 = atomic_load((a1 + 1328));
        if ((v25 & 1) != 0 && (*(a1 + 1333) & 1) == 0 && *(a1 + 846) != 1)
        {
          v23 = 1;
          *(a1 + 850) = 1;
          goto LABEL_50;
        }
      }

      if (*(a1 + 1383) == 1)
      {
        *(a1 + 1375) = 1797;
        *(a1 + 1383) = 0;
        *(a1 + 480) = 1;
        *(a1 + 1372) = 257;
        goto LABEL_51;
      }

      if (*(a1 + 1392) != -1 && (*(a1 + 1343) & 1) == 0)
      {
        *(a1 + 1375) = 4;
        if ((*(**(a1 + 8) + 360))(*(a1 + 8)))
        {
          v37 = 6;
        }

        else
        {
          v37 = 5;
        }

        *(a1 + 1376) = v37;
        *(a1 + 1373) = 1;
        goto LABEL_51;
      }
    }

    v23 = 3;
    goto LABEL_50;
  }

  return result;
}

void md::MapTileDataRenderable<md::DaVinciTrafficTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C0B0;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A4BA20;
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 29);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

{
  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

md::LabelPart *md::PointLabelFeature::newRootPart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v137[4] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v10 = *(a3 + 392);
  v11 = atomic_load((a2 + 3368));
  v12 = md::PointLabelFeature::elementAtZoom(a1, *(a3 + 48), (v10 - v11) & ~((v10 - v11) >> 31));
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v125 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137[3] = 0;
  LOBYTE(__p.__begin_) = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v120 = a2;
  v121 = a3;
  v122 = a4;
  v123 = a1 + 87;
  begin = (*(*a1 + 688))(&v117, a1);
  if (v125 == v118)
  {
    if (v125)
    {
      begin = __p.__begin_;
      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      __p = v117;
      memset(&v117, 0, sizeof(v117));
    }
  }

  else if (v125)
  {
    begin = __p.__begin_;
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    v125 = 0;
  }

  else
  {
    __p = v117;
    memset(&v117, 0, sizeof(v117));
    v125 = 1;
  }

  v113 = a5;
  if (v118 == 1)
  {
    begin = v117.__begin_;
    if (v117.__begin_)
    {
      v117.__end_ = v117.__begin_;
      operator delete(v117.__begin_);
    }
  }

  v126 = v13;
  if (*(a3 + 804) >= *(a3 + 204))
  {
    v16 = *(a4 + 250);
  }

  else
  {
    v16 = *(a4 + 250) | 2;
  }

  if (v125 == 1)
  {
    v17 = *(a4 + 296);
    if (!v17)
    {
      begin = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a4, 0);
      v17 = *begin;
      *(a4 + 296) = *begin;
    }

    v18 = *(v17 + 97);
    if (v18)
    {
      if ((v125 & 1) == 0)
      {
        v107 = std::__throw_bad_optional_access[abi:nn200100]();
        std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v137);
        if (SHIBYTE(v136) < 0)
        {
          operator delete(v134);
        }

        if (v125 == 1 && __p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        _Unwind_Resume(v107);
      }

      if (v18 - 1 < (__p.__end_ - __p.__begin_))
      {
        std::vector<unsigned int>::resize(&__p, v18 - 1);
      }
    }
  }

  if ((v16 & 1) == 0)
  {
    v112 = 0;
    v19 = 0;
    goto LABEL_56;
  }

  v20 = *(a4 + 296);
  if (!v20)
  {
    v21 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a4, 0);
    v20 = *v21;
    *(a4 + 296) = *v21;
  }

  v112 = *(v20 + 88) == 9;
  if ((*(a3 + 1358) & 1) == 0)
  {
    v22 = atomic_load((a3 + 1328));
    if (v22 & 1) != 0 && (*(a3 + 1333))
    {
      goto LABEL_48;
    }
  }

  v23 = v122;
  v24 = *(v122 + 34);
  if (!v24)
  {
    v25 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v122);
    v24 = *v25;
    *(v23 + 34) = *v25;
  }

  if ((*(v24 + 263) & 0x8000000000000000) != 0)
  {
    if (!*(v24 + 248))
    {
      goto LABEL_48;
    }
  }

  else if (!*(v24 + 263))
  {
    goto LABEL_48;
  }

  v27 = v121;
  v26 = v122;
  v28 = v120;
  v29 = *(v122 + 34);
  if (!v29)
  {
    v30 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v122);
    v29 = *v30;
    *(v26 + 34) = *v30;
  }

  md::LabelStyle::namedIcon(&v117, v26, v28, v27, v29 + 240, 1);
  if (v117.__begin_)
  {
    v32 = mdm::zone_mallocator::instance(v31);
    v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v32, 0x350uLL);
    md::PointIconLabelPart::PointIconLabelPart(v19, &v117, v120, v121, v122, 0);
  }

  else
  {
    v19 = 0;
  }

  if (v117.__end_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v117.__end_);
  }

  if (!v19)
  {
LABEL_48:
    begin = (*(*a1 + 672))(a1, &v120);
    v19 = begin;
    if (!begin)
    {
      goto LABEL_56;
    }
  }

  begin = (*(*v19 + 176))(v19, 1);
  if ((*(a3 + 1333) & 1) == 0)
  {
    v33 = atomic_load((a3 + 1328));
    if ((v33 & 1) != 0 && (*(a3 + 1333) & 1) == 0 && *(a3 + 846) != 1)
    {
      *(v19 + 567) = 1;
    }
  }

  if (*(a1 + 692) == 1)
  {
    *(v19 + 567) = *(a2 + 3705) ^ 1;
    *(v19 + 568) = 1;
  }

LABEL_56:
  if ((v16 & 2) == 0)
  {
LABEL_57:
    v34 = 0;
    goto LABEL_58;
  }

  v34 = 0;
  v36 = *(a4 + 144);
  if (v36 <= 5)
  {
    if (*(a4 + 144) && v36 != 2)
    {
      if (v36 != 5)
      {
        goto LABEL_58;
      }

      v37 = md::PointLabelFeature::resolveAnnotationLayout(8, a4);
      begin = md::PointLabelFeature::createAnnotationPart(a1, &v120, 1, v37);
      goto LABEL_169;
    }

    v38 = (*a1 + 704);
    goto LABEL_70;
  }

  if (v36 - 10 < 2)
  {
    v39 = (*(*a1 + 728))(a1, &v120);
    v40 = 1;
LABEL_72:
    begin = md::PointLabelFeature::newTextPart(a1, &v120, v39, v40);
    v41 = begin;
    if (begin)
    {
      v42 = md::PointLabelFeature::resolveAnnotationLayout(v16, a4);
      v43 = md::PointLabelFeature::createAnnotationPart(a1, &v120, 1, v42);
      v44 = *(a4 + 312);
      if (!v44)
      {
        v45 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a4);
        v44 = *v45;
        *(a4 + 312) = *v45;
      }

      v46 = *(v44 + 51);
      begin = md::PointLabelFeature::createAnnotationPart(a1, &v120, 2, v46);
      v47 = v46 == 6 || v42 == 6;
      v48 = v112;
      if (v47)
      {
        v48 = 1;
      }

      v112 = v48;
      if (v43 | begin)
      {
        v49 = v43;
        v50 = begin;
        v51 = mdm::zone_mallocator::instance(begin);
        v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v51, 0x2B8uLL);
        md::StackLabelPart::StackLabelPart(v34, 0, 0, 0, 0);
        (*(*v52 + 176))(v52, 6);
        begin = md::CompositeLabelPart::addLabelPart(v34, v41);
        if (v49)
        {
          begin = md::CompositeLabelPart::addLabelPart(v34, v49);
        }

        if (v50)
        {
          begin = md::CompositeLabelPart::addLabelPart(v34, v50);
        }
      }

      else
      {
        v34 = v41;
      }

      v35 = v19 != 0;
LABEL_88:
      v53 = *(a3 + 256);
      v54 = 131;
      if (v53 == 3)
      {
        v54 = 133;
      }

      v47 = v53 == 2;
      v55 = 132;
      if (!v47)
      {
        v55 = v54;
      }

      v56 = *(v13 + v55);
      v111 = a1[69] + 32 * v56;
      if (!v35 || *(a4 + 242) || (v85 = *v111, *v111 == *(v111 + 8)))
      {
        *v115 = 150994944;
        v115[4] = 0;
      }

      else
      {
        *v115 = *v85;
        v115[2] = 0;
        *&v115[3] = *(v85 + 3);
      }

      v57 = mdm::zone_mallocator::instance(begin);
      v58 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v57, 0x3C8uLL);
      v15 = v58;
      v59 = v58 + 664;
      v60 = (a3 + 317);
      v110 = *v113;
      if (*v113)
      {
        v60 = v115;
      }

      v109 = v60;
      v61 = *(v13 + 130);
      md::LabelPart::LabelPart(v58);
      *(v62 + 592) = 0;
      v63 = 0uLL;
      *(v62 + 576) = 0u;
      *(v62 + 608) = 0;
      *(v62 + 612) = 0;
      *(v62 + 616) = 0;
      *(v62 + 624) = 0;
      *(v62 + 628) = 1;
      *(v62 + 630) = 0;
      *v62 = &unk_1F2A5B868;
      *(v62 + 632) = 0u;
      *(v62 + 648) = 0u;
      *v59 = xmmword_1B33B0730;
      *(v62 + 680) = 0;
      *(v62 + 684) = 0u;
      *(v62 + 700) = 0u;
      *(v59 + 52) = xmmword_1B33B0730;
      *(v62 + 732) = 0;
      v108 = v62 + 736;
      *(v62 + 752) = 0;
      *(v62 + 736) = 0u;
      *(v62 + 768) = 0u;
      *(v62 + 784) = -1;
      *(v59 + 121) = 0;
      *(v62 + 792) = 0;
      v114 = (v62 + 800);
      *(v62 + 816) = 0;
      *(v62 + 800) = 0u;
      *(v62 + 832) = 150994944;
      *(v62 + 836) = 0;
      *(v62 + 840) = 9;
      v64 = *(a4 + 244);
      v65 = *(a4 + 248);
      *(v62 + 842) = *(a4 + 251);
      *(v62 + 843) = v65;
      *(v59 + 181) = v64;
      *(v62 + 847) = 9;
      *(v62 + 850) = 0x8000;
      *(v62 + 852) = 0x80;
      v66 = *(a4 + 272);
      if (!v66)
      {
        v67 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(a4);
        v66 = *v67;
        *(a4 + 272) = *v67;
        v63 = 0uLL;
      }

      *(v15 + 853) = *(v66 + 64);
      *(v15 + 854) = 0;
      *(v15 + 856) = 0;
      v68 = *(a4 + 253);
      *(v15 + 857) = v68;
      *(v15 + 858) = v68;
      v69 = *(a4 + 164);
      *(v15 + 860) = v69 > 0.0;
      v70 = 1065353216;
      *(v15 + 864) = 1065353216;
      *(v15 + 888) = v63;
      *(v15 + 904) = v63;
      *(v15 + 920) = 0;
      *(v15 + 921) = 1;
      v71 = *(a4 + 250);
      *(v15 + 922) = v71;
      *(v15 + 923) = *(a4 + 144);
      *(v15 + 924) = *(v66 + 70);
      *(v15 + 941) = 0;
      *(v15 + 925) = v63;
      *(v15 + 943) = v61;
      *(v15 + 944) = v56;
      *(v15 + 945) = 0;
      *(v15 + 947) = 2;
      *(v15 + 948) = 1065353216;
      *(v15 + 952) = 0x100000001000001;
      *(v15 + 960) = *(a3 + 1353);
      if (v68 == 5)
      {
        if ((*(a3 + 164) & 1) == 0)
        {
          v72 = 4;
LABEL_105:
          *(v15 + 858) = v72;
        }
      }

      else if (!v68 && v69 > 0.0)
      {
        v72 = 1;
        goto LABEL_105;
      }

      if (*(a3 + 1348) == 1 && *(a2 + 3176) == 1)
      {
        *(v15 + 954) = 1;
      }

      v73 = *(a2 + 424);
      if (v19)
      {
        md::CompositeLabelPart::addLabelPart(v15, v19);
        *(v15 + 925) = 1;
      }

      else if (v71)
      {
        md::LabelIconStyleMonitor::initialize(v108, 1, a4);
      }

      if (v34)
      {
        md::CompositeLabelPart::addLabelPart(v15, v34);
        *(v15 + 930) = (*(*v34 + 680))(v34);
        *(v15 + 926) = 1;
        *(v15 + 955) = *(a2 + 3664);
        v74 = *(v15 + 922);
        *(v15 + 927) = (v74 & 0x1C) != 0;
        *(v15 + 928) = (v74 & 4) != 0;
        *(v15 + 942) = 1;
        md::AnnotationMonitorProperties::init((v15 + 933), a4);
        v75 = *(*(a3 + 8) + 480);
        if (v75)
        {
          v76 = *(v75 + 88);
          *(v15 + 946) = v76;
          if (v76)
          {
            *(v15 + 947) = v76;
          }
        }

        else
        {
          *(v15 + 946) = 0;
        }
      }

      v77 = *(v15 + 858);
      *(v15 + 565) = *(v15 + 858) != 0;
      if (v77)
      {
        operator new();
      }

      if (!v19 || *(a4 + 242) || *(v15 + 842) == 5)
      {
        *(v15 + 921) = 1;
        *(v15 + 958) = 1;
        if (v34)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v90 = *v111;
        v91 = *(v111 + 8);
        v92 = *(v111 + 24) == 1 && 0xCCCCCCCCCCCCCCCDLL * (v91 - v90) < 2;
        *(v15 + 921) = v92;
        *(v15 + 958) = v90 == v91;
        if (v34)
        {
          if (v90 != v91)
          {
            LOWORD(v117.__begin_) = *v90;
            BYTE2(v117.__begin_) = 0;
            *(&v117.__begin_ + 3) = *(v90 + 3);
            goto LABEL_125;
          }

LABEL_124:
          LODWORD(v117.__begin_) = 150994944;
          BYTE4(v117.__begin_) = 0;
LABEL_125:
          md::CaptionedIconLabelPart::populatePlacement(v15, v15 + 837, &v117, 1);
          v79 = *(a4 + 246);
          *(v15 + 856) = ((v79 & 0xAA) != 0) | *(v111 + 25) & 1;
          if (*(v15 + 958) != 1 || v79)
          {
            md::CaptionedIconLabelPart::populatePlacement(v15, v15 + 832, v109, v110);
          }

          else
          {
            *(v15 + 832) = *(v15 + 837);
            *(v15 + 836) = *(v15 + 841);
          }

          v80 = *(v15 + 832);
          v82 = v80 == 3 || v80 == 100;
          *(v15 + 855) = v82;
          *(v15 + 920) = (v80 & 0xFE) == 2;
          if (v80 == 5)
          {
            LOBYTE(v83) = md::CaptionedIconLabelPart::evaluateFeatureNormalTextPosition(a3, v73, v78);
            goto LABEL_145;
          }

          if ((v80 & 0xFE) == 2)
          {
            v84 = v73[472] + *(v15 + 836);
            if (*(v15 + 856) != 1)
            {
              v83 = ((v84 + 32) >> 5) & 6;
              goto LABEL_145;
            }
          }

          else
          {
            v83 = *(v15 + 835);
            if (v83 != 10)
            {
              goto LABEL_145;
            }

            LOBYTE(v84) = *(v15 + 836);
          }

          LOBYTE(v83) = (v84 + 16) >> 5;
LABEL_145:
          *(v15 + 847) = v83;
          (*(*v34 + 376))(v34);
          v86 = *(v15 + 833);
          v87 = *(v15 + 847);
          if (v86 > 7)
          {
            if (v86 != 8)
            {
              if (v86 == 16)
              {
                if (v87 == 6)
                {
                  v86 = 8;
                }

                else
                {
                  v86 = 1;
                }

                if (v87 == 2)
                {
                  v86 = 4;
                }

                goto LABEL_160;
              }

              goto LABEL_164;
            }

            v88 = &diagonalDownLabelAnchors;
          }

          else
          {
            if (v86 == 1)
            {
LABEL_165:
              *(v15 + 848) = v86;
LABEL_176:
              if (*(v15 + 955) == 1)
              {
                if (*(v15 + 921))
                {
                  md::CaptionedIconLabelPart::initAlternatePlacements(v15);
                }

                else
                {
                  v93 = *(v15 + 800);
                  *(v15 + 808) = v93;
                  v94 = *v111;
                  v95 = *(v111 + 8);
                  if (*v111 != v95)
                  {
                    do
                    {
                      *v116 = 150994944;
                      v116[4] = 0;
                      v96 = md::CaptionedIconLabelPart::populatePlacement(v15, v116, v94, 1);
                      v97 = v116[0];
                      if (__PAIR64__(v116[1], v116[0]) != __PAIR64__(*(v15 + 833), *(v15 + 832)) || v116[3] != *(v15 + 835) || v116[3] == 10 && v116[4] != *(v15 + 836))
                      {
                        v98 = *(v15 + 816);
                        if (v93 >= v98)
                        {
                          v99 = 0xCCCCCCCCCCCCCCCDLL * (v93 - *v114);
                          v100 = v99 + 1;
                          if (v99 + 1 >= 0x3333333333333334)
                          {
                            std::__throw_bad_array_new_length[abi:nn200100]();
                          }

                          v101 = 0xCCCCCCCCCCCCCCCDLL * (v98 - *v114);
                          if (2 * v101 > v100)
                          {
                            v100 = 2 * v101;
                          }

                          if (v101 >= 0x1999999999999999)
                          {
                            v102 = 0x3333333333333333;
                          }

                          else
                          {
                            v102 = v100;
                          }

                          v119 = v15 + 824;
                          if (v102)
                          {
                            v103 = mdm::zone_mallocator::instance(v96);
                            v104 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPlacement>(v103, v102);
                          }

                          else
                          {
                            v104 = 0;
                          }

                          v105 = v104 + 5 * v99;
                          v117.__begin_ = v104;
                          v117.__end_ = v105;
                          v118 = v104 + 5 * v102;
                          *v105 = v97;
                          v105[1] = v116[1];
                          v105[2] = 0;
                          *(v105 + 3) = *&v116[3];
                          v117.__end_cap_.__value_ = (v105 + 5);
                          std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__swap_out_circular_buffer(v114, &v117);
                          v93 = *(v15 + 808);
                          std::__split_buffer<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator> &>::~__split_buffer(&v117);
                        }

                        else
                        {
                          *v93 = *v116;
                          *(v93 + 2) = 0;
                          *(v93 + 3) = *&v116[3];
                          v93 += 5;
                        }

                        *(v15 + 808) = v93;
                      }

                      v94 += 5;
                    }

                    while (v94 != v95);
                    std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::shrink_to_fit(v114);
                  }
                }

                md::CaptionedIconLabelPart::updateSnapToDefaultPlacement(v15);
              }

              goto LABEL_200;
            }

            if (v86 != 4)
            {
LABEL_164:
              LOBYTE(v86) = 1;
              goto LABEL_165;
            }

            v88 = &diagonalUpLabelAnchors;
          }

          v89 = &v88[2 * v87];
          if (*v89 && v89[1])
          {
LABEL_160:
            *(v15 + 848) = v86;
            if ((v86 & 0xC) != 0)
            {
              if (v86 == 4)
              {
                v70 = 0x3F12D5E73F51B3F2;
              }

              else if (v86 == 8)
              {
                v70 = 0xBF12D5E73F51B3F2;
              }

              *(v15 + 864) = v70;
              (*(*v34 + 384))(v34);
            }

            goto LABEL_176;
          }

          goto LABEL_164;
        }
      }

LABEL_200:
      *(v15 + 561) = v112;
      goto LABEL_201;
    }

    goto LABEL_57;
  }

  if (v36 != 6)
  {
    if (v36 != 9)
    {
      goto LABEL_58;
    }

    v38 = (*a1 + 712);
LABEL_70:
    v39 = (*v38)(a1, &v120);
    v40 = 0;
    goto LABEL_72;
  }

  begin = md::PointLabelFeature::createGraphicAnnotationPart(a1, &v120, 1, 1);
LABEL_169:
  v34 = begin;
LABEL_58:
  v35 = v19 != 0;
  if (v19 | v34)
  {
    goto LABEL_88;
  }

  v15 = 0;
LABEL_201:
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v137);
  if (SHIBYTE(v136) < 0)
  {
    operator delete(v134);
  }

  if (v125 == 1 && __p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return v15;
}