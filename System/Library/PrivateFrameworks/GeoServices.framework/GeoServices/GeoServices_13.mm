void *GEOPDSourceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDSourceReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDSourceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDSourceReadAllFrom_initialTag;
  }

  Specified = GEOPDSourceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDSourceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 56) >> 2) & 1) + ((*(a1 + 56) >> 3) & 1) + ((*(a1 + 56) >> 1) & 1);
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
  LODWORD(v50) = v12 & ~v6 | v7;
  HIDWORD(v50) = v6 | v12 | v7;
  if (((v6 | v12) | v8))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  while (1)
  {
    v15 = objc_msgSend_position(v3, v50);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_77:
      v24 = 1;
      goto LABEL_78;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v51 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v51 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v51 & 0x7F) << v16;
      if ((v51 & 0x80) == 0)
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
    if ((v23 & 1) != 0 || (v18 & 7) == 4)
    {
      goto LABEL_78;
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

    if (v25 == 2)
    {
      if (!v26)
      {
        goto LABEL_65;
      }

      if ((*(a1 + 56) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_96;
        }

        v43 = 32 * *(a1 + 56);
        goto LABEL_76;
      }

      v38 = PBReaderReadString();
      v39 = 24;
      goto LABEL_58;
    }

    if (v25 == 1)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_65;
      }

      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        v52 = 0;
        v34 = objc_msgSend_position(v3) + 1;
        if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 1, v35 <= [v3 length]))
        {
          v36 = [v3 data];
          [v36 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v33 |= (v52 & 0x7F) << v31;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v22 = v32++ >= 9;
        if (v22)
        {
          v37 = 0;
          goto LABEL_71;
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

LABEL_71:
      *(a1 + 52) = v37;
    }

    else
    {
      if ((v50 & 1) == 0 || (*(a1 + 56) & 2) != 0)
      {
LABEL_65:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_66;
      }

      if (!*(a1 + 16))
      {
        v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v42 = *(a1 + 16);
        *(a1 + 16) = v41;
      }

      if (!PBUnknownFieldAdd())
      {
        v24 = 0;
        v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
        goto LABEL_79;
      }
    }

LABEL_66:
    if (!(BYTE4(v50) & 1 | (v9 != 0)))
    {
      goto LABEL_77;
    }
  }

  if (!v26)
  {
    goto LABEL_65;
  }

  if ((*(a1 + 56) & 8) == 0)
  {
    v38 = PBReaderReadString();
    v39 = 32;
LABEL_58:
    v40 = *(a1 + v39);
    *(a1 + v39) = v38;

    --v9;
    goto LABEL_66;
  }

  if (PBReaderSkipValueWithTag())
  {
    v43 = 16 * *(a1 + 56);
LABEL_76:
    v9 += v43 >> 7;
    goto LABEL_66;
  }

LABEL_96:
  v24 = 0;
LABEL_78:
  v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v50 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_79:
  *(a1 + v49[333]) |= 2u;
LABEL_80:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v49[333]) |= 4u;
    *(a1 + v49[333]) |= 8u;
    goto LABEL_90;
  }

  if (v14)
  {
    while (1)
    {
      v45 = *v14++;
      v44 = v45;
      if (v45 == 2)
      {
        break;
      }

      if (v44 == 3)
      {
        v46 = 8;
LABEL_89:
        *(a1 + v49[333]) |= v46;
        continue;
      }

      if (!v44)
      {
        goto LABEL_90;
      }
    }

    v46 = 4;
    goto LABEL_89;
  }

LABEL_90:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_94:
    v47 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_94;
    }
  }

  return v3;
}

uint64_t GEOPDPlacecardLayoutConfigurationReadAllFrom(void *a1, void *a2, int a3)
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

          v16 = objc_alloc_init(GEOPDModuleLayoutEntry);
          if (!GEOPDModuleLayoutEntryReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [a1 addEntries:v16];
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

void *GEOPDModuleLayoutEntryReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDModuleLayoutEntryReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDModuleLayoutEntryReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDModuleLayoutEntryReadAllFrom_initialTag;
  }

  Specified = GEOPDModuleLayoutEntryReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDModuleLayoutEntryCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDModuleLayoutEntryReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 68)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFBFFFCFFFDLL) & 0xFF01FF01FF01FF01));
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
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v59) = v14;
  HIDWORD(v59) = v15 | v8;
  if ((v15 | v6))
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
LABEL_102:
      v26 = 1;
      goto LABEL_103;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v62[0]) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:v62 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v62[0] & 0x7F) << v18;
      if ((v62[0] & 0x80) == 0)
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
      goto LABEL_103;
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

    if (v27 > 2)
    {
      break;
    }

    if (v27 == 1)
    {
      if (!v28 || (*(a1 + 68) & 8) != 0)
      {
LABEL_87:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_125;
        }

        goto LABEL_98;
      }

      v48 = PBReaderReadString();
      if (v48)
      {
        [(GEOPDModuleLayoutEntry *)a1 _addNoFlagsApplicationId:v48];
      }

      goto LABEL_80;
    }

    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_87;
      }

      if ((*(a1 + 68) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_125;
        }

        v7 += *(a1 + 68) << 27 >> 31;
      }

      else
      {
        v40 = PBReaderReadString();
        v41 = *(a1 + 32);
        *(a1 + 32) = v40;

        --v7;
      }

      goto LABEL_98;
    }

LABEL_81:
    if ((v59 & 1) == 0 || (*(a1 + 68) & 4) != 0)
    {
      goto LABEL_87;
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
      v58 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_104;
    }

LABEL_98:
    if (!(BYTE4(v59) & 1 | (v7 != 0)))
    {
      goto LABEL_102;
    }
  }

  if (v27 == 3)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_87;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    *(a1 + 68) |= 1u;
    while (1)
    {
      LOBYTE(v62[0]) = 0;
      v45 = objc_msgSend_position(v3) + 1;
      if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
      {
        v47 = [v3 data];
        [v47 getBytes:v62 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v44 |= (v62[0] & 0x7F) << v42;
      if ((v62[0] & 0x80) == 0)
      {
        break;
      }

      v42 += 7;
      v24 = v43++ >= 9;
      if (v24)
      {
        v39 = 0;
        goto LABEL_92;
      }
    }

    if ([v3 hasError])
    {
      v39 = 0;
    }

    else
    {
      v39 = v44;
    }

LABEL_92:
    v51 = 60;
    goto LABEL_97;
  }

  if (v27 != 4)
  {
    if (v27 == 5)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_87;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 68) |= 2u;
      while (1)
      {
        LOBYTE(v62[0]) = 0;
        v36 = objc_msgSend_position(v3) + 1;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
        {
          v38 = [v3 data];
          [v38 getBytes:v62 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v35 |= (v62[0] & 0x7F) << v33;
        if ((v62[0] & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v24 = v34++ >= 9;
        if (v24)
        {
          v39 = 0;
          goto LABEL_96;
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

LABEL_96:
      v51 = 64;
LABEL_97:
      *(a1 + v51) = v39;
      goto LABEL_98;
    }

    goto LABEL_81;
  }

  if (!v28 || (*(a1 + 68) & 0x20) != 0)
  {
    goto LABEL_87;
  }

  v62[0] = 0;
  v62[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_125;
  }

  v48 = objc_alloc_init(GEOPDModule);
  if (GEOPDModuleReadAllFrom(v48, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDModuleLayoutEntry *)a1 _addNoFlagsModules:v48];
LABEL_80:

    goto LABEL_98;
  }

LABEL_125:
  v26 = 0;
LABEL_103:
  v58 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v59 & 1) == 0)
  {
    goto LABEL_105;
  }

LABEL_104:
  *(a1 + v58[898]) |= 4u;
LABEL_105:
  if (v61 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v58[898]) |= 8u;
    *(a1 + v58[898]) |= 0x10u;
    *(a1 + v58[898]) |= 0x20u;
    goto LABEL_118;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v53 = *v16++;
        v52 = v53;
        v54 = v53 == 1;
        if (v53 > 1)
        {
          break;
        }

        if (v54)
        {
          v55 = 8;
LABEL_116:
          *(a1 + v58[898]) |= v55;
          continue;
        }

        if (!v52)
        {
          goto LABEL_118;
        }
      }

      if (v52 == 4)
      {
        v55 = 32;
      }

      else
      {
        if (v52 != 2)
        {
          continue;
        }

        v55 = 16;
      }

      goto LABEL_116;
    }
  }

LABEL_118:
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

void *GEOPDRelatedPlaceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDRelatedPlaceReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDRelatedPlaceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDRelatedPlaceReadAllFrom_initialTag;
  }

  Specified = GEOPDRelatedPlaceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDRelatedPlaceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOPDRelatedPlaceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 72) >> 3) & 1) + ((*(a1 + 72) >> 2) & 1) + ((*(a1 + 72) >> 1) & 1);
  while (1)
  {
    v11 = a3[v7];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
      goto LABEL_15;
    }

    if (v11 == -3)
    {
      v6 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v10;
LABEL_15:
    ++v7;
  }

  if (v11 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v11 == -1)
  {
    v8 = 1;
LABEL_11:
    v9 = 1;
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = v10 != 0;
  v64 = v12 & ~v9 | v8;
  v13 = v9 | v12;
  if ((v13 | v6))
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
    v66 = (v14 == 0) | v13;
    v65 = (v7 != 0) | v13 | v8;
    do
    {
      if ([v3 hasError])
      {
        break;
      }

      v16 = v13;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v67) = 0;
        v20 = objc_msgSend_position(v3) + 1;
        if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
        {
          v22 = [v3 data];
          [v22 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v19 |= (v67 & 0x7F) << v17;
        if ((v67 & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v23 = v18++ >= 9;
        if (v23)
        {
          v19 = 0;
          goto LABEL_33;
        }
      }

      if ([v3 hasError])
      {
        v19 = 0;
      }

LABEL_33:
      v24 = [v3 hasError];
      v25 = 1;
      v13 = v16;
      if (v24)
      {
        goto LABEL_106;
      }

      v26 = v19 & 7;
      if (v26 == 4)
      {
        goto LABEL_106;
      }

      v27 = v19 >> 3;
      v28 = v16;
      if ((v66 & 1) == 0)
      {
        v29 = v14;
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

      switch(v27)
      {
        case 3:
          if (v28 && (*(a1 + 72) & 4) == 0)
          {
            if (v26 == 2)
            {
              v67 = 0;
              v68 = 0;
              v25 = PBReaderPlaceMark();
              if (!v25)
              {
                goto LABEL_106;
              }

              while (1)
              {
                v41 = objc_msgSend_position(v3);
                if (v41 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
                {
                  break;
                }

                v42 = 0;
                v43 = 0;
                v44 = 0;
                while (1)
                {
                  v69 = 0;
                  v45 = objc_msgSend_position(v3) + 1;
                  if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
                  {
                    v47 = [v3 data];
                    [v47 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

                    [v3 setPosition:objc_msgSend_position(v3) + 1];
                  }

                  else
                  {
                    [v3 _setError];
                  }

                  v44 |= (v69 & 0x7F) << v42;
                  if ((v69 & 0x80) == 0)
                  {
                    break;
                  }

                  v42 += 7;
                  v23 = v43++ >= 9;
                  if (v23)
                  {
                    goto LABEL_76;
                  }
                }

                [v3 hasError];
LABEL_76:
                PBRepeatedUInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v63 = 24;
              while (1)
              {
                LOBYTE(v67) = 0;
                v54 = objc_msgSend_position(v3, v63) + 1;
                if (v54 >= objc_msgSend_position(v3) && (v55 = objc_msgSend_position(v3) + 1, v55 <= [v3 length]))
                {
                  v56 = [v3 data];
                  [v56 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v53 |= (v67 & 0x7F) << v51;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                v23 = v52++ >= 9;
                if (v23)
                {
                  goto LABEL_104;
                }
              }

              [v3 hasError];
LABEL_104:
              PBRepeatedUInt32Add();
            }

LABEL_89:
            v13 = v16;
LABEL_90:
            if ((v65 & 1) == 0)
            {
              goto LABEL_105;
            }

            goto LABEL_91;
          }

          break;
        case 2:
          if (v6)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v67) = 0;
              v37 = objc_msgSend_position(v3) + 1;
              if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
              {
                v39 = [v3 data];
                [v39 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v36 |= (v67 & 0x7F) << v34;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v23 = v35++ >= 9;
              if (v23)
              {
                v40 = 0;
                goto LABEL_88;
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

LABEL_88:
            *(a1 + 68) = v40;
            goto LABEL_89;
          }

          break;
        case 1:
          if (v28 && (*(a1 + 72) & 8) == 0)
          {
            v67 = 0;
            v68 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_125;
            }

            v33 = objc_alloc_init(GEOPDMapsIdentifier);
            if (!GEOPDMapsIdentifierReadAllFrom(v33, v3))
            {

LABEL_125:
              v25 = 0;
              goto LABEL_106;
            }

            PBReaderRecallMark();
            [(GEOPDRelatedPlace *)a1 _addNoFlagsMapsId:v33];

            goto LABEL_90;
          }

          break;
        default:
          if ((v64 & 1) != 0 && (*(a1 + 72) & 2) == 0)
          {
            if (!*(a1 + 16))
            {
              v48 = objc_alloc_init(MEMORY[0x1E69C65D8]);
              v49 = *(a1 + 16);
              *(a1 + 16) = v48;
            }

            v25 = PBUnknownFieldAdd();
            if (!v25)
            {
              v62 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
              goto LABEL_107;
            }

            goto LABEL_90;
          }

          break;
      }

      v25 = PBReaderSkipValueWithTag();
      if ((v25 & v65 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_91:
      v50 = objc_msgSend_position(v3);
    }

    while (v50 < [v3 length]);
  }

LABEL_105:
  v25 = 1;
LABEL_106:
  v62 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if (v64)
  {
LABEL_107:
    *(a1 + v62[222]) |= 2u;
  }

  if (!(v13 & 1 | ((v25 & 1) == 0)))
  {
    if (!v14)
    {
      goto LABEL_118;
    }

    while (1)
    {
      while (1)
      {
        v58 = *v14++;
        v57 = v58;
        if (v58 != 1)
        {
          break;
        }

        v59 = 8;
LABEL_117:
        *(a1 + v62[222]) |= v59;
      }

      if (v57 == 3)
      {
        v59 = 4;
        goto LABEL_117;
      }

      if (!v57)
      {
        goto LABEL_118;
      }
    }
  }

  *(a1 + v62[222]) |= 8u;
  *(a1 + v62[222]) |= 4u;
LABEL_118:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_122;
  }

  v3 = 0;
  if (v13)
  {
LABEL_122:
    v60 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDRoadAccessInfoReadAllFrom(uint64_t a1, void *a2)
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

          v14 = objc_alloc_init(GEORoadAccessPoint);
          if (!GEORoadAccessPointReadAllFrom(v14, v3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [(GEOPDRoadAccessInfo *)a1 addRoadAccessPoint:v14];
        }

        else
        {
          if (!*(a1 + 8))
          {
            v15 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v16 = *(a1 + 8);
            *(a1 + 8) = v15;
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

uint64_t GEORoadAccessPointReadAllFrom(uint64_t a1, void *a2)
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
          goto LABEL_155;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v79[0]) = 0;
          v8 = objc_msgSend_position(v3, v79[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v79[0] & 0x7F) << v5;
          if ((v79[0] & 0x80) == 0)
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
          goto LABEL_155;
        }

        v14 = v7 >> 3;
        if (v14 > 10)
        {
          break;
        }

        if (v14 > 2)
        {
          switch(v14)
          {
            case 3:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              *(a1 + 60) |= 0x80u;
              while (1)
              {
                LOBYTE(v79[0]) = 0;
                v52 = objc_msgSend_position(v3, v79[0]);
                if (v52 + 1 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3), v53 + 1 <= [v3 length]))
                {
                  v54 = [v3 data];
                  [v54 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v51 |= (v79[0] & 0x7F) << v49;
                if ((v79[0] & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v11 = v50++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_132;
                }
              }

              if ([v3 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v51;
              }

LABEL_132:
              v75 = 52;
              goto LABEL_153;
            case 4:
              v61 = 0;
              v62 = 0;
              v63 = 0;
              *(a1 + 60) |= 4u;
              while (1)
              {
                LOBYTE(v79[0]) = 0;
                v64 = objc_msgSend_position(v3, v79[0]);
                if (v64 + 1 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3), v65 + 1 <= [v3 length]))
                {
                  v66 = [v3 data];
                  [v66 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v63 |= (v79[0] & 0x7F) << v61;
                if ((v79[0] & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                v11 = v62++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_148;
                }
              }

              if ([v3 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v63;
              }

LABEL_148:
              v75 = 32;
              goto LABEL_153;
            case 5:
              v15 = 0;
              v16 = 0;
              v17 = 0;
              *(a1 + 60) |= 0x10u;
              while (1)
              {
                LOBYTE(v79[0]) = 0;
                v18 = objc_msgSend_position(v3, v79[0]);
                if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
                {
                  v20 = [v3 data];
                  [v20 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v17 |= (v79[0] & 0x7F) << v15;
                if ((v79[0] & 0x80) == 0)
                {
                  break;
                }

                v15 += 7;
                v11 = v16++ >= 9;
                if (v11)
                {
                  v21 = 0;
                  goto LABEL_140;
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

LABEL_140:
              v75 = 40;
LABEL_153:
              *(a1 + v75) = v21;
              goto LABEL_154;
          }

          goto LABEL_115;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 60) |= 0x100u;
            while (1)
            {
              LOBYTE(v79[0]) = 0;
              v31 = objc_msgSend_position(v3, v79[0]);
              if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
              {
                v33 = [v3 data];
                [v33 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v30 |= (v79[0] & 0x7F) << v28;
              if ((v79[0] & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                LOBYTE(v34) = 0;
                goto LABEL_120;
              }
            }

            v34 = (v30 != 0) & ~[v3 hasError];
LABEL_120:
            *(a1 + 56) = v34;
            goto LABEL_154;
          }

LABEL_115:
          if (!*(a1 + 8))
          {
            v73 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v74 = *(a1 + 8);
            *(a1 + 8) = v73;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_157;
          }

          goto LABEL_154;
        }

        v79[0] = 0;
        v79[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_157;
        }

        v41 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v41, v3))
        {

          goto LABEL_157;
        }

        PBReaderRecallMark();
        v42 = *(a1 + 16);
        *(a1 + 16) = v41;

LABEL_154:
        v76 = objc_msgSend_position(v3);
        if (v76 >= [v3 length])
        {
          goto LABEL_155;
        }
      }

      if (v14 <= 12)
      {
        if (v14 == 11)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v46 = objc_msgSend_position(v3, v79[0]);
            if (v46 + 1 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3), v47 + 1 <= [v3 length]))
            {
              v48 = [v3 data];
              [v48 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v45 |= (v79[0] & 0x7F) << v43;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_128;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v45;
          }

LABEL_128:
          v75 = 48;
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v38 = objc_msgSend_position(v3, v79[0]);
            if (v38 + 1 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3), v39 + 1 <= [v3 length]))
            {
              v40 = [v3 data];
              [v40 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v37 |= (v79[0] & 0x7F) << v35;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_124;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v37;
          }

LABEL_124:
          v75 = 24;
        }

        goto LABEL_153;
      }

      switch(v14)
      {
        case 0xD:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v58 = objc_msgSend_position(v3, v79[0]);
            if (v58 + 1 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3), v59 + 1 <= [v3 length]))
            {
              v60 = [v3 data];
              [v60 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v57 |= (v79[0] & 0x7F) << v55;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_136;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v57;
          }

LABEL_136:
          v75 = 44;
          goto LABEL_153;
        case 0xE:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v70 = objc_msgSend_position(v3, v79[0]);
            if (v70 + 1 >= objc_msgSend_position(v3) && (v71 = objc_msgSend_position(v3), v71 + 1 <= [v3 length]))
            {
              v72 = [v3 data];
              [v72 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v69 |= (v79[0] & 0x7F) << v67;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v11 = v68++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_152;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v69;
          }

LABEL_152:
          v75 = 36;
          goto LABEL_153;
        case 0xF:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v79[0]) = 0;
            v25 = objc_msgSend_position(v3, v79[0]);
            if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
            {
              v27 = [v3 data];
              [v27 getBytes:v79 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v24 |= (v79[0] & 0x7F) << v22;
            if ((v79[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_144;
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

LABEL_144:
          v75 = 28;
          goto LABEL_153;
      }

      goto LABEL_115;
    }

LABEL_155:
    v77 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_157:
    v77 = 0;
  }

  objc_sync_exit(v3);

  return v77;
}

void *GEOPDEntityReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 284))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDEntityReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 288));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 280) = objc_msgSend_position(v8);
  *(a1 + 284) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDEntityReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDEntityReadAllFrom_initialTag;
  }

  Specified = GEOPDEntityReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDEntityCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 288));
  return Specified;
}

void *GEOPDPlaceInfoReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 92)), 0xFFFAFFFCFFF8FFFBLL), 0x1000100010001)) + ((*(a1 + 92) >> 7) & 1) + ((*(a1 + 92) >> 3) & 1));
  while (1)
  {
    v11 = a3[v6];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v8 = 1;
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
    ++v6;
  }

  if (v11 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v12 = v10 > 3;
  v13 = v12 & ~v9 | v8;
  v14 = v9 | v12;
  LODWORD(v60) = v13;
  HIDWORD(v60) = v14 | v8;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v61 = (v15 == 0) | v14;
  v62 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3, v60);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_126:
      v25 = 1;
      goto LABEL_129;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v63) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v63 & 0x7F) << v17;
      if ((v63 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      v23 = v18++ >= 9;
      if (v23)
      {
        v19 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v19 = 0;
    }

LABEL_30:
    v24 = [v3 hasError];
    v25 = 1;
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_129;
    }

    v26 = v19 >> 3;
    v27 = v62;
    if ((v61 & 1) == 0)
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

    if (v26 <= 5)
    {
      if (v26 > 3)
      {
        if (v26 != 4)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_104;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 92) |= 4u;
          while (1)
          {
            LOBYTE(v63) = 0;
            v39 = objc_msgSend_position(v3) + 1;
            if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
            {
              v41 = [v3 data];
              [v41 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v38 |= (v63 & 0x7F) << v36;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v23 = v37++ >= 9;
            if (v23)
            {
              v42 = 0;
              goto LABEL_111;
            }
          }

          v42 = (v38 != 0) & ~[v3 hasError];
LABEL_111:
          *(a1 + 88) = v42;
          goto LABEL_125;
        }

        if (!v27)
        {
          goto LABEL_104;
        }

        if ((*(a1 + 92) & 0x100) == 0)
        {
          v63 = 0;
          v64 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_128;
          }

          v34 = objc_alloc_init(GEOTimezone);
          if (!GEOTimezoneReadAllFrom(v34, v3))
          {
            goto LABEL_127;
          }

          PBReaderRecallMark();
          v35 = 64;
          goto LABEL_97;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_128;
        }

        v53 = *(a1 + 92) << 7;
      }

      else
      {
        if (v26 != 1)
        {
          if (v26 == 2)
          {
            if ((v7 & 1) == 0)
            {
              goto LABEL_104;
            }

            *(a1 + 92) |= 1u;
            v63 = 0;
            v32 = objc_msgSend_position(v3) + 8;
            if (v32 >= objc_msgSend_position(v3) && (v33 = objc_msgSend_position(v3) + 8, v33 <= [v3 length]))
            {
              v54 = [v3 data];
              [v54 getBytes:&v63 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            *(a1 + 24) = v63;
            goto LABEL_125;
          }

          goto LABEL_98;
        }

        if (!v27)
        {
          goto LABEL_104;
        }

        if ((*(a1 + 92) & 0x20) == 0)
        {
          v63 = 0;
          v64 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_128;
          }

          v34 = objc_alloc_init(GEOLatLng);
          if (!GEOLatLngReadAllFrom(v34, v3))
          {
            goto LABEL_127;
          }

          PBReaderRecallMark();
          v35 = 40;
          goto LABEL_97;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_128;
        }

        v53 = *(a1 + 92) << 10;
      }

LABEL_122:
      v6 += v53 >> 15;
      goto LABEL_125;
    }

    if (v26 > 7)
    {
      break;
    }

    if (v26 != 6)
    {
      if (!v27)
      {
        goto LABEL_104;
      }

      if ((*(a1 + 92) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_128;
        }

        v53 = *(a1 + 92) << 11;
        goto LABEL_122;
      }

      v63 = 0;
      v64 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_128;
      }

      v34 = objc_alloc_init(GEOPDBasemapRegionMetadata);
      if (!GEOPDBasemapRegionMetadataReadAllFrom(v34, v3))
      {
        goto LABEL_127;
      }

      PBReaderRecallMark();
      v35 = 32;
      goto LABEL_97;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_104;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    *(a1 + 92) |= 2u;
    while (1)
    {
      LOBYTE(v63) = 0;
      v46 = objc_msgSend_position(v3) + 1;
      if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
      {
        v48 = [v3 data];
        [v48 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v45 |= (v63 & 0x7F) << v43;
      if ((v63 & 0x80) == 0)
      {
        break;
      }

      v43 += 7;
      v23 = v44++ >= 9;
      if (v23)
      {
        v49 = 0;
        goto LABEL_109;
      }
    }

    if ([v3 hasError])
    {
      v49 = 0;
    }

    else
    {
      v49 = v45;
    }

LABEL_109:
    *(a1 + 84) = v49;
LABEL_125:
    if (!(BYTE4(v60) & 1 | (v6 != 0)))
    {
      goto LABEL_126;
    }
  }

  if (v26 != 8)
  {
    if (v26 == 9)
    {
      if (!v27)
      {
        goto LABEL_104;
      }

      if ((*(a1 + 92) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_128;
        }

        v53 = *(a1 + 92) << 8;
        goto LABEL_122;
      }

      v63 = 0;
      v64 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_128;
      }

      v34 = objc_alloc_init(GEOLatLng);
      if (!GEOLatLngReadAllFrom(v34, v3))
      {
        goto LABEL_127;
      }

      PBReaderRecallMark();
      v35 = 56;
      goto LABEL_97;
    }

LABEL_98:
    if ((v60 & 1) == 0 || (*(a1 + 92) & 8) != 0)
    {
LABEL_104:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_125;
    }

    if (!*(a1 + 16))
    {
      v51 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v52 = *(a1 + 16);
      *(a1 + 16) = v51;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      goto LABEL_130;
    }

    goto LABEL_125;
  }

  if (!v27)
  {
    goto LABEL_104;
  }

  if ((*(a1 + 92) & 0x40) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_128;
    }

    v53 = *(a1 + 92) << 9;
    goto LABEL_122;
  }

  v63 = 0;
  v64 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_128;
  }

  v34 = objc_alloc_init(GEOLatLng);
  if (GEOLatLngReadAllFrom(v34, v3))
  {
    PBReaderRecallMark();
    v35 = 48;
LABEL_97:
    v50 = *(a1 + v35);
    *(a1 + v35) = v34;

    --v6;
    goto LABEL_125;
  }

LABEL_127:

LABEL_128:
  v25 = 0;
LABEL_129:
  if ((v60 & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_130:
  *(a1 + 92) |= 8u;
LABEL_131:
  if (v62 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + 92) |= 0x20u;
    *(a1 + 92) |= 0x100u;
    *(a1 + 92) |= 0x10u;
    *(a1 + 92) |= 0x40u;
    *(a1 + 92) |= 0x80u;
    goto LABEL_147;
  }

  if (v15)
  {
    while (1)
    {
      v56 = *v15++;
      v55 = v56;
      if (v56 > 6)
      {
        switch(v55)
        {
          case 7:
            v57 = 16;
            break;
          case 8:
            v57 = 64;
            break;
          case 9:
            v57 = 128;
            break;
          default:
            continue;
        }

        goto LABEL_145;
      }

      if (v55 == 1)
      {
        break;
      }

      if (v55 == 4)
      {
        v57 = 256;
LABEL_145:
        *(a1 + 92) |= v57;
        continue;
      }

      if (!v55)
      {
        goto LABEL_147;
      }
    }

    v57 = 32;
    goto LABEL_145;
  }

LABEL_147:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v62)
  {
    v58 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(addr_obj::geo3 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1EA9054C0 & 1) == 0)
  {
    byte_1EA9054C0 = 1;
    AddrObjGoogle::protobuf::internal::VerifyVersion(0x1E9808, 0x1E9808, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", a4);
    AddrObjGoogle::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_187FB74A4, 0x3CE);
    AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedFile("geo3-slim.proto", sub_18672ECEC);
    v6 = addr_obj::geo3::StructuredAddress::default_instance_(v5);
    v7 = addr_obj::geo3::StructuredAddress_SubPremise::default_instance_(v6);
    v8 = addr_obj::geo3::Address::default_instance_(v7);
    *(v8 + 5) = addr_obj::geo3::StructuredAddress::default_instance(v8);

    AddrObjGoogle::protobuf::internal::OnShutdown(addr_obj::geo3::protobuf_ShutdownFile_geo3_2dslim_2eproto, v9);
  }
}

void sub_18672ECEC(addr_obj::geo3::StructuredAddress *a1)
{
  v1 = qword_1EA9054C8;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v13[0] = &unk_1EF7E2130;
    v13[1] = addr_obj::geo3::protobuf_AssignDesc_geo3_2dslim_2eproto;
    v14 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9054C8, v13);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v13);
  }

  v2 = qword_1EA905480;
  v3 = addr_obj::geo3::StructuredAddress::default_instance(a1);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v2, v3, v4);
  v5 = qword_1EA905490;
  v7 = addr_obj::geo3::StructuredAddress_SubPremise::default_instance(v6);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v5, v7, v8);
  v9 = qword_1EA9054A8;
  v11 = addr_obj::geo3::Address::default_instance(v10);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v9, v11, v12);
}

void sub_18672EDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *GEOPDPlaceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 108))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 112));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 104) = objc_msgSend_position(v8);
  *(a1 + 108) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDPlaceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 112));
  return Specified;
}

void *GEOPDEntityReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 288));
  [v3 setLength:*(a1 + 284)];
  [v3 seekToOffset:*(a1 + 280)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 328);
  v12 = vdupq_n_s64(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14.i32[0] = v11 >> 22;
  v15 = vdupq_n_s32(v11);
  v14.i32[1] = HIDWORD(v11);
  v16.i32[0] = vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD430), vshlq_u64(v12, xmmword_187FBDBF0)), v13), vandq_s8(vshlq_u32(v15, xmmword_187FBDC00), v13)));
  v16.i32[1] = (v11 >> 21) & 1;
  v17 = vadd_s32(vadd_s32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD6A0)), 0x100000001), (*&vshl_u32(*v15.i8, 0xFFFFFFE3FFFFFFE5) & 0xFFFFFFE1FFFFFFE1)), vadd_s32(vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBDC10)), 0x100000001), vand_s8(v14, 0x100000001)), vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBDC20)), 0x100000001), vand_s8(vshl_u32(*v15.i8, 0xFFFFFFEDFFFFFFE8), 0x100000001)))), vadd_s32(v16, vand_s8(vshl_u32(*v15.i8, 0xFFFFFFE7FFFFFFE9), 0x100000001)));
  v18 = vadd_s32(v17, vdup_lane_s32(v17, 1)).u32[0] + (v11 >> 31);
  while (1)
  {
    v19 = a3[v6];
    if (v19 > -3)
    {
      break;
    }

    if (v19 == -4)
    {
      ++v18;
      v8 = 1;
      goto LABEL_15;
    }

    if (v19 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v18;
LABEL_15:
    ++v6;
  }

  if (v19 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v19 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_14;
  }

  v20 = v18 > 0x11;
  v196 = v9;
  v197 = v20 & ~v10 | v8;
  v21 = v10 | v20;
  if ((v10 | v20 | v7))
  {
    v22 = 0;
  }

  else
  {
    v22 = a3;
  }

  v23 = objc_msgSend_position(v3);
  if (v23 >= [v3 length])
  {
LABEL_477:
    v32 = 1;
    goto LABEL_478;
  }

  v198 = v21 | v8;
  v199 = (v22 == 0) | v21;
  v200 = v21;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_477;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    while (1)
    {
      LOBYTE(v201) = 0;
      v27 = objc_msgSend_position(v3) + 1;
      if (v27 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3) + 1, v28 <= [v3 length]))
      {
        v29 = [v3 data];
        [v29 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v26 |= (v201 & 0x7F) << v24;
      if ((v201 & 0x80) == 0)
      {
        break;
      }

      v24 += 7;
      v30 = v25++ >= 9;
      if (v30)
      {
        v26 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v26 = 0;
    }

LABEL_33:
    v31 = [v3 hasError];
    v32 = 1;
    v21 = v200;
    if (v31)
    {
      goto LABEL_478;
    }

    v33 = v26 & 7;
    if (v33 == 4)
    {
      goto LABEL_478;
    }

    v34 = v26 >> 3;
    v35 = v200;
    if ((v199 & 1) == 0)
    {
      v36 = v22;
      do
      {
        v38 = *v36++;
        v37 = v38;
        v35 = v38 != 0;
        if (v38)
        {
          v39 = v37 == v34;
        }

        else
        {
          v39 = 1;
        }
      }

      while (!v39);
    }

    switch(v34)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 328) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v43 = objc_msgSend_position(v3) + 1;
          if (v43 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3) + 1, v44 <= [v3 length]))
          {
            v45 = [v3 data];
            [v45 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v42 |= (v201 & 0x7F) << v40;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v30 = v41++ >= 9;
          if (v30)
          {
            v46 = 0;
LABEL_387:
            v176 = 316;
            goto LABEL_422;
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

        goto LABEL_387;
      case 2:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 332) & 0x80) == 0)
        {
          v65 = PBReaderReadString();
          v66 = 248;
          goto LABEL_271;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_515;
        }

        v177 = *(a1 + 328) << 24;
        goto LABEL_448;
      case 3:
        if (!v35 || (*(a1 + 330) & 0x80) != 0)
        {
          goto LABEL_360;
        }

        v49 = PBReaderReadString();
        if (v49)
        {
          [(GEOPDEntity *)a1 _addNoFlagsAltTelephone:v49];
        }

        goto LABEL_359;
      case 4:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 331) & 8) == 0)
        {
          v65 = PBReaderReadString();
          v66 = 136;
LABEL_271:
          v82 = *(a1 + v66);
          *(a1 + v66) = v65;
          goto LABEL_272;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_515;
        }

        v177 = *(a1 + 328) << 36;
        goto LABEL_448;
      case 5:
        if (!v35 || (*(a1 + 330) & 0x40) != 0)
        {
          goto LABEL_360;
        }

        v49 = PBReaderReadString();
        if (v49)
        {
          [(GEOPDEntity *)a1 _addNoFlagsAltFax:v49];
        }

        goto LABEL_359;
      case 6:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 333) & 2) == 0)
        {
          v65 = PBReaderReadString();
          v66 = 264;
          goto LABEL_271;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_515;
        }

        v177 = *(a1 + 328) << 22;
        goto LABEL_448;
      case 7:
        if (!v35 || (*(a1 + 331) & 1) != 0)
        {
          goto LABEL_360;
        }

        v49 = PBReaderReadString();
        if (v49)
        {
          [(GEOPDEntity *)a1 _addNoFlagsAltUrl:v49];
        }

        goto LABEL_359;
      case 8:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 328) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v98 = objc_msgSend_position(v3) + 1;
          if (v98 >= objc_msgSend_position(v3) && (v99 = objc_msgSend_position(v3) + 1, v99 <= [v3 length]))
          {
            v100 = [v3 data];
            [v100 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v97 |= (v201 & 0x7F) << v95;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v30 = v96++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_381;
          }
        }

        v81 = (v97 != 0) & ~[v3 hasError];
