void *GEOETAResponseReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 116))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETAResponseReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 120));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 112) = objc_msgSend_position(v8);
  *(a1 + 116) = [v8 length];
  if (a3)
  {
    v9 = &GEOETAResponseReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETAResponseReadAllFrom_initialTag;
  }

  Specified = GEOETAResponseReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOETAResponseCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 120));
  return Specified;
}

void *GEOETAResultReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETAResultReadAllFrom can only be called once per object"];
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
    v9 = &GEOETAResultReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETAResultReadAllFrom_initialTag;
  }

  Specified = GEOETAResultReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOETAResultCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOArrivalParametersReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOArrivalParametersReadAllFrom can only be called once per object"];
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
    v9 = &GEOArrivalParametersReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOArrivalParametersReadAllFrom_initialTag;
  }

  Specified = GEOArrivalParametersReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOArrivalParametersCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOArrivalParametersReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 60) >> 4) & 1) + ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 2) & 1);
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
  LODWORD(v56) = v13 & ~v10 | v8;
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
    goto LABEL_99;
  }

  HIDWORD(v56) = v16 | v8 | v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_97:
      v26 = 1;
      goto LABEL_99;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v57) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v57 & 0x7F) << v18;
      if ((v57 & 0x80) == 0)
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
      goto LABEL_99;
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

    if (v27 <= 3)
    {
      if (v27 != 1)
      {
        if (v27 == 2)
        {
          if (v28 && (*(a1 + 60) & 0x10) == 0)
          {
            v57 = 0;
            v58 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_118;
            }

            v33 = objc_alloc_init(GEOArrivalPoint);
            if (!GEOArrivalPointReadAllFrom(v33, v3))
            {
              goto LABEL_117;
            }

            PBReaderRecallMark();
            [(GEOArrivalParameters *)a1 _addNoFlagsArrivalPoints:v33];
LABEL_83:

LABEL_95:
            if ((v56 & 0x100000000) == 0)
            {
              goto LABEL_97;
            }

LABEL_96:
            v50 = objc_msgSend_position(v3);
            if (v50 >= [v3 length])
            {
              goto LABEL_97;
            }

            continue;
          }

LABEL_84:
          v26 = PBReaderSkipValueWithTag();
          if ((v26 & HIDWORD(v56) & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_96;
        }

LABEL_62:
        if ((v56 & 1) != 0 && (*(a1 + 60) & 4) == 0)
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
            goto LABEL_100;
          }

          goto LABEL_95;
        }

        goto LABEL_84;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_84;
      }

      v43 = 0;
      v44 = 0;
      v45 = 0;
      *(a1 + 60) |= 2u;
      while (1)
      {
        LOBYTE(v57) = 0;
        v46 = objc_msgSend_position(v3) + 1;
        if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
        {
          v48 = [v3 data];
          [v48 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v45 |= (v57 & 0x7F) << v43;
        if ((v57 & 0x80) == 0)
        {
          break;
        }

        v43 += 7;
        v24 = v44++ >= 9;
        if (v24)
        {
          v40 = 0;
          goto LABEL_93;
        }
      }

      if ([v3 hasError])
      {
        v40 = 0;
      }

      else
      {
        v40 = v45;
      }

LABEL_93:
      v49 = 56;
LABEL_94:
      *(a1 + v49) = v40;
      goto LABEL_95;
    }

    break;
  }

  if (v27 != 4)
  {
    if (v27 != 5)
    {
      goto LABEL_62;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_84;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    *(a1 + 60) |= 1u;
    while (1)
    {
      LOBYTE(v57) = 0;
      v37 = objc_msgSend_position(v3) + 1;
      if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
      {
        v39 = [v3 data];
        [v39 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v36 |= (v57 & 0x7F) << v34;
      if ((v57 & 0x80) == 0)
      {
        break;
      }

      v34 += 7;
      v24 = v35++ >= 9;
      if (v24)
      {
        v40 = 0;
        goto LABEL_89;
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

LABEL_89:
    v49 = 52;
    goto LABEL_94;
  }

  if (!v28 || (*(a1 + 60) & 8) != 0)
  {
    goto LABEL_84;
  }

  v57 = 0;
  v58 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_118;
  }

  v33 = objc_alloc_init(GEOArrivalRegion);
  if (GEOArrivalRegionReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOArrivalParameters *)a1 _addNoFlagsArrivalMapRegions:v33];
    goto LABEL_83;
  }

LABEL_117:

LABEL_118:
  v26 = 0;
LABEL_99:
  if (v56)
  {
LABEL_100:
    *(a1 + 60) |= 4u;
  }

  if (v14 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 60) |= 0x10u;
    *(a1 + 60) |= 8u;
    goto LABEL_111;
  }

  if (v15)
  {
    while (1)
    {
      v52 = *v15++;
      v51 = v52;
      if (v52 == 2)
      {
        break;
      }

      if (v51 == 4)
      {
        v53 = 8;
LABEL_110:
        *(a1 + 60) |= v53;
        continue;
      }

      if (!v51)
      {
        goto LABEL_111;
      }
    }

    v53 = 16;
    goto LABEL_110;
  }

LABEL_111:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_115:
    v54 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_115;
    }
  }

  return v3;
}

void *GEODrivingWalkingInstructionReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 84)), 0xFFFFFFFDFFFEFFFBLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 84) & 0x10) != 0) + (*(a1 + 84) & 1) + ((*(a1 + 84) & 0x40) != 0));
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
LABEL_97:
      v26 = 1;
      goto LABEL_100;
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
      goto LABEL_100;
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

    if (v27 > 3)
    {
      break;
    }

    switch(v27)
    {
      case 1:
        if (!v28)
        {
          goto LABEL_87;
        }

        if ((*(a1 + 84) & 0x20) == 0)
        {
          v47 = 0;
          v48 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_99;
          }

          v33 = objc_alloc_init(GEOFormattedString);
          if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_98;
          }

          PBReaderRecallMark();
          v34 = 56;
          goto LABEL_86;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_99;
        }

        v38 = 4 * *(a1 + 84);
        goto LABEL_96;
      case 2:
        if (!v28 || (*(a1 + 84) & 0x10) != 0)
        {
          goto LABEL_87;
        }

        v47 = 0;
        v48 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_99;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_98;
        }

        PBReaderRecallMark();
        [(GEODrivingWalkingInstruction *)a1 _addNoFlagsNormalCommand:v33];
        goto LABEL_80;
      case 3:
        if (!v28 || (*(a1 + 84) & 4) != 0)
        {
          goto LABEL_87;
        }

        v47 = 0;
        v48 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_99;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_98;
        }

        PBReaderRecallMark();
        [(GEODrivingWalkingInstruction *)a1 _addNoFlagsContinueCommand:v33];
LABEL_80:

        goto LABEL_88;
    }

LABEL_69:
    if (v44 & 1) == 0 || (*(a1 + 84))
    {
      goto LABEL_87;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_101;
    }

LABEL_88:
    if (!(BYTE4(v44) & 1 | (v6 != 0)))
    {
      goto LABEL_97;
    }
  }

  if (v27 == 4)
  {
    if (!v28 || (*(a1 + 84) & 8) != 0)
    {
LABEL_87:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_88;
    }

    v47 = 0;
    v48 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_99;
    }

    v33 = objc_alloc_init(GEOFormattedString);
    if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_98;
    }

    PBReaderRecallMark();
    [(GEODrivingWalkingInstruction *)a1 _addNoFlagsMergeCommand:v33];
    goto LABEL_80;
  }

  if (v27 != 6)
  {
    if (v27 == 7)
    {
      if (!v28)
      {
        goto LABEL_87;
      }

      if ((*(a1 + 84) & 0x40) == 0)
      {
        v47 = 0;
        v48 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_99;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_98;
        }

        PBReaderRecallMark();
        v34 = 64;
        goto LABEL_86;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_99;
      }

      v38 = 2 * *(a1 + 84);
LABEL_96:
      v6 += v38 >> 7;
      goto LABEL_88;
    }

    goto LABEL_69;
  }

  if (!v28)
  {
    goto LABEL_87;
  }

  if ((*(a1 + 84) & 2) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_99;
    }

    v38 = *(a1 + 84) << 6;
    goto LABEL_96;
  }

  v47 = 0;
  v48 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_99;
  }

  v33 = objc_alloc_init(GEOPBTransitArtwork);
  if (GEOPBTransitArtworkReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 24;
LABEL_86:
    v37 = *(a1 + v34);
    *(a1 + v34) = v33;

    --v6;
    goto LABEL_88;
  }

LABEL_98:

LABEL_99:
  v26 = 0;
LABEL_100:
  if ((v44 & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_101:
  *(a1 + 84) |= 1u;
LABEL_102:
  if (v46 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 84) |= 0x20u;
    *(a1 + 84) |= 0x10u;
    *(a1 + 84) |= 4u;
    *(a1 + 84) |= 8u;
    *(a1 + 84) |= 2u;
    *(a1 + 84) |= 0x40u;
    goto LABEL_121;
  }

  if (v16)
  {
    while (1)
    {
LABEL_105:
      v40 = *v16++;
      v39 = v40;
      if (v40 > 3)
      {
        switch(v39)
        {
          case 4:
            v41 = 8;
            break;
          case 6:
            v41 = 2;
            break;
          case 7:
            v41 = 64;
            break;
          default:
            continue;
        }

        goto LABEL_119;
      }

      if (v39 > 1)
      {
        break;
      }

      if (v39 == 1)
      {
        v41 = 32;
LABEL_119:
        *(a1 + 84) |= v41;
        continue;
      }

      if (!v39)
      {
        goto LABEL_121;
      }
    }

    if (v39 == 2)
    {
      v41 = 16;
    }

    else
    {
      if (v39 != 3)
      {
        goto LABEL_105;
      }

      v41 = 4;
    }

    goto LABEL_119;
  }

LABEL_121:
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

uint64_t GEOETAResponseIsValid(void *a1)
{
  v25 = objc_msgSend_position(a1);
  v26 = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_72;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        LOBYTE(v23) = 0;
        v6 = objc_msgSend_position(a1, v23) + 1;
        if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
        {
          v8 = [a1 data];
          [v8 getBytes:&v23 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        v5 |= (v23 & 0x7F) << v3;
        if ((v23 & 0x80) == 0)
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
LABEL_72:
        v21 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v21;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        break;
      }

      if (v12 <= 2)
      {
        if (v12 != 1)
        {
          if (v12 != 2)
          {
            goto LABEL_69;
          }

LABEL_41:
          if (v11 != 2)
          {
            goto LABEL_73;
          }

          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !GEOETAResultIsValid(a1))
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_73;
        }

        v14 = 0;
        while (1)
        {
          LOBYTE(v23) = 0;
          v15 = objc_msgSend_position(a1, v23) + 1;
          if (v15 >= objc_msgSend_position(a1) && (v16 = objc_msgSend_position(a1) + 1, v16 <= [a1 length]))
          {
            v17 = [a1 data];
            [v17 getBytes:&v23 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v23 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_2;
          }
        }

        [a1 hasError];
      }

      else
      {
        switch(v12)
        {
          case 3:
            if (v11 != 2)
            {
              goto LABEL_73;
            }

            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !GEOPlaceSearchResponseIsValid(a1, v19))
            {
              goto LABEL_73;
            }

            break;
          case 4:
            if (v11 != 2)
            {
              goto LABEL_73;
            }

            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !GEOProblemDetailIsValid(a1, v20))
            {
              goto LABEL_73;
            }

            break;
          case 5:
            goto LABEL_41;
          default:
            goto LABEL_69;
        }

LABEL_68:
        PBReaderRecallMark();
      }
    }

    if (v12 <= 7)
    {
      break;
    }

    switch(v12)
    {
      case 8:
        if (v11 != 2)
        {
          goto LABEL_73;
        }

        break;
      case 9:
        if (v11 != 2)
        {
          goto LABEL_73;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !GEOCommonResponseAttributesIsValid(a1))
        {
          goto LABEL_73;
        }

        goto LABEL_68;
      case 0x41B:
        if (v11 != 2)
        {
          goto LABEL_73;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark() || !GEOClientMetricsIsValid(a1, v13))
        {
          goto LABEL_73;
        }

        goto LABEL_68;
    }

LABEL_69:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  if (v12 == 6)
  {
    goto LABEL_41;
  }

  if (v12 != 7)
  {
    goto LABEL_69;
  }

  if (v11 == 2)
  {
    v23 = 0;
    v24 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOPDDatasetABStatusIsValid(a1))
      {
        goto LABEL_68;
      }
    }
  }

LABEL_73:
  PBReaderRecallMark();
  return 0;
}

uint64_t _GEOETAResponseIsDirty(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 120));
  v2 = *(a1 + 128);
  if ((v2 & 0x900) != 0)
  {
    return 1;
  }

  if ((*(a1 + 128) & 0x200) != 0)
  {
    if (GEOPlaceSearchResponseIsDirty(*(a1 + 96)))
    {
      return 1;
    }

    v2 = *(a1 + 128);
  }

  if ((v2 & 4) == 0)
  {
    if ((v2 & 0x80) != 0)
    {
      if (GEOETAResultIsDirty(*(a1 + 80)))
      {
        return 1;
      }

      v2 = *(a1 + 128);
    }

    if ((v2 & 0x478) == 0)
    {
      if ((v2 & 0x100) != 0)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v5 = *(a1 + 88);
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
LABEL_15:
          v9 = 0;
          while (1)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (GEOETAResultIsDirty(*(*(&v16 + 1) + 8 * v9)))
            {
              goto LABEL_33;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
              if (v7)
              {
                goto LABEL_15;
              }

              break;
            }
          }
        }

        v2 = *(a1 + 128);
      }

      if ((v2 & 0x40) == 0)
      {
        return 0;
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = *(a1 + 72);
      v3 = [v5 countByEnumeratingWithState:&v12 objects:v20 count:16];
      if (!v3)
      {
LABEL_34:

        return v3;
      }

      v10 = *v13;
LABEL_26:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v5);
        }

        if (GEOETAResultIsDirty(*(*(&v12 + 1) + 8 * v11)))
        {
          break;
        }

        if (v3 == ++v11)
        {
          v3 = [v5 countByEnumeratingWithState:&v12 objects:v20 count:16];
          if (v3)
          {
            goto LABEL_26;
          }

          goto LABEL_34;
        }
      }

LABEL_33:
      v3 = 1;
      goto LABEL_34;
    }
  }

  return 1;
}

