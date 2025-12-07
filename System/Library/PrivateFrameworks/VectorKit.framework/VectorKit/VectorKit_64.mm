void sub_1B2BFAE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (v49 < 0)
  {
    operator delete(v47);
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void md::DrapingLogic::_fallbackTilesForHoleTile(uint64_t *a1, void *a2, uint64_t a3, void *a4)
{
  gdc::Tiled::tileFromLayerDataKey(&v43, *(a3 + 16));
  v8 = 1 << v44;
  v38[0] = v43;
  v38[1] = v44;
  v39 = (v45 % v8 + v8) % v8;
  v40 = (v46 % v8 + v8) % v8;
  v41 = 0;
  v42 = 1;
  v9.n128_f64[0] = gdc::FallbackCollector::start((a2 + 29), v38);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v10 = *(a3 + 8);
  v11 = a2[58];
  v12 = v11[10];
  v13 = v11[11];
  while (v12 != v13)
  {
    if (*v12 == v10)
    {
      if (v12 != v13)
      {
        v14 = *(v12 + 1);
        goto LABEL_8;
      }

      break;
    }

    v12 += 8;
  }

  v14 = 0;
LABEL_8:
  v16 = v11[4];
  v15 = v11[5];
  while (v16 != v15)
  {
    if (*v16 == v10)
    {
      if (v16 != v15)
      {
        v17 = *(v16 + 1);
        goto LABEL_15;
      }

      break;
    }

    v16 += 8;
  }

  v17 = 0;
LABEL_15:
  v18 = (*(*v17 + 96))(v17, v9);
  md::TileAdjustmentHelpers::getFallbackDataForTile(a2 + 42, v10, v38, v14, (a2 + 29));
  *&v27[4] = 0;
  *&v27[8] = 0;
  *v27 = 255;
  v28 = 0;
  if ((v18 & 0x100) != 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = 0;
  }

  v29 = 1;
  gdc::FallbackCollector::collectFallbackData((a2 + 29), &v35, v18 & 1, v19, v27);
  gdc::FallbackCollector::end((a2 + 29), v20);
  std::vector<gdc::LayerDataRequestKey>::reserve(a1, 0xF0F0F0F0F0F0F0F1 * ((v36 - v35) >> 3));
  v21 = v35;
  for (i = v36; v21 != i; v21 += 136)
  {
    v23 = *v21;
    *&v27[4] = *(v21 + 4);
    *v27 = v23;
    v28 = *(v21 + 16);
    v29 = *(v21 + 24);
    gdc::LayerDataKey::LayerDataKey(&v30, v21 + 32);
    v24 = *(v21 + 120);
    v25 = *(v21 + 128);
    v33 = v24;
    v34 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = v33;
    }

    FillRect = grl::IconMetricsRenderResult::getFillRect(v24);
    std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](a1, FillRect);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    if (v31 != v32)
    {
      free(v31);
    }
  }

  *v27 = &v35;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](v27);
}

void sub_1B2BFB114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  a9 = &a26;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<gdc::LayerDataRequestKey>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gdc::LayerDataRequestKey const*>,std::__wrap_iter<gdc::LayerDataRequestKey const*>>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = a3;
  v10 = result[1];
  v9 = result[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 4) < a5)
  {
    v11 = *result;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *result) >> 4);
    if (v12 > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x124924924924924)
    {
      v14 = 0x249249249249249;
    }

    else
    {
      v14 = v12;
    }

    v32[4] = result;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v14);
    }

    v23 = 16 * ((a2 - v11) >> 4);
    v24 = 112 * a5;
    v25 = v23 + 112 * a5;
    v26 = v23;
    do
    {
      v26 = gdc::LayerDataRequestKey::LayerDataRequestKey(v26, v6) + 112;
      v6 += 112;
      v24 -= 112;
    }

    while (v24);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(a2, result[1], v25);
    v27 = *result;
    v28 = v25 + result[1] - a2;
    result[1] = a2;
    v29 = v23 + v27 - a2;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v27, a2, v29);
    v30 = *result;
    *result = v29;
    result[1] = v28;
    v31 = result[2];
    result[2] = 0;
    v32[2] = v30;
    v32[3] = v31;
    v32[0] = v30;
    v32[1] = v30;
    std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(v32);
    return;
  }

  v15 = v10 - a2;
  if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 4) >= a5)
  {
    v22 = 112 * a5;
    std::vector<gdc::LayerDataRequestKey>::__move_range(result, a2, result[1], a2 + 112 * a5);
    v21 = v22 + v6;
    v20 = v6;
    goto LABEL_18;
  }

  v17 = result[1];
  if (v15 + a3 != a4)
  {
    v18 = v15 + a3;
    v17 = v10;
    do
    {
      v19 = gdc::LayerDataRequestKey::LayerDataRequestKey(v17, v18);
      v18 += 112;
      v17 = v19 + 112;
    }

    while (v18 != a4);
  }

  result[1] = v17;
  if (v15 >= 1)
  {
    std::vector<gdc::LayerDataRequestKey>::__move_range(result, a2, v10, a2 + 112 * a5);
    v20 = v6;
    v21 = v15 + v6;
LABEL_18:

    std::__copy_impl::operator()[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey*>(v20, v21, a2);
  }
}

void std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(*a1);
    std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::vector<gdc::LayerDataRequestKey>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::vector<gdc::LayerDataRequestKey>>,0>(uint64_t a1)
{
  v3 = (a1 + 112);
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 32))
  {

    free(v2);
  }
}

__n128 std::vector<gdc::LayerDataRequestKey>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(a1 + 8);
    do
    {
      v11 = gdc::LayerDataRequestKey::LayerDataRequestKey(v10, v9);
      v9 += 112;
      v10 = v11 + 112;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v10;
  if (v6 != a4)
  {
    v13 = 0;
    v14 = a4 - v6;
    do
    {
      v15 = v6 + v13;
      v16 = v7 + v13;
      *(v15 - 112) = *(v7 + v13 - 112);
      *(v15 - 104) = *(v7 + v13 - 104);
      if (v7 != v6)
      {
        geo::small_vector_base<unsigned char>::copy((v15 - 96), (v16 - 96), (v15 - 64));
      }

      *(v15 - 32) = *(v16 - 32);
      result = *(v16 - 16);
      *(v15 - 16) = result;
      v13 -= 112;
    }

    while (v14 != v13);
  }

  return result;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a3 + 48;
    v5 = a1 + 16;
    do
    {
      v6 = v5 - 16;
      *(v4 - 48) = *(v5 - 16);
      *(v4 - 40) = *(v5 - 8);
      if (v4 - 48 != v5 - 16)
      {
        geo::small_vector_base<unsigned char>::copy((v4 - 32), v5, v4);
      }

      *(v4 + 32) = *(v5 + 64);
      result = *(v5 + 80);
      *(v4 + 48) = result;
      v4 += 112;
      v5 += 112;
    }

    while (v6 + 112 != a2);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 112;
    v4 = *(v2 - 96);
    if (v4 == *(v2 - 80))
    {
      v2 -= 112;
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

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(a3, v6);
      v6 += 112;
      a3 += 112;
    }

    while (v6 != a2);
    do
    {
      v7 = *(v5 + 16);
      if (v7 != *(v5 + 32))
      {
        free(v7);
      }

      v5 += 112;
    }

    while (v5 != a2);
  }
}

uint64_t *std::vector<gdc::LayerDataRequestKey>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3 != a1[7])
  {

    free(v3);
  }
}

void md::DrapingLogic::_dataInStore(std::__shared_weak_count **a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int8 *a4, int a5)
{
  v5 = a5;
  while (a2 != a3)
  {
    if (*a2 == a5)
    {
      if (a2 != a3)
      {
        v8 = *(a2 + 1);
        goto LABEL_8;
      }

      break;
    }

    a2 += 8;
  }

  v8 = 0;
LABEL_8:
  gdc::Tiled::mapDataKeyFromTile(v14, 0, a4, a5);
  gdc::LayerDataStore::get(a1, v8, v14);
  if (!*a1)
  {
    gdc::Tiled::mapDataKeyFromTile(&v10, 1u, a4, v5);
    v14[0] = v10;
    v15 = WORD4(v10);
    geo::small_vector_base<unsigned char>::copy(v16, v11, v17);
    v17[2] = v12;
    v17[3] = v13;
    if (v11[0] != v11[2])
    {
      free(v11[0]);
    }

    gdc::LayerDataStore::get(&v10, v8, v14);
    v9 = a1[1];
    *a1 = v10;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  if (v16[0] != v16[2])
  {
    free(v16[0]);
  }
}

void sub_1B2BFB990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27)
{
  if (a11 != a13)
  {
    free(a11);
  }

  v29 = *(v27 + 8);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  if (a25 != a27)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:nn200100](a2 + 24);
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

uint64_t std::unique_ptr<std::__hash_node<md::FoundationOverlayPair,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<md::FoundationOverlayPair,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<md::FoundationOverlayPair,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t md::overlayComponents::VectorOverlay::VectorOverlay(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v4 = *a2;
  *a1 = 0;
  *(a1 + 8) = v4;
  if (v4)
  {
    operator new();
  }

  *a2 = 0;
  v5 = a2[1];
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    operator new();
  }

  *(a1 + 32) = 0;
  a2[1] = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v6 = a4[1];
  *(a1 + 72) = *a4;
  *(a1 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = a3;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1B2BFBBD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::emplace_back<md::overlayComponents::VectorOverlay &,md::DrapingStyle>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *a1) >> 3);
    if (v7 + 1 > 0x1E1E1E1E1E1E1E1)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0xF0F0F0F0F0F0F0)
    {
      v10 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v10 = v9;
    }

    v11[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(v10);
    }

    v11[0] = 0;
    v11[1] = 136 * v7;
    v11[3] = 0;
    std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::construct[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,md::overlayComponents::VectorOverlay &,md::DrapingStyle,void,0>(136 * v7, a2, a3);
    v11[2] = 136 * v7 + 136;
    std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::__swap_out_circular_buffer(a1, v11);
    v6 = a1[1];
    std::__split_buffer<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem> &>::~__split_buffer(v11);
  }

  else
  {
    std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::construct[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,md::overlayComponents::VectorOverlay &,md::DrapingStyle,void,0>(a1[1], a2, a3);
    v6 = v5 + 136;
  }

  a1[1] = v6;
}

void md::overlayComponents::VectorOverlay::~VectorOverlay(md::overlayComponents::VectorOverlay *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void md::PolygonOverlayMeshBuilder::PolygonMeshes::~PolygonMeshes(md::PolygonOverlayMeshBuilder::PolygonMeshes *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *this;
  *this = 0;
  if (v3)
  {
    std::default_delete<md::Mesh>::operator()[abi:nn200100](v3);
  }
}

void *std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::reserve(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 104 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t md::debugString<geo::QuadTile>(void *a1, unsigned __int8 *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  v4 = MEMORY[0x1B8C61C80](&v12, *(a2 + 2));
  v17 = 46;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, &v17, 1);
  v6 = MEMORY[0x1B8C61C80](v5, *(a2 + 1));
  v17 = 46;
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, &v17, 1);
  MEMORY[0x1B8C61C90](v7, a2[1]);
  v8 = *a2;
  if (v8 <= 5)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, off_1E7B58778[v8], qword_1B3420E30[v8]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v11);
  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v16);
}

void sub_1B2BFC0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v28 + *(*MEMORY[0x1E69E54D8] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a13);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a28);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<md::Mesh>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 112 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t *std::vector<md::Mesh>::emplace_back<md::Mesh const&>(unint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    v26 = v2;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(v13);
    }

    *(&v25 + 1) = 0;
    v14 = *(a2 + 8);
    v15 = 80 * v10;
    *v15 = *a2;
    *(v15 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    *(80 * v10 + 0x2E) = *(a2 + 46);
    *(80 * v10 + 0x10) = v16;
    *(80 * v10 + 0x20) = v17;
    v18 = *(a2 + 72);
    *(80 * v10 + 0x40) = *(a2 + 64);
    *(80 * v10 + 0x48) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    *&v25 = v15 + 80;
    v19 = v2[1];
    v20 = (v15 + *v2 - v19);
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(*v2, v19, v20);
    v21 = *v2;
    *v2 = v20;
    v22 = v2[2];
    v23 = v25;
    *(v2 + 1) = v25;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    v24[0] = v21;
    v24[1] = v21;
    result = std::__split_buffer<md::Mesh>::~__split_buffer(v24);
    v9 = v23;
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    *(v3 + 46) = *(a2 + 46);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    v8 = *(a2 + 72);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 72) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = v3 + 80;
  }

  v2[1] = v9;
  return result;
}