LABEL_381:
        v175 = 324;
        goto LABEL_417;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 328) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v110 = objc_msgSend_position(v3) + 1;
          if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
          {
            v112 = [v3 data];
            [v112 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v109 |= (v201 & 0x7F) << v107;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v30 = v108++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_389;
          }
        }

        v81 = (v109 != 0) & ~[v3 hasError];
LABEL_389:
        v175 = 323;
        goto LABEL_417;
      case 10:
        if (!v35 || (*(a1 + 332) & 4) != 0)
        {
          goto LABEL_360;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        [(GEOPDEntity *)a1 _addNoFlagsName:v49];
        goto LABEL_359;
      case 11:
        if (!v35 || (*(a1 + 332) & 0x20) != 0)
        {
          goto LABEL_360;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        [(GEOPDEntity *)a1 _addNoFlagsSpokenName:v49];
        goto LABEL_359;
      case 12:
        if (!v35 || (*(a1 + 331) & 0x20) != 0)
        {
          goto LABEL_360;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOPDCategory);
        if (!GEOPDCategoryReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        [(GEOPDEntity *)a1 _addNoFlagsLocalizedCategory:v49];
        goto LABEL_359;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 328) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v78 = objc_msgSend_position(v3) + 1;
          if (v78 >= objc_msgSend_position(v3) && (v79 = objc_msgSend_position(v3) + 1, v79 <= [v3 length]))
          {
            v80 = [v3 data];
            [v80 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v77 |= (v201 & 0x7F) << v75;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v30 = v76++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_371;
          }
        }

        v81 = (v77 != 0) & ~[v3 hasError];
LABEL_371:
        v175 = 326;
        goto LABEL_417;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 328) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v152 = objc_msgSend_position(v3) + 1;
          if (v152 >= objc_msgSend_position(v3) && (v153 = objc_msgSend_position(v3) + 1, v153 <= [v3 length]))
          {
            v154 = [v3 data];
            [v154 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v151 |= (v201 & 0x7F) << v149;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v30 = v150++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_414;
          }
        }

        v81 = (v151 != 0) & ~[v3 hasError];
LABEL_414:
        v175 = 320;
        goto LABEL_417;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 328) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v116 = objc_msgSend_position(v3) + 1;
          if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 1, v117 <= [v3 length]))
          {
            v118 = [v3 data];
            [v118 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v115 |= (v201 & 0x7F) << v113;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v30 = v114++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_391;
          }
        }

        v81 = (v115 != 0) & ~[v3 hasError];
LABEL_391:
        v175 = 325;
        goto LABEL_417;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 328) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v122 = objc_msgSend_position(v3) + 1;
          if (v122 >= objc_msgSend_position(v3) && (v123 = objc_msgSend_position(v3) + 1, v123 <= [v3 length]))
          {
            v124 = [v3 data];
            [v124 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v121 |= (v201 & 0x7F) << v119;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v30 = v120++ >= 9;
          if (v30)
          {
            v46 = 0;
            goto LABEL_395;
          }
        }

        if ([v3 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v121;
        }

LABEL_395:
        v176 = 296;
        goto LABEL_422;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 328) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v146 = objc_msgSend_position(v3) + 1;
          if (v146 >= objc_msgSend_position(v3) && (v147 = objc_msgSend_position(v3) + 1, v147 <= [v3 length]))
          {
            v148 = [v3 data];
            [v148 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v145 |= (v201 & 0x7F) << v143;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v30 = v144++ >= 9;
          if (v30)
          {
            v46 = 0;
            goto LABEL_412;
          }
        }

        if ([v3 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v145;
        }

LABEL_412:
        v176 = 312;
        goto LABEL_422;
      case 19:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 328) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v140 = objc_msgSend_position(v3) + 1;
          if (v140 >= objc_msgSend_position(v3) && (v141 = objc_msgSend_position(v3) + 1, v141 <= [v3 length]))
          {
            v142 = [v3 data];
            [v142 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v139 |= (v201 & 0x7F) << v137;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v30 = v138++ >= 9;
          if (v30)
          {
            v46 = 0;
            goto LABEL_408;
          }
        }

        if ([v3 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v139;
        }

LABEL_408:
        v176 = 308;
        goto LABEL_422;
      case 20:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 328) |= 2uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v61 = objc_msgSend_position(v3) + 1;
          if (v61 >= objc_msgSend_position(v3) && (v62 = objc_msgSend_position(v3) + 1, v62 <= [v3 length]))
          {
            v63 = [v3 data];
            [v63 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v60 |= (v201 & 0x7F) << v58;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v30 = v59++ >= 9;
          if (v30)
          {
            v64 = 0;
            goto LABEL_365;
          }
        }

        if ([v3 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v60;
        }

LABEL_365:
        v174 = 112;
        goto LABEL_404;
      case 21:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 328) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v86 = objc_msgSend_position(v3) + 1;
          if (v86 >= objc_msgSend_position(v3) && (v87 = objc_msgSend_position(v3) + 1, v87 <= [v3 length]))
          {
            v88 = [v3 data];
            [v88 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v85 |= (v201 & 0x7F) << v83;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v30 = v84++ >= 9;
          if (v30)
          {
            v46 = 0;
            goto LABEL_375;
          }
        }

        if ([v3 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v85;
        }

LABEL_375:
        v176 = 292;
        goto LABEL_422;
      case 22:
        if (!v35 || (*(a1 + 330) & 0x20) != 0)
        {
          goto LABEL_360;
        }

        if (v33 == 2)
        {
          v201 = 0;
          v202 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_515;
          }

          while (1)
          {
            v155 = objc_msgSend_position(v3);
            if (v155 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v156 = 0;
            v157 = 0;
            v158 = 0;
            while (1)
            {
              v203 = 0;
              v159 = objc_msgSend_position(v3) + 1;
              if (v159 >= objc_msgSend_position(v3) && (v160 = objc_msgSend_position(v3) + 1, v160 <= [v3 length]))
              {
                v161 = [v3 data];
                [v161 getBytes:&v203 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v158 |= (v203 & 0x7F) << v156;
              if ((v203 & 0x80) == 0)
              {
                break;
              }

              v156 += 7;
              v30 = v157++ >= 9;
              if (v30)
              {
                goto LABEL_328;
              }
            }

            [v3 hasError];
LABEL_328:
            PBRepeatedInt32Add();
          }

LABEL_452:
          PBReaderRecallMark();
        }

        else
        {
          v186 = 0;
          v187 = 0;
          v188 = 0;
          while (1)
          {
            LOBYTE(v201) = 0;
            v189 = objc_msgSend_position(v3) + 1;
            if (v189 >= objc_msgSend_position(v3) && (v190 = objc_msgSend_position(v3) + 1, v190 <= [v3 length]))
            {
              v191 = [v3 data];
              [v191 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v188 |= (v201 & 0x7F) << v186;
            if ((v201 & 0x80) == 0)
            {
              break;
            }

            v186 += 7;
            v30 = v187++ >= 9;
            if (v30)
            {
              goto LABEL_476;
            }
          }

          [v3 hasError];
LABEL_476:
          PBRepeatedInt32Add();
        }

LABEL_423:
        v21 = v200;
        goto LABEL_449;
      case 23:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 332) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
          }

          v177 = *(a1 + 328) << 28;
          goto LABEL_448;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        v50 = 216;
        goto LABEL_148;
      case 24:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 332) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
          }

          v177 = *(a1 + 328) << 27;
LABEL_448:
          v6 += v177 >> 63;
LABEL_449:
          if (!(v198 & 1 | (v6 != 0)))
          {
            goto LABEL_477;
          }

          v178 = objc_msgSend_position(v3);
          if (v178 >= [v3 length])
          {
            goto LABEL_477;
          }

          continue;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOLocalizedString);
        if (GEOLocalizedStringReadAllFrom(v49, v3, v196 & 1))
        {
          PBReaderRecallMark();
          v50 = 224;
LABEL_148:
          v82 = *(a1 + v50);
          *(a1 + v50) = v49;
LABEL_272:

          --v6;
          goto LABEL_449;
        }

LABEL_514:

LABEL_515:
        v32 = 0;
LABEL_478:
        if (v197)
        {
LABEL_479:
          *(a1 + 328) |= 0x80000uLL;
        }

        if (v21 & 1 | ((v32 & 1) == 0))
        {
          *(a1 + 328) |= 0x7FFFFF00000uLL;
        }

        else if (v22)
        {
          while (1)
          {
            v193 = *v22++;
            v192 = 0x8000000000;
            switch(v193)
            {
              case 0:
                goto LABEL_508;
              case 2:
                goto LABEL_506;
              case 3:
                v192 = 0x800000;
                goto LABEL_506;
              case 4:
                v192 = 0x8000000;
                goto LABEL_506;
              case 5:
                v192 = 0x400000;
                goto LABEL_506;
              case 6:
                v192 = 0x20000000000;
                goto LABEL_506;
              case 7:
                v192 = 0x1000000;
                goto LABEL_506;
              case 10:
                v192 = 0x400000000;
                goto LABEL_506;
              case 11:
                v192 = 0x2000000000;
                goto LABEL_506;
              case 12:
                v192 = 0x20000000;
                goto LABEL_506;
              case 22:
                v192 = 0x200000;
                goto LABEL_506;
              case 23:
                v192 = 0x800000000;
                goto LABEL_506;
              case 24:
                v192 = 0x1000000000;
                goto LABEL_506;
              case 25:
                v192 = 0x4000000000;
                goto LABEL_506;
              case 26:
                v192 = 0x40000000000;
                goto LABEL_506;
              case 27:
                v192 = 0x80000000;
                goto LABEL_506;
              case 29:
                v192 = 0x2000000;
                goto LABEL_506;
              case 33:
                v192 = 0x200000000;
                goto LABEL_506;
              case 34:
                v192 = 0x100000000;
                goto LABEL_506;
              case 36:
                v192 = 0x40000000;
                goto LABEL_506;
              case 38:
                v192 = 0x10000000;
                goto LABEL_506;
              case 40:
                v192 = 0x100000;
                goto LABEL_506;
              case 41:
                v192 = 0x4000000;
                goto LABEL_506;
              case 42:
                v192 = 0x10000000000;
LABEL_506:
                *(a1 + 328) |= v192;
                break;
              default:
                continue;
            }
          }
        }

LABEL_508:
        if (v32)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v21 & 1) == 0)
          {
            return v3;
          }

LABEL_512:
          v194 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v21)
          {
            goto LABEL_512;
          }
        }

        return v3;
      case 25:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 332) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
          }

          v177 = *(a1 + 328) << 25;
          goto LABEL_448;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOStyleAttributes);
        if (!GEOStyleAttributesReadAllFrom(v49, v3))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        v50 = 240;
        goto LABEL_148;
      case 26:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 333) & 4) == 0)
        {
          v65 = PBReaderReadString();
          v66 = 272;
          goto LABEL_271;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_515;
        }

        v177 = *(a1 + 328) << 21;
        goto LABEL_448;
      case 27:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 331) & 0x80) == 0)
        {
          v65 = PBReaderReadString();
          v66 = 176;
          goto LABEL_271;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_515;
        }

        v177 = *(a1 + 328) << 32;
        goto LABEL_448;
      case 28:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v162 = 0;
        v163 = 0;
        v164 = 0;
        *(a1 + 328) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v165 = objc_msgSend_position(v3) + 1;
          if (v165 >= objc_msgSend_position(v3) && (v166 = objc_msgSend_position(v3) + 1, v166 <= [v3 length]))
          {
            v167 = [v3 data];
            [v167 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v164 |= (v201 & 0x7F) << v162;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v30 = v163++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_416;
          }
        }

        v81 = (v164 != 0) & ~[v3 hasError];
