void md::NavLabel::worldPointForDisplay(md::NavLabel *this, const md::NavContext *a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (a2)
    {
      if (!v3[1])
      {
        v4 = **(*(a2 + 4) + 144);
        (*(*v3 + 64))(&v8);
        md::AnchorManager::newAnchorAtCoordinate(&v9, v4, &v8, 0);
      }
    }

    (*(*v3 + 48))(v3);
  }

  else if (a2)
  {
    v5 = *(a2 + 3);
    v6 = *(v5 + 52);
    v7 = *(v5 + 8);

    md::NavContext::worldPoint(v7, this + 14, v6);
  }
}

__n128 md::NavLabelPart::layoutForDisplayWithNavContext(uint64_t a1, uint64_t a2, _DWORD *a3, float *a4, __n128 result)
{
  v5 = *(a1 + 640);
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = (a1 + 760);
    *(a1 + 714) = *(a1 + 556);
    v13 = a1 + 312;
    do
    {
      v14 = *(a1 + 320 + 4 * v11);
      v15 = *(v13 + 4 * v11);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v14 >= v15);
    if (v14 < v15)
    {
      v16 = atomic_load((v5 + 144));
      if (v16)
      {
        v17 = *(v5 + 64);
      }

      else
      {
        v17 = xmmword_1B33B0730;
      }

      *v31 = v17;
      md::CollisionObject::resetWithRects((a1 + 312), 1u);
      md::CollisionObject::addRect(v13, v31);
    }

    *(a1 + 520) = *a3;
    *(a1 + 524) = a3[1];
    *(a1 + 344) = *a3;
    *(a1 + 348) = a3[1];
    md::CollisionObject::setupShapeData(v13);
    v18 = atomic_load((*(a1 + 640) + 143));
    if ((v18 & 1) == 0)
    {
      if ((*(a1 + 565) & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    v19 = *(a1 + 640);
    v20 = atomic_load((v19 + 144));
    if (v20)
    {
      v21 = *(v19 + 48);
    }

    else
    {
      v21 = xmmword_1B33B0730;
    }

    *v31 = v21;
    v22 = *(a1 + 565);
    if (*(a1 + 565))
    {
      v23 = a4;
    }

    else
    {
      v23 = (a1 + 520);
    }

    gm::Box<float,2>::operator+=(v31, v23);
    *&v24 = *&v31[2];
    *&v25 = *v31;
    result.n128_u64[0] = __PAIR64__(v31[1], v31[2]);
    *(&v25 + 1) = __PAIR64__(v31[1], v31[2]);
    *(&v24 + 1) = __PAIR64__(v31[3], v31[0]);
    *v12 = v25;
    v12[1] = v24;
    if (v22 == 1)
    {
LABEL_20:
      v28 = 0;
      v29 = 0;
      v30 = 1;
      md::LabelPart::generateModelMatrixForMeshPositioningMode(v31, &v28, *(a2 + 24), (*(a1 + 32) + 32), *(a1 + 830), 1, *(a1 + 872), *(*(a1 + 32) + 72), *(*(a1 + 32) + 68));
      v26 = 0;
      v27 = *(a1 + 880);
      do
      {
        result = *&v31[v26];
        *(v27 + v26 * 4) = result;
        v26 += 4;
      }

      while (v26 != 32);
    }
  }

  return result;
}

void geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::insert(float *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = v5;
  v8[0] = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(v8, v4, a2[2]);
  v9[4] = a2[9];
  v10 = *(a2 + 5);
  v6 = a2[13];
  v11 = a2[12];
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  if (std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>(a1 + 3, &v7))
  {
    std::__list_imp<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry const&>(&v7);
  }

  std::__list_imp<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry const&>(&v7);
}

uint64_t md::NavLabel::animateLabel(uint64_t this, float a2)
{
  v2 = *(this + 380);
  v3 = COERCE_FLOAT(atomic_load((this + 288)));
  if (v2 == 1)
  {
    if (v3 > 0.0)
    {
      v4 = a2 * 2.5;
      v5 = *(this + 288);
      do
      {
        v6 = v5;
        v7 = v5;
        atomic_compare_exchange_strong((this + 288), &v7, COERCE_UNSIGNED_INT(v5 - v4));
        v5 = v7;
      }

      while (LODWORD(v7) != LODWORD(v6));
      v8 = COERCE_FLOAT(atomic_load((this + 288)));
      if (v8 <= 0.0)
      {
        v9 = 0;
LABEL_14:
        atomic_store(v9, (this + 288));
        *(this + 292) = 0;
      }
    }
  }

  else if (v3 < 1.0)
  {
    v10 = *(*(this + 304) + 640);
    if (v10)
    {
      v11 = atomic_load((v10 + 143));
      if (v11)
      {
        v12 = a2 * 2.5;
        v13 = *(this + 288);
        do
        {
          v14 = v13;
          v15 = v13;
          atomic_compare_exchange_strong((this + 288), &v15, COERCE_UNSIGNED_INT(v13 + v12));
          v13 = v15;
        }

        while (LODWORD(v15) != LODWORD(v14));
        v16 = COERCE_FLOAT(atomic_load((this + 288)));
        if (v16 >= 1.0)
        {
          v9 = 1065353216;
          goto LABEL_14;
        }
      }
    }
  }

  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<gdc::ResourceKey,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3 != __p[5])
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t md::MapNavLabeler::needsLayout(id *this)
{
  if (*(*this + 45))(this) && ([this[7] needsLayout])
  {
    return 1;
  }

  if (this[13] && *(this[90] + 3) && *(this + 712) == 1)
  {
    *(this + 712) = 0;
    return 1;
  }

  return 0;
}

void std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::erase(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != a2);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v8 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
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

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *a2;
    }
  }

  *v6 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<gdc::ResourceKey,void *>>>::operator()[abi:nn200100](1, a2);
}

float md::WorldSpaceLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, md::LabelAnimator *a3, __int32 *a4, __int32 *a5)
{
  if (*(a1 + 565) == 1)
  {
    md::LabelPart::generateModelMatrixForMeshPositioningMode(v14, *(a1 + 16) + 152, a2 + 432, (*(a1 + 16) + 408), *(a1 + 633), 1, *(a1 + 632), *(*(a1 + 32) + 72), *(*(a1 + 32) + 68));
    v10 = 0;
    v11 = *(a1 + 640);
    do
    {
      *(v11 + v10) = *&v14[v10];
      v10 += 16;
    }

    while (v10 != 128);
  }

  if (md::CompositeLabelPart::layoutForDisplay(a1, a2, a3, a4, a5) == 37)
  {
    v13 = *(**(a1 + 576) + 24);
    *(a1 + 392) = *(v13 + 392);
    *(a1 + 396) = *(v13 + 396);
    *(a1 + 400) = *(v13 + 400);
    result = *(v13 + 404);
    *(a1 + 404) = result;
  }

  return result;
}

uint64_t md::CompositeLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, md::LabelAnimator *a3, __int32 *a4, __int32 *a5)
{
  v9 = a1[72];
  v10 = a1[73];
  if (v9 == v10)
  {
LABEL_5:
    for (i = xmmword_1B33B0730; v9 != v10; ++v9)
    {
      v13 = 0;
      v14 = *(*v9 + 24);
      v15 = v14 + 312;
      v16 = v14 + 320;
      p_i = &i;
      v18 = 1;
      do
      {
        v19 = v18;
        *p_i = fminf(*(v15 + 4 * v13), *p_i);
        *(&i + v13 + 2) = fmaxf(*(&i + v13 + 2), *(v16 + 4 * v13));
        p_i = &i + 1;
        v13 = 1;
        v18 = 0;
      }

      while ((v19 & 1) != 0);
    }

    md::CollisionObject::setLocalBounds(&a1[39], &i);
    a1[68].i32[0] = *a5;
    a1[68].i32[1] = a5[1];
    a1[65].i32[0] = *a4;
    a1[65].i32[1] = a4[1];
    a1[43].i32[0] = *a4;
    a1[43].i32[1] = a4[1];
    md::CollisionObject::setupShapeData(&a1[39]);
    if (a1[70].i8[5])
    {
      a1[53] = (*(*a1 + 144))(a1);
    }

    md::CompositeLabelPart::updateAnimationForDisplay(a1, a3);
    return 37;
  }

  else
  {
    while (1)
    {
      result = (*(**v9 + 120))(*v9, a2, a3, a4, a5);
      if (result != 37)
      {
        break;
      }

      if (++v9 == v10)
      {
        v9 = a1[72];
        v10 = a1[73];
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t RouteAnnotationIconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  if (*(a2 + 441))
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  (*(*a1 + 824))(a1, v10);
  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  return 37;
}

uint64_t md::IconLabelPart::setRenderPass(uint64_t result, char a2)
{
  *(result + 557) = a2;
  *(result + 712) = a2;
  return result;
}

float md::CollisionObject::setLocalBounds(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    free(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    free(v5);
    *(a1 + 168) = 0;
  }

  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

float md::CompositeLabelPart::updateAnimationForDisplay(float32x2_t *a1, uint64_t a2)
{
  if (a1[76].i8[4] == 1)
  {
    a1[76].i8[4] = 0;
  }

  if (a1[78].i8[0] == 1)
  {
    a1[78].i8[0] = 0;
  }

  if (a2)
  {
    v2 = *(a2 + 24);
    v3 = *(a2 + 32);
    if (0x8E38E38E38E38E39 * ((v3 - v2) >> 4) <= a1[70].u8[3])
    {
      if (v2 == v3 || (*(a2 + 89) & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      v2 += 18 * a1[70].u8[3];
    }

    if (v2)
    {
      v4 = v2[9];
      if (v4)
      {
        result = fmaxf(fminf(v2[10].f32[0] + (*(**&v4 + 32 * *(*&v4 + 32) + 8) * (v2[10].f32[1] - v2[10].f32[0])), 1.0), 0.0);
        a1[76].f32[0] = result;
        a1[76].i8[4] = 1;
      }

      v6 = v2[11];
      if (v6)
      {
        result = *(**&v6 + 32 * *(*&v6 + 32) + 8);
        a1[77] = vmla_n_f32(v2[12], vsub_f32(v2[13], v2[12]), result);
        a1[78].i8[0] = 1;
      }
    }
  }

  return result;
}

uint64_t md::NavLabel::pushToRenderModel(uint64_t result)
{
  v1 = COERCE_FLOAT(atomic_load((result + 288)));
  v2 = *(result + 304);
  if (v2)
  {
    v3 = *(v2 + 640);
    if (v3)
    {
      v4 = atomic_load((v3 + 143));
      if ((v4 & 1) != 0 && (*(result + 272) * v1) > 0.0)
      {
        return (*(**(result + 304) + 128))();
      }
    }
  }

  return result;
}

float md::CompositeLabelPart::pixelBoundsForDisplay(md::CompositeLabelPart *this)
{
  v18 = xmmword_1B33B0730;
  v1 = *(this + 72);
  v2 = *(this + 73);
  if (v1 == v2)
  {
    return 3.4028e38;
  }

  do
  {
    v3 = (*(**v1 + 264))(*v1);
    v4 = 0;
    v15 = v3;
    v16 = v5;
    v17[0] = v6;
    v17[1] = v7;
    v8 = &v18;
    v9 = &v15;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = *v9;
      v13 = *v8;
      *(&v18 + v4 + 2) = fmaxf(*(&v18 + v4 + 2), *&v17[v4]);
      *v8 = fminf(v12, v13);
      v9 = &v16;
      v8 = &v18 + 1;
      v4 = 1;
      v10 = 0;
    }

    while ((v11 & 1) != 0);
    ++v1;
  }

  while (v1 != v2);
  return *&v18;
}

uint64_t md::CompositeLabelPart::pushToRenderModel(uint64_t result, uint64_t a2, float a3)
{
  if (*(result + 612) == 1)
  {
    a3 = *(result + 608);
  }

  v5 = *(result + 576);
  v6 = *(result + 584);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = (*(*v7 + 128))(v7, a2, a3);
  }

  return result;
}

uint64_t non-virtual thunk tomd::MapNavLabeler::computeRoutePositionForPOI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 424);
  v6[0] = &unk_1F29EFAF8;
  v6[1] = v3;
  v6[2] = a1 - 8;
  v6[3] = v4;
  v6[4] = a1 + 128;
  return [*(a1 + 48) computeRoutePositionForPOIAtPixel:a2 currentPosition:a3 context:v6];
}

unint64_t gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 40 * ((v3 - a1[7]) >> 3);
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::LayerDataIndexLessThan &,gdc::LayerDataIndex *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        break;
      case 4:
        v19 = (a1 + 152);
        v20 = (a1 + 304);
        v21 = a2 - 152;
        {
          std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1 + 304, v21);
          {
            gdc::LayerDataRequestKey::LayerDataRequestKey(v28, a1 + 152);
            v22 = (a1 + 264);
            *&v34[4] = *(a1 + 268);
            *v34 = *(a1 + 264);
            *&v34[16] = *(a1 + 280);
            v34[24] = *(a1 + 288);
            v35 = *(a1 + 296);
            *(a1 + 152) = *(a1 + 304);
            *(a1 + 160) = *(a1 + 312);
            geo::small_vector_base<unsigned char>::copy((a1 + 168), (a1 + 320), (a1 + 200));
            v23 = *(a1 + 400);
            *(a1 + 232) = *(a1 + 384);
            *(a1 + 248) = v23;
            *(a1 + 264) = *(a1 + 416);
            *(a1 + 273) = *(a1 + 425);
            *(a1 + 296) = *(a1 + 448);
            *(a1 + 304) = v28[0];
            *(a1 + 312) = v29;
            if (v28 != v20)
            {
              geo::small_vector_base<unsigned char>::copy((a1 + 320), v30, (a1 + 352));
            }

            v24 = v33;
            *(a1 + 384) = v32;
            *(a1 + 400) = v24;
            *(a1 + 416) = *v34;
            *(a1 + 425) = *&v34[9];
            *(a1 + 448) = v35;
            if (v30[0] != v31)
            {
              free(v30[0]);
            }

            {
              gdc::LayerDataRequestKey::LayerDataRequestKey(v28, a1);
              *&v34[4] = *(a1 + 116);
              *v34 = *(a1 + 112);
              *&v34[16] = *(a1 + 128);
              v34[24] = *(a1 + 136);
              v35 = *(a1 + 144);
              *a1 = *(a1 + 152);
              *(a1 + 8) = *(a1 + 160);
              geo::small_vector_base<unsigned char>::copy((a1 + 16), (a1 + 168), (a1 + 48));
              v25 = *(a1 + 248);
              *(a1 + 80) = *(a1 + 232);
              *(a1 + 96) = v25;
              *(a1 + 112) = *v22;
              *(a1 + 121) = *(a1 + 273);
              *(a1 + 144) = *(a1 + 296);
              *(a1 + 152) = v28[0];
              *(a1 + 160) = v29;
              if (v28 != v19)
              {
                geo::small_vector_base<unsigned char>::copy((a1 + 168), v30, (a1 + 200));
              }

              v26 = v33;
              *(a1 + 232) = v32;
              *(a1 + 248) = v26;
              *v22 = *v34;
              *(a1 + 273) = *&v34[9];
              *(a1 + 296) = v35;
              if (v30[0] != v31)
              {
                free(v30[0]);
              }
            }
          }
        }

        return 1;
      case 5:
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 152;
    {
      std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, v5);
    }

    return 1;
  }

LABEL_11:
  v6 = a1 + 304;
  v7 = a1 + 456;
  if (a1 + 456 == a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v28, v7);
      *&v34[4] = *(v7 + 116);
      *v34 = *(v7 + 112);
      *&v34[16] = *(v7 + 128);
      v34[24] = *(v7 + 136);
      v35 = *(v7 + 144);
      v10 = v8;
      while (1)
      {
        v11 = v10;
        v12 = a1 + v10;
        *(v12 + 456) = *(a1 + v10 + 304);
        *(v12 + 464) = *(a1 + v10 + 312);
        geo::small_vector_base<unsigned char>::copy((a1 + v10 + 472), (a1 + v10 + 320), (a1 + v10 + 504));
        v13 = *(v12 + 400);
        *(v12 + 536) = *(v12 + 384);
        *(v12 + 552) = v13;
        v14 = (v12 + 416);
        *(v12 + 568) = *(v12 + 416);
        *(v12 + 577) = *(v12 + 425);
        *(v12 + 600) = *(v12 + 448);
        if (v11 == -304)
        {
          break;
        }

        v10 = v11 - 152;
        if ((v15 & 1) == 0)
        {
          v16 = a1 + v10 + 456;
          v14 = (a1 + v11 + 416);
          v17 = (a1 + v11 + 400);
          goto LABEL_19;
        }
      }

      v17 = (v12 + 400);
      v16 = a1;
LABEL_19:
      *v16 = v28[0];
      *(v16 + 8) = v29;
      if (v16 != v28)
      {
        geo::small_vector_base<unsigned char>::copy((v16 + 16), v30, (v16 + 48));
      }

      *(v16 + 80) = v32;
      v18 = *v34;
      *v17 = v33;
      *(v14 + 9) = *&v34[9];
      *v14 = v18;
      *(v16 + 144) = v35;
      if (v30[0] != v31)
      {
        free(v30[0]);
      }

      if (++v9 == 8)
      {
        return v7 + 152 == a2;
      }
    }

    v6 = v7;
    v8 += 152;
    v7 += 152;
    if (v7 == a2)
    {
      return 1;
    }
  }
}

void util::id_pool<geo::handle<md::AssociationItem>>::push(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  if (a2 < ((*(a1 + 32) - v4) >> 3))
  {
    v5 = *(v4 + 8 * a2);
    if (!((v5 ^ a2) >> 32))
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = a2;
      *(v4 + 8 * a2) = v5 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100](a1, v6);
    }
  }
}

uint64_t ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(void *a1, void *a2)
{
  v2 = *(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL);
  *(a1[4] + 8 * *(v2 + 8)) = *(a1[5] - 8);
  v3 = a1[4];
  v4 = a1[5];
  *(*(a1[1] + 8 * (*(v4 - 8) >> 6)) + 16 * (*(v4 - 8) & 0x3FLL) + 8) = *(v2 + 8);
  a1[5] = v4 - 8;
  *v2 = xmmword_1B33B06D0;
  return v3;
}

