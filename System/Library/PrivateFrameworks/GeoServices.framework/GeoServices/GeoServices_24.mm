uint64_t _GEOETATrafficUpdateResponseIsDirty(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 160));
  v2 = *(a1 + 172);
  if ((v2 & 0x21000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x10000) == 0)
  {
LABEL_5:
    if ((v2 & 0xEFF8) != 0)
    {
      return 1;
    }

    if ((v2 & 0x1000) != 0)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v5 = *(a1 + 112);
      v6 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v33;
LABEL_11:
        v9 = 0;
        while (1)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (GEOETARouteIsDirty(*(*(&v32 + 1) + 8 * v9)))
          {
            goto LABEL_49;
          }

          if (v7 == ++v9)
          {
            v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
            if (v7)
            {
              goto LABEL_11;
            }

            break;
          }
        }
      }

      v2 = *(a1 + 172);
    }

    if ((v2 & 0x20) != 0)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v5 = *(a1 + 56);
      v10 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
LABEL_21:
        v13 = 0;
        while (1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v5);
          }

          if (GEOTrafficCameraIsDirty(*(*(&v28 + 1) + 8 * v13)))
          {
            goto LABEL_49;
          }

          if (v11 == ++v13)
          {
            v11 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
            if (v11)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }

      v2 = *(a1 + 172);
    }

    if ((v2 & 0x4000) != 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = *(a1 + 128);
      v14 = [v5 countByEnumeratingWithState:&v24 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
LABEL_31:
        v17 = 0;
        while (1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v5);
          }

          if (GEOTrafficSignalIsDirty(*(*(&v24 + 1) + 8 * v17)))
          {
            goto LABEL_49;
          }

          if (v15 == ++v17)
          {
            v15 = [v5 countByEnumeratingWithState:&v24 objects:v37 count:16];
            if (v15)
            {
              goto LABEL_31;
            }

            break;
          }
        }
      }

      v2 = *(a1 + 172);
    }

    if ((v2 & 0x10) == 0)
    {
      return 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(a1 + 48);
    v3 = [v5 countByEnumeratingWithState:&v20 objects:v36 count:16];
    if (!v3)
    {
LABEL_50:

      return v3;
    }

    v18 = *v21;
LABEL_42:
    v19 = 0;
    while (1)
    {
      if (*v21 != v18)
      {
        objc_enumerationMutation(v5);
      }

      if (GEOArrivalParametersIsDirty(*(*(&v20 + 1) + 8 * v19)))
      {
        break;
      }

      if (v3 == ++v19)
      {
        v3 = [v5 countByEnumeratingWithState:&v20 objects:v36 count:16];
        if (v3)
        {
          goto LABEL_42;
        }

        goto LABEL_50;
      }
    }

LABEL_49:
    v3 = 1;
    goto LABEL_50;
  }

  if (!GEOETATrafficUpdateWaypointRouteIsDirty(*(a1 + 144)))
  {
    v2 = *(a1 + 172);
    goto LABEL_5;
  }

  return 1;
}

void *GEOETARouteReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 276))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETARouteReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 280));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 272) = objc_msgSend_position(v8);
  *(a1 + 276) = [v8 length];
  if (a3)
  {
    v9 = &GEOETARouteReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETARouteReadAllFrom_initialTag;
  }

  Specified = GEOETARouteReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOETARouteCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 280));
  return Specified;
}

void *GEOETAStepReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOETAStepReadAllFrom can only be called once per object"];
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
    v9 = &GEOETAStepReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOETAStepReadAllFrom_initialTag;
  }

  Specified = GEOETAStepReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 40) readAll:1];
    [*(a1 + 24) readAll:1];
    [*(a1 + 32) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOWaypointInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 108))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOWaypointInfoReadAllFrom can only be called once per object"];
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
    v9 = &GEOWaypointInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOWaypointInfoReadAllFrom_initialTag;
  }

  Specified = GEOWaypointInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOWaypointInfoCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 112));
  return Specified;
}

void *GEOPBTransitArtworkReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 96)), 0xFFFCFFFAFFF9FFF7), 0x1000100010001)) + (HIBYTE(*(a1 + 96)) & 1) + ((*(a1 + 96) >> 5) & 1) + ((*(a1 + 96) >> 3) & 1));
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
  LODWORD(v66) = v14;
  HIDWORD(v66) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v67 = (v16 == 0) | v15;
  v68 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v66);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_147:
      v26 = 1;
      goto LABEL_150;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v69) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v69 & 0x7F) << v18;
      if ((v69 & 0x80) == 0)
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
      goto LABEL_150;
    }

    v27 = v20 >> 3;
    v28 = v68;
    if ((v67 & 1) == 0)
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

    if (v27 > 11)
    {
      break;
    }

    if (v27 > 9)
    {
      if (v27 != 10)
      {
        if (!v28)
        {
          goto LABEL_118;
        }

        if ((*(a1 + 96) & 0x80) == 0)
        {
          v69 = 0;
          v70 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_149;
          }

          v33 = objc_alloc_init(GEOPBTransitIcon);
          if (!GEOPBTransitIconReadAllFrom(v33, v3))
          {
            goto LABEL_148;
          }

          PBReaderRecallMark();
          v34 = 48;
          goto LABEL_110;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_149;
        }

        v59 = *(a1 + 96) << 8;
LABEL_145:
        v6 += v59 >> 15;
        goto LABEL_146;
      }

      if (!v28)
      {
        goto LABEL_118;
      }

      if ((*(a1 + 96) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_149;
        }

        v59 = *(a1 + 96) << 6;
        goto LABEL_145;
      }

      v69 = 0;
      v70 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_149;
      }

      v33 = objc_alloc_init(GEOPBTransitShield);
      if (!GEOPBTransitShieldReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_148;
      }

      PBReaderRecallMark();
      v34 = 64;
LABEL_110:
      v55 = *(a1 + v34);
      *(a1 + v34) = v33;
LABEL_111:

      --v6;
      goto LABEL_146;
    }

    if (v27 == 1)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_118;
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
      *(a1 + 96) |= 1u;
      while (1)
      {
        LOBYTE(v69) = 0;
        v51 = objc_msgSend_position(v3) + 1;
        if (v51 >= objc_msgSend_position(v3) && (v52 = objc_msgSend_position(v3) + 1, v52 <= [v3 length]))
        {
          v53 = [v3 data];
          [v53 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v50 |= (v69 & 0x7F) << v48;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v48 += 7;
        v24 = v49++ >= 9;
        if (v24)
        {
          v41 = 0;
          goto LABEL_131;
        }
      }

      if ([v3 hasError])
      {
        v41 = 0;
      }

      else
      {
        v41 = v50;
      }

LABEL_131:
      v58 = 84;
      goto LABEL_132;
    }

    if (v27 == 2)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_118;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 96) |= 2u;
      while (1)
      {
        LOBYTE(v69) = 0;
        v38 = objc_msgSend_position(v3) + 1;
        if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
        {
          v40 = [v3 data];
          [v40 getBytes:&v69 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v37 |= (v69 & 0x7F) << v35;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v24 = v36++ >= 9;
        if (v24)
        {
          v41 = 0;
          goto LABEL_123;
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

LABEL_123:
      v58 = 88;
LABEL_132:
      *(a1 + v58) = v41;
      goto LABEL_146;
    }

LABEL_112:
    if ((v66 & 1) == 0 || (*(a1 + 96) & 8) != 0)
    {
LABEL_118:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_149;
      }

      goto LABEL_146;
    }

    if (!*(a1 + 16))
    {
      v56 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v57 = *(a1 + 16);
      *(a1 + 16) = v56;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v65 = &OBJC_IVAR___GEOFormattedString__reader;
      goto LABEL_151;
    }

LABEL_146:
    if (!(BYTE4(v66) & 1 | (v6 != 0)))
    {
      goto LABEL_147;
    }
  }

  if (v27 <= 13)
  {
    if (v27 != 12)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_118;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      *(a1 + 96) |= 4u;
      while (1)
      {
        LOBYTE(v69) = 0;
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
        v24 = v43++ >= 9;
        if (v24)
        {
          v41 = 0;
          goto LABEL_127;
        }
      }

      if ([v3 hasError])
      {
        v41 = 0;
      }

      else
      {
        v41 = v44;
      }

LABEL_127:
      v58 = 92;
      goto LABEL_132;
    }

    if (!v28)
    {
      goto LABEL_118;
    }

    if ((*(a1 + 96) & 0x40) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_149;
      }

      v59 = *(a1 + 96) << 9;
      goto LABEL_145;
    }

    v69 = 0;
    v70 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_149;
    }

    v33 = objc_alloc_init(GEOPBTransitShield);
    if (!GEOPBTransitShieldReadAllFrom(v33, v3, v9 & 1))
    {
      goto LABEL_148;
    }

    PBReaderRecallMark();
    v34 = 40;
    goto LABEL_110;
  }

  if (v27 == 14)
  {
    if (!v28)
    {
      goto LABEL_118;
    }

    if ((*(a1 + 96) & 0x10) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_149;
      }

      v59 = *(a1 + 96) << 11;
      goto LABEL_145;
    }

    v54 = PBReaderReadString();
    v55 = *(a1 + 24);
    *(a1 + 24) = v54;
    goto LABEL_111;
  }

  if (v27 != 15)
  {
    if (v27 == 16)
    {
      if (!v28)
      {
        goto LABEL_118;
      }

      if ((*(a1 + 96) & 0x20) == 0)
      {
        v69 = 0;
        v70 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_149;
        }

        v33 = objc_alloc_init(GEOSFSymbol);
        if (!GEOSFSymbolReadAllFrom(v33, v3))
        {
          goto LABEL_148;
        }

        PBReaderRecallMark();
        v34 = 32;
        goto LABEL_110;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_149;
      }

      v59 = *(a1 + 96) << 10;
      goto LABEL_145;
    }

    goto LABEL_112;
  }

  if (!v28)
  {
    goto LABEL_118;
  }

  if ((*(a1 + 96) & 0x100) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_149;
    }

    v59 = *(a1 + 96) << 7;
    goto LABEL_145;
  }

  v69 = 0;
  v70 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_149;
  }

  v33 = objc_alloc_init(GEOSFSymbol);
  if (GEOSFSymbolReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v34 = 56;
    goto LABEL_110;
  }

LABEL_148:

LABEL_149:
  v26 = 0;
LABEL_150:
  v65 = &OBJC_IVAR___GEOFormattedString__reader;
  if ((v66 & 1) == 0)
  {
    goto LABEL_152;
  }

LABEL_151:
  *(a1 + v65[221]) |= 8u;
LABEL_152:
  if (v68 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v65[221]) |= 0x200u;
    *(a1 + v65[221]) |= 0x80u;
    *(a1 + v65[221]) |= 0x40u;
    *(a1 + v65[221]) |= 0x10u;
    *(a1 + v65[221]) |= 0x100u;
    *(a1 + v65[221]) |= 0x20u;
    goto LABEL_171;
  }

  if (v16)
  {
    while (1)
    {
LABEL_155:
      v61 = *v16++;
      v60 = v61;
      if (v61 > 13)
      {
        switch(v60)
        {
          case 14:
            v62 = 16;
            break;
          case 15:
            v62 = 256;
            break;
          case 16:
            v62 = 32;
            break;
          default:
            continue;
        }

        goto LABEL_169;
      }

      if (v60 > 10)
      {
        break;
      }

      if (v60 == 10)
      {
        v62 = 512;
LABEL_169:
        *(a1 + v65[221]) |= v62;
        continue;
      }

      if (!v60)
      {
        goto LABEL_171;
      }
    }

    if (v60 == 11)
    {
      v62 = 128;
    }

    else
    {
      if (v60 != 12)
      {
        goto LABEL_155;
      }

      v62 = 64;
    }

    goto LABEL_169;
  }

LABEL_171:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v68)
  {
    v63 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOLabelActionReadAllFrom(uint64_t a1, void *a2)
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
              v23 = &OBJC_IVAR___GEOLabelAction__detailTextAction;
              goto LABEL_48;
            }
          }

          v23 = &OBJC_IVAR___GEOLabelAction__detailTextAction;
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
          v23 = &OBJC_IVAR___GEOLabelAction__artworkAction;
          goto LABEL_48;
        }
      }

      v23 = &OBJC_IVAR___GEOLabelAction__artworkAction;
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

void *GEORouteInformationReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEORouteInformationReadAllFrom can only be called once per object"];
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
    v9 = &GEORouteInformationReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEORouteInformationReadAllFrom_initialTag;
  }

  Specified = GEORouteInformationReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEORouteInformationCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEORouteInformationReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16((*&vshl_u16(vdup_n_s16(*(a1 + 76)), 0xFFFBFFFCFFFEFFFDLL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 76) & 2) != 0) + (*(a1 + 76) & 1));
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
LABEL_93:
      v26 = 1;
      goto LABEL_96;
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
      goto LABEL_96;
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

    if (v27 > 2)
    {
      switch(v27)
      {
        case 3:
          if (!v28)
          {
            goto LABEL_79;
          }

          if ((*(a1 + 76) & 4) == 0)
          {
            v47 = 0;
            v48 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_95;
            }

            v35 = objc_alloc_init(GEOFormattedString);
            if (!GEOFormattedStringReadAllFrom(v35, v3, v9 & 1))
            {
              goto LABEL_94;
            }

            PBReaderRecallMark();
            v36 = 32;
            goto LABEL_71;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_95;
          }

          v39 = 32 * *(a1 + 76);
          break;
        case 4:
          if (!v28)
          {
            goto LABEL_79;
          }

          if ((*(a1 + 76) & 0x10) == 0)
          {
            v47 = 0;
            v48 = 0;
            if ((PBReaderPlaceMark() & 1) == 0)
            {
              goto LABEL_95;
            }

            v35 = objc_alloc_init(GEOFormattedString);
            if (!GEOFormattedStringReadAllFrom(v35, v3, v9 & 1))
            {
              goto LABEL_94;
            }

            PBReaderRecallMark();
            v36 = 48;
            goto LABEL_71;
          }

          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_95;
          }

          v39 = 8 * *(a1 + 76);
          break;
        case 5:
          if (!v28)
          {
            goto LABEL_79;
          }

          if ((*(a1 + 76) & 0x20) != 0)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_95;
            }

            v39 = 4 * *(a1 + 76);
            break;
          }

          v33 = PBReaderReadString();
          v34 = *(a1 + 56);
          *(a1 + 56) = v33;
          goto LABEL_72;
        default:
          goto LABEL_73;
      }