LABEL_416:
        v175 = 321;
        goto LABEL_417;
      case 29:
        if (!v35 || (*(a1 + 331) & 2) != 0)
        {
          goto LABEL_360;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        [(GEOPDEntity *)a1 _addNoFlagsAlternateSearchableName:v49];
        goto LABEL_359;
      case 30:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 328) |= 8uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v201 & 0x7F) << v69;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v30 = v70++ >= 9;
          if (v30)
          {
            v64 = 0;
            goto LABEL_369;
          }
        }

        if ([v3 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v71;
        }

LABEL_369:
        v174 = 144;
        goto LABEL_404;
      case 31:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 328) |= 4uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v92 = objc_msgSend_position(v3) + 1;
          if (v92 >= objc_msgSend_position(v3) && (v93 = objc_msgSend_position(v3) + 1, v93 <= [v3 length]))
          {
            v94 = [v3 data];
            [v94 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v91 |= (v201 & 0x7F) << v89;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v30 = v90++ >= 9;
          if (v30)
          {
            v64 = 0;
            goto LABEL_379;
          }
        }

        if ([v3 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v91;
        }

LABEL_379:
        v174 = 120;
        goto LABEL_404;
      case 32:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 328) |= 1uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v128 = objc_msgSend_position(v3) + 1;
          if (v128 >= objc_msgSend_position(v3) && (v129 = objc_msgSend_position(v3) + 1, v129 <= [v3 length]))
          {
            v130 = [v3 data];
            [v130 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v127 |= (v201 & 0x7F) << v125;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v30 = v126++ >= 9;
          if (v30)
          {
            v64 = 0;
            goto LABEL_399;
          }
        }

        if ([v3 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v127;
        }

LABEL_399:
        v174 = 104;
        goto LABEL_404;
      case 33:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 332) & 2) == 0)
        {
          v65 = PBReaderReadString();
          v66 = 200;
          goto LABEL_271;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_515;
        }

        v177 = *(a1 + 328) << 30;
        goto LABEL_448;
      case 34:
        if (!v35 || (*(a1 + 332) & 1) != 0)
        {
          goto LABEL_360;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOPDCategory);
        if (!GEOPDCategoryReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        [(GEOPDEntity *)a1 _addNoFlagsModernLocalizedCategory:v49];
LABEL_359:

        goto LABEL_449;
      case 35:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        *(a1 + 328) |= 0x80uLL;
        LODWORD(v201) = 0;
        v67 = objc_msgSend_position(v3) + 4;
        if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 4, v68 <= [v3 length]))
        {
          v185 = [v3 data];
          [v185 getBytes:&v201 range:{objc_msgSend_position(v3), 4}];

          [v3 setPosition:objc_msgSend_position(v3) + 4];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 300) = v201;
        goto LABEL_449;
      case 36:
        if (!v35 || (*(a1 + 331) & 0x40) != 0)
        {
          goto LABEL_360;
        }

        v49 = PBReaderReadString();
        if (v49)
        {
          [(GEOPDEntity *)a1 _addNoFlagsMapsAltCategoryId:v49];
        }

        goto LABEL_359;
      case 37:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v168 = 0;
        v169 = 0;
        v170 = 0;
        *(a1 + 328) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v171 = objc_msgSend_position(v3) + 1;
          if (v171 >= objc_msgSend_position(v3) && (v172 = objc_msgSend_position(v3) + 1, v172 <= [v3 length]))
          {
            v173 = [v3 data];
            [v173 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v170 |= (v201 & 0x7F) << v168;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v168 += 7;
          v30 = v169++ >= 9;
          if (v30)
          {
            v46 = 0;
            goto LABEL_421;
          }
        }

        if ([v3 hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v170;
        }

LABEL_421:
        v176 = 304;
LABEL_422:
        *(a1 + v176) = v46;
        goto LABEL_423;
      case 38:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 331) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
          }

          v177 = *(a1 + 328) << 35;
          goto LABEL_448;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOPDInlineRapEnablement);
        if (!GEOPDInlineRapEnablementReadAllFrom(v49, v3))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        v50 = 152;
        goto LABEL_148;
      case 39:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 328) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v134 = objc_msgSend_position(v3) + 1;
          if (v134 >= objc_msgSend_position(v3) && (v135 = objc_msgSend_position(v3) + 1, v135 <= [v3 length]))
          {
            v136 = [v3 data];
            [v136 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v133 |= (v201 & 0x7F) << v131;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v30 = v132++ >= 9;
          if (v30)
          {
            v64 = 0;
            goto LABEL_403;
          }
        }

        if ([v3 hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v133;
        }

LABEL_403:
        v174 = 184;
LABEL_404:
        *(a1 + v174) = v64;
        goto LABEL_423;
      case 40:
        if (!v35 || (*(a1 + 330) & 0x10) != 0)
        {
          goto LABEL_360;
        }

        if (v33 != 2)
        {
          v179 = 0;
          v180 = 0;
          v181 = 0;
          while (1)
          {
            LOBYTE(v201) = 0;
            v182 = objc_msgSend_position(v3) + 1;
            if (v182 >= objc_msgSend_position(v3) && (v183 = objc_msgSend_position(v3) + 1, v183 <= [v3 length]))
            {
              v184 = [v3 data];
              [v184 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v181 |= (v201 & 0x7F) << v179;
            if ((v201 & 0x80) == 0)
            {
              break;
            }

            v179 += 7;
            v30 = v180++ >= 9;
            if (v30)
            {
              goto LABEL_474;
            }
          }

          [v3 hasError];
LABEL_474:
          PBRepeatedUInt64Add();
          goto LABEL_423;
        }

        v201 = 0;
        v202 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_515;
        }

        while (1)
        {
          v51 = objc_msgSend_position(v3);
          if (v51 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_452;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          while (1)
          {
            v203 = 0;
            v55 = objc_msgSend_position(v3) + 1;
            if (v55 >= objc_msgSend_position(v3) && (v56 = objc_msgSend_position(v3) + 1, v56 <= [v3 length]))
            {
              v57 = [v3 data];
              [v57 getBytes:&v203 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v54 |= (v203 & 0x7F) << v52;
            if ((v203 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v30 = v53++ >= 9;
            if (v30)
            {
              goto LABEL_80;
            }
          }

          [v3 hasError];
LABEL_80:
          PBRepeatedUInt64Add();
        }

      case 41:
        if (!v35)
        {
          goto LABEL_360;
        }

        if ((*(a1 + 331) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
          }

          v177 = *(a1 + 328) << 37;
          goto LABEL_448;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        v50 = 128;
        goto LABEL_148;
      case 42:
        if (!v35)
        {
          goto LABEL_360;
        }

        if (*(a1 + 333))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
          }

          v177 = *(a1 + 328) << 23;
          goto LABEL_448;
        }

        v201 = 0;
        v202 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_515;
        }

        v49 = objc_alloc_init(GEOPDURLData);
        if (!GEOPDURLDataReadAllFrom(v49, v3, v196 & 1))
        {
          goto LABEL_514;
        }

        PBReaderRecallMark();
        v50 = 256;
        goto LABEL_148;
      case 43:
        if ((v7 & 1) == 0)
        {
          goto LABEL_360;
        }

        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 328) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v201) = 0;
          v104 = objc_msgSend_position(v3) + 1;
          if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
          {
            v106 = [v3 data];
            [v106 getBytes:&v201 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v103 |= (v201 & 0x7F) << v101;
          if ((v201 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v30 = v102++ >= 9;
          if (v30)
          {
            v81 = 0;
            goto LABEL_383;
          }
        }

        v81 = (v103 != 0) & ~[v3 hasError];
LABEL_383:
        v175 = 322;
LABEL_417:
        *(a1 + v175) = v81;
        goto LABEL_423;
      default:
        if ((v197 & 1) == 0 || (*(a1 + 330) & 8) != 0)
        {
LABEL_360:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_515;
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
            v32 = 0;
            goto LABEL_479;
          }
        }

        goto LABEL_449;
    }
  }
}

uint64_t AddrObjGoogle::protobuf::internal::FunctionClosure0::Run(AddrObjGoogle::protobuf::internal::FunctionClosure0 *this)
{
  v2 = *(this + 16);
  result = (*(this + 1))();
  if (this && (v2 & 1) != 0)
  {
    v4 = *(*this + 8);

    return v4(this);
  }

  return result;
}

AddrObjGoogle::protobuf::FileDescriptorProto *AddrObjGoogle::protobuf::FileDescriptorProto::SharedDtor(AddrObjGoogle::protobuf::FileDescriptorProto *this)
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

  v5 = *(this + 3);
  v6 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  if (v5 != v6)
  {
    v7 = *(this + 3);
    if (v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v6 = MEMORY[0x18CFD1E40](v7, 0x1012C40EC159624);
    }
  }

  result = AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(v6);
  if (result != this)
  {
    v9 = *(this + 23);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    result = *(this + 24);
    if (result)
    {
      v10 = *(*result + 8);

      return v10();
    }
  }

  return result;
}

void AddrObjGoogle::protobuf::DescriptorProto::~DescriptorProto(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  *this = &unk_1EF7E0E50;
  AddrObjGoogle::protobuf::DescriptorProto::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 15);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 12);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 9);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 6);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 3);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  AddrObjGoogle::protobuf::DescriptorProto::~DescriptorProto(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t AddrObjGoogle::protobuf::DescriptorProto::default_instance_(AddrObjGoogle::protobuf::DescriptorProto *this)
{
  if ((atomic_load_explicit(&qword_1EA905660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905660))
  {
    operator new();
  }

  return qword_1EA905658;
}

void sub_186731BF0(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C4073756666);
  __cxa_guard_abort(&qword_1EA905660);
  _Unwind_Resume(a1);
}

addr_obj::FingerprintProto *addr_obj::FingerprintProto::FingerprintProto(addr_obj::FingerprintProto *this)
{
  *this = &unk_1EF7DFE30;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  addr_obj::FingerprintProto::SharedCtor(this);
  return this;
}

void sub_186731C84(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::AddressObjectProto::InitAsDefaultInstance(addr_obj::AddressObjectProto *this)
{
  v2 = addr_obj::LocalizationProto::default_instance(this);
  *(this + 3) = v2;
  v3 = addr_obj::V0AddressObjectProto::default_instance(v2);
  *(this + 7) = v3;
  v4 = addr_obj::V1AddressObjectProto::default_instance(v3);
  *(this + 8) = v4;
  result = addr_obj::VenueInfoProto::default_instance(v4);
  *(this + 9) = result;
  return result;
}

uint64_t addr_obj::V0AddressObjectProto::default_instance(addr_obj::V0AddressObjectProto *this)
{
  v1 = addr_obj::V0AddressObjectProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::V0AddressObjectProto::default_instance_(v1);
}

uint64_t addr_obj::V1AddressObjectProto::default_instance(addr_obj::V1AddressObjectProto *this)
{
  v1 = addr_obj::V1AddressObjectProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::V1AddressObjectProto::default_instance_(v1);
}

addr_obj::V1AddressObjectProto *addr_obj::V1AddressObjectProto::V1AddressObjectProto(addr_obj::V1AddressObjectProto *this)
{
  *this = &unk_1EF7E0040;
  AddrObjGoogle::protobuf::internal::ExtensionSet::ExtensionSet(this + 1);
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 4);
  addr_obj::V1AddressObjectProto::SharedCtor(this);
  return this;
}

void sub_186731DAC(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((v1 + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::VenueInfoProto::default_instance(addr_obj::VenueInfoProto *this)
{
  v1 = addr_obj::VenueInfoProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::VenueInfoProto::default_instance_(v1);
}

uint64_t *addr_obj::VenueDecoratorProto::SharedCtor(addr_obj::VenueDecoratorProto *this)
{
  *(this + 12) = 0;
  v2 = AddrObjGoogle::protobuf::internal::kEmptyString(this);
  *(this + 2) = v2;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 3) = v3;
  v4 = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 4) = v4;
  result = AddrObjGoogle::protobuf::internal::kEmptyString(v4);
  *(this + 5) = result;
  *(this + 13) = 0;
  return result;
}

addr_obj::VenueDecoratorProto *addr_obj::VenueDecoratorProto::VenueDecoratorProto(addr_obj::VenueDecoratorProto *this)
{
  *this = &unk_1EF7E01A0;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  addr_obj::VenueDecoratorProto::SharedCtor(this);
  return this;
}

void sub_186731EB4(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::VenueFormatterProto::default_instance_(addr_obj::VenueFormatterProto *this)
{
  if ((atomic_load_explicit(&qword_1EA9055E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9055E0))
  {
    operator new();
  }

  return qword_1EA9055D8;
}

void sub_186731F50(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40F1948F29);
  __cxa_guard_abort(&qword_1EA9055E0);
  _Unwind_Resume(a1);
}

addr_obj::VenueFormatterProto *addr_obj::VenueFormatterProto::VenueFormatterProto(addr_obj::VenueFormatterProto *this)
{
  *this = &unk_1EF7E03B0;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

addr_obj::V3AddressObjectProto *addr_obj::V3AddressObjectProto::V3AddressObjectProto(addr_obj::V3AddressObjectProto *this)
{
  *this = &unk_1EF7E0510;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

addr_obj::V4AddressObjectProto *addr_obj::V4AddressObjectProto::V4AddressObjectProto(addr_obj::V4AddressObjectProto *this)
{
  *this = &unk_1EF7E05C0;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  return this;
}

uint64_t addr_obj::V4AddressObjectProto::default_instance(addr_obj::V4AddressObjectProto *this)
{
  v1 = addr_obj::V4AddressObjectProto::default_instance_(this);
  if (!v1)
  {
    addr_obj::protobuf_AddDesc_AddressObject_2eproto(0, v2, v3, v4);
  }

  return addr_obj::V4AddressObjectProto::default_instance_(v1);
}

void AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(AddrObjGoogle::protobuf *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1EA9058E8 & 1) == 0)
  {
    byte_1EA9058E8 = 1;
    AddrObjGoogle::protobuf::internal::VerifyVersion(0x1E9808, 0x1E9808, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.pb.cc", a4);
    AddrObjGoogle::protobuf::DescriptorPool::InternalAddGeneratedFile(&unk_187FB7C7C, 0x1027);
    AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedFile("google/protobuf/descriptor.proto", sub_186732228);
    v6 = AddrObjGoogle::protobuf::FileDescriptorSet::default_instance_(v5);
    v7 = AddrObjGoogle::protobuf::FileDescriptorProto::default_instance_(v6);
    v8 = AddrObjGoogle::protobuf::FileOptions::default_instance(v7);
    *(v7 + 23) = v8;
    v9 = AddrObjGoogle::protobuf::SourceCodeInfo::default_instance(v8);
    *(v7 + 24) = v9;
    v10 = AddrObjGoogle::protobuf::DescriptorProto::default_instance_(v9);
    v11 = AddrObjGoogle::protobuf::MessageOptions::default_instance(v10);
    *(v10 + 18) = v11;
    v12 = AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance_(v11);
    v13 = AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance_(v12);
    v14 = AddrObjGoogle::protobuf::FieldOptions::default_instance(v13);
    *(v13 + 7) = v14;
    v15 = AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance_(v14);
    v16 = AddrObjGoogle::protobuf::EnumOptions::default_instance(v15);
    *(v15 + 6) = v16;
    v17 = AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance_(v16);
    v18 = AddrObjGoogle::protobuf::EnumValueOptions::default_instance(v17);
    *(v17 + 3) = v18;
    v19 = AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance_(v18);
    v20 = AddrObjGoogle::protobuf::ServiceOptions::default_instance(v19);
    *(v19 + 6) = v20;
    v21 = AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance_(v20);
    v22 = AddrObjGoogle::protobuf::MethodOptions::default_instance(v21);
    *(v21 + 5) = v22;
    v23 = AddrObjGoogle::protobuf::FileOptions::default_instance_(v22);
    v24 = AddrObjGoogle::protobuf::MessageOptions::default_instance_(v23);
    v25 = AddrObjGoogle::protobuf::FieldOptions::default_instance_(v24);
    v26 = AddrObjGoogle::protobuf::EnumOptions::default_instance_(v25);
    v27 = AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(v26);
    v28 = AddrObjGoogle::protobuf::ServiceOptions::default_instance_(v27);
    v29 = AddrObjGoogle::protobuf::MethodOptions::default_instance_(v28);
    v30 = AddrObjGoogle::protobuf::UninterpretedOption::default_instance_(v29);
    v31 = AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance_(v30);
    v32 = AddrObjGoogle::protobuf::SourceCodeInfo::default_instance_(v31);
    AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance_(v32);

    AddrObjGoogle::protobuf::internal::OnShutdown(AddrObjGoogle::protobuf::protobuf_ShutdownFile_google_2fprotobuf_2fdescriptor_2eproto, v33);
  }
}

void sub_186732228(AddrObjGoogle::protobuf::FileDescriptorSet *a1)
{
  v1 = qword_1EA9058F0;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v81[0] = &unk_1EF7E2130;
    v81[1] = AddrObjGoogle::protobuf::protobuf_AssignDesc_google_2fprotobuf_2fdescriptor_2eproto;
    v82 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA9058F0, v81);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v81);
  }

  v2 = qword_1EA905788;
  v3 = AddrObjGoogle::protobuf::FileDescriptorSet::default_instance(a1);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v2, v3, v4);
  v5 = qword_1EA905798;
  v7 = AddrObjGoogle::protobuf::FileDescriptorProto::default_instance(v6);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v5, v7, v8);
  v9 = qword_1EA9057A8;
  v11 = AddrObjGoogle::protobuf::DescriptorProto::default_instance(v10);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v9, v11, v12);
  v13 = qword_1EA9057B8;
  v15 = AddrObjGoogle::protobuf::DescriptorProto_ExtensionRange::default_instance(v14);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v13, v15, v16);
  v17 = qword_1EA9057C8;
  v19 = AddrObjGoogle::protobuf::FieldDescriptorProto::default_instance(v18);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v17, v19, v20);
  v21 = qword_1EA9057E8;
  v23 = AddrObjGoogle::protobuf::EnumDescriptorProto::default_instance(v22);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v21, v23, v24);
  v25 = qword_1EA9057F8;
  v27 = AddrObjGoogle::protobuf::EnumValueDescriptorProto::default_instance(v26);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v25, v27, v28);
  v29 = qword_1EA905808;
  v31 = AddrObjGoogle::protobuf::ServiceDescriptorProto::default_instance(v30);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v29, v31, v32);
  v33 = qword_1EA905818;
  v35 = AddrObjGoogle::protobuf::MethodDescriptorProto::default_instance(v34);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v33, v35, v36);
  v37 = qword_1EA905828;
  v39 = AddrObjGoogle::protobuf::FileOptions::default_instance(v38);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v37, v39, v40);
  v41 = qword_1EA905840;
  v43 = AddrObjGoogle::protobuf::MessageOptions::default_instance(v42);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v41, v43, v44);
  v45 = qword_1EA905850;
  v47 = AddrObjGoogle::protobuf::FieldOptions::default_instance(v46);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v45, v47, v48);
  v49 = qword_1EA905868;
  v51 = AddrObjGoogle::protobuf::EnumOptions::default_instance(v50);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v49, v51, v52);
  v53 = qword_1EA905878;
  v55 = AddrObjGoogle::protobuf::EnumValueOptions::default_instance(v54);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v53, v55, v56);
  v57 = qword_1EA905888;
  v59 = AddrObjGoogle::protobuf::ServiceOptions::default_instance(v58);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v57, v59, v60);
  v61 = qword_1EA905898;
  v63 = AddrObjGoogle::protobuf::MethodOptions::default_instance(v62);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v61, v63, v64);
  v65 = qword_1EA9058A8;
  v67 = AddrObjGoogle::protobuf::UninterpretedOption::default_instance(v66);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v65, v67, v68);
  v69 = qword_1EA9058B8;
  v71 = AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance(v70);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v69, v71, v72);
  v73 = qword_1EA9058C8;
  v75 = AddrObjGoogle::protobuf::SourceCodeInfo::default_instance(v74);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v73, v75, v76);
  v77 = qword_1EA9058D8;
  v79 = AddrObjGoogle::protobuf::SourceCodeInfo_Location::default_instance(v78);
  AddrObjGoogle::protobuf::MessageFactory::InternalRegisterGeneratedMessage(v77, v79, v80);
}

void sub_18673248C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void AddrObjGoogle::protobuf::FieldOptions::~FieldOptions(AddrObjGoogle::protobuf::FieldOptions *this)
{
  AddrObjGoogle::protobuf::FieldOptions::~FieldOptions(this);

  JUMPOUT(0x18CFD1E40);
}

