void sub_1B2EE1D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::vector<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo,std::allocator<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo>>::~vector[abi:nn200100](&a53);
  operator delete(__p);
  if (a65)
  {
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void md::StyleTexture<md::TransitLineSegment::StylePixel>::_processStylePixelsIfNecessary(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == 1)
  {
    v5 = 1;
    v3 = 1;
    v1 = 0;
    v2 = 1065353216;
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,float,ggl::Filter,ggl::Filter,ggl::Filter,0>(&v4, &v5, &v3, &v2, (a1 + 92), (a1 + 92), &v1);
  }
}

void sub_1B2EE2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  MEMORY[0x1B8C62190](v19, 0x10F1C40BE47B5E1);
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(a1);
}

void md::TransitTileData::appendNodesAttachedToLines(int8x8_t *result, void *a2, mdm::zone_mallocator *a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = result[159];
      if (v6)
      {
        v7 = v4[2];
        v8 = vcnt_s8(v6);
        v8.i16[0] = vaddlv_u8(v8);
        if (v8.u32[0] > 1uLL)
        {
          v9 = v4[2];
          if (v7 >= *&v6)
          {
            v9 = v7 % *&v6;
          }
        }

        else
        {
          v9 = (*&v6 - 1) & v7;
        }

        v10 = *(*&result[158] + 8 * v9);
        if (v10)
        {
          for (i = *v10; i; i = *i)
          {
            v12 = i[1];
            if (v7 == v12)
            {
              if (i[2] == v7)
              {
                for (j = i[5]; j; j = *j)
                {
                  v14 = *(*(j[2] + 8) + 40);
                  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(a3, v14, &v14);
                }

                break;
              }
            }

            else
            {
              if (v8.u32[0] > 1uLL)
              {
                if (v12 >= *&v6)
                {
                  v12 %= *&v6;
                }
              }

              else
              {
                v12 &= *&v6 - 1;
              }

              if (v12 != v9)
              {
                break;
              }
            }
          }
        }
      }

      v4 = *v4;
    }

    while (v4);
  }
}

uint64_t md::TransitTileData::setSelectedLines(uint64_t result, void *a2)
{
  v2 = *(result + 896);
  v22 = *(result + 904);
  if (v2 != v22)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 80);
      v6 = *(v2 + 88);
      while (v5 != v6)
      {
        v7 = *(*v5 + 8);
        result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2, *(*(v7 + 16) + 40));
        v8 = *(v7 + 88);
        if ((result != 0) != v8)
        {
          v9 = result != 0;
          *(v4 + 1376) = 1;
          if (v8 != v9)
          {
            *(v7 + 88) = v9;
            v10 = *(v7 + 64);
            v11 = *(v7 + 72);
            if (v10 != v11)
            {
              v12 = 0;
              v13 = (v11 - v10 - 184) / 0xB8uLL;
              v14 = vdupq_n_s64(v13);
              do
              {
                v15 = vdupq_n_s64(v12);
                v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0560)));
                if (vuzp1_s8(vuzp1_s16(v16, *v14.i8), *v14.i8).u8[0])
                {
                  v10[176] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v16, *&v14), *&v14).i8[1])
                {
                  v10[360] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0550)))), *&v14).i8[2])
                {
                  v10[544] = 1;
                  v10[728] = 1;
                }

                v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0C10)));
                if (vuzp1_s8(*&v14, vuzp1_s16(v17, *&v14)).i32[1])
                {
                  v10[912] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(v17, *&v14)).i8[5])
                {
                  v10[1096] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B0C00))))).i8[6])
                {
                  v10[1280] = 1;
                  v10[1464] = 1;
                }

                v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B13A0)));
                if (vuzp1_s8(vuzp1_s16(v18, *v14.i8), *v14.i8).u8[0])
                {
                  v10[1648] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v18, *&v14), *&v14).i8[1])
                {
                  v10[1832] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B1390)))), *&v14).i8[2])
                {
                  v10[2016] = 1;
                  v10[2200] = 1;
                }

                v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B1380)));
                if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i32[1])
                {
                  v10[2384] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(v19, *&v14)).i8[5])
                {
                  v10[2568] = 1;
                }

                if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v15, xmmword_1B33B1370))))).i8[6])
                {
                  v10[2752] = 1;
                  v10[2936] = 1;
                }

                v12 += 16;
                v10 += 2944;
              }

              while (((v13 + 16) & 0x3FFFFFFFFFFFFF0) != v12);
            }

            v20 = 0;
            do
            {
              v21 = v20;
              md::TransitLine::updateFeatureQueryForMergeTypeIfNecessary(v7, v20++);
            }

            while (v21 < 3);
            result = md::TransitLine::resolveStyleIfNecessary(v7, 0);
          }
        }

        v5 += 8;
      }

      v2 += 248;
    }

    while (v2 != v22);
  }

  return result;
}

uint64_t *md::TransitTileData::setSelectedNodes(uint64_t *result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      v5 += 2;
      result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a3, *(*(v6 + 8) + 40));
      *(v6 + 63) = result != 0;
    }

    while (v5 != a2);
  }

  return result;
}

void *md::TransitItemMarkerImpl<md::TransitDisplayConnection>::debugDraw(uint64_t a1, float32x2_t *a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 16);
  v11[0] = **(a1 + 8);
  v11[1] = a3;
  v12 = a4;
  result = *v4;
  if (*(*v4 + 88))
  {
    v7 = 0;
    do
    {
      v16 = 0;
      Points = geo::codec::pBTransitStationTransferGetPoints(result, v7, &v16);
      if (Points && v16)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        md::HighlightHelper::tileToScreenPoints(v11, Points, v16, &__p);
        ggl::DebugConsole::drawLineStrip(a2, __p, (v14 - __p) >> 3);
        v9 = __p;
        a2[1].i32[0] = *__p;
        a2[1].i32[1] = v9[1];
        ggl::DebugConsole::drawSymbol(a2, 4);
        v10 = v14;
        a2[1].i32[0] = *(v14 - 2);
        a2[1].i32[1] = *(v10 - 1);
        ggl::DebugConsole::drawSymbol(a2, 2);
        if (__p)
        {
          v14 = __p;
          operator delete(__p);
        }
      }

      ++v7;
      result = *v4;
    }

    while (v7 < *(*v4 + 88));
  }

  return result;
}

void sub_1B2EE2B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id md::TransitItemMarkerImpl<md::TransitDisplayConnection>::debugString(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Display connection>\n"];
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v13, v3, v4);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v16 == 1)
    {
      v6 = v13[3];
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = "";
      if (v7)
      {
        v10 = *(v7 + 104);
        if (v10)
        {
          v9 = v10;
        }
      }

      [v2 appendFormat:@"  Style:%s\n", v9];
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    v11 = md::HighlightHelper::debugAttributesToString((*(v1 + 8) + 240), v5);
    [v2 appendFormat:@"  Attrs:{%@}\n", v11];

    if (v16 == 1)
    {
      (*(*v13 + 56))(v13);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }
  }

  [v2 appendFormat:@"  FeatureZoom: Min=%.2f Max=%.2f\n", *(v1 + 24), *(v1 + 28)];

  return v2;
}

void sub_1B2EE2CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  v18 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  if (a16 == 1)
  {
    (*(*a12 + 56))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::TransitItemMarkerImpl<md::TransitDisplayConnection>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FC38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitItemMarkerImpl<md::TransitLink>::debugDraw(uint64_t a1, float32x2_t *a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  v37[0] = **(a1 + 8);
  v37[1] = a3;
  v38 = a4;
  v6 = *v5;
  if (*(*v5 + 20))
  {
    v7 = 0;
    do
    {
      v43 = 0;
      v8 = geo::codec::transitLinkPoints(v6, v7, &v43);
      if (v43 >= 2)
      {
        __p = 0;
        v41 = 0;
        v42 = 0;
        md::HighlightHelper::tileToScreenPoints(v37, v8, v43, &__p);
        ggl::DebugConsole::drawLineStrip(a2, __p, (v41 - __p) >> 3);
        v9 = *__p;
        v39 = *(v41 - 1);
        a2[1] = v9;
        ggl::DebugConsole::drawLine(a2, &v39, v9.f32[0]);
        v10 = __p;
        a2[1].i32[0] = *__p;
        a2[1].i32[1] = v10[1];
        ggl::DebugConsole::drawSymbol(a2, 3);
        v11 = v41;
        a2[1].i32[0] = *(v41 - 2);
        a2[1].i32[1] = *(v11 - 1);
        ggl::DebugConsole::drawSymbol(a2, 4);
        if (__p)
        {
          v41 = __p;
          operator delete(__p);
        }
      }

      ++v7;
      v6 = *v5;
    }

    while (v7 < *(*v5 + 20));
  }

  v12 = 0;
  v13 = 0;
  v14 = v5 + 236;
  v15 = 1;
  do
  {
    v16 = v15;
    if (*&v14[4 * v13] == 0.0)
    {
      goto LABEL_29;
    }

    __p = 0;
    v41 = 0;
    v42 = 0;
    md::TransitLink::populateEndPoints(*v5, v15 & 1, &__p);
    v17 = __p;
    if (__p != v41)
    {
      v18 = *&v14[4 * v13];
      v19 = (v41 - __p) >> 3;
      v20 = 0.0;
      if (v19 >= 2)
      {
        v21 = v19 - 1;
        v22 = (__p + 8);
        v23 = 0.0;
        while (1)
        {
          v24 = *(v22 - 2);
          v25 = *(v22 - 1);
          v26 = v22[1];
          v27 = sqrtf(((v24 - *v22) * (v24 - *v22)) + ((v25 - v26) * (v25 - v26)));
          v20 = v27 + v23;
          if ((v27 + v23) >= v18)
          {
            break;
          }

          v22 += 2;
          v23 = v27 + v23;
          if (!--v21)
          {
            goto LABEL_14;
          }
        }

        if (v27 == 0.0)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = (v18 - v23) / v27;
        }

        v29 = v24 + (v30 * (*v22 - v24));
        v28 = COERCE_UNSIGNED_INT(v25 + (v30 * (v26 - v25)));
        goto LABEL_20;
      }

LABEL_14:
      if (vabds_f32(v18, v20) <= 0.00000011921)
      {
        v29 = *(v41 - 2);
        v28 = *(v41 - 1);
LABEL_20:
        v31 = v12 >> 3;
        if (((v12 >> 3) + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v12 >> 3 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v12 >> 3) + 1);
        }

        *(8 * v31) = LODWORD(v29) | (v28 << 32);
        if (v12)
        {
          v32 = 0;
          v33 = 0;
          do
          {
            v34 = *v32++;
            *v33++ = v34;
          }

          while (v32 != v12);
        }

        v12 = 8 * v31 + 8;
        v17 = __p;
      }
    }

    if (v17)
    {
      operator delete(v17);
    }

LABEL_29:
    v15 = 0;
    v13 = 1;
  }

  while ((v16 & 1) != 0);
  if (v12)
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
    md::HighlightHelper::tileToScreenPoints(v37, 0, v12 >> 3, &__p);
    v35 = __p;
    v36 = v41;
    if (__p != v41)
    {
      do
      {
        a2[1].i32[0] = *v35;
        a2[1].i32[1] = v35[1];
        ggl::DebugConsole::drawSymbol(a2, 1);
        v35 += 2;
      }

      while (v35 != v36);
      v35 = __p;
    }

    if (v35)
    {
      v41 = v35;
      operator delete(v35);
    }
  }
}

void sub_1B2EE31D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

NSString *md::TransitItemMarkerImpl<md::TransitLink>::debugString(uint64_t a1, int a2)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Link:%p>\n", v3];
  v5 = v4;
  if (a2)
  {
    v6 = 200;
  }

  else
  {
    v6 = 5;
  }

  v48 = v6;
  [(NSString *)v4 appendString:@"EaseRegions: "];
  v7 = v3[54];
  v8 = v3[55];
  if (v7 == v8)
  {
    [(NSString *)v5 appendString:@"start=(none)"];
  }

  else
  {
    [(NSString *)v5 appendFormat:@"start=(%.2f:%.2f)[cl:%.2f]", v7, v8, v3[59]];
  }

  v9 = v3[56];
  v10 = v3[57];
  if (v9 == v10)
  {
    [(NSString *)v5 appendString:@" end=(none)\n"];
  }

  else
  {
    [(NSString *)v5 appendFormat:@" end=(%.2f:%.2f)[cl:%.2f]\n", v9, v10, v3[60]];
  }

  [(NSString *)v5 appendFormat:@"NodeID From=%llu To=%llu\n", *(*v3 + 56), *(*v3 + 64)];
  v11 = *(*(v3 + 1) + 1704);
  [(NSString *)v5 appendFormat:@"Sections:\n"];
  v13 = *(v3 + 7);
  v12 = *(v3 + 8);
  if (v13 != v12)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x1E696AD60] string];
      [v15 appendFormat:@"validPoint=%i validTangent=%i offset=%.2f offsetOutside = %.2f length=%.2f\n", *(v13 + 92), *(v13 + 93), *(v13 + 80), *(v13 + 84), *(v13 + 88)];
      v16 = 0;
      v49[0] = v13;
      v49[1] = v13 + 40;
      do
      {
        v17 = v49[v16];
        v18 = *(v17 + 16);
        v19 = *(v17 + 20);
        v20 = atan2f(*(v17 + 4), *v17) * 57.2957795;
        v21 = atan2f(*(v17 + 12), *(v17 + 8)) * 57.2957795;
        [v15 appendFormat:@"    pt=(%f, %f) tngt, nrml=(%.2f, %.2f) jctn=%p type=%i sr=%i\n", *&v18, *&v19, v20, v21, *(v17 + 24), *(v17 + 32), *(v17 + 34)];
        ++v16;
      }

      while (v16 != 2);
      [(NSString *)v5 appendFormat:@"  %i:%@", v14, v15];

      if (v11)
      {
        v22 = (v11 + 8 * *(*v3 + 16) + 8 * v14);
        v23 = v22[1];
        if (*v22 == 0.0)
        {
          v24 = -1.0;
        }

        else
        {
          v24 = *v22;
        }

        if (v23 == 1.0)
        {
          v25 = -1.0;
        }

        else
        {
          v25 = v23;
        }

        [(NSString *)v5 appendFormat:@"    geoSection: start=%.2f end=%.2f\n", *&v24, *&v25];
      }

      ++v14;
      v13 += 96;
    }

    while (v13 != v12);
  }

  [(NSString *)v5 appendFormat:@"MergedLines:\n"];
  v27 = *(v3 + 13);
  v26 = *(v3 + 14);
  if (v27 == v26)
  {
    LODWORD(v28) = 0;
  }

  else
  {
    v28 = 0;
    while (v48 != v28)
    {
      v29 = *v27;
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%llu, %s, %s", (**v27)[2][5], md::TransitLine::debugSystemName(**v27), (**v27)[2][2]];
      [(NSString *)v5 appendFormat:@"  %i:%@\n", v28, v30];

      v31 = md::TransitLine::debugString(*v29, *(v29 + 52));
      md::HighlightHelper::appendLinesUsingPrefix(@"    ", v31, v5, v32);

      v33 = md::TransitLineSegment::debugString(v29);
      md::HighlightHelper::appendLinesUsingPrefix(@"    ", v33, v5, v34);

      v28 = (v28 + 1);
      if (++v27 == v26)
      {
        goto LABEL_30;
      }
    }

    [(NSString *)v5 appendString:@"  Lines Truncated...\n"];
    LODWORD(v28) = v48;
  }

LABEL_30:
  if (*(v3 + 11) - *(v3 + 10) > *(v3 + 14) - *(v3 + 13))
  {
    [(NSString *)v5 appendFormat:@"CollapsedLines:\n"];
    v35 = *(v3 + 10);
    v36 = *(v3 + 11);
    if (v35 != v36)
    {
      v37 = 0;
      do
      {
        if (*v35)
        {
          v38 = (*v35 + 8);
        }

        else
        {
          v38 = 0;
        }

        if (*(v38 + 55) == 1)
        {
          if (v28 >= v48)
          {
            [(NSString *)v5 appendString:@"  Lines Truncated...\n"];
            break;
          }

          v39 = v38[10];
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%llu, %s, %s", *(*(*v38 + 16) + 40), md::TransitLine::debugSystemName(*v38), *(*(*v38 + 16) + 16)];
          [(NSString *)v5 appendFormat:@"  %i:MergedLine:%i %@\n", v37, v39, v40];

          if (*v35)
          {
            v41 = *v35 + 8;
          }

          else
          {
            v41 = 0;
          }

          v42 = md::TransitLine::debugString(*v41, *(v41 + 52));
          md::HighlightHelper::appendLinesUsingPrefix(@"    ", v42, v5, v43);

          if (*v35)
          {
            v44 = (*v35 + 8);
          }

          else
          {
            v44 = 0;
          }

          v45 = md::TransitLineSegment::debugString(v44);
          md::HighlightHelper::appendLinesUsingPrefix(@"    ", v45, v5, v46);

          v37 = (v37 + 1);
          LODWORD(v28) = v28 + 1;
        }

        ++v35;
      }

      while (v35 != v36);
    }
  }

  return v5;
}