void std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::__erase_unique<md::ColorStyleCacheKey>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::__unordered_map_hasher<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,md::ColorStyleCacheKeyHasher,std::equal_to<md::ColorStyleCacheKey>,true>,std::__unordered_map_equal<md::ColorStyleCacheKey,std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>,std::equal_to<md::ColorStyleCacheKey>,md::ColorStyleCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorStyleCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleColor>>>>>::find<md::ColorStyleCacheKey>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void std::__hash_table<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::__unordered_map_hasher<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::hash<geo::handle<md::MaterialIDStorage>>,std::equal_to<geo::handle<md::MaterialIDStorage>>,true>,std::__unordered_map_equal<geo::handle<md::MaterialIDStorage>,std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>,std::equal_to<geo::handle<md::MaterialIDStorage>>,std::hash<geo::handle<md::MaterialIDStorage>>,true>,std::allocator<std::__hash_value_type<geo::handle<md::MaterialIDStorage>,md::MaterialKey>>>::__erase_unique<geo::handle<md::MaterialIDStorage>>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = *(*v3 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = *(v11 + 8);
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 %= *&v4;
        }
      }

      else
      {
        v12 &= *&v4 - 1;
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

void *ecs2::sparse_set<geo::handle<md::ConstantDataResource<ggl::DaVinci::MaterialStyle>>,64ul>::sparse_ptr_with_check(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 6;
  if (v3 >= (a2 - a1) >> 3)
  {
    return 0;
  }

  v4 = *(a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = (v4 + 16 * (a3 & 0x3F));
  if (*v5 == HIDWORD(a3))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23PassRouteLineDescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassRouteLineDescriptor>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassRouteLineDescriptor>(void)::metadata) = *(v3 + 4096);
}

uint64_t md::RouteAnnotationLabelFeature::updateDynamicStyling(md::RouteAnnotationLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v6 = (*(**(*(a2 + 21) + 32) + 96))(*(*(a2 + 21) + 32), this + 360, a3);
  v7 = *(this + 37);
  if (*(this + 38) == v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v6;
  v11 = HIBYTE(v6);
  v12 = v6;
  do
  {
    v13 = *(v7 + 8 * v9);
    if ([v13 shouldUpdateStyle])
    {
LABEL_4:
      v8 = 1;
      goto LABEL_5;
    }

    v14 = [v13 routeLegWhen];
    if (HIBYTE(v14) == v11 && (v14 & 0x100) != 0)
    {
      if (v10 != v14)
      {
        goto LABEL_4;
      }
    }

    else if (HIBYTE(v14) != v11)
    {
      goto LABEL_4;
    }

LABEL_5:
    v3 = v3 & 0xFFFFFFFFFFFF0000 | v12;
    [v13 setRouteLegWhen:v3];
    [v13 setShouldUpdateStyle:0];

    ++v9;
    v7 = *(this + 37);
  }

  while (v9 < (*(this + 38) - v7) >> 3);
  if (v8)
  {
    (*(*this + 552))(this, a2);
  }

  return 0;
}

uint64_t md::CompositeLabelPart::layoutForStaging(md::CompositeLabelPart *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(this + 72);
  v6 = *(this + 73);
  if (v5 == v6)
  {
LABEL_4:
    v11 = 37;
  }

  else
  {
    while (1)
    {
      v10 = (*(**v5 + 80))(*v5, a2, a3, a4);
      if (v10 != 37)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_4;
      }
    }

    v11 = v10;
  }

  md::CompositeLabelPart::updateCompositeStagingState(this);
  return v11;
}

uint64_t md::WorldSpaceLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = md::CompositeLabelPart::layoutForStaging(a1, a2, a3, a4);
  if (v5 == 37)
  {
    v6 = (*(***(a1 + 576) + 256))(**(a1 + 576));
    *(a1 + 152) = *v6;
    *(a1 + 156) = v6[1];
    *(a1 + 160) = v6[2];
    *(a1 + 164) = v6[3];
  }

  return v5;
}

void md::CompositeLabelPart::updateCompositeStagingState(md::CompositeLabelPart *this)
{
  v2 = xmmword_1B33B0730;
  v19 = xmmword_1B33B0730;
  v20 = xmmword_1B33B0730;
  v3 = *(this + 72);
  v4 = *(this + 73);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = (*(**v3 + 256))(*v3);
      v7 = 0;
      v8 = &v20;
      v9 = 1;
      do
      {
        v10 = v9;
        *v8 = fminf(*(v6 + 4 * v7), *v8);
        *(&v20 + v7 + 2) = fmaxf(*(&v20 + v7 + 2), *(v6 + 8 + 4 * v7));
        v8 = &v20 + 1;
        v7 = 1;
        v9 = 0;
      }

      while ((v10 & 1) != 0);
      v11 = 0;
      v12 = *(v5 + 24);
      v13 = v12 + 72;
      v14 = v12 + 80;
      v15 = &v19;
      v16 = 1;
      do
      {
        v17 = v16;
        *v15 = fminf(*(v13 + 4 * v11), *v15);
        *(&v19 + v11 + 2) = fmaxf(*(&v19 + v11 + 2), *(v14 + 4 * v11));
        v15 = &v19 + 1;
        v11 = 1;
        v16 = 0;
      }

      while ((v17 & 1) != 0);
      ++v3;
    }

    while (v3 != v4);
    v2 = v20;
  }

  v18 = v2;
  md::CollisionObject::setLocalBounds(this + 72, &v19);
  *(this + 152) = v18;
  if (*(this + 565))
  {
    *(this + 23) = (*(*this + 136))(this);
  }
}

uint64_t md::WorldSpaceLabelPart::needsCrossfade(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && (*(a1 + 634) & 1) == 0 && *(**(a1 + 32) + 253) != *(a1 + 631))
  {
    return 1;
  }

  v7 = *(a1 + 576);
  v8 = *(a1 + 584);
  if (v7 == v8)
  {
    return 0;
  }

  v9 = v7 + 8;
  do
  {
    result = (*(**(v9 - 8) + 768))(*(v9 - 8), a2, a3, a4);
    if (result)
    {
      break;
    }

    v11 = v9 == v8;
    v9 += 8;
  }

  while (!v11);
  return result;
}

void md::LabelMapTileCollisionInfo::addItemsToCollider(md::LabelManager *this, md::LabelManager *a2, md::LabelCollider *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (*(this + 23) != *(this + 24))
  {
    md::LabelMapTileCollisionInfo::pointsToScreen(v33, this, *(a2 + 53), *(*(a2 + 29) + 64));
    v6 = *(this + 23);
    v7 = *(this + 24);
    if (v6 != v7)
    {
      v8 = *(a2 + 44) * *(this + 8);
      v9 = v6 + 136;
      do
      {
        v10 = *(v9 + 128);
        v11 = *(v33[0] + 8 * v10);
        v12 = vsub_f32(*(v33[0] + 8 * (v10 + 1)), v11);
        v13 = vmul_f32(v12, v12);
        *v13.i32 = sqrtf(vaddv_f32(v13));
        v14 = COERCE_DOUBLE(vdiv_f32(v12, vdup_lane_s32(v13, 0)));
        if (*v13.i32 > 0.0)
        {
          v15 = v14;
        }

        else
        {
          v15 = COERCE_DOUBLE(1065353216);
        }

        *&v31 = *v13.i32 * 0.5;
        *(&v31 + 1) = v8;
        v16 = vmla_f32(v11, 0x3F0000003F000000, v12);
        *(&v31 + 1) = v16;
        v32 = v15;
        if (!*(v9 + 96))
        {
          md::CollisionObject::resetWithRects((v9 - 80), 1u);
          *(v9 + 96) = 1;
          *(v9 + 116) = 1;
          v16 = *(&v31 + 8);
          v15 = v32;
        }

        *(v9 - 64) = v15;
        v17 = *(v9 + 80);
        v30 = v31;
        v18 = vneg_f32(*&v31);
        v19 = v31;
        *v17 = v18;
        v17[1] = v19;
        *(v9 - 80) = v18.i32[0];
        *(v9 - 76) = v17->i32[1];
        *(v9 - 72) = v17[1].i32[0];
        *(v9 - 68) = v17[1].i32[1];
        *(v9 - 48) = v16;
        v20 = gm::OBRect<float>::axisAlignedBoundingRect(&v31);
        *v9 = v20;
        *(v9 + 4) = v21;
        *(v9 + 8) = v22;
        *(v9 + 12) = v23;
        *(v9 - 32) = v20;
        *(v9 - 28) = v21;
        *(v9 - 24) = v22;
        *(v9 - 20) = v23;
        v24 = *(v9 + 104);
        *&v25 = v30;
        *(&v25 + 1) = v30;
        *(v24 + 8) = v25;
        *v24 = *(v9 - 48);
        *(v24 + 4) = *(v9 - 44);
        *(v9 - 128) = v31;
        *(v9 - 112) = v15;
        v26 = v9 + 136;
        v9 += 272;
      }

      while (v26 != v7);
      v27 = *(this + 23);
      if (*(this + 24) != v27)
      {
        v28 = 0;
        v29 = 0;
        do
        {
          md::LabelCollider::addCollidableItem(a3, (v27 + v28));
          ++v29;
          v27 = *(this + 23);
          v28 += 272;
        }

        while (v29 < 0xF0F0F0F0F0F0F0F1 * ((*(this + 24) - v27) >> 4));
      }
    }

    std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v33);
  }
}

char *std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<float,2,1>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

void std::vector<gm::Matrix<float,2,1>,geo::allocator_adapter<gm::Matrix<float,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<float,2,1>>(v2, v1);
  }
}

uint64_t md::RouteAnnotationDedupingGroup::prepareForCollision(md::RouteAnnotationDedupingGroup *this, md::LabelManager *a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    while (((*(**v4 + 16))() & 1) != 0)
    {
      ++v4;
LABEL_4:
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    v6 = v5 - 1;
    while (v6 != v4)
    {
      v5 = v6;
      v7 = *v6--;
      if ((*(*v7 + 16))(v7))
      {
        v8 = *v4;
        *v4++ = *v5;
        *v5 = v8;
        goto LABEL_4;
      }
    }
  }

  v5 = v4;
LABEL_11:
  v9 = *(this + 1);
  v10 = (*(**(*(a2 + 21) + 32) + 8))(*(*(a2 + 21) + 32));
  v11 = 126 - 2 * __clz((v5 - v9) >> 3);
  if (v10)
  {
    *&v42[0] = a2;
    if (v5 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(v9->i64, v5, v42, v12, 1);
    memset(v42, 0, sizeof(v42));
    v43 = 1065353216;
    if (v5 != v9)
    {
      v13 = v9;
      do
      {
        v15 = (v13 + 1);
        v14 = *v13;
        if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v42, *v13))
        {
          v16 = 1;
        }

        else
        {
          v16 = v5 == v15;
        }

        if (!v16)
        {
          do
          {
            v44 = *v15;
            v17 = v44;
            v18 = (*(*v14 + 24))(v14);
            v19 = (*(*v17 + 24))(v17);
            v20 = 0;
            v21 = 1;
            while (*(v18 + 8 + 4 * v20) > *(v19 + 4 * v20) && *(v18 + 4 * v20) < *(v19 + 8 + 4 * v20))
            {
              v22 = v21;
              v21 = 0;
              v20 = 1;
              if ((v22 & 1) == 0)
              {
                std::__hash_table<md::LabelBase *,std::hash<md::LabelBase *>,std::equal_to<md::LabelBase *>,std::allocator<md::LabelBase *>>::__emplace_unique_key_args<md::LabelBase *,md::LabelBase *&>(v42, v17, &v44);
                break;
              }
            }

            ++v15;
          }

          while (v15 != v5);
        }

        ++v13;
      }

      while (v13 != v5);
    }

    v44 = a2;
    std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,false>(v9->i64, v5, &v44, v12, 1);
    v44 = v42;
    if (v5 != v9)
    {
      while (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v42, v9->i64[0]))
      {
        v9 = (v9 + 8);
        if (v9 == v5)
        {
          goto LABEL_51;
        }
      }

      v25 = (v5 - 1);
      while (1)
      {
        v26 = v25 - v9;
        if (v25 == v9)
        {
          break;
        }

        v27 = v25;
        v28 = *v25--;
        if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v42, v28))
        {
          v29 = v26 >> 3;
          v30 = (v26 >> 3) + 1;
          if (v29 < 3)
          {
            v31 = 0;
            v36 = 0;
          }

          else
          {
            if (v30 >= 0xFFFFFFFFFFFFFFFLL)
            {
              v31 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            v32 = MEMORY[0x1E69E5398];
            while (1)
            {
              v33 = operator new(8 * v31, v32);
              if (v33)
              {
                break;
              }

              v34 = v31 >> 1;
              v35 = v31 > 1;
              v31 >>= 1;
              if (!v35)
              {
                v36 = 0;
                v31 = v34;
                goto LABEL_49;
              }
            }

            v36 = v33;
          }

LABEL_49:
          std::__stable_partition_impl<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,std::__wrap_iter<md::LabelBase **>,long,std::pair<md::LabelBase **,long>>(v9, v27, &v44, v30, v36, v31);
          if (v36)
          {
            operator delete(v36);
          }

          break;
        }
      }
    }

