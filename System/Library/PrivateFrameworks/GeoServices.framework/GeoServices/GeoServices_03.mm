uint64_t GEOLatLngReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v38) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v38 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v38 & 0x7F) << v5;
          if ((v38 & 0x80) == 0)
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
            *(a1 + 44) |= 1u;
            v38 = 0;
            v28 = objc_msgSend_position(v3);
            if (v28 + 8 >= objc_msgSend_position(v3) && (v29 = objc_msgSend_position(v3), v29 + 8 <= [v3 length]))
            {
              v34 = [v3 data];
              [v34 getBytes:&v38 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            v31 = v38;
            v32 = 16;
            goto LABEL_54;
          }

          if (v14 == 100)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v38) = 0;
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
                LOBYTE(v23) = 0;
                goto LABEL_47;
              }
            }

            v23 = (v19 != 0) & ~[v3 hasError];
LABEL_47:
            *(a1 + 40) = v23;
            goto LABEL_55;
          }
        }

        else
        {
          if (v14 == 1)
          {
            v38 = 0;
            v26 = objc_msgSend_position(v3);
            if (v26 + 8 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 8 <= [v3 length]))
            {
              v33 = [v3 data];
              [v33 getBytes:&v38 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            v31 = v38;
            v32 = 24;
            goto LABEL_54;
          }

          if (v14 == 2)
          {
            v38 = 0;
            v15 = objc_msgSend_position(v3);
            if (v15 + 8 >= objc_msgSend_position(v3) && (v16 = objc_msgSend_position(v3), v16 + 8 <= [v3 length]))
            {
              v30 = [v3 data];
              [v30 getBytes:&v38 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            v31 = v38;
            v32 = 32;
LABEL_54:
            *(a1 + v32) = v31;
            goto LABEL_55;
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
          goto LABEL_57;
        }

LABEL_55:
        v35 = objc_msgSend_position(v3);
      }

      while (v35 < [v3 length]);
    }

    v36 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_57:
    v36 = 0;
  }

  objc_sync_exit(v3);

  return v36;
}

void *GEOActiveTileSetReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 100))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOActiveTileSetReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 104));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 96) = objc_msgSend_position(v8);
  *(a1 + 100) = [v8 length];
  if (a3)
  {
    v9 = &GEOActiveTileSetReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOActiveTileSetReadAllFrom_initialTag;
  }

  Specified = GEOActiveTileSetReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOActiveTileSetCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 104));
  return Specified;
}

