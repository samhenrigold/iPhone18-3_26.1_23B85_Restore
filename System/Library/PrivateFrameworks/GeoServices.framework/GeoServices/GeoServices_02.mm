uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL GEOTileSetRegionIntersectsMapRect(_DWORD *a1, double a2, double a3, double a4, double a5)
{
  if (fabs(a2) < 0.00000001 && fabs(a3) < 0.00000001 && fabs(a4 + -268435456.0) < 0.00000001 && fabs(a5 + -268435456.0) < 0.00000001)
  {
    return 1;
  }

  v29 = 0uLL;
  v11 = a1[4];
  v12 = a1[5];
  *(&v29 + 6) = v12 & 0x3F | (a1[3] << 6);
  *(&v29 + 10) = v11 & 0x3FFFFFF;
  v13 = GEOMapRectForGEOTileKey(&v29);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1[1];
  *(&v29 + 6) = v12 & 0x3F | (*a1 << 6);
  BYTE14(v29) = 0;
  *(&v29 + 10) = v20 & 0x3FFFFFF;
  v21 = GEOMapRectForGEOTileKey(&v29);
  v23 = GEOMapRectUnion(v13, v15, v17, v19, v21, v22);
  v27 = fabs(GEOMapRectIntersection(a2, a3, a4, a5, v23, v24, v25, v26)) != INFINITY;
  return fabs(v28) != INFINITY && v27;
}

void sub_18664058C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_evictWithMaxCostAndCapacity(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 && a3 && a1[10])
  {
    do
    {
      if (a1[18] <= a2 && a1[19] <= a3)
      {
        break;
      }

      v6 = a1[8];
      std::__hash_table<std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,true>,std::__unordered_map_equal<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<_GEOTileKey>,std::hash<_GEOTileKey>,true>,std::allocator<std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__erase_unique<_GEOTileKey>(a1 + 11, (v6 + 16));
      v7 = a1[19];
      a1[18] -= *(v6 + 40);
      a1[19] = v7 - 1;
      v8 = a1[8];
      v10 = *v8;
      v9 = v8[1];
      v10[1] = v9;
      *v9 = v10;
      --a1[10];
      objc_storeWeak(v8 + 6, 0);
      objc_destroyWeak(v8 + 6);
      operator delete(v8);
    }

    while (a1[10]);
  }
}

void geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_prune(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = *(a1 + 72);
  if (v2 != a1 + 64)
  {
    do
    {
      WeakRetained = objc_loadWeakRetained((v2 + 48));

      if (WeakRetained)
      {
        v2 = *(v2 + 8);
      }

      else
      {
        std::__hash_table<std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,true>,std::__unordered_map_equal<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<_GEOTileKey>,std::hash<_GEOTileKey>,true>,std::allocator<std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__erase_unique<_GEOTileKey>((a1 + 88), (v2 + 16));
        v5 = *(v2 + 8);
        std::list<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>>::erase(v1, v2);
        v2 = v5;
      }
    }

    while (v2 != v1);
  }
}

void __GEOGetGEOPrivacyManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "GEOPrivacyManager");
  v1 = GEOGetGEOPrivacyManagerLog_log;
  GEOGetGEOPrivacyManagerLog_log = v0;
}

uint64_t GEOTileProviderForStyle(unsigned int a1)
{
  if (a1 > 0x77)
  {
    return 1;
  }

  else
  {
    return byte_188020093[a1];
  }
}

id GEOGetGEOPrivacyManagerLog()
{
  if (GEOGetGEOPrivacyManagerLog_onceToken != -1)
  {
    dispatch_once(&GEOGetGEOPrivacyManagerLog_onceToken, &__block_literal_global_81495);
  }

  v1 = GEOGetGEOPrivacyManagerLog_log;

  return v1;
}

void __GEOConfigRemoveBlockListener_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((v12 + 8));
    if (WeakRetained)
    {
      v14 = WeakRetained;
      v15 = [v9 objectForKeyedSubscript:WeakRetained];
      if ([v15 count])
      {
        v16 = 0;
        while ([v15 pointerAtIndex:v16] != *(a1 + 32))
        {
          if (++v16 >= [v15 count])
          {
            goto LABEL_9;
          }
        }

        [v15 removePointerAtIndex:v16];
      }

LABEL_9:
      [v15 compact];
      if (![v15 count])
      {
        [v9 setObject:0 forKeyedSubscript:v14];
        v17 = [(_GEOConfigKeyHelper *)v14 keyString];
        [v10 setObject:0 forKeyedSubscript:v17];

        v18 = [(_GEOConfigKeyHelper *)v14 keyNumber];
        [v11 setObject:0 forKeyedSubscript:v18];

        v19 = MEMORY[0x1E695DFD8];
        v20 = [(_GEOConfigKeyHelper *)v14 keyString];
        v21 = [v19 setWithObject:v20];
        _GEORemoveChangeListenerForKeys(v21);
      }
    }
  }
}

void _initStorage(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___initStorage_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v2 = a1;
  if (_initStorage_onceToken[0] != -1)
  {
    dispatch_once(_initStorage_onceToken, block);
  }
}

void *GEOAttributionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 124))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAttributionReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 128));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 120) = objc_msgSend_position(v8);
  *(a1 + 124) = [v8 length];
  if (a3)
  {
    v9 = &GEOAttributionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAttributionReadAllFrom_initialTag;
  }

  Specified = GEOAttributionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOAttributionCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 128));
  return Specified;
}

void *GEOAttributionReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 128));
  [v3 setLength:*(a1 + 124)];
  [v3 seekToOffset:*(a1 + 120)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = vdup_n_s16(*(a1 + 140));
  v12 = vaddv_s16(vand_s8(vshl_u16(v11, 0xFFF4FFF8FFF9FFFBLL), 0x1000100010001)) + ((*(a1 + 140) >> 4) & 1) + ((*(a1 + 140) >> 6) & 1) + ((*(a1 + 140) >> 11) & 1);
  v13 = vand_s8(vshl_u16(v11, 0xFFFEFFF7FFFDFFF6), 0x1000100010001);
  v13.i16[0] = vaddv_s16(v13);
  v14 = v13.i32[0] + v12;
  while (1)
  {
    v15 = a3[v6];
    if (v15 > -3)
    {
      break;
    }

    if (v15 == -4)
    {
      ++v14;
      v8 = 1;
      goto LABEL_15;
    }

    if (v15 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v14;
LABEL_15:
    ++v6;
  }

  if (v15 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v15 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = v14 > 7;
  v60 = v9;
  v61 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  v62 = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v63 = (v18 == 0) | v17;
  v64 = v17;
  while (1)
  {
    v19 = objc_msgSend_position(v3);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_145:
      v28 = 1;
      goto LABEL_148;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v65) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v65 & 0x7F) << v20;
      if ((v65 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_33:
    v27 = [v3 hasError];
    v28 = 1;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_148;
    }

    v29 = v22 >> 3;
    v30 = v64;
    if ((v63 & 1) == 0)
    {
      v31 = v18;
      do
      {
        v33 = *v31++;
        v32 = v33;
        v30 = v33 != 0;
        if (v33)
        {
          v34 = v32 == v29;
        }

        else
        {
          v34 = 1;
        }
      }

      while (!v34);
    }

    if (v29 <= 6)
    {
      if (v29 > 3)
      {
        if (v29 == 4)
        {
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x1000) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 112;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = 8 * *(a1 + 140);
        }

        else if (v29 == 5)
        {
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x10) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 48;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = *(a1 + 140) << 11;
        }

        else
        {
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x40) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 64;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = *(a1 + 140) << 9;
        }

LABEL_143:
        v6 += v55 >> 15;
        goto LABEL_144;
      }

      switch(v29)
      {
        case 1:
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x20) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 56;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = *(a1 + 140) << 10;
          goto LABEL_143;
        case 2:
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x80) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 72;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = *(a1 + 140) << 8;
          goto LABEL_143;
        case 3:
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x100) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 80;
LABEL_109:
            v51 = *(a1 + v36);
            *(a1 + v36) = v35;

            --v6;
            goto LABEL_144;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = *(a1 + 140) << 7;
          goto LABEL_143;
      }

LABEL_110:
      if ((v61 & 1) == 0 || (*(a1 + 140) & 4) != 0)
      {
        goto LABEL_116;
      }

      if (!*(a1 + 16))
      {
        v52 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v53 = *(a1 + 16);
        *(a1 + 16) = v52;
      }

      if (!PBUnknownFieldAdd())
      {
        v28 = 0;
        goto LABEL_149;
      }

      goto LABEL_144;
    }

    if (v29 > 9)
    {
      switch(v29)
      {
        case 0xA:
          if ((v7 & 1) == 0)
          {
            goto LABEL_116;
          }

          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 140) |= 2u;
          while (1)
          {
            LOBYTE(v65) = 0;
            v48 = objc_msgSend_position(v3) + 1;
            if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
            {
              v50 = [v3 data];
              [v50 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v47 |= (v65 & 0x7F) << v45;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v26 = v46++ >= 9;
            if (v26)
            {
              v43 = 0;
              goto LABEL_125;
            }
          }

          if ([v3 hasError])
          {
            v43 = 0;
          }

          else
          {
            v43 = v47;
          }

LABEL_125:
          v54 = 136;
          goto LABEL_126;
        case 0xB:
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x400) == 0)
          {
            v35 = PBReaderReadString();
            v36 = 96;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = 32 * *(a1 + 140);
          goto LABEL_143;
        case 0xC:
          if (!v30)
          {
            goto LABEL_116;
          }

          if ((*(a1 + 140) & 0x200) == 0)
          {
            v35 = PBReaderReadData();
            v36 = 88;
            goto LABEL_109;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_147;
          }

          v55 = *(a1 + 140) << 6;
          goto LABEL_143;
      }

      goto LABEL_110;
    }

    if (v29 == 7)
    {
      break;
    }

    if (v29 != 8)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_116;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 140) |= 1u;
      while (1)
      {
        LOBYTE(v65) = 0;
        v40 = objc_msgSend_position(v3) + 1;
        if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
        {
          v42 = [v3 data];
          [v42 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v39 |= (v65 & 0x7F) << v37;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v26 = v38++ >= 9;
        if (v26)
        {
          v43 = 0;
          goto LABEL_121;
        }
      }

      if ([v3 hasError])
      {
        v43 = 0;
      }

      else
      {
        v43 = v39;
      }

LABEL_121:
      v54 = 132;
LABEL_126:
      *(a1 + v54) = v43;
      goto LABEL_144;
    }

    if (!v30 || (*(a1 + 140) & 8) != 0)
    {
      goto LABEL_116;
    }

    v65 = 0;
    v66 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_147;
    }

    [(GEOAttribution *)a1 _reserveRegions:?];
    if ((GEOTileSetRegionReadAllFrom((*(a1 + 24) + 24 * *(a1 + 32)), v3) & 1) == 0)
    {
      goto LABEL_147;
    }

    PBReaderRecallMark();
    ++*(a1 + 32);
LABEL_144:
    if (!(v62 & 1 | (v6 != 0)))
    {
      goto LABEL_145;
    }
  }

  if (!v30 || (*(a1 + 140) & 0x800) != 0)
  {
LABEL_116:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_144;
  }

  v65 = 0;
  v66 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_147;
  }

  v44 = objc_alloc_init(GEOResource);
  if (GEOResourceReadAllFrom(v44, v3, v60 & 1))
  {
    PBReaderRecallMark();
    [(GEOAttribution *)a1 _addNoFlagsResource:v44];

    goto LABEL_144;
  }

LABEL_147:
  v28 = 0;
LABEL_148:
  if ((v61 & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_149:
  *(a1 + 140) |= 4u;
LABEL_150:
  if (v64 || (v28 & 1) == 0)
  {
    *(a1 + 140) |= 0x20u;
    *(a1 + 140) |= 0x80u;
    *(a1 + 140) |= 0x100u;
    *(a1 + 140) |= 0x1000u;
    *(a1 + 140) |= 0x10u;
    *(a1 + 140) |= 0x40u;
    *(a1 + 140) |= 0x800u;
    *(a1 + 140) |= 8u;
    *(a1 + 140) |= 0x400u;
    *(a1 + 140) |= 0x200u;
    goto LABEL_177;
  }

  if (v18)
  {
    while (1)
    {
      v57 = *v18++;
      v56 = v57;
      if (v57 > 5)
      {
        if (v56 <= 7)
        {
          if (v56 == 6)
          {
            LOWORD(v56) = 64;
          }

          else
          {
            if (v56 != 7)
            {
              continue;
            }

            LOWORD(v56) = 2048;
          }
        }

        else if (v56 != 8)
        {
          if (v56 == 11)
          {
            LOWORD(v56) = 1024;
          }

          else
          {
            if (v56 != 12)
            {
              continue;
            }

            LOWORD(v56) = 512;
          }
        }

        goto LABEL_175;
      }

      if (v56 > 2)
      {
        switch(v56)
        {
          case 3:
            LOWORD(v56) = 256;
            break;
          case 4:
            LOWORD(v56) = 4096;
            break;
          case 5:
            LOWORD(v56) = 16;
            break;
          default:
            continue;
        }

        goto LABEL_175;
      }

      if (v56 == 1)
      {
        break;
      }

      if (v56 == 2)
      {
        LOWORD(v56) = 128;
LABEL_175:
        *(a1 + 140) |= v56;
        continue;
      }

      if (!v56)
      {
        goto LABEL_177;
      }
    }

    LOWORD(v56) = 32;
    goto LABEL_175;
  }

LABEL_177:
  if (v28)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v64)
  {
    v58 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

id _GEOConfigStorageCFPrefsReadOnly()
{
  _initStorage(1);
  v0 = _cfprefs_readonly_storage;
  if (_cfprefs_readonly_storage)
  {
    v1 = _cfprefs_readonly_storage;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _cfprefs_readonly_storage != ((void*)0)", v3, 2u);
  }

  return v0;
}

void ___initStorage_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = &_cfprefs_readonly_storage;
  }

  else
  {
    v1 = &_cfprefs_readwrite_storage;
  }

  v2 = off_1E704A0F0;
  if (!*(a1 + 32))
  {
    v2 = off_1E704A0F8;
  }

  v3 = objc_alloc_init(*v2);
  v4 = *v1;
  *v1 = v3;
}

void sub_1866431BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_186643318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1866434C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1866436A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_186643ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_186644018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GEOOfflineStateAsString(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = MEMORY[0x1E696AEC0];
  v5 = GEOOfflineModeAsString(a1);
  v6 = GEOOfflineReasonAsString(BYTE1(v1));
  v7 = GEOOfflineDeviceAsString(BYTE2(v1));
  v8 = [v4 stringWithFormat:@"%@:%@:%@(0x%06x)", v5, v6, v7, v1 & 0xFF0000FF | (v3 << 16) | (v2 << 8)];

  return v8;
}

void sub_186645174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t GEOConfigGetBOOLForCountryCode(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = _getValue(a1, a2, 1, a3, 0, 0);
  v4 = [v3 BOOLValue];

  return v4;
}

void sub_1866454B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEOAvailableAnnouncementsReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 36))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAvailableAnnouncementsReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 40));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 32) = objc_msgSend_position(v8);
  *(a1 + 36) = [v8 length];
  if (a3)
  {
    v9 = &GEOAvailableAnnouncementsReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAvailableAnnouncementsReadAllFrom_initialTag;
  }

  Specified = GEOAvailableAnnouncementsReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOAvailableAnnouncementsCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 40));
  return Specified;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::venue::Field>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<GEOLocationCoordinate2D>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(a2);
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }
}