void std::__shared_ptr_emplace<md::TransitItemMarkerImpl<md::TransitLink>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TransitItemMarkerImpl<md::TransitJunction>::debugDraw(uint64_t a1, float32x2_t *a2, uint64_t a3, char a4)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v25[0] = **(a1 + 8);
  v25[1] = a3;
  v26 = a4;
  if (*(v5 + 82) == 1)
  {
    __p = 0;
    v29 = 0;
    v30 = 0;
    md::HighlightHelper::tileToScreenPoints(v25, v5 + 16, 1uLL, &__p);
    v6 = __p;
    a2[1].i32[0] = *__p;
    a2[1].i32[1] = v6[1];
    ggl::DebugConsole::drawSymbol(a2, 1);
    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }
  }

  v7 = 0;
  v32[0] = v5 + 24;
  v32[1] = v5 + 48;
  do
  {
    v8 = v32[v7];
    v11 = *v8;
    v9 = v8 + 1;
    v10 = v11;
    if (v11 != v9)
    {
      while (1)
      {
        v12 = v10[4];
        v13 = *v12;
        if (*(*v12 + 20))
        {
          break;
        }

LABEL_22:
        v22 = v10[1];
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = v10[2];
            v24 = *v23 == v10;
            v10 = v23;
          }

          while (!v24);
        }

        v10 = v23;
        if (v23 == v9)
        {
          goto LABEL_28;
        }
      }

      v14 = 0;
      if (v12 == *(v5 + 72))
      {
        v15 = 2;
      }

      else
      {
        v15 = 4;
      }

      if (v12 == *(v5 + 72))
      {
        v16 = 1;
      }

      else
      {
        v16 = 3;
      }

      while (1)
      {
        v31 = 0;
        v17 = geo::codec::transitLinkPoints(v13, v14, &v31);
        if (v31 >= 2)
        {
          break;
        }

LABEL_21:
        ++v14;
        v13 = *v12;
        if (v14 >= *(*v12 + 20))
        {
          goto LABEL_22;
        }
      }

      __p = 0;
      v29 = 0;
      v30 = 0;
      md::HighlightHelper::tileToScreenPoints(v25, v17, v31, &__p);
      ggl::DebugConsole::drawLineStrip(a2, __p, (v29 - __p) >> 3);
      v18 = *__p;
      v27 = *(v29 - 1);
      a2[1] = v18;
      ggl::DebugConsole::drawLine(a2, &v27, v18.f32[0]);
      if (*(v12[8] - 32) == v5)
      {
        v20 = (__p + 4);
        a2[1].i32[0] = *__p;
        v21 = v16;
      }

      else
      {
        if (*(v12[7] + 24) != v5)
        {
          goto LABEL_19;
        }

        v19 = v29;
        a2[1].i32[0] = *(v29 - 2);
        v20 = (v19 - 4);
        v21 = v15;
      }

      a2[1].i32[1] = *v20;
      ggl::DebugConsole::drawSymbol(a2, v21);
LABEL_19:
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }

      goto LABEL_21;
    }

LABEL_28:
    ++v7;
  }

  while (v7 != 2);
}

void sub_1B2EE3B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSString *md::TransitItemMarkerImpl<md::TransitJunction>::debugString(uint64_t a1, int a2)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<Junction:%p>\n", v3];
  [(NSString *)v4 appendFormat:@"point=(%f, %f)\n", *(v3 + 16), *(v3 + 20)];
  DominantLinkDirection = md::TransitJunction::findDominantLinkDirection(v3);
  v7 = atan2f(v6, DominantLinkDirection) * 57.2957795;
  [(NSString *)v4 appendFormat:@"RefLink:%p, isSuperSet:%i, domDir:%.1f\n", *(v3 + 72), *(v3 + 81), v7];
  [(NSString *)v4 appendFormat:@"Links:\n"];
  v8 = 0;
  v9 = 0;
  v38[0] = v3 + 24;
  v38[1] = v3 + 48;
  if (a2)
  {
    v10 = 200;
  }

  else
  {
    v10 = 10;
  }

  v37 = v10;
  v35 = v4;
  do
  {
    v11 = *(v38 + v9);
    v12 = *v11;
    v33 = v9;
    v34 = v11 + 1;
    if (*v11 != v11 + 1)
    {
      v13 = v11 == (v3 + 24);
      v14 = 44;
      if (v13)
      {
        v14 = 48;
      }

      v36 = v14;
      do
      {
        v15 = v12[4];
        if (*(*v15 + 40) == *(v3 + 8))
        {
          v16 = **(v15 + 56);
        }

        else
        {
          v16 = vneg_f32(*(*(v15 + 64) - 56));
        }

        v17 = atan2f(v16.f32[1], v16.f32[0]) * 57.2957795;
        v18 = vabds_f32(v17, v7);
        [(NSString *)v35 appendFormat:@"  %i:%p, dir:%.02f, domDelta:%.1f\n", v8, v15, v17, fminf(360.0 - v18, v18)];
        v19 = [MEMORY[0x1E696AD60] string];
        [(NSString *)v19 appendFormat:@"MergedLines:\n"];
        v21 = *(v15 + 104);
        v22 = *(v15 + 112);
        if (v21 != v22)
        {
          v23 = 0;
          while (v37 != v23)
          {
            v24 = *v21;
            v25 = *(*v21 + v36);
            v26 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>((v3 + 128), *v21);
            v27 = 999.0;
            if (v26)
            {
              v28 = atan2f(v26[7], v26[6]) * 57.2957795;
              v27 = v28;
            }

            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%llu, %s, %s", (*v24)[2][5], md::TransitLine::debugSystemName(*v24), (*v24)[2][2]];
            [(NSString *)v19 appendFormat:@" %i:%@, slot:%d normal:%.02f\n", v23, v29, v25, *&v27];

            v23 = (v23 + 1);
            if (++v21 == v22)
            {
              goto LABEL_20;
            }
          }

          [(NSString *)v19 appendString:@" Lines Truncated...\n"];
        }

LABEL_20:
        v4 = v35;
        md::HighlightHelper::appendLinesUsingPrefix(@"   ", v19, v35, v20);

        v30 = v12[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v12[2];
            v13 = *v31 == v12;
            v12 = v31;
          }

          while (!v13);
        }

        v8 = (v8 + 1);
        v12 = v31;
      }

      while (v31 != v34);
    }

    v9 = v33 + 8;
  }

  while (v33 != 8);

  return v4;
}

void std::__shared_ptr_emplace<md::TransitItemMarkerImpl<md::TransitJunction>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelRoute::LabelRoute(id *this, GEOComposedRoute *a2, char a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(this, a2);
  v5[12] = 0;
  *(v5 + 24) = a3;
  v5[4] = 0;
  v6 = (v5 + 4);
  v5[5] = 0;
  v5[6] = 0;
  v5[8] = 0;
  v7 = (v5 + 8);
  v5[9] = 0;
  v5[10] = 0;
  v8 = [v5[1] pointCount];
  v9 = v8;
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::resize(v6, v8);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::resize(v7, v8);
  if (v8)
  {
    v11 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v36 = _Q0;
    do
    {
      v17 = this[1];
      [v17 pointAt:v11];
      v37 = v18;
      v20 = v19;
      v22 = v21;

      v23 = tan(v20 * 0.00872664626 + 0.785398163);
      v24 = log(v23);
      v25 = *v6;
      v26.f64[0] = v37;
      v26.f64[1] = v24;
      *(*v6 + 16 * v11) = vmlaq_f64(v36, xmmword_1B33B0700, v26);
      if (v22 == 1.79769313e308)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v22;
      }

      v28 = v27;
      *(*v7 + 4 * v11++) = v28;
    }

    while (v9 != v11);
  }

  else
  {
    v25 = *v6;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v29 = this[5];
  v38[4] = v42;
  v30 = mdm::zone_mallocator::instance(v10);
  v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(v30, 1);
  *v31 = ((v29 - v25) << 28) & 0xFFFFFFFF00000000;
  v32 = (v31 + 1);
  v33 = v31 - (v40 - v39);
  memcpy(v33, v39, v40 - v39);
  v34 = v39;
  v35 = v41;
  v39 = v33;
  v40 = v32;
  v41 = v32;
  v38[2] = v34;
  v38[3] = v35;
  v38[0] = v34;
  v38[1] = v34;
  std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(v38);
  v40 = v32;
  operator new();
}

void sub_1B2EE5590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  MEMORY[0x1B8C62190](v23, 0x60C40DCD2FBCELL, a3, a4, a5, a6, a7, a8);
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::unique_ptr<md::LabelRouteCollisionInfo>::reset[abi:nn200100](v21, 0);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v22);
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v20);
  *v19 = &unk_1F2A4C308;

  _Unwind_Resume(a1);
}

void md::LabelRoute::~LabelRoute(md::LabelRoute *this)
{
  std::unique_ptr<md::LabelRouteCollisionInfo>::reset[abi:nn200100](this + 12, 0);
  std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 64));
  std::vector<geo::Mercator2<double>,geo::allocator_adapter<geo::Mercator2<double>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 32));
  *this = &unk_1F2A4C308;
}

void ggl::FlyoverNight::FlyoverPipelineSetup::~FlyoverPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::FlyoverNight::FlyoverPolarPipelineSetup::~FlyoverPolarPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Hillshade::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v7 = geo::codec::VectorTile::polygonsCount(*(v4 + 96), *(v4 + 104));
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 648) + 96) + (i << 7);
        v16 = v10;
        v11 = *(v10 + 96);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            v15 = 0;
            v13 = geo::codec::multiSectionFeaturePoints(v10, j, &v15);
            if (VKPointInPolygon(v13, v15, *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>(&v14, &v16);
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2EE59DC(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v5 + 392), 1);
  }
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  for (i = a1[103]; i; i = *i)
  {
    v5 = i[4];
    [v5 updateCachedStyles];
  }

  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  for (j = *v6; j != v7; j += 24)
  {
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10, j);
    if (a2 == 1)
    {
      v9 = v11;
      [v9 setNeedsTextureUpdate];
    }

    v10 = off_1F2A4E798;
  }
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::prepare(_BYTE *a1)
{
  result = (*(*a1 + 104))(a1);
  v3 = a1[49];
  a1[481] = v3 - a1[48] + 2;
  a1[480] = v3 + 1;
  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v4 = *a3;
  if (((*(result + 422) | (*(result + 424) << 16)) & 0x10000) != 0 && v4 == *(result + 422) && a3[1] == HIBYTE(*(result + 422)))
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 904), 0);
    *(*(v3 + 368) + 912) = result - *(v3 + 48);
    return result;
  }

  if (((*(result + 425) | (*(result + 427) << 16)) & 0x10000) != 0)
  {
    v5 = a3[1];
    if (v4 == *(result + 425) && v5 == HIBYTE(*(result + 425)))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 928), 0);
      *(*(v3 + 368) + 936) = result - *(v3 + 48);
      return result;
    }
  }

  else
  {
    v5 = a3[1];
  }

  v7 = 0;
  for (i = (result + 417); v4 != *(i - 1) || v5 != *i; i += 2)
  {
    if (++v7 == 3)
    {
      return result;
    }
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 8 * v7 + 872), 0);
  *(*(v3 + 368) + 2 * v7 + 896) = result - *(v3 + 48);
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(void *a1, uint64_t a2)
{
  mach_absolute_time();
  v4 = a1[34];
  v5 = a1[35];
  v6 = *(a2 + 8);
  gdc::Context::get<md::StyleLogicContext>(v6);
  v7 = gdc::Context::context<md::TransitContext>(v6);
  gdc::Context::context<md::PolygonContext>(v6);
  if (v7 && *(v7 + 312) == 1)
  {
    while (v4 != v5)
    {
      md::updatePolyonGroupsTransitNodeRouteAttributes(*(*v4 + 392), v7[36], (v7 + 29));
      v4 += 8;
    }

    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1[5] + 96) + 41928) + 16), 0x1BCA10CB9934FB1BuLL)[5] + 544) = 0;
  }

  operator new();
}

void sub_1B2EE6534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory((v35 - 176));
  v37 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v37) + 32) + 120), v37 - a9);
  _Unwind_Resume(a1);
}

void *gdc::Context::context<md::TransitContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xFD5D5EC7C4E1E43ELL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xFD5D5EC7C4E1E43ELL)
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

void md::updatePolyonGroupsTransitNodeRouteAttributes(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 808), v5[2]);
      if (v6)
      {
        v7 = v6[4];
        [v7 clearRouteAttributes];
      }

      v5 = *v5;
    }

    while (v5);
  }

  for (i = *(a3 + 16); i; i = *i)
  {
    v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 808), i[2]);
    if (v9)
    {
      v10 = v9[4];
      [v10 setRouteAttributes:i + 3];
    }
  }
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonFill::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
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
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::MeshPipelineSetup *>(v13, v12);
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
    std::__split_buffer<ggl::PolygonFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonFill::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonFill::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonFill::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 1)
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 16);
        **(a1 + 8) = 1;
        v8 = *v7;
        v9 = v7[1];
        while (v8 != v9)
        {
          v10 = *v8++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v10 + 392), 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 16);
      **(a1 + 8) = 1;
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20++;
        md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v22 + 392), 1);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(a1 + 16);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = *v12++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v14 + 392), 0);
        }

        break;
      case 3u:
        v15 = *(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = *v16++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v18 + 392), 1);
        }

        break;
      case 4u:
        v3 = *(a1 + 16);
        v4 = *v3;
        v5 = v3[1];
        while (v4 != v5)
        {
          v6 = *v4++;
          md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v6 + 392), 1);
        }

        break;
    }
  }
}

__n128 std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)59,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A10188;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v7 = geo::codec::VectorTile::polygonsCount(*(v4 + 96), *(v4 + 104));
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 648) + 96) + (i << 7);
        v16 = v10;
        v11 = *(v10 + 96);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            v15 = 0;
            v13 = geo::codec::multiSectionFeaturePoints(v10, j, &v15);
            if (VKPointInPolygon(v13, v15, *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>(&v14, &v16);
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2EE6C74(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v5 + 392), 1);
  }
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  for (i = a1[103]; i; i = *i)
  {
    v5 = i[4];
    [v5 updateCachedStyles];
  }

  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  for (j = *v6; j != v7; j += 24)
  {
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10, j);
    if (a2 == 1)
    {
      v9 = v11;
      [v9 setNeedsTextureUpdate];
    }

    v10 = off_1F2A4E798;
  }
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::prepare(_BYTE *a1)
{
  result = (*(*a1 + 104))(a1);
  v3 = a1[49];
  a1[481] = v3 - a1[48] + 2;
  a1[480] = v3 + 1;
  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v4 = *a3;
  if (((*(result + 422) | (*(result + 424) << 16)) & 0x10000) != 0 && v4 == *(result + 422) && a3[1] == HIBYTE(*(result + 422)))
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 904), 0);
    *(*(v3 + 368) + 912) = result - *(v3 + 48);
    return result;
  }

  if (((*(result + 425) | (*(result + 427) << 16)) & 0x10000) != 0)
  {
    v5 = a3[1];
    if (v4 == *(result + 425) && v5 == HIBYTE(*(result + 425)))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 928), 0);
      *(*(v3 + 368) + 936) = result - *(v3 + 48);
      return result;
    }
  }

  else
  {
    v5 = a3[1];
  }

  v7 = 0;
  for (i = (result + 417); v4 != *(i - 1) || v5 != *i; i += 2)
  {
    if (++v7 == 3)
    {
      return result;
    }
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 8 * v7 + 872), 0);
  *(*(v3 + 368) + 2 * v7 + 896) = result - *(v3 + 48);
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(void *a1, uint64_t a2)
{
  mach_absolute_time();
  v4 = a1[34];
  v5 = a1[35];
  v6 = *(a2 + 8);
  gdc::Context::get<md::StyleLogicContext>(v6);
  v7 = gdc::Context::context<md::TransitContext>(v6);
  gdc::Context::context<md::PolygonContext>(v6);
  if (v7 && *(v7 + 312) == 1)
  {
    while (v4 != v5)
    {
      md::updatePolyonGroupsTransitNodeRouteAttributes(*(*v4 + 392), v7[36], (v7 + 29));
      v4 += 8;
    }

    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1[5] + 96) + 41928) + 16), 0x1BCA10CB9934FB1BuLL)[5] + 544) = 0;
  }

  operator new();
}

void sub_1B2EE77CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory((v35 - 176));
  v37 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v37) + 32) + 120), v37 - a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 1)
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 16);
        **(a1 + 8) = 1;
        v8 = *v7;
        v9 = v7[1];
        while (v8 != v9)
        {
          v10 = *v8++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v10 + 392), 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 16);
      **(a1 + 8) = 1;
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20++;
        md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v22 + 392), 1);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(a1 + 16);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = *v12++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v14 + 392), 0);
        }

        break;
      case 3u:
        v15 = *(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = *v16++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v18 + 392), 1);
        }

        break;
      case 4u:
        v3 = *(a1 + 16);
        v4 = *v3;
        v5 = v3[1];
        while (v4 != v5)
        {
          v6 = *v4++;
          md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v6 + 392), 1);
        }

        break;
    }
  }
}

__n128 std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A10050;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::featureMarker(uint64_t a1@<X1>, double *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 648);
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    v7 = geo::codec::VectorTile::polygonsCount(*(v4 + 96), *(v4 + 104));
    if (v7)
    {
      v8 = v7;
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 648) + 96) + (i << 7);
        v16 = v10;
        v11 = *(v10 + 96);
        if (v11)
        {
          for (j = 0; j != v11; ++j)
          {
            v15 = 0;
            v13 = geo::codec::multiSectionFeaturePoints(v10, j, &v15);
            if (VKPointInPolygon(v13, v15, *a2, a2[1]))
            {
              std::allocate_shared[abi:nn200100]<md::VectorFeatureMarker,std::allocator<md::VectorFeatureMarker>,GeoCodecsPolygonFeature *&,0>(&v14, &v16);
            }
          }

          a3[1] = 0;
        }

        *a3 = 0;
      }
    }
  }
}