uint64_t *std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::vector[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    v3 = 0xF0F0F0F0F0F0F0F1 * ((v2 - *a2) >> 3);
    if (v3 < 0x1E1E1E1E1E1E1E2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(v3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void std::vector<md::Mesh>::__init_with_size[abi:nn200100]<md::Mesh*,md::Mesh*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void **md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0::~$_0(void **a1)
{
  v6 = a1 + 18;
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100](a1 + 15);
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:nn200100]<md::Mesh,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void **std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 17;
        std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[4];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[2];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void std::__destroy_at[abi:nn200100]<md::Mesh,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::operator()(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[5];
      if (!v5 || (v6 = atomic_load(v5), v6 == 3))
      {
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
        return;
      }

      v7 = *(v5 + 32);
      v35 = a1[5];
      v34 = v4;
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v33 = v8;
          v5 = v35;
          v9 = *(v35 + 24) != 0;
        }

        else
        {
          v9 = 0;
          v33 = 0;
          v5 = v35;
        }
      }

      else
      {
        v9 = 0;
        v33 = 0;
      }

      v10 = *(v5 + 48);
      if (!v10 || (v11 = std::__shared_weak_count::lock(v10)) == 0)
      {
LABEL_50:
        v4 = v34;
        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v33);
        }

        goto LABEL_52;
      }

      if (*(v35 + 40))
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
LABEL_49:
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        goto LABEL_50;
      }

      v32 = v11;
      atomic_store(1u, v35);
      v13 = +[VKSharedResourcesManager sharedResources];
      (*(*[v13 gglDevice] + 24))(&v36);

      v14 = a1[4];
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = 0xFCFCFCFCFCFCFCFDLL * ((a1[17] - a1[16]) >> 3) * ((a1[20] - a1[19]) >> 4);
      v17 = v35;
      v18 = *(v35 + 112);
      v19 = *(v35 + 120);
      v20 = 0xCCCCCCCCCCCCCCCDLL * (&v19[-v18] >> 4);
      v21 = v16 - v20;
      if (v16 <= v20)
      {
        if (v16 >= v20)
        {
          v25 = *(v35 + 120);
          v17 = v35;
LABEL_36:
          if (v25 == *(v17 + 112))
          {
            atomic_store(2u, v17);
            v27 = v15;
          }

          else
          {
            if (a1[20] != a1[19])
            {
              operator new();
            }

            atomic_store(2u, v35);
            v26 = a1[2];
            v27 = v15;
            if (v26)
            {
              v28 = std::__shared_weak_count::lock(v26);
              if (v28)
              {
                v29 = v28;
                v30 = a1[1];
                if (v30)
                {
                  v31 = *v30;
                  if (*v30)
                  {
                    v37[0] = 10;
                    md::MapEngine::setNeedsTick(v31, v37);
                  }
                }

                std::__shared_weak_count::__release_shared[abi:nn200100](v29);
              }
            }
          }

          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          }

          ggl::Loader::~Loader(&v36);
          v11 = v32;
          goto LABEL_49;
        }

        v25 = (v18 + 0xF0F0F0F0F0F0F10 * ((a1[17] - a1[16]) >> 3) * ((a1[20] - a1[19]) >> 4));
        while (v19 != v25)
        {
          v19 -= 80;
          std::allocator_traits<std::allocator<md::ClientDrapedMeshes>>::destroy[abi:nn200100]<md::ClientDrapedMeshes,void,0>(v19);
        }

        v17 = v35;
      }

      else
      {
        v22 = *(v35 + 128);
        if (0xCCCCCCCCCCCCCCCDLL * ((v22 - v19) >> 4) < v21)
        {
          if (v16 <= 0x333333333333333)
          {
            v23 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v18) >> 4);
            if (2 * v23 > v16)
            {
              v16 = 2 * v23;
            }

            if (v23 >= 0x199999999999999)
            {
              v24 = 0x333333333333333;
            }

            else
            {
              v24 = v16;
            }

            if (v24 <= 0x333333333333333)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(v19, 80 * ((80 * v21 - 80) / 0x50) + 80);
        v25 = &v19[80 * ((80 * v21 - 80) / 0x50) + 80];
      }

      *(v17 + 120) = v25;
      goto LABEL_36;
    }
  }
}

void sub_1B2BFF26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, __int128 a59)
{
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59);
  }

  ggl::Loader::~Loader(&a59);
  std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  _Unwind_Resume(a1);
}

void sub_1B2BFF668()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  JUMPOUT(0x1B2BFF61CLL);
}

void sub_1B2BFF67C()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  if (!v1)
  {
    JUMPOUT(0x1B2BFF69CLL);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  JUMPOUT(0x1B2BFF6C4);
}

void std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (result[3])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[3] = 0;
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
LABEL_34:
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(v12);
      goto LABEL_35;
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
        v14 = v13[5];
        v9[4] = v13[4];
        v15 = v13[6];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = v9[6];
        v9[5] = v14;
        v9[6] = v15;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        v17 = *v8;
        v18 = result + 1;
        v19 = result + 1;
        if (*v8)
        {
          do
          {
            while (1)
            {
              v18 = v17;
              if (v9[4] >= v17[4])
              {
                break;
              }

              v17 = *v17;
              v19 = v18;
              if (!*v18)
              {
                goto LABEL_20;
              }
            }

            v17 = v17[1];
          }

          while (v17);
          v19 = v18 + 1;
        }

LABEL_20:
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(result, v18, v19, v9);
        if (v10)
        {
          v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
        }

        else
        {
          v10 = 0;
        }

        v20 = v13[1];
        if (v20)
        {
          do
          {
            a2 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            a2 = v13[2];
            v21 = *a2 == v13;
            v13 = a2;
          }

          while (!v21);
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

    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::destroy(v11);
    if (v10)
    {
      for (i = v10[2]; i; i = i[2])
      {
        v10 = i;
      }

      v12 = v10;
      goto LABEL_34;
    }
  }

LABEL_35:
  if (a2 != a3)
  {
    do
    {
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__construct_node<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>> const&>(&v28, result, a2 + 4);
      v23 = result[1];
      v24 = result + 1;
      v25 = result + 1;
      if (v23)
      {
        do
        {
          while (1)
          {
            v24 = v23;
            if (v28[4] >= v23[4])
            {
              break;
            }

            v23 = *v23;
            v25 = v24;
            if (!*v24)
            {
              goto LABEL_42;
            }
          }

          v23 = v23[1];
        }

        while (v23);
        v25 = v24 + 1;
      }

LABEL_42:
      std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(result, v24, v25, v28);
      v26 = a2[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = a2[2];
          v21 = *v27 == a2;
          a2 = v27;
        }

        while (!v21);
      }

      a2 = v27;
    }

    while (v27 != a3);
  }
}

void std::vector<unsigned short>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v8, **(a1 + 8), 0, (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 1, 1, 1, *a2);
  v3 = **(a1 + 16);
  v4 = *(*(a1 + 16) + 8) - v3;
  if (v4)
  {
    v5 = v4 >> 1;
    v6 = v8[5];
    if (v5 <= 1)
    {
      v5 = 1;
    }

    do
    {
      v7 = *v3++;
      *v6++ = v7;
      --v5;
    }

    while (v5);
  }

  ggl::BufferMemory::~BufferMemory(v8);
}

__n128 std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_2>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E27F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::IndexData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D2C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v36, *(a1 + 104), 0, *(a1 + 136), 0, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v34, *(a1 + 120), 0, *(a1 + 136), 1, v3);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v32, *(a1 + 24), 0, *(a1 + 144), 0, 1, v3);
  if (*(a1 + 144) >= 3uLL)
  {
    v7 = 0;
    v8 = *(a1 + 144) / 3uLL;
    do
    {
      v31 = *(v33 + v7);
      v30 = *(v33 + v7 + 2);
      v9 = v30;
      v29 = *(v33 + v7 + 4);
      v10 = v29;
      v11 = (v37 + 16 * v31);
      v12 = (v37 + 16 * v30);
      v13 = (v37 + 16 * v29);
      v14 = *(a1 + 8);
      v4.i16[0] = *(a1 + 152);
      v15 = v4.u32[0];
      v4.i16[0] = v14[2];
      v16.f32[0] = v4.u32[0];
      v5.i16[0] = v14[1];
      *v6.i32 = v5.u32[0];
      v5.i16[0] = v14[3];
      v16.f32[1] = (*v6.i32 + -1.0) - v5.u32[0];
      v17 = vdiv_f32(vmul_n_f32(v16, v15), vdup_lane_s32(v6, 0));
      v4 = vmul_n_f32(vsub_f32(*v11, v17), *v6.i32);
      v5 = vmul_n_f32(vsub_f32(*v12, v17), *v6.i32);
      v6 = vmul_n_f32(vsub_f32(*v13, v17), *v6.i32);
      *v18.f32 = v4;
      *&v18.u32[2] = v4;
      v19.i64[1] = 0;
      v19.f32[0] = v15;
      v19.f32[1] = v15;
      v20.i32[0] = vmovn_s32(vcgtq_f32(v18, v19.u64[0])).u32[0];
      v20.i32[1] = vmovn_s32(vcgtq_f32(*&v19, v18)).i32[1];
      if ((vmaxv_u16(vcltz_s16(vshl_n_s16(v20, 0xFuLL))) & 1) == 0 || (*v21.f32 = v5, *&v21.u32[2] = v5, v22.i32[0] = vmovn_s32(vcgtq_f32(v21, v19)).u32[0], v22.i32[1] = vmovn_s32(vcgtq_f32(v19, v21)).i32[1], (vmaxv_u16(vcltz_s16(vshl_n_s16(v22, 0xFuLL))) & 1) == 0) || (*v23.f32 = v6, *&v23.u32[2] = v6, v24.i32[0] = vmovn_s32(vcgtq_f32(v23, v19)).u32[0], v24.i32[1] = vmovn_s32(vcgtq_f32(v19, v23)).i32[1], (vmaxv_u16(vcltz_s16(vshl_n_s16(v24, 0xFuLL))) & 1) == 0))
      {
        v25 = v35;
        v26 = v35 + 16 * v31;
        *v26 = *v11;
        *(v26 + 4) = v11->i32[1];
        *(v26 + 8) = v11[1].i16[0];
        *(v26 + 10) = v11[1].i16[1];
        *(v26 + 12) = v11[1].i32[1];
        v27 = v25 + 16 * v9;
        *v27 = v12->i32[0];
        *(v27 + 4) = v12->i32[1];
        *(v27 + 8) = v12[1].i16[0];
        *(v27 + 10) = v12[1].i16[1];
        *(v27 + 12) = v12[1].i32[1];
        v28 = v25 + 16 * v10;
        *v28 = v13->i32[0];
        *(v28 + 4) = v13->i32[1];
        *(v28 + 8) = v13[1].i16[0];
        *(v28 + 10) = v13[1].i16[1];
        *(v28 + 12) = v13[1].i32[1];
        *v26 = v4;
        *v27 = v5;
        *v28 = v6;
        std::vector<unsigned short>::push_back[abi:nn200100](*(a1 + 16), &v31);
        std::vector<unsigned short>::push_back[abi:nn200100](*(a1 + 16), &v30);
        std::vector<unsigned short>::push_back[abi:nn200100](*(a1 + 16), &v29);
      }

      v7 += 6;
      --v8;
    }

    while (v8);
  }

  ggl::BufferMemory::~BufferMemory(v32);
  ggl::BufferMemory::~BufferMemory(v34);
  ggl::BufferMemory::~BufferMemory(v36);
}

void sub_1B2BFFF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory(va1);
  ggl::BufferMemory::~BufferMemory((v5 - 96));
  _Unwind_Resume(a1);
}

