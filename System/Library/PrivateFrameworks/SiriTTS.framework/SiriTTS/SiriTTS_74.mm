uint64_t nuance_pcre_exec2(void *a1, int a2, uint64_t a3, int *a4, char *a5, int a6, int a7, unsigned int a8, _DWORD *a9, int a10, uint64_t (*a11)(__int128 *))
{
  v90 = *MEMORY[0x1E69E9840];
  if ((safeh_HandleCheck(a1, a2, 56663, 32) & 0x80000000) != 0)
  {
    return 4294967280;
  }

  pcre_clearMem(a1);
  if ((a8 & 0xFFFF5A6F) != 0)
  {
    return 4294967293;
  }

  result = 4294967294;
  if (a3 && a5 && (a9 || a10 <= 0))
  {
    if (a10 < 0)
    {
      return 4294967281;
    }

    v19 = 0uLL;
    v86 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v81 = 0u;
    memset(v82, 0, sizeof(v82));
    v79.i64[0] = 0;
    *__b = 0u;
    v79.i64[1] = 10000000;
    v87 = 0uLL;
    v20 = *(a3 + 32);
    if (!a4)
    {
      v22 = 0;
      goto LABEL_21;
    }

    v21 = *a4;
    if (*a4)
    {
      v22 = *(a4 + 1);
    }

    else
    {
      v22 = 0;
    }

    if ((v21 & 2) != 0)
    {
      v79.i64[1] = *(a4 + 2);
      if ((v21 & 4) == 0)
      {
LABEL_19:
        if ((v21 & 8) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v21 & 4) == 0)
    {
      goto LABEL_19;
    }

    *&v87 = *(a4 + 3);
    if ((v21 & 8) == 0)
    {
LABEL_21:
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      memset(v78, 0, sizeof(v78));
      if (v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = &pcre_default_tables;
      }

      if (*a3 == 1346589253)
      {
        v24 = a3;
      }

      else
      {
        v73 = v23;
        v25 = v22;
        v26 = try_flipped(a3, v78, v22, v88);
        if (!v26)
        {
          return 4294967292;
        }

        v24 = v26;
        if (v25)
        {
          v22 = v88;
        }

        else
        {
          v22 = 0;
        }

        v23 = v73;
      }

      v27 = *(v24 + 8);
      *&v83 = a3 + *(v24 + 24) + *(v24 + 26) * *(v24 + 28);
      *(&v83 + 1) = a5;
      LODWORD(v86) = a7;
      v28 = &a5[a6];
      *&v84 = v28;
      v19.i64[0] = __PAIR64__(v27, a8);
      v29.i64[0] = 0x100000001;
      v29.i64[1] = 0x100000001;
      v30 = vandq_s8(vshlq_u32(vzip1q_s32(v19, v19), xmmword_1C37F9FE0), v29);
      *(v82 + 4) = v30;
      DWORD1(v82[1]) = (a8 >> 10) & 1;
      *(&v82[1] + 1) = (a8 & 0xFFFF8000) != 0;
      *(&v86 + 1) = 0;
      *&v81 = v23;
      *(&v81 + 1) = v23 + 832;
      if (a8 >= 0x8000 && (v27 & 0x4000000) != 0)
      {
        return 4294967283;
      }

      v77 = v27;
      v31 = &a5[a7];
      if ((a8 & 0x2000) == 0 && v30.i32[2])
      {
        v70 = v22;
        v74 = v23;
        if ((valid_utf8(a5, a6) & 0x80000000) == 0)
        {
          return 4294967286;
        }

        v22 = v70;
        v23 = v74;
        if (a7 >= 1 && a7 < a6 && *v31 < -64)
        {
          return 4294967285;
        }
      }

      v32 = *(v24 + 18);
      v33 = a10 / 3u;
      if (*(v24 + 18))
      {
        v34 = v33 > v32;
      }

      else
      {
        v34 = 1;
      }

      v35 = v34;
      v64 = v35;
      if (v34)
      {
        LODWORD(v36) = 3 * v33;
        __b[0] = a9;
        v37 = a9;
      }

      else
      {
        v71 = v22;
        v75 = v23;
        v36 = 3 * v32 + 3;
        v37 = heap_Calloc(*(*a1 + 8), 1, 4 * v36);
        __b[0] = v37;
        if (!v37)
        {
          return 4294967290;
        }

        v22 = v71;
        v23 = v75;
      }

      v72 = v77 | a8;
      LODWORD(__b[1]) = v36;
      HIDWORD(__b[1]) = (1431655766 * (2 * v36)) >> 32;
      LODWORD(v82[0]) = 0;
      HIDWORD(v85) = -1;
      v38 = 2 * *(v24 + 16) + 2;
      if (v38 > a10)
      {
        v38 = v36;
      }

      v76 = v38;
      if (v37 && v38 >= 4)
      {
        v39 = &v37[v36];
        v40 = &v39[-(v38 >> 1) + 1];
        v41 = v39 - 1;
        do
        {
          *v41-- = -1;
        }

        while (v41 >= v40);
      }

      v42 = *(v24 + 8);
      if (((v77 | a8) & 0x10) != 0)
      {
        v43 = 0;
      }

      else
      {
        if ((v42 & 0x40000000) != 0)
        {
          v44 = *(v24 + 20);
          if ((*(v24 + 20) & 0x100) != 0)
          {
            v69 = 0;
            v43 = 0;
            LODWORD(v44) = *(v81 + v44);
            goto LABEL_73;
          }

          v43 = 0;
          goto LABEL_72;
        }

        v43 = 0;
        LODWORD(v44) = -1;
        v69 = 1;
        if ((v77 & 0x10000000) != 0 || !v22)
        {
LABEL_73:
          v45 = v31 - 1;
          v46 = a6;
          if ((v42 & 0x20000000) != 0)
          {
            v49 = *(v24 + 22);
            v48 = v49;
            v47 = v23[v49 + 256];
            v65 = (v49 & 0x100) == 0;
          }

          else
          {
            v47 = -1;
            v65 = 1;
            v48 = -1;
          }

          v66 = a7;
          v67 = v44 >= 0;
          v50 = &a5[v46];
          v68 = 4 * v76;
          while (1)
          {
            if (__b[0])
            {
              v51 = v76 < 1;
            }

            else
            {
              v51 = 1;
            }

            if (!v51)
            {
              v52 = __b[0] + v68;
              if (__b[0] + v68 <= __b[0] + 4)
              {
                v52 = __b[0] + 4;
              }

              memset(__b[0], 255, (&v52[~__b[0]] & 0xFFFFFFFFFFFFFFFCLL) + 4);
            }

            if ((v44 & 0x80000000) == 0)
            {
              break;
            }

            if ((v77 & 0x10000000) != 0)
            {
              if (v31 > *(&v83 + 1) + v66 && v31 < v28)
              {
                v60 = v50 - v31;
                while (*(v31 - 1) != 10)
                {
                  ++v31;
                  if (!--v60)
                  {
LABEL_125:
                    v54 = v50;
                    if ((v48 & 0x80000000) == 0)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_126;
                  }
                }
              }

              goto LABEL_106;
            }

            if (!v43)
            {
              goto LABEL_106;
            }

            do
            {
              v54 = v31;
              if (v31 >= v28)
              {
                break;
              }

              ++v31;
            }

            while (((v43[*v54 >> 3] >> (*v54 & 7)) & 1) == 0);
LABEL_107:
            if ((v48 & 0x80000000) == 0)
            {
LABEL_108:
              if (v28 - v54 <= 999 && !DWORD2(v82[1]))
              {
                v57 = &v54[v67];
                if (&v54[v67] > v45)
                {
                  if (v65)
                  {
                    do
                    {
                      v45 = v57;
                      if (v57 >= v28)
                      {
                        break;
                      }

                      ++v57;
                    }

                    while (v48 != *v45);
                  }

                  else
                  {
                    do
                    {
                      v45 = v57;
                      if (v57 >= v28)
                      {
                        break;
                      }

                      ++v57;
                      v58 = *v45;
                    }

                    while (v48 != v58 && v47 != v58);
                  }

                  if (v45 >= v28)
                  {
                    goto LABEL_135;
                  }
                }
              }
            }

LABEL_126:
            *(&v84 + 1) = v54;
            v79.i64[0] = 0;
            result = match_2(a1, v54, v83, &v79, (v77 & 7), a11);
            if (result)
            {
              if (result == 1)
              {
                if ((v64 & 1) == 0)
                {
                  if (a10 >= 4)
                  {
                    memcpy(a9 + 2, __b[0] + 8, 4 * (a10 - 2));
                  }

                  if (SDWORD2(v85) > a10)
                  {
                    LODWORD(v82[0]) = 1;
                  }

                  heap_Free(*(*a1 + 8), __b[0]);
                }

                if (LODWORD(v82[0]))
                {
                  result = 0;
                }

                else
                {
                  result = (SDWORD2(v85) / 2);
                }

                if (a10 >= 2)
                {
                  v63 = v85 - DWORD2(v83);
                  *a9 = v54 - DWORD2(v83);
                  a9[1] = v63;
                }

                else
                {
                  return 0;
                }
              }

              return result;
            }

            v31 = v54 + 1;
            if (HIDWORD(v82[0]) && v31 < v28)
            {
              v61 = v50 - 1 - v54;
              while ((*v31 & 0xC0) == 0x80)
              {
                ++v31;
                if (!--v61)
                {
                  v31 = v28;
                  break;
                }
              }
            }

            if ((v72 & 0x10) != 0 || v31 > v28)
            {
LABEL_135:
              if ((v64 & 1) == 0)
              {
                heap_Free(*(*a1 + 8), __b[0]);
              }

              if (HIDWORD(v82[1]))
              {
                v62 = DWORD2(v82[1]) == 0;
              }

              else
              {
                v62 = 1;
              }

              if (v62)
              {
                return 0xFFFFFFFFLL;
              }

              else
              {
                return 4294967284;
              }
            }
          }

          if (v69)
          {
            if (v31 < v28)
            {
              v53 = v50 - v31;
              while (v44 != *v31)
              {
                ++v31;
                if (!--v53)
                {
                  goto LABEL_125;
                }
              }
            }
          }

          else if (v31 < v28)
          {
            v55 = v50 - v31;
            while (v44 != *(v81 + *v31))
            {
              ++v31;
              if (!--v55)
              {
                goto LABEL_125;
              }
            }
          }

LABEL_106:
          v54 = v31;
          goto LABEL_107;
        }

        if (*(v22 + 4))
        {
          v43 = v22 + 8;
        }

        else
        {
          v43 = 0;
        }
      }

      LODWORD(v44) = -1;
LABEL_72:
      v69 = 1;
      goto LABEL_73;
    }

LABEL_20:
    v20 = *(a4 + 4);
    goto LABEL_21;
  }

  return result;
}

void *pcre_clearMem(void *result)
{
  v1 = result;
  if (*(result + 8) >= 2u)
  {
    v2 = 1;
    do
    {
      v3 = *(v1[1] + 8 * v2);
      if (v3)
      {
        heap_Free(*(*v1 + 8), *v3);
        v5 = *v1;
        v4 = v1[1];
        **(v4 + 8 * v2) = 0;
        heap_Free(*(v5 + 8), *(*(v4 + 8 * v2) + 16));
        v6 = v1[1];
        *(*(v6 + 8 * v2) + 16) = 0;
        v7 = *(v6 + 8 * v2);
      }

      else
      {
        v7 = 0;
      }

      result = heap_Free(*(*v1 + 8), v7);
      *(v1[1] + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 1;
  *(v1 + 6) = 0;
  *(v1 + 14) = 0;
  return result;
}

uint64_t nuance_pcre_ObjOpen(_WORD *a1, int a2, uint64_t a3)
{
  v8 = 0;
  if (!a3)
  {
    return 2320506887;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  inited = InitRsrcFunction(a1, a2, &v8);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v8 + 32), "PCRE", 4, 0, "PCRE ObjOpen: Begin");
    v5 = heap_Calloc(*(v8 + 8), 1, 32);
    v6 = v8;
    if (v5)
    {
      *v5 = v8;
      *a3 = v5;
      *(a3 + 8) = 56663;
    }

    else
    {
      log_OutPublic(*(v8 + 32), "PCRE", 1000, 0);
      v6 = v8;
      inited = 2320506890;
    }

    log_OutText(*(v6 + 32), "PCRE", 4, 0, "PCRE ObjOpen: End (%x)", inited);
  }

  return inited;
}

uint64_t nuance_pcre_Init(uint64_t *a1, uint64_t a2, unsigned int a3, __int16 a4)
{
  v6 = a2;
  v8 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *a1;
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE Init: Begin");
    *(a1 + 10) = 416;
    *(a1 + 8) = 0;
    *(a1 + 11) = a3;
    *(a1 + 6) = 0;
    *(a1 + 14) = 0;
    *(a1 + 9) = a4;
    v10 = heap_Calloc(*(v9 + 8), 1, 8 * a3 + 8);
    a1[1] = v10;
    if (v10 && (v11 = heap_Calloc(*(v9 + 8), 1, 32), v12 = *(a1 + 8), *(a1[1] + 8 * v12) = v11, (v13 = *(a1[1] + 8 * v12)) != 0) && (v14 = *(a1 + 9) * *(a1 + 10) + 1, *(v13 + 8) = v14, *v13 = 0, v15 = heap_Calloc(*(v9 + 8), 1, v14), (*v13 = v15) != 0) && (*(v13 + 24) = 0, *(v13 + 16) = 0, v16 = heap_Calloc(*(v9 + 8), 1, *(a1 + 9) + 1), (*(v13 + 16) = v16) != 0))
    {
      v17 = *(a1 + 8) + 1;
      *(a1 + 8) = v17;
      *(a1 + 13) = v17;
    }

    else
    {
      log_OutPublic(*(v9 + 32), "PCRE", 1000, 0);
      nuance_pcre_DeInit(a1, v6);
      v8 = 2320506890;
    }

    log_OutText(*(v9 + 32), "PCRE", 4, 0, "PCRE ObjOpen: End (%x)", v8);
  }

  return v8;
}

uint64_t nuance_pcre_DeInit(void *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v3 & 0x80000000) == 0)
  {
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE DeInit : Begin");
    pcre_clearMem(a1);
    v4 = a1[1];
    if (v4)
    {
      if (*v4)
      {
        heap_Free(*(*a1 + 8), **v4);
        v6 = *a1;
        v5 = a1[1];
        **v5 = 0;
        heap_Free(*(v6 + 8), *(*v5 + 16));
        v8 = *a1;
        v7 = a1[1];
        *(*v7 + 16) = 0;
        heap_Free(*(v8 + 8), *v7);
        *a1[1] = 0;
        v4 = a1[1];
      }

      heap_Free(*(*a1 + 8), v4);
      a1[1] = 0;
    }

    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE DeInit : End (%x)", v3);
    return 0;
  }

  return v3;
}

uint64_t nuance_pcre_ObjClose(uint64_t *a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 56663, 32);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *a1;
    log_OutText(*(*a1 + 32), "PCRE", 4, 0, "PCRE ObjClose : Begin");
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "PCRE", 4, 0, "PCRE ObjClose : End (%x)", v3);
    return 0;
  }

  return v3;
}

uint64_t nuance_pcre_ErrorToLhError(unsigned int a1)
{
  if (a1 < 0xFFFFFFF0)
  {
    return 2320514663;
  }

  else
  {
    return *(&unk_1C3810984 + a1 + 16);
  }
}

uint64_t ucp_findchar(int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1 != 12063)
  {
    LOWORD(v4) = -26112;
    v5 = 12063;
    v6 = &ucp_table;
    do
    {
      if (v5 <= a1)
      {
        v7 = v6[2];
        if (v7 < 0x1000)
        {
          return 0xFFFFFFFFLL;
        }

        v6 += 3 * (1 << ((v7 >> 12) - 1));
      }

      else
      {
        if ((v4 & 0x8000) == 0)
        {
          return 0xFFFFFFFFLL;
        }

        v6 += 3;
      }

      v4 = *v6;
      v5 = v6[1] | (*v6 << 16);
    }

    while (v5 != a1);
    v8 = (v4 >> 8) & 0x3F;
    *a2 = v8;
    if (v8 > 9)
    {
      if (v8 <= 0x1D)
      {
        if (((1 << v8) & 0x7F0000) != 0)
        {
          return 4;
        }

        if (((1 << v8) & 0x7800000) != 0)
        {
          return 5;
        }

        if (((1 << v8) & 0x38000000) != 0)
        {
          return 6;
        }
      }

      if (v8 - 10 < 3)
      {
        return 2;
      }

      if (v8 - 13 < 3)
      {
        return 3;
      }
    }

    else
    {
      if (((v4 >> 8) & 0x3F) <= 4)
      {
        return 0;
      }

      if (v8 - 6 < 3)
      {
        *a3 = 0;
        return 1;
      }

      if (v8 == 5 || v8 == 9)
      {
        v9 = v6[2];
        if ((v9 & 0x100) != 0)
        {
          v10 = v9 & 0xFFF | 0xFFFFF000;
        }

        else
        {
          v10 = v9 & 0xFFF;
        }

        if (v10)
        {
          v11 = v10 + a1;
        }

        else
        {
          v11 = 0;
        }

        *a3 = v11;
        return 1;
      }
    }

    return 0xFFFFFFFFLL;
  }

  *a2 = 26;
  return 5;
}

uint64_t find_fixedlength(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a1 + 3);
  v5 = 0xFFFFFFFFLL;
  while (2)
  {
    v6 = v4;
    v7 = *v4;
    if (v7 >= 0x50)
    {
      v8 = 80;
    }

    else
    {
      v8 = v7;
    }

    result = 4294967294;
    switch(v8)
    {
      case 0:
      case 65:
      case 66:
      case 67:
      case 68:
        if ((v5 & 0x80000000) != 0)
        {
          v5 = v3;
        }

        else if (v5 != v3)
        {
          return 0xFFFFFFFFLL;
        }

        if (v7 == 65)
        {
          v3 = 0;
          v4 = v6 + 3;
          continue;
        }

        return v5;
      case 1:
      case 2:
      case 3:
      case 4:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 64:
      case 73:
      case 76:
      case 79:
        goto LABEL_10;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        goto LABEL_19;
      case 12:
        return result;
      case 13:
      case 14:
        ++v6;
LABEL_19:
        v3 = (v3 + 1);
        v4 = v6 + 1;
        continue;
      case 21:
      case 22:
        v3 = (v3 + 1);
        v4 = v6 + 2;
        if ((a2 & 0x800) != 0)
        {
          v4 = v6 + 1;
          do
          {
            v10 = *++v4;
          }

          while ((v10 & 0xC0) == 0x80);
        }

        continue;
      case 32:
        v3 = v3 + (bswap32(*(v6 + 1)) >> 16);
        v4 = v6 + 4;
        if ((a2 & 0x800) != 0)
        {
          v4 = v6 + 3;
          do
          {
            v11 = *++v4;
          }

          while (v11 < 0);
        }

        continue;
      case 50:
        v3 = v3 + (bswap32(*(v6 + 1)) >> 16);
        v4 = v6 + 4;
        continue;
      case 59:
      case 60:
        goto LABEL_29;
      case 61:
        v6 = &v6[__rev16(*(v6 + 1)) - 33];
LABEL_29:
        v4 = v6 + 33;
        v12 = v6[33];
        if (v12 > 0x3A)
        {
          goto LABEL_34;
        }

        if (((1 << v12) & 0x600000000000000) != 0)
        {
          v13 = __rev16(*(v6 + 17));
          if (v13 != bswap32(*(v6 + 18)) >> 16)
          {
            return 0xFFFFFFFFLL;
          }

          v3 = v13 + v3;
          v4 = v6 + 38;
        }

        else
        {
          if (((1 << v12) & 0x198000000000000) != 0)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_34:
          v3 = (v3 + 1);
        }

        continue;
      case 69:
      case 70:
      case 71:
      case 72:
        do
        {
          v6 += __rev16(*(v6 + 1));
          v7 = *v6;
        }

        while (v7 == 65);
LABEL_10:
        v4 = &v6[OP_lengths[v7]];
        continue;
      case 74:
      case 75:
      case 80:
        result = find_fixedlength(v6, a2);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        do
        {
          v6 += __rev16(*(v6 + 1));
        }

        while (*v6 == 65);
        v3 = (result + v3);
        v4 = v6 + 3;
        continue;
      default:
        return 0xFFFFFFFFLL;
    }
  }
}

unsigned __int8 *adjust_recurse(unsigned __int8 *result, int a2, int a3, uint64_t a4)
{
  v4 = result;
  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *v4;
      if (v6 != 63)
      {
        break;
      }

      v9 = __rev16(*(v4 + 1));
      if (*(a4 + 32) + v9 >= result)
      {
        *(v5 + 1) = bswap32(v9 + a2) >> 16;
      }

LABEL_12:
      v4 = v5 + 3;
    }

    if (!*v4)
    {
      return result;
    }

    if (v6 >= 0x51)
    {
      goto LABEL_12;
    }

    v7 = OP_lengths[*v4];
    v4 += v7;
    if (a3)
    {
      if (v6 - 24 < 9 || v6 - 21 < 2)
      {
        v4 = &v5[v7 - 1];
        do
        {
          v8 = *++v4;
        }

        while ((v8 & 0xC0) == 0x80);
      }

      else if (v6 == 61)
      {
        v4 += __rev16(*(v4 + 1)) + 1;
      }
    }
  }
}

uint64_t could_be_empty_branch(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = 1;
  significant_code_0 = first_significant_code_0((a1 + 3), 0, 0, 1);
  if (significant_code_0 < a2)
  {
    while (1)
    {
      v7 = *significant_code_0;
      if (v7 < 0x50)
      {
        v5 = 0;
        v12 = 33;
        switch(*significant_code_0)
        {
          case 5u:
          case 6u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
          case 0xDu:
          case 0xEu:
          case 0xFu:
          case 0x15u:
          case 0x16u:
          case 0x17u:
          case 0x1Au:
          case 0x1Bu:
          case 0x20u:
          case 0x23u:
          case 0x24u:
          case 0x29u:
          case 0x2Cu:
          case 0x2Du:
          case 0x32u:
            return v5;
          case 0x18u:
          case 0x19u:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
          case 0x1Fu:
            if (a3)
            {
              --significant_code_0;
              do
              {
                v13 = significant_code_0[3] & 0xC0;
                ++significant_code_0;
              }

              while (v13 == 128);
            }

            goto LABEL_17;
          case 0x3Bu:
          case 0x3Cu:
            goto LABEL_20;
          case 0x3Du:
            v12 = __rev16(*(significant_code_0 + 1));
LABEL_20:
            v5 = 0;
            v14 = &significant_code_0[v12];
            v15 = *v14;
            if (v15 > 0x3A)
            {
              return v5;
            }

            if (((1 << v15) & 0x198000000000000) != 0)
            {
              goto LABEL_17;
            }

            if (((1 << v15) & 0x600000000000000) == 0)
            {
              return v5;
            }

            if (__rev16(*(v14 + 1)))
            {
              return 0;
            }

            goto LABEL_17;
          case 0x41u:
          case 0x42u:
          case 0x43u:
          case 0x44u:
            return 1;
          default:
            goto LABEL_17;
        }
      }

      if (!__rev16(*(significant_code_0 + 1)))
      {
        return 1;
      }

      v8 = 1;
      do
      {
        while (1)
        {
          v9 = significant_code_0;
          if (v8)
          {
            break;
          }

          v8 = 0;
          v11 = __rev16(*(significant_code_0 + 1));
          significant_code_0 += v11;
          if (v9[v11] != 65)
          {
            goto LABEL_16;
          }
        }

        v10 = could_be_empty_branch(significant_code_0, a2, a3);
        v8 = v10 == 0;
        v11 = __rev16(*(v9 + 1));
        significant_code_0 = &v9[v11];
      }

      while (v9[v11] == 65);
      if (!v10)
      {
        return 0;
      }

LABEL_16:
      significant_code_0 = &v9[v11 + 3];
      v7 = *significant_code_0;
LABEL_17:
      v5 = 1;
      significant_code_0 = first_significant_code_0(&significant_code_0[OP_lengths[v7]], 0, 0, 1);
      if (significant_code_0 >= a2)
      {
        return v5;
      }
    }
  }

  return v5;
}

unsigned __int8 *first_significant_code_0(unsigned __int8 *result, _DWORD *a2, int a3, int a4)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *result;
        v5 = v4 - 18;
        if ((v4 - 18) > 0x3D)
        {
          goto LABEL_12;
        }

        if (((1 << v5) & 0x70000000000000) == 0)
        {
          break;
        }

        if (!a4)
        {
          return result;
        }

        do
        {
          result += __rev16(*(result + 1));
          v7 = *result;
        }

        while (v7 == 65);
        result += OP_lengths[v7];
      }

      if (((1 << v5) & 0x2400400000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v4 != 18)
      {
        break;
      }

      if (a3 >= 1)
      {
        v6 = result[1];
        if (((*a2 ^ v6) & a3) != 0)
        {
          *a2 = v6;
        }
      }

      result += 2;
    }

LABEL_12:
    if ((v4 - 3) >= 2 || a4 == 0)
    {
      return result;
    }

LABEL_16:
    result += OP_lengths[*result];
  }
}

uint64_t pcre_getMem(uint64_t a1, char a2, void *a3)
{
  *a3 = 0;
  v4 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v13 = 2320506880;
    log_OutPublic(*(*a1 + 32), "PCRE", 1001, 0);
    return v13;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(v7 + 8 * v8);
  if (*(v9 + 12) + *(a1 + 20) >= *(v9 + 8))
  {
    if (v4 >= *(a1 + 22))
    {
      v13 = 2320506880;
      log_OutPublic(*(*a1 + 32), "PCRE", 1002, "%s%hu%s%hu");
      return v13;
    }

    if (v8 + 1 < v4)
    {
      goto LABEL_9;
    }

    v16 = heap_Calloc(*(*a1 + 8), 1, 32);
    v17 = *(a1 + 16);
    *(*(a1 + 8) + 8 * v17) = v16;
    v18 = *(*(a1 + 8) + 8 * v17);
    if (v18)
    {
      v19 = *(a1 + 18) * *(a1 + 20) + 1;
      *(v18 + 8) = v19;
      *v18 = 0;
      *(v18 + 16) = 0;
      v20 = heap_Calloc(*(*a1 + 8), 1, v19);
      *v18 = v20;
      if (v20)
      {
        *(v18 + 24) = 0;
        v21 = heap_Calloc(*(*a1 + 8), 1, *(a1 + 18) + 1);
        *(v18 + 16) = v21;
        if (v21)
        {
          ++*(a1 + 16);
          LOWORD(v8) = *(a1 + 24);
          v7 = *(a1 + 8);
LABEL_9:
          v14 = v8 + 1;
          *(a1 + 24) = v14;
          v9 = *(v7 + 8 * v14);
          if (*(a1 + 26) < v14)
          {
            *(a1 + 26) = v14;
          }

          goto LABEL_3;
        }
      }

      log_OutPublic(*(*a1 + 32), "PCRE", 1000, 0);
      if (*v18)
      {
        heap_Free(*(*a1 + 8), *v18);
        *v18 = 0;
      }

      v22 = *(v18 + 16);
      if (v22)
      {
        heap_Free(*(*a1 + 8), v22);
        *(v18 + 16) = 0;
      }

      heap_Free(*(*a1 + 8), v18);
    }

    else
    {
      log_OutPublic(*(*a1 + 32), "PCRE", 1000, 0);
    }

    return 2320506890;
  }

LABEL_3:
  v10 = *(v9 + 12);
  *(v9 + 12) = v10 + *(a1 + 20);
  *(*(v9 + 16) + *(v9 + 24)) = a2;
  v11 = *(v9 + 24) + 1;
  *(v9 + 24) = v11;
  v12 = *(a1 + 28);
  if (v12 < v11)
  {
    v12 = v11;
    *(a1 + 28) = v11;
  }

  *a3 = *v9 + v10;
  log_OutText(*(*a1 + 32), "PCRE", 4, 0, "Memory now in use: %d of %d", *(v9 + 12) + *(a1 + 20) * *(a1 + 24) * v12, *(a1 + 22) * *(a1 + 20) * *(a1 + 18));
  return 0;
}