void *GEOActiveTileSetReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 104));
  [v3 setLength:*(a1 + 100)];
  [v3 seekToOffset:*(a1 + 96)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = ((*(a1 + 144) >> 5) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 144)), 0xFFF6FFF5FFFAFFF9), 0x1000100010001)) + ((*(a1 + 144) >> 12) & 1) + (HIBYTE(*(a1 + 144)) & 1) + ((*(a1 + 144) >> 9) & 1));
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

  v13 = v11 > 4;
  v101 = v9;
  v102 = v13 & ~v10 | v8;
  v14 = v10 | v13;
  v103 = v14 | v8;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v104 = (v15 == 0) | v14;
  v105 = v14;
  while (2)
  {
    v16 = objc_msgSend_position(v3);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_214:
      v25 = 1;
      goto LABEL_215;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v106) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v106 & 0x7F) << v17;
      if ((v106 & 0x80) == 0)
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
      goto LABEL_215;
    }

    v26 = v19 >> 3;
    v27 = v105;
    if ((v104 & 1) == 0)
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

    switch(v26)
    {
      case 1:
        if (!v27)
        {
          goto LABEL_170;
        }

        if ((*(a1 + 144) & 0x80) == 0)
        {
          v32 = PBReaderReadString();
          v33 = 48;
          goto LABEL_163;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_246;
        }

        v95 = *(a1 + 144) << 8;
        goto LABEL_213;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v66 = 0;
        v67 = 0;
        v68 = 0;
        while (1)
        {
          LOBYTE(v106) = 0;
          v69 = objc_msgSend_position(v3) + 1;
          if (v69 >= objc_msgSend_position(v3) && (v70 = objc_msgSend_position(v3) + 1, v70 <= [v3 length]))
          {
            v71 = [v3 data];
            [v71 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v68 |= (v106 & 0x7F) << v66;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v23 = v67++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_195;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v68;
        }

LABEL_195:
        v94 = 124;
        goto LABEL_206;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        while (1)
        {
          LOBYTE(v106) = 0;
          v56 = objc_msgSend_position(v3) + 1;
          if (v56 >= objc_msgSend_position(v3) && (v57 = objc_msgSend_position(v3) + 1, v57 <= [v3 length]))
          {
            v58 = [v3 data];
            [v58 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v55 |= (v106 & 0x7F) << v53;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v23 = v54++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_187;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v55;
        }

LABEL_187:
        v94 = 116;
        goto LABEL_206;
      case 5:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v79 = 0;
        v80 = 0;
        v81 = 0;
        while (1)
        {
          LOBYTE(v106) = 0;
          v82 = objc_msgSend_position(v3) + 1;
          if (v82 >= objc_msgSend_position(v3) && (v83 = objc_msgSend_position(v3) + 1, v83 <= [v3 length]))
          {
            v84 = [v3 data];
            [v84 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v81 |= (v106 & 0x7F) << v79;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v23 = v80++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_201;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v81;
        }

LABEL_201:
        v94 = 120;
        goto LABEL_206;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v85 = 0;
        v86 = 0;
        v87 = 0;
        while (1)
        {
          LOBYTE(v106) = 0;
          v88 = objc_msgSend_position(v3) + 1;
          if (v88 >= objc_msgSend_position(v3) && (v89 = objc_msgSend_position(v3) + 1, v89 <= [v3 length]))
          {
            v90 = [v3 data];
            [v90 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v87 |= (v106 & 0x7F) << v85;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v23 = v86++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_205;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v87;
        }

LABEL_205:
        v94 = 136;
        goto LABEL_206;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 144) |= 4u;
        while (1)
        {
          LOBYTE(v106) = 0;
          v62 = objc_msgSend_position(v3) + 1;
          if (v62 >= objc_msgSend_position(v3) && (v63 = objc_msgSend_position(v3) + 1, v63 <= [v3 length]))
          {
            v64 = [v3 data];
            [v64 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v61 |= (v106 & 0x7F) << v59;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v23 = v60++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_191;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v61;
        }

LABEL_191:
        v94 = 128;
        goto LABEL_206;
      case 8:
        if (!v27 || (*(a1 + 144) & 0x40) != 0)
        {
          goto LABEL_170;
        }

        v106 = 0;
        v107 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_246;
        }

        [(GEOActiveTileSet *)a1 _reserveAvailableTiles:?];
        if ((GEOTileSetRegionReadAllFrom((*(a1 + 24) + 24 * *(a1 + 32)), v3) & 1) == 0)
        {
          goto LABEL_246;
        }

        PBReaderRecallMark();
        ++*(a1 + 32);
        goto LABEL_207;
      case 9:
        if (!v27 || (*(a1 + 144) & 0x800) != 0)
        {
          goto LABEL_170;
        }

        v106 = 0;
        v107 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_246;
        }

        v65 = objc_alloc_init(GEOSentinelTile);
        if (!GEOSentinelTileReadAllFrom(v65, v3))
        {
          goto LABEL_245;
        }

        PBReaderRecallMark();
        [(GEOActiveTileSet *)a1 _addNoFlagsSentinelTile:v65];
        goto LABEL_159;
      case 10:
        if (!v27)
        {
          goto LABEL_170;
        }

        if ((*(a1 + 144) & 0x400) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_246;
          }

          v95 = 32 * *(a1 + 144);
LABEL_213:
          v6 += v95 >> 15;
        }

        else
        {
          v32 = PBReaderReadString();
          v33 = 72;
LABEL_163:
          v91 = *(a1 + v33);
          *(a1 + v33) = v32;

          --v6;
        }

        goto LABEL_207;
      case 11:
        if (!v27 || (*(a1 + 144) & 0x1000) != 0)
        {
          goto LABEL_170;
        }

        v65 = PBReaderReadString();
        if (v65)
        {
          [(GEOActiveTileSet *)a1 _addNoFlagsSupportedLanguage:v65];
        }

        goto LABEL_159;
      case 13:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 144) |= 8u;
        while (1)
        {
          LOBYTE(v106) = 0;
          v44 = objc_msgSend_position(v3) + 1;
          if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
          {
            v46 = [v3 data];
            [v46 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v43 |= (v106 & 0x7F) << v41;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v23 = v42++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_179;
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

LABEL_179:
        v94 = 132;
        goto LABEL_206;
      case 14:
        if (!v27 || (*(a1 + 144) & 0x100) != 0)
        {
          goto LABEL_170;
        }

        v106 = 0;
        v107 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_246;
        }

        v65 = objc_alloc_init(GEOCountryRegionTuple);
        if (GEOCountryRegionTupleReadAllFrom(v65, v3, v101 & 1))
        {
          PBReaderRecallMark();
          [(GEOActiveTileSet *)a1 _addNoFlagsCountryRegionAllowlist:v65];
LABEL_159:

LABEL_207:
          if (!(v103 & 1 | (v6 != 0)))
          {
            goto LABEL_214;
          }

          continue;
        }

LABEL_245:

LABEL_246:
        v25 = 0;
LABEL_215:
        if (v102)
        {
LABEL_216:
          *(a1 + 144) |= 0x20u;
        }

        if (v105 || (v25 & 1) == 0)
        {
          *(a1 + 144) |= 0x80u;
          *(a1 + 144) |= 0x40u;
          *(a1 + 144) |= 0x800u;
          *(a1 + 144) |= 0x400u;
          *(a1 + 144) |= 0x1000u;
          *(a1 + 144) |= 0x100u;
          *(a1 + 144) |= 0x200u;
          goto LABEL_239;
        }

        if (v15)
        {
          while (1)
          {
LABEL_220:
            v97 = *v15++;
            v96 = v97;
            if (v97 > 9)
            {
              if (v96 > 13)
              {
                if (v96 == 14)
                {
                  v98 = 256;
                }

                else
                {
                  if (v96 != 18)
                  {
                    continue;
                  }

                  v98 = 512;
                }
              }

              else if (v96 == 10)
              {
                v98 = 1024;
              }

              else
              {
                if (v96 != 11)
                {
                  continue;
                }

                v98 = 4096;
              }

              goto LABEL_237;
            }

            if (v96 > 7)
            {
              break;
            }

            if (v96 == 1)
            {
              v98 = 128;
LABEL_237:
              *(a1 + 144) |= v98;
              continue;
            }

            if (!v96)
            {
              goto LABEL_239;
            }
          }

          if (v96 == 8)
          {
            v98 = 64;
          }

          else
          {
            if (v96 != 9)
            {
              goto LABEL_220;
            }

            v98 = 2048;
          }

          goto LABEL_237;
        }

LABEL_239:
        if (v25)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v105)
        {
          v99 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 15:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 144) |= 1u;
        while (1)
        {
          LOBYTE(v106) = 0;
          v50 = objc_msgSend_position(v3) + 1;
          if (v50 >= objc_msgSend_position(v3) && (v51 = objc_msgSend_position(v3) + 1, v51 <= [v3 length]))
          {
            v52 = [v3 data];
            [v52 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v49 |= (v106 & 0x7F) << v47;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v23 = v48++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_183;
          }
        }

        if ([v3 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v49;
        }

LABEL_183:
        v94 = 108;
        goto LABEL_206;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 144) |= 2u;
        while (1)
        {
          LOBYTE(v106) = 0;
          v37 = objc_msgSend_position(v3) + 1;
          if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
          {
            v39 = [v3 data];
            [v39 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v36 |= (v106 & 0x7F) << v34;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v23 = v35++ >= 9;
          if (v23)
          {
            v40 = 0;
            goto LABEL_175;
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

LABEL_175:
        v94 = 112;
LABEL_206:
        *(a1 + v94) = v40;
        goto LABEL_207;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_170;
        }

        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 144) |= 0x10u;
        while (1)
        {
          LOBYTE(v106) = 0;
          v75 = objc_msgSend_position(v3) + 1;
          if (v75 >= objc_msgSend_position(v3) && (v76 = objc_msgSend_position(v3) + 1, v76 <= [v3 length]))
          {
            v77 = [v3 data];
            [v77 getBytes:&v106 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v74 |= (v106 & 0x7F) << v72;
          if ((v106 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v23 = v73++ >= 9;
          if (v23)
          {
            v78 = 0;
            goto LABEL_197;
          }
        }

        v78 = (v74 != 0) & ~[v3 hasError];
LABEL_197:
        *(a1 + 140) = v78;
        goto LABEL_207;
      case 18:
        if (!v27 || (*(a1 + 144) & 0x200) != 0)
        {
          goto LABEL_170;
        }

        v65 = PBReaderReadString();
        if (v65)
        {
          [(GEOActiveTileSet *)a1 _addNoFlagsDeviceSKUAllowlist:v65];
        }

        goto LABEL_159;
      default:
        if ((v102 & 1) == 0 || (*(a1 + 144) & 0x20) != 0)
        {
LABEL_170:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_246;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v92 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v93 = *(a1 + 16);
            *(a1 + 16) = v92;
          }

          if (!PBUnknownFieldAdd())
          {
            v25 = 0;
            goto LABEL_216;
          }
        }

        goto LABEL_207;
    }
  }
}

uint64_t GEOMuninBucketReadAllFrom(uint64_t a1, void *a2)
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
        if (v14 == 5)
        {
          break;
        }

        if (v14 == 4)
        {
          v22 = PBReaderReadString();
          v23 = *(a1 + 16);
          *(a1 + 16) = v22;
        }

        else
        {
          if (v14 == 3)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v38 = 0;
              v18 = objc_msgSend_position(v3);
              if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
              {
                v20 = [v3 data];
                [v20 getBytes:&v38 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v17 |= (v38 & 0x7F) << v15;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_52;
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

LABEL_52:
            v32 = 24;
LABEL_53:
            *(a1 + v32) = v21;
            goto LABEL_54;
          }

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
      *(a1 + 32) |= 2u;
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
          v21 = 0;
          goto LABEL_48;
        }
      }

      if ([v3 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v26;
      }

LABEL_48:
      v32 = 28;
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

void _GEOPDComponentFilterCallReadAllRecursiveWithoutSynchronized(void *a1)
{
  [(GEOPDTransitScheduleFilter *)a1[88] readAll:?];
  [(GEOPDETAFilter *)a1[26] readAll:?];
  [(GEOPDCaptionedPhotoFilter *)a1[17] readAll:?];
  [(GEOPDTransitTripStopTimeFilter *)a1[91] readAll:?];
  v2 = a1[18];

  [(GEOPDCategorizedPhotosFilter *)v2 readAll:?];
}

void *MapsFeature_IsEnabled_VisitedPlaces()
{
  result = GEOConfigGetBOOL(64, &MapsFeaturesConfig_VisitedPlaces_Metadata);
  if (result)
  {

    return GEOIsFeatureActive(@"MapsLuck");
  }

  return result;
}

void sub_18665E4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GEOPDPlaceRequestParametersHasSensitiveFields(id *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [(GEOPDPlaceRequestParameters *)a1 searchParameters];
  if (GEOPDSearchParametersHasSensitiveFields(v4, a2))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GEOPDPlaceRequestParameters *)a1 reverseGeocodingParameters];
    if (GEOPDReverseGeocodingParametersHasSensitiveFields(v6))
    {
      v5 = 1;
    }

    else
    {
      v7 = [(GEOPDPlaceRequestParameters *)a1 merchantLookupParameters];
      if (GEOPDMerchantLookupParametersHasSensitiveFields(v7, a2))
      {
        v5 = 1;
      }

      else
      {
        v8 = [(GEOPDPlaceRequestParameters *)a1 autocompleteParameters];
        if (GEOPDAutocompleteParametersHasSensitiveFields(v8, a2))
        {
          v5 = 1;
        }

        else
        {
          v9 = [(GEOPDPlaceRequestParameters *)a1 externalTransitLookupParameters];
          if (GEOPDExternalTransitLookupParametersHasSensitiveFields(v9))
          {
            v5 = 1;
          }

          else
          {
            v10 = [(GEOPDPlaceRequestParameters *)a1 batchReverseGeocodingParameters];
            if (GEOPDBatchReverseGeocodingParametersHasSensitiveFields(v10))
            {
              v5 = 1;
            }

            else
            {
              v11 = [(GEOPDPlaceRequestParameters *)a1 wifiFingerprintParameters];
              if (GEOPDWifiFingerprintParametersHasSensitiveFields(v11, a2))
              {
                v5 = 1;
              }

              else
              {
                v12 = [(GEOPDPlaceRequestParameters *)a1 groundViewLabelParameters];
                if (GEOPDGroundViewLabelParametersHasSensitiveFields(v12))
                {
                  v5 = 1;
                }

                else
                {
                  v16 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyScheduleLookupParameters];
                  if (GEOPDTransitNearbyScheduleLookupParametersHasSensitiveFields(v16, a2))
                  {
                    v5 = 1;
                  }

                  else
                  {
                    v15 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyPaymentMethodLookupParameters];
                    if (GEOPDTransitNearbyPaymentMethodLookupParametersHasSensitiveFields(v15, a2))
                    {
                      v5 = 1;
                    }

                    else
                    {
                      v13 = [(GEOPDPlaceRequestParameters *)a1 placeDescriptorResolutionParameters];
                      v5 = GEOPDPlaceDescriptorResolutionParametersHasSensitiveFields(v13);
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

  return v5;
}

id *GEOPDSearchParametersHasSensitiveFields(id *result, uint64_t a2)
{
  if (result)
  {
    v3 = [(GEOPDSearchParameters *)result suggestionEntry];
    v4 = GEOPDAutocompleteEntryHasSensitiveFields(v3, a2);

    return v4;
  }

  return result;
}

uint64_t GEOPDReverseGeocodingParametersHasSensitiveFields(id *a1)
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
  v1 = [(GEOPDReverseGeocodingParameters *)a1 extendedLocations];
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

void GEOPDPlaceRequestParametersClearSensitiveFields(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1 && ([(GEOPDPlaceRequestParameters *)a1 _readSearchParameters], *(a1 + 392)) && ([(GEOPDPlaceRequestParameters *)a1 searchParameters], v6 = objc_claimAutoreleasedReturnValue(), v7 = GEOPDSearchParametersHasSensitiveFields(v6, a2), v6, v7))
  {
    v8 = [(GEOPDPlaceRequestParameters *)a1 searchParameters];
    v9 = [v8 copy];

    GEOPDSearchParametersClearSensitiveFields(v9, a2, 0);
    [(GEOPDPlaceRequestParameters *)a1 setSearchParameters:v9];
  }

  else
  {
    v10 = [(GEOPDPlaceRequestParameters *)a1 searchParameters];
    v11 = v10;
    if (v10)
    {
      GEOPDSearchParametersClearSensitiveFields(v10, a2, 1);
    }

    if (!v5)
    {
      goto LABEL_17;
    }
  }

  [(GEOPDPlaceRequestParameters *)a1 _readReverseGeocodingParameters];
  if (*(a1 + 368))
  {
    v12 = [(GEOPDPlaceRequestParameters *)a1 reverseGeocodingParameters];
    HasSensitiveFields = GEOPDReverseGeocodingParametersHasSensitiveFields(v12);

    if (HasSensitiveFields)
    {
      v14 = [(GEOPDPlaceRequestParameters *)a1 reverseGeocodingParameters];
      v15 = [v14 copy];

      GEOPDReverseGeocodingParametersClearSensitiveFields(v15, a2, 0);
      [(GEOPDPlaceRequestParameters *)a1 setReverseGeocodingParameters:v15];

      goto LABEL_14;
    }
  }

LABEL_17:
  v20 = [(GEOPDPlaceRequestParameters *)a1 reverseGeocodingParameters];
  v21 = v20;
  if (v20)
  {
    GEOPDReverseGeocodingParametersClearSensitiveFields(v20, a2, 1);
  }

  if (!v5)
  {
    v22 = [(GEOPDPlaceRequestParameters *)a1 merchantLookupParameters];
    [v22 clearSensitiveFields:a2];

    goto LABEL_21;
  }

LABEL_14:
  [(GEOPDPlaceRequestParameters *)a1 _readMerchantLookupParameters];
  if (*(a1 + 256) && ([(GEOPDPlaceRequestParameters *)a1 merchantLookupParameters], v16 = objc_claimAutoreleasedReturnValue(), v17 = GEOPDMerchantLookupParametersHasSensitiveFields(v16, a2), v16, v17))
  {
    v18 = [(GEOPDPlaceRequestParameters *)a1 merchantLookupParameters];
    v19 = [v18 copy];

    GEOPDMerchantLookupParametersClearSensitiveFields(v19, a2, 0);
    [(GEOPDPlaceRequestParameters *)a1 setMerchantLookupParameters:v19];
  }

  else
  {
    v19 = [(GEOPDPlaceRequestParameters *)a1 merchantLookupParameters];
    [v19 clearSensitiveFields:a2];
  }

  [(GEOPDPlaceRequestParameters *)a1 _readAutocompleteParameters];
  if (!*(a1 + 64) || ([(GEOPDPlaceRequestParameters *)a1 autocompleteParameters], v37 = objc_claimAutoreleasedReturnValue(), v38 = GEOPDAutocompleteParametersHasSensitiveFields(v37, a2), v37, !v38))
  {
LABEL_21:
    v23 = [(GEOPDPlaceRequestParameters *)a1 autocompleteParameters];
    [v23 clearSensitiveFields:a2];

    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  v39 = [(GEOPDPlaceRequestParameters *)a1 autocompleteParameters];
  v40 = [v39 copy];

  v41 = [v40 allEntriesWithBrowse];
  [v41 clearSensitiveFields:a2];

  [(GEOPDPlaceRequestParameters *)a1 setAutocompleteParameters:v40];
LABEL_49:
  [(GEOPDPlaceRequestParameters *)a1 _readExternalTransitLookupParameters];
  if (*(a1 + 176))
  {
    v42 = [(GEOPDPlaceRequestParameters *)a1 externalTransitLookupParameters];
    v43 = GEOPDExternalTransitLookupParametersHasSensitiveFields(v42);

    if (v43)
    {
      v44 = [(GEOPDPlaceRequestParameters *)a1 externalTransitLookupParameters];
      v45 = [v44 copy];

      GEOPDExternalTransitLookupParametersClearSensitiveFields(v45, a2, 0);
      [(GEOPDPlaceRequestParameters *)a1 setExternalTransitLookupParameters:v45];

      goto LABEL_52;
    }
  }

LABEL_22:
  v24 = [(GEOPDPlaceRequestParameters *)a1 externalTransitLookupParameters];
  v25 = v24;
  if (v24)
  {
    GEOPDExternalTransitLookupParametersClearSensitiveFields(v24, a2, 1);
  }

  if (!v5)
  {
LABEL_25:
    v26 = [(GEOPDPlaceRequestParameters *)a1 batchReverseGeocodingParameters];
    v27 = v26;
    if (v26)
    {
      GEOPDBatchReverseGeocodingParametersClearSensitiveFields(v26, a2, 1);
    }

    if (!v5)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_52:
  [(GEOPDPlaceRequestParameters *)a1 _readBatchReverseGeocodingParameters];
  if (!*(a1 + 96))
  {
    goto LABEL_25;
  }

  v46 = [(GEOPDPlaceRequestParameters *)a1 batchReverseGeocodingParameters];
  v47 = GEOPDBatchReverseGeocodingParametersHasSensitiveFields(v46);

  if (!v47)
  {
    goto LABEL_25;
  }

  v48 = [(GEOPDPlaceRequestParameters *)a1 batchReverseGeocodingParameters];
  v49 = [v48 copy];

  GEOPDBatchReverseGeocodingParametersClearSensitiveFields(v49, a2, 0);
  [(GEOPDPlaceRequestParameters *)a1 setBatchReverseGeocodingParameters:v49];

LABEL_55:
  [(GEOPDPlaceRequestParameters *)a1 _readWifiFingerprintParameters];
  if (*(a1 + 472))
  {
    v50 = [(GEOPDPlaceRequestParameters *)a1 wifiFingerprintParameters];
    v51 = GEOPDWifiFingerprintParametersHasSensitiveFields(v50, a2);

    if (v51)
    {
      v52 = [(GEOPDPlaceRequestParameters *)a1 wifiFingerprintParameters];
      v53 = [v52 copy];

      GEOPDWifiFingerprintParametersClearSensitiveFields(v53, a2, 0);
      [(GEOPDPlaceRequestParameters *)a1 setWifiFingerprintParameters:v53];

      goto LABEL_58;
    }
  }

LABEL_28:
  v28 = [(GEOPDPlaceRequestParameters *)a1 wifiFingerprintParameters];
  v29 = v28;
  if (v28)
  {
    GEOPDWifiFingerprintParametersClearSensitiveFields(v28, a2, 1);
  }

  if (!v5)
  {
LABEL_31:
    v30 = [(GEOPDPlaceRequestParameters *)a1 groundViewLabelParameters];
    v31 = v30;
    if (v30)
    {
      GEOPDGroundViewLabelParametersClearSensitiveFields(v30, a2, 1);
    }

    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_61;
  }

LABEL_58:
  [(GEOPDPlaceRequestParameters *)a1 _readGroundViewLabelParameters];
  if (!*(a1 + 200))
  {
    goto LABEL_31;
  }

  v54 = [(GEOPDPlaceRequestParameters *)a1 groundViewLabelParameters];
  v55 = GEOPDGroundViewLabelParametersHasSensitiveFields(v54);

  if (!v55)
  {
    goto LABEL_31;
  }

  v56 = [(GEOPDPlaceRequestParameters *)a1 groundViewLabelParameters];
  v57 = [v56 copy];

  GEOPDGroundViewLabelParametersClearSensitiveFields(v57, a2, 0);
  [(GEOPDPlaceRequestParameters *)a1 setGroundViewLabelParameters:v57];

LABEL_61:
  [(GEOPDPlaceRequestParameters *)a1 _readTransitNearbyScheduleLookupParameters];
  if (*(a1 + 440))
  {
    v58 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyScheduleLookupParameters];
    v59 = GEOPDTransitNearbyScheduleLookupParametersHasSensitiveFields(v58, a2);

    if (v59)
    {
      v60 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyScheduleLookupParameters];
      v61 = [v60 copy];

      GEOPDTransitNearbyScheduleLookupParametersClearSensitiveFields(v61, a2, 0);
      [(GEOPDPlaceRequestParameters *)a1 setTransitNearbyScheduleLookupParameters:v61];

      goto LABEL_64;
    }
  }

LABEL_34:
  v32 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyScheduleLookupParameters];
  v33 = v32;
  if (v32)
  {
    GEOPDTransitNearbyScheduleLookupParametersClearSensitiveFields(v32, a2, 1);
  }

  if (!v5)
  {
LABEL_37:
    v34 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyPaymentMethodLookupParameters];
    v35 = v34;
    if (v34)
    {
      GEOPDTransitNearbyPaymentMethodLookupParametersClearSensitiveFields(v34, a2, 1);
    }

    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_67;
  }

LABEL_64:
  [(GEOPDPlaceRequestParameters *)a1 _readTransitNearbyPaymentMethodLookupParameters];
  if (!*(a1 + 432))
  {
    goto LABEL_37;
  }

  v62 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyPaymentMethodLookupParameters];
  v63 = GEOPDTransitNearbyPaymentMethodLookupParametersHasSensitiveFields(v62, a2);

  if (!v63)
  {
    goto LABEL_37;
  }

  v64 = [(GEOPDPlaceRequestParameters *)a1 transitNearbyPaymentMethodLookupParameters];
  v65 = [v64 copy];

  GEOPDTransitNearbyPaymentMethodLookupParametersClearSensitiveFields(v65, a2, 0);
  [(GEOPDPlaceRequestParameters *)a1 setTransitNearbyPaymentMethodLookupParameters:v65];

LABEL_67:
  [(GEOPDPlaceRequestParameters *)a1 _readPlaceDescriptorResolutionParameters];
  if (*(a1 + 288))
  {
    v66 = [(GEOPDPlaceRequestParameters *)a1 placeDescriptorResolutionParameters];
    v67 = GEOPDPlaceDescriptorResolutionParametersHasSensitiveFields(v66);

    if (v67)
    {
      v68 = [(GEOPDPlaceRequestParameters *)a1 placeDescriptorResolutionParameters];
      v69 = [v68 copy];

      GEOPDPlaceDescriptorResolutionParametersClearSensitiveFields(v69, a2, 0);
      [(GEOPDPlaceRequestParameters *)a1 setPlaceDescriptorResolutionParameters:v69];
      goto LABEL_42;
    }
  }

LABEL_40:
  v36 = [(GEOPDPlaceRequestParameters *)a1 placeDescriptorResolutionParameters];
  if (v36)
  {
    v69 = v36;
    GEOPDPlaceDescriptorResolutionParametersClearSensitiveFields(v36, a2, 1);
  }

  else
  {
    v69 = 0;
  }

LABEL_42:
}

void *GEOPDReverseGeocodingParametersClearSensitiveFields(uint64_t a1, uint64_t a2, int a3)
{
  [(GEOPDReverseGeocodingParameters *)a1 _readExtendedLocations];
  result = [*(a1 + 24) count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v8 = [*(a1 + 24) objectAtIndexedSubscript:i];
      v9 = v8;
      if (a3 && GEOLocationHasSensitiveFields(v8))
      {
        v10 = [v9 copy];
        GEOLocationClearSensitiveFields(v10);
        [*(a1 + 24) replaceObjectAtIndex:i withObject:v10];
      }

      else
      {
        [v9 clearSensitiveFields:a2];
      }

      result = [*(a1 + 24) count];
    }
  }

  return result;
}

void *GEOLocationClearSensitiveFields(_DWORD *a1)
{
  v2 = a1[45];
  if ((v2 & 0x20) != 0)
  {
    a1[45] = v2 | 0x2000000;
    a1[45] &= ~0x20u;
    v2 = a1[45];
    if ((v2 & 0x80000) == 0)
    {
LABEL_3:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  a1[45] = v2 | 0x2000000;
  a1[45] &= ~0x80000u;
  v2 = a1[45];
  if ((v2 & 0x100000) == 0)
  {
LABEL_4:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  a1[45] = v2 | 0x2000000;
  a1[45] &= ~0x100000u;
  v2 = a1[45];
  if ((v2 & 0x100) == 0)
  {
LABEL_5:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  a1[45] = v2 | 0x2000000;
  a1[45] &= ~0x100u;
  v2 = a1[45];
  if ((v2 & 0x8000) != 0)
  {
LABEL_6:
    a1[45] = v2 | 0x2000000;
    a1[45] &= ~0x8000u;
  }

LABEL_7:
  result = [a1 setRawCoordinate:0];
  v4 = a1[45];
  if ((v4 & 0x10) != 0)
  {
    a1[45] = v4 | 0x2000000;
    a1[45] &= ~0x10u;
    v4 = a1[45];
    if ((v4 & 0x4000) == 0)
    {
LABEL_9:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 0x4000) == 0)
  {
    goto LABEL_9;
  }

  a1[45] = v4 | 0x2000000;
  a1[45] &= ~0x4000u;
  v4 = a1[45];
  if ((v4 & 0x1000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  a1[45] = v4 | 0x2000000;
  a1[45] &= ~0x1000u;
  v4 = a1[45];
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_22:
  a1[45] = v4 | 0x2000000;
  a1[45] &= ~0x10000u;
  v4 = a1[45];
  if ((v4 & 0x20000) == 0)
  {
    return result;
  }

LABEL_12:
  a1[45] = v4 | 0x2000000;
  a1[45] &= ~0x20000u;
  return result;
}

uint64_t GEOPDAddressObjectFilterReadAllFrom(uint64_t a1, void *a2)
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
              LOBYTE(v22) = 0;
              goto LABEL_38;
            }
          }

          v22 = (v18 != 0) & ~[v3 hasError];
LABEL_38:
          *(a1 + 24) = v22;
        }

        else if (v14 == 1)
        {
          v15 = PBReaderReadString();
          if (v15)
          {
            [(GEOPDAddressObjectFilter *)a1 addLibraryVersion:v15];
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
            goto LABEL_41;
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
LABEL_41:
    v26 = 0;
  }

  objc_sync_exit(v3);

  return v26;
}

void *GEOPDPlaceRequestParametersReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 484))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceRequestParametersReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDPlaceRequestParametersReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceRequestParametersReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceRequestParametersReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceRequestParametersCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 488));
  return Specified;
}

void *GEOPDPlaceRequestParametersReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = 0;
  v11 = *(a1 + 492);
  v12 = vdupq_n_s64(v11);
  v13 = vdupq_n_s32(v11);
  v14.i32[0] = v11;
  v14.i32[1] = v11 >> 33;
  v15 = vshlq_u32(v13, xmmword_187FBD2F0);
  v16 = vshlq_u32(v13, xmmword_187FBD300);
  v17 = vshr_n_u32(*v13.i8, 0x1FuLL);
  v18 = vshl_u32(*v13.i8, 0xFFFFFFE9FFFFFFEALL);
  v19 = vshlq_u32(v13, xmmword_187FBD420);
  v20 = vshl_u32(*v13.i8, 0xFFFFFFE3FFFFFFF2);
  v21 = vshl_u32(*v13.i8, 0xFFFFFFFCFFFFFFF7);
  v22 = vshlq_u32(v13, xmmword_187FBD350);
  v23 = vshl_u32(*v13.i8, 0xFFFFFFFEFFFFFFFFLL);
  v24 = vshl_u32(*v13.i8, 0xFFFFFFEEFFFFFFF4);
  v13.i32[0] = v11 >> 57;
  v25.i32[0] = v11 >> 47;
  v25.i32[1] = v11 >> 11;
  v26.i32[0] = v11 >> 30;
  v26.i32[1] = v11 >> 41;
  v27.i64[0] = 0x100000001;
  v27.i64[1] = 0x100000001;
  v28 = vaddvq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD2E0), vshlq_u64(v12, xmmword_187FBD3E0)), v27));
  v29.i32[0] = vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD3D0), vshlq_u64(v12, xmmword_187FBD3C0)), v27), vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD400), vshlq_u64(v12, xmmword_187FBD3F0)), v27)));
  v30 = vandq_s8(v15, v27);
  v31 = vandq_s8(v16, v27);
  v13.i32[0] = vand_s8(*v13.i8, 0x100000001).u32[0];
  v13.i32[1] = v17.i32[1];
  v15.i32[0] = v11 >> 46;
  v32 = vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD410)), 0x100000001);
  v33 = vandq_s8(v19, v27);
  v34 = vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD430)), 0x100000001);
  v15.i32[1] = v11 >> 3;
  v35 = vandq_s8(v22, v27);
  *v22.i8 = vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD440)), 0x100000001);
  v29.i32[1] = (v11 >> 55) & 1;
  *v12.i8 = vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD450)), 0x100000001), vand_s8(v24, 0x100000001));
  v24.i32[0] = (v11 >> 25) & 1;
  v24.i32[1] = v28;
  *v12.i8 = vadd_s32(vadd_s32(vadd_s32(vadd_s32(vand_s8(v18, 0x100000001), vand_s8(v25, 0x100000001)), vadd_s32(vadd_s32(v32, vand_s8(v20, 0x100000001)), vadd_s32(v34, vand_s8(v26, 0x100000001)))), vadd_s32(v29, vand_s8(v14, 0x100000001))), vadd_s32(vadd_s32(vadd_s32(vand_s8(v21, 0x100000001), vand_s8(*v15.i8, 0x100000001)), vadd_s32(*v22.i8, vand_s8(v23, 0x100000001))), vadd_s32(*v12.i8, vadd_s32(*v13.i8, v24))));
  v36 = vadd_s32(*v12.i8, vdup_lane_s32(*v12.i8, 1)).u32[0] + vaddvq_s32(vaddq_s32(vaddq_s32(v35, v33), vaddq_s32(v31, v30)));
  while (1)
  {
    v37 = a3[v6];
    if (v37 > -3)
    {
      break;
    }

    if (v37 == -4)
    {
      ++v36;
      v8 = 1;
      goto LABEL_15;
    }

    if (v37 == -3)
    {
      v7 = 1;
      goto LABEL_15;
    }

LABEL_14:
    ++v36;
LABEL_15:
    ++v6;
  }

  if (v37 == -2)
  {
    v8 = 1;
    goto LABEL_11;
  }

  if (v37 == -1)
  {
    v8 = 1;
    v9 = 1;
LABEL_11:
    v10 = 1;
    goto LABEL_15;
  }

  if (v37)
  {
    goto LABEL_14;
  }

  v38 = v36 > 0x2C;
  v39 = v38 & ~v10 | v8;
  v40 = v10 | v38;
  LODWORD(v68) = v39;
  HIDWORD(v68) = v40 | v8;
  if ((v40 | v7))
  {
    v41 = 0;
  }

  else
  {
    v41 = a3;
  }

  v69 = (v41 == 0) | v40;
  v70 = v40;
  while (2)
  {
    v42 = objc_msgSend_position(v3, v68);
    if (v42 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_453:
      v51 = 1;
      goto LABEL_456;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    while (1)
    {
      LOBYTE(v71) = 0;
      v46 = objc_msgSend_position(v3) + 1;
      if (v46 >= objc_msgSend_position(v3) && (v47 = objc_msgSend_position(v3) + 1, v47 <= [v3 length]))
      {
        v48 = [v3 data];
        [v48 getBytes:&v71 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v45 |= (v71 & 0x7F) << v43;
      if ((v71 & 0x80) == 0)
      {
        break;
      }

      v43 += 7;
      if (v44++ >= 9)
      {
        v45 = 0;
        goto LABEL_33;
      }
    }

    if ([v3 hasError])
    {
      v45 = 0;
    }

LABEL_33:
    v50 = [v3 hasError];
    v51 = 1;
    if ((v50 & 1) != 0 || (v45 & 7) == 4)
    {
      goto LABEL_456;
    }

    v52 = v45 >> 3;
    v53 = v70;
    if ((v69 & 1) == 0)
    {
      v54 = v41;
      do
      {
        v56 = *v54++;
        v55 = v56;
        v53 = v56 != 0;
        if (v56)
        {
          v57 = v55 == v52;
        }

        else
        {
          v57 = 1;
        }
      }

      while (!v57);
    }

    switch(v52)
    {
      case 1:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 0x80) == 0)
        {
          v71 = 0;
          v72 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_455;
          }

          v58 = objc_alloc_init(GEOPDSearchParameters);
          if (GEOPDSearchParametersReadAllFrom(v58, v3, v9 & 1))
          {
            PBReaderRecallMark();
            v59 = 392;
            goto LABEL_334;
          }

          goto LABEL_454;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_455;
        }

        v63 = *(a1 + 492) << 16;
        goto LABEL_451;
      case 2:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 41;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDGeocodingParameters);
        if (!GEOPDGeocodingParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 192;
        goto LABEL_334;
      case 3:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 49;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDCanonicalLocationSearchParameters);
        if (!GEOPDCanonicalLocationSearchParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 128;
        goto LABEL_334;
      case 4:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 19;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDReverseGeocodingParameters);
        if (!GEOPDReverseGeocodingParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 368;
        goto LABEL_334;
      case 5:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 28;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPlaceLookupParameters);
        if (!GEOPDPlaceLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 296;
        goto LABEL_334;
      case 6:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 33;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDMerchantLookupParameters);
        if (!GEOPDMerchantLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 256;
        goto LABEL_334;
      case 7:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 26;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPlaceRefinementParameters);
        if (!GEOPDPlaceRefinementParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 312;
        goto LABEL_334;
      case 8:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 13;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDSiriSearchParameters);
        if (!GEOPDSiriSearchParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 416;
        goto LABEL_334;
      case 9:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 37;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDLocationDirectedSearchParameters);
        if (!GEOPDLocationDirectedSearchParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 224;
        goto LABEL_334;
      case 10:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 57;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDAutocompleteParameters);
        if (!GEOPDAutocompleteParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 64;
        goto LABEL_334;
      case 11:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 50;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDSearchBrowseCategorySuggestionParameters);
        if (!GEOPDSearchBrowseCategorySuggestionParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 120;
        goto LABEL_334;
      case 12:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 48;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDCategorySearchParameters);
        if (!GEOPDCategorySearchParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 136;
        goto LABEL_334;
      case 13:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 497))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 23;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPopularNearbySearchParameters);
        if (!GEOPDPopularNearbySearchParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 336;
        goto LABEL_334;
      case 14:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 498))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 15;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDSearchZeroKeywordCategorySuggestionParameters);
        if (!GEOPDSearchZeroKeywordCategorySuggestionParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 400;
        goto LABEL_334;
      case 15:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 17;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDSearchFieldPlaceholderParameters);
        if (!GEOPDSearchFieldPlaceholderParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 384;
        goto LABEL_334;
      case 16:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 54;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDBatchPopularNearbySearchParameters);
        if (!GEOPDBatchPopularNearbySearchParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 88;
        goto LABEL_334;
      case 17:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 499))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 7;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDVendorSpecificPlaceRefinementParameters);
        if (!GEOPDVendorSpecificPlaceRefinementParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 464;
        goto LABEL_334;
      case 18:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 32;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDNearbySearchParameters);
        if (!GEOPDNearbySearchParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 264;
        goto LABEL_334;
      case 19:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 62;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDAddressObjectGeocodingParameters);
        if (!GEOPDAddressObjectGeocodingParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 24;
        goto LABEL_334;
      case 20:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 14;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDSearchZeroKeywordWithSearchResultsSuggestionParameters);
        if (!GEOPDSearchZeroKeywordWithSearchResultsSuggestionParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 408;
        goto LABEL_334;
      case 21:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 43;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDExternalTransitLookupParameters);
        if (!GEOPDExternalTransitLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 176;
        goto LABEL_334;
      case 22:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 42;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDFeatureIdGeocodingParameters);
        if (!GEOPDFeatureIdGeocodingParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 184;
        goto LABEL_334;
      case 23:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 35;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDMapsIdentifierPlaceLookupParameters);
        if (!GEOPDMapsIdentifierPlaceLookupParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 240;
        goto LABEL_334;
      case 25:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 53;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDBatchReverseGeocodingParameters);
        if (!GEOPDBatchReverseGeocodingParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 96;
        goto LABEL_334;
      case 30:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 51;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDBrandLookupParameters);
        if (!GEOPDBrandLookupParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 112;
        goto LABEL_334;
      case 32:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 499) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 6;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDWifiFingerprintParameters);
        if (!GEOPDWifiFingerprintParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 472;
        goto LABEL_334;
      case 34:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 38;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDIpGeoLookupParameters);
        if (!GEOPDIpGeoLookupParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 216;
        goto LABEL_334;
      case 35:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 40;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDGroundViewLabelParameters);
        if (!GEOPDGroundViewLabelParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 200;
        goto LABEL_334;
      case 36:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 493) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 52;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDBatchSpatialLookupParameters);
        if (!GEOPDBatchSpatialLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 104;
        goto LABEL_334;
      case 37:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 8;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDTransitVehiclePositionParameters);
        if (!GEOPDTransitVehiclePositionParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 456;
        goto LABEL_334;
      case 38:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 30;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPlaceCollectionLookupParameters);
        if (!GEOPDPlaceCollectionLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 280;
        goto LABEL_334;
      case 39:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 9;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPBTransitScheduleLookupParameters);
        if (!GEOPBTransitScheduleLookupParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 448;
        goto LABEL_334;
      case 40:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 56;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDBatchCategoryLookupParameters);
        if (!GEOPDBatchCategoryLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 72;
        goto LABEL_334;
      case 41:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 493))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 55;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDBatchMerchantLookupBrandParameters);
        if (!GEOPDBatchMerchantLookupBrandParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 80;
        goto LABEL_334;
      case 42:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 494))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 47;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDChildPlaceLookupByCategoryParameters);
        if (!GEOPDChildPlaceLookupByCategoryParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 144;
        goto LABEL_334;
      case 43:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 46;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDCollectionSuggestionParameters);
        if (!GEOPDCollectionSuggestionParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 152;
        goto LABEL_334;
      case 44:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 34;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDMapsSearchHomeParameters);
        if (!GEOPDMapsSearchHomeParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 248;
        goto LABEL_334;
      case 45:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 27;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPlaceQuestionnaireLookupParameters);
        if (!GEOPDPlaceQuestionnaireLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 304;
        goto LABEL_334;
      case 46:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 22;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPublisherViewParameters);
        if (!GEOPDPublisherViewParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 344;
        goto LABEL_334;
      case 47:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 59;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDAllCollectionsViewParameters);
        if (!GEOPDAllCollectionsViewParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 48;
        goto LABEL_334;
      case 48:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 60;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDAirportEntityPlaceLookupParameters);
        if (!GEOPDAirportEntityPlaceLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 40;
        goto LABEL_334;
      case 49:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 12;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDTerritoryLookupParameters);
        if (!GEOPDTerritoryLookupParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 424;
        goto LABEL_334;
      case 50:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 10;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDTransitNearbyScheduleLookupParameters);
        if (!GEOPDTransitNearbyScheduleLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 440;
        goto LABEL_334;
      case 51:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 495) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 36;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDMapsHomeParameters);
        if (!GEOPDMapsHomeParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 232;
        goto LABEL_334;
      case 52:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 58;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDAllGuidesLocationsViewParameters);
        if (!GEOPDAllGuidesLocationsViewParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 56;
        goto LABEL_334;
      case 53:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 495))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 39;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDGuidesHomeParameters);
        if (!GEOPDGuidesHomeParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 208;
        goto LABEL_334;
      case 54:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 44;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDExtendedGeoLookupParameters);
        if (!GEOPDExtendedGeoLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 168;
        goto LABEL_334;
      case 55:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 21;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDQueryUnderstandingParameters);
        if (!GEOPDQueryUnderstandingParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 352;
        goto LABEL_334;
      case 56:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 24;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPoiAtAddressLookupParameters);
        if (!GEOPDPoiAtAddressLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 328;
        goto LABEL_334;
      case 57:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 498) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 11;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDTransitNearbyPaymentMethodLookupParameters);
        if (!GEOPDTransitNearbyPaymentMethodLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 432;
        goto LABEL_334;
      case 58:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 25;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPlacecardEnrichmentParameters);
        if (!GEOPDPlacecardEnrichmentParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 320;
        goto LABEL_334;
      case 59:
        if (!v53)
        {
          goto LABEL_335;
        }

        if (*(a1 + 496))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 31;
LABEL_451:
          v6 += v63 >> 63;
          goto LABEL_452;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDOfflineRegionNameParameters);
        if (GEOPDOfflineRegionNameParametersReadAllFrom(v58, v3, v9 & 1))
        {
          PBReaderRecallMark();
          v59 = 272;
LABEL_334:
          v62 = *(a1 + v59);
          *(a1 + v59) = v58;

          --v6;
LABEL_452:
          if (!(BYTE4(v68) & 1 | (v6 != 0)))
          {
            goto LABEL_453;
          }

          continue;
        }