void std::vector<unsigned short>::push_back[abi:nn200100](uint64_t a1, unsigned __int16 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::destroy(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

__n128 std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E27B0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 64) = 0;
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 96) = 0;
  *(a2 + 76) = *(a1 + 76);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 112);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 136) = result;
  *(a2 + 154) = 0;
  *(a2 + 158) = 0;
  return result;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E27B0;
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_1>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E27B0;
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__construct_node<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>> const&>(ggl::zone_mallocator *a1, uint64_t a2, void *a3)
{
  v5 = a2 + 16;
  v6 = ggl::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *>>(v6);
  *a1 = result;
  *(a1 + 1) = v5;
  *(a1 + 2) = 1;
  v8 = a3[1];
  result[4] = *a3;
  result[5] = v8;
  v9 = a3[2];
  result[6] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x38uLL, 0x1020040276B7DC0uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::read_write_lock::logFailure(geo::read_write_lock *this, uint64_t a2, const char *a3)
{
  v4 = this;
  v10 = *MEMORY[0x1E69E9840];
  {
    geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
  }

  v5 = geo::read_write_lock::logFailure(int,char const*)::log;
  if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
  {
    v6 = 136315394;
    v7 = a2;
    v8 = 1024;
    v9 = v4;
    _os_log_fault_impl(&dword_1B2754000, v5, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &v6, 0x12u);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<ggl::VertexData>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<ggl::VertexData>>(uint64_t a1, void *a2)
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

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, *(a1 + 16), 0, *(a1 + 48), 0, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v12, *(a1 + 32), 0, *(a1 + 48), 1, v3);
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 8);
    v8 = v12[5] + 8;
    v9 = v13[5] + 8;
    do
    {
      *(v8 - 8) = *(v9 - 8);
      *(v8 - 4) = *(v9 - 4);
      *v8 = *v9;
      *(v8 + 2) = *(v9 + 2);
      v10 = *(v9 + 4);
      *(v8 + 4) = v10;
      LOWORD(v10) = *(a1 + 56);
      v11 = v7[1];
      *v4.i32 = v11;
      v5.i16[0] = v7[2];
      v5.f32[0] = v5.u32[0];
      v5.f32[1] = (~v7[3] + v11);
      v4 = vdup_lane_s32(v4, 0);
      *(v8 - 8) = vdiv_f32(vmla_n_f32(*(v9 - 8), v5, v10), v4);
      v8 += 16;
      v9 += 16;
      --v6;
    }

    while (v6);
  }

  ggl::BufferMemory::~BufferMemory(v12);
  ggl::BufferMemory::~BufferMemory(v13);
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy[abi:nn200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2768;
  *(a2 + 8) = v2;
  v3 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 48);
  *(a2 + 56) = *(result + 56);
  *(a2 + 48) = v5;
  *(a2 + 58) = 0;
  *(a2 + 62) = 0;
  return result;
}

void std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2768;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2768;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E26E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v13, a1[1], 0, a1[5], 0, *a2);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v12, a1[3], 0, a1[5], 1, v3);
  v5 = a1[5];
  if (v5)
  {
    v6 = a1[8];
    v7 = (v13[5] + 6);
    v8 = v12[5] + 8;
    do
    {
      v9 = *(v6 + 4 * ((v7[2] >> 15) ^ 1u));
      LOWORD(v4) = *(v7 - 3);
      *&v10 = *(v7 - 1);
      v4 = LODWORD(v4) + (v9 * *&v10);
      LOWORD(v10) = *(v7 - 2);
      v11 = *v7;
      *(v8 - 8) = v4;
      *(v8 - 4) = v10 + (v9 * v11);
      *v8 = v7[1];
      *(v8 + 2) = v7[2];
      *(v8 + 4) = *(v7 + 3);
      v7 += 10;
      v8 += 16;
      --v5;
    }

    while (v5);
  }

  ggl::BufferMemory::~BufferMemory(v12);
  ggl::BufferMemory::~BufferMemory(v13);
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = __p[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  operator delete(__p);
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void *std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F29E2720;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  v6 = result[7];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a2[8] = result[8];
  return result;
}

void std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2720;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0,std::allocator<_bakeRibbonMesh(ggl::Loader *,ggl::PolylineOverlayRibbon::BaseMesh const&,md::EdgeScales)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2720;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return a1;
}

void *std::__function::__value_func<gm::Matrix<float,2,1> ()(ZDiffParams,gm::Matrix<float,2,1>,float)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<gm::Matrix<float,2,1> ()(ZDiffParams,gm::Matrix<float,2,1>,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v14, *(a1 + 40), 0, *(a1 + 56), 1, *a2);
  if (*(a1 + 56))
  {
    v3 = 0;
    v4 = 0;
    v5 = v15;
    do
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 64);
      v8 = *(v5 + v3);
      v18 = **(a1 + 32);
      v17 = v8;
      v16 = v7;
      v9 = *(v6 + 24);
      if (!v9)
      {
        v13 = std::__throw_bad_function_call[abi:nn200100]();
        ggl::BufferMemory::~BufferMemory(v14);
        _Unwind_Resume(v13);
      }

      v10 = (*(*v9 + 48))(v9, &v18, &v17, &v16);
      v5 = v15;
      v11 = v15 + v3;
      *v11 = v10;
      *(v11 + 4) = v12;
      ++v4;
      v3 += 16;
    }

    while (v4 < *(a1 + 56));
  }

  ggl::BufferMemory::~BufferMemory(v14);
}

void *ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ggl::BufferMemory::BufferMemory(a1);
  ggl::ResourceAccessor::accessIndexData(v13, a6, a2, a3, a4, a5, 1);
  ggl::BufferMemory::operator=(a1, v13);
  ggl::BufferMemory::~BufferMemory(v13);
  return a1;
}

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F29E26A0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 48);
  *(a2 + 40) = *(result + 40);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 64);
  *(a2 + 56) = *(result + 56);
  *(a2 + 64) = v4;
  return result;
}

void std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E26A0;
  v1 = a1[6];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeFillMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,md::Mesh const&,geo::QuadTile,md::PolygonOverlayRenderable *,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E26A0;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

float32x2_t convertLowToHighZTileSpace(_WORD *a1, float32x2_t *a2, float a3, float a4, double a5, float a6)
{
  LOWORD(a4) = a1[2];
  v6.f32[0] = LODWORD(a4);
  LOWORD(a5) = a1[1];
  *&a5 = LODWORD(a5);
  LOWORD(a6) = a1[3];
  v6.f32[1] = (*&a5 + -1.0) - LODWORD(a6);
  return vmul_n_f32(vsub_f32(*a2, vdiv_f32(vmul_n_f32(v6, a3), vdup_lane_s32(*&a5, 0))), *&a5);
}

uint64_t std::__function::__func<gm::Matrix<float,2,1> (*)(ZDiffParams const&,gm::Matrix<float,2,1> const&,float),std::allocator<gm::Matrix<float,2,1> (*)(ZDiffParams const&,gm::Matrix<float,2,1> const&,float)>,gm::Matrix<float,2,1> ()(ZDiffParams,gm::Matrix<float,2,1>,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2658;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::DaVinci::TexturedCompressedDrapingMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E25A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v17, a1[2], 0, a1[4], 1, *a2);
  v4 = a1[1];
  if (v4[61] == 1)
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v15, **(*v4 + 64), 0, a1[4], 0, v3);
    v10 = a1[4];
    if (v10)
    {
      v11 = (v18 + 8);
      v12 = (v16 + 4);
      do
      {
        v13 = *(v12 - 1) * 3.9001;
        *(v11 - 2) = *(v12 - 2) * 3.9001;
        *(v11 - 1) = v13;
        v14 = *v12;
        v12 += 2;
        *v11 = v14;
        v11 += 4;
        --v10;
      }

      while (v10);
    }

    goto LABEL_10;
  }

  if (!v4[61])
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v15, **(*v4 + 64), 0, a1[4], 0, 1, v3);
    v5 = a1[4];
    if (v5)
    {
      v6 = (v18 + 8);
      v7 = (v16 + 4);
      do
      {
        v8 = *(v7 - 1) * 3.9001;
        *(v6 - 2) = *(v7 - 2) * 3.9001;
        *(v6 - 1) = v8;
        v9 = *v7;
        v7 += 2;
        *v6 = v9;
        v6 += 4;
        --v5;
      }

      while (v5);
    }

LABEL_10:
    ggl::BufferMemory::~BufferMemory(v15);
  }

  ggl::BufferMemory::~BufferMemory(v17);
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void *std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F29E2558;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = result[4];
  return result;
}

void std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2558;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempDaVinciDrapingMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2558;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::TexturedCompressedDrapingVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Mesh::~Mesh(ggl::Mesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

uint64_t ggl::Mesh::Mesh(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = &unk_1F2A5DAD0;
  *(a1 + 8) = v4;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a1 + 16) = &unk_1F2A5D1D8;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v7;
  *a1 = &unk_1F2A5D0F8;
  *(a1 + 16) = &unk_1F2A5D118;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (v9 != v8)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 64), (v9 - v8) >> 4);
    v10 = *(a1 + 72);
    do
    {
      v11 = *(v8 + 1);
      *v10 = *v8;
      v10[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v8 += 16;
      v10 += 2;
    }

    while (v8 != v9);
    *(a1 + 72) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v13 = (a1 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = 0;
  *(a1 + 112) = a1 + 120;
  v14 = *(a2 + 112);
  v15 = (a2 + 120);
  if (v14 != (a2 + 120))
  {
    do
    {
      v16 = *v13;
      v17 = (a1 + 120);
      if (*(a1 + 112) == v13)
      {
        goto LABEL_18;
      }

      v18 = *v13;
      v19 = (a1 + 120);
      if (v16)
      {
        do
        {
          v17 = v18;
          v18 = v18[1];
        }

        while (v18);
      }

      else
      {
        do
        {
          v17 = v19[2];
          v20 = *v17 == v19;
          v19 = v17;
        }

        while (v20);
      }

      v21 = v14[4];
      if (v17[4] < v21)
      {
LABEL_18:
        if (v16)
        {
          v22 = v17;
        }

        else
        {
          v22 = (a1 + 120);
        }

        if (v16)
        {
          v23 = (v17 + 1);
        }

        else
        {
          v23 = (a1 + 120);
        }
      }

      else
      {
        v22 = (a1 + 120);
        v23 = (a1 + 120);
        if (v16)
        {
          v23 = (a1 + 120);
          while (1)
          {
            while (1)
            {
              v22 = v16;
              v26 = v16[4];
              if (v21 >= v26)
              {
                break;
              }

              v16 = *v22;
              v23 = v22;
              if (!*v22)
              {
                goto LABEL_25;
              }
            }

            if (v26 >= v21)
            {
              break;
            }

            v23 = v22 + 1;
            v16 = v22[1];
            if (!v16)
            {
              goto LABEL_25;
            }
          }
        }
      }

      if (!*v23)
      {
LABEL_25:
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__construct_node<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>> const&>(&v28, a1 + 112, v14 + 4);
        std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at((a1 + 112), v22, v23, v28);
      }

      v24 = v14[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v14[2];
          v20 = *v25 == v14;
          v14 = v25;
        }

        while (!v20);
      }

      v14 = v25;
    }

    while (v25 != v15);
  }

  return a1;
}

void non-virtual thunk toggl::Draping::FoundationMesh::~FoundationMesh(ggl::Draping::FoundationMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Draping::FoundationMesh::~FoundationMesh(ggl::Draping::FoundationMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v27, a1[2], 0, a1[4], 1, *a2);
  v4 = a1[1];
  if (v4[61] == 1)
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v25, **(*v4 + 64), 0, a1[4], 0, v3);
    v15 = a1[4];
    if (v15)
    {
      v16 = a1[5];
      v17 = (v28 + 8);
      v18 = (v26 + 4);
      do
      {
        v19 = *(v18 - 1);
        v20 = v19 * 3.9001;
        v21 = (v19 >> 16) * 3.9001;
        v22 = fminf(v21, v16[1]);
        *v16 = fminf(v20, *v16);
        v16[1] = v22;
        v23 = fmaxf(v16[3], v21);
        v16[2] = fmaxf(v16[2], v20);
        v16[3] = v23;
        *(v17 - 2) = v20;
        *(v17 - 1) = v21;
        v24 = *v18;
        v18 += 2;
        *v17 = v24;
        v17 += 4;
        --v15;
      }

      while (v15);
    }

    goto LABEL_10;
  }

  if (!v4[61])
  {
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v25, **(*v4 + 64), 0, a1[4], 0, 1, v3);
    v5 = a1[4];
    if (v5)
    {
      v6 = a1[5];
      v7 = (v28 + 8);
      v8 = (v26 + 4);
      do
      {
        v9 = *(v8 - 1);
        v10 = v9 * 3.9001;
        v11 = (v9 >> 16) * 3.9001;
        v12 = fminf(v11, v6[1]);
        *v6 = fminf(v10, *v6);
        v6[1] = v12;
        v13 = fmaxf(v6[3], v11);
        v6[2] = fmaxf(v6[2], v10);
        v6[3] = v13;
        *(v7 - 2) = v10;
        *(v7 - 1) = v11;
        v14 = *v8;
        v8 += 2;
        *v7 = v14;
        v7 += 4;
        --v5;
      }

      while (v5);
    }