void sub_1B2EE7B94(_Unwind_Exception *exception_object)
{
  *v1 = 0;
  v1[1] = v2;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::renderablesWillEnterView(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = a3[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v5 + 392), 1);
  }
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  for (i = a1[103]; i; i = *i)
  {
    v5 = i[4];
    [v5 updateCachedStyles];
  }

  v6 = (*(*a1 + 48))(a1);
  v7 = v6[1];
  for (j = *v6; j != v7; j += 24)
  {
    geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v10, j);
    if (a2 == 1)
    {
      v9 = v11;
      [v9 setNeedsTextureUpdate];
    }

    v10 = off_1F2A4E798;
  }
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::prepare(_BYTE *a1)
{
  result = (*(*a1 + 104))(a1);
  v3 = a1[49];
  a1[481] = v3 - a1[48] + 2;
  a1[480] = v3 + 1;
  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::reserveStencilRange(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v4 = *a3;
  if (((*(result + 422) | (*(result + 424) << 16)) & 0x10000) != 0 && v4 == *(result + 422) && a3[1] == HIBYTE(*(result + 422)))
  {
    result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 904), 0);
    *(*(v3 + 368) + 912) = result - *(v3 + 48);
    return result;
  }

  if (((*(result + 425) | (*(result + 427) << 16)) & 0x10000) != 0)
  {
    v5 = a3[1];
    if (v4 == *(result + 425) && v5 == HIBYTE(*(result + 425)))
    {
      result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 928), 0);
      *(*(v3 + 368) + 936) = result - *(v3 + 48);
      return result;
    }
  }

  else
  {
    v5 = a3[1];
  }

  v7 = 0;
  for (i = (result + 417); v4 != *(i - 1) || v5 != *i; i += 2)
  {
    if (++v7 == 3)
    {
      return result;
    }
  }

  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), *(result + 481), (*(result + 368) + 8 * v7 + 872), 0);
  *(*(v3 + 368) + 2 * v7 + 896) = result - *(v3 + 48);
  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(void *a1, uint64_t a2)
{
  mach_absolute_time();
  v4 = a1[34];
  v5 = a1[35];
  v6 = *(a2 + 8);
  gdc::Context::get<md::StyleLogicContext>(v6);
  v7 = gdc::Context::context<md::TransitContext>(v6);
  gdc::Context::context<md::PolygonContext>(v6);
  if (v7 && *(v7 + 312) == 1)
  {
    while (v4 != v5)
    {
      md::updatePolyonGroupsTransitNodeRouteAttributes(*(*v4 + 392), v7[36], (v7 + 29));
      v4 += 8;
    }

    *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(*(a1[5] + 96) + 41928) + 16), 0x1BCA10CB9934FB1BuLL)[5] + 544) = 0;
  }

  operator new();
}

void sub_1B2EE86EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory((v35 - 176));
  v37 = mach_absolute_time();
  atomic_fetch_add((*(ggl::Performance::Counters::instance(v37) + 32) + 120), v37 - a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 <= 1)
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 16);
        **(a1 + 8) = 1;
        v8 = *v7;
        v9 = v7[1];
        while (v8 != v9)
        {
          v10 = *v8++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v10 + 392), 1);
        }
      }
    }

    else
    {
      v19 = *(a1 + 16);
      **(a1 + 8) = 1;
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20++;
        md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v22 + 392), 1);
      }
    }
  }

  else
  {
    switch(v2)
    {
      case 2u:
        v11 = *(a1 + 16);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = *v12++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v14 + 392), 0);
        }

        break;
      case 3u:
        v15 = *(a1 + 16);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = *v16++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v18 + 392), 1);
        }

        break;
      case 4u:
        v3 = *(a1 + 16);
        v4 = *v3;
        v5 = v3[1];
        while (v4 != v5)
        {
          v6 = *v4++;
          md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::updateStyles(*(v6 + 392), 1);
        }

        break;
    }
  }
}

__n128 std::__function::__func<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::layout(md::LayoutContext const&)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A0FF18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_pointer<md::RasterSharedRenderResources *,std::shared_ptr<md::RasterSharedRenderResources>::__shared_ptr_default_delete<md::RasterSharedRenderResources,md::RasterSharedRenderResources>,std::allocator<md::RasterSharedRenderResources>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::BuildingSharedRenderResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A0FDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::CartographicMapEngineConfiguration::~CartographicMapEngineConfiguration(md::CartographicMapEngineConfiguration *this)
{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void md::ShadowPipelineProxy::update(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 3);
  v7 = v6[1];
  if (v7 == *v6)
  {
    v9 = v6[11];
    if (!v9)
    {
      goto LABEL_43;
    }

    a1 = (*(*v9 + 48))(v9);
    v8 = a1;
  }

  else
  {
    v8 = *(v7 - 8);
    v6[1] = v7 - 8;
  }

  v11 = v6[5];
  v10 = v6[6];
  if (v11 >= v10)
  {
    v13 = v6[4];
    v14 = (v11 - v13) >> 3;
    if ((v14 + 1) >> 61)
    {
      goto LABEL_44;
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

    v71 = v6 + 7;
    if (v17)
    {
      v18 = ggl::zone_mallocator::instance(a1);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(v18, v17);
    }

    else
    {
      v19 = 0;
    }

    v21 = &v19[8 * v17];
    v20 = &v19[8 * v14];
    *v20 = v8;
    v12 = v20 + 1;
    v22 = v6[4];
    v23 = v6[5] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = v6[4];
    v6[4] = v24;
    v6[5] = v12;
    v26 = v6[6];
    v6[6] = v21;
    *&v69[16] = v25;
    v70 = v26;
    *v69 = v25;
    *&v69[8] = v25;
    std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v69);
  }

  else
  {
    *v11 = v8;
    v12 = v11 + 1;
  }

  v6[5] = v12;
  *v69 = v8;
  v27 = v6[15];
  if (!v27)
  {
LABEL_43:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_44:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v27 + 48))(v27, v69);
  v28 = *a3;
  *v69 = v8;
  v29 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v29, v28, v69);
  v30 = *a3;
  *&v69[12] = 0;
  *&v69[4] = 0;
  v70 = 0;
  v71 = 0;
  v74 = 0;
  v73 = 0;
  *v69 = 1065353216;
  *&v69[20] = 1065353216;
  v72 = 1065353216;
  v75 = 1065353216;
  v31 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(v31, v30, v69);
  v32 = *a3;
  *v69 = 0;
  *&v69[8] = 0;
  v33 = gdc::Registry::storage<arComponents::TransformConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v33, v32, v69);
  if (*&v69[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v69[8]);
  }

  v34 = *a3;
  v35 = gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(a2);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v35, v34);
  v36 = *a3;
  v37 = *(v5 + 16);
  v38 = gdc::Registry::storage<arComponents::CommandBufferLocation>(a2);
  *v69 = v36;
  v39 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v38 + 4, v69);
  if (v40)
  {
    v42 = v38[11];
    v41 = v38[12];
    if (v42 >= v41)
    {
      v47 = v38[10];
      v48 = v42 - v47;
      v49 = (v42 - v47) >> 1;
      if (v49 <= -2)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v50 = v41 - v47;
      if (v50 <= v49 + 1)
      {
        v51 = v49 + 1;
      }

      else
      {
        v51 = v50;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v52 = v51;
      }

      if (v52)
      {
        if ((v52 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v53 = (v42 - v47) >> 1;
      v54 = (2 * v49);
      v55 = (2 * v49 - 2 * v53);
      *v54 = v37;
      v43 = v54 + 1;
      memcpy(v55, v47, v48);
      v38[10] = v55;
      v38[11] = v43;
      v38[12] = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }

    else
    {
      *v42 = v37;
      v43 = v42 + 2;
    }

    v38[11] = v43;
    v45 = v38[31];
    goto LABEL_40;
  }

  v44 = (v38[10] + ((v39 - v38[7]) >> 2));
  *v44 = v37;
  v45 = v38[31];
  if (v44 == v38[11])
  {
LABEL_40:
    for (i = v38[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v45, v69, 1);
    }

    goto LABEL_42;
  }

  for (j = v38[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v45, v69, 1);
  }

LABEL_42:
  v57 = *a3;
  *v69 = *(*(v8 + 17) + 48);
  v58 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v58, v57, v69);
  v59 = *a3;
  *v69 = **(v8 + 17);
  v60 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v60, v59, v69);
  v61 = *a3;
  *v69 = *(*(v8 + 17) + 16);
  v62 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v62, v61, v69);
  v63 = *a3;
  *v69 = **(v8 + 13);
  v64 = gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v64, v63, v69);
  v65 = *a3;
  *v69 = v5;
  HasTransformConstant = gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformConstant, v65, v69);
  v67 = *a3;
  *v69 = v5 + 8;
  HasTransformInstanceDeviceData = gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformInstanceDeviceData, v67, v69);
}

void sub_1B2EE8FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(void *a1, uint64_t a2, uint64_t *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = v8 - v13;
      v15 = (v8 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v15;
      v20 = (8 * v15);
      v21 = *a3;
      v22 = &v20[-v19];
      *v20 = v21;
      v9 = v20 + 1;
      memcpy(v22, v13, v14);
      a1[10] = v22;
      a1[11] = v9;
      a1[12] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 8;
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_20;
  }

  v10 = (v5 + a1[10] - a1[7]);
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v24, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(void *a1, uint64_t a2, _OWORD *a3)
{
  v31 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v31);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v17 = a1[10];
      v18 = (v8 - v17) >> 6;
      v19 = v18 + 1;
      if ((v18 + 1) >> 58)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v7 - v17;
      if (v20 >> 5 > v19)
      {
        v19 = v20 >> 5;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFC0)
      {
        v21 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = (v18 << 6);
      v23 = a3[1];
      *v22 = *a3;
      v22[1] = v23;
      v24 = a3[3];
      v22[2] = a3[2];
      v22[3] = v24;
      v12 = (v18 << 6) + 64;
      if (v17 != v8)
      {
        v25 = v17;
        v26 = 0;
        do
        {
          v27 = *v25;
          v28 = *(v25 + 1);
          v29 = *(v25 + 3);
          v26[2] = *(v25 + 2);
          v26[3] = v29;
          *v26 = v27;
          v26[1] = v28;
          v26 += 4;
          v25 += 64;
        }

        while (v25 != v8);
      }

      a1[10] = 0;
      a1[11] = v12;
      a1[12] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[3];
      *(v8 + 2) = a3[2];
      *(v8 + 3) = v11;
      *v8 = v9;
      *(v8 + 1) = v10;
      v12 = (v8 + 64);
    }

    a1[11] = v12;
    v15 = a1[31];
    goto LABEL_25;
  }

  v13 = 0;
  v14 = a1[10] + 8 * (v5 - a1[7]);
  do
  {
    *(v14 + v13) = *(a3 + v13);
    v13 += 4;
  }

  while (v13 != 64);
  v15 = a1[31];
  if (v14 == a1[11])
  {
LABEL_25:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v31, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v31, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(void *a1, uint64_t a2, __int128 *a3)
{
  v32 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v32);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = (v7 - v16) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v8 - v16;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 16 * v17;
      v22 = *a3;
      *(16 * v17) = *a3;
      if (*(&v22 + 1))
      {
        atomic_fetch_add_explicit((*(&v22 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v10 = (v21 + 16);
      v31 = (v21 + 16);
      v24 = a1[10];
      v23 = a1[11];
      v25 = (v21 + v24 - v23);
      if (v23 != v24)
      {
        v26 = a1[10];
        v27 = v25;
        do
        {
          *v27++ = *v26;
          *v26 = 0;
          *(v26 + 8) = 0;
          v26 += 16;
        }

        while (v26 != v23);
        do
        {
          v28 = *(v24 + 8);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v28);
          }

          v24 += 16;
        }

        while (v24 != v23);
      }

      v29 = a1[10];
      a1[10] = v25;
      *(a1 + 11) = v31;
      if (v29)
      {
        operator delete(v29);
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

      v10 = v7 + 2;
    }

    a1[11] = v10;
    v14 = a1[31];
LABEL_32:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v32, 1);
    }

    return;
  }

  v11 = a1[10] + 2 * (v5 - a1[7]);
  v12 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v13 = *(v11 + 8);
  *v11 = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a1[31];
  if (v11 == a1[11])
  {
    goto LABEL_32;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v32, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(uint64_t a1)
{
  v3 = 0xBCDEDBDC62731A11;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBCDEDBDC62731A11);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(uint64_t a1)
{
  v3 = 0xFEA9AEC0E5ADE148;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xFEA9AEC0E5ADE148);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>::~ComponentStorageWrapper(uint64_t a1)
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

void md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(float *a1, unsigned __int16 a2, _WORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
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
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
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

  if (*(v7 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1B2EEA178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::shared_ptr<md::InjectedAsset>,std::hash<std::shared_ptr<md::InjectedAsset>>,std::equal_to<std::shared_ptr<md::InjectedAsset>>,std::allocator<std::shared_ptr<md::InjectedAsset>>>::__emplace_unique_key_args<std::shared_ptr<md::InjectedAsset>,std::shared_ptr<md::InjectedAsset> const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
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

  v9 = *(*a1 + 8 * v8);
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
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__erase_unique<unsigned short>(void *a1, unsigned __int16 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = a1[1];
    v6 = v3[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*a1 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != v3);
    if (v9 == a1 + 2)
    {
      goto LABEL_20;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 = (v10 % *&v5);
      }
    }

    else
    {
      v10 = (v10 & (*&v5 - 1));
    }

    if (v10 != v6)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v11 = (*v3)[1];
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_21:
        *(*a1 + 8 * v6) = 0;
      }
    }

    v12 = *v3;
    if (*v3)
    {
      v13 = v12[1];
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 = (v13 % *&v5);
        }
      }

      else
      {
        v13 = (v13 & (*&v5 - 1));
      }

      if (v13 != v6)
      {
        *(*a1 + 8 * v13) = v9;
        v12 = *v3;
      }
    }

    *v9 = v12;
    *v3 = 0;
    --a1[3];
    v14 = (v3 + 3);
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v14);

    operator delete(v4);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(void *result, unint64_t a2, void *a3)
{
  v3 = result[1];
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

  v6 = *(*result + 8 * v5);
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

  return result;
}

