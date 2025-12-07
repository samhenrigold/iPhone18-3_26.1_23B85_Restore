uint64_t GEORegionalResourceTileKeyMake(int a1, char a2, unsigned __int8 a3, char a4)
{
  HIWORD(v5) = a2 & 0x3F | (a3 << 14) | 0x80;
  *(&v5 + 1) = a1;
  BYTE5(v5) = a4;
  return v5;
}

uint64_t GEOPDSearchFieldPlaceholderParametersReadAllFrom(uint64_t a1, void *a2, int a3)
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
          LOBYTE(v38[0]) = 0;
          v10 = objc_msgSend_position(v5, v38[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v38[0] & 0x7F) << v7;
          if ((v38[0] & 0x80) == 0)
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
          case 3:
            v38[0] = 0;
            v38[1] = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_56;
            }

            v31 = objc_alloc_init(GEOPDViewportInfo);
            if (!GEOPDViewportInfoReadAllFrom(v31, v5, a3))
            {

              goto LABEL_56;
            }

            PBReaderRecallMark();
            v32 = *(a1 + 16);
            *(a1 + 16) = v31;

            break;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v27 = objc_msgSend_position(v5, v38[0]);
              if (v27 + 1 >= objc_msgSend_position(v5) && (v28 = objc_msgSend_position(v5), v28 + 1 <= [v5 length]))
              {
                v29 = [v5 data];
                [v29 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v26 |= (v38[0] & 0x7F) << v24;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v13 = v25++ >= 9;
              if (v13)
              {
                LOBYTE(v30) = 0;
                goto LABEL_48;
              }
            }

            v30 = (v26 != 0) & ~[v5 hasError];
LABEL_48:
            *(a1 + 28) = v30;
            break;
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              LOBYTE(v38[0]) = 0;
              v20 = objc_msgSend_position(v5, v38[0]);
              if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
              {
                v22 = [v5 data];
                [v22 getBytes:v38 range:{objc_msgSend_position(v5), 1}];

                [v5 setPosition:objc_msgSend_position(v5) + 1];
              }

              else
              {
                [v5 _setError];
              }

              v19 |= (v38[0] & 0x7F) << v17;
              if ((v38[0] & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v13 = v18++ >= 9;
              if (v13)
              {
                v23 = 0;
                goto LABEL_52;
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

LABEL_52:
            *(a1 + 24) = v23;
            break;
          default:
            if (!*(a1 + 8))
            {
              v33 = objc_alloc_init(MEMORY[0x1E69C65D8]);
              v34 = *(a1 + 8);
              *(a1 + 8) = v33;
            }

            if (!PBUnknownFieldAdd())
            {
              goto LABEL_56;
            }

            break;
        }

        v35 = objc_msgSend_position(v5);
      }

      while (v35 < [v5 length]);
    }

    v36 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_56:
    v36 = 0;
  }

  objc_sync_exit(v5);

  return v36;
}

id GEOGetSignedResourcesLog()
{
  if (GEOGetSignedResourcesLog_onceToken != -1)
  {
    dispatch_once(&GEOGetSignedResourcesLog_onceToken, &__block_literal_global_74);
  }

  v1 = GEOGetSignedResourcesLog_log;

  return v1;
}

uint64_t AppleMediaServicesLibrary()
{
  v3 = 0;
  v0 = AppleMediaServicesLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id getAMSMediaArtworkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSMediaArtworkClass_softClass;
  v7 = getAMSMediaArtworkClass_softClass;
  if (!getAMSMediaArtworkClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = &__getAMSMediaArtworkClass_block_invoke;
    v3[3] = &unk_1E7073678;
    v3[4] = &v4;
    (__getAMSMediaArtworkClass_block_invoke)(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1867746E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEORegionalResourceTileDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORegionalResourceTileDataReadAllFrom can only be called once per object"];
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
    v9 = &GEORegionalResourceTileDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORegionalResourceTileDataReadAllFrom_initialTag;
  }

  Specified = GEORegionalResourceTileDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORegionalResourceTileDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEORegionalResourceTileDataReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 60) >> 1) & 1) + (*(a1 + 60) & 1) + ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 2) & 1);
  while (1)
  {
    v12 = a3[v7];
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
      v6 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v11;
LABEL_15:
    ++v7;
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
  v42 = v13 & ~v10 | v8;
  v14 = v10 | v13;
  if (((v10 | v13) | v6))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = v7 != 0;
  v17 = objc_msgSend_position(v3);
  if (v17 < [v3 length])
  {
    v43 = v16 | v8 | v14;
    while (1)
    {
      if ([v3 hasError])
      {
        goto LABEL_68;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v21 = objc_msgSend_position(v3) + 1;
        if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
        {
          v23 = [v3 data];
          [v23 getBytes:v44 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v20 |= (v44[0] & 0x7F) << v18;
        if ((v44[0] & 0x80) == 0)
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
        goto LABEL_69;
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
        if (!v28 || (*(a1 + 60) & 4) != 0)
        {
LABEL_66:
          v26 = PBReaderSkipValueWithTag();
          if ((v26 & v43 & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        v33 = PBReaderReadString();
        if (v33)
        {
          [(GEORegionalResourceTileData *)a1 _addNoFlagsFilename:v33];
        }

        goto LABEL_58;
      }

      if (v27 == 2)
      {
        break;
      }

      if (v27 == 1)
      {
        if (!v28 || (*(a1 + 60) & 8) != 0)
        {
          goto LABEL_66;
        }

        v33 = PBReaderReadString();
        if (v33)
        {
          [(GEORegionalResourceTileData *)a1 _addNoFlagsIcon:v33];
        }

LABEL_58:

        goto LABEL_64;
      }

      if (v42 & 1) == 0 || (*(a1 + 60))
      {
        goto LABEL_66;
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
        goto LABEL_70;
      }

LABEL_64:
      if ((v43 & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_67:
      v36 = objc_msgSend_position(v3);
      if (v36 >= [v3 length])
      {
        goto LABEL_68;
      }
    }

    if (!v28 || (*(a1 + 60) & 2) != 0)
    {
      goto LABEL_66;
    }

    v44[0] = 0;
    v44[1] = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_91;
    }

    v33 = objc_alloc_init(GEOAttribution);
    if (!GEOAttributionReadAllFrom(v33, v3, v9 & 1))
    {

LABEL_91:
      v26 = 0;
      goto LABEL_69;
    }

    PBReaderRecallMark();
    [(GEORegionalResourceTileData *)a1 _addNoFlagsAttribution:v33];
    goto LABEL_58;
  }

LABEL_68:
  v26 = 1;
LABEL_69:
  if (v42)
  {
LABEL_70:
    *(a1 + 60) |= 1u;
  }

  if (!(v14 & 1 | ((v26 & 1) == 0)))
  {
    if (!v15)
    {
      goto LABEL_84;
    }

    while (1)
    {
      while (1)
      {
        v38 = *v15++;
        v37 = v38;
        v39 = v38 == 1;
        if (v38 <= 1)
        {
          break;
        }

        if (v37 == 3)
        {
          LOBYTE(v37) = 4;
LABEL_82:
          *(a1 + 60) |= v37;
        }

        else if (v37 == 2)
        {
          goto LABEL_82;
        }
      }

      if (v39)
      {
        LOBYTE(v37) = 8;
        goto LABEL_82;
      }

      if (!v37)
      {
        goto LABEL_84;
      }
    }
  }

  *(a1 + 60) |= 8u;
  *(a1 + 60) |= 2u;
  *(a1 + 60) |= 4u;
LABEL_84:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_88;
  }

  v3 = 0;
  if (v14)
  {
LABEL_88:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *std::__hash_table<std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>,std::__unordered_map_hasher<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>,hashkey,eqkey,true>,std::__unordered_map_equal<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>,eqkey,hashkey,true>,std::allocator<std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>>>::__emplace_unique_key_args<_GEOTileKey,std::piecewise_construct_t const&,std::tuple<_GEOTileKey const&>,std::tuple<>>(float *a1, void *a2, _OWORD **a3)
{
  v5 = GEOTileKeyHash(a2);
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::__unordered_map_hasher<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,true>,std::__unordered_map_equal<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>,std::equal_to<_GEOTileKey>,std::hash<_GEOTileKey>,true>,std::allocator<std::__hash_value_type<_GEOTileKey,std::__list_iterator<geo::detail::_CacheItem<_GEOTileKey,GEOTileData * {__strong},geo::detail::_GEOGenericContainer<_GEOTileKey,GEOTileData * {__strong},std::hash<_GEOTileKey>,std::equal_to<_GEOTileKey>,geo::GEOGenericContainerWeakReferenceTag,0ul,0ul,geo::GEOGenericContainerLockingTag,geo::detail::_default_pointer_type>::_value_ptr>,void *>>>>::__emplace_unique_key_args<_GEOTileKey,std::piecewise_construct_t const&,std::tuple<_GEOTileKey const&>,std::tuple<>>(float *a1, void *a2, _OWORD **a3)
{
  v5 = GEOTileKeyHash(a2);
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v10;
}

id *geo::_geo_weak_ptr<GEOTileData * {__strong}>::operator=(id *a1, id *location)
{
  if (a1 != location)
  {
    WeakRetained = objc_loadWeakRetained(location);
    objc_storeWeak(a1, WeakRetained);
  }

  return a1;
}

uint64_t geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

id _NSArraySafeEncodingCopy(void *a1, unsigned int a2, unsigned int a3)
{
  v24 = __PAIR64__(a3, a2);
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = 0x1E696A000uLL;
    v10 = 0x1E696A000uLL;
    v11 = 0x1E696A000uLL;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 absoluteString];
LABEL_8:
          v15 = v14;
          [v4 addObject:{v14, v24}];

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v4 addObject:{v13, v24}];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = _geo_NSErrorDictionaryRepresentationCopy(v13);
            v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v25];
            [*(v10 + 3480) numberWithBool:1];
            v17 = v11;
            v18 = v5;
            v19 = v9;
            v21 = v20 = v10;
            [v16 setObject:v21 forKey:@"_geo_SerializedError"];

            v10 = v20;
            v9 = v19;
            v5 = v18;
            v11 = v17;
            [v4 addObject:v16];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = _NSDictionarySafeEncodingCopy(v13, v24, HIDWORD(v24));
              goto LABEL_8;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = _NSArraySafeEncodingCopy(v13, v24, HIDWORD(v24));
              goto LABEL_8;
            }
          }
        }

LABEL_12:
        ++v12;
      }

      while (v7 != v12);
      v22 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v7 = v22;
    }

    while (v22);
  }

  return v4;
}

void setManifestConfiguration(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isDefaultConfiguration] & 1) == 0)
  {
    GEOEncodeXPCValue(v5, "mcfg", v4, 0);
  }
}

void setLocale(void *a1, void *a2)
{
  xdict = a1;
  v3 = [a2 localeIdentifier];
  v4 = v3;
  if (v3)
  {
    xpc_dictionary_set_string(xdict, "lcl", [v3 UTF8String]);
  }
}

void __GEOGetTileServerRemoteProxyLog_block_invoke()
{
  v0 = os_log_create("com.apple.GeoServices", "TileServerRemoteProxy");
  v1 = GEOGetTileServerRemoteProxyLog_log;
  GEOGetTileServerRemoteProxyLog_log = v0;
}

uint64_t mgcl::ints::IntDecompressor<long long>::decompress(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, char a4, char a5, unint64_t a6, uint64x2_t *a7)
{
  v222 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v11 = 8 * a6;
  bzero(a7, 8 * a6);
  v12 = *a2;
  if ((v12 - 66) < 0xFFFFFFBF)
  {
    return 3;
  }

  v221 = 0;
  memset(__dst, 0, sizeof(__dst));
  v205 = a2 + 1;
  memcpy(__dst, a2 + 1, v12);
  v15 = 0;
  v16 = v12 + 1;
  v192 = &a7->i8[v11];
  v198 = a2 + 2;
  v203 = v11;
  v204 = 8 * a3 - 24;
  v194 = a6 & 0xFFFFFFFFFFFFFFFCLL;
  v195 = 4 * a6;
  v17.i64[0] = 0xFFFFFF0DFFFFFF0CLL;
  v208 = a2;
  v206 = a1;
  v202 = v12;
  while (1)
  {
    v18 = *(__dst + v15);
    v19 = a2[v16];
    v207 = v15;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = &a2[v16 + 1];
    if (!*(__dst + v15))
    {
      break;
    }

    v24 = v204 - 8 * v16;
    do
    {
      v25 = v23[v21];
      v26 = v24;
      v22 |= (v23[v21] & 0x7F) << v20;
      v27 = v21 + 1;
      if (v21 > 8)
      {
        break;
      }

      v20 += 7;
      v24 -= 8;
      ++v21;
    }

    while (v25 < 0);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v16 + v27;
    v32 = &v205[v16 + v27];
    do
    {
      v33 = v32[v29];
      v30 |= (v32[v29] & 0x7F) << v28;
      v34 = v29 + 1;
      if (v29 > 8)
      {
        break;
      }

      v28 += 7;
      v26 -= 8;
      ++v29;
    }

    while (v33 < 0);
    v35 = v31 + v34;
    v16 = v31 + v34 + 1;
    result = 3;
    if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          return result;
        }

        v36 = a1[1];
        v37 = &v36[-*a1];
        v38 = v203 - v37;
        if (v203 <= v37)
        {
          if (v203 < v37)
          {
            a1[1] = *a1 + v203;
          }
        }

        else
        {
          if (a1[2] - v36 < v38)
          {
            if ((v203 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_176;
          }

          v91 = &v36[v38];
          bzero(v36, v38);
          a1[1] = v91;
        }

        v92 = *a1;
        result = mgcl::muid::decompress(&v208[v16], v30, 0, 0, *a1, 8, a6);
        if (result)
        {
          return result;
        }

        if (v18 > 0x3F)
        {
          v93 = 0;
          v15 = v207;
          if (a6 < 4)
          {
            goto LABEL_99;
          }

          if (a7 - v92 < 0x20)
          {
            goto LABEL_99;
          }

          v17 = vdupq_n_s64(v22);
          v94 = (v92 + 16);
          i8 = a7[1].i8;
          v96 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v14 = vaddq_s64(v94[-1], v17);
            v97 = vaddq_s64(*v94, v17);
            *(i8 - 1) = v14;
            *i8 = v97;
            i8 += 32;
            v94 += 2;
            v96 -= 4;
          }

          while (v96);
          v93 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v194 != a6)
          {
LABEL_99:
            v98 = a6 - v93;
            v99 = 8 * v93;
            v100 = &a7->i8[8 * v93];
            v101 = (v92 + v99);
            do
            {
              v102 = *v101++;
              *v100 = v102 + v22;
              v100 += 8;
              --v98;
            }

            while (v98);
          }

          goto LABEL_108;
        }

        v103 = ~(-1 << v18);
        v15 = v207;
        if (a6 <= 3 || v92 + v203 > a7 && v92 < v192)
        {
          v104 = 0;
          goto LABEL_106;
        }

        v17 = vdupq_n_s64(v22);
        v14 = vdupq_n_s64(v18);
        v126 = (v92 + 16);
        v127 = a7 + 1;
        v128 = vdupq_n_s64(v103);
        v129 = a6 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v130 = vorrq_s8(vshlq_u64(*v127, v14), vandq_s8(vaddq_s64(*v126, v17), v128));
          v127[-1] = vorrq_s8(vshlq_u64(v127[-1], v14), vandq_s8(vaddq_s64(v126[-1], v17), v128));
          *v127 = v130;
          v127 += 2;
          v126 += 2;
          v129 -= 4;
        }

        while (v129);
        v104 = a6 & 0xFFFFFFFFFFFFFFFCLL;
        if (v194 != a6)
        {
LABEL_106:
          v105 = a6 - v104;
          v106 = 8 * v104;
          v107 = &a7->i8[8 * v104];
          v108 = (v92 + v106);
          do
          {
            v109 = *v108++;
            *v107 = (*v107 << v18) | (v109 + v22) & v103;
            v107 += 8;
            --v105;
          }

          while (v105);
        }

