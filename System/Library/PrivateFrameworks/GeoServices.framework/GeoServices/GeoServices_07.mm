void std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::__rehash<true>(uint64_t a1, size_t __n)
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

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void *std::__hash_table<std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>,std::__unordered_map_hasher<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>,hashkey,eqkey,true>,std::__unordered_map_equal<_GEOTileKey,std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>,eqkey,hashkey,true>,std::allocator<std::__hash_value_type<_GEOTileKey,std::__list_iterator<CacheItem,void *>>>>::find<_GEOTileKey>(void *a1, void *a2)
{
  v4 = GEOTileKeyHash(a2);
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
        if (i[2] == *a2 && i[3] == a2[1])
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

void *GEOTileGroupReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 268))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOTileGroupReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 272));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 264) = objc_msgSend_position(v8);
  *(a1 + 268) = [v8 length];
  if (a3)
  {
    v9 = &GEOTileGroupReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOTileGroupReadAllFrom_initialTag;
  }

  Specified = GEOTileGroupReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 272));
  return Specified;
}

id GEOProtocolBufferRequestHeader(int a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  writeARPCPreamble(v7, a1, a2);
  [v7 writeBigEndianFixed32:a3];
  v8 = [v7 immutableData];

  objc_autoreleasePoolPop(v6);

  return v8;
}

uint64_t LoadItem::options(LoadItem *this)
{
  if (!*(this + 14))
  {
    return 0;
  }

  v1 = *(this + 13);
  if (!v1)
  {
    return 4620;
  }

  LOBYTE(result) = 0;
  v3 = 0;
  v4 = 0;
  LOBYTE(v5) = 1;
  LOBYTE(v6) = 1;
  LOBYTE(v7) = 1;
  LOBYTE(v8) = 1;
  do
  {
    v9 = v1[18];
    result = (v9 | result) & 1;
    v3 |= (v9 & 0x60) != 0;
    v10 = vorr_s8(vshl_u32(vdup_n_s32(v9), 0xFFFFFFF8FFFFFFFFLL), v4);
    v4 = vtst_s32(v10, 0x100000001);
    v8 = v8 & ((v9 & 8) != 0);
    v7 = v7 & ((v9 & 4) != 0);
    v6 = v6 & ((v9 & 0x200) != 0);
    v5 = v5 & ((v9 & 0x1000) != 0);
    v1 = *v1;
  }

  while (v1);
  v11 = vand_s8(v10, 0x100000001);
  v12 = vtst_s32(v11, v11);
  if (v12.i8[0])
  {
    if (v3)
    {
      result |= 0x22uLL;
    }

    else
    {
      result |= 2uLL;
    }
  }

  else if (v3)
  {
    result |= 0x20uLL;
  }

  if ((v12.i8[4] & 1) == 0)
  {
    if (v8)
    {
      result |= 8uLL;
      if ((v7 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (!v7)
    {
      goto LABEL_19;
    }

LABEL_24:
    if (v6)
    {
      result |= 0x204uLL;
      if ((v5 & 1) == 0)
      {
        return result;
      }

      return result | 0x1000;
    }

    result |= 4uLL;
    goto LABEL_28;
  }

  if ((v8 & 1) == 0)
  {
    result |= 0x100uLL;
    goto LABEL_23;
  }

  result |= 0x108uLL;
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v6)
  {
    result |= 0x200uLL;
    if ((v5 & 1) == 0)
    {
      return result;
    }

    return result | 0x1000;
  }

LABEL_28:
  if (v5)
  {
    return result | 0x1000;
  }

  return result;
}

unint64_t GEOTileKeyHash(void *a1)
{
  v1 = ~*a1 + (*a1 << 18);
  v2 = 65 * ((21 * (v1 ^ (v1 >> 31))) ^ ((21 * (v1 ^ (v1 >> 31))) >> 11));
  v3 = 21 * ((~a1[1] + (a1[1] << 18)) ^ ((~a1[1] + (a1[1] << 18)) >> 31));
  return v2 ^ (((65 * (v3 ^ (v3 >> 11))) ^ v2) >> 22) ^ (65 * (v3 ^ (v3 >> 11)));
}

void sub_1866A9FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t GEOTileKeyMakeOnline(_BYTE *a1)
{
  v1 = -97;
  if ((*a1 & 0x60) == 0)
  {
    v1 = -1;
  }

  return *a1 & v1;
}

void geo::_retain_ptr<GEOTileData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  *(a1 + 8) = v7;
}

double GEOCalculateDistanceRadius(double a1, double a2, double a3, double a4, double a5)
{
  v8 = (a4 - a2) * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = cos(a1 * 0.0174532925);
  v12 = v11 * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = atan2(sqrt(v10 + v12 * (v13 * v13)), sqrt(1.0 - (v10 + v12 * (v13 * v13))));
  return (v14 + v14) * a5;
}

void LoadItem::deleteRequester(int8x8_t *this, NSString *a2, int a3, char a4)
{
  v7 = a2;
  v26 = v7;
  v8 = std::__hash_table<std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,LoadItem::_NSStringHashFunc,LoadItem::_NSStringEqualsFunc,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,LoadItem::_NSStringEqualsFunc,LoadItem::_NSStringHashFunc,true>,std::allocator<std::__hash_value_type<NSString * {__strong},LoadItem::Requester>>>::find<NSString * {__strong}>(&this[11], &v26);
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = _Block_copy(v8[16]);
      v24 = *this->i8;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN8LoadItem15deleteRequesterEP8NSStringbb_block_invoke;
      block[3] = &unk_1E704EA58;
      v23 = v10;
      v25 = a4;
      v11 = v10;
      LoadItem::Requester::performAsyncOnCallbackQueue((v9 + 3), block);
    }

    v12 = this[12];
    v13 = v9[1];
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      if (v13 >= *&v12)
      {
        v13 = (v13 % *&v12);
      }
    }

    else
    {
      v13 = ((*&v12 - 1) & v13);
    }

    v15 = this[11];
    v16 = *(*&v15 + 8 * v13);
    do
    {
      v17 = v16;
      v16 = *v16;
    }

    while (v16 != v9);
    if (v17 == &this[13])
    {
      goto LABEL_21;
    }

    v18 = v17[1];
    if (v14.u32[0] > 1uLL)
    {
      if (*&v18 >= *&v12)
      {
        *&v18 %= *&v12;
      }
    }

    else
    {
      *&v18 &= *&v12 - 1;
    }

    if (v18 != v13)
    {
LABEL_21:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v19 = (*v9)[1];
      if (v14.u32[0] > 1uLL)
      {
        if (v19 >= *&v12)
        {
          v19 %= *&v12;
        }
      }

      else
      {
        v19 &= *&v12 - 1;
      }

      if (v19 != v13)
      {
LABEL_22:
        *(*&v15 + 8 * v13) = 0;
      }
    }

    v20 = *v9;
    if (*v9)
    {
      v21 = *(*&v20 + 8);
      if (v14.u32[0] > 1uLL)
      {
        if (v21 >= *&v12)
        {
          v21 %= *&v12;
        }
      }

      else
      {
        v21 &= *&v12 - 1;
      }

      if (v21 != v13)
      {
        *(*&this[11] + 8 * v21) = v17;
        v20 = *v9;
      }
    }

    *v17 = v20;
    *v9 = 0;
    --*&this[14];
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,void *>>>::operator()[abi:ne200100](1, v9);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,LoadItem::_NSStringHashFunc,LoadItem::_NSStringEqualsFunc,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,LoadItem::_NSStringEqualsFunc,LoadItem::_NSStringHashFunc,true>,std::allocator<std::__hash_value_type<NSString * {__strong},LoadItem::Requester>>>::find<NSString * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
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
      if ([i[2] isEqualToString:*a2])
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