void std::__hash_table<std::shared_ptr<md::InjectedAsset>,std::hash<std::shared_ptr<md::InjectedAsset>>,std::equal_to<std::shared_ptr<md::InjectedAsset>>,std::allocator<std::shared_ptr<md::InjectedAsset>>>::__erase_unique<std::shared_ptr<md::InjectedAsset>>(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *result;
    v10 = *(*result + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *&v2 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == a2)
            {
              v14 = v11[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }
              }

              else
              {
                v14 &= v12;
              }

              v15 = *(v9 + 8 * v14);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v11);
              if (v16 == result + 2)
              {
                goto LABEL_36;
              }

              v17 = v16[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v17 >= *&v2)
                {
                  v17 %= *&v2;
                }
              }

              else
              {
                v17 &= v12;
              }

              if (v17 != v14)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v18 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v18 >= *&v2)
                  {
                    v18 %= *&v2;
                  }
                }

                else
                {
                  v18 &= v12;
                }

                if (v18 != v14)
                {
LABEL_37:
                  *(v9 + 8 * v14) = 0;
                }
              }

              v19 = *v11;
              if (*v11)
              {
                v20 = *(v19 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v20 >= *&v2)
                  {
                    v20 %= *&v2;
                  }
                }

                else
                {
                  v20 &= v12;
                }

                if (v20 != v14)
                {
                  *(*result + 8 * v20) = v16;
                  v19 = *v11;
                }
              }

              *v16 = v19;
              *v11 = 0;
              --result[3];
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<md::InjectedAsset>,void *>>>::operator()[abi:nn200100](1, v11);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<md::InjectedAsset>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t md::Logic<md::AssetInjectionLogic,md::AssetInjectionContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD77FB76AFC10A710 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::AssetInjectionContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AssetInjectionContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::AssetInjectionContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AssetInjectionContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A10410;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40864A76ABLL);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::InjectedAsset>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<md::InjectedAsset>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A103D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::AssetInjectionLogic::~AssetInjectionLogic(md::AssetInjectionLogic *this)
{
  *this = &unk_1F2A10268;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::~__hash_table(this + 160);
  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A10268;
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::~__hash_table(this + 160);
  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::~__hash_table(this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ggl::VSLibrary *,std::shared_ptr<ggl::VSLibrary>::__shared_ptr_default_delete<ggl::VSLibrary,ggl::VSLibrary>,std::allocator<ggl::VSLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::VSLibrary *,std::shared_ptr<ggl::VSLibrary>::__shared_ptr_default_delete<ggl::VSLibrary,ggl::VSLibrary>,std::allocator<ggl::VSLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::FlyoverLibrary *,std::shared_ptr<ggl::FlyoverLibrary>::__shared_ptr_default_delete<ggl::FlyoverLibrary,ggl::FlyoverLibrary>,std::allocator<ggl::FlyoverLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::FlyoverLibrary *,std::shared_ptr<ggl::FlyoverLibrary>::__shared_ptr_default_delete<ggl::FlyoverLibrary,ggl::FlyoverLibrary>,std::allocator<ggl::FlyoverLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::StandardLibrary *,std::shared_ptr<ggl::StandardLibrary>::__shared_ptr_default_delete<ggl::StandardLibrary,ggl::StandardLibrary>,std::allocator<ggl::StandardLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::StandardLibrary *,std::shared_ptr<ggl::StandardLibrary>::__shared_ptr_default_delete<ggl::StandardLibrary,ggl::StandardLibrary>,std::allocator<ggl::StandardLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::CommonLibrary *,std::shared_ptr<ggl::CommonLibrary>::__shared_ptr_default_delete<ggl::CommonLibrary,ggl::CommonLibrary>,std::allocator<ggl::CommonLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::CommonLibrary *,std::shared_ptr<ggl::CommonLibrary>::__shared_ptr_default_delete<ggl::CommonLibrary,ggl::CommonLibrary>,std::allocator<ggl::CommonLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::IconListLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v49 = *MEMORY[0x1E69E9840];
  if (a1[86].i8[6] == 1)
  {
    v8 = a1 + 72;
    v9 = a1[72];
    v10 = a1[73];
    if (v9 == v10)
    {
      v39 = a2;
      v40 = a3;
      v41 = a4;
    }

    else
    {
      do
      {
        result = (*(**v9 + 44))(*v9, v6);
        if (result != 37)
        {
          return result;
        }

        ++v9;
      }

      while (v9 != v10);
      v39 = v6;
      v40 = v5;
      v41 = v4;
      v9 = *v8;
    }

    v48 = 0;
    v46 = v47;
    v47[0] = 0;
    v45 = a1[75].i8[0];
    v43 = v9;
    v12 = *a1[73].f32;
    v44 = v12;
    v13 = v12;
    *v8 = 0;
    a1[73] = 0;
    a1[74] = 0;
    if (v9 != v12)
    {
      while (1)
      {
        v14 = *v9;
        v15 = (*(**v9 + 29))(*v9);
        if (v15 != 6)
        {
          goto LABEL_24;
        }

        v16 = v47[0];
        v17 = v47;
        v18 = v47;
        if (!v47[0])
        {
          break;
        }

        v17 = v47;
        while (1)
        {
          while (1)
          {
            v18 = v16;
            v15 = md::LabelIcon::compareImage(v14[80], *(v16[4] + 640));
            if ((v15 & 0x80000000) == 0)
            {
              break;
            }

            v16 = *v18;
            v17 = v18;
            if (!*v18)
            {
              goto LABEL_19;
            }
          }

          v15 = md::LabelIcon::compareImage(v18[4][80], v14[80]);
          if ((v15 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v18 + 1;
          v16 = v18[1];
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        if (!*v17)
        {
          break;
        }

        (*(*v14 + 1))(v14);
LABEL_37:
        if (++v9 == v13)
        {
          goto LABEL_38;
        }
      }

LABEL_19:
      v19 = mdm::zone_mallocator::instance(v15);
      v20 = pthread_rwlock_rdlock((v19 + 32));
      if (v20)
      {
        geo::read_write_lock::logFailure(v20, "read lock", v21);
      }

      v22 = malloc_type_zone_malloc(*v19, 0x28uLL, 0x1020040FAE78CE4uLL);
      atomic_fetch_add((v19 + 24), 1u);
      geo::read_write_lock::unlock((v19 + 32));
      v22[4] = v14;
      *v22 = 0;
      v22[1] = 0;
      v22[2] = v18;
      *v17 = v22;
      if (*v46)
      {
        v46 = *v46;
        v22 = *v17;
      }

      v15 = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v47[0], v22);
      ++v48;
      v8 = a1 + 72;
LABEL_24:
      v23 = a1[73];
      v24 = a1[74];
      if (v23 >= *&v24)
      {
        v26 = (v23 - *v8) >> 3;
        if ((v26 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v27 = *&v24 - *v8;
        v28 = v27 >> 2;
        if (v27 >> 2 <= (v26 + 1))
        {
          v28 = v26 + 1;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v28;
        }

        v42[4] = a1 + 75;
        if (v29)
        {
          v30 = mdm::zone_mallocator::instance(v15);
          v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v30, v29);
        }

        else
        {
          v31 = 0;
        }

        v33 = &v31[8 * v29];
        v32 = &v31[8 * v26];
        *v32 = v14;
        v25 = (v32 + 1);
        v34 = a1[72];
        v35 = *&a1[73] - v34;
        v36 = (v32 - v35);
        memcpy(v32 - v35, v34, v35);
        v37 = a1[72];
        a1[72] = v36;
        a1[73] = v25;
        v38 = a1[74];
        a1[74] = v33;
        v42[2] = v37;
        v42[3] = v38;
        v42[0] = v37;
        v42[1] = v37;
        std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(v42);
      }

      else
      {
        *v23 = v14;
        v25 = (v23 + 1);
      }

      a1[73] = v25;
      goto LABEL_37;
    }

LABEL_38:
    a1[86].i8[6] = 0;
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v43);
    std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(v47[0]);
    v5 = v40;
    v4 = v41;
    v6 = v39;
  }

  return md::StackLabelPart::layoutForStaging(a1, v6, v5, v4);
}

void std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<md::IconLabelPart *,IconLabelPartCompare,geo::allocator_adapter<md::IconLabelPart *,mdm::zone_mallocator>>::destroy(result[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void md::IconListLabelPart::~IconListLabelPart(md::IconListLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

uint64_t md::GlobeRasterRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 1, (a1 + 360), 0);
  *(a1 + 368) = result;
  return result;
}

void md::GlobeRasterRenderLayer::layout(md::GlobeRasterRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  (*(*this + 32))(v111, this, a2);
  v5 = **v111;
  *&v111[8] = *v111;
  operator delete(*v111);
  v6 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), v5);
  if (v6)
  {
    v7 = *(*(v6 + 16) + 8 * (v5 >> 8));
  }

  else
  {
    v7 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v7);
  *(v7 + 32) = 0;
  v8 = *(this + 44);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(v8[1]);
  v9 = *v8;
  v10 = (*v8)[4];
  v11 = v9[5];
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
      *v111 = v12;
      std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v9, v111);
    }

    while (v10 != v11);
    v10 = v9[4];
    v11 = v9[5];
  }

  if (v10 != v11)
  {
    v9[5] = v10;
  }

  if (*(this + 34) != *(this + 35))
  {
    v13 = *(gdc::Context::get<md::StyleLogicContext>(*(a2 + 1)) + 72);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v105, *(*(this + 44) + 40));
    v14 = *(a2 + 1);
    v15 = md::LayoutContext::get<md::CameraContext>(v14);
    v16 = 0;
    v17 = (v15 + 552);
    do
    {
      v19 = *v17;
      v18 = v17[1];
      v17 += 2;
      *&v111[v16] = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v18);
      v16 += 16;
    }

    while (v16 != 64);
    v20 = v106;
    *v106 = *v111;
    *(v20 + 16) = *&v111[16];
    *(v20 + 32) = *&v111[32];
    *(v20 + 48) = *&v111[48];
    v21 = md::LayoutContext::get<md::LightingLogicContext>(v14);
    if (v21)
    {
      v22 = v21[13].f64[0];
      *(v20 + 96) = vcvt_f32_f64(v21[12]);
      *(v20 + 104) = v22;
      v23 = LODWORD(v21[28].f64[1]);
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x1E69A1B48]);
      *v111 = 0;
      *&v107 = 0;
      v103[0] = 0.0;
      [v24 calculateGeocentricDirectionForSunX:v111 Y:&v107 Z:v103];
      v25 = *v111;
      v26 = *&v107;
      v27 = v103[0];
      v28 = v106;
      *(v106 + 96) = v25;
      *(v28 + 100) = v26;
      *(v28 + 104) = v27;

      v23 = 0;
      v20 = v106;
    }

    *(v20 + 112) = v23;
    v29 = **(a2 + 9);
    v30 = gdc::Camera::cameraFrame(v15);
    v31 = 0;
    _NF = *(v30 + 24) < 6378137.0;
    DWORD2(v107) = 1065353216;
    v33 = _NF;
    *&v107 = 0x3F4CCCCD3F333333;
    v34 = 1.0;
    if (((v13 == 1) & v33) != 0)
    {
      v34 = -1.0;
    }

    if (v29)
    {
      v34 = 0.0;
    }

    do
    {
      *&v111[v31] = *(&v107 + v31) * v34;
      v31 += 4;
    }

    while (v31 != 12);
    v35 = *&v111[8];
    *(v20 + 64) = *v111;
    *(v20 + 72) = v35;
    v36 = gdc::CameraView::position(v15);
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + *(v36 + v37) * *(v36 + v37);
      v37 += 8;
    }

    while (v37 != 24);
    v107 = *v36;
    *&v108 = *(v36 + 16);
    geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v111, &v107);
    v39 = sqrt(v38) + -6371008.77;
    v40 = fmaxf(v39, 0.0);
    v41 = *&v111[16];
    v42 = fmaxf(v41, 1.0);
    v43 = v42;
    v44 = sqrt((v42 * v42) + v42 * 12742017.5);
    v45 = fmin(fmax(v43, 0.0), 8000.0);
    v46 = (v44 - v40) + (v45 * 0.000125 * (v45 * 0.000125) * (v45 * -0.00025 + 3.0) + -1.0) * ((v44 - v40) * 0.5);
    *(v20 + 80) = v40;
    *(v20 + 84) = v46;
    ggl::BufferMemory::~BufferMemory(v105);
    v47 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v111, *(*(this + 44) + 56));
    **&v111[40] = xmmword_1B33B1420;
    ggl::BufferMemory::~BufferMemory(v47);
    v49 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v48, *(*(this + 44) + 72));
    **&v111[40] = xmmword_1B33B1430;
    ggl::BufferMemory::~BufferMemory(v49);
    v51 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v50, *(*(this + 44) + 88));
    **&v111[40] = xmmword_1B33B0720;
    ggl::BufferMemory::~BufferMemory(v51);
    v52 = 0;
    memset(&v111[40], 0, 32);
    v112 = 0;
    v115 = 0u;
    v114 = 0u;
    memset(&v111[8], 0, 32);
    *v111 = 0x415854A640000000;
    *&v111[40] = 0x415854A640000000;
    v116 = 0x3FF0000000000000;
    v113 = 0x41583FC4141C97D0;
    v53 = (v4 + 3160);
    do
    {
      v54 = 0;
      v55 = v111;
      do
      {
        v56 = 0;
        v57 = 0.0;
        v58 = v53;
        do
        {
          v59 = *v58;
          v58 += 4;
          v57 = v57 + *&v55[v56] * v59;
          v56 += 8;
        }

        while (v56 != 32);
        *&v105[4 * v54++ + v52] = v57;
        v55 += 32;
      }

      while (v54 != 4);
      ++v52;
      ++v53;
    }

    while (v52 != 4);
    v60 = 0;
    v61 = v105;
    do
    {
      v63 = *v61;
      v62 = *(v61 + 1);
      v61 += 4;
      *(&v107 + v60) = vcvt_hight_f32_f64(vcvt_f32_f64(v63), v62);
      v60 += 16;
    }

    while (v60 != 64);
    v64 = *(*(this + 44) + 24);
    *(v7 + 32) = *(this + 45);
    v64[55] = *(this + 368);
    v65 = *(this + 34);
    v66 = *(this + 35);
    if (v65 != v66)
    {
      __asm { FMOV            V0.2D, #1.0 }

      v102 = _Q0;
      do
      {
        v71 = *v65;
        v72 = *(*(*v65 + 392) + 728);
        if (v72)
        {
          v73 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(this + 44) + 8));
          *(v73 + 3) = v64;
          v74 = *(this + 44);
          *(v73 + 8) = v74[2];
          v75 = *v74;
          v77 = **v74;
          v76 = (*v74)[1];
          if (v76 == v77)
          {
            v79 = v75[11];
            if (!v79)
            {
              goto LABEL_55;
            }

            v78 = (*(*v79 + 48))(v79);
            *&v103[0] = v78;
          }

          else
          {
            v78 = *(v76 - 8);
            *&v103[0] = v78;
            v75[1] = v76 - 8;
          }

          std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v75 + 4), v103);
          v105[0] = v78;
          v80 = v75[15];
          if (!v80)
          {
LABEL_55:
            v101 = std::__throw_bad_function_call[abi:nn200100]();

            ggl::BufferMemory::~BufferMemory(v105);
            _Unwind_Resume(v101);
          }

          (*(*v80 + 48))(v80, v105);
          v81 = *(v78[17] + 16);
          ggl::BufferMemory::BufferMemory(v103);
          ggl::ResourceAccessor::accessConstantData(v105, 0, v81, 1);
          ggl::BufferMemory::operator=(v103, v105);
          ggl::BufferMemory::~BufferMemory(v105);
          v82 = *(v71 + 25);
          v83 = *(v71 + 24);
          v84 = v104;
          *(v104 + 80) = v83;
          *(v84 + 48) = v110;
          *(v84 + 32) = v109;
          *(v84 + 16) = v108;
          *v84 = v107;
          v85 = vrev64_s32(*(v71 + 28));
          v86.i64[0] = v85.u32[0];
          v86.i64[1] = v85.u32[1];
          v87 = vdivq_f64(v102, vdupq_lane_s64(COERCE__INT64((1 << v82)), 0));
          v88 = vmulq_f64(vcvtq_f64_u64(v86), v87);
          v89 = vadd_s32(v85, 0x100000001);
          v86.i64[0] = v89.u32[0];
          v86.i64[1] = v89.u32[1];
          v90 = vmulq_f64(vcvtq_f64_u64(v86), v87);
          *&v87.f64[0] = vcvt_f32_f64(v88);
          *(v84 + 64) = vsub_f32(vcvt_f32_f64(v90), *&v87.f64[0]);
          *(v84 + 72) = v87.f64[0];
          v91 = 88;
          if (v83 == 5)
          {
            v91 = 72;
          }

          _ZF = v83 == 2;
          v92 = 56;
          if (!_ZF)
          {
            v92 = v91;
          }

          v93 = (*(this + 44) + v92);
          v94 = v78[17];
          *(v94 + 40) = 0;
          v95 = *v93;
          *(v94 + 32) = *v93;
          v96 = v78[29];
          v97 = v93[1];
          if (v97)
          {
            atomic_fetch_add_explicit((v97 + 8), 1uLL, memory_order_relaxed);
          }

          v98 = *(v96 + 40);
          *(v96 + 32) = v95;
          *(v96 + 40) = v97;
          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v98);
          }

          *(v78[21] + 8) = v72;
          v99 = *(this + 44);
          v100 = *(v99 + 112);
          v105[0] = *(v99 + 104);
          v105[1] = v100;
          if (v100)
          {
            atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v78, v105);
            std::__shared_weak_count::__release_shared[abi:nn200100](v100);
          }

          else
          {
            ggl::PipelineSetup::setState(v78, v105);
          }

          *(v73 + 4) = v78;
          ggl::RenderItem::assertValid(v73);
          v105[0] = v73;
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v7 + 72), v105);
          ggl::BufferMemory::~BufferMemory(v103);
        }

        ++v65;
      }

      while (v65 != v66);
    }
  }
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::GlobeTexturedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A10B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::S2Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::S2Transform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A10A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A19458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1FAD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void LabelPlacementToShortString(std::string *a1, unsigned __int8 *a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = *a2;
  if (v4 > 4)
  {
    if (*a2 <= 0x64u)
    {
      if (v4 == 5)
      {
        v5 = "FeatNrml";
        goto LABEL_24;
      }

      if (v4 == 100)
      {
        v5 = "ScEx";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v4)
      {
        case 'e':
          v5 = "TLnOff";
          goto LABEL_24;
        case 'f':
          v5 = "RtOff";
          goto LABEL_24;
        case 'g':
          v5 = "Poly";
          goto LABEL_24;
      }
    }
  }

  else
  {
    if (*a2 <= 1u)
    {
      if (*a2)
      {
        v5 = "Sc";
      }

      else
      {
        v5 = "Df";
      }

      goto LABEL_24;
    }

    switch(v4)
    {
      case 2u:
        v5 = "Ca";
        goto LABEL_24;
      case 3u:
        v5 = "CaEx";
        goto LABEL_24;
      case 4u:
        v5 = "AutoOff";
        goto LABEL_24;
    }
  }

  v5 = "";
LABEL_24:
  std::string::basic_string[abi:nn200100]<0>(&__p, v5);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, ":", 1uLL);
  v9 = a2[3];
  if (v9 <= 4)
  {
    if (a2[3] <= 1u)
    {
      if (a2[3])
      {
        v10 = "TR";
      }

      else
      {
        v10 = "R";
      }

      goto LABEL_57;
    }

    switch(v9)
    {
      case 2u:
        v10 = "T";
        goto LABEL_57;
      case 3u:
        v10 = "TL";
        goto LABEL_57;
      case 4u:
        v10 = "L";
        goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (a2[3] > 7u)
  {
    switch(v9)
    {
      case 8u:
        v10 = "C";
        goto LABEL_57;
      case 9u:
        v10 = "None";
        goto LABEL_57;
      case 0xAu:
        LOBYTE(v8) = a2[4];
        std::to_string(&__p, (v8 * 1.4118));
        goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v9 == 5)
  {
    v10 = "BL";
    goto LABEL_57;
  }

  if (v9 == 6)
  {
    v10 = "B";
    goto LABEL_57;
  }

  if (v9 != 7)
  {
LABEL_56:
    v10 = "";
    goto LABEL_57;
  }

  v10 = "BR";
LABEL_57:
  std::string::basic_string[abi:nn200100]<0>(&__p, v10);
LABEL_58:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v11, v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, ":", 1uLL);
  v13 = a2[1];
  if (v13 > 0xB)
  {
    if (a2[1] <= 0xFu)
    {
      if (v13 == 12)
      {
        v14 = "Ang";
        goto LABEL_89;
      }

      if (v13 == 13)
      {
        v14 = "HOrAng";
        goto LABEL_89;
      }
    }

    else
    {
      switch(v13)
      {
        case 0x10u:
          v14 = "Pe";
          goto LABEL_89;
        case 0x20u:
          v14 = "AutoV";
          goto LABEL_89;
        case 0x80u:
          v14 = "Df";
          goto LABEL_89;
      }
    }
  }

  else
  {
    if (a2[1] <= 1u)
    {
      if (a2[1])
      {
        v14 = "H";
      }

      else
      {
        v14 = "No";
      }

      goto LABEL_89;
    }

    switch(v13)
    {
      case 2u:
        v14 = "V";
        goto LABEL_89;
      case 4u:
        v14 = "AngU";
        goto LABEL_89;
      case 8u:
        v14 = "AngD";
        goto LABEL_89;
    }
  }

  v14 = "";
LABEL_89:
  std::string::basic_string[abi:nn200100]<0>(&__p, v14);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v15, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B2EECA30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BC0;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void *md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BA0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10C00;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void *md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayLayer(void *a1)
{
  *a1 = &unk_1F2A10BE0;
  v2 = a1[27];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[25];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonLayer(a1);
}

void std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__vdeallocate(mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    v3 = *(result + 1);
    v4 = *result;
    if (v3 != v1)
    {
      do
      {
        std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v1);
      v4 = *result;
    }

    *(result + 1) = v1;
    v5 = mdm::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v5, v4);
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }
}

