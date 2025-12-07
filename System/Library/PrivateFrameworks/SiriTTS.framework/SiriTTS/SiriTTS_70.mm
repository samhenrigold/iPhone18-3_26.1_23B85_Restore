uint64_t utois_MarkUnknownRegions(uint64_t a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25[0] = 7;
  v22 = 0;
  v23 = 0;
  v19 = MarkerSetTypeOfInput_0;
  *v20 = unk_1C37BEF20;
  *&v20[16] = xmmword_1C37BEF30;
  v21 = unk_1C37BEF40;
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

  result = bed_GetpElem(a2, 0, &v24);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = bed_GoForward(a2, bed_marker_IsOfType, v25);
  if ((result & 0x1FFF) != 0x14)
  {
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    result = bed_GetpElem(a2, 0xFFFFu, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (!v23)
    {
      goto LABEL_7;
    }

    v7 = v23[8];
    v8 = v24[8];
    v9 = v24[6];
    v10 = v7 >= v8;
    v11 = v7 - v8;
    if (v11 != 0 && v10)
    {
      *&v20[8] = v24[6];
      *&v20[12] = v23[6] - v9;
      *&v20[16] = v8;
      *&v20[20] = v11;
    }

    v5 = v24[9] + v8;
    v6 = v24[7] + v9;
    if (v23[8] > v8)
    {
      goto LABEL_8;
    }

    while (1)
    {
LABEL_20:
      v18 = 1;
      bed_GoForward(a2, bed_marker_IsAt, &v18);
      result = bed_GoForward(a2, bed_marker_IsOfType, v25);
      if ((result & 0x1FFF) == 0x14)
      {
        v12 = 0;
        v22 = 0;
      }

      else
      {
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v22);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v12 = v22;
        if (v22)
        {
          v13 = v22[8];
          v14 = v22[6];
          goto LABEL_27;
        }
      }

      v13 = v5;
      v14 = v6;
LABEL_27:
      v15 = v23[9];
      v16 = v15 + v23[8];
      if (v13 > v16)
      {
        v17 = v23[7];
        *&v20[8] = v17 + v23[6];
        *&v20[12] = v14 - (v17 + v23[6]);
        *&v20[16] = v16;
        *&v20[20] = v13 - (v15 + v23[8]);
        result = bed_marker_InjectFixedRefMarker(a2, &v19);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        if (!v22)
        {
          return 0;
        }

        result = bed_GetpElem(a2, 0xFFFFu, &v22);
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        v12 = v22;
      }

      result = 0;
      v23 = v12;
      if (!v12)
      {
        return result;
      }
    }
  }

  v23 = 0;
LABEL_7:
  *&v20[8] = *(v24 + 6);
  *&v20[24] = 0;
  v5 = v24[9] + *&v20[16];
  v6 = v24[7] + *&v20[8];
LABEL_8:
  result = bed_marker_InjectFixedRefMarker(a2, &v19);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v23)
  {
    result = bed_GetpElem(a2, 0xFFFFu, &v23);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    if (v23)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t utois_AlignMarkers(uint64_t a1)
{
  v24 = 0;
  result = datac_RequestBlock(a1, 1021, 1u, &v24);
  if ((result & 0x80000000) == 0)
  {
    v2 = *(v24 + 16);
    if (*(v24 + 16))
    {
      v3 = *(v24 + 8);
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
            v14 = 0;
            v18 = *v16;
            v19 = v16[1];
            v20 = v16[2];
            v21 = v16[3];
            v22 = v17[1];
            *v16 = *v17;
            v16[1] = v22;
            v23 = v17[3];
            v16[2] = v17[2];
            v16[3] = v23;
            v25 = v18;
            v26 = v19;
            v27 = v20;
            v28 = v21;
            *v17 = v18;
            v17[1] = v19;
            v17[2] = v20;
            v17[3] = v21;
          }
        }

        while (v14 < v2);
      }
    }
  }

  return result;
}

uint64_t sysdct_char_LookUp(void *a1, uint64_t a2, void *a3, _WORD *a4, int a5, uint64_t a6, const char *a7)
{
  LOBYTE(__c) = 0;
  v41 = 0;
  v40 = 0;
  v37 = (*(*a1 + 96))(a1[1], a1[2], "char", a2, &v41, &v40, &__c);
  if ((v37 & 0x80000000) != 0 || !v40)
  {
    return v37;
  }

  v9 = 0;
  v10 = "normal";
  while (1)
  {
    v11 = *(v41 + 8 * v9);
    v12 = strchr(v11, __c);
    v13 = strlen(v11);
    if (v12)
    {
      *v12 = 0;
    }

    v14 = strlen(v11);
    v15 = v14;
    if (v13 <= (v14 + 1))
    {
      v16 = 0;
      v19 = v14 + 1;
    }

    else
    {
      v16 = (*(v41 + 8 * v9) + (v14 + 1));
      v17 = strchr(v16, __c);
      if (v17)
      {
        *v17 = 0;
      }

      v18 = strlen(v16);
      v19 = v18 ? v15 + v18 + 2 : v15 + 2;
    }

    if (v13 <= v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = (*(v41 + 8 * v9) + v19);
      v21 = strchr(v20, __c);
      if (v21)
      {
        *v21 = 0;
      }

      v22 = strlen(v20);
      if (v22)
      {
        v19 += v22 + 1;
      }

      else
      {
        ++v19;
      }
    }

    if (v13 <= v19)
    {
      goto LABEL_35;
    }

    v23 = *(v41 + 8 * v9);
    v24 = (v23 + v19);
    v25 = strchr(v24, __c);
    if (v25)
    {
      *v25 = 0;
    }

    if (v23)
    {
      v39 = v16;
      v26 = a6;
      v27 = v10;
      v28 = (v23 + v19);
      do
      {
        v29 = strchr(v28, 44);
        v30 = v29;
        if (v29)
        {
          *v29 = 0;
        }

        v31 = strcmp(v28, a7);
        if (v30)
        {
          v28 = v30 + 1;
        }

        else
        {
          v28 = 0;
        }
      }

      while (v30 && v31);
      v32 = v31 == 0;
      if (!v31)
      {
        v32 = 1;
        v10 = v27;
        a6 = v26;
        v16 = v39;
        goto LABEL_39;
      }

      v10 = v27;
      a6 = v26;
      v16 = v39;
      if (*v24)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_35:
      v32 = 0;
    }

    if (strcmp(v10, a7))
    {
      goto LABEL_46;
    }

LABEL_39:
    if (!a5)
    {
      goto LABEL_51;
    }

    if (a6 == 1)
    {
      break;
    }

    if (!a6)
    {
      goto LABEL_49;
    }

LABEL_46:
    if (!v32 && ++v9 < v40)
    {
      continue;
    }

    return v37;
  }

  if (v20 && *v20 != 49 && *v20)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (!v16 || (v33 = strlen(v16)) == 0)
  {
LABEL_51:
    LOWORD(v33) = strlen(v11);
    v16 = v11;
  }

  *a4 = v33;
  memmove(a3, v16, v33 + 1);
  return v37;
}

uint64_t sysdct_wpcrf_LookUp_Chinese(void *a1, uint64_t a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v44 = 0;
  __memcpy_chk();
  __c_1[a3] = 0;
  v45 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", __c_1, &v44, &v45, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v45;
    if (v45)
    {
      v13 = v44;
      v14 = __c;
      while (1)
      {
        v15 = *v13;
        v16 = strchr(*v13, v14);
        if (v16)
        {
          break;
        }

        ++v13;
        if (!--v12)
        {
          return v11;
        }
      }

      v24 = v16;
      v25 = v16 - v15;
      if (v16 == v15 && v25 < 1)
      {
        a5 = __c_1;
      }

      else
      {
        if (v25 < 0)
        {
          LODWORD(v25) = v15 - v16;
        }

        strncat(a5, v15, v25);
      }

      strcat(a4, a5);
      v27 = v24 + 1;
      v28 = strchr(v24 + 1, __c);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = __c;
        do
        {
          *&a4[strlen(a4)] = 32;
          v32 = v29 - v27;
          if (v29 - v27 < 0)
          {
            v32 = v27 - v29;
          }

          v33 = v32;
          strncat(a4, v27, v32);
          if (!v30)
          {
            v34 = v33 == 1 && *v27 == 49;
            *a6 = v34;
          }

          v27 = v29 + 1;
          v29 = strchr(v29 + 1, v31);
          --v30;
        }

        while (v29);
      }
    }

    else
    {
      v17 = (*(*a1 + 96))(a1[1], a1[2], "wpcrf", "NULL", &v44, &v45, &__c);
      v11 = 2370838548;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v45;
        if (v45)
        {
          v19 = v17;
          v20 = v44;
          v21 = __c;
          while (1)
          {
            v22 = *v20;
            v23 = strchr(*v20, v21);
            if (v23)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              return v19;
            }
          }

          v35 = v23;
          v36 = v23 - v22;
          if (v23 == v22 && v36 < 1)
          {
            a5 = __c_1;
          }

          else
          {
            if (v36 < 0)
            {
              LODWORD(v36) = v22 - v23;
            }

            strncat(a5, v22, v36);
          }

          strcat(a4, a5);
          v38 = v35 + 1;
          v39 = strchr(v35 + 1, __c);
          if (v39)
          {
            v40 = v39;
            v41 = __c;
            do
            {
              *&a4[strlen(a4)] = 32;
              v42 = v40 - v38;
              if (v40 - v38 < 0)
              {
                v42 = v38 - v40;
              }

              strncat(a4, v38, v42);
              v38 = v40 + 1;
              v40 = strchr(v40 + 1, v41);
            }

            while (v40);
          }

          return v19;
        }
      }
    }
  }

  return v11;
}

uint64_t sysdct_wpdummy_LookUp_Chinese(void *a1, uint64_t a2, int a3, char *a4, char *a5, _BOOL4 *a6)
{
  __c = 0;
  v44 = 0;
  __memcpy_chk();
  __c_1[a3] = 0;
  v45 = 0;
  v11 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", __c_1, &v44, &v45, &__c);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v45;
    if (v45)
    {
      v13 = v44;
      v14 = __c;
      while (1)
      {
        v15 = *v13;
        v16 = strchr(*v13, v14);
        if (v16)
        {
          break;
        }

        ++v13;
        if (!--v12)
        {
          return v11;
        }
      }

      v24 = v16;
      v25 = v16 - v15;
      if (v16 == v15 && v25 < 1)
      {
        a5 = __c_1;
      }

      else
      {
        if (v25 < 0)
        {
          LODWORD(v25) = v15 - v16;
        }

        strncat(a5, v15, v25);
      }

      strcat(a4, a5);
      v27 = v24 + 1;
      v28 = strchr(v24 + 1, __c);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = __c;
        do
        {
          *&a4[strlen(a4)] = 32;
          v32 = v29 - v27;
          if (v29 - v27 < 0)
          {
            v32 = v27 - v29;
          }

          v33 = v32;
          strncat(a4, v27, v32);
          if (!v30)
          {
            v34 = v33 == 1 && *v27 == 49;
            *a6 = v34;
          }

          v27 = v29 + 1;
          v29 = strchr(v29 + 1, v31);
          --v30;
        }

        while (v29);
      }
    }

    else
    {
      v17 = (*(*a1 + 96))(a1[1], a1[2], "dummymap", "NULL", &v44, &v45, &__c);
      v11 = 2370838548;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = v45;
        if (v45)
        {
          v19 = v17;
          v20 = v44;
          v21 = __c;
          while (1)
          {
            v22 = *v20;
            v23 = strchr(*v20, v21);
            if (v23)
            {
              break;
            }

            ++v20;
            if (!--v18)
            {
              return v19;
            }
          }

          v35 = v23;
          v36 = v23 - v22;
          if (v23 == v22 && v36 < 1)
          {
            a5 = __c_1;
          }

          else
          {
            if (v36 < 0)
            {
              LODWORD(v36) = v22 - v23;
            }

            strncat(a5, v22, v36);
          }

          strcat(a4, a5);
          v38 = v35 + 1;
          v39 = strchr(v35 + 1, __c);
          if (v39)
          {
            v40 = v39;
            v41 = __c;
            do
            {
              *&a4[strlen(a4)] = 32;
              v42 = v40 - v38;
              if (v40 - v38 < 0)
              {
                v42 = v38 - v40;
              }

              strncat(a4, v38, v42);
              v38 = v40 + 1;
              v40 = strchr(v40 + 1, v41);
            }

            while (v40);
          }

          return v19;
        }
      }
    }
  }

  return v11;
}

uint64_t sysdct_char_LookUp_Chinese(void *a1, unsigned __int8 *a2, void *a3, _WORD *a4, int a5, uint64_t a6, const char *a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = utf8_determineUTF8CharLength(*a2);
  __memcpy_chk();
  v15[v13] = 0;
  *a4 = 0;
  return sysdct_char_LookUp(a1, v15, a3, a4, a5, a6, a7);
}

uint64_t sysdct_char_LookUp_Thai(void *a1, uint64_t a2, int a3, void *a4, _WORD *a5, int a6, uint64_t a7, const char *a8)
{
  v17 = *MEMORY[0x1E69E9840];
  __strcpy_chk();
  v16[a3] = 0;
  *a5 = 0;
  if (!a7 && a6 == 1 && v16[0] == 32)
  {
    v16[0] = -80;
  }

  return sysdct_char_LookUp(a1, v16, a4, a5, a6, a7, a8);
}

uint64_t getDictSolution(unsigned int a1, uint64_t a2, int __c, void *a4, unsigned __int16 *a5, const char *a6)
{
  v6 = a5;
  if (!a1)
  {
LABEL_24:
    *v6 = 0;
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = strchr(*(a2 + 8 * v14), __c);
    if (!v15)
    {
      v13 = 0;
      goto LABEL_26;
    }

    *v15 = 0;
    v16 = v15 + 1;
    if (!v15[1])
    {
      v17 = strcmp("normal", a6);
      if (!v17)
      {
        v13 = v14;
      }

      if (!v11)
      {
        v12 = v14;
      }

      v11 = 1;
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v18 = strchr(v16, 44);
      v19 = v18;
      if (v18)
      {
        *v18 = 0;
      }

      v20 = strcmp(v16, a6);
      if (!v20)
      {
        v13 = v14;
      }

      if (v19)
      {
        v16 = v19 + 1;
      }

      else
      {
        v16 = 0;
      }
    }

    while (v19 && v20);
    ++v14;
  }

  while (a1 > v14 && v20);
  if (!v20)
  {
LABEL_26:
    v21 = *(a2 + 8 * v13);
    v25 = strlen(v21);
    *a5 = v25;
    v23 = v25 + 1;
    v24 = a4;
    goto LABEL_27;
  }

  v6 = a5;
  if (v11 != 1)
  {
    goto LABEL_24;
  }

  v21 = *(a2 + 8 * v12);
  v22 = strlen(v21);
  *a5 = v22;
  v23 = v22 + 1;
  v24 = a4;
LABEL_27:
  memmove(v24, v21, v23);
  return 0;
}

uint64_t getDictBackTransSolution(void *a1, const char *a2, unsigned int a3, uint64_t a4, int __c, char *a6, unsigned __int16 *a7, const char *a8)
{
  v8 = a7;
  v59 = *MEMORY[0x1E69E9840];
  __c_1 = 0;
  __ca = 0;
  v53 = 0;
  v58[0] = 0;
  v57[0] = 0;
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    __s = 0;
    v16 = 0;
    v17 = 0;
    v50 = a3;
    while (1)
    {
      v18 = *(a4 + 8 * v12);
      if (v18)
      {
        v19 = 0;
        do
        {
          v20 = strchr(v18, __c);
          if (!v20)
          {
            break;
          }

          *v20 = 0;
          v18 = v20 + 1;
          switch(v19)
          {
            case 1u:
              v16 = v18;
              break;
            case 3u:
              __s = v18;
              break;
            case 7u:
              v15 = v18;
              if (v16)
              {
                goto LABEL_15;
              }

              goto LABEL_47;
          }
        }

        while (v19++ < 7);
      }

      if (v16)
      {
LABEL_15:
        if (*v16 && !strstr(v16, a8))
        {
          __s = 0;
          v16 = 0;
        }

        else
        {
          if (__s)
          {
            v22 = strchr(__s, 33);
            if (v22)
            {
              v23 = v22;
              *v22 = 0;
              while (1)
              {
                v24 = strchr(v23 + 1, 92);
                v25 = v24;
                if (v24)
                {
                  *v24 = 0;
                }

                v26 = strchr(v23 + 1, 40);
                if (v26)
                {
                  *v26 = 0;
                }

                *a6 = 0;
                strcat(a6, "backtrans_");
                strcat(a6, v23 + 1);
                __c_1 = -1;
                __ca = 0;
                v53 = 0;
                v17 = (*(*a1 + 96))(a1[1], a1[2], "fecfg", a6, &v53, &__c_1, &__ca);
                if ((v17 & 0x80000000) != 0)
                {
                  break;
                }

                if (__c_1)
                {
                  v27 = strchr(*v53, __ca);
                  if (v27)
                  {
                    *v27 = 0;
                  }

                  __strcat_chk();
                }

                v23 = v25;
                if (!v25)
                {
                  goto LABEL_30;
                }
              }

              *a7 = 0;
              return v17;
            }

LABEL_30:
            __strcat_chk();
          }

          if (*v16)
          {
            v14 = 1;
            if (strstr(v16, a8) && v15)
            {
LABEL_37:
              v48 = v15;
              v28 = atoi(v15);
              v29 = strlen(a2);
              if (v29)
              {
                v45 = v28;
                v46 = v13;
                v30 = 0;
                v31 = 0;
                do
                {
                  v32 = v31;
                  v33 = utf8_determineUTF8CharLength(a2[v30]);
                  v31 = v32 + 1;
                  v30 = (v33 + v30);
                }

                while (v30 < v29);
                v28 = v45;
                v34 = v45 >> 1;
                if ((v45 & 0xFFFE) == 0)
                {
                  v34 = 1;
                }

                if (!v32)
                {
                  v28 = v34;
                }

                v13 = v46;
              }

              v13 += v28;
              v14 = 1;
              v15 = v48;
            }
          }

          else
          {
            if (v15)
            {
              goto LABEL_37;
            }

            v14 = 1;
          }
        }
      }

      else
      {
LABEL_47:
        __s = 0;
      }

      if (++v12 == v50)
      {
        if (v14 && v13)
        {
          v36 = v13;
          v37 = a2;
          v38 = strlen(a2);
          v8 = a7;
          v39 = *a7;
          if (v38 + strlen(v58) + 5 < v39)
          {
            __c_3[0] = 0;
            __sprintf_chk(__c_3, 0, 0x80uLL, "%d", v36);
            v40 = strlen(a2);
            *a7 = v40;
            memmove(a6, a2, v40 + 1);
            *&a6[strlen(a6)] = 92;
            ++*a7;
            strcat(a6, v58);
            *a7 += strlen(v58);
            *&a6[strlen(a6)] = 92;
            ++*a7;
            strcat(a6, __c_3);
            v41 = __c_3;
LABEL_63:
            *v8 += strlen(v41);
            return v17;
          }
        }

        else
        {
          v8 = a7;
          if (!v14)
          {
            goto LABEL_53;
          }

          v39 = *a7;
          v37 = a2;
        }

        v42 = strlen(v37);
        v43 = strlen(v58);
        if (v42 + v43 + strlen(v57) + 3 >= v39)
        {
          goto LABEL_53;
        }

        *v8 = v42;
        memmove(a6, v37, v42 + 1);
        *&a6[strlen(a6)] = 92;
        ++*v8;
        strcat(a6, v58);
        *v8 += strlen(v58);
        *&a6[strlen(a6)] = 92;
        ++*v8;
        strcat(a6, v57);
        v41 = v57;
        goto LABEL_63;
      }
    }
  }

  v17 = 0;