{
  *this = &unk_1EF7E13D0;
  AddrObjGoogle::protobuf::FieldOptions::SharedDtor(this);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(this + 7);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 32));
  AddrObjGoogle::protobuf::internal::ExtensionSet::~ExtensionSet(this + 1);

  AddrObjGoogle::protobuf::Message::~Message(this);
}

uint64_t AddrObjGoogle::protobuf::FieldOptions::default_instance_(AddrObjGoogle::protobuf::FieldOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA9056E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9056E0))
  {
    operator new();
  }

  return qword_1EA9056D8;
}

void sub_186732550(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C409A5D65B8);
  __cxa_guard_abort(&qword_1EA9056E0);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FileOptions::default_instance(AddrObjGoogle::protobuf::FileOptions *this)
{
  v1 = AddrObjGoogle::protobuf::FileOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::FileOptions::default_instance_(v1);
}

AddrObjGoogle::protobuf::FileDescriptorSet *AddrObjGoogle::protobuf::FileDescriptorSet::FileDescriptorSet(AddrObjGoogle::protobuf::FileDescriptorSet *this)
{
  *this = &unk_1EF7E0C40;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 5) = 0;
  return this;
}

uint64_t AddrObjGoogle::protobuf::EnumOptions::default_instance_(AddrObjGoogle::protobuf::EnumOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA9056F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA9056F0))
  {
    operator new();
  }

  return qword_1EA9056E8;
}

void sub_18673269C(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40FFAE3E5BLL);
  __cxa_guard_abort(&qword_1EA9056F0);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::EnumOptions::default_instance(AddrObjGoogle::protobuf::EnumOptions *this)
{
  v1 = AddrObjGoogle::protobuf::EnumOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::EnumOptions::default_instance_(v1);
}

uint64_t AddrObjGoogle::protobuf::EnumValueOptions::default_instance(AddrObjGoogle::protobuf::EnumValueOptions *this)
{
  v1 = AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::EnumValueOptions::default_instance_(v1);
}

uint64_t AddrObjGoogle::protobuf::ServiceOptions::default_instance_(AddrObjGoogle::protobuf::ServiceOptions *this)
{
  if ((atomic_load_explicit(&qword_1EA905710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905710))
  {
    operator new();
  }

  return qword_1EA905708;
}

void sub_1867327B0(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C406A05FE54);
  __cxa_guard_abort(&qword_1EA905710);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::MethodOptions::default_instance(AddrObjGoogle::protobuf::MethodOptions *this)
{
  v1 = AddrObjGoogle::protobuf::MethodOptions::default_instance_(this);
  if (!v1)
  {
    AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(0, v2, v3, v4);
  }

  return AddrObjGoogle::protobuf::MethodOptions::default_instance_(v1);
}

uint64_t AddrObjGoogle::protobuf::UninterpretedOption_NamePart::default_instance_(AddrObjGoogle::protobuf::UninterpretedOption_NamePart *this)
{
  if ((atomic_load_explicit(&qword_1EA905730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EA905730))
  {
    operator new();
  }

  return qword_1EA905728;
}

void sub_186732898(_Unwind_Exception *a1)
{
  MEMORY[0x18CFD1E40](v1, 0x10A1C40ED7A6C83);
  __cxa_guard_abort(&qword_1EA905730);
  _Unwind_Resume(a1);
}

void addr_obj::Base64::encodeString(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  addr_obj::Base64::Internal::encodeString(a1, a2, __s, 0x400uLL);
}

void sub_186732944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::string *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a2)
  {
    if (*(v25 + 23) < 0)
    {
      operator delete(*v25);
    }

    v27 = __cxa_begin_catch(exception_object);
    isInitialized = addr_obj::Logger::isInitialized(v27);
    if (isInitialized)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&a24);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a24, "encodeString", 12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " failed", 7);
      std::string::basic_string[abi:ne200100]<0>(&a21, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/Base64.cpp");
      std::string::basic_string[abi:ne200100]<0>(&a18, "encodeString");
      std::stringbuf::str();
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      addr_obj::Logger::log(16, &a21, 272, &a18, &a15, &__p);
      if (a14 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(a17) < 0)
      {
        operator delete(a15);
      }

      if (SHIBYTE(a20) < 0)
      {
        operator delete(a18);
      }

      if (SHIBYTE(a23) < 0)
      {
        operator delete(a21);
      }

      isInitialized = std::ostringstream::~ostringstream(&a24);
    }

    v30 = addr_obj::emptyString(isInitialized);
    if (*(v30 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v25, *v30, *(v30 + 1));
    }

    else
    {
      v31 = *v30;
      *(v25 + 16) = *(v30 + 2);
      *v25 = v31;
    }

    __cxa_end_catch();
    JUMPOUT(0x186732914);
  }

  _Unwind_Resume(exception_object);
}

void sub_186732E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x186732E58);
  }

  JUMPOUT(0x186732B38);
}

void _GEOLogFromMM(int a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 > 15)
  {
    if ((a1 - 16) >= 2)
    {
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_ERROR;
    }

    v7 = (a1 - 16) < 2;
    goto LABEL_13;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      v8 = OS_LOG_TYPE_DEFAULT;
      v7 = 0;
      goto LABEL_13;
    }
  }

  if (!+[GEOAddressObject isLoggingDebug])
  {
    return;
  }

  v7 = 0;
  v8 = OS_LOG_TYPE_DEBUG;
LABEL_13:
  v9 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
  if (os_log_type_enabled(v9, v8))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v14 = 136380931;
    v15 = v10;
    v16 = 2081;
    v17 = v11;
    _os_log_impl(&dword_18660C000, v9, v8, "%{private}s: %{private}s", &v14, 0x16u);
  }

  if (v7)
  {
    v12 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOAddressObject");
    if (os_log_type_enabled(v12, v8))
    {
      if (*(a4 + 23) >= 0)
      {
        v13 = a4;
      }

      else
      {
        v13 = *a4;
      }

      v14 = 136380675;
      v15 = v13;
      _os_log_impl(&dword_18660C000, v12, v8, "Base64 of AddressObject: %{private}s", &v14, 0xCu);
    }
  }
}

void addr_obj::AddressObjectFactory::parseBytes(uint64_t a1, uint64_t *a2)
{
  v3 = addr_obj::AddressObjectProto::AddressObjectProto(v26);
  if (AddrObjGoogle::protobuf::MessageLite::ParseFromString(v3, a2))
  {
    v4 = addr_obj::Localization::Localization(&v25, v26);
    addr_obj::AddressObjectFactory::fromProto(v4, v26);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v25);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "failed MessageLite::ParseFromString() from ", 43);
  addr_obj::Base64::encodeString(a2, v24);
  if ((v24[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = v24[0].__r_.__value_.__r.__words[0];
  }

  if ((v24[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24[0].__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, size);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; library version: ", 19);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "11.3.0", 6);
  if (SHIBYTE(v24[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24[0].__r_.__value_.__l.__data_);
  }

  if (addr_obj::Logger::isInitialized(v10))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v24);
    std::stringbuf::str();
    if ((v23 & 0x80u) == 0)
    {
      v11 = v22;
    }

    else
    {
      v11 = v22[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v12 = v23;
    }

    else
    {
      v12 = v22[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v11, v12);
    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(v20, "parseBytes");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(v17, "");
    addr_obj::Logger::log(16, v22, 261, v20, &v19, v17);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    std::ostringstream::~ostringstream(v24);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "; at ", 5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp", 94);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
  MEMORY[0x18CFD1C40](v15, 261);
  exception = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(v24, "DataError");
  std::stringbuf::str();
  addr_obj::Exception<std::runtime_error>::Exception(exception, &v24[0].__r_.__value_.__l.__data_, v22);
}

void sub_186733674(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v30)
  {
LABEL_8:
    std::ostringstream::~ostringstream(&v31);
    JUMPOUT(0x186733728);
  }

  __cxa_free_exception(v29);
  goto LABEL_8;
}

uint64_t AddrObjGoogle::protobuf::MessageLite::ParseFromString(uint64_t a1, uint64_t *a2)
{
  LODWORD(v3) = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[0] = 0;
  v8[1] = v4;
  v8[2] = v4 + v3;
  v9 = v3;
  v10 = 0;
  v11 = 0;
  v12 = v3;
  v13 = xmmword_187FB7A20;
  v14 = AddrObjGoogle::protobuf::io::CodedInputStream::default_recursion_limit_;
  v15 = 0;
  v16 = 0;
  (*(*a1 + 32))(a1);
  if (!(*(*a1 + 64))(a1, v8))
  {
    goto LABEL_12;
  }

  if (((*(*a1 + 40))(a1) & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v19, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/message_lite.cc", 124);
    sub_1867338E0(a1, &__p);
    v6 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v19, &__p);
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v17, v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = v11;
LABEL_13:
  AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(v8);
  return v5 & 1;
}

void sub_1867338A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage((v25 - 64));
  AddrObjGoogle::protobuf::io::CodedInputStream::~CodedInputStream(&a9);
  _Unwind_Resume(a1);
}

void sub_1867338E0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "Can't ");
  std::string::append(a2, "parse");
  std::string::append(a2, " message of type ");
  (*(*a1 + 16))(&__p, a1);
  if ((v10 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v9;
  }

  std::string::append(a2, p_p, v5);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a2, " because it is missing required fields: ");
  (*(*a1 + 48))(&__p, a1);
  if ((v10 & 0x80u) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p;
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = v9;
  }

  std::string::append(a2, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_186733A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t addr_obj::LocalizationProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
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
        if (v7 >> 3 != 3)
        {
          break;
        }

        if (v9 != 2)
        {
          goto LABEL_16;
        }

LABEL_31:
        *(v5 + 44) |= 4u;
        v14 = *(v5 + 32);
        if (v14 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
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

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v9 != 2)
      {
        goto LABEL_16;
      }

      *(v5 + 44) |= 1u;
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
        *(a2 + 1) = v11 + 1;
LABEL_24:
        *(v5 + 44) |= 2u;
        v12 = *(v5 + 24);
        if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 24));
        if (!this)
        {
          return this;
        }

        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 26)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_31;
        }
      }
    }

    if (v9 == 2)
    {
      goto LABEL_24;
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

uint64_t addr_obj::FingerprintProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
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
        if (v7 >> 3 <= 2)
        {
          break;
        }

        if (v8 != 3)
        {
          if (v8 == 4 && v9 == 2)
          {
            goto LABEL_44;
          }

          goto LABEL_20;
        }

        if (v9 != 2)
        {
          goto LABEL_20;
        }

        v13 = *(v5 + 52);
LABEL_37:
        *(v5 + 52) = v13 | 4;
        v17 = *(v5 + 32);
        if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
        if (!this)
        {
          return this;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
LABEL_44:
          *(v5 + 52) |= 8u;
          v19 = *(v5 + 40);
          if (v19 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
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

      if (v8 != 1)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_20;
      }

      *(v5 + 52) |= 1u;
      v12 = *(v5 + 16);
      if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
      if (!this)
      {
        return this;
      }

      v14 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v14 < v10 && *v14 == 16)
      {
        v11 = v14 + 1;
        *(a2 + 1) = v11;
LABEL_29:
        v20 = 0;
        if (v11 >= v10 || (v15 = *v11, (v15 & 0x8000000000000000) != 0))
        {
          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v20);
          if (!this)
          {
            return this;
          }

          v15 = v20;
          v16 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v16 = v11 + 1;
          *(a2 + 1) = v16;
        }

        *(v5 + 24) = -(v15 & 1) ^ (v15 >> 1);
        v13 = *(v5 + 52) | 2;
        *(v5 + 52) = v13;
        if (v16 < v10 && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_37;
        }
      }
    }

    if (v8 == 2 && (v7 & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t addr_obj::V1AddressObjectProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
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
        if (v7 >> 3 > 3)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_30;
          }

          *(v5 + 100) |= 1u;
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
            goto LABEL_41;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 != 3 || v9 != 2)
            {
              goto LABEL_30;
            }

            goto LABEL_55;
          }

          if (v9 != 2)
          {
            goto LABEL_30;
          }