uint64_t pcre_freeMem(uint64_t result, _DWORD *a2)
{
  if (*(result + 16))
  {
    v2 = *(result + 8);
    v3 = *(result + 24);
    v4 = *(v2 + 8 * v3);
    v5 = *(v4 + 12);
    if (v5)
    {
LABEL_5:
      *(v4 + 12) = v5 - *(result + 20);
      v6 = *(v4 + 24) - 1;
      *(v4 + 24) = v6;
      *a2 = *(*(v4 + 16) + v6);
      return result;
    }

    if (*(result + 24))
    {
      *(result + 24) = v3 - 1;
      v4 = *(v2 + 8 * (v3 - 1));
      v5 = *(v4 + 12);
      goto LABEL_5;
    }

    v7 = *(*result + 32);
    v8 = 1004;
  }

  else
  {
    v7 = *(*result + 32);
    v8 = 1003;
  }

  return log_OutPublic(v7, "PCRE", v8, 0);
}

uint64_t match_ref_0(int a1, unsigned __int8 *a2, int a3, void *a4, char a5)
{
  if (a4[12] - a2 < a3)
  {
    return 0;
  }

  v6 = (a4[11] + *(a4[2] + 4 * a1));
  if (a5)
  {
    while (1)
    {
      v7 = __OFSUB__(a3--, 1);
      if (a3 < 0 != v7)
      {
        break;
      }

      v11 = a4[4];
      v12 = *v6++;
      v13 = *(v11 + v12);
      v14 = *a2++;
      if (v13 != *(v11 + v14))
      {
        return 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v7 = __OFSUB__(a3--, 1);
      if (a3 < 0 != v7)
      {
        break;
      }

      v9 = *v6++;
      v8 = v9;
      v10 = *a2++;
      if (v8 != v10)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t match_xclass(int a1, _BYTE *a2)
{
  v3 = *a2 & 1;
  if (a1 <= 255 && (*a2 & 2) != 0 && ((a2[a1 / 8 + 1] >> (a1 & 7)) & 1) != 0)
  {
    return !(*a2 & 1);
  }

  if ((*a2 & 2) != 0)
  {
    v4 = a2 + 33;
  }

  else
  {
    v4 = a2 + 1;
  }

  do
  {
    while (1)
    {
      v5 = *v4;
      if (v5 == 1)
      {
        break;
      }

      if (v5 == 2)
      {
        v10 = (v4 + 2);
        v11 = v4[1];
        if ((~v11 & 0xC0) == 0)
        {
          v12 = utf8_table4[v11 & 0x3F];
          v11 = (utf8_table3[utf8_table4[v11 & 0x3F]] & v11) << (6 * v12);
          v13 = 6 * v12 - 6;
          v14 = v12 + 1;
          do
          {
            v15 = *v10++;
            v11 |= (v15 & 0x3F) << v13;
            v13 -= 6;
            --v14;
          }

          while (v14 > 1);
        }

        v16 = *v10;
        v4 = (v10 + 1);
        if ((~v16 & 0xC0) == 0)
        {
          v17 = utf8_table4[v16 & 0x3F];
          v16 = (utf8_table3[utf8_table4[v16 & 0x3F]] & v16) << (6 * v17);
          v18 = 6 * v17 - 6;
          v19 = v17 + 1;
          do
          {
            v20 = *v4++;
            v16 |= (v20 & 0x3F) << v18;
            v18 -= 6;
            --v19;
          }

          while (v19 > 1);
        }

        if (v11 <= a1 && v16 >= a1)
        {
          return v3 ^ 1;
        }
      }

      else
      {
        if (!*v4)
        {
          return v3;
        }

        v28 = 0;
        v6 = v4 + 2;
        v7 = v4[1];
        v8 = v4[1];
        v9 = ucp_findchar(a1, &v28 + 1, &v28);
        if (v7 < 0)
        {
          v4 = v6;
          if ((v5 != 3) != (v8 - 128 == v9))
          {
            return v3 ^ 1;
          }
        }

        else
        {
          v4 = v6;
          if ((v5 != 3) != (HIDWORD(v28) == v8))
          {
            return v3 ^ 1;
          }
        }
      }
    }

    v21 = v4 + 2;
    v22 = v4[1];
    if ((~v22 & 0xC0) == 0)
    {
      v23 = utf8_table4[v22 & 0x3F];
      v22 = (utf8_table3[utf8_table4[v22 & 0x3F]] & v22) << (6 * v23);
      v24 = 6 * v23 - 6;
      v25 = v23 + 1;
      do
      {
        v26 = *v21++;
        v22 |= (v26 & 0x3F) << v24;
        v24 -= 6;
        --v25;
      }

      while (v25 > 1);
    }

    v4 = v21;
  }

  while (v22 != a1);
  return v3 ^ 1;
}

uint64_t clcml_ObjOpen(_WORD *a1, int a2, char *a3, uint64_t *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v45 = 0;
  *v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  __src = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  inited = InitRsrcFunction(a1, a2, v46);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v12 = heap_Calloc(*(*v46 + 8), 1, 544);
  *a4 = v12;
  v13 = *(*v46 + 32);
  if (!v12)
  {
    Str = 2358255626;
    log_OutPublic(v13, "FE_CLCML", 60000, 0);
    return Str;
  }

  log_OutTraceTuningData(v13, 600, "%s%s", v7, v8, v9, v10, v11, "BEG");
  Object = rsrc_Open(*(*v46 + 8), *(*v46 + 16), 0, 0, *a4 + 8);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = InitRsrcFunction(*(*a4 + 8), *(*a4 + 16), *a4);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  v20 = *v46;
  *(**a4 + 64) = *(*v46 + 64);
  *(**a4 + 384) = *(v20 + 384);
  *(**a4 + 24) = *(v20 + 24);
  *(**a4 + 32) = *(v20 + 32);
  Object = paramc_ObjOpen(0, *(*a4 + 8), *(*a4 + 16), (**a4 + 40));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = objc_ObjOpen(0, *(*a4 + 8), *(*a4 + 16), (**a4 + 48));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  *(*a4 + 540) = 0;
  if ((objc_GetObject(*(*v46 + 48), "LANGCODECONVERTER", &v41) & 0x80000000) == 0)
  {
    Object = objc_RegisterObject(*(**a4 + 48), "LANGCODECONVERTER", v41);
    if ((Object & 0x80000000) != 0)
    {
LABEL_53:
      Str = Object;
      goto LABEL_54;
    }

    *(*a4 + 540) = 1;
    objc_ReleaseObject(*(*v46 + 48), "LANGCODECONVERTER");
  }

  if ((paramc_ParamGetStr(*(*v46 + 40), "noclmset", &v39) & 0x80000000) != 0)
  {
    v39 = 0;
  }

  if ((paramc_ParamGetStr(*(*v46 + 40), "datapackagename", &v38) & 0x80000000) != 0)
  {
    v38 = 0;
  }

  if ((paramc_ParamGetUInt(*(*v46 + 40), "pipelineswitchexecuting", &v36) & 0x80000000) != 0)
  {
    v36 = 0;
  }

  if ((paramc_ParamGetStr(*(*v46 + 40), "blockautoinsertionfeclm", &v37) & 0x80000000) != 0)
  {
    v37 = 0;
  }

  *v46 = **a4;
  paramc_ParamSetUInt(*(*v46 + 40), "pipelineswitchexecuting", v36);
  paramc_ParamSetUInt(*(*v46 + 40), "readmode", 1);
  paramc_ParamSetUInt(*(*v46 + 40), "infiniteloopdetectlimit", 10000);
  paramc_ParamSetStr(*(*v46 + 40), "inputmimetype", "text/plain;charset=utf-8");
  paramc_ParamSetStr(*(*v46 + 40), "numberoutputtranscriptions", "1");
  paramc_ParamSetStr(*(*v46 + 40), "numberoutputorthsubstitutes", "1");
  paramc_ParamSetStr(*(*v46 + 40), "numberpartialorthvariants", "1");
  paramc_ParamSetStr(*(*v46 + 40), "clmvariants", "no");
  paramc_ParamSetStr(*(*v46 + 40), "norichtranscription", "false");
  paramc_ParamSetStr(*(*v46 + 40), "clcpppipelinemode", "internal");
  paramc_ParamSetStr(*(*v46 + 40), "fedatapackaging", a3);
  paramc_ParamSetStr(*(*v46 + 40), "foreignpron", "yes");
  paramc_ParamSetStr(*(*v46 + 40), "fedataprefix", "");
  paramc_ParamSetStr(*(*v46 + 40), "feextcfgdataprefix", "");
  if (v38)
  {
    paramc_ParamSetStr(*(*v46 + 40), "datapackagename", v38);
  }

  if (v39)
  {
    paramc_ParamSetStr(*(*v46 + 40), "noclmset", v39);
  }

  if (v37)
  {
    paramc_ParamSetStr(*(*v46 + 40), "blockautoinsertionfeclm", v37);
  }

  *(*a4 + 120) = 0;
  brokeraux_ComposeBrokerString(*v46, "pipeline", 0, 1, 0, 0, 0, v47, 0x400uLL);
  Object = brk_DataOpen(*(*v46 + 24));
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = brk_DataMap(*(*v46 + 24), *(*a4 + 120), 0, 0, &v45);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  Object = hdrpars_ReadHeader(*(*a4 + 8), *(*a4 + 16), 0, v45, &v44, &v43);
  if ((Object & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  if (v43)
  {
    *&v34 = 0;
    if (vector_GetElemAt(v43, 0, &v34))
    {
      v21 = 1;
      do
      {
        ssftmap_ObjClose(*v34);
      }

      while (vector_GetElemAt(v43, v21++, &v34));
    }

    vector_ObjClose(v43);
    v43 = 0;
    log_OutPublic(*(*v46 + 32), "FE_CLCML", 60001, 0);
    Str = 2358255623;
    goto LABEL_54;
  }

  if (v45)
  {
    brk_DataUnmap(*(*v46 + 24), *(*a4 + 120), v45);
    v45 = 0;
  }

  v24 = *(*v46 + 8);
  v25 = *a4;
  v34 = xmmword_1F42D61A8;
  v35 = off_1F42D61B8;
  if (vector_ObjOpen(v24, &v34, 1, (v25 + 32)))
  {
    Object = clcpipeline_LoadObject(*(*a4 + 8), *(*a4 + 16), "SYNTHSTREAM", "synthstream", *(*a4 + 32), 0);
    if ((Object & 0x80000000) == 0)
    {
      Object = objc_GetObject(*(*v46 + 48), "SYNTHSTREAM", &v41);
      if ((Object & 0x80000000) == 0)
      {
        *(*a4 + 40) = *(v41 + 1);
        Object = clcpipeline_LoadObject(*(*a4 + 8), *(*a4 + 16), "LINGDB", "lingdb", *(*a4 + 32), 0);
        if ((Object & 0x80000000) == 0)
        {
          Object = objc_GetObject(*(*v46 + 48), "LINGDB", &v41);
          if ((Object & 0x80000000) == 0)
          {
            *(*a4 + 48) = *(v41 + 1);
            Object = clcpipeline_ObjOpen(*(*a4 + 8), *(*a4 + 16), v44, *(*a4 + 32), (*a4 + 24), &v42);
            if ((Object & 0x80000000) == 0)
            {
              paramc_ParamSetStr(*(*v46 + 40), "nativetypeofchar", "utf-8");
              paramc_ParamSetStr(*(*v46 + 40), "inputmimetype", "text/plain;charset=utf-8");
              if (v44)
              {
                ssftmap_ObjClose(v44);
              }

              v26 = *(*(*a4 + 40) + 32);
              NullHandle = safeh_GetNullHandle();
              Object = v26(NullHandle);
              if ((Object & 0x80000000) == 0)
              {
                v28 = *(*(*a4 + 48) + 32);
                v29 = safeh_GetNullHandle();
                Object = v28(v29);
                if ((Object & 0x80000000) == 0)
                {
                  Object = (*(*(*a4 + 40) + 64))(*(*a4 + 56), *(*a4 + 64), 201, "text/plain;charset=utf-8", 0, 1, *a4 + 88);
                  if ((Object & 0x80000000) == 0)
                  {
                    v30 = 0;
                    while (v30 < *(*(*a4 + 24) + 16))
                    {
                      v31 = v30 + 1;
                      (*(*(*a4 + 40) + 56))(*(*a4 + 56), *(*a4 + 64), (v30 + 1));
                      v32 = *(*(*(*a4 + 24) + 8) + 8 * v30++);
                      if (((*(v32[2] + 96))(v32[3], v32[4], *(*a4 + 56), *(*a4 + 64)) & 0x80000000) != 0)
                      {
                        *(*(*a4 + 24) + 16) = v31 - 1;
                        break;
                      }
                    }

                    Str = paramc_ParamGetStr(*(*v46 + 40), "langcode", &__src);
                    if ((Str & 0x80000000) == 0)
                    {
                      strncpy((*a4 + 128), __src, 3uLL);
                    }

                    goto LABEL_54;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_53;
  }

  Str = 2358255626;
  log_OutPublic(*(*v46 + 32), "FE_CLCML", 60000, 0);
LABEL_54:
  log_OutTraceTuningData(*(*v46 + 32), 600, "%s%s", v15, v16, v17, v18, v19, "END");
  if ((Str & 0x80000000) != 0)
  {
    clcml_ObjClose(*a4);
  }

  return Str;
}

uint64_t vclc_loc_ElemCopyPartsString(const char **a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (*a1)
  {
    v6 = strlen(*a1) + 1;
  }

  else
  {
    v6 = 1;
  }

  result = heap_Alloc(a2, v6);
  *a3 = result;
  if (result)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = "";
    }

    strcpy(result, v8);
    return 1;
  }

  return result;
}

uint64_t *vclc_loc_ElemFreePartsString(uint64_t *result, void *a2)
{
  if (*result)
  {
    return heap_Free(a2, *result);
  }

  return result;
}

uint64_t clcml_ObjClose(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 && *(v2 + 16))
  {
    v3 = 0;
    LODWORD(v4) = 0;
    do
    {
      v5 = *(*(v2 + 8) + 8 * v3);
      v6 = (*(v5[2] + 112))(v5[3], v5[4]);
      if (v4 > -1 && v6 < 0)
      {
        v4 = v6;
      }

      else
      {
        v4 = v4;
      }

      ++v3;
      v2 = *(a1 + 24);
    }

    while (v3 < *(v2 + 16));
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    brk_DataClose(*(*a1 + 24), v8);
    *(a1 + 120) = 0;
  }

  NullHandle = safeh_GetNullHandle();
  if (!safeh_HandlesEqual(*(a1 + 88), *(a1 + 96), NullHandle, v10))
  {
    v11 = (*(*(a1 + 40) + 72))(*(a1 + 88), *(a1 + 96));
    *(a1 + 88) = safeh_GetNullHandle();
    *(a1 + 96) = v12;
    if (v11 >= 0 || v4 <= -1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v11;
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = (*(*(a1 + 40) + 40))(v14, *(a1 + 64));
    if (v4 > -1 && v15 < 0)
    {
      v4 = v15;
    }

    else
    {
      v4 = v4;
    }
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = (*(*(a1 + 48) + 40))(v17, *(a1 + 80));
    if (v4 > -1 && v18 < 0)
    {
      v4 = v18;
    }

    else
    {
      v4 = v4;
    }
  }

  v20 = *(a1 + 24);
  if (v20)
  {
    v21 = clcpipeline_ObjClose(v20);
    if (v21 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v21;
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 48))
  {
    v22 = objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    if (v22 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v22;
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 40))
  {
    v23 = objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    if (v23 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v23;
    }

    *(a1 + 40) = 0;
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = clcpipeline_UnloadObjects(*(a1 + 8), *(a1 + 16), v24);
    if (v25 >= 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = v25;
    }

    vector_ObjClose(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  v26 = *a1;
  if (*a1)
  {
    if ((v27 = v26[6]) == 0 || !*(a1 + 540) || ((v28 = objc_UnregisterObject(v27, "LANGCODECONVERTER"), v4 > -1) ? (v29 = v28 < 0) : (v29 = 0), !v29 ? (v4 = v4) : (v4 = v28), (v26 = *a1) != 0))
    {
      v30 = v26[6];
      if (v30)
      {
        v31 = objc_ObjClose(v30);
        v26 = *a1;
        *(*a1 + 48) = 0;
        if (v4 > -1 && v31 < 0)
        {
          v4 = v31;
        }

        else
        {
          v4 = v4;
        }
      }

      v33 = v26[5];
      if (v33)
      {
        v34 = paramc_ObjClose(v33);
        v26 = *a1;
        *(*a1 + 40) = 0;
        if (v4 > -1 && v34 < 0)
        {
          v4 = v34;
        }

        else
        {
          v4 = v4;
        }
      }

      v36 = v26[1];
      v37 = *(a1 + 8);
      if (v37)
      {
        v38 = rsrc_Close(v37, *(a1 + 16));
        if (v4 > -1 && v38 < 0)
        {
          v4 = v38;
        }

        else
        {
          v4 = v4;
        }
      }

      v40 = *(a1 + 528);
      if (v40)
      {
        heap_Free(v36, v40);
      }

      heap_Free(v36, a1);
    }
  }

  return v4;
}

uint64_t clcml_Process(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int PreviousUtf8Offset, char *__s1, const char *a6)
{
  v78 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v76 = 0;
  v74 = 0;
  HIWORD(v70) = 0;
  **(a1 + 104) = 0;
  *(a1 + 260) = 0;
  if (!__s1 || !strcmp(__s1, "normal"))
  {
    for (i = 0; i != 3; ++i)
    {
      __s1a[i] = ssft_tolower(*(a1 + 128 + i));
    }
  }

  else
  {
    for (j = 0; j != 3; ++j)
    {
      __s1a[j] = ssft_tolower(__s1[j]);
    }
  }

  for (__s1a[3] = 0; PreviousUtf8Offset > a3; PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a2, PreviousUtf8Offset))
  {
    if (*(a2 + utf8_GetPreviousUtf8Offset(a2, PreviousUtf8Offset)) > 0x20u)
    {
      break;
    }
  }

  v14 = PreviousUtf8Offset - a3;
  if (PreviousUtf8Offset != a3)
  {
    v16 = heap_Calloc(*(*a1 + 8), *(*(a1 + 24) + 16), 4);
    if (!v16)
    {
      v15 = 2358255626;
      log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0);
      return v15;
    }

    v22 = v16;
    v73 = 0;
    v71 = 0;
    log_OutTraceTuningData(*(*a1 + 32), 600, "%s%s", v17, v18, v19, v20, v21, "BEG");
    v23 = (*(*(a1 + 48) + 64))(*(a1 + 72), *(a1 + 80));
    if ((v23 & 0x80000000) == 0)
    {
      if (!__s1 || (strcpy(__s, "\x1B\\lang="), __strcat_chk(), __strcat_chk(), v24 = strlen(__s), v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), __s, v24), (v23 & 0x80000000) == 0))
      {
        if (!strcmp(a6, "normal") || !strcmp(a6, "mpthree") || (strcpy(__s, "\x1B\\tn="), __strcat_chk(), __strcat_chk(), v25 = strlen(__s), v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), __s, v25), (v23 & 0x80000000) == 0))
        {
          v23 = (*(*(a1 + 40) + 104))(*(a1 + 88), *(a1 + 96), a2 + a3, v14);
          if ((v23 & 0x80000000) == 0)
          {
            v26 = 0;
            v27 = v22;
            while (1)
            {
              v28 = *(a1 + 24);
              if (v26 >= *(v28 + 16))
              {
                break;
              }

              log_OutText(*(*a1 + 32), "FE_CLCML", 4, 0, "Calling Process for %s", *(*(*(v28 + 8) + 8 * v26) + 8));
              v29 = *(*(*(a1 + 24) + 8) + 8 * v26);
              v15 = (*(v29[2] + 104))(v29[3], v29[4], *(a1 + 72), *(a1 + 80), v27);
              v30 = *(a1 + 48);
              if (*(v30 + 200))
              {
                *__s2 = 0;
                if (((*(v30 + 216))(*(a1 + 72), *(a1 + 80), __s2) & 0x80000000) == 0)
                {
                  if (*__s2)
                  {
                    (*(*(a1 + 48) + 200))(*(a1 + 72), *(a1 + 80), 0, *(*(*(*(a1 + 24) + 8) + 8 * v26) + 8), 1);
                  }
                }
              }

              ++v26;
              v27 += 4;
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_101;
              }
            }

            v15 = (*(*(a1 + 48) + 104))(*(a1 + 72), *(a1 + 80), 1, 0, &v76 + 2);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }

            if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), HIWORD(v76), 0, &v70 + 2) & 0x80000000) != 0 || HIWORD(v70) != 1)
            {
              goto LABEL_77;
            }

            v15 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), HIWORD(v76), 0, a1 + 520, &v76);
            if ((v15 & 0x80000000) != 0)
            {
              goto LABEL_101;
            }

            if (((*(*(a1 + 48) + 152))(*(a1 + 72), *(a1 + 80), 2, HIWORD(v76), &v70 + 2) & 0x80000000) == 0)
            {
              if (HIWORD(v70))
              {
                v15 = (*(*(a1 + 48) + 104))(*(a1 + 72), *(a1 + 80), 2, HIWORD(v76), &v74);
                if ((v15 & 0x80000000) != 0)
                {
                  goto LABEL_101;
                }
              }
            }

            *(a1 + 112) = 0;
            v31 = v74;
            if (!v74)
            {
LABEL_77:
              v46 = *(a1 + 104);
              if (*(a1 + 112))
              {
                v47 = *(a1 + 112) - 1;
                if (v46[v47] == 95)
                {
                  v46[v47] = 0;
                  --*(a1 + 112);
                  v46 = *(a1 + 104);
                }
              }

              v48 = strstr(v46, "_\\TQ\\_");
              if (v48)
              {
                v49 = v48;
                v50 = strlen(v48 + 6);
                memmove(v49, v49 + 6, v50 + 1);
                *(a1 + 112) -= 6;
                v46 = *(a1 + 104);
              }

              v51 = strstr(v46, "\\TQ\"");
              if (v51)
              {
                v52 = v51;
                v53 = strlen(v51 + 4);
                memmove(v52, v52 + 4, v53 + 1);
                *(a1 + 112) -= 4;
              }

              if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), HIWORD(v76), 1, &v70 + 2) & 0x80000000) == 0 && HIWORD(v70) == 1)
              {
                *__s2 = 0;
                LOWORD(v70) = 0;
                *(a1 + 536) = 0;
                v15 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), HIWORD(v76), 1, __s2, &v70);
                if ((v15 & 0x80000000) == 0)
                {
                  v54 = v70;
                  if (v70)
                  {
                    v55 = *__s2;
                    do
                    {
                      v56 = *v55;
                      v55 += 8;
                      if (v56 == 1)
                      {
                        ++*(a1 + 536);
                      }

                      --v54;
                    }

                    while (v54);
                  }

                  if (*(a1 + 536))
                  {
                    v57 = heap_Realloc(*(*a1 + 8), *(a1 + 528), 4 * *(a1 + 536));
                    if (v57)
                    {
                      *(a1 + 528) = v57;
                      v58 = v70;
                      if (v70)
                      {
                        v59 = 0;
                        v60 = *__s2;
                        v61 = *__s2;
                        do
                        {
                          if (*v61 == 1)
                          {
                            v62 = v59++;
                            *(v57 + 4 * v62) = v61[3] - *(v60 + 12);
                          }

                          v61 += 8;
                          --v58;
                        }

                        while (v58);
                      }
                    }

                    else
                    {
LABEL_103:
                      v15 = 2358255626;
                      log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0);
                    }
                  }
                }
              }

              goto LABEL_101;
            }

            v32 = 0;
            while (1)
            {
              v23 = (*(*(a1 + 48) + 168))(*(a1 + 72), *(a1 + 80), v31, 0, 1, &v75, &v76);
              if ((v23 & 0x80000000) != 0)
              {
                break;
              }

              if (v75 <= 0xA && ((1 << v75) & 0x610) != 0)
              {
                v70 = 0;
                v23 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), v74, 3, &v73, &v76);
                if ((v23 & 0x80000000) != 0)
                {
                  break;
                }

                if (!strcmp(a6, "mpthree"))
                {
                  v23 = (*(*(a1 + 48) + 176))(*(a1 + 72), *(a1 + 80), v74, 9, &v71, &v76);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }

                  if (*v71)
                  {
                    for (k = 0; k != 3; ++k)
                    {
                      __s2[k] = ssft_tolower(v71[k]);
                    }
                  }

                  else
                  {
                    for (m = 0; m != 3; ++m)
                    {
                      __s2[m] = ssft_tolower(*(a1 + 128 + m));
                    }
                  }

                  __s2[3] = 0;
                  if (strcmp(__s1a, __s2))
                  {
                    v36 = *(a1 + 260);
                    if (v36 <= 0x3F)
                    {
                      strcpy((a1 + 262 + 4 * v36), __s2);
                      v37 = *(a1 + 260);
                      *(a1 + 260) = v37 + 1;
                      *(a1 + 132 + 2 * v37) = v32;
                    }
                  }

                  for (n = 0; n != 4; ++n)
                  {
                    __s1a[n] = ssft_tolower(__s2[n]);
                  }

                  ++v32;
                }

                if (((*(*(a1 + 48) + 184))(*(a1 + 72), *(a1 + 80), v74, 8, &v70 + 2) & 0x80000000) == 0 && HIWORD(v70) == 1)
                {
                  v23 = (*(*(a1 + 48) + 168))(*(a1 + 72), *(a1 + 80), v74, 8, 1, &v70, &v76);
                  if ((v23 & 0x80000000) != 0)
                  {
                    break;
                  }
                }

                v39 = v73;
                v40 = strlen(v73);
                if (v40 && (*v73 != 95 || v73[1]))
                {
                  v41 = *(a1 + 112);
                  v42 = *(a1 + 104);
                  if (v40 + v41 - 1023 <= 0xFFFFFFFFFFFFFBFFLL)
                  {
                    v43 = heap_Realloc(*(*a1 + 8), *(a1 + 104), (v40 + v41 + 2));
                    if (!v43)
                    {
                      goto LABEL_103;
                    }

                    v42 = v43;
                    *(a1 + 104) = v43;
                    LOWORD(v41) = *(a1 + 112);
                    v39 = v73;
                  }

                  *(a1 + 112) = v41 + strlen(v39) + 1;
                  strcat(v42, v39);
                  v44 = strlen(*(a1 + 104));
                  if (v70)
                  {
                    v45 = 35;
                  }

                  else
                  {
                    v45 = 95;
                  }

                  *(*(a1 + 104) + v44) = v45;
                }

                else if (v70 && *(a1 + 112))
                {
                  *(*(a1 + 104) + *(a1 + 112) - 1) = 35;
                }
              }

              v15 = (*(*(a1 + 48) + 120))(*(a1 + 72), *(a1 + 80), v74, &v74);
              if ((v15 & 0x80000000) != 0)
              {
                goto LABEL_101;
              }

              v31 = v74;
              if (!v74)
              {
                goto LABEL_77;
              }
            }
          }
        }
      }
    }

    v15 = v23;
