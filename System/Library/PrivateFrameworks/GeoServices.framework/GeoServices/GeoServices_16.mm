void *GEOPDMessageLinkReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 76))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDMessageLinkReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDMessageLinkReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDMessageLinkReadAllFrom_initialTag;
  }

  Specified = GEOPDMessageLinkReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDMessageLinkCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 80));
  return Specified;
}

void *GEOPDMessageLinkReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 92)), 0xFFF8FFFDFFFBFFFCLL), 0x1000100010001)) + ((*(a1 + 92) >> 6) & 1) + ((*(a1 + 92) >> 7) & 1) + ((*(a1 + 92) >> 2) & 1));
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
LABEL_121:
      v26 = 1;
      goto LABEL_124;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v63) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v63 & 0x7F) << v18;
      if ((v63 & 0x80) == 0)
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
      goto LABEL_124;
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

    if (v27 > 4)
    {
      break;
    }

    if (v27 <= 2)
    {
      if (v27 == 1)
      {
        if (!v28)
        {
          goto LABEL_101;
        }

        if ((*(a1 + 92) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_123;
          }

          v53 = *(a1 + 92) << 11;
LABEL_119:
          v6 += v53 >> 15;
          goto LABEL_120;
        }

        v33 = PBReaderReadString();
        v34 = 32;
LABEL_93:
        v43 = *(a1 + v34);
        *(a1 + v34) = v33;
LABEL_94:

        --v6;
        goto LABEL_120;
      }

      if (v27 == 2)
      {
        if (!v28)
        {
          goto LABEL_101;
        }

        if ((*(a1 + 92) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_123;
          }

          v53 = *(a1 + 92) << 10;
          goto LABEL_119;
        }

        v33 = PBReaderReadString();
        v34 = 40;
        goto LABEL_93;
      }

      goto LABEL_95;
    }

    if (v27 == 3)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_101;
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      *(a1 + 92) |= 1u;
      while (1)
      {
        LOBYTE(v63) = 0;
        v47 = objc_msgSend_position(v3) + 1;
        if (v47 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3) + 1, v48 <= [v3 length]))
        {
          v49 = [v3 data];
          [v49 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v46 |= (v63 & 0x7F) << v44;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v44 += 7;
        v24 = v45++ >= 9;
        if (v24)
        {
          v50 = 0;
          goto LABEL_106;
        }
      }

      if ([v3 hasError])
      {
        v50 = 0;
      }

      else
      {
        v50 = v46;
      }

LABEL_106:
      *(a1 + 84) = v50;
    }

    else
    {
      if (!v28 || (*(a1 + 92) & 8) != 0)
      {
LABEL_101:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_120;
      }

      v63 = 0;
      v64 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_123;
      }

      v42 = objc_alloc_init(GEOPDHours);
      if (!GEOPDHoursReadAllFrom(v42, v3, v9 & 1))
      {
        goto LABEL_122;
      }

      PBReaderRecallMark();
      [(GEOPDMessageLink *)a1 _addNoFlagsHoursOfOperation:v42];
    }

LABEL_120:
    if (!(BYTE4(v60) & 1 | (v6 != 0)))
    {
      goto LABEL_121;
    }
  }

  if (v27 > 6)
  {
    if (v27 == 7)
    {
      if (!v28)
      {
        goto LABEL_101;
      }

      if ((*(a1 + 92) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_123;
        }

        v53 = *(a1 + 92) << 9;
        goto LABEL_119;
      }

      v33 = PBReaderReadString();
      v34 = 48;
      goto LABEL_93;
    }

    if (v27 == 8)
    {
      if (!v28)
      {
        goto LABEL_101;
      }

      if ((*(a1 + 92) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_123;
        }

        v53 = *(a1 + 92) << 8;
        goto LABEL_119;
      }

      v33 = PBReaderReadString();
      v34 = 56;
      goto LABEL_93;
    }

LABEL_95:
    if ((v60 & 1) == 0 || (*(a1 + 92) & 4) != 0)
    {
      goto LABEL_101;
    }

    if (!*(a1 + 16))
    {
      v51 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v52 = *(a1 + 16);
      *(a1 + 16) = v51;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v59 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_125;
    }

    goto LABEL_120;
  }

  if (v27 != 5)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_101;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    *(a1 + 92) |= 2u;
    while (1)
    {
      LOBYTE(v63) = 0;
      v38 = objc_msgSend_position(v3) + 1;
      if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
      {
        v40 = [v3 data];
        [v40 getBytes:&v63 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v37 |= (v63 & 0x7F) << v35;
      if ((v63 & 0x80) == 0)
      {
        break;
      }

      v35 += 7;
      v24 = v36++ >= 9;
      if (v24)
      {
        v41 = 0;
        goto LABEL_108;
      }
    }

    v41 = (v37 != 0) & ~[v3 hasError];
LABEL_108:
    *(a1 + 88) = v41;
    goto LABEL_120;
  }

  if (!v28)
  {
    goto LABEL_101;
  }

  if ((*(a1 + 92) & 0x100) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_123;
    }

    v53 = *(a1 + 92) << 7;
    goto LABEL_119;
  }

  v63 = 0;
  v64 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_123;
  }

  v42 = objc_alloc_init(GEOTimezone);
  if (GEOTimezoneReadAllFrom(v42, v3))
  {
    PBReaderRecallMark();
    v43 = *(a1 + 64);
    *(a1 + 64) = v42;
    goto LABEL_94;
  }

LABEL_122:

LABEL_123:
  v26 = 0;
LABEL_124:
  v59 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v60 & 1) == 0)
  {
    goto LABEL_126;
  }

LABEL_125:
  *(a1 + v59[842]) |= 4u;
LABEL_126:
  if (v62 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v59[842]) |= 0x10u;
    *(a1 + v59[842]) |= 0x20u;
    *(a1 + v59[842]) |= 8u;
    *(a1 + v59[842]) |= 0x100u;
    *(a1 + v59[842]) |= 0x40u;
    *(a1 + v59[842]) |= 0x80u;
    goto LABEL_145;
  }

  if (v16)
  {
    while (1)
    {
LABEL_129:
      v55 = *v16++;
      v54 = v55;
      if (v55 > 4)
      {
        switch(v54)
        {
          case 5:
            v56 = 256;
            break;
          case 7:
            v56 = 64;
            break;
          case 8:
            v56 = 128;
            break;
          default:
            continue;
        }

        goto LABEL_143;
      }

      if (v54 > 1)
      {
        break;
      }

      if (v54 == 1)
      {
        v56 = 16;
LABEL_143:
        *(a1 + v59[842]) |= v56;
        continue;
      }

      if (!v54)
      {
        goto LABEL_145;
      }
    }

    if (v54 == 2)
    {
      v56 = 32;
    }

    else
    {
      if (v54 != 4)
      {
        goto LABEL_129;
      }

      v56 = 8;
    }

    goto LABEL_143;
  }

LABEL_145:
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

uint64_t GEOPDShardedIdReadAllFrom(uint64_t a1, void *a2)
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
          goto LABEL_114;
        }

        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v8 = objc_msgSend_position(v3, v63[0]);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v63[0] & 0x7F) << v5;
          if ((v63[0] & 0x80) == 0)
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
          goto LABEL_114;
        }

        v14 = v7 >> 3;
        if (v14 > 3)
        {
          break;
        }

        if (v14 == 1)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v38 = objc_msgSend_position(v3, v63[0]);
            if (v38 + 1 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3), v39 + 1 <= [v3 length]))
            {
              v40 = [v3 data];
              [v40 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v37 |= (v63[0] & 0x7F) << v35;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_92;
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

LABEL_92:
          v58 = 32;
          goto LABEL_97;
        }

        if (v14 != 2)
        {
          if (v14 == 3)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 56) |= 8u;
            while (1)
            {
              LOBYTE(v63[0]) = 0;
              v25 = objc_msgSend_position(v3, v63[0]);
              if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
              {
                v27 = [v3 data];
                [v27 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v24 |= (v63[0] & 0x7F) << v22;
              if ((v63[0] & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_111;
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

LABEL_111:
            v59 = 44;
            goto LABEL_112;
          }

LABEL_64:
          if (!*(a1 + 8))
          {
            v42 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v43 = *(a1 + 8);
            *(a1 + 8) = v42;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_116;
          }

          goto LABEL_113;
        }

        v63[0] = 0;
        v63[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_116;
        }

        v56 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v56, v3))
        {

          goto LABEL_116;
        }

        PBReaderRecallMark();
        v57 = *(a1 + 24);
        *(a1 + 24) = v56;

LABEL_113:
        v60 = objc_msgSend_position(v3);
        if (v60 >= [v3 length])
        {
          goto LABEL_114;
        }
      }

      if (v14 > 49)
      {
        if (v14 == 50)
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v53 = objc_msgSend_position(v3, v63[0]);
            if (v53 + 1 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3), v54 + 1 <= [v3 length]))
            {
              v55 = [v3 data];
              [v55 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v52 |= (v63[0] & 0x7F) << v50;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v11 = v51++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_101;
            }
          }

          if ([v3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v52;
          }

LABEL_101:
          v59 = 40;
          goto LABEL_112;
        }

        if (v14 == 51)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 56) |= 0x20u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v31 = objc_msgSend_position(v3, v63[0]);
            if (v31 + 1 >= objc_msgSend_position(v3) && (v32 = objc_msgSend_position(v3), v32 + 1 <= [v3 length]))
            {
              v33 = [v3 data];
              [v33 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v30 |= (v63[0] & 0x7F) << v28;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v34) = 0;
              goto LABEL_107;
            }
          }

          v34 = (v30 != 0) & ~[v3 hasError];
LABEL_107:
          *(a1 + 52) = v34;
          goto LABEL_113;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v47 = objc_msgSend_position(v3, v63[0]);
            if (v47 + 1 >= objc_msgSend_position(v3) && (v48 = objc_msgSend_position(v3), v48 + 1 <= [v3 length]))
            {
              v49 = [v3 data];
              [v49 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v46 |= (v63[0] & 0x7F) << v44;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_96;
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

LABEL_96:
          v58 = 16;
LABEL_97:
          *(a1 + v58) = v41;
          goto LABEL_113;
        }

        if (v14 == 5)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 56) |= 0x10u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v18 = objc_msgSend_position(v3, v63[0]);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:v63 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v63[0] & 0x7F) << v15;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_105;
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

LABEL_105:
          v59 = 48;
LABEL_112:
          *(a1 + v59) = v21;
          goto LABEL_113;
        }
      }

      goto LABEL_64;
    }

LABEL_114:
    v61 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_116:
    v61 = 0;
  }

  objc_sync_exit(v3);

  return v61;
}

