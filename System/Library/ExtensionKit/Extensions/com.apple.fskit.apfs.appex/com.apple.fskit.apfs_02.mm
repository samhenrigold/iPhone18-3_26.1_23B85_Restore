void *spaceman_free_queue_trim_list_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 1538) = 256;
  *(a2 + 1542) = 0;
  result = _apfs_calloc_typed(0x100uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 1544) = result;
  if (!result)
  {
    *(a2 + 1538) = 0;
  }

  return result;
}

uint64_t spaceman_alloc(char *a1, int a2, uint64_t a3, uint64_t a4, unint64_t *a5, int64_t *a6)
{
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v132 = 0u;
  v149 = 0;
  v130 = 0;
  v11 = 0;
  v12 = a1;
  if (obj_type(a1) == 13)
  {
    v12 = *(a1 + 49);
    v11 = a1;
  }

  BYTE8(v146) = a6 != 0;
  BYTE9(v146) = 1;
  if (a6)
  {
    v13 = a2 | 0x1000;
  }

  else
  {
    v13 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v145) = v13;
  LODWORD(v146) = 0;
  v14 = *(v12 + 47);
  v15 = *(v14 + 1240);
  v16 = a3;
  v138.i64[0] = a3;
  *&v140 = v15;
  v17 = *(v14 + 1248);
  *(&v140 + 1) = v17 + v15;
  if (!v17)
  {
    v140 = 0uLL;
  }

  DWORD1(v146) = 0;
  v18 = *(v12 + 128);
  v19 = v18 + *(v12 + 127);
  *&v139 = *(v12 + 127);
  *(&v139 + 1) = v19;
  if ((v12[634] & 1) != 0 || !v18)
  {
    v139 = 0uLL;
    if ((v13 & 0x80) == 0)
    {
LABEL_11:
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v13 |= 0x8100u;
  DWORD2(v145) = v13;
  if ((v13 & 0x200) == 0)
  {
LABEL_12:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v13 |= 0x102u;
  DWORD2(v145) = v13;
  *a5 = *(v12 + 129);
  if ((v13 & 0x400) != 0)
  {
LABEL_13:
    v13 |= 0x100u;
    DWORD2(v145) = v13;
  }

LABEL_14:
  if (v12[637] == 1)
  {
    v13 |= 0x900u;
    DWORD2(v145) = v13;
  }

  if ((v13 & 2) != 0)
  {
    v13 &= ~0x40u;
    DWORD2(v145) = v13;
    v120 = *a5;
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v120 = 0;
    if ((v13 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v146) = 1;
      v20 = *a5;
      goto LABEL_25;
    }
  }

  v20 = 3;
LABEL_25:
  v125 = v20;
  v126 = v13;
  *a5 = 0;
  if ((v13 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v21 = 22;
    if (!xid_is_current_tx(v12, a4) || a3 < 1)
    {
      return v21;
    }
  }

  v148 = 0;
  memset(v131, 0, sizeof(v131));
  v21 = spaceman_get(v12, &v148);
  if (v21)
  {
    return v21;
  }

  v22 = v148;
  v118 = v148[47];
  v23 = v148[199];
  if (v23)
  {
    v24 = v138.i64[0];
    v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v25.i64[1] = v138.i64[0];
    *v23 = vaddq_s64(*v23, v25);
    if (BYTE11(v146) == 1)
    {
      ++v23[1].i64[0];
      goto LABEL_34;
    }

    if (v24 > 2)
    {
      if (v24 == 4)
      {
        v26 = 7;
      }

      else
      {
        if (v24 != 3)
        {
LABEL_34:
          if (v24 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v26 = 6;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v27 = 2;
LABEL_48:
        ++v23[v27].i64[0];
        goto LABEL_49;
      }

      if (v24 != 2)
      {
        goto LABEL_34;
      }

      v26 = 5;
    }

    ++v23->i64[v26];
LABEL_46:
    if (BYTE8(v146))
    {
      goto LABEL_49;
    }

    v27 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v28 = DWORD2(v145);
  if ((WORD4(v145) & 0x200) != 0)
  {
    v29 = *(v118 + 48 * DWORD1(v146) + 48);
    *&v139 = *(&v139 + 1);
    *(&v139 + 1) = v29;
  }

  if ((BYTE8(v146) & 1) == 0 && v138.i64[0] >= *(v118 + 96) + *(v118 + 48))
  {
    v21 = 28;
LABEL_301:
    v103 = v148;
    v104 = v148[199];
    if (v104)
    {
      ++*(v104 + 72);
    }

    obj_release(v103);
    return v21;
  }

  if ((BYTE8(v145) & 2) != 0 && v120 >= *(v118 + 48))
  {
    v28 = DWORD2(v145) & 0xFFFFFFFD;
    DWORD2(v145) &= ~2u;
  }

  if ((v28 & 0x1A) == 2)
  {
    v28 |= 8u;
    DWORD2(v145) = v28;
  }

  v21 = sub_10001AA14(v22, v28, &v149, &v130, (*(*(v12 + 47) + 48) >> 1) & 1);
  if (v21)
  {
    goto LABEL_301;
  }

  pthread_mutex_lock(v148 + 6);
  if (BYTE11(v146) & 1) != 0 || (BYTE9(v145))
  {
    BYTE9(v146) = 0;
  }

  v117 = v11;
  v119 = a4;
  v113 = a5;
  if (!v148[187])
  {
    DWORD2(v145) |= 0x100u;
  }

  v30 = 0;
  v116 = a1 + 4048;
  v31 = v118 + 48;
  v114 = 2;
  v115 = 0;
LABEL_65:
  v121 = v130;
  v32 = v115;
  while (2)
  {
    v115 = v32;
    v33 = v30;
    v34 = v126;
    while (1)
    {
      do
      {
        while (1)
        {
          v30 = v33;
          if (v121 > v33)
          {
            goto LABEL_77;
          }

          if (BYTE9(v146) == 1)
          {
            BYTE9(v146) = 0;
            if (!v139)
            {
              v30 = 0;
              goto LABEL_77;
            }
          }

          else if (!v139)
          {
            goto LABEL_299;
          }

          if ((BYTE9(v145) & 2) == 0)
          {
            v35 = obj_type(a1);
            v36 = a1 + 4048;
            if (v35 != 13)
            {
              v36 = (*(a1 + 48) + 212);
            }

            log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v36);
            v12[634] = 1;
            *(v12 + 131) = 0;
          }

          v30 = 0;
          v139 = 0uLL;
LABEL_77:
          v37 = *(&v149 + v30);
          HIDWORD(v145) = v37;
          v33 = (v30 + 1);
          BYTE12(v146) = 0;
          v39 = v37 == DWORD1(v146) && *(&v139 + 1) != 0;
          BYTE10(v146) = v39;
          v138 = v16;
          if ((v34 & 4) != 0)
          {
            v40 = v16;
            goto LABEL_85;
          }

          v44 = DWORD2(v145);
          v45 = v148;
          if (BYTE8(v145))
          {
            v47 = &v148[v37];
            if ((BYTE8(v145) & 0x40) != 0)
            {
              v49 = v47[106];
              v40 = v16;
              if (v49 >= v16)
              {
                goto LABEL_85;
              }

              obj_type(a1);
              log_err("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v48 = v47[104] - v47[106];
              v40 = v16;
              if (v48 >= v16)
              {
                goto LABEL_85;
              }

              obj_type(a1);
              log_err("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_299:
            v21 = 28;
            goto LABEL_300;
          }

          if ((DWORD2(v145) & 0x30000) == 0)
          {
            spaceman_entitled_reserve_active(v12, v148);
            v45 = v148;
            LODWORD(v37) = HIDWORD(v145);
            v44 = DWORD2(v145);
          }

          v46 = sub_10001AAEC(v12, v117, v45, v37, v44, v138.i64, v119);
          if (v46 != 7)
          {
            break;
          }

          v34 = v126;
          if (v121 <= (v30 + 1))
          {
            BYTE9(v146) = 0;
          }

          if (v148[HIDWORD(v145) + 197] && (HIBYTE(v146) & 1) != 0)
          {
            sub_1000A466C();
          }
        }

        v21 = v46;
        if (v46)
        {
          goto LABEL_300;
        }

        LODWORD(v37) = HIDWORD(v145);
        v40 = v138.i64[0];
        v34 = v126;
LABEL_85:
        v122 = v148[13 * v37 + 139] & BYTE11(v146);
        v123 = 0;
        if (v122)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0;
          if ((v40 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            v41 = v40 - 1;
            v42 = &v148[17 * v37 + 153];
            if (LOBYTE(v42[4 * v41 + 3]) == 1)
            {
              v123 = 1;
              if ((BYTE9(v145) & 1) == 0)
              {
                BYTE12(v146) = 1;
                metazone_alloc_index = v42[4 * v41];
LABEL_103:
                *(&v142 + 1) = metazone_alloc_index;
                goto LABEL_118;
              }
            }

            else
            {
              v123 = 0;
            }
          }
        }

        if (((v148[13 * v37 + 139] & BYTE11(v146)) & (v125 < 3)) == 1)
        {
          metazone_alloc_index = spaceman_get_metazone_alloc_index(v148, v37, v125);
          goto LABEL_103;
        }

        if (v37 || (BYTE8(v145) & 2) == 0)
        {
          if ((WORD4(v145) & 0x800) == 0)
          {
            metazone_alloc_index = v148[v37 + 125];
            goto LABEL_103;
          }

          metazone_alloc_index = 0;
          *(&v142 + 1) = 0;
        }

        else
        {
          metazone_alloc_index = v120;
          v138.i64[1] = v120;
          *(&v142 + 1) = v120;
        }

        DWORD2(v145) |= 0x4000u;
LABEL_118:
        if (BYTE12(v146))
        {
          v50 = v148;
          v51 = HIDWORD(v145);
          if ((BYTE9(v145) & 1) != 0 || v138.i64[0] <= (*(v148[HIDWORD(v145) + 187] + 4 * (metazone_alloc_index / *(v118 + 36))) & 0xFFFFFFu))
          {
            v52 = 1;
          }

          else
          {
            v52 = 0;
            BYTE12(v146) = 0;
          }
        }

        else
        {
          v52 = 0;
          v50 = v148;
          v51 = HIDWORD(v145);
        }

        BYTE14(v146) = 0;
        v141 = 0uLL;
        v143 = 0uLL;
        *(&v144 + 1) = 0;
        *&v145 = 0;
        v53 = v50[v51 + 197];
        v54 = BYTE11(v146);
        if (!v53 || (BYTE11(v146) & 1) != 0 || (v52 & 1) != 0)
        {
          goto LABEL_150;
        }

        if ((WORD4(v145) & 0x8400) != 0)
        {
          goto LABEL_151;
        }

        v141 = vextq_s8(v138, v138, 8uLL);
        BYTE14(v146) = 1;
        if (BYTE9(v146))
        {
          v55 = DWORD2(v145) | 0x2000u;
        }

        else
        {
          v55 = DWORD2(v145) & 0xFFFF5BFF;
        }

        DWORD2(v145) = v55;
        v56 = spaceman_free_extent_cache_search(v53, v55, v141.i64, &v141.u64[1]);
      }

      while (v56 == 28);
      v57 = v141.u64[1];
      v58 = v141.i64[0];
      if (v141.i64[1] && !v141.i64[0])
      {
        v141 = 0uLL;
        v57 = 0;
      }

      v51 = HIDWORD(v145);
      if (v114 == HIDWORD(v145))
      {
        v59 = 0;
      }

      else
      {
        v59 = 3;
      }

      if (v56 != 3)
      {
        v59 = v56;
      }

      if (v59 == 3)
      {
        v128 = 0u;
        v129 = 0u;
        v127 = 0u;
        *&v127 = v148[HIDWORD(v145) + 197];
        *(&v127 + 1) = v138.i64[0];
        *&v128 = v57;
        *(&v128 + 1) = spaceman_free_extent_cache_search_better_length(SWORD4(v145), v138.u64[0], v57);
        *&v129 = 0;
        *(&v129 + 1) = DWORD2(v145);
        v81 = v148;
        v82 = &v148[HIDWORD(v145)];
        v83 = v82 + 102;
        v84 = v82[102];
        if ((v84 & 0x10) != 0)
        {
          v85 = v82[102];
          do
          {
            *v83 = v85 | 0x20;
            cv_wait(v81 + 16, v81 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v81 = v148;
            v86 = &v148[HIDWORD(v145)];
            v83 = v86 + 102;
            v85 = v86[102];
          }

          while ((v85 & 0x10) != 0);
          *v83 = v85 | 0x10;
          if ((v84 & 0x10) == 0 || *(v86[197] + 128) < *(&v128 + 1))
          {
            goto LABEL_254;
          }

          v21 = 0;
        }

        else
        {
          *v83 = v84 | 0x10;
LABEL_254:
          pthread_mutex_unlock(v81 + 6);
          v114 = HIDWORD(v145);
          if (HIDWORD(v145) == 1)
          {
            v87 = 42;
          }

          else
          {
            v87 = 38;
          }

          v88 = spaceman_iterate_free_extents_internal(v12, v87, 0, sub_10001AE40, &v127);
          pthread_mutex_lock(v148 + 6);
          if (v88 == 34 || v88 == 37)
          {
            v90 = 0;
          }

          else
          {
            v90 = v88;
          }

          if (v88 == HIDWORD(v129))
          {
            v21 = v90;
          }

          else
          {
            v21 = v88;
          }
        }

        v16 = a3;
        v141 = 0uLL;
        v91 = v148;
        v92 = HIDWORD(v145);
        v93 = v148[HIDWORD(v145) + 102];
        if ((v93 & 0x20) != 0)
        {
          cv_wakeup(v148 + 16);
          v91 = v148;
          v92 = HIDWORD(v145);
          v93 = v148[HIDWORD(v145) + 102];
        }

        v91[v92 + 102] = v93 & 0xFFFFFFFFFFFFFFCFLL;
        if (v21)
        {
LABEL_300:
          pthread_mutex_unlock(v148 + 6);
          goto LABEL_301;
        }

        goto LABEL_65;
      }

      if (!v59 && v57 && v58)
      {
        *(&v144 + 1) = v58;
        *&v145 = v57;
        if (BYTE10(v146) != 1)
        {
          goto LABEL_148;
        }

        v21 = 0;
        if ((BYTE9(v145) & 2) == 0 && v58 < *(&v139 + 1))
        {
          if ((v57 + v58) < v139)
          {
LABEL_148:
            v21 = 0;
            goto LABEL_212;
          }

          v73 = obj_type(a1);
          v74 = a1 + 4048;
          if (v73 != 13)
          {
            v74 = (*(a1 + 48) + 212);
          }

          log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v74);
          v21 = 0;
          v12[634] = 1;
          *(v12 + 131) = 0;
        }

        goto LABEL_212;
      }

      DWORD2(v145) |= 0x100u;
      v54 = BYTE11(v146);
LABEL_150:
      if ((v54 & 1) == 0)
      {
LABEL_151:
        if ((BYTE12(v146) & 1) == 0 && v148[v51 + 187] && (BYTE9(v145) & 1) == 0)
        {
          *&v132 = *(&v142 + 1);
          *(&v132 + 1) = v138.i64[0];
          LOBYTE(v133) = BYTE9(v146);
          BYTE8(v134) = BYTE8(v146) ^ 1;
          *(&v133 + 1) = 0;
          *&v134 = 0;
          if (BYTE10(v146) == 1)
          {
            *(&v133 + 1) = v139;
            *&v134 = *(&v139 + 1) - v139;
          }

          sub_10001AEB8(v148, v51, &v132, &v135);
          if (v60)
          {
            v61 = v60;
            BYTE9(v146) = 0;
            if (v60 != 28)
            {
              if (obj_type(a1) == 13)
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v116, v61);
              }

              else
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (*(a1 + 48) + 212), v61);
              }
            }
          }

          else
          {
            BYTE13(v146) = 1;
            BYTE9(v146) = v136;
            *(&v142 + 1) = v135;
            if (BYTE8(v146) == 1)
            {
              v138.i64[0] = *(&v135 + 1);
            }
          }

          v16 = a3;
          if ((BYTE9(v146) & 1) == 0 && BYTE10(v146) == 1)
          {
            if ((BYTE9(v145) & 2) == 0)
            {
              v12[634] = 1;
              *(v12 + 131) = 0;
            }

            v139 = 0uLL;
          }
        }

        goto LABEL_172;
      }

      do
      {
LABEL_172:
        v62 = HIDWORD(v145);
        if (HIDWORD(v145) == v146 && *(&v142 + 1) >= v140 && *(&v142 + 1) < *(&v140 + 1))
        {
          *(&v142 + 1) = *(&v140 + 1);
          if ((BYTE14(v146) & 1) == 0 && HIDWORD(v145) == DWORD1(v146) && *(&v140 + 1) >= v139 && *(&v140 + 1) < *(&v139 + 1))
          {
            *(&v142 + 1) = *(&v139 + 1);
          }
        }

        if ((BYTE14(v146) & 1) == 0 && HIDWORD(v145) == DWORD1(v146) && *(&v142 + 1) >= v139 && *(&v142 + 1) < *(&v139 + 1))
        {
          *(&v142 + 1) = *(&v139 + 1);
          if (HIDWORD(v145) == v146 && *(&v139 + 1) >= v140 && *(&v139 + 1) < *(&v140 + 1))
          {
            *(&v142 + 1) = *(&v140 + 1);
          }
        }

        v63 = v148[HIDWORD(v145) + 197];
        if (v63)
        {
          if (BYTE14(v146))
          {
            v64 = &v142 + 1;
          }

          else
          {
            v64 = 0;
          }

          HIBYTE(v146) = spaceman_free_extent_cache_bitmap_scan_begin(v63, v64);
          LOBYTE(v147) = 0;
          v62 = HIDWORD(v145);
        }

        else
        {
          HIBYTE(v146) = 0;
        }

        v65 = *(&v142 + 1);
        if (*(&v142 + 1) >= *(v31 + 48 * v62))
        {
          v65 = 0;
          *(&v142 + 1) = 0;
        }

        *&v142 = v65;
        v66 = sub_10001B2C0(a1, v12, v148, &v135);
      }

      while (v66 == 3);
      v21 = v66;
      if ((v147 & 0x100) != 0)
      {
        if (!HIBYTE(v146))
        {
          goto LABEL_212;
        }

        v67 = BYTE14(v146) == 1 ? *(v148[47] + 48 * HIDWORD(v145) + 48) : 0;
        v69 = v148[HIDWORD(v145) + 197];
        v70 = 1;
      }

      else
      {
        if (!HIBYTE(v146))
        {
          goto LABEL_212;
        }

        if (BYTE14(v146) == 1)
        {
          v67 = v142;
          if (!v66 && v142 > *(&v142 + 1))
          {
            v68 = *(&v143 + 1) || !v145 ? v144 + *(&v143 + 1) + v143 : *(&v144 + 1) + v145;
            if (v142 <= v68)
            {
              v67 = v68;
            }
          }
        }

        else
        {
          v67 = 0;
        }

        v69 = v148[HIDWORD(v145) + 197];
        v70 = 0;
      }

      spaceman_free_extent_cache_bitmap_scan_finished(v69, v67, v70);
      HIBYTE(v146) = 0;
LABEL_212:
      v71 = v30;
      v72 = *(&v143 + 1);
      if (*(&v143 + 1))
      {
        if (v21)
        {
          goto LABEL_290;
        }

        v75 = v143 + v144;
        goto LABEL_235;
      }

      v72 = v145;
      if (v21 || v145)
      {
        break;
      }

      if (BYTE1(v147) != 1)
      {
        v72 = 0;
        v75 = 0;
        goto LABEL_235;
      }

      v34 = v126;
      if ((v126 & 4) == 0)
      {
        pthread_mutex_unlock(v148 + 6);
        pthread_mutex_lock(v148 + 8);
        sub_100015E54(v12, v131, 0, 0);
        if (sub_100015F48(v12, v148, (HIDWORD(v145) + 1), 1, v131, v119))
        {
          v33 = v71;
        }

        else
        {
          v33 = v33;
        }

        sub_100016780(v12, v131);
        pthread_mutex_unlock(v148 + 8);
        pthread_mutex_lock(v148 + 6);
      }

      if (v148[HIDWORD(v145) + 197] && (HIBYTE(v146) & 1) != 0)
      {
        sub_1000A4698();
      }
    }

    if (v145)
    {
      v75 = *(&v144 + 1);
    }

    else
    {
      v75 = 0;
    }

    if (v21)
    {
      goto LABEL_290;
    }

LABEL_235:
    v76 = spaceman_extent_check(v12, v148, v75, v72);
    if (!v76)
    {
      v77 = v75 + v72;
      if (v75 + v72 >= *(v31 + 48 * HIDWORD(v145)))
      {
        v77 = 0;
      }

      *&v142 = v77;
      if ((v126 & 4) != 0 || v72 < 1)
      {
        goto LABEL_272;
      }

      if (v12[627])
      {
        v21 = 30;
        goto LABEL_300;
      }

      v78 = obj_modify(v148, 0, v119);
      if (v78)
      {
        v21 = v78;
        goto LABEL_300;
      }

      v21 = sub_10001C358(v12, v117, v148, v75, v72, v119, 0, SDWORD2(v145));
      spaceman_free_extent_cache_remove(v148[HIDWORD(v145) + 197], v75, v72);
      if (!v21)
      {
LABEL_272:
        v94 = v113;
        *v113 = v75;
        v95 = a6;
        if (a6)
        {
          *a6 = v72;
        }

        v96 = v148;
        v97 = v148[199];
        if (v97)
        {
          v97[10] += v72;
          if (v72 < a3)
          {
            ++v97[11];
          }
        }

        if (BYTE12(v146) == 1)
        {
          if ((v123 & 1) == 0)
          {
            sub_1000A46C4();
          }

          if (v97)
          {
            ++v97[3];
          }

          if ((*(v96[HIDWORD(v145) + 187] + 4 * (v96[17 * HIDWORD(v145) + 153 + 4 * v41] / *(v118 + 36))) & 0xFFFFFFu) <= v41)
          {
            new_chunk_for_allocation_zone = spaceman_get_new_chunk_for_allocation_zone(v12, v96, HIDWORD(v145), v41);
            if (new_chunk_for_allocation_zone)
            {
              if (new_chunk_for_allocation_zone != 28)
              {
                obj_type(a1);
                log_err("%s:%d: %s failed to update chunk for alloc zone %d: %d\n");
              }
            }
          }
        }

        else if ((WORD4(v145) & 0x200) != 0)
        {
          v106 = *(v12 + 127);
          if (HIDWORD(v145) || v142 < v106 || v142 >= *(v12 + 128) + v106)
          {
            *(v12 + 129) = v106;
          }

          else
          {
            *(v12 + 129) = v142;
          }
        }

        else
        {
          v102 = HIDWORD(v145);
          if ((WORD4(v145) & 0x142) == 0 || HIDWORD(v145))
          {
            v107 = v142;
            v96[HIDWORD(v145) + 125] = v142;
            if (BYTE9(v146) == 1 && spaceman_should_avoid_data_allocation_at_block(v96, v102, v107, 5))
            {
              *&v132 = v142;
              *(&v132 + 1) = 1;
              LOBYTE(v133) = 1;
              BYTE8(v134) = 1;
              *(&v133 + 1) = 0;
              *&v134 = 0;
              sub_10001AEB8(v148, HIDWORD(v145), &v132, &v135);
              if (v108)
              {
                if (v108 != 28)
                {
                  obj_type(a1);
                  log_err("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
                }
              }

              else if (*(&v135 + 1) >= 1)
              {
                v148[HIDWORD(v145) + 125] = v135;
              }
            }
          }

          else if (v122)
          {
            spaceman_update_metazone_alloc_index(v96, 0, v125, v142);
          }
        }

        pthread_mutex_unlock(v148 + 6);
        goto LABEL_316;
      }

      v79 = obj_type(a1);
      v80 = a1 + 4048;
      if (v79 != 13)
      {
        v80 = (*(a1 + 48) + 212);
      }

      log_err("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v80, v75, v72, v21);
      if (BYTE14(v146) != 1)
      {
        goto LABEL_300;
      }

      spaceman_free_extent_cache_reset(v148[HIDWORD(v145) + 197]);
      v32 = 1;
      v16 = a3;
      v30 = v71;
      if (v115)
      {
        goto LABEL_300;
      }

      continue;
    }

    break;
  }

  v99 = v76;
  if (nx_ratelimit_log_allowed(*(*a1 + 392)))
  {
    v100 = obj_type(a1);
    v101 = a1 + 4048;
    if (v100 != 13)
    {
      v101 = (*(a1 + 48) + 212);
    }

    log_err("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v101, v75, v72, v99);
  }

  v21 = nx_corruption_detected_int(v12);
LABEL_290:
  pthread_mutex_unlock(v148 + 6);
  v94 = v113;
  v95 = a6;
  if (v21)
  {
    goto LABEL_301;
  }

LABEL_316:
  obj_release(v148);
  if ((BYTE8(v145) & 4) != 0)
  {
    return 0;
  }

  v21 = 0;
  if ((WORD4(v145) & 0x200) != 0)
  {
    return v21;
  }

  v109 = *(v12 + 128);
  if (!v109)
  {
    return v21;
  }

  v110 = *(v12 + 127);
  if (*v94 >= v110 && *v94 < v110 + v109)
  {
    return 0;
  }

  if (v12[634] == 1)
  {
    v111 = &v138;
    if (v95)
    {
      v111 = v95;
    }

    v112 = *(v12 + 131) + v111->i64[0];
    *(v12 + 131) = v112;
    if (v112 >= 0x401)
    {
      if (obj_type(a1) != 13)
      {
        v116 = (*(a1 + 48) + 212);
      }

      log_debug("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v116);
      v21 = 0;
      v12[634] = 0;
      return v21;
    }

    return 0;
  }

  if (!v95 || 10000 * *v95 >= v138.i64[0] || *v95 * *(*(v12 + 47) + 36) >= 0x40000)
  {
    return 0;
  }

  if (obj_type(a1) != 13)
  {
    v116 = (*(a1 + 48) + 212);
  }

  log_debug("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v116, v138.i64[0], *v95);
  v21 = 0;
  v12[634] = 1;
  *(v12 + 131) = 0;
  return v21;
}

uint64_t sub_10001AA14(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
{
  if ((~a2 & 0x38) == 0)
  {
    panic("Absurd combination of allocation flags for spaceman %llx", a1);
  }

  if (*(*(a1 + 376) + 96))
  {
    v5 = a2 & 0x20;
    v6 = (a2 >> 3) & 3;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      *a3 = &_mh_execute_header;
      goto LABEL_11;
    }

    *a3 = 1;
    v5 |= a5;
LABEL_11:
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_14;
  }

  if ((a2 & 0x10) == 0)
  {
    *a3 = 0;
    v7 = 1;
LABEL_14:
    result = 0;
    *a4 = v7;
    return result;
  }

  return 22;
}

uint64_t sub_10001AAEC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, unint64_t a7)
{
  v54 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  memset(v58, 0, sizeof(v58));
  v57 = a3 + 832;
  v14 = v13 + 48 * a4;
  v55 = a4 + 1;
  v52 = v13 + 40 * (a4 + 1);
  v53 = a3 + 984;
  v15 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v16 = *(a2 + 408);
      v17 = *(a2 + 376);
      v19 = v17[10];
      v18 = v17[11];
      v20 = v17[9];
      if (v19 >= v18 + v16)
      {
        v21 = v19 - (v18 + v16);
      }

      else
      {
        v21 = 0;
      }

      if (v20 - v18 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20 - v18;
      }

      if (v19 <= v18 + v16)
      {
        v23 = v20 - v18;
      }

      else
      {
        v23 = v22;
      }

      v24 = v23 >= v16;
      v25 = v23 - v16;
      if (!v24)
      {
        v25 = 0;
      }

      if (v20 <= v18)
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v21 = 0;
    }

    v26 = *(a3 + 376);
    v27 = v26[30] + v26[9] + *(a3 + 984) + v26[15] + v26[35] + *(a3 + 992);
    v29 = v26[23];
    v28 = v26[24];
    v24 = v29 >= v28;
    v30 = v29 - v28;
    if (!v24)
    {
      v30 = 0;
    }

    v31 = *(a3 + 840) + *(a3 + 832);
    v32 = *(a3 + 864);
    v24 = v31 >= v32;
    v33 = v31 - v32;
    if (!v24)
    {
      v33 = 0;
    }

    v34 = v33 + v30;
    v24 = v27 >= v34;
    v35 = v27 - v34;
    if (!v24)
    {
      v35 = 0;
    }

    if (*(a3 + 1616))
    {
      v36 = *(a3 + 1632);
      v24 = v33 >= v36;
      v37 = v33 - v36;
      if (!v24)
      {
        v37 = 0;
      }

      v38 = *(a3 + 1624);
      v39 = *(a3 + 1640);
      v24 = v38 >= v39;
      v40 = v38 - v39;
      if (!v24)
      {
        v40 = 0;
      }

      v24 = v40 >= v36;
      v41 = v40 - v36;
      if (!v24)
      {
        v41 = 0;
      }

      v42 = *(a3 + 1648);
      v43 = *(a3 + 1656);
      v24 = v42 >= v43;
      v44 = v42 - v43;
      if (!v24)
      {
        v44 = 0;
      }

      v24 = v44 >= v37;
      v45 = v44 - v37;
      if (!v24)
      {
        v45 = 0;
      }

      v24 = v35 >= v45 + v41;
      v46 = v35 - (v45 + v41);
      if (!v24)
      {
        v46 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v45 = v41;
      }

      v47 = v45 + v25 + v46;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v49 = *a6;
LABEL_54:
        v21 = v49;
        if (v49 <= v47)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v47;
        v21 = v47;
        if (v47 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v47 = v35 + v25;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v47 >= v21)
    {
      v48 = v21;
    }

    else
    {
      v48 = v47;
    }

    if (*(*(a2 + 376) + 80))
    {
      v47 = v48;
    }

    pthread_mutex_unlock((a3 + 576));
    v49 = *a6;
    if (!*(*(a2 + 376) + 80) || v49 <= v21)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v21;
    if (v21 < 1)
    {
      return 69;
    }

    if (v21 > v47)
    {
      goto LABEL_56;
    }

LABEL_57:
    v50 = *(v14 + 72) - *(v57 + 8 * a4);
    if (v21 > v50)
    {
      break;
    }

LABEL_65:
    if (v21 <= v50)
    {
      return 0;
    }
  }

  if (v15)
  {
    v50 += *(v52 + 200) + *(v53 + 8 * a4);
    if (v21 <= v50)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v50;
  if (v50 > 0 && v15)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    sub_100015E54(a1, v58, 0, 0);
    v15 = sub_100015F48(a1, a3, v55, 1, v58, a7) != 0;
    sub_100016780(a1, v58);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v50 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v21 = v54;
      *a6 = v54;
    }

    else
    {
      v21 = *a6;
    }

    goto LABEL_65;
  }

  if (v50 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001AE40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = *(a1 + 44);
  if (!result)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      *(a1 + 32) = a2;
      v5 = a2;
    }

    if (*(a1 + 24) <= a3)
    {
      result = 37;
    }

    else
    {
      v6 = *(*(*(*a1 + 8) + 376) + 36);
      result = spaceman_free_extent_cache_scan_should_pause(*a1, (a2 - v5 / v6 * v6) / v6);
      if (!result)
      {
        return result;
      }

      result = 34;
    }

    *(a1 + 44) = result;
  }

  return result;
}

double sub_10001AEB8(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
{
  v56 = 0;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v60[0] = *a3;
  v60[1] = v6;
  v8 = *(a1 + 376);
  v9 = *(a3 + 16);
  v49 = *(a3 + 40);
  v10 = *a3 / *(v8 + 36);
  v11 = v10;
  v60[2] = v7;
  v12 = a1 + 1496;
  v13 = a2;
  v14 = *(a1 + 1496 + 8 * a2) + 4 * v10;
  v54 = *(a3 + 8);
  *&v15 = 0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  v55 = v8;
  v16 = v8 + 48 * a2;
  v50 = v14;
  v51 = v10;
  do
  {
    if (!v9)
    {
      v28 = 1;
      v29 = v50;
      goto LABEL_23;
    }

    v17 = *(a1 + 376);
    if ((*(v14 + 3) & 0xC) == 0)
    {
      v18 = v17 + 48 * v13;
      v19 = *(v18 + 56);
      if (v19 <= v11)
      {
        goto LABEL_18;
      }

      v20 = *(a3 + 32);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = *(v17 + 36);
      v22 = v21;
      if (v19 - 1 == v11)
      {
        v22 = *(v18 + 48) % v21;
      }

      if (!calc_overlap_range(v11 * v21, v22, *(a3 + 24), v20, 0))
      {
LABEL_18:
        if (v11 == v10)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
          *&v60[0] = v11 * *(v55 + 36);
        }

        v29 = v14;
        v51 = v11;
        goto LABEL_23;
      }

      v17 = *(a1 + 376);
    }

    v23 = v17 + 48 * v13;
    v24 = *(v23 + 56);
    if (v24 > v11)
    {
      v25 = *(a3 + 32);
      if (v25)
      {
        v26 = *(v17 + 36);
        v27 = v26;
        if (v24 - 1 == v11)
        {
          v27 = *(v23 + 48) % v26;
        }

        v56 |= calc_overlap_range(v11 * v26, v27, *(a3 + 24), v25, 0) != 0;
      }
    }

    v11 = (v11 + 1) % *(v16 + 56);
    v14 = *(v12 + 8 * v13) + 4 * v11;
  }

  while (v11 != v10);
  if ((v56 & 1) == 0)
  {
    return *&v15;
  }

  v28 = 1;
  v29 = *(v12 + 8 * v13) + 4 * v11;
LABEL_23:
  v30 = v54;
  if (v54 < 2)
  {
    goto LABEL_52;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v54 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_52;
  }

  if (v51 < *(v16 + 56) - 1 && (v31 & 0x2000000) != 0 && *(v12 + 8 * v13) + 4 * v51 != -4)
  {
    v32 = *(*(v12 + 8 * v13) + 4 * v51 + 4);
    if ((v32 & 0x1000000) != 0 && ((v32 & 0xC000000) == 0 || (v9 & 1) == 0))
    {
      v40 = v32 & 0xFFFFFF;
      v36 = v49;
      if (v49)
      {
        v35 = a4;
        v33 = v55;
        if (v54 <= v40 + v29)
        {
          goto LABEL_53;
        }

        v34 = *(v55 + 36);
        goto LABEL_32;
      }

      if (v29 <= v40)
      {
        v29 = v40;
      }

      else
      {
        v29 = v29;
      }

      if (v54 >= v29)
      {
        v30 = v29;
      }

LABEL_52:
      v35 = a4;
      v33 = v55;
      goto LABEL_53;
    }
  }

  v33 = v55;
  v34 = *(v55 + 36);
  v35 = a4;
  v36 = v49;
  if (!v49)
  {
LABEL_36:
    *&v60[0] = v51 * v34;
    sub_10001F78C(a1, a2, 0, v60, v35);
    v38 = *(v35 + 1);
    if (v38 < v54)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    if (!v38 || v39)
    {
      v15 = *(v35 + 24);
      *v35 = v15;
      *(v35 + 2) = *(v35 + 5);
      *(v35 + 3) = 0;
      *(v35 + 4) = 0;
      *(v35 + 5) = 0;
    }

    return *&v15;
  }

LABEL_32:
  if (v34 >= 0xFFFFFF)
  {
    v37 = 0xFFFFFFLL;
  }

  else
  {
    v37 = v34;
  }

  if (v54 <= v37)
  {
    goto LABEL_36;
  }

LABEL_53:
  v41 = *&v60[0];
  *v35 = *&v60[0];
  *(v35 + 1) = v30;
  *(v35 + 16) = v9;
  if (v28)
  {
    v42 = *(a1 + 376);
    v43 = v42 + 48 * v13;
    v44 = *(v43 + 56);
    if (v44 > v10)
    {
      v45 = *(a3 + 32);
      if (v45)
      {
        v46 = *(v42 + 36);
        v47 = v10 * v46;
        if (v44 - 1 == v10)
        {
          v46 = *(v43 + 48) % v46;
        }

        if (calc_overlap_range(v47, v46, *(a3 + 24), v45, 0))
        {
          *(v35 + 16) = 0;
        }
      }
    }
  }

  if (v41 % *(v33 + 36))
  {
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    sub_10001F78C(a1, a2, 3uLL, v60, &v57);
    if (*(&v57 + 1) >= v30)
    {
      *&v15 = v57;
      *(v35 + 24) = v57;
      *(v35 + 5) = v58;
    }

    else
    {
      v15 = *v35;
      *(v35 + 24) = *v35;
      *(v35 + 5) = *(v35 + 2);
      *(v35 + 3) = v41 / *(v33 + 36) * *(v33 + 36);
    }
  }

  return *&v15;
}

uint64_t sub_10001B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v109 = 0;
  v8 = 0;
  v9 = *(a3 + 376);
  v118 = 0;
  v119 = 0;
  v116 = 0;
  v117 = 0;
  v10 = v9 + 12;
  v99 = a3 + 896;
  v104 = v9 + 12;
  v105 = (a1 + 4048);
  v114 = 0;
  v115 = 0;
  v107 = a3 + 1576;
  v100 = -1;
  v113 = 0;
  v11 = *(a4 + 172);
  v110 = v9;
  do
  {
    v12 = *(a4 + 112) / v9[9] / v9[10];
    if (v10[12 * v11 + 5])
    {
      v13 = v5;
      v14 = v9[11];
      v15 = v12 / v14;
      v16 = v119;
      if (v12 / v14 == v100)
      {
        LODWORD(v17) = *(a4 + 112) / v9[9] / v9[10];
        v15 = v100;
      }

      else
      {
        v19 = *(*(v99 + 8 * v11) + 8 * v15);
        if (v119)
        {
          obj_release(v119);
          v9 = v110;
          v119 = 0;
          LODWORD(v11) = *(a4 + 172);
        }

        v115 = v9;
        v116 = __PAIR64__(v15, v11);
        v20 = v9;
        v21 = obj_get(*(a2 + 392), 0x40000000, v19, &sm_cab_desc, &v115, 0, 0, 0, &v119);
        if (v21)
        {
          v94 = v21;
          v5 = v13;
          break;
        }

        v14 = v20[11];
        v16 = v119;
        LODWORD(v11) = *(a4 + 172);
        v100 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v9 = v20;
      }

      v18 = (v16[7] + 8 * (v12 - v14 * v15) + 40);
      LODWORD(v12) = v17;
      v5 = v13;
    }

    else
    {
      v18 = (*(v99 + 8 * v11) + 8 * v12);
    }

    v22 = *v18;
    v115 = v9;
    v116 = __PAIR64__(v12, v11);
    v106 = v22;
    v23 = v9;
    v24 = obj_get(*(a2 + 392), 0x40000000, v22, &sm_cib_desc, &v115, 0, 0, 0, &v118);
    if (v24)
    {
      v94 = v24;
      break;
    }

    v5 = v118[7];
    v25 = *(v5 + 32);
    v27 = v23[9];
    v26 = v23[10];
    v28 = v26 * v25;
    v29 = v23;
    if (v109 == v10[12 * *(a4 + 172) + 4])
    {
      v30 = *(a4 + 120) / v27 - v28 + 1;
    }

    else
    {
      v30 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v27 - v26 * v25;
    if (v30 <= v7)
    {
      v94 = 0;
      goto LABEL_280;
    }

    v111 = v5 + 40;
    v7 = v7;
    v102 = v118[7];
    v112 = v26 * v25;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v31 = *(a4 + 32);
        if (v31 >= 1 && *(a4 + 48) <= (2 * v29[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v31;
          }

          v95 = *(a4 + 40);
          *(a4 + 185) = v95;
          if ((v95 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v94 = 3;
          goto LABEL_280;
        }
      }

      v32 = v111 + 32 * v7;
      v33 = *(v32 + 8);
      v34 = v28 + v7;
      v35 = v29[9];
      if (v33 != (v28 + v7) * v35)
      {
        v39 = obj_type(a1);
        v40 = v105;
        if (v39 != 13)
        {
          v40 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", "spaceman_alloc_iterate_chunks", 7327, v40, v106, *(v5 + 8), v7, *(v32 + 8), v34 * v110[9]);
        v29 = v110;
        if (v29[9] + v29[9] * v34 >= *&v10[12 * *(a4 + 172)])
        {
          v8 = 0;
        }

        else
        {
          v8 = v110[9] + v110[9] * v34;
        }

        v28 = v112;
LABEL_106:
        *(a4 + 112) = v8;
        goto LABEL_107;
      }

      v36 = *(a4 + 172);
      if (v109 == v10[12 * v36 + 4] && (v37 = *(a4 + 120), v37 / v35 - v28 == v7))
      {
        v38 = v37 - v33;
      }

      else
      {
        v38 = *(v32 + 16) & 0xFFFFFLL;
      }

      v41 = *(a4 + 176);
      if (v36 == v41)
      {
        v42 = *(a4 + 80);
        v43 = v42 - v33;
        if (v42 - v33 >= v38)
        {
          v43 = v38;
        }

        if (v42 > v33 && v42 < v38 + v33)
        {
          v38 = v43;
        }
      }

      v45 = *(a4 + 180);
      if (v36 == v45)
      {
        should_avoid_data_allocation_at_block = 0;
        v48 = *(a4 + 64);
        if (v48 <= v33 || v48 >= v38 + v33)
        {
          v46 = v6;
        }

        else if (*(a4 + 190))
        {
          v46 = v6;
          should_avoid_data_allocation_at_block = 1;
        }

        else
        {
          v46 = v6;
          should_avoid_data_allocation_at_block = 0;
          if (v48 - v33 < v38)
          {
            v38 = v48 - v33;
          }
        }
      }

      else
      {
        v46 = v6;
        should_avoid_data_allocation_at_block = 0;
      }

      v49 = *(a4 + 112);
      v50 = v49 - v33;
      if (v36 == v41)
      {
        v51 = *(a4 + 88);
        if (v51 > v33 && v51 < v38 + v33)
        {
          if (v51 - v33 > v50)
          {
            v50 = v51 - v33;
          }

          v49 = v50 + v33;
          *(a4 + 112) = v50 + v33;
          if (v50 > 0)
          {
            v8 = 0;
          }
        }
      }

      if (v36 == v45)
      {
        v54 = *(a4 + 72);
        if (v54 > v33 && v54 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            if (v54 - v33 > v50)
            {
              v50 = v54 - v33;
            }

            v49 = v50 + v33;
            *(a4 + 112) = v50 + v33;
            if (v50 > 0)
            {
              v8 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v52 = *(v32 + 20) & 0xFFFFF;
        if (!v8 || v52 < (*(v32 + 16) & 0xFFFFFu) && *(a4 + 48) - v8 > v52)
        {
          if (v52)
          {
            if (v7 >= v30 - 1 || (v53 = *(v32 + 52) & 0xFFFFF, *(a4 + 48) <= (v53 + v52)))
            {
              v8 = 0;
            }

            else
            {
              v8 = 0;
              if (v53 < (*(v32 + 48) & 0xFFFFFu))
              {
                should_avoid_data_allocation_at_block = 1;
              }
            }
          }

          else
          {
            v8 = 0;
            should_avoid_data_allocation_at_block = 2;
          }
        }
      }

      if (v36 == v41 && *(a4 + 80) <= v50 + v33 && *(a4 + 88) >= v38 + v33)
      {
        should_avoid_data_allocation_at_block = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v36 != v45 || should_avoid_data_allocation_at_block)
        {
          goto LABEL_86;
        }

        if (*(a4 + 64) <= v50 + v33)
        {
          should_avoid_data_allocation_at_block = *(a4 + 72) >= v38 + v33;
LABEL_86:
          if (!*(a4 + 184))
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        should_avoid_data_allocation_at_block = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_89;
        }
      }

LABEL_87:
      if ((*(v32 + 20) & 0xFFFFF) == 0)
      {
        should_avoid_data_allocation_at_block = 2;
      }

LABEL_89:
      v55 = *(v32 + 24);
      if (!v55 && ((*(v32 + 16) ^ *(v32 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v56) = *(a4 + 190);
LABEL_97:
        v57 = v49 + v38 - v50;
        *(a4 + 112) = v57;
        v10 = v104;
        v6 = v46;
        v28 = v112;
        if (v36 == v41 && v57 >= *(a4 + 80) && v57 < *(a4 + 88) || (v56 & 1) == 0 && v36 == *(a4 + 180) && v57 >= *(a4 + 64) && v57 < *(a4 + 72))
        {
          v57 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
          *(a4 + 112) = v57;
        }

        v8 = 0;
        if (v57 < *&v104[12 * v36])
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      if (!should_avoid_data_allocation_at_block)
      {
        if (*(a4 + 185) != 1)
        {
          v58 = 1;
          goto LABEL_112;
        }

        should_avoid_data_allocation_at_block = spaceman_should_avoid_data_allocation_at_block(a3, v36, v33, *(a4 + 48));
        v29 = v110;
      }

      v56 = *(a4 + 190);
      if (should_avoid_data_allocation_at_block > v56)
      {
        v49 = *(a4 + 112);
        v36 = *(a4 + 172);
        v41 = *(a4 + 176);
        goto LABEL_97;
      }

      v55 = *(v32 + 24);
      v58 = should_avoid_data_allocation_at_block == 0;
LABEL_112:
      v59 = (v46 + 1);
      v117 = 0;
      if (v55)
      {
        v60 = obj_get(*(a2 + 392), 0x40000000, v55, &sm_bm_desc, 0, 0, 0, 0, &v117);
        if (v60)
        {
          v94 = v60;
          goto LABEL_278;
        }
      }

      if (v8)
      {
        if (v50)
        {
          __assert_rtn("spaceman_alloc_iterate_chunks", "spaceman.c", 7486, "bmoffset == 0");
        }

        v61 = v38;
        if (v58)
        {
          if (*(a4 + 48) - v8 >= v38)
          {
            v61 = v38;
          }

          else
          {
            v61 = *(a4 + 48) - v8;
          }
        }

        v6 = v59;
        if (!v117 || !bitmap_range_find_first(1, v117[7], 0, v61, (a4 + 128)))
        {
          if (v58)
          {
            v65 = *(a4 + 48);
            if (v65 == v61 + v8)
            {
              *(a4 + 152) = *(a4 + 112) - v8;
              *(a4 + 160) = v65;
              if (v117)
              {
                obj_release(v117);
              }

              v8 = 0;
              v94 = 0;
              v117 = 0;
              v5 = v102;
              v10 = v104;
              goto LABEL_280;
            }
          }

          if (v61 != v38)
          {
            __assert_rtn("spaceman_alloc_iterate_chunks", "spaceman.c", 7503, "erbcount == bcount");
          }

          if (*(a4 + 190) == 1)
          {
            v66 = *(a4 + 191);
          }

          else
          {
            v66 = 0;
          }

          v67 = v38 + v8;
          spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v66 & 1, *(a4 + 112) - v8, v38 + v8);
          if (*(a4 + 184) == 1 && v67 > *(a4 + 160))
          {
            if (v58 || !spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v8, v38 + v8, *(a4 + 168), *(a4 + 56), &v114, &v113))
            {
              *(a4 + 152) = *(a4 + 112) - v8;
              v68 = *(a4 + 48);
              if (v67 < v68)
              {
                v68 = v38 + v8;
              }

LABEL_148:
              *(a4 + 160) = v68;
            }

            else
            {
              v68 = v113;
              if (v113 >= *(a4 + 48))
              {
                v68 = *(a4 + 48);
              }

              v113 = v68;
              if (v68 > *(a4 + 160))
              {
                *(a4 + 152) = v114;
                goto LABEL_148;
              }
            }
          }

          v69 = *(a4 + 112) + v38;
          *(a4 + 112) = v69;
          v70 = *(a4 + 172);
          v5 = v102;
          v10 = v104;
          if (v70 == *(a4 + 176) && v69 >= *(a4 + 80) && v69 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v70 == *(a4 + 180) && v69 >= *(a4 + 64) && v69 < *(a4 + 72))
          {
            v67 = 0;
            v69 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
            *(a4 + 112) = v69;
          }

          v8 = v67;
          if (v69 >= *&v104[12 * v70])
          {
            v8 = 0;
            *(a4 + 112) = 0;
          }

          if (v117)
          {
            obj_release(v117);
          }

          v117 = 0;
          if (v8)
          {
            goto LABEL_266;
          }

          v28 = v112;
          v29 = v110;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v8 = 0;
            v94 = 0;
            goto LABEL_280;
          }

          goto LABEL_107;
        }

        if (*(a4 + 184) != 1)
        {
          goto LABEL_171;
        }

        v62 = *(a4 + 128) + v8;
        if (v62 <= *(a4 + 160))
        {
          goto LABEL_171;
        }

        if (!v58)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v8, v62, *(a4 + 168), *(a4 + 56), &v114, &v113))
          {
            v63 = *(a4 + 48);
            if (v113 < v63)
            {
              v63 = v113;
            }

            v113 = v63;
            v64 = *(a4 + 160);
            if (v63 > v64)
            {
              *(a4 + 152) = v114;
              *(a4 + 160) = v63;
LABEL_170:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v117)
                {
                  obj_release(v117);
                }

                v8 = 0;
                v94 = 0;
                v117 = 0;
                v5 = v102;
                v10 = v104;
                goto LABEL_280;
              }

LABEL_171:
              if (*(a4 + 190) == 1)
              {
                v71 = *(a4 + 191);
              }

              else
              {
                v71 = 0;
              }

              spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v71 & 1, *(a4 + 112) - v8, *(a4 + 128) + v8);
              v50 = *(a4 + 128);
              *(a4 + 112) += v50;
              goto LABEL_175;
            }

LABEL_169:
            if (v64)
            {
              goto LABEL_170;
            }

            goto LABEL_171;
          }

          v62 = *(a4 + 128) + v8;
        }

        v64 = *(a4 + 48);
        if (v62 < v64)
        {
          v64 = v62;
        }

        *(a4 + 152) = *(a4 + 112) - v8;
        *(a4 + 160) = v64;
        goto LABEL_169;
      }

LABEL_175:
      if (v117)
      {
        break;
      }

      v79 = *(a4 + 48);
      v80 = v79 <= v38 - v50;
      if (v79 >= v38 - v50)
      {
        v81 = v38 - v50;
      }

      else
      {
        v81 = *(a4 + 48);
      }

      *(a4 + 128) = v50;
      *(a4 + 136) = v81;
      v82 = v79 <= v38 - v50 && v58;
      if (v80)
      {
        v83 = v38 - v50;
      }

      else
      {
        v83 = 0;
      }

      if (v82)
      {
        v8 = 0;
        v94 = 0;
        v5 = v102;
        v10 = v104;
        v6 = v59;
        if (!v81)
        {
          goto LABEL_281;
        }

        goto LABEL_305;
      }

      if (*(a4 + 190) == 1)
      {
        v84 = *(a4 + 191);
      }

      else
      {
        v84 = 0;
      }

      spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v84 & 1, *(a4 + 112), v81);
LABEL_221:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_230;
      }

      v8 = *(a4 + 136);
      if (v8 > *(a4 + 160))
      {
        v85 = *(a4 + 112);
        v86 = *(a4 + 128);
        if (!v58)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), v85 - v50 + v86, v8, *(a4 + 168), *(a4 + 56), &v114, &v113))
          {
            v8 = v113;
            if (v113 > *(a4 + 160))
            {
              v87 = v114;
              goto LABEL_229;
            }

            goto LABEL_230;
          }

          v85 = *(a4 + 112);
          v86 = *(a4 + 128);
          v8 = *(a4 + 136);
        }

        v87 = v85 - v50 + v86;
LABEL_229:
        *(a4 + 152) = v87;
        *(a4 + 160) = v8;
LABEL_230:
        v8 = *(a4 + 136);
      }

      v5 = v102;
      if (!v8 || *(a4 + 128) + v8 != v38)
      {
        if (!v117 && v38)
        {
          __assert_rtn("spaceman_alloc_iterate_chunks", "spaceman.c", 7664, "bmo || (bcount == 0)");
        }

        if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
        {
          v8 = 0;
          v94 = 0;
          *(a4 + 112) += v38 - v50;
          goto LABEL_279;
        }

        v8 = v83;
        if (!v83)
        {
          v88 = *(a4 + 48);
          v89 = v38 - v88;
          if (v38 < v88)
          {
            v89 = 0;
            v88 = v38;
          }

          if (bitmap_range_find_last_set(v117[7], v89, v88, (a4 + 128)) && (v90 = *(a4 + 128), v90 < v38 - 1))
          {
            if (*(a4 + 190) == 1)
            {
              v91 = *(a4 + 191);
            }

            else
            {
              v91 = 0;
            }

            v8 = v38 + ~v90;
            spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v91 & 1, v90 - v50 + *(a4 + 112) + 1, v8);
          }

          else
          {
            v8 = 0;
          }
        }
      }

      *(a4 + 136) = 0;
      v92 = *(a4 + 112) + v38 - v50;
      *(a4 + 112) = v92;
      v93 = *(a4 + 172);
      v10 = v104;
      v6 = v59;
      if (v93 == *(a4 + 176) && v92 >= *(a4 + 80) && v92 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v93 == *(a4 + 180) && v92 >= *(a4 + 64) && v92 < *(a4 + 72))
      {
        v8 = 0;
        v92 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
        *(a4 + 112) = v92;
      }

      if (v92 >= *&v104[12 * v93])
      {
        v8 = 0;
        *(a4 + 112) = 0;
      }

      if (v117)
      {
        obj_release(v117);
      }

      v117 = 0;
      if (!v59)
      {
        goto LABEL_266;
      }

      v28 = v112;
      v29 = v110;
      if ((*(a4 + 190) & 1) == 0 || v8)
      {
        goto LABEL_108;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (spaceman_free_extent_cache_scan_should_pause(*(v107 + 8 * *(a4 + 172)), v59))
        {
          v97 = *(a4 + 104);
          if (v97 > *(a4 + 160))
          {
            *(a4 + 152) = *(a4 + 96);
            *(a4 + 160) = v97;
          }

          v8 = 0;
          v94 = 0;
          *(a4 + 192) = 1;
          goto LABEL_280;
        }

        v8 = 0;
LABEL_266:
        v28 = v112;
        v29 = v110;
        goto LABEL_108;
      }