LABEL_108:
        v16 += v30;
        goto LABEL_5;
      }

      if (!a1[3])
      {
        operator new();
      }

      *&v211[6] = 0x10000;
      v210 = 0;
      BYTE4(v210) = a4;
      BYTE5(v210) = a5;
      *&v211[4] = a6;
      v211[13] = v18 == 1;
      *v211 = v30 - 2;
      if (v30 <= 1)
      {
        return 3;
      }

      v55 = v208[v16];
      v56 = v198[v35];
      v196 = (v30 - 2);
      v197 = v35 + 3;
      v209 = 0;
      v58 = *v206;
      v57 = v206[1];
      v59 = &v57[-*v206];
      if (v18 == 1)
      {
        v60 = a6 - v59;
        if (a6 <= v59)
        {
          v61 = v206;
          if (a6 < v59)
          {
            v206[1] = v58 + a6;
          }
        }

        else
        {
          v61 = v206;
          v62 = v206[2];
          if (v62 - v57 < v60)
          {
            if ((a6 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_176;
          }

          v131 = &v57[v60];
          v132 = v55;
          bzero(v57, a6 - v59);
          v55 = v132;
          v206[1] = v131;
        }

        v133 = *v61;
        v134 = **v61[3];
        v135 = v197;
        result = mgcl::iarray::Decoder::decompress(v134, &v208[v197], &v210, v55, v56, &v209, v133, *v17.i64, v14);
        if (result)
        {
          return result;
        }

        if (a6 < 4)
        {
          v136 = 0;
          a1 = v206;
          v15 = v207;
          v137 = v196;
          goto LABEL_171;
        }

        a1 = v206;
        v15 = v207;
        v137 = v196;
        if (a6 >= 0x10)
        {
          v17 = vdupq_n_s64(v22);
          v165 = a7;
          v166 = v133;
          v167 = a6 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v168 = *v166++;
            v169 = vqtbl1q_s8(v168, xmmword_187FBF340);
            v170 = vqtbl1q_s8(v168, xmmword_187FBF330);
            v171 = vqtbl1q_s8(v168, xmmword_187FBF320);
            v172 = vqtbl1q_s8(v168, xmmword_187FBF310);
            v173 = vaddw_u32(v17, *v169.i8);
            v174 = vaddw_u32(v17, *v172.i8);
            v176 = *v165;
            v175 = *(v165 + 1);
            v177 = *(v165 + 4);
            v178 = *(v165 + 5);
            v14 = vsliq_n_s64(vaddw_high_u32(v17, v172), *(v165 + 7), 1uLL);
            v179 = vsliq_n_s64(v174, *(v165 + 6), 1uLL);
            v180 = vsliq_n_s64(vaddw_high_u32(v17, v169), *(v165 + 3), 1uLL);
            *(v165 + 2) = vsliq_n_s64(v173, *(v165 + 2), 1uLL);
            *(v165 + 3) = v180;
            *v165 = vsliq_n_s64(vaddw_u32(v17, *v170.i8), v176, 1uLL);
            *(v165 + 1) = vsliq_n_s64(vaddw_high_u32(v17, v170), v175, 1uLL);
            *(v165 + 4) = vsliq_n_s64(vaddw_u32(v17, *v171.i8), v177, 1uLL);
            *(v165 + 5) = vsliq_n_s64(vaddw_high_u32(v17, v171), v178, 1uLL);
            *(v165 + 6) = v179;
            *(v165 + 7) = v14;
            v165 += 128;
            v167 -= 16;
          }

          while (v167);
          if ((a6 & 0xFFFFFFFFFFFFFFF0) != a6)
          {
            v136 = a6 & 0xFFFFFFFFFFFFFFF0;
            v138 = a6 & 0xFFFFFFFFFFFFFFF0;
            if ((a6 & 0xC) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_168;
          }
        }

        else
        {
          v138 = 0;
LABEL_168:
          v17 = vdupq_n_s64(v22);
          v181 = v138 - (a6 & 0xFFFFFFFFFFFFFFFCLL);
          v182 = (v133 + v138);
          v183 = (a7 + 8 * v138);
          do
          {
            v184 = *v182++;
            v14.n128_u32[0] = v184;
            v185 = vmovl_u16(*&vmovl_u8(v14.n128_u64[0]));
            v186 = vaddw_high_u32(v17, v185);
            v14 = vsliq_n_s64(vaddw_u32(v17, *v185.i8), *v183, 1uLL);
            v187 = vsliq_n_s64(v186, v183[1], 1uLL);
            *v183 = v14;
            v183[1] = v187;
            v183 += 2;
            v181 += 4;
          }

          while (v181);
          v136 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v194 != a6)
          {
LABEL_171:
            v188 = a6 - v136;
            v189 = (v133 + v136);
            v190 = &a7->i8[8 * v136];
            do
            {
              v191 = *v189++;
              *v190 = (v22 + v191) & 1 | (2 * *v190);
              v190 += 8;
              --v188;
            }

            while (v188);
          }
        }

LABEL_173:
        v16 = &v137[v135];
        goto LABEL_5;
      }

      __n = v56;
      v89 = v195 - v59;
      if (v195 <= v59)
      {
        v90 = v206;
        if (v195 < v59)
        {
          v206[1] = v58 + v195;
        }
      }

      else
      {
        v90 = v206;
        if (v206[2] - v57 < v89)
        {
          if ((v195 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_176;
        }

        v139 = &v57[v89];
        v140 = v195 - v59;
        v141 = v55;
        bzero(v57, v140);
        v55 = v141;
        v206[1] = v139;
      }

      v142 = *v90;
      v143 = v90[3];
      v135 = v197;
      v144 = *v143;
      LODWORD(v212) = 0;
      BYTE4(v212) = a4;
      BYTE5(v212) = a5;
      HIWORD(v212) = 0;
      v214 = 0;
      v215 = v18 == 1;
      v216 = 0;
      if (v55 >= 4)
      {
        v145 = 1;
      }

      else
      {
        v145 = v55;
      }

      v217 = v145;
      if (__n == 2)
      {
        v146 = 4;
      }

      else
      {
        v146 = 1;
      }

      if (!__n)
      {
        v146 = 0;
      }

      v218 = v146;
      *(&v213 + 1) = *&v211[8];
      *&v213 = *v211;
      v147 = *v144;
      v219[0] = &v208[v197];
      v219[1] = *v211;
      result = gcl::polyline::DecoderImpl::decompressAttributes(v147, v219, v142, &v212);
      if (result)
      {
        return result;
      }

      v148 = ~(-1 << v18);
      if (a6 >= 4)
      {
        v137 = v196;
        a1 = v206;
        v15 = v207;
        if (&v142->i8[v195] <= a7 || v142 >= v192)
        {
          v17 = vdupq_n_s64(v22);
          v14 = vdupq_n_s64(v18);
          v150 = vdupq_n_s64(v148);
          v151 = vdup_n_s32(v18 > 0x3F);
          v152 = &v142->u64[1];
          v153.i64[0] = v151.u32[0];
          v153.i64[1] = v151.u32[1];
          v154 = vcltzq_s64(vshlq_n_s64(v153, 0x3FuLL));
          v155 = a7 + 1;
          v156 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v157 = vaddw_s32(v17, v152[-1]);
            v158 = vaddw_s32(v17, *v152);
            v159 = vbslq_s8(v154, v158, vorrq_s8(vshlq_u64(*v155, v14), vandq_s8(v158, v150)));
            v155[-1] = vbslq_s8(v154, v157, vorrq_s8(vshlq_u64(v155[-1], v14), vandq_s8(v157, v150)));
            *v155 = v159;
            v155 += 2;
            v152 += 2;
            v156 -= 4;
          }

          while (v156);
          v149 = a6 & 0xFFFFFFFFFFFFFFFCLL;
          if (v194 == a6)
          {
            goto LABEL_173;
          }
        }

        else
        {
          v149 = 0;
        }
      }

      else
      {
        v149 = 0;
        a1 = v206;
        v15 = v207;
        v137 = v196;
      }

      v160 = a6 - v149;
      v161 = &a7->i8[8 * v149];
      v162 = &v142->i32[v149];
      do
      {
        v163 = *v162++;
        v164 = v22 + v163;
        if (v18 <= 0x3F)
        {
          v164 = (*v161 << v18) | v164 & v148;
        }

        *v161 = v164;
        v161 += 8;
        --v160;
      }

      while (v160);
      goto LABEL_173;
    }

    if (v19 != 3)
    {
      if (v19 == 4)
      {
        operator new();
      }

      return result;
    }

    v63 = *a1;
    if (a1[1] != *a1)
    {
      a1[1] = v63;
    }

    if (a1[2] - v63 < v203)
    {
      if ((v203 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_176:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v64 = 0;
    do
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = &v208[v16];
      do
      {
        v69 = v68[v66];
        v67 |= (v68[v66] & 0x7F) << v65;
        v70 = v66 + 1;
        if (v66 > 8)
        {
          break;
        }

        v65 += 7;
        ++v66;
      }

      while (v69 < 0);
      v71 = v67 + v22;
      if (v18 <= 0x3F)
      {
        v71 = (a7->i64[v64] << v18) | v71 & ~(-1 << v18);
      }

      v16 += v70;
      a7->i64[v64++] = v71;
    }

    while (v64 != a6);
LABEL_5:
    ++v15;
    a2 = v208;
    if (v15 == v202)
    {
      return 0;
    }
  }

  v39 = v204 - 8 * v16;
  do
  {
    v40 = v23[v21];
    v41 = v39;
    v22 |= (v23[v21] & 0x7F) << v20;
    v42 = v21 + 1;
    if (v21 > 8)
    {
      break;
    }

    v20 += 7;
    v39 -= 8;
    ++v21;
  }

  while (v40 < 0);
  v43 = 0;
  v44 = 0;
  v30 = 0;
  v45 = v16 + v42;
  v46 = &v205[v16 + v42];
  do
  {
    v47 = v46[v44];
    v30 |= (v46[v44] & 0x7F) << v43;
    v48 = v44 + 1;
    if (v44 > 8)
    {
      break;
    }

    v43 += 7;
    v41 -= 8;
    ++v44;
  }

  while (v47 < 0);
  v49 = v45 + v48;
  v16 = v45 + v48 + 1;
  result = 3;
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 != 2)
      {
        return result;
      }

      v50 = v206[1];
      v51 = &v50[-*v206];
      v52 = v203 >= v51;
      v53 = v203 - v51;
      if (v203 <= v51)
      {
        a1 = v206;
        if (!v52)
        {
          v206[1] = *v206 + v203;
        }
      }

      else
      {
        v54 = v206[2];
        if (v54 - v50 < v53)
        {
          if ((v203 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_177;
        }

        v110 = &v50[v53];
        bzero(v50, v203 - v51);
        v206[1] = v110;
        a1 = v206;
      }

      v111 = *a1;
      result = mgcl::muid::decompress(&v208[v16], v30, 0, 0, *a1, 8, a6);
      if (result)
      {
        return result;
      }

      v112 = a7;
      v113 = a6;
      v15 = v207;
      do
      {
        v114 = *v111++;
        if (v114 != -v22)
        {
          if (*v112)
          {
            v115 = -*v112;
          }

          else
          {
            v115 = 0x8000000000000000;
          }

          *v112 = v115;
        }

        v112 += 8;
        --v113;
      }

      while (v113);
      goto LABEL_108;
    }

    if (!v206[3])
    {
      operator new();
    }

    *(&v213 + 6) = 0x100000000010000;
    v212 = 0;
    BYTE4(v212) = a4;
    BYTE5(v212) = a5;
    DWORD1(v213) = a6;
    v72 = (v30 - 2);
    LODWORD(v213) = v30 - 2;
    if (v30 <= 1)
    {
      return 3;
    }

    v73 = v208[v16];
    v74 = v198[v49];
    v210 = 0;
    v75 = v206[1];
    v76 = &v75[-*v206];
    v77 = a6 - v76;
    if (a6 <= v76)
    {
      if (a6 < v76)
      {
        v206[1] = *v206 + a6;
      }
    }

    else
    {
      v78 = v206[2];
      if (v78 - v75 < v77)
      {
        if ((a6 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_177;
      }

      v116 = &v75[v77];
      v117 = a6 - v76;
      v118 = v73;
      v119 = v74;
      bzero(v75, v117);
      v74 = v119;
      v73 = v118;
      v206[1] = v116;
    }

    v120 = v49 + 3;
    v121 = *v206;
    result = mgcl::iarray::Decoder::decompress(**v206[3], &v208[v49 + 3], &v212, v73, v74, &v210, *v206, *v17.i64, v14);
    if (result)
    {
      return result;
    }

    v122 = a7;
    v123 = a6;
    a1 = v206;
    v15 = v207;
    do
    {
      v124 = *v121++;
      if (v22 + v124)
      {
        if (*v122)
        {
          v125 = -*v122;
        }

        else
        {
          v125 = 0x8000000000000000;
        }

        *v122 = v125;
      }

      v122 += 8;
      --v123;
    }

    while (v123);
    v16 = &v72[v120];
    goto LABEL_5;
  }

  if (v19 == 3)
  {
    a1 = v206;
    v79 = *v206;
    if (v206[1] != *v206)
    {
      v206[1] = v79;
    }

    if (v206[2] - v79 < v203)
    {
      if ((v203 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_177:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v80 = 0;
    do
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = &v208[v16];
      do
      {
        v85 = v84[v82];
        v83 |= (v84[v82] & 0x7F) << v81;
        v86 = v82 + 1;
        if (v82 > 8)
        {
          break;
        }

        v81 += 7;
        ++v82;
      }

      while (v85 < 0);
      if (v83 != -v22)
      {
        v87 = a7->i64[v80];
        if (v87)
        {
          v88 = -v87;
        }

        else
        {
          v88 = 0x8000000000000000;
        }

        a7->i64[v80] = v88;
      }

      v16 += v86;
      ++v80;
    }

    while (v80 != a6);
    goto LABEL_5;
  }

  if (v19 == 4)
  {
    operator new();
  }

  return result;
}

void sub_186777DAC(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v2, 0x20C4093837F09);
  MEMORY[0x18CFD1E40](v1, 0x20C4093837F09);
  _Unwind_Resume(a1);
}

uint64_t mgcl::muid::decompress(mgcl::muid *this, const char *a2, uint64_t a3, const int *a4, uint64_t a5, unint64_t *a6, unint64_t a7)
{
  result = 5;
  if (!this)
  {
    return result;
  }

  v9 = a2;
  if (!a2)
  {
    return result;
  }

  v11 = a6;
  v62 = a5;
  v63 = a6;
  v64 = a3;
  v65 = a4;
  v66 = a7;
  memset_pattern16(v73, &unk_187FBF450, 0xAuLL);
  memset_pattern16(v74, &unk_187FBF450, 0x80uLL);
  memset_pattern16(v75, &unk_187FBF450, 0xAuLL);
  v76 = 1081344;
  v77 = *this & 1;
  v68 = this + 1;
  *&v13 = 0xFFFF000000000000;
  *(&v13 + 1) = 0xFFFF000000000000;
  v70 = v13;
  v71 = 16;
  v67 = v9 - 1;
  if (v9 == 1)
  {
    v14 = -16777216;
    goto LABEL_9;
  }

  v14 = *(this + 1) << 24;
  if (v9 == 2)
  {
LABEL_9:
    v15 = v14 | 0xFF0000;
    goto LABEL_10;
  }

  v15 = v14 | (*(this + 2) << 16);
  if ((v9 - 1) <= 2)
  {
LABEL_10:
    v16 = v15 | 0xFF00;
    goto LABEL_11;
  }

  v16 = v15 | (*(this + 3) << 8);
  if (v9 == 4)
  {
LABEL_11:
    v17 = 255;
    goto LABEL_12;
  }

  v17 = *(this + 4);
LABEL_12:
  DWORD2(v70) = v17 | v16;
  v69 = 3;
  memcpy(v72, &gcl::ArithmeticDecoder::probUpdateLutInterleaved, sizeof(v72));
  if (a7)
  {
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = -1;
    do
    {
      v23 = mgcl::muid::Decoder::decEgk(&v62, v75);
      v25 = DWORD1(v70);
      v24 = DWORD2(v70);
      if (DWORD1(v70) >= 0x40000001)
      {
        v29 = DWORD1(v70);
      }

      else
      {
        v26 = v71;
        v27 = v69;
        do
        {
          v24 *= 2;
          if (!--v26)
          {
            if (v27 + 1 >= v67)
            {
              v30 = 65280;
            }

            else
            {
              v30 = v68[v27 + 1] << 8;
            }

            v27 += 2;
            if (v27 < v67)
            {
              v28 = v68[v27];
            }

            else
            {
              v28 = 255;
            }

            v24 |= v30 | v28;
            v26 = 16;
          }

          v29 = 2 * v25;
          v33 = v25 >= 0x20000001;
          v25 *= 2;
        }

        while (!v33);
        LODWORD(v71) = v26;
        v69 = v27;
      }

      v31 = (HIWORD(v29) * v76) & 0xFFFF0000;
      v32 = (v76 >> 7) & 0x1FE;
      v33 = v24 >= v31;
      if (v24 >= v31)
      {
        ++v32;
      }

      LOWORD(v76) = v72[v32] + v76;
      if (v24 < v31)
      {
        v34 = v31;
      }

      else
      {
        v34 = v29 - v31;
      }

      if (v24 < v31)
      {
        v31 = 0;
      }

      v35 = ~v23;
      if (!v33)
      {
        v35 = v23 + 1;
      }

      v20 = (v35 + v20);
      if ((v20 & 0x80000000) != 0 || v66 <= v20)
      {
        break;
      }

      v36 = v24 - v31;
      if (v34 >= 0x40000001)
      {
        v40 = v34;
      }

      else
      {
        v37 = v71;
        v38 = v69;
        do
        {
          v36 *= 2;
          if (!--v37)
          {
            if (v38 + 1 >= v67)
            {
              v41 = 65280;
            }

            else
            {
              v41 = v68[v38 + 1] << 8;
            }

            v38 += 2;
            if (v38 < v67)
            {
              v39 = v68[v38];
            }

            else
            {
              v39 = 255;
            }

            v36 |= v41 | v39;
            v37 = 16;
          }

          v40 = 2 * v34;
          v33 = v34 >= 0x20000001;
          v34 *= 2;
        }

        while (!v33);
        LODWORD(v71) = v37;
        v69 = v38;
      }

      v42 = (HIWORD(v40) * HIWORD(v76)) & 0xFFFF0000;
      if (v36 < v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = (HIWORD(v40) * HIWORD(v76)) & 0xFFFF0000;
      }

      v44 = v36 - v43;
      v45 = v36 >= v42;
      v46 = (HIWORD(v76) >> 7) & 0x1FE;
      if (v45)
      {
        ++v46;
      }

      HIWORD(v76) += v72[v46];
      v47 = v45 ? v40 - v42 : v42;
      *(&v70 + 4) = __PAIR64__(v44, v47);
      if (v45)
      {
        v48 = mgcl::muid::Decoder::decEgk(&v62, v73);
        v49 = v48 & 0x3F;
        if ((v48 & 0x3F) != 0)
        {
          v51 = DWORD1(v70);
          v50 = DWORD2(v70);
          v52 = v71;
          v21 = 1;
          v53 = v69;
          do
          {
            if (v51 >= 0x40000001)
            {
              v54 = v51;
            }

            else
            {
              do
              {
                v50 *= 2;
                if (!--v52)
                {
                  if (v53 + 1 >= v67)
                  {
                    v61 = 65280;
                  }

                  else
                  {
                    v61 = v68[v53 + 1] << 8;
                  }

                  v53 += 2;
                  if (v53 < v67)
                  {
                    v60 = v68[v53];
                  }

                  else
                  {
                    v60 = 255;
                  }

                  v50 |= v61 | v60;
                  v52 = 16;
                }

                v54 = 2 * v51;
                v33 = v51 >= 0x20000001;
                v51 *= 2;
              }

              while (!v33);
            }

            v55 = v74[--v49];
            v21 *= 2;
            v56 = (HIWORD(v54) * v55) & 0xFFFF0000;
            v57 = (v55 >> 7) & 0x1FE;
            v58 = v54 - v56;
            v59 = v50 >= v56;
            if (v50 >= v56)
            {
              ++v57;
            }

            v74[v49] = v72[v57] + v55;
            if (v50 < v56)
            {
              v51 = v56;
            }

            else
            {
              v51 = v58;
            }

            if (v50 < v56)
            {
              v56 = 0;
            }

            if (v59)
            {
              ++v21;
            }

            v50 -= v56;
          }

          while (v49);
          v69 = v53;
          *(&v70 + 4) = __PAIR64__(v50, v51);
          LODWORD(v71) = v52;
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = (v77 & ((v21 & 0xFFFFFFFFFFF00000) != 0)) != 0 ? v18 & 0xFFFFFFFFFFF00000 : v18;
      v18 = v22 + v21;
      *(a5 + v20 * v11) = v22 + v21;
      ++v19;
    }

    while (v19 < v66);
  }

  return 0;
}

uint64_t mgcl::muid::Decoder::decEgk(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  result = 0;
  v6 = *(a1 + 68);
  v5 = *(a1 + 72);
  v7 = 5;
  while (1)
  {
    v17 = v7-- != 0;
    if (!v17)
    {
      v7 = 0;
    }

    v8 = *(a2 + 2 * v7);
    if (v6 >= 0x40000001)
    {
      v11 = v6;
    }

    else
    {
      v9 = *(a1 + 80);
      do
      {
        v5 *= 2;
        *(a1 + 80) = --v9;
        if (!v9)
        {
          v12 = *(a1 + 56);
          *(a1 + 56) = v12 + 1;
          v13 = *(a1 + 40);
          if (v12 + 1 >= v13)
          {
            v14 = 65280;
          }

          else
          {
            v14 = *(*(a1 + 48) + v12 + 1) << 8;
          }

          v15 = v12 + 2;
          *(a1 + 56) = v15;
          if (v15 < v13)
          {
            v10 = *(*(a1 + 48) + v15);
          }

          else
          {
            v10 = 255;
          }

          v5 |= v14 | v10;
          v9 = 16;
          *(a1 + 80) = 16;
        }

        v11 = 2 * v6;
        v17 = v6 >= 0x20000001;
        v6 *= 2;
      }

      while (!v17);
    }

    v6 = (HIWORD(v11) * v8) & 0xFFFF0000;
    if (v5 < v6)
    {
      v16 = 0;
    }

    else
    {
      v16 = (HIWORD(v11) * v8) & 0xFFFF0000;
    }

    v17 = v5 >= v6;
    v18 = (v8 >> 7) & 0x1FE;
    if (v5 >= v6)
    {
      ++v18;
    }

    v19 = v11 - v6;
    *(a2 + 2 * v7) = *(a1 + 88 + 2 * v18) + v8;
    v5 -= v16;
    if (v17)
    {
      v6 = v19;
    }

    *(a1 + 68) = v6;
    *(a1 + 72) = v5;
    if (!v17 || v3 == 31)
    {
      break;
    }

    result = (result + (1 << v3++));
  }

  for (; v3; result = ((v23 << v3) + result))
  {
    if (v6 >= 0x40000001)
    {
      v21 = v6;
    }

    else
    {
      v24 = *(a1 + 80);
      do
      {
        v5 *= 2;
        *(a1 + 80) = --v24;
        if (!v24)
        {
          v26 = *(a1 + 56);
          *(a1 + 56) = v26 + 1;
          v27 = *(a1 + 40);
          if (v26 + 1 >= v27)
          {
            v28 = 65280;
          }

          else
          {
            v28 = *(*(a1 + 48) + v26 + 1) << 8;
          }

          v29 = v26 + 2;
          *(a1 + 56) = v29;
          if (v29 < v27)
          {
            v25 = *(*(a1 + 48) + v29);
          }

          else
          {
            v25 = 255;
          }

          v5 |= v28 | v25;
          v24 = 16;
          *(a1 + 80) = 16;
        }

        v21 = 2 * v6;
        v17 = v6 >= 0x20000001;
        v6 *= 2;
      }

      while (!v17);
    }

    v22 = (v21 >> 1) & 0x7FFF0000;
    v6 = v21 - v22;
    v23 = v5 >= v22;
    if (v5 < v22)
    {
      v6 = v22;
      v22 = 0;
    }

    v5 -= v22;
    *(a1 + 68) = v6;
    *(a1 + 72) = v5;
    --v3;
  }

  return result;
}

uint64_t mgcl::raster::PolygonRasterDecoder<unsigned char>::decode(void **a1, char *a2, uint64_t a3, int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v9 = *a2++;
    v8 = v9;
    v10 = v5 + 1;
    v6 |= (v9 & 0x7F) << v4;
    if (v5 > 8)
    {
      break;
    }

    v4 += 7;
    ++v5;
  }

  while (v8 < 0);
  if (v6 != 1)
  {
    return 4;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v15 = *a2++;
    v14 = v15;
    v13 |= (v15 & 0x7F) << v11;
    v16 = v12 + 1;
    if (v12 > 8)
    {
      break;
    }

    v11 += 7;
    ++v12;
  }

  while (v14 < 0);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = v10 + v16;
  do
  {
    v22 = *a2++;
    v21 = v22;
    ++v20;
    v19 |= (v22 & 0x7F) << v17;
    if (v18 > 8)
    {
      break;
    }

    ++v18;
    v17 += 7;
  }

  while (v21 < 0);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  do
  {
    v27 = *a2++;
    v26 = v27;
    ++v20;
    v25 |= (v27 & 0x7F) << v23;
    if (v24 > 8)
    {
      break;
    }

    ++v24;
    v23 += 7;
  }

  while (v26 < 0);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  do
  {
    v32 = *a2++;
    v31 = v32;
    ++v20;
    v30 |= (v32 & 0x7F) << v28;
    if (v29 > 8)
    {
      break;
    }

    ++v29;
    v28 += 7;
  }

  while (v31 < 0);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  do
  {
    v37 = *a2++;
    v36 = v37;
    ++v20;
    v35 |= (v37 & 0x7F) << v33;
    if (v34 > 8)
    {
      break;
    }

    ++v34;
    v33 += 7;
  }

  while (v36 < 0);
  *a3 = v25;
  *(a3 + 8) = v30;
  *(a3 + 16) = v35;
  if (!a4)
  {
    operator new[]();
  }

  result = *(a3 + 24);
  *(a3 + 24) = 0;
  if (result)
  {
    MEMORY[0x18CFD1E20](result, 0x1000C8077774924);
    return 0;
  }

  return result;
}

void sub_186779130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a26;
    if (!a26)
    {
LABEL_3:
      v29 = *(v26 - 112);
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a26;
    if (!a26)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = *(v26 - 112);
  if (!v29)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t mgcl::iarray::Decoder::decompress(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int a4, int a5, void *a6, uint64_t a7, double a8, __n128 a9)
{
  v74[1] = *MEMORY[0x1E69E9840];
  if (a4 >= 4)
  {
    v9 = 1;
  }

  else
  {
    v9 = a4;
  }

  if (a5 == 2)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  if (a5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  a9.n128_u64[0] = *(a3 + 8);
  a9.n128_u32[2] = *(a3 + 16);
  v12 = a9.n128_u32[0];
  v13 = 5;
  v14 = a9.n128_u32[0];
  if (a2)
  {
    if (a7)
    {
      v15 = *(a3 + 4);
      v16 = *(a3 + 5);
      v17 = *(a3 + 20);
      v18 = *(a3 + 21);
      v19 = *(a3 + 21) != 0;
      v20 = *(a3 + 6);
      *(a1 + 60) = a9.n128_u32[2];
      *(a1 + 44) = 0;
      *(a1 + 48) = v15;
      *(a1 + 49) = v16;
      *(a1 + 50) = v20;
      LODWORD(v21) = a9.n128_u32[0];
      *(a1 + 52) = a9.n128_u64[0];
      *(a1 + 64) = 0;
      *(a1 + 68) = 0;
      *(a1 + 69) = v17 == 1;
      *(a1 + 70) = v19;
      *(a1 + 72) = 0;
      *(a1 + 76) = v9;
      v22 = a9.n128_u32[0];
      *(a1 + 77) = v11;
      v14 = 0;
      v13 = 4;
      if (!v15 && (v16 - 1) <= 1)
      {
        if ((v11 - 1) < 4 || (a4 | 2) == 2)
        {
LABEL_16:
          v13 = 3;
          goto LABEL_17;
        }

        v13 = 3;
        if (v18)
        {
          if (v17 != 1)
          {
            if (v16 == 1)
            {
              v22 = a9.n128_u32[0] - 4;
              if (a9.n128_u32[0] < 4uLL)
              {
                goto LABEL_17;
              }

              if (a2 == -4)
              {
                goto LABEL_16;
              }

              v21 = *a2;
              if (v22 < v21)
              {
                goto LABEL_16;
              }

              a2 += 4;
            }

            if (v22 >= v21)
            {
              v24 = a2;
            }

            else
            {
              v24 = 0;
            }

            if (v22 >= v21)
            {
              v25 = v21;
            }

            else
            {
              v25 = 0;
            }

            *(a1 + 128) = v25;
            *(a1 + 136) = v24;
            *&v26 = 0xFFFF000000000000;
            *(&v26 + 1) = 0xFFFF000000000000;
            *(a1 + 152) = v26;
            *(a1 + 168) = 16;
            v71 = a6;
            v70 = a9;
            if (v25)
            {
              v27 = *v24 << 24;
              *(a1 + 160) = v27;
              if (v25 != 1)
              {
                v28 = v27 | (v24[1] << 16);
                *(a1 + 160) = v28;
                if (v25 > 2)
                {
                  v29 = v28 | (v24[2] << 8);
                  *(a1 + 160) = v29;
                  v30 = a5;
                  if (v25 != 3)
                  {
                    v31 = v24[3];
                    goto LABEL_40;
                  }

LABEL_39:
                  v31 = 255;
LABEL_40:
                  v32 = v31 | v29;
                  *(a1 + 160) = v31 | v29;
                  *(a1 + 144) = 3;
                  v34 = a1 + 176;
                  memcpy((a1 + 176), &gcl::ArithmeticDecoder::probUpdateLutInterleaved, 0x400uLL);
                  if (v30)
                  {
                    v13 = 5;
LABEL_119:
                    a6 = v71;
                    goto LABEL_17;
                  }

                  if (v9 == 1)
                  {
                    if (v70.n128_u32[2])
                    {
                      if ((v70.n128_u32[2] & 0x80000000) == 0)
                      {
                        operator new();
                      }

                      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
                    }
                  }

                  else if (v9 == 3)
                  {
                    memset_pattern16(__b, &unk_187FBF450, 4uLL);
                    v74[0] = 0;
                    a6 = v71;
                    if (v70.n128_i32[2] < 1 || v70.n128_i32[1] < 1)
                    {
LABEL_114:
                      v13 = 0;
                      goto LABEL_17;
                    }

                    v35 = a1;
                    v36 = 0;
                    v37 = -1;
                    v38 = -65536;
                    v39 = 16;
                    v40 = 3;
                    v41 = 1;
                    v42 = 1;
LABEL_48:
                    v43 = 0;
                    while (1)
                    {
                      if (v37 < 0)
                      {
                        if (v41)
                        {
                          if (v38 < 0x40000001)
                          {
                            do
                            {
                              v32 *= 2;
                              *(v35 + 168) = --v39;
                              if (!v39)
                              {
                                *(v35 + 144) = v40 + 1;
                                if (v40 + 1 >= v25)
                                {
                                  v48 = 65280;
                                }

                                else
                                {
                                  v48 = v24[v40 + 1] << 8;
                                }

                                v40 += 2;
                                *(v35 + 144) = v40;
                                if (v40 < v25)
                                {
                                  v47 = v24[v40];
                                }

                                else
                                {
                                  v47 = 255;
                                }

                                v32 |= v48 | v47;
                                v39 = 16;
                                *(v35 + 168) = 16;
                              }

                              v45 = 2 * v38;
                              v57 = v38 >= 0x20000001;
                              v38 *= 2;
                            }

                            while (!v57);
                          }

                          else
                          {
                            v45 = v38;
                          }

                          v46 = (v45 >> 1) & 0x7FFF0000;
                          v38 = v45 - v46;
                          v42 = v32 >= v46;
                          if (v32 < v46)
                          {
                            v38 = v46;
                            v46 = 0;
                          }

                          v32 -= v46;
                          *(v35 + 156) = v38;
                          *(v35 + 160) = v32;
                        }

                        else
                        {
                          v42 ^= 1u;
                        }

                        v49 = 0;
                        v50 = v42 & 1;
                        v51 = *(v74 & 0xFFFFFFFFFFFFFFFBLL | (4 * v50));
                        v52 = __b[v50];
                        v53 = v51;
                        if (v38 >= 0x40000001)
                        {
LABEL_70:
                          v54 = v38;
                          goto LABEL_71;
                        }

                        while (1)
                        {
                          do
                          {
                            v32 *= 2;
                            *(v35 + 168) = --v39;
                            if (!v39)
                            {
                              *(v35 + 144) = v40 + 1;
                              if (v40 + 1 >= v25)
                              {
                                v62 = 65280;
                              }

                              else
                              {
                                v62 = v24[v40 + 1] << 8;
                              }

                              v40 += 2;
                              *(v35 + 144) = v40;
                              if (v40 < v25)
                              {
                                v61 = v24[v40];
                              }

                              else
                              {
                                v61 = 255;
                              }

                              v32 |= v62 | v61;
                              v39 = 16;
                              *(v35 + 168) = 16;
                            }

                            v54 = 2 * v38;
                            v57 = v38 >= 0x20000001;
                            v38 *= 2;
                          }

                          while (!v57);
LABEL_71:
                          v55 = (HIWORD(v54) * v52) & 0xFFFF0000;
                          v38 = v54 - v55;
                          if (v32 < v55)
                          {
                            v56 = 0;
                          }

                          else
                          {
                            v56 = (HIWORD(v54) * v52) & 0xFFFF0000;
                          }

                          v57 = v32 >= v55;
                          v32 -= v56;
                          v58 = (v52 >> 7) & 0x1FE;
                          if (v57)
                          {
                            ++v58;
                          }

                          v52 += *(v34 + 2 * v58);
                          if (!v57)
                          {
                            v38 = v55;
                          }

                          *(v35 + 156) = v38;
                          *(v35 + 160) = v32;
                          if (!v57 || v53 >= 31)
                          {
                            break;
                          }

                          v60 = 1 << v53++;
                          v49 |= v60;
                          if (v38 >= 0x40000001)
                          {
                            goto LABEL_70;
                          }
                        }

                        __b[v50] = v52;
                        for (i = 0; v53; i |= v66 << v53)
                        {
                          if (v38 < 0x40000001)
                          {
                            do
                            {
                              v32 *= 2;
                              *(v35 + 168) = --v39;
                              if (!v39)
                              {
                                *(v35 + 144) = v40 + 1;
                                if (v40 + 1 >= v25)
                                {
                                  v69 = 65280;
                                }

                                else
                                {
                                  v69 = v24[v40 + 1] << 8;
                                }

                                v40 += 2;
                                *(v35 + 144) = v40;
                                if (v40 < v25)
                                {
                                  v68 = v24[v40];
                                }

                                else
                                {
                                  v68 = 255;
                                }

                                v32 |= v69 | v68;
                                v39 = 16;
                                *(v35 + 168) = 16;
                              }

                              v67 = 2 * v38;
                              v57 = v38 >= 0x20000001;
                              v38 *= 2;
                            }

                            while (!v57);
                          }

                          else
                          {
                            v67 = v38;
                          }

                          v65 = (v67 >> 1) & 0x7FFF0000;
                          v38 = v67 - v65;
                          v66 = v32 >= v65;
                          if (v32 < v65)
                          {
                            v38 = v65;
                            v65 = 0;
                          }

                          v32 -= v65;
                          *(v35 + 156) = v38;
                          *(v35 + 160) = v32;
                          --v53;
                        }

                        v37 = i + v49;
                        v64 = v37 >> v51;
                        if (v51 && !v64)
                        {
                          v44 = -1;
                        }

                        else
                        {
                          if (v64 < 2)
                          {
                            v41 = 0;
                            goto LABEL_51;
                          }

                          v44 = 1;
                        }

                        v41 = 0;
                        *(v74 | (4 * v50)) = v51 + v44;
                      }

LABEL_51:
                      *(a7 + v36 + v43 * v70.n128_u32[2]) = v42 & 1;
                      --v37;
                      if (++v43 == v70.n128_u32[1])
                      {
                        if (++v36 == v70.n128_u32[2])
                        {
                          goto LABEL_114;
                        }

                        goto LABEL_48;
                      }
                    }
                  }

                  v13 = 0;
                  goto LABEL_119;
                }

LABEL_38:
                v30 = a5;
                v29 = v28 | 0xFF00;
                goto LABEL_39;
              }
            }

            else
            {
              v27 = -16777216;
            }

            v28 = v27 | 0xFF0000;
            goto LABEL_38;
          }
        }
      }
    }
  }

LABEL_17:
  *a6 = v12 - (v14 & ~(v14 >> 63));
  return v13;
}

void std::__function::__func<geo::codec::_readMaterialRasters(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<geo::codec::_readMaterialRasters(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(VMP4Chapter *)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  *v100 = 0;
  if (**(a1 + 16) >= (*(**(a1 + 8) + 2808) + 80 * **(a1 + 24)))
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10054;
    goto LABEL_11;
  }

  if ((geo::codec::chapterReadVarUint32(v3, &v100[1]) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10056;
    goto LABEL_11;
  }

  if ((geo::codec::chapterReadVarUint32(v3, v100) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10057;
    goto LABEL_11;
  }

  v8 = v3[6];
  if ((v8 + 1) > v3[7])
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10059;
LABEL_11:
    v11 = fprintf(v9, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v10);
    v12 = 0;
    goto LABEL_12;
  }

  ***(a1 + 16) = *(v3[5] + v8);
  ++v3[6];
  v99 = 0;
  if ((geo::codec::chapterReadVarUint32(v3, &v99) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10062;
    goto LABEL_11;
  }

  v98 = 0;
  if ((geo::codec::chapterReadVarUint32(v3, &v98) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10064;
    goto LABEL_11;
  }

  v97 = 0;
  if ((geo::codec::chapterReadVarUint32(v3, &v97) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10066;
    goto LABEL_11;
  }

  v96 = 0;
  v17 = geo::codec::chapterReadVarUint32(v3, &v96);
  if ((v17 & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 10069;
    goto LABEL_11;
  }

  v94 = 0u;
  v95 = 0u;
  v18 = v97;
  v19 = geo::codec::zone_mallocator::instance(v17);
  v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<unsigned long long>(v19, v18);
  v21 = **(a1 + 16);
  *(v21 + 32) = v20;
  *(v21 + 40) = v18;
  v23 = v100[0];
  v22 = v100[1];
  LODWORD(v92) = 0;
  if (geo::codec::chapterReadVarUint32(v3, &v92))
  {
    v24 = v92;
    v25 = v3[6];
    if (v25 + v92 <= v3[7])
    {
      v26 = v3[5];
      v3[6] = v25 + v92;
      v27 = mgcl::ints::IntDecompressor<unsigned long long>::decompress(&v94, (v26 + v25), v24, v22, v23, v18, v20);
      if (!v27)
      {
        v33 = v99;
        v34 = geo::codec::zone_mallocator::instance(v27);
        v35 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<unsigned short>(v34, v33);
        v36 = **(a1 + 16);
        *(v36 + 64) = v35;
        *(v36 + 72) = v33;
        v92 = 0u;
        v93 = 0u;
        v87[0] = 0;
        if (!geo::codec::chapterReadVarUint32(v3, v87) || (v37 = v87[0], v38 = v3[6], v39 = v38 + v87[0], v39 > v3[7]) || (v40 = v3[5], v3[6] = v39, v41 = mgcl::ints::IntDecompressor<unsigned short>::decompress(&v92, (v40 + v38), v37, v22, v23, v33, v35), v41))
        {
          v42 = *MEMORY[0x1E69E9848];
          v43 = 10079;
LABEL_49:
          fprintf(v42, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v43);
          goto LABEL_50;
        }

        v49 = v96;
        v50 = geo::codec::zone_mallocator::instance(v41);
        v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<unsigned short>(v50, v49);
        v52 = **(a1 + 16);
        *(v52 + 48) = v51;
        *(v52 + 56) = v49;
        v87[0] = 0;
        if (!geo::codec::chapterReadVarUint32(v3, v87) || (v53 = v87[0], v54 = v3[6], v55 = v54 + v87[0], v55 > v3[7]) || (v56 = v3[5], v3[6] = v55, mgcl::ints::IntDecompressor<unsigned short>::decompress(&v92, (v56 + v54), v53, v22, v23, v49, v51)))
        {
          v42 = *MEMORY[0x1E69E9848];
          v43 = 10083;
          goto LABEL_49;
        }

        v57 = v3[6];
        v58 = v57 + 1;
        if ((v57 + 1) > v3[7])
        {
          v42 = *MEMORY[0x1E69E9848];
          v43 = 10086;
          goto LABEL_49;
        }

        v59 = *(v3[5] + v57);
        v3[6] = v58;
        if (v59 == 1)
        {
          v60 = 0;
        }

        else
        {
          if (v59 != 2)
          {
            v42 = *MEMORY[0x1E69E9848];
            v43 = 10093;
            goto LABEL_49;
          }

          v60 = 1;
        }

        *(**(a1 + 16) + 20) = v60;
        v91 = 0;
        v61 = geo::codec::chapterReadVarUint32(v3, &v91);
        if ((v61 & 1) == 0)
        {
          v42 = *MEMORY[0x1E69E9848];
          v43 = 10097;
          goto LABEL_49;
        }

        v62 = *(a1 + 16);
        v63 = *v62;
        if (*(*v62 + 20) != 1)
        {
          if (!*(*v62 + 20))
          {
            v64 = v91;
            v65 = geo::codec::zone_mallocator::instance(v61);
            v66 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v65, v64);
            *(**(a1 + 16) + 8) = v66;
            v67 = v3[6];
            if (v67 + v64 > v3[7])
            {
              v42 = *MEMORY[0x1E69E9848];
              v43 = 10103;
              goto LABEL_49;
            }

            memcpy(v66, (v3[5] + v67), v64);
            v3[6] += v64;
            v62 = *(a1 + 16);
            v63 = *v62;
            *(v63 + 16) = v64;
            *(v63 + 26) = 0;
          }

LABEL_88:
          *v62 = v63 + 80;
          ++*(**(a1 + 8) + 2816);
          v12 = 1;
          v44 = *(&v93 + 1);
          if (*(&v93 + 1))
          {
            goto LABEL_51;
          }

          goto LABEL_60;
        }

        v68 = v3[5];
        v69 = v3[6];
        v90 = 0;
        *v87 = 0;
        v88 = 0;
        v89 = 0;
        v86 = 0;
        memset(v85, 0, sizeof(v85));
        if (mgcl::raster::PolygonRasterDecoder<unsigned char>::decode(v85, (v68 + v69), v87, 1))
        {
          v70 = *MEMORY[0x1E69E9848];
          v71 = 10114;
LABEL_81:
          fprintf(v70, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v71);
LABEL_82:
          v72 = 0;
LABEL_83:
          mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(v85);
          if (v90)
          {
            MEMORY[0x18CFD1E20](v90, 0x1000C8077774924);
          }

          if (!v72)
          {
LABEL_50:
            v12 = 0;
            v44 = *(&v93 + 1);
            if (*(&v93 + 1))
            {
LABEL_51:
              v45 = *v44;
              *v44 = 0;
              if (v45)
              {
                v46 = *v45;
                *v45 = 0;
                if (v46)
                {
                  v47 = v46[13];
                  if (v47)
                  {
                    v46[14] = v47;
                    operator delete(v47);
                  }

                  v48 = v46[10];
                  if (v48)
                  {
                    v46[11] = v48;
                    operator delete(v48);
                  }

                  MEMORY[0x18CFD1E40](v46, 0x1070C40ADA6D0DELL);
                }

                MEMORY[0x18CFD1E40](v45, 0x20C4093837F09);
              }

              MEMORY[0x18CFD1E40](v44, 0x20C4093837F09);
            }

LABEL_60:
            if (v92)
            {
              operator delete(v92);
            }

            goto LABEL_29;
          }

          v62 = *(a1 + 16);
          v63 = *v62;
          goto LABEL_88;
        }

        v73 = v89;
        *(**(a1 + 16) + 26) = v89;
        if (v73 == 8)
        {
          if (mgcl::raster::PolygonRasterDecoder<unsigned char>::decode(v85, (v68 + v69), v87, 0))
          {
            v70 = *MEMORY[0x1E69E9848];
            v71 = 10120;
            goto LABEL_81;
          }

          v77 = v90;
          v90 = 0;
          v75 = **(a1 + 16);
          *(v75 + 8) = v77;
          v76 = v89 >> 3;
        }

        else
        {
          if (v73 != 16)
          {
            v70 = *MEMORY[0x1E69E9848];
            v71 = 10117;
            goto LABEL_81;
          }

          v84 = 0;
          v82[0] = 0;
          v82[1] = 0;
          v83 = 0;
          v81 = 0;
          memset(v80, 0, sizeof(v80));
          if (mgcl::raster::PolygonRasterDecoder<unsigned short>::decode(v80, (v68 + v69), v82))
          {
            fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 10125);
            v74 = v84;
            mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(v80);
            if (v74)
            {
              MEMORY[0x18CFD1E20](v74, 0x1000C80BDFB0063);
            }

            goto LABEL_82;
          }

          *(**(a1 + 16) + 8) = v84;
          mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(v80);
          v75 = **(a1 + 16);
          v76 = 2;
        }

        v79 = v87[0];
        v78 = v88;
        *(v75 + 22) = v88;
        *(v75 + 24) = v79;
        *(v75 + 16) = v79 * v78 * v76;
        v3[6] += v91;
        v72 = 1;
        goto LABEL_83;
      }
    }
  }

  fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 10074);
  v12 = 0;
LABEL_29:
  v28 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v29 = **(&v95 + 1);
    **(&v95 + 1) = 0;
    if (v29)
    {
      v30 = *v29;
      *v29 = 0;
      if (v30)
      {
        v31 = v30[13];
        if (v31)
        {
          v30[14] = v31;
          operator delete(v31);
        }

        v32 = v30[10];
        if (v32)
        {
          v30[11] = v32;
          operator delete(v32);
        }

        MEMORY[0x18CFD1E40](v30, 0x1070C40ADA6D0DELL);
      }

      MEMORY[0x18CFD1E40](v29, 0x20C4093837F09);
    }

    MEMORY[0x18CFD1E40](v28, 0x20C4093837F09);
  }

  v11 = v94;
  if (v94)
  {
    operator delete(v94);
  }

LABEL_12:
  **(a1 + 32) &= v12;
  if (**(a1 + 40) && v3)
  {
    if (*v3)
    {
      v13 = v3[5];
      v14 = geo::codec::zone_mallocator::instance(v11);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v14, v13);
    }

    v15 = geo::codec::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v15, v3);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *&v80[0] = 155;
  *&v85[0] = v80;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v6 + 1920), v80, v85) + 4) = ((rep - v7.__d_.__rep_) / 1000) * 0.001;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_18677A204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(&a11);
  if (a22)
  {
    MEMORY[0x18CFD1E20](a22, 0x1000C80BDFB0063);
  }

  mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(&a23);
  if (a33)
  {
    MEMORY[0x18CFD1E20](a33, 0x1000C8077774924);
    v38 = *(v36 - 152);
    if (!v38)
    {
LABEL_5:
      v39 = *(v36 - 176);
      if (!v39)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v38 = *(v36 - 152);
    if (!v38)
    {
      goto LABEL_5;
    }
  }

  v42 = *v38;
  *v38 = 0;
  if (v42)
  {
    v43 = *v42;
    *v42 = 0;
    if (v43)
    {
      v44 = v43[13];
      if (v44)
      {
        v43[14] = v44;
        operator delete(v44);
      }

      v45 = v43[10];
      if (v45)
      {
        v43[11] = v45;
        operator delete(v45);
      }

      MEMORY[0x18CFD1E40](v43, 0x1070C40ADA6D0DELL);
    }

    MEMORY[0x18CFD1E40](v42, 0x20C4093837F09);
  }

  MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
  v39 = *(v36 - 176);
  if (!v39)
  {
LABEL_6:
    v40 = *(v36 - 120);
    if (!v40)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v39);
  v40 = *(v36 - 120);
  if (!v40)
  {
LABEL_7:
    v41 = *(v36 - 144);
    if (!v41)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_20:
  v46 = *v40;
  *v40 = 0;
  if (v46)
  {
    v47 = *v46;
    *v46 = 0;
    if (v47)
    {
      v48 = v47[13];
      if (v48)
      {
        v47[14] = v48;
        operator delete(v48);
      }

      v49 = v47[10];
      if (v49)
      {
        v47[11] = v49;
        operator delete(v49);
      }

      MEMORY[0x18CFD1E40](v47, 0x1070C40ADA6D0DELL);
    }

    MEMORY[0x18CFD1E40](v46, 0x20C4093837F09);
  }

  MEMORY[0x18CFD1E40](v40, 0x20C4093837F09);
  v41 = *(v36 - 144);
  if (!v41)
  {
LABEL_30:
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    a11 = 155;
    a23 = &a11;
    *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v35 + 1920), &a11, &a23) + 4) = ((rep - v34) / 1000) * 0.001;
    if (v33)
    {
      if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
      }
    }

    _Unwind_Resume(a1);
  }

LABEL_29:
  operator delete(v41);
  goto LABEL_30;
}

uint64_t mgcl::ints::IntDecompressor<unsigned short>::decompress(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, char a4, char a5, unint64_t a6, char *a7)
{
  v266 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    return 0;
  }

  v8 = a6;
  bzero(a7, 2 * a6);
  v10 = *a2;
  if ((v10 - 66) < 0xFFFFFFBF)
  {
    return 3;
  }

  v265 = 0;
  memset(__dst, 0, sizeof(__dst));
  v249 = a2 + 1;
  memcpy(__dst, a2 + 1, v10);
  v13 = 0;
  v14 = v10 + 1;
  v246 = 8 * v8;
  v238 = v8 & 0xFFFFFFFFFFFFFFF0;
  v239 = 4 * v8;
  v234 = v8 & 0xC;
  v241 = a2 + 2;
  v248 = 8 * a3 - 24;
  v236 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v237 = v8 & 0xFFFFFFFFFFFFFFF8;
  v235 = -(v8 & 0xFFFFFFFFFFFFFFFCLL);
  v15.i64[0] = 0xFFFFFF09FFFFFF08;
  v250 = a2;
  v245 = v8;
  v247 = v10;
  while (1)
  {
    v252 = v13;
    v16 = *(__dst + v13);
    v17 = a2[v14];
    v18 = v14 + 1;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (!v16)
    {
      break;
    }

    v22 = &a2[v18];
    v23 = v248 - 8 * v14;
    do
    {
      v24 = v22[v20];
      v25 = v23;
      v21 |= (v22[v20] & 0x7F) << v19;
      v26 = v20 + 1;
      if (v20 > 8)
      {
        break;
      }

      v19 += 7;
      v23 -= 8;
      ++v20;
    }

    while (v24 < 0);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = v14 + v26;
    v31 = &v249[v14 + v26];
    do
    {
      v32 = v31[v28];
      v29 |= (v31[v28] & 0x7F) << v27;
      v33 = v28 + 1;
      if (v28 > 8)
      {
        break;
      }

      v27 += 7;
      v25 -= 8;
      ++v28;
    }

    while (v32 < 0);
    v34 = v30 + v33;
    v14 = v30 + v33 + 1;
    result = 3;
    if (v17 <= 2)
    {
      if (v17 != 1)
      {
        a2 = v250;
        if (v17 != 2)
        {
          return result;
        }

        v35 = a1[1];
        v36 = &v35[-*a1];
        v37 = v246 - v36;
        if (v246 <= v36)
        {
          if (v246 < v36)
          {
            a1[1] = *a1 + v246;
          }
        }

        else
        {
          v38 = a1[2];
          if (v38 - v35 < v37)
          {
            if ((v246 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_184;
          }

          v88 = &v35[v37];
          bzero(v35, v37);
          a1[1] = v88;
        }

        v89 = *a1;
        v8 = v245;
        result = mgcl::muid::decompress(&v250[v14], v29, 0, 0, *a1, 8, v245);
        if (result)
        {
          return result;
        }

        if (v16 <= 0x3F)
        {
          v91 = ~(-1 << v16);
          if (v245 > 7)
          {
            v15 = vdupq_n_s64(v21);
            v12 = vdupq_n_s64(v16);
            v94 = v89;
            v95 = a7;
            v96 = vdupq_n_s64(v91);
            v97 = v237;
            do
            {
              v98 = v94[2];
              v99 = v94[3];
              v100 = *v94;
              v101 = v94[1];
              v94 += 4;
              v102 = vmovl_u16(*v95);
              v103.i64[0] = v102.u32[2];
              v103.i64[1] = v102.u32[3];
              v104 = v103;
              v103.i64[0] = v102.u32[0];
              v103.i64[1] = v102.u32[1];
              v105 = v103;
              v106 = vmovl_high_u16(*v95->i8);
              v103.i64[0] = v106.u32[2];
              v103.i64[1] = v106.u32[3];
              v107 = v103;
              v103.i64[0] = v106.u32[0];
              v103.i64[1] = v106.u32[1];
              *v95->i8 = vuzp1q_s16(vuzp1q_s32(vorrq_s8(vshlq_u64(v105, v12), vandq_s8(vaddq_s64(v100, v15), v96)), vorrq_s8(vshlq_u64(v104, v12), vandq_s8(vaddq_s64(v101, v15), v96))), vuzp1q_s32(vorrq_s8(vshlq_u64(v103, v12), vandq_s8(vaddq_s64(v98, v15), v96)), vorrq_s8(vshlq_u64(v107, v12), vandq_s8(vaddq_s64(v99, v15), v96))));
              v95 += 2;
              v97 -= 8;
            }

            while (v97);
            v92 = v237;
            if (v237 == v245)
            {
              goto LABEL_132;
            }
          }

          else
          {
            v92 = 0;
          }

          v108 = v245 - v92;
          v109 = &a7[2 * v92];
          v110 = (v89 + 8 * v92);
          do
          {
            v111 = *v110;
            v110 += 2;
            *v109 = (*v109 << v16) | (v111 + v21) & v91;
            v109 += 2;
            --v108;
          }

          while (v108);
        }

        else
        {
          if (v245 < 4)
          {
            v90 = 0;
            goto LABEL_130;
          }

          if (v245 >= 0x10)
          {
            v15 = vdupq_n_s64(v21);
            v125 = (v89 + 64);
            v126 = a7 + 16;
            v127 = v238;
            do
            {
              v12 = vuzp1q_s16(vuzp1q_s32(vaddq_s64(v125[-4], v15), vaddq_s64(v125[-3], v15)), vuzp1q_s32(vaddq_s64(v125[-2], v15), vaddq_s64(v125[-1], v15)));
              v128 = vuzp1q_s16(vuzp1q_s32(vaddq_s64(*v125, v15), vaddq_s64(v125[1], v15)), vuzp1q_s32(vaddq_s64(v125[2], v15), vaddq_s64(v125[3], v15)));
              *(v126 - 1) = v12;
              *v126 = v128;
              v126 += 32;
              v125 += 8;
              v127 -= 16;
            }

            while (v127);
            if (v238 != v245)
            {
              v90 = v238;
              v93 = v238;
              if (!v234)
              {
                goto LABEL_130;
              }

              goto LABEL_127;
            }
          }

          else
          {
            v93 = 0;
LABEL_127:
            v15 = vdupq_n_s64(v21);
            v129 = v235 + v93;
            v130 = &a7[2 * v93];
            v131 = (v89 + 8 * v93);
            do
            {
              v132 = *v131;
              v133 = v131[1];
              v131 += 2;
              v12 = vuzp1q_s32(vaddq_s64(v132, v15), vaddq_s64(v133, v15));
              v12.n128_u64[0] = vmovn_s32(v12);
              *v130 = v12.n128_u64[0];
              v130 += 8;
              v129 += 4;
            }

            while (v129);
            v90 = v236;
            if (v236 != v245)
            {
LABEL_130:
              v134 = v245 - v90;
              v135 = &a7[2 * v90];
              v136 = (v89 + 8 * v90);
              do
              {
                v137 = *v136;
                v136 += 2;
                *v135 = v137 + v21;
                v135 += 2;
                --v134;
              }

              while (v134);
            }
          }
        }

LABEL_132:
        v14 += v29;
        goto LABEL_5;
      }

      if (!a1[3])
      {
        operator new();
      }

      *&v255[6] = 0x10000;
      v254 = 0;
      BYTE4(v254) = a4;
      BYTE5(v254) = a5;
      *&v255[4] = v8;
      v255[13] = v16 == 1;
      *v255 = v29 - 2;
      if (v29 <= 1)
      {
        return 3;
      }

      v55 = v250[v14];
      v56 = v241[v34];
      v57 = v34 + 3;
      v253 = 0;
      v59 = *a1;
      v58 = a1[1];
      v60 = &v58[-*a1];
      v240 = (v29 - 2);
      if (v16 == 1)
      {
        v61 = v8 - v60;
        if (v8 <= v60)
        {
          v112 = a1;
          if (v8 < v60)
          {
            a1[1] = v59 + v8;
          }
        }

        else
        {
          v62 = a1[2];
          if (v62 - v58 < v61)
          {
            if ((v245 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_184;
          }

          v138 = &v58[v61];
          v139 = v8 - v60;
          v140 = v56;
          v141 = v55;
          bzero(v58, v139);
          v55 = v141;
          v56 = v140;
          a1[1] = v138;
          v112 = a1;
          v8 = v245;
        }

        v142 = *v112;
        result = mgcl::iarray::Decoder::decompress(**v112[3], &v250[v57], &v254, v55, v56, &v253, *v112, *v15.i64, v12);
        if (result)
        {
          return result;
        }

        if (v8 < 4)
        {
          v143 = 0;
          a2 = v250;
          v144 = (v29 - 2);
          v145 = v57;
          goto LABEL_161;
        }

        a2 = v250;
        v144 = (v29 - 2);
        v145 = v57;
        if (v8 >= 0x10)
        {
          v15 = vdupq_n_s64(v21);
          v159 = v142;
          v160 = a7;
          v161 = v238;
          do
          {
            v162 = *v159++;
            v163 = vqtbl1q_s8(v162, xmmword_187FBF330);
            v164 = vqtbl1q_s8(v162, xmmword_187FBF340);
            v165 = vqtbl1q_s8(v162, xmmword_187FBF310);
            v166 = vqtbl1q_s8(v162, xmmword_187FBF320);
            v167 = *(v160 + 1);
            v168 = vmovl_u16(*v160);
            v169 = vextq_s8(v168, v168, 8uLL).u64[0];
            v170 = vmovl_high_u16(*v160);
            v171 = vextq_s8(v170, v170, 8uLL).u64[0];
            v172 = vmovl_high_u16(v167);
            v173 = vextq_s8(v172, v172, 8uLL).u64[0];
            v174 = vmovl_u16(*v167.i8);
            v175 = vextq_s8(v174, v174, 8uLL).u64[0];
            v176 = vadd_s32(v175, v175);
            v177.i64[0] = v176.u32[0];
            v177.i64[1] = v176.u32[1];
            v178 = v177;
            *v174.i8 = vadd_s32(*v174.i8, *v174.i8);
            v177.i64[0] = v174.u32[0];
            v177.i64[1] = v174.u32[1];
            v179 = v177;
            v180 = vadd_s32(v173, v173);
            v177.i64[0] = v180.u32[0];
            v177.i64[1] = v180.u32[1];
            v181 = v177;
            *v172.i8 = vadd_s32(*v172.i8, *v172.i8);
            v177.i64[0] = v172.u32[0];
            v177.i64[1] = v172.u32[1];
            v182 = v177;
            v183 = vadd_s32(v171, v171);
            v177.i64[0] = v183.u32[0];
            v177.i64[1] = v183.u32[1];
            v184 = v177;
            *v170.i8 = vadd_s32(*v170.i8, *v170.i8);
            v177.i64[0] = v170.u32[0];
            v177.i64[1] = v170.u32[1];
            v185 = v177;
            v186 = vadd_s32(v169, v169);
            v177.i64[0] = v186.u32[0];
            v177.i64[1] = v186.u32[1];
            v187 = v177;
            *v168.i8 = vadd_s32(*v168.i8, *v168.i8);
            v177.i64[0] = v168.u32[0];
            v177.i64[1] = v168.u32[1];
            v188 = vdupq_n_s64(1uLL);
            v12 = vuzp1q_s16(vuzp1q_s32(vorrq_s8(v179, vandq_s8(vaddw_u32(v15, *v166.i8), v188)), vorrq_s8(v178, vandq_s8(vaddw_high_u32(v15, v166), v188))), vuzp1q_s32(vorrq_s8(v182, vandq_s8(vaddw_u32(v15, *v165.i8), v188)), vorrq_s8(v181, vandq_s8(vaddw_high_u32(v15, v165), v188))));
            *v160 = vuzp1q_s16(vuzp1q_s32(vorrq_s8(v177, vandq_s8(vaddw_u32(v15, *v163.i8), v188)), vorrq_s8(v187, vandq_s8(vaddw_high_u32(v15, v163), v188))), vuzp1q_s32(vorrq_s8(v185, vandq_s8(vaddw_u32(v15, *v164.i8), v188)), vorrq_s8(v184, vandq_s8(vaddw_high_u32(v15, v164), v188))));
            *(v160 + 1) = v12;
            v160 += 32;
            v161 -= 16;
          }

          while (v161);
          if (v238 != v8)
          {
            v143 = v238;
            v146 = v238;
            if (!v234)
            {
              goto LABEL_161;
            }

            goto LABEL_158;
          }
        }

        else
        {
          v146 = 0;
LABEL_158:
          v15 = vdupq_n_s64(v21);
          v189 = v235 + v146;
          v190 = &a7[2 * v146];
          v191 = (v142 + v146);
          do
          {
            v192 = *v191++;
            v12.n128_u32[0] = v192;
            v193 = vmovl_u16(*&vmovl_u8(v12.n128_u64[0]));
            v194 = vmovl_u16(vadd_s16(*v190, *v190));
            v195.i64[0] = v194.u32[0];
            v195.i64[1] = v194.u32[1];
            v196 = v195;
            v195.i64[0] = v194.u32[2];
            v195.i64[1] = v194.u32[3];
            v197 = vdupq_n_s64(1uLL);
            v12 = vuzp1q_s32(vorrq_s8(v196, vandq_s8(vaddw_u32(v15, *v193.i8), v197)), vorrq_s8(v195, vandq_s8(vaddw_high_u32(v15, v193), v197)));
            v12.n128_u64[0] = vmovn_s32(v12);
            *v190++ = v12.n128_u64[0];
            v189 += 4;
          }

          while (v189);
          v143 = v236;
          if (v236 != v8)
          {
LABEL_161:
            v198 = v8 - v143;
            v199 = &a7[2 * v143];
            v200 = (v142 + v143);
            do
            {
              v201 = *v200++;
              *v199 = (v21 + v201) & 1 | (2 * *v199);
              v199 += 2;
              --v198;
            }

            while (v198);
          }
        }

        goto LABEL_181;
      }

      v86 = v239 - v60;
      if (v239 <= v60)
      {
        v87 = a1;
        if (v239 < v60)
        {
          a1[1] = v59 + v239;
        }
      }

      else
      {
        v87 = a1;
        if (a1[2] - v58 < v86)
        {
          if ((v239 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_184;
        }

        v147 = &v58[v86];
        v148 = v86;
        v149 = v56;
        v150 = v55;
        bzero(v58, v148);
        v55 = v150;
        v56 = v149;
        a1[1] = v147;
      }

      v151 = *v87;
      v152 = *v87[3];
      LODWORD(v256) = 0;
      BYTE4(v256) = a4;
      BYTE5(v256) = a5;
      HIWORD(v256) = 0;
      v258 = 0;
      v259 = v16 == 1;
      v260 = 0;
      if (v55 >= 4)
      {
        v153 = 1;
      }

      else
      {
        v153 = v55;
      }

      v261 = v153;
      if (v56 == 2)
      {
        v154 = 4;
      }

      else
      {
        v154 = 1;
      }

      if (!v56)
      {
        v154 = 0;
      }

      v262 = v154;
      *(&v257 + 1) = *&v255[8];
      *&v257 = *v255;
      v155 = *v152;
      v263[0] = &v250[v57];
      v263[1] = *v255;
      result = gcl::polyline::DecoderImpl::decompressAttributes(v155, v263, v151, &v256);
      v8 = v245;
      if (result)
      {
        return result;
      }

      if (v16 <= 0x3F)
      {
        v157 = ~(-1 << v16);
        a2 = v250;
        v144 = v240;
        v145 = v57;
        if (v245 > 7)
        {
          v15 = vdupq_n_s64(v21);
          v12 = vdupq_n_s64(v16);
          v203 = v151;
          v204 = a7;
          v205 = vdupq_n_s64(v157);
          v206 = v237;
          do
          {
            v207 = *v203;
            v208 = v203[1];
            v203 += 2;
            v209 = vmovl_u16(*v204);
            v210.i64[0] = v209.u32[2];
            v210.i64[1] = v209.u32[3];
            v211 = v210;
            v210.i64[0] = v209.u32[0];
            v210.i64[1] = v209.u32[1];
            v212 = v210;
            v213 = vmovl_high_u16(*v204->i8);
            v210.i64[0] = v213.u32[2];
            v210.i64[1] = v213.u32[3];
            v214 = v210;
            v210.i64[0] = v213.u32[0];
            v210.i64[1] = v213.u32[1];
            *v204->i8 = vuzp1q_s16(vuzp1q_s32(vorrq_s8(vshlq_u64(v212, v12), vandq_s8(vaddw_u32(v15, *v207.i8), v205)), vorrq_s8(vshlq_u64(v211, v12), vandq_s8(vaddw_high_u32(v15, v207), v205))), vuzp1q_s32(vorrq_s8(vshlq_u64(v210, v12), vandq_s8(vaddw_u32(v15, *v208.i8), v205)), vorrq_s8(vshlq_u64(v214, v12), vandq_s8(vaddw_high_u32(v15, v208), v205))));
            v204 += 2;
            v206 -= 8;
          }

          while (v206);
          v158 = v237;
          if (v237 == v245)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v158 = 0;
        }

        v215 = v245 - v158;
        v216 = &a7[2 * v158];
        v217 = &v151->i32[v158];
        do
        {
          v218 = *v217++;
          *v216 = (*v216 << v16) | (v21 + v218) & v157;
          v216 += 2;
          --v215;
        }

        while (v215);
LABEL_181:
        v14 = &v144[v145];
        goto LABEL_5;
      }

      a2 = v250;
      v144 = v240;
      v145 = v57;
      if (v245 < 4)
      {
        v156 = 0;
LABEL_179:
        v230 = v245 - v156;
        v231 = &a7[2 * v156];
        v232 = &v151->i32[v156];
        do
        {
          v233 = *v232++;
          *v231 = v21 + v233;
          v231 += 2;
          --v230;
        }

        while (v230);
        goto LABEL_181;
      }

      if (v245 >= 0x10)
      {
        v15 = vdupq_n_s64(v21);
        v219 = &v151[2];
        v220 = (a7 + 16);
        v221 = v238;
        do
        {
          v223 = v219[-2];
          v222 = v219[-1];
          v225 = *v219;
          v224 = v219[1];
          v219 += 4;
          v12 = vuzp1q_s16(vuzp1q_s32(vaddw_u32(v15, *v223.i8), vaddw_high_u32(v15, v223)), vuzp1q_s32(vaddw_u32(v15, *v222.i8), vaddw_high_u32(v15, v222)));
          v220[-1] = v12;
          *v220 = vuzp1q_s16(vuzp1q_s32(vaddw_u32(v15, *v225.i8), vaddw_high_u32(v15, v225)), vuzp1q_s32(vaddw_u32(v15, *v224.i8), vaddw_high_u32(v15, v224)));
          v220 += 2;
          v221 -= 16;
        }

        while (v221);
        if (v238 == v245)
        {
          goto LABEL_181;
        }

        v156 = v238;
        v202 = v238;
        if (!v234)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v202 = 0;
      }

      v15 = vdupq_n_s64(v21);
      v226 = v235 + v202;
      v227 = &a7[2 * v202];
      v228 = (v151 + 4 * v202);
      do
      {
        v229 = *v228++;
        v12 = vuzp1q_s32(vaddw_u32(v15, *v229.i8), vaddw_high_u32(v15, v229));
        v12.n128_u64[0] = vmovn_s32(v12);
        *v227 = v12.n128_u64[0];
        v227 += 8;
        v226 += 4;
      }

      while (v226);
      v156 = v236;
      if (v236 == v245)
      {
        goto LABEL_181;
      }

      goto LABEL_179;
    }

    if (v17 != 3)
    {
      if (v17 == 4)
      {
        operator new();
      }

      return result;
    }

    a2 = v250;
    v63 = *a1;
    if (a1[1] != *a1)
    {
      a1[1] = v63;
    }

    if (a1[2] - v63 < v246)
    {
      if ((v246 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_184:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    for (i = 0; i != v8; ++i)
    {
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = &v250[v14];
      do
      {
        v69 = v68[v66];
        v67 |= (v68[v66] & 0x7F) << v65;
        v70 = v66 + 1;
        if (v66 > 8)
        {
          break;
        }

        v65 += 7;
        ++v66;
      }

      while (v69 < 0);
      v71 = v67 + v21;
      if (v16 < 0x40)
      {
        v71 = (*&a7[2 * i] << v16) | v71 & ~(-1 << v16);
      }

      *&a7[2 * i] = v71;
      v14 += v70;
    }

LABEL_5:
    v13 = v252 + 1;
    if (v252 + 1 == v247)
    {
      return 0;
    }
  }

  v39 = &a2[v18];
  v40 = v248 - 8 * v14;
  do
  {
    v41 = v39[v20];
    v42 = v40;
    v21 |= (v39[v20] & 0x7F) << v19;
    v43 = v20 + 1;
    if (v20 > 8)
    {
      break;
    }

    v19 += 7;
    v40 -= 8;
    ++v20;
  }

  while (v41 < 0);
  v44 = 0;
  v45 = 0;
  v29 = 0;
  v46 = v14 + v43;
  v47 = &v249[v14 + v43];
  do
  {
    v48 = v47[v45];
    v29 |= (v47[v45] & 0x7F) << v44;
    v49 = v45 + 1;
    if (v45 > 8)
    {
      break;
    }

    v44 += 7;
    v42 -= 8;
    ++v45;
  }

  while (v48 < 0);
  v50 = v46 + v49;
  v14 = v46 + v49 + 1;
  result = 3;
  if (v17 <= 2)
  {
    if (v17 != 1)
    {
      if (v17 != 2)
      {
        return result;
      }

      v51 = a1[1];
      v52 = &v51[-*a1];
      v53 = v246 - v52;
      if (v246 <= v52)
      {
        if (v246 < v52)
        {
          a1[1] = *a1 + v246;
        }
      }

      else
      {
        v54 = a1[2];
        if (v54 - v51 < v53)
        {
          if ((v246 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_185;
        }

        v113 = &v51[v53];
        bzero(v51, v246 - v52);
        a1[1] = v113;
      }

      v114 = *a1;
      v8 = v245;
      result = mgcl::muid::decompress(&a2[v14], v29, 0, 0, *a1, 8, v245);
      if (result)
      {
        return result;
      }

      v115 = a7;
      v116 = v245;
      do
      {
        v117 = *v114++;
        if (v117 != -v21 && *v115)
        {
          *v115 = -*v115;
        }

        v115 += 2;
        --v116;
      }

      while (v116);
      goto LABEL_132;
    }

    if (!a1[3])
    {
      operator new();
    }

    *(&v257 + 6) = 0x100000000010000;
    v256 = 0;
    BYTE4(v256) = a4;
    BYTE5(v256) = a5;
    DWORD1(v257) = v8;
    LODWORD(v257) = v29 - 2;
    if (v29 <= 1)
    {
      return 3;
    }

    v72 = a2[v14];
    v73 = v241[v50];
    v254 = 0;
    v74 = a1[1];
    v75 = &v74[-*a1];
    v76 = v8 - v75;
    if (v8 <= v75)
    {
      if (v8 < v75)
      {
        a1[1] = *a1 + v245;
      }
    }

    else
    {
      v77 = a1[2];
      if (v77 - v74 < v76)
      {
        if ((v245 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_185;
      }

      v118 = &v74[v76];
      v119 = v76;
      v120 = v73;
      bzero(v74, v119);
      v73 = v120;
      a1[1] = v118;
    }

    v121 = *a1;
    result = mgcl::iarray::Decoder::decompress(**a1[3], &v250[v50 + 3], &v256, v72, v73, &v254, *a1, *v15.i64, v12);
    v8 = v245;
    if (result)
    {
      return result;
    }

    v122 = a7;
    v123 = v245;
    do
    {
      v124 = *v121++;
      if (v21 + v124 && *v122)
      {
        *v122 = -*v122;
      }

      v122 += 2;
      --v123;
    }

    while (v123);
    v14 = v50 + 3 + v29 - 2;
    a2 = v250;
    goto LABEL_5;
  }

  if (v17 == 3)
  {
    v78 = *a1;
    if (a1[1] != *a1)
    {
      a1[1] = v78;
    }

    if (a1[2] - v78 < v246)
    {
      if ((v246 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_185:
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    for (j = 0; j != v8; ++j)
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = &a2[v14];
      do
      {
        v84 = v83[v81];
        v82 |= (v83[v81] & 0x7F) << v80;
        v85 = v81 + 1;
        if (v81 > 8)
        {
          break;
        }

        v80 += 7;
        ++v81;
      }

      while (v84 < 0);
      if (v82 != -v21 && *&a7[2 * j])
      {
        *&a7[2 * j] = -*&a7[2 * j];
      }

      v14 += v85;
    }

    goto LABEL_5;
  }

  if (v17 == 4)
  {
    operator new();
  }

  return result;
}

void sub_18677C43C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v2, 0x20C4093837F09);
  MEMORY[0x18CFD1E40](v1, 0x20C4093837F09);
  _Unwind_Resume(a1);
}

uint64_t FeatureStyleAttributes::poiType(FeatureStyleAttributes *this)
{
  v1 = *(this + 33);
  if (!*(this + 33))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = *this;
  v4 = *this;
  while (1)
  {
    v5 = *v4;
    v4 += 2;
    if (v5 == 5)
    {
      break;
    }

    if (v1 == ++v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v3[2 * v2 + 1] != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = *this;
  while (1)
  {
    v8 = *v7;
    v7 += 2;
    if (v8 == 6)
    {
      break;
    }

    if (v1 == ++v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3[2 * v6 + 1];
}

void ___ZL13_cacheMissErrv_block_invoke()
{
  v0 = MEMORY[0x1E696ABC0];
  v3 = GEOErrorReason(@"Tile Loader cache miss");
  v1 = [v0 GEOErrorWithCode:-8 userInfo:?];
  v2 = _cacheMissErr(void)::err;
  _cacheMissErr(void)::err = v1;
}

id GEOErrorReason(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E618];
  v6[0] = a1;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

void sub_18677D680(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_18677DE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18677DE4CLL);
  }

  _Unwind_Resume(a1);
}

void addr_obj::V1AddressObject::getSpokenAddress(addr_obj::V1AddressObject *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 383) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 45), *(this + 46));
  }

  else
  {
    *a2 = *(this + 15);
  }
}

uint64_t GEOPDLocalTimeRangeReadAllFrom(uint64_t a1, void *a2)
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

    if ((v12 >> 3) == 2)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      *(a1 + 8) |= 2u;
      while (1)
      {
        v29 = 0;
        v23 = objc_msgSend_position(a2) + 1;
        if (v23 >= objc_msgSend_position(a2) && (v24 = objc_msgSend_position(a2) + 1, v24 <= [a2 length]))
        {
          v25 = [a2 data];
          [v25 getBytes:&v29 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v22 |= (v29 & 0x7F) << v20;
        if ((v29 & 0x80) == 0)
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
      *(a1 + 4) = v26;
    }

    else if ((v12 >> 3) == 1)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(a1 + 8) |= 1u;
      while (1)
      {
        v30 = 0;
        v16 = objc_msgSend_position(a2) + 1;
        if (v16 >= objc_msgSend_position(a2) && (v17 = objc_msgSend_position(a2) + 1, v17 <= [a2 length]))
        {
          v18 = [a2 data];
          [v18 getBytes:&v30 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v15 |= (v30 & 0x7F) << v13;
        if ((v30 & 0x80) == 0)
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

uint64_t GEOPDHoursThresholdReadAllFrom(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_sync_enter(v3);
  if (v3)
  {
    v4 = objc_msgSend_position(v3);
    if (v4 < [v3 length])
    {
      while (1)
      {
        if ([v3 hasError])
        {
          goto LABEL_50;
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
          goto LABEL_50;
        }

        v14 = v7 >> 3;
        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 2u;
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
            v21 = v16++ > 8;
            if (v21)
            {
              v22 = 0;
              v23 = &OBJC_IVAR___GEOPDHoursThreshold__openingSoonMessageThresholdSecond;
              goto LABEL_48;
            }
          }

          v23 = &OBJC_IVAR___GEOPDHoursThreshold__openingSoonMessageThresholdSecond;
LABEL_45:
          if ([v3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v17;
          }

LABEL_48:
          *(a1 + *v23) = v22;
          goto LABEL_49;
        }

        if (!*(a1 + 8))
        {
          v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v30 = *(a1 + 8);
          *(a1 + 8) = v29;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_49:
        v31 = objc_msgSend_position(v3);
        if (v31 >= [v3 length])
        {
          goto LABEL_50;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 24) |= 1u;
      while (1)
      {
        v35 = 0;
        v26 = objc_msgSend_position(v3);
        if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
        {
          v28 = [v3 data];
          [v28 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v17 |= (v35 & 0x7F) << v24;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v21 = v25++ > 8;
        if (v21)
        {
          v22 = 0;
          v23 = &OBJC_IVAR___GEOPDHoursThreshold__closingSoonMessageThresholdSecond;
          goto LABEL_48;
        }
      }

      v23 = &OBJC_IVAR___GEOPDHoursThreshold__closingSoonMessageThresholdSecond;
      goto LABEL_45;
    }

LABEL_50:
    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_51:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

void *GEOPDCategoryReadSpecified(uint64_t a1, void *a2, int *a3)
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
    v12 = a3[v8];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v6 = 1;
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
    ++v8;
  }

  if (v12 == -2)
  {
    v6 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v6 = 1;
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
  v14 = v13 & ~v10 | v6;
  v15 = v10 | v13;
  LODWORD(v51) = v14;
  HIDWORD(v51) = v15 | v6;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v52 = (v16 == 0) | v15;
  v53 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v51);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_78:
      v26 = 1;
      goto LABEL_81;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v54[0]) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:v54 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v54[0] & 0x7F) << v18;
      if ((v54[0] & 0x80) == 0)
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
      goto LABEL_81;
    }

    v27 = v20 >> 3;
    v28 = v53;
    if ((v52 & 1) == 0)
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

    if (v27 == 5)
    {
      if (!v28)
      {
        goto LABEL_69;
      }

      if ((*(a1 + 56) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_80;
        }

        v8 += *(a1 + 56) << 29 >> 31;
      }

      else
      {
        v41 = PBReaderReadString();
        v42 = *(a1 + 24);
        *(a1 + 24) = v41;

        --v8;
      }

      goto LABEL_70;
    }

    if (v27 == 3)
    {
      break;
    }

    if (v27 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_69;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        LOBYTE(v54[0]) = 0;
        v36 = objc_msgSend_position(v3) + 1;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
        {
          v38 = [v3 data];
          [v38 getBytes:v54 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v35 |= (v54[0] & 0x7F) << v33;
        if ((v54[0] & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v24 = v34++ >= 9;
        if (v24)
        {
          v39 = 0;
          goto LABEL_75;
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

LABEL_75:
      *(a1 + 52) = v39;
    }

    else
    {
      if ((v51 & 1) == 0 || (*(a1 + 56) & 2) != 0)
      {
        goto LABEL_69;
      }

      if (!*(a1 + 16))
      {
        v43 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v44 = *(a1 + 16);
        *(a1 + 16) = v43;
      }

      if (!PBUnknownFieldAdd())
      {
        v26 = 0;
        v45 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
        goto LABEL_82;
      }
    }

LABEL_70:
    if (!(BYTE4(v51) & 1 | (v8 != 0)))
    {
      goto LABEL_78;
    }
  }

  if (!v28 || (*(a1 + 56) & 8) != 0)
  {
LABEL_69:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_70;
  }

  v54[0] = 0;
  v54[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_80;
  }

  v40 = objc_alloc_init(GEOLocalizedString);
  if (GEOLocalizedStringReadAllFrom(v40, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDCategory *)a1 _addNoFlagsLocalizedName:v40];

    goto LABEL_70;
  }

LABEL_80:
  v26 = 0;
LABEL_81:
  v45 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v51 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_82:
  *(a1 + v45[887]) |= 2u;
LABEL_83:
  if (v53 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v45[887]) |= 8u;
    *(a1 + v45[887]) |= 4u;
    goto LABEL_93;
  }

  if (v16)
  {
    while (1)
    {
      v47 = *v16++;
      v46 = v47;
      if (v47 == 3)
      {
        break;
      }

      if (v46 == 5)
      {
        v48 = 4;
LABEL_92:
        *(a1 + v45[887]) |= v48;
        continue;
      }

      if (!v46)
      {
        goto LABEL_93;
      }
    }

    v48 = 8;
    goto LABEL_92;
  }

LABEL_93:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v53)
  {
    v49 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void addr_obj::V1AddressObject::~V1AddressObject(addr_obj::V1AddressObject *this)
{
  *this = &unk_1EF7DFAC0;
  v2 = *(this + 90);
  *(this + 90) = 0;
  if (v2)
  {
    addr_obj::VenueInfo::~VenueInfo(v2);
    MEMORY[0x18CFD1E40]();
  }

  addr_obj::geo3::Address::~Address((this + 656));
  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  addr_obj::geo3::StructuredAddress::~StructuredAddress((this + 384));
  if (*(this + 383) < 0)
  {
    operator delete(*(this + 45));
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  addr_obj::geo3::Address::~Address((this + 272));
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  addr_obj::AddressObjectBase::~AddressObjectBase(this);
}

{
  addr_obj::V1AddressObject::~V1AddressObject(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t std::__shared_ptr_pointer<addr_obj::V1AddressObject *,std::shared_ptr<addr_obj::V1AddressObject>::__shared_ptr_default_delete<addr_obj::V1AddressObject,addr_obj::V1AddressObject>,std::allocator<addr_obj::V1AddressObject>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void addr_obj::AddressObjectBase::~AddressObjectBase(void **this)
{
  *this = &unk_1EF7DF790;
  addr_obj::AddressObjectProto::~AddressObjectProto((this + 17));
  v2 = this + 14;
  std::vector<addr_obj::Fingerprints::Fingerprint>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

id _cacheMissErr(void)
{
  if (_cacheMissErr(void)::onceToken != -1)
  {
    dispatch_once(&_cacheMissErr(void)::onceToken, &__block_literal_global_474);
  }

  v1 = _cacheMissErr(void)::err;

  return v1;
}

void sub_1867810EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_186743E68(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        v5 = v4[13];
        if (v5)
        {
          v4[14] = v5;
          operator delete(v5);
        }

        v6 = v4[10];
        if (v6)
        {
          v4[11] = v6;
          operator delete(v6);
        }

        MEMORY[0x18CFD1E40](v4, 0x1070C40ADA6D0DELL);
      }

      MEMORY[0x18CFD1E40](v3, 0x20C4093837F09);
    }

    MEMORY[0x18CFD1E40](v2, 0x20C4093837F09);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void std::__function::__func<geo::codec::_readStyleAttributeRasters(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&,BOOL)::$_0,std::allocator<geo::codec::_readStyleAttributeRasters(VMP4Tile *,GeoCodecsTileKey const*,std::shared_ptr<geo::codec::VectorTile> const&,BOOL)::$_0>,void ()(VMP4Chapter *)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = v4[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (**(a1 + 16) >= (*(**(a1 + 8) + 2792) + 24 * **(a1 + 24)))
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = 9974;
    goto LABEL_11;
  }

  v40 = 0;
  v8 = geo::codec::chapterReadVarUint32(v3, &v40);
  if ((v8 & 1) == 0)
  {
    v12 = *MEMORY[0x1E69E9848];
    v13 = 9977;
    goto LABEL_11;
  }

  if (**(a1 + 32) != 1 || v40 != 71)
  {
    v9 = **(a1 + 16);
    *(v9 + 12) = v40;
    v10 = v3[6];
    v11 = v10 + 1;
    if ((v10 + 1) <= v3[7])
    {
      v19 = *(v3[5] + v10);
      v3[6] = v11;
      if (v19 == 1)
      {
        v20 = 0;
      }

      else
      {
        if (v19 != 2)
        {
          v12 = *MEMORY[0x1E69E9848];
          v13 = 9993;
          goto LABEL_11;
        }

        v20 = 1;
      }

      *(v9 + 16) = v20;
      v39 = 0;
      v8 = geo::codec::chapterReadVarUint32(v3, &v39);
      if ((v8 & 1) == 0)
      {
        v12 = *MEMORY[0x1E69E9848];
        v13 = 9997;
        goto LABEL_11;
      }

      v21 = *(a1 + 16);
      v22 = *v21;
      if (*(*v21 + 16) == 1)
      {
        v38 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        v27 = v3[5];
        v28 = v3[6];
        v3[6] = v28 + v39;
        if (mgcl::raster::PolygonRasterDecoder<unsigned char>::decode(v33, (v27 + v28), &v35, 0))
        {
          fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 10013);
          v29 = v38;
          v8 = mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(v33);
          if (v29)
          {
            v8 = MEMORY[0x18CFD1E20](v29, 0x1000C8077774924);
          }

          goto LABEL_12;
        }

        v30 = v38;
        v38 = 0;
        v31 = **(a1 + 16);
        *v31 = v30;
        v32 = v35;
        LOWORD(v30) = v36;
        *(v31 + 18) = v36;
        *(v31 + 20) = v32;
        *(v31 + 8) = v32 * v30;
        v8 = mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(v33);
        v21 = *(a1 + 16);
        v22 = *v21;
      }

      else if (!*(*v21 + 16))
      {
        v23 = v39;
        v24 = geo::codec::zone_mallocator::instance(v8);
        v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v24, v23);
        ***(a1 + 16) = v25;
        v26 = v3[6];
        if (v26 + v23 > v3[7])
        {
          v12 = *MEMORY[0x1E69E9848];
          v13 = 10003;
          goto LABEL_11;
        }

        v8 = memcpy(v25, (v3[5] + v26), v23);
        v3[6] += v23;
        v21 = *(a1 + 16);
        v22 = *v21;
        *(*v21 + 8) = v23;
      }

      *v21 = v22 + 24;
      ++*(**(a1 + 8) + 2800);
      v14 = 1;
      goto LABEL_13;
    }

    v12 = *MEMORY[0x1E69E9848];
    v13 = 9986;
LABEL_11:
    v8 = fprintf(v12, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v13);
LABEL_12:
    v14 = 0;
LABEL_13:
    **(a1 + 48) &= v14;
  }

  if (**(a1 + 40) && v3)
  {
    if (*v3)
    {
      v15 = v3[5];
      v16 = geo::codec::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v16, v15);
    }

    v17 = geo::codec::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v17, v3);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v35 = 154;
  *&v33[0] = &v35;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v6 + 1920), &v35, v33) + 4) = ((rep - v7.__d_.__rep_) / 1000) * 0.001;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_186781CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  mgcl::raster::PolygonRasterDecoder<unsigned char>::~PolygonRasterDecoder(&a11);
  if (a21)
  {
    MEMORY[0x18CFD1E20](a21, 0x1000C8077774924);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  a18 = 154;
  a11 = &a18;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v23 + 1920), &a18, &a11) + 4) = ((rep - v22) / 1000) * 0.001;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  _Unwind_Resume(a1);
}

void *GEOPDAmenityValueReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 72));
  [v3 setLength:*(a1 + 68)];
  [v3 seekToOffset:*(a1 + 64)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 84)), 0xFFFAFFFCFFFDFFF9), 0x1000100010001)) + ((*(a1 + 84) >> 5) & 1) + ((*(a1 + 84) >> 2) & 1));
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

  v13 = v11 > 3;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v60) = v14;
  HIDWORD(v60) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v61 = (v16 == 0) | v15;
  v62 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v60);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_112:
      v26 = 1;
      goto LABEL_113;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v63[0]) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v63[0] & 0x7F) << v18;
      if ((v63[0] & 0x80) == 0)
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
      goto LABEL_113;
    }

    v27 = v20 >> 3;
    v28 = v62;
    if ((v61 & 1) == 0)
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

    if (v27 > 3)
    {
      break;
    }

    switch(v27)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_94;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 84) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v39 = objc_msgSend_position(v3) + 1;
          if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
          {
            v41 = [v3 data];
            [v41 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v38 |= (v63[0] & 0x7F) << v36;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v24 = v37++ >= 9;
          if (v24)
          {
            v42 = 0;
            goto LABEL_100;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_100:
        *(a1 + 76) = v42;
        goto LABEL_95;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_94;
        }

        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 84) |= 2u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v49 = objc_msgSend_position(v3) + 1;
          if (v49 >= objc_msgSend_position(v3) && (v50 = objc_msgSend_position(v3) + 1, v50 <= [v3 length]))
          {
            v51 = [v3 data];
            [v51 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v48 |= (v63[0] & 0x7F) << v46;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v24 = v47++ >= 9;
          if (v24)
          {
            v52 = 0;
            goto LABEL_102;
          }
        }

        v52 = (v48 != 0) & ~[v3 hasError];
LABEL_102:
        *(a1 + 80) = v52;
        goto LABEL_95;
      case 3:
        if (!v28)
        {
          goto LABEL_94;
        }

        if ((*(a1 + 84) & 0x80) == 0)
        {
          v34 = PBReaderReadString();
          v35 = 56;
LABEL_83:
          v45 = *(a1 + v35);
          *(a1 + v35) = v34;

          --v6;
          goto LABEL_95;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_138;
        }

        v53 = *(a1 + 84) << 8;
LABEL_111:
        v6 += v53 >> 15;
        goto LABEL_95;
    }

LABEL_71:
    if ((v60 & 1) == 0 || (*(a1 + 84) & 4) != 0)
    {
LABEL_94:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_95;
    }

    if (!*(a1 + 16))
    {
      v43 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v44 = *(a1 + 16);
      *(a1 + 16) = v43;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v59 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
      goto LABEL_114;
    }

LABEL_95:
    if (!(BYTE4(v60) & 1 | (v6 != 0)))
    {
      goto LABEL_112;
    }
  }

  if (v27 > 5)
  {
    if (v27 == 6)
    {
      if (!v28)
      {
        goto LABEL_94;
      }

      if ((*(a1 + 84) & 0x40) == 0)
      {
        v34 = PBReaderReadString();
        v35 = 48;
        goto LABEL_83;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_138;
      }

      v53 = *(a1 + 84) << 9;
      goto LABEL_111;
    }

    if (v27 == 7)
    {
      if (!v28)
      {
        goto LABEL_94;
      }

      if ((*(a1 + 84) & 0x20) == 0)
      {
        v34 = PBReaderReadString();
        v35 = 40;
        goto LABEL_83;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_138;
      }

      v53 = *(a1 + 84) << 10;
      goto LABEL_111;
    }

    goto LABEL_71;
  }

  if (v27 == 4)
  {
    if (!v28)
    {
      goto LABEL_94;
    }

    if ((*(a1 + 84) & 8) == 0)
    {
      v34 = PBReaderReadString();
      v35 = 24;
      goto LABEL_83;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_138;
    }

    v53 = *(a1 + 84) << 12;
    goto LABEL_111;
  }

  if (!v28 || (*(a1 + 84) & 0x10) != 0)
  {
    goto LABEL_94;
  }

  v63[0] = 0;
  v63[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_138;
  }

  v33 = objc_alloc_init(GEOLocalizedString);
  if (GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDAmenityValue *)a1 _addNoFlagsName:v33];

    goto LABEL_95;
  }

