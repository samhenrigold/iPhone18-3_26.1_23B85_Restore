uint64_t GEOPDSearchBrowseCategorySuggestionResultIsValid(void *a1)
{
  v13[2] = objc_msgSend_position(a1);
  v13[3] = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v13[0]) = 0;
      v6 = objc_msgSend_position(a1, v13[0]) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:v13 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v13[0] & 0x7F) << v3;
      if ((v13[0] & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 2 || (v13[0] = 0, v13[1] = 0, !PBReaderPlaceMark()) || !GEOPDBrowseCategoryIsValid(a1))
      {
LABEL_24:
        PBReaderRecallMark();
        return 0;
      }

      PBReaderRecallMark();
    }

    else if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v11;
}

uint64_t GEOPDBrowseCategoryIsValid(void *a1)
{
  v42 = objc_msgSend_position(a1);
  v43 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v40) = 0;
      v6 = objc_msgSend_position(a1, v40) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v40 & 0x7F) << v3;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) > 6)
    {
      if (v12 > 9)
      {
        switch(v12)
        {
          case 0xA:
            if ((v10 & 7) != 0)
            {
              goto LABEL_111;
            }

            v26 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v27 = objc_msgSend_position(a1, v40) + 1;
              if (v27 >= objc_msgSend_position(a1) && (v28 = objc_msgSend_position(a1) + 1, v28 <= [a1 length]))
              {
                v29 = [a1 data];
                [v29 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v40 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v26++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 0xB:
            if ((v10 & 7) != 0)
            {
              goto LABEL_111;
            }

            v34 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v35 = objc_msgSend_position(a1, v40) + 1;
              if (v35 >= objc_msgSend_position(a1) && (v36 = objc_msgSend_position(a1) + 1, v36 <= [a1 length]))
              {
                v37 = [a1 data];
                [v37 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v40 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v34++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 0xC:
            if ((v10 & 7) != 0)
            {
              goto LABEL_111;
            }

            v18 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v19 = objc_msgSend_position(a1, v40) + 1;
              if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
              {
                v21 = [a1 data];
                [v21 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v40 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v18++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          default:
            goto LABEL_110;
        }
      }

      else
      {
        switch(v12)
        {
          case 7:
            if ((v10 & 7) != 0)
            {
              goto LABEL_111;
            }

            v22 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v23 = objc_msgSend_position(a1, v40) + 1;
              if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
              {
                v25 = [a1 data];
                [v25 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v40 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v22++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 8:
            if ((v10 & 7) != 0)
            {
              goto LABEL_111;
            }

            v30 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v31 = objc_msgSend_position(a1, v40) + 1;
              if (v31 >= objc_msgSend_position(a1) && (v32 = objc_msgSend_position(a1) + 1, v32 <= [a1 length]))
              {
                v33 = [a1 data];
                [v33 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v40 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v30++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          case 9:
            if ((v10 & 7) != 0)
            {
              goto LABEL_111;
            }

            v13 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v14 = objc_msgSend_position(a1, v40) + 1;
              if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
              {
                v16 = [a1 data];
                [v16 getBytes:&v40 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v40 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v13++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }

            break;
          default:
            goto LABEL_110;
        }
      }

      [a1 hasError];
    }

    else if (v12 > 3)
    {
      if (v12 != 4)
      {
        if (v12 == 5)
        {
          if (v11 != 2)
          {
            goto LABEL_111;
          }
        }

        else if (v12 == 6 && v11 != 2)
        {
          goto LABEL_111;
        }

        goto LABEL_110;
      }

      if (v11 != 2 || (v40 = 0, v41 = 0, !PBReaderPlaceMark()) || !GEOPDBrowseCategoryIsValid(a1))
      {
LABEL_111:
        PBReaderRecallMark();
        return 0;
      }

LABEL_74:
      PBReaderRecallMark();
    }

    else
    {
      switch(v12)
      {
        case 1:
          if (v11 != 2)
          {
            goto LABEL_111;
          }

          break;
        case 2:
          if (v11 != 2)
          {
            goto LABEL_111;
          }

          break;
        case 3:
          if (v11 != 2)
          {
            goto LABEL_111;
          }

          v40 = 0;
          v41 = 0;
          if (!PBReaderPlaceMark() || !GEOStyleAttributesIsValid(a1))
          {
            goto LABEL_111;
          }

          goto LABEL_74;
      }

LABEL_110:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_111;
      }
    }
  }

  v38 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v38;
}

BOOL _GEOPDPlaceResponseIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 128));
  v2 = *(a1 + 140);
  if (v2 < 0)
  {
    return 1;
  }

  if ((v2 & 0x800) != 0)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
      IsDirty = _GEOPDPlaceGlobalResultIsDirty(v3);
      os_unfair_lock_unlock(v3 + 114);
      if (IsDirty)
      {
        return 1;
      }

      LOWORD(v2) = *(a1 + 140);
    }
  }

  return (v2 & 0x77F0) != 0;
}

void *GEOPDPlaceGlobalResultReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 452))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceGlobalResultReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 456));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 448) = objc_msgSend_position(v8);
  *(a1 + 452) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDPlaceGlobalResultReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceGlobalResultReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceGlobalResultReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceGlobalResultCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 456));
  return Specified;
}

void *GEOPDPlaceGlobalResultReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 456));
  [v3 setLength:*(a1 + 452)];
  [v3 seekToOffset:*(a1 + 448)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 460);
  v12 = vdupq_n_s64(v11);
  v13 = vdupq_n_s32(v11);
  v14.i32[0] = v11;
  v14.i32[1] = v11 >> 33;
  v15 = vshlq_u32(v13, xmmword_187FBD2F0);
  v16 = vshlq_u32(v13, xmmword_187FBD300);
  v17 = vshr_n_u32(*v13.i8, 0x1FuLL);
  v18 = vshl_u32(*v13.i8, 0xFFFFFFE9FFFFFFEALL);
  v19 = vshlq_u32(v13, xmmword_187FBD320);
  v20 = vshl_u32(*v13.i8, 0xFFFFFFEFFFFFFFF2);
  v21 = vshl_u32(*v13.i8, 0xFFFFFFFCFFFFFFE2);
  v22 = vshl_u32(*v13.i8, 0xFFFFFFFDFFFFFFF7);
  v23 = vshlq_u32(v13, xmmword_187FBD350);
  v24 = vshl_u32(*v13.i8, 0xFFFFFFFEFFFFFFFFLL);
  v25 = vshl_u32(*v13.i8, 0xFFFFFFEEFFFFFFF4);
  v13.i32[0] = v11 >> 53;
  v26.i64[0] = 0x100000001;
  v26.i64[1] = 0x100000001;
  v27 = vandq_s8(v15, v26);
  v28 = vandq_s8(v16, v26);
  v13.i32[0] = vand_s8(*v13.i8, 0x100000001).u32[0];
  v13.i32[1] = v17.i32[1];
  v16.i32[0] = v11 >> 46;
  v16.i32[1] = v11 >> 11;
  v29.i32[0] = vaddvq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD2C0), vshlq_u64(v12, xmmword_187FBD2B0)), v26));
  *v15.i8 = vadd_s32(vand_s8(v18, 0x100000001), vand_s8(*v16.i8, 0x100000001));
  v29.i32[1] = (v11 >> 35) & 1;
  *v16.i8 = vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD310)), 0x100000001), vand_s8(v20, 0x100000001));
  v30 = vadd_s32(vand_s8(v22, 0x100000001), vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD340)), 0x100000001));
  v22.i32[0] = (v11 >> 25) & 1;
  v22.i32[1] = vaddvq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD2E0), vshlq_u64(v12, xmmword_187FBD2D0)), v26));
  *v12.i8 = vadd_s32(vadd_s32(vadd_s32(*v15.i8, vadd_s32(*v16.i8, vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD330)), 0x100000001), vand_s8(v21, 0x100000001)))), vadd_s32(v29, vand_s8(v14, 0x100000001))), vadd_s32(vadd_s32(v30, vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD360)), 0x100000001), vand_s8(v24, 0x100000001))), vadd_s32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD370)), 0x100000001), vand_s8(v25, 0x100000001)), vadd_s32(*v13.i8, v22))));
  v31 = vadd_s32(*v12.i8, vdup_lane_s32(*v12.i8, 1)).u32[0] + vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(v23, v26), vandq_s8(v19, v26)), vaddq_s32(v28, v27)));
  while (1)
  {
    v32 = a3[v6];
    if (v32 > -3)
    {
      break;
    }

    if (v32 == -4)
    {
      ++v31;
      v8 = 1;
      goto LABEL_15;
    }

    if (v32 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v31;
LABEL_15:
    ++v6;
  }

  if (v32 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v32 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v32)
  {
    goto LABEL_14;
  }

  v33 = v31 > 0x29;
  v34 = v33 & ~v10 | v8;
  v35 = v10 | v33;
  LODWORD(v63) = v34;
  HIDWORD(v63) = v35 | v8;
  if ((v35 | v7))
  {
    v36 = 0;
  }

  else
  {
    v36 = a3;
  }

  v64 = (v36 == 0) | v35;
  v65 = v35;
  while (2)
  {
    v37 = objc_msgSend_position(v3, v63);
    if (v37 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_425:
      v46 = 1;
      goto LABEL_428;
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    while (1)
    {
      LOBYTE(v66) = 0;
      v41 = objc_msgSend_position(v3) + 1;
      if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
      {
        v43 = [v3 data];
        [v43 getBytes:&v66 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v40 |= (v66 & 0x7F) << v38;
      if ((v66 & 0x80) == 0)
      {
        break;
      }

      v38 += 7;
      if (v39++ >= 9)
      {
        v40 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v40 = 0;
    }

LABEL_33:
    v45 = [v3 hasError];
    v46 = 1;
    if ((v45 & 1) != 0 || (v40 & 7) == 4)
    {
      goto LABEL_428;
    }

    v47 = v40 >> 3;
    v48 = v65;
    if ((v64 & 1) == 0)
    {
      v49 = v36;
      do
      {
        v51 = *v49++;
        v50 = v51;
        v48 = v51 != 0;
        if (v51)
        {
          v52 = v50 == v47;
        }

        else
        {
          v52 = 1;
        }
      }

      while (!v52);
    }

    switch(v47)
    {
      case 1:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 0x40) == 0)
        {
          v66 = 0;
          v67 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_427;
          }

          v53 = objc_alloc_init(GEOPDSearchResult);
          if (GEOPDSearchResultReadAllFrom(v53, v3, v9 & 1))
          {
            PBReaderRecallMark();
            v54 = 384;
            goto LABEL_308;
          }

          goto LABEL_426;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_427;
        }

        v58 = *(a1 + 460) << 17;
        goto LABEL_423;
      case 2:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 41;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDGeocodingResult);
        if (!GEOPDGeocodingResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 192;
        goto LABEL_308;
      case 3:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 49;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDCanonicalLocationSearchResult);
        if (!GEOPDCanonicalLocationSearchResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 128;
        goto LABEL_308;
      case 4:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 20;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDReverseGeocodingResult);
        if (!GEOPDReverseGeocodingResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 360;
        goto LABEL_308;
      case 5:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 27;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPlaceLookupResult);
        if (!GEOPDPlaceLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 304;
        goto LABEL_308;
      case 6:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 33;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDMerchantLookupResult);
        if (!GEOPDMerchantLookupResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 256;
        goto LABEL_308;
      case 7:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 26;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPlaceRefinementResult);
        if (!GEOPDPlaceRefinementResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 312;
        goto LABEL_308;
      case 8:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 466) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 14;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDSiriSearchResult);
        if (!GEOPDSiriSearchResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 408;
        goto LABEL_308;
      case 9:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 37;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDLocationDirectedSearchResult);
        if (!GEOPDLocationDirectedSearchResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 224;
        goto LABEL_308;
      case 10:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 57;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDAutocompleteResult);
        if (!GEOPDAutocompleteResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 64;
        goto LABEL_308;
      case 11:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 50;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDSearchBrowseCategorySuggestionResult);
        if (!GEOPDSearchBrowseCategorySuggestionResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 120;
        goto LABEL_308;
      case 12:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 48;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDCategorySearchResult);
        if (!GEOPDCategorySearchResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 136;
        goto LABEL_308;
      case 13:
        if (!v48)
        {
          goto LABEL_315;
        }

        if (*(a1 + 465))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 23;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPopularNearbySearchResult);
        if (!GEOPDPopularNearbySearchResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 336;
        goto LABEL_308;
      case 14:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 16;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDSearchZeroKeywordCategorySuggestionResult);
        if (!GEOPDSearchZeroKeywordCategorySuggestionResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 392;
        goto LABEL_308;
      case 15:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 18;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDSearchFieldPlaceholderResult);
        if (!GEOPDSearchFieldPlaceholderResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 376;
        goto LABEL_308;
      case 16:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 54;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDBatchPopularNearbySearchResult);
        if (!GEOPDBatchPopularNearbySearchResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 88;
        goto LABEL_308;
      case 17:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 466) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 11;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDVendorSpecificPlaceRefinementResult);
        if (!GEOPDVendorSpecificPlaceRefinementResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 432;
        goto LABEL_308;
      case 18:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 32;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDNearbySearchResult);
        if (!GEOPDNearbySearchResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 264;
        goto LABEL_308;
      case 19:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 62;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDAddressObjectGeocodingResult);
        if (!GEOPDAddressObjectGeocodingResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 24;
        goto LABEL_308;
      case 20:
        if (!v48)
        {
          goto LABEL_315;
        }

        if (*(a1 + 466))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 15;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDSearchZeroKeywordWithSearchResultsSuggestionResult);
        if (!GEOPDSearchZeroKeywordWithSearchResultsSuggestionResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 400;
        goto LABEL_308;
      case 21:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 43;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDExternalTransitLookupResult);
        if (!GEOPDExternalTransitLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 176;
        goto LABEL_308;
      case 22:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 42;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDFeatureIdGeocodingResult);
        if (!GEOPDFeatureIdGeocodingResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 184;
        goto LABEL_308;
      case 23:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 35;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDMapsIdentifierPlaceLookupResult);
        if (!GEOPDMapsIdentifierPlaceLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 240;
        goto LABEL_308;
      case 25:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 53;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDBatchReverseGeocodingResult);
        if (!GEOPDBatchReverseGeocodingResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 96;
        goto LABEL_308;
      case 30:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 51;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDBrandLookupResult);
        if (!GEOPDBrandLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 112;
        goto LABEL_308;
      case 32:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 466) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 10;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDWifiFingerprintResult);
        if (!GEOPDWifiFingerprintResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 440;
        goto LABEL_308;
      case 34:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 38;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDIpGeoLookupResult);
        if (!GEOPDIpGeoLookupResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 216;
        goto LABEL_308;
      case 35:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 40;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDGroundViewLabelResult);
        if (!GEOPDGroundViewLabelResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 200;
        goto LABEL_308;
      case 36:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 461) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 52;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDBatchSpatialLookupResult);
        if (!GEOPDBatchSpatialLookupResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 104;
        goto LABEL_308;
      case 37:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 28;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPlaceGlobalCommonResult);
        if (!GEOPDPlaceGlobalCommonResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 296;
        goto LABEL_308;
      case 38:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 30;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPlaceCollectionLookupResult);
        if (!GEOPDPlaceCollectionLookupResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 280;
        goto LABEL_308;
      case 39:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 466) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 12;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDTransitScheduleLookupResult);
        if (!GEOPDTransitScheduleLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 424;
        goto LABEL_308;
      case 40:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 56;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDBatchCategoryLookupResult);
        if (!GEOPDBatchCategoryLookupResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 72;
        goto LABEL_308;
      case 41:
        if (!v48)
        {
          goto LABEL_315;
        }

        if (*(a1 + 461))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 55;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDBatchMerchantLookupBrandResult);
        if (!GEOPDBatchMerchantLookupBrandResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 80;
        goto LABEL_308;
      case 42:
        if (!v48)
        {
          goto LABEL_315;
        }

        if (*(a1 + 462))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 47;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDChildPlaceLookupByCategoryResult);
        if (!GEOPDChildPlaceLookupByCategoryResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 144;
        goto LABEL_308;
      case 43:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 34;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDMapsSearchHomeResult);
        if (!GEOPDMapsSearchHomeResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 248;
        goto LABEL_308;
      case 44:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 46;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDCollectionSuggestionResult);
        if (!GEOPDCollectionSuggestionResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 152;
        goto LABEL_308;
      case 45:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 22;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPublisherViewResult);
        if (!GEOPDPublisherViewResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 344;
        goto LABEL_308;
      case 46:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 59;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDAllCollectionsViewResult);
        if (!GEOPDAllCollectionsViewResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 48;
        goto LABEL_308;
      case 47:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 60;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDAirportEntityPlaceLookupResult);
        if (!GEOPDAirportEntityPlaceLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 40;
        goto LABEL_308;
      case 48:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 466) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 13;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDTerritoryLookupResult);
        if (!GEOPDTerritoryLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 416;
        goto LABEL_308;
      case 49:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 463) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 36;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDMapsHomeResult);
        if (!GEOPDMapsHomeResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 232;
        goto LABEL_308;
      case 50:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 58;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDAllGuidesLocationsViewResult);
        if (!GEOPDAllGuidesLocationsViewResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 56;
        goto LABEL_308;
      case 51:
        if (!v48)
        {
          goto LABEL_315;
        }

        if (*(a1 + 463))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 39;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDGuidesHomeResult);
        if (!GEOPDGuidesHomeResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 208;
        goto LABEL_308;
      case 54:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 44;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDExtendedGeoLookupResult);
        if (!GEOPDExtendedGeoLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 168;
        goto LABEL_308;
      case 55:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 21;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDQueryUnderstandingResult);
        if (!GEOPDQueryUnderstandingResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 352;
        goto LABEL_308;
      case 56:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 24;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPoiAtAddressLookupResult);
        if (!GEOPDPoiAtAddressLookupResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 328;
        goto LABEL_308;
      case 58:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 25;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPlacecardEnrichmentResult);
        if (!GEOPDPlacecardEnrichmentResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 320;
        goto LABEL_308;
      case 59:
        if (!v48)
        {
          goto LABEL_315;
        }

        if (*(a1 + 464))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 31;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDOfflineRegionNameResult);
        if (!GEOPDOfflineRegionNameResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 272;
        goto LABEL_308;
      case 60:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 465) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 19;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDSearchCapabilitiesResult);
        if (!GEOPDSearchCapabilitiesResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 368;
        goto LABEL_308;
      case 62:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 460) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 61;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDAddressRecommendationResult);
        if (!GEOPDAddressRecommendationResultReadAllFrom(v53, v3))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 32;
        goto LABEL_308;
      case 63:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 464) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 29;
LABEL_423:
          v6 += v58 >> 63;
          goto LABEL_424;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDPlaceDescriptorResolutionResult);
        if (GEOPDPlaceDescriptorResolutionResultReadAllFrom(v53, v3))
        {
          PBReaderRecallMark();
          v54 = 288;
LABEL_308:
          v55 = *(a1 + v54);
          *(a1 + v54) = v53;

          --v6;
LABEL_424:
          if (!(BYTE4(v63) & 1 | (v6 != 0)))
          {
            goto LABEL_425;
          }

          continue;
        }

LABEL_426:

LABEL_427:
        v46 = 0;
LABEL_428:
        if (v63)
        {
LABEL_429:
          *(a1 + 460) |= 1uLL;
        }

        if (v65 & 1 | ((v46 & 1) == 0))
        {
          *(a1 + 460) |= 0x3FFFFFFFFFFFFEuLL;
        }

        else if (v36)
        {
          while (1)
          {
            v59 = *v36++;
            v60 = 0x400000000000;
            switch(v59)
            {
              case 0:
                goto LABEL_487;
              case 1:
                goto LABEL_486;
              case 2:
                v60 = 0x400000;
                goto LABEL_486;
              case 3:
                v60 = 0x4000;
                goto LABEL_486;
              case 4:
                v60 = 0x80000000000;
                goto LABEL_486;
              case 5:
                v60 = 0x1000000000;
                goto LABEL_486;
              case 6:
                v60 = 0x40000000;
                goto LABEL_486;
              case 7:
                v60 = 0x2000000000;
                goto LABEL_486;
              case 8:
                v60 = 0x2000000000000;
                goto LABEL_486;
              case 9:
                v60 = 0x4000000;
                goto LABEL_486;
              case 10:
                v60 = 64;
                goto LABEL_486;
              case 11:
                v60 = 0x2000;
                goto LABEL_486;
              case 12:
                v60 = 0x8000;
                goto LABEL_486;
              case 13:
                v60 = 0x10000000000;
                goto LABEL_486;
              case 14:
                v60 = 0x800000000000;
                goto LABEL_486;
              case 15:
                v60 = 0x200000000000;
                goto LABEL_486;
              case 16:
                v60 = 512;
                goto LABEL_486;
              case 17:
                v60 = 0x10000000000000;
                goto LABEL_486;
              case 18:
                v60 = 0x80000000;
                goto LABEL_486;
              case 19:
                v60 = 2;
                goto LABEL_486;
              case 20:
                v60 = 0x1000000000000;
                goto LABEL_486;
              case 21:
                v60 = 0x100000;
                goto LABEL_486;
              case 22:
                v60 = 0x200000;
                goto LABEL_486;
              case 23:
                v60 = 0x10000000;
                goto LABEL_486;
              case 25:
                v60 = 1024;
                goto LABEL_486;
              case 30:
                v60 = 4096;
                goto LABEL_486;
              case 32:
                v60 = 0x20000000000000;
                goto LABEL_486;
              case 34:
                v60 = 0x2000000;
                goto LABEL_486;
              case 35:
                v60 = 0x800000;
                goto LABEL_486;
              case 36:
                v60 = 2048;
                goto LABEL_486;
              case 37:
                v60 = 0x800000000;
                goto LABEL_486;
              case 38:
                v60 = 0x200000000;
                goto LABEL_486;
              case 39:
                v60 = 0x8000000000000;
                goto LABEL_486;
              case 40:
                v60 = 128;
                goto LABEL_486;
              case 41:
                v60 = 256;
                goto LABEL_486;
              case 42:
                v60 = 0x10000;
                goto LABEL_486;
              case 43:
                v60 = 0x20000000;
                goto LABEL_486;
              case 44:
                v60 = 0x20000;
                goto LABEL_486;
              case 45:
                v60 = 0x20000000000;
                goto LABEL_486;
              case 46:
                v60 = 16;
                goto LABEL_486;
              case 47:
                v60 = 8;
                goto LABEL_486;
              case 48:
                v60 = 0x4000000000000;
                goto LABEL_486;
              case 49:
                v60 = 0x8000000;
                goto LABEL_486;
              case 50:
                v60 = 32;
                goto LABEL_486;
              case 51:
                v60 = 0x1000000;
                goto LABEL_486;
              case 54:
                v60 = 0x80000;
                goto LABEL_486;
              case 55:
                v60 = 0x40000000000;
                goto LABEL_486;
              case 56:
                v60 = 0x8000000000;
                goto LABEL_486;
              case 58:
                v60 = 0x4000000000;
                goto LABEL_486;
              case 59:
                v60 = 0x100000000;
                goto LABEL_486;
              case 60:
                v60 = 0x100000000000;
                goto LABEL_486;
              case 62:
                v60 = 4;
                goto LABEL_486;
              case 63:
                v60 = 0x400000000;
                goto LABEL_486;
              case 64:
                v60 = 0x40000;
LABEL_486:
                *(a1 + 460) |= v60;
                break;
              default:
                continue;
            }
          }
        }

