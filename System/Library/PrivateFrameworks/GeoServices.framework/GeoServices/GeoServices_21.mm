void *GEOCompanionRouteStatusReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 84))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOCompanionRouteStatusReadAllFrom can only be called once per object"];
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
    v9 = &GEOCompanionRouteStatusReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOCompanionRouteStatusReadAllFrom_initialTag;
  }

  Specified = GEOCompanionRouteStatusReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    [*(a1 + 48) readAll:1];
    [*(a1 + 64) readAll:1];
    [*(a1 + 40) readAll:1];
  }

  os_unfair_lock_unlock((a1 + 88));
  return Specified;
}

void *GEOCompanionRouteStatusReadSpecified(uint64_t a1, void *a2, int *a3)
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
  v10.i64[0] = 0x100000001;
  v10.i64[1] = 0x100000001;
  v11 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(*(a1 + 136)), xmmword_187FBD770), v10)) + (HIWORD(*(a1 + 136)) & 1);
  while (1)
  {
    v12 = a3[v6];
    if (v12 > -2)
    {
      break;
    }

    if (v12 == -3)
    {
      v7 = 1;
      goto LABEL_13;
    }

    if (v12 == -2)
    {
      goto LABEL_9;
    }

LABEL_12:
    ++v11;
LABEL_13:
    ++v6;
  }

  if (v12 == -1)
  {
    v8 = 1;
LABEL_9:
    v9 = 1;
    goto LABEL_13;
  }

  if (v12)
  {
    goto LABEL_12;
  }

  v13 = v9 | (v11 > 3);
  if (v9 & 1 | (v11 > 3) | v7 & 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = objc_msgSend_position(v3);
  if (v15 >= [v3 length])
  {
LABEL_296:
    if (v13)
    {
      v140 = 1;
      goto LABEL_298;
    }

    if (!v14)
    {
LABEL_315:
      v3 = ([v3 hasError] ^ 1);
      if (v13)
      {
        goto LABEL_316;
      }

      return v3;
    }

    while (1)
    {
      while (1)
      {
        v142 = *v14++;
        v141 = v142;
        if (v142 > 12)
        {
          break;
        }

        switch(v141)
        {
          case 8:
            v143 = 0x20000;
LABEL_313:
            *(a1 + 136) |= v143;
            break;
          case 12:
            v143 = 0x80000;
            goto LABEL_313;
          case 0:
            goto LABEL_315;
        }
      }

      switch(v141)
      {
        case 13:
          v143 = 0x40000;
          goto LABEL_313;
        case 15:
          v143 = 0x8000;
          goto LABEL_313;
        case 19:
          v143 = 0x10000;
          goto LABEL_313;
      }
    }
  }

  v146 = (v14 == 0) | v13;
  v147 = v13;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_296;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v148) = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v148 & 0x7F) << v16;
      if ((v148 & 0x80) == 0)
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
    v13 = v147;
    if (([v3 hasError] & 1) != 0 || (v23 & 7) == 4)
    {
      goto LABEL_296;
    }

    v24 = v23 >> 3;
    v25 = v147;
    if ((v146 & 1) == 0)
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

    switch(v24)
    {
      case 1:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 136) |= 0x20u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v33 = objc_msgSend_position(v3) + 1;
          if (v33 >= objc_msgSend_position(v3) && (v34 = objc_msgSend_position(v3) + 1, v34 <= [v3 length]))
          {
            v35 = [v3 data];
            [v35 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v32 |= (v148 & 0x7F) << v30;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v22 = v31++ >= 9;
          if (v22)
          {
            v36 = 0;
LABEL_240:
            v13 = v147;
            v128 = 108;
            goto LABEL_265;
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

        goto LABEL_240;
      case 3:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 136) |= 0x400u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v83 = objc_msgSend_position(v3) + 1;
          if (v83 >= objc_msgSend_position(v3) && (v84 = objc_msgSend_position(v3) + 1, v84 <= [v3 length]))
          {
            v85 = [v3 data];
            [v85 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v82 |= (v148 & 0x7F) << v80;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v22 = v81++ >= 9;
          if (v22)
          {
            v36 = 0;
            goto LABEL_244;
          }
        }

        if ([v3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v82;
        }

LABEL_244:
        v13 = v147;
        v128 = 128;
        goto LABEL_265;
      case 4:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v65 = 0;
        v66 = 0;
        v67 = 0;
        *(a1 + 136) |= 8u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v68 = objc_msgSend_position(v3) + 1;
          if (v68 >= objc_msgSend_position(v3) && (v69 = objc_msgSend_position(v3) + 1, v69 <= [v3 length]))
          {
            v70 = [v3 data];
            [v70 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v67 |= (v148 & 0x7F) << v65;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v22 = v66++ >= 9;
          if (v22)
          {
            v71 = 0;
            goto LABEL_232;
          }
        }

        if ([v3 hasError])
        {
          v71 = 0;
        }

        else
        {
          v71 = v67;
        }

LABEL_232:
        v129 = 100;
        goto LABEL_256;
      case 5:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 136) |= 0x10u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v107 = objc_msgSend_position(v3) + 1;
          if (v107 >= objc_msgSend_position(v3) && (v108 = objc_msgSend_position(v3) + 1, v108 <= [v3 length]))
          {
            v109 = [v3 data];
            [v109 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v106 |= (v148 & 0x7F) << v104;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v22 = v105++ >= 9;
          if (v22)
          {
            v36 = 0;
            goto LABEL_260;
          }
        }

        if ([v3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v106;
        }

LABEL_260:
        v13 = v147;
        v128 = 104;
        goto LABEL_265;
      case 6:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 136) |= 4u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v113 = objc_msgSend_position(v3) + 1;
          if (v113 >= objc_msgSend_position(v3) && (v114 = objc_msgSend_position(v3) + 1, v114 <= [v3 length]))
          {
            v115 = [v3 data];
            [v115 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v112 |= (v148 & 0x7F) << v110;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v22 = v111++ >= 9;
          if (v22)
          {
            v36 = 0;
            goto LABEL_264;
          }
        }

        if ([v3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v112;
        }

LABEL_264:
        v13 = v147;
        v128 = 96;
        goto LABEL_265;
      case 7:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 136) |= 0x80u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v75 = objc_msgSend_position(v3) + 1;
          if (v75 >= objc_msgSend_position(v3) && (v76 = objc_msgSend_position(v3) + 1, v76 <= [v3 length]))
          {
            v77 = [v3 data];
            [v77 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v74 |= (v148 & 0x7F) << v72;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v22 = v73++ >= 9;
          if (v22)
          {
            v36 = 0;
            goto LABEL_236;
          }
        }

        if ([v3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v74;
        }

LABEL_236:
        v13 = v147;
        v128 = 116;
        goto LABEL_265;
      case 8:
        if (!v25)
        {
          goto LABEL_219;
        }

        if ((*(a1 + 138) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_319;
          }

          v130 = (*(a1 + 136) << 14) >> 31;
          goto LABEL_276;
        }

        v148 = 0;
        v149 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_319;
        }

        v51 = objc_alloc_init(GEOLocation);
        if (!GEOLocationReadAllFrom(v51, v3, v8 & 1))
        {
          goto LABEL_318;
        }

        PBReaderRecallMark();
        v52 = 48;
        goto LABEL_207;
      case 9:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 136) |= 0x100u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v89 = objc_msgSend_position(v3) + 1;
          if (v89 >= objc_msgSend_position(v3) && (v90 = objc_msgSend_position(v3) + 1, v90 <= [v3 length]))
          {
            v91 = [v3 data];
            [v91 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v88 |= (v148 & 0x7F) << v86;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v22 = v87++ >= 9;
          if (v22)
          {
            v71 = 0;
            goto LABEL_248;
          }
        }

        if ([v3 hasError])
        {
          v71 = 0;
        }

        else
        {
          v71 = v88;
        }

LABEL_248:
        v129 = 120;
        goto LABEL_256;
      case 10:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        *(a1 + 136) |= 0x200u;
        LODWORD(v148) = 0;
        v118 = objc_msgSend_position(v3) + 4;
        if (v118 >= objc_msgSend_position(v3) && (v119 = objc_msgSend_position(v3) + 4, v119 <= [v3 length]))
        {
          v138 = [v3 data];
          [v138 getBytes:&v148 range:{objc_msgSend_position(v3), 4}];

          [v3 setPosition:objc_msgSend_position(v3) + 4];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 124) = v148;
        goto LABEL_294;
      case 11:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        *(a1 + 136) |= 1u;
        v148 = 0;
        v116 = objc_msgSend_position(v3) + 8;
        if (v116 >= objc_msgSend_position(v3) && (v117 = objc_msgSend_position(v3) + 8, v117 <= [v3 length]))
        {
          v137 = [v3 data];
          [v137 getBytes:&v148 range:{objc_msgSend_position(v3), 8}];

          [v3 setPosition:objc_msgSend_position(v3) + 8];
        }

        else
        {
          [v3 _setError];
        }

        *(a1 + 72) = v148;
        goto LABEL_294;
      case 12:
        if (!v25)
        {
          goto LABEL_219;
        }

        if ((*(a1 + 138) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_319;
          }

          v130 = (*(a1 + 136) << 12) >> 31;
          goto LABEL_276;
        }

        v148 = 0;
        v149 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_319;
        }

        v51 = objc_alloc_init(GEOLatLng);
        if (!GEOLatLngReadAllFrom(v51, v3))
        {
          goto LABEL_318;
        }

        PBReaderRecallMark();
        v52 = 64;
        goto LABEL_207;
      case 13:
        if (!v25)
        {
          goto LABEL_219;
        }

        if ((*(a1 + 138) & 4) == 0)
        {
          v78 = PBReaderReadData();
          v79 = *(a1 + 56);
          *(a1 + 56) = v78;
          goto LABEL_208;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_319;
        }

        v130 = (*(a1 + 136) << 13) >> 31;
        goto LABEL_276;
      case 14:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 136) |= 0x800u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v56 = objc_msgSend_position(v3) + 1;
          if (v56 >= objc_msgSend_position(v3) && (v57 = objc_msgSend_position(v3) + 1, v57 <= [v3 length]))
          {
            v58 = [v3 data];
            [v58 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v55 |= (v148 & 0x7F) << v53;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v22 = v54++ >= 9;
          if (v22)
          {
            v43 = 0;
            goto LABEL_224;
          }
        }

        v43 = (v55 != 0) & ~[v3 hasError];
LABEL_224:
        v13 = v147;
        v127 = 132;
        goto LABEL_251;
      case 15:
        if (!v25 || (*(a1 + 137) & 0x80) != 0)
        {
          goto LABEL_219;
        }

        if ((v23 & 7) == 2)
        {
          v148 = 0;
          v149 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_319;
          }

          while (1)
          {
            v44 = objc_msgSend_position(v3);
            if (v44 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v45 = 0;
            v46 = 0;
            v47 = 0;
            while (1)
            {
              v150 = 0;
              v48 = objc_msgSend_position(v3) + 1;
              if (v48 >= objc_msgSend_position(v3) && (v49 = objc_msgSend_position(v3) + 1, v49 <= [v3 length]))
              {
                v50 = [v3 data];
                [v50 getBytes:&v150 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v47 |= (v150 & 0x7F) << v45;
              if ((v150 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v22 = v46++ >= 9;
              if (v22)
              {
                goto LABEL_78;
              }
            }

            [v3 hasError];
LABEL_78:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v131 = 0;
          v132 = 0;
          v133 = 0;
          while (1)
          {
            LOBYTE(v148) = 0;
            v134 = objc_msgSend_position(v3) + 1;
            if (v134 >= objc_msgSend_position(v3) && (v135 = objc_msgSend_position(v3) + 1, v135 <= [v3 length]))
            {
              v136 = [v3 data];
              [v136 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v133 |= (v148 & 0x7F) << v131;
            if ((v148 & 0x80) == 0)
            {
              break;
            }

            v131 += 7;
            v22 = v132++ >= 9;
            if (v22)
            {
              goto LABEL_292;
            }
          }

          [v3 hasError];
LABEL_292:
          PBRepeatedUInt32Add();
        }

LABEL_293:
        v13 = v147;
        goto LABEL_294;
      case 16:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 136) |= 0x4000u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v95 = objc_msgSend_position(v3) + 1;
          if (v95 >= objc_msgSend_position(v3) && (v96 = objc_msgSend_position(v3) + 1, v96 <= [v3 length]))
          {
            v97 = [v3 data];
            [v97 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v94 |= (v148 & 0x7F) << v92;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v22 = v93++ >= 9;
          if (v22)
          {
            v43 = 0;
            goto LABEL_250;
          }
        }

        v43 = (v94 != 0) & ~[v3 hasError];
LABEL_250:
        v13 = v147;
        v127 = 135;
        goto LABEL_251;
      case 17:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 136) |= 0x40u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v101 = objc_msgSend_position(v3) + 1;
          if (v101 >= objc_msgSend_position(v3) && (v102 = objc_msgSend_position(v3) + 1, v102 <= [v3 length]))
          {
            v103 = [v3 data];
            [v103 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v100 |= (v148 & 0x7F) << v98;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v22 = v99++ >= 9;
          if (v22)
          {
            v71 = 0;
            goto LABEL_255;
          }
        }

        if ([v3 hasError])
        {
          v71 = 0;
        }

        else
        {
          v71 = v100;
        }

LABEL_255:
        v129 = 112;
LABEL_256:
        *(a1 + v129) = v71;
        goto LABEL_293;
      case 18:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v120 = 0;
        v121 = 0;
        v122 = 0;
        *(a1 + 136) |= 0x1000u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v123 = objc_msgSend_position(v3) + 1;
          if (v123 >= objc_msgSend_position(v3) && (v124 = objc_msgSend_position(v3) + 1, v124 <= [v3 length]))
          {
            v125 = [v3 data];
            [v125 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v122 |= (v148 & 0x7F) << v120;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v22 = v121++ >= 9;
          if (v22)
          {
            v126 = 0;
            goto LABEL_267;
          }
        }

        v126 = (v122 != 0) & ~[v3 hasError];
LABEL_267:
        *(a1 + 133) = v126;
        goto LABEL_293;
      case 19:
        if (!v25)
        {
          goto LABEL_219;
        }

        if (*(a1 + 138))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_319;
          }

          v130 = (*(a1 + 136) << 15) >> 31;
LABEL_276:
          v6 += v130;
          goto LABEL_294;
        }

        v148 = 0;
        v149 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_319;
        }

        v51 = objc_alloc_init(GEOCompanionTransitAlightMessage);
        if (GEOCompanionTransitAlightMessageReadAllFrom(v51, v3, v8 & 1))
        {
          PBReaderRecallMark();
          v52 = 40;
LABEL_207:
          v79 = *(a1 + v52);
          *(a1 + v52) = v51;
LABEL_208:

          --v6;
LABEL_294:
          if (!(v13 & 1 | (v6 != 0)))
          {
            goto LABEL_296;
          }

          v139 = objc_msgSend_position(v3);
          if (v139 >= [v3 length])
          {
            goto LABEL_296;
          }

          continue;
        }

LABEL_318:

LABEL_319:
        v140 = 0;
LABEL_298:
        *(a1 + 136) |= 0x20000u;
        *(a1 + 136) |= 0x80000u;
        *(a1 + 136) |= 0x40000u;
        *(a1 + 136) |= 0x8000u;
        *(a1 + 136) |= 0x10000u;
        if (v140)
        {
          goto LABEL_315;
        }

        v3 = 0;
        if ((v13 & 1) == 0)
        {
          return v3;
        }

LABEL_316:
        v144 = *(a1 + 8);
        *(a1 + 8) = 0;

        return v3;
      case 20:
        if ((v7 & 1) == 0)
        {
          goto LABEL_219;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 136) |= 0x2000u;
        while (1)
        {
          LOBYTE(v148) = 0;
          v40 = objc_msgSend_position(v3) + 1;
          if (v40 >= objc_msgSend_position(v3) && (v41 = objc_msgSend_position(v3) + 1, v41 <= [v3 length]))
          {
            v42 = [v3 data];
            [v42 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v39 |= (v148 & 0x7F) << v37;
          if ((v148 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v22 = v38++ >= 9;
          if (v22)
          {
            v43 = 0;
            goto LABEL_222;
          }
        }

        v43 = (v39 != 0) & ~[v3 hasError];
LABEL_222:
        v13 = v147;
        v127 = 134;
LABEL_251:
        *(a1 + v127) = v43;
        goto LABEL_294;
      case 21:
        if (v7)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 136) |= 2u;
          while (1)
          {
            LOBYTE(v148) = 0;
            v62 = objc_msgSend_position(v3) + 1;
            if (v62 >= objc_msgSend_position(v3) && (v63 = objc_msgSend_position(v3) + 1, v63 <= [v3 length]))
            {
              v64 = [v3 data];
              [v64 getBytes:&v148 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v61 |= (v148 & 0x7F) << v59;
            if ((v148 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v22 = v60++ >= 9;
            if (v22)
            {
              v36 = 0;
              goto LABEL_228;
            }
          }

          if ([v3 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v61;
          }

LABEL_228:
          v13 = v147;
          v128 = 92;
LABEL_265:
          *(a1 + v128) = v36;
        }

        else
        {
LABEL_219:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_319;
          }
        }

        goto LABEL_294;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_319;
        }

        goto LABEL_294;
    }
  }
}

uint64_t GEOCompanionRouteContextReadAllFrom(uint64_t a1, void *a2)
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
          v37 = 0;
          v8 = objc_msgSend_position(v3);
          if (v8 + 1 >= objc_msgSend_position(v3) && (v9 = objc_msgSend_position(v3), v9 + 1 <= [v3 length]))
          {
            v10 = [v3 data];
            [v10 getBytes:&v37 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v7 |= (v37 & 0x7F) << v5;
          if ((v37 & 0x80) == 0)
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
        if ((v12 >> 3) == 11)
        {
          *(a1 + 24) |= 1u;
          v36 = 0;
          v29 = objc_msgSend_position(v3);
          if (v29 + 8 >= objc_msgSend_position(v3) && (v30 = objc_msgSend_position(v3), v30 + 8 <= [v3 length]))
          {
            v32 = [v3 data];
            [v32 getBytes:&v36 range:{objc_msgSend_position(v3), 8}];

            [v3 setPosition:objc_msgSend_position(v3) + 8];
          }

          else
          {
            [v3 _setError];
          }

          *(a1 + 8) = v36;
        }

        else
        {
          if (v15 == 10)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 24) |= 4u;
            while (1)
            {
              v38 = 0;
              v26 = objc_msgSend_position(v3);
              if (v26 + 1 >= objc_msgSend_position(v3) && (v27 = objc_msgSend_position(v3), v27 + 1 <= [v3 length]))
              {
                v28 = [v3 data];
                [v28 getBytes:&v38 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v25 |= (v38 & 0x7F) << v23;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_49;
              }
            }

            if ([v3 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_49:
            v31 = 20;
          }

          else
          {
            if (v15 != 4)
            {
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_59;
              }

              goto LABEL_57;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 24) |= 2u;
            while (1)
            {
              v39 = 0;
              v19 = objc_msgSend_position(v3);
              if (v19 + 1 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3), v20 + 1 <= [v3 length]))
              {
                v21 = [v3 data];
                [v21 getBytes:&v39 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v18 |= (v39 & 0x7F) << v16;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_53;
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

LABEL_53:
            v31 = 16;
          }

          *(a1 + v31) = v22;
        }

LABEL_57:
        v33 = objc_msgSend_position(v3);
      }

      while (v33 < [v3 length]);
    }

    v34 = [v3 hasError] ^ 1;
  }

  else
  {
LABEL_59:
    v34 = 0;
  }

  objc_sync_exit(v3);

  return v34;
}

BOOL _GEOComposedWaypointIsDirty(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 96));
  v2 = *(a1 + 108);
  if ((v2 & 0x1000) != 0)
  {
    return 1;
  }

  if ((*(a1 + 108) & 0x800) != 0)
  {
    if (GEOWaypointTypedIsDirty(*(a1 + 80)))
    {
      return 1;
    }

    v2 = *(a1 + 108);
  }

  if ((v2 & 0x40) != 0)
  {
    return 1;
  }

  if ((v2 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  if (GEOMapItemStorageIsDirty(*(a1 + 48)))
  {
    return 1;
  }

  v2 = *(a1 + 108);
LABEL_9:
  if ((v2 & 0x620) != 0)
  {
    return 1;
  }

  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 40);

  return GEOLocationIsDirty(v4);
}

void *GEOComposedWaypointReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 92))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEOComposedWaypointReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 96));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 88) = objc_msgSend_position(v8);
  *(a1 + 92) = [v8 length];
  if (a3)
  {
    v9 = &GEOComposedWaypointReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEOComposedWaypointReadAllFrom_initialTag;
  }

  Specified = GEOComposedWaypointReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEOComposedWaypointCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 96));
  return Specified;
}

void *GEOComposedWaypointReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 96));
  [v3 setLength:*(a1 + 92)];
  [v3 seekToOffset:*(a1 + 88)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = (vaddv_s16(vand_s8(vshl_u16(vdup_n_s16(*(a1 + 108)), 0xFFF7FFF8FFFAFFF5), 0x1000100010001)) + ((*(a1 + 108) >> 10) & 1) + ((*(a1 + 108) >> 5) & 1) + ((*(a1 + 108) >> 7) & 1));
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

  v12 = v9 | (v10 > 4);
  if ((v12 | v7))
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  v76 = (v13 == 0) | v12;
  v77 = v12;
  while (1)
  {
    v14 = objc_msgSend_position(v3);
    if (v14 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
      goto LABEL_174;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      LOBYTE(v78) = 0;
      v18 = objc_msgSend_position(v3) + 1;
      if (v18 >= objc_msgSend_position(v3) && (v19 = objc_msgSend_position(v3) + 1, v19 <= [v3 length]))
      {
        v20 = [v3 data];
        [v20 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v17 |= (v78 & 0x7F) << v15;
      if ((v78 & 0x80) == 0)
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
LABEL_174:
      if (v77)
      {
        v70 = 1;
        goto LABEL_199;
      }

      if (!v13)
      {
LABEL_200:
        v3 = ([v3 hasError] ^ 1);
        goto LABEL_202;
      }

      while (1)
      {
        while (1)
        {
          while (1)
          {
            v72 = *v13++;
            v71 = v72;
            if (v72 > 3)
            {
              break;
            }

            if (v71 <= 1)
            {
              if (v71 == 1)
              {
                v73 = 2048;
                goto LABEL_194;
              }

              if (!v71)
              {
                goto LABEL_200;
              }
            }

            else
            {
              if (v71 == 2)
              {
                v73 = 256;
                goto LABEL_194;
              }

              if (v71 == 3)
              {
                v73 = 64;
                goto LABEL_194;
              }
            }
          }

          if (v71 <= 5)
          {
            break;
          }

          if (v71 == 6)
          {
            v73 = 32;
LABEL_194:
            *(a1 + 108) |= v73;
          }

          else if (v71 == 9)
          {
            v73 = 128;
            goto LABEL_194;
          }
        }

        if (v71 == 4)
        {
          v73 = 512;
          goto LABEL_194;
        }

        if (v71 == 5)
        {
          v73 = 1024;
          goto LABEL_194;
        }
      }
    }

    v23 = v22 >> 3;
    v24 = v77;
    if ((v76 & 1) == 0)
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

    if (v23 <= 6)
    {
      break;
    }

    if (v23 > 9)
    {
      if (v23 != 10)
      {
        if (v23 == 11)
        {
          if ((v7 & 1) == 0)
          {
LABEL_138:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_198;
            }

            goto LABEL_173;
          }

          v61 = 0;
          v62 = 0;
          v63 = 0;
          *(a1 + 108) |= 2u;
          while (1)
          {
            LOBYTE(v78) = 0;
            v64 = objc_msgSend_position(v3) + 1;
            if (v64 >= objc_msgSend_position(v3) && (v65 = objc_msgSend_position(v3) + 1, v65 <= [v3 length]))
            {
              v66 = [v3 data];
              [v66 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v63 |= (v78 & 0x7F) << v61;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v21 = v62++ >= 9;
            if (v21)
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
            v39 = v63;
          }

LABEL_156:
          v67 = 56;
        }

        else
        {
          if (v23 != 12)
          {
LABEL_136:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_198;
            }

            goto LABEL_173;
          }

          if ((v7 & 1) == 0)
          {
            goto LABEL_138;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 108) |= 1u;
          while (1)
          {
            LOBYTE(v78) = 0;
            v36 = objc_msgSend_position(v3) + 1;
            if (v36 >= objc_msgSend_position(v3) && (v37 = objc_msgSend_position(v3) + 1, v37 <= [v3 length]))
            {
              v38 = [v3 data];
              [v38 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v35 |= (v78 & 0x7F) << v33;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v21 = v34++ >= 9;
            if (v21)
            {
              v39 = 0;
              goto LABEL_143;
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

LABEL_143:
          v67 = 16;
        }

        *(a1 + v67) = v39;
        goto LABEL_173;
      }

      if ((v7 & 1) == 0)
      {
        goto LABEL_138;
      }

      v47 = 0;
      v48 = 0;
      v49 = 0;
      *(a1 + 108) |= 8u;
      while (1)
      {
        LOBYTE(v78) = 0;
        v50 = objc_msgSend_position(v3) + 1;
        if (v50 >= objc_msgSend_position(v3) && (v51 = objc_msgSend_position(v3) + 1, v51 <= [v3 length]))
        {
          v52 = [v3 data];
          [v52 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v49 |= (v78 & 0x7F) << v47;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v47 += 7;
        v21 = v48++ >= 9;
        if (v21)
        {
          v46 = 0;
          goto LABEL_147;
        }
      }

      v46 = (v49 != 0) & ~[v3 hasError];
LABEL_147:
      v68 = 104;
LABEL_148:
      *(a1 + v68) = v46;
      goto LABEL_173;
    }

    if (v23 == 7)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_138;
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
      *(a1 + 108) |= 0x10u;
      while (1)
      {
        LOBYTE(v78) = 0;
        v43 = objc_msgSend_position(v3) + 1;
        if (v43 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3) + 1, v44 <= [v3 length]))
        {
          v45 = [v3 data];
          [v45 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v42 |= (v78 & 0x7F) << v40;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v21 = v41++ >= 9;
        if (v21)
        {
          v46 = 0;
          goto LABEL_145;
        }
      }

      v46 = (v42 != 0) & ~[v3 hasError];
LABEL_145:
      v68 = 105;
      goto LABEL_148;
    }

    if (v23 != 8)
    {
      if (!v24)
      {
        goto LABEL_138;
      }

      if ((*(a1 + 108) & 0x80) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_198;
        }

        v69 = *(a1 + 108) << 8;
        goto LABEL_172;
      }

      v78 = 0;
      v79 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_198;
      }

      v29 = objc_alloc_init(GEOLocation);
      if (!GEOLocationReadAllFrom(v29, v3, v8 & 1))
      {
        goto LABEL_197;
      }

      PBReaderRecallMark();
      v30 = 40;
      goto LABEL_110;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_138;
    }

    v54 = 0;
    v55 = 0;
    v56 = 0;
    *(a1 + 108) |= 4u;
    while (1)
    {
      LOBYTE(v78) = 0;
      v57 = objc_msgSend_position(v3) + 1;
      if (v57 >= objc_msgSend_position(v3) && (v58 = objc_msgSend_position(v3) + 1, v58 <= [v3 length]))
      {
        v59 = [v3 data];
        [v59 getBytes:&v78 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v56 |= (v78 & 0x7F) << v54;
      if ((v78 & 0x80) == 0)
      {
        break;
      }

      v54 += 7;
      v21 = v55++ >= 9;
      if (v21)
      {
        v60 = 0;
        goto LABEL_152;
      }
    }

    if ([v3 hasError])
    {
      v60 = 0;
    }

    else
    {
      v60 = v56;
    }

LABEL_152:
    *(a1 + 100) = v60;
LABEL_173:
    if (!v77 && v6 == 0)
    {
      goto LABEL_174;
    }
  }

  if (v23 > 3)
  {
    if (v23 == 4)
    {
      if (!v24)
      {
        goto LABEL_138;
      }

      if ((*(a1 + 108) & 0x200) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_198;
        }

        v69 = *(a1 + 108) << 6;
        goto LABEL_172;
      }

      v31 = PBReaderReadData();
      v32 = 64;
    }

    else if (v23 == 5)
    {
      if (!v24)
      {
        goto LABEL_138;
      }

      if ((*(a1 + 108) & 0x400) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_198;
        }

        v69 = 32 * *(a1 + 108);
        goto LABEL_172;
      }

      v31 = PBReaderReadData();
      v32 = 72;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_138;
      }

      if ((*(a1 + 108) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_198;
        }

        v69 = *(a1 + 108) << 10;
        goto LABEL_172;
      }

      v31 = PBReaderReadString();
      v32 = 24;
    }

    v53 = *(a1 + v32);
    *(a1 + v32) = v31;
LABEL_125:

    --v6;
    goto LABEL_173;
  }

  if (v23 == 1)
  {
    if (!v24)
    {
      goto LABEL_138;
    }

    if ((*(a1 + 108) & 0x800) != 0)
    {
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_198;
      }

      v69 = 16 * *(a1 + 108);
      goto LABEL_172;
    }

    v78 = 0;
    v79 = 0;
    if ((PBReaderPlaceMark() & 1) == 0)
    {
      goto LABEL_198;
    }

    v29 = objc_alloc_init(GEOWaypointTyped);
    if (!GEOWaypointTypedReadAllFrom(v29, v3, v8 & 1))
    {
      goto LABEL_197;
    }

    PBReaderRecallMark();
    v30 = 80;
LABEL_110:
    v53 = *(a1 + v30);
    *(a1 + v30) = v29;
    goto LABEL_125;
  }

  if (v23 != 2)
  {
    if (v23 != 3)
    {
      goto LABEL_136;
    }

    if (!v24)
    {
      goto LABEL_138;
    }

    if ((*(a1 + 108) & 0x40) == 0)
    {
      v78 = 0;
      v79 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_198;
      }

      v29 = objc_alloc_init(GEOLatLng);
      if (!GEOLatLngReadAllFrom(v29, v3))
      {
        goto LABEL_197;
      }

      PBReaderRecallMark();
      v30 = 32;
      goto LABEL_110;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_198;
    }

    v69 = *(a1 + 108) << 9;
LABEL_172:
    v6 += v69 >> 15;
    goto LABEL_173;
  }

  if (!v24)
  {
    goto LABEL_138;
  }

  if ((*(a1 + 108) & 0x100) != 0)
  {
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_198;
    }

    v69 = *(a1 + 108) << 7;
    goto LABEL_172;
  }

  v78 = 0;
  v79 = 0;
  if ((PBReaderPlaceMark() & 1) == 0)
  {
    goto LABEL_198;
  }

  v29 = objc_alloc_init(GEOMapItemStorage);
  if (GEOMapItemStorageReadAllFrom(v29, v3, v8 & 1))
  {
    PBReaderRecallMark();
    v30 = 48;
    goto LABEL_110;
  }

LABEL_197:

LABEL_198:
  v70 = 0;
LABEL_199:
  *(a1 + 108) |= 0x800u;
  *(a1 + 108) |= 0x40u;
  *(a1 + 108) |= 0x100u;
  *(a1 + 108) |= 0x200u;
  *(a1 + 108) |= 0x400u;
  *(a1 + 108) |= 0x20u;
  *(a1 + 108) |= 0x80u;
  if (v70)
  {
    goto LABEL_200;
  }

  v3 = 0;
LABEL_202:
  if (v77)
  {
    v74 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  return v3;
}

uint64_t _GEOPDEntityIsDirty(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 288));
  v2 = *(a1 + 328);
  if ((v2 & 0xAA429E00000) != 0)
  {
    return 1;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if (GEOLocalizedStringIsDirty(*(a1 + 216)))
    {
      return 1;
    }

    v2 = *(a1 + 328);
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if (GEOLocalizedStringIsDirty(*(a1 + 224)))
    {
      return 1;
    }

    v2 = *(a1 + 328);
  }

  if ((v2 & 0x443D2100000) == 0)
  {
    if ((v2 & 0x4000000) != 0)
    {
      if (GEOLocalizedStringIsDirty(*(a1 + 128)))
      {
        return 1;
      }

      v2 = *(a1 + 328);
    }

    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_17;
    }

    if ((GEOPDURLDataIsDirty(*(a1 + 256)) & 1) == 0)
    {
      v2 = *(a1 + 328);
LABEL_17:
      if ((v2 & 0x400000000) != 0)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v5 = *(a1 + 208);
        v6 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v41;
LABEL_20:
          v9 = 0;
          while (1)
          {
            if (*v41 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (GEOLocalizedStringIsDirty(*(*(&v40 + 1) + 8 * v9)))
            {
              goto LABEL_68;
            }

            if (v7 == ++v9)
            {
              v7 = [v5 countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v7)
              {
                goto LABEL_20;
              }

              break;
            }
          }
        }

        v2 = *(a1 + 328);
      }

      if ((v2 & 0x2000000000) != 0)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v5 = *(a1 + 232);
        v10 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
LABEL_30:
          v13 = 0;
          while (1)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v5);
            }

            if (GEOLocalizedStringIsDirty(*(*(&v36 + 1) + 8 * v13)))
            {
              goto LABEL_68;
            }

            if (v11 == ++v13)
            {
              v11 = [v5 countByEnumeratingWithState:&v36 objects:v47 count:16];
              if (v11)
              {
                goto LABEL_30;
              }

              break;
            }
          }
        }

        v2 = *(a1 + 328);
      }

      if ((v2 & 0x20000000) != 0)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v5 = *(a1 + 160);
        v14 = [v5 countByEnumeratingWithState:&v32 objects:v46 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v33;
LABEL_40:
          v17 = 0;
          while (1)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v5);
            }

            if (GEOPDCategoryIsDirty(*(*(&v32 + 1) + 8 * v17)))
            {
              goto LABEL_68;
            }

            if (v15 == ++v17)
            {
              v15 = [v5 countByEnumeratingWithState:&v32 objects:v46 count:16];
              if (v15)
              {
                goto LABEL_40;
              }

              break;
            }
          }
        }

        v2 = *(a1 + 328);
      }

      if ((v2 & 0x2000000) != 0)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v5 = *(a1 + 96);
        v18 = [v5 countByEnumeratingWithState:&v28 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v29;
LABEL_50:
          v21 = 0;
          while (1)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v5);
            }

            if (GEOLocalizedStringIsDirty(*(*(&v28 + 1) + 8 * v21)))
            {
              goto LABEL_68;
            }

            if (v19 == ++v21)
            {
              v19 = [v5 countByEnumeratingWithState:&v28 objects:v45 count:16];
              if (v19)
              {
                goto LABEL_50;
              }

              break;
            }
          }
        }

        v2 = *(a1 + 328);
      }

      if ((v2 & 0x100000000) == 0)
      {
        return 0;
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = *(a1 + 192);
      v3 = [v5 countByEnumeratingWithState:&v24 objects:v44 count:16];
      if (!v3)
      {
LABEL_69:

        return v3;
      }

      v22 = *v25;
LABEL_61:
      v23 = 0;
      while (1)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v5);
        }

        if (GEOPDCategoryIsDirty(*(*(&v24 + 1) + 8 * v23)))
        {
          break;
        }

        if (v3 == ++v23)
        {
          v3 = [v5 countByEnumeratingWithState:&v24 objects:v44 count:16];
          if (v3)
          {
            goto LABEL_61;
          }

          goto LABEL_69;
        }
      }