void *GEOETAResultReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (a1 + 76);
  v12 = vld1_dup_s16(v11);
  v13 = vand_s8(vshl_u16(v12, 0xFFFCFFFBFFF9FFFALL), 0x1000100010001);
  v13.i16[0] = vaddv_s16(v13);
  v14 = v13.i32[0];
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

  v16 = v14 > 1;
  v17 = v16 & ~v10 | v8;
  v18 = v10 | v16;
  LODWORD(v72) = v17;
  HIDWORD(v72) = v18 | v8;
  if ((v18 | v7))
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v73 = (v19 == 0) | v18;
  v74 = v18;
  while (1)
  {
    v20 = objc_msgSend_position(v3, v72);
    if (v20 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_135:
      v29 = 1;
      goto LABEL_138;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LOBYTE(v75) = 0;
      v24 = objc_msgSend_position(v3) + 1;
      if (v24 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3) + 1, v25 <= [v3 length]))
      {
        v26 = [v3 data];
        [v26 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v23 |= (v75 & 0x7F) << v21;
      if ((v75 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v27 = v22++ >= 9;
      if (v27)
      {
        v23 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v23 = 0;
    }

LABEL_33:
    v28 = [v3 hasError];
    v29 = 1;
    if ((v28 & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_138;
    }

    v30 = v23 >> 3;
    v31 = v74;
    if ((v73 & 1) == 0)
    {
      v32 = v19;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    if (v30 <= 3)
    {
      switch(v30)
      {
        case 1:
          if ((v7 & 1) == 0)
          {
            goto LABEL_112;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v53 = objc_msgSend_position(v3) + 1;
            if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
            {
              v55 = [v3 data];
              [v55 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v52 |= (v75 & 0x7F) << v50;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v27 = v51++ >= 9;
            if (v27)
            {
              v42 = 0;
              goto LABEL_117;
            }
          }

          if ([v3 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v52;
          }

LABEL_117:
          v65 = 72;
          goto LABEL_130;
        case 2:
          if ((v7 & 1) == 0)
          {
            goto LABEL_112;
          }

          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v62 = objc_msgSend_position(v3) + 1;
            if (v62 >= objc_msgSend_position(v3) && (v63 = objc_msgSend_position(v3) + 1, v63 <= [v3 length]))
            {
              v64 = [v3 data];
              [v64 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v61 |= (v75 & 0x7F) << v59;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v27 = v60++ >= 9;
            if (v27)
            {
              v42 = 0;
              goto LABEL_129;
            }
          }

          if ([v3 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v61;
          }

LABEL_129:
          v65 = 68;
          goto LABEL_130;
        case 3:
          if ((v7 & 1) == 0)
          {
            goto LABEL_112;
          }

          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v46 = objc_msgSend_position(v3) + 1;
            if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
            {
              v48 = [v3 data];
              [v48 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v45 |= (v75 & 0x7F) << v43;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v27 = v44++ >= 9;
            if (v27)
            {
              v42 = 0;
              goto LABEL_125;
            }
          }

          if ([v3 hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v45;
          }

LABEL_125:
          v65 = 64;
          goto LABEL_130;
      }

LABEL_85:
      if ((v72 & 1) == 0 || (*(a1 + 76) & 0x10) != 0)
      {
        goto LABEL_112;
      }

      if (!*(a1 + 16))
      {
        v56 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v57 = *(a1 + 16);
        *(a1 + 16) = v56;
      }

      if (!PBUnknownFieldAdd())
      {
        v29 = 0;
        v71 = &OBJC_IVAR___GEOLogMsgEventRideBookedSession__statusIssue;
        goto LABEL_139;
      }

      goto LABEL_131;
    }

    if (v30 > 5)
    {
      break;
    }

    if (v30 != 4)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_112;
      }

      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 76) |= 1u;
      while (1)
      {
        LOBYTE(v75) = 0;
        v39 = objc_msgSend_position(v3) + 1;
        if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
        {
          v41 = [v3 data];
          [v41 getBytes:&v75 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v38 |= (v75 & 0x7F) << v36;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v27 = v37++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_121;
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

LABEL_121:
      v65 = 60;
LABEL_130:
      *(a1 + v65) = v42;
      goto LABEL_131;
    }

    if (!v31)
    {
      goto LABEL_112;
    }

    if ((*(a1 + 76) & 0x40) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      v6 += *(a1 + 76) << 25 >> 31;
    }

    else
    {
      v75 = 0;
      v76 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_137;
      }

      v49 = objc_alloc_init(GEOPlaceSearchResponse);
      if (!GEOPlaceSearchResponseReadAllFrom(v49, v3, v9 & 1))
      {
        goto LABEL_136;
      }

      PBReaderRecallMark();
      v58 = *(a1 + 32);
      *(a1 + 32) = v49;

      --v6;
    }

LABEL_131:
    if (!(BYTE4(v72) & 1 | (v6 != 0)))
    {
      goto LABEL_135;
    }
  }

  if (v30 != 6)
  {
    if (v30 == 7)
    {
      if (!v31 || (*(a1 + 76) & 0x20) != 0)
      {
        goto LABEL_112;
      }

      v75 = 0;
      v76 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_137;
      }

      v49 = objc_alloc_init(GEOETARouteIncident);
      if (!GEOETARouteIncidentReadAllFrom(v49, v3, v9 & 1))
      {
        goto LABEL_136;
      }

      PBReaderRecallMark();
      [(GEOETAResult *)a1 _addNoFlagsEtaRouteIncident:v49];
      goto LABEL_101;
    }

    goto LABEL_85;
  }

  if (!v31 || (*(a1 + 76) & 0x80) != 0)
  {
LABEL_112:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_131;
  }

  v75 = 0;
  v76 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_137;
  }

  v49 = objc_alloc_init(GEOETAResultByType);
  if (GEOETAResultByTypeReadAllFrom(v49, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOETAResult *)a1 _addNoFlagsSortedETA:v49];
LABEL_101:

    goto LABEL_131;
  }

LABEL_136:

LABEL_137:
  v29 = 0;
LABEL_138:
  v71 = &OBJC_IVAR___GEOLogMsgEventRideBookedSession__statusIssue;
  if ((v72 & 1) == 0)
  {
    goto LABEL_140;
  }

LABEL_139:
  *(a1 + v71[258]) |= 0x10u;
LABEL_140:
  if (v74 & 1 | ((v29 & 1) == 0))
  {
    *(a1 + v71[258]) |= 0x40u;
    *(a1 + v71[258]) |= 0x80u;
    *(a1 + v71[258]) |= 0x20u;
    goto LABEL_152;
  }

  if (v19)
  {
    while (2)
    {
      while (1)
      {
        v67 = *v19++;
        v66 = v67;
        if (v67 > 5)
        {
          break;
        }

        if (v66 == 4)
        {
          v68 = 64;
LABEL_150:
          *(a1 + v71[258]) |= v68;
          continue;
        }

        if (!v66)
        {
          goto LABEL_152;
        }
      }

      if (v66 == 7)
      {
        v68 = 32;
      }

      else
      {
        if (v66 != 6)
        {
          continue;
        }

        v68 = 128;
      }

      goto LABEL_150;
    }
  }

LABEL_152:
  if (v29)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v74)
  {
    v69 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOTimeGapReadAllFrom(uint64_t a1, void *a2)
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
          goto LABEL_65;
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
          goto LABEL_65;
        }

        v14 = v7 >> 3;
        if (v14 == 3)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 28) |= 4u;
          while (1)
          {
            v44 = 0;
            v31 = objc_msgSend_position(v3);
            if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
            {
              v33 = [v3 data];
              [v33 getBytes:&v44 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v30 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v34) = 0;
              goto LABEL_58;
            }
          }

          v34 = (v30 != 0) & ~[v3 hasError];
LABEL_58:
          *(a1 + 24) = v34;
          goto LABEL_64;
        }

        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 28) |= 2u;
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
              goto LABEL_62;
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

LABEL_62:
          v37 = 20;
LABEL_63:
          *(a1 + v37) = v21;
          goto LABEL_64;
        }

        if (!*(a1 + 8))
        {
          v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_66;
        }

LABEL_64:
        v38 = objc_msgSend_position(v3);
        if (v38 >= [v3 length])
        {
          goto LABEL_65;
        }
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v42 = 0;
        v25 = objc_msgSend_position(v3);
        if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
        {
          v27 = [v3 data];
          [v27 getBytes:&v42 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v24 |= (v42 & 0x7F) << v22;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_56;
        }
      }

      if ([v3 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

LABEL_56:
      v37 = 16;
      goto LABEL_63;
    }

LABEL_65:
    v39 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_66:
    v39 = 0;
  }

  objc_sync_exit(v3);

  return v39;
}

void *GEOETAResponseReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 120));
  [v3 setLength:*(a1 + 116)];
  [v3 seekToOffset:*(a1 + 112)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 128);
  v12 = vand_s8(vshl_u16(vdup_n_s16(v11), 0xFFF9FFFEFFF7FFF8), 0x1000100010001);
  v12.i16[0] = vaddv_s16(v12);
  v13 = v12.i32[0] + ((v11 >> 6) & 1);
  v14 = vand_s8(vdup_n_s32(v11), 0xFFFF0000FFFFLL);
  v15.i32[0] = (v11 >> 1) & 1;
  v15.i32[1] = v13;
  v16 = vadd_s32(vadd_s32(vand_s8(vshl_u32(v14, 0xFFFFFFFCFFFFFFFDLL), 0x100000001), vand_s8(vshl_u32(v14, 0xFFFFFFFBFFFFFFF6), 0x100000001)), v15);
  v17 = v16.i32[0] + v16.u16[2];
  while (1)
  {
    v18 = a3[v6];
    if (v18 > -3)
    {
      break;
    }

    if (v18 == -4)
    {
      ++v17;
      v8 = 1;
      goto LABEL_15;
    }

    if (v18 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v17;
LABEL_15:
    ++v6;
  }

  if (v18 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v18 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v18)
  {
    goto LABEL_14;
  }

  v19 = v17 > 6;
  v56 = v9;
  v57 = v19 & ~v10 | v8;
  v20 = v10 | v19;
  v58 = v20 | v8;
  if ((v20 | v7))
  {
    v21 = 0;
  }

  else
  {
    v21 = a3;
  }

  v59 = (v21 == 0) | v20;
  v60 = v20;
  while (1)
  {
    v22 = objc_msgSend_position(v3);
    if (v22 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_135:
      v31 = 1;
      goto LABEL_138;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      LOBYTE(v61) = 0;
      v26 = objc_msgSend_position(v3) + 1;
      if (v26 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3) + 1, v27 <= [v3 length]))
      {
        v28 = [v3 data];
        [v28 getBytes:&v61 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v25 |= (v61 & 0x7F) << v23;
      if ((v61 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v29 = v24++ >= 9;
      if (v29)
      {
        v25 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v25 = 0;
    }

LABEL_33:
    v30 = [v3 hasError];
    v31 = 1;
    if ((v30 & 1) != 0 || (v25 & 7) == 4)
    {
      goto LABEL_138;
    }

    v32 = v25 >> 3;
    v33 = v60;
    if ((v59 & 1) == 0)
    {
      v34 = v21;
      do
      {
        v36 = *v34++;
        v35 = v36;
        v33 = v36 != 0;
        if (v36)
        {
          v37 = v35 == v32;
        }

        else
        {
          v37 = 1;
        }
      }

      while (!v37);
    }

    if (v32 > 5)
    {
      break;
    }

    if (v32 <= 2)
    {
      if (v32 == 1)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_115;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 128) |= 1u;
        while (1)
        {
          LOBYTE(v61) = 0;
          v43 = objc_msgSend_position(v3) + 1;
          if (v43 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3) + 1, v44 <= [v3 length]))
          {
            v45 = [v3 data];
            [v45 getBytes:&v61 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v42 |= (v61 & 0x7F) << v40;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v29 = v41++ >= 9;
          if (v29)
          {
            v46 = 0;
            goto LABEL_121;
          }
        }

        if ([v3 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

LABEL_121:
        *(a1 + 124) = v46;
        goto LABEL_116;
      }

      if (v32 == 2)
      {
        if (!v33 || (*(a1 + 128) & 0x100) != 0)
        {
          goto LABEL_115;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_137;
        }

        v38 = objc_alloc_init(GEOETAResult);
        if (!GEOETAResultReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        [(GEOETAResponse *)a1 _addNoFlagsEtaResult:v38];
LABEL_88:

        goto LABEL_116;
      }

      goto LABEL_109;
    }

    if (v32 == 3)
    {
      if (!v33)
      {
        goto LABEL_115;
      }

      if ((*(a1 + 128) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_137;
        }

        v51 = *(a1 + 128) << 6;
        goto LABEL_134;
      }

      v61 = 0;
      v62 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_137;
      }

      v38 = objc_alloc_init(GEOPlaceSearchResponse);
      if (!GEOPlaceSearchResponseReadAllFrom(v38, v3, v56 & 1))
      {
        goto LABEL_136;
      }

      PBReaderRecallMark();
      v39 = 96;
LABEL_107:
      v48 = *(a1 + v39);
      *(a1 + v39) = v38;
LABEL_108:

      --v6;
      goto LABEL_116;
    }

    if (v32 != 4)
    {
      if (!v33)
      {
        goto LABEL_115;
      }

      if ((*(a1 + 128) & 0x80) == 0)
      {
        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_137;
        }

        v38 = objc_alloc_init(GEOETAResult);
        if (!GEOETAResultReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        v39 = 80;
        goto LABEL_107;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      v51 = *(a1 + 128) << 8;
      goto LABEL_134;
    }

    if (!v33 || (*(a1 + 128) & 4) != 0)
    {
      goto LABEL_115;
    }

    v61 = 0;
    v62 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_137;
    }

    [(GEOETAResponse *)a1 _reserveProblemDetails:?];
    if ((GEOProblemDetailReadAllFrom(*(a1 + 24) + 12 * *(a1 + 32), v3) & 1) == 0)
    {
      goto LABEL_137;
    }

    PBReaderRecallMark();
    ++*(a1 + 32);
LABEL_116:
    if (!(v58 & 1 | (v6 != 0)))
    {
      goto LABEL_135;
    }
  }

  if (v32 <= 7)
  {
    if (v32 != 6)
    {
      if (!v33)
      {
        goto LABEL_115;
      }

      if ((*(a1 + 128) & 0x10) == 0)
      {
        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_137;
        }

        v38 = objc_alloc_init(GEOPDDatasetABStatus);
        if (!GEOPDDatasetABStatusReadAllFrom(v38, v3))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        v39 = 56;
        goto LABEL_107;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      v51 = *(a1 + 128) << 11;
LABEL_134:
      v6 += v51 >> 15;
      goto LABEL_116;
    }

    if (!v33 || (*(a1 + 128) & 0x40) != 0)
    {
LABEL_115:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_116;
    }

    v61 = 0;
    v62 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_137;
    }

    v38 = objc_alloc_init(GEOETAResult);
    if (!GEOETAResultReadAllFrom(v38, v3, v56 & 1))
    {
      goto LABEL_136;
    }

    PBReaderRecallMark();
    [(GEOETAResponse *)a1 _addNoFlagsEtaResultReferencePointDestination:v38];
    goto LABEL_88;
  }

  if (v32 == 8)
  {
    if (!v33)
    {
      goto LABEL_115;
    }

    if ((*(a1 + 128) & 0x20) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      v51 = *(a1 + 128) << 10;
      goto LABEL_134;
    }

    v47 = PBReaderReadString();
    v48 = *(a1 + 64);
    *(a1 + 64) = v47;
    goto LABEL_108;
  }

  if (v32 != 9)
  {
    if (v32 == 1051)
    {
      if (!v33)
      {
        goto LABEL_115;
      }

      if ((*(a1 + 128) & 8) == 0)
      {
        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_137;
        }

        v38 = objc_alloc_init(GEOClientMetrics);
        if (!GEOClientMetricsReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_136;
        }

        PBReaderRecallMark();
        v39 = 48;
        goto LABEL_107;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      v51 = *(a1 + 128) << 12;
      goto LABEL_134;
    }

LABEL_109:
    if ((v57 & 1) == 0 || (*(a1 + 128) & 2) != 0)
    {
      goto LABEL_115;
    }

    if (!*(a1 + 16))
    {
      v49 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v50 = *(a1 + 16);
      *(a1 + 16) = v49;
    }

    if (!PBUnknownFieldAdd())
    {
      v31 = 0;
      goto LABEL_139;
    }

    goto LABEL_116;
  }

  if (!v33)
  {
    goto LABEL_115;
  }

  if ((*(a1 + 128) & 0x400) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_137;
    }

    v51 = 32 * *(a1 + 128);
    goto LABEL_134;
  }

  v61 = 0;
  v62 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_137;
  }

  v38 = objc_alloc_init(GEOCommonResponseAttributes);
  if (GEOCommonResponseAttributesReadAllFrom(v38, v3))
  {
    PBReaderRecallMark();
    v39 = 104;
    goto LABEL_107;
  }

LABEL_136:

LABEL_137:
  v31 = 0;
LABEL_138:
  if ((v57 & 1) == 0)
  {
    goto LABEL_140;
  }

LABEL_139:
  *(a1 + 128) |= 2u;
LABEL_140:
  if (v60 || (v31 & 1) == 0)
  {
    *(a1 + 128) |= 0x100u;
    *(a1 + 128) |= 0x200u;
    *(a1 + 128) |= 4u;
    *(a1 + 128) |= 0x80u;
    *(a1 + 128) |= 0x40u;
    *(a1 + 128) |= 0x10u;
    *(a1 + 128) |= 0x20u;
    *(a1 + 128) |= 0x400u;
    *(a1 + 128) |= 8u;
    goto LABEL_165;
  }

  if (v21)
  {
    while (1)
    {
      v53 = *v21++;
      v52 = v53;
      if (v53 > 5)
      {
        if (v52 <= 7)
        {
          if (v52 == 6)
          {
            LOWORD(v52) = 64;
          }

          else
          {
            if (v52 != 7)
            {
              continue;
            }

            LOWORD(v52) = 16;
          }
        }

        else
        {
          switch(v52)
          {
            case 8:
              LOWORD(v52) = 32;
              break;
            case 9:
              LOWORD(v52) = 1024;
              break;
            case 1051:
              LOWORD(v52) = 8;
              break;
            default:
              continue;
          }
        }

        goto LABEL_163;
      }

      if (v52 > 3)
      {
        if (v52 != 4)
        {
          if (v52 != 5)
          {
            continue;
          }

          LOWORD(v52) = 128;
        }

        goto LABEL_163;
      }

      if (v52 == 2)
      {
        break;
      }

      if (v52 == 3)
      {
        LOWORD(v52) = 512;
LABEL_163:
        *(a1 + 128) |= v52;
        continue;
      }

      if (!v52)
      {
        goto LABEL_165;
      }
    }

    LOWORD(v52) = 256;
    goto LABEL_163;
  }

LABEL_165:
  if (v31)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v60)
  {
    v54 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

BOOL _GEOETAResultIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 56));
  v2 = *(a1 + 76);
  if ((v2 & 0x100) != 0)
  {
    return 1;
  }

  if ((v2 & 0x40) != 0)
  {
    if (GEOPlaceSearchResponseIsDirty(*(a1 + 32)))
    {
      return 1;
    }

    v2 = *(a1 + 76);
  }

  return (v2 & 0xA0) != 0;
}

void *GEODrivingWalkingInstructionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEODrivingWalkingInstructionReadAllFrom can only be called once per object"];
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
    v9 = &GEODrivingWalkingInstructionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEODrivingWalkingInstructionReadAllFrom_initialTag;
  }

  Specified = GEODrivingWalkingInstructionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEODrivingWalkingInstructionCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

uint64_t GEOGenericCombinationsReadAllFrom(void *a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v6 = objc_msgSend_position(v5);
        if (v6 >= [v5 length] || (objc_msgSend(v5, "hasError") & 1) != 0)
        {
          goto LABEL_27;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v21[0]) = 0;
          v10 = objc_msgSend_position(v5, v21[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v21 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v21[0] & 0x7F) << v7;
          if ((v21[0] & 0x80) == 0)
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
LABEL_27:
          v19 = [v5 hasError] ^ 1;
          goto LABEL_30;
        }

        if ((v9 >> 3) == 2)
        {
          break;
        }

        if (!a1[1])
        {
          v17 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v18 = a1[1];
          a1[1] = v17;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v21[0] = 0;
      v21[1] = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_29;
      }

      v16 = objc_alloc_init(GEOGenericSubstitutes);
      if (!GEOGenericSubstitutesReadAllFrom(v16, v5, a3))
      {
        break;
      }

      PBReaderRecallMark();
      [a1 addSubstitutes:v16];
    }
  }

LABEL_29:
  v19 = 0;
LABEL_30:
  objc_sync_exit(v5);

  return v19;
}

uint64_t GEOGenericSubstitutesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v6 = objc_msgSend_position(v5);
          if (v6 >= [v5 length] || (objc_msgSend(v5, "hasError") & 1) != 0)
          {
            goto LABEL_41;
          }

          v7 = 0;
          v8 = 0;
          v9 = 0;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v10 = objc_msgSend_position(v5, v30[0]);
            if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
            {
              v12 = [v5 data];
              [v12 getBytes:v30 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v9 |= (v30[0] & 0x7F) << v7;
            if ((v30[0] & 0x80) == 0)
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
LABEL_41:
            v28 = [v5 hasError] ^ 1;
            goto LABEL_44;
          }

          v16 = v9 >> 3;
          if (v16 != 2)
          {
            break;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v22 = objc_msgSend_position(v5, v30[0]);
            if (v22 + 1 >= objc_msgSend_position(v5) && (v23 = objc_msgSend_position(v5), v23 + 1 <= [v5 length]))
            {
              v24 = [v5 data];
              [v24 getBytes:v30 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v21 |= (v30[0] & 0x7F) << v19;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              v25 = 0;
              goto LABEL_40;
            }
          }

          if ([v5 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_40:
          *(a1 + 24) = v25;
        }

        if (v16 == 1)
        {
          break;
        }

        if (!*(a1 + 8))
        {
          v26 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v27 = *(a1 + 8);
          *(a1 + 8) = v26;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v30[0] = 0;
      v30[1] = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_43;
      }

      v17 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v17, v5, a3))
      {
        break;
      }

      PBReaderRecallMark();
      v18 = *(a1 + 16);
      *(a1 + 16) = v17;
    }
  }

LABEL_43:
  v28 = 0;
LABEL_44:
  objc_sync_exit(v5);

  return v28;
}

uint64_t GEOGenericStringDataReadAllFrom(uint64_t a1, void *a2)
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
          goto LABEL_55;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          v36 = 0;
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
          goto LABEL_55;
        }

        v14 = v7 >> 3;
        if (v14 == 4)
        {
          break;
        }

        if (v14 == 2)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v38 = 0;
            v20 = objc_msgSend_position(v3);
            if (v20 + 1 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3), v21 + 1 <= [v3 length]))
            {
              v22 = [v3 data];
              [v22 getBytes:&v38 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v19 |= (v38 & 0x7F) << v17;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_48;
            }
          }

          if ([v3 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_48:
          v32 = 28;
LABEL_53:
          *(a1 + v32) = v23;
          goto LABEL_54;
        }

        if (v14 == 1)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 16);
          *(a1 + 16) = v15;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v30 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v31 = *(a1 + 8);
            *(a1 + 8) = v30;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_56;
          }
        }

LABEL_54:
        v33 = objc_msgSend_position(v3);
        if (v33 >= [v3 length])
        {
          goto LABEL_55;
        }
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        v37 = 0;
        v27 = objc_msgSend_position(v3);
        if (v27 + 1 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3), v28 + 1 <= [v3 length]))
        {
          v29 = [v3 data];
          [v29 getBytes:&v37 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v26 |= (v37 & 0x7F) << v24;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_52;
        }
      }

      if ([v3 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v26;
      }

LABEL_52:
      v32 = 24;
      goto LABEL_53;
    }

LABEL_55:
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

void *GEOConditionalFormattedStringReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v14 = v10 | v13;
  v43 = v13 & ~v10 | v8;
  v44 = v10 | v13 | v8;
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
LABEL_68:
      v25 = 1;
      goto LABEL_71;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v45) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v45 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v45 & 0x7F) << v17;
      if ((v45 & 0x80) == 0)
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
      goto LABEL_71;
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
        goto LABEL_60;
      }

      if ((*(a1 + 52) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_70;
        }

        v37 = 32 * *(a1 + 52);
LABEL_66:
        v6 += v37 >> 7;
        goto LABEL_67;
      }

      v45 = 0;
      v46 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_70;
      }

      v32 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v32, v3, v9 & 1))
      {
        goto LABEL_69;
      }

      PBReaderRecallMark();
      v33 = 32;
      goto LABEL_53;
    }

    if (v43 & 1) == 0 || (*(a1 + 52))
    {
LABEL_60:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
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
      v42 = &OBJC_IVAR___GEOCompanionTransitAlightMessage__identifier;
      goto LABEL_72;
    }

LABEL_67:
    if (!(v44 & 1 | (v6 != 0)))
    {
      goto LABEL_68;
    }
  }

  if (!v27)
  {
    goto LABEL_60;
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_70;
    }

    v37 = *(a1 + 52) << 6;
    goto LABEL_66;
  }

  v45 = 0;
  v46 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_70;
  }

  v32 = objc_alloc_init(GEOCondition);
  if (GEOConditionReadAllFrom(v32, v3))
  {
    PBReaderRecallMark();
    v33 = 24;
LABEL_53:
    v34 = *(a1 + v33);
    *(a1 + v33) = v32;

    --v6;
    goto LABEL_67;
  }

LABEL_69:

LABEL_70:
  v25 = 0;
LABEL_71:
  v42 = &OBJC_IVAR___GEOCompanionTransitAlightMessage__identifier;
  if ((v43 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_72:
  *(a1 + v42[800]) |= 1u;
LABEL_73:
  if (v14 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v42[800]) |= 4u;
    *(a1 + v42[800]) |= 2u;
    goto LABEL_82;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v39 = *v15++;
        v38 = v39;
        if (v39 == 1)
        {
          break;
        }

        if (v38 == 2)
        {
          goto LABEL_81;
        }

        if (!v38)
        {
          goto LABEL_82;
        }
      }

      LOBYTE(v38) = 4;
LABEL_81:
      *(a1 + v42[800]) |= v38;
      continue;
    }
  }

LABEL_82:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_86:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_86;
    }
  }

  return v3;
}

double GEOComposedRouteSectionPadAndSquareBounds(double *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[3];
  v5 = v4 * 0.5 + *a1;
  v6 = v2 * 0.5 + a1[1];
  v7 = v3 * 0.5 + a1[2];
  v8 = fmax(v4, v2);
  v9 = exp((v6 * 0.0078125 + -1048576.0) / 333772.107);
  v10 = atan(v9);
  result = v8 + GEOMapPointsPerMeterAtLatitude((v10 * -2.0 + 1.57079633) * 57.2957795) * 16.0;
  *a1 = v5 - result * 0.5;
  a1[1] = v6 - result * 0.5;
  a1[2] = v7 - (v3 + 16.0) * 0.5;
  a1[3] = result;
  a1[4] = result;
  a1[5] = v3 + 16.0;
  return result;
}

void *GEOSignGuidanceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOSignGuidanceReadAllFrom can only be called once per object"];
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
    v9 = &GEOSignGuidanceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOSignGuidanceReadAllFrom_initialTag;
  }

  Specified = GEOSignGuidanceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOSignGuidanceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOSignGuidanceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 92)), 0xFFFAFFFBFFF9FFF8), 0x1000100010001)) + ((*(a1 + 92) >> 4) & 1) + ((*(a1 + 92) >> 3) & 1) + ((*(a1 + 92) >> 2) & 1));
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
  LODWORD(v59) = v14;
  HIDWORD(v59) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v60 = (v16 == 0) | v15;
  v61 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v59);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_129:
      v26 = 1;
      goto LABEL_132;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v62) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v62 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v62 & 0x7F) << v18;
      if ((v62 & 0x80) == 0)
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
      goto LABEL_132;
    }

    v27 = v20 >> 3;
    v28 = v61;
    if ((v60 & 1) == 0)
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

    if (v27 > 5)
    {
      break;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        if (!v28 || (*(a1 + 92) & 0x20) != 0)
        {
LABEL_110:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_131;
          }

          goto LABEL_111;
        }

        v62 = 0;
        v63 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_131;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_130;
        }

        PBReaderRecallMark();
        [(GEOSignGuidance *)a1 _addNoFlagsSecondarySign:v33];
        goto LABEL_97;
      }

      if (v27 == 5)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_110;
        }

        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 92) |= 1u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v44 = objc_msgSend_position(v3) + 1;
          if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
          {
            v46 = [v3 data];
            [v46 getBytes:&v62 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v43 |= (v62 & 0x7F) << v41;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v24 = v42++ >= 9;
          if (v24)
          {
            v40 = 0;
            goto LABEL_120;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v43;
        }

LABEL_120:
        v51 = 84;
        goto LABEL_121;
      }
    }

    else
    {
      if (v27 == 1)
      {
        if (!v28 || (*(a1 + 92) & 0x100) != 0)
        {
          goto LABEL_110;
        }

        v62 = 0;
        v63 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_131;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_130;
        }

        PBReaderRecallMark();
        [(GEOSignGuidance *)a1 _addNoFlagsSignTitle:v33];
        goto LABEL_97;
      }

      if (v27 == 2)
      {
        if (!v28 || (*(a1 + 92) & 0x80) != 0)
        {
          goto LABEL_110;
        }

        v62 = 0;
        v63 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_131;
        }

        v33 = objc_alloc_init(GEOFormattedString);
        if (!GEOFormattedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_130;
        }

        PBReaderRecallMark();
        [(GEOSignGuidance *)a1 _addNoFlagsSignDetail:v33];
LABEL_97:

        goto LABEL_111;
      }
    }

LABEL_104:
    if ((v59 & 1) == 0 || (*(a1 + 92) & 4) != 0)
    {
      goto LABEL_110;
    }

    if (!*(a1 + 16))
    {
      v49 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v50 = *(a1 + 16);
      *(a1 + 16) = v49;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v58 = &OBJC_IVAR___GEOFormattedString__reader;
      goto LABEL_133;
    }

