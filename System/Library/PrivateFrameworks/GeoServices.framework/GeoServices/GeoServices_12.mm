void sub_18671C220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *__p, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (a36 == v46)
  {
    (*(*a36 + 32))();
  }

  else if (a36)
  {
    (*(*a36 + 40))();
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  a32 = 129;
  __p = &a32;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v47 + 1920), &a32, &__p) + 4) = ((rep - v45) / 1000) * 0.001;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

id GEOGetTileServerRemoteProxyLog()
{
  if (GEOGetTileServerRemoteProxyLog_onceToken != -1)
  {
    dispatch_once(&GEOGetTileServerRemoteProxyLog_onceToken, &__block_literal_global_55093);
  }

  v1 = GEOGetTileServerRemoteProxyLog_log;

  return v1;
}

uint64_t geo::codec::chaptersForTag(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 7)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_15;
  }

  if (a2 > 0xF)
  {
    v6 = vdupq_n_s16(a3);
    v23 = 0uLL;
    v24 = vdupq_n_s64(1uLL);
    v25 = 0uLL;
    v3 = a2 & 0xFFFFFFFFFFFFFFF0;
    v26 = (a1 + 128);
    v27 = a2 & 0xFFFFFFFFFFFFFFF0;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    do
    {
      v34.i16[0] = *(v26 - 64);
      v34.i16[1] = *(v26 - 56);
      v34.i16[2] = *(v26 - 48);
      v34.i16[3] = *(v26 - 40);
      v34.i16[4] = *(v26 - 32);
      v35.i16[0] = *v26;
      v35.i16[1] = v26[8];
      v34.i16[5] = *(v26 - 24);
      v35.i16[2] = v26[16];
      v35.i16[3] = v26[24];
      v34.i16[6] = *(v26 - 16);
      v35.i16[4] = v26[32];
      v35.i16[5] = v26[40];
      v34.i16[7] = *(v26 - 8);
      v35.i16[6] = v26[48];
      v35.i16[7] = v26[56];
      v36 = vceqq_s16(v34, v6);
      v37 = vmovl_u16(*v36.i8);
      v38.i64[0] = v37.u32[0];
      v38.i64[1] = v37.u32[1];
      v39 = vandq_s8(v38, v24);
      v38.i64[0] = v37.u32[2];
      v38.i64[1] = v37.u32[3];
      v40 = v38;
      v41 = vmovl_high_u16(v36);
      v38.i64[0] = v41.u32[0];
      v38.i64[1] = v41.u32[1];
      v42 = v38;
      v38.i64[0] = v41.u32[2];
      v38.i64[1] = v41.u32[3];
      v43 = v38;
      v44 = vceqq_s16(v35, v6);
      v45 = vmovl_u16(*v44.i8);
      v38.i64[0] = v45.u32[0];
      v38.i64[1] = v45.u32[1];
      v46 = vandq_s8(v38, v24);
      v38.i64[0] = v45.u32[2];
      v38.i64[1] = v45.u32[3];
      v47 = vandq_s8(v38, v24);
      v48 = vmovl_high_u16(v44);
      v38.i64[0] = v48.u32[0];
      v38.i64[1] = v48.u32[1];
      v49 = vandq_s8(v38, v24);
      v38.i64[0] = v48.u32[2];
      v38.i64[1] = v48.u32[3];
      v29 = vaddq_s64(v29, vandq_s8(v43, v24));
      v28 = vaddq_s64(v28, vandq_s8(v42, v24));
      v25 = vaddq_s64(v25, vandq_s8(v40, v24));
      v23 = vaddq_s64(v23, v39);
      v33 = vaddq_s64(v33, vandq_s8(v38, v24));
      v32 = vaddq_s64(v32, v49);
      v31 = vaddq_s64(v31, v47);
      v30 = vaddq_s64(v30, v46);
      v26 += 128;
      v27 -= 16;
    }

    while (v27);
    v4 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v30, v23), vaddq_s64(v32, v28)), vaddq_s64(vaddq_s64(v31, v25), vaddq_s64(v33, v29))));
    if (v3 == a2)
    {
      return v4;
    }

    if ((a2 & 8) == 0)
    {
LABEL_15:
      v50 = a2 - v3;
      v51 = (a1 + 16 * v3);
      do
      {
        v52 = *v51;
        v51 += 8;
        if (v52 == a3)
        {
          ++v4;
        }

        --v50;
      }

      while (v50);
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = vdupq_n_s16(a3);
  }

  v7 = v3;
  v3 = a2 & 0xFFFFFFFFFFFFFFF8;
  v8 = 0uLL;
  v9 = v4;
  v10 = v7 - (a2 & 0xFFFFFFFFFFFFFFF8);
  v11 = (a1 + 16 * v7 + 64);
  v12 = vdupq_n_s64(1uLL);
  v13 = 0uLL;
  v14 = 0uLL;
  do
  {
    v15.i16[0] = *(v11 - 32);
    v15.i16[1] = *(v11 - 24);
    v15.i16[2] = *(v11 - 16);
    v15.i16[3] = *(v11 - 8);
    v15.i16[4] = *v11;
    v15.i16[5] = v11[8];
    v15.i16[6] = v11[16];
    v15.i16[7] = v11[24];
    v16 = vceqq_s16(v15, v6);
    v17 = vmovl_u16(*v16.i8);
    v18.i64[0] = v17.u32[0];
    v18.i64[1] = v17.u32[1];
    v19 = vandq_s8(v18, v12);
    v18.i64[0] = v17.u32[2];
    v18.i64[1] = v17.u32[3];
    v20 = vandq_s8(v18, v12);
    v21 = vmovl_high_u16(v16);
    v18.i64[0] = v21.u32[0];
    v18.i64[1] = v21.u32[1];
    v22 = vandq_s8(v18, v12);
    v18.i64[0] = v21.u32[2];
    v18.i64[1] = v21.u32[3];
    v14 = vaddq_s64(v14, vandq_s8(v18, v12));
    v13 = vaddq_s64(v13, v22);
    v8 = vaddq_s64(v8, v20);
    v9 = vaddq_s64(v9, v19);
    v11 += 64;
    v10 += 8;
  }

  while (v10);
  v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v9, v13), vaddq_s64(v8, v14)));
  if (v3 != a2)
  {
    goto LABEL_15;
  }

  return v4;
}

void std::__tree<std::shared_ptr<FeatureStyleAttributes const>,FeatureStyleAttributesSet::FeatureStyleAttributesCompare,std::allocator<std::shared_ptr<FeatureStyleAttributes const>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<FeatureStyleAttributes const>,FeatureStyleAttributesSet::FeatureStyleAttributesCompare,std::allocator<std::shared_ptr<FeatureStyleAttributes const>>>::destroy(*a1);
    std::__tree<std::shared_ptr<FeatureStyleAttributes const>,FeatureStyleAttributesSet::FeatureStyleAttributesCompare,std::allocator<std::shared_ptr<FeatureStyleAttributes const>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

uint64_t getTileKeyFromXPCDictionary(_OWORD *a1, xpc_object_t xdict)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_get_value(xdict, "tileKey");
  v4 = v3;
  if (v3)
  {
    if (MEMORY[0x18CFD4110](v3) == MEMORY[0x1E69E9E70])
    {
      if (xpc_data_get_length(v4) == 16)
      {
        *a1 = *xpc_data_get_bytes_ptr(v4);
        v9 = 1;
        goto LABEL_10;
      }

      v5 = GEOGetTileServerRemoteProxyLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        length = xpc_data_get_length(v4);
        v6 = "Received wrong length (%zu) for tileKey";
        v7 = v5;
        v8 = 12;
        goto LABEL_8;
      }
    }

    else
    {
      v5 = GEOGetTileServerRemoteProxyLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        v6 = "Invalid tile key";
LABEL_7:
        v7 = v5;
        v8 = 2;
LABEL_8:
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_ERROR, v6, &v11, v8);
      }
    }
  }

  else
  {
    v5 = GEOGetTileServerRemoteProxyLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      v6 = "No tile key";
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

id anonymous namespace::isolation(_anonymous_namespace_ *this)
{
  {
  }

  return v2;
}

uint64_t std::__hash_table<std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,GEOTileKeyList * {__strong}>,std::__unordered_map_hasher<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,GEOTileKeyList * {__strong}>,std::hash<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,GEOTileKeyList * {__strong}>,std::equal_to<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,GEOTileKeyList * {__strong}>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      v2[2] = &unk_1EF7EAC98;
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

uint64_t std::__hash_table<std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,unsigned long>,std::__unordered_map_hasher<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,unsigned long>,std::hash<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::__unordered_map_equal<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,unsigned long>,std::equal_to<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::hash<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,true>,std::allocator<std::__hash_value_type<geo::_retain_ptr<GEOSimpleTileRequester * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      *(v2 + 2) = &unk_1EF7EAC98;

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

void sub_18671D804(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

id *std::vector<anonymous namespace::RequesterTileKeys>::erase(uint64_t *a1, id *a2, id *a3)
{
  v3 = a2;
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 != v5)
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = a2 + *a1;
      v9 = a3 + *a1;
      do
      {
        v10 = &v8[v7];
        WeakRetained = objc_loadWeakRetained(&v9[v7]);
        objc_storeWeak(&v8[v7], WeakRetained);

        v12 = *&v9[v7 + 8];
        *&v9[v7 + 8] = 0;
        v13 = *&v8[v7 + 8];
        *(v10 + 1) = v12;

        *(v10 + 2) = *&v9[v7 + 16];
        v8 += 24;
        v9 += 24;
      }

      while (&v9[v7] != v5);
      a2 = &v8[-v6];
    }
  }

  return v3;
}

void GEOTileUnpackageBaseAndLocalization(void *a1, void *a2, void *a3)
{
  v10 = a1;
  *a2 = 0;
  *a3 = 0;
  v5 = [v10 length];
  v6 = v10;
  if (v5 > 7 && (v7 = *[v10 bytes], v8 = v10, v7 == 1280262996))
  {
    v9 = *([v10 bytes] + 4);
    *a2 = [v10 subdataWithRange:{8, v9 - 8}];
    *a3 = [v10 subdataWithRange:{v9, v5 - v9}];
  }

  else
  {
    *a2 = v10;
  }
}

void *geo::codec::PBDataReaderObjC::PBDataReaderObjC(void *this, const unsigned __int8 *a2, uint64_t a3)
{
  *this = &unk_1EF7F26D0;
  this[1] = 0;
  if (a2)
  {
    if (a3)
    {
      v3 = this;
      v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
      v5 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v4];
      this = v3;
      v3[1] = v5;
    }
  }

  return this;
}

uint64_t GEOTileKeyZoom(uint64_t a1, int *a2)
{
  v2 = 0;
  v3 = *a1 & 0x1F;
  if (v3 <= 9)
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 6);
      goto LABEL_9;
    }

    if (v3 != 3)
    {
      return v2;
    }

LABEL_7:
    v4 = *(a1 + 1);
LABEL_9:
    *a2 = v4 & 0x3F;
    return 1;
  }

  if (v3 == 10 || v3 == 20)
  {
    goto LABEL_7;
  }

  return v2;
}

void geo::codec::DaVinciRenderablesDealloc(geo::codec::zone_mallocator *this, GeoCodecsDaVinciRenderable *a2)
{
  if (this)
  {
    if (a2)
    {
      v3 = a2;
      v4 = (this + 8);
      do
      {
        v7 = *(v4 - 1);
        v8 = geo::codec::zone_mallocator::instance(this);
        v9 = pthread_rwlock_rdlock((v8 + 32));
        if (v9)
        {
          geo::read_write_lock::logFailure(v9, "read lock", v10);
        }

        if (v7)
        {
          atomic_fetch_add((v8 + 24), 0xFFFFFFFF);
        }

        malloc_zone_free(*v8, v7);
        v11 = pthread_rwlock_unlock((v8 + 32));
        if (v11)
        {
          geo::read_write_lock::logFailure(v11, "unlock", v12);
        }

        v5 = *v4;
        v4 += 6;
        v6 = geo::codec::zone_mallocator::instance(v11);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v6, v5);
        --v3;
      }

      while (v3);
    }

    v13 = geo::codec::zone_mallocator::instance(this);
    v14 = pthread_rwlock_rdlock((v13 + 32));
    if (v14)
    {
      geo::read_write_lock::logFailure(v14, "read lock", v15);
    }

    atomic_fetch_add((v13 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v13, this);
    v16 = pthread_rwlock_unlock((v13 + 32));
    if (v16)
    {

      geo::read_write_lock::logFailure(v16, "unlock", v17);
    }
  }
}

void sub_18671E1D0(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

void geo::codec::DaVinciMetaDataDealloc(geo::codec::zone_mallocator *this, GeoCodecsDaVinciMetaData *a2)
{
  if (this)
  {
    v3 = *(this + 3);
    v4 = geo::codec::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMetaDataFlags>(v4, v3);
    v5 = *(this + 2);
    v7 = geo::codec::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsPackedElevationRange>(v7, v5);
    v9 = geo::codec::zone_mallocator::instance(v8);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    atomic_fetch_add((v9 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v9, this);
    v12 = pthread_rwlock_unlock((v9 + 32));
    if (v12)
    {

      geo::read_write_lock::logFailure(v12, "unlock", v13);
    }
  }
}

void sub_18671E2D4(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count_vtbl **std::vector<GeoCodecsContourLinesFeature,geo::allocator_adapter<GeoCodecsContourLinesFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100](std::__shared_weak_count *a1)
{
  v1 = a1;
  v2 = a1->__vftable;
  if (!a1->__vftable)
  {
    return v1;
  }

  shared_owners = a1->__shared_owners_;
  v4 = a1->__vftable;
  if (shared_owners == v2)
  {
    goto LABEL_12;
  }

  do
  {
    v5 = *(shared_owners - 16);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      a1 = *(shared_owners - 48);
      if (!a1)
      {
        goto LABEL_4;
      }

LABEL_8:
      std::__shared_weak_count::__release_weak(a1);
      goto LABEL_4;
    }

    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    a1 = *(shared_owners - 48);
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_4:
    shared_owners -= 56;
  }

  while (shared_owners != v2);
  v4 = v1->__vftable;
LABEL_12:
  v1->__shared_owners_ = v2;
  v6 = geo::codec::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsContourLinesFeature>(v6, v4);
  return v1;
}

uint64_t GEOLocalPeak::mightReach(GEOLocalPeak *this, double a2)
{
  if (*this != 1 || *(this + 1) != 1 || *(this + 2) != 1)
  {
    return 1;
  }

  v2 = *(this + 1);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    return *(this + 56) == *(this + 4) > a2;
  }

  v6 = *(this + 4);
  v5 = *(this + 5);
  v7 = *(this + 2);
  v8 = (v5 - v6) / (v7 - v2);
  v9 = v3 - v7;
  v10 = v3 - v2;
  v11 = v6 + v8 * v10;
  v12 = *(this + 6) + -(*(this + 6) - v5) / v9 * v10;
  if (*(this + 56) == 1)
  {
    if (v11 < v12)
    {
      v11 = v12;
    }

    return v11 > a2;
  }

  else
  {
    if (v12 < v11)
    {
      v11 = v12;
    }

    return v11 < a2;
  }
}

void std::__function::__func<GEOOscillatingFunction,std::allocator<GEOOscillatingFunction>,double ()(double)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

BOOL geo_isDayLightForLocation(double *a1, double a2, double a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (*MEMORY[0x1E695E468] + a2) / 86400.0;
  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = v6 + 2440587.5;
  geo_getSunPosition(&v9, v5, -v4);
  return v7 - a3 >= 0.0;
}

void sub_18671F0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x18CFD1E40](a13, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void *AddrObjGoogle::protobuf::EncodedDescriptorDatabase::EncodedDescriptorDatabase(void *this)
{
  this[2] = 0;
  *this = &unk_1EF7E0B80;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

uint64_t AddrObjGoogle::protobuf::MessageLite::ParseFromArray(AddrObjGoogle::protobuf::MessageLite *this, char *a2, int a3)
{
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = &a2[a3];
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = a3;
  v12 = xmmword_187FB7A20;
  v13 = AddrObjGoogle::protobuf::io::CodedInputStream::default_recursion_limit_;
  v14 = 0;
  v15 = 0;
  (*(*this + 32))(this);
  if (!(*(*this + 64))(this, v7))
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (((*(*this + 40))(this) & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v18, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message_lite.cc", 124);
    sub_1867338E0(this, &__p);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v18, &__p);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v16, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
    goto LABEL_7;
  }

  v4 = v10;
LABEL_8:
  AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(v7);
  return v4 & 1;
}

void sub_18671F324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(AddrObjGoogle::protobuf::io::CodedInputStream *this, unsigned int *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 - v3 <= 9 && (v4 <= v3 || *(v4 - 1) < 0))
  {
    v14 = 0;
    v8 = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v14);
    if (v8)
    {
      *a2 = v14;
    }
  }

  else
  {
    v5 = v3 + 1;
    v6 = *v3 & 0x7F;
    if ((*v3 & 0x80) != 0)
    {
      v7 = v3[1];
      v6 = *v3 & 0x7F | ((v7 & 0x7F) << 7);
      if (v7 < 0)
      {
        v9 = v3[2];
        v6 = v6 & 0xFFE03FFF | ((v9 & 0x7F) << 14);
        if (v9 < 0)
        {
          v10 = v3[3];
          v6 = v6 & 0xF01FFFFF | ((v10 & 0x7F) << 21);
          if (v10 < 0)
          {
            v11 = v3[4];
            v6 |= v11 << 28;
            if (v11 < 0)
            {
              v5 = v3 + 6;
              v13 = 5;
              while (*(v5 - 1) < 0)
              {
                v8 = 0;
                ++v5;
                if (!--v13)
                {
                  return v8;
                }
              }
            }

            else
            {
              v5 = v3 + 5;
            }
          }

          else
          {
            v5 = v3 + 4;
          }
        }

        else
        {
          v5 = v3 + 3;
        }
      }

      else
      {
        v5 = v3 + 2;
      }
    }

    *a2 = v6;
    *(this + 1) = v5;
    return 1;
  }

  return v8;
}