LABEL_454:

LABEL_455:
        v51 = 0;
LABEL_456:
        if (v68)
        {
LABEL_457:
          *(a1 + 492) |= 1uLL;
        }

        if (v70 & 1 | ((v51 & 1) == 0))
        {
          *(a1 + 492) |= 0x3FFFFFFFFFFFFFEuLL;
        }

        else if (v41)
        {
          while (1)
          {
            v64 = *v41++;
            v65 = 0x800000000000;
            switch(v64)
            {
              case 0:
                goto LABEL_519;
              case 1:
                goto LABEL_518;
              case 2:
                v65 = 0x400000;
                goto LABEL_518;
              case 3:
                v65 = 0x4000;
                goto LABEL_518;
              case 4:
                v65 = 0x100000000000;
                goto LABEL_518;
              case 5:
                v65 = 0x800000000;
                goto LABEL_518;
              case 6:
                v65 = 0x40000000;
                goto LABEL_518;
              case 7:
                v65 = 0x2000000000;
                goto LABEL_518;
              case 8:
                v65 = 0x4000000000000;
                goto LABEL_518;
              case 9:
                v65 = 0x4000000;
                goto LABEL_518;
              case 10:
                v65 = 64;
                goto LABEL_518;
              case 11:
                v65 = 0x2000;
                goto LABEL_518;
              case 12:
                v65 = 0x8000;
                goto LABEL_518;
              case 13:
                v65 = 0x10000000000;
                goto LABEL_518;
              case 14:
                v65 = 0x1000000000000;
                goto LABEL_518;
              case 15:
                v65 = 0x400000000000;
                goto LABEL_518;
              case 16:
                v65 = 512;
                goto LABEL_518;
              case 17:
                v65 = 0x100000000000000;
                goto LABEL_518;
              case 18:
                v65 = 0x80000000;
                goto LABEL_518;
              case 19:
                v65 = 2;
                goto LABEL_518;
              case 20:
                v65 = 0x2000000000000;
                goto LABEL_518;
              case 21:
                v65 = 0x100000;
                goto LABEL_518;
              case 22:
                v65 = 0x200000;
                goto LABEL_518;
              case 23:
                v65 = 0x10000000;
                goto LABEL_518;
              case 25:
                v65 = 1024;
                goto LABEL_518;
              case 30:
                v65 = 4096;
                goto LABEL_518;
              case 32:
                v65 = 0x200000000000000;
                goto LABEL_518;
              case 34:
                v65 = 0x2000000;
                goto LABEL_518;
              case 35:
                v65 = 0x800000;
                goto LABEL_518;
              case 36:
                v65 = 2048;
                goto LABEL_518;
              case 37:
                v65 = 0x80000000000000;
                goto LABEL_518;
              case 38:
                v65 = 0x200000000;
                goto LABEL_518;
              case 39:
                v65 = 0x40000000000000;
                goto LABEL_518;
              case 40:
                v65 = 128;
                goto LABEL_518;
              case 41:
                v65 = 256;
                goto LABEL_518;
              case 42:
                v65 = 0x10000;
                goto LABEL_518;
              case 43:
                v65 = 0x20000;
                goto LABEL_518;
              case 44:
                v65 = 0x20000000;
                goto LABEL_518;
              case 45:
                v65 = 0x1000000000;
                goto LABEL_518;
              case 46:
                v65 = 0x20000000000;
                goto LABEL_518;
              case 47:
                v65 = 16;
                goto LABEL_518;
              case 48:
                v65 = 8;
                goto LABEL_518;
              case 49:
                v65 = 0x8000000000000;
                goto LABEL_518;
              case 50:
                v65 = 0x20000000000000;
                goto LABEL_518;
              case 51:
                v65 = 0x8000000;
                goto LABEL_518;
              case 52:
                v65 = 32;
                goto LABEL_518;
              case 53:
                v65 = 0x1000000;
                goto LABEL_518;
              case 54:
                v65 = 0x80000;
                goto LABEL_518;
              case 55:
                v65 = 0x40000000000;
                goto LABEL_518;
              case 56:
                v65 = 0x8000000000;
                goto LABEL_518;
              case 57:
                v65 = 0x10000000000000;
                goto LABEL_518;
              case 58:
                v65 = 0x4000000000;
                goto LABEL_518;
              case 59:
                v65 = 0x100000000;
                goto LABEL_518;
              case 60:
                v65 = 0x200000000000;
                goto LABEL_518;
              case 61:
                v65 = 0x80000000000;
                goto LABEL_518;
              case 62:
                v65 = 4;
                goto LABEL_518;
              case 63:
                v65 = 0x400000000;
                goto LABEL_518;
              case 64:
                v65 = 0x40000;
LABEL_518:
                *(a1 + 492) |= v65;
                break;
              default:
                continue;
            }
          }
        }