LABEL_138:
  v26 = 0;
LABEL_113:
  v59 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v60 & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_114:
  *(a1 + v59[665]) |= 4u;
LABEL_115:
  if (v62 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v59[665]) |= 0x80u;
    *(a1 + v59[665]) |= 8u;
    *(a1 + v59[665]) |= 0x10u;
    *(a1 + v59[665]) |= 0x40u;
    *(a1 + v59[665]) |= 0x20u;
    goto LABEL_131;
  }

  if (v16)
  {
    while (1)
    {
      v55 = *v16++;
      v54 = v55;
      if (v55 > 4)
      {
        switch(v54)
        {
          case 5:
            v56 = 16;
            break;
          case 6:
            v56 = 64;
            break;
          case 7:
            v56 = 32;
            break;
          default:
            continue;
        }

        goto LABEL_129;
      }

      if (v54 == 3)
      {
        break;
      }

      if (v54 == 4)
      {
        v56 = 8;
LABEL_129:
        *(a1 + v59[665]) |= v56;
        continue;
      }

      if (!v54)
      {
        goto LABEL_131;
      }
    }

    v56 = 128;
    goto LABEL_129;
  }

LABEL_131:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v62)
  {
    v57 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDAmenityValueReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDAmenityValueReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 72));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 64) = objc_msgSend_position(v8);
  *(a1 + 68) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDAmenityValueReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDAmenityValueReadAllFrom_initialTag;
  }

  Specified = GEOPDAmenityValueReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDAmenityValueCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void _GEOPDAmenityValueCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