uint64_t *AddrObjGoogle::protobuf::FieldDescriptorProto::SharedCtor(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  *(this + 17) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  *(this + 3) = 0x100000000;
  *(this + 16) = 1;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 4) = v3;
  v4 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 5) = v4;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v4);
  *(this + 6) = result;
  *(this + 7) = 0;
  *(this + 18) = 0;
  return result;
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto::IsInitialized(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  if (*(this + 8) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(this + 3) + 8 * v2);
      if (((*(*v3 + 40))(v3) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v2 < *(this + 8));
  }

  if (*(this + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 6) + 8 * v4);
      if (((*(*v5 + 40))(v5) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v4 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 9) + 8 * v6);
      if (((*(*v7 + 40))(v7) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v6 < *(this + 20));
  }

  if (*(this + 26) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(this + 12) + 8 * v8);
      if (((*(*v9 + 40))(v9) & 1) == 0)
      {
        return 0;
      }
    }

    while (++v8 < *(this + 26));
  }

  if ((*(this + 156) & 0x40) == 0)
  {
    return 1;
  }

  v10 = *(this + 18);
  if (!v10)
  {
    v10 = *(AddrObjGoogle::protobuf::DescriptorProto::default_instance_(0) + 144);
  }

  result = (*(*v10 + 40))(v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 80) < 1)
  {
LABEL_5:
    if (*(a2 + 56) < 1)
    {
      return 1;
    }

    else
    {
      v9 = 0;
      do
      {
        result = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(a1, *(*(a2 + 48) + 8 * v9), a3, a4);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v9;
      }

      while (v9 < *(a2 + 56));
    }
  }

  else
  {
    v8 = 0;
    while ((AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddNestedExtensions(a1, *(*(a2 + 72) + 8 * v8), a3, a4) & 1) != 0)
    {
      if (++v8 >= *(a2 + 80))
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(AddrObjGoogle::protobuf::FileDescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905640))
  {
    operator new();
  }

  return qword_1EA905638;
}

void sub_18671F814(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10B1C4063BD6257);
  __cxa_guard_abort(&qword_1EA905640);
  _Unwind_Resume(a1);
}

addr_obj::V2AddressObjectProto *addr_obj::V2AddressObjectProto::V2AddressObjectProto(addr_obj::V2AddressObjectProto *this)
{
  *this = &unk_1EF7E00F0;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  addr_obj::V2AddressObjectProto::SharedCtor(this);
  return this;
}

void sub_18671F8B4(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((v1 + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::SourceCodeInfo::default_instance(AddrObjGoogle::protobuf::SourceCodeInfo *this)
{
  v1 = AddrObjGoogle::protobuf::SourceCodeInfo::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::SourceCodeInfo::default_instance_(v1);
}

addr_obj::Fingerprints *addr_obj::Fingerprints::Fingerprints(addr_obj::Fingerprints *this, const addr_obj::AddressObjectProto *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (!*(a2 + 10))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 4);
  do
  {
    v5 = *(*v4 + 16);
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *v5, *(v5 + 1));
    }

    else
    {
      v6 = *v5;
      v14.__r_.__value_.__r.__words[2] = *(v5 + 2);
      *&v14.__r_.__value_.__l.__data_ = v6;
    }

    v7 = *(*v4 + 32);
    v15 = *(*v4 + 24);
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *v7, *(v7 + 1));
    }

    else
    {
      v8 = *v7;
      v16.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&v16.__r_.__value_.__l.__data_ = v8;
    }

    v9 = *(*v4 + 40);
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }

    std::vector<addr_obj::Fingerprints::Fingerprint>::push_back[abi:ne200100](this, &v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    v4 += 8;
  }

  while (v4 != *(a2 + 4) + 8 * *(a2 + 10));
  if (*(this + 1) == *this)
  {
LABEL_20:
    if ((*(a2 + 88) & 2) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, "unk");
      v15 = 0;
      std::string::basic_string[abi:ne200100]<0>(&v16, "unk");
      v11 = *(a2 + 2);
      if (*(v11 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
      }

      else
      {
        v12 = *v11;
        __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
        *&__p.__r_.__value_.__l.__data_ = v12;
      }

      std::vector<addr_obj::Fingerprints::Fingerprint>::push_back[abi:ne200100](this, &v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }

  return this;
}

void sub_18671FB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::vector<addr_obj::Fingerprints::Fingerprint>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t **AddrObjGoogle::protobuf::FileDescriptorProto::Clear(AddrObjGoogle::protobuf::FileDescriptorProto **this)
{
  v1 = this;
  if (*(this + 204))
  {
    if (*(this + 204))
    {
      v2 = this[2];
      this = AddrObjGoogle::protobuf::internal::kEmptyString(this);
      if (v2 != this)
      {
        v3 = v1[2];
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 1) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(v1 + 204) & 2) != 0)
    {
      v4 = v1[3];
      if (v4 != AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        v5 = v1[3];
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 1) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }
  }

  v6 = *(v1 + 51);
  if ((v6 & 0x1FE00) != 0)
  {
    if ((v6 & 0x200) != 0)
    {
      v7 = v1[23];
      if (v7)
      {
        AddrObjGoogle::protobuf::FileOptions::Clear(v7);
        v6 = *(v1 + 51);
      }
    }

    if ((v6 & 0x400) != 0)
    {
      v8 = v1[24];
      if (v8)
      {
        AddrObjGoogle::protobuf::SourceCodeInfo::Clear(v8);
      }
    }
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>((v1 + 4));
  *(v1 + 16) = 0;
  *(v1 + 20) = 0;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((v1 + 11));
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((v1 + 14));
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((v1 + 17));
  result = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>((v1 + 20));
  v11 = v1[1];
  v10 = v1 + 1;
  *(v10 + 49) = 0;
  if (v11)
  {

    return AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(v10);
  }

  return result;
}

AddrObjGoogle::protobuf::DescriptorProto *AddrObjGoogle::protobuf::DescriptorProto::DescriptorProto(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  *this = &unk_1EF7E0E50;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 38) = 0;
  *(this + 2) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 18) = 0;
  *(this + 39) = 0;
  return this;
}

void sub_18671FDC8(_Unwind_Exception *a1)
{
  v8 = v4;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v8);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v7);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v6);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v5);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v7 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 == 3)
      {
        break;
      }

      if (v8 == 2)
      {
        if (v9 != 2)
        {
          goto LABEL_16;
        }

LABEL_24:
        v12 = *(v5 + 36);
        v13 = *(v5 + 32);
        if (v13 >= v12)
        {
          if (v12 == *(v5 + 40))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v12 + 1);
            v12 = *(v5 + 36);
          }

          *(v5 + 36) = v12 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumValueDescriptorProto>::New();
        }

        v14 = *(v5 + 24);
        *(v5 + 32) = v13 + 1;
        v15 = *(v14 + 8 * v13);
        v35 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
          {
            return 0;
          }
        }

        else
        {
          v35 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v17 = *(a2 + 14);
        v18 = *(a2 + 15);
        *(a2 + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v35);
        if (!AddrObjGoogle::protobuf::EnumValueDescriptorProto::MergePartialFromCodedStream(v15, a2, v20, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v19);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2))
        {
          v25 = *v11;
          if (v25 == 18)
          {
            goto LABEL_47;
          }

          if (v25 == 26)
          {
            *(a2 + 1) = v11 + 1;
LABEL_42:
            *(v5 + 60) |= 4u;
            v26 = *(v5 + 48);
            if (!v26)
            {
              operator new();
            }

            v36 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
              {
                return 0;
              }
            }

            else
            {
              v36 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            v30 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v36);
            if (!AddrObjGoogle::protobuf::EnumOptions::MergePartialFromCodedStream(v26, a2, v31, v32) || *(a2 + 36) != 1)
            {
              return 0;
            }

            this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v30);
            v33 = *(a2 + 14);
            v23 = __OFSUB__(v33, 1);
            v34 = v33 - 1;
            if (v34 < 0 == v23)
            {
              *(a2 + 14) = v34;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              this = 1;
              *(a2 + 36) = 1;
              return this;
            }
          }
        }
      }

      else
      {
        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_16;
        }

        *(v5 + 60) |= 1u;
        v10 = *(v5 + 16);
        if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
        if (!this)
        {
          return this;
        }

        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 18)
        {
LABEL_47:
          *(a2 + 1) = v11 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_42;
    }

LABEL_16:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::EnumValueDescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v7 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 != 3)
          {
            break;
          }

          if (v9 == 2)
          {
            v13 = *(v5 + 40);
            goto LABEL_33;
          }

LABEL_16:
          if (v9 == 4)
          {
            return 1;
          }

          this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
          if ((this & 1) == 0)
          {
            return 0;
          }
        }

        if (v8 == 2)
        {
          break;
        }

        if (v8 != 1 || v9 != 2)
        {
          goto LABEL_16;
        }

        *(v5 + 40) |= 1u;
        v10 = *(v5 + 16);
        if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
        if (!this)
        {
          return this;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v14 < v11 && *v14 == 16)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
          goto LABEL_25;
        }
      }

      if ((v7 & 7) != 0)
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
LABEL_25:
      v27 = 0;
      if (v12 >= v11 || (v15 = *v12, (v15 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
        if (!this)
        {
          return this;
        }

        v15 = v27;
        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else
      {
        v16 = v12 + 1;
        *(a2 + 1) = v16;
      }

      *(v5 + 32) = v15;
      v13 = *(v5 + 40) | 2;
      *(v5 + 40) = v13;
    }

    while (v16 >= v11 || *v16 != 26);
    *(a2 + 1) = v16 + 1;
LABEL_33:
    *(v5 + 40) = v13 | 4;
    v17 = *(v5 + 24);
    if (!v17)
    {
      operator new();
    }

    v28 = 0;
    v18 = *(a2 + 1);
    if (v18 >= *(a2 + 2) || *v18 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
      {
        return 0;
      }
    }

    else
    {
      v28 = *v18;
      *(a2 + 1) = v18 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v28);
    if (!AddrObjGoogle::protobuf::EnumValueOptions::MergePartialFromCodedStream(v17, a2, v22, v23) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v21);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      this = 1;
      *(a2 + 36) = 1;
      return this;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905680))
  {
    operator new();
  }

  return qword_1EA905678;
}

void sub_1867205E8(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C407FD52222);
  __cxa_guard_abort(&qword_1EA905680);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  AddrObjGoogle::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E1060;
  AddrObjGoogle::protobuf::EnumValueDescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

AddrObjGoogle::protobuf::FieldDescriptorProto *AddrObjGoogle::protobuf::FieldDescriptorProto::SharedDtor(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  v5 = *(this + 4);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 4);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  v8 = *(this + 5);
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  if (v8 != v9)
  {
    v10 = *(this + 5);
    if (v10)
    {
      if (*(v10 + 23) < 0)
      {
        operator delete(*v10);
      }

      v9 = MEMORY[0x18CFD1E40](v10, 0x1012C40EC159624);
    }
  }

  v11 = *(this + 6);
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  if (v11 != v12)
  {
    v13 = *(this + 6);
    if (v13)
    {
      if (*(v13 + 23) < 0)
      {
        operator delete(*v13);
      }

      v12 = MEMORY[0x18CFD1E40](v13, 0x1012C40EC159624);
    }
  }

  result = AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(v12);
  if (result != this)
  {
    result = *(this + 7);
    if (result)
    {
      v15 = *(*result + 8);

      return v15();
    }
  }

  return result;
}

void AddrObjGoogle::protobuf::FieldDescriptorProto::~FieldDescriptorProto(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  *this = &unk_1EF7E0F00;
  AddrObjGoogle::protobuf::FieldDescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::FieldDescriptorProto::~FieldDescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::MessageFactory::generated_factory(AddrObjGoogle::protobuf::MessageFactory *this)
{
  v1 = qword_1EA9054D0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v3[0] = &unk_1EF7E2130;
    v3[1] = sub_1867208B8;
    v4 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054D0, v3);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  return qword_1EA9054D8;
}

void sub_1867208A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void sub_186720970(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(v3);
  MEMORY[0x18CFD1E40](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_186720990()
{
  result = qword_1EA9054D8;
  if (qword_1EA9054D8)
  {
    return (*(*qword_1EA9054D8 + 8))();
  }

  return result;
}

void *sub_1867209C4(void *a1)
{
  *a1 = &unk_1EF7E0B40;
  v2 = a1 + 1;
  std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table((a1 + 7));
  AddrObjGoogle::protobuf::internal::Mutex::~Mutex((a1 + 6));
  std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(v2);
  return a1;
}

void sub_186720A20(void *a1)
{
  sub_1867209C4(a1);

  JUMPOUT(0x18CFD1E40);
}

uint64_t sub_186720A58(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  AddrObjGoogle::protobuf::internal::Mutex::Lock((a1 + 48));
  v3 = std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>>>::find<AddrObjGoogle::protobuf::Descriptor const*>((a1 + 56), &v20);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  AddrObjGoogle::protobuf::internal::Mutex::Unlock((a1 + 48));
  if (v4)
  {
    return v4;
  }

  v6 = *(*(v20 + 16) + 16);
  if (v6 != AddrObjGoogle::protobuf::DescriptorPool::generated_pool(v5))
  {
    return 0;
  }

  v7 = **(v20 + 16);
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  v19[0].__r_.__value_.__r.__words[0] = v7;
  v8 = std::__hash_table<std::__hash_value_type<char const*,void (*)(std::string const&)>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,void (*)(std::string const&)>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,void (*)(std::string const&)>>>::find<char const*>((a1 + 8), &v19[0].__r_.__value_.__l.__data_);
  if (!v8 || (v9 = v8[3]) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message.cc", 316);
    v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, "File appears to be in generated pool but wasn't registered: ");
    v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, **(v20 + 16));
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v18, v16);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    return 0;
  }

  AddrObjGoogle::protobuf::internal::Mutex::Lock((a1 + 48));
  v10 = std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>>>::find<AddrObjGoogle::protobuf::Descriptor const*>((a1 + 56), &v20);
  if (!v10 || (v4 = v10[3]) == 0)
  {
    (v9)(**(v20 + 16));
    v11 = std::__hash_table<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::__unordered_map_hasher<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::__unordered_map_equal<AddrObjGoogle::protobuf::Descriptor const*,std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>,std::equal_to<AddrObjGoogle::protobuf::Descriptor const*>,AddrObjGoogle::protobuf::hash<AddrObjGoogle::protobuf::Descriptor const*>,true>,std::allocator<std::__hash_value_type<AddrObjGoogle::protobuf::Descriptor const*,AddrObjGoogle::protobuf::Message const*>>>::find<AddrObjGoogle::protobuf::Descriptor const*>((a1 + 56), &v20);
    if (!v11 || (v4 = v11[3]) == 0)
    {
      AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message.cc", 333);
      v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, "Type appears to be in generated pool but wasn't ");
      v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, "registered: ");
      v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, *(v20 + 8));
      AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v18, v14);
      AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
      v4 = 0;
    }
  }

  AddrObjGoogle::protobuf::internal::Mutex::Unlock((a1 + 48));
  return v4;
}

void sub_186720C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  AddrObjGoogle::protobuf::internal::Mutex::Unlock((v3 + 48));
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::geo3::StructuredAddress::SharedCtor(addr_obj::geo3::StructuredAddress *this)
{
  *(this + 60) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 3) = v3;
  v4 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 4) = v4;
  v5 = AddrObjGoogle::protobuf::internal::kEmptyString(v4);
  *(this + 5) = v5;
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v5);
  *(this + 6) = v6;
  v7 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  *(this + 7) = v7;
  v8 = AddrObjGoogle::protobuf::internal::kEmptyString(v7);
  *(this + 8) = v8;
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v8);
  *(this + 9) = v9;
  v10 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  *(this + 10) = v10;
  v11 = AddrObjGoogle::protobuf::internal::kEmptyString(v10);
  *(this + 11) = v11;
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v11);
  *(this + 12) = v12;
  v13 = AddrObjGoogle::protobuf::internal::kEmptyString(v12);
  *(this + 13) = v13;
  v14 = AddrObjGoogle::protobuf::internal::kEmptyString(v13);
  *(this + 14) = v14;
  v15 = AddrObjGoogle::protobuf::internal::kEmptyString(v14);
  *(this + 18) = v15;
  v16 = AddrObjGoogle::protobuf::internal::kEmptyString(v15);
  *(this + 19) = v16;
  v17 = AddrObjGoogle::protobuf::internal::kEmptyString(v16);
  *(this + 23) = v17;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v17);
  *(this + 27) = result;
  *(this + 61) = 0;
  return result;
}

uint64_t addr_obj::geo3::StructuredAddress::default_instance(addr_obj::geo3::StructuredAddress *this)
{
  v1 = addr_obj::geo3::StructuredAddress::default_instance_(this);
  if (!v1)
  {
    addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(0, v2, v3, v4);
  }

  return addr_obj::geo3::StructuredAddress::default_instance_(v1);
}

uint64_t *AddrObjGoogle::protobuf::FileOptions::SharedCtor(AddrObjGoogle::protobuf::FileOptions *this)
{
  *(this + 25) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 5) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 6) = v3;
  *(this + 30) = 0;
  *(this + 14) = 1;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 8) = result;
  *(this + 31) = 0;
  *(this + 96) = 0;
  *(this + 26) = 0;
  return result;
}

std::string *std::pair<std::pair<std::string,int> const,std::pair<void const*,int>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *(a2 + 6);
  *&this[1].__r_.__value_.__r.__words[1] = a2[2];
  return this;
}