LABEL_111:
    if (!(BYTE4(v59) & 1 | (v6 != 0)))
    {
      goto LABEL_129;
    }
  }

  if (v27 <= 7)
  {
    if (v27 == 6)
    {
      if (!v28)
      {
        goto LABEL_110;
      }

      if ((*(a1 + 92) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_131;
        }

        v52 = *(a1 + 92) << 9;
LABEL_128:
        v6 += v52 >> 15;
        goto LABEL_111;
      }

      v62 = 0;
      v63 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_131;
      }

      v33 = objc_alloc_init(GEONameInfo);
      if (!GEONameInfoReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_130;
      }

      PBReaderRecallMark();
      v47 = 48;
      goto LABEL_103;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_110;
    }

    v34 = 0;
    v35 = 0;
    v36 = 0;
    *(a1 + 92) |= 2u;
    while (1)
    {
      LOBYTE(v62) = 0;
      v37 = objc_msgSend_position(v3) + 1;
      if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
      {
        v39 = [v3 data];
        [v39 getBytes:&v62 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v36 |= (v62 & 0x7F) << v34;
      if ((v62 & 0x80) == 0)
      {
        break;
      }

      v34 += 7;
      v24 = v35++ >= 9;
      if (v24)
      {
        v40 = 0;
        goto LABEL_116;
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

LABEL_116:
    v51 = 88;
LABEL_121:
    *(a1 + v51) = v40;
    goto LABEL_111;
  }

  if (v27 != 8)
  {
    if (v27 == 9)
    {
      if (!v28)
      {
        goto LABEL_110;
      }

      if ((*(a1 + 92) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_131;
        }

        v52 = *(a1 + 92) << 12;
        goto LABEL_128;
      }

      v62 = 0;
      v63 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_131;
      }

      v33 = objc_alloc_init(GEOPBTransitArtwork);
      if (!GEOPBTransitArtworkReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_130;
      }

      PBReaderRecallMark();
      v47 = 24;
      goto LABEL_103;
    }

    goto LABEL_104;
  }

  if (!v28)
  {
    goto LABEL_110;
  }

  if ((*(a1 + 92) & 0x10) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_131;
    }

    v52 = *(a1 + 92) << 11;
    goto LABEL_128;
  }

  v62 = 0;
  v63 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_131;
  }

  v33 = objc_alloc_init(GEOJunctionInfo);
  if (GEOJunctionInfoReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v47 = 32;
LABEL_103:
    v48 = *(a1 + v47);
    *(a1 + v47) = v33;

    --v6;
    goto LABEL_111;
  }

LABEL_130:

LABEL_131:
  v26 = 0;
LABEL_132:
  v58 = &OBJC_IVAR___GEOFormattedString__reader;
  if ((v59 & 1) == 0)
  {
    goto LABEL_134;
  }

LABEL_133:
  *(a1 + v58[567]) |= 4u;
LABEL_134:
  if (v61 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v58[567]) |= 0x100u;
    *(a1 + v58[567]) |= 0x80u;
    *(a1 + v58[567]) |= 0x20u;
    *(a1 + v58[567]) |= 0x40u;
    *(a1 + v58[567]) |= 0x10u;
    *(a1 + v58[567]) |= 8u;
    goto LABEL_153;
  }

  if (v16)
  {
    while (1)
    {
LABEL_137:
      v54 = *v16++;
      v53 = v54;
      if (v54 > 5)
      {
        switch(v53)
        {
          case 6:
            v55 = 64;
            break;
          case 8:
            v55 = 16;
            break;
          case 9:
            v55 = 8;
            break;
          default:
            continue;
        }

        goto LABEL_151;
      }

      if (v53 > 1)
      {
        break;
      }

      if (v53 == 1)
      {
        v55 = 256;
LABEL_151:
        *(a1 + v58[567]) |= v55;
        continue;
      }

      if (!v53)
      {
        goto LABEL_153;
      }
    }

    if (v53 == 2)
    {
      v55 = 128;
    }

    else
    {
      if (v53 != 3)
      {
        goto LABEL_137;
      }

      v55 = 32;
    }

    goto LABEL_151;
  }

LABEL_153:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v61)
  {
    v56 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOSpokenGuidanceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 84) >> 9) & 1) + ((*(a1 + 84) >> 10) & 1) + (HIBYTE(*(a1 + 84)) & 1);
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
  LODWORD(v93) = v13 & ~v10 | v8;
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
    goto LABEL_188;
  }

  HIDWORD(v93) = v16 | v8 | v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_186:
      v26 = 1;
      goto LABEL_188;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v94) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v94 & 0x7F) << v18;
      if ((v94 & 0x80) == 0)
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
      goto LABEL_188;
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

    if (v27 <= 5)
    {
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_151;
          }

          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 84) |= 2u;
          while (1)
          {
            LOBYTE(v94) = 0;
            v68 = objc_msgSend_position(v3) + 1;
            if (v68 >= objc_msgSend_position(v3) && (v69 = objc_msgSend_position(v3) + 1, v69 <= [v3 length]))
            {
              v70 = [v3 data];
              [v70 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v67 |= (v94 & 0x7F) << v65;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v24 = v66++ >= 9;
            if (v24)
            {
              v39 = 0;
              goto LABEL_168;
            }
          }

          if ([v3 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v67;
          }

LABEL_168:
          v86 = 56;
        }

        else
        {
          if (v27 != 4)
          {
            if (v7)
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 84) |= 0x20u;
              while (1)
              {
                LOBYTE(v94) = 0;
                v36 = objc_msgSend_position(v3) + 1;
                if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
                {
                  v38 = [v3 data];
                  [v38 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v35 |= (v94 & 0x7F) << v33;
                if ((v94 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v24 = v34++ >= 9;
                if (v24)
                {
                  v39 = 0;
                  goto LABEL_174;
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

LABEL_174:
              v86 = 72;
              goto LABEL_183;
            }

LABEL_151:
            v26 = PBReaderSkipValueWithTag();
            if ((v26 & HIDWORD(v93) & 1) == 0)
            {
              goto LABEL_188;
            }

LABEL_185:
            v87 = objc_msgSend_position(v3);
            if (v87 >= [v3 length])
            {
              goto LABEL_186;
            }

            continue;
          }

          if ((v7 & 1) == 0)
          {
            goto LABEL_151;
          }

          v78 = 0;
          v79 = 0;
          v80 = 0;
          *(a1 + 84) |= 1u;
          while (1)
          {
            LOBYTE(v94) = 0;
            v81 = objc_msgSend_position(v3) + 1;
            if (v81 >= objc_msgSend_position(v3) && (v82 = objc_msgSend_position(v3) + 1, v82 <= [v3 length]))
            {
              v83 = [v3 data];
              [v83 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v80 |= (v94 & 0x7F) << v78;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v24 = v79++ >= 9;
            if (v24)
            {
              v39 = 0;
              goto LABEL_182;
            }
          }

          if ([v3 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v80;
          }

LABEL_182:
          v86 = 52;
        }

LABEL_183:
        *(a1 + v86) = v39;
LABEL_184:
        if ((v93 & 0x100000000) == 0)
        {
          goto LABEL_186;
        }

        goto LABEL_185;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_151;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 84) |= 0x40u;
          while (1)
          {
            LOBYTE(v94) = 0;
            v49 = objc_msgSend_position(v3) + 1;
            if (v49 >= objc_msgSend_position(v3) && (v50 = objc_msgSend_position(v3) + 1, v50 <= [v3 length]))
            {
              v51 = [v3 data];
              [v51 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v48 |= (v94 & 0x7F) << v46;
            if ((v94 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v24 = v47++ >= 9;
            if (v24)
            {
              v39 = 0;
              goto LABEL_156;
            }
          }

          if ([v3 hasError])
          {
            v39 = 0;
          }

          else
          {
            v39 = v48;
          }

LABEL_156:
          v86 = 76;
          goto LABEL_183;
        }

        goto LABEL_145;
      }

      if (!v28 || (*(a1 + 84) & 0x200) != 0)
      {
        goto LABEL_151;
      }

      v94 = 0;
      v95 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_207;
      }

      v58 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v58, v3, v9 & 1))
      {
        goto LABEL_206;
      }

      PBReaderRecallMark();
      [(GEOSpokenGuidance *)a1 _addNoFlagsAnnouncement:v58];
LABEL_144:

      goto LABEL_184;
    }

    break;
  }

  if (v27 <= 8)
  {
    if (v27 == 6)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_151;
      }

      v59 = 0;
      v60 = 0;
      v61 = 0;
      *(a1 + 84) |= 0x10u;
      while (1)
      {
        LOBYTE(v94) = 0;
        v62 = objc_msgSend_position(v3) + 1;
        if (v62 >= objc_msgSend_position(v3) && (v63 = objc_msgSend_position(v3) + 1, v63 <= [v3 length]))
        {
          v64 = [v3 data];
          [v64 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v61 |= (v94 & 0x7F) << v59;
        if ((v94 & 0x80) == 0)
        {
          break;
        }

        v59 += 7;
        v24 = v60++ >= 9;
        if (v24)
        {
          v39 = 0;
          goto LABEL_164;
        }
      }

      if ([v3 hasError])
      {
        v39 = 0;
      }

      else
      {
        v39 = v61;
      }

LABEL_164:
      v86 = 68;
      goto LABEL_183;
    }

    if (v27 == 7)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_151;
      }

      v52 = 0;
      v53 = 0;
      v54 = 0;
      *(a1 + 84) |= 8u;
      while (1)
      {
        LOBYTE(v94) = 0;
        v55 = objc_msgSend_position(v3) + 1;
        if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
        {
          v57 = [v3 data];
          [v57 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v54 |= (v94 & 0x7F) << v52;
        if ((v94 & 0x80) == 0)
        {
          break;
        }

        v52 += 7;
        v24 = v53++ >= 9;
        if (v24)
        {
          v39 = 0;
          goto LABEL_160;
        }
      }

      if ([v3 hasError])
      {
        v39 = 0;
      }

      else
      {
        v39 = v54;
      }

LABEL_160:
      v86 = 64;
      goto LABEL_183;
    }

LABEL_145:
    if ((v93 & 1) == 0 || (*(a1 + 84) & 0x100) != 0)
    {
      goto LABEL_151;
    }

    if (!*(a1 + 16))
    {
      v84 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v85 = *(a1 + 16);
      *(a1 + 16) = v84;
    }

    v26 = PBUnknownFieldAdd();
    if (!v26)
    {
      goto LABEL_189;
    }

    goto LABEL_184;
  }

  if (v27 == 9)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_151;
    }

    v71 = 0;
    v72 = 0;
    v73 = 0;
    *(a1 + 84) |= 0x80u;
    while (1)
    {
      LOBYTE(v94) = 0;
      v74 = objc_msgSend_position(v3) + 1;
      if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
      {
        v76 = [v3 data];
        [v76 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v73 |= (v94 & 0x7F) << v71;
      if ((v94 & 0x80) == 0)
      {
        break;
      }

      v71 += 7;
      v24 = v72++ >= 9;
      if (v24)
      {
        v77 = 0;
        goto LABEL_170;
      }
    }

    v77 = (v73 != 0) & ~[v3 hasError];
LABEL_170:
    *(a1 + 80) = v77;
    goto LABEL_184;
  }

  if (v27 != 10)
  {
    if (v27 == 11)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_151;
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
      *(a1 + 84) |= 4u;
      while (1)
      {
        LOBYTE(v94) = 0;
        v43 = objc_msgSend_position(v3) + 1;
        if (v43 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3) + 1, v44 <= [v3 length]))
        {
          v45 = [v3 data];
          [v45 getBytes:&v94 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v42 |= (v94 & 0x7F) << v40;
        if ((v94 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v24 = v41++ >= 9;
        if (v24)
        {
          v39 = 0;
          goto LABEL_178;
        }
      }

      if ([v3 hasError])
      {
        v39 = 0;
      }

      else
      {
        v39 = v42;
      }

LABEL_178:
      v86 = 60;
      goto LABEL_183;
    }

    goto LABEL_145;
  }

  if (!v28 || (*(a1 + 84) & 0x400) != 0)
  {
    goto LABEL_151;
  }

  v94 = 0;
  v95 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_207;
  }

  v58 = objc_alloc_init(GEOTimeGap);
  if (GEOTimeGapReadAllFrom(v58, v3))
  {
    PBReaderRecallMark();
    [(GEOSpokenGuidance *)a1 _addNoFlagsTimeGap:v58];
    goto LABEL_144;
  }

LABEL_206:

LABEL_207:
  v26 = 0;
LABEL_188:
  if (v93)
  {
LABEL_189:
    *(a1 + 84) |= 0x100u;
  }

  if (v14 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 84) |= 0x200u;
    *(a1 + 84) |= 0x400u;
    goto LABEL_200;
  }

  if (v15)
  {
    while (1)
    {
      v89 = *v15++;
      v88 = v89;
      if (v89 == 1)
      {
        break;
      }

      if (v88 == 10)
      {
        v90 = 1024;
LABEL_199:
        *(a1 + 84) |= v90;
        continue;
      }

      if (!v88)
      {
        goto LABEL_200;
      }
    }

    v90 = 512;
    goto LABEL_199;
  }

LABEL_200:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_204:
    v91 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_204;
    }
  }

  return v3;
}

uint64_t GEOGuidanceImportanceModeReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v33[0]) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v33 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v33[0] & 0x7F) << v5;
          if ((v33[0] & 0x80) == 0)
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

        if ((v7 >> 3) == 1)
        {
          if ((v7 & 7) == 2)
          {
            v33[0] = 0;
            v33[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_54;
            }

            v14 = objc_msgSend_position(v3);
            for (i = [v3 length]; v14 < i && (objc_msgSend(v3, "hasError") & 1) == 0; i = objc_msgSend(v3, "length"))
            {
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                v34 = 0;
                v19 = objc_msgSend_position(v3);
                if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
                {
                  v21 = [v3 data];
                  [v21 getBytes:&v34 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v18 |= (v34 & 0x7F) << v16;
                if ((v34 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  goto LABEL_35;
                }
              }

              [v3 hasError];
LABEL_35:
              PBRepeatedInt32Add();
              v14 = objc_msgSend_position(v3);
            }

            PBReaderRecallMark();
          }

          else
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              LOBYTE(v33[0]) = 0;
              v27 = objc_msgSend_position(v3);
              if (v27 + 1 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3), v28 + 1 <= [v3 length]))
              {
                v29 = [v3 data];
                [v29 getBytes:v33 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v26 |= (v33[0] & 0x7F) << v24;
              if ((v33[0] & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                goto LABEL_51;
              }
            }

            [v3 hasError];
LABEL_51:
            PBRepeatedInt32Add();
          }
        }

        else
        {
          if (!*(a1 + 8))
          {
            v22 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_54;
          }
        }

        v30 = objc_msgSend_position(v3);
      }

      while (v30 < [v3 length]);
    }

    v31 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_54:
    v31 = 0;
  }

  objc_sync_exit(v3);

  return v31;
}

void *GEOVisualLaneGuidanceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOVisualLaneGuidanceReadAllFrom can only be called once per object"];
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
    v9 = &GEOVisualLaneGuidanceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOVisualLaneGuidanceReadAllFrom_initialTag;
  }

  Specified = GEOVisualLaneGuidanceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOVisualLaneGuidanceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOVisualLaneGuidanceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 64)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFCFFFEFFFDLL) & 0xFF01FF01FF01FF01));
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
  v53 = v13 & ~v10 | v8;
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
    v28 = 1;
    LOBYTE(v18) = v14;
    goto LABEL_89;
  }

  v55 = (v15 == 0) | v14;
  v54 = v16 | v8 | v14;
  v18 = v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_87:
      v28 = 1;
      goto LABEL_89;
    }

    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v56 & 0x7F) << v20;
      if ((v56 & 0x80) == 0)
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
    v18 = v19;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_89;
    }

    v29 = v22 >> 3;
    v30 = v19;
    if ((v55 & 1) == 0)
    {
      v31 = v15;
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

    if (v29 <= 2)
    {
      if (v29 == 1)
      {
        if (!v30 || (*(a1 + 64) & 8) != 0)
        {
          goto LABEL_79;
        }

        v56 = 0;
        v57 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_111;
        }

        v35 = objc_alloc_init(GEOLaneInfo);
        if (!GEOLaneInfoReadAllFrom(v35, v3))
        {
          goto LABEL_110;
        }

        PBReaderRecallMark();
        [(GEOVisualLaneGuidance *)a1 _addNoFlagsLaneInfo:v35];
LABEL_78:
      }

      else
      {
        if (v29 == 2)
        {
          if (v30 && (*(a1 + 64) & 4) == 0)
          {
            v56 = 0;
            v57 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_111;
            }

            v35 = objc_alloc_init(GEOFormattedString);
            if (!GEOFormattedStringReadAllFrom(v35, v3, v9 & 1))
            {
              goto LABEL_110;
            }

            PBReaderRecallMark();
            [(GEOVisualLaneGuidance *)a1 _addNoFlagsInstruction:v35];
            goto LABEL_78;
          }

LABEL_79:
          v28 = PBReaderSkipValueWithTag();
          if ((v28 & v54 & 1) == 0)
          {
            goto LABEL_89;
          }

LABEL_86:
          v45 = objc_msgSend_position(v3);
          if (v45 >= [v3 length])
          {
            goto LABEL_87;
          }

          continue;
        }

LABEL_62:
        if ((v53 & 1) == 0 || (*(a1 + 64) & 2) != 0)
        {
          goto LABEL_79;
        }

        if (!*(a1 + 16))
        {
          v43 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v44 = *(a1 + 16);
          *(a1 + 16) = v43;
        }

        v28 = PBUnknownFieldAdd();
        if (!v28)
        {
          v52 = &OBJC_IVAR___GEOFormattedString__reader;
          goto LABEL_90;
        }
      }

      goto LABEL_85;
    }

    break;
  }

  if (v29 != 3)
  {
    if (v29 != 4)
    {
      goto LABEL_62;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_79;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    *(a1 + 64) |= 1u;
    while (1)
    {
      LOBYTE(v56) = 0;
      v39 = objc_msgSend_position(v3) + 1;
      if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
      {
        v41 = [v3 data];
        [v41 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v38 |= (v56 & 0x7F) << v36;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v36 += 7;
      v26 = v37++ >= 9;
      if (v26)
      {
        v42 = 0;
        goto LABEL_84;
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

LABEL_84:
    *(a1 + 60) = v42;
    v18 = v19;
LABEL_85:
    if ((v54 & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (!v30 || (*(a1 + 64) & 0x10) != 0)
  {
    goto LABEL_79;
  }

  v56 = 0;
  v57 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_111;
  }

  v35 = objc_alloc_init(GEOFormattedString);
  if (GEOFormattedStringReadAllFrom(v35, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOVisualLaneGuidance *)a1 _addNoFlagsTitle:v35];
    goto LABEL_78;
  }

LABEL_110:

LABEL_111:
  v28 = 0;
LABEL_89:
  v52 = &OBJC_IVAR___GEOFormattedString__reader;
  if (v53)
  {
LABEL_90:
    *(a1 + v52[929]) |= 2u;
  }

  if (v18 || (v28 & 1) == 0)
  {
    *(a1 + v52[929]) |= 8u;
    *(a1 + v52[929]) |= 4u;
    *(a1 + v52[929]) |= 0x10u;
    goto LABEL_104;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v47 = *v15++;
        v46 = v47;
        v48 = v47 == 1;
        if (v47 > 1)
        {
          break;
        }

        if (v48)
        {
          v49 = 8;
LABEL_102:
          *(a1 + v52[929]) |= v49;
          continue;
        }

        if (!v46)
        {
          goto LABEL_104;
        }
      }

      if (v46 == 3)
      {
        v49 = 16;
      }

      else
      {
        if (v46 != 2)
        {
          continue;
        }

        v49 = 4;
      }

      goto LABEL_102;
    }
  }

LABEL_104:
  if (v28)
  {
    v3 = ([v3 hasError] ^ 1);
    if (!v18)
    {
      return v3;
    }

LABEL_108:
    v50 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v18)
    {
      goto LABEL_108;
    }
  }

  return v3;
}

void *GEOEnrouteNoticeReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (a1 + 88);
  v12 = vld1_dup_s16(v11);
  v13 = vand_s8(vshl_u16(v12, 0xFFF9FFF6FFF8FFF7), 0x1000100010001);
  v13.i16[0] = vaddv_s16(v13);
  v14 = v13.i32[0];
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

  v16 = v14 > 1;
  v17 = v16 & ~v10 | v8;
  v18 = v10 | v16;
  LODWORD(v93) = v17;
  HIDWORD(v93) = v18 | v8;
  if ((v18 | v7))
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v94 = (v19 == 0) | v18;
  v95 = v18;
  while (1)
  {
    v20 = objc_msgSend_position(v3, v93);
    if (v20 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_181:
      v29 = 1;
      goto LABEL_182;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LOBYTE(v96) = 0;
      v24 = objc_msgSend_position(v3) + 1;
      if (v24 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3) + 1, v25 <= [v3 length]))
      {
        v26 = [v3 data];
        [v26 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v23 |= (v96 & 0x7F) << v21;
      if ((v96 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v27 = v22++ >= 9;
      if (v27)
      {
        v23 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v23 = 0;
    }

LABEL_33:
    v28 = [v3 hasError];
    v29 = 1;
    if ((v28 & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_182;
    }

    v30 = v23 >> 3;
    v31 = v95;
    if ((v94 & 1) == 0)
    {
      v32 = v19;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    if (v30 <= 5)
    {
      break;
    }

    if (v30 <= 7)
    {
      if (v30 == 6)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 88) |= 0x10u;
        while (1)
        {
          LOBYTE(v96) = 0;
          v61 = objc_msgSend_position(v3) + 1;
          if (v61 >= objc_msgSend_position(v3) && (v62 = objc_msgSend_position(v3) + 1, v62 <= [v3 length]))
          {
            v63 = [v3 data];
            [v63 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v60 |= (v96 & 0x7F) << v58;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v27 = v59++ >= 9;
          if (v27)
          {
            v42 = 0;
            goto LABEL_152;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v60;
        }

LABEL_152:
        v84 = 76;
        goto LABEL_173;
      }

      if (!v31)
      {
        goto LABEL_143;
      }

      if ((*(a1 + 88) & 0x400) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_204;
        }

        v85 = 32 * *(a1 + 88);
        goto LABEL_180;
      }

      v96 = 0;
      v97 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_204;
      }

      v51 = objc_alloc_init(GEORouteAnnotation);
      if (!GEORouteAnnotationReadAllFrom(v51, v3, v9 & 1))
      {
        goto LABEL_203;
      }

      PBReaderRecallMark();
      v50 = *(a1 + 40);
      *(a1 + 40) = v51;
      goto LABEL_81;
    }

    switch(v30)
    {
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 88) |= 0x40u;
        while (1)
        {
          LOBYTE(v96) = 0;
          v67 = objc_msgSend_position(v3) + 1;
          if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 1, v68 <= [v3 length]))
          {
            v69 = [v3 data];
            [v69 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v66 |= (v96 & 0x7F) << v64;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v27 = v65++ >= 9;
          if (v27)
          {
            v42 = 0;
            goto LABEL_156;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v66;
        }

LABEL_156:
        v84 = 84;
        goto LABEL_173;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 88) |= 1u;
        while (1)
        {
          LOBYTE(v96) = 0;
          v79 = objc_msgSend_position(v3) + 1;
          if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
          {
            v81 = [v3 data];
            [v81 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v78 |= (v96 & 0x7F) << v76;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v27 = v77++ >= 9;
          if (v27)
          {
            v42 = 0;
            goto LABEL_172;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v78;
        }

LABEL_172:
        v84 = 60;
        goto LABEL_173;
      case 0xA:
        if ((v7 & 1) == 0)
        {
          goto LABEL_143;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 88) |= 2u;
        while (1)
        {
          LOBYTE(v96) = 0;
          v46 = objc_msgSend_position(v3) + 1;
          if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
          {
            v48 = [v3 data];
            [v48 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v45 |= (v96 & 0x7F) << v43;
          if ((v96 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v27 = v44++ >= 9;
          if (v27)
          {
            v42 = 0;
            goto LABEL_164;
          }
        }

        if ([v3 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v45;
        }

LABEL_164:
        v84 = 64;
LABEL_173:
        *(a1 + v84) = v42;
        goto LABEL_174;
    }

LABEL_137:
    if ((v93 & 1) == 0 || (*(a1 + 88) & 0x80) != 0)
    {
LABEL_143:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_204;
      }

      goto LABEL_174;
    }

    if (!*(a1 + 16))
    {
      v82 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v83 = *(a1 + 16);
      *(a1 + 16) = v82;
    }

    if (!PBUnknownFieldAdd())
    {
      v29 = 0;
      v92 = &OBJC_IVAR___GEOCompanionTransitAlightMessage__identifier;
      goto LABEL_183;
    }

LABEL_174:
    if (!(BYTE4(v93) & 1 | (v6 != 0)))
    {
      goto LABEL_181;
    }
  }

  if (v30 <= 2)
  {
    if (v30 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_143;
      }

      v52 = 0;
      v53 = 0;
      v54 = 0;
      *(a1 + 88) |= 0x20u;
      while (1)
      {
        LOBYTE(v96) = 0;
        v55 = objc_msgSend_position(v3) + 1;
        if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
        {
          v57 = [v3 data];
          [v57 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v54 |= (v96 & 0x7F) << v52;
        if ((v96 & 0x80) == 0)
        {
          break;
        }

        v52 += 7;
        v27 = v53++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_148;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v54;
      }

LABEL_148:
      v84 = 80;
      goto LABEL_173;
    }

    if (v30 == 2)
    {
      if (!v31)
      {
        goto LABEL_143;
      }

      if ((*(a1 + 88) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_204;
        }

        v85 = *(a1 + 88) << 6;
LABEL_180:
        v6 += v85 >> 15;
        goto LABEL_174;
      }

      v49 = PBReaderReadString();
      v50 = *(a1 + 32);
      *(a1 + 32) = v49;
LABEL_81:

      --v6;
      goto LABEL_174;
    }

    goto LABEL_137;
  }

  if (v30 != 3)
  {
    if (v30 == 4)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_143;
      }

      v70 = 0;
      v71 = 0;
      v72 = 0;
      *(a1 + 88) |= 4u;
      while (1)
      {
        LOBYTE(v96) = 0;
        v73 = objc_msgSend_position(v3) + 1;
        if (v73 >= objc_msgSend_position(v3) && (v74 = objc_msgSend_position(v3) + 1, v74 <= [v3 length]))
        {
          v75 = [v3 data];
          [v75 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v72 |= (v96 & 0x7F) << v70;
        if ((v96 & 0x80) == 0)
        {
          break;
        }

        v70 += 7;
        v27 = v71++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_168;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v72;
      }

LABEL_168:
      v84 = 68;
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_143;
      }

      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 88) |= 8u;
      while (1)
      {
        LOBYTE(v96) = 0;
        v39 = objc_msgSend_position(v3) + 1;
        if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
        {
          v41 = [v3 data];
          [v41 getBytes:&v96 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v38 |= (v96 & 0x7F) << v36;
        if ((v96 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v27 = v37++ >= 9;
        if (v27)
        {
          v42 = 0;
          goto LABEL_160;
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

LABEL_160:
      v84 = 72;
    }

    goto LABEL_173;
  }

  if (!v31 || (*(a1 + 88) & 0x100) != 0)
  {
    goto LABEL_143;
  }

  v96 = 0;
  v97 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_204;
  }

  v51 = objc_alloc_init(GEOGuidanceEvent);
  if (GEOGuidanceEventReadAllFrom(v51, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOEnrouteNotice *)a1 _addNoFlagsGuidance:v51];

    goto LABEL_174;
  }

LABEL_203:

LABEL_204:
  v29 = 0;
LABEL_182:
  v92 = &OBJC_IVAR___GEOCompanionTransitAlightMessage__identifier;
  if ((v93 & 1) == 0)
  {
    goto LABEL_184;
  }

LABEL_183:
  *(a1 + v92[953]) |= 0x80u;
LABEL_184:
  if (v95 & 1 | ((v29 & 1) == 0))
  {
    *(a1 + v92[953]) |= 0x200u;
    *(a1 + v92[953]) |= 0x100u;
    *(a1 + v92[953]) |= 0x400u;
    goto LABEL_197;
  }

  if (v19)
  {
    while (2)
    {
      while (1)
      {
        v87 = *v19++;
        v86 = v87;
        v88 = v87 == 2;
        if (v87 > 2)
        {
          break;
        }

        if (v88)
        {
          v89 = 512;
LABEL_195:
          *(a1 + v92[953]) |= v89;
          continue;
        }

        if (!v86)
        {
          goto LABEL_197;
        }
      }

      if (v86 == 7)
      {
        v89 = 1024;
      }

      else
      {
        if (v86 != 3)
        {
          continue;
        }

        v89 = 256;
      }

      goto LABEL_195;
    }
  }

LABEL_197:
  if (v29)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v95)
  {
    v90 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEORouteLineStyleInfoReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (a1 + 76);
  v12 = vld1_dup_s16(v11);
  v13 = vand_s8(vshl_u16(v12, 0xFFFCFFFAFFFBFFF9), 0x1000100010001);
  v13.i16[0] = vaddv_s16(v13);
  v14 = v13.i32[0];
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

  v16 = v14 > 1;
  v17 = v16 & ~v10 | v8;
  v18 = v10 | v16;
  LODWORD(v76) = v17;
  HIDWORD(v76) = v18 | v8;
  if ((v18 | v7))
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v77 = (v19 == 0) | v18;
  v78 = v18;
  while (1)
  {
    v20 = objc_msgSend_position(v3, v76);
    if (v20 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_135:
      v29 = 1;
      goto LABEL_138;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LOBYTE(v79) = 0;
      v24 = objc_msgSend_position(v3) + 1;
      if (v24 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3) + 1, v25 <= [v3 length]))
      {
        v26 = [v3 data];
        [v26 getBytes:&v79 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v23 |= (v79 & 0x7F) << v21;
      if ((v79 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v27 = v22++ >= 9;
      if (v27)
      {
        v23 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v23 = 0;
    }

LABEL_33:
    v28 = [v3 hasError];
    v29 = 1;
    if ((v28 & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_138;
    }

    v30 = v23 >> 3;
    v31 = v78;
    if ((v77 & 1) == 0)
    {
      v32 = v19;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    if (v30 <= 3)
    {
      switch(v30)
      {
        case 1:
          if ((v7 & 1) == 0)
          {
            goto LABEL_112;
          }

          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v79) = 0;
            v48 = objc_msgSend_position(v3) + 1;
            if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
            {
              v50 = [v3 data];
              [v50 getBytes:&v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v47 |= (v79 & 0x7F) << v45;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v27 = v46++ >= 9;
            if (v27)
            {
              v44 = 0;
              goto LABEL_117;
            }
          }

          if ([v3 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v47;
          }

LABEL_117:
          v67 = 64;
          goto LABEL_128;
        case 2:
          if ((v7 & 1) == 0)
          {
            goto LABEL_112;
          }

          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 76) |= 4u;
          while (1)
          {
            LOBYTE(v79) = 0;
            v64 = objc_msgSend_position(v3) + 1;
            if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
            {
              v66 = [v3 data];
              [v66 getBytes:&v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v63 |= (v79 & 0x7F) << v61;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v27 = v62++ >= 9;
            if (v27)
            {
              v44 = 0;
              goto LABEL_127;
            }
          }

          if ([v3 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v63;
          }

LABEL_127:
          v67 = 68;
          goto LABEL_128;
        case 3:
          if ((v7 & 1) == 0)
          {
            goto LABEL_112;
          }

          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 76) |= 1u;
          while (1)
          {
            LOBYTE(v79) = 0;
            v41 = objc_msgSend_position(v3) + 1;
            if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
            {
              v43 = [v3 data];
              [v43 getBytes:&v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v40 |= (v79 & 0x7F) << v38;
            if ((v79 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v27 = v39++ >= 9;
            if (v27)
            {
              v44 = 0;
              goto LABEL_123;
            }
          }

          if ([v3 hasError])
          {
            v44 = 0;
          }

          else
          {
            v44 = v40;
          }

LABEL_123:
          v67 = 60;
LABEL_128:
          *(a1 + v67) = v44;
          goto LABEL_134;
      }

      goto LABEL_80;
    }

    if (v30 <= 5)
    {
      break;
    }

    if (v30 == 6)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_112;
      }

      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 76) |= 8u;
      while (1)
      {
        LOBYTE(v79) = 0;
        v57 = objc_msgSend_position(v3) + 1;
        if (v57 >= objc_msgSend_position(v3) && (v58 = objc_msgSend_position(v3) + 1, v58 <= [v3 length]))
        {
          v59 = [v3 data];
          [v59 getBytes:&v79 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v56 |= (v79 & 0x7F) << v54;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v27 = v55++ >= 9;
        if (v27)
        {
          v60 = 0;
          goto LABEL_119;
        }
      }

      v60 = (v56 != 0) & ~[v3 hasError];
LABEL_119:
      *(a1 + 72) = v60;
      goto LABEL_134;
    }

    if (v30 == 7)
    {
      if (!v31 || (*(a1 + 76) & 0x40) != 0)
      {
        goto LABEL_112;
      }

      v79 = 0;
      v80 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_137;
      }

      v36 = objc_alloc_init(GEOLaneChangeInfo);
      if (!GEOLaneChangeInfoReadAllFrom(v36, v3))
      {
        goto LABEL_136;
      }

      PBReaderRecallMark();
      [(GEORouteLineStyleInfo *)a1 _addNoFlagsLaneChangeInfo:v36];

      goto LABEL_134;
    }

LABEL_80:
    if ((v76 & 1) == 0 || (*(a1 + 76) & 0x10) != 0)
    {
LABEL_112:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_134;
    }

    if (!*(a1 + 16))
    {
      v51 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v52 = *(a1 + 16);
      *(a1 + 16) = v51;
    }

    if (!PBUnknownFieldAdd())
    {
      v29 = 0;
      v75 = &OBJC_IVAR___GEOFormattedString__reader;
      goto LABEL_139;
    }

LABEL_134:
    if (!(BYTE4(v76) & 1 | (v6 != 0)))
    {
      goto LABEL_135;
    }
  }

  if (v30 != 4)
  {
    if (!v31)
    {
      goto LABEL_112;
    }

    if ((*(a1 + 76) & 0x20) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_137;
      }

      v68 = *(a1 + 76) << 10;
      goto LABEL_133;
    }

    v79 = 0;
    v80 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_137;
    }

    v36 = objc_alloc_init(GEOLabelInfo);
    if (!GEOLabelInfoReadAllFrom(v36, v3, v9 & 1))
    {
      goto LABEL_136;
    }

    PBReaderRecallMark();
    v37 = 24;
    goto LABEL_91;
  }

  if (!v31)
  {
    goto LABEL_112;
  }

  if ((*(a1 + 76) & 0x80) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_137;
    }

    v68 = *(a1 + 76) << 8;
LABEL_133:
    v6 += v68 >> 15;
    goto LABEL_134;
  }

  v79 = 0;
  v80 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_137;
  }

  v36 = objc_alloc_init(GEOStyleAttributes);
  if (GEOStyleAttributesReadAllFrom(v36, v3))
  {
    PBReaderRecallMark();
    v37 = 40;
LABEL_91:
    v53 = *(a1 + v37);
    *(a1 + v37) = v36;

    --v6;
    goto LABEL_134;
  }

LABEL_136:

LABEL_137:
  v29 = 0;
LABEL_138:
  v75 = &OBJC_IVAR___GEOFormattedString__reader;
  if ((v76 & 1) == 0)
  {
    goto LABEL_140;
  }

LABEL_139:
  *(a1 + v75[508]) |= 0x10u;
LABEL_140:
  if (v78 & 1 | ((v29 & 1) == 0))
  {
    *(a1 + v75[508]) |= 0x80u;
    *(a1 + v75[508]) |= 0x20u;
    *(a1 + v75[508]) |= 0x40u;
    goto LABEL_153;
  }

  if (v19)
  {
    while (2)
    {
      while (1)
      {
        v70 = *v19++;
        v69 = v70;
        v71 = v70 == 4;
        if (v70 > 4)
        {
          break;
        }

        if (v71)
        {
          v72 = 128;
LABEL_151:
          *(a1 + v75[508]) |= v72;
          continue;
        }

        if (!v69)
        {
          goto LABEL_153;
        }
      }

      if (v69 == 7)
      {
        v72 = 64;
      }

      else
      {
        if (v69 != 5)
        {
          continue;
        }

        v72 = 32;
      }

      goto LABEL_151;
    }
  }

LABEL_153:
  if (v29)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v78)
  {
    v73 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOAdvisoriesInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAdvisoriesInfoReadAllFrom can only be called once per object"];
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
    v9 = &GEOAdvisoriesInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAdvisoriesInfoReadAllFrom_initialTag;
  }

  Specified = GEOAdvisoriesInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOAdvisoriesInfoCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOAdvisoriesInfoReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 84)), 0xFFFCFFFEFFFAFFFBLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 84) & 2) != 0) + (*(a1 + 84) & 1) + ((*(a1 + 84) & 8) != 0));
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
  LODWORD(v43) = v14;
  HIDWORD(v43) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v44 = (v16 == 0) | v15;
  v45 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v43);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_97:
      v26 = 1;
      goto LABEL_100;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v46) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v46 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v46 & 0x7F) << v18;
      if ((v46 & 0x80) == 0)
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
      goto LABEL_100;
    }

    v27 = v20 >> 3;
    v28 = v45;
    if ((v44 & 1) == 0)
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
        if (!v28 || (*(a1 + 84) & 0x20) != 0)
        {
          goto LABEL_87;
        }

        v46 = 0;
        v47 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_99;
        }

        v33 = objc_alloc_init(GEOAdvisoryNotice);
        if (!GEOAdvisoryNoticeReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_98;
        }

        PBReaderRecallMark();
        [(GEOAdvisoriesInfo *)a1 _addNoFlagsNoticeAdvisory:v33];
        goto LABEL_86;
      case 2:
        if (!v28)
        {
          goto LABEL_87;
        }

        if ((*(a1 + 84) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_99;
          }

          v38 = *(a1 + 84) << 6;
          goto LABEL_96;
        }

        v46 = 0;
        v47 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_99;
        }

        v33 = objc_alloc_init(GEOClickableAdvisory);
        if (!GEOClickableAdvisoryReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_98;
        }

        PBReaderRecallMark();
        v34 = 24;
LABEL_80:
        v37 = *(a1 + v34);
        *(a1 + v34) = v33;

        --v6;
        goto LABEL_88;
      case 3:
        if (!v28)
        {
          goto LABEL_87;
        }

        if ((*(a1 + 84) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_99;
          }

          v38 = 2 * *(a1 + 84);
          goto LABEL_96;
        }

        v46 = 0;
        v47 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_99;
        }

        v33 = objc_alloc_init(GEOAdvisoryNotice);
        if (!GEOAdvisoryNoticeReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_98;
        }

        PBReaderRecallMark();
        v34 = 64;
        goto LABEL_80;
    }

LABEL_69:
    if (v43 & 1) == 0 || (*(a1 + 84))
    {
      goto LABEL_87;
    }

    if (!*(a1 + 16))
    {
      v35 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v36 = *(a1 + 16);
      *(a1 + 16) = v35;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_101;
    }

LABEL_88:
    if (!(BYTE4(v43) & 1 | (v6 != 0)))
    {
      goto LABEL_97;
    }
  }

  if (v27 == 4)
  {
    if (!v28)
    {
      goto LABEL_87;
    }

    if ((*(a1 + 84) & 4) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_99;
      }

      v38 = 32 * *(a1 + 84);
LABEL_96:
      v6 += v38 >> 7;
      goto LABEL_88;
    }

    v46 = 0;
    v47 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_99;
    }

    v33 = objc_alloc_init(GEOAdvisoryNotice);
    if (!GEOAdvisoryNoticeReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_98;
    }

    PBReaderRecallMark();
    v34 = 32;
    goto LABEL_80;
  }

  if (v27 != 5)
  {
    if (v27 == 6)
    {
      if (!v28 || (*(a1 + 84) & 8) != 0)
      {
        goto LABEL_87;
      }

      v46 = 0;
      v47 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_99;
      }

      v33 = objc_alloc_init(GEOAdvisoryNotice);
      if (!GEOAdvisoryNoticeReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_98;
      }

      PBReaderRecallMark();
      [(GEOAdvisoriesInfo *)a1 _addNoFlagsGenericAdvisory:v33];
      goto LABEL_86;
    }

    goto LABEL_69;
  }

  if (!v28 || (*(a1 + 84) & 0x10) != 0)
  {
LABEL_87:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_88;
  }

  v46 = 0;
  v47 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_99;
  }

  v33 = objc_alloc_init(GEOAdvisoryNotice);
  if (GEOAdvisoryNoticeReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOAdvisoriesInfo *)a1 _addNoFlagsIncidentAdvisory:v33];