void std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100](--v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v6, v4);
  }
}

void std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100](uint64_t (****result)(void))
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineOverlayRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PolylineOverlayRibbon>(uint64_t a1, void *a2)
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

uint64_t md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(uint64_t result, uint64_t *a2, float *a3)
{
  v3 = 0;
  v4 = a3[15];
  v5 = *a3;
  v6 = *a2;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = fminf(fmaxf(a3[3], 0.0), 1.0);
    *v6 = (fminf(fmaxf(a3[2], 0.0), 1.0) * 65535.0);
    *(v6 + 2) = (v9 * 65535.0);
    v10.i64[0] = *&a3[2 * v3 + 4];
    v11 = vabs_f32(*v10.f32);
    v12 = fmaxf(v11.f32[0], v11.f32[1]);
    if (v12 > 4.0)
    {
      *v10.f32 = vmul_n_f32(*v10.f32, 4.0 / v12);
    }

    v10.i64[1] = *&a3[2 * v3 + 10];
    v13.i64[0] = 0xBF000000BF000000;
    v13.i64[1] = 0xBF000000BF000000;
    *(v6 + 4) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v13, xmmword_1B33B0C70, v10)));
    v14 = *(result + 8);
    v15 = *(v14 + 104) + *(v14 + 112) * v4;
    *(v6 + 12) = v15;
    v16 = *(v14 + 80);
    if (v16)
    {
      v17 = *(v16 + 4 * v5);
    }

    else
    {
      v17 = 0;
    }

    v7 = 0;
    *(v6 + 16) = v17;
    v6 += 20;
    *a2 = v6;
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, int **a3)
{
  v6 = a2;
  v7 = *(a1 + 1);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = a2;
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == a2)
          {
            if (*(v10 + 4) == a2)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v12 = mdm::zone_mallocator::instance(a1);
  v13 = pthread_rwlock_rdlock((v12 + 32));
  if (v13)
  {
    geo::read_write_lock::logFailure(v13, "read lock", v14);
  }

  v10 = malloc_type_zone_malloc(*v12, 0x38uLL, 0x10200408A1E2E81uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  *v10 = 0;
  v10[1] = v6;
  v16 = **a3;
  v10[3] = 0;
  *(v10 + 4) = v16;
  v10[4] = 0;
  v10[5] = 0;
  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v7 || (v18 * v7) < v17)
  {
    v19 = 1;
    if (v7 >= 3)
    {
      v19 = (v7 & (v7 - 1)) != 0;
    }

    v20 = v19 | (2 * v7);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v22 = 2;
    }

    else if ((v22 & (v22 - 1)) != 0)
    {
      prime = std::__next_prime(v22);
      v22 = prime;
    }

    v7 = *(a1 + 1);
    if (v22 > v7)
    {
      goto LABEL_32;
    }

    if (v22 < v7)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v7 < 3 || (v31 = vcnt_s8(v7), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v32 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v32;
        }
      }

      if (v22 <= prime)
      {
        v22 = prime;
      }

      if (v22 >= v7)
      {
        v7 = *(a1 + 1);
      }

      else
      {
        if (v22)
        {
LABEL_32:
          v23 = mdm::zone_mallocator::instance(prime);
          v24 = pthread_rwlock_rdlock((v23 + 32));
          if (v24)
          {
            geo::read_write_lock::logFailure(v24, "read lock", v25);
          }

          v26 = malloc_type_zone_malloc(*v23, 8 * v22, 0x2004093837F09uLL);
          atomic_fetch_add((v23 + 24), 1u);
          geo::read_write_lock::unlock((v23 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> **,0>(a1, v26);
          v27 = 0;
          *(a1 + 1) = v22;
          do
          {
            *(*a1 + 8 * v27++) = 0;
          }

          while (v22 != v27);
          v28 = *(a1 + 3);
          if (v28)
          {
            v29 = v28[1];
            v30 = vcnt_s8(v22);
            v30.i16[0] = vaddlv_u8(v30);
            if (v30.u32[0] > 1uLL)
            {
              if (v29 >= v22)
              {
                v29 %= v22;
              }
            }

            else
            {
              v29 &= v22 - 1;
            }

            *(*a1 + 8 * v29) = a1 + 6;
            v33 = *v28;
            if (*v28)
            {
              do
              {
                v34 = v33[1];
                if (v30.u32[0] > 1uLL)
                {
                  if (v34 >= v22)
                  {
                    v34 %= v22;
                  }
                }

                else
                {
                  v34 &= v22 - 1;
                }

                if (v34 != v29)
                {
                  v35 = *a1;
                  if (!*(*a1 + 8 * v34))
                  {
                    *(v35 + 8 * v34) = v28;
                    goto LABEL_56;
                  }

                  *v28 = *v33;
                  *v33 = **(v35 + 8 * v34);
                  **(v35 + 8 * v34) = v33;
                  v33 = v28;
                }

                v34 = v29;
LABEL_56:
                v28 = v33;
                v33 = *v33;
                v29 = v34;
              }

              while (v33);
            }
          }

          v7 = v22;
          goto LABEL_60;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> **,0>(a1, 0);
        v7 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_60:
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v36 = *a1;
  v37 = *(*a1 + 8 * v3);
  if (v37)
  {
    *v10 = *v37;
LABEL_73:
    *v37 = v10;
    goto LABEL_74;
  }

  *v10 = *(a1 + 3);
  *(a1 + 3) = v10;
  *(v36 + 8 * v3) = a1 + 6;
  if (*v10)
  {
    v38 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v38 >= v7)
      {
        v38 %= v7;
      }
    }

    else
    {
      v38 &= v7 - 1;
    }

    v37 = (*a1 + 8 * v38);
    goto LABEL_73;
  }

LABEL_74:
  ++*(a1 + 5);
  return v10;
}

void sub_1B2EED8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::read_write_lock::unlock((v4 + 32));
  std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  v7 = mdm::zone_mallocator::instance(v6);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(v7, v3);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
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

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = (v6 + 1);
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              v31 += 8;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2 + 56;
    std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(void *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      v5 = v1 + 3;
      std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::batch(std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const&,std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>> const)#1} &,std::default_delete<md::PolylineOverlayRibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A11018;
  v6 = (a1 + 1400);
  std::vector<std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset((a1 + 1376));
  free(*(a1 + 1376));
  v2 = *(a1 + 1352);
  if (v2)
  {
    *(a1 + 1360) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 1320);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 1296);
  if (v3)
  {
    *(a1 + 1304) = v3;
    operator delete(v3);
  }

  for (i = 1168; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A10FF8;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A10FF8;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void md::PolylineOverlayBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A10FD8;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A10FF8;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolylineOverlayBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A10FD8;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A10FF8;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::PolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
    std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::reset[abi:nn200100]((i - 8));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v5, v4);
  }

  return a1;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }
}