uint64_t AddrObjGoogle::protobuf::FileOptions::default_instance_(AddrObjGoogle::protobuf::FileOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA9056C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9056C0))
  {
    operator new();
  }

  return qword_1EA9056B8;
}

void sub_186720EB0(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C4072609925);
  __cxa_guard_abort(&qword_1EA9056C0);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance_(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this)
{
  if ((atomic_load_explicit(&qword_1EA905650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905650))
  {
    operator new();
  }

  return qword_1EA905648;
}

void sub_186720F60(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40380937A6);
  __cxa_guard_abort(&qword_1EA905650);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange *this)
{
  AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E0DA0;
  AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance_(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

uint64_t addr_obj::FingerprintProto::default_instance_(addr_obj::FingerprintProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9055A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9055A0))
  {
    operator new();
  }

  return qword_1EA905598;
}

void sub_18672104C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C400739E6B9);
  __cxa_guard_abort(&qword_1EA9055A0);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::VenueInfoProto::default_instance_(addr_obj::VenueInfoProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9055B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9055B0))
  {
    operator new();
  }

  return qword_1EA9055A8;
}

void sub_1867210FC(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40A7563026);
  __cxa_guard_abort(&qword_1EA9055B0);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::AddressObjectProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
LABEL_2:
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v7 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 > 3)
      {
        break;
      }

      if (v8 == 1)
      {
        if ((v7 & 7) != 0)
        {
          goto LABEL_31;
        }

        v70 = 0;
        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70);
          if (!this)
          {
            return this;
          }

          v12 = v70;
          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(v5 + 80) = v12;
        v14 = *(v5 + 88) | 1;
        *(v5 + 88) = v14;
        if (v13 < v10 && *v13 == 18)
        {
          *(a2 + 1) = v13 + 1;
LABEL_40:
          *(v5 + 88) = v14 | 2;
          v15 = *(v5 + 16);
          if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
          if (!this)
          {
            return this;
          }

          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 26)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_47;
          }
        }
      }

      else
      {
        if (v8 == 2)
        {
          if (v9 != 2)
          {
            goto LABEL_31;
          }

          v14 = *(v5 + 88);
          goto LABEL_40;
        }

        if (v8 != 3 || v9 != 2)
        {
          goto LABEL_31;
        }

LABEL_47:
        *(v5 + 88) |= 4u;
        v17 = *(v5 + 24);
        if (!v17)
        {
          operator new();
        }

        v70 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70))
          {
            return 0;
          }
        }

        else
        {
          v70 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        v21 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v70);
        if (!addr_obj::LocalizationProto::MergePartialFromCodedStream(v17, a2, v22, v23) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v21);
        v24 = *(a2 + 14);
        v25 = __OFSUB__(v24, 1);
        v26 = v24 - 1;
        if (v26 < 0 == v25)
        {
          *(a2 + 14) = v26;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2) && *v27 == 34)
        {
          while (1)
          {
            *(a2 + 1) = v27 + 1;
LABEL_61:
            v28 = *(v5 + 44);
            v29 = *(v5 + 40);
            if (v29 >= v28)
            {
              if (v28 == *(v5 + 48))
              {
                AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 32), v28 + 1);
                v28 = *(v5 + 44);
              }

              *(v5 + 44) = v28 + 1;
              AddrObjGoogle::protobuf::internal::GenericTypeHandler<addr_obj::FingerprintProto>::New();
            }

            v30 = *(v5 + 32);
            *(v5 + 40) = v29 + 1;
            v31 = *(v30 + 8 * v29);
            v70 = 0;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2) || *v32 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70))
              {
                return 0;
              }
            }

            else
            {
              v70 = *v32;
              *(a2 + 1) = v32 + 1;
            }

            v33 = *(a2 + 14);
            v34 = *(a2 + 15);
            *(a2 + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v70);
            if (!addr_obj::FingerprintProto::MergePartialFromCodedStream(v31, a2, v36, v37) || *(a2 + 36) != 1)
            {
              return 0;
            }

            this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v35);
            v38 = *(a2 + 14);
            v25 = __OFSUB__(v38, 1);
            v39 = v38 - 1;
            if (v39 < 0 == v25)
            {
              *(a2 + 14) = v39;
            }

            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2))
            {
              break;
            }

            v40 = *v27;
            if (v40 != 34)
            {
              if (v40 == 42)
              {
                *(a2 + 1) = v27 + 1;
LABEL_79:
                *(v5 + 88) |= 0x40u;
                v41 = *(v5 + 72);
                if (!v41)
                {
                  operator new();
                }

                v70 = 0;
                v42 = *(a2 + 1);
                if (v42 >= *(a2 + 2) || *v42 < 0)
                {
                  if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70))
                  {
                    return 0;
                  }
                }

                else
                {
                  v70 = *v42;
                  *(a2 + 1) = v42 + 1;
                }

                v43 = *(a2 + 14);
                v44 = *(a2 + 15);
                *(a2 + 14) = v43 + 1;
                if (v43 >= v44)
                {
                  return 0;
                }

                v45 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v70);
                if (!addr_obj::VenueInfoProto::MergePartialFromCodedStream(v41, a2, v46, v47) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v45);
                v48 = *(a2 + 14);
                v25 = __OFSUB__(v48, 1);
                v49 = v48 - 1;
                if (v49 < 0 == v25)
                {
                  *(a2 + 14) = v49;
                }

                v50 = *(a2 + 1);
                if (*(a2 + 4) - v50 > 1 && *v50 == 162 && v50[1] == 6)
                {
                  *(a2 + 1) = v50 + 2;
LABEL_94:
                  *(v5 + 88) |= 0x10u;
                  v51 = *(v5 + 56);
                  if (!v51)
                  {
                    operator new();
                  }

                  v70 = 0;
                  v52 = *(a2 + 1);
                  if (v52 >= *(a2 + 2) || *v52 < 0)
                  {
                    if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v70 = *v52;
                    *(a2 + 1) = v52 + 1;
                  }

                  v53 = *(a2 + 14);
                  v54 = *(a2 + 15);
                  *(a2 + 14) = v53 + 1;
                  if (v53 >= v54)
                  {
                    return 0;
                  }

                  v55 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v70);
                  if (!addr_obj::V0AddressObjectProto::MergePartialFromCodedStream(v51, a2, v56, v57) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v55);
                  v58 = *(a2 + 14);
                  v25 = __OFSUB__(v58, 1);
                  v59 = v58 - 1;
                  if (v59 < 0 == v25)
                  {
                    *(a2 + 14) = v59;
                  }

                  v60 = *(a2 + 1);
                  if (*(a2 + 4) - v60 > 1 && *v60 == 170 && v60[1] == 6)
                  {
                    *(a2 + 1) = v60 + 2;
LABEL_109:
                    *(v5 + 88) |= 0x20u;
                    v61 = *(v5 + 64);
                    if (!v61)
                    {
                      operator new();
                    }

                    v70 = 0;
                    v62 = *(a2 + 1);
                    if (v62 >= *(a2 + 2) || *v62 < 0)
                    {
                      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v70))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v70 = *v62;
                      *(a2 + 1) = v62 + 1;
                    }

                    v63 = *(a2 + 14);
                    v64 = *(a2 + 15);
                    *(a2 + 14) = v63 + 1;
                    if (v63 >= v64)
                    {
                      return 0;
                    }

                    v65 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v70);
                    if (!addr_obj::V1AddressObjectProto::MergePartialFromCodedStream(v61, a2, v66, v67) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v65);
                    v68 = *(a2 + 14);
                    v25 = __OFSUB__(v68, 1);
                    v69 = v68 - 1;
                    if (v69 < 0 == v25)
                    {
                      *(a2 + 14) = v69;
                    }

                    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      this = 1;
                      *(a2 + 36) = 1;
                      return this;
                    }
                  }
                }
              }

              goto LABEL_2;
            }
          }
        }
      }
    }

    if (v7 >> 3 > 0x63)
    {
      if (v8 == 100)
      {
        if (v9 == 2)
        {
          goto LABEL_94;
        }
      }

      else if (v8 == 101 && v9 == 2)
      {
        goto LABEL_109;
      }
    }

    else
    {
      if (v8 == 4)
      {
        if (v9 != 2)
        {
          goto LABEL_31;
        }

        goto LABEL_61;
      }

      if (v8 == 5 && v9 == 2)
      {
        goto LABEL_79;
      }
    }

LABEL_31:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(AddrObjGoogle::protobuf::io::CodedInputStream *this, unint64_t *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v3 - v2 <= 9 && (v3 <= v2 || *(v3 - 1) < 0))
  {
    return AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Slow(this, a2);
  }

  v4 = v2 + 1;
  v5 = *v2 & 0x7F;
  if ((*v2 & 0x80) == 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_25:
    *(this + 1) = &v2[v4 - v2];
    *a2 = v5 | (v6 << 28) | (v7 << 56);
    return 1;
  }

  v9 = v2[1];
  v5 = *v2 & 0x7F | ((v9 & 0x7F) << 7);
  if ((v9 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 2;
    goto LABEL_25;
  }

  v10 = v2[2];
  v5 = v5 & 0xFFE03FFF | ((v10 & 0x7F) << 14);
  if ((v10 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 3;
    goto LABEL_25;
  }

  v11 = v2[3];
  v5 = v5 & 0xF01FFFFF | ((v11 & 0x7F) << 21);
  if ((v11 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    v4 = v2 + 4;
    goto LABEL_25;
  }

  v6 = v2[4] & 0x7F;
  if ((v2[4] & 0x80) == 0)
  {
    v7 = 0;
    v4 = v2 + 5;
    goto LABEL_25;
  }

  v12 = v2[5];
  v6 = v2[4] & 0x7F | ((v12 & 0x7F) << 7);
  if ((v12 & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 6;
    goto LABEL_25;
  }

  v13 = v2[6];
  v6 = v6 & 0xFFE03FFF | ((v13 & 0x7F) << 14);
  if ((v13 & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 7;
    goto LABEL_25;
  }

  v14 = v2[7];
  v6 = v6 & 0xF01FFFFF | ((v14 & 0x7F) << 21);
  if ((v14 & 0x80000000) == 0)
  {
    v7 = 0;
    v4 = v2 + 8;
    goto LABEL_25;
  }

  v7 = v2[8] & 0x7F;
  if ((v2[8] & 0x80) == 0)
  {
    v4 = v2 + 9;
    goto LABEL_25;
  }

  v15 = v2[9];
  if ((v15 & 0x80000000) == 0)
  {
    v4 = v2 + 10;
    v7 = v2[8] & 0x7F | ((v15 & 0x7F) << 7);
    goto LABEL_25;
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>>>::find<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  v4 = v3 - *a2 + (*a2 << 16);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3 - *a2 + (*a2 << 16);
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
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
      if (result[2] == *a2 && *(result + 6) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t addr_obj::V1AddressObject::V1AddressObject(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, int *a5)
{
  v7 = addr_obj::AddressObjectBase::AddressObjectBase(a1, a5, a2, a3);
  *v7 = &unk_1EF7DFAC0;
  v7[31] = 0;
  v7[32] = 0;
  v7[33] = 0;
  addr_obj::geo3::Address::Address((v7 + 34));
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 336) = 0u;
  addr_obj::geo3::StructuredAddress::StructuredAddress((a1 + 384));
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  addr_obj::geo3::Address::Address((a1 + 656));
  *(a1 + 720) = 0;
  if ((*(a4 + 88) & 0x40) != 0)
  {
    operator new();
  }

  addr_obj::V1AddressObject::init(a1, a4);
  return a1;
}

void sub_186721BD8(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v2, 0x20C40DC1BFBCFLL);
  std::unique_ptr<addr_obj::VenueInfo const>::reset[abi:ne200100]((v1 + 720), 0);
  addr_obj::geo3::Address::~Address((v1 + 656));
  if (*(v1 + 655) < 0)
  {
    operator delete(*v4);
  }

  addr_obj::geo3::StructuredAddress::~StructuredAddress((v1 + 384));
  if (*(v1 + 383) < 0)
  {
    operator delete(*(v1 + 360));
  }

  if (*(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  addr_obj::geo3::Address::~Address((v1 + 272));
  if (*(v1 + 271) < 0)
  {
    operator delete(*v3);
  }

  addr_obj::AddressObjectBase::~AddressObjectBase(v1);
  _Unwind_Resume(a1);
}

void sub_186721D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void addr_obj::protobuf_AddDesc_AddressObject_2eproto(addr_obj *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1EA905470 & 1) == 0)
  {
    byte_1EA905470 = 1;
    AddrObjGoogle::protobuf::internal::VerifyVersion(0x1E9808, 0x1E9808, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObject.pb.cc", a4);
    addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(v5, v6, v7, v8);
    AddrObjGoogle::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_187FB688C, 0xA09);
    AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedFile("AddressObject.proto", sub_1867220A0);
    v10 = addr_obj::LocalizationProto::default_instance_(v9);
    v11 = addr_obj::FingerprintProto::default_instance_(v10);
    v12 = addr_obj::AddressObjectProto::default_instance_(v11);
    inited = addr_obj::AddressObjectProto::InitAsDefaultInstance(v12);
    v14 = addr_obj::V0AddressObjectProto::default_instance_(inited);
    v15 = addr_obj::V1AddressObjectProto::default_instance_(v14);
    v16 = addr_obj::geo3::Address::default_instance(v15);
    *(v15 + 6) = v16;
    v17 = addr_obj::geo3::StructuredAddress::default_instance(v16);
    *(v15 + 9) = v17;
    v18 = addr_obj::geo3::Address::default_instance(v17);
    *(v15 + 11) = v18;
    v19 = addr_obj::V2AddressObjectProto::default_instance_(v18);
    v20 = addr_obj::V1AddressObjectProto::default_instance(v19);
    v21 = addr_obj::V2AddressObjectProto::default_instance(v20);
    AddrObjGoogle::protobuf::internal::ExtensionSet::RegisterMessageExtension(v20, 0x64, 11, 0, 0, v21, v22);
    v24 = addr_obj::VenueDecoratorProto::default_instance_(v23);
    v25 = addr_obj::VenueFieldProto::default_instance_(v24);
    v26 = addr_obj::VenueTemplateProto::default_instance_(v25);
    v27 = addr_obj::VenueFormatterProto::default_instance_(v26);
    v28 = addr_obj::VenueInfoProto::default_instance_(v27);
    v29 = addr_obj::V3AddressObjectProto::default_instance_(v28);
    v30 = addr_obj::VenueInfoProto::default_instance(v29);
    *(v29 + 2) = v30;
    v31 = addr_obj::V1AddressObjectProto::default_instance(v30);
    v32 = addr_obj::V3AddressObjectProto::default_instance(v31);
    AddrObjGoogle::protobuf::internal::ExtensionSet::RegisterMessageExtension(v31, 0x65, 11, 0, 0, v32, v33);
    v35 = addr_obj::V4AddressObjectProto::default_instance_(v34);
    v36 = addr_obj::VenueInfoProto::default_instance(v35);
    *(v35 + 2) = v36;
    v37 = addr_obj::V2AddressObjectProto::default_instance(v36);
    v38 = addr_obj::V4AddressObjectProto::default_instance(v37);
    AddrObjGoogle::protobuf::internal::ExtensionSet::RegisterMessageExtension(v37, 0x66, 11, 0, 0, v38, v39);

    AddrObjGoogle::protobuf::internal::OnShutdown(addr_obj::protobuf_ShutdownFile_AddressObject_2eproto, v40);
  }
}

void sub_1867220A0(addr_obj::LocalizationProto *a1)
{
  v1 = qword_1EA905478;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v53[0] = &unk_1EF7E2130;
    v53[1] = addr_obj::protobuf_AssignDesc_AddressObject_2eproto;
    v54 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905478, v53);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v53);
  }

  v2 = qword_1EA905398;
  v3 = addr_obj::LocalizationProto::default_instance(a1);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v2, v3, v4);
  v5 = qword_1EA9053A8;
  v7 = addr_obj::FingerprintProto::default_instance(v6);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v5, v7, v8);
  v9 = qword_1EA9053B8;
  v11 = addr_obj::AddressObjectProto::default_instance(v10);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v9, v11, v12);
  v13 = qword_1EA9053C8;
  v15 = addr_obj::V0AddressObjectProto::default_instance(v14);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v13, v15, v16);
  v17 = qword_1EA9053D8;
  v19 = addr_obj::V1AddressObjectProto::default_instance(v18);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v17, v19, v20);
  v21 = qword_1EA9053E8;
  v23 = addr_obj::V2AddressObjectProto::default_instance(v22);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v21, v23, v24);
  v25 = qword_1EA9053F8;
  v27 = addr_obj::VenueDecoratorProto::default_instance(v26);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v25, v27, v28);
  v29 = qword_1EA905408;
  v31 = addr_obj::VenueFieldProto::default_instance(v30);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v29, v31, v32);
  v33 = qword_1EA905418;
  v35 = addr_obj::VenueTemplateProto::default_instance(v34);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v33, v35, v36);
  v37 = qword_1EA905428;
  v39 = addr_obj::VenueFormatterProto::default_instance(v38);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v37, v39, v40);
  v41 = qword_1EA905438;
  v43 = addr_obj::VenueInfoProto::default_instance(v42);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v41, v43, v44);
  v45 = qword_1EA905450;
  v47 = addr_obj::V3AddressObjectProto::default_instance(v46);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v45, v47, v48);
  v49 = qword_1EA905460;
  v51 = addr_obj::V4AddressObjectProto::default_instance(v50);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v49, v51, v52);
}

void sub_18672225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

atomic_ullong *AddrObjGoogle::protobuf::GoogleOnceInitImpl(atomic_ullong *result, uint64_t a2)
{
  v2 = *result;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3 = result;
    do
    {
      v4 = 0;
      atomic_compare_exchange_strong(result, &v4, 1uLL);
      if (!v4)
      {
        result = (*(*a2 + 16))(a2);
        __dmb(0xBu);
        *v3 = 2;
        return result;
      }
    }

    while (!*result);
    if (*result == 1)
    {
      do
      {
        result = sched_yield();
        v5 = *v3;
        __dmb(0xBu);
      }

      while (v5 == 1);
    }
  }

  return result;
}