LABEL_10:
    ggl::BufferMemory::~BufferMemory(v25);
  }

  ggl::BufferMemory::~BufferMemory(v27);
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F29E2610;
  a2->n128_u64[1] = v2;
  v3 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[2];
  a2[2] = result;
  return result;
}

void std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2610;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0,std::allocator<md::DrapingLogic::buildTempFoundationMesh(ggl::Loader *,md::Mesh const&)::$_0>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2610;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Draping::FoundationVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Draping::FoundationVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Draping::FoundationVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E25D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::allocator_traits<std::allocator<md::ClientDrapedMeshes>>::destroy[abi:nn200100]<md::ClientDrapedMeshes,void,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 56);
  v4 = -64;
  do
  {
    if (*v3 == 1)
    {
      v5 = *(v3 - 2);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }

    v3 -= 32;
    v4 += 32;
  }

  while (v4);
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v5 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v5 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 104) = 0;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::vector[abi:nn200100]((a1 + 120), (a2 + 120));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::vector<md::Mesh>::__init_with_size[abi:nn200100]<md::Mesh*,md::Mesh*>(a1 + 144, *(a2 + 144), *(a2 + 152), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 152) - *(a2 + 144)) >> 4));
  return a1;
}

void sub_1B2C02600(_Unwind_Exception *a1)
{
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((v1 + 120));
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E24D8;
  v5 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E24D8;
  v6 = (a1 + 152);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::~vector[abi:nn200100]((a1 + 128));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::Mesh>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::Mesh>,md::Mesh*>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      *(a3 + 46) = *(v5 + 46);
      a3[1] = v6;
      a3[2] = v7;
      a3[4] = *(v5 + 64);
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      v5 += 80;
      a3 += 5;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::Mesh,0>(v4);
      v4 += 80;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::Mesh>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:nn200100]<md::Mesh,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 16) = v7[2];
      v7[1] = 0;
      v7[2] = 0;
      *(v8 + 24) = *(v7 + 3);
      v7[3] = 0;
      v7[4] = 0;
      *(v8 + 40) = *(v7 + 5);
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = *(v7 + 7);
      v7[7] = 0;
      v7[8] = 0;
      *(v8 + 72) = *(v7 + 9);
      v7[9] = 0;
      v7[10] = 0;
      v9 = v7[11];
      *(v8 + 96) = *(v7 + 96);
      *(v8 + 88) = v9;
      v10 = *(v7 + 13);
      *(v8 + 116) = *(v7 + 116);
      *(v8 + 104) = v10;
      v7 += 17;
      v8 += 136;
    }

    while (v7 != v5);
    do
    {
      std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>(v4);
      v4 += 17;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::destroy[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,void,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::default_delete<md::Mesh>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

__n128 std::allocator_traits<std::allocator<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem>>::construct[abi:nn200100]<md::DrapingLogic::_drapeKeyPair(md::FoundationKey const&,md::OverlayKey const&,std::shared_ptr<md::DaVinciGroundTileData> const&,std::shared_ptr<md::ElevatedStrokeTileData> const&,md::OverlaysContext const&,md::CameraContext const&,md::LayoutContext const&,gdc::Registry *)::DrapingItem,md::overlayComponents::VectorOverlay &,md::DrapingStyle,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = v8;
  result = *a3;
  *(a1 + 116) = *(a3 + 12);
  *(a1 + 104) = result;
  return result;
}

uint64_t std::__shared_ptr_pointer<ggl::PolylineOverlayRibbon::BaseMesh  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::PolylineOverlayRibbon::BaseMesh  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<md::Mesh  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DrapingTaskInfo>::__on_zero_shared(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    v3 = a1[18];
    v4 = a1[17];
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        std::allocator_traits<std::allocator<md::ClientDrapedMeshes>>::destroy[abi:nn200100]<md::ClientDrapedMeshes,void,0>(v3);
      }

      while (v3 != v2);
      v4 = a1[17];
    }

    a1[18] = v2;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    a1[15] = v5;
    operator delete(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a1[5];
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void std::__shared_ptr_emplace<md::DrapingTaskInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E24A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ___ZL30GEOGetVectorKitDrapingLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "DrapingLogic");
  v1 = GEOGetVectorKitDrapingLogicLog(void)::log;
  GEOGetVectorKitDrapingLogicLog(void)::log = v0;
}

uint64_t gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(uint64_t a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(a1);
  result = gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::get(v4, a2);
  if (result)
  {
    return result;
  }

  v6 = gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(a1);
  v33 = &unk_1F2A182F0;
  v34 = 0u;
  v35 = 0u;
  v36 = 1065353216;
  v37 = a2;
  v7 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v6 + 4, &v37);
  if (v8)
  {
    v10 = v6[11];
    v9 = v6[12];
    if (v10 >= v9)
    {
      v15 = v6[10];
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v15) >> 4);
      if (v16 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v15) >> 4);
      v18 = 2 * v17;
      if (2 * v17 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      if (v17 >= 0x2AAAAAAAAAAAAAALL)
      {
        v19 = 0x555555555555555;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        if (v19 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 48 * v16;
      *v20 = &unk_1F2A182F0;
      *(v20 + 8) = 0u;
      *(v20 + 24) = 0u;
      *(v20 + 40) = 1065353216;
      gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(48 * v16, &v33);
      v21 = v6[10];
      v22 = v6[11];
      v32 = 48 * v16 - (v22 - v21);
      v11 = 48 * v16 + 48;
      if (v22 != v21)
      {
        v23 = 48 * v16 - 16 * ((v22 - v21) >> 4);
        v24 = v6[10];
        v25 = v32;
        do
        {
          *v25 = &unk_1F2A182F0;
          *(v25 + 8) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 40) = 1065353216;
          gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v25, v24);
          v24 += 48;
          v25 += 48;
          v23 += 48;
        }

        while (v24 != v22);
        v26 = v21;
        v27 = v21;
        do
        {
          v28 = *v27;
          v27 += 48;
          (*v28)(v21);
          v26 += 48;
          v21 = v27;
        }

        while (v27 != v22);
      }

      v29 = v6[10];
      v6[10] = v32;
      *(v6 + 11) = v11;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v10 = &unk_1F2A182F0;
      *(v10 + 8) = 0u;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 1065353216;
      gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v10, &v33);
      v11 = v10 + 48;
      v6[11] = v10 + 48;
    }

    v6[11] = v11;
    v13 = v6[31];
  }

  else
  {
    v12 = v6[10] + 48 * ((v7 - v6[7]) >> 3);
    gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v12, &v33);
    v13 = v6[31];
    if (v12 != v6[11])
    {
      for (i = v6[16]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v13, &v37, 1);
      }

      goto LABEL_28;
    }
  }

  for (j = v6[22]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v13, &v37, 1);
  }

LABEL_28:
  gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(&v33);
  v31 = gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(a1);

  return gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::get(v31, a2);
}

void sub_1B2C031A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(uint64_t a1)
{
  v3 = 0xC0B2E017CC0570FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC0B2E017CC0570FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::entities(void **a1, uint64_t a2, unint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((a2 + 8), a3);
  if (v4)
  {
    v5 = v4;
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<gdc::Entity>::reserve(a1, v4[6]);
    v6 = v5[5];
    if (v6)
    {
      v7 = a1[1];
      do
      {
        v8 = v6[3];
        v9 = a1[2];
        if (v7 >= v9)
        {
          v10 = *a1;
          v11 = v7 - *a1;
          v12 = (v11 >> 3) + 1;
          if (v12 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v13 = v9 - v10;
          if (v13 >> 2 > v12)
          {
            v12 = v13 >> 2;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v14);
          }

          v15 = (8 * (v11 >> 3));
          *v15 = *(v8 + 16);
          v7 = (v15 + 1);
          memcpy(0, v10, v11);
          *a1 = 0;
          a1[2] = 0;
          if (v10)
          {
            operator delete(v10);
          }
        }

        else
        {
          *v7 = *(v8 + 16);
          v7 += 8;
        }

        a1[1] = v7;
        v6 = *v6;
      }

      while (v6);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1B2C03484(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; ++i)
    {
      v6 = *i;
      v7 = gdc::Registry::storage<md::components::QueuedForDestruction<>>(a1);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v7, v6);
      v8 = *i;
      v23[3] = 0xB02BC19BABA3EE9ELL;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB02BC19BABA3EE9ELL);
      if (!v9)
      {
        operator new();
      }

      v10 = v9[3];
      v23[0] = v8;
      v11 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v10 + 4, v23);
      if (v12)
      {
        v13 = v10[11];
        v14 = v10[12];
        if (v13 >= v14)
        {
          v18 = v10[10];
          v19 = v13 - v18 + 1;
          if (v19 < 0)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v20 = v14 - v18;
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            operator new();
          }

          v15 = v13 - v18 + 1;
          memcpy(0, v18, v13 - v18);
          v10[10] = 0;
          v10[11] = v15;
          v10[12] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          v15 = v13 + 1;
        }

        v10[11] = v15;
        v16 = v10[31];
      }

      else
      {
        v16 = v10[31];
        if (v10[10] + ((v11 - v10[7]) >> 3) != v10[11])
        {
          for (j = v10[16]; j; j = *j)
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v16, v23, 1);
          }

          continue;
        }
      }

      for (k = v10[22]; k; k = *k)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v16, v23, 1);
      }
    }
  }
}

uint64_t gdc::components::RegistryBridgeMap<gdc::Entity>::hasEntity(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((a1 + 8), a2);
  if (result)
  {
    v5 = *(result + 32);
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = a3;
        if (*&v5 <= a3)
        {
          v7 = a3 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & a3;
      }

      v8 = *(*(result + 24) + 8 * v7);
      if (v8)
      {
        for (i = *v8; i; i = *i)
        {
          v10 = i[1];
          if (v10 == a3)
          {
            if (__PAIR64__(*(i + 9), *(i + 8)) == __PAIR64__(WORD1(a3), a3) && *(i + 5) == HIDWORD(a3))
            {
              return 1;
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v10 >= *&v5)
              {
                v10 %= *&v5;
              }
            }

            else
            {
              v10 &= *&v5 - 1;
            }

            if (v10 != v7)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void *gdc::components::RegistryBridgeMap<gdc::Entity>::nodeForRegistryAndKey(int8x8_t *a1, gdc::Registry *a2, unint64_t *a3)
{
  v4 = 0x9DDFEA08EB382D69 * (((((a2 >> 3) & 0x3FFFFFF) << 6) | 8) ^ (a2 >> 32));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[2];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * ((a2 >> 32) ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*&a1[1] + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  v12 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(v10 + 3, *a3);
  if (!v12)
  {
    gdc::Registry::create(a2);
  }

  return v12[3];
}

void sub_1B2C03DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::__split_buffer<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode> &>::~__split_buffer(va1);
  if (v6)
  {
    gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(v6, va);
  }

  _Unwind_Resume(a1);
}

void gdc::ComponentStorageWrapper<md::components::Material>::emplace<int,std::shared_ptr<gms::Material<ggl::Texture2D>>>(void *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v6[0] = a3;
  v6[1] = v4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gdc::ComponentStorageWrapper<md::components::Material>::emplace(a1, a2, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B2C03ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::storage<md::overlayComponents::DrapedRasterOverlay>(uint64_t a1)
{
  v3 = 0x1866018A21896929;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1866018A21896929uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::emplace(void *a1, uint64_t a2, __int128 *a3)
{
  v38 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v38);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v21 = a1[10];
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v21) >> 4);
      v23 = v22 + 1;
      if (v22 + 1 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v21) >> 4);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x2AAAAAAAAAAAAAALL)
      {
        v25 = 0x555555555555555;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (v25 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v26 = *(a3 + 1);
      v27 = 48 * v22;
      *v27 = *a3;
      *(v27 + 8) = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      *(48 * v22 + 0x10) = *(a3 + 2);
      *(48 * v22 + 0x15) = *(a3 + 21);
      v28 = *(a3 + 5);
      *(48 * v22 + 0x20) = *(a3 + 4);
      *(48 * v22 + 0x28) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = (v27 + 48);
      v37 = (v27 + 48);
      v29 = a1[10];
      v30 = a1[11];
      v31 = v27 + v29 - v30;
      if (v30 != v29)
      {
        v32 = a1[10];
        v33 = v31;
        do
        {
          *v33 = *v32;
          *v32 = 0;
          *(v32 + 8) = 0;
          v34 = *(v32 + 16);
          *(v33 + 21) = *(v32 + 21);
          *(v33 + 16) = v34;
          *(v33 + 32) = *(v32 + 32);
          *(v32 + 32) = 0;
          *(v32 + 40) = 0;
          v32 += 48;
          v33 += 48;
        }

        while (v32 != v30);
        do
        {
          std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(v29);
          v29 += 48;
        }

        while (v29 != v30);
      }

      v35 = a1[10];
      a1[10] = v31;
      *(a1 + 11) = v37;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      v9 = *(a3 + 1);
      *v7 = *a3;
      v7[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(a3 + 2);
      *(v7 + 21) = *(a3 + 21);
      v7[2] = v10;
      v11 = *(a3 + 5);
      v7[4] = *(a3 + 4);
      v7[5] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = v7 + 6;
    }

    a1[11] = v12;
    v19 = a1[31];
LABEL_36:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v19, &v38, 1);
    }

    return;
  }

  v13 = a1[10] + 48 * ((v5 - a1[7]) >> 3);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = *(v13 + 8);
  *v13 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  *(v13 + 16) = *(a3 + 4);
  *(v13 + 20) = *(a3 + 5);
  v16 = *(a3 + 6);
  *(v13 + 28) = *(a3 + 28);
  *(v13 + 24) = v16;
  v17 = a3[2];
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  v18 = *(v13 + 40);
  *(v13 + 32) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = a1[31];
  if (v13 == a1[11])
  {
    goto LABEL_36;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v19, &v38, 1);
  }
}

