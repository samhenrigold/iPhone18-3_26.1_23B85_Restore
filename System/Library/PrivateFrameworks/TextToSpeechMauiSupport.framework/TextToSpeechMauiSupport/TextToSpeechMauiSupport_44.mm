uint64_t UTOITrace(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v38 = 0;
  __n[0] = 0;
  if (!a1)
  {
    return 0;
  }

  __src = 0;
  *&__n[1] = 0;
  v9 = bed_GetcElem(a3, __n);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = __n[0];
  if (__n[0])
  {
    v9 = bed_GetpElem(a3, 0, &__src);
    if ((v9 & 0x80000000) == 0)
    {
      v11 = heap_Calloc(*(a2 + 8), 1, __n[0] + 1);
      if (!v11)
      {
        return 2370838538;
      }

      v12 = v11;
      cstdlib_strncpy(v11, __src, __n[0]);
      *(v12 + __n[0]) = 0;
      v14 = (a2 + 32);
      v13 = *(a2 + 32);
      v15 = v12;
      v10 = __n[0];
      if (__n[0])
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    return v9;
  }

  v12 = 0;
  v14 = (a2 + 32);
  v13 = *(a2 + 32);
LABEL_11:
  v15 = "";
LABEL_12:
  log_OutText(v13, "PP", 5, 0, "[UTOI] (%s) len=%d (LH_U8 *) %s", a5, v10, v15);
  v17 = bed_GetpElem(a4, 0, &__n[1]);
  if ((v17 & 0x80000000) != 0)
  {
    v16 = v17;
  }

  else
  {
    v16 = bed_GetcElem(a4, &v38);
    if ((v16 & 0x80000000) == 0 && v38)
    {
      v18 = 0;
      v19 = *&__n[1];
      do
      {
        v20 = v19 + (v18 << 6);
        v21 = *(v20 + 20);
        if (v21 == 7)
        {
          v22 = *(v20 + 40);
          if (v22 == 43)
          {
            String = "UTOI_PHONEMEMARKER";
          }

          else
          {
            v24 = &off_279DADCB0;
            v25 = 19;
            while (*(v24 - 2) != v22)
            {
              v24 += 2;
              if (!--v25)
              {
                String = "UTOI_UNDEF";
                goto LABEL_25;
              }
            }

            String = *v24;
          }
        }

        else
        {
          String = marker_getString(v21);
          v19 = *&__n[1];
        }

LABEL_25:
        v26 = *(v19 + (v18 << 6) + 48);
        if (v26)
        {
          v27 = cstdlib_strlen(v26);
          if (v27 <= 0x20uLL)
          {
            v28 = v27;
          }

          else
          {
            v28 = 31;
          }

          cstdlib_strncpy(__dst, *(*&__n[1] + (v18 << 6) + 48), v28);
          __dst[v28] = 0;
          v19 = *&__n[1];
        }

        else
        {
          __dst[0] = 0;
        }

        v29 = (v19 + (v18 << 6));
        v30 = v29[5];
        if (v30 == 32)
        {
          __dst[0] = 48;
          if (v29[10] == 1)
          {
            v31 = 49;
          }

          else
          {
            v31 = 48;
          }

          __dst[0] = v31;
          __dst[1] = 0;
          v30 = v29[5];
        }

        v32 = "";
        if (*v29 == 1)
        {
          v32 = "[INT] ";
        }

        log_OutText(*v14, "PP", 5, 0, "[UTOI] Marker[%d] %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s", v18, v32, v30, String, v29[6], v29[7], v29[8], v29[9], __dst);
        v19 = *&__n[1];
        if (*(*&__n[1] + (v18 << 6) + 16))
        {
          v33 = 0;
          v34 = 0;
          do
          {
            v35 = (*(v19 + (v18 << 6) + 8) + v33);
            log_OutText(*v14, "PP", 5, 0, "[UTOI] Offsets[%d] %u,%u", v34++, *v35, v35[1]);
            v19 = *&__n[1];
            v33 += 8;
          }

          while (v34 < *(*&__n[1] + (v18 << 6) + 16));
        }

        ++v18;
      }

      while (v18 < v38);
    }
  }

  if (v12)
  {
    heap_Free(*(a2 + 8), v12);
  }

  return v16;
}

uint64_t UTOISubTrace(int a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v13 = 0;
  if (!a1)
  {
    return 0;
  }

  v12 = 0;
  v7 = bed_GetcElem(a3, &v12);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v12;
    if (!v12)
    {
      v9 = *(a2 + 32);
      goto LABEL_9;
    }

    v7 = bed_GetpElem(a3, 0, &v13);
    if ((v7 & 0x80000000) == 0)
    {
      v9 = *(a2 + 32);
      v8 = v12;
      if (v12)
      {
        v10 = v13;
LABEL_10:
        log_OutText(v9, "PP", 5, 0, "[UTOI] SUB (%s) len=%d (LH_U8 *) %s", a4, v8, v10);
        return v7;
      }

LABEL_9:
      v10 = "";
      goto LABEL_10;
    }
  }

  return v7;
}

uint64_t wparser_ObjOpen1(_WORD *a1, uint64_t a2, void *a3)
{
  v3 = 2370838535;
  v10 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v10) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v10 + 8), 16);
    if (v7)
    {
      v8 = v7;
      cstdlib_memset(v7, 0, 0x10uLL);
      v3 = 0;
      *v8 = a1;
      v8[1] = a2;
      *a3 = v8;
    }

    else
    {
      return 2370838538;
    }
  }

  return v3;
}