LABEL_487:
        if (v46)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v65)
        {
          v61 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 64:
        if (!v48)
        {
          goto LABEL_315;
        }

        if ((*(a1 + 462) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }

          v58 = *(a1 + 460) << 45;
          goto LABEL_423;
        }

        v66 = 0;
        v67 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_427;
        }

        v53 = objc_alloc_init(GEOPDExploreGuidesLookupResult);
        if (!GEOPDExploreGuidesLookupResultReadAllFrom(v53, v3, v9 & 1))
        {
          goto LABEL_426;
        }

        PBReaderRecallMark();
        v54 = 160;
        goto LABEL_308;
      default:
        if (v63 & 1) == 0 || (*(a1 + 460))
        {
LABEL_315:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_427;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v56 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v57 = *(a1 + 16);
            *(a1 + 16) = v56;
          }

          if (!PBUnknownFieldAdd())
          {
            v46 = 0;
            goto LABEL_429;
          }
        }

        goto LABEL_424;
    }
  }
}

BOOL _GEOPDPlaceGlobalResultIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 456));
  v2 = *(a1 + 460);
  if ((v2 & 0x40000000000000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x400000000000) != 0)
  {
    v3 = *(a1 + 384);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
      IsDirty = _GEOPDSearchResultIsDirty(v3);
      os_unfair_lock_unlock(v3 + 54);
      if (IsDirty)
      {
        return 1;
      }

      v2 = *(a1 + 460);
    }
  }

  if ((v2 & 0x83040404000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x2000000000000) != 0)
  {
    v6 = *(a1 + 408);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v6 + 48));
      v7 = *(v6 + 56) & 0x1C;
      os_unfair_lock_unlock((v6 + 48));
      if (v7)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x4000000) != 0)
  {
    v8 = *(a1 + 224);
    if (v8)
    {
      os_unfair_lock_lock_with_options();
      v9 = _GEOPDLocationDirectedSearchResultIsDirty(v8);
      os_unfair_lock_unlock(v8 + 14);
      if (v9)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x40) != 0)
  {
    v10 = *(a1 + 64);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
      v11 = _GEOPDAutocompleteResultIsDirty(v10);
      os_unfair_lock_unlock(v10 + 20);
      if (v11)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x2000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x8000) != 0)
  {
    v12 = *(a1 + 136);
    if (v12)
    {
      os_unfair_lock_lock_with_options();
      v13 = _GEOPDCategorySearchResultIsDirty(v12);
      os_unfair_lock_unlock(v12 + 42);
      if (v13)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x10000000000) != 0)
  {
    v14 = *(a1 + 336);
    if (v14)
    {
      os_unfair_lock_lock_with_options();
      v15 = _GEOPDPopularNearbySearchResultIsDirty(v14);
      os_unfair_lock_unlock(v14 + 12);
      if (v15)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x800000000000) != 0)
  {
    v16 = *(a1 + 392);
    if (v16)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v16 + 48));
      v17 = *(v16 + 52) & 0xE;
      os_unfair_lock_unlock((v16 + 48));
      if (v17)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x200000000000) != 0)
  {
    v18 = *(a1 + 376);
    if (v18)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v18 + 48));
      v19 = *(v18 + 52) & 0xE;
      os_unfair_lock_unlock((v18 + 48));
      if (v19)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x31000090301602) != 0)
  {
    return 1;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v20 = *(a1 + 216);
    if (v20)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v20 + 64));
      v21 = *(v20 + 72) & 0x7C;
      os_unfair_lock_unlock((v20 + 64));
      if (v21)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x800000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x800) != 0)
  {
    v22 = *(a1 + 104);
    if (v22)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v22 + 48));
      v23 = *(v22 + 56) & 0x1C;
      os_unfair_lock_unlock((v22 + 48));
      if (v23)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x8000A00010180) != 0)
  {
    return 1;
  }

  if ((v2 & 0x20000000) != 0)
  {
    v24 = *(a1 + 248);
    if (v24)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v24 + 48));
      v25 = *(v24 + 52) & 0xE;
      os_unfair_lock_unlock((v24 + 48));
      if (v25)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x20000) != 0)
  {
    if (GEOPDCollectionSuggestionResultIsDirty(*(a1 + 152)))
    {
      return 1;
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x20000000000) != 0)
  {
    v26 = *(a1 + 344);
    if (v26)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v26 + 48));
      v27 = *(v26 + 52) & 0xE;
      os_unfair_lock_unlock((v26 + 48));
      if (v27)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x10) != 0)
  {
    v28 = *(a1 + 48);
    if (v28)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v28 + 56));
      v29 = *(v28 + 60) & 0x1E;
      os_unfair_lock_unlock((v28 + 56));
      if (v29)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x4000008000008) != 0)
  {
    return 1;
  }

  if ((v2 & 0x20) != 0)
  {
    v30 = *(a1 + 56);
    if (v30)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v30 + 48));
      v31 = *(v30 + 52) & 0xE;
      os_unfair_lock_unlock((v30 + 48));
      if (v31)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x1000000) != 0)
  {
    v32 = *(a1 + 208);
    if (v32)
    {
      os_unfair_lock_lock_with_options();
      v33 = _GEOPDGuidesHomeResultIsDirty(v32);
      os_unfair_lock_unlock(v32 + 16);
      if (v33)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x80000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x40000000000) != 0)
  {
    v34 = *(a1 + 352);
    if (v34)
    {
      os_unfair_lock_lock_with_options();
      os_unfair_lock_assert_owner((v34 + 48));
      v35 = *(v34 + 52) & 0xE;
      os_unfair_lock_unlock((v34 + 48));
      if (v35)
      {
        return 1;
      }
    }

    v2 = *(a1 + 460);
  }

  if ((v2 & 0x10C500000004) != 0)
  {
    return 1;
  }

  if ((v2 & 0x40000) == 0)
  {
    return 0;
  }

  v36 = *(a1 + 160);
  if (!v36)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v37 = _GEOPDExploreGuidesLookupResultIsDirty(v36);
  os_unfair_lock_unlock(v36 + 12);
  return v37;
}

uint64_t GEOPDSearchBrowseCategorySuggestionResultReadAllFrom(uint64_t a1, void *a2, int a3)
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

          v16 = objc_alloc_init(GEOPDBrowseCategory);
          if (!GEOPDBrowseCategoryReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [(GEOPDSearchBrowseCategorySuggestionResult *)a1 addCategory:v16];
        }

        else
        {
          if (!*(a1 + 8))
          {
            v17 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v18 = *(a1 + 8);
            *(a1 + 8) = v17;
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

void *GEOPDBrowseCategoryReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDBrowseCategoryReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDBrowseCategoryReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDBrowseCategoryReadAllFrom_initialTag;
  }

  Specified = GEOPDBrowseCategoryReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDBrowseCategoryCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOPDBrowseCategoryReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = 0;
  v11 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 100)), 0xFFF5FFF6FFF9FFF4), 0x1000100010001)) + ((*(a1 + 100) >> 9) & 1) + (HIBYTE(*(a1 + 100)) & 1) + ((*(a1 + 100) >> 6) & 1));
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
  LODWORD(v86) = v14;
  HIDWORD(v86) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v87 = (v16 == 0) | v15;
  v88 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v86);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_179:
      v26 = 1;
      goto LABEL_180;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v89) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v89 & 0x7F) << v18;
      if ((v89 & 0x80) == 0)
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
      goto LABEL_180;
    }

    v27 = v20 >> 3;
    v28 = v88;
    if ((v87 & 1) == 0)
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

    if (v27 <= 6)
    {
      break;
    }

    if (v27 <= 9)
    {
      if (v27 == 7)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_145;
        }

        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 100) |= 2u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v54 = objc_msgSend_position(v3) + 1;
          if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
          {
            v56 = [v3 data];
            [v56 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v53 |= (v89 & 0x7F) << v51;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v24 = v52++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_157;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v53;
        }

LABEL_157:
        v77 = 88;
      }

      else if (v27 == 8)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_145;
        }

        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 100) |= 1u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v66 = objc_msgSend_position(v3) + 1;
          if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
          {
            v68 = [v3 data];
            [v68 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v65 |= (v89 & 0x7F) << v63;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v24 = v64++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_163;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v65;
        }

LABEL_163:
        v77 = 84;
      }

      else
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_145;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 100) |= 4u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v89 & 0x7F) << v35;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v24 = v36++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_151;
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

LABEL_151:
        v77 = 92;
      }

      *(a1 + v77) = v41;
      goto LABEL_146;
    }

    switch(v27)
    {
      case 0xA:
        if ((v7 & 1) == 0)
        {
          goto LABEL_145;
        }

        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 100) |= 0x20u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v60 = objc_msgSend_position(v3) + 1;
          if (v60 >= objc_msgSend_position(v3) && (v61 = objc_msgSend_position(v3) + 1, v61 <= [v3 length]))
          {
            v62 = [v3 data];
            [v62 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v59 |= (v89 & 0x7F) << v57;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v24 = v58++ >= 9;
          if (v24)
          {
            v50 = 0;
            goto LABEL_159;
          }
        }

        v50 = (v59 != 0) & ~[v3 hasError];
LABEL_159:
        v78 = 98;
        goto LABEL_167;
      case 0xB:
        if ((v7 & 1) == 0)
        {
          goto LABEL_145;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 100) |= 8u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v89 & 0x7F) << v69;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v24 = v70++ >= 9;
          if (v24)
          {
            v50 = 0;
            goto LABEL_166;
          }
        }

        v50 = (v71 != 0) & ~[v3 hasError];
LABEL_166:
        v78 = 96;
        goto LABEL_167;
      case 0xC:
        if ((v7 & 1) == 0)
        {
          goto LABEL_145;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 100) |= 0x10u;
        while (1)
        {
          LOBYTE(v89) = 0;
          v47 = objc_msgSend_position(v3) + 1;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
          {
            v49 = [v3 data];
            [v49 getBytes:&v89 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v46 |= (v89 & 0x7F) << v44;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v24 = v45++ >= 9;
          if (v24)
          {
            v50 = 0;
            goto LABEL_153;
          }
        }

        v50 = (v46 != 0) & ~[v3 hasError];
LABEL_153:
        v78 = 97;
LABEL_167:
        *(a1 + v78) = v50;
        goto LABEL_146;
    }

LABEL_139:
    if ((v86 & 1) == 0 || (*(a1 + 100) & 0x40) != 0)
    {
      goto LABEL_145;
    }

    if (!*(a1 + 16))
    {
      v75 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v76 = *(a1 + 16);
      *(a1 + 16) = v75;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v85 = &OBJC_IVAR___GEOGuidanceEventFeedback__stepID;
      goto LABEL_181;
    }

LABEL_146:
    if (!(BYTE4(v86) & 1 | (v6 != 0)))
    {
      goto LABEL_179;
    }
  }

  if (v27 <= 3)
  {
    switch(v27)
    {
      case 1:
        if (!v28)
        {
          goto LABEL_145;
        }

        if ((*(a1 + 100) & 0x1000) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_208;
          }

          v79 = 8 * *(a1 + 100);
          goto LABEL_178;
        }

        v42 = PBReaderReadData();
        v43 = 64;
        goto LABEL_127;
      case 2:
        if (!v28)
        {
          goto LABEL_145;
        }

        if ((*(a1 + 100) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_208;
          }

          v79 = *(a1 + 100) << 8;
          goto LABEL_178;
        }

        v42 = PBReaderReadString();
        v43 = 24;
        goto LABEL_127;
      case 3:
        if (!v28)
        {
          goto LABEL_145;
        }

        if ((*(a1 + 100) & 0x400) == 0)
        {
          v89 = 0;
          v90 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_208;
          }

          v33 = objc_alloc_init(GEOStyleAttributes);
          if (!GEOStyleAttributesReadAllFrom(v33, v3))
          {
            goto LABEL_207;
          }

          PBReaderRecallMark();
          v34 = *(a1 + 48);
          *(a1 + 48) = v33;
          goto LABEL_128;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = 32 * *(a1 + 100);
LABEL_178:
        v6 += v79 >> 15;
        goto LABEL_146;
    }

    goto LABEL_139;
  }

  if (v27 != 4)
  {
    if (v27 == 5)
    {
      if (!v28)
      {
        goto LABEL_145;
      }

      if ((*(a1 + 100) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = *(a1 + 100) << 6;
        goto LABEL_178;
      }

      v42 = PBReaderReadString();
      v43 = 40;
    }

    else
    {
      if (!v28)
      {
        goto LABEL_145;
      }

      if ((*(a1 + 100) & 0x100) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_208;
        }

        v79 = *(a1 + 100) << 7;
        goto LABEL_178;
      }

      v42 = PBReaderReadString();
      v43 = 32;
    }

LABEL_127:
    v34 = *(a1 + v43);
    *(a1 + v43) = v42;
LABEL_128:

    --v6;
    goto LABEL_146;
  }

  if (!v28 || (*(a1 + 100) & 0x800) != 0)
  {
LABEL_145:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_146;
  }

  v89 = 0;
  v90 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_208;
  }

  v33 = objc_alloc_init(GEOPDBrowseCategory);
  if (GEOPDBrowseCategoryReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDBrowseCategory *)a1 _addNoFlagsSubCategory:v33];

    goto LABEL_146;
  }