uint64_t *AddrObjGoogle::protobuf::internal::kEmptyString(AddrObjGoogle::protobuf::internal *this)
{
  if ((atomic_load_explicit(byte_1EA905768, memory_order_acquire) & 1) == 0)
  {
    sub_186722368();
  }

  return &qword_1EA905770;
}

void sub_186722368()
{
  if (__cxa_guard_acquire(byte_1EA905768))
  {
    qword_1EA905770 = 0;
    unk_1EA905778 = 0;
    qword_1EA905780 = 0;

    __cxa_guard_release(byte_1EA905768);
  }
}

BOOL AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(AddrObjGoogle::protobuf::io::CodedInputStream *this, std::string *a2)
{
  v10 = 0;
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 < v4)
  {
    v6 = *v5;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = *v5;
      v7 = v5 + 1;
      *(this + 1) = v7;
      goto LABEL_7;
    }
  }

  v8 = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
  result = 0;
  if (v8)
  {
    v6 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      v7 = *(this + 1);
      v4 = *(this + 2);
LABEL_7:
      if (v6 > v4 - v7)
      {
        return AddrObjGoogle::protobuf::io::CodedInputStream::ReadStringFallback(this, a2, v6);
      }

      std::string::resize(a2, v6, 0);
      if (!v6)
      {
        return 1;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        if (!a2->__r_.__value_.__l.__size_)
        {
LABEL_15:
          a2 = 0;
          goto LABEL_16;
        }

        a2 = a2->__r_.__value_.__r.__words[0];
      }

      else if (!*(&a2->__r_.__value_.__s + 23))
      {
        goto LABEL_15;
      }

LABEL_16:
      memcpy(a2, *(this + 1), v6);
      *(this + 1) += v6;
      return 1;
    }
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v6 = *(a2 + 1);
          if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v7 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v7;
            *(a2 + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 <= 3)
          {
            break;
          }

          if (v7 >> 3 > 5)
          {
            if (v8 == 6)
            {
              if (v9 != 2)
              {
                goto LABEL_30;
              }

              while (2)
              {
                v65 = *(v5 + 60);
                v66 = *(v5 + 56);
                if (v66 >= v65)
                {
                  if (v65 == *(v5 + 64))
                  {
                    AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48), v65 + 1);
                    v65 = *(v5 + 60);
                  }

                  *(v5 + 60) = v65 + 1;
                  AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
                }

                v67 = *(v5 + 48);
                *(v5 + 56) = v66 + 1;
                v68 = *(v67 + 8 * v66);
                v87 = 0;
                v69 = *(a2 + 1);
                if (v69 >= *(a2 + 2) || *v69 < 0)
                {
                  if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
                  {
                    return 0;
                  }
                }

                else
                {
                  v87 = *v69;
                  *(a2 + 1) = v69 + 1;
                }

                v70 = *(a2 + 14);
                v71 = *(a2 + 15);
                *(a2 + 14) = v70 + 1;
                if (v70 >= v71)
                {
                  return 0;
                }

                v72 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v87);
                if (!AddrObjGoogle::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v68, a2, v73, v74) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v72);
                v75 = *(a2 + 14);
                v23 = __OFSUB__(v75, 1);
                v76 = v75 - 1;
                if (v76 < 0 == v23)
                {
                  *(a2 + 14) = v76;
                }

                v11 = *(a2 + 1);
                if (v11 < *(a2 + 2))
                {
                  v77 = *v11;
                  if (v77 == 50)
                  {
LABEL_109:
                    *(a2 + 1) = v11 + 1;
                    continue;
                  }

                  if (v77 == 58)
                  {
                    *(a2 + 1) = v11 + 1;
                    goto LABEL_128;
                  }
                }

                break;
              }
            }

            else
            {
              if (v8 != 7 || v9 != 2)
              {
                goto LABEL_30;
              }

LABEL_128:
              *(v5 + 156) |= 0x40u;
              v78 = *(v5 + 144);
              if (!v78)
              {
                operator new();
              }

              v87 = 0;
              v79 = *(a2 + 1);
              if (v79 >= *(a2 + 2) || *v79 < 0)
              {
                if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
                {
                  return 0;
                }
              }

              else
              {
                v87 = *v79;
                *(a2 + 1) = v79 + 1;
              }

              v80 = *(a2 + 14);
              v81 = *(a2 + 15);
              *(a2 + 14) = v80 + 1;
              if (v80 >= v81)
              {
                return 0;
              }

              v82 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v87);
              if (!AddrObjGoogle::protobuf::MessageOptions::MergePartialFromCodedStream(v78, a2, v83, v84) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v82);
              v85 = *(a2 + 14);
              v23 = __OFSUB__(v85, 1);
              v86 = v85 - 1;
              if (v86 < 0 == v23)
              {
                *(a2 + 14) = v86;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                this = 1;
                *(a2 + 36) = 1;
                return this;
              }
            }
          }

          else
          {
            if (v8 == 4)
            {
              if (v9 != 2)
              {
                goto LABEL_30;
              }

              goto LABEL_74;
            }

            if (v8 != 5 || v9 != 2)
            {
              goto LABEL_30;
            }

            while (1)
            {
              v52 = *(v5 + 132);
              v53 = *(v5 + 128);
              if (v53 >= v52)
              {
                if (v52 == *(v5 + 136))
                {
                  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 120), v52 + 1);
                  v52 = *(v5 + 132);
                }

                *(v5 + 132) = v52 + 1;
                AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange>::New();
              }

              v54 = *(v5 + 120);
              *(v5 + 128) = v53 + 1;
              v55 = *(v54 + 8 * v53);
              v87 = 0;
              v56 = *(a2 + 1);
              if (v56 >= *(a2 + 2) || *v56 < 0)
              {
                if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
                {
                  return 0;
                }
              }

              else
              {
                v87 = *v56;
                *(a2 + 1) = v56 + 1;
              }

              v57 = *(a2 + 14);
              v58 = *(a2 + 15);
              *(a2 + 14) = v57 + 1;
              if (v57 >= v58)
              {
                return 0;
              }

              v59 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v87);
              if (!AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::MergePartialFromCodedStream(v55, a2, v60, v61) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v59);
              v62 = *(a2 + 14);
              v23 = __OFSUB__(v62, 1);
              v63 = v62 - 1;
              if (v63 < 0 == v23)
              {
                *(a2 + 14) = v63;
              }

              v11 = *(a2 + 1);
              if (v11 >= *(a2 + 2))
              {
                break;
              }

              v64 = *v11;
              if (v64 != 42)
              {
                if (v64 == 50)
                {
                  goto LABEL_109;
                }

                goto LABEL_2;
              }

LABEL_91:
              *(a2 + 1) = v11 + 1;
            }
          }
        }

        if (v8 != 1)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_30;
        }

        *(v5 + 156) |= 1u;
        v10 = *(v5 + 16);
        if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
        if (!this)
        {
          return this;
        }

        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v11 + 1;
LABEL_38:
            v12 = *(v5 + 36);
            v13 = *(v5 + 32);
            if (v13 >= v12)
            {
              if (v12 == *(v5 + 40))
              {
                AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v12 + 1);
                v12 = *(v5 + 36);
              }

              *(v5 + 36) = v12 + 1;
              AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
            }

            v14 = *(v5 + 24);
            *(v5 + 32) = v13 + 1;
            v15 = *(v14 + 8 * v13);
            v87 = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
              {
                return 0;
              }
            }

            else
            {
              v87 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v87);
            if (!AddrObjGoogle::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v15, a2, v20, v21) || *(a2 + 36) != 1)
            {
              return 0;
            }

            this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v19);
            v22 = *(a2 + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(a2 + 14) = v24;
            }

            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2))
            {
              break;
            }

            v25 = *v11;
            if (v25 != 18)
            {
              if (v25 != 26)
              {
                goto LABEL_2;
              }

              goto LABEL_55;
            }
          }
        }
      }

      if (v8 == 2)
      {
        if (v9 != 2)
        {
          break;
        }

        goto LABEL_38;
      }

      if (v8 != 3 || v9 != 2)
      {
        break;
      }

      while (1)
      {
        v26 = *(v5 + 84);
        v27 = *(v5 + 80);
        if (v27 >= v26)
        {
          if (v26 == *(v5 + 88))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 72), v26 + 1);
            v26 = *(v5 + 84);
          }

          *(v5 + 84) = v26 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto>::New();
        }

        v28 = *(v5 + 72);
        *(v5 + 80) = v27 + 1;
        v29 = *(v28 + 8 * v27);
        v87 = 0;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
          {
            return 0;
          }
        }

        else
        {
          v87 = *v30;
          *(a2 + 1) = v30 + 1;
        }

        v31 = *(a2 + 14);
        v32 = *(a2 + 15);
        *(a2 + 14) = v31 + 1;
        if (v31 >= v32)
        {
          return 0;
        }

        v33 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v87);
        if (!AddrObjGoogle::protobuf::DescriptorProto::MergePartialFromCodedStream(v29, a2, v34, v35) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v33);
        v36 = *(a2 + 14);
        v23 = __OFSUB__(v36, 1);
        v37 = v36 - 1;
        if (v37 < 0 == v23)
        {
          *(a2 + 14) = v37;
        }

        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2))
        {
          break;
        }

        v38 = *v11;
        if (v38 != 26)
        {
          if (v38 == 34)
          {
            while (1)
            {
              *(a2 + 1) = v11 + 1;
LABEL_74:
              v39 = *(v5 + 108);
              v40 = *(v5 + 104);
              if (v40 >= v39)
              {
                if (v39 == *(v5 + 112))
                {
                  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 96), v39 + 1);
                  v39 = *(v5 + 108);
                }

                *(v5 + 108) = v39 + 1;
                AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumDescriptorProto>::New();
              }

              v41 = *(v5 + 96);
              *(v5 + 104) = v40 + 1;
              v42 = *(v41 + 8 * v40);
              v87 = 0;
              v43 = *(a2 + 1);
              if (v43 >= *(a2 + 2) || *v43 < 0)
              {
                if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v87))
                {
                  return 0;
                }
              }

              else
              {
                v87 = *v43;
                *(a2 + 1) = v43 + 1;
              }

              v44 = *(a2 + 14);
              v45 = *(a2 + 15);
              *(a2 + 14) = v44 + 1;
              if (v44 >= v45)
              {
                return 0;
              }

              v46 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v87);
              if (!AddrObjGoogle::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(v42, a2, v47, v48) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v46);
              v49 = *(a2 + 14);
              v23 = __OFSUB__(v49, 1);
              v50 = v49 - 1;
              if (v50 < 0 == v23)
              {
                *(a2 + 14) = v50;
              }

              v11 = *(a2 + 1);
              if (v11 >= *(a2 + 2))
              {
                break;
              }

              v51 = *v11;
              if (v51 != 34)
              {
                if (v51 == 42)
                {
                  goto LABEL_91;
                }

                goto LABEL_2;
              }
            }
          }

          goto LABEL_2;
        }

LABEL_55:
        *(a2 + 1) = v11 + 1;
      }
    }

LABEL_30:
    if (v9 == 4)
    {
      return 1;
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 8), a4);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

AddrObjGoogle::protobuf::EnumDescriptorProto *AddrObjGoogle::protobuf::EnumDescriptorProto::EnumDescriptorProto(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
{
  *this = &unk_1EF7E0FB0;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 2) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 6) = 0;
  *(this + 15) = 0;
  return this;
}