LABEL_101:
    heap_Free(*(*a1 + 8), v22);
    log_OutTraceTuningData(*(*a1 + 32), 600, "%s%s", v63, v64, v65, v66, v67, "END");
    return v15;
  }

  return 0;
}

uint64_t fe_clcml_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v29 = 0;
  v30 = 0;
  v5 = 2358255623;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v30);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v10 = heap_Calloc(*(v30 + 8), 1, 1000);
    v11 = v30;
    if (!v10)
    {
      log_OutPublic(*(v30 + 32), "FE_CLCML", 60000, 0);
      return 2358255626;
    }

    v12 = v10;
    *v10 = v30;
    v10[1] = a3;
    v10[2] = a4;
    Object = objc_GetObject(*(v11 + 48), "SYNTHSTREAM", &v29);
    if ((Object & 0x80000000) != 0 || (Object = objc_GetObject(*(v30 + 48), "FE_DEPES", &v28), (Object & 0x80000000) != 0) || (Object = objc_GetObject(*(v30 + 48), "FE_DCTLKP", &v27), (Object & 0x80000000) != 0) || (*(v12 + 24) = *(v29 + 8), v14 = v27, v15 = v28, *(v12 + 48) = *(v28 + 8), *(v12 + 32) = *(v15 + 16), *(v12 + 72) = *(v14 + 8), *(v12 + 56) = *(v14 + 16), *(v12 + 992) = 0, *(v12 + 976) = 0, *(v12 + 984) = 0, *(v12 + 968) = 0, (paramc_ParamGetStr(*(v30 + 40), "extraesclang", &v26) & 0x80000000) != 0) && (Object = paramc_ParamSetStr(*(v30 + 40), "extraesclang", ""), (Object & 0x80000000) != 0) || (paramc_ParamGetStr(*(v30 + 40), "extraesctn", &v26) & 0x80000000) != 0 && (Object = paramc_ParamSetStr(*(v30 + 40), "extraesctn", ""), (Object & 0x80000000) != 0) || (paramc_ParamGetStr(*(v30 + 40), "lidvoiceswitch", &v26) & 0x80000000) != 0 && (Object = paramc_ParamSetStr(*(v30 + 40), "lidvoiceswitch", ""), (Object & 0x80000000) != 0) || (v16 = *(v30 + 40), v22 = v12, v21 = xmmword_1F42D61C8, v23 = xmmword_1F42D61C8, Object = paramc_ListenerAdd(v16, "extraesclang", &v22), (Object & 0x80000000) != 0) || (v17 = *(v30 + 40), v22 = v12, v23 = v21, Object = paramc_ListenerAdd(v17, "extraesctn", &v22), (Object & 0x80000000) != 0) || (v18 = *(v30 + 40), v22 = v12, v23 = v21, Object = paramc_ListenerAdd(v18, "lidvoiceswitch", &v22), (Object & 0x80000000) != 0) || (v19 = *(*v12 + 8), v22 = ssftmap_ElemCopyString, *&v23 = ssftmap_ElemFreeString, *(&v23 + 1) = ssftmap_ElemCompareKeysString, v24 = stringmap_loc_ElemCopyPtr_1, v25 = stringmap_loc_ElemFreeNoOp_1, Object = ssftmap_ObjOpen(v19, 0, &v22, (v12 + 976)), (Object & 0x80000000) != 0))
    {
      v5 = Object;
      *a5 = v12;
      *(a5 + 8) = 62600;
LABEL_20:
      fe_clcml_ObjClose(v12, *(a5 + 8));
      *a5 = 0;
      *(a5 + 8) = 0;
      return v5;
    }

    v5 = hlp_activate(v12);
    *a5 = v12;
    *(a5 + 8) = 62600;
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_20;
    }
  }

  return v5;
}

uint64_t fe_clcml_ParamLearnChange(uint64_t a1, const char *a2)
{
  __s2 = 0;
  Str = paramc_ParamGetStr(*(*a1 + 40), "clcpreventhlpactivate", &__s2);
  if ((Str & 0x80000000) != 0)
  {
    return hlp_activate(a1);
  }

  v5 = Str;
  if (strcmp("yes", __s2))
  {
    return hlp_activate(a1);
  }

  if (strcmp("extraesclang", a2) && strcmp("extraesctn", a2))
  {
    paramc_ParamSetStr(*(*a1 + 40), "clcpreventhlpactivate", "no");
  }

  return v5;
}

uint64_t hlp_activate(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  __s = 0;
  v47 = 0;
  __s1 = 0;
  v45 = 0;
  v42 = 0;
  __src = 0;
  v40 = 0;
  v41 = 0;
  Str = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "extclccfg", &v47) & 0x80000000) != 0 || !v47)
  {
    return Str;
  }

  if (!*v47)
  {
    return 0;
  }

  paramc_ParamGetStr(*(*a1 + 40), "extraesclang", &__s);
  paramc_ParamGetStr(*(*a1 + 40), "extraesctn", &v45);
  paramc_ParamGetStr(*(*a1 + 40), "mlset", &__s1);
  paramc_ParamGetStr(*(*a1 + 40), "langcode", &__src);
  paramc_ParamGetStr(*(*a1 + 40), "fedataprefix", &v42);
  paramc_ParamGetStr(*(*a1 + 40), "feextcfgdataprefix", &v41);
  if (LH_stricmp(v45, "mpthree") && LH_stricmp(v45, ""))
  {
    log_OutPublic(*(*a1 + 32), "FE_CLCML", 60002, "%s%s", "extraesctn", v45);
  }

  Str = paramc_ParamGetStr(*(*a1 + 40), "voiceml", &v40);
  if ((Str & 0x80000000) == 0 && (!*v40 || *v40 == 110 && v40[1] == 111 && !v40[2]))
  {
    Str = paramc_ParamGetStr(*(*a1 + 40), "lidvoiceswitch", &v40);
    if ((Str & 0x80000000) == 0 && !LH_stricmp(v40, "yes"))
    {
      return 0;
    }
  }

  v3 = __s;
  if (!*__s)
  {
    goto LABEL_31;
  }

  if ((Str & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v3 = __s;
    do
    {
      if ((++v5 & 3) != 0)
      {
        v7 = v3[v4];
        if ((v7 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5)
        {
          __s2[v6++] = ssft_tolower(v7);
        }

        else
        {
          log_OutPublic(*(*a1 + 32), "FE_CLCML", 60003, "%s%s", "extraesclang", v3);
        }
      }

      else
      {
        __s2[v6] = 0;
        if (v3[v4] && v3[v4] != 44)
        {
          log_OutPublic(*(*a1 + 32), "FE_CLCML", 60003, "%s%s", "extraesclang", v3);
        }

        else if (!strstr(__s1, __s2) || !LH_stricmp(__src, __s2))
        {
          log_OutText(*(*a1 + 32), "FE_CLCML", 4, 0, "Ignoring language in extraesclang, language=%s", __s2);
        }

        v6 = 0;
      }

      v4 = v5;
      v3 = __s;
    }

    while (strlen(__s) >= v5);
  }

  v8 = strlen(v3);
  v9 = heap_Alloc(*(*a1 + 8), (v8 + 5));
  if (!v9)
  {
LABEL_104:
    Str = 2358255626;
    log_OutPublic(*(*a1 + 32), "FE_CLCML", 60000, 0);
    return Str;
  }

  v10 = v9;
  v11 = strcpy(v9, __src);
  *&v10[strlen(v11)] = 44;
  strcat(v10, __s);
  Str = paramc_ParamSetStr(*(*a1 + 40), "lidlanguages", v10);
  heap_Free(*(*a1 + 8), v10);
  if ((Str & 0x80000000) == 0)
  {
LABEL_31:
    v12 = *(a1 + 984);
    if (v12)
    {
      *v12 = 0;
    }

    if (*__s || *v45)
    {
      v13 = v47;
      if (*v47)
      {
        while (1)
        {
          v39 = 0;
          v14 = *v13;
          if (v14 == 43)
          {
            v15 = 0;
          }

          else
          {
            v16 = 0;
            v15 = 0;
            while (v14 && v16 <= 0xFE)
            {
              v17 = v16 + 1;
              ++v15;
              __s2[v16] = v14;
              v14 = v13[++v16];
              if (v14 == 43)
              {
                v13 += v17;
                goto LABEL_44;
              }
            }

            v15 = v16;
            v13 += v16;
LABEL_44:
            if (v15 == 255)
            {
              return 0;
            }
          }

          __s2[v15] = 0;
          v18 = v13 + 1;
          if (*v13 != 43)
          {
            v18 = v13;
          }

          v19 = *v18;
          if (v19 == 61)
          {
            v20 = 0;
          }

          else
          {
            v21 = 0;
            v20 = 0;
            while (v19 && v21 <= 0xFE)
            {
              v22 = v21 + 1;
              ++v20;
              v49[v21] = v19;
              v19 = v18[++v21];
              if (v19 == 61)
              {
                v18 += v22;
                goto LABEL_55;
              }
            }

            v20 = v21;
            v18 += v21;
LABEL_55:
            if (v20 == 255)
            {
              return 0;
            }
          }

          v49[v20] = 0;
          if (*v18 == 61)
          {
            v13 = v18 + 1;
          }

          else
          {
            v13 = v18;
          }

          if (v41)
          {
            v23 = strlen(v41);
            __strcpy_chk();
          }

          else
          {
            v23 = 0;
            v48[0] = 0;
          }

          v24 = *v13;
          if (v24 == 44)
          {
            v25 = v23;
          }

          else
          {
            v25 = v23;
            while (v24 && v23 <= 0xFE)
            {
              v48[v23] = v24;
              v26 = *++v13;
              v24 = v26;
              ++v23;
              ++v25;
              if (v26 == 44)
              {
                goto LABEL_70;
              }
            }

            v25 = v23;
          }

LABEL_70:
          if (v25 == 255)
          {
            return 0;
          }

          v48[v25] = 0;
          if (*v13 == 44)
          {
            ++v13;
          }

          if ((*__s2 == 42 || !LH_stricmp(__s2, __src) || strstr(__s1, __s2) && __s && strstr(__s, __s2)) && (*v49 == 42 || v45 && strstr(v45, v49)))
          {
            v27 = *(a1 + 984);
            if (!v27)
            {
              v28 = hlp_StringAppend(*(*a1 + 8), 0, "", (a1 + 992));
              *(a1 + 984) = v28;
              if (!v28)
              {
                goto LABEL_104;
              }

              *v28 = 0;
              v27 = *(a1 + 984);
            }

            v29 = hlp_StringAppend(*(*a1 + 8), v27, __s2, (a1 + 992));
            *(a1 + 984) = v29;
            if (!v29)
            {
              goto LABEL_104;
            }

            v30 = hlp_StringAppend(*(*a1 + 8), v29, "+", (a1 + 992));
            *(a1 + 984) = v30;
            if (!v30)
            {
              goto LABEL_104;
            }

            v31 = hlp_StringAppend(*(*a1 + 8), v30, v49, (a1 + 992));
            *(a1 + 984) = v31;
            if (!v31)
            {
              goto LABEL_104;
            }

            v32 = hlp_StringAppend(*(*a1 + 8), v31, "=", (a1 + 992));
            *(a1 + 984) = v32;
            if (!v32)
            {
              goto LABEL_104;
            }

            v33 = hlp_StringAppend(*(*a1 + 8), v32, v48, (a1 + 992));
            *(a1 + 984) = v33;
            if (!v33)
            {
              goto LABEL_104;
            }

            v34 = hlp_StringAppend(*(*a1 + 8), v33, ",", (a1 + 992));
            *(a1 + 984) = v34;
            if (!v34)
            {
              goto LABEL_104;
            }

            if (!*(a1 + 968))
            {
              v35 = heap_Alloc(*(*a1 + 8), 1024);
              *(a1 + 968) = v35;
              if (!v35)
              {
                goto LABEL_104;
              }
            }

            Str = ssftmap_FindReadOnly(*(a1 + 976), v48, &v39);
            if ((Str & 0x80000000) != 0)
            {
              v36 = clcml_ObjOpen(*(a1 + 8), *(a1 + 16), v48, &v39);
              if ((v36 & 0x80000000) != 0)
              {
                return v36;
              }

              v37 = ssftmap_Insert(*(a1 + 976), v48, v39);
LABEL_98:
              Str = v37;
              if ((v37 & 0x80000000) != 0)
              {
                return Str;
              }
            }
          }

          else
          {
            if ((ssftmap_FindReadOnly(*(a1 + 976), v48, &v39) & 0x80000000) == 0)
            {
              v36 = ssftmap_Remove(*(a1 + 976), v48);
              if ((v36 & 0x80000000) != 0)
              {
                return v36;
              }

              v37 = clcml_ObjClose(v39);
              goto LABEL_98;
            }

            Str = 0;
          }

          if (!*v13)
          {
            return Str;
          }
        }
      }

      return Str;
    }

    return 0;
  }

  return Str;
}

uint64_t fe_clcml_ObjClose(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62600, 1000);
  if ((result & 0x80000000) != 0)
  {
    return 2358255624;
  }

  if (a1)
  {
    v4 = *(*a1 + 40);
    v10 = a1;
    v9 = xmmword_1F42D61C8;
    v11 = xmmword_1F42D61C8;
    paramc_ListenerRemove(v4, "extraesclang", &v10);
    v5 = *(*a1 + 40);
    v10 = a1;
    v11 = v9;
    paramc_ListenerRemove(v5, "extraesctn", &v10);
    v6 = *(*a1 + 40);
    v10 = a1;
    v11 = v9;
    paramc_ListenerRemove(v6, "lidvoiceswitch", &v10);
    if (a1[122])
    {
      hlp_deactivate(a1);
      ssftmap_ObjClose(a1[122]);
    }

    if (a1[3])
    {
      objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    }

    if (a1[6])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    }

    if (a1[9])
    {
      objc_ReleaseObject(*(*a1 + 48), "FE_DCTLKP");
    }

    v7 = a1[121];
    if (v7)
    {
      heap_Free(*(*a1 + 8), v7);
    }

    v8 = a1[123];
    if (v8)
    {
      heap_Free(*(*a1 + 8), v8);
    }

    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t hlp_deactivate(uint64_t a1)
{
  v4 = 0;
  result = *(a1 + 976);
  if (result)
  {
    result = ssftmap_IteratorOpen(result, 0, 1, &v4);
    if ((result & 0x80000000) == 0)
    {
      v2 = 0;
      v3 = 0;
      while ((ssftmap_IteratorNext(v4, &v3, &v2) & 0x80000000) == 0)
      {
        clcml_ObjClose(v2);
        ssftmap_IteratorRemove(v4);
      }

      return ssftmap_IteratorClose(v4);
    }
  }

  return result;
}

uint64_t fe_clcml_ObjReopen(void *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62600, 1000);
  if ((result & 0x80000000) != 0)
  {
    return 2358255624;
  }

  if (a1)
  {
    hlp_deactivate(a1);
    v4 = a1[123];
    if (v4)
    {
      heap_Free(*(*a1 + 8), v4);
      a1[123] = 0;
    }

    return hlp_activate(a1);
  }

  return result;
}

uint64_t fe_clcml_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  synstrmaux_InitStreamOpener(a1 + 80, *(*a1 + 32), "FE_CLCML");
  synstrmaux_RegisterInStream((a1 + 80), "text/plain;charset=utf-8", 0, a1 + 904);
  synstrmaux_RegisterInStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 920);
  synstrmaux_RegisterOutStream((a1 + 80), "text/plain;charset=utf-8", a1 + 936);
  synstrmaux_RegisterOutStream((a1 + 80), "application/x-realspeak-markers-pp;version=4.0", a1 + 952);
  v7 = synstrmaux_OpenStreams((a1 + 80), *(a1 + 24), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 80), *(a1 + 24));
  }

  return v7;
}

uint64_t fe_clcml_Process(const char **a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v7 = 2358255626;
  memset(v59, 0, sizeof(v59));
  __src = 0;
  memset(__n, 0, sizeof(__n));
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  v51 = 0;
  *a5 = 1;
  result = (*(a1[3] + 18))(a1[113], a1[114], &v59[8], v59);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1[3] + 18))(a1[115], a1[116], &v59[4], v59);
    if ((result & 0x80000000) == 0)
    {
      if (*&v59[8])
      {
        v9 = (*(a1[3] + 11))(a1[113], a1[114], &__src, __n);
        if ((v9 & 0x80000000) != 0)
        {
          goto LABEL_80;
        }

        v10 = heap_Alloc(*(*a1 + 1), (__n[0] + 1));
        *&__n[1] = v10;
        if (v10)
        {
          v11 = v10;
          memcpy(v10, __src, __n[0]);
          v11[__n[0]] = 0;
          v9 = (*(a1[3] + 11))(a1[115], a1[116], &v56, &v53 + 4);
          if ((v9 & 0x80000000) != 0)
          {
            goto LABEL_80;
          }

          v12 = HIDWORD(v53);
          v13 = HIDWORD(v53) >> 5;
          LODWORD(v53) = HIDWORD(v53) >> 5;
          HIDWORD(v53) >>= 5;
          v14 = heap_Calloc(*(*a1 + 1), 1, v12 & 0xFFFFFFE0);
          v55 = v14;
          v15 = *a1;
          if (!v14)
          {
LABEL_23:
            log_OutPublic(*(v15 + 4), "FE_CLCML", 60000, 0);
LABEL_81:
            if (*&__n[1])
            {
              heap_Free(*(*a1 + 1), *&__n[1]);
            }

            v45 = v55;
            if (v55)
            {
              v46 = v53;
              if (v53)
              {
                v47 = 0;
                v48 = v54;
                v49 = v55 + 3;
                do
                {
                  if (v48 && *(v48 + 4 * v47) && *v49)
                  {
                    heap_Free(*(*a1 + 1), *v49);
                  }

                  ++v47;
                  v49 += 4;
                }

                while (v47 < v46);
              }

              heap_Free(*(*a1 + 1), v45);
            }

            if (v54)
            {
              heap_Free(*(*a1 + 1), v54);
            }

            return v7;
          }

          v16 = v14;
          v54 = heap_Calloc(*(v15 + 1), 1, 4 * HIDWORD(v53));
          if (v54)
          {
            v50 = *(v56 + 3);
            memcpy(v16, v56, 32 * HIDWORD(v53));
            v9 = (*(a1[6] + 14))(a1[4], a1[5], &v52, 0);
            if ((v9 & 0x80000000) != 0)
            {
              goto LABEL_80;
            }

            if (!a1[123])
            {
              goto LABEL_74;
            }

            if (v12 < 0x20)
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              v22 = "normal";
LABEL_68:
              v51 = 0;
              v42 = strlen(v11);
              v43 = v20 - v50;
              if (v43 >= v42 || v21 || (hlp_getclcml(a1, v19, v22, &v51) & 0x80000000) != 0 || !v51)
              {
                goto LABEL_74;
              }

              v9 = hlp_processclcml(a1, v51, &__n[1], v43, v42, &v55, &v54, v18, v17, &v53, v19, v22);
              if ((v9 & 0x80000000) == 0)
              {
                v11 = *&__n[1];
LABEL_74:
                v44 = strlen(v11);
                if (!v44 || (v9 = (*(a1[3] + 13))(a1[117], a1[118], v11, (v44 + 1)), (v9 & 0x80000000) == 0))
                {
                  v9 = (*(a1[3] + 12))(a1[113], a1[114], __n[0]);
                  if ((v9 & 0x80000000) == 0)
                  {
                    v9 = (*(a1[3] + 13))(a1[119], a1[120], v55, (32 * v53));
                    if ((v9 & 0x80000000) == 0)
                    {
                      v9 = (*(a1[3] + 12))(a1[115], a1[116], (32 * HIDWORD(v53)));
                      if ((v9 & 0x80000000) == 0)
                      {
                        v52 = v52 + strlen(v11) - __n[0] + 1;
                        v9 = (*(a1[6] + 13))(a1[4], a1[5]);
                      }
                    }
                  }
                }
              }

LABEL_80:
              v7 = v9;
              goto LABEL_81;
            }

            v24 = 0;
            v20 = 0;
            v25 = 0;
            v18 = 0;
            v17 = 0;
            v26 = "normal";
            while (1)
            {
              v27 = *&v16[32 * v17];
              v28 = v27 > 0x33;
              v29 = (1 << v27) & 0x8011400200080;
              if (!v28 && v29 != 0)
              {
                v31 = v17;
                v51 = 0;
                v32 = &v16[32 * v17];
                v34 = *(v32 + 3);
                v33 = v32 + 12;
                if (v34 > v20 && v24 == 0)
                {
                  v36 = v25;
                  v37 = v26;
                  if ((hlp_getclcml(a1, v25, v26, &v51) & 0x80000000) == 0 && v51)
                  {
                    v9 = hlp_processclcml(a1, v51, &__n[1], v20 - v50, *v33 - v50, &v55, &v54, v18, v17, &v53, v36, v37);
                    if ((v9 & 0x80000000) != 0)
                    {
                      goto LABEL_80;
                    }

                    if (**(v51 + 104))
                    {
                      v31 = v17 + 2;
                    }

                    else
                    {
                      v31 = v17;
                    }

                    v16 = v55;
                    v17 = v31;
                  }

                  v25 = v36;
                  v26 = v37;
                }

                v38 = &v16[32 * v31];
                if (*v38 == 51)
                {
                  *(v38 + 4) = 0;
                }

                v20 = *(v38 + 3);
                v13 = v53;
                if (v17 < v53)
                {
                  v39 = (v38 + 24);
                  while (1)
                  {
                    if (*(v39 - 3) != v20)
                    {
                      v17 = v31;
                      break;
                    }

                    v40 = *(v39 - 6);
                    if (v40 == 7)
                    {
                      if (v24)
                      {
                        goto LABEL_61;
                      }

                      v24 = 1;
                    }

                    else
                    {
                      if (v40 != 21)
                      {
                        if (v40 == 36)
                        {
                          v24 = 0;
                          v25 = *v39;
                        }

                        else
                        {
                          if (v24)
                          {
                            v41 = 0;
                          }

                          else
                          {
                            v41 = v40 == 34;
                          }

                          if (v41)
                          {
                            v24 = 1;
                          }
                        }

                        goto LABEL_62;
                      }

                      v26 = *v39;
                      if (v24)
                      {
LABEL_61:
                        v24 = 0;
                      }
                    }

LABEL_62:
                    ++v31;
                    v39 += 4;
                    if (v53 == v31)
                    {
                      v17 = v53;
                      break;
                    }
                  }
                }

                v18 = v17--;
              }

              if (++v17 >= v13)
              {
                v22 = v26;
                v19 = v25;
                v11 = *&__n[1];
                v21 = v24 != 0;
                goto LABEL_68;
              }
            }
          }
        }

        v15 = *a1;
        goto LABEL_23;
      }

      v23 = *v59;
      if (*v59)
      {
        if (*&v59[4])
        {
          result = (*(a1[3] + 16))(a1[119], a1[120], a1[115], a1[116], 0xFFFFFFFFLL, &v53);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v23 = *v59;
        }

        if (v23)
        {
          return synstrmaux_CloseOutStreamsOnly(a1 + 40, a1[3]);
        }
      }

      else
      {
        *a5 = 0;
      }
    }
  }

  return result;
}

uint64_t hlp_getclcml(uint64_t a1, char *a2, const char *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  strcpy(v41, "normal");
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v41;
  }

  if (strstr(v7, "_lid"))
  {
    v8 = 0;
    do
    {
      __s2[v8] = ssft_tolower(v7[v8]);
      v9 = v8 + 1;
      v8 = v9;
    }

    while (v9 != 3);
  }

  else
  {
    LODWORD(v9) = *v7;
    if (*v7)
    {
      v14 = 0;
      do
      {
        v15 = v14;
        v16 = ssft_tolower(v7[v14++]);
        __s2[v15] = v16;
      }

      while (strlen(v7) > v14 && v15 < 0xFE);
      if (v15 > 0xFD)
      {
        LODWORD(v10) = 255;
        goto LABEL_20;
      }

      LODWORD(v9) = v14;
    }
  }

  v10 = v9 + 1;
  __s2[v9] = 43;
  if (*a3 && v9 <= 0xFD)
  {
    v11 = 0;
    do
    {
      __s2[v10 + v11] = ssft_tolower(a3[v11]);
      v12 = v11 + 1;
      if (strlen(a3) <= v11 + 1)
      {
        break;
      }

      v13 = v10 + v11++;
    }

    while (v13 < 0xFE);
    LODWORD(v10) = (v10 + v12);
  }

LABEL_20:
  __s2[v10] = 0;
  v17 = strstr(*(a1 + 984), __s2);
  if (strstr(v7, "_lid"))
  {
    for (i = 0; i != 3; ++i)
    {
      __s2[i] = ssft_tolower(v7[i]);
    }

    LODWORD(v19) = 3;
    goto LABEL_24;
  }

  if (!*v7)
  {
    LODWORD(v19) = 0;
LABEL_24:
    __s2[v19] = 43;
LABEL_25:
    __s2[v19 + 1] = 42;
    v20 = (v19 + 2);
    goto LABEL_26;
  }

  v19 = 0;
  do
  {
    v29 = v19;
    v30 = ssft_tolower(v7[v19++]);
    __s2[v29] = v30;
  }

  while (strlen(v7) > v19 && v29 < 0xFE);
  if (v29 <= 0xFD)
  {
    __s2[v19] = 43;
    if (v19 != 254)
    {
      goto LABEL_25;
    }
  }

  v20 = 255;
LABEL_26:
  __s2[v20] = 0;
  v21 = *(a1 + 984);
  v22 = strstr(v21, __s2);
  if (v22 < v17 || v17 == 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = v17;
  }

  if (v22)
  {
    v17 = v24;
  }

  *__s2 = 11050;
  if (*a3)
  {
    v25 = 0;
    do
    {
      v44[v25] = ssft_tolower(a3[v25]);
      v26 = v25 + 1;
      if (strlen(a3) <= v25 + 1)
      {
        break;
      }

      v27 = v25 + 2;
      ++v25;
    }

    while (v27 < 0xFE);
    v21 = *(a1 + 984);
    v28 = v26 + 2;
  }

  else
  {
    v28 = 2;
  }

  v31 = 2358255616;
  __s2[v28] = 0;
  v32 = strstr(v21, __s2);
  if (v32 < v17 || v17 == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v17;
  }

  if (!v32)
  {
    v34 = v17;
  }

  if (v34)
  {
    for (j = v34 + 2; *(j - 2); ++j)
    {
      if (*(j - 2) == 61)
      {
        v36 = *(j - 1);
        if (v36 == 44)
        {
          v37 = 0;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          while (v36 && v38 <= 0xFE)
          {
            v42[v38] = v36;
            v36 = j[v38++];
            ++v39;
            if (v36 == 44)
            {
              goto LABEL_69;
            }
          }

          v39 = v38;
LABEL_69:
          v37 = v39;
        }

        v42[v37] = 0;
        return ssftmap_FindReadOnly(*(a1 + 976), v42, a4);
      }
    }
  }

  return v31;
}