LABEL_207:

LABEL_208:
  v26 = 0;
LABEL_180:
  v85 = &OBJC_IVAR___GEOGuidanceEventFeedback__stepID;
  if ((v86 & 1) == 0)
  {
    goto LABEL_182;
  }

LABEL_181:
  *(a1 + v85[554]) |= 0x40u;
LABEL_182:
  if (v88 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v85[554]) |= 0x1000u;
    *(a1 + v85[554]) |= 0x80u;
    *(a1 + v85[554]) |= 0x400u;
    *(a1 + v85[554]) |= 0x800u;
    *(a1 + v85[554]) |= 0x200u;
    *(a1 + v85[554]) |= 0x100u;
    goto LABEL_201;
  }

  if (v16)
  {
    while (1)
    {
LABEL_185:
      v81 = *v16++;
      v80 = v81;
      if (v81 > 3)
      {
        switch(v80)
        {
          case 4:
            v82 = 2048;
            break;
          case 5:
            v82 = 512;
            break;
          case 6:
            v82 = 256;
            break;
          default:
            continue;
        }

        goto LABEL_199;
      }

      if (v80 > 1)
      {
        break;
      }

      if (v80 == 1)
      {
        v82 = 4096;
LABEL_199:
        *(a1 + v85[554]) |= v82;
        continue;
      }

      if (!v80)
      {
        goto LABEL_201;
      }
    }

    if (v80 == 2)
    {
      v82 = 128;
    }

    else
    {
      if (v80 != 3)
      {
        goto LABEL_185;
      }

      v82 = 1024;
    }

    goto LABEL_199;
  }

LABEL_201:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v88)
  {
    v83 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void _GEOPDBrowseCategoryCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 48) readAll:1];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
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

        [(GEOPDBrowseCategory *)*(*(&v7 + 1) + 8 * v6++) readAll:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t GEOETATrafficUpdateResponseIsValid(void *a1)
{
  v28 = objc_msgSend_position(a1);
  v29 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v26) = 0;
      v6 = objc_msgSend_position(a1, v26) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v26 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v26 & 0x7F) << v3;
      if ((v26 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    switch((v10 >> 3))
    {
      case 1u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_92;
        }

        v12 = 0;
        while (1)
        {
          LOBYTE(v26) = 0;
          v13 = objc_msgSend_position(a1, v26) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:&v26 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v26 & 0x80000000) == 0)
          {
            goto LABEL_90;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

      case 2u:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOETARouteIsValid(a1))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 3u:
        if (v11 == 2)
        {
          goto LABEL_88;
        }

        goto LABEL_92;
      case 4u:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOPDDatasetABStatusIsValid(a1))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 5u:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficCameraIsValid(a1, v22))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 6u:
        if (v11 == 2)
        {
          goto LABEL_88;
        }

        goto LABEL_92;
      case 7u:
        if (v11 == 2)
        {
          goto LABEL_88;
        }

        goto LABEL_92;
      case 8u:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficSignalIsValid(a1))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 9u:
        if (v11 == 2)
        {
          v26 = 0;
          v27 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOArrivalParametersIsValid(a1))
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_92;
      case 0xAu:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOProblemDetailIsValid(a1, v23))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 0xBu:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOETATrafficUpdateWaypointRouteIsValid(a1))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 0xCu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_92;
        }

        v18 = 0;
        while (1)
        {
          LOBYTE(v26) = 0;
          v19 = objc_msgSend_position(a1, v26) + 1;
          if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
          {
            v21 = [a1 data];
            [v21 getBytes:&v26 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v26 & 0x80000000) == 0)
          {
            break;
          }

          v16 = v18++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

LABEL_90:
        [a1 hasError];
        continue;
      case 0xDu:
        if (v11 == 2)
        {
          goto LABEL_88;
        }

        goto LABEL_92;
      case 0xEu:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOPDSearchClientBehaviorIsValid(a1))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      case 0xFu:
        if (v11 != 2)
        {
          goto LABEL_92;
        }

        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !GEOCommonResponseAttributesIsValid(a1))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      default:
        if ((v10 >> 3) == 1051)
        {
          if (v11 != 2 || (v26 = 0, v27 = 0, !PBReaderPlaceMark()) || !GEOClientMetricsIsValid(a1, v17))
          {
LABEL_92:
            PBReaderRecallMark();
            return 0;
          }

LABEL_87:
          PBReaderRecallMark();
        }

        else
        {
LABEL_88:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        break;
    }
  }

  v24 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v24;
}

uint64_t GEOETAStepIsValid(void *a1)
{
  v41 = objc_msgSend_position(a1);
  v42 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v39) = 0;
      v6 = objc_msgSend_position(a1, v39) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v39 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v39 & 0x7F) << v3;
      if ((v39 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) > 4)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          if (v11 != 2 || (v39 = 0, v40 = 0, !PBReaderPlaceMark()) || !GEOEVStateInfoIsValid(a1, v36))
          {
LABEL_93:
            PBReaderRecallMark();
            return 0;
          }

          goto LABEL_91;
        }

        if (v12 != 8)
        {
          goto LABEL_92;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_93;
        }

        v20 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v21 = objc_msgSend_position(a1, v39) + 1;
          if (v21 >= objc_msgSend_position(a1) && (v22 = objc_msgSend_position(a1) + 1, v22 <= [a1 length]))
          {
            v23 = [a1 data];
            [v23 getBytes:&v39 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v39 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v17 = v20++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 == 5)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_93;
        }

        v28 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v29 = objc_msgSend_position(a1, v39) + 1;
          if (v29 >= objc_msgSend_position(a1) && (v30 = objc_msgSend_position(a1) + 1, v30 <= [a1 length]))
          {
            v31 = [a1 data];
            [v31 getBytes:&v39 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v39 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v17 = v28++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 != 6)
      {
        goto LABEL_92;
      }

      if (v11 != 2)
      {
        goto LABEL_93;
      }

      v39 = 0;
      v40 = 0;
      if (!PBReaderPlaceMark() || !GEOStopStepEVInfoIsValid(a1, v18))
      {
        goto LABEL_93;
      }

LABEL_91:
      PBReaderRecallMark();
    }

    else if (v12 > 2)
    {
      if (v12 != 3)
      {
        if (v12 != 4)
        {
          goto LABEL_92;
        }

        if (v11 != 2)
        {
          goto LABEL_93;
        }

        v39 = 0;
        v40 = 0;
        if (!PBReaderPlaceMark() || !GEOTimeCheckpointsIsValid(a1, v19))
        {
          goto LABEL_93;
        }

        goto LABEL_91;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_93;
      }

      v32 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v33 = objc_msgSend_position(a1, v39) + 1;
        if (v33 >= objc_msgSend_position(a1) && (v34 = objc_msgSend_position(a1) + 1, v34 <= [a1 length]))
        {
          v35 = [a1 data];
          [v35 getBytes:&v39 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v39 & 0x80000000) == 0)
        {
          break;
        }

        v17 = v32++ > 8;
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_87:
      [a1 hasError];
    }

    else
    {
      if (v12 == 1)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_93;
        }

        v24 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v25 = objc_msgSend_position(a1, v39) + 1;
          if (v25 >= objc_msgSend_position(a1) && (v26 = objc_msgSend_position(a1) + 1, v26 <= [a1 length]))
          {
            v27 = [a1 data];
            [v27 getBytes:&v39 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v39 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v17 = v24++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_93;
        }

        v13 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v14 = objc_msgSend_position(a1, v39) + 1;
          if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
          {
            v16 = [a1 data];
            [v16 getBytes:&v39 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v39 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v17 = v13++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_92:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  v37 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v37;
}

uint64_t GEONavigabilityInfoIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_43;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v22 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v22 & 0x7F) << v3;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_43:
        v20 = [a1 hasError] ^ 1;
        goto LABEL_44;
      }

      if ((v10 >> 3) != 2)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      v16 = 0;
      while (1)
      {
        v22 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          break;
        }

        v15 = v16++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }

LABEL_42:
      [a1 hasError];
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v15 = v11++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((PBReaderSkipValueWithTag() & 1) != 0);
LABEL_45:
  v20 = 0;
LABEL_44:
  PBReaderRecallMark();
  return v20;
}

uint64_t GEOWaypointRouteIsValid(void *a1)
{
  v53 = objc_msgSend_position(a1);
  v54 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v51) = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v51 & 0x7F) << v3;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v5 = 0;
        goto LABEL_15;
      }
    }

    if ([a1 hasError])
    {
      v5 = 0;
    }