void sub_18664621C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v46 - 240), 8);
  _Block_object_dispose((v46 - 192), 8);
  _Unwind_Resume(a1);
}

id GEOOfflineModeAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid(%d)", a1];
  }

  else
  {
    v2 = *(&off_1E70584B8 + a1);
  }

  return v2;
}

__CFString *GEOOfflineDeviceAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"Local";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid(%d)", a1];
    }
  }

  else
  {
    v2 = @"Unset";
  }

  return v2;
}

id GEOOfflineSuggestedStateAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid(%d)", a1];
  }

  else
  {
    v2 = *(&off_1E7056498 + a1);
  }

  return v2;
}

void GEOMapRectForCoordinateRegion(double a1, double a2, double a3, double a4)
{
  v28 = (atan(0.0432139183) * -2.0 + 1.57079633) * 57.2957795;
  v8 = atan(23.1406926);
  v9 = 0.0;
  if (a3 >= 0.0)
  {
    v10 = TileYForLatitude(20, fabs(a1));
    v11 = exp(((v10 * 128.0 + v10 * 128.0) * 0.0078125 + -1048576.0) / 333772.107);
    v12 = v28 + (atan(v11) * -2.0 + 1.57079633) * -57.2957795;
    if (a3 <= v12)
    {
      v12 = a3;
    }

    v9 = v12 * 0.5;
  }

  v13 = a4 * 0.5;
  if (a2 - v13 >= -180.0)
  {
    v14 = a2 - v13;
  }

  else
  {
    v14 = a2 - v13 + 360.0;
  }

  GEOTilePointForCoordinate(a1, v14, 20.0);
  v15 = a2 + v13;
  v16 = v15 + -360.0;
  if (v15 <= 180.0)
  {
    v16 = v15;
  }

  GEOTilePointForCoordinate(a1, v16, 20.0);
  if (a1 == 0.0)
  {
    GEOTilePointForCoordinate(a1 + v9, a2, 20.0);
    GEOTilePointForCoordinate(a1 - v9, a2, 20.0);
  }

  else
  {
    v27 = (v8 * -2.0 + 1.57079633) * 57.2957795;
    v17 = v27 + v9;
    v18 = 10.0;
    v19 = 502;
    do
    {
      v20 = v17 <= v28 || v17 <= a1;
      if (!v20 || (v17 < v27 ? (v21 = v17 < a1) : (v21 = 0), v21))
      {
        v17 = v17 - v18;
        v18 = v18 * 0.1;
      }

      else if (v17 > v28 || v17 < v27)
      {
        return;
      }

      if (!--v19)
      {
        break;
      }

      GEOTilePointForCoordinate(v9 + v17, a2, 20.0);
      v23 = v22;
      GEOTilePointForCoordinate(v17 - v9, a2, 20.0);
      v25 = exp(((v23 + (v24 - v23) * 0.5) * 0.0078125 + -1048576.0) / 333772.107);
      v26 = (atan(v25) * -2.0 + 1.57079633) * 57.2957795;
      if (v18 > 0.0 && v26 > a1 || v18 < 0.0 && v26 < a1)
      {
        v18 = v18 * -0.1;
      }

      v17 = v17 + v18;
    }

    while (vabdd_f64(v26, a1) >= 0.00000000999999994);
  }
}

void sub_186646A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GEOOfflineReasonAsString(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid(%d)", a1];
  }

  else
  {
    v2 = *(&off_1E70584D0 + a1);
  }

  return v2;
}

void *GEOAvailableAnnouncementsReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 40));
  [v3 setLength:*(a1 + 36)];
  [v3 seekToOffset:*(a1 + 32)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 44) >> 1) & 1) + (*(a1 + 44) & 1);
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v7;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v9 | (v10 != 0);
  if (v9 & 1 | (v10 != 0) | v6 & 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  while (1)
  {
    v14 = objc_msgSend_position(v3);
    if (v14 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_57;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v37[0]) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:v37 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v37[0] & 0x7F) << v15;
      if ((v37[0] & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      if (v16++ >= 9)
      {
        v22 = 0;
        goto LABEL_31;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_31:
    if (([v3 hasError] & 1) != 0 || (v22 & 7) == 4)
    {
LABEL_57:
      if (v12)
      {
        v32 = 1;
        goto LABEL_67;
      }

      if (v13)
      {
        do
        {
          while (1)
          {
            v34 = *v13++;
            v33 = v34;
            if (v34 != 1 && v33 != 2)
            {
              break;
            }

            *(a1 + 44) |= v33;
          }
        }

        while (v33);
      }

LABEL_68:
      v3 = ([v3 hasError] ^ 1);
      if ((v12 & 1) == 0)
      {
        return v3;
      }

      goto LABEL_69;
    }

    v23 = v22 >> 3;
    v24 = v12;
    if (!((v13 == 0) | v12 & 1))
    {
      v25 = v13;
      do
      {
        v27 = *v25++;
        v26 = v27;
        v24 = v27 != 0;
        if (v27)
        {
          v28 = v26 == v23;
        }

        else
        {
          v28 = 1;
        }
      }

      while (!v28);
    }

    if (v23 != 2)
    {
      break;
    }

    if (!v24)
    {
      goto LABEL_52;
    }

    if ((*(a1 + 44) & 2) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_66;
      }

      v7 += *(a1 + 44) << 30 >> 31;
    }

    else
    {
      v30 = PBReaderReadString();
      v31 = *(a1 + 24);
      *(a1 + 24) = v30;

      --v7;
    }

LABEL_53:
    if (!(v12 & 1 | (v7 != 0)))
    {
      goto LABEL_57;
    }
  }

  if (v23 != 1)
  {
    if (!PBReaderSkipValueWithTag())
    {
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  if (!v24 || (*(a1 + 44) & 1) != 0)
  {
LABEL_52:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  v37[0] = 0;
  v37[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_66;
  }

  v29 = objc_alloc_init(GEOAnnouncement);
  if (GEOAnnouncementReadAllFrom(v29, v3, v8 & 1))
  {
    PBReaderRecallMark();
    [(GEOAvailableAnnouncements *)a1 _addNoFlagsAnnouncement:v29];

    goto LABEL_53;
  }

LABEL_66:
  v32 = 0;
LABEL_67:
  *(a1 + 44) |= 1u;
  *(a1 + 44) |= 2u;
  if (v32)
  {
    goto LABEL_68;
  }

  v3 = 0;
  if (v12)
  {
LABEL_69:
    v35 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOAnnouncementReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAnnouncementReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 88));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 80) = objc_msgSend_position(v8);
  *(a1 + 84) = [v8 length];
  if (a3)
  {
    v9 = &GEOAnnouncementReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAnnouncementReadAllFrom_initialTag;
  }

  Specified = GEOAnnouncementReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 56) readAll:1];
    [*(a1 + 48) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOAnnouncementReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 88));
  [v3 setLength:*(a1 + 84)];
  [v3 seekToOffset:*(a1 + 80)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 108) >> 10) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 108)), 0xFFFCFFFBFFF5FFF7), 0x1000100010001)) + ((*(a1 + 108) >> 7) & 1) + ((*(a1 + 108) >> 6) & 1) + (HIBYTE(*(a1 + 108)) & 1));
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -2)
    {
      break;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v11 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v6;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v10 > 5;
  v13 = v9 | v12;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v69 = (v14 == 0) | v13;
  v70 = v9 | v12;
  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_164;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v71) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v71 & 0x7F) << v16;
      if ((v71 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v22 = v17++ >= 9;
      if (v22)
      {
        v23 = 0;
        goto LABEL_32;
      }
    }

    v23 = [v3 hasError] ? 0 : v18;
LABEL_32:
    v13 = v70;
    if (([v3 hasError] & 1) != 0 || (v23 & 7) == 4)
    {
LABEL_164:
      if (v13)
      {
        v63 = 1;
        goto LABEL_191;
      }

      if (!v14)
      {
LABEL_192:
        v3 = ([v3 hasError] ^ 1);
        if ((v13 & 1) == 0)
        {
          return v3;
        }

        goto LABEL_193;
      }

      while (1)
      {
        while (1)
        {
          v65 = *v14++;
          v64 = v65;
          if (v65 > 5)
          {
            break;
          }

          if (v64 > 3)
          {
            if (v64 == 4)
            {
              v66 = 32;
              goto LABEL_186;
            }

            if (v64 == 5)
            {
              v66 = 16;
              goto LABEL_186;
            }
          }

          else
          {
            switch(v64)
            {
              case 2:
                v66 = 512;
LABEL_186:
                *(a1 + 108) |= v66;
                break;
              case 3:
                v66 = 2048;
                goto LABEL_186;
              case 0:
                goto LABEL_192;
            }
          }
        }

        if (v64 > 9)
        {
          if (v64 == 10)
          {
            v66 = 256;
            goto LABEL_186;
          }

          if (v64 == 11)
          {
            v66 = 1024;
            goto LABEL_186;
          }
        }

        else
        {
          if (v64 == 6)
          {
            v66 = 128;
            goto LABEL_186;
          }

          if (v64 == 7)
          {
            v66 = 64;
            goto LABEL_186;
          }
        }
      }
    }

    v24 = v23 >> 3;
    v25 = v70;
    if ((v69 & 1) == 0)
    {
      v26 = v14;
      do
      {
        v28 = *v26++;
        v27 = v28;
        v25 = v28 != 0;
        if (v28)
        {
          v29 = v27 == v24;
        }

        else
        {
          v29 = 1;
        }
      }

      while (!v29);
    }

    if (v24 > 6)
    {
      if (v24 <= 9)
      {
        if (v24 != 7)
        {
          if (v24 == 8)
          {
            if ((v7 & 1) == 0)
            {
              goto LABEL_127;
            }

            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 108) |= 4u;
            while (1)
            {
              LOBYTE(v71) = 0;
              v58 = objc_msgSend_position(v3) + 1;
              if (v58 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3) + 1, v59 <= [v3 length]))
              {
                v60 = [v3 data];
                [v60 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v57 |= (v71 & 0x7F) << v55;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v22 = v56++ >= 9;
              if (v22)
              {
                v38 = 0;
                goto LABEL_144;
              }
            }

            if ([v3 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v57;
            }

LABEL_144:
            v13 = v70;
            v61 = 100;
          }

          else
          {
            if ((v7 & 1) == 0)
            {
              goto LABEL_127;
            }

            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 108) |= 8u;
            while (1)
            {
              LOBYTE(v71) = 0;
              v35 = objc_msgSend_position(v3) + 1;
              if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
              {
                v37 = [v3 data];
                [v37 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v34 |= (v71 & 0x7F) << v32;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v22 = v33++ >= 9;
              if (v22)
              {
                v38 = 0;
                goto LABEL_132;
              }
            }

            if ([v3 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

LABEL_132:
            v13 = v70;
            v61 = 104;
          }

LABEL_145:
          *(a1 + v61) = v38;
          goto LABEL_163;
        }

        if (!v25)
        {
          goto LABEL_127;
        }

        if ((*(a1 + 108) & 0x40) == 0)
        {
          v30 = PBReaderReadString();
          v31 = 32;
          goto LABEL_123;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_190;
        }

        v62 = *(a1 + 108) << 9;
LABEL_162:
        v6 += v62 >> 15;
        goto LABEL_163;
      }

      if (v24 != 10)
      {
        if (v24 != 11)
        {
          if (v24 != 12)
          {
LABEL_125:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_190;
            }

            goto LABEL_163;
          }

          if ((v7 & 1) == 0)
          {
            goto LABEL_127;
          }

          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 108) |= 2u;
          while (1)
          {
            LOBYTE(v71) = 0;
            v42 = objc_msgSend_position(v3) + 1;
            if (v42 >= objc_msgSend_position(v3) && (v43 = objc_msgSend_position(v3) + 1, v43 <= [v3 length]))
            {
              v44 = [v3 data];
              [v44 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v41 |= (v71 & 0x7F) << v39;
            if ((v71 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v22 = v40++ >= 9;
            if (v22)
            {
              v38 = 0;
              goto LABEL_136;
            }
          }

          if ([v3 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v41;
          }

LABEL_136:
          v13 = v70;
          v61 = 96;
          goto LABEL_145;
        }

        if (!v25)
        {
LABEL_127:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_190;
          }

          goto LABEL_163;
        }

        if ((*(a1 + 108) & 0x400) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_190;
          }

          v62 = 32 * *(a1 + 108);
          goto LABEL_162;
        }

        v30 = PBReaderReadString();
        v31 = 64;
        goto LABEL_123;
      }

      if (!v25)
      {
        goto LABEL_127;
      }

      if ((*(a1 + 108) & 0x100) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_190;
        }

        v62 = *(a1 + 108) << 7;
        goto LABEL_162;
      }

      v71 = 0;
      v72 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_190;
      }

      v52 = objc_alloc_init(GEOPDFlyover);
      if (!GEOPDFlyoverReadAllFrom(v52, v3, v8 & 1))
      {
        goto LABEL_189;
      }

      PBReaderRecallMark();
      v53 = 48;
LABEL_106:
      v54 = *(a1 + v53);
      *(a1 + v53) = v52;
LABEL_124:

      --v6;
      goto LABEL_163;
    }

    if (v24 > 3)
    {
      if (v24 == 4)
      {
        if (!v25)
        {
          goto LABEL_127;
        }

        if ((*(a1 + 108) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_190;
          }

          v62 = *(a1 + 108) << 10;
          goto LABEL_162;
        }

        v30 = PBReaderReadString();
        v31 = 24;
      }

      else
      {
        if (v24 != 5)
        {
          if (!v25)
          {
            goto LABEL_127;
          }

          if ((*(a1 + 108) & 0x80) == 0)
          {
            v30 = PBReaderReadString();
            v31 = 40;
            goto LABEL_123;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_190;
          }

          v62 = *(a1 + 108) << 8;
          goto LABEL_162;
        }

        if (!v25)
        {
          goto LABEL_127;
        }

        if ((*(a1 + 108) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_190;
          }

          v62 = *(a1 + 108) << 11;
          goto LABEL_162;
        }

        v30 = PBReaderReadString();
        v31 = 16;
      }

LABEL_123:
      v54 = *(a1 + v31);
      *(a1 + v31) = v30;
      goto LABEL_124;
    }

    if (v24 != 1)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_127;
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    *(a1 + 108) |= 1u;
    while (1)
    {
      LOBYTE(v71) = 0;
      v48 = objc_msgSend_position(v3) + 1;
      if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
      {
        v50 = [v3 data];
        [v50 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v47 |= (v71 & 0x7F) << v45;
      if ((v71 & 0x80) == 0)
      {
        break;
      }

      v45 += 7;
      v22 = v46++ >= 9;
      if (v22)
      {
        v51 = 0;
        goto LABEL_140;
      }
    }

    if ([v3 hasError])
    {
      v51 = 0;
    }

    else
    {
      v51 = v47;
    }

LABEL_140:
    *(a1 + 92) = v51;
    v13 = v70;
LABEL_163:
    if (!(v13 & 1 | (v6 != 0)))
    {
      goto LABEL_164;
    }
  }

  if (v24 != 2)
  {
    if (v24 != 3)
    {
      goto LABEL_125;
    }

    if (!v25)
    {
      goto LABEL_127;
    }

    if ((*(a1 + 108) & 0x800) == 0)
    {
      v30 = PBReaderReadString();
      v31 = 72;
      goto LABEL_123;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_190;
    }

    v62 = 16 * *(a1 + 108);
    goto LABEL_162;
  }

  if (!v25)
  {
    goto LABEL_127;
  }

  if ((*(a1 + 108) & 0x200) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_190;
    }

    v62 = *(a1 + 108) << 6;
    goto LABEL_162;
  }

  v71 = 0;
  v72 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_190;
  }

  v52 = objc_alloc_init(GEOMapRegion);
  if (GEOMapRegionReadAllFrom(v52, v3, v8 & 1))
  {
    PBReaderRecallMark();
    v53 = 56;
    goto LABEL_106;
  }

LABEL_189:

LABEL_190:
  v63 = 0;
LABEL_191:
  *(a1 + 108) |= 0x200u;
  *(a1 + 108) |= 0x800u;
  *(a1 + 108) |= 0x20u;
  *(a1 + 108) |= 0x10u;
  *(a1 + 108) |= 0x80u;
  *(a1 + 108) |= 0x40u;
  *(a1 + 108) |= 0x100u;
  *(a1 + 108) |= 0x400u;
  if (v63)
  {
    goto LABEL_192;
  }

  v3 = 0;
  if (v13)
  {
LABEL_193:
    v67 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOMapRegionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOMapRegionReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 80));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 72) = objc_msgSend_position(v8);
  *(a1 + 76) = [v8 length];
  if (a3)
  {
    v9 = &GEOMapRegionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOMapRegionReadAllFrom_initialTag;
  }

  Specified = GEOMapRegionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOMapRegionCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOMapRegionReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 80));
  [v3 setLength:*(a1 + 76)];
  [v3 seekToOffset:*(a1 + 72)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (HIBYTE(*(a1 + 92)) & 1) + ((*(a1 + 92) >> 7) & 1) + ((*(a1 + 92) >> 6) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 != 0;
  v13 = v9 | v12;
  v70 = v12 & ~v9 | v6;
  v71 = v9 | v12 | v6;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_117:
      v24 = 1;
      goto LABEL_118;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v72[0]) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:v72 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v72[0] & 0x7F) << v16;
      if ((v72[0] & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v22 = v17++ >= 9;
      if (v22)
      {
        v18 = 0;
        goto LABEL_29;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_29:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_118;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 <= 8)
    {
      if (v25 > 6)
      {
        if (v25 == 7)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_97;
          }

          *(a1 + 92) |= 2u;
          v72[0] = 0;
          v47 = objc_msgSend_position(v3) + 8;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 8, v48 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:v72 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v59 = v72[0];
          v60 = 32;
        }

        else
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_97;
          }

          *(a1 + 92) |= 1u;
          v72[0] = 0;
          v40 = objc_msgSend_position(v3) + 8;
          if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 8, v41 <= [v3 length]))
          {
            v63 = [v3 data];
            [v63 getBytes:v72 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v59 = v72[0];
          v60 = 24;
        }

        goto LABEL_115;
      }

      if (v25 == 5)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_97;
        }

        *(a1 + 92) |= 4u;
        v72[0] = 0;
        v44 = objc_msgSend_position(v3) + 8;
        if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 8, v45 <= [v3 length]))
        {
          v58 = [v3 data];
          [v58 getBytes:v72 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v59 = v72[0];
        v60 = 48;
        goto LABEL_115;
      }

      if (v25 == 6)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_97;
        }

        *(a1 + 92) |= 8u;
        v72[0] = 0;
        v31 = objc_msgSend_position(v3) + 8;
        if (v31 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3) + 8, v32 <= [v3 length]))
        {
          v62 = [v3 data];
          [v62 getBytes:v72 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v59 = v72[0];
        v60 = 64;
LABEL_115:
        *(a1 + v60) = v59;
        goto LABEL_116;
      }

      goto LABEL_91;
    }

    if (v25 <= 10)
    {
      break;
    }

    if (v25 == 11)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_97;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 92) |= 0x20u;
      while (1)
      {
        LOBYTE(v72[0]) = 0;
        v52 = objc_msgSend_position(v3) + 1;
        if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
        {
          v54 = [v3 data];
          [v54 getBytes:v72 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v51 |= (v72[0] & 0x7F) << v49;
        if ((v72[0] & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v22 = v50++ >= 9;
        if (v22)
        {
          v55 = 0;
          goto LABEL_100;
        }
      }

      v55 = (v51 != 0) & ~[v3 hasError];
LABEL_100:
      *(a1 + 88) = v55;
      goto LABEL_116;
    }

    if (v25 == 12)
    {
      if (v26)
      {
        if ((*(a1 + 92) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_137;
          }

          v8 += *(a1 + 92) << 24 >> 31;
        }

        else
        {
          v42 = PBReaderReadString();
          v43 = *(a1 + 40);
          *(a1 + 40) = v42;

          --v8;
        }

        goto LABEL_116;
      }

LABEL_97:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_116;
    }

LABEL_91:
    if ((v70 & 1) == 0 || (*(a1 + 92) & 0x40) != 0)
    {
      goto LABEL_97;
    }

    if (!*(a1 + 16))
    {
      v56 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v57 = *(a1 + 16);
      *(a1 + 16) = v56;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      v69 = &OBJC_IVAR___GEOPOIEvent__timeZone;
      goto LABEL_119;
    }

LABEL_116:
    if (!(v71 & 1 | (v8 != 0)))
    {
      goto LABEL_117;
    }
  }

  if (v25 != 9)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_97;
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    *(a1 + 92) |= 0x10u;
    while (1)
    {
      LOBYTE(v72[0]) = 0;
      v36 = objc_msgSend_position(v3) + 1;
      if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
      {
        v38 = [v3 data];
        [v38 getBytes:v72 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v35 |= (v72[0] & 0x7F) << v33;
      if ((v72[0] & 0x80) == 0)
      {
        break;
      }

      v33 += 7;
      v22 = v34++ >= 9;
      if (v22)
      {
        v39 = 0;
        goto LABEL_104;
      }
    }

    if ([v3 hasError])
    {
      v39 = 0;
    }

    else
    {
      v39 = v35;
    }

LABEL_104:
    *(a1 + 84) = v39;
    goto LABEL_116;
  }

  if (!v26 || (*(a1 + 92) & 0x100) != 0)
  {
    goto LABEL_97;
  }

  v72[0] = 0;
  v72[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_137;
  }

  v46 = objc_alloc_init(GEOLatLng);
  if (GEOLatLngReadAllFrom(v46, v3))
  {
    PBReaderRecallMark();
    [(GEOMapRegion *)a1 _addNoFlagsVertex:v46];

    goto LABEL_116;
  }

LABEL_137:
  v24 = 0;
LABEL_118:
  v69 = &OBJC_IVAR___GEOPOIEvent__timeZone;
  if ((v70 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_119:
  *(a1 + v69[705]) |= 0x40u;
LABEL_120:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v69[705]) |= 0x100u;
    *(a1 + v69[705]) |= 0x80u;
    goto LABEL_130;
  }

  if (v14)
  {
    while (1)
    {
      v65 = *v14++;
      v64 = v65;
      if (v65 == 9)
      {
        break;
      }

      if (v64 == 12)
      {
        v66 = 128;
LABEL_129:
        *(a1 + v69[705]) |= v66;
        continue;
      }

      if (!v64)
      {
        goto LABEL_130;
      }
    }

    v66 = 256;
    goto LABEL_129;
  }

LABEL_130:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_134:
    v67 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_134;
    }
  }

  return v3;
}

