void *GEOPDPlaceQuestionnaireResultReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceQuestionnaireResultReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPlaceQuestionnaireResultReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceQuestionnaireResultReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceQuestionnaireResultReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceQuestionnaireResultCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDPlaceQuestionnaireResultReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = (a1 + 68);
  v11 = vld1_dup_s16(v10);
  v12 = vand_s8(vshl_u16(v11, 0xFFF9FFFBFFFAFFF8), 0x1000100010001);
  v12.i16[0] = vaddv_s16(v12);
  v13 = v12.i32[0];
  while (1)
  {
    v14 = a3[v6];
    if (v14 > -2)
    {
      break;
    }

    if (v14 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v14 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v13;
LABEL_13:
    ++v6;
  }

  if (v14 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v14)
  {
    goto LABEL_12;
  }

  v15 = v9 | (v13 > 2);
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v75 = (v16 == 0) | v15;
  v76 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_147;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v77) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v77 & 0x7F) << v18;
      if ((v77 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v24 = v19++ >= 9;
      if (v24)
      {
        v25 = 0;
        goto LABEL_32;
      }
    }

    v25 = [v3 hasError] ? 0 : v20;
LABEL_32:
    if (([v3 hasError] & 1) != 0 || (v25 & 7) == 4)
    {
LABEL_147:
      if (v76)
      {
        v69 = 1;
        goto LABEL_164;
      }

      if (!v16)
      {
LABEL_165:
        v3 = ([v3 hasError] ^ 1);
        goto LABEL_167;
      }

      while (1)
      {
        while (1)
        {
          v71 = *v16++;
          v70 = v71;
          if (v71 <= 4)
          {
            break;
          }

          if (v70 == 5)
          {
            v72 = 32;
LABEL_159:
            *(a1 + 68) |= v72;
          }

          else if (v70 == 9)
          {
            v72 = 128;
            goto LABEL_159;
          }
        }

        switch(v70)
        {
          case 2:
            v72 = 256;
            goto LABEL_159;
          case 3:
            v72 = 64;
            goto LABEL_159;
          case 0:
            goto LABEL_165;
        }
      }
    }

    v26 = v25 >> 3;
    v27 = v76;
    if ((v75 & 1) == 0)
    {
      v28 = v16;
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

    if (v26 > 4)
    {
      break;
    }

    if (v26 > 2)
    {
      if (v26 != 3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_124;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 68) |= 8u;
        while (1)
        {
          LOBYTE(v77) = 0;
          v37 = objc_msgSend_position(v3) + 1;
          if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
          {
            v39 = [v3 data];
            [v39 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v36 |= (v77 & 0x7F) << v34;
          if ((v77 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v24 = v35++ >= 9;
          if (v24)
          {
            v40 = 0;
            goto LABEL_127;
          }
        }

        v40 = (v36 != 0) & ~[v3 hasError];
LABEL_127:
        v67 = 66;
LABEL_138:
        *(a1 + v67) = v40;
        goto LABEL_146;
      }

      if (!v27)
      {
        goto LABEL_124;
      }

      if ((*(a1 + 68) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_163;
        }

        v68 = *(a1 + 68) << 9;
        goto LABEL_145;
      }

      v77 = 0;
      v78 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_163;
      }

      v32 = objc_alloc_init(GEOPDMapsIdentifier);
      if (!GEOPDMapsIdentifierReadAllFrom(v32, v3))
      {
        goto LABEL_162;
      }

      PBReaderRecallMark();
      v33 = 24;
      goto LABEL_96;
    }

    if (v26 != 1)
    {
      if (v26 != 2)
      {
LABEL_122:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_163;
        }

        goto LABEL_146;
      }

      if (!v27)
      {
        goto LABEL_124;
      }

      if ((*(a1 + 68) & 0x100) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_163;
        }

        v68 = *(a1 + 68) << 7;
LABEL_145:
        v6 += v68 >> 15;
        goto LABEL_146;
      }

      v77 = 0;
      v78 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_163;
      }

      v32 = objc_alloc_init(GEOPDScorecardLayout);
      if (!GEOPDScorecardLayoutReadAllFrom(v32, v3, v8 & 1))
      {
        goto LABEL_162;
      }

      PBReaderRecallMark();
      v33 = 40;
LABEL_96:
      v54 = *(a1 + v33);
      *(a1 + v33) = v32;

      --v6;
      goto LABEL_146;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_124;
    }

    v47 = 0;
    v48 = 0;
    v49 = 0;
    *(a1 + 68) |= 1u;
    while (1)
    {
      LOBYTE(v77) = 0;
      v50 = objc_msgSend_position(v3) + 1;
      if (v50 >= objc_msgSend_position(v3) && (v51 = objc_msgSend_position(v3) + 1, v51 <= [v3 length]))
      {
        v52 = [v3 data];
        [v52 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v49 |= (v77 & 0x7F) << v47;
      if ((v77 & 0x80) == 0)
      {
        break;
      }

      v47 += 7;
      v24 = v48++ >= 9;
      if (v24)
      {
        v53 = 0;
        goto LABEL_133;
      }
    }

    if ([v3 hasError])
    {
      v53 = 0;
    }

    else
    {
      v53 = v49;
    }

LABEL_133:
    *(a1 + 60) = v53;
LABEL_146:
    if (!v76 && v6 == 0)
    {
      goto LABEL_147;
    }
  }

  if (v26 > 6)
  {
    if (v26 == 7)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_124;
      }

      v55 = 0;
      v56 = 0;
      v57 = 0;
      *(a1 + 68) |= 2u;
      while (1)
      {
        LOBYTE(v77) = 0;
        v58 = objc_msgSend_position(v3) + 1;
        if (v58 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3) + 1, v59 <= [v3 length]))
        {
          v60 = [v3 data];
          [v60 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v57 |= (v77 & 0x7F) << v55;
        if ((v77 & 0x80) == 0)
        {
          break;
        }

        v55 += 7;
        v24 = v56++ >= 9;
        if (v24)
        {
          v40 = 0;
          goto LABEL_135;
        }
      }

      v40 = (v57 != 0) & ~[v3 hasError];
LABEL_135:
      v67 = 64;
      goto LABEL_138;
    }

    if (v26 == 8)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_124;
      }

      v61 = 0;
      v62 = 0;
      v63 = 0;
      *(a1 + 68) |= 4u;
      while (1)
      {
        LOBYTE(v77) = 0;
        v64 = objc_msgSend_position(v3) + 1;
        if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
        {
          v66 = [v3 data];
          [v66 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v63 |= (v77 & 0x7F) << v61;
        if ((v77 & 0x80) == 0)
        {
          break;
        }

        v61 += 7;
        v24 = v62++ >= 9;
        if (v24)
        {
          v40 = 0;
          goto LABEL_137;
        }
      }

      v40 = (v63 != 0) & ~[v3 hasError];
LABEL_137:
      v67 = 65;
      goto LABEL_138;
    }

    if (v26 != 9)
    {
      goto LABEL_122;
    }

    if (!v27)
    {
      goto LABEL_124;
    }

    if ((*(a1 + 68) & 0x80) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_163;
      }

      v68 = *(a1 + 68) << 8;
      goto LABEL_145;
    }

    v77 = 0;
    v78 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_163;
    }

    v32 = objc_alloc_init(GEOPDPhotoConstraints);
    if (!GEOPDPhotoConstraintsReadAllFrom(v32, v3))
    {
      goto LABEL_162;
    }

    PBReaderRecallMark();
    v33 = 32;
    goto LABEL_96;
  }

  if (v26 != 5)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_124;
    }

    v41 = 0;
    v42 = 0;
    v43 = 0;
    *(a1 + 68) |= 0x10u;
    while (1)
    {
      LOBYTE(v77) = 0;
      v44 = objc_msgSend_position(v3) + 1;
      if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
      {
        v46 = [v3 data];
        [v46 getBytes:&v77 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v43 |= (v77 & 0x7F) << v41;
      if ((v77 & 0x80) == 0)
      {
        break;
      }

      v41 += 7;
      v24 = v42++ >= 9;
      if (v24)
      {
        v40 = 0;
        goto LABEL_129;
      }
    }

    v40 = (v43 != 0) & ~[v3 hasError];
LABEL_129:
    v67 = 67;
    goto LABEL_138;
  }

  if (!v27 || (*(a1 + 68) & 0x20) != 0)
  {
LABEL_124:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_146;
  }

  v77 = 0;
  v78 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_163;
  }

  v32 = objc_alloc_init(GEOPDMapsIdentifier);
  if (GEOPDMapsIdentifierReadAllFrom(v32, v3))
  {
    PBReaderRecallMark();
    [(GEOPDPlaceQuestionnaireResult *)a1 _addNoFlagsHistoricalMapsId:v32];

    goto LABEL_146;
  }

LABEL_162:

LABEL_163:
  v69 = 0;
LABEL_164:
  *(a1 + 68) |= 0x100u;
  *(a1 + 68) |= 0x40u;
  *(a1 + 68) |= 0x20u;
  *(a1 + 68) |= 0x80u;
  if (v69)
  {
    goto LABEL_165;
  }

  v3 = 0;
LABEL_167:
  if (v76)
  {
    v73 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDPlacecardLayoutDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlacecardLayoutDataReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPlacecardLayoutDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlacecardLayoutDataReadAllFrom_initialTag;
  }

  Specified = GEOPDPlacecardLayoutDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlacecardLayoutDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDPlacecardLayoutDataReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v41 = v13 & ~v10 | v8;
  v42 = v10 | v13 | v8;
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
LABEL_64:
      v25 = 1;
      goto LABEL_67;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v43) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v43 & 0x7F) << v17;
      if ((v43 & 0x80) == 0)
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
      goto LABEL_67;
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
      if (!v27 || (*(a1 + 52) & 4) != 0)
      {
        goto LABEL_59;
      }

      v43 = 0;
      v44 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_66;
      }

      v32 = objc_alloc_init(GEOPDModuleConfiguration);
      if (!GEOPDModuleConfigurationReadAllFrom(v32, v3, v9 & 1))
      {
        goto LABEL_65;
      }

      PBReaderRecallMark();
      [(GEOPDPlacecardLayoutData *)a1 _addNoFlagsModuleConfiguration:v32];
    }

    else
    {
      if (v41 & 1) == 0 || (*(a1 + 52))
      {
LABEL_59:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_60;
      }

      if (!*(a1 + 16))
      {
        v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v35 = *(a1 + 16);
        *(a1 + 16) = v34;
      }

      if (!PBUnknownFieldAdd())
      {
        v25 = 0;
        v40 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
        goto LABEL_68;
      }
    }

LABEL_60:
    if (!(v42 & 1 | (v6 != 0)))
    {
      goto LABEL_64;
    }
  }

  if (!v27)
  {
    goto LABEL_59;
  }

  if ((*(a1 + 52) & 2) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_66;
    }

    v6 += *(a1 + 52) << 30 >> 31;
    goto LABEL_60;
  }

  v43 = 0;
  v44 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_66;
  }

  v32 = objc_alloc_init(GEOPDPlacecardLayoutConfiguration);
  if (GEOPDPlacecardLayoutConfigurationReadAllFrom(v32, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v33 = *(a1 + 24);
    *(a1 + 24) = v32;

    --v6;
    goto LABEL_60;
  }

LABEL_65:

LABEL_66:
  v25 = 0;
LABEL_67:
  v40 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v41 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_68:
  *(a1 + v40[70]) |= 1u;
LABEL_69:
  if (v14 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v40[70]) |= 4u;
    *(a1 + v40[70]) |= 2u;
    goto LABEL_78;
  }

  if (v15)
  {
    while (2)
    {
      while (1)
      {
        v37 = *v15++;
        v36 = v37;
        if (v37 == 1)
        {
          break;
        }

        if (v36 == 2)
        {
          goto LABEL_77;
        }

        if (!v36)
        {
          goto LABEL_78;
        }
      }

      LOBYTE(v36) = 4;
LABEL_77:
      *(a1 + v40[70]) |= v36;
      continue;
    }
  }