void std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::remove(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 48);
    v8 = *(v7 - 40);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 8);
    *v6 = v9;
    *(v6 + 8) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    *(v6 + 16) = *(v7 - 32);
    *(v6 + 20) = *(v7 - 28);
    v11 = *(v7 - 24);
    *(v6 + 28) = *(v7 - 20);
    *(v6 + 24) = v11;
    v13 = *(v7 - 16);
    v12 = *(v7 - 8);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v6 + 40);
    *(v6 + 32) = v13;
    *(v6 + 40) = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = a1[11] - 48;
    std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(v15);
    a1[11] = v15;
    v16 = a1[28];
    if (v16)
    {
      v17 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v16[6], v17, &v19, 1);
        v16 = *v16;
      }

      while (v16);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::overlayComponents::DrapedRasterOverlay>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::overlayComponents::DrapedRasterOverlay>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<md::overlayComponents::DrapedRasterOverlay,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::DrapedRasterOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::overlayComponents::DrapedRasterOverlay>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t md::RasterOverlayMaterial::albedoFactor@<X0>(uint64_t a1@<X8>)
{
  v2 = xmmword_1B33AFF00;
  result = geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(a1, &v2);
  *(result + 16) = 1;
  return result;
}

void md::RasterOverlayMaterial::~RasterOverlayMaterial(md::RasterOverlayMaterial *this)
{
  gms::Material<ggl::Texture2D>::~Material(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RasterOverlayMaterial>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E19A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>(uint64_t a1)
{
  v3 = 0xFC21CCDFEDC314FBLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xFC21CCDFEDC314FBLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t *std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::__emplace_unique_key_args<gdc::Entity,std::piecewise_construct_t const&,std::tuple<gdc::Entity const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_19;
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
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (__PAIR64__(*(v7 + 9), *(v7 + 8)) != __PAIR64__(WORD1(a2), a2) || *(v7 + 5) != HIDWORD(a2))
  {
    goto LABEL_18;
  }

  return v7;
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = *(a2 + 8);
  v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = vcnt_s8(v4);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v8;
    if (v8 >= *&v4)
    {
      v10 = v8 % *&v4;
    }
  }

  else
  {
    v10 = v8 & (*&v4 - 1);
  }

  v11 = *(a1[1] + 8 * v10);
  if (v11)
  {
    for (i = *v11; i; i = *i)
    {
      v13 = i[1];
      if (v13 == v8)
      {
        if (i[2] == v5)
        {
          break;
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= *&v4)
          {
            v13 %= *&v4;
          }
        }

        else
        {
          v13 &= *&v4 - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
LABEL_18:
    i = 0;
  }

  v14 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(i + 3, *(a2 + 24));
  if (v14[3] == a2)
  {
    v15 = i[4];
    v16 = v14[1];
    v17 = vcnt_s8(v15);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      if (v16 >= *&v15)
      {
        v16 %= *&v15;
      }
    }

    else
    {
      v16 &= *&v15 - 1;
    }

    v18 = i[3];
    v19 = *(v18 + 8 * v16);
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19 != v14);
    if (v20 == i + 5)
    {
      goto LABEL_37;
    }

    v21 = v20[1];
    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    if (v21 != v16)
    {
LABEL_37:
      if (!*v14)
      {
        goto LABEL_38;
      }

      v22 = *(*v14 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v22 >= *&v15)
        {
          v22 %= *&v15;
        }
      }

      else
      {
        v22 &= *&v15 - 1;
      }

      if (v22 != v16)
      {
LABEL_38:
        *(v18 + 8 * v16) = 0;
      }
    }

    v23 = *v14;
    if (*v14)
    {
      v24 = *(v23 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v24 >= *&v15)
        {
          v24 %= *&v15;
        }
      }

      else
      {
        v24 &= *&v15 - 1;
      }

      if (v24 != v16)
      {
        *(i[3] + 8 * v24) = v20;
        v23 = *v14;
      }
    }

    *v20 = v23;
    *v14 = 0;
    --i[6];
    operator delete(v14);
    if (!i[6])
    {
      v25 = a1[2];
      v26 = i[1];
      v27 = vcnt_s8(v25);
      v27.i16[0] = vaddlv_u8(v27);
      if (v27.u32[0] > 1uLL)
      {
        if (v26 >= *&v25)
        {
          v26 %= *&v25;
        }
      }

      else
      {
        v26 &= *&v25 - 1;
      }

      v28 = a1[1];
      v29 = *(v28 + 8 * v26);
      do
      {
        v30 = v29;
        v29 = *v29;
      }

      while (v29 != i);
      if (v30 == a1 + 3)
      {
        goto LABEL_65;
      }

      v31 = v30[1];
      if (v27.u32[0] > 1uLL)
      {
        if (v31 >= *&v25)
        {
          v31 %= *&v25;
        }
      }

      else
      {
        v31 &= *&v25 - 1;
      }

      if (v31 != v26)
      {
LABEL_65:
        if (!*i)
        {
          goto LABEL_66;
        }

        v32 = *(*i + 8);
        if (v27.u32[0] > 1uLL)
        {
          if (v32 >= *&v25)
          {
            v32 %= *&v25;
          }
        }

        else
        {
          v32 &= *&v25 - 1;
        }

        if (v32 != v26)
        {
LABEL_66:
          *(v28 + 8 * v26) = 0;
        }
      }

      v33 = *i;
      if (*i)
      {
        v34 = *(v33 + 8);
        if (v27.u32[0] > 1uLL)
        {
          if (v34 >= *&v25)
          {
            v34 %= *&v25;
          }
        }

        else
        {
          v34 &= *&v25 - 1;
        }

        if (v34 != v26)
        {
          *(a1[1] + 8 * v34) = v30;
          v33 = *i;
        }
      }

      *v30 = v33;
      *i = 0;
      --a1[4];

      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,void *>>>::operator()[abi:nn200100](1, i);
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = __p[3];
    __p[3] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

int8x8_t **gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode::operator=(int8x8_t **a1, int8x8_t **a2)
{
  if (a2 != a1)
  {
    v3 = *a1;
    *a1 = *a2;
    *a2 = v3;
    v4 = a1[1];
    a1[1] = a2[1];
    a2[1] = v4;
    v5 = a1[2];
    a1[2] = a2[2];
    a2[2] = v5;
    v6 = a1[3];
    a1[3] = a2[3];
    a2[3] = v6;
    if (*a2)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeWasMoved(*a2, a2);
    }

    if (*a1)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeWasMoved(*a1, a1);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 32);
    v2 -= 32;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(v4, v2);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *gdc::components::RegistryBridgeMap<gdc::Entity>::nodeWasMoved(int8x8_t *a1, int8x8_t **a2)
{
  v4 = a2[1];
  v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = a1[2];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*&a1[1] + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (*(v12 + 2) != v4)
  {
    goto LABEL_17;
  }

  v14 = a2[3];
  v16 = a2 + 3;
  result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::__emplace_unique_key_args<gdc::Entity,std::piecewise_construct_t const&,std::tuple<gdc::Entity const&>,std::tuple<>>(v12 + 6, v14, &v16);
  result[3] = a2;
  *a2 = a1;
  return result;
}

BOOL gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>::remove(void *a1, uint64_t a2)
{
  v14 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 4 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode::operator=(v6, (a1[11] - 32));
    v7 = a1[11];
    v10 = *(v7 - 32);
    v9 = v7 - 32;
    v8 = v10;
    if (v10)
    {
      gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(v8, v9);
    }

    a1[11] = v9;
    v11 = a1[28];
    if (v11)
    {
      v12 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v11[6], v12, &v14, 1);
        v11 = *v11;
      }

      while (v11);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 4;
      do
      {
        if (*v6)
        {
          gdc::components::RegistryBridgeMap<gdc::Entity>::nodeIsBeingDestroyed(*v6, v6);
        }

        v7 = v6 == v2;
        v6 -= 4;
      }

      while (!v7);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode,std::allocator<gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v15);
  if (v4)
  {
    v5 = a1[11];
    v6 = a1[12];
    if (v5 >= v6)
    {
      v10 = a1[10];
      v11 = v5 - v10 + 1;
      if (v11 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v6 - v10;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v7 = v5 - v10 + 1;
      memcpy(0, v10, v5 - v10);
      a1[10] = 0;
      a1[11] = v7;
      a1[12] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      v7 = v5 + 1;
    }

    a1[11] = v7;
    v8 = a1[31];
    goto LABEL_19;
  }

  v8 = a1[31];
  if (a1[10] + ((v3 - a1[7]) >> 3) == a1[11])
  {
LABEL_19:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v8, &v15, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v8, &v15, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::DrapingLogic>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::DrapingLogic>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<md::DrapingLogic>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::CanDisableDraping>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::CanDisableDraping>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::CanDisableDraping>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<gdc::components::RegistryBridgeMap<gdc::Entity>>(uint64_t a1)
{
  v3 = 0xCF1B3CF834D7AFD0;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCF1B3CF834D7AFD0);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(void *a1)
{
  *a1 = &unk_1F2A182F0;
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[3];
    do
    {
      for (i = v3[5]; i; i = *i)
      {
        *i[3] = 0;
      }

      v3 = *v3;
    }

    while (v3);
    v5 = (a1 + 1);
    do
    {
      v6 = *v2;
      v7 = v2[5];
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v2[3];
      v2[3] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = (a1 + 1);
  }

  v10 = *v5;
  *v5 = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return a1;
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    *(a1 + 8) = 0;
    v5 = *(a2 + 8);
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = *(a2 + 8);
    *(a2 + 8) = v4;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = (a1 + 24);
    v9 = *(a1 + 24);
    v10 = *(a1 + 16);
    v11 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v11;
    *(a2 + 16) = v10;
    *(a2 + 24) = v9;
    v12 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v12;
    v13 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = v13;
    if (*(a1 + 32))
    {
      v14 = *(a1 + 16);
      v15 = *(*(a1 + 24) + 8);
      if ((v14 & (v14 - 1)) != 0)
      {
        if (v15 >= v14)
        {
          v15 %= v14;
        }
      }

      else
      {
        v15 &= v14 - 1;
      }

      *(*(a1 + 8) + 8 * v15) = v8;
    }

    if (v12)
    {
      v16 = *(a2 + 16);
      v17 = *(*(a2 + 24) + 8);
      if ((v16 & (v16 - 1)) != 0)
      {
        if (v17 >= v16)
        {
          v17 %= v16;
        }
      }

      else
      {
        v17 &= v16 - 1;
      }

      *(*(a2 + 8) + 8 * v17) = a2 + 24;
    }

    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      for (i = v8[5]; i; i = *i)
      {
        *i[3] = a1;
      }
    }
  }
}

void gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(void *a1)
{
  gdc::components::RegistryBridgeMap<gdc::Entity>::~RegistryBridgeMap(a1);

  JUMPOUT(0x1B8C62190);
}

BOOL gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 48 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    gdc::components::RegistryBridgeMap<gdc::Entity>::moveMap(v6, a1[11] - 48);
    v7 = a1[11];
    v8 = *(v7 - 48);
    v7 -= 48;
    (*v8)(v7);
    a1[11] = v7;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 6;
      v7 = v4 - 6;
      v8 = v4 - 6;
      do
      {
        v9 = *v8;
        v8 -= 6;
        (*v9)(v7);
        v6 -= 6;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<gdc::components::RegistryBridgeMap<gdc::Entity>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<gdc::components::RegistryBridgeMap<gdc::Entity>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::remove(void *a1, uint64_t a2)
{
  v25 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 24 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != (v7 - 24))
    {
      v8 = *(v7 - 24);
      v9 = *(v7 - 16);
      v10 = v9 - v8;
      v11 = v6[2];
      v12 = *v6;
      if (v11 - *v6 < (v9 - v8))
      {
        v13 = v10 >> 3;
        if (v12)
        {
          v6[1] = v12;
          operator delete(v12);
          v11 = 0;
          *v6 = 0;
          v6[1] = 0;
          v6[2] = 0;
        }

        if (!(v13 >> 61))
        {
          v14 = v11 >> 2;
          if (v11 >> 2 <= v13)
          {
            v14 = v10 >> 3;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          std::vector<gdc::Registry *>::__vallocate[abi:nn200100](v6, v15);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = v6[1];
      v17 = v16 - v12;
      if (v16 - v12 >= v10)
      {
        if (v9 != v8)
        {
          memmove(v12, v8, v9 - v8);
        }

        v19 = &v12[v10];
      }

      else
      {
        v18 = &v8[v17];
        if (v16 != v12)
        {
          memmove(*v6, v8, v17);
          v16 = v6[1];
        }

        if (v9 != v18)
        {
          memmove(v16, v18, v9 - v18);
        }

        v19 = &v16[v9 - v18];
      }

      v6[1] = v19;
      v7 = a1[11];
    }

    v21 = v7 - 24;
    v20 = *(v7 - 24);
    if (v20)
    {
      *(v7 - 16) = v20;
      operator delete(v20);
    }

    a1[11] = v21;
    v22 = a1[28];
    if (v22)
    {
      v23 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v22[6], v23, &v25, 1);
        v22 = *v22;
      }

      while (v22);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<std::vector<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 40)
    {
      *(v6 + 32) = *(v7 - 8);
      std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *> *>>(v6, *(v7 - 24));
      v7 = a1[11];
    }

    a1[11] = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table((v7 - 40));
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *> *>>(void *a1, uint64_t **a2)
{
  v2 = a2;
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v6[2] = v2[2];
        if (v6 != v2)
        {
          std::vector<gdc::Entity>::__assign_with_size[abi:nn200100]<gdc::Entity*,gdc::Entity*>(v6 + 3, v2[3], v2[4], v2[4] - v2[3]);
        }

        v8 = *v6;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1, v6);
        v2 = *v2;
        if (v8)
        {
          v9 = v2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v29 = *a1;
        *a1 = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v5;
    if (v6 <= v5)
    {
      v17 = v5 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v5;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      v24 = v22 == v5 && v19[2] == a2[2];
      v25 = v24 != (v20 & 1);
      v26 = v20 & v25;
      v20 |= v25;
    }

    while (v26 != 1);
  }

  else
  {
    v21 = 0;
  }

  v27 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v27 >= v6)
    {
      v27 %= v6;
    }
  }

  else
  {
    v27 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v27] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_57;
    }

    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