geomapregion::Polygon *geomapregion::Polygon::Polygon(geomapregion::Polygon *this, GEOMapRegion *a2)
{
  v134 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v4 = [(GEOMapRegion *)v3 vertexs];
  v5 = v4;
  v127 = v3;
  v128 = v4;
  if (!v4)
  {
    if (![(GEOMapRegion *)v3 hasRectangleVertices])
    {
      goto LABEL_133;
    }

    [(GEOMapRegion *)v3 westLng];
    v30 = v29;
    [(GEOMapRegion *)v3 eastLng];
    if (v30 == v31 && ([(GEOMapRegion *)v3 northLat], v33 = v32, [(GEOMapRegion *)v3 southLat], v33 == v34))
    {
      std::vector<GEOLocationCoordinate2D>::reserve(this, 1uLL);
      [(GEOMapRegion *)v3 westLng];
      v36 = v35;
      [(GEOMapRegion *)v3 northLat];
      v38 = v37;
      v40 = *(this + 1);
      v39 = *(this + 2);
      if (v40 >= v39)
      {
        v41 = *this;
        v42 = v40 - *this;
        v43 = v42 >> 4;
        v44 = (v42 >> 4) + 1;
        if (v44 >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v45 = v39 - v41;
        if (v45 >> 3 > v44)
        {
          v44 = v45 >> 3;
        }

        if (v45 >= 0x7FFFFFFFFFFFFFF0)
        {
          v46 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v44;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v46);
        }

LABEL_129:
        v122 = (v46 + 16 * v43);
        v123 = v46;
        *v122 = v36;
        v122[1] = v38;
        v119 = v122 + 2;
        v124 = v46;
        memcpy(v46, v41, v42);
        v125 = *this;
        *this = v124;
        *(this + 1) = v119;
        *(this + 2) = v123;
        if (v125)
        {
          operator delete(v125);
        }

        v3 = v127;
        goto LABEL_132;
      }
    }

    else
    {
      std::vector<GEOLocationCoordinate2D>::reserve(this, 5uLL);
      [(GEOMapRegion *)v3 westLng];
      v52 = v51;
      [(GEOMapRegion *)v3 northLat];
      v55 = *(this + 1);
      v54 = *(this + 2);
      if (v55 >= v54)
      {
        v66 = *this;
        v67 = v55 - *this;
        v68 = v67 >> 4;
        v69 = (v67 >> 4) + 1;
        if (v69 >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v70 = v54 - v66;
        if (v70 >> 3 > v69)
        {
          v69 = v70 >> 3;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF0)
        {
          v71 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v69;
        }

        if (v71)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v71);
        }

        v72 = (16 * v68);
        *v72 = v52;
        v72[1] = v53;
        v56 = 16 * v68 + 16;
        memcpy(0, v66, v67);
        v73 = *this;
        *this = 0;
        *(this + 1) = v56;
        *(this + 2) = 0;
        if (v73)
        {
          operator delete(v73);
        }
      }

      else
      {
        *v55 = v52;
        v55[1] = v53;
        v56 = (v55 + 2);
      }

      *(this + 1) = v56;
      [(GEOMapRegion *)v3 eastLng];
      v75 = v74;
      [(GEOMapRegion *)v3 northLat];
      v78 = *(this + 1);
      v77 = *(this + 2);
      if (v78 >= v77)
      {
        v80 = *this;
        v81 = v78 - *this;
        v82 = v81 >> 4;
        v83 = (v81 >> 4) + 1;
        if (v83 >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v84 = v77 - v80;
        if (v84 >> 3 > v83)
        {
          v83 = v84 >> 3;
        }

        if (v84 >= 0x7FFFFFFFFFFFFFF0)
        {
          v85 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v83;
        }

        if (v85)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v85);
        }

        v86 = (16 * v82);
        *v86 = v75;
        v86[1] = v76;
        v79 = 16 * v82 + 16;
        memcpy(0, v80, v81);
        v87 = *this;
        *this = 0;
        *(this + 1) = v79;
        *(this + 2) = 0;
        if (v87)
        {
          operator delete(v87);
        }

        v3 = v127;
      }

      else
      {
        *v78 = v75;
        v78[1] = v76;
        v79 = (v78 + 2);
      }

      *(this + 1) = v79;
      [(GEOMapRegion *)v3 eastLng];
      v89 = v88;
      [(GEOMapRegion *)v3 southLat];
      v92 = *(this + 1);
      v91 = *(this + 2);
      if (v92 >= v91)
      {
        v94 = *this;
        v95 = v92 - *this;
        v96 = v95 >> 4;
        v97 = (v95 >> 4) + 1;
        if (v97 >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v98 = v91 - v94;
        if (v98 >> 3 > v97)
        {
          v97 = v98 >> 3;
        }

        if (v98 >= 0x7FFFFFFFFFFFFFF0)
        {
          v99 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v99 = v97;
        }

        if (v99)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v99);
        }

        v100 = (16 * v96);
        *v100 = v89;
        v100[1] = v90;
        v93 = 16 * v96 + 16;
        memcpy(0, v94, v95);
        v101 = *this;
        *this = 0;
        *(this + 1) = v93;
        *(this + 2) = 0;
        if (v101)
        {
          operator delete(v101);
        }

        v3 = v127;
      }

      else
      {
        *v92 = v89;
        v92[1] = v90;
        v93 = (v92 + 2);
      }

      *(this + 1) = v93;
      [(GEOMapRegion *)v3 westLng];
      v103 = v102;
      [(GEOMapRegion *)v3 southLat];
      v106 = *(this + 1);
      v105 = *(this + 2);
      if (v106 >= v105)
      {
        v108 = *this;
        v109 = v106 - *this;
        v110 = v109 >> 4;
        v111 = (v109 >> 4) + 1;
        if (v111 >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v112 = v105 - v108;
        if (v112 >> 3 > v111)
        {
          v111 = v112 >> 3;
        }

        if (v112 >= 0x7FFFFFFFFFFFFFF0)
        {
          v113 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v113 = v111;
        }

        if (v113)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v113);
        }

        v114 = (16 * v110);
        *v114 = v103;
        v114[1] = v104;
        v107 = 16 * v110 + 16;
        memcpy(0, v108, v109);
        v115 = *this;
        *this = 0;
        *(this + 1) = v107;
        *(this + 2) = 0;
        if (v115)
        {
          operator delete(v115);
        }

        v3 = v127;
      }

      else
      {
        *v106 = v103;
        v106[1] = v104;
        v107 = (v106 + 2);
      }

      *(this + 1) = v107;
      [(GEOMapRegion *)v3 westLng];
      v36 = v116;
      [(GEOMapRegion *)v3 northLat];
      v38 = v117;
      v40 = *(this + 1);
      v118 = *(this + 2);
      if (v40 >= v118)
      {
        v41 = *this;
        v42 = v40 - *this;
        v43 = v42 >> 4;
        v120 = (v42 >> 4) + 1;
        if (v120 >> 60)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v121 = v118 - v41;
        if (v121 >> 3 > v120)
        {
          v120 = v121 >> 3;
        }

        if (v121 >= 0x7FFFFFFFFFFFFFF0)
        {
          v46 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v46 = v120;
        }

        if (v46)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v46);
        }

        goto LABEL_129;
      }
    }

    *v40 = v36;
    v40[1] = v38;
    v119 = v40 + 2;