LABEL_41:
          *(v5 + 100) |= 2u;
          v13 = *(v5 + 48);
          if (!v13)
          {
            operator new();
          }

          v49 = 0;
          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2) || *v14 < 0)
          {
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          v15 = *(a2 + 14);
          v16 = *(a2 + 15);
          *(a2 + 14) = v15 + 1;
          if (v15 >= v16)
          {
            return 0;
          }

          v17 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v49);
          if (!addr_obj::geo3::Address::MergePartialFromCodedStream(v13, a2, v18, v19) || *(a2 + 36) != 1)
          {
            return 0;
          }

          this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v17);
          v20 = *(a2 + 14);
          v21 = __OFSUB__(v20, 1);
          v22 = v20 - 1;
          if (v22 < 0 == v21)
          {
            *(a2 + 14) = v22;
          }

          v23 = *(a2 + 1);
          if (v23 < *(a2 + 2) && *v23 == 26)
          {
            *(a2 + 1) = v23 + 1;
LABEL_55:
            *(v5 + 100) |= 4u;
            v24 = *(v5 + 56);
            if (v24 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 56));
            if (!this)
            {
              return this;
            }

            v25 = *(a2 + 1);
            if (v25 < *(a2 + 2) && *v25 == 34)
            {
              *(a2 + 1) = v25 + 1;
              goto LABEL_62;
            }
          }
        }
      }

      if (v7 >> 3 > 5)
      {
        break;
      }

      if (v8 == 4)
      {
        if (v9 != 2)
        {
          goto LABEL_30;
        }

LABEL_62:
        *(v5 + 100) |= 8u;
        v26 = *(v5 + 64);
        if (v26 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
        {
          operator new();
        }

        this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 64));
        if (!this)
        {
          return this;
        }

        v27 = *(a2 + 1);
        if (v27 < *(a2 + 2) && *v27 == 42)
        {
          *(a2 + 1) = v27 + 1;
LABEL_69:
          *(v5 + 100) |= 0x10u;
          v28 = *(v5 + 72);
          if (!v28)
          {
            operator new();
          }

          v50 = 0;
          v29 = *(a2 + 1);
          if (v29 >= *(a2 + 2) || *v29 < 0)
          {
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
            {
              return 0;
            }
          }

          else
          {
            v50 = *v29;
            *(a2 + 1) = v29 + 1;
          }

          v30 = *(a2 + 14);
          v31 = *(a2 + 15);
          *(a2 + 14) = v30 + 1;
          if (v30 >= v31)
          {
            return 0;
          }

          v32 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v50);
          if (!addr_obj::geo3::StructuredAddress::MergePartialFromCodedStream(v28, a2, v33, v34) || *(a2 + 36) != 1)
          {
            return 0;
          }

          this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v32);
          v35 = *(a2 + 14);
          v21 = __OFSUB__(v35, 1);
          v36 = v35 - 1;
          if (v36 < 0 == v21)
          {
            *(a2 + 14) = v36;
          }

          v37 = *(a2 + 1);
          if (v37 < *(a2 + 2) && *v37 == 50)
          {
            *(a2 + 1) = v37 + 1;
LABEL_83:
            *(v5 + 100) |= 0x20u;
            v38 = *(v5 + 80);
            if (v38 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 80));
            if (!this)
            {
              return this;
            }

            v39 = *(a2 + 1);
            if (v39 < *(a2 + 2) && *v39 == 58)
            {
              *(a2 + 1) = v39 + 1;
              goto LABEL_90;
            }
          }
        }
      }

      else
      {
        if (v8 == 5 && v9 == 2)
        {
          goto LABEL_69;
        }

LABEL_30:
        if (v9 == 4)
        {
          return 1;
        }

        if ((v7 - 800) > 0x31F)
        {
          this = AddrObjGoogle::protobuf::internal::WireFormat::SkipField(a2, v7, (v5 + 32), a4);
          if ((this & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v11 = addr_obj::V1AddressObjectProto::default_instance_(this);
          this = AddrObjGoogle::protobuf::internal::ExtensionSet::ParseField((v5 + 8), v7, a2, v11, (v5 + 32));
          if ((this & 1) == 0)
          {
            return 0;
          }
        }
      }
    }

    if (v8 == 6)
    {
      if (v9 == 2)
      {
        goto LABEL_83;
      }

      goto LABEL_30;
    }

    if (v8 != 7 || v9 != 2)
    {
      goto LABEL_30;
    }

LABEL_90:
    *(v5 + 100) |= 0x40u;
    v40 = *(v5 + 88);
    if (!v40)
    {
      operator new();
    }

    v51 = 0;
    v41 = *(a2 + 1);
    if (v41 >= *(a2 + 2) || *v41 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
      {
        return 0;
      }
    }

    else
    {
      v51 = *v41;
      *(a2 + 1) = v41 + 1;
    }

    v42 = *(a2 + 14);
    v43 = *(a2 + 15);
    *(a2 + 14) = v42 + 1;
    if (v42 >= v43)
    {
      return 0;
    }

    v44 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v51);
    if (!addr_obj::geo3::Address::MergePartialFromCodedStream(v40, a2, v45, v46) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v44);
    v47 = *(a2 + 14);
    v21 = __OFSUB__(v47, 1);
    v48 = v47 - 1;
    if (v48 < 0 == v21)
    {
      *(a2 + 14) = v48;
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

uint64_t AddrObjGoogle::protobuf::internal::ExtensionSet::ParseFieldWithExtensionInfo(AddrObjGoogle::protobuf::internal::ExtensionSet *this, uint64_t a2, uint64_t a3, AddrObjGoogle::protobuf::io::CodedInputStream *a4, uint64_t a5)
{
  if (*(a3 + 2) != 1)
  {
    switch(*a3)
    {
      case 1:
        v80[0].__r_.__value_.__r.__words[0] = 0;
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v80);
        if (!result)
        {
          return result;
        }

        if (*(a3 + 1) == 1)
        {
          AddrObjGoogle::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, 0, *&v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
        }

        else
        {
          AddrObjGoogle::protobuf::internal::ExtensionSet::SetDouble(this, a2, 1, *&v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
        }

        return 1;
      case 2:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v80);
        if (!result)
        {
          return result;
        }

        if (*(a3 + 1) == 1)
        {
          AddrObjGoogle::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, 0, *&v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
        }

        else
        {
          AddrObjGoogle::protobuf::internal::ExtensionSet::SetFloat(this, a2, 2, *&v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
        }

        return 1;
      case 3:
        v80[0].__r_.__value_.__r.__words[0] = 0;
        v29 = *(a4 + 1);
        if (v29 >= *(a4 + 2) || (v30 = *v29, v30 < 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v80);
          if (!result)
          {
            return result;
          }

          v30 = v80[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          *(a4 + 1) = v29 + 1;
        }

        v31 = *(a3 + 1);
        v32 = *(a3 + 24);
        v33 = this;
        v34 = a2;
        v35 = 3;
        goto LABEL_194;
      case 4:
        v80[0].__r_.__value_.__r.__words[0] = 0;
        v36 = *(a4 + 1);
        if (v36 >= *(a4 + 2) || (*v36 & 0x8000000000000000) != 0)
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v80);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v80[0].__r_.__value_.__r.__words[0] = *v36;
          *(a4 + 1) = v36 + 1;
        }

        v41 = *(a3 + 1);
        v30 = v80[0].__r_.__value_.__r.__words[0];
        v32 = *(a3 + 24);
        v33 = this;
        v34 = a2;
        v35 = 4;
LABEL_183:
        if (v41 == 1)
        {
          goto LABEL_184;
        }

        goto LABEL_195;
      case 5:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        v24 = *(a4 + 1);
        if (v24 >= *(a4 + 2) || (data = *v24, data < 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80);
          if (!result)
          {
            return result;
          }

          data = v80[0].__r_.__value_.__l.__data_;
        }

        else
        {
          *(a4 + 1) = v24 + 1;
        }

        v17 = *(a3 + 1);
        v18 = *(a3 + 24);
        v19 = this;
        v20 = a2;
        v21 = 5;
        goto LABEL_171;
      case 6:
        v80[0].__r_.__value_.__r.__words[0] = 0;
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v80);
        if (!result)
        {
          return result;
        }

        v41 = *(a3 + 1);
        v30 = v80[0].__r_.__value_.__r.__words[0];
        v32 = *(a3 + 24);
        v33 = this;
        v34 = a2;
        v35 = 6;
        goto LABEL_183;
      case 7:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v80);
        if (!result)
        {
          return result;
        }

        v45 = *(a3 + 1);
        data = v80[0].__r_.__value_.__l.__data_;
        v18 = *(a3 + 24);
        v19 = this;
        v20 = a2;
        v21 = 7;
        goto LABEL_176;
      case 8:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        v37 = *(a4 + 1);
        if (v37 >= *(a4 + 2) || (v38 = *v37, v38 < 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80);
          if (!result)
          {
            return result;
          }

          v38 = v80[0].__r_.__value_.__l.__data_;
        }

        else
        {
          *(a4 + 1) = v37 + 1;
        }

        if (*(a3 + 1) == 1)
        {
          AddrObjGoogle::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, 0, v38 != 0, *(a3 + 24));
        }

        else
        {
          AddrObjGoogle::protobuf::internal::ExtensionSet::SetBool(this, a2, 8, v38 != 0, *(a3 + 24));
        }

        return 1;
      case 9:
        v49 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v50 = AddrObjGoogle::protobuf::internal::ExtensionSet::AddString(this, a2, 9, v49);
        }

        else
        {
          v50 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableString(this, a2, 9, v49);
        }

        return AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a4, v50);
      case 0xA:
        v26 = *(a3 + 8);
        v27 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v28 = AddrObjGoogle::protobuf::internal::ExtensionSet::AddMessage(this, a2, 10, v26, v27);
        }

        else
        {
          v28 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 10, v26, v27);
        }

        v67 = *(a4 + 14);
        v68 = *(a4 + 15);
        *(a4 + 14) = v67 + 1;
        if (v67 >= v68)
        {
          return 0;
        }

        result = (*(*v28 + 64))(v28, a4);
        if (!result)
        {
          return result;
        }

        v69 = *(a4 + 14);
        v70 = __OFSUB__(v69, 1);
        v71 = v69 - 1;
        if (v71 < 0 == v70)
        {
          *(a4 + 14) = v71;
        }

        return *(a4 + 8) == ((8 * a2) | 4);
      case 0xB:
        v46 = *(a3 + 8);
        v47 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v48 = AddrObjGoogle::protobuf::internal::ExtensionSet::AddMessage(this, a2, 11, v46, v47);
        }

        else
        {
          v48 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableMessage(this, a2, 11, v46, v47);
        }

        v72 = v48;
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        v73 = *(a4 + 1);
        if (v73 >= *(a4 + 2) || *v73 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80))
          {
            return 0;
          }
        }

        else
        {
          LODWORD(v80[0].__r_.__value_.__l.__data_) = *v73;
          *(a4 + 1) = v73 + 1;
        }

        v74 = *(a4 + 14);
        v75 = *(a4 + 15);
        *(a4 + 14) = v74 + 1;
        if (v74 >= v75)
        {
          return 0;
        }

        v76 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a4, v80[0].__r_.__value_.__l.__data_);
        if (!(*(*v72 + 64))(v72, a4) || *(a4 + 36) != 1)
        {
          return 0;
        }

        AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a4, v76);
        v77 = *(a4 + 14);
        v70 = __OFSUB__(v77, 1);
        v78 = v77 - 1;
        if (v78 < 0 == v70)
        {
          *(a4 + 14) = v78;
        }

        return 1;
      case 0xC:
        v22 = *(a3 + 24);
        if (*(a3 + 1) == 1)
        {
          v23 = AddrObjGoogle::protobuf::internal::ExtensionSet::AddString(this, a2, 12, v22);
        }

        else
        {
          v23 = AddrObjGoogle::protobuf::internal::ExtensionSet::MutableString(this, a2, 12, v22);
        }

        return AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a4, v23);
      case 0xD:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        v25 = *(a4 + 1);
        if (v25 >= *(a4 + 2) || *v25 < 0)
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          LODWORD(v80[0].__r_.__value_.__l.__data_) = *v25;
          *(a4 + 1) = v25 + 1;
        }

        v45 = *(a3 + 1);
        data = v80[0].__r_.__value_.__l.__data_;
        v18 = *(a3 + 24);
        v19 = this;
        v20 = a2;
        v21 = 13;
LABEL_176:
        if (v45 != 1)
        {
          goto LABEL_177;
        }

        goto LABEL_172;
      case 0xE:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        v43 = *(a4 + 1);
        if (v43 >= *(a4 + 2) || (data_low = *v43, (data_low & 0x80000000) != 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80);
          if (!result)
          {
            return result;
          }

          data_low = LODWORD(v80[0].__r_.__value_.__l.__data_);
        }

        else
        {
          *(a4 + 1) = v43 + 1;
        }

        if ((*(a3 + 8))(*(a3 + 16), data_low))
        {
          if (*(a3 + 1) == 1)
          {
            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 14, 0, data_low, *(a3 + 24));
          }

          else
          {
            AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt32(this, a2, 14, data_low, *(a3 + 24));
          }
        }

        else
        {
          (*(*a5 + 32))(a5, a2, data_low);
        }

        return 1;
      case 0xF:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v80);
        if (!result)
        {
          return result;
        }

        data = v80[0].__r_.__value_.__l.__data_;
        v17 = *(a3 + 1);
        v18 = *(a3 + 24);
        v19 = this;
        v20 = a2;
        v21 = 15;
        goto LABEL_171;
      case 0x10:
        v80[0].__r_.__value_.__r.__words[0] = 0;
        result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v80);
        if (!result)
        {
          return result;
        }

        v30 = v80[0].__r_.__value_.__r.__words[0];
        v31 = *(a3 + 1);
        v32 = *(a3 + 24);
        v33 = this;
        v34 = a2;
        v35 = 16;
        goto LABEL_194;
      case 0x11:
        LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
        v14 = *(a4 + 1);
        if (v14 >= *(a4 + 2) || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80);
          if (!result)
          {
            return result;
          }

          v15 = v80[0].__r_.__value_.__l.__data_;
        }

        else
        {
          *(a4 + 1) = v14 + 1;
        }

        data = -(v15 & 1) ^ (v15 >> 1);
        v17 = *(a3 + 1);
        v18 = *(a3 + 24);
        v19 = this;
        v20 = a2;
        v21 = 17;
LABEL_171:
        if (v17 == 1)
        {
LABEL_172:
          AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(v19, v20, v21, 0, data, v18);
        }

        else
        {
LABEL_177:
          AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt32(v19, v20, v21, data, v18);
        }

        return 1;
      case 0x12:
        v80[0].__r_.__value_.__r.__words[0] = 0;
        v39 = *(a4 + 1);
        if (v39 >= *(a4 + 2) || (v40 = *v39, (v40 & 0x8000000000000000) != 0))
        {
          result = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v80);
          if (!result)
          {
            return result;
          }

          v40 = v80[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          *(a4 + 1) = v39 + 1;
        }

        v30 = -(v40 & 1) ^ (v40 >> 1);
        v31 = *(a3 + 1);
        v32 = *(a3 + 24);
        v33 = this;
        v34 = a2;
        v35 = 18;
LABEL_194:
        if (v31 == 1)
        {
LABEL_184:
          AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(v33, v34, v35, 0, v30, v32);
        }

        else
        {
LABEL_195:
          AddrObjGoogle::protobuf::internal::ExtensionSet::SetInt64(v33, v34, v35, v30, v32);
        }

        break;
      default:
        return 1;
    }

    return 1;
  }

  v81 = 0;
  v9 = *(a4 + 1);
  if (v9 < *(a4 + 2))
  {
    v10 = *v9;
    if ((v10 & 0x80000000) == 0)
    {
      v81 = *v9;
      *(a4 + 1) = v9 + 1;
LABEL_11:
      v12 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a4, v10);
      switch(*a3)
      {
        case 1:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            v80[0].__r_.__value_.__r.__words[0] = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v80))
            {
              return 0;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddDouble(this, a2, 1, 1, *&v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 2:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v80))
            {
              return 0;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddFloat(this, a2, 2, 1, *&v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 3:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            v80[0].__r_.__value_.__r.__words[0] = 0;
            v57 = *(a4 + 1);
            if (v57 >= *(a4 + 2) || (v58 = *v57, v58 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v80))
              {
                return 0;
              }

              v58 = v80[0].__r_.__value_.__r.__words[0];
            }

            else
            {
              *(a4 + 1) = v57 + 1;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(this, a2, 3, 1, v58, *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 4:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            v80[0].__r_.__value_.__r.__words[0] = 0;
            v59 = *(a4 + 1);
            if (v59 >= *(a4 + 2) || (v60 = *v59, v60 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v80))
              {
                return 0;
              }

              v60 = v80[0].__r_.__value_.__r.__words[0];
            }

            else
            {
              v80[0].__r_.__value_.__r.__words[0] = *v59;
              *(a4 + 1) = v59 + 1;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(this, a2, 4, 1, v60, *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 5:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            v53 = *(a4 + 1);
            if (v53 >= *(a4 + 2) || (v54 = *v53, v54 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80))
              {
                return 0;
              }

              v54 = v80[0].__r_.__value_.__l.__data_;
            }

            else
            {
              *(a4 + 1) = v53 + 1;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 5, 1, v54, *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 6:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            v80[0].__r_.__value_.__r.__words[0] = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v80))
            {
              return 0;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(this, a2, 6, 1, v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 7:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v80))
            {
              return 0;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 7, 1, v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 8:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            v61 = *(a4 + 1);
            if (v61 >= *(a4 + 2) || (v62 = *v61, v62 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80))
              {
                return 0;
              }

              v62 = v80[0].__r_.__value_.__l.__data_;
            }

            else
            {
              *(a4 + 1) = v61 + 1;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddBool(this, a2, 8, 1, v62 != 0, *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v80, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/extension_set.cc", 943);
          v13 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v80, "Non-primitive types can't be packed.");
          AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v79, v13);
          AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v80[0].__r_.__value_.__l.__data_);
          goto LABEL_13;
        case 0xD:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            v55 = *(a4 + 1);
            if (v55 >= *(a4 + 2) || (v56 = *v55, v56 < 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80))
              {
                return 0;
              }

              v56 = v80[0].__r_.__value_.__l.__data_;
            }

            else
            {
              LODWORD(v80[0].__r_.__value_.__l.__data_) = *v55;
              *(a4 + 1) = v55 + 1;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 13, 1, v56, *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 0xE:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            v65 = *(a4 + 1);
            if (v65 >= *(a4 + 2) || (v66 = *v65, (v66 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80))
              {
                return 0;
              }

              v66 = LODWORD(v80[0].__r_.__value_.__l.__data_);
            }

            else
            {
              *(a4 + 1) = v65 + 1;
            }

            if ((*(a3 + 8))(*(a3 + 16), v66))
            {
              AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 14, 1, v66, *(a3 + 24));
            }
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 0xF:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a4, v80))
            {
              return 0;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 15, 1, v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 0x10:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          while (1)
          {
            v80[0].__r_.__value_.__r.__words[0] = 0;
            if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a4, v80))
            {
              return 0;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(this, a2, 16, 1, v80[0].__r_.__value_.__l.__data_, *(a3 + 24));
            if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) <= 0)
            {
              goto LABEL_13;
            }
          }

        case 0x11:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          do
          {
            LODWORD(v80[0].__r_.__value_.__l.__data_) = 0;
            v51 = *(a4 + 1);
            if (v51 >= *(a4 + 2) || (v52 = *v51, (v52 & 0x80000000) != 0))
            {
              if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, v80))
              {
                return 0;
              }

              v52 = v80[0].__r_.__value_.__l.__data_;
            }

            else
            {
              *(a4 + 1) = v51 + 1;
            }

            AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt32(this, a2, 17, 1, -(v52 & 1) ^ (v52 >> 1), *(a3 + 24));
          }

          while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
          goto LABEL_13;
        case 0x12:
          if (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) < 1)
          {
            goto LABEL_13;
          }

          break;
        default:
          goto LABEL_13;
      }

      do
      {
        v80[0].__r_.__value_.__r.__words[0] = 0;
        v63 = *(a4 + 1);
        if (v63 >= *(a4 + 2) || (v64 = *v63, (v64 & 0x8000000000000000) != 0))
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint64Fallback(a4, v80))
          {
            return 0;
          }

          v64 = v80[0].__r_.__value_.__r.__words[0];
        }

        else
        {
          *(a4 + 1) = v63 + 1;
        }

        AddrObjGoogle::protobuf::internal::ExtensionSet::AddInt64(this, a2, 18, 1, -(v64 & 1) ^ (v64 >> 1), *(a3 + 24));
      }

      while (AddrObjGoogle::protobuf::io::CodedInputStream::BytesUntilLimit(a4) > 0);
LABEL_13:
      AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a4, v12);
      return 1;
    }
  }

  if (AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a4, &v81))
  {
    v10 = v81;
    goto LABEL_11;
  }

  return 0;
}

void sub_1867353C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int,AddrObjGoogle::protobuf::internal::ExtensionSet::Extension>>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<addr_obj::Fingerprints::Fingerprint>::__emplace_back_slow_path<addr_obj::Fingerprints::Fingerprint const&>(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(v7 + 24) = *(a2 + 3);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v9 = a2[2];
    *(v7 + 48) = *(a2 + 6);
    *(v7 + 32) = v9;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v10 = *(a2 + 56);
    *(v7 + 72) = *(a2 + 9);
    *(v7 + 56) = v10;
  }

  *&v19 = v19 + 80;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>,addr_obj::Fingerprints::Fingerprint*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<addr_obj::Fingerprints::Fingerprint>::~__split_buffer(&v17);
  return v16;
}