LABEL_91:
      v6 += v39 >> 7;
      goto LABEL_92;
    }

    if (v27 == 1)
    {
      break;
    }

    if (v27 == 2)
    {
      if (!v28)
      {
        goto LABEL_79;
      }

      if ((*(a1 + 76) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_95;
        }

        v39 = *(a1 + 76) << 6;
        goto LABEL_91;
      }

      v47 = 0;
      v48 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_95;
      }

      v35 = objc_alloc_init(GEOFormattedString);
      if (!GEOFormattedStringReadAllFrom(v35, v3, v9 & 1))
      {
        goto LABEL_94;
      }

      PBReaderRecallMark();
      v36 = 24;
LABEL_71:
      v34 = *(a1 + v36);
      *(a1 + v36) = v35;
LABEL_72:

      --v6;
      goto LABEL_92;
    }

LABEL_73:
    if (v44 & 1) == 0 || (*(a1 + 76))
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
      v37 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v38 = *(a1 + 16);
      *(a1 + 16) = v37;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      goto LABEL_97;
    }

LABEL_92:
    if (!(BYTE4(v44) & 1 | (v6 != 0)))
    {
      goto LABEL_93;
    }
  }

  if (!v28)
  {
    goto LABEL_79;
  }

  if ((*(a1 + 76) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_95;
    }

    v39 = 16 * *(a1 + 76);
    goto LABEL_91;
  }

  v47 = 0;
  v48 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_95;
  }

  v35 = objc_alloc_init(GEOFormattedString);
  if (GEOFormattedStringReadAllFrom(v35, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v36 = 40;
    goto LABEL_71;
  }

LABEL_94:

LABEL_95:
  v26 = 0;
LABEL_96:
  if ((v44 & 1) == 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 76) |= 1u;
LABEL_98:
  if (v46 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 76) |= 8u;
    *(a1 + 76) |= 2u;
    *(a1 + 76) |= 4u;
    *(a1 + 76) |= 0x10u;
    *(a1 + 76) |= 0x20u;
    goto LABEL_114;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v41 = *v16++;
        v40 = v41;
        if (v41 > 2)
        {
          break;
        }

        switch(v40)
        {
          case 1:
            LOBYTE(v40) = 8;
LABEL_113:
            *(a1 + 76) |= v40;
            continue;
          case 2:
            goto LABEL_113;
          case 0:
            goto LABEL_114;
        }
      }

      switch(v40)
      {
        case 3:
          LOBYTE(v40) = 4;
          break;
        case 4:
          LOBYTE(v40) = 16;
          break;
        case 5:
          LOBYTE(v40) = 32;
          break;
        default:
          continue;
      }

      goto LABEL_113;
    }
  }

LABEL_114:
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

void *GEOFormatArgumentReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 152));
  [v3 setLength:*(a1 + 148)];
  [v3 seekToOffset:*(a1 + 144)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 172);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBD870), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBD880), v13)), vandq_s8(vshlq_u32(v12, xmmword_187FBD890), v13))) + ((v11 >> 8) & 1) + ((v11 >> 4) & 1);
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

  v16 = v14 > 9;
  v88 = v9;
  v89 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  if ((v10 | v16 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v19 = objc_msgSend_position(v3);
  if (v19 >= [v3 length])
  {
LABEL_223:
    v28 = 1;
    goto LABEL_224;
  }

  v90 = v17 | v8;
  v91 = (v18 == 0) | v17;
  v92 = v17;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_223;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v93) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v93 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v93 & 0x7F) << v20;
      if ((v93 & 0x80) == 0)
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
    v17 = v92;
    if (v27)
    {
      goto LABEL_224;
    }

    v29 = v22 & 7;
    if (v29 == 4)
    {
      goto LABEL_224;
    }

    v30 = v22 >> 3;
    v31 = v92;
    if ((v91 & 1) == 0)
    {
      v32 = v18;
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

    switch(v30)
    {
      case 1:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 173) & 0x80) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 120;
          goto LABEL_91;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_251;
        }

        v76 = (*(a1 + 172) << 16) >> 31;
        goto LABEL_207;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_165;
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 172) |= 1u;
        while (1)
        {
          LOBYTE(v93) = 0;
          v50 = objc_msgSend_position(v3) + 1;
          if (v50 >= objc_msgSend_position(v3) && (v51 = objc_msgSend_position(v3) + 1, v51 <= [v3 length]))
          {
            v52 = [v3 data];
            [v52 getBytes:&v93 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v49 |= (v93 & 0x7F) << v47;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v26 = v48++ >= 9;
          if (v26)
          {
            v53 = 0;
            goto LABEL_170;
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

LABEL_170:
        v75 = 156;
        goto LABEL_183;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_165;
        }

        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 172) |= 2u;
        while (1)
        {
          LOBYTE(v93) = 0;
          v66 = objc_msgSend_position(v3) + 1;
          if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
          {
            v68 = [v3 data];
            [v68 getBytes:&v93 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v65 |= (v93 & 0x7F) << v63;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v26 = v64++ >= 9;
          if (v26)
          {
            v53 = 0;
            goto LABEL_178;
          }
        }

        if ([v3 hasError])
        {
          v53 = 0;
        }

        else
        {
          v53 = v65;
        }

LABEL_178:
        v75 = 160;
        goto LABEL_183;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_165;
        }

        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 172) |= 4u;
        while (1)
        {
          LOBYTE(v93) = 0;
          v58 = objc_msgSend_position(v3) + 1;
          if (v58 >= objc_msgSend_position(v3) && (v59 = objc_msgSend_position(v3) + 1, v59 <= [v3 length]))
          {
            v60 = [v3 data];
            [v60 getBytes:&v93 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v57 |= (v93 & 0x7F) << v55;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v26 = v56++ >= 9;
          if (v26)
          {
            v53 = 0;
            goto LABEL_174;
          }
        }

        if ([v3 hasError])
        {
          v53 = 0;
        }

        else
        {
          v53 = v57;
        }

LABEL_174:
        v75 = 164;
        goto LABEL_183;
      case 5:
        if (!v31 || (*(a1 + 172) & 0x20) != 0)
        {
          goto LABEL_165;
        }

        if (v29 == 2)
        {
          v93 = 0;
          v94 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_251;
          }

          while (1)
          {
            v40 = objc_msgSend_position(v3);
            if (v40 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              v95 = 0;
              v44 = objc_msgSend_position(v3) + 1;
              if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
              {
                v46 = [v3 data];
                [v46 getBytes:&v95 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v43 |= (v95 & 0x7F) << v41;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v26 = v42++ >= 9;
              if (v26)
              {
                goto LABEL_72;
              }
            }

            [v3 hasError];
LABEL_72:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          while (1)
          {
            LOBYTE(v93) = 0;
            v81 = objc_msgSend_position(v3) + 1;
            if (v81 >= objc_msgSend_position(v3) && (v82 = objc_msgSend_position(v3) + 1, v82 <= [v3 length]))
            {
              v83 = [v3 data];
              [v83 getBytes:&v93 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v80 |= (v93 & 0x7F) << v78;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v78 += 7;
            v26 = v79++ >= 9;
            if (v26)
            {
              goto LABEL_222;
            }
          }

          [v3 hasError];
LABEL_222:
          PBRepeatedUInt32Add();
        }

LABEL_184:
        v17 = v92;
        goto LABEL_208;
      case 6:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 174) & 2) == 0)
        {
          v36 = PBReaderReadString();
          v37 = 136;
LABEL_91:
          v54 = *(a1 + v37);
          *(a1 + v37) = v36;
          goto LABEL_149;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_251;
        }

        v76 = (*(a1 + 172) << 14) >> 31;
        goto LABEL_207;
      case 8:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 173) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 19) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOPrice);
        if (!GEOPriceReadAllFrom(v38, v3))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 96;
        goto LABEL_148;
      case 9:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 172) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 25) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOPBTransitArtwork);
        if (!GEOPBTransitArtworkReadAllFrom(v38, v3, v88 & 1))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 48;
        goto LABEL_148;
      case 10:
        if (!v31 || (*(a1 + 173) & 0x40) != 0)
        {
          goto LABEL_165;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOTimestampData);
        if (!GEOTimestampDataReadAllFrom(v38, v3, v88 & 1))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        [(GEOFormatArgument *)a1 _addNoFlagsTimestampData:v38];

        goto LABEL_208;
      case 11:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 172) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 24) >> 31;
LABEL_207:
          v6 += v76;
LABEL_208:
          if (!(v90 & 1 | (v6 != 0)))
          {
            goto LABEL_223;
          }

          v77 = objc_msgSend_position(v3);
          if (v77 >= [v3 length])
          {
            goto LABEL_223;
          }

          continue;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOCountdownData);
        if (GEOCountdownDataReadAllFrom(v38, v3, v88 & 1))
        {
          PBReaderRecallMark();
          v39 = 56;
LABEL_148:
          v54 = *(a1 + v39);
          *(a1 + v39) = v38;
LABEL_149:

          --v6;
          goto LABEL_208;
        }

LABEL_250:

LABEL_251:
        v28 = 0;
LABEL_224:
        if (v89)
        {
LABEL_225:
          *(a1 + 172) |= 0x10u;
        }

        if (v17 & 1 | ((v28 & 1) == 0))
        {
          *(a1 + 172) |= 0x8000u;
          *(a1 + 172) |= 0x20u;
          *(a1 + 172) |= 0x20000u;
          *(a1 + 172) |= 0x1000u;
          *(a1 + 172) |= 0x40u;
          *(a1 + 172) |= 0x4000u;
          *(a1 + 172) |= 0x80u;
          *(a1 + 172) |= 0x800u;
          *(a1 + 172) |= 0x400u;
          *(a1 + 172) |= 0x10000u;
          *(a1 + 172) |= 0x200u;
          *(a1 + 172) |= 0x2000u;
          *(a1 + 172) |= 0x100u;
        }

        else if (v18)
        {
          while (1)
          {
            v85 = *v18++;
            v84 = 0x8000;
            switch(v85)
            {
              case 0:
                goto LABEL_244;
              case 1:
                goto LABEL_242;
              case 5:
                v84 = 32;
                goto LABEL_242;
              case 6:
                v84 = 0x20000;
                goto LABEL_242;
              case 8:
                v84 = 4096;
                goto LABEL_242;
              case 9:
                v84 = 64;
                goto LABEL_242;
              case 10:
                v84 = 0x4000;
                goto LABEL_242;
              case 11:
                v84 = 128;
                goto LABEL_242;
              case 12:
                v84 = 2048;
                goto LABEL_242;
              case 13:
                v84 = 1024;
                goto LABEL_242;
              case 14:
                v84 = 0x10000;
                goto LABEL_242;
              case 15:
                v84 = 512;
                goto LABEL_242;
              case 16:
                v84 = 0x2000;
                goto LABEL_242;
              case 17:
                v84 = 256;
LABEL_242:
                *(a1 + 172) |= v84;
                break;
              default:
                continue;
            }
          }
        }

LABEL_244:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v17 & 1) == 0)
          {
            return v3;
          }

LABEL_248:
          v86 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v17)
          {
            goto LABEL_248;
          }
        }

        return v3;
      case 12:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 173) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 20) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEONumberData);
        if (!GEONumberDataReadAllFrom(v38, v3))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 88;
        goto LABEL_148;
      case 13:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 173) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 21) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOMeasurementData);
        if (!GEOMeasurementDataReadAllFrom(v38, v3))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 80;
        goto LABEL_148;
      case 14:
        if (!v31)
        {
          goto LABEL_165;
        }

        if (*(a1 + 174))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 15) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOURLData);
        if (!GEOURLDataReadAllFrom(v38, v3, v88 & 1))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 128;
        goto LABEL_148;
      case 15:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 173) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 22) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOManeuverData);
        if (!GEOManeuverDataReadAllFrom(v38, v3))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 72;
        goto LABEL_148;
      case 16:
        if (!v31)
        {
          goto LABEL_165;
        }

        if ((*(a1 + 173) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 18) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOGenericStringData);
        if (!GEOGenericStringDataReadAllFrom(v38, v3))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 104;
        goto LABEL_148;
      case 17:
        if (!v31)
        {
          goto LABEL_165;
        }

        if (*(a1 + 173))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }

          v76 = (*(a1 + 172) << 23) >> 31;
          goto LABEL_207;
        }

        v93 = 0;
        v94 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_251;
        }

        v38 = objc_alloc_init(GEOGenericCombinations);
        if (!GEOGenericCombinationsReadAllFrom(v38, v3, v88 & 1))
        {
          goto LABEL_250;
        }

        PBReaderRecallMark();
        v39 = 64;
        goto LABEL_148;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_165;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 172) |= 8u;
        while (1)
        {
          LOBYTE(v93) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v93 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v93 & 0x7F) << v69;
          if ((v93 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v26 = v70++ >= 9;
          if (v26)
          {
            v53 = 0;
            goto LABEL_182;
          }
        }

        if ([v3 hasError])
        {
          v53 = 0;
        }

        else
        {
          v53 = v71;
        }

LABEL_182:
        v75 = 168;
LABEL_183:
        *(a1 + v75) = v53;
        goto LABEL_184;
      default:
        if ((v89 & 1) == 0 || (*(a1 + 172) & 0x10) != 0)
        {
LABEL_165:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_251;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v61 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v62 = *(a1 + 16);
            *(a1 + 16) = v61;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_225;
          }
        }

        goto LABEL_208;
    }
  }
}