void *GEOPDQuickLinkReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 52) >> 2) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 1) & 1);
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
  v42 = v13 & ~v10 | v8;
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
    v43 = v16 | v8 | v14;
    while (1)
    {
      if ([v3 hasError])
      {
        goto LABEL_64;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v21 = objc_msgSend_position(v3) + 1;
        if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
        {
          v23 = [v3 data];
          [v23 getBytes:&v44 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v20 |= (v44 & 0x7F) << v18;
        if ((v44 & 0x80) == 0)
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
        goto LABEL_65;
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
        break;
      }

      if (v27 == 1)
      {
        if (!v28 || (*(a1 + 52) & 2) != 0)
        {
          goto LABEL_62;
        }

        v44 = 0;
        v45 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_84;
        }

        v33 = objc_alloc_init(GEOPDQuickLinkItem);
        if (!GEOPDQuickLinkItemReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_83;
        }

        PBReaderRecallMark();
        [(GEOPDQuickLink *)a1 _addNoFlagsQuickLinkItem:v33];
LABEL_54:

        goto LABEL_60;
      }

      if (v42 & 1) == 0 || (*(a1 + 52))
      {
        goto LABEL_62;
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
        goto LABEL_66;
      }

LABEL_60:
      if ((v43 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_63:
      v36 = objc_msgSend_position(v3);
      if (v36 >= [v3 length])
      {
        goto LABEL_64;
      }
    }

    if (!v28 || (*(a1 + 52) & 4) != 0)
    {
LABEL_62:
      v26 = PBReaderSkipValueWithTag();
      if ((v26 & v43 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    v44 = 0;
    v45 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_84;
    }

    v33 = objc_alloc_init(GEOPDQuickLinkItem);
    if (!GEOPDQuickLinkItemReadAllFrom(v33, v3, v9 & 1))
    {
LABEL_83:

LABEL_84:
      v26 = 0;
      goto LABEL_65;
    }

    PBReaderRecallMark();
    [(GEOPDQuickLink *)a1 _addNoFlagsSecondaryQuickLinkItem:v33];
    goto LABEL_54;
  }

LABEL_64:
  v26 = 1;
LABEL_65:
  if (v42)
  {
LABEL_66:
    *(a1 + 52) |= 1u;
  }

  if (!(v14 & 1 | ((v26 & 1) == 0)))
  {
    if (!v15)
    {
      goto LABEL_77;
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
LABEL_76:
        *(a1 + 52) |= v39;
      }

      if (v37 == 2)
      {
        v39 = 4;
        goto LABEL_76;
      }

      if (!v37)
      {
        goto LABEL_77;
      }
    }
  }

  *(a1 + 52) |= 2u;
  *(a1 + 52) |= 4u;
LABEL_77:
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_81;
  }

  v3 = 0;
  if (v14)
  {
LABEL_81:
    v40 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void sub_18675875C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEOPDPhotoReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v41 = v12 & ~v9 | v6;
  v42 = v9 | v12 | v6;
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
LABEL_59:
      v24 = 1;
      goto LABEL_62;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v43[0]) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:v43 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v43[0] & 0x7F) << v16;
      if ((v43[0] & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      if (v17++ >= 9)
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
      goto LABEL_62;
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
        goto LABEL_54;
      }

      if ((*(a1 + 52) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_61;
        }

        v8 += *(a1 + 52) << 30 >> 31;
      }

      else
      {
        v31 = PBReaderReadString();
        v32 = *(a1 + 24);
        *(a1 + 24) = v31;

        --v8;
      }
    }

    else
    {
      if (v41 & 1) == 0 || (*(a1 + 52))
      {
        goto LABEL_54;
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
        goto LABEL_63;
      }
    }

LABEL_55:
    if (!(v42 & 1 | (v8 != 0)))
    {
      goto LABEL_59;
    }
  }

  if (!v26 || (*(a1 + 52) & 4) != 0)
  {
LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  v43[0] = 0;
  v43[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_61;
  }

  v33 = objc_alloc_init(GEOPDPhotoContent);
  if (GEOPDPhotoContentReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    [(GEOPDPhoto *)a1 _addNoFlagsPhotoVersion:v33];

    goto LABEL_55;
  }

LABEL_61:
  v24 = 0;
LABEL_62:
  if ((v41 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_63:
  *(a1 + 52) |= 1u;
LABEL_64:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + 52) |= 2u;
    *(a1 + 52) |= 4u;
    goto LABEL_74;
  }

  if (v14)
  {
    while (1)
    {
      v37 = *v14++;
      v36 = v37;
      if (v37 == 1)
      {
        break;
      }

      if (v36 == 2)
      {
        v38 = 4;
LABEL_73:
        *(a1 + 52) |= v38;
        continue;
      }

      if (!v36)
      {
        goto LABEL_74;
      }
    }

    v38 = 2;
    goto LABEL_73;
  }

LABEL_74:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_78:
    v39 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_78;
    }
  }

  return v3;
}

void *GEOPDFlyoverReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDFlyoverReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDFlyoverReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDFlyoverReadAllFrom_initialTag;
  }

  Specified = GEOPDFlyoverReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDFlyoverCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOPDFlyoverReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 96)) & 0xFF00FF00FF00FFLL), 0xFFFCFFFDFFFEFFFFLL) & 0xFF01FF01FF01FF01));
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

  v12 = v9 | (v10 > 2);
  if ((v12 | v7))
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v45 = (v13 == 0) | v12;
  v46 = v12;
  v44 = (v6 != 0) | v12;
  while (1)
  {
    v14 = objc_msgSend_position(v3);
    if (v14 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_86;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v47) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:&v47 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v47 & 0x7F) << v15;
      if ((v47 & 0x80) == 0)
      {
        break;
      }

      v15 += 7;
      v21 = v16++ >= 9;
      if (v21)
      {
        v22 = 0;
        goto LABEL_32;
      }
    }

    v22 = [v3 hasError] ? 0 : v17;
LABEL_32:
    if (([v3 hasError] & 1) != 0 || (v22 & 7) == 4)
    {
LABEL_86:
      if (v46)
      {
        v38 = 1;
        goto LABEL_103;
      }

      if (!v13)
      {
LABEL_104:
        v3 = ([v3 hasError] ^ 1);
        goto LABEL_106;
      }

      while (1)
      {
        while (1)
        {
          v40 = *v13++;
          v39 = v40;
          if (v40 <= 3)
          {
            break;
          }

          if (v39 == 4)
          {
            v41 = 8;
LABEL_98:
            *(a1 + 96) |= v41;
          }

          else if (v39 == 5)
          {
            v41 = 16;
            goto LABEL_98;
          }
        }

        switch(v39)
        {
          case 1:
            v41 = 2;
            goto LABEL_98;
          case 3:
            v41 = 4;
            goto LABEL_98;
          case 0:
            goto LABEL_104;
        }
      }
    }

    v23 = v22 >> 3;
    v24 = v46;
    if ((v45 & 1) == 0)
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

    if (v23 > 2)
    {
      break;
    }

    if (v23 == 1)
    {
      if (!v24 || (*(a1 + 96) & 2) != 0)
      {
LABEL_81:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_102;
        }

        goto LABEL_82;
      }

      v47 = 0;
      v48 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_102;
      }

      [(GEOPDFlyover *)a1 _reserveCameraPaths:?];
      if ((GEOPDCameraPathFrameReadAllFrom(*(a1 + 16) + 88 * *(a1 + 24), v3) & 1) == 0)
      {
        goto LABEL_102;
      }

      PBReaderRecallMark();
      v37 = 24;
      goto LABEL_78;
    }

    if (v23 != 2)
    {
LABEL_79:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_102;
      }

      goto LABEL_82;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_81;
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    *(a1 + 96) |= 1u;
    while (1)
    {
      LOBYTE(v47) = 0;
      v33 = objc_msgSend_position(v3) + 1;
      if (v33 >= objc_msgSend_position(v3) && (v34 = objc_msgSend_position(v3) + 1, v34 <= [v3 length]))
      {
        v35 = [v3 data];
        [v35 getBytes:&v47 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v32 |= (v47 & 0x7F) << v30;
      if ((v47 & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v21 = v31++ >= 9;
      if (v21)
      {
        v36 = 0;
        goto LABEL_85;
      }
    }

    v36 = (v32 != 0) & ~[v3 hasError];
LABEL_85:
    *(a1 + 92) = v36;
LABEL_82:
    if ((v44 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

  if (v23 == 3)
  {
    if (!v24 || (*(a1 + 96) & 4) != 0)
    {
      goto LABEL_81;
    }

    v47 = 0;
    v48 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_102;
    }

    [(GEOPDFlyover *)a1 _reserveLabelFrames:?];
    if ((GEOPDLabelFrameReadAllFrom(*(a1 + 40) + 16 * *(a1 + 48), v3) & 1) == 0)
    {
      goto LABEL_102;
    }

    PBReaderRecallMark();
    v37 = 48;
LABEL_78:
    ++*(a1 + v37);
    goto LABEL_82;
  }

  if (v23 != 4)
  {
    if (v23 != 5)
    {
      goto LABEL_79;
    }

    if (!v24 || (*(a1 + 96) & 0x10) != 0)
    {
      goto LABEL_81;
    }

    v47 = 0;
    v48 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_102;
    }

    v29 = objc_alloc_init(GEOLocalizedString);
    if (!GEOLocalizedStringReadAllFrom(v29, v3, v8 & 1))
    {
      goto LABEL_101;
    }

    PBReaderRecallMark();
    [(GEOPDFlyover *)a1 _addNoFlagsNotificationMessage:v29];
    goto LABEL_72;
  }

  if (!v24 || (*(a1 + 96) & 8) != 0)
  {
    goto LABEL_81;
  }

  v47 = 0;
  v48 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_102;
  }

  v29 = objc_alloc_init(GEOPDLabelLocalizations);
  if (GEOPDLabelLocalizationsReadAllFrom(v29, v3, v8 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDFlyover *)a1 _addNoFlagsLabel:v29];
LABEL_72:

    goto LABEL_82;
  }

LABEL_101:

LABEL_102:
  v38 = 0;
LABEL_103:
  *(a1 + 96) |= 2u;
  *(a1 + 96) |= 4u;
  *(a1 + 96) |= 8u;
  *(a1 + 96) |= 0x10u;
  if (v38)
  {
    goto LABEL_104;
  }

  v3 = 0;
LABEL_106:
  if (v46)
  {
    v42 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t AppleMediaServicesLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AppleMediaServicesLibraryCore_frameworkLibrary;
  v6 = AppleMediaServicesLibraryCore_frameworkLibrary;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E70552E8;
    v8 = *off_1E70552F8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AppleMediaServicesLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_186759AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *GEOPDContainedPlaceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 60))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDContainedPlaceReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDContainedPlaceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDContainedPlaceReadAllFrom_initialTag;
  }

  Specified = GEOPDContainedPlaceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDContainedPlaceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 64));
  return Specified;
}