uint64_t wparser_ObjClose1(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wparser_ScanWords(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  LODWORD(v52) = 1;
  DWORD1(v53) = 1;
  v51 = 0;
  v4 = 2370838535;
  v50 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v9 = datac_RequestBlock(a2, 1020, 1u, &v60);
  if ((v9 & 0x80000000) != 0)
  {
    if ((v9 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  if (!*(v60 + 16))
  {
    return 0;
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, &v59, 213);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(v60 + 8);
    v12 = *(v60 + 16);
    v10 = bed_GetpElem(v59, 0, &v58);
    if ((v10 & 0x80000000) == 0)
    {
      v56 = *v58;
      v57 = *(v58 + 2);
      v13 = *(v58 + 6);
      v14 = *(v58 + 7);
      v15 = *(v58 + 8);
      v61[0] = *(v58 + 36);
      *(v61 + 12) = v58[3];
      v10 = bed_GetcElem(v59, &v50);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = bed_GetpElem(v59, 0, &v51);
        if ((v10 & 0x80000000) == 0)
        {
          v16 = v50;
          if (v50 < 2u)
          {
            v16 = 1;
          }

          else
          {
            v17 = (v51 + 96);
            v18 = 1;
            while (1)
            {
              v19 = *v17;
              v17 += 16;
              if (v19 != *(v51 + 32))
              {
                break;
              }

              if (v50 == ++v18)
              {
                goto LABEL_20;
              }
            }

            v16 = v18;
          }

LABEL_20:
          v21 = v58;
          v20 = v59;
          *(v58 + 7) = 0;
          *(v21 + 9) = 0;
          v10 = bed_Goto(v20, 1u);
          if ((v10 & 0x80000000) == 0)
          {
            v48 = v13;
            if (!v12)
            {
LABEL_80:
              v4 = bed_GetpElem(v59, 0, &v58);
              if ((v4 & 0x80000000) == 0)
              {
                v46 = v57;
                v45 = v58;
                *v58 = v56;
                *(v45 + 2) = v46;
                *(v45 + 36) = v61[0];
                v45[3] = *(v61 + 12);
                *(v45 + 7) = v14 + a4;
                *(v45 + 8) = v15;
                *(v45 + 6) = v48 - a4;
              }

              goto LABEL_83;
            }

            v22 = 0;
            v23 = 0;
            v49 = v48 + a3;
            while (1)
            {
              v24 = v23;
              v25 = v23;
              do
              {
                if (!utf8_BelongsToSet(4, v11, v24, v12))
                {
                  break;
                }

                v25 = v25 + utf8_determineUTF8CharLength(*(v11 + v25));
                v24 = v25;
              }

              while (v25 < v12);
              v23 = v25;
              if (v12 > v25)
              {
                v23 = v25;
                do
                {
                  if (utf8_BelongsToSet(4, v11, v23, v12))
                  {
                    break;
                  }

                  v23 = v23 + utf8_determineUTF8CharLength(*(v11 + v23));
                }

                while (v12 > v23);
              }

              if (v25 < v23)
              {
                if (v50 >= 2u)
                {
                  v26 = 0;
                  v27 = 0;
                  v28 = 1;
                  do
                  {
                    v29 = (v51 + (v28 << 6));
                    v30 = v29[8] - *(v51 + 32);
                    v31 = v30 < v24 || v30 > v23;
                    if (!v31 && v29[5] == 7)
                    {
                      v32 = v29[10];
                      if (v32 == 15)
                      {
                        v33 = v28;
                      }

                      else
                      {
                        v33 = v27;
                      }

                      if (v32 == 43)
                      {
                        v26 = 1;
                      }

                      else
                      {
                        v27 = v33;
                      }
                    }

                    ++v28;
                  }

                  while (v30 <= v23 && v28 < v50);
                  if (v26 == 1 && v27)
                  {
                    v35 = *(v51 + (v27 << 6) + 32) - *(v51 + 32);
                    if (v35 <= v24 || v35 > v23)
                    {
                      v23 = v23;
                    }

                    else
                    {
                      v23 = v35;
                    }
                  }
                }

                if (v25 && v16 < v50)
                {
                  v37 = v16;
                  v38 = (v51 + 32 + (v16 << 6));
                  do
                  {
                    if (*v38 - *(v51 + 32) > v24)
                    {
                      break;
                    }

                    if (*(v38 - 3) != 1)
                    {
                      v22 += *(v38 - 1);
                    }

                    ++v37;
                    v38 += 16;
                  }

                  while (v37 < v50);
                  v16 = v37;
                }

                if (v16 >= v50)
                {
                  v39 = 0;
                  v40 = v23;
                }

                else
                {
                  v39 = 0;
                  v40 = v23;
                  v41 = (v51 + 32 + (v16 << 6));
                  v42 = v50 - v16;
                  do
                  {
                    v43 = *v41 - *(v51 + 32);
                    if (v43 <= v24 || v43 >= v23)
                    {
                      break;
                    }

                    if (*(v41 - 3) != 1)
                    {
                      v39 += *(v41 - 1);
                    }

                    v41 += 16;
                    --v42;
                  }

                  while (v42);
                }

                LODWORD(v54) = v24 + v15;
                DWORD1(v54) = v40 - v24;
                DWORD2(v53) = v49 + v24 + v22;
                HIDWORD(v53) = v39 + v40 - v24;
                v10 = bed_marker_InjectFixedRefMarker(v59, &v52);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetcElem(v59, &v50);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetpElem(v59, 0, &v51);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }
              }

              if (v12 <= v23)
              {
                goto LABEL_80;
              }
            }
          }
        }
      }
    }
  }

  v4 = v10;
LABEL_83:
  if (v59)
  {
    bed_ObjClose(v59);
  }

  return v4;
}

uint64_t utois_ScanRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, char *a6, uint64_t a7, unsigned __int16 *a8, void *a9, uint64_t a10, char *a11, __int16 a12, __int16 a13, unsigned __int16 a14)
{
  v214 = *MEMORY[0x277D85DE8];
  v190 = 0;
  v191 = 0;
  v14 = 2370838535;
  v189 = 0;
  if (!a7)
  {
    return v14;
  }

  v16 = a7;
  if ((InitRsrcFunction(a5, a6, &v189) & 0x80000000) != 0)
  {
    return v14;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1020, &v191, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1021, &v190, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  UTOITrace(a4, v189, v191, v190, "BEFORE utois_ScanTaggedText");
  v188 = v189;
  *&__b = 0;
  if (!v191 || !v190 || (datac_RequestBlock(v16, 1021, 1u, &__b) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v180 = a1;
  v181 = a2;
  v183 = a3;
  v178 = a5;
  v179 = a6;
  v177 = a8;
  v23 = __b;
  v24 = *(__b + 16);
  if (v24 >= 2)
  {
    v186 = a4;
    v25 = *(__b + 8);
    v26 = v25 + 16;
    v27 = 1;
    v28 = 1;
    do
    {
      v29 = &v25[16 * v28];
      if (v29[5] == 7 && v29[10] == 43 && v24 > (v27 + 1))
      {
        v30 = (v27 + 1);
        v31 = &v26[16 * v30];
        while (*(v31 - 11) != 7)
        {
          ++v30;
          v31 += 16;
          if (v24 == v30)
          {
            goto LABEL_26;
          }
        }

        if (*(v31 - 6) == 43 && v29[8] == *(v31 - 8))
        {
          v184 = v26;
          if (v30 >= (v27 + 1))
          {
            v175 = v16;
            v32 = v27 + 1;
            do
            {
              v33 = &v25[16 * v32];
              v36 = *(v33 + 6);
              v35 = v33 + 12;
              v34 = v36;
              if (v36)
              {
                heap_Free(*(v188 + 8), v34);
                *v35 = 0;
              }

              ++v32;
            }

            while (v32 <= v30);
            v23 = __b;
            v16 = v175;
          }

          cstdlib_memmove(v31 - 16, v31, (*(v23 + 16) - v30) << 6);
          v37 = *(__b + 16) - 1;
          *(__b + 16) = v37;
          cstdlib_memmove(&v25[16 * v28], &v25[16 * (v27 + 1)], (v37 - v27) << 6);
          v23 = __b;
          LOWORD(v24) = *(__b + 16) - 1;
          *(__b + 16) = v24;
          --v28;
          v26 = v184;
        }
      }

LABEL_26:
      v27 = ++v28;
    }

    while (v28 < v24);
    a4 = v186;
    if (v24 >= 2u)
    {
      v38 = v25 + 6;
      v39 = 0x1080200080;
      v40 = 1;
      v41 = 1;
      while (1)
      {
        while (1)
        {
          v42 = &v25[16 * v41];
          if (v42[5] != 7)
          {
            goto LABEL_78;
          }

          v43 = (v40 + 1);
          if (v24 > (v40 + 1))
          {
            break;
          }

LABEL_34:
          v47 = v42[10];
          if (v47 != 15)
          {
            v42[9] = v25[9] + v25[8] - v42[8];
            if (v47 == 43)
            {
              v48 = v42[6];
              v49 = v25[7] + v25[6];
              v50 = v49 >= v48;
              v51 = v49 - v48;
              if (v50)
              {
                v42[7] = v51;
              }
            }

            goto LABEL_78;
          }

          v42[9] = 0;
          if (!*v42)
          {
LABEL_36:
            v42[5] = 999;
          }

LABEL_78:
          v40 = ++v41;
          if (v41 >= v24)
          {
            a4 = v186;
            goto LABEL_87;
          }
        }

        v44 = (v40 + 1);
        v45 = &v25[16 * v44];
        v46 = &v38[16 * v44];
        while (v45[5] != 7)
        {
          ++v44;
          v45 += 16;
          v46 += 16;
          if (v24 == v44)
          {
            goto LABEL_34;
          }
        }

        v52 = v42[10];
        v53 = v45[10];
        if (v52 == 43)
        {
          if (v53 == 43)
          {
            v54 = *(v45 + 6);
            if (v54)
            {
              v185 = v38;
              v55 = v39;
              heap_Free(*(v188 + 8), v54);
              v39 = v55;
              v38 = v185;
              *(v45 + 6) = 0;
            }

            v56 = 0;
            v45[5] = 999;
          }

          else
          {
            if (v24 > v44)
            {
              v58 = v44;
              do
              {
                v59 = *(v46 - 1);
                v60 = v59 > 0x24 || ((1 << v59) & v39) == 0;
                if (!v60 || v59 == 999)
                {
                  v61 = *v46 - v42[7];
                  *v46 = v61;
                  if (v58 > v44 && v61 > v45[6])
                  {
                    *v46 = v61 - v45[7];
                  }
                }

                ++v58;
                v46 += 16;
              }

              while (v58 < v24);
            }

            v56 = 0;
          }

          v62 = v45[6];
          v63 = v42[6];
          goto LABEL_67;
        }

        if (v52 == v53)
        {
          break;
        }

        if (v42[8] != v45[8])
        {
          if (v52 == 15 && !*v42)
          {
            goto LABEL_36;
          }

          v56 = 0;
          v62 = v45[6];
          v63 = v42[6] + v42[7];
LABEL_67:
          v42[7] = v62 - v63;
LABEL_74:
          if (v42[5] == 999)
          {
            if (v56)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v42[9] = v45[8] - v42[8];
            if (v56)
            {
LABEL_83:
              v67 = v44 + 1;
              if (v67 < v24)
              {
                v64 = &v25[16 * v67];
                v65 = (v24 - v44) << 6;
                v66 = v45;
                goto LABEL_85;
              }

              goto LABEL_86;
            }
          }

          goto LABEL_78;
        }

        v42[10] = v53;
        if (*v45)
        {
          goto LABEL_70;
        }

        v45[10] = v53;
        if (!*v42)
        {
          goto LABEL_36;
        }

        if (v43 < v24)
        {
          v64 = &v25[16 * v43];
          v65 = (v24 - v40) << 6;
          v66 = &v25[16 * v41];
LABEL_85:
          v68 = v39;
          cstdlib_memmove(v66, v64, v65);
          v39 = v68;
        }

LABEL_86:
        LOWORD(v24) = v24 - 1;
        v40 = v41;
        a4 = v186;
        if (v41 >= v24)
        {
          goto LABEL_87;
        }
      }

      if (v52 == 60 || v52 == 16)
      {
        v56 = *v45;
        if (*v45)
        {
LABEL_70:
          v56 = 1;
        }

        else
        {
          v45[5] = 999;
        }
      }

      else
      {
        v56 = 0;
      }

      goto LABEL_74;
    }
  }

LABEL_87:
  *(__b + 16) = v24;
  UTOITrace(a4, v189, v191, v190, "BEFORE utois_ScanTextForSpell");
  v70 = v190;
  v69 = v191;
  *&v206 = 21;
  LOWORD(v200) = 0;
  __src = 0;
  v203 = 0;
  v204 = 0;
  v212 = 0u;
  v213 = 0u;
  __b = 0u;
  v211 = 0u;
  v201 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetTypeOfInput_0;
  v211 = unk_26ECDC488;
  v212 = xmmword_26ECDC498;
  v213 = unk_26ECDC4A8;
  if (!v69)
  {
    goto LABEL_216;
  }

  if (!v70)
  {
    goto LABEL_216;
  }

  if ((bed_GetcElem(v69, &v200) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((datac_RequestBlock(v16, 1012, 1u, &v201) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v71 = *(v201 + 8);
  if ((bed_Goto(v70, 0) & 0x80000000) != 0 || (bed_GetpElem(v70, 0, &__src) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v72 = *(__src + 8);
  v73 = bed_GoForward(v70, bed_marker_IsOfType, &v206);
  if ((v73 & 0x1FFF) != 0x14)
  {
    if (v73 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v204) & 0x80000000) != 0)
    {
      goto LABEL_216;
    }

    for (i = v204; v204; i = v204)
    {
      v82 = v16;
      LOWORD(v199) = 1;
      v83 = *(i + 40);
      MarkerArgStr = marker_getMarkerArgStr(3u);
      if (cstdlib_strcmp((v71 + v83), MarkerArgStr) && (v85 = *(v204 + 40), v86 = marker_getMarkerArgStr(4u), cstdlib_strncmp((v71 + v85), v86, 6uLL)) && (v87 = *(v204 + 40), v88 = marker_getMarkerArgStr(6u), cstdlib_strcmp((v71 + v87), v88)) && (v89 = *(v204 + 40), v90 = marker_getMarkerArgStr(7u), cstdlib_strcmp((v71 + v89), v90)) && (v91 = *(v204 + 40), v92 = marker_getMarkerArgStr(8u), cstdlib_strcmp((v71 + v91), v92)))
      {
        v93 = 0;
        v94 = 14;
      }

      else
      {
        v95 = *(v204 + 40);
        v96 = marker_getMarkerArgStr(5u);
        if (cstdlib_strcmp((v71 + v95), v96) && (v97 = *(v204 + 40), v98 = marker_getMarkerArgStr(6u), cstdlib_strcmp((v71 + v97), v98)) && (v99 = *(v204 + 40), v100 = marker_getMarkerArgStr(7u), cstdlib_strcmp((v71 + v99), v100)) && (v101 = *(v204 + 40), v102 = marker_getMarkerArgStr(8u), cstdlib_strcmp((v71 + v101), v102)))
        {
          v94 = 14;
        }

        else
        {
          v94 = 44;
        }

        v93 = 1;
      }

      LOWORD(v199) = 1;
      bed_GoForward(v70, bed_marker_IsAt, &v199);
      v103 = bed_GoForward(v70, bed_marker_IsOfType, &v206);
      v16 = v82;
      if ((v103 & 0x1FFF) == 0x14)
      {
        v203 = 0;
      }

      else if (v103 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v203) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }

      if (v93)
      {
        v104 = *(v204 + 32);
        DWORD2(v211) = *(v204 + 24);
        LODWORD(v212) = v104;
        v105 = v203 ? *(v203 + 32) : v72 + v200;
        DWORD1(v212) = v105 - v104;
        DWORD2(v212) = v94;
        HIDWORD(v211) = v105 - v104;
        if (v105 != v104 && (bed_marker_InjectFixedRefMarker(v70, &__b) & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      v106 = bed_GoForward(v70, bed_marker_IsOfType, &v206);
      if ((v106 & 0x1FFF) == 0x14)
      {
        break;
      }

      if (v106 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v204) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }
    }
  }

  UTOITrace(a4, v189, v191, v190, "BEFORE utois_ScanTextForMWRegions");
  v75 = v189;
  v74 = v190;
  v76 = v191;
  v203 = 0;
  v204 = 0;
  LOWORD(v197) = 0;
  v200 = 0;
  v201 = 0;
  __len = 0;
  v194 = 0;
  __n = 0;
  LODWORD(v199) = 0;
  v212 = 0u;
  v213 = 0u;
  __b = 0u;
  v211 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  LODWORD(v206) = 1;
  DWORD1(v207) = 998;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetTypeOfInput_0;
  v211 = unk_26ECDC488;
  v212 = xmmword_26ECDC498;
  v213 = unk_26ECDC4A8;
  cstdlib_memset(&v206, 0, 0x40uLL);
  v206 = MarkerUDCTREF_0;
  v207 = unk_26ECDC4C8;
  v208 = xmmword_26ECDC4D8;
  v209 = unk_26ECDC4E8;
  if (!v180)
  {
    goto LABEL_207;
  }

  if (((*(v180 + 120))(v181, v183, &v199) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if (!v199)
  {
    goto LABEL_207;
  }

  v77 = a12 <= a13 ? a13 : a12;
  __src = 0;
  v194 = 0;
  if ((datac_RequestBlock(v16, 1021, 1u, &v203) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v78 = bed_GetpElem(v76, 0, &v200);
  if (v78 < 0)
  {
    goto LABEL_216;
  }

  v79 = *(v203 + 16);
  if (!*(v203 + 16) || *(*(v203 + 8) + 20) != 0x4000)
  {
    goto LABEL_216;
  }

  v174 = v78;
  v171 = v77;
  v172 = v76;
  v173 = v74;
  v187 = a4;
  v176 = v16;
  v204 = *(v203 + 8);
  LOWORD(v197) = v79;
  if (v79 == 1)
  {
    v80 = 0;
    goto LABEL_198;
  }

  v107 = 0;
  v108 = 0;
  v80 = 0;
  v109 = 1;
  v110 = 2;
  v111 = 168;
  while (1)
  {
    v112 = (v204 + (v109 << 6));
    if (v112[5] != 32 || v112[10] != 1)
    {
      goto LABEL_197;
    }

    if (v107)
    {
      v113 = v112[8];
      if (v108 == v113)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v113 = v112[8];
    }

    v114 = v79;
    v115 = (v204 + v111);
    v116 = v110;
    do
    {
      if (v116 >= v114)
      {
        goto LABEL_154;
      }

      v117 = v116;
      if (*(v115 - 5) == 32)
      {
        break;
      }

      v118 = *v115;
      v115 += 16;
      ++v116;
    }

    while (!v118);
    v119 = v117;
    v120 = (v204 + (v117 << 6));
    if (v120[5] == 32)
    {
      break;
    }

LABEL_154:
    v107 = 1;
    v108 = v113;
LABEL_197:
    ++v109;
    v79 = v197;
    ++v110;
    v111 += 64;
    if (v109 >= v197)
    {
      goto LABEL_198;
    }
  }

  v108 = v113;
  if (v120[10] || v113 == v120[8])
  {
    goto LABEL_196;
  }

  v174 = bed_Goto(v173, v109);
  if (v174 < 0)
  {
    goto LABEL_198;
  }

  v121 = *(v204 + 32);
  v170 = *(v204 + (v109 << 6) + 32) - v121;
  v122 = (*(v204 + (v109 << 6) + 32) - v121);
  v123 = (*(v204 + (v119 << 6) + 32) - v121);
  if (v187 == 1)
  {
    log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (scan for multiword in dict between text positions %u and %u)", (*(v204 + (v109 << 6) + 32) - v121), (*(v204 + (v119 << 6) + 32) - v121));
  }

  LOWORD(__len) = a13;
  if ((v123 - v122) > a13)
  {
    goto LABEL_198;
  }

  LOWORD(__len) = v123 - v122;
  v124 = __src;
  if (__src)
  {
    v125 = (v123 - v122);
  }

  else
  {
    v124 = heap_Calloc(*(v75 + 8), a13 + 1, 1);
    __src = v124;
    if (!v124)
    {
      goto LABEL_308;
    }

    v125 = __len;
  }

  cstdlib_memmove(v124, (v200 + v122), v125);
  if (v194 || (v194 = heap_Calloc(*(v75 + 8), 1, a14 + a12 * a14 + 1)) != 0)
  {
    if (!v201)
    {
      v174 = bed_ObjOpen(v178, v179, v176, 1029, &v201, 213);
      if (v174 < 0)
      {
        goto LABEL_198;
      }
    }

    if (v187 == 1)
    {
      if (!v80)
      {
        v80 = heap_Calloc(*(v75 + 8), v171 + 1, 1);
        if (!v80)
        {
          goto LABEL_308;
        }
      }

      cstdlib_strncpy(v80, __src, __len);
      v80[__len] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (lookup User Dict for %s)", v80);
    }

    v174 = utoin_LookUpUdctWord(v180, v181, v183, &__src, 1, a13, a12, &v205);
    if (v174 < 0)
    {
      goto LABEL_198;
    }

    if ((HIDWORD(__len) - 2) >= 2 && HIDWORD(__len) != 43 && (HIDWORD(__len) != 16 || !LH_stricmp(a11, "jpj") && HIDWORD(__len) != 2))
    {
      if (v187 == 1)
      {
        log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (no (valid) User Dict entry found)");
      }

      goto LABEL_196;
    }

    if (v187 == 1)
    {
      cstdlib_strncpy(v80, v194, __n);
      v80[__n] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (found User Dict entry %s)", v80);
    }

    if (LH_stricmp(a11, &v205))
    {
      v126 = &v205;
    }

    else
    {
      v126 = 0;
    }

    v174 = utoin_ReplaceWord(v172, v173, v170, &__src, 0, v176, v126);
    if (v174 < 0)
    {
      goto LABEL_198;
    }

    v174 = bed_GetpElem(v172, 0, &v200);
    if (v174 < 0)
    {
      goto LABEL_198;
    }

    if (HIDWORD(__len) == 16)
    {
      v174 = bed_Goto(v173, v109);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v130 = v204 + (v109 << 6);
      DWORD2(v211) = *(v130 + 24);
      HIDWORD(v211) = __len;
      LODWORD(v212) = *(v130 + 32);
      DWORD1(v212) = *(v204 + (v119 << 6) + 32) - v212;
      DWORD2(v212) = 16;
      v174 = bed_marker_InjectFixedRefMarker(v173, &__b);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v174 = bed_GetpElem(v173, 0, &v204);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v174 = bed_GetcElem(v173, &v197);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v131 = v204 + (v109 << 6);
      DWORD2(v207) = *(v131 + 24);
      HIDWORD(v207) = __len;
      LODWORD(v208) = *(v131 + 32);
      DWORD1(v208) = *(v204 + (v119 << 6) + 32) - v208;
      v129 = 16;
LABEL_193:
      DWORD2(v208) = v129;
      if ((bed_marker_InjectFixedRefMarker(v173, &v206) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }

      v174 = bed_GetpElem(v173, 0, &v204);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v174 = bed_GetcElem(v173, &v197);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      goto LABEL_196;
    }

    if (HIDWORD(__len) == 43)
    {
      v174 = bed_Goto(v173, v109);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v127 = v204 + (v109 << 6);
      DWORD2(v211) = *(v127 + 24);
      HIDWORD(v211) = __len;
      LODWORD(v212) = *(v127 + 32);
      DWORD1(v212) = __n;
      DWORD2(v212) = 43;
      v174 = bed_marker_InjectFixedRefMarker(v173, &__b);
      if (v174 < 0)
      {
        goto LABEL_198;
      }

      v128 = v204 + (v109 << 6);
      DWORD2(v207) = *(v128 + 24);
      HIDWORD(v207) = __len;
      LODWORD(v208) = *(v128 + 32);
      DWORD1(v208) = __n;
      v129 = 43;
      goto LABEL_193;
    }

LABEL_196:
    v107 = 1;
    goto LABEL_197;
  }

LABEL_308:
  log_OutPublic(*(v75 + 32), &modPP_5, 1923, 0);
  v174 = -1924128758;
LABEL_198:
  if (__src)
  {
    heap_Free(*(v75 + 8), __src);
  }

  if (v194)
  {
    heap_Free(*(v75 + 8), v194);
  }

  if (v80)
  {
    heap_Free(*(v75 + 8), v80);
  }

  if (v201)
  {
    bed_ObjClose(v201);
  }

  v16 = v176;
  a4 = v187;
  if (v174 < 0)
  {
LABEL_216:
    LODWORD(v14) = 0;
    goto LABEL_217;
  }

LABEL_207:
  UTOITrace(a4, v189, v191, v190, "BEFORE utois_ScanUntaggedText");
  v133 = v190;
  v132 = v191;
  v205 = 7;
  if (!v191 || !v190)
  {
    goto LABEL_304;
  }

  IsCursorAtEnd = bed_Goto(v191, 0);
  if (IsCursorAtEnd < 0 || (IsCursorAtEnd = bed_Goto(v133, 0), IsCursorAtEnd < 0) || (v197 = 0, IsCursorAtEnd = bed_IsCursorAtEnd(v132, &v197), IsCursorAtEnd < 0))
  {
LABEL_303:
    LODWORD(v14) = IsCursorAtEnd;
    goto LABEL_304;
  }

  if (!v197)
  {
    while (1)
    {
      v196 = 0;
      v136 = bed_GoForward(v133, bed_marker_IsOfType, &v205);
      if (v136 < 0)
      {
        LODWORD(v14) = v136;
        if ((v136 & 0x1FFF) != 0x14)
        {
          goto LABEL_304;
        }
      }

      v203 = 0;
      v202 = 0;
      v200 = 0;
      v201 = 0;
      __src = 0;
      __len = 0;
      v194 = 0;
      v199 = 0;
      v208 = 0u;
      v209 = 0u;
      v206 = 0u;
      v207 = 0u;
      v198 = 0;
      cstdlib_memset(&v206, 0, 0x40uLL);
      v206 = MarkerSetTypeOfInput_0;
      v207 = unk_26ECDC488;
      v208 = xmmword_26ECDC498;
      v209 = unk_26ECDC4A8;
      cstdlib_memset(&__src, 0, 0x18uLL);
      __len = v178;
      v194 = v179;
      v137 = bed_GetpElem(v133, 0, &v201);
      if (v137 < 0)
      {
        LODWORD(v14) = v137;
        goto LABEL_298;
      }

      v138 = a4;
      v139 = *(v201 + 24);
      v140 = *(v201 + 32);
      v141 = datac_RequestBlock(v16, 1021, 1u, &v199);
      if (v141 < 0)
      {
        LODWORD(v14) = v141;
        a4 = v138;
        goto LABEL_298;
      }

      v142 = *(v199 + 8);
      v143 = *(v199 + 16);
      v144 = bed_GetpElem(v133, 0xFFFFu, &v200);
      if ((v144 & 0x1FFF) != 0xF)
      {
        break;
      }

      v145 = bed_GetcElem(v132, &v202);
      if (v145 < 0)
      {
        goto LABEL_296;
      }

      if (!v143)
      {
        goto LABEL_257;
      }

      v146 = 0;
      v147 = 0;
      v148 = (v142 + 20);
      do
      {
        v149 = *v148;
        v148 += 16;
        if (v149 == 7)
        {
          v147 = v146;
        }

        ++v146;
      }

      while (v143 != v146);
      if (!v147)
      {
LABEL_257:
        v154 = *(v142 + 24);
        goto LABEL_258;
      }

      v150 = (v142 + (v147 << 6));
      v151 = v150[10];
      if (v151 == 44 || v151 == 14)
      {
        goto LABEL_255;
      }

      v153 = v150[6];
      if (v153 != v139 || v150[8] != v140)
      {
        goto LABEL_256;
      }

      v154 = v150[7] + v139;
LABEL_258:
      v182 = v154;
      v145 = bed_GetiElem(v132, &v202 + 1);
      if (v145 < 0)
      {
        goto LABEL_296;
      }

      LOWORD(v202) = v202 - HIWORD(v202);
      v145 = bed_Goto(v132, HIWORD(v202) + v202);
      if (v145 < 0)
      {
        goto LABEL_296;
      }

      v145 = bed_Insert(v132, &v198, 1);
      if (v145 < 0)
      {
        goto LABEL_296;
      }

      v145 = bed_GetpElem(v132, HIWORD(v202), &v203);
      if (v145 < 0)
      {
        goto LABEL_296;
      }

      v160 = v202;
      if (v202)
      {
        v161 = 0;
        while (!*v177)
        {
LABEL_281:
          v161 += utf8_determineUTF8CharLength(*(v203 + v161));
LABEL_282:
          v160 = v202;
          if (v202 <= v161)
          {
            goto LABEL_283;
          }
        }

        v162 = 0;
        v163 = 0;
        while (1)
        {
          v164 = v203;
          v165 = v202;
          v204 = 0;
          if (!v203 || v202 <= v161 || (InitRsrcFunction(__len, v194, &v204) & 0x80000000) != 0)
          {
            LODWORD(v14) = -1924128761;
            goto LABEL_297;
          }

          v166 = nuance_pcre_exec(a9, a10, *(v177 + 2) + *(*(v177 + 1) + v162), 0, v164, v165, v161, 16, &__b, 30);
          if ((v166 & 0x80000000) == 0)
          {
            if (v166)
            {
              LODWORD(__src) = *(*(v177 + 1) + v162 + 4);
              WORD2(__src) = __b;
              HIWORD(__src) = WORD2(__b) - __b;
            }

LABEL_276:
            LODWORD(v168) = *v177;
LABEL_277:
            if (v168 <= v163)
            {
              goto LABEL_281;
            }

            DWORD2(v207) = v182 + v161;
            HIDWORD(v207) = HIWORD(__src);
            LODWORD(v208) = v140 + WORD2(__src) + HIWORD(v202);
            DWORD1(v208) = HIWORD(__src);
            DWORD2(v208) = __src;
            v145 = bed_marker_InjectFixedRefMarker(v133, &v206);
            if ((v145 & 0x80000000) == 0)
            {
              v145 = datac_RequestBlock(v16, 1021, 1u, &v199);
              if ((v145 & 0x80000000) == 0)
              {
                v161 = HIWORD(__src) + WORD2(__src);
                goto LABEL_282;
              }
            }

            goto LABEL_296;
          }

          v167 = nuance_pcre_ErrorToLhError(v166);
          if (v167 >> 20 != 2213)
          {
            goto LABEL_276;
          }

          LODWORD(v14) = v167;
          if ((v167 & 0x1FFF) != 0x14)
          {
            break;
          }

          ++v163;
          v168 = *v177;
          v162 += 8;
          if (v163 >= v168)
          {
            goto LABEL_277;
          }
        }

        if ((v167 & 0x1FFF) == 0xA)
        {
          log_OutPublic(*(v204 + 32), &modPP_5, 11002, 0);
          v160 = v202;
          goto LABEL_287;
        }

        log_OutPublic(*(v204 + 32), &modPP_5, 11027, "%s%x", "lhError", v167);
        goto LABEL_297;
      }

LABEL_283:
      LODWORD(v14) = 0;
LABEL_287:
      v145 = bed_Remove(v132, (HIWORD(v202) + v160), 1u);
      if (v145 < 0)
      {
        goto LABEL_296;
      }

      if (v200)
      {
        v145 = bed_GetpElem(v133, 0xFFFFu, &v200);
        if (v145 < 0)
        {
          goto LABEL_296;
        }

        v169 = (v202 + HIWORD(v202) + *(v200 + 36));
      }

      else
      {
        v169 = v202 + HIWORD(v202);
      }

      v145 = bed_Goto(v132, v169);
      if ((v145 & 0x80000000) == 0)
      {
        if ((~v14 & 0xA) != 0)
        {
          LODWORD(v14) = 0;
        }

        goto LABEL_297;
      }

LABEL_296:
      LODWORD(v14) = v145;
LABEL_297:
      a4 = v138;
LABEL_298:
      if ((v14 & 0x80000000) != 0 && (v14 & 0x1FFF) != 0xA)
      {
        goto LABEL_304;
      }

      v196 = 1;
      bed_GoForward(v133, bed_marker_IsAt, &v196);
      IsCursorAtEnd = bed_IsCursorAtEnd(v132, &v197);
      if (IsCursorAtEnd < 0)
      {
        goto LABEL_303;
      }

      if (v197)
      {
        goto LABEL_214;
      }
    }

    LODWORD(v14) = v144;
    a4 = v138;
    if (v144 < 0)
    {
      goto LABEL_298;
    }

    v155 = *(v200 + 32);
    LOWORD(v202) = v155 - v140;
    if (!v143)
    {
      goto LABEL_257;
    }

    v156 = 0;
    v157 = 0;
    v158 = (v142 + 20);
    do
    {
      if (v158[3] >= v155)
      {
        break;
      }

      v159 = *v158;
      v158 += 16;
      if (v159 == 7)
      {
        v157 = v156;
      }

      ++v156;
    }

    while (v143 != v156);
    if (!v157)
    {
      goto LABEL_257;
    }

    v150 = (v142 + (v157 << 6));
LABEL_255:
    v153 = v150[6];
LABEL_256:
    v154 = v150[7] + v153;
    goto LABEL_258;
  }

  LODWORD(v14) = 0;
LABEL_214:
  if ((v14 & 0x1FFF) != 0xA)
  {
    LODWORD(v14) = 0;
  }

LABEL_304:
  if ((v14 & 0x80000000) == 0 || (v14 & 0x1FFF) == 0xA)
  {
    UTOITrace(a4, v189, v191, v190, "BEFORE utois_MarkUnknownRegions");
    if ((utois_MarkUnknownRegions(v191, v190) & 0x80000000) == 0)
    {
      UTOITrace(a4, v189, v191, v190, "BEFORE utois_AlignMarkers");
      utois_AlignMarkers(v16);
    }
  }

LABEL_217:
  if (v190)
  {
    bed_ObjClose(v190);
  }

  if (v191)
  {
    bed_ObjClose(v191);
  }

  if ((v14 & 0x1FFF) == 0xA)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t utois_MarkUnknownRegions(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21[0] = 7;
  v18 = 0;
  v19 = 0;
  v17 = 0u;
  memset(__b, 0, sizeof(__b));
  cstdlib_memset(__b, 0, 0x40uLL);
  __b[0] = MarkerSetTypeOfInput_0;
  __b[1] = unk_26ECDC488;
  __b[2] = xmmword_26ECDC498;
  v17 = unk_26ECDC4A8;
  result = 2370838535;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = bed_Goto(a2, 0);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v20);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GoForward(a2, bed_marker_IsOfType, v21);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = bed_GetpElem(a2, 0xFFFFu, &v19);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!v19)
    {
      goto LABEL_7;
    }

    v7 = v20[8];
    if (v19[8] > v7)
    {
      DWORD2(__b[1]) = v20[6];
      HIDWORD(__b[1]) = v19[6] - DWORD2(__b[1]);
      LODWORD(__b[2]) = v7;
      *(&__b[2] + 4) = (v19[8] - v20[8]);
    }

    v8 = v20[8];
    v5 = v20[9] + v8;
    v6 = v20[7] + v20[6];
    if (v19[8] > v8)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_19:
      v15 = 1;
      bed_GoForward(a2, bed_marker_IsAt, &v15);
      result = bed_GoForward(a2, bed_marker_IsOfType, v21);
      if ((result & 0x1FFF) == 0x14)
      {
        v9 = 0;
        v18 = 0;
      }

      else
      {
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = v18;
        if (v18)
        {
          v10 = v18[8];
          v11 = v18[6];
          goto LABEL_26;
        }
      }

      v10 = v5;
      v11 = v6;
LABEL_26:
      v12 = v19[9];
      v13 = v12 + v19[8];
      if (v10 > v13)
      {
        v14 = v19[7];
        DWORD2(__b[1]) = v14 + v19[6];
        HIDWORD(__b[1]) = v11 - (v14 + v19[6]);
        LODWORD(__b[2]) = v13;
        *(&__b[2] + 4) = v10 - (v12 + v19[8]);
        result = bed_marker_InjectFixedRefMarker(a2, __b);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v18)
        {
          return 0;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v18);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v9 = v18;
      }

      result = 0;
      v19 = v9;
      if (!v9)
      {
        return result;
      }
    }
  }

  v19 = 0;
LABEL_7:
  *(&__b[1] + 8) = *(v20 + 6);
  DWORD2(__b[2]) = 0;
  v5 = v20[9] + v20[8];
  v6 = v20[7] + v20[6];
LABEL_8:
  result = bed_marker_InjectFixedRefMarker(a2, __b);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v19)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v19);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v19)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t utois_AlignMarkers(uint64_t a1)
{
  memset(__dst, 0, sizeof(__dst));
  v20 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v20);
  if ((result & 0x80000000) == 0)
  {
    v2 = *(v20 + 16);
    if (*(v20 + 16))
    {
      v3 = *(v20 + 8);
      if (*(v3 + 20) == 0x4000 && v2 != 1)
      {
        v5 = 1;
        do
        {
          v6 = (v3 + (v5 << 6));
          if (v6[5] == 7 && v6[10] == 43 && v5 + 1 < v2)
          {
            v8 = (v5 + 1);
            do
            {
              v9 = v3 + (v8 << 6);
              v12 = *(v9 + 32);
              v10 = (v9 + 32);
              v11 = v12;
              v13 = v6[8];
              if (v12 <= v13)
              {
                break;
              }

              if (v11 >= v6[9] + v13)
              {
                break;
              }

              *v10 = v13;
              ++v8;
            }

            while (v8 < v2);
          }

          ++v5;
        }

        while (v5 != v2);
        v14 = 1;
        do
        {
          v15 = v14 + 1;
          if (v15 >= v2 || (v16 = (v3 + (v15 << 6)), v17 = (v3 + (v14 << 6)), *(v16 + 8) >= *(v17 + 8)))
          {
            ++v14;
          }

          else
          {
            cstdlib_memcpy(__dst, (v3 + (v15 << 6)), 0x40uLL);
            v18 = v17[1];
            *v16 = *v17;
            v16[1] = v18;
            v19 = v17[3];
            v16[2] = v17[2];
            v16[3] = v19;
            result = cstdlib_memcpy(v17, __dst, 0x40uLL);
            v14 = 0;
          }
        }

        while (v14 < v2);
      }
    }
  }

  return result;
}

uint64_t sysdct_char_LookUp(void *a1, uint64_t a2, void *a3, unsigned __int16 *a4, int a5, int a6, const char *a7)
{
  LOBYTE(__c) = 0;
  v37 = 0;
  v36 = 0;
  v34 = (*(*a1 + 96))(a1[1], a1[2], "char", a2, &v37, &v36, &__c);
  if ((v34 & 0x80000000) != 0 || !v36)
  {
    return v34;
  }

  v9 = 0;
  while (1)
  {
    v10 = cstdlib_strchr(*(v37 + 8 * v9), __c);
    v11 = *(v37 + 8 * v9);
    v12 = cstdlib_strlen(v11);
    if (v10)
    {
      *v10 = 0;
    }

    v13 = cstdlib_strlen(v11) ? cstdlib_strlen(v11) + 1 : 1;
    if (v12 <= v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(v37 + 8 * v9) + v13);
      v15 = cstdlib_strchr(v14, __c);
      if (v15)
      {
        *v15 = 0;
      }

      if (cstdlib_strlen(v14))
      {
        v13 += cstdlib_strlen(v14) + 1;
      }

      else
      {
        LOWORD(v13) = v13 + 1;
      }
    }

    if (v12 <= v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = (*(v37 + 8 * v9) + v13);
      v17 = cstdlib_strchr(v16, __c);
      if (v17)
      {
        *v17 = 0;
      }

      LOWORD(v13) = cstdlib_strlen(v16) ? v13 + cstdlib_strlen(v16) + 1 : v13 + 1;
    }

    if (v12 <= v13)
    {
      goto LABEL_38;
    }

    v18 = *(v37 + 8 * v9);
    v19 = (v18 + v13);
    v20 = cstdlib_strchr(v19, __c);
    if (v20)
    {
      *v20 = 0;
    }

    if (v18)
    {
      v21 = (v18 + v13);
      do
      {
        v22 = cstdlib_strchr(v21, 44);
        v23 = v22;
        if (v22)
        {
          *v22 = 0;
        }

        v24 = cstdlib_strcmp(v21, a7);
        if (v23)
        {
          v21 = v23 + 1;
        }

        else
        {
          v21 = 0;
        }
      }

      while (v23 && v24);
      v25 = v24 == 0;
      if (!v24)
      {
        v25 = 1;
        goto LABEL_42;
      }

      if (cstdlib_strlen(v19))
      {
        goto LABEL_49;
      }
    }

    else
    {
LABEL_38:
      v25 = 0;
    }

    if (cstdlib_strcmp("normal", a7))
    {
      goto LABEL_49;
    }

LABEL_42:
    if (!a5)
    {
      goto LABEL_55;
    }

    if (a6 == 1)
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (!v25 && ++v9 < v36)
    {
      continue;
    }

    return v34;
  }

  if (v16 && cstdlib_strlen(v16) && *v16 != 49)
  {
    goto LABEL_49;
  }

LABEL_52:
  if (v14 && cstdlib_strlen(v14))
  {
    v26 = cstdlib_strlen(v14);
    *a4 = v26;
    v27 = v26 + 1;
    v28 = a3;
    v29 = v14;
    goto LABEL_56;
  }

LABEL_55:
  v30 = cstdlib_strlen(v11);
  *a4 = v30;
  v27 = v30 + 1;
  v28 = a3;
  v29 = v11;
LABEL_56:
  cstdlib_memmove(v28, v29, v27);
  return v34;
}

uint64_t sysdct_wpcrf_LookUp_Chinese(void *a1, const void *a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v42 = 0;
  cstdlib_memcpy(__c_1, a2, (a3 + 1));
  __c_1[a3] = 0;
  v43 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", __c_1, &v42, &v43, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    if (v43)
    {
      v12 = 0;
      while (1)
      {
        v13 = cstdlib_strchr(*(v42 + 8 * v12), __c);
        if (v13)
        {
          break;
        }

        if (++v12 >= v43)
        {
          return v11;
        }
      }

      v18 = v13;
      v19 = *(v42 + 8 * v12);
      v20 = v13 - v19;
      if (v13 - v19 <= 0 && v13 == v19)
      {
        v23 = __c_1;
        v22 = a4;
      }

      else
      {
        if (v20 < 0)
        {
          LODWORD(v20) = v19 - v13;
        }

        cstdlib_strncat(a5, v19, v20);
        v22 = a4;
        v23 = a5;
      }

      cstdlib_strcat(v22, v23);
      v24 = v18 + 1;
      v25 = cstdlib_strchr(v18 + 1, __c);
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          cstdlib_strcat(a4, " ");
          v28 = v26 - v24;
          if (v26 - v24 < 0)
          {
            v28 = v24 - v26;
          }

          v29 = v28;
          cstdlib_strncat(a4, v24, v28);
          if (!v27)
          {
            v30 = v29 == 1 && *v24 == 49;
            *a6 = v30;
          }

          v24 = v26 + 1;
          v26 = cstdlib_strchr(v26 + 1, __c);
          --v27;
        }

        while (v26);
      }
    }

    else
    {
      v14 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", "NULL", &v42, &v43, &__c);
      v11 = 2370838548;
      if ((v14 & 0x80000000) == 0 && v43)
      {
        v15 = v14;
        v16 = 0;
        while (1)
        {
          v17 = cstdlib_strchr(*(v42 + 8 * v16), __c);
          if (v17)
          {
            break;
          }

          if (++v16 >= v43)
          {
            return v15;
          }
        }

        v31 = v17;
        v32 = *(v42 + 8 * v16);
        v33 = v17 - v32;
        if (v17 - v32 <= 0 && v17 == v32)
        {
          v36 = __c_1;
          v35 = a4;
        }

        else
        {
          if (v33 < 0)
          {
            LODWORD(v33) = v32 - v17;
          }

          cstdlib_strncat(a5, v32, v33);
          v35 = a4;
          v36 = a5;
        }

        cstdlib_strcat(v35, v36);
        v37 = v31 + 1;
        v38 = cstdlib_strchr(v31 + 1, __c);
        if (v38)
        {
          v39 = v38;
          do
          {
            cstdlib_strcat(a4, " ");
            v40 = v39 - v37;
            if (v39 - v37 < 0)
            {
              v40 = v37 - v39;
            }

            cstdlib_strncat(a4, v37, v40);
            v37 = v39 + 1;
            v39 = cstdlib_strchr(v39 + 1, __c);
          }

          while (v39);
        }

        return v15;
      }
    }
  }

  return v11;
}

uint64_t sysdct_wpdummy_LookUp_Chinese(void *a1, const void *a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v42 = 0;
  cstdlib_memcpy(__c_1, a2, (a3 + 1));
  __c_1[a3] = 0;
  v43 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", __c_1, &v42, &v43, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    if (v43)
    {
      v12 = 0;
      while (1)
      {
        v13 = cstdlib_strchr(*(v42 + 8 * v12), __c);
        if (v13)
        {
          break;
        }

        if (++v12 >= v43)
        {
          return v11;
        }
      }

      v18 = v13;
      v19 = *(v42 + 8 * v12);
      v20 = v13 - v19;
      if (v13 - v19 <= 0 && v13 == v19)
      {
        v23 = __c_1;
        v22 = a4;
      }

      else
      {
        if (v20 < 0)
        {
          LODWORD(v20) = v19 - v13;
        }

        cstdlib_strncat(a5, v19, v20);
        v22 = a4;
        v23 = a5;
      }

      cstdlib_strcat(v22, v23);
      v24 = v18 + 1;
      v25 = cstdlib_strchr(v18 + 1, __c);
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        do
        {
          cstdlib_strcat(a4, " ");
          v28 = v26 - v24;
          if (v26 - v24 < 0)
          {
            v28 = v24 - v26;
          }

          v29 = v28;
          cstdlib_strncat(a4, v24, v28);
          if (!v27)
          {
            v30 = v29 == 1 && *v24 == 49;
            *a6 = v30;
          }

          v24 = v26 + 1;
          v26 = cstdlib_strchr(v26 + 1, __c);
          --v27;
        }

        while (v26);
      }
    }

    else
    {
      v14 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", "NULL", &v42, &v43, &__c);
      v11 = 2370838548;
      if ((v14 & 0x80000000) == 0 && v43)
      {
        v15 = v14;
        v16 = 0;
        while (1)
        {
          v17 = cstdlib_strchr(*(v42 + 8 * v16), __c);
          if (v17)
          {
            break;
          }

          if (++v16 >= v43)
          {
            return v15;
          }
        }

        v31 = v17;
        v32 = *(v42 + 8 * v16);
        v33 = v17 - v32;
        if (v17 - v32 <= 0 && v17 == v32)
        {
          v36 = __c_1;
          v35 = a4;
        }

        else
        {
          if (v33 < 0)
          {
            LODWORD(v33) = v32 - v17;
          }

          cstdlib_strncat(a5, v32, v33);
          v35 = a4;
          v36 = a5;
        }

        cstdlib_strcat(v35, v36);
        v37 = v31 + 1;
        v38 = cstdlib_strchr(v31 + 1, __c);
        if (v38)
        {
          v39 = v38;
          do
          {
            cstdlib_strcat(a4, " ");
            v40 = v39 - v37;
            if (v39 - v37 < 0)
            {
              v40 = v37 - v39;
            }

            cstdlib_strncat(a4, v37, v40);
            v37 = v39 + 1;
            v39 = cstdlib_strchr(v39 + 1, __c);
          }

          while (v39);
        }

        return v15;
      }
    }
  }

  return v11;
}