LABEL_78:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_82:
    v38 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_82;
    }
  }

  return v3;
}

uint64_t GEOPDModuleConfigurationReadAllFrom(uint64_t a1, void *a2, int a3)
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
          LOBYTE(v31[0]) = 0;
          v10 = objc_msgSend_position(v5, v31[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v31 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v31[0] & 0x7F) << v7;
          if ((v31[0] & 0x80) == 0)
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
        if (v16 == 2)
        {
          v31[0] = 0;
          v31[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_44;
          }

          v24 = objc_alloc_init(GEOPDModuleConfigurationValue);
          if (!GEOPDModuleConfigurationValueReadAllFrom(v24, v5, a3))
          {

            goto LABEL_44;
          }

          PBReaderRecallMark();
          v25 = *(a1 + 16);
          *(a1 + 16) = v24;
        }

        else if (v16 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v20 = objc_msgSend_position(v5, v31[0]);
            if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
            {
              v22 = [v5 data];
              [v22 getBytes:v31 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v19 |= (v31[0] & 0x7F) << v17;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 24) = v23;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v26 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v27 = *(a1 + 8);
            *(a1 + 8) = v26;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_44;
          }
        }

        v28 = objc_msgSend_position(v5);
      }

      while (v28 < [v5 length]);
    }

    v29 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_44:
    v29 = 0;
  }

  objc_sync_exit(v5);

  return v29;
}

void *GEOPDModuleConfigurationValueReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 116))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDModuleConfigurationValueReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDModuleConfigurationValueReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDModuleConfigurationValueReadAllFrom_initialTag;
  }

  Specified = GEOPDModuleConfigurationValueReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [(GEOPDPlaceInfosModuleConfiguration *)*(a1 + 64) readAll:?];
    [(GEOPDActionBarModuleConfiguration *)*(a1 + 24) readAll:?];
  }

  os_unfair_lock_unlock((a1 + 120));
  return Specified;
}

void *GEOPDModuleConfigurationValueReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = *(a1 + 124);
  v12 = ((v11 >> 4) & 1) + (v11 & 1) + ((v11 >> 10) & 1) + ((v11 >> 5) & 1) + ((v11 >> 1) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(v11), 0xFFF5FFF9FFFDFFF8), 0x1000100010001)) + ((*(a1 + 124) >> 9) & 1) + ((*(a1 + 124) >> 6) & 1) + ((*(a1 + 124) >> 2) & 1));
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

  v14 = v12 > 7;
  v15 = v14 & ~v10 | v8;
  v16 = v10 | v14;
  LODWORD(v45) = v15;
  HIDWORD(v45) = v16 | v8;
  if ((v16 | v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v46 = (v17 == 0) | v16;
  v47 = v16;
  while (1)
  {
    v18 = objc_msgSend_position(v3, v45);
    if (v18 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_142:
      v27 = 1;
      goto LABEL_145;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      LOBYTE(v48) = 0;
      v22 = objc_msgSend_position(v3) + 1;
      if (v22 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3) + 1, v23 <= [v3 length]))
      {
        v24 = [v3 data];
        [v24 getBytes:&v48 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v21 |= (v48 & 0x7F) << v19;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      if (v20++ >= 9)
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
      goto LABEL_145;
    }

    v28 = v21 >> 3;
    v29 = v47;
    if ((v46 & 1) == 0)
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

    if (v28 > 5)
    {
      break;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x80) == 0)
        {
          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_144;
          }

          v34 = objc_alloc_init(GEOPDRelatedPlaceModuleConfiguration);
          if (!GEOPDRelatedPlaceModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
          {
            goto LABEL_143;
          }

          PBReaderRecallMark();
          v35 = 72;
          goto LABEL_109;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v39 = *(a1 + 124) << 8;
        goto LABEL_140;
      }

      if (v28 == 4)
      {
        if (!v29)
        {
          goto LABEL_116;
        }

        if ((*(a1 + 124) & 0x800) == 0)
        {
          v48 = 0;
          v49 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_144;
          }

          v34 = objc_alloc_init(GEOPDWebModuleConfiguration);
          if (!GEOPDWebModuleConfigurationReadAllFrom(v34, v3))
          {
            goto LABEL_143;
          }

          PBReaderRecallMark();
          v35 = 104;
          goto LABEL_109;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v39 = 16 * *(a1 + 124);
        goto LABEL_140;
      }

      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v39 = *(a1 + 124) << 6;
        goto LABEL_140;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_144;
      }

      v34 = objc_alloc_init(GEOPDTemplatePlaceModuleConfiguration);
      if (!GEOPDTemplatePlaceModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
      {
        goto LABEL_143;
      }

      PBReaderRecallMark();
      v35 = 88;
LABEL_109:
      v36 = *(a1 + v35);
      *(a1 + v35) = v34;

      --v6;
      goto LABEL_141;
    }

    if (v28 == 1)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 0x100) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_144;
        }

        v34 = objc_alloc_init(GEOPDPlaceRibbonConfiguration);
        if (!GEOPDPlaceRibbonConfigurationReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_143;
        }

        PBReaderRecallMark();
        v35 = 80;
        goto LABEL_109;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      v39 = *(a1 + 124) << 7;
      goto LABEL_140;
    }

    if (v28 == 2)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 8) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_144;
        }

        v34 = objc_alloc_init(GEOPDButtonModuleConfiguration);
        if (!GEOPDButtonModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_143;
        }

        PBReaderRecallMark();
        v35 = 40;
        goto LABEL_109;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      v39 = *(a1 + 124) << 12;
LABEL_140:
      v6 += v39 >> 15;
      goto LABEL_141;
    }

LABEL_110:
    if (v45 & 1) == 0 || (*(a1 + 124))
    {
LABEL_116:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_141;
    }

    if (!*(a1 + 16))
    {
      v37 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v38 = *(a1 + 16);
      *(a1 + 16) = v37;
    }

    if (!PBUnknownFieldAdd())
    {
      v27 = 0;
      goto LABEL_146;
    }

LABEL_141:
    if (!(BYTE4(v45) & 1 | (v6 != 0)))
    {
      goto LABEL_142;
    }
  }

  if (v28 <= 8)
  {
    if (v28 == 6)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 0x40) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_144;
        }

        v34 = objc_alloc_init(GEOPDPlaceInfosModuleConfiguration);
        if (!GEOPDPlaceInfosModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_143;
        }

        PBReaderRecallMark();
        v35 = 64;
        goto LABEL_109;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      v39 = *(a1 + 124) << 9;
      goto LABEL_140;
    }

    if (v28 == 7)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 4) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_144;
        }

        v34 = objc_alloc_init(GEOPDBusinessInfosModuleConfiguration);
        if (!GEOPDBusinessInfosModuleConfigurationReadAllFrom(v34, v3))
        {
          goto LABEL_143;
        }

        PBReaderRecallMark();
        v35 = 32;
        goto LABEL_109;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      v39 = *(a1 + 124) << 13;
      goto LABEL_140;
    }

    if (!v29)
    {
      goto LABEL_116;
    }

    if ((*(a1 + 124) & 0x10) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      v39 = *(a1 + 124) << 11;
      goto LABEL_140;
    }

    v48 = 0;
    v49 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_144;
    }

    v34 = objc_alloc_init(GEOPDHeaderButtonsConfiguration);
    if (!GEOPDHeaderButtonsConfigurationReadAllFrom(v34, v3))
    {
      goto LABEL_143;
    }

    PBReaderRecallMark();
    v35 = 48;
    goto LABEL_109;
  }

  if (v28 != 9)
  {
    if (v28 == 10)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 0x20) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_144;
        }

        v34 = objc_alloc_init(GEOPDHikingAssociationModuleConfiguration);
        if (!GEOPDHikingAssociationModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_143;
        }

        PBReaderRecallMark();
        v35 = 56;
        goto LABEL_109;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_144;
      }

      v39 = *(a1 + 124) << 10;
      goto LABEL_140;
    }

    if (v28 == 11)
    {
      if (!v29)
      {
        goto LABEL_116;
      }

      if ((*(a1 + 124) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_144;
        }

        v39 = *(a1 + 124) << 14;
        goto LABEL_140;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_144;
      }

      v34 = objc_alloc_init(GEOPDActionBarModuleConfiguration);
      if (!GEOPDActionBarModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
      {
        goto LABEL_143;
      }

      PBReaderRecallMark();
      v35 = 24;
      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (!v29)
  {
    goto LABEL_116;
  }

  if ((*(a1 + 124) & 0x400) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_144;
    }

    v39 = 32 * *(a1 + 124);
    goto LABEL_140;
  }

  v48 = 0;
  v49 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_144;
  }

  v34 = objc_alloc_init(GEOPDUnifiedActionModuleConfiguration);
  if (GEOPDUnifiedActionModuleConfigurationReadAllFrom(v34, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v35 = 96;
    goto LABEL_109;
  }

LABEL_143:

LABEL_144:
  v27 = 0;
LABEL_145:
  if ((v45 & 1) == 0)
  {
    goto LABEL_147;
  }

LABEL_146:
  *(a1 + 124) |= 1u;
LABEL_147:
  if (v47 & 1 | ((v27 & 1) == 0))
  {
    *(a1 + 124) |= 0x100u;
    *(a1 + 124) |= 8u;
    *(a1 + 124) |= 0x80u;
    *(a1 + 124) |= 0x800u;
    *(a1 + 124) |= 0x200u;
    *(a1 + 124) |= 0x40u;
    *(a1 + 124) |= 4u;
    *(a1 + 124) |= 0x10u;
    *(a1 + 124) |= 0x400u;
    *(a1 + 124) |= 0x20u;
    *(a1 + 124) |= 2u;
    goto LABEL_177;
  }

  if (v17)
  {
    while (1)
    {
      v41 = *v17++;
      v40 = v41;
      if (v41 > 5)
      {
        if (v40 > 8)
        {
          switch(v40)
          {
            case 9:
              v42 = 1024;
              break;
            case 10:
              v42 = 32;
              break;
            case 11:
              v42 = 2;
              break;
            default:
              continue;
          }
        }

        else
        {
          switch(v40)
          {
            case 6:
              v42 = 64;
              break;
            case 7:
              v42 = 4;
              break;
            case 8:
              v42 = 16;
              break;
            default:
              continue;
          }
        }

        goto LABEL_175;
      }

      if (v40 > 2)
      {
        switch(v40)
        {
          case 3:
            v42 = 128;
            break;
          case 4:
            v42 = 2048;
            break;
          case 5:
            v42 = 512;
            break;
          default:
            continue;
        }

        goto LABEL_175;
      }

      if (v40 == 1)
      {
        break;
      }

      if (v40 == 2)
      {
        v42 = 8;
LABEL_175:
        *(a1 + 124) |= v42;
        continue;
      }

      if (!v40)
      {
        goto LABEL_177;
      }
    }

    v42 = 256;
    goto LABEL_175;
  }

LABEL_177:
  if (v27)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v47)
  {
    v43 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDPlaceRibbonConfigurationReadAllFrom(uint64_t a1, void *a2, int a3)
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

          v16 = objc_alloc_init(GEOPDRibbonItem);
          if (!GEOPDRibbonItemReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [(GEOPDPlaceRibbonConfiguration *)a1 addRibbonItem:v16];
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

void *GEOPDRibbonItemReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDRibbonItemReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDRibbonItemReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDRibbonItemReadAllFrom_initialTag;
  }

  Specified = GEOPDRibbonItemReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [(GEOPDContactlessPaymentsRibbonItem *)*(a1 + 32) readAll:?];
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDRibbonItemReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 64)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFDFFFEFFFCLL) & 0xFF01FF01FF01FF01));
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
  LODWORD(v53) = v14;
  HIDWORD(v53) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v54 = (v16 == 0) | v15;
  v55 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v53);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_93:
      v26 = 1;
      goto LABEL_96;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v56 & 0x7F) << v18;
      if ((v56 & 0x80) == 0)
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
      goto LABEL_96;
    }

    v27 = v20 >> 3;
    v28 = v55;
    if ((v54 & 1) == 0)
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
      if ((v7 & 1) == 0)
      {
        goto LABEL_79;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 64) |= 1u;
      while (1)
      {
        LOBYTE(v56) = 0;
        v40 = objc_msgSend_position(v3) + 1;
        if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
        {
          v42 = [v3 data];
          [v42 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v39 |= (v56 & 0x7F) << v37;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v24 = v38++ >= 9;
        if (v24)
        {
          v43 = 0;
          goto LABEL_84;
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

LABEL_84:
      *(a1 + 60) = v43;
      goto LABEL_92;
    }

    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_79;
      }

      if ((*(a1 + 64) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_95;
        }

        v45 = 8 * *(a1 + 64);
        goto LABEL_91;
      }

      v56 = 0;
      v57 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_95;
      }

      v33 = objc_alloc_init(GEOPDFactoidRibbonItem);
      if (!GEOPDFactoidRibbonItemReadAllFrom(v33, v3))
      {
        goto LABEL_94;
      }

      PBReaderRecallMark();
      v34 = 40;
LABEL_78:
      v44 = *(a1 + v34);
      *(a1 + v34) = v33;

      --v6;
      goto LABEL_92;
    }