google::protobuf::UnknownFieldSet *maps::path_codec::geo3::RoutingPathLeg::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = maps::path_codec::geo3::RoutingPathPoint::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      this = maps::path_codec::geo3::RoutingPathLeg_MetaData::Clear(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v7);
  }

  return this;
}

uint64_t google::protobuf::internal::MergeFromImpl<false>(char *__src, int64_t __n, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v26 = 0x647FFFFFFFLL;
  v27 = 0x80000000;
  v28 = 0;
  v29 = 0;
  v4 = google::protobuf::internal::EpsCopyInputStream::InitFrom(v21, __src, __n);
  if ((*(*a3 + 88))(a3, v4, v21))
  {
    v5 = v25 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if ((*(*a3 + 48))(a3))
    {
      return 1;
    }

    v14 = 2;
    v15 = "/Library/Caches/com.apple.xbs/Sources/GeoServices/libprotobuf/src/google/protobuf/message_lite.cc";
    v16 = 133;
    memset(&v17, 0, sizeof(v17));
    memset(&v13, 0, sizeof(v13));
    std::string::append(&v13, "Can't ");
    std::string::append(&v13, "parse");
    std::string::append(&v13, " message of type ");
    (*(*a3 + 16))(&__p, a3);
    if ((v20 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19;
    }

    std::string::append(&v13, p_p, v8);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    std::string::append(&v13, " because it is missing required fields: ");
    (*(*a3 + 56))(&__p, a3);
    if ((v20 & 0x80u) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p;
    }

    if ((v20 & 0x80u) == 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = v19;
    }

    std::string::append(&v13, v9, v10);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::string::append(&v17, v11, size);
    google::protobuf::internal::LogFinisher::operator=(&v14);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1867EAD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

char *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(google::protobuf::internal::EpsCopyInputStream *this, const char **a2, int a3)
{
  v5 = *a2;
  if (*a2 < *this)
  {
    return 0;
  }

  __src[11] = v3;
  __src[12] = v4;
  v9 = *(this + 1);
  v10 = v5 - v9;
  v11 = *(this + 7);
  if (v11 != v10)
  {
    if (v11 < v10)
    {
      v9 = 0;
      result = 1;
    }

    else
    {
      v13 = this + 40;
      v14 = this + 56;
      v15 = *(this + 2);
      while (v15)
      {
        if (v15 == v13)
        {
          *v13 = *v9;
          if (*(this + 21) < 1)
          {
LABEL_55:
            if (*(this + 9) == 2)
            {
              *(this + 9) = *(this + 1) - v13;
            }

            v16 = 0;
            *(this + 1) = v14;
            *(this + 2) = 0;
            v9 = this + 56;
            v15 = this + 40;
            *(this + 6) = 0;
          }

          else
          {
            if ((a3 & 0x80000000) == 0 && v10 <= 15)
            {
              v17 = &v13[v10];
              v18 = a3;
              v19 = v17;
              do
              {
                v20 = *v19++;
                v21 = v20;
                if (v20 < 0)
                {
                  v21 = v21 + (*v19 << 7) - 128;
                  if (*v19 < 0)
                  {
                    v22 = 14;
                    v23 = 2;
                    while (1)
                    {
                      v21 += (v17[v23] - 1) << v22;
                      if ((v17[v23] & 0x80000000) == 0)
                      {
                        break;
                      }

                      ++v23;
                      v22 += 7;
                      if (v23 == 5)
                      {
                        goto LABEL_48;
                      }
                    }

                    v19 = &v17[v23 + 1];
                  }

                  else
                  {
                    v19 = v17 + 2;
                  }
                }

                if (v19 > v14)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_55;
                }

                v24 = v21 & 7;
                if (v24 > 2)
                {
                  switch(v24)
                  {
                    case 3:
                      ++v18;
                      break;
                    case 4:
                      v27 = __OFSUB__(v18--, 1);
                      if (v18 < 0 != v27)
                      {
                        goto LABEL_55;
                      }

                      break;
                    case 5:
                      v19 += 4;
                      break;
                    default:
                      goto LABEL_48;
                  }
                }

                else if (v24)
                {
                  if (v24 == 1)
                  {
                    v19 += 8;
                  }

                  else
                  {
                    v25 = *v19;
                    if (*v19 < 0)
                    {
                      SizeFallback = google::protobuf::internal::ReadSizeFallback(v19, v25);
                      if (!SizeFallback)
                      {
                        break;
                      }
                    }

                    else
                    {
                      SizeFallback = v19 + 1;
                    }

                    if (v14 - SizeFallback < v25)
                    {
                      break;
                    }

                    v19 = &SizeFallback[v25];
                  }
                }

                else
                {
                  __src[0] = 0;
                  v19 = google::protobuf::internal::VarintParse<unsigned long long>(v19, __src);
                  if (!v19)
                  {
                    break;
                  }
                }

                v17 = v19;
              }

              while (v19 < v14);
            }

LABEL_48:
            __src[0] = 0;
            while (1)
            {
              if (!(*(**(this + 4) + 16))(*(this + 4), __src, this + 24))
              {
                *(this + 21) = 0;
                goto LABEL_55;
              }

              v28 = *(this + 6);
              *(this + 21) -= v28;
              if (v28 >= 17)
              {
                break;
              }

              if (v28 >= 1)
              {
                memcpy(this + 56, __src[0], v28);
                v9 = &v13[v28];
                *(this + 1) = &v13[v28];
                *(this + 2) = v13;
                v16 = this + 40;
                if (*(this + 9) < 2uLL)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }

            v16 = __src[0];
            *v14 = *__src[0];
            *(this + 1) = v14;
            *(this + 2) = v16;
            v9 = this + 56;
            if (*(this + 9) <= 1uLL)
            {
              goto LABEL_60;
            }

LABEL_59:
            *(this + 9) = 1;
LABEL_60:
            v15 = this + 40;
          }
        }

        else
        {
          v9 = &v15[*(this + 6) - 16];
          *(this + 1) = v9;
          *(this + 2) = v13;
          if (*(this + 9) == 1)
          {
            *(this + 9) = 2;
          }

          v16 = this + 40;
        }

        v29 = *(this + 7) + v15 - v9;
        *(this + 7) = v29;
        v30 = &v15[v10];
        v15 = v16;
        v10 = v30 - v9;
        if (v30 - v9 < 0)
        {
          result = 0;
          *this = &v9[v29 & (v29 >> 31)];
          v9 = v30;
          goto LABEL_65;
        }
      }

      result = 1;
      if (v10)
      {
        v9 = 0;
      }

      else
      {
        *this = v9;
        *(this + 20) = 1;
      }
    }

    goto LABEL_65;
  }

  if (v10 < 1)
  {
    return 1;
  }

  v9 = *(this + 2);
  result = 1;
  if (!v9)
  {
LABEL_65:
    *a2 = v9;
  }

  return result;
}

char *google::protobuf::internal::ReadSizeFallback(google::protobuf::internal *this, const char *a2)
{
  v2 = 7;
  for (i = 1; i != 4; ++i)
  {
    LODWORD(a2) = ((*(this + i) - 1) << v2) + a2;
    if ((*(this + i) & 0x80000000) == 0)
    {
      return this + i + 1;
    }

    v2 += 7;
  }

  v4 = *(this + 4);
  v5 = this + 5;
  if (a2 + (v4 << 28) - 0x10000000 > 0x7FFFFFEF)
  {
    v5 = 0;
  }

  if (v4 <= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RoutingPathLeg_MetaData>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  *AlignedNoHook = &unk_1EF7F2E10;
  AlignedNoHook[1] = this;
  result = 0.0;
  *(AlignedNoHook + 1) = xmmword_187FBCF40;
  return result;
}

uint64_t maps::path_codec::geo3::RoutingPathLeg::IsInitialized(maps::path_codec::geo3::RoutingPathLeg *this)
{
  v1 = *(this + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(this + 5) + 8 * v1; (*(*i + 16) & 2) == 0 || (~*(*(*i + 32) + 16) & 3) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

google::protobuf::UnknownFieldSet *maps::path_codec::geo3::CompressedPath::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = maps::path_codec::geo3::CommonPointData::Clear(*(this + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = maps::path_codec::geo3::SupportPointData::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = maps::path_codec::geo3::AnchorData::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<google::protobuf::UnknownFieldSet>(v3);
  }

  return this;
}

google::protobuf::internal *maps::path_codec::geo3::CompressedPath::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v5 = 0;
  v44 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v44, *(this + 23)))
        {
          v6 = v44;
          goto LABEL_74;
        }

        v6 = (v44 + 1);
        v7 = *v44;
        if (*v44 < 0)
        {
          v7 = v7 + (*v6 << 7) - 128;
          if (*v6 < 0)
          {
            v8 = 14;
            v9 = 2;
            while (1)
            {
              v7 += (*(v44 + v9) - 1) << v8;
              if ((*(v44 + v9) & 0x80000000) == 0)
              {
                break;
              }

              ++v9;
              v8 += 7;
              if (v9 == 5)
              {
                goto LABEL_73;
              }
            }

            v6 = (v44 + v9 + 1);
          }

          else
          {
            v6 = (v44 + 2);
          }
        }

        v44 = v6;
        v10 = v7 >> 3;
        if (v7 >> 3 <= 2)
        {
          break;
        }

        if (v10 == 3)
        {
          if (v7 != 26)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 2u;
          v23 = *(a1 + 32);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::SupportPointData>(v24);
            *(a1 + 32) = v23;
          }

          v25 = *v6;
          if (*v6 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback(v6, v25);
            if (!SizeFallback)
            {
              goto LABEL_73;
            }

            v26 = SizeFallback;
          }

          else
          {
            v26 = (v6 + 1);
          }

          v39 = *(this + 1);
          v32 = v25 + v26 - v39;
          *this = v39 + (v32 & (v32 >> 31));
          v33 = *(this + 7);
          *(this + 7) = v32;
          LODWORD(v39) = *(this + 22);
          v34 = __OFSUB__(v39, 1);
          LODWORD(v39) = v39 - 1;
          *(this + 22) = v39;
          if (v39 < 0 != v34 || (v35 = maps::path_codec::geo3::SupportPointData::_InternalParse(v23, v26, this)) == 0)
          {
LABEL_73:
            v6 = 0;
            goto LABEL_74;
          }
        }

        else
        {
          if (v10 != 4 || v7 != 34)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::AnchorData>(v17);
            *(a1 + 40) = v16;
          }

          v18 = *v6;
          if (*v6 < 0)
          {
            v30 = google::protobuf::internal::ReadSizeFallback(v6, v18);
            if (!v30)
            {
              goto LABEL_73;
            }

            v19 = v30;
          }

          else
          {
            v19 = (v6 + 1);
          }

          v31 = *(this + 1);
          v32 = v18 + v19 - v31;
          *this = v31 + (v32 & (v32 >> 31));
          v33 = *(this + 7);
          *(this + 7) = v32;
          LODWORD(v31) = *(this + 22);
          v34 = __OFSUB__(v31, 1);
          LODWORD(v31) = v31 - 1;
          *(this + 22) = v31;
          if (v31 < 0 != v34)
          {
            goto LABEL_73;
          }

          v35 = maps::path_codec::geo3::AnchorData::_InternalParse(v16, v19, this);
          if (!v35)
          {
            goto LABEL_73;
          }
        }

LABEL_67:
        ++*(this + 22);
        if (*(this + 20))
        {
          goto LABEL_73;
        }

        v40 = *(this + 7) + v33 - v32;
        *(this + 7) = v40;
        *this = *(this + 1) + (v40 & (v40 >> 31));
        v44 = v35;
      }

      if (v10 != 1)
      {
        break;
      }

      if (v7 != 8)
      {
        goto LABEL_45;
      }

      v20 = (v6 + 1);
      LODWORD(v21) = *v6;
      if (*v6 < 0)
      {
        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v6 + 2);
          goto LABEL_37;
        }

        v41 = google::protobuf::internal::VarintParseSlow32(v6, v21);
        v44 = v41;
        *(a1 + 48) = v42;
        v5 = 8;
        if (!v41)
        {
          goto LABEL_73;
        }
      }

      else
      {
LABEL_37:
        v44 = v20;
        *(a1 + 48) = v21;
        v5 = 8;
      }
    }

    if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 24);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::CommonPointData>(v13);
        *(a1 + 24) = v12;
      }

      v14 = *v6;
      if (*v6 < 0)
      {
        v36 = google::protobuf::internal::ReadSizeFallback(v6, v14);
        if (!v36)
        {
          goto LABEL_73;
        }

        v15 = v36;
      }

      else
      {
        v15 = (v6 + 1);
      }

      v37 = *(this + 1);
      v32 = v14 + v15 - v37;
      *this = v37 + (v32 & (v32 >> 31));
      v33 = *(this + 7);
      *(this + 7) = v32;
      LODWORD(v37) = *(this + 22);
      v34 = __OFSUB__(v37, 1);
      LODWORD(v37) = v37 - 1;
      *(this + 22) = v37;
      if (v37 < 0 != v34)
      {
        goto LABEL_73;
      }

      v35 = maps::path_codec::geo3::CommonPointData::_InternalParse(v12, v15, this);
      if (!v35)
      {
        goto LABEL_73;
      }

      goto LABEL_67;
    }

