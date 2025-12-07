uint64_t wordpar_loc_asian_PostProcessMarkers(uint64_t a1, int a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  memset(__dst, 0, sizeof(__dst));
  result = marker_getMarkerArgStr(1u);
  v61 = 0;
  v11 = *a4;
  if (v11 >= 2)
  {
    v12 = result;
    v13 = 1;
    do
    {
      v14 = v13 + 1;
      if (v14 < v11)
      {
        v15 = (a3 + (v13 << 6));
        v16 = a3 + (v14 << 6);
        if (v15[8] == *(v16 + 32))
        {
          v17 = v15[5];
          if (v17 != 36 && v17 != 0x4000 && *(v16 + 20) == 36)
          {
            cstdlib_memcpy(__dst, (a3 + (v14 << 6)), 0x40uLL);
            v18 = *(v15 + 1);
            *v16 = *v15;
            *(v16 + 16) = v18;
            v19 = *(v15 + 3);
            *(v16 + 32) = *(v15 + 2);
            *(v16 + 48) = v19;
            result = cstdlib_memcpy(v15, __dst, 0x40uLL);
            v11 = *a4;
            LODWORD(v14) = 1;
          }
        }
      }

      v13 = v14;
    }

    while (v14 < v11);
    if (v11 >= 2)
    {
      v20 = (a3 + 84);
      for (i = 1; i < v11; ++i)
      {
        v22 = *v20;
        if (*v20 == 41)
        {
          MarkerArgStr = marker_getMarkerArgStr(1u);
          result = cstdlib_strcmp(v12, MarkerArgStr);
          if (!result)
          {
            v25 = v20[3];
            v26 = *(a3 + 32);
            if (v25 != v26 && *(a5 + (v25 + ~v26)) == 32)
            {
              v20[3] = v25 + 1;
            }
          }

          *v20 = 1;
          v11 = *a4;
        }

        else if (v22 == 39)
        {
          v23 = v20[3];
          if (v23 != *(a3 + 32))
          {
            v20[3] = v23 + 1;
          }

          *v20 = 37;
        }

        else if (v22 == 36)
        {
          v12 = *(v20 + 5);
        }

        v20 += 16;
      }

      if (v11 >= 2)
      {
        v27 = 1;
        do
        {
          v28 = v27 + 1;
          if (v28 >= v11 || (v29 = (a3 + (v28 << 6)), v30 = (a3 + (v27 << 6)), *(v29 + 8) >= *(v30 + 8)))
          {
            ++v27;
          }

          else
          {
            cstdlib_memcpy(__dst, (a3 + (v28 << 6)), 0x40uLL);
            v31 = v30[1];
            *v29 = *v30;
            v29[1] = v31;
            v32 = v30[3];
            v29[2] = v30[2];
            v29[3] = v32;
            result = cstdlib_memcpy(v30, __dst, 0x40uLL);
            v27 = 0;
            v11 = *a4;
          }
        }

        while (v27 < v11);
        if (v11 >= 2)
        {
          v33 = 1;
          do
          {
            v34 = v33 + 1;
            if (v34 < v11)
            {
              v35 = (a3 + (v33 << 6));
              v36 = a3 + (v34 << 6);
              if (v35[8] == *(v36 + 32))
              {
                v37 = v35[5];
                if (v37 != 36 && v37 != 0x4000 && *(v36 + 20) == 36)
                {
                  cstdlib_memcpy(__dst, (a3 + (v34 << 6)), 0x40uLL);
                  v38 = *(v35 + 1);
                  *v36 = *v35;
                  *(v36 + 16) = v38;
                  v39 = *(v35 + 3);
                  *(v36 + 32) = *(v35 + 2);
                  *(v36 + 48) = v39;
                  result = cstdlib_memcpy(v35, __dst, 0x40uLL);
                  v11 = *a4;
                  LODWORD(v34) = 1;
                }
              }
            }

            v33 = v34;
          }

          while (v34 < v11);
        }
      }
    }
  }

  if (!a2 && ((result = paramc_ParamGetStr(*(a1 + 40), "langcode", &v61), (result & 0x80000000) != 0) || (result = LH_stricmp(v61, "MNC"), result) && (result = LH_stricmp(v61, "MNT"), result) && (result = LH_stricmp(v61, "SIC"), result)))
  {
    if (*a4 < 2u)
    {
      v40 = 1;
    }

    else
    {
      v55 = (a3 + 104);
      v56 = 1;
      do
      {
        if (*(v55 - 5) == 36)
        {
          v57 = *v55;
          v58 = marker_getMarkerArgStr(9u);
          result = cstdlib_strcmp(v57, v58);
          if (!result || (v59 = *v55, v60 = marker_getMarkerArgStr(0xAu), result = cstdlib_strcmp(v59, v60), !result))
          {
            *(v55 - 5) = 999;
          }
        }

        ++v56;
        v55 += 8;
      }

      while (v56 < *a4);
      v40 = v56;
    }

    *a4 = v40;
  }

  else
  {
    v40 = *a4;
  }

  if (v40 >= 2)
  {
    v41 = 1;
    v42 = 1;
    while (1)
    {
      v43 = (a3 + (v41 << 6));
      if (*(v43 + 5) != 36)
      {
        goto LABEL_57;
      }

      v44 = v41 - 1;
      if (v41 == 1)
      {
        break;
      }

      while (1)
      {
        v45 = a3 + (v44 << 6);
        if (*(v45 + 20) == 36)
        {
          break;
        }

        if (!--v44)
        {
          goto LABEL_58;
        }
      }

      result = cstdlib_strcmp(*(v43 + 5), *(v45 + 40));
      if (!result)
      {
        break;
      }

      v46 = *(v45 + 32);
      if (*(v43 + 8) != v46)
      {
        break;
      }

      if (*v45 && (*v45 != 1 || v46 != *(a3 + 32)))
      {
        v52 = *v43;
        v53 = v43[1];
        v54 = v43[3];
        *(v45 + 32) = v43[2];
        *(v45 + 48) = v54;
        *v45 = v52;
        *(v45 + 16) = v53;
        goto LABEL_60;
      }

      if (!*v43)
      {
        *(v45 + 20) = 999;
LABEL_57:
        v47 = v42;
LABEL_59:
        v48 = (a3 + (v47 << 6));
        v49 = *v43;
        v50 = v43[1];
        v51 = v43[3];
        v48[2] = v43[2];
        v48[3] = v51;
        *v48 = v49;
        v48[1] = v50;
        ++v42;
      }

LABEL_60:
      if (++v41 >= *a4)
      {
        goto LABEL_64;
      }
    }

LABEL_58:
    v47 = v42;
    goto LABEL_59;
  }

  v42 = 1;
LABEL_64:
  *a4 = v42;
  return result;
}

uint64_t wordpar_loc_asian_deleteMarkerForUnknown(uint64_t result, unsigned __int16 *a2)
{
  if (*a2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = (v3 + (v4 << 6));
      v6 = v5[1];
      v18 = *v5;
      v19 = v6;
      v7 = v5[3];
      v20 = v5[2];
      v21 = v7;
      result = wordpar_loc_asian_isMarkerUnknown(&v18);
      v8 = *a2;
      if (result)
      {
        if (!*a2)
        {
          return result;
        }

        v9 = 0;
        do
        {
          v10 = v3 + (v9 << 6);
          if (*(v10 + 20) == 36 && (v11 = *(v10 + 40), MarkerArgStr = marker_getMarkerArgStr(9u), result = cstdlib_strcmp(v11, MarkerArgStr), result) && *v10 == 1 && (result = v3 + (v4 << 6), *(result + 32) == *(v10 + 32)))
          {
            result = cstdlib_memmove(result, (result + 64), (*a2 - v4) << 6);
            v8 = *a2 - 1;
            *a2 = v8;
            v4 -= v9 <= v4;
          }

          else
          {
            ++v9;
            v8 = *a2;
          }
        }

        while (v9 < v8);
      }

      ++v4;
    }

    while (v4 < v8);
    if (v8)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v3 + (v13 << 6);
        if (*(v15 + 20) != 36)
        {
          goto LABEL_24;
        }

        v16 = *(v15 + 16);
        v18 = *v15;
        v19 = v16;
        v17 = *(v15 + 48);
        v20 = *(v15 + 32);
        v21 = v17;
        result = wordpar_loc_asian_isMarkerUnknown(&v18);
        if (result)
        {
          ++v13;
        }

        else
        {
          if (!*v15)
          {
            v14 = 0;
LABEL_24:
            ++v13;
            continue;
          }

          if (!v14)
          {
            goto LABEL_24;
          }

          result = cstdlib_memmove((v3 + (v13 << 6)), (v15 + 64), (*a2 - v13) << 6);
          --*a2;
        }

        v14 = 1;
      }

      while (v13 < *a2);
    }
  }

  return result;
}