void *GEOPDContainedPlaceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 68)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFCFFFEFFFDLL) & 0xFF01FF01FF01FF01));
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
  LODWORD(v51) = v14;
  HIDWORD(v51) = v15 | v8;
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
LABEL_88:
      v26 = 1;
      goto LABEL_91;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v54) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v54 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v54 & 0x7F) << v18;
      if ((v54 & 0x80) == 0)
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
      goto LABEL_91;
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

    if (v27 <= 2)
    {
      break;
    }

    if (v27 == 3)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_79;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 68) |= 1u;
      while (1)
      {
        LOBYTE(v54) = 0;
        v40 = objc_msgSend_position(v3) + 1;
        if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
        {
          v42 = [v3 data];
          [v42 getBytes:&v54 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v39 |= (v54 & 0x7F) << v37;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v24 = v38++ >= 9;
        if (v24)
        {
          v43 = 0;
          goto LABEL_85;
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

LABEL_85:
      *(a1 + 32) = v43;
      goto LABEL_80;
    }

    if (v27 == 4)
    {
      if (!v28 || (*(a1 + 68) & 0x10) != 0)
      {
LABEL_79:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_80;
      }

      v54 = 0;
      v55 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_90;
      }

      v33 = objc_alloc_init(GEOPDLinkedPlace);
      if (!GEOPDLinkedPlaceReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_89;
      }

      PBReaderRecallMark();
      [(GEOPDContainedPlace *)a1 _addNoFlagsSiblingPlace:v33];
      goto LABEL_57;
    }

LABEL_58:
    if ((v51 & 1) == 0 || (*(a1 + 68) & 2) != 0)
    {
      goto LABEL_79;
    }

    if (!*(a1 + 16))
    {
      v34 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v35 = *(a1 + 16);
      *(a1 + 16) = v34;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v50 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_92;
    }

LABEL_80:
    if (!(BYTE4(v51) & 1 | (v6 != 0)))
    {
      goto LABEL_88;
    }
  }

  if (v27 != 1)
  {
    if (v27 == 2)
    {
      if (!v28 || (*(a1 + 68) & 4) != 0)
      {
        goto LABEL_79;
      }

      v54 = 0;
      v55 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_90;
      }

      v33 = objc_alloc_init(GEOPDLinkedPlace);
      if (!GEOPDLinkedPlaceReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_89;
      }

      PBReaderRecallMark();
      [(GEOPDContainedPlace *)a1 _addNoFlagsChildPlace:v33];
LABEL_57:

      goto LABEL_80;
    }

    goto LABEL_58;
  }

  if (!v28)
  {
    goto LABEL_79;
  }

  if ((*(a1 + 68) & 8) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_90;
    }

    v6 += *(a1 + 68) << 28 >> 31;
    goto LABEL_80;
  }

  v54 = 0;
  v55 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_90;
  }

  v33 = objc_alloc_init(GEOPDLinkedPlace);
  if (GEOPDLinkedPlaceReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v36 = *(a1 + 40);
    *(a1 + 40) = v33;

    --v6;
    goto LABEL_80;
  }

LABEL_89:

LABEL_90:
  v26 = 0;
LABEL_91:
  v50 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v51 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_92:
  *(a1 + v50[190]) |= 2u;
LABEL_93:
  if (v53 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v50[190]) |= 8u;
    *(a1 + v50[190]) |= 4u;
    *(a1 + v50[190]) |= 0x10u;
    goto LABEL_106;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v45 = *v16++;
        v44 = v45;
        v46 = v45 == 1;
        if (v45 > 1)
        {
          break;
        }

        if (v46)
        {
          v47 = 8;
LABEL_104:
          *(a1 + v50[190]) |= v47;
          continue;
        }

        if (!v44)
        {
          goto LABEL_106;
        }
      }

      if (v44 == 4)
      {
        v47 = 16;
      }

      else
      {
        if (v44 != 2)
        {
          continue;
        }

        v47 = 4;
      }

      goto LABEL_104;
    }
  }

LABEL_106:
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
    v48 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

BOOL ___photoContentForURLType_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a2 + 36) & 2) != 0)
  {
    v2 = *(a2 + 28);
  }

  else
  {
    v2 = 0;
  }

  return v2 == *(a1 + 32);
}

uint64_t GEOPDEnhancedPlacementReadAllFrom(uint64_t a1, void *a2)
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
          LOBYTE(v46[0]) = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:v46 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v46[0] & 0x7F) << v5;
          if ((v46[0] & 0x80) == 0)
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
        v13 = v7 & 7;
        v14 = v13 == 4 ? 1 : v12;
        if (v14)
        {
          break;
        }

        v15 = v7 >> 3;
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            *(a1 + 56) |= 4u;
            LODWORD(v46[0]) = 0;
            v30 = objc_msgSend_position(v3);
            if (v30 + 4 >= objc_msgSend_position(v3) && (v31 = objc_msgSend_position(v3), v31 + 4 <= [v3 length]))
            {
              v42 = [v3 data];
              [v42 getBytes:v46 range:{objc_msgSend_position(v3), 4}];

              [v3 setPosition:objc_msgSend_position(v3) + 4];
            }

            else
            {
              [v3 _setError];
            }

            v40 = v46[0];
            v41 = 52;
            goto LABEL_71;
          }

          if (v15 == 4)
          {
            *(a1 + 56) |= 2u;
            LODWORD(v46[0]) = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 4 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 4 <= [v3 length]))
            {
              v39 = [v3 data];
              [v39 getBytes:v46 range:{objc_msgSend_position(v3), 4}];

              [v3 setPosition:objc_msgSend_position(v3) + 4];
            }

            else
            {
              [v3 _setError];
            }

            v40 = v46[0];
            v41 = 48;
LABEL_71:
            *(a1 + v41) = v40;
            goto LABEL_72;
          }
        }

        else
        {
          if (v15 == 1)
          {
            if (v13 == 2)
            {
              v46[0] = 0;
              v46[1] = 0;
              if (!PBReaderPlaceMark())
              {
                goto LABEL_74;
              }

              v22 = objc_msgSend_position(v3);
              for (i = [v3 length]; v22 < i && (objc_msgSend(v3, "hasError") & 1) == 0; i = objc_msgSend(v3, "length"))
              {
                v24 = 0;
                v25 = 0;
                v26 = 0;
                while (1)
                {
                  v47 = 0;
                  v27 = objc_msgSend_position(v3);
                  if (v27 + 1 >= objc_msgSend_position(v3) && (v28 = objc_msgSend_position(v3), v28 + 1 <= [v3 length]))
                  {
                    v29 = [v3 data];
                    [v29 getBytes:&v47 range:{objc_msgSend_position(v3), 1}];

                    [v3 setPosition:objc_msgSend_position(v3) + 1];
                  }

                  else
                  {
                    [v3 _setError];
                  }

                  v26 |= (v47 & 0x7F) << v24;
                  if ((v47 & 0x80) == 0)
                  {
                    break;
                  }

                  v24 += 7;
                  v11 = v25++ >= 9;
                  if (v11)
                  {
                    goto LABEL_49;
                  }
                }

                [v3 hasError];
LABEL_49:
                PBRepeatedUInt64Add();
                v22 = objc_msgSend_position(v3);
              }

              PBReaderRecallMark();
            }

            else
            {
              v32 = 0;
              v33 = 0;
              v34 = 0;
              while (1)
              {
                LOBYTE(v46[0]) = 0;
                v35 = objc_msgSend_position(v3);
                if (v35 + 1 >= objc_msgSend_position(v3) && (v36 = objc_msgSend_position(v3), v36 + 1 <= [v3 length]))
                {
                  v37 = [v3 data];
                  [v37 getBytes:v46 range:{objc_msgSend_position(v3), 1}];

                  [v3 setPosition:objc_msgSend_position(v3) + 1];
                }

                else
                {
                  [v3 _setError];
                }

                v34 |= (v46[0] & 0x7F) << v32;
                if ((v46[0] & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v11 = v33++ >= 9;
                if (v11)
                {
                  goto LABEL_64;
                }
              }

              [v3 hasError];
LABEL_64:
              PBRepeatedUInt64Add();
            }

            goto LABEL_72;
          }

          if (v15 == 2)
          {
            *(a1 + 56) |= 1u;
            v46[0] = 0;
            v16 = objc_msgSend_position(v3);
            if (v16 + 8 >= objc_msgSend_position(v3) && (v17 = objc_msgSend_position(v3), v17 + 8 <= [v3 length]))
            {
              v38 = [v3 data];
              [v38 getBytes:v46 range:{objc_msgSend_position(v3), 8}];

              [v3 setPosition:objc_msgSend_position(v3) + 8];
            }

            else
            {
              [v3 _setError];
            }

            *(a1 + 40) = v46[0];
            goto LABEL_72;
          }
        }

        if (!*(a1 + 8))
        {
          v20 = objc_alloc_init(MEMORY[0x1E69C65D8]);
          v21 = *(a1 + 8);
          *(a1 + 8) = v20;
        }

        if (!PBUnknownFieldAdd())
        {
          goto LABEL_74;
        }

LABEL_72:
        v43 = objc_msgSend_position(v3);
      }

      while (v43 < [v3 length]);
    }

    v44 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_74:
    v44 = 0;
  }

  objc_sync_exit(v3);

  return v44;
}

uint64_t GEOPDGroundViewLabelReadAllFrom(uint64_t a1, void *a2, int a3)
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
          break;
        }

        v16 = v9 >> 3;
        if (v16 == 2)
        {
          v30[0] = 0;
          v30[1] = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_44;
          }

          v24 = objc_alloc_init(GEOPDGroundViewLabelInfo);
          if (!GEOPDGroundViewLabelInfoReadAllFrom(v24, v5, a3))
          {

            goto LABEL_44;
          }

          PBReaderRecallMark();
          [(GEOPDGroundViewLabel *)a1 addGroundViewLabelInfo:v24];
        }

        else if (v16 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v20 = objc_msgSend_position(v5, v30[0]);
            if (v20 + 1 >= objc_msgSend_position(v5) && (v21 = objc_msgSend_position(v5), v21 + 1 <= [v5 length]))
            {
              v22 = [v5 data];
              [v22 getBytes:v30 range:{objc_msgSend_position(v5), 1}];

              [v5 setPosition:objc_msgSend_position(v5) + 1];
            }

            else
            {
              [v5 _setError];
            }

            v19 |= (v30[0] & 0x7F) << v17;
            if ((v30[0] & 0x80) == 0)
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
            v25 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v26 = *(a1 + 8);
            *(a1 + 8) = v25;
          }

          if (!PBUnknownFieldAdd())
          {
            goto LABEL_44;
          }
        }

        v27 = objc_msgSend_position(v5);
      }

      while (v27 < [v5 length]);
    }

    v28 = [v5 hasError] ^ 1;
  }

  else
  {
LABEL_44:
    v28 = 0;
  }

  objc_sync_exit(v5);

  return v28;
}

void *GEOPDGroundViewLabelInfoReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDGroundViewLabelInfoReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDGroundViewLabelInfoReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDGroundViewLabelInfoReadAllFrom_initialTag;
  }

  Specified = GEOPDGroundViewLabelInfoReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOPDGroundViewLabelInfoReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 76)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFDFFFBFFFCLL) & 0xFF01FF01FF01FF01));
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

  v12 = v10 > 1;
  v13 = (v12 & ~v9 | v6);
  v14 = v9 | v12;
  v52 = v13;
  v53 = v14 | v6;
  if ((v14 | v7))
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v54 = (v15 == 0) | v14;
  v55 = v14;
  while (1)
  {
    v16 = objc_msgSend_position(v3);
    if (v16 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_84:
      v25 = 1;
      goto LABEL_85;
    }

    v17 = 0;
    v18 = 0;
    v19 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v56 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v56 & 0x7F) << v17;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v17 += 7;
      if (v18++ >= 9)
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
      goto LABEL_85;
    }

    v26 = v19 >> 3;
    v27 = v55;
    if ((v54 & 1) == 0)
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

    if (v26 <= 2)
    {
      break;
    }

    switch(v26)
    {
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_69;
        }

        *(a1 + 76) |= 2u;
        v56 = 0;
        v34 = objc_msgSend_position(v3) + 8;
        if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 8, v35 <= [v3 length]))
        {
          v42 = [v3 data];
          [v42 getBytes:&v56 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v43 = v56;
        v44 = 56;
LABEL_82:
        *(a1 + v44) = v43;
        goto LABEL_83;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_69;
        }

        *(a1 + 76) |= 1u;
        v56 = 0;
        v36 = objc_msgSend_position(v3) + 8;
        if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 8, v37 <= [v3 length]))
        {
          v45 = [v3 data];
          [v45 getBytes:&v56 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        v43 = v56;
        v44 = 24;
        goto LABEL_82;
      case 5:
        if (!v27)
        {
          goto LABEL_69;
        }

        if ((*(a1 + 76) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_106;
          }

          v41 = 16 * *(a1 + 76);
          goto LABEL_77;
        }

        v32 = PBReaderReadString();
        v33 = 32;
        goto LABEL_62;
    }

LABEL_63:
    if ((v52 & 1) == 0 || (*(a1 + 76) & 4) != 0)
    {
LABEL_69:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_83;
    }

    if (!*(a1 + 16))
    {
      v39 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v40 = *(a1 + 16);
      *(a1 + 16) = v39;
    }

    if (!PBUnknownFieldAdd())
    {
      v25 = 0;
      goto LABEL_86;
    }

LABEL_83:
    if (!(v53 & 1 | (v8 != 0)))
    {
      goto LABEL_84;
    }
  }

  if (v26 == 1)
  {
    if (!v27)
    {
      goto LABEL_69;
    }

    if ((*(a1 + 76) & 0x10) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_106;
      }

      v41 = 8 * *(a1 + 76);
      goto LABEL_77;
    }

    v32 = PBReaderReadString();
    v33 = 40;
    goto LABEL_62;
  }

  if (v26 != 2)
  {
    goto LABEL_63;
  }

  if (!v27)
  {
    goto LABEL_69;
  }

  if ((*(a1 + 76) & 0x20) == 0)
  {
    v32 = PBReaderReadString();
    v33 = 48;
LABEL_62:
    v38 = *(a1 + v33);
    *(a1 + v33) = v32;

    --v8;
    goto LABEL_83;
  }

  if (PBReaderSkipValueWithTag())
  {
    v41 = 4 * *(a1 + 76);
LABEL_77:
    v8 += v41 >> 7;
    goto LABEL_83;
  }