void *md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::PolylineOverlayLayer(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, char *a6)
{
  v7 = a1;
  v331 = *MEMORY[0x1E69E9840];
  v294 = a6[32];
  if (v294 == 1)
  {
    v281 = a6[1];
    v6 = *(a6 + 4);
    v292 = *a6;
    v284 = *(a6 + 2);
    v288 = a6[24];
  }

  else
  {
    v292 = 0;
  }

  v8 = *(a3 + 16);
  if (v8)
  {
    v324 = 0;
    v323 = 0;
    *(&v326 + 1) = 0;
    *(&v325 + 1) = 0;
    *(&v325 + 1) = 0;
    *v327 = 1065353216;
    v10 = *(v8 + 48);
    for (i = *(v8 + 56); v10 != i; ++v10)
    {
      LODWORD(v312[0]) = ggl::CullingGrid::intersectedCellsForRibbon(*(*v10 + 88), *(*v10 + 72), 0);
      __p = v312;
      v11 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v323, v312[0], &__p);
      std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v11 + 3), v10);
    }

    operator new();
  }

  *a1 = &unk_1F2A10BC0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 2) = 0u;
  a1[18] = 0;
  *(a1 + 152) = 0;
  *(a1 + 184) = 0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 121) = 0u;
  if (v294)
  {
    *(a1 + 153) = v281;
    *(a1 + 156) = v6;
    *(a1 + 152) = v292;
    a1[21] = v284;
    *(a1 + 176) = v288;
    *(a1 + 184) = 1;
  }

  if (a1[1])
  {
    v12 = a1[1];
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v275 = v12;
      v17 = *v12;
      v17[1] = v7;
      v18 = v17[175];
      v19 = v17[176];
      v276 = v19;
      while (v18 != v19)
      {
        v282 = v18;
        v285 = v13;
        v289 = v14;
        v20 = *v18;
        v20[1] = **v18;
        v20[3] = v20[2];
        v20[5] = v20[4];
        v324 = 0;
        v323 = 0;
        *&v325 = 0;
        v314 = 0;
        __p = 0;
        v315.i64[0] = 0;
        v22 = v20[7];
        v21 = v20[8];
        if (v22 != v21)
        {
          v278 = v15;
          do
          {
            v23 = *v22;
            v312[0] = 1;
            md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v23, &v323, &__p, v312);
            v24 = v312[0];
            if (v312[0] >= 2uLL)
            {
              v25 = *(v23 + 128);
              if (v25 >= 1.5708)
              {
                v37 = 2 * v312[0];
                goto LABEL_57;
              }

              v26 = v323;
              v27 = 1;
              while (1)
              {
                v28 = (v323 + 8 * v27);
                v29 = *v28;
                v30 = v28[1];
                v31 = 1;
                v32 = *v323;
                v33 = v29;
                do
                {
                  v34 = vabds_f32(v33, v32);
                  if ((v31 & 1) == 0)
                  {
                    break;
                  }

                  v31 = 0;
                  v32 = *(v323 + 1);
                  v33 = v30;
                }

                while (v34 < 1.0e-10);
                if (v34 >= 1.0e-10)
                {
                  break;
                }

                if (++v27 == v312[0])
                {
                  v35 = 0.0;
                  v36 = 1.0;
                  goto LABEL_27;
                }
              }

              v38 = v29 - *v323;
              v39 = v30 - *(v323 + 1);
              v40 = 1.0 / sqrtf((v38 * v38) + (v39 * v39));
              v36 = v40 * v38;
              v35 = v40 * v39;
LABEL_27:
              v41 = v312[0] - 1;
              if ((v312[0] - 1) >= 2)
              {
                v42 = *(v23 + 121);
                v43 = *(v23 + 124);
                v44 = 2;
                v45 = 1;
                v46 = 1.0 / v25;
                while (1)
                {
                  v47 = v36;
                  v48 = v35;
                  v49 = v45++;
                  if (v45 < v24)
                  {
                    v50 = &v26[8 * v49];
                    v51 = *v50;
                    v52 = v50[1];
                    v53 = v45;
                    while (1)
                    {
                      v54 = &v26[8 * v53];
                      v55 = *v54;
                      v56 = v54[1];
                      v57 = 1;
                      v58 = v51;
                      v59 = v55;
                      do
                      {
                        v60 = vabds_f32(v59, v58);
                        if ((v57 & 1) == 0)
                        {
                          break;
                        }

                        v57 = 0;
                        v58 = v52;
                        v59 = v56;
                      }

                      while (v60 < 1.0e-10);
                      if (v60 >= 1.0e-10)
                      {
                        break;
                      }

                      if (++v53 == v24)
                      {
                        goto LABEL_38;
                      }
                    }

                    v61 = v55 - v51;
                    v62 = v56 - v52;
                    v63 = 1.0 / sqrtf((v61 * v61) + (v62 * v62));
                    v36 = v63 * v61;
                    v35 = v63 * v62;
                  }

LABEL_38:
                  v64 = atan2f(v35, v36);
                  v65 = v64 - atan2f(v48, v47);
                  v66 = v65;
                  if (v65 > 3.14159265)
                  {
                    break;
                  }

                  if (v66 < -3.14159265)
                  {
                    v67 = 6.28318531;
                    goto LABEL_42;
                  }

LABEL_43:
                  v68 = fabsf(v65);
                  v69 = v42;
                  if (v42 == 2)
                  {
                    if (1.0 / sin(v68 * -0.5 + 1.57079633) <= v43)
                    {
                      v69 = 2;
                    }

                    else
                    {
                      v69 = 1;
                    }
                  }

                  v70 = fmaxf(ceilf(v68 * v46), 1.0);
                  if (v70 < 2)
                  {
                    v71 = 2;
                  }

                  else if (v69 == 1)
                  {
                    v71 = 6;
                  }

                  else if (v69 == 2)
                  {
                    v71 = 12;
                  }

                  else
                  {
                    v71 = 2 * v70;
                  }

                  v44 += v71;
                  if (v45 == v41)
                  {
                    v37 = v44 + 2;
                    goto LABEL_57;
                  }
                }

                v67 = -6.28318531;
LABEL_42:
                v65 = v66 + v67;
                goto LABEL_43;
              }

              v37 = 4;
LABEL_57:
              if (*(v23 + 96))
              {
                v37 += 2;
              }

              if (*(v23 + 97))
              {
                v37 += 2;
              }

              if (v37 < 0x10000)
              {
                v74 = 3 * v37 + *(v23 + 24);
                v72 = *(v23 + 8) + v37;
                v73 = v74 - 6;
              }

              else
              {
                v72 = *(v23 + 8);
                v73 = *(v23 + 24);
              }

              *(v23 + 16) = v72;
              *(v23 + 32) = v73;
              *(v23 + 48) = *(v23 + 40);
            }

            v75 = *v22++;
            v20[1] = v75[2] + v20[1] - v75[1];
            v20[3] = v75[4] + v20[3] - v75[3];
            v20[5] = v75[6] + v20[5] - v75[5];
          }

          while (v22 != v21);
          v15 = v278;
          if (__p)
          {
            operator delete(__p);
          }
        }

        if (v323)
        {
          v324 = v323;
          operator delete(v323);
        }

        v13 = v285;
        v76 = *v282;
        v7 = a1;
        if (v289 >= v285)
        {
          v77 = v15;
          v78 = v289 - v15;
          v79 = (v78 >> 3) + 1;
          if (v79 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v80 = v77;
          v81 = v285 - v77;
          v82 = (v285 - v77) >> 2;
          if (v82 > v79)
          {
            v79 = v82;
          }

          if (v81 >= 0x7FFFFFFFFFFFFFF8)
          {
            v83 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v79;
          }

          if (v83)
          {
            if (!(v83 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v84 = (8 * (v78 >> 3));
          v13 = 0;
          *v84 = v76;
          v14 = v84 + 1;
          memcpy(0, v80, v78);
          v15 = 0;
        }

        else
        {
          *v289 = v76;
          v14 = v289 + 1;
        }

        v18 = (v282 + 1);
        v16 = v14;
        v19 = v276;
      }

      v12 = v275 + 1;
    }

    while (v275 != -8);
    if (v7[17])
    {
      operator new();
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v312[0] = 0;
  v88 = (v16 - v15) >> 3;
  do
  {
    if (v87 == v88 || (*(*(v15 + v87) + 8) + v86 - **(v15 + v87)) >= 0x10000)
    {
      v310[0] = "BatchType/IData";
      operator new();
    }

    if (v87 < (v16 - v15) >> 3)
    {
      v89 = *(v15 + v87);
      v86 += v89->i64[1] - v89->i64[0];
      v90 = vaddq_s64(v89[1], v89[2]);
      v85 += vsubq_s64(vdupq_laneq_s64(v90, 1), v90).u64[0];
      v312[0] = v85;
    }

    v88 = (v16 - v15) >> 3;
    ++v87;
  }

  while (v87 <= v88);
  v91 = a1;
  v92 = &off_1B33AD000;
  *a1 = &unk_1F2A10BA0;
  a1[24] = *a4;
  v93 = a4[1];
  a1[25] = v93;
  if (v93)
  {
    atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
  }

  a1[26] = *a5;
  v94 = a5[1];
  a1[27] = v94;
  if (v94)
  {
    atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
  }

  a1[28] = 0;
  v95 = a1[1];
  v265 = a1[2];
  if (v95 != v265)
  {
    *(&v96 + 1) = 0x3F8000003F800000;
    v97 = 1.0;
    *&v96 = 1065353216;
    v299 = v96;
    do
    {
      v98 = *(*v95 + 1400);
      v99 = *(*v95 + 1408);
      v266 = v95;
      v267 = v99;
      while (v98 != v99)
      {
        v100 = *v98;
        ggl::DataAccess<ggl::DaVinci::TexturedCompressedDrapingVbo>::DataAccess(v312, **((*v98)[11] + 64), **v98, (*v98)[1], 1, a2);
        v101 = v100[2];
        v103 = v100[4];
        v102 = v100[5];
        if (v102 == v103)
        {
          v104 = v100[3];
        }

        else
        {
          if (v103 < v101)
          {
            v101 = v100[4];
          }

          if (v100[3] <= v102)
          {
            v104 = v100[5];
          }

          else
          {
            v104 = v100[3];
          }
        }

        v105 = v312[5];
        ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v310, *(v100[11] + 96), v101, v104, 1, 1, a2);
        v106 = v100[2];
        v107 = v100[4];
        v307 = 0;
        v308 = 0;
        v309 = 0;
        memset(&v306, 0, sizeof(v306));
        v108 = v100[7];
        v110 = v100[8];
        v109 = (v100 + 7);
        if (v108 != v110)
        {
          v268 = v109;
          v269 = v98;
          v111 = v311 + 2 * v107 - 2 * v101;
          v112 = v311 + 2 * v106 - 2 * v101;
          v271 = v110;
          while (1)
          {
            v113 = *v108;
            v323 = v91;
            v324 = v113;
            v325 = xmmword_1B33B0570;
            v326 = xmmword_1B33B0580;
            *v327 = xmmword_1B33B0590;
            *&v327[16] = xmmword_1B33B05A0;
            v328 = xmmword_1B33B05B0;
            v329 = xmmword_1B33B05C0;
            v322 = v105;
            if (*(v113 + 16) != *(v113 + 8))
            {
              v321 = 1;
              md::Ribbons::RibbonWriter<md::Ribbons::PilledTrafficRibbonDescriptor>::eliminateDuplicates(v113, &v307, &v306, &v321);
              v115 = v321;
              if (v321 >= 2)
              {
                break;
              }
            }

LABEL_200:
            v262 = *v108++;
            v105 += 20 * (v262[2] - v262[1]);
            v112 += 2 * (v262[4] - v262[3]);
            v111 += 2 * (v262[6] - v262[5]);
            if (v108 == v110)
            {
              begin = v306.__begin_;
              v109 = v268;
              v98 = v269;
              goto LABEL_203;
            }
          }

          v116 = v307;
          v293 = v306.__begin_;
          v330 = v105;
          v117 = *v307;
          v118 = 0.0;
          v119 = 1;
          v120 = *v307;
          do
          {
            v121 = *(v307 + 8 * v119);
            v122 = vsub_f32(v121, v120);
            v118 = sqrtf(vaddv_f32(vmul_f32(v122, v122))) + v118;
            ++v119;
            v120 = v121;
          }

          while (v321 != v119);
          v123 = v118;
          v124 = v97 / v118;
          if (v123 <= 1.0e-10)
          {
            v125 = 0.0;
          }

          else
          {
            v125 = v124;
          }

          v298 = sqrtf(((*(v307 + 2) - v117.f32[0]) * (*(v307 + 2) - v117.f32[0])) + ((*(v307 + 3) - v117.f32[1]) * (*(v307 + 3) - v117.f32[1])));
          v126 = 1;
          while (1)
          {
            v127 = 1;
            LODWORD(v128) = *v307;
            LODWORD(v129) = *(v307 + v126);
            do
            {
              v130 = vabds_f32(v129, v128);
              if ((v127 & 1) == 0)
              {
                break;
              }

              v127 = 0;
              LODWORD(v128) = HIDWORD(*v307);
              LODWORD(v129) = HIDWORD(*(v307 + v126));
            }

            while (v130 < 1.0e-10);
            if (v130 >= 1.0e-10)
            {
              break;
            }

            if (++v126 == v321)
            {
              *&v114 = 1065353216;
              goto LABEL_126;
            }
          }

          v131 = vsub_f32(*(v307 + 8 * v126), v117);
          *&v114 = vmul_n_f32(v131, v97 / sqrtf(vaddv_f32(vmul_f32(v131, v131))));
LABEL_126:
          v132 = -*(&v114 + 1);
          __p = *v306.__begin_;
          LODWORD(v314) = v117.i32[0];
          v133 = *(v307 + 1);
          v318 = 0;
          HIDWORD(v314) = v133;
          *&v316 = -*(&v114 + 1);
          HIDWORD(v316) = v114;
          v320 = 0;
          v295 = v114;
          if (*(v324 + 96) == 1)
          {
            v134 = vmul_n_f32(*&v114, *(&v329 + 2));
            v135 = vrev64_s32(v134);
            *&v315.i32[1] = vsub_f32(*&v114, v135);
            v319 = 1;
            v315.f32[0] = v132 - *v134.i32;
            v315.f32[3] = -vadd_f32(v135, *&v114).f32[0];
            v137 = &v325 + 4;
            v136 = &v325;
            v139 = &v325 + 12;
            v138 = &v325 + 8;
            if (!*(v324 + 120))
            {
              goto LABEL_130;
            }

            if (*(v324 + 120) == 1)
            {
              v136 = v327;
              v137 = &v327[4];
              v139 = &v327[12];
              v138 = &v327[8];
LABEL_130:
              v140 = *v137;
              v317.i32[0] = *v136;
              v317.i32[1] = v140;
              v141 = *v139;
              v317.i32[2] = *v138;
              v317.i32[3] = v141;
            }

            HIDWORD(v318) = 0;
            md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
            *&v114 = v295;
          }

          v319 = 0;
          *(v315.i64 + 4) = v114;
          v315.f32[0] = v132;
          v315.f32[3] = -*&v114;
          v317 = *v327;
          md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
          v143 = v115 - 1;
          if (v115 - 1 >= 2)
          {
            v144 = 1;
            v145 = v299;
            v146 = v295;
            v277 = v125;
            while (1)
            {
              __p = v293[v144];
              v147 = &v116[8 * v144];
              v148 = *v147;
              v149 = v147[1];
              if (++v144 >= v115)
              {
LABEL_141:
                v142 = v146;
                DWORD1(v142) = DWORD1(v145);
                v158 = *(&v146 + 1);
                *&v145 = v142;
                LODWORD(v142) = DWORD1(v146);
                v159 = *&v146;
              }

              else
              {
                v150 = v144;
                while (1)
                {
                  v151 = &v116[8 * v150];
                  v152 = *v151;
                  v153 = v151[1];
                  v154 = 1;
                  v155 = *v147;
                  v156 = v152;
                  do
                  {
                    v157 = vabds_f32(v156, v155);
                    if ((v154 & 1) == 0)
                    {
                      break;
                    }

                    v154 = 0;
                    v155 = v147[1];
                    v156 = v153;
                  }

                  while (v157 < 1.0e-10);
                  if (v157 >= 1.0e-10)
                  {
                    break;
                  }

                  if (++v150 == v115)
                  {
                    goto LABEL_141;
                  }
                }

                v160 = v152 - v148;
                v161 = v153 - v149;
                v162 = v97 / sqrtf((v160 * v160) + (v161 * v161));
                v159 = v162 * v160;
                *&v142 = v162 * v161;
                *&v145 = v159;
                v158 = *(&v146 + 1);
              }

              v300 = v145;
              v163 = &v116[8 * v144];
              v164 = *v163;
              v165 = v163[1];
              v166 = v159 + *&v146;
              v167 = *&v142 + v158;
              v168 = (v166 * v166) + (v167 * v167);
              if (v168 <= 0.0)
              {
                v171 = *(&v146 + 1);
                v172 = v146;
                v158 = *(&v146 + 1);
                LODWORD(v170) = v146;
              }

              else
              {
                v169 = v97 / sqrtf(v168);
                v170 = -(v167 * v169);
                v171 = v169 * v166;
                v172.f32[0] = v170;
                v172.f32[1] = v169 * v166;
              }

              v173 = v97 - (((v159 * v170) + (*&v142 * v171)) * ((v159 * v170) + (*&v142 * v171)));
              *&v314 = *v147;
              v174 = *(v147 + 1);
              *(&v318 + 1) = v298 * v125;
              v317 = *v327;
              HIDWORD(v314) = v174;
              v316 = __PAIR64__(LODWORD(v171), LODWORD(v170));
              *&v318 = v298;
              v320 = 1;
              v175 = v324;
              v176 = *(v324 + 128);
              v301 = v142;
              if (v176 < *(v92 + 862))
              {
                v279 = v165;
                v283 = v97 - (((v159 * v170) + (*&v142 * v171)) * ((v159 * v170) + (*&v142 * v171)));
                v286 = v170;
                v290 = v171;
                v303 = v172;
                v296 = v146;
                v177 = atan2f(*&v142, v159);
                v178 = v177 - atan2f(v158, *v296.i32);
                v179 = v178;
                if (v178 <= 3.14159265)
                {
                  v180 = v164;
                  if (v179 < -3.14159265)
                  {
                    v178 = v179 + 6.28318531;
                  }
                }

                else
                {
                  v178 = v179 + -6.28318531;
                  v180 = v164;
                }

                v181 = fabsf(v178);
                v182 = *(v175 + 121);
                v97 = 1.0;
                if (v182 == 2)
                {
                  v183 = sin(v181 * -0.5 + 1.57079633);
                  v180 = v164;
                  *&v183 = 1.0 / v183;
                  if (*(v175 + 124) < *&v183)
                  {
                    v182 = 1;
                  }

                  else
                  {
                    v182 = 2;
                  }
                }

                v184 = sqrtf(((v180 - v148) * (v180 - v148)) + ((v279 - v149) * (v279 - v149)));
                v185 = fmaxf(ceilf(v181 / v176), 1.0);
                _V5.S[1] = v296.i32[1];
                v170 = v286;
                v171 = v290;
                v173 = v283;
                if (v185 >= 2)
                {
                  if (v182 == 2)
                  {
                    v280 = v184;
                    _S8 = v296.i32[1];
                    __asm { FMLA            S1, S8, V5.S[1] }

                    v205 = vdup_lane_s32(v296, 0);
                    v205.f32[0] = -*&v296.i32[1];
                    v206 = vmul_n_f32(v205, 1.0 / sqrtf(_S1));
                    v207 = vdup_lane_s32(*&v300, 0);
                    v207.f32[0] = -*&v301;
                    v208 = vmul_n_f32(v207, 1.0 / sqrtf(vmul_f32(*&v300, *&v300).f32[0] + (*&v301 * *&v301)));
                    v291 = v208;
                    *v208.i32 = sqrtf(fmaxf(v283, 0.00001));
                    v209 = vdiv_f32(v303, vdup_lane_s32(v208, 0));
                    v304 = vsub_f32(v209, v303);
                    _S9 = v304.i32[1];
                    v211 = atan2f(v304.f32[1], v304.f32[0]);
                    v212 = atan2f(*&v296.i32[1], *v296.i32);
                    _V2.S[1] = v304.i32[1];
                    __asm { FMLA            S1, S9, V2.S[1] }

                    v287 = sqrtf(_S1) * sinf(v211 - v212);
                    v297 = 1.0 - v287;
                    *v315.f32 = v206;
                    *&v315.u32[2] = vneg_f32(v206);
                    md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                    if (v178 >= 0.0)
                    {
                      v317 = vextq_s8(*&v327[8], *&v327[8], 8uLL);
                      v223 = vneg_f32(v304);
                      v315.i64[0] = 0;
                      *&v315.u32[2] = vneg_f32(vmla_n_f32(v304, v206, v297));
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v223;
                      *&v315.u32[2] = vneg_f32(v209);
                      *v317.i8 = vmul_n_f32(*&v327[8], v287);
                      v317.i64[1] = *&v327[8];
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v223;
                      *&v315.u32[2] = vneg_f32(vmla_n_f32(v304, v291, v297));
                      *v317.i8 = vmul_n_f32(*&v327[8], v287);
                      v317.i64[1] = *&v327[8];
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      v315.i64[0] = 0;
                      v217 = &v327[20];
                      v216 = &v327[16];
                    }

                    else
                    {
                      *v315.f32 = vmla_n_f32(v304, v206, v297);
                      *&v315.u32[2] = v304;
                      v317.i64[0] = *v327;
                      v317.u64[1] = vmul_n_f32(*v327, v287);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v209;
                      *&v315.u32[2] = v304;
                      v317.i64[0] = *v327;
                      v317.u64[1] = vmul_n_f32(*v327, v287);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      v315 = vmla_n_f32(v304, v291, v297);
                      v215.i64[0] = *v327;
                      v215.i64[1] = *&v327[16];
                      v317 = v215;
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      *v315.f32 = v291;
                      v216 = v327;
                      v217 = &v327[4];
                    }

                    v315.f32[2] = -v291.f32[0];
                    v315.f32[3] = -v291.f32[1];
                    v224.i32[0] = *v216;
                    v224.i32[1] = *v217;
                    v224.i64[1] = *&v327[8];
                    v317 = v224;
                    md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                    *v315.f32 = v291;
                    v315.f32[2] = -v291.f32[0];
                    v315.f32[3] = -v291.f32[1];
                    v317 = *v327;
                    v184 = v280;
LABEL_171:
                    md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                    v97 = 1.0;
                  }

                  else
                  {
                    if (v182 == 1)
                    {
                      v187 = v184;
                      _S0 = v296.i32[1];
                      __asm { FMLA            S2, S0, V5.S[1] }

                      v194 = 1.0 / sqrtf(_S2);
                      v195 = -(*&v296.i32[1] * v194);
                      v196 = v194 * *v296.i32;
                      v197 = 1.0 / sqrtf(vmul_f32(*&v300, *&v300).f32[0] + (*&v301 * *&v301));
                      v198 = -(*&v301 * v197);
                      v199 = v197 * *&v300;
                      v315.f32[0] = v195;
                      v315.f32[1] = v194 * *v296.i32;
                      v315.f32[2] = -(v194 * -*&v296.i32[1]);
                      v315.f32[3] = -(v194 * *v296.i32);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      if (v178 >= 0.0)
                      {
                        v315.i64[0] = 0;
                        v200 = -v198;
                        v201 = -v199;
                        v315.f32[2] = -v198;
                        v315.f32[3] = -v199;
                        v317.i64[0] = *&v327[16];
                        md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                        v317.i64[0] = *v327;
                      }

                      else
                      {
                        v315 = __PAIR64__(LODWORD(v196), LODWORD(v195));
                        v317.i64[1] = *&v327[16];
                        md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                        v317.i64[1] = *&v327[8];
                        v200 = -v198;
                        v201 = -v199;
                      }

                      v315.i64[0] = __PAIR64__(LODWORD(v199), LODWORD(v198));
                      v315.i64[1] = __PAIR64__(LODWORD(v201), LODWORD(v200));
                      v184 = v187;
                      goto LABEL_171;
                    }

                    for (j = 0; j != v185; ++j)
                    {
                      v219 = __sincosf_stret(((j * (1.0 / (v185 + -1.0))) + -0.5) * v178);
                      v220 = vrev64_s32(vmul_n_f32(v303, v219.__sinval));
                      v221 = vmul_n_f32(v303, v219.__cosval);
                      v222.i32[0] = vsub_f32(v221, v220).u32[0];
                      v222.i32[1] = vadd_f32(v221, v220).i32[1];
                      v316 = v222;
                      *v315.f32 = v222;
                      *&v315.u32[2] = vneg_f32(v222);
                      md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
                      v320 = 0;
                    }
                  }

                  v298 = v184 + v298;
                  v92 = &off_1B33AD000;
                  v125 = v277;
                  goto LABEL_173;
                }

                v298 = v184 + v298;
                v125 = v277;
              }

              v202 = sqrtf(fmaxf(v173, 0.1));
              v315.f32[0] = v170 / v202;
              v315.f32[1] = v171 / v202;
              v315.f32[2] = -(v170 / v202);
              v315.f32[3] = -(v171 / v202);
              md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
LABEL_173:
              v145 = v300;
              v142 = v301;
              DWORD1(v145) = v301;
              v225 = v145;
              *&v146 = v145;
              if (v144 == v143)
              {
                goto LABEL_176;
              }
            }
          }

          v225 = v295;
          v145 = v299;
LABEL_176:
          v226 = &v116[8 * v143];
          v227 = &v116[8 * v115];
          v228 = *v226;
          v229 = v226[1];
          v230 = 1;
          v231 = *(v227 - 4);
          v232 = v228;
          do
          {
            v233 = vabds_f32(v232, v231);
            if ((v230 & 1) == 0)
            {
              break;
            }

            v230 = 0;
            v231 = *(v227 - 3);
            v232 = v229;
          }

          while (v233 < 1.0e-10);
          v91 = a1;
          v299 = v145;
          if (v233 >= 1.0e-10)
          {
            v235 = v228 - *(v227 - 4);
            v236 = v229 - *(v227 - 3);
            v237 = v97 / sqrtf((v235 * v235) + (v236 * v236));
            *&v225 = v237 * v235;
            v234 = v237 * v236;
            *(&v225 + 1) = v234;
          }

          else
          {
            v234 = *(&v225 + 1);
          }

          v302 = v225;
          v305 = v234;
          v315.f32[0] = -v234;
          *(v315.i64 + 4) = __PAIR64__(LODWORD(v234), v225);
          v315.f32[3] = -*&v225;
          v320 = 0;
          __p = v293[v115 - 1];
          v314 = *(v227 - 1);
          *&v316 = -v234;
          HIDWORD(v316) = v225;
          *&v318 = v298;
          *(&v318 + 1) = v298 * v125;
          md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
          v238 = v324;
          if (*(v324 + 97) == 1)
          {
            v239.i64[0] = v302;
            v239.i64[1] = v302;
            v240 = vmulq_n_f32(v239, *(&v329 + 3));
            v241 = vdupq_lane_s64(__SPAIR64__(v302, LODWORD(v305)), 0);
            v242 = vsubq_f32(v240, v241);
            v243 = vaddq_f32(v240, v241);
            v243.i32[0] = v242.i32[0];
            v243.i32[3] = v242.i32[3];
            v319 = 1;
            v315 = v243;
            v244 = &v327[24];
            v245 = &v328;
            v246 = &v328 + 4;
            if (!*(v324 + 120))
            {
              goto LABEL_186;
            }

            if (*(v324 + 120) == 1)
            {
              v244 = v327;
              v246 = &v327[12];
              v245 = &v327[8];
LABEL_186:
              v317.i64[0] = *v244;
              v247 = *v246;
              v317.i32[2] = *v245;
              v317.i32[3] = v247;
            }

            md::Ribbons::RibbonWriter<md::Ribbons::PolylineOverlayRibbonDescriptor>::writeVertex(&v323, &v322, &__p);
            v238 = v324;
          }

          v248 = *(v238 + 8);
          v249 = *(v238 + 16) - v248;
          v250 = v249 >> 1;
          if (v249 >= 4)
          {
            v251 = 2;
            if (v250 > 2)
            {
              v251 = v250;
            }

            v252 = v251 - 1;
            v253 = *(v238 + 8);
            v254 = v112;
            do
            {
              *v254 = v253;
              v255 = v253 + 1;
              v254[1] = v253 + 1;
              v256 = v253 + 3;
              LODWORD(v253) = v253 + 2;
              v254[2] = v253;
              v254[3] = v255;
              v254[4] = v256;
              v254[5] = v253;
              v254 += 6;
              --v252;
            }

            while (v252);
          }

          if (*(v238 + 48) != *(v238 + 40))
          {
            v257 = *(v238 + 96);
            v258 = v250 - *(v238 + 97);
            v259 = 1;
            if (v257)
            {
              v259 = 2;
            }

            if (v258 > v259)
            {
              v260 = v248 + 2 * v259;
              v261 = v111;
              do
              {
                *v261 = v260 - 2;
                v261[1] = v260;
                v261 += 2;
                ++v259;
                v260 += 2;
              }

              while (v258 > v259);
            }
          }

          v110 = v271;
          goto LABEL_200;
        }

        begin = 0;
LABEL_203:
        std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__vdeallocate(v109);
        *v109 = 0;
        *(v109 + 1) = 0;
        *(v109 + 2) = 0;
        *&v325 = 0;
        v323 = 0;
        v324 = 0;
        __p = &v323;
        std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
        if (begin)
        {
          operator delete(begin);
        }

        if (v307)
        {
          v308 = v307;
          operator delete(v307);
        }

        ggl::BufferMemory::~BufferMemory(v310);
        ggl::BufferMemory::~BufferMemory(v312);
        ++v98;
        v99 = v267;
      }

      v95 = v266 + 8;
    }

    while (v266 + 8 != v265);
  }

  *v91 = &unk_1F2A10B60;
  v91[29] = 0;
  return v91;
}

void md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>::layout(uint64_t a1, md::LayoutContext **a2)
{
  v2 = a2;
  v4 = *(a1 + 232);
  if (*(v4 + 304) == 1)
  {
    v5 = *(v4 + 176);
    *(a1 + 56) = v5;
    if (*(a2 + 136) == 1)
    {
      *(a1 + 88) = v5;
    }
  }

  if (*(a2 + 132) == 1)
  {
    *(a1 + 64) = *(v4 + 200);
    *(a1 + 72) = *(v4 + 208);
    *(a1 + 80) = *(v4 + 240);
    if (*(a2 + 136) == 1)
    {
      *(a1 + 96) = *(v4 + 200);
      *(a1 + 104) = *(v4 + 208);
      *(a1 + 112) = *(v4 + 240);
    }

    v6 = *(v4 + 248);
    *(a1 + 120) = v6;
    v7 = 128;
    goto LABEL_14;
  }

  v8 = *(a2 + 56);
  *(a1 + 64) = *(v4 + 184);
  *(a1 + 72) = *(v4 + 208);
  if (v8 == 1)
  {
    *(a1 + 80) = *(v4 + 232);
    if (*(a2 + 136) == 1)
    {
      *(a1 + 96) = *(v4 + 184);
      *(a1 + 104) = *(v4 + 208);
      v6 = *(v4 + 232);
LABEL_13:
      v7 = 112;
LABEL_14:
      *(a1 + v7) = v6;
    }
  }

  else
  {
    *(a1 + 80) = *(v4 + 224);
    if (*(a2 + 136) == 1)
    {
      *(a1 + 96) = *(v4 + 184);
      *(a1 + 104) = *(v4 + 208);
      v6 = *(v4 + 224);
      goto LABEL_13;
    }
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 == v9 || (*(*v9 + 1456) & 1) != 0)
  {
    goto LABEL_57;
  }

  md::LayoutContext::frameState(*a2);
  if ((*(v11 + 632) & 1) == 0)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    goto LABEL_57;
  }

  v12 = *(*v2 + 8);
  v84 = md::LayoutContext::get<md::CameraContext>(v12);
  v81 = a1;
  if (*(v84 + 3784))
  {
    v13 = *(a1 + 144);
    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = *(gdc::Camera::cameraFrame(v84) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v18 = v14 | (4 * i);
          geo::Frustum<double>::transformed(v87, v84 + 984, v13 + 1696 + 56 * v18);
          v19 = v13 + 32 + 104 * v18;
          v20 = *(v19 + 56);
          v21 = *(v19 + 88);
          v86[1] = *(v19 + 72);
          v86[2] = v21;
          v86[0] = v20;
          v91 = 0uLL;
          v92 = v16;
          gm::Box<double,3>::operator+=(v86, &v91);
          for (j = 0; j != 12; j += 2)
          {
            v23 = 0;
            v24 = *&v87[j + 1];
            v89 = v87[j];
            v90 = v24;
            do
            {
              v25 = v86 + v23;
              if (*(&v89 + v23) >= 0.0)
              {
                v25 = &v86[1] + v23 + 8;
              }

              *(&v91 + v23) = *v25;
              v23 += 8;
            }

            while (v23 != 24);
            v26 = 0;
            v27 = 0.0;
            do
            {
              v27 = v27 + *(&v87[j] + v26) * *(&v91 + v26);
              v26 += 8;
            }

            while (v26 != 24);
            v28 = *(&v87[j + 1] + 1) + v27;
            if (v28 < 0.0)
            {
              break;
            }
          }

          v29 = 1 << (4 * i + v14);
          if (v28 < 0.0)
          {
            v29 = 0;
          }

          v15 |= v29;
        }

        ++v14;
      }

      while (v14 != 4);
      goto LABEL_43;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v87, *(a1 + 192), 0);
    v31 = v88;
    v32 = 0.0;
  }

  else
  {
    v30 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v12) == 1 && *(a1 + 184) == 1)
    {
      v30 = *(gdc::Camera::cameraFrame(v84) + 16) * 0.0000000249532021 * (1 << *(a1 + 153));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v87, *(a1 + 192), 0);
    v31 = v88;
    v32 = v30;
  }

  v15 = ggl::CullingGrid::intersectedCellsForView(v31, v32);
  ggl::BufferMemory::~BufferMemory(v87);