LABEL_53:
  *v8 = 0;
  return v17;
}

uint64_t sysdct_word_LookUp(void *a1, const char *a2, _BYTE *a3, unsigned __int16 *a4, const char *a5)
{
  __c[0] = 0;
  v15 = 0;
  v14 = 0;
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
      strcpy(&__c[1], "word");
      v14 = 0;
      result = (*(*a1 + 96))(a1[1], a1[2], &__c[1], a2, &v15, &v14, __c);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      v11 = v14;
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v12 = 0;
      while (1)
      {
        strcpy(&__c[1], "word");
        LH_itoa(v12, v13, 0xAu);
        __strcat_chk();
        v14 = 0;
        result = (*(*a1 + 96))(a1[1], a1[2], &__c[1], a2, &v15, &v14, __c);
        if ((result & 0x80000000) == 0)
        {
          v11 = v14;
          if (v14)
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

    getDictSolution(v11, v15, __c[0], a3, a4, a5);
    return 0;
  }

  result = (*(*a1 + 240))(a1[1], a1[2], "g2p", a2, &v15, &v14, __c, *(a1 + 24), 0);
  if ((result & 0x80000000) == 0)
  {
    if (v14)
    {
      return getDictBackTransSolution(a1, a2, v14, v15, __c[0], a3, a4, a5);
    }
  }

  return result;
}

uint64_t sysdct_word_LookUp_Chinese(void *a1, uint64_t a2, unsigned int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  __memcpy_chk();
  v12[a3] = 0;
  return sysdct_word_LookUp(a1, v12, a4, a5, a6);
}

uint64_t sysdct_word_LookUp_Thai(void *a1, uint64_t a2, int a3, _BYTE *a4, unsigned __int16 *a5, const char *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  __strcpy_chk();
  v12[a3] = 0;
  return sysdct_word_LookUp(a1, v12, a4, a5, a6);
}

uint64_t wordm_sysdct_CharLookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, const char *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *(a4 + 4) = 0u;
    v14 = a4 + 4;
    *a4 = 0;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0;
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0u;
    v15 = a4 + 76;
    *(a4 + 92) = 0u;
    *(a4 + 108) = 0u;
    *(a4 + 124) = 0u;
    *(a4 + 140) = 0u;
    *(a4 + 156) = 0u;
    *(a4 + 172) = 0u;
    *(a4 + 188) = 0u;
    *(a4 + 204) = 0u;
    *(a4 + 220) = 0u;
    *(a4 + 236) = 0u;
    *(a4 + 252) = 0u;
    *(a4 + 332) = 0;
    *(a4 + 268) = 0u;
    *(a4 + 284) = 0u;
    *(a4 + 300) = 0u;
    *(a4 + 316) = 0u;
    if (a3 >= 0x40)
    {
      v16 = 64;
    }

    else
    {
      v16 = a3;
    }

    *(a4 + 334) = 0;
    __memmove_chk();
    __s[v16] = 0;
    if (a3)
    {
      if (v16 > a5)
      {
        __s[a5] = 0;
      }

      v17 = strlen(__s);
      if (utf8_ToLower(__s, 0, &v27) || utf8_BelongsToSet(0, __s, 0, v17) == 1 || utf8_BelongsToSet(6u, __s, 0, v17) == 1 || utf8_BelongsToSet(7u, __s, 0, v17) == 1 || utf8_BelongsToSet(0xAu, __s, 0, v17) == 1)
      {
        v18 = 3;
      }

      else if (utf8_BelongsToSet(0xCu, __s, 0, v17) == 1)
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      *a4 = v18;
      v19 = utf8_determineUTF8CharLength(__s[0]);
      memmove((a4 + 4), __s, v19);
      __s[v19] = 0;
      *(v14 + v19) = 0;
      *(a4 + 70) = v19;
      v27 = 256;
      if (sysdct_char_LookUp_Chinese(a1, __s, (a4 + 76), &v27, 1, a6, a7) || (v20 = v27) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(v15 + v27) = 0;
        *(a4 + 334) = v20;
        if (*(a4 + 76) == 35)
        {
          v21 = atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v21;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
        }
      }
    }

    else
    {
      v22 = 0;
      do
      {
        v23 = v22;
        v24 = a2[v22++];
      }

      while (v24 == 32);
      memmove((a4 + 4), a2, v23);
      return 0;
    }
  }

  return result;
}