LABEL_106:
  v25 = 0;
LABEL_85:
  if ((v52 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_86:
  *(a1 + 76) |= 4u;
LABEL_87:
  if (v55 || (v25 & 1) == 0)
  {
    *(a1 + 76) |= 0x10u;
    *(a1 + 76) |= 0x20u;
    *(a1 + 76) |= 8u;
    goto LABEL_100;
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
          v49 = 16;
LABEL_98:
          *(a1 + 76) |= v49;
          continue;
        }

        if (!v46)
        {
          goto LABEL_100;
        }
      }

      if (v46 == 5)
      {
        v49 = 8;
      }

      else
      {
        if (v46 != 2)
        {
          continue;
        }

        v49 = 32;
      }

      goto LABEL_98;
    }
  }

LABEL_100:
  if (v25)
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

uint64_t GEOPDPOIClaimReadAllFrom(uint64_t a1, void *a2)
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
          break;
        }

        v14 = v7 >> 3;
        switch(v14)
        {
          case 3:
            v28 = PBReaderReadString();
            v29 = *(a1 + 16);
            *(a1 + 16) = v28;

            break;
          case 2:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v37 = 0;
              v25 = objc_msgSend_position(v3);
              if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
              {
                v27 = [v3 data];
                [v27 getBytes:&v37 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v24 |= (v37 & 0x7F) << v22;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_46;
              }
            }

            v21 = (v24 != 0) & ~[v3 hasError];
LABEL_46:
            v32 = 24;
            goto LABEL_49;
          case 1:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 28) |= 2u;
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
                LOBYTE(v21) = 0;
                goto LABEL_48;
              }
            }

            v21 = (v17 != 0) & ~[v3 hasError];
LABEL_48:
            v32 = 25;
LABEL_49:
            *(a1 + v32) = v21;
            break;
          default:
            if (!*(a1 + 8))
            {
              v30 = objc_alloc_init(MEMORY[0x1E69C65D8]);
              v31 = *(a1 + 8);
              *(a1 + 8) = v30;
            }

            if (!PBUnknownFieldAdd())
            {
              goto LABEL_52;
            }

            break;
        }

        v33 = objc_msgSend_position(v3);
      }

      while (v33 < [v3 length]);
    }

    v34 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_52:
    v34 = 0;
  }

  objc_sync_exit(v3);

  return v34;
}

void *GEOPDTrailHeadReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDTrailHeadReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDTrailHeadReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDTrailHeadReadAllFrom_initialTag;
  }

  Specified = GEOPDTrailHeadReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDTrailHeadCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDTrailHeadReadSpecified(uint64_t a1, void *a2, int *a3)
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

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_84;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 60) |= 1u;
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
        v49 = 52;
      }

      else
      {
        if (v27 != 4)
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
        *(a1 + 60) |= 2u;
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
        v49 = 56;
      }

      *(a1 + v49) = v40;
      goto LABEL_95;
    }

    if (v27 != 1)
    {
      if (v27 == 2)
      {
        if (v28 && (*(a1 + 60) & 8) == 0)
        {
          v57 = 0;
          v58 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_118;
          }

          v33 = objc_alloc_init(GEOPDMapsIdentifier);
          if (!GEOPDMapsIdentifierReadAllFrom(v33, v3))
          {
            goto LABEL_117;
          }

          PBReaderRecallMark();
          [(GEOPDTrailHead *)a1 _addNoFlagsMapsId:v33];
LABEL_73:

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
    goto LABEL_118;
  }

  v33 = objc_alloc_init(GEOPDTrail);
  if (GEOPDTrailReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDTrailHead *)a1 _addNoFlagsTrail:v33];
    goto LABEL_73;
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
      if (v52 == 1)
      {
        break;
      }

      if (v51 == 2)
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

uint64_t GEOPDSupportsOfflineMapsReadAllFrom(uint64_t a1, void *a2)
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
          *(a1 + 24) |= 1u;
          while (1)
          {
            v36 = 0;
            v25 = objc_msgSend_position(v3);
            if (v25 + 1 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3), v26 + 1 <= [v3 length]))
            {
              v27 = [v3 data];
              [v27 getBytes:&v36 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v24 |= (v36 & 0x7F) << v22;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_48;
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

LABEL_48:
          *(a1 + 16) = v28;
        }

        else if (v14 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v35 = 0;
            v18 = objc_msgSend_position(v3);
            if (v18 + 1 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3), v19 + 1 <= [v3 length]))
            {
              v20 = [v3 data];
              [v20 getBytes:&v35 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v17 |= (v35 & 0x7F) << v15;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_44;
            }
          }

          v21 = (v17 != 0) & ~[v3 hasError];
LABEL_44:
          *(a1 + 20) = v21;
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
            goto LABEL_51;
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
LABEL_51:
    v32 = 0;
  }

  objc_sync_exit(v3);

  return v32;
}

uint64_t GEOPDCollectionIdsReadAllFrom(uint64_t a1, void *a2)
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

          v14 = objc_alloc_init(GEOPDMapsIdentifier);
          if (!GEOPDMapsIdentifierReadAllFrom(v14, v3))
          {

            goto LABEL_29;
          }

          PBReaderRecallMark();
          [(GEOPDCollectionIds *)a1 addCollectionId:v14];
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

void ___loadAttributions_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v12}];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
}

void *GEOPDMiniBrowseCategoriesReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDMiniBrowseCategoriesReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDMiniBrowseCategoriesReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDMiniBrowseCategoriesReadAllFrom_initialTag;
  }

  Specified = GEOPDMiniBrowseCategoriesReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDMiniBrowseCategoriesCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDMiniBrowseCategoriesReadSpecified(uint64_t a1, void *a2, int *a3)
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
    v11 = a3[v8];
    if (v11 > -3)
    {
      break;
    }

    if (v11 == -4)
    {
      ++v10;
      v6 = 1;
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
    ++v8;
  }

  if (v11 == -2)
  {
    v6 = 1;
    goto LABEL_11;
  }

  if (v11 == -1)
  {
    v6 = 1;
LABEL_11:
    v9 = 1;
    goto LABEL_15;
  }

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = v10 != 0;
  v41 = v12 & ~v9 | v6;
  v13 = v9 | v12;
  if (((v9 | v12) | v7))
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = v8 != 0;
  v16 = objc_msgSend_position(v3);
  if (v16 < [v3 length])
  {
    v42 = v15 | v6 | v13;
    while (1)
    {
      if ([v3 hasError])
      {
        goto LABEL_63;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v20 = objc_msgSend_position(v3) + 1;
        if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
        {
          v22 = [v3 data];
          [v22 getBytes:v43 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v19 |= (v43[0] & 0x7F) << v17;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        if (v18++ >= 9)
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
        goto LABEL_64;
      }

      v26 = v19 >> 3;
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
        break;
      }

      if (v26 == 1)
      {
        if (!v27 || (*(a1 + 52) & 2) != 0)
        {
          goto LABEL_61;
        }

        v43[0] = 0;
        v43[1] = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_83;
        }

        v32 = objc_alloc_init(GEOPDMiniBrowseCategory);
        if (!GEOPDMiniBrowseCategoryReadAllFrom(v32, v3))
        {

LABEL_83:
          v25 = 0;
          goto LABEL_64;
        }

        PBReaderRecallMark();
        [(GEOPDMiniBrowseCategories *)a1 _addNoFlagsMiniBrowseCategory:v32];
LABEL_53:

        goto LABEL_59;
      }

      if (v41 & 1) == 0 || (*(a1 + 52))
      {
        goto LABEL_61;
      }

      if (!*(a1 + 16))
      {
        v33 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v34 = *(a1 + 16);
        *(a1 + 16) = v33;
      }

      v25 = PBUnknownFieldAdd();
      if (!v25)
      {
        goto LABEL_65;
      }

LABEL_59:
      if ((v42 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_62:
      v35 = objc_msgSend_position(v3);
      if (v35 >= [v3 length])
      {
        goto LABEL_63;
      }
    }

    if (!v27 || (*(a1 + 52) & 4) != 0)
    {
LABEL_61:
      v25 = PBReaderSkipValueWithTag();
      if ((v25 & v42 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v32 = PBReaderReadString();
    if (v32)
    {
      [(GEOPDMiniBrowseCategories *)a1 _addNoFlagsTopChildName:v32];
    }

    goto LABEL_53;
  }

LABEL_63:
  v25 = 1;
LABEL_64:
  if (v41)
  {
LABEL_65:
    *(a1 + 52) |= 1u;
  }

  if (!(v13 & 1 | ((v25 & 1) == 0)))
  {
    if (!v14)
    {
      goto LABEL_76;
    }

    while (1)
    {
      while (1)
      {
        v37 = *v14++;
        v36 = v37;
        if (v37 != 1)
        {
          break;
        }

        v38 = 2;
LABEL_75:
        *(a1 + 52) |= v38;
      }

      if (v36 == 2)
      {
        v38 = 4;
        goto LABEL_75;
      }

      if (!v36)
      {
        goto LABEL_76;
      }
    }
  }

  *(a1 + 52) |= 2u;
  *(a1 + 52) |= 4u;
LABEL_76:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

    goto LABEL_80;
  }

  v3 = 0;
  if (v13)
  {
LABEL_80:
    v39 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOAttributionAppReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOAttributionAppReadAllFrom can only be called once per object"];
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
    v9 = &GEOAttributionAppReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOAttributionAppReadAllFrom_initialTag;
  }

  Specified = GEOAttributionAppReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOAttributionAppReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = ((*(a1 + 60) >> 4) & 1) + ((*(a1 + 60) >> 5) & 1) + ((*(a1 + 60) >> 3) & 1);
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
  LODWORD(v63) = v12 & ~v6 | v7;
  HIDWORD(v63) = v6 | v12 | v7;
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
    v15 = objc_msgSend_position(v3, v63);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_103:
      v24 = 1;
      goto LABEL_104;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v64 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v64 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v64 & 0x7F) << v16;
      if ((v64 & 0x80) == 0)
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
      goto LABEL_104;
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
      switch(v25)
      {
        case 3:
          if ((v8 & 1) == 0)
          {
            goto LABEL_89;
          }

          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            v67 = 0;
            v42 = objc_msgSend_position(v3) + 1;
            if (v42 >= objc_msgSend_position(v3) && (v43 = objc_msgSend_position(v3) + 1, v43 <= [v3 length]))
            {
              v44 = [v3 data];
              [v44 getBytes:&v67 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v41 |= (v67 & 0x7F) << v39;
            if ((v67 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v22 = v40++ >= 9;
            if (v22)
            {
              v45 = 0;
              goto LABEL_92;
            }
          }

          v45 = (v41 != 0) & ~[v3 hasError];
LABEL_92:
          v56 = 57;
          break;
        case 4:
          if ((v8 & 1) == 0)
          {
            goto LABEL_89;
          }

          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v66 = 0;
            v49 = objc_msgSend_position(v3) + 1;
            if (v49 >= objc_msgSend_position(v3) && (v50 = objc_msgSend_position(v3) + 1, v50 <= [v3 length]))
            {
              v51 = [v3 data];
              [v51 getBytes:&v66 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v48 |= (v66 & 0x7F) << v46;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v22 = v47++ >= 9;
            if (v22)
            {
              v45 = 0;
              goto LABEL_94;
            }
          }

          v45 = (v48 != 0) & ~[v3 hasError];
LABEL_94:
          v56 = 56;
          break;
        case 5:
          if ((v8 & 1) == 0)
          {
            goto LABEL_89;
          }

          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v65 = 0;
            v34 = objc_msgSend_position(v3) + 1;
            if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 1, v35 <= [v3 length]))
            {
              v36 = [v3 data];
              [v36 getBytes:&v65 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v33 |= (v65 & 0x7F) << v31;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v22 = v32++ >= 9;
            if (v22)
            {
              v37 = 0;
              goto LABEL_99;
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

LABEL_99:
          *(a1 + 52) = v37;
          goto LABEL_102;
        default:
LABEL_83:
          if ((v63 & 1) == 0 || (*(a1 + 60) & 8) != 0)
          {
            goto LABEL_89;
          }

          if (!*(a1 + 16))
          {
            v54 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v55 = *(a1 + 16);
            *(a1 + 16) = v54;
          }

          if (!PBUnknownFieldAdd())
          {
            v24 = 0;
            v62 = &OBJC_IVAR___GEOPlaceCollectionStorage__readerLock;
            goto LABEL_105;
          }

          goto LABEL_102;
      }

      *(a1 + v56) = v45;
      goto LABEL_102;
    }

    if (v25 == 1)
    {
      break;
    }

    if (v25 != 2)
    {
      goto LABEL_83;
    }

    if (!v26 || (*(a1 + 60) & 0x20) != 0)
    {
LABEL_89:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_102;
    }

    v38 = PBReaderReadString();
    if (v38)
    {
      [(GEOAttributionApp *)a1 _addNoFlagsHandledSchemes:v38];
    }

LABEL_102:
    if (!(BYTE4(v63) & 1 | (v9 != 0)))
    {
      goto LABEL_103;
    }
  }

  if (!v26)
  {
    goto LABEL_89;
  }

  if ((*(a1 + 60) & 0x10) == 0)
  {
    v52 = PBReaderReadString();
    v53 = *(a1 + 24);
    *(a1 + 24) = v52;

    --v9;
    goto LABEL_102;
  }

  if (PBReaderSkipValueWithTag())
  {
    v9 += *(a1 + 60) << 27 >> 31;
    goto LABEL_102;
  }

LABEL_122:
  v24 = 0;
LABEL_104:
  v62 = &OBJC_IVAR___GEOPlaceCollectionStorage__readerLock;
  if ((v63 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_105:
  *(a1 + v62[251]) |= 8u;
LABEL_106:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v62[251]) |= 0x10u;
    *(a1 + v62[251]) |= 0x20u;
    goto LABEL_116;
  }

  if (v14)
  {
    while (1)
    {
      v58 = *v14++;
      v57 = v58;
      if (v58 == 1)
      {
        break;
      }

      if (v57 == 2)
      {
        v59 = 32;
LABEL_115:
        *(a1 + v62[251]) |= v59;
        continue;
      }

      if (!v57)
      {
        goto LABEL_116;
      }
    }

    v59 = 16;
    goto LABEL_115;
  }

LABEL_116:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_120:
    v60 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_120;
    }
  }

  return v3;
}

void *GEOPDPlaceCollectionReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 220))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDPlaceCollectionReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 224));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 216) = objc_msgSend_position(v8);
  *(a1 + 220) = [v8 length];
  if (a3)
  {
    v9 = &GEOPDPlaceCollectionReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDPlaceCollectionReadAllFrom_initialTag;
  }

  Specified = GEOPDPlaceCollectionReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDPlaceCollectionCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 224));
  return Specified;
}

void *GEOPDPlaceCollectionReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 224));
  [v3 setLength:*(a1 + 220)];
  [v3 seekToOffset:*(a1 + 216)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = (a1 + 240);
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDBB0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBDBC0), v13)), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDB90), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBDBA0), v13))), vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBDBD0), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBDBE0), v13))));
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

  v16 = v14 > 0x11;
  v71 = v9;
  v72 = v16 & ~v10 | v8;
  v17 = v10 | v16;
  v73 = v17 | v8;
  if ((v17 | v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  v74 = (v18 == 0) | v17;
  v75 = v17;
  while (2)
  {
    v19 = objc_msgSend_position(v3);
    if (v19 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_227:
      v28 = 1;
      goto LABEL_230;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v76) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v76 & 0x7F) << v20;
      if ((v76 & 0x80) == 0)
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
      goto LABEL_230;
    }

    v29 = v22 >> 3;
    v30 = v75;
    if ((v74 & 1) == 0)
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
        if (!v30 || (*(a1 + 241) & 0x80) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsDisplayTitle:v35];
        goto LABEL_191;
      case 2:
        if (!v30 || (*(a1 + 241) & 8) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionDescription:v35];
        goto LABEL_191;
      case 3:
        if (!v30 || (*(a1 + 242) & 0x40) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDCaptionedPhoto);
        if (!GEOPDCaptionedPhotoReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsPhoto:v35];
        goto LABEL_191;
      case 4:
        if (!v30)
        {
          goto LABEL_198;
        }

        if ((*(a1 + 241) & 0x10) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_229;
          }

          v65 = (*(a1 + 240) << 19) >> 31;
LABEL_224:
          v6 += v65;
          goto LABEL_199;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDMapsIdentifier);
        if (GEOPDMapsIdentifierReadAllFrom(v35, v3))
        {
          PBReaderRecallMark();
          v36 = 80;
LABEL_105:
          v48 = *(a1 + v36);
          *(a1 + v36) = v35;
LABEL_145:

          --v6;
LABEL_199:
          if (!(v73 & 1 | (v6 != 0)))
          {
            goto LABEL_227;
          }

          continue;
        }

LABEL_228:

LABEL_229:
        v28 = 0;
LABEL_230:
        if (v72)
        {
LABEL_231:
          *(a1 + 240) |= 0x10u;
        }

        if (v75 || (v28 & 1) == 0)
        {
          *(a1 + 240) |= 0x8000u;
          *(a1 + 240) |= 0x800u;
          *(a1 + 240) |= 0x400000u;
          *(a1 + 240) |= 0x1000u;
          *(a1 + 240) |= 0x1000000u;
          *(a1 + 240) |= 0x800000u;
          *(a1 + 240) |= 0x4000000u;
          *(a1 + 240) |= 0x10000u;
          *(a1 + 240) |= 0x80u;
          *(a1 + 240) |= 0x100u;
          *(a1 + 240) |= 0x8000000u;
          *(a1 + 240) |= 0x20u;
          *(a1 + 240) |= 0x2000000u;
          *(a1 + 240) |= 0x40u;
          *(a1 + 240) |= 0x200u;
          *(a1 + 240) |= 0x400u;
          *(a1 + 240) |= 0x4000u;
          *(a1 + 240) |= 0x2000u;
          *(a1 + 240) |= 0x100000u;
          *(a1 + 240) |= 0x80000u;
          *(a1 + 240) |= 0x200000u;
          *(a1 + 240) |= 0x20000u;
          *(a1 + 240) |= 0x40000u;
        }

        else if (v18)
        {
          while (1)
          {
            v68 = *v18++;
            v67 = 0x8000;
            switch(v68)
            {
              case 0:
                goto LABEL_260;
              case 1:
                goto LABEL_258;
              case 2:
                v67 = 2048;
                goto LABEL_258;
              case 3:
                v67 = 0x400000;
                goto LABEL_258;
              case 4:
                v67 = 4096;
                goto LABEL_258;
              case 5:
                v67 = 0x1000000;
                goto LABEL_258;
              case 6:
                v67 = 0x800000;
                goto LABEL_258;
              case 7:
                v67 = 0x4000000;
                goto LABEL_258;
              case 8:
                v67 = 0x10000;
                goto LABEL_258;
              case 10:
                v67 = 128;
                goto LABEL_258;
              case 11:
                v67 = 256;
                goto LABEL_258;
              case 13:
                v67 = 0x8000000;
                goto LABEL_258;
              case 14:
                v67 = 32;
                goto LABEL_258;
              case 15:
                v67 = 0x2000000;
                goto LABEL_258;
              case 17:
                v67 = 64;
                goto LABEL_258;
              case 19:
                v67 = 512;
                goto LABEL_258;
              case 20:
                v67 = 1024;
                goto LABEL_258;
              case 21:
                v67 = 0x4000;
                goto LABEL_258;
              case 22:
                v67 = 0x2000;
                goto LABEL_258;
              case 23:
                v67 = 0x100000;
                goto LABEL_258;
              case 24:
                v67 = 0x80000;
                goto LABEL_258;
              case 25:
                v67 = 0x200000;
                goto LABEL_258;
              case 26:
                v67 = 0x20000;
                goto LABEL_258;
              case 27:
                v67 = 0x40000;
LABEL_258:
                *(a1 + 240) |= v67;
                break;
              default:
                continue;
            }
          }
        }