LABEL_45:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = (v28 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v29 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
    }

    v45 = v29;
    v44 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v7, &v45, v6, this);
    if (!v44)
    {
      goto LABEL_73;
    }
  }

  *(this + 20) = v7 - 1;
LABEL_74:
  *(a1 + 16) |= v5;
  return v6;
}

maps::path_codec::geo3::RiceEncodedIntegers *google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::RiceEncodedIntegers>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  maps::path_codec::geo3::RiceEncodedIntegers::RiceEncodedIntegers(AlignedNoHook, this);
  return AlignedNoHook;
}

google::protobuf::internal *maps::path_codec::geo3::RiceEncodedIntegers::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v5 = 0;
  v38 = a2;
  do
  {
    while (1)
    {
      while (1)
      {
        if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v38, *(this + 23)))
        {
          v6 = v38;
          goto LABEL_73;
        }

        v6 = (v38 + 1);
        v7 = *v38;
        if (*v38 < 0)
        {
          v7 = v7 + (*v6 << 7) - 128;
          if (*v6 < 0)
          {
            v8 = 14;
            v9 = 2;
            while (1)
            {
              v7 += (*(v38 + v9) - 1) << v8;
              if ((*(v38 + v9) & 0x80000000) == 0)
              {
                break;
              }

              ++v9;
              v8 += 7;
              if (v9 == 5)
              {
                goto LABEL_75;
              }
            }

            v6 = (v38 + v9 + 1);
          }

          else
          {
            v6 = (v38 + 2);
          }
        }

        v38 = v6;
        v10 = v7 >> 3;
        if (v7 >> 3 <= 2)
        {
          break;
        }

        if (v10 == 3)
        {
          if (v7 == 26)
          {
            v14 = google::protobuf::internal::PackedUInt32Parser((a1 + 24), v6, this);
            goto LABEL_59;
          }

          if (v7 != 24)
          {
            goto LABEL_52;
          }

          v26 = (v6 + 1);
          v27 = *v6;
          if (*v6 < 0)
          {
            v28 = v27 + (*v26 << 7);
            v27 = v28 - 128;
            if (*v26 < 0)
            {
              v26 = google::protobuf::internal::VarintParseSlow32(v6, (v28 - 128));
              v27 = v34;
            }

            else
            {
              v26 = (v6 + 2);
            }
          }

          v38 = v26;
          v35 = *(a1 + 24);
          if (v35 == *(a1 + 28))
          {
            v36 = v35 + 1;
            google::protobuf::RepeatedField<int>::Reserve((a1 + 24), v35 + 1);
            *(*(a1 + 32) + 4 * v35) = v27;
          }

          else
          {
            *(*(a1 + 32) + 4 * v35) = v27;
            v36 = v35 + 1;
          }

          *(a1 + 24) = v36;
          if (!v26)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v10 != 4 || v7 != 32)
          {
            goto LABEL_52;
          }

          v15 = (v6 + 1);
          v16 = *v6;
          if ((v16 & 0x8000000000000000) != 0)
          {
            v17 = *v15;
            v16 = v16 & 0x7F | (v17 << 7);
            if (v17 < 0)
            {
              v22 = 14;
              v23 = 2;
              while (1)
              {
                v16 += (*(v6 + v23) - 1) << v22;
                if ((*(v6 + v23) & 0x80000000) == 0)
                {
                  break;
                }

                ++v23;
                v22 += 7;
                if (v23 == 10)
                {
                  goto LABEL_75;
                }
              }

              v15 = (v6 + v23 + 1);
            }

            else
            {
              v15 = (v6 + 2);
            }
          }

          v38 = v15;
          if (v16 > 2)
          {
            v32 = *(a1 + 8);
            if (v32)
            {
              v33 = (v32 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v33 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
            }

            *&v39 = 4;
            *(&v39 + 1) = v16;
            std::vector<google::protobuf::UnknownField>::push_back[abi:ne200100](v33, &v39);
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 60) = v16;
          }
        }
      }

      if (v10 == 1)
      {
        break;
      }

      if (v10 != 2 || v7 != 18)
      {
LABEL_52:
        if (v7)
        {
          v29 = (v7 & 7) == 4;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          *(this + 20) = v7 - 1;
          goto LABEL_73;
        }

        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v31 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<google::protobuf::UnknownFieldSet>((a1 + 8));
        }

        *&v39 = v31;
        v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldParserHelper>(v7, &v39, v6, this);
        goto LABEL_59;
      }

      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 48), v12);
      v14 = google::protobuf::internal::InlineGreedyStringParser(v13, v6, this);
LABEL_59:
      v38 = v14;
      if (!v14)
      {
        goto LABEL_75;
      }
    }

    if (v7 != 8)
    {
      goto LABEL_52;
    }

    v18 = (v6 + 1);
    v19 = *v6;
    if (v19 < 0)
    {
      v20 = *v18;
      v21 = v19 & 0x7F | (v20 << 7);
      if (v20 < 0)
      {
        v24 = 14;
        v25 = 2;
        while (1)
        {
          v21 += (*(v6 + v25) - 1) << v24;
          if ((*(v6 + v25) & 0x80000000) == 0)
          {
            break;
          }

          LODWORD(v19) = 0;
          v18 = 0;
          ++v25;
          v24 += 7;
          if (v25 == 10)
          {
            goto LABEL_46;
          }
        }

        v18 = (v6 + v25 + 1);
      }

      else
      {
        v18 = (v6 + 2);
      }

      LODWORD(v19) = v21;
    }

LABEL_46:
    v38 = v18;
    *(a1 + 56) = -(v19 & 1) ^ (v19 >> 1);
    v5 = 2;
  }

  while (v18);
LABEL_75:
  v6 = 0;
LABEL_73:
  *(a1 + 16) |= v5;
  return v6;
}

const std::string::value_type *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  v5 = __s;
  v6 = a3;
  if (*(a1 + 8) - __s + 16 >= a3)
  {
    MEMORY[0x18CFD1A70](this, __s, a3);
    return &v5[v6];
  }

  else
  {
    v7 = a3;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    v10 = *(a1 + 8);
    if (v10 - __s + *(a1 + 28) >= a3)
    {
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((size & 0x8000000000000000) != 0)
      {
        size = this->__r_.__value_.__l.__size_;
      }

      if (a3 >= 50000000)
      {
        v12 = 50000000;
      }

      else
      {
        v12 = a3;
      }

      std::string::reserve(this, size + v12);
      v10 = *(a1 + 8);
    }

    v13 = v10 - v5 + 16;
    while (*(a1 + 16))
    {
      std::string::append(this, v5, v13);
      if (*(a1 + 28) < 17)
      {
        break;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v7 -= v13;
      v5 = result + 16;
      v13 = *(a1 + 8) - result;
      if (v7 <= v13)
      {
        std::string::append(this, v5, v7);
        return &v5[v7];
      }
    }

    return 0;
  }
}

char *google::protobuf::internal::PackedUInt32Parser(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a3 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v13 = &result[v5];
        result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a1);
        if (v13 != result)
        {
          return 0;
        }

        return result;
      }

      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v8, a1);
      if (!result)
      {
        return result;
      }

      v10 = *(a3 + 8);
      v11 = result - v10;
      v12 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a3 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a3);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v11;
      result += v11;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v10;
    if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v14 + v11, &v14 + v12, a1) != &v14 + v12)
    {
      return 0;
    }

    return (*(a3 + 8) + v12);
  }

  return result;
}

char *google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      v5 = 2;
      v6 = 14;
      while (1)
      {
        v4 += (a1[v5] - 1) << v6;
        if ((a1[v5] & 0x80000000) == 0)
        {
          break;
        }

        ++v5;
        v6 += 7;
        if (v5 == 10)
        {
          result = 0;
          v4 = 0;
          goto LABEL_10;
        }
      }

      result = &a1[v5 + 1];
LABEL_10:
      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

maps::path_codec::geo3::SupportPointData *google::protobuf::Arena::CreateMaybeMessage<maps::path_codec::geo3::SupportPointData>(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 24))
  {
  }

  AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(this, 0x130uLL);
  maps::path_codec::geo3::SupportPointData::SupportPointData(AlignedNoHook, this);
  return AlignedNoHook;
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, unsigned int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(*(a3 + 1) + 8 * v7) = v6;
    }

    else
    {
      *(*(a3 + 1) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::PackedSInt64Parser(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a3 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v13 = &result[v5];
        result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a1);
        if (v13 != result)
        {
          return 0;
        }

        return result;
      }

      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v8, a1);
      if (!result)
      {
        return result;
      }

      v10 = *(a3 + 8);
      v11 = result - v10;
      v12 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a3 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a3);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v11;
      result += v11;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v10;
    if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v14 + v11, &v14 + v12, a1) != &v14 + v12)
    {
      return 0;
    }

    return (*(a3 + 8) + v12);
  }

  return result;
}

char *google::protobuf::internal::PackedSInt32Parser(unsigned int *a1, google::protobuf::internal *this, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = this + 1;
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a3 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v13 = &result[v5];
        result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a1);
        if (v13 != result)
        {
          return 0;
        }

        return result;
      }

      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v8, a1);
      if (!result)
      {
        return result;
      }

      v10 = *(a3 + 8);
      v11 = result - v10;
      v12 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a3 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a3);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v11;
      result += v11;
    }

    v16 = 0;
    v15 = 0;
    v14 = *v10;
    if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v14 + v11, &v14 + v12, a1) != &v14 + v12)
    {
      return 0;
    }

    return (*(a3 + 8) + v12);
  }

  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

uint64_t maps::path_codec::BitStream::read_rice(maps::path_codec::BitStream *this, unsigned int a2)
{
  v4 = -1;
  do
  {
    ++v4;
  }

  while (maps::path_codec::BitStream::read(this, 1u));
  return maps::path_codec::BitStream::read(this, a2) + (v4 << a2);
}

void maps::path_codec::geo3::CompressedPath::~CompressedPath(maps::path_codec::geo3::CompressedPath *this)
{
  if (this != &maps::path_codec::geo3::_CompressedPath_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      maps::path_codec::geo3::CommonPointData::~CommonPointData(v2);
      MEMORY[0x18CFD1E40]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      maps::path_codec::geo3::SupportPointData::~SupportPointData(v3);
      MEMORY[0x18CFD1E40]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      maps::path_codec::geo3::AnchorData::~AnchorData(v4);
      MEMORY[0x18CFD1E40]();
    }
  }

  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<maps::path_codec::geo3::UUID>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(v5 + 8));
          MEMORY[0x18CFD1E40](v5, 0x1081C40825B58B5);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void std::vector<GEOLocationCoordinate3D>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate3D>>(a2);
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate3D>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<double>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<zilch::StringList::Entry>>(a2);
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<GEOLocationCoordinate3D>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate3D>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

void *std::vector<GEOLocationCoordinate3D>::__assign_with_size[abi:ne200100]<GEOLocationCoordinate3D*,GEOLocationCoordinate3D*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<GEOLocationCoordinate3D>>(v11);
      }
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<zilch::StringList::Entry>>(a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void maps::path_codec::geo3::RoutingPathLeg::~RoutingPathLeg(maps::path_codec::geo3::RoutingPathLeg *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x18CFD1E40](v2, 0x1012C40EC159624);
  }

  if (this != &maps::path_codec::geo3::_RoutingPathLeg_default_instance_)
  {
    v3 = *(this + 7);
    if (v3)
    {
      google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(v3 + 8));
      MEMORY[0x18CFD1E40](v3, 0x1081C404FE48876);
    }
  }

  google::protobuf::internal::InternalMetadata::Delete<google::protobuf::UnknownFieldSet>(*(this + 1));
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<maps::path_codec::geo3::RoutingPathPoint>::TypeHandler>(this + 3);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<maps::path_codec::geo3::RoutingPathPoint>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          maps::path_codec::geo3::RoutingPathPoint::~RoutingPathPoint(*v3);
          MEMORY[0x18CFD1E40]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void *GEOStepReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 164))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOStepReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 168));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 160) = objc_msgSend_position(v8);
  *(a1 + 164) = [v8 length];
  if (a3)
  {
    v9 = &GEOStepReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOStepReadAllFrom_initialTag;
  }

  Specified = GEOStepReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOStepCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 168));
  return Specified;
}

