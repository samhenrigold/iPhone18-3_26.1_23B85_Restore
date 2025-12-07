void sub_1B2DCCC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  v29 = *(v27 - 136);
  if (v29)
  {
    operator delete(v29);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  (*(*v24 + 8))(v24);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a23);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<md::mun::CollectionPoint>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x63FB9AEB1FDCD759 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2328A701194539)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 1864;
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v4 - 1776));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<md::mun::StorefrontBundle>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 10);
        if (v6 != *(v4 - 8))
        {
          free(v6);
        }

        v4 -= 168;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*,md::mun::CollectionPoint*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      for (i = 32; i != 44; i += 4)
      {
        *(a3 + i) = *(v5 + i);
      }

      *(a3 + 44) = *(v5 + 44);
      for (j = 8; j != 32; j += 8)
      {
        *(a3 + j) = *(v5 + j);
      }

      *(a3 + 48) = *(v5 + 48);
      for (k = 56; k != 80; k += 8)
      {
        *(a3 + k) = *(v5 + k);
      }

      *(a3 + 80) = *(v5 + 80);
      if (a3 != v5)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::copy((a3 + 88), (v5 + 88), (a3 + 120));
      }

      v9 = *(v5 + 1848);
      *(a3 + 1853) = *(v5 + 1853);
      *(a3 + 1848) = v9;
      v5 += 1864;
      a3 += 1864;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(unint64_t a1)
{
  if (a1 < 0x2328A701194539)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1864;
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(i - 1776);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result + 88;
    v6 = a3 + 120;
    do
    {
      *(v6 - 120) = *(v5 - 88);
      v7 = *(v5 - 80);
      *(v6 - 96) = *(v5 - 64);
      *(v6 - 112) = v7;
      v8 = *(v5 - 56);
      *(v6 - 80) = *(v5 - 48);
      *(v6 - 88) = v8;
      *(v6 - 76) = *(v5 - 44);
      v9 = *(v5 - 16);
      *(v6 - 64) = *(v5 - 32);
      *(v6 - 48) = v9;
      geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base((v6 - 32), v5, v6);
      v10 = *(v5 + 1760);
      *(v6 + 1733) = *(v5 + 1765);
      *(v6 + 1728) = v10;
      v11 = v5 + 1776;
      v5 += 1864;
      v6 += 1864;
    }

    while (v11 != a2);
    do
    {
      result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v4 + 88);
      v4 += 1864;
    }

    while (v4 != a2);
  }

  return result;
}

char ***geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(char ***a1, char ***a2, char **a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v4 = a2[2];
  a1[3] = a2[3];
  v5 = *a2;
  if (*a2 == v4)
  {
    a1[1] = (a3 + a2[1] - v5);
    geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(v5, a2[1], a3);
  }

  else
  {
    v6 = a2[1];
    *a1 = v5;
    a1[1] = v6;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return a1;
}

char **geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(char **result, char **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    result = (a3 + 248);
    v5 = (v4 + 31);
    do
    {
      v6 = *(v5 - 248);
      *(result - 29) = *(v5 - 232);
      *(result - 31) = v6;
      v7 = *(v5 - 224);
      *(result - 54) = *(v5 - 216);
      *(result - 28) = v7;
      *(result - 212) = *(v5 - 212);
      v8 = *(v5 - 204);
      v9 = *(v5 - 188);
      v10 = *(v5 - 172);
      *(result - 156) = *(v5 - 156);
      *(result - 172) = v10;
      *(result - 188) = v9;
      *(result - 204) = v8;
      v11 = *(v5 - 140);
      v12 = *(v5 - 124);
      v13 = *(v5 - 108);
      *(result - 92) = *(v5 - 92);
      *(result - 108) = v13;
      *(result - 124) = v12;
      *(result - 140) = v11;
      v14 = *(v5 - 76);
      v15 = *(v5 - 60);
      v16 = *(v5 - 44);
      *(result - 28) = *(v5 - 28);
      *(result - 44) = v16;
      *(result - 60) = v15;
      *(result - 76) = v14;
      *(result - 3) = *(v5 - 12);
      *(result - 8) = *(v5 - 8);
      result = geo::small_vector_base<unsigned char>::small_vector_base(result, v5, result + 32) + 36;
      v17 = (v5 + 40);
      v5 += 288;
    }

    while (v17 != a2);
  }

  return result;
}

void geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = 0x8E38E38E38E38E39 * ((v7 - *result) >> 5);
  if (0x8E38E38E38E38E39 * ((a3 - a2) >> 5) > result[3] - v8)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::grow(result, v8 - 0x71C71C71C71C71C7 * ((a3 - a2) >> 5));
    v7 = result[1];
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *v4;
      v7[2] = *(v4 + 2);
      *v7 = v9;
      v10 = *(v4 + 3);
      *(v7 + 8) = *(v4 + 8);
      v7[3] = v10;
      *(v7 + 36) = *(v4 + 36);
      v11 = *(v4 + 172);
      v12 = *(v4 + 188);
      v13 = *(v4 + 204);
      v14 = *(v4 + 220);
      v15 = *(v4 + 108);
      v16 = *(v4 + 124);
      v17 = *(v4 + 140);
      v18 = *(v4 + 156);
      v19 = *(v4 + 44);
      v20 = *(v4 + 60);
      v21 = *(v4 + 76);
      v22 = *(v4 + 92);
      v23 = v7 + 35;
      v7[31] = v7 + 35;
      v24 = v7 + 31;
      *(v24 - 156) = v22;
      *(v24 - 172) = v21;
      *(v24 - 188) = v20;
      *(v24 - 204) = v19;
      *(v24 - 92) = v18;
      *(v24 - 108) = v17;
      *(v24 - 124) = v16;
      *(v24 - 140) = v15;
      *(v24 - 28) = v14;
      *(v24 - 44) = v13;
      *(v24 - 60) = v12;
      *(v24 - 76) = v11;
      *(v24 - 3) = *(v4 + 59);
      *(v24 - 8) = v4[240];
      v24[1] = v23;
      v24[2] = v23;
      v24[3] = 2;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v24, *(v4 + 31), *(v4 + 32));
      v4 += 288;
      v7 = v24 + 5;
    }

    while (v4 != a3);
    v7 = result[1];
  }

  result[1] = v7 + v6;
}

void geo::small_vector_base<md::mun::PhotoInfo>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(288 * v9, 0x1010040C6D9B592uLL);
  geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(*a1, *(a1 + 8), v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  while (v11 != v12)
  {
    v13 = v11[31];
    if (v13 != v11[33])
    {
      free(v13);
    }

    v11 += 36;
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v10;
  *(a1 + 8) = &v10[v4 - v3];
  *(a1 + 24) = v9;
}

void geo::small_vector_base<md::mun::PhotoInfo>::copy(char **result, char **a2, char *a3)
{
  if (result != a2)
  {
    v7 = *result;
    v8 = result[1];
    if (*result != v8)
    {
      do
      {
        v9 = *(v7 + 31);
        if (v9 != *(v7 + 33))
        {
          free(v9);
        }

        v7 += 288;
      }

      while (v7 != v8);
      v7 = *result;
    }

    if (v7 != result[2])
    {
      free(v7);
    }

    *result = a3;
    result[1] = a3;
    result[2] = a3;
    result[3] = 6;
    v10 = *a2;
    v11 = a2[1];

    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(result, v10, v11);
  }
}

void geo::small_vector_base<md::mun::PhotoInfo>::move(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    if (*a1 != v7)
    {
      do
      {
        v8 = v6[31];
        if (v8 != v6[33])
        {
          free(v8);
        }

        v6 += 36;
      }

      while (v6 != v7);
      v6 = *a1;
    }

    if (v6 != *(a1 + 16))
    {
      free(v6);
    }

    *(a1 + 16) = a3;
    if (*a2 == *(a2 + 16))
    {
      *a1 = a3;
      v11 = *a2;
      *(a1 + 8) = a3 + *(a2 + 8) - *a2;
      geo::uninitialized_move<md::mun::PhotoInfo *,md::mun::PhotoInfo *>(v11, *(a2 + 8), a3);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v10;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    *(a1 + 24) = v9;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(unint64_t a1)
{
  if (a1 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<md::mun::StorefrontBundle>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 168;
    v4 = *(v2 - 80);
    if (v4 == *(v2 - 64))
    {
      v2 -= 168;
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

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>,md::mun::StorefrontBundle*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 120;
    v6 = a1;
    do
    {
      v7 = *v6;
      *(v5 - 104) = v6[1];
      *(v5 - 120) = v7;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v6[4];
      *(v5 - 40) = *(v6 + 80);
      *(v5 - 56) = v10;
      *(v5 - 72) = v9;
      *(v5 - 88) = v8;
      geo::small_vector_base<md::mun::OrientedPlane>::small_vector_base((v5 - 32), v6 + 11, v5);
      v6 = (v6 + 168);
      v5 += 168;
    }

    while (v6 != a2);
    do
    {
      v11 = *(v4 + 11);
      if (v11 != *(v4 + 13))
      {
        free(v11);
      }

      v4 = (v4 + 168);
    }

    while (v4 != a2);
  }
}

float geo::small_vector_base<md::mun::OrientedPlane>::small_vector_base(__int128 **a1, __int128 **a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v3 = a2[2];
  a1[3] = a2[3];
  v4 = *a2;
  if (*a2 == v3)
  {
    a1[1] = (a2[1] + a3 - v4);
    v7 = a2[1];
    while (v4 != v7)
    {
      v8 = *v4;
      *(a3 + 16) = *(v4 + 16);
      *a3 = v8;
      v9 = *(v4 + 24);
      *(a3 + 32) = *(v4 + 32);
      *(a3 + 24) = v9;
      result = *(v4 + 36);
      *(a3 + 36) = result;
      *(a3 + 40) = *(v4 + 40);
      a3 += 48;
      v4 += 48;
    }
  }

  else
  {
    v5 = a2[1];
    *a1 = v4;
    a1[1] = v5;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void geo::small_vector_base<md::mun::OrientedPlane>::append<md::mun::OrientedPlane const*>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = result[1];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4);
  if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4) > result[3] - v8)
  {
    geo::small_vector_base<md::mun::OrientedPlane>::grow(result, v8 - 0x5555555555555555 * ((a3 - a2) >> 4));
    v7 = result[1];
  }

  if (v4 != a3)
  {
    do
    {
      v9 = *v4;
      *(v7 + 16) = *(v4 + 2);
      *v7 = v9;
      v10 = *(v4 + 3);
      *(v7 + 32) = *(v4 + 8);
      *(v7 + 24) = v10;
      *(v7 + 36) = *(v4 + 9);
      *(v7 + 40) = *(v4 + 5);
      v4 += 48;
      v7 += 48;
    }

    while (v4 != a3);
    v7 = result[1];
  }

  result[1] = v7 + v6;
}

void geo::small_vector_base<md::mun::OrientedPlane>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(48 * v9, 0x1000040EED21634uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v16 = v12[3];
      *(v14 + 8) = *(v12 + 8);
      *(v14 + 3) = v16;
      *(v14 + 9) = *(v12 + 9);
      *(v14 + 5) = v12[5];
      v14 += 48;
      v12 += 6;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

void md::mun::MuninLabelLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v26, *v4);
      v6 = *v4;
      gdc::Tiled::tileFromLayerDataKey(v25, *(*v4 + 16));
      v7 = v27;
      Int32 = gdc::ResourceKey::getInt32(v27, 0);
      v32 = gdc::ResourceKey::getInt32(v7, 1u);
      LODWORD(v33) = gdc::ResourceKey::getInt32(v7, 2u);
      HIDWORD(v33) = gdc::ResourceKey::getInt32(v7, 3u);
      gdc::ResourceKey::ResourceKey(v22, 0, 24, &Int32, 4, *(v6 + 112), 2147483646);
      gdc::LayerDataRequest::request(*v4, v22, 0);
      for (i = -1; i != 2; ++i)
      {
        for (j = -1; j != 2; ++j)
        {
          v10 = v27;
          LODWORD(v29) = gdc::ResourceKey::getInt32(v27, 0) + j;
          HIDWORD(v29) = gdc::ResourceKey::getInt32(v10, 1u) + i;
          LODWORD(v30) = gdc::ResourceKey::getInt32(v10, 2u);
          DWORD1(v30) = gdc::ResourceKey::getInt32(v10, 3u);
          gdc::ResourceKey::ResourceKey(&Int32, 0, 22, &v29, 4, *(*v4 + 112), 2147483646);
          gdc::LayerDataRequest::request(*v4, &Int32, 0);
          if (v33 != v35)
          {
            free(v33);
          }
        }
      }

      v11 = [MEMORY[0x1E69A2478] modernManager];
      v12 = [v11 activeTileGroup];

      for (k = 0; k < [v12 regionalResourcesCount]; ++k)
      {
        v14 = [v12 regionalResourceAtIndex:k];
        for (m = 0; m < [v14 regionsCount]; ++m)
        {
          v29 = 0;
          v30 = 0uLL;
          if (v14)
          {
            objc_msgSend_regionAtIndex_(v14);
            v16 = HIDWORD(v30);
            v17 = v30;
            v18 = *(&v30 + 4);
            v19 = v29;
          }

          else
          {
            v19 = 0;
            v18 = 0;
            v17 = 0;
            v16 = 0;
          }

          Int32 = v16;
          v32 = v17;
          v33 = v18;
          v34 = v19;
          if (md::TiledGEOResourceFetcher::regionContainsTile(&Int32, v25))
          {
            v20 = *(a1 + 592);
            v21 = *(*v4 + 112);
            v36[0] = k;
            v36[1] = v20;
            gdc::ResourceKey::ResourceKey(&Int32, 0, 18, v36, 2, v21, -1073741827);
            gdc::LayerDataRequest::request(*v4, &Int32, 0);
            if (v33 != v35)
            {
              free(v33);
            }

            break;
          }
        }
      }

      if (v23 != v24)
      {
        free(v23);
      }

      if (v27 != v28)
      {
        free(v27);
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void sub_1B2DCDDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30)
{
  if (a11 != a13)
  {
    free(a11);
  }

  if (a28 != a30)
  {
    free(a28);
  }

  _Unwind_Resume(exception_object);
}

void md::mun::MuninLabelLayerDataSource::didDeactivate(md::mun::MuninLabelLayerDataSource *this)
{
  v2 = *(this + 83);
  *(this + 41) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::mun::MuninLabelLayerDataSource::didActivate(md::mun::MuninLabelLayerDataSource *this)
{
  v2 = *(this + 81);
  if (v2)
  {
    (*(*v2 + 48))(&v7);
    v4 = v7;
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 82) = v4;
    v5 = *(this + 83);
    *(this + 83) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
      v3 = v8;
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    md::mun::MuninLabelLayerDataSource::~MuninLabelLayerDataSource(v6);
  }
}

void md::mun::MuninLabelLayerDataSource::~MuninLabelLayerDataSource(md::mun::MuninLabelLayerDataSource *this)
{
  *this = &unk_1F2A00458;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 624);
  *(this + 75) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00458;
  v2 = *(this + 83);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 624);
  *(this + 75) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void ___ZN2md3mun20MuninRenderResourcesC2EPKNS_6DeviceE_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v12, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8), 1, 0, 0);
  v2 = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  v13 = _D0;
  v14 = 1065353216;
  __asm { FMOV            V2.2S, #1.0 }

  v15[0] = 0x3F80000000000000;
  *&v15[2] = -_D2;
  LODWORD(v16) = 1065353216;
  v17 = _D2;
  v18 = _D2;
  v19 = 1065353216;
  v20 = 1065353216;
  v21 = -_D0;
  v23 = 0;
  v22 = 1065353216;
  v9 = v12[5];
  do
  {
    v10 = v9 + v2 * 8;
    *v10 = *(&v13 + v2 * 8);
    *(v10 + 8) = *(&v13 + v2 * 8 + 8);
    *(v10 + 16) = v15[v2];
    v2 += 4;
  }

  while (v2 != 16);
  ggl::BufferMemory::~BufferMemory(v12);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v13, *(a1 + 48), 0, (*(*(a1 + 48) + 48) - *(*(a1 + 48) + 40)) / *(*(a1 + 48) + 8), 1, 0, 0);
  v11 = v16;
  *v16 = 0x2000200010000;
  *(v11 + 2) = 3;
  ggl::BufferMemory::~BufferMemory(&v13);
}