uint64_t wordm_sysdct_CharLookup_Thai(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, const char *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    *(a4 + 4) = 0u;
    *a4 = 0;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0;
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0u;
    *(a4 + 92) = 0u;
    *(a4 + 108) = 0u;
    *(a4 + 124) = 0u;
    *(a4 + 140) = 0u;
    *(a4 + 156) = 0u;
    *(a4 + 172) = 0u;
    *(a4 + 188) = 0u;
    *(a4 + 204) = 0u;
    *(a4 + 220) = 0u;
    *(a4 + 236) = 0u;
    *(a4 + 252) = 0u;
    *(a4 + 332) = 0;
    *(a4 + 268) = 0u;
    *(a4 + 284) = 0u;
    *(a4 + 300) = 0u;
    *(a4 + 316) = 0u;
    if (a3 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = a3;
    }

    *(a4 + 334) = 0;
    __memmove_chk();
    v23[v14] = 0;
    if (a3)
    {
      if (v14 > a5)
      {
        v23[a5] = 0;
      }

      v15 = v23[0];
      if (v23[0] < 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      *a4 = v16;
      *(a4 + 4) = v15;
      *(a4 + 5) = 0;
      *(a4 + 70) = 1;
      v22 = 256;
      if (sysdct_char_LookUp_Thai(a1, v23, 1, (a4 + 76), &v22, 1, a6, a7) || (v17 = v22) == 0)
      {
        result = 0;
        *a4 = 0;
      }

      else
      {
        result = 0;
        *(a4 + 76 + v22) = 0;
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
      memmove((a4 + 4), a2, v19);
      return 0;
    }
  }

  return result;
}

uint64_t wordm_mapt2s(void *a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
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
    __memmove_chk();
    v16[v8] = 0;
    v9 = (*(*a1 + 96))(a1[1], a1[2], &v15, v16, &v13, &v12, &v14);
    if ((v9 & 0x80000000) == 0)
    {
      if (v12)
      {
        v10 = utf8_determineUTF8CharLength(**v13);
        if (v10 == v8)
        {
          memmove((a2 + v6), *v13, v10);
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
  v52 = *MEMORY[0x1E69E9840];
  v18 = 2350915594;
  v19 = *a8;
  v20 = *(a1 + 8);
  v21 = strlen(__s);
  v22 = heap_Calloc(v20, 1, (v21 + 1));
  if (!v22)
  {
    return v18;
  }

  v23 = v22;
  strcpy(v22, __s);
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
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(v34, 0, sizeof(v34));
    if (a11 == 1)
    {
      v26 = wordm_sysdct_Lookup_Thai(a2, (a3 + v24), v34, 0x16u, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(v34[0]) != 5 && LODWORD(v34[0]) != 2)
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

      v26 = wordm_sysdct_Lookup_Chinese(a2, (a3 + v24), (a10 - v24), v34, a12, v23);
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_24;
      }

      if (LODWORD(v34[0]) > 5 || ((1 << SLOBYTE(v34[0])) & 0x34) == 0)
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
    __strcpy_chk();
    *(v19 + 340 * *a9 + 74) = WORD3(v35);
    __strcpy_chk();
    *(v19 + 340 * *a9 + 338) = HIWORD(v51);
    v28 = *a9;
    v29 = v19 + 340 * *a9;
    v30 = DWORD2(v35);
    *(v29 + 4) = v34[0];
    *(v29 + 76) = v30;
    *a9 = v28 + 1;
LABEL_18:
    if (WORD3(v35))
    {
      v24 += WORD3(v35);
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
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  MarkerArgStr = marker_getMarkerArgStr(1u);
  v19 = bed_GetpElem(a5, 0, &v44);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v19 = bed_GetpElem(a5, 0xFFFFu, &v45);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v42 = a1;
  *v43 = a4;
  v20 = *(v45 + 32);
  v21 = *(v44 + 32);
  v19 = bed_GetpElem(a5, 0, &v47);
  if ((v19 & 0x80000000) != 0)
  {
    return v19;
  }

  v22 = bed_GetcElem(a5, &v46);
  if ((v22 & 0x80000000) == 0)
  {
    v40 = v20 - v21;
    v23 = v46;
    if (v46)
    {
      v24 = 0;
      v25 = (v47 + 40);
      while (*(v25 - 2) <= *(v45 + 32))
      {
        if (*(v25 - 5) == 21)
        {
          MarkerArgStr = (*(a6 + 8) + *v25);
        }

        ++v24;
        v25 += 16;
        if (v46 == v24)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v24) = v24;
    }

    else
    {
      LODWORD(v24) = 0;
    }

    if (v24 >= v46)
    {
LABEL_24:
      v26 = *v43 + v40;
      v33 = v40;
    }

    else
    {
      v36 = a2;
      v37 = a3;
      v38 = a8;
      v39 = a7;
      v26 = *v43 + v40;
      v27 = v47;
      v28 = v44;
      v29 = v24 << 6;
      LOWORD(v41) = v40;
      v30 = v24;
      do
      {
        if (v26 < (*(v27 + v29 + 32) - *(v28 + 32)))
        {
          break;
        }

        if (*(v27 + v29 + 20) == 21)
        {
          v31 = *(v27 + v29 + 40);
          if (strcmp(MarkerArgStr, (*(a6 + 8) + v31)))
          {
            v32 = marker_getMarkerArgStr(1u);
            if (strcmp(MarkerArgStr, v32))
            {
              v22 = GetInDomainSegmentation(v42, v36, v37, v40, v41, *(v47 + v29 + 32) - *(v44 + 32), MarkerArgStr, v39, v38, v43[0], a9, a10);
              if ((v22 & 0x80000000) != 0)
              {
                return v22;
              }
            }

            MarkerArgStr = (*(a6 + 8) + v31);
            v27 = v47;
            v28 = v44;
            v41 = *(v47 + v29 + 32) - *(v44 + 32);
            v23 = v46;
          }
        }

        ++v30;
        v29 += 64;
      }

      while (v30 < v23);
      a8 = v38;
      a7 = v39;
      a2 = v36;
      a3 = v37;
      v33 = v41;
    }

    if (v26 >= v33)
    {
      v34 = marker_getMarkerArgStr(1u);
      if (strcmp(MarkerArgStr, v34))
      {
        return GetInDomainSegmentation(v42, a2, a3, v40, v33, v26, MarkerArgStr, a7, a8, v43[0], a9, a10);
      }
    }
  }

  return v22;
}

uint64_t DoTHTLatin(uint64_t a1, void *a2, unsigned __int8 *a3, unsigned int a4, char **a5)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v7 = wordm_sysdct_CharLookup_Thai(a2, a3, a4, v11, 0x16u, 0, "normal");
  if (!v7)
  {
    v8 = strlen(&v11[4] + 12);
    v9 = heap_Alloc(*(a1 + 8), (v8 + 3));
    *a5 = v9;
    if (v9)
    {
      strcpy(v9, &v11[4] + 12);
    }
  }

  return v7;
}

uint64_t DoMaxWords(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, int a15, unsigned __int8 a16)
{
  v22 = a1;
  v23 = a14;
  v98 = *MEMORY[0x1E69E9840];
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v92 = 0;
  *(a14 + 8) = 0;
  *(v23 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v25 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v95);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  v87 = a8;
  v85 = a15;
  v27 = *(v95 + 36);
  if (a5 && a5 != v27)
  {
    *(v23 + 16) = 0;
  }

  v28 = a16;
  v29 = *(v23 + 16) ? "" : "- aborting alignment";
  log_OutText(*(v22 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a5, v27, v29);
  UTOITrace(v25, v22, a6, a7, "START of normalization");
  if (v85 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v22, a3, a4, a5, a7, a10, &v93, &v92, 0, v28);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v88 = v28;
  v30 = v87;
  if (a5)
  {
    v79 = a2;
    v78 = a6;
    v31 = 0;
    LOWORD(a6) = 0;
    v83 = 0;
    v32 = 0;
    v86 = a12;
    v80 = a11;
    v84 = a13;
    v81 = v22;
    v82 = v23;
    v33 = v88;
    do
    {
      memset(__dst, 0, sizeof(__dst));
      if (v85 == 1 && v92 > a6)
      {
        v34 = 0;
        a6 = a6;
        v35 = (v93 + 340 * a6);
        while (1)
        {
          v36 = *v35;
          if (v36 > v32)
          {
            break;
          }

          v35 += 170;
          if (v36 == v32)
          {
            v34 = a6;
          }

          ++a6;
          if (v36 == v32 || a6 >= v92)
          {
            if (v36 == v32)
            {
              memcpy(__dst, (v93 + 340 * v34 + 4), sizeof(__dst));
              goto LABEL_27;
            }

            break;
          }
        }

        v33 = v88;
      }

      v38 = wordm_sysdct_Lookup_Chinese(a3, &a4[v32], (a5 - v32), __dst, v33, "normal");
      if ((v38 & 0x80000000) != 0)
      {
LABEL_83:
        v41 = 0;
LABEL_84:
        v74 = v38;
        goto LABEL_99;
      }

LABEL_27:
      if (LODWORD(__dst[0]) <= 5 && ((1 << SLOBYTE(__dst[0])) & 0x34) != 0)
      {
        if (v84)
        {
          v38 = bed_Insert(v30, &szWORD_BEG_0, 1);
          if ((v38 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          ++*v86;
        }

        v39 = strlen(&__dst[4] + 12) + 1;
        v40 = heap_Alloc(*(v22 + 8), v39);
        if (!v40)
        {
          return 2350915594;
        }

        v41 = v40;
        bzero(v40, v39);
        strcpy(v41, &__dst[4] + 12);
        v42 = strlen(&__dst[4] + 12);
        v38 = bed_Insert(v87, v41, v42);
        if ((v38 & 0x80000000) != 0)
        {
          goto LABEL_84;
        }

        *v86 += strlen(&__dst[4] + 12);
        heap_Free(*(v22 + 8), v41);
        if (v84)
        {
          v38 = bed_Insert(v87, &szWORD_END_1, 1);
          if ((v38 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          ++*v86;
        }

        v38 = bed_GetcElem(v87, &v96);
        if ((v38 & 0x80000000) != 0)
        {
          goto LABEL_83;
        }

        v43 = *(a3 + 32);
        v44 = a10;
        v45 = &__dst[4] + 6;
        if (v43)
        {
          v45 = &__dst[20] + 14;
        }

        if (*(a10 + 18) < (*(a10 + 16) + 4 * *v45 + 5))
        {
          v38 = datac_RequestBlock(a9, v80, (*(a10 + 16) + 4 * *v45 + 5), &a10);
          if ((v38 & 0x80000000) != 0)
          {
            goto LABEL_83;
          }

          v44 = a10;
          v43 = *(a3 + 32);
        }

        v46 = *(v44 + 8);
        v47 = *(v44 + 16);
        v48 = *(v44 + 2);
        v49 = v46 + v48 * v47;
        v91 = 0;
        v90 = 0;
        if (v43)
        {
          v50 = HIWORD(__dst[20]);
          v51 = (v46 + v48 * v47);
          if (HIWORD(__dst[20]))
          {
            NextUtf8Offset = 0;
            v51 = (v46 + v48 * v47);
            do
            {
              if (*(&__dst[4] + NextUtf8Offset + 12) == 92)
              {
                break;
              }

              WCharFromUtf8 = utf8_GetWCharFromUtf8(&__dst[4] + 12, NextUtf8Offset, v50);
              LH_itoa(WCharFromUtf8, &v90, 0x10u);
              *v51 = HIWORD(v90);
              v51[1] = v90;
              v51 += 2;
              NextUtf8Offset = utf8_GetNextUtf8Offset(&__dst[4] + 12, NextUtf8Offset);
              v50 = HIWORD(__dst[20]);
            }

            while (HIWORD(__dst[20]) > NextUtf8Offset);
          }
        }

        else
        {
          v51 = (v46 + v48 * v47);
          if (WORD3(__dst[4]))
          {
            v55 = 0;
            v51 = (v46 + v48 * v47);
            do
            {
              v56 = v55 + v31;
              if (v55 + v31 >= a5)
              {
                break;
              }

              v57 = utf8_GetWCharFromUtf8(a4, v55 + v31, a5);
              LH_itoa(v57, &v90, 0x10u);
              *v51 = HIWORD(v90);
              v51[1] = v90;
              v51 += 2;
              v55 = (utf8_GetNextUtf8Offset(a4, v56) - v31);
            }

            while (v55 < WORD3(__dst[4]));
          }
        }

        v54 = 0;
        *v51 = 0;
        *(a10 + 16) += v51 - v49 + 1;
        v22 = v81;
        v23 = v82;
        v30 = v87;
      }

      else
      {
        log_OutText(*(v22 + 32), v79, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v31, WORD3(__dst[4]));
        v54 = 1;
      }

      v33 = v88;
      if (*(v23 + 16) == 1)
      {
        v58 = *(v23 + 8);
        v59 = *v23;
        if (v58 >= *(v23 + 10))
        {
          v60 = heap_Realloc(*(v22 + 8), v59, 12 * *(v23 + 10) + 121);
          if (!v60)
          {
            v41 = 0;
            v74 = 2350915594;
            goto LABEL_99;
          }

          v59 = v60;
          *v23 = v60;
          *(v23 + 10) += 10;
          v58 = *(v23 + 8);
          v33 = v88;
        }

        v61 = v58;
        v62 = v59 + 12 * v58;
        *v62 = v83;
        *(v62 + 2) = 0;
        v63 = WORD3(__dst[4]);
        if (v54)
        {
          *(v59 + 12 * v61 + 4) = 1;
          v33 = v88;
        }

        v83 += v63;
        *(v23 + 8) = v61 + 1;
      }

      else
      {
        v63 = WORD3(__dst[4]);
      }

      if (v63)
      {
        v32 += v63;
      }

      else
      {
        v32 = a5;
      }

      v31 = v32;
    }

    while (v32 < a5);
    v64 = bed_GetcElem(v30, &v96);
    if ((v64 & 0x80000000) != 0)
    {
      goto LABEL_86;
    }

    if (v96)
    {
      v25 = LogLevel > 4;
      UTOISubTrace(v25, v22, v30, "replacement string");
      a6 = v78;
      if (*(v23 + 16) != 1)
      {
        goto LABEL_96;
      }

      v64 = bed_GetpElem(v30, 0, &v94);
      if ((v64 & 0x80000000) == 0)
      {
        if (v96)
        {
          v65 = 0;
          v66 = 0;
          v67 = 1;
          v68 = v94;
          do
          {
            if (*(v68 + v65) == 16)
            {
              v69 = *(v23 + 8);
              if (v66 >= v69)
              {
LABEL_89:
                log_OutText(*(v22 + 32), v79, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v67);
                v73 = 0;
                goto LABEL_90;
              }

              v70 = v66;
              v71 = (*v23 + 12 * v66 + 4);
              while (1)
              {
                v72 = *v71;
                v71 += 3;
                if (v72 != 1)
                {
                  break;
                }

                if (v69 == ++v70)
                {
                  goto LABEL_89;
                }
              }

              *(*v23 + 12 * v70 + 8) = v65;
              ++v67;
              v66 = v70 + 1;
            }

            ++v65;
          }

          while (v65 < v96);
        }

        v73 = 1;
LABEL_90:
        if (LogLevel >= 5 && *(v82 + 8))
        {
          v75 = 0;
          v76 = 0;
          do
          {
            log_OutText(*(v22 + 32), v79, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v76++, *(*v82 + v75), *(*v82 + v75 + 8), *(*v82 + v75 + 4));
            v75 += 12;
          }

          while (v76 < *(v82 + 8));
        }

        v30 = v87;
        v23 = v82;
        v25 = LogLevel > 4;
        if (v73)
        {
          *(v82 + 12) = 0;
        }

        goto LABEL_96;
      }

LABEL_86:
      v74 = v64;
      goto LABEL_98;
    }

    log_OutText(*(v22 + 32), v79, 5, 0, "[UTOI] deleting region, no replacement text found");
    a6 = v78;
    v25 = LogLevel > 4;
  }

LABEL_96:
  v74 = utoin_IncrReplaceCurrentRegion(a6, a7, v30, a5, v23);
  if ((v74 & 0x80000000) == 0)
  {
    UTOITrace(v25, v22, a6, a7, "END of normalization");
  }

LABEL_98:
  v41 = 0;
LABEL_99:
  if (v92)
  {
    heap_Free(*(v22 + 8), v93);
    v93 = 0;
  }

  if (v41)
  {
    heap_Free(*(v22 + 8), v41);
  }

  return v74;
}

uint64_t DoSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, unsigned __int8 a12)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v20 = strlen(&v26[4] + 12) + 3;
      v21 = heap_Alloc(*(a1 + 8), v20);
      if (!v21)
      {
        return 2350915594;
      }

      v22 = v21;
      bzero(v21, v20);
      if (i)
      {
        strcpy(v22, &v26[4] + 12);
      }

      else
      {
        *v22 = 32;
        strcat(v22, &v26[4] + 12);
      }

      *&v22[strlen(v22)] = 32;
      v23 = strlen(v22);
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

uint64_t DoLatin(uint64_t a1, void *a2, uint64_t a3, int a4, char **a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = 256;
  *__s = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  __strncpy_chk();
  v31[a4] = 0;
  v9 = sysdct_char_LookUp_Chinese(a2, v31, __s, &v13, 0, 0, "normal");
  if ((v9 & 0x80000000) == 0)
  {
    if (v13)
    {
      v10 = strlen(__s);
      v11 = heap_Calloc(*(a1 + 8), 1, (v10 + 1));
      *a5 = v11;
      if (v11)
      {
        strcpy(v11, __s);
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

  return v9;
}

uint64_t wordm_sysdct_Lookup_Chinese(void *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, const char *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  result = 2370838535;
  if (a1 && a2 && a4)
  {
    v26 = 0;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    *(a4 + 4) = 0u;
    *a4 = 0;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 52) = 0u;
    *(a4 + 68) = 0;
    *(a4 + 70) = 0;
    *(a4 + 72) = 0;
    *(a4 + 76) = 0u;
    v10 = (a4 + 76);
    *(a4 + 92) = 0u;
    *(a4 + 108) = 0u;
    *(a4 + 124) = 0u;
    *(a4 + 140) = 0u;
    *(a4 + 156) = 0u;
    *(a4 + 172) = 0u;
    *(a4 + 188) = 0u;
    *(a4 + 204) = 0u;
    *(a4 + 220) = 0u;
    *(a4 + 236) = 0u;
    *(a4 + 252) = 0u;
    *(a4 + 332) = 0;
    *(a4 + 268) = 0u;
    *(a4 + 284) = 0u;
    *(a4 + 300) = 0u;
    *(a4 + 316) = 0u;
    if (a3 >= 0x40)
    {
      v11 = 64;
    }

    else
    {
      v11 = a3;
    }

    *(a4 + 334) = 0;
    if (a3 && a5)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v15 += utf8_determineUTF8CharLength(a2[v15]);
        ++v14;
      }

      while (v11 > v15 && v14 < a5);
      __memmove_chk();
      __src[v15] = 0;
      if (v15)
      {
        *a4 = 2;
        v25 = 256;
        v17 = v15;
        while (1)
        {
          result = sysdct_word_LookUp_Chinese(a1, __src, v17, v27, &v25, a6);
          v18 = v25;
          if (result || v25 != 256)
          {
            break;
          }

          v26 = (v17 - 1);
          utf8_GetPreviousValidUtf8Offset(__src, &v26);
          v17 = v26;
          v18 = 256;
          v25 = 256;
          if ((v26 - 1) >= v15)
          {
            goto LABEL_28;
          }
        }

        if ((result & 0x80000000) != 0)
        {
          return result;
        }

LABEL_28:
        if ((v17 - 1) < v15)
        {
          *(v27 + v18) = 0;
          __strcpy_chk();
          *(a4 + 72) = 16;
          *(a4 + 334) = v25;
          __src[v17] = 0;
          __strcpy_chk();
          result = 0;
          *(a4 + 70) = v17;
          return result;
        }

        v22 = utf8_determineUTF8CharLength(*a2);
        memmove((a4 + 4), __src, v22);
        *(a4 + 4 + v22) = 0;
        *(a4 + 70) = v22;
        v25 = 256;
        if (sysdct_char_LookUp_Chinese(a1, __src, (a4 + 76), &v25, 0, 0, a6) || (v23 = v25, v10[v25] = 0, *(a4 + 334) = v23, !v23))
        {
          result = 0;
          *a4 = 0;
          return result;
        }

        if (*v10 == 35 && *(a4 + 77))
        {
          v24 = atoi((a4 + 77));
          result = 0;
          *(a4 + 76) = v24;
          *(a4 + 77) = 0;
          *(a4 + 334) = 1;
          return result;
        }

        return 0;
      }
    }

    else
    {
      __src[0] = 0;
    }

    v19 = 0;
    do
    {
      v20 = v19;
      v21 = a2[v19++];
    }

    while (v21 == 32);
    memmove((a4 + 4), a2, v20);
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

uint64_t wparser_impl_maxwords_Normalize(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, _WORD *a12, int a13, uint64_t a14, uint64_t a15)
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

uint64_t wparser_impl_maxwords_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_maxwords_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
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
  v4 = atoi(v6);
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
  v189 = *MEMORY[0x1E69E9840];
  v169 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v165 = 0;
  *(a14 + 8) = 0;
  *(v22 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(a1[4]);
  v24 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a7, 0xFFFFu, &v168);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  v152 = a8;
  v26 = a16;
  v27 = a15;
  v28 = *(v168 + 36);
  if (a5 && a5 != v28)
  {
    *(v22 + 16) = 0;
  }

  v29 = *(v22 + 16) ? "" : "- aborting alignment";
  log_OutText(v21[4], a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a5, v28, v29);
  UTOITrace(v24, v21, a6, a7, "START of normalization");
  if (v27 == 1)
  {
    DomainSegmentations = getDomainSegmentations(v21, a3, a4, a5, a7, a10, &v166, &v165, 0, v26);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v149 = LogLevel;
  v30 = 2583699466;
  log_OutText(v21[4], a2, 5, 0, "[DAG]: Entering");
  v31 = heap_Calloc(v21[1], 1, 16);
  if (v31)
  {
    v32 = v31;
    v150 = v26;
    v148 = v24;
    if (a5)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        ++v34;
        v33 = (utf8_determineUTF8CharLength(a4[v33]) + v33);
      }

      while (v33 < a5);
    }

    else
    {
      v34 = 0;
    }

    *(v32 + 8) = v34;
    *(v32 + 12) = 13285840;
    v35 = heap_Calloc(v21[1], v34 + 1, 24);
    *v32 = v35;
    if (!v35)
    {
      return 2583699466;
    }

    if (((v34 + 1) & 0xFFFE) != 0)
    {
      v36 = (v34 + 1);
    }

    else
    {
      v36 = 1;
    }

    bzero(v35, 24 * v36);
    v156 = a5;
    v164 = a2;
    if (a5)
    {
      v146 = v22;
      v141 = a6;
      v143 = a7;
      v157 = 0;
      v37 = 0;
      v38 = a5;
      v39 = a4;
      v160 = v21;
      do
      {
        LOWORD(v40) = 0;
        v41 = 0;
        v42 = &v39[v37];
        __dst = v37;
        v43 = v38 - v37;
        v44 = (v38 - v37);
        while (v40 < v44)
        {
          v40 = utf8_determineUTF8CharLength(v42[v40]) + v40;
          if (v26 == ++v41)
          {
            v41 = v26;
            if (v40)
            {
              goto LABEL_28;
            }

            break;
          }
        }

        LOWORD(v40) = v43;
LABEL_28:
        v171 = 0;
        v188 = 0;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        *__s = 0u;
        v173 = 0u;
        v170 = 256;
        if (!v40 || v43 < v40)
        {
          goto LABEL_181;
        }

        v45 = 0;
        v46 = 1;
        v47 = v40;
        do
        {
          v48 = sysdct_word_LookUp_Chinese(a3, v42, v47, __s, &v170, "");
          if ((v48 & 0x80000000) != 0)
          {
            return v48;
          }

          if (v170 != 256)
          {
            v49 = strrchr(__s, 92);
            if (v49)
            {
              v46 = (atoi(v49 + 1) + 1);
            }

            if (v41)
            {
              dag_insert_edge_0(v160, v164, v32, v157, v157 + v41, v46, 0);
              ++v45;
            }
          }

          v171 = (v47 - 1);
          utf8_GetPreviousValidUtf8Offset(v42, &v171);
          v170 = 256;
          if (v41)
          {
            --v41;
          }

          else
          {
            v41 = 0;
          }

          if (v43 < v171)
          {
            break;
          }

          v47 = v171;
        }

        while ((v171 - 1) < v40);
        v21 = v160;
        v39 = a4;
        v26 = v150;
        if (!v45)
        {
LABEL_181:
          v48 = sysdct_char_LookUp_Chinese(a3, v42, __s, &v170, 0, 0, "normal");
          if (!v48)
          {
            v50 = heap_Calloc(v21[1], 1, v170 + 1);
            if (!v50)
            {
              v48 = 2583699466;
              goto LABEL_95;
            }

            v51 = v50;
            v52 = v170;
            if (v170)
            {
              v53 = v170 - 1;
              v54 = v164;
              if (v170 == 1)
              {
                v55 = 1;
              }

              else
              {
                while (__s[v53] == 92)
                {
                  v170 = --v52;
                  if (!--v53)
                  {
                    v52 = 1;
                    break;
                  }
                }

                v55 = v52;
              }
            }

            else
            {
              v55 = 0;
              v54 = v164;
            }

            memcpy(v50, __s, v55);
            *(v51 + v170) = 0;
            dag_insert_edge_0(v21, v54, v32, v157, v157 + 1, 1, v51);
            v48 = 0;
          }
        }

        v56 = utf8_determineUTF8CharLength(*v42);
        v37 = __dst + v56;
        ++v157;
        v38 = v156;
      }

      while (v156 > (__dst + v56));
      a6 = v141;
      a7 = v143;
      v22 = v146;
      a2 = v164;
      if ((v48 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_95:
      heap_Free(v21[1], v32);
      return v48;
    }

LABEL_56:
    log_OutText(v21[4], a2, 5, 0, "[DAG]: searching the heaviest edge from all possible paths");
    v57 = *v32;
    if (!*v32)
    {
      dag_free(v21, v32);
      log_OutText(v21[4], a2, 5, 0, "[DAG]: Failed search the path, some error");
      return 2583699462;
    }

    v147 = v22;
    v142 = a6;
    v144 = a7;
    v58 = *(v32 + 8);
    if ((v58 & 0x80000000) == 0)
    {
      v59 = v58 + 1;
      v60 = (v57 + 16);
      do
      {
        *v60 = -2147483647;
        v60 += 3;
        --v59;
      }

      while (v59);
    }

    *(v57 + 16) = 0xFFFFFFFF00000000;
    log_OutText(v21[4], a2, 5, 0, "[DAG]: All possible path, <vertex_from: vertex_to>: weight, accumulated weight");
    if (v58 >= 1)
    {
      v61 = 0;
      v62 = *v32;
      do
      {
        for (i = *(v62 + 24 * v61); i; i = *i)
        {
          v64 = *(i + 3);
          v65 = *(i + 4) + *(v62 + 24 * v61 + 16);
          log_OutText(v21[4], v164, 5, 0, "<%d: %d>: %d, %d", v61, v64, *(i + 4), v65);
          v62 = *v32;
          v66 = *v32 + 24 * v64;
          v68 = *(v66 + 16);
          v67 = (v66 + 16);
          if (v65 > v68)
          {
            *v67 = v65;
            v69 = v62 + 24 * v64;
            *(v69 + 20) = v61;
            *(v69 + 8) = i[3];
          }
        }

        ++v61;
      }

      while (v61 != v58);
    }

    v70 = heap_Calloc(v21[1], 1, 24);
    if (!v70)
    {
      return 2583699466;
    }

    v71 = v70;
    v72 = heap_Calloc(v21[1], (v58 + 2), 4);
    *v71 = v72;
    v30 = 2583699466;
    if (v72)
    {
      v73 = heap_Calloc(v21[1], (v58 + 2), 8);
      *(v71 + 8) = v73;
      v74 = *v71;
      if (v73)
      {
        *(v71 + 16) = 0;
        *v74 = v58;
        v75 = a4;
        if ((v58 & 0x80000000) == 0)
        {
          v76 = 0;
          do
          {
            ++v76;
            v77 = *v32 + 24 * v58;
            v78 = *(v77 + 8);
            LODWORD(v58) = *(v77 + 20);
            v74[v76] = v58;
            *(*(v71 + 8) + 8 * v76) = v78;
          }

          while ((v58 & 0x80000000) == 0);
          *(v71 + 16) = v76;
        }

        log_OutText(v21[4], v164, 5, 0, "[DAG]: Leaving");
        v79 = (*(v71 + 16) - 1);
        v80 = v156;
        v151 = heap_Calloc(v21[1], v79, 336);
        v145 = v79;
        if (v151)
        {
          if (v79)
          {
            v81 = 0;
            v82 = 0;
            v161 = v21;
            v139 = v71;
            do
            {
              v83 = v151 + 336 * v81;
              *(v83 + 4) = 0u;
              __dsta = (v83 + 4);
              *v83 = 2;
              *(v83 + 20) = 0u;
              *(v83 + 36) = 0u;
              *(v83 + 52) = 0u;
              *(v83 + 68) = 0;
              *(v83 + 70) = 0;
              *(v83 + 72) = 16;
              *(v83 + 76) = 0u;
              *(v83 + 92) = 0u;
              *(v83 + 108) = 0u;
              *(v83 + 124) = 0u;
              *(v83 + 140) = 0u;
              *(v83 + 156) = 0u;
              *(v83 + 172) = 0u;
              *(v83 + 188) = 0u;
              *(v83 + 204) = 0u;
              *(v83 + 220) = 0u;
              *(v83 + 236) = 0u;
              *(v83 + 252) = 0u;
              *(v83 + 332) = 0;
              *(v83 + 268) = 0u;
              *(v83 + 284) = 0u;
              *(v83 + 300) = 0u;
              *(v83 + 316) = 0u;
              *(v83 + 334) = 0;
              v84 = *(*v71 + 4 * (v79 - v81 - 1)) - *(*v71 + 4 * (v79 - v81));
              v158 = v82;
              v85 = &v75[v82];
              v86 = strlen(v85);
              v87 = 0;
              v88 = 0;
              while (1)
              {
                v89 = v88;
                if (v88 >= v86)
                {
                  break;
                }

                v90 = utf8_determineUTF8CharLength(v85[v88]);
                v88 = v90 + v89;
                if (v84 == ++v87)
                {
                  v91 = v90 + v89;
                  if (v90 + v89)
                  {
                    goto LABEL_82;
                  }

                  break;
                }
              }

              v91 = v86;
LABEL_82:
              *(v83 + 70) = v91;
              memcpy(__dsta, v85, v91);
              *(__dsta + *(v83 + 70) + 1) = 0;
              v71 = v139;
              v79 = v145;
              if (*(*(v139 + 8) + 8 * (v145 - v81)))
              {
                __strcat_chk();
                *(v83 + 334) = strlen((v83 + 76)) + 1;
                v21 = v161;
                heap_Free(v161[1], *(*(v139 + 8) + 8 * (v145 - v81)));
              }

              else
              {
                __strcpy_chk();
                *(v83 + 334) = *(v83 + 70) + 1;
                v21 = v161;
              }

              v75 = a4;
              v82 = v91 + v158;
              ++v81;
            }

            while (v81 != v145);
            v30 = 0;
            v80 = v156;
          }

          else
          {
            v30 = 0;
          }
        }

        heap_Free(v21[1], *v71);
        heap_Free(v21[1], *(v71 + 8));
        heap_Free(v21[1], v71);
        dag_free(v21, v32);
        if (!v151)
        {
          return v30;
        }

        if (v79)
        {
          v96 = 0;
          v97 = 0;
          __dstb = 0;
          v98 = 0;
          v99 = a12;
          v140 = a11;
          v30 = 2350915594;
          v159 = a13;
          do
          {
            v100 = v151 + 336 * v96;
            if (*v100 > 5u || ((1 << *v100) & 0x34) == 0)
            {
              log_OutText(v21[4], v164, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v97, *(v100 + 70));
              __dstb = 1;
            }

            else
            {
              if (v159)
              {
                v102 = bed_Insert(v152, &szWORD_BEG_1, 1);
                if ((v102 & 0x80000000) != 0)
                {
                  goto LABEL_158;
                }

                ++*v99;
              }

              v103 = strlen((v100 + 76)) + 1;
              v104 = heap_Alloc(v21[1], v103);
              if (!v104)
              {
                return 2350915594;
              }

              v105 = v104;
              bzero(v104, v103);
              strcpy(v105, (v100 + 76));
              v106 = strlen((v100 + 76));
              v102 = bed_Insert(v152, v105, v106);
              if ((v102 & 0x80000000) != 0)
              {
                goto LABEL_159;
              }

              *v99 += strlen((v100 + 76));
              heap_Free(v21[1], v105);
              if (v159)
              {
                v102 = bed_Insert(v152, &szWORD_END_2, 1);
                if ((v102 & 0x80000000) != 0)
                {
                  goto LABEL_158;
                }

                ++*v99;
              }

              v102 = bed_GetcElem(v152, &v169);
              if ((v102 & 0x80000000) != 0)
              {
LABEL_158:
                v105 = 0;
LABEL_159:
                v30 = v102;
                goto LABEL_173;
              }

              v107 = *(a3 + 32);
              v108 = a10;
              v109 = 334;
              if (!v107)
              {
                v109 = 70;
              }

              if (*(a10 + 18) < (*(a10 + 16) + 4 * *(v100 + v109) + 5))
              {
                v102 = datac_RequestBlock(a9, v140, (*(a10 + 16) + 4 * *(v100 + v109) + 5), &a10);
                if ((v102 & 0x80000000) != 0)
                {
                  goto LABEL_158;
                }

                v108 = a10;
                v107 = *(a3 + 32);
              }

              v110 = *(v108 + 8);
              v111 = *(v108 + 16);
              v112 = *(v108 + 2);
              v113 = v110 + v112 * v111;
              __s[4] = 0;
              *__s = 0;
              if (v107)
              {
                v114 = *(v100 + 334);
                v115 = (v110 + v112 * v111);
                if (*(v100 + 334))
                {
                  NextUtf8Offset = 0;
                  v115 = (v110 + v112 * v111);
                  do
                  {
                    if (!*(v100 + 76 + NextUtf8Offset))
                    {
                      break;
                    }

                    WCharFromUtf8 = utf8_GetWCharFromUtf8(v100 + 76, NextUtf8Offset, v114);
                    LH_itoa(WCharFromUtf8, __s, 0x10u);
                    *v115 = *&__s[2];
                    v115[1] = *__s;
                    v115 += 2;
                    NextUtf8Offset = utf8_GetNextUtf8Offset((v100 + 76), NextUtf8Offset);
                    v114 = *(v100 + 334);
                  }

                  while (v114 > NextUtf8Offset);
                }
              }

              else
              {
                v115 = (v110 + v112 * v111);
                if (*(v100 + 70))
                {
                  v118 = 0;
                  v115 = (v110 + v112 * v111);
                  do
                  {
                    v119 = v118 + v97;
                    if (v118 + v97 >= v156)
                    {
                      break;
                    }

                    v120 = utf8_GetWCharFromUtf8(a4, v118 + v97, v156);
                    LH_itoa(v120, __s, 0x10u);
                    *v115 = *&__s[2];
                    v115[1] = *__s;
                    v115 += 2;
                    v118 = (utf8_GetNextUtf8Offset(a4, v119) - v97);
                  }

                  while (v118 < *(v100 + 70));
                }
              }

              *v115 = 0;
              *(a10 + 16) += v115 - v113 + 1;
              v30 = 2350915594;
              v79 = v145;
            }

            if (*(v147 + 16) == 1)
            {
              v121 = *(v147 + 8);
              v122 = *v147;
              if (v121 >= *(v147 + 10))
              {
                v123 = heap_Realloc(v21[1], v122, 12 * *(v147 + 10) + 121);
                v80 = v156;
                if (!v123)
                {
                  goto LABEL_172;
                }

                v122 = v123;
                *v147 = v123;
                *(v147 + 10) += 10;
                v121 = *(v147 + 8);
              }

              else
              {
                v80 = v156;
              }

              v124 = v121;
              v125 = v122 + 12 * v121;
              *v125 = v98;
              *(v125 + 2) = 0;
              v126 = *(v100 + 70);
              if (__dstb == 1)
              {
                *(v122 + 12 * v124 + 4) = 1;
              }

              v98 += v126;
              *(v147 + 8) = v124 + 1;
            }

            else
            {
              v80 = v156;
            }

            v97 = ++v96;
          }

          while (v96 != v79);
        }

        if (!v80)
        {
          goto LABEL_170;
        }

        v127 = bed_GetcElem(v152, &v169);
        if ((v127 & 0x80000000) != 0)
        {
          goto LABEL_160;
        }

        if (v169)
        {
          UTOISubTrace(v148, v21, v152, "replacement string");
          if (*(v147 + 16) == 1)
          {
            v127 = bed_GetpElem(v152, 0, &v167);
            if ((v127 & 0x80000000) == 0)
            {
              if (v169)
              {
                v128 = 0;
                v129 = 0;
                v130 = 1;
                v131 = v167;
                do
                {
                  if (*(v131 + v128) == 16)
                  {
                    v132 = *(v147 + 8);
                    if (v129 >= v132)
                    {
LABEL_163:
                      log_OutText(v21[4], v164, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v130);
                      v136 = 0;
                      goto LABEL_164;
                    }

                    v133 = v129;
                    v134 = (*v147 + 12 * v129 + 4);
                    while (1)
                    {
                      v135 = *v134;
                      v134 += 3;
                      if (v135 != 1)
                      {
                        break;
                      }

                      if (v132 == ++v133)
                      {
                        goto LABEL_163;
                      }
                    }

                    *(*v147 + 12 * v133 + 8) = v128;
                    ++v130;
                    v129 = v133 + 1;
                  }

                  ++v128;
                }

                while (v128 < v169);
              }

              v136 = 1;
LABEL_164:
              if (v149 >= 5 && *(v147 + 8))
              {
                v137 = 0;
                v138 = 0;
                do
                {
                  log_OutText(v21[4], v164, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v138++, *(*v147 + v137), *(*v147 + v137 + 8), *(*v147 + v137 + 4));
                  v137 += 12;
                }

                while (v138 < *(v147 + 8));
              }

              v80 = v156;
              if (v136)
              {
                *(v147 + 12) = 0;
              }

              goto LABEL_170;
            }

LABEL_160:
            v30 = v127;
            goto LABEL_172;
          }
        }

        else
        {
          log_OutText(v21[4], v164, 5, 0, "[UTOI] deleting region, no replacement text found");
        }

LABEL_170:
        v30 = utoin_IncrReplaceCurrentRegion(v142, v144, v152, v80, v147);
        if ((v30 & 0x80000000) == 0)
        {
          UTOITrace(v148, v21, v142, v144, "END of normalization");
        }

LABEL_172:
        v105 = 0;
LABEL_173:
        if (v165)
        {
          heap_Free(v21[1], v166);
          v166 = 0;
        }

        if (v105)
        {
          heap_Free(v21[1], v105);
        }

        v93 = v21[1];
        v94 = v151;
        goto LABEL_178;
      }

      if (v74)
      {
        heap_Free(v21[1], v74);
        *v71 = 0;
      }
    }

    v92 = *(v71 + 8);
    if (v92)
    {
      heap_Free(v21[1], v92);
      *(v71 + 8) = 0;
    }

    v93 = v21[1];
    v94 = v71;
LABEL_178:
    heap_Free(v93, v94);
  }

  return v30;
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

uint64_t wparser_impl_dag_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 56);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 24), *(a1 + 32), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 48));
  }

  return result;
}

uint64_t wparser_impl_dag_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
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

uint64_t wparser_impl_plusrules_Init(uint64_t a1, int a2, void *a3, uint64_t a4, const char *a5, int a6, _BYTE *a7)
{
  v12 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  *(a1 + 40) = a3;
  if (!strcmp(a5, "win874"))
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = xcode_Utf16leToWin874;
    *(a1 + 56) = 0;
    if (*a7 && (v14 = (*(*a3 + 64))(a3[1], a3[2], a7, a1 + 64), (v14 & 0x80000000) != 0))
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

  else
  {
    log_OutPublic(*(*(a1 + 16) + 32), *(a1 + 32), 1802, "%s%s", a5, "not implemented in plusrules implementation : ");
    return 2350915591;
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

uint64_t wparser_impl_plusrules_Spell(uint64_t a1, int a2, const char *a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
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
    if (!v5 || (result = wparser_ObjClose1(v5), (result & 0x80000000) == 0))
    {

      return safeh_HandleCheck(a1, a2, 87652, 88);
    }
  }

  return result;
}

uint64_t wordm_sysdct_Lookup_Thai(void *a1, char *__s, uint64_t a3, unsigned int a4, const char *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  result = 2370838535;
  if (a1 && __s && a3)
  {
    *a3 = 0;
    *(a3 + 4) = 0u;
    *(a3 + 20) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 52) = 0u;
    *(a3 + 68) = 0;
    *(a3 + 70) = 0;
    *(a3 + 76) = 0u;
    *(a3 + 72) = 0;
    *(a3 + 92) = 0u;
    *(a3 + 108) = 0u;
    *(a3 + 124) = 0u;
    *(a3 + 140) = 0u;
    *(a3 + 156) = 0u;
    *(a3 + 172) = 0u;
    *(a3 + 188) = 0u;
    *(a3 + 204) = 0u;
    *(a3 + 220) = 0u;
    *(a3 + 236) = 0u;
    *(a3 + 252) = 0u;
    *(a3 + 332) = 0;
    *(a3 + 268) = 0u;
    *(a3 + 284) = 0u;
    *(a3 + 300) = 0u;
    *(a3 + 316) = 0u;
    *(a3 + 334) = 0;
    v11 = strlen(__s);
    v12 = v11;
    if ((v11 & 0xFFC0) != 0)
    {
      v13 = 64;
    }

    else
    {
      v13 = v11;
    }

    __memmove_chk();
    v27[v13] = 0;
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
          if ((v27[v15] + 49) >= 0xCu)
          {
            v16 = 0;
            v17 = v27[v15];
            if ((v17 - 231) >= 7 && v17 != 229)
            {
              v16 = 0;
              v20 = v27[v15 - 1];
              if ((v20 - 224) >= 5 && v20 != 230)
              {
                v25 = 256;
                result = sysdct_word_LookUp_Thai(a1, v27, v15, v26, &v25, a5);
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
        result = 0;
        *(a3 + 4) = v27[0];
        *(a3 + 5) = 0;
        *(a3 + 70) = 1;
        *a3 = 0;
      }

      else
      {
        v26[v14] = 0;
        __strcpy_chk();
        *(a3 + 72) = 16;
        *(a3 + 334) = v25;
        v24 = v15;
        if (v27[v15] == 230)
        {
          __strcat_chk();
          *(a3 + 334) += v25;
          v24 = ++v15;
        }

        v27[v24] = 0;
        __strcpy_chk();
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
        v23 = __s[v21++];
      }

      while (v23 == 32);
      memmove((a3 + 4), __s, v22);
      return 0;
    }
  }

  return result;
}

uint64_t DoDctPlusRules(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, _WORD *a13, int a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18)
{
  v106 = *MEMORY[0x1E69E9840];
  v73 = -1;
  memset(__dst, 0, 336);
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(v74, 0, sizeof(v74));
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  bzero(v104, 0x244uLL);
  LOWORD(v75) = 0;
  BYTE2(v75) = 0;
  v103 = 0;
  *(a15 + 8) = 0;
  *(a15 + 12) = 0x100000001;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v61 = LogLevel > 4;
  DomainSegmentations = bed_GetpElem(a8, 0xFFFFu, &v72);
  if ((DomainSegmentations & 0x80000000) != 0)
  {
    return DomainSegmentations;
  }

  v25 = *(v72 + 36);
  if (!a6 && *(v72 + 36))
  {
    *(a15 + 16) = 0;
  }

  v26 = *(a15 + 16) ? "" : "- aborting alignment";
  log_OutText(*(a1 + 32), a2, 5, 0, "[UTOI] (normalizing %d bytes - region length %d %s)", a6, v25, v26);
  UTOITrace(v61, a1, a7, a8, "START of normalization");
  if (a16 == 1)
  {
    DomainSegmentations = getDomainSegmentations(a1, a3, a5, a6, a8, a11, &v69, &v68 + 1, 1, 0);
    if ((DomainSegmentations & 0x80000000) != 0)
    {
      return DomainSegmentations;
    }
  }

  v65 = a2;
  v60 = a8;
  v73 = -1;
  v64 = a6;
  if (a6)
  {
    v27 = 0;
    LOWORD(v28) = 0;
    v29 = 0;
    v30 = 0;
    while (1)
    {
      if (a16 == 1 && HIWORD(v68) > v28)
      {
        v31 = 0;
        v28 = v28;
        v32 = (v69 + 340 * v28);
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
          if (v33 == v30 || v28 >= HIWORD(v68))
          {
            if (v33 != v30)
            {
              break;
            }

            memcpy(__dst, (v69 + 340 * v31 + 4), 0x150uLL);
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
        v35 = handleWordMatch(a1, v65, a4, a5, v30, __dst, &v73, v104, v74, a9, a14, a13, a10, a11, a12, a17, a18, &v68, &v67);
        if ((v35 & 0x80000000) != 0)
        {
          break;
        }

        v35 = bed_GetcElem(a9, &v71);
        if ((v35 & 0x80000000) != 0)
        {
          break;
        }

        v37 = 0;
      }

      else
      {
        log_OutText(*(a1 + 32), v65, 5, 0, "[UTOI] position %d (word.cbOrth=%d) not in dict", v27, HIWORD(__dst[17]));
        if (v73 == -1)
        {
          v73 = v30;
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
        v43 = HIWORD(__dst[17]);
        if (v37)
        {
          *(v39 + 12 * v41 + 4) = 1;
        }

        v29 += 3 * v43;
        *(a15 + 8) = v41 + 1;
      }

      else
      {
        v43 = HIWORD(__dst[17]);
      }

      v30 += v43;
      v27 = v30;
      v44 = a11;
      if (v30 >= v64)
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
    HIWORD(__dst[17]) = 0;
    LOBYTE(__dst[19]) = 0;
    HIWORD(__dst[83]) = 0;
    v35 = handleWordMatch(a1, v65, a4, a5, v30, __dst, &v73, v104, v74, a9, a14, a13, a10, v44, a12, a17, a18, &v68, &v67);
    if ((v35 & 0x80000000) == 0)
    {
      v46 = v60;
      if (!v64)
      {
        goto LABEL_80;
      }

      v35 = bed_GetcElem(a9, &v71);
      if ((v35 & 0x80000000) == 0)
      {
        if (!v71)
        {
          log_OutText(*(a1 + 32), v65, 5, 0, "[UTOI] deleting region, no replacement text found");
          goto LABEL_80;
        }

        UTOISubTrace(v61, a1, a9, "replacement string");
        if (*(a15 + 16) != 1)
        {
LABEL_80:
          v45 = utoin_IncrReplaceCurrentRegion(a7, v46, a9, v64, a15);
          if ((v45 & 0x80000000) == 0)
          {
            UTOITrace(v61, a1, a7, v46, "END of normalization");
          }

          goto LABEL_67;
        }

        v35 = bed_GetpElem(a9, 0, &v70);
        if ((v35 & 0x80000000) == 0)
        {
          if (!v71)
          {
            v56 = 1;
            v51 = LogLevel;
            goto LABEL_74;
          }

          v47 = 0;
          v48 = 0;
          v49 = 1;
          v50 = v70;
          v51 = LogLevel;
          while (1)
          {
            if (*(v50 + v47) == 16)
            {
              v52 = *(a15 + 8);
              if (v48 >= v52)
              {
LABEL_72:
                log_OutText(*(a1 + 32), v65, 5, 0, "[UTOI] cant find non-deleted word to align new word number %d with", v49);
                v56 = 0;
LABEL_74:
                if (v51 >= 5 && *(a15 + 8))
                {
                  v58 = 0;
                  v59 = 0;
                  do
                  {
                    log_OutText(*(a1 + 32), v65, 5, 0, "[UTOI] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v59++, *(*a15 + v58), *(*a15 + v58 + 8), *(*a15 + v58 + 4));
                    v58 += 12;
                  }

                  while (v59 < *(a15 + 8));
                }

                v46 = v60;
                if (v56)
                {
                  *(a15 + 12) = 0;
                }

                goto LABEL_80;
              }

              v53 = v48;
              v54 = (*a15 + 12 * v48 + 4);
              while (1)
              {
                v55 = *v54;
                v54 += 3;
                if (v55 != 1)
                {
                  break;
                }

                if (v52 == ++v53)
                {
                  goto LABEL_72;
                }
              }

              *(*a15 + 12 * v53 + 8) = v47;
              ++v49;
              v48 = v53 + 1;
            }

            if (++v47 >= v71)
            {
              v56 = 1;
              goto LABEL_74;
            }
          }
        }
      }
    }
  }

  v45 = v35;
LABEL_67:
  if (HIWORD(v68))
  {
    heap_Free(*(a1 + 8), v69);
  }

  return v45;
}

uint64_t handleWordMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned __int16 *a6, _WORD *a7, uint64_t a8, char *__dst, uint64_t a10, int a11, _WORD *a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, unsigned __int16 *a18, unsigned __int16 *a19)
{
  *&__n[522] = *MEMORY[0x1E69E9840];
  HexArg = 2350915591;
  if (!a4 || !a6 || !a7 || !a8 || !__dst || !a10)
  {
    return HexArg;
  }

  v59 = 0;
  *__n = 0;
  if (*a7 == -1)
  {
    v26 = 0;
    HexArg = 0;
  }

  else
  {
    memmove(__dst, a6 + 2, a6[35]);
    *(__dst + 32) = a6[35];
    memmove(__dst + 66, a6 + 38, a6[167]);
    *(__dst + 289) = a6[167];
    *__n = 512;
    memset(&__n[2], 0, 512);
    HexArg = o2t_Transcribe(a3, (a4 + *a7), (a5 - *a7), a8, __dst, &__n[2], __n, &v59);
    if ((HexArg & 0x80000000) != 0)
    {
      return HexArg;
    }

    v26 = v59;
  }

  v28 = a18;
  v27 = a19;
  v29 = a16;
  v30 = a17;
  v31 = a15;
  v33 = a13;
  v32 = a14;
  v34 = a11;
  v35 = *(a8 + 578);
  if (v35 && (v26 & 1) == 0)
  {
    if (a11)
    {
      v36 = bed_Insert(a10, &szWORD_BEG_2, 1);
      if ((v36 & 0x80000000) != 0)
      {
        return v36;
      }

      v48 = a17;
      ++*a12;
      v35 = *(a8 + 578);
    }

    else
    {
      v48 = a17;
    }

    v37 = v35 + 1;
    v38 = heap_Alloc(*(a1 + 8), (v35 + 1));
    if (!v38)
    {
      return 2350915594;
    }

    v39 = v38;
    bzero(v38, v37);
    strncpy(v39, (a8 + 66), *(a8 + 578));
    v39[*(a8 + 578)] = 0;
    v40 = bed_Insert(a10, v39, *(a8 + 578));
    if ((v40 & 0x80000000) != 0)
    {
LABEL_44:
      HexArg = v40;
      heap_Free(*(a1 + 8), v39);
      return HexArg;
    }

    *a12 += *(a8 + 578);
    heap_Free(*(a1 + 8), v39);
    v30 = v48;
    if (a11)
    {
      v36 = bed_Insert(a10, &szWORD_END_3, 1);
      if ((v36 & 0x80000000) != 0)
      {
        return v36;
      }

      ++*a12;
    }

    HexArg = getHexArg(a1, a2, *(a8 + 64), a13, a15, a14, a16, v48, a18, a19);
    if ((HexArg & 0x80000000) != 0)
    {
      return HexArg;
    }

    v26 = v59;
    v29 = a16;
    v31 = a15;
    v27 = a19;
    v32 = a14;
    v33 = a13;
    v28 = a18;
    v34 = a11;
  }

  v41 = *__n;
  if (*__n && ((v26 & 2) == 0 || !*(__dst + 32)))
  {
    v50 = v33;
    v51 = v28;
    v52 = v27;
    v53 = v32;
    v54 = v31;
    v55 = v29;
    v56 = v34;
    if (v34)
    {
      v36 = bed_Insert(a10, &szWORD_BEG_2, 1);
      if ((v36 & 0x80000000) != 0)
      {
        return v36;
      }

      v49 = v30;
      ++*a12;
      v41 = *__n;
    }

    else
    {
      v49 = v30;
    }

    v42 = v41 + 1;
    v43 = heap_Alloc(*(a1 + 8), (v41 + 1));
    HexArg = 2350915594;
    if (!v43)
    {
      return HexArg;
    }

    v39 = v43;
    bzero(v43, v42);
    strncpy(v39, &__n[2], *__n);
    v39[*__n] = 0;
    v40 = bed_Insert(a10, v39, *__n);
    if ((v40 & 0x80000000) == 0)
    {
      *a12 += *__n;
      heap_Free(*(a1 + 8), v39);
      if (!v56)
      {
LABEL_37:
        HexArg = getHexArg(a1, a2, (a5 - *a7), v50, v54, v53, v55, v49, v51, v52);
        if ((HexArg & 0x80000000) != 0)
        {
          return HexArg;
        }

        v26 = v59;
        goto LABEL_39;
      }

      v36 = bed_Insert(a10, &szWORD_END_3, 1);
      if ((v36 & 0x80000000) == 0)
      {
        ++*a12;
        goto LABEL_37;
      }

      return v36;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((v26 & 2) != 0)
  {
    v45 = *a7;
    v46 = a5 - v45;
    memmove(a8, (a4 + v45), (a5 - v45));
    memmove((a8 + v46), a6 + 2, a6[35]);
    *(a8 + 64) = a6[35] + v46;
    memmove((a8 + 66), &__n[2], *__n);
    v44 = __n;
  }

  else
  {
    memmove(a8, a6 + 2, a6[35]);
    *(a8 + 64) = a6[35];
    v44 = a6 + 167;
    memmove((a8 + 66), a6 + 38, a6[167]);
  }

  *(a8 + 578) = *v44;
  *a7 = -1;
  return HexArg;
}

uint64_t DoDctPlusRulesSpell(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v19 = strlen(&v26[4] + 12) + 3;
      v20 = heap_Alloc(*(a1 + 8), v19);
      if (!v20)
      {
        return 2350915594;
      }

      v21 = v20;
      bzero(v20, v19);
      if (i)
      {
        strcpy(v21, &v26[4] + 12);
      }

      else
      {
        *v21 = 32;
        strcat(v21, &v26[4] + 12);
      }

      *&v21[strlen(v21)] = 32;
      v22 = strlen(v21);
      v18 = bed_Insert(a6, v21, v22);
      if ((v18 & 0x80000000) != 0)
      {
        heap_Free(*(a1 + 8), v21);
        return v18;
      }

      heap_Free(*(a1 + 8), v21);
    }

    v23 = strlen(v26 + 4);
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
        strncpy(v27, (a7 + *a10), v25)[v26] = 0;
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
  while (strcmp(v2, __s2))
  {
    v2 += 11;
    if (!--v3)
    {
      return 82;
    }
  }

  return v2[10];
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
      bzero(v7, 0x24E0uLL);
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

uint64_t o2t_Transcribe(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, char *__dst, unsigned __int16 *a7, char *a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = 2370838535;
  v37 = 0;
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

  v11 = a7;
  v35 = *a7;
  v36 = 0;
  v38[0] = 0;
  if (a3 < 2)
  {
    ReadThaiChar(*a2, __dst);
    v17 = *(a4 + 64);
    if (*(a4 + 64) || a5[32])
    {
      v31 = strlen(__dst);
      __memcpy_chk();
      v38[v31] = 0;
      goto LABEL_15;
    }

LABEL_46:
    v8 = 0;
    *v11 = strlen(__dst);
    goto LABEL_47;
  }

  if (SParser(a1, a2, a3) != 255)
  {
    v16 = WParser(a1, __dst, v11, &v37, &v36);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    if (v36 != 255)
    {
      if (v37 && (*(a4 + 64) || a5[32]))
      {
        __strncpy_chk();
        v38[v35] = 0;
        v31 = *v11;
        v17 = *(a4 + 64);
LABEL_15:
        v18 = 0;
        v19 = v17 != 0;
        __src = a5;
        if (v17)
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

        v32 = v11;
        while (1)
        {
          if (v21)
          {
            v22 = *(a4 + 64);
            if (v22 + v10 <= 0x3F)
            {
              break;
            }
          }

          if ((v21 & 2) != 0)
          {
            v23 = __src[32];
            if (v23 + v10 <= 0x3F)
            {
              if (*a2 == 224 && *__src == 224)
              {
                __memcpy_chk();
                v39[0] = -31;
                v25 = -3;
                v26 = 2;
                v24 = v23;
              }

              else
              {
                __memcpy_chk();
                memcpy(&v39[v10], __src, v23);
                LOWORD(v23) = v23 + v10;
                v24 = v23;
                v25 = -3;
                v26 = 2;
              }

              goto LABEL_36;
            }
          }

          if ((v21 & 4) == 0)
          {
            goto LABEL_37;
          }

          v27 = *(a4 + 64);
          v23 = __src[32];
          if (v27 + v10 + v23 <= 0x3F)
          {
            __memcpy_chk();
            memcpy(&v39[v27], a2, v10);
            v28 = v27 + v10;
            memcpy(&v39[v28], __src, v23);
            LOWORD(v23) = v28 + v23;
            v24 = v23;
            v25 = -5;
            v26 = 3;
            v11 = v32;
            goto LABEL_36;
          }

          v11 = v32;
LABEL_37:
          if (SParser(a1, v39, v18) == 255)
          {
            return 2370838535;
          }

          *v11 = v35;
          v16 = WParser(a1, __dst, v11, &v37, &v36);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }

          if (v36 == 255)
          {
            return 2370838535;
          }

          if (!v21 || !v37)
          {
            if (!v37)
            {
              return 0;
            }

            if (v10 == 1 && *a2 - 224 <= 4)
            {
              v8 = 2370838535;
              if (__src[289] + v31 < v35)
              {
                strcpy(__dst, v38);
                memcpy(&__dst[v31], __src + 33, __src[289]);
                v8 = 0;
                v29 = __src[289] + v31;
                *v11 = v29;
                __dst[v29] = 0;
                *a8 = 2;
                return v8;
              }

LABEL_56:
              *v11 = 0;
              return v8;
            }

            v8 = 2370838535;
            if (v35 <= v31)
            {
              goto LABEL_56;
            }

            strcpy(__dst, v38);
            v8 = 0;
            *v11 = v31;
LABEL_47:
            *a8 = 0;
            return v8;
          }
        }

        __memcpy_chk();
        memcpy(&v39[v22], a2, v10);
        LOWORD(v23) = v22 + v10;
        v24 = (v22 + v10);
        v25 = -2;
        v26 = 1;
LABEL_36:
        v39[v24] = 0;
        *a8 = v26;
        v21 &= v25;
        v18 = v23;
        goto LABEL_37;
      }

      goto LABEL_46;
    }
  }

  return v8;
}

uint64_t SParser(uint64_t a1, const void *a2, unsigned int a3)
{
  v315 = *MEMORY[0x1E69E9840];
  *(a1 + 89) = 0u;
  v6 = a1 + 89;
  *(a1 + 249) = 0u;
  *(a1 + 233) = 0u;
  *(a1 + 217) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 185) = 0u;
  *(a1 + 169) = 0u;
  *(a1 + 153) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 121) = 0u;
  *(a1 + 105) = 0u;
  *(a1 + 313) = 0u;
  *(a1 + 329) = 0u;
  *(a1 + 281) = 0u;
  *(a1 + 297) = 0u;
  v7 = a1 + 346;
  *(a1 + 265) = 0u;
  bzero((a1 + 346), 0x2380uLL);
  v8 = a1 + 24;
  memcpy((a1 + 24), a2, a3);
  v9 = 0;
  v10 = 0;
  *(a1 + 24 + a3) = 0;
  *(a1 + 9434) = 0;
  v292 = (a1 + 92);
  *(a1 + 345) = 0;
  v287 = (a1 + 349);
  v11 = 0xFFFFFFFFLL;
  v308 = a1;
  *(a1 + 88) = 0;
  v299 = v6;
  v300 = v7;
  v290 = a3;
  do
  {
    if ((v11 & 0x80000000) != 0)
    {
      v11 = 0;
      v13 = v308[88];
    }

    else
    {
      v12 = v7 + 71 * v11++;
      v13 = *(v12 + 1);
      v308[88] = v13;
    }

    if (v13 >= a3)
    {
      continue;
    }

    if (v10)
    {
      v14 = v10;
      v15 = 78;
      v16 = v292;
      do
      {
        if (*(v16 - 3) == v13)
        {
          if (*(v16 - 2) == 1 && *(v7 + 71 * *v16 + 3) == 69)
          {
            *(v7 + 71 * (v11 - 1) + 3) = 78;
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

    v297 = v11;
    v17 = (v8 + v13);
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

    v295 = 0;
    LODWORD(v20) = 0;
    HIDWORD(v20) = v13;
    v301 = v20;
    do
    {
      v21 = v17;
      v22 = &psrules[61 * v18];
      v23 = (v22 + 30);
      v24 = *v22;
      v25 = strchr(v22 + 30, 43);
      v27 = v13;
      v28 = v13;
      if (v24)
      {
        v29 = v24;
        *&v26 = v301;
        do
        {
          v30 = *(v8 + BYTE4(v26));
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
              v34 = *(v8 + BYTE4(v26)) - 161 > 0x29;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 95);
              v36 = 0x2802C50040BLL;
              goto LABEL_89;
            case 'D':
              v37 = *(v8 + BYTE4(v26)) - 164 > 0x13;
              v38 = 1 << (*(v8 + BYTE4(v26)) + 92);
              v39 = 655425;
              goto LABEL_96;
            case 'E':
              if (v30 == -51)
              {
                goto LABEL_126;
              }

              goto LABEL_84;
            case 'F':
              v37 = *(v8 + BYTE4(v26)) - 164 > 0x12;
              v38 = 1 << (*(v8 + BYTE4(v26)) + 92);
              v39 = 425985;
              goto LABEL_96;
            case 'G':
              v34 = *(v8 + BYTE4(v26)) - 170 > 0x23;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 86);
              v36 = 0x94840A001;
              goto LABEL_89;
            case 'H':
              if (v30 == -53)
              {
                goto LABEL_126;
              }

LABEL_84:
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'J':
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u || v30 == -57 || *(v8 + BYTE4(v26)) == 205)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'K':
              v34 = *(v8 + BYTE4(v26)) - 164 > 0x26;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 92);
              v36 = 0x4020000001;
              goto LABEL_89;
            case 'L':
              if (v30 != -59 && *(v8 + BYTE4(v26)) != 195)
              {
                goto LABEL_126;
              }

              goto LABEL_117;
            case 'M':
              v34 = *(v8 + BYTE4(v26)) - 161 > 0x2A;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 95);
              v36 = 0x40681041401;
              goto LABEL_89;
            case 'N':
              v34 = *(v8 + BYTE4(v26)) - 162 > 0x28;
              v35 = 1 << (*(v8 + BYTE4(v26)) + 94);
              v36 = 0x1A8006F81C5;
LABEL_89:
              v43 = v35 & v36;
              if (!v34 && v43 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'O':
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

              v33 = *(v8 + BYTE4(v26)) - 194 > 5 || ((1 << (*(v8 + BYTE4(v26)) + 62)) & 0x23) == 0;
              if (!v33)
              {
                goto LABEL_126;
              }

              goto LABEL_111;
            case 'P':
              v40 = *(v8 + BYTE4(v26)) - 184 > 0x13;
              v41 = 1 << (*(v8 + BYTE4(v26)) + 72);
              v42 = 796673;
              goto LABEL_103;
            case 'Q':
              v40 = *(v8 + BYTE4(v26)) - 166 > 7;
              v41 = 1 << (*(v8 + BYTE4(v26)) + 90);
              v42 = 145;
              goto LABEL_103;
            case 'R':
              v40 = *(v8 + BYTE4(v26)) - 195 > 4;
              v41 = 1 << (*(v8 + BYTE4(v26)) + 61);
              v42 = 21;
LABEL_103:
              v47 = v41 & v42;
              if (!v40 && v47 != 0)
              {
                goto LABEL_117;
              }

              goto LABEL_126;
            case 'S':
              v37 = *(v8 + BYTE4(v26)) - 174 > 0x1B;
              v38 = 1 << (*(v8 + BYTE4(v26)) + 82);
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
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u || (*(v8 + BYTE4(v26)) | 4) == 0xC7)
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
              if ((*(v8 + BYTE4(v26)) + 49) < 0xD2u)
              {
                goto LABEL_126;
              }

LABEL_111:
              *&v26 = vadd_s32(*&v26, 0x100000001);
              v305 = v26;
              contable(v30, 1, v309);
              v26 = v305;
              if (v309[0] == 45)
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
              if (v29 != *(v8 + BYTE4(v26)))
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

      v49 = *(v8 + v27);
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
          v306 = v19;
          v53 = v51;
          __strncpy_chk();
          v285 = v53;
          __s[v53] = 0;
          v19 = v306;
          v54 = v308;
          if (!v25)
          {
            goto LABEL_194;
          }

          v55 = strchr(v25, 39);
          v56 = &v310;
          if (v55)
          {
            while (1)
            {
              v58 = *++v56;
              v57 = v58;
              if (v58 == 88)
              {
                break;
              }

              if (!v57)
              {
                if (patt_check(v56, "X\xE4\x58X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v59 = &v310;
            while (1)
            {
              v61 = *++v59;
              v60 = v61;
              if (v61 == 88)
              {
                break;
              }

              if (!v60)
              {
                if (patt_check(v59, "X\xE2\x58X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v62 = &v310;
            while (1)
            {
              v64 = *++v62;
              v63 = v64;
              if (v64 == 88)
              {
                break;
              }

              if (!v63)
              {
                if (patt_check(v62, "X\xE0\x58X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v65 = &v310;
            while (1)
            {
              v67 = *++v65;
              v66 = v67;
              if (v67 == 88)
              {
                break;
              }

              if (!v66)
              {
                if (patt_check(v65, "X\xE1\x58\xE0\x58\x52") != 255)
                {
                  goto LABEL_191;
                }

                break;
              }
            }

            v68 = __s;
            do
            {
              v70 = *v68++;
              v69 = v70;
            }

            while ((v70 - 207) < 0xFFFFFFD2);
            v71 = *v68;
            switch(v71)
            {
              case 199:
                if (v69 == 164)
                {
                  goto LABEL_131;
                }

                break;
              case 197:
                v90 = v69 - 161;
                v34 = v90 > 0x1D;
                v91 = (1 << v90) & 0x2C000001;
                if (!v34 && v91 != 0)
                {
                  goto LABEL_131;
                }

                break;
              case 195:
                v72 = v69 - 161;
                if (v72 <= 0x29 && ((1 << v72) & 0x2802C500403) != 0)
                {
                  goto LABEL_131;
                }

                break;
            }

LABEL_191:
            if (patt_check(__s, "\xE0\x58\x52") == 1)
            {
              goto LABEL_131;
            }

            if (patt_check(__s, "\xE1\x58\x52") == 1)
            {
              goto LABEL_131;
            }

            v93 = patt_check(__s, "\xE2\x58\x52");
            v54 = v308;
            if (v93 == 1)
            {
              goto LABEL_131;
            }

LABEL_194:
            if (v24 == 33)
            {
              v94 = v54[88];
              if (!v94)
              {
                goto LABEL_131;
              }

              if (patt_check(__s, "X\xEC\x58XX\xEC\xECPQS") != 1)
              {
                v97 = patt_check(__s, "XX\xEC\xECPQS");
                v54 = v308;
                if (v97 == 1 && v94 != 1 && *(v8 + (v94 - 1)) - 207 < 0xFFFFFFD2)
                {
                  goto LABEL_131;
                }

                goto LABEL_211;
              }

              if (v94 == 1)
              {
                v96 = -1;
                v54 = v308;
              }

              else
              {
                v95 = *(v8 + (v94 - 1)) - 205 > 7 || ((1 << (*(v8 + (v94 - 1)) + 51)) & 0xA1) == 0;
                v54 = v308;
                if (!v95)
                {
                  goto LABEL_211;
                }

                v96 = v94 - 2;
                if (v94 == 2)
                {
                  goto LABEL_131;
                }
              }

              if (*(v8 + v96) != 226)
              {
                goto LABEL_131;
              }
            }

LABEL_211:
            v98 = v54;
            v99 = v54[345];
            if (v99 > 0x40)
            {
              return 255;
            }

            v100 = v98[9434];
            if (v100 > 0x80)
            {
              return 255;
            }

            if (v295)
            {
              v101 = v299 + 4 * v99;
              v102 = *(v101 + 1) + 1;
              v103 = *(v101 + 2) + 1;
              v104 = v308;
            }

            else
            {
              *(v299 + 4 * v99) = 0;
              v104 = v308;
              v99 = v308[345];
              v105 = v299 + 4 * v99;
              *v105 = v308[88];
              *(v105 + 1) = 0;
              *(v105 + 3) = v100;
              v103 = 1;
              v102 = 1;
            }

            v106 = v299 + 4 * v99;
            *(v106 + 1) = v102;
            *(v106 + 2) = v103;
            v107 = v300 + 71 * v100;
            *(v107 + 63) = 0;
            *(v107 + 32) = 0u;
            *(v107 + 48) = 0u;
            *v107 = 0u;
            *(v107 + 16) = 0u;
            v108 = (v300 + 71 * v104[9434]);
            *v108 = v104[88];
            v108[1] = v13 + v285;
            v108[2] = 32;
            v108[5] = v18;
            __strcpy_chk();
            *(v300 + 71 * v104[9434] + 38) = 0;
            v109 = mDictFind(__s);
            v110 = v104[9434];
            v111 = v300 + 71 * v104[9434];
            *(v111 + 4) = v109;
            v112 = (v111 + 4);
            if (*(v112 - 3) == v290)
            {
              v113 = 76;
            }

            else
            {
              v113 = 70;
            }

            *(v112 - 1) = v113;
            if (v109 == 82 && strchr(v23, 33))
            {
              *v112 = 86;
              *(v300 + 71 * v110 + 70) = 0;
              v17 = v21;
            }

            else
            {
              v114 = strchr(v23, 39);
              v115 = v300 + 71 * v110;
              v17 = v21;
              if (v114)
              {
                *(v115 + 70) = 2;
              }

              else
              {
                *(v115 + 70) = 1;
              }
            }

            ++v295;
            v308[9434] = v110 + 1;
            goto LABEL_131;
          }

          v73 = __s;
          do
          {
            v75 = *v73++;
            v74 = v75;
          }

          while ((v75 - 207) < 0xFFFFFFD2);
          if (v74 != 187 || *v73 != 197)
          {
            v76 = &v310;
            v54 = v308;
            do
            {
              v78 = *++v76;
              v77 = v78;
              if (v78 == 224)
              {
                goto LABEL_170;
              }
            }

            while (v77);
            v79 = patt_check(v76, "\xE0\x43\x52");
            v54 = v308;
            if (v79 != 1)
            {
LABEL_170:
              v80 = &v310;
              while (1)
              {
                v82 = *++v80;
                v81 = v82;
                if (v82 == 225)
                {
                  break;
                }

                if (!v81)
                {
                  v83 = patt_check(v80, "\xE1\x43\x52");
                  v54 = v308;
                  if (v83 == 1)
                  {
                    goto LABEL_178;
                  }

                  break;
                }
              }

              v84 = &v310;
              while (1)
              {
                v86 = *++v84;
                v85 = v86;
                if (v86 == 226)
                {
                  goto LABEL_194;
                }

                if (!v85)
                {
                  v87 = patt_check(v84, "\xE2\x43\x52");
                  v54 = v308;
                  if (v87 != 1)
                  {
                    goto LABEL_194;
                  }

                  break;
                }
              }
            }

LABEL_178:
            v88 = strlen(__s);
            v54 = v308;
            if (__s[(v88 - 1)] - 195 > 4 || ((1 << (__s[(v88 - 1)] + 61)) & 0x15) == 0)
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
    v10 = v308[345];
    if (v295)
    {
      v308[345] = ++v10;
      v9 = v308[9434];
      v6 = v299;
      v7 = v300;
      a3 = v290;
      v11 = v297;
      continue;
    }

    LOBYTE(v9) = v308[9434];
    v6 = v299;
    a3 = v290;
LABEL_229:
    v116 = v6 + 4 * v10;
    *v116 = v13;
    *(v116 + 1) = 257;
    *(v116 + 3) = v9;
    LODWORD(v116) = v9;
    v7 = v300;
    v117 = v300 + 71 * v9;
    *v117 = v13;
    *(v117 + 1) = v13 + 1;
    *(v117 + 2) = 20000;
    *(v117 + 4) = 85;
    *(v117 + 6) = *v17;
    *(v117 + 7) = 0;
    *(v117 + 38) = 0;
    *(v117 + 70) = 1;
    v308[345] = ++v10;
    v9 = (v116 + 1);
    v308[9434] = v116 + 1;
    v118 = (v116 + 1);
    *(v300 + 71 * v118 - 68) = 21573;
    if ((v9 & 0x100) != 0)
    {
      v9 = 0;
      v11 = v297;
    }

    else
    {
      v119 = v308[88];
      v120 = v287;
      v11 = v297;
      do
      {
        if (*(v120 - 2) == v119 && *v120 != 69)
        {
          *v120 = 78;
        }

        v120 += 71;
        --v118;
      }

      while (v118);
    }
  }

  while (v11 < v9);
  if (v9)
  {
    v121 = 0;
    v122 = v9;
    v123 = v9;
    v124 = v308;
    do
    {
      v125 = (v7 + 71 * v121);
      if (v125[4] == 86)
      {
        if (v121 >= v123)
        {
          v127 = v122;
        }

        else
        {
          v126 = 1;
          v127 = v122;
          v128 = v121;
LABEL_242:
          v129 = &v308[71 * v128 + 352];
          do
          {
            if (*(v129 - 5) == *v125)
            {
              __strcpy_chk();
              __strcat_chk();
              v130 = mDictFind(__s);
              if (v130 != 82)
              {
                v131 = v130;
                __strcat_chk();
                v126 = 0;
                *(v129 - 5) = v125[1];
                *(v129 - 3) = v125[3];
                *(v129 - 2) = v131;
                ++v128;
                v124 = v308;
                v122 = v308[9434];
                v127 = v122;
                v132 = v122;
                if (v128 < v122)
                {
                  goto LABEL_242;
                }

                goto LABEL_264;
              }

              v127 = v308[9434];
            }

            ++v128;
            v129 += 71;
          }

          while (v128 < v127);
          v123 = v127;
          v122 = v127;
          v132 = v127;
          v124 = v308;
          if ((v126 & 1) == 0)
          {
            goto LABEL_264;
          }
        }

        v125[3] = 69;
        if (patt_check(v125 + 6, "X\xECPQS") == 1)
        {
          *(v125 + 19) = 33;
        }

        v125[4] = 84;
        if (v123)
        {
          v133 = *v125;
          v134 = v123;
          v135 = v308 + 349;
          do
          {
            if (*(v135 - 2) == v133 && *v135 != 69)
            {
              *v135 = 78;
            }

            v135 += 71;
            --v134;
          }

          while (v134);
          v122 = v127;
          v132 = v123;
        }

        else
        {
          v132 = 0;
          v122 = v127;
        }

        v124 = v308;
      }

      else
      {
        v132 = v123;
      }

LABEL_264:
      ++v121;
      v123 = v132;
      v7 = v300;
    }

    while (v121 < v132);
    v10 = v124[345];
    v6 = v299;
  }

  else
  {
    LOBYTE(v122) = 0;
  }

  if (v10 < 2u)
  {
    v144 = v122;
  }

  else
  {
    v136 = 0;
    v137 = v308 + 93;
    v138 = 1;
    do
    {
      v139 = v136 + 1;
      if (v136 + 1 < v10)
      {
        v140 = (v6 + 4 * v136);
        v141 = v137;
        v142 = v138;
        do
        {
          if (*v140 > *v141)
          {
            v143 = *v140;
            *v140 = *v141;
            *v141 = v143;
            v10 = v308[345];
          }

          ++v142;
          v141 += 4;
        }

        while (v142 < v10);
      }

      ++v138;
      v137 += 4;
      v136 = v139;
    }

    while (v10 - 1 > v139);
    v144 = v308[9434];
  }

  if (v144 >= 2u)
  {
    v145 = 0;
    v146 = v308 + 417;
    v147 = 1;
    do
    {
      v148 = v145 + 1;
      if (v145 + 1 < v144)
      {
        v149 = (v7 + 71 * v145);
        v150 = v146;
        v151 = v147;
        do
        {
          v152 = *v149;
          v153 = *v150;
          if (v152 > v153 || v152 == v153 && v149[1] < v150[1])
          {
            v154 = *(v149 + 3);
            v313 = *(v149 + 2);
            v314[0] = v154;
            *(v314 + 15) = *(v149 + 63);
            v155 = *(v149 + 1);
            *__s = *v149;
            v312 = v155;
            *v149 = *v150;
            v157 = *(v150 + 2);
            v156 = *(v150 + 3);
            v158 = *(v150 + 1);
            *(v149 + 63) = *(v150 + 63);
            *(v149 + 2) = v157;
            *(v149 + 3) = v156;
            *(v149 + 1) = v158;
            *(v150 + 63) = *(v314 + 15);
            v159 = v314[0];
            *(v150 + 2) = v313;
            *(v150 + 3) = v159;
            v160 = v312;
            *v150 = *__s;
            *(v150 + 1) = v160;
          }

          ++v151;
          v150 += 71;
        }

        while (v151 < v308[9434]);
        v144 = v308[9434];
      }

      ++v147;
      v146 += 71;
      v145 = v148;
    }

    while (v144 - 1 > v148);
  }

  if (v10 >= 2u)
  {
    v161 = v10 - 1;
    v162 = v308 + 96;
    do
    {
      *v162 = *(v162 - 6) + *(v162 - 4);
      v162 += 4;
      --v161;
    }

    while (v161);
  }

  v163 = v308[345];
  if (!v308[345])
  {
    return 1;
  }

  v293 = v308 + 348;
  v294 = v308 + 350;
  while (2)
  {
    v164 = (v6 + 4 * --v163);
    v165 = v164[2];
    if (v165 < 2)
    {
      goto LABEL_525;
    }

    v302 = v163;
    v166 = v164[3];
    v296 = (v6 + 4 * v163);
    v167 = v164[1];
    v168 = v167 + v166;
    if (v166 >= (v167 + v166))
    {
      v174 = -1;
      v171 = 0xFFFF;
      v173 = 0xFFFF;
      v176 = -1;
      v182 = v300;
    }

    else
    {
      v169 = (v167 + v166);
      v170 = -1;
      v171 = 0xFFFF;
      v172 = v164[3];
      v173 = 0xFFFF;
      v174 = -1;
      v175 = &v294[71 * v172];
      v176 = -1;
      do
      {
        if (*(v175 - 2) != 89)
        {
          v177 = *(v175 - 1);
          if (v177 == 76)
          {
            v178 = v172;
          }

          else
          {
            v178 = v174;
          }

          if (v177 == 78)
          {
            v178 = v174;
            v179 = v172;
          }

          else
          {
            v179 = v170;
          }

          if (v177 == 70)
          {
            v176 = v172;
          }

          else
          {
            v174 = v178;
            v170 = v179;
          }

          v180 = *v175;
          if (v180 == 88)
          {
            v181 = v172;
          }

          else
          {
            v181 = v173;
          }

          if (v180 == 89)
          {
            v171 = v172;
          }

          else
          {
            v173 = v181;
          }
        }

        v175 += 71;
        ++v172;
      }

      while (v169 != v172);
      v182 = v300;
      if ((v170 & 0x80000000) == 0 && ((v174 & 0x80000000) == 0 || (v176 & 0x80000000) == 0))
      {
        v183 = &v293[71 * v166];
        v184 = v169 - v166;
        do
        {
          if (v183[1] == 78 && *v183 != 89)
          {
            *(v299 + 4 * v163 + 2) = --v165;
            *v183 = 89;
          }

          v183 += 71;
          --v184;
        }

        while (v184);
      }
    }

    if (v174 < 0 && v176 < 0 && (v166 + 1) < v168)
    {
      v185 = *(v182 + 71 * v166 + 1);
      v186 = v166 + 1;
      v187 = &v293[71 * (v166 + 1)];
      v188 = v166;
      while (*(v187 - 1) > v185)
      {
        v189 = v182 + 71 * v188;
        v191 = *(v189 + 2);
        v190 = (v189 + 2);
        v188 = v186;
        if (v191 != 89)
        {
          v185 = *(v187 - 1);
LABEL_333:
          *(v299 + 4 * v163 + 2) = --v165;
          *v190 = 89;
          goto LABEL_334;
        }

        v185 = *(v187 - 1);
LABEL_334:
        ++v186;
        v187 += 71;
        if (v168 == v186)
        {
          goto LABEL_335;
        }
      }

      v190 = v187;
      if (*v187 == 89)
      {
        goto LABEL_334;
      }

      goto LABEL_333;
    }

LABEL_335:
    if (v165 < 2u)
    {
      goto LABEL_525;
    }

    if (v166 >= v168)
    {
      v207 = 0;
      v307 = 0;
      v206 = 0;
    }

    else
    {
      v192 = -1;
      v193 = 0xFFFF;
      v194 = v166;
      v195 = 0xFFFF;
      v196 = 0xFFFF;
      v197 = &v294[71 * v166];
      v198 = 0xFFFF;
      do
      {
        if (*(v197 - 2) != 89)
        {
          if (*(v197 - 1) == 76)
          {
            v192 = v194;
          }

          v199 = *v197;
          if (v199 == 88)
          {
            v200 = v194;
          }

          else
          {
            v200 = v173;
          }

          if (v199 == 89)
          {
            v200 = v173;
            v201 = v194;
          }

          else
          {
            v201 = v171;
          }

          if (v199 == 83)
          {
            v200 = v173;
            v201 = v171;
            v202 = v194;
          }

          else
          {
            v202 = v193;
          }

          if (v199 == 82)
          {
            v203 = v194;
          }

          else
          {
            v203 = v198;
          }

          if (v199 == 81)
          {
            v203 = v198;
            v204 = v194;
          }

          else
          {
            v204 = v195;
          }

          if (v199 == 80)
          {
            v203 = v198;
            v205 = v194;
          }

          else
          {
            v205 = v196;
          }

          if (v199 == 80)
          {
            v204 = v195;
          }

          if (*v197 <= 0x52u)
          {
            v198 = v203;
            v196 = v205;
          }

          else
          {
            v173 = v200;
            v171 = v201;
          }

          if (*v197 > 0x52u)
          {
            v193 = v202;
          }

          else
          {
            v195 = v204;
          }
        }

        v197 += 71;
        ++v194;
      }

      while (v168 != v194);
      v206 = v192 >= 0;
      v307 = (v198 & 0x8000u) == 0;
      v207 = (v196 & v195 & v198 & v193 & 0x8000u) == 0;
      if ((v192 & 0x80000000) == 0 && (v173 & 0x8000) != 0 && (v171 & 0x8000) != 0)
      {
        v208 = v168 - v166;
        v209 = &v293[71 * v166];
        do
        {
          if (v209[1] != 76 && *v209 != 89)
          {
            *(v299 + 4 * v163 + 2) = --v165;
            *v209 = 89;
          }

          v209 += 71;
          --v208;
        }

        while (v208);
        v206 = 1;
      }
    }

    v298 = v163;
    if ((v173 & 0x8000) == 0 || (v171 & 0x8000) == 0)
    {
      if ((v173 & 0x8000) == 0)
      {
        if (v166 < v168)
        {
          v303 = v206;
          v210 = &v294[71 * v166];
          v211 = v166;
          v212 = v308;
          do
          {
            if (v211 != v173 && (*v210 & 0xFE) == 0x58 && *(v210 - 2) != 89)
            {
              v213 = compareXX(v212, v163, v211, v173);
              v212 = v308;
              if (v213)
              {
                LOWORD(v173) = v211;
              }
            }

            ++v211;
            v210 += 71;
          }

          while (v168 != v211);
          goto LABEL_399;
        }

        if (!v206 && v207)
        {
LABEL_444:
          keepLongest(v308, v163);
        }

        goto LABEL_445;
      }

      v214 = v308;
      if (v166 < v168 && (v171 & 0x8000) == 0)
      {
        v303 = v206;
        v215 = &v294[71 * v166];
        v216 = v166;
        do
        {
          if (v216 != v171 && (*v215 & 0xFE) == 0x58 && *(v215 - 2) != 89)
          {
            v217 = compareXX(v214, v163, v216, v171);
            v214 = v308;
            if (v217)
            {
              LOWORD(v171) = v216;
            }
          }

          ++v216;
          v215 += 71;
        }

        while (v168 != v216);
LABEL_399:
        v206 = v303;
      }
    }

    if ((v173 & v171 & 0x8000u) == 0 && v207)
    {
      if (v166 >= v168)
      {
        if (!v206)
        {
          goto LABEL_444;
        }
      }

      else
      {
        v304 = v206;
        v218 = 0;
        v219 = v299 + 4 * v302;
        v220 = &v293[71 * v166];
        v221 = v168 - v166;
        v222 = v166;
        do
        {
          v223 = (v300 + 71 * v222);
          if ((v223[4] & 0xFE) == 0x58 && v223[2] != 89)
          {
            if (v223[3] != 76 && findCfollow(v308, v222, 0x58u) == 255)
            {
              if (v307 && (findCfollow(v308, v222, 0x51u) != 255 || findCfollow(v308, v222, 0x53u) != 255 || findCfollow(v308, v222, 0x50u) != 255))
              {
                v226 = v168 - v166;
                v227 = &v293[71 * v166];
                do
                {
                  if (v227[2] == 82)
                  {
                    if (*v227 != 89)
                    {
                      --*(v219 + 2);
                      *v227 = 89;
                    }

                    v218 = 9;
                  }

                  v227 += 71;
                  --v226;
                }

                while (v226);
              }
            }

            else
            {
              v224 = &v293[71 * v166];
              v225 = v168 - v166;
              do
              {
                if ((v224[2] & 0xFE) != 0x58)
                {
                  if (*v224 != 89)
                  {
                    --*(v219 + 2);
                    *v224 = 89;
                  }

                  v218 = 9;
                }

                v224 += 71;
                --v225;
              }

              while (v225);
            }
          }

          ++v222;
        }

        while (v222 != v168);
        if (v218 != 9 && v307)
        {
          v228 = &v293[71 * v166];
          do
          {
            if (v228[2] == 82 && (allCfollow(v308, v166, 0x52u) || allCfollow(v308, v166, 0x54u)) && *v228 != 89)
            {
              --*(v219 + 2);
              *v228 = 89;
            }

            LOBYTE(v166) = v166 + 1;
            v228 += 71;
          }

          while (v168 != v166);
        }

        v33 = v218 == 9;
        v163 = v298;
        if (!v33)
        {
          if (!v304)
          {
            goto LABEL_444;
          }

          do
          {
            if (v220[1] != 76 && *v220 != 89)
            {
              --*(v219 + 2);
              *v220 = 89;
            }

            v220 += 71;
            --v221;
          }

          while (v221);
        }
      }
    }

LABEL_445:
    v229 = v296[2];
    if (v229 < 2)
    {
      goto LABEL_525;
    }

    v230 = v296[3];
    v231 = v296[1];
    v232 = (v231 + v230);
    v233 = (v231 + v230);
    if (v230 >= (v231 + v230))
    {
      v252 = 0;
      v288 = 1;
      v284 = 1;
      v286 = 1;
      v289 = 1;
    }

    else
    {
      v234 = &v294[71 * v296[3]];
      v235 = 0xFFFF;
      v236 = v296[3];
      v237 = 0xFFFF;
      v238 = 0xFFFF;
      v239 = 0xFFFF;
      v240 = 0xFFFF;
      v241 = 0xFFFF;
      v242 = 0xFFFF;
      do
      {
        if (*(v234 - 2) != 89)
        {
          v243 = *v234;
          if (v243 == 88)
          {
            v244 = v236;
          }

          else
          {
            v244 = v242;
          }

          if (v243 == 89)
          {
            v244 = v242;
            v245 = v236;
          }

          else
          {
            v245 = v241;
          }

          if (v243 == 84)
          {
            v246 = v236;
          }

          else
          {
            v246 = v235;
          }

          if (v243 == 83)
          {
            v247 = v236;
          }

          else
          {
            v247 = v237;
          }

          if (v243 == 83)
          {
            v246 = v235;
          }

          if (*v234 > 0x57u)
          {
            v247 = v237;
            v246 = v235;
          }

          else
          {
            v244 = v242;
            v245 = v241;
          }

          if (v243 == 82)
          {
            v248 = v236;
          }

          else
          {
            v248 = v240;
          }

          if (v243 == 81)
          {
            v248 = v240;
            v249 = v236;
          }

          else
          {
            v249 = v238;
          }

          if (v243 == 80)
          {
            v248 = v240;
            v250 = v236;
          }

          else
          {
            v250 = v239;
          }

          if (v243 == 80)
          {
            v249 = v238;
          }

          if (*v234 <= 0x52u)
          {
            v240 = v248;
            v239 = v250;
          }

          else
          {
            v242 = v244;
            v241 = v245;
          }

          if (*v234 > 0x52u)
          {
            v237 = v247;
          }

          else
          {
            v238 = v249;
          }

          if (*v234 > 0x52u)
          {
            v235 = v246;
          }
        }

        ++v236;
        v234 += 71;
      }

      while (v233 != v236);
      v251 = 0;
      v252 = (v235 & 0x8000u) == 0;
      v289 = (v239 & 0x8000u) != 0;
      v284 = (v240 & 0x8000u) != 0;
      v286 = (v238 & 0x8000u) != 0;
      v288 = (v237 & 0x8000u) != 0;
      if ((v242 & 0x8000) == 0 || (v241 & 0x8000) == 0)
      {
LABEL_515:
        if (v252)
        {
          goto LABEL_516;
        }

        goto LABEL_525;
      }
    }

    v291 = v252;
    v253 = 0;
    do
    {
      v254 = v308;
      if (v230 >= v232)
      {
        LOBYTE(v256) = v230;
      }

      else
      {
        v255 = v232;
        v256 = v230;
        v257 = v230;
        v258 = 71 * v230 + 350;
        while (1)
        {
          if (*(v254 + v258) != 82)
          {
            v259 = aX_4[v253 + 11];
            Cfollow = findCfollow(v254, v256, v259);
            v254 = v308;
            if (Cfollow != 255)
            {
              break;
            }
          }

          ++v256;
          v258 += 71;
          ++v257;
          if (v233 == v256)
          {
            v232 = v255;
            LOBYTE(v256) = v255;
            goto LABEL_507;
          }
        }

        v261 = v257;
        v262 = &v293[71 * v230];
        v263 = v230;
        do
        {
          if (v261 != v263)
          {
            if ((findCfollow(v254, v263, v259) == 255 || v262[2] == 82) && *v262 != 89)
            {
              *(v299 + 4 * v302 + 2) = --v229;
              *v262 = 89;
            }

            v254 = v308;
          }

          ++v263;
          v262 += 71;
        }

        while (v233 != v263);
        v163 = v298;
        v232 = v255;
      }

LABEL_507:
      v264 = v253 + 1;
      if (v256 != v232)
      {
        break;
      }
    }

    while (v253++ < 3);
    v251 = 1;
    if (v256 != v232)
    {
      v252 = v291;
      goto LABEL_515;
    }

    v252 = v291;
    if (v264 != 4)
    {
      goto LABEL_515;
    }

    keepLongest(v308, v163);
    if (v291)
    {
      v229 = v296[2];
      v251 = 1;
LABEL_516:
      if (v229 >= 2u)
      {
        if (v251 & (v289 && v286) & (v284 && v288))
        {
          keepLongest(v308, v163);
        }

        else if (v230 < v232)
        {
          v266 = &v293[71 * v230];
          v267 = v233 - v230;
          do
          {
            if (v266[2] == 84 && *v266 != 89)
            {
              *(v299 + 4 * v302 + 2) = --v229;
              *v266 = 89;
            }

            v266 += 71;
            --v267;
          }

          while (v267);
        }
      }
    }

LABEL_525:
    v6 = v299;
    if (v163)
    {
      continue;
    }

    break;
  }

  v268 = v308[345];
  result = 1;
  if (!v308[345])
  {
    return result;
  }

  v270 = 0;
  v271 = 0;
  v272 = 0;
  while (2)
  {
    v273 = (v299 + 4 * v270);
    if (v273[2] != 2)
    {
      goto LABEL_544;
    }

    v274 = v273[3];
    v275 = v273[1];
    v276 = v275 + v274;
    if (v274 >= (v275 + v274))
    {
      goto LABEL_544;
    }

    v277 = 0;
    v278 = &v308[71 * v273[3] + 347];
    while (2)
    {
      if (v278[1] == 89)
      {
LABEL_534:
        LOBYTE(v274) = v274 + 1;
        v278 += 71;
        if (v276 == v274)
        {
          goto LABEL_544;
        }

        continue;
      }

      break;
    }

    if (!v277)
    {
      v271 = v278[69];
      v272 = v274;
      v277 = *v278;
      goto LABEL_534;
    }

    if (v277 == *v278)
    {
      v279 = v278[69];
      if (v271 <= v279 || (v280 = v300 + 71 * v272, v282 = *(v280 + 2), v281 = (v280 + 2), v282 == 89))
      {
        v283 = 1;
      }

      else
      {
        v283 = 0;
        v273[2] = 1;
        *v281 = 89;
      }

      if (v271 < v279 && v278[1] != 89)
      {
        v273[2] = v283;
        v278[1] = 89;
      }
    }

LABEL_544:
    if (++v270 != v268)
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
    v11 = xmmword_1C37CA010;
    v12 = xmmword_1C37CA020;
    v13 = xmmword_1C37CA030;
    v14 = xmmword_1C37CA040;
    v15 = xmmword_1C37BDD80;
    v16 = xmmword_1C37BDD90;
    v17 = xmmword_1C378AEF0;
    v18 = xmmword_1C378AF00;
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
    v55 = a5;
    v34 = 0;
  }

  else
  {
    v32 = v31;
    v33 = a1 + 71 * v26;
    v34 = strlen((v33 + 384));
    if (*a3 <= v34)
    {
      result = 0;
      v54 = 255;
      goto LABEL_72;
    }

    v55 = a5;
    strcpy(a2, (v33 + 384));
    *a4 = v32;
  }

  if (*(a1 + 345) >= 2u)
  {
    v35 = a1 + 346;
    for (i = 1; i < *(a1 + 345); ++i)
    {
      v37 = (a1 + 89 + 4 * i);
      if (*v37 == *(v35 + 71 * v26 + 1))
      {
        v38 = v37[1];
        if (v38 < v37[2])
        {
          LOBYTE(v38) = v38 + 1;
          v37[1] = v38;
        }

        v26 = v37[3];
        v39 = *(a1 + 9434);
        if (v26 < v39)
        {
          v40 = (a1 + 348 + 71 * v26);
          v41 = 1;
          do
          {
            v42 = *v40;
            v40 += 71;
            if (v42 != 89)
            {
              if (v41 == v38)
              {
                goto LABEL_53;
              }

              ++v41;
            }

            LOBYTE(v26) = v26 + 1;
          }

          while (v39 != v26);
        }

        LOBYTE(v26) = -1;
LABEL_53:
        v43 = rule2phone(a1, v26);
        if ((v43 & 0x80000000) == 0)
        {
          v44 = v43;
          v45 = v35 + 71 * v26;
          v34 += strlen((v45 + 38));
          if (*a3 <= v34)
          {
            result = 0;
LABEL_70:
            v54 = 255;
            goto LABEL_71;
          }

          strcat(a2, (v45 + 38));
          *a4 |= v44;
        }
      }
    }
  }

  v46 = strlen(a2);
  v47 = heap_Calloc(*(*(a1 + 16) + 8), 1, (v46 + 1));
  if (!v47)
  {
    result = 2370838538;
    goto LABEL_70;
  }

  v48 = v47;
  v49 = strcpy(v47, a2);
  if (*a2)
  {
    v50 = 0;
    v49 = v48;
    do
    {
      v51 = a2[v50];
      if (v51 != 39)
      {
        *v49++ = v51;
      }

      ++v50;
    }

    while (v50 < strlen(a2));
  }

  *v49 = 0;
  strcpy(a2, v48);
  heap_Free(*(*(a1 + 16) + 8), v48);
  v52 = strlen(a2);
  result = 0;
  *a3 = v52;
  v54 = 1;
LABEL_71:
  a5 = v55;
LABEL_72:
  *a5 = v54;
  return result;
}

char *ReadThaiChar(char *result, char *__dst)
{
  v2 = cchar_dct;
  if (cchar_dct)
  {
    for (i = &unk_1C37BF0AD; *(i - 1) != result; i += 51)
    {
      if (!--v2)
      {
        return result;
      }
    }

    return strcpy(__dst, i);
  }

  return result;
}

uint64_t contable(uint64_t result, int a2, uint64_t a3)
{
  if (a2)
  {
    switch(result)
    {
      case -95:
      case -94:
      case -92:
      case -90:
        goto LABEL_9;
      case -89:
        goto LABEL_17;
      case -88:
      case -86:
      case -85:
      case -82:
      case -81:
      case -80:
      case -79:
      case -78:
      case -76:
      case -75:
      case -74:
      case -73:
      case -72:
      case -56:
      case -55:
      case -54:
        goto LABEL_3;
      case -87:
      case -84:
      case -68:
      case -67:
      case -60:
      case -58:
      case -53:
      case -51:
      case -50:
        v3 = 45;
        goto LABEL_27;
      case -83:
      case -77:
      case -71:
      case -61:
      case -59:
      case -52:
        goto LABEL_7;
      case -70:
      case -69:
      case -66:
      case -65:
      case -64:
        goto LABEL_8;
      case -63:
        goto LABEL_18;
      case -62:
        goto LABEL_12;
      case -57:
        goto LABEL_16;
      default:
        goto LABEL_19;
    }
  }

  switch(result)
  {
    case -95:
LABEL_9:
      v3 = 107;
      goto LABEL_27;
    case -94:
    case -93:
    case -92:
    case -91:
    case -90:
      *(a3 + 2) = 0;
      v3 = 26731;
      goto LABEL_27;
    case -89:
LABEL_17:
      *(a3 + 2) = 0;
      v3 = 26478;
      goto LABEL_27;
    case -88:
      v3 = 99;
      goto LABEL_27;
    case -87:
    case -86:
    case -84:
      *(a3 + 2) = 0;
      v3 = 26723;
      goto LABEL_27;
    case -85:
    case -56:
    case -55:
    case -54:
      v3 = 115;
      goto LABEL_27;
    case -83:
    case -62:
LABEL_12:
      v3 = 106;
      goto LABEL_27;
    case -82:
    case -76:
      v3 = 100;
      goto LABEL_27;
    case -81:
    case -75:
LABEL_3:
      v3 = 116;
      goto LABEL_27;
    case -80:
    case -79:
    case -78:
    case -74:
    case -73:
    case -72:
      *(a3 + 2) = 0;
      v3 = 26740;
      goto LABEL_27;
    case -77:
    case -71:
LABEL_7:
      v3 = 110;
      goto LABEL_27;
    case -70:
      v3 = 98;
      goto LABEL_27;
    case -69:
LABEL_8:
      v3 = 112;
      goto LABEL_27;
    case -68:
    case -66:
    case -64:
      *(a3 + 2) = 0;
      v3 = 26736;
      goto LABEL_27;
    case -67:
    case -65:
      v3 = 102;
      goto LABEL_27;
    case -63:
LABEL_18:
      v3 = 109;
      goto LABEL_27;
    case -61:
    case -60:
      v3 = 114;
      goto LABEL_27;
    case -59:
    case -58:
    case -52:
      v3 = 108;
      goto LABEL_27;
    case -57:
LABEL_16:
      v3 = 119;
      goto LABEL_27;
    case -53:
    case -50:
      v3 = 104;
      goto LABEL_27;
    case -51:
      v3 = 35;
LABEL_27:
      *a3 = v3;
      break;
    default:
LABEL_19:
      *a3 = 0;
      break;
  }

  return result;
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
  v64 = *MEMORY[0x1E69E9840];
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

    __strcpy_chk();
    v11 = 0uLL;
    while (1)
    {
      switch(psrules[61 * v4[5] + v11])
      {
        case 'A':
          v12 = v7[BYTE4(v11)];
          if (v12 == -61 || (v7[BYTE4(v11)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v12, 0, v61);
          v13 = 65;
          goto LABEL_125;
        case 'B':
          v30 = v7[BYTE4(v11)];
          if (v30 == -57 || (v7[BYTE4(v11)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v30, 0, v61);
          v13 = 66;
          goto LABEL_125;
        case 'C':
          v33 = v7[BYTE4(v11)];
          if ((v33 - 161) > 0x29 || ((1 << (v33 + 95)) & 0x2802C50040BLL) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v33, 0, v61);
          v13 = 67;
          goto LABEL_125;
        case 'D':
          v38 = v7[BYTE4(v11)];
          if ((v38 - 164) > 0x13 || ((1 << (v38 + 92)) & 0xA0041) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v38, 1, v61);
          v13 = 68;
          goto LABEL_125;
        case 'E':
          v37 = v7[BYTE4(v11)];
          if (v37 == -51 || (v7[BYTE4(v11)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v37, 0, v61);
          v13 = 69;
          goto LABEL_125;
        case 'F':
          v35 = v7[BYTE4(v11)];
          if ((v35 - 164) > 0x12 || ((1 << (v35 + 92)) & 0x68001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v35, 1, v61);
          v13 = 70;
          goto LABEL_125;
        case 'G':
          v46 = v7[BYTE4(v11)];
          if ((v46 - 170) > 0x23 || ((1 << (v46 + 86)) & 0x94840A001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v46, 0, v61);
          v13 = 71;
          goto LABEL_125;
        case 'H':
          v22 = v7[BYTE4(v11)];
          if (v22 == -53 || (v7[BYTE4(v11)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v22, 0, v61);
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
          if ((v42 + 49) < 0xD2u)
          {
            continue;
          }

          v43 = v42;
          if (v43 == -57 || v42 == 205)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v43, 0, v61);
          v13 = 74;
          goto LABEL_125;
        case 'K':
          v19 = v7[BYTE4(v11)];
          if ((v19 - 164) > 0x26 || ((1 << (v19 + 92)) & 0x4020000001) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v19, 0, v61);
          v13 = 75;
          goto LABEL_125;
        case 'L':
          v31 = v7[BYTE4(v11)];
          if (v31 != 197 && v31 != 195)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v31, 0, v61);
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
          v48 = v7[BYTE4(v11)];
          if ((v48 + 49) < 0xD2u)
          {
            continue;
          }

          v49 = v48;
          v50 = v48 - 194;
          v27 = v50 > 5;
          v51 = (1 << v50) & 0x23;
          if (!v27 && v51 != 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v49, 1, v61);
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
          v60 = v11;
          contable(v25, 0, v61);
          v13 = 81;
          goto LABEL_125;
        case 'R':
          v23 = v7[BYTE4(v11)];
          if ((v23 - 195) > 4 || ((1 << (v23 + 61)) & 0x15) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v23, 0, v61);
          v13 = 82;
          goto LABEL_125;
        case 'S':
          v44 = v7[BYTE4(v11)];
          if ((v44 - 174) > 0x1B || ((1 << (v44 + 82)) & 0x8000003) == 0)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v44, 1, v61);
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
          v60 = v11;
          contable(v16, 1, v61);
          v13 = 85;
          goto LABEL_125;
        case 'W':
          v54 = v7[BYTE4(v11)];
          if (v54 == -62 || (v7[BYTE4(v11)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v54, 1, v61);
          v13 = 87;
          goto LABEL_125;
        case 'X':
          v17 = v7[BYTE4(v11)];
          if ((v17 + 95) > 0x2D)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v17, 0, v61);
          v13 = 88;
          goto LABEL_125;
        case 'Y':
          v53 = v7[BYTE4(v11)];
          if ((v53 + 95) > 0x2D)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v53, 1, v61);
          v13 = 89;
          goto LABEL_125;
        case 'Z':
          v32 = v7[BYTE4(v11)];
          if (v32 == -57 || (v7[BYTE4(v11)] + 49) < 0xD2u)
          {
            continue;
          }

          *&v11 = vadd_s32(*&v11, 0x100000001);
          v60 = v11;
          contable(v32, 1, v61);
          v13 = 90;
LABEL_125:
          replace(v13, v61, &v62);
          v11 = v60;
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
            tone(&v62, v4 + 6);
            __strcat_chk();
            if (!(v62 ^ 0x3021 | v63))
            {
              LOBYTE(v62) = 0;
            }

            __strcpy_chk();
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

  if (strlen(v4 + 6) == 1)
  {
    ReadThaiChar(v4[6], v6);
    return 1;
  }

  v55 = strlen(v4 + 6);
  *v6 = 0;
  if (!v55)
  {
    return 1;
  }

  v56 = v55;
  for (i = 0; i != v56; ++i)
  {
    if (cchar_dct)
    {
      v58 = &unk_1C37BF0AD;
      v59 = cchar_dct;
      while (*(v58 - 1) != v7[i])
      {
        v58 += 51;
        if (!--v59)
        {
          goto LABEL_137;
        }
      }

      strcat(v6, v58);
    }

LABEL_137:
    result = 1;
  }

  return result;
}

char *replace(char *result, const char *a2, char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    if (*a3 == result)
    {
      v5 = 0;
LABEL_7:
      v7 = &a3[v5];
      __strcpy_chk();
      strcpy(v7, a2);
      return strcat(a3, __s2);
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v5 = ++v6;
        if (!a3[v6])
        {
          break;
        }

        if (a3[v6] == result)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t tone(char *a1, char *a2)
{
  v46 = 0;
  if (*a1 == 33)
  {
    return 48;
  }

  v4 = a1;
  if (strchr(a1, 39))
  {
    if (strchr(a2, 234) || strchr(a2, 235))
    {
      return 57;
    }

    do
    {
      v7 = *a2++;
      v6 = v7;
    }

    while ((v7 + 49) < 0xD2u);
    v8 = v6 + 95;
    if (v8 > 0x2Cu)
    {
      v10 = 76;
      v9 = "3";
    }

    else
    {
      v9 = off_1E81A5478[v8];
      v10 = byte_1C37CA050[v8];
    }

    replace(0x2B, v9, v4);
    do
    {
      v36 = *v4++;
    }

    while (v36 != 39);
  }

  else
  {
    v10 = 76;
  }

  v11 = 0;
  v12 = &v40;
  v13 = &v44;
  v14 = v45;
  for (i = v4; ; ++i)
  {
    v16 = *i;
    if ((v16 - 64) <= 0x38 && ((1 << (v16 - 64)) & 0x162822200000001) != 0)
    {
      v18 = v12++;
      v11 = 1;
      goto LABEL_18;
    }

    if (!*i || v16 == 43)
    {
      break;
    }

    if (v11)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    if (v11)
    {
      ++v13;
    }

    else
    {
      ++v14;
    }

    if (!v11)
    {
      v11 = 0;
    }

LABEL_18:
    *v18 = v16;
  }

  *v14 = 0;
  *v13 = 0;
  *v12 = 0;
  v19 = v44 - 106;
  v20 = v19 > 0xD;
  v21 = (1 << v19) & 0x2019;
  v22 = v20 || v21 == 0;
  if (!v22 || (v26 = 1, !v44) && v40 == v41)
  {
    if ((patt_check(a2, "\xE0\x58\x54X") == 1 || patt_check(a2, "\xE0\x58\x58TX") == 1) && (strchr(a2, 232) || strchr(a2, 233)) && (v23 = strchr(v4, 101)) != 0 || (patt_check(a2, "\xE0\x58\xD4\xE8\x58\xE0\x58\x58\xD4\xE8X") == 1 || patt_check(a2, "\xE0\x58\x58\xD4\xE8X") == 1) && (v23 = strchr(v4, 113)) != 0 || (patt_check(a2, "\xE1\x58\xE8X") == 1 || patt_check(a2, "\xE1\x58\x58\xE8\x58X\xE8\xCD\x58") == 1) && (v23 = strchr(v4, 120)) != 0 || (patt_check(a2, "X\xE8\xCD\x58") == 1 || patt_check(a2, "XX\xE8\xCD\x58") == 1) && (v23 = strchr(v4, 64)) != 0)
    {
      v24 = v23;
      v25 = strlen(v23 + 1);
      memmove(v24, v24 + 1, v25 + 1);
    }

    v26 = 0;
  }

  v46 = 32;
  v27 = *a2;
  if (*a2)
  {
    v28 = 0;
    v29 = a2 + 1;
    v30 = v43;
    v31 = v42;
    while ((v27 - 161) > 0x2D)
    {
      if ((v27 & 0xFC) == 0xE8)
      {
        v32 = &v46;
LABEL_62:
        *v32 = v27;
      }

      v33 = *v29++;
      v27 = v33;
      if (!v33)
      {
        goto LABEL_66;
      }
    }

    if (v28)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (v28)
    {
      ++v31;
    }

    else
    {
      ++v30;
    }

    if (!v28)
    {
      v28 = 1;
    }

    goto LABEL_62;
  }

  v31 = v42;
  v30 = v43;
LABEL_66:
  *v31 = 0;
  *v30 = 0;
  if (v45[1] != 104)
  {
    if ((v35 = v45[0] - 98, v35 <= 0x12) && ((1 << v35) & 0x44207) != 0 || v45[0] == 35)
    {
      v34 = v46;
      if (v26)
      {
        v2 = 57;
        if (v46 > 0xE8u)
        {
          if (v46 == 235)
          {
            return v2;
          }

LABEL_86:
          if (v46 != 234)
          {
            goto LABEL_87;
          }

          return 51;
        }

        if (v46 != 32)
        {
          if (v46 == 232)
          {
            return v2;
          }

          return 48;
        }

        return 49;
      }

      if (v46 > 0xE8u)
      {
        if (v46 != 235)
        {
          goto LABEL_86;
        }

        return 52;
      }

      if (v46 == 32)
      {
        return 48;
      }

LABEL_104:
      if (v34 == 232)
      {
        return 49;
      }

      return 48;
    }
  }

  if (v43[0] - 162 <= 0x29 && ((1 << (v43[0] + 94)) & 0x3C00C104081) != 0)
  {
    v34 = v46;
    if (v26)
    {
      v2 = 57;
      if (v46 <= 0xE9u)
      {
        if (v46 == 32)
        {
          return 49;
        }

        if (v46 == 232)
        {
          return v2;
        }

        goto LABEL_87;
      }

LABEL_113:
      if ((v34 - 234) < 2)
      {
        return v2;
      }

      return 48;
    }

    if (v46 <= 0xE8u)
    {
      if (v46 == 32)
      {
        return 52;
      }

      goto LABEL_104;
    }

    if (v46 != 235 && v46 != 234)
    {
LABEL_87:
      if (v34 == 233)
      {
        return 50;
      }

      return 48;
    }

    return 57;
  }

  if (v26)
  {
    v34 = v46;
    if (v40 == v41)
    {
      v2 = 57;
      if (v46 > 0xE9u)
      {
        goto LABEL_113;
      }

      if (v46 != 32)
      {
        if (v46 == 232)
        {
          return v2;
        }

        if (v46 != 233)
        {
          return 48;
        }

        return 51;
      }

LABEL_126:
      v37 = v10 == 77 || v10 == 72;
LABEL_129:
      v2 = 49;
LABEL_130:
      if (!v37)
      {
        ++v2;
      }

      return v2;
    }

    if (v46 - 233 < 3)
    {
      return 57;
    }

    if (v46 != 32)
    {
      if (v46 != 232)
      {
        return 48;
      }

      v37 = v10 == 77;
      goto LABEL_129;
    }

    v38 = v10 == 77 || v10 == 72;
    v2 = 51;
    v39 = 49;
  }

  else
  {
    if (v46 > 0xE9u)
    {
      if (v46 - 234 >= 2)
      {
        return 48;
      }

      return 57;
    }

    if (v46 != 32)
    {
      if (v46 != 232)
      {
        if (v46 != 233)
        {
          return 48;
        }

        v37 = v10 == 72;
        v2 = 50;
        goto LABEL_130;
      }

      goto LABEL_126;
    }

    v38 = v10 == 72;
    v2 = 48;
    v39 = 52;
  }

  if (v38)
  {
    return v39;
  }

  return v2;
}

char *transform(char *__s, char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (__PAIR64__(a2[1], *a2) == 0xC2000000CDLL)
  {
    v4 = strchr(__s, 39);
    if (v4)
    {
      v5 = v4;
      v6 = strlen(v4 + 1);
      v7 = v5 + 1;
LABEL_29:
      v19 = v6 + 1;
      v20 = __s;
      goto LABEL_32;
    }
  }

  v8 = strchr(__s, 104);
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 - 1) - 99;
    v11 = v10 > 0x11;
    v12 = (1 << v10) & 0x22101;
    if (v11 || v12 == 0)
    {
      v24 = strchr(__s, 39);
      if (v24 > v9)
      {
        v25 = v24;
        v6 = strlen(v24 + 1);
        v7 = v25 + 1;
        goto LABEL_29;
      }
    }
  }

  v14 = strchr(a2, 195);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = *(v14 - 1);
  if (v15 == 202)
  {
    goto LABEL_13;
  }

  if (v15 != 183)
  {
    if (v15 == 171)
    {
LABEL_13:
      if (!strchr(__s, 39))
      {
        v26 = strchr(__s, 114);
        if (v26)
        {
          v27 = v26;
          v28 = strlen(v26 + 1);
          v7 = v27 + 1;
          v19 = v28 + 1;
          v20 = v27;
          goto LABEL_32;
        }
      }
    }

LABEL_16:
    result = strchr(__s, 43);
    if (!result || (v17 = result + 1, result[1] != 39))
    {
      v21 = *__s;
      if (v21 == 116)
      {
        if (__s[1] == 119)
        {
          v23 = 3236212;
        }

        else
        {
          if (__s[2] != 119)
          {
            return result;
          }

          v32 = 0;
          v23 = 828467316;
        }
      }

      else
      {
        if (v21 != 115)
        {
          return result;
        }

        v22 = __s[1] - 108;
        if (v22 > 0xB || ((1 << v22) & 0x841) == 0)
        {
          return result;
        }

        v23 = 3236211;
      }

      *__src = v23;
      __strcat_chk();
      return strcpy(__s, __src);
    }

    *result = 49;
    v18 = result + 2;
    v19 = strlen(result + 2) + 1;
    v20 = v17;
    goto LABEL_19;
  }

  if (strchr(__s, 39) || patt_check(a2, "\xB7\xC3\xC7\xB4") != 1 && patt_check(a2, "\xB7\xC3\xC7\xA7") != 1 && patt_check(a2, "\xB7ç") != 1 && patt_check(a2, "\xB7\xC3\xD2\xBA") != 1 && patt_check(a2, "\xB7\xC3\xD2\xC1\xB7\xC3\xD2\xC2\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") != 1 && patt_check(a2, "\xB7\xC3\xD2\xC2\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") != 1 && patt_check(a2, "\xE2\xB7\xC3\xC1\xB7\xC3\xD8\xB4") != 1 && patt_check(a2, "\xB7\xC3\xD8\xB4") != 1 && patt_check(a2, "\xB7\xC3\xD5") != 1)
  {
    goto LABEL_16;
  }

  v29 = strchr(__s, 114);
  if (!v29)
  {
    goto LABEL_16;
  }

  v18 = v29;
  *v29 = 115;
  v30 = v29 - 2;
  v19 = strlen(v29) + 1;
  v20 = v30;
LABEL_19:
  v7 = v18;
LABEL_32:

  return memmove(v20, v7, v19);
}

uint64_t wparserCrf_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2350915585;
  }

  result = 0;
  *a2 = &IWparserImplCrf;
  return result;
}

uint64_t wparser_impl_crf_ClassOpen(_WORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (!a3)
  {
    return 2350915591;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = InitRsrcFunction(a1, a2, &v7);
  if ((result & 0x80000000) == 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
  }

  return result;
}

uint64_t wparser_impl_crf_ObjOpen(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  MaxWordLen = 2350915591;
  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    inited = InitRsrcFunction(a3, a4, &v15);
    if ((inited & 0x80000000) != 0)
    {
      return inited;
    }

    else
    {
      log_OutText(*(v15 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjOpen: Begin");
      v12 = heap_Calloc(*(v15 + 8), 1, 88);
      if (v12)
      {
        v13 = v12;
        *v12 = a3;
        v12[1] = a4;
        v12[2] = v15;
        v12[3] = a1;
        v12[4] = a2;
        v12[5] = a1;
        v12[6] = "WPARSER_IMPL_CRF";
        MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(v12);
        *a5 = v13;
        *(a5 + 8) = 87652;
        log_OutText(*(v15 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjOpen: End (%x)", MaxWordLen);
      }

      else
      {
        return 2350915594;
      }
    }
  }

  return MaxWordLen;
}

uint64_t wparser_impl_crf_ObjClose(uint64_t *a1, int a2)
{
  Only_DereferenceCnt = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((Only_DereferenceCnt & 0x80000000) == 0)
  {
    v4 = a1[2];
    log_OutText(*(v4 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjClose : Begin");
    v5 = a1[10];
    if (!v5)
    {
LABEL_5:
      heap_Free(*(v4 + 8), a1);
      log_OutText(*(v4 + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjClose : End (%x)", Only_DereferenceCnt);
      return Only_DereferenceCnt;
    }

    Only_DereferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(a1[2], a1[5], v5);
    if ((Only_DereferenceCnt & 0x80000000) == 0)
    {
      a1[10] = 0;
      goto LABEL_5;
    }
  }

  return Only_DereferenceCnt;
}

uint64_t wparser_impl_crf_ObjReopen(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((v3 & 0x80000000) != 0)
  {
    return v3;
  }

  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjReopen : Begin");
  MaxWordLen = wparser_impl_crf_loc_GetMaxWordLen(a1);
  log_OutText(*(*(a1 + 16) + 32), "WPARSER_IMPL_CRF", 4, 0, "WPARSER_IMPL CRF ObjReopen : End (%x)", MaxWordLen);
  return MaxWordLen;
}

uint64_t wparser_impl_crf_Init(char *a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 7549556;
  memset(v20, 0, sizeof(v20));
  v16 = 0;
  inited = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  inited = (*(*a3 + 72))(a3[1], a3[2], &v17, a1 + 68);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(a1 + 7) = a3;
  *(a1 + 16) = a6;
  inited = InitRsrcFunction(*a1, *(a1 + 1), &v16);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v10 = v16;
  v18 = 0;
  *v19 = 0;
  Str = paramc_ParamGetStr(*(v16 + 40), "langcode", v19);
  if (Str < 0 || (Str = paramc_ParamGetStr(*(v10 + 40), "fecfg", &v18), Str < 0) || (Str = brokeraux_ComposeBrokerString(v10, "wpcrf", 1, 1, *v19, 0, 0, v20, 0x80uLL), Str < 0))
  {
    v15 = Str;
    log_OutText(*(v16 + 32), "WPARSER_IMPL_CRF", 0, 0, "Could not assemble broker string for WPCRF model");
    return v15 | 0x8C202000;
  }

  else
  {
    log_OutText(*(v16 + 32), "WPARSER_IMPL_CRF", 5, 0, "looking for WPCRF model at %s", v20);
    Only_ReferenceCnt = crf_Init_ReadOnly_ReferenceCnt(*a1, *(a1 + 1), *(a1 + 3), *(a1 + 4), a1 + 10, 2, v20, "CRPH", 12341, 48, 0);
    if ((Only_ReferenceCnt & 0x80000000) != 0)
    {
      log_OutText(*(v16 + 32), "WPARSER_IMPL_CRF", 5, 0, "no CRF PW model found", v20);
      v13 = *(a1 + 10);
      if (v13)
      {
        Only_ReferenceCnt = crf_Deinit_ReadOnly_DereferenceCnt(*(a1 + 2), *(a1 + 5), v13);
        if ((Only_ReferenceCnt & 0x80000000) == 0)
        {
          *(a1 + 10) = 0;
        }
      }
    }
  }

  return Only_ReferenceCnt;
}

uint64_t wparser_impl_crf_Normalize(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _WORD *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    *(a3 + a5) = 0;
    if (*(a1 + 68) != 1 || (result = wordm_mapt2s(*(a1 + 56), a3, a5), (result & 0x80000000) == 0))
    {
      v22 = *(a1 + 16);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      v25 = *(a1 + 80);

      return DoWPCRF(v22, v23, v24, v25, a3, a5, a6, a7, a8, a12, a15);
    }
  }

  return result;
}

uint64_t wparser_impl_crf_Spell(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned int a11)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    LOWORD(v18) = a9;
    return DoSpell(*(a1 + 16), *(a1 + 48), *(a1 + 56), a3, a5, a6, a7, a8, v18, a10, a11, *(a1 + 72));
  }

  return result;
}

uint64_t wparser_impl_crf_Latin(uint64_t a1, int a2, uint64_t a3, int a4, char **a5)
{
  result = safeh_HandleCheck(a1, a2, 87652, 88);
  if ((result & 0x80000000) == 0)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 56);

    return DoLatin(v10, v11, a3, a4, a5);
  }

  return result;
}

uint64_t wparser_impl_crf_loc_GetMaxWordLen(uint64_t a1)
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
  v4 = atoi(v6);
  if ((v4 - 1) <= 0xFE)
  {
LABEL_5:
    *(a1 + 72) = v4;
    return v3;
  }

  return 15;
}

uint64_t DoWPCRF(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _WORD *a10, uint64_t a11)
{
  v82 = *MEMORY[0x1E69E9840];
  v71 = 0;
  v70 = 0;
  v69 = 0;
  LogLevel = log_GetLogLevel(*(a1 + 32));
  v64 = LogLevel > 4;
  *__s = 0;
  *(a11 + 8) = 0;
  *(a11 + 16) = 1;
  if ((bed_GetpElem(a8, 0xFFFFu, __s) & 0x80000000) == 0)
  {
    v19 = *(*__s + 36);
    if (!a6 || a6 == v19)
    {
      v20 = "- aborting alignment";
      if (*(a11 + 16))
      {
        v20 = "";
      }
    }

    else
    {
      *(a11 + 16) = 0;
      v20 = "- aborting alignment";
    }

    log_OutText(*(a1 + 32), a2, 5, 0, "[WPCRF] (length for CRF %d - region length in Marker %d %s)", a6, v19, v20);
  }

  v67 = a2;
  v21 = heap_Calloc(*(a1 + 8), a6, 8);
  if (v21)
  {
    v22 = v21;
    v23 = heap_Calloc(*(a1 + 8), a6, 8);
    if (v23)
    {
      v68 = heap_Calloc(*(a1 + 8), a6, 8);
      if (v68)
      {
        v66 = v23;
        v62 = a7;
        v63 = a8;
        if (a6)
        {
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v81 = 0;
            v79 = 0u;
            v80 = 0u;
            *__s = 0u;
            v78 = 0u;
            v76 = 0;
            v74 = 0u;
            v75 = 0u;
            *__src = 0u;
            v73 = 0u;
            v26 = utf8_determineUTF8CharLength(*(a5 + v24));
            sysdct_wpcrf_LookUp_Chinese(a3, a5 + v24, v26, __s, __src, (v66 + 8 * v25));
            if (LogLevel >= 5)
            {
              log_OutText(*(a1 + 32), v67, 5, 0, "[WPCRF] Feat: %s", __s);
            }

            v27 = heap_Calloc(*(a1 + 8), 1, 65);
            *(v68 + 8 * v25) = v27;
            if (!v27)
            {
              goto LABEL_67;
            }

            if (!__src[0])
            {
              break;
            }

            if (*__src ^ 0x4C4C554E | __src[4])
            {
              strcpy(v27, __src);
LABEL_20:
              v28 = strlen(__s);
              v29 = heap_Calloc(*(a1 + 8), 1, v28 + 1);
              v22[v25] = v29;
              if (!v29)
              {
                goto LABEL_67;
              }

              strcpy(v29, __s);
              ++v25;
              goto LABEL_23;
            }

            heap_Free(*(a1 + 8), v27);
            *(v68 + 8 * v25) = 0;
LABEL_23:
            v24 += v26;
            if (v24 >= a6)
            {
              goto LABEL_31;
            }
          }

          strncpy(v27, (a5 + v24), v26);
          goto LABEL_20;
        }

        v25 = 0;
LABEL_31:
        v35 = a9;
        crf_Process(a4, v22, v25, &v69, &v70);
        v36 = v63;
        if (v70)
        {
          v37 = heap_Calloc(*(a1 + 8), 64, v70);
          if (!v37)
          {
LABEL_67:
            v30 = 2350915594;
LABEL_78:
            v31 = v69;
            LODWORD(v32) = v70;
            if (v25)
            {
              v56 = 0;
              v57 = v25;
              do
              {
                v58 = v22[v56];
                if (v58)
                {
                  heap_Free(*(a1 + 8), v58);
                }

                ++v56;
              }

              while (v25 != v56);
              heap_Free(*(a1 + 8), v22);
              heap_Free(*(a1 + 8), v66);
              v59 = v68;
              do
              {
                if (*v59)
                {
                  heap_Free(*(a1 + 8), *v59);
                }

                ++v59;
                --v57;
              }

              while (v57);
            }

            else
            {
              heap_Free(*(a1 + 8), v22);
              heap_Free(*(a1 + 8), v66);
            }

            v33 = *(a1 + 8);
            v34 = v68;
LABEL_90:
            heap_Free(v33, v34);
            if (!v31)
            {
              return v30;
            }

            goto LABEL_91;
          }

          v38 = v37;
          if (v70)
          {
            v39 = 0;
            v40 = v66;
            do
            {
              v41 = v69;
              if (LogLevel >= 5)
              {
                log_OutText(*(a1 + 32), v67, 5, 0, "[WPCRF] Predicted Tag: %s", *(v69 + 8 * v39));
                v41 = v69;
              }

              v42 = **(v41 + 8 * v39);
              if ((v42 == 83 || v42 == 66) && *v38 && (v42 != 83 || *v40 != 1) && (v39 && !*(v40 - 2) || strlen(v38) >= 2))
              {
                hlp_updateWord(a9, v38, a10, a1, a11, &v71);
                bzero(v38, v70 << 6);
              }

              v43 = *(v68 + 8 * v39);
              if (v43)
              {
                strcat(v38, v43);
              }

              ++v39;
              v40 += 2;
            }

            while (v39 < v70);
          }

          if (*v38)
          {
            hlp_updateWord(a9, v38, a10, a1, a11, &v71);
          }

          heap_Free(*(a1 + 8), v38);
          v36 = v63;
          if (a6)
          {
            *__s = 0;
            *__src = 0;
            if ((bed_GetcElem(a9, __src) & 0x80000000) == 0)
            {
              if (*__src)
              {
                UTOISubTrace(v64, a1, a9, "replacement string");
                if (*(a11 + 16) == 1 && (bed_GetpElem(a9, 0, __s) & 0x80000000) == 0)
                {
                  v44 = *__src;
                  if (*__src)
                  {
                    v45 = 0;
                    v46 = 0;
                    v47 = 1;
                    v48 = *__s;
                    do
                    {
                      if (*(v48 + v45) == 16)
                      {
                        v49 = *(a11 + 8);
                        if (v46 >= v49)
                        {
LABEL_69:
                          log_OutText(*(a1 + 32), v67, 5, 0, "[WPCRF] cant find non-deleted word to align new word number %d with", v47);
                          v53 = 0;
                          goto LABEL_70;
                        }

                        v50 = v46;
                        v51 = (*a11 + 12 * v46 + 4);
                        while (1)
                        {
                          v52 = *v51;
                          v51 += 3;
                          if (v52 != 1)
                          {
                            break;
                          }

                          if (v49 == ++v50)
                          {
                            goto LABEL_69;
                          }
                        }

                        *(*a11 + 12 * v50 + 8) = v45;
                        ++v47;
                        v46 = v50 + 1;
                        v44 = *__src;
                      }

                      ++v45;
                    }

                    while (v45 < v44);
                  }

                  v53 = 1;
LABEL_70:
                  if (LogLevel >= 5 && *(a11 + 8))
                  {
                    v54 = 0;
                    v55 = 0;
                    do
                    {
                      log_OutText(*(a1 + 32), v67, 5, 0, "[WPCRF] [%d] origWordPos=%d, newPos=%d, bDeleted=%d", v55++, *(*a11 + v54), *(*a11 + v54 + 8), *(*a11 + v54 + 4));
                      v54 += 12;
                    }

                    while (v55 < *(a11 + 8));
                  }

                  v36 = v63;
                  v35 = a9;
                  if (v53)
                  {
                    *(a11 + 12) = 0;
                  }
                }
              }

              else
              {
                log_OutText(*(a1 + 32), v67, 5, 0, "[WPCRF] deleting region, no replacement text found");
              }
            }
          }
        }

        v30 = utoin_IncrReplaceCurrentRegion(v62, v36, v35, a6, a11);
        if ((v30 & 0x80000000) == 0)
        {
          UTOITrace(v64, a1, v62, v36, "END of DOWPCRF");
        }

        goto LABEL_78;
      }
    }

    v30 = 2586845194;
    v31 = v69;
    LODWORD(v32) = v70;
    heap_Free(*(a1 + 8), v22);
    if (v23)
    {
      v33 = *(a1 + 8);
      v34 = v23;
      goto LABEL_90;
    }
  }

  else
  {
    v30 = 2586845194;
    v31 = v69;
    LODWORD(v32) = v70;
  }

  if (!v31)
  {
    return v30;
  }

LABEL_91:
  if (v32)
  {
    v32 = v32;
    v60 = v31;
    do
    {
      if (*v60)
      {
        heap_Free(*(a1 + 8), *v60);
      }

      ++v60;
      --v32;
    }

    while (v32);
  }

  heap_Free(*(a1 + 8), v31);
  return v30;
}