void *GEOStepReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 168));
  [v3 setLength:*(a1 + 164)];
  [v3 seekToOffset:*(a1 + 160)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 248);
  v12 = vdupq_n_s64(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD9C0), vshlq_u64(v12, xmmword_187FBD9B0)), v13), (*&vshlq_u32(vdupq_n_s32(v11), xmmword_187FBD9D0) & __PAIR128__(0xFFFFFFC1FFFFFFC1, 0xFFFFFFC1FFFFFFC1)))) + ((v11 >> 25) & 1) + ((v11 >> 34) & 1) + ((v11 >> 37) & 1) + ((v11 >> 30) & 1) + ((v11 >> 38) & 1) + ((v11 >> 36) & 1) + (BYTE3(v11) & 1) + (v11 >> 31);
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

  v16 = v14 > 0xB;
  v193 = v9;
  v194 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  v195 = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v196 = (v18 == 0) | v17;
  v197 = v17;
  while (2)
  {
    v19 = objc_msgSend_position(v3);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_465:
      v28 = 1;
      goto LABEL_466;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v198) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v198 & 0x7F) << v20;
      if ((v198 & 0x80) == 0)
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
      goto LABEL_466;
    }

    v29 = v22 >> 3;
    v30 = v197;
    if ((v196 & 1) == 0)
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
          goto LABEL_358;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 248) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v198 & 0x7F) << v35;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v26 = v36++ >= 9;
          if (v26)
          {
            v41 = 0;
LABEL_381:
            v184 = 232;
            goto LABEL_432;
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

        goto LABEL_381;
      case 2:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v95 = 0;
        v96 = 0;
        v97 = 0;
        *(a1 + 248) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v98 = objc_msgSend_position(v3) + 1;
          if (v98 >= objc_msgSend_position(v3) && (v99 = objc_msgSend_position(v3) + 1, v99 <= [v3 length]))
          {
            v100 = [v3 data];
            [v100 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v97 |= (v198 & 0x7F) << v95;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v26 = v96++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_395;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v97;
        }

LABEL_395:
        v184 = 204;
        goto LABEL_432;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 248) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v104 = objc_msgSend_position(v3) + 1;
          if (v104 >= objc_msgSend_position(v3) && (v105 = objc_msgSend_position(v3) + 1, v105 <= [v3 length]))
          {
            v106 = [v3 data];
            [v106 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v103 |= (v198 & 0x7F) << v101;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v26 = v102++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_399;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v103;
        }

LABEL_399:
        v184 = 212;
        goto LABEL_432;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 248) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v124 = objc_msgSend_position(v3) + 1;
          if (v124 >= objc_msgSend_position(v3) && (v125 = objc_msgSend_position(v3) + 1, v125 <= [v3 length]))
          {
            v126 = [v3 data];
            [v126 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v123 |= (v198 & 0x7F) << v121;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v26 = v122++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_411;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v123;
        }

LABEL_411:
        v184 = 208;
        goto LABEL_432;
      case 5:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 248) |= 8uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v110 = objc_msgSend_position(v3) + 1;
          if (v110 >= objc_msgSend_position(v3) && (v111 = objc_msgSend_position(v3) + 1, v111 <= [v3 length]))
          {
            v112 = [v3 data];
            [v112 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v109 |= (v198 & 0x7F) << v107;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v26 = v108++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_403;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v109;
        }

LABEL_403:
        v184 = 184;
        goto LABEL_432;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 248) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v118 = objc_msgSend_position(v3) + 1;
          if (v118 >= objc_msgSend_position(v3) && (v119 = objc_msgSend_position(v3) + 1, v119 <= [v3 length]))
          {
            v120 = [v3 data];
            [v120 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v117 |= (v198 & 0x7F) << v115;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v26 = v116++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_407;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v117;
        }

LABEL_407:
        v184 = 188;
        goto LABEL_432;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v147 = 0;
        v148 = 0;
        v149 = 0;
        *(a1 + 248) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v150 = objc_msgSend_position(v3) + 1;
          if (v150 >= objc_msgSend_position(v3) && (v151 = objc_msgSend_position(v3) + 1, v151 <= [v3 length]))
          {
            v152 = [v3 data];
            [v152 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v149 |= (v198 & 0x7F) << v147;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v26 = v148++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_425;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v149;
        }

LABEL_425:
        v184 = 216;
        goto LABEL_432;
      case 8:
        if (!v30 || (*(a1 + 252) & 4) != 0)
        {
          goto LABEL_358;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEONameInfoList);
        if (!GEONameInfoListReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        [(GEOStep *)a1 _addNoFlagsManeuverName:v42];
        goto LABEL_357;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v71 = 0;
        v72 = 0;
        v73 = 0;
        *(a1 + 248) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v74 = objc_msgSend_position(v3) + 1;
          if (v74 >= objc_msgSend_position(v3) && (v75 = objc_msgSend_position(v3) + 1, v75 <= [v3 length]))
          {
            v76 = [v3 data];
            [v76 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v73 |= (v198 & 0x7F) << v71;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v71 += 7;
          v26 = v72++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_377;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v73;
        }

LABEL_377:
        v184 = 196;
        goto LABEL_432;
      case 11:
        if (!v30 || (*(a1 + 251) & 2) != 0)
        {
          goto LABEL_358;
        }

        v198 = 0;
        v199 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_517;
        }

        [(GEOStep *)a1 _reserveJunctionElements:?];
        if ((GEOJunctionElementReadAllFrom(*(a1 + 24) + 16 * *(a1 + 32), v3) & 1) == 0)
        {
          goto LABEL_517;
        }

        PBReaderRecallMark();
        ++*(a1 + 32);
        goto LABEL_461;
      case 12:
        if (!v30 || (*(a1 + 252) & 0x20) != 0)
        {
          goto LABEL_358;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEONameInfo);
        if (!GEONameInfoReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        [(GEOStep *)a1 _addNoFlagsSignpost:v42];
        goto LABEL_357;
      case 13:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        *(a1 + 248) |= 4uLL;
        LODWORD(v198) = 0;
        v113 = objc_msgSend_position(v3) + 4;
        if (v113 >= objc_msgSend_position(v3) && (v114 = objc_msgSend_position(v3) + 4, v114 <= [v3 length]))
        {
          v187 = [v3 data];
          [v187 getBytes:&v198 range:{objc_msgSend_position(v3), 4}];

          [v3 setPosition:objc_msgSend_position(v3) + 4];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 180) = v198;
        goto LABEL_461;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 248) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v80 = objc_msgSend_position(v3) + 1;
          if (v80 >= objc_msgSend_position(v3) && (v81 = objc_msgSend_position(v3) + 1, v81 <= [v3 length]))
          {
            v82 = [v3 data];
            [v82 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v79 |= (v198 & 0x7F) << v77;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v26 = v78++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_385;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v79;
        }

LABEL_385:
        v184 = 192;
        goto LABEL_432;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 248) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v68 = objc_msgSend_position(v3) + 1;
          if (v68 >= objc_msgSend_position(v3) && (v69 = objc_msgSend_position(v3) + 1, v69 <= [v3 length]))
          {
            v70 = [v3 data];
            [v70 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v67 |= (v198 & 0x7F) << v65;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v26 = v66++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_373;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v67;
        }

LABEL_373:
        v184 = 228;
        goto LABEL_432;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v141 = 0;
        v142 = 0;
        v143 = 0;
        *(a1 + 248) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v144 = objc_msgSend_position(v3) + 1;
          if (v144 >= objc_msgSend_position(v3) && (v145 = objc_msgSend_position(v3) + 1, v145 <= [v3 length]))
          {
            v146 = [v3 data];
            [v146 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v143 |= (v198 & 0x7F) << v141;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v26 = v142++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_421;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v143;
        }

LABEL_421:
        v184 = 224;
        goto LABEL_432;
      case 19:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 251) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 33;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEONameInfo);
        if (!GEONameInfoReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 80;
        goto LABEL_291;
      case 20:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 248) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v169 = objc_msgSend_position(v3) + 1;
          if (v169 >= objc_msgSend_position(v3) && (v170 = objc_msgSend_position(v3) + 1, v170 <= [v3 length]))
          {
            v171 = [v3 data];
            [v171 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v168 |= (v198 & 0x7F) << v166;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v26 = v167++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_434;
          }
        }

        v62 = (v168 != 0) & ~[v3 hasError];
LABEL_434:
        v185 = 246;
        goto LABEL_439;
      case 21:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 248) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v157 = objc_msgSend_position(v3) + 1;
          if (v157 >= objc_msgSend_position(v3) && (v158 = objc_msgSend_position(v3) + 1, v158 <= [v3 length]))
          {
            v159 = [v3 data];
            [v159 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v156 |= (v198 & 0x7F) << v154;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v26 = v155++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_427;
          }
        }

        v62 = (v156 != 0) & ~[v3 hasError];
LABEL_427:
        v185 = 245;
        goto LABEL_439;
      case 22:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 248) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v198 & 0x7F) << v56;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v26 = v57++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_369;
          }
        }

        v62 = (v58 != 0) & ~[v3 hasError];
LABEL_369:
        v185 = 240;
        goto LABEL_439;
      case 24:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v83 = 0;
        v84 = 0;
        v85 = 0;
        *(a1 + 248) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v86 = objc_msgSend_position(v3) + 1;
          if (v86 >= objc_msgSend_position(v3) && (v87 = objc_msgSend_position(v3) + 1, v87 <= [v3 length]))
          {
            v88 = [v3 data];
            [v88 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v85 |= (v198 & 0x7F) << v83;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v26 = v84++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_387;
          }
        }

        v62 = (v85 != 0) & ~[v3 hasError];
LABEL_387:
        v185 = 244;
        goto LABEL_439;
      case 30:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 252) & 2) == 0)
        {
          v63 = PBReaderReadString();
          v64 = 104;
LABEL_330:
          v153 = *(a1 + v64);
          *(a1 + v64) = v63;
          goto LABEL_331;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_517;
        }

        v186 = *(a1 + 248) << 30;
        goto LABEL_460;
      case 31:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 252) & 8) == 0)
        {
          v63 = PBReaderReadString();
          v64 = 120;
          goto LABEL_330;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_517;
        }

        v186 = *(a1 + 248) << 28;
        goto LABEL_460;
      case 32:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 252) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 24;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOTimeCheckpoints);
        if (!GEOTimeCheckpointsReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 152;
        goto LABEL_291;
      case 33:
        if (!v30)
        {
          goto LABEL_358;
        }

        if (*(a1 + 252))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 31;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOInstructionSet);
        if (!GEOInstructionSetReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 96;
        goto LABEL_291;
      case 34:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 248) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v130 = objc_msgSend_position(v3) + 1;
          if (v130 >= objc_msgSend_position(v3) && (v131 = objc_msgSend_position(v3) + 1, v131 <= [v3 length]))
          {
            v132 = [v3 data];
            [v132 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v129 |= (v198 & 0x7F) << v127;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v26 = v128++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_413;
          }
        }

        v62 = (v129 != 0) & ~[v3 hasError];
LABEL_413:
        v185 = 242;
        goto LABEL_439;
      case 35:
        if (!v30 || (*(a1 + 251) & 0x80) != 0)
        {
          goto LABEL_358;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOGuidanceEvent);
        if (!GEOGuidanceEventReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        [(GEOStep *)a1 _addNoFlagsGuidanceEvent:v42];
        goto LABEL_357;
      case 36:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v178 = 0;
        v179 = 0;
        v180 = 0;
        *(a1 + 248) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v181 = objc_msgSend_position(v3) + 1;
          if (v181 >= objc_msgSend_position(v3) && (v182 = objc_msgSend_position(v3) + 1, v182 <= [v3 length]))
          {
            v183 = [v3 data];
            [v183 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v180 |= (v198 & 0x7F) << v178;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v178 += 7;
          v26 = v179++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_438;
          }
        }

        v62 = (v180 != 0) & ~[v3 hasError];
LABEL_438:
        v185 = 243;
        goto LABEL_439;
      case 37:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 248) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v175 = objc_msgSend_position(v3) + 1;
          if (v175 >= objc_msgSend_position(v3) && (v176 = objc_msgSend_position(v3) + 1, v176 <= [v3 length]))
          {
            v177 = [v3 data];
            [v177 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v174 |= (v198 & 0x7F) << v172;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v26 = v173++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_436;
          }
        }

        v62 = (v174 != 0) & ~[v3 hasError];
LABEL_436:
        v185 = 241;
LABEL_439:
        *(a1 + v185) = v62;
        goto LABEL_461;
      case 38:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 251) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 34;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOEVStateInfo);
        if (!GEOEVStateInfoReadAllFrom(v42, v3))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 72;
        goto LABEL_291;
      case 41:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 251) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 35;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOEVStepInfo);
        if (!GEOEVStepInfoReadAllFrom(v42, v3))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 64;
        goto LABEL_291;
      case 42:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 251) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 36;
LABEL_460:
          v6 += v186 >> 63;
          goto LABEL_461;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOEVChargeInfo);
        if (GEOEVChargeInfoReadAllFrom(v42, v3))
        {
          PBReaderRecallMark();
          v43 = 56;
LABEL_291:
          v153 = *(a1 + v43);
          *(a1 + v43) = v42;
LABEL_331:

          --v6;
LABEL_461:
          if (!(v195 & 1 | (v6 != 0)))
          {
            goto LABEL_465;
          }

          continue;
        }

LABEL_516:

LABEL_517:
        v28 = 0;