LABEL_68:
      v3 = 1;
      goto LABEL_69;
    }
  }

  return 1;
}

void sub_1867B1BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1867B1B5CLL);
  }

  _Unwind_Resume(a1);
}

void addr_obj::V1AddressObject::getAboveDoorShortAddress(addr_obj::V1AddressObject *this@<X0>, std::string *a2@<X8>)
{
  v4 = (*(*this + 152))(this);
  v5 = v4;
  v6 = *(this + 39);
  if (!v6)
  {
    v6 = *(addr_obj::geo3::Address::default_instance_(v4) + 40);
  }

  v7 = *(v6 + 88);
  (*(*this + 136))(&v15, this, 0);
  (*(*this + 176))(__p, this);
  addr_obj::Formatting::buildLegacyShortAddress(v5, v7, &v15, &v16, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (addr_obj::Debugging::addChar(v8) && ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v10 = HIBYTE(v16.__r_.__value_.__r.__words[2])) : (v10 = v16.__r_.__value_.__l.__size_), v10))
    {
      std::operator+<char>();
      v11 = std::string::append(&v15, "]");
      v12 = *&v11->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if ((*(&v16.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        *a2 = v16;
        return;
      }

      std::string::__init_copy_ctor_external(a2, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    (*(*this + 88))(this);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1867B1DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void addr_obj::geo3::StructuredAddress_SubPremise::MergeFrom(addr_obj::geo3::StructuredAddress_SubPremise *this, const addr_obj::geo3::StructuredAddress_SubPremise *a2)
{
  if (a2 == this)
  {
    AddrObjGoogle::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/GeoServices/libaddr_obj/cpp/src/geo3-slim.pb.cc", 476);
    v4 = AddrObjGoogle::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&from) != (this): ");
    AddrObjGoogle::protobuf::internal::LogFinisher::operator=(&v9, v4);
    AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 6);
      *(this + 8) |= 1u;
      *(this + 6) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 8) |= 2u;
      v8 = *(this + 2);
      if (v8 == AddrObjGoogle::protobuf::internal::kEmptyString(this))
      {
        operator new();
      }

      std::string::operator=(*(this + 2), v7);
    }
  }

  AddrObjGoogle::protobuf::UnknownFieldSet::MergeFrom((this + 8), (a2 + 8));
}