LABEL_519:
        if (v51)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v70)
        {
          v66 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 60:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 18;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDSearchCapabilitiesParameters);
        if (!GEOPDSearchCapabilitiesParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 376;
        goto LABEL_334;
      case 61:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 497) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 20;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDRefreshIdLookUpParameters);
        if (!GEOPDRefreshIdLookUpParametersReadAllFrom(v58, v3))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 360;
        goto LABEL_334;
      case 62:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 492) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 61;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDAddressRecommendationParameters);
        if (!GEOPDAddressRecommendationParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 32;
        goto LABEL_334;
      case 63:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 496) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 29;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDPlaceDescriptorResolutionParameters);
        if (!GEOPDPlaceDescriptorResolutionParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 288;
        goto LABEL_334;
      case 64:
        if (!v53)
        {
          goto LABEL_335;
        }

        if ((*(a1 + 494) & 4) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }

          v63 = *(a1 + 492) << 45;
          goto LABEL_451;
        }

        v71 = 0;
        v72 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_455;
        }

        v58 = objc_alloc_init(GEOPDExploreGuidesLookupParameters);
        if (!GEOPDExploreGuidesLookupParametersReadAllFrom(v58, v3, v9 & 1))
        {
          goto LABEL_454;
        }

        PBReaderRecallMark();
        v59 = 160;
        goto LABEL_334;
      default:
        if (v68 & 1) == 0 || (*(a1 + 492))
        {
LABEL_335:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_455;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v60 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v61 = *(a1 + 16);
            *(a1 + 16) = v60;
          }

          if (!PBUnknownFieldAdd())
          {
            v51 = 0;
            goto LABEL_457;
          }
        }

        goto LABEL_452;
    }
  }
}

void *GEOPDReverseGeocodingParametersReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDReverseGeocodingParametersReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDReverseGeocodingParametersReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDReverseGeocodingParametersReadAllFrom_initialTag;
  }

  Specified = GEOPDReverseGeocodingParametersReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDReverseGeocodingParametersCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDReverseGeocodingParametersReadSpecified(uint64_t a1, void *a2, int *a3)
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
    goto LABEL_96;
  }

  HIDWORD(v56) = v16 | v8 | v14;
  while (2)
  {
    if ([v3 hasError])
    {
LABEL_94:
      v26 = 1;
      goto LABEL_96;
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
      goto LABEL_96;
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

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        if (v7)
        {
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
              v49 = 0;
              goto LABEL_91;
            }
          }

          v49 = (v45 != 0) & ~[v3 hasError];
LABEL_91:
          *(a1 + 56) = v49;
          goto LABEL_92;
        }

        goto LABEL_84;
      }

      if (v27 != 4)
      {
        goto LABEL_62;
      }

      if (!v28 || (*(a1 + 60) & 8) != 0)
      {
        goto LABEL_84;
      }

      v57 = 0;
      v58 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_115;
      }

      v40 = objc_alloc_init(GEOLocation);
      if (!GEOLocationReadAllFrom(v40, v3, v9 & 1))
      {
        goto LABEL_114;
      }

      PBReaderRecallMark();
      [(GEOPDReverseGeocodingParameters *)a1 _addNoFlagsExtendedLocation:v40];
LABEL_73:

LABEL_92:
      if ((v56 & 0x100000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_93;
    }

    if (v27 != 1)
    {
      if (v27 == 2)
      {
        if (v7)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v57) = 0;
            v36 = objc_msgSend_position(v3) + 1;
            if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
            {
              v38 = [v3 data];
              [v38 getBytes:&v57 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v35 |= (v57 & 0x7F) << v33;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v24 = v34++ >= 9;
            if (v24)
            {
              v39 = 0;
              goto LABEL_89;
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

LABEL_89:
          *(a1 + 52) = v39;
          goto LABEL_92;
        }

LABEL_84:
        v26 = PBReaderSkipValueWithTag();
        if ((v26 & HIDWORD(v56) & 1) == 0)
        {
          goto LABEL_96;
        }

LABEL_93:
        v50 = objc_msgSend_position(v3);
        if (v50 >= [v3 length])
        {
          goto LABEL_94;
        }

        continue;
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
          goto LABEL_97;
        }

        goto LABEL_92;
      }

      goto LABEL_84;
    }

    break;
  }

  if (!v28 || (*(a1 + 60) & 0x10) != 0)
  {
    goto LABEL_84;
  }

  v57 = 0;
  v58 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_115;
  }

  v40 = objc_alloc_init(GEOLatLng);
  if (GEOLatLngReadAllFrom(v40, v3))
  {
    PBReaderRecallMark();
    [(GEOPDReverseGeocodingParameters *)a1 _addNoFlagsLocation:v40];
    goto LABEL_73;
  }