uint64_t sysdct_char_LookUp_Chinese(void *a1, unsigned __int8 *a2, void *a3, unsigned __int16 *a4, int a5, int a6, const char *a7)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = utf8_determineUTF8CharLength(*a2);
  cstdlib_memcpy(__dst, a2, (v14 + 1));
  __dst[v14] = 0;
  *a4 = 0;
  return sysdct_char_LookUp(a1, __dst, a3, a4, a5, a6, a7);
}

uint64_t sysdct_char_LookUp_Thai(void *a1, const char *a2, int a3, void *a4, unsigned __int16 *a5, int a6, int a7, const char *a8)
{
  v17 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, a2);
  __dst[a3] = 0;
  *a5 = 0;
  if (!a7 && a6 == 1 && __dst[0] == 32)
  {
    __dst[0] = -80;
  }

  return sysdct_char_LookUp(a1, __dst, a4, a5, a6, a7, a8);
}

uint64_t getDictSolution(unsigned int a1, uint64_t a2, int __c, void *a4, unsigned __int16 *a5, const char *a6)
{
  v6 = a5;
  if (!a1)
  {
LABEL_25:
    *v6 = 0;
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = cstdlib_strchr(*(a2 + 8 * v14), __c);
    if (!v15)
    {
      v13 = 0;
      goto LABEL_27;
    }

    *v15 = 0;
    v16 = v15 + 1;
    if (cstdlib_strlen(v15 + 1))
    {
      v17 = 1;
    }

    else
    {
      v18 = cstdlib_strcmp("normal", a6);
      v17 = v18 != 0;
      if (!v18)
      {
        v13 = v14;
      }
    }

    if (cstdlib_strlen(v16) == 0 && v11 == 0)
    {
      v12 = v14;
      v11 = 1;
    }

    if (!v17)
    {
      goto LABEL_27;
    }

    do
    {
      v19 = cstdlib_strchr(v16, 44);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
      }

      v21 = cstdlib_strcmp(v16, a6);
      if (!v21)
      {
        v13 = v14;
      }

      if (v20)
      {
        v16 = v20 + 1;
      }

      else
      {
        v16 = 0;
      }
    }

    while (v20 && v21);
    ++v14;
  }

  while (a1 > v14 && v21);
  if (!v21)
  {
LABEL_27:
    v26 = cstdlib_strlen(*(a2 + 8 * v13));
    *a5 = v26;
    v23 = *(a2 + 8 * v13);
    v24 = v26 + 1;
    v25 = a4;
    goto LABEL_28;
  }

  v6 = a5;
  if (v11 != 1)
  {
    goto LABEL_25;
  }

  v22 = cstdlib_strlen(*(a2 + 8 * v12));
  *a5 = v22;
  v23 = *(a2 + 8 * v12);
  v24 = v22 + 1;
  v25 = a4;
LABEL_28:
  cstdlib_memmove(v25, v23, v24);
  return 0;
}

uint64_t getDictBackTransSolution(void *a1, const char *a2, unsigned int a3, uint64_t a4, int a5, char *a6, unsigned __int16 *a7, const char *a8)
{
  v61 = *MEMORY[0x277D85DE8];
  __c_1 = 0;
  __c = 0;
  v55 = 0;
  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__s1, "");
  if (a3)
  {
    v46 = a7;
    v14 = 0;
    v50 = 0;
    v15 = 0;
    v54 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v52 = a3;
    v48 = a2;
    while (1)
    {
      v19 = *(a4 + 8 * v14);
      if (v19)
      {
        v20 = 0;
        do
        {
          v21 = cstdlib_strchr(v19, a5);
          if (!v21)
          {
            break;
          }

          *v21 = 0;
          v19 = v21 + 1;
          switch(v20)
          {
            case 1u:
              v17 = v19;
              break;
            case 3u:
              v16 = v19;
              break;
            case 7u:
              v38 = v19;
              goto LABEL_15;
          }
        }

        while (v20++ < 7);
      }

      v38 = v54;
LABEL_15:
      v54 = v38;
      if (v17)
      {
        if (!cstdlib_strcmp(v17, "") || cstdlib_strstr(v17, a8))
        {
          if (v16)
          {
            v23 = v38;
            v24 = cstdlib_strchr(v16, 33);
            if (v24)
            {
              v25 = v24;
              *v24 = 0;
              while (1)
              {
                v26 = cstdlib_strchr(v25 + 1, 92);
                v27 = v26;
                if (v26)
                {
                  *v26 = 0;
                }

                v28 = cstdlib_strchr(v25 + 1, 40);
                if (v28)
                {
                  *v28 = 0;
                }

                cstdlib_strcpy(a6, "");
                cstdlib_strcat(a6, "backtrans_");
                cstdlib_strcat(a6, v25 + 1);
                __c_1 = -1;
                __c = 0;
                v55 = 0;
                v18 = (*(*a1 + 96))(a1[1], a1[2], "fecfg", a6, &v55, &__c_1, &__c);
                if ((v18 & 0x80000000) != 0)
                {
                  break;
                }

                if (__c_1)
                {
                  v29 = cstdlib_strchr(*v55, __c);
                  if (v29)
                  {
                    *v29 = 0;
                  }

                  cstdlib_strcat(__dst, *v55);
                }

                v25 = v27;
                if (!v27)
                {
                  goto LABEL_31;
                }
              }

              *v46 = 0;
              return v18;
            }

LABEL_31:
            cstdlib_strcat(__s1, v16);
            v38 = v23;
            a2 = v48;
          }

          else
          {
            v16 = 0;
          }

          if (cstdlib_strcmp(v17, ""))
          {
            v15 = 1;
            if (!cstdlib_strstr(v17, a8) || !v38)
            {
              goto LABEL_51;
            }

LABEL_40:
            v49 = cstdlib_atoi(v38);
            v30 = cstdlib_strlen(a2);
            if (v30)
            {
              v47 = v16;
              v31 = a2;
              v32 = 0;
              v33 = 0;
              do
              {
                v34 = v33;
                v35 = utf8_determineUTF8CharLength(v31[v32]);
                v33 = v34 + 1;
                v32 = (v35 + v32);
              }

              while (v32 < v30);
              v36 = v49;
              v37 = v49 >> 1;
              if ((v49 & 0xFFFE) == 0)
              {
                v37 = 1;
              }

              if (!v34)
              {
                v36 = v37;
              }

              a2 = v31;
              v16 = v47;
            }

            else
            {
              v36 = v49;
            }

            v50 += v36;
          }

          else if (v38)
          {
            goto LABEL_40;
          }

          v15 = 1;
          goto LABEL_51;
        }

        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = 0;
      }

LABEL_51:
      if (++v14 == v52)
      {
        if (v15 && v50)
        {
          v39 = cstdlib_strlen(a2);
          a7 = v46;
          if (v39 + cstdlib_strlen(__dst) + 5 < *v46)
          {
            __c_3[0] = 0;
            __sprintf_chk(__c_3, 0, 0x80uLL, "%d", v50);
            v40 = cstdlib_strlen(a2);
            *v46 = v40;
            cstdlib_memmove(a6, a2, v40 + 1);
            cstdlib_strcat(a6, "\"");
            ++*v46;
            cstdlib_strcat(a6, __dst);
            *v46 += cstdlib_strlen(__dst);
            cstdlib_strcat(a6, "\"");
            ++*v46;
            cstdlib_strcat(a6, __c_3);
            v41 = __c_3;
LABEL_63:
            *a7 += cstdlib_strlen(v41);
            return v18;
          }
        }

        else
        {
          a7 = v46;
          if (!v15)
          {
            goto LABEL_58;
          }
        }

        v43 = cstdlib_strlen(a2);
        v44 = cstdlib_strlen(__dst);
        if (v43 + v44 + cstdlib_strlen(__s1) + 3 >= *a7)
        {
          goto LABEL_58;
        }

        v45 = cstdlib_strlen(a2);
        *a7 = v45;
        cstdlib_memmove(a6, a2, v45 + 1);
        cstdlib_strcat(a6, "\"");
        ++*a7;
        cstdlib_strcat(a6, __dst);
        *a7 += cstdlib_strlen(__dst);
        cstdlib_strcat(a6, "\"");
        ++*a7;
        cstdlib_strcat(a6, __s1);
        v41 = __s1;
        goto LABEL_63;
      }
    }
  }

  v18 = 0;
LABEL_58:
  *a7 = 0;
  return v18;
}

uint64_t sysdct_word_LookUp(void *a1, const char *a2, _BYTE *a3, unsigned __int16 *a4, const char *a5)
{
  __c[0] = 0;
  memset(v15, 0, sizeof(v15));
  *a3 = 0;
  if (!*(a1 + 8))
  {
    result = *(a1 + 12);
    if (!*(a1 + 12))
    {
      return result;
    }

    if (result == 1)
    {
      cstdlib_strcpy(&__c[1], "word");
      v15[0] = 0;
      result = (*(*a1 + 96))(a1[1], a1[2], &__c[1], a2, &v15[1], v15, __c);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v11 = v15[0];
      if (!v15[0])
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      while (1)
      {
        cstdlib_strcpy(&__c[1], "word");
        v13 = LH_itoa(v12, v14, 0xAu);
        cstdlib_strcat(&__c[1], v13);
        v15[0] = 0;
        result = (*(*a1 + 96))(a1[1], a1[2], &__c[1], a2, &v15[1], v15, __c);
        if ((result & 0x80000000) == 0)
        {
          v11 = v15[0];
          if (v15[0])
          {
            break;
          }
        }

        if (++v12 >= *(a1 + 12))
        {
          return result;
        }
      }
    }

    getDictSolution(v11, *&v15[1], __c[0], a3, a4, a5);
    return 0;
  }

  result = (*(*a1 + 240))(a1[1], a1[2], "g2p", a2, &v15[1], v15, __c, *(a1 + 24), 0);
  if ((result & 0x80000000) == 0)
  {
    if (v15[0])
    {
      return getDictBackTransSolution(a1, a2, v15[0], *&v15[1], __c[0], a3, a4, a5);
    }
  }

  return result;
}

uint64_t sysdct_word_LookUp_Chinese(void *a1, const void *a2, unsigned int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  cstdlib_memcpy(__dst, a2, a3 + 1);
  __dst[a3] = 0;
  return sysdct_word_LookUp(a1, __dst, a4, a5, a6);
}

uint64_t sysdct_word_LookUp_Thai(void *a1, const char *a2, int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v13 = *MEMORY[0x277D85DE8];
  cstdlib_strcpy(__dst, a2);
  __dst[a3] = 0;
  return sysdct_word_LookUp(a1, __dst, a4, a5, a6);
}

uint64_t wordm_sysdct_CharLookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, const char *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    v14 = a4 + 4;
    cstdlib_memset((a4 + 4), 0, 0x41uLL);
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    cstdlib_memset((a4 + 76), 0, 0x101uLL);
    *(a4 + 334) = 0;
    if (a3 >= 0x40)
    {
      v15 = 64;
    }

    else
    {
      v15 = a3;
    }

    cstdlib_memmove(__dst, a2, v15);
    __dst[v15] = 0;
    if (a3)
    {
      if (v15 > a5)
      {
        __dst[a5] = 0;
      }

      v16 = cstdlib_strlen(__dst);
      if (utf8_ToLower(__dst, 0, &v26) || utf8_BelongsToSet(0, __dst, 0, v16) == 1 || utf8_BelongsToSet(6, __dst, 0, v16) == 1 || utf8_BelongsToSet(7, __dst, 0, v16) == 1 || utf8_BelongsToSet(10, __dst, 0, v16) == 1)
      {
        v17 = 3;
      }

      else if (utf8_BelongsToSet(12, __dst, 0, v16) == 1)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      *a4 = v17;
      v18 = utf8_determineUTF8CharLength(__dst[0]);
      cstdlib_memmove((a4 + 4), __dst, v18);
      __dst[v18] = 0;
      *(v14 + v18) = 0;
      *(a4 + 70) = v18;
      v26 = 256;
      if (sysdct_char_LookUp_Chinese(a1, __dst, (a4 + 76), &v26, 1, a6, a7) || (v19 = v26) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(a4 + 76 + v26) = 0;
        *(a4 + 334) = v19;
        if (*(a4 + 76) == 35)
        {
          v20 = cstdlib_atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v20;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
        }
      }
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = v21;
        v23 = a2[v21++];
      }

      while (v23 == 32);
      cstdlib_memmove((a4 + 4), a2, v22);
      return 0;
    }
  }

  return result;
}

uint64_t wordm_sysdct_CharLookup_Thai(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, const char *a7)
{
  v23 = *MEMORY[0x277D85DE8];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *a4 = 0;
    cstdlib_memset((a4 + 4), 0, 0x41uLL);
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    cstdlib_memset((a4 + 76), 0, 0x101uLL);
    *(a4 + 334) = 0;
    if (a3 >= 0x40)
    {
      v15 = 64;
    }

    else
    {
      v15 = a3;
    }

    cstdlib_memmove(__dst, a2, v15);
    __dst[v15] = 0;
    if (a3)
    {
      if (v15 > a5)
      {
        __dst[a5] = 0;
      }

      if (__dst[0] < 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      *a4 = v16;
      cstdlib_memmove((a4 + 4), __dst, 1uLL);
      *(a4 + 5) = 0;
      *(a4 + 70) = 1;
      v21 = 256;
      if (sysdct_char_LookUp_Thai(a1, __dst, 1, (a4 + 76), &v21, 1, a6, a7) || (v17 = v21) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(a4 + 76 + v21) = 0;
        *(a4 + 334) = v17;
      }
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = v18;
        v20 = a2[v18++];
      }

      while (v20 == 32);
      cstdlib_memmove((a4 + 4), a2, v19);
      return 0;
    }
  }

  return result;
}

uint64_t wordm_mapt2s(void *a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = (a2 + v6);
    v15 = 7549556;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v8 = utf8_determineUTF8CharLength(*v7);
    cstdlib_memmove(__dst, v7, v8);
    __dst[v8] = 0;
    v9 = (*(*a1 + 96))(a1[1], a1[2], &v15, __dst, &v13, &v12, &v14);
    if ((v9 & 0x80000000) == 0)
    {
      if (v12)
      {
        v10 = utf8_determineUTF8CharLength(**v13);
        if (v10 == v8)
        {
          cstdlib_memmove((a2 + v6), *v13, v10);
        }
      }
    }

    v6 += utf8_determineUTF8CharLength(*v7);
  }

  while (v6 < a3 && (v9 & 0x80000000) == 0);
  return v9;
}

uint64_t GetInDomainSegmentation(uint64_t a1, void *a2, uint64_t a3, __int16 a4, __int16 a5, __int16 a6, char *__s, uint64_t *a8, unsigned __int16 *a9, __int16 a10, int a11, char a12)
{
  v36 = *MEMORY[0x277D85DE8];
  v18 = 2350915594;
  v19 = *a8;
  v20 = *(a1 + 8);
  v21 = cstdlib_strlen(__s);
  v22 = heap_Calloc(v20, 1, (v21 + 1));
  if (!v22)
  {
    return v18;
  }

  v23 = v22;
  cstdlib_strcpy(v22, __s);
  v24 = a5 - a4;
  v25 = a6 - a4;
  if (v24 >= (a6 - a4))
  {
    v26 = 0;
    goto LABEL_24;
  }

  v26 = 0;
  while (1)
  {
    v35 = 0u;
    memset(__b, 0, sizeof(__b));
    cstdlib_memset(__b, 0, 0x150uLL);
    if (a11 == 1)
    {
      v26 = wordm_sysdct_Lookup_Thai(a2, (a3 + v24), __b, 0x16u, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(__b[0]) != 5 && LODWORD(__b[0]) != 2)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (a11)
      {
        goto LABEL_18;
      }

      v26 = wordm_sysdct_Lookup_Chinese(a2, (a3 + v24), (a10 - v24), __b, a12, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(__b[0]) > 5 || ((1 << SLOBYTE(__b[0])) & 0x34) == 0)
      {
        goto LABEL_18;
      }
    }

    if (*a9)
    {
      v27 = heap_Realloc(*(a1 + 8), v19, 340 * *a9 + 341);
      if (!v27)
      {
        break;
      }

      v19 = v27;
      goto LABEL_17;
    }

    v19 = heap_Calloc(*(a1 + 8), 1, 341);
    if (!v19)
    {
      break;
    }

LABEL_17:
    *(v19 + 340 * *a9) = v24;
    cstdlib_strcpy((v19 + 340 * *a9 + 8), __b + 4);
    *(v19 + 340 * *a9 + 74) = WORD3(__b[4]);
    cstdlib_strcpy((v19 + 340 * *a9 + 80), &__b[4] + 12);
    *(v19 + 340 * *a9 + 338) = HIWORD(v35);
    v28 = *a9;
    v29 = v19 + 340 * *a9;
    v30 = DWORD2(__b[4]);
    *(v29 + 4) = __b[0];
    *(v29 + 76) = v30;
    *a9 = v28 + 1;
LABEL_18:
    if (WORD3(__b[4]))
    {
      v24 += WORD3(__b[4]);
    }

    else
    {
      v24 = v25;
    }

    if (v24 >= v25)
    {
      goto LABEL_24;
    }
  }

  v26 = 2350915594;
LABEL_24:
  heap_Free(*(a1 + 8), v23);
  *a8 = v19;
  return v26;
}

uint64_t getDomainSegmentations(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, unsigned __int16 *a8, int a9, char a10)
{
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  MarkerArgStr = marker_getMarkerArgStr(1u);
  v19 = bed_GetpElem(a5, 0, &v37);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v19 = bed_GetpElem(a5, 0xFFFFu, &v38);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v35 = a3;
  v36 = a8;
  v20 = *(v38 + 32);
  v21 = *(v37 + 32);
  v19 = bed_GetpElem(a5, 0, &v40);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v22 = bed_GetcElem(a5, &v39);
  if ((v22 & 0x80000000) == 0)
  {
    LOWORD(v20) = v20 - v21;
    v34 = a2;
    v33 = v20;
    if (v39)
    {
      v23 = 0;
      v24 = (v40 + 40);
      while (*(v24 - 2) <= *(v38 + 32))
      {
        if (*(v24 - 5) == 21)
        {
          MarkerArgStr = (*(a6 + 8) + *v24);
        }

        ++v23;
        v24 += 16;
        if (v39 == v23)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v23) = v23;
    }

    else
    {
      LODWORD(v23) = 0;
    }

    if (v23 >= v39)
    {
LABEL_24:
      v25 = a4 + v20;
    }

    else
    {
      v32 = a7;
      v25 = a4 + v20;
      v26 = v23 << 6;
      v27 = v23;
      do
      {
        if (v25 < (*(v40 + v26 + 32) - *(v37 + 32)))
        {
          break;
        }

        if (*(v40 + v26 + 20) == 21 && cstdlib_strcmp(MarkerArgStr, (*(a6 + 8) + *(v40 + v26 + 40))))
        {
          v28 = *(v40 + v26 + 40);
          v29 = marker_getMarkerArgStr(1u);
          if (cstdlib_strcmp(MarkerArgStr, v29))
          {
            v22 = GetInDomainSegmentation(a1, v34, v35, v33, v20, *(v40 + v26 + 32) - *(v37 + 32), MarkerArgStr, v32, v36, a4, a9, a10);
            if ((v22 & 0x80000000) != 0)
            {
              return v22;
            }
          }

          MarkerArgStr = (*(a6 + 8) + v28);
          v20 = *(v40 + v26 + 32) - *(v37 + 32);
        }

        ++v27;
        v26 += 64;
      }

      while (v27 < v39);
      a7 = v32;
    }

    if (v25 >= v20)
    {
      v30 = marker_getMarkerArgStr(1u);
      if (cstdlib_strcmp(MarkerArgStr, v30))
      {
        return GetInDomainSegmentation(a1, v34, v35, v33, v20, v25, MarkerArgStr, a7, v36, a4, a9, a10);
      }
    }
  }

  return v22;
}

uint64_t DoTHTLatin(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4, char **a5)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v12, 0, sizeof(v12));
  v7 = wordm_sysdct_CharLookup_Thai(a2, a3, a4, v12, 0x16u, 0, "normal");
  if (!v7)
  {
    v8 = *(a1 + 8);
    v9 = cstdlib_strlen(&v12[4] + 12);
    v10 = heap_Alloc(v8, (v9 + 3));
    *a5 = v10;
    if (v10)
    {
      cstdlib_strcpy(v10, &v12[4] + 12);
    }
  }

  return v7;
}