void *std::unique_ptr<ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::VSView::StretchAlphaPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::VSView::StretchAlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::unique_ptr<ggl::FragmentedPool<ggl::VSView::PipelineSetup>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ggl::FragmentedPool<ggl::VSView::PipelineSetup>::~FragmentedPool(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(ggl::VSView::PipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<std::unique_ptr<ggl::RenderState>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ggl::ConstantDataTyped<ggl::VSTextured::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSTextured::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *ggl::FragmentedPool<ggl::VSView::PipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VSView::PipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::PipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::PipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::PipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::PipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::PipelineSetup *>(v5, v4);
  }

  return a1;
}

void ggl::ConstantDataTyped<ggl::VSView::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSView::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_1,std::allocator<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_1>,ggl::VSView::PipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A006A0;
  a2[1] = v2;
  return result;
}

void *ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::VSView::StretchAlphaPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::VSView::StretchAlphaPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::StretchAlphaPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::StretchAlphaPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
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
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::StretchAlphaPipelineSetup *>(v6, 100);
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
    return std::__split_buffer<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::StretchAlphaPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VSView::StretchAlphaPipelineSetup *>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__func<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_0,std::allocator<md::mun::MuninRenderResources::MuninRenderResources(md::Device const*)::$_0>,ggl::VSView::StretchAlphaPipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A005B8;
  a2[1] = v2;
  return result;
}

void ggl::ConstantDataTyped<ggl::VSView::Shared>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSView::Shared>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::VSCommon::Mesh *,std::shared_ptr<ggl::VSCommon::Mesh>::__shared_ptr_default_delete<ggl::VSCommon::Mesh,ggl::VSCommon::Mesh>,std::allocator<ggl::VSCommon::Mesh>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VSCommon::Mesh *,std::shared_ptr<ggl::VSCommon::Mesh>::__shared_ptr_default_delete<ggl::VSCommon::Mesh,ggl::VSCommon::Mesh>,std::allocator<ggl::VSCommon::Mesh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_32c72_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_8VSCommon6VertexEEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_32c72_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_8VSCommon6VertexEEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VSTextured::CompositingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A008F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSView::StretchAlphaPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A008C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Clear::ClearMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  ggl::DataAccess<ggl::Clear::ClearData>::DataAccess(v8, **(a1 + 8), *a2);
  v4 = v9;
  *v9 = xmmword_1B33B0F50;
  v4[1] = xmmword_1B33B0F40;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v6, **(a1 + 16), 0, 6, 1, 0, v3);
  v5 = v7;
  *v7 = 0x2000200010000;
  *(v5 + 2) = 3;
  ggl::BufferMemory::~BufferMemory(v6);
  ggl::BufferMemory::~BufferMemory(v8);
}

__n128 std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A00840;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Clear::ClearData>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Clear::ClearData>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Clear::ClearData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  ggl::DataAccess<ggl::Clear::ClearConstants>::DataAccess(v3, *(*(a1 + 8) + 112), *a2);
  v2 = v4;
  *v4 = xmmword_1B33B0F60;
  *(v2 + 4) = 1065353216;
  ggl::BufferMemory::~BufferMemory(v3);
}

uint64_t std::__function::__func<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0,std::allocator<md::mun::MuninRenderResources::updatePipelineStates(ggl::RenderTargetFormat const&,ggl::RenderTargetFormat const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A007F8;
  a2[1] = v2;
  return result;
}

void ggl::ConstantDataTyped<ggl::Clear::ClearConstants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Clear::ClearConstants>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Clear::ClearPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5C038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSTextured::PassthroughPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A007C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSView::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MaskedIconLabelPart::populateMeshDescriptor(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  *(a2 + 3) = 1;
  v3[0] = &unk_1F2A00D00;
  v3[1] = a1;
  v3[3] = v3;
  std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v3, (a2 + 8));
  return std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v3);
}

__n128 std::__function::__func<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  md::IconLabelPart::populateMesh(v4, a3);
  result = v4[52];
  *(a3 + 116) = result;
  *(a3 + 112) = 0;
  return result;
}

uint64_t std::__function::__func<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::MaskedIconLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A00D00;
  a2[1] = v2;
  return result;
}

uint64_t md::MaskedIconLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  a1[105].i32[1] = 1086918619;
  a1[105].i32[0] = a1[104].i32[1];
  if (a3)
  {
    v10 = *(a3 + 24);
    v11 = *(a3 + 32);
    if (0x8E38E38E38E38E39 * ((v11 - v10) >> 4) <= a1[70].u8[3])
    {
      if (v10 == v11 || (*(a3 + 89) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 += 18 * a1[70].u8[3];
    }

    if (v10)
    {
      v12 = *v10;
      v13 = v10[1];
      if (*v10 != v13)
      {
        v14 = *v10;
        while (*(v14 + 16) != 3)
        {
          v14 += 24;
          if (v14 == v13)
          {
            goto LABEL_13;
          }
        }

        v15 = md::LabelAnimation::property(v12, v13, 3) * 6.28318531;
        a1[105].f32[1] = v15;
      }
    }
  }

LABEL_13:
  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  return 37;
}

float md::LabelAnimation::property(uint64_t a1, uint64_t a2, int a3)
{
  result = 1.0;
  while (a1 != a2)
  {
    if (*(a1 + 16) == a3)
    {
      return *(a1 + 8) + (*(**a1 + 32 * *(*a1 + 32) + 8) * (*(a1 + 12) - *(a1 + 8)));
    }

    a1 += 24;
  }

  return result;
}

float md::MaskedIconLabelPart::prepareForDisplay(md::MaskedIconLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 153);
  if (v3 == *(this + 204))
  {
    v4 = 0;
    v5 = 1;
    while (*(this + v4 + 80) >= *(this + v4 + 78))
    {
      v6 = v5;
      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  *(this + 204) = v3;
  (*(*this + 920))(this, 1, this + 640, this + 312);
LABEL_7:
  if (*(this + 565) == 1)
  {
    operator new();
  }

  v7 = (*(*this + 928))(this);
  v11 = *(this + 153);
  v12 = v11 == 1.0;
  v13 = v7 * v11;
  v14 = v8 * v11;
  v15 = v9 * v11;
  v16 = v10 * v11;
  if (!v12)
  {
    v7 = v13;
    v8 = v14;
    v9 = v15;
    v10 = v16;
  }

  v17 = fminf(v10 - v8, v9 - v7);
  *(this + 209) = v17;
  result = (v17 * 0.5) + -1.0;
  *(this + 208) = result;
  return result;
}

void md::MaskedIconLabelPart::~MaskedIconLabelPart(md::MaskedIconLabelPart *this)
{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void *md::GraphTraversalPath::GraphTraversalPath(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (!((v5 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v5 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<md::MuninRoadEdge const*>::vector[abi:nn200100](a1 + 3, a2 + 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v7 = a2[6];
  v6 = a2[7];
  if (v6 != v7)
  {
    if (v6 - v7 >= 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void sub_1B2DD01A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void md::GraphTraversalPath::visit(md::GraphTraversalPath *this, const md::MuninJunction *a2)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v4 >= v3)
  {
    v6 = (v4 - *this) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *this;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = a2;
    v5 = 8 * v6 + 8;
    v11 = *(this + 1) - *this;
    v12 = v10 - v11;
    memcpy(v10 - v11, *this, v11);
    v13 = *this;
    *this = v12;
    *(this + 1) = v5;
    *(this + 2) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 1) = v5;
  v15 = *(this + 7);
  v14 = *(this + 8);
  if (v15 >= v14)
  {
    v17 = *(this + 6);
    v18 = (v15 - v17);
    v19 = v15 - v17 + 1;
    if (v19 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v14 - v17;
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

    v22 = v15 - v17;
    *v18 = 0;
    v16 = v18 + 1;
    memcpy(0, v17, v22);
    *(this + 6) = 0;
    *(this + 7) = v18 + 1;
    *(this + 8) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = 0;
    v16 = v15 + 1;
  }

  *(this + 7) = v16;
}

void md::GraphTraversalPath::visit(md::GraphTraversalPath *this, const MuninRoadEdge *a2)
{
  v4 = *(this + 4);
  v3 = *(this + 5);
  if (v4 >= v3)
  {
    v6 = *(this + 3);
    v7 = (v4 - v6) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - v6;
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

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v10);
    }

    v11 = (8 * v7);
    *v11 = a2;
    v5 = 8 * v7 + 8;
    v12 = *(this + 3);
    v13 = *(this + 4) - v12;
    v14 = v11 - v13;
    memcpy(v11 - v13, v12, v13);
    v15 = *(this + 3);
    *(this + 3) = v14;
    *(this + 4) = v5;
    *(this + 5) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v4 = a2;
    v5 = (v4 + 1);
  }

  *(this + 4) = v5;
  v17 = *(this + 7);
  v16 = *(this + 8);
  if (v17 >= v16)
  {
    v19 = *(this + 6);
    v20 = (v17 - v19);
    v21 = v17 - v19 + 1;
    if (v21 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v22 = v16 - v19;
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      operator new();
    }

    v24 = v17 - v19;
    *v20 = 1;
    v18 = v20 + 1;
    memcpy(0, v19, v24);
    *(this + 6) = 0;
    *(this + 7) = v20 + 1;
    *(this + 8) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v17 = 1;
    v18 = v17 + 1;
  }

  *(this + 7) = v18;
}

uint64_t md::GraphTraversalPath::depth(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return (*(a1 + 32) - *(a1 + 24)) >> 3;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    v6 = *v2++;
    v5 = v5 + std::function<BOOL ()(md::MuninJunction const*)>::operator()(*(a2 + 24), v6);
  }

  while (v2 != v3);
  return v5;
}

uint64_t *std::function<BOOL ()(md::MuninJunction const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, v4, v5);
}

uint64_t *std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, void ***a2, __int128 **a3)
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
      v5 = v3;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v3 + 4) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t md::FlyoverDsmLayerDataSource::createResourceKey(uint64_t a1, const geo::QuadTile *a2, char a3, int a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  md::FlyoverMetaData::tileCacheLookup(&v18, a2, a5, 0, 0);
  if (v24)
  {
    v13 = v23;
  }

  else
  {
    v13 = 0;
  }

  v18 = vrev64_s32(*(a5 + 4));
  v14 = *a5;
  v19 = a5[1];
  v20 = v14;
  if ((v13 & 0x100000000) == 0 || a4 == 50)
  {
    LODWORD(v13) = 0;
  }

  v21 = 0;
  v22 = v13;
  if ((a7 & 0x100000000) != 0)
  {
    v16 = a7;
  }

  else
  {
    v16 = 2147483646;
  }

  return gdc::ResourceKey::ResourceKey(a1, a3, a4, &v18, 6, a6, v16);
}

void md::FlyoverDsmLayerDataSource::createLayerData(void x0_0, const gdc::LayerDataRequestKey **a1, uint64_t *a2)
{
  memset(__p, 0, sizeof(__p));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a2, a2[1], __p);
  gdc::LayerDataSource::getResourceFromMap(&v8, 50, *a2, a2[1]);
  v4 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  gdc::LayerDataSource::getResourceFromMap(&v8, 20, *a2, a2[1]);
  v5 = v8;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v5 + 1));
  }

  if (v5 && (v6 = *(v5 + 144)) != 0 && *v6 != v6[1])
  {
    if (*(&v5 + 1))
    {
      atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v4)
    {
LABEL_14:
      operator new();
    }
  }

  else if (!v4)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  goto LABEL_14;
}

void sub_1B2DD0AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (!v14)
    {
LABEL_3:
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  if (!v13)
  {
LABEL_4:
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  if (!v12)
  {
LABEL_6:
    if (__p)
    {
      operator delete(__p);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_5:
  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  goto LABEL_6;
}

void std::__shared_ptr_emplace<md::FlyoverDsmTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverDsmLayerDataSource::constructRequests(uint64_t a1, char **a2, char **a3)
{
  v6 = (*(**(a1 + 24) + 24))(*(a1 + 24), 20);
  v8 = v7;
  v9 = (*(**(a1 + 24) + 24))(*(a1 + 24), 50);
  if (a2 != a3)
  {
    v11 = v9;
    v12 = v10;
    v13 = HIDWORD(v9);
    v14 = v8 ^ 1;
    while (1)
    {
      *&v15 = gdc::Tiled::tileFromLayerDataKey(&v45, *(*a2 + 2));
      (*(**(a1 + 24) + 16))(v40, v15);
      if (v44 != 1)
      {
        break;
      }

      md::FlyoverMetaData::adjustedTile(v38, *(a1 + 760), v40, 1);
      v16 = v39;
      if (v38[32] == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v39;
      }

      if (((v17 | v14) & 1) == 0 && v6 <= v40[1] && HIDWORD(v6) >= v40[1])
      {
        md::FlyoverMetaData::tileCacheLookup(v33, *(a1 + 760), v40, 0, 0);
        if (v37)
        {
          v24 = v36;
        }

        else
        {
          v24 = 0;
        }

        if ((v24 & 0x100000000) != 0)
        {
          if (v24)
          {
            md::FlyoverDsmLayerDataSource::createResourceKey(v33, *(a1 + 760), **a2, 20, v40, *(*a2 + 14), *(*a2 + 12) & 0xFFFFFFFFFFLL);
            gdc::LayerDataRequest::request(*a2, v33, v16 ^ 1);
            if (v34 != v35)
            {
              free(v34);
            }
          }
        }
      }

      if ((v44 & 1) == 0)
      {
        v25 = std::__throw_bad_optional_access[abi:nn200100]();
        md::FlyoverDsmLayerDataSource::didProcessNewLayerData(v25, v26);
        return;
      }

      v30 = v41;
      v29 = *v40;
      v31 = v42;
      v32 = v43;
      (*(**(a1 + 24) + 16))(v27);
      if ((v28 & v12 & 1) != 0 && v11 <= BYTE1(v27[0]) && v13 >= BYTE1(v27[0]))
      {
        v18 = **a2;
        v19 = *(*a2 + 14);
        v20 = *(*a2 + 12);
        v21 = *(a1 + 760);
        v22 = v27;
LABEL_20:
        md::FlyoverDsmLayerDataSource::createResourceKey(v33, v21, v18, 50, v22, v19, v20 & 0xFFFFFFFFFFLL);
        gdc::LayerDataRequest::request(*a2, v33, 0);
        if (v34 != v35)
        {
          free(v34);
        }
      }

LABEL_22:
      a2 += 2;
      if (a2 == a3)
      {
        return;
      }
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v11 > v46 || v13 < v46)
    {
      goto LABEL_22;
    }

    v18 = **a2;
    v19 = *(*a2 + 14);
    v20 = *(*a2 + 12);
    v21 = *(a1 + 760);
    v22 = &v45;
    goto LABEL_20;
  }
}

void md::FlyoverDsmLayerDataSource::didProcessNewLayerData(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 776);
  if (v2)
  {
    v3 = *(v2 + 128);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = *a2;
        v6 = a2[1];
        if (*a2 != v6)
        {
          do
          {
            gdc::Tiled::tileFromLayerDataKey(&v12, *(v5 + 24));
            v7 = 1.0 / (1 << v13);
            v8 = v7 * v15;
            v9 = v7 * ((1 << v13) + ~v14);
            v10 = v8 + v7;
            v11 = v9 + v7;
            md::MercatorTerrainHeightCache::invalidateRect(v4, &v8);
            v5 += 120;
          }

          while (v5 != v6);
        }
      }
    }
  }
}