LABEL_56:
    *(*a1 + 8 * v28) = a2;
    goto LABEL_57;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v28 >= v6)
      {
        v28 %= v6;
      }
    }

    else
    {
      v28 &= v6 - 1;
    }

    if (v28 != v27)
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  ++*(a1 + 24);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v4 - 5);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1B9039CBDAB12E5CLL && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0xADE8F13E6C18D970);
    if (v9 && (v10 = v9[5], *(v10 + 8) == 0xADE8F13E6C18D970))
    {
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL);
    if (v12 && (v13 = v12[5], *(v13 + 8) == 0x1AF456233693CD46))
    {
      v14 = *(v13 + 32);
    }

    else
    {
      v14 = 0;
    }

    v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x9F2276D081C2CB20);
    if (v15 && (v16 = v15[5], *(v16 + 8) == 0x9F2276D081C2CB20))
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x8BD499FBD96FBB9ELL)[5] + 32);
    v19[0] = v11;
    v19[1] = v14;
    v19[2] = v17;
    v19[3] = v18;
    return (*(*a1 + 160))(a1, a2, v19, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::DrapingContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::DrapingContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E2840;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1020C40D090CC53);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::DrapingContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E2840;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1020C40D090CC53);
  }

  return a1;
}

void md::DrapingLogic::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "DrapingLogic");
  v48 = a2;
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *(a1 + 168);
  std::string::basic_string[abi:nn200100]<0>(__p, "Pending Tasks");
  gdc::DebugTreeValue::DebugTreeValue(v57, *(v4 + 52));
  gdc::DebugTreeNode::addProperty(v48, __p, v57);
  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Cached Vertices");
  gdc::DebugTreeValue::DebugTreeValue(v54, *(v4 + 48));
  gdc::DebugTreeNode::addProperty(v48, __p, v54);
  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Draping Pool");
  ChildNode = gdc::DebugTreeNode::createChildNode(v48, __p);
  if (v70 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(*(a1 + 168) + 24);
  if (v5)
  {
    while (1)
    {
      md::to_string(&v78, (v5 + 2));
      v53 = gdc::DebugTreeNode::createChildNode(ChildNode, &v78);
      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v6 = v5[9];
      if (v6)
      {
        break;
      }

LABEL_95:
      v5 = *v5;
      if (!v5)
      {
        return;
      }
    }

    v50 = v5;
    while (1)
    {
      *(v78.__r_.__value_.__r.__words + 4) = *(v6 + 20);
      LOWORD(v78.__r_.__value_.__l.__data_) = *(v6 + 8);
      v78.__r_.__value_.__r.__words[2] = v6[4];
      v79 = *(v6 + 40);
      md::debugString<geo::QuadTile>(&v80, &v78);
      v7 = std::string::append(&v80, " ", 1uLL);
      v8 = v7->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = *(v6 + 24);
      v10 = "<Invalid>";
      if (v9 <= 0x51)
      {
        v10 = off_1E7B30210[v9];
      }

      std::string::basic_string[abi:nn200100]<0>(&v78, v10);
      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v78;
      }

      else
      {
        v11 = v78.__r_.__value_.__r.__words[0];
      }

      if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v78.__r_.__value_.__l.__size_;
      }

      v13 = std::string::append(&v81, v11, size);
      v14 = v13->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v82, " ", 1uLL);
      v16 = v15->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v77, *(v6 + 13));
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v77;
      }

      else
      {
        v17 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v77.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&v83, v17, v18);
      v20 = v19->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = v6;
      v22 = *(v6 + 64);
      v23 = v21;
      if (v22 == 1)
      {
        std::to_string(&v74, v21[7]);
        v24 = std::string::insert(&v74, 0, " sel:", 5uLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v76 = v24->__r_.__value_.__r.__words[2];
        *v75 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = HIBYTE(v76);
        v28 = v75[0];
        v27 = v75[1];
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v75[0] = 0;
        v75[1] = 0;
        v76 = 0;
      }

      if ((v26 & 0x80u) == 0)
      {
        v29 = v75;
      }

      else
      {
        v29 = v28;
      }

      if ((v26 & 0x80u) == 0)
      {
        v30 = v26;
      }

      else
      {
        v30 = v27;
      }

      v31 = std::string::append(&v84, v29, v30);
      v73 = *v31;
      v31->__r_.__value_.__r.__words[0] = 0;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75[0]);
        if (v22)
        {
LABEL_45:
          if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v74.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (v22)
      {
        goto LABEL_45;
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v32 = v23;
      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      v33 = gdc::DebugTreeNode::createChildNode(v53, &v73);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v78, "State");
      v34 = atomic_load(v32[9]);
      v35 = v34 - 1;
      v36 = "Pending";
      if (v35 <= 2u)
      {
        v36 = off_1E7B346C0[v35];
      }

      gdc::DebugTreeValue::DebugTreeValue(__p, v36);
      gdc::DebugTreeNode::addProperty(v33, &v78, __p);
      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      v37 = atomic_load(v32[9]);
      if (v37 == 2)
      {
        std::string::basic_string[abi:nn200100]<0>(&v78, "OverlayMeshCount");
        gdc::DebugTreeValue::DebugTreeValue(v66, *(v32[9] + 56));
        gdc::DebugTreeNode::addProperty(v33, &v78, v66);
        if (v68 < 0)
        {
          operator delete(v67);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v78, "FoundationMeshCount");
        gdc::DebugTreeValue::DebugTreeValue(v63, *(v32[9] + 60));
        gdc::DebugTreeNode::addProperty(v33, &v78, v63);
        if (v65 < 0)
        {
          operator delete(v64);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:nn200100]<0>(&v78, "Total Verts");
        v51 = v33;
        v52 = v32;
        v38 = v32[9];
        v39 = *(v38 + 56);
        if (v39)
        {
          v40 = 0;
          v41 = 0;
          v42 = *(v38 + 60);
          if (v42 <= 1)
          {
            v43 = 1;
          }

          else
          {
            v43 = v42;
          }

          v44 = *(v38 + 60);
          do
          {
            if (v44)
            {
              v45 = *(v38 + 112);
              v46 = v43;
              v47 = v40;
              do
              {
                v41 += md::ClientDrapedMeshes::vertexCount((v45 + 80 * v47));
                v47 += v39;
                --v46;
              }

              while (v46);
              v44 = v42;
            }

            ++v40;
          }

          while (v40 < v39);
        }

        else
        {
          v41 = 0;
        }

        gdc::DebugTreeValue::DebugTreeValue(v60, v41);
        gdc::DebugTreeNode::addProperty(v51, &v78, v60);
        if (v62 < 0)
        {
          operator delete(v61);
        }

        v5 = v50;
        v32 = v52;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }
      }

      v6 = *v32;
      if (!v6)
      {
        goto LABEL_95;
      }
    }
  }
}

void sub_1B2C07DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  STACK[0x200] = a9 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x200]);
  STACK[0x200] = a9 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x200]);
  if (*(a9 + 47) < 0)
  {
    operator delete(*(a9 + 24));
  }

  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  _Unwind_Resume(a1);
}

void md::DrapingLogic::~DrapingLogic(int8x8_t **this)
{
  md::DrapingLogic::~DrapingLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E17E0;
  v2 = (this + 21);
  md::DrapingTaskScheduler::reset(this[21]);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable((this + 48));
  v3 = this[45];
  if (v3)
  {
    this[46] = v3;
    operator delete(v3);
  }

  v4 = this[42];
  if (v4)
  {
    this[43] = v4;
    operator delete(v4);
  }

  geo::Pool<gdc::FallbackNode>::~Pool((this + 36));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[33]);
  v5 = this[25];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = this[23];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  std::unique_ptr<md::DrapingTaskScheduler>::~unique_ptr[abi:nn200100](v2);
  v7 = this[20];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = this[18];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = this[16];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B2C0800C(_Unwind_Exception *a1)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 384);
  v4 = *(v1 + 360);
  if (v4)
  {
    *(v1 + 368) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 336);
  if (v5)
  {
    *(v1 + 344) = v5;
    operator delete(v5);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(v1 + 288);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 264));
  v6 = *(v1 + 200);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v1 + 184);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  std::unique_ptr<md::DrapingTaskScheduler>::~unique_ptr[abi:nn200100](v2);
  v8 = *(v1 + 160);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 144);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v1 + 128);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<gdc::FallbackNode>::~Pool(uint64_t a1)
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
    do
    {
      if (v5)
      {
        v9 = 0;
        v10 = v6[4];
        do
        {
          v11 = (v10 + 104 * v9);
          v12 = v25;
          if (!v25)
          {
            goto LABEL_20;
          }

          v13 = &v25;
          do
          {
            v14 = v12;
            v15 = v13;
            v16 = v12[4];
            if (v16 >= v11)
            {
              v13 = v12;
            }

            v12 = v12[v16 < v11];
          }

          while (v12);
          if (v13 == &v25)
          {
            goto LABEL_20;
          }

          if (v16 < v11)
          {
            v14 = v15;
          }

          if (v11 < v14[4])
          {
LABEL_20:
            v17 = v11[12];
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v17);
            }

            v18 = v11[1];
            if (v18 != v11[3])
            {
              free(v18);
            }
          }

          ++v9;
          v5 = *(a1 + 24);
        }

        while (v9 < v5);
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