LABEL_51:
    result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v42);
  }

  else
  {
    if (v5 == v9)
    {
      v23 = 0;
    }

    else
    {
      v23 = v11;
    }

    result = std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(v9, v5, v23, 1);
  }

  v37 = *(this + 2);
  v38 = *(this + 1);
  if (v38 != v37)
  {
    v39 = 0;
    v40 = *(this + 1);
    do
    {
      v41 = *v40++;
      *(v41 + 32) = v39++;
    }

    while (v40 != v37);
    *(this + 9) = *v38;
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  i = a2 - 1;
  v304 = a2 - 1;
  v307 = a2;
  v300 = a2 - 3;
  v301 = a2 - 2;
  j = a1;
  while (1)
  {
    v10 = j;
    v11 = v307;
    v12 = v307 - v10;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, v10 + 1, i, a3);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, v10 + 1, v10 + 2, i, a3);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, v10 + 1, v10 + 2, v10 + 3, i, a3);
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v141 = *(*i + 8);
        v142 = *(*v10 + 8);
        v143 = (*(*v141 + 656))(v141);
        v144 = (*(*v142 + 656))(v142);
        if (v143 == v144)
        {
          v145 = *(*(*a3 + 168) + 32);
          v146 = (*(*v145 + 72))(v145);
          v147 = vabdd_f64(v146, (*(*v141 + 648))(v141));
          v148 = *(*(*a3 + 168) + 32);
          v149 = (*(*v148 + 72))(v148);
          v150 = (*(*v142 + 648))(v142);
          v151 = v304;
          if (v147 >= vabdd_f64(v149, v150))
          {
            return;
          }
        }

        else
        {
          v275 = (*(*v141 + 656))(v141);
          v276 = (*(*v142 + 656))(v142);
          v151 = v304;
          if (v275 <= v276)
          {
            return;
          }
        }

        v277 = *v10;
        *v10 = *v151;
        *v151 = v277;
        return;
      }
    }

    v309 = v10;
    if (v12 <= 23)
    {
      break;
    }

    if (!a4)
    {
      if (v10 == v307)
      {
        return;
      }

      v180 = (v12 - 2) >> 1;
      v305 = v180;
      v311 = v307 - v10;
      while (1)
      {
        v181 = v180;
        if (v305 < v180)
        {
          goto LABEL_166;
        }

        v182 = (2 * v180) | 1;
        v183 = &v309[v182];
        if (2 * v180 + 2 >= v12)
        {
          goto LABEL_146;
        }

        v184 = *(*v183 + 8);
        v185 = *(v183[1] + 8);
        v186 = (*(*v184 + 656))(v184);
        if (v186 == (*(*v185 + 656))(v185))
        {
          break;
        }

        v192 = (*(*v184 + 656))(v184);
        if (v192 > (*(*v185 + 656))(v185))
        {
          goto LABEL_145;
        }

LABEL_146:
        v193 = *(*v183 + 8);
        v194 = *(v309[v181] + 8);
        v195 = (*(*v193 + 656))(v193);
        if (v195 == (*(*v194 + 656))(v194))
        {
          v196 = *(*(*a3 + 168) + 32);
          v197 = (*(*v196 + 72))(v196);
          v198 = vabdd_f64(v197, (*(*v193 + 648))(v193));
          v199 = *(*(*a3 + 168) + 32);
          v200 = (*(*v199 + 72))(v199);
          v201 = (*(*v194 + 648))(v194);
          v12 = v311;
          if (v198 < vabdd_f64(v200, v201))
          {
            goto LABEL_166;
          }
        }

        else
        {
          v202 = (*(*v193 + 656))(v193);
          v203 = (*(*v194 + 656))(v194);
          v12 = v311;
          if (v202 > v203)
          {
            goto LABEL_166;
          }
        }

        v303 = v309[v181];
        v309[v181] = *v183;
        if (v305 < v182)
        {
          v204 = v183;
          goto LABEL_165;
        }

        while (1)
        {
          v205 = 2 * v182;
          v182 = (2 * v182) | 1;
          v204 = &v309[v182];
          v206 = v205 + 2;
          if (v205 + 2 >= v12)
          {
            goto LABEL_158;
          }

          v207 = *(*v204 + 8);
          v208 = *(v204[1] + 8);
          v209 = (*(*v207 + 656))(v207);
          if (v209 != (*(*v208 + 656))(v208))
          {
            v215 = (*(*v207 + 656))(v207);
            if (v215 <= (*(*v208 + 656))(v208))
            {
              goto LABEL_158;
            }

LABEL_157:
            ++v204;
            v182 = v206;
            goto LABEL_158;
          }

          v210 = *(*(*a3 + 168) + 32);
          v211 = (*(*v210 + 72))(v210);
          v212 = vabdd_f64(v211, (*(*v207 + 648))(v207));
          v213 = *(*(*a3 + 168) + 32);
          v214 = (*(*v213 + 72))(v213);
          if (v212 < vabdd_f64(v214, (*(*v208 + 648))(v208)))
          {
            goto LABEL_157;
          }

LABEL_158:
          v216 = *(*v204 + 8);
          v217 = *(v303 + 8);
          v218 = (*(*v216 + 656))(v216);
          if (v218 == (*(*v217 + 656))(v217))
          {
            v219 = *(*(*a3 + 168) + 32);
            v220 = (*(*v219 + 72))(v219);
            v221 = vabdd_f64(v220, (*(*v216 + 648))(v216));
            v222 = *(*(*a3 + 168) + 32);
            v223 = (*(*v222 + 72))(v222);
            if (v221 < vabdd_f64(v223, (*(*v217 + 648))(v217)))
            {
              break;
            }

            goto LABEL_162;
          }

          v224 = (*(*v216 + 656))(v216);
          if (v224 > (*(*v217 + 656))(v217))
          {
            break;
          }

LABEL_162:
          *v183 = *v204;
          v183 = v204;
          v12 = v311;
          if (v305 < v182)
          {
            goto LABEL_165;
          }
        }

        v204 = v183;
        v12 = v311;
LABEL_165:
        *v204 = v303;
LABEL_166:
        v180 = v181 - 1;
        if (!v181)
        {
          v226 = v307;
          v225 = v309;
          while (1)
          {
            v227 = 0;
            v306 = *v225;
            v308 = v226;
            v228 = (v12 - 2) >> 1;
            v312 = v228;
            do
            {
              v229 = v225;
              v230 = &v225[v227];
              v225 = v230 + 1;
              v231 = 2 * v227;
              v227 = (2 * v227) | 1;
              v232 = v231 + 2;
              if (v231 + 2 >= v12)
              {
                goto LABEL_175;
              }

              v233 = v12;
              v235 = v230[2];
              v234 = v230 + 2;
              v236 = *(*(v234 - 1) + 8);
              v237 = *(v235 + 8);
              v238 = (*(*v236 + 656))(v236);
              if (v238 != (*(*v237 + 656))(v237))
              {
                v245 = (*(*v236 + 656))(v236);
                v246 = (*(*v237 + 656))(v237);
                v12 = v233;
                v228 = v312;
                if (v245 <= v246)
                {
                  goto LABEL_175;
                }

LABEL_174:
                v225 = v234;
                v227 = v232;
                goto LABEL_175;
              }

              v239 = *(*(*a3 + 168) + 32);
              v240 = (*(*v239 + 72))(v239);
              v241 = vabdd_f64(v240, (*(*v236 + 648))(v236));
              v242 = *(*(*a3 + 168) + 32);
              v243 = (*(*v242 + 72))(v242);
              v244 = (*(*v237 + 648))(v237);
              v12 = v233;
              v228 = v312;
              if (v241 < vabdd_f64(v243, v244))
              {
                goto LABEL_174;
              }

LABEL_175:
              *v229 = *v225;
            }

            while (v227 <= v228);
            v226 = v308 - 1;
            if (v225 == v308 - 1)
            {
              *v225 = v306;
              goto LABEL_191;
            }

            *v225 = *v226;
            *v226 = v306;
            v247 = (v225 - v309 + 8) >> 3;
            v248 = v247 - 2;
            if (v247 < 2)
            {
              goto LABEL_191;
            }

            v313 = v12;
            v249 = v248 >> 1;
            v250 = &v309[v248 >> 1];
            v251 = *(*v250 + 8);
            v252 = *(*v225 + 8);
            v253 = (*(*v251 + 656))(v251);
            if (v253 == (*(*v252 + 656))(v252))
            {
              v254 = *(*(*a3 + 168) + 32);
              v255 = (*(*v254 + 72))(v254);
              v256 = vabdd_f64(v255, (*(*v251 + 648))(v251));
              v257 = *(*(*a3 + 168) + 32);
              v258 = (*(*v257 + 72))(v257);
              v259 = (*(*v252 + 648))(v252);
              v12 = v313;
              if (v256 >= vabdd_f64(v258, v259))
              {
                goto LABEL_191;
              }
            }

            else
            {
              v260 = (*(*v251 + 656))(v251);
              v261 = (*(*v252 + 656))(v252);
              v12 = v313;
              if (v260 <= v261)
              {
                goto LABEL_191;
              }
            }

            v262 = *v225;
            *v225 = *v250;
            if (v248 >= 2)
            {
              do
              {
                v264 = v249 - 1;
                v249 = (v249 - 1) >> 1;
                v263 = &v309[v249];
                v265 = *(*v263 + 8);
                v266 = *(v262 + 8);
                v267 = (*(*v265 + 656))(v265);
                if (v267 == (*(*v266 + 656))(v266))
                {
                  v268 = *(*(*a3 + 168) + 32);
                  v269 = (*(*v268 + 72))(v268);
                  v270 = vabdd_f64(v269, (*(*v265 + 648))(v265));
                  v271 = *(*(*a3 + 168) + 32);
                  v272 = (*(*v271 + 72))(v271);
                  if (v270 >= vabdd_f64(v272, (*(*v266 + 648))(v266)))
                  {
                    goto LABEL_184;
                  }
                }

                else
                {
                  v273 = (*(*v265 + 656))(v265);
                  if (v273 <= (*(*v266 + 656))(v266))
                  {
                    goto LABEL_184;
                  }
                }

                *v250 = *v263;
                v250 = &v309[v249];
              }

              while (v264 > 1);
            }

            else
            {
LABEL_184:
              v263 = v250;
            }

            *v263 = v262;
            v12 = v313;
LABEL_191:
            v274 = v12-- <= 2;
            v225 = v309;
            if (v274)
            {
              return;
            }
          }
        }
      }

      v187 = *(*(*a3 + 168) + 32);
      v188 = (*(*v187 + 72))(v187);
      v189 = vabdd_f64(v188, (*(*v184 + 648))(v184));
      v190 = *(*(*a3 + 168) + 32);
      v191 = (*(*v190 + 72))(v190);
      if (v189 >= vabdd_f64(v191, (*(*v185 + 648))(v185)))
      {
        goto LABEL_146;
      }

LABEL_145:
      ++v183;
      v182 = 2 * v181 + 2;
      goto LABEL_146;
    }

    v13 = v12 >> 1;
    v14 = &v10[v12 >> 1];
    if (v12 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(&v10[v12 >> 1], v10, i, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10, &v10[v12 >> 1], i, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10 + 1, v14 - 1, v301, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v10 + 2, &v10[v13 + 1], v300, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(v14 - 1, v14, &v10[v13 + 1], a3);
      v15 = *v10;
      *v10 = *v14;
      *v14 = v15;
    }

    --a4;
    if (a5)
    {
      goto LABEL_27;
    }

    v16 = *(*(v10 - 1) + 8);
    v17 = *(*v10 + 8);
    v18 = (*(*v16 + 656))(v16);
    if (v18 != (*(*v17 + 656))(v17))
    {
      v43 = (*(*v16 + 656))(v16);
      v24 = v307;
      if (v43 <= (*(*v17 + 656))(v17))
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    v19 = *(*(*a3 + 168) + 32);
    v20 = (*(*v19 + 72))(v19);
    v21 = vabdd_f64(v20, (*(*v16 + 648))(v16));
    v22 = *(*(*a3 + 168) + 32);
    v23 = (*(*v22 + 72))(v22);
    v24 = v307;
    if (v21 < vabdd_f64(v23, (*(*v17 + 648))(v17)))
    {
LABEL_27:
      v310 = a4;
      v44 = v10 + 1;
      v45 = *v10;
      while (1)
      {
        v46 = *(*v44 + 8);
        v47 = *(v45 + 8);
        v48 = (*(*v46 + 656))(v46);
        if (v48 != (*(*v47 + 656))(v47))
        {
          break;
        }

        v49 = *(*(*a3 + 168) + 32);
        v50 = (*(*v49 + 72))(v49);
        v51 = vabdd_f64(v50, (*(*v46 + 648))(v46));
        v52 = *(*(*a3 + 168) + 32);
        v53 = (*(*v52 + 72))(v52);
        if (v51 >= vabdd_f64(v53, (*(*v47 + 648))(v47)))
        {
          goto LABEL_33;
        }

LABEL_32:
        ++v44;
      }

      v54 = (*(*v46 + 656))(v46);
      if (v54 > (*(*v47 + 656))(v47))
      {
        goto LABEL_32;
      }

LABEL_33:
      v55 = v44 - 1;
      if (v44 - 1 != v10)
      {
        while (1)
        {
          v56 = *(*i + 8);
          v57 = *(v45 + 8);
          v58 = (*(*v56 + 656))(v56);
          if (v58 == (*(*v57 + 656))(v57))
          {
            v59 = *(*(*a3 + 168) + 32);
            v60 = (*(*v59 + 72))(v59);
            v61 = vabdd_f64(v60, (*(*v56 + 648))(v56));
            v62 = *(*(*a3 + 168) + 32);
            v63 = (*(*v62 + 72))(v62);
            if (v61 < vabdd_f64(v63, (*(*v57 + 648))(v57)))
            {
              goto LABEL_48;
            }
          }

          else
          {
            v64 = (*(*v56 + 656))(v56);
            if (v64 > (*(*v57 + 656))(v57))
            {
              goto LABEL_48;
            }
          }

          --i;
        }
      }

      i = v307;
      if (v44 < v307)
      {
        for (i = v304; ; --i)
        {
          v65 = *(*i + 8);
          v66 = *(v45 + 8);
          v67 = (*(*v65 + 656))(v65);
          if (v67 == (*(*v66 + 656))(v66))
          {
            v68 = *(*(*a3 + 168) + 32);
            v69 = (*(*v68 + 72))(v68);
            v70 = (*(*v65 + 648))(v65);
            v71 = *(*(*a3 + 168) + 32);
            v72 = (*(*v71 + 72))(v71);
            (*(*v66 + 648))(v66);
            if (v44 >= i || vabdd_f64(v69, v70) < vabdd_f64(v72, v73))
            {
              break;
            }
          }

          else
          {
            v74 = (*(*v65 + 656))(v65);
            v75 = (*(*v66 + 656))(v66);
            if (v44 >= i || v74 > v75)
            {
              break;
            }
          }
        }
      }

LABEL_48:
      if (v44 >= i)
      {
        goto LABEL_62;
      }

      v76 = v44;
      v77 = i;
      while (2)
      {
        v78 = *v76;
        *v76 = *v77;
        v76 += 8;
        *v77 = v78;
        while (2)
        {
          v79 = *(*v76 + 8);
          v80 = *(v45 + 8);
          v81 = (*(*v79 + 656))(v79);
          if (v81 == (*(*v80 + 656))(v80))
          {
            v82 = *(*(*a3 + 168) + 32);
            v83 = (*(*v82 + 72))(v82);
            v84 = vabdd_f64(v83, (*(*v79 + 648))(v79));
            v85 = *(*(*a3 + 168) + 32);
            v86 = (*(*v85 + 72))(v85);
            if (v84 >= vabdd_f64(v86, (*(*v80 + 648))(v80)))
            {
              break;
            }

            goto LABEL_55;
          }

          v87 = (*(*v79 + 656))(v79);
          if (v87 > (*(*v80 + 656))(v80))
          {
LABEL_55:
            v76 += 8;
            continue;
          }

          break;
        }

        v55 = (v76 - 8);
        do
        {
          while (1)
          {
            v88 = *--v77;
            v89 = *(v88 + 8);
            v90 = *(v45 + 8);
            v91 = (*(*v89 + 656))(v89);
            if (v91 != (*(*v90 + 656))(v90))
            {
              break;
            }

            v92 = *(*(*a3 + 168) + 32);
            v93 = (*(*v92 + 72))(v92);
            v94 = vabdd_f64(v93, (*(*v89 + 648))(v89));
            v95 = *(*(*a3 + 168) + 32);
            v96 = (*(*v95 + 72))(v95);
            if (v94 < vabdd_f64(v96, (*(*v90 + 648))(v90)))
            {
              goto LABEL_61;
            }
          }

          v97 = (*(*v89 + 656))(v89);
        }

        while (v97 <= (*(*v90 + 656))(v90));
LABEL_61:
        if (v76 < v77)
        {
          continue;
        }

        break;
      }

LABEL_62:
      a1 = v309;
      if (v55 != v309)
      {
        *v309 = *v55;
      }

      *v55 = v45;
      v98 = v44 >= i;
      i = v304;
      a4 = v310;
      if (v98)
      {
        v99 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v309, v55, a3);
        j = v55 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(v55 + 1, v307, a3))
        {
          a2 = v55;
          if (v99)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v99)
        {
          goto LABEL_68;
        }
      }

      else
      {
LABEL_68:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,false>(v309, v55, a3, v310, a5 & 1);
        a5 = 0;
        j = v55 + 1;
      }
    }

    else
    {
LABEL_17:
      v25 = *v10;
      v26 = *(*v10 + 8);
      v27 = *(*i + 8);
      v28 = (*(*v26 + 656))(v26);
      if (v28 == (*(*v27 + 656))(v27))
      {
        v29 = *(*(*a3 + 168) + 32);
        v30 = (*(*v29 + 72))(v29);
        v31 = vabdd_f64(v30, (*(*v26 + 648))(v26));
        v32 = *(*(*a3 + 168) + 32);
        v33 = (*(*v32 + 72))(v32);
        if (v31 < vabdd_f64(v33, (*(*v27 + 648))(v27)))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v100 = (*(*v26 + 656))(v26);
        if (v100 > (*(*v27 + 656))(v27))
        {
LABEL_70:
          for (j = v309 + 1; ; ++j)
          {
            v101 = *(v25 + 8);
            v102 = *(*j + 8);
            v103 = (*(*v101 + 656))(v101);
            if (v103 == (*(*v102 + 656))(v102))
            {
              v104 = *(*(*a3 + 168) + 32);
              v105 = (*(*v104 + 72))(v104);
              v106 = vabdd_f64(v105, (*(*v101 + 648))(v101));
              v107 = *(*(*a3 + 168) + 32);
              v108 = (*(*v107 + 72))(v107);
              if (v106 < vabdd_f64(v108, (*(*v102 + 648))(v102)))
              {
                goto LABEL_76;
              }
            }

            else
            {
              v109 = (*(*v101 + 656))(v101);
              if (v109 > (*(*v102 + 656))(v102))
              {
LABEL_76:
                v24 = v307;
                goto LABEL_77;
              }
            }
          }
        }
      }

      for (j = v309 + 1; j < v24; ++j)
      {
        v34 = *(v25 + 8);
        v35 = *(*j + 8);
        v36 = (*(*v34 + 656))(v34);
        if (v36 == (*(*v35 + 656))(v35))
        {
          v37 = *(*(*a3 + 168) + 32);
          v38 = (*(*v37 + 72))(v37);
          v39 = vabdd_f64(v38, (*(*v34 + 648))(v34));
          v40 = *(*(*a3 + 168) + 32);
          v41 = (*(*v40 + 72))(v40);
          if (v39 < vabdd_f64(v41, (*(*v35 + 648))(v35)))
          {
            goto LABEL_76;
          }
        }

        else
        {
          v42 = (*(*v34 + 656))(v34);
          if (v42 > (*(*v35 + 656))(v35))
          {
            goto LABEL_76;
          }
        }

        v24 = v307;
      }

LABEL_77:
      k = v24;
      if (j >= v24)
      {
        goto LABEL_93;
      }

      for (k = i; ; --k)
      {
        v111 = *(v25 + 8);
        v112 = *(*k + 8);
        v113 = (*(*v111 + 656))(v111);
        if (v113 == (*(*v112 + 656))(v112))
        {
          break;
        }

        v119 = (*(*v111 + 656))(v111);
        if (v119 <= (*(*v112 + 656))(v112))
        {
          goto LABEL_93;
        }

LABEL_83:
        ;
      }

      v114 = *(*(*a3 + 168) + 32);
      v115 = (*(*v114 + 72))(v114);
      v116 = vabdd_f64(v115, (*(*v111 + 648))(v111));
      v117 = *(*(*a3 + 168) + 32);
      v118 = (*(*v117 + 72))(v117);
      if (v116 < vabdd_f64(v118, (*(*v112 + 648))(v112)))
      {
        goto LABEL_83;
      }

LABEL_93:
      while (j < k)
      {
        v120 = *j;
        *j++ = *k;
        *k = v120;
        while (1)
        {
          v121 = *(v25 + 8);
          v122 = *(*j + 8);
          v123 = (*(*v121 + 656))(v121);
          if (v123 == (*(*v122 + 656))(v122))
          {
            break;
          }

          v129 = (*(*v121 + 656))(v121);
          if (v129 > (*(*v122 + 656))(v122))
          {
            goto LABEL_91;
          }

LABEL_89:
          ++j;
        }

        v124 = *(*(*a3 + 168) + 32);
        v125 = (*(*v124 + 72))(v124);
        v126 = vabdd_f64(v125, (*(*v121 + 648))(v121));
        v127 = *(*(*a3 + 168) + 32);
        v128 = (*(*v127 + 72))(v127);
        if (v126 >= vabdd_f64(v128, (*(*v122 + 648))(v122)))
        {
          goto LABEL_89;
        }

        do
        {
LABEL_91:
          while (1)
          {
            v131 = *--k;
            v132 = *(v25 + 8);
            v133 = *(v131 + 8);
            v134 = (*(*v132 + 656))(v132);
            if (v134 == (*(*v133 + 656))(v133))
            {
              break;
            }

            v130 = (*(*v132 + 656))(v132);
            if (v130 <= (*(*v133 + 656))(v133))
            {
              goto LABEL_93;
            }
          }

          v135 = *(*(*a3 + 168) + 32);
          v136 = (*(*v135 + 72))(v135);
          v137 = vabdd_f64(v136, (*(*v132 + 648))(v132));
          v138 = *(*(*a3 + 168) + 32);
          v139 = (*(*v138 + 72))(v138);
        }

        while (v137 < vabdd_f64(v139, (*(*v133 + 648))(v133)));
      }

      v140 = j - 1;
      if (j - 1 != v309)
      {
        *v309 = *v140;
      }

      a5 = 0;
      *v140 = v25;
    }
  }

  v152 = v10 + 1;
  v154 = v10 == v307 || v152 == v307;
  if ((a5 & 1) == 0)
  {
    if (v154)
    {
      return;
    }

    while (1)
    {
      v278 = v10;
      v10 = v152;
      v279 = *(v278[1] + 8);
      v280 = *(*v278 + 8);
      v281 = (*(*v279 + 656))(v279);
      if (v281 == (*(*v280 + 656))(v280))
      {
        v282 = *(*(*a3 + 168) + 32);
        v283 = (*(*v282 + 72))(v282);
        v284 = vabdd_f64(v283, (*(*v279 + 648))(v279));
        v285 = *(*(*a3 + 168) + 32);
        v286 = (*(*v285 + 72))(v285);
        if (v284 >= vabdd_f64(v286, (*(*v280 + 648))(v280)))
        {
          goto LABEL_207;
        }
      }

      else
      {
        v287 = (*(*v279 + 656))(v279);
        if (v287 <= (*(*v280 + 656))(v280))
        {
          goto LABEL_207;
        }
      }

      v288 = *v10;
      do
      {
        while (1)
        {
          v289 = v278;
          v278[1] = *v278;
          v290 = *--v278;
          v291 = *(v288 + 8);
          v292 = *(v290 + 8);
          v293 = (*(*v291 + 656))(v291);
          if (v293 != (*(*v292 + 656))(v292))
          {
            break;
          }

          v294 = *(*(*a3 + 168) + 32);
          v295 = (*(*v294 + 72))(v294);
          v296 = vabdd_f64(v295, (*(*v291 + 648))(v291));
          v297 = *(*(*a3 + 168) + 32);
          v298 = (*(*v297 + 72))(v297);
          if (v296 >= vabdd_f64(v298, (*(*v292 + 648))(v292)))
          {
            goto LABEL_206;
          }
        }

        v299 = (*(*v291 + 656))(v291);
      }

      while (v299 > (*(*v292 + 656))(v292));
LABEL_206:
      *v289 = v288;
LABEL_207:
      v152 = v10 + 1;
      if (v10 + 1 == v307)
      {
        return;
      }
    }
  }

  if (v154)
  {
    return;
  }

  v155 = 0;
  v156 = v10;
  while (2)
  {
    v157 = v156;
    v156 = v152;
    v158 = *(v157[1] + 8);
    v159 = *(*v157 + 8);
    v160 = (*(*v158 + 656))(v158);
    if (v160 == (*(*v159 + 656))(v159))
    {
      v161 = *(*(*a3 + 168) + 32);
      v162 = (*(*v161 + 72))(v161);
      v163 = vabdd_f64(v162, (*(*v158 + 648))(v158));
      v164 = *(*(*a3 + 168) + 32);
      v165 = (*(*v164 + 72))(v164);
      if (v163 >= vabdd_f64(v165, (*(*v159 + 648))(v159)))
      {
        goto LABEL_135;
      }
    }

    else
    {
      v166 = (*(*v158 + 656))(v158);
      if (v166 <= (*(*v159 + 656))(v159))
      {
        goto LABEL_135;
      }
    }

    v167 = v10;
    v168 = v157[1];
    v157[1] = *v157;
    v169 = v167;
    if (v157 == v167)
    {
      goto LABEL_134;
    }

    v170 = v155;
    while (2)
    {
      v171 = *(v168 + 8);
      v172 = *(*(v309 + v170 - 8) + 8);
      v173 = (*(*v171 + 656))(v171);
      if (v173 == (*(*v172 + 656))(v172))
      {
        v174 = *(*(*a3 + 168) + 32);
        v175 = (*(*v174 + 72))(v174);
        v176 = vabdd_f64(v175, (*(*v171 + 648))(v171));
        v177 = *(*(*a3 + 168) + 32);
        v178 = (*(*v177 + 72))(v177);
        if (v176 >= vabdd_f64(v178, (*(*v172 + 648))(v172)))
        {
          v169 = (v309 + v170);
          goto LABEL_133;
        }

LABEL_130:
        --v157;
        *(v309 + v170) = *(v309 + v170 - 8);
        v170 -= 8;
        if (!v170)
        {
          v169 = v309;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    v179 = (*(*v171 + 656))(v171);
    if (v179 > (*(*v172 + 656))(v172))
    {
      goto LABEL_130;
    }

    v169 = v157;
LABEL_133:
    v11 = v307;
LABEL_134:
    *v169 = v168;
    v10 = v309;
LABEL_135:
    v152 = v156 + 1;
    v155 += 8;
    if (v156 + 1 != v11)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *(*a2 + 8);
  v9 = *(*a1 + 8);
  v10 = (*(*v8 + 656))(v8);
  if (v10 == (*(*v9 + 656))(v9))
  {
    v11 = *(*(*a4 + 168) + 32);
    v12 = (*(*v11 + 72))(v11);
    v13 = vabdd_f64(v12, (*(*v8 + 648))(v8));
    v14 = *(*(*a4 + 168) + 32);
    v15 = (*(*v14 + 72))(v14);
    if (v13 >= vabdd_f64(v15, (*(*v9 + 648))(v9)))
    {
      goto LABEL_3;
    }

LABEL_7:
    v25 = *(*a3 + 8);
    v26 = *(*v6 + 8);
    v27 = (*(*v25 + 656))(v25);
    if (v27 == (*(*v26 + 656))(v26))
    {
      v28 = *(*(*a4 + 168) + 32);
      v29 = (*(*v28 + 72))(v28);
      v30 = vabdd_f64(v29, (*(*v25 + 648))(v25));
      v31 = *(*(*a4 + 168) + 32);
      v32 = (*(*v31 + 72))(v31);
      if (v30 >= vabdd_f64(v32, (*(*v26 + 648))(v26)))
      {
LABEL_9:
        v33 = *v7;
        *v7 = *v6;
        *v6 = v33;
        v34 = *(*a3 + 8);
        v35 = *(v33 + 8);
        v36 = (*(*v34 + 656))(v34);
        if (v36 == (*(*v35 + 656))(v35))
        {
          v37 = *(*(*a4 + 168) + 32);
          v38 = (*(*v37 + 72))(v37);
          v39 = vabdd_f64(v38, (*(*v34 + 648))(v34));
          v40 = *(*(*a4 + 168) + 32);
          v41 = (*(*v40 + 72))(v40);
          v42 = vabdd_f64(v41, (*(*v35 + 648))(v35));
          v7 = v6;
          v6 = a3;
          goto LABEL_14;
        }

        v53 = (*(*v34 + 656))(v34);
        v54 = (*(*v35 + 656))(v35);
        v7 = v6;
        v6 = a3;
LABEL_20:
        if (v53 <= v54)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v52 = (*(*v25 + 656))(v25);
      if (v52 <= (*(*v26 + 656))(v26))
      {
        goto LABEL_9;
      }
    }

    v6 = a3;
    goto LABEL_21;
  }

  v24 = (*(*v8 + 656))(v8);
  if (v24 > (*(*v9 + 656))(v9))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(*a3 + 8);
  v17 = *(*v6 + 8);
  v18 = (*(*v16 + 656))(v16);
  if (v18 == (*(*v17 + 656))(v17))
  {
    v19 = *(*(*a4 + 168) + 32);
    v20 = (*(*v19 + 72))(v19);
    v21 = vabdd_f64(v20, (*(*v16 + 648))(v16));
    v22 = *(*(*a4 + 168) + 32);
    v23 = (*(*v22 + 72))(v22);
    if (v21 >= vabdd_f64(v23, (*(*v17 + 648))(v17)))
    {
      return;
    }
  }

  else
  {
    v43 = (*(*v16 + 656))(v16);
    if (v43 <= (*(*v17 + 656))(v17))
    {
      return;
    }
  }

  v44 = *v6;
  *v6 = *a3;
  *a3 = v44;
  v45 = *(*v6 + 8);
  v46 = *(*v7 + 8);
  v47 = (*(*v45 + 656))(v45);
  if (v47 != (*(*v46 + 656))(v46))
  {
    v53 = (*(*v45 + 656))(v45);
    v54 = (*(*v46 + 656))(v46);
    goto LABEL_20;
  }

  v48 = *(*(*a4 + 168) + 32);
  v49 = (*(*v48 + 72))(v48);
  v39 = vabdd_f64(v49, (*(*v45 + 648))(v45));
  v50 = *(*(*a4 + 168) + 32);
  v51 = (*(*v50 + 72))(v50);
  v42 = vabdd_f64(v51, (*(*v46 + 648))(v46));
LABEL_14:
  if (v39 < v42)
  {
LABEL_21:
    v55 = *v7;
    *v7 = *v6;
    *v6 = v55;
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(*a2 + 8);
  v9 = *(*a1 + 8);
  v10 = *(*(*a4 + 168) + 32);
  v11 = (*(*v10 + 72))(v10);
  v12 = vabdd_f64(v11, (*(*v8 + 648))(v8));
  v13 = *(*(*a4 + 168) + 32);
  v14 = (*(*v13 + 72))(v13);
  v15 = vabdd_f64(v14, (*(*v9 + 648))(v9));
  v16 = *(*a3 + 8);
  v17 = *(*a2 + 8);
  v18 = *(*(*a4 + 168) + 32);
  v19 = (*(*v18 + 72))(v18);
  v20 = vabdd_f64(v19, (*(*v16 + 648))(v16));
  v21 = *(*(*a4 + 168) + 32);
  v22 = (*(*v21 + 72))(v21);
  v23 = vabdd_f64(v22, (*(*v17 + 648))(v17));
  if (v12 >= v15)
  {
    if (v20 < v23)
    {
      v25 = *a2;
      *a2 = *a3;
      *a3 = v25;
      v26 = *(*a2 + 8);
      v27 = *(*a1 + 8);
      v28 = *(*(*a4 + 168) + 32);
      v29 = (*(*v28 + 72))(v28);
      LODWORD(v26) = vabdd_f64(v29, (*(*v26 + 648))(v26));
      v30 = *(*(*a4 + 168) + 32);
      v31 = (*(*v30 + 72))(v30);
      if (v26 < vabdd_f64(v31, (*(*v27 + 648))(v27)))
      {
        v32 = *a1;
        *a1 = *a2;
        *a2 = v32;
      }
    }
  }

  else
  {
    v24 = *a1;
    if (v20 >= v23)
    {
      *a1 = *a2;
      *a2 = v24;
      v33 = *(*a3 + 8);
      v34 = *(v24 + 8);
      v35 = *(*(*a4 + 168) + 32);
      v36 = (*(*v35 + 72))(v35);
      LODWORD(v33) = vabdd_f64(v36, (*(*v33 + 648))(v33));
      v37 = *(*(*a4 + 168) + 32);
      v38 = (*(*v37 + 72))(v37);
      if (v33 >= vabdd_f64(v38, (*(*v34 + 648))(v34)))
      {
        return;
      }

      v24 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v24;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v240 = a2 - 1;
    v243 = a2;
    v236 = a2 - 3;
    v237 = a2 - 2;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = a2 - v9;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v9, v9 + 1, v240, a3);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v240, a3);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v9, v9 + 1, v9 + 2, v9 + 3, v240, a3);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v119 = *(*v240 + 8);
              v120 = *(*v9 + 8);
              v121 = *(*(*a3 + 168) + 32);
              v122 = (*(*v121 + 72))(v121);
              v123 = vabdd_f64(v122, (*(*v119 + 648))(v119));
              v124 = *(*(*a3 + 168) + 32);
              v125 = (*(*v124 + 72))(v124);
              if (v123 < vabdd_f64(v125, (*(*v120 + 648))(v120)))
              {
                v126 = *v9;
                *v9 = *v240;
                *v240 = v126;
              }

              return;
            }
          }

          if (v11 <= 23)
          {
            v127 = v9 + 1;
            v129 = v9 == a2 || v127 == a2;
            if (a5)
            {
              if (!v129)
              {
                v130 = 0;
                v131 = v9;
                do
                {
                  v133 = *v131;
                  v132 = v131[1];
                  v131 = v127;
                  v134 = *(v132 + 8);
                  v135 = *(v133 + 8);
                  v136 = *(*(*a3 + 168) + 32);
                  v137 = (*(*v136 + 72))(v136);
                  v138 = vabdd_f64(v137, (*(*v134 + 648))(v134));
                  v139 = *(*(*a3 + 168) + 32);
                  v140 = (*(*v139 + 72))(v139);
                  if (v138 < vabdd_f64(v140, (*(*v135 + 648))(v135)))
                  {
                    v141 = *v131;
                    v142 = v130;
                    while (1)
                    {
                      *(v9 + v142 + 8) = *(v9 + v142);
                      if (!v142)
                      {
                        break;
                      }

                      v143 = *(v141 + 8);
                      v144 = *(*(v9 + v142 - 8) + 8);
                      v145 = *(*(*a3 + 168) + 32);
                      v146 = (*(*v145 + 72))(v145);
                      LODWORD(v143) = vabdd_f64(v146, (*(*v143 + 648))(v143));
                      v147 = *(*(*a3 + 168) + 32);
                      v148 = (*(*v147 + 72))(v147);
                      v142 -= 8;
                      if (v143 >= vabdd_f64(v148, (*(*v144 + 648))(v144)))
                      {
                        v149 = (v9 + v142 + 8);
                        goto LABEL_82;
                      }
                    }

                    v149 = v9;
LABEL_82:
                    *v149 = v141;
                  }

                  v127 = v131 + 1;
                  v130 += 8;
                }

                while (v131 + 1 != a2);
              }
            }

            else if (!v129)
            {
              do
              {
                v217 = *v10;
                v218 = v10[1];
                v10 = v127;
                v219 = *(v218 + 8);
                v220 = *(v217 + 8);
                v221 = *(*(*a3 + 168) + 32);
                v222 = (*(*v221 + 72))(v221);
                v223 = vabdd_f64(v222, (*(*v219 + 648))(v219));
                v224 = *(*(*a3 + 168) + 32);
                v225 = (*(*v224 + 72))(v224);
                if (v223 < vabdd_f64(v225, (*(*v220 + 648))(v220)))
                {
                  v226 = *v10;
                  v227 = v10;
                  do
                  {
                    v228 = v227;
                    v229 = *--v227;
                    *v228 = v229;
                    v230 = *(v226 + 8);
                    v231 = *(*(v228 - 2) + 8);
                    v232 = *(*(*a3 + 168) + 32);
                    v233 = (*(*v232 + 72))(v232);
                    LODWORD(v230) = vabdd_f64(v233, (*(*v230 + 648))(v230));
                    v234 = *(*(*a3 + 168) + 32);
                    v235 = (*(*v234 + 72))(v234);
                  }

                  while (v230 < vabdd_f64(v235, (*(*v231 + 648))(v231)));
                  *v227 = v226;
                }

                v127 = v10 + 1;
              }

              while (v10 + 1 != a2);
            }

            return;
          }

          v246 = v9;
          if (!a4)
          {
            if (v9 != a2)
            {
              v150 = (v11 - 2) >> 1;
              v241 = v150;
              do
              {
                v151 = v150;
                if (v241 >= v150)
                {
                  v152 = (2 * v150) | 1;
                  v153 = &v10[v152];
                  if (2 * v150 + 2 < v11)
                  {
                    v154 = *(*v153 + 8);
                    v155 = *(v153[1] + 8);
                    v156 = *(*(*a3 + 168) + 32);
                    v157 = (*(*v156 + 72))(v156);
                    LODWORD(v154) = vabdd_f64(v157, (*(*v154 + 648))(v154));
                    v158 = *(*(*a3 + 168) + 32);
                    v159 = (*(*v158 + 72))(v158);
                    if (v154 < vabdd_f64(v159, (*(*v155 + 648))(v155)))
                    {
                      ++v153;
                      v152 = 2 * v151 + 2;
                    }
                  }

                  v160 = &v10[v151];
                  v161 = *(*v153 + 8);
                  v162 = *(*v160 + 8);
                  v163 = *(*(*a3 + 168) + 32);
                  v164 = (*(*v163 + 72))(v163);
                  v165 = vabdd_f64(v164, (*(*v161 + 648))(v161));
                  v166 = *(*(*a3 + 168) + 32);
                  v167 = (*(*v166 + 72))(v166);
                  if (v165 >= vabdd_f64(v167, (*(*v162 + 648))(v162)))
                  {
                    v239 = v151;
                    v168 = *v160;
                    do
                    {
                      v169 = v153;
                      *v160 = *v153;
                      if (v241 < v152)
                      {
                        break;
                      }

                      v170 = (2 * v152) | 1;
                      v153 = &v246[v170];
                      if (2 * v152 + 2 < v11)
                      {
                        v171 = *(*v153 + 8);
                        v172 = *(v153[1] + 8);
                        v173 = *(*(*a3 + 168) + 32);
                        v174 = (*(*v173 + 72))(v173);
                        LODWORD(v171) = vabdd_f64(v174, (*(*v171 + 648))(v171));
                        v175 = *(*(*a3 + 168) + 32);
                        v176 = (*(*v175 + 72))(v175);
                        if (v171 < vabdd_f64(v176, (*(*v172 + 648))(v172)))
                        {
                          ++v153;
                          v170 = 2 * v152 + 2;
                        }
                      }

                      v177 = *(*v153 + 8);
                      v178 = *(v168 + 8);
                      v179 = *(*(*a3 + 168) + 32);
                      v180 = (*(*v179 + 72))(v179);
                      LODWORD(v177) = vabdd_f64(v180, (*(*v177 + 648))(v177));
                      v181 = *(*(*a3 + 168) + 32);
                      v182 = (*(*v181 + 72))(v181);
                      v160 = v169;
                      v152 = v170;
                    }

                    while (v177 >= vabdd_f64(v182, (*(*v178 + 648))(v178)));
                    *v169 = v168;
                    v10 = v246;
                    v151 = v239;
                  }
                }

                v150 = v151 - 1;
              }

              while (v151);
              v183 = v243;
              do
              {
                v184 = 0;
                v242 = *v10;
                v244 = v183;
                v185 = v10;
                do
                {
                  v186 = &v185[v184];
                  v187 = v186 + 1;
                  v188 = (2 * v184) | 1;
                  v189 = 2 * v184 + 2;
                  if (v189 >= v11)
                  {
                    v184 = (2 * v184) | 1;
                  }

                  else
                  {
                    v191 = v186[2];
                    v190 = v186 + 2;
                    v192 = *(*(v190 - 1) + 8);
                    v193 = *(v191 + 8);
                    v194 = *(*(*a3 + 168) + 32);
                    v195 = (*(*v194 + 72))(v194);
                    LODWORD(v192) = vabdd_f64(v195, (*(*v192 + 648))(v192));
                    v196 = *(*(*a3 + 168) + 32);
                    v197 = (*(*v196 + 72))(v196);
                    if (v192 >= vabdd_f64(v197, (*(*v193 + 648))(v193)))
                    {
                      v184 = v188;
                    }

                    else
                    {
                      v187 = v190;
                      v184 = v189;
                    }
                  }

                  *v185 = *v187;
                  v185 = v187;
                }

                while (v184 <= ((v11 - 2) >> 1));
                v183 = v244 - 1;
                if (v187 == v244 - 1)
                {
                  *v187 = v242;
                  v10 = v246;
                }

                else
                {
                  *v187 = *v183;
                  *v183 = v242;
                  v10 = v246;
                  v198 = (v187 - v246 + 8) >> 3;
                  v199 = v198 < 2;
                  v200 = v198 - 2;
                  if (!v199)
                  {
                    v201 = v200 >> 1;
                    v202 = &v246[v200 >> 1];
                    v203 = *(*v202 + 8);
                    v204 = *(*v187 + 8);
                    v205 = *(*(*a3 + 168) + 32);
                    v206 = (*(*v205 + 72))(v205);
                    LODWORD(v203) = vabdd_f64(v206, (*(*v203 + 648))(v203));
                    v207 = *(*(*a3 + 168) + 32);
                    v208 = (*(*v207 + 72))(v207);
                    if (v203 < vabdd_f64(v208, (*(*v204 + 648))(v204)))
                    {
                      v245 = v244 - 1;
                      v209 = *v187;
                      do
                      {
                        v210 = v202;
                        *v187 = *v202;
                        if (!v201)
                        {
                          break;
                        }

                        v201 = (v201 - 1) >> 1;
                        v202 = &v246[v201];
                        v211 = *(*v202 + 8);
                        v212 = *(v209 + 8);
                        v213 = *(*(*a3 + 168) + 32);
                        v214 = (*(*v213 + 72))(v213);
                        LODWORD(v211) = vabdd_f64(v214, (*(*v211 + 648))(v211));
                        v215 = *(*(*a3 + 168) + 32);
                        v216 = (*(*v215 + 72))(v215);
                        v187 = v210;
                      }

                      while (v211 < vabdd_f64(v216, (*(*v212 + 648))(v212)));
                      *v210 = v209;
                      v183 = v245;
                    }
                  }
                }

                v199 = v11-- <= 2;
              }

              while (!v199);
            }

            return;
          }

          v12 = &v9[v11 >> 1];
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(&v10[v11 >> 1], v10, v240, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v10, &v10[v11 >> 1], v240, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v10 + 1, v12 - 1, v237, a3);
            v13 = &v10[(v11 >> 1) + 1];
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v246 + 2, v13, v236, a3);
            v10 = v246;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(v12 - 1, v12, v13, a3);
            v14 = *v246;
            *v246 = *v12;
            *v12 = v14;
          }

          --a4;
          if (a5)
          {
            break;
          }

          v15 = *(*(v10 - 1) + 8);
          v16 = *(*v10 + 8);
          v17 = *(*(*a3 + 168) + 32);
          v18 = (*(*v17 + 72))(v17);
          v19 = vabdd_f64(v18, (*(*v15 + 648))(v15));
          v20 = *(*(*a3 + 168) + 32);
          v21 = (*(*v20 + 72))(v20);
          if (v19 < vabdd_f64(v21, (*(*v16 + 648))(v16)))
          {
            break;
          }

          v9 = v10;
          v68 = *v10;
          v69 = *(v68 + 8);
          v70 = *(*v240 + 8);
          v71 = *(*(*a3 + 168) + 32);
          v72 = (*(*v71 + 72))(v71);
          v73 = vabdd_f64(v72, (*(*v69 + 648))(v69));
          v74 = *(*(*a3 + 168) + 32);
          v75 = (*(*v74 + 72))(v74);
          if (v73 >= vabdd_f64(v75, (*(*v70 + 648))(v70)))
          {
            v84 = v9 + 1;
            do
            {
              v9 = v84;
              if (v84 >= v243)
              {
                break;
              }

              ++v84;
              v85 = *(v68 + 8);
              v86 = *(*v9 + 8);
              v87 = *(*(*a3 + 168) + 32);
              v88 = (*(*v87 + 72))(v87);
              v89 = vabdd_f64(v88, (*(*v85 + 648))(v85));
              v90 = *(*(*a3 + 168) + 32);
              v91 = (*(*v90 + 72))(v90);
            }

            while (v89 >= vabdd_f64(v91, (*(*v86 + 648))(v86)));
          }

          else
          {
            do
            {
              v76 = v9[1];
              ++v9;
              v77 = *(v68 + 8);
              v78 = *(v76 + 8);
              v79 = *(*(*a3 + 168) + 32);
              v80 = (*(*v79 + 72))(v79);
              v81 = vabdd_f64(v80, (*(*v77 + 648))(v77));
              v82 = *(*(*a3 + 168) + 32);
              v83 = (*(*v82 + 72))(v82);
            }

            while (v81 >= vabdd_f64(v83, (*(*v78 + 648))(v78)));
          }

          v92 = v243;
          if (v9 < v243)
          {
            v92 = v243;
            do
            {
              v93 = *--v92;
              v94 = *(v68 + 8);
              v95 = *(v93 + 8);
              v96 = *(*(*a3 + 168) + 32);
              v97 = (*(*v96 + 72))(v96);
              v98 = vabdd_f64(v97, (*(*v94 + 648))(v94));
              v99 = *(*(*a3 + 168) + 32);
              v100 = (*(*v99 + 72))(v99);
            }

            while (v98 < vabdd_f64(v100, (*(*v95 + 648))(v95)));
          }

          while (v9 < v92)
          {
            v101 = *v9;
            *v9 = *v92;
            *v92 = v101;
            do
            {
              v102 = v9[1];
              ++v9;
              v103 = *(v68 + 8);
              v104 = *(v102 + 8);
              v105 = *(*(*a3 + 168) + 32);
              v106 = (*(*v105 + 72))(v105);
              v107 = vabdd_f64(v106, (*(*v103 + 648))(v103));
              v108 = *(*(*a3 + 168) + 32);
              v109 = (*(*v108 + 72))(v108);
            }

            while (v107 >= vabdd_f64(v109, (*(*v104 + 648))(v104)));
            do
            {
              v110 = *--v92;
              v111 = *(v68 + 8);
              v112 = *(v110 + 8);
              v113 = *(*(*a3 + 168) + 32);
              v114 = (*(*v113 + 72))(v113);
              v115 = vabdd_f64(v114, (*(*v111 + 648))(v111));
              v116 = *(*(*a3 + 168) + 32);
              v117 = (*(*v116 + 72))(v116);
            }

            while (v115 < vabdd_f64(v117, (*(*v112 + 648))(v112)));
          }

          v118 = v9 - 1;
          a2 = v243;
          if (v9 - 1 != v246)
          {
            *v246 = *v118;
          }

          a5 = 0;
          *v118 = v68;
        }

        v22 = *v10;
        v23 = v10;
        do
        {
          v24 = v23;
          v25 = *(v23 + 8);
          v23 += 8;
          v26 = *(v25 + 8);
          v27 = *(v22 + 8);
          v28 = *(*(*a3 + 168) + 32);
          v29 = (*(*v28 + 72))(v28);
          v30 = vabdd_f64(v29, (*(*v26 + 648))(v26));
          v31 = *(*(*a3 + 168) + 32);
          v32 = (*(*v31 + 72))(v31);
        }

        while (v30 < vabdd_f64(v32, (*(*v27 + 648))(v27)));
        if (v24 == v10)
        {
          a2 = v243;
          do
          {
            if (v23 >= a2)
            {
              break;
            }

            v41 = *--a2;
            v42 = *(v41 + 8);
            v43 = *(v22 + 8);
            v44 = *(*(*a3 + 168) + 32);
            v45 = (*(*v44 + 72))(v44);
            v46 = vabdd_f64(v45, (*(*v42 + 648))(v42));
            v47 = *(*(*a3 + 168) + 32);
            v48 = (*(*v47 + 72))(v47);
          }

          while (v46 >= vabdd_f64(v48, (*(*v43 + 648))(v43)));
        }

        else
        {
          do
          {
            v33 = *--a2;
            v34 = *(v33 + 8);
            v35 = *(v22 + 8);
            v36 = *(*(*a3 + 168) + 32);
            v37 = (*(*v36 + 72))(v36);
            v38 = vabdd_f64(v37, (*(*v34 + 648))(v34));
            v39 = *(*(*a3 + 168) + 32);
            v40 = (*(*v39 + 72))(v39);
          }

          while (v38 >= vabdd_f64(v40, (*(*v35 + 648))(v35)));
        }

        if (v23 < a2)
        {
          v49 = v23;
          v50 = a2;
          do
          {
            v51 = *v49;
            *v49 = *v50;
            *v50 = v51;
            do
            {
              v24 = v49;
              v52 = v49[1];
              ++v49;
              v53 = *(v52 + 8);
              v54 = *(v22 + 8);
              v55 = *(*(*a3 + 168) + 32);
              v56 = (*(*v55 + 72))(v55);
              LODWORD(v53) = vabdd_f64(v56, (*(*v53 + 648))(v53));
              v57 = *(*(*a3 + 168) + 32);
              v58 = (*(*v57 + 72))(v57);
            }

            while (v53 < vabdd_f64(v58, (*(*v54 + 648))(v54)));
            do
            {
              v59 = *--v50;
              v60 = *(v59 + 8);
              v61 = *(v22 + 8);
              v62 = *(*(*a3 + 168) + 32);
              v63 = (*(*v62 + 72))(v62);
              LODWORD(v60) = vabdd_f64(v63, (*(*v60 + 648))(v60));
              v64 = *(*(*a3 + 168) + 32);
              v65 = (*(*v64 + 72))(v64);
            }

            while (v60 >= vabdd_f64(v65, (*(*v61 + 648))(v61)));
          }

          while (v49 < v50);
        }

        a1 = v246;
        if (v24 != v246)
        {
          *v246 = *v24;
        }

        *v24 = v22;
        v66 = v23 >= a2;
        a2 = v243;
        if (v66)
        {
          break;
        }