void sub_1867B1FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AddrObjGoogle::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise::ByteSize(addr_obj::geo3::StructuredAddress_SubPremise *this, const AddrObjGoogle::protobuf::UnknownFieldSet *a2)
{
  v3 = *(this + 32);
  if (v3)
  {
    if (*(this + 32))
    {
      v5 = *(this + 6);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 8) & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 32) & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v6 = *(this + 2);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v4 = (v4 + v11 + v7 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_22:
  v12 = *(this + 1);
  if (v12 && *v12 != v12[1])
  {
    v4 = AddrObjGoogle::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(this + 1, a2) + v4;
  }

  *(this + 7) = v4;
  return v4;
}

AddrObjGoogle::protobuf::UnknownFieldSet *addr_obj::geo3::StructuredAddress_SubPremise::SerializeWithCachedSizesToArray(addr_obj::geo3::StructuredAddress_SubPremise *this, AddrObjGoogle::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  if (*(this + 32))
  {
    v6 = *(this + 6);
    *a2 = 8;
    v7 = a2 + 1;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v6, v7, a3);
    }

    else
    {
      if (v6 <= 0x7F)
      {
        *(v4 + 1) = v6;
        v4 = (v4 + 2);
        goto LABEL_8;
      }

      v8 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, v7, a3);
    }

    v4 = v8;
  }

LABEL_8:
  if ((*(this + 32) & 2) != 0)
  {
    v9 = *(this + 2);
    *v4 = 18;
    v10 = *(v9 + 23);
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = *(v9 + 8);
    }

    if (v10 > 0x7F)
    {
      v11 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v10, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v10;
      v11 = v4 + 2;
    }

    v12 = *(v9 + 23);
    if (v12 >= 0)
    {
      v13 = v9;
    }

    else
    {
      v13 = *v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    v4 = AddrObjGoogle::protobuf::io::CodedOutputStream::WriteRawToArray(v13, v14, v11, a4);
  }

  v17 = *(this + 1);
  v16 = (this + 8);
  v15 = v17;
  if (!v17 || *v15 == v15[1])
  {
    return v4;
  }

  return AddrObjGoogle::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v16, v4, a3, a4);
}

void addr_obj::geo3::StructuredAddress_SubPremise::~StructuredAddress_SubPremise(addr_obj::geo3::StructuredAddress_SubPremise *this)
{
  *this = &unk_1EF7E07A8;
  addr_obj::geo3::StructuredAddress_SubPremise::SharedDtor(this);
  AddrObjGoogle::protobuf::UnknownFieldSet::~UnknownFieldSet((this + 8));

  AddrObjGoogle::protobuf::Message::~Message(this);
}

{
  addr_obj::geo3::StructuredAddress_SubPremise::~StructuredAddress_SubPremise(this);

  JUMPOUT(0x18CFD1E40);
}

uint64_t addr_obj::geo3::StructuredAddress_SubPremise::SharedDtor(addr_obj::geo3::StructuredAddress_SubPremise *this)
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

  return addr_obj::geo3::StructuredAddress_SubPremise::default_instance_(v3);
}

uint64_t GEOSubPremiseReadAllFrom(uint64_t a1, void *a2)
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

void std::vector<std::shared_ptr<zilch::TrafficDynamicTile::Incident>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<zilch::TrafficDynamicTile::Incident>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void zilch::TrafficDynamicTile::~TrafficDynamicTile(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v3 = this + 5;
  std::vector<std::shared_ptr<zilch::TrafficDynamicTile::Incident>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void std::vector<std::shared_ptr<zilch::TrafficDynamicTile::Incident>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::default_delete<zilch::TrafficDynamicTile::Incident>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 119) < 0)
    {
      operator delete(*(result + 96));
    }

    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    JUMPOUT(0x18CFD1E40);
  }

  return result;
}

uint64_t GEOScreenResolutionWriteTo(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if ((v3 & 2) != 0)
  {
    result = PBDataWriterWriteDoubleField();
    v3 = *(v2 + 16);
  }

  if (v3)
  {

    return PBDataWriterWriteDoubleField();
  }

  return result;
}

void sub_1867B2B88()
{
  v1 = v0;
  v2 = type metadata accessor for GEONavigationListenerRemoteClient.GEOCellCoverageUnavailableSection(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v54 - v11;
  v13 = *&v0[OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__upcomingUnavailableCellCoverageSections];
  if (!v13)
  {
    return;
  }

  v58 = v9;
  v59 = v10;
  v57 = OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__upcomingUnavailableCellCoverageSections;
  v14 = *&v0[OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__details];
  v15 = MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0xE8);

  v62 = v16(v17);
  if (!v62)
  {
    goto LABEL_7;
  }

  v18 = (*((*v15 & *v14) + 0x148))();
  v61 = v19;
  if (!GEOPolylineCoordinateIsValid(v19 | (LODWORD(v18) << 32)))
  {
LABEL_6:

LABEL_7:

    return;
  }

  v20 = (*((*v15 & *v14) + 0x130))();
  if (v20)
  {
    v21 = v20;
    [v20 timestamp];
    v23 = v22;

    v24 = OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__lastUnavailableCellCoverageUpdateTime;
    sub_187ED37F0();
    if (sub_187ED37E0())
    {
      goto LABEL_6;
    }

    *&v1[v24] = v23;
    v28 = v13 + 2;
    v27 = v13[2];
    v55 = v1;
    if (v27)
    {
      v29 = 0;
      v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v60 = *(v3 + 72);
      v56 = v30;
      while (1)
      {
        v31 = (v13 + v30 + *(v2 + 24));
        *&v25 = v31[1];
        if (GEOPolylineCoordinate.isAfter(range:)(v25, v31[3], v18, *v31, *(v31 + 2), v61))
        {
          break;
        }

        ++v29;
        v30 += v60;
        if (v27 == v29)
        {
          goto LABEL_17;
        }
      }

      v32 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        v33 = v13[2];
        v34 = v61;
        if (v32 != v33)
        {
          v47 = v60 + v30;
          while (v32 < v33)
          {
            sub_18693979C(v13 + v47, v12);
            v48 = &v12[*(v2 + 24)];
            *&v49 = v48[1];
            v50 = GEOPolylineCoordinate.isAfter(range:)(v49, v48[3], v18, *v48, *(v48 + 2), v34);
            sub_186939800(v12);
            if (v50)
            {
              v34 = v61;
            }

            else
            {
              if (v32 != v29)
              {
                if (v29 < 0)
                {
                  goto LABEL_62;
                }

                v51 = *v28;
                if (v29 >= v51)
                {
                  goto LABEL_63;
                }

                v52 = v29 * v60;
                sub_18693979C(v13 + v56 + v29 * v60, v59);
                if (v32 >= v51)
                {
                  goto LABEL_64;
                }

                v53 = v58;
                sub_18693979C(v13 + v47, v58);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v13 = sub_186938D94(v13);
                }

                sub_18693985C(v53, v13 + v56 + v52);
                if (v32 >= v13[2])
                {
                  goto LABEL_65;
                }

                sub_18693985C(v59, v13 + v47);
              }

              v34 = v61;
              ++v29;
            }

            ++v32;
            v28 = v13 + 2;
            v33 = v13[2];
            v47 += v60;
            if (v32 == v33)
            {
              goto LABEL_20;
            }
          }

LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

LABEL_20:
        if (v32 < v29)
        {
          __break(1u);
        }

        else if ((v29 & 0x8000000000000000) == 0)
        {
LABEL_22:
          if (!__OFADD__(v32, v29 - v32))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = v13;
            if (!isUniquelyReferenced_nonNull_native || v29 > v13[3] >> 1)
            {
              if (v32 <= v29)
              {
                v36 = v29;
              }

              else
              {
                v36 = v32;
              }

              v13 = sub_1867AA47C(isUniquelyReferenced_nonNull_native, v36, 1, v13);
              v65 = v13;
            }

            sub_1867AA654(v29, v32, 0);
            v37 = MEMORY[0x1E69E7CC0];
            v64 = MEMORY[0x1E69E7CC0];
            v38 = v13[2];

            if (v38)
            {
              v39 = 0;
              do
              {
                v40 = v39;
                v41 = v61;
                while (1)
                {
                  if (v40 >= v13[2])
                  {
                    __break(1u);
                    goto LABEL_61;
                  }

                  sub_18693979C(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v40, v8);
                  v39 = v40 + 1;
                  sub_186937B94(v8, v41, v62, &v63, v18);
                  v42 = sub_186939800(v8);
                  if (v63)
                  {
                    break;
                  }

                  ++v40;
                  if (v38 == v39)
                  {
                    goto LABEL_39;
                  }
                }

                MEMORY[0x18CFD0650](v42);
                if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_187ED32F0();
                }

                sub_187ED3310();
                v37 = v64;
              }

              while (v38 - 1 != v40);
            }

LABEL_39:

            if (!(v37 >> 62))
            {
              v43 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_41:
              v44 = v55;
              v45 = v57;
              if (v43 <= 0)
              {
              }

              else
              {
                sub_186939BE0(0, &qword_1EA8FD288, off_1E704B168);
                v46 = sub_187ED32D0();

                [v44 notifyUpcomingNoCellCoverage_];
              }

              *&v44[v45] = v13;

              return;
            }

LABEL_67:
            v43 = sub_187ED35A0();
            goto LABEL_41;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_17:
    v32 = v13[2];
    v29 = v32;
    goto LABEL_22;
  }

  v26 = v62;
}

float sub_1867B32A8()
{
  v1 = v0 + OBJC_IVAR____TtC11GeoServices28GEONavigationListenerDetails_lastRouteMatchedCoordinate;
  swift_beginAccess();
  return *(v1 + 4);
}

void *sub_1867B32F4()
{
  v1 = OBJC_IVAR____TtC11GeoServices28GEONavigationListenerDetails_route;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GEONavigationListenerRemoteClient.setLocation(_:routeCoordinate:)(uint64_t a1, unsigned int a2, float a3)
{
  if (*(v3 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient_hasEntitlement) == 1)
  {
    if (*(v3 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__connection))
    {
      v7 = [*(v3 + OBJC_IVAR____TtC11GeoServices33GEONavigationListenerRemoteClient__connection) remoteObjectProxy];
      sub_187ED3480();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8FD270, &unk_187FBA1E8);
      if (swift_dynamicCast())
      {
        [v8 setLocation:a1 routeCoordinate:a2 | (LODWORD(a3) << 32)];
        swift_unknownObjectRelease();
      }
    }
  }

  sub_1867B2B88();
}

void *sub_1867B3894()
{
  v1 = OBJC_IVAR____TtC11GeoServices28GEONavigationListenerDetails_lastLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t type metadata accessor for GEONavigationListenerRemoteClient.GEOCellCoverageUnavailableSection(uint64_t a1)
{
  result = qword_1EA903F38;
  if (!qword_1EA903F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1867B46F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *GEOClientCapabilitiesReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 240));
  [v3 setLength:*(a1 + 236)];
  [v3 seekToOffset:*(a1 + 232)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 316);
  v11 = *(a1 + 324);
  v12 = vdupq_n_s64(v10);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddq_s32(vaddq_s32(vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBE3D0), vshlq_u64(v12, xmmword_187FBE3C0)), v13), vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBE3B0), vshlq_u64(v12, xmmword_187FBE3A0)), v13)), vandq_s8(vuzp1q_s32(vshlq_u64(v12, xmmword_187FBE3F0), vshlq_u64(v12, xmmword_187FBE3E0)), v13));
  v15 = vaddvq_s32(v14);
  v14.i32[0] = vaddv_s16(vbic_s8(0x8000400020001, vceqz_s16(vand_s8(vdup_n_s16(v11), 0x4000200080010)))) & 0xF;
  *v14.i8 = vcnt_s8(*v14.i8);
  v14.i16[0] = vaddlv_u8(*v14.i8);
  v16 = v15 + v14.i32[0] + ((v10 & 0x200000000000000) != 0) + ((v10 >> 49) & 1) + (v11 & 1) + ((v11 >> 5) & 1) + (v10 >> 63);
  while (1)
  {
    v17 = a3[v6];
    if (v17 > -3)
    {
      break;
    }

    if (v17 == -4)
    {
      ++v16;
      v8 = 1;
      goto LABEL_12;
    }

    if (v17 == -3)
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    ++v16;
LABEL_12:
    ++v6;
  }

  if (v17 >= 0xFFFFFFFE)
  {
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  if (v17)
  {
    goto LABEL_11;
  }

  v18 = v16 > 0xF;
  v390 = v18 & ~v9 | v8;
  v391 = v7;
  v19 = v9 | v18;
  if ((v9 | v18 | v7))
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  v21 = objc_msgSend_position(v3);
  if (v21 >= [v3 length])
  {
LABEL_841:
    v30 = 1;
    goto LABEL_842;
  }

  v392 = v19 | v8;
  v393 = (v20 == 0) | v19;
  v394 = v19;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_841;
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      LOBYTE(v395) = 0;
      v25 = objc_msgSend_position(v3) + 1;
      if (v25 >= objc_msgSend_position(v3) && (v26 = objc_msgSend_position(v3) + 1, v26 <= [v3 length]))
      {
        v27 = [v3 data];
        [v27 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v24 |= (v395 & 0x7F) << v22;
      if ((v395 & 0x80) == 0)
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
    v19 = v394;
    if (v29)
    {
      goto LABEL_842;
    }

    v31 = v24 & 7;
    if (v31 == 4)
    {
      goto LABEL_842;
    }

    v32 = v24 >> 3;
    v33 = v394;
    if ((v393 & 1) == 0)
    {
      v34 = v20;
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
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 322) & 0x80) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 112;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v366 = *(a1 + 316) << 8;
        goto LABEL_811;
      case 2:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 323) & 1) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 120;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v366 = *(a1 + 316) << 7;
        goto LABEL_811;
      case 3:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 316) & 0x8000000000000000) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 176;