void md::FlyoverDsmLayerDataSource::~FlyoverDsmLayerDataSource(md::FlyoverDsmLayerDataSource *this)
{
  *this = &unk_1F2A00D48;
  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00D48;
  v2 = *(this + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

uint64_t md::mun::MuninLayer::render(md::mun::MuninLayer *this, const md::LayoutContext *a2)
{
  v210 = *MEMORY[0x1E69E9840];
  result = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
  if (!result)
  {
    return result;
  }

  v3 = result;
  md::RenderItemPool::reset((*(this + 8) + 192));
  v4 = *(*(this + 8) + 232);
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  if (v5 != v6)
  {
    do
    {
      v204.n128_u64[0] = *v5;
      std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v4, &v204);
      ++v5;
    }

    while (v5 != v6);
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
  }

  if (v5 != v6)
  {
    *(v4 + 5) = v5;
  }

  v7 = *(*(this + 8) + 256);
  v8 = *(v7 + 4);
  v9 = *(v7 + 5);
  if (v8 != v9)
  {
    do
    {
      v204.n128_u64[0] = *v8;
      std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v7, &v204);
      ++v8;
    }

    while (v8 != v9);
    v8 = *(v7 + 4);
    v9 = *(v7 + 5);
  }

  if (v8 != v9)
  {
    *(v7 + 5) = v8;
  }

  v10 = *(*(this + 8) + 168);
  ggl::BufferMemory::BufferMemory(v202);
  ggl::ResourceAccessor::accessConstantData(&v204, 0, v10, 1);
  ggl::BufferMemory::operator=(v202, &v204);
  ggl::BufferMemory::~BufferMemory(&v204);
  v11 = *a2;
  [v11 sizeInPixels];
  *&v12 = v12;
  *v203 = LODWORD(v12);

  v13 = *a2;
  [v13 sizeInPixels];
  v15 = v14;
  *(v203 + 4) = v15;

  *(v203 + 8) = 0x4228000040800000;
  ggl::DataAccess<ggl::Clear::ClearConstants>::DataAccess(&v204, *(*(this + 8) + 112), 0);
  *v205 = xmmword_1B33B0F60;
  ggl::BufferMemory::~BufferMemory(&v204);
  ggl::BufferMemory::~BufferMemory(v202);
  v17 = *(v3 + 192);
  v16 = *(v3 + 200);
  v18 = v16 - v17;
  if (v16 == v17)
  {
    result = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
    if (result)
    {
      v70 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), 0);
      if (v70)
      {
        v71 = **(v70 + 16);
      }

      else
      {
        v71 = 0;
      }

      ggl::CommandBuffer::clearRenderItems(v71);
      ggl::CommandBuffer::clearBufferLoadItems(v71);
      result = ggl::CommandBuffer::clearTextureLoadItems(v71);
      *(v71 + 32) = *(*(this + 8) + 104);
    }

    return result;
  }

  v19 = *(a2 + 1);
  result = gdc::Context::context<md::MuninSceneContext>(v19);
  v188 = result;
  if (v18 != 8)
  {
    v198 = *(*(this + 5) + 24);
    v72 = md::FrameGraph::renderQueueForPass(*(v198 + 8), 0);
    if (v72)
    {
      v73 = **(v72 + 16);
    }

    else
    {
      v73 = 0;
    }

    v74 = *(this + 8);
    *(v73 + 4) = *(v74 + 104);
    v75 = md::LayoutContext::get<md::CameraContext>(v19);
    v76 = *(v74 + 264);
    ggl::BufferMemory::BufferMemory(v202);
    ggl::ResourceAccessor::accessConstantData(&v204, 0, v76, 1);
    ggl::BufferMemory::operator=(v202, &v204);
    ggl::BufferMemory::~BufferMemory(&v204);
    v78 = *(v188 + 192);
    v77 = *(v188 + 200);
    v79 = v77 - v78;
    if (v77 == v78)
    {
      v89 = v203;
      *v203 = 1065353216;
      *(v89 + 8) = 0;
      *(v89 + 12) = 0x100000001;
      v90 = 1;
    }

    else
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v79 >> 3;
      while (v84 != v80)
      {
        v85 = *(v78 + 8 * v80);
        if (v85 == *(v188 + 80))
        {
          v83 = v80;
        }

        if (v85 == *(v188 + 96))
        {
          v81 = v80;
        }

        if (v85 == *(v188 + 112))
        {
          v82 = v80;
        }

        ++v80;
      }

      v86 = *(*(v198 + 40) + 8 * v83);
      if (v86)
      {
        v87 = *(v86 + 32);
        v88 = *(*(v198 + 8) + 96);
        if (v87 >= (*(*(v198 + 8) + 104) - v88) >> 3)
        {
          v86 = 0;
        }

        else
        {
          v86 = *(*(v88 + 8 * v87) + 16);
        }
      }

      **(*(*(this + 8) + 296) + 168) = v86;
      v91 = *(*(v198 + 88) + 24 * v83 + 16);
      if (v91)
      {
        v92 = *(v91 + 32);
        v93 = *(*(v198 + 8) + 96);
        if (v92 >= (*(*(v198 + 8) + 104) - v93) >> 3)
        {
          v91 = 0;
        }

        else
        {
          v91 = *(*(v93 + 8 * v92) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 8) = v91;
      v94 = *(*(v198 + 40) + 8 * v82);
      if (v94)
      {
        v95 = *(v94 + 32);
        v96 = *(*(v198 + 8) + 96);
        if (v95 >= (*(*(v198 + 8) + 104) - v96) >> 3)
        {
          v94 = 0;
        }

        else
        {
          v94 = *(*(v96 + 8 * v95) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 16) = v94;
      v97 = *(*(v198 + 88) + 24 * v82 + 16);
      if (v97)
      {
        v98 = *(v97 + 32);
        v99 = *(*(v198 + 8) + 96);
        if (v98 >= (*(*(v198 + 8) + 104) - v99) >> 3)
        {
          v97 = 0;
        }

        else
        {
          v97 = *(*(v99 + 8 * v98) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 24) = v97;
      v100 = *(*(v198 + 40) + 8 * v81);
      if (v100)
      {
        v101 = *(v100 + 32);
        v102 = *(*(v198 + 8) + 96);
        if (v101 >= (*(*(v198 + 8) + 104) - v102) >> 3)
        {
          v100 = 0;
        }

        else
        {
          v100 = *(*(v102 + 8 * v101) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 32) = v100;
      v103 = *(*(v198 + 88) + 24 * v81 + 16);
      if (v103)
      {
        v104 = *(v103 + 32);
        v105 = *(*(v198 + 8) + 96);
        if (v104 >= (*(*(v198 + 8) + 104) - v105) >> 3)
        {
          v103 = 0;
        }

        else
        {
          v103 = *(*(v105 + 8 * v104) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 40) = v103;
      v106 = *(v188 + 120);
      if (v106 < 0.5)
      {
        v81 = v83;
      }

      v107 = *(*(v198 + 64) + 8 * v81);
      if (v107)
      {
        v108 = *(v107 + 32);
        v109 = *(*(v198 + 8) + 96);
        if (v108 >= (*(*(v198 + 8) + 104) - v109) >> 3)
        {
          v107 = 0;
        }

        else
        {
          v107 = *(*(v109 + 8 * v108) + 16);
        }
      }

      *(*(*(*(this + 8) + 296) + 168) + 48) = v107;
      v89 = v203;
      *v203 = v106;
      *(v89 + 4) = *(v188 + 124);
      v110 = *(v188 + 72);
      v111 = *(v188 + 104);
      v112 = v111 - v110;
      if (v110 > v111)
      {
        v112 = v110 - v111;
      }

      *(v89 + 12) = v112 < 0xEA61;
      v113 = *(v188 + 88);
      v114 = v113 - v110;
      v115 = v110 > v113;
      v116 = v110 - v113;
      if (!v115)
      {
        v116 = v114;
      }

      *(v89 + 16) = v116 < 0xEA61;
      v117 = v113 - v111;
      v115 = v111 > v113;
      v118 = v111 - v113;
      if (v115)
      {
        v117 = v118;
      }

      v90 = v117 < 0xEA61;
    }

    *(v89 + 20) = v90;
    ggl::BufferMemory::~BufferMemory(v202);
    v119 = md::FrameGraph::renderQueueForPass(*(v198 + 8), 3);
    if (v119)
    {
      v119 = **(v119 + 2);
    }

    result = ggl::CommandBuffer::pushRenderItem(v119, *(*(this + 8) + 304));
    v120 = *(v198 + 112);
    if (v120)
    {
      v121 = *(v120 + 32);
      v122 = *(*(v198 + 8) + 96);
      v123 = this;
      if (v121 >= (*(*(v198 + 8) + 104) - v122) >> 3)
      {
        v120 = 0;
      }

      else
      {
        v120 = *(*(v122 + 8 * v121) + 16);
      }
    }

    else
    {
      v123 = this;
    }

    **(*(*(this + 8) + 328) + 168) = v120;
    v124 = *(v198 + 120);
    if (v124)
    {
      v125 = *(v124 + 32);
      v126 = *(*(v198 + 8) + 96);
      if (v125 >= (*(*(v198 + 8) + 104) - v126) >> 3)
      {
        v124 = 0;
      }

      else
      {
        v124 = *(*(v126 + 8 * v125) + 16);
      }
    }

    *(*(*(*(v123 + 8) + 328) + 168) + 8) = v124;
    if (*(v188 + 200) != *(v188 + 192))
    {
      result = ggl::CommandBuffer::pushRenderItem(v73, *(*(v123 + 8) + 336));
    }

    v190 = 0;
    v127 = 0;
    v200 = v75 + 808;
    v128 = v198;
    while (1)
    {
      if (v127 >= *(v128 + 32))
      {
        return result;
      }

      v192 = v127;
      v194 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v188 + 152), *(*(v188 + 192) + 8 * v127));
      v129 = *(this + 9);
      if (v127 >= (*(this + 10) - v129) >> 3)
      {
        v130 = *md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
        v131 = *(*([v130 device] + 24) + 56);
        if (v131)
        {
          atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      v132 = *(v129 + 8 * v127);
      *(v132 + 8) = *v132;
      result = md::FrameGraph::renderQueueForPass(*(v128 + 8), (16 * v127) | 1u);
      if (result)
      {
        v133 = **(result + 16);
      }

      else
      {
        v133 = 0;
      }

      *(v133 + 4) = *(*(this + 8) + 104);
      v135 = *(v194 + 3);
      v134 = *(v194 + 4);
      if (v134 != v135)
      {
        v136 = 0;
        do
        {
          v137 = v135 + 16 * v136;
          v138 = *(*v137 + 176);
          if (*(*v137 + 184) != v138)
          {
            v196 = v136;
            v139 = 0;
            do
            {
              v140 = *(*(this + 8) + 232);
              v141 = v140[1];
              if (v141 == *v140)
              {
                v143 = v140[11];
                if (!v143)
                {
                  goto LABEL_187;
                }

                v142 = (*(*v143 + 48))(v143);
                v202[0] = v142;
              }

              else
              {
                v142 = *(v141 - 8);
                v202[0] = v142;
                v140[1] = v141 - 8;
              }

              std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v140 + 4), v202);
              v204.n128_u64[0] = v142;
              v144 = v140[15];
              if (!v144)
              {
LABEL_187:
                std::__throw_bad_function_call[abi:nn200100]();
LABEL_188:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              (*(*v144 + 48))(v144, &v204);
              v145 = v138 + 88 * v139;
              **(v142 + 168) = *(v145 + 16);
              v146 = *(this + 8);
              v147 = *(v146 + 184);
              v148 = (*(*v137 + 176) + 88 * v139);
              v149 = v148->n128_u64[0];
              v204 = v148[2];
              md::RenderItemPool::construct(v146 + 192, v147, v149, &v204);
              v151 = v150;
              *(v150 + 24) = *(*(this + 8) + 136);
              *(v150 + 32) = v142;
              geo::RigidTransform<double,float>::toMatrix(v202, v145 + 48);
              v152 = 0;
              v153 = v200;
              do
              {
                v154 = 0;
                v155 = v202;
                do
                {
                  v156 = 0;
                  v157 = 0.0;
                  v158 = v153;
                  do
                  {
                    v159 = *v158;
                    v158 += 4;
                    v157 = v157 + *&v155[v156++] * v159;
                  }

                  while (v156 != 4);
                  v204.n128_f64[4 * v154++ + v152] = v157;
                  v155 += 4;
                }

                while (v154 != 4);
                ++v152;
                ++v153;
              }

              while (v152 != 4);
              v160 = 0;
              v161 = &v204;
              do
              {
                v163 = *v161;
                v162 = v161[1];
                v161 += 2;
                *(&v206 + v160) = vcvt_hight_f32_f64(vcvt_f32_f64(v163), v162);
                v160 += 16;
              }

              while (v160 != 64);
              ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v204, **(v142 + 136));
              v164 = v205;
              v165 = v207;
              *v205 = v206;
              v164[1] = v165;
              v166 = v209;
              v164[2] = v208;
              v164[3] = v166;
              ggl::BufferMemory::~BufferMemory(&v204);
              v168 = *(v132 + 8);
              v167 = *(v132 + 16);
              if (v168 >= v167)
              {
                v170 = (v168 - *v132) >> 4;
                v171 = v170 + 1;
                if ((v170 + 1) >> 60)
                {
                  goto LABEL_188;
                }

                v172 = v167 - *v132;
                if (v172 >> 3 > v171)
                {
                  v171 = v172 >> 3;
                }

                if (v172 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v173 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v173 = v171;
                }

                if (v173)
                {
                  if (!(v173 >> 60))
                  {
                    operator new();
                  }

LABEL_189:
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v174 = (16 * v170);
                *v174 = v142;
                v174[1] = v151;
                v169 = 16 * v170 + 16;
                v175 = *(v132 + 8) - *v132;
                v176 = 16 * v170 - v175;
                memcpy(v174 - v175, *v132, v175);
                v177 = *v132;
                *v132 = v176;
                *(v132 + 8) = v169;
                *(v132 + 16) = 0;
                if (v177)
                {
                  operator delete(v177);
                }
              }

              else
              {
                *v168 = v142;
                v168[1] = v151;
                v169 = (v168 + 2);
              }

              *(v132 + 8) = v169;
              result = ggl::CommandBuffer::pushRenderItem(v133, *(v169 - 8));
              ++v139;
              v138 = *(*v137 + 176);
            }

            while (v139 < 0x2E8BA2E8BA2E8BA3 * ((*(*v137 + 184) - v138) >> 3));
            v136 = v196;
            v135 = *(v194 + 3);
            v134 = *(v194 + 4);
          }

          ++v136;
        }

        while (v136 < (v134 - v135) >> 4);
      }

      v128 = v198;
      v178 = *(*(v198 + 40) + 8 * v192);
      if (v178)
      {
        v179 = *(v178 + 32);
        v180 = *(*(v198 + 8) + 96);
        if (v179 >= (*(*(v198 + 8) + 104) - v180) >> 3)
        {
          v178 = 0;
        }

        else
        {
          v178 = *(*(v180 + 8 * v179) + 16);
        }
      }

      v181 = v190;
      for (i = 3; i != 6; ++i)
      {
        **(*(*(v132 + 8 * i) + 8) + 168) = v178;
        v183 = md::FrameGraph::renderQueueForPass(*(v128 + 8), (16 * v181) & 0xFC | 2);
        if (v183)
        {
          v183 = **(v183 + 2);
        }

        result = ggl::CommandBuffer::pushRenderItem(v183, **(v132 + 8 * i));
        v128 = v198;
        v178 = *(*(v198 + 88) + 8 * v181);
        if (v178)
        {
          v184 = *(v178 + 32);
          v185 = *(*(v198 + 8) + 96);
          if (v184 >= (*(*(v198 + 8) + 104) - v185) >> 3)
          {
            v178 = 0;
          }

          else
          {
            v178 = *(*(v185 + 8 * v184) + 16);
          }
        }

        ++v181;
      }

      v127 = v192 + 1;
      v190 += 3;
    }
  }

  if (!result)
  {
    return result;
  }

  v20 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), 0);
  v21 = v20 ? **(v20 + 16) : 0;
  ggl::CommandBuffer::clearRenderItems(v21);
  ggl::CommandBuffer::clearBufferLoadItems(v21);
  result = ggl::CommandBuffer::clearTextureLoadItems(v21);
  v193 = v21;
  *(v21 + 32) = *(*(this + 8) + 104);
  v22 = *(v188 + 192);
  if (*(v188 + 200) == v22)
  {
    return result;
  }

  v23 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v188 + 152), *v22);
  v25 = *(result + 24);
  v24 = *(result + 32);
  v187 = result;
  if (v24 == v25)
  {
    return result;
  }

  v26 = 0;
  v191 = v23 + 808;
  do
  {
    v197 = v25 + 16 * v26;
    v27 = *(*v197 + 176);
    if (*(*v197 + 184) == v27)
    {
      goto LABEL_61;
    }

    v28 = 0;
    if (v26 <= 6)
    {
      v29 = 6;
    }

    else
    {
      v29 = v26;
    }

    v189 = v29;
    v199 = v26;
    do
    {
      v30 = *(*(this + 8) + 256);
      v31 = v30[1];
      if (v31 == *v30)
      {
        v33 = v30[11];
        if (!v33)
        {
          goto LABEL_187;
        }

        v32 = (*(*v33 + 48))(v33);
        v202[0] = v32;
      }

      else
      {
        v32 = *(v31 - 8);
        v202[0] = v32;
        v30[1] = v31 - 8;
      }

      std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v30 + 4), v202);
      v204.n128_u64[0] = v32;
      v34 = v30[15];
      if (!v34)
      {
        goto LABEL_187;
      }

      (*(*v34 + 48))(v34, &v204);
      v35 = v27 + 88 * v28;
      **(v32 + 168) = *(v35 + 16);
      v36 = *(this + 8);
      v37 = *(v36 + 184);
      v38 = (*(*v197 + 176) + 88 * v28);
      v39 = v38->n128_u64[0];
      v204 = v38[2];
      v40 = md::RenderItemPool::construct(v36 + 192, v37, v39, &v204);
      v195 = v41;
      v42 = *(this + 8);
      v44 = *(v42 + 144);
      v43 = *(v42 + 152);
      v45 = (v43 - v44) >> 3;
      v46 = v199;
      if (v45 <= v199)
      {
        v47 = v189 - v45;
        if (v189 <= v45)
        {
          if (v189 < v45)
          {
            v52 = (v44 + 8 * v189);
            while (v43 != v52)
            {
              v54 = *--v43;
              v53 = v54;
              *v43 = 0;
              if (v54)
              {
                (*(*v53 + 8))(v53, v40);
              }
            }

            *(v42 + 152) = v52;
          }
        }

        else
        {
          v48 = *(v42 + 160);
          if (v47 > (v48 - v43) >> 3)
          {
            if (v199 >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v49 = v48 - v44;
            v50 = v49 >> 2;
            if (v49 >> 2 <= v189)
            {
              v50 = v189;
            }

            if (v49 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v50;
            }

            if (!(v51 >> 61))
            {
              operator new();
            }

            goto LABEL_189;
          }

          bzero(*(v42 + 152), 8 * v47);
          *(v42 + 152) = &v43[v47];
        }

        v44 = *(v42 + 144);
        v46 = v199;
      }

      if (!*(v44 + 8 * v46))
      {
        operator new();
      }

      *(v195 + 3) = *(*(v42 + 144) + 8 * v46);
      *(v195 + 4) = v32;
      geo::RigidTransform<double,float>::toMatrix(v202, v35 + 48);
      v55 = 0;
      v56 = v191;
      do
      {
        v57 = 0;
        v58 = v202;
        do
        {
          v59 = 0;
          v60 = 0.0;
          v61 = v56;
          do
          {
            v62 = *v61;
            v61 += 4;
            v60 = v60 + *&v58[v59++] * v62;
          }

          while (v59 != 4);
          v204.n128_f64[4 * v57++ + v55] = v60;
          v58 += 4;
        }

        while (v57 != 4);
        ++v55;
        ++v56;
      }

      while (v55 != 4);
      v63 = 0;
      v64 = &v204;
      do
      {
        v66 = *v64;
        v65 = v64[1];
        v64 += 2;
        *(&v206 + v63) = vcvt_hight_f32_f64(vcvt_f32_f64(v66), v65);
        v63 += 16;
      }

      while (v63 != 64);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v204, **(v32 + 136));
      v67 = v205;
      v68 = v207;
      *v205 = v206;
      v67[1] = v68;
      v69 = v209;
      v67[2] = v208;
      v67[3] = v69;
      ggl::BufferMemory::~BufferMemory(&v204);
      result = ggl::CommandBuffer::pushRenderItem(v193, v195);
      ++v28;
      v26 = v199;
      v27 = *(*v197 + 176);
    }

    while (v28 < 0x2E8BA2E8BA2E8BA3 * ((*(*v197 + 184) - v27) >> 3));
    v25 = *(v187 + 24);
    v24 = *(v187 + 32);
LABEL_61:
    ++v26;
  }

  while (v26 < (v24 - v25) >> 4);
  return result;
}

void sub_1B2DD2DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  ggl::BufferMemory::~BufferMemory(va);
  _Unwind_Resume(a1);
}