uint64_t hlp_processclcml(const char **a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t *a6, uint64_t *a7, unsigned int a8, unsigned int a9, unsigned int *a10, char *a11, const char *a12)
{
  v197 = *MEMORY[0x1E69E9840];
  strcpy(__s, " ");
  __strcat_chk();
  __n = strlen(__s);
  v19 = *(*a6 + 12);
  *(a2 + 104) = a1[121];
  result = clcml_Process(a2, *a3, a4, a5, a11, a12);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v21 = *(a2 + 104);
  a1[121] = v21;
  if (!*v21)
  {
    return result;
  }

  v193 = a8;
  v187 = v19;
  v184 = result;
  v186 = a2;
  v189 = a4;
  v194 = a6;
  v22 = heap_Realloc(*(*a1 + 1), *a6, 32 * (*a10 + 2));
  v23 = a1;
  if (!v22)
  {
    goto LABEL_228;
  }

  v24 = v22;
  bzero((v22 + 32 * *a10), 32 * (*a10 + 2 - *a10));
  *a6 = v24;
  v25 = heap_Realloc(*(*a1 + 1), *a7, 4 * (*a10 + 2));
  if (!v25)
  {
    goto LABEL_228;
  }

  *a7 = v25;
  v26 = strlen(a1[121]);
  __dst = heap_Calloc(*(*a1 + 1), v26 + 8, 1);
  if (!__dst)
  {
    goto LABEL_228;
  }

  v27 = strcpy(__dst, a1[121]);
  *&__dst[strlen(v27)] = 20;
  strcat(__dst, "EXTCLC");
  v188 = a1;
  log_OutText(*(*a1 + 4), "FE_CLCML", 4, 0, "Inserting phon marker with transcription %s at position %d", a1[121], a4);
  v28 = a10;
  v29 = *a10;
  if (*a10 <= a8)
  {
    v31 = a8;
  }

  else
  {
    v30 = a8 + 1;
    memmove((*a6 + 32 * v30), (*a6 + 32 * a8), 32 * (*a10 - a8));
    memmove((*a7 + 4 * v30), (*a7 + 4 * a8), 4 * (*a10 - a8));
    v31 = a8;
    v28 = a10;
    v29 = *a10;
  }

  *v28 = v29 + 1;
  v32 = *a6 + 32 * v31;
  *v32 = 34;
  v33 = v186;
  *(v32 + 24) = __dst;
  v34 = *a6;
  v35 = (*a6 + 32 * v31);
  v35[3] = v19 + a4;
  if (a8)
  {
    v36 = *(v34 + 32 * (a8 - 1) + 4);
  }

  else
  {
    v36 = 0;
  }

  v35[1] = v36;
  v35[2] = 0;
  v35[4] = 0;
  v179 = v31;
  *(*a7 + 4 * v31) = 1;
  v37 = strlen(*a3);
  v38 = utf8_BelongsToSet(0, *a3, a4, v37);
  NextUtf8Offset = a4;
  if (a4 < a5)
  {
    NextUtf8Offset = a4;
    if (v38)
    {
      NextUtf8Offset = a4;
      do
      {
        NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
        v40 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v37);
      }

      while (NextUtf8Offset < a5 && v40 != 0);
    }
  }

  v42 = strlen(*a3);
  LODWORD(v43) = a8;
  if (NextUtf8Offset < a5)
  {
    v44 = v42;
    v45 = 0;
    LODWORD(v43) = a8;
    do
    {
      if (!utf8_BelongsToSet(0, *a3, NextUtf8Offset, v44))
      {
        do
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
          v46 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v44);
        }

        while (NextUtf8Offset < a5 && v46 == 0);
      }

      if (v43 < *a10)
      {
        v48 = *a6;
        v43 = v43;
        v49 = (*a6 + 32 * v43 + 12);
        do
        {
          if (*v49 >= NextUtf8Offset + v187)
          {
            break;
          }

          v50 = *(v186 + 528);
          if (!v50)
          {
            break;
          }

          if (v45 >= *(v186 + 536) || (v51 = *(v50 + 4 * v45) + v189, v51 >= a5))
          {
            v52 = *(v48 + 32 * (v43 - 1) + 12);
          }

          else
          {
            v52 = v51 + v187;
          }

          *v49 = v52;
          v49 += 8;
          ++v43;
        }

        while (v43 < *a10);
      }

      v53 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v44);
      if (NextUtf8Offset < a5 && v53)
      {
        do
        {
          NextUtf8Offset = utf8_GetNextUtf8Offset(*a3, NextUtf8Offset);
          v54 = utf8_BelongsToSet(0, *a3, NextUtf8Offset, v44);
        }

        while (NextUtf8Offset < a5 && v54 != 0);
      }

      ++v45;
    }

    while (NextUtf8Offset < a5);
  }

  v180 = a9 + 1;
  if (v43 < *a10)
  {
    v56 = v187 + a5;
    v57 = v43;
    v58 = (*a6 + 32 * v43 + 12);
    do
    {
      if (*v58 >= v56)
      {
        break;
      }

      *v58 = v56;
      v58 += 8;
      ++v57;
    }

    while (v57 < *a10);
  }

  v59 = *a3;
  v60 = (*a3 + a5);
  v61 = v60 - 1;
  do
  {
    v62 = v61 > v59;
    v64 = *v61--;
    v63 = v64;
  }

  while (v62 && memchr("_ \r\n\x1B\t", v63, 7uLL));
  if (memchr("(),;:", v63, 6uLL))
  {
    v65 = strlen(*(v186 + 520));
    v182 = memchr("(),;:", *(*(v186 + 520) + v65 - 1), 6uLL) == 0;
  }

  else
  {
    v182 = 0;
  }

  v66 = *(v60 - 1);
  if (*(v60 - 1))
  {
    while (memchr("_ \r\n\x1B\t", v66, 7uLL))
    {
      v67 = *v60++;
      v66 = v67;
      if (!v67)
      {
        goto LABEL_63;
      }
    }

    if (memchr("(),;:", v66, 6uLL))
    {
      v68 = strlen(*(v186 + 520));
      v69 = memchr("(),;:", *(*(v186 + 520) + v68 - 1), 6uLL);
      v70 = v182;
      if (!v69)
      {
        v70 = 1;
      }

      v182 = v70;
    }
  }

LABEL_63:
  v71 = v59 + v189 - 1;
  do
  {
    v73 = *++v71;
    v72 = v73;
  }

  while (memchr("_ \r\n\x1B\t", v73, 7uLL));
  if (!memchr("(),;:", v72, 6uLL))
  {
    goto LABEL_71;
  }

  v74 = ((__PAIR128__(v71, v59) - v71) >> 64);
  if (v74 > v59)
  {
    while (memchr("_ \r\n\x1B\t", *v74, 7uLL))
    {
      if (--v74 <= v59)
      {
        v74 = v59;
        break;
      }
    }
  }

  if (!memchr("(),;:", *v74, 6uLL))
  {
    v75 = 0;
    v74[1] = 44;
  }

  else
  {
LABEL_71:
    v75 = 1;
  }

  v76 = v189 - a5 + strlen(*(v186 + 520));
  if (v182)
  {
    v77 = 2;
  }

  else
  {
    v77 = 1;
  }

  v78 = (v77 + (v75 ^ 1) + v76);
  if (v78 >= 1)
  {
    v23 = v188;
    v79 = strlen(*a3);
    v80 = heap_Realloc(*(*v188 + 1), *a3, (v78 + v79 + 1));
    if (!v80)
    {
      goto LABEL_228;
    }

    v81 = v80;
    *a3 = v80;
    v82 = v194;
    v33 = v186;
    goto LABEL_81;
  }

  if (v77 + (v75 ^ 1) + v76)
  {
    v81 = *a3;
    v82 = v194;
LABEL_81:
    v83 = strlen(v81);
    memmove(&v81[v78 + a5], &v81[a5], v83 - a5 + 1);
    v84 = *v82;
    *(*v82 + 16) += v78;
    v85 = *a10;
    if (v43 < *a10)
    {
      v86 = v43;
      v87 = (v84 + 32 * v43 + 12);
      do
      {
        if (*v87 >= v187 + a5)
        {
          *v87 += v78;
          v85 = *a10;
        }

        ++v86;
        v87 += 8;
      }

      while (v86 < v85);
    }

    a5 += v78;
  }

  if (v75)
  {
    v88 = v189;
  }

  else
  {
    *(*a3 + v189) = 32;
    v88 = v189 + 1;
  }

  v89 = *(v33 + 520);
  if (*v89)
  {
    v90 = 0;
    v91 = 0;
    v92 = v88;
    do
    {
      *(*a3 + v92) = v89[v90];
      v90 = (v91 + 1);
      v89 = *(v33 + 520);
      v93 = strlen(v89);
      ++v92;
      v91 = v90;
    }

    while (v93 > v90);
  }

  else
  {
    LODWORD(v90) = 0;
  }

  v94 = *a3;
  if (v182)
  {
    *(v94 + v90 + v88) = 44;
    LODWORD(v90) = v90 + 1;
    v94 = *a3;
  }

  *(v94 + v90 + v88) = 32;
  v95 = strlen(*a3);
  v96 = v88;
  if (utf8_BelongsToSet(1u, *a3, v88, v95))
  {
    v96 = v88;
    do
    {
      v96 = utf8_GetNextUtf8Offset(*a3, v96);
    }

    while (utf8_BelongsToSet(1u, *a3, v96, v95));
  }

  PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(*a3, a5);
  if (a5)
  {
    v98 = PreviousUtf8Offset;
    v99 = a5;
    if (utf8_BelongsToSet(1u, *a3, PreviousUtf8Offset, v95))
    {
      do
      {
        v99 = v98;
        v100 = utf8_GetPreviousUtf8Offset(*a3, v98);
        if (!v98)
        {
          break;
        }

        v98 = v100;
      }

      while (utf8_BelongsToSet(1u, *a3, v100, v95));
    }
  }

  else
  {
    v99 = 0;
  }

  v101 = 1;
  if (v96 < v99)
  {
    v102 = v96;
    do
    {
      if (!*(*a3 + v102))
      {
        break;
      }

      if (utf8_BelongsToSet(1u, *a3, v102, v95))
      {
        ++v101;
        for (; v102 < v99; v102 = utf8_GetNextUtf8Offset(*a3, v102))
        {
          if (!utf8_BelongsToSet(1u, *a3, v102, v95))
          {
            break;
          }
        }
      }

      v102 = utf8_GetNextUtf8Offset(*a3, v102);
    }

    while (v102 < v99);
  }

  v103 = v188[121];
  v104 = 1;
  v105 = 1;
  while (1)
  {
    v106 = v103[v104 - 1];
    if (v106 > 0x5E)
    {
      if (v106 != 95)
      {
        goto LABEL_125;
      }

LABEL_120:
      ++v105;
      goto LABEL_125;
    }

    if (v106 != 35)
    {
      break;
    }

    if (v103[v104])
    {
      goto LABEL_120;
    }

LABEL_125:
    ++v104;
  }

  if (v103[v104 - 1])
  {
    v107 = v106 == 18;
  }

  else
  {
    v107 = 1;
  }

  if (!v107)
  {
    goto LABEL_125;
  }

  v108 = v101;
  v190 = v88;
  v183 = v96;
  if (v101 < v105)
  {
    LOWORD(v109) = v105 - v101;
    v23 = v188;
    log_OutText(*(*v188 + 4), "FE_CLCML", 5, 0, "TYPE1 modification : insert %u dummy words (%u orthographic words, %u phonetic words)", v109, v108 + 1, v105 + 1);
    v110 = strlen(*a3);
    v111 = v109 * __n;
    v112 = heap_Realloc(*(*v188 + 1), *a3, v111 + v110 + 2);
    if (v112)
    {
      *a3 = v112;
      if (a5)
      {
        v113 = a5 - 1;
      }

      else
      {
        v113 = 0;
      }

      while (1)
      {
        if ((v112[v113] | 0x20) != 0x20)
        {
          v114 = (*(v188[9] + 16))(v188[7], v188[8]);
          v112 = *a3;
          if (!v114)
          {
            break;
          }
        }

        v113 = utf8_GetPreviousUtf8Offset(v112, v113);
        v112 = *a3;
      }

      v118 = utf8_GetNextUtf8Offset(v112, v113);
      v119 = strlen(*a3);
      memmove((*a3 + (v111 + v118)), (*a3 + v118), v119 - v118 + 2);
      v181 = v109;
      if (v109)
      {
        v120 = 0;
        v109 = v109;
        do
        {
          strncpy((*a3 + v118 + v120), __s, __n);
          v120 += __n;
          --v109;
        }

        while (v109);
      }

      v121 = *v194;
      *(*v194 + 16) += v111;
      v99 += v111;
      v122 = *a10;
      if (*a10 <= v193)
      {
        v23 = v188;
        v117 = v181;
      }

      else
      {
        v123 = v179;
        v124 = (v121 + 32 * v179 + 12);
        v23 = v188;
        v117 = v181;
        do
        {
          if (*v124 >= (v118 + v187))
          {
            *v124 += v111;
            v122 = *a10;
          }

          ++v123;
          v124 += 8;
        }

        while (v123 < v122);
      }

      goto LABEL_163;
    }

    goto LABEL_228;
  }

  if (v105 >= v101)
  {
    goto LABEL_139;
  }

  log_OutText(*(*v188 + 4), "FE_CLCML", 5, 0, "TYPE2 modification : hyphenate words (%u orthographic words, %u phonetic words)", v101, v105);
  v115 = a5 - 1;
  if (a5 == 1)
  {
    goto LABEL_139;
  }

  v116 = v101 - v105;
  while (*(*a3 + v115) == 32)
  {
    v115 = utf8_GetPreviousUtf8Offset(*a3, v115);
    if (!v115)
    {
      goto LABEL_139;
    }
  }

  while (*(*a3 + v115) != 32)
  {
    v115 = utf8_GetPreviousUtf8Offset(*a3, v115);
    if (!v115)
    {
      goto LABEL_139;
    }
  }

  if (!v116)
  {
LABEL_139:
    v117 = 0;
    v23 = v188;
  }

  else
  {
    v23 = v188;
    do
    {
      while (*(*a3 + v115) == 32)
      {
        *(*a3 + v115) = 45;
        v115 = utf8_GetPreviousUtf8Offset(*a3, v115);
        if (!v115)
        {
          goto LABEL_152;
        }
      }

      --v116;
      while (*(*a3 + v115) != 32)
      {
        v115 = utf8_GetPreviousUtf8Offset(*a3, v115);
        if (!v115)
        {
          goto LABEL_152;
        }
      }
    }

    while (v116);
LABEL_152:
    v117 = 0;
  }

LABEL_163:
  v125 = strlen(a12);
  v126 = heap_Calloc(*(*v23 + 1), (v125 + 1), 1);
  if (v126)
  {
    v127 = v126;
    strcpy(v126, a12);
    v128 = a10;
    v129 = *a10;
    if (*a10 <= v180)
    {
      v132 = v194;
    }

    else
    {
      v130 = a9 + 2;
      memmove((*v194 + 32 * v130), (*v194 + 32 * v180), 32 * (*a10 - v180));
      v131 = (*a7 + 4 * v130);
      v132 = v194;
      memmove(v131, (*a7 + 4 * v180), 4 * (*a10 - v180));
      v128 = a10;
      v129 = *a10;
    }

    v23 = v188;
    *v128 = v129 + 1;
    v133 = *v132 + 32 * v180;
    *v133 = 21;
    *(v133 + 24) = v127;
    v134 = v117 * __n;
    v135 = *v132;
    v136 = (*v132 + 32 * v180);
    if (v134 + a5 <= v95)
    {
      v137 = a5 + v187 + v134;
    }

    else
    {
      v137 = v187 + v95;
    }

    v136[3] = v137;
    if (a9 == -1)
    {
      v138 = 0;
    }

    else
    {
      v138 = *(v135 + 32 * a9 + 4);
    }

    v136[1] = v138;
    v136[2] = 0;
    v136[4] = 0;
    *(*a7 + 4 * v180) = 1;
    if (*(v186 + 260))
    {
      v139 = 0;
      v140 = v186 + 132;
      while (1)
      {
        v141 = *(v140 + 2 * v139) ? 3 : 1;
        v142 = heap_Realloc(*(*v23 + 1), v135, 32 * (*v128 + v141));
        if (!v142)
        {
          goto LABEL_228;
        }

        *v194 = v142;
        v143 = heap_Realloc(*(*v23 + 1), *a7, 4 * (*a10 + v141));
        if (!v143)
        {
          goto LABEL_228;
        }

        *a7 = v143;
        v144 = strlen(*a3);
        if (*(v140 + 2 * v139))
        {
          v145 = v144;
          v146 = 0;
          v147 = v183;
          v148 = v194;
          v149 = v190;
          do
          {
            if (utf8_BelongsToSet(1u, *a3, v147, v145))
            {
              ++v146;
              for (; v147 < v99; v147 = utf8_GetNextUtf8Offset(*a3, v147))
              {
                if (!utf8_BelongsToSet(1u, *a3, v147, v145))
                {
                  break;
                }
              }
            }

            v147 = utf8_GetNextUtf8Offset(*a3, v147);
            v150 = *(v140 + 2 * v139);
          }

          while (v146 < v150);
        }

        else
        {
          v150 = 0;
          v147 = v183;
          v148 = v194;
          v149 = v190;
        }

        if (v147 > v149)
        {
          v147 = utf8_GetPreviousUtf8Offset(*a3, v147);
          v150 = *(v140 + 2 * v139);
        }

        v151 = *v148;
        v152 = v147 + v187;
        if (v150)
        {
          LODWORD(v153) = v193 - 1;
          do
          {
            v153 = (v153 + 1);
          }

          while (*(v151 + 32 * v153 + 12) + 1 < v152);
          v23 = v188;
          v154 = heap_Calloc(*(*v188 + 1), 7, 1);
          if (!v154)
          {
            goto LABEL_228;
          }

          v155 = v154;
          v156 = (v153 + 1);
          strcpy(v154, "normal");
          memmove((*v194 + 32 * v156), (*v194 + 32 * v153), 32 * (*a10 - v153));
          v193 = v153 + 1;
          memmove((*a7 + 4 * v156), (*a7 + 4 * v153), 4 * (*a10 - v153));
          ++*a10;
          v157 = *v194 + 32 * v153;
          *v157 = 21;
          *(v157 + 24) = v155;
          if (v147)
          {
            v158 = v187 - 1 + v147;
          }

          else
          {
            v158 = v187;
          }

          v151 = *v194;
          v159 = (*v194 + 32 * v153);
          v159[3] = v158;
          if (v153)
          {
            v160 = *(v151 + 32 * (v153 - 1) + 4);
          }

          else
          {
            v160 = 0;
          }

          v159[1] = v160;
          v159[2] = 0;
          v159[4] = 0;
          *(*a7 + 4 * v153) = 1;
        }

        LODWORD(v161) = v193;
        do
        {
          v162 = v161;
          v163 = *(v151 + 32 * v161 + 12);
          v161 = (v161 + 1);
        }

        while (v163 < v152);
        v23 = v188;
        v164 = heap_Calloc(*(*v188 + 1), 4, 1);
        if (!v164)
        {
          goto LABEL_228;
        }

        v165 = v164;
        strcpy(v164, (v186 + 262 + 4 * v139));
        memmove((*v194 + 32 * v161), (*v194 + 32 * v162), 32 * (*a10 - v161 + 1));
        memmove((*a7 + 4 * v161), (*a7 + 4 * v162), 4 * (*a10 - v161 + 1));
        v128 = a10;
        ++*a10;
        v166 = *v194 + 32 * v162;
        *v166 = 36;
        *(v166 + 24) = v165;
        v135 = *v194;
        v167 = (*v194 + 32 * v162);
        v167[3] = v152;
        if (v161 == 1)
        {
          v168 = 0;
        }

        else
        {
          v168 = *(v135 + 32 * (v161 - 2) + 4);
        }

        v167[1] = v168;
        v167[2] = 0;
        v167[4] = 0;
        *(*a7 + 4 * v162) = 1;
        if (*(v140 + 2 * v139))
        {
          if (v139)
          {
            v169 = *(v140 + 2 * (v139 - 1));
          }

          else
          {
            v169 = 0;
          }

          if (v169 >= *(v140 + 2 * v139))
          {
            v170 = 0;
          }

          else
          {
            v170 = 0;
            do
            {
              v171 = __dst[v170];
              if (v171 == 95 || v171 == 35)
              {
                ++v169;
              }

              v170 = utf8_GetNextUtf8Offset(__dst, v170);
            }

            while (v169 < *(v140 + 2 * v139));
          }

          v23 = v188;
          v172 = strlen(&__dst[v170]);
          v173 = heap_Calloc(*(*v188 + 1), (v172 + 1), 1);
          if (!v173)
          {
            goto LABEL_228;
          }

          __na = v173;
          strcpy(v173, &__dst[v170]);
          v174 = &__dst[utf8_GetPreviousUtf8Offset(__dst, v170)];
          *v174 = 20;
          strcat(v174, "EXTCLC");
          log_OutText(*(*v188 + 4), "FE_CLCML", 4, 0, "Inserting phon marker with transcription %s at position %d", v188[121], v190);
          v175 = (v161 + 1);
          memmove((*v194 + 32 * v175), (*v194 + 32 * v161), 32 * (*a10 - v161));
          memmove((*a7 + 4 * v175), (*a7 + 4 * v161), 4 * (*a10 - v161));
          v128 = a10;
          ++*a10;
          v176 = *v194 + 32 * v161;
          *v176 = 34;
          *(v176 + 24) = __na;
          v135 = *v194;
          v177 = (*v194 + 32 * v161);
          v177[3] = v152;
          if (v161)
          {
            v178 = *(v135 + 32 * v162 + 4);
          }

          else
          {
            v178 = 0;
          }

          v177[1] = v178;
          v177[2] = 0;
          v177[4] = 0;
          *(*a7 + 4 * v161) = 1;
          v193 = v161 + 1;
          __dst = __na;
        }

        else
        {
          v193 = v161 + 1;
        }

        v23 = v188;
        if (++v139 >= *(v186 + 260))
        {
          return v184;
        }
      }
    }

    return v184;
  }

  else
  {
LABEL_228:
    log_OutPublic(*(*v23 + 4), "FE_CLCML", 60000, 0);
    return 2358255626;
  }
}

uint64_t fe_clcml_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62600, 1000) & 0x80000000) != 0)
  {
    return 2358255624;
  }

  v3 = *(a1 + 24);

  return synstrmaux_CloseStreams((a1 + 80), v3);
}

uint64_t fe_clcml_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2358255617;
  }

  result = 0;
  *a2 = &IFeClcml;
  return result;
}

