uint64_t wordpar_loc_asian_InsertSpaceBeforeTNMarkers(uint64_t a1, uint64_t a2, const char **a3)
{
  v3 = a3;
  v6 = *a3;
  v7 = strlen(*a3);
  v88 = 0;
  v84 = a2;
  v8 = datac_RequestBlock(a2, 1021, 1u, &v88);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  result = 2370838528;
  v10 = *(v88 + 16);
  if (*(v88 + 16))
  {
    v11 = v7;
    v12 = *(v88 + 8);
    if (v12[5] == 0x4000)
    {
      if (v10 != 1)
      {
        v86 = 0;
        v87 = 0;
        v13 = -1;
        v14 = 1;
        v85 = 24;
        do
        {
          v15 = &v12[16 * v14];
          v16 = v15[8];
          v17 = v12[8];
          v18 = v15[5];
          if (v18 == 7)
          {
            v20 = (v16 - v17);
            v19 = v15[10] == 16;
          }

          else
          {
            v19 = v18 == 21;
            v20 = (v16 - v17);
          }

          v21 = !v19 || v20 == 0;
          if (!v21 && v6[v20 - 1] != 32 && v6[v20] != 32)
          {
            v22 = v86;
            do
            {
              if (!v22)
              {
                break;
              }

              v23 = *(v12 + v22 + 20);
              if (v23 == 34)
              {
                goto LABEL_18;
              }

              v22 -= 64;
            }

            while (v23 != 21);
            __s1 = v11;
            v80 = v20;
            v83 = v20;
            v71 = a1;
            v72 = v13;
            v24 = *(a1 + 8);
            v25 = v11;
            v26 = heap_Realloc(v24, v6, v11 + 2);
            if (v26)
            {
              v27 = v26;
            }

            else
            {
              v27 = v6;
            }

            v73 = v27;
            if (!v26)
            {
              return 2370838538;
            }

            v28 = v26;
            v70 = v3;
            memmove((v26 + v83 + 1), &v80[v26], (v25 - v83));
            LODWORD(v29) = 0;
            v80[v28] = 32;
            v69 = __s1 + 1;
            *(v28 + (__s1 + 1)) = 0;
            if ((__s1 + 1) > (v83 + 1))
            {
              v29 = 0;
              do
              {
                if (v73[(v83 + 1) + v29] == 32)
                {
                  break;
                }

                ++v29;
              }

              while ((__s1 + v17 - v16) != v29);
            }

            v30 = v83;
            if (v14 < v10)
            {
              v31 = &v12[v85];
              v32 = v72 + v10;
              do
              {
                if (*v31 >= v15[8])
                {
                  ++*v31;
                }

                v31 += 16;
                --v32;
              }

              while (v32);
            }

            ++v12[9];
            v33 = 1;
            v34 = v10;
            do
            {
              if (v33 >= v34)
              {
                break;
              }

              v35 = v33;
              v36 = &v12[16 * v33];
              v37 = v36[5];
              while (v37 == 1)
              {
                v38 = v12[8] + v30;
                v39 = v36[8];
                if (v38 <= v39)
                {
                  break;
                }

                v40 = v36[9] + v39;
                v41 = v40 - v38;
                if (v40 <= v38)
                {
                  break;
                }

                v42 = v33;
                if (v33 >= v34)
                {
                  goto LABEL_48;
                }

                v43 = &v12[16 * v33 + 5];
                v44 = v33;
                v45 = v43;
                while (1)
                {
                  v46 = *v45;
                  v45 += 16;
                  if (v46 == 21 && *(v43 + 12) > v39)
                  {
                    break;
                  }

                  ++v44;
                  v43 = v45;
                  if (v34 == v44)
                  {
                    goto LABEL_48;
                  }
                }

                if (v44 && ((v62 = &v12[16 * v44], __s1a = *(v62 + 5), v81 = (v62 + 10), MarkerArgStr = marker_getMarkerArgStr(3u), !strcmp(__s1a, MarkerArgStr)) || (__s1b = *v81, v64 = marker_getMarkerArgStr(4u), !strncmp(__s1b, v64, 6uLL)) || (__s1c = *v81, v65 = marker_getMarkerArgStr(6u), !strcmp(__s1c, v65)) || (__s1d = *v81, v66 = marker_getMarkerArgStr(7u), !strcmp(__s1d, v66)) || (__s1e = *v81, v67 = marker_getMarkerArgStr(8u), !strcmp(__s1e, v67)) || (v82 = *v81, v68 = marker_getMarkerArgStr(5u), !strcmp(v82, v68))))
                {
                  v30 = v83;
                  v36[9] = v12[8] + v83 - v36[8];
                }

                else
                {
LABEL_48:
                  if (v14 > v33)
                  {
                    v47 = v33 + (v87 - v33) + 1;
                    v48 = &v12[16 * v33 + 8];
                    while (1)
                    {
                      v49 = *v48;
                      v48 += 16;
                      if (v49 >= v12[16 * v14 + 8])
                      {
                        break;
                      }

                      if (v14 == ++v42)
                      {
                        LOWORD(v42) = v14;
                        goto LABEL_54;
                      }
                    }

                    v47 = v42;
LABEL_54:
                    v33 = v42;
                    v42 = v47;
                  }

                  v8 = datac_RequestBlock(v84, 1021, (*(v88 + 16) + 1), &v88);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v12 = *(v88 + 8);
                  v50 = &v12[16 * v42];
                  memmove(v50 + 4, v50, (v34 - v42) << 6);
                  v51 = &v12[16 * v35];
                  v52 = *v51;
                  v53 = *(v51 + 1);
                  v54 = *(v51 + 3);
                  v50[2] = *(v51 + 2);
                  v50[3] = v54;
                  *v50 = v52;
                  v50[1] = v53;
                  v55 = *(v88 + 16);
                  v34 = (v55 + 1);
                  *(v88 + 16) = v55 + 1;
                  v56 = v51[9];
                  v57 = v56 >= v41;
                  v58 = v56 - v41;
                  if (!v57)
                  {
                    v58 = 0;
                  }

                  v51[9] = v58;
                  v60 = v51[6];
                  v59 = v51[7];
                  v57 = v59 >= v41;
                  v61 = v59 - v41;
                  if (!v57)
                  {
                    v61 = 0;
                  }

                  v51[7] = v61;
                  *(v50 + 8) = v12[16 * v14 + 24];
                  *(v50 + 9) = v29;
                  *(v50 + 6) = v60 + v61;
                  *(v50 + 7) = v41;
                  v42 = v33;
                  v30 = v83;
                }

                v36 = &v12[16 * v42];
                v37 = v36[5];
                v35 = v42;
              }

              ++v33;
            }

            while (v12[16 * v33 + 8] <= v12[8] + v30);
            v3 = v70;
            v11 = v69;
            v10 = v34;
            v13 = v72;
            v6 = v73;
            a1 = v71;
          }

LABEL_18:
          ++v14;
          ++v87;
          v85 += 16;
          v86 += 64;
          --v13;
        }

        while (v14 < v10);
      }

      *v3 = v6;
      return v8;
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_HandleExtendedToi(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v4 = a4;
  v7 = *a4;
  v34 = 0;
  v8 = *(a3 + 8);
  result = datac_RequestBlock(a2, 1012, 1u, &v34);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a3 + 16);
    if (v10 < 2)
    {
LABEL_20:
      result = 0;
      *v4 = v7;
      return result;
    }

    v11 = 1;
    LOWORD(v12) = 1;
    while (1)
    {
      v13 = v8 + (v12 << 6);
      if (*(v13 + 20) == 34)
      {
        v14 = *(v13 + 48);
        if (v14)
        {
          v15 = *(v13 + 32);
          v16 = *(v8 + 32);
          v17 = (v11 + 1);
          LOWORD(v12) = v11 + 1;
          if (v10 > (v11 + 1))
          {
            v12 = (v11 + 1);
            v18 = (v8 + 20 + (v12 << 6));
            while (1)
            {
              v19 = *v18;
              v18 += 16;
              if (v19 == 21)
              {
                break;
              }

              if (v10 == ++v12)
              {
                goto LABEL_21;
              }
            }
          }

          if (v12 == v10)
          {
LABEL_21:
            heap_Free(*(a1 + 8), v14);
            *(v13 + 48) = 0;
            log_OutPublic(*(a1 + 32), "PP_WORD_PARSER", 1929, 0);
            return 2370838528;
          }

          if (*(v13 + 56))
          {
            heap_Free(*(a1 + 8), v14);
            *(v13 + 48) = 0;
            LOWORD(v10) = *(a3 + 16);
          }

          else
          {
            v32 = v4;
            v33 = a1;
            v20 = v15 - v16;
            v31 = v15 - v16;
            __dst = (v8 + (v12 << 6));
            v21 = __dst[8] - v16;
            v22 = strlen(v7);
            v23 = v20;
            v24 = v21;
            memmove(&v7[v23], &v7[v21], v22 - v21 + 1);
            v25 = strlen(v7);
            *(v8 + 36) = v25;
            v26 = v31 - v21;
            a1 = v33;
            wordpar_loc_adjustMarkerPositions(*(a3 + 16), v8, 1u, v24, v25, v26);
            heap_Free(*(v33 + 8), *(v13 + 48));
            *(v13 + 48) = 0;
            v27 = *(a3 + 16);
            if (v17 != v27)
            {
              memmove(v13, (v8 + (v17 << 6)), (v27 - v11) << 6);
              LOWORD(v27) = *(a3 + 16);
            }

            v28 = v27 - 1;
            *(a3 + 16) = v28;
            v29 = v12 + 1;
            v4 = v32;
            if (v29 != v28)
            {
              memmove(__dst, (v8 + (v29 << 6)), (v28 - v12) << 6);
              v28 = *(a3 + 16);
            }

            LOWORD(v10) = v28 - 1;
            *(a3 + 16) = v10;
          }
        }
      }

      LOWORD(v12) = v12 + 1;
      v11 = v12;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t wordpar_loc_asian_deleteStrAddMarker(uint64_t a1, char *__s, char *a3, uint64_t a4, int a5)
{
  v5 = a4;
  v53 = a4;
  v8 = strlen(__s);
  v52 = v8;
  v9 = strlen(a3);
  v10 = v9;
  v11 = *(v5 + 8);
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v9;
    v49 = v8;
    v47 = v9;
    v48 = v8;
    while (1)
    {
      if (!__s[v12])
      {
        goto LABEL_46;
      }

      if (__s[v12] == *a3)
      {
        v16 = v12;
        if (!v15)
        {
          break;
        }

        v17 = 0;
        LODWORD(v16) = v12;
        do
        {
          v18 = __s[v16];
          v19 = a3[v17];
          v16 = (v16 + 1);
          ++v17;
        }

        while (v18 == v19 && v15 > v17);
        if (v18 == v19)
        {
          break;
        }
      }

      v16 = (v12 + 1);
LABEL_28:
      v12 = v16;
      if (v16 >= v8)
      {
        goto LABEL_46;
      }
    }

    v21 = v11;
    v22 = datac_RequestBlock(a1, 1021, (*(v5 + 16) + 1), &v53);
    v14 = v22;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_47;
    }

    v5 = v53;
    v11 = *(v53 + 8);
    v51 = v13;
    v23 = (v12 - v13 * v10);
    v24 = *(v53 + 16);
    v25 = v11 + (v24 << 6);
    v26 = *(v11 + 32);
    if (v24 != 1 && (*(v25 - 32) - v26) > v23)
    {
      if (v24 < 2)
      {
        LOWORD(v24) = 0;
      }

      else
      {
        if (v23 < (*(v11 + 96) - v26))
        {
          v45 = v22;
          v29 = (v11 + 64);
          v30 = 1;
          v44 = 1;
          v31 = 1;
LABEL_34:
          v34 = *(v53 + 8);
          LastPosRef = wordpar_loc_asian_getLastPosRef(v11, v24, v23, v30, 1);
          memmove(v29 + 32, v29, (v24 - v44) << 6);
          v11 = v34;
          v36 = *(v53 + 8) + (v31 << 6);
          *v36 = 1;
          *(v36 + 20) = 36;
          *(v36 + 24) = LastPosRef;
          v37 = *(v34 + 32) + v23;
          *(v36 + 28) = 0;
          *(v36 + 32) = v37;
          *(v36 + 16) = 0;
          *(v36 + 8) = 0;
          *(v36 + 36) = 0;
          *(v36 + 40) = a5;
          *(v36 + 48) = 0;
          v5 = v53;
          LOWORD(v24) = *(v53 + 16);
          if (v24)
          {
            if ((v24 + 1) <= 2u)
            {
              v38 = 2;
            }

            else
            {
              v38 = (v24 + 1);
            }

            v39 = (v34 + 96);
            v40 = v38 - 1;
            v10 = v47;
            v8 = v48;
            do
            {
              if (*v39 > *(v36 + 32))
              {
                *v39 -= v15;
              }

              v39 += 16;
              --v40;
            }

            while (v40);
          }

          else
          {
            v10 = v47;
            v8 = v48;
          }

          v14 = v45;
          goto LABEL_27;
        }

        v30 = 1;
        while (v24 > ++v30)
        {
          v31 = v30;
          v29 = (v11 + (v30 << 6));
          if (v23 < (v29[16] - v26))
          {
            v45 = v22;
            v44 = v30;
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      *(v25 + 20) = 36;
      *v25 = 1;
      if (v24 == 1)
      {
        v28 = *(v11 + 28) + *(v11 + 24);
      }

      else
      {
        v32 = v11;
        v33 = v22;
        v28 = wordpar_loc_asian_getLastPosRef(v11, v24, v23, (v24 - 1), 1);
        v14 = v33;
        v11 = v32;
      }

      *(v25 + 24) = v28;
      *(v25 + 28) = 0;
      *(v25 + 32) = v26 + v23;
      *(v25 + 36) = 0;
      *(v25 + 16) = 0;
      *(v25 + 8) = 0;
      *(v25 + 40) = a5;
      *(v25 + 48) = 0;
      v5 = v53;
      LOWORD(v24) = *(v53 + 16);
    }

    v10 = v47;
    v8 = v48;
LABEL_27:
    *(v5 + 16) = v24 + 1;
    *(v11 + 36) = v49;
    v13 = v51 + 1;
    goto LABEL_28;
  }

  v14 = 0;
LABEL_46:
  v21 = v11;
  v41 = a3;
  v42 = v14;
  wordpar_loc_asian_adjustText(__s, v41, v10, &v52);
  v14 = v42;
  v8 = v52;
LABEL_47:
  *(v21 + 36) = v8;
  return v14;
}

_BYTE *wordpar_loc_asian_deleteStr(uint64_t a1, char *__s, char *a3)
{
  v6 = strlen(__s);
  v24 = v6;
  v7 = strlen(a3);
  v8 = *(a1 + 8);
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (!__s[v10])
      {
        break;
      }

      if (__s[v10] == *a3)
      {
        if (!v7)
        {
          v13 = v10;
LABEL_14:
          v17 = *(a1 + 16);
          if (v17 >= 2)
          {
            v18 = v9 - v7 * v11;
            v19 = v17 - 1;
            v20 = 1;
            v21 = v8 + 24;
            while (v18 >= (LOWORD(v8[16 * v20 + 8]) - v8[8]))
            {
              ++v20;
              v21 += 16;
              --v19;
              if (v20 >= v17)
              {
                goto LABEL_23;
              }
            }

            if (v20 < v17)
            {
              do
              {
                v22 = *v21 - v7;
                if (v7 > (*v21 - v8[8]))
                {
                  v22 = v8[8];
                }

                *v21 = v22;
                v21 += 16;
                --v19;
              }

              while (v19);
            }
          }

LABEL_23:
          ++v11;
          goto LABEL_24;
        }

        v12 = 0;
        LODWORD(v13) = v10;
        do
        {
          v14 = __s[v13];
          v15 = a3[v12];
          v13 = (v13 + 1);
          ++v12;
        }

        while (v14 == v15 && v7 > v12);
        if (v14 == v15)
        {
          goto LABEL_14;
        }
      }

      v13 = (v10 + 1);
LABEL_24:
      v9 = v13;
      v10 = v13;
    }

    while (v13 < v6);
  }

  result = wordpar_loc_asian_adjustText(__s, a3, v7, &v24);
  v8[9] = v24;
  return result;
}

uint64_t wordpar_loc_asian_replaceStrWithStr(uint64_t a1, char *__s, const char *a3, int a4)
{
  result = strlen(__s);
  v28 = a1;
  v9 = *(a1 + 8);
  v10 = result;
  if (result)
  {
    v27 = a3;
    result = strlen(a3);
    v11 = 0;
    v12 = 0;
    v13 = (result - 1);
    v25 = &__s[(result - 1)];
    v26 = result;
    do
    {
      v14 = &__s[v11];
      if (!*v14 || a4 == 1 && v11)
      {
        break;
      }

      if (*v14 == 16)
      {
        v15 = v13 + strlen(__s);
        memmove(&v25[v11 + 1], &__s[v11 + 1], v10 - v11);
        result = memcpy(&__s[v11], v27, v26);
        __s[v15] = 0;
        v16 = *(v28 + 16);
        if (v16 >= 2)
        {
          v17 = 1;
          while (1)
          {
            v18 = v17;
            v19 = (v9 + 32 + (v17 << 6));
            v20 = *v19;
            v21 = *v19 - *(v9 + 32);
            if (v11 && v11 == (*v19 - *(v9 + 32)))
            {
              do
              {
                if (*(v9 + (v18 << 6) + 20) != 36)
                {
                  break;
                }

                *v19 = v20 + 1;
                v18 = ++v17;
                v19 = (v9 + 32 + (v17 << 6));
                v20 = *v19;
                LOWORD(v21) = *v19 - *(v9 + 32);
              }

              while (v11 == v21);
            }

            if (v11 < v21)
            {
              break;
            }

            if (v16 <= ++v17)
            {
              goto LABEL_19;
            }
          }

          if (v16 > v17)
          {
            v22 = v17;
            v23 = (v9 + 32 + (v17 << 6));
            v24 = v16 - v22;
            do
            {
              *v23 += v13;
              v23 += 16;
              --v24;
            }

            while (v24);
          }
        }

LABEL_19:
        v10 = v15;
        ++v12;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  *(v9 + 36) = v10;
  return result;
}

uint64_t wordpar_loc_asian_getLastPosRef(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  result = a1[6];
  if (a2 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    v8 = 0;
    v9 = a1[8];
    v10 = a2 - 1;
    v11 = a1 + 24;
    LOWORD(v12) = v9;
    while (a3 > (v12 - v9))
    {
      if (a2 - 1 == v8)
      {
        goto LABEL_12;
      }

      v12 = *v11;
      if (a3 <= (*v11 - v9))
      {
        break;
      }

      ++v8;
      v11 += 16;
      if (v7 == v8)
      {
        v10 = v7;
        goto LABEL_12;
      }
    }

    v10 = v8;
LABEL_12:
    if (v10)
    {
      v13 = &a1[16 * v10];
      if (a5 == 1 && ((v14 = v13[5], v14 != 41) ? (v15 = v14 == 1) : (v15 = 1), v15))
      {
        return v13[6];
      }

      else
      {
        return v13[7] + v13[6];
      }
    }
  }

  return result;
}

_BYTE *wordpar_loc_asian_adjustText(_BYTE *result, unsigned __int8 *a2, unsigned int a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v11 = a3;
    do
    {
      result = &v8[v10];
      if (!*result)
      {
        return result;
      }

      if (*result == *a2)
      {
        if (!a3)
        {
          v14 = v10;
LABEL_15:
          result = memmove(result, &v8[v9 + a3], (v4 - (v9 + a3) + 1));
          v4 = *a4 - a3;
          *a4 = v4;
          v10 = v14 - a3;
          goto LABEL_16;
        }

        v12 = 1;
        v13 = a2;
        v14 = v10;
        do
        {
          v15 = v8[v14];
          v17 = *v13++;
          v16 = v17;
          ++v14;
        }

        while (v15 == v17 && v12++ < v11);
        if (v15 == v16)
        {
          goto LABEL_15;
        }
      }

      ++v10;
LABEL_16:
      v9 = v10;
    }

    while (v10 < v4);
  }

  return result;
}

BOOL wordpar_loc_asian_isMarkerUnknown(uint64_t a1)
{
  if (*(a1 + 20) != 36)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  MarkerArgStr = marker_getMarkerArgStr(9u);
  return strcmp(v1, MarkerArgStr) == 0;
}

BOOL bed_marker_IsOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a1;
    v4 = *(a2 + 20);
    if (*a1)
    {
      v5 = 0;
      while (v4 != v3)
      {
        v3 = a1[++v5];
        if (!v3)
        {
          return v4 == v3;
        }
      }

      v3 = *(a2 + 20);
    }

    return v4 == v3;
  }

  return v2;
}

BOOL bed_marker_IsToiOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 20) == 7)
    {
      v3 = *a1;
      v4 = *(a2 + 40);
      if (*a1)
      {
        v5 = 0;
        while (v4 != v3)
        {
          v3 = a1[++v5];
          if (!v3)
          {
            return v4 == v3;
          }
        }

        v3 = *(a2 + 40);
      }

      return v4 == v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL bed_marker_IsToiNotOfType(int *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (*(a2 + 20) == 7)
    {
      v3 = *a1;
      v4 = *(a2 + 40);
      if (*a1)
      {
        v5 = 0;
        while (v4 != v3)
        {
          v3 = a1[++v5];
          if (!v3)
          {
            return v4 != v3;
          }
        }

        v3 = *(a2 + 40);
      }

      return v4 != v3;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t bed_marker_IsAt(_WORD *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      result = 0;
      --*a1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t bed_marker_MapPosCur(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v13 = 0;
  result = 2370838535;
  if (a1 && a3)
  {
    v12 = 0;
    *a3 = a2;
    LODWORD(result) = bed_GetpElem(a1, 0, &v13);
    if ((result & 0x80000000) != 0)
    {
      if ((result & 0x1FFF) == 0xF)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {
      result = bed_GetcElem(a1, &v12);
      if ((result & 0x80000000) == 0)
      {
        v7 = v12;
        if (!v12)
        {
          return 0;
        }

        v8 = 0;
        v9 = v13;
        do
        {
          v10 = v9[8];
          if (v10 > a2)
          {
            break;
          }

          if (!*v9)
          {
            v11 = v9[9] + v10;
            if (v11 <= a2 && (!v8 || v8[9] + v8[8] <= v11 && v8[7] + v8[6] <= (v9[7] + v9[6])))
            {
              v8 = v9;
            }
          }

          v9 += 16;
          --v7;
        }

        while (v7);
        if (v8)
        {
          result = 0;
          *a3 += v8[7] + v8[6] - (v8[8] + v8[9]);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t bed_marker_InjectFixedRefMarker(uint64_t a1, void *a2)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      result = bed_GoForward(a1, bed_marker_HasGreaterOrEqualPosCur, a2);
      if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
      {
        v5 = bed_Insert(a1, a2, 1);
        return v5 & (v5 >> 31);
      }
    }
  }

  return result;
}

BOOL bed_marker_HasGreaterOrEqualPosCur(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = v4 > v5;
    if (v4 == v5)
    {
      v6 = *(a1 + 36) > *(a2 + 36);
    }

    return !v6;
  }

  return result;
}

uint64_t freeMERDefs(uint64_t a1)
{
  if (*(a1 + 88))
  {
    log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] free MER definitions");
    v2 = *(a1 + 96);
    if (v2)
    {
      if (*(a1 + 88))
      {
        v3 = 0;
        v4 = 0;
        do
        {
          if (*(v2 + v3 + 16))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v2 + v3 + 16));
            v2 = *(a1 + 96);
            *(v2 + v3 + 16) = 0;
          }

          if (*(v2 + v3 + 32))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v2 + v3 + 32));
            v2 = *(a1 + 96);
            *(v2 + v3 + 32) = 0;
          }

          if (*(v2 + v3 + 48))
          {
            heap_Free(*(*(a1 + 16) + 8), *(v2 + v3 + 48));
            v2 = *(a1 + 96);
            *(v2 + v3 + 48) = 0;
          }

          ++v4;
          v3 += 64;
        }

        while (v4 < *(a1 + 88));
      }

      heap_Free(*(*(a1 + 16) + 8), v2);
      *(a1 + 96) = 0;
    }

    *(a1 + 88) = 0;
  }

  return 0;
}

uint64_t getMERDefs(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*(a1 + 88))
  {
    freeMERDefs(a1);
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get MER definitions");
  v6 = *a4;
  *(a1 + 88) = v6;
  v7 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v6 << 6) | 1);
  *(a1 + 96) = v7;
  if (v7)
  {
    v8 = *(a1 + 88);
    if (*(a1 + 88))
    {
      v9 = v7;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v12 = 0;
        v13 = (v9 + (v10 << 6));
        *v13 = a4[v11];
        v13[1] = a4[v11 + 1];
        v14 = a4[v11 + 2];
        v11 += 3;
        v13[14] = v14;
        while (1)
        {
          v15 = a4[v11++];
          if (v15)
          {
            v16 = heap_Calloc(*(*(a1 + 16) + 8), 1, (4 * v15) | 1);
            if (!v16)
            {
              goto LABEL_21;
            }

            v17 = 0;
            do
            {
              v18 = a4[v11++];
              *(v16 + v17) = v18;
              v17 += 4;
            }

            while (4 * v15 != v17);
          }

          else
          {
            v16 = 0;
          }

          v9 = *(a1 + 96);
          if (v12)
          {
            break;
          }

          v21 = v9 + (v10 << 6);
          *(v21 + 8) = v15;
          v20 = (v21 + 16);
LABEL_17:
          *v20 = v16;
          ++v12;
        }

        v19 = v9 + (v10 << 6);
        if (v12 == 1)
        {
          break;
        }

        v8 = 0;
        *(v19 + 40) = v15;
        *(v19 + 48) = v16;
        if (++v10 >= *(a1 + 88))
        {
          return v8;
        }
      }

      *(v19 + 24) = v15;
      v20 = (v19 + 32);
      goto LABEL_17;
    }
  }

  else
  {
    *(a1 + 88) = 0;
LABEL_21:
    freeMERDefs(a1);
    return 2370838538;
  }

  return v8;
}