char *wordpar_loc_asian_deleteConflictingLangMarker(char *result, _WORD *a2, const char *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v6 = result;
    v7 = 0;
    v8 = result + 20;
    do
    {
      if (*v8 == 36)
      {
        v9 = *(v8 + 20);
        MarkerArgStr = marker_getMarkerArgStr(0xBu);
        result = cstdlib_strcmp(v9, MarkerArgStr);
        if (!result)
        {
          v26 = *(v8 - 5);
          v11 = 1;
          if (!*a2)
          {
            return result;
          }

          goto LABEL_10;
        }

        v3 = *a2;
      }

      ++v7;
      v8 += 64;
    }

    while (v7 < v3);
    v11 = 0;
    v7 = 0;
    v26 = 0;
    if (!v3)
    {
      return result;
    }

LABEL_10:
    v12 = 0;
    v13 = 0;
    v14 = &v6[64 * v7];
    do
    {
      v15 = &v6[64 * v12];
      if (*(v15 + 5) == 36)
      {
        v16 = *(v15 + 5);
        v17 = marker_getMarkerArgStr(1u);
        result = cstdlib_strcmp(v16, v17);
        if (result)
        {
          result = cstdlib_strcmp(v16, a3);
          if (result)
          {
            v18 = marker_getMarkerArgStr(2u);
            result = cstdlib_strcmp(v16, v18);
            if (result)
            {
              goto LABEL_29;
            }
          }
        }

        if (*v15)
        {
          if (v13)
          {
            if (!v11)
            {
              goto LABEL_29;
            }

            if (*(v14 + 5) == 36 && *(v15 + 5) == 36)
            {
              v19 = *(v14 + 5);
              v20 = *(v15 + 5);
              v21 = marker_getMarkerArgStr(0xBu);
              if (cstdlib_strcmp(v19, v21))
              {
                v22 = 1;
              }

              else
              {
                v23 = marker_getMarkerArgStr(2u);
                v22 = cstdlib_strcmp(v20, v23) != 0;
              }

              v24 = marker_getMarkerArgStr(0xBu);
              result = cstdlib_strcmp(v19, v24);
              if (result)
              {
                if (v22)
                {
                  goto LABEL_27;
                }

LABEL_29:
                ++v12;
LABEL_30:
                v13 = 1;
                continue;
              }

              v25 = marker_getMarkerArgStr(1u);
              result = cstdlib_strcmp(v20, v25);
              if ((result | v26) == 0 || !v22)
              {
                goto LABEL_29;
              }
            }

LABEL_27:
            result = cstdlib_memmove(&v6[64 * v12], v15 + 64, (*a2 - v12) << 6);
            --*a2;
            goto LABEL_30;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      ++v12;
    }

    while (v12 < *a2);
  }

  return result;
}

uint64_t wordpar_loc_asian_RemoveBlankLatinRegions(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  if (*a2 < 2u)
  {
    goto LABEL_58;
  }

  v5 = result;
  v6 = 1;
  do
  {
    v7 = v5 + (v6 << 6);
    if (*(v7 + 20) != 36)
    {
      goto LABEL_43;
    }

    v8 = *(v7 + 40);
    if (!v8)
    {
      goto LABEL_43;
    }

    MarkerArgStr = marker_getMarkerArgStr(2u);
    result = cstdlib_strcmp(v8, MarkerArgStr);
    if (result)
    {
      goto LABEL_43;
    }

    if (*v3 <= (v6 + 1))
    {
LABEL_30:
      v24 = v5 + (v6 << 6);
      v25 = (*(v24 + 32) - *(v5 + 32));
      if (v25 >= *(v5 + 36))
      {
        goto LABEL_37;
      }

      do
      {
        v26 = *(a3 + v25);
        v27 = (v26 < 0x21) & (0x100002600uLL >> v26);
        result = utf8_determineUTF8CharLength(v26);
        v25 = (result + v25);
      }

      while (v27 == 1 && v25 < *(v5 + 36));
      if (v27)
      {
LABEL_37:
        if (*v24 == 1)
        {
          v29 = v6 + 1;
          v3 = a2;
          v30 = *a2;
          if (v29 < v30)
          {
            result = cstdlib_memmove((v5 + (v6 << 6)), (v5 + (v29 << 6)), (v30 + ~v6) << 6);
            LOWORD(v30) = *a2;
          }

          v31 = v30 - 1;
          *a2 = v31;
          goto LABEL_44;
        }

        *(v24 + 20) = 999;
      }

      v3 = a2;
      goto LABEL_43;
    }

    v10 = (v6 + 1);
    v11 = 1;
    do
    {
      v12 = v5 + (v10 << 6);
      if (*(v12 + 20) == 36)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = marker_getMarkerArgStr(2u);
          result = cstdlib_strcmp(v13, v14);
          v11 = result == 0;
          v15 = 1;
          if (!result)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        if (v11)
        {
          goto LABEL_27;
        }
      }

      v16 = (v5 + (v6 << 6));
      v17 = *(v5 + 32);
      v18 = (v16[8] - v17);
      if (v18 < *(v12 + 32) - v17)
      {
        do
        {
          v19 = *(a3 + v18);
          v20 = (v19 < 0x21) & (0x100002600uLL >> v19);
          result = utf8_determineUTF8CharLength(v19);
          v18 = (result + v18);
        }

        while (v20 == 1 && v18 < *(v12 + 32) - *(v5 + 32));
        if (!v20)
        {
          v11 = 0;
          goto LABEL_26;
        }
      }

      v22 = *(v12 + 28) + v16[7];
      *(v12 + 24) = v16[6];
      *(v12 + 28) = v22;
      v23 = *(v12 + 36) + v16[9];
      *(v12 + 32) = v16[8];
      *(v12 + 36) = v23;
      if (*v16 != 1)
      {
        v11 = 0;
        v16[5] = 999;
        v6 = v10;
LABEL_26:
        v3 = a2;
        goto LABEL_27;
      }

      v3 = a2;
      result = cstdlib_memmove((v5 + (v6 << 6)), v16 + 16, (*a2 + ~v6) << 6);
      v11 = 0;
      --*a2;
      v6 = v10;
LABEL_27:
      if (v15)
      {
        break;
      }

      ++v10;
    }

    while (v10 < *v3);
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_43:
    v31 = *v3;
LABEL_44:
    ++v6;
  }

  while (v6 < v31);
  if (v31 >= 2u)
  {
    v32 = 1;
    v33 = 1;
    while (1)
    {
      v34 = v5 + (v32 << 6);
      if (*(v34 + 20) == 36)
      {
        v35 = v32 - 1;
        if (v32 != 1)
        {
          while (1)
          {
            v36 = v5 + (v35 << 6);
            if (*(v36 + 20) == 36)
            {
              break;
            }

            if (!--v35)
            {
              goto LABEL_53;
            }
          }

          result = cstdlib_strcmp(*(v34 + 40), *(v36 + 40));
          if (!result)
          {
            if (*v34)
            {
              goto LABEL_54;
            }

            *(v34 + 20) = 999;
          }
        }
      }

LABEL_53:
      v37 = (v5 + (v33 << 6));
      v38 = *v34;
      v39 = *(v34 + 16);
      v40 = *(v34 + 48);
      v37[2] = *(v34 + 32);
      v37[3] = v40;
      *v37 = v38;
      v37[1] = v39;
      ++v33;
LABEL_54:
      if (++v32 >= *v3)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_58:
  v33 = 1;
LABEL_59:
  *v3 = v33;
  return result;
}

uint64_t wordpar_loc_asian_InsertSpaceAfterPhoneticMarkers(uint64_t a1, _DWORD *a2, unsigned int a3, const char **a4)
{
  v6 = *a4;
  v7 = cstdlib_strlen(*a4);
  if (a3 < 2)
  {
LABEL_26:
    result = 0;
    *a4 = v6;
    return result;
  }

  v8 = a2 + 40;
  v9 = 1;
  v10 = a3;
  while (1)
  {
    v11 = a2[16 * v9 + 5];
    v12 = v9 + 1;
    v13 = v11 != 34 || v12 >= v10;
    v31 = v12;
    v32 = v8;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v9 = v31;
    v8 = v32 + 16;
    if (v31 == v10)
    {
      goto LABEL_26;
    }
  }

  v14 = v12;
  while (1)
  {
    v15 = &a2[16 * v14];
    v16 = v15[5];
    if (v16 == 21)
    {
      break;
    }

LABEL_23:
    if (++v14 < v10)
    {
      v8 += 16;
      if (v16 != 21)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  v17 = (v15[8] - a2[8]);
  v18 = v7 - v17;
  if (v7 <= v17)
  {
    goto LABEL_8;
  }

  v19 = v6[v17];
  v20 = v19 > 0x20;
  v21 = (1 << v19) & 0x100002600;
  if (!v20 && v21 != 0)
  {
    goto LABEL_8;
  }

  v23 = v7;
  v24 = heap_Realloc(*(a1 + 8), v6, v7 + 2);
  if (v24)
  {
    v6 = v24;
    v25 = v24;
    v26 = (v24 + v17);
    cstdlib_memmove(v26 + 1, v26, v18);
    *v26 = 32;
    v7 = v23 + 1;
    *(v25 + (v23 + 1)) = 0;
    v27 = v8;
    v28 = v14;
    do
    {
      if (v15[8] < *v27)
      {
        ++*v27;
      }

      ++v28;
      v27 += 16;
    }

    while (v28 < v10);
    ++a2[9];
    v16 = 21;
    goto LABEL_23;
  }

  return 2370838538;
}

uint64_t wordpar_loc_asian_InsertSpaceBeforeTNMarkers(uint64_t a1, uint64_t a2, const char **a3)
{
  v3 = a3;
  v6 = *a3;
  v7 = cstdlib_strlen(*a3);
  v83 = 0;
  v79 = a2;
  v8 = datac_RequestBlock(a2, 1021, 1u, &v83);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  result = 2370838528;
  v10 = *(v83 + 16);
  if (*(v83 + 16))
  {
    v11 = *(v83 + 8);
    if (v11[5] == 0x4000)
    {
      if (v10 != 1)
      {
        v68 = a1;
        v81 = 0;
        v82 = 0;
        v12 = -1;
        v13 = 1;
        v80 = 24;
        do
        {
          v14 = &v11[16 * v13];
          v15 = v14[8];
          v16 = v11[8];
          v17 = v14[5];
          if (v17 == 7)
          {
            v19 = (v15 - v16);
            v18 = v14[10] == 16;
          }

          else
          {
            v18 = v17 == 21;
            v19 = (v15 - v16);
          }

          v20 = !v18 || v19 == 0;
          if (!v20 && v6[v19 - 1] != 32 && v6[v19] != 32)
          {
            v21 = v81;
            do
            {
              if (!v21)
              {
                break;
              }

              v22 = *(v11 + v21 + 20);
              if (v22 == 34)
              {
                goto LABEL_18;
              }

              v21 -= 64;
            }

            while (v22 != 21);
            v74 = v19;
            v78 = v19;
            v66 = v3;
            v67 = v12;
            v23 = v7;
            v24 = heap_Realloc(*(v68 + 8), v6, v7 + 2);
            if (!v24)
            {
              return 2370838538;
            }

            v25 = v7;
            v26 = v24;
            v77 = v24;
            v27 = (v23 - v78);
            v28 = v25;
            cstdlib_memmove((v24 + v78 + 1), &v74[v24], v27);
            v29 = v28;
            LODWORD(v30) = 0;
            v74[v26] = 32;
            v65 = v29 + 1;
            *(v26 + (v29 + 1)) = 0;
            if ((v29 + 1) > (v78 + 1))
            {
              v30 = 0;
              do
              {
                if (v77[(v78 + 1) + v30] == 32)
                {
                  break;
                }

                ++v30;
              }

              while ((v29 + v16 - v15) != v30);
            }

            v6 = v77;
            v31 = v78;
            if (v13 < v10)
            {
              v32 = &v11[v80];
              v33 = v67 + v10;
              do
              {
                if (*v32 >= v14[8])
                {
                  ++*v32;
                }

                v32 += 16;
                --v33;
              }

              while (v33);
            }

            ++v11[9];
            v34 = 1;
            do
            {
              if (v34 >= v10)
              {
                break;
              }

              v35 = v34;
              v36 = &v11[16 * v34];
              v37 = v36[5];
              while (v37 == 1)
              {
                v38 = v11[8] + v31;
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

                v42 = v34;
                if (v34 >= v10)
                {
                  goto LABEL_45;
                }

                v43 = &v11[16 * v34 + 5];
                v44 = v34;
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
                  if (v10 == v44)
                  {
                    goto LABEL_45;
                  }
                }

                if (!v44 || (v58 = &v11[16 * v44], __s1 = *(v58 + 5), v75 = (v58 + 10), MarkerArgStr = marker_getMarkerArgStr(3u), cstdlib_strcmp(__s1, MarkerArgStr)) && (__s1a = *v75, v60 = marker_getMarkerArgStr(4u), cstdlib_strncmp(__s1a, v60, 6uLL)) && (__s1b = *v75, v61 = marker_getMarkerArgStr(6u), cstdlib_strcmp(__s1b, v61)) && (__s1c = *v75, v62 = marker_getMarkerArgStr(7u), cstdlib_strcmp(__s1c, v62)) && (__s1d = *v75, v63 = marker_getMarkerArgStr(8u), cstdlib_strcmp(__s1d, v63)) && (v76 = *v75, v64 = marker_getMarkerArgStr(5u), cstdlib_strcmp(v76, v64)))
                {
LABEL_45:
                  if (v13 > v34)
                  {
                    v47 = v34 + (v82 - v34) + 1;
                    v48 = &v11[16 * v34 + 8];
                    while (1)
                    {
                      v49 = *v48;
                      v48 += 16;
                      if (v49 >= v11[16 * v13 + 8])
                      {
                        break;
                      }

                      if (v13 == ++v42)
                      {
                        LOWORD(v42) = v13;
                        goto LABEL_51;
                      }
                    }

                    v47 = v42;
LABEL_51:
                    v34 = v42;
                    v42 = v47;
                  }

                  v8 = datac_RequestBlock(v79, 1021, (*(v83 + 16) + 1), &v83);
                  if ((v8 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v11 = *(v83 + 8);
                  v50 = &v11[16 * v42];
                  cstdlib_memmove(v50 + 16, v50, (v10 - v42) << 6);
                  v51 = &v11[16 * v35];
                  cstdlib_memcpy(v50, v51, 0x40uLL);
                  LOWORD(v10) = *(v83 + 16) + 1;
                  *(v83 + 16) = v10;
                  v52 = v51[9];
                  v53 = v52 >= v41;
                  v54 = v52 - v41;
                  if (!v53)
                  {
                    v54 = 0;
                  }

                  v51[9] = v54;
                  v56 = v51[6];
                  v55 = v51[7];
                  v53 = v55 >= v41;
                  v57 = v55 - v41;
                  if (!v53)
                  {
                    v57 = 0;
                  }

                  v51[7] = v57;
                  v50[8] = v11[16 * v13 + 24];
                  v50[9] = v30;
                  v50[6] = v56 + v57;
                  v50[7] = v41;
                  v42 = v34;
                  v31 = v78;
                }

                else
                {
                  v31 = v78;
                  v36[9] = v11[8] + v78 - v36[8];
                }

                v36 = &v11[16 * v42];
                v37 = v36[5];
                v35 = v42;
              }

              ++v34;
              v6 = v77;
            }

            while (v11[16 * v34 + 8] <= v11[8] + v31);
            v3 = v66;
            v7 = v65;
            v12 = v67;
          }

LABEL_18:
          ++v13;
          ++v82;
          v80 += 16;
          v81 += 64;
          --v12;
        }

        while (v13 < v10);
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
            v22 = cstdlib_strlen(v7);
            v23 = v20;
            v24 = v21;
            cstdlib_memmove(&v7[v23], &v7[v21], v22 - v21 + 1);
            v25 = cstdlib_strlen(v7);
            *(v8 + 36) = v25;
            v26 = v31 - v21;
            a1 = v33;
            wordpar_loc_adjustMarkerPositions(*(a3 + 16), v8, 1u, v24, v25, v26);
            heap_Free(*(v33 + 8), *(v13 + 48));
            *(v13 + 48) = 0;
            v27 = *(a3 + 16);
            if (v17 != v27)
            {
              cstdlib_memmove(v13, (v8 + (v17 << 6)), (v27 - v11) << 6);
              LOWORD(v27) = *(a3 + 16);
            }

            v28 = v27 - 1;
            *(a3 + 16) = v28;
            v29 = v12 + 1;
            v4 = v32;
            if (v29 != v28)
            {
              cstdlib_memmove(__dst, (v8 + (v29 << 6)), (v28 - v12) << 6);
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
  v8 = cstdlib_strlen(__s);
  v52 = v8;
  v9 = cstdlib_strlen(a3);
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
          cstdlib_memmove(v29 + 32, v29, (v24 - v44) << 6);
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
  v6 = cstdlib_strlen(__s);
  v24 = v6;
  v7 = cstdlib_strlen(a3);
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
  v7 = cstdlib_strlen(__s);
  v8 = cstdlib_strlen(szWORD_BEG);
  __src = a3;
  result = cstdlib_strlen(a3);
  v37 = a1;
  v10 = *(a1 + 8);
  v11 = v7;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v8;
    v36 = result;
    v35 = result - v8;
    v16 = (result - v8);
    v17 = a4;
    do
    {
      v18 = &__s[v14];
      if (!*v18 || v17 == 1 && v14)
      {
        break;
      }

      if (*v18 != 16)
      {
        goto LABEL_23;
      }

      v19 = v14;
      if (!v15)
      {
        goto LABEL_14;
      }

      v20 = 0;
      LODWORD(v19) = v14;
      do
      {
        v21 = __s[v19];
        v22 = szWORD_BEG[v20];
        v19 = (v19 + 1);
        ++v20;
      }

      while (v21 == v22 && v15 > v20);
      if (v21 == v22)
      {
LABEL_14:
        v41 = v13;
        v24 = v16;
        v40 = v35 + cstdlib_strlen(__s);
        cstdlib_memmove(&__s[(v12 + v15 + v24)], &__s[v12 + v15], (v11 - (v12 + v15) + 1));
        result = cstdlib_memcpy(&__s[v14], __src, v36);
        v16 = v24;
        v7 = v40;
        __s[v40] = 0;
        v25 = *(v37 + 16);
        if (v25 >= 2)
        {
          v26 = 1;
          while (1)
          {
            v27 = v26;
            v28 = (v10 + 32 + (v26 << 6));
            v29 = *v28;
            v30 = *v28 - *(v10 + 32);
            v31 = v14;
            if (v14)
            {
              while (v31 == v30 && *(v10 + (v27 << 6) + 20) == 36)
              {
                *v28 = v29 + 1;
                v27 = ++v26;
                v28 = (v10 + 32 + (v26 << 6));
                v29 = *v28;
                v30 = *v28 - *(v10 + 32);
                v31 = v14;
              }
            }

            if (v12 < v30)
            {
              break;
            }

            if (v25 <= ++v26)
            {
              goto LABEL_27;
            }
          }

          if (v25 > v26)
          {
            v32 = v26;
            v33 = (v10 + 32 + (v26 << 6));
            v34 = v25 - v32;
            do
            {
              *v33 += v16;
              v33 += 16;
              --v34;
            }

            while (v34);
          }
        }

LABEL_27:
        v13 = v41 + 1;
        v17 = a4;
      }

      else
      {
LABEL_23:
        v19 = (v14 + 1);
      }

      v12 = v19;
      v11 = v7;
      v14 = v19;
    }

    while (v19 < v7);
  }

  *(v10 + 36) = v11;
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
          result = cstdlib_memmove(result, &v8[v9 + a3], (v4 - (v9 + a3) + 1));
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
  return cstdlib_strcmp(v1, MarkerArgStr) == 0;
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

uint64_t bed_marker_InjectMarker(uint64_t a1, unsigned int *a2)
{
  result = 2370838535;
  if (a1)
  {
    if (a2)
    {
      result = bed_marker_MapPosCur(a1, a2[8], a2 + 6);
      if ((result & 0x80000000) == 0)
      {
        result = bed_marker_MapPosCur(a1, a2[9] + a2[8], a2 + 7);
        if ((result & 0x80000000) == 0)
        {
          v6 = a2[6];
          v5 = a2[7];
          v7 = v5 >= v6;
          v8 = v5 - v6;
          if (v8 != 0 && v7)
          {
            a2[7] = v8;
          }

          result = bed_GoForward(a1, bed_marker_HasGreaterOrEqualPosCur, a2);
          if ((result & 0x80000000) == 0 || (result & 0x1FFF) == 0x14)
          {
            v9 = bed_Insert(a1, a2, 1);
            return v9 & (v9 >> 31);
          }
        }
      }
    }
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

uint64_t getMERDefs(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = (a1 + 88);
  if (*(a1 + 88))
  {
    freeMERDefs(a1);
  }

  log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get MER definitions");
  cstdlib_memcpy(v6, a4, 2uLL);
  v7 = heap_Calloc(*(*(a1 + 16) + 8), 1, (*(a1 + 88) << 6) | 1);
  *(a1 + 96) = v7;
  if (v7)
  {
    if (!*v6)
    {
      return 0;
    }

    v8 = 0;
    v9 = 2;
    while (1)
    {
      __dst = 0;
      cstdlib_memcpy(&__dst + 2, &a4[v9], 2uLL);
      *(*(a1 + 96) + (v8 << 6)) = HIWORD(__dst);
      cstdlib_memcpy(&__dst + 2, &a4[v9 + 2], 2uLL);
      *(*(a1 + 96) + (v8 << 6) + 4) = HIWORD(__dst);
      cstdlib_memcpy(&__dst + 2, &a4[v9 + 4], 2uLL);
      v10 = 0;
      v9 += 6;
      *(*(a1 + 96) + (v8 << 6) + 56) = HIWORD(__dst);
      while (1)
      {
        LOWORD(__dst) = 0;
        cstdlib_memcpy(&__dst, &a4[v9], 2uLL);
        v9 += 2;
        v11 = __dst;
        if (__dst)
        {
          v12 = heap_Calloc(*(*(a1 + 16) + 8), 1, (4 * __dst) | 1);
          if (!v12)
          {
            goto LABEL_22;
          }

          v13 = v12;
          v11 = __dst;
          if (__dst)
          {
            v14 = 0;
            do
            {
              cstdlib_memcpy(&__dst + 2, &a4[v9], 2uLL);
              v9 += 2;
              *(v13 + 4 * v14++) = HIWORD(__dst);
              v11 = __dst;
            }

            while (v14 < __dst);
          }
        }

        else
        {
          v13 = 0;
        }

        v15 = *(a1 + 96) + (v8 << 6);
        if (v10)
        {
          break;
        }

        *(v15 + 8) = v11;
        v16 = (v15 + 16);
LABEL_18:
        *v16 = v13;
        ++v10;
      }

      if (v10 == 1)
      {
        break;
      }

      result = 0;
      *(v15 + 40) = v11;
      *(v15 + 48) = v13;
      if (++v8 >= *v6)
      {
        return result;
      }
    }

    *(v15 + 24) = v11;
    v16 = (v15 + 32);
    goto LABEL_18;
  }

  *v6 = 0;
LABEL_22:
  freeMERDefs(a1);
  return 2370838538;
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

uint64_t getSYMDefs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  __dst = 0;
  v19 = a4;
  v17 = 0;
  if (!*(a1 + 64))
  {
    v6 = a4;
    log_OutText(*(*(a1 + 16) + 32), &modPP_2, 5, 0, "[WPARSER] get SYM definitions");
    cstdlib_memcpy(&__dst, v6, 4uLL);
    cstdlib_memcpy(&__dst + 4, (v6 + 4), 4uLL);
    v8 = HIDWORD(__dst) + 8;
    v9 = (HIDWORD(__dst) + 8 + __dst);
    cstdlib_memcpy((a1 + 64), (v6 + v9), 2uLL);
    v10 = heap_Calloc(*(*(a1 + 16) + 8), 1, (8 * *(a1 + 64)) | 1);
    *(a1 + 72) = v10;
    if (v10)
    {
      if (*(a1 + 64))
      {
        v11 = 0;
        v12 = v9 + 2;
        v13 = 1;
        do
        {
          v16 = 0;
          cstdlib_memcpy(&v16, (v6 + v12), 2uLL);
          v6 = v19;
          cstdlib_memcpy(&v17, (v19 + v12 + 2), 4uLL);
          v12 += 6;
          v14 = (*(a1 + 72) + v11);
          v14[1] = v16;
          *v14 = v17;
          v11 += 8;
        }

        while (*(a1 + 64) > v13++);
      }

      result = ssftriff_reader_DetachChunkData(a2, (a1 + 40), &v19);
      if ((result & 0x80000000) == 0)
      {
        *(a1 + 80) = v19 + v8;
      }
    }

    else
    {
      freeSYMDefs(a1);
      return 2370838538;
    }
  }

  return result;
}

uint64_t wparser_ObjOpen2(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v15 = 2370838535;
  v32 = 0;
  v31 = 0;
  if (a5 && (InitRsrcFunction(a1, a2, &v32) & 0x80000000) == 0)
  {
    *a5 = 0;
    v24 = heap_Alloc(*(v32 + 8), 144);
    if (v24)
    {
      v25 = v24;
      cstdlib_memset(v24, 0, 0x90uLL);
      *v25 = a1;
      *(v25 + 8) = a2;
      *(v25 + 16) = v32;
      *(v25 + 32) = a12;
      cstdlib_memset((v25 + 88), 0, 0x10uLL);
      cstdlib_memset((v25 + 64), 0, 0x18uLL);
      *(v25 + 56) = a4;
      *(v25 + 40) = 0;
      *(v25 + 48) = a3;
      *(v25 + 104) = a6;
      *(v25 + 112) = a7;
      *(v25 + 120) = a8;
      *(v25 + 128) = 0;
      *(v25 + 138) = 512;
      if ((paramc_ParamGetUInt(*(v32 + 40), "udctmaxlookuplen", &v31) & 0x80000000) == 0)
      {
        *(v25 + 138) = v31;
      }

      *(v25 + 136) = 512;
      if ((paramc_ParamGetUInt(*(v32 + 40), "udctmaxdictretlen", &v31) & 0x80000000) == 0)
      {
        *(v25 + 136) = v31;
      }

      *(v25 + 140) = 1;
      if ((paramc_ParamGetUInt(*(v32 + 40), "numberoutputtranscriptions", &v31) & 0x80000000) != 0)
      {
        v27 = *(v25 + 140);
      }

      else
      {
        v27 = v31;
        *(v25 + 140) = v31;
      }

      HIDWORD(v28) = *(v25 + 136);
      LODWORD(v28) = HIDWORD(v28);
      v29 = utoin_ObjOpen(a1, a2, (v25 + 24), a6, a7, a8, a9, v26, a10, a11, a13, a14, a15, SHIWORD(v28), (v28 >> 16) >> 16, v27);
      if ((v29 & 0x80000000) != 0 || (v33[0] = "SYMD", v33[1] = getSYMDefs, v33[2] = freeSYMDefs, v33[3] = v25, v33[4] = "MERR", v33[5] = getMERDefs, v33[6] = freeMERDefs, v33[7] = v25, v29 = extdata_RegisterData(a12, v33, 2u), (v29 & 0x80000000) != 0))
      {
        v15 = v29;
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
  v54 = 0;
  v55 = 0;
  v5 = 2370838535;
  v53 = 0;
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
  if ((InitRsrcFunction(*a1, *(a1 + 1), &v54) & 0x80000000) != 0)
  {
    return v5;
  }

  v11 = datac_RequestBlock(a2, 1020, 1u, &v55);
  if ((v11 & 0x80000000) != 0)
  {
    return v11;
  }

  if (!*(v55 + 16))
  {
    log_OutText(*(*(a1 + 2) + 32), &modPP_2, 5, 0, "[SEQ] wparser : no text to process");
    return v11;
  }

  v12 = bed_ObjOpen(*a1, *(a1 + 1), a2, 1021, &v53, 213);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  v56 = 0;
  v13 = datac_RequestBlock(a2, 1021, 1u, &v56);
  if ((v13 & 0x80000000) != 0)
  {
    v24 = v13;
    LOWORD(v22) = 0;
    goto LABEL_23;
  }

  v14 = *(v56 + 8);
  v15 = *(v56 + 16);
  if (v15 < 2)
  {
    goto LABEL_39;
  }

  v16 = v14 + 16;
  v17 = *(v56 + 16);
LABEL_10:
  v18 = v16;
  v19 = 1;
  do
  {
    if (v18[5] == 999 && v18[8] == v14[8] && !v18[10])
    {
      v20 = v19 + 1;
      if (v20 < v17)
      {
        v21 = v16;
        cstdlib_memmove(v18, &v14[16 * v20], (v17 - v19) << 6);
        v16 = v21;
      }

      LOWORD(v22) = 0;
      v52 = 0;
      v23 = 0;
      --v17;
      v15 = 1;
      if ((v17 & 0xFFFE) == 0)
      {
LABEL_60:
        *(v56 + 16) = v15;
        v40 = v14[6] + v9;
        v41 = v14[7] - v9;
        v14[6] = v40;
        v14[7] = v41;
        if (v23)
        {
          v42 = v14 + 38;
          v43 = 1;
          v44 = 3;
          do
          {
            v45 = &v14[16 * v43];
            if (v45[5] != 0x4000 && !*v45 && v45[6] > v40)
            {
              if (v43 + 1 < v15)
              {
                v46 = v42;
                v47 = v44;
                do
                {
                  if (!*(v46 - 6))
                  {
                    *v46 -= v45[7];
                  }

                  v30 = v15 == v47++;
                  v46 += 16;
                }

                while (!v30);
              }

              v45[7] = 0;
            }

            ++v43;
            ++v44;
            v42 += 16;
          }

          while (v43 != v15);
        }

        v48 = *(a1 + 13);
        v49 = log_GetLogLevel(*(*(a1 + 2) + 32)) > 4;
        v50 = utois_ScanRegions(v48, *(a1 + 14), *(a1 + 15), v49, *a1, *(a1 + 1), a2, a1 + 32, *(a1 + 6), *(a1 + 7), *(a1 + 16), *(a1 + 34), HIWORD(*(a1 + 34)), a1[70]);
        v5 = v50;
        if ((v50 & 0x80000000) != 0 && (v50 & 0x1FFF) != 0xA)
        {
          return v5;
        }

        v12 = utoin_NormalizeRegions(*(a1 + 3), a2, a1 + 44);
        if ((v12 & 0x80000000) == 0)
        {
          v24 = wparser_loc_ReSyncOut(a1, a2, v9, v8, v52, v22);
          goto LABEL_77;
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
    v52 = 0;
    v23 = 0;
    goto LABEL_60;
  }

  LOWORD(v22) = 0;
  v25 = v17 - 1;
  v26 = v14 + 16;
  do
  {
    v27 = v26[5];
    if (v27 != 0x4000 && !*v26 || v26[6] == v14[6] && ((v28 = v27 > 0x24, v29 = (1 << v27) & 0x1080200080, !v28) ? (v30 = v29 == 0) : (v30 = 1), !v30 && *v26 == 1))
    {
      LOWORD(v22) = v22 + 1;
    }

    v26 += 16;
    --v25;
  }

  while (v25);
  if (!v22)
  {
    v52 = 0;
    goto LABEL_41;
  }

  v52 = heap_Calloc(*(*(a1 + 2) + 8), 1, (v22 << 6) | 1);
  if (v52)
  {
LABEL_41:
    v22 = 0;
    v31 = 0;
    v32 = v17 - 1;
    v33 = v14 + 16;
    while (1)
    {
      v34 = v33[5];
      if (v34 == 0x4000 || *v33)
      {
        v35 = v33[6];
        if (v35 != v14[6])
        {
          goto LABEL_58;
        }

        v28 = v34 > 0x24;
        v36 = (1 << v34) & 0x1080200080;
        v37 = v28 || v36 == 0;
        if (v37 || *v33 != 1)
        {
          goto LABEL_58;
        }

        v33[6] = v35 + v9;
        cstdlib_memcpy((v52 + (v31 << 6)), v33, 0x40uLL);
        ++v22;
      }

      else
      {
        cstdlib_memcpy((v52 + (v31 << 6)), v33, 0x40uLL);
        ++v22;
        v38 = a5[5];
        if (!v38)
        {
          v31 = v22;
          goto LABEL_58;
        }

        if (v38 == v33[5])
        {
          v39 = a5[6];
          if (v39 == v33[6] && a5[7] == v33[7])
          {
            *(v33 + 3) = (v39 + v9);
          }
        }
      }

      v31 = v22;
LABEL_58:
      v33 += 16;
      if (!--v32)
      {
        v23 = 1;
        goto LABEL_60;
      }
    }
  }

  v24 = -1924128758;
LABEL_23:
  v52 = 0;
  LODWORD(v5) = 0;
LABEL_77:
  if (v22)
  {
    heap_Free(*(*(a1 + 2) + 8), v52);
  }

  if (v53)
  {
    bed_ObjClose(v53);
  }

  if ((v5 & 0x1FFF) == 0xA)
  {
    return v5;
  }

  else
  {
    return v24;
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
              cstdlib_memmove(&v13[16 * (v69 + 1)], v75, (*(v79 + 16) - v69) << 6);
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

uint64_t wparser_InsertWordMarkers(uint64_t a1, uint64_t a2, char *__s, unsigned __int16 *a4)
{
  v84 = 0;
  v85[0] = 0;
  v79 = 0;
  v78 = 0;
  v8 = cstdlib_strlen(__s);
  memset(__dst, 0, sizeof(__dst));
  v9 = bed_ObjOpen(*a1, *(a1 + 8), a2, 1021, v85, 213);
  if ((v9 & 0x80000000) != 0)
  {
    return v9;
  }

  v10 = bed_GetpElem(v85[0], 0, &v84);
  if ((v10 & 0x80000000) != 0 || (v12 = v84, v11 = v85[0], v13 = v84[1], v80 = *v84, v81 = v13, v14 = v84[3], v82 = v84[2], v83 = v14, *(v84 + 7) = 0, *(v12 + 9) = 0, v10 = bed_GetpElem(v11, 0, &v84), (v10 & 0x80000000) != 0) || (v15 = v81, v17 = v84, v16 = v85[0], *v84 = v80, v17[1] = v15, v18 = v83, v17[2] = v82, v17[3] = v18, v10 = bed_GetcElem(v16, &v78), (v10 & 0x80000000) != 0))
  {
    v19 = v10;
    goto LABEL_51;
  }

  v19 = bed_GetpElem(v85[0], 0, &v79);
  if ((v19 & 0x80000000) == 0)
  {
    v20 = v78;
    if (v78 < 2u)
    {
      goto LABEL_79;
    }

    v21 = v79;
    v22 = 84;
    v23 = 1;
    while (1)
    {
      v76 = 0;
      v76 = *(v21 + (v23 << 6) + 32) - *(v21 + 32);
      utf8_GetPreviousValidUtf8Offset(__s, &v76);
      v21 = v79;
      v24 = v76;
      v25 = v79 + (v23 << 6);
      *(v25 + 32) = v76 + *(v79 + 32);
      v26 = *(v25 + 20);
      v27 = v26 > 0x39;
      v28 = (1 << v26) & 0x3C8002000004002;
      if (v27 || v28 == 0)
      {
        goto LABEL_45;
      }

      v76 = v24;
      v30 = utf8_BelongsToSet(5, __s, v24, v8);
      v31 = v76;
      if (v30)
      {
        while (v31 < v8 && utf8_BelongsToSet(5, __s, v31, v8))
        {
          v32 = utf8_determineUTF8CharLength(__s[v76]);
          *(v79 + (v23 << 6) + 32) += v32;
          v31 = v76 + v32;
          v76 += v32;
        }
      }

      else if (v76 < *(v79 + 36))
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
          v35 = *(v79 + ((v34 - 1) << 6) + 20);
          v27 = v35 > 0x39;
          v36 = (1 << v35) & 0x3C8010124021140;
          if (!v27 && v36 != 0)
          {
            goto LABEL_23;
          }
        }

        LOWORD(v33) = -1;
LABEL_23:
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(__s, v76);
        if (PreviousUtf8Offset != -1)
        {
          for (i = PreviousUtf8Offset; i != -1; i = utf8_GetPreviousUtf8Offset(__s, i))
          {
            v40 = utf8_BelongsToSet(5, __s, i, v8);
            if (!v34)
            {
              break;
            }

            if (v40)
            {
              break;
            }

            if (i <= *(v79 + (v33 << 6) + 32))
            {
              break;
            }

            *(v79 + (v23 << 6) + 32) += i - v76;
            v76 = i;
          }
        }
      }

      v21 = v79;
      v41 = v79 + (v23 << 6);
      v42 = *(v41 + 32);
      v43 = *(v79 + 32);
      v44 = v42 - v43;
      v76 = v42 - v43;
      if (*(v41 + 20) != 1)
      {
        goto LABEL_45;
      }

      if (v44 < v8)
      {
        v45 = v42 - v43;
        do
        {
          if (utf8_BelongsToSet(5, __s, v45, v8))
          {
            break;
          }

          v45 = v76 + utf8_determineUTF8CharLength(__s[v76]);
          v76 = v45;
        }

        while (v45 < v8);
        v21 = v79;
      }

      v46 = v21 + (v23 << 6);
      if (v23 >= v78)
      {
LABEL_43:
        v55 = v76 - v44;
      }

      else
      {
        v47 = (v21 + v22);
        v48 = v23;
        v49 = (v21 + v22);
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
          if (v78 == v48)
          {
            goto LABEL_43;
          }
        }

        v55 = v76 - v44;
        if (v76 - v44 + v54 > *(v21 + (v48 << 6) + 32))
        {
          goto LABEL_45;
        }
      }

      *(v46 + 36) = v55;
LABEL_45:
      ++v23;
      v20 = v78;
      v22 += 64;
      if (v23 >= v78)
      {
        if (v78 >= 2u)
        {
          v57 = 1;
          v58 = 1;
          do
          {
            v59 = v58;
            v60 = (v79 + (v58 << 6));
            if (v60[5] != 0x4000 && (v61 = (v57 + 1), v61 < v20) && ((v62 = (v79 + (v61 << 6)), v63 = v62[8], v64 = v60[8], v63 < v64) || v63 == v64 && v62[9] < v60[9]))
            {
              cstdlib_memcpy(__dst, v62, 0x40uLL);
              v65 = (v79 + (v61 << 6));
              v66 = (v79 + (v59 << 6));
              v67 = v66[3];
              v69 = *v66;
              v68 = v66[1];
              v65[2] = v66[2];
              v65[3] = v67;
              *v65 = v69;
              v65[1] = v68;
              cstdlib_memcpy(v66, __dst, 0x40uLL);
              v58 = 0;
            }

            else
            {
              v58 = v59 + 1;
            }

            v57 = v58;
            v20 = v78;
          }

          while (v58 < v78);
          if (v78 >= 2u)
          {
            v70 = 1;
LABEL_67:
            v71 = v79;
            do
            {
              v72 = (v79 + (v70 << 6));
              if (v72[5] == 1)
              {
                v73 = v70;
                while (++v73 < v20)
                {
                  v74 = (v79 + (v73 << 6));
                  if (v74[8] != v72[8])
                  {
                    break;
                  }

                  if (v74[5] == 1)
                  {
                    v72[7] = v74[7] + v74[6] - v72[6];
                    v75 = v73 + 1;
                    if (v20 > v75)
                    {
                      cstdlib_memmove(v74, (v71 + (v75 << 6)), (v20 - v75) << 6);
                      v20 = v78;
                    }

                    v78 = --v20;
                    if (v70 < v20)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_79;
                  }
                }
              }

              ++v70;
            }

            while (v70 < v20);
          }
        }

LABEL_79:
        *a4 = v20;
        break;
      }
    }
  }

LABEL_51:
  if (v85[0])
  {
    bed_ObjClose(v85[0]);
  }

  return v19;
}

uint64_t utoin_LookUpUdctWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __int16 a7, uint64_t a8)
{
  v16 = 62;
  __s1 = 12049;
  v14 = 0;
  v13 = 1;
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
  if ((*(a1 + 128))(a2, a3, a5, *a4, 0, "normal", &v13, *(a4 + 16), a4 + 24, a8, 0, &v14, 0, 0))
  {
    return 0;
  }

  v10 = cstdlib_strlen(*(a4 + 16));
  *(a4 + 24) = v10;
  v11 = *(a4 + 16);
  if (!v11[v10 - 1])
  {
    *(a4 + 24) = --v10;
  }

  if (v13 == 4)
  {
    if (v10 < 7u || cstdlib_memcmp(&__s1, v11, 3uLL) || cstdlib_memcmp(&__s1, (*(a4 + 16) + *(a4 + 24) - 3), 3uLL))
    {
      v12 = 2;
    }

    else
    {
      cstdlib_memmove(*(a4 + 16), (*(a4 + 16) + 2), *(a4 + 24) - 4);
      *(*(a4 + 16) + *(a4 + 24) - 4) = 0;
      v12 = 16;
      **(a4 + 16) = 16;
      *(*(a4 + 16) + *(a4 + 24) - 5) = 17;
      *(a4 + 24) -= 4;
    }
  }

  else
  {
    v12 = 43;
  }

  result = 0;
  *(a4 + 12) = v12;
  return result;
}

uint64_t utoin_ReplaceWord(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, char *a7)
{
  v81 = 0;
  v82[0] = 0;
  v80 = 0;
  v14 = 2370838535;
  v79 = 0u;
  memset(__b, 0, sizeof(__b));
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  *v65 = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  __b[0] = MarkerUDCTREF;
  __b[1] = unk_26ECDC1F0;
  __b[2] = xmmword_26ECDC200;
  v79 = unk_26ECDC210;
  cstdlib_memset(&v74, 0, 0x40uLL);
  v74 = MarkerSetTypeOfInput;
  v75 = unk_26ECDC230;
  v76 = xmmword_26ECDC240;
  v77 = unk_26ECDC250;
  cstdlib_memset(&v70, 0, 0x40uLL);
  v70 = MarkerSetLang;
  v71 = unk_26ECDC270;
  v72 = xmmword_26ECDC280;
  v73 = unk_26ECDC290;
  cstdlib_memset(&v66, 0, 0x40uLL);
  v66 = MarkerSetNLU;
  v67 = unk_26ECDC2B0;
  v68 = xmmword_26ECDC2C0;
  v69 = unk_26ECDC2D0;
  if (!a1 || !a2 || !a4)
  {
    return v14;
  }

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
    return v14;
  }

  TNArgStr = datac_RequestBlock(a6, 1012, 1u, v65);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v62 = a5;
  v61 = v16;
  v17 = v81[8];
  v18 = a3;
  v19 = *(v82[0] + 32);
  v60 = v81[6];
  v56 = v81[7];
  v57 = v81[9];
  v20 = v18;
  v58 = *(a4 + 8);
  TNArgStr = bed_Remove(a1, v18, v58);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v59 = v17 - v19;
  if (*(a4 + 24))
  {
    v21 = v20;
    TNArgStr = bed_Goto(a1, v20);
    v22 = v62;
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    TNArgStr = bed_Insert(a1, *(a4 + 16), *(a4 + 24));
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    if (*(a4 + 8) + v20 >= v81[9] + v59)
    {
      v55 = v81[8];
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v55 = 0;
    }

    v24 = v61;
  }

  else
  {
    v23 = 0;
    v55 = 0;
    v21 = v20;
    v24 = v61;
    v22 = v62;
  }

  v25 = v82;
  if (v22 == 1)
  {
    v25 = &v81;
  }

  (*v25)[9] = (*v25)[9] + *(a4 + 24) - *(a4 + 8);
  TNArgStr = bed_GetiElem(a2, &v80);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v63 = v21 - v59;
  if (a7)
  {
    DWORD1(v71) = 36;
    TNArgStr = addOrGetTNArgStr(*v65, a7, &v72 + 2, a6);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v26 = v81[8];
    if (v26 - v24 < v21)
    {
      *(&v71 + 1) = (v63 + v60);
      *&v72 = v24 + v21;
      TNArgStr = bed_Goto(a2, 1u);
      if ((TNArgStr & 0x80000000) != 0)
      {
        return TNArgStr;
      }

      v27 = &v70;
      goto LABEL_30;
    }

    *(&v71 + 1) = v81[6];
    *&v72 = v26;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v70;
LABEL_37:
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
    goto LABEL_40;
  }

  strcpy(__s, "BND");
  DWORD1(v67) = 51;
  TNArgStr = addOrGetTNArgStr(*v65, __s, &v68 + 2, a6);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v28 = v81[8];
  if (v28 - v24 >= v21)
  {
    *(&v67 + 1) = v81[6];
    *&v68 = v28;
    TNArgStr = bed_Goto(a2, 1u);
    if ((TNArgStr & 0x80000000) != 0)
    {
      return TNArgStr;
    }

    v29 = &v66;
    goto LABEL_37;
  }

  *(&v67 + 1) = (v63 + v60);
  *&v68 = v24 + v21;
  TNArgStr = bed_Goto(a2, 1u);
  if ((TNArgStr & 0x80000000) != 0)
  {
    return TNArgStr;
  }

  v27 = &v66;
LABEL_30:
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

LABEL_40:
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
    v33 = v24 + v21;
    do
    {
      v34 = v31[8];
      if (v33 <= v34)
      {
        v35 = *(a4 + 8);
        v36 = v24 + v21;
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
  if (!v22)
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
      if (v41 - v24 >= v21)
      {
        v46 = *(a4 + 8);
        v81[7] = v46;
        v38[9] = v37;
        v38[10] = v40;
        if (*(a4 + 12) == 16)
        {
          DWORD2(__b[1]) = v38[6];
          HIDWORD(__b[1]) = v46;
          *&__b[2] = __PAIR64__(v37, v41);
LABEL_64:
          DWORD2(__b[2]) = 16;
          TNArgStr = bed_marker_InjectFixedRefMarker(a2, __b);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }
      }

      else
      {
        v42 = v24 + v21;
        v81[9] = v42 - v41;
        TNArgStr = bed_marker_MapPosCur(a2, v42, v38 + 7);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        v81[7] -= v81[6];
        v43 = *(a4 + 12);
        v44 = v58;
        if (v43 == 16)
        {
          v44 = 0;
        }

        DWORD2(v75) = v63 + v60;
        HIDWORD(v75) = v44;
        *&v76 = __PAIR64__(*(a4 + 24), v42);
        DWORD2(v76) = v43;
        TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v74);
        if ((TNArgStr & 0x80000000) != 0)
        {
          return TNArgStr;
        }

        if (*(a4 + 12) == 16)
        {
          DWORD2(__b[1]) = v63 + v60;
          HIDWORD(__b[1]) = v58;
          *&__b[2] = __PAIR64__(*(a4 + 24), v42);
          goto LABEL_64;
        }
      }

      v47 = *(a4 + 8) + v21;
      v48 = v59 + v57 >= v47;
      v49 = v59 + v57 - v47;
      if (v49 == 0 || !v48)
      {
        v50 = v61 + v21;
LABEL_68:
        if (v23)
        {
          v51 = v55;
        }

        else
        {
          v51 = v50 + *(a4 + 24);
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

        v52 = v80;
        if (v80 < HIWORD(v80))
        {
          for (i = v81 + 16; *(i - 11) != 7 || *(i - 6) != v39 || *(i - 8) != v51; i += 16)
          {
            v14 = 0;
            v81 = i;
            LOWORD(v80) = ++v52;
            if (v52 >= HIWORD(v80))
            {
              return v14;
            }
          }

          TNArgStr = bed_Goto(a2, v52);
          if ((TNArgStr & 0x80000000) != 0)
          {
            return TNArgStr;
          }
        }

        return 0;
      }

      DWORD2(v75) = v63 + v58 + v60;
      HIDWORD(v75) = v56 - (v63 + v58);
      v50 = v61 + v21;
      LODWORD(v76) = v50 + *(a4 + 24);
      *(&v76 + 4) = __PAIR64__(v39, v49);
      TNArgStr = bed_marker_InjectFixedRefMarker(a2, &v74);
      if ((TNArgStr & 0x80000000) == 0)
      {
        goto LABEL_68;
      }

      return TNArgStr;
    }
  }

  else
  {
    v39 = *(a4 + 12);
  }

  *(&__b[1] + 8) = *(v81 + 6);
  DWORD2(__b[2]) = v39;
  v45 = bed_marker_InjectFixedRefMarker(a2, __b);
  return v45 & (v45 >> 31);
}

uint64_t addOrGetTNArgStr(uint64_t a1, char *__s, unsigned int *a3, uint64_t a4)
{
  v4 = 2370838535;
  v18 = a1;
  if (a1)
  {
    v5 = a1;
    v6 = *(a1 + 8);
    if (v6)
    {
      v10 = *(a1 + 16);
      if (!*(a1 + 16))
      {
LABEL_7:
        *a3 = v10;
        v14 = cstdlib_strlen(__s) + 1;
        v15 = *(v5 + 16);
        v16 = v15 + v14;
        if (*(v5 + 18) >= (v15 + v14))
        {
          v4 = 0;
        }

        else
        {
          v4 = datac_RequestBlock(a4, 1012, (v15 + v14), &v18);
          if ((v4 & 0x80000000) != 0)
          {
            return v4;
          }

          v5 = v18;
          v15 = *(v18 + 16);
        }

        cstdlib_memcpy((*(v5 + 8) + v15), __s, v14);
        *(v18 + 16) = v16;
        return v4;
      }

      v11 = 0;
      while (1)
      {
        v12 = cstdlib_strlen(v6);
        if (!cstdlib_strcmp(__s, v6))
        {
          break;
        }

        v13 = (v12 + 1);
        v11 += v13;
        v6 += v13;
        v10 = *(v5 + 16);
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
  v60 = *MEMORY[0x277D85DE8];
  __c_3 = 0;
  __c_1 = 0;
  __c = 0;
  strcpy(v53, "xlit23");
  v58 = 0;
  strcpy(v59, "cpextensions");
  strcpy(__dst, "win936");
  v50 = -1;
  if (!a3)
  {
    return 2370838535;
  }

  v57 = 0;
  v49 = 0;
  if ((InitRsrcFunction(a1, a2, &v58) & 0x80000000) != 0)
  {
    return 2370838535;
  }

  *a3 = 0;
  v23 = heap_Alloc(*(v58 + 8), 184);
  if (!v23)
  {
    return 2370838538;
  }

  v24 = v23;
  cstdlib_memset(v23, 0, 0xB8uLL);
  *v24 = a1;
  *(v24 + 8) = a2;
  v25 = v58;
  *(v24 + 16) = v58;
  *(v24 + 24) = 0;
  *(v24 + 32) = a7;
  *(v24 + 40) = a9;
  *(v24 + 48) = a10;
  *(v24 + 56) = 0;
  *(v24 + 60) = 0;
  *(v24 + 72) = 0;
  *(v24 + 164) = 0;
  *(v24 + 144) = 0;
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
  *(v24 + 172) = 0;
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;
  if (a11)
  {
    __c_1 = 0;
    if (((*(a7 + 96))(a9, a10, "fecfg", "transcoder", &__c_3, &__c_1, &__c) & 0x80000000) == 0 && __c_1)
    {
      if (__c_1 == 1 && __c_3)
      {
        v26 = cstdlib_strchr(*__c_3, __c);
        if (v26)
        {
          *v26 = 0;
        }

        cstdlib_strcpy(__dst, *__c_3);
      }

      __c_1 = 0;
      v27 = 2370838528;
      if (((*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "translitdef", &__c_3, &__c_1, &__c) & 0x80000000) != 0 || !__c_1)
      {
        v35 = *(v58 + 32);
        v36 = 1803;
        goto LABEL_38;
      }

      if (__c_1 == 1 && __c_3)
      {
        v28 = cstdlib_strchr(*__c_3, __c);
        if (v28)
        {
          *v28 = 0;
        }

        cstdlib_strcpy(v53, *__c_3);
      }

      __c_1 = -1;
      fecfg_fewordseg_param = (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "backtrans", &__c_3, &__c_1, &__c);
      if ((fecfg_fewordseg_param & 0x80000000) == 0)
      {
        *(v24 + 64) = __c_1 != 0;
        fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 164), "fewordseg_wpcrf");
        if ((fecfg_fewordseg_param & 0x80000000) == 0)
        {
          fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 164), "fewordseg_bypasshexcode");
          if ((fecfg_fewordseg_param & 0x80000000) == 0)
          {
            fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 172), "fewordseg_skipCollapseIdenticalRegion");
            if ((fecfg_fewordseg_param & 0x80000000) == 0)
            {
              fecfg_fewordseg_param = read_fecfg_fewordseg_param(a7, v24, (v24 + 176), "fewordseg_extra_split_marker");
              if ((fecfg_fewordseg_param & 0x80000000) == 0)
              {
                if (!*(v24 + 64))
                {
                  cstdlib_memset(__b, 0, 7uLL);
                  cstdlib_strcpy(__b, "word");
                  v37 = (*(a7 + 72))(*(v24 + 40), *(v24 + 48), __b, &v57);
                  if ((v37 & 0x80000000) != 0)
                  {
                    v43 = v37;
                    heap_Free(*(v58 + 8), v24);
                    return v43;
                  }

                  if (v57)
                  {
                    v31 = 1;
                  }

                  else
                  {
                    cstdlib_memset(__b, 0, 7uLL);
                    v31 = 0;
                    for (i = 1; ; i = 0)
                    {
                      cstdlib_strcpy(__b, "word");
                      v45 = LH_itoa(v31, v48, 0xAu);
                      cstdlib_strcat(__b, v45);
                      v46 = (*(a7 + 72))(*(v24 + 40), *(v24 + 48), __b, &v57);
                      if ((v46 & 0x80000000) != 0)
                      {
                        v47 = v46;
                        heap_Free(*(v58 + 8), v24);
                        return v47;
                      }

                      if (!v57)
                      {
                        break;
                      }

                      ++v31;
                    }

                    if (i)
                    {
                      heap_Free(*(v58 + 8), v24);
                      log_OutPublic(*(v58 + 32), &modPP_3, 1809, 0);
                      return 2370838794;
                    }
                  }

                  goto LABEL_45;
                }

                v50 = -1;
                fecfg_fewordseg_param = (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "nrpart_g2p", &__c_3, &v50, &v49);
                if ((fecfg_fewordseg_param & 0x80000000) == 0)
                {
                  if (v50)
                  {
                    v30 = cstdlib_strchr(*__c_3, v49);
                    if (v30)
                    {
                      *v30 = 0;
                    }

                    v31 = cstdlib_atoi(*__c_3);
                  }

                  else
                  {
                    v31 = 0;
                  }

LABEL_45:
                  *(v24 + 56) = v31;
                  *(v24 + 60) = 0;
                  v50 = -1;
                  (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "versioninfo", &__c_3, &v50, &v49);
                  if (v50)
                  {
                    v38 = cstdlib_strchr(*__c_3, v49);
                    if (v38)
                    {
                      *v38 = 0;
                    }

                    *(v24 + 60) = hasCharDic(*__c_3);
                  }

                  v50 = -1;
                  (*(a7 + 96))(*(v24 + 40), *(v24 + 48), "fecfg", "useppdomains", &__c_3, &v50, &v49);
                  if (v50)
                  {
                    v39 = cstdlib_strchr(*__c_3, v49);
                    if (v39)
                    {
                      *v39 = 0;
                    }

                    v40 = cstdlib_strcmp(*__c_3, "1") == 0;
                  }

                  else
                  {
                    v40 = 0;
                  }

                  v41 = (*(a7 + 72))(*(v24 + 40), *(v24 + 48), v59, &v57);
                  if ((v41 & 0x80000000) != 0)
                  {
                    v27 = v41;
                    goto LABEL_39;
                  }

                  if (!v57)
                  {
                    v59[0] = 0;
                  }

                  v42 = (*(*(v24 + 104) + 56))(*(v24 + 112), *(v24 + 120), v24 + 32, v53, __dst, v40, v59);
                  if ((v42 & 0x80000000) == 0)
                  {
                    v27 = 0;
                    *a3 = v24;
                    return v27;
                  }

                  v27 = v42;
                  v35 = *(v58 + 32);
                  v36 = 1807;
LABEL_38:
                  log_OutPublic(v35, &modPP_3, v36, 0, a3);
LABEL_39:
                  heap_Free(*(v58 + 8), v24);
                  return v27;
                }
              }
            }
          }
        }
      }

      return fecfg_fewordseg_param;
    }

    v32 = *(v58 + 32);
    v33 = 1801;
  }

  else
  {
    v32 = *(v25 + 32);
    v33 = 1806;
  }

  log_OutPublic(v32, &modPP_3, v33, 0, a3);
  heap_Free(*(v58 + 8), v24);
  return 2370838528;
}

uint64_t read_fecfg_fewordseg_param(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  memset(__c, 0, sizeof(__c));
  v9 = -1;
  v5 = (*(a1 + 96))(*(a2 + 40), *(a2 + 48), "fecfg", a4, &__c[1], &v9, __c);
  if ((v5 & 0x80000000) == 0 && v9 == 1 && *&__c[1] != 0)
  {
    v7 = cstdlib_strchr(**&__c[1], __c[0]);
    if (v7)
    {
      *v7 = 0;
    }

    if (!cstdlib_strcmp(**&__c[1], "yes"))
    {
      *a3 = 1;
    }
  }

  return v5;
}

BOOL hasCharDic(unsigned __int8 *a1)
{
  v8 = 0;
  v9 = a1;
  v1 = cstdlib_strtol(a1, &v8, 10);
  v2 = v1 < 1 || v8 == 0;
  if (v2 || *v8 != 46)
  {
    return 0;
  }

  v3 = cstdlib_strtol(v8 + 1, &v9, 10);
  result = 0;
  if ((v3 & 0x80000000) != 0 || !v9)
  {
    return result;
  }

  if (*v9 != 46)
  {
    return 0;
  }

  v5 = cstdlib_strtol(v9 + 1, &v8, 10);
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
      if (!cstdlib_strcmp(*(a1 + 24), "tht"))
      {
        *(a1 + 160) = 2;
      }

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
  v104[1] = *MEMORY[0x277D85DE8];
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
  v102 = xmmword_26ECDC324;
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
          v102 = xmmword_26ECDC3C4;
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
              v67 = (off_287EEEDF0[v71])(a1, v63, v64, v104[0], a2);
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
  v68 = 0;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  __b = 0u;
  v64 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerIntWord;
  v64 = unk_26ECDC350;
  v65 = xmmword_26ECDC360;
  v66 = unk_26ECDC370;
  result = 2370838535;
  if (a2)
  {
    if (a3)
    {
      result = bed_GetpElem(a3, 0, &v68);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a3, &v67);
        if ((result & 0x80000000) == 0)
        {
          v7 = v67;
          if (v67)
          {
            v8 = 0;
            LOWORD(v9) = 0;
            v10 = 0;
            v57 = a3;
            while (1)
            {
              v9 = v9;
              v11 = (v68 + (v9 << 6) + 20);
              while (1)
              {
                v12 = *v11;
                v11 += 16;
                if (v12 == 7)
                {
                  break;
                }

                if (++v9 >= v7)
                {
                  goto LABEL_13;
                }
              }

              v13 = v68 + (v9 << 6);
              if (*(v13 + 20) == 7)
              {
                v8 = *(v13 + 40);
                v10 = v9;
              }

LABEL_13:
              v62 = v10;
              v14 = v68 + (v10 << 6);
              if (*(v14 + 20) == 7 && *(v14 + 40) == 43 && *(v14 + 56))
              {
                LOWORD(v9) = v9 + 1;
                goto LABEL_105;
              }

              v15 = v9;
              if (v9 < v7)
              {
                v16 = v9;
                v17 = (v68 + (v9 << 6) + 40);
                while (*(v17 - 5) == 7 && v8 == *v17)
                {
                  ++v16;
                  v17 += 16;
                  if (v7 == v16)
                  {
                    LODWORD(v16) = v7;
                    break;
                  }
                }

                v15 = v9;
                if (v16 != v9)
                {
                  v15 = (v16 - 1);
                  if ((v16 - 1) > v9)
                  {
                    v15 = (v16 - 1);
                    v18 = (v68 + (v15 << 6) + 40);
                    while (*(v18 - 5) != 7 || v8 != *v18)
                    {
                      --v15;
                      v18 -= 16;
                      if (v9 >= v15)
                      {
                        v15 = v9;
                        break;
                      }
                    }
                  }
                }
              }

              if (v8 == 43)
              {
                v19 = v68 + (v15 << 6);
                if (*(v19 + 20) == 7 && *(v19 + 40) == 43 && *(a1 + 168) == 1)
                {
                  LOWORD(v9) = v9 + 1;
                  v8 = 43;
                  goto LABEL_105;
                }
              }

              if (v15 == v9 || v15 >= v7)
              {
                goto LABEL_107;
              }

              v59 = v8;
              if (*(v14 + 40) == 16)
              {
                if (v10 >= 2u && (v20 = v68 + ((v10 - 1) << 6), *(v20 + 20) == 998))
                {
                  if (*(v20 + 32) == *(v14 + 32))
                  {
                    v21 = v10 - 1;
                  }

                  else
                  {
                    v21 = 0;
                  }
                }

                else
                {
                  v21 = 0;
                }

                v23 = v10 + 1;
                if (v23 < v7)
                {
                  v24 = v68 + (v23 << 6);
                  if (*(v24 + 20) == 998 && *(v24 + 32) == *(v14 + 32))
                  {
                    v21 = v10 + 1;
                  }
                }

                if (v15 >= 2u && (v25 = v15 - 1, v26 = v68 + (v25 << 6), *(v26 + 20) == 998))
                {
                  if (*(v26 + 32) != *(v68 + (v15 << 6) + 32))
                  {
                    LOWORD(v25) = 0;
                  }
                }

                else
                {
                  LOWORD(v25) = 0;
                }

                v27 = v7;
                v28 = v15 + 1;
                if (v28 < v27)
                {
                  v29 = v68 + (v28 << 6);
                  if (*(v29 + 20) == 998 && *(v29 + 32) == *(v68 + (v15 << 6) + 32))
                  {
                    LOWORD(v25) = 1;
                  }
                }

                if (v25)
                {
                  v22 = v21 != 0;
                }

                else
                {
                  v22 = 0;
                }
              }

              else
              {
                v22 = 0;
                v21 = 0;
              }

              v60 = v15;
              v30 = v68 + (v15 << 6);
              v31 = *(v30 + 32);
              v32 = *(v14 + 32);
              v58 = v21;
              v61 = v22;
              if (!*v30 && v31 == v32)
              {
                *(v14 + 24) = *(v30 + 24);
                v32 = v31;
              }

              *(v14 + 36) = v31 - v32 + *(v30 + 36);
              *(v14 + 28) = *(v30 + 24) - *(v14 + 24) + *(v30 + 28);
              v33 = v10;
              v34 = v10;
              if (v10 <= v15)
              {
                do
                {
                  v35 = v34;
                  if (v33 == v34)
                  {
                    goto LABEL_74;
                  }

                  v36 = v68 + (v34 << 6);
                  if (!*(v36 + 16))
                  {
                    goto LABEL_74;
                  }

                  v37 = v15;
                  v38 = v10;
                  v39 = a1;
                  v40 = *(a1 + 16);
                  v41 = v68 + (v62 << 6);
                  v42 = *(v41 + 16);
                  result = growOffsets(v40, v41, *(v36 + 16));
                  if ((result & 0x80000000) != 0)
                  {
                    return result;
                  }

                  v43 = *(v36 + 16);
                  v44 = *(v36 + 8);
                  if (*(v36 + 16))
                  {
                    v45 = (*(v41 + 8) + 8 * v42);
                    v46 = *(v36 + 8);
                    a1 = v39;
                    v10 = v38;
                    v15 = v37;
                    do
                    {
                      v47 = *v46++;
                      *v45++ = v47;
                      --v43;
                    }

                    while (v43);
                  }

                  else
                  {
                    a1 = v39;
                    v10 = v38;
                    v15 = v37;
                    if (!v44)
                    {
                      goto LABEL_74;
                    }
                  }

                  heap_Free(*(v40 + 8), v44);
                  *(v36 + 8) = 0;
                  *(v36 + 16) = 0;
LABEL_74:
                  if (v35 != v10)
                  {
                    v48 = *(v68 + (v35 << 6) + 48);
                    if (v48)
                    {
                      heap_Free(*(*(a1 + 16) + 8), v48);
                      *(v68 + (v35 << 6) + 48) = 0;
                    }
                  }

                  v34 = v35 + 1;
                }

                while ((v35 + 1) <= v15);
              }

              v49 = v60;
              if (v15 > v9)
              {
                break;
              }

LABEL_99:
              if (!v61)
              {
                v7 = v67;
                v8 = v59;
LABEL_107:
                result = 0;
                LOWORD(v9) = v9 + 1;
                goto LABEL_108;
              }

              cstdlib_memcpy(&__b, (v68 + (v58 << 6)), 0x40uLL);
              DWORD1(v64) = 41;
              result = bed_Goto(v57, v58 + 1);
              v8 = v59;
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_marker_InjectFixedRefMarker(v57, &__b);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetpElem(v57, 0, &v68);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              result = bed_GetcElem(v57, &v67);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v7 = v67;
LABEL_105:
              result = 0;
LABEL_108:
              if (v9 >= v7)
              {
                return result;
              }
            }

            v50 = v60 << 6;
            while (1)
            {
              v51 = v68 + v50;
              if (!v61)
              {
                break;
              }

              v52 = *(v51 + 20);
              if (v52 != 7)
              {
                goto LABEL_90;
              }

              if (v49 >= 2 && *(v68 + v50 - 44) == 998 && *(v68 + v50 - 32) == *(v68 + v50 + 32) || v49 + 1 < v67 && (v53 = v68 + ((v49 + 1) << 6), *(v53 + 20) == 998) && *(v53 + 32) == *(v68 + v50 + 32))
              {
                v54 = v68 + v50;
                v55 = 41;
LABEL_97:
                *(v54 + 20) = v55;
                goto LABEL_98;
              }

LABEL_92:
              v56 = *(v68 + v50);
              if (!v56)
              {
                v54 = v68 + v50;
                v55 = 999;
                goto LABEL_97;
              }

              if (v56 == 1)
              {
LABEL_94:
                result = bed_Remove(v57, v49, 1u);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                --v67;
              }

LABEL_98:
              --v49;
              v50 -= 64;
              if (v9 >= v49)
              {
                goto LABEL_99;
              }
            }

            v52 = *(v51 + 20);
LABEL_90:
            if (v52 == 0x4000)
            {
              goto LABEL_94;
            }

            if (v52 != 7)
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
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  __b = 0u;
  v42 = 0u;
  v40 = 0;
  v39 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerUndef;
  v42 = unk_26ECDC3E8;
  v43 = xmmword_26ECDC3F8;
  v44 = unk_26ECDC408;
  result = bed_GetcElem(a2, &v39);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (!v39)
  {
    return result;
  }

  result = datac_RequestBlock(a3, 1012, 1u, &v45);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a1, &v47);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a1, 0, &v46);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetpElem(a2, 0, &v40);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v47 < 2u)
  {
    return 0;
  }

  v7 = 1;
  v8 = 26;
  v9 = 1;
  while (1)
  {
    v10 = v46;
    if (v46[v8 - 5] != 21)
    {
      break;
    }

    if (v45)
    {
      MarkerArgStr = marker_getMarkerArgStr(1u);
      if (!cstdlib_strcmp(MarkerArgStr, (*(v45 + 8) + v46[v8])))
      {
        v10 = v46;
        goto LABEL_16;
      }
    }

    v9 = 0;
LABEL_23:
    ++v7;
    v8 += 16;
    if (v7 >= v47)
    {
      return 0;
    }
  }

  if (v9 != 1)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v10[v8 - 5] != 7 || (v10[v8] - 3) > 5 || (v10[v8 - 1] - 1) > 3)
  {
    goto LABEL_22;
  }

  cstdlib_memset(__dst, 0, 8uLL);
  cstdlib_strncpy(__dst, (v40 + (v46[v8 - 2] - v46[8])), v46[v8 - 1]);
  __dst[v46[v8 - 1]] = 0;
  v12 = Utf8_Utf8NbrOfSymbols(__dst);
  v9 = 1;
  if (v46[v8 - 5] != 7 || (v12 - 1) != 1)
  {
    goto LABEL_23;
  }

  if ((v46[v8] - 3) > 5)
  {
LABEL_22:
    v9 = 1;
    goto LABEL_23;
  }

  v13 = &v46[v8];
  if (v7 < 2)
  {
    v16 = 0xFFFF;
  }

  else
  {
    v14 = v7 - 1;
    v15 = v46 + 26;
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
  if (v47 >= 2uLL)
  {
    v21 = 0;
    v22 = v46 + 25;
    v23 = v47 - 1;
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
        if (v16 == 0xFFFF && v19 == *v22 + v24 || (v21 = 0, v16 == v46[8]) && v24 >= v16)
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
  if (v47 > (v7 + 1))
  {
    v26 = v20 + v19;
    while (1)
    {
      v28 = &v46[16 * v25];
      if (v28[8] != v26)
      {
LABEL_53:
        v26 = 0xFFFF;
        v27 = 0xFFFF;
        goto LABEL_54;
      }

      if (v28[5] == 7 && v28[10] == 1)
      {
        break;
      }

      if (v47 <= ++v25)
      {
        goto LABEL_53;
      }
    }

    v27 = v28[9];
  }

LABEL_54:
  v29 = v46[8];
  if (v16 != 0xFFFF || (v30 = v19, v19 != v29))
  {
    v30 = v16;
    if (v16 != v29)
    {
      return 0;
    }
  }

  v31 = v26 == 0xFFFF ? v20 + v19 : v27 + v26;
  if (v31 != v46[9] + v30)
  {
    return 0;
  }

  v36 = v17;
  v37 = v19;
  v38 = v20;
  v46[v8] = 14;
  DWORD1(v42) = 21;
  v32 = v45;
  v33 = marker_getMarkerArgStr(3u);
  result = addOrGetTNArgStr(v32, v33, &v43 + 2, a3);
  if ((result & 0x80000000) == 0)
  {
    *(&v42 + 1) = v18;
    *&v43 = v46[v8 - 2];
    result = bed_Goto(a1, v7);
    if ((result & 0x80000000) == 0)
    {
      result = bed_marker_InjectFixedRefMarker(a1, &__b);
      if ((result & 0x80000000) == 0)
      {
        DWORD1(v42) = 21;
        v34 = v45;
        v35 = marker_getMarkerArgStr(1u);
        result = addOrGetTNArgStr(v34, v35, &v43 + 2, a3);
        if ((result & 0x80000000) == 0)
        {
          *(&v42 + 1) = v36 + v18;
          *&v43 = v38 + v37;
          result = bed_marker_InjectFixedRefMarker(a1, &__b);
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
  v24 = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  cstdlib_memset(&v19, 0, 0x40uLL);
  v19 = MarkerSetTypeOfInput;
  v20 = unk_26ECDC230;
  v21 = xmmword_26ECDC240;
  v22 = unk_26ECDC250;
  result = bed_GetcElem(a1, &v24);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a1, 0, &v23);
    if ((result & 0x80000000) == 0)
    {
      v5 = v24;
      if (v24 >= 2u)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = v23;
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
            if ((!v14 || a2 == 1 && (v12 <= 0x3C && ((1 << v12) & 0x1000000001050000) != 0 || v12 == 99)) && v7 < *(v11 + 24) + v6)
            {
              v15 = (v9 + (v8 << 6));
              DWORD2(v21) = v15[10];
              *(&v20 + 1) = (*(v11 + 24) + v6);
              LODWORD(v21) = *(v11 + 32);
              v16 = v15[8];
              DWORD1(v21) = v15[9];
              v17 = v21 - v16;
              v15[9] = v21 - v16;
              DWORD1(v21) -= v17;
              if (DWORD1(v21))
              {
                v18 = i + 1;
                result = bed_Goto(a1, (i + 1));
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                result = bed_marker_InjectFixedRefMarker(a1, &v19);
                if ((result & 0x80000000) != 0)
                {
                  return result;
                }

                v9 = v23;
                v7 = *(v23 + (v18 << 6) + 24) + v6;
                v5 = ++v24;
                i = v18;
                v8 = v18;
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
  v47[1] = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47[0] = 7;
  v43 = 0;
  v44 = 0;
  v4 = 2370838535;
  if (!a2 || !a3)
  {
    return v4;
  }

  v45 = 0;
  v42 = 0;
  v9 = *(a1 + 16);
  v10 = bed_GetcElem(a2, &v45);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v11 = datac_RequestBlock(a4, 1029, (v45 + 1), &v44);
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

  v10 = bed_ObjOpen(*a1, *(a1 + 8), a4, 1029, &v46, 213);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v10 = bed_Goto(a2, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v10 = bed_Goto(a3, 0);
  if ((v10 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v12 = bed_GoForward(a3, bed_marker_IsOfType, v47);
  v4 = v12;
  if ((v12 & 0x80000000) != 0 && (v12 & 0x1FFF) != 0x14)
  {
LABEL_78:
    if (v46)
    {
      bed_ObjClose(v46);
    }

    return v4;
  }

  if ((v12 & 0x80000000) == 0)
  {
    v13 = 0;
    v14 = 0uLL;
    while (2)
    {
      __src = 0;
      v40[0] = v14;
      v40[1] = v14;
      __dst = v14;
      v39 = v14;
      v37 = 0;
      v10 = bed_GetpElem(a3, 0xFFFFu, &__src);
      if ((v10 & 0x80000000) != 0)
      {
LABEL_77:
        v4 = v10;
        goto LABEL_78;
      }

      cstdlib_memcpy(&__dst, __src, 0x40uLL);
      v15 = *(__src + 10);
      v16 = utoin_NormalizeOrthNativeWord;
      if (v15 <= 7)
      {
        if (v15 <= 4)
        {
          if ((v15 - 3) < 2)
          {
            goto LABEL_27;
          }

          if (v15 == 1)
          {
            v18 = utoin_MarkWordBoundary;
            goto LABEL_28;
          }

          if (v15 != 2)
          {
LABEL_40:
            v18 = utoin_RemoveRegion;
            goto LABEL_28;
          }

LABEL_29:
          v19 = *(v9 + 32);
          UTOIMarkerString = getUTOIMarkerString(v15);
          log_OutText(v19, &modPP_3, 5, 0, "[UTOI] (normalize region %s %u,%u)", UTOIMarkerString, *(__src + 8), *(__src + 9));
          v10 = v16(a1, a2, a3, v46, a4);
          if ((v10 & 0x80000000) == 0)
          {
            v10 = bed_Goto(a3, 0);
            if ((v10 & 0x80000000) == 0)
            {
              while (1)
              {
                v21 = bed_GoForward(a3, bed_marker_IsOfType, v47);
                if ((v21 & 0x80000000) != 0)
                {
                  v4 = v21;
                  if ((v21 & 0x1FFF) != 0x14)
                  {
                    goto LABEL_78;
                  }
                }

                v10 = bed_GetpElem(a3, 0xFFFFu, &__src);
                if ((v10 & 0x80000000) != 0)
                {
                  goto LABEL_77;
                }

                if (*(&v39 + 1) == *(__src + 3) && LODWORD(v40[0]) == *(__src + 8) && !cstdlib_memcmp(v40 + 8, __src + 40, 8uLL))
                {
                  break;
                }

                v37 = 1;
                bed_GoForward(a3, bed_marker_IsAt, &v37);
              }

              v25 = *(__src + 10);
              if ((v25 - 5) < 4)
              {
LABEL_50:
                v25 = 16;
                if (v13 && v13 != 43)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v25 == 2)
              {
                v25 = 16;
              }

              else if (v25 == 1)
              {
                goto LABEL_50;
              }

LABEL_57:
              v13 = v25;
LABEL_58:
              v37 = 1;
              bed_GoForward(a3, bed_marker_IsAt, &v37);
              v26 = bed_GoForward(a3, bed_marker_IsOfType, v47);
              v4 = v26;
              if ((v26 & 0x80000000) != 0 && (v26 & 0x1FFF) != 0x14)
              {
                goto LABEL_78;
              }

              v14 = 0uLL;
              if ((v26 & 0x80000000) == 0)
              {
                continue;
              }

              goto LABEL_61;
            }
          }

          goto LABEL_77;
        }

        if (v15 == 5)
        {
          v18 = utoin_RemoveRegion;
          if (*(__src + 9) > 0x60u)
          {
            goto LABEL_28;
          }

          v22 = (v13 & 0xFFFFFFEF) == 0;
          v23 = utoin_NormalizeOrthNativeText;
          v24 = utoin_NormalizeOrthNativeWord;
LABEL_46:
          if (v22)
          {
            v16 = v24;
          }

          else
          {
            v16 = v23;
          }

          goto LABEL_29;
        }

        if (v15 != 6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v17 = (v15 - 14);
        if (v17 <= 0x3A)
        {
          if (((1 << (v15 - 14)) & 0x700400020000004) != 0)
          {
            goto LABEL_27;
          }

          if (((1 << (v15 - 14)) & 0x40000001) != 0)
          {
            v18 = utoin_SpellRegion;
LABEL_28:
            v16 = v18;
            goto LABEL_29;
          }

          if (v17 == 1)
          {
LABEL_27:
            v18 = utoin_TranscodeText;
            goto LABEL_28;
          }
        }

        if (v15 != 8)
        {
          if (v15 == 99)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }
      }

      break;
    }

    v18 = utoin_RemoveRegion;
    if (*(__src + 9) > 0x20u)
    {
      goto LABEL_28;
    }

    v22 = (v13 & 0xFFFFFFEF) == 0;
    v23 = utoin_TranscodeText;
    v24 = utoin_TranscodeWord;
    goto LABEL_46;
  }

LABEL_61:
  v27 = bed_GetpElem(a3, 0, &v43);
  if ((v27 & 0x80000000) != 0)
  {
    return v27;
  }

  v4 = bed_GetcElem(a3, &v42);
  if ((v4 & 0x80000000) == 0)
  {
    v28 = v42;
    if (v42 >= 2u)
    {
      v29 = 0;
      v30 = 1;
      while (1)
      {
        if (*(v43 + v29 + 84) == 7 && !*(v43 + v29 + 100))
        {
          v31 = *(v43 + v29 + 104);
          v32 = v31 > 7;
          v33 = (1 << v31) & 0xA4;
          if (!v32 && v33 != 0)
          {
            v35 = *(v43 + v29 + 72);
            if (v35)
            {
              heap_Free(*(v9 + 8), v35);
              *(v43 + v29 + 72) = 0;
              *(v43 + v29 + 80) = 0;
            }

            v4 = bed_Remove(a3, v30, 1u);
            if ((v4 & 0x80000000) != 0)
            {
              return v4;
            }

            log_OutText(*(v9 + 32), &modPP_3, 5, 0, "[UTOI] (deleted zero length entry, marker %d)", v30);
            v28 = --v42;
          }
        }

        ++v30;
        v29 += 64;
        if (v30 >= v28)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

  return v4;
}

uint64_t utoin_InsertRegions(_WORD **a1, uint64_t a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
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

  *__dst = 0;
  v5 = bed_GetpElem(v44, 0, __s);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v5 = bed_GetcElem(v7, __dst);
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_86;
  }

  v8 = *__dst;
  if (*__dst >= 2u)
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
            v8 = *__dst;
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
    v29 = cstdlib_strlen(__s);
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

      cstdlib_strcpy(__dst, __s);
      v5 = bed_Insert(v20, __dst, v29);
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

  v41 = cstdlib_strlen(__s);
  if (!v41 || (v42 = v41, v5 = bed_GetcElem(v20, &v49), (v5 & 0x80000000) == 0) && (v5 = bed_Goto(v20, v49), (v5 & 0x80000000) == 0) && (cstdlib_strcpy(__dst, __s), v5 = bed_Insert(v20, __dst, v42), (v5 & 0x80000000) == 0))
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
  v34[1] = *MEMORY[0x277D85DE8];
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
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  __b = 0u;
  v49 = 0u;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetTypeOfInput2;
  v49 = unk_26ECDC390;
  v50 = xmmword_26ECDC3A0;
  v51 = unk_26ECDC3B0;
  result = 2370838535;
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

  result = bed_GetpElem(a3, 0, &v56);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GetcElem(a3, &v55 + 1);
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

  result = bed_GetiElem(a3, &v55);
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
      cstdlib_memmove(v10 + 1, v10, 2 * v12);
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

      if ((utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, HIWORD(v55), v58, v47, v57, v27, v34, &v54, &v53, &v52) & 0x80000000) != 0)
      {
        goto LABEL_60;
      }

      LOWORD(v27) = v54 + v34;
      v28 += v54;
      ++v29;
      if (v53 == 1 && v29 < v44)
      {
        v35 = (v27 - v52);
        if ((bed_Goto(a2, v35) & 0x80000000) != 0 || (bed_Insert(a2, " ", 1) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55 + 1) & 0x80000000) != 0)
        {
          goto LABEL_60;
        }

        v36 = v56;
        if (HIWORD(v55) >= 2uLL)
        {
          v37 = v56[8] + v35;
          v38 = v56 + 24;
          v39 = HIWORD(v55) - 1;
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
        if ((bed_marker_InjectFixedRefMarker(a3, &__b) & 0x80000000) != 0 || (bed_GetpElem(a3, 0, &v56) & 0x80000000) != 0 || (bed_GetcElem(a3, &v55 + 1) & 0x80000000) != 0)
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

    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v32, v56, HIWORD(v55), v58, v47, v57, v27, v28, &v54, &v53, &v52);
  }

  else
  {
    utoin_LookUpSubWordsInNativeRegion(a1, a2, a3, a5, v59, v56, HIWORD(v55), v58, v47, v57, v27, v28, &v54, &v53, &v52);
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
                if (v16 && (cstdlib_memmove(v16, (v25 + (v12 - v13)), v14), (__src = heap_Calloc(*(*(a1 + 16) + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1)) != 0))
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

uint64_t utoin_LookUpSubWordsInNativeRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7, const char *a8, int a9, uint64_t a10, unsigned __int16 a11, unsigned __int16 a12, _WORD *a13, _DWORD *a14, _WORD *a15)
{
  v76 = a6;
  v75 = a7;
  v74 = a8;
  v73 = 0;
  if (!a6)
  {
    return 2370838535;
  }

  v20 = a15;
  v21 = a10;
  v22 = a9;
  __b = 0u;
  *__n = 0u;
  cstdlib_memset(&__b, 0, 0x20uLL);
  *a14 = 0;
  *a13 = 0;
  *a15 = 0;
  if (a9 == 3)
  {
    v23 = v76;
    v25 = *(a10 + 32);
    v24 = *(a10 + 36);
    v26 = v24 + v25;
    if (utoin_multiwordInLatinRegion(v76, v75, &v73 + 1, &v73, v25, v24 + v25))
    {
      v27 = *(a5 + 32);
      v28 = *(v23 + (HIWORD(v73) << 6) + 32) - v27;
      v29 = *(v23 + (v73 << 6) + 32);
      v30 = v29 - v27;
      if (*(a1 + 72) == 1)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", *(v23 + (HIWORD(v73) << 6) + 32), v29);
      }

      v69 = 1;
    }

    else
    {
      if (*(a1 + 72) == 1)
      {
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no multiword found for latin region %d and %d)", v25, v26);
      }

      v28 = 0;
      v30 = 0;
      v69 = 0;
    }

    v21 = a10;
    v22 = 3;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v69 = 0;
  }

  *&__b = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
  v32 = *(a1 + 16);
  if (!__b)
  {
    goto LABEL_18;
  }

  v67 = v30;
  __n[0] = heap_Calloc(*(v32 + 8), 1, *(a1 + 132) + *(a1 + 132) * *(a1 + 128) + 1);
  if (__n[0])
  {
    if (*(a1 + 72) == 1)
    {
      v33 = heap_Calloc(*(*(a1 + 16) + 8), *(a1 + 130) + 1, 1);
      if (!v33)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v33 = 0;
    }

    v65 = a2;
    v34 = a12;
    if (a11 >= a12)
    {
      goto LABEL_19;
    }

    v63 = v28;
    v61 = a5;
    v35 = a11;
    v68 = a3;
    v64 = a4;
    v62 = v21;
    while (1)
    {
      if (v22 == 3)
      {
        v36 = v21;
        v37 = cstdlib_strlen(v74);
        v38 = v35;
        if (v35 >= v34)
        {
          v40 = 1;
        }

        else
        {
          do
          {
            v39 = utf8_BelongsToSet(2, v74, v38, v37);
            v40 = v39 == 1;
            if (v39 != 1)
            {
              break;
            }

            v35 += utf8_determineUTF8CharLength(v74[v35]);
            v38 = v35;
          }

          while (v35 < v34);
        }

        if ((a11 == v35 || (a11 >= v35 ? (v43 = 1) : (v43 = v40), (v43 & 1) == 0 && utf8_BelongsToSet(2, v74, v38 - 1, v37) == 1)) && (v42 = v35 + utf8_determineUTF8CharLength(v74[v35]), v42 < v34))
        {
          v21 = v36;
          a4 = v64;
          while (1)
          {
            v41 = v42;
            if (utf8_BelongsToSet(2, v74, v42, v37))
            {
              break;
            }

            v42 = v41 + utf8_determineUTF8CharLength(v74[v41]);
            if (v42 >= v34)
            {
              goto LABEL_51;
            }
          }

          if (!v41)
          {
LABEL_51:
            v41 = v34;
            goto LABEL_52;
          }

          if (utf8_BelongsToSet(2, v74, v41, v37) != 1)
          {
            v41 = v34;
          }

LABEL_52:
          v20 = a15;
        }

        else
        {
          v41 = v34;
          v20 = a15;
          v21 = v36;
          a4 = v64;
        }
      }

      else
      {
        v41 = v34;
      }

      if (v69 == 1 && ((v44 = v41, v41 > v63) || v35 >= v63))
      {
        if (v41 >= v63)
        {
          v44 = v63;
        }

        if (v63 <= v35)
        {
          v41 = v67;
        }

        else
        {
          v41 = v44;
        }

        if (v63 > v35)
        {
          v45 = 0;
        }

        else
        {
          v35 = v63;
          v45 = 1;
        }
      }

      else
      {
        v45 = 0;
      }

      v46 = v41 - v35;
      if (v46 < 1)
      {
        goto LABEL_19;
      }

      if (v46 > *v20)
      {
        *v20 = v41 - v35;
      }

      if (!v74)
      {
        goto LABEL_19;
      }

      v66 = v45;
      if (*(a1 + 130) >= (v41 - v35))
      {
        v47 = (v41 - v35);
      }

      else
      {
        v47 = *(a1 + 130);
      }

      WORD4(__b) = v47;
      cstdlib_memmove(__b, &v74[v35], v47);
      v48 = WORD4(__b);
      if (*(a1 + 72) == 1)
      {
        cstdlib_strncpy(v33, __b, WORD4(__b));
        v33[WORD4(__b)] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (lookup User Dict for %s)", v33);
      }

      if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__b, v22 == 3, *(a1 + 130), *(a1 + 128), v70) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      if (v22 == 3)
      {
        v49 = HIDWORD(__b);
      }

      else
      {
        while (1)
        {
          v49 = HIDWORD(__b);
          v50 = WORD4(__b) < 2u || WORD4(__b) > v48;
          if (v50 || HIDWORD(__b) != 0)
          {
            break;
          }

          WORD4(__b) = utf8_GetPreviousUtf8Offset(__b, WORD4(__b));
          if ((utoin_LookUpUdctWord(*(a1 + 80), *(a1 + 88), *(a1 + 96), &__b, v22 == 3, *(a1 + 130), *(a1 + 128), v70) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }
      }

      if (v49 > 15)
      {
        if (v49 == 16)
        {
          if (!LH_stricmp(*(a1 + 24), "jpj") && HIDWORD(__b) != 2)
          {
LABEL_98:
            if (v22 == 3 && *(a1 + 72) == 1)
            {
              log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no (valid) User Dict entry found)");
            }

            if (v22 == 3)
            {
              v35 = v41;
            }

            v35 += utf8_determineUTF8CharLength(v74[v35]);
            v20 = a15;
            goto LABEL_114;
          }
        }

        else if (v49 != 43)
        {
          goto LABEL_98;
        }
      }

      else if (v49 == 2)
      {
        if (*__n[0] <= 0x7Eu)
        {
          HIDWORD(__b) = 3;
        }
      }

      else if (v49 != 3)
      {
        goto LABEL_98;
      }

      *a15 = 0;
      *a14 = 1;
      if (*(a1 + 72) == 1)
      {
        cstdlib_strncpy(v33, __n[0], LOWORD(__n[1]));
        v33[LOWORD(__n[1])] = 0;
        log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (found User Dict entry %s)", v33);
      }

      if (LH_stricmp(*(a1 + 24), v70))
      {
        v52 = v70;
      }

      else
      {
        v52 = 0;
      }

      if ((utoin_ReplaceWord(v65, v68, v35, &__b, 1, a4, v52) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      if ((bed_GetpElem(v65, 0, &v74) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      v53 = a4;
      v54 = LOWORD(__n[1]);
      v55 = WORD4(__b);
      *a13 = LOWORD(__n[1]) + *a13 - WORD4(__b);
      if ((bed_GetpElem(v68, 0, &v76) & 0x80000000) != 0 || (bed_GetcElem(v68, &v75) & 0x80000000) != 0)
      {
        goto LABEL_19;
      }

      v35 += v54;
      v34 = v54 + v34 - v55;
      a4 = v53;
      v20 = a15;
      v21 = v62;
LABEL_114:
      if (v66)
      {
        v56 = v76;
        v57 = *(v61 + 32);
        v58 = *(v21 + 32) + v34;
        if (utoin_multiwordInLatinRegion(v76, v75, &v73 + 1, &v73, v57 + v35, v58))
        {
          v59 = *(v56 + (HIWORD(v73) << 6) + 32);
          v63 = v59 - v57;
          v60 = *(v56 + (v73 << 6) + 32);
          v67 = v60 - v57;
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (multiword found for latin region %d and %d)", v59, v60);
          }

          v69 = 1;
        }

        else
        {
          if (*(a1 + 72) == 1)
          {
            log_OutText(*(*(a1 + 16) + 32), &modPP_3, 5, 0, "[UTOIN] (no further multiwords found in latin region %d and %d)", v57 + v35, v58);
          }

          v63 = 0;
          v67 = 0;
          v69 = 0;
        }

        a4 = v64;
        v20 = a15;
        v21 = v62;
      }

      if (v35 >= v34)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_17:
  v32 = *(a1 + 16);
LABEL_18:
  log_OutPublic(*(v32 + 32), &modPP_3, 1923, 0);
  v33 = 0;
LABEL_19:
  if (__b)
  {
    heap_Free(*(*(a1 + 16) + 8), __b);
    *&__b = 0;
  }

  if (__n[0])
  {
    heap_Free(*(*(a1 + 16) + 8), __n[0]);
    __n[0] = 0;
  }

  if (v33)
  {
    heap_Free(*(*(a1 + 16) + 8), v33);
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
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v31 = 0;
  __src = 0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  __b = 0u;
  v27 = 0u;
  *v25 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerSetLang;
  v27 = unk_26ECDC270;
  v28 = xmmword_26ECDC280;
  v29 = unk_26ECDC290;
  if (!a3)
  {
    return 2370838535;
  }

  result = bed_GetpElem(a2, 0, &v35);
  if ((result & 0x80000000) == 0)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v34);
    if ((result & 0x80000000) == 0)
    {
      v11 = *(v34 + 32);
      v12 = *(v35 + 32);
      v13 = *(v34 + 36);
      if (a4 && a5)
      {
        result = datac_RequestBlock(a4, 1012, 1u, v25);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        DWORD1(v27) = 36;
        result = addOrGetTNArgStr(*v25, a5, &v28 + 2, a4);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        *(&v27 + 1) = *(v34 + 24);
        *&v28 = *(v34 + 32);
        result = bed_Goto(a2, 1u);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_marker_InjectFixedRefMarker(a2, &__b);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v34 += 64;
      }

      result = bed_GetcElem(a3, &v33 + 1);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v14 = v11 - v12;
      if (HIWORD(v33))
      {
        if (v13 >= HIWORD(v33))
        {
          v15 = HIWORD(v33);
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

        result = bed_GetpElem(a1, 0, &v31);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v16 = 0;
        if (v15)
        {
          while (1)
          {
            v17 = (v31 + v14 + v16);
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

        result = bed_Insert(a1, __src, HIWORD(v33));
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_Remove(a3, 0, HIWORD(v33));
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

      v19 = HIWORD(v33);
      *(v34 + 36) = HIWORD(v33);
      result = bed_GetiElem(a2, &v30);
      if ((result & 0x80000000) == 0)
      {
        result = bed_GetcElem(a2, &v33);
        if ((result & 0x80000000) == 0)
        {
          v20 = v33;
          v21 = v30 + 1;
          if (v33 <= (v30 + 1))
          {
            return 0;
          }

          else
          {
            v22 = v35;
            v23 = HIWORD(v33);
            v24 = (v34 + 96);
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
          v9 = cstdlib_strlen(szWORD_END_0);
          result = bed_Insert(a4, szWORD_END_0, v9);
          if ((result & 0x80000000) == 0)
          {
            v10 = cstdlib_strlen(szWORD_BEG_0);
            result = bed_Insert(a4, szWORD_BEG_0, v10);
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
          cstdlib_memset(v15, 0, (v14 + 1));
          cstdlib_memmove(v16, (v23 + (v19 - v13)), v14);
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
  v97 = 0;
  v98[0] = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  __b = 0u;
  v91 = 0u;
  v89 = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v85 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerUndef;
  v91 = unk_26ECDC3E8;
  v92 = xmmword_26ECDC3F8;
  v93 = unk_26ECDC408;
  v12 = 2370838535;
  if (a1 && a2 && a3 && a4)
  {
    v13 = *(a1 + 16);
    if (!*(a1 + 164))
    {
      v14 = datac_RequestBlock(a6, 1012, 1u, &v89);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }
    }

    v14 = bed_GetpElem(a3, 0, v98);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v15 = *(v98[0] + 32);
    v83 = *(v98[0] + 24);
    v14 = bed_GetpElem(a2, 0, &v97);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v14 = bed_GetpElem(a3, 0xFFFFu, &v94);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    v82 = v15;
    v80 = a3;
    v81 = v13;
    v17 = *(v94 + 32);
    v16 = *(v94 + 36);
    v18 = heap_Alloc(*(v13 + 8), (v16 + 1));
    if (!v18)
    {
      return 2370838538;
    }

    v19 = v18;
    cstdlib_memset(v18, 0, (v16 + 1));
    cstdlib_memmove(v19, (v97 + (v17 - v82)), v16);
    v20 = 0;
    v21 = v89;
    if (!*(a1 + 164))
    {
      v20 = *(v89 + 16);
    }

    v79 = v20;
    *(a1 + 148) = 0x100000001;
    v22 = (*(*(a1 + 104) + 64))(*(a1 + 112), *(a1 + 120), v19, v16, v16, a2, v80, a4, a6, v21, 1012, &v88, a5, &v87, a1 + 136);
    v23 = v81;
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_101;
    }

    v12 = bed_GetcElem(a2, &v95);
    if ((v12 & 0x80000000) != 0 || !v95)
    {
      goto LABEL_102;
    }

    v22 = bed_GetpElem(a2, 0, &v96);
    if ((v22 & 0x80000000) != 0)
    {
LABEL_101:
      v12 = v22;
      goto LABEL_102;
    }

    v24 = *(v94 + 32);
    v76 = *(v94 + 24);
    v14 = bed_GetpElem(v80, 0, &v86);
    if ((v14 & 0x80000000) != 0)
    {
      return v14;
    }

    else
    {
      v25 = bed_GetcElem(v80, &v85);
      v26 = v25;
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      else
      {
        v70 = v19;
        v27 = *(v94 + 8);
        v28 = *(v94 + 16);
        if (*(v94 + 16))
        {
          v29 = *(v94 + 16);
          v30 = *(v94 + 8);
          do
          {
            *v30 += v83 - v76;
            v30 += 2;
            --v29;
          }

          while (v29);
        }

        v72 = v28;
        v31 = (a1 + 136);
        if (v88)
        {
          v32 = 0;
          v33 = v24 - v82;
          v34 = (v24 - v82);
          v35 = v88 + v34;
          v36 = v24 - v82;
          do
          {
            if (*(v96 + v36) == 16)
            {
              ++v32;
            }

            ++v36;
          }

          while (v35 > v36);
          v78 = 0;
          v37 = 0;
          v38 = 0;
          v84 = 0;
          v71 = (v27 + 4);
          v77 = 1;
          v39 = (v24 - v82);
          v40 = v16;
          v74 = v34;
          do
          {
            if (*(v96 + v33) != 16)
            {
LABEL_36:
              v43 = v38;
              goto LABEL_94;
            }

            if (v35 <= v33)
            {
LABEL_35:
              if (*(a1 + 164))
              {
                goto LABEL_36;
              }

              v44 = v26;
              v42 = cstdlib_strlen((*(v89 + 8) + (v79 + v84) * *(v89 + 2)));
              v26 = v44;
              v31 = (a1 + 136);
            }

            else
            {
              v41 = v33;
              while (*(v96 + v41) != 17)
              {
                if (v35 <= ++v41)
                {
                  if (*(v96 + v41) != 17)
                  {
                    goto LABEL_35;
                  }

                  break;
                }
              }

              v42 = v41 + ~v33;
            }

            if (!v42)
            {
              v43 = v38;
              v34 = v74;
              goto LABEL_94;
            }

            v45 = *(a1 + 144);
            v46 = v38 < v45;
            if (v38 && v45 > v38)
            {
              while (*(*v31 - 8 + 12 * v38) == 1 && *(*v31 + 12 * v38 + 4) == 1)
              {
                v38 = (v38 + 1);
                if (v45 <= v38)
                {
                  v46 = 0;
                  goto LABEL_47;
                }
              }

              v46 = 1;
            }

LABEL_47:
            v43 = (v38 + 1);
            if (v45 <= (v38 + 1))
            {
              v47 = v38 + 1;
            }

            else
            {
              v47 = *(a1 + 144);
            }

            v48 = v38;
            while (v45 > ++v48)
            {
              if (*(*v31 + 12 * v48 - 8) != 1 || *(*v31 + 12 * v48 + 4) != 1)
              {
                goto LABEL_56;
              }
            }

            v48 = v47;
LABEL_56:
            if (v46)
            {
              v49 = *v31;
              v50 = v40;
              if (v45 != v48)
              {
                v50 = *(v49 + 12 * v48);
              }

              v51 = *(v49 + 12 * v38);
              LOWORD(v49) = v50 - v51;
              v52 = v72;
              goto LABEL_66;
            }

            v52 = v72;
            if (*(a1 + 148) == 1)
            {
              if (v32 != 1)
              {
                v51 = 0;
                v43 = v38;
                LOWORD(v49) = v42 / *(a1 + 160);
                goto LABEL_66;
              }

              v51 = 0;
              LODWORD(v49) = *(v94 + 28);
            }

            else
            {
              v51 = 0;
              LOWORD(v49) = 0;
            }

            v43 = v38;
LABEL_66:
            v53 = v49;
            v54 = 0;
            if (v52)
            {
              v55 = v52;
              v56 = v71;
              do
              {
                v57 = *(v56 - 1);
                if (v57 > v51 + v49 + v37)
                {
                  break;
                }

                v58 = v37 + v51;
                if (v57 == v37 + v51)
                {
                  v37 += *v56;
                  v58 = v37 + v51;
                }

                if (v57 > v58 && v57 <= v58 + v49)
                {
                  v54 = *v56;
                }

                v56 += 2;
                --v55;
              }

              while (v55);
            }

            v75 = v54;
            v60 = v76 + v78 + v51 + v37;
            DWORD2(v91) = v60;
            HIDWORD(v91) = v49;
            v73 = v39 + v82;
            LODWORD(v92) = v39 + v82;
            DWORD1(v92) = v42;
            if (*(a1 + 164))
            {
              v61 = 0;
            }

            else
            {
              DWORD1(v91) = 39;
              DWORD2(v92) = v79 + v84;
              v61 = cstdlib_strlen((*(v89 + 8) + DWORD2(v92) * *(v89 + 2)));
              v62 = bed_marker_InjectFixedRefMarker(v80, &__b);
              if ((v62 & 0x80000000) != 0)
              {
                v12 = v62;
LABEL_106:
                v19 = v70;
                v23 = v81;
                goto LABEL_102;
              }
            }

            DWORD1(v91) = 41;
            *(&v92 + 1) = 0;
            v26 = bed_marker_InjectFixedRefMarker(v80, &__b);
            v63 = v77;
            if ((v26 & 0x80000000) != 0)
            {
              goto LABEL_105;
            }

            if (v87)
            {
              if (*v87 >= v77)
              {
                v64 = v87[v77];
              }

              else
              {
                log_OutText(*(v81 + 32), &modPP_3, 5, 0, "[UTOI] (missing POS for normalized word %d", v77);
                v64 = 0;
              }

              DWORD1(v91) = 14;
              DWORD2(v91) = v60;
              if (*(a1 + 148) == 1)
              {
                v65 = v53;
              }

              else
              {
                v65 = 0;
              }

              if (v92 == v82)
              {
                v66 = v82;
              }

              else
              {
                v66 = v73;
              }

              HIDWORD(v91) = v53;
              *&v92 = v66;
              DWORD2(v92) = v64;
              v26 = bed_marker_InjectFixedRefMarker(v80, &__b);
              if ((v26 & 0x80000000) != 0)
              {
                goto LABEL_105;
              }

              v78 += v65;
              v63 = (v77 + 1);
            }

            v31 = (a1 + 136);
            v40 = v16;
            v34 = v74;
            v77 = v63;
            v37 += v75;
            v84 += v61 + 1;
LABEL_94:
            v39 = ++v33;
            v35 = v34 + v88;
            v38 = v43;
          }

          while (v35 > v33);
        }

        if (*(a1 + 146) < 0x15u)
        {
LABEL_105:
          v12 = v26;
          goto LABEL_106;
        }

        v67 = v26;
        v23 = v81;
        v68 = heap_Realloc(*(v81 + 8), *v31, 120);
        v12 = 2370838538;
        v19 = v70;
        if (v68)
        {
          *(a1 + 136) = v68;
          *(a1 + 146) = 10;
          v12 = v67;
        }

LABEL_102:
        heap_Free(*(v23 + 8), v19);
        if (v87)
        {
          heap_Free(*(v23 + 8), v87);
        }
      }
    }
  }

  return v12;
}

uint64_t utoin_Transcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v10 = 2370838538;
  v84 = 0u;
  v85 = 0u;
  __b = 0u;
  v83 = 0u;
  v81 = 0;
  v80 = 0;
  cstdlib_memset(&__b, 0, 0x40uLL);
  __b = MarkerUndef;
  v83 = unk_26ECDC3E8;
  v84 = xmmword_26ECDC3F8;
  v85 = unk_26ECDC408;
  v11 = 2370838535;
  if (a1 && a2 && a3 && a4)
  {
    v12 = *(a1 + 16);
    v13 = bed_GetpElem(a3, 0, &v89);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a2, 0, &v88);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0, &v81);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetcElem(a3, &v80);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    v13 = bed_GetpElem(a3, 0xFFFFu, &v87);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    else
    {
      v14 = *(v89 + 32);
      v16 = *(v87 + 32);
      v15 = *(v87 + 36);
      v17 = *(v87 + 24);
      v78 = *(v87 + 40);
      v18 = *(v87 + 8);
      v19 = *(v87 + 16);
      if (*(v87 + 16))
      {
        v20 = *(v89 + 24) - v17;
        v21 = *(v87 + 16);
        v22 = *(v87 + 8);
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
        v74 = v18;
        v76 = v19;
        v77 = v17;
        v86 = v15 + 1;
        v23 = heap_Alloc(*(v12 + 8), (v15 + 1));
        if (v23)
        {
          v72 = v16;
          v24 = v16 - v14;
          v25 = v23;
          cstdlib_memset(v23, 0, v86--);
          *(a1 + 144) = 0;
          *(a1 + 148) = 0x100000001;
          v26 = utoin_TranscodeLatinText(a1, v12, v88 + v24, v15, v25, &v86, a1 + 136, v78);
          if ((v26 & 0x80000000) != 0)
          {
            v42 = v25;
          }

          else
          {
            __s = v25;
            if (!a5 || (v27 = cstdlib_strlen(szWORD_BEG_0), v26 = bed_Insert(a4, szWORD_BEG_0, v27), (v26 & 0x80000000) == 0))
            {
              v28 = *(v12 + 8);
              v29 = cstdlib_strlen(__s);
              v30 = heap_Alloc(v28, (v29 + 1));
              if (v30)
              {
                v31 = v30;
                v32 = cstdlib_strlen(__s);
                cstdlib_memset(v31, 0, v32 + 1);
                cstdlib_strcpy(v31, __s);
                v33 = cstdlib_strlen(v31);
                v34 = bed_Insert(a4, v31, v33);
                v71 = v31;
                if ((v34 & 0x80000000) != 0 || a5 && (v35 = cstdlib_strlen(szWORD_END_0), v34 = bed_Insert(a4, szWORD_END_0, v35), (v34 & 0x80000000) != 0) || (v34 = utoin_ReplaceCurrentRegion(a2, a3, a4, 0, 0), (v34 & 0x80000000) != 0))
                {
LABEL_94:
                  v10 = v34;
                }

                else
                {
                  if (v78 == 16 && v80 >= 2uLL)
                  {
                    v36 = 0;
                    v37 = v15 + v72;
                    v38 = (v81 + 100);
                    v39 = v80 - 1;
                    do
                    {
                      v40 = *(v38 - 1);
                      if (v40 > v37)
                      {
                        break;
                      }

                      v41 = *(v38 - 4) == 998 && v40 >= v72;
                      if (v41 && *v38 + v40 <= v37)
                      {
                        ++v36;
                      }

                      v38 += 16;
                      --v39;
                    }

                    while (v39);
                    v79 = v36 > 1u;
                  }

                  else
                  {
                    v79 = 0;
                  }

                  if (*(v87 + 40) != 43)
                  {
                    v43 = *(a1 + 144);
                    if (*(a1 + 144))
                    {
                      v44 = 0;
                      v45 = 0;
                      v46 = 0;
                      v75 = (v74 + 4);
                      while (v45 < v43)
                      {
                        v47 = *(a1 + 136);
                        v48 = v45;
                        if (*(v47 + 12 * v45 + 4) != 1)
                        {
                          v52 = 1;
                          goto LABEL_54;
                        }

                        v49 = (v47 + 12 * v45 + 16);
                        v50 = v72;
                        while (v43 - 1 != v48)
                        {
                          v51 = *v49;
                          v49 += 3;
                          ++v48;
                          if (v51 != 1)
                          {
                            v52 = v48 < v43;
                            goto LABEL_55;
                          }
                        }

                        v52 = 0;
                        v48 = v43;
LABEL_55:
                        v45 = (v48 + 1);
                        if (v43 <= (v48 + 1))
                        {
                          v53 = v48 + 1;
                        }

                        else
                        {
                          v53 = v43;
                        }

                        v54 = v48;
                        while (1)
                        {
                          v55 = ++v54;
                          if (v54 >= v43)
                          {
                            break;
                          }

                          if (*(*(a1 + 136) + 12 * v54 + 4) != 1)
                          {
                            goto LABEL_63;
                          }
                        }

                        v54 = v53;
LABEL_63:
                        if (v52)
                        {
                          v56 = *(a1 + 136);
                          v57 = (v56 + 12 * v48);
                          v52 = v57[4];
                          if (v54 == v43)
                          {
                            LOWORD(v58) = v86 - *(v56 + 12 * (v55 - 1) + 8);
                          }

                          else
                          {
                            LOWORD(v58) = *(v56 + 12 * v55 + 8) - v52;
                          }

                          v59 = *v57;
                          v60 = *(v56 + 12 * v48 + 2);
                          v58 = v58;
                        }

                        else
                        {
                          v59 = 0;
                          v60 = 0;
                          v58 = 0;
                          v45 = v48;
                        }

                        v61 = v76;
                        if (v76)
                        {
                          v62 = 0;
                          v63 = v75;
                          do
                          {
                            v64 = *(v63 - 1);
                            if (v64)
                            {
                              v65 = v64 > v58 + v59 + v44;
                            }

                            else
                            {
                              v65 = 0;
                            }

                            if (v65)
                            {
                              break;
                            }

                            v66 = v44 + v59;
                            if (v64 == v44 + v59)
                            {
                              v44 = *v63;
                              v66 = *v63 + v59;
                            }

                            if (v64 > v66 && v64 <= v66 + v58)
                            {
                              v62 = *v63;
                            }

                            v63 += 2;
                            --v61;
                          }

                          while (v61);
                        }

                        else
                        {
                          v62 = 0;
                        }

                        DWORD1(v83) = 41;
                        DWORD2(v83) = v59 + v77 + v44;
                        HIDWORD(v83) = v62 + v60;
                        LODWORD(v84) = v52 + v50;
                        DWORD1(v84) = v58;
                        if (!v79)
                        {
                          v34 = bed_marker_InjectFixedRefMarker(a3, &__b);
                          if ((v34 & 0x80000000) != 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        v13 = bed_GetpElem(a3, 0, &v81);
                        if ((v13 & 0x80000000) != 0)
                        {
                          return v13;
                        }

                        v11 = bed_GetcElem(a3, &v80);
                        if ((v11 & 0x80000000) != 0)
                        {
                          return v11;
                        }

                        v44 += v62;
                        ++v46;
                        v43 = *(a1 + 144);
                        if (v43 <= v46)
                        {
                          goto LABEL_99;
                        }
                      }

                      v52 = 0;
LABEL_54:
                      v48 = v45;
                      v50 = v72;
                      goto LABEL_55;
                    }
                  }

                  v11 = 0;
LABEL_99:
                  if (*(a1 + 146) >= 0x15u)
                  {
                    v70 = heap_Realloc(*(v12 + 8), *(a1 + 136), 120);
                    v69 = __s;
                    if (v70)
                    {
                      *(a1 + 136) = v70;
                      *(a1 + 146) = 10;
                      v10 = v11;
                    }

                    goto LABEL_96;
                  }

                  v10 = v11;
                }

                v69 = __s;
LABEL_96:
                heap_Free(*(v12 + 8), v69);
                v42 = v71;
                goto LABEL_97;
              }

              v42 = __s;
LABEL_97:
              heap_Free(*(v12 + 8), v42);
              return v10;
            }

            v42 = v25;
          }

          v10 = v26;
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

  return v11;
}

uint64_t utoin_TranscodeLatinText(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5, _WORD *a6, uint64_t a7, unsigned int a8)
{
  v61 = 0;
  result = 2370838535;
  if (a3 && a6 && *a6)
  {
    if (a4)
    {
      v55 = a1;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v58 = a5 - 1;
      v60 = a4;
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
            goto LABEL_33;
          }

          v20 = 0;
          v21 = 0;
          goto LABEL_34;
        }

        if (((v18 & 0xDF) - 65) < 0x1Au || (v18 != 32 ? (v22 = (v18 - 48) >= 0xAu) : (v22 = 0), !v22))
        {
          v21 = 0;
          a5[v15] = v18;
          goto LABEL_33;
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
              goto LABEL_33;
            }

            goto LABEL_26;
          }
        }

        if (v23 - 70 >= 3)
        {
          v61 = 0;
          v44 = utf8_determineUTF8CharLength(v18);
          if (*v17 == 227 && v17[1] == 128 && v17[2] == 128)
          {
            v45 = *(a2 + 8);
            v46 = cstdlib_strlen(" ");
            v61 = heap_Alloc(v45, (v46 + 1));
            cstdlib_strcpy(v61, " ");
          }

          else
          {
            result = (*(v55[13] + 80))(v55[14], v55[15], a3 + v16, v44, &v61);
            if ((result & 0x80000000) != 0)
            {
              return result;
            }
          }

          if (v61)
          {
            a5[v15] = *v61;
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v25 = 1;
          goto LABEL_89;
        }

LABEL_26:
        if (utf8_determineUTF8CharLength(v18) == 1)
        {
          v24 = *v17;
          if (v24 != 255)
          {
            v21 = 0;
LABEL_32:
            a5[v15] = v24;
LABEL_33:
            v20 = 1;
LABEL_34:
            v25 = 1;
            goto LABEL_35;
          }
        }

        if (!cstdlib_strcmp((a3 + v16), "§"))
        {
          v21 = 0;
          LOBYTE(v24) = *v17;
          goto LABEL_32;
        }

        v25 = 0;
        v61 = 0;
        v20 = 1;
LABEL_89:
        v21 = 1;
LABEL_35:
        v26 = utf8_determineUTF8CharLength(*a5);
        if (v15)
        {
          v27 = &a5[v15];
          v28 = *v27 != 32 && !utf8_BelongsToSet(5, a5, v14, v26);
          v29 = v58[v15];
          if (v29 == 32)
          {
LABEL_40:
            v30 = 1;
            goto LABEL_48;
          }

          if (v15 >= 3u && *(v27 - 3) == 227)
          {
            v30 = 0;
            if (*(v27 - 2) == 128 && v29 == 128)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
          v28 = 1;
        }

LABEL_48:
        v31 = v20 & v25;
        if (!v15)
        {
          v30 = 1;
        }

        if (v31 == 1 && v28 && v30 && a5[v15] != 17 && *(a7 + 16) == 1)
        {
          v32 = *(a7 + 8);
          v33 = *a7;
          if (v32 >= *(a7 + 10))
          {
            v34 = heap_Realloc(*(a2 + 8), v33, 12 * *(a7 + 10) + 121);
            if (!v34)
            {
              return 2370838538;
            }

            v33 = v34;
            *a7 = v34;
            *(a7 + 10) += 10;
            v32 = *(a7 + 8);
          }

          v35 = v33 + 12 * v32;
          *v35 = v16;
          *(v35 + 2) = 0;
          *(v35 + 4) = 0;
          *(v35 + 8) = v15;
          *(a7 + 8) = v32 + 1;
        }

        v36 = v61;
        if (v61)
        {
          v37 = 0;
        }

        else
        {
          v37 = v21;
        }

        if (v37)
        {
          v38 = 0;
        }

        else
        {
          if ((v21 & (v61 != 0)) == 0)
          {
            v36 = (a3 + v16);
          }

          v38 = utf8_determineUTF8CharLength(*v36);
          if (v38 >= 2u)
          {
            ++v15;
            v39 = v61;
            if ((v21 & (v61 != 0)) == 0)
            {
              v39 = (a3 + v16);
            }

            v40 = (v39 + 1);
            v41 = v38 - 1;
            while (1)
            {
              v42 = *v40++;
              a5[v15] = v42;
              if (!--v41)
              {
                break;
              }

              ++v15;
            }
          }
        }

        if (v21)
        {
          v38 = utf8_determineUTF8CharLength(*(a3 + v16));
        }

        if (v61)
        {
          heap_Free(*(a2 + 8), v61);
          v61 = 0;
        }

        v16 += v38;
        v15 += v31;
        v14 = v15;
        v13 = v16;
        a4 = v60;
        v43 = v16 < v60;
        if (v15 >= *a6 || v60 <= v16)
        {
          goto LABEL_91;
        }
      }
    }

    LOWORD(v15) = 0;
    v43 = 0;
LABEL_91:
    a5[v15] = 0;
    v47 = *(a7 + 8);
    if (*(a7 + 8))
    {
      v48 = 0;
      v49 = *a7;
      do
      {
        v50 = a4;
        if (v48 + 1 < v47)
        {
          v50 = *(v49 + 12 * (v48 + 1));
        }

        if (v50)
        {
          do
          {
            v51 = *(a3 - 1 + v50);
            if (v51 > 0x20 || ((1 << v51) & 0x100002600) == 0)
            {
              if (v50 < 3u)
              {
                goto LABEL_108;
              }

              v54 = a3 + v50;
              if (*(v54 - 3) != 227 || *(v54 - 2) != 128 || v51 != 128)
              {
                goto LABEL_108;
              }

              v53 = -3;
            }

            else
            {
              v53 = -1;
            }

            LOWORD(v50) = v50 + v53;
          }

          while (v50);
          LOWORD(v50) = 0;
        }

LABEL_108:
        *(v49 + 12 * v48 + 2) = v50 - *(v49 + 12 * v48);
        ++v48;
      }

      while (v48 != v47);
    }

    if (v43)
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

  v3 = &off_279DADCB0;
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