LABEL_132:
    *(this + 1) = v119;
    v5 = 0;
    goto LABEL_133;
  }

  std::vector<GEOLocationCoordinate2D>::reserve(this, [v4 count]);
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v129 objects:v133 count:16];
  if (v7)
  {
    v8 = *v130;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v130 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v129 + 1) + 8 * i);
        [v10 lng];
        v12 = v11;
        [v10 lat];
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 >= v14)
        {
          v17 = *this;
          v18 = v15 - *this;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
          }

          v21 = v14 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v22);
          }

          v23 = (16 * v19);
          *v23 = v12;
          v23[1] = v13;
          v16 = 16 * v19 + 16;
          memcpy(0, v17, v18);
          v24 = *this;
          *this = 0;
          *(this + 1) = v16;
          *(this + 2) = 0;
          if (v24)
          {
            operator delete(v24);
          }

          v3 = v127;
        }

        else
        {
          *v15 = v12;
          v15[1] = v13;
          v16 = (v15 + 2);
        }

        *(this + 1) = v16;
        v5 = v128;
      }

      v7 = [v6 countByEnumeratingWithState:&v129 objects:v133 count:16];
    }

    while (v7);
  }

  v26 = *this;
  v25 = *(this + 1);
  if (*this == v25)
  {
    v28 = *(this + 1);
  }

  else
  {
    v27 = *(this + 2);
    if (v25 >= v27)
    {
      v47 = v25 - v26;
      v48 = v47 + 1;
      if ((v47 + 1) >> 60)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v49 = v27 - v26;
      if (v49 >> 3 > v48)
      {
        v48 = v49 >> 3;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v50 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate2D>>(v50);
      }

      v57 = (16 * v47);
      *v57 = *v26;
      v28 = 16 * v47 + 16;
      v58 = *(this + 1) - *this;
      v59 = v57 - v58;
      memcpy(v57 - v58, *this, v58);
      v60 = *this;
      *this = v59;
      *(this + 1) = v28;
      *(this + 2) = 0;
      if (v60)
      {
        operator delete(v60);
      }

      v3 = v127;
    }

    else
    {
      *v25 = *v26;
      v28 = (v25 + 1);
    }

    *(this + 1) = v28;
    v26 = *this;
    v25 = v28;
  }

  if (v26 != v28)
  {
    v61 = (v26 + 1);
    if (v26 + 1 != v28)
    {
      v62 = *v26;
      while (1)
      {
        v63 = v62;
        v62 = *v61;
        if (vabdd_f64(v63, *v61) < 0.00000001 && vabdd_f64(*(v61 - 1), v61[1]) < 0.00000001)
        {
          break;
        }

        v61 += 2;
        if (v61 == v28)
        {
          v64 = v28;
          goto LABEL_60;
        }
      }

      v64 = v61 - 2;
LABEL_60:
      if (v28 != v64)
      {
        v65 = v64 + 4;
        if (v64 + 4 != v28)
        {
          do
          {
            if (vabdd_f64(*v64, *v65) >= 0.00000001 || vabdd_f64(v64[1], v65[1]) >= 0.00000001)
            {
              *(v64 + 1) = *v65;
              v64 += 2;
            }

            v65 += 2;
          }

          while (v65 != v28);
          v25 = *(this + 1);
        }

        v28 = (v64 + 2);
      }
    }
  }

  if (v25 != v28)
  {
    *(this + 1) = v28;
  }

LABEL_133:

  return this;
}

void sub_1866499DC(_Unwind_Exception *a1)
{
  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t geomapregion::Polygon::contains(geomapregion::Polygon *this, const Point *a2, double a3, double a4)
{
  result = 0;
  if (a2 != this)
  {
    v6 = (a2 - this) >> 4;
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v8 = 0;
      v9 = (this + 24);
      do
      {
        v10 = *v9;
        v11 = *(v9 - 3);
        v12 = *(v9 - 2);
        v13 = *(v9 - 1) - *&v11;
        v14 = a3 - *&v11;
        v15 = *v9 - v12;
        v16 = (a4 - v12) * v13 - v14 * v15;
        if (fabs(v16) <= 1.0e-20)
        {
          v17 = v15 * (a4 - v12) + v14 * v13;
          v18 = v15 * v15 + v13 * v13;
          if (v17 >= 0.0 && v18 >= v17)
          {
            v23 = 1;
            goto LABEL_23;
          }
        }

        v20 = v10 <= a4;
        if (v16 >= 0.0)
        {
          v20 = 0;
        }

        v21 = v10 > a4;
        if (v16 <= 0.0)
        {
          v21 = 0;
        }

        if (v12 <= a4)
        {
          v22 = 1;
        }

        else
        {
          v22 = -1;
        }

        if (v12 <= a4)
        {
          v20 = v21;
        }

        if (v20)
        {
          v8 += v22;
        }

        v9 += 2;
        --v7;
      }

      while (v7);
      v23 = 0;
LABEL_23:
      if (v8)
      {
        return 1;
      }

      else
      {
        return v23;
      }
    }
  }

  return result;
}

double GEOMapRectForMapRegion(void *a1)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 northLat];
  v3 = v2;
  [v1 westLng];
  v5 = GEOTilePointForCoordinate(v3, v4, 20.0);
  v7 = v6;
  [v1 southLat];
  v9 = v8;
  [v1 eastLng];
  v11 = GEOTilePointForCoordinate(v9, v10, 20.0);
  v13 = v12;
  if (([v1 hasRectangleVertices] & 1) == 0)
  {
    if (![v1 vertexsCount])
    {
      v25 = INFINITY;
      goto LABEL_33;
    }

    if ([v1 vertexsCount])
    {
      v14 = 0;
      do
      {
        v15 = [v1 vertexAtIndex:v14];
        [v15 coordinate];
        v18 = GEOTilePointForCoordinate(v16, v17, 20.0);
        if (v5 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v5;
        }

        if (v7 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v7;
        }

        if (v11 <= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v11;
        }

        if (v13 <= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v13;
        }

        if (v14)
        {
          v7 = v21;
        }

        else
        {
          v7 = v19;
        }

        if (v14)
        {
          v11 = v22;
        }

        else
        {
          v11 = v18;
        }

        if (v14)
        {
          v13 = v23;
        }

        else
        {
          v13 = v19;
        }

        if (v14)
        {
          v5 = v20;
        }

        else
        {
          v5 = v18;
        }

        ++v14;
      }

      while (v14 < [v1 vertexsCount]);
    }
  }

  v24 = v11 + 268435456.0;
  *v27 = v5;
  *&v27[1] = v7;
  if (v5 <= v11)
  {
    v24 = v11;
  }

  *&v27[2] = v24;
  *&v27[3] = v13;
  v25 = GEOMapRectBoundingMapPoints(v27, 2);
LABEL_33:

  return v25;
}

double GEOMapRectBoundingMapPoints(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return INFINITY;
  }

  v2 = (a1 + 8);
  v3 = INFINITY;
  v4 = -INFINITY;
  v5 = -INFINITY;
  result = INFINITY;
  do
  {
    v7 = *(v2 - 1);
    v8 = *v2;
    if (v7 < result)
    {
      result = *(v2 - 1);
    }

    if (v8 < v3)
    {
      v3 = *v2;
    }

    if (v7 > v5)
    {
      v5 = *(v2 - 1);
    }

    if (v8 > v4)
    {
      v4 = *v2;
    }

    v2 += 2;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t GEOURLCameraReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v36) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v36 & 0x7F) << v5;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          if (v6++ >= 9)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) <= 2)
        {
          if (v15 == 1)
          {
            *(a1 + 48) |= 4u;
            v36 = 0;
            v24 = objc_msgSend_position(v3);
            if (v24 + 8 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3), v25 + 8 <= [v3 length]))
            {
              v30 = [v3 data];
              [v30 getBytes:&v36 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            v27 = v36;
            v28 = &OBJC_IVAR___GEOURLCamera__latitude;
          }

          else
          {
            if (v15 != 2)
            {
LABEL_41:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_56;
              }

              goto LABEL_54;
            }

            *(a1 + 48) |= 8u;
            v36 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 8 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 8 <= [v3 length]))
            {
              v32 = [v3 data];
              [v32 getBytes:&v36 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            v27 = v36;
            v28 = &OBJC_IVAR___GEOURLCamera__longitude;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              *(a1 + 48) |= 2u;
              v36 = 0;
              v20 = objc_msgSend_position(v3);
              if (v20 + 8 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3), v21 + 8 <= [v3 length]))
              {
                v26 = [v3 data];
                [v26 getBytes:&v36 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v27 = v36;
              v28 = &OBJC_IVAR___GEOURLCamera__heading;
              break;
            case 4:
              *(a1 + 48) |= 0x10u;
              v36 = 0;
              v22 = objc_msgSend_position(v3);
              if (v22 + 8 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3), v23 + 8 <= [v3 length]))
              {
                v29 = [v3 data];
                [v29 getBytes:&v36 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v27 = v36;
              v28 = &OBJC_IVAR___GEOURLCamera__pitch;
              break;
            case 5:
              *(a1 + 48) |= 1u;
              v36 = 0;
              v16 = objc_msgSend_position(v3);
              if (v16 + 8 >= objc_msgSend_position(v3) && (v17 = objc_msgSend_position(v3), v17 + 8 <= [v3 length]))
              {
                v31 = [v3 data];
                [v31 getBytes:&v36 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v27 = v36;
              v28 = &OBJC_IVAR___GEOURLCamera__altitude;
              break;
            default:
              goto LABEL_41;
          }
        }

        *(a1 + *v28) = v27;
LABEL_54:
        v33 = objc_msgSend_position(v3);
      }

      while (v33 < [v3 length]);
    }

    v34 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_56:
    v34 = 0;
  }

  objc_sync_exit(v3);

  return v34;
}

id GEOGetNetEventFileManagerLog()
{
  if (GEOGetNetEventFileManagerLog_onceToken != -1)
  {
    dispatch_once(&GEOGetNetEventFileManagerLog_onceToken, &__block_literal_global_52_9685);
  }

  v1 = GEOGetNetEventFileManagerLog_log;

  return v1;
}

id GEOGetAnalyticDataFileLog()
{
  if (GEOGetAnalyticDataFileLog_onceToken != -1)
  {
    dispatch_once(&GEOGetAnalyticDataFileLog_onceToken, &__block_literal_global_116799);
  }

  v1 = GEOGetAnalyticDataFileLog_log;

  return v1;
}