uint64_t freeSYMDefs(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] free SYM definitions");
  v2 = *(a1 + 72);
  if (v2)
  {
    heap_Free(*(*(a1 + 16) + 8), v2);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = *(a1 + 40);
  if (result)
  {
    result = ssftriff_reader_ReleaseChunkData(result);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getSYMDefs(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v17 = a4;
  if (*(a1 + 64))
  {
    return 0;
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get SYM definitions");
  v8 = a4[1] + 8;
  v9 = v8 + *a4;
  v10 = *(a4 + v9);
  *(a1 + 64) = v10;
  v11 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * v10) | 1);
  *(a1 + 72) = v11;
  if (v11)
  {
    v12 = *(a1 + 64);
    if (*(a1 + 64))
    {
      v13 = v9 + 2;
      v14 = (v11 + 4);
      do
      {
        v15 = *(a4 + v13);
        v16 = *(a4 + v13 + 2);
        v13 += 6;
        *(v14 - 1) = v16;
        *v14 = v15;
        v14 += 2;
        --v12;
      }

      while (v12);
    }

    result = ssftriff_reader_DetachChunkData(a2, (a1 + 40), &v17);
    if ((result & 0x80000000) == 0)
    {
      *(a1 + 80) = v17 + v8;
    }
  }

  else
  {
    freeSYMDefs(a1);
    return 2370838538;
  }

  return result;
}

uint64_t wparser_ObjOpen2(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34[8] = *MEMORY[0x1E69E9840];
  v15 = 2370838535;
  v33 = 0;
  v32 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v33) & 0x80000000) == 0)
  {
    *a5 = 0;
    v24 = heap_Alloc(*(v33 + 8), 144);
    if (v24)
    {
      v25 = v24;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 112) = 0u;
      *(v24 + 128) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *v24 = a1;
      *(v24 + 8) = a2;
      v26 = v33;
      *(v24 + 16) = v33;
      *(v24 + 80) = 0;
      *(v24 + 88) = 0;
      *(v24 + 64) = 0;
      *(v24 + 72) = 0;
      *(v24 + 40) = 0;
      *(v24 + 48) = a3;
      *(v24 + 56) = a4;
      *(v24 + 32) = a12;
      *(v24 + 96) = 0;
      *(v24 + 104) = a6;
      *(v24 + 112) = a7;
      *(v24 + 120) = a8;
      *(v24 + 128) = 0;
      *(v24 + 138) = 512;
      if ((paramc_ParamGetUInt(*(v26 + 40), "udctmaxlookuplen", &v32) & 0x80000000) == 0)
      {
        *(v25 + 138) = v32;
      }

      *(v25 + 136) = 512;
      if ((paramc_ParamGetUInt(*(v33 + 40), "udctmaxdictretlen", &v32) & 0x80000000) == 0)
      {
        *(v25 + 136) = v32;
      }

      *(v25 + 140) = 1;
      if ((paramc_ParamGetUInt(*(v33 + 40), "numberoutputtranscriptions", &v32) & 0x80000000) != 0)
      {
        v28 = *(v25 + 140);
      }

      else
      {
        v28 = v32;
        *(v25 + 140) = v32;
      }

      HIDWORD(v29) = *(v25 + 136);
      LODWORD(v29) = HIDWORD(v29);
      v30 = utoin_ObjOpen(a1, a2, (v25 + 24), a6, a7, a8, a9, v27, a10, a11, a13, a14, a15, SHIWORD(v29), (v29 >> 16) >> 16, v28);
      if ((v30 & 0x80000000) != 0 || (v34[0] = "SYMD", v34[1] = getSYMDefs, v34[2] = freeSYMDefs, v34[3] = v25, v34[4] = "MERR", v34[5] = getMERDefs, v34[6] = freeMERDefs, v34[7] = v25, v30 = extdata_RegisterData(a12, v34, 2u), (v30 & 0x80000000) != 0))
      {
        v15 = v30;
        wparser_ObjClose2(v25);
      }

      else
      {
        v15 = 0;
        *a5 = v25;
      }
    }

    else
    {
      return 2370838538;
    }
  }

  return v15;
}

uint64_t wparser_ObjClose2(uint64_t a1)
{
  v1 = 2370838535;
  v5 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v5) & 0x80000000) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      utoin_ObjClose(v3);
    }

    heap_Free(*(v5 + 8), a1);
    return 0;
  }

  return v1;
}

uint64_t wparser_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v6) & 0x80000000) == 0)
  {
    if (*(a1 + 64))
    {
      v3 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 128), 0);
      if ((v3 & 0x80000000) != 0)
      {
        return v3;
      }

      else
      {
        v4 = utoin_ProcessStart(*(a1 + 24));
        return v4 & (v4 >> 31);
      }
    }

    else
    {
      log_OutPublic(*(v6 + 32), &modPP_2, 1810, 0);
    }
  }

  return v1;
}

uint64_t wparser_ProcessEnd(void *a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  if (a1[16])
  {
    paramc_ParamRelease(*(a1[2] + 40));
  }

  v2 = utoin_ProcessEnd(a1[3]);
  return v2 & (v2 >> 31);
}

uint64_t wparser_NormalizeWords(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v66 = 0;
  v67 = 0;
  v5 = 2370838535;
  v65 = 0;
  if (!a1)
  {
    return v5;
  }

  if (!a2)
  {
    return v5;
  }

  v8 = a4;
  v9 = a3;
  if ((InitRsrcFunction(*a1, *(a1 + 1), &v66) & 0x80000000) != 0)
  {
    return v5;
  }

  v11 = datac_RequestBlock(a2, 1020, 1u, &v67);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!*(v67 + 16))
  {
    log_OutText(*(*(a1 + 2) + 32), &modPP_2, 5, 0, "[SEQ] wparser : no text to process");
    return v11;
  }

  v12 = bed_ObjOpen(*a1, *(a1 + 1), a2, 1021, &v65, 213);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v68 = 0;
  v13 = datac_RequestBlock(a2, 1021, 1u, &v68);
  if ((v13 & 0x80000000) != 0)
  {
    v25 = v13;
    LOWORD(v22) = 0;
    goto LABEL_23;
  }

  v14 = *(v68 + 8);
  v15 = *(v68 + 16);
  if (v15 < 2)
  {
    goto LABEL_39;
  }

  v16 = v14 + 26;
  v17 = *(v68 + 16);
LABEL_10:
  v18 = v16;
  v19 = 1;
  do
  {
    if (*(v18 - 5) == 999 && *(v18 - 2) == v14[8] && !*v18)
    {
      v20 = v19 + 1;
      if (v20 < v17)
      {
        v21 = v16;
        memmove(v18 - 10, &v14[16 * v20], (v17 - v19) << 6);
        v16 = v21;
      }

      LOWORD(v22) = 0;
      v23 = 0;
      v24 = 0;
      --v17;
      v15 = 1;
      if ((v17 & 0xFFFE) == 0)
      {
LABEL_59:
        *(v68 + 16) = v15;
        v51 = v14[6] + v9;
        v52 = v14[7] - v9;
        v14[6] = v51;
        v14[7] = v52;
        if (v24)
        {
          v53 = v14 + 38;
          v54 = 1;
          v55 = 3;
          do
          {
            v56 = &v14[16 * v54];
            if (v56[5] != 0x4000 && !*v56 && v56[6] > v51)
            {
              if (v54 + 1 < v15)
              {
                v57 = v53;
                v58 = v55;
                do
                {
                  if (!*(v57 - 6))
                  {
                    *v57 -= v56[7];
                  }

                  v32 = v15 == v58++;
                  v57 += 16;
                }

                while (!v32);
              }

              v56[7] = 0;
            }

            ++v54;
            ++v55;
            v53 += 16;
          }

          while (v54 != v15);
        }

        v59 = v23;
        v60 = *(a1 + 13);
        v61 = log_GetLogLevel(*(*(a1 + 2) + 32)) > 4;
        v62 = utois_ScanRegions(v60, *(a1 + 14), *(a1 + 15), v61, *a1, *(a1 + 1), a2, a1 + 32, *(a1 + 6), *(a1 + 7), *(a1 + 16), *(a1 + 34), HIWORD(*(a1 + 34)), a1[70]);
        v5 = v62;
        if ((v62 & 0x80000000) != 0 && (v62 & 0x1FFF) != 0xA)
        {
          return v5;
        }

        v12 = utoin_NormalizeRegions(*(a1 + 3), a2, a1 + 44);
        if ((v12 & 0x80000000) == 0)
        {
          v63 = wparser_loc_ReSyncOut(a1, a2, v9, v8, v59, v22);
          v26 = v59;
          v25 = v63;
          goto LABEL_76;
        }

        return v12;
      }

      goto LABEL_10;
    }

    ++v19;
    v18 += 16;
  }

  while (v17 != v19);
  v15 = v17;
  if (v17 < 2)
  {
LABEL_39:
    LOWORD(v22) = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_59;
  }

  LOWORD(v22) = 0;
  v27 = v17 - 1;
  v28 = v14 + 16;
  do
  {
    v29 = v28[5];
    if (v29 != 0x4000 && !*v28 || v28[6] == v14[6] && ((v30 = v29 > 0x24, v31 = (1 << v29) & 0x1080200080, !v30) ? (v32 = v31 == 0) : (v32 = 1), !v32 && *v28 == 1))
    {
      LOWORD(v22) = v22 + 1;
    }

    v28 += 16;
    --v27;
  }

  while (v27);
  if (!v22)
  {
    v23 = 0;
    goto LABEL_41;
  }

  v23 = heap_Calloc(*(*(a1 + 2) + 8), 1, (v22 << 6) | 1);
  if (v23)
  {
LABEL_41:
    v22 = 0;
    v33 = 0;
    v34 = v17 - 1;
    v35 = v14 + 23;
    while (1)
    {
      v36 = v35 - 7;
      v37 = *(v35 - 2);
      if (v37 == 0x4000 || *v36)
      {
        v38 = *(v35 - 1);
        if (v38 != v14[6])
        {
          goto LABEL_57;
        }

        v30 = v37 > 0x24;
        v39 = (1 << v37) & 0x1080200080;
        v40 = v30 || v39 == 0;
        if (v40 || *v36 != 1)
        {
          goto LABEL_57;
        }

        *(v35 - 1) = v38 + v9;
        v41 = (v23 + (v33 << 6));
        v42 = *v36;
        v43 = *(v35 - 3);
        v44 = *(v35 + 5);
        v41[2] = *(v35 + 1);
        v41[3] = v44;
        *v41 = v42;
        v41[1] = v43;
        ++v22;
      }

      else
      {
        v45 = (v23 + (v33 << 6));
        v46 = *v36;
        v47 = *(v35 - 3);
        v48 = *(v35 + 5);
        v45[2] = *(v35 + 1);
        v45[3] = v48;
        *v45 = v46;
        v45[1] = v47;
        ++v22;
        v49 = a5[5];
        if (v49)
        {
          if (v49 == *(v35 - 2))
          {
            v50 = a5[6];
            if (v50 == *(v35 - 1) && a5[7] == *v35)
            {
              *(v35 - 1) = (v50 + v9);
            }
          }
        }
      }

      v33 = v22;
LABEL_57:
      v35 += 16;
      if (!--v34)
      {
        v24 = 1;
        goto LABEL_59;
      }
    }
  }

  v25 = -1924128758;
LABEL_23:
  v26 = 0;
  LODWORD(v5) = 0;
LABEL_76:
  if (v22)
  {
    heap_Free(*(*(a1 + 2) + 8), v26);
  }

  if (v65)
  {
    bed_ObjClose(v65);
  }

  if ((v5 & 0x1FFF) == 0xA)
  {
    return v5;
  }

  else
  {
    return v25;
  }
}

uint64_t wparser_loc_ReSyncOut(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  v79 = 0;
  v80 = 0;
  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] ReSyncOut(refReset=%d posRefOffset=%d)", a4, a3);
  result = datac_RequestBlock(a2, 1021, 1u, &v79);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v13 = *(v79 + 8);
  v14 = *(v79 + 16);
  v15 = heap_Calloc(*(*(a1 + 16) + 8), 1, (2 * v14) | 1);
  if (!v15)
  {
    return 2370838538;
  }

  v16 = v15;
  if (!v14)
  {
    goto LABEL_52;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = &v13[16 * v17];
    v20 = v19[5];
    v21 = v20 > 0x24 || ((1 << v20) & 0x1080200080) == 0;
    if (v21 && v20 != 999)
    {
      if (*v19)
      {
        v27 = 1;
      }

      else
      {
        v27 = v18 >= a6;
      }

      if (v27)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

    if (!*v19)
    {
      if (v18 >= a6)
      {
        goto LABEL_36;
      }

LABEL_32:
      v28 = v18;
      v29 = (a5 + 20 + (v18 << 6));
      while (v20 != 999)
      {
        v30 = *v29;
        v29 += 16;
        if (v30 == v20)
        {
          break;
        }

        if (a6 == ++v28)
        {
          goto LABEL_36;
        }
      }

      ++v18;
      v31 = v28 + 1;
      goto LABEL_37;
    }

    v22 = v20 != 999 && *v19 == 1;
    if (!v22 || ((v23 = v19[6], v23 == v13[6]) ? (v24 = v18 >= a6) : (v24 = 1), v24))
    {
LABEL_36:
      v31 = 0;
      goto LABEL_37;
    }

    v25 = v18;
    v26 = (a5 + 24 + (v18 << 6));
    while (*(v26 - 1) != v20 || *v26 != v23)
    {
      ++v25;
      v26 += 16;
      if (a6 == v25)
      {
        goto LABEL_36;
      }
    }

    ++v18;
    v31 = v25 + 1;
LABEL_37:
    *(v16 + 2 * v17++) = v31;
  }

  while (v17 != v14);
  v32 = v14;
  v33 = v16;
  v34 = v13 + 7;
  do
  {
    v35 = *(v34 - 2);
    v36 = v35 > 0x24 || ((1 << v35) & 0x1080200080) == 0;
    if (!v36 || v35 == 999 || !*(v34 - 7))
    {
      v37 = *v33;
      if (*v33)
      {
        v38 = *(a5 + ((v37 - 1) << 6) + 24);
        v39 = *(a5 - 36 + (v37 << 6));
        *(v34 - 1) = v38;
        *v34 = v39;
        if (v38 == v13[6] && v13[7] + v38 >= (v38 - a3))
        {
          *(v34 - 1) = v38 - a3;
        }
      }
    }

    v34 += 16;
    ++v33;
    --v32;
  }

  while (v32);
LABEL_52:
  v40 = v13[7] + a4 + a3;
  v13[6] -= a4 + a3;
  v13[7] = v40;
  if (v14 >= 2)
  {
    v41 = v13[8];
    for (i = 1; i != v14; ++i)
    {
      v43 = &v13[16 * i];
      if (v43[8] != v41 || v43[6] > (a4 + a3 + v13[6]))
      {
        v44 = v43[5];
        if (v44 == 999 || v44 != 0x4000 && !*v43)
        {
          LOWORD(v45) = 0;
          v46 = &v13[16 * (v14 - 1) + 6];
          v47 = (v14 - 1);
          do
          {
            if (i != v47 && *(v46 - 1) != 0x4000 && *v46 >= v43[6])
            {
              LOWORD(v45) = v47;
            }

            --v47;
            v46 -= 16;
          }

          while (v47);
          v48 = v43[7];
          if (v48)
          {
            if (v14 > v45)
            {
              v45 = v45;
              v49 = &v13[16 * v45 + 6];
              do
              {
                if (i != v45 && *(v49 - 1) != 999 && *(v49 - 6) == 1 && *v49 >= v43[6])
                {
                  v50 = *v49 + v48;
                  if (v13[6] + v40 < v50)
                  {
                    break;
                  }

                  *v49 = v50;
                }

                ++v45;
                v49 += 16;
              }

              while (v45 < v14);
            }
          }
        }
      }
    }

    v51 = 1;
    while (2)
    {
      v52 = v51;
      v53 = &v13[16 * v51++];
      if (v53[5] == 41)
      {
        if (v51 < v14)
        {
          v54 = &v13[16 * v51];
          if (v54[5] == 39 && v54[8] == v53[8])
          {
            v55 = v51;
            goto LABEL_91;
          }
        }

        if (v52 >= 2 && (v55 = v52 - 1, v56 = &v13[16 * v52 - 16], v56[5] == 39))
        {
          if (v56[8] != v53[8])
          {
            v55 = 0;
          }
        }

        else
        {
          v55 = 0;
        }

        if (v51 < v14 && (v57 = &v13[16 * v51], v57[5] == 14) && v57[8] == v53[8])
        {
          v58 = v51;
        }

        else
        {
LABEL_91:
          if (v52 >= 2 && (v58 = v52 - 1, v59 = &v13[16 * v52 - 16], v59[5] == 14))
          {
            if (v59[8] != v53[8])
            {
              v58 = 0;
            }
          }

          else
          {
            v58 = 0;
          }
        }

        v60 = v53[6];
        v61 = v53[7];
        v62 = 1;
        do
        {
          v63 = &v13[16 * v62];
          v64 = v63[6];
          if (v64 > v61 + v60)
          {
            break;
          }

          if (v52 < v62)
          {
            if (v64)
            {
              if (!*v63)
              {
                v65 = v63[5];
                if (v65 != 7)
                {
                  v66 = v65 != 0x4000 && v64 >= v60;
                  if (v66 && v64 < v61 + v60)
                  {
                    v68 = v63[7] + v61;
                    if (v68 + v60 <= v13[7] + v13[6])
                    {
                      v53[7] = v68;
                      v61 = v68;
                    }

                    if (v55)
                    {
                      v13[16 * v55 + 7] = v61;
                    }

                    if (v58)
                    {
                      v13[16 * v58 + 7] = v61;
                    }
                  }
                }
              }
            }
          }

          ++v62;
        }

        while (v14 > v62);
      }

      if (v51 == v14)
      {
        break;
      }

      continue;
    }
  }

  result = datac_RequestBlock(a2, 1020, 1u, &v80);
  if ((result & 0x80000000) == 0)
  {
    if (v14 >= 2)
    {
      v69 = 1;
      v70 = 1;
      do
      {
        v71 = v70;
        v72 = &v13[16 * v70];
        if (v72[5] == 7 && v72[10] == 43)
        {
          if (v14 <= (v69 + 1))
          {
LABEL_129:
            if (*(v80 + 16) + v13[8] == v72[9] + v72[8])
            {
              v72[7] = v13[7] + v13[6] - v72[6];
              if ((datac_RequestBlock(a2, 1021, (*(v79 + 16) + 1), &v79) & 0x80000000) != 0)
              {
                break;
              }

              v13 = *(v79 + 8);
              v75 = &v13[16 * v71];
              memmove(&v13[16 * (v69 + 1)], v75, (*(v79 + 16) - v69) << 6);
              v76 = *(v79 + 8) + (v71 << 6);
              *(v76 + 104) = 15;
              *(v76 + 64) = 1;
              v77 = v75[6];
              *(v76 + 84) = 7;
              *(v76 + 88) = v77;
              v78 = v75[9] + v75[8];
              *(v76 + 92) = 0;
              *(v76 + 96) = v78;
              *(v76 + 100) = 0;
              *(v76 + 80) = 0;
              *(v76 + 72) = 0;
              *(v76 + 112) = 0;
              ++*(v79 + 16);
              v70 = v14;
            }
          }

          else
          {
            v73 = (v69 + 1);
            v74 = &v13[16 * v73 + 8];
            while (*(v74 - 3) != 999 || *v74 != v72[9] + v72[8])
            {
              LOWORD(v73) = v73 + 1;
              v74 += 16;
              if (v14 == v73)
              {
                goto LABEL_129;
              }
            }

            v72[7] = v13[16 * v73 + 7] + v13[16 * v73 + 6] - v72[6];
            v70 = v73;
          }
        }

        v69 = ++v70;
      }

      while (v70 < v14);
    }

    heap_Free(*(*(a1 + 16) + 8), v16);
    return 0;
  }

  return result;
}

uint64_t wparser_insertRegionTags(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return utoin_InsertRegions(*(a1 + 24), a2);
  }

  else
  {
    return 2370838535;
  }
}

uint64_t wparser_InsertWordMarkers(uint64_t a1, uint64_t a2, char *__s, _WORD *a4)
{
  v91 = 0;
  v92[0] = 0;
  v86 = 0;
  v85 = 0;
  v8 = strlen(__s);
  v9 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, v92, 213);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = bed_GetpElem(v92[0], 0, &v91);
  if ((v10 & 0x80000000) != 0 || (v12 = v91, v11 = v92[0], v13 = v91[1], v87 = *v91, v88 = v13, v14 = v91[3], v89 = v91[2], v90 = v14, *(v91 + 7) = 0, *(v12 + 9) = 0, v10 = bed_GetpElem(v11, 0, &v91), (v10 & 0x80000000) != 0) || (v15 = v88, v17 = v91, v16 = v92[0], *v91 = v87, v17[1] = v15, v18 = v90, v17[2] = v89, v17[3] = v18, v10 = bed_GetcElem(v16, &v85), (v10 & 0x80000000) != 0))
  {
    v19 = v10;
    goto LABEL_51;
  }

  v19 = bed_GetpElem(v92[0], 0, &v86);
  if ((v19 & 0x80000000) == 0)
  {
    LOWORD(v20) = v85;
    if (v85 < 2u)
    {
      goto LABEL_81;
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v21 = 84;
    v22 = v86;
    v23 = 1;
    while (1)
    {
      v80 = 0;
      v80 = *(v22 + (v23 << 6) + 32) - *(v22 + 32);
      utf8_GetPreviousValidUtf8Offset(__s, &v80);
      v22 = v86;
      v24 = v80;
      v25 = v86 + (v23 << 6);
      *(v25 + 32) = v80 + *(v86 + 32);
      v26 = *(v25 + 20);
      v27 = v26 > 0x39;
      v28 = (1 << v26) & 0x3C8002000004002;
      if (v27 || v28 == 0)
      {
        goto LABEL_45;
      }

      v80 = v24;
      v30 = utf8_BelongsToSet(5u, __s, v24, v8);
      v31 = v80;
      if (v30)
      {
        while (v31 < v8 && utf8_BelongsToSet(5u, __s, v31, v8))
        {
          v32 = utf8_determineUTF8CharLength(__s[v80]);
          *(v86 + (v23 << 6) + 32) += v32;
          v31 = v80 + v32;
          v80 += v32;
        }
      }

      else if (v80 < *(v86 + 36))
      {
        v33 = v23;
        while (1)
        {
          v34 = v33;
          if (!v33)
          {
            break;
          }

          --v33;
          v35 = *(v86 + ((v34 - 1) << 6) + 20);
          v27 = v35 > 0x39;
          v36 = (1 << v35) & 0x3C8010124021140;
          if (!v27 && v36 != 0)
          {
            goto LABEL_23;
          }
        }

        LOWORD(v33) = -1;
LABEL_23:
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v80);
        if (PreviousUtf8Offset != -1)
        {
          for (i = PreviousUtf8Offset; i != -1; i = utf8_GetPreviousUtf8Offset(__s, i))
          {
            v40 = utf8_BelongsToSet(5u, __s, i, v8);
            if (!v34)
            {
              break;
            }

            if (v40)
            {
              break;
            }

            if (i <= *(v86 + (v33 << 6) + 32))
            {
              break;
            }

            *(v86 + (v23 << 6) + 32) += i - v80;
            v80 = i;
          }
        }
      }

      v22 = v86;
      v41 = v86 + (v23 << 6);
      v42 = *(v41 + 32);
      v43 = *(v86 + 32);
      v44 = v42 - v43;
      v80 = v42 - v43;
      if (*(v41 + 20) != 1)
      {
        goto LABEL_45;
      }

      if (v44 < v8)
      {
        v45 = v42 - v43;
        do
        {
          if (utf8_BelongsToSet(5u, __s, v45, v8))
          {
            break;
          }

          v45 = v80 + utf8_determineUTF8CharLength(__s[v80]);
          v80 = v45;
        }

        while (v45 < v8);
        v22 = v86;
      }

      v46 = v22 + (v23 << 6);
      if (v23 >= v85)
      {
LABEL_43:
        v55 = v80 - v44;
      }

      else
      {
        v47 = (v22 + v21);
        v48 = v23;
        v49 = (v22 + v21);
        while (1)
        {
          v50 = *v49;
          v49 += 16;
          v51 = (1 << v50) & 0x3C8010124221140;
          if (v50 <= 0x39 && v51 != 0)
          {
            v53 = v47[3];
            v54 = *(v46 + 32);
            if (v53 > v54)
            {
              break;
            }
          }

          ++v48;
          v47 = v49;
          if (v85 == v48)
          {
            goto LABEL_43;
          }
        }

        v55 = v80 - v44;
        if (v80 - v44 + v54 > *(v22 + (v48 << 6) + 32))
        {
          goto LABEL_45;
        }
      }

      *(v46 + 36) = v55;
LABEL_45:
      ++v23;
      v56 = v85;
      v21 += 64;
      if (v23 >= v85)
      {
        if (v85 < 2u)
        {
          LOWORD(v20) = v85;
        }

        else
        {
          v58 = v86;
          v59 = 1;
          v20 = v85;
          v60 = 1;
          do
          {
            v61 = (v58 + (v60 << 6));
            if (*(v61 + 5) != 0x4000 && (v62 = (v59 + 1), v62 < v56) && ((v63 = (v58 + (v62 << 6)), v64 = *(v63 + 8), v65 = *(v61 + 8), v64 < v65) || v64 == v65 && *(v63 + 9) < *(v61 + 9)))
            {
              v60 = 0;
              v66 = v63[2];
              v67 = v63[3];
              v68 = v61[3];
              v70 = *v61;
              v69 = v61[1];
              v63[2] = v61[2];
              v63[3] = v68;
              v71 = *v63;
              v72 = v63[1];
              *v63 = v70;
              v63[1] = v69;
              v81 = v71;
              v82 = v72;
              v83 = v66;
              v84 = v67;
              *v61 = v71;
              v61[1] = v72;
              v73 = v84;
              v61[2] = v83;
              v61[3] = v73;
            }

            else
            {
              ++v60;
            }

            v59 = v60;
            v56 = v20;
          }

          while (v60 < v20);
          if (v20 >= 2)
          {
            v74 = 1;
LABEL_67:
            v75 = v86;
            do
            {
              v76 = (v86 + (v74 << 6));
              if (v76[5] == 1)
              {
                v77 = v74;
                while (++v77 < v20)
                {
                  v78 = (v86 + (v77 << 6));
                  if (v78[8] != v76[8])
                  {
                    break;
                  }

                  if (v78[5] == 1)
                  {
                    v76[7] = v78[7] + v78[6] - v76[6];
                    v79 = v77 + 1;
                    if (v20 > v79)
                    {
                      memmove(v78, (v75 + (v79 << 6)), (v20 - v79) << 6);
                      LOWORD(v20) = v85;
                    }

                    LOWORD(v20) = v20 - 1;
                    v85 = v20;
                    if (v74 < v20)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_81;
                  }
                }
              }

              ++v74;
            }

            while (v74 < v20);
          }
        }

LABEL_81:
        *a4 = v20;
        break;
      }
    }
  }