LABEL_491:
          v275 = *(a1 + v39);
          *(a1 + v39) = v38;
          goto LABEL_543;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v366 = *(a1 + 316);
        goto LABEL_811;
      case 4:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v160 = 0;
        v161 = 0;
        v162 = 0;
        *(a1 + 316) |= 2uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v163 = objc_msgSend_position(v3) + 1;
          if (v163 >= objc_msgSend_position(v3) && (v164 = objc_msgSend_position(v3) + 1, v164 <= [v3 length]))
          {
            v165 = [v3 data];
            [v165 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v162 |= (v395 & 0x7F) << v160;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v160 += 7;
          v28 = v161++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_703;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v162;
        }

LABEL_703:
        v364 = 248;
        goto LABEL_736;
      case 5:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v197 = 0;
        v198 = 0;
        v199 = 0;
        *(a1 + 316) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v200 = objc_msgSend_position(v3) + 1;
          if (v200 >= objc_msgSend_position(v3) && (v201 = objc_msgSend_position(v3) + 1, v201 <= [v3 length]))
          {
            v202 = [v3 data];
            [v202 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v199 |= (v395 & 0x7F) << v197;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v197 += 7;
          v28 = v198++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_719;
          }
        }

        v46 = (v199 != 0) & ~[v3 hasError];
LABEL_719:
        v363 = 275;
        goto LABEL_773;
      case 6:
        if (!v33 || (*(a1 + 323) & 0x10) != 0)
        {
          goto LABEL_657;
        }

        v178 = PBReaderReadString();
        if (v178)
        {
          [(GEOClientCapabilities *)a1 _addNoFlagsDisplayLanguages:v178];
        }

        goto LABEL_775;
      case 7:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 323) & 0x20) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 160;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v366 = 4 * *(a1 + 316);
        goto LABEL_811;
      case 8:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 316) |= 8uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v139 = objc_msgSend_position(v3) + 1;
          if (v139 >= objc_msgSend_position(v3) && (v140 = objc_msgSend_position(v3) + 1, v140 <= [v3 length]))
          {
            v141 = [v3 data];
            [v141 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v138 |= (v395 & 0x7F) << v136;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v28 = v137++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_691;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v138;
        }

LABEL_691:
        v364 = 256;
        goto LABEL_736;
      case 9:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 316) |= 4uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v182 = objc_msgSend_position(v3) + 1;
          if (v182 >= objc_msgSend_position(v3) && (v183 = objc_msgSend_position(v3) + 1, v183 <= [v3 length]))
          {
            v184 = [v3 data];
            [v184 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v181 |= (v395 & 0x7F) << v179;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v28 = v180++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_713;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v181;
        }

LABEL_713:
        v364 = 252;
        goto LABEL_736;
      case 10:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 316) |= 1uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v157 = objc_msgSend_position(v3) + 1;
          if (v157 >= objc_msgSend_position(v3) && (v158 = objc_msgSend_position(v3) + 1, v158 <= [v3 length]))
          {
            v159 = [v3 data];
            [v159 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v156 |= (v395 & 0x7F) << v154;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v28 = v155++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_699;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v156;
        }

LABEL_699:
        v364 = 244;
        goto LABEL_736;
      case 11:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 323) & 4) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 136;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v366 = 32 * *(a1 + 316);
        goto LABEL_811;
      case 12:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 316) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v121 = objc_msgSend_position(v3) + 1;
          if (v121 >= objc_msgSend_position(v3) && (v122 = objc_msgSend_position(v3) + 1, v122 <= [v3 length]))
          {
            v123 = [v3 data];
            [v123 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v120 |= (v395 & 0x7F) << v118;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v28 = v119++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_683;
          }
        }

        v46 = (v120 != 0) & ~[v3 hasError];
LABEL_683:
        v363 = 272;
        goto LABEL_773;
      case 13:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 316) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v115 = objc_msgSend_position(v3) + 1;
          if (v115 >= objc_msgSend_position(v3) && (v116 = objc_msgSend_position(v3) + 1, v116 <= [v3 length]))
          {
            v117 = [v3 data];
            [v117 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v114 |= (v395 & 0x7F) << v112;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v28 = v113++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_681;
          }
        }

        v46 = (v114 != 0) & ~[v3 hasError];
LABEL_681:
        v363 = 280;
        goto LABEL_773;
      case 14:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v239 = 0;
        v240 = 0;
        v241 = 0;
        *(a1 + 316) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v242 = objc_msgSend_position(v3) + 1;
          if (v242 >= objc_msgSend_position(v3) && (v243 = objc_msgSend_position(v3) + 1, v243 <= [v3 length]))
          {
            v244 = [v3 data];
            [v244 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v241 |= (v395 & 0x7F) << v239;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v239 += 7;
          v28 = v240++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_735;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v241;
        }

LABEL_735:
        v364 = 268;
        goto LABEL_736;
      case 16:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 323) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v366 = 2 * *(a1 + 316);
          goto LABEL_811;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOFormattedStringClientCapabilities);
        if (!GEOFormattedStringClientCapabilitiesReadAllFrom(v67, v3))
        {
          goto LABEL_884;
        }

        PBReaderRecallMark();
        v68 = 168;
        goto LABEL_542;
      case 17:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 316) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v188 = objc_msgSend_position(v3) + 1;
          if (v188 >= objc_msgSend_position(v3) && (v189 = objc_msgSend_position(v3) + 1, v189 <= [v3 length]))
          {
            v190 = [v3 data];
            [v190 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v187 |= (v395 & 0x7F) << v185;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v28 = v186++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_715;
          }
        }

        v46 = (v187 != 0) & ~[v3 hasError];
LABEL_715:
        v363 = 281;
        goto LABEL_773;
      case 18:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v227 = 0;
        v228 = 0;
        v229 = 0;
        *(a1 + 316) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v230 = objc_msgSend_position(v3) + 1;
          if (v230 >= objc_msgSend_position(v3) && (v231 = objc_msgSend_position(v3) + 1, v231 <= [v3 length]))
          {
            v232 = [v3 data];
            [v232 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v229 |= (v395 & 0x7F) << v227;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v227 += 7;
          v28 = v228++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_729;
          }
        }

        v46 = (v229 != 0) & ~[v3 hasError];
LABEL_729:
        v363 = 274;
        goto LABEL_773;
      case 19:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 324) & 0x10) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 216;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v367 = 8 * *(a1 + 324);
        goto LABEL_808;
      case 20:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v276 = 0;
        v277 = 0;
        v278 = 0;
        *(a1 + 316) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v279 = objc_msgSend_position(v3) + 1;
          if (v279 >= objc_msgSend_position(v3) && (v280 = objc_msgSend_position(v3) + 1, v280 <= [v3 length]))
          {
            v281 = [v3 data];
            [v281 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v278 |= (v395 & 0x7F) << v276;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v276 += 7;
          v28 = v277++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_748;
          }
        }

        v46 = (v278 != 0) & ~[v3 hasError];
LABEL_748:
        v363 = 302;
        goto LABEL_773;
      case 21:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 316) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v145 = objc_msgSend_position(v3) + 1;
          if (v145 >= objc_msgSend_position(v3) && (v146 = objc_msgSend_position(v3) + 1, v146 <= [v3 length]))
          {
            v147 = [v3 data];
            [v147 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v144 |= (v395 & 0x7F) << v142;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v28 = v143++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_693;
          }
        }

        v46 = (v144 != 0) & ~[v3 hasError];
LABEL_693:
        v363 = 299;
        goto LABEL_773;
      case 22:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v251 = 0;
        v252 = 0;
        v253 = 0;
        *(a1 + 316) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v254 = objc_msgSend_position(v3) + 1;
          if (v254 >= objc_msgSend_position(v3) && (v255 = objc_msgSend_position(v3) + 1, v255 <= [v3 length]))
          {
            v256 = [v3 data];
            [v256 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v253 |= (v395 & 0x7F) << v251;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v251 += 7;
          v28 = v252++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_740;
          }
        }

        v46 = (v253 != 0) & ~[v3 hasError];
LABEL_740:
        v363 = 298;
        goto LABEL_773;
      case 23:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 316) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v90 = objc_msgSend_position(v3) + 1;
          if (v90 >= objc_msgSend_position(v3) && (v91 = objc_msgSend_position(v3) + 1, v91 <= [v3 length]))
          {
            v92 = [v3 data];
            [v92 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v89 |= (v395 & 0x7F) << v87;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v28 = v88++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_675;
          }
        }

        v46 = (v89 != 0) & ~[v3 hasError];
LABEL_675:
        v363 = 276;
        goto LABEL_773;
      case 24:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 322) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v366 = *(a1 + 316) << 10;
          goto LABEL_811;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOAbAssignInfo);
        if (!GEOAbAssignInfoReadAllFrom(v67, v3))
        {
          goto LABEL_884;
        }

        PBReaderRecallMark();
        v68 = 96;
        goto LABEL_542;
      case 25:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 324) & 8) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v367 = 16 * *(a1 + 324);
          goto LABEL_808;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOLocalTime);
        if (!GEOLocalTimeReadAllFrom(v67, v3))
        {
          goto LABEL_884;
        }

        PBReaderRecallMark();
        v68 = 208;
        goto LABEL_542;
      case 26:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v166 = 0;
        v167 = 0;
        v168 = 0;
        *(a1 + 316) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v169 = objc_msgSend_position(v3) + 1;
          if (v169 >= objc_msgSend_position(v3) && (v170 = objc_msgSend_position(v3) + 1, v170 <= [v3 length]))
          {
            v171 = [v3 data];
            [v171 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v168 |= (v395 & 0x7F) << v166;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v166 += 7;
          v28 = v167++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_707;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v168;
        }

LABEL_707:
        v364 = 264;
        goto LABEL_736;
      case 27:
        if (!v33 || (*(a1 + 322) & 8) != 0)
        {
          goto LABEL_657;
        }

        if (v31 != 2)
        {
          v374 = 0;
          v375 = 0;
          v376 = 0;
          while (1)
          {
            LOBYTE(v395) = 0;
            v377 = objc_msgSend_position(v3) + 1;
            if (v377 >= objc_msgSend_position(v3) && (v378 = objc_msgSend_position(v3) + 1, v378 <= [v3 length]))
            {
              v379 = [v3 data];
              [v379 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v376 |= (v395 & 0x7F) << v374;
            if ((v395 & 0x80) == 0)
            {
              goto LABEL_839;
            }

            v374 += 7;
            v28 = v375++ >= 9;
            if (v28)
            {
              goto LABEL_840;
            }
          }
        }

        v395 = 0;
        v396 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_885;
        }

        while (1)
        {
          v93 = objc_msgSend_position(v3);
          if (v93 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_659;
          }

          v94 = 0;
          v95 = 0;
          v96 = 0;
          while (1)
          {
            v397 = 0;
            v97 = objc_msgSend_position(v3) + 1;
            if (v97 >= objc_msgSend_position(v3) && (v98 = objc_msgSend_position(v3) + 1, v98 <= [v3 length]))
            {
              v99 = [v3 data];
              [v99 getBytes:&v397 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v96 |= (v397 & 0x7F) << v94;
            if ((v397 & 0x80) == 0)
            {
              break;
            }

            v94 += 7;
            v28 = v95++ >= 9;
            if (v28)
            {
              goto LABEL_154;
            }
          }

          [v3 hasError];
LABEL_154:
          PBRepeatedInt32Add();
        }

      case 28:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v294 = 0;
        v295 = 0;
        v296 = 0;
        *(a1 + 316) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v297 = objc_msgSend_position(v3) + 1;
          if (v297 >= objc_msgSend_position(v3) && (v298 = objc_msgSend_position(v3) + 1, v298 <= [v3 length]))
          {
            v299 = [v3 data];
            [v299 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v296 |= (v395 & 0x7F) << v294;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v294 += 7;
          v28 = v295++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_754;
          }
        }

        v46 = (v296 != 0) & ~[v3 hasError];
LABEL_754:
        v363 = 285;
        goto LABEL_773;
      case 29:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v288 = 0;
        v289 = 0;
        v290 = 0;
        *(a1 + 316) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v291 = objc_msgSend_position(v3) + 1;
          if (v291 >= objc_msgSend_position(v3) && (v292 = objc_msgSend_position(v3) + 1, v292 <= [v3 length]))
          {
            v293 = [v3 data];
            [v293 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v290 |= (v395 & 0x7F) << v288;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v288 += 7;
          v28 = v289++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_752;
          }
        }

        v46 = (v290 != 0) & ~[v3 hasError];
LABEL_752:
        v363 = 303;
        goto LABEL_773;
      case 30:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 316) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v127 = objc_msgSend_position(v3) + 1;
          if (v127 >= objc_msgSend_position(v3) && (v128 = objc_msgSend_position(v3) + 1, v128 <= [v3 length]))
          {
            v129 = [v3 data];
            [v129 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v126 |= (v395 & 0x7F) << v124;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v28 = v125++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_685;
          }
        }

        v46 = (v126 != 0) & ~[v3 hasError];
LABEL_685:
        v363 = 300;
        goto LABEL_773;
      case 31:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 324) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v367 = *(a1 + 324) << 6;
          goto LABEL_808;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOLocalizationCapabilities);
        if (!GEOLocalizationCapabilitiesReadAllFrom(v67, v3))
        {
          goto LABEL_884;
        }

        PBReaderRecallMark();
        v68 = 192;
        goto LABEL_542;
      case 32:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 323) & 8) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 144;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v366 = 16 * *(a1 + 316);
        goto LABEL_811;
      case 33:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 316) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v151 = objc_msgSend_position(v3) + 1;
          if (v151 >= objc_msgSend_position(v3) && (v152 = objc_msgSend_position(v3) + 1, v152 <= [v3 length]))
          {
            v153 = [v3 data];
            [v153 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v150 |= (v395 & 0x7F) << v148;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v28 = v149++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_695;
          }
        }

        v46 = (v150 != 0) & ~[v3 hasError];