LABEL_36:
        std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,false>(v246, v24, a3, a4, a5 & 1);
        a5 = 0;
        v9 = v24 + 1;
      }

      v67 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **>(v246, v24, a3);
      v9 = v24 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **>(v24 + 1, v243, a3))
      {
        break;
      }

      if (!v67)
      {
        goto LABEL_36;
      }
    }

    a2 = v24;
    if (!v67)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **,0>(a1, a2, a3);
  if (*a4 != *a3)
  {
    if ((*(**a4 + 80))(*a4))
    {
      v10 = *a3;
      *a3 = *a4;
      *a4 = v10;
      if (*a3 != *a2)
      {
        if ((*(**a3 + 80))(*a3))
        {
          v11 = *a2;
          *a2 = *a3;
          *a3 = v11;
          if (*a2 != *a1)
          {
            if ((*(**a2 + 80))(*a2))
            {
              v12 = *a1;
              *a1 = *a2;
              *a2 = v12;
            }
          }
        }
      }
    }
  }

  result = *a5;
  if (*a5 != *a4)
  {
    result = (*(*result + 80))(result);
    if (result)
    {
      v14 = *a4;
      *a4 = *a5;
      *a5 = v14;
      result = *a4;
      if (*a4 != *a3)
      {
        result = (*(*result + 80))(result);
        if (result)
        {
          v15 = *a3;
          *a3 = *a4;
          *a4 = v15;
          result = *a3;
          if (*a3 != *a2)
          {
            result = (*(*result + 80))(result);
            if (result)
            {
              v16 = *a2;
              *a2 = *a3;
              *a3 = v16;
              result = *a2;
              if (*a2 != *a1)
              {
                result = (*(*result + 80))(result);
                if (result)
                {
                  v17 = *a1;
                  *a1 = *a2;
                  *a2 = v17;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t md::LineTextWithAuxLabelPart::prepareForDisplay(md::LineTextWithAuxLabelPart *this, md::LabelManager *a2)
{
  v4 = *(this + 659);
  *(this + 691) = v4;
  if (v4 == 1)
  {
    (*(***(this + 72) + 104))(**(this + 72), a2);
  }

  (*(**(*(this + 72) + 8) + 104))(*(*(this + 72) + 8), a2);
  (*(**(this + 80) + 24))(*(this + 80), this + 672);
  (*(**(*(this + 72) + 8) + 408))();
  v5 = *(this + 72);
  if (v4)
  {
    v6 = *v5;
    v7 = *(this + 657);
    *(this + 689) = v7;
    (*(*v6 + 400))(v6, 1, v7);
    v6[1349] = *(this + 712);
    (*(**(*(this + 72) + 8) + 368))();
    v8 = *(**(*(this + 72) + 8) + 400);

    return v8();
  }

  else
  {
    v10 = *(**(v5 + 8) + 368);

    return v10();
  }
}

uint64_t md::MultipleShieldLabelPart::prepareForDisplay(uint64_t this, md::LabelManager *a2)
{
  v2 = this;
  v3 = *(this + 576);
  for (i = *(this + 584); v3 != i; this = (*(*v6 + 104))(v6, a2))
  {
    v6 = *v3++;
  }

  if ((*(v2 + 662) & 1) == 0)
  {
    v7 = *(**(v2 + 632) + 24);

    return v7();
  }

  return this;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsFunctionConstantsUpdate>(ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A175E0;
  a2[1] = *(result + 8);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::NeedsFunctionConstantsUpdate>(ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata) = *(a2 + 4096);
}

float md::TrafficIncidentIconLabelPart::updateWithStyle(md::TrafficIncidentIconLabelPart *this, md::LabelManager *a2)
{
  md::ImageLabelPart::updateWithStyle(this, a2);
  v3 = *(this + 2);
  atomic_load((v3 + 1328));
  v4 = (*(**(v3 + 8) + 568))();
  v5 = *v4;
  v6 = *(*v4 + 296);
  if (!v6)
  {
    v7 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v4, 0);
    v6 = *v7;
    *(v5 + 296) = *v7;
  }

  result = *(v6 + 24);
  *(this + 143) = result;
  return result;
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *&v3[12] = *(a3 + 24);
  *&v3[8] = *(a3 + 19);
  *v3 = *(a3 + 11);
  md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(a1, a2, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), BYTE1(*(a3 + 6)), BYTE2(*(a3 + 6)), HIBYTE(*(a3 + 6)), v3[0], v3[1], v3[2], v3[3], *&v3[4], *(a3 + 32), *(a3 + 10), *(a3 + 33), v4[0], v4[1], v4[2]);
}

unint64_t md::VKMRenderResourcesStore::createPipelineStateItem(uint64_t a1, uint64_t *a2, unsigned __int8 a3, char a4, uint8x8_t a5)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::LinearDepthPipelineState,std::shared_ptr<ggl::LinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 952), a2, a5);
        goto LABEL_21;
      }

      if (a3 == 7)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::PackedLinearDepthPipelineState,std::shared_ptr<ggl::PackedLinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 1088), a2, a5);
        goto LABEL_21;
      }
    }

    else
    {
      if (a3 == 4)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::RibbonPipelineState,std::shared_ptr<ggl::DaVinciRibbonShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 680), a2);
        goto LABEL_21;
      }

      if (a3 == 5)
      {
        md::DaVinciPipelineStateManager<ggl::DaVinci::DecalPipelineState,std::shared_ptr<ggl::DaVinciDecalShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 816), a2);
        goto LABEL_21;
      }
    }