LABEL_15:
    if ([a1 hasError])
    {
      break;
    }

    v10 = v5 & 7;
    if (v10 == 4)
    {
      break;
    }

    switch((v5 >> 3))
    {
      case 1u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_152;
        }

        v26 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v27 = objc_msgSend_position(a1) + 1;
          if (v27 >= objc_msgSend_position(a1) && (v28 = objc_msgSend_position(a1) + 1, v28 <= [a1 length]))
          {
            v29 = [a1 data];
            [v29 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v17 = v26++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

      case 2u:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEORouteIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 3u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_152;
        }

        v18 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v19 = objc_msgSend_position(a1) + 1;
          if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
          {
            v21 = [a1 data];
            [v21 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v17 = v18++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

      case 4u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_152;
        }

        v22 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v23 = objc_msgSend_position(a1) + 1;
          if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
          {
            v25 = [a1 data];
            [v25 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v17 = v22++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

      case 5u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_152;
        }

        v13 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v14 = objc_msgSend_position(a1) + 1;
          if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
          {
            v16 = [a1 data];
            [v16 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v17 = v13++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

      case 6u:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEONameInfoIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 7u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_152;
        }

        v31 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v32 = objc_msgSend_position(a1) + 1;
          if (v32 >= objc_msgSend_position(a1) && (v33 = objc_msgSend_position(a1) + 1, v33 <= [a1 length]))
          {
            v34 = [a1 data];
            [v34 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v17 = v31++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

      case 8u:
      case 0x13u:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOTraversalTimesIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 9u:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOWaypointRouteFeaturesIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0xAu:
        if (v10 == 2)
        {
          v51 = 0;
          v52 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEORoutePlanningInfoIsValid(a1))
            {
              goto LABEL_126;
            }
          }
        }

        goto LABEL_152;
      case 0xBu:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOArrivalParametersIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0xCu:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficSignalIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0xDu:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficCameraIsValid(a1, v35))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0xEu:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEORouteIncidentIsValid(a1, v12))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0xFu:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEORestrictionZoneInfoIsValid(a1))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0x10u:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOOutOfMapsAlertsInfoIsValid(a1, v11))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0x11u:
        if (v10 != 2)
        {
          goto LABEL_152;
        }

        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficBannerTextIsValid(a1, v30))
        {
          goto LABEL_152;
        }

        goto LABEL_126;
      case 0x12u:
        if (v10 == 2)
        {
          v51 = 0;
          v52 = 0;
          if (!PBReaderPlaceMark())
          {
LABEL_152:
            PBReaderRecallMark();
            return 0;
          }

LABEL_139:
          while (1)
          {
            v44 = objc_msgSend_position(a1);
            if (v44 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              break;
            }

            v45 = 0;
            while (1)
            {
              v55 = 0;
              v46 = objc_msgSend_position(a1) + 1;
              if (v46 >= objc_msgSend_position(a1) && (v47 = objc_msgSend_position(a1) + 1, v47 <= [a1 length]))
              {
                v48 = [a1 data];
                [v48 getBytes:&v55 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v55 & 0x80000000) == 0)
              {
                break;
              }

              v17 = v45++ > 8;
              if (v17)
              {
                goto LABEL_139;
              }
            }

            [a1 hasError];
          }

LABEL_126:
          PBReaderRecallMark();
        }

        else
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_152;
          }

          while (1)
          {
            LOBYTE(v51) = 0;
            v36 = objc_msgSend_position(a1) + 1;
            if (v36 >= objc_msgSend_position(a1) && (v37 = objc_msgSend_position(a1) + 1, v37 <= [a1 length]))
            {
              v38 = [a1 data];
              [v38 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v51 & 0x80000000) == 0)
            {
              break;
            }

            v39 = v10++;
            if (v39 > 8)
            {
              goto LABEL_2;
            }
          }

LABEL_137:
          [a1 hasError];
        }

        break;
      case 0x14u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_152;
        }

        v40 = 0;
        while (1)
        {
          LOBYTE(v51) = 0;
          v41 = objc_msgSend_position(a1) + 1;
          if (v41 >= objc_msgSend_position(a1) && (v42 = objc_msgSend_position(a1) + 1, v42 <= [a1 length]))
          {
            v43 = [a1 data];
            [v43 getBytes:&v51 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_137;
          }

          v17 = v40++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_152;
    }
  }

  v49 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v49;
}