void sub_1867356D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 55) < 0)
  {
    operator delete(*(v7 + 32));
  }

  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<addr_obj::Fingerprints::Fingerprint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<addr_obj::Fingerprints::Fingerprint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<addr_obj::Fingerprints::Fingerprint>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<addr_obj::Fingerprints::Fingerprint>::__emplace_back_slow_path<addr_obj::Fingerprints::Fingerprint const&>(a1, a2);
  }

  else
  {
    std::vector<addr_obj::Fingerprints::Fingerprint>::__construct_one_at_end[abi:ne200100]<addr_obj::Fingerprints::Fingerprint const&>(a1, a2);
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

std::string *addr_obj::AddressObjectFactory::AddressObjectFactory(std::string *this, __int128 *a2)
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

  if (addr_obj::Logger::isInitialized(this))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "input parameters: ", 18);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "appName", 7);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "==", 2);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(v16, "AddressObjectFactory");
    std::stringbuf::str();
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    addr_obj::Logger::log(2, v18, 56, v16, &v14, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v20 = *MEMORY[0x1E69E54E8];
    *(&v20 + *(v20 - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    v21 = MEMORY[0x1E69E5548] + 16;
    if (v23 < 0)
    {
      operator delete(v22[7].__locale_);
    }

    v21 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v22);
    std::ostream::~ostream();
    MEMORY[0x18CFD1DA0](&v24);
  }

  if (atomic_load_explicit(&qword_1EA9052B8, memory_order_acquire) != -1)
  {
    v20 = sub_186736298;
    v18[0] = &v20;
    std::__call_once(&qword_1EA9052B8, v18, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  return this;
}

void sub_186735F10(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, void *a8, void *__pa, int a10, __int16 a11, char a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, __int128 a21, std::string::size_type a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (SHIBYTE(a14) < 0)
  {
    operator delete(__pa);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (SHIBYTE(a22) < 0)
  {
    operator delete(a21);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ostringstream::~ostringstream(&a30);
  v37 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v38 = v37;
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "AddressObjectFactory");
    std::string::basic_string[abi:ne200100]<0>(&a15, "Exception caught during formatting of the log line: ");
    v39 = (*(*v38 + 16))(v38);
    v40 = std::string::append(&a15, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    a22 = v40->__r_.__value_.__r.__words[2];
    a21 = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__pa, "");
    addr_obj::Logger::log(2, &a30, 56, &a24, &a21, &__pa);
    if (SHIBYTE(a14) < 0)
    {
      operator delete(__pa);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&a30, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/AddressObjectFactory.cpp");
    std::string::basic_string[abi:ne200100]<0>(&a24, "AddressObjectFactory");
    std::string::basic_string[abi:ne200100]<0>(&a21, "Unexpected exception caught during formatting of the log line");
    std::string::basic_string[abi:ne200100]<0>(&a15, "");
    addr_obj::Logger::log(2, &a30, 56, &a24, &a21, &a15);
    if (a20 < 0)
    {
      operator delete(a15);
    }

    if (SHIBYTE(a22) < 0)
    {
      operator delete(a21);
    }

    if (a29 < 0)
    {
      operator delete(a24);
    }

    if (a35 < 0)
    {
      operator delete(a30);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x186735EA8);
}

void sub_18673615C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186736154);
}

void sub_1867361D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  __cxa_end_catch();
  if (*(v39 + 23) < 0)
  {
    operator delete(*v39);
  }

  _Unwind_Resume(a1);
}

void sub_186736298(addr_obj *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  addr_obj::protobuf_AddDesc_AddressObject_2eproto(a1, a2, a3, a4);
  addr_obj::geo3::protobuf_AddDesc_geo3_2dslim_2eproto(v4, v5, v6, v7);

  AddrObjGoogle::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto(v8, v9, v10, v11);
}

void AddrObjGoogle::protobuf::internal::VerifyVersion(AddrObjGoogle::protobuf::internal *this, AddrObjGoogle::protobuf::internal *a2, const std::string::value_type *a3, const char *a4)
{
  if (a2 > 2005000)
  {
    v21 = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/stubs/common.cc";
    v23 = 62;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    AddrObjGoogle::protobuf::internal::VersionString(&v18, a2);
    if ((v20 & 0x80u) == 0)
    {
      v7 = &v18;
    }

    else
    {
      v7 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19;
    }

    std::string::append(&v24, v7, v8);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    AddrObjGoogle::protobuf::internal::VersionString(&__p, 0x1E9808);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v10 = v17;
    }

    else
    {
      v10 = v16;
    }

    std::string::append(&v24, p_p, v10);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    AddrObjGoogle::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (this < 2005000)
  {
    v21 = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/stubs/common.cc";
    v23 = 73;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    AddrObjGoogle::protobuf::internal::VersionString(&v18, this);
    if ((v20 & 0x80u) == 0)
    {
      v11 = &v18;
    }

    else
    {
      v11 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v12 = v20;
    }

    else
    {
      v12 = v19;
    }

    std::string::append(&v24, v11, v12);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    AddrObjGoogle::protobuf::internal::VersionString(&__p, 0x1E9808);
    if ((v17 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }

    std::string::append(&v24, v13, v14);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    AddrObjGoogle::protobuf::internal::LogMessage::Finish(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void sub_186736554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::DescriptorPool::InternalAddGeneratedFile(AddrObjGoogle::protobuf::DescriptorPool *this, const void *a2)
{
  v2 = a2;
  v4 = qword_1EA905918;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v7[0].__r_.__value_.__r.__words[0] = &unk_1EF7E2130;
    v7[0].__r_.__value_.__l.__size_ = sub_1867366CC;
    v7[0].__r_.__value_.__s.__data_[16] = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&qword_1EA905918, v7);
    AddrObjGoogle::protobuf::internal::FunctionClosure0::~FunctionClosure0(v7);
  }

  if ((AddrObjGoogle::protobuf::EncodedDescriptorDatabase::Add(qword_1EA905910, this, v2) & 1) == 0)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor.cc", 960);
    v5 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: generated_database_->Add(encoded_file_descriptor, size): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v6, v5);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }
}

void sub_1867366A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_18673678C()
{
  if (qword_1EA905910)
  {
    (*(*qword_1EA905910 + 8))(qword_1EA905910);
  }

  qword_1EA905910 = 0;
  result = qword_1EA905908;
  if (qword_1EA905908)
  {
    AddrObjGoogle::protobuf::DescriptorPool::~DescriptorPool(qword_1EA905908);
    result = MEMORY[0x18CFD1E40]();
  }

  qword_1EA905908 = 0;
  return result;
}

void AddrObjGoogle::protobuf::internal::OnShutdown(AddrObjGoogle::protobuf::internal *this, void (*a2)(void))
{
  v3 = AddrObjGoogle::protobuf::internal::shutdown_functions_init;
  __dmb(0xBu);
  if (v3 != 2)
  {
    v17[0] = &unk_1EF7E2130;
    v17[1] = AddrObjGoogle::protobuf::internal::InitShutdownFunctions;
    v18 = 0;
    AddrObjGoogle::protobuf::GoogleOnceInitImpl(&AddrObjGoogle::protobuf::internal::shutdown_functions_init, v17);
  }

  v4 = AddrObjGoogle::protobuf::internal::shutdown_functions_mutex;
  AddrObjGoogle::protobuf::internal::Mutex::Lock(AddrObjGoogle::protobuf::internal::shutdown_functions_mutex);
  v5 = AddrObjGoogle::protobuf::internal::shutdown_functions;
  v7 = *(AddrObjGoogle::protobuf::internal::shutdown_functions + 8);
  v6 = *(AddrObjGoogle::protobuf::internal::shutdown_functions + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *AddrObjGoogle::protobuf::internal::shutdown_functions) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v10 = v6 - *AddrObjGoogle::protobuf::internal::shutdown_functions;
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

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void (*)(void)>>(AddrObjGoogle::protobuf::internal::shutdown_functions, v12);
    }

    v13 = (8 * v9);
    *v13 = this;
    v8 = 8 * v9 + 8;
    v14 = *(v5 + 8) - *v5;
    v15 = v13 - v14;
    memcpy(v13 - v14, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v8 = (v7 + 1);
  }

  *(v5 + 8) = v8;
  AddrObjGoogle::protobuf::internal::Mutex::Unlock(v4);
}

void AddrObjGoogle::protobuf::internal::Mutex::Lock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_lock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/stubs/common.cc";
    v6 = 305;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_lock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    AddrObjGoogle::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_186736C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AddrObjGoogle::protobuf::internal::Mutex::Unlock(pthread_mutex_t **this)
{
  v1 = pthread_mutex_unlock(*this);
  if (v1)
  {
    v2 = v1;
    v4 = 3;
    v5 = "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/stubs/common.cc";
    v6 = 312;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "pthread_mutex_unlock: ");
    v3 = strerror(v2);
    std::string::append(&__p, v3);
    AddrObjGoogle::protobuf::internal::LogMessage::Finish(&v4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_186736CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AddrObjGoogle *AddrObjGoogle::protobuf::EncodedDescriptorDatabase::Add(AddrObjGoogle::protobuf::EncodedDescriptorDatabase *this, char *a2, unsigned int a3)
{
  AddrObjGoogle::protobuf::FileDescriptorProto::FileDescriptorProto(v11);
  if (AddrObjGoogle::protobuf::MessageLite::ParseFromArray(v11, a2, a3))
  {
    v6 = AddrObjGoogle::protobuf::SimpleDescriptorDatabase::DescriptorIndex<std::pair<void const*,int>>::AddFile(this + 8, v11, a2, a3);
  }

  else
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 2, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/AddrObjGoogle/protobuf/descriptor_database.cc", 315);
    v7 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "Invalid file descriptor data passed to EncodedDescriptorDatabase::Add().");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v7);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    v6 = 0;
  }

  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(v11);
  return v6;
}

void sub_186736DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  AddrObjGoogle::protobuf::FileDescriptorProto::~FileDescriptorProto(va1);
  _Unwind_Resume(a1);
}

AddrObjGoogle::protobuf::FileDescriptorProto *AddrObjGoogle::protobuf::FileDescriptorProto::FileDescriptorProto(AddrObjGoogle::protobuf::FileDescriptorProto *this)
{
  *this = &unk_1EF7E0CF0;
  v2 = AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 20) = 0;
  *(this + 38) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 50) = 0;
  *(this + 72) = 0u;
  *(this + 26) = 0;
  v3 = AddrObjGoogle::protobuf::internal::kEmptyString(v2);
  *(this + 2) = v3;
  *(this + 3) = AddrObjGoogle::protobuf::internal::kEmptyString(v3);
  *(this + 51) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  return this;
}

void sub_186736EBC()
{
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v3);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v6);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v5);
  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(v4);
  v8 = *(v0 + 72);
  if (v8)
  {
    MEMORY[0x18CFD1E20](v8, 0x1000C8052888210);
  }

  if (*v7)
  {
    MEMORY[0x18CFD1E20](*v7, 0x1000C8052888210);
  }

  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Destroy<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v1);
  JUMPOUT(0x186736EACLL);
}

uint64_t AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<addr_obj::FingerprintProto>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Clear<AddrObjGoogle::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t AddrObjGoogle::protobuf::FileDescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
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
          if (v7 >> 3 <= 5)
          {
            break;
          }

          if (v7 >> 3 > 8)
          {
            if (v8 == 9)
            {
              if (v9 != 2)
              {
                goto LABEL_47;
              }

LABEL_160:
              *(v5 + 204) |= 0x400u;
              v84 = *(v5 + 192);
              if (!v84)
              {
                operator new();
              }

              v113 = 0;
              v85 = *(a2 + 1);
              if (v85 >= *(a2 + 2) || *v85 < 0)
              {
                if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113))
                {
                  return 0;
                }
              }

              else
              {
                v113 = *v85;
                *(a2 + 1) = v85 + 1;
              }

              v86 = *(a2 + 14);
              v87 = *(a2 + 15);
              *(a2 + 14) = v86 + 1;
              if (v86 >= v87)
              {
                return 0;
              }

              v88 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v113);
              if (!AddrObjGoogle::protobuf::SourceCodeInfo::MergePartialFromCodedStream(v84, a2, v89, v90) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v88);
              v91 = *(a2 + 14);
              v32 = __OFSUB__(v91, 1);
              v92 = v91 - 1;
              if (v92 < 0 == v32)
              {
                *(a2 + 14) = v92;
              }

              v93 = *(a2 + 1);
              v11 = *(a2 + 2);
              if (v93 < v11)
              {
                v94 = *v93;
                goto LABEL_173;
              }
            }

            else
            {
              if (v8 != 10)
              {
                if (v8 == 11)
                {
                  if ((v7 & 7) == 0)
                  {
                    v13 = *(a2 + 1);
                    v11 = *(a2 + 2);
                    goto LABEL_195;
                  }

                  if (v9 == 2)
                  {
                    this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)5>(a2, (v5 + 72));
                    if (!this)
                    {
                      return this;
                    }

                    goto LABEL_212;
                  }
                }

                goto LABEL_47;
              }

              if ((v7 & 7) != 0)
              {
                if (v9 == 2)
                {
                  this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(AddrObjGoogle::protobuf::internal::WireFormatLite::FieldType)5>(a2, (v5 + 56));
                  if (!this)
                  {
                    return this;
                  }

                  goto LABEL_192;
                }

                goto LABEL_47;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              while (1)
              {
                v113 = 0;
                if (v12 >= v11 || (v95 = *v12, (v95 & 0x80000000) != 0))
                {
                  this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
                  if (!this)
                  {
                    return this;
                  }

                  v95 = v113;
                }

                else
                {
                  *(a2 + 1) = v12 + 1;
                }

                v96 = *(v5 + 64);
                if (v96 == *(v5 + 68))
                {
                  this = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve((v5 + 56), v96 + 1);
                  v96 = *(v5 + 64);
                }

                v97 = *(v5 + 56);
                *(v5 + 64) = v96 + 1;
                *(v97 + 4 * v96) = v95;
                v98 = *(v5 + 68) - *(v5 + 64);
                if (v98 >= 1)
                {
                  v99 = v98 + 1;
                  do
                  {
                    v100 = *(a2 + 1);
                    v101 = *(a2 + 2);
                    if (v100 >= v101 || *v100 != 80)
                    {
                      break;
                    }

                    *(a2 + 1) = v100 + 1;
                    v113 = 0;
                    if ((v100 + 1) >= v101 || (v102 = v100[1], (v102 & 0x80000000) != 0))
                    {
                      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
                      if (!this)
                      {
                        return this;
                      }

                      v102 = v113;
                      v97 = *(v5 + 56);
                    }

                    else
                    {
                      *(a2 + 1) = v100 + 2;
                    }

                    v103 = *(v5 + 64);
                    *(v5 + 64) = v103 + 1;
                    *(v97 + 4 * v103) = v102;
                    --v99;
                  }

                  while (v99 > 1);
                }

LABEL_192:
                v93 = *(a2 + 1);
                v11 = *(a2 + 2);
                if (v93 >= v11)
                {
                  break;
                }

                v94 = *v93;
                if (v94 == 88)
                {
                  do
                  {
                    v13 = v93 + 1;
                    *(a2 + 1) = v13;
LABEL_195:
                    v113 = 0;
                    if (v13 >= v11 || (v104 = *v13, (v104 & 0x80000000) != 0))
                    {
                      this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
                      if (!this)
                      {
                        return this;
                      }

                      v104 = v113;
                    }

                    else
                    {
                      *(a2 + 1) = v13 + 1;
                    }

                    v105 = *(v5 + 80);
                    if (v105 == *(v5 + 84))
                    {
                      this = AddrObjGoogle::protobuf::RepeatedField<int>::Reserve((v5 + 72), v105 + 1);
                      v105 = *(v5 + 80);
                    }

                    v106 = *(v5 + 72);
                    *(v5 + 80) = v105 + 1;
                    *(v106 + 4 * v105) = v104;
                    v107 = *(v5 + 84) - *(v5 + 80);
                    if (v107 >= 1)
                    {
                      v108 = v107 + 1;
                      do
                      {
                        v109 = *(a2 + 1);
                        v110 = *(a2 + 2);
                        if (v109 >= v110 || *v109 != 88)
                        {
                          break;
                        }

                        *(a2 + 1) = v109 + 1;
                        v113 = 0;
                        if ((v109 + 1) >= v110 || (v111 = v109[1], (v111 & 0x80000000) != 0))
                        {
                          this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113);
                          if (!this)
                          {
                            return this;
                          }

                          v111 = v113;
                          v106 = *(v5 + 72);
                        }

                        else
                        {
                          *(a2 + 1) = v109 + 2;
                        }

                        v112 = *(v5 + 80);
                        *(v5 + 80) = v112 + 1;
                        *(v106 + 4 * v112) = v111;
                        --v108;
                      }

                      while (v108 > 1);
                    }

LABEL_212:
                    v93 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  while (v93 < v11 && *v93 == 88);
                  if (v93 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    this = 1;
                    *(a2 + 36) = 1;
                    return this;
                  }

                  goto LABEL_2;
                }

LABEL_173:
                if (v94 != 80)
                {
                  goto LABEL_2;
                }

                v12 = v93 + 1;
                *(a2 + 1) = v12;
              }
            }
          }

          else if (v8 == 6)
          {
            if (v9 != 2)
            {
              goto LABEL_47;
            }

            while (1)
            {
              v48 = *(v5 + 148);
              v49 = *(v5 + 144);
              if (v49 >= v48)
              {
                if (v48 == *(v5 + 152))
                {
                  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 136), v48 + 1);
                  v48 = *(v5 + 148);
                }

                *(v5 + 148) = v48 + 1;
                AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::ServiceDescriptorProto>::New();
              }

              v50 = *(v5 + 136);
              *(v5 + 144) = v49 + 1;
              v51 = *(v50 + 8 * v49);
              v113 = 0;
              v52 = *(a2 + 1);
              if (v52 >= *(a2 + 2) || *v52 < 0)
              {
                if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113))
                {
                  return 0;
                }
              }

              else
              {
                v113 = *v52;
                *(a2 + 1) = v52 + 1;
              }

              v53 = *(a2 + 14);
              v54 = *(a2 + 15);
              *(a2 + 14) = v53 + 1;
              if (v53 >= v54)
              {
                return 0;
              }

              v55 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v113);
              if (!AddrObjGoogle::protobuf::ServiceDescriptorProto::MergePartialFromCodedStream(v51, a2, v56, v57) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v55);
              v58 = *(a2 + 14);
              v32 = __OFSUB__(v58, 1);
              v59 = v58 - 1;
              if (v59 < 0 == v32)
              {
                *(a2 + 14) = v59;
              }

              v16 = *(a2 + 1);
              if (v16 >= *(a2 + 2))
              {
                break;
              }

              v60 = *v16;
              if (v60 != 50)
              {
                if (v60 != 58)
                {
                  goto LABEL_2;
                }

                goto LABEL_127;
              }