LABEL_51:
  if (v92[0])
  {
    bed_ObjClose(v92[0]);
  }

  return v19;
}

uint64_t utoin_LookUpUdctWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __int16 a7, uint64_t a8)
{
  v19 = 0;
  v18 = 1;
  if (!a4)
  {
    return 2370838535;
  }

  *(a4 + 12) = 0;
  if (*(a4 + 8) > a6)
  {
    return 0;
  }

  *(*a4 + *(a4 + 8)) = 0;
  *(a4 + 24) = a7;
  if ((*(a1 + 128))(a2, a3, a5, *a4, 0, "normal", &v18, *(a4 + 16), a4 + 24, a8, 0, &v19, 0, 0))
  {
    return 0;
  }

  v10 = *(a4 + 16);
  v11 = strlen(v10);
  *(a4 + 24) = v11;
  if (!v10[v11 - 1])
  {
    *(a4 + 24) = --v11;
  }

  if (v18 == 4)
  {
    if (v11 >= 7u && (*v10 == 12049 ? (v12 = v10[2] == 62) : (v12 = 0), v12 && ((v13 = &v10[v11], v14 = *(v13 - 3), v15 = *(v13 - 1), v14 == 12049) ? (v16 = v15 == 62) : (v16 = 0), v16)))
    {
      memmove(v10, v10 + 2, v11 - 4);
      *(*(a4 + 16) + *(a4 + 24) - 4) = 0;
      v17 = 16;
      **(a4 + 16) = 16;
      *(*(a4 + 16) + *(a4 + 24) - 5) = 17;
      *(a4 + 24) -= 4;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 43;
  }

  result = 0;
  *(a4 + 12) = v17;
  return result;
}

uint64_t utoin_ReplaceWord(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, char *a7)
{
  v81 = 0;
  v82[0] = 0;
  *v66 = 0;
  v7 = 2370838535;
  v77 = MarkerUDCTREF;
  *v78 = unk_1C37BEC88;
  *&v78[16] = xmmword_1C37BEC98;
  v79 = unk_1C37BECA8;
  v73 = MarkerSetTypeOfInput;
  v74 = unk_1C37BECC8;
  v75 = xmmword_1C37BECD8;
  v76 = unk_1C37BECE8;
  memset(v72, 0, sizeof(v72));
  v70 = MarkerSetLang;
  v71 = unk_1C37BED08;
  memset(v69, 0, sizeof(v69));
  v67 = MarkerSetNLU;
  v68 = unk_1C37BED48;
  if (!a1 || !a2 || !a4)
  {
    return v7;
  }

  v80 = 0;
  TNArgStr = bed_GetpElem(a2, 0, v82);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v16 = *(v82[0] + 32);
  TNArgStr = bed_GetpElem(a2, 0xFFFFu, &v81);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  if (a5 == 1 && v81[5] != 7)
  {
    return v7;
  }

  TNArgStr = datac_RequestBlock(a6, 1012, 1u, v66);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v64 = v16;
  v17 = v81[8];
  v18 = a3;
  v19 = *(v82[0] + 32);
  v61 = v81[6];
  v62 = a5;
  v58 = v81[7];
  v59 = v81[9];
  v20 = v18;
  v60 = *(a4 + 8);
  TNArgStr = bed_Remove(a1, v18, v60);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v21 = v17 - v19;
  if (*(a4 + 24))
  {
    v22 = v20;
    TNArgStr = bed_Goto(a1, v20);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Insert(a1, *(a4 + 16), *(a4 + 24));
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v23 = v21;
    if (*(a4 + 8) + v20 >= v81[9] + v21)
    {
      v56 = v81[8];
      v57 = 1;
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }
  }

  else
  {
    v23 = v21;
    v56 = 0;
    v57 = 0;
    v22 = v20;
  }

  v24 = v62;
  v25 = v82;
  if (v62 == 1)
  {
    v25 = &v81;
  }

  (*v25)[9] = (*v25)[9] + *(a4 + 24) - *(a4 + 8);
  TNArgStr = bed_GetiElem(a2, &v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v63 = v22 - v23;
  if (a7)
  {
    DWORD1(v71) = 36;
    TNArgStr = addOrGetTNArgStr(*v66, a7, v72 + 2, a6);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v26 = v81[8];
    if (v26 - v64 < v22)
    {
      *(&v71 + 1) = (v63 + v61);
      *&v72[0] = v64 + v22;
      TNArgStr = bed_Goto(a2, 1u);
      if ((TNArgStr & 0x80000000) != 0)
      {
        return TNArgStr;
      }

      v27 = &v70;
      goto LABEL_29;
    }

    *(&v71 + 1) = v81[6];
    *&v72[0] = v26;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v70;
LABEL_36:
    TNArgStr = bed_marker_InjectFixedRefMarker(a2, v29);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Goto(a2, v80 + 1);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    LOWORD(v80) = v80 + 1;
    v81 += 16;
    goto LABEL_39;
  }

  strcpy(__s, "BND");
  DWORD1(v68) = 51;
  TNArgStr = addOrGetTNArgStr(*v66, __s, v69 + 2, a6);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v28 = v81[8];
  if (v28 - v64 >= v22)
  {
    *(&v68 + 1) = v81[6];
    *&v69[0] = v28;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v67;
    goto LABEL_36;
  }

  *(&v68 + 1) = (v63 + v61);
  *&v69[0] = v64 + v22;
  TNArgStr = bed_Goto(a2, 1u);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v27 = &v67;
LABEL_29:
  TNArgStr = bed_marker_InjectFixedRefMarker(a2, v27);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  TNArgStr = bed_Goto(a2, v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

LABEL_39:
  TNArgStr = bed_GetcElem(a2, &v80 + 1);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v30 = HIWORD(v80);
  v31 = v81 + 16;
  v32 = v80 + 1;
  if (HIWORD(v80) > (v80 + 1))
  {
    v33 = v64 + v22;
    do
    {
      v34 = v31[8];
      if (v33 <= v34)
      {
        v35 = *(a4 + 8);
        v36 = v64 + v22;
        if (v33 + v35 <= v34)
        {
          v36 = v34 - v35 + *(a4 + 24);
        }

        v31[8] = v36;
      }

      v31 += 16;
      ++v32;
    }

    while (v30 > v32);
    LOWORD(v32) = v30;
  }

  v81 = v31;
  LOWORD(v80) = v32;
  if (!v24)
  {
    return 0;
  }

  TNArgStr = bed_GetpElem(a2, 0xFFFFu, &v81);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v37 = *(a4 + 24);
  v38 = v81;
  if (*(a4 + 24))
  {
    v39 = v81[10];
    v40 = *(a4 + 12);
    if (v39 != v40)
    {
      v41 = v81[8];
      if (v41 - v64 >= v22)
      {
        v47 = *(a4 + 8);
        v81[7] = v47;
        v38[9] = v37;
        v38[10] = v40;
        if (*(a4 + 12) == 16)
        {
          *&v78[8] = v38[6];
          *&v78[12] = v47;
          *&v78[16] = v41;
          *&v78[20] = v37;
LABEL_63:
          *&v78[24] = 16;
          TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v77);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }
      }

      else
      {
        v81[9] = v64 + v22 - v41;
        TNArgStr = bed_marker_MapPosCur(a2, v64 + v22, v38 + 7);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v81[7] -= v81[6];
        v42 = *(a4 + 12);
        v43 = v60;
        if (v42 == 16)
        {
          v43 = 0;
        }

        DWORD2(v74) = v63 + v61;
        HIDWORD(v74) = v43;
        v44 = *(a4 + 24);
        LODWORD(v75) = v64 + v22;
        *(&v75 + 4) = __PAIR64__(v42, v44);
        TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v73);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        if (*(a4 + 12) == 16)
        {
          *&v78[8] = v63 + v61;
          *&v78[12] = v60;
          v45 = *(a4 + 24);
          *&v78[16] = v64 + v22;
          *&v78[20] = v45;
          goto LABEL_63;
        }
      }

      v48 = *(a4 + 8) + v22;
      v49 = v23 + v59 >= v48;
      v50 = v23 + v59 - v48;
      if (v50 == 0 || !v49)
      {
        v51 = v64 + v22;
LABEL_67:
        if (v57)
        {
          v52 = v56;
        }

        else
        {
          v52 = v51 + *(a4 + 24);
        }

        LOWORD(v80) = 0;
        TNArgStr = bed_GetpElem(a2, 0, &v81);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        TNArgStr = bed_GetcElem(a2, &v80 + 1);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v53 = v80;
        if (v80 < HIWORD(v80))
        {
          for (i = v81 + 16; *(i - 11) != 7 || *(i - 6) != v39 || *(i - 8) != v52; i += 16)
          {
            v7 = 0;
            v81 = i;
            LOWORD(v80) = ++v53;
            if (v53 >= HIWORD(v80))
            {
              return v7;
            }
          }

          TNArgStr = bed_Goto(a2, v53);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }

        return 0;
      }

      DWORD2(v74) = v63 + v60 + v61;
      HIDWORD(v74) = v58 - (v63 + v60);
      v51 = v64 + v22;
      LODWORD(v75) = v51 + *(a4 + 24);
      *(&v75 + 4) = __PAIR64__(v39, v50);
      TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v73);
      if ((TNArgStr & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      return TNArgStr;
    }
  }

  else
  {
    v39 = *(a4 + 12);
  }

  *&v78[8] = *(v81 + 6);
  *&v78[24] = v39;
  v46 = bed_marker_InjectFixedRefMarker(a2, &v77);
  return v46 & (v46 >> 31);
}

uint64_t addOrGetTNArgStr(uint64_t a1, char *__s, unsigned int *a3, uint64_t a4)
{
  v4 = 2370838535;
  v17 = a1;
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v10 = *(a1 + 16);
      if (!*(a1 + 16))
      {
LABEL_7:
        *a3 = v10;
        v14 = strlen(__s) + 1;
        v15 = v14 + v10;
        if (*(a1 + 18) >= (v14 + v10))
        {
          v4 = 0;
        }

        else
        {
          v4 = datac_RequestBlock(a4, 1012, (v14 + v10), &v17);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          v6 = *(v17 + 8);
          v10 = *(v17 + 16);
        }

        memcpy((v6 + v10), __s, v14);
        *(v17 + 16) = v15;
        return v4;
      }

      v11 = 0;
      v12 = *(a1 + 8);
      while (strcmp(__s, v12))
      {
        v13 = strlen(v12) + 1;
        v11 += v13;
        v12 += v13;
        if (v11 >= v10)
        {
          goto LABEL_7;
        }
      }

      v4 = 0;
      *a3 = v11;
    }
  }

  return v4;
}

uint64_t utoin_IncrReplaceCurrentRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = 0;
  v37 = 0;
  result = 2370838535;
  __src = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v35 = 0;
        v33 = 0;
        result = bed_GetpElem(a2, 0, &v37);
        if ((result & 0x80000000) == 0)
        {
          result = bed_GetpElem(a2, 0xFFFFu, &v36);
          if ((result & 0x80000000) == 0)
          {
            v10 = *(v36 + 32);
            v11 = *(v37 + 32);
            v12 = *(v36 + 36);
            result = bed_GetcElem(a3, &v35 + 1);
            if ((result & 0x80000000) == 0)
            {
              v13 = v10 - v11;
              if (HIWORD(v35))
              {
                result = bed_GetpElem(a3, 0, &__src);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Remove(a1, v13, v12);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Goto(a1, v13);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_Insert(a1, __src, HIWORD(v35));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v14 = HIWORD(v35);
                v15 = a3;
                v16 = 0;
              }

              else
              {
                v16 = v13;
                v15 = a1;
                v14 = v12;
              }

              result = bed_Remove(v15, v16, v14);
              if ((result & 0x80000000) == 0)
              {
                v17 = v36;
                *(v36 + 36) = HIWORD(v35);
                v18 = *(v17 + 32);
                result = bed_GetiElem(a2, &v33);
                if ((result & 0x80000000) == 0)
                {
                  result = bed_GetcElem(a2, &v35);
                  if ((result & 0x80000000) == 0)
                  {
                    v19 = v35;
                    v20 = v36;
                    v21 = v33 + 1;
                    v33 = v21;
                    if (v35 > v21)
                    {
                      v22 = v37;
                      v23 = HIWORD(v35);
                      while (1)
                      {
                        v24 = *(v20 + 96);
                        v25 = *(v22 + 32) + v13;
                        if (v24 >= v25 + v12)
                        {
                          break;
                        }

                        if (a5)
                        {
                          if (*(a5 + 16) == 1)
                          {
                            v26 = *(a5 + 8);
                            if (*(a5 + 8))
                            {
                              if (*(a5 + 12) != 1)
                              {
                                v28 = (*a5 + 12 * *(a5 + 8) - 4);
                                while (1)
                                {
                                  v29 = *(v28 - 4);
                                  if (v24 >= v18 + v29)
                                  {
                                    break;
                                  }

                                  v28 -= 6;
                                  if (!--v26)
                                  {
                                    goto LABEL_28;
                                  }
                                }

                                v30 = *v28;
                                v31 = v24 - v29;
                                if (*(v20 + 84) != 99)
                                {
                                  v31 = v18;
                                }

                                v32 = v31 + v30;
                                *(v20 + 96) = v32;
                                if (v32 == *(v22 + 32))
                                {
                                  goto LABEL_28;
                                }

                                v27 = v32 + 1;
                                goto LABEL_27;
                              }
                            }
                          }
                        }

                        *(v20 + 96) = v25;
                        if (v25 != *(v22 + 32))
                        {
                          v27 = v25 + 1;
LABEL_27:
                          *(v20 + 96) = v27;
                        }

LABEL_28:
                        v20 += 64;
                        v33 = ++v21;
                        if (v19 <= v21)
                        {
                          return result;
                        }
                      }

                      v27 = v24 - v12 + v23;
                      goto LABEL_27;
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

  return result;
}

uint64_t utoin_ObjOpen(_WORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, __int16 a15, __int16 a16)
{
  v57 = *MEMORY[0x1E69E9840];
  v16 = 2370838528;
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  strcpy(v50, "xlit23");
  v55 = 0;
  strcpy(v56, "cpextensions");
  strcpy(v49, "win936");
  *&v47[1] = -1;
  if (!a3)
  {
    return 2370838535;
  }

  v54 = 0;
  v47[0] = 0;
  if ((InitRsrcFunction(a1, a2, &v55) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a3 = 0;
  v24 = heap_Alloc(*(v55 + 8), 184);
  if (v24)
  {
    v25 = v24;
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 48) = 0u;
    *(v24 + 64) = 0u;
    *(v24 + 144) = 0u;
    *(v24 + 160) = 0u;
    *(v24 + 112) = 0u;
    *(v24 + 128) = 0u;
    *(v24 + 176) = 0;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0u;
    *(v24 + 32) = 0u;
    *v24 = a1;
    *(v24 + 8) = a2;
    v26 = v55;
    *(v24 + 16) = v55;
    *(v24 + 24) = 0;
    *(v24 + 32) = a7;
    *(v24 + 40) = a9;
    *(v24 + 48) = a10;
    *(v24 + 56) = 0;
    *(v24 + 60) = 0;
    *(v24 + 72) = 0;
    *(v24 + 164) = 0;
    *(v24 + 144) = 0;
    *(v24 + 172) = 0;
    *(v24 + 136) = 0;
    *(v24 + 148) = 0x100000001;
    *(v24 + 80) = a4;
    *(v24 + 88) = a5;
    *(v24 + 96) = a6;
    *(v24 + 104) = a11;
    *(v24 + 112) = a12;
    *(v24 + 120) = a13;
    *(v24 + 128) = a14;
    *(v24 + 130) = a15;
    *(v24 + 132) = a16;
    *(v24 + 168) = 0;
    *(v24 + 176) = 0;
    if (!a11)
    {
      v33 = *(v26 + 32);
      v34 = 1806;
      goto LABEL_36;
    }

    __c_1 = 0;
    if (((*(a7 + 96))() & 0x80000000) != 0 || !__c_1)
    {
      v33 = *(v55 + 32);
      v34 = 1801;
      goto LABEL_36;
    }

    if (__c_1 == 1 && __c_3)
    {
      v27 = strchr(*__c_3, __c);
      if (v27)
      {
        *v27 = 0;
      }

      __strcpy_chk();
    }

    __c_1 = 0;
    if (((*(a7 + 96))(*(v25 + 40), *(v25 + 48), "fecfg", "translitdef", &__c_3, &__c_1, &__c) & 0x80000000) != 0 || !__c_1)
    {
      v33 = *(v55 + 32);
      v34 = 1803;
      goto LABEL_36;
    }

    if (__c_1 == 1 && __c_3)
    {
      v28 = strchr(*__c_3, __c);
      if (v28)
      {
        *v28 = 0;
      }

      __strcpy_chk();
    }

    __c_1 = -1;
    fecfg_fewordseg_param = (*(a7 + 96))(*(v25 + 40), *(v25 + 48), "fecfg", "backtrans", &__c_3, &__c_1, &__c);
    if ((fecfg_fewordseg_param & 0x80000000) == 0)
    {
      *(v25 + 64) = __c_1 != 0;
      fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v25, (v25 + 164), "fewordseg_wpcrf");
      if ((fecfg_fewordseg_param & 0x80000000) == 0)
      {
        fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v25, (v25 + 164), "fewordseg_bypasshexcode");
        if ((fecfg_fewordseg_param & 0x80000000) == 0)
        {
          fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v25, (v25 + 172), "fewordseg_skipCollapseIdenticalRegion");
          if ((fecfg_fewordseg_param & 0x80000000) == 0)
          {
            fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v25, (v25 + 176), "fewordseg_extra_split_marker");
            if ((fecfg_fewordseg_param & 0x80000000) == 0)
            {
              if (!*(v25 + 64))
              {
                v48 = 0;
                strcpy(&v47[3], "word");
                v36 = (*(a7 + 72))(*(v25 + 40), *(v25 + 48), &v47[3], &v54);
                if ((v36 & 0x80000000) == 0)
                {
                  if (v54)
                  {
                    v32 = 1;
LABEL_44:
                    *(v25 + 56) = v32;
                    *(v25 + 60) = 0;
                    *&v47[1] = -1;
                    (*(a7 + 96))(*(v25 + 40), *(v25 + 48), "fecfg", "versioninfo", &__c_3, &v47[1], v47);
                    if (*&v47[1])
                    {
                      v37 = *__c_3;
                      v38 = strchr(*__c_3, v47[0]);
                      if (v38)
                      {
                        *v38 = 0;
                        v37 = *__c_3;
                      }

                      *(v25 + 60) = hasCharDic(v37);
                    }

                    *&v47[1] = -1;
                    (*(a7 + 96))(*(v25 + 40), *(v25 + 48), "fecfg", "useppdomains", &__c_3, &v47[1], v47);
                    if (!*&v47[1])
                    {
                      goto LABEL_53;
                    }

                    v39 = *__c_3;
                    v40 = strchr(*__c_3, v47[0]);
                    if (v40)
                    {
                      *v40 = 0;
                      v39 = *__c_3;
                    }

                    if (*v39 == 49)
                    {
                      v41 = v39[1] == 0;
                    }

                    else
                    {
LABEL_53:
                      v41 = 0;
                    }

                    v42 = (*(a7 + 72))(*(v25 + 40), *(v25 + 48), v56, &v54);
                    if ((v42 & 0x80000000) != 0)
                    {
                      v16 = v42;
                      goto LABEL_37;
                    }

                    if (!v54)
                    {
                      v56[0] = 0;
                    }

                    v43 = (*(*(v25 + 104) + 56))(*(v25 + 112), *(v25 + 120), v25 + 32, v50, v49, v41, v56);
                    if ((v43 & 0x80000000) == 0)
                    {
                      v16 = 0;
                      *a3 = v25;
                      return v16;
                    }

                    v16 = v43;
                    v33 = *(v55 + 32);
                    v34 = 1807;
LABEL_36:
                    log_OutPublic(v33, &modPP_3, v34, 0);
LABEL_37:
                    heap_Free(*(v55 + 8), v25);
                    return v16;
                  }

                  v32 = 0;
                  v48 = 0;
                  for (i = 1; ; i = 0)
                  {
                    strcpy(&v47[3], "word");
                    LH_itoa(v32, v46, 0xAu);
                    __strcat_chk();
                    v36 = (*(a7 + 72))(*(v25 + 40), *(v25 + 48), &v47[3], &v54);
                    if ((v36 & 0x80000000) != 0)
                    {
                      break;
                    }

                    if (!v54)
                    {
                      if ((i & 1) == 0)
                      {
                        goto LABEL_44;
                      }

                      heap_Free(*(v55 + 8), v25);
                      log_OutPublic(*(v55 + 32), &modPP_3, 1809, 0);
                      return 2370838794;
                    }

                    ++v32;
                  }
                }

                v45 = v36;
                heap_Free(*(v55 + 8), v25);
                return v45;
              }

              *&v47[1] = -1;
              fecfg_fewordseg_param = (*(a7 + 96))(*(v25 + 40), *(v25 + 48), "fecfg", "nrpart_g2p", &__c_3, &v47[1], v47);
              if ((fecfg_fewordseg_param & 0x80000000) == 0)
              {
                if (*&v47[1])
                {
                  v30 = *__c_3;
                  v31 = strchr(*__c_3, v47[0]);
                  if (v31)
                  {
                    *v31 = 0;
                    v30 = *__c_3;
                  }

                  v32 = atoi(v30);
                }

                else
                {
                  v32 = 0;
                }

                goto LABEL_44;
              }
            }
          }
        }
      }
    }

    return fecfg_fewordseg_param;
  }

  return 2370838538;
}

uint64_t read_fecfg_fewordseg_param(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  memset(__c, 0, sizeof(__c));
  v10 = -1;
  v5 = (*(a1 + 96))(*(a2 + 40), *(a2 + 48), "fecfg", a4, &__c[1], &v10, __c);
  if ((v5 & 0x80000000) == 0 && v10 == 1 && *&__c[1] != 0)
  {
    v7 = **&__c[1];
    v8 = strchr(**&__c[1], __c[0]);
    if (v8)
    {
      *v8 = 0;
      v7 = **&__c[1];
    }

    if (!strcmp(v7, "yes"))
    {
      *a3 = 1;
    }
  }

  return v5;
}

BOOL hasCharDic(char *a1)
{
  v8 = 0;
  __endptr = a1;
  v1 = strtol(a1, &v8, 10);
  v2 = v1 < 1 || v8 == 0;
  if (v2 || *v8 != 46)
  {
    return 0;
  }

  v3 = strtol(v8 + 1, &__endptr, 10);
  result = 0;
  if ((v3 & 0x80000000) != 0 || !__endptr)
  {
    return result;
  }

  if (*__endptr != 46)
  {
    return 0;
  }

  v5 = strtol(__endptr + 1, &v8, 10);
  result = 0;
  if (v5 < 0 || !v8)
  {
    return result;
  }

  if (*v8 != 46 && *v8)
  {
    return 0;
  }

  return v1 > 4 && v3 > 1 && v5 != 0;
}

uint64_t utoin_ObjClose(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1 && (InitRsrcFunction(*a1, *(a1 + 8), &v6) & 0x80000000) == 0)
  {
    v3 = (*(*(a1 + 104) + 88))(*(a1 + 112), *(a1 + 120));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      v4 = *(a1 + 136);
      if (v4)
      {
        heap_Free(*(*(a1 + 16) + 8), v4);
        *(a1 + 136) = 0;
        *(a1 + 146) = 0;
      }

      heap_Free(*(v6 + 8), a1);
      return 0;
    }
  }

  return v1;
}

uint64_t utoin_ProcessStart(uint64_t a1)
{
  v1 = 2370838535;
  v6 = 0;
  if (a1)
  {
    *(a1 + 72) = log_GetLogLevel(*(*(a1 + 16) + 32)) > 4;
    v3 = (*(*(a1 + 104) + 96))(*(a1 + 112), *(a1 + 120));
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    if ((paramc_ParamGetInt(*(*(a1 + 16) + 40), "asianasciispaceudctlookup", &v6) & 0x80000000) == 0 && v6 == 1)
    {
      *(a1 + 168) = 1;
    }

    v3 = paramc_ParamGet(*(*(a1 + 16) + 40), "langcode", (a1 + 24), 0);
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    else
    {
      *(a1 + 160) = 2;
      if (*(a1 + 146))
      {
        return 0;
      }

      else
      {
        v5 = heap_Calloc(*(*(a1 + 16) + 8), 1, 120);
        *(a1 + 136) = v5;
        if (v5)
        {
          v1 = 0;
          *(a1 + 146) = 10;
        }

        else
        {
          return 2370838538;
        }
      }
    }
  }

  return v1;
}

uint64_t utoin_ProcessEnd(uint64_t a1)
{
  if (!a1)
  {
    return 2370838535;
  }

  v2 = (*(*(a1 + 104) + 104))(*(a1 + 112), *(a1 + 120));
  if ((v2 & 0x80000000) == 0)
  {
    if (*(a1 + 24))
    {
      paramc_ParamRelease(*(*(a1 + 16) + 40));
    }

    v3 = *(a1 + 136);
    if (v3)
    {
      heap_Free(*(*(a1 + 16) + 8), v3);
      *(a1 + 136) = 0;
      *(a1 + 146) = 0;
    }
  }

  return v2;
}

uint64_t utoin_NormalizeRegions(_WORD **a1, uint64_t a2, unsigned __int16 *a3)
{
  v104[1] = *MEMORY[0x1E69E9840];
  v3 = 2370838535;
  v95 = 0;
  v96 = 0;
  if (!a1 || !a2)
  {
    return 2370838535;
  }

  v7 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v96, 213);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  v7 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v95, 213);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_RemoveNativeBlanks");
  v8 = a1[2];
  v10 = v95;
  v9 = v96;
  v104[0] = 2;
  v102 = xmmword_1C37BEDBC;
  v103 = 8;
  if (!v96 || !v95)
  {
    goto LABEL_129;
  }

  v7 = bed_Goto(v96, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  v7 = bed_Goto(v10, 0);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  LOWORD(v101) = 0;
  LOWORD(v97) = 0;
  v11 = bed_GoForward(v10, bed_marker_IsToiOfType, v104);
  v12 = v11;
  if ((v11 & 0x80000000) != 0 && (v11 & 0x1FFF) != 0x14)
  {
    goto LABEL_179;
  }

  while ((v12 & 0x80000000) == 0)
  {
    Backward = bed_FindBackward(v10, bed_marker_IsToiNotOfType, &v102, &v101);
    if ((Backward & 0x1FFF) == 0x14)
    {
      LOWORD(v101) = -1;
    }

    else
    {
      v12 = Backward;
      if ((Backward & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    Forward = bed_FindForward(v10, bed_marker_IsToiNotOfType, &v102, &v97);
    if ((Forward & 0x1FFF) == 0x14)
    {
      v7 = bed_GetcElem(v10, &v97);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      v12 = Forward;
      if ((Forward & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    if (v101 != 0xFFFF)
    {
      v7 = bed_Goto(v10, v101);
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_178;
      }
    }

    v7 = utoin_RemoveBlankRegions(v8, v10, v97, v9);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    v15 = bed_GoForward(v10, bed_marker_IsToiOfType, v104);
    v12 = v15;
    if ((v15 & 0x80000000) != 0 && (v15 & 0x1FFF) != 0x14)
    {
      goto LABEL_179;
    }
  }

  UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_MergeRegions");
  v88 = a1[2];
  v16 = v95;
  *&v102 = 0;
  if (v96)
  {
    v17 = v95 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_173;
  }

  LOWORD(v104[0]) = 0;
  v18 = bed_GetpElem(v95, 0, &v102);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  v18 = bed_GetcElem(v16, v104);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_172;
  }

  v19 = *a3;
  if (*a3)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *(a3 + 1) + (v20 << 6);
      v23 = *v22;
      v24 = *(v22 + 4);
      v25 = *(v22 + 8);
      v26 = *(v22 + 16);
      v27 = *(v22 + 24);
      v28 = *(v22 + 32);
      v29 = *(v22 + 40);
      v30 = *(v22 + 48);
      v31 = *(v22 + 56);
      if (v31 == 1)
      {
        break;
      }

      if (LOWORD(v104[0]) < 2u)
      {
        goto LABEL_46;
      }

      v35 = (v102 + 104);
      v33 = 1;
      do
      {
        if (*(v35 - 5) == 7 && *v35 == v23)
        {
          goto LABEL_47;
        }

        ++v33;
        v35 += 16;
      }

      while (LOWORD(v104[0]) != v33);
LABEL_100:
      v21 = ++v20;
      if (v20 >= v19)
      {
        goto LABEL_101;
      }
    }

    if (LOWORD(v104[0]) < 2u)
    {
LABEL_46:
      LODWORD(v36) = 1;
    }

    else
    {
      v32 = (v102 + 84);
      v33 = 1;
      while (1)
      {
        v34 = *v32;
        v32 += 16;
        if (v34 == 7)
        {
          break;
        }

        if (LOWORD(v104[0]) == ++v33)
        {
          goto LABEL_100;
        }
      }

LABEL_47:
      LODWORD(v36) = v33;
    }

    if (LOWORD(v104[0]) <= v36)
    {
      goto LABEL_100;
    }

    v86 = v30;
    v87 = v20;
    v37 = 0;
    v38 = 0;
    v39 = v104[0];
    v94 = v21;
    v92 = v24;
    v93 = v23;
    v90 = v28;
    v91 = v27;
    v89 = v31;
    while (1)
    {
      if (v25)
      {
        v40 = 0;
        do
        {
          v38 = v36;
          if ((v36 - 1) > v37)
          {
            v41 = (v36 - 1);
            v38 = v36;
            do
            {
              v42 = v102 + (v41 << 6);
              v43 = *(v42 + 20);
              if (v43 == 7)
              {
                v44 = *(v42 + 40);
                v45 = v26;
                v46 = v25;
                while (1)
                {
                  v47 = *v45++;
                  if (v47 == v44)
                  {
                    break;
                  }

                  if (!--v46)
                  {
                    goto LABEL_62;
                  }
                }
              }

              if (v43 == 7)
              {
                v38 = v41;
              }

              --v41;
            }

            while (v37 < v41);
          }

LABEL_62:
          ++v40;
        }

        while (v40 < v25);
      }

      if (v27)
      {
        if ((v36 + 1) < v39)
        {
          v48 = (v36 + 1);
          v37 = v36;
          do
          {
            v49 = v102 + (v48 << 6);
            v50 = *(v49 + 20);
            if (v50 == 7)
            {
              v51 = *(v49 + 40);
              v52 = v28;
              v53 = v27;
              while (1)
              {
                v54 = *v52++;
                if (v54 == v51)
                {
                  break;
                }

                if (!--v53)
                {
                  goto LABEL_82;
                }
              }
            }

            if (v50 == 7)
            {
              v37 = v48;
            }

            ++v48;
          }

          while (v39 != v48);
          goto LABEL_82;
        }
      }

      else
      {
        if (!v29)
        {
          goto LABEL_82;
        }

        v37 = v36 + 1;
        if ((v36 + 1) < v39)
        {
          v55 = v102 + ((v36 + 1) << 6);
          if (*(v55 + 20) != 7)
          {
              ;
            }
          }

          v56 = *(v55 + 40);
          v57 = v86;
          v58 = v29;
          do
          {
            v59 = *v57++;
            if (v59 == v56)
            {
              goto LABEL_82;
            }
          }

          while (--v58);
        }
      }

      v37 = v36;
LABEL_82:
      if (v38 != v37)
      {
        log_OutText(*(v88 + 4), &modPP_3, 5, 0, "[UTOI] (applying mergeRule %d between markers %u and %u)", v21, v38, v37);
        v31 = v89;
        v28 = v90;
        v27 = v91;
        v24 = v92;
        v23 = v93;
        v21 = v94;
      }

      if (v38 < v37)
      {
        v60 = v38;
        do
        {
          v61 = v102 + (v60 << 6);
          if (*(v61 + 20) == 7 && (v24 == 3 || *(v61 + 40) != 1))
          {
            *(v61 + 40) = v24;
          }

          ++v60;
        }

        while (v60 <= v37);
      }

      if (v31 != 1)
      {
        v39 = v104[0];
        LODWORD(v36) = v37 + 1;
        if (LOWORD(v104[0]) > (v37 + 1))
        {
          v36 = (v37 + 1);
          v62 = (v102 + (v36 << 6) + 40);
          while (*(v62 - 5) != 7 || *v62 != v23)
          {
            ++v36;
            v62 += 16;
            if (LOWORD(v104[0]) == v36)
            {
              goto LABEL_99;
            }
          }
        }

        if (LOWORD(v104[0]) > v36)
        {
          continue;
        }
      }

LABEL_99:
      v19 = *a3;
      v20 = v87;
      goto LABEL_100;
    }
  }

LABEL_101:
  if (*(a1 + 43) != 1)
  {
    UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_CollapseIdenticalRegions");
    v7 = utoin_CollapseIdenticalRegions(a1, v96, v95);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }
  }

  UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_LookUpWords");
  v64 = v95;
  v63 = v96;
  *&v102 = 7;
  v104[0] = 0;
  v101 = 0;
  v99 = 0;
  if (!v96 || !v95)
  {
LABEL_129:
    v12 = 2370838535;
    goto LABEL_179;
  }

  v65 = a1[10];
  if (!v65)
  {
    goto LABEL_139;
  }

  v66 = a1[2];
  v100 = 0;
  v7 = (*(v65 + 15))(a1[11], a1[12], &v99);
  if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_178;
  }

  if (!v99)
  {
    goto LABEL_139;
  }

  if (log_HasTraceTuningDataSubscriber(*(v66 + 4)))
  {
    v98 = 0;
    v97 = 0;
    bed_GetpElem(v63, 0, &v97);
    v7 = bed_GetcElem(v63, &v98);
    if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_178;
    }

    log_OutTraceTuningDataBinary(*(v66 + 4), 105, "", "text/plain;charset=utf-16", v97, v98);
  }

  v67 = bed_GetcElem(v63, &v100);
  if ((v67 & 0x80000000) == 0)
  {
    v68 = datac_RequestBlock(a2, 1029, (v100 + 1), &v101);
    if ((v68 & 0x80000000) != 0)
    {
      v12 = v68;
      if ((v68 & 0x1FFF) == 0x14)
      {
LABEL_139:
        v73 = a1[2];
        v75 = v95;
        v74 = v96;
        if (*(a1 + 43) == 1)
        {
          goto LABEL_142;
        }

        UTOITrace(*(a1 + 18), v73, v96, v95, "BEFORE utoin_CollapseIdenticalRegions (second)");
        v7 = utoin_CollapseIdenticalRegions(a1, v96, v95);
        if ((v7 & 0x80000000) == 0)
        {
          v73 = a1[2];
          v75 = v95;
          v74 = v96;
LABEL_142:
          UTOITrace(*(a1 + 18), v73, v74, v75, "BEFORE utoin_RemoveBlanksAtRegionBoundary");
          v76 = a1[2];
          v78 = v95;
          v77 = v96;
          v104[0] = 1;
          v102 = xmmword_1C37BEE58;
          LODWORD(v103) = 0;
          v101 = 0;
          if (!v96 || !v95)
          {
            goto LABEL_173;
          }

          v18 = bed_Goto(v96, 0);
          if ((v18 & 0x80000000) == 0)
          {
            v18 = bed_Goto(v78, 0);
            if ((v18 & 0x80000000) == 0)
            {
              LOWORD(v97) = 0;
              LOWORD(v99) = 0;
              v79 = bed_GoForward(v78, bed_marker_IsToiOfType, v104);
              v3 = v79;
              if ((v79 & 0x80000000) == 0 || (v79 & 0x1FFF) == 0x14)
              {
                while ((v3 & 0x80000000) == 0)
                {
                  v80 = bed_FindBackward(v78, bed_marker_IsToiNotOfType, &v102, &v97);
                  if ((v80 & 0x1FFF) == 0x14)
                  {
                    LOWORD(v97) = -1;
                  }

                  else
                  {
                    v3 = v80;
                    if ((v80 & 0x80000000) != 0)
                    {
                      goto LABEL_173;
                    }
                  }

                  v81 = bed_FindForward(v78, bed_marker_IsToiNotOfType, &v102, &v99);
                  if ((v81 & 0x1FFF) == 0x14)
                  {
                    LOWORD(v99) = -1;
                  }

                  else
                  {
                    v3 = v81;
                    if ((v81 & 0x80000000) != 0)
                    {
                      goto LABEL_173;
                    }
                  }

                  if (v97 == 0xFFFF)
                  {
                    v82 = 0;
                  }

                  else
                  {
                    v18 = bed_GetpElem(v78, v97, &v101);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    v82 = *(v101 + 40);
                  }

                  if (v99 == 0xFFFF)
                  {
                    goto LABEL_166;
                  }

                  v18 = bed_GetpElem(v78, v99, &v101);
                  if ((v18 & 0x80000000) != 0)
                  {
                    goto LABEL_172;
                  }

                  if (!v82 || (v83 = *(v101 + 40)) == 0 || v82 == v83 || v83 == 14 || v83 == 44)
                  {
LABEL_166:
                    LOWORD(v97) = 1;
                    bed_GoForward(v78, bed_marker_IsAt, &v97);
                  }

                  else
                  {
                    v18 = bed_Goto(v78, v97);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }

                    v18 = utoin_RemoveBlankRegions(v76, v78, v99, v77);
                    if ((v18 & 0x80000000) != 0)
                    {
                      goto LABEL_172;
                    }
                  }

                  v84 = bed_GoForward(v78, bed_marker_IsToiOfType, v104);
                  v3 = v84;
                  if ((v84 & 0x80000000) != 0 && (v84 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_173;
                  }
                }

                UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_MarkSingleLatinForSpell");
                v7 = utoin_MarkSingleLatinForSpell(v95, v96, a2);
                if ((v7 & 0x80000000) == 0)
                {
                  UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_SplitRegionOnWordSeparatingMarkers");
                  v7 = utoin_SplitRegionOnWordSeparatingMarkers(v95, *(a1 + 44));
                  if ((v7 & 0x80000000) == 0)
                  {
                    UTOITrace(*(a1 + 18), a1[2], v96, v95, "BEFORE utoin_Normalize");
                    v12 = utoin_Normalize(a1, v96, v95, a2);
                    if ((v12 & 0x80000000) == 0)
                    {
                      UTOITrace(*(a1 + 18), a1[2], v96, v95, "END utoin_NormalizeRegions()");
                    }

                    goto LABEL_179;
                  }
                }

                goto LABEL_178;
              }

              goto LABEL_173;
            }
          }

LABEL_172:
          v3 = v18;
LABEL_173:
          v12 = v3;
          goto LABEL_179;
        }

LABEL_178:
        v12 = v7;
        goto LABEL_179;
      }

      goto LABEL_179;
    }

    v67 = bed_ObjOpen(*a1, a1[1], a2, 1029, v104, 213);
    if ((v67 & 0x80000000) == 0)
    {
      v67 = bed_Goto(v63, 0);
      if ((v67 & 0x80000000) == 0)
      {
        v67 = bed_Goto(v64, 0);
        if ((v67 & 0x80000000) == 0)
        {
          v69 = bed_GoForward(v64, bed_marker_IsOfType, &v102);
          v12 = v69;
          v70 = v69 & 0x1FFF;
          if ((v69 & 0x80000000) != 0 && v70 != 20)
          {
            goto LABEL_131;
          }

          if ((v69 & 0x80000000) != 0)
          {
LABEL_125:
            if (v70 == 20)
            {
              v12 = 0;
            }

            else
            {
              v12 = v12;
            }

            goto LABEL_131;
          }

          while (1)
          {
            v97 = 0;
            v98 = 0;
            v67 = bed_GetpElem(v64, 0xFFFFu, &v97);
            if ((v67 & 0x80000000) != 0)
            {
              break;
            }

            v71 = *(v97 + 40) - 2;
            if (v71 <= 4)
            {
              v67 = (off_1F42D5AB0[v71])(a1, v63, v64, v104[0], a2);
              if ((v67 & 0x80000000) != 0)
              {
                break;
              }
            }

            v98 = 1;
            bed_GoForward(v64, bed_marker_IsAt, &v98);
            v72 = bed_GoForward(v64, bed_marker_IsOfType, &v102);
            v12 = v72;
            v70 = v72 & 0x1FFF;
            if ((v72 & 0x80000000) != 0 && v70 != 20)
            {
              goto LABEL_131;
            }

            if ((v72 & 0x80000000) != 0)
            {
              goto LABEL_125;
            }
          }
        }
      }
    }
  }

  v12 = v67;