char *hlp_StringAppend(uint64_t *a1, char *a2, char *__s, unsigned int *a4)
{
  if (!__s)
  {
    return a2;
  }

  v8 = strlen(__s);
  v9 = v8;
  if (!a2)
  {
    v12 = v8 + 129;
    v13 = heap_Alloc(a1, v8 + 129);
    a2 = v13;
    if (!v13)
    {
      return a2;
    }

    if (a4)
    {
      *a4 = v12;
    }

    v10 = 0;
    *v13 = 0;
LABEL_11:
    strncat(a2, __s, v9);
    a2[v10 + v9] = 0;
    return a2;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = strlen(a2);
  if (v9 + v10 + 1 < *a4)
  {
    goto LABEL_11;
  }

  v11 = v9 + *a4 + 129;
  *a4 = v11;
  a2 = heap_Realloc(a1, a2, v11);
  if (a2)
  {
    goto LABEL_11;
  }

  return a2;
}

uint64_t clcpipeline_ObjOpen(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _DWORD *a6)
{
  v68 = 0;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  inited = InitRsrcFunction(a1, a2, &v67);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v13 = 2358255626;
  *a5 = 0;
  *a6 = 0;
  if ((ssftmap_FindReadOnly(a3, "BROKERSTRING", &v69) & 0x80000000) != 0 || !*v69)
  {
    return 2358255623;
  }

  v63 = *v69;
  log_OutText(v67[4], "FE_CLCML", 4, 0, "clcpipeline_ObjOpen : Begin %s", *v69);
  v14 = heap_Calloc(v67[1], 1, 48);
  v15 = v14;
  if (!v14)
  {
    log_OutPublic(v67[4], "FE_CLCML", 16000, 0);
    v35 = 0;
    goto LABEL_51;
  }

  v57 = a4;
  v58 = a6;
  v59 = a2;
  v60 = a3;
  v62 = a5;
  v64 = 0;
  *v14 = v67;
  v16 = v14 + 3;
  v17 = 1;
  do
  {
    ReadOnly = ssftmap_FindReadOnly(a3, "COMPONENTS", &v69);
    if ((ReadOnly & 0x80000000) != 0 || (ReadOnly = ssftmap_IteratorOpen(v69[2], 0, 0, &v66), (ReadOnly & 0x80000000) != 0))
    {
      v13 = ReadOnly;
      log_OutPublic(v67[4], "FE_CLCML", 16072, "%s%s");
      goto LABEL_49;
    }

    for (i = 0; (ssftmap_IteratorNext(v66, &v68, &v69) & 0x80000000) == 0; ++i)
    {
      if (v17 == 1)
      {
        if (!v68 || strcmp(v68, "COMPONENT"))
        {
          log_OutPublic(v67[4], "FE_CLCML", 16091, "%s%s%s%s");
          goto LABEL_42;
        }

        if (!*v69 || !**v69)
        {
          log_OutPublic(v67[4], "FE_CLCML", 16092, "%s%s");
LABEL_42:
          v13 = 2358255620;
          goto LABEL_49;
        }
      }

      else
      {
        v20 = v67;
        v21 = *v69;
        if (*v16)
        {
          v22 = heap_strdup(v67[1], *v69);
          v23 = i + 2;
          *(*(v15 + 40) + 8 * v23) = v22;
          compstats_Start(*(v15 + 24), *(v15 + 32), v23);
        }

        v24 = heap_Calloc(v20[1], 1, 40);
        if (!v24)
        {
          v36 = v20[4];
LABEL_40:
          log_OutPublic(v36, "FE_CLCML", 16000, 0, v56);
          goto LABEL_49;
        }

        v25 = v24;
        *(*(v15 + 8) + 8 * i) = v24;
        *v24 = 1;
        v26 = heap_strdup(v20[1], v21);
        v25[1] = v26;
        if (!v26)
        {
          log_OutPublic(v20[4], "FE_CLCML", 16000, 0);
LABEL_45:
          v37 = v25[1];
          a5 = v62;
          v35 = v64;
          if (v37)
          {
            heap_Free(v20[1], v37);
          }

          heap_Free(v20[1], v25);
          *(*(v15 + 8) + 8 * i) = 0;
          goto LABEL_51;
        }

        v25[3] = safeh_GetNullHandle();
        v25[4] = v27;
        v28 = brk_InterfaceQuery(v20[3]);
        if ((v28 & 0x80000000) != 0)
        {
          v13 = v28;
          goto LABEL_45;
        }

        if (*v16)
        {
          compstats_Stop(*v16, *(v15 + 32), i + 2);
        }
      }
    }

    ssftmap_IteratorClose(v66);
    v66 = 0;
    if (v17 != 1)
    {
      goto LABEL_30;
    }

    v29 = heap_Calloc(v67[1], i, 8);
    *(v15 + 8) = v29;
    if (!v29)
    {
      v36 = v67[4];
      goto LABEL_40;
    }

    *(v15 + 16) = i;
    v30 = heap_Calloc(v67[1], i, 16);
    v31 = v67[4];
    v64 = v30;
    if (!v30)
    {
      log_OutPublic(v31, "FE_CLCML", 16000, 0);
      v35 = 0;
      a5 = v62;
      goto LABEL_51;
    }

    if (log_GetLogLevel(v31) >= 2)
    {
      compstats_ObjOpen(a1, v59, *(v15 + 16) + 3, v15 + 24);
      compstats_Start(*(v15 + 24), *(v15 + 32), 0);
      a3 = v60;
      if (*(v15 + 24))
      {
        v32 = heap_Calloc(v67[1], *(v15 + 16) + 3, 8);
        *(v15 + 40) = v32;
        if (v32)
        {
          **(v15 + 40) = heap_strdup(v67[1], "Total");
          *(*(v15 + 40) + 8) = heap_strdup(v67[1], "TTSEG input CB");
          *(*(v15 + 40) + 8 * *(v15 + 16) + 16) = heap_strdup(v67[1], "TTSEG output CB");
        }

        else
        {
          compstats_ObjClose(*(v15 + 24), *(v15 + 32));
          *(v15 + 24) = safeh_GetNullHandle();
          *(v15 + 32) = v34;
        }
      }
    }

    else
    {
LABEL_30:
      a3 = v60;
    }
  }

  while (v17++ < 2);
  v39 = ssftmap_FindReadOnly(a3, "PARAMETERS", &v69);
  a5 = v62;
  if ((v39 & 0x80000000) == 0 && (ssftmap_IteratorOpen(v69[2], 0, 0, &v66) & 0x80000000) == 0)
  {
    while ((ssftmap_IteratorNext(v66, &v68, &v69) & 0x80000000) == 0)
    {
      if (v68 && *v68)
      {
        if (*v69)
        {
          v40 = *v69;
        }

        else
        {
          v40 = "";
        }

        paramc_ParamSetStr(v67[5], v68, v40);
      }
    }

    ssftmap_IteratorClose(v66);
    v66 = 0;
  }

  if ((ssftmap_FindReadOnly(a3, "OBJECTS", &v69) & 0x80000000) == 0 && (ssftmap_IteratorOpen(v69[2], 0, 0, &v66) & 0x80000000) == 0)
  {
    if ((ssftmap_IteratorNext(v66, &v68, &v69) & 0x80000000) == 0)
    {
      while (1)
      {
        v41 = v68;
        if (!v68)
        {
          break;
        }

        v42 = *v69;
        if (!*v69 || !*v42)
        {
          goto LABEL_135;
        }

        if (strcmp(v68, "INET"))
        {
          Object = clcpipeline_LoadObject(a1, v59, v41, v42, v57, v58);
          if ((Object & 0x80000000) != 0)
          {
            goto LABEL_130;
          }

          if (!strcmp(v68, "FE_DCTLKP") && !strcmp(*v69, "fe/fe_dctlkp"))
          {
            Object = clcpipeline_LoadObject(a1, v59, "FE_NN", "fe/fe_nn", v57, v58);
            if ((Object & 0x80000000) != 0)
            {
              goto LABEL_130;
            }
          }
        }

        if ((ssftmap_IteratorNext(v66, &v68, &v69) & 0x80000000) != 0)
        {
          goto LABEL_85;
        }
      }

      v41 = "";
LABEL_135:
      log_OutPublic(v67[4], "FE_CLCML", 16099, "%s%s%s%s", "clcpipeline", v63, "tag", v41);
      v13 = 2358255620;
      goto LABEL_50;
    }

LABEL_85:
    Object = clcpipeline_LoadObject(a1, v59, "CLMOBJECT", "clmobjectinterface", v57, v58);
    if ((Object & 0x80000000) != 0)
    {
LABEL_130:
      v13 = Object;
      goto LABEL_50;
    }

    ssftmap_IteratorClose(v66);
    v66 = 0;
  }

  v44 = clcpipeline_disclose_location_of_fe_clm_component(v67, v15);
  v45 = v44;
  if ((v44 & 0x80000000) != 0)
  {
    v13 = v44;
    goto LABEL_50;
  }

  v46 = *(v15 + 16);
  if (!*(v15 + 16))
  {
LABEL_103:
    v53 = ssftmap_FindReadOnly(v60, "RESOURCES", &v69);
    if ((v53 & 0x80000000) != 0)
    {
      a5 = v62;
      v35 = v64;
    }

    else
    {
      v53 = ssftmap_IteratorOpen(v69[2], 0, 0, &v66);
      v54 = v53;
      a5 = v62;
      v35 = v64;
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_110;
      }
    }

    v54 = 0;
    if ((v53 & 0x1FFF) != 0xD && (v53 & 0x1FFF) != 0x14)
    {
      v13 = v53;
      goto LABEL_51;
    }

LABEL_110:
    v61 = (v15 + 24);
    v65 = 0;
    while ((ssftmap_IteratorNext(v66, &v68, &v69) & 0x80000000) == 0)
    {
      if (v68 && !strcmp(v68, "RESOURCE"))
      {
        if (*v69 && **v69)
        {
          v55 = v69[1];
          if (v55 && (ssftmap_FindReadOnly(v55, "content-type", &v65) & 0x80000000) == 0 && v65 && *v65)
          {
            log_OutText(v67[4], "FE_CLCML", 4, 0, "ResourceLoad: %s, %s", *v69, v65);
            clcpipeline_ResourceLoad(v15, 1, v65, *v69, 0, 0, 0);
          }

          else
          {
            log_OutPublic(v67[4], "FE_CLCML", 16095, "%s%s", "clcpipeline", v63);
            v54 = 2358255620;
          }
        }

        else
        {
          log_OutPublic(v67[4], "FE_CLCML", 16094, "%s%s");
        }
      }

      else
      {
        log_OutPublic(v67[4], "FE_CLCML", 16093, "%s%s%s%s");
      }
    }

    ssftmap_IteratorClose(v66);
    v66 = 0;
    if (*v61)
    {
      a5 = v62;
      v35 = v64;
      if (*(v15 + 40))
      {
        compstats_Stop(*v61, *(v15 + 32), 0);
        compstats_Log(*(v15 + 24), *(v15 + 32), v67[4], "Pipeline Open", *(v15 + 40), 0, 0);
      }

      v13 = v54;
      goto LABEL_51;
    }

    v13 = v54;
    a5 = v62;
    v35 = v64;
    if (v64)
    {
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  v47 = 0;
  v48 = (v64 + 8);
  while (1)
  {
    v49 = *(*(v15 + 8) + 8 * v47);
    if (v49)
    {
      break;
    }

LABEL_102:
    ++v47;
    v48 += 2;
    if (v47 >= v46)
    {
      goto LABEL_103;
    }
  }

  if (*v16)
  {
    compstats_Start(*v16, *(v15 + 32), v47 + 2);
  }

  NullHandle = safeh_GetNullHandle();
  if (safeh_HandlesEqual(*(v49 + 24), *(v49 + 32), NullHandle, v51))
  {
    log_OutText(v67[4], "FE_CLCML", 4, 0, "Open component: %s", *(v49 + 8));
    v52 = (*(*(v49 + 16) + 32))(*(v48 - 1), *v48, a1, v59, v49 + 24);
  }

  else
  {
    if (!*(*(v49 + 16) + 48))
    {
      goto LABEL_98;
    }

    log_OutText(v67[4], "FE_CLCML", 4, 0, "Reopen component: %s", *(v49 + 8));
    *v58 = 1;
    v52 = (*(*(v49 + 16) + 48))(*(v49 + 24), *(v49 + 32));
  }

  v45 = v52;
LABEL_98:
  if (*v16)
  {
    compstats_Stop(*v16, *(v15 + 32), v47 + 2);
  }

  if ((v45 & 0x80000000) == 0)
  {
    v46 = *(v15 + 16);
    goto LABEL_102;
  }

  log_OutPublic(v67[4], "FE_CLCML", 16001, "%s%s%s%x", "component", *(v49 + 8), "lherror", v45);
  v13 = v45;
LABEL_49:
  a5 = v62;
LABEL_50:
  v35 = v64;
LABEL_51:
  if (v66)
  {
    ssftmap_IteratorClose(v66);
  }

  if (v35)
  {
LABEL_54:
    heap_Free(v67[1], v35);
  }

LABEL_55:
  if ((v13 & 0x80000000) != 0)
  {
    if (v15)
    {
      clcpipeline_ObjClose(v15);
    }
  }

  else
  {
    *a5 = v15;
  }

  log_OutText(v67[4], "FE_CLCML", 4, 0, "clcpipeline_ObjOpen : End (%x)", v13);
  return v13;
}

uint64_t clcpipeline_LoadObject(_WORD *a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, _DWORD *a6)
{
  v24 = 0;
  v25 = a3;
  NullHandle = safeh_GetNullHandle();
  v23 = v12;
  v21 = 0;
  inited = InitRsrcFunction(a1, a2, &v24);
  if ((inited & 0x80000000) == 0)
  {
    if ((objc_GetObject(v24[6], a3, &v21) & 0x80000000) != 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      LOBYTE(v18) = 1;
      v16 = brk_InterfaceQuery(v24[3]);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      log_OutText(v24[4], "FE_CLCML", 4, 0, "Open component: %s", a4);
      v17 = (*(*(&v18 + 1) + 32))(NullHandle, v23, a1, a2, &v19);
      if ((v17 & 0x80000000) != 0)
      {
        inited = v17;
        log_OutPublic(v24[4], "FE_CLCML", 16001, "%s%s%s%x", "component", a4, "lherror", v17);
        brk_InterfaceRelease(v24[3], *(&v18 + 1));
        return inited;
      }

      inited = objc_RegisterObject(v24[6], a3, &v18);
      if ((inited & 0x80000000) != 0)
      {
        log_OutPublic(v24[4], "FE_CLCML", 16001, "%s%s%s%x", "component", a4, "lherror", inited);
      }

      else
      {
        if (!a5 || vector_Add(a5, &v25))
        {
          return inited;
        }

        log_OutPublic(v24[4], "FE_CLCML", 16000, 0);
        inited = 2358255626;
      }

      (*(*(&v18 + 1) + 40))(v19, *(&v19 + 1));
      brk_InterfaceRelease(v24[3], *(&v18 + 1));
      return inited;
    }

    v14 = v21[1];
    if (*(v14 + 48))
    {
      log_OutText(v24[4], "FE_CLCML", 4, 0, "Reopen object: %s", a3);
      if (a6)
      {
        *a6 = 1;
      }

      inited = (*(v14 + 48))(v21[2], v21[3]);
      if ((inited & 0x80000000) != 0)
      {
        log_OutPublic(v24[4], "FE_CLCML", 16001, "%s%s%s%x", "component", a4, "lherror", inited);
      }
    }

    objc_ReleaseObject(v24[6], a3);
  }

  return inited;
}

uint64_t clcpipeline_disclose_location_of_fe_clm_component(uint64_t a1, uint64_t a2)
{
  v4 = paramc_ParamSetUInt(*(a1 + 40), "fe_clm_component", 0);
  if ((v4 & 0x80000000) != 0)
  {
    return v4;
  }

  v5 = *(a2 + 16);
  if (!*(a2 + 16))
  {
    return v4;
  }

  v6 = 0;
  v7 = *(a2 + 8);
  v8 = -1;
  v9 = -1;
  do
  {
    v10 = *(v7 + 8 * v6);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (!strcmp(v11, "fe/fe_clm"))
      {
        v9 = v6;
      }

      else if (!strcmp(v11, "fe/fe_global"))
      {
        v8 = v6;
      }
    }

    ++v6;
  }

  while (v5 != v6);
  if (v9 == 0xFFFF || v8 == 0xFFFF)
  {
    return v4;
  }

  v12 = *(a1 + 40);
  if (v8 >= v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  return paramc_ParamSetUInt(v12, "fe_clm_component", v13);
}

uint64_t clcpipeline_ResourceLoad(uint64_t *a1, int a2, char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v14 = 2358255623;
  v28 = 0;
  *&v27 = safeh_GetNullHandle();
  *(&v27 + 1) = v15;
  if (a1 && a3)
  {
    v16 = *a1;
    if (a4)
    {
      if (strstr(a3, ";loader=broker"))
      {
        *v26 = 0;
        Str = paramc_ParamGetStr(*(v16 + 40), "langcode", v26);
        if ((Str & 0x80000000) != 0)
        {
          return Str;
        }

        v18 = brokeraux_ComposeBrokerString(v16, a4, 1, 1, *v26, 0, 0, v29, 0x400uLL);
        if (v18 < 0)
        {
          return v18 | 0x8C902000;
        }

        a4 = v29;
      }
    }

    else
    {
      a4 = "";
    }

    if (a7)
    {
      *a7 = safeh_GetNullHandle();
      a7[1] = v19;
    }

    ResourceOwner = clcpipeline_FindResourceOwner(a1, a3, &v28);
    if ((ResourceOwner & 0x80000000) != 0)
    {
      v24 = ResourceOwner;
      log_OutPublic(*(v16 + 32), "FE_CLCML", 16077, "%s%s%s%s", "uri", a4, "contentType", a3);
      return v24;
    }

    else
    {
      v21 = v28;
      v22 = *(v28[2] + 64);
      if (v22)
      {
        v23 = v22(v28[3], v28[4], a3, a4, a5, a6, &v27);
        v14 = v23;
        if ((v23 & 0x80000000) != 0)
        {
          if (!a2 || (v23 & 0x1FFF) != 0x40C)
          {
            log_OutPublic(*(v16 + 32), "FE_CLCML", 16038, "%s%s%s%s%s%s%s%x", "component", v21[1], "uri", a4);
          }
        }

        else if (a7)
        {
          *a7 = v27;
        }
      }

      else
      {
        log_OutPublic(*(v16 + 32), "FE_CLCML", 16039, "%s%s%s%s%s%s", "component", v28[1]);
      }
    }
  }

  return v14;
}

uint64_t clcpipeline_ObjClose(uint64_t *a1)
{
  if (!a1)
  {
    return 2358255622;
  }

  v2 = *a1;
  if (a1[1])
  {
    v3 = a1[3];
    if (v3)
    {
      compstats_Reset(v3);
      compstats_Start(a1[3], a1[4], 0);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = 0;
      v6 = (v4 - 1) + 2;
      v7 = v4 - 1;
      do
      {
        v8 = v7;
        v9 = *(a1[1] + 8 * v7);
        if (v9)
        {
          v10 = *v9;
          v11 = v10 != 0;
          v12 = v10 - 1;
          if (v12 != 0 && v11)
          {
            *v9 = v12;
          }

          else
          {
            NullHandle = safeh_GetNullHandle();
            if (!safeh_HandlesEqual(*(v9 + 3), *(v9 + 4), NullHandle, v14))
            {
              log_OutText(*(v2 + 32), "FE_CLCML", 4, 0, "Close component: %s", *(*(a1[1] + 8 * v7) + 8));
              v15 = a1[3];
              if (v15)
              {
                compstats_Start(v15, a1[4], v6);
              }

              v16 = *(a1[1] + 8 * v7);
              v17 = (*(v16[2] + 40))(v16[3], v16[4]);
              v18 = a1[3];
              if (v18)
              {
                compstats_Stop(v18, a1[4], v6);
              }

              if ((v17 & 0x80000000) != 0)
              {
                log_OutPublic(*(v2 + 32), "FE_CLCML", 16002, "%s%s%s%x", "component", *(*(a1[1] + 8 * v7) + 8), "lherror", v17);
                if (v5 >= 0)
                {
                  v5 = v17;
                }

                else
                {
                  v5 = v5;
                }
              }
            }

            v19 = *(a1[1] + 8 * v7);
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = brk_InterfaceRelease(*(v2 + 24), v20);
              if (v21 >= 0 || v5 <= -1)
              {
                v5 = v5;
              }

              else
              {
                v5 = v21;
              }

              v19 = *(a1[1] + 8 * v7);
            }

            heap_Free(*(v2 + 8), *(v19 + 8));
            heap_Free(*(v2 + 8), *(a1[1] + 8 * v7));
          }
        }

        --v6;
        --v7;
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }

    v23 = a1[3];
    if (v23)
    {
      compstats_Stop(v23, a1[4], 0);
      compstats_Log(a1[3], a1[4], *(v2 + 32), "Pipeline Close", a1[5], 0, 0);
    }

    heap_Free(*(v2 + 8), a1[1]);
  }

  else
  {
    v5 = 0;
  }

  v24 = a1[3];
  if (v24)
  {
    compstats_ObjClose(v24, a1[4]);
  }

  if (a1[5])
  {
    v25 = 0;
    do
    {
      v26 = *(a1[5] + 8 * v25);
      if (v26)
      {
        heap_Free(*(v2 + 8), v26);
      }

      ++v25;
    }

    while (*(a1 + 8) + 3 > v25);
    heap_Free(*(v2 + 8), a1[5]);
  }

  heap_Free(*(v2 + 8), a1);
  return v5;
}

uint64_t clcpipeline_FindResourceOwner(uint64_t a1, const char *a2, void *a3)
{
  v3 = 2358255623;
  if (a1 && a2 && *a2)
  {
    v7 = 0;
    *a3 = 0;
    while (v7 < *(a1 + 16))
    {
      v19 = 0;
      v8 = *(*(a1 + 8) + 8 * v7);
      v9 = *(v8[2] + 56);
      if (v9)
      {
        v10 = v9(v8[3], v8[4], &v19);
        v9 = *a3;
        if ((v10 & 0x80000000) == 0)
        {
          v11 = v19;
          if (v19)
          {
            if (v9)
            {
              return 0;
            }

            v12 = *v19;
            if (*v19)
            {
              v13 = 0;
              do
              {
                v14 = strlen(v12);
                if (!strncmp(a2, v12, v14))
                {
                  v15 = a2[v14];
                  if (v15 == 59 || v15 == 0)
                  {
                    v17 = *(*(a1 + 8) + 8 * v7);
                    *a3 = v17;
                    if (v17)
                    {
                      return 0;
                    }
                  }
                }

                v12 = v11[++v13];
              }

              while (v12);
            }

            v9 = 0;
          }
        }
      }

      ++v7;
      if (v9)
      {
        return 0;
      }
    }

    return 2358255636;
  }

  return v3;
}

uint64_t clcpipeline_UnloadObjects(_WORD *a1, int a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  inited = InitRsrcFunction(a1, a2, &v13);
  if ((inited & 0x80000000) == 0)
  {
    for (i = 1; i != 3; ++i)
    {
      Size = vector_GetSize(a3);
      if (Size)
      {
        v7 = Size - 1;
        do
        {
          if (!vector_GetElemAt(a3, v7, &v12))
          {
            break;
          }

          if ((objc_GetObject(v13[6], *v12, &v11) & 0x80000000) == 0)
          {
            objc_ReleaseObject(v13[6], *v12);
            if (i == 1)
            {
              v8 = (*(v11[1] + 40))(v11[2], v11[3]);
              if (v8 < 0)
              {
                v9 = v8;
                log_OutPublic(v13[4], "FE_CLCML", 16100, "%s%x%s%s", "lherror", inited, "object", *v12);
              }

              else
              {
                v9 = brk_InterfaceRelease(v13[3], v11[1]);
              }
            }

            else
            {
              v9 = objc_UnregisterObject(v13[6], *v12);
              if (v9 < 0)
              {
                log_OutPublic(v13[4], "FE_CLCML", 16101, "%s%x%s%s", "lherror", inited, "object", *v12);
              }
            }

            if (v9 >= 0)
            {
              inited = inited;
            }

            else
            {
              inited = v9;
            }
          }

          --v7;
        }

        while (v7 != -1);
      }
    }
  }

  return inited;
}

uint64_t fe_deinitlingdb_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, int a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (!a5)
  {
    return 2308972551;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v20);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = objc_GetObject(v20[6], "LINGDB", &v18);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  Object = objc_GetObject(v20[6], "SYNTHSTREAM", &v19);
  v8 = v20[6];
  if ((Object & 0x80000000) != 0)
  {
    v14 = "LINGDB";
LABEL_15:
    objc_ReleaseObject(v8, v14);
    return Object;
  }

  Object = objc_GetObject(v8, "FE_DEPES", &v17);
  if ((Object & 0x80000000) != 0)
  {
    objc_ReleaseObject(v20[6], "LINGDB");
    v8 = v20[6];
    v14 = "SYNTHSTREAM";
    goto LABEL_15;
  }

  v9 = heap_Alloc(v20[1], 928);
  v10 = v20;
  if (v9)
  {
    v11 = v9;
    *v9 = v20;
    v12 = *(v19 + 8);
    *(v9 + 8) = *(v18 + 8);
    *(v9 + 16) = v12;
    v13 = v17;
    *(v9 + 40) = *(v17 + 8);
    *(v9 + 24) = *(v13 + 16);
    *(v9 + 920) = 0;
    if ((paramc_ParamGetUInt(v10[5], "usewordorthography", &v16) & 0x80000000) == 0 && v16 == 1)
    {
      *(v11 + 920) = 1;
    }

    *a5 = v11;
    *(a5 + 8) = 62337;
  }

  else
  {
    log_OutPublic(v20[4], "FE_DEINITLINGDB", 31000, 0);
    objc_ReleaseObject(v20[6], "LINGDB");
    objc_ReleaseObject(v20[6], "SYNTHSTREAM");
    objc_ReleaseObject(v20[6], "FE_DEPES");
    return 2308972554;
  }

  return Object;
}

uint64_t fe_deinitlingdb_ObjClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 62337, 928);
  if ((result & 0x80000000) != 0)
  {
    return 2308972552;
  }

  if (a1)
  {
    objc_ReleaseObject(*(*a1 + 48), "LINGDB");
    objc_ReleaseObject(*(*a1 + 48), "SYNTHSTREAM");
    objc_ReleaseObject(*(*a1 + 48), "FE_DEPES");
    heap_Free(*(*a1 + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_deinitlingdb_ObjReopen(uint64_t a1, int a2)
{
  LODWORD(result) = safeh_HandleCheck(a1, a2, 62337, 928);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return 2308972552;
  }
}

uint64_t fe_deinitlingdb_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 62337, 928) & 0x80000000) != 0)
  {
    return 2308972552;
  }

  synstrmaux_InitStreamOpener(a1 + 48, *(*a1 + 32), "FE_DEINITLINGDB");
  synstrmaux_RegisterOutStream((a1 + 48), "text/plain;charset=depes", a1 + 872);
  synstrmaux_RegisterOutStream((a1 + 48), "application/x-realspeak-markers-pp;version=4.0", a1 + 888);
  synstrmaux_RegisterOutStream((a1 + 48), "text/x-realspeak-phonemes;charset=tts", a1 + 904);
  v7 = synstrmaux_OpenStreams((a1 + 48), *(a1 + 16), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = v7;
LABEL_7:
    synstrmaux_CloseStreams((a1 + 48), *(a1 + 16));
    return v8;
  }

  v8 = paramc_ParamSetStr(*(*a1 + 40), "willbeprocessingdeinitlingdb", "yes");
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  return v8;
}

uint64_t fe_deinitlingdb_Process(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v99 = *MEMORY[0x1E69E9840];
  __s = 0;
  v93 = 0;
  v90 = 0;
  v89 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  result = safeh_HandleCheck(a1, a2, 62337, 928);
  if ((result & 0x80000000) != 0)
  {
    return 2308972552;
  }

  *a5 = 1;
  if (*(a1 + 872))
  {
    v94 = 0;
    v92 = 0;
    v91 = 0;
    v87 = 0;
    v88 = 0;
    v86 = 0;
    v10 = (*(*(a1 + 8) + 272))(a3, a4, 98, 3, 0, 0);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 8) + 104))(a3, a4, 1, 0, &v94 + 2);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 8) + 168))(a3, a4, HIWORD(v94), 3, 1, &v84, &v94);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v88, 1);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v10 = (*(*(a1 + 40) + 112))(*(a1 + 24), *(a1 + 32), &v87, 0);
    if (v10 < 0)
    {
      goto LABEL_46;
    }

    v11 = (*(*(a1 + 8) + 184))(a3, a4, HIWORD(v94), 0, &v89);
    v12 = *(a1 + 8);
    if (v11 < 0 || v89 != 1)
    {
      v13 = 0;
      if (((*(v12 + 184))(a3, a4, HIWORD(v94), 1, &v89) & 0x80000000) != 0 || v89 != 1 || (v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v94), 1, &v93, &v94), (v10 & 0x80000000) == 0) && ((v13 = v94, !v94) || (v10 = (*(*(a1 + 16) + 104))(*(a1 + 888), *(a1 + 896), v93, 32 * v94), (v10 & 0x80000000) == 0)))
      {
        v14 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), "##", 3);
        if (v13)
        {
          v15 = 0;
          v16 = 0;
          v17 = (v93 + 12);
          v18 = v13;
          do
          {
            if (*(v17 - 3) == 8)
            {
              v19 = v17[3];
              v20 = v19 + v15;
              v21 = v19 + v16;
              if (*v17 == *(v93 + 12))
              {
                v16 = v21;
              }

              else
              {
                v15 = v20;
              }
            }

            v17 += 8;
            --v18;
          }

          while (v18);
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        if (!(v16 | v15))
        {
          goto LABEL_47;
        }

        v96 = 35;
        if (v16)
        {
          v97 = 91;
          LH_utoa(v16, v98, 0xAu);
          v29 = strlen(&v96);
          *(&v96 + v29) = 93;
          *(&v96 + v29 + 1) = 35;
          v30 = v29 + 2;
        }

        else
        {
          v97 = 35;
          v30 = 2;
        }

        v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v96, v30);
        if ((v10 & 0x80000000) == 0)
        {
          if (v15)
          {
            v96 = 91;
            LH_utoa(v15, &v97, 0xAu);
            v31 = strlen(&v96);
            *(&v96 + v31) = 93;
            *(&v96 + v31 + 1) = 0;
            v32 = v31 + 2;
          }

          else
          {
            v96 = 0;
            v32 = 1;
          }

          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v96, v32);
        }
      }
    }

    else
    {
      v10 = (*(v12 + 176))(a3, a4, HIWORD(v94), 0, &__s, &v94);
      if ((v10 & 0x80000000) == 0)
      {
        if (v94 <= 1u)
        {
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), "##", 3);
          goto LABEL_46;
        }

        v22 = strlen(__s);
        v10 = (*(*(a1 + 16) + 104))(*(a1 + 872), *(a1 + 880), __s, (v22 + 1));
        if (v10 < 0)
        {
          goto LABEL_46;
        }

        v10 = (*(*(a1 + 8) + 176))(a3, a4, HIWORD(v94), 1, &v93, &v94);
        if (v10 < 0)
        {
          goto LABEL_46;
        }

        v23 = v94;
        v24 = v93 + 12;
        v25 = *(v93 + 12);
        v82 = v22;
        if (v94)
        {
          v26 = 0;
          v27 = 0;
          while (*v24 == v25)
          {
            if (*(v24 - 12) == 8)
            {
              v27 += *(v24 + 12);
            }

            ++v26;
            v24 += 32;
            if (v94 == v26)
            {
              v28 = v94;
              goto LABEL_58;
            }
          }

          v28 = v26;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

LABEL_58:
        v34 = 1;
        (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "#", 1);
        if (v27)
        {
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "[", 1);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          LH_itoa(v27, &v96, 0xAu);
          v35 = strlen(&v96);
          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v96, v35);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v34 = strlen(&v96) + 3;
        }

        if (((*(*(a1 + 8) + 152))(a3, a4, 2, HIWORD(v94), &v89) & 0x80000000) != 0 || !v89)
        {
          v69 = v85;
        }

        else
        {
          v10 = (*(*(a1 + 8) + 104))(a3, a4, 2, HIWORD(v94), &v92);
          if (v10 < 0)
          {
            goto LABEL_46;
          }

          v78 = v23;
          v79 = 0;
          v36 = 0;
          v80 = 0;
          v81 = 0;
          v77 = 1;
          while (v92)
          {
            v10 = (*(*(a1 + 8) + 168))(a3, a4);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            v37 = v91;
            if ((v91 - 9) < 6 || v91 == 4)
            {
              if (v91 != 11 && HIDWORD(v81) != 0)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x12\x10", 2);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                HIDWORD(v81) = 0;
                v34 += 2;
                v37 = v91;
              }

              if (v37 != 12 && v81)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x13\x10", 2);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                LODWORD(v81) = 0;
                v34 += 2;
              }

              v10 = (*(*(a1 + 8) + 168))(a3, a4, v92, 1, 1, &v86, &v94);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v10 = (*(*(a1 + 8) + 168))(a3, a4, v92, 2, 1, &v85, &v94);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v40 = v86;
              v10 = (*(*(a1 + 8) + 176))(a3, a4, v92, 3, &v90, &v94);
              if (v10 < 0)
              {
                goto LABEL_46;
              }

              v41 = v34 - v40 + v36;
              v42 = v90;
              if (!v90 || !*v90)
              {
                goto LABEL_107;
              }

              v43 = strlen(v90);
              v79 = v43;
              if (!*(a1 + 920))
              {
                if (v43)
                {
                  v44 = 0;
                  v45 = 0;
LABEL_92:
                  ++v44;
                  do
                  {
                    if (v44 != 1 && v90[v44 - 1] == 42 && v90[v44 - 2] != 45)
                    {
                      v90[v44 - 1] = 45;
                      v45 = 1;
                      if (v44 != v43)
                      {
                        goto LABEL_92;
                      }

                      v42 = v90;
                      goto LABEL_101;
                    }

                    ++v44;
                  }

                  while (v44 - v43 != 1);
                  v42 = v90;
                  if ((v45 & 1) == 0)
                  {
                    goto LABEL_103;
                  }

LABEL_101:
                  v46 = strlen(v42);
                  v10 = (*(*(a1 + 8) + 160))(a3, a4, v92, 3, (v46 + 1), v42, &v83);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v42 = v90;
LABEL_103:
                  if (!v42)
                  {
                    goto LABEL_107;
                  }
                }
              }

              if (*v42)
              {
                if (v77)
                {
                  v47 = 0;
                }

                else
                {
                  v64 = *(*(a1 + 16) + 104);
                  v65 = *(a1 + 904);
                  v66 = *(a1 + 912);
                  if (HIWORD(v89))
                  {
                    v10 = v64(v65, v66, "%#[", 3);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    LH_itoa(HIWORD(v89), &v96, 0xAu);
                    v67 = strlen(&v96);
                    v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v96, v67);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v47 = v41;
                    v41 += strlen(&v96) + 4;
                  }

                  else
                  {
                    v10 = v64(v65, v66, "-*", 2);
                    if (v10 < 0)
                    {
                      goto LABEL_46;
                    }

                    v47 = 0;
                    v41 += 2;
                  }

                  LODWORD(v23) = v78;
                }

                v68 = v91;
                if (v91 == 13)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x10\x12", 2);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v41 += 2;
                  HIDWORD(v81) = 1;
                  v68 = v91;
                }

                if (v68 == 14)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x10\x13", 2);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v41 += 2;
                  LODWORD(v81) = 1;
                }

                if (((*(*(a1 + 8) + 184))(a3, a4, v92, 8, &v89) & 0x80000000) != 0 || v89 != 1)
                {
                  v77 = 0;
                  HIWORD(v89) = 0;
                }

                else
                {
                  v10 = (*(*(a1 + 8) + 168))(a3, a4, v92, 8, 1, &v89 + 2, &v94);
                  if (v10 < 0)
                  {
                    goto LABEL_46;
                  }

                  v77 = 0;
                }
              }

              else
              {
LABEL_107:
                v47 = 0;
              }

              v48 = v86;
              if (v28 >= v23)
              {
                v27 = 0;
              }

              else
              {
                v27 = 0;
                v49 = v93;
                v50 = v25 + v86 + v41;
                v51 = v25 + v86 + v47;
                v52 = v28 - 1;
                v53 = v28 - 1;
                v54 = v80;
                while (1)
                {
                  v55 = v49 + 32 * v28;
                  v56 = (v55 + 12);
                  if (v48 < (*(v55 + 12) - v25))
                  {
                    break;
                  }

                  *v56 = v50;
                  if (*v55 == 8)
                  {
                    if (v28)
                    {
                      v57 = v53;
                      v58 = v52;
                      do
                      {
                        v59 = v49 + 32 * v58;
                        v61 = *(v59 + 12);
                        v60 = (v59 + 12);
                        if (v61 == *v56)
                        {
                          *v60 = v51;
                        }

                        --v58;
                      }

                      while (v57--);
                    }

                    v27 += *(v55 + 24);
                    *v56 = v51;
                    v54 = v48;
                  }

                  ++v28;
                  ++v52;
                  ++v53;
                  if (v28 >= v23)
                  {
                    v80 = v54;
                    v28 = v23;
                    goto LABEL_122;
                  }
                }

                v80 = v54;
              }