void *gdc::Context::context<md::MuninSceneContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xC83717EF586624DCLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xC83717EF586624DCLL)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double geo::RigidTransform<double,float>::toMatrix(uint64_t a1, uint64_t a2)
{
  gm::Quaternion<float>::toMatrix(v11, (a2 + 24));
  for (i = 0; i != 9; ++i)
  {
    v12[i] = v11[i];
  }

  v5 = 0;
  v6 = v12;
  v7 = a1;
  do
  {
    v8 = 0;
    v9 = v7;
    do
    {
      *v9 = *&v6[v8];
      v9 += 4;
      v8 += 3;
    }

    while (v8 != 9);
    ++v5;
    v7 += 8;
    ++v6;
  }

  while (v5 != 3);
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  result = *(a2 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::StretchAlphaPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::VSView::StretchAlphaPipelineSetup *,geo::allocator_adapter<ggl::VSView::StretchAlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t **std::unique_ptr<ggl::Drawable>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[1];
    v2[1] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::Blur::YPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Blur::XPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00ED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Blur::Downsample4XPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t *std::allocator_traits<std::allocator<std::unique_ptr<md::mun::PassData>>>::destroy[abi:nn200100]<std::unique_ptr<md::mun::PassData>,void,0>(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    for (i = 40; i != 16; i -= 8)
    {
      std::unique_ptr<ggl::Drawable>::reset[abi:nn200100]((v1 + i), 0);
    }

    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VSView::PipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void md::mun::MuninLayer::prepare(md::mun::MuninLayer *this, md::LayoutContext *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  md::LayoutContext::frameState(a2);
  if ((*(v4 + 117) & 1) == 0)
  {
    v5 = *(*(this + 5) + 24);
    v6 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
    v7 = v6[3];
    if (*(v7 + 32))
    {
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(v7 + 24));
      *(v7 + 24) = 0;
      v8 = *(v7 + 16);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*(v7 + 8) + 8 * i) = 0;
        }
      }

      *(v7 + 32) = 0;
    }

    for (j = v6[21]; j; j = *j)
    {
      v11 = j[3];
      v12 = j[4];
      while (v11 != v12)
      {
        v13 = *v11;
        v11 += 2;
        FillRect = grl::IconMetricsRenderResult::getFillRect(v13);
        std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>((v7 + 8), FillRect, FillRect);
      }
    }

    v15 = *(this + 8);
    v16 = *a2;
    v17 = [v16 format];
    v18 = *(v5 + 192);
    v40 = *(v5 + 176);
    v41 = v18;
    v19 = *(*(v15 + 64) + 24);
    v20 = v19[1];
    v39 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *(*(v15 + 64) + 24);
    }

    v21 = v19[6];
    v22 = v19[7];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *(v15 + 16);
    if (v23 != *(v17 + 16) || *(v15 + 24) != *(v17 + 24) || *(v15 + 28) != *(v17 + 28))
    {
      goto LABEL_24;
    }

    if (v23)
    {
      v24 = v15;
      v25 = v17;
      while (1)
      {
        v27 = *v24++;
        v26 = v27;
        v28 = *v25++;
        if (v26 != v28)
        {
          break;
        }

        if (!--v23)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v29 = *(v17 + 16);
      *v15 = *v17;
      *(v15 + 16) = v29;
      v30 = *(*(v21 + 80) + 16);
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v45 = 0;
      v46 = 0;
      v47 = 0;
      operator new();
    }

LABEL_27:
    v31 = *(v15 + 48);
    if (*(v15 + 48) != v41)
    {
LABEL_33:
      v37 = v41;
      *(v15 + 32) = v40;
      *(v15 + 48) = v37;
      v38 = *(*(v21 + 80) + 40);
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      operator new();
    }

    if (v31)
    {
      v32 = &v40;
      v33 = (v15 + 32);
      do
      {
        v35 = *v33++;
        v34 = v35;
        v36 = *v32++;
        if (v34 != v36)
        {
          goto LABEL_33;
        }
      }

      while (--v31);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }
  }
}

void sub_1B2DD4C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, std::__shared_weak_count *a10)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void md::mun::MuninLayer::~MuninLayer(id *this)
{
  md::mun::MuninLayer::~MuninLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00E28;
  v3 = this + 9;
  std::vector<std::unique_ptr<md::mun::PassData>>::__destroy_vector::operator()[abi:nn200100](&v3);
  std::unique_ptr<md::mun::MuninRenderResources>::reset[abi:nn200100](this + 8, 0);

  *this = &unk_1F2A16858;
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

void std::vector<std::unique_ptr<md::mun::PassData>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::allocator_traits<std::allocator<std::unique_ptr<md::mun::PassData>>>::destroy[abi:nn200100]<std::unique_ptr<md::mun::PassData>,void,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::mun::MuninRenderResources>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 336);
    *(v2 + 336) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 328);
    *(v2 + 328) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 320);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v2 + 304);
    *(v2 + 304) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v2 + 296);
    *(v2 + 296) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v2 + 288);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(v2 + 272);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v10 = *(v2 + 256);
    *(v2 + 256) = 0;
    if (v10)
    {
      v11 = ggl::FragmentedPool<ggl::VSView::PipelineSetup>::~FragmentedPool(v10);
      MEMORY[0x1B8C62190](v11, 0x10A0C405CD4001ALL);
    }

    v12 = *(v2 + 248);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    v13 = *(v2 + 232);
    *(v2 + 232) = 0;
    if (v13)
    {
      v14 = ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>::~FragmentedPool(v13);
      MEMORY[0x1B8C62190](v14, 0x10A0C405CD4001ALL);
    }

    v15 = *(v2 + 224);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    md::FrameAllocator<ggl::RenderItem>::reset((v2 + 192));
    free(*(v2 + 192));
    v16 = *(v2 + 184);
    *(v2 + 184) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(v2 + 176);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v25 = (v2 + 144);
    std::vector<std::unique_ptr<ggl::RenderState>>::__destroy_vector::operator()[abi:nn200100](&v25);
    v18 = *(v2 + 136);
    *(v2 + 136) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(v2 + 128);
    *(v2 + 128) = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(v2 + 120);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }

    v21 = *(v2 + 104);
    *(v2 + 104) = 0;
    if (v21)
    {
      MEMORY[0x1B8C62190](v21, 0x1000C4049ECCB0CLL);
    }

    v22 = *(v2 + 96);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    v23 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

md::TileGroupNotificationManager *std::unique_ptr<md::TileGroupNotificationManager>::reset[abi:nn200100](md::TileGroupNotificationManager **a1, md::TileGroupNotificationManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::TileGroupNotificationManager::~TileGroupNotificationManager(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::destroy(result[1]);
    v2 = result[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v4 = mdm::zone_mallocator::instance(v3);
    v5 = pthread_rwlock_rdlock((v4 + 32));
    if (v5)
    {
      geo::read_write_lock::logFailure(v5, "read lock", v6);
    }

    atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v4, result);

    geo::read_write_lock::unlock((v4 + 32));
  }
}

void sub_1B2DD5430(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKInternalIconManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B2DD5668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  v24 = *(v22 - 72);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD59A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  _Unwind_Resume(a1);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::string>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,grl::ImageProvider>,void *>>(uint64_t a1, void *a2)
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

void sub_1B2DD5E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD6154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD6590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1B2DD66FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD6848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DD687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x1B2DD686CLL);
  }

  JUMPOUT(0x1B2DD6868);
}

void sub_1B2DD6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B2DD71A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, std::__shared_weak_count *a17, ...)
{
  va_start(va, a17);
  if (a15 == 1)
  {
    (*(*a11 + 56))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v19 - 144));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);

  _Unwind_Resume(a1);
}

void sub_1B2DD7628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, pthread_rwlock_t *a22, uint64_t a23)
{
  geo::read_write_lock::unlock((v26 + 32));
  geo::write_lock_guard::~write_lock_guard(&a22);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    v24 = a23;
  }

  _Unwind_Resume(a1);
}

uint64_t std::default_delete<gss::ClientStyleState<gss::PropertyID>>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((result + 240));
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v1 + 216));
    geo::read_write_lock::~read_write_lock((v1 + 16));
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<gss::ClientStyleState<gss::PropertyID> *,std::shared_ptr<gss::ClientStyleState<gss::PropertyID>>::__shared_ptr_default_delete<gss::ClientStyleState<gss::PropertyID>,gss::ClientStyleState<gss::PropertyID>>,std::allocator<gss::ClientStyleState<gss::PropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::weak_ptr<gss::FeatureQueryImpl<gss::PropertyID>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_pointer<gss::StylesheetManager<gss::PropertyID> *,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::__shared_ptr_default_delete<gss::StylesheetManager<gss::PropertyID>,gss::StylesheetManager<gss::PropertyID>>,std::allocator<gss::StylesheetManager<gss::PropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned int,unsigned char>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x1000040CE7E837CuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(gss::zone_mallocator *result)
{
  if ((*(result + 16) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      v3 = *(result + 2);
      if (v3)
      {
        v4 = 24 * v3;
        v5 = v2 + 8;
        do
        {
          geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v5);
          v5 += 24;
          v4 -= 24;
        }

        while (v4);
        v2 = *result;
      }

      v6 = gss::zone_mallocator::instance(result);
      v7 = pthread_rwlock_rdlock((v6 + 32));
      if (v7)
      {
        geo::read_write_lock::logFailure(v7, "read lock", v8);
      }

      if (v2)
      {
        atomic_fetch_add((v6 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v6, v2);
      geo::read_write_lock::unlock((v6 + 32));
    }
  }

  *result = 0;
  *(result + 1) = 0;
  *(result + 16) = 0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 4 * a2, 0x100004052888210uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(char **result)
{
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 4))
      {
        v3 = 24 * *(result + 4);
        v4 = v2 + 8;
        do
        {
          geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage(v4);
          v4 += 24;
          v3 -= 24;
        }

        while (v3);
        v2 = *result;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(result + 5) = 0;
  *result = 0;
}

void geo::intern_vector<gss::MatchingGraphEndChain,unsigned short,geo::allocator_adapter<gss::MatchingGraphEndChain,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 16 * *(result + 8);
        do
        {
          geo::intern_vector<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,unsigned short,geo::allocator_adapter<std::pair<unsigned int,geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>>,gss::zone_mallocator>>::deallocateStorage(v2);
          v2 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *result;
      }

      v4 = gss::zone_mallocator::instance(result);
      v5 = pthread_rwlock_rdlock((v4 + 32));
      if (v5)
      {
        geo::read_write_lock::logFailure(v5, "read lock", v6);
      }

      if (v2)
      {
        atomic_fetch_add((v4 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v4, v2);
      geo::read_write_lock::unlock((v4 + 32));
    }
  }

  *(result + 5) = 0;
  *result = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

uint64_t gss::CartoStyle<gss::PropertyID>::~CartoStyle(uint64_t a1)
{
  *a1 = &unk_1F2A29E40;
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62170](v2, 0x1000C8077774924);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 56);
  geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(a1 + 40);
  geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage((a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void geo::intern_vector<gss::ZoomStyle<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  v1 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 24 * *(result + 8);
        v4 = v2 + 2;
        do
        {
          result = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](result);
          }

          v4 += 3;
          v3 -= 24;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleCondition>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x101004036CA7CB0uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t gss::ConditionalStyle<gss::PropertyID>::to_string@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v19);
  if (*(*(a1 + 144) + 104))
  {
    v3 = *(*(a1 + 144) + 104);
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v3, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, "-condStyle-", 11);
  v5 = MEMORY[0x1B8C61C90](&v20, *(a1 + 156));
  v25[0] = 45;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v25, 1);
  v7 = MEMORY[0x1B8C61C90](v6, *(a1 + 152));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "-{", 2);
  if (*(a1 + 136))
  {
    v8 = *(a1 + 128);
    v9 = &v8[6 * *(a1 + 136)];
    do
    {
      v10 = *v8;
      v25[0] = 64;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v11 = MEMORY[0x1B8C61C90](&v20, v10);
      v25[0] = 61;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v25, 1);
      if (*(v8 + 8))
      {
        v12 = 0;
        v13 = *(v8 + 1);
        v14 = 4 * *(v8 + 8);
        do
        {
          v15 = *v13;
          if (v12)
          {
            v25[0] = 44;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
          }

          MEMORY[0x1B8C61C90](&v20, v15);
          ++v13;
          v12 = 1;
          v14 -= 4;
        }

        while (v14);
      }

      v25[0] = 59;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v8 += 6;
    }

    while (v8 != v9);
  }

  v25[0] = 125;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
  std::stringbuf::str[abi:nn200100](a2, &v21);
  v19[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v20 = v16;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B2DD81D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a10 = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a12 = v30;
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

void gss::ConditionalStyle<gss::PropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29EA0;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(a1 + 16);
  gss::CartoStyle<gss::PropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gss::ConditionalStyle<gss::PropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29EA0;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(a1 + 16);

  return gss::CartoStyle<gss::PropertyID>::~CartoStyle(a1);
}