void sub_18664AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GEOSessionIDReadAllFrom(void *a1, void *a2)
{
  for (i = objc_msgSend_position(a2); i < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0; i = objc_msgSend_position(a2))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v28 = 0;
      v8 = objc_msgSend_position(a2) + 1;
      if (v8 >= objc_msgSend_position(a2) && (v9 = objc_msgSend_position(a2) + 1, v9 <= [a2 length]))
      {
        v10 = [a2 data];
        [v10 getBytes:&v28 range:{objc_msgSend_position(a2), 1}];

        [a2 setPosition:objc_msgSend_position(a2) + 1];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v28 & 0x7F) << v5;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((v12 >> 3) == 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        v30 = 0;
        v23 = objc_msgSend_position(a2) + 1;
        if (v23 >= objc_msgSend_position(a2) && (v24 = objc_msgSend_position(a2) + 1, v24 <= [a2 length]))
        {
          v25 = [a2 data];
          [v25 getBytes:&v30 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v30 & 0x7F) << v20;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        v11 = v21++ >= 9;
        if (v11)
        {
          v26 = 0;
          goto LABEL_47;
        }
      }

      if ([a2 hasError])
      {
        v26 = 0;
      }

      else
      {
        v26 = v22;
      }

LABEL_47:
      a1[1] = v26;
    }

    else if ((v12 >> 3) == 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      while (1)
      {
        v29 = 0;
        v16 = objc_msgSend_position(a2) + 1;
        if (v16 >= objc_msgSend_position(a2) && (v17 = objc_msgSend_position(a2) + 1, v17 <= [a2 length]))
        {
          v18 = [a2 data];
          [v18 getBytes:&v29 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v29 & 0x7F) << v13;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v13 += 7;
        v11 = v14++ >= 9;
        if (v11)
        {
          v19 = 0;
          goto LABEL_43;
        }
      }

      if ([a2 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v15;
      }

LABEL_43:
      *a1 = v19;
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

id GEOGetTileDBLog()
{
  if (GEOGetTileDBLog_onceToken != -1)
  {
    dispatch_once(&GEOGetTileDBLog_onceToken, &__block_literal_global_980);
  }

  v1 = GEOGetTileDBLog_log;

  return v1;
}

uint64_t FetchSubscriptions(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6126;
  v20 = __Block_byref_object_dispose__6127;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FetchSubscriptions_block_invoke;
  v12[3] = &unk_1E70629C0;
  v7 = v5;
  v13 = v7;
  v8 = v6;
  v14 = v8;
  v15 = &v16;
  v9 = [v7 statementForKey:@"FetchSubscriptions" statementBlock:v12];
  if (a2)
  {
    v10 = v17[5];
    if (v10)
    {
      *a2 = v10;
    }
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_18664B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __FetchSubscriptions_block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  do
  {
    if (v4 != 100)
    {
      break;
    }

    v5 = [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v6 = [*(a1 + 32) stringForColumn:1 inStatment:a2];
    v7 = [*(a1 + 32) stringForColumn:2 inStatment:a2];
    v8 = [*(a1 + 32) int64ForColumn:3 inStatment:a2];
    v9 = [*(a1 + 32) int64ForColumn:4 inStatment:a2];
    v10 = [*(a1 + 32) int64ForColumn:5 inStatment:a2];
    v11 = [*(a1 + 32) blobForColumn:6 inStatment:a2];
    v12 = [*(a1 + 32) stringForColumn:7 inStatment:a2];
    v13 = (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8, v9, v10, v11, v12, [*(a1 + 32) int64ForColumn:8 inStatment:a2]);
    v14 = v13;
    v4 = v13 ? sqlite3_step(a2) : 101;
  }

  while ((v14 & 1) != 0);
  if (v4 != 101)
  {
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 48) + 8);
    obj = *(v16 + 40);
    [v15 reportSQLiteErrorCode:v4 method:@"step" error:&obj];
    objc_storeStrong((v16 + 40), obj);
  }

  return v4 == 101;
}

uint64_t GEOGetUserTransportTypePreference()
{
  if (_GEOConfigHasValue(2, &GeoServicesConfig_TransportTypePreference_Metadata))
  {

    return GEOConfigGetInteger(2, &GeoServicesConfig_TransportTypePreference_Metadata);
  }

  else if (_GEOConfigHasValue(364, &GeoServicesConfig_DefaultMapMode_Metadata) && GEOConfigGetInteger(364, &GeoServicesConfig_DefaultMapMode_Metadata) == 3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t GEOAPSessionDataReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v70[0]) = 0;
          v8 = objc_msgSend_position(v3, v70[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v70 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v70[0] & 0x7F) << v5;
          if ((v70[0] & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
          {
            v12 = 0;
            goto LABEL_16;
          }
        }

        v12 = [v3 hasError] ? 0 : v7;
LABEL_16:
        v13 = [v3 hasError];
        v14 = (v12 & 7) == 4 ? 1 : v13;
        if (v14)
        {
          break;
        }

        v15 = v12 >> 3;
        if ((v12 >> 3) <= 5)
        {
          if (v15 <= 2)
          {
            if (v15 != 1)
            {
              if (v15 != 2)
              {
LABEL_95:
                if (!PBReaderSkipValueWithTag())
                {
                  goto LABEL_126;
                }

                goto LABEL_124;
              }

              *(a1 + 88) |= 4u;
              v70[0] = 0;
              v37 = objc_msgSend_position(v3);
              if (v37 + 8 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3), v38 + 8 <= [v3 length]))
              {
                v61 = [v3 data];
                [v61 getBytes:v70 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v62 = v70[0];
              v63 = 32;
              goto LABEL_123;
            }

            v70[0] = 0;
            v70[1] = 0;
            if (!PBReaderPlaceMark() || (GEOSessionIDReadAllFrom((a1 + 8), v3) & 1) == 0)
            {
              goto LABEL_126;
            }

            PBReaderRecallMark();
            *(a1 + 88) |= 1u;
          }

          else
          {
            if (v15 == 3)
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              *(a1 + 88) |= 0x40u;
              while (1)
              {
                LOBYTE(v70[0]) = 0;
                v48 = objc_msgSend_position(v3, v70[0]);
                if (v48 + 1 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3), v49 + 1 <= [v3 length]))
                {
                  v50 = [v3 data];
                  [v50 getBytes:v70 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v47 |= (v70[0] & 0x7F) << v45;
                if ((v70[0] & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v11 = v46++ >= 9;
                if (v11)
                {
                  v36 = 0;
                  goto LABEL_104;
                }
              }

              if ([v3 hasError])
              {
                v36 = 0;
              }

              else
              {
                v36 = v47;
              }

LABEL_104:
              v59 = 72;
LABEL_111:
              *(a1 + v59) = v36;
              goto LABEL_124;
            }

            if (v15 == 4)
            {
              *(a1 + 88) |= 8u;
              v70[0] = 0;
              v39 = objc_msgSend_position(v3);
              if (v39 + 8 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3), v40 + 8 <= [v3 length]))
              {
                v64 = [v3 data];
                [v64 getBytes:v70 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v62 = v70[0];
              v63 = 40;
              goto LABEL_123;
            }

            if (v15 != 5)
            {
              goto LABEL_95;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 88) |= 0x80u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v26 = objc_msgSend_position(v3, v70[0]);
              if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
              {
                v28 = [v3 data];
                [v28 getBytes:v70 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v25 |= (v70[0] & 0x7F) << v23;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_100;
              }
            }

            if ([v3 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_100:
            *(a1 + 80) = v29;
          }
        }

        else
        {
          if (v15 > 8)
          {
            if (v15 == 9)
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              *(a1 + 88) |= 0x100u;
              while (1)
              {
                LOBYTE(v70[0]) = 0;
                v56 = objc_msgSend_position(v3, v70[0]);
                if (v56 + 1 >= objc_msgSend_position(v3) && (v57 = objc_msgSend_position(v3), v57 + 1 <= [v3 length]))
                {
                  v58 = [v3 data];
                  [v58 getBytes:v70 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v55 |= (v70[0] & 0x7F) << v53;
                if ((v70[0] & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                v11 = v54++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_113;
                }
              }

              v22 = (v55 != 0) & ~[v3 hasError];
LABEL_113:
              v60 = 84;
LABEL_114:
              *(a1 + v60) = v22;
              goto LABEL_124;
            }

            if (v15 == 10)
            {
              *(a1 + 88) |= 0x20u;
              v70[0] = 0;
              v43 = objc_msgSend_position(v3);
              if (v43 + 8 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3), v44 + 8 <= [v3 length]))
              {
                v66 = [v3 data];
                [v66 getBytes:v70 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v62 = v70[0];
              v63 = 64;
              goto LABEL_123;
            }

            if (v15 != 11)
            {
              goto LABEL_95;
            }

            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 88) |= 0x10u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v33 = objc_msgSend_position(v3, v70[0]);
              if (v33 + 1 >= objc_msgSend_position(v3) && (v34 = objc_msgSend_position(v3), v34 + 1 <= [v3 length]))
              {
                v35 = [v3 data];
                [v35 getBytes:v70 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v32 |= (v70[0] & 0x7F) << v30;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_110;
              }
            }

            if ([v3 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v32;
            }

LABEL_110:
            v59 = 56;
            goto LABEL_111;
          }

          if (v15 != 6)
          {
            if (v15 == 7)
            {
              *(a1 + 88) |= 2u;
              v70[0] = 0;
              v41 = objc_msgSend_position(v3);
              if (v41 + 8 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3), v42 + 8 <= [v3 length]))
              {
                v65 = [v3 data];
                [v65 getBytes:v70 range:{objc_msgSend_position(v3), 8}];

                [v3 setPosition:objc_msgSend_position(v3) + 8];
              }

              else
              {
                [v3 _setError];
              }

              v62 = v70[0];
              v63 = 24;
LABEL_123:
              *(a1 + v63) = v62;
              goto LABEL_124;
            }

            if (v15 != 8)
            {
              goto LABEL_95;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 88) |= 0x200u;
            while (1)
            {
              LOBYTE(v70[0]) = 0;
              v19 = objc_msgSend_position(v3, v70[0]);
              if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
              {
                v21 = [v3 data];
                [v21 getBytes:v70 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v18 |= (v70[0] & 0x7F) << v16;
              if ((v70[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_106;
              }
            }

            v22 = (v18 != 0) & ~[v3 hasError];
LABEL_106:
            v60 = 85;
            goto LABEL_114;
          }

          v51 = PBReaderReadString();
          v52 = *(a1 + 48);
          *(a1 + 48) = v51;
        }

LABEL_124:
        v67 = objc_msgSend_position(v3);
      }

      while (v67 < [v3 length]);
    }

    v68 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_126:
    v68 = 0;
  }

  objc_sync_exit(v3);

  return v68;
}

void sub_18664D1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GEOBatchLogMessageType(uint64_t a1)
{
  if ((WORD2(a1) - 1) > 0x13u)
  {
    return 0;
  }

  else
  {
    return dword_188034968[(WORD2(a1) - 1)];
  }
}

uint64_t CoreTimeLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreTimeLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreTimeLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E705DD60;
    v5 = 0;
    CoreTimeLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreTimeLibraryCore_frameworkLibrary;
    if (CoreTimeLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np("%s", v3[0]);
    }

    free(v1);
    return v0;
  }

  return CoreTimeLibraryCore_frameworkLibrary;
}

void __GEOGetReferenceTimeManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "ReferenceTimeManager");
  v1 = GEOGetReferenceTimeManagerLog_log;
  GEOGetReferenceTimeManagerLog_log = v0;
}

void sub_1866502D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void GEOOnce(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  if ((*(a1 + 4) & 1) == 0)
  {
    *(a1 + 4) = 1;
    v3[2]();
  }

  os_unfair_lock_unlock(a1);
}

void sub_1866509F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GEOResourceManifestURLForConfiguration(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = objc_alloc_init(GEOResourceManifestConfiguration);
  }

  v2 = GEOResourceManifestURLTokenQueryItems(v1);
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(GEOResourceManifestConfiguration *)v1 urlTemplate];
  v5 = [v3 _geo_URLWithString:v4 tokenSubstitutions:v2];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AF20] componentsWithURL:v5 resolvingAgainstBaseURL:1];
    v7 = _getValue(260, &GeoServicesConfig_ResourceManifestRequestToken_Metadata, 1, 0, 0, 0);
    if ([v7 length])
    {
      Current = CFAbsoluteTimeGetCurrent();
      v9 = Current - GEOConfigGetDouble(261, &GeoServicesConfig_ResourceManifestRequestTokenTimestamp_Metadata);
      if (v9 < GEOConfigGetDouble(356, &GeoServicesConfig_ResourceManifestRequestTokenExpirationInterval_Metadata))
      {
        v10 = [MEMORY[0x1E695DF70] array];
        v11 = [MEMORY[0x1E696AF60] queryItemWithName:@"v" value:v7];
        [v10 addObject:v11];

LABEL_12:
        if (GEOConfigGetBOOL(202, &GeoServicesConfig_ManifestSupportsAdditionalMarkets_Metadata))
        {
          v14 = +[GEOAdditionalEnabledMarkets additionalEnabledMarkets];
          v15 = [v14 queryItems];

          if ([v15 count])
          {
            if (!v10)
            {
              v10 = [MEMORY[0x1E695DF70] array];
            }

            [v10 addObjectsFromArray:v15];
          }
        }

        if ([v10 count])
        {
          v16 = [v6 queryItems];
          v17 = [v16 count];

          if (v17)
          {
            v18 = [v6 queryItems];
            v19 = [v18 mutableCopy];

            [v19 addObjectsFromArray:v10];
            [v6 setQueryItems:v19];
          }

          else
          {
            [v6 setQueryItems:v10];
          }
        }

        v13 = [v6 URL];

        goto LABEL_23;
      }

      _setValue(260, &GeoServicesConfig_ResourceManifestRequestToken_Metadata, 0, 0, 0);
      _setValue(261, &GeoServicesConfig_ResourceManifestRequestTokenTimestamp_Metadata, 0, 0, 0);
    }

    v10 = 0;
    goto LABEL_12;
  }

  v12 = GEOFindOrCreateLog("com.apple.GeoServices", "ResourceManifest");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_18660C000, v12, OS_LOG_TYPE_ERROR, "Manifest URL value is not a valid URL", v21, 2u);
  }

  v13 = 0;
LABEL_23:

  return v13;
}

id GEOResourceManifestURLTokenQueryItems(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v1 = objc_alloc_init(GEOResourceManifestConfiguration);
  }

  v2 = [(GEOResourceManifestConfiguration *)v1 manifestDictionaryRepresentation];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = MEMORY[0x1E696AF60];
        v11 = [v4 objectForKeyedSubscript:{v9, v19}];
        v12 = [v10 queryItemWithName:v9 value:v11];

        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&__block_literal_global_65615];
  v13 = [MEMORY[0x1E695DF90] dictionary];
  [v13 setObject:v3 forKeyedSubscript:@"%{DEVICE_QUERY}"];
  v14 = MEMORY[0x1E696AF60];
  v15 = [(GEOResourceManifestConfiguration *)v1 environment];
  v16 = [v14 queryItemWithName:@"environment" value:v15];

  if (v16)
  {
    v23 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [v13 setObject:v17 forKeyedSubscript:@"%{ENV_QUERY}"];
  }

  return v13;
}

uint64_t __GEOResourceManifestURLTokenQueryItems_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

id GEOGetReferenceTimeManagerLog()
{
  if (GEOGetReferenceTimeManagerLog_onceToken != -1)
  {
    dispatch_once(&GEOGetReferenceTimeManagerLog_onceToken, &__block_literal_global_180);
  }

  v1 = GEOGetReferenceTimeManagerLog_log;

  return v1;
}

void *GEOResourceManifestDownloadReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOResourceManifestDownloadReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 56));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 48) = objc_msgSend_position(v8);
  *(a1 + 52) = [v8 length];
  if (a3)
  {
    v9 = &GEOResourceManifestDownloadReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOResourceManifestDownloadReadAllFrom_initialTag;
  }

  Specified = GEOResourceManifestDownloadReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 40) readAll:1];
    [*(a1 + 32) readAll:1];
    [*(a1 + 24) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOResourceManifestDownloadReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 56));
  [v3 setLength:*(a1 + 52)];
  [v3 seekToOffset:*(a1 + 48)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 60) >> 2) & 1) + (*(a1 + 60) & 1) + ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 1) & 1);
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

  v13 = v11 > 1;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v44) = v14;
  HIDWORD(v44) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v45 = (v16 == 0) | v15;
  v46 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v44);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_77:
      v26 = 1;
      goto LABEL_80;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v47) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v47 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v47 & 0x7F) << v18;
      if ((v47 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      if (v19++ >= 9)
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
      goto LABEL_80;
    }

    v27 = v20 >> 3;
    v28 = v46;
    if ((v45 & 1) == 0)
    {
      v29 = v16;
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
      break;
    }

    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_67;
      }

      if ((*(a1 + 60) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_79;
        }

        v38 = *(a1 + 60) << 6;
LABEL_75:
        v6 += v38 >> 7;
        goto LABEL_76;
      }

      v47 = 0;
      v48 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_79;
      }

      v33 = objc_alloc_init(GEODownloadMetadata);
      if (!GEODownloadMetadataReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_78;
      }

      PBReaderRecallMark();
      v34 = 24;
      goto LABEL_60;
    }

    if (v27 == 1)
    {
      if (!v28)
      {
        goto LABEL_67;
      }

      if ((*(a1 + 60) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_79;
        }

        v38 = 16 * *(a1 + 60);
        goto LABEL_75;
      }

      v47 = 0;
      v48 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_79;
      }

      v33 = objc_alloc_init(GEOResources);
      if (!GEOResourcesReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_78;
      }

      PBReaderRecallMark();
      v34 = 40;
      goto LABEL_60;
    }

    if (v44 & 1) == 0 || (*(a1 + 60))
    {
LABEL_67:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    }

    if (!*(a1 + 16))
    {
      v36 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v37 = *(a1 + 16);
      *(a1 + 16) = v36;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_81;
    }

LABEL_76:
    if (!(BYTE4(v44) & 1 | (v6 != 0)))
    {
      goto LABEL_77;
    }
  }

  if (!v28)
  {
    goto LABEL_67;
  }

  if ((*(a1 + 60) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_79;
    }

    v38 = 32 * *(a1 + 60);
    goto LABEL_75;
  }

  v47 = 0;
  v48 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_79;
  }

  v33 = objc_alloc_init(GEOResources);
  if (GEOResourcesReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 32;
LABEL_60:
    v35 = *(a1 + v34);
    *(a1 + v34) = v33;

    --v6;
    goto LABEL_76;
  }

LABEL_78:

LABEL_79:
  v26 = 0;
LABEL_80:
  if ((v44 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_81:
  *(a1 + 60) |= 1u;
LABEL_82:
  if (v46 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 60) |= 8u;
    *(a1 + 60) |= 4u;
    *(a1 + 60) |= 2u;
    goto LABEL_94;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v40 = *v16++;
        v39 = v40;
        v41 = v40 == 1;
        if (v40 > 1)
        {
          break;
        }

        if (v41)
        {
          LOBYTE(v39) = 8;
LABEL_92:
          *(a1 + 60) |= v39;
          continue;
        }

        if (!v39)
        {
          goto LABEL_94;
        }
      }

      if (v39 != 2)
      {
        if (v39 != 3)
        {
          continue;
        }

        LOBYTE(v39) = 4;
      }

      goto LABEL_92;
    }
  }

LABEL_94:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v46)
  {
    v42 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void GEOConfigSetBOOL(int a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:?];
  _setValue(a1, a2, v4, 1, 0);
}

uint64_t GEOSessionIDWriteTo(uint64_t *a1, uint64_t a2)
{
  PBDataWriterWriteUint64Field();

  return PBDataWriterWriteUint64Field();
}

uint64_t GEOVersionManifestReadAllFrom(void *a1, void *a2)
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
          LOBYTE(v20[0]) = 0;
          v8 = objc_msgSend_position(v3, v20[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v20 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v20[0] & 0x7F) << v5;
          if ((v20[0] & 0x80) == 0)
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
          v20[0] = 0;
          v20[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_29;
          }

          v14 = objc_alloc_init(GEOServiceVersion);
          if (!GEOServiceVersionReadAllFrom(v14, v3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [a1 addServiceVersion:v14];
        }

        else
        {
          if (!a1[1])
          {
            v15 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v16 = a1[1];
            a1[1] = v15;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_29;
          }
        }

        v17 = objc_msgSend_position(v3);
      }

      while (v17 < [v3 length]);
    }

    v18 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_29:
    v18 = 0;
  }

  objc_sync_exit(v3);

  return v18;
}