LABEL_695:
        v363 = 288;
        goto LABEL_773;
      case 34:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v306 = 0;
        v307 = 0;
        v308 = 0;
        *(a1 + 316) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v309 = objc_msgSend_position(v3) + 1;
          if (v309 >= objc_msgSend_position(v3) && (v310 = objc_msgSend_position(v3) + 1, v310 <= [v3 length]))
          {
            v311 = [v3 data];
            [v311 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v308 |= (v395 & 0x7F) << v306;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v306 += 7;
          v28 = v307++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_758;
          }
        }

        v46 = (v308 != 0) & ~[v3 hasError];
LABEL_758:
        v363 = 301;
        goto LABEL_773;
      case 35:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 316) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v103 = objc_msgSend_position(v3) + 1;
          if (v103 >= objc_msgSend_position(v3) && (v104 = objc_msgSend_position(v3) + 1, v104 <= [v3 length]))
          {
            v105 = [v3 data];
            [v105 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v102 |= (v395 & 0x7F) << v100;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v28 = v101++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_677;
          }
        }

        v46 = (v102 != 0) & ~[v3 hasError];
LABEL_677:
        v363 = 292;
        goto LABEL_773;
      case 36:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v233 = 0;
        v234 = 0;
        v235 = 0;
        *(a1 + 316) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v236 = objc_msgSend_position(v3) + 1;
          if (v236 >= objc_msgSend_position(v3) && (v237 = objc_msgSend_position(v3) + 1, v237 <= [v3 length]))
          {
            v238 = [v3 data];
            [v238 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v235 |= (v395 & 0x7F) << v233;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v233 += 7;
          v28 = v234++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_731;
          }
        }

        v46 = (v235 != 0) & ~[v3 hasError];
LABEL_731:
        v363 = 309;
        goto LABEL_773;
      case 37:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v300 = 0;
        v301 = 0;
        v302 = 0;
        *(a1 + 316) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v303 = objc_msgSend_position(v3) + 1;
          if (v303 >= objc_msgSend_position(v3) && (v304 = objc_msgSend_position(v3) + 1, v304 <= [v3 length]))
          {
            v305 = [v3 data];
            [v305 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v302 |= (v395 & 0x7F) << v300;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v300 += 7;
          v28 = v301++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_756;
          }
        }

        v46 = (v302 != 0) & ~[v3 hasError];
LABEL_756:
        v363 = 312;
        goto LABEL_773;
      case 38:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 324) & 4) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 200;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v367 = 32 * *(a1 + 324);
        goto LABEL_808;
      case 39:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v203 = 0;
        v204 = 0;
        v205 = 0;
        *(a1 + 316) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v206 = objc_msgSend_position(v3) + 1;
          if (v206 >= objc_msgSend_position(v3) && (v207 = objc_msgSend_position(v3) + 1, v207 <= [v3 length]))
          {
            v208 = [v3 data];
            [v208 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v205 |= (v395 & 0x7F) << v203;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v203 += 7;
          v28 = v204++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_721;
          }
        }

        v46 = (v205 != 0) & ~[v3 hasError];
LABEL_721:
        v363 = 313;
        goto LABEL_773;
      case 40:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 316) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v78 = objc_msgSend_position(v3) + 1;
          if (v78 >= objc_msgSend_position(v3) && (v79 = objc_msgSend_position(v3) + 1, v79 <= [v3 length]))
          {
            v80 = [v3 data];
            [v80 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v77 |= (v395 & 0x7F) << v75;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v28 = v76++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_671;
          }
        }

        v46 = (v77 != 0) & ~[v3 hasError];
LABEL_671:
        v363 = 304;
        goto LABEL_773;
      case 41:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 322) & 0x40) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v366 = *(a1 + 316) << 9;
          goto LABEL_811;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOAdvisoryClientCapabilities);
        if (!GEOAdvisoryClientCapabilitiesReadAllFrom(v67, v3))
        {
          goto LABEL_884;
        }

        PBReaderRecallMark();
        v68 = 104;
        goto LABEL_542;
      case 42:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 316) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v133 = objc_msgSend_position(v3) + 1;
          if (v133 >= objc_msgSend_position(v3) && (v134 = objc_msgSend_position(v3) + 1, v134 <= [v3 length]))
          {
            v135 = [v3 data];
            [v135 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v132 |= (v395 & 0x7F) << v130;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v28 = v131++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_687;
          }
        }

        v46 = (v132 != 0) & ~[v3 hasError];
LABEL_687:
        v363 = 308;
        goto LABEL_773;
      case 43:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 316) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v175 = objc_msgSend_position(v3) + 1;
          if (v175 >= objc_msgSend_position(v3) && (v176 = objc_msgSend_position(v3) + 1, v176 <= [v3 length]))
          {
            v177 = [v3 data];
            [v177 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v174 |= (v395 & 0x7F) << v172;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v28 = v173++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_709;
          }
        }

        v46 = (v174 != 0) & ~[v3 hasError];
LABEL_709:
        v363 = 310;
        goto LABEL_773;
      case 44:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v245 = 0;
        v246 = 0;
        v247 = 0;
        *(a1 + 316) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v248 = objc_msgSend_position(v3) + 1;
          if (v248 >= objc_msgSend_position(v3) && (v249 = objc_msgSend_position(v3) + 1, v249 <= [v3 length]))
          {
            v250 = [v3 data];
            [v250 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v247 |= (v395 & 0x7F) << v245;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v245 += 7;
          v28 = v246++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_738;
          }
        }

        v46 = (v247 != 0) & ~[v3 hasError];
LABEL_738:
        v363 = 284;
        goto LABEL_773;
      case 45:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v336 = 0;
        v337 = 0;
        v338 = 0;
        *(a1 + 316) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v339 = objc_msgSend_position(v3) + 1;
          if (v339 >= objc_msgSend_position(v3) && (v340 = objc_msgSend_position(v3) + 1, v340 <= [v3 length]))
          {
            v341 = [v3 data];
            [v341 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v338 |= (v395 & 0x7F) << v336;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v336 += 7;
          v28 = v337++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_768;
          }
        }

        v46 = (v338 != 0) & ~[v3 hasError];
LABEL_768:
        v363 = 283;
        goto LABEL_773;
      case 46:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 316) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v84 = objc_msgSend_position(v3) + 1;
          if (v84 >= objc_msgSend_position(v3) && (v85 = objc_msgSend_position(v3) + 1, v85 <= [v3 length]))
          {
            v86 = [v3 data];
            [v86 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v83 |= (v395 & 0x7F) << v81;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v28 = v82++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_673;
          }
        }

        v46 = (v83 != 0) & ~[v3 hasError];
LABEL_673:
        v363 = 307;
        goto LABEL_773;
      case 47:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v191 = 0;
        v192 = 0;
        v193 = 0;
        *(a1 + 316) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v194 = objc_msgSend_position(v3) + 1;
          if (v194 >= objc_msgSend_position(v3) && (v195 = objc_msgSend_position(v3) + 1, v195 <= [v3 length]))
          {
            v196 = [v3 data];
            [v196 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v193 |= (v395 & 0x7F) << v191;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v191 += 7;
          v28 = v192++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_717;
          }
        }

        v46 = (v193 != 0) & ~[v3 hasError];
LABEL_717:
        v363 = 279;
        goto LABEL_773;
      case 48:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v215 = 0;
        v216 = 0;
        v217 = 0;
        *(a1 + 316) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v218 = objc_msgSend_position(v3) + 1;
          if (v218 >= objc_msgSend_position(v3) && (v219 = objc_msgSend_position(v3) + 1, v219 <= [v3 length]))
          {
            v220 = [v3 data];
            [v220 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v217 |= (v395 & 0x7F) << v215;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v215 += 7;
          v28 = v216++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_725;
          }
        }

        v46 = (v217 != 0) & ~[v3 hasError];
LABEL_725:
        v363 = 297;
        goto LABEL_773;
      case 49:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v312 = 0;
        v313 = 0;
        v314 = 0;
        *(a1 + 316) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v315 = objc_msgSend_position(v3) + 1;
          if (v315 >= objc_msgSend_position(v3) && (v316 = objc_msgSend_position(v3) + 1, v316 <= [v3 length]))
          {
            v317 = [v3 data];
            [v317 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v314 |= (v395 & 0x7F) << v312;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v312 += 7;
          v28 = v313++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_760;
          }
        }

        v46 = (v314 != 0) & ~[v3 hasError];
LABEL_760:
        v363 = 296;
        goto LABEL_773;
      case 50:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v209 = 0;
        v210 = 0;
        v211 = 0;
        *(a1 + 316) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v212 = objc_msgSend_position(v3) + 1;
          if (v212 >= objc_msgSend_position(v3) && (v213 = objc_msgSend_position(v3) + 1, v213 <= [v3 length]))
          {
            v214 = [v3 data];
            [v214 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v211 |= (v395 & 0x7F) << v209;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v209 += 7;
          v28 = v210++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_723;
          }
        }

        v46 = (v211 != 0) & ~[v3 hasError];
LABEL_723:
        v363 = 277;
        goto LABEL_773;
      case 51:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 316) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v72 = objc_msgSend_position(v3) + 1;
          if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
          {
            v74 = [v3 data];
            [v74 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v71 |= (v395 & 0x7F) << v69;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v28 = v70++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_669;
          }
        }

        v46 = (v71 != 0) & ~[v3 hasError];