void gss::CartoStyle<gss::PropertyID>::to_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 104))
  {
    v3 = *(a1 + 104);
  }

  else
  {
    v3 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&v7, v3);
  v4 = std::string::insert(&v7, 0, "[", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v8, "]", 1uLL);
  *a2 = *v6;
  v6->__r_.__value_.__r.__words[0] = 0;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1B2DD848C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gss::CartoStyle<gss::PropertyID>::~CartoStyle(uint64_t a1)
{
  gss::CartoStyle<gss::PropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::PropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned int,unsigned char>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x28uLL, 0x1020040172BAE94uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleCondition>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29E08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  v1 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 16 * *(result + 8);
        v4 = v2 + 1;
        do
        {
          result = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](result);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::__on_zero_shared(_BYTE *a1)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 128));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 104));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 80));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 56));

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 32));
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::PropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29DD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  v1 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 16 * *(result + 8);
        v4 = v2 + 1;
        do
        {
          result = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](result);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void std::__shared_ptr_emplace<gss::GlobalProperties>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#2},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#2}>,void ()(BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A29F10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A29EC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A29D88;
  v2 = *(a1 + 8);
  *(a2 + 17) = *(a1 + 17);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](a2 + 40, a1 + 40);
}

void std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29D88;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 5));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::PropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29D88;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 5));
  return a1;
}

gss::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 = std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](void ***a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v5 = v2[1];
    v6 = v3;
    if (v5 != v3)
    {
      do
      {
        v5 = std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>::~unique_ptr[abi:nn200100](v5 - 5, a2);
      }

      while (v5 != v3);
      v6 = **a1;
    }

    v2[1] = v3;

    operator delete(v6);
  }
}

void std::__shared_ptr_emplace<gss::StyleSheet<gss::PropertyID>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 3023) < 0)
  {
    operator delete(*(a1 + 3000));
  }

  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2984), 0);
  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2976), 0);
  std::mutex::~mutex((a1 + 2912));
  std::mutex::~mutex((a1 + 2848));
  std::future<void>::~future((a1 + 2840));
  std::future<void>::~future((a1 + 2832));
  MEMORY[0x1B8C61FC0](a1 + 2824);
  MEMORY[0x1B8C61FC0](a1 + 2816);
  std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(a1 + 2776));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((a1 + 2752));
  geo::read_write_lock::~read_write_lock((a1 + 2552));
  v2 = (a1 + 2488);
  v3 = -2048;
  do
  {
    std::mutex::~mutex(v2);
    v2 = (v4 - 64);
    v3 += 64;
  }

  while (v3);
  v13 = (a1 + 472);
  std::vector<std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 440);
  std::vector<std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 408);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 376);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 336);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v13, v5);
  v13 = (a1 + 296);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v13, v6);
  v13 = (a1 + 256);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v13, v7);
  std::mutex::~mutex((a1 + 192));
  std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::PropertyID>>>::reset[abi:nn200100]((a1 + 184), 0);
  geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 168);
  v8 = *(a1 + 152);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 88);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(a1 + 32);
  if (v12)
  {

    std::__shared_weak_count::__release_weak(v12);
  }
}

void std::__shared_ptr_emplace<gss::StyleSheet<gss::PropertyID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t __Block_byref_object_copy__8238(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A608E0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A608E0;

  return a1;
}

id std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A29FA0;
  v4 = (a2 + 4);
  geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 1, a1 + 8);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    v4->__r_.__value_.__r.__words[2] = *(a1 + 48);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = *(a1 + 56);
  a2[7] = result;
  return result;
}

void sub_1B2DD93EC(_Unwind_Exception *a1)
{
  *(v1 + 8) = &unk_1F2A608E0;

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A29FA0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 8) = &unk_1F2A608E0;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::PropertyID>> md::StyleSheetExtension::initWithName<gss::PropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A29FA0;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 8) = &unk_1F2A608E0;

  return a1;
}

void sub_1B2DD9710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B2DD9BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<grl::FontManager  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<grl::FontManager  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderState>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::GroundShadowMapPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B718;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<gdc::DebugTreeNode>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<gdc::DebugTreeNode>::__base_destruct_at_end[abi:nn200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<gdc::DebugTreeProperty>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<gdc::DebugTreeProperty>::__base_destruct_at_end[abi:nn200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<gdc::DebugTreeProperty>::__base_destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 3;
    do
    {
      v6 = v5;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v6);
      v6 = v5 - 3;
      std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v6);
      if (*(v5 - 33) < 0)
      {
        operator delete(*(v5 - 7));
      }

      v5 -= 10;
    }

    while (v5 + 3 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<gdc::DebugTreeNode>::__base_destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = (v4 - 6);
    do
    {
      v7 = v5 + 3;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v7);
      v7 = v5;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v7);
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
      }

      if (*(v5 - 25) < 0)
      {
        operator delete(*(v5 - 6));
      }

      v6 = (v5 - 6);
      v5 -= 12;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_1B2DDB0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int16 a10, char a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v67 = a11;
  v67[96] = a9;

  a24 = &a64;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a24);
  a24 = &a61;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a24);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a66 < 0)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DDB934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v65 = v66;
  v65[80] = v67;

  a34 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a34);
  a34 = &a58;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&a34);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DDBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DDC188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_1B2DDC454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(__p);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