uint64_t DoMaxWords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v20 = a1;
  v21 = a14;
  v100 = *MEMORY[0x277D85DE8];
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v93 = 0;
  *(a14 + 8) = 0;
  *(v21 + 12) = 0x100000001;
  LODWORD(v22) = log_GetLogLevel(*(a1 + 32));
  v23 = v22 > 4;
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v96);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  v87 = a15;
  v25 = *(v96 + 36);
  if (a5 && a5 != v25)
  {
    *(v21 + 16) = 0;
  }

  v26 = a16;
  v27 = *(v21 + 16) ? "" : "- aborting alignment";
  log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a5, v25, v27);
  UTOITrace(v23, v20, a6, a7, "START of normalization");
  if (v87 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v20, a3, a4, a5, a7, a10, &v94, &v93, 0, v26);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  if (a5)
  {
    v77 = v22;
    v80 = v22 > 4;
    v78 = a6;
    v79 = a7;
    v28 = 0;
    LOWORD(v22) = 0;
    v85 = 0;
    v29 = 0;
    v88 = a12;
    v81 = a11;
    v86 = a13;
    v82 = v20;
    v83 = v21;
    v30 = v26;
    do
    {
      v99 = 0u;
      memset(__dst, 0, sizeof(__dst));
      if (v87 == 1 && v93 > v22)
      {
        v31 = 0;
        v22 = v22;
        v32 = (v94 + 340 * v22);
        while (1)
        {
          v33 = *v32;
          if (v33 > v29)
          {
            break;
          }

          v32 += 170;
          if (v33 == v29)
          {
            v31 = v22;
          }

          ++v22;
          if (v33 == v29 || v22 >= v93)
          {
            if (v33 != v29)
            {
              break;
            }

            cstdlib_memcpy(__dst, (v94 + 340 * v31 + 4), 0x150uLL);
            goto LABEL_26;
          }
        }
      }

      v35 = wordm_sysdct_Lookup_Chinese(a3, &a4[v29], (a5 - v29), __dst, v30, "normal");
      if ((v35 & 0x80000000) != 0)
      {
LABEL_82:
        v39 = 0;
LABEL_83:
        v73 = v35;
        goto LABEL_98;
      }

LABEL_26:
      if (LODWORD(__dst[0]) <= 5 && ((1 << SLOBYTE(__dst[0])) & 0x34) != 0)
      {
        if (v86)
        {
          v36 = cstdlib_strlen(szWORD_BEG_1);
          v35 = bed_Insert(a8, szWORD_BEG_1, v36);
          if ((v35 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          *v88 += cstdlib_strlen(szWORD_BEG_1);
        }

        v37 = cstdlib_strlen(&__dst[4] + 12) + 1;
        v38 = heap_Alloc(*(v20 + 8), v37);
        if (!v38)
        {
          return 2350915594;
        }

        v39 = v38;
        cstdlib_memset(v38, 0, v37);
        cstdlib_strcpy(v39, &__dst[4] + 12);
        v40 = cstdlib_strlen(&__dst[4] + 12);
        v35 = bed_Insert(a8, v39, v40);
        if ((v35 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        *v88 += cstdlib_strlen(&__dst[4] + 12);
        heap_Free(*(v20 + 8), v39);
        if (v86)
        {
          v41 = cstdlib_strlen(szWORD_END_1);
          v35 = bed_Insert(a8, szWORD_END_1, v41);
          if ((v35 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          *v88 += cstdlib_strlen(szWORD_END_1);
        }

        v35 = bed_GetcElem(a8, &v97);
        if ((v35 & 0x80000000) != 0)
        {
          goto LABEL_82;
        }

        v42 = *(a3 + 32);
        v43 = a10;
        v44 = &__dst[4] + 6;
        if (v42)
        {
          v44 = &v99 + 14;
        }

        if (*(a10 + 18) < (*(a10 + 16) + 4 * *v44 + 5))
        {
          v35 = datac_RequestBlock(a9, v81, (*(a10 + 16) + 4 * *v44 + 5), &a10);
          if ((v35 & 0x80000000) != 0)
          {
            goto LABEL_82;
          }

          v43 = a10;
          v42 = *(a3 + 32);
        }

        v45 = *(v43 + 8);
        v46 = *(v43 + 16);
        v47 = *(v43 + 2);
        v48 = v45 + v47 * v46;
        v92 = 0;
        __src = 0;
        if (v42)
        {
          v49 = HIWORD(v99);
          v50 = (v45 + v47 * v46);
          if (HIWORD(v99))
          {
            NextUtf8Offset = 0;
            v50 = (v45 + v47 * v46);
            do
            {
              if (*(&__dst[4] + NextUtf8Offset + 12) == 92)
              {
                break;
              }

              WCharFromUtf8 = utf8_GetWCharFromUtf8(&__dst[4] + 12, NextUtf8Offset, v49);
              LH_itoa(WCharFromUtf8, &__src, 0x10u);
              cstdlib_memcpy(v50, &__src + 2, 2uLL);
              cstdlib_memcpy(v50 + 2, &__src, 2uLL);
              v50 += 4;
              NextUtf8Offset = utf8_GetNextUtf8Offset(&__dst[4] + 12, NextUtf8Offset);
              v49 = HIWORD(v99);
            }

            while (HIWORD(v99) > NextUtf8Offset);
          }
        }

        else
        {
          v50 = (v45 + v47 * v46);
          if (WORD3(__dst[4]))
          {
            v54 = 0;
            v50 = (v45 + v47 * v46);
            do
            {
              v55 = v54 + v28;
              if (v54 + v28 >= a5)
              {
                break;
              }

              v56 = utf8_GetWCharFromUtf8(a4, v54 + v28, a5);
              LH_itoa(v56, &__src, 0x10u);
              cstdlib_memcpy(v50, &__src + 2, 2uLL);
              cstdlib_memcpy(v50 + 2, &__src, 2uLL);
              v50 += 4;
              v54 = (utf8_GetNextUtf8Offset(a4, v55) - v28);
            }

            while (v54 < WORD3(__dst[4]));
          }
        }

        v53 = 0;
        *v50 = 0;
        *(a10 + 16) += v50 - v48 + 1;
        v20 = v82;
        v21 = v83;
        v30 = v26;
      }

      else
      {
        log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v28, WORD3(__dst[4]));
        v53 = 1;
      }

      if (*(v21 + 16) == 1)
      {
        v57 = *(v21 + 8);
        v58 = *v21;
        if (v57 >= *(v21 + 10))
        {
          v59 = heap_Realloc(*(v20 + 8), v58, 12 * *(v21 + 10) + 121);
          if (!v59)
          {
            v39 = 0;
            v73 = 2350915594;
            goto LABEL_98;
          }

          v58 = v59;
          *v21 = v59;
          *(v21 + 10) += 10;
          v57 = *(v21 + 8);
        }

        v60 = v57;
        v61 = v58 + 12 * v57;
        *v61 = v85;
        *(v61 + 2) = 0;
        v62 = WORD3(__dst[4]);
        if (v53)
        {
          *(v58 + 12 * v60 + 4) = 1;
        }

        v85 += v62;
        *(v21 + 8) = v60 + 1;
      }

      else
      {
        v62 = WORD3(__dst[4]);
      }

      if (v62)
      {
        v29 += v62;
      }

      else
      {
        v29 = a5;
      }

      v28 = v29;
    }

    while (v29 < a5);
    v63 = bed_GetcElem(a8, &v97);
    if ((v63 & 0x80000000) != 0)
    {
      goto LABEL_85;
    }

    if (v97)
    {
      v23 = v80;
      UTOISubTrace(v80, v20, a8, "replacement string");
      a6 = v78;
      a7 = v79;
      if (*(v21 + 16) != 1)
      {
        goto LABEL_95;
      }

      v63 = bed_GetpElem(a8, 0, &v95);
      if ((v63 & 0x80000000) == 0)
      {
        if (v97)
        {
          v64 = 0;
          v65 = 0;
          v66 = 1;
          v67 = v95;
          do
          {
            if (*(v67 + v64) == 16)
            {
              v68 = *(v21 + 8);
              if (v65 >= v68)
              {
LABEL_88:
                log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v66);
                v72 = 0;
                goto LABEL_89;
              }

              v69 = v65;
              v70 = (*v21 + 12 * v65 + 4);
              while (1)
              {
                v71 = *v70;
                v70 += 3;
                if (v71 != 1)
                {
                  break;
                }

                if (v68 == ++v69)
                {
                  goto LABEL_88;
                }
              }

              *(*v21 + 12 * v69 + 8) = v64;
              ++v66;
              v65 = v69 + 1;
            }

            ++v64;
          }

          while (v64 < v97);
        }

        v72 = 1;
LABEL_89:
        if (v77 >= 5 && *(v83 + 8))
        {
          v74 = 0;
          v75 = 0;
          do
          {
            log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v75++, *(*v83 + v74), *(*v83 + v74 + 8), *(*v83 + v74 + 4));
            v74 += 12;
          }

          while (v75 < *(v83 + 8));
        }

        v21 = v83;
        v23 = v80;
        if (v72)
        {
          *(v83 + 12) = 0;
        }

        goto LABEL_95;
      }

LABEL_85:
      v73 = v63;
      goto LABEL_97;
    }

    log_OutText(*(v20 + 32), a2, 5, 0, "[UTOI] deleting region, no replacement text found");
    a6 = v78;
    a7 = v79;
    v23 = v80;
  }

LABEL_95:
  v73 = utoin_IncrReplaceCurrentRegion(a6, a7, a8, a5, v21);
  if ((v73 & 0x80000000) == 0)
  {
    UTOITrace(v23, v20, a6, a7, "END of normalization");
  }

LABEL_97:
  v39 = 0;
LABEL_98:
  if (v93)
  {
    heap_Free(*(v20 + 8), v94);
    v94 = 0;
  }

  if (v39)
  {
    heap_Free(*(v20 + 8), v39);
  }

  return v73;
}

uint64_t DoSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned __int8 a12)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return 0;
  }

  v17 = 0;
  for (i = 0; i < a5; v17 = i)
  {
    memset(v26, 0, sizeof(v26));
    v19 = wordm_sysdct_CharLookup_Chinese(a3, (a4 + i), (a5 - i), v26, a12, a11, "normal");
    if ((v19 & 0x80000000) != 0)
    {
      break;
    }

    if ((LODWORD(v26[0]) - 2) > 3)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v17, WORD3(v26[4]));
    }

    else
    {
      v20 = cstdlib_strlen(&v26[4] + 12) + 3;
      v21 = heap_Alloc(*(a1 + 8), v20);
      if (!v21)
      {
        return 2350915594;
      }

      v22 = v21;
      cstdlib_memset(v21, 0, v20);
      if (i)
      {
        cstdlib_strcpy(v22, &v26[4] + 12);
      }

      else
      {
        cstdlib_strcpy(v22, " ");
        cstdlib_strcat(v22, &v26[4] + 12);
      }

      cstdlib_strcat(v22, " ");
      v23 = cstdlib_strlen(v22);
      v19 = bed_Insert(a6, v22, v23);
      if ((v19 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v22);
        return v19;
      }

      heap_Free(*(a1 + 8), v22);
    }

    if (WORD3(v26[4]))
    {
      i += WORD3(v26[4]);
    }

    else
    {
      i = a5;
    }
  }

  return v19;
}

uint64_t DoLatin(uint64_t a1, void *a2, const char *a3, unsigned int a4, char **a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 256;
  cstdlib_memset(__b, 0, 0x101uLL);
  cstdlib_strncpy(__dst, a3, a4);
  __dst[a4] = 0;
  v10 = sysdct_char_LookUp_Chinese(a2, __dst, __b, &v15, 0, 0, "normal");
  if ((v10 & 0x80000000) == 0)
  {
    if (v15)
    {
      v11 = *(a1 + 8);
      v12 = cstdlib_strlen(__b);
      v13 = heap_Calloc(v11, 1, (v12 + 1));
      *a5 = v13;
      if (v13)
      {
        cstdlib_strcpy(v13, __b);
      }

      else
      {
        return 2350915594;
      }
    }

    else
    {
      *a5 = 0;
    }
  }

  return v10;
}

uint64_t wordm_sysdct_Lookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, const char *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    v27 = 0;
    cstdlib_memset(__b, 0, 0x101uLL);
    *a4 = 0;
    cstdlib_memset((a4 + 4), 0, 0x41uLL);
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    v13 = (a4 + 76);
    cstdlib_memset((a4 + 76), 0, 0x101uLL);
    *(a4 + 334) = 0;
    if (a3 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = a3;
    }

    if (a3 && a5)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v16 += utf8_determineUTF8CharLength(a2[v16]);
        ++v15;
      }

      while (v14 > v16 && v15 < a5);
      cstdlib_memmove(__dst, a2, v16);
      __dst[v16] = 0;
      if (v16)
      {
        *a4 = 2;
        v26 = 256;
        v18 = v16;
        while (1)
        {
          result = sysdct_word_LookUp_Chinese(a1, __dst, v18, __b, &v26, a6);
          v19 = v26;
          if (result || v26 != 256)
          {
            break;
          }

          v27 = (v18 - 1);
          utf8_GetPreviousValidUtf8Offset(__dst, &v27);
          v18 = v27;
          v19 = 256;
          v26 = 256;
          if ((v27 - 1) >= v16)
          {
            goto LABEL_28;
          }
        }

        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_28:
        if ((v18 - 1) < v16)
        {
          __b[v19] = 0;
          cstdlib_strcpy((a4 + 76), __b);
          *(a4 + 72) = 16;
          *(a4 + 334) = v26;
          __dst[v18] = 0;
          cstdlib_strcpy((a4 + 4), __dst);
          result = 0;
          *(a4 + 70) = v18;
          return result;
        }

        v23 = utf8_determineUTF8CharLength(*a2);
        cstdlib_memmove((a4 + 4), __dst, v23);
        *(a4 + 4 + v23) = 0;
        *(a4 + 70) = v23;
        v26 = 256;
        if (sysdct_char_LookUp_Chinese(a1, __dst, (a4 + 76), &v26, 0, 0, a6) || (v24 = v26, v13[v26] = 0, *(a4 + 334) = v24, !v24))
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        if (*v13 == 35 && *(a4 + 77))
        {
          v25 = cstdlib_atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v25;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
          return result;
        }

        return 0;
      }
    }

    else
    {
      cstdlib_memmove(__dst, a2, 0);
      __dst[0] = 0;
    }

    v20 = 0;
    do
    {
      v21 = v20;
      v22 = a2[v20++];
    }

    while (v22 == 32);
    cstdlib_memmove((a4 + 4), a2, v21);
    return 0;
  }

  return result;
}

uint64_t wparserDctMaxWords_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplMaxWords;
  return result;
}

uint64_t wparser_impl_maxwords_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  MaxWordLen = 2350915591;
  v12 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v12);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v12 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin");
      v10 = heap_Calloc(*(v12 + 8), 1, 56);
      if (v10)
      {
        *v10 = a3;
        v10[1] = a4;
        v10[2] = v12;
        v10[3] = "WPARSER_IMPL";
        *a5 = v10;
        *(a5 + 8) = 87652;
        MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(v10);
        log_OutText(*(v12 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_maxwords_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 16);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin");
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v3);
  }

  return v3;
}

uint64_t wparser_impl_maxwords_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : Begin");
  MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjReopen : End (%x)", MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_maxwords_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 7549556;
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v10, a1 + 44);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 32) = a3;
      *(a1 + 40) = a6;
    }
  }

  return result;
}

uint64_t wparser_impl_maxwords_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    a3[a5] = 0;
    if (*(a1 + 44) != 1 || (result = wordm_mapt2s(*(a1 + 32), a3, a5), (result & 0x80000000) == 0))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);

      return DoMaxWords(v21, v22, v23, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, v27, v28);
    }
  }

  return result;
}

uint64_t wparser_impl_maxwords_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_maxwords_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparser_impl_maxwords_loc_GetMaxWordLen(uint64_t a1)
{
  v6 = 0;
  Str = paramc_ParamGetStr(*(*(a1 + 16) + 40), "maxdctwordlen", &v6);
  if ((Str & 0x80000000) != 0)
  {
    v3 = 0;
    LOBYTE(v4) = 7;
    goto LABEL_5;
  }

  v3 = Str;
  v4 = cstdlib_atoi(v6);
  if ((v4 - 1) <= 0xFE)
  {
LABEL_5:
    *(a1 + 48) = v4;
    return v3;
  }

  return 15;
}

uint64_t DoDag(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v21 = a1;
  v22 = a14;
  v190 = *MEMORY[0x277D85DE8];
  v170 = 0;
  v168 = 0;
  v169 = 0;
  v167 = 0;
  v166 = 0;
  *(a14 + 8) = 0;
  *(v22 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(a1[4]);
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v169);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  __dst = a16;
  v25 = a15;
  v26 = *(v169 + 36);
  if (a5 && a5 != v26)
  {
    *(v22 + 16) = 0;
  }

  v27 = *(v22 + 16) ? "" : "- aborting alignment";
  log_OutText(v21[4], a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a5, v26, v27);
  UTOITrace(LogLevel > 4, v21, a6, a7, "START of normalization");
  if (v25 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v21, a3, a4, a5, a7, a10, &v167, &v166, 0, __dst);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v153 = LogLevel;
  v154 = LogLevel > 4;
  v28 = 2583699466;
  log_OutText(v21[4], a2, 5, 0, "[DAG]: Entering");
  v29 = heap_Calloc(v21[1], 1, 16);
  if (v29)
  {
    v30 = v29;
    v165 = a2;
    if (a5)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        ++v32;
        v31 = (utf8_determineUTF8CharLength(a4[v31]) + v31);
      }

      while (v31 < a5);
    }

    else
    {
      v32 = 0;
    }

    *(v30 + 8) = v32;
    *(v30 + 12) = 13285840;
    v33 = heap_Calloc(v21[1], v32 + 1, 24);
    *v30 = v33;
    if (!v33)
    {
      return 2583699466;
    }

    if (((v32 + 1) & 0xFFFE) != 0)
    {
      v34 = (v32 + 1);
    }

    else
    {
      v34 = 1;
    }

    bzero(v33, 24 * v34);
    v155 = a5;
    if (a5)
    {
      v148 = v22;
      v150 = a8;
      v144 = a6;
      v146 = a7;
      v35 = 0;
      v36 = 0;
      v37 = __dst;
      v161 = v21;
      do
      {
        v38 = a5;
        LOWORD(a5) = 0;
        v39 = 0;
        v40 = &a4[v36];
        v156 = v36;
        v41 = v38 - v36;
        v42 = (v38 - v36);
        while (a5 < v42)
        {
          LODWORD(a5) = utf8_determineUTF8CharLength(v40[a5]) + a5;
          if (v37 == ++v39)
          {
            v39 = v37;
            if (a5)
            {
              goto LABEL_28;
            }

            break;
          }
        }

        LOWORD(a5) = v41;
LABEL_28:
        v172 = 0;
        v189 = 0;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v183 = 0u;
        v184 = 0u;
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        *__s = 0u;
        v174 = 0u;
        v171 = 256;
        if (!a5 || v41 < a5)
        {
          goto LABEL_178;
        }

        v43 = 0;
        v44 = 1;
        v45 = a5;
        do
        {
          v46 = sysdct_word_LookUp_Chinese(a3, v40, v45, __s, &v171, "");
          if ((v46 & 0x80000000) != 0)
          {
            return v46;
          }

          if (v171 != 256)
          {
            v47 = cstdlib_strrchr(__s, 92);
            if (v47)
            {
              v44 = cstdlib_atoi(v47 + 1) + 1;
            }

            if (v39)
            {
              dag_insert_edge_0(v161, v165, v30, v35, v35 + v39, v44, 0);
              ++v43;
            }
          }

          v172 = (v45 - 1);
          utf8_GetPreviousValidUtf8Offset(v40, &v172);
          v171 = 256;
          if (v39)
          {
            --v39;
          }

          else
          {
            v39 = 0;
          }

          if (v41 < v172)
          {
            break;
          }

          v45 = v172;
        }

        while ((v172 - 1) < a5);
        v21 = v161;
        v37 = __dst;
        if (!v43)
        {
LABEL_178:
          v46 = sysdct_char_LookUp_Chinese(a3, v40, __s, &v171, 0, 0, "normal");
          if (!v46)
          {
            v48 = heap_Calloc(v21[1], 1, v171 + 1);
            if (!v48)
            {
              v46 = 2583699466;
              goto LABEL_152;
            }

            v49 = v48;
            v50 = v171;
            if (v171)
            {
              v51 = v171 - 1;
              if (v171 == 1)
              {
                v52 = 1;
              }

              else
              {
                while (__s[v51] == 92)
                {
                  v171 = --v50;
                  if (!--v51)
                  {
                    v50 = 1;
                    break;
                  }
                }

                v52 = v50;
              }
            }

            else
            {
              v52 = 0;
            }

            cstdlib_memcpy(v48, __s, v52);
            *(v49 + v171) = 0;
            dag_insert_edge_0(v21, v165, v30, v35, v35 + 1, 1, v49);
            v46 = 0;
          }
        }

        v53 = utf8_determineUTF8CharLength(*v40);
        LODWORD(a5) = v155;
        v36 = v156 + v53;
        ++v35;
      }

      while (v155 > (v156 + v53));
      a6 = v144;
      a7 = v146;
      v22 = v148;
      a8 = v150;
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_152:
      heap_Free(v21[1], v30);
      return v46;
    }