LABEL_23:
    v8 = 0;
    v52 = 0uLL;
    goto LABEL_24;
  }

  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      md::DaVinciPipelineStateManager<ggl::DaVinci::GroundDepthPipelineState,std::shared_ptr<ggl::DaVinciGroundDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 272), a2);
      goto LABEL_21;
    }

    if (a3 == 3)
    {
      md::DaVinciPipelineStateManager<ggl::DaVinci::GroundShadowMapPipelineState,std::shared_ptr<ggl::DaVinciGroundShadowMapShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 544), a2);
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    md::DaVinciPipelineStateManager<ggl::DaVinci::GroundNonCompressedPipelineState,std::shared_ptr<ggl::DaVinciGroundNotCompressedShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, (*(a1 + 14192) + 136), a2);
  }

  else
  {
    v7 = *(a1 + 14192);
    if ((a4 & 1) == 0)
    {
      v7 += 51;
    }

    md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(v54.i64, v7, a2);
  }

LABEL_21:
  v52 = v54;
  v8 = v54.i64[1];
  if (v54.i64[1])
  {
    v9 = 0;
    atomic_fetch_add_explicit((v54.i64[1] + 8), 1uLL, memory_order_relaxed);
    goto LABEL_25;
  }

LABEL_24:
  v9 = 1;
LABEL_25:
  v10 = *(a1 + 736);
  v11 = *(a1 + 752);
  if (*(a1 + 728) == v10)
  {
    v12 = ((*(a1 + 760) - v11) >> 3) | 0x100000000;
    v54.i64[0] = v12;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 752, &v54);
  }

  else
  {
    v12 = *(v11 + 8 * *(v10 - 8));
    *(a1 + 736) = v10 - 8;
  }

  v53 = v12;
  v54 = vdupq_n_s64(1uLL);
  LOWORD(v55) = 1;
  v13 = v12 >> 6;
  v14 = *(a1 + 584);
  v15 = *(a1 + 576);
  if (v13 >= (v14 - v15) >> 3)
  {
    v16 = v13 + 1;
    v17 = v13 + 1 - ((v14 - v15) >> 3);
    v18 = *(a1 + 592);
    if (v17 > (v18 - v14) >> 3)
    {
      v19 = v18 - v15;
      if (v19 >> 2 > v16)
      {
        v16 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v16;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
    }

    bzero(*(a1 + 584), 8 * v17);
    *(a1 + 584) = v14 + 8 * v17;
    v15 = *(a1 + 576);
  }

  v21 = *(v15 + 8 * v13);
  if (!v21)
  {
    operator new();
  }

  v22 = (v21 + 16 * (v12 & 0x3F));
  if (*v22 == -1 && v22[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a1 + 600, &v53);
    v24 = ((*(a1 + 608) - *(a1 + 600)) >> 3) - 1;
    *v22 = HIDWORD(v12);
    v22[1] = v24;
    v56 = &v52;
    v25 = v24 & 0x3F;
    v26 = *(*(a1 + 624) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 624), v24)) + 24 * v25;
    *v26 = v54;
    *(v26 + 16) = v55;
    v27 = v56;
    v28 = v24 >> 6;
    v29 = *(a1 + 680);
    v30 = *(a1 + 672);
    if (v24 >> 6 >= (v29 - v30) >> 3)
    {
      v49 = v56;
      v50 = v24 >> 6;
      v51 = v29 - v30;
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = *(a1 + 688);
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        v35 = (v33 - v30) >> 2;
        if (v35 <= v31)
        {
          v35 = v28 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_78;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v29 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v29 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(a1 + 680) = v29 + 8 * v32;
      v41 = *(a1 + 704);
      v42 = *(a1 + 696);
      v43 = (v41 - v42) >> 4;
      if (v43 <= v28)
      {
        v44 = v31 - v43;
        v45 = *(a1 + 712);
        if (v44 > (v45 - v41) >> 4)
        {
          v46 = v45 - v42;
          v47 = v46 >> 3;
          if (v46 >> 3 <= v31)
          {
            v47 = v31;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v47 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v47 >> 60))
          {
            operator new();
          }

LABEL_78:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(a1 + 704), 16 * v44);
        *(a1 + 704) = v41 + 16 * v44;
        v28 = v50;
      }

      else if (v31 < v43)
      {
        *(a1 + 704) = v42 + 16 * v31;
      }

      v30 = *(a1 + 672);
      v27 = v49;
      if (v51 < *(a1 + 680) - v30)
      {
        operator new();
      }
    }

    *(*(v30 + 8 * v28) + 16 * v25) = *v27;
    v27->i64[0] = 0;
    v27->i64[1] = 0;
  }

  if (v52.i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52.i64[1]);
  }

  if ((v9 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v12;
}

void sub_1B2B989C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_0,std::allocator<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*)>::operator()(uint64_t a1, uint8x8_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5, uint64_t a6, unint64_t **a7)
{
  v8 = *a7;
  v9 = *(a1 + 16);
  PipelineStateItem = md::VKMRenderResourcesStore::createPipelineStateItem(**(a1 + 8), a4, *a5, 1, a2);
  v11 = PipelineStateItem;
  if (v8)
  {
    PipelineStateItem = md::VKMRenderResourcesStore::_disconnect<geo::handle<md::PipelineStateItem>>(**(a1 + 8), *v8);
  }

  v12 = *v9;
  v13 = ecs2::ExecutionTaskContext::currentEntity(PipelineStateItem);

  return ecs2::addComponent<md::ls::PipelineState>(v12, v13, v11);
}