void sub_186722E08(_Unwind_Exception *a1)
{
  v4 = v3;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FieldDescriptorProto::IsInitialized(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  if ((*(this + 72) & 0x80) == 0)
  {
    return 1;
  }

  v1 = *(this + 7);
  if (!v1)
  {
    v1 = *(AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(0) + 56);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AddrObjGoogle::protobuf::InsertIfNotPresent<std::map<std::string,std::pair<void const*,int>>,std::string,std::pair<void const*,int>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = *a3;
  std::__tree<std::__value_type<std::string,std::pair<void const*,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<void const*,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<void const*,int>>>(a1, &__p.__r_.__value_.__l.__data_, &__p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 & 1;
}

void sub_186722F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

BOOL AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::ValidateSymbolName(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  v3 = *(a2 + 1);
  if (v2 >= 0)
  {
    v3 = a2[23];
  }

  if (v3)
  {
    v4 = 0;
    if (v2 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = 1;
    v7 = v3;
    do
    {
      v8 = *v5;
      if (v8 != 46 && v8 != 95 && (v8 - 58) <= 0xFFFFFFF5 && *v5 - 91 <= 0xFFFFFFE5 && *v5 - 123 < 0xFFFFFFE6)
      {
        break;
      }

      v4 = v3 <= v6;
      ++v5;
      ++v6;
      --v7;
    }

    while (v7);
  }

  else
  {
    return 1;
  }

  return v4;
}

void *AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::FindLastLessOrEqual(uint64_t a1, const void **a2)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  for (i = (a1 + 24); v3; v3 = *(v3 + v7))
  {
    v6 = std::less<std::string>::operator()[abi:ne200100](i, a2, (v3 + 32));
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 8;
    }

    if (v6)
    {
      v2 = v3;
    }
  }

  if (v2 == *i)
  {
    return v2;
  }

  v8 = *v2;
  if (*v2)
  {
    do
    {
      result = v8;
      v8 = v8[1];
    }

    while (v8);
  }

  else
  {
    do
    {
      result = v2[2];
      v10 = *result == v2;
      v2 = result;
    }

    while (v10);
  }

  return result;
}

void AddrObjGoogle::protobuf::EnumDescriptorProto::~EnumDescriptorProto(AddrObjGoogle::protobuf::EnumDescriptorProto *this)
{
  AddrObjGoogle::protobuf::EnumDescriptorProto::~EnumDescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E0FB0;
  AddrObjGoogle::protobuf::EnumDescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

AddrObjGoogle::protobuf::EnumValueDescriptorProto *AddrObjGoogle::protobuf::EnumValueDescriptorProto::SharedDtor(AddrObjGoogle::protobuf::EnumValueDescriptorProto *this)
{
  v2 = *(this + 2);
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  if (v2 != v3)
  {
    v4 = *(this + 2);
    if (v4)
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v3 = MEMORY[0x18CFD1E40](v4, 0x1012C40EC159624);
    }
  }

  result = AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(v3);
  if (result != this)
  {
    result = *(this + 3);
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(uint64_t **this)
{
  if (*this)
  {
    AddrObjGoogle::protobuf::UnknownFieldSet::ClearFallback(this);
    v2 = *this;
    if (*this)
    {
      v3 = *v2;
      if (*v2)
      {
        v2[1] = v3;
        operator delete(v3);
      }

      MEMORY[0x18CFD1E40](v2, 0x20C40960023A9);
    }
  }
}

uint64_t addr_obj::geo3::StructuredAddress::default_instance_(addr_obj::geo3::StructuredAddress *this)
{
  if ((atomic_load_explicit(&qword_1EA905610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905610))
  {
    operator new();
  }

  return qword_1EA905608;
}

void sub_1867233C8(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10B1C403F20F32DLL);
  __cxa_guard_abort(&qword_1EA905610);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::geo3::Address::default_instance_(addr_obj::geo3::Address *this)
{
  if ((atomic_load_explicit(&qword_1EA905600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905600))
  {
    operator new();
  }

  return qword_1EA9055F8;
}

void sub_186723478(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40C067BF1BLL);
  __cxa_guard_abort(&qword_1EA905600);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FileOptions::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v7 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        if (!v7)
        {
          return 1;
        }
      }

      v8 = v7 >> 3;
      v9 = v7 & 7;
      if (v7 >> 3 > 0xF)
      {
        break;
      }

      if (v7 >> 3 <= 8)
      {
        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_40;
          }

          *(v5 + 104) |= 1u;
          v13 = *(v5 + 40);
          if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
          if (!this)
          {
            return this;
          }

          v22 = *(a2 + 1);
          if (v22 < *(a2 + 2) && *v22 == 66)
          {
            *(a2 + 1) = v22 + 1;
LABEL_52:
            *(v5 + 104) |= 2u;
            v23 = *(v5 + 48);
            if (v23 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 48));
            if (!this)
            {
              return this;
            }

            v24 = *(a2 + 1);
            v15 = *(a2 + 2);
            if (v24 < v15 && *v24 == 72)
            {
              v16 = v24 + 1;
              *(a2 + 1) = v16;
LABEL_59:
              v53 = 0;
              if (v16 >= v15 || (v25 = *v16, v25 < 0))
              {
                this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                if (!this)
                {
                  return this;
                }

                v25 = v53;
              }

              else
              {
                *(a2 + 1) = v16 + 1;
              }

              if ((v25 - 1) > 2)
              {
                AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((v5 + 32), 9, v25);
              }

              else
              {
                *(v5 + 104) |= 0x10u;
                *(v5 + 56) = v25;
              }

              v26 = *(a2 + 1);
              v18 = *(a2 + 2);
              if (v26 < v18 && *v26 == 80)
              {
                v19 = v26 + 1;
                *(a2 + 1) = v19;
                goto LABEL_70;
              }
            }
          }
        }

        else
        {
          if (v8 == 8 && v9 == 2)
          {
            goto LABEL_52;
          }

LABEL_40:
          if (v9 == 4)
          {
            return 1;
          }

          if (v7 >> 6 < 0x7D)
          {
            this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 32), a4);
            if ((this & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v20 = AddrObjGoogle::protobuf::FileOptions::default_instance_(this);
            this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 8), v7, a2, v20, (v5 + 32));
            if ((this & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        if (v8 == 9)
        {
          if ((v7 & 7) != 0)
          {
            goto LABEL_40;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
          goto LABEL_59;
        }

        if (v8 == 10)
        {
          if ((v7 & 7) != 0)
          {
            goto LABEL_40;
          }

          v19 = *(a2 + 1);
          v18 = *(a2 + 2);
LABEL_70:
          v53 = 0;
          if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
          {
            this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
            if (!this)
            {
              return this;
            }

            v27 = v53;
            v28 = *(a2 + 1);
            v18 = *(a2 + 2);
          }

          else
          {
            v28 = v19 + 1;
            *(a2 + 1) = v28;
          }

          *(v5 + 60) = v27 != 0;
          v10 = *(v5 + 104) | 4;
          *(v5 + 104) = v10;
          if (v28 < v18 && *v28 == 90)
          {
            *(a2 + 1) = v28 + 1;
            goto LABEL_78;
          }
        }

        else
        {
          if (v8 != 11 || v9 != 2)
          {
            goto LABEL_40;
          }

          v10 = *(v5 + 104);
LABEL_78:
          *(v5 + 104) = v10 | 0x20;
          v29 = *(v5 + 64);
          if (v29 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 64));
          if (!this)
          {
            return this;
          }

          v30 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v11 - v30 >= 2 && *v30 == 128 && v30[1] == 1)
          {
            v14 = (v30 + 2);
            *(a2 + 1) = v14;
LABEL_86:
            v53 = 0;
            if (v14 >= v11 || (v31 = *v14, (v31 & 0x80000000) != 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
              if (!this)
              {
                return this;
              }

              v31 = v53;
              v32 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v32 = (v14 + 1);
              *(a2 + 1) = v32;
            }

            *(v5 + 62) = v31 != 0;
            *(v5 + 104) |= 0x40u;
            if (v11 - v32 >= 2 && *v32 == 136 && v32[1] == 1)
            {
              v12 = (v32 + 2);
              *(a2 + 1) = v12;
LABEL_95:
              v53 = 0;
              if (v12 >= v11 || (v33 = *v12, (v33 & 0x80000000) != 0))
              {
                this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                if (!this)
                {
                  return this;
                }

                v33 = v53;
                v34 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                v34 = (v12 + 1);
                *(a2 + 1) = v34;
              }

              *(v5 + 63) = v33 != 0;
              *(v5 + 104) |= 0x80u;
              if (v11 - v34 >= 2 && *v34 == 144 && v34[1] == 1)
              {
                v17 = (v34 + 2);
                *(a2 + 1) = v17;
LABEL_104:
                v53 = 0;
                if (v17 >= v11 || (v35 = *v17, (v35 & 0x80000000) != 0))
                {
                  this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                  if (!this)
                  {
                    return this;
                  }

                  v35 = v53;
                  v36 = *(a2 + 1);
                  v11 = *(a2 + 2);
                }

                else
                {
                  v36 = (v17 + 1);
                  *(a2 + 1) = v36;
                }

                *(v5 + 96) = v35 != 0;
                *(v5 + 104) |= 0x100u;
                if (v11 - v36 >= 2 && *v36 == 160 && v36[1] == 1)
                {
                  v21 = (v36 + 2);
                  *(a2 + 1) = v21;
LABEL_113:
                  v53 = 0;
                  if (v21 >= v11 || (v37 = *v21, (v37 & 0x80000000) != 0))
                  {
                    this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                    if (!this)
                    {
                      return this;
                    }

                    v37 = v53;
                    v38 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    v38 = (v21 + 1);
                    *(a2 + 1) = v38;
                  }

                  *(v5 + 61) = v37 != 0;
                  *(v5 + 104) |= 8u;
                  if (v11 - v38 >= 2 && *v38 == 186 && v38[1] == 62)
                  {
LABEL_121:
                    *(a2 + 1) = v38 + 2;
                    goto LABEL_122;
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v7 >> 3 <= 0x11)
    {
      if (v8 == 16)
      {
        if ((v7 & 7) == 0)
        {
          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
          goto LABEL_86;
        }
      }

      else if (v8 == 17 && (v7 & 7) == 0)
      {
        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_95;
      }

      goto LABEL_40;
    }

    if (v8 == 18)
    {
      if ((v7 & 7) == 0)
      {
        v17 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_104;
      }

      goto LABEL_40;
    }

    if (v8 == 20)
    {
      if ((v7 & 7) == 0)
      {
        v21 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_113;
      }

      goto LABEL_40;
    }

    if (v8 != 999 || v9 != 2)
    {
      goto LABEL_40;
    }

LABEL_122:
    v39 = *(v5 + 84);
    v40 = *(v5 + 80);
    if (v40 >= v39)
    {
      if (v39 == *(v5 + 88))
      {
        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 72), v39 + 1);
        v39 = *(v5 + 84);
      }

      *(v5 + 84) = v39 + 1;
      AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::UninterpretedOption>::New();
    }

    v41 = *(v5 + 72);
    *(v5 + 80) = v40 + 1;
    v42 = *(v41 + 8 * v40);
    v53 = 0;
    v43 = *(a2 + 1);
    if (v43 >= *(a2 + 2) || *v43 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
      {
        return 0;
      }
    }

    else
    {
      v53 = *v43;
      *(a2 + 1) = v43 + 1;
    }

    v44 = *(a2 + 14);
    v45 = *(a2 + 15);
    *(a2 + 14) = v44 + 1;
    if (v44 >= v45)
    {
      return 0;
    }

    v46 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v53);
    if (!AddrObjGoogle::protobuf::UninterpretedOption::MergePartialFromCodedStream(v42, a2, v47, v48) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v46);
    v49 = *(a2 + 14);
    v50 = __OFSUB__(v49, 1);
    v51 = v49 - 1;
    if (v51 < 0 == v50)
    {
      *(a2 + 14) = v51;
    }

    v38 = *(a2 + 1);
    v52 = *(a2 + 2);
    if (v52 - v38 > 1 && *v38 == 186 && v38[1] == 62)
    {
      goto LABEL_121;
    }

    if (v38 == v52 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      this = 1;
      *(a2 + 36) = 1;
      return this;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::InsertIfNotPresent<std::map<std::pair<std::string,int>,std::pair<void const*,int>>,std::pair<std::string,int>,std::pair<void const*,int>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v10 = *(a2 + 24);
  v11 = *a3;
  std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::pair<std::string,int>,std::pair<std::pair<std::string,int> const,std::pair<void const*,int>>>(a1, &__p.__r_.__value_.__l.__data_, &__p);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7 & 1;
}

void sub_186723C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v21 = a3;
  *(&v21 + 1) = a4;
  v6 = *(a2 + 40);
  if (*(v6 + 23) < 0)
  {
    if (!*(v6 + 8))
    {
      return 1;
    }

    v7 = *v6;
  }

  else
  {
    v7 = v6;
    if (!*(v6 + 23))
    {
      return 1;
    }
  }

  if (*v7 != 46)
  {
    return 1;
  }

  std::string::basic_string(&v20, v6, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v22);
  v8 = *(a2 + 24);
  __p = v20;
  memset(&v20, 0, sizeof(v20));
  v19 = v8;
  v9 = AddrObjGoogle::protobuf::InsertIfNotPresent<std::map<std::pair<std::string,int>,std::pair<void const*,int>>,std::pair<std::string,int>,std::pair<void const*,int>>(a1 + 48, &__p, &v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if (v9)
    {
      return 1;
    }
  }

  else if (v9)
  {
    return 1;
  }

  AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&__p, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor_database.cc", 161);
  v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&__p, "Extension conflicts with extension already in database: extend ");
  v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, *(a2 + 40));
  v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, " { ");
  v14 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v13, *(a2 + 16));
  v15 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v14, " = ");
  v16 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v15, *(a2 + 24));
  v17 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v16, " }");
  AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v20, v17);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&__p.__r_.__value_.__l.__data_);
  return 0;
}

uint64_t std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::__emplace_unique_key_args<std::pair<std::string,int>,std::pair<std::pair<std::string,int> const,std::pair<void const*,int>>>(uint64_t a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::__find_equal<std::pair<std::string,int>>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::__map_value_compare<std::pair<std::string,int>,std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>,std::less<std::pair<std::string,int>>,true>,std::allocator<std::__value_type<std::pair<std::string,int>,std::pair<void const*,int>>>>::__construct_node<std::pair<std::pair<std::string,int> const,std::pair<void const*,int>>>();
  }

  return result;
}

void sub_186723F3C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<void const*,int>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FileOptions::~FileOptions(AddrObjGoogle::protobuf::FileOptions *this)
{
  *this = &unk_1EF7E1270;
  AddrObjGoogle::protobuf::FileOptions::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 9);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::FileOptions::~FileOptions(this);

  JUMPOUT(0x18CFD1E40);
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(AddrObjGoogle::protobuf::internal::ExtensionSet **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      AddrObjGoogle::protobuf::internal::ExtensionSet::Extension::Free(v3 + 10);
      v4 = v3[1];
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
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::destroy(this, this[1]);
}

uint64_t AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::Delete(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x18CFD1E40);
  }

  return result;
}

addr_obj::AddressObjectProto *addr_obj::AddressObjectProto::AddressObjectProto(addr_obj::AddressObjectProto *this)
{
  *this = &unk_1EF7DFEE0;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 2) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 3) = 0;
  *(this + 22) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  return this;
}

void sub_186724134(_Unwind_Exception *a1)
{
  v4 = v3;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::V2AddressObjectProto::default_instance_(addr_obj::V2AddressObjectProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905560))
  {
    operator new();
  }

  return qword_1EA905558;
}

void sub_1867241E0(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40BACA7D59);
  __cxa_guard_abort(&qword_1EA905560);
  _Unwind_Resume(a1);
}

uint64_t *addr_obj::V2AddressObjectProto::SharedCtor(addr_obj::V2AddressObjectProto *this)
{
  *(this + 34) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 5) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 6) = v3;
  v4 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 7) = v4;
  v5 = AddrObjGoogle::protobuf::internal::kEmptyString(v4);
  *(this + 8) = v5;
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v5);
  *(this + 9) = v6;
  v7 = AddrObjGoogle::protobuf::internal::kEmptyString(v6);
  *(this + 10) = v7;
  v8 = AddrObjGoogle::protobuf::internal::kEmptyString(v7);
  *(this + 11) = v8;
  v9 = AddrObjGoogle::protobuf::internal::kEmptyString(v8);
  *(this + 12) = v9;
  v10 = AddrObjGoogle::protobuf::internal::kEmptyString(v9);
  *(this + 13) = v10;
  v11 = AddrObjGoogle::protobuf::internal::kEmptyString(v10);
  *(this + 14) = v11;
  v12 = AddrObjGoogle::protobuf::internal::kEmptyString(v11);
  *(this + 15) = v12;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v12);
  *(this + 16) = result;
  *(this + 35) = 0;
  return result;
}

void AddrObjGoogle::protobuf::internal::ExtensionSet::RegisterMessageExtension(AddrObjGoogle::protobuf::internal::ExtensionSet *this, const AddrObjGoogle::protobuf::MessageLite *a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6, const AddrObjGoogle::protobuf::MessageLite *a7)
{
  if ((a3 & 0xFE) != 0xA)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 153);
    v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v15, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v14, v13);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v15.__r_.__value_.__l.__data_);
  }

  v15.__r_.__value_.__s.__data_[0] = a3;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = a6;
  v16 = 0;
  sub_186724370(this, a2, &v15);
}

void sub_186724358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_186724370(void *a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = qword_1EA905900;
  __dmb(0xBu);
  if (v6 != 2)
  {
    *&v17 = &unk_1EF7E2130;
    *(&v17 + 1) = sub_18672451C;
    LOBYTE(v18) = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905900, &v17);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(&v17);
  }

  *&v17 = a1;
  DWORD2(v17) = v4;
  v7 = a3[1];
  v18 = *a3;
  v19 = v7;
  std::__hash_table<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::__unordered_map_hasher<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::__unordered_map_equal<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>,std::equal_to<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,AddrObjGoogle::protobuf::hash<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>>,true>,std::allocator<std::__hash_value_type<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,AddrObjGoogle::protobuf::internal::ExtensionInfo>>>::__emplace_unique_key_args<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int>,std::pair<std::pair<AddrObjGoogle::protobuf::MessageLite const*,int> const,AddrObjGoogle::protobuf::internal::ExtensionInfo>>(qword_1EA9058F8, &v17, &v17);
  if ((v8 & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 86);
    v9 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(&v17, "Multiple extension registrations for type ");
    (*(*a1 + 16))(__p, a1);
    v10 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v9, __p);
    v11 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, ", field number ");
    v12 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v11, v4);
    v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v12, ".");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v14, v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v17);
  }
}

void sub_1867244D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_186724580()
{
  result = qword_1EA9058F8;
  if (qword_1EA9058F8)
  {
    v1 = std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(qword_1EA9058F8);
    result = MEMORY[0x18CFD1E40](v1, 0x10A0C408EF24B1CLL);
  }

  qword_1EA9058F8 = 0;
  return result;
}

AddrObjGoogle::protobuf::ServiceDescriptorProto *AddrObjGoogle::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  *this = &unk_1EF7E1110;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 2) = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 6) = 0;
  *(this + 15) = 0;
  return this;
}

void sub_186724638(_Unwind_Exception *a1)
{
  v4 = v3;
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(AddrObjGoogle::protobuf::ServiceDescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9056A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9056A0))
  {
    operator new();
  }

  return qword_1EA905698;
}

void sub_1867246E4(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C407FD52222);
  __cxa_guard_abort(&qword_1EA9056A0);
  _Unwind_Resume(a1);
}

uint64_t *AddrObjGoogle::protobuf::MethodDescriptorProto::SharedCtor(AddrObjGoogle::protobuf::MethodDescriptorProto *this)
{
  *(this + 12) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 3) = v3;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 4) = result;
  *(this + 5) = 0;
  *(this + 13) = 0;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField(AddrObjGoogle::protobuf::internal::ExtensionSet *a1, uint64_t a2, AddrObjGoogle::protobuf::io::CodedInputStream *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2 >> 3;
  if (!(*(*a4 + 16))(a4, v9, v12))
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }

  v10 = a2 & 7;
  if (v12[2] == 1)
  {
    if (v10 != 2)
    {
      return (*(*a5 + 16))(a5, a3, a2);
    }
  }

  else if (v10 != AddrObjGoogle::protobuf::internal::WireFormatLite::kWireTypeForFieldType[v12[0]])
  {
    return (*(*a5 + 16))(a5, a3, a2);
  }

  return AddrObjGoogle::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(a1, v9, v12, a3, a5);
}

uint64_t addr_obj::V2AddressObjectProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v6 = *(a2 + 1);
            if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
            {
              this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadTagFallback(a2);
              v7 = this;
              *(a2 + 8) = this;
              if (!this)
              {
                return 1;
              }
            }

            else
            {
              *(a2 + 8) = v7;
              *(a2 + 1) = v6 + 1;
              if (!v7)
              {
                return 1;
              }
            }

            v8 = v7 >> 3;
            v9 = v7 & 7;
            if (v7 >> 3 <= 6)
            {
              break;
            }

            if (v7 >> 3 <= 9)
            {
              if (v8 == 7)
              {
                if (v9 == 2)
                {
                  goto LABEL_92;
                }
              }

              else if (v8 == 8)
              {
                if (v9 == 2)
                {
                  goto LABEL_99;
                }
              }

              else if (v8 == 9 && v9 == 2)
              {
                goto LABEL_106;
              }

              goto LABEL_46;
            }

            if (v8 == 10)
            {
              if (v9 == 2)
              {
                goto LABEL_113;
              }

              goto LABEL_46;
            }

            if (v8 != 11)
            {
              if (v8 == 12 && v9 == 2)
              {
                goto LABEL_127;
              }

              goto LABEL_46;
            }

            if (v9 != 2)
            {
              goto LABEL_46;
            }

LABEL_120:
            *(v5 + 140) |= 0x400u;
            v31 = *(v5 + 120);
            if (v31 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 120));
            if (!this)
            {
              return this;
            }

            v32 = *(a2 + 1);
            if (v32 < *(a2 + 2) && *v32 == 98)
            {
              *(a2 + 1) = v32 + 1;
LABEL_127:
              *(v5 + 140) |= 0x800u;
              v33 = *(v5 + 128);
              if (v33 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
              {
                operator new();
              }

              this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 128));
              if (!this)
              {
                return this;
              }

              if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                this = 1;
                *(a2 + 36) = 1;
                return this;
              }
            }
          }

          if (v7 >> 3 > 3)
          {
            if (v8 == 4)
            {
              if (v9 == 2)
              {
                goto LABEL_71;
              }
            }

            else if (v8 == 5)
            {
              if (v9 == 2)
              {
                goto LABEL_78;
              }
            }

            else if (v8 == 6 && v9 == 2)
            {
              goto LABEL_85;
            }

            goto LABEL_46;
          }

          if (v8 != 1)
          {
            break;
          }

          if (v9 != 2)
          {
            goto LABEL_46;
          }

          *(v5 + 140) |= 1u;
          v10 = *(v5 + 40);
          if (v10 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
          if (!this)
          {
            return this;
          }

          v12 = *(a2 + 1);
          if (v12 < *(a2 + 2) && *v12 == 18)
          {
            *(a2 + 1) = v12 + 1;
            goto LABEL_57;
          }
        }

        if (v8 != 2)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_46;
        }