LABEL_260:
        if (v28)
        {
          v3 = ([v3 hasError] ^ 1);
        }

        else
        {
          v3 = 0;
        }

        if (v75)
        {
          v69 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        return v3;
      case 5:
        if (!v30)
        {
          goto LABEL_198;
        }

        if (*(a1 + 243))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_229;
          }

          v65 = (*(a1 + 240) << 7) >> 31;
          goto LABEL_224;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDMapsIdentifier);
        if (!GEOPDMapsIdentifierReadAllFrom(v35, v3))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        v36 = 184;
        goto LABEL_105;
      case 6:
        if (!v30 || (*(a1 + 242) & 0x80) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDPlaceCollectionItem);
        if (!GEOPDPlaceCollectionItemReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsPlaceCollectionItem:v35];
        goto LABEL_191;
      case 7:
        if (!v30 || (*(a1 + 243) & 4) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsSpokenTitle:v35];
        goto LABEL_191;
      case 8:
        if (!v30 || (*(a1 + 242) & 1) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDMapsIdentifier);
        if (!GEOPDMapsIdentifierReadAllFrom(v35, v3))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsItemId:v35];
        goto LABEL_191;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_198;
        }

        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 240) |= 4u;
        while (1)
        {
          LOBYTE(v76) = 0;
          v59 = objc_msgSend_position(v3) + 1;
          if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
          {
            v61 = [v3 data];
            [v61 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v58 |= (v76 & 0x7F) << v56;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v26 = v57++ >= 9;
          if (v26)
          {
            v55 = 0;
            goto LABEL_210;
          }
        }

        if ([v3 hasError])
        {
          v55 = 0;
        }

        else
        {
          v55 = v58;
        }

LABEL_210:
        v64 = 232;
        goto LABEL_211;
      case 10:
        if (!v30 || (*(a1 + 240) & 0x80) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionClassDisplayName:v35];
        goto LABEL_191;
      case 11:
        if (!v30 || (*(a1 + 241) & 1) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionClassSpokenName:v35];
        goto LABEL_191;
      case 12:
        if ((v7 & 1) == 0)
        {
          goto LABEL_198;
        }

        *(a1 + 240) |= 1u;
        v76 = 0;
        v37 = objc_msgSend_position(v3) + 8;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 8, v38 <= [v3 length]))
        {
          v66 = [v3 data];
          [v66 getBytes:&v76 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 160) = v76;
        goto LABEL_199;
      case 13:
        if (!v30)
        {
          goto LABEL_198;
        }

        if ((*(a1 + 243) & 8) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 208;
          goto LABEL_144;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_229;
        }

        v65 = (16 * *(a1 + 240)) >> 31;
        goto LABEL_224;
      case 14:
        if (!v30)
        {
          goto LABEL_198;
        }

        if ((*(a1 + 240) & 0x20) == 0)
        {
          v39 = PBReaderReadString();
          v40 = 24;
LABEL_144:
          v48 = *(a1 + v40);
          *(a1 + v40) = v39;
          goto LABEL_145;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_229;
        }

        v65 = (*(a1 + 240) << 26) >> 31;
        goto LABEL_224;
      case 15:
        if (!v30)
        {
          goto LABEL_198;
        }

        if ((*(a1 + 243) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_229;
          }

          v65 = (*(a1 + 240) << 6) >> 31;
          goto LABEL_224;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDPublisher);
        if (!GEOPDPublisherReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        v36 = 192;
        goto LABEL_105;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_198;
        }

        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 240) |= 8u;
        while (1)
        {
          LOBYTE(v76) = 0;
          v44 = objc_msgSend_position(v3) + 1;
          if (v44 >= objc_msgSend_position(v3) && (v45 = objc_msgSend_position(v3) + 1, v45 <= [v3 length]))
          {
            v46 = [v3 data];
            [v46 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v43 |= (v76 & 0x7F) << v41;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v26 = v42++ >= 9;
          if (v26)
          {
            v47 = 0;
            goto LABEL_202;
          }
        }

        v47 = (v43 != 0) & ~[v3 hasError];
LABEL_202:
        *(a1 + 236) = v47;
        goto LABEL_199;
      case 17:
        if (!v30)
        {
          goto LABEL_198;
        }

        if ((*(a1 + 240) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_229;
          }

          v65 = (*(a1 + 240) << 25) >> 31;
          goto LABEL_224;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDCaptionedPhoto);
        if (!GEOPDCaptionedPhotoReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        v36 = 32;
        goto LABEL_105;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_198;
        }

        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 240) |= 2u;
        while (1)
        {
          LOBYTE(v76) = 0;
          v52 = objc_msgSend_position(v3) + 1;
          if (v52 >= objc_msgSend_position(v3) && (v53 = objc_msgSend_position(v3) + 1, v53 <= [v3 length]))
          {
            v54 = [v3 data];
            [v54 getBytes:&v76 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v51 |= (v76 & 0x7F) << v49;
          if ((v76 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v26 = v50++ >= 9;
          if (v26)
          {
            v55 = 0;
            goto LABEL_206;
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

LABEL_206:
        v64 = 228;
LABEL_211:
        *(a1 + v64) = v55;
        goto LABEL_199;
      case 19:
        if (!v30 || (*(a1 + 241) & 2) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedBytes);
        if (!GEOLocalizedBytesReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionDescriptionBytes:v35];
        goto LABEL_191;
      case 20:
        if (!v30 || (*(a1 + 241) & 4) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionDescriptionHtml:v35];
        goto LABEL_191;
      case 21:
        if (!v30 || (*(a1 + 241) & 0x40) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionItemDescription:v35];
        goto LABEL_191;
      case 22:
        if (!v30 || (*(a1 + 241) & 0x20) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsCollectionItemDescriptionHtml:v35];
        goto LABEL_191;
      case 23:
        if (!v30 || (*(a1 + 242) & 0x10) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsLongTitle:v35];
        goto LABEL_191;
      case 24:
        if (!v30 || (*(a1 + 242) & 8) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsLongSpokenTitle:v35];
        goto LABEL_191;
      case 25:
        if (!v30 || (*(a1 + 242) & 0x20) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDMediaLink);
        if (!GEOPDMediaLinkReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsMediaLink:v35];
        goto LABEL_191;
      case 26:
        if (!v30 || (*(a1 + 242) & 2) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOPDCaptionedPhoto);
        if (!GEOPDCaptionedPhotoReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsItemPhoto:v35];
        goto LABEL_191;
      case 27:
        if (!v30 || (*(a1 + 242) & 4) != 0)
        {
          goto LABEL_198;
        }

        v76 = 0;
        v77 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_229;
        }

        v35 = objc_alloc_init(GEOLocalizedString);
        if (!GEOLocalizedStringReadAllFrom(v35, v3, v71 & 1))
        {
          goto LABEL_228;
        }

        PBReaderRecallMark();
        [(GEOPDPlaceCollection *)a1 _addNoFlagsLocalizedCategory:v35];
LABEL_191:

        goto LABEL_199;
      default:
        if ((v72 & 1) == 0 || (*(a1 + 240) & 0x10) != 0)
        {
LABEL_198:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_229;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v62 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v63 = *(a1 + 16);
            *(a1 + 16) = v62;
          }

          if (!PBUnknownFieldAdd())
          {
            v28 = 0;
            goto LABEL_231;
          }
        }

        goto LABEL_199;
    }
  }
}

void *GEOPDTemplatePlaceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDTemplatePlaceReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDTemplatePlaceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDTemplatePlaceReadAllFrom_initialTag;
  }

  Specified = GEOPDTemplatePlaceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDTemplatePlaceCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDTemplatePlaceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  LODWORD(v50) = v14;
  HIDWORD(v50) = v15 | v8;
  if ((v15 | v7))
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  v51 = (v16 == 0) | v15;
  v52 = v15;
  while (1)
  {
    v17 = objc_msgSend_position(v3, v50);
    if (v17 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_80:
      v26 = 1;
      goto LABEL_83;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    while (1)
    {
      LOBYTE(v53) = 0;
      v21 = objc_msgSend_position(v3) + 1;
      if (v21 >= objc_msgSend_position(v3) && (v22 = objc_msgSend_position(v3) + 1, v22 <= [v3 length]))
      {
        v23 = [v3 data];
        [v23 getBytes:&v53 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v20 |= (v53 & 0x7F) << v18;
      if ((v53 & 0x80) == 0)
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
      goto LABEL_83;
    }

    v27 = v20 >> 3;
    v28 = v52;
    if ((v51 & 1) == 0)
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
      if ((v7 & 1) == 0)
      {
        goto LABEL_71;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        LOBYTE(v53) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:&v53 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v53 & 0x7F) << v34;
        if ((v53 & 0x80) == 0)
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
    }

    else if (v27 == 1)
    {
      if (!v28 || (*(a1 + 56) & 8) != 0)
      {
        goto LABEL_71;
      }

      v53 = 0;
      v54 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_82;
      }

      v33 = objc_alloc_init(GEOPDTemplateData);
      if (!GEOPDTemplateDataReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_81;
      }

      PBReaderRecallMark();
      [(GEOPDTemplatePlace *)a1 _addNoFlagsTemplateData:v33];
    }

    else
    {
      if ((v50 & 1) == 0 || (*(a1 + 56) & 2) != 0)
      {
LABEL_71:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_82;
        }

        goto LABEL_72;
      }

      if (!*(a1 + 16))
      {
        v42 = objc_alloc_init(MEMORY[0x1E69C65D8]);
        v43 = *(a1 + 16);
        *(a1 + 16) = v42;
      }

      if (!PBUnknownFieldAdd())
      {
        v26 = 0;
        v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
        goto LABEL_84;
      }
    }

LABEL_72:
    if (!(BYTE4(v50) & 1 | (v6 != 0)))
    {
      goto LABEL_80;
    }
  }

  if (!v28)
  {
    goto LABEL_71;
  }

  if ((*(a1 + 56) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_82;
    }

    v6 += *(a1 + 56) << 29 >> 31;
    goto LABEL_72;
  }

  v53 = 0;
  v54 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_82;
  }

  v33 = objc_alloc_init(GEOPDFollowUpRequestMetadata);
  if (GEOPDFollowUpRequestMetadataReadAllFrom(v33, v3))
  {
    PBReaderRecallMark();
    v41 = *(a1 + 24);
    *(a1 + 24) = v33;

    --v6;
    goto LABEL_72;
  }

LABEL_81:

LABEL_82:
  v26 = 0;
LABEL_83:
  v49 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v50 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_84:
  *(a1 + v49[426]) |= 2u;
LABEL_85:
  if (v52 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v49[426]) |= 8u;
    *(a1 + v49[426]) |= 4u;
    goto LABEL_95;
  }

  if (v16)
  {
    while (1)
    {
      v45 = *v16++;
      v44 = v45;
      if (v45 == 1)
      {
        break;
      }

      if (v44 == 3)
      {
        v46 = 4;
LABEL_94:
        *(a1 + v49[426]) |= v46;
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
  if (v26)
  {
    v3 = ([v3 hasError] ^ 1);
  }

  else
  {
    v3 = 0;
  }

  if (v52)
  {
    v47 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

void *GEOPDTemplateDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDTemplateDataReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDTemplateDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDTemplateDataReadAllFrom_initialTag;
  }

  Specified = GEOPDTemplateDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDTemplateDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOPDTemplateDataReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10 = 0;
  v11 = ((*(a1 + 96) >> 1) & 1) + (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 96)), 0xFFFBFFFAFFF8FFFDLL), 0x1000100010001)) + ((*(a1 + 96) >> 4) & 1) + ((*(a1 + 96) >> 2) & 1) + ((*(a1 + 96) >> 7) & 1));
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
LABEL_121:
      v26 = 1;
      goto LABEL_124;
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
      goto LABEL_124;
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

    if (v27 > 4)
    {
      break;
    }

    if (v27 <= 2)
    {
      if (v27 != 1)
      {
        if (v27 == 2)
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_103;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 96) |= 1u;
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
              goto LABEL_106;
            }
          }

          v39 = (v35 != 0) & ~[v3 hasError];
LABEL_106:
          *(a1 + 92) = v39;
          goto LABEL_120;
        }

        goto LABEL_97;
      }

      if (!v28)
      {
        goto LABEL_103;
      }

      if ((*(a1 + 96) & 8) == 0)
      {
        v55 = 0;
        v56 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_123;
        }

        v40 = objc_alloc_init(GEOPDMapsIdentifier);
        if (!GEOPDMapsIdentifierReadAllFrom(v40, v3))
        {
          goto LABEL_122;
        }

        PBReaderRecallMark();
        v41 = 32;
        goto LABEL_96;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_123;
      }

      v45 = *(a1 + 96) << 12;