uint64_t GEONameInfoIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v28 = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v28 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v28 & 0x7F) << v3;
      if ((v28 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      if (v12 == 1)
      {
        if (v11 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v12 == 2)
      {
        if (v11 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v12 == 3 && v11 != 2)
      {
LABEL_67:
        v26 = 0;
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if (v12 > 5)
    {
      if (v12 != 6)
      {
        if (v12 == 7 && v11 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_67;
      }

      v22 = 0;
      while (1)
      {
        v28 = 0;
        v23 = objc_msgSend_position(a1) + 1;
        if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
        {
          v25 = [a1 data];
          [v25 getBytes:&v28 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v28 & 0x80000000) == 0)
        {
          break;
        }

        v17 = v22++ > 8;
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_64:
      [a1 hasError];
    }

    else
    {
      if (v12 == 4)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_67;
        }

        v18 = 0;
        while (1)
        {
          v28 = 0;
          v19 = objc_msgSend_position(a1) + 1;
          if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
          {
            v21 = [a1 data];
            [v21 getBytes:&v28 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v28 & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          v17 = v18++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 == 5)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_67;
        }

        v13 = 0;
        while (1)
        {
          v28 = 0;
          v14 = objc_msgSend_position(a1) + 1;
          if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
          {
            v16 = [a1 data];
            [v16 getBytes:&v28 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v28 & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          v17 = v13++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_66:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  v26 = [a1 hasError] ^ 1;
LABEL_69:
  PBReaderRecallMark();
  return v26;
}

uint64_t GEOFormattedStringIsValid(void *a1)
{
  v18 = objc_msgSend_position(a1);
  v19 = [a1 length];
  while (1)
  {
    while (1)
    {
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_47;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v6 = objc_msgSend_position(a1, v16) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v16 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v16 & 0x7F) << v3;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
      {
LABEL_47:
        v14 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v14;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        break;
      }

      if (v12 == 3)
      {
        if (v11 != 2)
        {
          goto LABEL_48;
        }

        goto LABEL_37;
      }

      if (v12 == 4)
      {
        if (v11 != 2)
        {
          goto LABEL_48;
        }

        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !GEOFormatArgumentIsValid(a1))
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if (v12 == 5 && v11 != 2)
      {
        goto LABEL_48;
      }

LABEL_37:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    if (v12 == 6)
    {
      break;
    }

    if (v12 == 7)
    {
      if (v11 != 2)
      {
        goto LABEL_48;
      }

      v16 = 0;
      v17 = 0;
      if (!PBReaderPlaceMark() || !GEOConditionalFormattedStringIsValid(a1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v12 != 8)
      {
        goto LABEL_37;
      }

      if (v11 != 2)
      {
        goto LABEL_48;
      }

      v16 = 0;
      v17 = 0;
      if (!PBReaderPlaceMark() || !GEOFormattedStringMetaDataIsValid(a1))
      {
        goto LABEL_48;
      }
    }

LABEL_46:
    PBReaderRecallMark();
  }

  if (v11 == 2)
  {
    v16 = 0;
    v17 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOFormatStyleIsValid(a1, v13))
      {
        goto LABEL_46;
      }
    }
  }

LABEL_48:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOGuidanceEventIsValid(void *a1)
{
  v75 = objc_msgSend_position(a1);
  v76 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v73) = 0;
      v6 = objc_msgSend_position(a1, v73) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v73 & 0x7F) << v3;
      if ((v73 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    switch((v10 >> 3))
    {
      case 1u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v38 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v39 = objc_msgSend_position(a1, v73) + 1;
          if (v39 >= objc_msgSend_position(a1) && (v40 = objc_msgSend_position(a1) + 1, v40 <= [a1 length]))
          {
            v41 = [a1 data];
            [v41 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v38++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 2u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v42 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v43 = objc_msgSend_position(a1, v73) + 1;
          if (v43 >= objc_msgSend_position(a1) && (v44 = objc_msgSend_position(a1) + 1, v44 <= [a1 length]))
          {
            v45 = [a1 data];
            [v45 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v42++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 3u:
        if (v11 != 2)
        {
          goto LABEL_187;
        }

        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !GEOSignGuidanceIsValid(a1))
        {
          goto LABEL_187;
        }

        goto LABEL_183;
      case 4u:
        if (v11 != 2)
        {
          goto LABEL_187;
        }

        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !GEOSpokenGuidanceIsValid(a1))
        {
          goto LABEL_187;
        }

        goto LABEL_183;
      case 5u:
        if (v11 != 2)
        {
          goto LABEL_187;
        }

        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !GEOVisualLaneGuidanceIsValid(a1))
        {
          goto LABEL_187;
        }

        goto LABEL_183;
      case 7u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v30 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v31 = objc_msgSend_position(a1, v73) + 1;
          if (v31 >= objc_msgSend_position(a1) && (v32 = objc_msgSend_position(a1) + 1, v32 <= [a1 length]))
          {
            v33 = [a1 data];
            [v33 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v30++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 8u:
      case 9u:
        if (v11 != 1)
        {
          goto LABEL_187;
        }

        v12 = objc_msgSend_position(a1, 0) + 8;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 8, v13 <= [a1 length]))
        {
          v70 = [a1 data];
          [v70 getBytes:&v73 range:{objc_msgSend_position(a1), 8}];

          [a1 setPosition:objc_msgSend_position(a1) + 8];
        }

        else
        {
          [a1 _setError];
        }

        continue;
      case 0xAu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v58 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v59 = objc_msgSend_position(a1, v73) + 1;
          if (v59 >= objc_msgSend_position(a1) && (v60 = objc_msgSend_position(a1) + 1, v60 <= [a1 length]))
          {
            v61 = [a1 data];
            [v61 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v58++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0xBu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v54 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v55 = objc_msgSend_position(a1, v73) + 1;
          if (v55 >= objc_msgSend_position(a1) && (v56 = objc_msgSend_position(a1) + 1, v56 <= [a1 length]))
          {
            v57 = [a1 data];
            [v57 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v54++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0xCu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v21 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v22 = objc_msgSend_position(a1, v73) + 1;
          if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
          {
            v24 = [a1 data];
            [v24 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v21++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0xDu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v34 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v35 = objc_msgSend_position(a1, v73) + 1;
          if (v35 >= objc_msgSend_position(a1) && (v36 = objc_msgSend_position(a1) + 1, v36 <= [a1 length]))
          {
            v37 = [a1 data];
            [v37 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v34++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0xEu:
        if (v11 != 2)
        {
          goto LABEL_187;
        }

        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !GEOJunctionViewIsValid(a1, v25))
        {
          goto LABEL_187;
        }

        goto LABEL_183;
      case 0xFu:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v16 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v17 = objc_msgSend_position(a1, v73) + 1;
          if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
          {
            v19 = [a1 data];
            [v19 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v16++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0x10u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v46 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v47 = objc_msgSend_position(a1, v73) + 1;
          if (v47 >= objc_msgSend_position(a1) && (v48 = objc_msgSend_position(a1) + 1, v48 <= [a1 length]))
          {
            v49 = [a1 data];
            [v49 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v46++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0x11u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v50 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v51 = objc_msgSend_position(a1, v73) + 1;
          if (v51 >= objc_msgSend_position(a1) && (v52 = objc_msgSend_position(a1) + 1, v52 <= [a1 length]))
          {
            v53 = [a1 data];
            [v53 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v50++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0x12u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v66 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v67 = objc_msgSend_position(a1, v73) + 1;
          if (v67 >= objc_msgSend_position(a1) && (v68 = objc_msgSend_position(a1) + 1, v68 <= [a1 length]))
          {
            v69 = [a1 data];
            [v69 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v66++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0x13u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v62 = 0;
        while (1)
        {
          LOBYTE(v73) = 0;
          v63 = objc_msgSend_position(a1, v73) + 1;
          if (v63 >= objc_msgSend_position(a1) && (v64 = objc_msgSend_position(a1) + 1, v64 <= [a1 length]))
          {
            v65 = [a1 data];
            [v65 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v73 & 0x80000000) == 0)
          {
            goto LABEL_179;
          }

          v20 = v62++ > 8;
          if (v20)
          {
            goto LABEL_2;
          }
        }

      case 0x14u:
        if (v11 != 2)
        {
          goto LABEL_187;
        }

        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !GEOARGuidanceIsValid(a1, v14))
        {
          goto LABEL_187;
        }

        goto LABEL_183;
      case 0x15u:
        if ((v10 & 7) != 0)
        {
          goto LABEL_187;
        }

        v26 = 0;
        break;
      case 0x16u:
        if (v11 == 2)
        {
          v73 = 0;
          v74 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOGuidanceImportanceModeIsValid(a1))
            {
              goto LABEL_183;
            }
          }
        }

        goto LABEL_187;
      case 0x17u:
        if (v11 != 2)
        {
          goto LABEL_187;
        }

        v73 = 0;
        v74 = 0;
        if (!PBReaderPlaceMark() || !GEONavTrayGuidanceIsValid(a1, v15))
        {
          goto LABEL_187;
        }

LABEL_183:
        PBReaderRecallMark();
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_187:
        PBReaderRecallMark();
        return 0;
    }

    while (1)
    {
      LOBYTE(v73) = 0;
      v27 = objc_msgSend_position(a1, v73) + 1;
      if (v27 >= objc_msgSend_position(a1) && (v28 = objc_msgSend_position(a1) + 1, v28 <= [a1 length]))
      {
        v29 = [a1 data];
        [v29 getBytes:&v73 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      if ((v73 & 0x80000000) == 0)
      {
        break;
      }

      v20 = v26++ > 8;
      if (v20)
      {
        goto LABEL_2;
      }
    }

LABEL_179:
    [a1 hasError];
  }

  v71 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v71;
}

uint64_t GEOSignGuidanceIsValid(void *a1)
{
  v27 = objc_msgSend_position(a1);
  v28 = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_69;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v25) = 0;
          v6 = objc_msgSend_position(a1, v25) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:&v25 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v25 & 0x7F) << v3;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
        {
LABEL_69:
          v23 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v23;
        }

        v12 = v10 >> 3;
        if ((v10 >> 3) > 5)
        {
          break;
        }

        if (v12 <= 2)
        {
          if (v12 != 1 && v12 != 2)
          {
            goto LABEL_66;
          }

LABEL_48:
          if (v11 != 2)
          {
            goto LABEL_70;
          }

          v25 = 0;
          v26 = 0;
          if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        }

        if (v12 == 3)
        {
          goto LABEL_48;
        }

        if (v12 != 5)
        {
          goto LABEL_66;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_70;
        }

        v18 = 0;
        while (1)
        {
          LOBYTE(v25) = 0;
          v19 = objc_msgSend_position(a1, v25) + 1;
          if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
          {
            v21 = [a1 data];
            [v21 getBytes:&v25 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v25 & 0x80000000) == 0)
          {
            break;
          }

          v17 = v18++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }

LABEL_68:
        [a1 hasError];
      }

      if (v12 > 7)
      {
        break;
      }

      if (v12 == 6)
      {
        if (v11 != 2)
        {
          goto LABEL_70;
        }

        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark() || !GEONameInfoIsValid(a1))
        {
          goto LABEL_70;
        }

        goto LABEL_65;
      }

      if (v12 == 7)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_70;
        }

        v13 = 0;
        while (1)
        {
          LOBYTE(v25) = 0;
          v14 = objc_msgSend_position(a1, v25) + 1;
          if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
          {
            v16 = [a1 data];
            [v16 getBytes:&v25 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

          v17 = v13++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_66:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if (v12 == 8)
    {
      break;
    }

    if (v12 != 9)
    {
      goto LABEL_66;
    }

    if (v11 != 2)
    {
      goto LABEL_70;
    }

    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark() || !GEOPBTransitArtworkIsValid(a1))
    {
      goto LABEL_70;
    }

LABEL_65:
    PBReaderRecallMark();
  }

  if (v11 == 2)
  {
    v25 = 0;
    v26 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOJunctionInfoIsValid(a1, v22))
      {
        goto LABEL_65;
      }
    }
  }

LABEL_70:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOGuidanceImportanceModeIsValid(void *a1)
{
  v23[2] = objc_msgSend_position(a1);
  v23[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_44;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v6 = objc_msgSend_position(a1) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v23[0] & 0x7F) << v3;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v5 = 0;
            goto LABEL_15;
          }
        }

        if ([a1 hasError])
        {
          v5 = 0;
        }

LABEL_15:
        if (([a1 hasError] & 1) != 0 || (v10 = v5 & 7, v10 == 4))
        {
LABEL_44:
          v21 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v21;
        }

        if ((v5 >> 3) == 1)
        {
          break;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (v10 == 2)
      {
        break;
      }

      if ((v5 & 7) != 0)
      {
        goto LABEL_46;
      }

      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v11 = objc_msgSend_position(a1) + 1;
        if (v11 >= objc_msgSend_position(a1) && (v12 = objc_msgSend_position(a1) + 1, v12 <= [a1 length]))
        {
          v13 = [a1 data];
          [v13 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
        {
          break;
        }

        v14 = v10++;
        if (v14 > 8)
        {
          goto LABEL_2;
        }
      }

      [a1 hasError];
    }

    v23[0] = 0;
    v23[1] = 0;
    if (!PBReaderPlaceMark())
    {
      break;
    }

LABEL_30:
    while (1)
    {
      v15 = objc_msgSend_position(a1);
      if (v15 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        break;
      }

      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v24 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v24 & 0x80000000) == 0)
        {
          break;
        }

        if (v16++ > 8)
        {
          goto LABEL_30;
        }
      }

      [a1 hasError];
    }

    PBReaderRecallMark();
  }

LABEL_46:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOJunctionElementIsValid(void *a1)
{
  v4[2] = objc_msgSend_position(a1);
  v4[3] = [a1 length];
  v4[0] = 0;
  v4[1] = 0;
  AllFrom = GEOJunctionElementReadAllFrom(v4, a1);
  PBReaderRecallMark();
  return AllFrom;
}

uint64_t GEOJunctionElementReadAllFrom(uint64_t a1, void *a2)
{
  for (i = objc_msgSend_position(a2); i < [a2 length] && (objc_msgSend(a2, "hasError") & 1) == 0; i = objc_msgSend_position(a2))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v36 = 0;
      v8 = objc_msgSend_position(a2) + 1;
      if (v8 >= objc_msgSend_position(a2) && (v9 = objc_msgSend_position(a2) + 1, v9 <= [a2 length]))
      {
        v10 = [a2 data];
        [v10 getBytes:&v36 range:{objc_msgSend_position(a2), 1}];

        [a2 setPosition:objc_msgSend_position(a2) + 1];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v36 & 0x7F) << v5;
      if ((v36 & 0x80) == 0)
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

    v13 = v12 >> 3;
    if ((v12 >> 3) == 3)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 12) |= 4u;
      while (1)
      {
        v37 = 0;
        v31 = objc_msgSend_position(a2) + 1;
        if (v31 >= objc_msgSend_position(a2) && (v32 = objc_msgSend_position(a2) + 1, v32 <= [a2 length]))
        {
          v33 = [a2 data];
          [v33 getBytes:&v37 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v37 & 0x7F) << v28;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v34 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

LABEL_57:
      *(a1 + 8) = v34;
    }

    else if (v13 == 2)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 12) |= 2u;
      while (1)
      {
        v38 = 0;
        v24 = objc_msgSend_position(a2) + 1;
        if (v24 >= objc_msgSend_position(a2) && (v25 = objc_msgSend_position(a2) + 1, v25 <= [a2 length]))
        {
          v26 = [a2 data];
          [v26 getBytes:&v38 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v38 & 0x7F) << v21;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_53;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_53:
      *(a1 + 4) = v27;
    }

    else if (v13 == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 12) |= 1u;
      while (1)
      {
        v39 = 0;
        v17 = objc_msgSend_position(a2) + 1;
        if (v17 >= objc_msgSend_position(a2) && (v18 = objc_msgSend_position(a2) + 1, v18 <= [a2 length]))
        {
          v19 = [a2 data];
          [v19 getBytes:&v39 range:{objc_msgSend_position(a2), 1}];

          [a2 setPosition:objc_msgSend_position(a2) + 1];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v39 & 0x7F) << v14;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_61:
      *a1 = -(v20 & 1) ^ (v20 >> 1);
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

uint64_t GEOVisualLaneGuidanceIsValid(void *a1)
{
  v22 = objc_msgSend_position(a1);
  v23 = [a1 length];
  while (1)
  {
LABEL_2:
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      goto LABEL_45;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v20) = 0;
      v6 = objc_msgSend_position(a1, v20) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v20 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v20 & 0x7F) << v3;
      if ((v20 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
    {
LABEL_45:
      v18 = [a1 hasError] ^ 1;
      PBReaderRecallMark();
      return v18;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
LABEL_34:
      if (v11 != 2)
      {
        goto LABEL_46;
      }

      v20 = 0;
      v21 = 0;
      if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
      {
        goto LABEL_46;
      }

LABEL_43:
      PBReaderRecallMark();
    }

    else if (v12 == 4)
    {
      if ((v10 & 7) != 0)
      {
        goto LABEL_46;
      }

      v13 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v14 = objc_msgSend_position(a1, v20) + 1;
        if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
        {
          v16 = [a1 data];
          [v16 getBytes:&v20 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        if (v13++ > 8)
        {
          goto LABEL_2;
        }
      }

      [a1 hasError];
    }

    else
    {
LABEL_38:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  if (v12 != 1)
  {
    if (v12 != 2)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v11 == 2)
  {
    v20 = 0;
    v21 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOLaneInfoIsValid(a1))
      {
        goto LABEL_43;
      }
    }
  }

LABEL_46:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOGenericCombinationsIsValid(void *a1)
{
  v13[2] = objc_msgSend_position(a1);
  v13[3] = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v13[0]) = 0;
      v6 = objc_msgSend_position(a1, v13[0]) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:v13 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v13[0] & 0x7F) << v3;
      if ((v13[0] & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
    {
      break;
    }

    if ((v10 >> 3) == 2)
    {
      if ((v10 & 7) != 2 || (v13[0] = 0, v13[1] = 0, !PBReaderPlaceMark()) || !GEOGenericSubstitutesIsValid(a1))
      {
LABEL_24:
        PBReaderRecallMark();
        return 0;
      }

      PBReaderRecallMark();
    }

    else if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v11 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v11;
}

uint64_t GEORoadComplexityIsValid(void *a1)
{
  v23[2] = objc_msgSend_position(a1);
  v23[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_48;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v6 = objc_msgSend_position(a1, v23[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v23[0] & 0x7F) << v3;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_48:
          v21 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v21;
        }

        v11 = v10 >> 3;
        if ((v10 >> 3) != 3)
        {
          break;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_50;
        }

        v17 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v18 = objc_msgSend_position(a1, v23[0]) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
          {
            break;
          }

          v16 = v17++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }

LABEL_47:
        [a1 hasError];
      }

      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_50;
        }

        v12 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v13 = objc_msgSend_position(a1, v23[0]) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v23[0]) & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

      if (v11 == 1)
      {
        break;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v23[0] = 0;
    v23[1] = 0;
    if (!PBReaderPlaceMark() || !GEOAttributeIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_50:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOAttributeIsValid(void *a1)
{
  objc_msgSend_position(a1);
  [a1 length];
  do
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_43;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v22 = 0;
        v6 = objc_msgSend_position(a1) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v22 & 0x7F) << v3;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
      {
LABEL_43:
        v20 = [a1 hasError] ^ 1;
        goto LABEL_44;
      }

      if ((v10 >> 3) != 2)
      {
        break;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_45;
      }

      v16 = 0;
      while (1)
      {
        v22 = 0;
        v17 = objc_msgSend_position(a1) + 1;
        if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
        {
          v19 = [a1 data];
          [v19 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          break;
        }

        v15 = v16++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }

LABEL_42:
      [a1 hasError];
    }

    if ((v10 >> 3) == 1)
    {
      if ((v10 & 7) != 0)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        v22 = 0;
        v12 = objc_msgSend_position(a1) + 1;
        if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
        {
          v14 = [a1 data];
          [v14 getBytes:&v22 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_42;
        }

        v15 = v11++ > 8;
        if (v15)
        {
          goto LABEL_2;
        }
      }
    }
  }

  while ((PBReaderSkipValueWithTag() & 1) != 0);
LABEL_45:
  v20 = 0;
LABEL_44:
  PBReaderRecallMark();
  return v20;
}

uint64_t GEORoutePlanningInfoIsValid(void *a1)
{
  v17 = objc_msgSend_position(a1);
  v18 = [a1 length];
  while (1)
  {
    while (1)
    {
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_55;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v15) = 0;
        v6 = objc_msgSend_position(a1, v15) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v15 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v15 & 0x7F) << v3;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
      {
LABEL_55:
        v13 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v13;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        break;
      }

      if (v12 > 8)
      {
        if (v12 != 9 && v12 != 10 && v12 != 11)
        {
          goto LABEL_35;
        }

LABEL_39:
        if (v11 != 2)
        {
          goto LABEL_56;
        }

        v15 = 0;
        v16 = 0;
        if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (v12 == 6 || v12 == 7)
      {
        if (v11 != 2)
        {
          goto LABEL_56;
        }

        v15 = 0;
        v16 = 0;
        if (!PBReaderPlaceMark() || !GEOPBTransitArtworkIsValid(a1))
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (v12 == 8)
      {
        if (v11 != 2)
        {
          goto LABEL_56;
        }

        v15 = 0;
        v16 = 0;
        if (!PBReaderPlaceMark() || !GEOLabelActionIsValid(a1))
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

LABEL_35:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    if (v12 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      goto LABEL_39;
    }

    if (v12 != 4)
    {
      if (v12 != 5)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    if (v11 != 2)
    {
      goto LABEL_56;
    }

    v15 = 0;
    v16 = 0;
    if (!PBReaderPlaceMark() || !GEOAdvisoriesInfoIsValid(a1))
    {
      goto LABEL_56;
    }

LABEL_54:
    PBReaderRecallMark();
  }

  if (v12 != 1)
  {
    if (v12 != 2)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (v11 == 2)
  {
    v15 = 0;
    v16 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEORouteInformationIsValid(a1))
      {
        goto LABEL_54;
      }
    }
  }

LABEL_56:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOAdvisoriesInfoIsValid(void *a1)
{
  v19 = objc_msgSend_position(a1);
  v20 = [a1 length];
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v17) = 0;
      v6 = objc_msgSend_position(a1, v17) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v17 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v17 & 0x7F) << v3;
      if ((v17 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      if (v12 != 4 && v12 != 5 && v12 != 6)
      {
        goto LABEL_30;
      }

LABEL_26:
      if (v11 != 2)
      {
        goto LABEL_35;
      }

      v17 = 0;
      v18 = 0;
      if (!PBReaderPlaceMark() || !GEOAdvisoryNoticeIsValid(a1, v13))
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    switch(v12)
    {
      case 1:
        goto LABEL_26;
      case 2:
        if (v11 != 2 || (v17 = 0, v18 = 0, !PBReaderPlaceMark()) || !GEOClickableAdvisoryIsValid(a1, v14))
        {
LABEL_35:
          PBReaderRecallMark();
          return 0;
        }

LABEL_29:
        PBReaderRecallMark();
        break;
      case 3:
        goto LABEL_26;
      default:
LABEL_30:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_35;
        }

        break;
    }
  }

  v15 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v15;
}

uint64_t GEOPBTransitArtworkIsValid(void *a1)
{
  v32 = objc_msgSend_position(a1);
  v33 = [a1 length];
LABEL_2:
  while (1)
  {
    v2 = objc_msgSend_position(a1);
    if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
    {
      break;
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      LOBYTE(v30) = 0;
      v6 = objc_msgSend_position(a1, v30) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v30 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v30 & 0x7F) << v3;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v3 += 7;
      if (v4++ >= 9)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
    if ([a1 hasError])
    {
      break;
    }

    v11 = v10 & 7;
    if (v11 == 4)
    {
      break;
    }

    v12 = v10 >> 3;
    if ((v10 >> 3) <= 11)
    {
      if (v12 > 9)
      {
        if (v12 == 10)
        {
          goto LABEL_58;
        }

        if (v12 != 11)
        {
          goto LABEL_74;
        }

        if (v11 != 2 || (v30 = 0, v31 = 0, !PBReaderPlaceMark()) || !GEOPBTransitIconIsValid(a1))
        {
LABEL_75:
          PBReaderRecallMark();
          return 0;
        }

LABEL_61:
        PBReaderRecallMark();
      }

      else
      {
        if (v12 == 1)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_75;
          }

          v24 = 0;
          while (1)
          {
            LOBYTE(v30) = 0;
            v25 = objc_msgSend_position(a1, v30) + 1;
            if (v25 >= objc_msgSend_position(a1) && (v26 = objc_msgSend_position(a1) + 1, v26 <= [a1 length]))
            {
              v27 = [a1 data];
              [v27 getBytes:&v30 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v30 & 0x80000000) == 0)
            {
              break;
            }

            v18 = v24++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }
        }

        else
        {
          if (v12 != 2)
          {
            goto LABEL_74;
          }

          if ((v10 & 7) != 0)
          {
            goto LABEL_75;
          }

          v14 = 0;
          while (1)
          {
            LOBYTE(v30) = 0;
            v15 = objc_msgSend_position(a1, v30) + 1;
            if (v15 >= objc_msgSend_position(a1) && (v16 = objc_msgSend_position(a1) + 1, v16 <= [a1 length]))
            {
              v17 = [a1 data];
              [v17 getBytes:&v30 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v30 & 0x80000000) == 0)
            {
              break;
            }

            v18 = v14++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_72:
        [a1 hasError];
      }
    }

    else
    {
      if (v12 <= 13)
      {
        if (v12 != 12)
        {
          if (v12 != 13)
          {
            goto LABEL_74;
          }

          if ((v10 & 7) != 0)
          {
            goto LABEL_75;
          }

          v19 = 0;
          while (1)
          {
            LOBYTE(v30) = 0;
            v20 = objc_msgSend_position(a1, v30) + 1;
            if (v20 >= objc_msgSend_position(a1) && (v21 = objc_msgSend_position(a1) + 1, v21 <= [a1 length]))
            {
              v22 = [a1 data];
              [v22 getBytes:&v30 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v30 & 0x80000000) == 0)
            {
              goto LABEL_72;
            }

            v18 = v19++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_58:
        if (v11 != 2)
        {
          goto LABEL_75;
        }

        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !GEOPBTransitShieldIsValid(a1, v23))
        {
          goto LABEL_75;
        }

        goto LABEL_61;
      }

      if (v12 == 14)
      {
        if (v11 != 2)
        {
          goto LABEL_75;
        }
      }

      else if (v12 == 15 || v12 == 16)
      {
        if (v11 != 2)
        {
          goto LABEL_75;
        }

        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark() || !GEOSFSymbolIsValid(a1, v13))
        {
          goto LABEL_75;
        }

        goto LABEL_61;
      }

LABEL_74:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_75;
      }
    }
  }

  v28 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v28;
}

uint64_t GEOArrivalParametersIsValid(void *a1)
{
  v26 = objc_msgSend_position(a1);
  v27 = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_54;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v6 = objc_msgSend_position(a1, v24) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v24 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v24 & 0x7F) << v3;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v3 += 7;
        if (v4++ >= 9)
        {
          v10 = 0;
          goto LABEL_16;
        }
      }

      v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
      if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
      {
LABEL_54:
        v22 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v22;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      if (v12 == 1)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_56;
        }

        v18 = 0;
        while (1)
        {
          LOBYTE(v24) = 0;
          v19 = objc_msgSend_position(a1, v24) + 1;
          if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
          {
            v21 = [a1 data];
            [v21 getBytes:&v24 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          v17 = v18++ > 8;
          if (v17)
          {
            goto LABEL_2;
          }
        }
      }

      if (v12 == 2)
      {
        if (v11 != 2)
        {
          goto LABEL_56;
        }

        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !GEOArrivalPointIsValid(a1))
        {
          goto LABEL_56;
        }

LABEL_52:
        PBReaderRecallMark();
      }

      else
      {
LABEL_37:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 != 5)
    {
      goto LABEL_37;
    }

    if ((v10 & 7) != 0)
    {
      goto LABEL_56;
    }

    v13 = 0;
    while (1)
    {
      LOBYTE(v24) = 0;
      v14 = objc_msgSend_position(a1, v24) + 1;
      if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
      {
        v16 = [a1 data];
        [v16 getBytes:&v24 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      if ((v24 & 0x80000000) == 0)
      {
        break;
      }

      v17 = v13++ > 8;
      if (v17)
      {
        goto LABEL_2;
      }
    }

LABEL_53:
    [a1 hasError];
  }

  if (v11 == 2)
  {
    v24 = 0;
    v25 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOArrivalRegionIsValid(a1))
      {
        goto LABEL_52;
      }
    }
  }

LABEL_56:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOArrivalRegionIsValid(void *a1)
{
  v27[2] = objc_msgSend_position(a1);
  v27[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_60;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v6 = objc_msgSend_position(a1, v27[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v27[0] & 0x7F) << v3;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_60:
          v25 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v25;
        }

        v11 = v10 >> 3;
        if ((v10 >> 3) <= 2)
        {
          break;
        }

        if (v11 == 3)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_62;
          }

          v21 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v22 = objc_msgSend_position(a1, v27[0]) + 1;
            if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
            {
              v24 = [a1 data];
              [v24 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
            {
              break;
            }

            v16 = v21++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

        else
        {
          if (v11 != 4)
          {
            goto LABEL_43;
          }

          if ((v10 & 7) != 0)
          {
            goto LABEL_62;
          }

          v17 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v18 = objc_msgSend_position(a1, v27[0]) + 1;
            if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
            {
              v20 = [a1 data];
              [v20 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
            {
              break;
            }

            v16 = v17++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_59:
        [a1 hasError];
      }

      if (v11 == 1)
      {
        break;
      }

      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_62;
        }

        v12 = 0;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v13 = objc_msgSend_position(a1, v27[0]) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v27[0]) & 0x80000000) == 0)
          {
            goto LABEL_59;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_43:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v27[0] = 0;
    v27[1] = 0;
    if (!PBReaderPlaceMark() || !GEOMapRegionIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_62:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOTrafficSignalIsValid(void *a1)
{
  v24[2] = objc_msgSend_position(a1);
  v24[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_52;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v6 = objc_msgSend_position(a1, v24[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v24 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v24[0] & 0x7F) << v3;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
        {
LABEL_52:
          v22 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v22;
        }

        v12 = v10 >> 3;
        if ((v10 >> 3) > 2)
        {
          break;
        }

        if (v12 == 1)
        {
          if (v11 != 2)
          {
            goto LABEL_54;
          }
        }

        else if (v12 == 2)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_54;
          }

          v13 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v14 = objc_msgSend_position(a1, v24[0]) + 1;
            if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
            {
              v16 = [a1 data];
              [v16 getBytes:v24 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v24[0]) & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            v17 = v13++ > 8;
            if (v17)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_45:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      if (v12 == 3)
      {
        break;
      }

      if (v12 != 4)
      {
        goto LABEL_45;
      }

      if ((v10 & 7) != 0)
      {
        goto LABEL_54;
      }

      v18 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v19 = objc_msgSend_position(a1, v24[0]) + 1;
        if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
        {
          v21 = [a1 data];
          [v21 getBytes:v24 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((SLOBYTE(v24[0]) & 0x80000000) == 0)
        {
          break;
        }

        v17 = v18++ > 8;
        if (v17)
        {
          goto LABEL_2;
        }
      }

LABEL_51:
      [a1 hasError];
    }

    if (v11 != 2)
    {
      break;
    }

    v24[0] = 0;
    v24[1] = 0;
    if (!PBReaderPlaceMark() || !GEOLatLngIsValid(a1))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_54:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEORestrictionZoneInfoIsValid(void *a1)
{
  v28[2] = objc_msgSend_position(a1);
  v28[3] = [a1 length];
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_2:
        v2 = objc_msgSend_position(a1);
        if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
        {
          goto LABEL_60;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v6 = objc_msgSend_position(a1, v28[0]) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:v28 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v28[0] & 0x7F) << v3;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v3 += 7;
          if (v4++ >= 9)
          {
            v10 = 0;
            goto LABEL_16;
          }
        }

        v10 = [a1 hasError] ? 0 : v5;
LABEL_16:
        if (([a1 hasError] & 1) != 0 || (v10 & 7) == 4)
        {
LABEL_60:
          v26 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v26;
        }

        v11 = v10 >> 3;
        if ((v10 >> 3) <= 2)
        {
          break;
        }

        if (v11 == 3)
        {
          if ((v10 & 7) != 0)
          {
            goto LABEL_62;
          }

          v22 = 0;
          while (1)
          {
            LOBYTE(v28[0]) = 0;
            v23 = objc_msgSend_position(a1, v28[0]) + 1;
            if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
            {
              v25 = [a1 data];
              [v25 getBytes:v28 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v28[0]) & 0x80000000) == 0)
            {
              break;
            }

            v16 = v22++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

        else
        {
          if (v11 != 4)
          {
            goto LABEL_43;
          }

          if ((v10 & 7) != 0)
          {
            goto LABEL_62;
          }

          v17 = 0;
          while (1)
          {
            LOBYTE(v28[0]) = 0;
            v18 = objc_msgSend_position(a1, v28[0]) + 1;
            if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
            {
              v20 = [a1 data];
              [v20 getBytes:v28 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((SLOBYTE(v28[0]) & 0x80000000) == 0)
            {
              break;
            }

            v16 = v17++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
        }

LABEL_59:
        [a1 hasError];
      }

      if (v11 == 1)
      {
        break;
      }

      if (v11 == 2)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_62;
        }

        v12 = 0;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v13 = objc_msgSend_position(a1, v28[0]) + 1;
          if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
          {
            v15 = [a1 data];
            [v15 getBytes:v28 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((SLOBYTE(v28[0]) & 0x80000000) == 0)
          {
            goto LABEL_59;
          }

          v16 = v12++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

LABEL_43:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if ((v10 & 7) != 2)
    {
      break;
    }

    v28[0] = 0;
    v28[1] = 0;
    if (!PBReaderPlaceMark() || !GEORestrictedZoneIdIsValid(a1, v21))
    {
      break;
    }

    PBReaderRecallMark();
  }

LABEL_62:
  PBReaderRecallMark();
  return 0;
}

void *GEOETATrafficUpdateResponseReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 160));
  [v3 setLength:*(a1 + 156)];
  [v3 seekToOffset:*(a1 + 152)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 172);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBF040), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBF050), v13)), vandq_s8(vshlq_u32(v12, xmmword_187FBF060), v13))) + ((v11 >> 10) & 1) + ((v11 >> 6) & 1) + ((v11 >> 2) & 1);
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

  v16 = v14 > 0xA;
  v62 = v9;
  v63 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  v64 = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v65 = (v18 == 0) | v17;
  v66 = v17;
  while (2)
  {
    v19 = objc_msgSend_position(v3);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_166:
      v28 = 1;
      goto LABEL_169;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v67) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v67 & 0x7F) << v20;
      if ((v67 & 0x80) == 0)
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
      goto LABEL_169;
    }

    v29 = v22 >> 3;
    v30 = v66;
    if ((v65 & 1) == 0)
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

    switch(v29)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_137;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 172) |= 2u;
        while (1)
        {
          LOBYTE(v67) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v67 & 0x7F) << v35;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v26 = v36++ >= 9;
          if (v26)
          {
            v41 = 0;
LABEL_147:
            v55 = 168;
            goto LABEL_148;
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

        goto LABEL_147;
      case 2:
        if (!v30 || (*(a1 + 173) & 0x10) != 0)
        {
          goto LABEL_137;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOETARoute);
        if (!GEOETARouteReadAllFrom(v42, v3, v62 & 1))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        [(GEOETATrafficUpdateResponse *)a1 _addNoFlagsRoute:v42];
        goto LABEL_130;
      case 3:
        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 173) & 0x20) == 0)
        {
          v50 = PBReaderReadData();
          v51 = 120;
          goto LABEL_117;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_168;
        }

        v56 = (*(a1 + 172) << 18) >> 31;
        goto LABEL_165;
      case 4:
        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 172) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_168;
          }

          v56 = (*(a1 + 172) << 24) >> 31;
          goto LABEL_165;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOPDDatasetABStatus);
        if (!GEOPDDatasetABStatusReadAllFrom(v42, v3))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        v43 = 72;
        goto LABEL_123;
      case 5:
        if (!v30 || (*(a1 + 172) & 0x20) != 0)
        {
          goto LABEL_137;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOTrafficCamera);
        if (!GEOTrafficCameraReadAllFrom(v42, v3, v62 & 1))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        [(GEOETATrafficUpdateResponse *)a1 _addNoFlagsCamera:v42];
        goto LABEL_130;
      case 6:
        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 173) & 8) == 0)
        {
          v50 = PBReaderReadData();
          v51 = 104;
          goto LABEL_117;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_168;
        }

        v56 = (*(a1 + 172) << 20) >> 31;
        goto LABEL_165;
      case 7:
        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 173) & 1) == 0)
        {
          v50 = PBReaderReadString();
          v51 = 80;
LABEL_117:
          v52 = *(a1 + v51);
          *(a1 + v51) = v50;
          goto LABEL_124;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_168;
        }

        v56 = (*(a1 + 172) << 23) >> 31;
        goto LABEL_165;
      case 8:
        if (!v30 || (*(a1 + 173) & 0x40) != 0)
        {
          goto LABEL_137;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOTrafficSignal);
        if (!GEOTrafficSignalReadAllFrom(v42, v3, v62 & 1))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        [(GEOETATrafficUpdateResponse *)a1 _addNoFlagsTrafficSignal:v42];
        goto LABEL_130;
      case 9:
        if (!v30 || (*(a1 + 172) & 0x10) != 0)
        {
          goto LABEL_137;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOArrivalParameters);
        if (!GEOArrivalParametersReadAllFrom(v42, v3, v62 & 1))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        [(GEOETATrafficUpdateResponse *)a1 _addNoFlagsArrivalParameters:v42];
LABEL_130:

        goto LABEL_138;
      case 10:
        if (!v30 || (*(a1 + 172) & 8) != 0)
        {
          goto LABEL_137;
        }

        v67 = 0;
        v68 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_168;
        }

        [(GEOETATrafficUpdateResponse *)a1 _reserveProblemDetails:?];
        if ((GEOProblemDetailReadAllFrom(*(a1 + 24) + 12 * *(a1 + 32), v3) & 1) == 0)
        {
          goto LABEL_168;
        }

        PBReaderRecallMark();
        ++*(a1 + 32);
        goto LABEL_138;
      case 11:
        if (!v30)
        {
          goto LABEL_137;
        }

        if (*(a1 + 174))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_168;
          }

          v56 = (*(a1 + 172) << 15) >> 31;