LABEL_122:
              v36 = v85;
              v34 = v48 - v85 + v41;
              if (v90 && *v90)
              {
                v63 = v85;
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912));
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v34 += v79;
                v36 = v63;
                LODWORD(v23) = v78;
              }
            }

            v14 = (*(*(a1 + 8) + 120))(a3, a4, v92, &v92);
            if (v14 < 0)
            {
              goto LABEL_47;
            }
          }

          if (HIDWORD(v81))
          {
            v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x12\x10", 2);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            LOWORD(v34) = v34 + 2;
          }

          if (v81)
          {
            v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "\x13\x10", 2);
            if (v10 < 0)
            {
              goto LABEL_46;
            }

            LOWORD(v34) = v34 + 2;
          }

          v69 = v85;
          if (v80)
          {
            v23 = v78;
            if (v80 == (v85 - 1))
            {
LABEL_149:
              if (v28 >= v23)
              {
                v73 = v82;
              }

              else
              {
                v70 = v25 + v34 + v69 + 1;
                v71 = v93 + 32 * v28 + 12;
                v72 = v23 - v28;
                v73 = v82;
                do
                {
                  *v71 = v70;
                  if (*(v71 - 12) == 8)
                  {
                    v27 += *(v71 + 12);
                  }

                  v71 += 32;
                  --v72;
                }

                while (v72);
              }

              (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "#", 1);
              v74 = v34 - v73 + v69 + 1;
              if (v27)
              {
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "[", 1);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                LH_itoa(v27, &v96, 0xAu);
                v75 = strlen(&v96);
                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), &v96, v75);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v10 = (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "]", 1);
                if (v10 < 0)
                {
                  goto LABEL_46;
                }

                v74 += strlen(&v96) + 2;
              }

              (*(*(a1 + 16) + 104))(*(a1 + 904), *(a1 + 912), "", 1);
              *(v93 + 16) += v74;
              v76 = v87 + v74 + v88;
              v87 = 0;
              v88 = v76;
              v10 = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32));
              if ((v10 & 0x80000000) == 0)
              {
                v10 = (*(*(a1 + 40) + 104))(*(a1 + 24), *(a1 + 32), v87, 0);
                if ((v10 & 0x80000000) == 0)
                {
                  v10 = (*(*(a1 + 16) + 104))(*(a1 + 888), *(a1 + 896), v93, (32 * v23));
                }
              }

              goto LABEL_46;
            }
          }

          else
          {
            v23 = v78;
          }
        }

        v27 = 0;
        goto LABEL_149;
      }
    }

LABEL_46:
    v14 = v10;
LABEL_47:
    if (v84)
    {
      v14 = synstrmaux_CloseOutStreamsOnly((a1 + 48), *(a1 + 16));
    }

    LODWORD(result) = (*(*(a1 + 8) + 64))(a3, a4);
    if (v14 > -1 && result < 0)
    {
      return result;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

uint64_t fe_deinitlingdb_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 62337, 928) & 0x80000000) != 0)
  {
    return 2308972552;
  }

  result = synstrmaux_CloseStreams((a1 + 48), *(a1 + 16));
  if ((result & 0x80000000) == 0)
  {
    v4 = *(*a1 + 40);

    return paramc_ParamSetStr(v4, "willbeprocessingdeinitlingdb", "no");
  }

  return result;
}

uint64_t fe_deinitlingdb_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2308972545;
  }

  result = 0;
  *a2 = &IFeDeinitlingdb;
  return result;
}

uint64_t sprop_str_realloc(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  if (a3 + 1 <= v3)
  {
    return 0;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  do
  {
    v6 = v3;
    v3 *= 2;
  }

  while (v6 < a3 + 1);
  v7 = heap_Realloc(*(a1 + 8), *a2, v6);
  if (v7)
  {
    v8 = v7;
    result = 0;
    *a2 = v8;
    *(a2 + 16) = v6;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0);
    return 2409635850;
  }

  return result;
}

uint64_t sprop_str_dealloc(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 4))
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[1] = 0;
  return 0;
}

uint64_t sprop_str_clear(uint64_t a1)
{
  if (*(a1 + 16))
  {
    *(a1 + 8) = 0;
    **a1 = 0;
  }

  return 0;
}

uint64_t sprop_str_cat(uint64_t a1, uint64_t a2, char *__s, unsigned int a4)
{
  v4 = a4;
  v8 = *(a2 + 8);
  if (!a4)
  {
    v4 = strlen(__s);
  }

  v9 = v4 + v8;
  v10 = sprop_str_realloc(a1, a2, v4 + v8);
  if ((v10 & 0x80000000) == 0)
  {
    memcpy((*a2 + v8), __s, v4);
    *(*a2 + v9) = 0;
    *(a2 + 8) = v9;
    *(a2 + 12) += Utf8_LengthInUtf8chars(__s, v4);
  }

  return v10;
}

uint64_t sprop_str_copy(uint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (*(a2 + 16))
  {
    *(a2 + 8) = 0;
    **a2 = 0;
  }

  if (!a3)
  {
    return 0;
  }

  result = sprop_str_cat(a1, a2, a3, a4);
  if ((result & 0x80000000) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sprop_str_take_ownership(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a2 + 16))
  {
    heap_Free(*(a1 + 8), *a2);
    *(a2 + 16) = 0;
  }

  *a2 = a3;
  *(a2 + 12) = 0;
  *(a2 + 16) = a4;
  *(a2 + 8) = a4 - 1;
  *(a3 + (a4 - 1)) = 0;
  v8 = Utf8_LengthInUtf8chars(*a2, *(a2 + 8));
  *(a2 + 12) = v8;
  v9 = *(a2 + 8);
  if (v9 != v8)
  {
    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "utf8length = %d, byte length = %d", v8, v9);
  }

  return 0;
}

uint64_t sprop_ne_load(_WORD *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  *(a4 + 88) = 0;
  __s1 = 0;
  *v18 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v18);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "voice", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v16);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v9 = heap_Realloc(*(a3 + 8), *a4, 256);
  if (v9)
  {
    v10 = v9;
    *a4 = v9;
    v11 = __s1;
    if (strstr(__s1, "uni"))
    {
      __sprintf_chk(v19, 0, 0x80uLL, "crf/ne/%s/%s/ne", *v18, v16);
      v12 = 0;
      __s1 = 0;
    }

    else
    {
      __sprintf_chk(v19, 0, 0x80uLL, "crf/ne/%s/%s/%s/ne", *v18, v11, v16);
      v12 = __s1;
    }

    v13 = brokeraux_ComposeBrokerString(a3, v19, 1, 1, *v18, v12, 0, v10, 0x100uLL);
    if ((v13 & 0x80000000) == 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "broker string = %s", *a4);
      if ((ssftriff_reader_ObjOpen(a1, a2, 2, *a4, "CRPH", 1031, &v15) & 0x80000000) == 0)
      {
        if ((crf_Init(a1, a2, v15, (a4 + 1)) & 0x80000000) != 0)
        {
          log_OutText(*(a3 + 32), "FE_SPROP", 0, 0, "error reading named entity model (NE): %x");
        }

        else
        {
          *(a4 + 88) = 1;
          log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "loaded %s");
        }

        return ssftriff_reader_ObjClose(v15);
      }

      log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "no named entity model (NE)");
    }
  }

  else
  {
    log_OutPublic(*(a3 + 32), "FE_SPROP", 39000, 0);
    return 2409635850;
  }

  return v13;
}

uint64_t sprop_ne_unload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *a2 = 0;
  }

  if (*(a2 + 352) == 1)
  {
    crf_Deinit(a2 + 8);
  }

  *(a2 + 352) = 0;
  v5 = *(a2 + 360);
  if (v5 && *(a2 + 376))
  {
    v6 = 0;
    while (1)
    {
      v7 = sprop_str_set_dealloc(a1, *(a2 + 360) + 16 * v6);
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      if (*(a2 + 376) <= ++v6)
      {
        v5 = *(a2 + 360);
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_12:
    heap_Free(*(a1 + 8), v5);
    *(a2 + 360) = 0;
    heap_Free(*(a1 + 8), *(a2 + 368));
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  return v7;
}

uint64_t sprop_ne_label(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = *(a2 + 352);
  v25 = SPROP_STR_SET_null;
  if (v6)
  {
    v11 = *(a5 + 8);
    if (v11)
    {
      v12 = heap_Realloc(*(a1 + 8), *(a2 + 360), (16 * v11));
      if (!v12 || (*(a2 + 360) = v12, bzero(v12, (16 * v11)), (v13 = heap_Realloc(*(a1 + 8), *(a2 + 368), (8 * v11))) == 0))
      {
        v21 = 2409635850;
        log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0);
        return v21;
      }

      *(a2 + 368) = v13;
    }

    *(a2 + 376) = v11;
    word_features = sprop_get_word_features(a1, a3, *(a2 + 360));
    if ((word_features & 0x80000000) == 0)
    {
      v24 = 0;
      v23 = 0;
      if (*(a2 + 376))
      {
        for (i = 0; ; ++i)
        {
          sprop_str_set_add(a1, &v25, "", "", 0);
          v16 = i;
          word_features = sprop_str_set_join(a1, v25 + 24 * i, *(a2 + 360) + 16 * i);
          if ((word_features & 0x80000000) != 0)
          {
            break;
          }

          word_features = sprop_str_set_dealloc(a1, *(a2 + 360) + 16 * i);
          if ((word_features & 0x80000000) != 0)
          {
            break;
          }

          *(*(a2 + 368) + 8 * i) = *(v25 + 24 * i);
          v17 = *(a2 + 376);
          if (v17 <= (v16 + 1))
          {
            if (!v17)
            {
              return sprop_str_set_dealloc(a1, &v25);
            }

            word_features = crf_Process(a2 + 8, *(a2 + 368), v17, &v24, &v23);
            if ((word_features & 0x80000000) == 0)
            {
              if (v23 == *(a2 + 376))
              {
                if (v23)
                {
                  v18 = 0;
                  do
                  {
                    sprop_str_set_add(a1, a4, "", "", 0);
                    v19 = strlen(*(v24 + 8 * v18));
                    sprop_str_take_ownership(a1, *a4 + 24 * v18, *(v24 + 8 * v18), v19);
                    if (a5)
                    {
                      v20 = *a5 + 24 * v18;
                      if (*(v20 + 8))
                      {
                        log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector ne : %s %s : %s", *(*(a2 + 368) + 8 * v18), *v20, *(v24 + 8 * v18));
                      }
                    }

                    ++v18;
                  }

                  while (*(a2 + 376) > v18);
                }

                log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector ne : END_OF_SEQUENCE : ");
              }

              else
              {
                log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: crf_Process returned no predictions");
              }

              if (v24)
              {
                heap_Free(*(a1 + 8), v24);
              }

              return sprop_str_set_dealloc(a1, &v25);
            }

            return word_features;
          }
        }
      }

      else
      {
        return sprop_str_set_dealloc(a1, &v25);
      }
    }

    return word_features;
  }

  else
  {
    log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_ne_label: called while model not loaded");
    return 2409635842;
  }
}

uint64_t sprop_str_set_realloc(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 12);
  if (v3 >= a3)
  {
    return 0;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  do
  {
    v6 = v3;
    v3 *= 2;
  }

  while (v6 < a3);
  v7 = heap_Realloc(*(a1 + 8), *a2, 24 * v6);
  if (v7)
  {
    *a2 = v7;
    *(a2 + 12) = v6;
    bzero((v7 + 24 * *(a2 + 8)), 24 * (v6 - *(a2 + 8)));
    return 0;
  }

  else
  {
    log_OutPublic(*(a1 + 32), "FE_SPROP", 39000, 0);
    return 2409635850;
  }
}

uint64_t sprop_str_set_dealloc(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (!v2)
  {
    return 0;
  }

  *(a2 + 8) = 0;
  while (1)
  {
    v5 = sprop_str_dealloc(a1, (*a2 + 24 * v2 - 24));
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v2 = *(a2 + 12) - 1;
    *(a2 + 12) = v2;
    if (!v2)
    {
      heap_Free(*(a1 + 8), *a2);
      *a2 = 0;
      return v5;
    }
  }

  return v5;
}

uint64_t sprop_str_set_clear(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  do
  {
    result = sprop_str_clear(*a1 + 24 * v1 - 24);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    v1 = *(a1 + 8) - 1;
    *(a1 + 8) = v1;
  }

  while (v1);
  return result;
}

uint64_t sprop_str_set_add(uint64_t a1, uint64_t a2, char *a3, char *a4, unsigned int a5)
{
  result = sprop_str_set_realloc(a1, a2, *(a2 + 8) + 1);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_cat(a1, *a2 + 24 * *(a2 + 8), a3, 0);
    if ((result & 0x80000000) == 0)
    {
      result = sprop_str_cat(a1, *a2 + 24 * *(a2 + 8), a4, a5);
      if ((result & 0x80000000) == 0)
      {
        ++*(a2 + 8);
      }
    }
  }

  return result;
}

uint64_t sprop_str_set_join(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sprop_str_clear(a2);
  if (!*(a3 + 8))
  {
    return 0;
  }

  result = sprop_str_copy(a1, a2, **a3, *(*a3 + 8));
  if ((result & 0x80000000) == 0 && *(a3 + 8) >= 2u)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      result = sprop_str_cat(a1, a2, " ", 1u);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      result = sprop_str_cat(a1, a2, *(*a3 + v7 + 24), *(*a3 + v7 + 32));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(a3 + 8));
  }

  return result;
}

uint64_t sprop_dcme_load(_WORD *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  *(a4 + 88) = 0;
  __s1 = 0;
  *v29 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  Str = paramc_ParamGetStr(*(a3 + 40), "langcode", v29);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "voice", &__s1);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a3 + 40), "fecfg", &v27);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v9 = heap_Realloc(*(a3 + 8), *a4, 256);
  if (!v9)
  {
    log_OutPublic(*(a3 + 32), "FE_SPROP", 39000, 0);
    return 2409635850;
  }

  v10 = v9;
  *a4 = v9;
  v11 = __s1;
  if (strstr(__s1, "uni"))
  {
    __sprintf_chk(v30, 0, 0x80uLL, "crf/dcls/%s/%s/default", *v29, v27);
    v12 = 0;
    __s1 = 0;
  }

  else
  {
    __sprintf_chk(v30, 0, 0x80uLL, "crf/dcls/%s/%s/%s/default", *v29, v11, v27);
    v12 = __s1;
  }

  v13 = brokeraux_ComposeBrokerString(a3, v30, 1, 1, *v29, v12, 0, v10, 0x100uLL);
  if ((v13 & 0x80000000) == 0)
  {
    log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "broker string = %s", *a4);
    if ((ssftriff_reader_ObjOpen(a1, a2, 2, *a4, "CRPH", 1031, &v26) & 0x80000000) != 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "no maxent doc class model (DCME)");
      return v13;
    }

    v14 = crf_Init(a1, a2, v26, (a4 + 1));
    if (v14 < 0)
    {
      log_OutText(*(a3 + 32), "FE_SPROP", 0, 0, "error reading maxent doc class model (DCME): %x", v14);
      return ssftriff_reader_ObjClose(v26);
    }

    *(a4 + 88) = 1;
    log_OutText(*(a3 + 32), "FE_SPROP", 4, 0, "loaded %s", *a4);
    if (*(a4 + 88) == 1)
    {
      if (*(a4 + 12))
      {
        v15 = 0;
        v16 = 0;
        do
        {
          if (strlen(*&a4[5][v15]) <= 0x28)
          {
            v17 = "";
          }

          else
          {
            v17 = "...";
          }

          log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "_dcme_dump_params: param[%d].key   = %.40s%s", v16, *&a4[5][v15], v17);
          if (strlen(*&a4[5][v15 + 8]) <= 0x28)
          {
            v18 = "";
          }

          else
          {
            v18 = "...";
          }

          log_OutText(*(a3 + 32), "FE_SPROP", 5, 0, "_dcme_dump_params: param[%d].value = %.40s%s", v16++, *&a4[5][v15 + 8], v18);
          v15 += 16;
        }

        while (v16 < *(a4 + 12));
      }

      else
      {
        log_OutText(*(a3 + 32), "FE_SPROP", 3, 0, "_dcme_dump_params: no params loaded");
      }

      if (*(a4 + 88) == 1 && *(a4 + 12))
      {
        v19 = 0;
        v13 = 0;
        while (1)
        {
          v20 = &a4[5][16 * v19];
          v21 = *v20;
          if (!strcmp("features", *v20))
          {
            v13 = sprop_str_copy(a3, (a4 + 50), *(v20 + 1), 0);
            v23 = a4 + 50;
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            goto LABEL_38;
          }

          if (!strcmp("uni500", v21))
          {
            break;
          }

          if (!strcmp("threshold", v21))
          {
            v13 = sprop_str_copy(a3, (a4 + 56), *(v20 + 1), 0);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }
          }

          else if (!strcmp("numbers", v21))
          {
            v22 = *(v20 + 1);
            v23 = a4 + 59;
            v13 = sprop_str_copy(a3, (a4 + 59), v22, 0);
            if ((v13 & 0x80000000) != 0)
            {
              return v13;
            }

            goto LABEL_38;
          }

LABEL_45:
          if (++v19 >= *(a4 + 12))
          {
            if ((v13 & 0x80000000) == 0)
            {
              return ssftriff_reader_ObjClose(v26);
            }

            return v13;
          }
        }

        v13 = sprop_str_copy(a3, (a4 + 53), *(v20 + 1), 0);
        v23 = a4 + 53;
        if ((v13 & 0x80000000) != 0)
        {
          return v13;
        }

LABEL_38:
        for (i = *v23; ; ++i)
        {
          if (*i == 32)
          {
            *i = 0;
          }

          else if (!*i)
          {
            goto LABEL_45;
          }
        }
      }
    }

    return ssftriff_reader_ObjClose(v26);
  }

  return v13;
}

uint64_t sprop_dcme_unload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *a2 = 0;
  }

  if (*(a2 + 352) == 1)
  {
    crf_Deinit(a2 + 8);
  }

  *(a2 + 352) = 0;
  result = sprop_str_set_dealloc(a1, a2 + 360);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_dealloc(a1, (a2 + 376));
    if ((result & 0x80000000) == 0)
    {
      result = sprop_str_dealloc(a1, (a2 + 400));
      if ((result & 0x80000000) == 0)
      {
        result = sprop_str_dealloc(a1, (a2 + 424));
        if ((result & 0x80000000) == 0)
        {
          result = sprop_str_dealloc(a1, (a2 + 448));
          if ((result & 0x80000000) == 0)
          {

            return sprop_str_dealloc(a1, (a2 + 472));
          }
        }
      }
    }
  }

  return result;
}

uint64_t sprop_dcme_label(uint64_t a1, uint64_t a2, int32x2_t *a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 352))
  {
    features = sprop_str_set_clear(a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    features = sprop_get_features(a1, a3, a2 + 400, a2 + 424, (a2 + 448), a2 + 472, a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    features = sprop_str_set_join(a1, a2 + 376, a2 + 360);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    v23 = 0;
    v22 = 0;
    v11 = *(a2 + 376);
    if (!*(a2 + 448))
    {
      v12 = strstr(*(a2 + 376), " lc");
      if (v12)
      {
        v12[3] = 0;
        v11 = *(a2 + 376);
      }
    }

    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_dcme_label: features = %s", v11);
    v24 = *(a2 + 376);
    features = crf_Process(a2 + 8, &v24, 1u, &v23, &v22);
    if ((features & 0x80000000) != 0)
    {
      return features;
    }

    else
    {
      if (v22)
      {
        v13 = *v23;
        if (v22 != 1)
        {
          log_OutText(*(a1 + 32), "FE_SPROP", 1, 0, "sprop_dcme_label: crf_Process returned %d predictions, using only first one", v22);
        }

        log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_dcme_label: pred[0] = %s", v13);
        v14 = strlen(v13);
        v15 = sprop_str_take_ownership(a1, a4, v13, v14);
        if (a5 && *(a5 + 8))
        {
          if (*(a2 + 448))
          {
            v16 = "intc ";
          }

          else
          {
            v16 = "";
          }

          log_OutText(*(a1 + 32), "FE_SPROP", 4, 0, "traceFeatureVector dcls : %s%s %s : %s", v16, *(a2 + 376), *a5, v13);
        }
      }

      else
      {
        log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: crf_Process returned no predictions");
        v15 = 2409635847;
      }

      v18 = v23;
      if (v23)
      {
        v19 = v22;
        v20 = --v22;
        if (v19 >= 2)
        {
          do
          {
            heap_Free(*(a1 + 8), v23[v20]);
            v20 = v22 - 1;
          }

          while (v22-- > 1);
          v18 = v23;
        }

        heap_Free(*(a1 + 8), v18);
      }
    }
  }

  else
  {
    v15 = 2409635842;
    log_OutText(*(a1 + 32), "FE_SPROP", 0, 0, "sprop_dcme_label: called while model not loaded");
  }

  return v15;
}

uint64_t sprop_input_dealloc(uint64_t a1, uint64_t *a2)
{
  result = sprop_str_dealloc(a1, a2);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_dealloc(a1, a2 + 3);
    if ((result & 0x80000000) == 0)
    {

      return sprop_str_dealloc(a1, a2 + 6);
    }
  }

  return result;
}

uint64_t sprop_input_clear(uint64_t a1)
{
  result = sprop_str_clear(a1);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_str_clear(a1 + 24);
    if ((result & 0x80000000) == 0)
    {

      return sprop_str_clear(a1 + 48);
    }
  }

  return result;
}

_DWORD *sprop_input_find_marker(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = (*(a1 + 56) >> 5);
  if ((*(a1 + 56) >> 5))
  {
    v4 = 0;
    result = *(a1 + 48);
    do
    {
      if (a3)
      {
        if (result == a3)
        {
          a3 = 0;
        }
      }

      else
      {
        if (*result == a2)
        {
          return result;
        }

        a3 = 0;
      }

      result += 8;
      ++v4;
    }

    while (v4 < v3);
  }

  return 0;
}

_DWORD *sprop_input_rfind_marker(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 56);
  if ((v3 >> 5))
  {
    v4 = 0;
    result = ((*&v3 & 0x1FFFE0) + *(a1 + 48) - 32);
    do
    {
      if (a3)
      {
        if (result == a3)
        {
          a3 = 0;
        }
      }

      else
      {
        if (*result == a2)
        {
          return result;
        }

        a3 = 0;
      }

      ++v4;
      result -= 8;
    }

    while (v4 < (v3 >> 5));
  }

  return 0;
}

_OWORD *sprop_input_insert_marker(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  v7 = *(a2 + 48);
  v5 = a2 + 48;
  v6 = v7;
  v8 = *(v5 + 8);
  v9 = v7 + 32 * (v8 >> 5);
  v10 = v7 <= a3 && v9 > a3;
  if (!v10 || (sprop_str_realloc(a1, v5, v8 + 32) & 0x80000000) != 0)
  {
    return 0;
  }

  v13 = (v8 >> 5) - ((a3 - v6) >> 5);
  v14 = (*(a2 + 48) + a3 - v6);
  memmove(v14 + 2, v14, 32 * v13);
  *(a2 + 56) += 32;
  v15 = a4[1];
  *v14 = *a4;
  v14[1] = v15;
  return v14;
}