LABEL_57:
        *(v5 + 140) |= 2u;
        v13 = *(v5 + 48);
        if (v13 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 48));
        if (!this)
        {
          return this;
        }

        v14 = *(a2 + 1);
        if (v14 < *(a2 + 2) && *v14 == 26)
        {
          *(a2 + 1) = v14 + 1;
LABEL_64:
          *(v5 + 140) |= 4u;
          v15 = *(v5 + 56);
          if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 56));
          if (!this)
          {
            return this;
          }

          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 34)
          {
            *(a2 + 1) = v16 + 1;
LABEL_71:
            *(v5 + 140) |= 8u;
            v17 = *(v5 + 64);
            if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 64));
            if (!this)
            {
              return this;
            }

            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 42)
            {
              *(a2 + 1) = v18 + 1;
LABEL_78:
              *(v5 + 140) |= 0x20u;
              v19 = *(v5 + 80);
              if (v19 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
              {
                operator new();
              }

              this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 80));
              if (!this)
              {
                return this;
              }

              v20 = *(a2 + 1);
              if (v20 < *(a2 + 2) && *v20 == 50)
              {
                *(a2 + 1) = v20 + 1;
LABEL_85:
                *(v5 + 140) |= 0x40u;
                v21 = *(v5 + 88);
                if (v21 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
                {
                  operator new();
                }

                this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 88));
                if (!this)
                {
                  return this;
                }

                v22 = *(a2 + 1);
                if (v22 < *(a2 + 2) && *v22 == 58)
                {
                  *(a2 + 1) = v22 + 1;
LABEL_92:
                  *(v5 + 140) |= 0x80u;
                  v23 = *(v5 + 96);
                  if (v23 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
                  {
                    operator new();
                  }

                  this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 96));
                  if (!this)
                  {
                    return this;
                  }

                  v24 = *(a2 + 1);
                  if (v24 < *(a2 + 2) && *v24 == 66)
                  {
                    *(a2 + 1) = v24 + 1;
LABEL_99:
                    *(v5 + 140) |= 0x10u;
                    v25 = *(v5 + 72);
                    if (v25 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
                    {
                      operator new();
                    }

                    this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 72));
                    if (!this)
                    {
                      return this;
                    }

                    v26 = *(a2 + 1);
                    if (v26 < *(a2 + 2) && *v26 == 74)
                    {
                      *(a2 + 1) = v26 + 1;
LABEL_106:
                      *(v5 + 140) |= 0x100u;
                      v27 = *(v5 + 104);
                      if (v27 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
                      {
                        operator new();
                      }

                      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 104));
                      if (!this)
                      {
                        return this;
                      }

                      v28 = *(a2 + 1);
                      if (v28 < *(a2 + 2) && *v28 == 82)
                      {
                        *(a2 + 1) = v28 + 1;
LABEL_113:
                        *(v5 + 140) |= 0x200u;
                        v29 = *(v5 + 112);
                        if (v29 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
                        {
                          operator new();
                        }

                        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 112));
                        if (!this)
                        {
                          return this;
                        }

                        v30 = *(a2 + 1);
                        if (v30 < *(a2 + 2) && *v30 == 90)
                        {
                          *(a2 + 1) = v30 + 1;
                          goto LABEL_120;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v8 == 3 && v9 == 2)
      {
        goto LABEL_64;
      }

LABEL_46:
      if (v9 == 4)
      {
        return 1;
      }

      if ((v7 - 800) > 0x31F)
      {
        break;
      }

      v11 = addr_obj::V2AddressObjectProto::default_instance_(this);
      this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 8), v7, a2, v11, (v5 + 32));
      if ((this & 1) == 0)
      {
        return 0;
      }
    }

    this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 32), a4);
  }

  while ((this & 1) != 0);
  return 0;
}

uint64_t addr_obj::AddressObjectProto::IsInitialized(addr_obj::AddressObjectProto *this)
{
  if ((*(this + 88) & 0x20) == 0)
  {
    return 1;
  }

  v1 = *(this + 8);
  if (!v1)
  {
    v1 = *(addr_obj::AddressObjectProto::default_instance_(0) + 64);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t addr_obj::geo3::Address::IsInitialized(addr_obj::geo3::Address *this)
{
  if ((*(this + 56) & 2) == 0)
  {
    return 1;
  }

  v1 = *(this + 5);
  if (!v1)
  {
    v1 = *(addr_obj::geo3::Address::default_instance_(0) + 40);
  }

  result = (*(*v1 + 40))(v1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t addr_obj::geo3::StructuredAddress::IsInitialized(addr_obj::geo3::StructuredAddress *this)
{
  if (*(this + 50) < 1)
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v3 = *(*(this + 24) + 8 * v2);
    result = (*(*v3 + 40))(v3);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v2;
  }

  while (v2 < *(this + 50));
  return result;
}

uint64_t std::__split_buffer<addr_obj::Fingerprints::Fingerprint>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<addr_obj::Fingerprints::Fingerprint>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<addr_obj::Fingerprints::Fingerprint>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  while (1)
  {
    v4 = *(result + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(result + 32);
    *(result + 16) = v4 - 80;
    std::allocator_traits<std::allocator<addr_obj::Fingerprints::Fingerprint>>::destroy[abi:ne200100]<addr_obj::Fingerprints::Fingerprint,0>(v5, v4 - 80);
  }
}

uint64_t GEOPDComponentReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      while (([v5 hasError] & 1) == 0)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v84) = 0;
          v10 = objc_msgSend_position(v5, v84);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v84 & 0x7F) << v7;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          v13 = v8++ >= 9;
          if (v13)
          {
            v9 = 0;
            goto LABEL_15;
          }
        }

        if ([v5 hasError])
        {
          v9 = 0;
        }

LABEL_15:
        v14 = [v5 hasError];
        v15 = (v9 & 7) == 4 ? 1 : v14;
        if (v15)
        {
          break;
        }

        v16 = v9 >> 3;
        switch(v16)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 100) |= 0x80u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v20 = objc_msgSend_position(v5, v84);
              if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
              {
                v22 = [v5 data];
                [v22 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v19 |= (v84 & 0x7F) << v17;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v13 = v18++ >= 9;
              if (v13)
              {
                v23 = 0;
LABEL_136:
                v79 = 88;
                goto LABEL_161;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

            goto LABEL_136;
          case 2:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 100) |= 0x20u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v45 = objc_msgSend_position(v5, v84);
              if (v45 + 1 >= objc_msgSend_position(v5) && (v46 = objc_msgSend_position(v5), v46 + 1 <= [v5 length]))
              {
                v47 = [v5 data];
                [v47 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v44 |= (v84 & 0x7F) << v42;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v13 = v43++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_140;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v44;
            }

LABEL_140:
            v79 = 80;
            goto LABEL_161;
          case 3:
            goto LABEL_33;
          case 4:
            v66 = 0;
            v67 = 0;
            v68 = 0;
            *(a1 + 100) |= 0x40u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v69 = objc_msgSend_position(v5, v84);
              if (v69 + 1 >= objc_msgSend_position(v5) && (v70 = objc_msgSend_position(v5), v70 + 1 <= [v5 length]))
              {
                v71 = [v5 data];
                [v71 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v68 |= (v84 & 0x7F) << v66;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              v13 = v67++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_156;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v68;
            }

LABEL_156:
            v79 = 84;
            goto LABEL_161;
          case 5:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 100) |= 0x10u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v39 = objc_msgSend_position(v5, v84);
              if (v39 + 1 >= objc_msgSend_position(v5) && (v40 = objc_msgSend_position(v5), v40 + 1 <= [v5 length]))
              {
                v41 = [v5 data];
                [v41 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v38 |= (v84 & 0x7F) << v36;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v13 = v37++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_132;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v38;
            }

LABEL_132:
            v79 = 76;
            goto LABEL_161;
          case 6:
            v72 = 0;
            v73 = 0;
            v74 = 0;
            *(a1 + 100) |= 0x100u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v75 = objc_msgSend_position(v5, v84);
              if (v75 + 1 >= objc_msgSend_position(v5) && (v76 = objc_msgSend_position(v5), v76 + 1 <= [v5 length]))
              {
                v77 = [v5 data];
                [v77 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v74 |= (v84 & 0x7F) << v72;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              v13 = v73++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_160;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v74;
            }

LABEL_160:
            v79 = 92;
            goto LABEL_161;
          case 7:
            v84 = 0;
            v85 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_168;
            }

            v34 = objc_alloc_init(GEOPDAttribution);
            if (!GEOPDAttributionReadAllFrom(v34, v5, a3))
            {
              goto LABEL_167;
            }

            PBReaderRecallMark();
            v35 = 16;
            goto LABEL_120;
          case 8:
            v84 = 0;
            v85 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_168;
            }

            v34 = objc_alloc_init(GEOPDComponentValue);
            if (!GEOPDComponentValueReadAllFrom(v34, v5, a3))
            {
              goto LABEL_167;
            }

            PBReaderRecallMark();
            [(GEOPDComponent *)a1 addValue:v34];
            goto LABEL_124;
          case 9:
            v34 = PBReaderReadString();
            if (v34)
            {
              [(GEOPDComponent *)a1 addVersionDomain:v34];
            }

            goto LABEL_124;
          case 10:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 100) |= 0x200u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v51 = objc_msgSend_position(v5, v84);
              if (v51 + 1 >= objc_msgSend_position(v5) && (v52 = objc_msgSend_position(v5), v52 + 1 <= [v5 length]))
              {
                v53 = [v5 data];
                [v53 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v50 |= (v84 & 0x7F) << v48;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v13 = v49++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_144;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v50;
            }

LABEL_144:
            v79 = 96;
            goto LABEL_161;
          case 11:
            v84 = 0;
            v85 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_168;
            }

            v34 = objc_alloc_init(GEOPDSource);
            if (!GEOPDSourceReadAllFrom(v34, v5, a3))
            {
              goto LABEL_167;
            }

            PBReaderRecallMark();
            v35 = 32;
LABEL_120:
            v78 = *(a1 + v35);
            *(a1 + v35) = v34;

            goto LABEL_162;
          case 12:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v31 = objc_msgSend_position(v5, v84);
              if (v31 + 1 >= objc_msgSend_position(v5) && (v32 = objc_msgSend_position(v5), v32 + 1 <= [v5 length]))
              {
                v33 = [v5 data];
                [v33 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v30 |= (v84 & 0x7F) << v28;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v13 = v29++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_128;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v30;
            }

LABEL_128:
            v79 = 64;
            goto LABEL_161;
          case 13:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v63 = objc_msgSend_position(v5, v84);
              if (v63 + 1 >= objc_msgSend_position(v5) && (v64 = objc_msgSend_position(v5), v64 + 1 <= [v5 length]))
              {
                v65 = [v5 data];
                [v65 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v62 |= (v84 & 0x7F) << v60;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v13 = v61++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_152;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v62;
            }

LABEL_152:
            v79 = 68;
            goto LABEL_161;
          case 14:
            v84 = 0;
            v85 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_168;
            }

            v34 = objc_alloc_init(GEOPDAttribution);
            if (!GEOPDAttributionReadAllFrom(v34, v5, a3))
            {
LABEL_167:

              goto LABEL_168;
            }

            PBReaderRecallMark();
            [(GEOPDComponent *)a1 addCommingledAttributions:v34];
LABEL_124:

LABEL_162:
            v80 = objc_msgSend_position(v5);
            if (v80 >= [v5 length])
            {
              goto LABEL_166;
            }

            break;
          case 15:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 100) |= 8u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v57 = objc_msgSend_position(v5, v84);
              if (v57 + 1 >= objc_msgSend_position(v5) && (v58 = objc_msgSend_position(v5), v58 + 1 <= [v5 length]))
              {
                v59 = [v5 data];
                [v59 getBytes:&v84 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v56 |= (v84 & 0x7F) << v54;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v13 = v55++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_148;
              }
            }

            if ([v5 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v56;
            }

LABEL_148:
            v79 = 72;
LABEL_161:
            *(a1 + v79) = v23;
            goto LABEL_162;
          default:
            if (v16 == 2000)
            {
              *(a1 + 100) |= 1u;
              v84 = 0;
              v24 = objc_msgSend_position(v5);
              if (v24 + 8 >= objc_msgSend_position(v5) && (v25 = objc_msgSend_position(v5), v25 + 8 <= [v5 length]))
              {
                v81 = [v5 data];
                [v81 getBytes:&v84 range:{objc_msgSend_position(v5), 8}];

                [v5 setPosition:objc_msgSend_position(v5) + 8];
              }

              else
              {
                [v5 _setError];
              }

              *(a1 + 40) = v84;
            }

            else
            {
LABEL_33:
              if (!*(a1 + 8))
              {
                v26 = objc_alloc_init(MEMORY[0x1E69C65D8]);
                v27 = *(a1 + 8);
                *(a1 + 8) = v26;
              }

              if (!PBUnknownFieldAdd())
              {
                goto LABEL_168;
              }
            }

            goto LABEL_162;
        }
      }
    }

LABEL_166:
    v82 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_168:
    v82 = 0;
  }

  objc_sync_exit(v5);

  return v82;
}