LABEL_57:
    if ((v53 & 1) == 0 || (*(a1 + 64) & 2) != 0)
    {
LABEL_79:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
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
      v52 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_97;
    }

LABEL_92:
    if (!(BYTE4(v53) & 1 | (v6 != 0)))
    {
      goto LABEL_93;
    }
  }

  if (v27 != 3)
  {
    if (v27 == 4)
    {
      if (!v28)
      {
        goto LABEL_79;
      }

      if ((*(a1 + 64) & 8) == 0)
      {
        v56 = 0;
        v57 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_95;
        }

        v33 = objc_alloc_init(GEOPDContactlessPaymentsRibbonItem);
        if (!GEOPDContactlessPaymentsRibbonItemReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_94;
        }

        PBReaderRecallMark();
        v34 = 32;
        goto LABEL_78;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_95;
      }

      v45 = 16 * *(a1 + 64);
LABEL_91:
      v6 += v45 >> 7;
      goto LABEL_92;
    }

    goto LABEL_57;
  }

  if (!v28)
  {
    goto LABEL_79;
  }

  if ((*(a1 + 64) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_95;
    }

    v45 = 32 * *(a1 + 64);
    goto LABEL_91;
  }

  v56 = 0;
  v57 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_95;
  }

  v33 = objc_alloc_init(GEOPDAmenityRibbonItem);
  if (GEOPDAmenityRibbonItemReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v34 = 24;
    goto LABEL_78;
  }

LABEL_94:

LABEL_95:
  v26 = 0;
LABEL_96:
  v52 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v53 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  *(a1 + v52[284]) |= 2u;
LABEL_98:
  if (v55 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v52[284]) |= 0x10u;
    *(a1 + v52[284]) |= 4u;
    *(a1 + v52[284]) |= 8u;
    goto LABEL_111;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v47 = *v16++;
        v46 = v47;
        v48 = v47 == 2;
        if (v47 > 2)
        {
          break;
        }

        if (v48)
        {
          v49 = 16;
LABEL_109:
          *(a1 + v52[284]) |= v49;
          continue;
        }

        if (!v46)
        {
          goto LABEL_111;
        }
      }

      if (v46 == 4)
      {
        v49 = 8;
      }

      else
      {
        if (v46 != 3)
        {
          continue;
        }

        v49 = 4;
      }

      goto LABEL_109;
    }
  }

LABEL_111:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v55)
  {
    v50 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDButtonModuleConfigurationReadAllFrom(uint64_t a1, void *a2, int a3)
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

          v16 = objc_alloc_init(GEOPDButtonItem);
          if (!GEOPDButtonItemReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [(GEOPDButtonModuleConfiguration *)a1 addButtonItem:v16];
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

void *GEOPDButtonItemReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDButtonItemReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDButtonItemReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDButtonItemReadAllFrom_initialTag;
  }

  Specified = GEOPDButtonItemReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 32) readAll:1];
    [*(a1 + 24) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDButtonItemReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v52) = v14;
  HIDWORD(v52) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v53 = (v16 == 0) | v15;
  v54 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v52);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_84:
      v26 = 1;
      goto LABEL_87;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v55) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v55 & 0x7F) << v18;
      if ((v55 & 0x80) == 0)
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
      goto LABEL_87;
    }

    v27 = v20 >> 3;
    v28 = v54;
    if ((v53 & 1) == 0)
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
        goto LABEL_72;
      }

      if ((*(a1 + 56) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_86;
        }

        v45 = 16 * *(a1 + 56);
LABEL_83:
        v6 += v45 >> 7;
        goto LABEL_73;
      }

      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_86;
      }

      v40 = objc_alloc_init(GEOPDQuickLinkParams);
      if (!GEOPDQuickLinkParamsReadAllFrom(v40, v3))
      {
        goto LABEL_85;
      }

      PBReaderRecallMark();
      v41 = 32;
      goto LABEL_65;
    }

    if (v27 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_72;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        LOBYTE(v55) = 0;
        v36 = objc_msgSend_position(v3) + 1;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
        {
          v38 = [v3 data];
          [v38 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v35 |= (v55 & 0x7F) << v33;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v24 = v34++ >= 9;
        if (v24)
        {
          v39 = 0;
          goto LABEL_78;
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

LABEL_78:
      *(a1 + 52) = v39;
    }

    else
    {
      if ((v52 & 1) == 0 || (*(a1 + 56) & 2) != 0)
      {
LABEL_72:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_86;
        }

        goto LABEL_73;
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
        v51 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
        goto LABEL_88;
      }
    }

LABEL_73:
    if (!(BYTE4(v52) & 1 | (v6 != 0)))
    {
      goto LABEL_84;
    }
  }

  if (!v28)
  {
    goto LABEL_72;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_86;
    }

    v45 = 32 * *(a1 + 56);
    goto LABEL_83;
  }

  v55 = 0;
  v56 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_86;
  }

  v40 = objc_alloc_init(GEOPDGroupParams);
  if (GEOPDGroupParamsReadAllFrom(v40, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v41 = 24;
LABEL_65:
    v42 = *(a1 + v41);
    *(a1 + v41) = v40;

    --v6;
    goto LABEL_73;
  }

LABEL_85:

LABEL_86:
  v26 = 0;
LABEL_87:
  v51 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v52 & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_88:
  *(a1 + v51[821]) |= 2u;
LABEL_89:
  if (v54 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v51[821]) |= 8u;
    *(a1 + v51[821]) |= 4u;
    goto LABEL_99;
  }

  if (v16)
  {
    while (1)
    {
      v47 = *v16++;
      v46 = v47;
      if (v47 == 2)
      {
        break;
      }

      if (v46 == 3)
      {
        v48 = 4;
LABEL_98:
        *(a1 + v51[821]) |= v48;
        continue;
      }

      if (!v46)
      {
        goto LABEL_99;
      }
    }

    v48 = 8;
    goto LABEL_98;
  }

LABEL_99:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v54)
  {
    v49 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDUnifiedActionModuleConfigurationReadAllFrom(uint64_t a1, void *a2, int a3)
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

          v16 = objc_alloc_init(GEOPDButtonItem);
          if (!GEOPDButtonItemReadAllFrom(v16, v5, a3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [(GEOPDUnifiedActionModuleConfiguration *)a1 addButtonItem:v16];
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

uint64_t GEOPDGroupParamsReadAllFrom(uint64_t a1, void *a2, int a3)
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
          goto LABEL_55;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v10 = objc_msgSend_position(v5, v37[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v37 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v37[0] & 0x7F) << v7;
          if ((v37[0] & 0x80) == 0)
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
LABEL_55:
          v35 = [v5 hasError] ^ 1;
          goto LABEL_58;
        }

        v16 = v9 >> 3;
        if (v16 == 3)
        {
          break;
        }

        if (v16 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v37[0]) = 0;
            v27 = objc_msgSend_position(v5, v37[0]);
            if (v27 + 1 >= objc_msgSend_position(v5) && (v28 = objc_msgSend_position(v5), v28 + 1 <= [v5 length]))
            {
              v29 = [v5 data];
              [v29 getBytes:v37 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v26 |= (v37[0] & 0x7F) << v24;
            if ((v37[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              v30 = 0;
              goto LABEL_50;
            }
          }

          if ([v5 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_50:
          *(a1 + 24) = v30;
        }

        else if (v16 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            LOBYTE(v37[0]) = 0;
            v20 = objc_msgSend_position(v5, v37[0]);
            if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
            {
              v22 = [v5 data];
              [v22 getBytes:v37 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v19 |= (v37[0] & 0x7F) << v17;
            if ((v37[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_54;
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

LABEL_54:
          *(a1 + 28) = v23;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v33 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v34 = *(a1 + 8);
            *(a1 + 8) = v33;
          }

          if ((PBUnknownFieldAdd() & 1) == 0)
          {
            goto LABEL_57;
          }
        }
      }

      v37[0] = 0;
      v37[1] = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_57;
      }

      v31 = objc_alloc_init(GEOPDGroupData);
      if (!GEOPDGroupDataReadAllFrom(v31, v5, a3))
      {
        break;
      }

      PBReaderRecallMark();
      v32 = *(a1 + 16);
      *(a1 + 16) = v31;
    }
  }

LABEL_57:
  v35 = 0;
LABEL_58:
  objc_sync_exit(v5);

  return v35;
}

void *GEOPDGroupDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDGroupDataReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDGroupDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDGroupDataReadAllFrom_initialTag;
  }

  Specified = GEOPDGroupDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDGroupDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDGroupDataReadSpecified(uint64_t a1, void *a2, int *a3)
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
LABEL_70:
      v26 = 1;
      goto LABEL_73;
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
      goto LABEL_73;
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
        goto LABEL_65;
      }

      if ((*(a1 + 60) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_72;
        }

        v6 += *(a1 + 60) << 29 >> 31;
      }

      else
      {
        v34 = PBReaderReadString();
        v35 = *(a1 + 32);
        *(a1 + 32) = v34;

        --v6;
      }
    }

    else
    {
      if (v27 == 1)
      {
        if (!v28 || (*(a1 + 60) & 8) != 0)
        {
          goto LABEL_65;
        }

        v47 = 0;
        v48 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_72;
        }

        v33 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_71;
        }

        PBReaderRecallMark();
        [(GEOPDGroupData *)a1 _addNoFlagsTitle:v33];
        goto LABEL_58;
      }

      if (v44 & 1) == 0 || (*(a1 + 60))
      {
        goto LABEL_65;
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
        goto LABEL_74;
      }
    }

LABEL_66:
    if (!(BYTE4(v44) & 1 | (v6 != 0)))
    {
      goto LABEL_70;
    }
  }

  if (!v28 || (*(a1 + 60) & 2) != 0)
  {
LABEL_65:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  v47 = 0;
  v48 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_72;
  }

  v33 = objc_alloc_init(GEOPDButtonItem);
  if (GEOPDButtonItemReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDGroupData *)a1 _addNoFlagsButtonItem:v33];
LABEL_58:

    goto LABEL_66;
  }

LABEL_71:

LABEL_72:
  v26 = 0;
LABEL_73:
  if ((v44 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_74:
  *(a1 + 60) |= 1u;
LABEL_75:
  if (v46 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 60) |= 8u;
    *(a1 + 60) |= 4u;
    *(a1 + 60) |= 2u;
    goto LABEL_88;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v39 = *v16++;
        v38 = v39;
        v40 = v39 == 1;
        if (v39 > 1)
        {
          break;
        }

        if (v40)
        {
          v41 = 8;
LABEL_86:
          *(a1 + 60) |= v41;
          continue;
        }

        if (!v38)
        {
          goto LABEL_88;
        }
      }

      if (v38 == 3)
      {
        v41 = 2;
      }

      else
      {
        if (v38 != 2)
        {
          continue;
        }

        v41 = 4;
      }

      goto LABEL_86;
    }
  }

LABEL_88:
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

void _GEOPDGroupDataCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 40);
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

void *GEOPDPlaceInfosModuleConfigurationReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceInfosModuleConfigurationReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPlaceInfosModuleConfigurationReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceInfosModuleConfigurationReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceInfosModuleConfigurationReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDPlaceInfosModuleConfigurationReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 56) >> 3) & 1) + ((*(a1 + 56) >> 2) & 1) + ((*(a1 + 56) >> 1) & 1);
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

  v12 = v10 != 0;
  v13 = v9 | v12;
  v50 = v12 & ~v9 | v8;
  v51 = v9 | v12 | v8;
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
LABEL_80:
      v24 = 1;
      goto LABEL_83;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v52) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v52 & 0x7F) << v16;
      if ((v52 & 0x80) == 0)
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
      goto LABEL_83;
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
      if ((v7 & 1) == 0)
      {
        goto LABEL_68;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        LOBYTE(v52) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v52 & 0x7F) << v34;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v22 = v35++ >= 9;
        if (v22)
        {
          v40 = 0;
          goto LABEL_74;
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

LABEL_74:
      *(a1 + 52) = v40;
      goto LABEL_69;
    }

    if (v25 == 2)
    {
      break;
    }

    if (v25 == 1)
    {
      if (!v26)
      {
        goto LABEL_68;
      }

      if ((*(a1 + 56) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_82;
        }

        v43 = 16 * *(a1 + 56);
        goto LABEL_79;
      }

      v52 = 0;
      v53 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_82;
      }

      v31 = objc_alloc_init(GEOPDLocationInfoItem);
      if (!GEOPDLocationInfoItemReadAllFrom(v31, v3))
      {
        goto LABEL_81;
      }

      PBReaderRecallMark();
      v32 = 32;
      goto LABEL_51;
    }

    if ((v50 & 1) == 0 || (*(a1 + 56) & 2) != 0)
    {
LABEL_68:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_69;
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
      goto LABEL_84;
    }

LABEL_69:
    if (!(v51 & 1 | (v6 != 0)))
    {
      goto LABEL_80;
    }
  }

  if (!v26)
  {
    goto LABEL_68;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_82;
    }

    v43 = 32 * *(a1 + 56);
LABEL_79:
    v6 += v43 >> 7;
    goto LABEL_69;
  }

  v52 = 0;
  v53 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_82;
  }

  v31 = objc_alloc_init(GEOPDFactoidInfoItem);
  if (GEOPDFactoidInfoItemReadAllFrom(v31, v3))
  {
    PBReaderRecallMark();
    v32 = 24;
LABEL_51:
    v33 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v6;
    goto LABEL_69;
  }

LABEL_81:

LABEL_82:
  v24 = 0;
LABEL_83:
  v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v50 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_84:
  *(a1 + v49[55]) |= 2u;
LABEL_85:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v49[55]) |= 8u;
    *(a1 + v49[55]) |= 4u;
    goto LABEL_95;
  }

  if (v14)
  {
    while (1)
    {
      v45 = *v14++;
      v44 = v45;
      if (v45 == 1)
      {
        break;
      }

      if (v44 == 2)
      {
        v46 = 4;
LABEL_94:
        *(a1 + v49[55]) |= v46;
        continue;
      }

      if (!v44)
      {
        goto LABEL_95;
      }
    }

    v46 = 8;
    goto LABEL_94;
  }

LABEL_95:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_99:
    v47 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_99;
    }
  }

  return v3;
}

uint64_t GEOPDLocationInfoItemReadAllFrom(uint64_t a1, void *a2)
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
          v26 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v26 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v26 & 0x7F) << v5;
          if ((v26 & 0x80) == 0)
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
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v27 = 0;
            v17 = objc_msgSend_position(v3);
            if (v17 + 1 >= objc_msgSend_position(v3) && (v18 = objc_msgSend_position(v3), v18 + 1 <= [v3 length]))
            {
              v19 = [v3 data];
              [v19 getBytes:&v27 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v16 |= (v27 & 0x7F) << v14;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_36;
            }
          }

          if ([v3 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_36:
          *(a1 + 16) = v20;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v21 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v22 = *(a1 + 8);
            *(a1 + 8) = v21;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_39;
          }
        }

        v23 = objc_msgSend_position(v3);
      }

      while (v23 < [v3 length]);
    }

    v24 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_39:
    v24 = 0;
  }

  objc_sync_exit(v3);

  return v24;
}

void *GEOPDModuleReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 60) >> 4) & 1) + ((*(a1 + 60) >> 3) & 1) + ((*(a1 + 60) >> 2) & 1);
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

    if (v25 <= 2)
    {
      break;
    }

    if (v25 == 3)
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
        goto LABEL_93;
      }

      v48 = PBReaderReadString();
      v32 = *(a1 + 24);
      *(a1 + 24) = v48;
      goto LABEL_77;
    }

    if (v25 == 4)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_78;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        LOBYTE(v59[0]) = 0;
        v36 = objc_msgSend_position(v3) + 1;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
        {
          v38 = [v3 data];
          [v38 getBytes:v59 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v35 |= (v59[0] & 0x7F) << v33;
        if ((v59[0] & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v22 = v34++ >= 9;
        if (v22)
        {
          v39 = 0;
          goto LABEL_83;
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

LABEL_83:
      v49 = 52;
LABEL_88:
      *(a1 + v49) = v39;
      goto LABEL_94;
    }

LABEL_58:
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
      v40 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v41 = *(a1 + 16);
      *(a1 + 16) = v40;
    }

    if (!PBUnknownFieldAdd())
    {
      v24 = 0;
      v56 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_97;
    }

LABEL_94:
    if (!(v58 & 1 | (v8 != 0)))
    {
      goto LABEL_95;
    }
  }

  if (v25 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_78;
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    *(a1 + 60) |= 2u;
    while (1)
    {
      LOBYTE(v59[0]) = 0;
      v45 = objc_msgSend_position(v3) + 1;
      if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
      {
        v47 = [v3 data];
        [v47 getBytes:v59 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v44 |= (v59[0] & 0x7F) << v42;
      if ((v59[0] & 0x80) == 0)
      {
        break;
      }

      v42 += 7;
      v22 = v43++ >= 9;
      if (v22)
      {
        v39 = 0;
        goto LABEL_87;
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

LABEL_87:
    v49 = 56;
    goto LABEL_88;
  }

  if (v25 != 2)
  {
    goto LABEL_58;
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
LABEL_93:
    v8 += v50 >> 7;
    goto LABEL_94;
  }

  v59[0] = 0;
  v59[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_115;
  }

  v31 = objc_alloc_init(GEOPDModuleOptions);
  if (GEOPDModuleOptionsReadAllFrom(v31, v3))
  {
    PBReaderRecallMark();
    v32 = *(a1 + 32);
    *(a1 + 32) = v31;
LABEL_77:

    --v8;
    goto LABEL_94;
  }

LABEL_115:
  v24 = 0;
LABEL_96:
  v56 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v57 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  *(a1 + v56[867]) |= 4u;
LABEL_98:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v56[867]) |= 0x10u;
    *(a1 + v56[867]) |= 8u;
    goto LABEL_108;
  }

  if (v14)
  {
    while (1)
    {
      v52 = *v14++;
      v51 = v52;
      if (v52 == 2)
      {
        break;
      }

      if (v51 == 3)
      {
        v53 = 8;
LABEL_107:
        *(a1 + v56[867]) |= v53;
        continue;
      }

      if (!v51)
      {
        goto LABEL_108;
      }
    }

    v53 = 16;
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

void _GEOPDModuleLayoutEntryCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 40);
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

uint64_t _GEOPDPlacecardLayoutDataCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (!--v4)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  return [*(a1 + 24) readAll:{1, v7}];
}

BOOL GEOSupportsOfflineMaps()
{
  if (_registerSupportSourcesIfNecessary_once != -1)
  {
    dispatch_once(&_registerSupportSourcesIfNecessary_once, &__block_literal_global_57548);
  }

  if (!GEOConfigGetBOOL(50, &GeoOfflineConfig_SupportsOffline_Metadata) || (GEOConfigGetBOOL(51, &GeoOfflineConfig_OfflineSupportDeprecated_Metadata) & 1) != 0)
  {
    return 0;
  }

  v1 = GEOGetURLWithSource(62, 0);
  v0 = v1 != 0;

  return v0;
}

void ___registerSupportSourcesIfNecessary_block_invoke()
{
  v0 = MEMORY[0x1E69E96A0];
  v1 = _GEOConfigAddBlockListenerForKey(50, &GeoOfflineConfig_SupportsOffline_Metadata, MEMORY[0x1E69E96A0], &__block_literal_global_53);
  v2 = _registerSupportSourcesIfNecessary_supportListener;
  _registerSupportSourcesIfNecessary_supportListener = v1;

  v3 = _GEOConfigAddBlockListenerForKey(51, &GeoOfflineConfig_OfflineSupportDeprecated_Metadata, v0, &__block_literal_global_55_57550);
  v4 = _registerSupportSourcesIfNecessary_deprecatedListener;
  _registerSupportSourcesIfNecessary_deprecatedListener = v3;

  v5 = objc_alloc_init(_GEOOfflineSupportTileGroupObserver);
  v6 = _registerSupportSourcesIfNecessary_tileGroupObserver;
  _registerSupportSourcesIfNecessary_tileGroupObserver = v5;

  v7 = +[GEOResourceManifestManager modernManager];
  [v7 addTileGroupObserver:_registerSupportSourcesIfNecessary_tileGroupObserver queue:v0];
}

void *GEOPDActionDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDActionDataReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDActionDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDActionDataReadAllFrom_initialTag;
  }

  Specified = GEOPDActionDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDActionDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOPDActionDataReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 84)), 0xFFFCFFFAFFFFFFFDLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 84) & 4) != 0) + (*(a1 + 84) & 1) + ((*(a1 + 84) & 0x20) != 0));
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
  LODWORD(v45) = v14;
  HIDWORD(v45) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v46 = (v16 == 0) | v15;
  v47 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v45);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_91:
      v26 = 1;
      goto LABEL_94;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v48) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v48 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v48 & 0x7F) << v18;
      if ((v48 & 0x80) == 0)
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
      goto LABEL_94;
    }

    v27 = v20 >> 3;
    v28 = v47;
    if ((v46 & 1) == 0)
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

    if (v27 <= 3)
    {
      break;
    }

    switch(v27)
    {
      case 4:
        if (!v28)
        {
          goto LABEL_79;
        }

        if ((*(a1 + 84) & 0x40) == 0)
        {
          v34 = PBReaderReadString();
          v35 = 64;
          goto LABEL_78;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_93;
        }

        v39 = 2 * *(a1 + 84);
LABEL_90:
        v6 += v39 >> 7;
        goto LABEL_80;
      case 5:
        if (!v28)
        {
          goto LABEL_79;
        }

        if ((*(a1 + 84) & 0x10) == 0)
        {
          v34 = PBReaderReadString();
          v35 = 48;
          goto LABEL_78;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_93;
        }

        v39 = 8 * *(a1 + 84);
        goto LABEL_90;
      case 6:
        if (!v28)
        {
          goto LABEL_79;
        }

        if ((*(a1 + 84) & 0x20) == 0)
        {
          v34 = PBReaderReadString();
          v35 = 56;
LABEL_78:
          v38 = *(a1 + v35);
          *(a1 + v35) = v34;

          --v6;
          goto LABEL_80;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_93;
        }

        v39 = 4 * *(a1 + 84);
        goto LABEL_90;
    }