LABEL_669:
        v363 = 278;
        goto LABEL_773;
      case 52:
        if (!v33 || (*(a1 + 322) & 0x10) != 0)
        {
          goto LABEL_657;
        }

        if (v31 != 2)
        {
          v368 = 0;
          v369 = 0;
          v370 = 0;
          while (1)
          {
            LOBYTE(v395) = 0;
            v371 = objc_msgSend_position(v3) + 1;
            if (v371 >= objc_msgSend_position(v3) && (v372 = objc_msgSend_position(v3) + 1, v372 <= [v3 length]))
            {
              v373 = [v3 data];
              [v373 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v370 |= (v395 & 0x7F) << v368;
            if ((v395 & 0x80) == 0)
            {
              goto LABEL_839;
            }

            v368 += 7;
            v28 = v369++ >= 9;
            if (v28)
            {
              goto LABEL_840;
            }
          }
        }

        v395 = 0;
        v396 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_885;
        }

        while (1)
        {
          v47 = objc_msgSend_position(v3);
          if (v47 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            goto LABEL_659;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          while (1)
          {
            v397 = 0;
            v51 = objc_msgSend_position(v3) + 1;
            if (v51 >= objc_msgSend_position(v3) && (v52 = objc_msgSend_position(v3) + 1, v52 <= [v3 length]))
            {
              v53 = [v3 data];
              [v53 getBytes:&v397 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v50 |= (v397 & 0x7F) << v48;
            if ((v397 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v28 = v49++ >= 9;
            if (v28)
            {
              goto LABEL_69;
            }
          }

          [v3 hasError];
LABEL_69:
          PBRepeatedInt32Add();
        }

      case 53:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v342 = 0;
        v343 = 0;
        v344 = 0;
        *(a1 + 316) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v345 = objc_msgSend_position(v3) + 1;
          if (v345 >= objc_msgSend_position(v3) && (v346 = objc_msgSend_position(v3) + 1, v346 <= [v3 length]))
          {
            v347 = [v3 data];
            [v347 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v344 |= (v395 & 0x7F) << v342;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v342 += 7;
          v28 = v343++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_770;
          }
        }

        v46 = (v344 != 0) & ~[v3 hasError];
LABEL_770:
        v363 = 289;
        goto LABEL_773;
      case 54:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 324) & 0x20) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v367 = 4 * *(a1 + 324);
LABEL_808:
          v6 += v367 >> 7;
LABEL_775:
          if (!(v392 & 1 | (v6 != 0)))
          {
            goto LABEL_841;
          }

          v365 = objc_msgSend_position(v3);
          if (v365 >= [v3 length])
          {
            goto LABEL_841;
          }

          continue;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOWalkingSupportedFeatures);
        if (GEOWalkingSupportedFeaturesReadAllFrom(v67, v3))
        {
          PBReaderRecallMark();
          v68 = 224;
LABEL_542:
          v275 = *(a1 + v68);
          *(a1 + v68) = v67;
LABEL_543:

          --v6;
          goto LABEL_775;
        }

LABEL_884:

LABEL_885:
        v30 = 0;
LABEL_842:
        if (v390)
        {
LABEL_843:
          *(a1 + 316) |= 0x2000000000000uLL;
        }

        if (v19 & 1 | ((v30 & 1) == 0))
        {
          *(a1 + 316) |= 0x8180000000000000;
          *(a1 + 324) |= 1u;
          *(a1 + 316) |= 0x7440000000000000uLL;
          *(a1 + 324) |= 0x10u;
          *(a1 + 316) |= 0x20000000000000uLL;
          *(a1 + 324) |= 8u;
          *(a1 + 316) |= 0x8000000000000uLL;
          *(a1 + 324) |= 2u;
          *(a1 + 316) |= 0x800000000000000uLL;
          *(a1 + 324) |= 4u;
          *(a1 + 316) |= 0x10000000000000uLL;
          *(a1 + 324) |= 0x20u;
          *(a1 + 316) |= 0x204000000000000uLL;
        }

        else if (v20)
        {
          while (2)
          {
            while (1)
            {
              v387 = *v20++;
              v386 = v387;
              if (v387 <= 37)
              {
                break;
              }

              if (v386 <= 53)
              {
                switch(v386)
                {
                  case '&':
                    *(a1 + 324) |= 4u;
                    break;
                  case ')':
                    *(a1 + 316) |= 0x40000000000000uLL;
                    break;
                  case '4':
                    *(a1 + 316) |= 0x10000000000000uLL;
                    break;
                }
              }

              else if (v386 > 64)
              {
                if (v386 == 65)
                {
                  *(a1 + 324) |= 1u;
                }

                else if (v386 == 67)
                {
                  *(a1 + 316) |= 0x200000000000000uLL;
                }
              }

              else if (v386 == 54)
              {
                *(a1 + 324) |= 0x20u;
              }

              else if (v386 == 63)
              {
                *(a1 + 316) |= 0x4000000000000uLL;
              }
            }

            switch(v386)
            {
              case 0:
                break;
              case 1:
                *(a1 + 316) |= 0x80000000000000uLL;
                continue;
              case 2:
                *(a1 + 316) |= 0x100000000000000uLL;
                continue;
              case 3:
                *(a1 + 316) |= 0x8000000000000000;
                continue;
              case 6:
                *(a1 + 316) |= 0x1000000000000000uLL;
                continue;
              case 7:
                *(a1 + 316) |= 0x2000000000000000uLL;
                continue;
              case 11:
                *(a1 + 316) |= 0x400000000000000uLL;
                continue;
              case 16:
                *(a1 + 316) |= 0x4000000000000000uLL;
                continue;
              case 19:
                *(a1 + 324) |= 0x10u;
                continue;
              case 24:
                *(a1 + 316) |= 0x20000000000000uLL;
                continue;
              case 25:
                *(a1 + 324) |= 8u;
                continue;
              case 27:
                *(a1 + 316) |= 0x8000000000000uLL;
                continue;
              case 31:
                *(a1 + 324) |= 2u;
                continue;
              case 32:
                *(a1 + 316) |= 0x800000000000000uLL;
                continue;
              default:
                continue;
            }

            break;
          }
        }

        if (v30)
        {
          v3 = ([v3 hasError] ^ 1);
          if ((v19 & 1) == 0)
          {
            return v3;
          }

LABEL_882:
          v388 = *(a1 + 8);
          *(a1 + 8) = 0;
        }

        else
        {
          v3 = 0;
          if (v19)
          {
            goto LABEL_882;
          }
        }

        return v3;
      case 55:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 316) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v63 = objc_msgSend_position(v3) + 1;
          if (v63 >= objc_msgSend_position(v3) && (v64 = objc_msgSend_position(v3) + 1, v64 <= [v3 length]))
          {
            v65 = [v3 data];
            [v65 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v62 |= (v395 & 0x7F) << v60;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v28 = v61++ >= 9;
          if (v28)
          {
            v66 = 0;
            goto LABEL_667;
          }
        }

        if ([v3 hasError])
        {
          v66 = 0;
        }

        else
        {
          v66 = v62;
        }

LABEL_667:
        v364 = 260;
LABEL_736:
        *(a1 + v364) = v66;
        goto LABEL_774;
      case 56:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v221 = 0;
        v222 = 0;
        v223 = 0;
        *(a1 + 316) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v224 = objc_msgSend_position(v3) + 1;
          if (v224 >= objc_msgSend_position(v3) && (v225 = objc_msgSend_position(v3) + 1, v225 <= [v3 length]))
          {
            v226 = [v3 data];
            [v226 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v223 |= (v395 & 0x7F) << v221;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v221 += 7;
          v28 = v222++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_727;
          }
        }

        v46 = (v223 != 0) & ~[v3 hasError];
LABEL_727:
        v363 = 290;
        goto LABEL_773;
      case 57:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v257 = 0;
        v258 = 0;
        v259 = 0;
        *(a1 + 316) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v260 = objc_msgSend_position(v3) + 1;
          if (v260 >= objc_msgSend_position(v3) && (v261 = objc_msgSend_position(v3) + 1, v261 <= [v3 length]))
          {
            v262 = [v3 data];
            [v262 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v259 |= (v395 & 0x7F) << v257;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v257 += 7;
          v28 = v258++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_742;
          }
        }

        v46 = (v259 != 0) & ~[v3 hasError];
LABEL_742:
        v363 = 287;
        goto LABEL_773;
      case 58:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 316) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v57 = objc_msgSend_position(v3) + 1;
          if (v57 >= objc_msgSend_position(v3) && (v58 = objc_msgSend_position(v3) + 1, v58 <= [v3 length]))
          {
            v59 = [v3 data];
            [v59 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v56 |= (v395 & 0x7F) << v54;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v28 = v55++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_663;
          }
        }

        v46 = (v56 != 0) & ~[v3 hasError];
LABEL_663:
        v363 = 293;
        goto LABEL_773;
      case 59:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v282 = 0;
        v283 = 0;
        v284 = 0;
        *(a1 + 316) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v285 = objc_msgSend_position(v3) + 1;
          if (v285 >= objc_msgSend_position(v3) && (v286 = objc_msgSend_position(v3) + 1, v286 <= [v3 length]))
          {
            v287 = [v3 data];
            [v287 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v284 |= (v395 & 0x7F) << v282;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v282 += 7;
          v28 = v283++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_750;
          }
        }

        v46 = (v284 != 0) & ~[v3 hasError];
LABEL_750:
        v363 = 306;
        goto LABEL_773;
      case 60:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v263 = 0;
        v264 = 0;
        v265 = 0;
        *(a1 + 316) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v266 = objc_msgSend_position(v3) + 1;
          if (v266 >= objc_msgSend_position(v3) && (v267 = objc_msgSend_position(v3) + 1, v267 <= [v3 length]))
          {
            v268 = [v3 data];
            [v268 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v265 |= (v395 & 0x7F) << v263;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v263 += 7;
          v28 = v264++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_744;
          }
        }

        v46 = (v265 != 0) & ~[v3 hasError];
LABEL_744:
        v363 = 311;
        goto LABEL_773;
      case 61:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v355 = 0;
        v356 = 0;
        v357 = 0;
        *(a1 + 316) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v358 = objc_msgSend_position(v3) + 1;
          if (v358 >= objc_msgSend_position(v3) && (v359 = objc_msgSend_position(v3) + 1, v359 <= [v3 length]))
          {
            v360 = [v3 data];
            [v360 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v357 |= (v395 & 0x7F) << v355;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v355 += 7;
          v28 = v356++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_772;
          }
        }

        v46 = (v357 != 0) & ~[v3 hasError];
LABEL_772:
        v363 = 295;
        goto LABEL_773;
      case 62:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v324 = 0;
        v325 = 0;
        v326 = 0;
        *(a1 + 316) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v327 = objc_msgSend_position(v3) + 1;
          if (v327 >= objc_msgSend_position(v3) && (v328 = objc_msgSend_position(v3) + 1, v328 <= [v3 length]))
          {
            v329 = [v3 data];
            [v329 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v326 |= (v395 & 0x7F) << v324;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v324 += 7;
          v28 = v325++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_764;
          }
        }

        v46 = (v326 != 0) & ~[v3 hasError];
LABEL_764:
        v363 = 305;
        goto LABEL_773;
      case 63:
        if (!v33 || (*(a1 + 322) & 4) != 0)
        {
          goto LABEL_657;
        }

        if (v31 == 2)
        {
          v395 = 0;
          v396 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_885;
          }

          while (1)
          {
            v348 = objc_msgSend_position(v3);
            if (v348 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
            {
              break;
            }

            v349 = 0;
            v350 = 0;
            v351 = 0;
            while (1)
            {
              v397 = 0;
              v352 = objc_msgSend_position(v3) + 1;
              if (v352 >= objc_msgSend_position(v3) && (v353 = objc_msgSend_position(v3) + 1, v353 <= [v3 length]))
              {
                v354 = [v3 data];
                [v354 getBytes:&v397 range:{objc_msgSend_position(v3), 1}];

                [v3 setPosition:objc_msgSend_position(v3) + 1];
              }

              else
              {
                [v3 _setError];
              }

              v351 |= (v397 & 0x7F) << v349;
              if ((v397 & 0x80) == 0)
              {
                break;
              }

              v349 += 7;
              v28 = v350++ >= 9;
              if (v28)
              {
                goto LABEL_640;
              }
            }

            [v3 hasError];
LABEL_640:
            PBRepeatedInt32Add();
          }

LABEL_659:
          PBReaderRecallMark();
        }

        else
        {
          v380 = 0;
          v381 = 0;
          v382 = 0;
          while (1)
          {
            LOBYTE(v395) = 0;
            v383 = objc_msgSend_position(v3) + 1;
            if (v383 >= objc_msgSend_position(v3) && (v384 = objc_msgSend_position(v3) + 1, v384 <= [v3 length]))
            {
              v385 = [v3 data];
              [v385 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v382 |= (v395 & 0x7F) << v380;
            if ((v395 & 0x80) == 0)
            {
              break;
            }

            v380 += 7;
            v28 = v381++ >= 9;
            if (v28)
            {
              goto LABEL_840;
            }
          }

LABEL_839:
          [v3 hasError];
LABEL_840:
          PBRepeatedInt32Add();
        }

LABEL_774:
        v19 = v394;
        goto LABEL_775;
      case 64:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v269 = 0;
        v270 = 0;
        v271 = 0;
        *(a1 + 316) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v272 = objc_msgSend_position(v3) + 1;
          if (v272 >= objc_msgSend_position(v3) && (v273 = objc_msgSend_position(v3) + 1, v273 <= [v3 length]))
          {
            v274 = [v3 data];
            [v274 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v271 |= (v395 & 0x7F) << v269;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v269 += 7;
          v28 = v270++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_746;
          }
        }

        v46 = (v271 != 0) & ~[v3 hasError];
LABEL_746:
        v363 = 291;
        goto LABEL_773;
      case 65:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 324) & 1) == 0)
        {
          v38 = PBReaderReadString();
          v39 = 184;
          goto LABEL_491;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_885;
        }

        v6 -= *(a1 + 324) & 1;
        goto LABEL_775;
      case 66:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 316) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v109 = objc_msgSend_position(v3) + 1;
          if (v109 >= objc_msgSend_position(v3) && (v110 = objc_msgSend_position(v3) + 1, v110 <= [v3 length]))
          {
            v111 = [v3 data];
            [v111 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v108 |= (v395 & 0x7F) << v106;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v28 = v107++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_679;
          }
        }

        v46 = (v108 != 0) & ~[v3 hasError];
LABEL_679:
        v363 = 282;
        goto LABEL_773;
      case 67:
        if (!v33)
        {
          goto LABEL_657;
        }

        if ((*(a1 + 323) & 2) != 0)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }

          v366 = *(a1 + 316) << 6;
LABEL_811:
          v6 += v366 >> 63;
          goto LABEL_775;
        }

        v395 = 0;
        v396 = 0;
        if ((PBReaderPlaceMark() & 1) == 0)
        {
          goto LABEL_885;
        }

        v67 = objc_alloc_init(GEOArtworkCapabilities);
        if (!GEOArtworkCapabilitiesReadAllFrom(v67, v3))
        {
          goto LABEL_884;
        }

        PBReaderRecallMark();
        v68 = 128;
        goto LABEL_542;
      case 68:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 316) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v43 = objc_msgSend_position(v3) + 1;
          if (v43 >= objc_msgSend_position(v3) && (v44 = objc_msgSend_position(v3) + 1, v44 <= [v3 length]))
          {
            v45 = [v3 data];
            [v45 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v42 |= (v395 & 0x7F) << v40;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v28 = v41++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_661;
          }
        }

        v46 = (v42 != 0) & ~[v3 hasError];
LABEL_661:
        v363 = 294;
        goto LABEL_773;
      case 69:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v318 = 0;
        v319 = 0;
        v320 = 0;
        *(a1 + 316) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v321 = objc_msgSend_position(v3) + 1;
          if (v321 >= objc_msgSend_position(v3) && (v322 = objc_msgSend_position(v3) + 1, v322 <= [v3 length]))
          {
            v323 = [v3 data];
            [v323 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v320 |= (v395 & 0x7F) << v318;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v318 += 7;
          v28 = v319++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_762;
          }
        }

        v46 = (v320 != 0) & ~[v3 hasError];
LABEL_762:
        v363 = 273;
        goto LABEL_773;
      case 100:
        if ((v391 & 1) == 0)
        {
          goto LABEL_657;
        }

        v330 = 0;
        v331 = 0;
        v332 = 0;
        *(a1 + 316) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v395) = 0;
          v333 = objc_msgSend_position(v3) + 1;
          if (v333 >= objc_msgSend_position(v3) && (v334 = objc_msgSend_position(v3) + 1, v334 <= [v3 length]))
          {
            v335 = [v3 data];
            [v335 getBytes:&v395 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v332 |= (v395 & 0x7F) << v330;
          if ((v395 & 0x80) == 0)
          {
            break;
          }

          v330 += 7;
          v28 = v331++ >= 9;
          if (v28)
          {
            v46 = 0;
            goto LABEL_766;
          }
        }

        v46 = (v332 != 0) & ~[v3 hasError];
LABEL_766:
        v363 = 286;
LABEL_773:
        *(a1 + v363) = v46;
        goto LABEL_774;
      default:
        if ((v390 & 1) == 0 || (*(a1 + 322) & 2) != 0)
        {
LABEL_657:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_885;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            v361 = objc_alloc_init(MEMORY[0x1E69C65D8]);
            v362 = *(a1 + 16);
            *(a1 + 16) = v361;
          }

          if (!PBUnknownFieldAdd())
          {
            v30 = 0;
            goto LABEL_843;
          }
        }

        goto LABEL_775;
    }
  }
}

void *GEODirectionsRequestFeedbackReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 44))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEODirectionsRequestFeedbackReadAllFrom can only be called once per object"];
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
    v9 = &GEODirectionsRequestFeedbackReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEODirectionsRequestFeedbackReadAllFrom_initialTag;
  }

  Specified = GEODirectionsRequestFeedbackReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  os_unfair_lock_unlock((a1 + 48));
  return Specified;
}