void *GEOPDPlaceReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 112));
  [v3 setLength:*(a1 + 108)];
  [v3 seekToOffset:*(a1 + 104)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11.i64[0] = 0x100000001;
  v11.i64[1] = 0x100000001;
  v12 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(*(a1 + 140)), xmmword_187FBDB80), v11)) + ((*(a1 + 140) >> 17) & 1) + ((*(a1 + 140) >> 15) & 1) + ((*(a1 + 140) >> 11) & 1);
  while (1)
  {
    v13 = a3[v6];
    if (v13 > -3)
    {
      break;
    }

    if (v13 == -4)
    {
      ++v12;
      v8 = 1;
      goto LABEL_15;
    }

    if (v13 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v12;
LABEL_15:
    ++v6;
  }

  if (v13 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v13 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = v12 > 3;
  v15 = v14 & ~v10 | v8;
  v16 = v10 | v14;
  LODWORD(v119) = v15;
  HIDWORD(v119) = v16 | v8;
  if ((v16 | v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v120 = (v17 == 0) | v16;
  v121 = v16;
  while (1)
  {
    v18 = objc_msgSend_position(v3, v119);
    if (v18 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_249:
      v27 = 1;
      goto LABEL_250;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      LOBYTE(v122) = 0;
      v22 = objc_msgSend_position(v3) + 1;
      if (v22 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3) + 1, v23 <= [v3 length]))
      {
        v24 = [v3 data];
        [v24 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v21 |= (v122 & 0x7F) << v19;
      if ((v122 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      v25 = v20++ >= 9;
      if (v25)
      {
        v21 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v21 = 0;
    }

LABEL_33:
    v26 = [v3 hasError];
    v27 = 1;
    if ((v26 & 1) != 0 || (v21 & 7) == 4)
    {
      goto LABEL_250;
    }

    v28 = v21 >> 3;
    v29 = v121;
    if ((v120 & 1) == 0)
    {
      v30 = v17;
      do
      {
        v32 = *v30++;
        v31 = v32;
        v29 = v32 != 0;
        if (v32)
        {
          v33 = v31 == v28;
        }

        else
        {
          v33 = 1;
        }
      }

      while (!v33);
    }

    if (v28 <= 199)
    {
      break;
    }

    if (v28 > 201)
    {
      if (v28 == 202)
      {
        if (!v29)
        {
          goto LABEL_194;
        }

        if ((*(a1 + 141) & 0x80) == 0)
        {
          v57 = PBReaderReadString();
          v58 = *(a1 + 64);
          *(a1 + 64) = v57;
LABEL_187:

          --v6;
          goto LABEL_248;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_278;
        }

        v112 = (*(a1 + 140) << 16) >> 31;
LABEL_247:
        v6 += v112;
        goto LABEL_248;
      }

      if (v28 == 203)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_194;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 140) |= 0x400u;
        while (1)
        {
          LOBYTE(v122) = 0;
          v46 = objc_msgSend_position(v3) + 1;
          if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
          {
            v48 = [v3 data];
            [v48 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v45 |= (v122 & 0x7F) << v43;
          if ((v122 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v25 = v44++ >= 9;
          if (v25)
          {
            v49 = 0;
            goto LABEL_201;
          }
        }

        v49 = (v45 != 0) & ~[v3 hasError];
LABEL_201:
        v110 = 137;
LABEL_212:
        *(a1 + v110) = v49;
      }

      else
      {
LABEL_188:
        if ((v119 & 1) == 0 || (*(a1 + 141) & 8) != 0)
        {
LABEL_194:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_278;
          }

          goto LABEL_248;
        }

        if (!*(a1 + 16))
        {
          v107 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v108 = *(a1 + 16);
          *(a1 + 16) = v107;
        }

        if (!PBUnknownFieldAdd())
        {
          v27 = 0;
          v118 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
          goto LABEL_251;
        }
      }
    }

    else
    {
      if (v28 != 200)
      {
        if (!v29)
        {
          goto LABEL_194;
        }

        if ((*(a1 + 142) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_278;
          }

          v112 = (*(a1 + 140) << 14) >> 31;
          goto LABEL_247;
        }

        v122 = 0;
        v123 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_278;
        }

        v41 = objc_alloc_init(GEOMapItemInitialRequestData);
        if (!GEOMapItemInitialRequestDataReadAllFrom(v41, v3, v9 & 1))
        {
          goto LABEL_277;
        }

        PBReaderRecallMark();
        v42 = 88;
LABEL_186:
        v58 = *(a1 + v42);
        *(a1 + v42) = v41;
        goto LABEL_187;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(a1 + 140) |= 0x40u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v53 = objc_msgSend_position(v3) + 1;
        if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
        {
          v55 = [v3 data];
          [v55 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v52 |= (v122 & 0x7F) << v50;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v50 += 7;
        v25 = v51++ >= 9;
        if (v25)
        {
          v56 = 0;
          goto LABEL_199;
        }
      }

      if ([v3 hasError])
      {
        v56 = 0;
      }

      else
      {
        v56 = v52;
      }

LABEL_199:
      v109 = 124;
LABEL_238:
      *(a1 + v109) = v56;
    }

LABEL_248:
    if (!(BYTE4(v119) & 1 | (v6 != 0)))
    {
      goto LABEL_249;
    }
  }

  switch(v28)
  {
    case 1:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 140) |= 2u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v122 & 0x7F) << v34;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v25 = v35++ >= 9;
        if (v25)
        {
          v40 = 0;
          goto LABEL_224;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v36;
      }

LABEL_224:
      v111 = 56;
      goto LABEL_233;
    case 2:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v89 = 0;
      v90 = 0;
      v91 = 0;
      *(a1 + 140) |= 0x100u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v92 = objc_msgSend_position(v3) + 1;
        if (v92 >= objc_msgSend_position(v3) && (v93 = objc_msgSend_position(v3) + 1, v93 <= [v3 length]))
        {
          v94 = [v3 data];
          [v94 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v91 |= (v122 & 0x7F) << v89;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v89 += 7;
        v25 = v90++ >= 9;
        if (v25)
        {
          v56 = 0;
          goto LABEL_228;
        }
      }

      if ([v3 hasError])
      {
        v56 = 0;
      }

      else
      {
        v56 = v91;
      }

LABEL_228:
      v109 = 132;
      goto LABEL_238;
    case 3:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v77 = 0;
      v78 = 0;
      v79 = 0;
      *(a1 + 140) |= 4u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v80 = objc_msgSend_position(v3) + 1;
        if (v80 >= objc_msgSend_position(v3) && (v81 = objc_msgSend_position(v3) + 1, v81 <= [v3 length]))
        {
          v82 = [v3 data];
          [v82 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v79 |= (v122 & 0x7F) << v77;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v77 += 7;
        v25 = v78++ >= 9;
        if (v25)
        {
          v40 = 0;
          goto LABEL_216;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v79;
      }

LABEL_216:
      v111 = 80;
      goto LABEL_233;
    case 4:
      if (!v29 || (*(a1 + 141) & 0x20) != 0)
      {
        goto LABEL_194;
      }

      v122 = 0;
      v123 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_278;
      }

      v41 = objc_alloc_init(GEOPDComponent);
      if (!GEOPDComponentReadAllFrom(v41, v3, v9 & 1))
      {
        goto LABEL_277;
      }

      PBReaderRecallMark();
      [(GEOPDPlace *)a1 _addNoFlagsComponent:v41];
LABEL_135:

      goto LABEL_248;
    case 5:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      *(a1 + 140) |= 0x80u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v62 = objc_msgSend_position(v3) + 1;
        if (v62 >= objc_msgSend_position(v3) && (v63 = objc_msgSend_position(v3) + 1, v63 <= [v3 length]))
        {
          v64 = [v3 data];
          [v64 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v61 |= (v122 & 0x7F) << v59;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v59 += 7;
        v25 = v60++ >= 9;
        if (v25)
        {
          v56 = 0;
          goto LABEL_205;
        }
      }

      if ([v3 hasError])
      {
        v56 = 0;
      }

      else
      {
        v56 = v61;
      }

LABEL_205:
      v109 = 128;
      goto LABEL_238;
    case 6:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      *(a1 + 140) |= 8u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v98 = objc_msgSend_position(v3) + 1;
        if (v98 >= objc_msgSend_position(v3) && (v99 = objc_msgSend_position(v3) + 1, v99 <= [v3 length]))
        {
          v100 = [v3 data];
          [v100 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v97 |= (v122 & 0x7F) << v95;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v95 += 7;
        v25 = v96++ >= 9;
        if (v25)
        {
          v40 = 0;
          goto LABEL_232;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v97;
      }

LABEL_232:
      v111 = 96;
      goto LABEL_233;
    case 7:
      if (!v29)
      {
        goto LABEL_194;
      }

      if ((*(a1 + 141) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_278;
        }

        v112 = (*(a1 + 140) << 17) >> 31;
        goto LABEL_247;
      }

      v122 = 0;
      v123 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_278;
      }

      v41 = objc_alloc_init(GEOPDMapsIdentifier);
      if (!GEOPDMapsIdentifierReadAllFrom(v41, v3))
      {
        goto LABEL_277;
      }

      PBReaderRecallMark();
      v42 = 48;
      goto LABEL_186;
    case 8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v83 = 0;
      v84 = 0;
      v85 = 0;
      *(a1 + 140) |= 1u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v86 = objc_msgSend_position(v3) + 1;
        if (v86 >= objc_msgSend_position(v3) && (v87 = objc_msgSend_position(v3) + 1, v87 <= [v3 length]))
        {
          v88 = [v3 data];
          [v88 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v85 |= (v122 & 0x7F) << v83;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v83 += 7;
        v25 = v84++ >= 9;
        if (v25)
        {
          v40 = 0;
          goto LABEL_220;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v85;
      }

LABEL_220:
      v111 = 40;
LABEL_233:
      *(a1 + v111) = v40;
      goto LABEL_248;
    case 9:
      if (!v29)
      {
        goto LABEL_194;
      }

      if (*(a1 + 142))
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_278;
        }

        v112 = (*(a1 + 140) << 15) >> 31;
        goto LABEL_247;
      }

      v122 = 0;
      v123 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_278;
      }

      v41 = objc_alloc_init(GEOPDPlacecardLayoutData);
      if (GEOPDPlacecardLayoutDataReadAllFrom(v41, v3, v9 & 1))
      {
        PBReaderRecallMark();
        v42 = 72;
        goto LABEL_186;
      }

LABEL_277:

LABEL_278:
      v27 = 0;
LABEL_250:
      v118 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      if (v119)
      {
LABEL_251:
        *(a1 + v118[972]) |= 0x800u;
      }

      if (v121 & 1 | ((v27 & 1) == 0))
      {
        *(a1 + v118[972]) |= 0x2000u;
        *(a1 + v118[972]) |= 0x4000u;
        *(a1 + v118[972]) |= 0x10000u;
        *(a1 + v118[972]) |= 0x1000u;
        *(a1 + v118[972]) |= 0x20000u;
        *(a1 + v118[972]) |= 0x8000u;
        goto LABEL_271;
      }

      if (v17)
      {
        while (1)
        {
LABEL_255:
          v114 = *v17++;
          v113 = v114;
          if (v114 > 11)
          {
            switch(v113)
            {
              case 12:
                v115 = 4096;
                break;
              case 201:
                v115 = 0x20000;
                break;
              case 202:
                v115 = 0x8000;
                break;
              default:
                continue;
            }

            goto LABEL_269;
          }

          if (v113 > 6)
          {
            break;
          }

          if (v113 == 4)
          {
            v115 = 0x2000;
LABEL_269:
            *(a1 + v118[972]) |= v115;
            continue;
          }

          if (!v113)
          {
            goto LABEL_271;
          }
        }

        if (v113 == 7)
        {
          v115 = 0x4000;
        }

        else
        {
          if (v113 != 9)
          {
            goto LABEL_255;
          }

          v115 = 0x10000;
        }

        goto LABEL_269;
      }

LABEL_271:
      if (v27)
      {
        v3 = ([v3 hasError] ^ 1);
      }

      else
      {
        v3 = 0;
      }

      if (v121)
      {
        v116 = *(a1 + 8);
        *(a1 + 8) = 0;
      }

      return v3;
    case 10:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v71 = 0;
      v72 = 0;
      v73 = 0;
      *(a1 + 140) |= 0x200u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v74 = objc_msgSend_position(v3) + 1;
        if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
        {
          v76 = [v3 data];
          [v76 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v73 |= (v122 & 0x7F) << v71;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v71 += 7;
        v25 = v72++ >= 9;
        if (v25)
        {
          v49 = 0;
          goto LABEL_211;
        }
      }

      v49 = (v73 != 0) & ~[v3 hasError];
LABEL_211:
      v110 = 136;
      goto LABEL_212;
    case 11:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v101 = 0;
      v102 = 0;
      v103 = 0;
      *(a1 + 140) |= 0x10u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v104 = objc_msgSend_position(v3) + 1;
        if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
        {
          v106 = [v3 data];
          [v106 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v103 |= (v122 & 0x7F) << v101;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v101 += 7;
        v25 = v102++ >= 9;
        if (v25)
        {
          v56 = 0;
          goto LABEL_237;
        }
      }

      if ([v3 hasError])
      {
        v56 = 0;
      }

      else
      {
        v56 = v103;
      }

LABEL_237:
      v109 = 116;
      goto LABEL_238;
    case 12:
      if (!v29 || (*(a1 + 141) & 0x10) != 0)
      {
        goto LABEL_194;
      }

      v41 = PBReaderReadString();
      if (v41)
      {
        [(GEOPDPlace *)a1 _addNoFlagsAbExpBranchId:v41];
      }

      goto LABEL_135;
    case 13:
      if ((v7 & 1) == 0)
      {
        goto LABEL_194;
      }

      v65 = 0;
      v66 = 0;
      v67 = 0;
      *(a1 + 140) |= 0x20u;
      while (1)
      {
        LOBYTE(v122) = 0;
        v68 = objc_msgSend_position(v3) + 1;
        if (v68 >= objc_msgSend_position(v3) && (v69 = objc_msgSend_position(v3) + 1, v69 <= [v3 length]))
        {
          v70 = [v3 data];
          [v70 getBytes:&v122 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v67 |= (v122 & 0x7F) << v65;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v65 += 7;
        v25 = v66++ >= 9;
        if (v25)
        {
          v56 = 0;
          goto LABEL_209;
        }
      }

      if ([v3 hasError])
      {
        v56 = 0;
      }

      else
      {
        v56 = v67;
      }

LABEL_209:
      v109 = 120;
      goto LABEL_238;
    default:
      goto LABEL_188;
  }
}

uint64_t GEOPDMapsIdentifierReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      do
      {
        if ([v3 hasError])
        {
          break;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v8 = objc_msgSend_position(v3, v21[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v21 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v21[0] & 0x7F) << v5;
          if ((v21[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v7 = 0;
            goto LABEL_15;
          }
        }

        if ([v3 hasError])
        {
          v7 = 0;
        }

LABEL_15:
        v12 = [v3 hasError];
        v13 = (v7 & 7) == 4 ? 1 : v12;
        if (v13)
        {
          break;
        }

        if ((v7 >> 3) == 1)
        {
          v21[0] = 0;
          v21[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_29;
          }

          v14 = objc_alloc_init(GEOPDShardedId);
          if (!GEOPDShardedIdReadAllFrom(v14, v3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          v15 = *(a1 + 16);
          *(a1 + 16) = v14;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v16 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v17 = *(a1 + 8);
            *(a1 + 8) = v16;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_29;
          }
        }

        v18 = objc_msgSend_position(v3);
      }

      while (v18 < [v3 length]);
    }

    v19 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_29:
    v19 = 0;
  }

  objc_sync_exit(v3);

  return v19;
}

id _attributionsToRequestForPlaceDatas(void *a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DFA8] set];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v1;
  v68 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v68)
  {
    v3 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
    v67 = *v103;
    v4 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
    v5 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
    do
    {
      v6 = 0;
      do
      {
        if (*v103 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v73 = v6;
        v7 = *(*(&v102 + 1) + 8 * v6);
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v8 = [v7 components];
        v9 = [v8 countByEnumeratingWithState:&v98 objects:v111 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v99;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v99 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v98 + 1) + 8 * i);
              v14 = [v13 statusCodeIsValid];
              if (v13)
              {
                v15 = v14 == 0;
              }

              else
              {
                v15 = 1;
              }

              if (!v15 && ((*(v13 + v5[976]) & 0x80) == 0 || *(v13 + 88) != 65) && *(v13 + 16))
              {
                v16 = [(GEOPDComponent *)v13 attribution];
                v17 = v16;
                if (v16)
                {
                  [(GEOPDAttribution *)v16 _readVendorId];
                  if (*(v17 + v4[714]))
                  {
                    v18 = [(GEOPDAttribution *)v17 vendorId];
                    [v2 addObject:v18];

                    v5 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
                  }
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v98 objects:v111 count:16];
          }

          while (v10);
        }

        v19 = [GEOPDRestaurantReservationLink reservationLinkForPlaceData:v7];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v72 = v19;
        v20 = [(GEOPDRestaurantReservationLink *)v19 restaurantLinks];
        v21 = [v20 countByEnumeratingWithState:&v94 objects:v110 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v95;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v95 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v94 + 1) + 8 * j);
              if (v25)
              {
                [(GEOPDVendorIDLink *)*(*(&v94 + 1) + 8 * j) _readVendorId];
                if (*(v25 + 56))
                {
                  v26 = [(GEOPDVendorIDLink *)v25 vendorId];
                  [v2 addObject:v26];
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v94 objects:v110 count:16];
          }

          while (v22);
        }

        v27 = _fetchPhotoRelatedDataAttributionsForPlaceData(v7);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v90 objects:v109 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v91;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v91 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v90 + 1) + 8 * k);
              if (v32)
              {
                [(GEOPDAttribution *)*(*(&v90 + 1) + 8 * k) _readVendorId];
                if (*(v32 + v4[714]))
                {
                  v33 = [(GEOPDAttribution *)v32 vendorId];
                  [v2 addObject:v33];
                }
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v90 objects:v109 count:16];
          }

          while (v29);
        }

        v34 = [GEOPDAccolades accoladeValuesForPlaceData:v7];
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v35 = [v34 countByEnumeratingWithState:&v86 objects:v108 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v87;
          do
          {
            for (m = 0; m != v36; ++m)
            {
              if (*v87 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v86 + 1) + 8 * m);
              if (v39)
              {
                [(GEOPDAccoladeValue *)*(*(&v86 + 1) + 8 * m) _readVendorId];
                if (*(v39 + v3[576]))
                {
                  v40 = [(GEOPDAccoladeValue *)v39 vendorId];
                  [v2 addObject:v40];
                }
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v86 objects:v108 count:16];
          }

          while (v36);
        }

        v70 = v34;
        v71 = v27;
        v41 = [GEOPDTemplatePlace templatedPlacesForPlaceData:v7];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v69 = v41;
        v74 = [v41 allValues];
        v76 = [v74 countByEnumeratingWithState:&v82 objects:v107 count:16];
        if (v76)
        {
          v75 = *v83;
          do
          {
            v42 = 0;
            do
            {
              if (*v83 != v75)
              {
                objc_enumerationMutation(v74);
              }

              v77 = v42;
              v43 = *(*(&v82 + 1) + 8 * v42);
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v44 = [(GEOPDTemplatePlace *)v43 templateDatas];
              v45 = [v44 countByEnumeratingWithState:&v78 objects:v106 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = *v79;
                do
                {
                  for (n = 0; n != v46; ++n)
                  {
                    if (*v79 != v47)
                    {
                      objc_enumerationMutation(v44);
                    }

                    v49 = *(*(&v78 + 1) + 8 * n);
                    v50 = [(GEOPDTemplateData *)v49 footer];
                    v51 = [(GEOPDDataItem *)v50 ratingData];
                    v52 = [(GEOPDRatingData *)v51 vendorId];
                    v53 = [v52 length];

                    if (v53)
                    {
                      v54 = [(GEOPDTemplateData *)v49 footer];
                      v55 = [(GEOPDDataItem *)v54 ratingData];
                      v56 = [(GEOPDRatingData *)v55 vendorId];
                      [v2 addObject:v56];
                    }

                    v57 = [(GEOPDTemplateData *)v49 subtitle];
                    v58 = [(GEOPDDataItem *)v57 ratingData];
                    v59 = [(GEOPDRatingData *)v58 vendorId];
                    v60 = [v59 length];

                    if (v60)
                    {
                      v61 = [(GEOPDTemplateData *)v49 subtitle];
                      v62 = [(GEOPDDataItem *)v61 ratingData];
                      v63 = [(GEOPDRatingData *)v62 vendorId];
                      [v2 addObject:v63];
                    }
                  }

                  v46 = [v44 countByEnumeratingWithState:&v78 objects:v106 count:16];
                }

                while (v46);
              }

              v42 = v77 + 1;
            }

            while (v77 + 1 != v76);
            v76 = [v74 countByEnumeratingWithState:&v82 objects:v107 count:16];
          }

          while (v76);
        }

        v6 = v73 + 1;
        v3 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
        v4 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
        v5 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
      }

      while (v73 + 1 != v68);
      v68 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
    }

    while (v68);
  }

  if ([v2 count])
  {
    v64 = v2;
  }

  else
  {
    v64 = 0;
  }

  return v64;
}

uint64_t GEOPDComponentValueReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (a3)
  {
    v6 = &GEOPDComponentValueReadAllFrom_recursiveTag;
  }

  else
  {
    v6 = 0;
  }

  Specified = GEOPDComponentValueReadSpecified(a1, v5, v6);
  objc_sync_exit(v5);

  return Specified;
}

uint64_t GEOPDComponentValueReadSpecified(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v5 = *a3 == -1;
  }

  else
  {
    v5 = 0;
  }

  v7 = objc_msgSend_position(a2);
  if (v7 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v21) = 0;
      v11 = objc_msgSend_position(a2, v21) + 1;
      if (v11 >= objc_msgSend_position(a2) && (v12 = objc_msgSend_position(a2) + 1, v12 <= [a2 length]))
      {
        v13 = [a2 data];
        [v13 getBytes:&v21 range:{objc_msgSend_position(a2), 1}];

        [a2 setPosition:objc_msgSend_position(a2) + 1];
      }

      else
      {
        [a2 _setError];
      }

      v10 |= (v21 & 0x7F) << v8;
      if ((v21 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      if (v9++ >= 9)
      {
        v10 = 0;
        goto LABEL_19;
      }
    }

    if ([a2 hasError])
    {
      v10 = 0;
    }

LABEL_19:
    if (([a2 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v10 >> 3))
    {
      case 1u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDEntity);
        if (!GEOPDEntityReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 208;
        goto LABEL_329;
      case 2u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPlaceInfo);
        if (!GEOPDPlaceInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 432;
        goto LABEL_329;
      case 3u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRoadAccessInfo);
        if (!GEOPDRoadAccessInfoReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 24;
        goto LABEL_329;
      case 4u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBounds);
        if (!GEOPDBoundsReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 96;
        goto LABEL_329;
      case 5u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAddress);
        if (!GEOPDAddressReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 64;
        goto LABEL_329;
      case 6u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRating);
        if (!GEOPDRatingReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 520;
        goto LABEL_329;
      case 7u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDReview);
        if (!GEOPDReviewReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 568;
        goto LABEL_329;
      case 8u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPhoto);
        if (!GEOPDPhotoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 400;
        goto LABEL_329;
      case 9u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDHours);
        if (!GEOPDHoursReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 320;
        goto LABEL_329;
      case 0xAu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitInfo);
        if (!GEOPDTransitInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 720;
        goto LABEL_329;
      case 0xBu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitSchedule);
        if (!GEOPDTransitScheduleReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 744;
        goto LABEL_329;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDETA);
        if (!GEOPDETAReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 216;
        goto LABEL_329;
      case 0xDu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDFlyover);
        if (!GEOPDFlyoverReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 264;
        goto LABEL_329;
      case 0xEu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRawAttribute);
        if (!GEOPDRawAttributeReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 528;
        goto LABEL_329;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAmenities);
        if (!GEOPDAmenitiesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 72;
        goto LABEL_329;
      case 0x10u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOStyleAttributes);
        if (!GEOStyleAttributesReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 624;
        goto LABEL_329;
      case 0x14u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitIncident);
        if (!GEOPDTransitIncidentReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 704;
        goto LABEL_329;
      case 0x15u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitAssociatedInfo);
        if (!GEOPDTransitAssociatedInfoReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 688;
        goto LABEL_329;
      case 0x16u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTextBlock);
        if (!GEOPDTextBlockReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 648;
        goto LABEL_329;
      case 0x17u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDFactoid);
        if (!GEOPDFactoidReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 256;
        goto LABEL_329;
      case 0x18u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitAttribution);
        if (!GEOPDTransitAttributionReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 696;
        goto LABEL_329;
      case 0x19u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBusinessClaim);
        if (!GEOPDBusinessClaimReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 128;
        goto LABEL_329;
      case 0x1Au:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDCaptionedPhoto);
        if (!GEOPDCaptionedPhotoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 144;
        goto LABEL_329;
      case 0x1Bu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitInfoSnippet);
        if (!GEOPDTransitInfoSnippetReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 712;
        goto LABEL_329;
      case 0x1Du:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDExternalAction);
        if (!GEOPDExternalActionReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 248;
        goto LABEL_329;
      case 0x1Eu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDResultSnippet);
        if (!GEOPDResultSnippetReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 560;
        goto LABEL_329;
      case 0x1Fu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAddressObject);
        if (!GEOPDAddressObjectReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 48;
        goto LABEL_329;
      case 0x20u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDSimpleRestaurantMenuText);
        if (!GEOPDSimpleRestaurantMenuTextReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 584;
        goto LABEL_329;
      case 0x21u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRestaurantReservationLink);
        if (!GEOPDRestaurantReservationLinkReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 552;
        goto LABEL_329;
      case 0x22u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDSpatialLookupResult);
        if (!GEOPDSpatialLookupResultReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 592;
        goto LABEL_329;
      case 0x24u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTip);
        if (!GEOPDTipReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 656;
        goto LABEL_329;
      case 0x25u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPlacecardURL);
        if (!GEOPDPlacecardURLReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 456;
        goto LABEL_329;
      case 0x26u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAssociatedApp);
        if (!GEOPDAssociatedAppReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 88;
        goto LABEL_329;
      case 0x27u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDMessageLink);
        if (!GEOPDMessageLinkReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 376;
        goto LABEL_329;
      case 0x28u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDQuickLink);
        if (!GEOPDQuickLinkReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 504;
        goto LABEL_329;
      case 0x29u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRap);
        if (!GEOPDRapReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 512;
        goto LABEL_329;
      case 0x2Au:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDOfflineArea);
        if (!GEOPDOfflineAreaReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 392;
        goto LABEL_329;
      case 0x2Bu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDLocationEvent);
        if (!GEOPDLocationEventReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 368;
        goto LABEL_329;
      case 0x2Cu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDSupportsOfflineMaps);
        if (!GEOPDSupportsOfflineMapsReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 632;
        goto LABEL_329;
      case 0x30u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDVenueInfo);
        if (!GEOPDVenueInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 792;
        goto LABEL_329;
      case 0x32u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDContainedPlace);
        if (!GEOPDContainedPlaceReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 168;
        goto LABEL_329;
      case 0x33u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDWifiFingerprint);
        if (!GEOPDWifiFingerprintReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 816;
        goto LABEL_329;
      case 0x34u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDIcon);
        if (!GEOPDIconReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 328;
        goto LABEL_329;
      case 0x35u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPriceDescription);
        if (!GEOPDPriceDescriptionReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 480;
        goto LABEL_329;
      case 0x36u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBrowseCategories);
        if (!GEOPDBrowseCategoriesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 112;
        goto LABEL_329;
      case 0x37u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDStorefront);
        if (!GEOPDStorefrontReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 616;
        goto LABEL_329;
      case 0x38u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDGroundViewLabel);
        if (!GEOPDGroundViewLabelReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 280;
        goto LABEL_329;
      case 0x39u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAnnotatedItemList);
        if (!GEOPDAnnotatedItemListReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 80;
        goto LABEL_329;
      case 0x3Au:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPoiEvent);
        if (!GEOPDPoiEventReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 472;
        goto LABEL_329;
      case 0x3Bu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDStorefrontPresentation);
        if (!GEOPDStorefrontPresentationReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 608;
        goto LABEL_329;
      case 0x3Cu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPlacecardLayoutConfiguration);
        if (!GEOPDPlacecardLayoutConfigurationReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 448;
        goto LABEL_329;
      case 0x3Du:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPrototypeContainer);
        if (!GEOPDPrototypeContainerReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 488;
        goto LABEL_329;
      case 0x3Eu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPBTransitVehiclePosition);
        if (!GEOPBTransitVehiclePositionReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 776;
        goto LABEL_329;
      case 0x3Fu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDLinkedService);
        if (!GEOPDLinkedServiceReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 352;
        goto LABEL_329;
      case 0x40u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBusinessHours);
        if (!GEOPDBusinessHoursReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 136;
        goto LABEL_329;
      case 0x41u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPlaceCollection);
        if (!GEOPDPlaceCollectionReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 424;
        goto LABEL_329;
      case 0x42u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRelatedPlace);
        if (!GEOPDRelatedPlaceReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 544;
        goto LABEL_329;
      case 0x43u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitTripStop);
        if (!GEOPDTransitTripStopReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 768;
        goto LABEL_329;
      case 0x44u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitTripStopTime);
        if (!GEOPDTransitTripStopTimeReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 760;
        goto LABEL_329;
      case 0x45u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitTripGeometry);
        if (!GEOPDTransitTripGeometryReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 752;
        goto LABEL_329;
      case 0x46u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBrowseCategories);
        if (!GEOPDBrowseCategoriesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 408;
        goto LABEL_329;
      case 0x47u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPublisher);
        if (!GEOPDPublisherReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 496;
        goto LABEL_329;
      case 0x48u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDMiniBrowseCategories);
        if (!GEOPDMiniBrowseCategoriesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 384;
        goto LABEL_329;
      case 0x49u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPlaceQuestionnaireResult);
        if (!GEOPDPlaceQuestionnaireResultReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 440;
        goto LABEL_329;
      case 0x4Au:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPlaceCollectionItem);
        if (!GEOPDPlaceCollectionItemReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 416;
        goto LABEL_329;
      case 0x4Cu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDCollectionIds);
        if (!GEOPDCollectionIdsReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 160;
        goto LABEL_329;
      case 0x4Du:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDISO3166Code);
        if (!GEOPDISO3166CodeReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 336;
        goto LABEL_329;
      case 0x4Eu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAmenities);
        if (!GEOPDAmenitiesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 784;
        goto LABEL_329;
      case 0x4Fu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitNearbySchedule);
        if (!GEOPDTransitNearbyScheduleReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 728;
        goto LABEL_329;
      case 0x51u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDStorefrontFaces);
        if (!GEOPDStorefrontFacesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 600;
        goto LABEL_329;
      case 0x52u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDGuideGroup);
        if (!GEOPDGuideGroupReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 288;
        goto LABEL_329;
      case 0x53u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDContainmentPlace);
        if (!GEOPDContainmentPlaceReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 176;
        goto LABEL_329;
      case 0x54u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDCategorizedPhotos);
        if (!GEOPDCategorizedPhotosReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 152;
        goto LABEL_329;
      case 0x55u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDExploreGuides);
        if (!GEOPDExploreGuidesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 240;
        goto LABEL_329;
      case 0x56u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAbout);
        if (!GEOPDAboutReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 16;
        goto LABEL_329;
      case 0x57u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDLabelGeometry);
        if (!GEOPDLabelGeometryReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 344;
        goto LABEL_329;
      case 0x58u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDEnhancedPlacement);
        if (!GEOPDEnhancedPlacementReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 184;
        goto LABEL_329;
      case 0x59u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTemplatePlace);
        if (!GEOPDTemplatePlaceReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 640;
        goto LABEL_329;
      case 0x5Bu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTransitPaymentMethodInfo);
        if (!GEOPDTransitPaymentMethodInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 736;
        goto LABEL_329;
      case 0x5Cu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBusinessAssets);
        if (!GEOPDBusinessAssetsReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 120;
        goto LABEL_329;
      case 0x5Du:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDEnrichmentInfo);
        if (!GEOPDEnrichmentInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 200;
        goto LABEL_329;
      case 0x5Eu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDActionData);
        if (!GEOPDActionDataReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 40;
        goto LABEL_329;
      case 0x5Fu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDEnrichmentData);
        if (!GEOPDEnrichmentDataReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 192;
        goto LABEL_329;
      case 0x60u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDPOIClaim);
        if (!GEOPDPOIClaimReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 464;
        goto LABEL_329;
      case 0x61u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDEVCharger);
        if (!GEOPDEVChargerReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 224;
        goto LABEL_329;
      case 0x62u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTrailHead);
        if (!GEOPDTrailHeadReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 680;
        goto LABEL_329;
      case 0x63u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTooltip);
        if (!GEOPDTooltipReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 672;
        goto LABEL_329;
      case 0x64u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDRefreshId);
        if (!GEOPDRefreshIdReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 536;
        goto LABEL_329;
      case 0x65u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAddressWithComponents);
        if (!GEOPDAddressWithComponentsReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 56;
        goto LABEL_329;
      case 0x66u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDSearchResultPlacePhoto);
        if (!GEOPDSearchResultPlacePhotoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 576;
        goto LABEL_329;
      case 0x67u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDForwardInfo);
        if (!GEOPDForwardInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 272;
        goto LABEL_329;
      case 0x68u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDHikeAssociatedInfo);
        if (!GEOPDHikeAssociatedInfoReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 296;
        goto LABEL_329;
      case 0x69u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDHikeSummary);
        if (!GEOPDHikeSummaryReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 312;
        goto LABEL_329;
      case 0x6Au:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDHikeGeometry);
        if (!GEOPDHikeGeometryReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 304;
        goto LABEL_329;
      case 0x6Bu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDAccolades);
        if (!GEOPDAccoladesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 32;
        goto LABEL_329;
      case 0x6Cu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDLocalizedNames);
        if (!GEOPDLocalizedNamesReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 360;
        goto LABEL_329;
      case 0x6Du:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDBrandLogoEmbedding);
        if (!GEOPDBrandLogoEmbeddingReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 104;
        goto LABEL_329;
      case 0x6Eu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDVisualEvidence);
        if (!GEOPDVisualEvidenceReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 808;
        goto LABEL_329;
      case 0x6Fu:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDVisitedPlacesMetaData);
        if (!GEOPDVisitedPlacesMetaDataReadAllFrom(v15, a2))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 800;
        goto LABEL_329;
      case 0x70u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDExpertContent);
        if (!GEOPDExpertContentReadAllFrom(v15, a2, v5))
        {
          goto LABEL_332;
        }

        PBReaderRecallMark();
        v16 = 232;
        goto LABEL_329;
      case 0x71u:
        v21 = 0;
        v22 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          return 0;
        }

        v15 = objc_alloc_init(GEOPDTokenizerResult);
        if (GEOPDTokenizerResultReadAllFrom(v15, a2, v5))
        {
          PBReaderRecallMark();
          v16 = 664;
LABEL_329:
          v19 = *(a1 + v16);
          *(a1 + v16) = v15;

LABEL_330:
          v20 = objc_msgSend_position(a2);
          if (v20 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_332:

        return 0;
      default:
        if (!*(a1 + 8))
        {
          v17 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v18 = *(a1 + 8);
          *(a1 + 8) = v17;
        }

        result = PBUnknownFieldAdd();
        if (!result)
        {
          return result;
        }

        goto LABEL_330;
    }
  }
}

void *GEOPDAmenitiesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDAmenitiesReadAllFrom can only be called once per object"];
    return 0;
  }

  if (objc_msgSend_position(a2) >> 32 || [a2 length] >> 32)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Cannot decode data with position/length > UINT32_MAX", v10, 2u);
    }

    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 40) = objc_msgSend_position(v8);
  *(a1 + 44) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDAmenitiesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDAmenitiesReadAllFrom_initialTag;
  }

  Specified = GEOPDAmenitiesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDAmenitiesCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDAmenitiesReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 48));
  [v3 setLength:*(a1 + 44)];
  [v3 seekToOffset:*(a1 + 40)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 56) >> 3) & 1) + ((*(a1 + 56) >> 2) & 1) + ((*(a1 + 56) >> 1) & 1);
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v8 = 1;
      goto LABEL_15;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v6;
  }

  if (v12 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = v11 != 0;
  LODWORD(v49) = v13 & ~v10 | v8;
  v14 = v10 | v13;
  if (((v10 | v13) | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = v6 != 0;
  v17 = objc_msgSend_position(v3);
  if (v17 >= [v3 length])
  {
    v26 = 1;
    goto LABEL_82;
  }

  HIDWORD(v49) = v16 | v8 | v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_80:
      v26 = 1;
      goto LABEL_82;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v50) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v50 & 0x7F) << v18;
      if ((v50 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v20 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v20 = 0;
    }

LABEL_33:
    v25 = [v3 hasError];
    v26 = 1;
    if ((v25 & 1) != 0 || (v20 & 7) == 4)
    {
      goto LABEL_82;
    }

    v27 = v20 >> 3;
    v28 = v14;
    if (!((v15 == 0) | v14 & 1))
    {
      v29 = v15;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v28 = v31 != 0;
        if (v31)
        {
          v32 = v30 == v27;
        }

        else
        {
          v32 = 1;
        }
      }

      while (!v32);
    }

    if (v27 == 3)
    {
      if (v7)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          LOBYTE(v50) = 0;
          v37 = objc_msgSend_position(v3) + 1;
          if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
          {
            v39 = [v3 data];
            [v39 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v36 |= (v50 & 0x7F) << v34;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v24 = v35++ >= 9;
          if (v24)
          {
            v40 = 0;
            goto LABEL_77;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v36;
        }

LABEL_77:
        *(a1 + 52) = v40;
        goto LABEL_78;
      }

      goto LABEL_72;
    }

    if (v27 != 2)
    {
      if (v27 == 1)
      {
        if (v28 && (*(a1 + 56) & 8) == 0)
        {
          v50 = 0;
          v51 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_101;
          }

          v33 = objc_alloc_init(GEOPDAmenityValue);
          if (!GEOPDAmenityValueReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_100;
          }

          PBReaderRecallMark();
          [(GEOPDAmenities *)a1 _addNoFlagsAmenity:v33];
LABEL_55:

LABEL_78:
          if ((v49 & 0x100000000) == 0)
          {
            goto LABEL_80;
          }

LABEL_79:
          v43 = objc_msgSend_position(v3);
          if (v43 >= [v3 length])
          {
            goto LABEL_80;
          }

          continue;
        }
      }

      else if ((v49 & 1) != 0 && (*(a1 + 56) & 2) == 0)
      {
        if (!*(a1 + 16))
        {
          v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v42 = *(a1 + 16);
          *(a1 + 16) = v41;
        }

        v26 = PBUnknownFieldAdd();
        if (!v26)
        {
          goto LABEL_83;
        }

        goto LABEL_78;
      }

LABEL_72:
      v26 = PBReaderSkipValueWithTag();
      if ((v26 & HIDWORD(v49) & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_79;
    }

    break;
  }

  if (!v28 || (*(a1 + 56) & 4) != 0)
  {
    goto LABEL_72;
  }

  v50 = 0;
  v51 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_101;
  }

  v33 = objc_alloc_init(GEOPDAmenityValue);
  if (GEOPDAmenityValueReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDAmenities *)a1 _addNoFlagsAmenityV2:v33];
    goto LABEL_55;
  }

LABEL_100:

LABEL_101:
  v26 = 0;
LABEL_82:
  if (v49)
  {
LABEL_83:
    *(a1 + 56) |= 2u;
  }

  if (v14 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 56) |= 8u;
    *(a1 + 56) |= 4u;
    goto LABEL_94;
  }

  if (v15)
  {
    while (1)
    {
      v45 = *v15++;
      v44 = v45;
      if (v45 == 1)
      {
        break;
      }

      if (v44 == 2)
      {
        v46 = 4;
LABEL_93:
        *(a1 + 56) |= v46;
        continue;
      }

      if (!v44)
      {
        goto LABEL_94;
      }
    }

    v46 = 8;
    goto LABEL_93;
  }

LABEL_94:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_98:
    v47 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_98;
    }
  }

  return v3;
}