LABEL_119:
      v6 += v45 >> 15;
      goto LABEL_120;
    }

    if (v27 != 3)
    {
      if (!v28)
      {
        goto LABEL_103;
      }

      if ((*(a1 + 96) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_123;
        }

        v45 = *(a1 + 96) << 9;
        goto LABEL_119;
      }

      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_123;
      }

      v40 = objc_alloc_init(GEOPDDataItem);
      if (!GEOPDDataItemReadAllFrom(v40, v3, v9 & 1))
      {
        goto LABEL_122;
      }

      PBReaderRecallMark();
      v41 = 56;
      goto LABEL_96;
    }

    if (!v28 || (*(a1 + 96) & 0x100) != 0)
    {
LABEL_103:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_120;
    }

    v55 = 0;
    v56 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_123;
    }

    v40 = objc_alloc_init(GEOLocalizedString);
    if (!GEOLocalizedStringReadAllFrom(v40, v3, v9 & 1))
    {
      goto LABEL_122;
    }

    PBReaderRecallMark();
    [(GEOPDTemplateData *)a1 _addNoFlagsTitle:v40];

LABEL_120:
    if (!(BYTE4(v52) & 1 | (v6 != 0)))
    {
      goto LABEL_121;
    }
  }

  if (v27 <= 6)
  {
    if (v27 != 5)
    {
      if (!v28)
      {
        goto LABEL_103;
      }

      if ((*(a1 + 96) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_123;
        }

        v45 = *(a1 + 96) << 11;
        goto LABEL_119;
      }

      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_123;
      }

      v40 = objc_alloc_init(GEOPDPhoto);
      if (!GEOPDPhotoReadAllFrom(v40, v3, v9 & 1))
      {
        goto LABEL_122;
      }

      PBReaderRecallMark();
      v41 = 40;
      goto LABEL_96;
    }

    if (!v28)
    {
      goto LABEL_103;
    }

    if ((*(a1 + 96) & 0x20) == 0)
    {
      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_123;
      }

      v40 = objc_alloc_init(GEOStyleAttributes);
      if (!GEOStyleAttributesReadAllFrom(v40, v3))
      {
        goto LABEL_122;
      }

      PBReaderRecallMark();
      v41 = 48;
      goto LABEL_96;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_123;
    }

    v45 = *(a1 + 96) << 10;
    goto LABEL_119;
  }

  if (v27 != 7)
  {
    if (v27 == 8)
    {
      if (!v28)
      {
        goto LABEL_103;
      }

      if ((*(a1 + 96) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_123;
        }

        v45 = *(a1 + 96) << 8;
        goto LABEL_119;
      }

      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_123;
      }

      v40 = objc_alloc_init(GEOTimezone);
      if (!GEOTimezoneReadAllFrom(v40, v3))
      {
        goto LABEL_122;
      }

      PBReaderRecallMark();
      v41 = 64;
      goto LABEL_96;
    }

LABEL_97:
    if ((v52 & 1) == 0 || (*(a1 + 96) & 2) != 0)
    {
      goto LABEL_103;
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
      v51 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_125;
    }

    goto LABEL_120;
  }

  if (!v28)
  {
    goto LABEL_103;
  }

  if ((*(a1 + 96) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_123;
    }

    v45 = *(a1 + 96) << 13;
    goto LABEL_119;
  }

  v55 = 0;
  v56 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_123;
  }

  v40 = objc_alloc_init(GEOPDDataItem);
  if (GEOPDDataItemReadAllFrom(v40, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v41 = 24;
LABEL_96:
    v42 = *(a1 + v41);
    *(a1 + v41) = v40;

    --v6;
    goto LABEL_120;
  }

LABEL_122:

LABEL_123:
  v26 = 0;
LABEL_124:
  v51 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v52 & 1) == 0)
  {
    goto LABEL_126;
  }

LABEL_125:
  *(a1 + v51[412]) |= 2u;
LABEL_126:
  if (v54 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v51[412]) |= 8u;
    *(a1 + v51[412]) |= 0x100u;
    *(a1 + v51[412]) |= 0x40u;
    *(a1 + v51[412]) |= 0x20u;
    *(a1 + v51[412]) |= 0x10u;
    *(a1 + v51[412]) |= 4u;
    *(a1 + v51[412]) |= 0x80u;
    goto LABEL_148;
  }

  if (v16)
  {
    while (1)
    {
LABEL_129:
      v47 = *v16++;
      v46 = v47;
      if (v47 > 4)
      {
        if (v46 > 6)
        {
          if (v46 == 7)
          {
            v48 = 4;
          }

          else
          {
            if (v46 != 8)
            {
              continue;
            }

            v48 = 128;
          }
        }

        else if (v46 == 5)
        {
          v48 = 32;
        }

        else
        {
          if (v46 != 6)
          {
            continue;
          }

          v48 = 16;
        }

        goto LABEL_146;
      }

      if (v46 > 2)
      {
        break;
      }

      if (v46 == 1)
      {
        v48 = 8;
LABEL_146:
        *(a1 + v51[412]) |= v48;
        continue;
      }

      if (!v46)
      {
        goto LABEL_148;
      }
    }

    if (v46 == 3)
    {
      v48 = 256;
    }

    else
    {
      if (v46 != 4)
      {
        goto LABEL_129;
      }

      v48 = 64;
    }

    goto LABEL_146;
  }

LABEL_148:
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

id _actionURLSchemes(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v1 attributionApps];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) handledSchemes];
        v9 = [v8 containsObject:@"com.apple.maps.action"];

        if (v9)
        {
          [v2 addObject:@"com.apple.maps.action"];
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = [v1 webBaseActionURL];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [v1 webBaseActionURL];
    [v2 addObject:v12];
  }

  return v2;
}

void *GEOPDDataItemReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 68))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDDataItemReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDDataItemReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDDataItemReadAllFrom_initialTag;
  }

  Specified = GEOPDDataItemReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [(GEOPDRatingData *)*(a1 + 56) readAll:?];
  }

  os_unfair_lock_unlock((a1 + 72));
  return Specified;
}

void *GEOPDDataItemReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = (vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 80)) & 0xFF00FF00FF00FFLL), 0xFFFEFFFCFFFDFFFALL) & 0xFF01FF01FF01FF01)) + ((*(a1 + 80) & 0x20) != 0) + ((*(a1 + 80) & 2) != 0));
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
LABEL_109:
      v26 = 1;
      goto LABEL_112;
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
      goto LABEL_112;
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

    if (v27 > 3)
    {
      break;
    }

    switch(v27)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_91;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 80) |= 1u;
        while (1)
        {
          LOBYTE(v55) = 0;
          v38 = objc_msgSend_position(v3) + 1;
          if (v38 >= objc_msgSend_position(v3) && (v39 = objc_msgSend_position(v3) + 1, v39 <= [v3 length]))
          {
            v40 = [v3 data];
            [v40 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v37 |= (v55 & 0x7F) << v35;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v24 = v36++ >= 9;
          if (v24)
          {
            v41 = 0;
            goto LABEL_96;
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

LABEL_96:
        *(a1 + 76) = v41;
        goto LABEL_108;
      case 2:
        if (!v28)
        {
          goto LABEL_91;
        }

        if ((*(a1 + 80) & 0x40) == 0)
        {
          v55 = 0;
          v56 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_111;
          }

          v33 = objc_alloc_init(GEOPDRatingData);
          if (!GEOPDRatingDataReadAllFrom(v33, v3, v9 & 1))
          {
            goto LABEL_110;
          }

          PBReaderRecallMark();
          v34 = 56;
          goto LABEL_90;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_111;
        }

        v45 = 2 * *(a1 + 80);
        goto LABEL_107;
      case 3:
        if (!v28)
        {
          goto LABEL_91;
        }

        if ((*(a1 + 80) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_111;
          }

          v45 = 16 * *(a1 + 80);
          goto LABEL_107;
        }

        v55 = 0;
        v56 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_111;
        }

        v33 = objc_alloc_init(GEOPDCategoryData);
        if (!GEOPDCategoryDataReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_110;
        }

        PBReaderRecallMark();
        v34 = 32;
LABEL_90:
        v44 = *(a1 + v34);
        *(a1 + v34) = v33;

        --v6;
        goto LABEL_108;
    }

LABEL_74:
    if ((v52 & 1) == 0 || (*(a1 + 80) & 2) != 0)
    {
LABEL_91:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_108;
    }

    if (!*(a1 + 16))
    {
      v42 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v43 = *(a1 + 16);
      *(a1 + 16) = v42;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v51 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_113;
    }

LABEL_108:
    if (!(BYTE4(v52) & 1 | (v6 != 0)))
    {
      goto LABEL_109;
    }
  }

  if (v27 == 4)
  {
    if (!v28)
    {
      goto LABEL_91;
    }

    if ((*(a1 + 80) & 0x10) == 0)
    {
      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_111;
      }

      v33 = objc_alloc_init(GEOPDFactoidData);
      if (!GEOPDFactoidDataReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_110;
      }

      PBReaderRecallMark();
      v34 = 40;
      goto LABEL_90;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_111;
    }

    v45 = 8 * *(a1 + 80);
    goto LABEL_107;
  }

  if (v27 != 5)
  {
    if (v27 == 6)
    {
      if (!v28)
      {
        goto LABEL_91;
      }

      if ((*(a1 + 80) & 0x20) == 0)
      {
        v55 = 0;
        v56 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_111;
        }

        v33 = objc_alloc_init(GEOPDLocationData);
        if (!GEOPDLocationDataReadAllFrom(v33, v3, v9 & 1))
        {
          goto LABEL_110;
        }

        PBReaderRecallMark();
        v34 = 48;
        goto LABEL_90;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_111;
      }

      v45 = 4 * *(a1 + 80);
LABEL_107:
      v6 += v45 >> 7;
      goto LABEL_108;
    }

    goto LABEL_74;
  }

  if (!v28)
  {
    goto LABEL_91;
  }

  if ((*(a1 + 80) & 4) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_111;
    }

    v45 = 32 * *(a1 + 80);
    goto LABEL_107;
  }

  v55 = 0;
  v56 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_111;
  }

  v33 = objc_alloc_init(GEOPDBusinessHoursData);
  if (GEOPDBusinessHoursDataReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v34 = 24;
    goto LABEL_90;
  }

LABEL_110:

LABEL_111:
  v26 = 0;
LABEL_112:
  v51 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v52 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_113:
  *(a1 + v51[232]) |= 2u;
LABEL_114:
  if (v54 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v51[232]) |= 0x40u;
    *(a1 + v51[232]) |= 8u;
    *(a1 + v51[232]) |= 0x10u;
    *(a1 + v51[232]) |= 4u;
    *(a1 + v51[232]) |= 0x20u;
    goto LABEL_130;
  }

  if (v16)
  {
    while (1)
    {
      v47 = *v16++;
      v46 = v47;
      if (v47 > 3)
      {
        switch(v46)
        {
          case 4:
            v48 = 16;
            break;
          case 5:
            v48 = 4;
            break;
          case 6:
            v48 = 32;
            break;
          default:
            continue;
        }

        goto LABEL_128;
      }

      if (v46 == 2)
      {
        break;
      }

      if (v46 == 3)
      {
        v48 = 8;
LABEL_128:
        *(a1 + v51[232]) |= v48;
        continue;
      }

      if (!v46)
      {
        goto LABEL_130;
      }
    }

    v48 = 64;
    goto LABEL_128;
  }

LABEL_130:
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