void sub_1B2DDC7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&a11, a10);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v244 = a2 - 1;
    v241 = a2 - 3;
    v242 = a2 - 2;
    v8 = v7;
    v252 = a2;
    v9 = a3;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v10 = v8;
          v11 = a2 - v8;
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v121 = *(*v9 + 48);

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v8, v8 + 1, v244, v121);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v8, v8 + 1, v8 + 2, v244, v9);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v8, v8 + 1, v8 + 2, v8 + 3, v244, v9);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            v9 = a3;
            if (v11 == 2)
            {
              v115 = *v244;
              v116 = *v8;
              v117 = *(*a3 + 48);
              v118 = v117 + 96 * *v244;
              v119 = v117 + 96 * *v8;
              if (*(v118 + 23) < 0)
              {
                if (*(v118 + 8))
                {
                  v120 = *v118;
                }

                else
                {
                  v120 = "";
                }
              }

              else if (*(v118 + 23))
              {
                v120 = (v117 + 96 * *v244);
              }

              else
              {
                v120 = "";
              }

              v238 = strlen(v120);
              if (*(v119 + 23) < 0)
              {
                if (*(v119 + 8))
                {
                  v239 = *v119;
                }

                else
                {
                  v239 = "";
                }
              }

              else if (*(v119 + 23))
              {
                v239 = v119;
              }

              else
              {
                v239 = "";
              }

              v240 = strlen(v239);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v120, v238, v239, v240);
              if ((result & 0x80) != 0)
              {
                *v8 = v115;
                *v244 = v116;
              }

              return result;
            }
          }

          v255 = v8;
          if (v11 <= 23)
          {
            v122 = v8 + 1;
            v123 = v8 == a2 || v122 == a2;
            v124 = v123;
            if (a5)
            {
              if ((v124 & 1) == 0)
              {
                v125 = *(*a3 + 48);
                v126 = 8;
                v127 = v8;
                v266 = v125;
                do
                {
                  v128 = v122;
                  v129 = v127[1];
                  v130 = v125 + 96 * v129;
                  if (*(v130 + 23) < 0)
                  {
                    if (*(v130 + 8))
                    {
                      v131 = *v130;
                    }

                    else
                    {
                      v131 = "";
                    }
                  }

                  else if (*(v130 + 23))
                  {
                    v131 = (v125 + 96 * v129);
                  }

                  else
                  {
                    v131 = "";
                  }

                  v132 = *v127;
                  v133 = v125 + 96 * *v127;
                  v134 = strlen(v131);
                  if (*(v133 + 23) < 0)
                  {
                    if (*(v133 + 8))
                    {
                      v135 = *v133;
                    }

                    else
                    {
                      v135 = "";
                    }
                  }

                  else if (*(v133 + 23))
                  {
                    v135 = v133;
                  }

                  else
                  {
                    v135 = "";
                  }

                  v136 = strlen(v135);
                  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v131, v134, v135, v136);
                  if ((result & 0x80) != 0)
                  {
                    v137 = *a3;
                    v138 = v126;
                    while (1)
                    {
                      *(v255 + v138) = v132;
                      v139 = v138 - 8;
                      if (v138 == 8)
                      {
                        break;
                      }

                      v140 = *(v137 + 48);
                      v141 = v140 + 96 * v129;
                      if (*(v141 + 23) < 0)
                      {
                        if (*(v141 + 8))
                        {
                          v142 = *v141;
                        }

                        else
                        {
                          v142 = "";
                        }
                      }

                      else if (*(v141 + 23))
                      {
                        v142 = (v140 + 96 * v129);
                      }

                      else
                      {
                        v142 = "";
                      }

                      v132 = *(v255 + v138 - 16);
                      v143 = (v140 + 96 * v132);
                      v144 = strlen(v142);
                      if (v143[23] < 0)
                      {
                        if (*(v143 + 1))
                        {
                          v143 = *v143;
                        }

                        else
                        {
                          v143 = "";
                        }
                      }

                      else if (!v143[23])
                      {
                        v143 = "";
                      }

                      v145 = strlen(v143);
                      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v142, v144, v143, v145);
                      v138 = v139;
                      if ((result & 0x80) == 0)
                      {
                        v146 = (v255 + v139);
                        goto LABEL_267;
                      }
                    }

                    v146 = v255;
LABEL_267:
                    *v146 = v129;
                    v125 = v266;
                  }

                  v122 = v128 + 1;
                  v126 += 8;
                  v127 = v128;
                }

                while (v128 + 1 != v252);
              }
            }

            else if ((v124 & 1) == 0)
            {
              v223 = *(*a3 + 48);
              do
              {
                v224 = v122;
                v225 = v10;
                v226 = v10[1];
                v227 = v223 + 96 * v226;
                if (*(v227 + 23) < 0)
                {
                  if (*(v227 + 8))
                  {
                    v228 = *v227;
                  }

                  else
                  {
                    v228 = "";
                  }
                }

                else if (*(v227 + 23))
                {
                  v228 = (v223 + 96 * v226);
                }

                else
                {
                  v228 = "";
                }

                v229 = *v225;
                v230 = (v223 + 96 * *v225);
                v231 = strlen(v228);
                if (v230[23] < 0)
                {
                  if (*(v230 + 1))
                  {
                    v230 = *v230;
                  }

                  else
                  {
                    v230 = "";
                  }
                }

                else if (!v230[23])
                {
                  v230 = "";
                }

                v232 = strlen(v230);
                result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v228, v231, v230, v232);
                if ((result & 0x80) != 0)
                {
                  v233 = v224;
                  do
                  {
                    *v233 = v229;
                    if (*(v227 + 23) < 0)
                    {
                      v234 = "";
                      if (*(v227 + 8))
                      {
                        v234 = *v227;
                      }
                    }

                    else if (*(v227 + 23))
                    {
                      v234 = (v223 + 96 * v226);
                    }

                    else
                    {
                      v234 = "";
                    }

                    v229 = *(v233 - 2);
                    v235 = (v223 + 96 * v229);
                    v236 = strlen(v234);
                    if (v235[23] < 0)
                    {
                      if (*(v235 + 1))
                      {
                        v235 = *v235;
                      }

                      else
                      {
                        v235 = "";
                      }
                    }

                    else if (!v235[23])
                    {
                      v235 = "";
                    }

                    v237 = strlen(v235);
                    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v234, v236, v235, v237);
                    --v233;
                  }

                  while ((result & 0x80) != 0);
                  *v233 = v226;
                }

                v122 = v224 + 1;
                v10 = v224;
              }

              while (v224 + 1 != v252);
            }

            return result;
          }

          if (!a4)
          {
            if (v8 != a2)
            {
              v246 = *a3;
              v257 = v12 >> 1;
              v261 = a2 - v8;
              v147 = v12 >> 1;
              do
              {
                v148 = v147;
                if (v257 >= v147)
                {
                  v149 = (2 * v147) | 1;
                  v150 = &v255[v149];
                  v151 = *(v246 + 48);
                  if (2 * v147 + 2 < v11)
                  {
                    v152 = v151 + 96 * *v150;
                    if (*(v152 + 23) < 0)
                    {
                      if (*(v152 + 8))
                      {
                        v153 = *v152;
                      }

                      else
                      {
                        v153 = "";
                      }
                    }

                    else if (*(v152 + 23))
                    {
                      v153 = (v151 + 96 * *v150);
                    }

                    else
                    {
                      v153 = "";
                    }

                    v154 = v150[1];
                    ++v150;
                    v155 = (v151 + 96 * v154);
                    v156 = strlen(v153);
                    if (v155[23] < 0)
                    {
                      if (*(v155 + 1))
                      {
                        v155 = *v155;
                      }

                      else
                      {
                        v155 = "";
                      }
                    }

                    else if (!v155[23])
                    {
                      v155 = "";
                    }

                    v157 = strlen(v155);
                    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v153, v156, v155, v157) & 0x80u) != 0)
                    {
                      v149 = 2 * v148 + 2;
                    }

                    else
                    {
                      v150 = &v255[v149];
                    }
                  }

                  v158 = &v255[v148];
                  v159 = *v150;
                  v267 = *v158;
                  v160 = v151 + 96 * *v150;
                  if (*(v160 + 23) < 0)
                  {
                    if (*(v160 + 8))
                    {
                      v161 = *v160;
                    }

                    else
                    {
                      v161 = "";
                    }
                  }

                  else if (*(v160 + 23))
                  {
                    v161 = (v151 + 96 * v159);
                  }

                  else
                  {
                    v161 = "";
                  }

                  v162 = v151 + 96 * v267;
                  v163 = strlen(v161);
                  if (*(v162 + 23) < 0)
                  {
                    if (*(v162 + 8))
                    {
                      v164 = *v162;
                    }

                    else
                    {
                      v164 = "";
                    }
                  }

                  else if (*(v162 + 23))
                  {
                    v164 = v162;
                  }

                  else
                  {
                    v164 = "";
                  }

                  v165 = strlen(v164);
                  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v161, v163, v164, v165);
                  v11 = v261;
                  if ((result & 0x80) == 0)
                  {
                    v248 = v148;
                    v251 = *a3;
                    do
                    {
                      v166 = v150;
                      *v158 = v159;
                      if (v257 < v149)
                      {
                        break;
                      }

                      v167 = (2 * v149) | 1;
                      v150 = &v255[v167];
                      v168 = *(v251 + 48);
                      if (2 * v149 + 2 >= v11)
                      {
                        v149 = (2 * v149) | 1;
                      }

                      else
                      {
                        v169 = v168 + 96 * *v150;
                        if (*(v169 + 23) < 0)
                        {
                          v170 = *(v169 + 8) ? *v169 : "";
                        }

                        else
                        {
                          v170 = *(v169 + 23) ? (v168 + 96 * *v150) : "";
                        }

                        v171 = v150[1];
                        ++v150;
                        v172 = (v168 + 96 * v171);
                        v173 = strlen(v170);
                        if (v172[23] < 0)
                        {
                          v174 = *(v172 + 1) ? *v172 : "";
                        }

                        else
                        {
                          v174 = v172[23] ? v172 : "";
                        }

                        v175 = strlen(v174);
                        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v170, v173, v174, v175) & 0x80u) != 0)
                        {
                          v149 = 2 * v149 + 2;
                        }

                        else
                        {
                          v150 = &v255[v167];
                          v149 = (2 * v149) | 1;
                        }
                      }

                      v159 = *v150;
                      v176 = v168 + 96 * *v150;
                      if (*(v176 + 23) < 0)
                      {
                        v177 = *(v176 + 8) ? *v176 : "";
                      }

                      else
                      {
                        v177 = *(v176 + 23) ? (v168 + 96 * *v150) : "";
                      }

                      v178 = v168 + 96 * v267;
                      v179 = strlen(v177);
                      if (*(v178 + 23) < 0)
                      {
                        v180 = *(v178 + 8) ? *v178 : "";
                      }

                      else
                      {
                        v180 = *(v178 + 23) ? (v168 + 96 * v267) : "";
                      }

                      v181 = strlen(v180);
                      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v177, v179, v180, v181);
                      v158 = v166;
                      v11 = v261;
                    }

                    while ((result & 0x80) == 0);
                    *v166 = v267;
                    v148 = v248;
                  }
                }

                v147 = v148 - 1;
              }

              while (v148);
              v258 = *a3;
              v182 = v252;
              v183 = v255;
              do
              {
                v253 = v182;
                v184 = 0;
                v262 = *v183;
                v185 = (v11 - 2) >> 1;
                v268 = *a3;
                do
                {
                  v186 = &v183[v184];
                  v187 = v186 + 1;
                  v188 = (2 * v184) | 1;
                  v189 = 2 * v184 + 2;
                  if (v189 >= v11)
                  {
                    v184 = (2 * v184) | 1;
                  }

                  else
                  {
                    v190 = v11;
                    v193 = v186[2];
                    v192 = v186 + 2;
                    v191 = v193;
                    v194 = *(v268 + 48);
                    v195 = v194 + 96 * *(v192 - 1);
                    if (*(v195 + 23) < 0)
                    {
                      if (*(v195 + 8))
                      {
                        v196 = *v195;
                      }

                      else
                      {
                        v196 = "";
                      }
                    }

                    else if (*(v195 + 23))
                    {
                      v196 = (v194 + 96 * *(v192 - 1));
                    }

                    else
                    {
                      v196 = "";
                    }

                    v197 = (v194 + 96 * v191);
                    v198 = strlen(v196);
                    if (v197[23] < 0)
                    {
                      if (*(v197 + 1))
                      {
                        v197 = *v197;
                      }

                      else
                      {
                        v197 = "";
                      }
                    }

                    else if (!v197[23])
                    {
                      v197 = "";
                    }

                    v199 = strlen(v197);
                    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v196, v198, v197, v199);
                    if ((result & 0x80u) == 0)
                    {
                      v184 = v188;
                    }

                    else
                    {
                      v187 = v192;
                      v184 = v189;
                    }

                    v11 = v190;
                  }

                  *v183 = *v187;
                  v183 = v187;
                }

                while (v184 <= v185);
                v200 = v253 - 1;
                v123 = v187 == v253 - 1;
                v254 = v253 - 1;
                if (v123)
                {
                  *v187 = v262;
                }

                else
                {
                  *v187 = *v200;
                  *v200 = v262;
                  v201 = (v187 - v255 + 8) >> 3;
                  v202 = v201 < 2;
                  v203 = v201 - 2;
                  if (!v202)
                  {
                    v263 = v11;
                    v204 = v203 >> 1;
                    v205 = &v255[v203 >> 1];
                    v206 = *v205;
                    v207 = *(v258 + 48);
                    v208 = v207 + 96 * *v205;
                    if (*(v208 + 23) < 0)
                    {
                      v209 = "";
                      if (*(v208 + 8))
                      {
                        v210 = *v208;
                      }

                      else
                      {
                        v210 = "";
                      }
                    }

                    else
                    {
                      v209 = "";
                      if (*(v208 + 23))
                      {
                        v210 = (v207 + 96 * *v205);
                      }

                      else
                      {
                        v210 = "";
                      }
                    }

                    v211 = *v187;
                    v212 = v207 + 96 * *v187;
                    v213 = strlen(v210);
                    if (*(v212 + 23) < 0)
                    {
                      if (*(v212 + 8))
                      {
                        v209 = *v212;
                      }
                    }

                    else if (*(v212 + 23))
                    {
                      v209 = v212;
                    }

                    v214 = strlen(v209);
                    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v210, v213, v209, v214);
                    v11 = v263;
                    if ((result & 0x80) != 0)
                    {
                      v269 = *a3;
                      do
                      {
                        v215 = v205;
                        *v187 = v206;
                        if (!v204)
                        {
                          break;
                        }

                        v204 = (v204 - 1) >> 1;
                        v205 = &v255[v204];
                        v206 = *v205;
                        v216 = *(v269 + 48);
                        v217 = v216 + 96 * *v205;
                        if (*(v217 + 23) < 0)
                        {
                          v218 = *(v217 + 8) ? *v217 : "";
                        }

                        else
                        {
                          v218 = *(v217 + 23) ? (v216 + 96 * *v205) : "";
                        }

                        v219 = (v216 + 96 * v211);
                        v220 = strlen(v218);
                        if (v219[23] < 0)
                        {
                          v221 = *(v219 + 1) ? *v219 : "";
                        }

                        else
                        {
                          v221 = v219[23] ? v219 : "";
                        }

                        v222 = strlen(v221);
                        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v218, v220, v221, v222);
                        v187 = v215;
                      }

                      while ((result & 0x80) != 0);
                      *v215 = v211;
                      v11 = v263;
                    }
                  }
                }

                v202 = v11-- <= 2;
                v182 = v254;
                v183 = v255;
              }

              while (!v202);
            }

            return result;
          }

          v13 = v11 >> 1;
          v14 = &v8[v11 >> 1];
          v15 = *(*v9 + 48);
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(&v10[v11 >> 1], v10, v244, v15);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v10, &v10[v11 >> 1], v244, v15);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v10 + 1, v14 - 1, v242, *(*v9 + 48));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v10 + 2, &v10[v13 + 1], v241, *(*v9 + 48));
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(v14 - 1, v14, &v10[v13 + 1], *(*v9 + 48));
            v16 = *v10;
            *v10 = *v14;
            *v14 = v16;
          }

          v17 = *v10;
          v18 = *v9;
          v245 = *v10;
          v247 = a4 - 1;
          if (a5)
          {
            break;
          }

          v19 = *(v18 + 48);
          v21 = v19 + 96 * *(v10 - 1);
          if (*(v21 + 23) < 0)
          {
            if (*(v21 + 8))
            {
              v22 = *v21;
            }

            else
            {
              v22 = "";
            }
          }

          else if (*(v21 + 23))
          {
            v22 = (v19 + 96 * *(v10 - 1));
          }

          else
          {
            v22 = "";
          }

          v23 = v19 + 96 * v17;
          v24 = strlen(v22);
          v20 = *(v23 + 23);
          v259 = v23;
          if ((v20 & 0x80) != 0)
          {
            if (*(v23 + 8))
            {
              v25 = *v23;
            }

            else
            {
              v25 = "";
            }
          }

          else if (*(v23 + 23))
          {
            v25 = (v19 + 96 * v17);
          }

          else
          {
            v25 = "";
          }

          v26 = strlen(v25);
          if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v22, v24, v25, v26) & 0x80) != 0)
          {
            goto LABEL_32;
          }

          if ((v20 & 0x80) != 0)
          {
            v71 = v20;
            if (*(v259 + 8))
            {
              v72 = *v259;
            }

            else
            {
              v72 = "";
            }
          }

          else
          {
            v71 = v20;
            if (v20)
            {
              v72 = (v19 + 96 * v17);
            }

            else
            {
              v72 = "";
            }
          }

          v73 = v19 + 96 * *v244;
          v74 = strlen(v72);
          if (*(v73 + 23) < 0)
          {
            if (*(v73 + 8))
            {
              v75 = *v73;
            }

            else
            {
              v75 = "";
            }
          }

          else if (*(v73 + 23))
          {
            v75 = (v19 + 96 * *v244);
          }

          else
          {
            v75 = "";
          }

          v76 = strlen(v75);
          result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v72, v74, v75, v76);
          if (v71)
          {
            v77 = v259;
          }

          else
          {
            v77 = "";
          }

          if ((result & 0x80) != 0)
          {
            v8 = v255;
            do
            {
              v84 = v77;
              if ((v71 & 0x80) != 0)
              {
                if (*(v259 + 8))
                {
                  v84 = *v259;
                }

                else
                {
                  v84 = "";
                }
              }

              v85 = v8[1];
              ++v8;
              v86 = v19 + 96 * v85;
              v87 = strlen(v84);
              if (*(v86 + 23) < 0)
              {
                if (*(v86 + 8))
                {
                  v88 = *v86;
                }

                else
                {
                  v88 = "";
                }
              }

              else if (*(v86 + 23))
              {
                v88 = v86;
              }

              else
              {
                v88 = "";
              }

              a2 = v252;
              v89 = strlen(v88);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v84, v87, v88, v89);
            }

            while ((result & 0x80) == 0);
          }

          else
          {
            v78 = v255 + 1;
            do
            {
              v8 = v78;
              if (v78 >= a2)
              {
                break;
              }

              v79 = v77;
              if ((v71 & 0x80) != 0)
              {
                if (*(v259 + 8))
                {
                  v79 = *v259;
                }

                else
                {
                  v79 = "";
                }
              }

              v80 = (v19 + 96 * *v78);
              v81 = strlen(v79);
              if (v80[23] < 0)
              {
                v82 = *(v80 + 1) ? *v80 : "";
              }

              else
              {
                v82 = v80[23] ? v80 : "";
              }

              a2 = v252;
              v83 = strlen(v82);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v79, v81, v82, v83);
              v78 = v8 + 1;
            }

            while ((result & 0x80) == 0);
          }

          v90 = a2;
          if (v8 < a2)
          {
            if (v71)
            {
              v91 = v259;
            }

            else
            {
              v91 = "";
            }

            v90 = v252;
            do
            {
              v92 = v91;
              if ((v71 & 0x80) != 0)
              {
                if (*(v259 + 8))
                {
                  v92 = *v259;
                }

                else
                {
                  v92 = "";
                }
              }

              v93 = *--v90;
              v94 = v19 + 96 * v93;
              v95 = strlen(v92);
              if (*(v94 + 23) < 0)
              {
                if (*(v94 + 8))
                {
                  v96 = *v94;
                }

                else
                {
                  v96 = "";
                }
              }

              else if (*(v94 + 23))
              {
                v96 = v94;
              }

              else
              {
                v96 = "";
              }

              v97 = strlen(v96);
              result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v92, v95, v96, v97);
            }

            while ((result & 0x80) != 0);
          }

          if (v8 < v90)
          {
            v265 = v19;
            v98 = *v8;
            v99 = *v90;
            do
            {
              *v8 = v99;
              *v90 = v98;
              v100 = *(v259 + 23);
              if (*(v259 + 23))
              {
                v101 = v259;
              }

              else
              {
                v101 = "";
              }

              do
              {
                v102 = v8[1];
                ++v8;
                v98 = v102;
                v103 = v101;
                if (v100 < 0)
                {
                  if (*(v259 + 8))
                  {
                    v103 = *v259;
                  }

                  else
                  {
                    v103 = "";
                  }
                }

                v104 = v265 + 96 * v98;
                v105 = strlen(v103);
                if (*(v104 + 23) < 0)
                {
                  if (*(v104 + 8))
                  {
                    v106 = *v104;
                  }

                  else
                  {
                    v106 = "";
                  }
                }

                else if (*(v104 + 23))
                {
                  v106 = (v265 + 96 * v98);
                }

                else
                {
                  v106 = "";
                }

                v107 = strlen(v106);
              }

              while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v103, v105, v106, v107) & 0x80) == 0);
              do
              {
                v108 = *--v90;
                v99 = v108;
                v109 = v101;
                if (v100 < 0)
                {
                  if (*(v259 + 8))
                  {
                    v109 = *v259;
                  }

                  else
                  {
                    v109 = "";
                  }
                }

                v110 = v265 + 96 * v99;
                v111 = strlen(v109);
                if (*(v110 + 23) < 0)
                {
                  if (*(v110 + 8))
                  {
                    v112 = *v110;
                  }

                  else
                  {
                    v112 = "";
                  }
                }

                else if (*(v110 + 23))
                {
                  v112 = (v265 + 96 * v99);
                }

                else
                {
                  v112 = "";
                }

                v113 = strlen(v112);
                result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v109, v111, v112, v113);
              }

              while ((result & 0x80) != 0);
            }

            while (v8 < v90);
          }

          v114 = v8 - 1;
          if (v8 - 1 != v255)
          {
            *v255 = *v114;
          }

          a5 = 0;
          a4 = v247;
          *v114 = v245;
          a2 = v252;
          v9 = a3;
        }

        v19 = *(v18 + 48);
        v20 = *(v19 + 96 * v17 + 23);
LABEL_32:
        v264 = v19 + 96 * v17;
        v27 = v20 ? (v19 + 96 * v17) : "";
        v260 = v255;
        do
        {
          v28 = v260[1];
          ++v260;
          v29 = v19 + 96 * v28;
          if (*(v29 + 23) < 0)
          {
            if (*(v29 + 8))
            {
              v30 = *v29;
            }

            else
            {
              v30 = "";
            }
          }

          else if (*(v29 + 23))
          {
            v30 = (v19 + 96 * v28);
          }

          else
          {
            v30 = "";
          }

          v31 = strlen(v30);
          v32 = v27;
          if ((v20 & 0x80) != 0)
          {
            if (*(v264 + 8))
            {
              v32 = *v264;
            }

            else
            {
              v32 = "";
            }
          }

          v33 = strlen(v32);
        }

        while ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v30, v31, v32, v33) & 0x80) != 0);
        v34 = v20;
        v35 = a2;
        v256 = v260 - 1;
        v36 = v19;
        if (v260 - 1 == v255)
        {
          v35 = a2;
          do
          {
            if (v260 >= v35)
            {
              break;
            }

            v44 = v35 - 1;
            v45 = v19 + 96 * *(v35 - 1);
            if (*(v45 + 23) < 0)
            {
              if (*(v45 + 8))
              {
                v46 = *v45;
              }

              else
              {
                v46 = "";
              }
            }

            else if (*(v45 + 23))
            {
              v46 = (v19 + 96 * *(v35 - 1));
            }

            else
            {
              v46 = "";
            }

            v47 = strlen(v46);
            v48 = v27;
            if (v34 < 0)
            {
              if (*(v264 + 8))
              {
                v48 = *v264;
              }

              else
              {
                v48 = "";
              }
            }

            v49 = strlen(v48);
            v50 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v46, v47, v48, v49);
            v19 = v36;
            v35 = v44;
          }

          while ((v50 & 0x80) == 0);
        }

        else
        {
          do
          {
            v37 = v35 - 1;
            v38 = v19 + 96 * *(v35 - 1);
            if (*(v38 + 23) < 0)
            {
              if (*(v38 + 8))
              {
                v39 = *v38;
              }

              else
              {
                v39 = "";
              }
            }

            else if (*(v38 + 23))
            {
              v39 = (v19 + 96 * *(v35 - 1));
            }

            else
            {
              v39 = "";
            }

            v40 = strlen(v39);
            v41 = v27;
            if (v34 < 0)
            {
              if (*(v264 + 8))
              {
                v41 = *v264;
              }

              else
              {
                v41 = "";
              }
            }

            v42 = strlen(v41);
            v43 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v39, v40, v41, v42);
            v19 = v36;
            v35 = v37;
          }

          while ((v43 & 0x80) == 0);
        }

        v250 = v35;
        if (v260 < v35)
        {
          v51 = v35;
          v52 = *v35;
          v53 = v260;
          do
          {
            *v53 = v52;
            *v51 = v28;
            v54 = *(v264 + 23);
            if (*(v264 + 23))
            {
              v55 = v264;
            }

            else
            {
              v55 = "";
            }

            do
            {
              v56 = v53[1];
              ++v53;
              v28 = v56;
              v57 = v19 + 96 * v56;
              if (*(v57 + 23) < 0)
              {
                if (*(v57 + 8))
                {
                  v58 = *v57;
                }

                else
                {
                  v58 = "";
                }
              }

              else if (*(v57 + 23))
              {
                v58 = v57;
              }

              else
              {
                v58 = "";
              }

              v59 = strlen(v58);
              v60 = v55;
              if (v54 < 0)
              {
                if (*(v264 + 8))
                {
                  v60 = *v264;
                }

                else
                {
                  v60 = "";
                }
              }

              v61 = strlen(v60);
              v62 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v58, v59, v60, v61);
              v19 = v36;
            }

            while (v62 < 0);
            v256 = v53 - 1;
            do
            {
              v63 = *--v51;
              v52 = v63;
              v64 = v19 + 96 * v63;
              if (*(v64 + 23) < 0)
              {
                if (*(v64 + 8))
                {
                  v65 = *v64;
                }

                else
                {
                  v65 = "";
                }
              }

              else if (*(v64 + 23))
              {
                v65 = v64;
              }

              else
              {
                v65 = "";
              }

              v66 = strlen(v65);
              v67 = v55;
              if (v54 < 0)
              {
                if (*(v264 + 8))
                {
                  v67 = *v264;
                }

                else
                {
                  v67 = "";
                }
              }

              v68 = strlen(v67);
              v69 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v65, v66, v67, v68);
              v19 = v36;
            }

            while ((v69 & 0x80) == 0);
          }

          while (v53 < v51);
        }

        v7 = v255;
        if (v256 != v255)
        {
          *v255 = *v256;
        }

        a4 = v247;
        *v256 = v245;
        a2 = v252;
        v9 = a3;
        if (v260 >= v250)
        {
          break;
        }