LABEL_466:
        if (v194)
        {
LABEL_467:
          *(a1 + 248) |= 0x1000000uLL;
        }

        if (v197 || (v28 & 1) == 0)
        {
          *(a1 + 248) |= 0xFFFE000000uLL;
          goto LABEL_510;
        }

        if (v18)
        {
          while (1)
          {
LABEL_471:
            v189 = *v18++;
            v188 = v189;
            if (v189 > 32)
            {
              if (v188 > 41)
              {
                if (v188 > 44)
                {
                  if (v188 == 45)
                  {
                    v190 = 0x4000000000;
                  }

                  else
                  {
                    if (v188 != 47)
                    {
                      continue;
                    }

                    v190 = 0x1000000000;
                  }
                }

                else if (v188 == 42)
                {
                  v190 = 0x8000000;
                }

                else
                {
                  if (v188 != 44)
                  {
                    continue;
                  }

                  v190 = 0x4000000;
                }
              }

              else if (v188 > 37)
              {
                if (v188 == 38)
                {
                  v190 = 0x20000000;
                }

                else
                {
                  if (v188 != 41)
                  {
                    continue;
                  }

                  v190 = 0x10000000;
                }
              }

              else if (v188 == 33)
              {
                v190 = 0x100000000;
              }

              else
              {
                if (v188 != 35)
                {
                  continue;
                }

                v190 = 0x80000000;
              }

              goto LABEL_508;
            }

            if (v188 > 18)
            {
              if (v188 > 30)
              {
                if (v188 == 31)
                {
                  v190 = 0x800000000;
                }

                else
                {
                  if (v188 != 32)
                  {
                    continue;
                  }

                  v190 = 0x8000000000;
                }
              }

              else if (v188 == 19)
              {
                v190 = 0x40000000;
              }

              else
              {
                if (v188 != 30)
                {
                  continue;
                }

                v190 = 0x200000000;
              }

              goto LABEL_508;
            }

            if (v188 > 10)
            {
              break;
            }

            if (v188 == 8)
            {
              v190 = 0x400000000;
LABEL_508:
              *(a1 + 248) |= v190;
              continue;
            }

            if (!v188)
            {
              goto LABEL_510;
            }
          }

          if (v188 == 11)
          {
            v190 = 0x2000000;
          }

          else
          {
            if (v188 != 12)
            {
              goto LABEL_471;
            }

            v190 = 0x2000000000;
          }

          goto LABEL_508;
        }

LABEL_510:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v197)
        {
          v191 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 43:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        *(a1 + 248) |= 1uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v92 = objc_msgSend_position(v3) + 1;
          if (v92 >= objc_msgSend_position(v3) && (v93 = objc_msgSend_position(v3) + 1, v93 <= [v3 length]))
          {
            v94 = [v3 data];
            [v94 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v91 |= (v198 & 0x7F) << v89;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v89 += 7;
          v26 = v90++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_391;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v91;
        }

LABEL_391:
        v184 = 172;
        goto LABEL_432;
      case 44:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 251) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 37;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOPBTransitArtwork);
        if (!GEOPBTransitArtworkReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 48;
        goto LABEL_291;
      case 45:
        if (!v30)
        {
          goto LABEL_358;
        }

        if ((*(a1 + 252) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }

          v186 = *(a1 + 248) << 25;
          goto LABEL_460;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEOStopWaypoint);
        if (!GEOStopWaypointReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        v43 = 144;
        goto LABEL_291;
      case 46:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 248) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v163 = objc_msgSend_position(v3) + 1;
          if (v163 >= objc_msgSend_position(v3) && (v164 = objc_msgSend_position(v3) + 1, v164 <= [v3 length]))
          {
            v165 = [v3 data];
            [v165 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v162 |= (v198 & 0x7F) << v160;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v26 = v161++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_431;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v162;
        }

LABEL_431:
        v184 = 236;
        goto LABEL_432;
      case 47:
        if (!v30 || (*(a1 + 252) & 0x10) != 0)
        {
          goto LABEL_358;
        }

        v198 = 0;
        v199 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_517;
        }

        v42 = objc_alloc_init(GEORoadDescription);
        if (!GEORoadDescriptionReadAllFrom(v42, v3, v193 & 1))
        {
          goto LABEL_516;
        }

        PBReaderRecallMark();
        [(GEOStep *)a1 _addNoFlagsRoadDescription:v42];
LABEL_357:

        goto LABEL_461;
      case 48:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 248) |= 2uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v53 = objc_msgSend_position(v3) + 1;
          if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
          {
            v55 = [v3 data];
            [v55 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v52 |= (v198 & 0x7F) << v50;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v26 = v51++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_367;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v52;
        }

LABEL_367:
        v184 = 176;
        goto LABEL_432;
      case 49:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 248) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v138 = objc_msgSend_position(v3) + 1;
          if (v138 >= objc_msgSend_position(v3) && (v139 = objc_msgSend_position(v3) + 1, v139 <= [v3 length]))
          {
            v140 = [v3 data];
            [v140 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v137 |= (v198 & 0x7F) << v135;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v26 = v136++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_417;
          }
        }

        if ([v3 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v137;
        }

LABEL_417:
        v184 = 220;
        goto LABEL_432;
      case 50:
        if ((v7 & 1) == 0)
        {
          goto LABEL_358;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 248) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v198) = 0;
          v47 = objc_msgSend_position(v3) + 1;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
          {
            v49 = [v3 data];
            [v49 getBytes:&v198 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v46 |= (v198 & 0x7F) << v44;
          if ((v198 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v26 = v45++ >= 9;
          if (v26)
          {
            v41 = 0;
            goto LABEL_363;
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

LABEL_363:
        v184 = 200;
LABEL_432:
        *(a1 + v184) = v41;
        goto LABEL_461;
      default:
        if (v194 & 1) == 0 || (*(a1 + 251))
        {
LABEL_358:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_517;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v133 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v134 = *(a1 + 16);
            *(a1 + 16) = v133;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_467;
          }
        }

        goto LABEL_461;
    }
  }
}

uint64_t GEOETATrafficUpdateWaypointRouteIsValid(void *a1)
{
  v28 = objc_msgSend_position(a1);
  v29 = [a1 length];
  while (1)
  {
    while (1)
    {
LABEL_2:
      v2 = objc_msgSend_position(a1);
      if (v2 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
      {
        goto LABEL_81;
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
      if (([a1 hasError] & 1) != 0 || (v11 = v10 & 7, v11 == 4))
      {
LABEL_81:
        v24 = [a1 hasError] ^ 1;
        PBReaderRecallMark();
        return v24;
      }

      v12 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        break;
      }

      if (v12 <= 7)
      {
        if (v12 == 6)
        {
          if (v11 != 2)
          {
            goto LABEL_82;
          }

          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !GEOTrafficBannerTextIsValid(a1, v19))
          {
            goto LABEL_82;
          }
        }

        else
        {
          if (v12 != 7)
          {
            goto LABEL_78;
          }

          if (v11 != 2)
          {
            goto LABEL_82;
          }

          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !GEOWaypointRouteIsValid(a1))
          {
            goto LABEL_82;
          }
        }

        goto LABEL_67;
      }

      switch(v12)
      {
        case 8:
          if (v11 != 2)
          {
            goto LABEL_82;
          }

          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !GEONavigabilityInfoIsValid(a1))
          {
            goto LABEL_82;
          }

          goto LABEL_67;
        case 9:
          if ((v10 & 7) != 0)
          {
            goto LABEL_82;
          }

          v20 = 0;
          while (1)
          {
            LOBYTE(v26) = 0;
            v21 = objc_msgSend_position(a1, v26) + 1;
            if (v21 >= objc_msgSend_position(a1) && (v22 = objc_msgSend_position(a1) + 1, v22 <= [a1 length]))
            {
              v23 = [a1 data];
              [v23 getBytes:&v26 range:{objc_msgSend_position(a1), 1}];

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

            v18 = v20++ > 8;
            if (v18)
            {
              goto LABEL_2;
            }
          }

LABEL_80:
          [a1 hasError];
          break;
        case 0xA:
          if (v11 != 2)
          {
            goto LABEL_82;
          }

          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
          {
            goto LABEL_82;
          }

          goto LABEL_67;
        default:
LABEL_78:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_82;
          }

          break;
      }
    }

    if (v12 > 3)
    {
      break;
    }

    if (v12 == 1)
    {
      if ((v10 & 7) != 0)
      {
        goto LABEL_82;
      }

      v14 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v15 = objc_msgSend_position(a1, v26) + 1;
        if (v15 >= objc_msgSend_position(a1) && (v16 = objc_msgSend_position(a1) + 1, v16 <= [a1 length]))
        {
          v17 = [a1 data];
          [v17 getBytes:&v26 range:{objc_msgSend_position(a1), 1}];

          [a1 setPosition:objc_msgSend_position(a1) + 1];
        }

        else
        {
          [a1 _setError];
        }

        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_80;
        }

        v18 = v14++ > 8;
        if (v18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v12 != 2)
    {
      goto LABEL_78;
    }

    if (v11 != 2)
    {
      goto LABEL_82;
    }

    v26 = 0;
    v27 = 0;
    if (!PBReaderPlaceMark() || !GEOETARouteIsValid(a1))
    {
      goto LABEL_82;
    }

LABEL_67:
    PBReaderRecallMark();
  }

  if (v12 != 4)
  {
    if (v12 != 5)
    {
      goto LABEL_78;
    }

    if (v11 != 2)
    {
      goto LABEL_82;
    }

    v26 = 0;
    v27 = 0;
    if (!PBReaderPlaceMark() || !GEORouteIncidentIsValid(a1, v13))
    {
      goto LABEL_82;
    }

    goto LABEL_67;
  }

  if (v11 == 2)
  {
    v26 = 0;
    v27 = 0;
    if (PBReaderPlaceMark())
    {
      if (GEOTraversalTimesIsValid(a1))
      {
        goto LABEL_67;
      }
    }
  }

LABEL_82:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOETARouteIsValid(void *a1)
{
  v80 = objc_msgSend_position(a1);
  v81 = [a1 length];
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
      LOBYTE(v78) = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v78 & 0x7F) << v3;
      if ((v78 & 0x80) == 0)
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
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        goto LABEL_142;
      case 2u:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEOETAStepIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 3u:
        if (v10 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_222;
      case 4u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_222;
        }

        v43 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v44 = objc_msgSend_position(a1) + 1;
          if (v44 >= objc_msgSend_position(a1) && (v45 = objc_msgSend_position(a1) + 1, v45 <= [a1 length]))
          {
            v46 = [a1 data];
            [v46 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

          v26 = v43++ > 8;
          if (v26)
          {
            goto LABEL_2;
          }
        }

      case 5u:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEORouteIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 6u:
        if (v10 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_222;
      case 7u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_222;
          }

          while (1)
          {
            LOBYTE(v78) = 0;
            v27 = objc_msgSend_position(a1) + 1;
            if (v27 >= objc_msgSend_position(a1) && (v28 = objc_msgSend_position(a1) + 1, v28 <= [a1 length]))
            {
              v29 = [a1 data];
              [v29 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_164;
            }

            v30 = v10++;
            if (v30 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_222;
        }

LABEL_196:
        while (1)
        {
          v66 = objc_msgSend_position(a1);
          if (v66 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_168;
          }

          v67 = 0;
          while (1)
          {
            v82 = 0;
            v68 = objc_msgSend_position(a1) + 1;
            if (v68 >= objc_msgSend_position(a1) && (v69 = objc_msgSend_position(a1) + 1, v69 <= [a1 length]))
            {
              v70 = [a1 data];
              [v70 getBytes:&v82 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v82 & 0x80000000) == 0)
            {
              break;
            }

            v26 = v67++ > 8;
            if (v26)
            {
              goto LABEL_196;
            }
          }

          [a1 hasError];
        }

      case 8u:
        if (v10 == 2)
        {
          v78 = 0;
          v79 = 0;
          if (!PBReaderPlaceMark())
          {
LABEL_222:
            PBReaderRecallMark();
            return 0;
          }

LABEL_209:
          while (1)
          {
            v71 = objc_msgSend_position(a1);
            if (v71 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              break;
            }

            v72 = 0;
            while (1)
            {
              v82 = 0;
              v73 = objc_msgSend_position(a1) + 1;
              if (v73 >= objc_msgSend_position(a1) && (v74 = objc_msgSend_position(a1) + 1, v74 <= [a1 length]))
              {
                v75 = [a1 data];
                [v75 getBytes:&v82 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v82 & 0x80000000) == 0)
              {
                break;
              }

              v26 = v72++ > 8;
              if (v26)
              {
                goto LABEL_209;
              }
            }

            [a1 hasError];
          }

LABEL_168:
          PBReaderRecallMark();
        }

        else
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_222;
          }

          while (1)
          {
            LOBYTE(v78) = 0;
            v31 = objc_msgSend_position(a1) + 1;
            if (v31 >= objc_msgSend_position(a1) && (v32 = objc_msgSend_position(a1) + 1, v32 <= [a1 length]))
            {
              v33 = [a1 data];
              [v33 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v78 & 0x80000000) == 0)
            {
              break;
            }

            v34 = v10++;
            if (v34 > 8)
            {
              goto LABEL_2;
            }
          }

LABEL_164:
          [a1 hasError];
        }

        break;
      case 0xAu:
      case 0xBu:
      case 0xCu:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEORouteIncidentIsValid(a1, v11))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0xDu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_222;
        }

        v22 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v23 = objc_msgSend_position(a1) + 1;
          if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
          {
            v25 = [a1 data];
            [v25 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

          v26 = v22++ > 8;
          if (v26)
          {
            goto LABEL_2;
          }
        }

      case 0xEu:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_222;
          }

          while (1)
          {
            LOBYTE(v78) = 0;
            v17 = objc_msgSend_position(a1) + 1;
            if (v17 >= objc_msgSend_position(a1) && (v18 = objc_msgSend_position(a1) + 1, v18 <= [a1 length]))
            {
              v19 = [a1 data];
              [v19 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_164;
            }

            v20 = v10++;
            if (v20 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_222;
        }

LABEL_183:
        while (1)
        {
          v61 = objc_msgSend_position(a1);
          if (v61 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_168;
          }

          v62 = 0;
          while (1)
          {
            v82 = 0;
            v63 = objc_msgSend_position(a1) + 1;
            if (v63 >= objc_msgSend_position(a1) && (v64 = objc_msgSend_position(a1) + 1, v64 <= [a1 length]))
            {
              v65 = [a1 data];
              [v65 getBytes:&v82 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v82 & 0x80000000) == 0)
            {
              break;
            }

            v26 = v62++ > 8;
            if (v26)
            {
              goto LABEL_183;
            }
          }

          [a1 hasError];
        }

      case 0xFu:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficBannerTextIsValid(a1, v12))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0x10u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_222;
        }

        v35 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v36 = objc_msgSend_position(a1) + 1;
          if (v36 >= objc_msgSend_position(a1) && (v37 = objc_msgSend_position(a1) + 1, v37 <= [a1 length]))
          {
            v38 = [a1 data];
            [v38 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

          v26 = v35++ > 8;
          if (v26)
          {
            goto LABEL_2;
          }
        }

      case 0x11u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_222;
        }

        v39 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v40 = objc_msgSend_position(a1) + 1;
          if (v40 >= objc_msgSend_position(a1) && (v41 = objc_msgSend_position(a1) + 1, v41 <= [a1 length]))
          {
            v42 = [a1 data];
            [v42 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

          v26 = v39++ > 8;
          if (v26)
          {
            goto LABEL_2;
          }
        }

      case 0x12u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_222;
        }

        v51 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v52 = objc_msgSend_position(a1) + 1;
          if (v52 >= objc_msgSend_position(a1) && (v53 = objc_msgSend_position(a1) + 1, v53 <= [a1 length]))
          {
            v54 = [a1 data];
            [v54 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

          v26 = v51++ > 8;
          if (v26)
          {
            goto LABEL_2;
          }
        }

      case 0x13u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_222;
        }

        v47 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v48 = objc_msgSend_position(a1) + 1;
          if (v48 >= objc_msgSend_position(a1) && (v49 = objc_msgSend_position(a1) + 1, v49 <= [a1 length]))
          {
            v50 = [a1 data];
            [v50 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v78 & 0x80000000) == 0)
          {
            goto LABEL_164;
          }

          v26 = v47++ > 8;
          if (v26)
          {
            goto LABEL_2;
          }
        }

      case 0x14u:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEOEnrouteNoticeIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0x15u:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEOTrafficColorInfoIsValid(a1, v21))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0x16u:
        if (v10 == 2)
        {
          v78 = 0;
          v79 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOIncidentOnRouteInfoIsValid(a1, v55))
            {
              goto LABEL_168;
            }
          }
        }

        goto LABEL_222;
      case 0x17u:
      case 0x18u:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEOWaypointInfoIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0x19u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_222;
          }

          while (1)
          {
            LOBYTE(v78) = 0;
            v13 = objc_msgSend_position(a1) + 1;
            if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
            {
              v15 = [a1 data];
              [v15 getBytes:&v78 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v78 & 0x80000000) == 0)
            {
              goto LABEL_164;
            }

            v16 = v10++;
            if (v16 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_222;
        }

LABEL_170:
        while (1)
        {
          v56 = objc_msgSend_position(a1);
          if (v56 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_168;
          }

          v57 = 0;
          while (1)
          {
            v82 = 0;
            v58 = objc_msgSend_position(a1) + 1;
            if (v58 >= objc_msgSend_position(a1) && (v59 = objc_msgSend_position(a1) + 1, v59 <= [a1 length]))
            {
              v60 = [a1 data];
              [v60 getBytes:&v82 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v82 & 0x80000000) == 0)
            {
              break;
            }

            v26 = v57++ > 8;
            if (v26)
            {
              goto LABEL_170;
            }
          }

          [a1 hasError];
        }

      case 0x1Au:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEONavigabilityInfoIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0x1Bu:
        if (v10 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_222;
      case 0x1Cu:
      case 0x1Eu:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEORouteLineStyleInfoIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      case 0x1Du:
        if (v10 != 2)
        {
          goto LABEL_222;
        }

        v78 = 0;
        v79 = 0;
        if (!PBReaderPlaceMark() || !GEOGuidanceEventIsValid(a1))
        {
          goto LABEL_222;
        }

        goto LABEL_168;
      default:
LABEL_142:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_222;
        }

        continue;
    }
  }

  v76 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v76;
}