LABEL_109:
              *(a2 + 1) = v16 + 1;
            }
          }

          else
          {
            if (v8 != 7)
            {
              if (v8 == 8 && v9 == 2)
              {
                goto LABEL_146;
              }

              goto LABEL_47;
            }

            if (v9 != 2)
            {
              goto LABEL_47;
            }

            while (1)
            {
              v61 = *(v5 + 172);
              v62 = *(v5 + 168);
              if (v62 >= v61)
              {
                if (v61 == *(v5 + 176))
                {
                  AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 160), v61 + 1);
                  v61 = *(v5 + 172);
                }

                *(v5 + 172) = v61 + 1;
                AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::FieldDescriptorProto>::New();
              }

              v63 = *(v5 + 160);
              *(v5 + 168) = v62 + 1;
              v64 = *(v63 + 8 * v62);
              v113 = 0;
              v65 = *(a2 + 1);
              if (v65 >= *(a2 + 2) || *v65 < 0)
              {
                if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113))
                {
                  return 0;
                }
              }

              else
              {
                v113 = *v65;
                *(a2 + 1) = v65 + 1;
              }

              v66 = *(a2 + 14);
              v67 = *(a2 + 15);
              *(a2 + 14) = v66 + 1;
              if (v66 >= v67)
              {
                return 0;
              }

              v68 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v113);
              if (!AddrObjGoogle::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(v64, a2, v69, v70) || *(a2 + 36) != 1)
              {
                return 0;
              }

              this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v68);
              v71 = *(a2 + 14);
              v32 = __OFSUB__(v71, 1);
              v72 = v71 - 1;
              if (v72 < 0 == v32)
              {
                *(a2 + 14) = v72;
              }

              v16 = *(a2 + 1);
              if (v16 >= *(a2 + 2))
              {
                break;
              }

              v73 = *v16;
              if (v73 != 58)
              {
                if (v73 == 66)
                {
                  *(a2 + 1) = v16 + 1;
LABEL_146:
                  *(v5 + 204) |= 0x200u;
                  v74 = *(v5 + 184);
                  if (!v74)
                  {
                    operator new();
                  }

                  v113 = 0;
                  v75 = *(a2 + 1);
                  if (v75 >= *(a2 + 2) || *v75 < 0)
                  {
                    if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v113 = *v75;
                    *(a2 + 1) = v75 + 1;
                  }

                  v76 = *(a2 + 14);
                  v77 = *(a2 + 15);
                  *(a2 + 14) = v76 + 1;
                  if (v76 >= v77)
                  {
                    return 0;
                  }

                  v78 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v113);
                  if (!AddrObjGoogle::protobuf::FileOptions::MergePartialFromCodedStream(v74, a2, v79, v80) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v78);
                  v81 = *(a2 + 14);
                  v32 = __OFSUB__(v81, 1);
                  v82 = v81 - 1;
                  if (v82 < 0 == v32)
                  {
                    *(a2 + 14) = v82;
                  }

                  v83 = *(a2 + 1);
                  if (v83 < *(a2 + 2) && *v83 == 74)
                  {
                    *(a2 + 1) = v83 + 1;
                    goto LABEL_160;
                  }
                }

                goto LABEL_2;
              }

LABEL_127:
              *(a2 + 1) = v16 + 1;
            }
          }
        }

        if (v7 >> 3 > 2)
        {
          break;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_47;
          }

          *(v5 + 204) |= 1u;
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
          if (v14 < *(a2 + 2) && *v14 == 18)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_57;
          }
        }

        else
        {
          if (v8 != 2 || v9 != 2)
          {
            goto LABEL_47;
          }

LABEL_57:
          *(v5 + 204) |= 2u;
          v15 = *(v5 + 24);
          if (v15 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 24));
          if (!this)
          {
            return this;
          }

          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 26)
          {
            while (1)
            {
              *(a2 + 1) = v16 + 1;
LABEL_64:
              v17 = *(v5 + 44);
              v18 = *(v5 + 40);
              if (v18 >= v17)
              {
                if (v17 == *(v5 + 48))
                {
                  this = AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 32), v17 + 1);
                  v17 = *(v5 + 44);
                }

                *(v5 + 44) = v17 + 1;
                AddrObjGoogle::protobuf::internal::StringTypeHandlerBase::New(this);
              }

              v19 = *(v5 + 32);
              *(v5 + 40) = v18 + 1;
              this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v19 + 8 * v18));
              if (!this)
              {
                return this;
              }

              v16 = *(a2 + 1);
              if (v16 >= *(a2 + 2))
              {
                break;
              }

              v20 = *v16;
              if (v20 != 26)
              {
                if (v20 == 34)
                {
                  while (1)
                  {
                    *(a2 + 1) = v16 + 1;
LABEL_74:
                    v21 = *(v5 + 100);
                    v22 = *(v5 + 96);
                    if (v22 >= v21)
                    {
                      if (v21 == *(v5 + 104))
                      {
                        AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 88), v21 + 1);
                        v21 = *(v5 + 100);
                      }

                      *(v5 + 100) = v21 + 1;
                      AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::DescriptorProto>::New();
                    }

                    v23 = *(v5 + 88);
                    *(v5 + 96) = v22 + 1;
                    v24 = *(v23 + 8 * v22);
                    v113 = 0;
                    v25 = *(a2 + 1);
                    if (v25 >= *(a2 + 2) || *v25 < 0)
                    {
                      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v113 = *v25;
                      *(a2 + 1) = v25 + 1;
                    }

                    v26 = *(a2 + 14);
                    v27 = *(a2 + 15);
                    *(a2 + 14) = v26 + 1;
                    if (v26 >= v27)
                    {
                      return 0;
                    }

                    v28 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v113);
                    if (!AddrObjGoogle::protobuf::DescriptorProto::MergePartialFromCodedStream(v24, a2, v29, v30) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v28);
                    v31 = *(a2 + 14);
                    v32 = __OFSUB__(v31, 1);
                    v33 = v31 - 1;
                    if (v33 < 0 == v32)
                    {
                      *(a2 + 14) = v33;
                    }

                    v16 = *(a2 + 1);
                    if (v16 >= *(a2 + 2))
                    {
                      break;
                    }

                    v34 = *v16;
                    if (v34 != 34)
                    {
                      if (v34 != 42)
                      {
                        goto LABEL_2;
                      }

                      goto LABEL_91;
                    }
                  }
                }

                goto LABEL_2;
              }
            }
          }
        }
      }

      if (v8 == 3)
      {
        if (v9 != 2)
        {
          break;
        }

        goto LABEL_64;
      }

      if (v8 == 4)
      {
        if (v9 != 2)
        {
          break;
        }

        goto LABEL_74;
      }

      if (v8 != 5 || v9 != 2)
      {
        break;
      }

      while (1)
      {
        v35 = *(v5 + 124);
        v36 = *(v5 + 120);
        if (v36 >= v35)
        {
          if (v35 == *(v5 + 128))
          {
            AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 112), v35 + 1);
            v35 = *(v5 + 124);
          }

          *(v5 + 124) = v35 + 1;
          AddrObjGoogle::protobuf::internal::GenericTypeHandler<AddrObjGoogle::protobuf::EnumDescriptorProto>::New();
        }

        v37 = *(v5 + 112);
        *(v5 + 120) = v36 + 1;
        v38 = *(v37 + 8 * v36);
        v113 = 0;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 < 0)
        {
          if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v113))
          {
            return 0;
          }
        }

        else
        {
          v113 = *v39;
          *(a2 + 1) = v39 + 1;
        }

        v40 = *(a2 + 14);
        v41 = *(a2 + 15);
        *(a2 + 14) = v40 + 1;
        if (v40 >= v41)
        {
          return 0;
        }

        v42 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v113);
        if (!AddrObjGoogle::protobuf::EnumDescriptorProto::MergePartialFromCodedStream(v38, a2, v43, v44) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v42);
        v45 = *(a2 + 14);
        v32 = __OFSUB__(v45, 1);
        v46 = v45 - 1;
        if (v46 < 0 == v32)
        {
          *(a2 + 14) = v46;
        }

        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2))
        {
          break;
        }

        v47 = *v16;
        if (v47 != 42)
        {
          if (v47 != 50)
          {
            goto LABEL_2;
          }

          goto LABEL_109;
        }

LABEL_91:
        *(a2 + 1) = v16 + 1;
      }
    }

LABEL_47:
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

int *AddrObjGoogle::protobuf::internal::RepeatedPtrFieldBase::Reserve(int *this, int a2)
{
  v2 = this[4];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    this[4] = v3;
    operator new[]();
  }

  return this;
}

uint64_t AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(AddrObjGoogle::protobuf::io::CodedInputStream *this, unsigned int a2)
{
  v2 = *(this + 6);
  v3 = *(this + 2);
  v4 = *(this + 10);
  v5 = *(this + 11);
  v6 = v2 - v5 + *(this + 2) - v3;
  v7 = (v6 ^ 0x7FFFFFFFu) < a2 || (a2 & 0x80000000) != 0;
  v8 = v6 + a2;
  if (v7)
  {
    v8 = 0x7FFFFFFF;
  }

  if (v4 < v8)
  {
    v8 = *(this + 10);
  }

  *(this + 10) = v8;
  v9 = v3 + v5;
  *(this + 2) = v9;
  if (*(this + 12) < v8)
  {
    v8 = *(this + 12);
  }

  v10 = __OFSUB__(v2, v8);
  v11 = v2 - v8;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v11 = 0;
  }

  else
  {
    *(this + 2) = v9 - v11;
  }

  *(this + 11) = v11;
  return v4;
}

AddrObjGoogle::protobuf::FieldDescriptorProto *AddrObjGoogle::protobuf::FieldDescriptorProto::FieldDescriptorProto(AddrObjGoogle::protobuf::FieldDescriptorProto *this)
{
  *this = &unk_1EF7E0F00;
  AddrObjGoogle::protobuf::UnknownFieldSet::UnknownFieldSet(this + 1);
  AddrObjGoogle::protobuf::FieldDescriptorProto::SharedCtor(this);
  return this;
}

void sub_186737E04(_Unwind_Exception *a1)
{
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  AddrObjGoogle::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t AddrObjGoogle::protobuf::FieldDescriptorProto::MergePartialFromCodedStream(uint64_t this, AddrObjGoogle::protobuf::io::CodedInputStream *a2, uint64_t a3, AddrObjGoogle::protobuf::UnknownFieldSet *a4)
{
  v5 = this;
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
        if (v7 >> 3 > 4)
        {
          break;
        }

        if (v7 >> 3 > 2)
        {
          if (v8 == 3)
          {
            if ((v7 & 7) == 0)
            {
              v15 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_49;
            }
          }

          else if (v8 == 4 && (v7 & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_57;
          }

          goto LABEL_34;
        }

        if (v8 == 1)
        {
          if (v9 != 2)
          {
            goto LABEL_34;
          }

          *(v5 + 72) |= 1u;
          v12 = *(v5 + 16);
          if (v12 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
          {
            operator new();
          }

          this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 16));
          if (!this)
          {
            return this;
          }

          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
LABEL_42:
            *(v5 + 72) |= 0x20u;
            v17 = *(v5 + 40);
            if (v17 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
            {
              operator new();
            }

            this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 40));
            if (!this)
            {
              return this;
            }

            v18 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v18 < v10 && *v18 == 24)
            {
              v15 = v18 + 1;
              *(a2 + 1) = v15;
LABEL_49:
              v39 = 0;
              if (v15 >= v10 || (v19 = *v15, (v19 & 0x80000000) != 0))
              {
                this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!this)
                {
                  return this;
                }

                v19 = v39;
                v20 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v20 = v15 + 1;
                *(a2 + 1) = v20;
              }

              *(v5 + 24) = v19;
              *(v5 + 72) |= 2u;
              if (v20 < v10 && *v20 == 32)
              {
                v11 = v20 + 1;
                *(a2 + 1) = v11;
LABEL_57:
                v39 = 0;
                if (v11 >= v10 || (v21 = *v11, v21 < 0))
                {
                  this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!this)
                  {
                    return this;
                  }

                  v21 = v39;
                }

                else
                {
                  *(a2 + 1) = v11 + 1;
                }

                if ((v21 - 1) > 2)
                {
                  AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 4, v21);
                }

                else
                {
                  *(v5 + 72) |= 4u;
                  *(v5 + 28) = v21;
                }

                v22 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v22 < v13 && *v22 == 40)
                {
                  v14 = v22 + 1;
                  *(a2 + 1) = v14;
LABEL_68:
                  v39 = 0;
                  if (v14 >= v13 || (v23 = *v14, v23 < 0))
                  {
                    this = AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                    if (!this)
                    {
                      return this;
                    }

                    v23 = v39;
                  }

                  else
                  {
                    *(a2 + 1) = v14 + 1;
                  }

                  if ((v23 - 1) > 0x11)
                  {
                    AddrObjGoogle::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 5, v23);
                  }

                  else
                  {
                    *(v5 + 72) |= 8u;
                    *(v5 + 64) = v23;
                  }

                  v24 = *(a2 + 1);
                  if (v24 < *(a2 + 2) && *v24 == 50)
                  {
                    *(a2 + 1) = v24 + 1;
LABEL_79:
                    *(v5 + 72) |= 0x10u;
                    v25 = *(v5 + 32);
                    if (v25 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
                    {
                      operator new();
                    }

                    this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 32));
                    if (!this)
                    {
                      return this;
                    }

                    v26 = *(a2 + 1);
                    if (v26 < *(a2 + 2) && *v26 == 58)
                    {
                      *(a2 + 1) = v26 + 1;
                      goto LABEL_86;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v8 == 2 && v9 == 2)
          {
            goto LABEL_42;
          }

LABEL_34:
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

      if (v7 >> 3 <= 6)
      {
        if (v8 == 5)
        {
          if ((v7 & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_68;
          }
        }

        else if (v8 == 6 && v9 == 2)
        {
          goto LABEL_79;
        }

        goto LABEL_34;
      }

      if (v8 != 7)
      {
        break;
      }

      if (v9 != 2)
      {
        goto LABEL_34;
      }

LABEL_86:
      *(v5 + 72) |= 0x40u;
      v27 = *(v5 + 48);
      if (v27 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      this = AddrObjGoogle::protobuf::internal::WireFormatLite::ReadString(a2, *(v5 + 48));
      if (!this)
      {
        return this;
      }

      v28 = *(a2 + 1);
      if (v28 < *(a2 + 2) && *v28 == 66)
      {
        *(a2 + 1) = v28 + 1;
        goto LABEL_93;
      }
    }

    if (v8 != 8 || v9 != 2)
    {
      goto LABEL_34;
    }

LABEL_93:
    *(v5 + 72) |= 0x80u;
    v29 = *(v5 + 56);
    if (!v29)
    {
      operator new();
    }

    v39 = 0;
    v30 = *(a2 + 1);
    if (v30 >= *(a2 + 2) || *v30 < 0)
    {
      if (!AddrObjGoogle::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
      {
        return 0;
      }
    }

    else
    {
      v39 = *v30;
      *(a2 + 1) = v30 + 1;
    }

    v31 = *(a2 + 14);
    v32 = *(a2 + 15);
    *(a2 + 14) = v31 + 1;
    if (v31 >= v32)
    {
      return 0;
    }

    v33 = AddrObjGoogle::protobuf::io::CodedInputStream::PushLimit(a2, v39);
    if (!AddrObjGoogle::protobuf::FieldOptions::MergePartialFromCodedStream(v29, a2, v34, v35) || *(a2 + 36) != 1)
    {
      return 0;
    }

    this = AddrObjGoogle::protobuf::io::CodedInputStream::PopLimit(a2, v33);
    v36 = *(a2 + 14);
    v37 = __OFSUB__(v36, 1);
    v38 = v36 - 1;
    if (v38 < 0 == v37)
    {
      *(a2 + 14) = v38;
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