unint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollidableItem **,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem *,20ul> &)::$_0 &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 52);
  v4 = a1;
  do
  {
    v5 = v4;
    v7 = v4[1];
    ++v4;
    v6 = v7;
    v8 = *(v7 + 52);
    v9 = v7 < v2;
    v10 = v8 == v3;
    v11 = v8 < v3;
    if (v10)
    {
      v11 = v9;
    }
  }

  while (v11);
  if (v5 == a1)
  {
    do
    {
      if (v4 >= a2)
      {
        break;
      }

      v16 = *--a2;
      v17 = *(v16 + 52);
      v18 = v16 < v2;
      v10 = v17 == v3;
      v19 = v17 < v3;
      if (!v10)
      {
        v18 = v19;
      }
    }

    while (!v18);
  }

  else
  {
    do
    {
      v12 = *--a2;
      v13 = *(v12 + 52);
      v14 = v12 < v2;
      v10 = v13 == v3;
      v15 = v13 < v3;
      if (!v10)
      {
        v14 = v15;
      }
    }

    while (!v14);
  }

  if (v4 < a2)
  {
    v20 = *a2;
    v21 = v4;
    v22 = a2;
    do
    {
      *v21 = v20;
      *v22 = v6;
      do
      {
        v5 = v21;
        v23 = v21[1];
        ++v21;
        v6 = v23;
        v24 = *(v23 + 52);
        v25 = v23 < v2;
        v10 = v24 == v3;
        v26 = v24 < v3;
        if (v10)
        {
          v26 = v25;
        }
      }

      while (v26);
      do
      {
        v27 = *--v22;
        v20 = v27;
        v28 = *(v27 + 52);
        v29 = v27 < v2;
        v10 = v28 == v3;
        v30 = v28 < v3;
        if (v10)
        {
          v30 = v29;
        }
      }

      while (!v30);
    }

    while (v21 < v22);
  }

  if (v5 != a1)
  {
    *a1 = *v5;
  }

  *v5 = v2;
  return v5;
}