LABEL_86:

    goto LABEL_88;
  }

LABEL_98:

LABEL_99:
  v26 = 0;
LABEL_100:
  if ((v43 & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_101:
  *(a1 + 84) |= 1u;
LABEL_102:
  if (v45 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 84) |= 0x20u;
    *(a1 + 84) |= 2u;
    *(a1 + 84) |= 0x40u;
    *(a1 + 84) |= 4u;
    *(a1 + 84) |= 0x10u;
    *(a1 + 84) |= 8u;
    goto LABEL_119;
  }

  if (v16)
  {
    while (1)
    {
LABEL_105:
      v40 = *v16++;
      v39 = v40;
      if (v40 > 3)
      {
        if (v39 != 4)
        {
          if (v39 == 5)
          {
            LOBYTE(v39) = 16;
          }

          else
          {
            if (v39 != 6)
            {
              continue;
            }

            LOBYTE(v39) = 8;
          }
        }

        goto LABEL_117;
      }

      if (v39 > 1)
      {
        break;
      }

      if (v39 == 1)
      {
        LOBYTE(v39) = 32;
LABEL_117:
        *(a1 + 84) |= v39;
        continue;
      }

      if (!v39)
      {
        goto LABEL_119;
      }
    }

    if (v39 != 2)
    {
      if (v39 != 3)
      {
        goto LABEL_105;
      }

      LOBYTE(v39) = 64;
    }

    goto LABEL_117;
  }

LABEL_119:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v45)
  {
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOTrafficSignalReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOTrafficSignalReadAllFrom can only be called once per object"];
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
    v9 = &GEOTrafficSignalReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOTrafficSignalReadAllFrom_initialTag;
  }

  Specified = GEOTrafficSignalReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 32) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOTrafficSignalReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 4) & 1) + ((*(a1 + 60) >> 2) & 1);
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
  v57 = v12 & ~v9 | v6;
  v58 = v9 | v12 | v6;
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
LABEL_95:
      v24 = 1;
      goto LABEL_96;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v59[0]) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:v59 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v59[0] & 0x7F) << v16;
      if ((v59[0] & 0x80) == 0)
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
      goto LABEL_96;
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

    if (v25 > 2)
    {
      break;
    }

    if (v25 == 1)
    {
      if (!v26)
      {
        goto LABEL_78;
      }

      if ((*(a1 + 60) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_115;
        }

        v50 = 16 * *(a1 + 60);
LABEL_93:
        v8 += v50 >> 7;
        goto LABEL_94;
      }

      v46 = PBReaderReadString();
      v47 = *(a1 + 24);
      *(a1 + 24) = v46;
      goto LABEL_77;
    }

    if (v25 == 2)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_78;
      }

      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 60) |= 2u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v34 = objc_msgSend_position(v3) + 1;
        if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 1, v35 <= [v3 length]))
        {
          v36 = [v3 data];
          [v36 getBytes:v59 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v33 |= (v59[0] & 0x7F) << v31;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v22 = v32++ >= 9;
        if (v22)
        {
          v37 = 0;
          goto LABEL_83;
        }
      }

      if ([v3 hasError])
      {
        v37 = 0;
      }

      else
      {
        v37 = v33;
      }

LABEL_83:
      v49 = 56;
LABEL_88:
      *(a1 + v49) = v37;
      goto LABEL_94;
    }

LABEL_63:
    if ((v57 & 1) == 0 || (*(a1 + 60) & 4) != 0)
    {
LABEL_78:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_115;
      }

      goto LABEL_94;
    }

    if (!*(a1 + 16))
    {
      v44 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v45 = *(a1 + 16);
      *(a1 + 16) = v44;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      v56 = &OBJC_IVAR___GEOFormattedString__reader;
      goto LABEL_97;
    }