LABEL_114:

LABEL_115:
  v26 = 0;
LABEL_96:
  if (v56)
  {
LABEL_97:
    *(a1 + 60) |= 4u;
  }

  if (v14 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + 60) |= 0x10u;
    *(a1 + 60) |= 8u;
    goto LABEL_108;
  }

  if (v15)
  {
    while (1)
    {
      v52 = *v15++;
      v51 = v52;
      if (v52 == 1)
      {
        break;
      }

      if (v51 == 4)
      {
        v53 = 8;
LABEL_107:
        *(a1 + 60) |= v53;
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
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
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
    if (v14)
    {
      goto LABEL_112;
    }
  }

  return v3;
}

void *GEOLocationReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 132))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOLocationReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 136));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 128) = objc_msgSend_position(v8);
  *(a1 + 132) = [v8 length];
  if (a3)
  {
    v9 = &GEOLocationReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOLocationReadAllFrom_initialTag;
  }

  Specified = GEOLocationReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 64) readAll:1];
    [*(a1 + 24) readAll:1];
    [*(a1 + 72) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 136));
  return Specified;
}

void *GEOLocationReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 136));
  [v3 setLength:*(a1 + 132)];
  [v3 seekToOffset:*(a1 + 128)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (a1 + 180);
  v11 = vld1q_dup_f32(v10);
  v12.i64[0] = 0x100000001;
  v12.i64[1] = 0x100000001;
  v13 = vaddvq_s32(vandq_s8(vshlq_u32(v11, xmmword_187FBEA70), v12));
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

  v15 = v13 > 1;
  v16 = v15 & ~v9 | v8;
  v17 = v9 | v15;
  LODWORD(v152) = v16;
  HIDWORD(v152) = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v153 = (v18 == 0) | v17;
  v154 = v17;
  while (1)
  {
    v19 = objc_msgSend_position(v3, v152);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_305:
      v28 = 1;
      goto LABEL_306;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v155) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v155 & 0x7F) << v20;
      if ((v155 & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v26 = v21++ >= 9;
      if (v26)
      {
        v22 = 0;
        goto LABEL_30;
      }
    }

    if ([v3 hasError])
    {
      v22 = 0;
    }

LABEL_30:
    v27 = [v3 hasError];
    v28 = 1;
    if ((v27 & 1) != 0 || (v22 & 7) == 4)
    {
      goto LABEL_306;
    }

    v29 = v22 >> 3;
    v30 = v154;
    if ((v153 & 1) == 0)
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

    if (v29 <= 100)
    {
      break;
    }

    if (v29 <= 105)
    {
      if (v29 <= 102)
      {
        if (v29 != 101)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_230;
          }

          v56 = 0;
          v57 = 0;
          v58 = 0;
          *(a1 + 180) |= 0x80000u;
          while (1)
          {
            LOBYTE(v155) = 0;
            v59 = objc_msgSend_position(v3) + 1;
            if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
            {
              v61 = [v3 data];
              [v61 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v58 |= (v155 & 0x7F) << v56;
            if ((v155 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v26 = v57++ >= 9;
            if (v26)
            {
              v62 = 0;
              goto LABEL_233;
            }
          }

          v62 = (v58 != 0) & ~[v3 hasError];
LABEL_233:
          v133 = 176;
LABEL_252:
          *(a1 + v133) = v62;
          goto LABEL_304;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_230;
        }

        *(a1 + 180) |= 0x20u;
        v155 = 0;
        v63 = objc_msgSend_position(v3) + 8;
        if (v63 >= objc_msgSend_position(v3) && (v64 = objc_msgSend_position(v3) + 8, v64 <= [v3 length]))
        {
          v136 = [v3 data];
          [v136 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v137 = v155;
        v138 = 88;
LABEL_303:
        *(a1 + v138) = v137;
        goto LABEL_304;
      }

      if (v29 == 103)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_230;
        }

        v96 = 0;
        v97 = 0;
        v98 = 0;
        *(a1 + 180) |= 0x100000u;
        while (1)
        {
          LOBYTE(v155) = 0;
          v99 = objc_msgSend_position(v3) + 1;
          if (v99 >= objc_msgSend_position(v3) && (v100 = objc_msgSend_position(v3) + 1, v100 <= [v3 length]))
          {
            v101 = [v3 data];
            [v101 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v98 |= (v155 & 0x7F) << v96;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v26 = v97++ >= 9;
          if (v26)
          {
            v62 = 0;
            goto LABEL_251;
          }
        }

        v62 = (v98 != 0) & ~[v3 hasError];
LABEL_251:
        v133 = 177;
        goto LABEL_252;
      }

      if (v29 != 104)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_230;
        }

        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 180) |= 0x8000u;
        while (1)
        {
          LOBYTE(v155) = 0;
          v47 = objc_msgSend_position(v3) + 1;
          if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
          {
            v49 = [v3 data];
            [v49 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v46 |= (v155 & 0x7F) << v44;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v26 = v45++ >= 9;
          if (v26)
          {
            v43 = 0;
            goto LABEL_256;
          }
        }

        if ([v3 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v46;
        }

LABEL_256:
        v134 = 160;
        goto LABEL_277;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      *(a1 + 180) |= 0x100u;
      while (1)
      {
        LOBYTE(v155) = 0;
        v72 = objc_msgSend_position(v3) + 1;
        if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
        {
          v74 = [v3 data];
          [v74 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v71 |= (v155 & 0x7F) << v69;
        if ((v155 & 0x80) == 0)
        {
          break;
        }

        v69 += 7;
        v26 = v70++ >= 9;
        if (v26)
        {
          v75 = 0;
          goto LABEL_237;
        }
      }

      if ([v3 hasError])
      {
        v75 = 0;
      }

      else
      {
        v75 = v71;
      }

LABEL_237:
      *(a1 + 112) = v75;
    }

    else
    {
      if (v29 <= 108)
      {
        if (v29 != 106)
        {
          if (v29 != 107)
          {
            if ((v7 & 1) == 0)
            {
              goto LABEL_230;
            }

            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 180) |= 0x4000u;
            while (1)
            {
              LOBYTE(v155) = 0;
              v40 = objc_msgSend_position(v3) + 1;
              if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
              {
                v42 = [v3 data];
                [v42 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v39 |= (v155 & 0x7F) << v37;
              if ((v155 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v26 = v38++ >= 9;
              if (v26)
              {
                v43 = 0;
                goto LABEL_264;
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

LABEL_264:
            v134 = 156;
LABEL_277:
            *(a1 + v134) = v43;
            goto LABEL_304;
          }

          if ((v7 & 1) == 0)
          {
            goto LABEL_230;
          }

          *(a1 + 180) |= 0x10u;
          v155 = 0;
          v88 = objc_msgSend_position(v3) + 8;
          if (v88 >= objc_msgSend_position(v3) && (v89 = objc_msgSend_position(v3) + 8, v89 <= [v3 length]))
          {
            v141 = [v3 data];
            [v141 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          v137 = v155;
          v138 = 80;
          goto LABEL_303;
        }

        if (!v30)
        {
          goto LABEL_230;
        }

        if (*(a1 + 183))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_327;
          }

          v135 = (*(a1 + 180) << 7) >> 31;
LABEL_284:
          v6 += v135;
          goto LABEL_304;
        }

        v155 = 0;
        v156 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_327;
        }

        v35 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v35, v3))
        {
          goto LABEL_326;
        }

        PBReaderRecallMark();
        v36 = 72;
LABEL_219:
        v128 = *(a1 + v36);
        *(a1 + v36) = v35;

        --v6;
        goto LABEL_304;
      }

      switch(v29)
      {
        case 'm':
          if ((v7 & 1) == 0)
          {
            goto LABEL_230;
          }

          v104 = 0;
          v105 = 0;
          v106 = 0;
          *(a1 + 180) |= 0x1000u;
          while (1)
          {
            LOBYTE(v155) = 0;
            v107 = objc_msgSend_position(v3) + 1;
            if (v107 >= objc_msgSend_position(v3) && (v108 = objc_msgSend_position(v3) + 1, v108 <= [v3 length]))
            {
              v109 = [v3 data];
              [v109 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v106 |= (v155 & 0x7F) << v104;
            if ((v155 & 0x80) == 0)
            {
              break;
            }

            v104 += 7;
            v26 = v105++ >= 9;
            if (v26)
            {
              v43 = 0;
              goto LABEL_260;
            }
          }

          if ([v3 hasError])
          {
            v43 = 0;
          }

          else
          {
            v43 = v106;
          }

LABEL_260:
          v134 = 148;
          goto LABEL_277;
        case 'n':
          if ((v7 & 1) == 0)
          {
            goto LABEL_230;
          }

          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 180) |= 0x10000u;
          while (1)
          {
            LOBYTE(v155) = 0;
            v93 = objc_msgSend_position(v3) + 1;
            if (v93 >= objc_msgSend_position(v3) && (v94 = objc_msgSend_position(v3) + 1, v94 <= [v3 length]))
            {
              v95 = [v3 data];
              [v95 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v92 |= (v155 & 0x7F) << v90;
            if ((v155 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v26 = v91++ >= 9;
            if (v26)
            {
              v43 = 0;
              goto LABEL_249;
            }
          }

          if ([v3 hasError])
          {
            v43 = 0;
          }

          else
          {
            v43 = v92;
          }

LABEL_249:
          v134 = 164;
          goto LABEL_277;
        case 'o':
          if ((v7 & 1) == 0)
          {
            goto LABEL_230;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 180) |= 0x20000u;
          while (1)
          {
            LOBYTE(v155) = 0;
            v53 = objc_msgSend_position(v3) + 1;
            if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
            {
              v55 = [v3 data];
              [v55 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v52 |= (v155 & 0x7F) << v50;
            if ((v155 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v26 = v51++ >= 9;
            if (v26)
            {
              v43 = 0;
              goto LABEL_268;
            }
          }

          if ([v3 hasError])
          {
            v43 = 0;
          }

          else
          {
            v43 = v52;
          }

LABEL_268:
          v134 = 168;
          goto LABEL_277;
      }

LABEL_224:
      if ((v152 & 1) == 0 || (*(a1 + 182) & 0x20) != 0)
      {
LABEL_230:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_327;
        }

        goto LABEL_304;
      }

      if (!*(a1 + 16))
      {
        v131 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v132 = *(a1 + 16);
        *(a1 + 16) = v131;
      }

      if (!PBUnknownFieldAdd())
      {
        v28 = 0;
        goto LABEL_307;
      }
    }

LABEL_304:
    if (!(BYTE4(v152) & 1 | (v6 != 0)))
    {
      goto LABEL_305;
    }
  }

  switch(v29)
  {
    case 1:
      if (!v30)
      {
        goto LABEL_230;
      }

      if ((*(a1 + 182) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_327;
        }

        v135 = (*(a1 + 180) << 8) >> 31;
        goto LABEL_284;
      }

      v155 = 0;
      v156 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_327;
      }

      v35 = objc_alloc_init(GEOLatLng);
      if (!GEOLatLngReadAllFrom(v35, v3))
      {
        goto LABEL_326;
      }

      PBReaderRecallMark();
      v36 = 64;
      goto LABEL_219;
    case 2:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      v118 = 0;
      v119 = 0;
      v120 = 0;
      *(a1 + 180) |= 0x40000u;
      while (1)
      {
        LOBYTE(v155) = 0;
        v121 = objc_msgSend_position(v3) + 1;
        if (v121 >= objc_msgSend_position(v3) && (v122 = objc_msgSend_position(v3) + 1, v122 <= [v3 length]))
        {
          v123 = [v3 data];
          [v123 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v120 |= (v155 & 0x7F) << v118;
        if ((v155 & 0x80) == 0)
        {
          break;
        }

        v118 += 7;
        v26 = v119++ >= 9;
        if (v26)
        {
          v43 = 0;
          goto LABEL_276;
        }
      }

      if ([v3 hasError])
      {
        v43 = 0;
      }

      else
      {
        v43 = v120;
      }

LABEL_276:
      v134 = 172;
      goto LABEL_277;
    case 3:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 0x80u;
      v155 = 0;
      v102 = objc_msgSend_position(v3) + 8;
      if (v102 >= objc_msgSend_position(v3) && (v103 = objc_msgSend_position(v3) + 8, v103 <= [v3 length]))
      {
        v142 = [v3 data];
        [v142 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 104;
      goto LABEL_303;
    case 4:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      v110 = 0;
      v111 = 0;
      v112 = 0;
      *(a1 + 180) |= 0x400u;
      while (1)
      {
        LOBYTE(v155) = 0;
        v113 = objc_msgSend_position(v3) + 1;
        if (v113 >= objc_msgSend_position(v3) && (v114 = objc_msgSend_position(v3) + 1, v114 <= [v3 length]))
        {
          v115 = [v3 data];
          [v115 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v112 |= (v155 & 0x7F) << v110;
        if ((v155 & 0x80) == 0)
        {
          break;
        }

        v110 += 7;
        v26 = v111++ >= 9;
        if (v26)
        {
          v43 = 0;
          goto LABEL_272;
        }
      }

      if ([v3 hasError])
      {
        v43 = 0;
      }

      else
      {
        v43 = v112;
      }

LABEL_272:
      v134 = 140;
      goto LABEL_277;
    case 5:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 8u;
      v155 = 0;
      v67 = objc_msgSend_position(v3) + 8;
      if (v67 >= objc_msgSend_position(v3) && (v68 = objc_msgSend_position(v3) + 8, v68 <= [v3 length]))
      {
        v140 = [v3 data];
        [v140 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 56;
      goto LABEL_303;
    case 6:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 0x200u;
      v155 = 0;
      v124 = objc_msgSend_position(v3) + 8;
      if (v124 >= objc_msgSend_position(v3) && (v125 = objc_msgSend_position(v3) + 8, v125 <= [v3 length]))
      {
        v144 = [v3 data];
        [v144 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 120;
      goto LABEL_303;
    case 7:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 0x40u;
      v155 = 0;
      v126 = objc_msgSend_position(v3) + 8;
      if (v126 >= objc_msgSend_position(v3) && (v127 = objc_msgSend_position(v3) + 8, v127 <= [v3 length]))
      {
        v145 = [v3 data];
        [v145 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 96;
      goto LABEL_303;
    case 8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 4u;
      v155 = 0;
      v116 = objc_msgSend_position(v3) + 8;
      if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 8, v117 <= [v3 length]))
      {
        v143 = [v3 data];
        [v143 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 48;
      goto LABEL_303;
    case 9:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 2u;
      v155 = 0;
      v129 = objc_msgSend_position(v3) + 8;
      if (v129 >= objc_msgSend_position(v3) && (v130 = objc_msgSend_position(v3) + 8, v130 <= [v3 length]))
      {
        v146 = [v3 data];
        [v146 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 40;
      goto LABEL_303;
    case 10:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      v82 = 0;
      v83 = 0;
      v84 = 0;
      *(a1 + 180) |= 0x2000u;
      while (1)
      {
        LOBYTE(v155) = 0;
        v85 = objc_msgSend_position(v3) + 1;
        if (v85 >= objc_msgSend_position(v3) && (v86 = objc_msgSend_position(v3) + 1, v86 <= [v3 length]))
        {
          v87 = [v3 data];
          [v87 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v84 |= (v155 & 0x7F) << v82;
        if ((v155 & 0x80) == 0)
        {
          break;
        }

        v82 += 7;
        v26 = v83++ >= 9;
        if (v26)
        {
          v43 = 0;
          goto LABEL_245;
        }
      }

      if ([v3 hasError])
      {
        v43 = 0;
      }

      else
      {
        v43 = v84;
      }

LABEL_245:
      v134 = 152;
      goto LABEL_277;
    case 11:
      if (!v30)
      {
        goto LABEL_230;
      }

      if ((*(a1 + 182) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_327;
        }

        v135 = (*(a1 + 180) << 9) >> 31;
        goto LABEL_284;
      }

      v155 = 0;
      v156 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_327;
      }

      v35 = objc_alloc_init(GEOCoarseLocationMetadata);
      if (GEOCoarseLocationMetadataReadAllFrom(v35, v3))
      {
        PBReaderRecallMark();
        v36 = 24;
        goto LABEL_219;
      }

LABEL_326:

LABEL_327:
      v28 = 0;
LABEL_306:
      if (v152)
      {
LABEL_307:
        *(a1 + 180) |= 0x200000u;
      }

      if (v154 & 1 | ((v28 & 1) == 0))
      {
        *(a1 + 180) |= 0x800000u;
        *(a1 + 180) |= 0x400000u;
        *(a1 + 180) |= 0x1000000u;
        goto LABEL_320;
      }

      if (v18)
      {
        while (2)
        {
          while (1)
          {
            v148 = *v18++;
            v147 = v148;
            if (v148 > 10)
            {
              break;
            }

            if (v147 == 1)
            {
              v149 = 0x800000;
LABEL_318:
              *(a1 + 180) |= v149;
              continue;
            }

            if (!v147)
            {
              goto LABEL_320;
            }
          }

          if (v147 == 106)
          {
            v149 = 0x1000000;
          }

          else
          {
            if (v147 != 11)
            {
              continue;
            }

            v149 = 0x400000;
          }

          goto LABEL_318;
        }
      }

LABEL_320:
      if (v28)
      {
        v3 = ([v3 hasError] ^ 1);
      }

      else
      {
        v3 = 0;
      }

      if (v154)
      {
        v150 = *(a1 + 8);
        *(a1 + 8) = 0;
      }

      return v3;
    case 12:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      *(a1 + 180) |= 1u;
      v155 = 0;
      v65 = objc_msgSend_position(v3) + 8;
      if (v65 >= objc_msgSend_position(v3) && (v66 = objc_msgSend_position(v3) + 8, v66 <= [v3 length]))
      {
        v139 = [v3 data];
        [v139 getBytes:&v155 range:{objc_msgSend_position(v3), 8}];

        [v3 setPosition:objc_msgSend_position(v3) + 8];
      }

      else
      {
        [v3 _setError];
      }

      v137 = v155;
      v138 = 32;
      goto LABEL_303;
    case 13:
      if ((v7 & 1) == 0)
      {
        goto LABEL_230;
      }

      v76 = 0;
      v77 = 0;
      v78 = 0;
      *(a1 + 180) |= 0x800u;
      while (1)
      {
        LOBYTE(v155) = 0;
        v79 = objc_msgSend_position(v3) + 1;
        if (v79 >= objc_msgSend_position(v3) && (v80 = objc_msgSend_position(v3) + 1, v80 <= [v3 length]))
        {
          v81 = [v3 data];
          [v81 getBytes:&v155 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v78 |= (v155 & 0x7F) << v76;
        if ((v155 & 0x80) == 0)
        {
          break;
        }

        v76 += 7;
        v26 = v77++ >= 9;
        if (v26)
        {
          v43 = 0;
          goto LABEL_241;
        }
      }

      if ([v3 hasError])
      {
        v43 = 0;
      }

      else
      {
        v43 = v78;
      }

LABEL_241:
      v134 = 144;
      goto LABEL_277;
    default:
      goto LABEL_224;
  }
}

void _GEOPDReverseGeocodingParametersCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
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

void _GEOPDPlaceRequestParametersCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [(GEOPDSearchParameters *)*(a1 + 392) readAll:?];
  [(GEOPDGeocodingParameters *)*(a1 + 192) readAll:?];
  [(GEOPDReverseGeocodingParameters *)*(a1 + 368) readAll:?];
  [(GEOPDPlaceLookupParameters *)*(a1 + 296) readAll:?];
  [*(a1 + 256) readAll:1];
  [(GEOPDPlaceRefinementParameters *)*(a1 + 312) readAll:?];
  [(GEOPDSiriSearchParameters *)*(a1 + 416) readAll:?];
  [(GEOPDLocationDirectedSearchParameters *)*(a1 + 224) readAll:?];
  [*(a1 + 64) readAll:1];
  [(GEOPDSearchBrowseCategorySuggestionParameters *)*(a1 + 120) readAll:?];
  [(GEOPDCategorySearchParameters *)*(a1 + 136) readAll:?];
  [(GEOPDPopularNearbySearchParameters *)*(a1 + 336) readAll:?];
  [(GEOPDBatchPopularNearbySearchParameters *)*(a1 + 88) readAll:?];
  [(GEOPDVendorSpecificPlaceRefinementParameters *)*(a1 + 464) readAll:?];
  [(GEOPDNearbySearchParameters *)*(a1 + 264) readAll:?];
  [(GEOPDAddressObjectGeocodingParameters *)*(a1 + 24) readAll:?];
  [(GEOPDExternalTransitLookupParameters *)*(a1 + 176) readAll:?];
  [(GEOPDFeatureIdGeocodingParameters *)*(a1 + 184) readAll:?];
  [(GEOPDBatchReverseGeocodingParameters *)*(a1 + 96) readAll:?];
  [(GEOPDBatchSpatialLookupParameters *)*(a1 + 104) readAll:?];
  [(GEOPDPlaceCollectionLookupParameters *)*(a1 + 280) readAll:?];
  [*(a1 + 448) readAll:1];
  [(GEOPDCollectionSuggestionParameters *)*(a1 + 152) readAll:?];
  [(GEOPDMapsSearchHomeParameters *)*(a1 + 248) readAll:?];
  [(GEOPDPublisherViewParameters *)*(a1 + 344) readAll:?];
  [(GEOPDAllCollectionsViewParameters *)*(a1 + 48) readAll:?];
  [(GEOPDAirportEntityPlaceLookupParameters *)*(a1 + 40) readAll:?];
  [(GEOPDTransitNearbyScheduleLookupParameters *)*(a1 + 440) readAll:?];
  [(GEOPDGuidesHomeParameters *)*(a1 + 208) readAll:?];
  [(GEOPDExtendedGeoLookupParameters *)*(a1 + 168) readAll:?];
  [(GEOPDQueryUnderstandingParameters *)*(a1 + 352) readAll:?];
  [(GEOPDPlacecardEnrichmentParameters *)*(a1 + 320) readAll:?];
  [(GEOPDAddressRecommendationParameters *)*(a1 + 32) readAll:?];
  [(GEOPDPlaceDescriptorResolutionParameters *)*(a1 + 288) readAll:?];
  v2 = *(a1 + 160);

  [(GEOPDExploreGuidesLookupParameters *)v2 readAll:?];
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1866666E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1[22] = 0;
  v6 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v9 = MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 24);
  v11 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x1E69E5560] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, v3);
  return a1;
}

void sub_186666A88(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x18CFD1DA0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x18CFD1D50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_186666B5C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x18CFD1BB0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_186666CE8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x186666CA8);
  }

  __cxa_rethrow();
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_186666F80(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AddrObjGoogle::protobuf::TextFormat::ParseInfoTree *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
}

void gloria::ShardLoader::ListAllFiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = *MEMORY[0x1E69E54D8];
    v31 = *(MEMORY[0x1E69E54D8] + 64);
    v32 = *(MEMORY[0x1E69E54D8] + 72);
    v29 = (a4 + 8);
    v7 = MEMORY[0x1E69E9830];
    do
    {
      v8 = *(v5 + 23);
      v9 = *v5 + *(v5 + 8);
      if ((v8 & 0x80u) != 0)
      {
        v10 = *v5;
      }

      else
      {
        v9 = v5 + v8;
        v10 = v5;
      }

      while (v9 != v10)
      {
        v11 = *--v9;
        if (v11 == 47)
        {
          v12 = (v9 + 1);
          goto LABEL_10;
        }
      }

      v12 = v10;
LABEL_10:
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v5 + 8);
      }

      std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v12, &v10[v8], &v10[v8] - v12);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__endptr, &__dst, 24);
      memset(&__p, 0, sizeof(__p));
      while (1)
      {
        v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__endptr, &__p, 0x2Du);
        if ((*(v13 + *(*v13 - 24) + 32) & 5) != 0)
        {
          break;
        }

        std::vector<std::string>::push_back[abi:ne200100](&v35, &__p);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __endptr = v6;
      *(&__endptr + *(v6 - 3)) = v31;
      v41.__r_.__value_.__l.__size_ = v32;
      v41.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5548] + 16;
      if (v43 < 0)
      {
        operator delete(v42[7].__locale_);
      }

      v41.__r_.__value_.__r.__words[2] = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v42);
      std::iostream::~basic_iostream();
      MEMORY[0x18CFD1DA0](&v44);
      if (*(v36 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v36 - 24), *(v36 - 16));
      }

      else
      {
        v14 = *(v36 - 24);
        __p.__r_.__value_.__r.__words[2] = *(v36 - 8);
        *&__p.__r_.__value_.__l.__data_ = v14;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      __endptr = 0;
      v16 = strtoul(p_p, &__endptr, 10);
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v18 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v21 = (v19 + size);
        while (1)
        {
          v22 = v19->__r_.__value_.__s.__data_[0];
          if (v22 < 0 || (*(v7 + 4 * v22 + 60) & 0x400) == 0)
          {
            break;
          }

          v19 = (v19 + 1);
          if (!--size)
          {
            v19 = v21;
            break;
          }
        }
      }

      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        v17 = __p.__r_.__value_.__l.__size_;
        if (!__p.__r_.__value_.__l.__size_)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (!*(&__p.__r_.__value_.__s + 23))
        {
          goto LABEL_45;
        }

        v18 = &__p;
      }

      if (v19 != (v18 + v17) || v16 < 0)
      {
LABEL_45:
        std::operator+<char>();
        LOBYTE(__endptr) = 1;
        HIDWORD(__endptr) = 0;
        v23 = v34;
        v24 = v33[0];
        if (v34 >= 0)
        {
          v24 = v33;
        }

        if (v34 < 0)
        {
          v23 = v33[1];
        }

        v41.__r_.__value_.__r.__words[0] = v24;
        v41.__r_.__value_.__l.__size_ = v23;
        gloria::Status::Status(a1, 6, &__endptr);
        if (v34 < 0)
        {
          operator delete(v33[0]);
        }

        v25 = 0;
        goto LABEL_63;
      }

      LODWORD(__endptr) = v16;
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v41, *v5, *(v5 + 8));
      }

      else
      {
        v41 = *v5;
      }

      v26 = *v29;
      if (!*v29)
      {
LABEL_59:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v27 = v26;
          v28 = *(v26 + 32);
          if (__endptr >= v28)
          {
            break;
          }

          v26 = *v27;
          if (!*v27)
          {
            goto LABEL_59;
          }
        }

        if (v28 >= __endptr)
        {
          break;
        }

        v26 = v27[1];
        if (!v26)
        {
          goto LABEL_59;
        }
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      v25 = 1;
LABEL_63:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __endptr = &v35;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__endptr);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if ((v25 & 1) == 0)
      {
        return;
      }

      v5 += 24;
    }

    while (v5 != a3);
  }

  LOBYTE(__endptr) = 1;
  HIDWORD(__endptr) = 0;
  v41.__r_.__value_.__r.__words[0] = "";
  v41.__r_.__value_.__l.__size_ = 0;
  gloria::Status::Status(a1, 0, &__endptr);
}

void sub_186667594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  __p = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void *std::string::__init_with_size[abi:ne200100]<char *,char *>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void gloria::ShardPool::AllShards(void *a1, uint64_t a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    v5 = *(a2 + 8);
    do
    {
      v6 = v3 + 5;
      v7 = *(a2 + 16);
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 3;
        v11 = (v9 >> 3) + 1;
        if (v11 >> 61)
        {
          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        v12 = v7 - v8;
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

        if (v13)
        {
          if (!(v13 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v10) = v6;
        v5 = (8 * v10 + 8);
        memcpy(0, v8, v9);
        *a2 = 0;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v5++ = v6;
      }

      *(a2 + 8) = v5;
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v2);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

id GEOBatchDescription(unint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  if (WORD2(a1) < 0x15u && ((0x1BFFFFu >> SBYTE4(a1)) & 1) != 0)
  {
    v3 = off_1E70734C0[HIDWORD(a1) & 0x1F];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", WORD2(a1)];
  }

  if (a1 >> 49 >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", HIWORD(a1)];
  }

  else
  {
    v4 = off_1E7073568[HIWORD(a1)];
  }

  v5 = [v2 stringWithFormat:@"batchId:%llu(%@/%@/%u)", a1, v3, v4, a1];

  return v5;
}

id _geo_NSErrorXPCSafeRepresentationCopy(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = _NSDictionarySafeEncodingCopy(v2, 1u, 0);

  v4 = MEMORY[0x1E696ABC0];
  v5 = [v1 domain];
  v6 = [v1 code];

  v7 = [v4 errorWithDomain:v5 code:v6 userInfo:v3];

  return v7;
}

id _NSDictionarySafeEncodingCopy(void *a1, unsigned int a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v20 = a3;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = [v6 objectForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 absoluteString];
          goto LABEL_8;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v5 setObject:v12 forKey:v11];
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (a2)
          {
            v13 = _geo_NSErrorXPCSafeRepresentationCopy(v12);
            if (!v13)
            {
              goto LABEL_9;
            }

LABEL_8:
            [v5 setObject:v13 forKey:v11];
          }

          else
          {
            v13 = _geo_NSErrorDictionaryRepresentationCopy(v12);
            v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v13];
            v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
            [v15 setObject:v16 forKey:@"_geo_SerializedError"];

            [v5 setObject:v15 forKey:v11];
            a3 = v20;
          }

LABEL_9:

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = _NSDictionarySafeEncodingCopy(v12, a2, a3);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = _NSArraySafeEncodingCopy(v12, a2, a3);
          }

          else
          {
            if (!a3)
            {
              goto LABEL_13;
            }

            v14 = [MEMORY[0x1E695DFB0] null];
          }
        }

        v17 = v14;
        [v5 setObject:v14 forKey:v11];

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v18 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v18;
    }

    while (v18);
  }

  return v5;
}

double GEOMapPointsPerMeterAtLatitude(double a1)
{
  v2 = a1 * 0.0174532925;
  v3 = cos(v2 + v2) * -559.82 + 111132.92;
  v4 = v3 + cos(v2 * 4.0) * 1.175;
  v5 = v4 + cos(v2 * 6.0) * -0.0023;
  GEOTilePointForCoordinate(a1 + -0.5, 0.0, 20.0);
  v7 = v6;
  GEOTilePointForCoordinate(a1 + 0.5, 0.0, 20.0);
  return vabdd_f64(v8, v7) / v5;
}

void GEOLogMsgStateClearSensitiveFields(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ([a1 hasPlaceRequest] && (objc_msgSend(a1, "placeRequest"), v5 = objc_claimAutoreleasedReturnValue(), v6 = GEOLogMsgStatePlaceRequestHasSensitiveFields(v5, a2), v5, v6))
    {
      v7 = [a1 placeRequest];
      v8 = [v7 copy];

      v9 = [v8 placeDataRequest];
      [v9 clearSensitiveFields:a2];

      [a1 setPlaceRequest:v8];
    }

    else
    {
      v8 = [a1 placeRequest];
      [v8 clearSensitiveFields:a2];
    }

    if ([a1 hasLookAroundView])
    {
      v11 = [a1 lookAroundView];
      v12 = GEOLogMsgStateLookAroundViewHasSensitiveFields(v11);

      if (v12)
      {
        v13 = [a1 lookAroundView];
        v15 = [v13 copy];

        v14 = [v15 location];
        [v14 clearSensitiveFields:a2];

        [a1 setLookAroundView:v15];
        goto LABEL_11;
      }
    }
  }

  else
  {
    v10 = [a1 placeRequest];
    [v10 clearSensitiveFields:a2];
  }

  v15 = [a1 lookAroundView];
  [v15 clearSensitiveFields:a2];
LABEL_11:
}

void GEOLogMsgEventClearSensitiveFields(id *a1, uint64_t a2, int a3)
{
  [(GEOLogMsgEvent *)a1 _readLogMsgStates];
  if ([a1[23] count])
  {
    v6 = 0;
    do
    {
      v7 = [a1[23] objectAtIndexedSubscript:v6];
      v8 = v7;
      if (a3 && GEOLogMsgStateHasSensitiveFields(v7, a2))
      {
        v9 = [v8 copy];
        GEOLogMsgStateClearSensitiveFields(v9, a2, 0);
        [a1[23] replaceObjectAtIndex:v6 withObject:v9];
      }

      else
      {
        [v8 clearSensitiveFields:a2];
      }

      ++v6;
    }

    while (v6 < [a1[23] count]);
  }

  if (a3)
  {
    if ([a1 hasDirectionsEvent] && (objc_msgSend(a1, "directionsEvent"), v10 = objc_claimAutoreleasedReturnValue(), HasSensitiveFields = GEOLogMsgEventDirectionsHasSensitiveFields(v10), v10, HasSensitiveFields))
    {
      v12 = [a1 directionsEvent];
      v13 = [v12 copy];

      GEOLogMsgEventDirectionsClearSensitiveFields(v13, a2, 0);
      [a1 setDirectionsEvent:v13];
    }

    else
    {
      v13 = [a1 directionsEvent];
      [v13 clearSensitiveFields:a2];
    }

    if ([a1 hasWifiConnectionQualityProbeEvent])
    {
      v15 = [a1 wifiConnectionQualityProbeEvent];
      v16 = GEOLogMsgEventWifiConnectionQualityProbeHasSensitiveFields(v15);

      if (v16)
      {
        v17 = [a1 wifiConnectionQualityProbeEvent];
        v19 = [v17 copy];

        v18 = [v19 wifiConnectionQuality];
        [v18 clearSensitiveFields:a2];

        [a1 setWifiConnectionQualityProbeEvent:v19];
        goto LABEL_18;
      }
    }
  }

  else
  {
    v14 = [a1 directionsEvent];
    [v14 clearSensitiveFields:a2];
  }

  v19 = [a1 wifiConnectionQualityProbeEvent];
  [v19 clearSensitiveFields:a2];
LABEL_18:
}

uint64_t GEOLogMsgStateHasSensitiveFields(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 placeRequest];
    if (GEOLogMsgStatePlaceRequestHasSensitiveFields(v4, a2))
    {
      v2 = 1;
    }

    else
    {
      v5 = [v2 lookAroundView];
      v2 = GEOLogMsgStateLookAroundViewHasSensitiveFields(v5);
    }
  }

  return v2;
}

void *GEOLogMsgStatePlaceRequestHasSensitiveFields(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = [result placeDataRequest];
    HasSensitiveFields = GEOPDPlaceRequestHasSensitiveFields(v3, a2);

    return HasSensitiveFields;
  }

  return result;
}

void *GEOLogMsgStateLookAroundViewHasSensitiveFields(void *result)
{
  if (result)
  {
    v1 = [result location];
    HasSensitiveFields = GEOLocationHasSensitiveFields(v1);

    return HasSensitiveFields;
  }

  return result;
}

uint64_t parseThrottlePolicy(NSDictionary *a1, NSString *a2, NSString *a3, NSString *a4, unint64_t *a5, double *a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = v10;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = v11;
  v32[0] = v11;
  v32[1] = v12;
  v32[2] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v25 = a6;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
  v17 = v14;
  if (v16)
  {
    v18 = *v29;
    v17 = v14;
    while (2)
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v17 = [v20 objectForKeyedSubscript:*(*(&v28 + 1) + 8 * v19)];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = 0;
          goto LABEL_14;
        }

        ++v19;
        v20 = v17;
      }

      while (v16 != v19);
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v17 objectForKeyedSubscript:@"ResetInterval"];
  v21 = [v17 objectForKeyedSubscript:@"AllowedRequests"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    *a5 = [v21 integerValue];
    [v15 doubleValue];
    *v25 = v22;
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

LABEL_14:
  return v23;
}

id createThrottler(NSString *a1, NSString *a2, unint64_t a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = readSavedState();
  v11 = [v9 alloc];
  v12 = [(NSString *)v7 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v13 = [v10 objectForKeyedSubscript:v12];
  v14 = [v11 initWithKeyPath:v8 requestCount:a3 interval:v13 savedState:a4];

  return v14;
}

void sub_18666ACAC(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t FeatureStyleAttributes::compareStylePairs(FeatureStyleAttributes *this, _DWORD *a2, const void *a3)
{
  if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

void std::__shared_ptr_emplace<FeatureStyleAttributes>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  else
  {
    free(*(a1 + 24));
    *(a1 + 24) = 0;
    *(a1 + 57) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    free(v3);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void FeatureStyleAttributes::FeatureStyleAttributes(FeatureStyleAttributes *this, const FeatureStyleAttributes *a2)
{
  *(this + 31) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 35) = 1;
  v4 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  *this = v4;
  if (v4)
  {
    memcpy(v4, *a2, 8 * *(a2 + 33));
    *(this + 33) = *(a2 + 33);
    *(this + 35) = *(a2 + 35);
  }

  if (*(a2 + 32))
  {
    FeatureStyleAttributes::setExtAttributes(this, *(a2 + 3), *(a2 + 32));
  }
}

void sub_18666AE24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void *GEOResourcesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 484))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOResourcesReadAllFrom can only be called once per object"];
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
    v9 = &GEOResourcesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOResourcesReadAllFrom_initialTag;
  }

  Specified = GEOResourcesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOResourcesCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 488));
  return Specified;
}

void *GEOResourcesReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = 0;
  v11 = *(a1 + 496);
  v12 = vdupq_n_s64(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vdupq_n_s32(v11);
  v15 = (BYTE4(v11) & 1) + ((v11 >> 1) & 1) + vaddvq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD590), vshlq_u64(v12, xmmword_187FBD580)), v13), vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD5B0), vshlq_u64(v12, xmmword_187FBD5A0)), v13))) + vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v14, xmmword_187FBD5C0), v13), vandq_s8(vshlq_u32(v14, xmmword_187FBD600), v13))) + vaddvq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBD5E0), vshlq_u64(v12, xmmword_187FBD5D0)), v13)) + (v11 >> 31);
  v16.i32[0] = v11 >> 40;
  v16.i32[1] = BYTE3(v11);
  *v12.i8 = vadd_s32(vadd_s32(vadd_s32(vadd_s32(vand_s8(vshl_u32(*v14.i8, 0xFFFFFFEAFFFFFFE7), 0x100000001), vand_s8(v16, 0x100000001)), vadd_s32(vadd_s32(vand_s8(vshl_u32(*v14.i8, 0xFFFFFFFCFFFFFFF9), 0x100000001), vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD610)), 0x100000001)), vadd_s32(vand_s8(vshl_u32(*v14.i8, 0xFFFFFFF0FFFFFFF7), 0x100000001), vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD2E0)), 0x100000001)))), vadd_s32(vadd_s32(vadd_s32(vand_s8(vshl_u32(*v14.i8, 0xFFFFFFF3FFFFFFEELL), 0x100000001), vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD620)), 0x100000001)), vadd_s32(vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD630)), 0x100000001), vand_s8(vshl_u32(*v14.i8, 0xFFFFFFE3FFFFFFEBLL), 0x100000001))), vadd_s32(vadd_s32(vand_s8(vshl_u32(*v14.i8, 0xFFFFFFF8FFFFFFF4), 0x100000001), vadd_s32(vand_s8(__PAIR64__(v11 >> 30, HIWORD(v11)), 0x100000001), vand_s8(__PAIR64__(v11 >> 20, v11 >> 50), 0x100000001))), vand_s8(vmovn_s64(vshlq_u64(v12, xmmword_187FBD640)), 0x100000001)))), vadd_s32(__PAIR64__((v11 & 0x200000000000000) != 0, vaddvq_s32(vandq_s8(vshlq_u32(v14, xmmword_187FBD5F0), v13))), vand_s8(vshl_u32(*v14.i8, 0xFFFFFFFDFFFFFFE9), 0x100000001)));
  v17 = vadd_s32(*v12.i8, vdup_lane_s32(*v12.i8, 1)).u32[0] + v15;
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

  v19 = v17 > 0x2C;
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
  while (2)
  {
    v22 = objc_msgSend_position(v3);
    if (v22 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_346:
      v31 = 1;
      goto LABEL_349;
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
      goto LABEL_349;
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

    switch(v32)
    {
      case 1:
        if (!v33 || (*(a1 + 502) & 0x10) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOTileGroup);
        if (!GEOTileGroupReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsTileGroup:v38];
        goto LABEL_251;
      case 2:
        if (!v33 || (*(a1 + 502) & 0x20) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOTileSet);
        if (!GEOTileSetReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsTileSet:v38];
        goto LABEL_251;
      case 3:
        if (!v33 || (*(a1 + 502) & 2) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsStyleSheet:v38];
        }

        goto LABEL_251;
      case 4:
        if (!v33 || (*(a1 + 502) & 8) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsTexture:v38];
        }

        goto LABEL_251;
      case 5:
        if (!v33 || (*(a1 + 498) & 0x80) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsFont:v38];
        }

        goto LABEL_251;
      case 6:
        if (!v33 || (*(a1 + 499) & 2) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsIcon:v38];
        }

        goto LABEL_251;
      case 8:
        if (!v33 || (*(a1 + 501) & 1) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEORegionalResource);
        if (!GEORegionalResourceReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsRegionalResource:v38];
        goto LABEL_251;
      case 9:
        if (!v33 || (*(a1 + 503) & 4) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsXml:v38];
        }

        goto LABEL_251;
      case 11:
        if (!v33 || (*(a1 + 496) & 0x80) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOAttribution);
        if (!GEOAttributionReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsAttribution:v38];
        goto LABEL_251;
      case 30:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 2) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 80;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 54;
        goto LABEL_345;
      case 31:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 501) & 4) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 344;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 21;
        goto LABEL_345;
      case 33:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 501) & 0x20) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 368;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 18;
        goto LABEL_345;
      case 37:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 498) & 4) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 152;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 45;
        goto LABEL_345;
      case 38:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 498) & 0x20) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 176;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 42;
        goto LABEL_345;
      case 40:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 501) & 2) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 336;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 22;
        goto LABEL_345;
      case 41:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 0x10) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 104;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 51;
        goto LABEL_345;
      case 43:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 501) & 0x40) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 376;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 17;
        goto LABEL_345;
      case 44:
        if (!v33 || (*(a1 + 502) & 1) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsStyleSheetChecksum:v38];
        }

        goto LABEL_251;
      case 45:
        if (!v33 || (*(a1 + 502) & 4) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsTextureChecksum:v38];
        }

        goto LABEL_251;
      case 46:
        if (!v33 || (*(a1 + 498) & 0x40) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsFontChecksum:v38];
        }

        goto LABEL_251;
      case 47:
        if (!v33 || (*(a1 + 499) & 1) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsIconChecksum:v38];
        }

        goto LABEL_251;
      case 48:
        if (!v33 || (*(a1 + 503) & 2) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsXmlChecksum:v38];
        }

        goto LABEL_251;
      case 49:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 496) & 8) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 32;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 60;
        goto LABEL_345;
      case 50:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 496) & 0x10) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 40;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 59;
        goto LABEL_345;
      case 51:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 2) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 272;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 30;
        goto LABEL_345;
      case 52:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 0x40) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 312;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 25;
        goto LABEL_345;
      case 53:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 0x20) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 304;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 26;
        goto LABEL_345;
      case 54:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 501) & 0x10) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 360;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 19;
        goto LABEL_345;
      case 55:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 8) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 288;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 28;
        goto LABEL_345;
      case 61:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 496) & 0x40) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 56;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 57;
        goto LABEL_345;
      case 62:
        if (!v33 || (*(a1 + 496) & 0x20) != 0)
        {
          goto LABEL_272;
        }

        v38 = PBReaderReadString();
        if (v38)
        {
          [(GEOResources *)a1 _addNoFlagsAnnouncementsSupportedLanguages:v38];
        }

        goto LABEL_251;
      case 64:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 498) & 8) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 160;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 44;
        goto LABEL_345;
      case 65:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 0x10) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 296;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 27;
        goto LABEL_345;
      case 66:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 502) & 0x80) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_348;
          }

          v51 = *(a1 + 496) << 8;