LABEL_131:
  if (!log_HasTraceTuningDataSubscriber(*(v66 + 4)))
  {
    goto LABEL_134;
  }

  v98 = 0;
  v97 = 0;
  bed_GetpElem(v63, 0, &v97);
  v12 = bed_GetcElem(v63, &v98);
  if ((v12 & 0x80000000) == 0)
  {
    log_OutTraceTuningDataBinary(*(v66 + 4), 106, "", "text/plain;charset=utf-16", v97, v98);
LABEL_134:
    if (v104[0])
    {
      bed_ObjClose(v104[0]);
    }

    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_179;
    }

    goto LABEL_139;
  }

LABEL_179:
  if (v95)
  {
    bed_ObjClose(v95);
  }

  if (v96)
  {
    bed_ObjClose(v96);
  }

  return v12;
}

uint64_t utoin_CollapseIdenticalRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = 0;
  v66 = MarkerIntWord;
  v67 = unk_1C37BEDE8;
  v68 = xmmword_1C37BEDF8;
  v69 = unk_1C37BEE08;
  result = 2370838535;
  if (a2)
  {
    if (a3)
    {
      v70 = 0;
      result = bed_GetpElem(a3, 0, &v71);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a3, &v70);
        if ((result & 0x80000000) == 0)
        {
          v6 = v70;
          if (v70)
          {
            v7 = 0;
            LOWORD(v8) = 0;
            v9 = 0;
            v60 = a3;
            while (1)
            {
              v8 = v8;
              v10 = (v71 + (v8 << 6) + 20);
              while (1)
              {
                v11 = *v10;
                v10 += 16;
                if (v11 == 7)
                {
                  break;
                }

                if (++v8 >= v6)
                {
                  goto LABEL_13;
                }
              }

              v12 = v71 + (v8 << 6);
              if (*(v12 + 20) == 7)
              {
                v7 = *(v12 + 40);
                v9 = v8;
              }

LABEL_13:
              v65 = v9;
              v13 = v71 + (v9 << 6);
              if (*(v13 + 20) == 7 && *(v13 + 40) == 43 && *(v13 + 56))
              {
                LOWORD(v8) = v8 + 1;
                goto LABEL_105;
              }

              v14 = v8;
              if (v8 < v6)
              {
                v15 = v8;
                v16 = (v71 + (v8 << 6) + 40);
                while (*(v16 - 5) == 7 && v7 == *v16)
                {
                  ++v15;
                  v16 += 16;
                  if (v6 == v15)
                  {
                    LODWORD(v15) = v6;
                    break;
                  }
                }

                v14 = v8;
                if (v15 != v8)
                {
                  v14 = (v15 - 1);
                  if ((v15 - 1) > v8)
                  {
                    v14 = (v15 - 1);
                    v17 = (v71 + (v14 << 6) + 40);
                    while (*(v17 - 5) != 7 || v7 != *v17)
                    {
                      --v14;
                      v17 -= 16;
                      if (v8 >= v14)
                      {
                        v14 = v8;
                        break;
                      }
                    }
                  }
                }
              }

              if (v7 == 43)
              {
                v18 = v71 + (v14 << 6);
                if (*(v18 + 20) == 7 && *(v18 + 40) == 43 && *(a1 + 168) == 1)
                {
                  LOWORD(v8) = v8 + 1;
                  v7 = 43;
                  goto LABEL_105;
                }
              }

              if (v14 == v8 || v14 >= v6)
              {
                goto LABEL_107;
              }

              v62 = v7;
              if (*(v13 + 40) == 16)
              {
                if (v9 >= 2u && (v19 = v71 + ((v9 - 1) << 6), *(v19 + 20) == 998))
                {
                  if (*(v19 + 32) == *(v13 + 32))
                  {
                    v20 = v9 - 1;
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else
                {
                  v20 = 0;
                }

                v22 = v9 + 1;
                if (v22 < v6)
                {
                  v23 = v71 + (v22 << 6);
                  if (*(v23 + 20) == 998 && *(v23 + 32) == *(v13 + 32))
                  {
                    v20 = v9 + 1;
                  }
                }

                if (v14 >= 2u && (v24 = v14 - 1, v25 = v71 + (v24 << 6), *(v25 + 20) == 998))
                {
                  if (*(v25 + 32) != *(v71 + (v14 << 6) + 32))
                  {
                    LOWORD(v24) = 0;
                  }
                }

                else
                {
                  LOWORD(v24) = 0;
                }

                v26 = v6;
                v27 = v14 + 1;
                if (v27 < v26)
                {
                  v28 = v71 + (v27 << 6);
                  if (*(v28 + 20) == 998 && *(v28 + 32) == *(v71 + (v14 << 6) + 32))
                  {
                    LOWORD(v24) = 1;
                  }
                }

                if (v24)
                {
                  v21 = v20 != 0;
                }

                else
                {
                  v21 = 0;
                }
              }

              else
              {
                v21 = 0;
                v20 = 0;
              }

              v63 = v14;
              v29 = v71 + (v14 << 6);
              v30 = *(v29 + 32);
              v31 = *(v13 + 32);
              v61 = v20;
              v64 = v21;
              if (!*v29 && v30 == v31)
              {
                *(v13 + 24) = *(v29 + 24);
                v31 = v30;
              }

              *(v13 + 36) = v30 - v31 + *(v29 + 36);
              *(v13 + 28) = *(v29 + 24) - *(v13 + 24) + *(v29 + 28);
              v32 = v9;
              v33 = v9;
              if (v9 <= v14)
              {
                do
                {
                  v34 = v33;
                  if (v32 == v33)
                  {
                    goto LABEL_74;
                  }

                  v35 = v71 + (v33 << 6);
                  if (!*(v35 + 16))
                  {
                    goto LABEL_74;
                  }

                  v36 = v14;
                  v37 = v9;
                  v38 = a1;
                  v39 = *(a1 + 16);
                  v40 = v71 + (v65 << 6);
                  v41 = *(v40 + 16);
                  result = growOffsets(v39, v40, *(v35 + 16));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v42 = *(v35 + 16);
                  v43 = *(v35 + 8);
                  if (*(v35 + 16))
                  {
                    v44 = (*(v40 + 8) + 8 * v41);
                    v45 = *(v35 + 8);
                    a1 = v38;
                    v9 = v37;
                    v14 = v36;
                    do
                    {
                      v46 = *v45++;
                      *v44++ = v46;
                      --v42;
                    }

                    while (v42);
                  }

                  else
                  {
                    a1 = v38;
                    v9 = v37;
                    v14 = v36;
                    if (!v43)
                    {
                      goto LABEL_74;
                    }
                  }

                  heap_Free(*(v39 + 8), v43);
                  *(v35 + 8) = 0;
                  *(v35 + 16) = 0;
LABEL_74:
                  if (v34 != v9)
                  {
                    v47 = *(v71 + (v34 << 6) + 48);
                    if (v47)
                    {
                      heap_Free(*(*(a1 + 16) + 8), v47);
                      *(v71 + (v34 << 6) + 48) = 0;
                    }
                  }

                  v33 = v34 + 1;
                }

                while ((v34 + 1) <= v14);
              }

              v48 = v63;
              if (v14 > v8)
              {
                break;
              }

LABEL_99:
              if (!v64)
              {
                v6 = v70;
                v7 = v62;
LABEL_107:
                result = 0;
                LOWORD(v8) = v8 + 1;
                goto LABEL_108;
              }

              v56 = (v71 + (v61 << 6));
              v57 = v56[2];
              v58 = v56[3];
              v59 = v56[1];
              v66 = *v56;
              v67 = v59;
              v68 = v57;
              v69 = v58;
              DWORD1(v67) = 41;
              result = bed_Goto(v60, v61 + 1);
              v7 = v62;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_marker_InjectFixedRefMarker(v60, &v66);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetpElem(v60, 0, &v71);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetcElem(v60, &v70);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v6 = v70;
LABEL_105:
              result = 0;
LABEL_108:
              if (v8 >= v6)
              {
                return result;
              }
            }

            v49 = v63 << 6;
            while (1)
            {
              v50 = v71 + v49;
              if (!v64)
              {
                break;
              }

              v51 = *(v50 + 20);
              if (v51 != 7)
              {
                goto LABEL_90;
              }

              if (v48 >= 2 && *(v71 + v49 - 44) == 998 && *(v71 + v49 - 32) == *(v71 + v49 + 32) || v48 + 1 < v70 && (v52 = v71 + ((v48 + 1) << 6), *(v52 + 20) == 998) && *(v52 + 32) == *(v71 + v49 + 32))
              {
                v53 = v71 + v49;
                v54 = 41;
LABEL_97:
                *(v53 + 20) = v54;
                goto LABEL_98;
              }

LABEL_92:
              v55 = *(v71 + v49);
              if (!v55)
              {
                v53 = v71 + v49;
                v54 = 999;
                goto LABEL_97;
              }

              if (v55 == 1)
              {
LABEL_94:
                result = bed_Remove(v60, v48, 1u);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                --v70;
              }

LABEL_98:
              --v48;
              v49 -= 64;
              if (v8 >= v48)
              {
                goto LABEL_99;
              }
            }

            v51 = *(v50 + 20);
LABEL_90:
            if (v51 == 0x4000)
            {
              goto LABEL_94;
            }

            if (v51 != 7)
            {
              goto LABEL_98;
            }

            goto LABEL_92;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t utoin_MarkSingleLatinForSpell(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v40 = 0;
  v39 = 0;
  v41 = MarkerUndef;
  v42 = unk_1C37BEE80;
  memset(v43, 0, sizeof(v43));
  result = bed_GetcElem(a2, &v39);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!v39)
  {
    return result;
  }

  result = datac_RequestBlock(a3, 1012, 1u, &v44);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a1, &v46);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a1, 0, &v45);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v40);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v46 < 2u)
  {
    return 0;
  }

  v7 = 1;
  v8 = v45;
  v9 = 26;
  v10 = 1;
  while (v8[v9 - 5] == 21)
  {
    v10 = v44;
    if (v44)
    {
      MarkerArgStr = marker_getMarkerArgStr(1u);
      v8 = v45;
      if (!strcmp(MarkerArgStr, (*(v44 + 8) + v45[v9])))
      {
        goto LABEL_14;
      }

      v10 = 0;
    }

LABEL_21:
    ++v7;
    v9 += 16;
    if (v7 >= v46)
    {
      return 0;
    }
  }

  if (v10 != 1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v8[v9 - 5] != 7 || (v8[v9] - 3) > 5 || (v8[v9 - 1] - 1) > 3)
  {
    goto LABEL_20;
  }

  v47[0] = 0;
  __strncpy_chk();
  *(v47 + v45[v9 - 1]) = 0;
  v12 = Utf8_Utf8NbrOfSymbols(v47);
  v8 = v45;
  v10 = 1;
  if (v45[v9 - 5] != 7 || (v12 - 1) != 1)
  {
    goto LABEL_21;
  }

  if ((v45[v9] - 3) > 5)
  {
LABEL_20:
    v10 = 1;
    goto LABEL_21;
  }

  v13 = &v45[v9];
  if (v7 < 2)
  {
    v16 = 0xFFFF;
  }

  else
  {
    v14 = v7 - 1;
    v15 = v45 + 26;
    v16 = 0xFFFF;
    do
    {
      if (*(v15 - 5) == 7 && *v15 == 1)
      {
        v16 = *(v15 - 2);
      }

      v15 += 16;
      --v14;
    }

    while (v14);
  }

  v18 = *(v13 - 4);
  v17 = *(v13 - 3);
  v19 = *(v13 - 2);
  v20 = *(v13 - 1);
  if (v46 >= 2uLL)
  {
    v21 = 0;
    v22 = v45 + 25;
    v23 = v46 - 1;
    do
    {
      if (v21)
      {
        break;
      }

      v24 = *(v22 - 1);
      if (v24 > v19)
      {
        break;
      }

      if (*(v22 - 4) == 40)
      {
        if (v16 == 0xFFFF && v19 == *v22 + v24 || (v21 = 0, v16 == v45[8]) && v24 >= v16)
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 += 16;
      --v23;
    }

    while (v23);
    if (v21 == 1)
    {
      return 0;
    }
  }

  v25 = v7 + 1;
  v26 = 0xFFFF;
  v27 = 0xFFFF;
  if (v46 > (v7 + 1))
  {
    v26 = v20 + v19;
    while (1)
    {
      v28 = &v45[16 * v25];
      if (v28[8] != v26)
      {
LABEL_51:
        v26 = 0xFFFF;
        v27 = 0xFFFF;
        goto LABEL_52;
      }

      if (v28[5] == 7 && v28[10] == 1)
      {
        break;
      }

      if (v46 <= ++v25)
      {
        goto LABEL_51;
      }
    }

    v27 = v28[9];
  }

LABEL_52:
  v29 = v45[8];
  if (v16 != 0xFFFF || (v30 = v19, v19 != v29))
  {
    v30 = v16;
    if (v16 != v29)
    {
      return 0;
    }
  }

  v31 = v26 == 0xFFFF ? v20 + v19 : v27 + v26;
  if (v31 != v45[9] + v30)
  {
    return 0;
  }

  v36 = v17;
  v37 = v19;
  v38 = v20;
  v45[v9] = 14;
  DWORD1(v42) = 21;
  v32 = v44;
  v33 = marker_getMarkerArgStr(3u);
  result = addOrGetTNArgStr(v32, v33, v43 + 2, a3);
  if ((result & 0x80000000) == 0)
  {
    *(&v42 + 1) = v18;
    *&v43[0] = v45[v9 - 2];
    result = bed_Goto(a1, v7);
    if ((result & 0x80000000) == 0)
    {
      result = bed_marker_InjectFixedRefMarker(a1, &v41);
      if ((result & 0x80000000) == 0)
      {
        DWORD1(v42) = 21;
        v34 = v44;
        v35 = marker_getMarkerArgStr(1u);
        result = addOrGetTNArgStr(v34, v35, v43 + 2, a3);
        if ((result & 0x80000000) == 0)
        {
          *(&v42 + 1) = v36 + v18;
          *&v43[0] = v38 + v37;
          result = bed_marker_InjectFixedRefMarker(a1, &v41);
          if ((result & 0x80000000) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_SplitRegionOnWordSeparatingMarkers(uint64_t a1, int a2)
{
  v25 = 0;
  v24 = 0;
  v20 = MarkerSetTypeOfInput;
  v21 = unk_1C37BECC8;
  v22 = xmmword_1C37BECD8;
  v23 = unk_1C37BECE8;
  result = bed_GetcElem(a1, &v25);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a1, 0, &v24);
    if ((result & 0x80000000) == 0)
    {
      v5 = v25;
      if (v25 >= 2u)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = v24;
        for (i = 1; i < v5; ++i)
        {
          v11 = v9 + (i << 6);
          v12 = *(v11 + 20);
          if (v12 == 7)
          {
            v7 = *(v11 + 24);
            v13 = *(v11 + 8);
            if (v13)
            {
              v6 = *(v13 + 4);
            }

            else
            {
              v6 = 0;
            }

            v8 = i;
          }

          else if (v8)
          {
            v14 = v12 > 0x39 || ((1 << v12) & 0x3C8010124021140) == 0;
            if (!v14 || a2 == 1 && (v12 <= 0x18 ? (v19 = ((1 << v12) & 0x1050000) == 0) : (v19 = 1), !v19 || v12 == 99))
            {
              if (v7 < *(v11 + 24) + v6)
              {
                v15 = (v9 + (v8 << 6));
                DWORD2(v22) = v15[10];
                *(&v21 + 1) = (*(v11 + 24) + v6);
                LODWORD(v22) = *(v11 + 32);
                v16 = v15[8];
                DWORD1(v22) = v15[9];
                v17 = v22 - v16;
                v15[9] = v22 - v16;
                DWORD1(v22) -= v17;
                if (DWORD1(v22))
                {
                  v18 = i + 1;
                  result = bed_Goto(a1, (i + 1));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  result = bed_marker_InjectFixedRefMarker(a1, &v20);
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v9 = v24;
                  v7 = *(v24 + (v18 << 6) + 24) + v6;
                  v5 = ++v25;
                  i = v18;
                  v8 = v18;
                }
              }
            }
          }

          else
          {
            v8 = 0;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t utoin_Normalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53[0] = 7;
  v49 = 0;
  v50 = 0;
  v4 = 2370838535;
  if (!a2 || !a3)
  {
    return v4;
  }

  v51 = 0;
  v48 = 0;
  v9 = *(a1 + 16);
  v10 = bed_GetcElem(a2, &v51);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v11 = datac_RequestBlock(a4, 1029, (v51 + 1), &v50);
  if ((v11 & 0x80000000) != 0)
  {
    if ((v11 & 0x1FFF) == 0x14)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a4, 1029, &v52, 213);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v10 = bed_Goto(a2, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v10 = bed_Goto(a3, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_79;
  }

  v12 = bed_GoForward(a3, bed_marker_IsOfType, v53);
  v4 = v12;
  if ((v12 & 0x80000000) != 0 && (v12 & 0x1FFF) != 0x14)
  {
LABEL_80:
    if (v52)
    {
      bed_ObjClose(v52);
    }

    return v4;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v13 = 0;
    while (2)
    {
      v47 = 0;
      v42 = 0;
      v10 = bed_GetpElem(a3, 0xFFFFu, &v47);
      if ((v10 & 0x80000000) != 0)
      {
LABEL_79:
        v4 = v10;
        goto LABEL_80;
      }

      v41 = v13;
      v14 = v47[1];
      v43 = *v47;
      v44 = v14;
      v15 = v47[3];
      v45 = v47[2];
      v46 = v15;
      v16 = *(v47 + 10);
      v17 = utoin_NormalizeOrthNativeWord;
      if (v16 <= 7)
      {
        if (v16 <= 4)
        {
          if ((v16 - 3) < 2)
          {
            goto LABEL_27;
          }

          if (v16 == 1)
          {
            v19 = utoin_MarkWordBoundary;
            goto LABEL_28;
          }

          if (v16 != 2)
          {
LABEL_42:
            v19 = utoin_RemoveRegion;
            goto LABEL_28;
          }

LABEL_29:
          v20 = *(v9 + 32);
          UTOIMarkerString = getUTOIMarkerString(v16);
          log_OutText(v20, &modPP_3, 5, 0, "[UTOI] (normalize region %s %u,%u)", UTOIMarkerString, *(v47 + 8), *(v47 + 9));
          v10 = v17(a1, a2, a3, v52, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = bed_Goto(a3, 0);
            if ((v10 & 0x80000000) == 0)
            {
              v22 = DWORD2(v44);
              v23 = HIDWORD(v44);
              v24 = v45;
              while (1)
              {
                v25 = bed_GoForward(a3, bed_marker_IsOfType, v53);
                if ((v25 & 0x80000000) != 0)
                {
                  v4 = v25;
                  if ((v25 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_80;
                  }
                }

                v10 = bed_GetpElem(a3, 0xFFFFu, &v47);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_79;
                }

                if (v22 == *(v47 + 6) && v23 == *(v47 + 7) && v24 == *(v47 + 8) && *(&v45 + 1) == *(v47 + 5))
                {
                  break;
                }

                v42 = 1;
                bed_GoForward(a3, bed_marker_IsAt, &v42);
              }

              v29 = *(v47 + 10);
              v13 = v41;
              if ((v29 - 5) < 4)
              {
LABEL_52:
                v29 = 16;
                if (v41 && v41 != 43)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }

              if (v29 == 2)
              {
                v29 = 16;
              }

              else if (v29 == 1)
              {
                goto LABEL_52;
              }

LABEL_59:
              v13 = v29;
LABEL_60:
              v42 = 1;
              bed_GoForward(a3, bed_marker_IsAt, &v42);
              v30 = bed_GoForward(a3, bed_marker_IsOfType, v53);
              v4 = v30;
              if ((v30 & 0x80000000) != 0 && (v30 & 0x1FFF) != 0x14)
              {
                goto LABEL_80;
              }

              if ((v30 & 0x80000000) == 0)
              {
                continue;
              }

              goto LABEL_63;
            }
          }

          goto LABEL_79;
        }

        if (v16 == 5)
        {
          v19 = utoin_RemoveRegion;
          if (*(v47 + 9) > 0x60u)
          {
            goto LABEL_28;
          }

          v26 = (v41 & 0xFFFFFFEF) == 0;
          v27 = utoin_NormalizeOrthNativeText;
          v28 = utoin_NormalizeOrthNativeWord;
LABEL_48:
          if (v26)
          {
            v17 = v28;
          }

          else
          {
            v17 = v27;
          }

          goto LABEL_29;
        }

        if (v16 != 6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = (v16 - 14);
        if (v18 <= 0x3A)
        {
          if (((1 << (v16 - 14)) & 0x700400020000004) != 0)
          {
            goto LABEL_27;
          }

          if (((1 << (v16 - 14)) & 0x40000001) != 0)
          {
            v19 = utoin_SpellRegion;
LABEL_28:
            v17 = v19;
            goto LABEL_29;
          }

          if (v18 == 1)
          {
LABEL_27:
            v19 = utoin_TranscodeText;
            goto LABEL_28;
          }
        }

        if (v16 != 8)
        {
          if (v16 == 99)
          {
            goto LABEL_29;
          }

          goto LABEL_42;
        }
      }

      break;
    }

    v19 = utoin_RemoveRegion;
    if (*(v47 + 9) > 0x20u)
    {
      goto LABEL_28;
    }

    v26 = (v41 & 0xFFFFFFEF) == 0;
    v27 = utoin_TranscodeText;
    v28 = utoin_TranscodeWord;
    goto LABEL_48;
  }

LABEL_63:
  v31 = bed_GetpElem(a3, 0, &v49);
  if ((v31 & 0x80000000) != 0)
  {
    return v31;
  }

  v4 = bed_GetcElem(a3, &v48);
  if ((v4 & 0x80000000) == 0)
  {
    v32 = v48;
    if (v48 >= 2u)
    {
      v33 = 0;
      v34 = 1;
      while (1)
      {
        if (*(v49 + v33 + 84) == 7 && !*(v49 + v33 + 100))
        {
          v35 = *(v49 + v33 + 104);
          v36 = v35 > 7;
          v37 = (1 << v35) & 0xA4;
          if (!v36 && v37 != 0)
          {
            v39 = *(v49 + v33 + 72);
            if (v39)
            {
              heap_Free(*(v9 + 8), v39);
              *(v49 + v33 + 72) = 0;
              *(v49 + v33 + 80) = 0;
            }

            v4 = bed_Remove(a3, v34, 1u);
            if ((v4 & 0x80000000) != 0)
            {
              return v4;
            }

            log_OutText(*(v9 + 32), &modPP_3, 5, 0, "[UTOI] (deleted zero length entry, marker %d)", v34);
            v32 = --v48;
          }
        }

        ++v34;
        v33 += 64;
        if (v34 >= v32)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_80;
  }

  return v4;
}

uint64_t utoin_InsertRegions(_WORD **a1, uint64_t a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v2 = 2370838535;
  v44 = 0;
  v45 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = bed_ObjOpen(*a1, a1[1], a2, 1020, &v45, 213);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_ObjOpen(*a1, a1[1], a2, 1021, &v44, 213);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  UTOITrace(*(a1 + 18), a1[2], v45, v44, "BEFORE utoin_RemoveEmptyPhonemes");
  v6 = a1[2];
  v7 = v44;
  *__s = 0;
  if (!v44)
  {
    goto LABEL_87;
  }

  __src[0] = 0;
  v5 = bed_GetpElem(v44, 0, __s);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v7, __src);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v8 = __src[0];
  if (__src[0] >= 2u)
  {
    v9 = 1;
    v10 = 2;
    v11 = 160;
    v12 = 1;
    do
    {
      v13 = (*__s + (v9 << 6));
      if (v13[5] == 7)
      {
        ++v9;
        if (v13[10] == 43 && v9 < v8)
        {
          v15 = (*__s + v11);
          v16 = v10;
          while (1)
          {
            v17 = *(v15 - 3);
            if (v17 == 999 || v17 == 7)
            {
              v19 = v13[8];
              if (*v15 >= v19 && *v15 < v13[9] + v19)
              {
                break;
              }
            }

            ++v16;
            v15 += 16;
            if (v8 == v16)
            {
              goto LABEL_26;
            }
          }

          if (*(*__s + (v16 << 6) + 32) == v19)
          {
            v13[9] = 0;
            log_OutText(*(v6 + 4), &modPP_3, 5, 0, "[UTOIN] zero length phoneme found at marker %d", v12);
            v8 = __src[0];
          }
        }
      }

      else
      {
        ++v9;
      }

LABEL_26:
      ++v10;
      v11 += 64;
      v12 = v9;
    }

    while (v9 < v8);
  }

  UTOITrace(*(a1 + 18), a1[2], v45, v44, "BEFORE utoin_InsertRegionTags");
  v21 = v44;
  v20 = v45;
  v53[0] = 7;
  v50 = 0;
  v48 = 0;
  if (!v45 || !v44)
  {
    goto LABEL_87;
  }

  v5 = bed_Goto(v45, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_Goto(v21, 0);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v49 = 0;
  v5 = bed_GetpElem(v21, 0, &v50);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v21, &v49 + 1);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v22 = bed_GoForward(v21, bed_marker_IsOfType, v53);
  v2 = v22;
  if ((v22 & 0x80000000) != 0 && (v22 & 0x1FFF) != 0x14)
  {
    goto LABEL_87;
  }

  v23 = 0;
  v24 = 0;
  v25 = &__s[1];
  while ((v2 & 0x80000000) == 0)
  {
    v47 = 0;
    v46 = 0;
    v5 = bed_GetpElem(v21, 0xFFFFu, &v47);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v5 = bed_GetiElem(v21, &v46);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v5 = bed_GetpElem(v21, 0, &v48);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v26 = *(v47 + 40);
    v27 = v26 != 43 || v24 == 0;
    if (!v27 && *(v48 + (v24 << 6) + 40) == 43)
    {
      v23 = 15;
    }

    v5 = utoin_PutClosingAndOpeningTag(v23, v26, __s);
    if ((v5 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    v28 = *(v47 + 40);
    if ((v28 - 5) >= 4)
    {
      if (v28 == 2)
      {
        v28 = 16;
LABEL_58:
        v23 = v28;
        goto LABEL_59;
      }

      if (v28 != 1)
      {
        goto LABEL_58;
      }
    }

    v28 = 16;
    if (!v23 || v23 == 43)
    {
      goto LABEL_58;
    }

LABEL_59:
    v29 = strlen(__s);
    if (v29)
    {
      v30 = *(v50 + 32);
      v31 = *(v47 + 32) - v30;
      LOWORD(v49) = *(v47 + 32) - v30;
      v5 = bed_Goto(v20, v31);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      __strcpy_chk();
      v5 = bed_Insert(v20, __src, v29);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v5 = bed_GetiElem(v21, &v49);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v32 = v47;
      v33 = *(v47 + 32);
      v34 = v49;
      v35 = HIWORD(v49);
      if (v49 < HIWORD(v49))
      {
        v36 = v47;
        do
        {
          *(v36 + 32) += v29;
          v36 += 64;
          ++v34;
        }

        while (v34 < v35);
        v47 = v36;
      }

      if (v33 > *(v50 + 32) && *(v32 - 32) == v33)
      {
        v37 = (v32 - 44);
        do
        {
          if (*v37 == 36)
          {
            v37[3] = *(v32 + 32);
          }

          v38 = *(v37 - 13);
          v37 -= 16;
        }

        while (v38 == v33);
      }
    }

    v24 = v46;
    LOWORD(v49) = 1;
    bed_GoForward(v21, bed_marker_IsAt, &v49);
    v39 = bed_GoForward(v21, bed_marker_IsOfType, v53);
    v2 = v39;
    if ((v39 & 0x80000000) != 0 && (v39 & 0x1FFF) != 0x14)
    {
      goto LABEL_87;
    }
  }

  __s[0] = 0;
  if (v23)
  {
    if ((v23 - 3) > 1)
    {
      v40 = __s;
    }

    else
    {
      __s[0] = 17;
      v40 = &__s[1];
      v25 = &__s[2];
    }

    *v40 = 31;
    *v25 = 0;
  }

  v41 = strlen(__s);
  if (!v41 || (v42 = v41, v5 = bed_GetcElem(v20, &v49), (v5 & 0x80000000) == 0) && (v5 = bed_Goto(v20, v49), (v5 & 0x80000000) == 0) && (__strcpy_chk(), v5 = bed_Insert(v20, __src, v42), (v5 & 0x80000000) == 0))
  {
    UTOITrace(*(a1 + 18), a1[2], v45, v44, "AFTER utoin_InsertRegionTags");
    v2 = 0;
    goto LABEL_87;
  }

LABEL_86:
  v2 = v5;
LABEL_87:
  if (v44)
  {
    bed_ObjClose(v44);
  }

  if (v45)
  {
    bed_ObjClose(v45);
  }

  return v2;
}

uint64_t utoin_RemoveBlankRegions(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v34[0] = 1;
  result = bed_GetpElem(a2, 0, &v32);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a2, &v33 + 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_FindForward(a2, bed_marker_IsToiOfType, v34, &v33);
  v9 = v33;
  if (v33 < a3)
  {
    result = bed_GetpElem(a2, v33, &v31);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v10 = 0;
    v9 = v33;
    v11 = (v31 + 64);
    do
    {
      if (v10 || v11 >= v31 + (HIWORD(v33) << 6) - (v33 << 6))
      {
        break;
      }

      v12 = v11[8];
      v13 = *(v31 + 36) + *(v31 + 32);
      if (v12 == v13 && v11[5] == 7)
      {
        v14 = v11[10];
        v10 = v14 <= 0x2C && ((1 << v14) & 0x10000001C000) != 0;
      }

      else
      {
        v10 = 0;
      }

      v11 += 16;
    }

    while (v12 <= v13);
    if (v10)
    {
      result = bed_FindForward(a2, bed_marker_IsToiOfType, v34, &v33);
      goto LABEL_37;
    }
  }

  if ((result & 0x80000000) != 0 || v9 >= a3)
  {
LABEL_37:
    if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
    {
      v30 = bed_Goto(a2, a3);
      return v30 & (v30 >> 31);
    }

    return result;
  }

  while (1)
  {
    result = bed_GetpElem(a2, v9, &v31);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = bed_Remove(a4, (*(v31 + 32) - *(v32 + 32)), *(v31 + 36));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    v15 = v31;
    v16 = HIWORD(v33);
    v17 = v33;
    if ((HIWORD(v33) - v33) >= 2)
    {
      v18 = v31 + 64;
      v19 = *(v31 + 36);
      do
      {
        v20 = *(v18 + 32);
        v21 = *(v15 + 32);
        v22 = v19 + v21;
        if (v20 == v19 + v21 && *(v18 + 20) == 7 && *(v18 + 40) != 43)
        {
          v23 = *(v18 + 28) + *(v15 + 28);
          *(v18 + 24) = *(v15 + 24);
          *(v18 + 28) = v23;
          v24 = v32;
          v25 = *(v18 + 16);
          result = growOffsets(a1, v18, 1u);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v26 = *(v15 + 28);
          v27 = (*(v18 + 8) + 8 * v25);
          *v27 = *(v15 + 24) - *(v24 + 24);
          v27[1] = v26;
          v20 = *(v18 + 32);
          v15 = v31;
          v21 = *(v31 + 32);
          v19 = *(v31 + 36);
          v16 = HIWORD(v33);
          v17 = v33;
          v22 = v19 + v21;
        }

        if (v20 >= v22)
        {
          v28 = v20 - v19;
        }

        else
        {
          v28 = v21;
        }

        *(v18 + 32) = v28;
        v18 += 64;
      }

      while (v18 < v15 + (v16 << 6) - (v17 << 6));
    }

    v29 = *(v15 + 8);
    if (v29)
    {
      heap_Free(*(a1 + 8), v29);
      *(v31 + 8) = 0;
      v17 = v33;
    }

    result = bed_Remove(a2, v17, 1u);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    --HIWORD(v33);
    LOWORD(a3) = a3 - 1;
    result = bed_FindForward(a2, bed_marker_IsToiOfType, v34, &v33);
    if ((result & 0x80000000) == 0)
    {
      LOWORD(v9) = v33;
      if (v33 < a3)
      {
        continue;
      }
    }

    goto LABEL_37;
  }
}

uint64_t growOffsets(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = 2370838538;
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  if (v6)
  {
    v8 = heap_Realloc(v7, v6, (8 * (*(a2 + 16) + a3)) | 1);
    if (v8)
    {
      v5 = 0;
      *(a2 + 8) = v8;
      *(a2 + 16) += v3;
    }
  }

  else
  {
    v9 = heap_Calloc(v7, a3, 9);
    *(a2 + 8) = v9;
    if (v9)
    {
      v5 = 0;
      *(a2 + 16) = v3;
    }
  }

  return v5;
}

uint64_t utoin_LookUpWordsInNativeRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v48 = MarkerSetTypeOfInput2;
  v49 = unk_1C37BEE28;
  result = 2370838535;
  v50 = xmmword_1C37BEE38;
  v51 = unk_1C37BEE48;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  v55 = 0;
  result = bed_GetpElem(a3, 0, &v56);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a3, &v55);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a3, 0, &v59);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v58);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a3, 0xFFFFu, &v57);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetiElem(a3, &v54 + 1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = 0;
  v47 = *(v57 + 40);
  v11 = *(v57 + 24);
  v12 = *(v57 + 16);
  v13 = 1;
  if (*(a1 + 168) == 1 && *(v57 + 16))
  {
    v14 = heap_Calloc(*(*(a1 + 16) + 8), v12 + 1, 3);
    if (!v14)
    {
      return 2370838538;
    }

    v10 = v14;
    v15 = heap_Calloc(*(*(a1 + 16) + 8), v12 + 1, 9);
    result = 2370838538;
    if (!v15)
    {
      return result;
    }

    v16 = 0;
    v17 = *(v57 + 8);
    do
    {
      *(v15 + v16) = *(v17 + v16);
      v16 += 8;
    }

    while (8 * v12 != v16);
    v18 = 0;
    LOWORD(v19) = 0;
    v20 = 0;
    v21 = v57;
    v22 = 4;
    do
    {
      if (!v18)
      {
        v23 = **(v21 + 8);
        if (v23 > *(v21 + 24))
        {
          v20 += v23;
          v19 = **(v21 + 8);
        }
      }

      v24 = v18 + 1;
      if (v18 + 1 >= v12)
      {
        LOWORD(v25) = *(v21 + 36) - v20;
      }

      else
      {
        v25 = *(*(v21 + 8) + v22 + 4) - (*(*(v21 + 8) + v22 - 4) + *(*(v21 + 8) + v22));
        v20 += v25;
      }

      v10[v18] = v25;
      v22 += 8;
      ++v18;
    }

    while (v12 != v24);
    v46 = v15;
    if (v19)
    {
      memmove(v10 + 1, v10, 2 * v12);
      v13 = 0;
      *v10 = v19;
      v26 = v12 + 1;
      LODWORD(v12) = (v12 + 1);
      goto LABEL_28;
    }

    v13 = 1;
  }

  else
  {
    v46 = 0;
  }

  v26 = v12;
LABEL_28:
  v27 = *(v57 + 32) - *(v59 + 32);
  v28 = v27 + *(v57 + 36);
  if (*(a1 + 168) && v26)
  {
    v42 = v11;
    v43 = v13;
    v29 = 0;
    v44 = v12;
    v45 = v26;
    while (1)
    {
      v30 = v29;
      v31 = v10[v29];
      v32 = v59;
      if (v31 < 1)
      {
        break;
      }

      v33 = (v31 + v27);
      if (v33 >= v28)
      {
        v34 = v28;
      }

      else
      {
        v34 = v33;
      }

      if ((utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, v55, v58, v47, v57, v27, v34, &v54, &v53, &v52) & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      LOWORD(v27) = v54 + v34;
      v28 += v54;
      ++v29;
      if (v53 == 1 && v29 < v44)
      {
        v35 = (v27 - v52);
        if ((bed_Goto(a2, v35) & 0x80000000) != 0 || (bed_Insert(a2, " ", 1) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        v36 = v56;
        if (v55 >= 2uLL)
        {
          v37 = v56[8] + v35;
          v38 = v56 + 24;
          v39 = v55 - 1;
          do
          {
            v40 = *v38;
            if (v37 <= v40)
            {
              *v38 = v40 + 1;
            }

            v38 += 16;
            --v39;
          }

          while (v39);
        }

        ++*(v36 + 36);
        if ((bed_Goto(a3, 1u) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        DWORD2(v50) = 1;
        if (v43)
        {
          v41 = v56;
          *(&v49 + 1) = (*(v46 + 8 * v29) + v56[6]);
        }

        else
        {
          *(&v49 + 1) = (*(v46 + 8 * v30) + v42);
          v41 = v56;
        }

        LODWORD(v50) = *(v41 + 32) + v35;
        DWORD1(v50) = 1;
        if ((bed_marker_InjectFixedRefMarker(a3, &v48) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }

        LOWORD(v27) = v27 + 1;
        ++v28;
      }

      if (v29 == v45)
      {
        v32 = v59;
        break;
      }
    }

    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v32, v56, v55, v58, v47, v57, v27, v28, &v54, &v53, &v52);
  }

  else
  {
    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, v55, v58, v47, v57, v27, v28, &v54, &v53, &v52);
  }

LABEL_59:
  if (v10)
  {
LABEL_60:
    heap_Free(*(*(a1 + 16) + 8), v10);
  }

  if (v46)
  {
    heap_Free(*(*(a1 + 16) + 8), v46);
  }

  return 0;
}

uint64_t utoin_LookUpWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  v26 = 0;
  v6 = 2370838538;
  v24 = 0;
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v21 = 0;
        __src = 0;
        v23 = 0;
        result = bed_GetpElem(a3, 0, &v26);
        if ((result & 0x80000000) == 0)
        {
          result = bed_GetpElem(a2, 0, &v25);
          if ((result & 0x80000000) == 0)
          {
            result = bed_GetpElem(a3, 0xFFFFu, &v24);
            if ((result & 0x80000000) == 0)
            {
              v12 = *(v24 + 32);
              v13 = *(v26 + 32);
              v14 = *(v24 + 36);
              __src = 0;
              v15 = *(a1 + 130);
              if (v14 <= v15)
              {
                LOWORD(v21) = v14;
                v16 = heap_Calloc(*(*(a1 + 16) + 8), v15 + 1, 1);
                v20 = v16;
                if (v16 && (memmove(v16, (v25 + (v12 - v13)), v14), (__src = heap_Calloc(*(*(a1 + 16) + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1)) != 0))
                {
                  v6 = utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &v20, 1, *(a1 + 130), *(a1 + 128), v19);
                  if ((v6 & 0x80000000) == 0 && HIDWORD(v21))
                  {
                    if (HIDWORD(v21) == 43 || HIDWORD(v21) == 16)
                    {
                      *(v24 + 40) = HIDWORD(v21);
                    }

                    v17 = bed_Insert(a4, __src, v23);
                    if ((v17 & 0x80000000) == 0)
                    {
                      if (LH_stricmp(*(a1 + 24), v19))
                      {
                        v18 = v19;
                      }

                      else
                      {
                        v18 = 0;
                      }

                      v17 = utoin_ReplaceCurrentRegion(a2, a3, a4, a5, v18);
                    }

                    v6 = v17;
                  }
                }

                else
                {
                  log_OutPublic(*(*(a1 + 16) + 32), &modPP_3, 1923, 0);
                }

                if (v20)
                {
                  heap_Free(*(*(a1 + 16) + 8), v20);
                }

                if (__src)
                {
                  heap_Free(*(*(a1 + 16) + 8), __src);
                }

                return v6;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_LookUpSubWordsInNativeRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, int a9, uint64_t a10, unsigned __int16 a11, unsigned __int16 a12, _WORD *a13, _DWORD *a14, _WORD *a15)
{
  v74 = a6;
  v73 = a7;
  v72 = a8;
  v71 = 0;
  if (!a6)
  {
    return 2370838535;
  }

  v20 = a15;
  __n = 0;
  __src = 0;
  v70 = 0;
  *a14 = 0;
  *a13 = 0;
  *a15 = 0;
  if (a9 != 3)
  {
    goto LABEL_10;
  }

  v22 = *(a10 + 32);
  v23 = *(a10 + 36) + v22;
  if (!utoin_multiwordInLatinRegion(a6, a7, &v71 + 1, &v71, v22, v23))
  {
    if (*(a1 + 72) == 1)
    {
      log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no multiword found for latin region %d and %d)", v22, v23);
    }

LABEL_10:
    v25 = 0;
    v27 = 0;
    v65 = 0;
    goto LABEL_11;
  }

  v24 = *(a5 + 32);
  v25 = (*(a6 + (HIWORD(v71) << 6) + 32) - v24);
  v26 = *(a6 + (v71 << 6) + 32);
  v27 = v26 - v24;
  if (*(a1 + 72) == 1)
  {
    log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", *(a6 + (HIWORD(v71) << 6) + 32), v26);
  }

  v65 = 1;
LABEL_11:
  __dst = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
  v29 = *(a1 + 16);
  if (__dst)
  {
    __src = heap_Calloc(*(v29 + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1);
    if (!__src)
    {
LABEL_15:
      v29 = *(a1 + 16);
      goto LABEL_16;
    }

    if (*(a1 + 72) == 1)
    {
      v30 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
      if (!v30)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = 0;
    }

    v63 = a2;
    v31 = a12;
    if (a11 >= a12)
    {
      goto LABEL_17;
    }

    v60 = v27;
    v58 = a5;
    v32 = a11;
    v61 = a3;
    v62 = a4;
    while (1)
    {
      if (a9 == 3)
      {
        v33 = v25;
        v34 = strlen(v72);
        v35 = v32;
        if (v32 >= v31)
        {
          v37 = 1;
        }

        else
        {
          do
          {
            v36 = utf8_BelongsToSet(2u, v72, v35, v34);
            v37 = v36 == 1;
            if (v36 != 1)
            {
              break;
            }

            v32 += utf8_determineUTF8CharLength(v72[v32]);
            v35 = v32;
          }

          while (v32 < v31);
        }

        if ((a11 == v32 || (a11 >= v32 ? (v40 = 1) : (v40 = v37), (v40 & 1) == 0 && utf8_BelongsToSet(2u, v72, v35 - 1, v34) == 1)) && (v39 = v32 + utf8_determineUTF8CharLength(v72[v32]), v39 < v31))
        {
          v25 = v33;
          a4 = v62;
          while (1)
          {
            v38 = v39;
            if (utf8_BelongsToSet(2u, v72, v39, v34))
            {
              break;
            }

            v39 = v38 + utf8_determineUTF8CharLength(v72[v38]);
            if (v39 >= v31)
            {
              goto LABEL_49;
            }
          }

          if (!v38)
          {
LABEL_49:
            v38 = v31;
            goto LABEL_50;
          }

          if (utf8_BelongsToSet(2u, v72, v38, v34) != 1)
          {
            v38 = v31;
          }

LABEL_50:
          v20 = a15;
        }

        else
        {
          v38 = v31;
          v20 = a15;
          v25 = v33;
          a4 = v62;
        }
      }

      else
      {
        v38 = v31;
      }

      if (v65 == 1 && ((v41 = v38, v38 > v25) || v32 >= v25))
      {
        if (v38 >= v25)
        {
          v41 = v25;
        }

        if (v25 <= v32)
        {
          v38 = v60;
        }

        else
        {
          v38 = v41;
        }

        if (v25 > v32)
        {
          v42 = 0;
        }

        else
        {
          v32 = v25;
          v42 = 1;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = v38 - v32;
      if (v43 < 1)
      {
        goto LABEL_17;
      }

      if (v43 > *v20)
      {
        *v20 = v38 - v32;
      }

      if (!v72)
      {
        goto LABEL_17;
      }

      v64 = v42;
      if (*(a1 + 130) >= (v38 - v32))
      {
        v44 = (v38 - v32);
      }

      else
      {
        v44 = *(a1 + 130);
      }

      LOWORD(__n) = v44;
      memmove(__dst, &v72[v32], v44);
      v45 = __n;
      if (*(a1 + 72) == 1)
      {
        strncpy(v30, __dst, __n);
        v30[__n] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (lookup User Dict for %s)", v30);
      }

      if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__dst, a9 == 3, *(a1 + 130), *(a1 + 128), v66) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      if (a9 == 3)
      {
        v46 = HIDWORD(__n);
      }

      else
      {
        while (1)
        {
          v46 = HIDWORD(__n);
          v47 = __n < 2u || __n > v45;
          if (v47 || HIDWORD(__n) != 0)
          {
            break;
          }

          LOWORD(__n) = utf8_GetPreviousUtf8Offset(__dst, __n);
          if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__dst, a9 == 3, *(a1 + 130), *(a1 + 128), v66) & 0x80000000) != 0)
          {
            goto LABEL_17;
          }
        }
      }

      if (v46 > 15)
      {
        if (v46 == 16)
        {
          if (!LH_stricmp(*(a1 + 24), "jpj") && HIDWORD(__n) != 2)
          {
LABEL_96:
            if (a9 == 3 && *(a1 + 72) == 1)
            {
              log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no (valid) User Dict entry found)");
            }

            if (a9 == 3)
            {
              v32 = v38;
            }

            v32 += utf8_determineUTF8CharLength(v72[v32]);
            v20 = a15;
            goto LABEL_112;
          }
        }

        else if (v46 != 43)
        {
          goto LABEL_96;
        }
      }

      else if (v46 == 2)
      {
        if (*__src <= 0x7Eu)
        {
          HIDWORD(__n) = 3;
        }
      }

      else if (v46 != 3)
      {
        goto LABEL_96;
      }

      v59 = v25;
      *a15 = 0;
      *a14 = 1;
      if (*(a1 + 72) == 1)
      {
        strncpy(v30, __src, v70);
        v30[v70] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (found User Dict entry %s)", v30);
      }

      if (LH_stricmp(*(a1 + 24), v66))
      {
        v49 = v66;
      }

      else
      {
        v49 = 0;
      }

      if ((utoin_ReplaceWord(v63, v61, v32, &__dst, 1, a4, v49) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      if ((bed_GetpElem(v63, 0, &v72) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v50 = a4;
      v51 = v70;
      v52 = __n;
      *a13 = v70 + *a13 - __n;
      if ((bed_GetpElem(v61, 0, &v74) & 0x80000000) != 0 || (bed_GetcElem(v61, &v73) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v32 += v51;
      v31 = v51 + v31 - v52;
      a4 = v50;
      v20 = a15;
      v25 = v59;
LABEL_112:
      if (v64)
      {
        v53 = v74;
        v54 = *(v58 + 32);
        v55 = *(a10 + 32) + v31;
        if (utoin_multiwordInLatinRegion(v74, v73, &v71 + 1, &v71, v54 + v32, v55))
        {
          v56 = *(v53 + (HIWORD(v71) << 6) + 32);
          v25 = (v56 - v54);
          v57 = *(v53 + (v71 << 6) + 32);
          v60 = v57 - v54;
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", v56, v57);
          }

          v65 = 1;
        }

        else
        {
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no further multiwords found in latin region %d and %d)", v54 + v32, v55);
          }

          v25 = 0;
          v60 = 0;
          v65 = 0;
        }

        a4 = v62;
        v20 = a15;
      }

      if (v32 >= v31)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_16:
  log_OutPublic(*(v29 + 32), &modPP_3, 1923, 0);
  v30 = 0;
LABEL_17:
  if (__dst)
  {
    heap_Free(*(*(a1 + 16) + 8), __dst);
    __dst = 0;
  }

  if (__src)
  {
    heap_Free(*(*(a1 + 16) + 8), __src);
    __src = 0;
  }

  if (v30)
  {
    heap_Free(*(*(a1 + 16) + 8), v30);
  }

  return 0;
}

uint64_t utoin_multiwordInLatinRegion(uint64_t a1, unsigned int a2, _WORD *a3, __int16 *a4, unsigned int a5, unsigned int a6)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a1 + 104);
  for (i = 1; ; ++i)
  {
    v9 = (a1 + (v6 << 6));
    if (v9[5] == 32 && v9[10] == 1)
    {
      v10 = v9[8];
      v11 = v10 < a5 || v10 > a6;
      if (!v11 && v6 + 1 < a2)
      {
        break;
      }
    }

LABEL_21:
    ++v6;
    v7 += 16;
    if (v6 == a2)
    {
      return 0;
    }
  }

  v13 = v7;
  v14 = i;
  while (1)
  {
    if (*(v13 - 5) == 32 && !*v13)
    {
      v15 = *(v13 - 2);
      if (v15 >= v10 && v15 <= a6)
      {
        break;
      }
    }

    v13 += 16;
    if (a2 == ++v14)
    {
      goto LABEL_21;
    }
  }

  *a3 = v6;
  *a4 = v14;
  return 1;
}

uint64_t utoin_ReplaceCurrentRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v33 = 0;
  v34 = 0;
  v30 = 0;
  __src = 0;
  *v25 = 0;
  v26 = MarkerSetLang;
  v27 = unk_1C37BED08;
  memset(v28, 0, sizeof(v28));
  if (!a3)
  {
    return 2370838535;
  }

  v32 = 0;
  v29 = 0;
  result = bed_GetpElem(a2, 0, &v34);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v33);
    if ((result & 0x80000000) == 0)
    {
      v11 = *(v33 + 32);
      v12 = *(v34 + 32);
      v13 = *(v33 + 36);
      if (a4 && a5)
      {
        result = datac_RequestBlock(a4, 1012, 1u, v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        DWORD1(v27) = 36;
        result = addOrGetTNArgStr(*v25, a5, v28 + 2, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *(&v27 + 1) = *(v33 + 24);
        *&v28[0] = *(v33 + 32);
        result = bed_Goto(a2, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_marker_InjectFixedRefMarker(a2, &v26);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v33 += 64;
      }

      result = bed_GetcElem(a3, &v32 + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = v11 - v12;
      if (HIWORD(v32))
      {
        if (v13 >= HIWORD(v32))
        {
          v15 = HIWORD(v32);
        }

        else
        {
          v15 = v13;
        }

        result = bed_GetpElem(a3, 0, &__src);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_GetpElem(a1, 0, &v30);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = 0;
        if (v15)
        {
          while (1)
          {
            v17 = (v30 + v14 + v16);
            v18 = __src + v16;
            if (*v17 != *v18 || v17[1] != v18[1])
            {
              break;
            }

            if (v15 <= ++v16)
            {
              v16 = v15;
              break;
            }
          }
        }

        result = bed_Remove(a1, v14, v13);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Goto(a1, v14);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Insert(a1, __src, HIWORD(v32));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Remove(a3, 0, HIWORD(v32));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }
      }

      else
      {
        result = bed_Remove(a1, (v11 - v12), v13);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = 0;
      }

      v19 = HIWORD(v32);
      *(v33 + 36) = HIWORD(v32);
      result = bed_GetiElem(a2, &v29);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a2, &v32);
        if ((result & 0x80000000) == 0)
        {
          v20 = v32;
          v21 = v29 + 1;
          if (v32 <= (v29 + 1))
          {
            return 0;
          }

          else
          {
            v22 = v34;
            v23 = HIWORD(v32);
            v24 = (v33 + 96);
            do
            {
              if (v19 != v13 && *v24 > v14 + v16 + *(v22 + 32))
              {
                *v24 = *v24 - v13 + v23;
              }

              result = 0;
              ++v21;
              v24 += 16;
            }

            while (v20 > v21);
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_RemoveRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = 0;
  result = 2370838535;
  v21 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v20 = 0;
          result = bed_GetpElem(a3, 0, &v23);
          if ((result & 0x80000000) == 0)
          {
            result = bed_GetpElem(a2, 0, &v22);
            if ((result & 0x80000000) == 0)
            {
              result = bed_GetpElem(a3, 0xFFFFu, &v21);
              if ((result & 0x80000000) == 0)
              {
                v8 = *(v21 + 32) - *(v23 + 32);
                v9 = *(v21 + 36);
                result = bed_Remove(a2, v8, v9);
                if ((result & 0x80000000) == 0)
                {
                  *(v21 + 36) = 0;
                  result = bed_GetiElem(a3, &v20 + 1);
                  if ((result & 0x80000000) == 0)
                  {
                    result = bed_GetcElem(a3, &v20);
                    if ((result & 0x80000000) == 0)
                    {
                      v10 = v20;
                      v11 = HIWORD(v20) + 1;
                      if (v20 <= (HIWORD(v20) + 1))
                      {
                        return 0;
                      }

                      else
                      {
                        v12 = v23;
                        v13 = (v21 + 100);
                        do
                        {
                          v14 = *(v13 - 1);
                          v15 = *(v12 + 32) + v8;
                          if (v14 >= v15 + v9)
                          {
                            *(v13 - 1) = v14 - v9;
                          }

                          else
                          {
                            *(v13 - 1) = v15;
                            v16 = *v13 + v15;
                            v17 = v9 + v8 + *(v12 + 32);
                            v18 = v16 >= v17;
                            v19 = v16 - v17;
                            if (v18)
                            {
                              *v13 = v19;
                            }

                            else
                            {
                              *v13 = 0;
                            }
                          }

                          result = 0;
                          ++v11;
                          v13 += 16;
                        }

                        while (v10 > v11);
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
  }

  return result;
}

uint64_t utoin_MarkWordBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          result = bed_Insert(a4, &szWORD_END_0, 1);
          if ((result & 0x80000000) == 0)
          {
            result = bed_Insert(a4, &szWORD_BEG, 1);
            if ((result & 0x80000000) == 0)
            {

              return utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t utoin_SpellRegion(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  v5 = 2370838535;
  v22 = 0;
  v20 = 0;
  if (a1 && a2 && a3 && a4)
  {
    v21 = 0;
    v11 = a1[2];
    v12 = datac_RequestBlock(a5, 1012, 1u, &v21);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v12 = bed_GetpElem(a3, 0, &v24);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v13 = *(v24 + 32);
    v12 = bed_GetpElem(a2, 0, &v23);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v12 = bed_GetpElem(a3, 0xFFFFu, &v22);
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    else
    {
      v14 = *(v22 + 36);
      if (*(v22 + 36))
      {
        v19 = *(v22 + 32);
        v15 = heap_Alloc(*(v11 + 8), (v14 + 1));
        if (v15)
        {
          v16 = v15;
          bzero(v15, (v14 + 1));
          memmove(v16, (v23 + (v19 - v13)), v14);
          v17 = (*(a1[13] + 72))(a1[14], a1[15], v16, v14, v14, a4, a5, v21, 1012, &v20, *(v22 + 40) == 44);
          if ((v17 & 0x80000000) == 0)
          {
            v17 = utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0);
          }

          v5 = v17;
          heap_Free(*(v11 + 8), v16);
        }

        else
        {
          return 2370838538;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t utoin_NormalizeOrthNative(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v100 = 0;
  v101[0] = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v93 = MarkerUndef;
  v94 = unk_1C37BEE80;
  v6 = 2370838535;
  v95 = xmmword_1C37BEE90;
  v96 = unk_1C37BEEA0;
  if (a1 && a2 && a3 && a4)
  {
    v88 = 0;
    v13 = *(a1 + 16);
    if (!*(a1 + 164))
    {
      v14 = datac_RequestBlock(a6, 1012, 1u, &v92);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v14 = bed_GetpElem(a3, 0, v101);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v15 = *(v101[0] + 32);
    v86 = *(v101[0] + 24);
    v14 = bed_GetpElem(a2, 0, &v100);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v14 = bed_GetpElem(a3, 0xFFFFu, &v97);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v84 = v15;
    v83 = a3;
    v17 = *(v97 + 32);
    v16 = *(v97 + 36);
    v85 = v13;
    v18 = heap_Alloc(*(v13 + 8), (v16 + 1));
    if (!v18)
    {
      return 2370838538;
    }

    v19 = v18;
    __len = v16;
    bzero(v18, (v16 + 1));
    v20 = v16;
    memmove(v19, (v100 + (v17 - v84)), v16);
    v21 = v92;
    if (*(a1 + 164))
    {
      v81 = 0;
    }

    else
    {
      v81 = *(v92 + 16);
    }

    v22 = v83;
    *(a1 + 148) = 0x100000001;
    v23 = (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), v19, v20, v20, a2, v83, a4, a6, v21, 1012, &v91, a5, &v90, a1 + 136);
    if ((v23 & 0x80000000) != 0)
    {
      goto LABEL_102;
    }

    v6 = bed_GetcElem(a2, &v98);
    if ((v6 & 0x80000000) != 0 || !v98)
    {
      goto LABEL_103;
    }

    v23 = bed_GetpElem(a2, 0, &v99);
    if ((v23 & 0x80000000) != 0)
    {
LABEL_102:
      v6 = v23;
      goto LABEL_103;
    }

    v24 = *(v97 + 32);
    v78 = *(v97 + 24);
    v14 = bed_GetpElem(v83, 0, &v89);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v25 = bed_GetcElem(v83, &v88);
    v26 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      return v25;
    }

    else
    {
      v72 = v19;
      v27 = *(v97 + 8);
      v28 = *(v97 + 16);
      if (*(v97 + 16))
      {
        v29 = *(v97 + 16);
        v30 = *(v97 + 8);
        do
        {
          *v30 += v86 - v78;
          v30 += 2;
          --v29;
        }

        while (v29);
      }

      v74 = v28;
      v31 = v91;
      v32 = (a1 + 136);
      if (v91)
      {
        v33 = 0;
        v34 = v24 - v84;
        v35 = (v24 - v84);
        v36 = v91 + v35;
        v37 = v24 - v84;
        do
        {
          if (*(v99 + v37) == 16)
          {
            ++v33;
          }

          ++v37;
        }

        while (v36 > v37);
        v80 = 0;
        v38 = 0;
        v39 = 0;
        v87 = 0;
        v73 = (v27 + 4);
        v79 = 1;
        v40 = (v24 - v84);
        v41 = __len;
        v76 = v40;
        do
        {
          if (*(v99 + v34) != 16)
          {
LABEL_38:
            v44 = v39;
            goto LABEL_96;
          }

          if (v36 <= v34)
          {
LABEL_37:
            if (*(a1 + 164))
            {
              goto LABEL_38;
            }

            v45 = v26;
            v46 = v31;
            v43 = strlen((*(v92 + 8) + (v81 + v87) * *(v92 + 2)));
            v22 = v83;
            v31 = v46;
            v26 = v45;
            v32 = (a1 + 136);
          }

          else
          {
            v42 = v34;
            while (*(v99 + v42) != 17)
            {
              if (v36 <= ++v42)
              {
                if (*(v99 + v42) != 17)
                {
                  goto LABEL_37;
                }

                break;
              }
            }

            v43 = v42 + ~v34;
          }

          if (!v43)
          {
            v44 = v39;
            v35 = v76;
            goto LABEL_96;
          }

          v47 = *(a1 + 144);
          v48 = v39 < v47;
          if (v39 && v47 > v39)
          {
            while (*(*v32 - 8 + 12 * v39) == 1 && *(*v32 + 12 * v39 + 4) == 1)
            {
              v39 = (v39 + 1);
              if (v47 <= v39)
              {
                v48 = 0;
                goto LABEL_49;
              }
            }

            v48 = 1;
          }

LABEL_49:
          v44 = (v39 + 1);
          if (v47 <= (v39 + 1))
          {
            v49 = v39 + 1;
          }

          else
          {
            v49 = *(a1 + 144);
          }

          v50 = v39;
          while (v47 > ++v50)
          {
            if (*(*v32 + 12 * v50 - 8) != 1 || *(*v32 + 12 * v50 + 4) != 1)
            {
              goto LABEL_58;
            }
          }

          v50 = v49;
LABEL_58:
          if (v48)
          {
            v51 = *v32;
            v52 = v41;
            if (v47 != v50)
            {
              v52 = *(v51 + 12 * v50);
            }

            v53 = *(v51 + 12 * v39);
            LOWORD(v51) = v52 - v53;
            v54 = v74;
            goto LABEL_68;
          }

          v54 = v74;
          if (*(a1 + 148) == 1)
          {
            if (v33 != 1)
            {
              v53 = 0;
              v44 = v39;
              LOWORD(v51) = v43 / *(a1 + 160);
              goto LABEL_68;
            }

            v53 = 0;
            LODWORD(v51) = *(v97 + 28);
          }

          else
          {
            v53 = 0;
            LOWORD(v51) = 0;
          }

          v44 = v39;
LABEL_68:
          v55 = v51;
          v56 = 0;
          if (v54)
          {
            v57 = v54;
            v58 = v73;
            do
            {
              v59 = *(v58 - 1);
              if (v59 > v53 + v51 + v38)
              {
                break;
              }

              v60 = v38 + v53;
              if (v59 == v38 + v53)
              {
                v38 += *v58;
                v60 = v38 + v53;
              }

              if (v59 > v60 && v59 <= v60 + v51)
              {
                v56 = *v58;
              }

              v58 += 2;
              --v57;
            }

            while (v57);
          }

          v77 = v56;
          v62 = v78 + v80 + v53 + v38;
          DWORD2(v94) = v62;
          HIDWORD(v94) = v51;
          v75 = v40 + v84;
          LODWORD(v95) = v40 + v84;
          DWORD1(v95) = v43;
          if (*(a1 + 164))
          {
            v63 = 0;
          }

          else
          {
            DWORD1(v94) = 39;
            DWORD2(v95) = v81 + v87;
            v63 = strlen((*(v92 + 8) + DWORD2(v95) * *(v92 + 2)));
            v64 = bed_marker_InjectFixedRefMarker(v22, &v93);
            if ((v64 & 0x80000000) != 0)
            {
              v6 = v64;
LABEL_107:
              v19 = v72;
              goto LABEL_103;
            }
          }

          DWORD1(v94) = 41;
          *(&v95 + 1) = 0;
          v26 = bed_marker_InjectFixedRefMarker(v22, &v93);
          v65 = v79;
          if ((v26 & 0x80000000) != 0)
          {
            goto LABEL_106;
          }

          if (v90)
          {
            if (*v90 >= v79)
            {
              v66 = v90[v79];
            }

            else
            {
              log_OutText(*(v85 + 32), &modPP_3, 5, 0, "[UTOI] (missing POS for normalized word %d", v79);
              v66 = 0;
            }

            DWORD1(v94) = 14;
            DWORD2(v94) = v62;
            if (*(a1 + 148) == 1)
            {
              v67 = v55;
            }

            else
            {
              v67 = 0;
            }

            if (v95 == v84)
            {
              v68 = v84;
            }

            else
            {
              v68 = v75;
            }

            HIDWORD(v94) = v55;
            *&v95 = v68;
            DWORD2(v95) = v66;
            v26 = bed_marker_InjectFixedRefMarker(v22, &v93);
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_106;
            }

            v80 += v67;
            v65 = (v79 + 1);
          }

          v35 = v76;
          v79 = v65;
          v38 += v77;
          v87 += v63 + 1;
          v31 = v91;
          v32 = (a1 + 136);
          v41 = __len;
LABEL_96:
          v40 = ++v34;
          v36 = v35 + v31;
          v39 = v44;
        }

        while (v35 + v31 > v34);
      }

      if (*(a1 + 146) < 0x15u)
      {
LABEL_106:
        v6 = v26;
        goto LABEL_107;
      }

      v69 = v26;
      v70 = heap_Realloc(*(v85 + 8), *v32, 120);
      v6 = 2370838538;
      v19 = v72;
      if (v70)
      {
        *(a1 + 136) = v70;
        *(a1 + 146) = 10;
        v6 = v69;
      }

LABEL_103:
      heap_Free(*(v85 + 8), v19);
      if (v90)
      {
        heap_Free(*(v85 + 8), v90);
      }
    }
  }

  return v6;
}

uint64_t utoin_Transcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 2370838538;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  v79 = 0;
  v80 = MarkerUndef;
  v81 = unk_1C37BEE80;
  v82 = xmmword_1C37BEE90;
  v83 = unk_1C37BEEA0;
  v6 = 2370838535;
  if (a1 && a2 && a3 && a4)
  {
    v78 = 0;
    v12 = *(a1 + 16);
    v13 = bed_GetpElem(a3, 0, &v87);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a2, 0, &v86);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0, &v79);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetcElem(a3, &v78);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0xFFFFu, &v85);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    else
    {
      v14 = *(v87 + 32);
      v16 = *(v85 + 32);
      v15 = *(v85 + 36);
      v17 = *(v85 + 24);
      v76 = *(v85 + 40);
      v18 = *(v85 + 8);
      v19 = *(v85 + 16);
      if (*(v85 + 16))
      {
        v20 = *(v87 + 24) - v17;
        v21 = *(v85 + 16);
        v22 = *(v85 + 8);
        do
        {
          *v22 += v20;
          v22 += 2;
          --v21;
        }

        while (v21);
      }

      if (v15)
      {
        v72 = v18;
        v74 = v19;
        v75 = v17;
        v84 = v15 + 1;
        v23 = heap_Alloc(*(v12 + 8), (v15 + 1));
        if (v23)
        {
          v70 = v16;
          v24 = v16 - v14;
          v25 = v23;
          bzero(v23, v84--);
          *(a1 + 144) = 0;
          *(a1 + 148) = 0x100000001;
          v26 = utoin_TranscodeLatinText(a1, v12, v86 + v24, v15, v25, &v84, a1 + 136, v76);
          if ((v26 & 0x80000000) != 0)
          {
            v40 = v25;
          }

          else
          {
            __s = v25;
            if (!a5 || (v26 = bed_Insert(a4, &szWORD_BEG, 1), (v26 & 0x80000000) == 0))
            {
              v27 = strlen(v25);
              v28 = heap_Alloc(*(v12 + 8), (v27 + 1));
              if (v28)
              {
                v29 = v28;
                v30 = strlen(v25);
                bzero(v29, v30 + 1);
                v31 = strcpy(v29, v25);
                v32 = strlen(v31);
                v33 = bed_Insert(a4, v29, v32);
                v69 = v29;
                if ((v33 & 0x80000000) != 0 || a5 && (v33 = bed_Insert(a4, &szWORD_END_0, 1), (v33 & 0x80000000) != 0) || (v33 = utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0), (v33 & 0x80000000) != 0))
                {
LABEL_94:
                  v5 = v33;
                }

                else
                {
                  if (v76 == 16 && v78 >= 2uLL)
                  {
                    v34 = 0;
                    v35 = v15 + v70;
                    v36 = (v79 + 100);
                    v37 = v78 - 1;
                    do
                    {
                      v38 = *(v36 - 1);
                      if (v38 > v35)
                      {
                        break;
                      }

                      v39 = *(v36 - 4) == 998 && v38 >= v70;
                      if (v39 && *v36 + v38 <= v35)
                      {
                        ++v34;
                      }

                      v36 += 16;
                      --v37;
                    }

                    while (v37);
                    v77 = v34 > 1u;
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if (*(v85 + 40) != 43)
                  {
                    v41 = *(a1 + 144);
                    if (*(a1 + 144))
                    {
                      v42 = 0;
                      v43 = 0;
                      v44 = 0;
                      v73 = (v72 + 4);
                      while (v43 < v41)
                      {
                        v45 = *(a1 + 136);
                        v46 = v43;
                        if (*(v45 + 12 * v43 + 4) != 1)
                        {
                          v50 = 1;
                          goto LABEL_54;
                        }

                        v47 = (v45 + 12 * v43 + 16);
                        v48 = v70;
                        while (v41 - 1 != v46)
                        {
                          v49 = *v47;
                          v47 += 3;
                          ++v46;
                          if (v49 != 1)
                          {
                            v50 = v46 < v41;
                            goto LABEL_55;
                          }
                        }

                        v50 = 0;
                        v46 = v41;
LABEL_55:
                        v43 = (v46 + 1);
                        if (v41 <= (v46 + 1))
                        {
                          v51 = v46 + 1;
                        }

                        else
                        {
                          v51 = v41;
                        }

                        v52 = v46;
                        while (1)
                        {
                          v53 = ++v52;
                          if (v52 >= v41)
                          {
                            break;
                          }

                          if (*(*(a1 + 136) + 12 * v52 + 4) != 1)
                          {
                            goto LABEL_63;
                          }
                        }

                        v52 = v51;
LABEL_63:
                        if (v50)
                        {
                          v54 = *(a1 + 136);
                          v55 = (v54 + 12 * v46);
                          v50 = v55[4];
                          if (v52 == v41)
                          {
                            LOWORD(v56) = v84 - *(v54 + 12 * (v53 - 1) + 8);
                          }

                          else
                          {
                            LOWORD(v56) = *(v54 + 12 * v53 + 8) - v50;
                          }

                          v57 = *v55;
                          v58 = *(v54 + 12 * v46 + 2);
                          v56 = v56;
                        }

                        else
                        {
                          v57 = 0;
                          v58 = 0;
                          v56 = 0;
                          v43 = v46;
                        }

                        v59 = v74;
                        if (v74)
                        {
                          v60 = 0;
                          v61 = v73;
                          do
                          {
                            v62 = *(v61 - 1);
                            if (v62)
                            {
                              v63 = v62 > v56 + v57 + v42;
                            }

                            else
                            {
                              v63 = 0;
                            }

                            if (v63)
                            {
                              break;
                            }

                            v64 = v42 + v57;
                            if (v62 == v42 + v57)
                            {
                              v42 = *v61;
                              v64 = *v61 + v57;
                            }

                            if (v62 > v64 && v62 <= v64 + v56)
                            {
                              v60 = *v61;
                            }

                            v61 += 2;
                            --v59;
                          }

                          while (v59);
                        }

                        else
                        {
                          v60 = 0;
                        }

                        DWORD1(v81) = 41;
                        DWORD2(v81) = v57 + v75 + v42;
                        HIDWORD(v81) = v60 + v58;
                        LODWORD(v82) = v50 + v48;
                        DWORD1(v82) = v56;
                        if (!v77)
                        {
                          v33 = bed_marker_InjectFixedRefMarker(a3, &v80);
                          if ((v33 & 0x80000000) != 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        v13 = bed_GetpElem(a3, 0, &v79);
                        if ((v13 & 0x80000000) != 0)
                        {
                          return v13;
                        }

                        v6 = bed_GetcElem(a3, &v78);
                        if ((v6 & 0x80000000) != 0)
                        {
                          return v6;
                        }

                        v42 += v60;
                        ++v44;
                        v41 = *(a1 + 144);
                        if (v41 <= v44)
                        {
                          goto LABEL_99;
                        }
                      }

                      v50 = 0;
LABEL_54:
                      v46 = v43;
                      v48 = v70;
                      goto LABEL_55;
                    }
                  }

                  v6 = 0;
LABEL_99:
                  if (*(a1 + 146) >= 0x15u)
                  {
                    v68 = heap_Realloc(*(v12 + 8), *(a1 + 136), 120);
                    v67 = __s;
                    if (v68)
                    {
                      *(a1 + 136) = v68;
                      *(a1 + 146) = 10;
                      v5 = v6;
                    }

                    goto LABEL_96;
                  }

                  v5 = v6;
                }

                v67 = __s;
LABEL_96:
                heap_Free(*(v12 + 8), v67);
                v40 = v69;
                goto LABEL_97;
              }

              v40 = v25;
LABEL_97:
              heap_Free(*(v12 + 8), v40);
              return v5;
            }

            v40 = v25;
          }

          v5 = v26;
          goto LABEL_97;
        }

        return 2370838538;
      }

      else
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t utoin_TranscodeLatinText(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5, _WORD *a6, uint64_t a7, unsigned int a8)
{
  v60 = 0;
  result = 2370838535;
  if (a3 && a6 && *a6)
  {
    if (a4)
    {
      v54 = a1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v57 = a5 - 1;
      v59 = a4;
      while (1)
      {
        v17 = (a3 + v16);
        v18 = *v17;
        if (v18 - 9 <= 4)
        {
          v19 = v13 + 1;
          if (v19 >= a4 || v18 != 13 || *(a3 + v19) != 10)
          {
            v21 = 0;
            a5[v15] = 32;
            goto LABEL_29;
          }

          v20 = 0;
          v21 = 0;
          goto LABEL_30;
        }

        if (((v18 & 0xDF) - 65) < 0x1Au || (v18 != 32 ? (v22 = (v18 - 48) >= 0xAu) : (v22 = 0), !v22))
        {
          v21 = 0;
          a5[v15] = v18;
          goto LABEL_29;
        }

        v23 = a8;
        if (a8 <= 0x3C)
        {
          if (((1 << a8) & 0x1000080000000140) != 0)
          {
            goto LABEL_26;
          }

          v23 = a8;
          if (a8 == 16)
          {
            if (v18 == 195 && (v17[1] | 0x20) == 0xBC)
            {
              v21 = 0;
              a5[v15] = 118;
              ++v16;
              goto LABEL_29;
            }

            goto LABEL_26;
          }
        }

        if (v23 - 70 >= 3)
        {
          v60 = 0;
          v45 = utf8_determineUTF8CharLength(v18);
          if (*v17 == 227 && v17[1] == 128 && v17[2] == 128)
          {
            v60 = heap_Alloc(*(a2 + 8), 2);
            *v60 = 32;
          }

          else
          {
            result = (*(v54[13] + 80))(v54[14], v54[15], a3 + v16, v45, &v60);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (v60)
          {
            a5[v15] = *v60;
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v26 = 1;
          goto LABEL_80;
        }

LABEL_26:
        v24 = utf8_determineUTF8CharLength(v18);
        v25 = *v17;
        if (v24 == 1)
        {
          if (v25 != 255)
          {
            goto LABEL_28;
          }
        }

        else if (v25 == 194 && v17[1] == 167 && !v17[2])
        {
LABEL_28:
          v21 = 0;
          a5[v15] = v25;
LABEL_29:
          v20 = 1;
LABEL_30:
          v26 = 1;
          goto LABEL_31;
        }

        v26 = 0;
        v60 = 0;
        v20 = 1;
LABEL_80:
        v21 = 1;
LABEL_31:
        v27 = utf8_determineUTF8CharLength(*a5);
        if (v15)
        {
          v28 = &a5[v15];
          v29 = *v28 != 32 && !utf8_BelongsToSet(5u, a5, v14, v27);
          v30 = v57[v15];
          if (v30 == 32)
          {
LABEL_36:
            v31 = 1;
            goto LABEL_44;
          }

          if (v15 >= 3u && *(v28 - 3) == 227)
          {
            v31 = 0;
            if (*(v28 - 2) == 128 && v30 == 128)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
          v29 = 1;
        }

LABEL_44:
        v32 = v20 & v26;
        if (!v15)
        {
          v31 = 1;
        }

        if (v32 == 1 && v29 && v31 && a5[v15] != 17 && *(a7 + 16) == 1)
        {
          v33 = *(a7 + 8);
          v34 = *a7;
          if (v33 >= *(a7 + 10))
          {
            v35 = heap_Realloc(*(a2 + 8), v34, 12 * *(a7 + 10) + 121);
            if (!v35)
            {
              return 2370838538;
            }

            v34 = v35;
            *a7 = v35;
            *(a7 + 10) += 10;
            v33 = *(a7 + 8);
          }

          v36 = v34 + 12 * v33;
          *v36 = v16;
          *(v36 + 2) = 0;
          *(v36 + 4) = 0;
          *(v36 + 8) = v15;
          *(a7 + 8) = v33 + 1;
        }

        v37 = v60;
        if (v60)
        {
          v38 = 0;
        }

        else
        {
          v38 = v21;
        }

        if (v38)
        {
          v39 = 0;
        }

        else
        {
          if ((v21 & (v60 != 0)) == 0)
          {
            v37 = (a3 + v16);
          }

          v39 = utf8_determineUTF8CharLength(*v37);
          if (v39 >= 2u)
          {
            ++v15;
            v40 = v60;
            if ((v21 & (v60 != 0)) == 0)
            {
              v40 = (a3 + v16);
            }

            v41 = v40 + 1;
            v42 = v39 - 1;
            while (1)
            {
              v43 = *v41++;
              a5[v15] = v43;
              if (!--v42)
              {
                break;
              }

              ++v15;
            }
          }
        }

        if (v21)
        {
          v39 = utf8_determineUTF8CharLength(*(a3 + v16));
        }

        if (v60)
        {
          heap_Free(*(a2 + 8), v60);
          v60 = 0;
        }

        v16 += v39;
        v15 += v32;
        v14 = v15;
        v13 = v16;
        a4 = v59;
        v44 = v16 < v59;
        if (v15 >= *a6 || v59 <= v16)
        {
          goto LABEL_91;
        }
      }
    }

    LOWORD(v15) = 0;
    v44 = 0;
LABEL_91:
    a5[v15] = 0;
    v46 = *(a7 + 8);
    if (*(a7 + 8))
    {
      v47 = 0;
      v48 = *a7;
      do
      {
        v49 = a4;
        if (v47 + 1 < v46)
        {
          v49 = *(v48 + 12 * (v47 + 1));
        }

        if (v49)
        {
          do
          {
            v50 = *(a3 - 1 + v49);
            if (v50 > 0x20 || ((1 << v50) & 0x100002600) == 0)
            {
              if (v49 < 3u)
              {
                goto LABEL_108;
              }

              v53 = a3 + v49;
              if (*(v53 - 3) != 227 || *(v53 - 2) != 128 || v50 != 128)
              {
                goto LABEL_108;
              }

              v52 = -3;
            }

            else
            {
              v52 = -1;
            }

            LOWORD(v49) = v49 + v52;
          }

          while (v49);
          LOWORD(v49) = 0;
        }

LABEL_108:
        *(v48 + 12 * v47 + 2) = v49 - *(v48 + 12 * v47);
        ++v47;
      }

      while (v47 != v46);
    }

    if (v44)
    {
      return 2370838537;
    }

    else
    {
      result = 0;
      *a6 = v15;
    }
  }

  return result;
}

uint64_t utoin_PutClosingAndOpeningTag(int a1, int a2, _BYTE *a3)
{
  if (!a3)
  {
    return 2370838535;
  }

  *a3 = 0;
  if ((a2 - 5) >= 4)
  {
    if (a2 == 2)
    {
      v3 = 16;
      goto LABEL_11;
    }

    if (a2 != 1)
    {
      v3 = a2;
      goto LABEL_11;
    }
  }

  v3 = 16;
  if (a1 && a1 != 43)
  {
    return 0;
  }

LABEL_11:
  if (v3 == a1)
  {
    return 0;
  }

  if ((a1 - 3) >= 2)
  {
    if (!a1)
    {
      v6 = 0;
      goto LABEL_19;
    }

    v6 = 1;
    v5 = a3;
  }

  else
  {
    *a3 = 17;
    v5 = a3 + 1;
    v6 = 2;
  }

  *v5 = 31;
LABEL_19:
  if (a2 <= 4)
  {
    if ((a2 - 3) < 2)
    {
      v7 = &a3[v6];
      *v7 = 19486;
      v8 = 16;
      goto LABEL_32;
    }

    if (a2 == 1)
    {
LABEL_21:
      if (a1 == 16)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (a2 != 2)
    {
      goto LABEL_33;
    }

LABEL_30:
    *&a3[v6] = 20510;
    v6 += 2;
    goto LABEL_33;
  }

  if ((a2 - 5) < 4)
  {
    goto LABEL_21;
  }

  if (a2 == 16)
  {
    goto LABEL_30;
  }

  if (a2 == 43)
  {
    v7 = &a3[v6];
    *v7 = 12062;
    v8 = 43;
LABEL_32:
    v7[2] = v8;
    v6 += 3;
  }

LABEL_33:
  result = 0;
  a3[v6] = 0;
  return result;
}

char *getUTOIMarkerString(int a1)
{
  if (a1 == 43)
  {
    return "UTOI_PHONEMEMARKER";
  }

  v3 = &off_1E81A5350;
  v4 = 19;
  result = "UTOI_UNDEF";
  while (*(v3 - 2) != a1)
  {
    v3 += 2;
    if (!--v4)
    {
      return result;
    }
  }

  return *v3;
}

uint64_t UTOITrace(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = 0;
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
      v13 = strncpy(v11, __src, __n[0]);
      v13[__n[0]] = 0;
      v15 = (a2 + 32);
      v14 = *(a2 + 32);
      v16 = v12;
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
  v15 = (a2 + 32);
  v14 = *(a2 + 32);
LABEL_11:
  v16 = "";
LABEL_12:
  log_OutText(v14, "PP", 5, 0, "[UTOI] (%s) len=%d (LH_U8 *) %s", a5, v10, v16);
  v18 = bed_GetpElem(a4, 0, &__n[1]);
  if ((v18 & 0x80000000) != 0)
  {
    v17 = v18;
  }

  else
  {
    v17 = bed_GetcElem(a4, &v40);
    if ((v17 & 0x80000000) == 0 && v40)
    {
      v38 = v12;
      v19 = 0;
      v20 = *&__n[1];
      do
      {
        v21 = v20 + (v19 << 6);
        v22 = *(v21 + 20);
        if (v22 == 7)
        {
          v23 = *(v21 + 40);
          if (v23 == 43)
          {
            String = "UTOI_PHONEMEMARKER";
          }

          else
          {
            v25 = &off_1E81A5350;
            v26 = 19;
            while (*(v25 - 2) != v23)
            {
              v25 += 2;
              if (!--v26)
              {
                String = "UTOI_UNDEF";
                goto LABEL_25;
              }
            }

            String = *v25;
          }
        }

        else
        {
          String = marker_getString(v22);
          v20 = *&__n[1];
        }

LABEL_25:
        v27 = v20 + (v19 << 6);
        if (*(v27 + 48))
        {
          v28 = strlen(*(v27 + 48));
          if (v28 <= 0x20uLL)
          {
            v29 = v28;
          }

          else
          {
            v29 = 31;
          }

          __strncpy_chk();
          v42[v29] = 0;
          v20 = *&__n[1];
        }

        else
        {
          v42[0] = 0;
        }

        v30 = (v20 + (v19 << 6));
        v31 = v30[5];
        if (v31 == 32)
        {
          v42[0] = 48;
          if (v30[10] == 1)
          {
            v32 = 49;
          }

          else
          {
            v32 = 48;
          }

          v42[0] = v32;
          v42[1] = 0;
          v31 = v30[5];
        }

        v33 = "";
        if (*v30 == 1)
        {
          v33 = "[INT] ";
        }

        log_OutText(*v15, "PP", 5, 0, "[UTOI] Marker[%d] %s[type=%5d %s]  Ref (%u,%u) Cur(%u,%u) %s", v19, v33, v31, String, v30[6], v30[7], v30[8], v30[9], v42);
        v20 = *&__n[1];
        if (*(*&__n[1] + (v19 << 6) + 16))
        {
          v34 = 0;
          v35 = 0;
          do
          {
            v36 = (*(v20 + (v19 << 6) + 8) + v34);
            log_OutText(*v15, "PP", 5, 0, "[UTOI] Offsets[%d] %u,%u", v35++, *v36, v36[1]);
            v20 = *&__n[1];
            v34 += 8;
          }

          while (v35 < *(*&__n[1] + (v19 << 6) + 16));
        }

        ++v19;
      }

      while (v19 < v40);
      v12 = v38;
    }
  }

  if (v12)
  {
    heap_Free(*(a2 + 8), v12);
  }

  return v17;
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
  v9 = 0;
  if (a3 && (InitRsrcFunction(a1, a2, &v9) & 0x80000000) == 0)
  {
    *a3 = 0;
    v7 = heap_Alloc(*(v9 + 8), 16);
    if (v7)
    {
      v3 = 0;
      *v7 = a1;
      v7[1] = a2;
      *a3 = v7;
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
  v67 = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  LODWORD(v57) = 1;
  DWORD1(v58) = 1;
  v56 = 0;
  v4 = 2370838535;
  v55 = 0;
  if (!a1 || !a2)
  {
    return v4;
  }

  v9 = datac_RequestBlock(a2, 1020, 1u, &v65);
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

  if (!*(v65 + 16))
  {
    return 0;
  }

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, &v64, 213);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(v65 + 8);
    v12 = *(v65 + 16);
    v10 = bed_GetpElem(v64, 0, &v63);
    if ((v10 & 0x80000000) == 0)
    {
      v61 = *v63;
      v62 = *(v63 + 2);
      v13 = *(v63 + 6);
      v14 = *(v63 + 7);
      v54 = *(v63 + 8);
      v66[0] = *(v63 + 36);
      *(v66 + 12) = v63[3];
      v10 = bed_GetcElem(v64, &v55);
      if ((v10 & 0x80000000) == 0)
      {
        v10 = bed_GetpElem(v64, 0, &v56);
        if ((v10 & 0x80000000) == 0)
        {
          v15 = v55;
          if (v55 < 2u)
          {
            v15 = 1;
          }

          else
          {
            v16 = (v56 + 96);
            v17 = 1;
            while (1)
            {
              v18 = *v16;
              v16 += 16;
              if (v18 != *(v56 + 32))
              {
                break;
              }

              if (v55 == ++v17)
              {
                goto LABEL_20;
              }
            }

            v15 = v17;
          }

LABEL_20:
          v20 = v63;
          v19 = v64;
          *(v63 + 7) = 0;
          *(v20 + 9) = 0;
          v10 = bed_Goto(v19, 1u);
          if ((v10 & 0x80000000) == 0)
          {
            v51 = v14;
            v52 = v13;
            if (!v12)
            {
LABEL_86:
              v4 = bed_GetpElem(v64, 0, &v63);
              if ((v4 & 0x80000000) == 0)
              {
                v49 = v62;
                v48 = v63;
                *v63 = v61;
                *(v48 + 2) = v49;
                *(v48 + 36) = v66[0];
                v48[3] = *(v66 + 12);
                *(v48 + 7) = v51 + a4;
                *(v48 + 8) = v54;
                *(v48 + 6) = v52 - a4;
              }

              goto LABEL_89;
            }

            v21 = 0;
            v22 = 0;
            v53 = v52 + a3;
            v23 = v14 + v52;
            while (1)
            {
              v24 = v22;
              v25 = v22;
              do
              {
                if (!utf8_BelongsToSet(4u, v11, v24, v12))
                {
                  break;
                }

                v25 = v25 + utf8_determineUTF8CharLength(*(v11 + v25));
                v24 = v25;
              }

              while (v25 < v12);
              v22 = v25;
              if (v12 > v25)
              {
                v22 = v25;
                do
                {
                  if (utf8_BelongsToSet(4u, v11, v22, v12))
                  {
                    break;
                  }

                  v22 = v22 + utf8_determineUTF8CharLength(*(v11 + v22));
                }

                while (v12 > v22);
              }

              if (v25 < v22)
              {
                if (v55 >= 2u)
                {
                  v26 = 0;
                  v27 = 0;
                  v28 = 1;
                  do
                  {
                    v29 = (v56 + (v28 << 6));
                    v30 = v29[8] - *(v56 + 32);
                    v31 = v30 < v24 || v30 > v22;
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

                  while (v30 <= v22 && v28 < v55);
                  if (v26 == 1 && v27)
                  {
                    v35 = *(v56 + (v27 << 6) + 32) - *(v56 + 32);
                    if (v35 <= v24 || v35 > v22)
                    {
                      v22 = v22;
                    }

                    else
                    {
                      v22 = v35;
                    }
                  }
                }

                if (v25 && v15 < v55)
                {
                  v37 = v15;
                  v38 = (v56 + 32 + (v15 << 6));
                  do
                  {
                    if (*v38 - *(v56 + 32) > v24)
                    {
                      break;
                    }

                    if (*(v38 - 3) != 1)
                    {
                      v21 += *(v38 - 1);
                    }

                    ++v37;
                    v38 += 16;
                  }

                  while (v37 < v55);
                  v15 = v37;
                }

                if (v15 >= v55)
                {
                  v39 = 0;
                  v40 = v22;
                }

                else
                {
                  v39 = 0;
                  v40 = v22;
                  v41 = (v56 + 32 + (v15 << 6));
                  v42 = v55 - v15;
                  do
                  {
                    v43 = *v41 - *(v56 + 32);
                    if (v43 <= v24 || v43 >= v22)
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

                LODWORD(v59) = v24 + v54;
                DWORD1(v59) = v40 - v24;
                v45 = v53 + v24 + v21;
                v46 = v39 + v40 - v24;
                if (v46 + v45 > v23 && v23 >= v45)
                {
                  v46 = v23 - v45;
                }

                DWORD2(v58) = v53 + v24 + v21;
                HIDWORD(v58) = v46;
                v10 = bed_marker_InjectFixedRefMarker(v64, &v57);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetcElem(v64, &v55);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }

                v10 = bed_GetpElem(v64, 0, &v56);
                if ((v10 & 0x80000000) != 0)
                {
                  break;
                }
              }

              if (v12 <= v22)
              {
                goto LABEL_86;
              }
            }
          }
        }
      }
    }
  }

  v4 = v10;
LABEL_89:
  if (v64)
  {
    bed_ObjClose(v64);
  }

  return v4;
}

uint64_t utois_ScanRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, unsigned __int16 *a8, void *a9, uint64_t a10, char *a11, __int16 a12, __int16 a13, unsigned __int16 a14)
{
  v219 = *MEMORY[0x1E69E9840];
  v196 = 0;
  v197 = 0;
  v14 = 2370838535;
  v195 = 0;
  if (!a7)
  {
    return v14;
  }

  v16 = a7;
  if ((InitRsrcFunction(a5, a6, &v195) & 0x80000000) != 0)
  {
    return v14;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1020, &v197, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((bed_ObjOpen(a5, a6, v16, 1021, &v196, 213) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  UTOITrace(a4, v195, v197, v196, "BEFORE utois_ScanTaggedText");
  v23 = v195;
  *&v215 = 0;
  if (!v197 || !v196 || (datac_RequestBlock(v16, 1021, 1u, &v215) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v186 = a1;
  v187 = a2;
  v189 = a3;
  v183 = a5;
  v184 = a6;
  v185 = a8;
  v24 = v215;
  v25 = *(v215 + 16);
  if (v25 >= 2)
  {
    v194 = v23;
    v192 = a4;
    v26 = *(v215 + 8);
    v27 = v26 + 8;
    v28 = 1;
    v29 = 1;
    do
    {
      v30 = &v26[16 * v29];
      if (v30[5] == 7 && v30[10] == 43 && v25 > (v28 + 1))
      {
        v31 = (v28 + 1);
        v32 = &v27[16 * v31];
        while (*(v32 - 3) != 7)
        {
          ++v31;
          v32 += 16;
          if (v25 == v31)
          {
            goto LABEL_26;
          }
        }

        if (v32[2] == 43 && v30[8] == *v32)
        {
          v190 = v27;
          if (v31 >= (v28 + 1))
          {
            v180 = v16;
            v33 = v28 + 1;
            do
            {
              v34 = &v26[16 * v33];
              v37 = *(v34 + 6);
              v36 = v34 + 12;
              v35 = v37;
              if (v37)
              {
                heap_Free(*(v194 + 8), v35);
                *v36 = 0;
              }

              ++v33;
            }

            while (v33 <= v31);
            v24 = v215;
            v16 = v180;
          }

          memmove(v32 - 8, v32 + 8, (*(v24 + 16) - v31) << 6);
          v38 = *(v215 + 16) - 1;
          *(v215 + 16) = v38;
          memmove(&v26[16 * v29], &v26[16 * (v28 + 1)], (v38 - v28) << 6);
          v24 = v215;
          LOWORD(v25) = *(v215 + 16) - 1;
          *(v215 + 16) = v25;
          --v29;
          v27 = v190;
        }
      }

LABEL_26:
      v28 = ++v29;
    }

    while (v29 < v25);
    a4 = v192;
    if (v25 >= 2u)
    {
      v39 = v26 + 6;
      v40 = 0x1080200080;
      v41 = 1;
      v42 = 1;
      while (1)
      {
        while (1)
        {
          v43 = &v26[16 * v42];
          if (v43[5] != 7)
          {
            goto LABEL_78;
          }

          v44 = (v41 + 1);
          if (v25 > (v41 + 1))
          {
            break;
          }

LABEL_34:
          v47 = v43[10];
          if (v47 != 15)
          {
            v43[9] = v26[9] + v26[8] - v43[8];
            if (v47 == 43)
            {
              v48 = v43[6];
              v49 = v26[7] + v26[6];
              v50 = v49 >= v48;
              v51 = v49 - v48;
              if (v50)
              {
                v43[7] = v51;
              }
            }

            goto LABEL_78;
          }

          v43[9] = 0;
          if (!*v43)
          {
LABEL_36:
            v43[5] = 999;
          }

LABEL_78:
          v41 = ++v42;
          if (v42 >= v25)
          {
            a4 = v192;
            goto LABEL_87;
          }
        }

        v45 = (v41 + 1);
        v46 = &v39[16 * v45];
        while (*(v46 - 1) != 7)
        {
          ++v45;
          v46 += 16;
          if (v25 == v45)
          {
            goto LABEL_34;
          }
        }

        v52 = v43[10];
        v53 = v46[4];
        if (v52 == 43)
        {
          if (v53 == 43)
          {
            v54 = *(v46 + 3);
            if (v54)
            {
              v191 = v39;
              v55 = v40;
              heap_Free(*(v194 + 8), v54);
              v40 = v55;
              v39 = v191;
              *(v46 + 3) = 0;
            }

            v56 = 0;
            *(v46 - 1) = 999;
          }

          else
          {
            if (v25 > v45)
            {
              v58 = v46;
              v59 = v45;
              do
              {
                v60 = *(v58 - 1);
                v61 = v60 > 0x24 || ((1 << v60) & v40) == 0;
                if (!v61 || v60 == 999)
                {
                  v62 = *v58 - v43[7];
                  *v58 = v62;
                  if (v59 > v45 && v62 > *v46)
                  {
                    *v58 = v62 - v46[1];
                  }
                }

                ++v59;
                v58 += 16;
              }

              while (v59 < v25);
            }

            v56 = 0;
          }

          v63 = *v46;
          v64 = v43[6];
          goto LABEL_67;
        }

        if (v52 == v53)
        {
          break;
        }

        if (v43[8] != v46[2])
        {
          if (v52 == 15 && !*v43)
          {
            goto LABEL_36;
          }

          v56 = 0;
          v63 = *v46;
          v64 = v43[6] + v43[7];
LABEL_67:
          v43[7] = v63 - v64;
LABEL_74:
          if (v43[5] == 999)
          {
            if (v56)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v43[9] = v46[2] - v43[8];
            if (v56)
            {
LABEL_83:
              v68 = v45 + 1;
              if (v68 < v25)
              {
                v67 = v46 - 6;
                v65 = &v26[16 * v68];
                v66 = (v25 - v45) << 6;
                goto LABEL_85;
              }

              goto LABEL_86;
            }
          }

          goto LABEL_78;
        }

        v43[10] = v53;
        if (*(v46 - 6))
        {
          goto LABEL_70;
        }

        v46[4] = v53;
        if (!*v43)
        {
          goto LABEL_36;
        }

        if (v44 < v25)
        {
          v65 = &v26[16 * v44];
          v66 = (v25 - v41) << 6;
          v67 = &v26[16 * v42];
LABEL_85:
          v69 = v40;
          memmove(v67, v65, v66);
          v40 = v69;
        }

LABEL_86:
        LOWORD(v25) = v25 - 1;
        v41 = v42;
        a4 = v192;
        if (v42 >= v25)
        {
          goto LABEL_87;
        }
      }

      if (v52 == 60 || v52 == 16)
      {
        v56 = *(v46 - 6);
        if (v56)
        {
LABEL_70:
          v56 = 1;
        }

        else
        {
          *(v46 - 1) = 999;
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
  *(v215 + 16) = v25;
  UTOITrace(a4, v195, v197, v196, "BEFORE utois_ScanTextForSpell");
  v70 = v196;
  *&v211 = 21;
  __src = 0;
  v209 = 0;
  v207 = 0;
  v215 = MarkerSetTypeOfInput_0;
  v216 = unk_1C37BEF20;
  v217 = xmmword_1C37BEF30;
  v218 = unk_1C37BEF40;
  if (!v197)
  {
    goto LABEL_216;
  }

  if (!v196)
  {
    goto LABEL_216;
  }

  LOWORD(v205) = 0;
  v206 = 0;
  if ((bed_GetcElem(v197, &v205) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if ((datac_RequestBlock(v16, 1012, 1u, &v206) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v71 = *(v206 + 8);
  if ((bed_Goto(v70, 0) & 0x80000000) != 0 || (bed_GetpElem(v70, 0, &__src) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v72 = *(__src + 8);
  v73 = bed_GoForward(v70, bed_marker_IsOfType, &v211);
  if ((v73 & 0x1FFF) != 0x14)
  {
    if (v73 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v209) & 0x80000000) != 0)
    {
      goto LABEL_216;
    }

    for (i = v209; v209; i = v209)
    {
      v83 = a4;
      v84 = v16;
      LOWORD(v210) = 1;
      v85 = *(i + 10);
      MarkerArgStr = marker_getMarkerArgStr(3u);
      if (!strcmp((v71 + v85), MarkerArgStr) || (v87 = *(v209 + 10), v88 = marker_getMarkerArgStr(4u), !strncmp((v71 + v87), v88, 6uLL)) || (v89 = *(v209 + 10), v90 = marker_getMarkerArgStr(6u), !strcmp((v71 + v89), v90)) || (v91 = *(v209 + 10), v92 = marker_getMarkerArgStr(7u), !strcmp((v71 + v91), v92)) || (v93 = *(v209 + 10), v94 = marker_getMarkerArgStr(8u), !strcmp((v71 + v93), v94)))
      {
        v97 = *(v209 + 10);
        v98 = marker_getMarkerArgStr(5u);
        if (!strcmp((v71 + v97), v98) || (v99 = *(v209 + 10), v100 = marker_getMarkerArgStr(6u), !strcmp((v71 + v99), v100)) || (v101 = *(v209 + 10), v102 = marker_getMarkerArgStr(7u), !strcmp((v71 + v101), v102)) || (v103 = *(v209 + 10), v104 = marker_getMarkerArgStr(8u), !strcmp((v71 + v103), v104)))
        {
          v96 = 44;
        }

        else
        {
          v96 = 14;
        }

        v95 = 1;
      }

      else
      {
        v95 = 0;
        v96 = 14;
      }

      LOWORD(v210) = 1;
      bed_GoForward(v70, bed_marker_IsAt, &v210);
      v105 = bed_GoForward(v70, bed_marker_IsOfType, &v211);
      v16 = v84;
      if ((v105 & 0x1FFF) == 0x14)
      {
        v207 = 0;
        a4 = v83;
      }

      else
      {
        if (v105 < 0)
        {
          goto LABEL_216;
        }

        a4 = v83;
        if ((bed_GetpElem(v70, 0xFFFFu, &v207) & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      if (v95)
      {
        v106 = *(v209 + 8);
        DWORD2(v216) = *(v209 + 6);
        LODWORD(v217) = v106;
        v107 = v207 ? *(v207 + 32) : v72 + v205;
        DWORD1(v217) = v107 - v106;
        DWORD2(v217) = v96;
        HIDWORD(v216) = v107 - v106;
        if (v107 != v106 && (bed_marker_InjectFixedRefMarker(v70, &v215) & 0x80000000) != 0)
        {
          goto LABEL_216;
        }
      }

      v108 = bed_GoForward(v70, bed_marker_IsOfType, &v211);
      if ((v108 & 0x1FFF) == 0x14)
      {
        break;
      }

      if (v108 < 0 || (bed_GetpElem(v70, 0xFFFFu, &v209) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }
    }
  }

  UTOITrace(a4, v195, v197, v196, "BEFORE utois_ScanTextForMWRegions");
  v211 = MarkerUDCTREF_0;
  v212 = unk_1C37BEF60;
  v213 = xmmword_1C37BEF70;
  v75 = v195;
  v74 = v196;
  v76 = v197;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v205 = 0;
  LODWORD(v210) = 0;
  v216 = unk_1C37BEF20;
  v217 = xmmword_1C37BEF30;
  v218 = unk_1C37BEF40;
  v214 = unk_1C37BEF80;
  v215 = MarkerSetTypeOfInput_0;
  if (!v186)
  {
    goto LABEL_207;
  }

  __len = 0;
  v200 = 0;
  __n = 0;
  if (((*(v186 + 120))(v187, v189, &v210) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  if (!v210)
  {
    goto LABEL_207;
  }

  v77 = a12 <= a13 ? a13 : a12;
  v178 = v77;
  __src = 0;
  v200 = 0;
  if ((datac_RequestBlock(v16, 1021, 1u, &v207) & 0x80000000) != 0)
  {
    goto LABEL_216;
  }

  v78 = bed_GetpElem(v76, 0, &v205);
  if (v78 < 0)
  {
    goto LABEL_216;
  }

  v79 = *(v207 + 16);
  if (!*(v207 + 16) || *(*(v207 + 8) + 20) != 0x4000)
  {
    goto LABEL_216;
  }

  v80 = v78;
  v174 = v76;
  v175 = v74;
  v193 = a4;
  v181 = v16;
  v209 = *(v207 + 8);
  HIWORD(v208) = v79;
  if (v79 == 1)
  {
    v81 = 0;
    goto LABEL_198;
  }

  v109 = 0;
  v110 = 0;
  v81 = 0;
  v111 = 1;
  v112 = 2;
  v113 = 168;
  while (1)
  {
    v114 = &v209[64 * v111];
    if (*(v114 + 5) != 32 || *(v114 + 10) != 1)
    {
      goto LABEL_197;
    }

    if (!v109)
    {
      break;
    }

    v115 = *(v114 + 8);
    if (v110 != v115)
    {
      goto LABEL_144;
    }

    v109 = 1;
LABEL_197:
    ++v111;
    v79 = HIWORD(v208);
    ++v112;
    v113 += 64;
    if (v111 >= HIWORD(v208))
    {
      goto LABEL_198;
    }
  }

  v115 = *(v114 + 8);
LABEL_144:
  v116 = v79;
  v117 = &v209[v113];
  v118 = v112;
  do
  {
    if (v118 >= v116)
    {
      goto LABEL_154;
    }

    v119 = v118;
    if (*(v117 - 5) == 32)
    {
      break;
    }

    v120 = *v117;
    v117 += 64;
    ++v118;
  }

  while (!v120);
  v121 = v119;
  v122 = &v209[64 * v119];
  if (*(v122 + 5) != 32)
  {
LABEL_154:
    v109 = 1;
    v110 = v115;
    goto LABEL_197;
  }

  v110 = v115;
  v176 = v113;
  v123 = v112;
  if (*(v122 + 10) || v115 == *(v122 + 8))
  {
    goto LABEL_196;
  }

  v80 = bed_Goto(v175, v111);
  if (v80 < 0)
  {
    goto LABEL_198;
  }

  v124 = *(v209 + 8);
  v173 = *&v209[64 * v111 + 32] - v124;
  v125 = (*&v209[64 * v111 + 32] - v124);
  v126 = (*&v209[64 * v121 + 32] - v124);
  if (v193 == 1)
  {
    log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (scan for multiword in dict between text positions %u and %u)", (*&v209[64 * v111 + 32] - v124), (*&v209[64 * v121 + 32] - v124));
  }

  LOWORD(__len) = a13;
  if ((v126 - v125) > a13)
  {
    goto LABEL_198;
  }

  LOWORD(__len) = v126 - v125;
  v127 = __src;
  if (__src)
  {
    v128 = (v126 - v125);
  }

  else
  {
    v127 = heap_Calloc(*(v75 + 8), a13 + 1, 1);
    __src = v127;
    if (!v127)
    {
      goto LABEL_307;
    }

    v128 = __len;
  }

  memmove(v127, (v205 + v125), v128);
  if (v200 || (v200 = heap_Calloc(*(v75 + 8), 1, a14 + a12 * a14 + 1)) != 0)
  {
    if (!v206)
    {
      v129 = bed_ObjOpen(v183, v184, v181, 1029, &v206, 213);
      if (v129 < 0)
      {
        goto LABEL_306;
      }
    }

    if (v193 == 1)
    {
      if (!v81)
      {
        v81 = heap_Calloc(*(v75 + 8), v178 + 1, 1);
        if (!v81)
        {
          goto LABEL_307;
        }
      }

      strncpy(v81, __src, __len);
      v81[__len] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (lookup User Dict for %s)", v81);
    }

    v80 = utoin_LookUpUdctWord(v186, v187, v189, &__src, 1, a13, a12, &v203);
    if (v80 < 0)
    {
      goto LABEL_198;
    }

    if ((HIDWORD(__len) - 2) >= 2 && HIDWORD(__len) != 43 && (HIDWORD(__len) != 16 || !LH_stricmp(a11, "jpj") && HIDWORD(__len) != 2))
    {
      if (v193 == 1)
      {
        log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (no (valid) User Dict entry found)");
      }

      goto LABEL_196;
    }

    if (v193 == 1)
    {
      strncpy(v81, v200, __n);
      v81[__n] = 0;
      log_OutText(*(v75 + 32), &modPP_5, 5, 0, "[UTOIS] (found User Dict entry %s)", v81);
    }

    if (LH_stricmp(a11, &v203))
    {
      v130 = &v203;
    }

    else
    {
      v130 = 0;
    }

    v129 = utoin_ReplaceWord(v174, v175, v173, &__src, 0, v181, v130);
    if (v129 < 0)
    {
      goto LABEL_306;
    }

    v80 = bed_GetpElem(v174, 0, &v205);
    if (v80 < 0)
    {
      goto LABEL_198;
    }

    if (HIDWORD(__len) == 16)
    {
      v129 = bed_Goto(v175, v111);
      if (v129 < 0)
      {
        goto LABEL_306;
      }

      v134 = &v209[64 * v111];
      DWORD2(v216) = *(v134 + 6);
      HIDWORD(v216) = __len;
      LODWORD(v217) = *(v134 + 8);
      DWORD1(v217) = *&v209[64 * v121 + 32] - v217;
      DWORD2(v217) = 16;
      v129 = bed_marker_InjectFixedRefMarker(v175, &v215);
      if (v129 < 0)
      {
        goto LABEL_306;
      }

      v129 = bed_GetpElem(v175, 0, &v209);
      if (v129 < 0)
      {
        goto LABEL_306;
      }

      v129 = bed_GetcElem(v175, &v208 + 1);
      if (v129 < 0)
      {
        goto LABEL_306;
      }

      v135 = &v209[64 * v111];
      DWORD2(v212) = *(v135 + 6);
      HIDWORD(v212) = __len;
      LODWORD(v213) = *(v135 + 8);
      DWORD1(v213) = *&v209[64 * v121 + 32] - v213;
      v133 = 16;
      goto LABEL_193;
    }

    if (HIDWORD(__len) == 43)
    {
      v129 = bed_Goto(v175, v111);
      if (v129 < 0)
      {
        goto LABEL_306;
      }

      v131 = &v209[64 * v111];
      DWORD2(v216) = *(v131 + 6);
      HIDWORD(v216) = __len;
      LODWORD(v217) = *(v131 + 8);
      DWORD1(v217) = __n;
      DWORD2(v217) = 43;
      v129 = bed_marker_InjectFixedRefMarker(v175, &v215);
      if (v129 < 0)
      {
        goto LABEL_306;
      }

      v132 = &v209[64 * v111];
      DWORD2(v212) = *(v132 + 6);
      HIDWORD(v212) = __len;
      LODWORD(v213) = *(v132 + 8);
      DWORD1(v213) = __n;
      v133 = 43;
LABEL_193:
      DWORD2(v213) = v133;
      if ((bed_marker_InjectFixedRefMarker(v175, &v211) & 0x80000000) != 0)
      {
        goto LABEL_216;
      }

      v129 = bed_GetpElem(v175, 0, &v209);
      if (v129 < 0)
      {
LABEL_306:
        v80 = v129;
        goto LABEL_198;
      }

      v80 = bed_GetcElem(v175, &v208 + 1);
      if (v80 < 0)
      {
        goto LABEL_198;
      }
    }

LABEL_196:
    v109 = 1;
    v112 = v123;
    v113 = v176;
    goto LABEL_197;
  }

LABEL_307:
  log_OutPublic(*(v75 + 32), &modPP_5, 1923, 0);
  v80 = -1924128758;
LABEL_198:
  if (__src)
  {
    heap_Free(*(v75 + 8), __src);
  }

  if (v200)
  {
    heap_Free(*(v75 + 8), v200);
  }

  if (v81)
  {
    heap_Free(*(v75 + 8), v81);
  }

  if (v206)
  {
    bed_ObjClose(v206);
  }

  v16 = v181;
  LODWORD(a4) = v193;
  if (v80 < 0)
  {
LABEL_216:
    LODWORD(v14) = 0;
    goto LABEL_217;
  }

LABEL_207:
  v136 = a4;
  UTOITrace(a4, v195, v197, v196, "BEFORE utois_ScanUntaggedText");
  v138 = v196;
  v137 = v197;
  v210 = 7;
  if (!v197 || !v196)
  {
    goto LABEL_302;
  }

  IsCursorAtEnd = bed_Goto(v197, 0);
  if (IsCursorAtEnd < 0 || (IsCursorAtEnd = bed_Goto(v138, 0), IsCursorAtEnd < 0) || (v203 = 0, IsCursorAtEnd = bed_IsCursorAtEnd(v137, &v203), IsCursorAtEnd < 0))
  {
LABEL_301:
    LODWORD(v14) = IsCursorAtEnd;
    goto LABEL_302;
  }

  if (!v203)
  {
    while (1)
    {
      v202 = 0;
      v141 = bed_GoForward(v138, bed_marker_IsOfType, &v210);
      if (v141 < 0)
      {
        LODWORD(v14) = v141;
        if ((v141 & 0x1FFF) != 0x14)
        {
          goto LABEL_302;
        }
      }

      v209 = 0;
      v208 = 0;
      v206 = 0;
      v207 = 0;
      v205 = 0;
      v204 = 0;
      v211 = MarkerSetTypeOfInput_0;
      v212 = unk_1C37BEF20;
      v213 = xmmword_1C37BEF30;
      v214 = unk_1C37BEF40;
      v142 = bed_GetpElem(v138, 0, &v207);
      if (v142 < 0 || (v143 = *(v207 + 24), v144 = *(v207 + 32), v142 = datac_RequestBlock(v16, 1021, 1u, &v205), v142 < 0))
      {
        LODWORD(v14) = v142;
        goto LABEL_296;
      }

      v145 = *(v205 + 8);
      v146 = *(v205 + 16);
      v147 = bed_GetpElem(v138, 0xFFFFu, &v206);
      if ((v147 & 0x1FFF) == 0xF)
      {
        v148 = bed_GetcElem(v137, &v208);
        if (v148 < 0)
        {
          goto LABEL_295;
        }

        if (v146)
        {
          v149 = 0;
          v150 = 0;
          v151 = (v145 + 20);
          do
          {
            v152 = *v151;
            v151 += 16;
            if (v152 == 7)
            {
              v150 = v149;
            }

            ++v149;
          }

          while (v146 != v149);
          if (v150)
          {
            v153 = (v145 + (v150 << 6));
            v154 = v153[10];
            if (v154 != 44 && v154 != 14)
            {
              v156 = v153[6];
              if (v156 == v143 && v153[8] == v144)
              {
                v157 = v153[7] + v143;
                goto LABEL_257;
              }

              goto LABEL_255;
            }

LABEL_254:
            v156 = v153[6];
LABEL_255:
            v157 = v153[7] + v156;
            goto LABEL_257;
          }
        }
      }

      else
      {
        LODWORD(v14) = v147;
        if (v147 < 0)
        {
          goto LABEL_296;
        }

        v158 = *(v206 + 32);
        LOWORD(v208) = v158 - v144;
        if (v146)
        {
          v159 = 0;
          v160 = 0;
          v161 = (v145 + 20);
          do
          {
            if (v161[3] >= v158)
            {
              break;
            }

            v162 = *v161;
            v161 += 16;
            if (v162 == 7)
            {
              v160 = v159;
            }

            ++v159;
          }

          while (v146 != v159);
          if (v160)
          {
            v153 = (v145 + (v160 << 6));
            goto LABEL_254;
          }
        }
      }

      v157 = *(v145 + 24);
LABEL_257:
      v188 = v157;
      v148 = bed_GetiElem(v137, &v208 + 1);
      if ((v148 & 0x80000000) == 0)
      {
        LOWORD(v208) = v208 - HIWORD(v208);
        v148 = bed_Goto(v137, HIWORD(v208) + v208);
        if ((v148 & 0x80000000) == 0)
        {
          v148 = bed_Insert(v137, &v204, 1);
          if ((v148 & 0x80000000) == 0)
          {
            v148 = bed_GetpElem(v137, HIWORD(v208), &v209);
            if ((v148 & 0x80000000) == 0)
            {
              v163 = v208;
              if (v208)
              {
                v164 = 0;
                v177 = 0;
                v179 = 0;
                v182 = 0;
                while (!*v185)
                {
LABEL_280:
                  v164 += utf8_determineUTF8CharLength(v209[v164]);
LABEL_281:
                  v163 = v208;
                  if (v208 <= v164)
                  {
                    goto LABEL_282;
                  }
                }

                v165 = 0;
                v166 = 0;
                while (1)
                {
                  v167 = v209;
                  v168 = v208;
                  __src = 0;
                  if (!v209 || v208 <= v164 || (InitRsrcFunction(v183, v184, &__src) & 0x80000000) != 0)
                  {
                    LODWORD(v14) = -1924128761;
                    goto LABEL_296;
                  }

                  v169 = nuance_pcre_exec(a9, a10, *(v185 + 2) + *(*(v185 + 1) + v165), 0, v167, v168, v164, 16, &v215, 30);
                  if ((v169 & 0x80000000) == 0)
                  {
                    if (v169)
                    {
                      v182 = v215;
                      v177 = *(*(v185 + 1) + v165 + 4);
                      v179 = DWORD1(v215) - v215;
                    }

LABEL_275:
                    LODWORD(v171) = *v185;
LABEL_276:
                    if (v171 <= v166)
                    {
                      goto LABEL_280;
                    }

                    DWORD2(v212) = v188 + v164;
                    HIDWORD(v212) = v179;
                    LODWORD(v213) = v144 + v182 + HIWORD(v208);
                    DWORD1(v213) = v179;
                    DWORD2(v213) = v177;
                    v148 = bed_marker_InjectFixedRefMarker(v138, &v211);
                    if ((v148 & 0x80000000) == 0)
                    {
                      v148 = datac_RequestBlock(v16, 1021, 1u, &v205);
                      if ((v148 & 0x80000000) == 0)
                      {
                        v164 = v179 + v182;
                        goto LABEL_281;
                      }
                    }

                    goto LABEL_295;
                  }

                  v170 = nuance_pcre_ErrorToLhError(v169);
                  if (v170 >> 20 != 2213)
                  {
                    goto LABEL_275;
                  }

                  LODWORD(v14) = v170;
                  if ((v170 & 0x1FFF) != 0x14)
                  {
                    break;
                  }

                  ++v166;
                  v171 = *v185;
                  v165 += 8;
                  if (v166 >= v171)
                  {
                    goto LABEL_276;
                  }
                }

                if ((v170 & 0x1FFF) == 0xA)
                {
                  log_OutPublic(*(__src + 4), &modPP_5, 11002, 0);
                  v163 = v208;
                  goto LABEL_286;
                }

                log_OutPublic(*(__src + 4), &modPP_5, 11027, "%s%x", "lhError", v170);
                goto LABEL_296;
              }

LABEL_282:
              LODWORD(v14) = 0;
LABEL_286:
              v148 = bed_Remove(v137, (HIWORD(v208) + v163), 1u);
              if ((v148 & 0x80000000) == 0)
              {
                if (!v206)
                {
                  v172 = v208 + HIWORD(v208);
LABEL_292:
                  v148 = bed_Goto(v137, v172);
                  if ((v148 & 0x80000000) == 0)
                  {
                    if ((~v14 & 0xA) != 0)
                    {
                      LODWORD(v14) = 0;
                    }

                    goto LABEL_296;
                  }

                  goto LABEL_295;
                }

                v148 = bed_GetpElem(v138, 0xFFFFu, &v206);
                if ((v148 & 0x80000000) == 0)
                {
                  v172 = (v208 + HIWORD(v208) + *(v206 + 36));
                  goto LABEL_292;
                }
              }
            }
          }
        }
      }

LABEL_295:
      LODWORD(v14) = v148;
LABEL_296:
      if ((v14 & 0x80000000) != 0 && (v14 & 0x1FFF) != 0xA)
      {
        goto LABEL_302;
      }

      v202 = 1;
      bed_GoForward(v138, bed_marker_IsAt, &v202);
      IsCursorAtEnd = bed_IsCursorAtEnd(v137, &v203);
      if (IsCursorAtEnd < 0)
      {
        goto LABEL_301;
      }

      if (v203)
      {
        goto LABEL_214;
      }
    }
  }

  LODWORD(v14) = 0;
LABEL_214:
  if ((v14 & 0x1FFF) != 0xA)
  {
    LODWORD(v14) = 0;
  }

LABEL_302:
  if ((v14 & 0x80000000) == 0 || (v14 & 0x1FFF) == 0xA)
  {
    UTOITrace(v136, v195, v197, v196, "BEFORE utois_MarkUnknownRegions");
    if ((utois_MarkUnknownRegions(v197, v196) & 0x80000000) == 0)
    {
      UTOITrace(v136, v195, v197, v196, "BEFORE utois_AlignMarkers");
      utois_AlignMarkers(v16);
    }
  }

LABEL_217:
  if (v196)
  {
    bed_ObjClose(v196);
  }

  if (v197)
  {
    bed_ObjClose(v197);
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