void *GEODirectionsRequestFeedbackReadSpecified(uint64_t a1, void *a2, int *a3)
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
  LODWORD(v57) = v12 & ~v6 | v7;
  HIDWORD(v57) = v6 | v12 | v7;
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
    v15 = objc_msgSend_position(v3, v57);
    if (v15 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
    {
LABEL_94:
      v24 = 1;
      goto LABEL_95;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v58 = 0;
      v19 = objc_msgSend_position(v3) + 1;
      if (v19 >= objc_msgSend_position(v3) && (v20 = objc_msgSend_position(v3) + 1, v20 <= [v3 length]))
      {
        v21 = [v3 data];
        [v21 getBytes:&v58 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v18 |= (v58 & 0x7F) << v16;
      if ((v58 & 0x80) == 0)
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
      goto LABEL_95;
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
      if (v25 == 1)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_77;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 60) |= 1u;
        while (1)
        {
          v60 = 0;
          v45 = objc_msgSend_position(v3) + 1;
          if (v45 >= objc_msgSend_position(v3) && (v46 = objc_msgSend_position(v3) + 1, v46 <= [v3 length]))
          {
            v47 = [v3 data];
            [v47 getBytes:&v60 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v44 |= (v60 & 0x7F) << v42;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v22 = v43++ >= 9;
          if (v22)
          {
            v37 = 0;
            goto LABEL_86;
          }
        }

        if ([v3 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v44;
        }

LABEL_86:
        v49 = 52;
        goto LABEL_87;
      }

      if (v25 == 2)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_77;
        }

        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 60) |= 2u;
        while (1)
        {
          v59 = 0;
          v34 = objc_msgSend_position(v3) + 1;
          if (v34 >= objc_msgSend_position(v3) && (v35 = objc_msgSend_position(v3) + 1, v35 <= [v3 length]))
          {
            v36 = [v3 data];
            [v36 getBytes:&v59 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v33 |= (v59 & 0x7F) << v31;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v22 = v32++ >= 9;
          if (v22)
          {
            v37 = 0;
            goto LABEL_82;
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

LABEL_82:
        v49 = 56;
LABEL_87:
        *(a1 + v49) = v37;
        goto LABEL_93;
      }

      goto LABEL_57;
    }

    if (v25 == 3)
    {
      break;
    }

    if (v25 == 4)
    {
      if (!v26)
      {
        goto LABEL_77;
      }

      if ((*(a1 + 60) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_113;
        }

        v50 = 8 * *(a1 + 60);
        goto LABEL_92;
      }

      v38 = PBReaderReadString();
      v39 = 32;
      goto LABEL_76;
    }

LABEL_57:
    if ((v57 & 1) == 0 || (*(a1 + 60) & 4) != 0)
    {
LABEL_77:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_93;
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
      v56 = &OBJC_IVAR___GEOCompanionTransitAlightMessage__identifier;
      goto LABEL_96;
    }

LABEL_93:
    if (!(BYTE4(v57) & 1 | (v9 != 0)))
    {
      goto LABEL_94;
    }
  }

  if (!v26)
  {
    goto LABEL_77;
  }

  if ((*(a1 + 60) & 8) == 0)
  {
    v38 = PBReaderReadString();
    v39 = 24;
LABEL_76:
    v48 = *(a1 + v39);
    *(a1 + v39) = v38;

    --v9;
    goto LABEL_93;
  }

  if (PBReaderSkipValueWithTag())
  {
    v50 = 16 * *(a1 + 60);
LABEL_92:
    v9 += v50 >> 7;
    goto LABEL_93;
  }

LABEL_113:
  v24 = 0;
LABEL_95:
  v56 = &OBJC_IVAR___GEOCompanionTransitAlightMessage__identifier;
  if ((v57 & 1) == 0)
  {
    goto LABEL_97;
  }

LABEL_96:
  *(a1 + v56[854]) |= 4u;
LABEL_97:
  if (v13 & 1 | ((v24 & 1) == 0))
  {
    *(a1 + v56[854]) |= 8u;
    *(a1 + v56[854]) |= 0x10u;
    goto LABEL_107;
  }

  if (v14)
  {
    while (1)
    {
      v52 = *v14++;
      v51 = v52;
      if (v52 == 3)
      {
        break;
      }

      if (v51 == 4)
      {
        v53 = 16;
LABEL_106:
        *(a1 + v56[854]) |= v53;
        continue;
      }

      if (!v51)
      {
        goto LABEL_107;
      }
    }

    v53 = 8;
    goto LABEL_106;
  }

LABEL_107:
  if (v24)
  {
    v3 = ([v3 hasError] ^ 1);
    if ((v13 & 1) == 0)
    {
      return v3;
    }

LABEL_111:
    v54 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else
  {
    v3 = 0;
    if (v13)
    {
      goto LABEL_111;
    }
  }

  return v3;
}

void *GEODirectionsResponseReadAllFrom(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 372))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"GEODirectionsResponseReadAllFrom can only be called once per object"];
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

  os_unfair_lock_lock((a1 + 376));
  v8 = a2;
  objc_sync_enter(v8);
  objc_storeStrong((a1 + 8), a2);
  *(a1 + 368) = objc_msgSend_position(v8);
  *(a1 + 372) = [v8 length];
  if (a3)
  {
    v9 = &GEODirectionsResponseReadAllFrom_recursiveTag;
  }

  else
  {
    v9 = &GEODirectionsResponseReadAllFrom_initialTag;
  }

  Specified = GEODirectionsResponseReadSpecified(a1, v8, v9);
  objc_sync_exit(v8);

  if (a3)
  {
    _GEODirectionsResponseCallReadAllRecursiveWithoutSynchronized(a1);
  }

  os_unfair_lock_unlock((a1 + 376));
  return Specified;
}

void *GEODirectionsResponseReadSpecified(uint64_t a1, void *a2, int *a3)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  os_unfair_lock_assert_owner((a1 + 376));
  [v3 setLength:*(a1 + 372)];
  [v3 seekToOffset:*(a1 + 368)];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a1 + 404);
  v12 = vdupq_n_s32(v11);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v12, xmmword_187FBEE80), v13), vandq_s8(vshlq_u32(v12, xmmword_187FBEE90), v13))) + ((v11 >> 45) & 1) + ((v11 >> 28) & 1) + ((v11 >> 20) & 1) + ((v11 >> 44) & 1) + (BYTE4(v11) & 1) + ((v11 >> 41) & 1) + ((v11 >> 21) & 1) + ((v11 >> 36) & 1) + ((v11 >> 34) & 1) + ((v11 >> 22) & 1) + ((v11 >> 17) & 1) + ((v11 >> 38) & 1) + ((v11 >> 26) & 1) + ((v11 >> 35) & 1) + ((v11 >> 18) & 1) + ((v11 >> 14) & 1) + ((v11 >> 39) & 1) + ((v11 >> 43) & 1) + ((v11 >> 42) & 1) + ((v11 >> 27) & 1) + ((v11 >> 25) & 1) + ((v11 >> 33) & 1) + (WORD1(v11) & 1) + ((v11 >> 37) & 1) + ((v11 >> 19) & 1) + ((v11 >> 40) & 1) + ((v11 >> 15) & 1) + ((v11 >> 9) & 1) + (v11 >> 31);
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

  v16 = v14 > 0x1B;
  v123 = v9;
  v124 = v16 & ~v10 | v8;
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
LABEL_428:
    v28 = 1;
    goto LABEL_429;
  }

  v125 = v17 | v8;
  v126 = (v18 == 0) | v17;
  v127 = v17;
  while (2)
  {
    if ([v3 hasError])
    {
      goto LABEL_428;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    while (1)
    {
      LOBYTE(v128) = 0;
      v23 = objc_msgSend_position(v3) + 1;
      if (v23 >= objc_msgSend_position(v3) && (v24 = objc_msgSend_position(v3) + 1, v24 <= [v3 length]))
      {
        v25 = [v3 data];
        [v25 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

        [v3 setPosition:objc_msgSend_position(v3) + 1];
      }

      else
      {
        [v3 _setError];
      }

      v22 |= (v128 & 0x7F) << v20;
      if ((v128 & 0x80) == 0)
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
    v17 = v127;
    if (v27)
    {
      goto LABEL_429;
    }

    v29 = v22 & 7;
    if (v29 == 4)
    {
      goto LABEL_429;
    }

    v30 = v22 >> 3;
    v31 = v127;
    if ((v126 & 1) == 0)
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

    if (v30 > 951)
    {
      if (v30 <= 957)
      {
        if (v30 <= 953)
        {
          if (v30 != 952)
          {
            if (v31)
            {
              if ((*(a1 + 408) & 2) != 0)
              {
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  goto LABEL_488;
                }

                v111 = *(a1 + 404) << 30;
                goto LABEL_415;
              }

              v43 = PBReaderReadString();
              v44 = 264;
              goto LABEL_328;
            }

            goto LABEL_336;
          }

          if (v31 && (*(a1 + 407) & 2) == 0)
          {
            v45 = PBReaderReadString();
            if (v45)
            {
              [(GEODirectionsResponse *)a1 _addNoFlagsInternalError:v45];
            }

LABEL_316:

            goto LABEL_337;
          }

          goto LABEL_336;
        }

        if (v30 != 954)
        {
          if (v30 == 955)
          {
            if (v31 && (*(a1 + 408) & 0x20) == 0)
            {
              v128 = 0;
              v129 = 0;
              if ((PBReaderPlaceMark() & 1) == 0)
              {
                goto LABEL_488;
              }

              v45 = objc_alloc_init(GEOTransitSuggestedRoute);
              if (!GEOTransitSuggestedRouteReadAllFrom(v45, v3, v123 & 1))
              {
                goto LABEL_487;
              }

              PBReaderRecallMark();
              [(GEODirectionsResponse *)a1 _addNoFlagsSuggestedRoute:v45];
              goto LABEL_316;
            }

LABEL_336:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_488;
            }

LABEL_337:
            if (!(v125 & 1 | (v6 != 0)))
            {
              goto LABEL_428;
            }

            v108 = objc_msgSend_position(v3);
            if (v108 >= [v3 length])
            {
              goto LABEL_428;
            }

            continue;
          }

LABEL_330:
          if ((v124 & 1) != 0 && (*(a1 + 405) & 2) == 0)
          {
            if (!*(a1 + 16))
            {
              v106 = objc_alloc_init(MEMORY[0x1E69C65D8]);
              v107 = *(a1 + 16);
              *(a1 + 16) = v106;
            }

            if (!PBUnknownFieldAdd())
            {
              v28 = 0;
              goto LABEL_430;
            }

            goto LABEL_337;
          }

          goto LABEL_336;
        }

        if (!v31)
        {
          goto LABEL_336;
        }

        if (*(a1 + 406))
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_488;
          }

          v111 = *(a1 + 404) << 47;
          goto LABEL_415;
        }

        v43 = PBReaderReadString();
        v44 = 128;
LABEL_328:
        v93 = *(a1 + v44);
        *(a1 + v44) = v43;
        goto LABEL_329;
      }

      if (v30 > 960)
      {
        if (v30 == 961)
        {
          if (!v31)
          {
            goto LABEL_336;
          }

          if (*(a1 + 409))
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_488;
            }

            v111 = *(a1 + 404) << 23;
            goto LABEL_415;
          }

          v43 = PBReaderReadString();
          v44 = 320;
          goto LABEL_328;
        }

        if (v30 != 1201)
        {
          goto LABEL_330;
        }

        if (!v31)
        {
          goto LABEL_336;
        }

        if ((*(a1 + 405) & 0x80) == 0)
        {
          v128 = 0;
          v129 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_488;
          }

          v45 = objc_alloc_init(GEOClientMetrics);
          if (!GEOClientMetricsReadAllFrom(v45, v3, v123 & 1))
          {
            goto LABEL_487;
          }

          PBReaderRecallMark();
          v46 = 120;
          goto LABEL_288;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 48;
      }

      else
      {
        if (v30 == 958)
        {
          if (v7)
          {
            v128 = 0;
            v129 = 0;
            if (!PBReaderPlaceMark() || (GEOTimepointReadAllFrom(a1 + 72, v3) & 1) == 0)
            {
              goto LABEL_488;
            }

            PBReaderRecallMark();
            v47 = 404;
            v48 = *(a1 + 404) | 1;
LABEL_321:
            *(a1 + v47) = v48;
            goto LABEL_337;
          }

          goto LABEL_336;
        }

        if (v30 != 959)
        {
          goto LABEL_330;
        }

        if (!v31)
        {
          goto LABEL_336;
        }

        if ((*(a1 + 406) & 8) == 0)
        {
          v128 = 0;
          v129 = 0;
          if ((PBReaderPlaceMark() & 1) == 0)
          {
            goto LABEL_488;
          }

          v45 = objc_alloc_init(GEOTransitDecoderData);
          if (!GEOTransitDecoderDataReadAllFrom(v45, v3, v123 & 1))
          {
            goto LABEL_487;
          }

          PBReaderRecallMark();
          v46 = 152;
          goto LABEL_288;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 44;
      }

LABEL_415:
      v6 += v111 >> 63;
      goto LABEL_337;
    }

    break;
  }

  switch(v30)
  {
    case 1:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v36 = 0;
      v37 = 0;
      v38 = 0;
      while (1)
      {
        LOBYTE(v128) = 0;
        v39 = objc_msgSend_position(v3) + 1;
        if (v39 >= objc_msgSend_position(v3) && (v40 = objc_msgSend_position(v3) + 1, v40 <= [v3 length]))
        {
          v41 = [v3 data];
          [v41 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v38 |= (v128 & 0x7F) << v36;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v26 = v37++ >= 9;
        if (v26)
        {
          v42 = 0;
          goto LABEL_345;
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

LABEL_345:
      v110 = 396;
      goto LABEL_364;
    case 2:
      if (!v31 || (*(a1 + 407) & 0x80) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEORoute);
      if (!GEORouteReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsRoute:v45];
      goto LABEL_316;
    case 3:
      if (!v31 || (*(a1 + 407) & 0x10) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOPlaceSearchResponse);
      if (!GEOPlaceSearchResponseReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsPlaceSearchResponse:v45];
      goto LABEL_316;
    case 4:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v63 = 0;
      v64 = 0;
      v65 = 0;
      *(a1 + 404) |= 8uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v66 = objc_msgSend_position(v3) + 1;
        if (v66 >= objc_msgSend_position(v3) && (v67 = objc_msgSend_position(v3) + 1, v67 <= [v3 length]))
        {
          v68 = [v3 data];
          [v68 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v65 |= (v128 & 0x7F) << v63;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v63 += 7;
        v26 = v64++ >= 9;
        if (v26)
        {
          v42 = 0;
          goto LABEL_349;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v65;
      }

LABEL_349:
      v110 = 388;
      goto LABEL_364;
    case 5:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      *(a1 + 404) |= 0x100uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v72 = objc_msgSend_position(v3) + 1;
        if (v72 >= objc_msgSend_position(v3) && (v73 = objc_msgSend_position(v3) + 1, v73 <= [v3 length]))
        {
          v74 = [v3 data];
          [v74 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v71 |= (v128 & 0x7F) << v69;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v69 += 7;
        v26 = v70++ >= 9;
        if (v26)
        {
          v62 = 0;
          goto LABEL_351;
        }
      }

      v62 = (v71 != 0) & ~[v3 hasError];
LABEL_351:
      v109 = 403;
      goto LABEL_369;
    case 6:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 406) & 0x10) == 0)
      {
        v43 = PBReaderReadData();
        v44 = 160;
        goto LABEL_328;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_488;
      }

      v111 = *(a1 + 404) << 43;
      goto LABEL_415;
    case 7:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v56 = 0;
      v57 = 0;
      v58 = 0;
      *(a1 + 404) |= 0x40uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v59 = objc_msgSend_position(v3) + 1;
        if (v59 >= objc_msgSend_position(v3) && (v60 = objc_msgSend_position(v3) + 1, v60 <= [v3 length]))
        {
          v61 = [v3 data];
          [v61 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v58 |= (v128 & 0x7F) << v56;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v56 += 7;
        v26 = v57++ >= 9;
        if (v26)
        {
          v62 = 0;
          goto LABEL_341;
        }
      }

      v62 = (v58 != 0) & ~[v3 hasError];
LABEL_341:
      v109 = 401;
      goto LABEL_369;
    case 8:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v87 = 0;
      v88 = 0;
      v89 = 0;
      *(a1 + 404) |= 2uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v90 = objc_msgSend_position(v3) + 1;
        if (v90 >= objc_msgSend_position(v3) && (v91 = objc_msgSend_position(v3) + 1, v91 <= [v3 length]))
        {
          v92 = [v3 data];
          [v92 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v89 |= (v128 & 0x7F) << v87;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v87 += 7;
        v26 = v88++ >= 9;
        if (v26)
        {
          v42 = 0;
          goto LABEL_363;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v89;
      }

LABEL_363:
      v110 = 380;
      goto LABEL_364;
    case 9:
      if (!v31 || (*(a1 + 407) & 1) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEORouteIncident);
      if (!GEORouteIncidentReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsIncidentsOnRoutes:v45];
      goto LABEL_316;
    case 10:
      if (!v31 || (*(a1 + 406) & 0x80) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEORouteIncident);
      if (!GEORouteIncidentReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsIncidentsOffRoutes:v45];
      goto LABEL_316;
    case 11:
      if (!v31 || (*(a1 + 405) & 4) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_488;
      }

      [(GEODirectionsResponse *)a1 _reserveProblemDetails:?];
      if ((GEOProblemDetailReadAllFrom(*(a1 + 24) + 12 * *(a1 + 32), v3) & 1) == 0)
      {
        goto LABEL_488;
      }

      PBReaderRecallMark();
      v47 = 32;
      v48 = *(a1 + 32) + 1;
      goto LABEL_321;
    case 13:
      if (!v31 || (*(a1 + 405) & 8) != 0)
      {
        goto LABEL_336;
      }

      if (v29 == 2)
      {
        v128 = 0;
        v129 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_488;
        }

        while (1)
        {
          v49 = objc_msgSend_position(v3);
          if (v49 >= [v3 length] || (objc_msgSend(v3, "hasError") & 1) != 0)
          {
            break;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          while (1)
          {
            v130 = 0;
            v53 = objc_msgSend_position(v3) + 1;
            if (v53 >= objc_msgSend_position(v3) && (v54 = objc_msgSend_position(v3) + 1, v54 <= [v3 length]))
            {
              v55 = [v3 data];
              [v55 getBytes:&v130 range:{objc_msgSend_position(v3), 1}];

              [v3 setPosition:objc_msgSend_position(v3) + 1];
            }

            else
            {
              [v3 _setError];
            }

            v52 |= (v130 & 0x7F) << v50;
            if ((v130 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v26 = v51++ >= 9;
            if (v26)
            {
              goto LABEL_151;
            }
          }

          [v3 hasError];
LABEL_151:
          PBRepeatedInt32Add();
        }

        PBReaderRecallMark();
      }

      else
      {
        v112 = 0;
        v113 = 0;
        v114 = 0;
        while (1)
        {
          LOBYTE(v128) = 0;
          v115 = objc_msgSend_position(v3) + 1;
          if (v115 >= objc_msgSend_position(v3) && (v116 = objc_msgSend_position(v3) + 1, v116 <= [v3 length]))
          {
            v117 = [v3 data];
            [v117 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

            [v3 setPosition:objc_msgSend_position(v3) + 1];
          }

          else
          {
            [v3 _setError];
          }

          v114 |= (v128 & 0x7F) << v112;
          if ((v128 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v26 = v113++ >= 9;
          if (v26)
          {
            goto LABEL_427;
          }
        }

        [v3 hasError];
LABEL_427:
        PBRepeatedInt32Add();
      }

LABEL_370:
      v17 = v127;
      goto LABEL_337;
    case 14:
      if (!v31 || (*(a1 + 408) & 1) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOTransitServiceGap);
      if (!GEOTransitServiceGapReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsServiceGap:v45];
      goto LABEL_316;
    case 15:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v81 = 0;
      v82 = 0;
      v83 = 0;
      *(a1 + 404) |= 0x10uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v84 = objc_msgSend_position(v3) + 1;
        if (v84 >= objc_msgSend_position(v3) && (v85 = objc_msgSend_position(v3) + 1, v85 <= [v3 length]))
        {
          v86 = [v3 data];
          [v86 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v83 |= (v128 & 0x7F) << v81;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v81 += 7;
        v26 = v82++ >= 9;
        if (v26)
        {
          v42 = 0;
          goto LABEL_359;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v83;
      }

LABEL_359:
      v110 = 392;
      goto LABEL_364;
    case 16:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 409) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 22;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOPBTransitRoutingIncidentMessage);
      if (!GEOPBTransitRoutingIncidentMessageReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 328;
      goto LABEL_288;
    case 17:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 406) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 42;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEORouteDisplayHints);
      if (!GEORouteDisplayHintsReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 168;
      goto LABEL_288;
    case 18:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 408) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 27;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOStyleAttributes);
      if (!GEOStyleAttributesReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 288;
      goto LABEL_288;
    case 19:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 408) & 4) == 0)
      {
        v43 = PBReaderReadData();
        v44 = 272;
        goto LABEL_328;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_488;
      }

      v111 = *(a1 + 404) << 29;
      goto LABEL_415;
    case 20:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 406) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 41;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOAlert);
      if (!GEOAlertReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 176;
      goto LABEL_288;
    case 21:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v75 = 0;
      v76 = 0;
      v77 = 0;
      *(a1 + 404) |= 4uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v78 = objc_msgSend_position(v3) + 1;
        if (v78 >= objc_msgSend_position(v3) && (v79 = objc_msgSend_position(v3) + 1, v79 <= [v3 length]))
        {
          v80 = [v3 data];
          [v80 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v77 |= (v128 & 0x7F) << v75;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v75 += 7;
        v26 = v76++ >= 9;
        if (v26)
        {
          v42 = 0;
          goto LABEL_355;
        }
      }

      if ([v3 hasError])
      {
        v42 = 0;
      }

      else
      {
        v42 = v77;
      }

LABEL_355:
      v110 = 384;
LABEL_364:
      *(a1 + v110) = v42;
      goto LABEL_370;
    case 22:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 406) & 2) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 46;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOPDDatasetABStatus);
      if (!GEOPDDatasetABStatusReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 136;
      goto LABEL_288;
    case 23:
      if (!v31 || (*(a1 + 408) & 0x40) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOTrafficCamera);
      if (!GEOTrafficCameraReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsTrafficCamera:v45];
      goto LABEL_316;
    case 24:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 407) & 4) == 0)
      {
        v43 = PBReaderReadData();
        v44 = 208;
        goto LABEL_328;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_488;
      }

      v111 = *(a1 + 404) << 37;
      goto LABEL_415;
    case 25:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v94 = 0;
      v95 = 0;
      v96 = 0;
      *(a1 + 404) |= 0x80uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v97 = objc_msgSend_position(v3) + 1;
        if (v97 >= objc_msgSend_position(v3) && (v98 = objc_msgSend_position(v3) + 1, v98 <= [v3 length]))
        {
          v99 = [v3 data];
          [v99 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v96 |= (v128 & 0x7F) << v94;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v94 += 7;
        v26 = v95++ >= 9;
        if (v26)
        {
          v62 = 0;
          goto LABEL_366;
        }
      }

      v62 = (v96 != 0) & ~[v3 hasError];
LABEL_366:
      v109 = 402;
      goto LABEL_369;
    case 26:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 408) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 28;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOSnapScoreMetadata);
      if (!GEOSnapScoreMetadataReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 280;
      goto LABEL_288;
    case 27:
      if ((v7 & 1) == 0)
      {
        goto LABEL_336;
      }

      v100 = 0;
      v101 = 0;
      v102 = 0;
      *(a1 + 404) |= 0x20uLL;
      while (1)
      {
        LOBYTE(v128) = 0;
        v103 = objc_msgSend_position(v3) + 1;
        if (v103 >= objc_msgSend_position(v3) && (v104 = objc_msgSend_position(v3) + 1, v104 <= [v3 length]))
        {
          v105 = [v3 data];
          [v105 getBytes:&v128 range:{objc_msgSend_position(v3), 1}];

          [v3 setPosition:objc_msgSend_position(v3) + 1];
        }

        else
        {
          [v3 _setError];
        }

        v102 |= (v128 & 0x7F) << v100;
        if ((v128 & 0x80) == 0)
        {
          break;
        }

        v100 += 7;
        v26 = v101++ >= 9;
        if (v26)
        {
          v62 = 0;
          goto LABEL_368;
        }
      }

      v62 = (v102 != 0) & ~[v3 hasError];
LABEL_368:
      v109 = 400;
LABEL_369:
      *(a1 + v109) = v62;
      goto LABEL_370;
    case 29:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 406) & 4) == 0)
      {
        v43 = PBReaderReadString();
        v44 = 144;
        goto LABEL_328;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_488;
      }

      v111 = *(a1 + 404) << 45;
      goto LABEL_415;
    case 30:
      if (!v31 || (*(a1 + 405) & 0x40) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOArrivalParameters);
      if (!GEOArrivalParametersReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsArrivalParameters:v45];
      goto LABEL_316;
    case 31:
      if (!v31 || (*(a1 + 408) & 0x80) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOTrafficSignal);
      if (!GEOTrafficSignalReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsTrafficSignal:v45];
      goto LABEL_316;
    case 32:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 409) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 20;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOTransitRouteUpdateConfiguration);
      if (!GEOTransitRouteUpdateConfigurationReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 344;
      goto LABEL_288;
    case 33:
      if (!v31 || (*(a1 + 409) & 0x20) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOWaypointRoute);
      if (!GEOWaypointRouteReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsWaypointRoute:v45];
      goto LABEL_316;
    case 34:
      if (!v31 || (*(a1 + 409) & 4) != 0)
      {
        goto LABEL_336;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOPBTransitPaymentMethodSuggestion);
      if (!GEOPBTransitPaymentMethodSuggestionReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      [(GEODirectionsResponse *)a1 _addNoFlagsTransitPaymentMethodSuggestion:v45];
      goto LABEL_316;
    case 35:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 405) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 50;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEODirectionsRequestResponseAnalyticsData);
      if (!GEODirectionsRequestResponseAnalyticsDataReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 104;
      goto LABEL_288;
    case 36:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 409) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 19;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOUUID);
      if (!GEOUUIDReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 352;
      goto LABEL_288;
    case 37:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 405) & 0x10) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 51;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOAdvisoriesInfo);
      if (GEOAdvisoriesInfoReadAllFrom(v45, v3, v123 & 1))
      {
        PBReaderRecallMark();
        v46 = 96;
LABEL_288:
        v93 = *(a1 + v46);
        *(a1 + v46) = v45;
LABEL_329:

        --v6;
        goto LABEL_337;
      }