LABEL_345:
          v6 += v51 >> 63;
LABEL_273:
          if (!(v58 & 1 | (v6 != 0)))
          {
            goto LABEL_346;
          }

          continue;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOVersionManifest);
        if (GEOVersionManifestReadAllFrom(v38, v3))
        {
          PBReaderRecallMark();
          v48 = *(a1 + 448);
          *(a1 + 448) = v38;
LABEL_265:

          --v6;
          goto LABEL_273;
        }

LABEL_347:

LABEL_348:
        v31 = 0;
LABEL_349:
        if (v57)
        {
LABEL_350:
          *(a1 + 496) |= 2uLL;
        }

        if (v60 || (v31 & 1) == 0)
        {
          *(a1 + 496) |= 0x7FFFFFFFFFFFFFCuLL;
        }

        else if (v21)
        {
          while (1)
          {
            v52 = *v21++;
            v53 = 0x10000000000000;
            switch(v52)
            {
              case 0:
                goto LABEL_412;
              case 1:
                goto LABEL_411;
              case 2:
                v53 = 0x20000000000000;
                goto LABEL_411;
              case 3:
                v53 = 0x2000000000000;
                goto LABEL_411;
              case 4:
                v53 = 0x8000000000000;
                goto LABEL_411;
              case 5:
                v53 = 0x800000;
                goto LABEL_411;
              case 6:
                v53 = 0x2000000;
                goto LABEL_411;
              case 8:
                v53 = 0x10000000000;
                goto LABEL_411;
              case 9:
                v53 = 0x400000000000000;
                goto LABEL_411;
              case 11:
                v53 = 128;
                goto LABEL_411;
              case 30:
                v53 = 512;
                goto LABEL_411;
              case 31:
                v53 = 0x40000000000;
                goto LABEL_411;
              case 33:
                v53 = 0x200000000000;
                goto LABEL_411;
              case 37:
                v53 = 0x40000;
                goto LABEL_411;
              case 38:
                v53 = 0x200000;
                goto LABEL_411;
              case 40:
                v53 = 0x20000000000;
                goto LABEL_411;
              case 41:
                v53 = 4096;
                goto LABEL_411;
              case 43:
                v53 = 0x400000000000;
                goto LABEL_411;
              case 44:
                v53 = 0x1000000000000;
                goto LABEL_411;
              case 45:
                v53 = 0x4000000000000;
                goto LABEL_411;
              case 46:
                v53 = 0x400000;
                goto LABEL_411;
              case 47:
                v53 = 0x1000000;
                goto LABEL_411;
              case 48:
                v53 = 0x200000000000000;
                goto LABEL_411;
              case 49:
                v53 = 8;
                goto LABEL_411;
              case 50:
                v53 = 16;
                goto LABEL_411;
              case 51:
                v53 = 0x200000000;
                goto LABEL_411;
              case 52:
                v53 = 0x4000000000;
                goto LABEL_411;
              case 53:
                v53 = 0x2000000000;
                goto LABEL_411;
              case 54:
                v53 = 0x100000000000;
                goto LABEL_411;
              case 55:
                v53 = 0x800000000;
                goto LABEL_411;
              case 61:
                v53 = 64;
                goto LABEL_411;
              case 62:
                v53 = 32;
                goto LABEL_411;
              case 64:
                v53 = 0x80000;
                goto LABEL_411;
              case 65:
                v53 = 0x1000000000;
                goto LABEL_411;
              case 66:
                v53 = 0x80000000000000;
                goto LABEL_411;
              case 67:
                v53 = 4;
                goto LABEL_411;
              case 68:
                v53 = 0x8000;
                goto LABEL_411;
              case 69:
                v53 = 0x8000000;
                goto LABEL_411;
              case 70:
                v53 = 0x4000000;
                goto LABEL_411;
              case 72:
                v53 = 0x80000000000;
                goto LABEL_411;
              case 73:
                v53 = 0x800000000000;
                goto LABEL_411;
              case 74:
                v53 = 0x20000;
                goto LABEL_411;
              case 75:
                v53 = 0x10000;
                goto LABEL_411;
              case 77:
                v53 = 0x8000000000;
                goto LABEL_411;
              case 78:
                v53 = 0x2000;
                goto LABEL_411;
              case 79:
                v53 = 0x400000000;
                goto LABEL_411;
              case 80:
                v53 = 0x10000000;
                goto LABEL_411;
              case 81:
                v53 = 1024;
                goto LABEL_411;
              case 82:
                v53 = 0x4000;
                goto LABEL_411;
              case 83:
                v53 = 2048;
                goto LABEL_411;
              case 85:
                v53 = 0x100000000000000;
                goto LABEL_411;
              case 88:
                v53 = 0x20000000;
                goto LABEL_411;
              case 89:
                v53 = 0x80000000;
                goto LABEL_411;
              case 91:
                v53 = 256;
                goto LABEL_411;
              case 92:
                v53 = 0x40000000000000;
                goto LABEL_411;
              case 93:
                v53 = 0x40000000;
                goto LABEL_411;
              case 94:
                v53 = 0x100000;
                goto LABEL_411;
              case 95:
                v53 = 0x100000000;
LABEL_411:
                *(a1 + 496) |= v53;
                break;
              default:
                continue;
            }
          }
        }