uint64_t geo::codec::MercatorDequantizer::readInfo(uint64_t a1, void *a2)
{
  v2 = a2[6];
  v3 = a2[7];
  v4 = v2 + 2;
  if (v2 + 2 > v3)
  {
    return 0;
  }

  v5 = a2[5];
  *a1 = *(v5 + v2);
  a2[6] = v4;
  v6 = v2 + 4;
  if (v2 + 4 > v3)
  {
    return 0;
  }

  v7 = *(v5 + v4);
  *(a1 + 2) = v7;
  a2[6] = v6;
  v8 = v2 + 8;
  if (v2 + 8 > v3)
  {
    return 0;
  }

  *(a1 + 4) = *(v5 + v6);
  a2[6] = v8;
  v9 = v2 + 10;
  if (v2 + 10 > v3)
  {
    return 0;
  }

  *(a1 + 8) = *(v5 + v8);
  a2[6] = v9;
  v10 = v2 + 12;
  if (v2 + 12 > v3)
  {
    return 0;
  }

  *(a1 + 10) = *(v5 + v9);
  a2[6] = v10;
  if (v2 + 16 > v3)
  {
    return 0;
  }

  v11 = *(v5 + v10);
  *(a1 + 12) = v11;
  v12 = a2[6];
  v13 = a2[7];
  a2[6] = v12 + 4;
  v14.f64[0] = v11;
  *(a1 + 16) = 1.0 / v11;
  v15 = v12 + 6;
  if (v12 + 6 > v13)
  {
    return 0;
  }

  v16 = a2[5];
  *(a1 + 40) = *(v16 + v12 + 4);
  a2[6] = v15;
  v17 = v12 + 8;
  if (v12 + 8 > v13)
  {
    return 0;
  }

  v18 = *(v16 + v15);
  *(a1 + 42) = v18;
  a2[6] = v17;
  v19 = v12 + 12;
  if (v19 > v13)
  {
    return 0;
  }

  *(a1 + 44) = *(v16 + v17);
  a2[6] = v19;
  *(a1 + 32) = 1.0 / (1 << (v18 - 1));
  v14.f64[1] = (1 << (v7 - 1));
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 16) = vdivq_f64(_Q1, v14);
  *(a1 + 48) = 1;
  return 1;
}