LABEL_112:
        result = std::__introsort<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,false>(v255, v256, a3, v247, a5 & 1);
        a5 = 0;
        v8 = v256 + 1;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *>(v255, v256, a3);
      v8 = v256 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *>(v256 + 1, v252, a3);
      if (result)
      {
        break;
      }

      if (!v70)
      {
        goto LABEL_112;
      }
    }

    a2 = v256;
    if (!v70)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a1;
  v8 = a4 + 96 * *a2;
  v9 = a4 + 96 * *a1;
  v10 = *(v8 + 23);
  v11 = "";
  if (*(v8 + 23) < 0)
  {
    if (*(v8 + 8))
    {
      v12 = *v8;
    }

    else
    {
      v12 = "";
    }
  }

  else if (*(v8 + 23))
  {
    v12 = (a4 + 96 * *a2);
  }

  else
  {
    v12 = "";
  }

  v13 = strlen(v12);
  if (*(v9 + 23) < 0)
  {
    if (*(v9 + 8))
    {
      v11 = *v9;
    }
  }

  else if (*(v9 + 23))
  {
    v11 = v9;
  }

  v14 = strlen(v11);
  v15 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v12, v13, v11, v14);
  v41 = a3;
  v16 = *a3;
  v17 = a4 + 96 * v16;
  v18 = "";
  if (v15 < 0)
  {
    if ((*(v17 + 23) & 0x80) != 0)
    {
      if (*(v17 + 8))
      {
        v20 = *v17;
      }

      else
      {
        v20 = "";
      }
    }

    else if (*(v17 + 23))
    {
      v20 = (a4 + 96 * v16);
    }

    else
    {
      v20 = "";
    }

    v29 = strlen(v20);
    if ((v10 & 0x80) != 0)
    {
      if (*(v8 + 8))
      {
        v18 = *v8;
      }
    }

    else if (v10)
    {
      v18 = v8;
    }

    v30 = strlen(v18);
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v20, v29, v18, v30);
    if ((result & 0x80) != 0)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v6;
      *a2 = v7;
      v31 = *v41;
      v32 = a4 + 96 * *v41;
      if (*(v32 + 23) < 0)
      {
        if (*(v32 + 8))
        {
          v33 = *v32;
        }

        else
        {
          v33 = "";
        }
      }

      else if (*(v32 + 23))
      {
        v33 = (a4 + 96 * *v41);
      }

      else
      {
        v33 = "";
      }

      v35 = strlen(v33);
      if (*(v9 + 23) < 0)
      {
        if (*(v9 + 8))
        {
          v36 = *v9;
        }

        else
        {
          v36 = "";
        }
      }

      else if (*(v9 + 23))
      {
        v36 = v9;
      }

      else
      {
        v36 = "";
      }

      v38 = strlen(v36);
      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v33, v35, v36, v38);
      if ((result & 0x80) == 0)
      {
        return result;
      }

      *a2 = v31;
    }

    *v41 = v7;
    return result;
  }

  if ((*(v17 + 23) & 0x80) != 0)
  {
    if (*(v17 + 8))
    {
      v19 = *v17;
    }

    else
    {
      v19 = "";
    }
  }

  else if (*(v17 + 23))
  {
    v19 = (a4 + 96 * v16);
  }

  else
  {
    v19 = "";
  }

  v21 = strlen(v19);
  if ((v10 & 0x80) != 0)
  {
    if (*(v8 + 8))
    {
      v18 = *v8;
    }
  }

  else if (v10)
  {
    v18 = v8;
  }

  v22 = strlen(v18);
  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v19, v21, v18, v22);
  if ((result & 0x80) != 0)
  {
    *a2 = v16;
    *v41 = v6;
    v24 = *a2;
    v25 = *a1;
    v26 = a4 + 96 * *a2;
    v27 = (a4 + 96 * *a1);
    if (*(v26 + 23) < 0)
    {
      if (*(v26 + 8))
      {
        v28 = *v26;
      }

      else
      {
        v28 = "";
      }
    }

    else if (*(v26 + 23))
    {
      v28 = (a4 + 96 * *a2);
    }

    else
    {
      v28 = "";
    }

    v34 = strlen(v28);
    if (v27[23] < 0)
    {
      if (*(v27 + 1))
      {
        v27 = *v27;
      }

      else
      {
        v27 = "";
      }
    }

    else if (!v27[23])
    {
      v27 = "";
    }

    v37 = strlen(v27);
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v28, v34, v27, v37);
    if ((result & 0x80) != 0)
    {
      *a1 = v24;
      *a2 = v25;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(a1, a2, a3, *(*a5 + 48));
  v9 = *a4;
  v10 = *a3;
  v11 = *(*a5 + 48);
  v12 = v11 + 96 * *a4;
  v13 = (v11 + 96 * *a3);
  if (*(v12 + 23) < 0)
  {
    if (*(v12 + 8))
    {
      v14 = *v12;
    }

    else
    {
      v14 = "";
    }
  }

  else if (*(v12 + 23))
  {
    v14 = (v11 + 96 * *a4);
  }

  else
  {
    v14 = "";
  }

  v15 = strlen(v14);
  if (v13[23] < 0)
  {
    if (*(v13 + 1))
    {
      v13 = *v13;
    }

    else
    {
      v13 = "";
    }
  }

  else if (!v13[23])
  {
    v13 = "";
  }

  v16 = strlen(v13);
  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v14, v15, v13, v16);
  if ((result & 0x80) != 0)
  {
    *a3 = v9;
    *a4 = v10;
    v18 = *a3;
    v19 = *a2;
    v20 = v11 + 96 * *a3;
    v21 = (v11 + 96 * *a2);
    if (*(v20 + 23) < 0)
    {
      if (*(v20 + 8))
      {
        v22 = *v20;
      }

      else
      {
        v22 = "";
      }
    }

    else if (*(v20 + 23))
    {
      v22 = (v11 + 96 * *a3);
    }

    else
    {
      v22 = "";
    }

    v23 = strlen(v22);
    if (v21[23] < 0)
    {
      if (*(v21 + 1))
      {
        v21 = *v21;
      }

      else
      {
        v21 = "";
      }
    }

    else if (!v21[23])
    {
      v21 = "";
    }

    v24 = strlen(v21);
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v22, v23, v21, v24);
    if ((result & 0x80) != 0)
    {
      *a2 = v18;
      *a3 = v19;
      v25 = *a2;
      v26 = *a1;
      v27 = v11 + 96 * *a2;
      v28 = (v11 + 96 * *a1);
      if (*(v27 + 23) < 0)
      {
        if (*(v27 + 8))
        {
          v29 = *v27;
        }

        else
        {
          v29 = "";
        }
      }

      else if (*(v27 + 23))
      {
        v29 = (v11 + 96 * *a2);
      }

      else
      {
        v29 = "";
      }

      v30 = strlen(v29);
      if (v28[23] < 0)
      {
        if (*(v28 + 1))
        {
          v28 = *v28;
        }

        else
        {
          v28 = "";
        }
      }

      else if (!v28[23])
      {
        v28 = "";
      }

      v31 = strlen(v28);
      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v29, v30, v28, v31);
      if ((result & 0x80) != 0)
      {
        *a1 = v25;
        *a2 = v26;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(a1, a2, a3, a4, a6);
  v10 = *a5;
  v11 = *a4;
  v12 = *(*a6 + 48);
  v13 = v12 + 96 * *a5;
  v14 = (v12 + 96 * *a4);
  if (*(v13 + 23) < 0)
  {
    if (*(v13 + 8))
    {
      v15 = *v13;
    }

    else
    {
      v15 = "";
    }
  }

  else if (*(v13 + 23))
  {
    v15 = (v12 + 96 * *a5);
  }

  else
  {
    v15 = "";
  }

  v16 = strlen(v15);
  if (v14[23] < 0)
  {
    if (*(v14 + 1))
    {
      v14 = *v14;
    }

    else
    {
      v14 = "";
    }
  }

  else if (!v14[23])
  {
    v14 = "";
  }

  v17 = strlen(v14);
  result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v15, v16, v14, v17);
  if ((result & 0x80) != 0)
  {
    *a4 = v10;
    *a5 = v11;
    v19 = *a4;
    v20 = *a3;
    v21 = v12 + 96 * *a4;
    v22 = (v12 + 96 * *a3);
    if (*(v21 + 23) < 0)
    {
      if (*(v21 + 8))
      {
        v23 = *v21;
      }

      else
      {
        v23 = "";
      }
    }

    else if (*(v21 + 23))
    {
      v23 = (v12 + 96 * *a4);
    }

    else
    {
      v23 = "";
    }

    v24 = strlen(v23);
    if (v22[23] < 0)
    {
      if (*(v22 + 1))
      {
        v22 = *v22;
      }

      else
      {
        v22 = "";
      }
    }

    else if (!v22[23])
    {
      v22 = "";
    }

    v25 = strlen(v22);
    result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v23, v24, v22, v25);
    if ((result & 0x80) != 0)
    {
      *a3 = v19;
      *a4 = v20;
      v26 = *a3;
      v27 = *a2;
      v28 = v12 + 96 * *a3;
      v29 = (v12 + 96 * *a2);
      if (*(v28 + 23) < 0)
      {
        if (*(v28 + 8))
        {
          v30 = *v28;
        }

        else
        {
          v30 = "";
        }
      }

      else if (*(v28 + 23))
      {
        v30 = (v12 + 96 * *a3);
      }

      else
      {
        v30 = "";
      }

      v31 = strlen(v30);
      if (v29[23] < 0)
      {
        if (*(v29 + 1))
        {
          v29 = *v29;
        }

        else
        {
          v29 = "";
        }
      }

      else if (!v29[23])
      {
        v29 = "";
      }

      v32 = strlen(v29);
      result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v30, v31, v29, v32);
      if ((result & 0x80) != 0)
      {
        *a2 = v26;
        *a3 = v27;
        v33 = *a2;
        v34 = *a1;
        v35 = v12 + 96 * *a2;
        v36 = (v12 + 96 * *a1);
        if (*(v35 + 23) < 0)
        {
          if (*(v35 + 8))
          {
            v37 = *v35;
          }

          else
          {
            v37 = "";
          }
        }

        else if (*(v35 + 23))
        {
          v37 = (v12 + 96 * *a2);
        }

        else
        {
          v37 = "";
        }

        v38 = strlen(v37);
        if (v36[23] < 0)
        {
          if (*(v36 + 1))
          {
            v36 = *v36;
          }

          else
          {
            v36 = "";
          }
        }

        else if (!v36[23])
        {
          v36 = "";
        }

        v39 = strlen(v36);
        result = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v37, v38, v36, v39);
        if ((result & 0x80) != 0)
        {
          *a1 = v33;
          *a2 = v34;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a2 - 1, *(*a3 + 48));
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = *(*a3 + 48);
      v10 = v9 + 96 * v7;
      v11 = (v9 + 96 * *a1);
      if (*(v10 + 23) < 0)
      {
        if (*(v10 + 8))
        {
          v12 = *v10;
        }

        else
        {
          v12 = "";
        }
      }

      else if (*(v10 + 23))
      {
        v12 = (v9 + 96 * v7);
      }

      else
      {
        v12 = "";
      }

      v37 = strlen(v12);
      if (v11[23] < 0)
      {
        if (*(v11 + 1))
        {
          v11 = *v11;
        }

        else
        {
          v11 = "";
        }
      }

      else if (!v11[23])
      {
        v11 = "";
      }

      v38 = strlen(v11);
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v12, v37, v11, v38) & 0x80) != 0)
      {
        *a1 = v7;
        *(v4 - 1) = v8;
      }

      return 1;
    }
  }

  v13 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::tag_invoke(debugTree::dumpJson_t,gdc::DebugTreeNode const&)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, *(*a3 + 48));
  v14 = a1 + 3;
  if (a1 + 3 != v4)
  {
    v40 = 0;
    v39 = v4;
    v15 = *(*a3 + 48);
    v16 = 24;
    v41 = v15;
    do
    {
      v42 = v14;
      v17 = *v14;
      v18 = v15 + 96 * *v14;
      if (*(v18 + 23) < 0)
      {
        if (*(v18 + 8))
        {
          v19 = *v18;
        }

        else
        {
          v19 = "";
        }
      }

      else if (*(v18 + 23))
      {
        v19 = (v15 + 96 * *v14);
      }

      else
      {
        v19 = "";
      }

      v20 = *v13;
      v21 = v15 + 96 * *v13;
      v22 = strlen(v19);
      if (*(v21 + 23) < 0)
      {
        if (*(v21 + 8))
        {
          v23 = *v21;
        }

        else
        {
          v23 = "";
        }
      }

      else if (*(v21 + 23))
      {
        v23 = v21;
      }

      else
      {
        v23 = "";
      }

      v24 = strlen(v23);
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v19, v22, v23, v24) & 0x80) != 0)
      {
        v25 = *a3;
        v26 = v16;
        while (1)
        {
          *(a1 + v26) = v20;
          v27 = v26 - 8;
          if (v26 == 8)
          {
            break;
          }

          v28 = *(v25 + 48);
          v29 = v28 + 96 * v17;
          if (*(v29 + 23) < 0)
          {
            if (*(v29 + 8))
            {
              v30 = *v29;
            }

            else
            {
              v30 = "";
            }
          }

          else if (*(v29 + 23))
          {
            v30 = (v28 + 96 * v17);
          }

          else
          {
            v30 = "";
          }

          v20 = *(a1 + v26 - 16);
          v31 = (v28 + 96 * v20);
          v32 = strlen(v30);
          if (v31[23] < 0)
          {
            if (*(v31 + 1))
            {
              v31 = *v31;
            }

            else
            {
              v31 = "";
            }
          }

          else if (!v31[23])
          {
            v31 = "";
          }

          v33 = strlen(v31);
          v34 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(v30, v32, v31, v33);
          v26 = v27;
          if ((v34 & 0x80) == 0)
          {
            v35 = (a1 + v27);
            goto LABEL_50;
          }
        }

        v35 = a1;
LABEL_50:
        v15 = v41;
        *v35 = v17;
        ++v40;
        v4 = v39;
        if (v40 == 8)
        {
          return v42 + 1 == v39;
        }
      }

      else
      {
        v15 = v41;
      }

      v13 = v42;
      v16 += 8;
      v14 = v42 + 1;
    }

    while (v42 + 1 != v4);
  }

  return 1;
}

void std::vector<gdc::DebugTreeNode>::__assign_with_size[abi:nn200100]<gdc::DebugTreeNode*,gdc::DebugTreeNode*>(std::string **a1, std::string *a2, std::string *a3, unint64_t a4)
{
  v7 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<gdc::DebugTreeNode>::__vdeallocate(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v9 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<gdc::DebugTreeNode>::__vallocate[abi:nn200100](a1, v9);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = a1[1] - v7;
  if (0xAAAAAAAAAAAAAAABLL * (v10 >> 5) >= a4)
  {
    v15 = std::__copy_impl::operator()[abi:nn200100]<gdc::DebugTreeNode *,gdc::DebugTreeNode *,gdc::DebugTreeNode *>(a2, a3, v7);

    std::vector<gdc::DebugTreeNode>::__base_destruct_at_end[abi:nn200100](a1, &v15->__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = (a2 + v10);
    std::__copy_impl::operator()[abi:nn200100]<gdc::DebugTreeNode *,gdc::DebugTreeNode *,gdc::DebugTreeNode *>(a2, (a2 + v10), v7);
    v12 = a1[1];
    if (v11 != a3)
    {
      v13 = a1[1];
      do
      {
        v14 = gdc::DebugTreeNode::DebugTreeNode(v13, v11);
        v11 = (v11 + 96);
        v13 = v14 + 4;
      }

      while (v11 != a3);
      v12 = v13;
    }

    a1[1] = v12;
  }
}

void std::vector<gdc::DebugTreeProperty>::__assign_with_size[abi:nn200100]<gdc::DebugTreeProperty*,gdc::DebugTreeProperty*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<gdc::DebugTreeProperty>::__vdeallocate(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gdc::DebugTreeProperty>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:nn200100]<gdc::DebugTreeProperty *,gdc::DebugTreeProperty *,gdc::DebugTreeProperty *>(__str, a3, v8);

    std::vector<gdc::DebugTreeProperty>::__base_destruct_at_end[abi:nn200100](a1, &v12->__r_.__value_.__l.__data_);
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<gdc::DebugTreeProperty *,gdc::DebugTreeProperty *,gdc::DebugTreeProperty *>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<gdc::DebugTreeProperty>,gdc::DebugTreeProperty*,gdc::DebugTreeProperty*,gdc::DebugTreeProperty*>((__str + v11), a3, *(a1 + 8));
  }
}