LABEL_56:
    log_OutText(v21[4], v165, 5, 0, "[DAG]: searching the heaviest edge from all possible paths");
    v54 = *v30;
    if (!*v30)
    {
      dag_free(v21, v30);
      log_OutText(v21[4], v165, 5, 0, "[DAG]: Failed search the path, some error");
      return 2583699462;
    }

    v149 = v22;
    v151 = a8;
    v145 = a6;
    v147 = a7;
    v55 = *(v30 + 8);
    if ((v55 & 0x80000000) == 0)
    {
      v56 = v55 + 1;
      v57 = (v54 + 16);
      do
      {
        *v57 = -2147483647;
        v57 += 3;
        --v56;
      }

      while (v56);
    }

    *(v54 + 16) = 0xFFFFFFFF00000000;
    log_OutText(v21[4], v165, 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight");
    if (v55 >= 1)
    {
      v58 = 0;
      v59 = *v30;
      do
      {
        for (i = *(v59 + 24 * v58); i; i = *i)
        {
          v61 = *(i + 3);
          v62 = *(i + 4) + *(v59 + 24 * v58 + 16);
          log_OutText(v21[4], v165, 5, 0, "<%d: %d>: %d, %d", v58, v61, *(i + 4), v62);
          v59 = *v30;
          v63 = *v30 + 24 * v61;
          v65 = *(v63 + 16);
          v64 = (v63 + 16);
          if (v62 > v65)
          {
            *v64 = v62;
            v66 = v59 + 24 * v61;
            *(v66 + 20) = v58;
            *(v66 + 8) = i[3];
          }
        }

        ++v58;
      }

      while (v58 != v55);
    }

    v67 = heap_Calloc(v21[1], 1, 24);
    if (!v67)
    {
      return 2583699466;
    }

    v68 = v67;
    v69 = heap_Calloc(v21[1], (v55 + 2), 4);
    *v68 = v69;
    v28 = 2583699466;
    if (v69)
    {
      v70 = heap_Calloc(v21[1], (v55 + 2), 8);
      *(v68 + 8) = v70;
      v71 = *v68;
      if (v70)
      {
        *(v68 + 16) = 0;
        *v71 = v55;
        v72 = v155;
        v73 = v165;
        if ((v55 & 0x80000000) == 0)
        {
          v74 = 0;
          do
          {
            ++v74;
            v75 = *v30 + 24 * v55;
            v76 = *(v75 + 8);
            LODWORD(v55) = *(v75 + 20);
            v71[v74] = v55;
            *(*(v68 + 8) + 8 * v74) = v76;
          }

          while ((v55 & 0x80000000) == 0);
          *(v68 + 16) = v74;
        }

        log_OutText(v21[4], v165, 5, 0, "[DAG]: Leaving");
        v77 = (*(v68 + 16) - 1);
        v78 = a4;
        v157 = heap_Calloc(v21[1], v77, 336);
        v152 = v77;
        if (v157)
        {
          if (v77)
          {
            v79 = 0;
            v80 = 0;
            v162 = v21;
            v142 = v68;
            do
            {
              v81 = v157 + 336 * v79;
              *v81 = 2;
              __dsta = (v81 + 4);
              cstdlib_memset((v81 + 4), 0, 0x41uLL);
              *(v81 + 70) = 0;
              *(v81 + 72) = 16;
              cstdlib_memset((v81 + 76), 0, 0x101uLL);
              *(v81 + 334) = 0;
              v82 = *(*v68 + 4 * (v77 - v79 - 1)) - *(*v68 + 4 * (v77 - v79));
              v83 = &v78[v80];
              v84 = cstdlib_strlen(v83);
              v85 = 0;
              v86 = 0;
              while (1)
              {
                v87 = v86;
                if (v86 >= v84)
                {
                  break;
                }

                v88 = utf8_determineUTF8CharLength(v83[v86]);
                v86 = v88 + v87;
                if (v82 == ++v85)
                {
                  v89 = v88 + v87;
                  if (v88 + v87)
                  {
                    goto LABEL_82;
                  }

                  break;
                }
              }

              v89 = v84;
LABEL_82:
              *(v81 + 70) = v89;
              cstdlib_memcpy(__dsta, v83, v89);
              *(__dsta + *(v81 + 70) + 1) = 0;
              v68 = v142;
              LODWORD(v77) = v152;
              v90 = *(*(v142 + 8) + 8 * (v152 - v79));
              if (v90)
              {
                cstdlib_strcat((v81 + 76), v90);
                *(v81 + 334) = cstdlib_strlen((v81 + 76)) + 1;
                v21 = v162;
                heap_Free(v162[1], *(*(v142 + 8) + 8 * (v152 - v79)));
              }

              else
              {
                cstdlib_strcpy((v81 + 76), __dsta);
                *(v81 + 334) = *(v81 + 70) + 1;
                v21 = v162;
              }

              v72 = v155;
              v73 = v165;
              v78 = a4;
              v80 += v89;
              ++v79;
            }

            while (v79 != v152);
          }

          v28 = 0;
        }

        heap_Free(v21[1], *v68);
        heap_Free(v21[1], *(v68 + 8));
        heap_Free(v21[1], v68);
        dag_free(v21, v30);
        if (!v157)
        {
          return v28;
        }

        if (v77)
        {
          v91 = 0;
          v92 = 0;
          v140 = 0;
          v93 = 0;
          __dstb = a12;
          v139 = a11;
          v28 = 2350915594;
          v143 = a13;
          do
          {
            v94 = v157 + 336 * v91;
            if (*v94 > 5u || ((1 << *v94) & 0x34) == 0)
            {
              log_OutText(v21[4], v73, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v92, *(v94 + 70));
              v140 = 1;
            }

            else
            {
              if (v143)
              {
                v96 = cstdlib_strlen(szWORD_BEG_2);
                v97 = bed_Insert(v151, szWORD_BEG_2, v96);
                if ((v97 & 0x80000000) != 0)
                {
                  goto LABEL_155;
                }

                *__dstb += cstdlib_strlen(szWORD_BEG_2);
              }

              v98 = cstdlib_strlen((v94 + 76)) + 1;
              v99 = heap_Alloc(v21[1], v98);
              if (!v99)
              {
                return 2350915594;
              }

              v100 = v99;
              cstdlib_memset(v99, 0, v98);
              cstdlib_strcpy(v100, (v94 + 76));
              v101 = cstdlib_strlen((v94 + 76));
              v97 = bed_Insert(v151, v100, v101);
              if ((v97 & 0x80000000) != 0)
              {
                goto LABEL_156;
              }

              *__dstb += cstdlib_strlen((v94 + 76));
              heap_Free(v21[1], v100);
              v28 = 2350915594;
              if (v143)
              {
                v102 = cstdlib_strlen(szWORD_END_2);
                v97 = bed_Insert(v151, szWORD_END_2, v102);
                if ((v97 & 0x80000000) != 0)
                {
                  goto LABEL_155;
                }

                *__dstb += cstdlib_strlen(szWORD_END_2);
              }

              v97 = bed_GetcElem(v151, &v170);
              if ((v97 & 0x80000000) != 0)
              {
LABEL_155:
                v100 = 0;
LABEL_156:
                v28 = v97;
                goto LABEL_170;
              }

              v103 = *(a3 + 32);
              v104 = a10;
              v105 = 334;
              if (!v103)
              {
                v105 = 70;
              }

              v141 = v93;
              if (*(a10 + 18) < (*(a10 + 16) + 4 * *(v94 + v105) + 5))
              {
                v97 = datac_RequestBlock(a9, v139, (*(a10 + 16) + 4 * *(v94 + v105) + 5), &a10);
                if ((v97 & 0x80000000) != 0)
                {
                  goto LABEL_155;
                }

                v104 = a10;
                v103 = *(a3 + 32);
              }

              v106 = *(v104 + 8);
              v107 = *(v104 + 16);
              v108 = *(v104 + 2);
              v109 = v106 + v108 * v107;
              __s[4] = 0;
              *__s = 0;
              if (v103)
              {
                v110 = *(v94 + 334);
                v111 = (v106 + v108 * v107);
                if (*(v94 + 334))
                {
                  NextUtf8Offset = 0;
                  v111 = (v106 + v108 * v107);
                  do
                  {
                    if (!*(v94 + 76 + NextUtf8Offset))
                    {
                      break;
                    }

                    WCharFromUtf8 = utf8_GetWCharFromUtf8(v94 + 76, NextUtf8Offset, v110);
                    LH_itoa(WCharFromUtf8, __s, 0x10u);
                    cstdlib_memcpy(v111, &__s[2], 2uLL);
                    cstdlib_memcpy(v111 + 2, __s, 2uLL);
                    v111 += 4;
                    NextUtf8Offset = utf8_GetNextUtf8Offset((v94 + 76), NextUtf8Offset);
                    v110 = *(v94 + 334);
                  }

                  while (v110 > NextUtf8Offset);
                }
              }

              else
              {
                v111 = (v106 + v108 * v107);
                if (*(v94 + 70))
                {
                  v114 = 0;
                  v111 = (v106 + v108 * v107);
                  do
                  {
                    v115 = v114 + v92;
                    if (v114 + v92 >= v72)
                    {
                      break;
                    }

                    v116 = utf8_GetWCharFromUtf8(a4, v114 + v92, v72);
                    LH_itoa(v116, __s, 0x10u);
                    cstdlib_memcpy(v111, &__s[2], 2uLL);
                    cstdlib_memcpy(v111 + 2, __s, 2uLL);
                    v111 += 4;
                    v28 = 2350915594;
                    v114 = (utf8_GetNextUtf8Offset(a4, v115) - v92);
                  }

                  while (v114 < *(v94 + 70));
                }
              }

              *v111 = 0;
              *(a10 + 16) += v111 - v109 + 1;
              v73 = v165;
              v93 = v141;
            }

            if (*(v149 + 16) == 1)
            {
              v117 = *(v149 + 8);
              v118 = *v149;
              if (v117 >= *(v149 + 10))
              {
                v119 = heap_Realloc(v21[1], v118, 12 * *(v149 + 10) + 121);
                if (!v119)
                {
                  goto LABEL_169;
                }

                v118 = v119;
                *v149 = v119;
                *(v149 + 10) += 10;
                v117 = *(v149 + 8);
              }

              v120 = v117;
              v121 = v118 + 12 * v117;
              *v121 = v93;
              *(v121 + 2) = 0;
              v122 = *(v94 + 70);
              if (v140 == 1)
              {
                *(v118 + 12 * v120 + 4) = 1;
              }

              v93 += v122;
              *(v149 + 8) = v120 + 1;
            }

            v92 = ++v91;
          }

          while (v91 != v152);
        }

        if (!v72)
        {
          goto LABEL_167;
        }

        v123 = bed_GetcElem(v151, &v170);
        if ((v123 & 0x80000000) != 0)
        {
          goto LABEL_157;
        }

        if (v170)
        {
          UTOISubTrace(v154, v21, v151, "replacement string");
          if (*(v149 + 16) == 1)
          {
            v123 = bed_GetpElem(v151, 0, &v168);
            if ((v123 & 0x80000000) == 0)
            {
              if (v170)
              {
                v124 = 0;
                v125 = 0;
                v126 = 1;
                v127 = v168;
                do
                {
                  if (*(v127 + v124) == 16)
                  {
                    v128 = *(v149 + 8);
                    if (v125 >= v128)
                    {
LABEL_160:
                      log_OutText(v21[4], v73, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v126);
                      v132 = 0;
                      goto LABEL_161;
                    }

                    v129 = v125;
                    v130 = (*v149 + 12 * v125 + 4);
                    while (1)
                    {
                      v131 = *v130;
                      v130 += 3;
                      if (v131 != 1)
                      {
                        break;
                      }

                      if (v128 == ++v129)
                      {
                        goto LABEL_160;
                      }
                    }

                    *(*v149 + 12 * v129 + 8) = v124;
                    ++v126;
                    v125 = v129 + 1;
                  }

                  ++v124;
                }

                while (v124 < v170);
              }

              v132 = 1;
LABEL_161:
              if (v153 >= 5 && *(v149 + 8))
              {
                v137 = 0;
                v138 = 0;
                do
                {
                  log_OutText(v21[4], v165, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v138++, *(*v149 + v137), *(*v149 + v137 + 8), *(*v149 + v137 + 4));
                  v137 += 12;
                }

                while (v138 < *(v149 + 8));
              }

              if (v132)
              {
                *(v149 + 12) = 0;
              }

              goto LABEL_167;
            }

LABEL_157:
            v28 = v123;
            goto LABEL_169;
          }
        }

        else
        {
          log_OutText(v21[4], v73, 5, 0, "[UTOI] deleting region, no replacement text found");
        }

LABEL_167:
        v28 = utoin_IncrReplaceCurrentRegion(v145, v147, v151, v155, v149);
        if ((v28 & 0x80000000) == 0)
        {
          UTOITrace(v154, v21, v145, v147, "END of normalization");
        }

LABEL_169:
        v100 = 0;
LABEL_170:
        if (v166)
        {
          heap_Free(v21[1], v167);
          v167 = 0;
        }

        if (v100)
        {
          heap_Free(v21[1], v100);
        }

        v134 = v21[1];
        v135 = v157;
        goto LABEL_175;
      }

      if (v71)
      {
        heap_Free(v21[1], v71);
        *v68 = 0;
      }
    }

    v133 = *(v68 + 8);
    if (v133)
    {
      heap_Free(v21[1], v133);
      *(v68 + 8) = 0;
    }

    v134 = v21[1];
    v135 = v68;
LABEL_175:
    heap_Free(v134, v135);
  }

  return v28;
}

void *dag_free(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (v4)
    {
      v5 = *(a2 + 8);
      v6 = (v5 + 1);
      if (v5 != -1)
      {
        v7 = 0;
        do
        {
          v8 = *(v4 + 24 * v7);
          if (v8)
          {
            do
            {
              v9 = *v8;
              heap_Free(v3[1], v8);
              v8 = v9;
            }

            while (v9);
            v4 = *a2;
          }

          *(v4 + 24 * v7++) = 0;
        }

        while (v7 != v6);
      }
    }

    heap_Free(v3[1], v4);
    v10 = v3[1];

    return heap_Free(v10, a2);
  }

  return result;
}

uint64_t dag_insert_edge_0(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  result = heap_Calloc(*(a1 + 8), 1, 32);
  if (result)
  {
    v15 = result;
    *(result + 8) = a4;
    *(result + 12) = a5;
    *(result + 24) = a7;
    v16 = uint32_log2(a6);
    v17 = uint32_log2(*(a3 + 3));
    *(v15 + 16) = v16 - v17;
    v18 = *a3;
    v19 = 24 * a4;
    *v15 = *(*a3 + v19);
    *(v18 + v19) = v15;
    return log_OutText(*(a1 + 32), a2, 5, 0, "[DAG]: insert edge (vertex, Chinese Character Positions and weight): %d %d %d %d", a4, *(v15 + 8), *(v15 + 12), v16 - v17);
  }

  return result;
}

uint64_t wparserDag_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDag;
  return result;
}

uint64_t wparser_impl_dag_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  MaxWordLen = 2350915591;
  v13 = 0;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v13);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v13 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjOpen: Begin");
      v10 = heap_Calloc(*(v13 + 8), 1, 56);
      if (v10)
      {
        v11 = v10;
        *v10 = a3;
        v10[1] = a4;
        v10[2] = v13;
        v10[3] = "WPARSER_IMPL";
        MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(v10);
        *a5 = v11;
        *(a5 + 8) = 87652;
        log_OutText(*(v13 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjOpen: End (%x)", MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_dag_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 16);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjClose : Begin");
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjClose : End (%x)", v3);
  }

  return v3;
}

uint64_t wparser_impl_dag_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjReopen : Begin");
  MaxWordLen = wparser_impl_maxwords_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL DAG ObjReopen : End (%x)", MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_dag_Init(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 7549556;
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    result = (*(*a3 + 72))(a3[1], a3[2], &v10, a1 + 44);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 32) = a3;
      *(a1 + 40) = a6;
    }
  }

  return result;
}

uint64_t wparser_impl_dag_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    a3[a5] = 0;
    if (*(a1 + 44) != 1 || (result = wordm_mapt2s(*(a1 + 32), a3, a5), (result & 0x80000000) == 0))
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      v28 = *(a1 + 48);
      v27 = *(a1 + 40);

      return DoDag(v21, v22, v23, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15, v27, v28);
    }
  }

  return result;
}

uint64_t wparser_impl_dag_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_dag_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 32);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparserDctPlusRules_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplDctPlusRules;
  return result;
}

uint64_t wparser_impl_plusrules_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  if (!a5)
  {
    return 2350915591;
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  inited = InitRsrcFunction(a3, a4, &v12);
  if ((inited & 0x80000000) == 0)
  {
    log_OutText(*(v12 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: Begin");
    v9 = heap_Calloc(*(v12 + 8), 1, 88);
    if (v9)
    {
      *v9 = a3;
      v9[1] = a4;
      v10 = v12;
      v9[2] = v12;
      v9[3] = 0;
      v9[4] = "WPARSER_IMPL";
      *a5 = v9;
      *(a5 + 8) = 87652;
      log_OutText(*(v10 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjOpen: End (%x)", inited);
    }

    else
    {
      return 2350915594;
    }
  }

  return inited;
}

uint64_t wparser_impl_plusrules_ObjClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 16);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin");
    heap_Free(*(v4 + 8), a1);
    log_OutText(*(v4 + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v3);
  }

  return v3;
}

uint64_t wparser_impl_plusrules_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) == 0)
  {
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : Begin");
    log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL ObjClose : End (%x)", v3);
  }

  return v3;
}

uint64_t wparser_impl_plusrules_Init(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, int a6, _BYTE *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a1 + 40) = a3;
  if (cstdlib_strcmp(a5, "win874"))
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1802, "%s%s", a5, "not implemented in plusrules implementation : ");
    return 2350915591;
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xcode_Utf16leToWin874;
    *(a1 + 56) = 0;
    if (*a7 && (v14 = (*(**(a1 + 40) + 64))(*(*(a1 + 40) + 8), *(*(a1 + 40) + 16), a7, a1 + 64), (v14 & 0x80000000) != 0))
    {
      v13 = v14;
      log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1819, 0);
    }

    else
    {
      *(a1 + 48) = 0;
      v13 = o2t_ObjOpen(*a1, *(a1 + 8), (a1 + 48));
      if ((v13 & 0x80000000) != 0)
      {
        log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 52002, "%s%s");
      }

      else
      {
        *(a1 + 80) = a6;
      }
    }
  }

  return v13;
}

uint64_t wparser_impl_plusrules_Normalize(uint64_t a1, int a2, const char *a3, unsigned int a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
{
  v31[0] = a5;
  v30 = 0;
  v21 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v21 & 0x80000000) != 0)
  {
    return v21;
  }

  v22 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", a3);
  v23 = Utf8_Utf8NbrOfSymbols(a3);
  v24 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v23 + 1));
  if (v24)
  {
    v25 = v24;
    v26 = utf8_Utf8ToUtf16(a3, a4, 0, v24, 2 * v23, &v30, 0);
    if ((v26 & 0x80000000) != 0)
    {
      v28 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v25);
      v27 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v30 + 1));
      if (!v27)
      {
        return v22;
      }

      v28 = v27;
      v26 = (*(a1 + 72))(*(a1 + 56), v25, v30, v27, v31, *(a1 + 64));
      if ((v26 & 0x80000000) == 0)
      {
        v28[v31[0]] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v28);
        v26 = DoDctPlusRules(*(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 48), v28, v31[0], a6, a7, a8, a9, a10, a11, a12, a13, a15, *(a1 + 80), a3, v25);
      }
    }

    v22 = v26;
    heap_Free(*(*(a1 + 16) + 8), v25);
    if (v28)
    {
      heap_Free(*(*(a1 + 16) + 8), v28);
    }
  }

  return v22;
}

uint64_t wparser_impl_plusrules_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, int a11)
{
  v28 = a5;
  v27 = 0;
  v17 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  v18 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", a3);
  v19 = Utf8_Utf8NbrOfSymbols(a3);
  v20 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v19 + 1));
  if (v20)
  {
    v21 = v20;
    v22 = utf8_Utf8ToUtf16(a3, a4, 0, v20, 2 * v19, &v27, 0);
    if ((v22 & 0x80000000) != 0)
    {
      v24 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v21);
      v23 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v27 + 1));
      if (!v23)
      {
        return v18;
      }

      v24 = v23;
      v22 = (*(a1 + 72))(*(a1 + 56), v21, v27, v23, &v28, *(a1 + 64));
      if ((v22 & 0x80000000) == 0)
      {
        v24[v28] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v24);
        LOWORD(v26) = a9;
        v22 = DoDctPlusRulesSpell(*(a1 + 16), *(a1 + 32), *(a1 + 40), v24, v28, a6, a7, a8, v26, a10, a11);
      }
    }

    v18 = v22;
    heap_Free(*(*(a1 + 16) + 8), v21);
    if (v24)
    {
      heap_Free(*(*(a1 + 16) + 8), v24);
    }
  }

  return v18;
}

uint64_t wparser_impl_plusrules_Latin(uint64_t a1, int a2, const char *a3, unsigned int a4, char **a5)
{
  v19 = a4;
  v18 = 0;
  v9 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = 2350915594;
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF8: %s", a3);
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * a4 + 2);
  if (v11)
  {
    v12 = v11;
    v13 = utf8_Utf8ToUtf16(a3, a4, 0, v11, 2 * a4, &v18, 0);
    if ((v13 & 0x80000000) != 0)
    {
      v15 = 0;
    }

    else
    {
      log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL UTF16: %s", v12);
      v14 = heap_Calloc(*(*(a1 + 16) + 8), 1, 2 * (v18 + 1));
      if (!v14)
      {
        return v10;
      }

      v15 = v14;
      v13 = (*(a1 + 72))(*(a1 + 56), v12, v18, v14, &v19, *(a1 + 64));
      if ((v13 & 0x80000000) == 0)
      {
        v15[v19] = 0;
        log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL", 4, 0, "WPARSER_IMPL WIN874: %s", v15);
        v10 = DoTHTLatin(*(a1 + 16), *(a1 + 40), v15, v19, a5);
        if (a5)
        {
          v16 = *a3;
          if ((v16 & 0x80000000) == 0)
          {
            **a5 = v16;
          }
        }

        goto LABEL_12;
      }
    }

    v10 = v13;
LABEL_12:
    heap_Free(*(*(a1 + 16) + 8), v12);
    if (v15)
    {
      heap_Free(*(*(a1 + 16) + 8), v15);
    }
  }

  return v10;
}

uint64_t wparser_impl_plusrules_End(uint64_t a1, int a2)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    v5 = *(a1 + 48);
    if (!v5 || (result = o2t_ObjClose(v5), (result & 0x80000000) == 0))
    {

      return safeh_HandleCheck(a1, a2, 87652, 88);
    }
  }

  return result;
}