LABEL_66:
    if (v45 & 1) == 0 || (*(a1 + 84))
    {
      goto LABEL_79;
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
      goto LABEL_95;
    }

LABEL_80:
    if (!(BYTE4(v45) & 1 | (v6 != 0)))
    {
      goto LABEL_91;
    }
  }

  if (v27 != 1)
  {
    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_79;
      }

      if ((*(a1 + 84) & 4) == 0)
      {
        v34 = PBReaderReadString();
        v35 = 32;
        goto LABEL_78;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_93;
      }

      v39 = 32 * *(a1 + 84);
      goto LABEL_90;
    }

    if (v27 == 3)
    {
      if (!v28 || (*(a1 + 84) & 2) != 0)
      {
        goto LABEL_79;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_93;
      }

      v33 = objc_alloc_init(GEOPDActionLink);
      if (!GEOPDActionLinkReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_92;
      }

      PBReaderRecallMark();
      [(GEOPDActionData *)a1 _addNoFlagsActionLink:v33];
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  if (!v28 || (*(a1 + 84) & 8) != 0)
  {
LABEL_79:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_80;
  }

  v48 = 0;
  v49 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_93;
  }

  v33 = objc_alloc_init(GEOLocalizedString);
  if (GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDActionData *)a1 _addNoFlagsActionTitle:v33];
LABEL_62:

    goto LABEL_80;
  }

LABEL_92:

LABEL_93:
  v26 = 0;
LABEL_94:
  if ((v45 & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_95:
  *(a1 + 84) |= 1u;
LABEL_96:
  if (v47 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 84) |= 8u;
    *(a1 + 84) |= 4u;
    *(a1 + 84) |= 2u;
    *(a1 + 84) |= 0x40u;
    *(a1 + 84) |= 0x10u;
    *(a1 + 84) |= 0x20u;
    goto LABEL_115;
  }

  if (v16)
  {
    while (1)
    {
LABEL_99:
      v41 = *v16++;
      v40 = v41;
      if (v41 > 3)
      {
        switch(v40)
        {
          case 4:
            v42 = 64;
            break;
          case 5:
            v42 = 16;
            break;
          case 6:
            v42 = 32;
            break;
          default:
            continue;
        }

        goto LABEL_113;
      }

      if (v40 > 1)
      {
        break;
      }

      if (v40 == 1)
      {
        v42 = 8;
LABEL_113:
        *(a1 + 84) |= v42;
        continue;
      }

      if (!v40)
      {
        goto LABEL_115;
      }
    }

    if (v40 == 2)
    {
      v42 = 4;
    }

    else
    {
      if (v40 != 3)
      {
        goto LABEL_99;
      }

      v42 = 2;
    }

    goto LABEL_113;
  }

LABEL_115:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v47)
  {
    v43 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOPDTemplatePlaceModuleConfigurationReadAllFrom(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  objc_sync_enter(v5);
  if (v5)
  {
    v6 = objc_msgSend_position(v5);
    if (v6 < [v5 length])
    {
      while (1)
      {
        if ([v5 hasError])
        {
          goto LABEL_86;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v10 = objc_msgSend_position(v5, v49[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v49 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v49[0] & 0x7F) << v7;
          if ((v49[0] & 0x80) == 0)
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
          goto LABEL_86;
        }

        v16 = v9 >> 3;
        if (v16 > 2)
        {
          break;
        }

        if (v16 == 1)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v40 = objc_msgSend_position(v5, v49[0]);
            if (v40 + 1 >= objc_msgSend_position(v5) && (v41 = objc_msgSend_position(v5), v41 + 1 <= [v5 length]))
            {
              v42 = [v5 data];
              [v42 getBytes:v49 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v39 |= (v49[0] & 0x7F) << v37;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_79;
            }
          }

          if ([v5 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v39;
          }

LABEL_79:
          v45 = 36;
          goto LABEL_84;
        }

        if (v16 != 2)
        {
          goto LABEL_64;
        }

        v49[0] = 0;
        v49[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_88;
        }

        v24 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v24, v5, a3))
        {

          goto LABEL_88;
        }

        PBReaderRecallMark();
        [(GEOPDTemplatePlaceModuleConfiguration *)a1 addSectionTitle:v24];

LABEL_85:
        v46 = objc_msgSend_position(v5);
        if (v46 >= [v5 length])
        {
          goto LABEL_86;
        }
      }

      switch(v16)
      {
        case 3:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v28 = objc_msgSend_position(v5, v49[0]);
            if (v28 + 1 >= objc_msgSend_position(v5) && (v29 = objc_msgSend_position(v5), v29 + 1 <= [v5 length]))
            {
              v30 = [v5 data];
              [v30 getBytes:v49 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v27 |= (v49[0] & 0x7F) << v25;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_71;
            }
          }

          if ([v5 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v27;
          }

LABEL_71:
          v45 = 28;
          goto LABEL_84;
        case 4:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v34 = objc_msgSend_position(v5, v49[0]);
            if (v34 + 1 >= objc_msgSend_position(v5) && (v35 = objc_msgSend_position(v5), v35 + 1 <= [v5 length]))
            {
              v36 = [v5 data];
              [v36 getBytes:v49 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v33 |= (v49[0] & 0x7F) << v31;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v13 = v32++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_75;
            }
          }

          if ([v5 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v33;
          }

LABEL_75:
          v45 = 32;
          goto LABEL_84;
        case 5:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v49[0]) = 0;
            v20 = objc_msgSend_position(v5, v49[0]);
            if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
            {
              v22 = [v5 data];
              [v22 getBytes:v49 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v19 |= (v49[0] & 0x7F) << v17;
            if ((v49[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              v23 = 0;
              goto LABEL_83;
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

LABEL_83:
          v45 = 24;
LABEL_84:
          *(a1 + v45) = v23;
          goto LABEL_85;
      }

LABEL_64:
      if (!*(a1 + 8))
      {
        v43 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v44 = *(a1 + 8);
        *(a1 + 8) = v43;
      }

      if (!PBUnknownFieldAdd())
      {
        goto LABEL_88;
      }

      goto LABEL_85;
    }

LABEL_86:
    v47 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_88:
    v47 = 0;
  }

  objc_sync_exit(v5);

  return v47;
}

uint64_t GEOPDPhotoContentReadAllFrom(uint64_t a1, void *a2)
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
          v42 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v42 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v42 & 0x7F) << v5;
          if ((v42 & 0x80) == 0)
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
            v36 = PBReaderReadString();
            v37 = *(a1 + 16);
            *(a1 + 16) = v36;

            goto LABEL_69;
          }

          if (v14 == 4)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v43 = 0;
              v25 = objc_msgSend_position(v3);
              if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
              {
                v27 = [v3 data];
                [v27 getBytes:&v43 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v24 |= (v43 & 0x7F) << v22;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_63;
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

LABEL_63:
            v38 = 28;
            goto LABEL_68;
          }
        }

        else
        {
          if (v14 == 1)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v45 = 0;
              v33 = objc_msgSend_position(v3);
              if (v33 + 1 >= objc_msgSend_position(v3) && (v34 = objc_msgSend_position(v3), v34 + 1 <= [v3 length]))
              {
                v35 = [v3 data];
                [v35 getBytes:&v45 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v32 |= (v45 & 0x7F) << v30;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_67;
              }
            }

            if ([v3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v32;
            }

LABEL_67:
            v38 = 32;
            goto LABEL_68;
          }

          if (v14 == 2)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v44 = 0;
              v18 = objc_msgSend_position(v3);
              if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
              {
                v20 = [v3 data];
                [v20 getBytes:&v44 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v17 |= (v44 & 0x7F) << v15;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_59;
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

LABEL_59:
            v38 = 24;
LABEL_68:
            *(a1 + v38) = v21;
            goto LABEL_69;
          }
        }

        if (!*(a1 + 8))
        {
          v28 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v29 = *(a1 + 8);
          *(a1 + 8) = v28;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_71;
        }

LABEL_69:
        v39 = objc_msgSend_position(v3);
      }

      while (v39 < [v3 length]);
    }

    v40 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_71:
    v40 = 0;
  }

  objc_sync_exit(v3);

  return v40;
}

uint64_t AVFoundationLibraryCore(uint64_t a1)
{
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AVFoundationLibraryCore_frameworkLibrary;
}

void *GEOMapItemHandleReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOMapItemHandleReadAllFrom can only be called once per object"];
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
    v9 = &GEOMapItemHandleReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOMapItemHandleReadAllFrom_initialTag;
  }

  Specified = GEOMapItemHandleReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOMapItemHandleCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOMapItemHandleReadSpecified(uint64_t a1, void *a2, int *a3)
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

  v12 = v10 > 1;
  v13 = v9 | v12;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v48 = (v14 == 0) | v13;
  v49 = v9 | v12;
  while (1)
  {
    v15 = objc_msgSend_position(v3);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_88;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v50) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v50 & 0x7F) << v16;
      if ((v50 & 0x80) == 0)
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
    v13 = v49;
    if (([v3 hasError] & 1) != 0 || (v23 & 7) == 4)
    {
LABEL_88:
      if (v13)
      {
        v41 = 1;
        goto LABEL_104;
      }

      if (!v14)
      {
LABEL_105:
        v3 = ([v3 hasError] ^ 1);
        if ((v13 & 1) == 0)
        {
          return v3;
        }

        goto LABEL_106;
      }

      while (1)
      {
        while (1)
        {
          v43 = *v14++;
          v42 = v43;
          v44 = v43 == 2;
          if (v43 <= 2)
          {
            break;
          }

          if (v42 == 5)
          {
            v45 = 2;
LABEL_99:
            *(a1 + 56) |= v45;
          }

          else if (v42 == 3)
          {
            v45 = 8;
            goto LABEL_99;
          }
        }

        if (v44)
        {
          v45 = 4;
          goto LABEL_99;
        }

        if (!v42)
        {
          goto LABEL_105;
        }
      }
    }

    v24 = v23 >> 3;
    v25 = v49;
    if ((v48 & 1) == 0)
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

    if (v24 > 2)
    {
      break;
    }

    if (v24 != 1)
    {
      if (v24 != 2)
      {
        goto LABEL_56;
      }

      if (!v25)
      {
        goto LABEL_74;
      }

      if ((*(a1 + 56) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_103;
        }

        v40 = 32 * *(a1 + 56);
        goto LABEL_86;
      }

      v50 = 0;
      v51 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_103;
      }

      v30 = objc_alloc_init(GEOPDPlaceRefinementParameters);
      if (!GEOPDPlaceRefinementParametersReadAllFrom(v30, v3, v8 & 1))
      {
        goto LABEL_102;
      }

      PBReaderRecallMark();
      v31 = 24;