void _GEOPDAmenitiesCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
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
  v7 = *(a1 + 24);
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

uint64_t geo::codec::_readMaterials(geo::codec::zone_mallocator *a1, geo::codec::zone_mallocator *a2, const void **a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a2 + 1) = *a2;
  *(a4 + 8) = *a4;
  v6 = *a3;
  a3[1] = *a3;
  v7 = *(a1 + 6);
  if ((v7 + 2) <= *(a1 + 7))
  {
    v16 = *(*(a1 + 5) + v7);
    *(a1 + 6) = v7 + 2;
    v103 = v16;
    if (v16)
    {
      v17 = a3[2] - v6;
      if (v16 <= v17 >> 4)
      {
        bzero(v6, 16 * v16);
        a3[1] = &v6[16 * v16];
      }

      else
      {
        v18 = v17 >> 3;
        if (v17 >> 3 <= v16)
        {
          v18 = v16;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        v20 = geo::codec::zone_mallocator::instance(a1);
        v21 = pthread_rwlock_rdlock((v20 + 32));
        if (v21)
        {
          geo::read_write_lock::logFailure(v21, "read lock", v22);
        }

        v23 = malloc_type_zone_malloc(*v20, 16 * v19, 0x1022040A49EFF0CuLL);
        atomic_fetch_add((v20 + 24), 1u);
        v24 = pthread_rwlock_unlock((v20 + 32));
        if (v24)
        {
          geo::read_write_lock::logFailure(v24, "unlock", v25);
        }

        v26 = &v23[16 * v19];
        bzero(v23, 16 * v16);
        v27 = &v23[16 * v16];
        v28 = a3[1] - *a3;
        v29 = &v23[-v28];
        v30 = memcpy(v29, *a3, v28);
        v31 = *a3;
        *a3 = v29;
        a3[1] = v27;
        v16 = v103;
        a3[2] = v26;
        if (v31)
        {
          v32 = geo::codec::zone_mallocator::instance(v30);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Material>(v32, v31);
        }
      }
    }

    std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,geo::codec::zone_mallocator>>::reserve(a2, v16);
    if (v16 > (*(a4 + 16) - *a4) >> 3)
    {
      v34 = *(a4 + 8) - *a4;
      v35 = geo::codec::zone_mallocator::instance(v33);
      v36 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v35, v16);
      v37 = &v36[v34];
      v16 = &v36[8 * v103];
      v38 = *(a4 + 8) - *a4;
      v39 = &v37[-v38];
      v33 = memcpy(&v37[-v38], *a4, v38);
      v40 = *a4;
      *a4 = v39;
      *(a4 + 8) = v37;
      *(a4 + 16) = v16;
      LODWORD(v16) = v103;
      if (v40)
      {
        v41 = geo::codec::zone_mallocator::instance(v33);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long>(v41, v40);
      }
    }

    if (!v16)
    {
      return 1;
    }

    v42 = *a3;
    if (a6)
    {
      v42[8] = a6;
      v43 = *(a1 + 6);
      v44 = *(a1 + 7);
    }

    else
    {
      v45 = *(a1 + 6);
      v44 = *(a1 + 7);
      v43 = v45 + 1;
      if (v45 + 1 > v44)
      {
        v9 = 7605;
        goto LABEL_86;
      }

      v46 = *(*(a1 + 5) + v45);
      *(a1 + 6) = v43;
      v47 = *v42;
      v42[8] = v46 & 1;
      if ((v46 & 1) == 0)
      {
        v52 = geo::codec::zone_mallocator::instance(v33);
        v53 = pthread_rwlock_rdlock((v52 + 32));
        if (v53)
        {
          geo::read_write_lock::logFailure(v53, "read lock", v54);
        }

        v55 = malloc_type_zone_malloc(*v52, 0x28uLL, 0x102004062D5DD8CuLL);
        atomic_fetch_add((v52 + 24), 1u);
        v56 = pthread_rwlock_unlock((v52 + 32));
        if (v56)
        {
          geo::read_write_lock::logFailure(v56, "unlock", v57);
        }

        *v42 = v55;
        if (v55)
        {
          v58 = *(a1 + 6);
          v59 = *(a1 + 7);
          v60 = v58 + 8;
          if (v58 + 8 > v59)
          {
            v9 = 7619;
          }

          else
          {
            v61 = *(a1 + 5);
            *v47 = *(v61 + v58);
            *(a1 + 6) = v60;
            v62 = v58 + 10;
            if (v62 > v59)
            {
              v9 = 7620;
            }

            else
            {
              *(v47 + 8) = *(v61 + v60);
              *(a1 + 6) = v62;
              v63 = geo::codec::zone_mallocator::instance(v56);
              v64 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsDaVinciMaterial>(v63, 1);
              *(v47 + 16) = v64;
              if (v64)
              {
                Material = geo::codec::readMaterial(a1, v64, 0);
                if (Material)
                {
                  v66 = *(a1 + 6);
                  if ((v66 + 2) > *(a1 + 7))
                  {
                    v9 = 7628;
                  }

                  else
                  {
                    v67 = *(*(a1 + 5) + v66);
                    *(v47 + 10) = v67;
                    *(a1 + 6) = v66 + 2;
                    v68 = geo::codec::zone_mallocator::instance(Material);
                    v69 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsDaVinciMaterial>(v68, v67);
                    *(v47 + 24) = v69;
                    if (v69)
                    {
                      if (*(v47 + 10))
                      {
                        v70 = 0;
                        v71 = 0;
                        while (1)
                        {
                          v69 = geo::codec::readMaterial(a1, *(v47 + 24) + v70, 1);
                          if ((v69 & 1) == 0)
                          {
                            break;
                          }

                          ++v71;
                          v70 += 24;
                          if (v71 >= *(v47 + 10))
                          {
                            goto LABEL_46;
                          }
                        }

                        v9 = 7633;
                        goto LABEL_86;
                      }

LABEL_46:
                      v72 = *(a1 + 6);
                      if ((v72 + 1) > *(a1 + 7))
                      {
                        v9 = 7636;
                      }

                      else
                      {
                        v73 = *(*(a1 + 5) + v72);
                        *(v47 + 12) = v73;
                        ++*(a1 + 6);
                        v74 = geo::codec::zone_mallocator::instance(v69);
                        v75 = pthread_rwlock_rdlock((v74 + 32));
                        if (v75)
                        {
                          geo::read_write_lock::logFailure(v75, "read lock", v76);
                        }

                        v77 = malloc_type_zone_malloc(*v74, 16 * v73, 0x101004082113244uLL);
                        atomic_fetch_add((v74 + 24), 1u);
                        v78 = pthread_rwlock_unlock((v74 + 32));
                        if (v78)
                        {
                          geo::read_write_lock::logFailure(v78, "unlock", v79);
                        }

                        *(v47 + 32) = v77;
                        if (v77)
                        {
                          if (*(v47 + 12))
                          {
                            v80 = 0;
                            v81 = 0;
                            while (1)
                            {
                              v82 = (*(v47 + 32) + v80);
                              VarUint32 = geo::codec::chapterReadVarUint32(a1, v82);
                              if (!VarUint32)
                              {
                                break;
                              }

                              v84 = *v82;
                              v85 = geo::codec::zone_mallocator::instance(VarUint32);
                              v86 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v85, v84);
                              *(v82 + 1) = v86;
                              memcpy(v86, (*(a1 + 5) + *(a1 + 6)), *v82);
                              *(a1 + 6) += *v82;
                              ++v81;
                              v80 += 16;
                              if (v81 >= *(v47 + 12))
                              {
                                goto LABEL_69;
                              }
                            }

                            v9 = 7641;
                            goto LABEL_86;
                          }

                          goto LABEL_69;
                        }

                        v9 = 7638;
                      }
                    }

                    else
                    {
                      v9 = 7630;
                    }
                  }
                }

                else
                {
                  v9 = 7625;
                }
              }

              else
              {
                v9 = 7624;
              }
            }
          }
        }

        else
        {
          v9 = 7618;
        }

LABEL_86:
        v8 = *MEMORY[0x1E69E9848];
        goto LABEL_3;
      }
    }

    if (v43 + 8 <= v44)
    {
      *v42 = *(*(a1 + 5) + v43);
      *(a1 + 6) = v43 + 8;
      v48 = *v42;
      if (*v42)
      {
        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
        if (v50 >= v49)
        {
          v87 = *a2;
          v88 = v50 - *a2;
          v89 = v88 >> 3;
          v90 = (v88 >> 3) + 1;
          if (v90 >> 61)
          {
            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
          }

          v91 = v49 - v87;
          if (v91 >> 2 > v90)
          {
            v90 = v91 >> 2;
          }

          if (v91 >= 0x7FFFFFFFFFFFFFF8)
          {
            v92 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v92 = v90;
          }

          if (v92)
          {
            v93 = geo::codec::zone_mallocator::instance(v33);
            v94 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v93, v92);
            v87 = *a2;
            v88 = *(a2 + 1) - *a2;
            v95 = v88 >> 3;
            v48 = *v42;
          }

          else
          {
            v94 = 0;
            v95 = v88 >> 3;
          }

          v96 = &v94[8 * v89];
          v97 = &v94[8 * v92];
          v98 = &v96[-8 * v95];
          *v96 = v48;
          v51 = v96 + 8;
          v99 = memcpy(v98, v87, v88);
          v100 = *a2;
          *a2 = v98;
          *(a2 + 1) = v51;
          *(a2 + 2) = v97;
          if (v100)
          {
            v101 = geo::codec::zone_mallocator::instance(v99);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v101, v100);
          }
        }

        else
        {
          *v50 = v48;
          v51 = v50 + 1;
        }

        *(a2 + 1) = v51;
      }