LABEL_412:
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
      case 67:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 496) & 4) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 24;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 61;
        goto LABEL_345;
      case 68:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 0x80) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 128;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 48;
        goto LABEL_345;
      case 69:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 499) & 8) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 224;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 36;
        goto LABEL_345;
      case 70:
        if (!v33 || (*(a1 + 499) & 4) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOMapRegion);
        if (!GEOMapRegionReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsLocationShiftEnabledRegion:v38];
        goto LABEL_251;
      case 71:
        if ((v7 & 1) == 0)
        {
          goto LABEL_272;
        }

        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 496) |= 1uLL;
        while (1)
        {
          LOBYTE(v61) = 0;
          v44 = objc_msgSend_position(v3) + 1;
          if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
          {
            v46 = [v3 data];
            [v46 getBytes:&v61 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v43 |= (v61 & 0x7F) << v41;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v29 = v42++ >= 9;
          if (v29)
          {
            v47 = 0;
            goto LABEL_278;
          }
        }

        if ([v3 hasError])
        {
          v47 = 0;
        }

        else
        {
          v47 = v43;
        }

LABEL_278:
        *(a1 + 492) = v47;
        goto LABEL_273;
      case 72:
        if (!v33 || (*(a1 + 501) & 8) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOResource);
        if (!GEOResourceReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsResource:v38];
        goto LABEL_251;
      case 73:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 501) & 0x80) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 384;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 16;
        goto LABEL_345;
      case 74:
        if (!v33 || (*(a1 + 498) & 2) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEODataSetDescription);
        if (!GEODataSetDescriptionReadAllFrom(v38, v3))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsDataSet:v38];
        goto LABEL_251;
      case 75:
        if (!v33 || (*(a1 + 498) & 1) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEODataSetURLOverride);
        if (!GEODataSetURLOverrideReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsDataSetURLOverride:v38];
        goto LABEL_251;
      case 77:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 0x80) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 320;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 24;
        goto LABEL_345;
      case 78:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 0x20) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 112;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 50;
        goto LABEL_345;
      case 79:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 500) & 4) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 280;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 29;
        goto LABEL_345;
      case 80:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 499) & 0x10) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 232;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 35;
        goto LABEL_345;
      case 81:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 4) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 88;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 53;
        goto LABEL_345;
      case 82:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 0x40) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 120;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 49;
        goto LABEL_345;
      case 83:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 8) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 96;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 52;
        goto LABEL_345;
      case 85:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 503) & 1) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 456;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 7;
        goto LABEL_345;
      case 88:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 499) & 0x20) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 240;