uint64_t wordm_sysdct_Lookup_Thai(void *a1, const char *a2, uint64_t a3, unsigned int a4, const char *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = 0;
  result = 2370838535;
  if (a1 && a2 && a3)
  {
    *a3 = 0;
    cstdlib_memset((a3 + 4), 0, 0x41uLL);
    *(a3 + 70) = 0;
    *(a3 + 72) = 0;
    cstdlib_memset((a3 + 76), 0, 0x101uLL);
    *(a3 + 334) = 0;
    v11 = cstdlib_strlen(a2);
    v12 = v11;
    if ((v11 & 0xFFC0) != 0)
    {
      v13 = 64;
    }

    else
    {
      v13 = v11;
    }

    cstdlib_memmove(__dst, a2, v13);
    __dst[v13] = 0;
    if (v12)
    {
      *a3 = 2;
      if (v13 <= a4)
      {
        LOWORD(a4) = v13;
      }

      if (a4)
      {
        LOWORD(v14) = 0;
        v15 = a4;
        do
        {
          if ((__dst[v15] + 49) >= 0xCu)
          {
            v16 = 0;
            v17 = __dst[v15];
            if ((v17 - 231) >= 7 && v17 != 229)
            {
              v16 = 0;
              v20 = __dst[v15 - 1];
              if ((v20 - 224) >= 5 && v20 != 230)
              {
                v25 = 256;
                result = sysdct_word_LookUp_Thai(a1, __dst, v15, __src, &v25, a5);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                LOWORD(v14) = v25;
                v16 = v25 != 256;
              }
            }
          }

          else
          {
            v16 = 0;
          }

          v18 = v15 + v16;
          v15 = v15 + v16 - 1;
        }

        while ((v18 - 2) < a4 && !v16);
        v14 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      if ((v15 - 1) >= a4)
      {
        cstdlib_memmove((a3 + 4), __dst, 1uLL);
        result = 0;
        *(a3 + 5) = 0;
        *(a3 + 70) = 1;
        *a3 = 0;
      }

      else
      {
        __src[v14] = 0;
        cstdlib_strcpy((a3 + 76), __src);
        *(a3 + 72) = 16;
        *(a3 + 334) = v25;
        v24 = v15;
        if (__dst[v15] == 230)
        {
          cstdlib_strcat((a3 + 76), __src);
          *(a3 + 334) += v25;
          v24 = ++v15;
        }

        __dst[v24] = 0;
        cstdlib_strcpy((a3 + 4), __dst);
        result = 0;
        *(a3 + 70) = v15;
      }
    }

    else
    {
      v21 = 0;
      do
      {
        v22 = v21;
        v23 = a2[v21++];
      }

      while (v23 == 32);
      cstdlib_memmove((a3 + 4), a2, v22);
      return 0;
    }
  }

  return result;
}

uint64_t DoDctPlusRules(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, _WORD *a13, int a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18)
{
  v122 = *MEMORY[0x277D85DE8];
  v72 = -1;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  memset(__dst, 0, sizeof(__dst));
  memset(__b, 0, 512);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(v73, 0, sizeof(v73));
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  __b[32] = 0;
  cstdlib_memset(&__b[33], 0, 0x200uLL);
  __b[289] = 0;
  LOWORD(v74) = 0;
  BYTE2(v74) = 0;
  v102 = 0;
  *(a15 + 8) = 0;
  *(a15 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v60 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a8, 0xFFFFu, &v71);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  v25 = *(v71 + 36);
  if (!a6 && *(v71 + 36))
  {
    *(a15 + 16) = 0;
  }

  v26 = *(a15 + 16) ? "" : "- aborting alignment";
  log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a6, v25, v26);
  UTOITrace(v60, a1, a7, a8, "START of normalization");
  if (a16 == 1)
  {
    DomainSegmentations = getDomainSegmentations(a1, a3, a5, a6, a8, a11, &v68, &v67 + 1, 1, 0);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v64 = a2;
  v59 = a8;
  v72 = -1;
  v63 = a6;
  if (a6)
  {
    v27 = 0;
    LOWORD(v28) = 0;
    v29 = 0;
    v30 = 0;
    while (1)
    {
      if (a16 == 1 && HIWORD(v67) > v28)
      {
        v31 = 0;
        v28 = v28;
        v32 = (v68 + 340 * v28);
        while (1)
        {
          v33 = *v32;
          if (v33 > v30)
          {
            break;
          }

          v32 += 170;
          if (v33 == v30)
          {
            v31 = v28;
          }

          ++v28;
          if (v33 == v30 || v28 >= HIWORD(v67))
          {
            if (v33 != v30)
            {
              break;
            }

            cstdlib_memcpy(__dst, (v68 + 340 * v31 + 4), 0x150uLL);
            goto LABEL_26;
          }
        }
      }

      v35 = wordm_sysdct_Lookup_Thai(a3, (a5 + v30), __dst, 0x16u, "normal");
      if ((v35 & 0x80000000) != 0)
      {
        break;
      }

LABEL_26:
      if (__dst[0] == 5 || __dst[0] == 2)
      {
        v35 = handleWordMatch(a1, v64, a4, a5, v30, __dst, &v72, __b, v73, a9, a14, a13, a10, a11, a12, a17, a18, &v67, &v66);
        if ((v35 & 0x80000000) != 0)
        {
          break;
        }

        v35 = bed_GetcElem(a9, &v70);
        if ((v35 & 0x80000000) != 0)
        {
          break;
        }

        v37 = 0;
      }

      else
      {
        log_OutText(*(a1 + 32), v64, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v27, WORD3(v105));
        if (v72 == -1)
        {
          v72 = v30;
        }

        v37 = 1;
      }

      if (*(a15 + 16) == 1)
      {
        v38 = *(a15 + 8);
        v39 = *a15;
        if (v38 >= *(a15 + 10))
        {
          v40 = heap_Realloc(*(a1 + 8), v39, 12 * *(a15 + 10) + 121);
          if (!v40)
          {
            v45 = 2350915594;
            goto LABEL_67;
          }

          v39 = v40;
          *a15 = v40;
          *(a15 + 10) += 10;
          v38 = *(a15 + 8);
        }

        v41 = v38;
        v42 = v39 + 12 * v38;
        *v42 = v29;
        *(v42 + 2) = 0;
        v43 = WORD3(v105);
        if (v37)
        {
          *(v39 + 12 * v41 + 4) = 1;
        }

        v29 += 3 * v43;
        *(a15 + 8) = v41 + 1;
      }

      else
      {
        v43 = WORD3(v105);
      }

      v30 += v43;
      v27 = v30;
      v44 = a11;
      if (v30 >= v63)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    v30 = 0;
    v44 = a11;
LABEL_49:
    LOBYTE(__dst[1]) = 0;
    WORD3(v105) = 0;
    BYTE12(v105) = 0;
    HIWORD(v121) = 0;
    v35 = handleWordMatch(a1, v64, a4, a5, v30, __dst, &v72, __b, v73, a9, a14, a13, a10, v44, a12, a17, a18, &v67, &v66);
    if ((v35 & 0x80000000) == 0)
    {
      if (!v63)
      {
        goto LABEL_80;
      }

      v35 = bed_GetcElem(a9, &v70);
      if ((v35 & 0x80000000) == 0)
      {
        if (!v70)
        {
          log_OutText(*(a1 + 32), v64, 5, 0, "[UTOI] deleting region, no replacement text found");
          goto LABEL_80;
        }

        UTOISubTrace(v60, a1, a9, "replacement string");
        if (*(a15 + 16) != 1)
        {
LABEL_80:
          v45 = utoin_IncrReplaceCurrentRegion(a7, v59, a9, v63, a15);
          if ((v45 & 0x80000000) == 0)
          {
            UTOITrace(v60, a1, a7, v59, "END of normalization");
          }

          goto LABEL_67;
        }

        v35 = bed_GetpElem(a9, 0, &v69);
        if ((v35 & 0x80000000) == 0)
        {
          if (!v70)
          {
            v55 = 1;
            v50 = LogLevel;
            goto LABEL_74;
          }

          v46 = 0;
          v47 = 0;
          v48 = 1;
          v49 = v69;
          v50 = LogLevel;
          while (1)
          {
            if (*(v49 + v46) == 16)
            {
              v51 = *(a15 + 8);
              if (v47 >= v51)
              {
LABEL_72:
                log_OutText(*(a1 + 32), v64, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v48);
                v55 = 0;
LABEL_74:
                if (v50 >= 5 && *(a15 + 8))
                {
                  v57 = 0;
                  v58 = 0;
                  do
                  {
                    log_OutText(*(a1 + 32), v64, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v58++, *(*a15 + v57), *(*a15 + v57 + 8), *(*a15 + v57 + 4));
                    v57 += 12;
                  }

                  while (v58 < *(a15 + 8));
                }

                if (v55)
                {
                  *(a15 + 12) = 0;
                }

                goto LABEL_80;
              }

              v52 = v47;
              v53 = (*a15 + 12 * v47 + 4);
              while (1)
              {
                v54 = *v53;
                v53 += 3;
                if (v54 != 1)
                {
                  break;
                }

                if (v51 == ++v52)
                {
                  goto LABEL_72;
                }
              }

              *(*a15 + 12 * v52 + 8) = v46;
              ++v48;
              v47 = v52 + 1;
            }

            if (++v46 >= v70)
            {
              v55 = 1;
              goto LABEL_74;
            }
          }
        }
      }
    }
  }

  v45 = v35;
LABEL_67:
  if (HIWORD(v67))
  {
    heap_Free(*(a1 + 8), v68);
  }

  return v45;
}

uint64_t handleWordMatch(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, __int16 a5, unsigned __int16 *a6, _WORD *a7, uint64_t a8, char *__dst, uint64_t a10, int a11, _WORD *a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, unsigned __int16 *a18, unsigned __int16 *a19)
{
  v65 = *MEMORY[0x277D85DE8];
  HexArg = 2350915591;
  if (!a4 || !a6 || !a7 || !a8 || !__dst || !a10)
  {
    return HexArg;
  }

  v62 = 0;
  __n = 0;
  if (*a7 == -1)
  {
    v27 = 0;
    HexArg = 0;
  }

  else
  {
    cstdlib_memmove(__dst, a6 + 2, a6[35]);
    *(__dst + 32) = a6[35];
    cstdlib_memmove(__dst + 66, a6 + 38, a6[167]);
    *(__dst + 289) = a6[167];
    __n = 512;
    cstdlib_memset(__n_2, 0, 0x200uLL);
    HexArg = o2t_Transcribe(a3, (a4 + *a7), (a5 - *a7), a8, __dst, __n_2, &__n, &v62);
    if ((HexArg & 0x80000000) != 0)
    {
      return HexArg;
    }

    v27 = v62;
  }

  v29 = a18;
  v28 = a19;
  v30 = a16;
  v31 = a17;
  v32 = a15;
  v34 = a13;
  v33 = a14;
  v35 = a11;
  v36 = *(a8 + 578);
  if (v36 && (v27 & 1) == 0)
  {
    if (a11)
    {
      v37 = cstdlib_strlen(szWORD_BEG_3);
      v38 = bed_Insert(a10, szWORD_BEG_3, v37);
      if ((v38 & 0x80000000) != 0)
      {
        return v38;
      }

      *a12 += cstdlib_strlen(szWORD_BEG_3);
      v36 = *(a8 + 578);
    }

    v39 = v36 + 1;
    v40 = heap_Alloc(*(a1 + 8), (v36 + 1));
    if (!v40)
    {
      return 2350915594;
    }

    v41 = v40;
    cstdlib_memset(v40, 0, v39);
    cstdlib_strncpy(v41, (a8 + 66), *(a8 + 578));
    v41[*(a8 + 578)] = 0;
    v42 = bed_Insert(a10, v41, *(a8 + 578));
    if ((v42 & 0x80000000) != 0)
    {
LABEL_42:
      HexArg = v42;
      heap_Free(*(a1 + 8), v41);
      return HexArg;
    }

    *a12 += *(a8 + 578);
    heap_Free(*(a1 + 8), v41);
    if (a11)
    {
      v43 = cstdlib_strlen(szWORD_END_3);
      v38 = bed_Insert(a10, szWORD_END_3, v43);
      if ((v38 & 0x80000000) != 0)
      {
        return v38;
      }

      *a12 += cstdlib_strlen(szWORD_END_3);
    }

    v31 = a17;
    HexArg = getHexArg(a1, a2, *(a8 + 64), a13, a15, a14, a16, a17, a18, a19);
    if ((HexArg & 0x80000000) != 0)
    {
      return HexArg;
    }

    v27 = v62;
    v30 = a16;
    v32 = a15;
    v28 = a19;
    v33 = a14;
    v34 = a13;
    v29 = a18;
    v35 = a11;
  }

  v44 = __n;
  if (__n && ((v27 & 2) == 0 || !*(__dst + 32)))
  {
    v54 = v34;
    v55 = v29;
    v56 = v28;
    v57 = v33;
    v58 = v32;
    v59 = v30;
    v53 = v31;
    v60 = v35;
    if (v35)
    {
      v45 = cstdlib_strlen(szWORD_BEG_3);
      v38 = bed_Insert(a10, szWORD_BEG_3, v45);
      if ((v38 & 0x80000000) != 0)
      {
        return v38;
      }

      *a12 += cstdlib_strlen(szWORD_BEG_3);
      v44 = __n;
    }

    v46 = v44 + 1;
    v47 = heap_Alloc(*(a1 + 8), (v44 + 1));
    HexArg = 2350915594;
    if (!v47)
    {
      return HexArg;
    }

    v41 = v47;
    cstdlib_memset(v47, 0, v46);
    cstdlib_strncpy(v41, __n_2, __n);
    v41[__n] = 0;
    v42 = bed_Insert(a10, v41, __n);
    if ((v42 & 0x80000000) == 0)
    {
      *a12 += __n;
      heap_Free(*(a1 + 8), v41);
      if (!v60)
      {
LABEL_34:
        HexArg = getHexArg(a1, a2, (a5 - *a7), v54, v58, v57, v59, v53, v55, v56);
        if ((HexArg & 0x80000000) != 0)
        {
          return HexArg;
        }

        v27 = v62;
        goto LABEL_36;
      }

      v48 = cstdlib_strlen(szWORD_END_3);
      v38 = bed_Insert(a10, szWORD_END_3, v48);
      if ((v38 & 0x80000000) == 0)
      {
        *a12 += cstdlib_strlen(szWORD_END_3);
        goto LABEL_34;
      }

      return v38;
    }

    goto LABEL_42;
  }

LABEL_36:
  if ((v27 & 2) != 0)
  {
    v50 = *a7;
    v51 = a5 - v50;
    cstdlib_memmove(a8, (a4 + v50), v51);
    cstdlib_memmove((a8 + v51), a6 + 2, a6[35]);
    *(a8 + 64) = a6[35] + v51;
    cstdlib_memmove((a8 + 66), __n_2, __n);
    p_n = &__n;
  }

  else
  {
    cstdlib_memmove(a8, a6 + 2, a6[35]);
    *(a8 + 64) = a6[35];
    p_n = a6 + 167;
    cstdlib_memmove((a8 + 66), a6 + 38, a6[167]);
  }

  *(a8 + 578) = *p_n;
  *a7 = -1;
  return HexArg;
}

uint64_t DoDctPlusRulesSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    return 0;
  }

  v16 = 0;
  for (i = 0; i < a5; v16 = i)
  {
    memset(v26, 0, sizeof(v26));
    v18 = wordm_sysdct_CharLookup_Thai(a3, (a4 + i), (a5 - i), v26, 0x16u, a11, "normal");
    if ((v18 & 0x80000000) != 0)
    {
      break;
    }

    if ((LODWORD(v26[0]) - 2) > 3)
    {
      log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (utoi position %d len %d not in dict", v16, WORD3(v26[4]));
    }

    else
    {
      v19 = cstdlib_strlen(&v26[4] + 12) + 3;
      v20 = heap_Alloc(*(a1 + 8), v19);
      if (!v20)
      {
        return 2350915594;
      }

      v21 = v20;
      cstdlib_memset(v20, 0, v19);
      if (i)
      {
        cstdlib_strcpy(v21, &v26[4] + 12);
      }

      else
      {
        cstdlib_strcpy(v21, " ");
        cstdlib_strcat(v21, &v26[4] + 12);
      }

      cstdlib_strcat(v21, " ");
      v22 = cstdlib_strlen(v21);
      v18 = bed_Insert(a6, v21, v22);
      if ((v18 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v21);
        return v18;
      }

      heap_Free(*(a1 + 8), v21);
    }

    v23 = cstdlib_strlen(v26 + 4);
    if (v23)
    {
      i += v23;
    }

    else
    {
      i = a5;
    }
  }

  return v18;
}

uint64_t getHexArg(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 *a9, unsigned __int16 *a10)
{
  v40 = a6;
  if (a3)
  {
    v14 = a6;
    v18 = 2350915584;
    v19 = heap_Calloc(*(a1 + 8), 1, 2 * a3 + 2);
    if (v19)
    {
      v20 = v19;
      v37 = a4;
      v38 = a5;
      v21 = *a9 + a3;
      if (LH_wcslen(a8) >= v21)
      {
        v23 = (a8 + 2 * *a9);
        v22 = a3;
        LH_wcsncpy(v20, v23, a3);
      }

      else
      {
        v22 = 0;
      }

      *&v20[2 * v22] = 0;
      v24 = utf8_16BitNbrOfUtf8Chars(v20);
      v25 = v24 - 1;
      if (v24 == 1)
      {
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] converted utf8 word length is 0, cant get hex args");
        v31 = *(a1 + 8);
        v32 = v20;
LABEL_20:
        heap_Free(v31, v32);
        return v18;
      }

      v26 = (v24 - 1);
      v27 = heap_Calloc(*(a1 + 8), 1, v26 + 1);
      if (v27)
      {
        v28 = v27;
        cstdlib_strncpy(v27, (a7 + *a10), v25);
        v28[v26] = 0;
        log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] get hex args from UTF16Word(%s,pos=%d) UTF8Word(%s,pos=%d)", v20, *a9, v28, *a10);
        v29 = *(v14 + 16);
        v30 = v29 + 2 * v25 + 1;
        if (*(v14 + 18) >= v30)
        {
          v18 = 0;
        }

        else
        {
          v18 = datac_RequestBlock(v37, v38, (v29 + 2 * v25 + 1), &v40);
          if ((v18 & 0x80000000) != 0)
          {
LABEL_19:
            heap_Free(*(a1 + 8), v20);
            v31 = *(a1 + 8);
            v32 = v28;
            goto LABEL_20;
          }

          v14 = v40;
          v29 = *(v40 + 16);
        }

        v33 = 0;
        v34 = (*(v14 + 8) + *(v14 + 2) * v29);
        *(v14 + 16) = v30;
        do
        {
          v35 = v34;
          LH_itoa(v28[v33], v39, 0x10u);
          v39[2] = 0;
          *v35 = v39[0];
          v34 = v35 + 2;
          v35[1] = v39[1];
          ++v33;
        }

        while (v26 != v33);
        *v34 = 0;
        *a9 += a3;
        *a10 += v25;
        goto LABEL_19;
      }

      heap_Free(*(a1 + 8), v20);
      return 2350915594;
    }

    else
    {
      return 2350915594;
    }
  }

  else
  {
    v18 = 2350915584;
    log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] that parser : word length is 0, cant get hex args", a6, a7, a8);
  }

  return v18;
}

uint64_t xcode_Utf16leToWin874(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  v5 = 2370838535;
  if (a2 && a4 && a5)
  {
    if (a3)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3;
      while (v9 < *a5)
      {
        v11 = *v8++;
        v9 += local_xcode_char_Utf16leToWin874(v11, (a4 + v9));
        if (!--v10)
        {
          goto LABEL_10;
        }
      }

      return 2370838537;
    }

    else
    {
      LOWORD(v9) = 0;
LABEL_10:
      v5 = 0;
      *a5 = v9;
    }
  }

  return v5;
}

uint64_t local_xcode_char_Utf16leToWin874(int a1, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 <= 0xFF)
  {
    v2 = a1;
LABEL_4:
    *a2 = v2;
    return 1;
  }

  if (a1 <= 8219)
  {
    if (a1 > 8215)
    {
      if (a1 == 8216)
      {
        v2 = -111;
        goto LABEL_4;
      }

      if (a1 == 8217)
      {
        v2 = -110;
        goto LABEL_4;
      }
    }

    else
    {
      if (a1 == 8211)
      {
        v2 = -106;
        goto LABEL_4;
      }

      if (a1 == 8212)
      {
        v2 = -105;
        goto LABEL_4;
      }
    }
  }

  else if (a1 <= 8225)
  {
    if (a1 == 8220)
    {
      v2 = -109;
      goto LABEL_4;
    }

    if (a1 == 8221)
    {
      v2 = -108;
      goto LABEL_4;
    }
  }

  else
  {
    switch(a1)
    {
      case 8226:
        v2 = -107;
        goto LABEL_4;
      case 8364:
        v2 = 0x80;
        goto LABEL_4;
      case 8230:
        v2 = -123;
        goto LABEL_4;
    }
  }

  v3 = 0;
  if ((~a1 & 0xE00) == 0 && (a1 - 3585) <= 0x5A)
  {
    v2 = a1 - 96;
    goto LABEL_4;
  }

  return v3;
}

uint64_t mDictFind(char *__s2)
{
  v2 = &pMorp_Dct;
  v3 = 3677;
  while (cstdlib_strcmp(v2, __s2))
  {
    v2 += 11;
    if (!--v3)
    {
      return 82;
    }
  }

  return v2[10];
}

void *swapMRT(uint64_t a1, unsigned int a2, unsigned int a3)
{
  __dst = 0;
  v4 = a1 + 89;
  v5 = (a1 + 89 + 4 * a2);
  cstdlib_memcpy(&__dst, v5, 4uLL);
  v6 = (v4 + 4 * a3);
  cstdlib_memcpy(v5, v6, 4uLL);
  return cstdlib_memcpy(v6, &__dst, 4uLL);
}

void *swapMST(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v4 = a1 + 346;
  v5 = (a1 + 346 + 71 * a2);
  cstdlib_memcpy(v8, v5, 0x47uLL);
  v6 = (v4 + 71 * a3);
  cstdlib_memcpy(v5, v6, 0x47uLL);
  return cstdlib_memcpy(v6, v8, 0x47uLL);
}

uint64_t o2t_ObjOpen(_WORD *a1, uint64_t a2, void *a3)
{
  v3 = 2370838535;
  v10 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v10) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v10 + 8), 9440);
    if (v7)
    {
      v8 = v7;
      cstdlib_memset(v7, 0, 0x24E0uLL);
      v3 = 0;
      *v8 = a1;
      v8[1] = a2;
      v8[2] = v10;
      *a3 = v8;
    }

    else
    {
      return 2370838538;
    }
  }

  return v3;
}