LABEL_73:
      v39 = *(a1 + v31);
      *(a1 + v31) = v30;

      --v6;
      goto LABEL_87;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_74;
    }

    v32 = 0;
    v33 = 0;
    v34 = 0;
    *(a1 + 56) |= 1u;
    while (1)
    {
      LOBYTE(v50) = 0;
      v35 = objc_msgSend_position(v3) + 1;
      if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
      {
        v37 = [v3 data];
        [v37 getBytes:&v50 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v34 |= (v50 & 0x7F) << v32;
      if ((v50 & 0x80) == 0)
      {
        break;
      }

      v32 += 7;
      v22 = v33++ >= 9;
      if (v22)
      {
        v38 = 0;
        goto LABEL_79;
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

LABEL_79:
    v13 = v49;
    *(a1 + 52) = v38;
LABEL_87:
    if (!(v13 & 1 | (v6 != 0)))
    {
      goto LABEL_88;
    }
  }

  if (v24 != 3)
  {
    if (v24 != 5)
    {
LABEL_56:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_103;
      }

      goto LABEL_87;
    }

    if (!v25)
    {
      goto LABEL_74;
    }

    if ((*(a1 + 56) & 2) == 0)
    {
      v50 = 0;
      v51 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_103;
      }

      v30 = objc_alloc_init(GEOMapItemClientAttributes);
      if (!GEOMapItemClientAttributesReadAllFrom(v30, v3, v8 & 1))
      {
        goto LABEL_102;
      }

      PBReaderRecallMark();
      v31 = 16;
      goto LABEL_73;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_103;
    }

    v40 = *(a1 + 56) << 6;
LABEL_86:
    v6 += v40 >> 7;
    goto LABEL_87;
  }

  if (!v25)
  {
LABEL_74:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_87;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_103;
    }

    v40 = 16 * *(a1 + 56);
    goto LABEL_86;
  }

  v50 = 0;
  v51 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_103;
  }

  v30 = objc_alloc_init(GEOMapItemInitialRequestData);
  if (GEOMapItemInitialRequestDataReadAllFrom(v30, v3, v8 & 1))
  {
    PBReaderRecallMark();
    v31 = 32;
    goto LABEL_73;
  }

LABEL_102:

LABEL_103:
  v41 = 0;
LABEL_104:
  *(a1 + 56) |= 4u;
  *(a1 + 56) |= 8u;
  *(a1 + 56) |= 2u;
  if (v41)
  {
    goto LABEL_105;
  }

  v3 = 0;
  if (v13)
  {
LABEL_106:
    v46 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDPlaceRefinementParametersReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceRefinementParametersReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPlaceRefinementParametersReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceRefinementParametersReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceRefinementParametersReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 48) readAll:1];
    [*(a1 + 56) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOPDPlaceRefinementParametersReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 108)), 0xFFF8FFF5FFFAFFF7), 0x1000100010001)) + ((*(a1 + 108) >> 7) & 1) + ((*(a1 + 108) >> 10) & 1) + ((*(a1 + 108) >> 5) & 1));
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
      goto LABEL_15;
    }

    if (v11 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v10;
LABEL_15:
    ++v6;
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

  v12 = v10 > 3;
  v13 = v12 & ~v9 | v8;
  v14 = v9 | v12;
  LODWORD(v81) = v13;
  HIDWORD(v81) = v14 | v8;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v82 = (v15 == 0) | v14;
  v83 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3, v81);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_172:
      v25 = 1;
      goto LABEL_173;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v84) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v84 & 0x7F) << v17;
      if ((v84 & 0x80) == 0)
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
    if ((v24 & 1) != 0 || (v19 & 7) == 4)
    {
      goto LABEL_173;
    }

    v26 = v19 >> 3;
    v27 = v83;
    if ((v82 & 1) == 0)
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
      break;
    }

    if (v26 > 8)
    {
      switch(v26)
      {
        case 9:
          if (!v27)
          {
            goto LABEL_139;
          }

          if ((*(a1 + 108) & 0x80) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_201;
            }

            v74 = *(a1 + 108) << 8;
            goto LABEL_171;
          }

          v39 = PBReaderReadData();
          v40 = 32;
          goto LABEL_131;
        case 0xA:
          if ((v7 & 1) == 0)
          {
            goto LABEL_139;
          }

          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 108) |= 0x10u;
          while (1)
          {
            LOBYTE(v84) = 0;
            v65 = objc_msgSend_position(v3) + 1;
            if (v65 >= objc_msgSend_position(v3) && (v66 = objc_msgSend_position(v3) + 1, v66 <= [v3 length]))
            {
              v67 = [v3 data];
              [v67 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v64 |= (v84 & 0x7F) << v62;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v23 = v63++ >= 9;
            if (v23)
            {
              v68 = 0;
              goto LABEL_155;
            }
          }

          v68 = (v64 != 0) & ~[v3 hasError];
LABEL_155:
          *(a1 + 104) = v68;
          goto LABEL_140;
        case 0xB:
          if (!v27)
          {
            goto LABEL_139;
          }

          if ((*(a1 + 108) & 0x400) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_201;
            }

            v74 = 32 * *(a1 + 108);
            goto LABEL_171;
          }

          v84 = 0;
          v85 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_201;
          }

          v41 = objc_alloc_init(GEOPDMapsIdentifier);
          if (!GEOPDMapsIdentifierReadAllFrom(v41, v3))
          {
            goto LABEL_200;
          }

          PBReaderRecallMark();
          v42 = 56;
LABEL_122:
          v69 = *(a1 + v42);
          *(a1 + v42) = v41;
LABEL_132:

          --v6;
          goto LABEL_140;
      }

      goto LABEL_133;
    }

    if (v26 != 6)
    {
      if (v26 == 7)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_139;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v84) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v84 & 0x7F) << v56;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v23 = v57++ >= 9;
          if (v23)
          {
            v38 = 0;
            goto LABEL_153;
          }
        }

        if ([v3 hasError])
        {
          v38 = 0;
        }

        else
        {
          v38 = v58;
        }

LABEL_153:
        v73 = 96;
      }

      else
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_139;
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v84) = 0;
          v35 = objc_msgSend_position(v3) + 1;
          if (v35 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3) + 1, v36 <= [v3 length]))
          {
            v37 = [v3 data];
            [v37 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v34 |= (v84 & 0x7F) << v32;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v23 = v33++ >= 9;
          if (v23)
          {
            v38 = 0;
            goto LABEL_159;
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

LABEL_159:
        v73 = 92;
      }

      goto LABEL_160;
    }

    if (!v27 || (*(a1 + 108) & 0x100) != 0)
    {
      goto LABEL_139;
    }

    v70 = PBReaderReadString();
    if (v70)
    {
      [(GEOPDPlaceRefinementParameters *)a1 _addNoFlagsFormattedAddressLineHint:v70];
    }

LABEL_140:
    if (!(BYTE4(v81) & 1 | (v6 != 0)))
    {
      goto LABEL_172;
    }
  }

  if (v26 <= 2)
  {
    if (v26 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_139;
      }

      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(a1 + 108) |= 8u;
      while (1)
      {
        LOBYTE(v84) = 0;
        v53 = objc_msgSend_position(v3) + 1;
        if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
        {
          v55 = [v3 data];
          [v55 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v52 |= (v84 & 0x7F) << v50;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v50 += 7;
        v23 = v51++ >= 9;
        if (v23)
        {
          v38 = 0;
          goto LABEL_145;
        }
      }

      if ([v3 hasError])
      {
        v38 = 0;
      }

      else
      {
        v38 = v52;
      }

LABEL_145:
      v73 = 100;
LABEL_160:
      *(a1 + v73) = v38;
      goto LABEL_140;
    }

    if (v26 == 2)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_139;
      }

      v43 = 0;
      v44 = 0;
      v45 = 0;
      *(a1 + 108) |= 1u;
      while (1)
      {
        LOBYTE(v84) = 0;
        v46 = objc_msgSend_position(v3) + 1;
        if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
        {
          v48 = [v3 data];
          [v48 getBytes:&v84 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v45 |= (v84 & 0x7F) << v43;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v43 += 7;
        v23 = v44++ >= 9;
        if (v23)
        {
          v49 = 0;
          goto LABEL_149;
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

LABEL_149:
      *(a1 + 64) = v49;
      goto LABEL_140;
    }

LABEL_133:
    if ((v81 & 1) == 0 || (*(a1 + 108) & 0x20) != 0)
    {
LABEL_139:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_201;
      }

      goto LABEL_140;
    }

    if (!*(a1 + 16))
    {
      v71 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v72 = *(a1 + 16);
      *(a1 + 16) = v71;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      v80 = &OBJC_IVAR___GEOPDAutocompleteParametersLocalitiesAndLandmarks__flags;
      goto LABEL_174;
    }

    goto LABEL_140;
  }

  if (v26 != 3)
  {
    if (v26 == 4)
    {
      if (!v27)
      {
        goto LABEL_139;
      }

      if ((*(a1 + 108) & 0x40) == 0)
      {
        v84 = 0;
        v85 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_201;
        }

        v41 = objc_alloc_init(GEOStructuredAddress);
        if (!GEOStructuredAddressReadAllFrom(v41, v3))
        {
          goto LABEL_200;
        }

        PBReaderRecallMark();
        v42 = 24;
        goto LABEL_122;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_201;
      }

      v74 = *(a1 + 108) << 9;
    }

    else
    {
      if (!v27)
      {
        goto LABEL_139;
      }

      if ((*(a1 + 108) & 0x800) == 0)
      {
        v39 = PBReaderReadString();
        v40 = 72;
LABEL_131:
        v69 = *(a1 + v40);
        *(a1 + v40) = v39;
        goto LABEL_132;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_201;
      }

      v74 = 16 * *(a1 + 108);
    }

LABEL_171:
    v6 += v74 >> 15;
    goto LABEL_140;
  }

  if (!v27)
  {
    goto LABEL_139;
  }

  if ((*(a1 + 108) & 0x200) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_201;
    }

    v74 = *(a1 + 108) << 6;
    goto LABEL_171;
  }

  v84 = 0;
  v85 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_201;
  }

  v41 = objc_alloc_init(GEOLatLng);
  if (GEOLatLngReadAllFrom(v41, v3))
  {
    PBReaderRecallMark();
    v42 = 48;
    goto LABEL_122;
  }

LABEL_200:

LABEL_201:
  v25 = 0;
LABEL_173:
  v80 = &OBJC_IVAR___GEOPDAutocompleteParametersLocalitiesAndLandmarks__flags;
  if ((v81 & 1) == 0)
  {
    goto LABEL_175;
  }

LABEL_174:
  *(a1 + v80[852]) |= 0x20u;
LABEL_175:
  if (v83 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v80[852]) |= 0x200u;
    *(a1 + v80[852]) |= 0x40u;
    *(a1 + v80[852]) |= 0x800u;
    *(a1 + v80[852]) |= 0x100u;
    *(a1 + v80[852]) |= 0x80u;
    *(a1 + v80[852]) |= 0x400u;
    goto LABEL_194;
  }

  if (v15)
  {
    while (1)
    {
LABEL_178:
      v76 = *v15++;
      v75 = v76;
      if (v76 > 5)
      {
        switch(v75)
        {
          case 6:
            v77 = 256;
            break;
          case 9:
            v77 = 128;
            break;
          case 11:
            v77 = 1024;
            break;
          default:
            continue;
        }

        goto LABEL_192;
      }

      if (v75 > 3)
      {
        break;
      }

      if (v75 == 3)
      {
        v77 = 512;
LABEL_192:
        *(a1 + v80[852]) |= v77;
        continue;
      }

      if (!v75)
      {
        goto LABEL_194;
      }
    }

    if (v75 == 4)
    {
      v77 = 64;
    }

    else
    {
      if (v75 != 5)
      {
        goto LABEL_178;
      }

      v77 = 2048;
    }

    goto LABEL_192;
  }