LABEL_165:
          v6 += v56;
          goto LABEL_138;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOETATrafficUpdateWaypointRoute);
        if (GEOETATrafficUpdateWaypointRouteReadAllFrom(v42, v3, v62 & 1))
        {
          PBReaderRecallMark();
          v43 = 144;
LABEL_123:
          v52 = *(a1 + v43);
          *(a1 + v43) = v42;
LABEL_124:

          --v6;
LABEL_138:
          if (!(v64 & 1 | (v6 != 0)))
          {
            goto LABEL_166;
          }

          continue;
        }

LABEL_167:

LABEL_168:
        v28 = 0;
LABEL_169:
        if (v63)
        {
LABEL_170:
          *(a1 + 172) |= 4u;
        }

        if (v66 || (v28 & 1) == 0)
        {
          *(a1 + 172) |= 0x1000u;
          *(a1 + 172) |= 0x10000u;
          *(a1 + 172) |= 0x2000u;
          *(a1 + 172) |= 0x80u;
          *(a1 + 172) |= 0x20u;
          *(a1 + 172) |= 0x800u;
          *(a1 + 172) |= 0x8000u;
          *(a1 + 172) |= 0x100u;
          *(a1 + 172) |= 0x4000u;
          *(a1 + 172) |= 0x10u;
          *(a1 + 172) |= 8u;
          *(a1 + 172) |= 0x200u;
          *(a1 + 172) |= 0x400u;
          *(a1 + 172) |= 0x40u;
        }

        else if (v18)
        {
          while (1)
          {
            v59 = *v18++;
            v58 = v59;
            v57 = 4096;
            switch(v59)
            {
              case 0:
                goto LABEL_191;
              case 1:
              case 12:
                continue;
              case 2:
                goto LABEL_189;
              case 3:
                v57 = 0x2000;
                goto LABEL_189;
              case 4:
                v57 = 128;
                goto LABEL_189;
              case 5:
                v57 = 32;
                goto LABEL_189;
              case 6:
                v57 = 2048;
                goto LABEL_189;
              case 7:
                v57 = 256;
                goto LABEL_189;
              case 8:
                v57 = 0x4000;
                goto LABEL_189;
              case 9:
                v57 = 16;
                goto LABEL_189;
              case 10:
                v57 = 8;
                goto LABEL_189;
              case 11:
                v57 = 0x10000;
                goto LABEL_189;
              case 13:
                v57 = 512;
                goto LABEL_189;
              case 14:
                v57 = 0x8000;
                goto LABEL_189;
              case 15:
                v57 = 1024;
                goto LABEL_189;
              default:
                if (v58 != 1051)
                {
                  continue;
                }

                v57 = 64;
LABEL_189:
                *(a1 + 172) |= v57;
                break;
            }
          }
        }