LABEL_107:
      v8 = 0;
LABEL_108:
      if (++v7 >= v30)
      {
        v94 = 0;
        LODWORD(v7) = v30;
        goto LABEL_280;
      }
    }

    if (!*(v107 + 8 * *(a4 + 172)))
    {
      if (bitmap_range_find_desired_or_first_clear_range(v117[7], *(a4 + 48), v50, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
      {
        v8 = 0;
        v94 = 0;
        goto LABEL_278;
      }

LABEL_218:
      v83 = 0;
      goto LABEL_221;
    }

    if (v38 > v50)
    {
      v72 = 0;
      v73 = 0;
      v74 = v50;
      while (1)
      {
        bitmap_range_find_first_clear_range(v117[7], v38 - v74, v74, v38, (a4 + 128), (a4 + 136));
        v75 = *(a4 + 136);
        if (!v75)
        {
          goto LABEL_215;
        }

        if (v75 <= v72)
        {
          break;
        }

        if ((*(a4 + 169) & 4) != 0)
        {
          if (v72)
          {
            break;
          }

          v76 = *(a4 + 48);
        }

        else
        {
          v76 = *(a4 + 48);
          if (v72 >= v76)
          {
            break;
          }
        }

        v73 = *(a4 + 128);
        if (v76 >= v75)
        {
          v72 = *(a4 + 136);
        }

        else
        {
          v72 = v76;
        }

        if (!v58)
        {
          goto LABEL_195;
        }

LABEL_186:
        v77 = *(a4 + 48);
        if (v72 >= v77 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
        {
          *(a4 + 128) = v73;
          *(a4 + 136) = v72;
          goto LABEL_217;
        }

LABEL_195:
        if (*(a4 + 190) == 1)
        {
          v78 = *(a4 + 191);
        }

        else
        {
          v78 = 0;
        }

        spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v78 & 1, *(a4 + 112) - v50 + *(a4 + 128), v75);
        v74 = *(a4 + 136) + *(a4 + 128);
        if (v74 >= v38)
        {
          goto LABEL_215;
        }
      }

      if (!v58)
      {
        goto LABEL_195;
      }

      goto LABEL_186;
    }

    v73 = 0;
    v72 = 0;
LABEL_215:
    *(a4 + 128) = v73;
    *(a4 + 136) = v72;
    if (!v58)
    {
      goto LABEL_218;
    }

    v77 = *(a4 + 48);
LABEL_217:
    if (v72 < v77)
    {
      goto LABEL_218;
    }

    v8 = 0;
    v94 = 0;
    *(a4 + 112) += v38 - v50;
LABEL_278:
    v5 = v102;
LABEL_279:
    v10 = v104;
    v6 = v59;
LABEL_280:
    if (*(a4 + 136))
    {
      break;
    }

LABEL_281:
    v96 = *(a4 + 160);
    if (v96 == *(a4 + 48))
    {
      break;
    }

    if (v8 || !v96)
    {
      if (v94)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v94)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    obj_release(v118);
    v118 = 0;
    v11 = *(a4 + 172);
    ++v109;
    v9 = v110;
  }

  while (v109 <= v10[12 * v11 + 4]);
LABEL_305:
  *(a4 + 193) = v109 == v10[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v119)
  {
    obj_release(v119);
    v119 = 0;
  }

  if (v118)
  {
    obj_release(v118);
    v118 = 0;
  }

  if (v117)
  {
    obj_release(v117);
  }

  return v94;
}