LABEL_487:

LABEL_488:
      v28 = 0;
LABEL_429:
      if (v124)
      {
LABEL_430:
        *(a1 + 404) |= 0x200uLL;
      }

      if (v17 & 1 | ((v28 & 1) == 0))
      {
        *(a1 + 404) |= 0x3FFFFFFFFC00uLL;
        goto LABEL_481;
      }

      if (v18)
      {
        while (1)
        {
          v119 = *v18++;
          v118 = v119;
          if (v119 <= 951)
          {
            v120 = 0x80000000;
            switch(v118)
            {
              case 0:
                goto LABEL_481;
              case 2:
                goto LABEL_480;
              case 3:
                v120 = 0x10000000;
                goto LABEL_480;
              case 6:
                v120 = 0x100000;
                goto LABEL_480;
              case 9:
                v120 = 0x1000000;
                goto LABEL_480;
              case 10:
                v120 = 0x800000;
                goto LABEL_480;
              case 11:
                v120 = 1024;
                goto LABEL_480;
              case 13:
                v120 = 2048;
                goto LABEL_480;
              case 14:
                v120 = 0x100000000;
                goto LABEL_480;
              case 16:
                v120 = 0x20000000000;
                goto LABEL_480;
              case 17:
                v120 = 0x200000;
                goto LABEL_480;
              case 18:
                v120 = 0x1000000000;
                goto LABEL_480;
              case 19:
                v120 = 0x400000000;
                goto LABEL_480;
              case 20:
                v120 = 0x400000;
                goto LABEL_480;
              case 22:
                v120 = 0x20000;
                goto LABEL_480;
              case 23:
                v120 = 0x4000000000;
                goto LABEL_480;
              case 24:
                v120 = 0x4000000;
                goto LABEL_480;
              case 26:
                v120 = 0x800000000;
                goto LABEL_480;
              case 29:
                v120 = 0x40000;
                goto LABEL_480;
              case 30:
                v120 = 0x4000;
                goto LABEL_480;
              case 31:
                v120 = 0x8000000000;
                goto LABEL_480;
              case 32:
                v120 = 0x80000000000;
                goto LABEL_480;
              case 33:
                v120 = 0x200000000000;
                goto LABEL_480;
              case 34:
                v120 = 0x40000000000;
                goto LABEL_480;
              case 35:
                v120 = 0x2000;
                goto LABEL_480;
              case 36:
                v120 = 0x100000000000;
                goto LABEL_480;
              case 37:
                v120 = 4096;
                goto LABEL_480;
              case 38:
                v120 = 0x40000000;
                goto LABEL_480;
              case 39:
                v120 = 0x8000000;
                goto LABEL_480;
              case 40:
                v120 = 0x20000000;
                goto LABEL_480;
              default:
                continue;
            }

            break;
          }

          if (v118 <= 954)
          {
            switch(v118)
            {
              case 952:
                v120 = 0x2000000;
                break;
              case 953:
                v120 = 0x200000000;
                break;
              case 954:
                v120 = 0x10000;
                break;
              default:
                continue;
            }
          }

          else if (v118 > 960)
          {
            if (v118 == 961)
            {
              v120 = 0x10000000000;
            }

            else
            {
              if (v118 != 1201)
              {
                continue;
              }

              v120 = 0x8000;
            }
          }

          else if (v118 == 955)
          {
            v120 = 0x2000000000;
          }

          else
          {
            if (v118 != 959)
            {
              continue;
            }

            v120 = 0x80000;
          }

LABEL_480:
          *(a1 + 404) |= v120;
        }
      }

LABEL_481:
      if (v28)
      {
        v3 = ([v3 hasError] ^ 1);
        if ((v17 & 1) == 0)
        {
          return v3;
        }

LABEL_485:
        v121 = *(a1 + 8);
        *(a1 + 8) = 0;
      }

      else
      {
        v3 = 0;
        if (v17)
        {
          goto LABEL_485;
        }
      }

      return v3;
    case 38:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 407) & 0x40) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 33;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOCommonResponseAttributes);
      if (!GEOCommonResponseAttributesReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 240;
      goto LABEL_288;
    case 39:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 407) & 8) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 36;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEOTrafficBannerText);
      if (!GEOTrafficBannerTextReadAllFrom(v45, v3, v123 & 1))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 216;
      goto LABEL_288;
    case 40:
      if (!v31)
      {
        goto LABEL_336;
      }

      if ((*(a1 + 407) & 0x20) != 0)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_488;
        }

        v111 = *(a1 + 404) << 34;
        goto LABEL_415;
      }

      v128 = 0;
      v129 = 0;
      if ((PBReaderPlaceMark() & 1) == 0)
      {
        goto LABEL_488;
      }

      v45 = objc_alloc_init(GEODirectionsRequestResponseAnalyticsData);
      if (!GEODirectionsRequestResponseAnalyticsDataReadAllFrom(v45, v3))
      {
        goto LABEL_487;
      }

      PBReaderRecallMark();
      v46 = 232;
      goto LABEL_288;
    default:
      goto LABEL_330;
  }
}

void *MapsFeature_IsEnabled_MoreReportTypes()
{
  result = GEOConfigGetBOOL(22, &MapsFeaturesConfig_EnableMoreReportTypes_Metadata);
  if (result)
  {

    return GEOIsFeatureActive(@"MapsLuck");
  }

  return result;
}

uint64_t _GEOComposedWaypointCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 80) readAll:1];
  [*(a1 + 32) readAll:1];
  [*(a1 + 48) readAll:1];
  v2 = *(a1 + 40);

  return [v2 readAll:1];
}

uint64_t _GEOWaypointTypedCallReadAllRecursiveWithoutSynchronized(uint64_t a1)
{
  [*(a1 + 32) readAll:1];
  [*(a1 + 56) readAll:1];
  [*(a1 + 40) readAll:1];
  v2 = *(a1 + 48);

  return [v2 readAll:1];
}

id GEOGetAlmanacLog(void)
{
  if (GEOGetAlmanacLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetAlmanacLog(void)::onceToken, &__block_literal_global_151792);
  }

  v1 = GEOGetAlmanacLog(void)::log;

  return v1;
}

void _GEORiseTransitSetEvent::_GEORiseTransitSetEvent(_GEORiseTransitSetEvent *this, GEORiseTransitSet *a2, unsigned int a3)
{
  v5 = GEORiseTransitSet::eventOfType(a2, a3);
  this->JD = v5;
  this->type = a3;
  if (v5 <= -10.0)
  {
    v6 = GEOGetAlmanacLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_18660C000, v6, OS_LOG_TYPE_FAULT, "umm, what?", v7, 2u);
    }
  }
}

uint64_t std::__tree<_GEORiseTransitSetEvent,_GEORiseTransitSetEventIsLessThan,std::allocator<_GEORiseTransitSetEvent>>::__emplace_unique_key_args<_GEORiseTransitSetEvent,_GEORiseTransitSetEvent const&>(uint64_t **a1, uint64_t a2, _OWORD *a3, double a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = a2;
  while (1)
  {
    while (1)
    {
      v7 = v4;
      v8 = *(v4 + 4);
      v9 = *(v4 + 10);
      if (!_GEORiseTransitSetEventIsLessThan::operator()(v5, v9, a4, v8))
      {
        break;
      }

      v4 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (!_GEORiseTransitSetEventIsLessThan::operator()(v9, v5, v8, a4))
    {
      return 0;
    }

    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

BOOL _GEORiseTransitSetEventIsLessThan::operator()(int a1, int a2, double a3, double a4)
{
  if (a1 == a2 && vabdd_f64(a3, a4) < 0.007)
  {
    return 0;
  }

  if (a3 != a4)
  {
    return a3 < a4;
  }

  v6 = GEOSolarEventTypeToOrdinal(a1);
  return v6 < GEOSolarEventTypeToOrdinal(a2);
}