uint64_t GEOServiceVersionReadAllFrom(uint64_t a1, void *a2)
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
          v28 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v28 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v28 & 0x7F) << v5;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
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

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v29 = 0;
            v19 = objc_msgSend_position(v3);
            if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
            {
              v21 = [v3 data];
              [v21 getBytes:&v29 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v18 |= (v29 & 0x7F) << v16;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_40;
            }
          }

          if ([v3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_40:
          *(a1 + 24) = v22;
        }

        else if (v14 == 1)
        {
          v15 = PBReaderReadString();
          if (v15)
          {
            [(GEOServiceVersion *)a1 addVersionDomain:v15];
          }
        }

        else
        {
          if (!*(a1 + 8))
          {
            v23 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v24 = *(a1 + 8);
            *(a1 + 8) = v23;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_43;
          }
        }

        v25 = objc_msgSend_position(v3);
      }

      while (v25 < [v3 length]);
    }

    v26 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_43:
    v26 = 0;
  }

  objc_sync_exit(v3);

  return v26;
}

void *GEOResourceFilterReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOResourceFilterReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 80));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 72) = objc_msgSend_position(v8);
  *(a1 + 76) = [v8 length];
  if (a3)
  {
    v9 = &GEOResourceFilterReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOResourceFilterReadAllFrom_initialTag;
  }

  Specified = GEOResourceFilterReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOResourceFilterReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 80));
  [v3 setLength:*(a1 + 76)];
  [v3 seekToOffset:*(a1 + 72)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = ((*(a1 + 84) >> 2) & 1) + (*(a1 + 84) & 1) + ((*(a1 + 84) >> 1) & 1);
  while (1)
  {
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
      goto LABEL_12;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v10;
LABEL_12:
    ++v8;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 != 0;
  v66 = v12 & ~v9 | v6;
  v13 = v9 | v12;
  if ((v9 | v12 | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = objc_msgSend_position(v3);
  if (v15 < [v3 length])
  {
    v67 = (v8 != 0) | v13 | v6;
    do
    {
      if ([v3 hasError])
      {
        break;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        LOBYTE(v68) = 0;
        v19 = objc_msgSend_position(v3) + 1;
        if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
        {
          v21 = [v3 data];
          [v21 getBytes:&v68 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v18 |= (v68 & 0x7F) << v16;
        if ((v68 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v22 = v17++ >= 9;
        if (v22)
        {
          v18 = 0;
          goto LABEL_30;
        }
      }

      if ([v3 hasError])
      {
        v18 = 0;
      }

LABEL_30:
      v23 = [v3 hasError];
      v24 = 1;
      if (v23)
      {
        goto LABEL_107;
      }

      v25 = v18 & 7;
      if (v25 == 4)
      {
        goto LABEL_107;
      }

      v26 = v18 >> 3;
      v27 = v13;
      if (!((v14 == 0) | v13 & 1))
      {
        v28 = v14;
        do
        {
          v30 = *v28++;
          v29 = v30;
          v27 = v30 != 0;
          if (v30)
          {
            v31 = v29 == v26;
          }

          else
          {
            v31 = 1;
          }
        }

        while (!v31);
      }

      if (v26 == 2)
      {
        if (v27 && (*(a1 + 84) & 4) == 0)
        {
          if (v25 == 2)
          {
            v68 = 0;
            v69 = 0;
            v24 = PBReaderPlaceMark();
            if (!v24)
            {
              goto LABEL_107;
            }

            while (1)
            {
              v39 = objc_msgSend_position(v3);
              if (v39 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
              {
                break;
              }

              v40 = 0;
              v41 = 0;
              v42 = 0;
              while (1)
              {
                v70 = 0;
                v43 = objc_msgSend_position(v3) + 1;
                if (v43 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3) + 1, v44 <= [v3 length]))
                {
                  v45 = [v3 data];
                  [v45 getBytes:&v70 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v42 |= (v70 & 0x7F) << v40;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v40 += 7;
                v22 = v41++ >= 9;
                if (v22)
                {
                  goto LABEL_74;
                }
              }

              [v3 hasError];
LABEL_74:
              PBRepeatedInt32Add();
            }

LABEL_83:
            PBReaderRecallMark();
LABEL_104:
            if ((v67 & 1) == 0)
            {
              break;
            }

            goto LABEL_105;
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          while (1)
          {
            LOBYTE(v68) = 0;
            v57 = objc_msgSend_position(v3) + 1;
            if (v57 >= objc_msgSend_position(v3) && (v58 = objc_msgSend_position(v3) + 1, v58 <= [v3 length]))
            {
              v59 = [v3 data];
              [v59 getBytes:&v68 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v56 |= (v68 & 0x7F) << v54;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v22 = v55++ >= 9;
            if (v22)
            {
              goto LABEL_103;
            }
          }

LABEL_102:
          [v3 hasError];
LABEL_103:
          PBRepeatedInt32Add();
          goto LABEL_104;
        }
      }

      else if (v26 == 1)
      {
        if (v27 && (*(a1 + 84) & 2) == 0)
        {
          if (v25 == 2)
          {
            v68 = 0;
            v69 = 0;
            v24 = PBReaderPlaceMark();
            if (!v24)
            {
              goto LABEL_107;
            }

            while (1)
            {
              v32 = objc_msgSend_position(v3);
              if (v32 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
              {
                goto LABEL_83;
              }

              v33 = 0;
              v34 = 0;
              v35 = 0;
              while (1)
              {
                v70 = 0;
                v36 = objc_msgSend_position(v3) + 1;
                if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
                {
                  v38 = [v3 data];
                  [v38 getBytes:&v70 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v35 |= (v70 & 0x7F) << v33;
                if ((v70 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v22 = v34++ >= 9;
                if (v22)
                {
                  goto LABEL_57;
                }
              }

              [v3 hasError];
LABEL_57:
              PBRepeatedInt32Add();
            }
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          while (1)
          {
            LOBYTE(v68) = 0;
            v51 = objc_msgSend_position(v3) + 1;
            if (v51 >= objc_msgSend_position(v3) && (v52 = objc_msgSend_position(v3) + 1, v52 <= [v3 length]))
            {
              v53 = [v3 data];
              [v53 getBytes:&v68 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v50 |= (v68 & 0x7F) << v48;
            if ((v68 & 0x80) == 0)
            {
              goto LABEL_102;
            }

            v48 += 7;
            v22 = v49++ >= 9;
            if (v22)
            {
              goto LABEL_103;
            }
          }
        }
      }

      else if ((v66 & 1) != 0 && (*(a1 + 84) & 1) == 0)
      {
        if (!*(a1 + 16))
        {
          v46 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v47 = *(a1 + 16);
          *(a1 + 16) = v46;
        }

        v24 = PBUnknownFieldAdd();
        if (!v24)
        {
          goto LABEL_108;
        }

        goto LABEL_104;
      }

      v24 = PBReaderSkipValueWithTag();
      if ((v24 & v67 & 1) == 0)
      {
        goto LABEL_107;
      }

LABEL_105:
      v60 = objc_msgSend_position(v3);
    }

    while (v60 < [v3 length]);
  }

  v24 = 1;
LABEL_107:
  if (v66)
  {
LABEL_108:
    *(a1 + 84) |= 1u;
  }

  if (!(v13 & 1 | ((v24 & 1) == 0)))
  {
    if (!v14)
    {
      goto LABEL_119;
    }

    while (1)
    {
      while (1)
      {
        v62 = *v14++;
        v61 = v62;
        if (v62 != 1)
        {
          break;
        }

        v63 = 2;
LABEL_118:
        *(a1 + 84) |= v63;
      }

      if (v61 == 2)
      {
        v63 = 4;
        goto LABEL_118;
      }

      if (!v61)
      {
        goto LABEL_119;
      }
    }
  }

  *(a1 + 84) |= 2u;
  *(a1 + 84) |= 4u;
LABEL_119:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_123;
  }

  v3 = 0;
  if (v13)
  {
LABEL_123:
    v64 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOActiveResourceFilterReadAllFrom(uint64_t a1, void *a2)
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
          v41 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v41 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v41 & 0x7F) << v5;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
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

        v14 = v7 >> 3;
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            [a1 resetFilter];
            v28 = 0;
            v29 = 0;
            v30 = 0;
            while (1)
            {
              v42 = 0;
              v31 = objc_msgSend_position(v3);
              if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
              {
                v33 = [v3 data];
                [v33 getBytes:&v42 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v30 |= (v42 & 0x7F) << v28;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v34 = 0;
                goto LABEL_58;
              }
            }

            if ([v3 hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v30;
            }

LABEL_58:
            *(a1 + 36) = v34;
            v35 = 2;
            goto LABEL_59;
          }

          if (v14 == 4)
          {
            [a1 resetFilter];
            v22 = PBReaderReadString();
            v23 = *(a1 + 24);
            *(a1 + 24) = v22;

            if (*(a1 + 24))
            {
              *(a1 + 48) = 3;
            }

            goto LABEL_62;
          }
        }

        else
        {
          if (v14 == 1)
          {
            *(a1 + 40) |= 1u;
            v40 = 0;
            v26 = objc_msgSend_position(v3);
            if (v26 + 8 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 8 <= [v3 length]))
            {
              v36 = [v3 data];
              [v36 getBytes:&v40 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            *(a1 + 16) = v40;
            goto LABEL_62;
          }

          if (v14 == 2)
          {
            [a1 resetFilter];
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              v43 = 0;
              v18 = objc_msgSend_position(v3);
              if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
              {
                v20 = [v3 data];
                [v20 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v17 |= (v43 & 0x7F) << v15;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_54;
              }
            }

            if ([v3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_54:
            *(a1 + 32) = v21;
            v35 = 1;
LABEL_59:
            *(a1 + 48) = v35;
            goto LABEL_62;
          }
        }

        if (!*(a1 + 8))
        {
          v24 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v25 = *(a1 + 8);
          *(a1 + 8) = v24;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_64;
        }

LABEL_62:
        v37 = objc_msgSend_position(v3);
      }

      while (v37 < [v3 length]);
    }

    v38 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_64:
    v38 = 0;
  }

  objc_sync_exit(v3);

  return v38;
}

void *GEORegionalResourceSetReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORegionalResourceSetReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 64));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 56) = objc_msgSend_position(v8);
  *(a1 + 60) = [v8 length];
  if (a3)
  {
    v9 = &GEORegionalResourceSetReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORegionalResourceSetReadAllFrom_initialTag;
  }

  Specified = GEORegionalResourceSetReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORegionalResourceSetCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEORegionalResourceSetReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 64));
  [v3 setLength:*(a1 + 60)];
  [v3 seekToOffset:*(a1 + 56)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 68) >> 2) & 1) + (*(a1 + 68) & 1) + ((*(a1 + 68) >> 1) & 1);
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
  LODWORD(v42) = v13 & ~v10 | v8;
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
  if (v17 < [v3 length])
  {
    HIDWORD(v42) = v16 | v8 | v14;
    do
    {
      if ([v3 hasError])
      {
        break;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v21 = objc_msgSend_position(v3) + 1;
        if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
        {
          v23 = [v3 data];
          [v23 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v20 |= (v43 & 0x7F) << v18;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ >= 9)
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
        goto LABEL_64;
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

      if (v27 == 2)
      {
        if (!v28 || (*(a1 + 68) & 4) != 0)
        {
LABEL_61:
          v26 = PBReaderSkipValueWithTag();
          if ((v26 & HIDWORD(v42) & 1) == 0)
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        v43 = 0;
        v44 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_83;
        }

        v33 = objc_alloc_init(GEOResource);
        if (!GEOResourceReadAllFrom(v33, v3, v9 & 1))
        {

LABEL_83:
          v26 = 0;
          goto LABEL_64;
        }

        PBReaderRecallMark();
        [(GEORegionalResourceSet *)a1 _addNoFlagsResource:v33];
      }

      else if (v27 == 1)
      {
        if (!v28 || (*(a1 + 68) & 2) != 0)
        {
          goto LABEL_61;
        }

        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_83;
        }

        [(GEORegionalResourceSet *)a1 _reserveRegions:?];
        if ((GEOTileSetRegionReadAllFrom((*(a1 + 24) + 24 * *(a1 + 32)), v3) & 1) == 0)
        {
          goto LABEL_83;
        }

        PBReaderRecallMark();
        ++*(a1 + 32);
      }

      else
      {
        if (v42 & 1) == 0 || (*(a1 + 68))
        {
          goto LABEL_61;
        }

        if (!*(a1 + 16))
        {
          v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v35 = *(a1 + 16);
          *(a1 + 16) = v34;
        }

        v26 = PBUnknownFieldAdd();
        if (!v26)
        {
          goto LABEL_65;
        }
      }

      if ((v42 & 0x100000000) == 0)
      {
        break;
      }

LABEL_62:
      v36 = objc_msgSend_position(v3);
    }

    while (v36 < [v3 length]);
  }

  v26 = 1;
LABEL_64:
  if (v42)
  {
LABEL_65:
    *(a1 + 68) |= 1u;
  }

  if (!(v14 & 1 | ((v26 & 1) == 0)))
  {
    if (!v15)
    {
      goto LABEL_76;
    }

    while (1)
    {
      while (1)
      {
        v38 = *v15++;
        v37 = v38;
        if (v38 != 1)
        {
          break;
        }

        v39 = 2;
LABEL_75:
        *(a1 + 68) |= v39;
      }

      if (v37 == 2)
      {
        v39 = 4;
        goto LABEL_75;
      }

      if (!v37)
      {
        goto LABEL_76;
      }
    }
  }

  *(a1 + 68) |= 2u;
  *(a1 + 68) |= 4u;
LABEL_76:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_80;
  }

  v3 = 0;
  if (v14)
  {
LABEL_80:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t _GEOURLInfoSetCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [a1[49] readAll:1];
  [a1[51] readAll:1];
  [a1[23] readAll:1];
  [a1[26] readAll:1];
  [a1[18] readAll:1];
  [a1[52] readAll:1];
  [a1[4] readAll:1];
  [a1[6] readAll:1];
  [a1[39] readAll:1];
  [a1[46] readAll:1];
  [a1[45] readAll:1];
  [a1[50] readAll:1];
  [a1[43] readAll:1];
  [a1[12] readAll:1];
  [a1[24] readAll:1];
  [a1[44] readAll:1];
  [a1[3] readAll:1];
  [a1[22] readAll:1];
  [a1[30] readAll:1];
  [a1[53] readAll:1];
  [a1[48] readAll:1];
  [a1[19] readAll:1];
  [a1[42] readAll:1];
  [a1[31] readAll:1];
  [a1[15] readAll:1];
  [a1[21] readAll:1];
  [a1[16] readAll:1];
  [a1[57] readAll:1];
  [a1[33] readAll:1];
  [a1[13] readAll:1];
  [a1[59] readAll:1];
  [a1[28] readAll:1];
  [a1[27] readAll:1];
  [a1[29] readAll:1];
  [a1[8] readAll:1];
  [a1[9] readAll:1];
  [a1[11] readAll:1];
  [a1[10] readAll:1];
  [a1[56] readAll:1];
  [a1[58] readAll:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = a1[7];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) readAll:{1, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [a1[54] readAll:1];
  [a1[14] readAll:1];
  [a1[5] readAll:1];
  [a1[41] readAll:1];
  [a1[25] readAll:1];
  [a1[55] readAll:1];
  [a1[17] readAll:1];
  [a1[40] readAll:1];
  [a1[38] readAll:1];
  [a1[47] readAll:1];
  [a1[34] readAll:1];
  [a1[35] readAll:1];
  [a1[37] readAll:1];
  [a1[36] readAll:1];
  [a1[20] readAll:1];
  return [a1[32] readAll:1];
}

void *GEOLocalizedStringReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOLocalizedStringReadAllFrom can only be called once per object"];
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
    v9 = &GEOLocalizedStringReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOLocalizedStringReadAllFrom_initialTag;
  }

  Specified = GEOLocalizedStringReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOLocalizedStringReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 52) >> 2) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 1) & 1);
  while (1)
  {
    v11 = a3[v9];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      goto LABEL_10;
    }

    if (v11 == -3)
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v9;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
LABEL_10:
    v7 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v10 != 0;
  v13 = v6 | v12;
  LODWORD(v42) = v12 & ~v6 | v7;
  if (((v6 | v12) | v8))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  HIDWORD(v42) = v13 | v7;
  while (1)
  {
    v15 = objc_msgSend_position(v3, v42);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_63:
      v24 = 1;
      goto LABEL_64;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v43 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v43 & 0x7F) << v16;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_31;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_31:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_64;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 == 3)
    {
      break;
    }

    if (v25 == 1)
    {
      if (!v26)
      {
        goto LABEL_55;
      }

      if ((*(a1 + 52) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_82;
        }

        v36 = *(a1 + 52) << 6;
        goto LABEL_61;
      }

      v31 = PBReaderReadString();
      v32 = 24;
      goto LABEL_48;
    }

    if (v42 & 1) == 0 || (*(a1 + 52))
    {
LABEL_55:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_62;
    }

    if (!*(a1 + 16))
    {
      v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      goto LABEL_65;
    }

LABEL_62:
    if (!(BYTE4(v42) & 1 | (v9 != 0)))
    {
      goto LABEL_63;
    }
  }

  if (!v26)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 52) & 4) == 0)
  {
    v31 = PBReaderReadString();
    v32 = 32;
LABEL_48:
    v33 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v9;
    goto LABEL_62;
  }

  if (PBReaderSkipValueWithTag())
  {
    v36 = 32 * *(a1 + 52);
LABEL_61:
    v9 += v36 >> 7;
    goto LABEL_62;
  }

LABEL_82:
  v24 = 0;
LABEL_64:
  if ((v42 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_65:
  *(a1 + 52) |= 1u;
LABEL_66:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 52) |= 2u;
    *(a1 + 52) |= 4u;
    goto LABEL_76;
  }

  if (v14)
  {
    while (1)
    {
      v38 = *v14++;
      v37 = v38;
      if (v38 == 1)
      {
        break;
      }

      if (v37 == 3)
      {
        v39 = 4;
LABEL_75:
        *(a1 + 52) |= v39;
        continue;
      }

      if (!v37)
      {
        goto LABEL_76;
      }
    }

    v39 = 2;
    goto LABEL_75;
  }

LABEL_76:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_80:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_80;
    }
  }

  return v3;
}