LABEL_194:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v83)
  {
    v78 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOMapItemClientAttributesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOMapItemClientAttributesReadAllFrom can only be called once per object"];
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
    v9 = &GEOMapItemClientAttributesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOMapItemClientAttributesReadAllFrom_initialTag;
  }

  Specified = GEOMapItemClientAttributesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOMapItemClientAttributesCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOMapItemClientAttributesReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = *(a1 + 68);
  v12 = ((v11 >> 4) & 1) + (v11 & 1) + ((v11 >> 1) & 1) + ((v11 >> 2) & 1) + ((v11 >> 3) & 1);
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

  v14 = v12 > 2;
  v15 = v14 & ~v10 | v8;
  v16 = v10 | v14;
  LODWORD(v45) = v15;
  HIDWORD(v45) = v16 | v8;
  if ((v16 | v7))
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  v46 = (v17 == 0) | v16;
  v47 = v16;
  while (1)
  {
    v18 = objc_msgSend_position(v3, v45);
    if (v18 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_86:
      v27 = 1;
      goto LABEL_89;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      LOBYTE(v48) = 0;
      v22 = objc_msgSend_position(v3) + 1;
      if (v22 >= objc_msgSend_position(v3) && (v23 = objc_msgSend_position(v3) + 1, v23 <= [v3 length]))
      {
        v24 = [v3 data];
        [v24 getBytes:&v48 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v21 |= (v48 & 0x7F) << v19;
      if ((v48 & 0x80) == 0)
      {
        break;
      }

      v19 += 7;
      if (v20++ >= 9)
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
      goto LABEL_89;
    }

    v28 = v21 >> 3;
    v29 = v47;
    if ((v46 & 1) == 0)
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

    if (v28 > 2)
    {
      break;
    }

    if (v28 == 1)
    {
      if (!v29)
      {
        goto LABEL_74;
      }

      if ((*(a1 + 68) & 2) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_88;
        }

        v34 = objc_alloc_init(GEOMapItemAddressBookAttributes);
        if (!GEOMapItemAddressBookAttributesReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_87;
        }

        PBReaderRecallMark();
        v35 = 24;
        goto LABEL_73;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_88;
      }

      v39 = *(a1 + 68) << 6;
      goto LABEL_84;
    }

    if (v28 == 2)
    {
      if (!v29)
      {
        goto LABEL_74;
      }

      if ((*(a1 + 68) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_88;
        }

        v39 = 8 * *(a1 + 68);
        goto LABEL_84;
      }

      v48 = 0;
      v49 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_88;
      }

      v34 = objc_alloc_init(GEOMapItemRoutineAttributes);
      if (!GEOMapItemRoutineAttributesReadAllFrom(v34, v3, v9 & 1))
      {
        goto LABEL_87;
      }

      PBReaderRecallMark();
      v35 = 48;
LABEL_73:
      v38 = *(a1 + v35);
      *(a1 + v35) = v34;

      --v6;
      goto LABEL_85;
    }

LABEL_57:
    if (v45 & 1) == 0 || (*(a1 + 68))
    {
LABEL_74:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_85;
    }

    if (!*(a1 + 16))
    {
      v36 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v37 = *(a1 + 16);
      *(a1 + 16) = v36;
    }

    if (!PBUnknownFieldAdd())
    {
      v27 = 0;
      goto LABEL_90;
    }

LABEL_85:
    if (!(BYTE4(v45) & 1 | (v6 != 0)))
    {
      goto LABEL_86;
    }
  }

  if (v28 != 3)
  {
    if (v28 == 4)
    {
      if (!v29)
      {
        goto LABEL_74;
      }

      if ((*(a1 + 68) & 8) == 0)
      {
        v48 = 0;
        v49 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_88;
        }

        v34 = objc_alloc_init(GEOMapItemMapsSyncAttributes);
        if (!GEOMapItemMapsSyncAttributesReadAllFrom(v34, v3, v9 & 1))
        {
          goto LABEL_87;
        }

        PBReaderRecallMark();
        v35 = 40;
        goto LABEL_73;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_88;
      }

      v39 = 16 * *(a1 + 68);
LABEL_84:
      v6 += v39 >> 7;
      goto LABEL_85;
    }

    goto LABEL_57;
  }

  if (!v29)
  {
    goto LABEL_74;
  }

  if ((*(a1 + 68) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_88;
    }

    v39 = 32 * *(a1 + 68);
    goto LABEL_84;
  }

  v48 = 0;
  v49 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_88;
  }

  v34 = objc_alloc_init(GEOMapItemCorrectedLocationAttributes);
  if (GEOMapItemCorrectedLocationAttributesReadAllFrom(v34, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v35 = 32;
    goto LABEL_73;
  }

LABEL_87:

LABEL_88:
  v27 = 0;
LABEL_89:
  if ((v45 & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_90:
  *(a1 + 68) |= 1u;
LABEL_91:
  if (v47 & 1 | ((v27 & 1) == 0))
  {
    *(a1 + 68) |= 2u;
    *(a1 + 68) |= 0x10u;
    *(a1 + 68) |= 4u;
    *(a1 + 68) |= 8u;
    goto LABEL_105;
  }

  if (v17)
  {
    while (1)
    {
      v41 = *v17++;
      v40 = v41;
      if (v41 > 2)
      {
        if (v40 == 3)
        {
          v42 = 4;
        }

        else
        {
          if (v40 != 4)
          {
            continue;
          }

          v42 = 8;
        }

        goto LABEL_103;
      }

      if (v40 == 1)
      {
        break;
      }

      if (v40 == 2)
      {
        v42 = 16;
LABEL_103:
        *(a1 + 68) |= v42;
        continue;
      }

      if (!v40)
      {
        goto LABEL_105;
      }
    }

    v42 = 2;
    goto LABEL_103;
  }

LABEL_105:
  if (v27)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v47)
  {
    v43 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOMapItemMapsSyncAttributesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOMapItemMapsSyncAttributesReadAllFrom can only be called once per object"];
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
    v9 = &GEOMapItemMapsSyncAttributesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOMapItemMapsSyncAttributesReadAllFrom_initialTag;
  }

  Specified = GEOMapItemMapsSyncAttributesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOMapItemMapsSyncAttributesReadSpecified(uint64_t a1, void *a2, int *a3)
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
      if ((v8 & 1) == 0)
      {
        goto LABEL_65;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        v52 = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:&v52 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v52 & 0x7F) << v34;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v22 = v35++ >= 9;
        if (v22)
        {
          v40 = 0;
          goto LABEL_71;
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

LABEL_71:
      *(a1 + 52) = v40;
      goto LABEL_66;
    }

    if (v25 == 2)
    {
      if (!v26)
      {
        goto LABEL_65;
      }

      if ((*(a1 + 56) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_96;
        }

        v43 = 16 * *(a1 + 56);
        goto LABEL_76;
      }

      v31 = PBReaderReadString();
      v32 = 32;
      goto LABEL_48;
    }

    if (v25 == 1)
    {
      break;
    }

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
      v49 = &OBJC_IVAR___GEORPTransitLineTileInfo__readerMarkLength;
      goto LABEL_79;
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

  if ((*(a1 + 56) & 4) == 0)
  {
    v31 = PBReaderReadString();
    v32 = 24;
LABEL_48:
    v33 = *(a1 + v32);
    *(a1 + v32) = v31;

    --v9;
    goto LABEL_66;
  }

  if (PBReaderSkipValueWithTag())
  {
    v43 = 32 * *(a1 + 56);
LABEL_76:
    v9 += v43 >> 7;
    goto LABEL_66;
  }

LABEL_96:
  v24 = 0;
LABEL_78:
  v49 = &OBJC_IVAR___GEORPTransitLineTileInfo__readerMarkLength;
  if ((v50 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_79:
  *(a1 + v49[830]) |= 2u;
LABEL_80:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v49[830]) |= 4u;
    *(a1 + v49[830]) |= 8u;
    goto LABEL_90;
  }

  if (v14)
  {
    while (1)
    {
      v45 = *v14++;
      v44 = v45;
      if (v45 == 1)
      {
        break;
      }

      if (v44 == 2)
      {
        v46 = 8;
LABEL_89:
        *(a1 + v49[830]) |= v46;
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

uint64_t _GEOMapItemClientAttributesCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 24) readAll:1];
  [*(a1 + 48) readAll:1];
  [*(a1 + 32) readAll:1];
  v2 = *(a1 + 40);

  return [v2 readAll:1];
}

uint64_t _GEOMapItemHandleCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [(GEOPDPlaceRefinementParameters *)*(a1 + 24) readAll:?];
  [*(a1 + 32) readAll:1];
  v2 = *(a1 + 16);

  return [v2 readAll:1];
}

uint64_t GEOPDMerchantLookupParametersHasSensitiveFields(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 transactionLocation];
  if (GEOLocationHasSensitiveFields(v3))
  {
    HasSensitiveFields = 1;
  }

  else
  {
    v5 = [a1 bankTransactionInformation];
    HasSensitiveFields = GEOPDBankTransactionInformationHasSensitiveFields(v5);
  }

  return HasSensitiveFields;
}

void *GEOPDAutocompleteParametersHasSensitiveFields(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = [result allEntriesWithBrowse];
    HasSensitiveFields = GEOPDAutocompleteParametersAllEntriesWithBrowseHasSensitiveFields(v3, a2);

    return HasSensitiveFields;
  }

  return result;
}

id *GEOPDExternalTransitLookupParametersHasSensitiveFields(id *result)
{
  if (result)
  {
    v1 = [(GEOPDExternalTransitLookupParameters *)result transactionLocation];
    HasSensitiveFields = GEOLocationHasSensitiveFields(v1);

    return HasSensitiveFields;
  }

  return result;
}