LABEL_69:
      v102 = *(a1 + 6);
      if ((v102 + 1) <= *(a1 + 7))
      {
        *(a1 + 6) = v102 + 1;
        operator new();
      }

      v9 = 7648;
      goto LABEL_86;
    }

    v9 = 7612;
    goto LABEL_86;
  }

  v8 = *MEMORY[0x1E69E9848];
  v9 = 7595;
LABEL_3:
  fprintf(v8, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v9);
  return 0;
}

void sub_186783880(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *GEOPDModuleReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDModuleReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDModuleReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDModuleReadAllFrom_initialTag;
  }

  Specified = GEOPDModuleReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 32) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void _GEOPDRelatedPlaceCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
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

void *GEOPDUserReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDUserReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDUserReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDUserReadAllFrom_initialTag;
  }

  Specified = GEOPDUserReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [(GEOPDPhoto *)*(a1 + 24) readAll:?];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDUserReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 52) >> 1) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 2) & 1);
  while (1)
  {
    v12 = a3[v8];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v6 = 1;
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
    ++v8;
  }

  if (v12 == -2)
  {
    v6 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v6 = 1;
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
  v14 = v10 | v13;
  v43 = v13 & ~v10 | v6;
  v44 = v10 | v13 | v6;
  if (((v10 | v13) | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  while (1)
  {
    v16 = objc_msgSend_position(v3);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_66:
      v25 = 1;
      goto LABEL_69;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v45[0]) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:v45 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v45[0] & 0x7F) << v17;
      if ((v45[0] & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      if (v18++ >= 9)
      {
        v19 = 0;
        goto LABEL_32;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_32:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_69;
    }

    v26 = v19 >> 3;
    v27 = v14;
    if (!((v15 == 0) | v14 & 1))
    {
      v28 = v15;
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
      break;
    }

    if (v26 == 1)
    {
      if (!v27)
      {
        goto LABEL_58;
      }

      if ((*(a1 + 52) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_68;
        }

        v37 = 32 * *(a1 + 52);
LABEL_64:
        v8 += v37 >> 7;
        goto LABEL_65;
      }

      v32 = PBReaderReadString();
      v33 = *(a1 + 32);
      *(a1 + 32) = v32;
      goto LABEL_51;
    }

    if (v43 & 1) == 0 || (*(a1 + 52))
    {
LABEL_58:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      v38 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_70;
    }

LABEL_65:
    if (!(v44 & 1 | (v8 != 0)))
    {
      goto LABEL_66;
    }
  }

  if (!v27)
  {
    goto LABEL_58;
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_68;
    }

    v37 = *(a1 + 52) << 6;
    goto LABEL_64;
  }

  v45[0] = 0;
  v45[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_68;
  }

  v34 = objc_alloc_init(GEOPDPhoto);
  if (GEOPDPhotoReadAllFrom(v34, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v33 = *(a1 + 24);
    *(a1 + 24) = v34;
LABEL_51:

    --v8;
    goto LABEL_65;
  }

LABEL_68:
  v25 = 0;
LABEL_69:
  v38 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v43 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_70:
  *(a1 + v38[731]) |= 1u;
LABEL_71:
  if (v14 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v38[731]) |= 4u;
    *(a1 + v38[731]) |= 2u;
    goto LABEL_80;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v40 = *v15++;
        v39 = v40;
        if (v40 == 1)
        {
          break;
        }

        if (v39 == 2)
        {
          goto LABEL_79;
        }

        if (!v39)
        {
          goto LABEL_80;
        }
      }

      LOBYTE(v39) = 4;
LABEL_79:
      *(a1 + v38[731]) |= v39;
      continue;
    }
  }