LABEL_43:
  v9 = *(v81 + 8);
  v10 = *(v81 + 16);
  v2 = a2;
  if (v9 != v10)
  {
    v33 = vdupq_n_s64(2uLL);
    v34 = *(v81 + 8);
    do
    {
      v35 = *v34;
      v36 = *(*v34 + 1400);
      v37 = *(*v34 + 1408);
      if (v36 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = 0;
        do
        {
          v39 = *v36++;
          v40 = (*(v39 + 96) & v15) != 0;
          v38 |= v40;
          *(v39 + 48) = v40;
        }

        while (v36 != v37);
      }

      v41 = v38 & 1;
      v42 = (v35 + 264);
      v43 = 10;
      v44 = xmmword_1B33B0560;
      do
      {
        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v44)).u8[0])
        {
          *(v42 - 128) = v41;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v44)).i32[1])
        {
          *v42 = v41;
        }

        v44 = vaddq_s64(v44, v33);
        v42 += 256;
        v43 -= 2;
      }

      while (v43);
      *(v35 + 1424) = v41;
      ++v34;
    }

    while (v34 != v10);
  }

LABEL_57:
  if (v9 != v10)
  {
    v85 = vdupq_n_s64(2uLL);
    v82 = v10;
    while (1)
    {
      v45 = *v9;
      if (*(*v9 + 1424) == 1)
      {
        md::PolylineOverlayStyle::layout(*(v45 + 1472), v2);
        v46 = *(v45 + 1472);
        os_unfair_lock_lock((v46 + 196));
        v47 = *(v46 + 152);
        v48 = *(v46 + 156);
        os_unfair_lock_unlock((v46 + 196));
        v49 = *(v45 + 1400);
        v50 = *(v45 + 1408);
        while (v49 != v50)
        {
          v51 = *v49;
          if (*(*v49 + 48) == 1)
          {
            v52 = *(v51 + 104) >= v47 && *(v51 + 100) <= v48;
            *(v51 + 48) = v52;
          }

          ++v49;
        }

        v53 = **(v45 + 1472);
        v54 = (v45 + 264);
        v55 = 10;
        v56 = xmmword_1B33B0560;
        do
        {
          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v56)).u8[0])
          {
            *(v54 - 128) = v53;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v56)).i32[1])
          {
            *v54 = v53;
          }

          v56 = vaddq_s64(v56, v85);
          v54 += 256;
          v55 -= 2;
        }

        while (v55);
        *(v45 + 1424) = v53;
        if (v53)
        {
          break;
        }
      }

LABEL_149:
      if (++v9 == v10)
      {
        return;
      }
    }

    v57 = 0;
    LOBYTE(v91) = *(v45 + 1464);
    BYTE1(v91) = v2[88];
    BYTE2(v91) = v2[135];
    BYTE3(v91) = v2[134];
    v58 = *(*(v45 + 8) + 232);
    v59 = (v45 + 136);
    while (*(*(v45 + 1472) + v57 + 120) != 1)
    {
      *v59 = 0;
LABEL_147:
      ++v57;
      v59 += 128;
      if (v57 == 10)
      {
        v10 = v82;
        goto LABEL_149;
      }
    }

    *v59 = 1;
    *(v59 - 20) = v2[57];
    if (v57 > 9u)
    {
      v62 = 0;
    }

    else
    {
      if (((1 << v57) & 0x255) != 0)
      {
        v60 = v58[17];
        v61 = v60[1];
        if (v61 == *v60)
        {
          v67 = v60[11];
          if (!v67)
          {
            goto LABEL_151;
          }

          v62 = (*(*v67 + 48))(v67, v56);
          *&v86[0] = v62;
        }

        else
        {
          v62 = *(v61 - 8);
          *&v86[0] = v62;
          v60[1] = v61 - 8;
        }

        std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v60 + 4), v86);
        *&v87[0] = v62;
        v68 = v60[15];
        if (!v68)
        {
          goto LABEL_151;
        }
      }

      else if (((1 << v57) & 0x122) != 0)
      {
        v63 = v58[16];
        v64 = v63[1];
        if (v64 == *v63)
        {
          v69 = v63[11];
          if (!v69)
          {
            goto LABEL_151;
          }

          v62 = (*(*v69 + 48))(v69, v56);
          *&v86[0] = v62;
        }

        else
        {
          v62 = *(v64 - 8);
          *&v86[0] = v62;
          v63[1] = v64 - 8;
        }

        std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v63 + 4), v86);
        *&v87[0] = v62;
        v68 = v63[15];
        if (!v68)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v65 = v58[18];
        v66 = v65[1];
        if (v66 == *v65)
        {
          v70 = v65[11];
          if (!v70)
          {
            goto LABEL_151;
          }

          v62 = (*(*v70 + 48))(v70, v56);
          *&v86[0] = v62;
        }

        else
        {
          v62 = *(v66 - 8);
          *&v86[0] = v62;
          v65[1] = v66 - 8;
        }

        std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v65 + 4), v86);
        *&v87[0] = v62;
        v68 = v65[15];
        if (!v68)
        {
LABEL_151:
          v79 = std::__throw_bad_function_call[abi:nn200100]();
          md::PolylineOverlayStyle::layout(v79, v80);
          return;
        }
      }

      (*(*v68 + 48))(v68, v87);
    }

    v71 = *(*(v45 + 8) + 232);
    if (v57 <= 4u)
    {
      if (v57 > 1u)
      {
        if (v57 != 2)
        {
          if (v57 != 3)
          {
            v72 = v71[4];
            goto LABEL_118;
          }

          goto LABEL_108;
        }

LABEL_111:
        v72 = v71[2];
        goto LABEL_118;
      }

      if (!v57)
      {
        v72 = *v71;
        goto LABEL_118;
      }
    }

    else
    {
      if (v57 <= 7u)
      {
        if (v57 != 5)
        {
          if (v57 == 6)
          {
            v72 = v71[6];
LABEL_118:
            md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(v87, v72, &v91);
            goto LABEL_119;
          }

LABEL_108:
          md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::PolylineOverlayFillShader>>::pipelineStateForFunctionConstants(v87, v71[3], &v91);
          goto LABEL_119;
        }

        v73 = v71[5];
LABEL_116:
        md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(v87, v73, &v91);
        goto LABEL_119;
      }

      if (v57 != 8)
      {
        if (v57 != 9)
        {
          v87[0] = 0uLL;
LABEL_119:
          ggl::PipelineSetup::setState(v62, v87);
          if (*(&v87[0] + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v87[0] + 1));
          }

          **(v62 + 168) = *(v58[32] + 16);
          if (!v62)
          {
            goto LABEL_146;
          }

          v74 = *(v45 + 1472);
          if (!v74)
          {
            goto LABEL_146;
          }

          if (v57 > 4u)
          {
            if (v57 <= 6u)
            {
              if (v57 == 5)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[9];
                v78 = v74[10];
                goto LABEL_145;
              }

              if (v57 == 6)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[11];
                v78 = v74[12];
                goto LABEL_145;
              }

              goto LABEL_146;
            }

            if (v57 == 7)
            {
              v75 = *(v62 + 136);
              v76 = *(v62 + 232);
              v77 = v74[11];
              v78 = v74[12];
              goto LABEL_145;
            }

            if (v57 == 8)
            {
              v75 = *(v62 + 136);
              v76 = *(v62 + 232);
              v77 = v74[13];
              v78 = v74[14];
              goto LABEL_145;
            }

            if (v57 != 9)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v57 <= 1u)
            {
              v75 = *(v62 + 136);
              v76 = *(v62 + 232);
              if (v57)
              {
                v77 = v74[3];
                v78 = v74[4];
              }

              else
              {
                v77 = v74[1];
                v78 = v74[2];
              }

              goto LABEL_145;
            }

            if (v57 != 2)
            {
              if (v57 == 3)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[5];
                v78 = v74[6];
                goto LABEL_145;
              }

              if (v57 == 4)
              {
                v75 = *(v62 + 136);
                v76 = *(v62 + 232);
                v77 = v74[7];
                v78 = v74[8];
LABEL_145:
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setFloatBufferTextureSizeConstantData(v75, v76, v77, v78);
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v62 + 136), *(v62 + 232), *(v45 + 1488), *(v45 + 1496));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v62 + 136), *(v62 + 232), *(v45 + 1504), *(v45 + 1512));
              }

LABEL_146:
              *(v59 - 11) = v62;
              v2 = a2;
              goto LABEL_147;
            }
          }

          v75 = *(v62 + 136);
          v76 = *(v62 + 232);
          v77 = v74[5];
          v78 = v74[6];
          goto LABEL_145;
        }

        goto LABEL_111;
      }
    }

    v73 = v71[1];
    goto LABEL_116;
  }
}