uint64_t GEOWaypointInfoIsValid(void *a1)
{
  v29 = objc_msgSend_position(a1);
  v30 = [a1 length];
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
          goto LABEL_89;
        }

        v3 = 0;
        v4 = 0;
        v5 = 0;
        while (1)
        {
          LOBYTE(v27) = 0;
          v6 = objc_msgSend_position(a1, v27) + 1;
          if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
          {
            v8 = [a1 data];
            [v8 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          v5 |= (v27 & 0x7F) << v3;
          if ((v27 & 0x80) == 0)
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
LABEL_89:
          v25 = [a1 hasError] ^ 1;
          PBReaderRecallMark();
          return v25;
        }

        v12 = v10 >> 3;
        if ((v10 >> 3) <= 5)
        {
          break;
        }

        if (v12 > 8)
        {
          switch(v12)
          {
            case 9:
              if (v11 != 2)
              {
                goto LABEL_90;
              }

              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !GEOAddressIsValid(a1, v24))
              {
                goto LABEL_90;
              }

              break;
            case 0xA:
              if (v11 != 2)
              {
                goto LABEL_90;
              }

              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !GEOPDSearchClientBehaviorIsValid(a1))
              {
                goto LABEL_90;
              }

              break;
            case 0xB:
              if (v11 != 2)
              {
                goto LABEL_90;
              }

              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !GEOFormattedStringIsValid(a1))
              {
                goto LABEL_90;
              }

              break;
            default:
              goto LABEL_86;
          }

          goto LABEL_85;
        }

        switch(v12)
        {
          case 6:
            if (v11 != 2)
            {
              goto LABEL_90;
            }

            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !GEOEVChargingInfoIsValid(a1, v23))
            {
              goto LABEL_90;
            }

            goto LABEL_85;
          case 7:
            if (v11 != 2)
            {
              goto LABEL_90;
            }

            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !GEOARInfoIsValid(a1, v22))
            {
              goto LABEL_90;
            }

            goto LABEL_85;
          case 8:
            if ((v10 & 7) != 0)
            {
              goto LABEL_90;
            }

            v13 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
              v14 = objc_msgSend_position(a1, v27) + 1;
              if (v14 >= objc_msgSend_position(a1) && (v15 = objc_msgSend_position(a1) + 1, v15 <= [a1 length]))
              {
                v16 = [a1 data];
                [v16 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v27 & 0x80000000) == 0)
              {
                goto LABEL_88;
              }

              v17 = v13++ > 8;
              if (v17)
              {
                goto LABEL_2;
              }
            }
        }

LABEL_86:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      if (v12 <= 2)
      {
        break;
      }

      switch(v12)
      {
        case 3:
          if (v11 != 2)
          {
            goto LABEL_90;
          }

          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !GEOLatLngIsValid(a1))
          {
            goto LABEL_90;
          }

          break;
        case 4:
          if (v11 != 2)
          {
            goto LABEL_90;
          }

          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !GEOStyleAttributesIsValid(a1))
          {
            goto LABEL_90;
          }

          break;
        case 5:
          if (v11 != 2)
          {
            goto LABEL_90;
          }

          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !GEOPBTransitArtworkIsValid(a1))
          {
            goto LABEL_90;
          }

          break;
        default:
          goto LABEL_86;
      }

LABEL_85:
      PBReaderRecallMark();
    }

    if (v12 != 1)
    {
      break;
    }

    if ((v10 & 7) != 0)
    {
      goto LABEL_90;
    }

    v18 = 0;
    while (1)
    {
      LOBYTE(v27) = 0;
      v19 = objc_msgSend_position(a1, v27) + 1;
      if (v19 >= objc_msgSend_position(a1) && (v20 = objc_msgSend_position(a1) + 1, v20 <= [a1 length]))
      {
        v21 = [a1 data];
        [v21 getBytes:&v27 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      if ((v27 & 0x80000000) == 0)
      {
        break;
      }

      v17 = v18++ > 8;
      if (v17)
      {
        goto LABEL_2;
      }
    }

LABEL_88:
    [a1 hasError];
  }

  if (v12 != 2 || v11 == 2)
  {
    goto LABEL_86;
  }

LABEL_90:
  PBReaderRecallMark();
  return 0;
}