uint64_t o2t_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v4 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v4) & 0x80000000) == 0)
  {
    heap_Free(*(v4 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t o2t_Transcribe(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, _WORD *a4, _WORD *a5, char *__dst, unsigned __int16 *a7, char *a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = 2370838535;
  v36 = 0;
  if (!a1)
  {
    return v8;
  }

  if (!a2)
  {
    return v8;
  }

  v10 = a3;
  if ((a3 - 64) < 0xFFC1u)
  {
    return v8;
  }

  v16 = *a7;
  v35 = 0;
  __dsta[0] = 0;
  if (a3 < 2)
  {
    ReadThaiChar(*a2, __dst);
    if (a4[32] || a5[32])
    {
      v32 = cstdlib_strlen(__dst);
      cstdlib_memcpy(__dsta, __dst, v32);
      __dsta[v32] = 0;
      goto LABEL_15;
    }

LABEL_49:
    v30 = cstdlib_strlen(__dst);
    v29 = 0;
    *a7 = v30;
    goto LABEL_51;
  }

  if (SParser(a1, a2, a3) != 255)
  {
    v17 = WParser(a1, __dst, a7, &v36, &v35);
    if ((v17 & 0x80000000) != 0)
    {
      return v17;
    }

    if (v35 != 255)
    {
      if (v36 && (a4[32] || a5[32]))
      {
        cstdlib_strcpy(__dsta, __dst);
        v32 = *a7;
LABEL_15:
        v18 = 0;
        v19 = a4[32] != 0;
        if (a4[32])
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        if (a5[32])
        {
          v19 = v20;
        }

        if (v19 == 3)
        {
          v21 = 7;
        }

        else
        {
          v21 = v19;
        }

        v33 = v16;
        while (1)
        {
          if (v21)
          {
            v22 = a4[32];
            if (v22 + v10 <= 0x3F)
            {
              break;
            }
          }

          if ((v21 & 2) != 0)
          {
            v25 = a5[32];
            if (v25 + v10 <= 0x3F)
            {
              if (*a2 == 224 && *a5 == 224)
              {
                cstdlib_memcpy(v38, a5, v25);
                v38[0] = -31;
                v18 = a5[32];
              }

              else
              {
                cstdlib_memcpy(v38, a2, v10);
                cstdlib_memcpy(&v38[v10], a5, a5[32]);
                v18 = a5[32] + v10;
              }

              v23 = -3;
              v24 = 2;
              goto LABEL_37;
            }
          }

          if ((v21 & 4) != 0)
          {
            v26 = a4[32];
            if (v26 + v10 + a5[32] <= 0x3F)
            {
              cstdlib_memcpy(v38, a4, v26);
              cstdlib_memcpy(&v38[a4[32]], a2, v10);
              v27 = a4[32] + v10;
              cstdlib_memcpy(&v38[v27], a5, a5[32]);
              v18 = a5[32] + v27;
              v23 = -5;
              v24 = 3;
              goto LABEL_37;
            }
          }

LABEL_38:
          if (SParser(a1, v38, v18) == 255)
          {
            return 2370838535;
          }

          *a7 = v16;
          v17 = WParser(a1, __dst, a7, &v36, &v35);
          if ((v17 & 0x80000000) != 0)
          {
            return v17;
          }

          if (v35 == 255)
          {
            return 2370838535;
          }

          if (!v21 || !v36)
          {
            if (!v36)
            {
              return 0;
            }

            if (v10 == 1 && *a2 - 224 <= 4)
            {
              cstdlib_strcpy(__dst, __dsta);
              cstdlib_memcpy(&__dst[v32], a5 + 33, a5[289]);
              v28 = a5[289] + v32;
              *a7 = v28;
              __dst[v28] = 0;
              v29 = 2;
            }

            else
            {
              cstdlib_strcpy(__dst, __dsta);
              v29 = 0;
              *a7 = v32;
            }

LABEL_51:
            v8 = 0;
            *a8 = v29;
            return v8;
          }
        }

        cstdlib_memcpy(v38, a4, v22);
        cstdlib_memcpy(&v38[a4[32]], a2, v10);
        v18 = a4[32] + v10;
        v23 = -2;
        v24 = 1;
LABEL_37:
        v38[v18] = 0;
        *a8 = v24;
        v21 &= v23;
        v16 = v33;
        goto LABEL_38;
      }

      goto LABEL_49;
    }
  }

  return v8;
}

uint64_t SParser(unsigned __int8 *a1, const void *a2, unsigned int a3)
{
  v287 = *MEMORY[0x277D85DE8];
  v6 = a1 + 89;
  cstdlib_memset(a1 + 89, 0, 0x100uLL);
  v7 = a1 + 346;
  cstdlib_memset(a1 + 346, 0, 0x2380uLL);
  v8 = a1 + 24;
  cstdlib_memcpy(a1 + 24, a2, a3);
  v9 = 0;
  v10 = 0;
  a1[a3 + 24] = 0;
  a1[9434] = 0;
  a1[345] = 0;
  v11 = 0xFFFFFFFFLL;
  a1[88] = 0;
  v272 = v6;
  v274 = a1 + 346;
  v266 = a3;
  do
  {
    if ((v11 & 0x80000000) != 0)
    {
      v11 = 0;
      v13 = a1[88];
    }

    else
    {
      v12 = &v7[71 * v11++];
      v13 = v12[1];
      a1[88] = v13;
    }

    if (v13 >= a3)
    {
      continue;
    }

    if (v10)
    {
      v14 = v10;
      v15 = 78;
      v16 = a1 + 92;
      do
      {
        if (*(v16 - 3) == v13)
        {
          if (*(v16 - 2) == 1 && v7[71 * *v16 + 3] == 69)
          {
            v7[71 * (v11 - 1) + 3] = 78;
          }

          v15 = 89;
        }

        v16 += 4;
        --v14;
      }

      while (v14);
      if (v15 != 78)
      {
        continue;
      }
    }

    v273 = v11;
    v17 = &v8[v13];
    if (*v17 - 161 >= 0x2E)
    {
      v18 = csrulesc;
    }

    else
    {
      v18 = 0;
    }

    if (*v17 - 161 >= 0x2E)
    {
      v19 = csrulesv;
    }

    else
    {
      v19 = csrulesc;
    }

    if (v18 >= v19)
    {
      goto LABEL_229;
    }

    v270 = 0;
    LODWORD(v20) = 0;
    HIDWORD(v20) = v13;
    v275 = v20;
    do
    {
      v21 = v17;
      v22 = &psrules[61 * v18];
      v23 = (v22 + 30);
      v24 = *v22;
      v25 = cstdlib_strchr(v22 + 30, 43);
      v27 = v13;
      v28 = v13;
      if (v24)
      {
        v29 = v24;
        *&v26 = v275;
        do
        {
          v30 = v8[BYTE4(v26)];
          switch(v29)
          {
            case 'A':
              if (v30 == -61)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'B':
              if (v30 == -57)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'C':
              v34 = v8[BYTE4(v26)] - 161 > 0x29;
              v35 = 1 << (v30 + 95);
              v36 = 0x2802C50040BLL;
              goto LABEL_89;
            case 'D':
              v37 = v8[BYTE4(v26)] - 164 > 0x13;
              v38 = 1 << (v30 + 92);
              v39 = 655425;
              goto LABEL_96;
            case 'E':
              if (v30 == -51)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'F':
              v37 = v8[BYTE4(v26)] - 164 > 0x12;
              v38 = 1 << (v30 + 92);
              v39 = 425985;
              goto LABEL_96;
            case 'G':
              v34 = v8[BYTE4(v26)] - 170 > 0x23;
              v35 = 1 << (v30 + 86);
              v36 = 0x94840A001;
              goto LABEL_89;
            case 'H':
              if (v30 == -53)
              {
                goto LABEL_126;
              }

LABEL_84:
              if ((v30 + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'J':
              if ((v30 + 49) < 0xD2u || v30 == -57 || v8[BYTE4(v26)] == 205)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'K':
              v34 = v8[BYTE4(v26)] - 164 > 0x26;
              v35 = 1 << (v30 + 92);
              v36 = 0x4020000001;
              goto LABEL_89;
            case 'L':
              if (v30 != -59 && v8[BYTE4(v26)] != 195)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'M':
              v34 = v8[BYTE4(v26)] - 161 > 0x2A;
              v35 = 1 << (v30 + 95);
              v36 = 0x40681041401;
              goto LABEL_89;
            case 'N':
              v34 = v8[BYTE4(v26)] - 162 > 0x28;
              v35 = 1 << (v30 + 94);
              v36 = 0x1A8006F81C5;
LABEL_89:
              v43 = v35 & v36;
              if (!v34 && v43 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'O':
              if ((v30 + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              v33 = v8[BYTE4(v26)] - 194 > 5 || ((1 << (v30 + 62)) & 0x23) == 0;
              if (!v33)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'P':
              v40 = v8[BYTE4(v26)] - 184 > 0x13;
              v41 = 1 << (v30 + 72);
              v42 = 796673;
              goto LABEL_103;
            case 'Q':
              v40 = v8[BYTE4(v26)] - 166 > 7;
              v41 = 1 << (v30 + 90);
              v42 = 145;
              goto LABEL_103;
            case 'R':
              v40 = v8[BYTE4(v26)] - 195 > 4;
              v41 = 1 << (v30 + 61);
              v42 = 21;
LABEL_103:
              v47 = v41 & v42;
              if (!v40 && v47 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'S':
              v37 = v8[BYTE4(v26)] - 174 > 0x1B;
              v38 = 1 << (v30 + 82);
              v39 = 134217731;
LABEL_96:
              v45 = v38 & v39;
              if (!v37 && v45 != 0)
              {
                goto LABEL_111;
              }

              goto LABEL_126;
            case 'T':
              if ((v30 & 0xFFFFFFFC) == 0xFFFFFFE8)
              {
                goto LABEL_117;
              }

              if (v22[60] == 78)
              {
                v31 = -2;
              }

              else
              {
                v31 = -1;
              }

              v32 = v26;
              if (v22[60] == 78)
              {
                v32 = v26 + 1;
              }

              LODWORD(v26) = v32;
              break;
            case 'U':
              if ((v30 + 49) < 0xD2u || (v30 | 4) == 0xC7)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'W':
              if (v30 == -62)
              {
                goto LABEL_126;
              }

              goto LABEL_110;
            case 'X':
              if ((v30 + 95) > 0x2D)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'Y':
              if ((v30 + 95) > 0x2D)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'Z':
              if (v30 == -57)
              {
                goto LABEL_126;
              }

LABEL_110:
              if ((v30 + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

LABEL_111:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v280 = v26;
              contable(v30, 1, v284);
              v26 = v280;
              if (v284[0] == 45)
              {
                v31 = -1;
              }

              else
              {
                v31 = -2;
              }

              break;
            case 'a':
              if (v30 != -47)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'b':
              if (v30 != -44)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'c':
              if (v30 != -43)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'd':
              if (v30 != -42)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'e':
              if (v30 != -41)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'f':
              if (v30 != -40)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'g':
              if (v30 != -39)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'h':
              if (v30 != -45)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'i':
              if (v30 != -25)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'j':
              if (v30 != -20)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            default:
              if (v29 != v30)
              {
                goto LABEL_126;
              }

LABEL_117:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v31 = -2;
              break;
          }

          if (v31 != -2)
          {
            break;
          }

          v29 = v22[v26];
        }

        while (v29);
        if (v31 != -2)
        {
LABEL_126:
          v17 = v21;
          goto LABEL_131;
        }

        v28 = BYTE4(v26);
        v27 = BYTE4(v26);
      }

      v49 = v8[v27];
      if ((v49 & 0xFC) == 0xE8)
      {
        goto LABEL_126;
      }

      v50 = v49 - 208 > 9 || v49 == 211;
      v17 = v21;
      if (v50)
      {
        v51 = v28 - v13;
        if (v49 != 236 && v51 != -1)
        {
          v281 = v19;
          v53 = v51;
          cstdlib_strncpy(__dst, v21, v51);
          v262 = v53;
          __dst[v53] = 0;
          v19 = v281;
          if (!v25)
          {
            goto LABEL_194;
          }

          v54 = cstdlib_strchr(v25, 39);
          v55 = &v285;
          if (v54)
          {
            while (1)
            {
              v57 = *++v55;
              v56 = v57;
              if (v57 == 88)
              {
                break;
              }

              if (!v56)
              {
                if (patt_check(v55, "X\xE4\x58X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v58 = &v285;
            while (1)
            {
              v60 = *++v58;
              v59 = v60;
              if (v60 == 88)
              {
                break;
              }

              if (!v59)
              {
                if (patt_check(v58, "X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v61 = &v285;
            while (1)
            {
              v63 = *++v61;
              v62 = v63;
              if (v63 == 88)
              {
                break;
              }

              if (!v62)
              {
                if (patt_check(v61, "X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v64 = &v285;
            while (1)
            {
              v66 = *++v64;
              v65 = v66;
              if (v66 == 88)
              {
                break;
              }

              if (!v65)
              {
                if (patt_check(v64, "X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v67 = __dst;
            do
            {
              v69 = *v67++;
              v68 = v69;
            }

            while ((v69 - 207) < 0xFFFFFFD2);
            v70 = *v67;
            switch(v70)
            {
              case 199:
                if (v68 == 164)
                {
                  goto LABEL_131;
                }

                break;
              case 197:
                v86 = v68 - 161;
                v34 = v86 > 0x1D;
                v87 = (1 << v86) & 0x2C000001;
                if (!v34 && v87 != 0)
                {
                  goto LABEL_131;
                }

                break;
              case 195:
                v71 = v68 - 161;
                if (v71 <= 0x29 && ((1 << v71) & 0x2802C500403) != 0)
                {
                  goto LABEL_131;
                }

                break;
            }

LABEL_191:
            if (patt_check(__dst, "\xE0\x58\x52") == 1 || patt_check(__dst, "\xE1\x58\x52") == 1 || patt_check(__dst, "\xE2\x58\x52") == 1)
            {
              goto LABEL_131;
            }

LABEL_194:
            if (v24 == 33)
            {
              v89 = a1[88];
              if (!v89)
              {
                goto LABEL_131;
              }

              if (patt_check(__dst, "X\xEC\x58XX\xEC\xECPQS") != 1)
              {
                if (patt_check(__dst, "XX\xEC\xECPQS") == 1 && v89 != 1 && v8[(v89 - 1)] - 207 < 0xFFFFFFD2)
                {
                  goto LABEL_131;
                }

                goto LABEL_211;
              }

              if (v89 == 1)
              {
                v91 = -1;
              }

              else
              {
                if (v8[(v89 - 1)] - 205 <= 7 && ((1 << (v8[(v89 - 1)] + 51)) & 0xA1) != 0)
                {
                  goto LABEL_211;
                }

                v91 = v89 - 2;
                if (v89 == 2)
                {
                  goto LABEL_131;
                }
              }

              if (v8[v91] != 226)
              {
                goto LABEL_131;
              }
            }

LABEL_211:
            v92 = a1[345];
            if (v92 > 0x40)
            {
              return 255;
            }

            v93 = a1[9434];
            if (v93 > 0x80)
            {
              return 255;
            }

            v94 = &v272[4 * v92];
            if (v270)
            {
              v95 = v94[1] + 1;
              v96 = v94[2] + 1;
            }

            else
            {
              cstdlib_memset(v94, 0, 4uLL);
              v92 = a1[345];
              v97 = &v272[4 * v92];
              *v97 = a1[88];
              *(v97 + 1) = 0;
              v93 = a1[9434];
              v97[3] = v93;
              v96 = 1;
              v95 = 1;
            }

            v98 = &v272[4 * v92];
            v98[1] = v95;
            v98[2] = v96;
            cstdlib_memset(&v274[71 * v93], 0, 0x47uLL);
            v99 = &v274[71 * a1[9434]];
            *v99 = a1[88];
            v99[1] = v13 + v262;
            v99[2] = 32;
            v99[5] = v18;
            cstdlib_strcpy(v99 + 6, __dst);
            v274[71 * a1[9434] + 38] = 0;
            v100 = mDictFind(__dst);
            v101 = &v274[71 * a1[9434]];
            v101[4] = v100;
            if (v101[1] == v266)
            {
              v102 = 76;
            }

            else
            {
              v102 = 70;
            }

            v101[3] = v102;
            if (v100 == 82 && cstdlib_strchr(v23, 33))
            {
              v103 = a1[9434];
              v104 = &v274[71 * v103];
              v104[4] = 86;
              v104[70] = 0;
              v17 = v21;
            }

            else
            {
              v105 = cstdlib_strchr(v23, 39);
              v103 = a1[9434];
              v106 = &v274[71 * v103];
              v17 = v21;
              if (v105)
              {
                v106[70] = 2;
              }

              else
              {
                v106[70] = 1;
              }
            }

            ++v270;
            a1[9434] = v103 + 1;
            goto LABEL_131;
          }

          v72 = __dst;
          do
          {
            v74 = *v72++;
            v73 = v74;
          }

          while ((v74 - 207) < 0xFFFFFFD2);
          if (v73 != 187 || *v72 != 197)
          {
            v75 = &v285;
            do
            {
              v77 = *++v75;
              v76 = v77;
              if (v77 == 224)
              {
                goto LABEL_170;
              }
            }

            while (v76);
            if (patt_check(v75, "\xE0\x43\x52") != 1)
            {
LABEL_170:
              v78 = &v285;
              while (1)
              {
                v80 = *++v78;
                v79 = v80;
                if (v80 == 225)
                {
                  break;
                }

                if (!v79)
                {
                  if (patt_check(v78, "\xE1\x43\x52") == 1)
                  {
                    goto LABEL_178;
                  }

                  break;
                }
              }

              v81 = &v285;
              while (1)
              {
                v83 = *++v81;
                v82 = v83;
                if (v83 == 226)
                {
                  goto LABEL_194;
                }

                if (!v82)
                {
                  if (patt_check(v81, "\xE2\x43\x52") != 1)
                  {
                    goto LABEL_194;
                  }

                  break;
                }
              }
            }

LABEL_178:
            v84 = cstdlib_strlen(__dst);
            if (__dst[(v84 - 1)] - 195 > 4 || ((1 << (__dst[(v84 - 1)] + 61)) & 0x15) == 0)
            {
              goto LABEL_194;
            }
          }
        }
      }

LABEL_131:
      ++v18;
    }

    while (v18 != v19);
    v10 = a1[345];
    if (v270)
    {
      a1[345] = ++v10;
      v9 = a1[9434];
      v6 = v272;
      v11 = v273;
      v7 = a1 + 346;
      a3 = v266;
      continue;
    }

    LOBYTE(v9) = a1[9434];
    v7 = a1 + 346;
    a3 = v266;
LABEL_229:
    v6 = v272;
    v107 = &v272[4 * v10];
    *v107 = v13;
    *(v107 + 1) = 257;
    v107[3] = v9;
    LODWORD(v107) = v9;
    v108 = &v7[71 * v9];
    *v108 = v13;
    v108[1] = v13 + 1;
    *(v108 + 1) = 20000;
    v108[4] = 85;
    v108[6] = *v17;
    v108[7] = 0;
    v108[38] = 0;
    v108[70] = 1;
    a1[345] = ++v10;
    v9 = (v107 + 1);
    a1[9434] = v107 + 1;
    v109 = (v107 + 1);
    *&v7[71 * v109 - 68] = 21573;
    if ((v9 & 0x100) != 0)
    {
      v9 = 0;
      v11 = v273;
    }

    else
    {
      v110 = a1[88];
      v111 = a1 + 349;
      v11 = v273;
      do
      {
        if (*(v111 - 2) == v110 && *v111 != 69)
        {
          *v111 = 78;
        }

        v111 += 71;
        --v109;
      }

      while (v109);
    }
  }

  while (v11 < v9);
  if (v9)
  {
    v112 = 0;
    v113 = v9;
    v114 = v9;
    do
    {
      v115 = &v274[71 * v112];
      if (v115[4] == 86)
      {
        if (v112 >= v114)
        {
          v117 = v113;
        }

        else
        {
          v116 = 1;
          v117 = v113;
          v118 = v112;
LABEL_242:
          v119 = &a1[71 * v118 + 352];
          do
          {
            if (*(v119 - 5) == *v115)
            {
              cstdlib_strcpy(__dst, v119);
              cstdlib_strcat(__dst, v115 + 6);
              v120 = mDictFind(__dst);
              if (v120 != 82)
              {
                v121 = v120;
                cstdlib_strcat(v119, v115 + 6);
                v116 = 0;
                *(v119 - 5) = v115[1];
                *(v119 - 3) = v115[3];
                *(v119 - 2) = v121;
                ++v118;
                v113 = a1[9434];
                v117 = v113;
                v122 = v113;
                if (v118 < v113)
                {
                  goto LABEL_242;
                }

                goto LABEL_263;
              }

              v117 = a1[9434];
            }

            ++v118;
            v119 += 71;
          }

          while (v118 < v117);
          v114 = v117;
          v113 = v117;
          v122 = v117;
          if ((v116 & 1) == 0)
          {
            goto LABEL_263;
          }
        }

        v115[3] = 69;
        v123 = patt_check(v115 + 6, "X\xECPQS");
        v113 = v117;
        v122 = v114;
        if (v123 == 1)
        {
          cstdlib_strcpy(v115 + 38, "!");
          v113 = a1[9434];
          v122 = v113;
        }

        v115[4] = 84;
        if (v122)
        {
          v124 = *v115;
          v125 = v122;
          v126 = a1 + 349;
          do
          {
            if (*(v126 - 2) == v124 && *v126 != 69)
            {
              *v126 = 78;
            }

            v126 += 71;
            --v125;
          }

          while (v125);
        }

        else
        {
          v122 = 0;
        }
      }

      else
      {
        v122 = v114;
      }

LABEL_263:
      ++v112;
      v114 = v122;
    }

    while (v112 < v122);
    v10 = a1[345];
    v6 = v272;
    v7 = a1 + 346;
  }

  else
  {
    LOBYTE(v113) = 0;
  }

  if (v10 >= 2u)
  {
    v127 = 0;
    v128 = 1;
    v129 = 93;
    do
    {
      v130 = v127 + 1;
      if (v127 + 1 < v10)
      {
        v131 = v129;
        v132 = v128;
        do
        {
          if (v6[4 * v127] > a1[v131])
          {
            swapMRT(a1, v127, v132);
            v10 = a1[345];
          }

          ++v132;
          v131 += 4;
        }

        while (v132 < v10);
      }

      ++v128;
      v129 += 4;
      ++v127;
    }

    while (v10 - 1 > v130);
    LOBYTE(v113) = a1[9434];
    v7 = a1 + 346;
  }

  if (v113 >= 2u)
  {
    v133 = 0;
    v134 = a1 + 418;
    v135 = 1;
    v136 = v113;
    do
    {
      v137 = v133 + 1;
      if (v133 + 1 < v136)
      {
        v138 = &v274[71 * v133];
        v139 = v134;
        v140 = v135;
        do
        {
          v141 = *v138;
          v142 = *(v139 - 1);
          if (v141 > v142 || v141 == v142 && v138[1] < *v139)
          {
            swapMST(a1, v133, v140);
            LOBYTE(v113) = a1[9434];
          }

          ++v140;
          v139 += 71;
          v136 = v113;
        }

        while (v140 < v113);
      }

      ++v135;
      v134 += 71;
      ++v133;
    }

    while (v136 - 1 > v137);
    v10 = a1[345];
    v6 = v272;
    v7 = a1 + 346;
  }

  if (v10 >= 2u)
  {
    v143 = v10 - 1;
    v144 = a1 + 96;
    do
    {
      *v144 = *(v144 - 6) + *(v144 - 4);
      v144 += 4;
      --v143;
    }

    while (v143);
  }

  if (!v10)
  {
    return 1;
  }

  v145 = v10;
  v267 = a1 + 348;
  v268 = a1 + 350;
  while (2)
  {
    v146 = &v6[4 * --v145];
    v147 = v146[2];
    if (v147 < 2)
    {
      goto LABEL_523;
    }

    v269 = &v6[4 * v145];
    v271 = v145;
    v148 = v146[3];
    v149 = v146[1];
    v150 = v149 + v148;
    if (v148 >= (v149 + v148))
    {
      v157 = -1;
      v154 = 0xFFFF;
      v156 = 0xFFFF;
      v159 = -1;
    }

    else
    {
      v151 = (v149 + v148);
      v152 = 71 * v146[3];
      v153 = -1;
      v154 = 0xFFFF;
      v155 = v146[3];
      v156 = 0xFFFF;
      v157 = -1;
      v158 = &v268[v152];
      v159 = -1;
      do
      {
        if (*(v158 - 2) != 89)
        {
          v160 = *(v158 - 1);
          if (v160 == 76)
          {
            v161 = v155;
          }

          else
          {
            v161 = v157;
          }

          if (v160 == 78)
          {
            v161 = v157;
            v162 = v155;
          }

          else
          {
            v162 = v153;
          }

          if (v160 == 70)
          {
            v159 = v155;
          }

          else
          {
            v157 = v161;
            v153 = v162;
          }

          v163 = *v158;
          if (v163 == 88)
          {
            v164 = v155;
          }

          else
          {
            v164 = v156;
          }

          if (v163 == 89)
          {
            v154 = v155;
          }

          else
          {
            v156 = v164;
          }
        }

        v158 += 71;
        ++v155;
      }

      while (v151 != v155);
      if ((v153 & 0x80000000) == 0 && ((v157 & 0x80000000) == 0 || (v159 & 0x80000000) == 0))
      {
        v165 = &v267[v152];
        v166 = v151 - v148;
        do
        {
          if (v165[1] == 78 && *v165 != 89)
          {
            v6[4 * v145 + 2] = --v147;
            *v165 = 89;
          }

          v165 += 71;
          --v166;
        }

        while (v166);
      }
    }

    if (v157 < 0 && v159 < 0 && (v148 + 1) < v150)
    {
      v167 = v7[71 * v148 + 1];
      v168 = v148 + 1;
      v169 = &v267[71 * (v148 + 1)];
      v170 = v148;
      while (*(v169 - 1) > v167)
      {
        v171 = &v7[71 * v170];
        v173 = v171[2];
        v172 = v171 + 2;
        v170 = v168;
        if (v173 != 89)
        {
          v167 = *(v169 - 1);
LABEL_331:
          v6[4 * v145 + 2] = --v147;
          *v172 = 89;
          goto LABEL_332;
        }

        v167 = *(v169 - 1);
LABEL_332:
        ++v168;
        v169 += 71;
        if (v150 == v168)
        {
          goto LABEL_333;
        }
      }

      v172 = v169;
      if (*v169 == 89)
      {
        goto LABEL_332;
      }

      goto LABEL_331;
    }

LABEL_333:
    if (v147 < 2u)
    {
      goto LABEL_523;
    }

    if (v148 >= v150)
    {
      v190 = 0;
      v282 = 0;
      v189 = 0;
    }

    else
    {
      v174 = 71 * v148;
      v175 = -1;
      v176 = 0xFFFF;
      v177 = v148;
      v178 = 0xFFFF;
      v179 = 0xFFFF;
      v180 = &v268[v174];
      v181 = 0xFFFF;
      do
      {
        if (*(v180 - 2) != 89)
        {
          if (*(v180 - 1) == 76)
          {
            v175 = v177;
          }

          v182 = *v180;
          if (v182 == 88)
          {
            v183 = v177;
          }

          else
          {
            v183 = v156;
          }

          if (v182 == 89)
          {
            v183 = v156;
            v184 = v177;
          }

          else
          {
            v184 = v154;
          }

          if (v182 == 83)
          {
            v183 = v156;
            v184 = v154;
            v185 = v177;
          }

          else
          {
            v185 = v176;
          }

          if (v182 == 82)
          {
            v186 = v177;
          }

          else
          {
            v186 = v181;
          }

          if (v182 == 81)
          {
            v186 = v181;
            v187 = v177;
          }

          else
          {
            v187 = v178;
          }

          if (v182 == 80)
          {
            v186 = v181;
            v188 = v177;
          }

          else
          {
            v188 = v179;
          }

          if (v182 == 80)
          {
            v187 = v178;
          }

          if (*v180 <= 0x52u)
          {
            v181 = v186;
            v179 = v188;
          }

          else
          {
            v156 = v183;
            v154 = v184;
          }

          if (*v180 > 0x52u)
          {
            v176 = v185;
          }

          else
          {
            v178 = v187;
          }
        }

        v180 += 71;
        ++v177;
      }

      while (v150 != v177);
      v189 = v175 >= 0;
      v282 = (v181 & 0x8000u) == 0;
      v190 = (v179 & v178 & v181 & v176 & 0x8000u) == 0;
      if ((v175 & 0x80000000) == 0 && (v156 & 0x8000) != 0 && (v154 & 0x8000) != 0)
      {
        v191 = v150 - v148;
        v192 = &v267[v174];
        do
        {
          if (v192[1] != 76 && *v192 != 89)
          {
            v6[4 * v145 + 2] = --v147;
            *v192 = 89;
          }

          v192 += 71;
          --v191;
        }

        while (v191);
        v189 = 1;
      }
    }

    v279 = v145;
    if ((v156 & 0x8000) == 0 || (v154 & 0x8000) == 0)
    {
      if ((v156 & 0x8000) == 0)
      {
        if (v148 < v150)
        {
          v276 = v189;
          v193 = &v268[71 * v148];
          v194 = v148;
          do
          {
            if (v194 != v156 && (*v193 & 0xFE) == 0x58 && *(v193 - 2) != 89 && compareXX(a1, v279, v194, v156))
            {
              LOWORD(v156) = v194;
            }

            ++v194;
            v193 += 71;
          }

          while (v150 != v194);
          goto LABEL_397;
        }

        if (!v189 && v190)
        {
LABEL_442:
          keepLongest(a1, v145);
        }

        goto LABEL_443;
      }

      if (v148 < v150 && (v154 & 0x8000) == 0)
      {
        v276 = v189;
        v195 = &v268[71 * v148];
        v196 = v148;
        do
        {
          if (v196 != v154 && (*v195 & 0xFE) == 0x58 && *(v195 - 2) != 89 && compareXX(a1, v279, v196, v154))
          {
            LOWORD(v154) = v196;
          }

          ++v196;
          v195 += 71;
        }

        while (v150 != v196);
LABEL_397:
        v145 = v279;
        v189 = v276;
      }
    }

    if ((v156 & v154 & 0x8000u) == 0 && v190)
    {
      if (v148 >= v150)
      {
        if (!v189)
        {
          goto LABEL_442;
        }
      }

      else
      {
        v277 = v189;
        v197 = 0;
        v198 = &v6[4 * v271];
        v199 = &v267[71 * v148];
        v200 = v150 - v148;
        v201 = v148;
        do
        {
          v202 = &v274[71 * v201];
          if ((v202[4] & 0xFE) == 0x58 && v202[2] != 89)
          {
            if (v202[3] != 76 && findCfollow(a1, v201, 0x58u) == 255)
            {
              if (v282 && (findCfollow(a1, v201, 0x51u) != 255 || findCfollow(a1, v201, 0x53u) != 255 || findCfollow(a1, v201, 0x50u) != 255))
              {
                v205 = v150 - v148;
                v206 = &v267[71 * v148];
                do
                {
                  if (v206[2] == 82)
                  {
                    if (*v206 != 89)
                    {
                      --v198[2];
                      *v206 = 89;
                    }

                    v197 = 9;
                  }

                  v206 += 71;
                  --v205;
                }

                while (v205);
              }
            }

            else
            {
              v203 = &v267[71 * v148];
              v204 = v150 - v148;
              do
              {
                if ((v203[2] & 0xFE) != 0x58)
                {
                  if (*v203 != 89)
                  {
                    --v198[2];
                    *v203 = 89;
                  }

                  v197 = 9;
                }

                v203 += 71;
                --v204;
              }

              while (v204);
            }
          }

          ++v201;
        }

        while (v201 != v150);
        v7 = a1 + 346;
        if (v197 != 9 && v282)
        {
          v207 = &v267[71 * v148];
          do
          {
            if (v207[2] == 82 && (allCfollow(a1, v148, 0x52u) || allCfollow(a1, v148, 0x54u)) && *v207 != 89)
            {
              --v198[2];
              *v207 = 89;
            }

            LOBYTE(v148) = v148 + 1;
            v207 += 71;
          }

          while (v150 != v148);
        }

        v33 = v197 == 9;
        v145 = v279;
        if (!v33)
        {
          if (!v277)
          {
            goto LABEL_442;
          }

          do
          {
            if (v199[1] != 76 && *v199 != 89)
            {
              --v198[2];
              *v199 = 89;
            }

            v199 += 71;
            --v200;
          }

          while (v200);
        }
      }
    }

LABEL_443:
    v208 = v269[2];
    if (v208 < 2)
    {
      goto LABEL_523;
    }

    v209 = v269[3];
    v210 = v269[1];
    v211 = v210 + v209;
    v212 = (v210 + v209);
    if (v209 >= (v210 + v209))
    {
      v231 = 0;
      v261 = 1;
      v263 = 1;
      v264 = 1;
      v260 = 1;
    }

    else
    {
      v213 = &v268[71 * v269[3]];
      v214 = 0xFFFF;
      v215 = v269[3];
      v216 = 0xFFFF;
      v217 = 0xFFFF;
      v218 = 0xFFFF;
      v219 = 0xFFFF;
      v220 = 0xFFFF;
      v221 = 0xFFFF;
      do
      {
        if (*(v213 - 2) != 89)
        {
          v222 = *v213;
          if (v222 == 88)
          {
            v223 = v215;
          }

          else
          {
            v223 = v221;
          }

          if (v222 == 89)
          {
            v223 = v221;
            v224 = v215;
          }

          else
          {
            v224 = v220;
          }

          if (v222 == 84)
          {
            v225 = v215;
          }

          else
          {
            v225 = v214;
          }

          if (v222 == 83)
          {
            v226 = v215;
          }

          else
          {
            v226 = v216;
          }

          if (v222 == 83)
          {
            v225 = v214;
          }

          if (*v213 > 0x57u)
          {
            v226 = v216;
            v225 = v214;
          }

          else
          {
            v223 = v221;
            v224 = v220;
          }

          if (v222 == 82)
          {
            v227 = v215;
          }

          else
          {
            v227 = v219;
          }

          if (v222 == 81)
          {
            v227 = v219;
            v228 = v215;
          }

          else
          {
            v228 = v217;
          }

          if (v222 == 80)
          {
            v227 = v219;
            v229 = v215;
          }

          else
          {
            v229 = v218;
          }

          if (v222 == 80)
          {
            v228 = v217;
          }

          if (*v213 <= 0x52u)
          {
            v219 = v227;
            v218 = v229;
          }

          else
          {
            v221 = v223;
            v220 = v224;
          }

          if (*v213 > 0x52u)
          {
            v216 = v226;
          }

          else
          {
            v217 = v228;
          }

          if (*v213 > 0x52u)
          {
            v214 = v225;
          }
        }

        ++v215;
        v213 += 71;
      }

      while (v212 != v215);
      v230 = 0;
      v231 = (v214 & 0x8000u) == 0;
      v264 = (v218 & 0x8000u) != 0;
      v260 = (v219 & 0x8000u) != 0;
      v261 = (v217 & 0x8000u) != 0;
      v263 = (v216 & 0x8000u) != 0;
      if ((v221 & 0x8000) == 0 || (v220 & 0x8000) == 0)
      {
LABEL_513:
        if (v231)
        {
          goto LABEL_514;
        }

        goto LABEL_523;
      }
    }

    v265 = v231;
    v232 = 0;
    v283 = &v6[4 * v271];
    v278 = v211;
    do
    {
      if (v209 >= v211)
      {
        LOBYTE(v233) = v209;
      }

      else
      {
        v233 = v209;
        v234 = v209;
        v235 = 71 * v209 + 350;
        while (1)
        {
          if (a1[v235] != 82)
          {
            v236 = aX_5[v232 + 11];
            if (findCfollow(a1, v233, v236) != 255)
            {
              break;
            }
          }

          ++v233;
          v235 += 71;
          ++v234;
          if (v212 == v233)
          {
            v7 = a1 + 346;
            v211 = v278;
            LOBYTE(v233) = v278;
            goto LABEL_504;
          }
        }

        v237 = v234;
        v238 = &v267[71 * v209];
        v239 = v209;
        do
        {
          if (v237 != v239 && (findCfollow(a1, v239, v236) == 255 || v238[2] == 82) && *v238 != 89)
          {
            v283[2] = --v208;
            *v238 = 89;
          }

          ++v239;
          v238 += 71;
        }

        while (v212 != v239);
        v6 = v272;
        v7 = a1 + 346;
        v211 = v278;
LABEL_504:
        v145 = v279;
      }

      v240 = v232 + 1;
      if (v233 != v211)
      {
        break;
      }
    }

    while (v232++ < 3);
    v230 = 1;
    if (v233 != v211)
    {
      v231 = v265;
      goto LABEL_513;
    }

    v231 = v265;
    if (v240 != 4)
    {
      goto LABEL_513;
    }

    keepLongest(a1, v145);
    if (v265)
    {
      v208 = v269[2];
      v230 = 1;
LABEL_514:
      if (v208 >= 2u)
      {
        if (v230 & (v264 && v261) & (v260 && v263))
        {
          keepLongest(a1, v145);
        }

        else if (v209 < v211)
        {
          v242 = &v267[71 * v209];
          v243 = v212 - v209;
          do
          {
            if (v242[2] == 84 && *v242 != 89)
            {
              v6[4 * v271 + 2] = --v208;
              *v242 = 89;
            }

            v242 += 71;
            --v243;
          }

          while (v243);
        }
      }
    }

LABEL_523:
    if (v145)
    {
      continue;
    }

    break;
  }

  v244 = a1[345];
  result = 1;
  if (!a1[345])
  {
    return result;
  }

  v246 = 0;
  v247 = 0;
  v248 = 0;
  while (2)
  {
    v249 = &v6[4 * v246];
    if (v249[2] != 2)
    {
      goto LABEL_542;
    }

    v250 = v249[3];
    v251 = v249[1];
    v252 = v251 + v250;
    if (v250 >= (v251 + v250))
    {
      goto LABEL_542;
    }

    v253 = 0;
    v254 = &a1[71 * v249[3] + 347];
    while (2)
    {
      if (v254[1] == 89)
      {
LABEL_532:
        LOBYTE(v250) = v250 + 1;
        v254 += 71;
        if (v252 == v250)
        {
          goto LABEL_542;
        }

        continue;
      }

      break;
    }

    if (!v253)
    {
      v247 = v254[69];
      v248 = v250;
      v253 = *v254;
      goto LABEL_532;
    }

    if (v253 == *v254)
    {
      v255 = v254[69];
      if (v247 <= v255 || (v256 = &v7[71 * v248], v258 = v256[2], v257 = v256 + 2, v258 == 89))
      {
        v259 = 1;
      }

      else
      {
        v259 = 0;
        v249[2] = 1;
        *v257 = 89;
      }

      if (v247 < v255 && v254[1] != 89)
      {
        v249[2] = v259;
        v254[1] = 89;
      }
    }

LABEL_542:
    if (++v246 != v244)
    {
      continue;
    }

    return 1;
  }
}

uint64_t WParser(uint64_t a1, char *a2, _WORD *a3, _BYTE *a4, int *a5)
{
  *a4 = 0;
  *a2 = 0;
  v8 = *(a1 + 345);
  if (*(a1 + 345))
  {
    v9 = (v8 + 15) & 0x1F0;
    v10 = vdupq_n_s64(v8 - 1);
    v11 = xmmword_26ECE7570;
    v12 = xmmword_26ECE7580;
    v13 = xmmword_26ECE7590;
    v14 = xmmword_26ECE75A0;
    v15 = xmmword_26ECDB2A0;
    v16 = xmmword_26ECDB2B0;
    v17 = xmmword_26ECCE810;
    v18 = xmmword_26ECC7980;
    v19 = (a1 + 150);
    v20 = vdupq_n_s64(0x10uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v10, v18));
      if (vuzp1_s8(vuzp1_s16(v21, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 60) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v10), *&v10).i8[1])
      {
        *(v19 - 56) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v17))), *&v10).i8[2])
      {
        *(v19 - 52) = 0;
        *(v19 - 48) = 0;
      }

      v22 = vmovn_s64(vcgeq_u64(v10, v16));
      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i32[1])
      {
        *(v19 - 44) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v22, *&v10)).i8[5])
      {
        *(v19 - 40) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v15)))).i8[6])
      {
        *(v19 - 36) = 0;
        *(v19 - 32) = 0;
      }

      v23 = vmovn_s64(vcgeq_u64(v10, v14));
      if (vuzp1_s8(vuzp1_s16(v23, *v10.i8), *v10.i8).u8[0])
      {
        *(v19 - 28) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v10), *&v10).i8[1])
      {
        *(v19 - 24) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v13))), *&v10).i8[2])
      {
        *(v19 - 20) = 0;
        *(v19 - 16) = 0;
      }

      v24 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i32[1])
      {
        *(v19 - 12) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(v24, *&v10)).i8[5])
      {
        *(v19 - 8) = 0;
      }

      if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11)))).i8[6])
      {
        *(v19 - 4) = 0;
        *v19 = 0;
      }

      v16 = vaddq_s64(v16, v20);
      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s64(v18, v20);
      v15 = vaddq_s64(v15, v20);
      v14 = vaddq_s64(v14, v20);
      v13 = vaddq_s64(v13, v20);
      v12 = vaddq_s64(v12, v20);
      v19 += 64;
      v11 = vaddq_s64(v11, v20);
      v9 -= 16;
    }

    while (v9);
  }

  v25 = *(a1 + 90);
  if (v25 < *(a1 + 91))
  {
    LOBYTE(v25) = v25 + 1;
    *(a1 + 90) = v25;
  }

  v26 = *(a1 + 92);
  v27 = *(a1 + 9434);
  if (v26 < v27)
  {
    v28 = (a1 + 71 * *(a1 + 92) + 348);
    v29 = 1;
    do
    {
      v30 = *v28;
      v28 += 71;
      if (v30 != 89)
      {
        if (v29 == v25)
        {
          goto LABEL_37;
        }

        ++v29;
      }

      LOBYTE(v26) = v26 + 1;
    }

    while (v27 != v26);
  }

  LOBYTE(v26) = -1;
LABEL_37:
  v31 = rule2phone(a1, v26);
  if (v31 < 0)
  {
    v56 = a5;
    v34 = 0;
  }

  else
  {
    v32 = v31;
    v33 = a1 + 71 * v26;
    v34 = cstdlib_strlen((v33 + 384));
    if (*a3 < v34)
    {
      result = 0;
      v36 = 255;
      goto LABEL_72;
    }

    v56 = a5;
    cstdlib_strcpy(a2, (v33 + 384));
    *a4 = v32;
  }

  if (*(a1 + 345) >= 2u)
  {
    v37 = a1 + 346;
    for (i = 1; i < *(a1 + 345); ++i)
    {
      v39 = (a1 + 89 + 4 * i);
      if (*v39 == *(v37 + 71 * v26 + 1))
      {
        v40 = v39[1];
        if (v40 < v39[2])
        {
          LOBYTE(v40) = v40 + 1;
          v39[1] = v40;
        }

        v26 = v39[3];
        v41 = *(a1 + 9434);
        if (v26 < v41)
        {
          v42 = (a1 + 348 + 71 * v26);
          v43 = 1;
          do
          {
            v44 = *v42;
            v42 += 71;
            if (v44 != 89)
            {
              if (v43 == v40)
              {
                goto LABEL_54;
              }

              ++v43;
            }

            LOBYTE(v26) = v26 + 1;
          }

          while (v41 != v26);
        }

        LOBYTE(v26) = -1;
LABEL_54:
        v45 = rule2phone(a1, v26);
        if ((v45 & 0x80000000) == 0)
        {
          v46 = v45;
          v47 = v37 + 71 * v26;
          v34 += cstdlib_strlen((v47 + 38));
          if (*a3 < v34)
          {
            result = 0;
LABEL_70:
            v36 = 255;
            goto LABEL_71;
          }

          cstdlib_strcat(a2, (v47 + 38));
          *a4 |= v46;
        }
      }
    }
  }

  v48 = *(*(a1 + 16) + 8);
  v49 = cstdlib_strlen(a2);
  v50 = heap_Calloc(v48, 1, (v49 + 1));
  if (!v50)
  {
    result = 2370838538;
    goto LABEL_70;
  }

  v51 = v50;
  cstdlib_strcpy(v50, a2);
  v52 = v51;
  if (cstdlib_strlen(a2))
  {
    v53 = 0;
    v52 = v51;
    do
    {
      v54 = a2[v53];
      if (v54 != 39)
      {
        *v52++ = v54;
      }

      ++v53;
    }

    while (v53 < cstdlib_strlen(a2));
  }

  *v52 = 0;
  cstdlib_strcpy(a2, v51);
  heap_Free(*(*(a1 + 16) + 8), v51);
  v55 = cstdlib_strlen(a2);
  result = 0;
  *a3 = v55;
  v36 = 1;
LABEL_71:
  a5 = v56;
LABEL_72:
  *a5 = v36;
  return result;
}