uint64_t sub_10001C358(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v117 = 0;
  v120 = 0;
  v118 = 0;
  v12 = *(a3 + 376);
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v123 = a8 & 0x30000;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v122 = v13;
  v115 = (v13 + 506);
  v116 = (a2 + 506);
  v121 = a8 & 0x10001;
  v119 = -1;
  v133 = a4;
  v129 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v138 = v12[17];
    if (v138)
    {
      v16 = v15 / v12[11];
      if (v16 != v119 || v117 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v145)
        {
          obj_release(v145);
          v145 = 0;
        }

        v141 = v12;
        LODWORD(v142) = 0;
        HIDWORD(v142) = v16;
        v120 = v18;
        v19 = obj_get(a1[49], 1073741829, v18, &sm_cab_desc, &v141, 0, 0, v8, &v145);
        if (v19)
        {
          v110 = v19;
          log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v120, v19);
          v111 = 1;
          goto LABEL_159;
        }

        v117 = v145[7];
        v119 = v16;
      }

      else
      {
        obj_lock(v145, 2u);
      }

      pthread_mutex_unlock((v11 + 640));
      if (obj_xid(v145) == v8)
      {
        v22 = v120;
        v23 = v119;
      }

      else
      {
        v24 = sub_100014FFC(a1, v11, v8, &v140);
        if (v24)
        {
          v110 = v24;
          if (nx_ratelimit_log_allowed(a1))
          {
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 5901, (a1[48] + 212), v110);
          }

          v111 = 1;
          v118 = 1;
          goto LABEL_160;
        }

        v22 = v140;
        v23 = v119;
        *(*(v11 + 896) + 8 * v119) = v140;
        obj_dirty(v145, v8, v22);
        v25 = sub_10001FA08(a1, v11, v120, v8);
        if (v25)
        {
          v110 = v25;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", "spaceman_modify_bits", 5908, (a1[48] + 212), v120, v25);
          v111 = 1;
          v118 = 1;
          goto LABEL_160;
        }
      }

      v21 = v117 + 40;
      v26 = v129[10];
      LODWORD(v15) = v15 - v129[11] * v23;
      v141 = v129;
      LODWORD(v142) = 0;
      HIDWORD(v142) = v14 / v26;
      v118 = 1;
      v120 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v141 = v20;
      LODWORD(v142) = 0;
      HIDWORD(v142) = v15;
      if (!v21)
      {
        v110 = 22;
        v111 = 1;
        goto LABEL_159;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = obj_get(a1[49], 1073741829, v27, &sm_cib_desc, &v141, 0, 0, v8, &v144);
    if (v28)
    {
      v110 = v28;
      if (v119 == -1)
      {
        v109 = 0;
      }

      else
      {
        v109 = v129[11] * v119;
      }

      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v109 + v15, v27, v28);
      v111 = 1;
      goto LABEL_156;
    }

    v130 = v144[7];
    if (obj_xid(v144) == v8)
    {
      v127 = v27;
      v29 = v129;
      goto LABEL_29;
    }

    v30 = sub_100014FFC(a1, v11, v8, &v140);
    if (v30)
    {
      v110 = v30;
      log_err("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_153;
    }

    v127 = v140;
    *(v21 + 8 * v15) = v140;
    if (v145)
    {
      obj_dirty(v145, v8, v120);
    }

    obj_dirty(v144, v8, v127);
    v31 = sub_10001FA08(a1, v11, v27, v8);
    v29 = v129;
    if (v31)
    {
      break;
    }

LABEL_29:
    if (!v138)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v145)
    {
      obj_unlock(v145, 2u);
      v118 = 0;
    }

    v32 = v14 % v29[10];
    v131 = v130 + 40;
    v33 = v130 + 40 + 32 * v32;
    v34 = (v33 + 24);
    v35 = *(v33 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v35)
      {
        goto LABEL_35;
      }

      if (((*(v33 + 16) ^ *(v33 + 20)) & 0xFFFFF) != 0)
      {
        v110 = nx_corruption_detected_int(a1);
        v111 = 0;
      }

      else
      {
        v111 = 0;
        v110 = 22;
      }

      goto LABEL_160;
    }

    while (1)
    {
LABEL_35:
      v137 = v32;
      if (v35)
      {
        v36 = obj_get(a1[49], 1073741825, v35, &sm_bm_desc, 0, 0, 0, v8, &v143);
        if (v36)
        {
          v108 = v36;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_147;
        }

        v37 = v143[7];
      }

      else
      {
        v37 = 0;
      }

      v38 = v29[9];
      v39 = v10 % v38;
      v40 = v38 - v10 % v38;
      if (a5 < v40)
      {
        v40 = a5;
      }

      v139 = v40;
      if (v35 && *v33 == a6)
      {
        v132 = v35;
        goto LABEL_50;
      }

      v41 = sub_100014FFC(a1, v11, a6, &v140);
      if (v41)
      {
        v107 = v41;
        log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v111 = 0;
        v110 = v107;
        goto LABEL_160;
      }

      *v33 = a6;
      v42 = v140;
      *v34 = v140;
      v132 = v42;
      if (v35)
      {
        obj_dirty(v143, a6, v42);
        v43 = sub_10001FA08(a1, v11, v35, a6);
        if (v43)
        {
          v108 = v43;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_147:
          v111 = 0;
          v110 = v108;
          goto LABEL_160;
        }
      }

      else
      {
        v44 = obj_create(a1[49], 0x40000000, v42, &sm_bm_desc, 0, 0, a6, &v143);
        if (v44)
        {
          v110 = v44;
          log_err("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v132, v44);
          v111 = 0;
          goto LABEL_160;
        }

        v37 = v143[7];
      }

LABEL_50:
      v45 = *(v11 + 376);
      if (a7 == 1)
      {
        v46 = bitmap_count_bits(v37, 0, v39, v139 + v39);
        v47 = v46;
        v48 = v133;
        if (v46)
        {
          log_err("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", "spaceman_clear_bits_in_bm", 5603, (a1[48] + 212), v133, a5, v46);
        }

        v49 = a1[47];
        v50 = *(v49 + 1248);
        v51 = v131 + 32 * v137;
        v126 = a5;
        if (v50)
        {
          v52 = *(v49 + 1240);
          v146 = 0;
          v53 = calc_overlap_range(v133, v139, v52, v50, &v146);
          v54 = v53;
          if (v53)
          {
            v53 = bitmap_count_bits(v37, 0, v146 - *(v51 + 8), v146 + v53 - *(v51 + 8));
          }

          v55 = v10;
          v56 = v47 - v53;
        }

        else
        {
          v55 = v10;
          v54 = 0;
          v56 = v47;
        }

        bitmap_clear_range(v37, v39, v139);
        sub_10001EF94(a3, v37, v133 / *(v45 + 36));
        *(v51 + 20) += v139 - v47;
        pthread_mutex_lock((a3 + 576));
        *(v45 + 72) += v139 - v54 - v56;
        a5 = v126;
        v8 = a6;
        v10 = v55;
        v11 = a3;
        if (a8)
        {
          v77 = *(a3 + 984);
          v64 = v77 >= v139;
          v78 = v77 - v139;
          if (!v64)
          {
            v78 = 0;
          }

          *(a3 + 984) = v78;
        }

LABEL_131:
        pthread_mutex_unlock((v11 + 576));
        v80 = 0;
        v110 = 0;
        v79 = 1;
        goto LABEL_132;
      }

      v48 = v133;
      if (v123 == 196608)
      {
        sub_1000A4748();
      }

      v57 = (*(v33 + 16) & 0xFFFFF) - v39;
      if (v57 >= v139)
      {
        v58 = v139;
      }

      else
      {
        v58 = (*(v33 + 16) & 0xFFFFF) - v39;
      }

      if (bitmap_range_is_clear(v37, v39, v58, v57))
      {
        bitmap_set_range(v37, v39, v58, v59);
        sub_10001EF94(v11, v37, v137 + *(v45 + 40) * *(v130 + 32));
        pthread_mutex_lock((v11 + 576));
        v60 = *(v45 + 72);
        if (*(v11 + 1616))
        {
          v61 = *(v45 + 240) + v60 + *(v11 + 984) + *(v45 + 120) + *(v45 + 280) + *(v11 + 992);
          v62 = *(v45 + 184);
          v63 = *(v45 + 192);
          v64 = v62 >= v63;
          v65 = v62 - v63;
          if (!v64)
          {
            v65 = 0;
          }

          v64 = v61 >= v65;
          v66 = v61 - v65;
          if (!v64)
          {
            v66 = 0;
          }

          v67 = *(v11 + 1624);
          v68 = *(v11 + 1640);
          v64 = v67 >= v68;
          v69 = v67 - v68;
          if (v64)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v11 + 1648);
          v72 = *(v11 + 1656);
          v64 = v71 >= v72;
          v73 = v71 - v72;
          if (!v64)
          {
            v73 = 0;
          }

          v74 = v73 + v70;
          v64 = v66 >= v74;
          v75 = v66 - v74;
          if (v64)
          {
            v76 = v75;
          }

          else
          {
            v76 = 0;
          }
        }

        else
        {
          v70 = 0;
          v76 = 0;
        }

        v81 = a2;
        *(v33 + 20) -= v58;
        *(v45 + 72) = v60 - v58;
        v8 = a6;
        if ((a8 & 1) == 0)
        {
          if (!a2)
          {
            goto LABEL_117;
          }

LABEL_104:
          v88 = v81[47];
          v89 = *(v88 + 72);
          v90 = *(v88 + 88);
          v91 = v89 - v90;
          if (v89 < v90)
          {
            v91 = 0;
          }

          if (v58 >= v91)
          {
            v92 = v91;
          }

          else
          {
            v92 = v58;
          }

          v93 = v90 + v58;
          *(v88 + 88) = v93;
          v94 = *(v45 + 184);
          v95 = *(v45 + 192) + v92;
          *(v45 + 192) = v95;
          if (v95 > v94)
          {
            sub_1000A471C();
          }

          if (v89)
          {
            v64 = v89 >= v93;
            v96 = v89 - v93;
            if (!v64)
            {
              v96 = 0;
            }

            v97 = v81[52];
            if (v96 >= v81[51])
            {
              v96 = v81[51];
            }

            v98 = *(v11 + 864);
            v81[52] = v96;
            *(v11 + 864) = v96 - v97 + v98;
          }

          fs_sb_dirty(v81, a6);
          goto LABEL_118;
        }

        v82 = *(v11 + 848);
        if (*(v11 + 832) < v82)
        {
          panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v82);
        }

        if ((a8 & 0x40) != 0)
        {
          if (v82 < v58)
          {
            panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v58);
          }

          *(v11 + 848) = v82 - v58;
          v83 = *(v11 + 832);
        }

        else
        {
          v83 = *(v11 + 832);
          if (v83 - v82 < v58)
          {
            if (obj_type(v122) == 13)
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, v115, *(v11 + 832) - v82, v82, v58);
            }

            else
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, (*(v122 + 384) + 212), *(v11 + 832) - v82, v82, v58);
            }

            v81 = a2;
            v48 = v133;
            goto LABEL_97;
          }
        }

        v82 = v83 - v58;
LABEL_97:
        *(v11 + 832) = v82;
        if (v82 > *(v45 + 72))
        {
          sub_1000A46F0();
        }

        if (v81)
        {
          v84 = v81[51];
          v64 = v84 >= v58;
          v85 = v84 - v58;
          if (!v64)
          {
            v86 = obj_type(v81);
            v87 = v116;
            if (v86 != 13)
            {
              v87 = (a2[48] + 212);
            }

            log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_set_bits_in_bm", 5770, v87, a2[51], v58);
            v81 = a2;
            v85 = 0;
          }

          v81[51] = v85;
          goto LABEL_104;
        }

LABEL_117:
        v92 = 0;
LABEL_118:
        if (v121 == 65537)
        {
          v99 = *(v11 + 1632);
          v64 = v99 >= v58;
          v100 = v99 - v58;
          if (!v64)
          {
            v100 = 0;
          }

          *(v11 + 1632) = v100;
        }

        if (*(v11 + 1616))
        {
          v101 = v58 - v92;
          if ((a8 & 0x10000) != 0)
          {
            v104 = *(v11 + 1640);
            if (v101 <= v70)
            {
              v105 = v104 + v101;
            }

            else
            {
              v105 = v104 + v70;
            }

            *(v11 + 1640) = v105;
          }

          else
          {
            v102 = v101 > v76;
            v103 = v101 - v76;
            if (v102)
            {
              *(v11 + 1656) += v103;
            }
          }
        }

        goto LABEL_131;
      }

      v79 = 0;
      v110 = 22;
      v80 = 1;
      v8 = a6;
LABEL_132:
      obj_dirty(v11, v8, 0);
      obj_dirty(v144, v8, v127);
      obj_dirty(v143, v8, v132);
      obj_release(v143);
      v143 = 0;
      v133 = v139 + v48;
      v10 += v139;
      a5 -= v139;
      if (!v79 || a5 < 1 || v137 >= (*(v130 + 36) - 1))
      {
        break;
      }

      v32 = v137 + 1;
      v33 = v131 + 32 * (v137 + 1);
      v34 = (v33 + 24);
      v35 = *(v33 + 24);
      v29 = v129;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    obj_unlock(v144, 2u);
    obj_release(v144);
    v144 = 0;
    if (a5 < 1)
    {
      v106 = 1;
    }

    else
    {
      v106 = v80;
    }

    v12 = v129;
    if (v106)
    {
      v111 = 1;
      goto LABEL_160;
    }
  }

  v110 = v31;
  log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_153:
  v111 = 0;
LABEL_156:
  if (!v138)
  {
LABEL_159:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_160:
  if (v145 && (v118 & 1) != 0)
  {
    obj_unlock(v145, 2u);
  }

  if (v144)
  {
    v112 = v111;
  }

  else
  {
    v112 = 1;
  }

  if ((v112 & 1) == 0)
  {
    obj_unlock(v144, 2u);
  }

  if (v145)
  {
    obj_release(v145);
  }

  if (v144)
  {
    obj_release(v144);
  }

  if (v143)
  {
    obj_release(v143);
  }

  if (a7 == 1)
  {
    if (v110)
    {
      if (a5)
      {
        v113 = *(v11 + 984);
        if (v113)
        {
          *(v11 + 984) = v113 - a5;
        }
      }
    }
  }

  return v110;
}