std::string *std::__copy_impl::operator()[abi:nn200100]<gdc::DebugTreeProperty *,gdc::DebugTreeProperty *,gdc::DebugTreeProperty *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      LODWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
      if (this != v5)
      {
        p_size = &this[1].__r_.__value_.__l.__size_;
        size = this[1].__r_.__value_.__l.__size_;
        v8 = v5[1].__r_.__value_.__l.__size_;
        v9 = v5[1].__r_.__value_.__r.__words[2];
        v10 = v9 - v8;
        data = this[2].__r_.__value_.__l.__data_;
        if (data - size < v9 - v8)
        {
          if (size)
          {
            std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](&this[1].__r_.__value_.__l.__size_);
            operator delete(*p_size);
            data = 0;
            *p_size = 0;
            this[1].__r_.__value_.__r.__words[2] = 0;
            this[2].__r_.__value_.__r.__words[0] = 0;
          }

          v12 = v10 >> 6;
          if (!((v10 >> 6) >> 58))
          {
            if (data >> 5 > v12)
            {
              v12 = data >> 5;
            }

            if (data >= 0x7FFFFFFFFFFFFFC0)
            {
              v13 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            std::vector<gdc::DebugTreeValue>::__vallocate[abi:nn200100](&this[1].__r_.__value_.__l.__size_, v13);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v14 = this[1].__r_.__value_.__r.__words[2];
        if (v14 - size >= v10)
        {
          if (v8 != v9)
          {
            do
            {
              v19 = *v8;
              *(size + 9) = *(v8 + 9);
              *size = v19;
              std::string::operator=((size + 32), (v8 + 32));
              *(size + 56) = *(v8 + 56);
              size += 64;
              v8 += 64;
            }

            while (v8 != v9);
            v14 = this[1].__r_.__value_.__r.__words[2];
          }

          while (v14 != size)
          {
            if (*(v14 - 9) < 0)
            {
              operator delete(*(v14 - 32));
            }

            v14 -= 64;
          }

          this[1].__r_.__value_.__r.__words[2] = size;
        }

        else
        {
          v15 = (v8 + v14 - size);
          if (v14 != size)
          {
            do
            {
              v16 = *v8;
              *(size + 9) = *(v8 + 9);
              *size = v16;
              std::string::operator=((size + 32), (v8 + 32));
              *(size + 56) = *(v8 + 56);
              v8 += 64;
              size += 64;
            }

            while (v8 != v15);
            v14 = this[1].__r_.__value_.__r.__words[2];
          }

          v17 = v14;
          if (v15 != v9)
          {
            v17 = v14;
            do
            {
              v18 = std::construct_at[abi:nn200100]<gdc::DebugTreeValue,gdc::DebugTreeValue const&,gdc::DebugTreeValue*>(v17, v15);
              v15 += 4;
              v17 = v18 + 64;
            }

            while (v15 != v9);
          }

          this[1].__r_.__value_.__r.__words[2] = v17;
        }

        v21 = &this[2].__r_.__value_.__l.__size_;
        v20 = this[2].__r_.__value_.__l.__size_;
        v22 = v5[2].__r_.__value_.__l.__size_;
        v23 = v5[2].__r_.__value_.__r.__words[2];
        v24 = v23 - v22;
        v25 = this[3].__r_.__value_.__l.__data_;
        if (v25 - v20 < (v23 - v22))
        {
          if (v20)
          {
            std::vector<std::string>::clear[abi:nn200100](&this[2].__r_.__value_.__l.__size_);
            operator delete(*v21);
            v25 = 0;
            *v21 = 0;
            this[2].__r_.__value_.__r.__words[2] = 0;
            this[3].__r_.__value_.__r.__words[0] = 0;
          }

          v26 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
          if (v26 <= 0xAAAAAAAAAAAAAAALL)
          {
            v27 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
            if (2 * v27 > v26)
            {
              v26 = 2 * v27;
            }

            if (v27 >= 0x555555555555555)
            {
              v28 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v28 = v26;
            }

            std::vector<std::string>::__vallocate[abi:nn200100](&this[2].__r_.__value_.__l.__size_, v28);
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v29 = this[2].__r_.__value_.__r.__words[2];
        v30 = v29 - v20;
        if (v29 - v20 >= v24)
        {
          if (v22 != v23)
          {
            do
            {
              std::string::operator=(v20++, v22++);
            }

            while (v22 != v23);
            v29 = this[2].__r_.__value_.__r.__words[2];
          }

          while (v29 != v20)
          {
            v33 = SHIBYTE(v29[-1].__r_.__value_.__r.__words[2]);
            --v29;
            if (v33 < 0)
            {
              operator delete(v29->__r_.__value_.__l.__data_);
            }
          }

          this[2].__r_.__value_.__r.__words[2] = v20;
        }

        else
        {
          if (v29 != v20)
          {
            v31 = v29 - v20;
            v32 = v5[2].__r_.__value_.__l.__size_;
            do
            {
              std::string::operator=(v20++, v32++);
              v31 -= 24;
            }

            while (v31);
            v29 = this[2].__r_.__value_.__r.__words[2];
          }

          this[2].__r_.__value_.__r.__words[2] = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>((v22 + v30), v23, v29);
        }
      }

      v5 = (v5 + 80);
      this = (this + 80);
    }

    while (v5 != a2);
  }

  return this;
}

std::string *std::__copy_impl::operator()[abi:nn200100]<gdc::DebugTreeNode *,gdc::DebugTreeNode *,gdc::DebugTreeNode *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      if (this != v5)
      {
        std::vector<gdc::DebugTreeNode>::__assign_with_size[abi:nn200100]<gdc::DebugTreeNode*,gdc::DebugTreeNode*>(&this[2], v5[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v5[2].__r_.__value_.__l.__size_ - v5[2].__r_.__value_.__r.__words[0]) >> 5));
        std::vector<gdc::DebugTreeProperty>::__assign_with_size[abi:nn200100]<gdc::DebugTreeProperty*,gdc::DebugTreeProperty*>(&this[3], v5[3].__r_.__value_.__l.__data_, v5[3].__r_.__value_.__l.__size_, 0xCCCCCCCCCCCCCCCDLL * ((v5[3].__r_.__value_.__l.__size_ - v5[3].__r_.__value_.__r.__words[0]) >> 4));
      }

      this += 4;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return this;
}

void ggl::BuildingPointyRoofDepth::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Tile::Clipping>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::Clipping>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::NavLabelPart::~NavLabelPart(md::NavLabelPart *this)
{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::Logic<md::ARLabelsLogic,md::ARLabelsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARLabelsLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = gdc::Registry::storage<arComponents::Configuration>(*(a1 + 120));
  v6 = v5[7];
  v7 = v5[8];
  if (v6 != v7)
  {
    v8 = (v5[10] + 1);
    do
    {
      v9 = *v8;
      v8 += 2;
      if (v9 == 1)
      {
        *a4 = 1;
      }

      else
      {
        v10 = +[VKDebugSettings sharedSettings];
        *a4 = [v10 arShowAllLabels];
      }

      v6 += 8;
    }

    while (v6 != v7);
  }
}

uint64_t gdc::Registry::storage<arComponents::Configuration>(uint64_t a1)
{
  v3 = 0xAD7BA5E63AF64920;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xAD7BA5E63AF64920);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::Configuration>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 2;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 2);
    a1[11] -= 2;
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

void gdc::ComponentStorageWrapper<arComponents::Configuration>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::Configuration>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARLabelsLogic,md::ARLabelsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x8741E659406FCBBLL && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARLabelsLogic,md::ARLabelsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8741E659406FCBBLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 152))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLabelsLogic,md::ARLabelsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8741E659406FCBBLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLabelsLogic,md::ARLabelsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8741E659406FCBBLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 136))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLabelsLogic,md::ARLabelsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8741E659406FCBBLL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARLabelsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARLabelsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A011A8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C4077774924);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARLabelsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A011A8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4077774924);
  }

  return a1;
}

void md::ARLabelsLogic::~ARLabelsLogic(md::ARLabelsLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::LabelMarker::iconImageInfosForLabel(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelMarker::dataIconImageKeys(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::NavLabelMarker::coordinate(uint64_t a1@<X8>, id *a2@<X0>)
{
  md::NavLabelMarker::navLabel(&v16, a2);
  if (v16)
  {
    v3 = *(v16 + 160);
    if (v3)
    {
      (*(*v3 + 56))(v3);
      v7 = v6;
    }

    else
    {
      v4 = *(v16 + 112);
      v5 = *(v16 + 120);
      v7 = *(v16 + 128);
    }

    v9 = v4 * 6.28318531;
    v10 = exp(v5 * 6.28318531 + -3.14159265);
    v15 = atan(v10);
    v11 = fmod(v9, 6.28318531);
    v12 = fmod(v11 + 6.28318531, 6.28318531);
    v13.f64[0] = v15;
    v13.f64[1] = v12;
    v8 = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v13);
  }

  else
  {
    v8 = vdupq_n_s64(0xC066800000000000);
    v7 = 0x7FEFFFFFFFFFFFFFLL;
  }

  *a1 = v8;
  *(a1 + 16) = v7;
  v14 = v17;
  if (v17)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void sub_1B2DE17E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void md::NavLabelMarker::navLabel(md::NavLabelMarker *this, id *a2)
{
  if (!(*(*a2 + 21))(a2))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = md::NavLabelMarker::asRouteEtaFeature(a2);
  v8 = [v4 label];

  v5 = v8;
  if (!v8)
  {
LABEL_8:
    *this = 0;
    *(this + 1) = 0;
    goto LABEL_9;
  }

  if (!*[v8 label])
  {
    v5 = v8;
    goto LABEL_8;
  }

  v6 = [v8 label];
  v7 = v6[1];
  *this = *v6;
  *(this + 1) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v8;
LABEL_9:
}

id md::NavLabelMarker::asRouteEtaFeature(id *this)
{
  if ((*(*this + 21))(this))
  {
    WeakRetained = objc_loadWeakRetained(this + 36);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

float md::NavLabelMarker::screenCollisionBounds(id *this)
{
  md::LabelMarker::acquireDisplayLock(&v6, this);
  if (v6)
  {
    md::NavLabelMarker::navLabel(&v4, this);
    if (v4)
    {
      v2 = *(v4 + 424);
    }

    else
    {
      v2 = 3.4028e38;
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    v2 = 3.4028e38;
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v2;
}

void sub_1B2DE1A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::recursive_mutex *a13, char a14)
{
  if (a14)
  {
    std::recursive_mutex::unlock(a13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

float md::NavLabelMarker::calloutAnchorRect(id *this)
{
  md::LabelMarker::acquireDisplayLock(v6, this);
  v2 = 0.0;
  if ((*(*this + 58))(this))
  {
    md::NavLabelMarker::navLabel(&v4, this);
    if (v4)
    {
      v2 = *(v4 + 424);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v2;
}

void sub_1B2DE1B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::recursive_mutex *a13, char a14)
{
  if (a14 == 1)
  {
    std::recursive_mutex::unlock(a13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelMarker::featureHandles(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelMarker::transitSystems(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t md::NavLabelMarker::isVisible(id *this)
{
  md::LabelMarker::acquireDisplayLock(v7, this);
  md::NavLabelMarker::navLabel(&v5, this);
  if (v5 && *(v5 + 377) == 1 && *(v5 + 378) == 1 && (v2 = COERCE_FLOAT(atomic_load((v5 + 288))), v2 > 0.0))
  {
    v3 = *(v5 + 379);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v3 & 1;
}

void sub_1B2DE1CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, std::recursive_mutex *a13, char a14)
{
  if (a14 == 1)
  {
    std::recursive_mutex::unlock(a13);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::NavLabelMarker::isSelected(id *this)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  WeakRetained = objc_loadWeakRetained(this + 36);
  v3 = [WeakRetained isPicked];

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return v3;
}

void sub_1B2DE1D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

id md::NavLabelMarker::routeInfo(id *this)
{
  v1 = md::NavLabelMarker::asRouteEtaFeature(this);
  v2 = [v1 routeInfo];

  return v2;
}

void md::LabelMarker::locale(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelMarker::subtext(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelMarker::text(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelMarker::name(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::NavLabelMarker::~NavLabelMarker(id *this)
{
  *this = &unk_1F2A011D0;
  objc_storeWeak(this + 36, 0);
  objc_destroyWeak(this + 36);
  md::LabelMarker::~LabelMarker(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A011D0;
  objc_storeWeak(this + 36, 0);
  objc_destroyWeak(this + 36);

  md::LabelMarker::~LabelMarker(this);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
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

uint64_t md::NavLabelMarker::NavLabelMarker(uint64_t a1, uint64_t *a2, id *location, float a4)
{
  v8 = objc_loadWeakRetained(location);
  v9 = v8;
  if (v8)
  {
    if ([v8 isEtaFeature])
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F2A2C9C8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 1;
  *(a1 + 225) = v10;
  *(a1 + 232) = v12;
  *(a1 + 240) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 248) = a4;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 256) = 0;
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  else
  {
    *(a1 + 248) = a4;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 256) = 0;
  }

  *a1 = &unk_1F2A011D0;
  objc_copyWeak((a1 + 288), location);
  return a1;
}

void md::NavLabelMarker::setLabelPicked(id *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(this + 36);
  [WeakRetained setIsPicked:a2];
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Icon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Icon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Icon::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Icon::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Icon::IconMesh::~IconMesh(ggl::Icon::IconMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Icon::IconMesh::~IconMesh(ggl::Icon::IconMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Icon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Icon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Icon::IconPipelineSetup::~IconPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Icon::MaskedIconPipelineSetup::~MaskedIconPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Icon::WaypointPipelineSetup::~WaypointPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ggl::Icon::ShadowPipelineSetup::constantDataIsEnabled(ggl::Icon::ShadowPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 304);
      return v2 & 1;
    }

    if (a2 == 3)
    {
      return v2 & 1;
    }

LABEL_10:
    v2 = 0;
    return v2 & 1;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return v2 & 1;
    }

    goto LABEL_10;
  }

  v2 = *(*(this + 2) + 308);
  return v2 & 1;
}

void ggl::Icon::ShadowPipelineSetup::~ShadowPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOUpsamplePipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01CB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOUpsamplePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PostchainCommon::SsaoUpsampleParam>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::SsaoUpsampleParam>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOBlurPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOBlurPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PostchainCommon::SsaoBlurParam>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::SsaoBlurParam>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01B58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::DownsampleDepthPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01B20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::DownsampleDepthPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::SSAOPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,ggl::zone_mallocator>>>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::PostchainCommon::SSAOConstants>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::TentBlurPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A019E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::TentBlurPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A019B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::BGBlurPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::FGBlurPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::BGBlurPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::FGBlurPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A018D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::DownsampleCoCPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::DownsampleCoCPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::DepthSplitPipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01828;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::DepthSplitPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A017F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::CompositePipelineSetup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A017B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::StandardPostchain::CompositePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PostchainCommon::CameraProperties>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PostchainCommon::CameraProperties>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Glow::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Glow::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Glow::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Glow::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Glow::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Glow::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A01DC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Glow::MeshMesh::~MeshMesh(ggl::Glow::MeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Glow::MeshMesh::~MeshMesh(ggl::Glow::MeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Glow::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Glow::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glow::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::OverlayLineLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v30, "OverlayLine");
  md::LineLabelFeature::debugRoadString(__p, a1, a2, a3, a4, v30);
  if ((v20 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v11 = v20;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v10, v11);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    v13 = v30[0];
    v14 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  if ((v28 & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v16 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v15 = 0;
      a5[23] = 0;
      goto LABEL_24;
    }

    locale = v23[1].__locale_;
    v16 = v23[3].__locale_;
  }

  v15 = v16 - locale;
  if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a5[23] = v15;
  if (v15)
  {
    memmove(a5, locale, v15);
  }

LABEL_24:
  a5[v15] = 0;
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v29);
}