char *ReadThaiChar(char *result, char *__dst)
{
  v2 = cchar_dct;
  if (cchar_dct)
  {
    for (i = &unk_26ECDC615; *(i - 1) != result; i += 51)
    {
      if (!--v2)
      {
        return result;
      }
    }

    return cstdlib_strcpy(__dst, i);
  }

  return result;
}

char *contable(int a1, int a2, char *__dst)
{
  if ((a1 + 95) > 0x2D)
  {
    v4 = "";
  }

  else
  {
    v3 = off_279DADF48;
    if (!a2)
    {
      v3 = off_279DADDD8;
    }

    v4 = v3[(a1 + 95)];
  }

  return cstdlib_strcpy(__dst, v4);
}

uint64_t patt_check(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    while (1)
    {
      v3 = *a2;
      if (v3 <= 0x53)
      {
        break;
      }

      if (v3 != 84)
      {
        if (v3 == 88)
        {
          if ((v2 - 161) >= 0x2E)
          {
            return -1;
          }

          goto LABEL_18;
        }

LABEL_17:
        if (v3 != v2)
        {
          return -1;
        }

        goto LABEL_18;
      }

      v7 = (v2 & 0xFC) == 232;
LABEL_19:
      a1 += v7;
      ++a2;
      v2 = *a1;
      if (!*a1)
      {
        goto LABEL_20;
      }
    }

    if (v3 == 67)
    {
      v4 = -1;
      v6 = v2 - 161;
      if (v6 > 0x29 || ((1 << v6) & 0x2802C50040BLL) == 0)
      {
        return v4;
      }
    }

    else
    {
      if (v3 != 82)
      {
        if (!*a2)
        {
          return -1;
        }

        goto LABEL_17;
      }

      v4 = -1;
      v5 = v2 - 195;
      if (v5 > 4 || ((1 << v5) & 0x15) == 0)
      {
        return v4;
      }
    }

LABEL_18:
    v7 = 1;
    goto LABEL_19;
  }

LABEL_20:
  if (*a2)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t compareXX(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = allCfollow(a1, a3, 0x52u);
  result = allCfollow(a1, v4, 0x52u);
  if (!v8 && result)
  {
    goto LABEL_3;
  }

  if (v8)
  {
LABEL_6:
    v12 = a1 + 346;
    if (result)
    {
      if (*(v12 + 71 * v5 + 1) >= *(v12 + 71 * v4 + 1))
      {
        v17 = v12 + 71 * v4;
        v18 = *(v17 + 2);
        v11 = (v17 + 2);
        v14 = v18;
        result = 1;
LABEL_15:
        if (v14 == 89)
        {
          return result;
        }

        goto LABEL_16;
      }

      result = 0;
    }

    v13 = v12 + 71 * v5;
    v15 = *(v13 + 2);
    v11 = (v13 + 2);
    v14 = v15;
    goto LABEL_15;
  }

  v16 = allNfollow(a1, v5);
  result = allNfollow(a1, v4);
  if (v16 || !result)
  {
    if (!v16)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_3:
  v10 = a1 + 71 * v4;
  result = 1;
  if (*(v10 + 348) == 89)
  {
    return result;
  }

  v11 = (v10 + 348);
LABEL_16:
  --*(a1 + 4 * a2 + 91);
  *v11 = 89;
  return result;
}

uint64_t findCfollow(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = a1 + 71 * a2;
  if (*(v3 + 348) != 89)
  {
    v4 = *(a1 + 345);
    if (*(a1 + 345))
    {
      v5 = 0;
      v6 = a1 + 89;
      v7 = *(v3 + 347);
      v8 = a1 + 350;
      do
      {
        v9 = (v6 + 4 * v5);
        if (*v9 == v7)
        {
          v10 = v9[3];
          v11 = v9[1];
          v12 = v11 + v10;
          if (v10 < (v11 + v10))
          {
            v13 = (v8 + 71 * v10);
            do
            {
              v14 = *v13;
              if (a3 == 88)
              {
                if ((v14 & 0xFE) == 0x58 && *(v13 - 1) != 78 && *(v13 - 2) != 89)
                {
                  return v10;
                }
              }

              else if (v14 == a3 && *(v13 - 2) != 89 && *(v13 - 1) != 78)
              {
                return v10;
              }

              LOBYTE(v10) = v10 + 1;
              v13 += 71;
            }

            while (v12 != v10);
          }
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  LOBYTE(v10) = -1;
  return v10;
}

uint64_t allCfollow(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = *(a1 + 345);
  if (!*(a1 + 345))
  {
    return 0;
  }

  for (i = (a1 + 92); *(i - 3) != *(a1 + 71 * a2 + 347); i += 4)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v6 = *i;
  v7 = *(i - 2);
  v8 = v7 + v6;
  if (v6 < (v7 + v6))
  {
    v9 = (a1 + 71 * *i + 350);
    v10 = v6 + 1;
    while (*v9 == a3 || *(v9 - 2) == 89)
    {
      v9 += 71;
      if (v8 == v10++)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t keepLongest(uint64_t result, unsigned int a2)
{
  v2 = result + 89 + 4 * a2;
  v3 = *(v2 + 3);
  v4 = *(v2 + 1) + v3;
  v5 = v3;
  if (v3 < v4)
  {
    v6 = (result + 71 * v3 + 348);
    while (1)
    {
      v7 = *v6;
      v6 += 71;
      if (v7 != 89)
      {
        break;
      }

      LOBYTE(v3) = v3 + 1;
      if (v4 == v3)
      {
        v5 = v4;
        goto LABEL_7;
      }
    }

    v5 = v3;
  }

LABEL_7:
  if ((v5 + 1) < v4)
  {
    v8 = result + 346;
    v9 = *(result + 346 + 71 * v5 + 1);
    v10 = result + 89 + 4 * a2;
    v11 = (v5 + 1);
    v12 = (result + 71 * v11 + 347);
    do
    {
      if (v12[1] != 89)
      {
        result = *v12;
        if (result >= v9)
        {
          if (result == v9)
          {
            result = v12[69];
            if (result >= *(v8 + 71 * v5 + 70))
            {
              v13 = (v8 + 71 * v11 + 2);
            }

            else
            {
              v14 = v8 + 71 * v5;
              v15 = *(v14 + 2);
              v13 = (v14 + 2);
              if (v15 == 89)
              {
                v5 = v11;
                goto LABEL_13;
              }

              v5 = v11;
            }
          }

          else
          {
            v16 = v8 + 71 * v5;
            v17 = *(v16 + 2);
            v13 = (v16 + 2);
            if (v17 == 89)
            {
              v5 = v11;
              v9 = *v12;
              goto LABEL_13;
            }

            v5 = v11;
            v9 = *v12;
          }
        }

        else
        {
          v13 = v12 + 1;
        }

        result = (*(v10 + 2))-- - 1;
        *v13 = 89;
      }

LABEL_13:
      ++v11;
      v12 += 71;
    }

    while (v4 != v11);
  }

  return result;
}

uint64_t allNfollow(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 345);
  if (!*(a1 + 345))
  {
    return 0;
  }

  for (i = (a1 + 92); *(i - 3) != *(a1 + 71 * a2 + 347); i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  v5 = *i;
  v6 = *(i - 2);
  v7 = v6 + v5;
  if (v5 < (v6 + v5))
  {
    v8 = (a1 + 71 * *i + 349);
    v9 = v5 + 1;
    while (*v8 == 78 || *(v8 - 1) == 89)
    {
      v8 += 71;
      if (v7 == v9++)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t rule2phone(uint64_t a1, unsigned int a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 71 * a2);
  if (v2[348] == 89)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v2 + 346;
  v6 = v2 + 384;
  v5 = v2[384];
  if (v5)
  {
    if (v5 == 33)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v7 = v4 + 6;
  if (!v4[6])
  {
    return 4294967294;
  }

  v8 = v4[4];
  if (v8 != 84)
  {
    result = 0;
    if (v8 == 85 || v4[3] == 69)
    {
      return result;
    }

    cstdlib_strcpy(__dst, &psrules[61 * v4[5] + 30]);
    v11 = 0uLL;
    while (1)
    {
      switch(psrules[61 * v4[5] + v11])
      {
        case 'A':
          v12 = v7[BYTE4(v11)];
          if (v12 == -61 || (v12 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v12, 0, v63);
          v13 = 65;
          goto LABEL_125;
        case 'B':
          v30 = v7[BYTE4(v11)];
          if (v30 == -57 || (v30 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v30, 0, v63);
          v13 = 66;
          goto LABEL_125;
        case 'C':
          v33 = v7[BYTE4(v11)];
          if ((v33 - 161) > 0x29 || ((1 << (v33 + 95)) & 0x2802C50040BLL) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v33, 0, v63);
          v13 = 67;
          goto LABEL_125;
        case 'D':
          v38 = v7[BYTE4(v11)];
          if ((v38 - 164) > 0x13 || ((1 << (v38 + 92)) & 0xA0041) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v38, 1, v63);
          v13 = 68;
          goto LABEL_125;
        case 'E':
          v37 = v7[BYTE4(v11)];
          if (v37 == -51 || (v37 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v37, 0, v63);
          v13 = 69;
          goto LABEL_125;
        case 'F':
          v35 = v7[BYTE4(v11)];
          if ((v35 - 164) > 0x12 || ((1 << (v35 + 92)) & 0x68001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v35, 1, v63);
          v13 = 70;
          goto LABEL_125;
        case 'G':
          v45 = v7[BYTE4(v11)];
          if ((v45 - 170) > 0x23 || ((1 << (v45 + 86)) & 0x94840A001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v45, 0, v63);
          v13 = 71;
          goto LABEL_125;
        case 'H':
          v22 = v7[BYTE4(v11)];
          if (v22 == -53 || (v22 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v22, 0, v63);
          v13 = 72;
          goto LABEL_125;
        case 'I':
        case 'V':
        case '[':
        case '\\':
        case ']':
        case '^':
        case '_':
          goto LABEL_127;
        case 'J':
          v42 = v7[BYTE4(v11)];
          if ((v42 + 49) < 0xD2u || v42 == -57 || v42 == 205)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v42, 0, v63);
          v13 = 74;
          goto LABEL_125;
        case 'K':
          v19 = v7[BYTE4(v11)];
          if ((v19 - 164) > 0x26 || ((1 << (v19 + 92)) & 0x4020000001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v19, 0, v63);
          v13 = 75;
          goto LABEL_125;
        case 'L':
          v31 = v7[BYTE4(v11)];
          if (v31 != 197 && v31 != 195)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v31, 0, v63);
          v13 = 76;
          goto LABEL_125;
        case 'M':
          v27 = v7[BYTE4(v11)] - 161 > 0x2A;
          v28 = 1 << (v7[BYTE4(v11)] + 95);
          v29 = 0x40681041401;
          goto LABEL_94;
        case 'N':
          v27 = v7[BYTE4(v11)] - 162 > 0x28;
          v28 = 1 << (v7[BYTE4(v11)] + 94);
          v29 = 0x1A8006F81C5;
LABEL_94:
          v40 = v28 & v29;
          if (!v27 && v40 != 0)
          {
            goto LABEL_98;
          }

          continue;
        case 'O':
          v47 = v7[BYTE4(v11)];
          if ((v47 + 49) < 0xD2u)
          {
            continue;
          }

          v48 = v47;
          v49 = v47 - 194;
          v27 = v49 > 5;
          v50 = (1 << v49) & 0x23;
          if (!v27 && v50 != 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v48, 1, v63);
          v13 = 79;
          goto LABEL_125;
        case 'P':
          if (v7[BYTE4(v11)] - 184 > 0x13 || ((1 << (v7[BYTE4(v11)] + 72)) & 0xC2801) == 0)
          {
            continue;
          }

          goto LABEL_98;
        case 'Q':
          v25 = v7[BYTE4(v11)];
          if ((v25 - 166) > 7 || ((1 << (v25 + 90)) & 0x91) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v25, 0, v63);
          v13 = 81;
          goto LABEL_125;
        case 'R':
          v23 = v7[BYTE4(v11)];
          if ((v23 - 195) > 4 || ((1 << (v23 + 61)) & 0x15) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v23, 0, v63);
          v13 = 82;
          goto LABEL_125;
        case 'S':
          v43 = v7[BYTE4(v11)];
          if ((v43 - 174) > 0x1B || ((1 << (v43 + 82)) & 0x8000003) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v43, 1, v63);
          v13 = 83;
          goto LABEL_125;
        case 'T':
          if ((v7[BYTE4(v11)] & 0xFC) == 0xE8)
          {
LABEL_98:
            v9.i32[1] = 1;
            *&v11 = vadd_s32(*&v11, 0x100000001);
          }

          else
          {
            if (psrules[61 * v4[5] + 60] == 78)
            {
              v21 = v11 + 1;
            }

            else
            {
              v21 = v11;
            }

            LODWORD(v11) = v21;
          }

          continue;
        case 'U':
          v16 = v7[BYTE4(v11)];
          if ((v16 + 49) < 0xD2u || (v16 | 4) == 0xC7)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v16, 1, v63);
          v13 = 85;
          goto LABEL_125;
        case 'W':
          v53 = v7[BYTE4(v11)];
          if (v53 == -62 || (v53 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v53, 1, v63);
          v13 = 87;
          goto LABEL_125;
        case 'X':
          v17 = v7[BYTE4(v11)];
          if ((v17 + 95) > 0x2D)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v17, 0, v63);
          v13 = 88;
          goto LABEL_125;
        case 'Y':
          v52 = v7[BYTE4(v11)];
          if ((v52 + 95) > 0x2D)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v52, 1, v63);
          v13 = 89;
          goto LABEL_125;
        case 'Z':
          v32 = v7[BYTE4(v11)];
          if (v32 == -57 || (v32 + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v61 = v11;
          contable(v32, 1, v63);
          v13 = 90;
LABEL_125:
          replace(v13, v63, __dst);
          v11 = v61;
          continue;
        case 'a':
          v14 = &v7[BYTE4(v11)];
          v15 = 209;
          goto LABEL_65;
        case 'b':
          v14 = &v7[BYTE4(v11)];
          v15 = 212;
          goto LABEL_65;
        case 'c':
          v14 = &v7[BYTE4(v11)];
          v15 = 213;
          goto LABEL_65;
        case 'd':
          v14 = &v7[BYTE4(v11)];
          v15 = 214;
          goto LABEL_65;
        case 'e':
          v14 = &v7[BYTE4(v11)];
          v15 = 215;
          goto LABEL_65;
        case 'f':
          v14 = &v7[BYTE4(v11)];
          v15 = 216;
          goto LABEL_65;
        case 'g':
          v14 = &v7[BYTE4(v11)];
          v15 = 217;
          goto LABEL_65;
        case 'h':
          v14 = &v7[BYTE4(v11)];
          v15 = 211;
          goto LABEL_65;
        case 'i':
          v14 = &v7[BYTE4(v11)];
          v15 = 231;
          goto LABEL_65;
        case 'j':
          v14 = &v7[BYTE4(v11)];
          v15 = 236;
LABEL_65:
          v9.i32[0] = v15;
          v10.i8[0] = *v14;
          v9 = vdup_lane_s32(vceq_s32(vand_s8(v10, 0xFF000000FFLL), vand_s8(v9, 0xFF000000FFLL)), 0);
          *&v11 = vsub_s32(*&v11, v9);
          continue;
        default:
          if (!psrules[61 * v4[5] + v11])
          {
            v59 = tone(__dst, v4 + 6);
            if (v59 == 57)
            {
              v60 = 51;
            }

            else
            {
              v60 = v59;
            }

            __s2[0] = v60;
            __s2[1] = 0;
            cstdlib_strcat(__dst, __s2);
            if (!cstdlib_strcmp(__dst, "!0"))
            {
              __dst[0] = 0;
            }

            cstdlib_strcpy(v6, __dst);
            transform(v6, v4 + 6);
            return 0;
          }

LABEL_127:
          if (psrules[61 * v4[5] + v11] != v7[BYTE4(v11)])
          {
            return 0xFFFFFFFFLL;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          break;
      }
    }
  }

  if (cstdlib_strlen(v4 + 6) == 1)
  {
    ReadThaiChar(*v7, v6);
    return 1;
  }

  v54 = cstdlib_strlen(v4 + 6);
  *v6 = 0;
  if (!v54)
  {
    return 1;
  }

  v55 = v54;
  for (i = 0; i != v55; ++i)
  {
    if (cchar_dct)
    {
      v57 = &unk_26ECDC615;
      v58 = cchar_dct;
      while (*(v57 - 1) != v7[i])
      {
        v57 += 51;
        if (!--v58)
        {
          goto LABEL_137;
        }
      }

      cstdlib_strcat(v6, v57);
    }

LABEL_137:
    result = 1;
  }

  return result;
}