uint64_t _GEOActiveTileGroupCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v113 = *MEMORY[0x1E69E9840];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v2 = a1[70];
  v3 = [v2 countByEnumeratingWithState:&v98 objects:v112 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v99;
    do
    {
      v6 = 0;
      do
      {
        if (*v99 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v98 + 1) + 8 * v6++) readAll:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v98 objects:v112 count:16];
    }

    while (v4);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v7 = a1[19];
  v8 = [v7 countByEnumeratingWithState:&v94 objects:v111 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v95;
    do
    {
      v11 = 0;
      do
      {
        if (*v95 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v94 + 1) + 8 * v11++) readAll:1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v94 objects:v111 count:16];
    }

    while (v9);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v12 = a1[53];
  v13 = [v12 countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v91;
    do
    {
      v16 = 0;
      do
      {
        if (*v91 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v90 + 1) + 8 * v16++) readAll:1];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v90 objects:v110 count:16];
    }

    while (v14);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v17 = a1[52];
  v18 = [v17 countByEnumeratingWithState:&v86 objects:v109 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v87;
    do
    {
      v21 = 0;
      do
      {
        if (*v87 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v86 + 1) + 8 * v21++) readAll:1];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v86 objects:v109 count:16];
    }

    while (v19);
  }

  [a1[73] readAll:1];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v22 = a1[38];
  v23 = [v22 countByEnumeratingWithState:&v82 objects:v108 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v83;
    do
    {
      v26 = 0;
      do
      {
        if (*v83 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v82 + 1) + 8 * v26++) readAll:1];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v82 objects:v108 count:16];
    }

    while (v24);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v27 = a1[14];
  v28 = [v27 countByEnumeratingWithState:&v78 objects:v107 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v79;
    do
    {
      v31 = 0;
      do
      {
        if (*v79 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v78 + 1) + 8 * v31++) readAll:1];
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v78 objects:v107 count:16];
    }

    while (v29);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v32 = a1[55];
  v33 = [v32 countByEnumeratingWithState:&v74 objects:v106 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v75;
    do
    {
      v36 = 0;
      do
      {
        if (*v75 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v74 + 1) + 8 * v36++) readAll:1];
      }

      while (v34 != v36);
      v34 = [v32 countByEnumeratingWithState:&v74 objects:v106 count:16];
    }

    while (v34);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v37 = a1[65];
  v38 = [v37 countByEnumeratingWithState:&v70 objects:v105 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v71;
    do
    {
      v41 = 0;
      do
      {
        if (*v71 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(&v70 + 1) + 8 * v41++) readAll:1];
      }

      while (v39 != v41);
      v39 = [v37 countByEnumeratingWithState:&v70 objects:v105 count:16];
    }

    while (v39);
  }

  [a1[26] readAll:1];
  [a1[72] readAll:1];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v42 = a1[42];
  v43 = [v42 countByEnumeratingWithState:&v66 objects:v104 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v67;
    do
    {
      v46 = 0;
      do
      {
        if (*v67 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v66 + 1) + 8 * v46++) readAll:1];
      }

      while (v44 != v46);
      v44 = [v42 countByEnumeratingWithState:&v66 objects:v104 count:16];
    }

    while (v44);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v47 = a1[29];
  v48 = [v47 countByEnumeratingWithState:&v62 objects:v103 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v63;
    do
    {
      v51 = 0;
      do
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [*(*(&v62 + 1) + 8 * v51++) readAll:1];
      }

      while (v49 != v51);
      v49 = [v47 countByEnumeratingWithState:&v62 objects:v103 count:16];
    }

    while (v49);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v52 = a1[32];
  v53 = [v52 countByEnumeratingWithState:&v58 objects:v102 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v59;
    do
    {
      v56 = 0;
      do
      {
        if (*v59 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [*(*(&v58 + 1) + 8 * v56++) readAll:{1, v58}];
      }

      while (v54 != v56);
      v54 = [v52 countByEnumeratingWithState:&v58 objects:v102 count:16];
    }

    while (v54);
  }

  return [a1[43] readAll:1];
}

void *GEOCountryRegionTupleReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOCountryRegionTupleReadAllFrom can only be called once per object"];
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
    v9 = &GEOCountryRegionTupleReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOCountryRegionTupleReadAllFrom_initialTag;
  }

  Specified = GEOCountryRegionTupleReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOCountryRegionTupleReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 52) >> 2) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 1) & 1);
  while (1)
  {
    v11 = a3[v9];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      goto LABEL_10;
    }

    if (v11 == -3)
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    ++v10;
LABEL_13:
    ++v9;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v6 = 1;
LABEL_10:
    v7 = 1;
    goto LABEL_13;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  v12 = v10 != 0;
  v13 = v6 | v12;
  LODWORD(v42) = v12 & ~v6 | v7;
  if (((v6 | v12) | v8))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  HIDWORD(v42) = v13 | v7;
  while (1)
  {
    v15 = objc_msgSend_position(v3, v42);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_63:
      v24 = 1;
      goto LABEL_64;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v43 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v43 & 0x7F) << v16;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
      {
        v18 = 0;
        goto LABEL_31;
      }
    }

    if ([v3 hasError])
    {
      v18 = 0;
    }

LABEL_31:
    v23 = [v3 hasError];
    v24 = 1;
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_64;
    }

    v25 = v18 >> 3;
    v26 = v13;
    if (!((v14 == 0) | v13 & 1))
    {
      v27 = v14;
      do
      {
        v29 = *v27++;
        v28 = v29;
        v26 = v29 != 0;
        if (v29)
        {
          v30 = v28 == v25;
        }

        else
        {
          v30 = 1;
        }
      }

      while (!v30);
    }

    if (v25 == 2)
    {
      break;
    }

    if (v25 == 1)
    {
      if (!v26)
      {
        goto LABEL_55;
      }

      if ((*(a1 + 52) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_82;
        }

        v36 = *(a1 + 52) << 6;
        goto LABEL_61;
      }

      v31 = PBReaderReadString();
      v32 = 24;
      goto LABEL_48;
    }

    if (v42 & 1) == 0 || (*(a1 + 52))
    {
LABEL_55:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_62;
    }

    if (!*(a1 + 16))
    {
      v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      goto LABEL_65;
    }

LABEL_62:
    if (!(BYTE4(v42) & 1 | (v9 != 0)))
    {
      goto LABEL_63;
    }
  }

  if (!v26)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 52) & 4) == 0)
  {
    v31 = PBReaderReadString();
    v32 = 32;
LABEL_48:
    v33 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v9;
    goto LABEL_62;
  }

  if (PBReaderSkipValueWithTag())
  {
    v36 = 32 * *(a1 + 52);
LABEL_61:
    v9 += v36 >> 7;
    goto LABEL_62;
  }

LABEL_82:
  v24 = 0;
LABEL_64:
  if ((v42 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_65:
  *(a1 + 52) |= 1u;
LABEL_66:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 52) |= 2u;
    *(a1 + 52) |= 4u;
    goto LABEL_76;
  }

  if (v14)
  {
    while (1)
    {
      v38 = *v14++;
      v37 = v38;
      if (v38 == 1)
      {
        break;
      }

      if (v37 == 2)
      {
        v39 = 4;
LABEL_75:
        *(a1 + 52) |= v39;
        continue;
      }

      if (!v37)
      {
        goto LABEL_76;
      }
    }

    v39 = 2;
    goto LABEL_75;
  }

LABEL_76:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_80:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_80;
    }
  }

  return v3;
}

void _GEOActiveTileSetCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 80);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) readAll:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 56);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) readAll:{1, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

uint64_t GEOSentinelTileReadAllFrom(uint64_t a1, void *a2)
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
          v29 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v29 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v29 & 0x7F) << v5;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
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

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 16);
          *(a1 + 16) = v22;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v30 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v30 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v30 & 0x7F) << v15;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_38;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_38:
          *(a1 + 24) = v21;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v24 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v25 = *(a1 + 8);
            *(a1 + 8) = v24;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_41;
          }
        }

        v26 = objc_msgSend_position(v3);
      }

      while (v26 < [v3 length]);
    }

    v27 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_41:
    v27 = 0;
  }

  objc_sync_exit(v3);

  return v27;
}

void _GEORegionalResourceSetCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 48);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) readAll:{1, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

uint64_t GEOURLInfoReadAllFrom(uint64_t a1, void *a2)
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
          v43 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v43 & 0x7F) << v5;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
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

        v14 = v7 >> 3;
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v45 = 0;
              v36 = objc_msgSend_position(v3);
              if (v36 + 1 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3), v37 + 1 <= [v3 length]))
              {
                v38 = [v3 data];
                [v38 getBytes:&v45 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v35 |= (v45 & 0x7F) << v33;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_63;
              }
            }

            v21 = (v35 != 0) & ~[v3 hasError];
LABEL_63:
            v39 = 28;
            goto LABEL_64;
          }

          if (v14 == 4)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v44 = 0;
              v25 = objc_msgSend_position(v3);
              if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
              {
                v27 = [v3 data];
                [v27 getBytes:&v44 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v24 |= (v44 & 0x7F) << v22;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_61;
              }
            }

            if ([v3 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_61:
            *(a1 + 24) = v28;
            goto LABEL_65;
          }
        }

        else
        {
          if (v14 == 1)
          {
            v31 = PBReaderReadString();
            v32 = *(a1 + 16);
            *(a1 + 16) = v31;

            goto LABEL_65;
          }

          if (v14 == 2)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 32) |= 4u;
            while (1)
            {
              v46 = 0;
              v18 = objc_msgSend_position(v3);
              if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
              {
                v20 = [v3 data];
                [v20 getBytes:&v46 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v17 |= (v46 & 0x7F) << v15;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_57;
              }
            }

            v21 = (v17 != 0) & ~[v3 hasError];
LABEL_57:
            v39 = 29;
LABEL_64:
            *(a1 + v39) = v21;
            goto LABEL_65;
          }
        }

        if (!*(a1 + 8))
        {
          v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v30 = *(a1 + 8);
          *(a1 + 8) = v29;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_67;
        }

LABEL_65:
        v40 = objc_msgSend_position(v3);
      }

      while (v40 < [v3 length]);
    }

    v41 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_67:
    v41 = 0;
  }

  objc_sync_exit(v3);

  return v41;
}

uint64_t GEODataSetDescriptionReadAllFrom(uint64_t a1, void *a2)
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
          v29 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v29 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v29 & 0x7F) << v5;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
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

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 16);
          *(a1 + 16) = v22;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v30 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v30 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v30 & 0x7F) << v15;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_38;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_38:
          *(a1 + 24) = v21;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v24 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v25 = *(a1 + 8);
            *(a1 + 8) = v24;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_41;
          }
        }

        v26 = objc_msgSend_position(v3);
      }

      while (v26 < [v3 length]);
    }

    v27 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_41:
    v27 = 0;
  }

  objc_sync_exit(v3);

  return v27;
}

uint64_t GEOOfflineMetadataReadAllFrom(uint64_t a1, void *a2)
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
          v34 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v34 & 0x7F) << v5;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v5 += 7;
          v11 = v6++ >= 9;
          if (v11)
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

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            v35 = 0;
            v25 = objc_msgSend_position(v3);
            if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
            {
              v27 = [v3 data];
              [v27 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v24 |= (v35 & 0x7F) << v22;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_50;
            }
          }

          if ([v3 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_50:
          *(a1 + 24) = v28;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v36 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v36 & 0x7F) << v15;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_46;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_46:
          *(a1 + 16) = v21;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v30 = *(a1 + 8);
            *(a1 + 8) = v29;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_53;
          }
        }

        v31 = objc_msgSend_position(v3);
      }

      while (v31 < [v3 length]);
    }

    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_53:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

uint64_t GEODisplayStringReadAllFrom(void *a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      do
      {
        if ([v5 hasError])
        {
          break;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v22[0]) = 0;
          v10 = objc_msgSend_position(v5, v22[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v22 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v22[0] & 0x7F) << v7;
          if ((v22[0] & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          if (v8++ >= 9)
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

        if ((v9 >> 3) == 1)
        {
          v22[0] = 0;
          v22[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_29;
          }

          v16 = objc_alloc_init(GEOLocalizedString);
          if (!GEOLocalizedStringReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [a1 addLocalizedStrings:v16];
        }

        else
        {
          if (!a1[1])
          {
            v17 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v18 = a1[1];
            a1[1] = v17;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_29;
          }
        }

        v19 = objc_msgSend_position(v5);
      }

      while (v19 < [v5 length]);
    }

    v20 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_29:
    v20 = 0;
  }

  objc_sync_exit(v5);

  return v20;
}

void _GEOAttributionCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 104);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) readAll:{1, v6}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void *GEOURLInfoSetReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 484))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOURLInfoSetReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 488));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 480) = objc_msgSend_position(v8);
  *(a1 + 484) = [v8 length];
  if (a3)
  {
    v9 = &GEOURLInfoSetReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOURLInfoSetReadAllFrom_initialTag;
  }

  Specified = GEOURLInfoSetReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOURLInfoSetCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 488));
  return Specified;
}