LABEL_80:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_84:
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_84;
    }
  }

  return v3;
}

void _GEOPDRatingCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 24);
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
  v7 = *(a1 + 40);
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

void std::vector<gcl::Vector3<int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) < a2)
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2) + a2;
    if (v7 > 0x1555555555555555)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-(v4 - v5)];
    if (v5 != v4)
    {
      v15 = v4 - v5 - 12;
      v16 = v5;
      v17 = &v11[-(v4 - v5)];
      if (v15 > 0xB3)
      {
        v18 = v15 / 0xC;
        v19 = 12 * (v15 / 0xC);
        v20 = v14 >= &v5[v19 + 12] || v5 >= v6 - 4 * ((v4 - v5) >> 2) + v19 + 12;
        v16 = v5;
        v17 = &v11[-(v4 - v5)];
        if (v20)
        {
          v21 = v18 + 1;
          v22 = (v18 + 1) & 0x3FFFFFFFFFFFFFF8;
          v16 = &v5[12 * v22];
          v23 = v5;
          v24 = &v11[-(v4 - v5)];
          v25 = v22;
          do
          {
            v26 = *(v23 + 1);
            v28 = *(v23 + 4);
            v27 = *(v23 + 5);
            v29 = *(v23 + 2);
            v30 = *(v23 + 3);
            *v24 = *v23;
            *(v24 + 1) = v26;
            *(v24 + 2) = v29;
            *(v24 + 3) = v30;
            *(v24 + 4) = v28;
            *(v24 + 5) = v27;
            v24 += 96;
            v23 += 96;
            v25 -= 8;
          }

          while (v25);
          if (v21 == v22)
          {
            *a1 = v14;
            *(a1 + 8) = v13;
            *(a1 + 16) = 0;
LABEL_28:

            operator delete(v5);
            return;
          }

          v17 = (v14 + 12 * v22);
        }
      }

      do
      {
        *v17 = *v16;
        *(v17 + 1) = *(v16 + 1);
        *(v17 + 2) = *(v16 + 2);
        v16 += 12;
        v17 += 12;
      }

      while (v16 != v4);
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_28;
  }

  if (a2)
  {
    v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(*(a1 + 8), v10);
    v4 += v10;
  }

  *(a1 + 8) = v4;
}

void _GEOPDReviewCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 56);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) readAll:{1, v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(GEOPDUser *)*(a1 + 48) readAll:?];
  [(GEOPDRating *)*(a1 + 24) readAll:?];
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t a2, void *a3)
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

void *GEOPDPhotoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPhotoReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPhotoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPhotoReadAllFrom_initialTag;
  }

  Specified = GEOPDPhotoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPhotoCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void _GEOPDPhotoCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v6;
    while (1)
    {
      if (*v6 != v4)
      {
        objc_enumerationMutation(v1);
      }

      if (!--v3)
      {
        v3 = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
        if (!v3)
        {
          break;
        }
      }
    }
  }
}

uint64_t geo::codec::decodeZoomRanks(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2];
  v4 = v3 + 1;
  v5 = 8 * a1[1];
  if (v3 + 1 > v5)
  {
    return 0;
  }

  v8 = *a1;
  v9 = *(*a1 + (v3 >> 3));
  a1[2] = v4;
  if ((v9 >> (~v3 & 7)))
  {
    if (v3 + 6 > v5)
    {
      return 0;
    }

    v10 = 0;
    v11 = 5;
    do
    {
      v12 = 8 - (v4 & 7);
      if (v11 < v12)
      {
        v12 = v11;
      }

      v10 = (*(v8 + (v4 >> 3)) >> (8 - (v4 & 7) - v12)) & ~(-1 << v12) | (v10 << v12);
      v4 += v12;
      a1[2] = v4;
      v11 -= v12;
    }

    while (v11);
    v13 = (v10 + 1);
    if (v4 + v13 > v5)
    {
      return 0;
    }

    if (v10 == -1)
    {
      v16 = 0.0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = 8 - (v4 & 7);
        if (v13 < v15)
        {
          v15 = v13;
        }

        v14 = (*(v8 + (v4 >> 3)) >> (8 - (v4 & 7) - v15)) & ~(-1 << v15) | (v14 << v15);
        v4 += v15;
        a1[2] = v4;
        v13 -= v15;
      }

      while (v13);
      v16 = v14;
    }

    if (v4 + 5 > v5)
    {
      return 0;
    }

    v20 = 0;
    v21 = 5;
    do
    {
      v22 = 8 - (v4 & 7);
      if (v21 < v22)
      {
        v22 = v21;
      }

      v20 = (*(v8 + (v4 >> 3)) >> (8 - (v4 & 7) - v22)) & ~(-1 << v22) | (v20 << v22);
      v4 += v22;
      a1[2] = v4;
      v21 -= v22;
    }

    while (v21);
    v23 = (v20 + 1);
    if (v4 + v23 > v5)
    {
      return 0;
    }

    if (v20 == -1)
    {
      v26 = 0.0;
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = 8 - (v4 & 7);
        if (v23 < v25)
        {
          v25 = v23;
        }

        v24 = (*(v8 + (v4 >> 3)) >> (8 - (v4 & 7) - v25)) & ~(-1 << v25) | (v24 << v25);
        v4 += v25;
        a1[2] = v4;
        v23 -= v25;
      }

      while (v23);
      v26 = v24;
    }

    if (v4 + 5 > v5)
    {
      return 0;
    }

    v28 = 0;
    v29 = 5;
    do
    {
      v30 = 8 - (v4 & 7);
      if (v29 < v30)
      {
        v30 = v29;
      }

      v28 = (*(v8 + (v4 >> 3)) >> (8 - (v4 & 7) - v30)) & ~(-1 << v30) | (v28 << v30);
      v4 += v30;
      a1[2] = v4;
      v29 -= v30;
    }

    while (v29);
    if (a2)
    {
      v31 = 0;
      v32 = (v28 + 1);
      v33 = 1.0 / v16;
      v34 = a1;
      while (1)
      {
        v35 = a1[2];
        v36 = v35 + 1;
        v37 = 8 * a1[1];
        if (v35 + 1 > v37)
        {
          return 0;
        }

        v38 = *a1;
        v39 = *(*a1 + (v35 >> 3));
        a1[2] = v36;
        if ((v39 >> (~v35 & 7)))
        {
          if (v36 + v32 > v37)
          {
            return 0;
          }

          if (v32)
          {
            v40 = 0;
            v41 = v32;
            do
            {
              v42 = 8 - (v36 & 7);
              if (v41 < v42)
              {
                v42 = v41;
              }

              v40 = (*(v38 + (v36 >> 3)) >> (8 - (v36 & 7) - v42)) & ~(-1 << v42) | (v40 << v42);
              v36 += v42;
              a1[2] = v36;
              v41 -= v42;
            }

            while (v41);
            v43 = v40;
          }

          else
          {
            v43 = 0.0;
          }

          v46 = v31;
          v45 = (v43 + v26) * v33;
        }

        else
        {
          v46 = v31;
          v45 = 100.0;
        }

        v44 = *(a3 + 24);
        if (!v44)
        {
          goto LABEL_58;
        }

        (*(*v44 + 48))(v44, &v46, &v45);
        ++v31;
        v19 = 1;
        a1 = v34;
        if (v31 == a2)
        {
          return v19;
        }
      }
    }
  }

  else if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v46 = i;
      v45 = 100.0;
      v18 = *(a3 + 24);
      if (!v18)
      {
LABEL_58:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v18 + 48))(v18, &v46, &v45);
    }
  }

  return 1;
}

float std::__function::__func<geo::codec::_readPois(VMP4Tile *,GeoCodecsVMP4DecodingOptions const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0,std::allocator<geo::codec::_readPois(VMP4Tile *,GeoCodecsVMP4DecodingOptions const&,std::shared_ptr<geo::codec::VectorTile> const&)::$_0>,void ()(unsigned long,float)>::operator()(uint64_t a1, void *a2, float *a3)
{
  result = *a3;
  *(*(**(a1 + 8) + 504) + 224 * *a2 + 164) = *a3;
  return result;
}

void *GEOPDLocalizedAddressReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDLocalizedAddressReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDLocalizedAddressReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDLocalizedAddressReadAllFrom_initialTag;
  }

  Specified = GEOPDLocalizedAddressReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 24) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDLocalizedAddressReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 52) >> 1) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 2) & 1);
  while (1)
  {
    v12 = a3[v8];
    if (v12 > -3)
    {
      break;
    }

    if (v12 == -4)
    {
      ++v11;
      v6 = 1;
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
    ++v8;
  }

  if (v12 == -2)
  {
    v6 = 1;
    goto LABEL_11;
  }

  if (v12 == -1)
  {
    v6 = 1;
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
  v14 = v10 | v13;
  v44 = v13 & ~v10 | v6;
  v45 = v10 | v13 | v6;
  if (((v10 | v13) | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  while (1)
  {
    v16 = objc_msgSend_position(v3);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_66:
      v25 = 1;
      goto LABEL_69;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v46[0]) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:v46 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v46[0] & 0x7F) << v17;
      if ((v46[0] & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      if (v18++ >= 9)
      {
        v19 = 0;
        goto LABEL_32;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_32:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_69;
    }

    v26 = v19 >> 3;
    v27 = v14;
    if (!((v15 == 0) | v14 & 1))
    {
      v28 = v15;
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

    if (v26 == 3)
    {
      break;
    }

    if (v26 == 1)
    {
      if (!v27)
      {
        goto LABEL_58;
      }

      if ((*(a1 + 52) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_68;
        }

        v37 = 32 * *(a1 + 52);
LABEL_64:
        v8 += v37 >> 7;
        goto LABEL_65;
      }

      v32 = PBReaderReadString();
      v33 = *(a1 + 32);
      *(a1 + 32) = v32;
      goto LABEL_51;
    }

    if (v44 & 1) == 0 || (*(a1 + 52))
    {
LABEL_58:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      v38 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_70;
    }

LABEL_65:
    if (!(v45 & 1 | (v8 != 0)))
    {
      goto LABEL_66;
    }
  }

  if (!v27)
  {
    goto LABEL_58;
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_68;
    }

    v37 = *(a1 + 52) << 6;
    goto LABEL_64;
  }

  v46[0] = 0;
  v46[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_68;
  }

  v34 = objc_alloc_init(GEOAddress);
  if (GEOAddressReadAllFrom(v34, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v33 = *(a1 + 24);
    *(a1 + 24) = v34;
LABEL_51:

    --v8;
    goto LABEL_65;
  }

LABEL_68:
  v25 = 0;
LABEL_69:
  v38 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v44 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_70:
  *(a1 + v38[775]) |= 1u;
LABEL_71:
  if (v14 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v38[775]) |= 4u;
    *(a1 + v38[775]) |= 2u;
    goto LABEL_81;
  }

  if (v15)
  {
    while (1)
    {
      v40 = *v15++;
      v39 = v40;
      if (v40 == 1)
      {
        break;
      }

      if (v39 == 3)
      {
        v41 = 2;
LABEL_80:
        *(a1 + v38[775]) |= v41;
        continue;
      }

      if (!v39)
      {
        goto LABEL_81;
      }
    }

    v41 = 4;
    goto LABEL_80;
  }

LABEL_81:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_85:
    v42 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_85;
    }
  }

  return v3;
}

void _GEOPDAddressCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = a1[3];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(GEOPDLocalizedAddress *)*(*(&v25 + 1) + 8 * v6++) readAll:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a1[4];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v21 + 1) + 8 * v11++) readAll:1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = a1[5];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(GEOPDLocalizedSpokenStructuredAddress *)*(*(&v17 + 1) + 8 * v16++) readAll:?];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v14);
  }
}