void sub_1B2C08298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<md::DrapingTaskScheduler>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::__deallocate_node(*(v2 + 24));
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C40B0E48F48);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::components::MeshInstance *,std::shared_ptr<md::components::MeshInstance>::__shared_ptr_default_delete<md::components::MeshInstance,md::components::MeshInstance>,std::allocator<md::components::MeshInstance>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::components::MeshInstance *,std::shared_ptr<md::components::MeshInstance>::__shared_ptr_default_delete<md::components::MeshInstance,md::components::MeshInstance>,std::allocator<md::components::MeshInstance>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<gm::Box<float,3>::transformedAndEnclosed(gm::Matrix<float,4,4> const&)::{lambda(gm::Matrix<float,3,1> &)#1},std::allocator<gm::Box<float,3>::transformedAndEnclosed(gm::Matrix<float,4,4> const&)::{lambda(gm::Matrix<float,3,1> &)#1}>,void ()(gm::Matrix<float,3,1> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A572F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_pointer<md::Mesh *,std::shared_ptr<md::Mesh>::__shared_ptr_default_delete<md::Mesh,md::Mesh>,std::allocator<md::Mesh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos4Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

int16x4_t ___ZN2md11MonitorableINS_11ConfigValueI16GEOConfigKeyBOOLbEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvbEEE_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 32);
    if (*v1)
    {
      v3 = *(v2 + 16);
      if (*v2)
      {
        v4 = *(v2 + 8) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        *(v2 + 16) = GEOConfigGetBOOL();
      }

      v6 = *(v2 + 72);
      if (v6)
      {

        return std::function<void ()(BOOL)>::operator()(v6, v3);
      }
    }
  }

  return v5;
}

void std::__shared_ptr_emplace<std::atomic<BOOL>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A58090;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::ElevatedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A09260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<md::MuninRoadEdge const*>::vector[abi:nn200100](void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v3 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = v7 << 6;
    if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
    {
      __dst = 0;
      v19 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v7 << 7;
      if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v8 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&__dst, v11);
      v12 = *a1;
      v13 = *(a1 + 8);
      *&v19 = v13 + v5;
      v14 = __dst;
      if (v13 < 1)
      {
        LODWORD(v17) = 0;
        v16 = __dst;
      }

      else
      {
        v15 = v13 >> 6;
        if (v13 >= 0x40)
        {
          memmove(__dst, v12, 8 * v15);
        }

        v16 = &v14[8 * v15];
        v17 = v13 & 0x3F;
        if (v17)
        {
          *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v12 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
        }

        v12 = *a1;
      }

      *a1 = v14;
      *(a1 + 8) = v19;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      v16 = (*a1 + 8 * (v4 >> 6));
      v17 = *(a1 + 8) & 0x3FLL;
      *(a1 + 8) = a2;
    }

    if (a3)
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&__dst, v5);
    }

    else
    {
      __dst = v16;
      LODWORD(v19) = v17;
      std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&__dst, v5);
    }
  }
}

void sub_1B2C088DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__rehash_unique[abi:nn200100](uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_5;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_5:

      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__do_rehash<true>(result, prime);
    }
  }
}

void *std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__emplace_unique_key_args<md::MuninJunction const*,md::MuninJunction const* const&>(void *result, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t md::ComposedRoadEdge::walkEdges(uint64_t result, int a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    v4 = a2;
    v5 = result;
    v6 = *(result + 24);
    v7 = ((*(result + 32) - v6) >> 3) - 1;
    if (a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = ((*(result + 32) - v6) >> 3) - 1;
    }

    if (!a2)
    {
      v7 = 0;
    }

    if (v7 > v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 + v7;
    while (v10 != v8)
    {
      v11 = ((*(*v5 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0;
      v15 = *(v5[3] + 8 * v8);
      v14 = v11 ^ v4;
      v12 = *(a3 + 24);
      if (!v12)
      {
        v13 = std::__throw_bad_function_call[abi:nn200100]();
        return std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](v13);
      }

      result = (*(*v12 + 48))(v12, &v15, &v14);
      v8 += v9;
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL std::__function::__func<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0,std::allocator<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0>,BOOL ()(md::MuninRoadEdge const*,BOOL)>::operator()(uint64_t a1, md::MuninRoadEdge **a2)
{
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = md::MuninRoadEdge::edgeLengthInMeters(*a2);
  v6 = **(a1 + 8);
  v7 = *(a1 + 24);
  v8 = *v7;
  if (v6 == v3)
  {
    **(a1 + 16) = v8 / *(v4 + 144);
    v9 = *(a1 + 48);
    **(a1 + 40) = (*v7 + v5) / *(v4 + 144);
    *v9 = 1;
  }

  else
  {
    *v7 = v8 + v5;
  }

  return v6 != v3;
}

__n128 std::__function::__func<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0,std::allocator<md::ComposedRoadEdge::edgeRange(BOOL,md::MuninRoadEdge const*,double &,double &)::$_0>,BOOL ()(md::MuninRoadEdge const*,BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E2868;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ComposedRoadEdge::walker(md::ComposedRoadEdge *this, uint64_t a2, int a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 8) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v5[0] = &unk_1F29EC048;
  v5[1] = this;
  v5[3] = v5;
  md::ComposedRoadEdge::walkEdges(a2, a3, v5);
  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](v5);
  *(this + 15) = *(*this + 144);
  return md::MuninRoadEdgePolyline::pointAtDistance(*(this + 5) + 56 * *(this + 8), this + 5, this + 6, *(this + 14));
}

void sub_1B2C09148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = v10;
  std::__function::__value_func<BOOL ()(md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](va);
  std::vector<md::MuninRoadEdgePolyline>::__destroy_vector::operator()[abi:nn200100](&a9);
  v13 = *v11;
  if (*v11)
  {
    *(v9 + 24) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4BA00;

  JUMPOUT(0x1B8C62190);
}

void md::AnimationManager::animationDidResume(md::AnimationManager *this, VKAnimation *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([(VKAnimation *)v3 hasFrequency])
  {
    if (*(this + 232) == 1)
    {
      geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7, v3);
      v4 = std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::find<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(this + 24, v7);
      if (v4)
      {
        [(VKAnimation *)v3 frequency];
        (*(*v4[5] + 32))(v4[5], 0.0, 1.0 / v5);
      }

      v7[0] = &unk_1F2A4BA00;
    }
  }

  else
  {
    atomic_store(1u, this + 184);
    v6 = **(this + 4);
    if (v6)
    {
      LOBYTE(v7[0]) = 6;
      md::MapEngine::setNeedsTick(v6, v7);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::find<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(void *a1, uint64_t a2)
{
  v4 = [*(a2 + 8) hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(i[3], a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const,std::unique_ptr<gdc::Timer>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const,std::unique_ptr<gdc::Timer>>,0>(void *a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_1F2A4BA00;
  v3 = a1[1];
}

uint64_t geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A4BA00;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  [v2 onTimerFired:CFAbsoluteTimeGetCurrent()];

  v3 = **(v1 + 32);
  if (v3)
  {
    v4 = 6;
    md::MapEngine::setNeedsTick(v3, &v4);
  }
}

void std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A4BA00;

  operator delete(a1);
}

void *std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F29E2918;
  a2[1] = v2;
  return geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E2918;
  *(a1 + 16) = &unk_1F2A4BA00;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::AnimationManager::runAnimation(VKAnimation *)::$_0,std::allocator<md::AnimationManager::runAnimation(VKAnimation *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29E2918;
  *(a1 + 16) = &unk_1F2A4BA00;

  return a1;
}

void md::AnimationManager::~AnimationManager(md::AnimationManager *this)
{
  md::AnimationManager::~AnimationManager(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E28B0;
  md::AnimationManager::stopAllAnimations(this);
  std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::~__hash_table(this + 192);
  for (i = 144; i != 64; i -= 40)
  {
    std::__hash_table<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(this + i);
  }

  std::mutex::~mutex((this + 40));
  *(this + 1) = &unk_1F29E28F8;
}

void sub_1B2C09980(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::~__hash_table(v1 + 192);
  v3 = v1 + 144;
  v4 = -80;
  do
  {
    v3 = std::__hash_table<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(v3) - 40;
    v4 += 40;
  }

  while (v4);
  std::mutex::~mutex((v1 + 40));
  *(v1 + 8) = &unk_1F29E28F8;

  _Unwind_Resume(a1);
}

void md::AnimationManager::stopAllAnimations(md::AnimationManager *this)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::mutex::lock((this + 40));
  for (i = 104; i != 184; i += 40)
  {
    for (j = (this + i + 16); ; std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](&v7, (j + 2)))
    {
      j = *j;
      if (!j)
      {
        break;
      }
    }
  }

  std::mutex::unlock((this + 40));
  v4 = v7;
  v5 = v8;
  while (v4 != v5)
  {
    v6 = *(v4 + 8);
    [v6 stop];

    v4 += 24;
  }

  v10 = &v7;
  std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v10);
}

void sub_1B2C09A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::__unordered_map_hasher<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::unique_ptr<gdc::Timer>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const,std::unique_ptr<gdc::Timer>>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      (*v2[2])();
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void geo::_retain_ptr<_AnimationManagerRunner * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E28F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<_AnimationManagerRunner * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E28F8;

  return a1;
}

void md::SnapshotAnimationManager::runAnimation(md::SnapshotAnimationManager *this, VKAnimation *a2)
{
  v5 = a2;
  [(VKAnimation *)v5 startWithRunner:*(this + 2)];
  Current = CFAbsoluteTimeGetCurrent();
  [(VKAnimation *)v5 onTimerFired:?];
  if ([(VKAnimation *)v5 timed])
  {
    [(VKAnimation *)v5 duration];
    [(VKAnimation *)v5 onTimerFired:v4 + Current];
  }

  [(VKAnimation *)v5 stop];
}

void md::SnapshotAnimationManager::~SnapshotAnimationManager(md::SnapshotAnimationManager *this)
{
  md::AnimationManager::~AnimationManager(this);

  JUMPOUT(0x1B8C62190);
}

void md::ARPassList::buildFrameGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  v23[8] = *MEMORY[0x1E69E9840];
  v23[0] = &unk_1F29E2990;
  v23[1] = a4;
  v23[3] = v23;
  v7 = *(a5 + 160) - *(a5 + 152);
  while (1)
  {
    v8 = md::CommandBufferPool::pop(*(a5 + 184), v6, off_1E7B2F5A0[v6]);
    v9 = v8;
    v11 = *(a5 + 160);
    v10 = *(a5 + 168);
    if (v11 >= v10)
    {
      v13 = *(a5 + 152);
      v14 = (v11 - v13) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = v10 - v13;
      v16 = v15 >> 2;
      if (v15 >> 2 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v17);
      }

      v18 = (8 * v14);
      *v18 = v9;
      v12 = 8 * v14 + 8;
      v19 = *(a5 + 152);
      v20 = *(a5 + 160) - v19;
      v21 = v18 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(a5 + 152);
      *(a5 + 152) = v21;
      *(a5 + 160) = v12;
      *(a5 + 168) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = v8;
      v12 = (v11 + 1);
    }

    *(a5 + 160) = v12;
    if (++v6 == 9)
    {
      md::FrameGraphResourcePools::constructRenderQueue(*(a5 + 184), *(a5 + 152) + v7, 9uLL);
    }
  }
}

void sub_1B2C09F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(md::FrameGraphRenderPassBuilder &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(&__str.__r_.__value_.__s + 23) = 7;
  strcpy(&__str, "Primary");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  *(a2 + 120) = v4[1];
  *(a2 + 104) = v5;
  result = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  *(a2 + 184) = v4[5];
  *(a2 + 168) = v8;
  *(a2 + 152) = v7;
  *(a2 + 136) = result;
  return result;
}

uint64_t std::__function::__func<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::ARPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2990;
  a2[1] = v2;
  return result;
}

void md::ARPassList::~ARPassList(ggl::RenderQueue **this)
{
  *this = &unk_1F2A36F90;
  v1 = (this + 1);
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A36F90;
  v1 = (this + 1);
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](v1, 0);
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  **(a1 + 8) = 1;
  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2A20;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_1>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E2A20;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void ___ZN2md11MonitorableINS_11ConfigValueI18GEOConfigKeyStringNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNS3_8functionIFvS9_EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 32);
    if (*v1)
    {
      if (*(v2 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v7, *(v2 + 16), *(v2 + 24));
      }

      else
      {
        v7 = *(v2 + 16);
      }

      if (*v2)
      {
        v3 = *(v2 + 8) == 0;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        md::ConfigValue<GEOConfigKeyString,std::string>::_update(v2);
      }

      v4 = *(v2 + 88);
      if (v4)
      {
        if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
          v4 = *(v2 + 88);
          if (!v4)
          {
            v5 = std::__throw_bad_function_call[abi:nn200100]();
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v7.__r_.__value_.__l.__data_);
            }

            _Unwind_Resume(v5);
          }
        }

        else
        {
          __p = v7;
        }

        (*(*v4 + 48))(v4, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }
    }
  }
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 23);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  **(a1 + 8) = 1;
  if (v4 < 0)
  {
    operator delete(v3);
  }
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E29D8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0,std::allocator<md::LabelDebugSettings::LabelDebugSettings(std::shared_ptr<md::TaskContext> const&)::$_0>,void ()(std::string)>::~__func(void *a1)
{
  *a1 = &unk_1F29E29D8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitRenderLayer::setDebugHighlightedItem(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 376);
  v4 = *(v3 + 304);
  v5 = *a2;
  if (v4 != *a2)
  {
    if (v4)
    {
      ((*v4)[2])(v4, 0);
      v3 = *(a1 + 376);
      v5 = *a2;
    }

    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v3 + 312);
    *(v3 + 304) = v5;
    *(v3 + 312) = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(*(a1 + 376) + 304);
    if (v9)
    {
      (*(*v9 + 16))(v9, 1);
    }

    v10 = **(*(a1 + 40) + 88);
    if (v10)
    {
      LOBYTE(__p[0]) = 7;
      md::MapEngine::setNeedsTick(v10, __p);
    }

    v4 = *(*(a1 + 376) + 304);
  }

  if (v4)
  {
    v11 = *v4[1];
    if (GEOGetVectorKitLabelHighlightLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitLabelHighlightLog(void)::onceToken, &__block_literal_global_32);
    }

    v12 = GEOGetVectorKitLabelHighlightLog(void)::log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      md::HighlightHelper::to_string(__p, (v11 + 168));
      if (v18 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = (*(**(*(a1 + 376) + 304) + 32))(*(*(a1 + 376) + 304), 1);
      v15 = v14;
      v16 = [v14 UTF8String];
      *buf = 136315394;
      v20 = v13;
      v21 = 2080;
      v22 = v16;
      _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_INFO, "Transit Item:\nTile:%s\n%s", buf, 0x16u);

      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1B2C0A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL32GEOGetVectorKitLabelHighlightLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "LabelHighlight");
  v1 = GEOGetVectorKitLabelHighlightLog(void)::log;
  GEOGetVectorKitLabelHighlightLog(void)::log = v0;
}