LABEL_94:
    if (!(v58 & 1 | (v8 != 0)))
    {
      goto LABEL_95;
    }
  }

  if (v25 != 3)
  {
    if (v25 == 4)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_78;
      }

      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v41 = objc_msgSend_position(v3) + 1;
        if (v41 >= objc_msgSend_position(v3) && (v42 = objc_msgSend_position(v3) + 1, v42 <= [v3 length]))
        {
          v43 = [v3 data];
          [v43 getBytes:v59 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v40 |= (v59[0] & 0x7F) << v38;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v38 += 7;
        v22 = v39++ >= 9;
        if (v22)
        {
          v37 = 0;
          goto LABEL_87;
        }
      }

      if ([v3 hasError])
      {
        v37 = 0;
      }

      else
      {
        v37 = v40;
      }

LABEL_87:
      v49 = 52;
      goto LABEL_88;
    }

    goto LABEL_63;
  }

  if (!v26)
  {
    goto LABEL_78;
  }

  if ((*(a1 + 60) & 0x10) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_115;
    }

    v50 = 8 * *(a1 + 60);
    goto LABEL_93;
  }

  v59[0] = 0;
  v59[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_115;
  }

  v48 = objc_alloc_init(GEOLatLng);
  if (GEOLatLngReadAllFrom(v48, v3))
  {
    PBReaderRecallMark();
    v47 = *(a1 + 32);
    *(a1 + 32) = v48;
LABEL_77:

    --v8;
    goto LABEL_94;
  }

LABEL_115:
  v24 = 0;
LABEL_96:
  v56 = &OBJC_IVAR___GEOFormattedString__reader;
  if ((v57 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  *(a1 + v56[803]) |= 4u;
LABEL_98:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v56[803]) |= 8u;
    *(a1 + v56[803]) |= 0x10u;
    goto LABEL_108;
  }

  if (v14)
  {
    while (1)
    {
      v52 = *v14++;
      v51 = v52;
      if (v52 == 1)
      {
        break;
      }

      if (v51 == 3)
      {
        v53 = 16;
LABEL_107:
        *(a1 + v56[803]) |= v53;
        continue;
      }

      if (!v51)
      {
        goto LABEL_108;
      }
    }

    v53 = 8;
    goto LABEL_107;
  }

LABEL_108:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_112:
    v54 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_112;
    }
  }

  return v3;
}

uint64_t GEONavigabilityInfoReadAllFrom(uint64_t a1, void *a2)
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
          goto LABEL_48;
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
          goto LABEL_48;
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
          *(a1 + 20) |= 2u;
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
              LOBYTE(v22) = 0;
              v23 = &OBJC_IVAR___GEONavigabilityInfo__isEvFeasible;
              goto LABEL_46;
            }
          }

          v23 = &OBJC_IVAR___GEONavigabilityInfo__isEvFeasible;
LABEL_45:
          v22 = (v17 != 0) & ~[v3 hasError];
LABEL_46:
          *(a1 + *v23) = v22;
          goto LABEL_47;
        }

        if (!*(a1 + 8))
        {
          v29 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v30 = *(a1 + 8);
          *(a1 + 8) = v29;
        }

        if ((PBUnknownFieldAdd() & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_47:
        v31 = objc_msgSend_position(v3);
        if (v31 >= [v3 length])
        {
          goto LABEL_48;
        }
      }

      v24 = 0;
      v25 = 0;
      v17 = 0;
      *(a1 + 20) |= 1u;
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
          LOBYTE(v22) = 0;
          v23 = &OBJC_IVAR___GEONavigabilityInfo__isBlocked;
          goto LABEL_46;
        }
      }

      v23 = &OBJC_IVAR___GEONavigabilityInfo__isBlocked;
      goto LABEL_45;
    }

LABEL_48:
    v32 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_49:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

uint64_t _GEOETAStepIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 56));
  v2 = *(a1 + 80);
  if ((v2 & 0x200) != 0)
  {
    return 1;
  }

  if ((v2 & 0x100) != 0)
  {
    if (GEOTimeCheckpointsIsDirty(*(a1 + 40)))
    {
      return 1;
    }

    v2 = *(a1 + 80);
  }

  if ((v2 & 0x40) == 0)
  {
    return (v2 >> 7) & 1;
  }

  return 1;
}

uint64_t _GEOInstructionSetIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 96));
  v2 = *(a1 + 104);
  if ((v2 & 0x400) != 0)
  {
    return 1;
  }

  if ((*(a1 + 104) & 0x200) != 0)
  {
    if (GEOTransitSignInstructionIsDirty(*(a1 + 80)))
    {
      return 1;
    }

    v2 = *(a1 + 104);
  }

  if ((v2 & 0x100) != 0)
  {
    if (GEOTransitListInstructionIsDirty(*(a1 + 72)))
    {
      return 1;
    }

    v2 = *(a1 + 104);
  }

  if ((v2 & 0x80) != 0)
  {
    return 1;
  }

  if ((v2 & 8) != 0)
  {
    if (GEOFormattedStringIsDirty(*(a1 + 32)))
    {
      return 1;
    }

    v2 = *(a1 + 104);
  }

  if ((v2 & 4) != 0)
  {
    if (GEOFormattedStringIsDirty(*(a1 + 24)))
    {
      return 1;
    }

    v2 = *(a1 + 104);
  }

  if ((v2 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  if (GEODrivingWalkingInstructionIsDirty(*(a1 + 48)))
  {
    return 1;
  }

  v2 = *(a1 + 104);
LABEL_18:
  if ((v2 & 0x10) != 0)
  {
    if (GEODrivingWalkingInstructionIsDirty(*(a1 + 40)))
    {
      return 1;
    }

    v2 = *(a1 + 104);
  }

  if ((v2 & 0x40) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56);

  return GEODrivingWalkingSpokenInstructionIsDirty(v4);
}

unsigned int *GEOJunctionElementWriteTo(unsigned int *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 12);
  if ((v3 & 1) == 0)
  {
    if ((result[3] & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PBDataWriterWriteInt32Field();
    if ((v2[3] & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PBDataWriterWriteSint32Field();
  v3 = *(v2 + 12);
  if ((v3 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v3 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return PBDataWriterWriteInt32Field();
}

uint64_t _GEOPBTransitArtworkIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 80));
  v2 = *(a1 + 96);
  if ((v2 & 0x400) != 0)
  {
    return 1;
  }

  if ((v2 & 0x200) != 0)
  {
    if (GEOPBTransitShieldIsDirty(*(a1 + 64)))
    {
      return 1;
    }

    v2 = *(a1 + 96);
  }

  if ((v2 & 0x80) != 0)
  {
    return 1;
  }

  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  if (GEOPBTransitShieldIsDirty(*(a1 + 40)))
  {
    return 1;
  }

  v2 = *(a1 + 96);
LABEL_9:
  if ((v2 & 0x110) != 0)
  {
    return 1;
  }

  return (v2 >> 5) & 1;
}

void *GEODirectionsRequestReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 340))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEODirectionsRequestReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 344));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 336) = objc_msgSend_position(v8);
  *(a1 + 340) = [v8 length];
  if (a3)
  {
    v9 = &GEODirectionsRequestReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEODirectionsRequestReadAllFrom_initialTag;
  }

  Specified = GEODirectionsRequestReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEODirectionsRequestCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 344));
  return Specified;
}

void *GEODirectionsRequestReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 344));
  [v3 setLength:*(a1 + 340)];
  [v3 seekToOffset:*(a1 + 336)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 384);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vdupq_n_s64(v11);
  v15 = vaddvq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBEE10), vshlq_u64(v14, xmmword_187FBE580)), v13)) + ((v11 >> 43) & 1) + ((v11 >> 49) & 1) + ((v11 >> 18) & 1) + vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBE550), vshlq_u64(v14, xmmword_187FBEE00)), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEDF0), v13))) + vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBEE70), vshlq_u64(v14, xmmword_187FBEE60)), v13), vandq_s8(vuzp1q_s32(vshlq_u64(v14, xmmword_187FBEE50), vshlq_u64(v14, xmmword_187FBEE40)), v13))) + (v11 >> 31) + vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEE30), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEE20), v13)));
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
      goto LABEL_15;
    }

    if (v16 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v15;
LABEL_15:
    ++v6;
  }

  if (v16 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v16 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_14;
  }

  v17 = v15 > 0x18;
  v140 = v9;
  v141 = v17 & ~v10 | v8;
  v18 = v10 | v17;
  v142 = v18 | v8;
  if ((v18 | v7))
  {
    v19 = 0;
  }

  else
  {
    v19 = a3;
  }

  v143 = (v19 == 0) | v18;
  v144 = v18;
  while (1)
  {
    v20 = objc_msgSend_position(v3);
    if (v20 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_435:
      v29 = 1;
      goto LABEL_438;
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    while (1)
    {
      LOBYTE(v145) = 0;
      v24 = objc_msgSend_position(v3) + 1;
      if (v24 >= objc_msgSend_position(v3) && (v25 = objc_msgSend_position(v3) + 1, v25 <= [v3 length]))
      {
        v26 = [v3 data];
        [v26 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v23 |= (v145 & 0x7F) << v21;
      if ((v145 & 0x80) == 0)
      {
        break;
      }

      v21 += 7;
      v27 = v22++ >= 9;
      if (v27)
      {
        v23 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v23 = 0;
    }

LABEL_33:
    v28 = [v3 hasError];
    v29 = 1;
    if ((v28 & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_438;
    }

    v30 = v23 >> 3;
    v31 = v144;
    if ((v143 & 1) == 0)
    {
      v32 = v19;
      do
      {
        v34 = *v32++;
        v33 = v34;
        v31 = v34 != 0;
        if (v34)
        {
          v35 = v33 == v30;
        }

        else
        {
          v35 = 1;
        }
      }

      while (!v35);
    }

    if (v30 <= 1024)
    {
      break;
    }

    switch(v30)
    {
      case 0x401:
        if ((v7 & 1) == 0)
        {
          goto LABEL_334;
        }

        *(a1 + 384) |= 0x10uLL;
        v145 = 0;
        v118 = objc_msgSend_position(v3) + 8;
        if (v118 >= objc_msgSend_position(v3) && (v119 = objc_msgSend_position(v3) + 8, v119 <= [v3 length]))
        {
          v133 = [v3 data];
          [v133 getBytes:&v145 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v128 = v145;
        v129 = 240;
LABEL_434:
        *(a1 + v129) = v128;
        goto LABEL_335;
      case 0x402:
        if ((v7 & 1) == 0)
        {
          goto LABEL_334;
        }

        *(a1 + 384) |= 8uLL;
        v145 = 0;
        v120 = objc_msgSend_position(v3) + 8;
        if (v120 >= objc_msgSend_position(v3) && (v121 = objc_msgSend_position(v3) + 8, v121 <= [v3 length]))
        {
          v134 = [v3 data];
          [v134 getBytes:&v145 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v128 = v145;
        v129 = 216;
        goto LABEL_434;
      case 0x4B1:
        if (!v31)
        {
          goto LABEL_334;
        }

        if ((*(a1 + 390) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_437;
          }

          v126 = *(a1 + 384) << 14;
          goto LABEL_420;
        }

        v38 = PBReaderReadString();
        v39 = 328;
LABEL_288:
        v115 = *(a1 + v39);
        *(a1 + v39) = v38;
        goto LABEL_300;
    }

LABEL_328:
    if ((v141 & 1) == 0 || (*(a1 + 386) & 4) != 0)
    {
LABEL_334:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_437;
      }

      goto LABEL_335;
    }

    if (!*(a1 + 16))
    {
      v122 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v123 = *(a1 + 16);
      *(a1 + 16) = v122;
    }

    if (!PBUnknownFieldAdd())
    {
      v29 = 0;
      goto LABEL_439;
    }

LABEL_335:
    if (!(v142 & 1 | (v6 != 0)))
    {
      goto LABEL_435;
    }
  }

  switch(v30)
  {
    case 1:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 389) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 22;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEORouteAttributes);
      if (!GEORouteAttributesReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 248;
      goto LABEL_299;
    case 3:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v101 = 0;
      v102 = 0;
      v103 = 0;
      *(a1 + 384) |= 0x200uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v104 = objc_msgSend_position(v3) + 1;
        if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
        {
          v106 = [v3 data];
          [v106 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v103 |= (v145 & 0x7F) << v101;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v101 += 7;
        v27 = v102++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_371;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v103;
      }

LABEL_371:
      v124 = 356;
      goto LABEL_427;
    case 4:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 387) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 38;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOLocation);
      if (!GEOLocationReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 88;
      goto LABEL_299;
    case 5:
      if (!v31)
      {
        goto LABEL_334;
      }

      if (*(a1 + 387))
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 39;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOMapRegion);
      if (!GEOMapRegionReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 80;
      goto LABEL_299;
    case 6:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 388) & 4) == 0)
      {
        v38 = PBReaderReadData();
        v39 = 176;
        goto LABEL_288;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_437;
      }

      v126 = *(a1 + 384) << 29;
      goto LABEL_420;
    case 7:
      if (!v31 || (*(a1 + 388) & 8) != 0)
      {
        goto LABEL_334;
      }

      v36 = PBReaderReadData();
      if (v36)
      {
        [(GEODirectionsRequest *)a1 _addNoFlagsOriginalRouteZilchPoints:v36];
      }

      goto LABEL_319;
    case 8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v107 = 0;
      v108 = 0;
      v109 = 0;
      *(a1 + 384) |= 0x2000uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v110 = objc_msgSend_position(v3) + 1;
        if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
        {
          v112 = [v3 data];
          [v112 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v109 |= (v145 & 0x7F) << v107;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v107 += 7;
        v27 = v108++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_375;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v109;
      }

LABEL_375:
      v124 = 372;
      goto LABEL_427;
    case 9:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 386) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 42;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOClientCapabilities);
      if (!GEOClientCapabilitiesReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 56;
      goto LABEL_299;
    case 10:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 388) & 2) == 0)
      {
        v38 = PBReaderReadData();
        v39 = 168;
        goto LABEL_288;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_437;
      }

      v126 = *(a1 + 384) << 30;
      goto LABEL_420;
    case 16:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      *(a1 + 384) |= 0x80uLL;
      LODWORD(v145) = 0;
      v113 = objc_msgSend_position(v3) + 4;
      if (v113 >= objc_msgSend_position(v3) && (v114 = objc_msgSend_position(v3) + 4, v114 <= [v3 length]))
      {
        v131 = [v3 data];
        [v131 getBytes:&v145 range:{objc_msgSend_position(v3), 4}];

        [v3 setPosition:objc_msgSend_position(v3) + 4];
      }

      else
      {
        [v3 _setError];
      }

      v55 = v145;
      v124 = 348;
      goto LABEL_427;
    case 18:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v95 = 0;
      v96 = 0;
      v97 = 0;
      *(a1 + 384) |= 0x8000uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v98 = objc_msgSend_position(v3) + 1;
        if (v98 >= objc_msgSend_position(v3) && (v99 = objc_msgSend_position(v3) + 1, v99 <= [v3 length]))
        {
          v100 = [v3 data];
          [v100 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v97 |= (v145 & 0x7F) << v95;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v95 += 7;
        v27 = v96++ >= 9;
        if (v27)
        {
          v62 = 0;
          goto LABEL_366;
        }
      }

      v62 = (v97 != 0) & ~[v3 hasError];
LABEL_366:
      v125 = 380;
      goto LABEL_367;
    case 19:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v146 = 0;
      if (!PBReaderPlaceMark() || (GEOSessionIDReadAllFrom((a1 + 24), v3) & 1) == 0)
      {
        goto LABEL_437;
      }

      PBReaderRecallMark();
      *(a1 + 384) |= 1uLL;
      goto LABEL_335;
    case 20:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 387) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 34;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEODirectionsRequestFeedback);
      if (!GEODirectionsRequestFeedbackReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 136;
      goto LABEL_299;
    case 21:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 386) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 43;
LABEL_420:
        v6 += v126 >> 63;
        goto LABEL_335;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOAdditionalEnabledMarkets);
      if (GEOAdditionalEnabledMarketsReadAllFrom(v36, v3, v140 & 1))
      {
        PBReaderRecallMark();
        v37 = 48;
LABEL_299:
        v115 = *(a1 + v37);
        *(a1 + v37) = v36;
LABEL_300:

        --v6;
        goto LABEL_335;
      }