uint64_t geo::codec::decodeVertices(uint64_t a1, geo::codec::zone_mallocator **a2, geo::codec::zone_mallocator **a3, int a4)
{
  result = geo::codec::chapterReadVarUint32(a1, &v144);
  if (result)
  {
    result = geo::codec::chapterReadVarUint32(a1, v145);
    if (result)
    {
      v10 = *(a1 + 48);
      v9 = *(a1 + 56);
      v11 = v9 - v10;
      if (v9 >= v10)
      {
        v12 = 0;
        *(a1 + 32) = 1;
        v13 = *(a1 + 40) + v10;
        *(a1 + 16) = v11;
        *(a1 + 24) = 0;
        *(a1 + 8) = v13;
      }

      else
      {
        v11 = *(a1 + 16);
        v12 = *(a1 + 24);
      }

      v14 = 8 * v11;
      if (v12 + 6 > v14)
      {
        return 0;
      }

      LODWORD(v15) = 0;
      v16 = *(a1 + 8);
      v17 = 6;
      do
      {
        v18 = 8 - (v12 & 7);
        if (v17 < v18)
        {
          v18 = v17;
        }

        v15 = (*(v16 + (v12 >> 3)) >> (8 - (v12 & 7) - v18)) & ~(-1 << v18) | (v15 << v18);
        v12 += v18;
        *(a1 + 24) = v12;
        v17 -= v18;
      }

      while (v17);
      v145[1] = v15;
      if (v12 + 6 > v14)
      {
        return 0;
      }

      LODWORD(v19) = 0;
      v20 = 6;
      do
      {
        v21 = 8 - (v12 & 7);
        if (v20 < v21)
        {
          v21 = v20;
        }

        v19 = (*(v16 + (v12 >> 3)) >> (8 - (v12 & 7) - v21)) & ~(-1 << v21) | (v19 << v21);
        v12 += v21;
        *(a1 + 24) = v12;
        v20 -= v21;
      }

      while (v20);
      v145[3] = v19;
      if (v12 + 4 > v14)
      {
        return 0;
      }

      LODWORD(v22) = 0;
      v23 = 4;
      do
      {
        v24 = 8 - (v12 & 7);
        if (v23 < v24)
        {
          v24 = v23;
        }

        v22 = (*(v16 + (v12 >> 3)) >> (8 - (v12 & 7) - v24)) & ~(-1 << v24) | (v22 << v24);
        v12 += v24;
        *(a1 + 24) = v12;
        v23 -= v24;
      }

      while (v23);
      v145[4] = v22;
      if (v12 + 1 > v14)
      {
        return 0;
      }

      v25 = *(v16 + (v12 >> 3));
      *(a1 + 24) = v12 + 1;
      result = 1;
      v26 = (1 << (~v12 & 7)) & v25;
      v27 = v26 != 0;
      v146 = v26 != 0;
      v145[2] = v15;
      v28 = v144;
      if (v144)
      {
        v29 = v145[0];
        if (v145[0])
        {
          *a2 = 0;
          *a3 = 0;
          if (!((v29 | v28) >> 20))
          {
            v141 = v28;
            v30 = geo::codec::zone_mallocator::instance(1);
            v143 = v26;
            if (v26)
            {
              v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsCurveVertexPool>(v30);
              *a2 = v31;
              *v31 = v15;
              *(v31 + 2) = v29;
              v32 = geo::codec::zone_mallocator::instance(v31);
              result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsTileCurveVertex>(v32, v29);
              v33 = *a2;
              *(*a2 + 1) = result;
              if (!result)
              {
                return result;
              }

              v34 = v141;
              *(v33 + 5) = v141;
              v35 = geo::codec::zone_mallocator::instance(result);
              result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsRange>(v35, v141);
              v36 = *a2;
            }

            else
            {
              result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsVertexPool>(v30);
              *a3 = result;
              if (!result)
              {
                return result;
              }

              *result = v15;
              *(result + 16) = v29;
              v37 = geo::codec::zone_mallocator::instance(result);
              result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsVectorTilePoint>(v37, v29);
              v38 = *a3;
              *(*a3 + 1) = result;
              if (!result)
              {
                return result;
              }

              v34 = v141;
              *(v38 + 5) = v141;
              v39 = geo::codec::zone_mallocator::instance(result);
              result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsRange>(v39, v141);
              v36 = *a3;
            }

            *(v36 + 4) = result;
            if (!result)
            {
              return result;
            }

            v40 = 0;
            v41 = 0;
            LODWORD(v42) = 0;
            v43 = 0;
            v44 = 0;
            v45 = 1.0 / ~(-1 << v15);
            v46 = v29;
            v47 = v143;
            do
            {
              v50 = v29 - v46;
              if (v42)
              {
                if (!v44)
                {
                  return 0;
                }

                v51 = v44;
                v52 = *(a1 + 24);
                v53 = 8 * *(a1 + 16);
                if (v52 + v44 > v53)
                {
                  return 0;
                }

                v54 = 0;
                v55 = *(a1 + 8);
                v56 = v44;
                do
                {
                  v57 = 8 - (v52 & 7);
                  if (v56 < v57)
                  {
                    v57 = v56;
                  }

                  v54 = (*(v55 + (v52 >> 3)) >> (8 - (v52 & 7) - v57)) & ~(-1 << v57) | (v54 << v57);
                  v52 += v57;
                  *(a1 + 24) = v52;
                  v56 -= v57;
                }

                while (v56);
                if (v52 + v44 > v53)
                {
                  return 0;
                }

                v58 = 0;
                v59 = v54 << -v44 >> -v44;
                do
                {
                  v60 = 8 - (v52 & 7);
                  if (v51 < v60)
                  {
                    v60 = v51;
                  }

                  v58 = (*(v55 + (v52 >> 3)) >> (8 - (v52 & 7) - v60)) & ~(-1 << v60) | (v58 << v60);
                  v52 += v60;
                  *(a1 + 24) = v52;
                  v51 -= v60;
                }

                while (v51);
                v61 = v58 << (32 - v44) >> (32 - v44);
                v47 = v143;
                if (v143)
                {
                  if (v52 + 1 > v53)
                  {
                    return 0;
                  }

                  v62 = *(v55 + (v52 >> 3));
                  *(a1 + 24) = v52 + 1;
                  v42 = (v42 - 1);
                  v40 += v61;
                  v41 += v59;
                  v63 = *(*a2 + 1) + 12 * v50;
                  *v63 = v45 * v41;
                  *(v63 + 4) = v45 * v40;
                  *(v63 + 8) = (v62 >> (~v52 & 7)) & 1;
                  v48 = 1;
                }

                else
                {
                  v48 = 0;
                  v42 = (v42 - 1);
                  v40 += v61;
                  v41 += v59;
                  v49 = (*(*a3 + 1) + 8 * v50);
                  *v49 = v45 * v41;
                  v49[1] = v45 * v40;
                }
              }

              else
              {
                v64 = *(a1 + 24);
                v65 = 8 * *(a1 + 16);
                if (v64 + v15 > v65)
                {
                  return 0;
                }

                v41 = 0;
                if (v15)
                {
                  v66 = *(a1 + 8);
                  v67 = v15;
                  do
                  {
                    v68 = 8 - (v64 & 7);
                    if (v67 < v68)
                    {
                      v68 = v67;
                    }

                    v41 = (*(v66 + (v64 >> 3)) >> (8 - (v64 & 7) - v68)) & ~(-1 << v68) | (v41 << v68);
                    v64 += v68;
                    *(a1 + 24) = v64;
                    v67 -= v68;
                  }

                  while (v67);
                  if (v64 + v15 > v65)
                  {
                    return 0;
                  }

                  v40 = 0;
                  v69 = v15;
                  do
                  {
                    v70 = 8 - (v64 & 7);
                    if (v69 < v70)
                    {
                      v70 = v69;
                    }

                    v40 = (*(v66 + (v64 >> 3)) >> (8 - (v64 & 7) - v70)) & ~(-1 << v70) | (v40 << v70);
                    v64 += v70;
                    *(a1 + 24) = v64;
                    v69 -= v70;
                  }

                  while (v69);
                }

                else
                {
                  v40 = 0;
                  if (v64 > v65)
                  {
                    return 0;
                  }
                }

                if (v64 + v19 > v65)
                {
                  return 0;
                }

                v42 = 0;
                if (v19)
                {
                  v71 = *(a1 + 8);
                  v72 = v19;
                  do
                  {
                    v73 = 8 - (v64 & 7);
                    if (v72 < v73)
                    {
                      v73 = v72;
                    }

                    v42 = (*(v71 + (v64 >> 3)) >> (8 - (v64 & 7) - v73)) & ~(-1 << v73) | (v42 << v73);
                    v64 += v73;
                    *(a1 + 24) = v64;
                    v72 -= v73;
                  }

                  while (v72);
                }

                if (v64 + v22 > v65)
                {
                  return 0;
                }

                v44 = 0;
                if (v22)
                {
                  v74 = *(a1 + 8);
                  v75 = v22;
                  do
                  {
                    v76 = 8 - (v64 & 7);
                    if (v75 < v76)
                    {
                      v76 = v75;
                    }

                    v44 = (*(v74 + (v64 >> 3)) >> (8 - (v64 & 7) - v76)) & ~(-1 << v76) | (v44 << v76);
                    v64 += v76;
                    *(a1 + 24) = v64;
                    v75 -= v76;
                  }

                  while (v75);
                }

                if (v43 >= v34)
                {
                  return 0;
                }

                v77 = (v42 + 1);
                v78 = v45 * v41;
                v79 = v45 * v40;
                if (v47)
                {
                  v80 = *a2;
                  v81 = (*(*a2 + 4) + 16 * v43);
                  *v81 = v50;
                  v81[1] = v77;
                  v82 = *(v80 + 1) + 12 * v50;
                  *v82 = v78;
                  *(v82 + 4) = v79;
                  *(v82 + 8) = 0;
                }

                else
                {
                  v83 = *a3;
                  v84 = (*(*a3 + 4) + 16 * v43);
                  *v84 = v50;
                  v84[1] = v77;
                  v85 = (*(v83 + 1) + 8 * v50);
                  *v85 = v78;
                  v85[1] = v79;
                }

                ++v43;
                v48 = v27;
              }

              --v46;
            }

            while (v46);
            v86 = *(a1 + 24);
            if (!a4)
            {
              v102 = *(a1 + 48) + (v86 >> 3);
              if ((*(a1 + 24) & 7) != 0)
              {
                ++v102;
              }

              *(a1 + 48) = v102;
              *(a1 + 32) = 0;
              if (v48)
              {
LABEL_101:
                v103 = *a2;
LABEL_102:
                *(v103 + 3) = 0;
                return 1;
              }

LABEL_99:
              v103 = *a3;
              goto LABEL_102;
            }

            v87 = v86 + 1;
            if (v87 <= 8 * *(a1 + 16))
            {
              *(a1 + 24) = v87;
              v88 = (v87 & 7) == 0;
              v89 = *(a1 + 56);
              v90 = *(a1 + 48) + (v87 >> 3);
              if (!v88)
              {
                ++v90;
              }

              *(a1 + 48) = v90;
              *(a1 + 32) = 0;
              v91 = v90 + 1;
              if (v90 + 1 <= v89)
              {
                v92 = *(*(a1 + 40) + v90);
                *(a1 + 48) = v91;
                if (v92)
                {
                  if (v143)
                  {
                    v93 = a2;
                  }

                  else
                  {
                    v93 = a3;
                  }

                  v94 = *(*v93 + 2);
                  v95 = geo::codec::zone_mallocator::instance(v42);
                  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v95, v94);
                  *(*v93 + 3) = result;
                  if (result)
                  {
                    v147 = 0;
                    v96 = *(a1 + 48);
                    if ((v96 + 8) <= *(a1 + 56))
                    {
                      v97 = result;
                      v98 = *(*(a1 + 40) + v96);
                      *(a1 + 48) = v96 + 8;
                      if (geo::codec::chapterReadVarInt64(a1, &v147))
                      {
                        v99 = *(a1 + 56);
                        v139 = *(a1 + 48);
                        v100 = v99 - v139;
                        if (v99 >= v139)
                        {
                          v101 = 0;
                          *(a1 + 32) = 1;
                          v104 = *(a1 + 40) + v139;
                          *(a1 + 16) = v100;
                          *(a1 + 24) = 0;
                          *(a1 + 8) = v104;
                        }

                        else
                        {
                          v100 = *(a1 + 16);
                          v101 = *(a1 + 24);
                        }

                        v105 = v101 + 1;
                        v106 = 8 * v100;
                        if (v101 + 1 <= 8 * v100)
                        {
                          v107 = *(a1 + 8);
                          v108 = *(v107 + (v101 >> 3));
                          *(a1 + 24) = v105;
                          if ((v108 >> (~v101 & 7)))
                          {
                            v147 = -v147;
                          }

                          if (v101 + 7 <= v106)
                          {
                            v109 = 0;
                            v110 = 6;
                            do
                            {
                              v111 = 8 - (v105 & 7);
                              if (v110 < v111)
                              {
                                v111 = v110;
                              }

                              v109 = (*(v107 + (v105 >> 3)) >> (8 - (v105 & 7) - v111)) & ~(-1 << v111) | (v109 << v111);
                              v105 += v111;
                              *(a1 + 24) = v105;
                              v110 -= v111;
                            }

                            while (v110);
                            if (v105 + 6 <= v106)
                            {
                              v112 = 0;
                              v138 = (v109 + 1);
                              v113 = 6;
                              do
                              {
                                v114 = 8 - (v105 & 7);
                                if (v113 < v114)
                                {
                                  v114 = v113;
                                }

                                v112 = (*(v107 + (v105 >> 3)) >> (8 - (v105 & 7) - v114)) & ~(-1 << v114) | (v112 << v114);
                                v105 += v114;
                                *(a1 + 24) = v105;
                                v113 -= v114;
                              }

                              while (v113);
                              v115 = 0;
                              v137 = (v112 + 1);
                              v116 = v141;
                              if (v141 <= 1)
                              {
                                v116 = 1;
                              }

                              v140 = v147;
                              v142 = v116;
                              while (1)
                              {
                                v117 = v143 ? *a2 : *a3;
                                v118 = (*(v117 + 4) + 16 * v115);
                                v119 = *v118;
                                v120 = v118[1];
                                if (v120 + v119 > *(v117 + 2))
                                {
                                  break;
                                }

                                v121 = v105 + 1;
                                if (v105 + 1 > v106)
                                {
                                  break;
                                }

                                v122 = *(v107 + (v105 >> 3));
                                *(a1 + 24) = v121;
                                if ((v122 >> (~v105 & 7)))
                                {
                                  if (v121 + v138 > v106)
                                  {
                                    return 0;
                                  }

                                  if (v138)
                                  {
                                    v123 = 0;
                                    v124 = v138;
                                    do
                                    {
                                      v125 = 8 - (v121 & 7);
                                      if (v124 < v125)
                                      {
                                        v125 = v124;
                                      }

                                      v123 = (*(v107 + (v121 >> 3)) >> (8 - (v121 & 7) - v125)) & ~(-1 << v125) | (v123 << v125);
                                      v121 += v125;
                                      *(a1 + 24) = v121;
                                      v124 -= v125;
                                    }

                                    while (v124);
                                  }

                                  else
                                  {
                                    v123 = 0;
                                  }

                                  v126 = v98 * (v140 + v123);
                                  *(v97 + 4 * v119) = v126;
                                  if (v121 + v137 > v106)
                                  {
                                    return 0;
                                  }

                                  if (v137)
                                  {
                                    v127 = 0;
                                    v128 = v137;
                                    do
                                    {
                                      v129 = 8 - (v121 & 7);
                                      if (v128 < v129)
                                      {
                                        v129 = v128;
                                      }

                                      v127 = (*(v107 + (v121 >> 3)) >> (8 - (v121 & 7) - v129)) & ~(-1 << v129) | (v127 << v129);
                                      v121 += v129;
                                      *(a1 + 24) = v121;
                                      v128 -= v129;
                                    }

                                    while (v128);
                                  }

                                  else
                                  {
                                    v127 = 0;
                                  }

                                  v130 = v119 + v120;
                                  v131 = v119 + 1;
                                  if (v131 < v130)
                                  {
                                    v105 = v121;
                                    while (v121 + v127 <= v106)
                                    {
                                      v133 = 0;
                                      if (v127)
                                      {
                                        v134 = v127;
                                        do
                                        {
                                          v135 = 8 - (v121 & 7);
                                          if (v134 < v135)
                                          {
                                            v135 = v134;
                                          }

                                          v133 = (*(v107 + (v121 >> 3)) >> (8 - (v121 & 7) - v135)) & ~(-1 << v135) | (v133 << v135);
                                          v121 += v135;
                                          *(a1 + 24) = v121;
                                          v134 -= v135;
                                        }

                                        while (v134);
                                        v133 = v133 << (32 - v127) >> (32 - v127);
                                        v105 = v121;
                                      }

                                      v123 += v133;
                                      v132 = v98 * (v140 + v123);
                                      *(v97 + 4 * v131++) = v132;
                                      if (v131 == v130)
                                      {
                                        goto LABEL_156;
                                      }
                                    }

                                    return 0;
                                  }
                                }

                                else if (v119 < v119 + v120)
                                {
                                  memset_pattern16((v97 + 4 * v119), &unk_187FBF460, 4 * v120);
                                }

                                v105 = v121;
LABEL_156:
                                if (++v115 == v142)
                                {
                                  v88 = (v105 & 7) == 0;
                                  v136 = v139 + (v105 >> 3);
                                  if (!v88)
                                  {
                                    ++v136;
                                  }

                                  *(a1 + 48) = v136;
                                  *(a1 + 32) = 0;
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    return 0;
                  }

                  return result;
                }

                if (v143)
                {
                  goto LABEL_101;
                }

                goto LABEL_99;
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void *GEOPDCategoryReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCategoryReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDCategoryReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCategoryReadAllFrom_initialTag;
  }

  Specified = GEOPDCategoryReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDCategoryCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void _GEOPDCategoryCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

uint64_t geo::codec::_makeSpaceForShields(geo::codec::zone_mallocator *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(*a3 + 1080);
  if (a1)
  {
    v8 = a1 + v5;
    *(v4 + 1080) = a1 + v5;
    v9 = *(v4 + 1072);
    v10 = geo::codec::zone_mallocator::instance(a1);
    v11 = pthread_rwlock_rdlock((v10 + 32));
    if (v9)
    {
      if (v11)
      {
        geo::read_write_lock::logFailure(v11, "read lock", v12);
      }

      atomic_fetch_add((v10 + 24), 0xFFFFFFFF);
      v13 = malloc_type_zone_realloc(*v10, v9, 32 * v8, 0x1050040F1953E24uLL);
      atomic_fetch_add((v10 + 24), 1u);
      v14 = pthread_rwlock_unlock((v10 + 32));
      if (v14)
      {
        geo::read_write_lock::logFailure(v14, "unlock", v15);
      }

      v16 = *a3;
      if (!v13)
      {
        v21 = *(v16 + 1072);
        v22 = geo::codec::zone_mallocator::instance(v14);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsShieldLabel>(v22, v21);
        v5 = 0;
        result = 0;
        *(*a3 + 1072) = 0;
        goto LABEL_17;
      }

      *(v16 + 1072) = v13;
      bzero(&v13[32 * v5], 32 * a1);
      if (*(*a3 + 1072))
      {
        goto LABEL_9;
      }

LABEL_15:
      v5 = 0;
      result = 0;
      goto LABEL_17;
    }

    if (v11)
    {
      geo::read_write_lock::logFailure(v11, "read lock", v12);
    }

    v18 = malloc_type_zone_calloc(*v10, v8, 0x20uLL, 0x1050040F1953E24uLL);
    atomic_fetch_add((v10 + 24), 1u);
    v19 = pthread_rwlock_unlock((v10 + 32));
    if (v19)
    {
      geo::read_write_lock::logFailure(v19, "unlock", v20);
    }

    *(*a3 + 1072) = v18;
    if (!v18)
    {
      goto LABEL_15;
    }
  }

LABEL_9:
  result = 1;
LABEL_17:
  *a2 = v5;
  return result;
}

void sub_186786DE4(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

uint64_t _GEOPDEntityCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v2 = a1[26];
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v45;
    do
    {
      v6 = 0;
      do
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v44 + 1) + 8 * v6++) readAll:1];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v4);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = a1[29];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v40 + 1) + 8 * v11++) readAll:1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = a1[20];
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v36 + 1) + 8 * v16++) readAll:1];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v14);
  }

  [a1[27] readAll:1];
  [a1[28] readAll:1];
  [a1[30] readAll:1];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = a1[12];
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      v21 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v32 + 1) + 8 * v21++) readAll:1];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v32 objects:v49 count:16];
    }

    while (v19);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = a1[24];
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      v26 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v28 + 1) + 8 * v26++) readAll:{1, v28}];
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v28 objects:v48 count:16];
    }

    while (v24);
  }

  [a1[19] readAll:1];
  [a1[16] readAll:1];
  return [a1[32] readAll:1];
}

void std::vector<GeoCodecsRoadFeature,geo::allocator_adapter<GeoCodecsRoadFeature,geo::codec::zone_mallocator>>::__append(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0xCF3CF3CF3CF3CF3DLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v16 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
      bzero(a1[1], v16);
      v4 += v16;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x186186186186186)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0xC30C30C30C30C3)
    {
      v8 = 0x186186186186186;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      v9 = a2;
      v10 = geo::codec::zone_mallocator::instance(a1);
      v11 = pthread_rwlock_rdlock((v10 + 32));
      if (v11)
      {
        geo::read_write_lock::logFailure(v11, "read lock", v12);
      }

      v13 = malloc_type_zone_malloc(*v10, 168 * v8, 0x107004019C6F429uLL);
      atomic_fetch_add((v10 + 24), 1u);
      v14 = pthread_rwlock_unlock((v10 + 32));
      if (v14)
      {
        geo::read_write_lock::logFailure(v14, "unlock", v15);
      }

      a2 = v9;
    }

    else
    {
      v13 = 0;
    }

    v17 = &v13[168 * v5];
    v18 = &v13[168 * v8];
    v19 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
    bzero(v17, v19);
    v21 = &v17[v19];
    v22 = *a1;
    v23 = a1[1];
    v24 = &v17[*a1 - v23];
    if (v23 != *a1)
    {
      v25 = *a1;
      v26 = v24;
      do
      {
        *v26 = *v25;
        *v25 = 0;
        *(v25 + 8) = 0;
        *(v26 + 1) = *(v25 + 16);
        *(v26 + 4) = *(v25 + 32);
        *(v25 + 24) = 0;
        *(v25 + 32) = 0;
        v27 = *(v25 + 40);
        v28 = *(v25 + 56);
        *(v26 + 18) = *(v25 + 72);
        *(v26 + 56) = v28;
        *(v26 + 40) = v27;
        v29 = *(v25 + 76);
        *(v26 + 92) = *(v25 + 92);
        *(v26 + 76) = v29;
        v30 = *(v25 + 104);
        v31 = *(v25 + 120);
        v32 = *(v25 + 136);
        *(v26 + 147) = *(v25 + 147);
        *(v26 + 136) = v32;
        *(v26 + 120) = v31;
        *(v26 + 104) = v30;
        v25 += 168;
        v26 += 168;
      }

      while (v25 != v23);
      while (1)
      {
        v33 = *(v22 + 4);
        if (v33)
        {
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v20 = *(v22 + 1);
        if (v20)
        {
          goto LABEL_26;
        }

LABEL_22:
        v22 += 168;
        if (v22 == v23)
        {
          v22 = *a1;
          goto LABEL_30;
        }
      }

      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v20 = *(v22 + 1);
      if (!v20)
      {
        goto LABEL_22;
      }

LABEL_26:
      std::__shared_weak_count::__release_weak(v20);
      goto LABEL_22;
    }

LABEL_30:
    *a1 = v24;
    a1[1] = v21;
    a1[2] = v18;
    if (v22)
    {
      v34 = geo::codec::zone_mallocator::instance(v20);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsRoadFeature>(v34, v22);
    }
  }
}