uint64_t fe_sprop_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2409635841;
  }

  result = 0;
  *a2 = &ISProp;
  return result;
}

uint64_t fe_sprop_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 2409635847;
  if (a3)
  {
    v11 = 0;
    inited = InitRsrcFunction(a1, a2, &v11);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      v8 = heap_Calloc(*(v11 + 8), 1, 24);
      if (v8)
      {
        v3 = 0;
        v9 = v11;
        v8[1] = a2;
        v8[2] = v9;
        *v8 = a1;
        *a3 = v8;
        *(a3 + 8) = 501;
      }

      else
      {
        return 2409635850;
      }
    }
  }

  return v3;
}

uint64_t fe_sprop_ClassClose(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 24);
  if ((result & 0x80000000) == 0)
  {
    heap_Free(*(*(a1 + 16) + 8), a1);
    return 0;
  }

  return result;
}

uint64_t fe_sprop_ObjOpen(uint64_t a1, int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = 2409635847;
  if (a5)
  {
    inited = safeh_HandleCheck(a1, a2, 501, 24);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v16 = 0;
    v17 = 0;
    inited = InitRsrcFunction(a3, a4, &v17);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = objc_GetObject(*(v17 + 48), "SYNTHSTREAM", &v16);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    v11 = heap_Calloc(*(v17 + 8), 1, 1944);
    if (!v11)
    {
      return 2409635850;
    }

    v12 = v11;
    v13 = v17;
    *v11 = v17;
    *(v11 + 8) = a3;
    *(v11 + 16) = a4;
    *(v11 + 24) = a1;
    *(v11 + 32) = *(v16 + 8);
    v18 = 0;
    inited = sprop_dcme_load(a3, a4, v13, (v11 + 1000));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    inited = sprop_ne_load(*(v12 + 8), *(v12 + 16), *v12, (v12 + 1496));
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      *(v12 + 1936) = 0;
      UInt = paramc_ParamGetUInt(*(v13 + 40), "dont_insert_ne_markers", &v18);
      if ((UInt & 0x1FFF) == 0x14)
      {
LABEL_16:
        v5 = 0;
        *a5 = v12;
        *(a5 + 8) = 501;
        return v5;
      }

      v5 = UInt;
      if ((UInt & 0x80000000) == 0 && v18 == 1)
      {
        *(v12 + 1936) = 1;
        goto LABEL_16;
      }

      if ((UInt & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  return v5;
}

uint64_t fe_sprop_ObjClose(uint64_t *a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 1944);
  if ((result & 0x80000000) == 0)
  {
    if (a1)
    {
      v4 = *a1;
      result = sprop_dcme_unload(*a1, (a1 + 125));
      if ((result & 0x80000000) == 0)
      {
        result = sprop_ne_unload(v4, (a1 + 187));
        if ((result & 0x80000000) == 0)
        {
          result = sprop_input_dealloc(v4, a1 + 116);
          if ((result & 0x80000000) == 0)
          {
            result = sprop_str_dealloc(v4, a1 + 237);
            if ((result & 0x80000000) == 0)
            {
              result = sprop_str_set_dealloc(v4, (a1 + 240));
              if ((result & 0x80000000) == 0)
              {
                result = sprop_str_set_dealloc(v4, (a1 + 235));
                if ((result & 0x80000000) == 0)
                {
                  objc_ReleaseObject(*(v4 + 48), "SYNTHSTREAM");
                  heap_Free(*(*a1 + 8), a1);
                  return 0;
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

uint64_t fe_sprop_ObjReopen(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 501, 1944);
  if ((result & 0x80000000) == 0)
  {
    result = sprop_dcme_unload(*a1, a1 + 1000);
    if ((result & 0x80000000) == 0)
    {
      result = sprop_dcme_load(*(a1 + 8), *(a1 + 16), *a1, (a1 + 1000));
      if ((result & 0x80000000) == 0)
      {
        result = sprop_ne_unload(*a1, a1 + 1496);
        if ((result & 0x80000000) == 0)
        {
          v4 = sprop_ne_load(*(a1 + 8), *(a1 + 16), *a1, (a1 + 1496));
          return v4 & (v4 >> 31);
        }
      }
    }
  }

  return result;
}

uint64_t fe_sprop_ProcessStart(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  synstrmaux_InitStreamOpener(a1 + 40, *(*a1 + 32), "FE_SPROP");
  synstrmaux_RegisterInStream((a1 + 40), "text/plain;charset=utf-8", 0, a1 + 864);
  synstrmaux_RegisterInStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", 0, a1 + 880);
  synstrmaux_RegisterOutStream((a1 + 40), "text/plain;charset=utf-8", a1 + 896);
  synstrmaux_RegisterOutStream((a1 + 40), "application/x-realspeak-markers-pp;version=4.0", a1 + 912);
  v7 = synstrmaux_OpenStreams((a1 + 40), *(a1 + 32), a3, a4);
  if ((v7 & 0x80000000) != 0)
  {
    synstrmaux_CloseStreams((a1 + 40), *(a1 + 32));
  }

  return v7;
}

uint64_t fe_sprop_Process(void *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  log_OutText(*(*a1 + 32), "FE_SPROP", 5, 0, "fe_sprop_Process: start");
  *a5 = 1;
  *&__n[1] = 0;
  LODWORD(__s2[0]) = 0;
  LODWORD(v93) = 0;
  __n[0] = 0;
  v7 = a1[4];
  v8 = a1[108];
  v9 = a1[109];
  LODWORD(v90) = 0;
  v10 = (*(v7 + 144))(v8, v9, &v90, &v93);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v90)
  {
    v10 = (*(v7 + 88))(v8, v9, &__n[1], __s2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v11 = *&__n[1];
  }

  else
  {
    v11 = 0;
    *&__n[1] = 0;
    LODWORD(__s2[0]) = 0;
  }

  v10 = sprop_str_copy(*a1, (a1 + 116), v11, 0);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v10 = (*(a1[4] + 96))(a1[108], a1[109], LODWORD(__s2[0]));
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v13 = a1[4];
  v14 = a1[110];
  v15 = a1[111];
  LODWORD(v90) = 0;
  v10 = (*(v13 + 144))(v14, v15, &v90, __n);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (v90)
  {
    v10 = (*(v13 + 88))(v14, v15, &__n[1], __s2);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v16 = *&__n[1];
    v17 = __s2[0];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *&__n[1] = 0;
    LODWORD(__s2[0]) = 0;
  }

  v10 = sprop_str_copy(*a1, (a1 + 122), v16, v17);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v18 = sprop_input_mrk((a1 + 116));
  v19 = sprop_input_mrk_cnt((a1 + 116));
  if (!v19)
  {
    goto LABEL_23;
  }

  v12 = 0;
  v20 = v19;
  v21 = (v18 + 24);
  do
  {
    if (marker_hasNonConstCharPtrArg(*(v21 - 6)))
    {
      v12 = sprop_str_set_add(*a1, (a1 + 235), "", *v21, 0);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      *v21 = *(a1[235] + 24 * (*(a1 + 472) - 1));
    }

    v21 += 4;
    --v20;
  }

  while (v20);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_23:
    v10 = (*(a1[4] + 96))(a1[110], a1[111], LODWORD(__s2[0]));
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v22 = *a1;
    v23 = sprop_input_mrk((a1 + 116));
    v24 = sprop_input_mrk_cnt((a1 + 116));
    _dump_markers(v22, v23, v24);
    v25 = v93;
    v26 = v93;
    if (v93 != __n[0])
    {
      log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "_read_streams: detected sync loss: bEndText=%d, bEndMrk=%d", v93, __n[0]);
      v26 = v93;
      v25 = __n[0];
    }

    v28 = v26 == 1 || v25 == 1;
    if (!*(a1 + 234))
    {
      goto LABEL_135;
    }

    log_OutText(*(*a1 + 32), "FE_SPROP", 4, 0, "fe_sprop_Process: input = %s", a1[116]);
    if (*(a1 + 338) != 1)
    {
      goto LABEL_149;
    }

    v90 = SPROP_STR_null;
    v91 = 0;
    *&__n[1] = 0;
    __s2[0] = "";
    LOWORD(v93) = 0;
    LOWORD(__n[0]) = 0;
    marker = sprop_input_find_marker((a1 + 116), 51, 0);
    if (marker)
    {
      v30 = marker;
      do
      {
        v31 = hlp_NLUStrFind(v30[3], "S_CLASS", &__n[1], &v93);
        v32 = v31 == 0;
        if (v31)
        {
          break;
        }

        v30 = sprop_input_find_marker((a1 + 116), 51, v30);
      }

      while (v30);
    }

    else
    {
      v32 = 1;
    }

    v33 = sprop_input_rfind_marker((a1 + 116), 51, 0);
    if (v33)
    {
      v34 = v33;
      do
      {
        v35 = hlp_NLUStrFind(v34[3], "E_CLASS", __s2, __n);
        v36 = v35 == 0;
        if (v35)
        {
          break;
        }

        v34 = sprop_input_rfind_marker((a1 + 116), 51, v34);
      }

      while (v34);
    }

    else
    {
      v36 = 1;
    }

    if (!v32)
    {
      if (*(a1 + 476))
      {
        log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "unbalanced NLU mark-up: S_CLASS:%s implicitly closed by S_CLASS:%*s", a1[237], v93, *&__n[1]);
      }

      sprop_str_copy(*a1, (a1 + 237), *&__n[1], v93);
    }

    if (!v36)
    {
      if (*(a1 + 476))
      {
        v37 = a1[237];
        v38 = __s2[0];
        v39 = LOWORD(__n[0]);
        if (strncmp(v37, __s2[0], LOWORD(__n[0])))
        {
          log_OutText(*(*a1 + 32), "FE_SPROP", 1, 0, "unbalanced NLU mark-up: S_CLASS:%s closed by E_CLASS:%*s", v37, v39, v38);
        }
      }
    }

    if (v32 && !*(a1 + 476))
    {
      v40 = a1 + 237;
      v71 = sprop_dcme_label(*a1, (a1 + 125), a1 + 116, &v90, 0);
      v72 = sprop_input_find_marker((a1 + 116), 1, 0);
      if (v72)
      {
        v73 = v72;
        *&__n[3] = 0;
        *&v89 = 0;
        v74 = v72[1];
        __n[1] = 51;
        __n[2] = v74;
        __n[4] = v72[3];
        if (v71 < 0 || (v75 = v90, *v90 == 49) && !*(v90 + 1))
        {
          v76 = *a1;
          v75 = "none";
        }

        else
        {
          v76 = *a1;
        }

        v77 = sprop_str_set_add(v76, (a1 + 235), "S_CLASS:", v75, 0);
        if ((v77 & 0x80000000) != 0)
        {
          v12 = v77;
        }

        else
        {
          *(&v89 + 1) = *(a1[235] + 24 * (*(a1 + 472) - 1));
          sprop_input_insert_marker(*a1, (a1 + 116), v73, &__n[1]);
          v78 = sprop_input_rfind_marker((a1 + 116), 1, 0);
          v79 = v78[3];
          __n[2] = v78[1];
          __n[4] = v79;
          if (v71 < 0 || (v80 = v90, *v90 == 49) && !*(v90 + 1))
          {
            v81 = *a1;
            v80 = "none";
          }

          else
          {
            v81 = *a1;
          }

          v12 = sprop_str_set_add(v81, (a1 + 235), "E_CLASS:", v80, 0);
          if ((v12 & 0x80000000) == 0)
          {
            *(&v89 + 1) = *(a1[235] + 24 * (*(a1 + 472) - 1));
            sprop_input_insert_marker(*a1, (a1 + 116), v78, &__n[1]);
          }
        }
      }

      else
      {
        log_OutText(*(*a1 + 32), "FE_SPROP", 0, 0, "unable to insert NLU CLASS markers");
        v12 = 2409635847;
      }
    }

    else
    {
      v40 = a1 + 237;
      v41 = sprop_dcme_label(*a1, (a1 + 125), a1 + 116, &v90, (a1 + 237));
      v12 = v41 & ~(v41 >> 31);
    }

    if (!v36)
    {
      sprop_str_clear(v40);
    }

    sprop_str_dealloc(*a1, &v90);
    if ((v12 & 0x80000000) == 0)
    {
LABEL_149:
      if (*(a1 + 462) != 1)
      {
        goto LABEL_133;
      }

      *__s2 = SPROP_STR_SET_null;
      v91 = 0;
      v89 = 0u;
      v90 = SPROP_STR_null;
      *&__n[1] = 0u;
      v12 = sprop_str_set_clear((a1 + 240));
      v87 = v28;
      if ((v12 & 0x80000000) != 0)
      {
        goto LABEL_132;
      }

      v42 = sprop_input_mrk_cnt((a1 + 116));
      v43 = sprop_input_mrk((a1 + 116));
      if (!v42)
      {
        goto LABEL_80;
      }

      v44 = 0;
      v45 = 0;
      v93 = 0;
      LOWORD(__n[0]) = 0;
      v46 = v42;
      v47 = (v43 + 24);
      v48 = "";
      v49 = "O";
      do
      {
        v50 = *(v47 - 6);
        if (v50 == 1)
        {
          v12 = sprop_str_set_add(*a1, (a1 + 240), v49, v48, v45);
          if ((v12 & 0x80000000) != 0)
          {
            goto LABEL_132;
          }

          if (*v49 == 66 && v49[1] == 45 && !v49[2])
          {
            v49 = "I-";
          }

          if (v44)
          {
            v48 = "";
            v49 = "O";
            v45 = 0;
          }

          v44 = 0;
        }

        else if (v50 == 51)
        {
          if (hlp_NLUStrFind(*v47, "S_NE", &v93, __n))
          {
            v48 = v93;
            v49 = "B-";
            v45 = LOWORD(__n[0]);
          }

          if (hlp_NLUStrFind(*v47, "E_NE", &v93, __n))
          {
            v44 = 1;
          }
        }

        v47 += 4;
        --v46;
      }

      while (v46);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_80:
        v51 = sprop_ne_label(*a1, (a1 + 187), (a1 + 116), __s2, (a1 + 240));
        if ((v51 & 0x80000000) != 0)
        {
          v12 = 0;
          goto LABEL_132;
        }

        v12 = v51;
        v52 = *(a1 + 468);
        if (v52)
        {
          v53 = 0;
          do
          {
            v54 = v53;
            v55 = &__s2[0][24 * v53];
            v56 = *v55;
            if (**v55 == 73 && v56[1] == 45)
            {
              if (!v54 || (v57 = *(v55 - 3), strlen(v57) < 3) || strcmp(v56 + 2, v57 + 2))
              {
                v58 = sprop_str_copy(*a1, &v90, "B-", 0);
                if ((v58 & 0x80000000) != 0 || (v58 = sprop_str_cat(*a1, &v90, (*&__s2[0][24 * v54] + 2), 0), (v58 & 0x80000000) != 0))
                {
LABEL_131:
                  v12 = v58;
                  goto LABEL_132;
                }

                v12 = sprop_str_copy(*a1, &__s2[0][24 * v54], v90, 0);
                if ((v12 & 0x80000000) != 0)
                {
                  goto LABEL_132;
                }

                v52 = *(a1 + 468);
              }
            }

            v53 = v54 + 1;
          }

          while (v52 > (v54 + 1));
        }

        if (!*(a1 + 484))
        {
          v59 = sprop_input_mrk_cnt((a1 + 116));
          v60 = sprop_input_mrk((a1 + 116));
          if (v59)
          {
            v61 = v60;
            v62 = 32 * v59;
            v63 = *(a1 + 468);
            do
            {
              if (*(v61 + v62 - 32) == 1)
              {
                v65 = *(a1 + 468) != v63 && (v64 = *&__s2[0][24 * v63], *v64 == 73) && v64[1] == 45;
                LOWORD(v63) = v63 - 1;
                v66 = &__s2[0][24 * v63];
                if (**v66 == 66)
                {
                  v67 = v61;
                  if (*(*v66 + 1) == 45)
                  {
                    *&__n[1] = 0u;
                    v89 = 0u;
                    __n[1] = 51;
                    __n[2] = *(v61 + v62 - 28);
                    __n[4] = *(v61 + v62 - 20);
                    v12 = sprop_str_set_add(*a1, (a1 + 235), "S_NE:", (*v66 + 2), 0);
                    if ((v12 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v68 = a1[235] + 24 * *(a1 + 472);
                    v69 = (v68 - 24);
                    if (!v65)
                    {
                      v58 = sprop_str_cat(*a1, v68 - 24, ";E_NE:", 0);
                      if ((v58 & 0x80000000) != 0)
                      {
                        goto LABEL_131;
                      }

                      v12 = sprop_str_cat(*a1, v69, (*&__s2[0][24 * v63] + 2), 0);
                      if ((v12 & 0x80000000) != 0)
                      {
                        break;
                      }
                    }

                    *(&v89 + 1) = *v69;
                    sprop_input_insert_marker(*a1, (a1 + 116), v61 + v62 - 32, &__n[1]);
                    v67 = sprop_input_mrk((a1 + 116));
                  }
                }

                else
                {
                  v67 = v61;
                }

                if (!v65)
                {
                  v70 = &__s2[0][24 * v63];
                  if (**v70 == 73 && *(*v70 + 1) == 45)
                  {
                    *&__n[1] = 0u;
                    v89 = 0u;
                    __n[1] = 51;
                    __n[2] = *(v61 + v62 - 28);
                    __n[4] = *(v61 + v62 - 20);
                    v12 = sprop_str_set_add(*a1, (a1 + 235), "E_NE:", (*v70 + 2), 0);
                    if ((v12 & 0x80000000) != 0)
                    {
                      break;
                    }

                    *(&v89 + 1) = *(a1[235] + 24 * *(a1 + 472) - 24);
                    sprop_input_insert_marker(*a1, (a1 + 116), v61 + v62 - 32, &__n[1]);
                    v67 = sprop_input_mrk((a1 + 116));
                  }
                }

                v61 = v67;
              }

              v62 -= 32;
            }

            while (v62);
          }
        }
      }

LABEL_132:
      sprop_str_set_dealloc(*a1, __s2);
      sprop_str_dealloc(*a1, &v90);
      v28 = v87;
      if ((v12 & 0x80000000) == 0)
      {
LABEL_133:
        v82 = *(a1 + 234);
        if (v82)
        {
          v10 = (*(a1[4] + 104))(a1[112], a1[113], a1[116], (v82 + 1));
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }
        }

LABEL_135:
        if (!*(a1 + 246) || (v83 = *a1, v84 = sprop_input_mrk((a1 + 116)), v85 = sprop_input_mrk_cnt((a1 + 116)), _dump_markers(v83, v84, v85), v10 = (*(a1[4] + 104))(a1[114], a1[115], a1[122], *(a1 + 246)), (v10 & 0x80000000) == 0))
        {
          if (!v28 || (v10 = synstrmaux_CloseOutStreamsOnly(a1 + 20, a1[4]), (v10 & 0x80000000) == 0))
          {
            v10 = sprop_input_clear((a1 + 116));
            if ((v10 & 0x80000000) == 0)
            {
              v12 = sprop_str_set_clear((a1 + 235));
              if ((v12 & 0x80000000) == 0)
              {
                log_OutText(*(*a1 + 32), "FE_SPROP", 5, 0, "fe_sprop_Process: end (fRet=0x%x)", v12);
              }

              return v12;
            }
          }
        }

        return v10;
      }
    }
  }

  return v12;
}

uint64_t fe_sprop_ProcessEnd(uint64_t a1, int a2)
{
  if ((safeh_HandleCheck(a1, a2, 501, 1944) & 0x80000000) != 0)
  {
    return 2409635848;
  }

  v3 = *(a1 + 32);

  return synstrmaux_CloseStreams((a1 + 40), v3);
}

uint64_t _dump_markers(uint64_t result, _DWORD *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3;
    do
    {
      v7 = *a2;
      if (*a2 == 0x4000)
      {
        v8 = "SYNC";
      }

      else
      {
        v8 = "?";
      }

      if (v7 == 51)
      {
        v8 = "NLU";
      }

      if (v7 == 1)
      {
        v9 = "WORD";
      }

      else
      {
        v9 = v8;
      }

      if (marker_hasCharPtrArg(v7))
      {
        v10 = *(a2 + 3);
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        v10 = "";
      }

      result = log_OutText(*(v4 + 32), "FE_SPROP", 5, 0, "mrk[%02d] = %-4s (%05d) %3d %3d %3d %3d %p %s", v5++, v9, *a2, a2[1], a2[2], a2[3], a2[4], *(a2 + 3), v10);
      a2 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

const char *sprop_bigrams(const char *a1, char *__s)
{
  v4 = strchr(__s, 95);
  if (!v4 || !*a1)
  {
    return 0;
  }

  v5 = v4;
  v6 = (v4 - __s);
  while (1)
  {
    if (!strncmp(a1, __s, v6) && a1[v6] == 32)
    {
      v7 = strlen(v5 + 1);
      if (!strncmp(&a1[v6 + 1], v5 + 1, v7))
      {
        break;
      }
    }

    if (!*++a1)
    {
      return 0;
    }
  }

  return a1;
}

uint64_t sprop_get_features(uint64_t a1, int32x2_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2[1].i32[0] && !a2[4].i32[0])
  {
    v14 = sprop_normalize(a1, a2 + 3, a2, 1);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    log_OutText(*(a1 + 32), "FE_SPROP", 5, 0, "sprop_get_features: normalized input = %s", *&a2[3]);
  }

  else
  {
    v14 = 0;
  }

  v15 = _sprop_feature_set_catalogs[*a5 == 0];
  if (*v15)
  {
    v16 = v15 + 16;
    do
    {
      if (*a5)
      {
        v17 = a3;
      }

      else
      {
        v17 = a4;
      }

      v14 = (*v16)(a1, *(v16 - 1), a2, v17, a5, a6, a7);
      if ((v14 & 0x80000000) != 0)
      {
        break;
      }

      v18 = *(v16 + 1);
      v16 += 24;
    }

    while (v18);
  }

  return v14;
}

uint64_t sprop_normalize(uint64_t a1, int32x2_t *a2, uint64_t a3, int a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = sprop_str_clear(a2);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = &v8[v9];
    v12 = *a3;
    if (v12 < &v8[v9])
    {
      v13 = 0;
      do
      {
        v14 = Utf8_LengthInBytes(v12, 1);
        if (utf8_BelongsToSet(0, v12, 0, v14) == 1)
        {
          if (v13)
          {
            v13 = 1;
          }

          else
          {
            v13 = 1;
            sprop_str_cat(a1, a2, " ", 1u);
          }
        }

        else if (!utf8_BelongsToSet(0xAu, v12, 0, v14))
        {
          if (a4 && utf8_ToLower(v12, 0, v22))
          {
            v15 = v22;
            v16 = a1;
            v17 = a2;
            v18 = 0;
          }

          else
          {
            v16 = a1;
            v17 = a2;
            v15 = v12;
            v18 = v14;
          }

          sprop_str_cat(v16, v17, v15, v18);
          v13 = 0;
        }

        v12 += v14;
      }

      while (v12 < v11);
    }

    if (!*a2)
    {
      sprop_str_cat(a1, a2, " ", 1u);
    }

    v19 = a2[1].i32[0];
    if (v19)
    {
      v20 = v19 - 1;
      if (*(*a2 + v20) == 32)
      {
        *(*a2 + v20) = 0;
        a2[1] = vadd_s32(a2[1], -1);
      }
    }
  }

  return v10;
}

uint64_t sprop_get_word_features(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (!v6 || *(a2 + 32) || (result = sprop_str_copy(a1, a2 + 24, *a2, v6), (result & 0x80000000) == 0))
  {
    v8 = &off_1F42D6350;
    do
    {
      result = (*v8)(a1, *(v8 - 1), a2, 0, 0, 0, a3);
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v9 = v8[1];
      v8 += 3;
    }

    while (v9);
  }

  return result;
}

uint64_t SPROP_sen_len(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = 1;
  while (*v12 == 32)
  {
    v13 = (v13 + 1);
LABEL_6:
    ++v12;
  }

  if (*v12)
  {
    goto LABEL_6;
  }

  v14 = uint32_log2(v13);
  if (v14 >= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v18 = v15 | 0x30;
  if (*a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  return sprop_add_feature(a1, a7, v16, "SENTLEN=", a2, &v18, 1u);
}

uint64_t SPROP_avg_wrd_len(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = 1;
  while (*v12 == 32)
  {
    ++v13;
LABEL_6:
    ++v12;
  }

  if (*v12)
  {
    goto LABEL_6;
  }

  v14 = uint32_log2(4 * *(a3 + 36) / v13);
  if (v14 >= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v18 = v15 | 0x30;
  if (*a5)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0;
  }

  return sprop_add_feature(a1, a7, v16, "WORDLEN=", a2, &v18, 1u);
}

uint64_t SPROP_freq10_caps(uint64_t a1, char *a2, unsigned __int8 **a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v12 = *(a3 + 2);
  if (v12)
  {
    v14 = *a3;
    v15 = **a3;
    if (**a3)
    {
      v16 = 0;
      do
      {
        v17 = Utf8_LengthInBytes(v14, 1);
        if (utf8_ToLower(v14, 0, v20))
        {
          ++v16;
        }

        v14 += v17;
      }

      while (*v14);
      v15 = 10 * v16;
    }

    v12 = v15 / *(a3 + 3);
  }

  if (v12 >= 9)
  {
    LOBYTE(v12) = 9;
  }

  v21 = v12 | 0x30;
  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "CAPS=", a2, &v21, 1u);
}

uint64_t SPROP_freq10_puncs(uint64_t a1, char *a2, unsigned __int8 **a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  if (*(a3 + 2))
  {
    v13 = *a3;
    v14 = **a3;
    if (**a3)
    {
      v15 = 0;
      do
      {
        v16 = Utf8_LengthInBytes(v13, 1);
        if (utf8_BelongsToSet(0xAu, v13, 0, v16) == 1)
        {
          ++v15;
        }

        v13 += v16;
      }

      while (*v13);
      v14 = 10 * v15;
    }

    v17 = v14 / *(a3 + 3) + 48;
  }

  else
  {
    LOBYTE(v17) = 48;
  }

  v20 = v17;
  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "PUNC=", a2, &v20, 1u);
}

uint64_t SPROP_first_wrd(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = utf8_strchr(*(a3 + 24), " ");
  v14 = *(a3 + 24);
  v15 = strlen(v14);
  if (v13)
  {
    v16 = v13 - v14;
  }

  else
  {
    v16 = v15;
  }

  if (*a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  return sprop_add_feature(a1, a7, v17, "FIRSTWD=", a2, v14, v16);
}

uint64_t SPROP_last_char(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 8);
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v19 = v7 - 1;
    if (v7 == 1)
    {
      return 0;
    }

    utf8_GetPreviousValidUtf8Offset(*a3, &v19);
    if (!utf8_BelongsToSet(0, *a3, v19, *(a3 + 8)))
    {
      break;
    }

    v7 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  v15 = *a3;
  v16 = v19;
  v17 = Utf8_LengthInBytes((v15 + v19), 1);
  if (!v15)
  {
    return 0;
  }

  if (*a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  return sprop_add_feature(a1, a7, v18, "LASTCH=", a2, (v15 + v16), v17);
}

uint64_t SPROP_freq4_singlechars(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (!*(a3 + 32))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  if (!*v7)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(a3 + 24);
  do
  {
    v16 = &v15[Utf8_LengthInBytes(v15, 1)];
    if ((*v15 | 0x20) == 0x20)
    {
      ++v13;
      if (Utf8_LengthInUtf8chars(v7, v15 - v7) == 1)
      {
        ++v14;
        v7 = v16;
      }
    }

    v15 = v16;
  }

  while (*v16);
  if (!v13)
  {
    return 0;
  }

  v19 = v14 / v13 + 48;
  if (*a5)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0;
  }

  return sprop_add_feature(a1, a7, v17, "SINGLECH=", a2, &v19, 1u);
}

uint64_t SPROP_numeral(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 + 8);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = &v10[v11];
  if (v9)
  {
    v13 = *a6;
    v14 = *a6 + v9;
    v15 = "1";
    do
    {
      v16 = strlen(v13);
      if (v11)
      {
        v17 = v10;
        do
        {
          v18 = strstr(v17, v13);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v17 = &v18[v16];
          if ((*v17 | 0x20) == 0x20 && (v19 == v10 || *(v19 - 1) == 32))
          {
            goto LABEL_21;
          }
        }

        while (v17 < v12);
      }

      v13 += (v16 + 1);
    }

    while (v13 < v14);
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  v20 = v10 + 1;
  do
  {
    v21 = *(v20 - 1) - 58;
  }

  while (v21 <= 0xFFFFFFF5 && v20++ < v12);
  if (v21 > 0xFFFFFFF5)
  {
    v15 = "1";
  }

  else
  {
LABEL_19:
    v15 = "0";
  }

LABEL_21:
  if (*a5)
  {
    v23 = a4;
  }

  else
  {
    v23 = 0;
  }

  return sprop_add_feature(a1, a7, v23, "NUMERAL=", a2, v15, 0);
}

uint64_t SPROP_keywords(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a4;
  v13 = *a4 + v7;
  v14 = *(a3 + 24) + *(a3 + 32);
  do
  {
    v15 = *(a3 + 24);
    v16 = strlen(v12);
    if (v15 < v14)
    {
      v17 = *(a3 + 24);
      do
      {
        v18 = strstr(v17, v12);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v17 = &v18[v16];
        if ((*v17 | 0x20) == 0x20 && (v19 == v15 || *(v19 - 1) == 32))
        {
          v11 = sprop_str_set_add(a1, a7, a2, v12, v16);
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          break;
        }
      }

      while (v17 < v14);
    }

    v12 += v16 + 1;
  }

  while (v12 < v13);
  return v11;
}

uint64_t SPROP_keywords_bigrams(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a4 + 8);
  if (!v7)
  {
    return 0;
  }

  v11 = 0;
  v12 = *a4;
  v13 = *a4 + v7;
  v14 = *(a3 + 24) + *(a3 + 32);
  do
  {
    v15 = *(a3 + 24);
    v16 = strlen(v12);
    if (v15 < v14)
    {
      v17 = *(a3 + 24);
      do
      {
        v18 = sprop_bigrams(v17, v12);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v17 = &v18[v16];
        if ((*v17 | 0x20) == 0x20 && (v19 == v15 || *(v19 - 1) == 32))
        {
          v11 = sprop_str_set_add(a1, a7, a2, v12, v16);
          if ((v11 & 0x80000000) != 0)
          {
            return v11;
          }

          break;
        }
      }

      while (v17 < v14);
    }

    v12 += v16 + 1;
  }

  while (v12 < v13);
  return v11;
}

uint64_t sprop_add_feature(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, char *a5, char *a6, unsigned int a7)
{
  if (a3)
  {
    v13 = *a3;
    v14 = *(a3 + 8);
    v15 = strlen(__s);
    if (a7)
    {
      v16 = a7;
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      v16 = strlen(a6);
      if (!v14)
      {
        return 0;
      }
    }

    v17 = &v13[v14];
    while (strncmp(v13, __s, v15) || strncmp(&v13[v15], a6, v16))
    {
      v13 += strlen(v13) + 1;
      if (v13 >= v17)
      {
        return 0;
      }
    }
  }

  return sprop_str_set_add(a1, a2, a5, a6, a7);
}

uint64_t SPROP_word_token(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sprop_input_mrk_cnt(a3);
  v10 = sprop_input_mrk(a3);
  v24 = SPROP_STR_null;
  v25 = 0;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = (v10 + 12);
    while (1)
    {
      v16 = *(v15 - 3);
      if (v16 == 1)
      {
        v17 = a7 + 16 * v12;
        v18 = sprop_str_set_add(a1, v17, "", "", 0);
        if ((v18 & 0x80000000) != 0 || (v19 = *v17, v20 = *(v17 + 8), v18 = sprop_str_copy(a1, &v24, (*a3 + *v15 - v11), v15[1]), (v18 & 0x80000000) != 0))
        {
          v13 = v18;
          goto LABEL_16;
        }

        v21 = v19 + 24 * v20;
        v13 = sprop_normalize(a1, (v21 - 24), &v24, 0);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        if (!*(v21 - 16))
        {
          v13 = sprop_str_cat(a1, v21 - 24, "-", 0);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        ++v12;
      }

      else if (v16 == 0x4000)
      {
        v11 = *v15;
      }

      v15 += 8;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  sprop_str_dealloc(a1, &v24);
  return v13;
}

uint64_t SPROP_word_lowercase_token(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sprop_input_mrk_cnt(a3);
  v10 = sprop_input_mrk(a3);
  v24 = SPROP_STR_null;
  v25 = 0;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = (v10 + 12);
    while (1)
    {
      v16 = *(v15 - 3);
      if (v16 == 1)
      {
        v17 = a7 + 16 * v12;
        v18 = sprop_str_set_add(a1, v17, "", "", 0);
        if ((v18 & 0x80000000) != 0 || (v19 = *v17, v20 = *(v17 + 8), v18 = sprop_str_copy(a1, &v24, (*a3 + *v15 - v11), v15[1]), (v18 & 0x80000000) != 0))
        {
          v13 = v18;
          goto LABEL_16;
        }

        v21 = v19 + 24 * v20;
        v13 = sprop_normalize(a1, (v21 - 24), &v24, 1);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_16;
        }

        if (!*(v21 - 16))
        {
          v13 = sprop_str_cat(a1, v21 - 24, "-", 0);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_16;
          }
        }

        ++v12;
      }

      else if (v16 == 0x4000)
      {
        v11 = *v15;
      }

      v15 += 8;
      if (!--v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_16:
  sprop_str_dealloc(a1, &v24);
  return v13;
}

uint64_t SPROP_word_token_class(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sprop_input_mrk_cnt(a3);
  v33 = a3;
  v9 = sprop_input_mrk(a3);
  if (v8)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    result = 0;
    v15 = v8;
    while (1)
    {
      v16 = (v10 + 32 * v11);
      if (*v16 == 1)
      {
        break;
      }

      if (*v16 == 0x4000)
      {
        v12 = v16[3];
      }

LABEL_46:
      if (++v11 == v15)
      {
        return result;
      }
    }

    v17 = v16[4];
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v36 = v12;
      v20 = (*v33 + v16[3] - v12);
      v21 = 30;
      do
      {
        if (utf8_BelongsToSet(6u, v20, v18, v17))
        {
          v21 = v21 & 0xFFFFFEF1 | 0x100;
          ++v19;
        }

        else if (utf8_BelongsToSet(0xAu, v20, v18, v16[4]))
        {
          v22 = v21 & 0xFFFFFFE1;
          v23 = v20[v18];
          v24 = v21 & 0xFFFFFFC1 | 0x20;
          v25 = v21 & 0xFFFFFF61 | 0x80;
          if (v23 != 47)
          {
            v25 = v21 & 0xFFFFFFE1;
          }

          if (v23 != 46)
          {
            v24 = v25;
          }

          if (v23 == 45)
          {
            v22 = v21 & 0xFFFFFDE1 | 0x200;
          }

          if (v23 == 44)
          {
            v22 = v21 & 0xFFFFFFA1 | 0x40;
          }

          if (v20[v18] <= 0x2Du)
          {
            v21 = v22;
          }

          else
          {
            v21 = v24;
          }
        }

        else if (utf8_BelongsToSet(0x12u, v20, v18, v16[4]) || utf8_BelongsToSet(0x15u, v20, v18, v16[4]) || utf8_BelongsToSet(0x18u, v20, v18, v16[4]) || utf8_BelongsToSet(0x1Bu, v20, v18, v16[4]) || utf8_BelongsToSet(0x1Eu, v20, v18, v16[4]))
        {
          v26 = v21 | 0xC01;
          if (v18)
          {
            v26 = v21 | 0x400;
          }

          v21 = v26 & 0xFFFFFFEB;
        }

        else
        {
          v21 = v21 & 0xFFFFFBED | 0x400;
        }

        NextUtf8OffsetLimit = utf8_GetNextUtf8OffsetLimit(v20, v18, v16[4]);
        v18 = NextUtf8OffsetLimit;
        v17 = v16[4];
      }

      while (NextUtf8OffsetLimit != v17);
      if (NextUtf8OffsetLimit == 1)
      {
        v28 = "sc";
      }

      else
      {
        v28 = "ac";
      }

      if ((v21 & 4) != 0)
      {
        v28 = "lc";
        goto LABEL_43;
      }

      if (v19 == 2)
      {
        v28 = "2d";
        goto LABEL_43;
      }

      if (v19 == 4)
      {
        v28 = "4d";
LABEL_43:
        v12 = v36;
        goto LABEL_44;
      }

      v29 = v21;
      if ((v21 & 0x100) != 0)
      {
        v28 = "an";
        v12 = v36;
        if ((v29 & 0x400) != 0)
        {
          goto LABEL_44;
        }

        v28 = "dd";
        if ((v29 & 0x200) != 0)
        {
          goto LABEL_44;
        }

        v28 = "ds";
        if ((v29 & 0x80) != 0)
        {
          goto LABEL_44;
        }

        v28 = "dc";
        if ((v29 & 0x40) != 0)
        {
          goto LABEL_44;
        }

        v30 = (v29 & 0x20) == 0;
        v31 = "dp";
        v32 = "num";
      }

      else
      {
        v12 = v36;
        if ((v29 & 2) != 0)
        {
          goto LABEL_44;
        }

        v28 = "cp";
        if ((v29 & 0x20) != 0)
        {
          goto LABEL_44;
        }

        v30 = (v29 & 1) == 0;
        v31 = "ic";
        v32 = "other";
      }

      if (v30)
      {
        v28 = v32;
      }

      else
      {
        v28 = v31;
      }
    }

    else
    {
      v28 = "lc";
    }

LABEL_44:
    result = sprop_str_set_add(a1, a7 + 16 * v13, "", v28, 0);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    ++v13;
    goto LABEL_46;
  }

  return 0;
}

uint64_t SPROP_word_begin_sentence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sprop_input_mrk_cnt(a3);
  v11 = sprop_input_mrk(a3);
  if (!v10)
  {
    return 0;
  }

  v12 = v11;
  v13 = 0;
  result = 0;
  v15 = v10;
  v16 = "1";
  do
  {
    v17 = *v12;
    v12 += 8;
    if (v17 == 1)
    {
      result = sprop_str_set_add(a1, a7 + 16 * v13, "", v16, 0);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      ++v13;
      v16 = "0";
    }

    --v15;
  }

  while (v15);
  return result;
}

uint64_t be_adapt_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v5 = 2410684423;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v23);
    if ((inited & 0x80000000) == 0)
    {
      v10 = heap_Calloc(*(v23 + 8), 1, 656);
      if (v10)
      {
        v11 = v10;
        Object = objc_GetObject(*(v23 + 48), "LINGDB", &v22);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        *(v11 + 8) = *(v22 + 8);
        Object = objc_GetObject(*(v23 + 48), "FE_DEPES", &v21);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v13 = v21;
        *(v11 + 32) = *(v21 + 8);
        *(v11 + 16) = *(v13 + 16);
        Object = objc_GetObject(*(v23 + 48), "FE_DCTLKP", &v20);
        if ((Object & 0x80000000) != 0)
        {
          goto LABEL_13;
        }

        v14 = v20;
        *(v11 + 56) = *(v20 + 8);
        *(v11 + 40) = *(v14 + 16);
        *(v11 + 80) = 0;
        *(v11 + 64) = safeh_GetNullHandle();
        *(v11 + 72) = v15;
        if ((objc_GetObject(*(v23 + 48), "PHONMAP", &v19) & 0x80000000) == 0)
        {
          v16 = v19;
          *(v11 + 80) = *(v19 + 8);
          *(v11 + 64) = *(v16 + 16);
        }

        *v11 = v23;
        *(v11 + 88) = 0;
        *(v11 + 296) = a3;
        *(v11 + 304) = a4;
        Object = hlp_VoiceSetup_0(v11);
        if ((Object & 0x80000000) != 0)
        {
LABEL_13:
          v5 = Object;
        }

        else
        {
          v5 = globalbeadapt_SetFEBOOLKeyword(v11, "feGlobalmergemorphemes", (v11 + 280), 1);
          if ((v5 & 0x80000000) == 0)
          {
            v17 = 503;
LABEL_16:
            *a5 = v11;
            *(a5 + 8) = v17;
            return v5;
          }
        }
      }

      else
      {
        log_OutPublic(*(v23 + 32), "BE_ADAPT", 64000, 0);
        v5 = 2410684426;
      }

      be_adapt_ObjClose(*a5, *(a5 + 8));
      v11 = 0;
      v17 = 0;
      goto LABEL_16;
    }

    return inited;
  }

  return v5;
}

uint64_t hlp_VoiceSetup_0(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  v83 = 0;
  __s1 = 0;
  v81 = 0;
  *(a1 + 636) = 0;
  if ((paramc_ParamGetStr(*(*a1 + 40), "voicelexicontraining", &__s1) & 0x80000000) == 0 && __s1 && !strcmp(__s1, "yes"))
  {
    *(a1 + 636) = 1;
  }

  *(a1 + 264) = 0;
  if ((paramc_ParamGetUInt(*(*a1 + 40), "prmigexists", &v83) & 0x80000000) == 0 && v83 == 1)
  {
    *(a1 + 264) = 1;
  }

  *(a1 + 248) = 0;
  __c_1 = 0;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "usetntag", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1 && __c_3 && **__c_3 == 49)
  {
    *(a1 + 248) = 1;
  }

  *(a1 + 252) = 0;
  __c_1 = 0;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "fecfg", "docclassmap", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1 && __c_3 && __PAIR64__((*__c_3)[1], **__c_3) == 0x6500000079 && (*__c_3)[2] == 115)
  {
    *(a1 + 252) = 1;
  }

  inited = com_depes_InitLayers(*a1, a1 + 96);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 224) = 0x3000200010000;
  *(a1 + 232) = 4;
  if (*(a1 + 264))
  {
    v3 = 8;
    v4 = 7;
    v5 = 6;
    v6 = 5;
  }

  else
  {
    v6 = 0;
    v3 = 7;
    v4 = 6;
    v5 = 5;
  }

  *(a1 + 234) = v6;
  *(a1 + 238) = v5;
  *(a1 + 240) = v4;
  v7 = v3 - (*(a1 + 248) == 0);
  *(a1 + 236) = v7;
  *(a1 + 106) = v7 + 1;
  inited = globalbeadapt_Init_SpecialSymbolsFromPhonmap(a1);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v8 = (*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "pre_be_adapt");
  v9 = 1;
  if (!v8)
  {
    v9 = (*(*(a1 + 32) + 72))(*(a1 + 16), *(a1 + 24), "post_be_adapt") != 0;
  }

  *(a1 + 320) = v9;
  *(a1 + 312) = 1;
  inited = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptlex", a1 + 312);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 480) = 1;
  *(a1 + 316) = 1;
  inited = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptlexmw", a1 + 316);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 632) = 513;
  v10 = (*(*(a1 + 56) + 72))(*(a1 + 40), *(a1 + 48), "adaptcfg", &v81);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  *(a1 + 640) = 0u;
  if (v81)
  {
    __c_1 = 2;
    inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "loo", &__c_3, &__c_1, &__c);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    if (__c_1 == 1)
    {
      v11 = *__c_3;
      v12 = strchr(*__c_3, __c);
      if (v12)
      {
        *v12 = 0;
        v11 = *__c_3;
      }

      v13 = strlen(v11);
      v14 = heap_Alloc(*(*a1 + 8), v13 + 1);
      *(a1 + 640) = v14;
      if (!v14)
      {
        goto LABEL_144;
      }

      strcpy(v14, *__c_3);
    }

    __c_1 = 2;
    v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "loodiff", &__c_3, &__c_1, &__c);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (__c_1 == 1)
    {
      v15 = *__c_3;
      v16 = strchr(*__c_3, __c);
      if (v16)
      {
        *v16 = 0;
        v15 = *__c_3;
      }

      v17 = strlen(v15);
      v18 = heap_Alloc(*(*a1 + 8), v17 + 1);
      *(a1 + 648) = v18;
      if (!v18)
      {
        goto LABEL_144;
      }

      strcpy(v18, *__c_3);
    }
  }

  if (*(a1 + 312))
  {
    __c_1 = 2;
    inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "nrdctpart", &__c_3, &__c_1, &__c);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    if (__c_1 == 1)
    {
      v19 = *__c_3;
      v20 = strchr(*__c_3, __c);
      if (v20)
      {
        *v20 = 0;
        v19 = *__c_3;
      }

      *(a1 + 480) = atoi(v19);
    }

    __c_1 = 2;
    v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "fn", &__c_3, &__c_1, &__c);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    if (__c_1 == 1)
    {
      v21 = *__c_3;
      v22 = strchr(*__c_3, 59);
      if (v22)
      {
        v23 = v22;
        do
        {
          *v23 = 0;
          v24 = *(a1 + 324);
          *(a1 + 324) = v24 + 1;
          strcpy((a1 + 325 + 10 * v24), v21);
          v21 = v23 + 1;
          v23 = strchr(v23 + 1, 59);
        }

        while (v23);
      }

      v25 = *(a1 + 324);
      *(a1 + 324) = v25 + 1;
      strcpy((a1 + 325 + 10 * v25), v21);
      __c_1 = 2;
      v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", "ft", &__c_3, &__c_1, &__c);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      if (__c_1 == 1)
      {
        v26 = *__c_3;
        v27 = strchr(*__c_3, 59);
        *(a1 + 324) = 0;
        if (v27)
        {
          v28 = v27;
          while (1)
          {
            *v28 = 0;
            if (!strcmp(v26, "NLU"))
            {
              break;
            }

            if (!strcmp(v26, "PRM"))
            {
              v29 = 1;
              goto LABEL_65;
            }

            if (!strcmp(v26, "BND"))
            {
              v29 = 2;
              goto LABEL_65;
            }

            if (!strcmp(v26, "LNG"))
            {
              v29 = 3;
LABEL_65:
              v30 = *(a1 + 324);
              *(a1 + 324) = v30 + 1;
              *(a1 + 428 + 4 * v30) = v29;
            }

            v26 = v28 + 1;
            v28 = strchr(v28 + 1, 59);
            if (!v28)
            {
              goto LABEL_67;
            }
          }

          v29 = 0;
          goto LABEL_65;
        }

LABEL_67:
        if (!strcmp(v26, "NLU"))
        {
          v32 = *(a1 + 324);
          v35 = a1 + 4 * v32;
          LOBYTE(v32) = v32 + 1;
          *(a1 + 324) = v32;
          *(v35 + 428) = 0;
        }

        else
        {
          if (!strcmp(v26, "PRM"))
          {
            v32 = *(a1 + 324);
            v33 = a1 + 4 * v32;
            LOBYTE(v32) = v32 + 1;
            *(a1 + 324) = v32;
            v34 = 1;
            goto LABEL_76;
          }

          if (!strcmp(v26, "BND"))
          {
            v32 = *(a1 + 324);
            v33 = a1 + 4 * v32;
            LOBYTE(v32) = v32 + 1;
            *(a1 + 324) = v32;
            v34 = 2;
            goto LABEL_76;
          }

          v31 = strcmp(v26, "LNG");
          v32 = *(a1 + 324);
          if (!v31)
          {
            v33 = a1 + 4 * v32;
            LOBYTE(v32) = v32 + 1;
            *(a1 + 324) = v32;
            v34 = 3;
LABEL_76:
            *(v33 + 428) = v34;
          }
        }
      }

      else
      {
        LOBYTE(v32) = *(a1 + 324);
      }

      v36 = heap_Calloc(*(*a1 + 8), 1, 8 * v32);
      *(a1 + 472) = v36;
      if (!v36)
      {
LABEL_144:
        v10 = 2410684426;
        log_OutPublic(*(*a1 + 32), "BE_ADAPT", 64000, 0, v74);
        return v10;
      }

      if (*(a1 + 324))
      {
        v37 = 0;
        v38 = xmmword_1F42D6610;
        v39 = *off_1F42D6620;
        v40 = off_1F42D6630;
        v74 = *off_1F42D6620;
        v76 = xmmword_1F42D6610;
        do
        {
          v41 = *(*a1 + 8);
          v42 = (*(a1 + 472) + 8 * v37);
          v78 = v38;
          v79 = v39;
          v80 = v40;
          inited = ssftmap_ObjOpen(v41, 0, &v78, v42);
          if ((inited & 0x80000000) != 0)
          {
            return inited;
          }

          __c_1 = 2;
          LH_itoa(1u, v87, 0xAu);
          __strcat_chk();
          v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", v87, &__c_3, &__c_1, &__c);
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }

          if (__c_1)
          {
            v43 = 1;
            do
            {
              v44 = strchr(*__c_3, 59);
              if (v44)
              {
                *v44 = 0;
                inited = ssftmap_Insert(*(*(a1 + 472) + 8 * v37), *__c_3, (v44 + 1));
                if ((inited & 0x80000000) != 0)
                {
                  return inited;
                }
              }

              __c_1 = 2;
              LH_itoa(++v43, v87, 0xAu);
              __strcat_chk();
              v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfg", v87, &__c_3, &__c_1, &__c);
              if ((v10 & 0x80000000) != 0)
              {
                return v10;
              }
            }

            while (__c_1);
          }

          ++v37;
          v39 = v74;
          v38 = v76;
        }

        while (v37 < *(a1 + 324));
      }
    }
  }

  if (!*(a1 + 316))
  {
    return v10;
  }

  __c_1 = 2;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "nrdctpart", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1)
  {
    v45 = *__c_3;
    v46 = strchr(*__c_3, __c);
    if (v46)
    {
      *v46 = 0;
      v45 = *__c_3;
    }

    *(a1 + 632) = atoi(v45);
  }

  __c_1 = 2;
  inited = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "maxnrword", &__c_3, &__c_1, &__c);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  if (__c_1 == 1)
  {
    v47 = *__c_3;
    v48 = strchr(*__c_3, __c);
    if (v48)
    {
      *v48 = 0;
      v47 = *__c_3;
    }

    *(a1 + 633) = atoi(v47);
  }

  __c_1 = 2;
  v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "fn", &__c_3, &__c_1, &__c);
  if ((v10 & 0x80000000) != 0 || __c_1 != 1)
  {
    return v10;
  }

  v49 = *__c_3;
  v50 = strchr(*__c_3, 59);
  if (v50)
  {
    v51 = v50;
    do
    {
      *v51 = 0;
      v52 = *(a1 + 481);
      *(a1 + 481) = v52 + 1;
      strcpy((a1 + 482 + 10 * v52), v49);
      v49 = v51 + 1;
      v51 = strchr(v51 + 1, 59);
    }

    while (v51);
  }

  v53 = *(a1 + 481);
  *(a1 + 481) = v53 + 1;
  strcpy((a1 + 482 + 10 * v53), v49);
  __c_1 = 2;
  v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", "ft", &__c_3, &__c_1, &__c);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  if (__c_1 == 1)
  {
    v54 = *__c_3;
    v55 = strchr(*__c_3, 59);
    *(a1 + 481) = 0;
    if (v55)
    {
      v56 = v55;
      while (1)
      {
        *v56 = 0;
        if (!strcmp(v54, "NLU"))
        {
          break;
        }

        if (!strcmp(v54, "PRM"))
        {
          v57 = 1;
          goto LABEL_117;
        }

        if (!strcmp(v54, "BND"))
        {
          v57 = 2;
          goto LABEL_117;
        }

        if (!strcmp(v54, "LNG"))
        {
          v57 = 3;
LABEL_117:
          v58 = *(a1 + 481);
          *(a1 + 481) = v58 + 1;
          *(a1 + 584 + 4 * v58) = v57;
        }

        v54 = v56 + 1;
        v56 = strchr(v56 + 1, 59);
        if (!v56)
        {
          goto LABEL_119;
        }
      }

      v57 = 0;
      goto LABEL_117;
    }

LABEL_119:
    if (!strcmp(v54, "NLU"))
    {
      v60 = *(a1 + 481);
      v63 = a1 + 4 * v60;
      LOBYTE(v60) = v60 + 1;
      *(a1 + 481) = v60;
      *(v63 + 584) = 0;
    }

    else
    {
      if (!strcmp(v54, "PRM"))
      {
        v60 = *(a1 + 481);
        v61 = a1 + 4 * v60;
        LOBYTE(v60) = v60 + 1;
        *(a1 + 481) = v60;
        v62 = 1;
      }

      else if (!strcmp(v54, "BND"))
      {
        v60 = *(a1 + 481);
        v61 = a1 + 4 * v60;
        LOBYTE(v60) = v60 + 1;
        *(a1 + 481) = v60;
        v62 = 2;
      }

      else
      {
        v59 = strcmp(v54, "LNG");
        v60 = *(a1 + 481);
        if (v59)
        {
          goto LABEL_129;
        }

        v61 = a1 + 4 * v60;
        LOBYTE(v60) = v60 + 1;
        *(a1 + 481) = v60;
        v62 = 3;
      }

      *(v61 + 584) = v62;
    }
  }

  else
  {
    LOBYTE(v60) = *(a1 + 481);
  }