void md::MuninAvailabilityData::~MuninAvailabilityData(md::MuninAvailabilityData *this)
{
  md::MuninAvailabilityData::~MuninAvailabilityData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E2A88;
  *(this + 80) = &unk_1F29E2AC8;
  v2 = *(this + 91);
  if (v2)
  {
    *(this + 92) = v2;
    operator delete(v2);
  }

  md::MapTileData::~MapTileData(this);
}

uint64_t std::__function::__value_func<void ()(GeoCodecsRoadFeature const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<gss::StyleAttribute,unsigned short>>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(GeoCodecsRoadEdge *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E2B28;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1,std::allocator<md::MuninAvailabilityData::MuninAvailabilityData(gdc::LayerDataRequestKey const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_1>,void ()(GeoCodecsRoadFeature const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E2AE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL md::MuninAvailabilityData::isWithinMuninCoverage(uint64_t a1, double a2, double a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(a1 + 169);
  v6 = a2 + -1.0 / v5 * *(a1 + 176);
  v7 = a3 + -1.0 / v5 * (v5 + ~*(a1 + 172));
  while (1)
  {
    v8 = v6 * v5;
    if (*(a1 + 752 + 4 * v4) > v8)
    {
      break;
    }

    v9 = *(a1 + 760 + 4 * v4);
    v4 = 1;
    v10 = (v9 > v8) & ~v3;
    v3 = 1;
    v6 = v7;
    if ((v10 & 1) == 0)
    {
      return v9 > v8;
    }
  }

  return 0;
}

void geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FC10;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FC10;

  return a1;
}

void geo::_retain_ptr<VKInternalIconManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E2CF0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKInternalIconManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29E2CF0;

  return a1;
}

void std::default_delete<ggl::DistanceAtlas>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<ggl::AlphaAtlas>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<md::GeoidModel>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1B2C0B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

void sub_1B2C0B4A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKSharedResources;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::reset(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  *v14 = a1 + 32;
  v3 = pthread_rwlock_wrlock((a1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  v5 = atomic_load((a1 + 24));
  if (v5)
  {
    geo::write_lock_guard::~write_lock_guard(v14);
    v6 = pthread_rwlock_rdlock(v2);
    if (v6)
    {
      geo::read_write_lock::logFailure(v6, "read lock", v7);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v14 = 136315138;
      *&v14[4] = v8;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "BasicAllocationTracker(%s)", v14, 0xCu);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = atomic_load((a1 + 24));
      *v14 = 67109120;
      *&v14[4] = v10;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "\tCount: %d", v14, 8u);
    }

    v11 = *(a1 + 16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 8);
      *v14 = 136315650;
      *&v14[4] = v13;
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v5;
      _os_log_error_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "Resetting %s zone allocator at address %p with %d allocations still alive", v14, 0x1Cu);
    }

    geo::read_write_lock::unlock(v2);
  }

  else
  {
    malloc_destroy_zone(*a1);
    zone = malloc_create_zone(0, 0);
    *a1 = zone;
    malloc_set_zone_name(zone, *(a1 + 8));
    atomic_store(0, (a1 + 24));
    geo::write_lock_guard::~write_lock_guard(v14);
  }
}

void sub_1B2C0D3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::StandardCommandBufferSelector *,std::shared_ptr<md::StandardCommandBufferSelector>::__shared_ptr_default_delete<md::StandardCommandBufferSelector,md::StandardCommandBufferSelector>,std::allocator<md::StandardCommandBufferSelector>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::StandardCommandBufferSelector *,std::shared_ptr<md::StandardCommandBufferSelector>::__shared_ptr_default_delete<md::StandardCommandBufferSelector,md::StandardCommandBufferSelector>,std::allocator<md::StandardCommandBufferSelector>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<grl::IconManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00FE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<grl::FontManager *,std::shared_ptr<grl::FontManager>::__shared_ptr_default_delete<grl::FontManager,grl::FontManager>,std::allocator<grl::FontManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<grl::FontManager *,std::shared_ptr<grl::FontManager>::__shared_ptr_default_delete<grl::FontManager,grl::FontManager>,std::allocator<grl::FontManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::GeoResourceProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DataOverrideManager>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::DataOverrideManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2C38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::StylesheetVendor>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = (a1 + 88);
  std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v5 = (a1 + 64);
  std::vector<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&v5);

  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<md::StylesheetVendor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TileGroupNotificationManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::MaterialTextureManager>::__on_zero_shared(uint64_t a1)
{
  md::MaterialTextureManager::purge((a1 + 24));
  v2 = *(a1 + 344);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(a1 + 304) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table((a1 + 264));
  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table((a1 + 224));

  geo::read_write_lock::~read_write_lock((a1 + 24));
}

void sub_1B2C0DECC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 344);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(v1 + 304) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table((v1 + 264));
  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table((v1 + 224));
  geo::read_write_lock::~read_write_lock((v1 + 24));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::MaterialTextureManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TextureManager>::__on_zero_shared(uint64_t a1)
{
  md::TextureManager::purge((a1 + 24));
  *(a1 + 568) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(a1 + 528);
  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(a1 + 488);
  geo::read_write_lock::~read_write_lock((a1 + 288));
  geo::read_write_lock::~read_write_lock((a1 + 88));
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B2C0E054(_Unwind_Exception *a1)
{
  *(v1 + 568) = &unk_1F2A2FC10;

  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(v1 + 528);
  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(v1 + 488);
  geo::read_write_lock::~read_write_lock((v1 + 288));
  geo::read_write_lock::~read_write_lock((v1 + 88));
  v3 = *(v1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TextureManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2B90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2C0E48C(_Unwind_Exception *a1)
{
  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  MEMORY[0x1B8C62190](v1, v3);
  _Unwind_Resume(a1);
}

void sub_1B2C10C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);

  std::unique_ptr<md::SharedDeviceResources>::reset[abi:nn200100]((a18 + 24), 0);
  v23 = *(a18 + 16);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  MEMORY[0x1B8C62190](a18, 0x1020C40E72D6CFBLL);
  std::mutex::unlock((v18 + 8));
  _Unwind_Resume(a1);
}

uint64_t md::RegionalResourceLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void std::__shared_ptr_emplace<md::RegionalResourceTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::ResourceInfo>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = (a1 + 48);
  std::vector<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::ResourceInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3FF70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RegionalResourceLayerDataSource::~RegionalResourceLayerDataSource(md::RegionalResourceLayerDataSource *this)
{
  *this = &unk_1F29E2D48;
  *(this + 97) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E2D48;
  *(this + 97) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void geo::_retain_ptr<VKSharedResources * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A59028;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKSharedResources * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A59028;

  return a1;
}

void std::__shared_ptr_emplace<md::RouteAnnotationDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E52F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A436C8;

  return a1;
}

void *std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::find<VKTrafficFeature * {__strong}>(void *a1, void **a2)
{
  v4 = md::TrafficFeatureHash::operator()(*a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  i = *(*a1 + 8 * v7);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v9 = i[1];
      if (v9 == v4)
      {
        if (i[2] == *a2)
        {
          return i;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v9 >= *&v5)
          {
            v9 %= *&v5;
          }
        }

        else
        {
          v9 &= *&v5 - 1;
        }

        if (v9 != v7)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::RouteAnnotationLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::RouteAnnotationLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(v5, v4);
  }

  return v1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(uint64_t a1, uint64_t a2)
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

void *std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeature * {__strong},std::piecewise_construct_t const&,std::tuple<VKTrafficFeature * const {__strong}&>,std::tuple<>>(float *a1, void **a2, id **a3)
{
  v7 = md::TrafficFeatureHash::operator()(*a2);
  v8 = v7;
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (i[2] == *a2)
          {
            return i;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(v7);
  i = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(v14);
  *i = 0;
  i[1] = v8;
  i[2] = **a3;
  i[3] = 0;
  v15 = (*(a1 + 5) + 1);
  v16 = a1[12];
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__rehash<true>(a1, v20);
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    *i = *v22;
LABEL_38:
    *v22 = i;
    goto LABEL_39;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v21 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v23 >= v9)
      {
        v23 %= v9;
      }
    }

    else
    {
      v23 &= v9 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
  return i;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,std::equal_to<int>,std::hash<int>,true>,geo::allocator_adapter<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,mdm::zone_mallocator>>::__deallocate_node(char *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<int,std::vector<VKTrafficFeature * {__strong}>>,void *>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::RouteAnnotationLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E2E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TrafficFeatureHash::operator()(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  v2 = [v1 hash];

  return v2;
}

void std::__hash_table<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::__unordered_map_hasher<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,md::TrafficFeatureHash,std::equal_to<VKTrafficFeature * {__strong}>,true>,std::__unordered_map_equal<VKTrafficFeature * {__strong},std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,std::equal_to<VKTrafficFeature * {__strong}>,md::TrafficFeatureHash,true>,geo::allocator_adapter<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    result = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v14 = (1 << -__clz(result - 1));
      if (result >= 2)
      {
        result = v14;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(result);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= v3)
      {
        v11 %= v3;
      }
    }

    else
    {
      v11 &= v3 - 1;
    }

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= v3)
          {
            v16 %= v3;
          }
        }

        else
        {
          v16 &= v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, id *a2)
{
  if (a1)
  {
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(v3, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(uint64_t a1, void *a2)
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