LABEL_436:

LABEL_437:
      v29 = 0;
LABEL_438:
      if (v141)
      {
LABEL_439:
        *(a1 + 384) |= 0x40000uLL;
      }

      if (v144 || (v29 & 1) == 0)
      {
        *(a1 + 384) |= 0x3FFFFFFF80000uLL;
        goto LABEL_481;
      }

      if (v19)
      {
        while (1)
        {
          v136 = *v19++;
          v135 = v136;
          if (v136 <= 99)
          {
            v137 = 0x20000000000;
            switch(v135)
            {
              case 0:
                goto LABEL_481;
              case 1:
                goto LABEL_480;
              case 4:
                v137 = 0x2000000;
                goto LABEL_480;
              case 5:
                v137 = 0x1000000;
                goto LABEL_480;
              case 6:
                v137 = 0x400000000;
                goto LABEL_480;
              case 7:
                v137 = 0x800000000;
                goto LABEL_480;
              case 9:
                v137 = 0x200000;
                goto LABEL_480;
              case 10:
                v137 = 0x200000000;
                goto LABEL_480;
              case 20:
                v137 = 0x20000000;
                goto LABEL_480;
              case 21:
                v137 = 0x100000;
                goto LABEL_480;
              case 22:
                v137 = 0x1000000000000;
                goto LABEL_480;
              case 23:
                v137 = 0x1000000000;
                goto LABEL_480;
              case 25:
                v137 = 0x80000000000;
                goto LABEL_480;
              case 27:
                v137 = 0x800000;
                goto LABEL_480;
              case 28:
                v137 = 0x80000000;
                goto LABEL_480;
              case 29:
                v137 = 0x40000000;
                goto LABEL_480;
              case 31:
                v137 = 0x80000;
                goto LABEL_480;
              case 32:
                v137 = 0x4000000;
                goto LABEL_480;
              case 34:
                v137 = 0x100000000;
                goto LABEL_480;
              case 36:
                v137 = 0x2000000000;
                goto LABEL_480;
              case 37:
                v137 = 0x4000000000;
                goto LABEL_480;
              case 39:
                v137 = 0x10000000000;
                goto LABEL_480;
              case 40:
                v137 = 0x8000000000;
                goto LABEL_480;
              case 42:
                v137 = 0x400000000000;
                goto LABEL_480;
              case 43:
                v137 = 0x8000000;
                goto LABEL_480;
              case 44:
                v137 = 0x400000;
                goto LABEL_480;
              case 45:
                v137 = 0x800000000000;
                goto LABEL_480;
              case 46:
                v137 = 0x10000000;
                goto LABEL_480;
              default:
                continue;
            }

            break;
          }

          if (v135 > 101)
          {
            if (v135 == 102)
            {
              v137 = 0x200000000000;
            }

            else
            {
              if (v135 != 1201)
              {
                continue;
              }

              v137 = 0x2000000000000;
            }
          }

          else if (v135 == 100)
          {
            v137 = 0x40000000000;
          }

          else
          {
            if (v135 != 101)
            {
              continue;
            }

            v137 = 0x100000000000;
          }

LABEL_480:
          *(a1 + 384) |= v137;
        }
      }

LABEL_481:
      if (v29)
      {
        v3 = ([v3 hasError] ^ 1);
      }

      else
      {
        v3 = 0;
      }

      if (v144)
      {
        v138 = *(a1 + 8);
        *(a1 + 8) = 0;
      }

      return v3;
    case 22:
      if (!v31 || (*(a1 + 390) & 1) != 0)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOWaypointTyped);
      if (!GEOWaypointTypedReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      [(GEODirectionsRequest *)a1 _addNoFlagsWaypointTyped:v36];
      goto LABEL_319;
    case 23:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 388) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 27;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOOriginalRoute);
      if (!GEOOriginalRouteReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 192;
      goto LABEL_299;
    case 24:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v71 = 0;
      v72 = 0;
      v73 = 0;
      *(a1 + 384) |= 0x1000uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v74 = objc_msgSend_position(v3) + 1;
        if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
        {
          v76 = [v3 data];
          [v76 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v73 |= (v145 & 0x7F) << v71;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v71 += 7;
        v27 = v72++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_354;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v73;
      }

LABEL_354:
      v124 = 368;
      goto LABEL_427;
    case 25:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 389) & 8) == 0)
      {
        v38 = PBReaderReadData();
        v39 = 280;
        goto LABEL_288;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_437;
      }

      v126 = *(a1 + 384) << 20;
      goto LABEL_420;
    case 26:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v89 = 0;
      v90 = 0;
      v91 = 0;
      *(a1 + 384) |= 0x10000uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v92 = objc_msgSend_position(v3) + 1;
        if (v92 >= objc_msgSend_position(v3) && (v93 = objc_msgSend_position(v3) + 1, v93 <= [v3 length]))
        {
          v94 = [v3 data];
          [v94 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v91 |= (v145 & 0x7F) << v89;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v89 += 7;
        v27 = v90++ >= 9;
        if (v27)
        {
          v62 = 0;
          goto LABEL_364;
        }
      }

      v62 = (v91 != 0) & ~[v3 hasError];
LABEL_364:
      v125 = 381;
      goto LABEL_367;
    case 27:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 386) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 40;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOCommonOptions);
      if (!GEOCommonOptionsReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 72;
      goto LABEL_299;
    case 28:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 387) & 0x80) == 0)
      {
        v38 = PBReaderReadString();
        v39 = 152;
        goto LABEL_288;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_437;
      }

      v126 = *(a1 + 384) << 32;
      goto LABEL_420;
    case 29:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 387) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 33;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOLocation);
      if (!GEOLocationReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 144;
      goto LABEL_299;
    case 30:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v77 = 0;
      v78 = 0;
      v79 = 0;
      *(a1 + 384) |= 0x800uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v80 = objc_msgSend_position(v3) + 1;
        if (v80 >= objc_msgSend_position(v3) && (v81 = objc_msgSend_position(v3) + 1, v81 <= [v3 length]))
        {
          v82 = [v3 data];
          [v82 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v79 |= (v145 & 0x7F) << v77;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v77 += 7;
        v27 = v78++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_358;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v79;
      }

LABEL_358:
      v124 = 364;
      goto LABEL_427;
    case 31:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 386) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 44;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOPDABClientDatasetMetadata);
      if (!GEOPDABClientDatasetMetadataReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 40;
      goto LABEL_299;
    case 32:
      if (!v31 || (*(a1 + 387) & 4) != 0)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOLocation);
      if (!GEOLocationReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      [(GEODirectionsRequest *)a1 _addNoFlagsDeviceHistoricalLocation:v36];
      goto LABEL_319;
    case 33:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      *(a1 + 384) |= 0x400uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v52 = objc_msgSend_position(v3) + 1;
        if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
        {
          v54 = [v3 data];
          [v54 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v51 |= (v145 & 0x7F) << v49;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v27 = v50++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_344;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v51;
      }

LABEL_344:
      v124 = 360;
      goto LABEL_427;
    case 34:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 388) & 1) == 0)
      {
        v38 = PBReaderReadData();
        v39 = 160;
        goto LABEL_288;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_437;
      }

      v126 = *(a1 + 384) << 31;
      goto LABEL_420;
    case 35:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      *(a1 + 384) |= 0x40uLL;
      v145 = 0;
      v69 = objc_msgSend_position(v3) + 8;
      if (v69 >= objc_msgSend_position(v3) && (v70 = objc_msgSend_position(v3) + 8, v70 <= [v3 length]))
      {
        v130 = [v3 data];
        [v130 getBytes:&v145 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v128 = v145;
      v129 = 272;
      goto LABEL_434;
    case 36:
      if (!v31 || (*(a1 + 388) & 0x20) != 0)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOStopStepEVInfo);
      if (!GEOStopStepEVInfoReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      [(GEODirectionsRequest *)a1 _addNoFlagsOriginalRouteEvInfo:v36];
      goto LABEL_319;
    case 37:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 388) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 25;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOOriginalWaypointRoute);
      if (!GEOOriginalWaypointRouteReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 208;
      goto LABEL_299;
    case 38:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v83 = 0;
      v84 = 0;
      v85 = 0;
      *(a1 + 384) |= 0x100uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v86 = objc_msgSend_position(v3) + 1;
        if (v86 >= objc_msgSend_position(v3) && (v87 = objc_msgSend_position(v3) + 1, v87 <= [v3 length]))
        {
          v88 = [v3 data];
          [v88 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v85 |= (v145 & 0x7F) << v83;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v83 += 7;
        v27 = v84++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_362;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v85;
      }

LABEL_362:
      v124 = 352;
      goto LABEL_427;
    case 39:
      if (!v31)
      {
        goto LABEL_334;
      }

      if (*(a1 + 389))
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 23;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEORecentLocationHistory);
      if (!GEORecentLocationHistoryReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 232;
      goto LABEL_299;
    case 40:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 388) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 24;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOPrivacyMetadata);
      if (!GEOPrivacyMetadataReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 224;
      goto LABEL_299;
    case 42:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 389) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 17;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOTripInfo);
      if (!GEOTripInfoReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 304;
      goto LABEL_299;
    case 43:
      if (!v31 || (*(a1 + 387) & 8) != 0)
      {
        goto LABEL_334;
      }

      v36 = PBReaderReadString();
      if (v36)
      {
        [(GEODirectionsRequest *)a1 _addNoFlagsDisplayedBannerId:v36];
      }

      goto LABEL_319;
    case 44:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 386) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 41;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOClientFeedbackInfo);
      if (!GEOClientFeedbackInfoReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 64;
      goto LABEL_299;
    case 45:
      if (!v31 || (*(a1 + 389) & 0x80) != 0)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOUserIncidentReport);
      if (!GEOUserIncidentReportReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      [(GEODirectionsRequest *)a1 _addNoFlagsUserIncidentReport:v36];
      goto LABEL_319;
    case 46:
      if (!v31)
      {
        goto LABEL_334;
      }

      if ((*(a1 + 387) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_437;
        }

        v126 = *(a1 + 384) << 35;
        goto LABEL_420;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOFamiliarWaypointRoute);
      if (!GEOFamiliarWaypointRouteReadAllFrom(v36, v3, v140 & 1))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      v37 = 128;
      goto LABEL_299;
    case 47:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      *(a1 + 384) |= 0x20uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v45 = objc_msgSend_position(v3) + 1;
        if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
        {
          v47 = [v3 data];
          [v47 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v44 |= (v145 & 0x7F) << v42;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v42 += 7;
        v27 = v43++ >= 9;
        if (v27)
        {
          v48 = 0;
          goto LABEL_340;
        }
      }

      if ([v3 hasError])
      {
        v48 = 0;
      }

      else
      {
        v48 = v44;
      }

LABEL_340:
      *(a1 + 264) = v48;
      goto LABEL_335;
    case 48:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      *(a1 + 384) |= 0x20000uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v59 = objc_msgSend_position(v3) + 1;
        if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
        {
          v61 = [v3 data];
          [v61 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v58 |= (v145 & 0x7F) << v56;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v56 += 7;
        v27 = v57++ >= 9;
        if (v27)
        {
          v62 = 0;
          goto LABEL_346;
        }
      }

      v62 = (v58 != 0) & ~[v3 hasError];
LABEL_346:
      v125 = 382;
LABEL_367:
      *(a1 + v125) = v62;
      goto LABEL_335;
    case 49:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      *(a1 + 384) |= 2uLL;
      v145 = 0;
      v40 = objc_msgSend_position(v3) + 8;
      if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 8, v41 <= [v3 length]))
      {
        v127 = [v3 data];
        [v127 getBytes:&v145 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v128 = v145;
      v129 = 112;
      goto LABEL_434;
    case 50:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      *(a1 + 384) |= 4uLL;
      v145 = 0;
      v116 = objc_msgSend_position(v3) + 8;
      if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 8, v117 <= [v3 length]))
      {
        v132 = [v3 data];
        [v132 getBytes:&v145 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v128 = v145;
      v129 = 120;
      goto LABEL_434;
    case 100:
      if (!v31 || (*(a1 + 389) & 4) != 0)
      {
        goto LABEL_334;
      }

      v145 = 0;
      v146 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_437;
      }

      v36 = objc_alloc_init(GEOGeoServiceTag);
      if (!GEOGeoServiceTagReadAllFrom(v36, v3))
      {
        goto LABEL_436;
      }

      PBReaderRecallMark();
      [(GEODirectionsRequest *)a1 _addNoFlagsServiceTag:v36];
LABEL_319:

      goto LABEL_335;
    case 101:
      if (!v31 || (*(a1 + 389) & 0x10) != 0)
      {
        goto LABEL_334;
      }

      v36 = PBReaderReadData();
      if (v36)
      {
        [(GEODirectionsRequest *)a1 _addNoFlagsTrafficApiResponses:v36];
      }

      goto LABEL_319;
    case 102:
      if (!v31 || (*(a1 + 389) & 0x20) != 0)
      {
        goto LABEL_334;
      }

      v36 = PBReaderReadString();
      if (v36)
      {
        [(GEODirectionsRequest *)a1 _addNoFlagsTrafficSnapshotIds:v36];
      }

      goto LABEL_319;
    case 103:
      if ((v7 & 1) == 0)
      {
        goto LABEL_334;
      }

      v63 = 0;
      v64 = 0;
      v65 = 0;
      *(a1 + 384) |= 0x4000uLL;
      while (1)
      {
        LOBYTE(v145) = 0;
        v66 = objc_msgSend_position(v3) + 1;
        if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
        {
          v68 = [v3 data];
          [v68 getBytes:&v145 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v65 |= (v145 & 0x7F) << v63;
        if ((v145 & 0x80) == 0)
        {
          break;
        }

        v63 += 7;
        v27 = v64++ >= 9;
        if (v27)
        {
          v55 = 0;
          goto LABEL_350;
        }
      }

      if ([v3 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v65;
      }

LABEL_350:
      v124 = 376;
LABEL_427:
      *(a1 + v124) = v55;
      goto LABEL_335;
    default:
      goto LABEL_328;
  }
}