LABEL_191:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v66)
        {
          v60 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_137;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 172) |= 1u;
        while (1)
        {
          LOBYTE(v67) = 0;
          v47 = objc_msgSend_position(v3) + 1;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
          {
            v49 = [v3 data];
            [v49 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v46 |= (v67 & 0x7F) << v44;
          if ((v67 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v26 = v45++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_143;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v46;
        }

LABEL_143:
        v55 = 164;
LABEL_148:
        *(a1 + v55) = v41;
        goto LABEL_138;
      case 13:
        if (!v30 || (*(a1 + 173) & 2) != 0)
        {
          goto LABEL_137;
        }

        v42 = PBReaderReadString();
        if (v42)
        {
          [(GEOETATrafficUpdateResponse *)a1 _addNoFlagsInternalError:v42];
        }

        goto LABEL_130;
      case 14:
        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 173) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_168;
          }

          v56 = (*(a1 + 172) << 16) >> 31;
          goto LABEL_165;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOUUID);
        if (!GEOUUIDReadAllFrom(v42, v3))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        v43 = 136;
        goto LABEL_123;
      case 15:
        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 173) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_168;
          }

          v56 = (*(a1 + 172) << 21) >> 31;
          goto LABEL_165;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOCommonResponseAttributes);
        if (!GEOCommonResponseAttributesReadAllFrom(v42, v3))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        v43 = 96;
        goto LABEL_123;
      default:
        if (v29 != 1051)
        {
          if ((v63 & 1) == 0 || (*(a1 + 172) & 4) != 0)
          {
LABEL_137:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_168;
            }

            goto LABEL_138;
          }

          if (!*(a1 + 16))
          {
            v53 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v54 = *(a1 + 16);
            *(a1 + 16) = v53;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_170;
          }

          goto LABEL_138;
        }

        if (!v30)
        {
          goto LABEL_137;
        }

        if ((*(a1 + 172) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_168;
          }

          v56 = (*(a1 + 172) << 25) >> 31;
          goto LABEL_165;
        }

        v67 = 0;
        v68 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_168;
        }

        v42 = objc_alloc_init(GEOClientMetrics);
        if (!GEOClientMetricsReadAllFrom(v42, v3, v62 & 1))
        {
          goto LABEL_167;
        }

        PBReaderRecallMark();
        v43 = 64;
        goto LABEL_123;
    }
  }
}