uint64_t GEOTraversalTimesIsValid(void *a1)
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
      v35 = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v35 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v35 & 0x7F) << v3;
      if ((v35 & 0x80) == 0)
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

    v11 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v11 == 1)
      {
        if ((v10 & 7) != 0)
        {
          goto LABEL_76;
        }

        v29 = 0;
        while (1)
        {
          v35 = 0;
          v30 = objc_msgSend_position(a1) + 1;
          if (v30 >= objc_msgSend_position(a1) && (v31 = objc_msgSend_position(a1) + 1, v31 <= [a1 length]))
          {
            v32 = [a1 data];
            [v32 getBytes:&v35 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v35 & 0x80000000) == 0)
          {
            break;
          }

          v16 = v29++ > 8;
          if (v16)
          {
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_75;
        }

        if ((v10 & 7) != 0)
        {
          goto LABEL_76;
        }

        v17 = 0;
        while (1)
        {
          v35 = 0;
          v18 = objc_msgSend_position(a1) + 1;
          if (v18 >= objc_msgSend_position(a1) && (v19 = objc_msgSend_position(a1) + 1, v19 <= [a1 length]))
          {
            v20 = [a1 data];
            [v20 getBytes:&v35 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v35 & 0x80000000) == 0)
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

LABEL_74:
      [a1 hasError];
    }

    else
    {
      switch(v11)
      {
        case 3:
          if ((v10 & 7) != 0)
          {
            goto LABEL_76;
          }

          v21 = 0;
          while (1)
          {
            v35 = 0;
            v22 = objc_msgSend_position(a1) + 1;
            if (v22 >= objc_msgSend_position(a1) && (v23 = objc_msgSend_position(a1) + 1, v23 <= [a1 length]))
            {
              v24 = [a1 data];
              [v24 getBytes:&v35 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_74;
            }

            v16 = v21++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }

        case 4:
          if ((v10 & 7) != 0)
          {
            goto LABEL_76;
          }

          v25 = 0;
          while (1)
          {
            v35 = 0;
            v26 = objc_msgSend_position(a1) + 1;
            if (v26 >= objc_msgSend_position(a1) && (v27 = objc_msgSend_position(a1) + 1, v27 <= [a1 length]))
            {
              v28 = [a1 data];
              [v28 getBytes:&v35 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_74;
            }

            v16 = v25++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }

        case 5:
          if ((v10 & 7) != 0)
          {
            goto LABEL_76;
          }

          v12 = 0;
          while (1)
          {
            v35 = 0;
            v13 = objc_msgSend_position(a1) + 1;
            if (v13 >= objc_msgSend_position(a1) && (v14 = objc_msgSend_position(a1) + 1, v14 <= [a1 length]))
            {
              v15 = [a1 data];
              [v15 getBytes:&v35 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_74;
            }

            v16 = v12++ > 8;
            if (v16)
            {
              goto LABEL_2;
            }
          }
      }

LABEL_75:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_76:
        v33 = 0;
        goto LABEL_78;
      }
    }
  }

  v33 = [a1 hasError] ^ 1;
LABEL_78:
  PBReaderRecallMark();
  return v33;
}

uint64_t GEORouteIsValid(void *a1)
{
  v156 = objc_msgSend_position(a1);
  v157 = [a1 length];
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
      LOBYTE(v154) = 0;
      v6 = objc_msgSend_position(a1) + 1;
      if (v6 >= objc_msgSend_position(a1) && (v7 = objc_msgSend_position(a1) + 1, v7 <= [a1 length]))
      {
        v8 = [a1 data];
        [v8 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

        [a1 setPosition:objc_msgSend_position(a1) + 1];
      }

      else
      {
        [a1 _setError];
      }

      v5 |= (v154 & 0x7F) << v3;
      if ((v154 & 0x80) == 0)
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
          goto LABEL_449;
        }

        v59 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v60 = objc_msgSend_position(a1) + 1;
          if (v60 >= objc_msgSend_position(a1) && (v61 = objc_msgSend_position(a1) + 1, v61 <= [a1 length]))
          {
            v62 = [a1 data];
            [v62 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v59++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 2u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOStepIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 3u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 4u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 5u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v72 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v73 = objc_msgSend_position(a1) + 1;
          if (v73 >= objc_msgSend_position(a1) && (v74 = objc_msgSend_position(a1) + 1, v74 <= [a1 length]))
          {
            v75 = [a1 data];
            [v75 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v72++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 6u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v81 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v82 = objc_msgSend_position(a1) + 1;
          if (v82 >= objc_msgSend_position(a1) && (v83 = objc_msgSend_position(a1) + 1, v83 <= [a1 length]))
          {
            v84 = [a1 data];
            [v84 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v81++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 7u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 8u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v30 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v31 = objc_msgSend_position(a1) + 1;
          if (v31 >= objc_msgSend_position(a1) && (v32 = objc_msgSend_position(a1) + 1, v32 <= [a1 length]))
          {
            v33 = [a1 data];
            [v33 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v30++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 9u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0xAu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v89 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v90 = objc_msgSend_position(a1) + 1;
          if (v90 >= objc_msgSend_position(a1) && (v91 = objc_msgSend_position(a1) + 1, v91 <= [a1 length]))
          {
            v92 = [a1 data];
            [v92 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v89++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x10u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x11u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v63 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v64 = objc_msgSend_position(a1) + 1;
          if (v64 >= objc_msgSend_position(a1) && (v65 = objc_msgSend_position(a1) + 1, v65 <= [a1 length]))
          {
            v66 = [a1 data];
            [v66 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v63++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x12u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x13u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v26 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v27 = objc_msgSend_position(a1) + 1;
          if (v27 >= objc_msgSend_position(a1) && (v28 = objc_msgSend_position(a1) + 1, v28 <= [a1 length]))
          {
            v29 = [a1 data];
            [v29 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v26++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x14u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x15u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x16u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_449;
          }

          while (1)
          {
            LOBYTE(v154) = 0;
            v97 = objc_msgSend_position(a1) + 1;
            if (v97 >= objc_msgSend_position(a1) && (v98 = objc_msgSend_position(a1) + 1, v98 <= [a1 length]))
            {
              v99 = [a1 data];
              [v99 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v154 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            v100 = v10++;
            if (v100 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_449;
        }

LABEL_410:
        while (1)
        {
          v137 = objc_msgSend_position(a1);
          if (v137 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_369;
          }

          v138 = 0;
          while (1)
          {
            v158 = 0;
            v139 = objc_msgSend_position(a1) + 1;
            if (v139 >= objc_msgSend_position(a1) && (v140 = objc_msgSend_position(a1) + 1, v140 <= [a1 length]))
            {
              v141 = [a1 data];
              [v141 getBytes:&v158 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v158 & 0x80000000) == 0)
            {
              break;
            }

            v15 = v138++ > 8;
            if (v15)
            {
              goto LABEL_410;
            }
          }

          [a1 hasError];
        }

      case 0x17u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_449;
          }

          while (1)
          {
            LOBYTE(v154) = 0;
            v93 = objc_msgSend_position(a1) + 1;
            if (v93 >= objc_msgSend_position(a1) && (v94 = objc_msgSend_position(a1) + 1, v94 <= [a1 length]))
            {
              v95 = [a1 data];
              [v95 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v154 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            v96 = v10++;
            if (v96 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_449;
        }

LABEL_397:
        while (1)
        {
          v132 = objc_msgSend_position(a1);
          if (v132 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_369;
          }

          v133 = 0;
          while (1)
          {
            v158 = 0;
            v134 = objc_msgSend_position(a1) + 1;
            if (v134 >= objc_msgSend_position(a1) && (v135 = objc_msgSend_position(a1) + 1, v135 <= [a1 length]))
            {
              v136 = [a1 data];
              [v136 getBytes:&v158 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v158 & 0x80000000) == 0)
            {
              break;
            }

            v15 = v133++ > 8;
            if (v15)
            {
              goto LABEL_397;
            }
          }

          [a1 hasError];
        }

      case 0x19u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEORouteNameIsValid(a1, v19) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x1Au:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v55 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v56 = objc_msgSend_position(a1) + 1;
          if (v56 >= objc_msgSend_position(a1) && (v57 = objc_msgSend_position(a1) + 1, v57 <= [a1 length]))
          {
            v58 = [a1 data];
            [v58 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v55++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x1Cu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v110 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v111 = objc_msgSend_position(a1) + 1;
          if (v111 >= objc_msgSend_position(a1) && (v112 = objc_msgSend_position(a1) + 1, v112 <= [a1 length]))
          {
            v113 = [a1 data];
            [v113 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v110++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x1Du:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v22 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v23 = objc_msgSend_position(a1) + 1;
          if (v23 >= objc_msgSend_position(a1) && (v24 = objc_msgSend_position(a1) + 1, v24 <= [a1 length]))
          {
            v25 = [a1 data];
            [v25 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v22++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x1Eu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v51 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v52 = objc_msgSend_position(a1) + 1;
          if (v52 >= objc_msgSend_position(a1) && (v53 = objc_msgSend_position(a1) + 1, v53 <= [a1 length]))
          {
            v54 = [a1 data];
            [v54 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v51++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x1Fu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v38 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v39 = objc_msgSend_position(a1) + 1;
          if (v39 >= objc_msgSend_position(a1) && (v40 = objc_msgSend_position(a1) + 1, v40 <= [a1 length]))
          {
            v41 = [a1 data];
            [v41 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v38++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x20u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v68 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v69 = objc_msgSend_position(a1) + 1;
          if (v69 >= objc_msgSend_position(a1) && (v70 = objc_msgSend_position(a1) + 1, v70 <= [a1 length]))
          {
            v71 = [a1 data];
            [v71 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v68++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x21u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v34 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v35 = objc_msgSend_position(a1) + 1;
          if (v35 >= objc_msgSend_position(a1) && (v36 = objc_msgSend_position(a1) + 1, v36 <= [a1 length]))
          {
            v37 = [a1 data];
            [v37 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v34++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x22u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOEnrouteNoticeIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x32u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x33u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_449;
          }

          while (1)
          {
            LOBYTE(v154) = 0;
            v43 = objc_msgSend_position(a1) + 1;
            if (v43 >= objc_msgSend_position(a1) && (v44 = objc_msgSend_position(a1) + 1, v44 <= [a1 length]))
            {
              v45 = [a1 data];
              [v45 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v154 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            v46 = v10++;
            if (v46 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_449;
        }

LABEL_371:
        while (1)
        {
          v122 = objc_msgSend_position(a1);
          if (v122 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_369;
          }

          v123 = 0;
          while (1)
          {
            v158 = 0;
            v124 = objc_msgSend_position(a1) + 1;
            if (v124 >= objc_msgSend_position(a1) && (v125 = objc_msgSend_position(a1) + 1, v125 <= [a1 length]))
            {
              v126 = [a1 data];
              [v126 getBytes:&v158 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v158 & 0x80000000) == 0)
            {
              break;
            }

            v15 = v123++ > 8;
            if (v15)
            {
              goto LABEL_371;
            }
          }

          [a1 hasError];
        }

      case 0x34u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_449;
          }

          while (1)
          {
            LOBYTE(v154) = 0;
            v47 = objc_msgSend_position(a1) + 1;
            if (v47 >= objc_msgSend_position(a1) && (v48 = objc_msgSend_position(a1) + 1, v48 <= [a1 length]))
            {
              v49 = [a1 data];
              [v49 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v154 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            v50 = v10++;
            if (v50 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_449;
        }

LABEL_384:
        while (1)
        {
          v127 = objc_msgSend_position(a1);
          if (v127 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_369;
          }

          v128 = 0;
          while (1)
          {
            v158 = 0;
            v129 = objc_msgSend_position(a1) + 1;
            if (v129 >= objc_msgSend_position(a1) && (v130 = objc_msgSend_position(a1) + 1, v130 <= [a1 length]))
            {
              v131 = [a1 data];
              [v131 getBytes:&v158 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v158 & 0x80000000) == 0)
            {
              break;
            }

            v15 = v128++ > 8;
            if (v15)
            {
              goto LABEL_384;
            }
          }

          [a1 hasError];
        }

      case 0x35u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEORouteInformationIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x44u:
      case 0x46u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOFormattedStringIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x39u:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x3Au:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x3Bu:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOAlertNonRecommendedRouteTextIsValid(a1, v21) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x3Cu:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOGuidanceEventIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x3Du:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOLaunchAndGoCardTextIsValid(a1, v119) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x3Eu:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEORoadComplexityIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x3Fu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v77 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v78 = objc_msgSend_position(a1) + 1;
          if (v78 >= objc_msgSend_position(a1) && (v79 = objc_msgSend_position(a1) + 1, v79 <= [a1 length]))
          {
            v80 = [a1 data];
            [v80 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v77++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x40u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOLaneWidthIsValid(a1, v18) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x41u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOClickableAdvisoryIsValid(a1, v17) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x42u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEORestrictedZoneIdIsValid(a1, v42) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x43u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOStepGroupIsValid(a1, v67) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x45u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOElevationProfileIsValid(a1, v120) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x47u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOTrafficColorInfoIsValid(a1, v76) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x48u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOIncidentOnRouteInfoIsValid(a1, v16) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x49u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v11 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v12 = objc_msgSend_position(a1) + 1;
          if (v12 >= objc_msgSend_position(a1) && (v13 = objc_msgSend_position(a1) + 1, v13 <= [a1 length]))
          {
            v14 = [a1 data];
            [v14 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v11++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x4Au:
        if (v10 == 2)
        {
          v154 = 0;
          v155 = 0;
          if (PBReaderPlaceMark())
          {
            if (GEOUpdateLocationIsValid(a1, v121))
            {
              goto LABEL_369;
            }
          }
        }

        goto LABEL_449;
      case 0x4Bu:
      case 0x4Cu:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOWaypointInfoIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x4Du:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v85 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v86 = objc_msgSend_position(a1) + 1;
          if (v86 >= objc_msgSend_position(a1) && (v87 = objc_msgSend_position(a1) + 1, v87 <= [a1 length]))
          {
            v88 = [a1 data];
            [v88 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v85++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x4Eu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_449;
        }

        v101 = 0;
        while (1)
        {
          LOBYTE(v154) = 0;
          v102 = objc_msgSend_position(a1) + 1;
          if (v102 >= objc_msgSend_position(a1) && (v103 = objc_msgSend_position(a1) + 1, v103 <= [a1 length]))
          {
            v104 = [a1 data];
            [v104 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

            [a1 setPosition:objc_msgSend_position(a1) + 1];
          }

          else
          {
            [a1 _setError];
          }

          if ((v154 & 0x80000000) == 0)
          {
            goto LABEL_350;
          }

          v15 = v101++ > 8;
          if (v15)
          {
            goto LABEL_2;
          }
        }

      case 0x4Fu:
        if (v10 == 2)
        {
          goto LABEL_356;
        }

        goto LABEL_449;
      case 0x50u:
        if (v10 == 2)
        {
          v154 = 0;
          v155 = 0;
          if (!PBReaderPlaceMark())
          {
LABEL_449:
            PBReaderRecallMark();
            return 0;
          }

LABEL_436:
          while (1)
          {
            v147 = objc_msgSend_position(a1);
            if (v147 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
            {
              break;
            }

            v148 = 0;
            while (1)
            {
              v158 = 0;
              v149 = objc_msgSend_position(a1) + 1;
              if (v149 >= objc_msgSend_position(a1) && (v150 = objc_msgSend_position(a1) + 1, v150 <= [a1 length]))
              {
                v151 = [a1 data];
                [v151 getBytes:&v158 range:{objc_msgSend_position(a1), 1}];

                [a1 setPosition:objc_msgSend_position(a1) + 1];
              }

              else
              {
                [a1 _setError];
              }

              if ((v158 & 0x80000000) == 0)
              {
                break;
              }

              v15 = v148++ > 8;
              if (v15)
              {
                goto LABEL_436;
              }
            }

            [a1 hasError];
          }

LABEL_369:
          PBReaderRecallMark();
        }

        else
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_449;
          }

          while (1)
          {
            LOBYTE(v154) = 0;
            v114 = objc_msgSend_position(a1) + 1;
            if (v114 >= objc_msgSend_position(a1) && (v115 = objc_msgSend_position(a1) + 1, v115 <= [a1 length]))
            {
              v116 = [a1 data];
              [v116 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v154 & 0x80000000) == 0)
            {
              break;
            }

            v117 = v10++;
            if (v117 > 8)
            {
              goto LABEL_2;
            }
          }

LABEL_350:
          [a1 hasError];
        }

        break;
      case 0x51u:
        if (v10 != 2)
        {
          if ((v5 & 7) != 0)
          {
            goto LABEL_449;
          }

          while (1)
          {
            LOBYTE(v154) = 0;
            v106 = objc_msgSend_position(a1) + 1;
            if (v106 >= objc_msgSend_position(a1) && (v107 = objc_msgSend_position(a1) + 1, v107 <= [a1 length]))
            {
              v108 = [a1 data];
              [v108 getBytes:&v154 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v154 & 0x80000000) == 0)
            {
              goto LABEL_350;
            }

            v109 = v10++;
            if (v109 > 8)
            {
              goto LABEL_2;
            }
          }
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_449;
        }

LABEL_423:
        while (1)
        {
          v142 = objc_msgSend_position(a1);
          if (v142 >= [a1 length] || (objc_msgSend(a1, "hasError") & 1) != 0)
          {
            goto LABEL_369;
          }

          v143 = 0;
          while (1)
          {
            v158 = 0;
            v144 = objc_msgSend_position(a1) + 1;
            if (v144 >= objc_msgSend_position(a1) && (v145 = objc_msgSend_position(a1) + 1, v145 <= [a1 length]))
            {
              v146 = [a1 data];
              [v146 getBytes:&v158 range:{objc_msgSend_position(a1), 1}];

              [a1 setPosition:objc_msgSend_position(a1) + 1];
            }

            else
            {
              [a1 _setError];
            }

            if ((v158 & 0x80000000) == 0)
            {
              break;
            }

            v15 = v143++ > 8;
            if (v15)
            {
              goto LABEL_423;
            }
          }

          [a1 hasError];
        }

      case 0x52u:
      case 0x53u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEORouteLineStyleInfoIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x56u:
      case 0x57u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEODrivingWalkingInstructionIsValid(a1) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x58u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOPathMapMatcherInstructionsIsValid(a1, v105) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x59u:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEODirectedRoadSegmentIsValid(a1, v20) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      case 0x5Au:
        if (v10 != 2)
        {
          goto LABEL_449;
        }

        v154 = 0;
        v155 = 0;
        if (!PBReaderPlaceMark() || (GEOSegmentNameInfoIsValid(a1, v118) & 1) == 0)
        {
          goto LABEL_449;
        }

        goto LABEL_369;
      default:
LABEL_356:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_449;
        }

        continue;
    }
  }

  v152 = [a1 hasError] ^ 1;
  PBReaderRecallMark();
  return v152;
}