void *GEOTileGroupReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 272));
  [v3 setLength:*(a1 + 268)];
  [v3 seekToOffset:*(a1 + 264)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = vdup_n_s16(*(a1 + 288));
  v11 = vaddv_s16(vand_s8(vshl_u16(v10, 0xFFFCFFF6FFF7FFF5), 0x1000100010001)) + ((*(a1 + 288) >> 6) & 1) + ((*(a1 + 288) >> 7) & 1) + ((*(a1 + 288) >> 12) & 1);
  v12 = vand_s8(vshl_u16(v10, 0xFFFEFFF8FFFDFFFBLL), 0x1000100010001);
  v12.i16[0] = vaddv_s16(v12);
  v13 = v12.i32[0] + v11;
  while (1)
  {
    v14 = a3[v6];
    if (v14 > -3)
    {
      break;
    }

    if (v14 == -4)
    {
      ++v13;
      v8 = 1;
      goto LABEL_12;
    }

    if (v14 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v13;
LABEL_12:
    ++v6;
  }

  if (v14 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = v13 > 7;
  v162 = v15 & ~v9 | v8;
  v16 = v9 | v15;
  if ((v9 | v15 | v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v18 = objc_msgSend_position(v3);
  if (v18 >= [v3 length])
  {
LABEL_296:
    v27 = 1;
    goto LABEL_297;
  }

  v164 = (v17 == 0) | v16;
  v165 = v16;
  v163 = (v6 != 0) | v16 | v8;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_296;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      LOBYTE(v166) = 0;
      v22 = objc_msgSend_position(v3) + 1;
      if (v22 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3) + 1, v23 <= [v3 length]))
      {
        v24 = [v3 data];
        [v24 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v21 |= (v166 & 0x7F) << v19;
      if ((v166 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      v25 = v20++ >= 9;
      if (v25)
      {
        v21 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v21 = 0;
    }

LABEL_30:
    v26 = [v3 hasError];
    v27 = 1;
    LOBYTE(v16) = v165;
    if (v26)
    {
      goto LABEL_297;
    }

    v28 = v21 & 7;
    if (v28 == 4)
    {
      goto LABEL_297;
    }

    v29 = v21 >> 3;
    v30 = v165;
    if ((v164 & 1) == 0)
    {
      v31 = v17;
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

    switch(v29)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_213;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v166) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v166 & 0x7F) << v35;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v25 = v36++ >= 9;
          if (v25)
          {
            v41 = 0;
LABEL_226:
            v106 = 276;
            goto LABEL_227;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

        goto LABEL_226;
      case 2:
        if (!v30 || (*(a1 + 288) & 0x800) != 0)
        {
          goto LABEL_213;
        }

        v166 = 0;
        v167 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_333;
        }

        [(GEOTileGroup *)a1 _reserveTileSets:?];
        if ((GEOVersionedTileSetReadAllFrom((*(a1 + 216) + 8 * *(a1 + 224)), v3) & 1) == 0)
        {
          goto LABEL_333;
        }

        PBReaderRecallMark();
        v91 = 224;
        goto LABEL_193;
      case 3:
        if (!v30 || (*(a1 + 288) & 0x200) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v131 = 0;
          v132 = 0;
          v133 = 0;
          v159 = 168;
          while (1)
          {
            LOBYTE(v166) = 0;
            v134 = objc_msgSend_position(v3, v159) + 1;
            if (v134 >= objc_msgSend_position(v3) && (v135 = objc_msgSend_position(v3) + 1, v135 <= [v3 length]))
            {
              v136 = [v3 data];
              [v136 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v133 |= (v166 & 0x7F) << v131;
            if ((v166 & 0x80) == 0)
            {
              goto LABEL_291;
            }

            v131 += 7;
            v25 = v132++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v84 = objc_msgSend_position(v3);
          if (v84 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_211;
          }

          v85 = 0;
          v86 = 0;
          v87 = 0;
          while (1)
          {
            v168 = 0;
            v88 = objc_msgSend_position(v3) + 1;
            if (v88 >= objc_msgSend_position(v3) && (v89 = objc_msgSend_position(v3) + 1, v89 <= [v3 length]))
            {
              v90 = [v3 data];
              [v90 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v87 |= (v168 & 0x7F) << v85;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v25 = v86++ >= 9;
            if (v25)
            {
              goto LABEL_160;
            }
          }

          [v3 hasError];
LABEL_160:
          PBRepeatedUInt32Add();
        }

      case 4:
        if (!v30 || (*(a1 + 288) & 0x400) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v125 = 0;
          v126 = 0;
          v127 = 0;
          v158 = 192;
          while (1)
          {
            LOBYTE(v166) = 0;
            v128 = objc_msgSend_position(v3, v158) + 1;
            if (v128 >= objc_msgSend_position(v3) && (v129 = objc_msgSend_position(v3) + 1, v129 <= [v3 length]))
            {
              v130 = [v3 data];
              [v130 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v127 |= (v166 & 0x7F) << v125;
            if ((v166 & 0x80) == 0)
            {
              goto LABEL_291;
            }

            v125 += 7;
            v25 = v126++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v75 = objc_msgSend_position(v3);
          if (v75 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_211;
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          while (1)
          {
            v168 = 0;
            v79 = objc_msgSend_position(v3) + 1;
            if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
            {
              v81 = [v3 data];
              [v81 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v78 |= (v168 & 0x7F) << v76;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v25 = v77++ >= 9;
            if (v25)
            {
              goto LABEL_137;
            }
          }

          [v3 hasError];
LABEL_137:
          PBRepeatedUInt32Add();
        }

      case 5:
        if (!v30 || (*(a1 + 288) & 0x10) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v156 = 48;
          while (1)
          {
            LOBYTE(v166) = 0;
            v116 = objc_msgSend_position(v3, v156) + 1;
            if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 1, v117 <= [v3 length]))
            {
              v118 = [v3 data];
              [v118 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v115 |= (v166 & 0x7F) << v113;
            if ((v166 & 0x80) == 0)
            {
              goto LABEL_291;
            }

            v113 += 7;
            v25 = v114++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v49 = objc_msgSend_position(v3);
          if (v49 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_211;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v168 = 0;
            v53 = objc_msgSend_position(v3) + 1;
            if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
            {
              v55 = [v3 data];
              [v55 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v52 |= (v168 & 0x7F) << v50;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v25 = v51++ >= 9;
            if (v25)
            {
              goto LABEL_83;
            }
          }

          [v3 hasError];
LABEL_83:
          PBRepeatedUInt32Add();
        }

      case 6:
        if (!v30 || (*(a1 + 288) & 0x40) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v119 = 0;
          v120 = 0;
          v121 = 0;
          v157 = 96;
          while (1)
          {
            LOBYTE(v166) = 0;
            v122 = objc_msgSend_position(v3, v157) + 1;
            if (v122 >= objc_msgSend_position(v3) && (v123 = objc_msgSend_position(v3) + 1, v123 <= [v3 length]))
            {
              v124 = [v3 data];
              [v124 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v121 |= (v166 & 0x7F) << v119;
            if ((v166 & 0x80) == 0)
            {
              goto LABEL_291;
            }

            v119 += 7;
            v25 = v120++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v62 = objc_msgSend_position(v3);
          if (v62 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_211;
          }

          v63 = 0;
          v64 = 0;
          v65 = 0;
          while (1)
          {
            v168 = 0;
            v66 = objc_msgSend_position(v3) + 1;
            if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
            {
              v68 = [v3 data];
              [v68 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v65 |= (v168 & 0x7F) << v63;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            v25 = v64++ >= 9;
            if (v25)
            {
              goto LABEL_110;
            }
          }

          [v3 hasError];
LABEL_110:
          PBRepeatedUInt32Add();
        }

      case 7:
        if (!v30 || (*(a1 + 288) & 0x80) != 0)
        {
          goto LABEL_213;
        }

        v166 = 0;
        v167 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_333;
        }

        [(GEOTileGroup *)a1 _reserveRegionalResourceIndexs:?];
        if ((GEORegionalResourceIndexReadAllFrom(*(a1 + 120) + 16 * *(a1 + 128), v3) & 1) == 0)
        {
          goto LABEL_333;
        }

        PBReaderRecallMark();
        v91 = 128;
        goto LABEL_193;
      case 8:
        if (!v30 || (*(a1 + 288) & 0x1000) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v137 = 0;
          v138 = 0;
          v139 = 0;
          v160 = 240;
          while (1)
          {
            LOBYTE(v166) = 0;
            v140 = objc_msgSend_position(v3, v160) + 1;
            if (v140 >= objc_msgSend_position(v3) && (v141 = objc_msgSend_position(v3) + 1, v141 <= [v3 length]))
            {
              v142 = [v3 data];
              [v142 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v139 |= (v166 & 0x7F) << v137;
            if ((v166 & 0x80) == 0)
            {
              goto LABEL_291;
            }

            v137 += 7;
            v25 = v138++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v92 = objc_msgSend_position(v3);
          if (v92 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_211;
          }

          v93 = 0;
          v94 = 0;
          v95 = 0;
          while (1)
          {
            v168 = 0;
            v96 = objc_msgSend_position(v3) + 1;
            if (v96 >= objc_msgSend_position(v3) && (v97 = objc_msgSend_position(v3) + 1, v97 <= [v3 length]))
            {
              v98 = [v3 data];
              [v98 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v95 |= (v168 & 0x7F) << v93;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            v25 = v94++ >= 9;
            if (v25)
            {
              goto LABEL_187;
            }
          }

          [v3 hasError];
LABEL_187:
          PBRepeatedUInt32Add();
        }

      case 10:
        if (!v30 || (*(a1 + 288) & 8) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v143 = 0;
          v144 = 0;
          v145 = 0;
          v161 = 24;
          while (1)
          {
            LOBYTE(v166) = 0;
            v146 = objc_msgSend_position(v3, v161) + 1;
            if (v146 >= objc_msgSend_position(v3) && (v147 = objc_msgSend_position(v3) + 1, v147 <= [v3 length]))
            {
              v148 = [v3 data];
              [v148 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v145 |= (v166 & 0x7F) << v143;
            if ((v166 & 0x80) == 0)
            {
              goto LABEL_291;
            }

            v143 += 7;
            v25 = v144++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v99 = objc_msgSend_position(v3);
          if (v99 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_211;
          }

          v100 = 0;
          v101 = 0;
          v102 = 0;
          while (1)
          {
            v168 = 0;
            v103 = objc_msgSend_position(v3) + 1;
            if (v103 >= objc_msgSend_position(v3) && (v104 = objc_msgSend_position(v3) + 1, v104 <= [v3 length]))
            {
              v105 = [v3 data];
              [v105 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v102 |= (v168 & 0x7F) << v100;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v25 = v101++ >= 9;
            if (v25)
            {
              goto LABEL_210;
            }
          }

          [v3 hasError];
LABEL_210:
          PBRepeatedUInt32Add();
        }

      case 11:
        if (!v30 || (*(a1 + 288) & 0x20) != 0)
        {
          goto LABEL_213;
        }

        v166 = 0;
        v167 = 0;
        if (PBReaderPlaceMark())
        {
          [(GEOTileGroup *)a1 _reserveHybridUnavailableRegions:?];
          if (GEOTileSetRegionReadAllFrom((*(a1 + 72) + 24 * *(a1 + 80)), v3))
          {
            PBReaderRecallMark();
            v91 = 80;
LABEL_193:
            ++*(a1 + v91);
LABEL_294:
            if ((v163 & 1) == 0)
            {
              goto LABEL_296;
            }

LABEL_295:
            v149 = objc_msgSend_position(v3);
            if (v149 >= [v3 length])
            {
              goto LABEL_296;
            }

            continue;
          }
        }

LABEL_333:
        v27 = 0;
LABEL_297:
        if (v162)
        {
LABEL_298:
          *(a1 + 288) |= 4u;
        }

        if (v16 & 1 | ((v27 & 1) == 0))
        {
          *(a1 + 288) |= 0x800u;
          *(a1 + 288) |= 0x200u;
          *(a1 + 288) |= 0x400u;
          *(a1 + 288) |= 0x10u;
          *(a1 + 288) |= 0x40u;
          *(a1 + 288) |= 0x80u;
          *(a1 + 288) |= 0x1000u;
          *(a1 + 288) |= 8u;
          *(a1 + 288) |= 0x20u;
          *(a1 + 288) |= 0x100u;
          goto LABEL_327;
        }

        if (v17)
        {
          while (1)
          {
            v151 = *v17++;
            v150 = v151;
            if (v151 > 6)
            {
              if (v150 <= 9)
              {
                if (v150 == 7)
                {
                  v152 = 128;
                }

                else
                {
                  if (v150 != 8)
                  {
                    continue;
                  }

                  v152 = 4096;
                }
              }

              else
              {
                switch(v150)
                {
                  case 10:
                    v152 = 8;
                    break;
                  case 11:
                    v152 = 32;
                    break;
                  case 12:
                    v152 = 256;
                    break;
                  default:
                    continue;
                }
              }

              goto LABEL_325;
            }

            if (v150 > 3)
            {
              switch(v150)
              {
                case 4:
                  v152 = 1024;
                  break;
                case 5:
                  v152 = 16;
                  break;
                case 6:
                  v152 = 64;
                  break;
                default:
                  continue;
              }

              goto LABEL_325;
            }

            if (v150 == 2)
            {
              break;
            }

            if (v150 == 3)
            {
              v152 = 512;
LABEL_325:
              *(a1 + 288) |= v152;
              continue;
            }

            if (!v150)
            {
              goto LABEL_327;
            }
          }

          v152 = 2048;
          goto LABEL_325;
        }

LABEL_327:
        if (v27)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v16 & 1) == 0)
          {
            return v3;
          }

LABEL_331:
          v153 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v16)
          {
            goto LABEL_331;
          }
        }

        return v3;
      case 12:
        if (!v30 || (*(a1 + 288) & 0x100) != 0)
        {
          goto LABEL_213;
        }

        if (v28 != 2)
        {
          v107 = 0;
          v108 = 0;
          v109 = 0;
          v155 = 144;
          while (1)
          {
            LOBYTE(v166) = 0;
            v110 = objc_msgSend_position(v3, v155) + 1;
            if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
            {
              v112 = [v3 data];
              [v112 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v109 |= (v166 & 0x7F) << v107;
            if ((v166 & 0x80) == 0)
            {
              break;
            }

            v107 += 7;
            v25 = v108++ >= 9;
            if (v25)
            {
              goto LABEL_292;
            }
          }

LABEL_291:
          [v3 hasError];
LABEL_292:
          PBRepeatedUInt32Add();
LABEL_293:
          LOBYTE(v16) = v165;
          goto LABEL_294;
        }

        v166 = 0;
        v167 = 0;
        v27 = PBReaderPlaceMark();
        if (!v27)
        {
          goto LABEL_297;
        }

        while (1)
        {
          v42 = objc_msgSend_position(v3);
          if (v42 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            break;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          while (1)
          {
            v168 = 0;
            v46 = objc_msgSend_position(v3) + 1;
            if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
            {
              v48 = [v3 data];
              [v48 getBytes:&v168 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v45 |= (v168 & 0x7F) << v43;
            if ((v168 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v25 = v44++ >= 9;
            if (v25)
            {
              goto LABEL_66;
            }
          }

          [v3 hasError];
LABEL_66:
          PBRepeatedUInt32Add();
        }

LABEL_211:
        PBReaderRecallMark();
        LOBYTE(v16) = v165;
        if ((v163 & 1) == 0)
        {
          goto LABEL_296;
        }

        goto LABEL_295;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_213;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 288) |= 1u;
        while (1)
        {
          LOBYTE(v166) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v166 & 0x7F) << v69;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v25 = v70++ >= 9;
          if (v25)
          {
            v41 = 0;
            goto LABEL_222;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v71;
        }

LABEL_222:
        v106 = 280;
        goto LABEL_227;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_213;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 288) |= 2u;
        while (1)
        {
          LOBYTE(v166) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v166 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v166 & 0x7F) << v56;
          if ((v166 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v25 = v57++ >= 9;
          if (v25)
          {
            v41 = 0;
            goto LABEL_218;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v58;
        }

LABEL_218:
        v106 = 284;
LABEL_227:
        *(a1 + v106) = v41;
        goto LABEL_293;
      default:
        if ((v162 & 1) == 0 || (*(a1 + 288) & 4) != 0)
        {
LABEL_213:
          v27 = PBReaderSkipValueWithTag();
          if ((v27 & v163 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_295;
        }

        if (!*(a1 + 16))
        {
          v82 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v83 = *(a1 + 16);
          *(a1 + 16) = v82;
        }

        v27 = PBUnknownFieldAdd();
        if (!v27)
        {
          goto LABEL_298;
        }

        goto LABEL_294;
    }
  }
}

id _postureRegion(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v4 = v3;
  v5 = [v3 objectForKey:*MEMORY[0x1E695D978]];

  return v5;
}

uint64_t std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::hash<char const*>,AddrObjGoogle::protobuf::streq,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>,AddrObjGoogle::protobuf::streq,AddrObjGoogle::protobuf::hash<char const*>,true>,std::allocator<std::__hash_value_type<char const*,AddrObjGoogle::protobuf::FileDescriptor const*>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
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

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void LoadItem::Requester::performAsyncOnCallbackQueue(uint64_t a1, dispatch_block_t block)
{
  v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, *(a1 + 156), 0, block);
  dispatch_async(*(a1 + 56), v3);
}

int32x4_t gcl::tmesh::DecoderImpl::decompressGeometry(uint64_t a1, int a2, uint64_t a3, int32x4_t a4, int32x4_t a5, int32x4_t a6, int32x4_t a7)
{
  v10 = (*(a1 + 176) + 12 * a2);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = *(a1 + 3812);
  if (v14 != 1)
  {
    if (v14 != 2)
    {
      goto LABEL_17;
    }

    v15 = (*(a1 + 200) + 12 * a2);
    v16 = v15[2];
    if (v16 != -1)
    {
      v18 = *v15;
      v17 = v15[1];
      v19 = a1 + 2416;
      v20 = *(a1 + 2416);
      v21 = *(a1 + 2732);
      v22 = *(a1 + 2736);
      if (v21 >= 0x40000001)
      {
        v25 = *(a1 + 2732);
      }

      else
      {
        v23 = *(a1 + 2744);
        do
        {
          v22 *= 2;
          *(a1 + 2744) = --v23;
          if (!v23)
          {
            v27 = *(a1 + 2720);
            *(a1 + 2720) = v27 + 1;
            v28 = *(a1 + 2704);
            if (v27 + 1 >= v28)
            {
              v29 = 65280;
            }

            else
            {
              v29 = *(*(a1 + 2712) + v27 + 1) << 8;
            }

            v30 = v27 + 2;
            *(a1 + 2720) = v30;
            if (v30 < v28)
            {
              v24 = *(*(a1 + 2712) + v30);
            }

            else
            {
              v24 = 255;
            }

            v22 |= v29 | v24;
            v23 = 16;
            *(a1 + 2744) = 16;
          }

          v25 = 2 * v21;
          v26 = v21 >= 0x20000001;
          v21 *= 2;
        }

        while (!v26);
      }

      v40 = (HIWORD(v25) * v20) & 0xFFFF0000;
      v41 = (v20 >> 7) & 0x1FE;
      v42 = v25 - v40;
      v43 = v22 >= v40;
      v44 = a1 + 2752;
      if (v22 >= v40)
      {
        ++v41;
      }

      *(a1 + 2416) = *(v44 + 2 * v41) + v20;
      if (v22 < v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v42;
      }

      if (v22 < v40)
      {
        v46 = 0;
      }

      else
      {
        v46 = v40;
      }

      v47 = 1;
      if (v22 >= v40)
      {
        v47 = 2;
      }

      v48 = v22 - v46;
      *(a1 + 2732) = v45;
      *(a1 + 2736) = v48;
      v49 = *(v19 + 2 * v47);
      if (v45 >= 0x40000001)
      {
        v52 = v45;
      }

      else
      {
        v50 = *(a1 + 2744);
        do
        {
          v48 *= 2;
          *(a1 + 2744) = --v50;
          if (!v50)
          {
            v53 = *(a1 + 2720);
            *(a1 + 2720) = v53 + 1;
            v54 = *(a1 + 2704);
            if (v53 + 1 >= v54)
            {
              v55 = 65280;
            }

            else
            {
              v55 = *(*(a1 + 2712) + v53 + 1) << 8;
            }

            v56 = v53 + 2;
            *(a1 + 2720) = v56;
            if (v56 < v54)
            {
              v51 = *(*(a1 + 2712) + v56);
            }

            else
            {
              v51 = 255;
            }

            v48 |= v55 | v51;
            v50 = 16;
            *(a1 + 2744) = 16;
          }

          v52 = 2 * v45;
          v26 = v45 >= 0x20000001;
          v45 *= 2;
        }

        while (!v26);
      }

      v57 = (HIWORD(v52) * v49) & 0xFFFF0000;
      v58 = (v49 >> 7) & 0x1FE;
      v59 = v52 - v57;
      v60 = v48 >= v57;
      if (v48 >= v57)
      {
        ++v58;
      }

      *(v19 + 2 * v47) = *(v44 + 2 * v58) + v49;
      if (v48 < v57)
      {
        v61 = v57;
      }

      else
      {
        v61 = v59;
      }

      if (v48 < v57)
      {
        v57 = 0;
      }

      *(a1 + 2732) = v61;
      *(a1 + 2736) = v48 - v57;
      v62 = v43 | (2 * v60);
      if (v62 > 1)
      {
        if (v62 != 2)
        {
          v79 = a3 + 12 * v11;
          v80 = a3 + 12 * v18;
          v81 = a3 + 12 * v12;
          v82 = a3 + 12 * v17;
          v83 = a3 + 12 * v13;
          v84 = a3 + 12 * v16;
          a4.i64[0] = *v79;
          a4.i32[2] = *(v79 + 8);
          a5.i64[0] = *v80;
          a5.i32[2] = *(v80 + 8);
          v85 = vaddq_s32(a5, a4);
          a5.i64[0] = *v81;
          a5.i32[2] = *(v81 + 8);
          a6.i64[0] = *v82;
          a6.i32[2] = *(v82 + 8);
          v86 = vaddq_s32(a6, a5);
          a6.i64[0] = *v83;
          a6.i32[2] = *(v83 + 8);
          a7.i64[0] = *v84;
          a7.i32[2] = *(v84 + 8);
          v87 = vsubq_s32(vsraq_n_s32(vaddq_s32(v86, v86), vsraq_n_u32(v85, v85, 0x1FuLL), 1uLL), vaddq_s32(a6, a7));
          LODWORD(v79) = v87.i32[2] / 3;
          v88 = vmull_s32(*v87.i8, vdup_n_s32(0x55555556u));
          *v86.i8 = vshrn_n_s64(v88, 0x20uLL);
          v78 = vshrq_n_u64(v88, 0x3FuLL);
          *v78.i8 = vadd_s32(*v86.i8, vmovn_s64(v78));
          v78.i32[2] = v79;
          goto LABEL_63;
        }

        v68 = a3 + 12 * v12;
        v69 = a3 + 12 * v17;
        v70 = a3 + 12 * v11;
        v71 = a3 + 12 * v18;
        a4.i64[0] = *v68;
        a4.i32[2] = *(v68 + 8);
        a5.i64[0] = *v69;
        a5.i32[2] = *(v69 + 8);
        a6.i64[0] = *v70;
        a6.i32[2] = *(v70 + 8);
        a7.i64[0] = *v71;
        a7.i32[2] = *(v71 + 8);
        v72 = vaddq_s32(a5, a4);
        v73 = vaddq_s32(a7, a6);
        a5 = vshrq_n_s32(vsraq_n_u32(v73, v73, 0x1FuLL), 1uLL);
      }

      else
      {
        if (v62)
        {
          v76 = a3 + 12 * v18;
          v77 = (a3 + 12 * v17);
          a4.i64[0] = *v76;
          a4.i32[2] = *(v76 + 8);
          v65 = a3 + 12 * v16;
          a5.i64[0] = *v77;
          v66 = (v77 + 1);
        }

        else
        {
          v63 = a3 + 12 * v11;
          v64 = (a3 + 12 * v12);
          a4.i64[0] = *v63;
          a4.i32[2] = *(v63 + 8);
          v65 = a3 + 12 * v13;
          v67 = *v64;
          v66 = (v64 + 1);
          a5.i64[0] = v67;
        }

        a5.i32[2] = *v66;
        v72 = vaddq_s32(a5, a4);
        a5.i64[0] = *v65;
        a5.i32[2] = *(v65 + 8);
      }

      v78 = vsubq_s32(v72, a5);
LABEL_63:
      v91 = v78;
      v31 = 1;
      goto LABEL_64;
    }
  }

  if (v13 != -1)
  {
    v31 = 0;
    v32 = a3 + 12 * v11;
    v33 = a3 + 12 * v12;
    v34 = a3 + 12 * v13;
    a4.i64[0] = *v32;
    a4.i32[2] = *(v32 + 8);
    a5.i64[0] = *v33;
    a5.i32[2] = *(v33 + 8);
    v35 = vaddq_s32(a5, a4);
    a5.i64[0] = *v34;
    a5.i32[2] = *(v34 + 8);
    a4 = vsubq_s32(v35, a5);
LABEL_21:
    v91 = a4;
LABEL_64:
    gcl::tmesh::DecoderImpl::decodeResidual(&v92, a1, *(a1 + 3808), (a1 + 120 * v31 + 2424));
    v75 = v91;
    v74 = v92;
    goto LABEL_65;
  }

LABEL_17:
  if (v12 != -1)
  {
    v31 = 0;
    v36 = a3 + 12 * v11;
    v37 = a3 + 12 * v12;
    a4.i64[0] = *v36;
    a4.i32[2] = *(v36 + 8);
    a5.i64[0] = *v37;
    a5.i32[2] = *(v37 + 8);
    v38 = vaddq_s32(a5, a4);
    a4 = vshrq_n_s32(vsraq_n_u32(v38, v38, 0x1FuLL), 1uLL);
    goto LABEL_21;
  }

  if (v11 != -1)
  {
    v31 = 0;
    v39 = a3 + 12 * v11;
    a4.i64[0] = *v39;
    a4.i32[2] = *(v39 + 8);
    goto LABEL_21;
  }

  if (!*(a1 + 3820))
  {
    v31 = 0;
    a4 = 0uLL;
    goto LABEL_21;
  }

  gcl::tmesh::DecoderImpl::decodeResidual(&v92, a1, 3u, 0);
  v74 = v92;
  v75 = 0uLL;
LABEL_65:
  v89 = a3 + 12 * a2;
  result = vaddq_s32(v74, v75);
  *v89 = result.i64[0];
  *(v89 + 8) = result.i32[2];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::vector<std::shared_ptr<FeatureStyleAttributes const>,geo::allocator_adapter<std::shared_ptr<FeatureStyleAttributes const>,geo::codec::zone_mallocator>>::__emplace_back_slow_path<std::shared_ptr<FeatureStyleAttributes const> const&>(geo::codec::zone_mallocator *a1, __int128 *a2)
{
  v2 = (*(a1 + 1) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 2) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    v8 = geo::codec::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<FeatureStyleAttributes const>>(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[16 * v2];
  v11 = &v9[16 * v7];
  v12 = *a2;
  *v10 = *a2;
  if (*(&v12 + 1))
  {
    atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v10 + 16;
  v14 = *(a1 + 1) - *a1;
  v15 = &v10[-v14];
  v16 = memcpy(&v10[-v14], *a1, v14);
  v17 = *a1;
  *a1 = v15;
  *(a1 + 1) = v13;
  *(a1 + 2) = v11;
  if (v17)
  {
    v18 = geo::codec::zone_mallocator::instance(v16);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<FeatureStyleAttributes const>>(v18, v17);
  }

  return v13;
}

uint64_t geo::codec::_makeSpaceForLabels(geo::codec::zone_mallocator *a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *(*a3 + 1064);
  if (a1)
  {
    v8 = a1 + v5;
    *(v4 + 1064) = a1 + v5;
    v9 = *(v4 + 1056);
    v10 = geo::codec::zone_mallocator::instance(a1);
    v11 = pthread_rwlock_rdlock((v10 + 32));
    if (v9)
    {
      if (v11)
      {
        geo::read_write_lock::logFailure(v11, "read lock", v12);
      }

      atomic_fetch_add((v10 + 24), 0xFFFFFFFF);
      v13 = malloc_type_zone_realloc(*v10, v9, 24 * v8, 0x10500409456A368uLL);
      atomic_fetch_add((v10 + 24), 1u);
      v14 = pthread_rwlock_unlock((v10 + 32));
      if (v14)
      {
        geo::read_write_lock::logFailure(v14, "unlock", v15);
      }

      v16 = *a3;
      if (!v13)
      {
        v21 = *(v16 + 1056);
        v22 = geo::codec::zone_mallocator::instance(v14);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsFeatureLabel>(v22, v21);
        v5 = 0;
        result = 0;
        *(*a3 + 1056) = 0;
        goto LABEL_17;
      }

      *(v16 + 1056) = v13;
      bzero(&v13[24 * v5], 24 * a1);
      if (*(*a3 + 1056))
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

    v18 = malloc_type_zone_calloc(*v10, v8, 0x18uLL, 0x10500409456A368uLL);
    atomic_fetch_add((v10 + 24), 1u);
    v19 = pthread_rwlock_unlock((v10 + 32));
    if (v19)
    {
      geo::read_write_lock::logFailure(v19, "unlock", v20);
    }

    *(*a3 + 1056) = v18;
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

void sub_1866AD174(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<GeoCodecsLocalizationTableEntry,geo::allocator_adapter<GeoCodecsLocalizationTableEntry,geo::codec::zone_mallocator>>::__append(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 5)
  {
    if (a2)
    {
      v16 = 32 * a2;
      bzero(a1[1], 32 * a2);
      v4 += v16;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 5;
    if ((v5 + a2) >> 59)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 4;
    if (v6 >> 4 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
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

      v13 = malloc_type_zone_malloc(*v10, 32 * v8, 0x10500408C4D2DFBuLL);
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

    v17 = &v13[32 * v5];
    v18 = 32 * a2;
    v19 = &v13[32 * v8];
    bzero(v17, 32 * a2);
    v20 = &v17[v18];
    v21 = a1[1] - *a1;
    v22 = &v17[-v21];
    v23 = memcpy(&v17[-v21], *a1, v21);
    v24 = *a1;
    *a1 = v22;
    a1[1] = v20;
    a1[2] = v19;
    if (v24)
    {
      v25 = geo::codec::zone_mallocator::instance(v23);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLocalizationTableEntry>(v25, v24);
    }
  }
}

void sub_1866AD318(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,_GEOAltitudeTriggerData>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,_GEOAltitudeTriggerData>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,_GEOAltitudeTriggerData>>(uint64_t **a1, unsigned int a2, uint64_t a3)
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
      v5 = *(v3 + 8);
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

BOOL geo::codec::_readRunningTracks(geo::codec::zone_mallocator *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a1 + 1);
  if (!v5)
  {
LABEL_5:
    v8 = 0;
    v9 = a2[1];
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = 0;
  v7 = 0;
  while (*(*a1 + 16 * v6) != 157)
  {
    v6 = ++v7;
    if (v5 <= v7)
    {
      goto LABEL_5;
    }
  }

  v8 = geo::codec::chapterAt(a1, v7, 157, (v4 + 1920));
  v4 = *a2;
  v9 = a2[1];
  if (v9)
  {
LABEL_6:
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v11 = v8 == 0;
  if (!v8)
  {
LABEL_24:
    *(*a2 + 3696) = 1;
    goto LABEL_25;
  }

  v31 = 0;
  if ((geo::codec::chapterReadVarUint32(v8, &v31 + 1) & 1) == 0)
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = 11183;
    goto LABEL_18;
  }

  if ((geo::codec::chapterReadVarUint32(v8, &v31) & 1) == 0)
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = 11184;
    goto LABEL_18;
  }

  v30 = 0;
  if ((geo::codec::chapterReadVarUint32(v8, &v30) & 1) == 0)
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = 11187;
    goto LABEL_18;
  }

  v12 = v8[6];
  if (v12 + 8 > v8[7])
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = 11190;
    goto LABEL_18;
  }

  v8[6] = v12 + 8;
  if (*(v8 + 16) >= 4u)
  {
    LODWORD(v32) = 0;
    if (!geo::codec::chapterReadVarUint32(v8, &v32))
    {
      v14 = 11194;
      goto LABEL_36;
    }

    if (!v32)
    {
      v14 = 11195;
      goto LABEL_36;
    }

    if ((~v32 & 3) == 0)
    {
      v14 = 11201;
LABEL_36:
      v13 = *MEMORY[0x1E69E9848];
      goto LABEL_18;
    }

    *(*a2 + 3696) = 2 * v32;
  }

  v29 = 0;
  v15 = geo::codec::chapterReadVarUint32(v8, &v29);
  if (v15)
  {
    v22 = v29;
    if (v29)
    {
      v28 = 0;
      v23 = geo::codec::chapterReadVarUint32(v8, &v28);
      if (v23)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v24 = geo::codec::zone_mallocator::instance(v23);
        v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsRunningTrack>(v24, v22);
        v26 = &v25[16 * v22];
        v32 = v25;
        v34 = v26;
        bzero(v25, v22 << 7);
        v33 = v26;
        memset(v27, 0, sizeof(v27));
        operator new();
      }

      v13 = *MEMORY[0x1E69E9848];
      v14 = 11213;
    }

    else
    {
      if (*(v8 + 16) > 3u)
      {
        v16 = 1;
        if (!a1)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v13 = *MEMORY[0x1E69E9848];
      v14 = 11209;
    }
  }

  else
  {
    v13 = *MEMORY[0x1E69E9848];
    v14 = 11207;
  }

LABEL_18:
  v15 = fprintf(v13, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v14);
  v16 = 0;
  if (!a1)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (*v8)
  {
    v17 = v8[5];
    v18 = geo::codec::zone_mallocator::instance(v15);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v18, v17);
  }

  v19 = geo::codec::zone_mallocator::instance(v15);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v19, v8);
LABEL_22:
  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = 1;
LABEL_25:
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *&v27[0] = 157;
  v32 = v27;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v4 + 1920), v27, &v32) + 4) = ((rep - v10.__d_.__rep_) / 1000) * 0.001;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  return v11;
}

void sub_1866AF050(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, void *a32, void *a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void **a52)
{
  if (__p)
  {
    operator delete(__p);
    v57 = a43;
    if (!a43)
    {
LABEL_3:
      v58 = a46;
      if (!a46)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v57 = a43;
    if (!a43)
    {
      goto LABEL_3;
    }
  }

  operator delete(v57);
  v58 = a46;
  if (!a46)
  {
LABEL_4:
    if (!a19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v58);
  if (!a19)
  {
LABEL_5:
    if (!a23)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a19);
  if (!a23)
  {
LABEL_6:
    v59 = a52;
    if (!a52)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a23);
  v59 = a52;
  if (!a52)
  {
LABEL_7:
    v60 = a49;
    if (!a49)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_17:
  v61 = *v59;
  *v59 = 0;
  if (v61)
  {
    v62 = *v61;
    *v61 = 0;
    if (v62)
    {
      v63 = v62[13];
      if (v63)
      {
        v62[14] = v63;
        operator delete(v63);
      }

      v64 = v62[10];
      if (v64)
      {
        v62[11] = v64;
        operator delete(v64);
      }

      MEMORY[0x18CFD1E40](v62, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v61, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v59, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  v60 = a49;
  if (!a49)
  {
LABEL_8:
    if (!a28)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v60);
  if (!a28)
  {
LABEL_9:
    if (!a26)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a28);
  if (!a26)
  {
LABEL_10:
    if (!a27)
    {
LABEL_30:
      v65 = *a29;
      *a29 = 0;
      if (v65)
      {
        v66 = v65[13];
        if (v66)
        {
          v65[14] = v66;
          operator delete(v66);
        }

        v67 = v65[10];
        if (v67)
        {
          v65[11] = v67;
          operator delete(v67);
        }

        MEMORY[0x18CFD1E40](v65, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
      }

      MEMORY[0x18CFD1E40](a29, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
      if (a32)
      {
        operator delete(a32);
      }

      operator delete(a33);
      v68 = *(v55 - 216);
      if (v68)
      {
        v69 = *v68;
        *v68 = 0;
        if (v69)
        {
          v70 = *v69;
          *v69 = 0;
          if (v70)
          {
            v71 = v70[13];
            if (v71)
            {
              v70[14] = v71;
              operator delete(v71);
            }

            v72 = v70[10];
            if (v72)
            {
              v70[11] = v72;
              operator delete(v72);
            }

            MEMORY[0x18CFD1E40](v70, 0x1070C40ADA6D0DELL);
          }

          MEMORY[0x18CFD1E40](v69, 0x20C4093837F09);
        }

        MEMORY[0x18CFD1E40](v68, 0x20C4093837F09);
      }

      v73 = *(v55 - 240);
      if (v73)
      {
        operator delete(v73);
      }

      operator delete(a34);
      v74 = *(v55 - 184);
      if (v74)
      {
        v75 = *v74;
        *v74 = 0;
        if (v75)
        {
          v76 = *v75;
          *v75 = 0;
          if (v76)
          {
            v77 = v76[13];
            if (v77)
            {
              v76[14] = v77;
              operator delete(v77);
            }

            v78 = v76[10];
            if (v78)
            {
              v76[11] = v78;
              operator delete(v78);
            }

            MEMORY[0x18CFD1E40](v76, 0x1070C40ADA6D0DELL);
          }

          MEMORY[0x18CFD1E40](v75, 0x20C4093837F09);
        }

        MEMORY[0x18CFD1E40](v74, 0x20C4093837F09);
      }

      v79 = *(v55 - 208);
      if (v79)
      {
        operator delete(v79);
      }

      *(v55 - 208) = v55 - 144;
      std::vector<GeoCodecsRunningTrack,geo::allocator_adapter<GeoCodecsRunningTrack,geo::codec::zone_mallocator>>::__destroy_vector::operator()[abi:ne200100]((v55 - 208));
      rep = std::chrono::steady_clock::now().__d_.__rep_;
      *(v55 - 208) = 157;
      *(v55 - 144) = v55 - 208;
      *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v54 + 1920), v55 - 208, (v55 - 144)) + 4) = ((rep - v53) / 1000) * 0.001;
      if (v52)
      {
        if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v52->__on_zero_shared)(v52);
          std::__shared_weak_count::__release_weak(v52);
          _Unwind_Resume(a1);
        }
      }

      _Unwind_Resume(a1);
    }

LABEL_29:
    operator delete(a27);
    goto LABEL_30;
  }

LABEL_28:
  operator delete(a26);
  if (!a27)
  {
    goto LABEL_30;
  }

  goto LABEL_29;
}

uint64_t geo::codec::_readCompressedPolygons(geo::codec::zone_mallocator *a1, void *a2)
{
  v142 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = 0;
  while (*(*a1 + 16 * v3) != 169)
  {
    v3 = ++v4;
    if (v2 <= v4)
    {
      goto LABEL_12;
    }
  }

  v6 = geo::codec::chapterAt(a1, v4, 169, (*a2 + 1920));
  if (!v6)
  {
LABEL_12:
    v11 = 1;
    return v11 & 1;
  }

  v7 = v6;
  v122 = 0;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  if ((geo::codec::chapterReadVarUint32(v6, &v122) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 11911;
    goto LABEL_17;
  }

  if ((geo::codec::chapterReadVarUint32(v7, &v121 + 1) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 11912;
    goto LABEL_17;
  }

  if ((geo::codec::chapterReadVarUint32(v7, &v121) & 1) == 0)
  {
    v9 = *MEMORY[0x1E69E9848];
    v10 = 11913;
    goto LABEL_17;
  }

  v8 = v7[6] + 8;
  if (v8 <= v7[7])
  {
    v7[6] = v8;
    if ((geo::codec::chapterReadVarUint32(v7, &v120 + 1) & 1) == 0)
    {
      v9 = *MEMORY[0x1E69E9848];
      v10 = 11918;
      goto LABEL_17;
    }

    *__p = 0u;
    v126 = 0u;
    v28 = HIDWORD(v120);
    std::vector<unsigned short,geo::allocator_adapter<unsigned short,geo::codec::zone_mallocator>>::resize(&v139, HIDWORD(v120));
    v29 = v139;
    if (v28 == (v140 - v139) >> 1)
    {
      v31 = BYTE4(v121);
      v30 = v122;
      LODWORD(v123) = 0;
      if (geo::codec::chapterReadVarUint32(v7, &v123))
      {
        v32 = v123;
        v33 = v7[6];
        v34 = v33 + v123;
        if (v34 <= v7[7])
        {
          v36 = v7[5];
          v7[6] = v34;
          v37 = mgcl::ints::IntDecompressor<unsigned short>::decompress(__p, (v36 + v33), v32, v30, v31, v28, v29);
          v38 = *(&v126 + 1);
          if (v37)
          {
            v39 = *MEMORY[0x1E69E9848];
            v40 = 11922;
          }

          else
          {
            v45 = a2;
            if (*(&v126 + 1))
            {
              v46 = **(&v126 + 1);
              **(&v126 + 1) = 0;
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

              MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
              v45 = a2;
            }

            if (__p[0])
            {
              operator delete(__p[0]);
              v45 = a2;
            }

            if (v28 != (*(*v45 + 3456) - *(*v45 + 3448)) >> 7)
            {
              v9 = *MEMORY[0x1E69E9848];
              v10 = 11925;
              goto LABEL_17;
            }

            if ((geo::codec::chapterReadVarUint32(v7, &v120) & 1) == 0)
            {
              v9 = *MEMORY[0x1E69E9848];
              v10 = 11929;
              goto LABEL_17;
            }

            *__p = 0u;
            v126 = 0u;
            v50 = v120;
            std::vector<unsigned short,geo::allocator_adapter<unsigned short,geo::codec::zone_mallocator>>::resize(&v136, v120);
            v51 = v136;
            if (v50 != (v137 - v136) >> 1)
            {
              v35 = 11932;
              goto LABEL_37;
            }

            LODWORD(v123) = 0;
            if (!geo::codec::chapterReadVarUint32(v7, &v123) || (v52 = v123, v53 = v7[6], v54 = v53 + v123, v54 > v7[7]))
            {
              v35 = 11933;
              goto LABEL_37;
            }

            v55 = v7[5];
            v7[6] = v54;
            v56 = mgcl::ints::IntDecompressor<unsigned short>::decompress(__p, (v55 + v53), v52, v30, v31, v50, v51);
            v38 = *(&v126 + 1);
            if (v56)
            {
              v39 = *MEMORY[0x1E69E9848];
              v40 = 11933;
            }

            else
            {
              if (*(&v126 + 1))
              {
                v57 = **(&v126 + 1);
                **(&v126 + 1) = 0;
                if (v57)
                {
                  v58 = *v57;
                  *v57 = 0;
                  if (v58)
                  {
                    v59 = v58[13];
                    if (v59)
                    {
                      v58[14] = v59;
                      operator delete(v59);
                    }

                    v60 = v58[10];
                    if (v60)
                    {
                      v58[11] = v60;
                      operator delete(v60);
                    }

                    MEMORY[0x18CFD1E40](v58, 0x1070C40ADA6D0DELL);
                  }

                  MEMORY[0x18CFD1E40](v57, 0x20C4093837F09);
                }

                MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
              }

              if (__p[0])
              {
                operator delete(__p[0]);
              }

              if ((geo::codec::chapterReadVarUint32(v7, &v119 + 1) & 1) == 0)
              {
                v9 = *MEMORY[0x1E69E9848];
                v10 = 11938;
                goto LABEL_17;
              }

              *__p = 0u;
              v126 = 0u;
              v61 = HIDWORD(v119);
              std::vector<unsigned short,geo::allocator_adapter<unsigned short,geo::codec::zone_mallocator>>::resize(&v133, HIDWORD(v119));
              v62 = v133;
              if (v61 != (v134 - v133) >> 1)
              {
                v35 = 11941;
                goto LABEL_37;
              }

              LODWORD(v123) = 0;
              if (!geo::codec::chapterReadVarUint32(v7, &v123) || (v63 = v123, v64 = v7[6], v65 = v64 + v123, v65 > v7[7]))
              {
                v35 = 11942;
                goto LABEL_37;
              }

              v66 = v7[5];
              v7[6] = v65;
              v67 = mgcl::ints::IntDecompressor<unsigned short>::decompress(__p, (v66 + v64), v63, v30, v31, v61, v62);
              v38 = *(&v126 + 1);
              if (v67)
              {
                v39 = *MEMORY[0x1E69E9848];
                v40 = 11942;
              }

              else
              {
                if (*(&v126 + 1))
                {
                  v68 = **(&v126 + 1);
                  **(&v126 + 1) = 0;
                  if (v68)
                  {
                    v69 = *v68;
                    *v68 = 0;
                    if (v69)
                    {
                      v70 = v69[13];
                      if (v70)
                      {
                        v69[14] = v70;
                        operator delete(v70);
                      }

                      v71 = v69[10];
                      if (v71)
                      {
                        v69[11] = v71;
                        operator delete(v71);
                      }

                      MEMORY[0x18CFD1E40](v69, 0x1070C40ADA6D0DELL);
                    }

                    MEMORY[0x18CFD1E40](v68, 0x20C4093837F09);
                  }

                  MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
                }

                if (__p[0])
                {
                  operator delete(__p[0]);
                }

                if ((geo::codec::chapterReadVarUint32(v7, &v119) & 1) == 0)
                {
                  v9 = *MEMORY[0x1E69E9848];
                  v10 = 11947;
                  goto LABEL_17;
                }

                *__p = 0u;
                v126 = 0u;
                v72 = v119;
                std::vector<unsigned short,geo::allocator_adapter<unsigned short,geo::codec::zone_mallocator>>::resize(&v130, v119);
                v73 = v130;
                if (v72 != (v131 - v130) >> 1)
                {
                  v35 = 11950;
                  goto LABEL_37;
                }

                LODWORD(v123) = 0;
                if (!geo::codec::chapterReadVarUint32(v7, &v123) || (v74 = v123, v75 = v7[6], v76 = v75 + v123, v76 > v7[7]))
                {
                  v35 = 11951;
                  goto LABEL_37;
                }

                v77 = v7[5];
                v7[6] = v76;
                v78 = mgcl::ints::IntDecompressor<unsigned short>::decompress(__p, (v77 + v75), v74, v30, v31, v72, v73);
                v38 = *(&v126 + 1);
                if (v78)
                {
                  v39 = *MEMORY[0x1E69E9848];
                  v40 = 11951;
                }

                else
                {
                  if (*(&v126 + 1))
                  {
                    v79 = **(&v126 + 1);
                    **(&v126 + 1) = 0;
                    if (v79)
                    {
                      v80 = *v79;
                      *v79 = 0;
                      if (v80)
                      {
                        v81 = v80[13];
                        if (v81)
                        {
                          v80[14] = v81;
                          operator delete(v81);
                        }

                        v82 = v80[10];
                        if (v82)
                        {
                          v80[11] = v82;
                          operator delete(v82);
                        }

                        MEMORY[0x18CFD1E40](v80, 0x1070C40ADA6D0DELL);
                      }

                      MEMORY[0x18CFD1E40](v79, 0x20C4093837F09);
                    }

                    MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
                  }

                  if (__p[0])
                  {
                    operator delete(__p[0]);
                  }

                  *__p = 0u;
                  v126 = 0u;
                  if (v72)
                  {
                    std::vector<unsigned char,geo::allocator_adapter<unsigned char,geo::codec::zone_mallocator>>::__append(&v127, v72);
                    v84 = v127;
                    v83 = v128;
                  }

                  else
                  {
                    v84 = 0;
                    v83 = 0;
                  }

                  if (v83 - v84 != v72)
                  {
                    v35 = 11958;
                    goto LABEL_37;
                  }

                  LODWORD(v123) = 0;
                  if (!geo::codec::chapterReadVarUint32(v7, &v123) || (v85 = v123, v86 = v7[6], v87 = v86 + v123, v87 > v7[7]))
                  {
                    v35 = 11959;
                    goto LABEL_37;
                  }

                  v88 = v7[5];
                  v7[6] = v87;
                  v89 = mgcl::ints::IntDecompressor<unsigned char>::decompress(__p, (v88 + v86), v85, v30, v31, v72, v84);
                  v38 = *(&v126 + 1);
                  if (!v89)
                  {
                    if (*(&v126 + 1))
                    {
                      v90 = **(&v126 + 1);
                      **(&v126 + 1) = 0;
                      if (v90)
                      {
                        v91 = *v90;
                        *v90 = 0;
                        if (v91)
                        {
                          v92 = v91[13];
                          if (v92)
                          {
                            v91[14] = v92;
                            operator delete(v92);
                          }

                          v93 = v91[10];
                          if (v93)
                          {
                            v91[11] = v93;
                            operator delete(v93);
                          }

                          MEMORY[0x18CFD1E40](v91, 0x1070C40ADA6D0DELL);
                        }

                        MEMORY[0x18CFD1E40](v90, 0x20C4093837F09);
                      }

                      MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
                    }

                    if (__p[0])
                    {
                      operator delete(__p[0]);
                    }

                    if (geo::codec::chapterReadVarUint32(v7, &v118))
                    {
                      v115[0] = 0;
                      v115[1] = 0;
                      *&v116 = 0;
                      mgcl::polyline::Decoder::getPositionsInfo(v7[5] + v7[6], v118, v115);
                      if (DWORD1(v116) == 1)
                      {
                        if (v116 == v72)
                        {
                          v113 = HIDWORD(v115[1]);
                          v95 = geo::codec::zone_mallocator::instance(v94);
                          v114 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<int>(v95, 1);
                          *v114 = 0;
                          std::vector<int,geo::allocator_adapter<int,geo::codec::zone_mallocator>>::vector[abi:ne200100](__p, v72);
                          if (v72 == (__p[1] - __p[0]) >> 2)
                          {
                            v96 = std::vector<int,geo::allocator_adapter<int,geo::codec::zone_mallocator>>::vector[abi:ne200100](&v123, (3 * v113));
                            if (3 * v113 == v124 - v123)
                            {
                              if (v113)
                              {
                                v97 = geo::codec::zone_mallocator::instance(v96);
                                v112 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v97, v113);
                                bzero(v112, 8 * v113);
                                v98 = &v112[8 * v113];
                              }

                              else
                              {
                                v112 = 0;
                                v98 = 0;
                              }

                              if (v113 == (v98 - v112) >> 3)
                              {
                                operator new();
                              }

                              v99 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11982);
                              if (v112)
                              {
                                v106 = geo::codec::zone_mallocator::instance(v99);
                                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v106, v112);
                              }

                              v107 = v123;
                              if (v123)
                              {
                                v124 = v123;
                                v108 = geo::codec::zone_mallocator::instance(v99);
                                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v108, v107);
                              }

                              v109 = __p[0];
                              if (__p[0])
                              {
                                __p[1] = __p[0];
                                v110 = geo::codec::zone_mallocator::instance(v99);
                                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v110, v109);
                              }
                            }

                            else
                            {
                              v99 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11980);
                              v102 = v123;
                              if (v123)
                              {
                                v124 = v123;
                                v103 = geo::codec::zone_mallocator::instance(v99);
                                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v103, v102);
                              }

                              v104 = __p[0];
                              if (__p[0])
                              {
                                __p[1] = __p[0];
                                v105 = geo::codec::zone_mallocator::instance(v99);
                                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v105, v104);
                              }
                            }
                          }

                          else
                          {
                            v99 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 11978);
                            v100 = __p[0];
                            if (__p[0])
                            {
                              __p[1] = __p[0];
                              v101 = geo::codec::zone_mallocator::instance(v99);
                              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v101, v100);
                            }
                          }

                          v111 = geo::codec::zone_mallocator::instance(v99);
                          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v111, v114);
                          goto LABEL_18;
                        }

                        v10 = 11973;
                      }

                      else
                      {
                        v10 = 11972;
                      }

                      v9 = *MEMORY[0x1E69E9848];
                    }

                    else
                    {
                      v9 = *MEMORY[0x1E69E9848];
                      v10 = 11962;
                    }

                    goto LABEL_17;
                  }

                  v39 = *MEMORY[0x1E69E9848];
                  v40 = 11959;
                }
              }
            }
          }

          fprintf(v39, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v40);
          if (v38)
          {
            v41 = *v38;
            *v38 = 0;
            if (v41)
            {
              v42 = *v41;
              *v41 = 0;
              if (v42)
              {
                v43 = v42[13];
                if (v43)
                {
                  v42[14] = v43;
                  operator delete(v43);
                }

                v44 = v42[10];
                if (v44)
                {
                  v42[11] = v44;
                  operator delete(v44);
                }

                MEMORY[0x18CFD1E40](v42, 0x1070C40ADA6D0DELL);
              }

              MEMORY[0x18CFD1E40](v41, 0x20C4093837F09);
            }

            MEMORY[0x18CFD1E40](v38, 0x20C4093837F09);
          }

          goto LABEL_38;
        }
      }

      v35 = 11922;
    }

    else
    {
      v35 = 11921;
    }

LABEL_37:
    fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v35);
LABEL_38:
    v13 = __p[0];
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    goto LABEL_18;
  }

  v9 = *MEMORY[0x1E69E9848];
  v10 = 11914;
LABEL_17:
  v13 = fprintf(v9, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v10);
LABEL_18:
  v11 = 0;
  if (*v7)
  {
    v14 = v7[5];
    v15 = geo::codec::zone_mallocator::instance(v13);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v15, v14);
  }

  v16 = geo::codec::zone_mallocator::instance(v13);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v16, v7);
  v18 = v127;
  if (v127)
  {
    v128 = v127;
    v19 = geo::codec::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v19, v18);
  }

  v20 = v130;
  if (v130)
  {
    v131 = v130;
    v21 = geo::codec::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v21, v20);
  }

  v22 = v133;
  if (v133)
  {
    v134 = v133;
    v23 = geo::codec::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v23, v22);
  }

  v24 = v136;
  if (v136)
  {
    v137 = v136;
    v25 = geo::codec::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v25, v24);
  }

  v26 = v139;
  if (v139)
  {
    v140 = v139;
    v27 = geo::codec::zone_mallocator::instance(v17);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v27, v26);
  }

  return v11 & 1;
}

void sub_1866B13F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void **a40, void *a41, uint64_t a42, uint64_t a43, void **a44, geo::codec::zone_mallocator *a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  if (a28)
  {
    v72 = *a28;
    *a28 = 0;
    if (v72)
    {
      v73 = *v72;
      *v72 = 0;
      if (v73)
      {
        v74 = v73[13];
        if (v74)
        {
          v73[14] = v74;
          operator delete(v74);
        }

        v75 = v73[10];
        if (v75)
        {
          v73[11] = v75;
          operator delete(v75);
        }

        MEMORY[0x18CFD1E40](v73, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
      }

      MEMORY[0x18CFD1E40](v72, v62, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](a28, v62, a3, a4, a5, a6, a7, a8);
    v65 = __p;
    if (!__p)
    {
LABEL_3:
      v66 = a40;
      if (!a40)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v65 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v65);
  v66 = a40;
  if (!a40)
  {
LABEL_4:
    v67 = a37;
    if (!a37)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_21:
  v76 = *v66;
  *v66 = 0;
  if (v76)
  {
    v77 = *v76;
    *v76 = 0;
    if (v77)
    {
      v78 = v77[13];
      if (v78)
      {
        v77[14] = v78;
        operator delete(v78);
      }

      v79 = v77[10];
      if (v79)
      {
        v77[11] = v79;
        operator delete(v79);
      }

      MEMORY[0x18CFD1E40](v77, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v76, v62, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v66, v62, a3, a4, a5, a6, a7, a8);
  v67 = a37;
  if (!a37)
  {
LABEL_5:
    v68 = a44;
    if (!a44)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v67);
  v68 = a44;
  if (!a44)
  {
LABEL_6:
    v69 = a41;
    if (!a41)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_31:
  v80 = *v68;
  *v68 = 0;
  if (v80)
  {
    v81 = *v80;
    *v80 = 0;
    if (v81)
    {
      v82 = v81[13];
      if (v82)
      {
        v81[14] = v82;
        operator delete(v82);
      }

      v83 = v81[10];
      if (v83)
      {
        v81[11] = v83;
        operator delete(v83);
      }

      MEMORY[0x18CFD1E40](v81, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v80, v62, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v68, v62, a3, a4, a5, a6, a7, a8);
  v69 = a41;
  if (!a41)
  {
LABEL_7:
    v70 = a48;
    if (!a48)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v69);
  v70 = a48;
  if (!a48)
  {
LABEL_8:
    v71 = a45;
    if (!a45)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_41:
  v84 = *v70;
  *v70 = 0;
  if (v84)
  {
    v85 = *v84;
    *v84 = 0;
    if (v85)
    {
      v86 = v85[13];
      if (v86)
      {
        v85[14] = v86;
        operator delete(v86);
      }

      v87 = v85[10];
      if (v87)
      {
        v85[11] = v87;
        operator delete(v87);
      }

      MEMORY[0x18CFD1E40](v85, 0x1070C40ADA6D0DELL, a3, a4, a5, a6, a7, a8);
    }

    MEMORY[0x18CFD1E40](v84, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x18CFD1E40](v70, 0x20C4093837F09, a3, a4, a5, a6, a7, a8);
  v71 = a45;
  if (!a45)
  {
LABEL_9:
    if (!v61)
    {
LABEL_52:
      if (a53)
      {
        v89 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v89, a53);
      }

      if (a57)
      {
        v90 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v90, a57);
      }

      if (a61)
      {
        v91 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v91, a61);
      }

      v92 = *(v63 - 256);
      if (v92)
      {
        *(v63 - 248) = v92;
        v93 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v93, v92);
      }

      v94 = *(v63 - 224);
      if (v94)
      {
        *(v63 - 216) = v94;
        v95 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v95, v94);
      }

      v96 = *(v63 - 192);
      if (v96)
      {
        *(v63 - 184) = v96;
        v100 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v100, v96);
      }

      v97 = *(v63 - 160);
      if (v97)
      {
        *(v63 - 152) = v97;
        v101 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v101, v97);
      }

      v98 = *(v63 - 128);
      if (v98)
      {
        *(v63 - 120) = v98;
        v99 = geo::codec::zone_mallocator::instance(v71);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v99, v98);
      }

      _Unwind_Resume(a1);
    }

LABEL_51:
    v88 = geo::codec::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned short>(v88, v61);
    goto LABEL_52;
  }

LABEL_50:
  operator delete(v71);
  if (!v61)
  {
    goto LABEL_52;
  }

  goto LABEL_51;
}

uint64_t gcl::tmesh::DecoderImpl::decodeIndex(gcl::tmesh::DecoderImpl *this, int a2)
{
  v3 = *(this + 1119);
  v4 = *(this + 683);
  v5 = *(this + 684);
  if (v4 >= 0x40000001)
  {
    v8 = *(this + 683);
  }

  else
  {
    v6 = *(this + 686);
    do
    {
      v5 *= 2;
      *(this + 686) = --v6;
      if (!v6)
      {
        v9 = *(this + 340);
        *(this + 340) = v9 + 1;
        v10 = *(this + 676);
        if (v9 + 1 >= v10)
        {
          v11 = 65280;
        }

        else
        {
          v11 = *(*(this + 339) + v9 + 1) << 8;
        }

        v12 = v9 + 2;
        *(this + 340) = v12;
        if (v12 < v10)
        {
          v7 = *(*(this + 339) + v12);
        }

        else
        {
          v7 = 255;
        }

        v5 |= v11 | v7;
        v6 = 16;
        *(this + 686) = 16;
      }

      v8 = 2 * v4;
      v18 = v4 >= 0x20000001;
      v4 *= 2;
    }

    while (!v18);
  }

  v13 = (HIWORD(v8) * v3) & 0xFFFF0000;
  v14 = v8 - v13;
  if (v5 < v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v16 = v5 - v15;
  v17 = this + 2752;
  *(this + 684) = v16;
  v18 = v5 >= v13;
  if (v5 < v13)
  {
    v19 = (v3 >> 7) & 0x1FE;
  }

  else
  {
    v19 = ((v3 >> 7) & 0x1FE) + 1;
  }

  *(this + 1119) = *&v17[2 * v19] + v3;
  if (v18)
  {
    v20 = v14;
  }

  else
  {
    v20 = v13;
  }

  *(this + 683) = v20;
  if (!v18)
  {
    return gcl::ArithmeticDecoder::decodeSignedExpGolomb(this + 676, 0, this + 1136, this + 1137) + a2;
  }

  v21 = this + 2280;
  v22 = *(this + 1140);
  if (v14 >= 0x40000001)
  {
    v25 = v14;
  }

  else
  {
    v23 = *(this + 686);
    do
    {
      v16 *= 2;
      *(this + 686) = --v23;
      if (!v23)
      {
        v26 = *(this + 340);
        *(this + 340) = v26 + 1;
        v27 = *(this + 676);
        if (v26 + 1 >= v27)
        {
          v28 = 65280;
        }

        else
        {
          v28 = *(*(this + 339) + v26 + 1) << 8;
        }

        v29 = v26 + 2;
        *(this + 340) = v29;
        if (v29 < v27)
        {
          v24 = *(*(this + 339) + v29);
        }

        else
        {
          v24 = 255;
        }

        v16 |= v28 | v24;
        v23 = 16;
        *(this + 686) = 16;
      }

      v25 = 2 * v14;
      v18 = v14 >= 0x20000001;
      v14 *= 2;
    }

    while (!v18);
  }

  v31 = (HIWORD(v25) * v22) & 0xFFFF0000;
  v32 = (v22 >> 7) & 0x1FE;
  v33 = v25 - v31;
  v34 = v16 >= v31;
  v35 = v16 >= v31;
  if (v16 >= v31)
  {
    ++v32;
  }

  *(this + 1140) = *&v17[2 * v32] + v22;
  if (v16 < v31)
  {
    v33 = v31;
    v31 = 0;
  }

  v36 = 1;
  if (v34)
  {
    v36 = 2;
  }

  v37 = v16 - v31;
  *(this + 683) = v33;
  *(this + 684) = v37;
  v38 = *&v21[2 * v36];
  if (v33 >= 0x40000001)
  {
    v41 = v33;
  }

  else
  {
    v39 = *(this + 686);
    do
    {
      v37 *= 2;
      *(this + 686) = --v39;
      if (!v39)
      {
        v42 = *(this + 340);
        *(this + 340) = v42 + 1;
        v43 = *(this + 676);
        if (v42 + 1 >= v43)
        {
          v44 = 65280;
        }

        else
        {
          v44 = *(*(this + 339) + v42 + 1) << 8;
        }

        v45 = v42 + 2;
        *(this + 340) = v45;
        if (v45 < v43)
        {
          v40 = *(*(this + 339) + v45);
        }

        else
        {
          v40 = 255;
        }

        v37 |= v44 | v40;
        v39 = 16;
        *(this + 686) = 16;
      }

      v41 = 2 * v33;
      v18 = v33 >= 0x20000001;
      v33 *= 2;
    }

    while (!v18);
  }

  v46 = (HIWORD(v41) * v38) & 0xFFFF0000;
  v47 = (v38 >> 7) & 0x1FE;
  v48 = v41 - v46;
  if (v37 >= v46)
  {
    ++v47;
  }

  *&v21[2 * v36] = *&v17[2 * v47] + v38;
  if (v37 < v46)
  {
    v49 = v46;
  }

  else
  {
    v49 = v48;
  }

  if (v37 < v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v46;
  }

  v51 = v37 - v50;
  *(this + 683) = v49;
  *(this + 684) = v51;
  v52 = v35 | (2 * (v37 >= v46));
  v53 = *&v21[2 * (v52 + 3)];
  if (v49 >= 0x40000001)
  {
    v56 = v49;
  }

  else
  {
    v54 = *(this + 686);
    do
    {
      v51 *= 2;
      *(this + 686) = --v54;
      if (!v54)
      {
        v57 = *(this + 340);
        *(this + 340) = v57 + 1;
        v58 = *(this + 676);
        if (v57 + 1 >= v58)
        {
          v59 = 65280;
        }

        else
        {
          v59 = *(*(this + 339) + v57 + 1) << 8;
        }

        v60 = v57 + 2;
        *(this + 340) = v60;
        if (v60 < v58)
        {
          v55 = *(*(this + 339) + v60);
        }

        else
        {
          v55 = 255;
        }

        v51 |= v59 | v55;
        v54 = 16;
        *(this + 686) = 16;
      }

      v56 = 2 * v49;
      v18 = v49 >= 0x20000001;
      v49 *= 2;
    }

    while (!v18);
  }

  v61 = (HIWORD(v56) * v53) & 0xFFFF0000;
  v62 = (v53 >> 7) & 0x1FE;
  v63 = v56 - v61;
  if (v51 >= v61)
  {
    ++v62;
  }

  *&v21[2 * (v52 + 3)] = *&v17[2 * v62] + v53;
  if (v51 < v61)
  {
    v64 = v61;
  }

  else
  {
    v64 = v63;
  }

  if (v51 < v61)
  {
    v65 = 0;
  }

  else
  {
    v65 = v61;
  }

  v66 = v51 - v65;
  *(this + 683) = v64;
  *(this + 684) = v66;
  v67 = v52 | (4 * (v51 >= v61));
  v68 = *&v21[2 * (v67 + 7)];
  if (v64 >= 0x40000001)
  {
    v71 = v64;
  }

  else
  {
    v69 = *(this + 686);
    do
    {
      v66 *= 2;
      *(this + 686) = --v69;
      if (!v69)
      {
        v72 = *(this + 340);
        *(this + 340) = v72 + 1;
        v73 = *(this + 676);
        if (v72 + 1 >= v73)
        {
          v74 = 65280;
        }

        else
        {
          v74 = *(*(this + 339) + v72 + 1) << 8;
        }

        v75 = v72 + 2;
        *(this + 340) = v75;
        if (v75 < v73)
        {
          v70 = *(*(this + 339) + v75);
        }

        else
        {
          v70 = 255;
        }

        v66 |= v74 | v70;
        v69 = 16;
        *(this + 686) = 16;
      }

      v71 = 2 * v64;
      v18 = v64 >= 0x20000001;
      v64 *= 2;
    }

    while (!v18);
  }

  v76 = (HIWORD(v71) * v68) & 0xFFFF0000;
  v77 = (v68 >> 7) & 0x1FE;
  v78 = v71 - v76;
  if (v66 >= v76)
  {
    ++v77;
  }

  *&v21[2 * (v67 + 7)] = *&v17[2 * v77] + v68;
  if (v66 < v76)
  {
    v79 = v76;
  }

  else
  {
    v79 = v78;
  }

  if (v66 < v76)
  {
    v80 = 0;
  }

  else
  {
    v80 = v76;
  }

  v81 = v66 - v80;
  *(this + 683) = v79;
  *(this + 684) = v81;
  v82 = v67 | (8 * (v66 >= v76));
  v83 = *&v21[2 * (v82 + 15)];
  if (v79 >= 0x40000001)
  {
    v86 = v79;
  }

  else
  {
    v84 = *(this + 686);
    do
    {
      v81 *= 2;
      *(this + 686) = --v84;
      if (!v84)
      {
        v87 = *(this + 340);
        *(this + 340) = v87 + 1;
        v88 = *(this + 676);
        if (v87 + 1 >= v88)
        {
          v89 = 65280;
        }

        else
        {
          v89 = *(*(this + 339) + v87 + 1) << 8;
        }

        v90 = v87 + 2;
        *(this + 340) = v90;
        if (v90 < v88)
        {
          v85 = *(*(this + 339) + v90);
        }

        else
        {
          v85 = 255;
        }

        v81 |= v89 | v85;
        v84 = 16;
        *(this + 686) = 16;
      }

      v86 = 2 * v79;
      v18 = v79 >= 0x20000001;
      v79 *= 2;
    }

    while (!v18);
  }

  v91 = (HIWORD(v86) * v83) & 0xFFFF0000;
  v92 = (v83 >> 7) & 0x1FE;
  v93 = v86 - v91;
  if (v81 >= v91)
  {
    ++v92;
  }

  *&v21[2 * (v82 + 15)] = *&v17[2 * v92] + v83;
  if (v81 < v91)
  {
    v94 = v91;
  }

  else
  {
    v94 = v93;
  }

  if (v81 < v91)
  {
    v95 = 0;
  }

  else
  {
    v95 = v91;
  }

  v96 = v81 - v95;
  *(this + 683) = v94;
  *(this + 684) = v96;
  v97 = v82 | (16 * (v81 >= v91));
  v98 = *&v21[2 * (v97 + 31)];
  if (v94 >= 0x40000001)
  {
    v101 = v94;
  }

  else
  {
    v99 = *(this + 686);
    do
    {
      v96 *= 2;
      *(this + 686) = --v99;
      if (!v99)
      {
        v102 = *(this + 340);
        *(this + 340) = v102 + 1;
        v103 = *(this + 676);
        if (v102 + 1 >= v103)
        {
          v104 = 65280;
        }

        else
        {
          v104 = *(*(this + 339) + v102 + 1) << 8;
        }

        v105 = v102 + 2;
        *(this + 340) = v105;
        if (v105 < v103)
        {
          v100 = *(*(this + 339) + v105);
        }

        else
        {
          v100 = 255;
        }

        v96 |= v104 | v100;
        v99 = 16;
        *(this + 686) = 16;
      }

      v101 = 2 * v94;
      v18 = v94 >= 0x20000001;
      v94 *= 2;
    }

    while (!v18);
  }

  v106 = (HIWORD(v101) * v98) & 0xFFFF0000;
  v107 = (v98 >> 7) & 0x1FE;
  v108 = v101 - v106;
  if (v96 >= v106)
  {
    ++v107;
  }

  v109 = v96 >= v106;
  *&v21[2 * (v97 + 31)] = *&v17[2 * v107] + v98;
  if (v96 < v106)
  {
    v110 = v106;
  }

  else
  {
    v110 = v108;
  }

  if (v96 < v106)
  {
    v111 = 0;
  }

  else
  {
    v111 = v106;
  }

  v112 = v96 - v111;
  *(this + 683) = v110;
  *(this + 684) = v96 - v111;
  v113 = this + 2408;
  v114 = *(this + 1204);
  if (v110 >= 0x40000001)
  {
    v117 = v110;
  }

  else
  {
    v115 = *(this + 686);
    do
    {
      v112 *= 2;
      *(this + 686) = --v115;
      if (!v115)
      {
        v118 = *(this + 340);
        *(this + 340) = v118 + 1;
        v119 = *(this + 676);
        if (v118 + 1 >= v119)
        {
          v120 = 65280;
        }

        else
        {
          v120 = *(*(this + 339) + v118 + 1) << 8;
        }

        v121 = v118 + 2;
        *(this + 340) = v121;
        if (v121 < v119)
        {
          v116 = *(*(this + 339) + v121);
        }

        else
        {
          v116 = 255;
        }

        v112 |= v120 | v116;
        v115 = 16;
        *(this + 686) = 16;
      }

      v117 = 2 * v110;
      v18 = v110 >= 0x20000001;
      v110 *= 2;
    }

    while (!v18);
  }

  v122 = (HIWORD(v117) * v114) & 0xFFFF0000;
  v123 = (v114 >> 7) & 0x1FE;
  v124 = v117 - v122;
  v125 = v112 >= v122;
  v126 = v112 >= v122;
  if (v112 >= v122)
  {
    ++v123;
  }

  *(this + 1204) = *&v17[2 * v123] + v114;
  if (v112 < v122)
  {
    v124 = v122;
    v122 = 0;
  }

  v127 = 1;
  if (v125)
  {
    v127 = 2;
  }

  v128 = v112 - v122;
  *(this + 683) = v124;
  *(this + 684) = v128;
  v129 = *&v113[2 * v127];
  if (v124 >= 0x40000001)
  {
    v132 = v124;
  }

  else
  {
    v130 = *(this + 686);
    do
    {
      v128 *= 2;
      *(this + 686) = --v130;
      if (!v130)
      {
        v133 = *(this + 340);
        *(this + 340) = v133 + 1;
        v134 = *(this + 676);
        if (v133 + 1 >= v134)
        {
          v135 = 65280;
        }

        else
        {
          v135 = *(*(this + 339) + v133 + 1) << 8;
        }

        v136 = v133 + 2;
        *(this + 340) = v136;
        if (v136 < v134)
        {
          v131 = *(*(this + 339) + v136);
        }

        else
        {
          v131 = 255;
        }

        v128 |= v135 | v131;
        v130 = 16;
        *(this + 686) = 16;
      }

      v132 = 2 * v124;
      v18 = v124 >= 0x20000001;
      v124 *= 2;
    }

    while (!v18);
  }

  v137 = (HIWORD(v132) * v129) & 0xFFFF0000;
  v138 = (v129 >> 7) & 0x1FE;
  v139 = v132 - v137;
  v140 = v128 >= v137;
  if (v128 >= v137)
  {
    ++v138;
  }

  *&v113[2 * v127] = *&v17[2 * v138] + v129;
  if (v128 < v137)
  {
    v141 = v137;
  }

  else
  {
    v141 = v139;
  }

  if (v128 < v137)
  {
    v137 = 0;
  }

  *(this + 683) = v141;
  *(this + 684) = v128 - v137;
  v142 = v126 | (2 * v140);
  if (v142 == 3)
  {
    v143 = gcl::ArithmeticDecoder::decodeExpGolomb(this + 676, 0, this + 1207);
    if (v143 < -3)
    {
      goto LABEL_185;
    }

    v142 = v143 + 3;
  }

  v144 = *(this + 3 * (v97 | (32 * v109)) + 32);
  if (v142 < ((*(this + 3 * (v97 | (32 * v109)) + 33) - v144) >> 3))
  {
    v145 = *(v144 + 8 * v142);
    if (v145)
    {
      return -1431655765 * ((v145 - *(this + 28)) >> 2);
    }
  }

LABEL_185:
  *(this + 968) = 3;
  return 0xFFFFFFFFLL;
}

uint64_t gcl::ArithmeticDecoder::decodeSignedExpGolomb(unsigned int *a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  result = gcl::ArithmeticDecoder::decodeExpGolomb(a1, a2, a4);
  if (result)
  {
    v7 = *a3;
    v9 = a1[7];
    v8 = a1[8];
    if (v9 > 0x40000000)
    {
      v12 = a1[7];
    }

    else
    {
      v10 = a1[10];
      do
      {
        v8 *= 2;
        a1[10] = --v10;
        if (!v10)
        {
          v13 = *(a1 + 2);
          *(a1 + 2) = v13 + 1;
          v14 = *a1;
          if (v13 + 1 >= v14)
          {
            v15 = 65280;
          }

          else
          {
            v15 = *(*(a1 + 1) + v13 + 1) << 8;
          }

          v16 = v13 + 2;
          *(a1 + 2) = v16;
          if (v16 < v14)
          {
            v11 = *(*(a1 + 1) + v16);
          }

          else
          {
            v11 = 255;
          }

          v8 |= v15 | v11;
          v10 = 16;
          a1[10] = 16;
        }

        v12 = 2 * v9;
        v19 = v9 >= 0x20000001;
        v9 *= 2;
      }

      while (!v19);
    }

    v17 = (HIWORD(v12) * v7) & 0xFFFF0000;
    v18 = (v7 >> 7) & 0x1FE;
    v19 = v8 >= v17;
    if (v8 >= v17)
    {
      ++v18;
    }

    *a3 = *(a1 + v18 + 24) + v7;
    if (v8 < v17)
    {
      v20 = (HIWORD(v12) * v7) & 0xFFFF0000;
    }

    else
    {
      v20 = v12 - v17;
    }

    if (v8 < v17)
    {
      v17 = 0;
    }

    if (v19)
    {
      result = result;
    }

    else
    {
      result = -result;
    }

    a1[7] = v20;
    a1[8] = v8 - v17;
  }

  return result;
}

void __dispatch_work_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activity];
  os_activity_apply(v2, *(a1 + 40));
}

std::__shared_weak_count_vtbl **std::vector<GeoCodecsBuildingFootprintFeature,geo::allocator_adapter<GeoCodecsBuildingFootprintFeature,geo::codec::zone_mallocator>>::~vector[abi:ne200100](std::__shared_weak_count *a1)
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
    v5 = *(shared_owners - 104);
    if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      a1 = *(shared_owners - 128);
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
    a1 = *(shared_owners - 128);
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_4:
    shared_owners -= 136;
  }

  while (shared_owners != v2);
  v4 = v1->__vftable;
LABEL_12:
  v1->__shared_owners_ = v2;
  v6 = geo::codec::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsBuildingFootprintFeature>(v6, v4);
  return v1;
}

void std::__shared_ptr_emplace<geo::codec::VectorTile,geo::allocator_adapter<geo::codec::VectorTile,geo::codec::zone_mallocator>>::__on_zero_shared_weak(geo::codec::zone_mallocator *a1)
{
  v2 = geo::codec::zone_mallocator::instance(a1);
  v3 = pthread_rwlock_rdlock((v2 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "read lock", v4);
  }

  if (a1)
  {
    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*v2, a1);
  v5 = pthread_rwlock_unlock((v2 + 32));
  if (v5)
  {

    geo::read_write_lock::logFailure(v5, "unlock", v6);
  }
}

void sub_1866B3B10(void *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
    __clang_call_terminate(a1);
  }

  __clang_call_terminate(a1);
}

void DeleteFailedTile(void *a1, int a2, int a3, int a4, int a5)
{
  v9 = a1;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__6126;
  v18[4] = __Block_byref_object_dispose__6127;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __DeleteFailedTile_block_invoke;
  v11[3] = &unk_1E704FA20;
  v10 = v9;
  v12 = v10;
  v13 = v18;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  [v10 executeStatement:@"DeleteFailedTile" statementBlock:v11];

  _Block_object_dispose(v18, 8);
}

void sub_1866B3CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DeleteFailedTile_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 bindIntParameter:"@key_a" toValue:v4 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 52);
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v23 = *(v10 + 40);
  v11 = [v9 bindIntParameter:"@key_b" toValue:v8 inStatement:a2 error:&v23];
  objc_storeStrong((v10 + 40), v23);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 8);
  v22 = *(v14 + 40);
  v15 = [v13 bindIntParameter:"@key_c" toValue:v12 inStatement:a2 error:&v22];
  objc_storeStrong((v14 + 40), v22);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 60);
  v17 = *(a1 + 32);
  v18 = *(*(a1 + 40) + 8);
  v21 = *(v18 + 40);
  v19 = [v17 bindIntParameter:"@key_d" toValue:v16 inStatement:a2 error:&v21];
  objc_storeStrong((v18 + 40), v21);
  return v19;
}

uint64_t __InsertTile_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  v44 = *(v6 + 40);
  v7 = [v5 bindIntParameter:"@key_a" toValue:v4 inStatement:a2 error:&v44];
  objc_storeStrong((v6 + 40), v44);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 68);
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  obj = *(v10 + 40);
  v11 = [v9 bindIntParameter:"@key_b" toValue:v8 inStatement:a2 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 8);
  v42 = *(v14 + 40);
  v15 = [v13 bindIntParameter:"@key_c" toValue:v12 inStatement:a2 error:&v42];
  objc_storeStrong((v14 + 40), v42);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 76);
  v17 = *(a1 + 32);
  v18 = *(*(a1 + 40) + 8);
  v41 = *(v18 + 40);
  v19 = [v17 bindIntParameter:"@key_d" toValue:v16 inStatement:a2 error:&v41];
  objc_storeStrong((v18 + 40), v41);
  if (!v19)
  {
    return 0;
  }

  v20 = *(a1 + 80);
  v21 = *(a1 + 32);
  v22 = *(*(a1 + 40) + 8);
  v40 = *(v22 + 40);
  v23 = [v21 bindIntParameter:"@tileset" toValue:v20 inStatement:a2 error:&v40];
  objc_storeStrong((v22 + 40), v40);
  if (!v23)
  {
    return 0;
  }

  v24 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = *(*(a1 + 40) + 8);
  v39 = *(v26 + 40);
  v27 = [v25 bindInt64Parameter:"@insert_timestamp" toValue:v24 inStatement:a2 error:&v39];
  objc_storeStrong((v26 + 40), v39);
  if (!v27)
  {
    return 0;
  }

  v28 = *(a1 + 84);
  v29 = *(a1 + 32);
  v30 = *(*(a1 + 40) + 8);
  v38 = *(v30 + 40);
  v31 = [v29 bindIntParameter:"@insert_reason" toValue:v28 inStatement:a2 error:&v38];
  objc_storeStrong((v30 + 40), v38);
  if (!v31)
  {
    return 0;
  }

  v32 = *(a1 + 56);
  v33 = *(a1 + 32);
  v34 = *(*(a1 + 40) + 8);
  v37 = *(v34 + 40);
  v35 = [v33 bindInt64Parameter:"@data_pk" toValue:v32 inStatement:a2 error:&v37];
  objc_storeStrong((v34 + 40), v37);
  return v35;
}

void DeleteData(void *a1, uint64_t a2)
{
  v3 = a1;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__6126;
  v9[4] = __Block_byref_object_dispose__6127;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __DeleteData_block_invoke;
  v5[3] = &unk_1E70628D8;
  v4 = v3;
  v7 = v9;
  v8 = a2;
  v6 = v4;
  [v4 executeStatement:@"DeleteData" statementBlock:v5];

  _Block_object_dispose(v9, 8);
}

void sub_1866B4128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DeleteData_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@rowid" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

uint64_t ___ZN3geo13DispatchTimer8scheduleEyy11qos_class_t_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_set_timer(*(v1 + 8), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v2 = *(v1 + 40);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

id LoadItem::voucher(LoadItem *this)
{
  if (*(this + 14) && (v1 = *(this + 13)) != 0)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = v1[23];
      if (v4)
      {
        v5 = *(v1 + 45);

        if (v5 > v2)
        {
          v2 = *(v1 + 45);
          v6 = v1[23];

          v3 = v6;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *geo::_retain_ptr<NSDictionary * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1EF7EA1B8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void *LoadItem::foreachRequester(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = *(a2 + 24);
      if (!v4)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v4 + 48))(v4, v3 + 3);
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void std::vector<GEORoadEdge * {__strong}>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<GEORoadEdge * {__strong}>>(a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void std::vector<geo::Batch::KeyInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
      do
      {
        v7 = v4 - 10;
        *(v4 - 3) = &unk_1EF7EA1B8;

        v6 -= 10;
        v4 = v7;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void LoadItem::Requester::fireBeginNetwork(LoadItem::Requester *this)
{
  *(this + 136) = 1;
  v2 = _Block_copy(*(this + 10));
  if (v2)
  {
    v3 = v2;
    dispatch_async(*(this + 7), v2);
    v2 = v3;
  }
}

void std::__list_imp<NSString * {__strong}>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t _GEOTileResponseIsCacheable(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = [v3 objectForKeyedSubscript:@"TileIsCacheable"];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass() ^ 1;
  v7 = (v4 < 0x40) & v6;
  if ((v6 & 1) == 0 && v4 <= 0x3F)
  {
    v7 = [v5 BOOLValue];
  }

  return v7;
}

void _remove(void *a1, void *a2)
{
  v3 = a1;
  if (*(v3 + 1) == a2)
  {
    *(v3 + 1) = a2[2];
  }

  v4 = a2[3];
  if (*(v3 + 2) == a2)
  {
    *(v3 + 2) = v4;
  }

  v5 = a2[2];
  if (v4)
  {
    *(v4 + 16) = v5;
  }

  if (v5)
  {
    *(v5 + 24) = v4;
  }

  v6 = v3;
  [*(v3 + 3) removeObjectForKey:a2];
  free(a2);
  --v6[4];
  ++v6[6];
}

uint64_t gcl::ArithmeticDecoder::decodeExpGolomb(unsigned int *a1, int a2, _WORD *a3)
{
  v3 = 0;
  v4 = *a3;
  v6 = a1[7];
  v5 = a1[8];
  if (v6 >= 0x40000001)
  {
    goto LABEL_12;
  }

LABEL_2:
  v7 = a1[10];
  do
  {
    v5 *= 2;
    a1[10] = --v7;
    if (!v7)
    {
      v10 = *(a1 + 2);
      *(a1 + 2) = v10 + 1;
      v11 = *a1;
      if (v10 + 1 >= v11)
      {
        v12 = 65280;
      }

      else
      {
        v12 = *(*(a1 + 1) + v10 + 1) << 8;
      }

      v13 = v10 + 2;
      *(a1 + 2) = v13;
      if (v13 < v11)
      {
        v8 = *(*(a1 + 1) + v13);
      }

      else
      {
        v8 = 255;
      }

      v5 |= v12 | v8;
      v7 = 16;
      a1[10] = 16;
    }

    v9 = 2 * v6;
    v16 = v6 >= 0x20000001;
    v6 *= 2;
  }

  while (!v16);
  while (1)
  {
    v6 = (HIWORD(v9) * v4) & 0xFFFF0000;
    v14 = v9 - v6;
    if (v5 < v6)
    {
      v15 = 0;
    }

    else
    {
      v15 = (HIWORD(v9) * v4) & 0xFFFF0000;
    }

    v16 = v5 >= v6;
    v5 -= v15;
    v17 = (v4 >> 7) & 0x1FE;
    if (v16)
    {
      ++v17;
    }

    v4 += *(a1 + v17 + 24);
    *a3 = v4;
    if (v16)
    {
      v6 = v14;
    }

    a1[7] = v6;
    a1[8] = v5;
    if (!v16 || a2 >= 31)
    {
      break;
    }

    v19 = 1 << a2++;
    v3 |= v19;
    if (v6 < 0x40000001)
    {
      goto LABEL_2;
    }

LABEL_12:
    v9 = v6;
  }

  for (i = 0; a2; i |= v24 << a2)
  {
    if (v6 >= 0x40000001)
    {
      v22 = v6;
    }

    else
    {
      v25 = a1[10];
      do
      {
        v5 *= 2;
        a1[10] = --v25;
        if (!v25)
        {
          v27 = *(a1 + 2);
          *(a1 + 2) = v27 + 1;
          v28 = *a1;
          if (v27 + 1 >= v28)
          {
            v29 = 65280;
          }

          else
          {
            v29 = *(*(a1 + 1) + v27 + 1) << 8;
          }

          v30 = v27 + 2;
          *(a1 + 2) = v30;
          if (v30 < v28)
          {
            v26 = *(*(a1 + 1) + v30);
          }

          else
          {
            v26 = 255;
          }

          v5 |= v29 | v26;
          v25 = 16;
          a1[10] = 16;
        }

        v22 = 2 * v6;
        v16 = v6 >= 0x20000001;
        v6 *= 2;
      }

      while (!v16);
    }

    v23 = (v22 >> 1) & 0x7FFF0000;
    v6 = v22 - v23;
    v24 = v5 >= v23;
    if (v5 < v23)
    {
      v6 = v23;
      v23 = 0;
    }

    v5 -= v23;
    a1[7] = v6;
    a1[8] = v5;
    --a2;
  }

  return (i + v3);
}

uint64_t gcl::tmesh::DecoderImpl::decompressTFanConnectivity(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int *a5, _DWORD *a6, _DWORD *a7)
{
  v12 = (a1 + 2060 + 16 * a3);
  v13 = *v12;
  v14 = *(a1 + 2732);
  v15 = *(a1 + 2736);
  if (v14 >= 0x40000001)
  {
    v18 = *(a1 + 2732);
  }

  else
  {
    v16 = *(a1 + 2744);
    do
    {
      v15 *= 2;
      *(a1 + 2744) = --v16;
      if (!v16)
      {
        v19 = *(a1 + 2720);
        *(a1 + 2720) = v19 + 1;
        v20 = *(a1 + 2704);
        if (v19 + 1 >= v20)
        {
          v21 = 65280;
        }

        else
        {
          v21 = *(*(a1 + 2712) + v19 + 1) << 8;
        }

        v22 = v19 + 2;
        *(a1 + 2720) = v22;
        if (v22 < v20)
        {
          v17 = *(*(a1 + 2712) + v22);
        }

        else
        {
          v17 = 255;
        }

        v15 |= v21 | v17;
        v16 = 16;
        *(a1 + 2744) = 16;
      }

      v18 = 2 * v14;
      v28 = v14 >= 0x20000001;
      v14 *= 2;
    }

    while (!v28);
  }

  v23 = (HIWORD(v18) * v13) & 0xFFFF0000;
  v24 = v18 - v23;
  if (v15 < v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = v15 - v25;
  v27 = a1 + 2752;
  *(a1 + 2736) = v26;
  v28 = v15 >= v23;
  if (v15 < v23)
  {
    v29 = (v13 >> 7) & 0x1FE;
  }

  else
  {
    v29 = ((v13 >> 7) & 0x1FE) + 1;
  }

  *v12 = *(v27 + 2 * v29) + v13;
  if (v28)
  {
    v30 = v24;
  }

  else
  {
    v30 = v23;
  }

  *(a1 + 2732) = v30;
  if (v28)
  {
    v31 = 0;
    v32 = 0;
    v222 = 1;
    v223 = 0;
    goto LABEL_25;
  }

  v48 = v12[1];
  if (v23 >= 0x40000001)
  {
    v51 = v23;
  }

  else
  {
    v49 = *(a1 + 2744);
    do
    {
      v26 *= 2;
      *(a1 + 2744) = --v49;
      if (!v49)
      {
        v52 = *(a1 + 2720);
        *(a1 + 2720) = v52 + 1;
        v53 = *(a1 + 2704);
        if (v52 + 1 >= v53)
        {
          v54 = 65280;
        }

        else
        {
          v54 = *(*(a1 + 2712) + v52 + 1) << 8;
        }

        v55 = v52 + 2;
        *(a1 + 2720) = v55;
        if (v55 < v53)
        {
          v50 = *(*(a1 + 2712) + v55);
        }

        else
        {
          v50 = 255;
        }

        v26 |= v54 | v50;
        v49 = 16;
        *(a1 + 2744) = 16;
      }

      v51 = 2 * v23;
      v28 = v23 >= 0x20000001;
      v23 *= 2;
    }

    while (!v28);
  }

  v90 = (HIWORD(v51) * v48) & 0xFFFF0000;
  v91 = (v48 >> 7) & 0x1FE;
  v92 = v51 - v90;
  v93 = v26 >= v90;
  v94 = v26 >= v90;
  if (v26 >= v90)
  {
    ++v91;
  }

  v12[1] = *(v27 + 2 * v91) + v48;
  if (v26 < v90)
  {
    v95 = v90;
  }

  else
  {
    v95 = v92;
  }

  if (v26 < v90)
  {
    v96 = 0;
  }

  else
  {
    v96 = v90;
  }

  v97 = 4;
  if (v93)
  {
    v97 = 6;
  }

  v98 = v26 - v96;
  *(a1 + 2732) = v95;
  *(a1 + 2736) = v98;
  v99 = a1 + 2060 + 16 * a3;
  v100 = *(v99 + v97);
  if (v95 >= 0x40000001)
  {
    v103 = v95;
  }

  else
  {
    v101 = *(a1 + 2744);
    do
    {
      v98 *= 2;
      *(a1 + 2744) = --v101;
      if (!v101)
      {
        v104 = *(a1 + 2720);
        *(a1 + 2720) = v104 + 1;
        v105 = *(a1 + 2704);
        if (v104 + 1 >= v105)
        {
          v106 = 65280;
        }

        else
        {
          v106 = *(*(a1 + 2712) + v104 + 1) << 8;
        }

        v107 = v104 + 2;
        *(a1 + 2720) = v107;
        if (v107 < v105)
        {
          v102 = *(*(a1 + 2712) + v107);
        }

        else
        {
          v102 = 255;
        }

        v98 |= v106 | v102;
        v101 = 16;
        *(a1 + 2744) = 16;
      }

      v103 = 2 * v95;
      v28 = v95 >= 0x20000001;
      v95 *= 2;
    }

    while (!v28);
  }

  v108 = (HIWORD(v103) * v100) & 0xFFFF0000;
  v109 = (v100 >> 7) & 0x1FE;
  v110 = v103 - v108;
  v111 = v98 >= v108;
  if (v98 >= v108)
  {
    ++v109;
  }

  *(v99 + v97) = *(v27 + 2 * v109) + v100;
  if (v98 < v108)
  {
    v112 = v108;
  }

  else
  {
    v112 = v110;
  }

  if (v98 < v108)
  {
    v113 = 0;
  }

  else
  {
    v113 = v108;
  }

  v114 = v98 - v113;
  *(a1 + 2732) = v112;
  *(a1 + 2736) = v114;
  v115 = v94 | (2 * v111);
  v116 = *(v99 + 2 * (v115 | 4u));
  if (v112 >= 0x40000001)
  {
    v119 = v112;
  }

  else
  {
    v117 = *(a1 + 2744);
    do
    {
      v114 *= 2;
      *(a1 + 2744) = --v117;
      if (!v117)
      {
        v120 = *(a1 + 2720);
        *(a1 + 2720) = v120 + 1;
        v121 = *(a1 + 2704);
        if (v120 + 1 >= v121)
        {
          v122 = 65280;
        }

        else
        {
          v122 = *(*(a1 + 2712) + v120 + 1) << 8;
        }

        v123 = v120 + 2;
        *(a1 + 2720) = v123;
        if (v123 < v121)
        {
          v118 = *(*(a1 + 2712) + v123);
        }

        else
        {
          v118 = 255;
        }

        v114 |= v122 | v118;
        v117 = 16;
        *(a1 + 2744) = 16;
      }

      v119 = 2 * v112;
      v28 = v112 >= 0x20000001;
      v112 *= 2;
    }

    while (!v28);
  }

  v124 = (HIWORD(v119) * v116) & 0xFFFF0000;
  v125 = (v116 >> 7) & 0x1FE;
  if (v114 >= v124)
  {
    ++v125;
  }

  v126 = v119 - v124;
  *(v99 + 2 * (v115 | 4u)) = *(v27 + 2 * v125) + v116;
  if (v114 < v124)
  {
    v127 = v124;
  }

  else
  {
    v127 = v126;
  }

  if (v114 < v124)
  {
    v128 = 0;
  }

  else
  {
    v128 = v124;
  }

  v32 = v115 + 5;
  if (v114 < v124)
  {
    v32 = v115 + 1;
  }

  *(a1 + 2732) = v127;
  *(a1 + 2736) = v114 - v128;
  if (v32 > 3)
  {
    if (v32 <= 5)
    {
      if (v32 == 4)
      {
        v31 = 0;
        v220 = 0;
        v222 = 0;
        v223 = 1;
        goto LABEL_26;
      }

      v222 = 0;
      v223 = 0;
      v31 = 0;
      goto LABEL_25;
    }

    if (v32 == 6)
    {
      v222 = 0;
      v223 = 0;
      v220 = 0;
      v31 = 1;
      goto LABEL_26;
    }

    if (v32 == 7)
    {
      v220 = 0;
      v222 = 0;
      v223 = 1;
      v31 = 1;
      goto LABEL_26;
    }

LABEL_205:
    v222 = 0;
    v223 = 0;
    v31 = 0;
    v220 = 0;
    goto LABEL_26;
  }

  if (v32 == 1)
  {
    v223 = 0;
    v220 = 0;
    v31 = 1;
LABEL_209:
    v222 = 1;
    goto LABEL_26;
  }

  if (v32 == 2)
  {
    v223 = 0;
    v31 = 0;
    v220 = 0;
    goto LABEL_209;
  }

  if (v32 != 3)
  {
    goto LABEL_205;
  }

  v31 = 0;
  v222 = 0;
  v223 = 1;
LABEL_25:
  v220 = 1;
LABEL_26:
  *a5 = v32;
  if (*(a1 + 3817) == 1 && (*(a1 + 3816) & 1) != 0)
  {
    v33 = *(*(a1 + 224) + 12 * a2);
    if (v33 <= 19)
    {
      v33 = 19;
    }

    v34 = v33 - 19;
    v225 = v34 >> 1;
    v226 = 15;
    v28 = v34 >= 0x1E;
    v35 = &v226;
    if (!v28)
    {
      v35 = &v225;
    }
  }

  else
  {
    v227 = 7;
    v35 = (*(a1 + 80) + 4 * a2);
    if (*v35 >= 7)
    {
      v35 = &v227;
    }
  }

  v36 = *v35;
  v37 = (a1 + 2140 + 6 * v36);
  v38 = *v37;
  v39 = *(a1 + 2732);
  v40 = *(a1 + 2736);
  if (v39 >= 0x40000001)
  {
    v43 = *(a1 + 2732);
  }

  else
  {
    v41 = *(a1 + 2744);
    do
    {
      v40 *= 2;
      *(a1 + 2744) = --v41;
      if (!v41)
      {
        v44 = *(a1 + 2720);
        *(a1 + 2720) = v44 + 1;
        v45 = *(a1 + 2704);
        if (v44 + 1 >= v45)
        {
          v46 = 65280;
        }

        else
        {
          v46 = *(*(a1 + 2712) + v44 + 1) << 8;
        }

        v47 = v44 + 2;
        *(a1 + 2720) = v47;
        if (v47 < v45)
        {
          v42 = *(*(a1 + 2712) + v47);
        }

        else
        {
          v42 = 255;
        }

        v40 |= v46 | v42;
        v41 = 16;
        *(a1 + 2744) = 16;
      }

      v43 = 2 * v39;
      v28 = v39 >= 0x20000001;
      v39 *= 2;
    }

    while (!v28);
  }

  v56 = (HIWORD(v43) * v38) & 0xFFFF0000;
  v57 = (v38 >> 7) & 0x1FE;
  v58 = v43 - v56;
  v59 = v40 >= v56;
  v60 = v40 >= v56;
  if (v40 >= v56)
  {
    ++v57;
  }

  *v37 = *(v27 + 2 * v57) + v38;
  if (v40 < v56)
  {
    v61 = v56;
  }

  else
  {
    v61 = v58;
  }

  if (v40 < v56)
  {
    v56 = 0;
  }

  v62 = 2;
  if (v59)
  {
    v62 = 4;
  }

  v63 = v40 - v56;
  *(a1 + 2732) = v61;
  *(a1 + 2736) = v63;
  v64 = a1 + 2140 + 6 * v36;
  v65 = *(v64 + v62);
  if (v61 >= 0x40000001)
  {
    v68 = v61;
  }

  else
  {
    v66 = *(a1 + 2744);
    do
    {
      v63 *= 2;
      *(a1 + 2744) = --v66;
      if (!v66)
      {
        v69 = *(a1 + 2720);
        *(a1 + 2720) = v69 + 1;
        v70 = *(a1 + 2704);
        if (v69 + 1 >= v70)
        {
          v71 = 65280;
        }

        else
        {
          v71 = *(*(a1 + 2712) + v69 + 1) << 8;
        }

        v72 = v69 + 2;
        *(a1 + 2720) = v72;
        if (v72 < v70)
        {
          v67 = *(*(a1 + 2712) + v72);
        }

        else
        {
          v67 = 255;
        }

        v63 |= v71 | v67;
        v66 = 16;
        *(a1 + 2744) = 16;
      }

      v68 = 2 * v61;
      v28 = v61 >= 0x20000001;
      v61 *= 2;
    }

    while (!v28);
  }

  v73 = (HIWORD(v68) * v65) & 0xFFFF0000;
  v74 = (v65 >> 7) & 0x1FE;
  v75 = v68 - v73;
  if (v63 >= v73)
  {
    ++v74;
  }

  *(v64 + v62) = *(v27 + 2 * v74) + v65;
  if (v63 < v73)
  {
    v76 = v73;
  }

  else
  {
    v76 = v75;
  }

  if (v63 < v73)
  {
    v77 = 0;
  }

  else
  {
    v77 = v73;
  }

  *(a1 + 2732) = v76;
  *(a1 + 2736) = v63 - v77;
  v78 = v60 | (2 * (v63 >= v73));
  if (v78 == 3)
  {
    v79 = gcl::ArithmeticDecoder::decodeExpGolomb((a1 + 2704), 0, (a1 + 2236));
    if (v79 < -3)
    {
      goto LABEL_96;
    }

    v78 = v79 + 3;
    v80 = v79 + 4;
  }

  else
  {
    v80 = v78 + 1;
  }

  if (v78 < *(a1 + 3792) - *a7)
  {
    v218 = v31;
    v219 = v80;
    v216 = a7;
    v217 = a5;
    v215 = a4;
    v81 = v78 + 2;
    v82 = *(a1 + 8);
    v83 = a1 + 8;
    v84 = (*(a1 + 16) - v82) >> 2;
    if (v80 >= v84)
    {
      v129 = (2 * v81) | 1u;
      if (v129 <= v84)
      {
        if (v129 < v84)
        {
          *(a1 + 16) = v82 + 4 * v129;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 8), v129 - v84);
        v80 = v219;
      }

      v151 = *(a1 + 32);
      v150 = *(a1 + 40);
      if (v129 <= &v150[-v151])
      {
        if (v129 < &v150[-v151])
        {
          *(a1 + 40) = v151 + v129;
        }
      }

      else
      {
        if (*(a1 + 48) - v150 < v129 - &v150[-v151])
        {
          operator new();
        }

        v170 = v129 + v151;
        bzero(v150, v129 - &v150[-v151]);
        *(a1 + 40) = v170;
        v80 = v219;
      }
    }

    **(a1 + 32) = v223;
    v85 = v80;
    *(*(a1 + 32) + v80) = v218;
    v86 = *(a1 + 8);
    v87 = (*(a1 + 152) + 16 * a2);
    v214 = *v87;
    if (v222)
    {
      v88 = v87[1];
    }

    else
    {
      if (v223)
      {
LABEL_162:
        v224 = v86;
        v130 = a2;
        if (v78)
        {
          v131 = *(a1 + 2276);
          v132 = *(a1 + 2732);
          v133 = *(a1 + 2736);
          if (v132 >= 0x40000001)
          {
            v136 = *(a1 + 2732);
          }

          else
          {
            v134 = *(a1 + 2744);
            do
            {
              v133 *= 2;
              *(a1 + 2744) = --v134;
              if (!v134)
              {
                v137 = *(a1 + 2720);
                *(a1 + 2720) = v137 + 1;
                v138 = *(a1 + 2704);
                if (v137 + 1 >= v138)
                {
                  v139 = 65280;
                }

                else
                {
                  v139 = *(*(a1 + 2712) + v137 + 1) << 8;
                }

                v140 = v137 + 2;
                *(a1 + 2720) = v140;
                if (v140 < v138)
                {
                  v135 = *(*(a1 + 2712) + v140);
                }

                else
                {
                  v135 = 255;
                }

                v133 |= v139 | v135;
                v134 = 16;
                *(a1 + 2744) = 16;
              }

              v136 = 2 * v132;
              v28 = v132 >= 0x20000001;
              v132 *= 2;
            }

            while (!v28);
          }

          v141 = (HIWORD(v136) * v131) & 0xFFFF0000;
          v142 = v136 - v141;
          if (v133 < v141)
          {
            v143 = 0;
          }

          else
          {
            v143 = (HIWORD(v136) * v131) & 0xFFFF0000;
          }

          *(a1 + 2736) = v133 - v143;
          v144 = v133 >= v141;
          if (v133 < v141)
          {
            v145 = (v131 >> 7) & 0x1FE;
          }

          else
          {
            v145 = ((v131 >> 7) & 0x1FE) + 1;
          }

          *(a1 + 2276) = *(v27 + 2 * v145) + v131;
          if (v144)
          {
            v146 = v142;
          }

          else
          {
            v146 = v141;
          }

          *(a1 + 2732) = v146;
          if (v144)
          {
            v147 = 1;
            do
            {
              *(*(a1 + 32) + v147++) = 1;
            }

            while (v85 != v147);
          }

          else if (v219 == 2)
          {
            *(*(a1 + 32) + 1) = 0;
            if (*(a1 + 3816) == 1)
            {
              v149 = gcl::tmesh::DecoderImpl::decodeIndex(a1, *(a1 + 3788));
            }

            else
            {
              v148 = *(a1 + 3788);
              v149 = v148 - gcl::ArithmeticDecoder::decodeExpGolomb((a1 + 2704), 0, (a1 + 2274));
            }

            *(*v83 + 4) = v149;
          }

          else
          {
            v152 = 1;
            do
            {
              v154 = *(a1 + 2732);
              v155 = *(a1 + 2736);
              if (v154 >= 0x40000001)
              {
                v158 = *(a1 + 2732);
              }

              else
              {
                v156 = *(a1 + 2744);
                do
                {
                  v155 *= 2;
                  *(a1 + 2744) = --v156;
                  if (!v156)
                  {
                    v159 = *(a1 + 2720);
                    *(a1 + 2720) = v159 + 1;
                    v160 = *(a1 + 2704);
                    if (v159 + 1 >= v160)
                    {
                      v161 = 65280;
                    }

                    else
                    {
                      v161 = *(*(a1 + 2712) + v159 + 1) << 8;
                    }

                    v162 = v159 + 2;
                    *(a1 + 2720) = v162;
                    if (v162 < v160)
                    {
                      v157 = *(*(a1 + 2712) + v162);
                    }

                    else
                    {
                      v157 = 255;
                    }

                    v155 |= v161 | v157;
                    v156 = 16;
                    *(a1 + 2744) = 16;
                  }

                  v158 = 2 * v154;
                  v28 = v154 >= 0x20000001;
                  v154 *= 2;
                }

                while (!v28);
              }

              v163 = *(a1 + 2278);
              v164 = (HIWORD(v158) * v163) & 0xFFFF0000;
              v165 = (v163 >> 7) & 0x1FE;
              v166 = v158 - v164;
              v167 = v155 >= v164;
              if (v155 >= v164)
              {
                ++v165;
              }

              *(a1 + 2278) = *(v27 + 2 * v165) + v163;
              if (v155 < v164)
              {
                v168 = v164;
              }

              else
              {
                v168 = v166;
              }

              if (v155 < v164)
              {
                v164 = 0;
              }

              *(a1 + 2732) = v168;
              *(a1 + 2736) = v155 - v164;
              *(*(a1 + 32) + v152) = v167;
              if (!*(*(a1 + 32) + v152))
              {
                if (*(a1 + 3816) == 1)
                {
                  v153 = gcl::tmesh::DecoderImpl::decodeIndex(a1, *(a1 + 3788));
                }

                else
                {
                  v169 = *(a1 + 3788);
                  v153 = v169 - gcl::ArithmeticDecoder::decodeExpGolomb((a1 + 2704), 0, (a1 + 2274));
                }

                *(*v83 + 4 * v152) = v153;
              }

              ++v152;
            }

            while (v152 != v85);
          }
        }

        if (*(a1 + 3872))
        {
          return 0xFFFFFFFFLL;
        }

        if ((v220 & 1) == 0)
        {
          v172 = v219;
          if (v218)
          {
            goto LABEL_246;
          }

          if (*(a1 + 3816) == 1)
          {
            v214 = gcl::tmesh::DecoderImpl::decodeIndex(a1, v130 + 1);
          }

          else
          {
            v214 = v130 + 1 + gcl::ArithmeticDecoder::decodeSignedExpGolomb((a1 + 2704), 0, (a1 + 2272), (a1 + 2274));
          }
        }

        v224[v85] = v214;
        v172 = v219;
LABEL_246:
        v89 = (a1 + 3872);
        if (*v217 == 3 || *v217 == 5)
        {
          v173 = *(a1 + 32);
          v174 = v172 + 1;
          do
          {
            if (*(v173 + v85))
            {
              v175 = (*a6)++;
              *(*v83 + 4 * v85) = v175;
            }

            --v85;
            --v174;
          }

          while (v174 > 0);
          v176 = v216;
        }

        else
        {
          v187 = 0;
          v173 = *(a1 + 32);
          v176 = v216;
          do
          {
            if (*(v173 + v187))
            {
              v188 = (*a6)++;
              *(*v83 + 4 * v187) = v188;
            }

            ++v187;
          }

          while (v81 != v187);
        }

        v177 = 0;
        v178 = *(a1 + 152);
        while (1)
        {
          v179 = *(*(a1 + 8) + 4 * v177);
          if (v179 < 0 || v179 >= ((*(a1 + 160) - v178) >> 4))
          {
            goto LABEL_97;
          }

          if (v81 == ++v177)
          {
            v180 = *v217;
            if (*v217 > 2)
            {
              if (v180 == 3 || v180 == 5)
              {
                v189 = v219;
                if (v78 <= 0x7FFFFFFD)
                {
                  v190 = (v178 + 16 * v130);
                  v191 = v190[3];
                  v192 = *v190;
                  v193 = v78;
                  do
                  {
                    v195 = v192;
                    v192 = *(*(a1 + 8) + 4 * v193);
                    if (*(*(a1 + 32) + v193))
                    {
                      v196 = (*(a1 + 176) + 12 * v192);
                      *v196 = v130;
                      v196[1] = v195;
                      v196[2] = v191;
                    }

                    v191 = v195;
                  }

                  while (v193-- > 0);
                }
              }

              else
              {
                v189 = v219;
                if (v81 >= 1)
                {
                  v209 = 0;
                  v210 = -1;
                  v211 = -1;
                  do
                  {
                    v212 = v210;
                    v210 = *(*(a1 + 8) + 4 * v209);
                    if (*(*(a1 + 32) + v209))
                    {
                      v213 = (*(a1 + 176) + 12 * v210);
                      *v213 = v130;
                      v213[1] = v212;
                      v213[2] = v211;
                    }

                    ++v209;
                    v211 = v212;
                  }

                  while (v81 != v209);
                }
              }
            }

            else
            {
              v181 = (v178 + 16 * v130);
              if (v78 <= 0x7FFFFFFD)
              {
                v182 = v181[1];
                v183 = v181[2];
                v184 = 1;
                do
                {
                  v185 = *(*(a1 + 8) + 4 * v184);
                  if (*(*(a1 + 32) + v184))
                  {
                    v186 = (*(a1 + 176) + 12 * v185);
                    *v186 = v130;
                    v186[1] = v182;
                    v186[2] = v183;
                  }

                  ++v184;
                  v183 = v182;
                  v182 = v185;
                }

                while (v81 != v184);
                v173 = *(a1 + 32);
              }

              v189 = v219;
              if (!v180 && *(v173 + v78))
              {
                v197 = (*(a1 + 200) + 12 * *(*(a1 + 8) + 4 * v78));
                *v197 = v130;
                v197[1] = *v181;
                v197[2] = v181[3];
              }
            }

            if (*(a1 + 3816) == 1)
            {
              v198 = *(a1 + 3817) ^ 1;
            }

            else
            {
              v198 = 1;
            }

            if ((*v176 + v189) <= *(a1 + 3792))
            {
              v199 = *(a1 + 152);
              v200 = v81 - 1;
              v201 = (*(a1 + 8) + 4);
              do
              {
                v203 = *(v201 - 1);
                v202 = *v201;
                v204 = (*v176)++;
                v205 = (v215 + 12 * v204);
                *v205 = v130;
                v205[1] = v203;
                v205[2] = v202;
                v206 = (v199 + 16 * v203);
                v207 = v199 + 16 * v202;
                *(v207 + 4) = v203;
                *(v207 + 8) = v130;
                *v206 = v202;
                v206[3] = v130;
                if (v198)
                {
                  v208 = *(a1 + 80);
                  ++*(v208 + 4 * v203);
                  ++*(v208 + 4 * v202);
                }

                ++v201;
                --v200;
              }

              while (v200);
              return v81;
            }

            goto LABEL_97;
          }
        }
      }

      if (*(a1 + 3816) == 1)
      {
        v88 = gcl::tmesh::DecoderImpl::decodeIndex(a1, a2 - 1);
      }

      else
      {
        v88 = a2 - 1 + gcl::ArithmeticDecoder::decodeSignedExpGolomb((a1 + 2704), 0, (a1 + 2272), (a1 + 2274));
      }
    }

    *v86 = v88;
    goto LABEL_162;
  }

LABEL_96:
  v89 = (a1 + 3872);
LABEL_97:
  *v89 = 3;
  return 0xFFFFFFFFLL;
}

uint64_t geo::codec::_readPois(geo::codec::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v107[5] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *(a1 + 1);
  if (!v6)
  {
LABEL_5:
    v9 = 0;
    v10 = a3[1];
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = 0;
  v8 = 0;
  while (*(*a1 + 16 * v7) != 30)
  {
    v7 = ++v8;
    if (v6 <= v8)
    {
      goto LABEL_5;
    }
  }

  v9 = geo::codec::chapterAt(a1, v8, 30, (v5 + 1920));
  v5 = *a3;
  v10 = a3[1];
  if (v10)
  {
LABEL_6:
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  v11.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (!v9)
  {
    v20 = 1;
    goto LABEL_52;
  }

  v106 = 0uLL;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  if (geo::codec::chapterReadVarUint32(v9, &v105 + 1))
  {
    v12 = geo::codec::chapterAt(a1, HIDWORD(v105), 20, (*a3 + 1920));
    v13 = v12;
    if (v12)
    {
      v14 = geo::codec::zone_mallocator::instance(v12);
      v100 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsVertexPool>(v14);
      v107[0] = 0;
      if (!v100)
      {
LABEL_40:
        v21 = 733;
        goto LABEL_41;
      }

      VarUint32 = geo::codec::chapterReadVarUint32(v13, v107 + 1);
      if (!VarUint32)
      {
        goto LABEL_37;
      }

      VarUint32 = geo::codec::chapterReadVarUint32(v13, v107);
      if (!VarUint32)
      {
        goto LABEL_37;
      }

      v17 = v13[6];
      v16 = v13[7];
      v18 = v16 - v17;
      if (v16 >= v17)
      {
        v19 = 0;
        *(v13 + 32) = 1;
        v22 = v13[5] + v17;
        v13[2] = v18;
        v13[3] = 0;
        v13[1] = v22;
      }

      else
      {
        v18 = v13[2];
        v19 = v13[3];
      }

      v23 = 8 * v18;
      if (v19 + 6 > v23)
      {
        goto LABEL_37;
      }

      LODWORD(v24) = 0;
      v25 = v13[1];
      v26 = 6;
      do
      {
        v27 = 8 - (v19 & 7);
        if (v26 < v27)
        {
          v27 = v26;
        }

        v24 = (*(v25 + (v19 >> 3)) >> (8 - (v19 & 7) - v27)) & ~(-1 << v27) | (v24 << v27);
        v19 += v27;
        v13[3] = v19;
        v26 -= v27;
      }

      while (v26);
      if (v19 + 6 > v23)
      {
        goto LABEL_37;
      }

      v28 = 0;
      v29 = 6;
      do
      {
        v30 = 8 - (v19 & 7);
        if (v29 < v30)
        {
          v30 = v29;
        }

        v28 = (*(v25 + (v19 >> 3)) >> (8 - (v19 & 7) - v30)) & ~(-1 << v30) | (v28 << v30);
        v19 += v30;
        v13[3] = v19;
        v29 -= v30;
      }

      while (v29);
      if (v19 + 4 > v23)
      {
        goto LABEL_37;
      }

      v31 = 0;
      v32 = 4;
      do
      {
        VarUint32 = 8 - (v19 & 7);
        if (v32 < VarUint32)
        {
          VarUint32 = v32;
        }

        v31 = (*(v25 + (v19 >> 3)) >> (8 - (v19 & 7) - VarUint32)) & ~(-1 << VarUint32) | (v31 << VarUint32);
        v19 += VarUint32;
        v13[3] = v19;
        v32 -= VarUint32;
      }

      while (v32);
      if (v19 + 1 > v23)
      {
LABEL_37:
        v33 = *(v100 + 1);
        if (v33)
        {
          v34 = geo::codec::zone_mallocator::instance(VarUint32);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTilePoint>(v34, v33);
        }

        v35 = geo::codec::zone_mallocator::instance(VarUint32);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVertexPool>(v35, v100);
        goto LABEL_40;
      }

      v47 = *(v25 + (v19 >> 3));
      v13[3] = v19 + 1;
      *v100 = v24;
      v48 = HIDWORD(v107[0]);
      if (HIDWORD(v107[0]) && LODWORD(v107[0]))
      {
        if (!(LODWORD(v107[0]) >> 20) && HIDWORD(v107[0]) == LODWORD(v107[0]) && !v28 && !v31 && ((1 << (~v19 & 7)) & v47) == 0)
        {
          v49 = geo::codec::zone_mallocator::instance(VarUint32);
          VarUint32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsVectorTilePoint>(v49, 8 * v48);
          *(v100 + 1) = VarUint32;
          *(v100 + 2) = v48;
          if (VarUint32)
          {
            v50 = v13[3];
            v51 = 8 * v13[2];
            v52 = v48;
            while (v50 + v24 <= v51)
            {
              if (v24)
              {
                v53 = 0;
                v55 = v13[1];
                v56 = v24;
                do
                {
                  v57 = 8 - (v50 & 7);
                  if (v56 < v57)
                  {
                    v57 = v56;
                  }

                  v53 = (*(v55 + (v50 >> 3)) >> (8 - (v50 & 7) - v57)) & ~(-1 << v57) | (v53 << v57);
                  v50 += v57;
                  v13[3] = v50;
                  v56 -= v57;
                }

                while (v56);
                if (v50 + v24 > v51)
                {
                  goto LABEL_37;
                }

                v54 = 0;
                v58 = v24;
                do
                {
                  v59 = 8 - (v50 & 7);
                  if (v58 < v59)
                  {
                    v59 = v58;
                  }

                  v54 = (*(v55 + (v50 >> 3)) >> (8 - (v50 & 7) - v59)) & ~(-1 << v59) | (v54 << v59);
                  v50 += v59;
                  v13[3] = v50;
                  v58 -= v59;
                }

                while (v58);
              }

              else
              {
                if (v50 > v51)
                {
                  goto LABEL_37;
                }

                v53 = 0;
                v54 = 0;
              }

              *(VarUint32 + 8 * (v48 - v52--)) = vmul_n_f32(vcvt_f32_s32(__PAIR64__(v54, v53)), 1.0 / ~(-1 << v24));
              if (!v52)
              {
                v60 = v13[6] + (v50 >> 3);
                if ((v50 & 7) != 0)
                {
                  ++v60;
                }

                v13[6] = v60;
                *(v13 + 32) = 0;
                if (*(v13 + 16) >= 0x44u)
                {
                  v61 = v60 + 1;
                  if (v60 + 1 > v13[7])
                  {
                    goto LABEL_37;
                  }

                  v62 = *(v13[5] + v60);
                  v13[6] = v61;
                  if (v62)
                  {
                    v63 = geo::codec::zone_mallocator::instance(VarUint32);
                    VarUint32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v63, v48);
                    v64 = VarUint32;
                    if (VarUint32)
                    {
                      *(v100 + 3) = VarUint32;
                      v65 = v13[6];
                      if (v65 + 8 <= v13[7])
                      {
                        v66 = *(v13[5] + v65);
                        v13[6] = v65 + 8;
                        v102[0] = 0;
                        VarUint32 = geo::codec::chapterReadVarInt64(v13, v102);
                        if (VarUint32)
                        {
                          v67 = v13[6];
                          v68 = v13[7];
                          v69 = v68 >= v67;
                          v70 = v68 - v67;
                          if (v69)
                          {
                            v71 = 0;
                            *(v13 + 32) = 1;
                            v72 = v13[5] + v67;
                            v13[2] = v70;
                            v13[3] = 0;
                            v13[1] = v72;
                          }

                          else
                          {
                            v70 = v13[2];
                            v71 = v13[3];
                          }

                          v73 = v71 + 1;
                          v74 = 8 * v70;
                          if (v71 + 1 <= v74)
                          {
                            v75 = v13[1];
                            v76 = *(v75 + (v71 >> 3));
                            v13[3] = v73;
                            if ((v76 >> (~v71 & 7)))
                            {
                              v102[0] = -v102[0];
                            }

                            if (v71 + 7 <= v74)
                            {
                              v77 = 0;
                              v78 = 6;
                              do
                              {
                                VarUint32 = 8 - (v73 & 7);
                                if (v78 < VarUint32)
                                {
                                  VarUint32 = v78;
                                }

                                v77 = (*(v75 + (v73 >> 3)) >> (8 - (v73 & 7) - VarUint32)) & ~(-1 << VarUint32) | (v77 << VarUint32);
                                v73 += VarUint32;
                                v13[3] = v73;
                                v78 -= VarUint32;
                              }

                              while (v78);
                              if (v73 + 6 <= v74)
                              {
                                v79 = 0;
                                v80 = 6;
                                do
                                {
                                  v81 = 8 - (v73 & 7);
                                  if (v80 < v81)
                                  {
                                    v81 = v80;
                                  }

                                  v79 = (*(v75 + (v73 >> 3)) >> (8 - (v73 & 7) - v81)) & ~(-1 << v81) | (v79 << v81);
                                  v73 += v81;
                                  v13[3] = v73;
                                  v80 -= v81;
                                }

                                while (v80);
                                v82 = (v77 + 1);
                                v83 = (v79 + 1);
                                v84 = v102[0];
                                VarUint32 = 8;
                                while (1)
                                {
                                  v85 = v73 + 1;
                                  if (v73 + 1 > v74)
                                  {
                                    break;
                                  }

                                  v86 = *(v75 + (v73 >> 3));
                                  v13[3] = v85;
                                  if ((v86 >> (~v73 & 7)))
                                  {
                                    if (v85 + v82 > v74)
                                    {
                                      goto LABEL_37;
                                    }

                                    v87 = 0;
                                    if (v82)
                                    {
                                      v88 = v82;
                                      do
                                      {
                                        v89 = 8 - (v85 & 7);
                                        if (v88 < v89)
                                        {
                                          v89 = v88;
                                        }

                                        v87 = (*(v75 + (v85 >> 3)) >> (8 - (v85 & 7) - v89)) & ~(-1 << v89) | (v87 << v89);
                                        v85 += v89;
                                        v13[3] = v85;
                                        v88 -= v89;
                                      }

                                      while (v88);
                                    }

                                    v90 = v66 * (v84 + v87);
                                    *(v64 + 4 * v80) = v90;
                                    if (v85 + v83 > v74)
                                    {
                                      goto LABEL_37;
                                    }

                                    if (v83)
                                    {
                                      v91 = v83;
                                      do
                                      {
                                        v92 = 8 - (v85 & 7);
                                        if (v91 < v92)
                                        {
                                          v92 = v91;
                                        }

                                        v85 += v92;
                                        v91 -= v92;
                                      }

                                      while (v91);
                                      v13[3] = v85;
                                    }
                                  }

                                  else
                                  {
                                    *(v64 + 4 * v80) = 2139095039;
                                  }

                                  v73 = v85;
                                  if (++v80 == v48)
                                  {
                                    v93 = v67 + (v85 >> 3);
                                    if ((v85 & 7) != 0)
                                    {
                                      ++v93;
                                    }

                                    v13[6] = v93;
                                    *(v13 + 32) = 0;
                                    goto LABEL_125;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_37;
                  }
                }

                goto LABEL_125;
              }
            }
          }
        }

        goto LABEL_37;
      }

LABEL_125:
      if (geo::codec::chapterReadVarUint32(v9, &v105))
      {
        if (geo::codec::chapterReadVarUint32(v9, &v104 + 1))
        {
          if (HIDWORD(v104) >= 0x10000)
          {
            v98 = *MEMORY[0x1E69E9848];
            v99 = 738;
          }

          else if (geo::codec::_makeSpaceForLabels(HIDWORD(v104), &v103, a3))
          {
            if (geo::codec::chapterReadVarUint32(v9, &v104))
            {
              v95 = *(v100 + 2);
              v96 = v95 > v105;
              v97 = v95 - v105;
              if (v96)
              {
                if (v97 >= v104)
                {
                  if (v104)
                  {
                    geo::codec::attributesForFeatureType(v102, 3);
                  }

                  v20 = 1;
                  goto LABEL_140;
                }

                v98 = *MEMORY[0x1E69E9848];
                v99 = 744;
              }

              else
              {
                v98 = *MEMORY[0x1E69E9848];
                v99 = 743;
              }
            }

            else
            {
              v98 = *MEMORY[0x1E69E9848];
              v99 = 741;
            }
          }

          else
          {
            v98 = *MEMORY[0x1E69E9848];
            v99 = 739;
          }
        }

        else
        {
          v98 = *MEMORY[0x1E69E9848];
          v99 = 736;
        }
      }

      else
      {
        v98 = *MEMORY[0x1E69E9848];
        v99 = 735;
      }

      fprintf(v98, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v99);
      v20 = 0;
LABEL_140:
      geo::codec::VertexPoolDealloc(v100, v94);
      goto LABEL_42;
    }

    v21 = 728;
  }

  else
  {
    v13 = 0;
    v21 = 726;
  }

LABEL_41:
  v36 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v21);
  v20 = 0;
LABEL_42:
  if (a1)
  {
    if (*v9)
    {
      v37 = v9[5];
      v38 = geo::codec::zone_mallocator::instance(v36);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v38, v37);
    }

    v39 = geo::codec::zone_mallocator::instance(v36);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v39, v9);
    if (v13)
    {
      if (*v13)
      {
        v41 = v13[5];
        v42 = geo::codec::zone_mallocator::instance(v40);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v42, v41);
      }

      v43 = geo::codec::zone_mallocator::instance(v40);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v43, v13);
    }
  }

  v44 = *(&v106 + 1);
  if (*(&v106 + 1) && !atomic_fetch_add((*(&v106 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
  }

LABEL_52:
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v101 = 30;
  v102[0] = &v101;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v5 + 1920), &v101, v102) + 4) = ((rep - v11.__d_.__rep_) / 1000) * 0.001;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return v20;
}

void sub_1866B9680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, atomic_ullong *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32, void *__p)
{
  if (!atomic_fetch_add(a16, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a19->__on_zero_shared)(a19, a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(a19);
  }

  v38 = __p;
  if (__p)
  {
    do
    {
      v39 = *v38;
      operator delete(v38);
      v38 = v39;
    }

    while (v39);
  }

  v40 = a31;
  a31 = 0;
  if (v40)
  {
    operator delete(v40);
  }

  v41 = *(v36 - 168);
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41, a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(v41);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  a26 = 30;
  a31 = &a26;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v35 + 1920), &a26, &a31) + 4) = ((rep - v34) / 1000) * 0.001;
  if (v33)
  {
    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      _Unwind_Resume(a1);
    }
  }

  _Unwind_Resume(a1);
}

void geo::codec::accumulateStyleAttributes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[2] = 0;
  v4 = *a2;
  if (*a2)
  {
    if (*(v4 + 8))
    {
      std::allocate_shared[abi:ne200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,std::shared_ptr<FeatureStyleAttributes const> const&,GeoCodecsFeatureStylePairExt * const&,unsigned char const&,0>(v5, v4 + 8, (v4 + 24), (v4 + 32));
    }

    operator new();
  }

  operator new();
}

void sub_1866B9DD8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11 && !atomic_fetch_add(&a11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a11->__on_zero_shared)(a11, a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(a11);
  }

  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11, a2, a3, a4, a5, a6, a7, a8);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1866B9E78(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t geo::codec::hp_readLabel(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v26 = 0;
  if ((geo::codec::chapterReadVarUint32(a2, &v26) & 1) == 0)
  {
    v20 = *MEMORY[0x1E69E9848];
    v21 = 1053;
LABEL_18:
    fprintf(v20, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v21);
    return 0;
  }

  v11 = v26;
  *(a1 + 73) = v26;
  *(a1 + 56) = *a3;
  if (!v11)
  {
    goto LABEL_21;
  }

  do
  {
    v25 = 0;
    if (!geo::codec::chapterReadVarUint32(a2, &v25))
    {
      v21 = 1059;
LABEL_17:
      v20 = *MEMORY[0x1E69E9848];
      goto LABEL_18;
    }

    if (!geo::codec::chapterReadVarUint32(a2, &v24))
    {
      v21 = 1060;
      goto LABEL_17;
    }

    v15 = v25;
    if (v25 >= a4)
    {
      v21 = 1061;
      goto LABEL_17;
    }

    v16 = *a5;
    if (*a3 >= *(*a5 + 1064))
    {
      v21 = 1062;
      goto LABEL_17;
    }

    *(v16[132] + 24 * *a3) = v16[108] + v25;
    v17 = v16[112];
    v18 = v16[113];
    __key = v15;
    v19 = bsearch(&__key, v17, v18, 0x18uLL, geo::codec::findLabelLanguageLocal);
    if (v19)
    {
      v12 = v19[2];
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*a5 + 1056);
    v14 = *a3;
    *(v13 + 24 * *a3 + 8) = v12;
    *a3 = v14 + 1;
    --v11;
  }

  while (v11);
  if (*(a1 + 73))
  {
    v23 = *(v13 + 24 * v10);
    goto LABEL_22;
  }

LABEL_21:
  v23 = 0;
LABEL_22:
  *(a1 + 16) = v23;
  return 1;
}

void sub_1866BA240(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t geo::codec::chapterReadVarInt64(void *a1, void *a2)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = v3 + 1;
  if (v3 + 1 > v2)
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  v6 = a1[5];
  v7 = *(v6 + v3);
  a1[6] = v4;
  v8 = v7 & 0x7F;
  if ((v7 & 0x80) == 0)
  {
    goto LABEL_4;
  }

  v9 = v3 + 2;
  if (v3 + 2 > v2)
  {
    goto LABEL_6;
  }

  v10 = *(v6 + v4);
  a1[6] = v9;
  v8 |= (v10 & 0x7F) << 7;
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v11 = v3 + 3;
  if (v3 + 3 > v2)
  {
LABEL_6:
    result = 0;
    *a2 = v8;
    return result;
  }

  v12 = *(v6 + v9);
  a1[6] = v11;
  v8 |= (v12 & 0x7F) << 14;
  if ((v12 & 0x80000000) == 0)
  {
LABEL_4:
    result = 1;
    *a2 = v8;
    return result;
  }

  v13 = v3 + 4;
  if (v3 + 4 > v2)
  {
    goto LABEL_6;
  }

  v14 = *(v6 + v11);
  a1[6] = v13;
  v8 |= (v14 & 0x7F) << 21;
  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v15 = v3 + 5;
  if (v3 + 5 > v2)
  {
    goto LABEL_6;
  }

  v16 = *(v6 + v13);
  a1[6] = v15;
  v8 |= (v16 & 0x7F) << 28;
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v17 = v3 + 6;
  if (v3 + 6 > v2)
  {
    goto LABEL_6;
  }

  v18 = *(v6 + v15);
  a1[6] = v17;
  v8 |= (v18 & 0x7F) << 35;
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v19 = v3 + 7;
  if (v3 + 7 > v2)
  {
    goto LABEL_6;
  }

  v20 = *(v6 + v17);
  a1[6] = v19;
  v8 |= (v20 & 0x7F) << 42;
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v21 = v3 + 8;
  if (v3 + 8 > v2)
  {
    goto LABEL_6;
  }

  v22 = *(v6 + v19);
  a1[6] = v21;
  v8 |= (v22 & 0x7F) << 49;
  if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v23 = v3 + 9;
  if (v3 + 9 > v2)
  {
    goto LABEL_6;
  }

  v24 = *(v6 + v21);
  a1[6] = v23;
  v8 |= (v24 & 0x7F) << 56;
  if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  v25 = v3 + 10;
  if (v25 > v2)
  {
    goto LABEL_6;
  }

  v26 = *(v6 + v23);
  a1[6] = v25;
  if ((v26 & 0x80) == 0)
  {
    v8 |= v26 << 63;
    goto LABEL_4;
  }

  return 0;
}

BOOL FeatureStyleAttributesSet::FeatureStyleAttributesCompare::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 33);
  if (!*(a1 + 33))
  {
    v4 = 17;
    v6 = *(a1 + 32);
    if (!*(a1 + 32))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v3 = (*a1 + 4);
  v4 = 17;
  do
  {
    v5 = ((v4 << 6) - 0x61C8864680B583EBLL + (v4 >> 2) + *(v3 - 1)) ^ v4;
    v4 = (*v3 - 0x61C8864680B583EBLL + (v5 << 6) + (v5 >> 2)) ^ v5;
    v3 += 2;
    --v2;
  }

  while (v2);
  v6 = *(a1 + 32);
  if (*(a1 + 32))
  {
LABEL_7:
    v7 = (*(a1 + 24) + 4);
    do
    {
      v8 = ((v4 << 6) - 0x61C8864680B583EBLL + (v4 >> 2) + *(v7 - 1)) ^ v4;
      v9 = *v7;
      v7 = (v7 + 12);
      v4 = (v9 - 0x61C8864680B583EBLL + (v8 << 6) + (v8 >> 2)) ^ v8;
      --v6;
    }

    while (v6);
  }

LABEL_9:
  v10 = *(a2 + 33);
  if (!*(a2 + 33))
  {
    v12 = 17;
    v14 = *(a2 + 32);
    if (!*(a2 + 32))
    {
      return v4 < v12;
    }

    goto LABEL_15;
  }

  v11 = (*a2 + 4);
  v12 = 17;
  do
  {
    v13 = ((v12 << 6) - 0x61C8864680B583EBLL + (v12 >> 2) + *(v11 - 1)) ^ v12;
    v12 = (*v11 - 0x61C8864680B583EBLL + (v13 << 6) + (v13 >> 2)) ^ v13;
    v11 += 2;
    --v10;
  }

  while (v10);
  v14 = *(a2 + 32);
  if (*(a2 + 32))
  {
LABEL_15:
    v15 = (*(a2 + 24) + 4);
    do
    {
      v16 = ((v12 << 6) - 0x61C8864680B583EBLL + (v12 >> 2) + *(v15 - 1)) ^ v12;
      v17 = *v15;
      v15 = (v15 + 12);
      v12 = (v17 - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
      --v14;
    }

    while (v14);
  }

  return v4 < v12;
}

void mgcl::tmesh::Decoder::~Decoder(mgcl::tmesh::Decoder *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      v3 = v2[333];
      if (v3)
      {
        v2[334] = v3;
        operator delete(v3);
      }

      v4 = v2[330];
      if (v4)
      {
        v2[331] = v4;
        operator delete(v4);
      }

      v5 = v2[327];
      if (v5)
      {
        v2[328] = v5;
        operator delete(v5);
      }

      v6 = v2[324];
      if (v6)
      {
        v2[325] = v6;
        operator delete(v6);
      }

      v7 = v2[321];
      if (v7)
      {
        v2[322] = v7;
        operator delete(v7);
      }

      v8 = v2[318];
      if (v8)
      {
        v2[319] = v8;
        operator delete(v8);
      }

      v9 = v2[315];
      if (v9)
      {
        v2[316] = v9;
        operator delete(v9);
      }

      v10 = v2[312];
      if (v10)
      {
        v2[313] = v10;
        operator delete(v10);
      }

      v11 = v2[309];
      if (v11)
      {
        v2[310] = v11;
        operator delete(v11);
      }

      v12 = v2[306];
      if (v12)
      {
        v2[307] = v12;
        operator delete(v12);
      }

      v13 = v2[303];
      if (v13)
      {
        v2[304] = v13;
        operator delete(v13);
      }

      v14 = 192;
      do
      {
        v15 = v2[v14 + 29];
        if (v15)
        {
          v2[v14 + 30] = v15;
          operator delete(v15);
        }

        v14 -= 3;
      }

      while (v14 * 8);
      v16 = v2[28];
      if (v16)
      {
        v2[29] = v16;
        operator delete(v16);
      }

      v17 = v2[25];
      if (v17)
      {
        v2[26] = v17;
        operator delete(v17);
      }

      v18 = v2[22];
      if (v18)
      {
        v2[23] = v18;
        operator delete(v18);
      }

      v19 = v2[19];
      if (v19)
      {
        v2[20] = v19;
        operator delete(v19);
      }

      v20 = v2[16];
      if (v20)
      {
        v2[17] = v20;
        operator delete(v20);
      }

      v21 = v2[13];
      if (v21)
      {
        v2[14] = v21;
        operator delete(v21);
      }

      v22 = v2[10];
      if (v22)
      {
        v2[11] = v22;
        operator delete(v22);
      }

      v23 = v2[7];
      if (v23)
      {
        v2[8] = v23;
        operator delete(v23);
      }

      v24 = v2[4];
      if (v24)
      {
        v2[5] = v24;
        operator delete(v24);
      }

      v25 = v2[1];
      if (v25)
      {
        v2[2] = v25;
        operator delete(v25);
      }

      MEMORY[0x18CFD1E40](v2, 0x10F0C40F1726845);
    }

    MEMORY[0x18CFD1E40](v1, 0x20C4093837F09);
  }
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<GeoCodecsVertexAttributesData,0>(geo::codec::zone_mallocator *result)
{
  v2 = *(result + 5);
  if (v2)
  {
    *(result + 6) = v2;
    v3 = geo::codec::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
  }

  v4 = *(result + 1);
  if (v4)
  {
    *(result + 2) = v4;
    v5 = geo::codec::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v5, v4);
  }
}

uint64_t gcl::tmesh::DecoderImpl::parsePositionsAndConnectivityInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 0;
  }

  v3 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  if ((a2 & 0x7FFFFFFFFFFFFFFCLL) == 4 || a2 == 8 || a2 == 9 || (a2 & 0x7FFFFFFFFFFFFFFELL) == 0xA || v3 == 12 || v3 == 16 || v3 == 20 || a2 == 24 || a2 == 25 || a2 == 26 || a2 == 27)
  {
    return 0;
  }

  if (a2 < 32)
  {
    return 0;
  }

  if (*a1 != -90009999)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 12);
  v10 = *(a1 + 16) & 0x7FFFFFFF;
  v11 = *(a1 + 20) & 0x7FFFFFFF;
  v12 = *(a1 + 24);
  v13 = *(a1 + 25);
  v14 = *(a1 + 26);
  v15 = *(a1 + 27);
  *a3 = 0;
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  *(a3 + 6) = v8;
  *(a3 + 8) = v9;
  *(a3 + 12) = v10;
  *(a3 + 16) = v11;
  *(a3 + 20) = v15;
  *(a3 + 24) = v14 & 1;
  *(a3 + 28) = v5;
  *(a3 + 32) = v12;
  *(a3 + 36) = v13;
  v16 = *&vshl_u16(vdup_n_s16(v14), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(a3 + 40) = vuzp1_s8(v16, v16).u32[0];
  *(a3 + 44) = (v14 & 0x20) != 0;
  return a1 + 32;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},LoadItem::Requester>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {

    *(a2 + 120) = off_1EF7E6B30;
    *(a2 + 96) = off_1EF7E6B00;

    *(a2 + 72) = off_1EF7E6910;
    *(a2 + 48) = off_1EF7E6AD0;

    *(a2 + 24) = off_1EF7E6AA0;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t geo::codec::_decodeDaVinciRenderables(uint64_t a1, void *a2, float *a3, void *a4, _WORD *a5, geo::codec::zone_mallocator *a6, void *a7)
{
  *a7 = 0;
  v7 = *(a1 + 48);
  if ((v7 + 2) > *(a1 + 56))
  {
    v8 = *MEMORY[0x1E69E9848];
    v9 = 7690;
    goto LABEL_154;
  }

  v10 = a7;
  v12 = a5;
  v16 = *(*(a1 + 40) + v7);
  *a5 = v16;
  *(a1 + 48) = v7 + 2;
  *(a6 + 1) = *a6;
  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,geo::codec::zone_mallocator>>::reserve(a6, v16);
  v17 = *v12;
  v19 = geo::codec::zone_mallocator::instance(v18);
  v20 = pthread_rwlock_rdlock((v19 + 32));
  if (v20)
  {
    geo::read_write_lock::logFailure(v20, "read lock", v21);
  }

  v22 = malloc_type_zone_calloc(*v19, v17, 0x30uLL, 0x10300405032F271uLL);
  atomic_fetch_add((v19 + 24), 1u);
  result = pthread_rwlock_unlock((v19 + 32));
  if (result)
  {
    geo::read_write_lock::logFailure(result, "unlock", v24);
  }

  *a4 = v22;
  if (!*v12)
  {
    return 1;
  }

  v25 = 0;
  v164 = a4;
  v165 = v12;
  v163 = a2;
  while (1)
  {
    v27 = *(a1 + 48);
    v26 = *(a1 + 56);
    v28 = v27 + 1;
    if (v27 + 1 > v26)
    {
      v9 = 7700;
      goto LABEL_153;
    }

    v29 = *a4 + 48 * v25;
    v30 = *(a1 + 40);
    v31 = *(v30 + v27);
    *(a1 + 48) = v28;
    *(v29 + 45) = v31 & 1;
    if ((v31 & 1) == 0)
    {
      v32 = v27 + 3;
      if (v27 + 3 > v26)
      {
        v9 = 7724;
        goto LABEL_153;
      }

      v33 = *(v30 + v28);
      *(a1 + 48) = v32;
      *(v29 + 24) = v33;
      if ((v31 & 2) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_13;
    }

    if (*(a1 + 64) < 0x11u)
    {
      v36 = v27 + 5;
      if (v36 > v26)
      {
        v9 = 7712;
        goto LABEL_153;
      }

      *(v29 + 24) = *(v30 + v28);
    }

    else
    {
      v36 = v27 + 9;
      if (v36 > v26)
      {
        v9 = 7710;
        goto LABEL_153;
      }

      *(v29 + 24) = *(v30 + v28);
    }

    *(a1 + 48) = v36;
    v38 = *(a6 + 1);
    v37 = *(a6 + 2);
    if (v38 >= v37)
    {
      v40 = *a6;
      v41 = v38 - *a6;
      v42 = v41 >> 3;
      v43 = (v41 >> 3) + 1;
      if (v43 >> 61)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v44 = v37 - v40;
      if (v44 >> 2 > v43)
      {
        v43 = v44 >> 2;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      if (v45)
      {
        v46 = geo::codec::zone_mallocator::instance(result);
        v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v46, v45);
        v40 = *a6;
        v41 = *(a6 + 1) - *a6;
      }

      else
      {
        v47 = 0;
      }

      v48 = &v47[8 * v42];
      v49 = &v47[8 * v45];
      v50 = &v48[-8 * (v41 >> 3)];
      *v48 = *(v29 + 24);
      v39 = v48 + 8;
      result = memcpy(v50, v40, v41);
      v51 = *a6;
      *a6 = v50;
      *(a6 + 1) = v39;
      *(a6 + 2) = v49;
      if (v51)
      {
        v52 = geo::codec::zone_mallocator::instance(result);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v52, v51);
      }
    }

    else
    {
      *v38 = *(v29 + 24);
      v39 = v38 + 1;
    }

    *(a6 + 1) = v39;
    v53 = *(a1 + 48);
    v26 = *(a1 + 56);
    if (*(a1 + 64) < 0x15u)
    {
      break;
    }

    v32 = v53 + 8;
    v12 = v165;
    if (v53 + 8 > v26)
    {
      v9 = 7717;
      goto LABEL_153;
    }

    v30 = *(a1 + 40);
    *(v29 + 32) = *(v30 + v53);
    *(a1 + 48) = v32;
    if ((v31 & 2) != 0)
    {
      goto LABEL_40;
    }

LABEL_13:
    *(v29 + 16) = 0;
    if ((v31 & 0x10) != 0)
    {
      goto LABEL_42;
    }

LABEL_14:
    *(v29 + 44) = 0;
    if ((v31 & 4) != 0)
    {
      goto LABEL_44;
    }

LABEL_15:
    *(v29 + 42) = 1;
    v34 = geo::codec::zone_mallocator::instance(result);
    v35 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsMatrix4x3>(v34, 1uLL);
    *v29 = v35;
    *v35 = 1065353216;
    v35[5] = 1065353216;
    v35[10] = 1065353216;
LABEL_110:
    ++v25;
    result = 1;
    a4 = v164;
    if (v25 >= *v12)
    {
      return result;
    }
  }

  v32 = v53 + 2;
  v12 = v165;
  if (v53 + 2 > v26)
  {
    v9 = 7719;
    goto LABEL_153;
  }

  v30 = *(a1 + 40);
  *(v29 + 40) = *(v30 + v53);
  *(a1 + 48) = v32;
  *(v29 + 32) = 0;
  if ((v31 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_40:
  if (v32 + 8 > v26)
  {
    v9 = 7730;
    goto LABEL_153;
  }

  *(v29 + 16) = *(v30 + v32);
  *(a1 + 48) = v32 + 8;
  v32 += 8;
  if ((v31 & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_42:
  if (v32 + 1 > v26)
  {
    v9 = 7736;
    goto LABEL_153;
  }

  *(v29 + 44) = *(v30 + v32);
  v32 = *(a1 + 48) + 1;
  *(a1 + 48) = v32;
  if ((v31 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_44:
  if ((v32 + 2) > *(a1 + 56))
  {
    v9 = 7743;
    goto LABEL_153;
  }

  v54 = *(*(a1 + 40) + v32);
  *(v29 + 42) = v54;
  *(a1 + 48) = v32 + 2;
  v55 = geo::codec::zone_mallocator::instance(result);
  v56 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::callocate<GeoCodecsMatrix4x3>(v55, v54);
  *v29 = v56;
  v57 = *(v29 + 42);
  v58 = geo::codec::zone_mallocator::instance(v56);
  v59 = pthread_rwlock_rdlock((v58 + 32));
  if (v59)
  {
    geo::read_write_lock::logFailure(v59, "read lock", v60);
  }

  v61 = malloc_type_zone_calloc(*v58, v57, 1uLL, 0x100004077774924uLL);
  atomic_fetch_add((v58 + 24), 1u);
  v62 = pthread_rwlock_unlock((v58 + 32));
  if (v62)
  {
    geo::read_write_lock::logFailure(v62, "unlock", v63);
  }

  *(v29 + 8) = v61;
  if ((v31 & 8) != 0)
  {
    LODWORD(v72) = *(v29 + 42);
    v68 = v163;
    goto LABEL_54;
  }

  v68 = v163;
  v69 = v163[1];
  if (!*&v69)
  {
    goto LABEL_152;
  }

  v70 = vcnt_s8(v69);
  v70.i16[0] = vaddlv_u8(v70);
  if (v70.u32[0] > 1uLL)
  {
    v71 = v25;
    if (*&v69 <= v25)
    {
      v71 = v25 % v163[1];
    }
  }

  else
  {
    v71 = (*&v69 + 0xFFFFLL) & v25;
  }

  v146 = *(*v163 + 8 * v71);
  if (!v146 || (v147 = *v146) == 0)
  {
LABEL_152:
    v9 = 7749;
    goto LABEL_153;
  }

  v148 = *&v69 - 1;
  if (v70.u32[0] < 2uLL)
  {
    while (1)
    {
      v149 = v147[1];
      if (v149 == v25)
      {
        if (*(v147 + 4) == v25)
        {
          goto LABEL_130;
        }
      }

      else if ((v149 & v148) != v71)
      {
        goto LABEL_152;
      }

      v147 = *v147;
      if (!v147)
      {
        goto LABEL_152;
      }
    }
  }

  while (2)
  {
    v150 = v147[1];
    if (v150 != v25)
    {
      if (v150 >= *&v69)
      {
        v150 %= *&v69;
      }

      if (v150 != v71)
      {
        goto LABEL_152;
      }

      goto LABEL_124;
    }

    if (*(v147 + 4) != v25)
    {
LABEL_124:
      v147 = *v147;
      if (!v147)
      {
        goto LABEL_152;
      }

      continue;
    }

    break;
  }

LABEL_130:
  if (v70.u32[0] > 1uLL)
  {
    v151 = v25;
    if (*&v69 <= v25)
    {
      v151 = v25 % v69.i32[0];
    }
  }

  else
  {
    v151 = (*&v69 + 0xFFFFLL) & v25;
  }

  v152 = *(*v163 + 8 * v151);
  if (!v152)
  {
    goto LABEL_175;
  }

  v153 = *v152;
  if (!*v152)
  {
    goto LABEL_175;
  }

  v72 = *(v29 + 42);
  if (v70.u32[0] < 2uLL)
  {
    while (1)
    {
      v154 = v153[1];
      if (v154 == v25)
      {
        if (*(v153 + 4) == v25)
        {
          goto LABEL_142;
        }
      }

      else if ((v154 & v148) != v151)
      {
        goto LABEL_175;
      }

      v153 = *v153;
      if (!v153)
      {
        goto LABEL_175;
      }
    }
  }

  while (2)
  {
    v155 = v153[1];
    if (v155 != v25)
    {
      if (v155 >= *&v69)
      {
        v155 %= *&v69;
      }

      if (v155 != v151)
      {
        goto LABEL_175;
      }

      goto LABEL_145;
    }

    if (*(v153 + 4) != v25)
    {
LABEL_145:
      v153 = *v153;
      if (!v153)
      {
        goto LABEL_175;
      }

      continue;
    }

    break;
  }

LABEL_142:
  if (0xCCCCCCCCCCCCCCCDLL * ((v153[4] - v153[3]) >> 3) != v72)
  {
    v9 = 7750;
    goto LABEL_153;
  }

LABEL_54:
  if (!v72)
  {
LABEL_109:
    *v10 += *(a1 + 48) - v32;
    goto LABEL_110;
  }

  v73 = 0;
  while (2)
  {
    if ((v31 & 8) == 0)
    {
      v100 = v68[1];
      if (v100)
      {
        v101 = vcnt_s8(v100);
        v101.i16[0] = vaddlv_u8(v101);
        if (v101.u32[0] > 1uLL)
        {
          v102 = v25;
          if (*&v100 <= v25)
          {
            v102 = v25 % v100.i32[0];
          }
        }

        else
        {
          v102 = (*&v100 + 0xFFFFLL) & v25;
        }

        v127 = *(*v68 + 8 * v102);
        if (v127)
        {
          v128 = *v127;
          if (v128)
          {
            if (v101.u32[0] < 2uLL)
            {
              v129 = *&v100 - 1;
              while (1)
              {
                v131 = v128[1];
                if (v131 == v25)
                {
                  if (*(v128 + 4) == v25)
                  {
                    goto LABEL_56;
                  }
                }

                else if ((v131 & v129) != v102)
                {
                  goto LABEL_175;
                }

                v128 = *v128;
                if (!v128)
                {
                  goto LABEL_175;
                }
              }
            }

            do
            {
              v130 = v128[1];
              if (v130 == v25)
              {
                if (*(v128 + 4) == v25)
                {
LABEL_56:
                  v74 = v128[3] + 40 * v73;
                  v75 = *(v74 + 12);
                  v76 = *(v74 + 16);
                  v77 = *(v74 + 20);
                  v67.i64[0] = *v74;
                  v67.i32[2] = *(v74 + 8);
                  v78 = *(v74 + 24);
                  goto LABEL_57;
                }
              }

              else
              {
                if (v130 >= *&v100)
                {
                  v130 %= *&v100;
                }

                if (v130 != v102)
                {
                  break;
                }
              }

              v128 = *v128;
            }

            while (v128);
          }
        }
      }

LABEL_175:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v103 = *(a1 + 48);
    v104 = *(a1 + 56);
    v105 = v103 + 4;
    if (v103 + 4 > v104)
    {
      v9 = 7760;
      goto LABEL_153;
    }

    v106 = *(a1 + 40);
    v67.i32[0] = *(v106 + v103);
    *(a1 + 48) = v105;
    v107 = v103 + 8;
    if (v103 + 8 > v104)
    {
      v9 = 7761;
      goto LABEL_153;
    }

    v108 = *(v106 + v105);
    *(a1 + 48) = v107;
    v109 = v103 + 12;
    if (v103 + 12 > v104)
    {
      v9 = 7762;
      goto LABEL_153;
    }

    v67.i32[1] = v108;
    v67.i32[2] = *(v106 + v107);
    *(a1 + 48) = v109;
    v110 = v103 + 16;
    if (v103 + 16 > v104)
    {
      v9 = 7764;
      goto LABEL_153;
    }

    v111 = *(v106 + v109);
    *(a1 + 48) = v110;
    v112 = v103 + 20;
    if (v103 + 20 > v104)
    {
      v9 = 7765;
      goto LABEL_153;
    }

    v113 = *(v106 + v110);
    *(a1 + 48) = v112;
    v114 = v103 + 24;
    if (v103 + 24 > v104)
    {
      v9 = 7766;
      goto LABEL_153;
    }

    v115 = *(v106 + v112);
    *(a1 + 48) = v114;
    v116 = v103 + 28;
    if (v103 + 28 > v104)
    {
      v9 = 7768;
      goto LABEL_153;
    }

    v75 = *(v106 + v114);
    *(a1 + 48) = v116;
    v117 = v103 + 32;
    if (v103 + 32 > v104)
    {
      v9 = 7769;
      goto LABEL_153;
    }

    v76 = *(v106 + v116);
    *(a1 + 48) = v117;
    v118 = v103 + 36;
    if (v103 + 36 > v104)
    {
      v9 = 7770;
      goto LABEL_153;
    }

    v77 = *(v106 + v117);
    *(a1 + 48) = v118;
    v119 = v103 + 40;
    if (v103 + 40 > v104)
    {
      v9 = 7771;
      goto LABEL_153;
    }

    v78.i32[0] = *(v106 + v118);
    v78.i32[1] = v111;
    v78.i64[1] = __PAIR64__(v115, v113);
    *(a1 + 48) = v119;
    if (*(a1 + 64) < 0x14u)
    {
LABEL_57:
      *(*(v29 + 8) + v73) = 0;
      *v64.i32 = (v76 + v76) * v76;
      v79 = (v77 + v77) * v77;
      *&v80 = 1.0 - (*v64.i32 + v79);
      *v65.i32 = (v75 + v75) * v76;
      v81 = (v77 + v77) * *v78.i32;
      v82 = *v65.i32 - v81;
      v83 = v77 * (v75 + v75);
      v84 = (v76 + v76) * *v78.i32;
      v66.f32[0] = v84 + v83;
      *&v85 = v81 + *v65.i32;
      *v65.i32 = 1.0 - ((v75 + v75) * v75);
      v86 = (v76 + v76) * v77;
      v87 = (v75 + v75) * *v78.i32;
      v88 = v86 - v87;
      *&v89 = v87 + v86;
      v90.i64[0] = COERCE_UNSIGNED_INT(v83 - v84);
      v90.f32[2] = v82;
      v90.f32[3] = *v65.i32 - v79;
      v66.f32[1] = v88;
      v66.f32[2] = *v65.i32 - *v64.i32;
      *v64.i8 = vzip2_s32(*v78.i8, 0);
      v65.i32[0] = 0;
      v65.i32[1] = vextq_s8(v78, v78, 8uLL).u32[0];
      v91 = vzip1q_s32(v64, v64);
      v92 = vmulq_f32(v91, v90);
      v93.i64[0] = __PAIR64__(v85, v80);
      v93.i64[1] = v89;
      v94 = vmlaq_f32(vextq_s8(v92, v92, 8uLL), v93, v91);
      v95 = vzip1q_s32(v65, v65);
      v96 = vmulq_f32(v95, v90);
      v97 = vmlaq_f32(vextq_s8(v96, v96, 8uLL), v93, v95);
      v64 = vmulq_laneq_f32(v66, v78, 3);
      v92.i64[0] = vzip1q_s32(v94, v97).u64[0];
      v92.i64[1] = vextq_s8(v64, vzip1q_s32(*&v64, v67), 8uLL).i64[1];
      v98.i64[0] = vtrn2q_s32(v94, v97).u64[0];
      v98.i64[1] = __PAIR64__(v67.u32[1], v64.u32[1]);
      v99 = (*v29 + 48 * v73);
      *v99 = v92;
      v99[1] = v98;
      v94.i64[0] = vzip2q_s32(v94, v97).u64[0];
      v94.i64[1] = __PAIR64__(v67.u32[2], v64.u32[2]);
      v99[2] = v94;
      if (++v73 >= *(v29 + 42))
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  v120 = v103 + 42;
  if (v120 <= v104)
  {
    v160 = v78;
    v161 = v67;
    v121 = *(v106 + v119);
    *(a1 + 48) = v120;
    if (v121)
    {
      v158 = v121;
      v166 = v25;
      v167 = &v166;
      v122 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<unsigned int,geo::allocator_adapter<unsigned int,geo::codec::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int,geo::allocator_adapter<unsigned int,geo::codec::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<unsigned int,geo::allocator_adapter<unsigned int,geo::codec::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<unsigned int,geo::allocator_adapter<unsigned int,geo::codec::zone_mallocator>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a3, v25, &v167);
      v123 = v122;
      v125 = v122[4];
      v124 = v122[5];
      if (v125 >= v124)
      {
        v157 = v10;
        v132 = v122[3];
        v133 = v125 - v132;
        v134 = (v125 - v132) >> 2;
        v135 = v134 + 1;
        if ((v134 + 1) >> 62)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v136 = v124 - v132;
        if (v136 >> 1 > v135)
        {
          v135 = v136 >> 1;
        }

        if (v136 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v137 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v137 = v135;
        }

        if (v137)
        {
          v138 = geo::codec::zone_mallocator::instance(v122);
          v139 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v138, v137);
          v132 = v123[3];
          v133 = v123[4] - v132;
          v140 = v133 >> 2;
        }

        else
        {
          v139 = 0;
          v140 = v134;
        }

        v141 = &v139[4 * v134];
        v156 = &v139[4 * v137];
        v142 = &v141[-4 * v140];
        *v141 = v158;
        v126 = v141 + 4;
        v143 = memcpy(v142, v132, v133);
        v144 = v123[3];
        v123[3] = v142;
        v123[4] = v126;
        v123[5] = v156;
        v159 = v144;
        if (v144)
        {
          v145 = geo::codec::zone_mallocator::instance(v143);
          v10 = v157;
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v145, v159);
        }

        else
        {
          v10 = v157;
        }
      }

      else
      {
        *v125 = v158;
        v126 = v125 + 4;
      }

      v123[4] = v126;
      v12 = v165;
      v68 = v163;
    }

    v78 = v160;
    v67 = v161;
    goto LABEL_57;
  }

  v9 = 7775;
LABEL_153:
  v8 = *MEMORY[0x1E69E9848];
LABEL_154:
  fprintf(v8, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v9);
  return 0;
}

void sub_1866BB6D8(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

uint64_t gcl::polyline::DecoderImpl::decompressAttributes(uint64_t a1, unsigned int **a2, int32x4_t *a3, __int128 *a4)
{
  v176[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!*a2)
  {
    return 5;
  }

  result = 5;
  if (a3)
  {
    v7 = a2[1];
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (a4)
      {
        v8 = *a4;
        v9 = a4[1];
        *(a1 + 76) = *(a4 + 16);
        *(a1 + 60) = v9;
        *(a1 + 44) = v8;
        v10 = *(a1 + 52);
      }

      else
      {
        if (v7 < 4)
        {
          return 3;
        }

        v21 = v7 & 0x7FFFFFFFFFFFFFFCLL;
        if ((v7 & 0x7FFFFFFFFFFFFFFCLL) == 4)
        {
          return 3;
        }

        if (v7 == 8)
        {
          return 3;
        }

        if (v7 == 9)
        {
          return 3;
        }

        if ((v7 & 0x7FFFFFFFFFFFFFFELL) == 0xA)
        {
          return 3;
        }

        if (v21 == 12)
        {
          return 3;
        }

        if (v21 == 16)
        {
          return 3;
        }

        switch(v7)
        {
          case 20:
            return 3;
          case 21:
            return 3;
          case 22:
            return 3;
          case 23:
            return 3;
          case 24:
            return 3;
          case 25:
            return 3;
          case 26:
            return 3;
        }

        v75 = v7 < 28;
        v7 -= 28;
        if (v75)
        {
          return 3;
        }

        result = 3;
        if (*v4 != -1214009963)
        {
          return result;
        }

        v152 = v4[1];
        v153 = *(v4 + 8);
        v154 = *(v4 + 9);
        v155 = *(v4 + 5);
        v10 = v4[3];
        v156 = v4[4] & 0x7FFFFFFF;
        v157 = *(v4 + 20);
        v158 = *(v4 + 21);
        v159 = *(v4 + 22);
        v160 = *(v4 + 23);
        v161 = *(v4 + 24);
        v162 = *(v4 + 25);
        v163 = *(v4 + 26);
        *(a1 + 44) = 0;
        *(a1 + 48) = v153;
        *(a1 + 49) = v154;
        *(a1 + 50) = v155;
        *(a1 + 52) = v10;
        *(a1 + 56) = v156;
        *(a1 + 60) = v159;
        *(a1 + 64) = v158;
        *(a1 + 68) = v157;
        *(a1 + 69) = v162;
        *(a1 + 70) = v163;
        *(a1 + 72) = v152;
        *(a1 + 76) = v160;
        *(a1 + 77) = v161;
        v4 += 7;
        if (!v4)
        {
          return 3;
        }
      }

      v11 = v10;
      v12 = *a2;
      v13 = (*a2 + v10);
      v14 = *a2 ? v13 : v11;
      result = 3;
      v15 = (a2[1] - v11);
      *a2 = v14;
      a2[1] = v15;
      if (v15 >= 0)
      {
        if (v12)
        {
          if ((v4 + v7) >= v12 && v4 <= v13)
          {
            v16 = v13 - v4;
            if (v13 - v4 >= 0)
            {
              if (*(a1 + 48) || *(a1 + 49) - 1 > 1)
              {
                return 4;
              }

              if ((*(a1 + 77) & 0xFE) != 2)
              {
                v17 = *(a1 + 76);
                v18 = !*(a1 + 76) || v17 == 3;
                v19 = !v18;
                if ((!*(a1 + 77) || v19) && !*(a1 + 70) && v17 != 255 && !*(a1 + 69))
                {
                  v20 = *(a1 + 60);
                  if (v20)
                  {
                    if ((v20 & 0x80000000) == 0)
                    {
                      operator new();
                    }

                    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
                  }

                  v22 = *(a1 + 104);
                  v23 = (*(a1 + 112) - v22) >> 2;
                  if (v20 <= v23)
                  {
                    if (v20 < v23)
                    {
                      *(a1 + 112) = v22 + 4 * v20;
                    }
                  }

                  else
                  {
                    std::vector<int>::__append((a1 + 104), v20 - v23);
                  }

                  if (!v4)
                  {
                    return 3;
                  }

                  if (*(a1 + 48) || *(a1 + 49) != 1)
                  {
                    LODWORD(v24) = v16 & ~(v16 >> 63);
                  }

                  else
                  {
                    v75 = v16 < 4;
                    v16 -= 4;
                    if (v75)
                    {
                      return 3;
                    }

                    if (v4 == -4)
                    {
                      return 3;
                    }

                    v24 = *v4;
                    if (v16 < v24)
                    {
                      return 3;
                    }

                    ++v4;
                  }

                  if (v16 >= v24)
                  {
                    v25 = v4;
                  }

                  else
                  {
                    v25 = 0;
                  }

                  if (v16 >= v24)
                  {
                    v26 = v24;
                  }

                  else
                  {
                    v26 = 0;
                  }

                  *(a1 + 128) = v26;
                  *(a1 + 136) = v25;
                  *&v27 = 0xFFFF000000000000;
                  *(&v27 + 1) = 0xFFFF000000000000;
                  *(a1 + 152) = v27;
                  *(a1 + 168) = 16;
                  if (v26)
                  {
                    v28 = *v25 << 24;
                    *(a1 + 160) = v28;
                    if (v26 != 1)
                    {
                      v29 = v28 | (v25[1] << 16);
                      *(a1 + 160) = v29;
                      if (v26 > 2)
                      {
                        v30 = v29 | (v25[2] << 8);
                        *(a1 + 160) = v30;
                        if (v26 != 3)
                        {
                          v31 = v25[3];
                          goto LABEL_76;
                        }

LABEL_75:
                        v31 = 255;
LABEL_76:
                        v32 = v31 | v30;
                        *(a1 + 160) = v31 | v30;
                        v33 = 3;
                        *(a1 + 144) = 3;
                        v34 = a1 + 176;
                        memcpy((a1 + 176), &gcl::ArithmeticDecoder::probUpdateLutInterleaved, 0x400uLL);
                        if (*(a1 + 69) == 1)
                        {
                          memset_pattern16(&__b, &unk_187FBF450, 4uLL);
                          v35 = *(a1 + 56);
                          if (v35 < 1)
                          {
                            v33 = 3;
                          }

                          else
                          {
                            v36 = 0;
                            v37 = -65536;
                            v38 = 16;
                            v33 = 3;
                            do
                            {
                              if (v36)
                              {
                                v44 = *(v36 - 1);
                              }

                              else
                              {
                                v44 = 0;
                              }

                              if (v37 < 0x40000001)
                              {
                                do
                                {
                                  v32 *= 2;
                                  *(a1 + 168) = --v38;
                                  if (!v38)
                                  {
                                    *(a1 + 144) = v33 + 1;
                                    if (v33 + 1 >= v26)
                                    {
                                      v47 = 65280;
                                    }

                                    else
                                    {
                                      v47 = v25[v33 + 1] << 8;
                                    }

                                    v33 += 2;
                                    *(a1 + 144) = v33;
                                    if (v33 < v26)
                                    {
                                      v46 = v25[v33];
                                    }

                                    else
                                    {
                                      v46 = 255;
                                    }

                                    v32 |= v47 | v46;
                                    v38 = 16;
                                    *(a1 + 168) = 16;
                                  }

                                  v45 = 2 * v37;
                                  v73 = v37 >= 0x20000001;
                                  v37 *= 2;
                                }

                                while (!v73);
                              }

                              else
                              {
                                v45 = v37;
                              }

                              v39 = *(&v169[-2] + v44);
                              v40 = (HIWORD(v45) * v39) & 0xFFFF0000;
                              v41 = (v39 >> 7) & 0x1FE;
                              v42 = v45 - v40;
                              if (v32 >= v40)
                              {
                                ++v41;
                              }

                              *(&v169[-2] + v44) = *(v34 + 2 * v41) + v39;
                              if (v32 < v40)
                              {
                                v37 = v40;
                              }

                              else
                              {
                                v37 = v42;
                              }

                              if (v32 < v40)
                              {
                                v43 = 0;
                              }

                              else
                              {
                                v43 = v40;
                              }

                              v32 -= v43;
                              *(a1 + 156) = v37;
                              *(a1 + 160) = v32;
                              ++v36;
                            }

                            while (v36 != v35);
                          }
                        }

                        v48 = *(a1 + 77);
                        if (v48 == 4)
                        {
                          v91 = *(a1 + 60);
                          v175 = 0;
                          v173 = 0u;
                          *v174 = 0u;
                          *v171 = 0u;
                          *v172 = 0u;
                          *v169 = 0u;
                          v170 = 0u;
                          __b = 0u;
                          gcl::polyline::ACContext::init(&__b, v91);
                          memset_pattern16(v167, &unk_187FBF450, 6uLL);
                          v166 = v91;
                          if (v91)
                          {
                            if ((v91 & 0x80000000) == 0)
                            {
                              operator new();
                            }

                            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
                          }

                          v176[1] = -1;
                          v176[0] = -1;
                          if (*(a1 + 56) < 1)
                          {
LABEL_257:
                            v151 = 0;
                            goto LABEL_263;
                          }

                          v92 = 0;
                          v93 = 0;
                          v94 = 0x8000;
                          v164 = v167[0];
                          v96 = a3;
                          v95 = v91;
                          while (1)
                          {
                            v103 = *(a1 + 156);
                            v102 = *(a1 + 160);
                            if (v103 >= 0x40000001)
                            {
                              v106 = *(a1 + 156);
                            }

                            else
                            {
                              v104 = *(a1 + 168);
                              do
                              {
                                v102 *= 2;
                                *(a1 + 168) = --v104;
                                if (!v104)
                                {
                                  v107 = *(a1 + 144);
                                  *(a1 + 144) = v107 + 1;
                                  v108 = *(a1 + 128);
                                  if (v107 + 1 >= v108)
                                  {
                                    v109 = 65280;
                                  }

                                  else
                                  {
                                    v109 = *(*(a1 + 136) + v107 + 1) << 8;
                                  }

                                  v110 = v107 + 2;
                                  *(a1 + 144) = v110;
                                  if (v110 < v108)
                                  {
                                    v105 = *(*(a1 + 136) + v110);
                                  }

                                  else
                                  {
                                    v105 = 255;
                                  }

                                  v102 |= v109 | v105;
                                  v104 = 16;
                                  *(a1 + 168) = 16;
                                }

                                v106 = 2 * v103;
                                v73 = v103 >= 0x20000001;
                                v103 *= 2;
                              }

                              while (!v73);
                            }

                            v111 = (HIWORD(v106) * v94) & 0xFFFF0000;
                            v112 = v106 - v111;
                            if (v102 < v111)
                            {
                              v113 = 0;
                            }

                            else
                            {
                              v113 = v111;
                            }

                            v114 = v102 - v113;
                            v115 = v102 >= v111;
                            v116 = (v94 >> 7) & 0x1FE;
                            if (v115)
                            {
                              ++v116;
                            }

                            v117 = *(v34 + 2 * v116);
                            if (v115)
                            {
                              v118 = v112;
                            }

                            else
                            {
                              v118 = v111;
                            }

                            *(a1 + 156) = v118;
                            *(a1 + 160) = v114;
                            if (v115)
                            {
                              v97 = v96;
                              v98 = a1;
                              v99 = 0;
                              v100 = 0;
                              p_b = 0;
                            }

                            else
                            {
                              if (v111 >= 0x40000001)
                              {
                                v121 = v111;
                              }

                              else
                              {
                                v119 = *(a1 + 168);
                                do
                                {
                                  v114 *= 2;
                                  *(a1 + 168) = --v119;
                                  if (!v119)
                                  {
                                    v122 = *(a1 + 144);
                                    *(a1 + 144) = v122 + 1;
                                    v123 = *(a1 + 128);
                                    if (v122 + 1 >= v123)
                                    {
                                      v124 = 65280;
                                    }

                                    else
                                    {
                                      v124 = *(*(a1 + 136) + v122 + 1) << 8;
                                    }

                                    v125 = v122 + 2;
                                    *(a1 + 144) = v125;
                                    if (v125 < v123)
                                    {
                                      v120 = *(*(a1 + 136) + v125);
                                    }

                                    else
                                    {
                                      v120 = 255;
                                    }

                                    v114 |= v124 | v120;
                                    v119 = 16;
                                    *(a1 + 168) = 16;
                                  }

                                  v121 = 2 * v111;
                                  v73 = v111 >= 0x20000001;
                                  v111 *= 2;
                                }

                                while (!v73);
                              }

                              v126 = (HIWORD(v121) * v164) & 0xFFFF0000;
                              v127 = (v164 >> 7) & 0x1FE;
                              v128 = v121 - v126;
                              v129 = v114 >= v126;
                              if (v114 >= v126)
                              {
                                ++v127;
                              }

                              v130 = *(v34 + 2 * v127);
                              if (v114 < v126)
                              {
                                v131 = v126;
                              }

                              else
                              {
                                v131 = v128;
                              }

                              if (v114 < v126)
                              {
                                v132 = 0;
                              }

                              else
                              {
                                v132 = v126;
                              }

                              v133 = v114 - v132;
                              *(a1 + 156) = v131;
                              *(a1 + 160) = v133;
                              v134 = (v129 & 0x7FFFFFFF) + 1;
                              if (v131 >= 0x40000001)
                              {
                                v137 = v131;
                              }

                              else
                              {
                                v135 = *(a1 + 168);
                                do
                                {
                                  v133 *= 2;
                                  *(a1 + 168) = --v135;
                                  if (!v135)
                                  {
                                    v138 = *(a1 + 144);
                                    *(a1 + 144) = v138 + 1;
                                    v139 = *(a1 + 128);
                                    if (v138 + 1 >= v139)
                                    {
                                      v140 = 65280;
                                    }

                                    else
                                    {
                                      v140 = *(*(a1 + 136) + v138 + 1) << 8;
                                    }

                                    v141 = v138 + 2;
                                    *(a1 + 144) = v141;
                                    if (v141 < v139)
                                    {
                                      v136 = *(*(a1 + 136) + v141);
                                    }

                                    else
                                    {
                                      v136 = 255;
                                    }

                                    v133 |= v140 | v136;
                                    v135 = 16;
                                    *(a1 + 168) = 16;
                                  }

                                  v137 = 2 * v131;
                                  v73 = v131 >= 0x20000001;
                                  v131 *= 2;
                                }

                                while (!v73);
                              }

                              v142 = 2 * v129;
                              v143 = v167[v134];
                              v144 = (HIWORD(v137) * v143) & 0xFFFF0000;
                              v145 = (v143 >> 7) & 0x1FE;
                              v146 = v137 - v144;
                              if (v133 >= v144)
                              {
                                ++v145;
                              }

                              v167[v134] = *(v34 + 2 * v145) + v143;
                              if (v133 < v144)
                              {
                                v147 = v144;
                              }

                              else
                              {
                                v147 = v146;
                              }

                              if (v133 < v144)
                              {
                                v148 = 0;
                              }

                              else
                              {
                                v148 = v144;
                              }

                              v149 = v93 + v142;
                              if (v133 >= v144)
                              {
                                ++v149;
                              }

                              *(a1 + 156) = v147;
                              *(a1 + 160) = v133 - v148;
                              v150 = *(v176 + ((v149 - 1) & 3));
                              if (v92 <= v150)
                              {
                                v151 = 3;
LABEL_263:
                                if (v174[0])
                                {
                                  operator delete(v174[0]);
                                }

                                if (v172[1])
                                {
                                  operator delete(v172[1]);
                                }

                                if (v171[0])
                                {
                                  operator delete(v171[0]);
                                }

                                if (v169[1])
                                {
                                  operator delete(v169[1]);
                                }

                                if (__b)
                                {
                                  operator delete(__b);
                                }

                                return v151;
                              }

                              v164 += v130;
                              v97 = v96;
                              v99 = (v96 + 4 * v150 * v95);
                              v100 = *(a1 + 76);
                              p_b = &__b;
                              v98 = a1;
                            }

                            gcl::polyline::DecoderImpl::decodeResidual(v98, v99, v95, v100, p_b, (v96 + 4 * v92 * v95));
                            v94 += v117;
                            *(v176 + (v93++ & 3)) = v92++;
                            v96 = v97;
                            v95 = v166;
                            if (v92 >= *(a1 + 56))
                            {
                              goto LABEL_257;
                            }
                          }
                        }

                        if (v48 == 1)
                        {
                          v175 = 0;
                          v173 = 0u;
                          *v174 = 0u;
                          *v171 = 0u;
                          *v172 = 0u;
                          *v169 = 0u;
                          v170 = 0u;
                          __b = 0u;
                          gcl::polyline::ACContext::init(&__b, *(a1 + 60));
                          v90 = *(a1 + 60);
                          if (v90)
                          {
                            if ((v90 & 0x80000000) == 0)
                            {
                              operator new();
                            }

                            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
                          }
                        }

                        else
                        {
                          if (*(a1 + 77))
                          {
                            return 5;
                          }

                          v50 = *(a1 + 56);
                          v49 = *(a1 + 60);
                          if (*(a1 + 76) == 3)
                          {
                            if (*(a1 + 60) >= 1 && v50 >= 1)
                            {
                              v51 = 0;
                              v52 = 0;
                              v53 = 0;
                              v54 = 0x8000;
                              v55 = -1;
                              do
                              {
                                for (i = 0; i != v50; ++i)
                                {
                                  if (v55 < 0)
                                  {
                                    v57 = *(a1 + 104);
                                    v58 = *(a1 + 156);
                                    v59 = *(a1 + 160);
                                    if (*(v57 + 4 * v51) < 1)
                                    {
                                      v53 = 0;
                                    }

                                    else
                                    {
                                      v60 = 0;
                                      v53 = 0;
                                      do
                                      {
                                        if (v58 >= 0x40000001)
                                        {
                                          v61 = v58;
                                        }

                                        else
                                        {
                                          v64 = *(a1 + 168);
                                          do
                                          {
                                            v59 *= 2;
                                            *(a1 + 168) = --v64;
                                            if (!v64)
                                            {
                                              *(a1 + 144) = v33 + 1;
                                              v66 = *(a1 + 128);
                                              if (v33 + 1 >= v66)
                                              {
                                                v67 = 65280;
                                              }

                                              else
                                              {
                                                v67 = v25[v33 + 1] << 8;
                                              }

                                              v33 += 2;
                                              *(a1 + 144) = v33;
                                              if (v33 < v66)
                                              {
                                                v65 = v25[v33];
                                              }

                                              else
                                              {
                                                v65 = 255;
                                              }

                                              v59 |= v67 | v65;
                                              v64 = 16;
                                              *(a1 + 168) = 16;
                                            }

                                            v61 = 2 * v58;
                                            v73 = v58 >= 0x20000001;
                                            v58 *= 2;
                                          }

                                          while (!v73);
                                        }

                                        v62 = (v61 >> 1) & 0x7FFF0000;
                                        v58 = v61 - v62;
                                        v63 = v59 >= v62;
                                        if (v59 < v62)
                                        {
                                          v58 = v62;
                                          v62 = 0;
                                        }

                                        v59 -= v62;
                                        *(a1 + 156) = v58;
                                        *(a1 + 160) = v59;
                                        v53 += v63 << v60++;
                                      }

                                      while (v60 < *(v57 + 4 * v51));
                                    }

                                    v68 = 0;
                                    v69 = v52;
                                    if (v58 >= 0x40000001)
                                    {
LABEL_135:
                                      v70 = v58;
                                      goto LABEL_136;
                                    }

                                    while (1)
                                    {
                                      v77 = *(a1 + 168);
                                      do
                                      {
                                        v59 *= 2;
                                        *(a1 + 168) = --v77;
                                        if (!v77)
                                        {
                                          *(a1 + 144) = v33 + 1;
                                          v79 = *(a1 + 128);
                                          if (v33 + 1 >= v79)
                                          {
                                            v80 = 65280;
                                          }

                                          else
                                          {
                                            v80 = v25[v33 + 1] << 8;
                                          }

                                          v33 += 2;
                                          *(a1 + 144) = v33;
                                          if (v33 < v79)
                                          {
                                            v78 = v25[v33];
                                          }

                                          else
                                          {
                                            v78 = 255;
                                          }

                                          v59 |= v80 | v78;
                                          v77 = 16;
                                          *(a1 + 168) = 16;
                                        }

                                        v70 = 2 * v58;
                                        v73 = v58 >= 0x20000001;
                                        v58 *= 2;
                                      }

                                      while (!v73);
LABEL_136:
                                      v58 = (HIWORD(v70) * v54) & 0xFFFF0000;
                                      v71 = v70 - v58;
                                      if (v59 < v58)
                                      {
                                        v72 = 0;
                                      }

                                      else
                                      {
                                        v72 = (HIWORD(v70) * v54) & 0xFFFF0000;
                                      }

                                      v73 = v59 >= v58;
                                      v59 -= v72;
                                      v74 = (v54 >> 7) & 0x1FE;
                                      if (v73)
                                      {
                                        ++v74;
                                      }

                                      v54 += *(v34 + 2 * v74);
                                      if (v73)
                                      {
                                        v58 = v71;
                                      }

                                      *(a1 + 156) = v58;
                                      *(a1 + 160) = v59;
                                      v75 = v73 && v69 < 31;
                                      if (!v75)
                                      {
                                        break;
                                      }

                                      v76 = 1 << v69++;
                                      v68 |= v76;
                                      if (v58 >= 0x40000001)
                                      {
                                        goto LABEL_135;
                                      }
                                    }

                                    for (j = 0; v69; j |= v85 << v69)
                                    {
                                      if (v58 >= 0x40000001)
                                      {
                                        v83 = v58;
                                      }

                                      else
                                      {
                                        v86 = *(a1 + 168);
                                        do
                                        {
                                          v59 *= 2;
                                          *(a1 + 168) = --v86;
                                          if (!v86)
                                          {
                                            *(a1 + 144) = v33 + 1;
                                            v88 = *(a1 + 128);
                                            if (v33 + 1 >= v88)
                                            {
                                              v89 = 65280;
                                            }

                                            else
                                            {
                                              v89 = v25[v33 + 1] << 8;
                                            }

                                            v33 += 2;
                                            *(a1 + 144) = v33;
                                            if (v33 < v88)
                                            {
                                              v87 = v25[v33];
                                            }

                                            else
                                            {
                                              v87 = 255;
                                            }

                                            v59 |= v89 | v87;
                                            v86 = 16;
                                            *(a1 + 168) = 16;
                                          }

                                          v83 = 2 * v58;
                                          v73 = v58 >= 0x20000001;
                                          v58 *= 2;
                                        }

                                        while (!v73);
                                      }

                                      v84 = (v83 >> 1) & 0x7FFF0000;
                                      v58 = v83 - v84;
                                      v85 = v59 >= v84;
                                      if (v59 < v84)
                                      {
                                        v58 = v84;
                                        v84 = 0;
                                      }

                                      v59 -= v84;
                                      *(a1 + 156) = v58;
                                      *(a1 + 160) = v59;
                                      --v69;
                                    }

                                    v55 = j + v68;
                                    v82 = (j + v68) >> v52;
                                    if (!v52 || v82)
                                    {
                                      if (v82 > 1)
                                      {
                                        ++v52;
                                      }
                                    }

                                    else
                                    {
                                      --v52;
                                    }
                                  }

                                  a3->i32[v51 + i * v49] = v53;
                                  --v55;
                                }

                                ++v51;
                              }

                              while (v51 != v49);
                            }

                            return 0;
                          }

                          v175 = 0;
                          v173 = 0u;
                          *v174 = 0u;
                          *v171 = 0u;
                          *v172 = 0u;
                          *v169 = 0u;
                          v170 = 0u;
                          __b = 0u;
                          gcl::polyline::ACContext::init(&__b, v49);
                          if (v49)
                          {
                            if ((v49 & 0x80000000) == 0)
                            {
                              operator new();
                            }

                            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
                          }

                          if (v50 >= 1)
                          {
                            do
                            {
                              gcl::polyline::DecoderImpl::decodeResidual(a1, 0, 0, *(a1 + 76), &__b, a3);
                              --v50;
                            }

                            while (v50);
                          }
                        }

                        if (v174[0])
                        {
                          operator delete(v174[0]);
                        }

                        if (v172[1])
                        {
                          operator delete(v172[1]);
                        }

                        if (v171[0])
                        {
                          operator delete(v171[0]);
                        }

                        if (v169[1])
                        {
                          operator delete(v169[1]);
                        }

                        if (__b)
                        {
                          operator delete(__b);
                        }

                        return 0;
                      }

LABEL_74:
                      v30 = v29 | 0xFF00;
                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    v28 = -16777216;
                  }

                  v29 = v28 | 0xFF0000;
                  goto LABEL_74;
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