unint64_t *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(*a2 + 52);
  v6 = *(*result + 52);
  v7 = v5 < v6;
  if (v5 == v6)
  {
    v7 = *a2 < *result;
  }

  v8 = *a3;
  v9 = *(*a3 + 52);
  v10 = v9 == v5;
  v11 = v9 < v5;
  if (v10)
  {
    v11 = *a3 < v3;
  }

  if (v7)
  {
    if (v11)
    {
      *result = v8;
LABEL_17:
      *a3 = v4;
      return result;
    }

    *result = v3;
    *a2 = v4;
    v16 = *(*a3 + 52);
    v10 = v16 == v6;
    v17 = v16 < v6;
    if (v10)
    {
      v17 = *a3 < v4;
    }

    if (v17)
    {
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v11)
  {
    *a2 = v8;
    *a3 = v3;
    v12 = *result;
    v13 = *(*a2 + 52);
    v14 = *(*result + 52);
    v10 = v13 == v14;
    v15 = v13 < v14;
    if (v10)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(unint64_t *a1, unint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v27 = *a1;
        v28 = a1[1];
        v29 = *(v28 + 52);
        v30 = *(*a1 + 52);
        v31 = v29 < v30;
        if (v29 == v30)
        {
          v31 = v28 < *a1;
        }

        v32 = *(a2 - 1);
        v33 = *(v32 + 52);
        v9 = v33 == v29;
        v34 = v33 < v29;
        if (v9)
        {
          v34 = v32 < v28;
        }

        if (!v31)
        {
          if (v34)
          {
            a1[1] = v32;
            *(a2 - 1) = v28;
            v49 = *a1;
            v48 = a1[1];
            v50 = *(v48 + 52);
            v51 = *(*a1 + 52);
            v9 = v50 == v51;
            v52 = v50 < v51;
            if (v9)
            {
              v52 = v48 < *a1;
            }

            if (v52)
            {
              *a1 = v48;
              a1[1] = v49;
            }
          }

          return 1;
        }

        if (v34)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v28;
          a1[1] = v27;
          v68 = *(a2 - 1);
          v69 = *(v68 + 52);
          v9 = v69 == v30;
          v70 = v69 < v30;
          if (v9)
          {
            v70 = v68 < v27;
          }

          if (!v70)
          {
            return 1;
          }

          a1[1] = v68;
        }

        *(a2 - 1) = v27;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v11 = *(a2 - 1);
        v12 = a1[3];
        v13 = *(v11 + 52);
        v14 = *(v12 + 52);
        v9 = v13 == v14;
        v15 = v13 < v14;
        if (v9)
        {
          v15 = v11 < v12;
        }

        if (v15)
        {
          a1[3] = v11;
          *(a2 - 1) = v12;
          v17 = a1[2];
          v16 = a1[3];
          v18 = *(v16 + 52);
          v19 = *(v17 + 52);
          v9 = v18 == v19;
          v20 = v18 < v19;
          if (v9)
          {
            v20 = v16 < v17;
          }

          if (v20)
          {
            a1[2] = v16;
            a1[3] = v17;
            v21 = a1[1];
            v22 = *(v21 + 52);
            v9 = v18 == v22;
            v23 = v18 < v22;
            if (v9)
            {
              v23 = v16 < v21;
            }

            if (v23)
            {
              a1[1] = v16;
              a1[2] = v21;
              v24 = *a1;
              v25 = *(*a1 + 52);
              v9 = v18 == v25;
              v26 = v18 < v25;
              if (v9)
              {
                v26 = v16 < *a1;
              }

              if (v26)
              {
                *a1 = v16;
                a1[1] = v24;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 52);
    v8 = *(*a1 + 52);
    v9 = v7 == v8;
    v10 = v7 < v8;
    if (v9)
    {
      v10 = v5 < *a1;
    }

    if (v10)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_31:
  v36 = a1 + 2;
  v35 = a1[2];
  v37 = a1[1];
  v38 = *a1;
  v39 = *(v37 + 52);
  v40 = *(*a1 + 52);
  v41 = v39 < v40;
  if (v39 == v40)
  {
    v41 = v37 < *a1;
  }

  v42 = *(v35 + 52);
  v43 = v35 < v37;
  v9 = v42 == v39;
  v44 = v42 < v39;
  if (!v9)
  {
    v43 = v44;
  }

  if (v41)
  {
    v45 = a1;
    v46 = a1 + 2;
    if (!v43)
    {
      *a1 = v37;
      a1[1] = v38;
      v9 = v42 == v40;
      v47 = v42 < v40;
      if (v9)
      {
        v47 = v35 < v38;
      }

      v45 = a1 + 1;
      v46 = a1 + 2;
      if (!v47)
      {
        goto LABEL_52;
      }
    }

LABEL_51:
    *v45 = v35;
    *v46 = v38;
    goto LABEL_52;
  }

  if (v43)
  {
    a1[1] = v35;
    *v36 = v37;
    v9 = v42 == v40;
    v53 = v42 < v40;
    if (v9)
    {
      v53 = v35 < v38;
    }

    v45 = a1;
    v46 = a1 + 1;
    if (v53)
    {
      goto LABEL_51;
    }
  }

LABEL_52:
  v54 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v55 = 0;
  for (i = 24; ; i += 8)
  {
    v57 = *v54;
    v58 = *v36;
    v59 = *(*v54 + 52);
    v60 = *(v58 + 52);
    v9 = v59 == v60;
    v61 = v59 < v60;
    if (v9)
    {
      v61 = *v54 < v58;
    }

    if (v61)
    {
      v62 = i;
      while (1)
      {
        *(a1 + v62) = v58;
        v63 = v62 - 8;
        if (v62 == 8)
        {
          break;
        }

        v58 = *(a1 + v62 - 16);
        v64 = *(v58 + 52);
        v65 = v57 < v58;
        v9 = v59 == v64;
        v66 = v59 < v64;
        if (!v9)
        {
          v65 = v66;
        }

        v62 = v63;
        if (!v65)
        {
          v67 = (a1 + v63);
          goto LABEL_64;
        }
      }

      v67 = a1;
LABEL_64:
      *v67 = v57;
      if (++v55 == 8)
      {
        break;
      }
    }

    v36 = v54++;
    if (v54 == a2)
    {
      return 1;
    }
  }

  return v54 + 1 == a2;
}

unint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::getGridItems(gm::Box<int,2> const&,md::LabelCollidableItem const&,md::SimpleBuffer<md::LabelCollidableItem*,20ul> &)::$_0 &,md::LabelCollidableItem**>(unint64_t *result, unint64_t *a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v3 = *result;
      v2 = result[1];
      ++result;
      v4 = *(v2 + 52);
      v5 = *(v3 + 52);
      v6 = v4 == v5;
      v7 = v4 < v5;
      if (v6)
      {
        v7 = v2 < v3;
      }

      if (v7)
      {
        v8 = result;
        do
        {
          *v8 = v3;
          v3 = *(v8 - 2);
          v9 = *(v3 + 52);
          v6 = v4 == v9;
          v10 = v4 < v9;
          if (v6)
          {
            v10 = v2 < v3;
          }

          --v8;
        }

        while (v10);
        *v8 = v2;
      }
    }
  }

  return result;
}

uint64_t ecs2::addComponent<md::ls::PipelineState>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A17670;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A17670;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A175A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineState>(ecs2::Entity,md::ls::PipelineState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A17670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t md::LabelLineCollidableItem::collidesWithObject(md::LabelLineCollidableItem *this, const md::CollisionObject *a2)
{
  v2 = a2;
  if (*(this + 216) == 0 || (*(a2 + 200) & *(this + 256)) != 0)
  {
    return 0;
  }

  v4 = *(a2 + 21);
  if (*(this + 28))
  {
    v5 = (this + 56);
    if (v4)
    {
      return md::CollisionObject::circlesCollideWithCircles(v5, a2);
    }

    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if (v4)
  {
    a2 = (this + 56);
    v5 = v2;
    return md::CollisionObject::circlesCollideWithRects(v5, a2);
  }

  if ((*(this + 252) & 1) != 0 || *(a2 + 196) == 1)
  {
    return md::CollisionObject::rectsCollideWithRectsOBB((this + 56), a2);
  }

  else
  {
    return md::CollisionObject::rectsCollideWithRects((this + 56), a2);
  }
}

BOOL md::CollisionObject::rectsCollideWithRectsOBB(md::CollisionObject *this, const md::CollisionObject *a2)
{
  v2 = *(a2 + 44);
  if (v2)
  {
    v3 = 0;
    v4 = *(a2 + 2);
    v5 = -*(&v4 + 1);
    LODWORD(v6) = HIDWORD(*(this + 2));
    LODWORD(v7) = *(this + 2);
    v8 = *(a2 + 23);
    v9 = 8 * *(a2 + 199) + 12;
    v10 = 1;
    while (!*(this + 44))
    {
LABEL_13:
      v10 = ++v3 < v2;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v11 = (v8 + 24 * v3);
    v12 = *(this + 23);
    v13 = *v11;
    v14 = v11[1];
    v15 = &v11[2 * *(this + 199)];
    v16 = v15[2];
    v17 = v15[3];
    v18 = fabsf(-(((v17 * v5) * v6) - ((v17 * *&v4) * v7))) + fabsf(-(((v16 * *&v4) * v6) - ((v16 * *(&v4 + 1)) * v7)));
    v19 = (v12 + v9);
    v20 = fabsf(((v16 * *&v4) * v7) + ((v16 * *(&v4 + 1)) * v6)) + fabsf(((v17 * v5) * v7) + ((v17 * *&v4) * v6));
    v21 = *(this + 44);
    while (1)
    {
      v22 = v13 - *v12;
      v23 = v14 - v12[1];
      v24 = *(v19 - 1);
      if (fabsf((v22 * v7) + (v23 * v6)) <= (v20 + v24))
      {
        v25 = *v19;
        if (fabsf(-((v22 * v6) - (v23 * v7))) <= (v18 + *v19))
        {
          if (*(this + 2) == v4)
          {
            break;
          }

          v26 = v24 * v7;
          v27 = v24 * v6;
          v28 = v25 * -v6;
          v29 = v25 * v7;
          v30 = fabsf((v22 * *&v4) + (v23 * *(&v4 + 1)));
          v31 = fabsf(-((v22 * *(&v4 + 1)) - (v23 * *&v4)));
          v32 = (fabsf(-((v26 * *(&v4 + 1)) - (v27 * *&v4))) + v17) + fabsf(-((v28 * *(&v4 + 1)) - (v29 * *&v4)));
          if (v30 <= ((fabsf((v26 * *&v4) + (v27 * *(&v4 + 1))) + v16) + fabsf((v28 * *&v4) + (v29 * *(&v4 + 1)))) && v31 <= v32)
          {
            break;
          }
        }
      }

      v19 += 6;
      v12 += 6;
      if (!--v21)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    return 0;
  }

  return v10;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineState>(ecs2::Entity,md::ls::PipelineState &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineState>();
    unk_1EB83D920 = 0xB160D04D0F4A35A4;
    qword_1EB83D928 = "md::ls::PipelineState]";
    qword_1EB83D930 = 21;
  }
}

uint64_t *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelCollider::collideItems(void)::$_0 &,md::LabelCollisionItemBase **>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1;
    if (result + 1 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = *v6;
        result = v6[1];
        v6 = v4;
        if (result != v7)
        {
          result = (*(*result + 80))(result);
          if (result)
          {
            v8 = *v6;
            v9 = v5;
            while (1)
            {
              v10 = v9;
              v11 = (v3 + v9);
              v11[1] = *v11;
              if (!v10)
              {
                break;
              }

              if (v8 != *(v11 - 1))
              {
                result = (*(*v8 + 80))(v8);
                v9 = v10 - 8;
                if (result)
                {
                  continue;
                }
              }

              v12 = (v3 + v10);
              goto LABEL_12;
            }

            v12 = v3;
LABEL_12:
            *v12 = v8;
          }
        }

        v4 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::MarkPipelineDataRequirements::operator()(ecs2::Query<md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::MarkPipelineDataRequirements::operator()(ecs2::Query<md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v84 = *MEMORY[0x1E69E9840];
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a6);
  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a6);
  v10 = ecs2::ExecutionTaskContext::currentEntity(PipelineDataSet);
  v74[0] = 0;
  v75 = -1;
  v11 = gdc::typeIndex<DaVinci::AmbientTexture>();
  if (md::requiredTextureForPipeline(v11, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12428;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12428;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v12 = gdc::typeIndex<DaVinci::AridityTexture>();
  if (md::requiredTextureForPipeline(v12, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12520;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12520;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v13 = gdc::typeIndex<DaVinci::DiffuseTexture>();
  if (md::requiredTextureForPipeline(v13, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A125F0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A125F0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v14 = gdc::typeIndex<DaVinci::EmissiveTexture>();
  if (md::requiredTextureForPipeline(v14, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A126C0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A126C0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v15 = gdc::typeIndex<DaVinci::Gradient1Texture>();
  if (md::requiredTextureForPipeline(v15, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12790;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12790;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v16 = gdc::typeIndex<DaVinci::Gradient2Texture>();
  if (md::requiredTextureForPipeline(v16, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12860;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12860;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v17 = gdc::typeIndex<DaVinci::OcclusionTexture>();
  if (md::requiredTextureForPipeline(v17, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12930;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12930;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v18 = gdc::typeIndex<DaVinci::OverlayTexture>();
  if (md::requiredTextureForPipeline(v18, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12A00;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12A00;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v19 = gdc::typeIndex<DaVinci::RouteMaskTexture>();
  if (md::requiredTextureForPipeline(v19, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12AD0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12AD0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v20 = gdc::typeIndex<DaVinci::ShadowTexture>();
  if (md::requiredTextureForPipeline(v20, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12BA0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12BA0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v21 = gdc::typeIndex<DaVinci::StyleIndexTexture>();
  if (md::requiredTextureForPipeline(v21, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12C70;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12C70;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v22 = gdc::typeIndex<DaVinci::StyleTexture>();
  if (md::requiredTextureForPipeline(v22, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12D40;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12D40;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v23 = gdc::typeIndex<DaVinci::TemperatureTexture>();
  if (md::requiredTextureForPipeline(v23, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12E10;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12E10;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v24 = gdc::typeIndex<DaVinci::TexTexture>();
  if (md::requiredTextureForPipeline(v24, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12EE0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12EE0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v25 = gdc::typeIndex<Flyover::AtmosphereTexture>();
  if (md::requiredTextureForPipeline(v25, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A12FB0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A12FB0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v26 = gdc::typeIndex<Flyover::DiffuseTexture>();
  if (md::requiredTextureForPipeline(v26, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13080;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13080;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v27 = gdc::typeIndex<Flyover::NightTexture>();
  v28 = md::requiredTextureForPipeline(v27, Pipeline, PipelineDataSet, v74);
  if (v28)
  {
    v77 = &unk_1F2A13150;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v10 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13150;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    v28 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v29 = ecs2::ExecutionTaskContext::currentEntity(v28);
  v74[0] = 0;
  v75 = -1;
  v30 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>();
  if (md::requiredDeviceDataForPipeline(v30, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13220;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13220;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v31 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>();
  if (md::requiredDeviceDataForPipeline(v31, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A132F0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A132F0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v32 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>();
  if (md::requiredDeviceDataForPipeline(v32, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A133C0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A133C0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v33 = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>();
  v34 = md::requiredDeviceDataForPipeline(v33, Pipeline, PipelineDataSet, v74);
  if (v34)
  {
    v77 = &unk_1F2A13490;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v29 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13490;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    v34 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v35 = ecs2::ExecutionTaskContext::currentEntity(v34);
  v74[0] = 0;
  v75 = -1;
  v36 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
  if (md::requiredDataForPipeline(v36, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13560;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13560;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v37 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>();
  if (md::requiredDataForPipeline(v37, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13630;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13630;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v38 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>();
  if (md::requiredDataForPipeline(v38, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13700;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13700;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v39 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
  if (md::requiredDataForPipeline(v39, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A137D0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A137D0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v40 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>();
  if (md::requiredDataForPipeline(v40, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A138A0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A138A0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v41 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>();
  if (md::requiredDataForPipeline(v41, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13970;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13970;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v42 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>();
  if (md::requiredDataForPipeline(v42, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13A40;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13A40;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v43 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
  if (md::requiredDataForPipeline(v43, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13B10;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13B10;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v44 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>();
  if (md::requiredDataForPipeline(v44, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13BE0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13BE0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v45 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>();
  if (md::requiredDataForPipeline(v45, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13CB0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13CB0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v46 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>();
  if (md::requiredDataForPipeline(v46, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13D80;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13D80;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v47 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>();
  if (md::requiredDataForPipeline(v47, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13E50;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13E50;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v48 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>();
  if (md::requiredDataForPipeline(v48, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13F20;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13F20;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v49 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>();
  if (md::requiredDataForPipeline(v49, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A13FF0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A13FF0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v50 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>();
  if (md::requiredDataForPipeline(v50, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A140C0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A140C0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v51 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>();
  if (md::requiredDataForPipeline(v51, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14190;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14190;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v52 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>();
  if (md::requiredDataForPipeline(v52, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14260;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14260;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v53 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>();
  if (md::requiredDataForPipeline(v53, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14330;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14330;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v54 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>();
  if (md::requiredDataForPipeline(v54, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14400;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14400;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v55 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>();
  if (md::requiredDataForPipeline(v55, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A144D0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A144D0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v56 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>();
  if (md::requiredDataForPipeline(v56, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A145A0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A145A0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v57 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>();
  if (md::requiredDataForPipeline(v57, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14670;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14670;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v58 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>();
  if (md::requiredDataForPipeline(v58, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14740;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14740;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v59 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>();
  if (md::requiredDataForPipeline(v59, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14810;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14810;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v60 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>();
  if (md::requiredDataForPipeline(v60, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A148E0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A148E0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v61 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>();
  if (md::requiredDataForPipeline(v61, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A149B0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A149B0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v62 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>();
  if (md::requiredDataForPipeline(v62, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14A80;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14A80;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v63 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>();
  if (md::requiredDataForPipeline(v63, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14B50;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14B50;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v64 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>();
  if (md::requiredDataForPipeline(v64, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14C20;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14C20;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v65 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>();
  if (md::requiredDataForPipeline(v65, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14CF0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14CF0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v66 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>();
  if (md::requiredDataForPipeline(v66, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14DC0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14DC0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v67 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>();
  if (md::requiredDataForPipeline(v67, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14E90;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14E90;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v68 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>();
  if (md::requiredDataForPipeline(v68, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A14F60;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A14F60;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v69 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>();
  if (md::requiredDataForPipeline(v69, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A15030;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A15030;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v70 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>();
  if (md::requiredDataForPipeline(v70, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A15100;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A15100;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v71 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>();
  if (md::requiredDataForPipeline(v71, Pipeline, PipelineDataSet, v74))
  {
    v77 = &unk_1F2A151D0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A151D0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  v74[0] = 0;
  v75 = -1;
  v72 = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>();
  result = md::requiredDataForPipeline(v72, Pipeline, PipelineDataSet, v74);
  if (result)
  {
    v77 = &unk_1F2A152A0;
    LODWORD(v78) = v74[0];
    DWORD1(v78) = v75;
    *(&v78 + 1) = HIDWORD(v75) | (v35 << 32);
    v79 = &v77;
    v82 = &v80;
    v80 = &unk_1F2A152A0;
    v81 = v78;
    v83 = 0;
    ecs2::Runtime::queueCommand();
    if (v83 != -1)
    {
      (off_1F2A124E8[v83])(&v76, &v80);
    }

    v83 = -1;
    return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v77);
  }

  return result;
}

uint64_t gdc::typeIndex<DaVinci::AmbientTexture>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::AmbientTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[484];
}

uint64_t md::requiredTextureForPipeline(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, a1))
  {
    {
      if (v13)
      {
        md::typeToIntMap(v13);
        md::requiredTextureForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap = md::typeToIntMap(void)::typeToIntMap;
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::requiredTextureForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap, a1);
    if (!v7)
    {
      abort();
    }

    v8 = *(v7 + 6);
    v9 = *(v7 + 7);
    if (v8 != -1)
    {
      *a4 = ggl::PipelineSetup::canSetTextureV(*(a2 + 16), v8, (a4 + 4));
    }

    if (v9 == -1)
    {
      canSetTextureF = *(a4 + 1);
    }

    else
    {
      canSetTextureF = ggl::PipelineSetup::canSetTextureF(*(a2 + 16), v9, (a4 + 8));
      *(a4 + 1) = canSetTextureF;
    }

    v11 = *a4 | canSetTextureF;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

BOOL ggl::PipelineSetup::canSetTextureF(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 24), (v4 = *(v3 + 72)) != 0))
  {
    v5 = *(v3 + 64);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

BOOL ggl::PipelineSetup::canSetTextureV(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 8), (v4 = *(v3 + 72)) != 0))
  {
    v5 = *(v3 + 64);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12428;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::CompositeLabeler::updateOcclusionQueries(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 136))(v3);
  }

  return this;
}

void md::MapNavLabeler::updateOcclusionQueries(id *this)
{
  if ((*(*this + 45))(this))
  {
    v2 = [this[7] activeSigns];
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      do
      {
        v5 = *v3;
        if (*(*v3 + 24) == 1 && (*(v5 + 26) & 1) == 0)
        {
          v6 = *(this[3] + 45);
          v7 = *(v5 + 8);
          if (!v7)
          {
            v10 = 14;
            v9 = 0;
            std::allocate_shared[abi:nn200100]<md::OcclusionQuery,std::allocator<md::OcclusionQuery>,md::LabelType,md::LabelFeatureType,0>(&v11, &v10, &v9);
          }

          v8 = atomic_load((v7 + 286));
          if (v8)
          {
            *(v5 + 24) = 0;
            *(v5 + 26) = 1;
            md::OcclusionTest::setupAntennaeTest(**(v5 + 8), v5 + 328, 0);
            md::OcclusionManager::addQuery(v6, (v5 + 8));
          }
        }

        v3 += 2;
      }

      while (v3 != v4);
    }
  }
}

uint64_t gdc::typeIndex<DaVinci::AridityTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::AridityTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[116];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12520;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::MapStandardLabeler::updateOcclusionQueries(md::MapStandardLabeler *this)
{
  v31 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v32 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v2 = *(this + 3);
  v3 = *(v2 + 424);
  v4 = *(v3 + 1232);
  _ZF = *(v2 + 3376) != 1 || v4 == 0;
  if (_ZF || (v6 = *(v4 + 272)) == 0)
  {
    v17 = 0;
  }

  else
  {
    v7.f64[0] = geo::ConvexHull2<double>::boundingBox(*(v6 + 64), *(v6 + 72));
    v9.f64[1] = v8;
    v7.f64[1] = v10;
    v11 = vsubq_f64(v9, v7);
    v12 = vmulq_f64(vmaxnmq_f64(v11, 0), vdupq_n_s64(0x3FF3333340000000uLL));
    __asm { FMOV            V3.2D, #0.5 }

    v31 = vmlaq_f64(v7, _Q3, vsubq_f64(v11, v12));
    v32 = vaddq_f64(v31, v12);
    v17 = 1;
  }

  v18 = *(this + 9);
  v19 = *(this + 10);
  if (v18 != v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = *(v3 + 424);
    while (1)
    {
      v23 = *v18;
      if (*(*v18 + 482) == 1)
      {
        v24 = *(v23 + 1298);
        if (!*(v23 + 1298))
        {
          goto LABEL_23;
        }

        if (v24 == 1)
        {
          if (v17 && *(v23 + 1290) - 2 <= 7)
          {
            v25 = 0;
            v26 = *(v23 + 616);
            v27 = &v31;
            v28 = 1;
            while (v26 >= v27->f64[0] && v26 < v32.f64[v25])
            {
              v29 = v28;
              v28 = 0;
              v26 = *(v23 + 624);
              v27 = &v31.f64[1];
              v25 = 1;
              if ((v29 & 1) == 0)
              {
                v24 = 2;
                goto LABEL_22;
              }
            }
          }

          if (v22 <= 15.0)
          {
LABEL_23:
            *(v23 + 485) = 2;
            *(v23 + 480) = 0;
            *(v23 + 482) = 0;
            v21 = 1;
            *(v23 + 1372) = 0;
            goto LABEL_24;
          }

          v24 = 1;
        }

LABEL_22:
        md::Label::submitOcclusionQuery(v23, *(*(this + 3) + 360), *(*(this + 3) + 424), v24);
        v20 = 1;
      }

LABEL_24:
      v18 += 2;
      if (v18 == v19)
      {
        if (!(v20 & 1 | ((v21 & 1) == 0)))
        {
          v30 = *(this + 3);
          *(v30 + 3038) = 1;
          *(v30 + 3040) = 1;

          md::LabelManager::setNeedsLayout(v30, 1);
        }

        return;
      }
    }
  }
}

void md::Label::submitOcclusionQuery(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a1 + 483) & 1) == 0)
  {
    v6 = (a1 + 456);
    v7 = *(a1 + 456);
    if (!v7)
    {
      v39[0] = *(a1 + 1290);
      v40 = *(a1 + 1291);
      std::allocate_shared[abi:nn200100]<md::OcclusionQuery,std::allocator<md::OcclusionQuery>,md::LabelType,md::LabelFeatureType,0>(v38, v39, &v40);
    }

    v8 = atomic_load((v7 + 286));
    if (v8)
    {
      *(a1 + 480) = 0;
      *(a1 + 483) = 1;
      *(a1 + 484) = *(a1 + 1372);
      if (a4 <= 1)
      {
        if (!a4)
        {
          return;
        }

        if (a4 == 1)
        {
          md::OcclusionTest::setupAntennaeTest(**(a1 + 456), a1 + 616, *(a1 + 257));
        }

        goto LABEL_36;
      }

      switch(a4)
      {
        case 2:
          v33 = *(a1 + 264);
          if (!v33)
          {
            v33 = *(a1 + 272);
          }

          (*(*v33 + 888))(v33, *v6, a3);
          goto LABEL_36;
        case 3:
          if ((*(a1 + 164) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
            gdc::typeIndex<DaVinci::DiffuseTexture>();
            return;
          }

          v34 = **(a1 + 456);
          *v34 = 3;
          geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v34 + 80));
          v35 = 0;
          v36 = *(v34 + 80);
          do
          {
            *(v36 + v35) = *(a1 + 616 + v35);
            v35 += 8;
          }

          while (v35 != 24);
          for (i = 0; i != 12; i += 4)
          {
            *(v34 + 184 + i) = *(a1 + 152 + i);
          }

          *(v34 + 196) = 1088421888;
          v31 = v34 + 8;
          v32 = 1;
          break;
        case 4:
          v9 = *(a1 + 264);
          if (!v9)
          {
            v9 = *(a1 + 272);
          }

          v10 = (*(*v9 + 256))(v9);
          v11.i64[0] = *(a1 + 688);
          v12 = gm::Box<float,2>::operator-(v10, v11);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = 20.0;
          if ((*(**(a1 + 8) + 72))(*(a1 + 8)) || (v19 = 30.0, (*(**(a1 + 8) + 352))(*(a1 + 8))))
          {
            v20 = *(a1 + 780);
            if (v20 != 0.0)
            {
              v19 = v20 * 0.5;
            }
          }

          v21 = **(a1 + 456);
          v22 = a1 + 616;
          v23 = gm::Matrix<double,3,1>::normalized<int,void>(v22);
          v24 = 0;
          *v38 = v23;
          v38[1] = v25;
          v38[2] = v26;
          do
          {
            v27 = *&v38[v24];
            *&v39[4 * v24++] = v27;
          }

          while (v24 != 3);
          *v21 = 4;
          *(v21 + 237) = 1;
          geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v21 + 80));
          v28 = 0;
          v29 = *(v21 + 80);
          do
          {
            *(v29 + v28) = *(v22 + v28);
            v28 += 8;
          }

          while (v28 != 24);
          for (j = 0; j != 12; j += 4)
          {
            *(v21 + 184 + j) = *&v39[j];
          }

          *(v21 + 196) = v19;
          *(v21 + 200) = v12;
          *(v21 + 204) = v14;
          *(v21 + 208) = v16;
          *(v21 + 212) = v18;
          *(v21 + 239) = 4;
          v31 = v21 + 8;
          v32 = 5;
          break;
        default:
LABEL_36:

          md::OcclusionManager::addQuery(a2, v6);
          return;
      }

      geo::small_vector_base<md::OcclusionProbe>::resize(v31, v32);
      goto LABEL_36;
    }
  }
}

uint64_t gdc::typeIndex<DaVinci::DiffuseTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::DiffuseTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[114];
}

uint64_t gdc::typeIndex<DaVinci::EmissiveTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::EmissiveTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[110];
}

void md::OcclusionTest::setupAntennaeTest(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = 1;
  geo::small_vector_base<gm::Matrix<double,3,1>>::resize((a1 + 80));
  v6 = 0;
  v7 = *(a1 + 80);
  do
  {
    *(v7 + v6) = *(a2 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  geo::small_vector_base<md::OcclusionProbe>::resize(a1 + 8, 1uLL);
  *(a1 + 232) = 1065353216;
  *(a1 + 236) = a3;
}

void geo::small_vector_base<gm::Matrix<double,3,1>>::resize(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3) > 1)
  {
    goto LABEL_2;
  }

  if (v3 == v2)
  {
    if (!result[3])
    {
      geo::small_vector_base<gm::Matrix<double,3,1>>::grow(result, 1uLL);
      v2 = *result;
    }

LABEL_2:
    result[1] = v2 + 24;
  }
}

void md::OcclusionManager::addQuery(uint64_t result, uint64_t **a2)
{
  v2 = **a2;
  v3 = (*a2)[1];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v4 += (*(v2 + 16) - *(v2 + 8)) >> 3;
      v2 += 248;
    }

    while (v2 != v3);
    if (v4)
    {
      v5 = atomic_load(*a2 + 286);
      if (v5)
      {
        v6 = *a2;
        if (!*(*a2 + 282))
        {
          *(v6 + 282) = 1;
          atomic_store(0, v6 + 286);
          *(*a2 + 285) = 0;
          std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::OcclusionQuery> const&>((result + 16), a2);
        }
      }
    }
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A126C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<std::shared_ptr<md::OcclusionQuery>,geo::allocator_adapter<std::shared_ptr<md::OcclusionQuery>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::OcclusionQuery> const&>(mdm::zone_mallocator *result, __int128 *a2)
{
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 16 * v11, 0x20040A4A59CD2uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[16 * v8];
    v17 = *a2;
    *v16 = *a2;
    if (*(&v17 + 1))
    {
      atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v18 = &v15[16 * v11];
    v7 = v16 + 16;
    v19 = *(result + 1) - *result;
    v20 = &v16[-v19];
    v21 = memcpy(&v16[-v19], *result, v19);
    v22 = *result;
    *result = v20;
    *(result + 1) = v7;
    *(result + 2) = v18;
    if (v22)
    {
      v23 = mdm::zone_mallocator::instance(v21);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::OcclusionQuery>>(v23, v22);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(result + 1) = v7;
}

uint64_t gdc::typeIndex<DaVinci::Gradient1Texture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::Gradient1Texture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[108];
}

void geo::small_vector_base<md::OcclusionProbe>::resize(uint64_t a1, unint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = &v4[-*a1];
  if (v6 >> 3 <= a2)
  {
    if (v6 >> 3 >= a2)
    {
      return;
    }

    v8 = *(a1 + 24);
    if (v8 >= a2)
    {
      v13 = *a1;
    }

    else
    {
      v9 = *(a1 + 16);
      v10 = (1 << -__clz(v8 + 1));
      if (v8 >= 0xFFFFFFFFFFFFFFFELL)
      {
        v10 = 1;
      }

      if (v10 <= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = v10;
      }

      v12 = malloc_type_malloc(8 * v11, 0x100004090D0E795uLL);
      v13 = v12;
      v14 = *a1;
      v15 = *(a1 + 8);
      if (*a1 != v15)
      {
        v16 = v12;
        do
        {
          v17 = *v14++;
          *v16++ = v17;
        }

        while (v14 != v15);
      }

      if (v5 != v9)
      {
        free(*a1);
      }

      *a1 = v13;
      v4 = v13 + v6;
      *(a1 + 24) = v11;
    }

    v7 = &v13[a2];
    if (v4 != v7)
    {
      v18 = 0;
      v19 = (v7 - v4 - 8) >> 3;
      v20 = vdupq_n_s64(v19);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v18), xmmword_1B33B0560)));
        if (v21.i8[0])
        {
          *&v4[8 * v18] = 0xFFFFFFFFLL;
        }

        if (v21.i8[4])
        {
          *&v4[8 * v18 + 8] = 0xFFFFFFFFLL;
        }

        v18 += 2;
      }

      while (((v19 + 2) & 0x3FFFFFFFFFFFFFFELL) != v18);
    }
  }

  else
  {
    v7 = &v5[a2];
  }

  *(a1 + 8) = v7;
}

uint64_t ggl::DaVinci::GroundDepthPipelineSetup::deviceDataIsEnabled(ggl::DaVinci::GroundDepthPipelineSetup *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = *(*(this + 2) + 316);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12790;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ggl::DaVinci::GroundDepthPipelineSetup::constantDataIsEnabled(ggl::DaVinci::GroundDepthPipelineSetup *this, unint64_t a2)
{
  if (a2 < 2)
  {
    v2 = 1;
  }

  else if (a2 == 3)
  {
    v2 = *(*(this + 2) + 336);
  }

  else if (a2 == 2)
  {
    v2 = *(*(this + 2) + 335);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t gdc::typeIndex<DaVinci::Gradient2Texture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::Gradient2Texture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[106];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12860;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::OcclusionTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::OcclusionTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[104];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12930;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::OverlayTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::OverlayTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[112];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12A00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::RouteMaskTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::RouteMaskTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[102];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12AD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::ShadowTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::ShadowTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[118];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12BA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::StyleIndexTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::StyleIndexTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[100];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12C70;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::StyleTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::StyleTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[120];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::TemperatureTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::TemperatureTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[98];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12E10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<DaVinci::TexTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<DaVinci::TexTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[122];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12EE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<Flyover::AtmosphereTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<Flyover::AtmosphereTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[92];
}

uint64_t gdc::typeIndex<Flyover::DiffuseTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<Flyover::DiffuseTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[94];
}

uint64_t gdc::typeIndex<Flyover::NightTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<Flyover::NightTexture>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[96];
}

uint64_t md::requiredDeviceDataForPipeline(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, a1))
  {
    {
      if (v13)
      {
        md::typeToIntMap(v13);
        md::requiredDeviceDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap = md::typeToIntMap(void)::typeToIntMap;
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::requiredDeviceDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap, a1);
    if (!v7)
    {
      abort();
    }

    v8 = *(v7 + 6);
    v9 = *(v7 + 7);
    if (v8 != -1)
    {
      *a4 = ggl::PipelineSetup::canSetDeviceV(*(a2 + 16), v8, (a4 + 4));
    }

    if (v9 == -1)
    {
      canSetDeviceF = *(a4 + 1);
    }

    else
    {
      canSetDeviceF = ggl::PipelineSetup::canSetDeviceF(*(a2 + 16), v9, (a4 + 8));
      *(a4 + 1) = canSetDeviceF;
    }

    v11 = *a4 | canSetDeviceF;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[194];
}

BOOL ggl::PipelineSetup::canSetDeviceV(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 8), (v4 = *(v3 + 56)) != 0))
  {
    v5 = *(v3 + 48);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13220;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[196];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A132F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[190];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A133C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[192];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13490;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::requiredDataForPipeline(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, a1))
  {
    {
      if (v13)
      {
        md::typeToIntMap(v13);
        md::requiredDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap = md::typeToIntMap(void)::typeToIntMap;
      }
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::requiredDataForPipeline(unsigned long,ggl::PipelineSetup *,std::unordered_set<unsigned long> const&,md::ls::BindingCachedInfo &)::typeBindingInfoMap, a1);
    if (!v7)
    {
      abort();
    }

    v8 = *(v7 + 6);
    v9 = *(v7 + 7);
    if (v8 != -1)
    {
      *a4 = ggl::PipelineSetup::canSetConstantV(*(a2 + 16), v8, (a4 + 4));
    }

    if (v9 == -1)
    {
      canSetConstantF = *(a4 + 1);
    }

    else
    {
      canSetConstantF = ggl::PipelineSetup::canSetConstantF(*(a2 + 16), v9, (a4 + 8));
      *(a4 + 1) = canSetConstantF;
    }

    v11 = *a4 | canSetConstantF;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[128];
}

BOOL ggl::PipelineSetup::canSetConstantF(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 24), (v4 = *(v3 + 40)) != 0))
  {
    v5 = *(v3 + 32);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13560;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[138];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13630;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[160];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13700;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[148];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A137D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[156];
}

BOOL ggl::PipelineSetup::canSetConstantV(ggl::PipelineSetup *this, uint64_t a2, int *a3)
{
  if (this && (v3 = *(*(*(this + 6) + 72) + 8), (v4 = *(v3 + 40)) != 0))
  {
    v5 = *(v3 + 32);
    while (v5[1] != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    v6 = *v5;
  }

  else
  {
LABEL_6:
    v6 = -1;
  }

  *a3 = v6;
  return v6 >= 0;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A138A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[164];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13970;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[154];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13A40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[162];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13B10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[152];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13BE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[132];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13CB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[170];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13D80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[142];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13E50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[168];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13F20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[134];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13FF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[146];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A140C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gms::PBRWithColorRampMaterial<ggl::Texture2D>::minVisibility(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (*(*v4 + 264))(v4, a2);
    v6 = HIBYTE(v5);
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    LOWORD(v7) = (*(*v7 + 264))(v7, v2);
    v8 = BYTE1(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5;
  if (v7 < v5)
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v9 = v5;
    v10 = v6;
  }

  if (v6)
  {
    v8 = v10;
  }

  else
  {
    v9 = v7;
  }

  return v9 | (v8 << 8);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[140];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14190;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[144];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14260;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[166];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14330;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[130];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14400;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t md::MaterialResourceStore::createMaterialHandle(int8x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v85 = a2;
  *&v86 = a3;
  v6 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(&a1[46], &v85);
  if (v6)
  {
    v7 = v6[4];
    if (v7)
    {
      return v7;
    }
  }

  v86 = 0uLL;
  v85 = a2;
  v87 = 0;
  v8 = a1[31];
  v9 = a1[29];
  if (*&a1[28] == *&v9)
  {
    v7 = ((*&a1[32] - *&v8) >> 3) | 0x100000000;
    v88 = v7;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[31], &v88);
  }

  else
  {
    v7 = *(*&v8 + 8 * *(*&v9 - 8));
    a1[29] = (*&v9 - 8);
  }

  v88 = v7;
  v10 = v7 >> 6;
  v11 = a1[3];
  v12 = a1[4];
  if (v10 >= (*&v12 - *&v11) >> 3)
  {
    v13 = v10 + 1;
    v14 = v10 + 1 - ((*&v12 - *&v11) >> 3);
    v15 = a1[5];
    if (v14 > (*&v15 - *&v12) >> 3)
    {
      v16 = *&v15 - *&v11;
      if (v16 >> 2 > v13)
      {
        v13 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v13;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v17);
    }

    bzero(*&a1[4], 8 * v14);
    a1[4] = (*&v12 + 8 * v14);
    v11 = a1[3];
  }

  v18 = *(*&v11 + 8 * v10);
  if (!v18)
  {
    operator new();
  }

  v19 = (v18 + 16 * (v7 & 0x3F));
  if (*v19 == -1 && v19[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[6], &v88);
    v21 = ((*&a1[7] - *&a1[6]) >> 3) - 1;
    *v19 = HIDWORD(v7);
    v19[1] = v21;
    v22 = v21 & 0x3F;
    v23 = (*(*&a1[9] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(&a1[9], v21)) + 24 * v22);
    *v23 = vdupq_n_s64(1uLL);
    v23[1].i16[0] = 1;
    v24 = v21 >> 6;
    v26 = a1[15];
    v25 = a1[16];
    v84 = v21 >> 6;
    if (v21 >> 6 >= (*&v25 - *&v26) >> 3)
    {
      v27 = v24 + 1;
      v28 = v24 + 1 - ((*&v25 - *&v26) >> 3);
      v29 = a1[17];
      v82 = *&v25 - *&v26;
      if (v28 > (*&v29 - *&v25) >> 3)
      {
        v30 = *&v29 - *&v26;
        v31 = (*&v29 - *&v26) >> 2;
        if (v31 <= v27)
        {
          v31 = v24 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (!(v32 >> 61))
        {
          operator new();
        }

        goto LABEL_121;
      }

      v33 = 0;
      v34 = (v28 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v35 = vdupq_n_s64(v34);
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(vdupq_n_s64(v33), xmmword_1B33B0560)));
        if (v36.i8[0])
        {
          *(*&v25 + 8 * v33) = 0;
        }

        if (v36.i8[4])
        {
          *(*&v25 + 8 * v33 + 8) = 0;
        }

        v33 += 2;
      }

      while (v34 - ((v28 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v33);
      a1[16] = (*&v25 + 8 * v28);
      v37 = a1[18];
      v38 = a1[19];
      v39 = (*&v38 - *&v37) >> 4;
      if (v39 <= v24)
      {
        v40 = v27 - v39;
        v41 = a1[20];
        if (v40 > (*&v41 - *&v38) >> 4)
        {
          v42 = *&v41 - *&v37;
          v43 = v42 >> 3;
          if (v42 >> 3 <= v27)
          {
            v43 = v27;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFF0)
          {
            v44 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v43;
          }

          if (!(v44 >> 60))
          {
            operator new();
          }

          goto LABEL_121;
        }

        bzero(*&a1[19], 16 * v40);
        a1[19] = (*&v38 + 16 * v40);
        v24 = v84;
      }

      else if (v27 < v39)
      {
        a1[19] = (*&v37 + 16 * v27);
      }

      v26 = a1[15];
      if (v82 < *&a1[16] - *&v26)
      {
        operator new();
      }
    }

    v45 = *(*&v26 + 8 * v24) + 24 * v22;
    *v45 = v85;
    *(v45 + 8) = v86;
    v86 = 0uLL;
    v47 = a1[21];
    v46 = a1[22];
    if (v24 < (*&v46 - *&v47) >> 3)
    {
LABEL_80:
      *(*(*&v47 + 8 * v24) + 8 * v22) = v87;
      goto LABEL_81;
    }

    v83 = *&v46 - *&v47;
    v48 = v24 + 1;
    v49 = v24 + 1 - ((*&v46 - *&v47) >> 3);
    v50 = a1[23];
    if (v49 > (*&v50 - *&v46) >> 3)
    {
      v51 = *&v50 - *&v47;
      v52 = (*&v50 - *&v47) >> 2;
      if (v52 <= v48)
      {
        v52 = v24 + 1;
      }

      if (v51 >= 0x7FFFFFFFFFFFFFF8)
      {
        v53 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v52;
      }

      if (!(v53 >> 61))
      {
        operator new();
      }

      goto LABEL_121;
    }

    v54 = 0;
    v55 = (v49 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v56 = vdupq_n_s64(v55);
    do
    {
      v57 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(vdupq_n_s64(v54), xmmword_1B33B0560)));
      if (v57.i8[0])
      {
        *(*&v46 + 8 * v54) = 0;
      }

      if (v57.i8[4])
      {
        *(*&v46 + 8 * v54 + 8) = 0;
      }

      v54 += 2;
    }

    while (v55 - ((v49 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v54);
    a1[22] = (*&v46 + 8 * v49);
    v58 = a1[24];
    v59 = a1[25];
    v60 = (*&v59 - *&v58) >> 4;
    if (v60 > v24)
    {
      if (v48 < v60)
      {
        a1[25] = (*&v58 + 16 * v48);
      }

      goto LABEL_78;
    }

    v61 = v48 - v60;
    v62 = a1[26];
    if (v61 <= (*&v62 - *&v59) >> 4)
    {
      bzero(*&a1[25], 16 * v61);
      a1[25] = (*&v59 + 16 * v61);
      v24 = v84;
LABEL_78:
      v47 = a1[21];
      if (v83 < *&a1[22] - *&v47)
      {
        operator new();
      }

      goto LABEL_80;
    }

    v63 = *&v62 - *&v58;
    v64 = v63 >> 3;
    if (v63 >> 3 <= v48)
    {
      v64 = v48;
    }

    if (v63 >= 0x7FFFFFFFFFFFFFF0)
    {
      v65 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v65 = v64;
    }

    if (!(v65 >> 60))
    {
      operator new();
    }

LABEL_121:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_81:
  v66 = (&a2[8 * v3 - 0xE44323405AC1F58] - 0x3A3AA7D820E2E4E6) ^ (v3 - 0x61C8864680B583EBLL);
  v67 = (v66 << 6) + HIBYTE(v3) + (v66 >> 2);
  v68 = (v67 - 0x61C8864680B583EBLL) ^ v66;
  v69 = a1[47];
  if (!*&v69)
  {
    goto LABEL_99;
  }

  v70 = vcnt_s8(v69);
  v70.i16[0] = vaddlv_u8(v70);
  if (v70.u32[0] > 1uLL)
  {
    v71 = (v67 - 0x61C8864680B583EBLL) ^ v66;
    if (v68 >= *&v69)
    {
      v71 = v68 % *&v69;
    }
  }

  else
  {
    v71 = v68 & (*&v69 - 1);
  }

  v72 = *(*&a1[46] + 8 * v71);
  if (!v72 || (v73 = *v72) == 0)
  {
LABEL_99:
    operator new();
  }

  while (1)
  {
    v74 = v73[1];
    if (v74 == v68)
    {
      break;
    }

    if (v70.u32[0] > 1uLL)
    {
      if (v74 >= *&v69)
      {
        v74 %= *&v69;
      }
    }

    else
    {
      v74 &= *&v69 - 1;
    }

    if (v74 != v71)
    {
      goto LABEL_99;
    }

LABEL_98:
    v73 = *v73;
    if (!v73)
    {
      goto LABEL_99;
    }
  }

  if (v73[2] != a2 || __PAIR64__(*(v73 + 25), *(v73 + 24)) != __PAIR64__(HIBYTE(v3), v3))
  {
    goto LABEL_98;
  }

  v73[4] = v7;
  v75 = a1[52];
  if (!*&v75)
  {
    goto LABEL_117;
  }

  v76 = vcnt_s8(v75);
  v76.i16[0] = vaddlv_u8(v76);
  if (v76.u32[0] > 1uLL)
  {
    v77 = v7;
    if (v7 >= *&v75)
    {
      v77 = v7 % *&v75;
    }
  }

  else
  {
    v77 = (*&v75 - 1) & v7;
  }

  v78 = *(*&a1[51] + 8 * v77);
  if (!v78 || (v79 = *v78) == 0)
  {
LABEL_117:
    operator new();
  }

  while (2)
  {
    v80 = v79[1];
    if (v80 != v7)
    {
      if (v76.u32[0] > 1uLL)
      {
        if (v80 >= *&v75)
        {
          v80 %= *&v75;
        }
      }

      else
      {
        v80 &= *&v75 - 1;
      }

      if (v80 != v77)
      {
        goto LABEL_117;
      }

      goto LABEL_116;
    }

    if (v79[2] != v7)
    {
LABEL_116:
      v79 = *v79;
      if (!v79)
      {
        goto LABEL_117;
      }

      continue;
    }

    break;
  }

  v79[3] = a2;
  *(v79 + 16) = v3;
  if (*(&v86 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v86 + 1));
  }

  return v7;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[158];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A144D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[136];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A145A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[488];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14670;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[126];
}

uint64_t md::MaterialResourceStore::disconnect<geo::handle<md::MaterialIDStorage>>(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 2, a2);
  if (result != a1[7])
  {
    v4 = (*(a1[9] + ((((result - a1[6]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[6]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14740;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ecs2::addComponent<md::ls::RampMaterialData>(uint64_t a1, int a2, __int128 *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  operator new();
}

void ecs2::addComponent<md::ls::TexturesToDisconnect>(uint64_t a1, int a2, __int128 *a3)
{
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  operator new();
}

void sub_1B2BA0664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[124];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t ecs2::addComponent<md::ls::PendingDeletion>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A470;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A1A470;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F29E5AD0[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PendingDeletion>(ecs2::Entity,md::ls::PendingDeletion &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A1A470;
  a2[1] = *(result + 8);
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[258];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A148E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[174];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A149B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[178];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14A80;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RampMaterialData>(ecs2::Entity,md::ls::RampMaterialData &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(a1 + 24);
    v57 = (*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F));
    *v57 = *(a1 + 8);
    v57[1] = v56;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = (*(v30 + 8 * v28) + 32 * (v27 & 0x3F));
  v5 = v59;
  v52 = *(a1 + 24);
  *v51 = *(a1 + 8);
  v51[1] = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata) = *(a2 + 4096);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[108];
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14B50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata;
  v57 = a2;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 == -1 && v13 == 0)
  {
    v16 = *(v7 + 40);
    v15 = *(v7 + 48);
    if (v16 >= v15)
    {
      v18 = *(v7 + 32);
      v19 = (v16 - v18) >> 2;
      if ((v19 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v15 - v18;
      v21 = v20 >> 1;
      if (v20 >> 1 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v22 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
      }

      *(4 * v19) = v4;
      v17 = 4 * v19 + 4;
      v23 = *(v7 + 32);
      v24 = *(v7 + 40) - v23;
      v25 = (4 * v19 - v24);
      memcpy(v25, v23, v24);
      v26 = *(v7 + 32);
      *(v7 + 32) = v25;
      *(v7 + 40) = v17;
      *(v7 + 48) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v4;
      v17 = (v16 + 1);
    }

    *(v7 + 40) = v17;
    v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
    *v12 = v4;
    v12[1] = v27;
    v28 = v27 >> 6;
    v30 = *(v7 + 56);
    v29 = *(v7 + 64);
    if (v27 >> 6 >= (v29 - v30) >> 3)
    {
      v54 = v27;
      v55 = v5;
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = *(v7 + 72);
      v56 = v29 - v30;
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        v35 = (v33 - v30) >> 2;
        if (v35 <= v31)
        {
          v35 = v28 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 61))
        {
          operator new();
        }

        goto LABEL_59;
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(v29 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(v29 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      *(v7 + 64) = v29 + 8 * v32;
      v41 = *(v7 + 80);
      v42 = *(v7 + 88);
      v43 = (v42 - v41) >> 4;
      if (v43 <= v28)
      {
        v27 = v31 - v43;
        v44 = *(v7 + 96);
        if (v27 > (v44 - v42) >> 4)
        {
          v45 = v44 - v41;
          v46 = v45 >> 3;
          if (v45 >> 3 <= v31)
          {
            v46 = v28 + 1;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFF0)
          {
            v47 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v46;
          }

          if (!(v47 >> 60))
          {
            operator new();
          }

LABEL_59:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(v7 + 88), 16 * v27);
        *(v7 + 88) = v42 + 16 * v27;
        LOBYTE(v27) = v54;
      }

      else if (v31 < v43)
      {
        *(v7 + 88) = v41 + 16 * v31;
      }

      v30 = *(v7 + 56);
      v5 = v55;
      if (v56 < *(v7 + 64) - v30)
      {
        operator new();
      }
    }

    v48 = (*(v30 + 8 * v28) + 24 * (v27 & 0x3F));
    *v48 = 0;
    v48[1] = 0;
    v48[2] = 0;
    *v48 = *(a1 + 8);
    v48[2] = *(a1 + 24);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v49 = *(v7 + 152);
    v50 = *(v7 + 160);
    while (v49 != v50)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v49 + 24), v4);
      v49 += 32;
    }

    goto LABEL_57;
  }

  v51 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
  v52 = *v51;
  if (*v51)
  {
    *(v51 + 8) = v52;
    operator delete(v52);
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
  }

  *v51 = *(a1 + 8);
  *(v51 + 16) = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
LABEL_57:
  v53 = *(v57 + 41016) + (v4 >> 16 << 6);
  *(v53 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata) = *(v57 + 4096);
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[172];
}