void *GEOURLInfoSetReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 488));
  [v3 setLength:*(a1 + 484)];
  [v3 seekToOffset:*(a1 + 480)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 496);
  v11 = vdupq_n_s64(v10);
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  v13 = vdupq_n_s32(v10);
  v14.i32[0] = (v10 >> 25) & 0xFFFFFF01;
  v14.i32[1] = HIBYTE(v10) & 1;
  *v11.i8 = vadd_s32(vadd_s32(vadd_s32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v11, xmmword_187FBD6B0)), 0x100000001), vand_s8(__PAIR64__(v10 >> 47, v10 >> 22), 0x100000001)), vadd_s32(vadd_s32(v14, vand_s8(__PAIR64__(HIDWORD(v10), v10 >> 17), 0x100000001)), vadd_s32(vand_s8(vshl_u32(*v13.i8, 0xFFFFFFF4FFFFFFFDLL), 0x100000001), vand_s8(vmovn_s64(vshlq_u64(v11, xmmword_187FBD6D0)), 0x100000001)))), vadd_s32(vadd_s32(vadd_s32(vand_s8(vshl_u32(*v13.i8, 0xFFFFFFF8FFFFFFFBLL), 0x100000001), vand_s8(__PAIR64__(v10 >> 10, v10 >> 42), 0x100000001)), vadd_s32(vand_s8(vshl_u32(*v13.i8, 0xFFFFFFF7FFFFFFF5), 0x100000001), vand_s8(__PAIR64__(v10 >> 55, v10 >> 23), 0x100000001))), vadd_s32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v11, xmmword_187FBD6E0)), 0x100000001), vand_s8(vshl_u32(*v13.i8, 0xFFFFFFFAFFFFFFFELL), 0x100000001)), vadd_s32(vand_s8(__PAIR64__(v10 >> 53, v10 >> 21), 0x100000001), vand_s8(vshl_u32(*v13.i8, 0xFFFFFFF3FFFFFFE3), 0x100000001))))), vadd_s32(__PAIR64__((v10 >> 18) & 1, vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v11, xmmword_187FBD660), vshlq_u64(v11, xmmword_187FBD650)), v12), vaddq_s32(vandq_s8(vshlq_u32(v13, xmmword_187FBD670), v12), vandq_s8(vshlq_u32(v13, xmmword_187FBD680), v12))), vandq_s8(vuzp1q_s32(vshlq_u64(v11, xmmword_187FBD6A0), vshlq_u64(v11, xmmword_187FBD690)), v12)))), vand_s8(vmovn_s64(vshlq_u64(v11, xmmword_187FBD6C0)), 0x100000001)));
  v15 = vadd_s32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).u32[0] + ((v10 >> 4) & 1) + ((v10 >> 40) & 1) + (BYTE3(v10) & 1) + ((v10 >> 54) & 1) + (WORD1(v10) & 1) + ((v10 >> 34) & 1) + ((v10 >> 36) & 1) + ((v10 >> 35) & 1) + ((v10 >> 19) & 1) + ((v10 >> 1) & 1) + (v10 >> 31);
  while (1)
  {
    v16 = a3[v6];
    if (v16 > -3)
    {
      break;
    }

    if (v16 == -4)
    {
      ++v15;
      v8 = 1;
      goto LABEL_12;
    }

    if (v16 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v15;
LABEL_12:
    ++v6;
  }

  if (v16 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v16)
  {
    goto LABEL_11;
  }

  v17 = v15 > 0x2D;
  v18 = v17 & ~v9 | v8;
  v19 = v9 | v17;
  LODWORD(v54) = v18;
  HIDWORD(v54) = v19 | v8;
  if ((v19 | v7))
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  v55 = (v20 == 0) | v19;
  v56 = v19;
  while (2)
  {
    v21 = objc_msgSend_position(v3, v54);
    if (v21 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_462:
      v30 = 1;
      goto LABEL_465;
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      LOBYTE(v57) = 0;
      v25 = objc_msgSend_position(v3) + 1;
      if (v25 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3) + 1, v26 <= [v3 length]))
      {
        v27 = [v3 data];
        [v27 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v24 |= (v57 & 0x7F) << v22;
      if ((v57 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v28 = v23++ >= 9;
      if (v28)
      {
        v24 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v24 = 0;
    }

LABEL_30:
    v29 = [v3 hasError];
    v30 = 1;
    if ((v29 & 1) != 0 || (v24 & 7) == 4)
    {
      goto LABEL_465;
    }

    v31 = v24 >> 3;
    v32 = v56;
    if ((v55 & 1) == 0)
    {
      v33 = v20;
      do
      {
        v35 = *v33++;
        v34 = v35;
        v32 = v35 != 0;
        if (v35)
        {
          v36 = v34 == v31;
        }

        else
        {
          v36 = 1;
        }
      }

      while (!v36);
    }

    switch(v31)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_342;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 496) |= 1uLL;
        while (1)
        {
          LOBYTE(v57) = 0;
          v40 = objc_msgSend_position(v3) + 1;
          if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
          {
            v42 = [v3 data];
            [v42 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v39 |= (v57 & 0x7F) << v37;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v28 = v38++ >= 9;
          if (v28)
          {
            v43 = 0;
LABEL_347:
            *(a1 + 492) = v43;
            goto LABEL_461;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

        goto LABEL_347;
      case 2:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 502))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 15;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 392;
        goto LABEL_335;
      case 3:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 13;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 408;
        goto LABEL_335;
      case 4:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 41;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 184;
        goto LABEL_335;
      case 5:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 38;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 208;
        goto LABEL_335;
      case 6:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 46;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 144;
        goto LABEL_335;
      case 7:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 12;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 416;
        goto LABEL_335;
      case 8:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 496) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 60;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 32;
        goto LABEL_335;
      case 9:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 496) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 58;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 48;
        goto LABEL_335;
      case 10:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 25;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 312;
        goto LABEL_335;
      case 11:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 18;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 368;
        goto LABEL_335;
      case 12:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 19;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 360;
        goto LABEL_335;
      case 13:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 14;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 400;
        goto LABEL_335;
      case 14:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 21;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 344;
        goto LABEL_335;
      case 15:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 52;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 96;
        goto LABEL_335;
      case 16:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 40;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 192;
        goto LABEL_335;
      case 17:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 20;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 352;
        goto LABEL_335;
      case 18:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 496) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 61;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 24;
        goto LABEL_335;
      case 19:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 42;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 176;
        goto LABEL_335;
      case 20:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 34;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 240;
        goto LABEL_335;
      case 21:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 11;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 424;
        goto LABEL_335;
      case 22:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 16;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 384;
        goto LABEL_335;
      case 23:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 45;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 152;
        goto LABEL_335;
      case 24:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 22;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 336;
        goto LABEL_335;
      case 25:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 33;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 248;
        goto LABEL_335;
      case 26:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 49;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 120;
        goto LABEL_335;
      case 27:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 43;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 168;
        goto LABEL_335;
      case 28:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 48;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 128;
        goto LABEL_335;
      case 29:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 503))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 7;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 456;
        goto LABEL_335;
      case 30:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 500))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 31;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 264;
        goto LABEL_335;
      case 31:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 51;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 104;
        goto LABEL_335;
      case 32:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 503) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = 32 * *(a1 + 496);
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 472;
        goto LABEL_335;
      case 33:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 36;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 224;
        goto LABEL_335;
      case 34:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 37;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 216;
        goto LABEL_335;
      case 35:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 35;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 232;
        goto LABEL_335;
      case 36:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 496) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 56;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 64;
        goto LABEL_335;
      case 37:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 497))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 55;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 72;
        goto LABEL_335;
      case 38:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 53;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 88;
        goto LABEL_335;
      case 39:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 54;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 80;
        goto LABEL_335;
      case 40:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 8;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 448;
        goto LABEL_335;
      case 41:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 503) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 6;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 464;
        goto LABEL_335;
      case 42:
        if (!v32 || (*(a1 + 496) & 0x40) != 0)
        {
          goto LABEL_342;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        [(GEOURLInfoSet *)a1 _addNoFlagsAlternateResourcesURL:v44];

        goto LABEL_461;
      case 43:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 10;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 432;
        goto LABEL_335;
      case 44:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 497) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 50;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 112;
        goto LABEL_335;
      case 45:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 496) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 59;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 40;
        goto LABEL_335;
      case 46:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 501))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 23;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 328;
        goto LABEL_335;
      case 47:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 499))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 39;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 200;
        goto LABEL_335;
      case 48:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 502) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 9;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 440;
        goto LABEL_335;
      case 49:
        if (!v32)
        {
          goto LABEL_342;
        }

        if (*(a1 + 498))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 47;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 136;
        goto LABEL_335;
      case 50:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 24;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 320;
        goto LABEL_335;
      case 51:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 26;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 304;
        goto LABEL_335;
      case 52:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 501) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 17;
LABEL_460:
          v6 += v49 >> 63;
          goto LABEL_461;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (GEOURLInfoReadAllFrom(v44, v3))
        {
          PBReaderRecallMark();
          v45 = 376;
LABEL_335:
          v46 = *(a1 + v45);
          *(a1 + v45) = v44;

          --v6;
LABEL_461:
          if (!(BYTE4(v54) & 1 | (v6 != 0)))
          {
            goto LABEL_462;
          }

          continue;
        }

LABEL_463:

LABEL_464:
        v30 = 0;
LABEL_465:
        if (v54)
        {
LABEL_466:
          *(a1 + 496) |= 2uLL;
        }

        if (v56 & 1 | ((v30 & 1) == 0))
        {
          *(a1 + 496) |= 0x7FFFFFFFFFFFFFCuLL;
        }

        else if (v20)
        {
          while (1)
          {
            v50 = *v20++;
            v51 = 0x1000000000000;
            switch(v50)
            {
              case 0:
                goto LABEL_528;
              case 2:
                goto LABEL_527;
              case 3:
                v51 = 0x4000000000000;
                goto LABEL_527;
              case 4:
                v51 = 0x400000;
                goto LABEL_527;
              case 5:
                v51 = 0x2000000;
                goto LABEL_527;
              case 6:
                v51 = 0x20000;
                goto LABEL_527;
              case 7:
                v51 = 0x8000000000000;
                goto LABEL_527;
              case 8:
                v51 = 8;
                goto LABEL_527;
              case 9:
                v51 = 32;
                goto LABEL_527;
              case 10:
                v51 = 0x4000000000;
                goto LABEL_527;
              case 11:
                v51 = 0x200000000000;
                goto LABEL_527;
              case 12:
                v51 = 0x100000000000;
                goto LABEL_527;
              case 13:
                v51 = 0x2000000000000;
                goto LABEL_527;
              case 14:
                v51 = 0x40000000000;
                goto LABEL_527;
              case 15:
                v51 = 2048;
                goto LABEL_527;
              case 16:
                v51 = 0x800000;
                goto LABEL_527;
              case 17:
                v51 = 0x80000000000;
                goto LABEL_527;
              case 18:
                v51 = 4;
                goto LABEL_527;
              case 19:
                v51 = 0x200000;
                goto LABEL_527;
              case 20:
                v51 = 0x20000000;
                goto LABEL_527;
              case 21:
                v51 = 0x10000000000000;
                goto LABEL_527;
              case 22:
                v51 = 0x800000000000;
                goto LABEL_527;
              case 23:
                v51 = 0x40000;
                goto LABEL_527;
              case 24:
                v51 = 0x20000000000;
                goto LABEL_527;
              case 25:
                v51 = 0x40000000;
                goto LABEL_527;
              case 26:
                v51 = 0x4000;
                goto LABEL_527;
              case 27:
                v51 = 0x100000;
                goto LABEL_527;
              case 28:
                v51 = 0x8000;
                goto LABEL_527;
              case 29:
                v51 = 0x100000000000000;
                goto LABEL_527;
              case 30:
                v51 = 0x100000000;
                goto LABEL_527;
              case 31:
                v51 = 4096;
                goto LABEL_527;
              case 32:
                v51 = 0x400000000000000;
                goto LABEL_527;
              case 33:
                v51 = 0x8000000;
                goto LABEL_527;
              case 34:
                v51 = 0x4000000;
                goto LABEL_527;
              case 35:
                v51 = 0x10000000;
                goto LABEL_527;
              case 36:
                v51 = 128;
                goto LABEL_527;
              case 37:
                v51 = 256;
                goto LABEL_527;
              case 38:
                v51 = 1024;
                goto LABEL_527;
              case 39:
                v51 = 512;
                goto LABEL_527;
              case 40:
                v51 = 0x80000000000000;
                goto LABEL_527;
              case 41:
                v51 = 0x200000000000000;
                goto LABEL_527;
              case 42:
                v51 = 64;
                goto LABEL_527;
              case 43:
                v51 = 0x20000000000000;
                goto LABEL_527;
              case 44:
                v51 = 0x2000;
                goto LABEL_527;
              case 45:
                v51 = 16;
                goto LABEL_527;
              case 46:
                v51 = 0x10000000000;
                goto LABEL_527;
              case 47:
                v51 = 0x1000000;
                goto LABEL_527;
              case 48:
                v51 = 0x40000000000000;
                goto LABEL_527;
              case 49:
                v51 = 0x10000;
                goto LABEL_527;
              case 50:
                v51 = 0x8000000000;
                goto LABEL_527;
              case 51:
                v51 = 0x2000000000;
                goto LABEL_527;
              case 52:
                v51 = 0x400000000000;
                goto LABEL_527;
              case 53:
                v51 = 0x200000000;
                goto LABEL_527;
              case 54:
                v51 = 0x400000000;
                goto LABEL_527;
              case 55:
                v51 = 0x1000000000;
                goto LABEL_527;
              case 56:
                v51 = 0x800000000;
                goto LABEL_527;
              case 57:
                v51 = 0x80000;
                goto LABEL_527;
              case 58:
                v51 = 0x80000000;
LABEL_527:
                *(a1 + 496) |= v51;
                break;
              default:
                continue;
            }
          }
        }

LABEL_528:
        if (v30)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v56)
        {
          v52 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 53:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 30;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 272;
        goto LABEL_335;
      case 54:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 29;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 280;
        goto LABEL_335;
      case 55:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 27;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 296;
        goto LABEL_335;
      case 56:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 500) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 28;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 288;
        goto LABEL_335;
      case 57:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 498) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 44;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 160;
        goto LABEL_335;
      case 58:
        if (!v32)
        {
          goto LABEL_342;
        }

        if ((*(a1 + 499) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }

          v49 = *(a1 + 496) << 32;
          goto LABEL_460;
        }

        v57 = 0;
        v58 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_464;
        }

        v44 = objc_alloc_init(GEOURLInfo);
        if (!GEOURLInfoReadAllFrom(v44, v3))
        {
          goto LABEL_463;
        }

        PBReaderRecallMark();
        v45 = 256;
        goto LABEL_335;
      default:
        if ((v54 & 1) == 0 || (*(a1 + 496) & 2) != 0)
        {
LABEL_342:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_464;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v47 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v48 = *(a1 + 16);
            *(a1 + 16) = v47;
          }

          if (!PBUnknownFieldAdd())
          {
            v30 = 0;
            goto LABEL_466;
          }
        }

        goto LABEL_461;
    }
  }
}