uint64_t spaceman_free(char *a1, uint64_t a2, unint64_t a3, int64_t a4, unint64_t a5)
{
  v8 = a2;
  v28 = 0;
  if (obj_type(a1) == 13)
  {
    v10 = *(a1 + 49);
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  is_current_tx = xid_is_current_tx(v10, a5);
  v13 = 22;
  if (a4 < 1 || !is_current_tx)
  {
    return v13;
  }

  v29 = 0;
  is_allocated = spaceman_is_allocated(v10, a3, a4, &v28);
  if (!(is_allocated | v28))
  {
    if (obj_type(a1) == 13)
    {
      v21 = a1 + 4048;
    }

    else
    {
      v21 = (*(a1 + 48) + 212);
    }

    log_err("%s:%d: %s Attempt to free range containing unallocated block(s): %lld:%lld\n", "spaceman_free", 8725, v21, a3, a4);
    return v13;
  }

  v13 = spaceman_get(v10, &v29);
  if (v13)
  {
    return v13;
  }

  p_sig = &v29->__sig;
  v16 = *&v29[24].__opaque[48];
  if (v16)
  {
    v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v17.i64[1] = a4;
    v16[6] = vaddq_s64(v16[6], v17);
  }

  v18 = spaceman_extent_check(v10, p_sig, a3, a4);
  if (!v18)
  {
    v23 = obj_modify(&v29->__sig, 0, a5);
    if (v23)
    {
      v13 = v23;
LABEL_42:
      obj_release(v29);
      return v13;
    }

    if (v10[629] == 1)
    {
      v24 = sub_10001D544(v10, a3, a4, &v28);
      if (v24 | v28)
      {
        v13 = 0;
        goto LABEL_42;
      }

      pthread_mutex_lock(v29 + 6);
      v13 = sub_10001D5CC(v10, v29, a3, a4, a5);
      dev_unmap_flush(*(v10 + 48));
      if (!v13)
      {
        if (v11)
        {
          sub_10001D6C8(v11, v29, a4, a5);
        }

        v27 = &v29->__sig;
        if (*&v29[25].__opaque[8])
        {
          sub_10001D810(v29, v8, a4);
          v27 = &v29->__sig;
        }

        obj_dirty(v27, a5, 0);
      }

      v26 = v29 + 6;
    }

    else
    {
      pthread_mutex_lock(v29 + 8);
      v13 = sub_10001D930(v10, v29, 1, a3, a4, a5);
      if (!v13)
      {
        pthread_mutex_lock(v29 + 6);
        if (v11)
        {
          sub_10001D6C8(v11, v29, a4, a5);
        }

        v25 = &v29->__sig;
        if (*&v29[25].__opaque[8])
        {
          sub_10001D810(v29, v8, a4);
          v25 = &v29->__sig;
        }

        obj_dirty(v25, a5, 0);
        pthread_mutex_unlock(v29 + 6);
      }

      v26 = v29 + 8;
    }

    pthread_mutex_unlock(v26);
    goto LABEL_42;
  }

  v19 = v18;
  if (nx_ratelimit_log_allowed(*(*a1 + 392)))
  {
    if (obj_type(a1) == 13)
    {
      v20 = a1 + 4048;
    }

    else
    {
      v20 = (*(a1 + 48) + 212);
    }

    log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", "spaceman_free", 8742, v20, a3, a4, v19);
  }

  obj_release(v29);
  return 22;
}

uint64_t spaceman_is_allocated(void *a1, unint64_t a2, unint64_t a3, int *a4)
{
  v11 = 0;
  v8 = spaceman_get(a1, &v11);
  if (v8)
  {
    log_err("%s:%d: %s failed to get spaceman structure: %d\n", "spaceman_is_allocated", 9006, (a1[48] + 212), v8);
    return 0;
  }

  else
  {
    pthread_mutex_lock(v11 + 8);
    pthread_mutex_lock(v11 + 6);
    v9 = sub_10001DD08(a1, v11, 0, a2, a3, a4, 0);
    pthread_mutex_unlock(v11 + 6);
    pthread_mutex_unlock(v11 + 8);
    obj_release(v11);
  }

  return v9;
}

uint64_t sub_10001D544(uint64_t a1, unint64_t a2, unint64_t a3, int *a4)
{
  v8 = *(a1 + 416);
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = sub_10001DD08(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

uint64_t sub_10001D5CC(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!xid_is_current_tx(a1, a5))
  {
    return 22;
  }

  v10 = spaceman_extent_check(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    if (nx_ratelimit_log_allowed(a1))
    {
      log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", "spaceman_freed", 6134, (a1[48] + 212), a3, a4, v11);
    }

    return 22;
  }

  dev_unmap(a1[48]);

  return sub_10001F6F0(a1, a2, a3, a4, 0, a5);
}

void sub_10001D6C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 376);
  v10 = *(v9 + 88);
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (v11)
  {
    *(v9 + 88) = v12;
  }

  else
  {
    v13 = obj_oid(a1);
    log_err("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, (a1 + 4048), v13, *(*(a1 + 376) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 376);
    *(v9 + 88) = 0;
  }

  v14 = *(v9 + 72);
  if (v14)
  {
    v15 = v14 - v12;
    if (v14 < v12)
    {
      v15 = 0;
    }

    v16 = *(a1 + 416);
    if (v15 >= *(a1 + 408))
    {
      v15 = *(a1 + 408);
    }

    v17 = *(a2 + 864);
    *(a1 + 416) = v15;
    *(a2 + 864) = v15 - v16 + v17;
  }

  v11 = v14 >= v12;
  v18 = v14 - v12;
  if (v18 != 0 && v11)
  {
    if (v18 >= a3)
    {
      v18 = a3;
    }

    v19 = *(v8 + 192);
    v20 = v19 - v18;
    if (v19 < v18)
    {
      log_err("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, (a1 + 4048), *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  fs_sb_dirty(a1, a4);
}

void *sub_10001D810(void *result, int a2, unint64_t a3)
{
  if ((a2 & 0x30000) == 0x30000)
  {
    sub_1000A4774();
  }

  v3 = result;
  if (result[202])
  {
    if ((a2 & 0x30000) == 0)
    {
      spaceman_entitled_reserve_active(0, result);
    }

    pthread_mutex_lock(v3 + 9);
    if ((a2 & 0x40) != 0)
    {
      if ((a2 & 0x10000) != 0)
      {
        v6 = v3 + 205;
        v7 = v3[205];
      }

      else
      {
        v6 = v3 + 207;
        v7 = v3[207];
      }

      if (v7 >= a3)
      {
        *v6 = v7 - a3;
LABEL_26:

        return pthread_mutex_unlock(v3 + 9);
      }

      a3 -= v7;
      *v6 = 0;
    }

    if (a3)
    {
      v8 = v3[203];
      v9 = v3[202];
      v10 = v9 - v8;
      if (v9 > v8)
      {
        v11 = v8 + a3;
        v12 = a3 >= v10;
        v13 = a3 - v10;
        if (v13 == 0 || !v12)
        {
          v9 = v11;
        }

        if (v12)
        {
          a3 = v13;
        }

        else
        {
          a3 = 0;
        }

        v3[203] = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = v3[205];
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            v3[205] = v17;
          }

          else
          {
            v3[205] = 0;
          }
        }

        else
        {
          v14 = v3[207];
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            v3[207] = v15;
          }

          else
          {
            v3[207] = 0;
          }
        }
      }
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_10001D930(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0;
  v35[0] = 0;
  v32 = 0uLL;
  v33 = 0;
  *(&v31 + 1) = 0;
  v13 = spaceman_fq_tree_get(a1, a2, a3, a6, 1, &v36);
  if (!v13)
  {
    *&v31 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v29 = 8;
    v30 = 16;
    v14 = bt_lookup_variant(v36, 0, &v34, &v30, 16, v35, &v29, 1, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v34 != a6)
    {
      goto LABEL_13;
    }

    if (v29)
    {
      v15 = v35[0];
    }

    else
    {
      v15 = 1;
      v35[0] = 1;
    }

    if (v15 + *(&v34 + 1) <= a4)
    {
      if (v15 + *(&v34 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4855, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v15);
      v15 = v35[0];
      a5 += a4 - (v35[0] + *(&v34 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v35[0] + *(&v34 + 1);
    }

    v32 = v34;
    v16 = v15 + a5;
    v33 = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v32;
      v29 = 8;
      v30 = 16;
      v17 = bt_lookup_variant(v36, 0, &v34, &v30, 16, v35, &v29, 4, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v29 = 8 * (v16 != 1);
        v13 = bt_insert(v36, 0, &v32, 16, &v33, v29, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v22 = v12 + 40 * a3;
          v25 = *(v22 + 200);
          v23 = (v22 + 200);
          v24 = v25;
          if (!v25)
          {
            v23[2] = a6;
          }

          *v23 = v24 + a5;
          pthread_mutex_unlock((a2 + 576));
          obj_dirty(a2, a6, 0);
          if (v31)
          {
            v26 = bt_remove(v36, 0, &v31, 0x10u, a6);
            if (v26)
            {
              log_err("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (*(a1 + 384) + 212), v26);
            }
          }

          if (spaceman_fq_tree_over_threshold(a2, a3, v36, 0))
          {
            memset(v28, 0, sizeof(v28));
            sub_100015E54(a1, v28, 0, 0);
              ;
            }

            sub_100016780(a1, v28);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v17;
      if (!v17)
      {
        if (v34 == a6)
        {
          if (v29)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v32 + 1);
          if (*(&v34 + 1) <= v16 + *(&v32 + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v32 + 1))
            {
              v20 = v18 + *(&v34 + 1);
              log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                v33 = v16;
              }

              if (v20 >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = v20;
              }

              a5 = a5 - v21 + *(&v34 + 1);
            }

            else
            {
              v16 += v18;
              v33 = v16;
            }

            v31 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      obj_release(v36);
      return v13;
    }

LABEL_13:
    *&v32 = a6;
    *(&v32 + 1) = a4;
    v16 = a5;
    v33 = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10001DD08(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, int *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 48);
  if (v13 <= a5 || v13 - a5 < a4)
  {
    log_err("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", "spaceman_check_allocation_status_internal", 8850, (*(a1 + 384) + 212), a4, a5, "main", *(v12 + 48));
    return 22;
  }

  v57 = 0;
  v58 = 0;
  if (a5 <= 0)
  {
    is_set = 0;
    overlap = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!overlap && is_set)
      {
        v56 = 0;
        overlap = spaceman_fq_tree_find_overlap(a1, v11, 1u, v9, v8, &v56);
        if (((overlap == 0) & v56) != 0)
        {
          is_set = 0;
        }
      }
    }

LABEL_62:
    if (overlap)
    {
      log_debug("%s:%d: %s %lld:%lld error: %d\n", "spaceman_check_allocation_status_internal", 8981, (*(a1 + 384) + 212), v9, v8, overlap);
    }

    goto LABEL_64;
  }

  is_set = 0;
  v17 = 0;
  v18 = a5 + a4;
  v53 = a3 & 3;
  v19 = -1;
  while (1)
  {
    v20 = *(v12 + 40);
    v21 = v9 / *(v12 + 36);
    v52 = v21;
    v22 = v21 / v20;
    if (*(v12 + 68))
    {
      v23 = *(v12 + 44);
      v24 = v22 / v23;
      v25 = v21 / v20;
      if (v22 / v23 == v19)
      {
LABEL_16:
        LODWORD(v28) = v22 - v23 * v19;
        LODWORD(v22) = v25;
        goto LABEL_18;
      }

      v26 = *(*(v11 + 896) + 8 * v24);
      if (v61)
      {
        obj_release(v61);
        v61 = 0;
      }

      v57 = v12;
      LODWORD(v58) = 0;
      HIDWORD(v58) = v24;
      v27 = obj_get(*(a1 + 392), 0x40000000, v26, &sm_cab_desc, &v57, 0, 0, 0, &v61);
      if (!v27)
      {
        v17 = v61[7] + 40;
        v23 = *(v12 + 44);
        v19 = v24;
        v25 = v52 / *(v12 + 40);
        goto LABEL_16;
      }

      v44 = v27;
      log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8877, (*(a1 + 384) + 212), v24, v26, v27);
      overlap = v44;
LABEL_57:
      v9 = a4;
      v7 = a6;
      v8 = a5;
      if (!v53)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v17 = *(v11 + 896);
    v28 = v21 / v20;
LABEL_18:
    v57 = v12;
    LODWORD(v58) = 0;
    HIDWORD(v58) = v22;
    if (!v17)
    {
      overlap = 22;
      goto LABEL_57;
    }

    v50 = v19;
    v51 = v17;
    v29 = *(v17 + 8 * v28);
    v30 = obj_get(*(a1 + 392), 0x40000000, v29, &sm_cib_desc, &v57, 0, 0, 0, &v60);
    if (v30)
    {
      overlap = v30;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8902, (*(a1 + 384) + 212), v52 / *(v12 + 40), v29, v30);
      goto LABEL_57;
    }

    if (v9 < v18)
    {
      break;
    }

    overlap = 0;
LABEL_46:
    obj_release(v60);
    v60 = 0;
    if (!overlap)
    {
      v17 = v51;
      v19 = v50;
      if (v9 < v18)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v31 = v52 % *(v12 + 40);
  v32 = v60[7];
  while (1)
  {
    if (v31 >= *(v32 + 36))
    {
LABEL_42:
      overlap = 0;
LABEL_45:
      v11 = a2;
      goto LABEL_46;
    }

    v33 = v32 + 40 + 32 * v31;
    v34 = *(v33 + 24);
    if (!v34)
    {
      break;
    }

    v35 = obj_get(*(a1 + 392), 0x40000000, v34, &sm_bm_desc, 0, 0, 0, 0, &v59);
    if (v35)
    {
      overlap = v35;
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8929, (*(a1 + 384) + 212), v52 / *(v12 + 40), v31, v34, v35);
      goto LABEL_45;
    }

    v36 = v59[7];
    v37 = *(v12 + 36);
    v38 = v9 % v37;
    v39 = v37 - v9 % v37;
    if (v18 - v9 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v18 - v9;
    }

    if (a3)
    {
      is_clear = bitmap_range_is_clear(v36, v38, v40, v39);
      v43 = a3 & 2 | is_clear;
      is_set = is_clear == 0;
      obj_release(v59);
      v59 = 0;
      if (!v43)
      {
        overlap = 0;
        is_set = 1;
        goto LABEL_53;
      }
    }

    else if ((a3 & 2) != 0)
    {
      *a7 += bitmap_count_bits(v36, 0, v38, v40 + v38);
      obj_release(v59);
      v59 = 0;
    }

    else
    {
      is_set = bitmap_range_is_set(v36, v38, v40);
      obj_release(v59);
      v59 = 0;
      if (!is_set)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v9 += v40;
    ++v31;
    if (v9 >= v18)
    {
      goto LABEL_42;
    }
  }

  if (v53)
  {
    v41 = (*(v33 + 20) & 0xFFFFF) + v9 / *(v12 + 36) * *(v12 + 36) - v9;
    if (v18 - v9 >= v41)
    {
      v40 = v41;
    }

    else
    {
      v40 = v18 - v9;
    }

    is_set = 0;
    if (a7)
    {
      *a7 += v40;
    }

    goto LABEL_41;
  }

  is_set = 0;
LABEL_52:
  overlap = 0;
LABEL_53:
  v7 = a6;
LABEL_64:
  if (v61)
  {
    obj_release(v61);
  }

  if (v60)
  {
    obj_release(v60);
  }

  if (v59)
  {
    obj_release(v59);
  }

  *v7 = is_set;
  return overlap;
}

uint64_t spaceman_reserve(void *a1, unsigned int a2, uint64_t a3, unint64_t a4, unsigned int *a5)
{
  v9 = a1;
  v34 = a3;
  if (obj_type(a1) == 13)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = v10[49];
  }

  v33 = 0;
  v35 = 0;
  v32 = 0;
  v11 = a2 & 0x30000;
  if ((a2 & 0x30000) == 0x30000)
  {
    sub_1000A47CC();
  }

  if (a3 < 1)
  {
    return 22;
  }

  v12 = spaceman_get(v9, &v33);
  if (!v12)
  {
    v12 = sub_10001AA14(v33, a2, &v35, &v32, (*(v9[47] + 48) >> 1) & 1);
    v13 = v33;
    if (!v12)
    {
      pthread_mutex_lock(v33 + 6);
      v14 = v32;
      v15 = &v35;
      do
      {
        if (!v14)
        {
          pthread_mutex_unlock(v33 + 6);
          v12 = 28;
          goto LABEL_36;
        }

        v16 = *v15;
        if (!v11)
        {
          spaceman_entitled_reserve_active(0, v33);
        }

        v17 = sub_10001AAEC(v9, v10, v33, v16, a2, &v34, a4);
        --v14;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v12 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v33 + 6);
      }

      else
      {
        pthread_mutex_lock(v33 + 9);
        v18 = v33;
        v19 = v34;
        v20 = &v33->__sig + v16;
        v21 = v20[104] + v34;
        v20[104] = v21;
        if (v21 > *(*&v18[5].__opaque[48] + 48 * v16 + 72))
        {
          sub_1000A47A0();
        }

        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v22 = v10[51] + v19;
          v10[51] = v22;
          v23 = v10[47];
          v24 = *(v23 + 72);
          if (v24)
          {
            v25 = *(v23 + 88);
            v26 = v24 >= v25;
            v27 = v24 - v25;
            if (!v26)
            {
              v27 = 0;
            }

            if (v27 < v22)
            {
              v22 = v27;
            }

            v28 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v22;
            *&v18[13].__opaque[24] = v28 + v22;
          }
        }

        if (v16 == 1)
        {
          v29 = 16;
        }

        else
        {
          v29 = 8;
        }

        v30 = v29 | a2 & 0x40;
        *a5 = v30;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v30 | v11;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v33 + 6);
        v12 = 0;
      }

LABEL_36:
      v13 = v33;
    }

    obj_release(v13);
  }

  return v12;
}

uint64_t spaceman_unreserve(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  if (v6)
  {
    v7 = v6[49];
  }

  v29 = 0;
  if ((a2 & 0x18) == 0)
  {
    sub_1000A4824();
  }

  if ((~a2 & 0x30000) == 0)
  {
    sub_1000A47F8();
  }

  v8 = spaceman_get(v7, &v29);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v29 + 384));
    pthread_mutex_lock((v29 + 576));
    if (*(v29 + 832 + 8 * v9) < *(v29 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, *(v29 + 832), *(v29 + 848));
    }

    v11 = v29;
    v12 = *(v29 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v12 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v29 + 848 + 8 * v9), a3);
      }

      *(v29 + 848 + 8 * v9) = v12 - a3;
      *(v11 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_37:
        v20 = v29;
        if ((a2 & 0x10000) == 0)
        {
LABEL_44:
          pthread_mutex_unlock((v20 + 576));
          pthread_mutex_unlock((v29 + 384));
          obj_release(v29);
          return v8;
        }

LABEL_38:
        v25 = *(v20 + 1632);
        v22 = v25 >= a3;
        v26 = v25 - a3;
        if (v22)
        {
          *(v20 + 1632) = v26;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v27 = (a1 + 4048);
          }

          else
          {
            v27 = (*(a1 + 384) + 212);
          }

          log_err("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9216, v27, *(v29 + 1632), a3);
          v20 = v29;
          *(v29 + 1632) = 0;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v13 = *(v29 + 832 + 8 * v9);
      if (v13 - v12 >= a3)
      {
        *(v29 + 832 + 8 * v9) = v13 - a3;
        if (!v6)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (obj_type(a1) == 13)
        {
          v14 = (a1 + 4048);
        }

        else
        {
          v14 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_unreserve", 9191, v14, *(v29 + 8 * v9 + 832) - v12, v12, a3);
        *(v29 + 8 * v9 + 832) = v12;
        if (!v6)
        {
          goto LABEL_37;
        }
      }
    }

    v15 = v6[51];
    v16 = v15 - a3;
    if (v15 < a3)
    {
      if (obj_type(a1) == 13)
      {
        v17 = (a1 + 4048);
      }

      else
      {
        v17 = (*(a1 + 384) + 212);
      }

      log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9200, v17, v6[51], a3);
      v16 = 0;
    }

    v6[51] = v16;
    v18 = v6[47];
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = *(v18 + 88);
      v22 = v19 >= v21;
      v23 = v19 - v21;
      if (!v22)
      {
        v23 = 0;
      }

      if (v23 < v16)
      {
        v16 = v23;
      }

      v24 = *(v29 + 864) - v6[52];
      v6[52] = v16;
      *(v20 + 864) = v24 + v16;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  return v8;
}

uint64_t spaceman_fs_bounds_set(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v63 = 0;
  v10 = spaceman_get(a1, &v63);
  if (!v10)
  {
    v11 = *&v63[5].__opaque[48];
    v10 = obj_modify(&v63->__sig, 0, a5);
    if (!v10)
    {
      pthread_mutex_lock(v63 + 8);
      pthread_mutex_lock(v63 + 6);
      pthread_mutex_lock(v63 + 9);
      v14 = *(a2 + 376);
      v15 = *(v14 + 72);
      v16 = a3 - v15;
      if ((a3 - v15) < 0 && v11[23] < v15 - a3)
      {
        v12 = nx_corruption_detected_int(a1);
LABEL_54:
        pthread_mutex_unlock(v63 + 9);
        pthread_mutex_unlock(v63 + 6);
        pthread_mutex_unlock(v63 + 8);
        obj_release(v63);
        return v12;
      }

      if (a4 && a3 > a4)
      {
        log_err("%s:%d: %s Quota %llu is smaller than reserve %llu\n");
LABEL_11:
        v12 = 22;
        goto LABEL_54;
      }

      if (a4)
      {
        v17 = *(a2 + 408) + *(v14 + 88);
        if (v17 > a4)
        {
          log_err("%s:%d: %s Quota %llu is smaller than what's currently allocated and reserved %llu\n", "spaceman_fs_bounds_set", 9281, (a2 + 4048), a4, v17);
          v12 = 69;
          goto LABEL_54;
        }
      }

      if (v16 < 1)
      {
        if (v16 < 0)
        {
          v59 = *&v63[25].__opaque[8];
          if (v59)
          {
            v60 = v15 - *(v14 + 88);
            if (v60 >= 1)
            {
              v61 = *&v63[25].__opaque[16];
              if (v61 < v59)
              {
                if (v60 >= v15 - a3)
                {
                  v60 = v15 - a3;
                }

                v62 = v61 + v60;
                if (v62 >= v59)
                {
                  v62 = *&v63[25].__opaque[8];
                }

                *&v63[25].__opaque[16] = v62;
              }
            }
          }
        }
      }

      else
      {
        spaceman_entitled_reserve_active(a1, v63);
        v18 = *&v63[5].__opaque[48];
        v19 = v18[30] + v18[9] + *&v63[15].__opaque[16] + v18[15] + v18[35] + *&v63[15].__opaque[24];
        v21 = v18[23];
        v20 = v18[24];
        v22 = v21 >= v20;
        v23 = v21 - v20;
        if (!v22)
        {
          v23 = 0;
        }

        v24 = *v63[13].__opaque + v63[13].__sig;
        v25 = *&v63[13].__opaque[24];
        v22 = v24 >= v25;
        v26 = v24 - v25;
        if (!v22)
        {
          v26 = 0;
        }

        v27 = v26 + v23;
        v22 = v19 >= v27;
        v28 = v19 - v27;
        if (v22)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = *&v63[25].__opaque[8];
        if (v30)
        {
          v31 = *&v63[25].__opaque[24];
          v22 = v26 >= v31;
          v32 = v26 - v31;
          if (!v22)
          {
            v32 = 0;
          }

          v33 = *&v63[25].__opaque[16];
          v34 = *&v63[25].__opaque[32];
          v22 = v33 >= v34;
          v35 = v33 - v34;
          if (!v22)
          {
            v35 = 0;
          }

          v22 = v35 >= v31;
          v36 = v35 - v31;
          if (!v22)
          {
            v36 = 0;
          }

          v37 = *&v63[25].__opaque[40];
          v38 = *&v63[25].__opaque[48];
          v22 = v37 >= v38;
          v39 = v37 - v38;
          if (!v22)
          {
            v39 = 0;
          }

          v22 = v39 >= v32;
          v40 = v39 - v32;
          if (!v22)
          {
            v40 = 0;
          }

          v41 = v40 + v36;
          v22 = v29 >= v41;
          v42 = v29 - v41;
          if (!v22)
          {
            v42 = 0;
          }

          v29 = v42 + v40;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        if (v16 > v29)
        {
          goto LABEL_53;
        }

        v56 = v11[12] + v11[6];
        v57 = 50;
        if (v56 >> 2 > 0x4FA)
        {
          v57 = v56 / 0x64;
        }

        if (v11[23] + v16 > v56 - v57)
        {
          log_err("%s:%d: %s %llu blocks are already reserved in container, Cannot reserve more than %llu blocks in the container\n");
          goto LABEL_11;
        }

        if (v30)
        {
          v58 = v16 - v42;
          if (v16 > v42)
          {
            if (v58 > v40)
            {
LABEL_53:
              v12 = 28;
              goto LABEL_54;
            }

            *&v63[25].__opaque[48] += v58;
          }
        }
      }

      v43 = v11[23] + v16;
      v44 = *(a2 + 376);
      v45 = v44[11];
      if (v44[9] >= v45)
      {
        v46 = v44[11];
      }

      else
      {
        v46 = v44[9];
      }

      if (v45 >= a3)
      {
        v47 = a3;
      }

      else
      {
        v47 = v44[11];
      }

      v48 = v11[24] + v47;
      v44[9] = a3;
      v11[23] = v43;
      v11[24] = v48;
      v49 = v48 - v46;
      if (v48 < v46)
      {
        log_err("%s:%d: %s sm_fs_reserve_alloc_count underflow, sm_fs_reserve_alloc_count %lld, new fs_reserve_block_count %lld, old fs_reserve_block_count %lld alloc_count %lld\n", "spaceman_fs_bounds_set", 9375, (a2 + 4048), v48, a3, v15, v45);
        v49 = 0;
        v44 = *(a2 + 376);
      }

      v11[24] = v49;
      v44[10] = a4;
      obj_dirty(v63, a5, 0);
      fs_sb_dirty(a2, a5);
      v12 = 0;
      v50 = *(a2 + 376);
      v51 = *(v50 + 72);
      v52 = *(v50 + 88);
      v22 = v51 >= v52;
      v53 = v51 - v52;
      if (!v22)
      {
        v53 = 0;
      }

      v54 = *(a2 + 416);
      if (v53 >= *(a2 + 408))
      {
        v53 = *(a2 + 408);
      }

      v55 = v63;
      *(a2 + 416) = v53;
      *&v55[13].__opaque[24] += v53 - v54;
      goto LABEL_54;
    }
  }

  return v10;
}

uint64_t spaceman_fs_bounds_clear(void *a1, uint64_t a2, unint64_t a3)
{
  v29 = 0;
  result = spaceman_get(a1, &v29);
  if (!result)
  {
    v6 = *&v29[5].__opaque[48];
    result = obj_modify(&v29->__sig, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v29 + 6);
      pthread_mutex_lock(v29 + 9);
      v7 = *(a2 + 376);
      v8 = v7[9];
      v9 = v7[11];
      v10 = v9;
      if (v9)
      {
        v11 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, (a2 + 4048), v11, v9, v8);
        v7 = *(a2 + 376);
        if (v7[9])
        {
          goto LABEL_8;
        }
      }

      else if (v8)
      {
        goto LABEL_8;
      }

      if (!v7[10])
      {
        v21 = v29;
LABEL_26:
        pthread_mutex_unlock(v21 + 9);
        pthread_mutex_unlock(v29 + 6);
        obj_release(v29);
        return 0;
      }

LABEL_8:
      if (v9 > v8)
      {
        v12 = v7[10];
        v10 = v8;
        if (v12)
        {
          v10 = v8;
          if (v9 > v12)
          {
            sub_1000A4850();
          }
        }
      }

      v13 = *(v6 + 184);
      if (v13 < v8)
      {
        v14 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, (a2 + 4048), v14, v8, *(v6 + 184));
        v13 = *(v6 + 184);
        v8 = v13;
      }

      *(v6 + 184) = v13 - v8;
      v15 = *(v6 + 192);
      if (v15 < v10)
      {
        v16 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, (a2 + 4048), v16, v10, *(v6 + 192));
        v15 = *(v6 + 192);
        v10 = v15;
      }

      *(v6 + 192) = v15 - v10;
      p_sig = &v29->__sig;
      v18 = *&v29[25].__opaque[8];
      if (v18)
      {
        if (v8 > v10)
        {
          v19 = *&v29[25].__opaque[16];
          if (v19 < v18)
          {
            if (v8 - v10 + v19 < v18)
            {
              v18 = v8 - v10 + v19;
            }

            *&v29[25].__opaque[16] = v18;
          }
        }
      }

      v20 = *(a2 + 376);
      *(v20 + 72) = 0;
      *(v20 + 80) = 0;
      obj_dirty(p_sig, a3, 0);
      fs_sb_dirty(a2, a3);
      v21 = v29;
      v22 = *(a2 + 376);
      v23 = *(v22 + 72);
      v24 = *(v22 + 88);
      v25 = v23 >= v24;
      v26 = v23 - v24;
      if (!v25)
      {
        v26 = 0;
      }

      v27 = *(a2 + 416);
      if (v26 >= *(a2 + 408))
      {
        v26 = *(a2 + 408);
      }

      v28 = *&v29[13].__opaque[24];
      *(a2 + 416) = v26;
      *&v21[13].__opaque[24] = v26 - v27 + v28;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t spaceman_unset_block_out_range(void *a1, unint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v5 = spaceman_get(a1, &v10);
  if (!v5)
  {
    v6 = *(v10 + 376);
    v5 = obj_modify(v10, 0, a2);
    v7 = v10;
    if (!v5)
    {
      pthread_mutex_lock((v10 + 512));
      pthread_mutex_lock((v10 + 384));
      v5 = sub_10001DD08(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
      pthread_mutex_lock((v10 + 576));
      *(v6 + 72) += v9;
      pthread_mutex_unlock((v10 + 576));
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock((v10 + 384));
      pthread_mutex_unlock((v10 + 512));
      obj_dirty(v10, a2, 0);
      v7 = v10;
    }

    obj_release(v7);
  }

  return v5;
}

BOOL sub_10001EF94(_BOOL8 result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 376);
  v4 = *(result + 1496);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v7 = *(result + 1592);
    if (v7)
    {
      ++*(v7 + 112);
    }

    if (*(v3 + 56) - 1 == a3)
    {
      v8 = *(v3 + 48) % *(v3 + 36);
    }

    else
    {
      v8 = *(v3 + 36);
    }

    *(v4 + 4 * a3) = (*(v4 + 4 * a3) & 0xFEFFFFFF | ((*a2 & 1) << 24)) ^ 0x1000000;
    result = bitmap_range_find_clear_range(a2, 0xFFFFFFLL, 0, v8, &v11, &v10);
    if (v8 < 0x40 || (*&a2[2 * (v8 >> 6) - 2] & 0x8000000000000000) != 0)
    {
      v9 = *(v4 + 4 * a3) & 0xFDFFFFFF;
    }

    else
    {
      v9 = *(v4 + 4 * a3) | 0x2000000;
    }

    *(v4 + 4 * a3) = v9 & 0xFF000000 | v10 & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_10001F07C(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0;
    v7.tv_nsec = 0;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
    tv_sec = v7.tv_sec;
    tv_nsec = v7.tv_nsec;
    *a2 = v7.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v6 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 32) = v6;
    if (v6 - *(a2 + 24) >= 1000 * *(a2 + 60))
    {
      atomic_fetch_add_explicit((*(v3 + 384) + 152), 1uLL, memory_order_relaxed);
      ++*(a2 + 56);
      *(a2 + 24) = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_10001F150(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 164) & 0x7FFFFFFF;
  if (v6 <= a3)
  {
    return 22;
  }

  v7 = *(v5 + 322);
  if (v7 == 0xFFFF)
  {
    v8 = *(a2 + 888);
    goto LABEL_7;
  }

  if (v6 > v7)
  {
    v8 = *(a2 + 888);
    *(v8 + 2 * *(v5 + 322)) = a3;
LABEL_7:
    *(v8 + 2 * a3) = -1;
    *(v5 + 322) = a3;
    if (*(v5 + 320) == -1)
    {
      *(v5 + 320) = a3;
    }

    obj_dirty(a2, a4, 0);
    return 0;
  }

  return nx_corruption_detected_int(a1);
}

void sub_10001F1F8(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = *(a2 + 376) + 40 * a3;
  v6 = *(v4 + 200);
  v5 = (v4 + 200);
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    *v5 = v7;
  }

  else
  {
    if (nx_ratelimit_log_allowed(result))
    {
      log_err("%s:%d: %s sfq %d count underflow %lld - %lld\n", "spaceman_decrement_free_queue_count", 6155, (*(result + 384) + 212), a3, *(*(a2 + 376) + 40 * a3 + 200), a4);
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }
}

uint64_t sub_10001F2B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0;
  result = spaceman_ip_block_index(a1, a2, a3, &v9);
  if (result == 2)
  {
    return 22;
  }

  if (result)
  {
    return result;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= a4 || v9 > (v7 & 0x7FFFFFFFFFFFFFFFuLL) - a4)
  {
    return 22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

void sub_10001F338(void *result, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_10001F07C(result, a4);
  v12 = v10;
  if (v11 < v10)
  {
    v13 = 16 * v11;
    v14 = v10 - v11;
    do
    {
      dev_unmap(result[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  dev_unmap_flush(result[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v15 = 384;
  }

  else
  {
    v15 = 448;
  }

  pthread_mutex_lock((a2 + v15));
  if (v11 < v10)
  {
    v16 = 16 * v11;
    v17 = v12 - v11;
    do
    {
      v18 = (*(a2 + 1544) + v16);
      v19 = *v18;
      v20 = v18[1];
      if (a3)
      {
        sub_10001F6F0(result, a2, v19, v20, 1, a5);
      }

      else
      {
        sub_10001F49C(result, a2, v19, v20, a5);
      }

      v16 += 16;
      --v17;
    }

    while (v17);
  }

  if (a3)
  {
    pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }
}

void sub_10001F49C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v25 = 0;
  if (xid_is_current_tx(a1, a5))
  {
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v11 = sub_10001F2B8(a1, a2, a3, a4, &v26);
    if (v11)
    {
      if (v11 == 22)
      {
        log_err("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n");
      }

      else
      {
        log_err("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n");
      }
    }

    else
    {
      v12 = 8 * *(v10 + 32);
      if (v12)
      {
        v13 = a4 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v12;
        v15 = v26;
        v21 = v10;
        do
        {
          v16 = v15 / v14;
          v17 = *(a2[110] + 2 * (v15 / v14));
          if (spaceman_ip_bm_block_address(a1, v10, v17, &v24) || obj_get(*(a1 + 392), 1073741825, v24, &sm_bm_desc, 0, 0, 0, a5, &v25))
          {
            break;
          }

          v18 = v25[7];
          v19 = v26 % v14;
          if (a4 >= (v14 - v26 % v14))
          {
            v20 = v14 - v26 % v14;
          }

          else
          {
            v20 = a4;
          }

          if (*(a2[109] + 8 * v16) != a5)
          {
            v23 = 0;
            v22 = 0;
            if (sub_100014CC0(a1, a2, a5, &v23, &v22) || sub_10001F150(a1, a2, v17, a5))
            {
              obj_release(v25);
              return;
            }

            v24 = v23;
            *(a2[110] + 2 * v16) = v22;
            *(a2[109] + 8 * v16) = a5;
          }

          if (!bitmap_range_is_set(v18, v19, v20))
          {
            sub_1000A487C();
          }

          bitmap_clear_range(v18, v19, v20);
          obj_dirty(v25, a5, v24);
          obj_release(v25);
          v15 = v26 + v20;
          v26 += v20;
          v13 = a4 <= v20;
          a4 -= v20;
          v10 = v21;
        }

        while (!v13);
      }
    }
  }
}

uint64_t sub_10001F6F0(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t a6)
{
  if (a4)
  {
    spaceman_handle_metazone_freed(a1, a2, a3);
  }

  v12 = sub_10001C358(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    spaceman_free_extent_cache_insert(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

unint64_t sub_10001F78C(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = result;
  v8 = *(result + 376);
  v9 = a2;
  v10 = *(v8 + 48 * a2 + 56);
  v11 = a4[1];
  v12 = *(v8 + 36);
  v13 = *a4 / v12;
  v14 = result + 1496;
  v15 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v10 < v16)
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v12 >= 0xFFFFFF)
  {
    v17 = 0xFFFFFF;
  }

  else
  {
    v17 = *(v8 + 36);
  }

  if (v15 == v17 || v16 < 2)
  {
    v19 = *a4 / v12;
    LODWORD(v20) = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
    goto LABEL_37;
  }

  v21 = v16 - 1;
  v22 = v13 + 1;
  v23 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  v24 = *a4 / v12;
  do
  {
    v19 = v22 % v10;
    v25 = *(v14 + 8 * v9);
    v26 = *(v25 + 4 * (v22 % v10));
    LODWORD(v20) = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFFu) > v15)
    {
      v13 = v22 % v10;
      v15 = v26 & 0xFFFFFF;
    }

    if (v20 > v23)
    {
      if (*(v6 + 16) == 1)
      {
        if ((v26 & 0xC000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = *(v7 + 376);
        v28 = v27 + 48 * v9;
        v29 = *(v28 + 56);
        if (v29 > v19)
        {
          v30 = v6[4];
          if (v30)
          {
            v46 = v24;
            v47 = v7;
            v49 = v11;
            v50 = v8;
            v31 = *(v27 + 36);
            v32 = v31;
            if (v29 - 1 == v19)
            {
              v32 = *(v28 + 48) % v31;
            }

            v48 = v6;
            result = calc_overlap_range(v19 * v31, v32, v6[3], v30, 0);
            v6 = v48;
            v11 = v49;
            v8 = v50;
            v24 = v46;
            v7 = v47;
            if (result)
            {
              goto LABEL_34;
            }

            LODWORD(v20) = *(v25 + 4 * v19) & 0xFFFFFF;
          }
        }
      }

      LODWORD(v12) = *(v8 + 36);
      if (v12 >= 0xFFFFFF)
      {
        v33 = 0xFFFFFF;
      }

      else
      {
        v33 = *(v8 + 36);
      }

      if (v11 <= v20 || v20 == v33)
      {
        goto LABEL_36;
      }

      v24 = v22 % v10;
      v23 = v20;
    }

LABEL_34:
    ++v22;
    --v21;
  }

  while (v21);
  LODWORD(v12) = *(v8 + 36);
  v19 = v24;
  LODWORD(v20) = v23;
LABEL_36:
  v12 = v12;
  v5 = a5;
LABEL_37:
  v35 = v19 * v12;
  if (v11 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v11;
  }

  *v5 = v35;
  *(v5 + 8) = v20;
  if (*(v6 + 16) == 1)
  {
    v36 = *(v7 + 376);
    v37 = v36 + 48 * v9;
    v38 = *(v37 + 56);
    if (v38 > v19 && (v39 = v6[4]) != 0)
    {
      v40 = *(v36 + 36);
      v41 = v19 * v40;
      v42 = v11;
      v43 = v8;
      if (v38 - 1 == v19)
      {
        v40 = *(v37 + 48) % v40;
      }

      result = calc_overlap_range(v41, v40, v6[3], v39, 0);
      v44 = result == 0;
      v8 = v43;
      v11 = v42;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  *(v5 + 16) = v44;
  if (v19 != v13)
  {
    v45 = v15;
    if (v11 < v15)
    {
      v45 = v11;
    }

    *(v5 + 24) = v13 * *(v8 + 36);
    *(v5 + 32) = v45;
    *(v5 + 40) = 0;
  }

  return result;
}

uint64_t sub_10001FA08(uint64_t a1, pthread_mutex_t *a2, unint64_t a3, unint64_t a4)
{
  v8 = 22;
  if (xid_is_current_tx(a1, a4))
  {
    pthread_mutex_lock(a2 + 7);
    v9 = spaceman_ip_block_index(a1, a2, a3, &v11);
    if (v9 == 2)
    {
      v8 = 22;
    }

    else
    {
      v8 = v9;
    }

    if (!v8)
    {
      v8 = sub_10001D930(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t omap_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t omap_snapshot_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t omap_map_tree_get(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v7 = a3;
  v9 = *(a2 + 472);
  if ((a3 & 1) == 0 && v9)
  {
    *a5 = v9;
    obj_retain(v9);
    return 0;
  }

  if (v9)
  {
    *a5 = v9;
    obj_retain(v9);
    if ((v7 & 1) == 0)
    {
LABEL_6:
      if (obj_oid(*a5) != *(*(a2 + 376) + 48))
      {
        sub_1000A48A8();
      }

      return 0;
    }

    v16 = obj_modify(*a5, (*(*(a2 + 376) + 40) >> 29) & 2, a4);
    if (v16)
    {
      extended = v16;
      obj_release(*a5);
      *a5 = 0;
      return extended;
    }

LABEL_18:
    if (obj_oid(*a5) != *(*(a2 + 376) + 48))
    {
      *(*(a2 + 376) + 48) = obj_oid(*a5);
      obj_dirty(a2, a4, 0);
    }

    goto LABEL_6;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  v17[1] = 0;
  v18 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17[0] = omap_key_cmp;
  v17[2] = 0x20000000BLL;
  if (v13 != 2)
  {
    return 22;
  }

  extended = btree_get_extended(a1, v13 & 0xFFFF0000, v14, 0, v7, v17, a4, a5);
  if (!extended)
  {
    v15 = 0;
    atomic_compare_exchange_strong((a2 + 472), &v15, *a5);
    if (!v15)
    {
      obj_retain(*a5);
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  return extended;
}

uint64_t sub_10001FD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 4);
  return result;
}

uint64_t sub_10001FD38(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 44);
  v4 = v3 == 1073741826 || v3 == -2147483646;
  if (v4 && ((v5 = *(v2 + 40), v5 != -2147483646) ? (v6 = v5 == 1073741826) : (v6 = 1), v6) || (result = nx_corruption_detected_int(*(*a1 + 392)), !result))
  {
    result = 0;
    a1[47] = v2;
  }

  return result;
}

uint64_t sub_10001FDB0(void *a1)
{
  v2 = a1[59];
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  return 0;
}

uint64_t sub_10001FDE8(uint64_t *a1, char a2, int *a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v8 = a1[47];
  v9 = a1[1];
  v10 = *(*a1 + 392);
  if (v9)
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *(*a1 + 392);
  }

  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v12 = *(*(v10 + 376) + 36);
  if ((a2 & 2) == 0)
  {
    if (*a3)
    {
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 1;
      if (v9)
      {
LABEL_7:
        extended = obj_modify(v9, 0, a5);
        if (extended)
        {
          if (obj_type(v9) == 13)
          {
            v14 = (v9 + 506);
          }

          else
          {
            v14 = (v9[48] + 212);
          }

          log_err("%s:%d: %s obj_modify() failed: %d\n", "omap_reap", 309, v14, extended);
        }

LABEL_30:
        v21 = *a3;
        if (*a3 == 1)
        {
          v124 = 0;
          *&v113[0] = 0;
          spaceman_currently_available_space(v11, 0, &v124, v113, 0, 0);
          v22 = omap_map_tree_get(v11, a1, 0, 0, &v108);
          if (v22)
          {
            extended = v22;
            if (obj_type(v11) == 13)
            {
              v23 = (v11 + 4048);
            }

            else
            {
              v23 = (*(v11 + 384) + 212);
            }

            log_err("%s:%d: %s failed to get omap tree for reaping: %d\n", "omap_reap", 322, v23, extended);
            return extended;
          }

          v24 = v12;
          v25 = 0;
          v26 = 1024;
          if (*&v113[0] < 0x7D1uLL)
          {
            v26 = 102;
          }

          if (*&v113[0] >= 0x3E9uLL)
          {
            v27 = v26;
          }

          else
          {
            v27 = 51;
          }

          v107 = 0x1000000010;
          v101 = v24;
          v99 = v24 - 1;
          v103 = v27;
          v106 = (v11 + 4048);
          while (1)
          {
            v28 = bt_lookup_variant(v108, 0, a3 + 1, &v107 + 1, 16, &v109, &v107, 4, 0, 0);
            if (v28)
            {
              break;
            }

            if (v109)
            {
              v107 = 0x1000000010;
            }

            else
            {
              v93 = v8;
              v29 = (v99 + HIDWORD(v109)) / v101;
              v30 = spaceman_free(v11, 64, v110, v29, v5);
              if (v30)
              {
                v31 = v30;
                v32 = obj_type(v11);
                v33 = (v11 + 4048);
                if (v32 != 13)
                {
                  v33 = (*(v11 + 384) + 212);
                }

                log_err("%s:%d: %s spaceman_free(%lld, %lld) failed: %d\n", "omap_reap", 349, v33, v110, v29, v31);
              }

              obj_cache_remove(*(v10 + 392), v9, *(a3 + 1), *(a3 + 2));
              v25 += v29;
              if (v25 >= v103)
              {
                extended = 36;
                v8 = v93;
                goto LABEL_67;
              }

              v107 = 0x1000000010;
              v8 = v93;
            }
          }

          extended = v28;
          if (v28 != 36)
          {
            extended = btree_delete(v108, v5, 0);
            if (extended)
            {
              if (obj_type(v11) != 13)
              {
                v106 = (*(v11 + 384) + 212);
              }

              log_err("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 373, v106, extended);
            }

            *a3 = 2;
          }

LABEL_67:
          obj_release(v108);
          v21 = *a3;
        }

        if (v21 != 2)
        {
          return extended;
        }

        v38 = *(v8 + 56);
        if (v38)
        {
          v39 = *(v8 + 44);
          v125 = 0u;
          v130 = 0;
          v129 = 0u;
          v128 = 0u;
          v127 = 0u;
          v126 = 0u;
          v124 = omap_snapshot_key_cmp;
          DWORD2(v125) = 19;
          if (v39 == 2)
          {
            extended = btree_get_extended(v11, v39 & 0xFFFF0000, v38, 0, 0, &v124, 0, &v108);
            if (!extended)
            {
              extended = btree_delete(v108, v5, 0);
              if (extended)
              {
                if (obj_type(v11) == 13)
                {
                  v40 = (v11 + 4048);
                }

                else
                {
                  v40 = (*(v11 + 384) + 212);
                }

                log_err("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 390, v40, extended);
              }

              obj_release(v108);
              goto LABEL_80;
            }
          }

          else
          {
            extended = 22;
          }

          if (obj_type(v11) == 13)
          {
            v41 = (v11 + 4048);
          }

          else
          {
            v41 = (*(v11 + 384) + 212);
          }

          log_err("%s:%d: %s failed to get omap snapshot tree for reaping: %d\n", "omap_reap", 386, v41, extended);
        }

LABEL_80:
        obj_delete_and_free(a1, v5);
        *a3 = -1;
        return extended;
      }
    }

    extended = 0;
    goto LABEL_30;
  }

  v122 = 0;
  v123 = 0;
  v120[1] = 0;
  v121 = 0;
  v120[0] = 0;
  v119 = 0uLL;
  v118 = 0uLL;
  v117 = 0uLL;
  v116 = 0uLL;
  v114 = 0;
  v115 = 0;
  memset(v113, 0, sizeof(v113));
  v111 = 0;
  v112 = 0;
  spaceman_currently_available_space(v11, 0, &v112, &v111, 0, 0);
  if (v111 >= 0x7D1)
  {
    v15 = 1024;
  }

  else
  {
    v15 = 102;
  }

  if (v111 >= 0x3E9)
  {
    v16 = v15;
  }

  else
  {
    v16 = 51;
  }

  v105 = v16;
  obj_lock(a1, 2u);
  v17 = *(a1 + 96);
  if (v17)
  {
    sub_1000A48D4();
  }

  *(a1 + 96) = v17 | 1;
  v18 = sub_1000226F0(v11, a1, v5);
  if (v18)
  {
    LODWORD(extended) = v18;
    if (obj_type(v11) == 13)
    {
      v19 = (v11 + 4048);
    }

    else
    {
      v19 = (*(v11 + 384) + 212);
    }

    log_err("%s:%d: %s error modifying omap: %d\n", "omap_cleanup", 1431, v19, extended);
    if (extended == 28)
    {
      extended = 36;
    }

    else
    {
      extended = extended;
    }

    goto LABEL_190;
  }

  v20 = omap_map_tree_get(v11, a1, 1, v5, &v121);
  if (v20)
  {
    extended = v20;
    obj_type(v11);
    log_err("%s:%d: %s error getting mapping tree: %d\n");
    goto LABEL_190;
  }

  v102 = v12;
  if (*a3)
  {
    v35 = (v8 + 56);
    v34 = *(v8 + 56);
    if (v34)
    {
      v36 = 0;
      goto LABEL_56;
    }

LABEL_251:
    sub_1000A4A60();
  }

  obj_unlock(a1, 2u);
  v119 = 0uLL;
  v115 = 0x1000000010;
  bt_iterator_init_with_hint(v113, v121, 0, 0, &v119, 16, 16, &v117, 0x10u, 0);
  v36 = 0;
  if (!bt_iterator_ended(v113))
  {
    v36 = 0;
    do
    {
      if (v119 >= *(v8 + 88))
      {
        break;
      }

      v62 = v8;
      v63 = bt_remove(v121, 0, &v119, 0x10u, v5);
      if (v63)
      {
        v64 = v63;
        if (obj_type(v11) == 13)
        {
          log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (v11 + 4048), v119, *(&v119 + 1), v64);
        }

        else
        {
          log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (*(v11 + 384) + 212), v119, *(&v119 + 1), v64);
        }
      }

      if ((v117 & 1) == 0)
      {
        v65 = (v102 - 1 + DWORD1(v117)) / v102;
        v66 = v5;
        v67 = spaceman_free(v11, 64, *(&v117 + 1), v65, v5);
        if (v67)
        {
          v68 = v67;
          v69 = obj_type(v11);
          v70 = (v11 + 4048);
          if (v69 != 13)
          {
            v70 = (*(v11 + 384) + 212);
          }

          log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1463, v70, *(&v117 + 1), v65, v68);
        }

        obj_cache_remove(*(v10 + 392), v9, v119, *(&v119 + 1));
        v5 = v66;
      }

      if (v105 == v36)
      {
        obj_lock(a1, 2u);
        extended = 36;
        goto LABEL_190;
      }

      ++v36;
      bt_iterator_next(v113);
      v8 = v62;
    }

    while (!bt_iterator_ended(v113));
  }

  obj_lock(a1, 2u);
  v42 = *a3;
  v35 = (v8 + 56);
  v34 = *(v8 + 56);
  if (!v34)
  {
    if (!v42)
    {
      goto LABEL_184;
    }

    goto LABEL_251;
  }

  if (!v42)
  {
    goto LABEL_84;
  }

LABEL_56:
  if (*(a3 + 4) == -1)
  {
LABEL_84:
    v43 = *(v8 + 44);
    v125 = 0u;
    v130 = 0;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v126 = 0u;
    v124 = omap_snapshot_key_cmp;
    DWORD2(v125) = 19;
    if (v43 != 2)
    {
      extended = 22;
      goto LABEL_189;
    }

    v92 = v35;
    extended = btree_get_extended(v11, v43 & 0xFFFF0000, v34, 0, 0, &v124, v5, &v122);
    if (extended)
    {
      goto LABEL_189;
    }

    if (*a3)
    {
      v44 = v8;
      v45 = (a3 + 8);
      v35 = v92;
      if (*(a3 + 4) != -1)
      {
        v8 = v44;
        goto LABEL_57;
      }

      v87 = *(a3 + 3);
      goto LABEL_231;
    }

    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    v80 = a3 + 4;
    v123 = 0;
    v115 = 0x800000010;
    bt_iterator_init_with_hint(v113, v122, 0, 0, &v123, 8, 8, v120, 0x10u, 0);
    while (!bt_iterator_ended(v113))
    {
      v81 = v120[0];
      v82 = *v80;
      if (v120[0])
      {
        if (v82)
        {
          if (((a3[1] ^ LODWORD(v120[0])) & 2) != 0)
          {
            break;
          }

          *(a3 + 3) = v123;
        }

        else
        {
          v83 = v123;
          *(a3 + 2) = v123;
          *(a3 + 3) = v83;
          a3[1] = v81;
        }
      }

      else if (v82)
      {
        goto LABEL_212;
      }

      bt_iterator_next(v113);
    }

    v82 = *v80;
    if (*v80)
    {
LABEL_212:
      v44 = v8;
      *(a3 + 1) = v82;
      v115 = 0x800000010;
      v84 = bt_lookup_variant(v122, 0, a3 + 1, &v115 + 1, 8, v120, &v115, 2, 0, 0);
      if (v84)
      {
        extended = v84;
        if (v84 != 2)
        {
          goto LABEL_235;
        }

        *(a3 + 1) = 0;
      }

      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      if (obj_type(v11) == 13)
      {
        v85 = (v11 + 4048);
      }

      else
      {
        v85 = (*(v11 + 384) + 212);
      }

      log_debug("%s:%d: %s started cleaning snapshots %lld-%lld\n", "omap_cleanup", 1556, v85, *(a3 + 2), *(a3 + 3));
      a1[60] = *(a3 + 1);
      v87 = *(a3 + 3);
      a1[61] = v87;
      *a3 = 1;
      *(a1 + 96) |= 2u;
      v45 = (a3 + 8);
LABEL_231:
      *v45 = v87;
      v115 = 0x800000010;
      v89 = bt_lookup_variant(v122, 0, v45, &v115 + 1, 8, v120, &v115, 4, 0, 0);
      if (!v89)
      {
LABEL_234:
        v8 = v44;
        v35 = v92;
        goto LABEL_57;
      }

      extended = v89;
      if (v89 == 2)
      {
        *v45 = -1;
        goto LABEL_234;
      }

LABEL_235:
      obj_type(v11);
      log_err("%s:%d: %s error searching snapshot tree: %d\n");
      goto LABEL_190;
    }

LABEL_184:
    extended = 0;
    goto LABEL_190;
  }

LABEL_57:
  v91 = v35;
  if (v122)
  {
    obj_release(v122);
    v122 = 0;
  }

  v104 = a3[1];
  v100 = *(a3 + 1);
  v97 = *(a3 + 3);
  v95 = *(a3 + 4);
  v119 = *(a3 + 10);
  v115 = 0x1000000010;
  v37 = bt_lookup_variant(v121, 0, &v119, &v115 + 1, 16, &v117, &v115, 3, 0, 0);
  if (v37)
  {
    extended = v37;
    if (v37 != 2)
    {
      goto LABEL_190;
    }

    *&v119 = 0;
  }

  else
  {
    if (HIDWORD(v115) != 16)
    {
      sub_1000A4900();
    }

    if (v115 != 16)
    {
      sub_1000A492C();
    }
  }

  obj_unlock(a1, 2u);
  v46 = v119;
  if (!v119)
  {
    obj_lock(a1, 2u);
    goto LABEL_163;
  }

  v94 = v8;
  v98 = v5;
  v47 = 0;
  v48 = 0;
  v96 = (v11 + 4048);
  do
  {
    v49 = v48;
    v48 = v46;
    if (v117)
    {
      sub_1000A4958();
    }

    v50 = v47;
    if (v46 != v49)
    {
      if (v36 >= v105)
      {
        extended = 36;
        goto LABEL_199;
      }

      v50 = 0;
    }

    v118 = v119;
    v115 = 0x1000000010;
    v51 = bt_lookup_variant(v121, 0, &v118, &v115 + 1, 16, &v116, &v115, 4, 0, 0);
    if (v51)
    {
      extended = v51;
      if (v51 == 2)
      {
        *&v118 = 0;
        goto LABEL_104;
      }

      if (obj_type(v11) != 13)
      {
        v96 = (*(v11 + 384) + 212);
      }

      log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1653, v96, extended);
LABEL_199:
      *(a3 + 10) = v119;
      obj_lock(a1, 2u);
      goto LABEL_190;
    }

    if (HIDWORD(v115) != 16)
    {
      sub_1000A4984();
    }

    if (v115 != 16)
    {
      sub_1000A49B0();
    }

LABEL_104:
    v47 = (v50 + 1);
    if (*(&v119 + 1) <= v100 || *(&v119 + 1) > v97)
    {
      if ((v104 & 2) == 0 || v118 != v119)
      {
        extended = 0;
        v52 = 0;
        goto LABEL_129;
      }

      extended = 0;
      if (*(&v118 + 1) > v100 && *(&v118 + 1) <= v95)
      {
        extended = 0;
        v52 = v116 & 1;
        goto LABEL_129;
      }

LABEL_118:
      v52 = 0;
      goto LABEL_129;
    }

    if ((v104 & 2) == 0)
    {
      extended = 0;
      if (v118 != v119)
      {
        goto LABEL_118;
      }

      v52 = 0;
      if (*(&v118 + 1) > v95)
      {
        goto LABEL_129;
      }
    }

    v53 = bt_remove(v121, 0, &v119, 0x10u, v98);
    if (v53)
    {
      v54 = v53;
      if (obj_type(v11) == 13)
      {
        log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, v96, v119, *(&v119 + 1), v54);
      }

      else
      {
        log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, (*(v11 + 384) + 212), v119, *(&v119 + 1), v54);
      }
    }

    v55 = (v102 - 1 + DWORD1(v117)) / v102;
    extended = spaceman_free(v11, 64, *(&v117 + 1), v55, v98);
    if (extended)
    {
      v56 = obj_type(v11);
      v57 = (v11 + 4048);
      if (v56 != 13)
      {
        v57 = (*(v11 + 384) + 212);
      }

      log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1683, v57, *(&v117 + 1), v55, extended);
    }

    if ((v104 & 2) == 0)
    {
      obj_cache_remove(*(v10 + 392), v9, v119, *(&v119 + 1));
    }

    v58 = (v104 >> 1) & 1;
    if (!v50)
    {
      LOBYTE(v58) = 1;
    }

    v52 = (v116 & v58);
    v47 = v50;
LABEL_129:
    if (v116)
    {
      if (v52)
      {
        v59 = bt_remove(v121, 0, &v118, 0x10u, v98);
        if (v59)
        {
          v60 = v59;
          if (obj_type(v11) == 13)
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, v96, v118, *(&v118 + 1), v60);
          }

          else
          {
            log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, (*(v11 + 384) + 212), v118, *(&v118 + 1), v60);
          }
        }
      }

      v115 = 0x1000000010;
      v61 = bt_lookup_variant(v121, 0, &v118, &v115 + 1, 16, &v116, &v115, 4, 0, 0);
      if (v61)
      {
        extended = v61;
        if (v61 == 2)
        {
          extended = 0;
          *&v118 = 0;
        }

        else if (obj_type(v11) == 13)
        {
          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, v96, extended);
        }

        else
        {
          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, (*(v11 + 384) + 212), extended);
        }
      }

      else
      {
        if (HIDWORD(v115) != 16)
        {
          sub_1000A49DC();
        }

        if (v115 != 16)
        {
          sub_1000A4A08();
        }

        extended = 0;
      }
    }

    ++v36;
    v119 = v118;
    v117 = v116;
    v46 = v118;
  }

  while (v118);
  obj_lock(a1, 2u);
  v5 = v98;
  v8 = v94;
  if (extended)
  {
    goto LABEL_190;
  }

LABEL_163:
  v71 = *(v8 + 44);
  v72 = *(v8 + 56);
  v125 = 0u;
  v130 = 0;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v124 = omap_snapshot_key_cmp;
  DWORD2(v125) = 19;
  if (v71 != 2)
  {
    extended = 22;
    goto LABEL_189;
  }

  extended = btree_get_extended(v11, v71 & 0xFFFF0000, v72, 0, 1u, &v124, v5, &v122);
  if (extended)
  {
LABEL_189:
    obj_type(v11);
    log_err("%s:%d: %s unable to get snapshot tree: %d\n");
    goto LABEL_190;
  }

  if (obj_oid(v122) != *v91)
  {
    *v91 = obj_oid(v122);
    obj_dirty(a1, v5, 0);
  }

  v123 = v100;
  while (1)
  {
    v115 = 0x800000010;
    v73 = bt_lookup_variant(v122, 0, &v123, &v115 + 1, 8, v120, &v115, 4, 0, 0);
    if (v73)
    {
      break;
    }

    v74 = v123;
    v75 = v95;
    if (v123 < v95)
    {
      if ((v120[0] & 1) == 0)
      {
        sub_1000A4A34();
      }

      v76 = bt_remove(v122, 0, &v123, HIDWORD(v115), v5);
      if (v76)
      {
        extended = v76;
        obj_type(v11);
        log_err("%s:%d: %s error updating snapshot tree: %d\n");
        goto LABEL_190;
      }

      --*(v8 + 36);
      if (obj_type(v11) == 13)
      {
        log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (v11 + 4048), v123, *(v8 + 36), *(v8 + 64));
      }

      else
      {
        log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (*(v11 + 384) + 212), v123, *(v8 + 36), *(v8 + 64));
      }

      if ((v104 & 2) != 0)
      {
        v77 = v123;
        if (v123 >= *(v8 + 72))
        {
          v78 = *(v8 + 80);
          if (v123 <= v78)
          {
            *(v8 + 72) = v123;
            if (v77 >= v78)
            {
              *(v8 + 72) = 0;
              *(v8 + 80) = 0;
            }
          }
        }
      }

      obj_dirty(a1, v5, 0);
      v74 = v123;
      v75 = v95;
    }

    if (v74 >= v75)
    {
      goto LABEL_219;
    }
  }

  extended = v73;
  if (v73 != 2)
  {
    goto LABEL_235;
  }

LABEL_219:
  if (v9 && (v104 & 2) != 0)
  {
    obj_cache_remove_reverted_fs_objects(*(v10 + 392), v9, v100 + 1, v97);
  }

  if (*(v8 + 36))
  {
    v123 = -1;
    v115 = 0x800000010;
    v86 = bt_lookup_variant(v122, 0, &v123, &v115 + 1, 8, v120, &v115, 1, 0, 0);
    if (v86)
    {
      extended = v86;
      goto LABEL_190;
    }

    *(v8 + 64) = v123;
    v90 = v91;
  }

  else
  {
    *(v8 + 64) = 0;
    v88 = btree_delete(v122, v5, 0);
    if (v88)
    {
      extended = v88;
      obj_type(v11);
      log_err("%s:%d: %s error deleting empty snapshot tree: %d\n");
      goto LABEL_190;
    }

    v90 = v91;
    *v91 = 0;
    obj_dirty(a1, v5, 0);
  }

  *a3 = 0;
  *(a1 + 96) &= ~2u;
  a1[60] = 0;
  a1[61] = 0;
  if (*v90)
  {
    extended = 36;
  }

  else
  {
    extended = 0;
  }

LABEL_190:
  *(a1 + 96) &= ~1u;
  obj_unlock(a1, 2u);
  if (v122)
  {
    obj_release(v122);
  }

  if (v121)
  {
    obj_release(v121);
  }

  return extended;
}

uint64_t omap_create(pthread_mutex_t **a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, void *a6)
{
  if (obj_type(a1) == 13)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1;
  if (v12)
  {
    v13 = v12[49];
  }

  v21 = 0;
  v22 = 0;
  if (!v13)
  {
    sub_1000A4AB8();
  }

  if (a3 >= 2)
  {
    sub_1000A4A8C();
  }

  *a6 = 0;
  extended = 22;
  if (a2 >> 30 && (a2 & 0x8000000) == 0 && (a4 == 1073741826 || a4 == -2147483646))
  {
    v20[0] = a3;
    v20[1] = a4;
    v20[2] = 1073741826;
    extended = obj_create(v13[49], a2 & 0xFFFF0000, 0, &om_desc, v20, v12, a5, &v22);
    if (!extended)
    {
      v23[1] = 0;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23[0] = omap_key_cmp;
      v23[2] = 0x20000000BLL;
      v15 = 0x80000000;
      if (a4 >= 0)
      {
        v15 = 0x40000000;
      }

      extended = btree_create_extended(a1, v15 | a4 & 0xFFFF0000, 0, 0x10u, 16, v23, a5, &v21);
      if (extended)
      {
        obj_delete_and_free(v22, a5);
        obj_release(v22);
      }

      else
      {
        v16 = v21;
        *(v22[47] + 40) = a4;
        v17 = obj_oid(v16);
        v18 = v22;
        *(v22[47] + 48) = v17;
        obj_dirty(v18, a5, 0);
        obj_release(v21);
        extended = 0;
        if (v22)
        {
          *a6 = v22;
        }
      }
    }
  }

  return extended;
}

uint64_t omap_destroy(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (obj_type(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v20 = 0;
    v9 = a1;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_25:
    sub_1000A4B10();
  }

  v9 = v8[49];
  v20 = 0;
  if (!v9)
  {
    goto LABEL_25;
  }

  if (v8[63])
  {
    sub_1000A4AE4();
  }

LABEL_9:
  if (!xid_is_current_tx(v9, a3))
  {
    return 22;
  }

  v10 = obj_get(*(v9 + 392), 0x40000000uLL, a2, &om_desc, 0, v8, 0, a3, &v20);
  if (!v10)
  {
    if (v8)
    {
      v11 = obj_oid(v8);
    }

    else
    {
      v11 = 0;
    }

    v12 = obj_type_and_flags(v20);
    v13 = obj_size_phys(v20);
    v14 = obj_oid(v20);
    if (a4)
    {
      v15 = nx_reaper_add(v9, v12, v13, v11, v14, a3, 0, a4);
    }

    else
    {
      v15 = nx_reaper_add_sub_object(v9, v12, v13, v11, v14, a3, 0);
    }

    v10 = v15;
    if (v15)
    {
      if (obj_type(a1) == 13)
      {
        v16 = (a1 + 4048);
      }

      else
      {
        v16 = (*(a1 + 384) + 212);
      }

      v17 = obj_oid(v20);
      v18 = obj_type_and_flags(v20);
      log_err("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list: %d\n", "omap_destroy", 522, v16, v17, v18, v10);
    }

    obj_release(v20);
  }

  return v10;
}

uint64_t omap_obj_get(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v8 = obj_type(a1);
  v9 = 0;
  v10 = a1;
  if (a1 && v8 == 13)
  {
    v10 = a1[49];
    if (a1[63])
    {
      v9 = a1[63];
    }

    else
    {
      v9 = a1;
    }
  }

  if ((v6 & 1) == 0)
  {
LABEL_9:
    if (v9)
    {
      pthread_mutex_lock((v9 + 145));
      v12 = (v9 + 455);
      v13 = 128;
      v14 = v9;
    }

    else
    {
      pthread_mutex_lock((v10 + 84));
      v12 = (v10 + 92);
      v13 = 160;
      v14 = v10;
    }

    v15 = *v12;
    *a4 = *v12;
    v16 = *(v14[47] + v13);
    if (v15)
    {
      obj_retain(v15);
      if ((v6 & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = obj_modify(*a4, v6, a3);
      if (v17)
      {
        v11 = v17;
        obj_release(*a4);
        goto LABEL_18;
      }
    }

    else
    {
      v18 = obj_get(v10[49], v6 | 0x40000000, v16, &om_desc, 0, v9, 0, a3, a4);
      if (v18)
      {
        v11 = v18;
LABEL_18:
        if (v9)
        {
          v19 = (v9 + 145);
        }

        else
        {
          v19 = (v10 + 84);
        }

        goto LABEL_31;
      }

      v20 = *a4;
      v21 = (v9 + 455);
      if (!v9)
      {
        v21 = (v10 + 92);
      }

      *v21 = v20;
      obj_retain(v20);
      if ((v6 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (obj_oid(*a4) != v16)
    {
      v22 = obj_oid(*a4);
      if (v9)
      {
        *(v9[47] + 128) = v22;
        fs_sb_dirty(v9, a3);
        goto LABEL_26;
      }

      *(v10[47] + 160) = v22;
      obj_dirty(a1, a3, 0);
LABEL_30:
      v11 = 0;
      v19 = (v10 + 84);
      goto LABEL_31;
    }

LABEL_25:
    if (v9)
    {
LABEL_26:
      v11 = 0;
      v19 = (v9 + 145);
LABEL_31:
      pthread_mutex_unlock(v19);
      return v11;
    }

    goto LABEL_30;
  }

  v11 = obj_modify(a1, 0, a3);
  if (!v11)
  {
    v6 |= 2u;
    goto LABEL_9;
  }

  return v11;
}

uint64_t omap_checkpoint_traverse(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = obj_type(a1);
  v21 = 0uLL;
  if (a4 == 2)
  {
    if (v8 == 13)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 8) = v9;
  }

  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  obj_lock(a3, 1u);
  v10 = obj_type_is_or_contains_ephemeral(*(*(a3 + 376) + 40));
  v11 = *(a3 + 376);
  if (!v10 || !*(v11 + 48))
  {
LABEL_12:
    if (obj_type_is_or_contains_ephemeral(*(v11 + 44)) && (v14 = *(a3 + 376), (v15 = *(v14 + 56)) != 0))
    {
      v16 = *(v14 + 44);
      v23 = 0u;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v22 = omap_snapshot_key_cmp;
      DWORD2(v23) = 19;
      if (v16 != 2)
      {
        obj_unlock(a3, 1u);
        v18 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          v17 = v21;
          extended = 22;
          if (!v21)
          {
            return extended;
          }

          goto LABEL_39;
        }

        extended = 22;
        goto LABEL_35;
      }

      extended = btree_get_extended(a1, v16 & 0xFFFF0000, v15, 0, 0, &v22, 0, &v21);
      obj_unlock(a3, 1u);
      if (extended)
      {
        goto LABEL_32;
      }
    }

    else
    {
      obj_unlock(a3, 1u);
    }

    if ((obj_type_and_flags(a3) & 0x80000000) == 0)
    {
      v18 = *(&v21 + 1);
      v17 = v21;
      if (v21 != 0)
      {
        if (!*(&v21 + 1))
        {
          if (!v21)
          {
            return 0;
          }

          goto LABEL_38;
        }

        goto LABEL_34;
      }

      obj_set_skip_checkpoint_traverse(a3, 1);
      goto LABEL_27;
    }

    if (a4 == 2)
    {
      v19 = obj_checkpoint_known(a3);
    }

    else
    {
      if (a4 != 1)
      {
LABEL_27:
        extended = 0;
        goto LABEL_32;
      }

      v19 = obj_checkpoint_start(a3);
    }

    extended = v19;
LABEL_32:
    v18 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {
      goto LABEL_36;
    }

    if (extended)
    {
LABEL_35:
      obj_release(v18);
LABEL_36:
      v17 = v21;
      if (!v21)
      {
        return extended;
      }

      if (extended)
      {
LABEL_39:
        obj_release(v17);
        return extended;
      }

LABEL_38:
      extended = btree_checkpoint_traverse(a1, a2, v17, a4);
      v17 = v21;
      goto LABEL_39;
    }

LABEL_34:
    extended = btree_checkpoint_traverse(a1, a2, v18, a4);
    v18 = *(&v21 + 1);
    goto LABEL_35;
  }

  v12 = omap_map_tree_get(a1, a3, 0, 0, &v21 + 1);
  if (!v12)
  {
    v11 = *(a3 + 376);
    goto LABEL_12;
  }

  extended = v12;
  obj_unlock(a3, 1u);
  return extended;
}

uint64_t omap_set(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unint64_t a7)
{
  if (obj_type(a1) == 13)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a1;
  if (v14)
  {
    v15 = v14[49];
  }

  v22[0] = a2;
  v22[1] = a3;
  v21[0] = __PAIR64__(a5, a6);
  v21[1] = a4;
  v19 = 0;
  v20 = 0;
  if (!v15)
  {
    sub_1000A4B94();
  }

  if (v14 && v14[63])
  {
    sub_1000A4B3C();
  }

  if ((a6 & 0x10) != 0)
  {
    sub_1000A4B68();
  }

  v16 = 22;
  if (xid_is_current_tx(v15, a7) && a2 && a3 && a5)
  {
    v17 = nx_superblock_sanity_check_extent(v15[47], 0, a4, (a5 + *(v15[47] + 36) - 1) / *(v15[47] + 36), 0);
    if (v17)
    {
      return v17;
    }

    v17 = omap_obj_get(a1, 1, a7, &v20);
    if (v17)
    {
      return v17;
    }

    else
    {
      obj_lock(v20, 2u);
      v16 = omap_map_tree_get(a1, v20, 1, a7, &v19);
      if (!v16)
      {
        if ((a6 & 4) != 0)
        {
          LODWORD(v21[0]) = *(v20[47] + 32) & 0x10 | a6;
        }

        v16 = bt_insert(v19, 0, v22, 16, v21, 0x10u, a7);
        obj_release(v19);
      }

      obj_unlock(v20, 2u);
      obj_release(v20);
    }
  }

  return v16;
}

uint64_t omap_delete(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, unint64_t a7)
{
  if (obj_type(a1) == 13)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a1;
  if (v14)
  {
    v15 = *(v14 + 49);
  }

  *&v35 = a2;
  *(&v35 + 1) = a3;
  v33[0] = a6;
  v33[1] = a5;
  v34 = a4;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (!v15)
  {
    sub_1000A4BEC();
  }

  if (v14 && *(v14 + 63))
  {
    sub_1000A4BC0();
  }

  v16 = 22;
  if (xid_is_current_tx(v15, a7))
  {
    if (a2)
    {
      if (a3)
      {
        v16 = omap_obj_get(a1, 1, a7, &v32);
        if (!v16)
        {
          obj_lock(v32, 2u);
          v16 = omap_map_tree_get(a1, v32, 1, a7, &v31);
          v17 = v32;
          if (v16)
          {
LABEL_47:
            obj_unlock(v17, 2u);
            obj_release(v32);
            return v16;
          }

          v18 = v32[47];
          v19 = *(v18 + 64);
          if ((v32[48] & 2) != 0 && v32[61] == v19)
          {
            v19 = v32[60];
          }

          if (*(v18 + 32))
          {
            if (a6)
            {
              goto LABEL_26;
            }

            v29 = v35;
            v27 = 0;
            v28 = 0;
            v30 = 0x1000000010;
            v21 = bt_lookup_variant(v31, 0, &v29, &v30 + 1, 16, &v27, &v30, 0, 0, 0);
            if (v21)
            {
              goto LABEL_45;
            }

            if ((v27 & 2) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v20 = v19 < a3;
            if (v19 < a3)
            {
              if (a6)
              {
                v29 = v35;
                v27 = 0;
                v28 = 0;
                v30 = 0x1000000010;
                if (!bt_lookup_variant(v31, 0, &v29, &v30 + 1, 16, &v27, &v30, 2, 0, 0) && v29 == v35)
                {
                  goto LABEL_29;
                }
              }

LABEL_26:
              v22 = 0;
              v16 = 0;
              v20 = 1;
              goto LABEL_30;
            }

            if (a6)
            {
LABEL_29:
              *(&v35 + 1) = a7;
              v16 = bt_insert(v31, 0, &v35, 16, v33, 0x10u, a7);
              v22 = 1;
LABEL_30:
              if (v20 && !v16)
              {
                if (a3 == a7)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = 0;
                }

                if (v23)
                {
                  v16 = 0;
                }

                else
                {
                  *(&v35 + 1) = a3;
                  v16 = bt_remove(v31, 0, &v35, 0x10u, a7);
                  v24 = v22 ^ 1;
                  if (!v16)
                  {
                    v24 = 1;
                  }

                  if ((v24 & 1) == 0)
                  {
                    *(&v35 + 1) = a7;
                    bt_remove(v31, 0, &v35, 0x10u, a7);
LABEL_46:
                    obj_release(v31);
                    v17 = v32;
                    goto LABEL_47;
                  }
                }
              }

              v25 = !v20;
              if (v16)
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_46;
              }

              v21 = spaceman_free(a1, 64, a4, (a5 + *(*(v15 + 47) + 36) - 1) / *(*(v15 + 47) + 36), a7);
LABEL_45:
              v16 = v21;
              goto LABEL_46;
            }
          }

          obj_release(v31);
          obj_unlock(v32, 2u);
          obj_release(v32);
          return 0;
        }
      }
    }
  }

  return v16;
}

uint64_t omap_get(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0;
  v32 = 0;
  v29 = a2;
  v30 = a3;
  v27 = 0;
  v28 = 0;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = omap_obj_get(a1, 0, 0, &v32);
  if (!v14)
  {
    obj_lock(v32, 1u);
    if (*(v32[47] + 88) > a2)
    {
      obj_unlock(v32, 1u);
      v14 = 2;
LABEL_33:
      obj_release(v32);
      return v14;
    }

    v15 = omap_map_tree_get(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      obj_unlock(v32, 1u);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = bt_lookup_variant(v31, 0, &v29, &v26, 16, &v27, &v25, 1, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = v32[47];
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = v29 == a2;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      if (v30 < v19 || v30 > *(v18 + 80))
      {
        goto LABEL_18;
      }

      v29 = a2;
      v30 = v19 - 1;
      v16 = bt_lookup_variant(v31, 0, &v29, &v26, 16, &v27, &v25, 1, 0, 0);
      if (v16)
      {
LABEL_9:
        v14 = v16;
        v17 = 0;
        goto LABEL_31;
      }

      v20 = v29;
    }

    if (v20 != a2)
    {
LABEL_30:
      v17 = 0;
      v14 = 2;
LABEL_31:
      obj_release(v31);
      obj_unlock(v32, 1u);
      if (v17)
      {
        sub_1000223B0(a1, v32);
      }

      goto LABEL_33;
    }

LABEL_18:
    v22 = v27;
    if ((v27 & 1) == 0)
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (a5)
      {
        *a5 = HIDWORD(v27);
      }

      if (a6)
      {
        *a6 = v22 & 0xFFFFFFEE;
        if (((*(v32[47] + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (v32[53])
      {
        sub_10002226C(v32, a2, v11, &v24);
        v14 = 0;
        v17 = v24;
      }

      else
      {
        v17 = 0;
        v14 = 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return v14;
}

uint64_t sub_10002226C(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v12 = 0;
      v11 = 0;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      btree_node_count(*(v4 + 424), &v13);
      v7 = v13;
      result = obj_size_phys(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = bt_lookup_variant(*(v4 + 424), 0, &v14, &__tp, 8, &v11, &v10, 0, 0, 0);
        if (result == 2)
        {
          LOBYTE(v8) = *(v4 + 464);
        }

        else
        {
          if (result)
          {
            return result;
          }

          if (!v11)
          {
            return result;
          }

          v8 = *(v4 + 464);
          if (v12 == v8)
          {
            return result;
          }
        }

        if (a3 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        v11 = v9;
        v12 = v8;
        return bt_insert(*(v4 + 424), 0, &v14, 8, &v11, 9u, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1000223B0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (obj_type(a1) != 13)
  {
    v3 = 0;
  }

  obj_lock(a2, 2u);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0;
    v6.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      btree_delete(*(a2 + 424), 0, 0);
      obj_release(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3648);
    if (v4)
    {
      obj_release(v4);
      *(v3 + 3648) = 0;
    }
  }

  return obj_unlock(a2, 2u);
}

uint64_t omap_find_next_snapshot_xid(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = 0;
  v18 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14 = 0;
  v15 = 0;
  v6 = omap_obj_get(a1, 0, 0, &v18);
  if (v6)
  {
    extended = v6;
    if (obj_type(a1) == 13)
    {
      log_err("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (a1 + 4048), extended);
    }

    else
    {
      log_err("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (*(a1 + 384) + 212), extended);
    }

    return extended;
  }

  v8 = v18[47];
  obj_lock(v18, 1u);
  if ((*(v8 + 32) & 1) == 0)
  {
    v9 = *(v8 + 56);
    if (v9)
    {
      v10 = *(v8 + 44);
      v20 = 0u;
      v21 = 0u;
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v19 = omap_snapshot_key_cmp;
      DWORD2(v20) = 19;
      if (v10 == 2)
      {
        extended = btree_get_extended(a1, v10 & 0xFFFF0000, v9, 0, 0, &v19, 0, &v17);
        if (!extended)
        {
          v14 = a2;
          do
          {
            v15 = 0x800000010;
            v11 = bt_lookup_variant(v17, 0, &v14, &v15 + 1, 8, v16, &v15, 4, 0, 0);
            if (v11)
            {
              v12 = 1;
            }

            else
            {
              v12 = (v16[0] & 1) == 0;
            }
          }

          while (!v12);
          extended = v11;
          if (!v11)
          {
            *a3 = v14;
            goto LABEL_20;
          }

          if (v11 != 2)
          {
            obj_type(a1);
            log_err("%s:%d: %s error searching snapshot tree: %d\n");
            goto LABEL_20;
          }

          goto LABEL_16;
        }
      }

      else
      {
        extended = 22;
      }

      obj_type(a1);
      log_err("%s:%d: %s unable to get snapshot tree: %d\n");
      goto LABEL_20;
    }
  }

LABEL_16:
  extended = 2;
LABEL_20:
  if (v17)
  {
    obj_release(v17);
  }

  obj_unlock(v18, 1u);
  obj_release(v18);
  return extended;
}

uint64_t sub_1000226F0(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    result = obj_modify(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (a1 + 84);
    v7 = a1;
LABEL_10:
    pthread_mutex_lock(v9);
    v10 = obj_oid(a2);
    v11 = obj_type_and_flags(a2);
    if (obj_modify(a2, (v11 >> 29) & 2, a3) || obj_oid(a2) == v10)
    {
      if (v6)
      {
LABEL_13:
        v12 = (v6 + 145);
LABEL_18:
        pthread_mutex_unlock(v12);
        return 0;
      }
    }

    else
    {
      v13 = obj_oid(a2);
      if (v6)
      {
        *(v6[47] + 128) = v13;
        fs_sb_dirty(v6, a3);
        goto LABEL_13;
      }

      *(v7[47] + 160) = v13;
      obj_dirty(a1, a3, 0);
    }

    v12 = (v7 + 84);
    goto LABEL_18;
  }

  if (v6[63])
  {
    sub_1000A4C18();
  }

  v7 = v6[49];
  result = obj_modify(a1, 0, a3);
  if (!result)
  {
    v9 = (v6 + 145);
    goto LABEL_10;
  }

  return result;
}

atomic_ullong *fs_obj_zfree_oc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_100103710)
  {
    sub_1000A4C44();
  }

  v5 = a3;
  _apfs_obj_zfree(a1, a2, *(a4 + 952));
  sub_10002288C((a4 + 976), v5, a2);
  v7 = (qword_100103710 + 136);

  return sub_10002288C(v7, v5, a2);
}

atomic_ullong *sub_10002288C(atomic_ullong *result, int a2, int64_t a3)
{
  v4 = a2 & 0xC8000000;
  if (a2 < 0 != v3)
  {
    if (v4 == 0x80000000)
    {
      atomic_fetch_add_explicit(result + 29, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 31, a3, memory_order_relaxed);
      v5 = result + 33;
    }

    else
    {
      if (v4 != -2013265920)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(result + 35, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 37, a3, memory_order_relaxed);
      v5 = result + 39;
    }
  }

  else
  {
    if (v4 != 0x40000000 && v4 != 0)
    {
LABEL_12:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    atomic_fetch_add_explicit(result + 23, -a3, memory_order_relaxed);
    atomic_fetch_add_explicit(result + 25, a3, memory_order_relaxed);
    v5 = result + 27;
  }

  atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t obj_cache_create(unsigned int a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = obj_mem_mgr_init();
  if (!v8)
  {
    v9 = _apfs_calloc_typed(1uLL, 0x578uLL, 0x10A004016CFB1AAuLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, 0x578uLL);
      v11 = new_lock(v10);
      if (v11)
      {
        v8 = v11;
LABEL_13:
        _apfs_free(v10, 1400);
        return v8;
      }

      v12 = new_rwlock((v10 + 128));
      if (v12)
      {
        v8 = v12;
LABEL_12:
        free_lock(v10);
        goto LABEL_13;
      }

      v13 = new_lock((v10 + 328));
      if (v13)
      {
        v8 = v13;
LABEL_11:
        free_rwlock((v10 + 128));
        goto LABEL_12;
      }

      v14 = new_cv((v10 + 1328));
      if (v14)
      {
        v8 = v14;
        free_lock((v10 + 328));
        goto LABEL_11;
      }

      if (!a1)
      {
        a1 = 4096;
      }

      v15 = _apfs_malloc_typed(8 * a1, 0x2004093837F09uLL);
      *(v10 + 89) = v15;
      if (v15)
      {
        bzero(v15, 8 * a1);
        *(v10 + 175) = a1;
        *(v10 + 176) = a1 - 1;
        if (!a2)
        {
          a2 = 4096;
        }

        *(v10 + 169) = 128;
        *(v10 + 170) = a2;
        v16 = a2 / 0x64u;
        if (v16 <= 0x10)
        {
          v16 = 16;
        }

        if (a2 > 0xC863)
        {
          v16 = 512;
        }

        *(v10 + 174) = v16;
        *(v10 + 171) = 0;
        *(v10 + 86) = 0;
        *(v10 + 168) = a3;
        v21.tv_sec = 0;
        v21.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
        tv_sec = v21.tv_sec;
        *(v10 + 1288) = 0u;
        *(v10 + 1304) = 0u;
        *(v10 + 1256) = 0u;
        *(v10 + 1272) = 0u;
        *(v10 + 1224) = 0u;
        *(v10 + 1240) = 0u;
        *(v10 + 1192) = 0u;
        *(v10 + 1208) = 0u;
        *(v10 + 1160) = 0u;
        *(v10 + 1176) = 0u;
        *(v10 + 1128) = 0u;
        *(v10 + 1144) = 0u;
        *(v10 + 1096) = 0u;
        *(v10 + 1112) = 0u;
        *(v10 + 1064) = 0u;
        *(v10 + 1080) = 0u;
        *(v10 + 1032) = 0u;
        *(v10 + 1048) = 0u;
        *(v10 + 1000) = 0u;
        *(v10 + 1016) = 0u;
        *(v10 + 123) = a3 << 7;
        v18 = a2 * a3;
        *(v10 + 124) = v18;
        *(v10 + 122) = v18;
        *(v10 + 163) = tv_sec;
        v19 = _apfs_calloc_typed(0x100uLL, 8uLL, 0x2004093837F09uLL);
        *(v10 + 112) = v19;
        if (v19)
        {
          v8 = 0;
          *(v10 + 94) = v10 + 744;
          *(v10 + 96) = v10 + 760;
          *(v10 + 98) = v10 + 776;
          *(v10 + 100) = v10 + 792;
          *(v10 + 102) = v10 + 808;
          *(v10 + 104) = v10 + 824;
          *(v10 + 106) = v10 + 840;
          *(v10 + 173) = v10 + 1376;
          *(v10 + 110) = v10 + 872;
          *(v10 + 108) = v10 + 856;
          *(v10 + 45) = 0u;
          *(v10 + 93) = 0;
          *(v10 + 95) = 0;
          *(v10 + 97) = 0;
          *(v10 + 99) = 0;
          *(v10 + 101) = 0;
          *(v10 + 103) = 0;
          *(v10 + 105) = 0;
          *(v10 + 172) = 0;
          *(v10 + 109) = 0;
          *(v10 + 107) = 0;
          *(v10 + 92) = 0;
          *(v10 + 25) = vdupq_n_s64(0x400uLL);
          *a4 = v10;
          return v8;
        }

        _apfs_free(*(v10 + 89), 8 * a1);
      }

      free_cv((v10 + 1328));
      free_lock((v10 + 328));
      free_rwlock((v10 + 128));
      free_lock(v10);
      _apfs_free(v10, 1400);
    }

    return 12;
  }

  return v8;
}

uint64_t obj_mem_mgr_init()
{
  if (!atomic_load_explicit(&qword_100103710, memory_order_acquire))
  {
    v2 = _apfs_calloc_typed(1uLL, 0x1E0uLL, 0x10200403418AD1FuLL);
    if (!v2)
    {
      return 12;
    }

    v3 = v2;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v4 = new_lock((v2 + 8));
    if (v4)
    {
      v0 = v4;
      log_err("%s:%d: object memory manager failed to create lock, error: %d\n", "obj_mem_mgr_init", 7393, v4);
      _apfs_free(v3, 480);
      return v0;
    }

    *(v3 + 72) = 0;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v5 = 0;
    *(v3 + 136) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 264) = 0u;
    tv_sec = __tp.tv_sec;
    *(v3 + 248) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 464) = tv_sec;
    *(v3 + 472) = 0;
    atomic_compare_exchange_strong_explicit(&qword_100103710, &v5, v3, memory_order_release, memory_order_relaxed);
    if (v5)
    {
      atomic_load_explicit(&qword_100103710, memory_order_acquire);
      free_lock((v3 + 8));
      _apfs_free(v3, 480);
    }

    else
    {
      if (!qword_100103710)
      {
        sub_1000A4C70();
      }

      if ((*qword_100103710 & 4) != 0)
      {
        log_debug("%s:%d: object memory manager initialized with feature flags: 0x%x, apfs_mem_max: %lld\n", "obj_mem_mgr_init", 7414, *qword_100103710, *(qword_100103710 + 96));
      }
    }
  }

  return 0;
}

uint64_t obj_cache_ephemeral_adjust(uint64_t result, int a2, int a3, int a4)
{
  if (a4 != -1 && a4 != 1)
  {
    sub_1000A4D20();
  }

  if ((a2 & 0x8000000) != 0)
  {
    v9 = *(result + 692);
    if (a4 <= 0 && !v9)
    {
      sub_1000A4C9C();
    }

    *(result + 692) = v9 + a4;
  }

  else
  {
    v4 = *(result + 688);
    if (a4 <= 0 && !v4)
    {
      sub_1000A4CF4();
    }

    *(result + 688) = v4 + a4;
    v5 = *(result + 392);
    if (v5)
    {
      v6 = (a3 + *(*(v5 + 376) + 36) - 1) / *(*(v5 + 376) + 36);
      v7 = *(result + 928);
      if (a4 < 0)
      {
        v8 = v7 - v6;
      }

      else
      {
        v8 = v7 + v6;
      }
    }

    else
    {
      if (a4 != 1)
      {
        sub_1000A4CC8();
      }

      v8 = *(result + 928) + 1;
    }

    *(result + 928) = v8;
  }

  return result;
}

void obj_cache_unlock_write(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (v1)
  {
    *(a1 + 728) = 0;
    *(a1 + 736) = 0;
    pthread_mutex_unlock(a1);
    do
    {
      v2 = *(v1 + 72);
      sub_10002C0D8(v1, 0);
      v1 = v2;
    }

    while (v2);
  }

  else
  {

    pthread_mutex_unlock(a1);
  }
}

uint64_t obj_cache_lock_by_state(pthread_mutex_t *a1, uint64_t a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_1000A4D4C();
  }

  return pthread_mutex_lock(a1);
}

void obj_cache_unlock_by_state(pthread_mutex_t *a1, uint64_t a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_1000A4D78();
  }

  if (a2 == 1)
  {

    pthread_mutex_unlock(a1);
  }

  else
  {

    obj_cache_unlock_write(a1);
  }
}

void obj_cache_reset(pthread_mutex_t *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 1u, memory_order_relaxed);
  }

  while (atomic_fetch_add_explicit(&a1[14].__opaque[40], 0, memory_order_relaxed))
  {
    v18 = 1;
    v4 = *&a1[21].__opaque[24];
    if (v4)
    {
      if ((*(*(v4 + 136) + 20) & 0x80) == 0)
      {
        sub_10002AE24(v4, &v18);
        if ((v18 & 1) == 0)
        {
          pthread_mutex_lock(a1);
        }
      }
    }
  }

  if (*a1[11].__opaque)
  {
    v5 = *&a1[10].__opaque[52];
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*a1[11].__opaque + 8 * i);
        if (v7)
        {
          do
          {
            v8 = *(v7 + 72);
            if (v7 != *a1[6].__opaque)
            {
              v9 = *(v7 + 16);
              if ((v9 & 0x80000000) != 0)
              {
                obj_cache_ephemeral_adjust(a1, v9, *(v7 + 48), -1);
              }

              else
              {
                v10 = *&a1[10].__opaque[36];
                if (!v10)
                {
                  sub_1000A4DA4();
                }

                *&a1[10].__opaque[36] = v10 - 1;
              }

              sub_100029F34(v7, 0);
            }

            v7 = v8;
          }

          while (v8);
          v5 = *&a1[10].__opaque[52];
        }
      }
    }
  }

  v11 = *&a1[11].__opaque[8];
  if (v11)
  {
    do
    {
      v12 = *&a1[10].__opaque[36];
      if (!v12)
      {
        sub_1000A4DD0();
      }

      v13 = *(v11 + 72);
      *&a1[10].__opaque[36] = v12 - 1;
      sub_100029F34(v11, 0);
      v11 = v13;
    }

    while (v13);
  }

  v14 = *&a1[11].__opaque[32];
  if (v14)
  {
    do
    {
      v15 = *(v14 + 88);
      if (v14 != *a1[6].__opaque)
      {
        sub_100029F34(v14, 0);
      }

      v14 = v15;
    }

    while (v15);
  }

  v16 = *&a1[11].__opaque[48];
  if (v16)
  {
    do
    {
      v17 = *(v16 + 88);
      sub_100029F34(v16, 0);
      v16 = v17;
    }

    while (v17);
  }

  if (!a2)
  {
    obj_cache_unlock_write(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 0xFFFFFFFF, memory_order_relaxed);
  }
}

void obj_cache_destroy(uint64_t a1)
{
  if (!qword_100103710)
  {
    sub_1000A50E8();
  }

  pthread_mutex_lock((qword_100103710 + 8));
  v2 = *(a1 + 1320);
  if (v2)
  {
    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(a1 + 960);
    v4 = *(a1 + 968);
    if (v3)
    {
      *(v3 + 968) = v4;
    }

    *v4 = v3;
    if ((v2 & 2) == 0)
    {
      v5 = qword_100103710;
      --*(qword_100103710 + 104);
      *(v5 + 136) = vsubq_s64(*(v5 + 136), *(a1 + 976));
      *(v5 + 152) -= *(a1 + 992);
      goto LABEL_9;
    }

    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  v5 = qword_100103710;
LABEL_9:
  pthread_mutex_unlock((v5 + 8));
  pthread_mutex_lock(a1);
  atomic_fetch_add_explicit((a1 + 940), 1u, memory_order_relaxed);
  obj_cache_reset(a1, 1);
  v6 = *(a1 + 392);
  if (v6)
  {
    obj_cache_ephemeral_adjust(a1, *(v6 + 16), *(v6 + 48), -1);
    sub_100029F34(*(a1 + 392), 0);
  }

  v7 = *(a1 + 712);
  if (v7)
  {
    v8 = *(a1 + 700);
    if (v8)
    {
      v9 = *(a1 + 700);
      v10 = *(a1 + 712);
      do
      {
        if (*v10)
        {
          sub_1000A4DFC();
        }

        ++v10;
        --v9;
      }

      while (v9);
      v11 = 8 * v8;
    }

    else
    {
      v11 = 0;
    }

    _apfs_free(v7, v11);
  }

  if (*(a1 + 720))
  {
    sub_1000A4E28();
  }

  if (*(a1 + 744))
  {
    sub_1000A4E54();
  }

  if (*(a1 + 760))
  {
    sub_1000A4E80();
  }

  if (*(a1 + 776))
  {
    sub_1000A4EAC();
  }

  if (*(a1 + 792))
  {
    sub_1000A4ED8();
  }

  if (*(a1 + 824))
  {
    sub_1000A4F04();
  }

  if (*(a1 + 840))
  {
    sub_1000A4F30();
  }

  if (*(a1 + 1376))
  {
    sub_1000A4F5C();
  }

  if (*(a1 + 928))
  {
    sub_1000A4F88();
  }

  if (*(a1 + 688))
  {
    sub_1000A4FB4();
  }

  if (*(a1 + 692))
  {
    sub_1000A4FE0();
  }

  if (*(a1 + 684))
  {
    sub_1000A500C();
  }

  obj_cache_unlock_write(a1);
  v12 = *(a1 + 896);
  if (v12)
  {
    v13 = *(a1 + 904);
    if (v13 >= 1)
    {
      v14 = *(a1 + 896);
      do
      {
        if (*v14)
        {
          sub_1000A5038();
        }

        ++v14;
        --v13;
      }

      while (v13);
    }

    _apfs_free(v12, 2048);
  }

  free_cv((a1 + 1328));
  free_lock((a1 + 328));
  free_rwlock((a1 + 128));
  free_lock(a1);
  if (*(a1 + 1160))
  {
    sub_1000A5064();
  }

  if (*(a1 + 1208))
  {
    sub_1000A5090();
  }

  if (*(a1 + 1256))
  {
    sub_1000A50BC();
  }

  _apfs_free(a1, 1400);
}

uint64_t obj_cache_flush_prepare(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v116 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    return 22;
  }

  pthread_mutex_lock(a1);
  v113 = a2;
  if (a2)
  {
    if (*(a1 + 936))
    {
      obj_cache_unlock_write(a1);
      return 0;
    }
  }

  else
  {
    v7 = pthread_rwlock_wrlock((a1 + 128));
    if (v7)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 829, v7);
    }

    v8 = *(a1 + 824);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if ((*(v8 + 19) & 0xC0) != 0)
        {
          ++v9;
          log_err("%s:%d: %s non-virtual object in virtual dirty list\n", "obj_cache_sanity", 834, (*(*(a1 + 392) + 384) + 212));
        }

        v11 = *(v8 + 32);
        if ((v11 & 1) == 0)
        {
          ++v9;
          log_err("%s:%d: %s non-dirty object in dirty list\n", "obj_cache_sanity", 837, (*(*(a1 + 392) + 384) + 212));
          v11 = *(v8 + 32);
        }

        if ((v11 & 0x10) != 0)
        {
          ++v9;
          log_err("%s:%d: %s deferred update object in dirty list\n", "obj_cache_sanity", 840, (*(*(a1 + 392) + 384) + 212));
        }

        ++v10;
        v8 = *(v8 + 88);
      }

      while (v8);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    if (*(a1 + 908) != v10)
    {
      ++v9;
      log_err("%s:%d: %s virtual dirty list count mismatch %d != %d\n", "obj_cache_sanity", 845, (*(*(a1 + 392) + 384) + 212), *(a1 + 908), v10);
    }

    v12 = *(a1 + 840);
    if (v12)
    {
      v13 = 0;
      do
      {
        if ((*(v12 + 19) & 0x40) == 0)
        {
          ++v9;
          log_err("%s:%d: %s non-physical object in physical dirty list\n", "obj_cache_sanity", 851, (*(*(a1 + 392) + 384) + 212));
        }

        v14 = *(v12 + 32);
        if ((v14 & 1) == 0)
        {
          ++v9;
          log_err("%s:%d: %s non-dirty object in phys dirty list\n", "obj_cache_sanity", 854, (*(*(a1 + 392) + 384) + 212));
          v14 = *(v12 + 32);
        }

        if ((v14 & 0x10) != 0)
        {
          ++v9;
          log_err("%s:%d: %s deferred update object in phys dirty list\n", "obj_cache_sanity", 857, (*(*(a1 + 392) + 384) + 212));
        }

        ++v13;
        v12 = *(v12 + 88);
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    if (*(a1 + 912) != v13)
    {
      ++v9;
      log_err("%s:%d: %s physical dirty list count mismatch %d != %d\n", "obj_cache_sanity", 862, (*(*(a1 + 392) + 384) + 212), *(a1 + 912), v13);
    }

    v15 = *(a1 + 776);
    if (v15)
    {
      v16 = 0;
      do
      {
        if (*(v15 + 36) == 13)
        {
          ++v9;
          log_err("%s:%d: %s fs object in virtual free list\n", "obj_cache_sanity", 868, (*(*(a1 + 392) + 384) + 212));
        }

        if ((*(v15 + 19) & 0xC0) != 0)
        {
          ++v9;
          log_err("%s:%d: %s non-virtual object in virtual free list\n", "obj_cache_sanity", 871, (*(*(a1 + 392) + 384) + 212));
        }

        if (*(v15 + 32))
        {
          ++v9;
          log_err("%s:%d: %s dirty object in virtual free list\n", "obj_cache_sanity", 874, (*(*(a1 + 392) + 384) + 212));
        }

        add_explicit = atomic_fetch_add_explicit((v15 + 24), 0, memory_order_relaxed);
        if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF) && (*(v15 + 32) & 0x10) == 0)
        {
          ++v9;
          log_err("%s:%d: %s referenced object in virtual free list\n", "obj_cache_sanity", 877, (*(*(a1 + 392) + 384) + 212));
        }

        ++v16;
        v15 = *(v15 + 88);
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    if (*(a1 + 916) != v16)
    {
      ++v9;
      log_err("%s:%d: %s virtual free list count mismatch %d != %d\n", "obj_cache_sanity", 882, (*(*(a1 + 392) + 384) + 212), *(a1 + 916), v16);
    }

    v18 = *(a1 + 792);
    if (v18)
    {
      v19 = 0;
      do
      {
        if (*(v18 + 36) == 13)
        {
          ++v9;
          log_err("%s:%d: %s fs object in physical free list\n", "obj_cache_sanity", 888, (*(*(a1 + 392) + 384) + 212));
        }

        if ((*(v18 + 19) & 0x40) == 0)
        {
          ++v9;
          log_err("%s:%d: %s non-physical object in physical free list\n", "obj_cache_sanity", 891, (*(*(a1 + 392) + 384) + 212));
        }

        if (*(v18 + 32))
        {
          ++v9;
          log_err("%s:%d: %s dirty object in physical free list\n", "obj_cache_sanity", 894, (*(*(a1 + 392) + 384) + 212));
        }

        v20 = atomic_fetch_add_explicit((v18 + 24), 0, memory_order_relaxed);
        if ((v20 & 0xFFFFFF) != ((v20 >> 24) & 0xFFFFF) && (*(v18 + 32) & 0x10) == 0)
        {
          ++v9;
          log_err("%s:%d: %s referenced object in physical free list\n", "obj_cache_sanity", 897, (*(*(a1 + 392) + 384) + 212));
        }

        ++v19;
        v18 = *(v18 + 88);
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    if (*(a1 + 920) != v19)
    {
      ++v9;
      log_err("%s:%d: %s physical free list count mismatch %d != %d\n", "obj_cache_sanity", 902, (*(*(a1 + 392) + 384) + 212), *(a1 + 920), v19);
    }

    v21 = *(a1 + 808);
    if (v21)
    {
      v22 = 0;
      do
      {
        if (*(v21 + 36) == 13)
        {
          ++v9;
          log_err("%s:%d: %s fs object in rage free list\n", "obj_cache_sanity", 908, (*(*(a1 + 392) + 384) + 212));
        }

        if ((*(v21 + 19) & 0x80) != 0)
        {
          ++v9;
          log_err("%s:%d: %s ephemeral object in rage free list\n", "obj_cache_sanity", 911, (*(*(a1 + 392) + 384) + 212));
        }

        if (*(v21 + 32))
        {
          ++v9;
          log_err("%s:%d: %s dirty object in rage free list\n", "obj_cache_sanity", 914, (*(*(a1 + 392) + 384) + 212));
        }

        v23 = atomic_fetch_add_explicit((v21 + 24), 0, memory_order_relaxed);
        if ((v23 & 0xFFFFFF) != ((v23 >> 24) & 0xFFFFF) && (*(v21 + 32) & 0x10) == 0)
        {
          ++v9;
          log_err("%s:%d: %s referenced object in rage free list\n", "obj_cache_sanity", 917, (*(*(a1 + 392) + 384) + 212));
        }

        ++v22;
        v21 = *(v21 + 88);
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 924) != v22)
    {
      ++v9;
      log_err("%s:%d: %s rage free list count mismatch %d != %d\n", "obj_cache_sanity", 922, (*(*(a1 + 392) + 384) + 212), *(a1 + 924), v22);
    }

    for (i = *(a1 + 744); i; i = *(i + 88))
    {
      v25 = *(i + 16);
      if ((v25 & 0x80000000) == 0)
      {
        ++v9;
        log_err("%s:%d: %s non-ephemeral object in ephemeral list\n", "obj_cache_sanity", 927, (*(*(a1 + 392) + 384) + 212));
        v25 = *(i + 16);
      }

      if ((v25 & 0x8000000) != 0)
      {
        ++v9;
        log_err("%s:%d: %s non-persistent ephemeral object in persistent ephemeral list\n", "obj_cache_sanity", 930, (*(*(a1 + 392) + 384) + 212));
      }
    }

    for (j = *(a1 + 760); j; j = *(j + 88))
    {
      v27 = *(j + 16);
      if ((v27 & 0x80000000) == 0)
      {
        ++v9;
        log_err("%s:%d: %s non-ephemeral object in non-persistent ephemeral list\n", "obj_cache_sanity", 935, (*(*(a1 + 392) + 384) + 212));
        v27 = *(j + 16);
      }

      if ((v27 & 0x8000000) == 0)
      {
        ++v9;
        log_err("%s:%d: %s persistent ephemeral object in non-persistent ephemeral list\n", "obj_cache_sanity", 938, (*(*(a1 + 392) + 384) + 212));
      }
    }

    if (*(a1 + 904))
    {
      v28 = 0;
      do
      {
        v29 = *(*(a1 + 896) + 8 * v28);
        if (v29)
        {
          v30 = *(v29 + 32);
          if ((v30 & 0x10) == 0)
          {
            ++v9;
            log_err("%s:%d: %s object in deferred updates queue but not flagged with OBJ_AFLAG_DEFERRED_LIST_UPDATE\n", "obj_cache_sanity", 946, (*(*(a1 + 392) + 384) + 212));
            v30 = *(v29 + 32);
          }

          if (v30)
          {
            ++v9;
            log_err("%s:%d: %s dirty object in deferred updates queue\n", "obj_cache_sanity", 949, (*(*(a1 + 392) + 384) + 212));
          }

          if ((*(v29 + 19) & 0x80) != 0)
          {
            ++v9;
            log_err("%s:%d: %s ephemeral object in deferred updates queue\n", "obj_cache_sanity", 952, (*(*(a1 + 392) + 384) + 212));
          }
        }

        ++v28;
      }

      while (v28 < *(a1 + 904));
    }

    if (v9)
    {
      sub_1000A5114();
    }

    v31 = pthread_rwlock_unlock((a1 + 128));
    if (v31)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 959, v31);
    }

    while (*(a1 + 936))
    {
      *(a1 + 936) = 2;
      cv_wait_rw((a1 + 1328), a1, 2, 0);
    }
  }

  *(a1 + 936) = 1;
  v32 = pthread_rwlock_wrlock((a1 + 128));
  if (v32)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1153, v32);
  }

  v33 = v113;
  if (v113)
  {
    if (a3)
    {
      v36 = 0;
      v34 = v113;
      goto LABEL_191;
    }

    if (*(a1 + 908) >= v113)
    {
      v34 = v113;
    }

    else
    {
      v34 = *(a1 + 908);
    }

    v111 = v113 - v34;
  }

  else
  {
    v34 = 0;
    if (a3)
    {
      v36 = 0;
      goto LABEL_191;
    }

    v111 = 0;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (v113)
  {
    v38 = -1;
  }

  else
  {
    v38 = 0;
  }

  while (1)
  {
    v39 = *(a1 + 824);
    if (!v39)
    {
      goto LABEL_169;
    }

    while (!v33 || v34 >= 1)
    {
      if (*(v39 + 36) >> 30)
      {
        panic("non-virtual object on virtual object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v39 + 112), *(v39 + 16), *(v39 + 32));
      }

      v40 = *(v39 + 32);
      if ((v40 & 1) == 0)
      {
        panic("virtual object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v39 + 112), *(v39 + 16), v40);
      }

      if (v37)
      {
        if (v37 > 1)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v41 = *(v39 + 8);
        if (!v41)
        {
          goto LABEL_152;
        }

        if (*(v41 + 504))
        {
          v41 = *(v41 + 504);
        }

        if (*(*(v41 + 376) + 264))
        {
          goto LABEL_152;
        }
      }

      if (*(v39 + 36) == 13)
      {
LABEL_152:
        v39 = *(v39 + 88);
        *(a1 + 888) = v39;
        if (!v39)
        {
          goto LABEL_169;
        }
      }

      else
      {
LABEL_137:
        if (v33)
        {
          v42 = atomic_fetch_add_explicit((v39 + 24), 0, memory_order_relaxed);
          if ((v42 & 0xFFFFFF) != ((v42 >> 24) & 0xFFFFF))
          {
            goto LABEL_152;
          }
        }

        v44 = (v39 + 104);
        v43 = *(v39 + 104);
        v45 = *(v39 + 16);
        if ((v43 != 3735928559) == ((v45 & 0x20000000000) == 0))
        {
          panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v39 + 112), v45, *(v39 + 32), v43);
        }

        if ((v45 & 0x20000000000) != 0 && *v44 != 3735928559)
        {
          goto LABEL_154;
        }

        if (v39 != v35)
        {
          v116 = 16000;
        }

        *(a1 + 888) = v39;
        v35 = v39;
        if (sub_1000245E4(v39, &v116, 1, 2))
        {
          if (v116 > 0x773593FF)
          {
            v46 = *(v39 + 8);
            if (!v46)
            {
              v46 = *(*v39 + 392);
            }

            if (nx_ratelimit_log_allowed(*(*v46 + 392)))
            {
              if (*(v46 + 36) == 13)
              {
                v47 = (v46 + 4048);
              }

              else
              {
                v47 = (*(v46 + 384) + 212);
              }

              log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1243, v47, *(v39 + 112), *(v39 + 16), *(v39 + 32), *(v39 + 24));
            }
          }

          v35 = v39;
        }

        else
        {
LABEL_154:
          v48 = *(v39 + 88);
          *(a1 + 888) = v48;
          if (!*(a1 + 908))
          {
            panic("virtual object dirty count underflow\n");
          }

          v49 = *(v39 + 96);
          v50 = (v48 + 96);
          if (!v48)
          {
            v50 = (a1 + 832);
          }

          *v50 = v49;
          *v49 = v48;
          --*(a1 + 908);
          *(v39 + 88) = 3735928559;
          atomic_fetch_and_explicit((v39 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v39 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v39 + 64) = *(v39 + 56);
          }

          if (*v44 == 3735928559)
          {
            *(v39 + 104) = 0;
            **(a1 + 864) = v39;
            *(a1 + 864) = v44;
            ++*(a1 + 932);
          }

          v34 += v38;
        }

        v39 = *(a1 + 888);
        v33 = v113;
        if (!v39)
        {
          goto LABEL_169;
        }
      }
    }

    v37 = 3;
LABEL_169:
    v51 = pthread_rwlock_unlock((a1 + 128));
    if (v51)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1273, v51);
    }

    obj_cache_unlock_write(a1);
    v54 = v36 + 13;
    if (!v36)
    {
      v54 = (a1 + 856);
    }

    v55 = *v54;
    if (v55)
    {
      break;
    }

LABEL_180:
    pthread_mutex_lock(a1);
    v58 = pthread_rwlock_wrlock((a1 + 128));
    if (v58)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1300, v58);
    }

    v61 = v37++ < 2;
    if (!v61)
    {
      v34 = v111;
LABEL_191:
      v60 = *(a1 + 840);
      if (v33)
      {
        v61 = v34 < 1;
      }

      else
      {
        v61 = 0;
      }

      v62 = v61;
      if (v60 && (v62 & 1) == 0)
      {
        if (v33)
        {
          v63 = -1;
        }

        else
        {
          v63 = 0;
        }

        v112 = v63;
        do
        {
          if (*(v60 + 36) >> 30 != 1)
          {
            panic("non-physical object on physical object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v60 + 112), *(v60 + 16), *(v60 + 32));
          }

          v64 = *(v60 + 32);
          if ((v64 & 1) == 0)
          {
            panic("physical object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v60 + 112), *(v60 + 16), v64);
          }

          v66 = (v60 + 104);
          v65 = *(v60 + 104);
          v67 = *(v60 + 16);
          if ((v65 != 3735928559) == ((v67 & 0x20000000000) == 0))
          {
            panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v60 + 112), v67, *(v60 + 32), v65);
          }

          if ((v67 & 0x20000000000) == 0 || *v66 == 3735928559)
          {
            v116 = 16000;
            if (sub_1000245E4(v60, &v116, 1, 2))
            {
              do
              {
                if (v116 > 0x773593FF)
                {
                  v68 = *(v60 + 8);
                  if (!v68)
                  {
                    v68 = *(*v60 + 392);
                  }

                  if (nx_ratelimit_log_allowed(*(*v68 + 392)))
                  {
                    if (*(v68 + 36) == 13)
                    {
                      v69 = (v68 + 4048);
                    }

                    else
                    {
                      v69 = (*(v68 + 384) + 212);
                    }

                    log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", "obj_cache_flush_prepare", 1332, v69, *(v60 + 112), *(v60 + 16), *(v60 + 32), *(v60 + 24));
                  }
                }
              }

              while ((sub_1000245E4(v60, &v116, 1, 2) & 1) != 0);
            }
          }

          if (!*(a1 + 912))
          {
            panic("physical object dirty count underflow\n");
          }

          v70 = *(v60 + 88);
          v71 = *(v60 + 96);
          v72 = (v70 + 96);
          if (!v70)
          {
            v72 = (a1 + 848);
          }

          *v72 = v71;
          *v71 = v70;
          --*(a1 + 912);
          *(v60 + 88) = 3735928559;
          atomic_fetch_and_explicit((v60 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v60 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v60 + 64) = *(v60 + 56);
          }

          if (*v66 == 3735928559)
          {
            *(v60 + 104) = 0;
            **(a1 + 864) = v60;
            *(a1 + 864) = v66;
            ++*(a1 + 932);
          }

          v34 += v112;
          v60 = *(a1 + 840);
          if (v113)
          {
            v73 = v34 < 1;
          }

          else
          {
            v73 = 0;
          }

          v74 = v73;
        }

        while (v60 && !v74);
      }

      v75 = pthread_rwlock_unlock((a1 + 128));
      if (v75)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1361, v75);
      }

      obj_cache_unlock_write(a1);
      v78 = v36 + 13;
      if (!v36)
      {
        v78 = (a1 + 856);
      }

      v79 = *v78;
      if (*v78)
      {
        while (1)
        {
          v80 = obj_write_prepare(v79, 0, a4, v76, v77);
          if (v80)
          {
            break;
          }

          if ((a3 & 2) != 0)
          {
            v81 = v79[19];
            if (!v81)
            {
              v81 = v79[16];
            }

            v79[17] = v81;
          }

          v79 = v79[13];
          if (!v79)
          {
            goto LABEL_248;
          }
        }

        v6 = v80;
        if (!*(*(*(a1 + 392) + 400) + 76))
        {
          v110 = v79[1];
          if (!v110)
          {
            v110 = *(*v79 + 392);
          }

          if (nx_ratelimit_log_allowed(*(*v110 + 392)))
          {
            goto LABEL_311;
          }
        }

        return v6;
      }

LABEL_248:
      v82 = *(a1 + 932);
      if (v82 >= 2)
      {
        v83 = 0;
        v84 = *(a1 + 856);
        for (k = 1; k < v82; k *= 2)
        {
          if (v84)
          {
            v86 = 0;
            v87 = 1;
            v88 = v84;
            while (1)
            {
              v89 = k;
              v90 = v88;
              if (k >= 2)
              {
                break;
              }

              v91 = v88[13];
              v90 = v88;
              v93 = v91;
              if (!v91)
              {
                goto LABEL_300;
              }

LABEL_260:
              v95 = v88[19];
              if (!v95)
              {
                v95 = v88[16];
              }

              v96 = v91[19];
              if (!v96)
              {
                v96 = v91[16];
              }

              v97 = v93[13];
              v98 = v95 <= v96;
              if (v95 > v96)
              {
                v99 = v91;
              }

              else
              {
                v99 = v93[13];
              }

              if (v95 > v96)
              {
                v100 = v90;
              }

              else
              {
                v100 = v93;
              }

              if (v98)
              {
                v101 = v91;
              }

              else
              {
                v101 = v88;
              }

              if (v98)
              {
                v83 = v90;
              }

              else
              {
                v83 = v93;
              }

              if (!v98)
              {
                v88 = v91;
              }

              if (v88 == v83 || v101 == v99)
              {
                v103 = v88;
              }

              else
              {
                v102 = v88;
                do
                {
                  v103 = v102[13];
                  v104 = v103[19];
                  if (!v104)
                  {
                    v104 = v103[16];
                  }

                  v105 = v101[19];
                  if (!v105)
                  {
                    v105 = v101[16];
                  }

                  if (v104 > v105)
                  {
                    v106 = v101[13];
                    v101[13] = v103;
                    v102[13] = v101;
                    v103 = v101;
                    v101 = v106;
                  }

                  v107 = v103 == v83 || v101 == v99;
                  v102 = v103;
                }

                while (!v107);
              }

              if (v103 == v83)
              {
                v103[13] = v101;
                v83 = v100;
              }

              v108 = v86 + 13;
              if (v87)
              {
                v108 = (a1 + 856);
                v84 = v88;
              }

              *v108 = v88;
              v86 = v83;
              v88 = v97;
              v87 = 0;
              if (!v97)
              {
                v86 = v83;
                goto LABEL_300;
              }
            }

            while (1)
            {
              v90 = v90[13];
              if (!v90)
              {
                break;
              }

              if (--v89 < 2)
              {
                v91 = v90[13];
                v92 = k;
                v93 = v91;
                if (!v91)
                {
                  break;
                }

                while (1)
                {
                  v94 = v93[13];
                  if (!v94)
                  {
                    goto LABEL_260;
                  }

                  --v92;
                  v93 = v93[13];
                  if (v92 < 2)
                  {
                    v93 = v94;
                    goto LABEL_260;
                  }
                }
              }
            }

LABEL_300:
            if (v86)
            {
              v86[13] = v88;
            }
          }
        }

        if (v83)
        {
          v6 = 0;
          *(a1 + 864) = v83 + 13;
          return v6;
        }
      }

      return 0;
    }
  }

  while (1)
  {
    v36 = v55;
    v56 = obj_write_prepare(v55, 0, a4, v52, v53);
    if (v56)
    {
      break;
    }

    if ((a3 & 2) != 0)
    {
      v57 = v36[19];
      if (!v57)
      {
        v57 = v36[16];
      }

      v36[17] = v57;
    }

    v55 = v36[13];
    if (!v55)
    {
      goto LABEL_180;
    }
  }

  v6 = v56;
  if (!*(*(*(a1 + 392) + 400) + 76))
  {
    v59 = v36[1];
    if (!v59)
    {
      v59 = (*v36)[49];
    }

    if (nx_ratelimit_log_allowed(*(*v59 + 392)))
    {
LABEL_311:
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", "obj_cache_flush_prepare");
    }
  }

  return v6;
}