LABEL_264:
          v48 = *(a1 + v40);
          *(a1 + v40) = v39;
          goto LABEL_265;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 34;
        goto LABEL_345;
      case 89:
        if (!v33 || (*(a1 + 499) & 0x80) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOMuninVersion);
        if (!GEOMuninVersionReadAllFrom(v38, v3))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsMuninVersion:v38];
        goto LABEL_251;
      case 91:
        if (!v33)
        {
          goto LABEL_272;
        }

        if ((*(a1 + 497) & 1) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 72;
          goto LABEL_264;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_348;
        }

        v51 = *(a1 + 496) << 55;
        goto LABEL_345;
      case 92:
        if (!v33 || (*(a1 + 502) & 0x40) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOURLInfoSet);
        if (!GEOURLInfoSetReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsUrlInfoSet:v38];
        goto LABEL_251;
      case 93:
        if (!v33 || (*(a1 + 499) & 0x40) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOMuninBucket);
        if (!GEOMuninBucketReadAllFrom(v38, v3))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsMuninBucket:v38];
        goto LABEL_251;
      case 94:
        if (!v33 || (*(a1 + 498) & 0x10) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEODisplayString);
        if (!GEODisplayStringReadAllFrom(v38, v3, v56 & 1))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsDisplayStrings:v38];
        goto LABEL_251;
      case 95:
        if (!v33 || (*(a1 + 500) & 1) != 0)
        {
          goto LABEL_272;
        }

        v61 = 0;
        v62 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_348;
        }

        v38 = objc_alloc_init(GEOOfflineMetadata);
        if (!GEOOfflineMetadataReadAllFrom(v38, v3))
        {
          goto LABEL_347;
        }

        PBReaderRecallMark();
        [(GEOResources *)a1 _addNoFlagsOfflineMetadata:v38];
LABEL_251:

        goto LABEL_273;
      default:
        if ((v57 & 1) == 0 || (*(a1 + 496) & 2) != 0)
        {
LABEL_272:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_348;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v49 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v50 = *(a1 + 16);
            *(a1 + 16) = v49;
          }

          if (!PBUnknownFieldAdd())
          {
            v31 = 0;
            goto LABEL_350;
          }
        }

        goto LABEL_273;
    }
  }
}

void ___getPlaceRequestExtras_block_invoke()
{
  v0 = [GEOPurgableFile alloc];
  v5 = [GEOFilePaths urlFor:40];
  v1 = GEOPlaceRequestExtrasUpdatedNotification;
  Double = GEOConfigGetDouble(524, &GeoServicesConfig_PlaceRequestExtrasPurgeDelay_Metadata);
  v3 = [(GEOPurgableFile *)v0 initWithURL:v5 changedNotification:v1 purgeDelay:objc_opt_class() protocolBufferType:Double];
  v4 = _getPlaceRequestExtras_extras;
  _getPlaceRequestExtras_extras = v3;
}

void sub_18666DF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_18666E1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _dispatcherSupportsService(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = +[GEOCountryConfiguration sharedConfiguration];
  v3 = [v2 countryCode];
  v4 = [v3 isEqualToString:@"CN"];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd", a1];
  v6 = _getValue(365, &GeoServicesConfig_DispatcherSupports_Metadata, 1, 0, 0, 0);
  v7 = [v6 objectForKeyedSubscript:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = v4 ^ 1u;
  }

  return v8;
}

void GEOPDPlaceRequestClearSensitiveFields(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ([a1 hasClientMetadata] && (objc_msgSend(a1, "clientMetadata"), v5 = objc_claimAutoreleasedReturnValue(), HasSensitiveFields = GEOPDClientMetadataHasSensitiveFields(v5), v5, HasSensitiveFields))
    {
      v7 = [a1 clientMetadata];
      v8 = [v7 copy];

      GEOPDClientMetadataClearSensitiveFields(v8, a2, 0);
      [a1 setClientMetadata:v8];
    }

    else
    {
      v8 = [a1 clientMetadata];
      [v8 clearSensitiveFields:a2];
    }

    if ([a1 hasPlaceRequestParameters])
    {
      v10 = [a1 placeRequestParameters];
      v11 = GEOPDPlaceRequestParametersHasSensitiveFields(v10, a2);

      if (v11)
      {
        v12 = [a1 placeRequestParameters];
        v14 = [v12 copy];

        GEOPDPlaceRequestParametersClearSensitiveFields(v14, a2, 0);
        [a1 setPlaceRequestParameters:v14];
        goto LABEL_12;
      }
    }
  }

  else
  {
    v9 = [a1 clientMetadata];
    [v9 clearSensitiveFields:a2];
  }

  v13 = [a1 placeRequestParameters];
  if (v13)
  {
    v14 = v13;
    GEOPDPlaceRequestParametersClearSensitiveFields(v13, a2, 1);
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
}