void md::PolylineOverlayStyle::layout(uint64_t a1, uint64_t a2)
{
  *v130 = xmmword_1B33B0B40;
  *&v130[16] = xmmword_1B33B06F0;
  v131 = 256;
  __asm { FMOV            V0.2S, #-1.0 }

  v8 = -_D0;
  v133 = -_D0;
  v134 = 0;
  v9 = *(a2 + 144);
  if (!v9 || *(a2 + 136) != 1)
  {
    md::PolylineOverlayStyle::updateFromOverlay(a1, a2, v130);
    goto LABEL_40;
  }

  *a1 = 1;
  v141 = 0uLL;
  *&v130[28] = 1065353216;
  v134 = 0;
  v10 = *(a2 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v135, v9, v10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  if ((v136 & 1) == 0)
  {
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v144, &v141);
    *&v130[8] = v144;
    *&v130[4] = 0;
    v132 = *(a1 + 152);
    v49 = 0.0;
    goto LABEL_33;
  }

  v11 = md::LayoutContext::get<md::CameraContext>(*(*a2 + 8));
  v12 = fmaxf(*(v11 + 3080) + *(v11 + 3076), 1.0);
  v13 = *(*v135 + 24);
  v14 = fminf(v12, 23.0);
  v15 = *v13;
  if (!*v13 || (v16 = *v15, LODWORD(v15) = *v15 == 1.0, *(v13 + 10) != 1) || (v16 != 0.0 ? (_ZF = v16 == 1.0) : (_ZF = 1), _ZF))
  {
    v18 = *(v13 + v15 + 11);
    if (v18 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v135 + 24), 97, v18, 0, v14);
      goto LABEL_17;
    }

    v16 = 0.0;
  }

  v144.i8[0] = 1;
  LOBYTE(v140) = 1;
  v117 = v16;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 97, 0, &v144, v14);
  v119 = v118;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 97, 1, &v140, v14);
  v19 = v119 + ((v120 - v119) * v117);
LABEL_17:
  v127 = v19;
  *v130 = v19;
  if (v12 >= 0x17)
  {
    v20 = 23;
  }

  else
  {
    v20 = v12;
  }

  HIBYTE(v131) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v13, 91, v20, 2u, 0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v144, *(*v135 + 24), 93, 2u, v14);
  v125 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v144.f32)), vdupq_n_s32(0x37800080u));
  v141 = v125;
  v21 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v135 + 24), 319, v20, 2, 0);
  v23 = *(a2 + 192);
  v22 = *(a2 + 200);
  v25 = *(a2 + 208);
  v24 = *(a2 + 216);
  v26 = *(v11 + 5592);
  if (!v26)
  {
    v26 = v11;
  }

  v27 = *(a2 + 161);
  v28 = *(v26 + 3768);
  v29 = *(v26 + 1368);
  v30 = *(a2 + 164);
  v31 = *(a2 + 168);
  [**a2 sizeInPixels];
  v32 = (1 << v27);
  v33 = 1.0 / v32 * v31;
  v34 = 1.0 / v32 * ((1 << v27) + ~v30);
  v35 = (v25 - v33) * v32;
  v36 = (v24 - v34) * v32;
  *&v33 = (v33 - v23) * v32;
  *&v34 = (v34 - v22) * v32;
  v37 = v35 + *&v33;
  v38 = v36 + *&v34;
  v39 = v28 * v32;
  v42 = fmin(v41, v40);
  v43 = 0.0;
  v44 = 0.0;
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v135 + 24), 0x1D7u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(471, 2, *(*v135 + 24), 0);
    v44 = v45;
  }

  v46 = fmax(v37, v38);
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v135 + 24), 0x1D8u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(472, 2, *(*v135 + 24), 0);
    v43 = v47;
  }

  v48 = fmin(fmax(log2(v29 * v46 / (v39 * v42 * fmax(v44, 0.000000001))) / fmax(v43, 0.000000001), 0.0), 1.0);
  HIDWORD(v141) = vmuls_lane_f32(v48, v126, 3);
  if (*(&v141 + 3) == 0.0)
  {
    HIBYTE(v131) = 0;
  }

  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v144, &v141);
  *&v130[8] = v144;
  v49 = *(a2 + 72) * v127;
  *&v130[4] = v49;
  v132 = *(a1 + 152);
  if (v21 != 2)
  {
    if (v21 == 1)
    {
      v50 = 1065353216;
    }

    else
    {
      v50 = 0x3F80000000000000;
    }

    goto LABEL_34;
  }

LABEL_33:
  v50 = 0x3F0000003F000000;
LABEL_34:
  v51.f32[0] = -v49;
  v51.f32[1] = v49;
  v133 = COERCE_DOUBLE(vmul_f32(v50, v51));
  md::PolylineOverlayStyle::_updatePropertiesAndState(a1, a2, v130);
  if (v136 == 1)
  {
    (*(**v135 + 56))(*v135);
  }

  if (*&v135[24])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v135[24]);
  }

  if (*&v135[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v135[8]);
  }

LABEL_40:
  if (*a1 != 1)
  {
    return;
  }

  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  v52 = *(a2 + 68) * **(*(a2 + 112) + 256);
  v53 = *(a2 + 136);
  if (v131 == 1)
  {
    if (*(a1 + 193) == 1)
    {
      v54 = *(a1 + 8);
      v55 = *(a1 + 16);
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        *v135 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v54, v130, v135, 1.0, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }

      else
      {
        *v135 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v54, v130, v135, 1.0, v52);
      }
    }

    v58 = *(a1 + 24);
    v59 = *(a1 + 32);
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *v135 = 0;
    *&v135[8] = 0;
    *&v135[12] = *&v130[20];
    md::PolylineOverlayStyle::setStyleConstants(v58, v130, v135, 1.0, v52);
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v59);
    }

    *(a1 + 120) = *(a1 + 193);
    *(a1 + 121) = 257;
    *(a1 + 123) = 0;
    if (*(a2 + 132) == 1 && *(a2 + 133) == 1)
    {
      *(a1 + 128) = 257;
      v60 = *(a1 + 104);
      v61 = *(a1 + 112);
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        v62 = 0.2;
        v63 = &v130[8];
LABEL_63:
        md::PolylineOverlayStyle::setStyleConstants(v60, v130, v63, v62, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        goto LABEL_67;
      }

      v64 = 0.2;
      v65 = &v130[8];
LABEL_66:
      md::PolylineOverlayStyle::setStyleConstants(v60, v130, v65, v64, v52);
    }
  }

  else
  {
    *(a1 + 123) = 1;
    if (*(a2 + 132) == 1 && *(a2 + 133) == 1)
    {
      *(a1 + 128) = 257;
      v56 = *(a1 + 104);
      v57 = *(a1 + 112);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        md::PolylineOverlayStyle::setStyleConstants(v56, v130, &v130[8], 0.2, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v57);
      }

      else
      {
        md::PolylineOverlayStyle::setStyleConstants(v56, v130, &v130[8], 0.2, v52);
      }

      if (*(a1 + 193) == 1)
      {
        *(a1 + 120) = 1;
        v60 = *(a1 + 8);
        v61 = *(a1 + 16);
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          *v135 = xmmword_1B33B0710;
          v63 = v135;
          v62 = 1.0;
          goto LABEL_63;
        }

        *v135 = xmmword_1B33B0710;
        v65 = v135;
        v64 = 1.0;
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  v66 = *(a1 + 40);
  v67 = *(a1 + 48);
  if (v67)
  {
    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
    md::PolylineOverlayStyle::setStyleConstants(v66, v130, &v130[8], 1.0, v52);
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
    if (!v53)
    {
      return;
    }
  }

  else
  {
    md::PolylineOverlayStyle::setStyleConstants(v66, v130, &v130[8], 1.0, v52);
    if (!v53)
    {
      return;
    }
  }

  *v135 = xmmword_1B33B0B40;
  *&v135[16] = xmmword_1B33B06F0;
  v136 = 256;
  v138 = *&v8;
  *a1 = 1;
  v144 = 0uLL;
  *&v135[28] = 1065353216;
  v139 = 0;
  v68 = *(a2 + 144);
  v69 = *(a2 + 152);
  if (v69)
  {
    atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v141, v68, v69);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  if ((v143 & 1) == 0)
  {
    geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v140, &v144);
    *&v135[8] = v140;
    *&v135[4] = 0;
    v137 = *(a1 + 152);
    v107 = 0.0;
LABEL_97:
    v108 = 1065353216;
    goto LABEL_98;
  }

  v70 = md::LayoutContext::get<md::CameraContext>(*(*a2 + 8));
  v71 = fmaxf(*(v70 + 3080) + *(v70 + 3076), 1.0);
  v72 = *(v141 + 24);
  v73 = fminf(v71, 23.0);
  v74 = *v72;
  if (!*v72 || (v75 = *v74, LODWORD(v74) = *v74 == 1.0, *(v72 + 10) != 1) || v75 == 0.0 || v75 == 1.0)
  {
    v76 = *(v72 + v74 + 11);
    if (v76 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v141 + 24), 404, v76, 0, v73);
      goto LABEL_82;
    }

    v75 = 0.0;
  }

  LOBYTE(v140) = 1;
  v145 = 1;
  v121 = v75;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v72, 404, 0, &v140, v73);
  v123 = v122;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v72, 404, 1, &v145, v73);
  v77 = v123 + ((v124 - v123) * v121);
LABEL_82:
  v129 = v77;
  *v135 = v77;
  if (v71 >= 0x17)
  {
    v78 = 23;
  }

  else
  {
    v78 = v71;
  }

  HIBYTE(v136) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v72, 91, v78, 2u, 0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v140, *(v141 + 24), 403, 2u, v73);
  v128 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v140)), vdupq_n_s32(0x37800080u));
  v144 = v128;
  v79 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v141 + 24), 408, v78, 2, 0);
  v81 = *(a2 + 192);
  v80 = *(a2 + 200);
  v83 = *(a2 + 208);
  v82 = *(a2 + 216);
  v84 = *(v70 + 5592);
  if (!v84)
  {
    v84 = v70;
  }

  v85 = *(a2 + 161);
  v86 = *(v84 + 3768);
  v87 = *(v84 + 1368);
  v88 = *(a2 + 164);
  v89 = *(a2 + 168);
  [**a2 sizeInPixels];
  v90 = (1 << v85);
  v91 = 1.0 / v90 * v89;
  v92 = 1.0 / v90 * ((1 << v85) + ~v88);
  v93 = (v83 - v91) * v90;
  v94 = (v82 - v92) * v90;
  *&v91 = (v91 - v81) * v90;
  *&v92 = (v92 - v80) * v90;
  v95 = v93 + *&v91;
  v96 = v94 + *&v92;
  v97 = v86 * v90;
  v100 = fmin(v99, v98);
  v101 = 0.0;
  v102 = 0.0;
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v141 + 24), 0x1D7u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(471, 2, *(v141 + 24), 0);
    v102 = v103;
  }

  v104 = fmax(v95, v96);
  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(v141 + 24), 0x1D8u, 1u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(472, 2, *(v141 + 24), 0);
    v101 = v105;
  }

  v106 = fmin(fmax(log2(v87 * v104 / (v97 * v100 * fmax(v102, 0.000000001))) / fmax(v101, 0.000000001), 0.0), 1.0);
  v144.i32[3] = vmuls_lane_f32(v106, v128, 3);
  if (v144.f32[3] == 0.0)
  {
    HIBYTE(v136) = 0;
  }

  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(&v140, &v144);
  *&v135[8] = v140;
  v107 = *(a2 + 72) * v129;
  *&v135[4] = v107;
  v137 = *(a1 + 152);
  if (v79 == 2)
  {
    v108 = 0x3F0000003F000000;
    goto LABEL_98;
  }

  if (v79 == 1)
  {
    goto LABEL_97;
  }

  v108 = 0x3F80000000000000;
LABEL_98:
  v109.f32[0] = -v107;
  v109.f32[1] = v107;
  v138 = vmul_f32(v108, v109);
  md::PolylineOverlayStyle::_updatePropertiesAndState(a1, a2, v135);
  if (v143 == 1)
  {
    (*(*v141 + 56))(v141);
  }

  if (v142)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v142);
  }

  if (*(&v141 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v141 + 1));
  }

  if (v136 == 1)
  {
    if (*(a1 + 193) == 1)
    {
      v110 = *(a1 + 56);
      v111 = *(a1 + 64);
      if (v111)
      {
        atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
        v141 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v110, v135, &v141, 1.0, v52);
        std::__shared_weak_count::__release_shared[abi:nn200100](v111);
      }

      else
      {
        v141 = xmmword_1B33B0710;
        md::PolylineOverlayStyle::setStyleConstants(v110, v135, &v141, 1.0, v52);
      }
    }

    v113 = *(a1 + 72);
    v114 = *(a1 + 80);
    if (v114)
    {
      atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v141 = 0;
      DWORD2(v141) = 0;
      HIDWORD(v141) = *&v135[20];
      md::PolylineOverlayStyle::setStyleConstants(v113, v135, &v141, 1.0, v52);
      std::__shared_weak_count::__release_shared[abi:nn200100](v114);
    }

    else
    {
      *&v141 = 0;
      DWORD2(v141) = 0;
      HIDWORD(v141) = *&v135[20];
      md::PolylineOverlayStyle::setStyleConstants(v113, v135, &v141, 1.0, v52);
    }

    v112 = 0;
    *(a1 + 124) = *(a1 + 193);
    *(a1 + 125) = 257;
  }

  else
  {
    v112 = 1;
  }

  *(a1 + 127) = v112;
  v115 = *(a1 + 88);
  v116 = *(a1 + 96);
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    md::PolylineOverlayStyle::setStyleConstants(v115, v135, &v135[8], 1.0, v52);
    std::__shared_weak_count::__release_shared[abi:nn200100](v116);
  }

  else
  {
    md::PolylineOverlayStyle::setStyleConstants(v115, v135, &v135[8], 1.0, v52);
  }
}

void sub_1B2EF26CC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, char a39)
{
  if (a39)
  {
    (*(*a35 + 56))(a35, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a38);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  _Unwind_Resume(exception_object);
}

void md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(uint64_t *a1, const BOOL *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  v5 = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 13);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == (a2 + 104) || v5 < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2EF2D1C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::PolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(uint64_t *a1, const BOOL *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  v5 = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 13);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == (a2 + 104) || v5 < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2EF3294(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void md::PolylinePipelineStateManager<md::Ribbons::PolylineOverlayRibbonDescriptor,ggl::PolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::PolylineOverlayFillShader>>::pipelineStateForFunctionConstants(uint64_t *a1, const BOOL *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  v5 = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 13);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == (a2 + 104) || v5 < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2EF380C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::AlphaPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A110E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolylineOverlayRibbon::AlphaFillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A110B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, void *a2)
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

void md::PolylineOverlayStyle::updateFromOverlay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1;
  os_unfair_lock_lock((a1 + 196));
  v6 = *(a1 + 132);
  v7 = fabsf(v6);
  if (v6 <= 0.0 || v7 <= (v7 * 0.000011921) || v7 < 1.1755e-38)
  {
    v10 = -1.0;
    if (*(a2 + 20) > 1.9)
    {
      v10 = 0.0;
    }

    v6 = VKVectorOverlayAutomaticLineWidthForZoomLevel((v10 + *(a2 + 8)));
  }

  v11 = 0;
  *a3 = v6;
  do
  {
    *(a3 + v11 + 8) = *(a1 + v11 + 136);
    v11 += 4;
  }

  while (v11 != 16);
  *(a3 + 28) = *(a2 + 120) * *(a1 + 160);
  if (*(a2 + 124))
  {
    v12 = (a2 + 128);
  }

  else
  {
    v12 = (a1 + 164);
  }

  *(a3 + 52) = *v12;
  md::PolylineOverlayStyle::_updatePropertiesAndState(a1, a2, a3);

  os_unfair_lock_unlock((a1 + 196));
}

void md::PolylineOverlayStyle::setStyleConstants(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float32_t a5)
{
  ggl::BufferMemory::BufferMemory(v12);
  ggl::ResourceAccessor::accessConstantData(v14, 0, a1, 1);
  ggl::BufferMemory::operator=(v12, v14);
  ggl::BufferMemory::~BufferMemory(v14);
  v10 = 0;
  v11 = v13;
  v13[2] = 0;
  do
  {
    v11->i32[v10] = *(a3 + v10 * 4);
    ++v10;
  }

  while (v10 != 4);
  v11[3].f32[0] = *(a2 + 4) * 0.5;
  v11[3].f32[1] = a5;
  v11[4].f32[0] = *(a2 + 28) * a4;
  v11[5].i32[0] = *(a2 + 36);
  v11[5].i32[1] = *(a2 + 40);
  v11[7].i32[0] = *(a2 + 52);
  v11[6] = vneg_f32(vrev64_s32(*(a2 + 44)));
  ggl::BufferMemory::~BufferMemory(v12);
}

uint64_t md::PolylineOverlayStyle::_updatePropertiesAndState(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  if (v3 >= 1.0 && *(a3 + 52) == 0)
  {
    if (*(result + 176) == *(result + 168))
    {
      v5 = *(result + 148) < 1.0;
    }

    else
    {
      v5 = *(result + 192);
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = 0;
  *(a3 + 32) = v5 & 1;
  *(a3 + 36) = *(result + 152);
  *(a3 + 4) = *(a2 + 72) * *a3;
  if (*(a3 + 33) == 1 && v3 > 0.0)
  {
    v6 = *(a3 + 20) > 0.0 || *(result + 176) != *(result + 168);
  }

  *result = v6;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A111B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A11198;
  v6 = (a1 + 1400);
  std::vector<std::unique_ptr<md::PolylineOverlayRibbonSection<md::Ribbons::PolylineOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset((a1 + 1376));
  free(*(a1 + 1376));
  v2 = *(a1 + 1352);
  if (v2)
  {
    *(a1 + 1360) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 1320);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 1296);
  if (v3)
  {
    *(a1 + 1304) = v3;
    operator delete(v3);
  }

  for (i = 1168; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A11178;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A11178;
  v2 = a1[181];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}