LABEL_129:
  v64 = heap_Calloc(*(*a1 + 8), 1, 8 * v60);
  *(a1 + 624) = v64;
  if (!v64)
  {
    goto LABEL_144;
  }

  if (*(a1 + 481))
  {
    v65 = 0;
    v66 = xmmword_1F42D6610;
    v67 = *off_1F42D6620;
    v68 = off_1F42D6630;
    v75 = *off_1F42D6620;
    v77 = xmmword_1F42D6610;
    while (1)
    {
      v69 = *(*a1 + 8);
      v70 = (*(a1 + 624) + 8 * v65);
      v78 = v66;
      v79 = v67;
      v80 = v68;
      inited = ssftmap_ObjOpen(v69, 0, &v78, v70);
      if ((inited & 0x80000000) != 0)
      {
        return inited;
      }

      __c_1 = 2;
      LH_itoa(1u, v87, 0xAu);
      __strcat_chk();
      v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", v87, &__c_3, &__c_1, &__c);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      if (__c_1)
      {
        v71 = 1;
        do
        {
          v72 = strchr(*__c_3, 59);
          if (v72)
          {
            *v72 = 0;
            inited = ssftmap_Insert(*(*(a1 + 624) + 8 * v65), *__c_3, (v72 + 1));
            if ((inited & 0x80000000) != 0)
            {
              return inited;
            }
          }

          __c_1 = 2;
          LH_itoa(++v71, v87, 0xAu);
          __strcat_chk();
          v10 = (*(*(a1 + 56) + 96))(*(a1 + 40), *(a1 + 48), "adaptcfgmw", v87, &__c_3, &__c_1, &__c);
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }
        }

        while (__c_1);
      }

      ++v65;
      v67 = v75;
      v66 = v77;
      if (v65 >= *(a1 + 481))
      {
        return v10;
      }
    }
  }

  return v10;
}