id _GEOActionURLs(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v33 = a4;
  v12 = a5;
  if ([v9 isEqualToString:@"com.apple.maps.action"])
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://", v9];

    v9 = v13;
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v34 = v10;
  v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"id" value:v10];
  [v14 addObject:v15];

  if ([v11 length])
  {
    v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"component" value:v11];
    [v14 addObject:v16];
  }

  v17 = v11;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [MEMORY[0x1E696AF60] queryItemWithName:@"cid" value:*(*(&v35 + 1) + 8 * i)];
        [v14 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v20);
  }

  if ([v33 length])
  {
    v24 = [MEMORY[0x1E696AF60] queryItemWithName:@"action" value:v33];
    [v14 addObject:v24];
  }

  v25 = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([v25 count])
  {
    v26 = [v25 componentsJoinedByString:{@", "}];
    v27 = [MEMORY[0x1E696AF60] queryItemWithName:@"language" value:v26];
    [v14 addObject:v27];
  }

  v28 = [MEMORY[0x1E696AF20] componentsWithString:v9];
  [v28 setQueryItems:v14];
  v29 = [v28 URL];
  v30 = [v29 absoluteString];
  v39 = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];

  return v31;
}

void *GEOPDRatingDataReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDRatingDataReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDRatingDataReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDRatingDataReadAllFrom_initialTag;
  }

  Specified = GEOPDRatingDataReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDRatingDataCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDRatingDataReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 52) >> 2) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 1) & 1);
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
LABEL_62:
      v25 = 1;
      goto LABEL_65;
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
      goto LABEL_65;
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
      if (!v27)
      {
        goto LABEL_57;
      }

      if ((*(a1 + 52) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_64;
        }

        v8 += *(a1 + 52) << 29 >> 31;
      }

      else
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 32);
        *(a1 + 32) = v33;

        --v8;
      }

      goto LABEL_58;
    }

    if (v26 == 1)
    {
      break;
    }

    if (v43 & 1) == 0 || (*(a1 + 52))
    {
LABEL_57:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_58;
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
      v37 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
      goto LABEL_66;
    }

LABEL_58:
    if (!(v44 & 1 | (v8 != 0)))
    {
      goto LABEL_62;
    }
  }

  if (!v27 || (*(a1 + 52) & 2) != 0)
  {
    goto LABEL_57;
  }

  v45[0] = 0;
  v45[1] = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_64;
  }

  v32 = objc_alloc_init(GEOPDRating);
  if (GEOPDRatingReadAllFrom(v32, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDRatingData *)a1 _addNoFlagsRating:v32];

    goto LABEL_58;
  }

LABEL_64:
  v25 = 0;
LABEL_65:
  v37 = &OBJC_IVAR___GEOPDPlaceCollection__readerMarkLength;
  if ((v43 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_66:
  *(a1 + v37[199]) |= 1u;
LABEL_67:
  if (v14 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v37[199]) |= 2u;
    *(a1 + v37[199]) |= 4u;
    goto LABEL_77;
  }

  if (v15)
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
        v40 = 4;
LABEL_76:
        *(a1 + v37[199]) |= v40;
        continue;
      }

      if (!v38)
      {
        goto LABEL_77;
      }
    }

    v40 = 2;
    goto LABEL_76;
  }

LABEL_77:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_81:
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_81;
    }
  }

  return v3;
}

void *GEOPDContainmentPlaceReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDContainmentPlaceReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDContainmentPlaceReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDContainmentPlaceReadAllFrom_initialTag;
  }

  Specified = GEOPDContainmentPlaceReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 24) readAll:1];
    [*(a1 + 32) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEOPDContainmentPlaceReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = ((*(a1 + 52) >> 2) & 1) + (*(a1 + 52) & 1) + ((*(a1 + 52) >> 1) & 1);
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
  v44 = v13 & ~v10 | v8;
  v45 = v10 | v13 | v8;
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
      LOBYTE(v46) = 0;
      v20 = objc_msgSend_position(v3) + 1;
      if (v20 >= objc_msgSend_position(v3) && (v21 = objc_msgSend_position(v3) + 1, v21 <= [v3 length]))
      {
        v22 = [v3 data];
        [v22 getBytes:&v46 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v19 |= (v46 & 0x7F) << v17;
      if ((v46 & 0x80) == 0)
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

      if ((*(a1 + 52) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_70;
        }

        v37 = *(a1 + 52) << 6;
LABEL_66:
        v6 += v37 >> 7;
        goto LABEL_67;
      }

      v46 = 0;
      v47 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_70;
      }

      v32 = objc_alloc_init(GEOPDMapsIdentifier);
      if (!GEOPDMapsIdentifierReadAllFrom(v32, v3))
      {
        goto LABEL_69;
      }

      PBReaderRecallMark();
      v33 = 24;
      goto LABEL_53;
    }

    if (v44 & 1) == 0 || (*(a1 + 52))
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
      v43 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
      goto LABEL_72;
    }

LABEL_67:
    if (!(v45 & 1 | (v6 != 0)))
    {
      goto LABEL_68;
    }
  }

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
    goto LABEL_66;
  }

  v46 = 0;
  v47 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_70;
  }

  v32 = objc_alloc_init(GEOFormattedString);
  if (GEOFormattedStringReadAllFrom(v32, v3, v9 & 1))
  {
    PBReaderRecallMark();
    v33 = 32;
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
  v43 = &OBJC_IVAR___GEOPDComponentFilter__restaurantReservationLinkFilter;
  if ((v44 & 1) == 0)
  {
    goto LABEL_73;
  }

LABEL_72:
  *(a1 + v43[201]) |= 1u;
LABEL_73:
  if (v14 & 1 | ((v25 & 1) == 0))
  {
    *(a1 + v43[201]) |= 2u;
    *(a1 + v43[201]) |= 4u;
    goto LABEL_83;
  }

  if (v15)
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
        v40 = 4;
LABEL_82:
        *(a1 + v43[201]) |= v40;
        continue;
      }

      if (!v38)
      {
        goto LABEL_83;
      }
    }

    v40 = 2;
    goto LABEL_82;
  }

LABEL_83:
  if (v25)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v14 & 1) == 0)
    {
      return v3;
    }

LABEL_87:
    v41 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v14)
    {
      goto LABEL_87;
    }
  }

  return v3;
}

void *GEOPDCategorizedPhotosReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 52))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOPDCategorizedPhotosReadAllFrom can only be called once per object"];
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
    v9 = &GEOPDCategorizedPhotosReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOPDCategorizedPhotosReadAllFrom_initialTag;
  }

  Specified = GEOPDCategorizedPhotosReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOPDCategorizedPhotosCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 56));
  return Specified;
}

void *GEOPDCategorizedPhotosReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v11 = vaddv_s16((*&vshl_u16((*&vdup_n_s16(*(a1 + 64)) & 0xFF00FF00FF00FFLL), 0xFFFFFFFCFFFDFFFELL) & 0xFF01FF01FF01FF01));
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
LABEL_86:
      v26 = 1;
      goto LABEL_89;
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
      goto LABEL_89;
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

    if (v27 > 2)
    {
      break;
    }

    if (v27 == 1)
    {
      if (!v28)
      {
        goto LABEL_77;
      }

      if ((*(a1 + 64) & 4) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_88;
        }

        v6 += *(a1 + 64) << 29 >> 31;
      }

      else
      {
        v43 = PBReaderReadString();
        v44 = *(a1 + 24);
        *(a1 + 24) = v43;

        --v6;
      }

      goto LABEL_78;
    }

    if (v27 == 2)
    {
      if (!v28 || (*(a1 + 64) & 8) != 0)
      {
        goto LABEL_77;
      }

      v55 = 0;
      v56 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_88;
      }

      v33 = objc_alloc_init(GEOLocalizedString);
      if (!GEOLocalizedStringReadAllFrom(v33, v3, v9 & 1))
      {
        goto LABEL_87;
      }

      PBReaderRecallMark();
      [(GEOPDCategorizedPhotos *)a1 _addNoFlagsCategoryName:v33];
      goto LABEL_76;
    }

LABEL_62:
    if ((v52 & 1) == 0 || (*(a1 + 64) & 2) != 0)
    {
      goto LABEL_77;
    }

    if (!*(a1 + 16))
    {
      v41 = objc_alloc_init(MEMORY[0x1E69C65D8]);
      v42 = *(a1 + 16);
      *(a1 + 16) = v41;
    }

    if (!PBUnknownFieldAdd())
    {
      v26 = 0;
      v51 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
      goto LABEL_90;
    }

LABEL_78:
    if (!(BYTE4(v52) & 1 | (v6 != 0)))
    {
      goto LABEL_86;
    }
  }

  if (v27 != 3)
  {
    if (v27 == 4)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_77;
      }

      v34 = 0;
      v35 = 0;
      v36 = 0;
      *(a1 + 64) |= 1u;
      while (1)
      {
        LOBYTE(v55) = 0;
        v37 = objc_msgSend_position(v3) + 1;
        if (v37 >= objc_msgSend_position(v3) && (v38 = objc_msgSend_position(v3) + 1, v38 <= [v3 length]))
        {
          v39 = [v3 data];
          [v39 getBytes:&v55 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v36 |= (v55 & 0x7F) << v34;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v34 += 7;
        v24 = v35++ >= 9;
        if (v24)
        {
          v40 = 0;
          goto LABEL_83;
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

LABEL_83:
      *(a1 + 60) = v40;
      goto LABEL_78;
    }

    goto LABEL_62;
  }

  if (!v28 || (*(a1 + 64) & 0x10) != 0)
  {
LABEL_77:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_78;
  }

  v55 = 0;
  v56 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_88;
  }

  v33 = objc_alloc_init(GEOPDCaptionedPhoto);
  if (GEOPDCaptionedPhotoReadAllFrom(v33, v3, v9 & 1))
  {
    PBReaderRecallMark();
    [(GEOPDCategorizedPhotos *)a1 _addNoFlagsPhoto:v33];
LABEL_76:

    goto LABEL_78;
  }

LABEL_87:

LABEL_88:
  v26 = 0;
LABEL_89:
  v51 = &OBJC_IVAR___GEOPDSearchQueryDymMetadata__type;
  if ((v52 & 1) == 0)
  {
    goto LABEL_91;
  }

LABEL_90:
  *(a1 + v51[862]) |= 2u;
LABEL_91:
  if (v54 & 1 | ((v26 & 1) == 0))
  {
    *(a1 + v51[862]) |= 4u;
    *(a1 + v51[862]) |= 8u;
    *(a1 + v51[862]) |= 0x10u;
    goto LABEL_104;
  }

  if (v16)
  {
    while (2)
    {
      while (1)
      {
        v46 = *v16++;
        v45 = v46;
        v47 = v46 == 1;
        if (v46 > 1)
        {
          break;
        }

        if (v47)
        {
          v48 = 4;
LABEL_102:
          *(a1 + v51[862]) |= v48;
          continue;
        }

        if (!v45)
        {
          goto LABEL_104;
        }
      }

      if (v45 == 3)
      {
        v48 = 16;
      }

      else
      {
        if (v45 != 2)
        {
          continue;
        }

        v48 = 8;
      }

      goto LABEL_102;
    }
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

  if (v54)
  {
    v49 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t GEOStyleAttributeReadAllFrom(uint64_t a1, void *a2)
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
          *(a1 + 24) |= 1u;
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
              v23 = &OBJC_IVAR___GEOStyleAttribute__key;
              goto LABEL_48;
            }
          }

          v23 = &OBJC_IVAR___GEOStyleAttribute__key;
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
      *(a1 + 24) |= 2u;
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
          v23 = &OBJC_IVAR___GEOStyleAttribute__value;
          goto LABEL_48;
        }
      }

      v23 = &OBJC_IVAR___GEOStyleAttribute__value;
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