uint64_t GEOPDBatchReverseGeocodingParametersHasSensitiveFields(id *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v1 = [(GEOPDBatchReverseGeocodingParameters *)a1 assetLocations];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (GEOLocationHasSensitiveFields(*(*(&v6 + 1) + 8 * i)))
        {
          v2 = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

uint64_t GEOPDWifiFingerprintParametersHasSensitiveFields(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (GEOPDWifiMeasurementHasSensitiveFields(*(*(&v9 + 1) + 8 * v6)))
        {
          v7 = 1;
          goto LABEL_12;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

uint64_t GEOPDGroundViewLabelParametersHasSensitiveFields(uint64_t result)
{
  if (result)
  {
    return GEOLocationHasSensitiveFields(*(result + 24));
  }

  return result;
}

uint64_t GEOPDTransitNearbyScheduleLookupParametersHasSensitiveFields(id *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = [(GEOPDTransitNearbyScheduleLookupParameters *)a1 userLocation];
  v5 = GEOWaypointTypedHasSensitiveFields(v4);

  if (v5)
  {
    return 1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  [(GEOPDTransitNearbyScheduleLookupParameters *)a1 _readTransitNearbyScheduleLookupOrigins];
  v7 = a1[3];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (GEOPDTransitNearbyScheduleLookupOriginHasSensitiveFields(*(*(&v13 + 1) + 8 * v11), a2))
        {
          v6 = 1;
          goto LABEL_15;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t GEOPDTransitNearbyPaymentMethodLookupParametersHasSensitiveFields(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 16);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (GEOPDTransitNearbyPaymentMethodLookupOriginHasSensitiveFields(*(*(&v10 + 1) + 8 * v7), a2))
        {
          v8 = 1;
          goto LABEL_12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

id *GEOPDPlaceDescriptorResolutionParametersHasSensitiveFields(id *result)
{
  if (result)
  {
    v1 = [(GEOPDPlaceDescriptorResolutionParameters *)result location];
    HasSensitiveFields = GEOLocationHasSensitiveFields(v1);

    return HasSensitiveFields;
  }

  return result;
}

void *GEOPDQuickLinkReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDQuickLinkReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDQuickLinkReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDQuickLinkReadAllFrom_initialTag;
  }

  Specified = GEOPDQuickLinkReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDQuickLinkCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void ___setDefaultArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = _valueForKeyPath(a2, *(a1 + 32), 0, 0);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void ___setDefaultArray_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a2;
  v10 = [v7 stringWithFormat:@"%u", a3];
  v9 = [*(a1 + 32) arrayByAddingObject:v10];
  LOBYTE(v7) = _setDefault(*(a1 + 40), v8, v9);

  *(*(*(a1 + 48) + 8) + 24) &= v7;
  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

uint64_t GEOPDMapsHomeParametersReadAllFrom(uint64_t a1, void *a2, int a3)
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
          LOBYTE(v31[0]) = 0;
          v10 = objc_msgSend_position(v5, v31[0]);
          if (v10 + 1 >= objc_msgSend_position(v5) && (v11 = objc_msgSend_position(v5), v11 + 1 <= [v5 length]))
          {
            v12 = [v5 data];
            [v12 getBytes:v31 range:{objc_msgSend_position(v5), 1}];

            [v5 setPosition:objc_msgSend_position(v5) + 1];
          }

          else
          {
            [v5 _setError];
          }

          v9 |= (v31[0] & 0x7F) << v7;
          if ((v31[0] & 0x80) == 0)
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
        if (v16 == 3)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v22 = objc_msgSend_position(v5, v31[0]);
            if (v22 + 1 >= objc_msgSend_position(v5) && (v23 = objc_msgSend_position(v5), v23 + 1 <= [v5 length]))
            {
              v24 = [v5 data];
              [v24 getBytes:v31 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v21 |= (v31[0] & 0x7F) << v19;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_38;
            }
          }

          v25 = (v21 != 0) & ~[v5 hasError];
LABEL_38:
          *(a1 + 24) = v25;
        }

        else if (v16 == 2)
        {
          v31[0] = 0;
          v31[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_42;
          }

          v17 = objc_alloc_init(GEOPDCollectionSuggestionParameters);
          if (!GEOPDCollectionSuggestionParametersReadAllFrom(v17, v5, a3))
          {

            goto LABEL_42;
          }

          PBReaderRecallMark();
          v18 = *(a1 + 16);
          *(a1 + 16) = v17;
        }

        else
        {
          if (!*(a1 + 8))
          {
            v26 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v27 = *(a1 + 8);
            *(a1 + 8) = v26;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_42;
          }
        }

        v28 = objc_msgSend_position(v5);
      }

      while (v28 < [v5 length]);
    }

    v29 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_42:
    v29 = 0;
  }

  objc_sync_exit(v5);

  return v29;
}

void *GEOPDCollectionSuggestionParametersReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCollectionSuggestionParametersReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDCollectionSuggestionParametersReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCollectionSuggestionParametersReadAllFrom_initialTag;
  }

  Specified = GEOPDCollectionSuggestionParametersReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDCollectionSuggestionParametersCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOPDCollectionSuggestionParametersReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 76)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFDFFFCFFFBLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 76) & 2) != 0));
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

  v13 = v11 > 2;
  v14 = v13 & ~v10 | v8;
  v15 = v10 | v13;
  LODWORD(v46) = v14;
  HIDWORD(v46) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v47 = (v16 == 0) | v15;
  v48 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v46);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_85:
      v26 = 1;
      goto LABEL_88;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v49) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v49 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v49 & 0x7F) << v18;
      if ((v49 & 0x80) == 0)
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
      goto LABEL_88;
    }

    v27 = v20 >> 3;
    v28 = v48;
    if ((v47 & 1) == 0)
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
      switch(v27)
      {
        case 3:
          if (!v28 || (*(a1 + 76) & 0x10) != 0)
          {
LABEL_78:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_79;
          }

          v49 = 0;
          v50 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_87;
          }

          v33 = objc_alloc_init(GEOPDMapsIdentifier);
          if (!GEOPDMapsIdentifierReadAllFrom(v33, v3))
          {
            goto LABEL_86;
          }

          PBReaderRecallMark();
          [(GEOPDCollectionSuggestionParameters *)a1 _addNoFlagsPublisherId:v33];
          goto LABEL_66;
        case 4:
          if (!v28 || (*(a1 + 76) & 8) != 0)
          {
            goto LABEL_78;
          }

          v49 = 0;
          v50 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_87;
          }

          v33 = objc_alloc_init(GEOPDMapsIdentifier);
          if (!GEOPDMapsIdentifierReadAllFrom(v33, v3))
          {
            goto LABEL_86;
          }

          PBReaderRecallMark();
          [(GEOPDCollectionSuggestionParameters *)a1 _addNoFlagsGeoId:v33];
          goto LABEL_66;
        case 5:
          if (!v28 || (*(a1 + 76) & 4) != 0)
          {
            goto LABEL_78;
          }

          v33 = PBReaderReadString();
          if (v33)
          {
            [(GEOPDCollectionSuggestionParameters *)a1 _addNoFlagsCategoryId:v33];
          }

LABEL_66:

          goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v27 == 1)
    {
      break;
    }

    if (v27 == 2)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_78;
      }

      *(a1 + 76) |= 1u;
      v49 = 0;
      v34 = objc_msgSend_position(v3) + 8;
      if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 8, v35 <= [v3 length]))
      {
        v39 = [v3 data];
        [v39 getBytes:&v49 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      *(a1 + 48) = v49;
      goto LABEL_79;
    }

LABEL_72:
    if ((v46 & 1) == 0 || (*(a1 + 76) & 2) != 0)
    {
      goto LABEL_78;
    }

    if (!*(a1 + 16))
    {
      v37 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v38 = *(a1 + 16);
      *(a1 + 16) = v37;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v45 = &OBJC_IVAR___GEOPDAutocompleteParametersLocalitiesAndLandmarks__flags;
      goto LABEL_89;
    }

LABEL_79:
    if (!(BYTE4(v46) & 1 | (v6 != 0)))
    {
      goto LABEL_85;
    }
  }

  if (!v28)
  {
    goto LABEL_78;
  }

  if ((*(a1 + 76) & 0x20) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_87;
    }

    v6 += *(a1 + 76) << 26 >> 31;
    goto LABEL_79;
  }

  v49 = 0;
  v50 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_87;
  }

  v33 = objc_alloc_init(GEOPDViewportInfo);
  if (GEOPDViewportInfoReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v36 = *(a1 + 56);
    *(a1 + 56) = v33;

    --v6;
    goto LABEL_79;
  }

LABEL_86:

LABEL_87:
  v26 = 0;
LABEL_88:
  v45 = &OBJC_IVAR___GEOPDAutocompleteParametersLocalitiesAndLandmarks__flags;
  if ((v46 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_89:
  *(a1 + v45[288]) |= 2u;
LABEL_90:
  if (v48 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v45[288]) |= 0x20u;
    *(a1 + v45[288]) |= 0x10u;
    *(a1 + v45[288]) |= 8u;
    *(a1 + v45[288]) |= 4u;
    goto LABEL_104;
  }

  if (v16)
  {
    while (1)
    {
      v41 = *v16++;
      v40 = v41;
      if (v41 > 3)
      {
        if (v40 == 4)
        {
          v42 = 8;
        }

        else
        {
          if (v40 != 5)
          {
            continue;
          }

          v42 = 4;
        }

        goto LABEL_102;
      }

      if (v40 == 1)
      {
        break;
      }

      if (v40 == 3)
      {
        v42 = 16;
LABEL_102:
        *(a1 + v45[288]) |= v42;
        continue;
      }

      if (!v40)
      {
        goto LABEL_104;
      }
    }

    v42 = 32;
    goto LABEL_102;
  }

LABEL_104:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v48)
  {
    v43 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void _GEOPDCollectionSuggestionParametersCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [a1[7] readAll:1];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = a1[5];
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
  v7 = a1[4];
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

void *MapsFeature_IsEnabled_NaturalSearchMaps()
{
  result = GEOConfigGetBOOL(68, &MapsFeaturesConfig_NaturalSearchMaps_Metadata);
  if (result)
  {

    return GEOIsFeatureActive(@"MapsLuck");
  }

  return result;
}

void _GEOMapItemStorageCallReadAllRecursiveWithoutSynchronized(id *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [a1[11] readAll:1];
  [a1[13] readAll:1];
  [a1[7] readAll:1];
  [a1[12] readAll:1];
  [a1[10] readAll:1];
  [a1[8] readAll:1];
  [a1[14] readAll:1];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = a1[6];
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
}

void _GEOMurmurHash3_128_realign(const void *a1, size_t size, uint64_t a3, unint64_t *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (size >= 1)
  {
    v5 = a3;
    v6 = size;
    v8 = size;
    v9 = malloc_type_malloc(size, 0x2C2444D4uLL);
    if (v9)
    {
      v10 = v9;
      memcpy(v9, a1, v8);
      MurmurHash3_x64_128(v10, v6, v5, a4);

      free(v10);
    }

    else
    {
      v11 = GEOFindOrCreateLog("com.apple.GeoServices", "GEOMurmurHash3");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12[0] = 67109120;
        v12[1] = v6;
        _os_log_impl(&dword_18660C000, v11, OS_LOG_TYPE_FAULT, "allocation of %d bytes failed", v12, 8u);
      }
    }
  }
}

uint64_t MurmurHash3_x64_128(uint64_t result, int a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  if (a2 < 16)
  {
    v7 = a3;
  }

  else
  {
    v5 = (result + 8);
    v6 = (a2 / 16);
    v7 = v4;
    do
    {
      v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v5 - 1)) | ((0x87C37B91114253D5 * *(v5 - 1)) >> 33))) ^ v4, 37) + v7) + 1390208809;
      v7 = 5 * (v4 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v5) | ((0x4CF5AD432745937FLL * *v5) >> 31))) ^ v7, 33)) + 944331445;
      v5 += 2;
      --v6;
    }

    while (v6);
  }

  v8 = (result + 16 * (a2 / 16));
  v9 = 0;
  switch(a2 & 0xF)
  {
    case 1:
      goto LABEL_21;
    case 2:
      goto LABEL_20;
    case 3:
      goto LABEL_19;
    case 4:
      goto LABEL_18;
    case 5:
      goto LABEL_17;
    case 6:
      goto LABEL_16;
    case 7:
      goto LABEL_15;
    case 8:
      goto LABEL_14;
    case 9:
      goto LABEL_13;
    case 0xA:
      goto LABEL_12;
    case 0xB:
      goto LABEL_11;
    case 0xC:
      goto LABEL_10;
    case 0xD:
      goto LABEL_9;
    case 0xE:
      goto LABEL_8;
    case 0xF:
      v9 = v8[14] << 48;
LABEL_8:
      v9 |= v8[13] << 40;
LABEL_9:
      v9 ^= v8[12] << 32;
LABEL_10:
      v9 ^= v8[11] << 24;
LABEL_11:
      v9 ^= v8[10] << 16;
LABEL_12:
      v9 ^= v8[9] << 8;
LABEL_13:
      v7 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v9 ^ v8[8])) | ((0x4CF5AD432745937FLL * (v9 ^ v8[8])) >> 31));
LABEL_14:
      v9 = v8[7] << 56;
LABEL_15:
      v9 |= v8[6] << 48;
LABEL_16:
      v9 ^= v8[5] << 40;
LABEL_17:
      v9 ^= v8[4] << 32;
LABEL_18:
      v9 ^= v8[3] << 24;
LABEL_19:
      v9 ^= v8[2] << 16;
LABEL_20:
      v9 ^= v8[1] << 8;
LABEL_21:
      v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v9 ^ *v8)) | ((0x87C37B91114253D5 * (v9 ^ *v8)) >> 33));
      break;
    default:
      break;
  }

  v10 = v7 ^ a2;
  v11 = (v4 ^ a2) + v10;
  v12 = v11 + v10;
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
  v15 = v14 ^ (v14 >> 33);
  v16 = v15 + (v13 ^ (v13 >> 33));
  *a4 = v16;
  a4[1] = v16 + v15;
  return result;
}