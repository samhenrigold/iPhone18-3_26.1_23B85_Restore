uint64_t PDSFcorsrt(char *__src, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v63 = *MEMORY[0x1E69E9840];
  if (*(a5 + 3194) == 1)
  {

    return PDcorsrt(__src, a2, a3, a4, a5);
  }

  else
  {
    v11 = *(a5 + 3168);
    v12 = *(*(a5 + 32) + 32);
    v13 = *(a5 + 104);
    if (v13 && (v15 = *(v13 + 34), v14 = (v13 + 34), v15))
    {
      v16 = strcpy(v12, v14);
      strcat(v16, __src);
    }

    else
    {
      strcpy(v12, __src);
    }

    v17 = *(a5 + 104);
    if (v17)
    {
      v19 = *(v17 + 44);
      v18 = (v17 + 44);
      if (v19)
      {
        strcat(v12, v18);
      }
    }

    v58 = a2;
    if (a2 <= v7)
    {
      v60 = *(a5 + 64);
      v59 = *(a5 + 48);
      LOWORD(v20) = a2;
      v21 = *(a4 + 56);
      do
      {
        v22 = v7;
        v23 = v20;
        v24 = (v59 + *(v60 + 2 * v20));
        v25 = strlen(v12);
        v26 = strlen(v24);
        memset(v62, 0, sizeof(v62));
        memset(v61, 0, sizeof(v61));
        if (v25 >= 1)
        {
          v27 = 0;
          do
          {
            v28 = &v12[v27];
            v29 = *v28;
            if (v29 != v28[1])
            {
              v30 = (((*(v21 + 4 * v29) >> 25) & 0x20) + v29);
              ++*(v62 + v30);
            }

            ++v27;
          }

          while (v25 > v27);
        }

        if (v26 >= 1)
        {
          v31 = 0;
          do
          {
            v32 = &v24[v31];
            v33 = *v32;
            if (v33 != *(v32 + 1))
            {
              v34 = (((*(v21 + 4 * v33) >> 25) & 0x20) + v33);
              ++*(v61 + v34);
            }

            ++v31;
          }

          while (v26 > v31);
        }

        v35 = 0;
        v36 = 0;
        do
        {
          v37 = *(v62 + v35) - *(v61 + v35);
          if (v37)
          {
            if (v37 < 0)
            {
              v37 = *(v61 + v35) - *(v62 + v35);
            }

            if ((*(v21 + 4 * v35) & 0x10000000) != 0)
            {
              v36 += 2 * v37;
            }

            else
            {
              v36 += 3 * v37;
            }
          }

          ++v35;
        }

        while (v35 != 256);
        if (v25 < 1)
        {
          v49 = 0;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          do
          {
            if (v26 >= 1)
            {
              v41 = 0;
              v42 = 0;
              do
              {
                v43 = 0;
                do
                {
                  v44 = v43;
                  v45 = v38 + v43;
                  v46 = v41 + v43++;
                }

                while (v46 < v26 && v12[v45] == v24[v46] && v45 < v25);
                if (v44 > v40)
                {
                  v40 = v44;
                }

                v41 = ++v42;
              }

              while (v26 > v42);
            }

            v38 = ++v39;
          }

          while (v25 > v39);
          v49 = v40;
        }

        v50 = v25 - v26;
        if (v50 < 0)
        {
          LOWORD(v50) = v26 - v25;
        }

        *(v11 + 2 * v23) = 2 * v36 + 4 * v50 - v49 + 16 * (v12[v25 - 1] != v24[v26 - 1]);
        v20 = (v23 + 1);
        v7 = v22;
      }

      while (v20 <= v22);
    }

    if (v58 < v7)
    {
      v51 = v7 + v58;
      v52 = v58;
      do
      {
        if (v51 - v52 > v58)
        {
          v53 = v58;
          LOWORD(v54) = v58;
          do
          {
            v54 = v54;
            v55 = v53 + 1;
            if (*(v11 + 2 * v54) > *(v11 + 2 * v55))
            {
              v56 = *(a5 + 64);
              v57 = *(v56 + 2 * v54);
              *(v56 + 2 * v54) = *(v56 + 2 * v55);
              *(v56 + 2 * v55) = v57;
              LOWORD(v56) = *(v11 + 2 * v54);
              *(v11 + 2 * v54) = *(v11 + 2 * v55);
              *(v11 + 2 * v55) = v56;
            }

            LOWORD(v54) = v54 + 1;
            v53 = v54;
          }

          while (v51 - v52 > v54);
        }

        ++v52;
      }

      while (v52 != v7);
    }

    return 10;
  }
}

uint64_t PDhypins(char *a1, uint64_t *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      if (v3 != a3)
      {
        v7 = v6 + 1;
        __src[v6] = v3;
        v8 = *&__src[4 * v5 - 1];
        if (v8 < 0)
        {
          __src[(v6 + 1)] = a3;
          v7 = v6 + 2;
        }

        *&__src[4 * v5 - 1] = 2 * v8;
        if (v4 == 31)
        {
          ++v5;
        }

        v6 = v7;
      }

      if (v4 > 0x3E)
      {
        break;
      }

      v3 = a1[++v4];
    }

    while (v3);
  }

  else
  {
    LOWORD(v6) = 0;
  }

  __src[v6] = 0;
  strcpy(a1, __src);
  return v6;
}

uint64_t PDhypstrip(_BYTE *a1, void *a2, int a3)
{
  *a2 = 0;
  v3 = *a1;
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0x80000000;
    do
    {
      if (v3 == a3)
      {
        if (v6 == 32)
        {
          *a2 |= 1u;
          v6 = 32;
        }

        else
        {
          *(a2 + v5) |= 2 * v7;
        }
      }

      else
      {
        v8 = v6++;
        a1[v8] = v3;
        v7 >>= 1;
        if (v6 == 32)
        {
          ++v5;
          v7 = 0x80000000;
        }
      }

      if (v4 > 0x3E)
      {
        break;
      }

      v3 = a1[++v4];
    }

    while (v3);
  }

  else
  {
    v6 = 0;
  }

  a1[v6] = 0;
  return v6;
}

_WORD *OpenOutputBuffer(unsigned int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x10100401D138D4BuLL);
  if (v2)
  {
    *v2 = malloc_type_calloc(a1 + 64, 1uLL, 0x100004077774924uLL);
    v2[4] = 0;
    v2[6] = 0;
    *(v2 + 10) = 0x80;
  }

  return v2;
}

uint64_t build_tree(unsigned __int16 *a1)
{
  a1[2052] = -1;
  v1 = 257;
  while (2)
  {
    v2 = 0;
    v3 = 513;
    v4 = a1;
    v5 = 513;
    do
    {
      v6 = v5;
      v8 = *v4;
      v4 += 4;
      v7 = v8;
      if (v8)
      {
        if (v7 < a1[4 * v6])
        {
          v5 = v2;
          v3 = v6;
          goto LABEL_9;
        }

        if (v7 < a1[4 * v3])
        {
          v3 = v2;
        }
      }

      v5 = v6;
LABEL_9:
      ++v2;
    }

    while (v1 != v2);
    if (v3 != 513)
    {
      v9 = &a1[4 * v5];
      v10 = &a1[4 * v3];
      v11 = &a1[4 * v1];
      *v11 = *v10 + *v9;
      v9[1] = *v9;
      *v9 = 0;
      v10[1] = *v10;
      *v10 = 0;
      v11[2] = v5;
      v11[3] = v3;
      v12 = v1 + 1;
      if (v1++ >= 0x7FFFu)
      {
        LOWORD(v1) = v12;
        break;
      }

      continue;
    }

    break;
  }

  v14 = v1 - 1;
  a1[4 * v14 + 1] = a1[4 * v14];
  return v14;
}

uint64_t PDreverse(uint64_t result, __int16 a2)
{
  if (a2 != 1)
  {
    v2 = 0;
    v3 = (a2 - 1);
    do
    {
      v4 = *(result + v2);
      *(result + v2) = *(result + v3);
      *(result + v3) = v4;
      ++v2;
      --v3;
    }

    while (v2 < v3);
  }

  return result;
}

uint64_t PDitoa(unsigned int a1, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = v2;
    *(a2 + v2) = (a1 % 0xAu) | 0x30;
    v4 = ++v2;
    v5 = a1 > 9;
    a1 /= 0xAu;
  }

  while (v5);
  result = v4;
  *(a2 + v4) = 0;
  if (v4 >= 2u)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + v7);
      *(a2 + v7) = *(a2 + v3);
      *(a2 + v3) = v8;
      ++v7;
      --v3;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t PDasparse(_BYTE *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, _WORD *a6, int a7, uint64_t a8)
{
  *a3 = 0;
  *a4 = 0;
  if (*a1 != 35)
  {
    return 8;
  }

  v8 = 0;
  for (i = 1; ; ++i)
  {
    v10 = a1[i];
    v11 = v10 > 0x23 || ((1 << v10) & 0x800002001) == 0;
    v12 = !v11 || v10 == 10;
    if (v12 || v8 > 0x3F)
    {
      break;
    }

    *(a2 + v8++) = v10;
  }

  *(a2 + v8) = 0;
  v14 = a1[i];
  v15 = v14 > 0xD;
  v16 = (1 << v14) & 0x2401;
  if (!v15 && v16 != 0)
  {
    return 0;
  }

  if (a1[(i + 1)] == 49)
  {
    *a4 = 1;
  }

  if (a1[(i + 2)] != 35)
  {
    return 0;
  }

  LOWORD(v18) = i + 3;
  if (!a7)
  {
    goto LABEL_32;
  }

  v19 = 0;
  while (1)
  {
    v18 = v18;
    v20 = a1[v18];
    v21 = v20 > 0x23 || ((1 << v20) & 0x800002401) == 0;
    if (!v21 || 2 * a7 <= v19)
    {
      break;
    }

    v22 = v19++;
    *(a8 + v22) = v20;
    LOWORD(v18) = v18 + 1;
  }

  *(a8 + v19) = 0;
  if (a1[v18] != 35)
  {
    return 0;
  }

  LOWORD(v18) = v18 + 1;
LABEL_32:
  v23 = 0;
  *a3 = 1;
  while (1)
  {
    v24 = a1[v18];
    v25 = v24 > 0x23 || ((1 << v24) & 0x800002001) == 0;
    v26 = !v25 || v24 == 10;
    if (v26 || v23 > 0x7FF)
    {
      break;
    }

    *(a5 + v23++) = v24;
    LOWORD(v18) = v18 + 1;
  }

  result = 0;
  *(a5 + v23) = 0;
  *a6 = v23;
  return result;
}

uint64_t PDword(unsigned __int16 *a1, unsigned int a2, int a3)
{
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  if (!a1)
  {
    return 8;
  }

  *(a1 + 28) = 0;
  a1[58] = 0;
  *(a1 + 30) = 0;
  a1[68] = 0;
  *(a1 + 18) = 0;
  v4 = pMCPbuff;
  if (!pMCPbuff)
  {
    goto LABEL_104;
  }

  v5 = a1[1];
  if (**(pMCPbuff + 24) <= (v5 - 1))
  {
    goto LABEL_218;
  }

  if (**(*(pMCPbuff + 40) + 8 * v5) != v5 || *(*(pMCPbuff + 32) + 2 * v5) != 9090)
  {
LABEL_104:
    result = 8;
    *(a1 + 28) = 8;
    v60 = 5104;
    goto LABEL_219;
  }

  v6 = *(pMCPbuff + 8);
  if (!*v6)
  {
    goto LABEL_218;
  }

  v8 = *a1;
  if (a3 == 5)
  {
    if (a2 != 8)
    {
      if (a2 == 10)
      {
        a1[25] = 0;
        v62 = v8;
        if (v8)
        {
          goto LABEL_112;
        }

        LODWORD(v8) = *v6;
        if (*v6)
        {
          v62 = 1;
          while (1)
          {
LABEL_112:
            if (a1[25] >= a1[24])
            {
              return 0;
            }

            v63 = *(*v4 + 8 * v62);
            if (v63 && a1[1] == *(v63 + 1080) && *(*(v4 + 16) + 2 * v62) == 9090 && v63[2062] != 1)
            {
              if (**(v4 + 8) < v62 || *(v63 + 1081) != v62)
              {
LABEL_216:
                if (!a1[58] || *(a1 + 28) <= 7)
                {
LABEL_218:
                  result = 8;
                  *(a1 + 28) = 8;
                  v60 = 5105;
                  goto LABEL_219;
                }

                return 8;
              }

              v64 = *(a1 + 9);
              if (v64 == 0xFFFF || (v63[2069] ? (v65 = 1 << (v63[2069] - 1)) : (v65 = 0xFFFFFFFFLL), (v65 & v64) != 0))
              {
                if ((*(a1 + 42) != 1 || *(v63 + 1047)) && (v63[2084] & a1[20]) == 0 && (v63[2085] & *(a1 + 41)) == 0 && (*v63 | 2) == 7)
                {
                  if (!v63[2063])
                  {
                    if (!a1[58] || *(a1 + 28) <= 7)
                    {
                      result = 8;
                      *(a1 + 28) = 8;
                      v60 = 5051;
                      goto LABEL_219;
                    }

                    return 8;
                  }

                  v66 = strcpy(*(v63 + 267), *(a1 + 1));
                  v67 = *(*pMCPbuff + 8 * v62);
                  v68 = *(v67 + 2192);
                  *(v68 + 40) = 0;
                  *(v68 + 3194) = 1;
                  v69 = PDSFcorrec(v66, 3u, *(v67 + 2184), v68);
                  v4 = pMCPbuff;
                  *(*(*(*pMCPbuff + 8 * v62) + 2192) + 3194) = 0;
                  if (!v69 && (!a1[58] || *(a1 + 28) <= 3))
                  {
                    *(a1 + 28) = 4;
                    a1[58] = 5159;
                  }
                }
              }
            }

            result = 0;
            if (v8 < ++v62)
            {
              return result;
            }
          }
        }
      }

      return 0;
    }

    v74 = malloc_type_malloc(0xDuLL, 0x100004077774924uLL);
    if (!v74)
    {
      goto LABEL_213;
    }

    v75 = v74;
    v76 = pMCPbuff;
    v77 = *(*pMCPbuff + 8 * *a1);
    if (v77[2062] != 1)
    {
      if (!a1[58] || *(a1 + 28) <= 7)
      {
        *(a1 + 28) = 8;
        a1[58] = 5114;
      }

      free(v75);
      return 8;
    }

    v78 = *(v77 + 269);
    v79 = *(v77 + 267);
    a1[25] = 0;
    if ((*v77 | 2) == 7)
    {
      v80 = PDgetword(v77);
      if (v80 == 11)
      {
        if (a1[58] && *(a1 + 28) > 7)
        {
          goto LABEL_239;
        }

        *(a1 + 28) = 8;
        v81 = 5112;
LABEL_231:
        a1[58] = v81;
        goto LABEL_239;
      }

      if (v80 == 8)
      {
        if (a1[58] && *(a1 + 28) > 7)
        {
          goto LABEL_239;
        }

        *(a1 + 28) = 8;
        v81 = 5113;
        goto LABEL_231;
      }
    }

    else if (a1[24])
    {
      v101 = 0;
      while (PDgetrdwrd(*(*v76 + 8 * *a1), v79, &v113, &v110, &v111, &v116, &v112, v75) != 8)
      {
        v102 = SLLngToA(*(*(*pMCPbuff + 8 * *a1) + 2069));
        PDhypstrip(v79, (*(*(a1 + 13) + 8 * a1[25]) + 88), *(a1 + 16));
        v116 = strlen(v79);
        *(*(*(a1 + 13) + 8 * a1[25]) + 71) = SLcap(v79, 0, v116, (*(*(a1 + 13) + 8 * a1[25]) + 80), v102);
        v103 = strlen(v79);
        if (v103)
        {
          v104 = 0;
          do
          {
            *(v78 + v104) = ((*(v102 + 4 * v79[v104]) >> 25) & 0x20) + v79[v104];
            ++v104;
            v103 = strlen(v79);
          }

          while (v103 > v104);
        }

        *(v78 + v103) = 0;
        __strcpy_chk();
        v105 = *(*(a1 + 13) + 8 * a1[25]);
        *(v105 + 70) = v113 == 1;
        *(v105 + 96) = v111;
        *(v105 + 100) = v112;
        v76 = pMCPbuff;
        *(v105 + 66) = *(*(*pMCPbuff + 8 * *a1) + 2162);
        v106 = *v75;
        *(v105 + 110) = v75[2];
        *(v105 + 102) = v106;
        ++a1[25];
        if (++v101 >= a1[24])
        {
          goto LABEL_238;
        }
      }

      if (!a1[58] || *(a1 + 28) <= 7)
      {
        *(a1 + 28) = 8;
        a1[58] = 5113;
      }

      free(v75);
    }

LABEL_238:
    if (*(a1 + 28) == 8)
    {
      return 0;
    }

LABEL_239:
    free(v75);
    return 0;
  }

  if (a3 == 2)
  {
    v61 = *(*pMCPbuff + 8 * v8);
    if (a2 == 10)
    {
      result = 0;
      v61[2063] = 0;
      return result;
    }

    if (v61[2062] != 1)
    {
      goto LABEL_141;
    }

    if (a2 != 8 || (*v61 | 2) == 7)
    {
LABEL_140:
      result = 0;
      v61[2062] = 0;
      return result;
    }

    if (PDsavsort(*a1, 0) != 8)
    {
      v61 = *(*pMCPbuff + 8 * *a1);
      goto LABEL_140;
    }

LABEL_213:
    if (a1[58] && *(a1 + 28) > 7)
    {
      return 8;
    }

    result = 8;
    *(a1 + 28) = 8;
    v60 = 1030;
LABEL_219:
    a1[58] = v60;
    return result;
  }

  if (a3 != 1)
  {
    result = 8;
    *(a1 + 28) = 8;
    v60 = 1101;
    goto LABEL_219;
  }

  if (*a1)
  {
    v9 = *(*pMCPbuff + 8 * v8);
    if (v9)
    {
      if (*(v9 + 2062) == 1)
      {
LABEL_141:
        result = 8;
        *(a1 + 28) = 8;
        v60 = 5114;
        goto LABEL_219;
      }
    }
  }

  if (a2 > 0xB)
  {
    goto LABEL_203;
  }

  if (((1 << a2) & 0x470) != 0)
  {
    if (*a1)
    {
      v10 = *a1;
    }

    else
    {
      v10 = *v6;
    }

    a1[25] = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    if (v11 <= v10)
    {
      while (1)
      {
        if (a1[25] >= a1[24])
        {
          return 0;
        }

        v12 = *(*pMCPbuff + 8 * v11);
        if (v12 && a1[1] == *(v12 + 2160) && *(*(pMCPbuff + 16) + 2 * v11) == 9090 && *(v12 + 2062) != 1)
        {
          if (**(pMCPbuff + 8) < v11 || *(v12 + 2162) != v11)
          {
            goto LABEL_216;
          }

          v14 = *(a1 + 9);
          if (v14 == 0xFFFF || (*(v12 + 2069) ? (v15 = 1 << (*(v12 + 2069) - 1)) : (v15 = 0xFFFFFFFFLL), (v15 & v14) != 0))
          {
            if ((*(a1 + 42) != 1 || *(v12 + 2094)) && (!*(a1 + 43) || *(a1 + 43) == *(v12 + 2091)) && (!a1[22] || a1[22] == *(v12 + 2086)) && (!a1[23] || *(v12 + 2086) >= a1[23]) && (*(v12 + 2084) & a1[20]) == 0 && (*(v12 + 2085) & *(a1 + 41)) == 0)
            {
              v16 = *(v12 + 2136);
              strcpy(v16, *(a1 + 1));
              v17 = *pMCPbuff;
              *(*(*(v17 + 8 * v11) + 2192) + 3184) = a1;
              v18 = *(v17 + 8 * v11);
              v19 = *(v18 + 2192);
              *(v19 + 3192) = v11;
              *(v19 + 40) = 0;
              if (a1[28])
              {
                v20 = *(v19 + 104);
                v21 = *(a1 + 8);
                v22 = v21[5];
                v24 = v21[2];
                v23 = v21[3];
                v20[4] = v21[4];
                v20[5] = v22;
                v20[2] = v24;
                v20[3] = v23;
                v25 = v21[1];
                *v20 = *v21;
                v20[1] = v25;
                if (a1[28])
                {
                  v26 = 0;
                  do
                  {
                    *(*(*(*pMCPbuff + 8 * v11) + 2096) + v26) = *(*(*(a1 + 8) + 8) + v26);
                    ++v26;
                  }

                  while (v26 < a1[28]);
                }

                v17 = *pMCPbuff;
                *(*(*(*(*pMCPbuff + 8 * v11) + 2192) + 104) + 8) = *(*(*pMCPbuff + 8 * v11) + 2096);
                v18 = *(v17 + 8 * v11);
              }

              v27 = *(v18 + 2184);
              v28 = *(v27 + 104);
              v29 = a1[40];
              if (v28 != v29)
              {
                if (v28 < v29)
                {
                  free(*(v27 + 112));
                  v30 = malloc_type_calloc(a1[40], 1uLL, 0x100004077774924uLL);
                  v17 = *pMCPbuff;
                  *(*(*(*pMCPbuff + 8 * v11) + 2184) + 112) = v30;
                  if (!v30)
                  {
                    goto LABEL_213;
                  }

                  v29 = a1[40];
                  v18 = *(v17 + 8 * v11);
                  v27 = *(v18 + 2184);
                }

                *(v27 + 104) = v29;
                *(*(v18 + 2192) + 2162) = v29 >> 3;
                if (v29)
                {
                  v31 = 0;
                  do
                  {
                    *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 112) + v31) = *(*(a1 + 9) + v31);
                    ++v31;
                  }

                  while (v31 < a1[40]);
                  v17 = *pMCPbuff;
                  v18 = *(*pMCPbuff + 8 * v11);
                  if (*(*(v18 + 2192) + 2162))
                  {
                    v32 = 0;
                    v33 = 0;
                    do
                    {
                      v34 = v32 + 4;
                      *(*(*(v18 + 2184) + 160) + 8 * v33) = *(*(v18 + 2184) + 112) + 8 * (v33 & 0x1F);
                      v35 = *(*(*pMCPbuff + 8 * v11) + 2184);
                      *(*(v35 + 152) + 8 * v33) = *(v35 + 112) + ((8 * (v33 & 0x1F)) | 4);
                      *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 168) + v33) = 0;
                      *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 176) + v33) = 0;
                      v36 = 4;
                      v37 = v32;
                      do
                      {
                        v38 = *(*(*pMCPbuff + 8 * v11) + 2184);
                        if (*(*(v38 + 112) + v37) == 32)
                        {
                          break;
                        }

                        ++*(*(v38 + 176) + v33);
                        ++v37;
                        --v36;
                      }

                      while (v36);
                      v39 = 4;
                      while (1)
                      {
                        v17 = *pMCPbuff;
                        v18 = *(*pMCPbuff + 8 * v11);
                        v40 = *(v18 + 2184);
                        if (*(*(v40 + 112) + v34) == 32)
                        {
                          break;
                        }

                        ++*(*(v40 + 168) + v33);
                        ++v34;
                        if (!--v39)
                        {
                          v17 = *pMCPbuff;
                          v18 = *(*pMCPbuff + 8 * v11);
                          break;
                        }
                      }

                      ++v33;
                      v32 += 8;
                    }

                    while (v33 < *(*(v18 + 2192) + 2162));
                  }
                }
              }

              v41 = *(v18 + 2184);
              LODWORD(v42) = *(v41 + 120);
              v43 = a1[48];
              if (v42 != v43)
              {
                if (v42 < v43)
                {
                  free(*(v41 + 128));
                  v44 = malloc_type_calloc(a1[48], 1uLL, 0x100004077774924uLL);
                  v17 = *pMCPbuff;
                  *(*(*(*pMCPbuff + 8 * v11) + 2184) + 128) = v44;
                  if (!v44)
                  {
                    goto LABEL_213;
                  }

                  v43 = a1[48];
                  v18 = *(v17 + 8 * v11);
                  v41 = *(v18 + 2184);
                }

                *(v41 + 120) = v43;
                if (v43)
                {
                  v45 = 0;
                  do
                  {
                    *(*(*(*(*pMCPbuff + 8 * v11) + 2184) + 128) + v45) = *(*(a1 + 11) + v45);
                    ++v45;
                    v42 = a1[48];
                  }

                  while (v45 < v42);
                  v17 = *pMCPbuff;
                  v18 = *(*pMCPbuff + 8 * v11);
                  v41 = *(v18 + 2184);
                }

                else
                {
                  LODWORD(v42) = 0;
                }
              }

              *(v41 + 68) = 64;
              *(*(v18 + 2192) + 3184) = a1;
              v46 = *(v17 + 8 * v11);
              v47 = *(v46 + 274);
              *(v47 + 3192) = v11;
              *(v47 + 42) = a1[24];
              *(v47 + 44) = 0;
              *(v47 + 56) = 240;
              *(v47 + 88) = *(a1 + 17);
              *(v47 + 92) = *(a1 + 5);
              *(v47 + 96) = *(a1 + 6);
              *(v47 + 40) = 0;
              if (a2 > 5)
              {
                if (a2 == 6)
                {
                  *v47 = 6;
                  *(v47 + 3456) = a1[49];
                  if ((*v46 | 2) == 7)
                  {
                    *(v47 + 3194) = 1;
                    v53 = strlen(*(a1 + 1));
                    PDSFanagrm(*(a1 + 1), v53, v47, *(v46 + 273));
                    goto LABEL_92;
                  }

                  PDanagrm(*(a1 + 1), v47);
                  v55 = *(a1 + 1);
                  v56 = strlen(v55);
                  v59 = *(*pMCPbuff + 8 * v11);
                  v57 = *(v59 + 2184);
                  v58 = *(v59 + 2192);
                  goto LABEL_102;
                }

                v48 = a2 == 10;
              }

              else
              {
                if (a2 == 4)
                {
                  *v47 = 5;
                  SLwldpro(v16, (v47 + 3458), (v47 + 3460), 64);
                  v50 = *(*pMCPbuff + 8 * v11);
                  if ((*v50 | 2) == 7)
                  {
                    v51 = *(v50 + 274);
                    *(v51 + 3194) = 1;
                    v52 = strlen(v16);
                    PDSFwild(v16, v52, *(v50 + 273), v51);
LABEL_92:
                    *(*(*(*pMCPbuff + 8 * v11) + 2192) + 3194) = 0;
                    goto LABEL_27;
                  }

                  v55 = *(a1 + 1);
                  v56 = strlen(v55);
                  v57 = *(v50 + 273);
                  v58 = *(v50 + 274);
LABEL_102:
                  result = PDdecode(v55, v56, v57, v58);
                  if (result == 8)
                  {
                    return result;
                  }

                  goto LABEL_27;
                }

                v48 = a2 == 5;
              }

              if (!v48)
              {
                goto LABEL_27;
              }

              v46[2063] = 0;
              v49 = *(v46 + 273);
              *(v49 + 6) = 0;
              *(v49 + 136) = (330382100 * v42) >> 32;
              *v47 = 100;
              *(v47 + 2148) = -1;
              if ((*v46 | 2) == 7)
              {
                if (a2 == 10)
                {
                  v46[2063] = 1;
                  *(v47 + 3194) = 1;
                  v54 = PDSFcorrec(v16, 3u, v49, v47);
                  *(*(*(*pMCPbuff + 8 * v11) + 2192) + 3194) = 0;
                  if (v54)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  if (a2 != 5)
                  {
                    goto LABEL_27;
                  }

                  *(v47 + 3194) = 1;
                  PDSFcorrec(v16, 2u, v49, v47);
                  *(*(*(*pMCPbuff + 8 * v11) + 2192) + 3194) = 0;
                }

                if (!a1[58])
                {
                  goto LABEL_99;
                }
              }

              else
              {
                result = PDcorrec(*(a1 + 1), 0, v49, v47);
                if (result == 8)
                {
                  return result;
                }

                if (!a1[58])
                {
LABEL_99:
                  *(a1 + 28) = 4;
                  a1[58] = 5159;
                  goto LABEL_27;
                }
              }

              if (*(a1 + 28) <= 3)
              {
                goto LABEL_99;
              }
            }
          }
        }

LABEL_27:
        result = 0;
        LOWORD(v11) = v11 + 1;
        if (v10 < v11)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (((1 << a2) & 0x900) != 0)
  {
    v70 = *pMCPbuff;
    v71 = *(*pMCPbuff + 8 * v8);
    v71[2062] = 1;
    if ((*v71 | 2) == 7)
    {
      result = 0;
      *(*(v71 + 274) + 3184) = a1;
      v72 = *(v70 + 8 * v8);
      v73 = *(v72 + 2192);
      *(v73 + 3192) = v8;
      *(v73 + 40) = 0;
      *(*(v72 + 2176) + 114) = 0;
      return result;
    }

    if (a2 == 11)
    {
      goto LABEL_207;
    }

    if (PDsavsort(v8, 1) != 8)
    {
      PDsort(*(*pMCPbuff + 8 * *a1));
      v71 = *(*pMCPbuff + 8 * *a1);
LABEL_207:
      result = 0;
      *(*(v71 + 271) + 18) = 0;
      return result;
    }

    goto LABEL_213;
  }

  if (a2 != 1)
  {
LABEL_203:
    result = 8;
    *(a1 + 28) = 8;
    v60 = 1100;
    goto LABEL_219;
  }

  a1[25] = 0;
  if (!*v6)
  {
    goto LABEL_209;
  }

  v82 = 0;
  v83 = 1;
  while (a1[25] < a1[24])
  {
    if (v8 && v8 != v83)
    {
      goto LABEL_195;
    }

    v84 = *(*v4 + 8 * v83);
    if (!v84 || a1[1] != *(v84 + 2160) || *(*(v4 + 16) + 2 * v83) != 9090 || *(v84 + 2062) == 1)
    {
      goto LABEL_195;
    }

    if (*(v84 + 2162) != v83)
    {
      goto LABEL_216;
    }

    if (*(a1 + 42) == 1 && !*(v84 + 2094))
    {
      goto LABEL_195;
    }

    v85 = *(a1 + 9);
    if (v85 != 0xFFFF)
    {
      v86 = *(v84 + 2069);
      v87 = v86 == 0;
      v88 = 1 << (v86 - 1);
      if (v87)
      {
        v88 = 0xFFFFFFFFLL;
      }

      v89 = v88 & v85;
      v90 = !v87 || v85 >= 3;
      if (!v90 || v89 == 0)
      {
        goto LABEL_195;
      }
    }

    if (*(a1 + 43) && *(a1 + 43) != *(v84 + 2091) || a1[22] && a1[22] != *(v84 + 2086) || a1[23] && *(v84 + 2088) < a1[23] || (*(v84 + 2084) & a1[20]) != 0 || (*(v84 + 2085) & *(a1 + 41)) != 0)
    {
      goto LABEL_195;
    }

    v92 = *(v84 + 2136);
    strcpy(v92, *(a1 + 1));
    v93 = *pMCPbuff;
    v94 = *(*pMCPbuff + 8 * v83);
    *(*(v94 + 2184) + 6) = 0;
    *(*(v94 + 2192) + 3184) = a1;
    v95 = *(v93 + 8 * v83);
    v96 = *(v95 + 274);
    *(v96 + 3192) = v83;
    *(v96 + 40) = 0;
    v95[2118] = 1;
    if ((*v95 | 2) == 7)
    {
      v107 = strlen(v92);
      if (*(a1 + 42) == 1)
      {
        SLfun(v92, 0, v107 - 1, &v109, &v108);
        v95 = *(*pMCPbuff + 8 * v83);
        v97 = *(v95 + 272);
        v98 = (*(v97 + 112) - 1) & v108;
        v108 &= *(v97 + 112) - 1;
        if (((*(*(v97 + 104) + (v98 >> 3)) >> (v98 & 7)) & 1) == 0)
        {
          goto LABEL_195;
        }
      }

      v99 = PDget(v92, v107, v95);
    }

    else
    {
      v99 = PDsearch(v95, v92, &v115, &v114, 1, a1, 0);
    }

    if (v99 != 11 && v99 != 5112)
    {
      if (v99 == 5113)
      {
        break;
      }

      v82 = 1;
    }

LABEL_195:
    ++v83;
    v4 = pMCPbuff;
    if (**(pMCPbuff + 8) < v83)
    {
      break;
    }
  }

  if (v82)
  {
    return 0;
  }

LABEL_209:
  if (a1[58] && *(a1 + 28) > 7)
  {
    return 5112;
  }

  *(a1 + 28) = 8;
  result = 5112;
  a1[58] = 5112;
  return result;
}

uint64_t PDcheckDID(unsigned int a1)
{
  if (**(pMCPbuff + 8) >= a1 && *(*(*pMCPbuff + 8 * a1) + 2162) == a1)
  {
    return 8 * (*(*(pMCPbuff + 16) + 2 * a1) != 9090);
  }

  else
  {
    return 8;
  }
}

size_t PDanagrm(const char *a1, uint64_t a2)
{
  result = strlen(a1);
  *(a2 + 3199) = 0u;
  *(a2 + 3215) = 0u;
  *(a2 + 3231) = 0u;
  *(a2 + 3247) = 0u;
  *(a2 + 3263) = 0u;
  *(a2 + 3279) = 0u;
  *(a2 + 3295) = 0u;
  *(a2 + 3311) = 0u;
  *(a2 + 3327) = 0u;
  *(a2 + 3343) = 0u;
  *(a2 + 3359) = 0u;
  *(a2 + 3375) = 0u;
  *(a2 + 3391) = 0u;
  *(a2 + 3407) = 0u;
  *(a2 + 3423) = 0u;
  *(a2 + 3439) = 0u;
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      ++*(a2 + 3199 + a1[v5++]);
    }

    while (result > v5);
  }

  return result;
}

uint64_t PDalt(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 8;
  }

  *(a1 + 6) = 0;
  a1[14] = 0;
  *(a1 + 8) = 0;
  a1[24] = 0;
  *(a1 + 7) = 0;
  if (!pMCPbuff || **(*(pMCPbuff + 40) + 8 * a1[1]) != a1[1] || *(*(pMCPbuff + 32) + 2 * a1[1]) != 9090)
  {
    v2 = 5104;
    goto LABEL_10;
  }

  if (PDgetalt(*(a1 + 1), a1[8], *(a1 + 1), *a1) != 8)
  {
    return 0;
  }

  if (!a1[14] || *(a1 + 6) <= 7)
  {
    v2 = 5112;
LABEL_10:
    result = 8;
    *(a1 + 6) = 8;
    a1[14] = v2;
    return result;
  }

  return 8;
}

uint64_t PDgetalt(void *a1, int a2, int a3, unsigned int a4)
{
  v6 = *(*pMCPbuff + 8 * a4);
  if (*(v6 + 782) != 5)
  {
    v7 = (*(v6 + 2168) + 328);
    if (a1)
    {
      goto LABEL_3;
    }

    return 8;
  }

  v7 = (v6 + 776);
  a3 += *(v6 + 768) + *(*(v6 + 2176) + 40);
  if (!a1)
  {
    return 8;
  }

LABEL_3:
  if (a3 != -1)
  {
    v8 = *v7;
    if (SLSeek(*v7, a3, 0) == 8)
    {
      return 1010;
    }

    v10 = 0;
    if (SLFRead(v8, a2, a1, &v10) == 8)
    {
      SLClose(v8);
      return 1010;
    }
  }

  return 0;
}

uint64_t make_alt_entry(char *a1, _DWORD *a2, _WORD *a3, unsigned int a4)
{
  v7 = *(*(*(*pMCPbuff + 8 * a4) + 2168) + 328);
  if (SLSeek(v7, 0, 2u) == 8)
  {
    return 1010;
  }

  v10 = 0;
  if (SLFpos(v7, &v10) == 8)
  {
    return 1010;
  }

  v9 = strlen(a1);
  *a3 = v9;
  if (SLFWrite(v7, v9, a1, &v10 + 1) == 8)
  {
    SLClose(v7);
    return 1011;
  }

  else
  {
    result = 0;
    *a2 = v10;
  }

  return result;
}

_WORD *alt_conv(_WORD *result, _BYTE *a2, _BYTE *a3)
{
  v3 = *a2;
  if (v3 == 255)
  {
    if (*a3 == 255)
    {
      return result;
    }

    v4 = *result;
    if (!*result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *result;
    if (!*result)
    {
      if (!*a2)
      {
LABEL_10:
        *result = v3 + *a3;
        return result;
      }

LABEL_9:
      LOWORD(v3) = 255 * v3;
      *result = v3;
      goto LABEL_10;
    }
  }

  v5 = (((32897 * v4) >> 16) >> 7) + (((v4 + ((-32639 * v4) >> 16)) & 0x8000) >> 15);
  *a2 = v5;
  *a3 = *result + v5;
  return result;
}

uint64_t PDchknegs()
{
  if (!**(pMCPbuff + 8))
  {
    return 0;
  }

  v0 = 1;
  while (*(*(pMCPbuff + 16) + 2 * v0) != 9090 || !*(*(*pMCPbuff + 8 * v0) + 2094))
  {
    if (**(pMCPbuff + 8) < ++v0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PDFileExists(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = SLOpen(a1, a2, &v4, 0);
  result = 0;
  if (v2 != 8)
  {
    SLClose(v4);
    return 1;
  }

  return result;
}

uint64_t PDcomp(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  memcpy(__dst, (a1 + 1809), sizeof(__dst));
  v33 = -2;
  v34 = -2;
  v31 = -2;
  v32 = -2;
  v30 = -2;
  v25 = 0;
  v24 = 0;
  *(a1 + 2584) = 0;
  *(a1 + 2588) = 0;
  *(a1 + 2592) = 0;
  *(a1 + 2608) = 0;
  *(a1 + 2616) = 0;
  if (*(a1 + 2320) >= 7u)
  {
    result = 8;
    *(a1 + 2584) = 8;
    v3 = 5116;
LABEL_15:
    *(a1 + 2588) = v3;
    return result;
  }

  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  memcpy(v35, (a1 + 1809), sizeof(v35));
  if (PDFileExists(v35, a1 + 1553))
  {
    goto LABEL_4;
  }

  v4 = SLLngToA(*(a1 + 2577));
  v35[0] = 0;
  if (SLtmpnam(__dst, v35) == 8)
  {
LABEL_8:
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v3 = 1019;
      goto LABEL_15;
    }

    return 8;
  }

  if (SLOpen(__dst, v35, &v32, 0x602u) == 8)
  {
    goto LABEL_12;
  }

  v41[0] = 0;
  if (SLtmpnam(__dst, v41) == 8)
  {
    goto LABEL_8;
  }

  if (SLOpen(__dst, v41, &v31, 0x602u) == 8)
  {
    goto LABEL_12;
  }

  v40[0] = 0;
  if (SLtmpnam(__dst, v40) == 8)
  {
    goto LABEL_8;
  }

  if (SLOpen(__dst, v40, &v30, 0x602u) == 8)
  {
    goto LABEL_12;
  }

  v23 = 0;
  v37[0] = 0;
  if (*(a1 + 776) == 7)
  {
    if (SLtmpnam(__dst, v37) == 8)
    {
      goto LABEL_8;
    }

    if (SLOpen(__dst, v37, &v34, 0x602u) == 8)
    {
      goto LABEL_12;
    }

    result = DecompOldSD(a1, v18, v34, 1, &v23, &v28);
    if (result == 8)
    {
      return result;
    }
  }

  else
  {
    v34 = -2;
    v23 = 0;
  }

  v22 = 0;
  v36[0] = 0;
  if (*(a1 + 1552) == 7)
  {
    if (SLtmpnam(__dst, v36) == 8)
    {
      goto LABEL_8;
    }

    if (SLOpen(__dst, v36, &v33, 0x602u) == 8)
    {
      goto LABEL_12;
    }

    result = DecompOldSD(a1, v18, v33, 2, &v22, &v26);
    if (result == 8)
    {
      return result;
    }
  }

  else
  {
    v33 = -2;
    v22 = 0;
  }

  v5 = *(a1 + 776) - 3;
  if (v5 <= 4 && ((0x17u >> v5) & 1) != 0)
  {
    v6 = 0x404030201uLL >> (8 * (v5 & 0x1F));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = 0;
  v8 = *(a1 + 1552);
  if (v8 <= 3)
  {
    if (!*(a1 + 1552))
    {
      goto LABEL_48;
    }

    if (v8 == 3)
    {
      v7 = 8;
    }
  }

  else
  {
    switch(v8)
    {
      case 7u:
        v7 = 32;
        break;
      case 5u:
        v7 = 24;
        break;
      case 4u:
        v7 = 16;
        break;
    }
  }

  LODWORD(v6) = v7 | v6;
LABEL_48:
  v9 = 0;
  v10 = *(a1 + 2320);
  if (v10 > 3)
  {
    switch(v10)
    {
      case 7u:
        v9 = 0;
        break;
      case 5u:
        v9 = 192;
        break;
      case 4u:
        v9 = 128;
        break;
    }

LABEL_58:
    LODWORD(v6) = v9 | v6;
    goto LABEL_59;
  }

  if (*(a1 + 2320))
  {
    if (v10 == 3)
    {
      v9 = 64;
    }

    goto LABEL_58;
  }

LABEL_59:
  v20 = 0;
  v21 = 0;
  if ((v6 & 7) != 4 && PDOpenFile(a1, v6 & 7, 1, a1 + 256, a1, &v23, &v28, &v34, &v21) == 8)
  {
    v11 = v21;
    if (!v21)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

  v12 = (v6 >> 3) & 7;
  if (((v6 >> 3) & 3 | 4) != 4 && PDOpenFile(a1, (v6 >> 3) & 7, 2, a1 + 1033, a1 + 777, &v22, &v26, &v33, &v20) == 8)
  {
    v11 = v20;
    if (v20)
    {
      goto LABEL_74;
    }

LABEL_12:
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v3 = 1012;
      goto LABEL_15;
    }

    return 8;
  }

  if ((v6 & 7) == 3)
  {
    v13 = v21;
    if (PDDecompress(a1, v21, v39, v38, v31, v4, &v28) == 8)
    {
      v11 = v13;
LABEL_74:
      free(v11);
      goto LABEL_12;
    }
  }

  else if (CreateFormattedRD(a1, &v34, v31, v23, &v28) == 8)
  {
    goto LABEL_85;
  }

  v14 = v6 >> 6;
  if (v12)
  {
    if (v12 == 3)
    {
      v15 = v20;
      if (PDDecompress(a1, v20, v39, v38, v30, v4, &v26) == 8)
      {
        v11 = v15;
        goto LABEL_74;
      }
    }

    else if (CreateFormattedRD(a1, &v33, v30, v22, &v26) == 8)
    {
      goto LABEL_85;
    }

    if (MergeAndCompare(a1, v31, v30, v32, &v24) == 8)
    {
      goto LABEL_81;
    }

    if ((v14 - 1) > 1)
    {
      SLClose(v32);
      v32 = -2;
      if (SLOpen(__dst, v35, &v32, 2u) == 8)
      {
        return 1012;
      }

      if (PDCompress(a1, 0, v4, &v32, &v24))
      {
LABEL_81:
        if (v21)
        {
          free(v21);
        }

        v17 = v20;
        if (v20)
        {
LABEL_84:
          free(v17);
        }

LABEL_85:
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
          v3 = 5119;
          goto LABEL_15;
        }

        return 8;
      }
    }

    else if (PDSwitchToOut(v35, v6 >> 6, v32, a1) == 8)
    {
      if (v21)
      {
        free(v21);
      }

      v16 = v20;
      if (!v20)
      {
LABEL_4:
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
          v3 = 5120;
          goto LABEL_15;
        }

        return 8;
      }

LABEL_97:
      free(v16);
      goto LABEL_4;
    }
  }

  else if ((v14 - 1) > 1)
  {
    if (PDCompress(a1, 0, v4, &v31, &v28))
    {
      v17 = v21;
      if (!v21)
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

  else if (PDSwitchToOut(v41, v6 >> 6, v31, a1) == 8)
  {
    v16 = v21;
    if (!v21)
    {
      goto LABEL_4;
    }

    goto LABEL_97;
  }

  if ((v32 & 0x80000000) == 0)
  {
    SLClose(v32);
  }

  if (v35[0])
  {
    SLremove(a1 + 1809, v35);
  }

  if ((v31 & 0x80000000) == 0)
  {
    SLClose(v31);
  }

  if (v41[0])
  {
    SLremove(a1 + 1809, v41);
  }

  if ((v30 & 0x80000000) == 0)
  {
    SLClose(v30);
  }

  if (v40[0])
  {
    SLremove(a1 + 1809, v40);
  }

  if ((v34 & 0x80000000) == 0)
  {
    SLClose(v34);
  }

  if (v37[0])
  {
    SLremove(a1 + 1809, v37);
  }

  if (v36[0])
  {
    SLremove(a1 + 1809, v36);
  }

  if (v21)
  {
    free(v21);
  }

  result = v20;
  if (v20)
  {
    free(v20);
    return 0;
  }

  return result;
}

uint64_t DecompOldSD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v41 = a2;
  v33 = 1;
  started = StartDb(a1, a4);
  if (started)
  {
    v11 = started;
    v34 = 0;
    if (StartWord(&v41, started) == 8)
    {
      v12 = *(v11 + 2088);
      v13 = *(v11 + 2104);
      *(a1 + 2616) = *(v11 + 2120);
      *(a1 + 2584) = v12;
      *(a1 + 2600) = v13;
      v14 = v11;
LABEL_4:
      free(v14);
      return 8;
    }

    v36 = 0;
    v16 = v41;
    *(v41 + 48) = 1;
    LOBYTE(v36) = *(v11 + 2078);
    v17 = *(v11 + 2079);
    if (!v17)
    {
      v17 = 61;
    }

    *(&v36 + 1) = v17;
    v37 = 0;
    v40 = a3;
    v38 = 0;
    v39 = 0;
    if (PDWriteOldRDHead(&v36, a5) == 8)
    {
      free(v11);
      PDFullCleanSDNeg(v16);
      if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
      {
        result = 8;
        *(a1 + 2584) = 8;
        v18 = 5119;
LABEL_30:
        *(a1 + 2588) = v18;
        return result;
      }
    }

    else
    {
      *(a6 + 1) = *(v11 + 2078);
      v19 = BYTE1(v36);
      *a6 = BYTE1(v36);
      *(a6 + 10) = 0;
      *(a6 + 2) = 0;
      *(a6 + 5) = 0;
      v20 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
      if (v20)
      {
        v21 = v20;
        while (1)
        {
          if (GetOldSDWord(a1, v16, &v33) == 8)
          {
            goto LABEL_26;
          }

          if (!v33)
          {
            break;
          }

          v22 = **(v16 + 104);
          v23 = strlen(v22);
          v24 = *(v22 + 71);
          if (*(v22 + 71))
          {
            v25 = SLLngToA(*(v22 + 72));
            SLrecap(v22, v23, v24, v22 + 80, v24, v25);
          }

          SLchcnv(v22, v23, v22, 0, *(v22 + 72));
          if (*(v22 + 88) || *(v22 + 92))
          {
            PDhypins(v22, (v22 + 88), v19);
          }

          *v21 = 35;
          __strcat_chk();
          __strcat_chk();
          v26 = strlen(v21);
          if (SLFWrite(a3, v26, v21, &v34) == 8)
          {
            if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
            {
              *(a1 + 2584) = 8;
              *(a1 + 2588) = 1011;
            }

LABEL_26:
            free(v11);
            PDFullCleanSDNeg(v16);
            v14 = v21;
            goto LABEL_4;
          }
        }

        v27 = *(*pMCPbuff + 8 * *(v11 + 2074));
        v28 = *(*(v27 + 2176) + 40);
        v35 = v28;
        if (v28)
        {
          v29 = *(*(v27 + 2184) + 64);
          SLSeek(v29, v28, 0);
          while (PDGets(v21, 2177, &v35, v29) != 8)
          {
            v30 = strlen(v21);
            if (SLFWrite(a3, v30, v21, &v34) == 8)
            {
              free(v21);
              free(v11);
              PDFullCleanSDNeg(v16);
              if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
              {
                result = 8;
                *(a1 + 2584) = 8;
                v18 = 1011;
                goto LABEL_30;
              }

              return 8;
            }
          }
        }

        free(v21);
        if (PDdb(v11, 3) != 8)
        {
          free(v11);
          PDFullCleanSDNeg(v16);
          return 0;
        }

        v31 = *(v11 + 2088);
        v32 = *(v11 + 2104);
        *(a1 + 2616) = *(v11 + 2120);
        *(a1 + 2584) = v31;
        *(a1 + 2600) = v32;
        free(v11);
        PDFullCleanSDNeg(v16);
      }

      else
      {
        free(v11);
        PDFullCleanSDNeg(v16);
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
          v18 = 1030;
          goto LABEL_30;
        }
      }
    }
  }

  return 8;
}

uint64_t SetTypes(uint64_t result, _BYTE *a2)
{
  *a2 = 0;
  v2 = result - 3;
  if (result - 3) <= 4 && ((0x17u >> v2))
  {
    *a2 = 0x401030201uLL >> (8 * (v2 & 0x1Fu));
  }

  return result;
}

uint64_t PDOpenFile(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, int *a8, uint64_t *a9)
{
  v10 = a3;
  if ((a2 - 1) > 1)
  {
    started = StartDb(a1, a3);
    *a9 = started;
    if (started)
    {
      v20 = started;
      result = 0;
      v21 = *(*pMCPbuff + 8 * *(v20 + 2074));
      *(a7 + 10) = *(v21 + 2094);
      *a7 = *(v21 + 2068);
      *(a7 + 8) = *(v21 + 2092);
      *(a7 + 2) = *(v21 + 2084);
      *(a7 + 6) = *(v21 + 2090);
      return result;
    }

    return 8;
  }

  if (SLOpen(a4, a5, a8, 0) == 8)
  {
    goto LABEL_8;
  }

  v15 = 1544;
  if (v10 == 1)
  {
    v15 = 768;
  }

  v16 = *(a1 + v15);
  if (v16)
  {
    if (SLSeek(*a8, v16, 0) == 8)
    {
LABEL_8:
      if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
      {
        result = 8;
        *(a1 + 2584) = 8;
        v18 = 1012;
LABEL_10:
        *(a1 + 2588) = v18;
        return result;
      }

      return 8;
    }
  }

  if (a2 != 2)
  {
    result = 0;
    *(a7 + 1) = *(a1 + 2577);
    *a7 = 61;
    *(a7 + 10) = 0;
    *(a7 + 2) = 0;
    *(a7 + 5) = 0;
    return result;
  }

  v22 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  v24 = 0;
  if (PDGets(v22, 2177, &v24, *a8) == 8)
  {
    free(v22);
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v18 = 1010;
      goto LABEL_10;
    }

    return 8;
  }

  *a6 = v24;
  v23 = PDreadHead(v22, a7);
  free(v22);
  if (v23 == 8)
  {
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      v18 = 5115;
      goto LABEL_10;
    }

    return 8;
  }

  return 0;
}

uint64_t CreateFormattedRD(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v38 = -2;
  v39 = -2;
  v37 = -2;
  v36 = 0;
  v35 = 0;
  v10 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v10)
  {
    return 8;
  }

  v11 = v10;
  v12 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
  if (!v12)
  {
    return 8;
  }

  v13 = v12;
  v14 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
  if (!v14)
  {
    return 8;
  }

  v15 = v14;
  *v42 = 0;
  v44[0] = 0;
  result = SLtmpnam((a1 + 1809), v44);
  if (result != 8)
  {
    result = SLOpen(a1 + 1809, v44, &v38, 0x602u);
    if (result != 8)
    {
      v34 = a3;
      v43 = 0;
      SLSeek(*a2, 0, 0);
      v17 = *a2;
      v18 = v38;
      v19 = SLLngToA(0);
      v20 = PDExtSort(v17, v6, 0, 0, v18, (a1 + 1809), 1, v19, *(a1 + 2577), 0x92u);
      if (v20)
      {
        v21 = v20;
        if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
        {
          result = 8;
          *(a1 + 2584) = 8;
LABEL_10:
          *(a1 + 2588) = v21;
          return result;
        }

        return 8;
      }

      SLClose(*a2);
      SLClose(v38);
      *a2 = -2;
      v38 = -2;
      result = SLOpen(a1 + 1809, v44, &v38, 2u);
      if (result != 8)
      {
        v45[0] = 0;
        result = SLtmpnam((a1 + 1809), v45);
        if (result != 8)
        {
          result = SLOpen(a1 + 1809, v45, &v39, 0x602u);
          if (result != 8)
          {
            if (*(a1 + 2321) && SLOpen(a1 + 1809, a1 + 2321, &v37, 0x602u) == 8)
            {
              if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
              {
                result = 8;
                *(a1 + 2584) = 8;
                v21 = 1012;
                goto LABEL_10;
              }

              return 8;
            }

            SLSeek(v39, 0, 0);
            v22 = 0;
            v23 = 0;
LABEL_20:
            v24 = v34;
            while (PDGets(v11, 2177, &v43, v38) != 8)
            {
              result = BuildForm(v11, v13, *(a5 + 8), &v35, &v36);
              if (result == 8)
              {
                return result;
              }

              v25 = v36;
              if (v36)
              {
                v26 = v22 + 1;
              }

              else
              {
                v26 = v22;
              }

              if (!*(a1 + 2321) || !v23)
              {
                goto LABEL_37;
              }

              if (v23 <= v35)
              {
                v27 = v35;
              }

              else
              {
                v27 = v23;
              }

              if (memcmp(v13, v15, v27))
              {
                __strcpy_chk();
LABEL_37:
                v30 = strlen(v13);
                result = SLFWrite(v39, v30, v13, v42);
                if (result == 8)
                {
                  return result;
                }

                v23 = v35;
                v22 = v26;
                goto LABEL_20;
              }

              if (v25)
              {
                v22 = v26 - 1;
              }

              v28 = strlen(v13);
              v29 = SLFWrite(v37, v28, v13, v42);
              result = 8;
              v24 = v34;
              if (v29 == 8)
              {
                return result;
              }
            }

            v40 = 0;
            v41 = 0;
            WORD2(v40) = v22;
            if ((v37 & 0x80000000) == 0)
            {
              SLClose(v37);
              v37 = -2;
            }

            SLClose(v38);
            v38 = -2;
            SLremove(a1 + 1809, v44);
            free(v11);
            free(v13);
            free(v15);
            SLSeek(v24, 0, 0);
            LOBYTE(v40) = *(a1 + 2577);
            *(a5 + 1) = v40;
            v31 = *(a1 + 2578);
            if (!v31)
            {
              v31 = 61;
            }

            BYTE1(v40) = v31;
            *a5 = v31;
            BYTE2(v40) = *(a5 + 8);
            BYTE6(v40) = *(a5 + 7);
            LODWORD(v41) = *(a5 + 2);
            HIDWORD(v41) = v24;
            HIBYTE(v40) = *(a5 + 6);
            result = PDWriteRDHead(&v40);
            if (result != 8)
            {
              v32 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
              if (v32)
              {
                v33 = v32;
                SLSeek(v39, 0, 0);
                while (!SLFRead(v39, 1024, v33, &v42[1]))
                {
                  if (v42[1] >= 1)
                  {
                    result = SLFWrite(v24, v42[1], v33, v42);
                    if (result == 8)
                    {
                      return result;
                    }

                    if (v42[0] != v42[1])
                    {
                      return 8;
                    }

                    if (v42[0] == 1024)
                    {
                      continue;
                    }
                  }

                  SLSeek(v24, 0, 0);
                  SLClose(v39);
                  v39 = -2;
                  SLremove(a1 + 1809, v45);
                  free(v33);
                  return 0;
                }
              }

              return 8;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t PDDecompress(uint64_t a1, uint64_t a2, void ***a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v27 = *a3;
  v14 = malloc_type_calloc(1uLL, 0x40uLL, 0x1090040D37A3AC8uLL);
  if (!v14 || (v15 = v14, v16 = malloc_type_calloc(0x801uLL, 1uLL, 0x100004077774924uLL), (v15[1] = v16) == 0))
  {
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      result = 8;
      *(a1 + 2584) = 8;
      *(a1 + 2588) = 1030;
      return result;
    }

    return 8;
  }

  v28 = 0;
  v29 = *(a7 + 10);
  LOBYTE(v28) = *(a1 + 2577);
  v17 = *(a1 + 2578);
  if (!v17)
  {
    v17 = 61;
  }

  BYTE1(v28) = v17;
  BYTE2(v28) = *(a7 + 8);
  v30 = *(a7 + 7);
  v32 = *(a7 + 2);
  v33 = v9;
  v31 = *(a7 + 6);
  if (PDWriteRDHead(&v28))
  {
    return 8;
  }

  result = StartWord(&v27, a2);
  if (result == 8)
  {
    v19 = *(a2 + 2088);
    v20 = *(a2 + 2104);
    *(a1 + 2616) = *(a2 + 2120);
    *(a1 + 2584) = v19;
    *(a1 + 2600) = v20;
    return result;
  }

  v21 = v27;
  *(v27 + 24) = 1;
  v34 = 1;
  *a3 = v21;
  v22 = *(a7 + 8);
  *(a4 + 20) = v22;
  *(a3 + 10) = v22;
  *(a3 + 22) = BYTE1(v28);
  v23 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  a3[1] = v23;
  if (!v23)
  {
    if (!*(a1 + 2588) || *(a1 + 2584) <= 7)
    {
      *(a1 + 2584) = 8;
      *(a1 + 2588) = 1030;
    }

    PDFullCleanSDNeg(v21);
    free(v15[1]);
    v24 = v15;
LABEL_24:
    free(v24);
    return 8;
  }

  while (1)
  {
    if (GetBuildWord(a1, a3, &v34, v9, a6) == 8)
    {
      PDFullCleanSDNeg(v21);
      return 8;
    }

    if (!v34)
    {
      break;
    }

    if (AltAndWrite(a1, a3, v15, v9) == 8)
    {
      goto LABEL_23;
    }
  }

  if (PDdb(a2, 3) == 8)
  {
    v25 = *(a2 + 2088);
    v26 = *(a2 + 2104);
    *(a1 + 2616) = *(a2 + 2120);
    *(a1 + 2584) = v25;
    *(a1 + 2600) = v26;
LABEL_23:
    PDFullCleanSDNeg(v21);
    v24 = a3[1];
    goto LABEL_24;
  }

  free(v15[1]);
  free(v15);
  free(a3[1]);
  PDFullCleanSDNeg(v21);
  return 0;
}

uint64_t PDSwitchToOut(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v24 = -2;
  v25 = 0;
  if (SLOpen(a4 + 1809, a4 + 1553, &v24, 0x602u) == 8)
  {
    if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
    {
      result = 8;
      *(a4 + 2584) = 8;
      *(a4 + 2588) = 1030;
      return result;
    }

    return 8;
  }

  if (a2 == 1)
  {
    v9 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
    if (v9)
    {
      v10 = v9;
      v11 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        SLSeek(a3, 0, 0);
        if (PDGets(v10, 64, &v26 + 1, a3) == 8)
        {
          if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
          {
            *(a4 + 2584) = 8;
            v13 = 1010;
LABEL_43:
            *(a4 + 2588) = v13;
          }
        }

        else
        {
          do
          {
            if (PDGets(v10, 64, &v26 + 1, a3) == 8)
            {
              free(v10);
              free(v12);
              goto LABEL_50;
            }

            v17 = *v10;
            v18 = strlen(v10);
            if (v18 <= (v17 == 35))
            {
              v23 = 0;
            }

            else
            {
              v19 = 0;
              v20 = v17 == 35;
              while (1)
              {
                v21 = v10[v20];
                if (v21 <= 0x23 && ((1 << v21) & 0x800002401) != 0)
                {
                  break;
                }

                v23 = v19 + 1;
                v12[v19] = v21;
                ++v20;
                ++v19;
                if (v18 <= v20)
                {
                  goto LABEL_39;
                }
              }

              v23 = v19;
            }

LABEL_39:
            v12[v23] = 13;
            *&v12[(v23 + 1)] = 10;
          }

          while (SLFWrite(v24, (v23 + 2), v12, &v26) != 8);
          if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
          {
            *(a4 + 2584) = 8;
            v13 = 1011;
            goto LABEL_43;
          }
        }

        free(v10);
        v16 = v12;
      }

      else
      {
        if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
        {
          *(a4 + 2584) = 8;
          *(a4 + 2588) = 1030;
        }

        v16 = v10;
      }

      free(v16);
      goto LABEL_46;
    }

LABEL_20:
    if (!*(a4 + 2588) || *(a4 + 2584) <= 7)
    {
      *(a4 + 2584) = 8;
      *(a4 + 2588) = 1030;
    }

LABEL_46:
    SLClose(v24);
    return 8;
  }

  v14 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  SLSeek(a3, 0, 0);
  do
  {
    if (!SLFRead(a3, 1024, v15, &v25))
    {
      if (v25 < 1)
      {
        break;
      }

      if (SLFWrite(v24, v25, v15, &v26) != 8 && v26 == v25)
      {
        continue;
      }
    }

    free(v15);
    return 8;
  }

  while (v26 == 1024);
  free(v15);
  SLClose(a3);
  SLremove(a4 + 1809, a1);
LABEL_50:
  SLClose(v24);
  return 0;
}

uint64_t PDCompress(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, _BYTE *a5)
{
  v149 = *MEMORY[0x1E69E9840];
  v125 = 0;
  __strcpy_chk();
  v9 = strlen(__s);
  do
  {
    v10 = v9 - 1;
    if (v9 < 1)
    {
      break;
    }

    v11 = __s[v9--];
  }

  while (v11 != 46);
  __strcpy_chk();
  if (v10 == -1)
  {
    __strcat_chk();
  }

  else
  {
    __s[v10 + 1] = 0;
  }

  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  __strcpy_chk();
  __strcat_chk();
  v12 = *a4;
  v13 = (a1 + 2584);
  v135 = 0;
  v136[0] = 0;
  v133 = -2;
  v134 = -2;
  v132 = -2;
  v131 = 0;
  __dst = 0;
  v127[0] = 0;
  v126 = 0;
  __buf[0] = 0;
  if (SLOpen(a1 + 1809, v138, &v133, 0x602u) == 8)
  {
    goto LABEL_8;
  }

  v137[0] = 0;
  if (SLtmpnam((a1 + 1809), v137) == 8)
  {
    goto LABEL_12;
  }

  if (SLOpen(a1 + 1809, v137, &v134, 0x602u) == 8 || SLOpen(a1 + 1809, v143, &v132, 0x602u) == 8)
  {
LABEL_8:
    if (!*(a1 + 2588) || *v13 <= 7)
    {
      *(a1 + 2584) = 8;
      v14 = 1012;
      goto LABEL_15;
    }

    return 8;
  }

  v16 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
  if (v16)
  {
    v17 = v16;
    v18 = malloc_type_calloc(0x19uLL, 1uLL, 0x100004077774924uLL);
    if (v18)
    {
      v19 = v18;
      v123 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
      if (v123)
      {
        v20 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
        if (v20)
        {
          v119 = v20;
          v21 = malloc_type_malloc(0x81uLL, 0x100004077774924uLL);
          if (v21)
          {
            v121 = v21;
            v22 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
            if (v22)
            {
              v118 = v22;
              v23 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
              if (v23)
              {
                v117 = v23;
                v24 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
                if (v24)
                {
                  v111 = v24;
                  *v119 = 0;
                  v25 = v123;
                  if (PDGets(v123, 64, &v126, v12) == 8)
                  {
LABEL_29:
                    if (!*(a1 + 2588) || *v13 <= 7)
                    {
                      *(a1 + 2584) = 8;
                      v14 = 1010;
                      goto LABEL_15;
                    }

                    return 8;
                  }

                  v113 = 0;
                  v102 = 0;
                  v104 = 0;
                  v105 = 0;
                  while (1)
                  {
                    do
                    {
                      if (PDGets(v25, 2177, &v126, v12) == 8)
                      {
                        free(v19);
                        free(v25);
                        free(v121);
                        free(v118);
                        free(v111);
                        free(v119);
                        free(v117);
                        SLClose(v132);
                        SLClose(v134);
                        free(v17);
                        SLClose(v133);
                        if (SLClose(*a4) == 8)
                        {
                          if (*(a1 + 2588) && *v13 > 7)
                          {
                            return 8;
                          }

                          result = 8;
                          *(a1 + 2584) = 8;
                          v66 = 1013;
LABEL_109:
                          *(a1 + 2588) = v66;
                          return result;
                        }

                        *a4 = -2;
                        v67 = malloc_type_calloc(0x100uLL, 8uLL, 0x10040436913F5uLL);
                        if (!v67)
                        {
                          return 1030;
                        }

                        v68 = v67;
                        for (i = 0; i != 256; ++i)
                        {
                          v70 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
                          v68[i] = v70;
                          if (!v70)
                          {
                            return 1030;
                          }
                        }

                        v71 = malloc_type_calloc(0x3E8uLL, 1uLL, 0x100004077774924uLL);
                        if (!v71)
                        {
                          return 1030;
                        }

                        v72 = v71;
                        for (j = 0; j != 200; ++j)
                        {
                          for (k = 0; k != 20; ++k)
                          {
                            v68[j][k] = 0;
                          }
                        }

                        v75 = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
                        if (!v75)
                        {
LABEL_165:
                          if (!*(a1 + 2588) || *v13 <= 7)
                          {
                            result = 8;
                            *(a1 + 2584) = 8;
                            v66 = 1030;
                            goto LABEL_109;
                          }

                          return 8;
                        }

                        v76 = v75;
                        memset_pattern16(v75, &unk_1D2BFAAE0, 0x400uLL);
                        *v129 = -2;
                        *&v127[1] = -2;
                        v124 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
                        if (!v124)
                        {
                          goto LABEL_152;
                        }

                        v122 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
                        if (!v122)
                        {
                          goto LABEL_152;
                        }

                        v116 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
                        if (!v116)
                        {
                          goto LABEL_152;
                        }

                        *__buf = 0;
                        if (SLOpen(a1 + 1809, v137, v129, 0) == 8)
                        {
                          goto LABEL_8;
                        }

                        LOBYTE(v136[0]) = 0;
                        if (SLtmpnam((a1 + 1809), v136) != 8)
                        {
                          if (SLOpen(a1 + 1809, v136, &v127[1], 0x602u) == 8)
                          {
                            goto LABEL_8;
                          }

                          BYTE4(__dst) = 0;
                          v120 = malloc_type_malloc(0x81uLL, 0x100004077774924uLL);
                          if (!v120)
                          {
                            goto LABEL_152;
                          }

                          v106 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
                          if (!v106)
                          {
                            goto LABEL_152;
                          }

                          while (!SLFRead(*v129, 4, &__dst, __buf) && *__buf == 4)
                          {
                            v78 = __dst;
                            v79 = BYTE1(__dst);
                            v80 = BYTE3(__dst) | BYTE2(__dst);
                            *v106 = 0u;
                            v106[1] = 0u;
                            v106[2] = 0u;
                            v106[3] = 0u;
                            *(v106 + 64) = 0;
                            v112 = v80;
                            if (SLFRead(*v129, v80, v106, __buf))
                            {
                              break;
                            }

                            v110 = v79 | v78;
                            if (SLFRead(*v129, v79 | v78, v124, __buf))
                            {
                              break;
                            }

                            v81 = *v124;
                            *v122 = v81;
                            ++v76[v81];
                            v120[128] = 0;
                            *(v120 + 6) = 0u;
                            *(v120 + 7) = 0u;
                            *(v120 + 4) = 0u;
                            *(v120 + 5) = 0u;
                            *(v120 + 2) = 0u;
                            *(v120 + 3) = 0u;
                            *v120 = 0u;
                            *(v120 + 1) = 0u;
                            v82 = v124[1];
                            if (v82 >= 0xB)
                            {
                              v83 = 1;
                              v84 = 1;
                              do
                              {
                                v120[v83 - 1] = v82;
                                v83 = ++v84;
                                v82 = v124[v84];
                              }

                              while (v82 > 0xA);
                            }

                            **v68 = 0;
                            if (strlen(v120))
                            {
                              v85 = 0;
                              v86 = 2;
                              do
                              {
                                v87 = v120[v85];
                                v122[v85 + 1] = v87;
                                ++v76[v87];
                                ++v85;
                                ++v86;
                              }

                              while (v85 < strlen(v120));
                              v88 = v85 + 1;
                            }

                            else
                            {
                              LOBYTE(v85) = 0;
                              v86 = 2;
                              v88 = 1;
                            }

                            v122[v88] = v82;
                            ++v76[v82];
                            v89 = v88 + 1;
                            if (v110 > v86)
                            {
                              v90 = &v124[v86];
                              v91 = v110 - v86;
                              do
                              {
                                v92 = *v90++;
                                v122[v89] = v92;
                                ++v76[v92];
                                ++v89;
                                --v91;
                              }

                              while (v91);
                            }

                            v148 = 0;
                            LOBYTE(__dst) = 0;
                            *(&__dst + 1) = v89;
                            BYTE3(__dst) = v112;
                            WORD2(__dst) = 0;
                            BYTE6(__dst) = 0;
                            HIBYTE(__dst) = v85;
                            if (SLFWrite(*&v127[1], 8, &__dst, __buf) == 8 || SLFWrite(*&v127[1], v112, v106, __buf) == 8 || SLFWrite(*&v127[1], v89, v122, __buf) == 8)
                            {
                              goto LABEL_149;
                            }
                          }

                          free(v116);
                          free(v120);
                          free(v106);
                          SLClose(*v129);
                          SLClose(*&v127[1]);
                          free(v124);
                          free(v122);
                          SLremove(a1 + 1809, v137);
                          for (m = 0; m != 256; ++m)
                          {
                            free(v68[m]);
                          }

                          free(v68);
                          free(v72);
                          v94 = malloc_type_calloc(0x202uLL, 8uLL, 0x100004000313F17uLL);
                          if (v94)
                          {
                            v95 = v94;
                            scale_counts(v76, v94);
                            free(v76);
                            v96 = OpenOutputBitFile(a1 + 1809, v145);
                            output_counts(v96, v95);
                            CloseOutputBitFile(v96);
                            v97 = build_tree(v95);
                            v98 = malloc_type_calloc(0x101uLL, 4uLL, 0x100004052888210uLL);
                            if (v98)
                            {
                              v99 = v98;
                              convert_tree_to_code(v95, v98, 0, 0, v97);
                              free(v95);
                              result = Huffman_Comp(a1 + 1809, v136, v142, v140, v99, *(a1 + 2580), &v125, a1 + 2584);
                              if (result == 8)
                              {
                                return result;
                              }

                              SLremove(a1 + 1809, v136);
                              PDngrams(a1 + 1809, v143, a1 + 1809, v141);
                              v100 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
                              if (v100)
                              {
                                v101 = v100;
                                bzero(v100, 0x400uLL);
                                result = Add_Tables(v102, a1 + 1809, v139, v140, v141, v142, v144, v145, v138, v101, a1 + 2584);
                                if (result != 8)
                                {
                                  result = Update_Header(v113, *(a1 + 2577), v125, *(a1 + 2580), a1 + 1809, v139, v101, a1 + 2584, a5);
                                  if (result != 8)
                                  {
                                    free(v101);
                                    SLremove(a1 + 1809, v145);
                                    SLremove(a1 + 1809, v140);
                                    SLremove(a1 + 1809, v143);
                                    SLremove(a1 + 1809, v141);
                                    SLremove(a1 + 1809, v142);
                                    SLremove(a1 + 1809, v138);
                                    return 0;
                                  }
                                }

                                return result;
                              }
                            }
                          }

                          goto LABEL_165;
                        }

LABEL_12:
                        if (!*(a1 + 2588) || *v13 <= 7)
                        {
                          *(a1 + 2584) = 8;
                          v14 = 1019;
                          goto LABEL_15;
                        }

                        return 8;
                      }
                    }

                    while (*v25 == 35 && v25[1] == 35);
                    v26 = strlen(v25);
                    SLchcnv(v25, v26, v25, 1, *(a1 + 2577));
                    v131 = 0;
                    *v111 = 0;
                    PDasparse(v25, v121, &v131 + 1, &v131, v111, v127, a5[8], v19);
                    v27 = 0;
                    for (n = 0; n != 12; ++n)
                    {
                      v29 = v19[v27];
                      v30 = v29 - 48;
                      v31 = 16 * v29;
                      if (v30 >= 0xA)
                      {
                        v31 -= 112;
                      }

                      v32 = v19[v27 + 1];
                      if ((v32 - 48) >= 0xA)
                      {
                        v33 = -55;
                      }

                      else
                      {
                        v33 = -48;
                      }

                      v19[n] = v31 + v32 + v33;
                      v27 += 2;
                    }

                    v34 = v113;
                    if (v131)
                    {
                      v34 = v113 + 1;
                    }

                    v113 = v34;
                    v114 = 16 * (v131 != 0);
                    if (HIBYTE(v131))
                    {
                      v127[0] = strlen(v111);
                      if (SLFpos(v133, &v135) == 8)
                      {
                        goto LABEL_29;
                      }

                      if (SLFWrite(v133, v127[0], v111, &v135 + 1) == 8)
                      {
LABEL_149:
                        if (!*(a1 + 2588) || *v13 <= 7)
                        {
                          *(a1 + 2584) = 8;
                          v14 = 1011;
                          goto LABEL_15;
                        }

                        return 8;
                      }

                      v114 |= 8u;
                      v102 = 1;
                    }

                    v35 = strlen(v121);
                    v103 = PDhypstrip(v121, &__dst, 61);
                    v107 = SLcap(v121, 0, (v35 - 1), v136, a3);
                    v36 = strlen(v121);
                    v37 = 0;
                    if (((v36 + 1) & 0xFFFE) != 0)
                    {
                      v38 = (v36 + 1);
                    }

                    else
                    {
                      v38 = 1;
                    }

                    do
                    {
                      v118[v37] = ((*(a3 + 4 * v121[v37]) >> 25) & 0x20) + v121[v37];
                      ++v37;
                    }

                    while (v38 != v37);
                    v39 = v114 | 4;
                    if (v35 == v103)
                    {
                      v39 = v114;
                    }

                    if (a5[8])
                    {
                      v40 = v39 | 0x20;
                    }

                    else
                    {
                      v40 = v39;
                    }

                    if (v118[v36 - 1] == 10)
                    {
                      v118[(v36 - 1)] = 0;
                      v115 = v36 - 1;
                    }

                    else
                    {
                      v115 = v36;
                    }

                    __strcpy_chk();
                    v41 = 0;
                    v42 = v40 | 2;
                    if (v107 == 3)
                    {
                      v43 = 192;
                    }

                    else
                    {
                      v43 = v105;
                    }

                    if (v107 != 3)
                    {
                      v42 = v40;
                    }

                    if (v107 == 2)
                    {
                      v43 = 128;
                      v44 = v40;
                    }

                    else
                    {
                      v44 = v42;
                    }

                    if (v107 == 1)
                    {
                      v45 = 64;
                    }

                    else
                    {
                      v45 = v105;
                    }

                    if (!v107)
                    {
                      v45 = 0;
                    }

                    if (v107 <= 1)
                    {
                      v46 = v40;
                    }

                    else
                    {
                      v45 = v43;
                      v46 = v44;
                    }

                    v108 = v46;
                    do
                    {
                      v47 = v41;
                      v48 = v119[v41];
                      v49 = v121[v41++];
                      if (v48)
                      {
                        v50 = v48 == v49;
                      }

                      else
                      {
                        v50 = 0;
                      }
                    }

                    while (v50);
                    v105 = (v104 - v47) | v45;
                    *v17 = (v104 - v47) | v45;
                    __strcpy_chk();
                    __strcpy_chk();
                    v51 = strlen(v117);
                    *(v117 + v51) = 0;
                    if (v51)
                    {
                      v52 = 0;
                      v53 = 1;
                      v54 = v108;
                      do
                      {
                        v55 = v53 + 1;
                        v17[v53++] = *(v117 + v52++);
                      }

                      while (v51 > v52);
                    }

                    else
                    {
                      v55 = 1;
                      v54 = v108;
                    }

                    v17[v55] = 0;
                    v56 = v55 + 2;
                    v17[(v55 + 1)] = v54;
                    if ((v54 & 2) != 0)
                    {
                      v59 = v136[0];
                      v17[(v55 + 2)] = BYTE3(v136[0]);
                      v17[(v55 + 3)] = BYTE2(v59);
                      v17[(v55 + 4)] = BYTE1(v59);
                      v17[(v55 + 5)] = v59;
                      v60 = HIDWORD(v136[0]);
                      v17[(v55 + 6)] = HIBYTE(v136[0]);
                      v17[(v55 + 7)] = BYTE2(v60);
                      v17[(v55 + 8)] = BYTE1(v60);
                      v56 = v55 + 10;
                      v17[(v55 + 9)] = v60;
                      if ((v54 & 4) == 0)
                      {
LABEL_89:
                        if ((v54 & 8) != 0)
                        {
                          goto LABEL_103;
                        }

                        goto LABEL_90;
                      }
                    }

                    else if ((v54 & 4) == 0)
                    {
                      goto LABEL_89;
                    }

                    v61 = __dst;
                    v62 = HIDWORD(__dst);
                    v17[v56] = BYTE3(__dst);
                    v17[(v56 + 1)] = BYTE2(v61);
                    v17[(v56 + 2)] = BYTE1(v61);
                    v17[(v56 + 3)] = v61;
                    v17[(v56 + 4)] = HIBYTE(v62);
                    v17[(v56 + 5)] = BYTE2(v62);
                    v63 = v56 + 7;
                    v17[(v56 + 6)] = BYTE1(v62);
                    v56 += 8;
                    v17[v63] = v62;
                    if ((v54 & 8) != 0)
                    {
LABEL_103:
                      v64 = v135;
                      v17[v56] = BYTE3(v135);
                      v17[(v56 + 1)] = BYTE2(v64);
                      v17[(v56 + 2)] = BYTE1(v64);
                      v17[(v56 + 3)] = v64;
                      LOBYTE(v64) = v127[0];
                      v65 = v56 + 5;
                      v17[(v56 + 4)] = HIBYTE(v127[0]);
                      v56 += 6;
                      v17[v65] = v64;
                      if ((v54 & 0x20) == 0)
                      {
                        goto LABEL_92;
                      }

LABEL_91:
                      memcpy(&v17[v56], v19, a5[8]);
                      v56 += a5[8];
                      goto LABEL_92;
                    }

LABEL_90:
                    if ((v54 & 0x20) != 0)
                    {
                      goto LABEL_91;
                    }

LABEL_92:
                    v109 = v56;
                    if (v115 >= 4u)
                    {
                      v57 = 4;
                    }

                    else
                    {
                      v57 = v115;
                    }

                    __strncpy_chk();
                    v129[v57] = 0;
                    strlen(v129);
                    __strncat_chk();
                    if (!SLstrcmp(v129, __buf) || (__strcpy_chk(), v58 = strlen(__buf), SLFWrite(v132, v58, __buf, &v135 + 1) != 8))
                    {
                      *v121 = 0;
                      __strcpy_chk();
                      v119[strlen(v119)] = 0;
                      v104 = strlen(v119);
                      v128 = 0;
                      LOBYTE(v127[1]) = 0;
                      HIBYTE(v127[1]) = v109;
                      LOBYTE(v127[2]) = 0;
                      HIBYTE(v127[2]) = v115;
                      if (SLFWrite(v134, 4, &v127[1], &v135 + 1) != 8)
                      {
                        v25 = v123;
                        if (SLFWrite(v134, v115, v118, &v135 + 1) != 8 && SLFWrite(v134, v109, v17, &v135 + 1) != 8)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_149;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_152:
  if (!*(a1 + 2588) || *v13 <= 7)
  {
    *(a1 + 2584) = 8;
    v14 = 1030;
LABEL_15:
    *(a1 + 2588) = v14;
  }

  return 8;
}

uint64_t MergeAndCompare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v61 = -2;
  v62 = -2;
  v60 = 0;
  v10 = SLLngToA(*(a1 + 2577));
  v71[0] = 0;
  result = SLtmpnam((a1 + 1809), v71);
  if (result == 8)
  {
    return result;
  }

  result = SLOpen(a1 + 1809, v71, &v62, 0x602u);
  if (result == 8)
  {
    return result;
  }

  if (*(a1 + 2321) && SLOpen(a1 + 1809, a1 + 2321, &v61, 2u) == 8)
  {
    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      return 8;
    }

    result = 8;
    *(a1 + 2584) = 8;
    v12 = 1012;
LABEL_8:
    *(a1 + 2588) = v12;
    return result;
  }

  v13 = malloc_type_calloc(0x19uLL, 1uLL, 0x100004077774924uLL);
  if (!v13)
  {
    return 8;
  }

  v14 = v13;
  v15 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  if (!v15)
  {
    return 8;
  }

  v16 = v15;
  v69 = 0;
  v70 = 0;
  v17 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v17)
  {
    return 8;
  }

  v59 = v17;
  v18 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v18)
  {
    return 8;
  }

  __s = v18;
  v19 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v19)
  {
    return 8;
  }

  __s1 = v19;
  v20 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v20)
  {
    return 8;
  }

  __s2 = v20;
  SLSeek(a2, 0, 0);
  if (PDGets(v59, 2177, &v70, a2) == 8)
  {
    goto LABEL_17;
  }

  if (PDreadHead(v59, &v65) == 8)
  {
    return 5115;
  }

  *v59 = 0;
  SLSeek(a3, 0, 0);
  if (PDGets(__s, 2177, &v69, a3) == 8)
  {
LABEL_17:
    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      return 8;
    }

    result = 8;
    *(a1 + 2584) = 8;
    v12 = 1010;
    goto LABEL_8;
  }

  v49 = v16;
  v52 = 0;
  *__s = 0;
  v21 = __s;
  v22 = 1;
  v23 = 1;
  v24 = 1;
  v57 = 1;
  v25 = v59;
  do
  {
    if (v23)
    {
      if (!*v25)
      {
        v55 = v24;
        v26 = v25;
        if (PDGets(v25, 2177, &v70, a2) == 8)
        {
          *v26 = 0;
          v21 = __s;
          if (*__s)
          {
            v27 = strlen(__s);
            result = SLFWrite(v62, v27, __s, &v66 + 1);
            if (result == 8)
            {
              return result;
            }

            v57 = 0;
            *__s = 0;
            v25 = v59;
            v21 = __s;
          }

          else
          {
            v25 = v26;
            v57 = 0;
          }
        }

        else
        {
          PDasparse(v26, v72, &v68 + 1, &v68, v49, &v67, 12, v14);
          v28 = v52;
          if (v68)
          {
            v28 = v52 + 1;
          }

          v52 = v28;
          v25 = v26;
          v21 = __s;
        }

        v24 = v55;
      }
    }

    else
    {
      v57 = 0;
    }

    if (!v22)
    {
      goto LABEL_41;
    }

    v56 = v24;
    if (!*v21)
    {
      v29 = v21;
      if (PDGets(v21, 2177, &v69, a3) == 8)
      {
        *v29 = 0;
        v25 = v59;
        v21 = v29;
        if (*v59)
        {
          v30 = strlen(v59);
          result = SLFWrite(v62, v30, v59, &v66 + 1);
          if (result == 8)
          {
            return result;
          }

          *v59 = 0;
          v25 = v59;
          v21 = __s;
        }

LABEL_41:
        if (v57)
        {
          v31 = v25;
          v32 = strlen(v25);
          result = SLFWrite(v62, v32, v31, &v66 + 1);
          if (result == 8)
          {
            return result;
          }

          v24 = 0;
          v33 = v31;
          v25 = v31;
          v21 = __s;
          goto LABEL_67;
        }

        v56 = 0;
LABEL_64:
        v43 = strlen(v21);
        result = SLFWrite(v62, v43, __s, &v66 + 1);
        v21 = __s;
        v33 = __s;
LABEL_65:
        v44 = result == 8;
        v25 = v59;
        goto LABEL_66;
      }

      PDasparse(v29, v72, &v68 + 1, &v68, v49, &v67, 12, v14);
      v34 = v52;
      if (v68)
      {
        v34 = v52 + 1;
      }

      v52 = v34;
      v25 = v59;
      v21 = v29;
    }

    if (!v57)
    {
      goto LABEL_64;
    }

    v35 = v21;
    v51 = strlen(v25);
    v36 = strlen(v35);
    v50 = v36;
    if (v51 <= v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v51;
    }

    if (!memcmp(v59, v35, v37))
    {
      if (v61 >= 0)
      {
        v45 = v61;
      }

      else
      {
        v45 = v62;
      }

      result = SLFWrite(v45, v50, v35, &v66 + 1);
      v33 = v35;
      v44 = result == 8;
      v25 = v59;
      v21 = v35;
    }

    else
    {
      if ((v51 & 0x8000) == 0)
      {
        v38 = 0;
        do
        {
          __s1[v38] = ((*(v10 + 4 * v59[v38]) >> 25) & 0x20) + v59[v38];
          ++v38;
        }

        while (v51 >= v38);
      }

      v39 = strlen(__s);
      v40 = v39;
      if ((v39 & 0x8000) == 0)
      {
        v41 = 0;
        do
        {
          __s2[v41] = ((*(v10 + 4 * __s[v41]) >> 25) & 0x20) + __s[v41];
          ++v41;
        }

        while (v39 >= v41);
      }

      if (v51 <= v39)
      {
        v42 = v39;
      }

      else
      {
        v42 = v51;
      }

      if ((memcmp(__s1, __s2, v42) & 0x8000) == 0)
      {
        result = SLFWrite(v62, v40, __s, &v66 + 1);
        v21 = __s;
        v33 = __s;
        goto LABEL_65;
      }

      result = SLFWrite(v62, v51, v59, &v66 + 1);
      v25 = v59;
      v33 = v59;
      v44 = result == 8;
      v21 = __s;
    }

LABEL_66:
    v24 = v56;
    if (v44)
    {
      return result;
    }

LABEL_67:
    *v33 = 0;
    v23 = v57 != 0;
    v22 = v24 != 0;
  }

  while (v57 | v24);
  v63 = 0;
  v64 = 0;
  v46 = *(a1 + 2578);
  if (!v46)
  {
    v46 = 61;
  }

  BYTE1(v63) = v46;
  *a5 = v46;
  BYTE2(v63) = 12;
  *(a5 + 8) = 12;
  BYTE6(v63) = HIBYTE(v65);
  *(a5 + 7) = HIBYTE(v65);
  LOBYTE(v64) = BYTE2(v65);
  *(a5 + 2) = BYTE2(v65);
  BYTE1(v64) = BYTE3(v65);
  *(a5 + 3) = BYTE3(v65);
  WORD1(v64) = WORD2(v65);
  *(a5 + 4) = WORD2(v65);
  HIBYTE(v63) = BYTE6(v65);
  *(a5 + 6) = BYTE6(v65);
  LOBYTE(v63) = BYTE1(v65);
  *(a5 + 1) = BYTE1(v65);
  WORD2(v63) = v52;
  *(a5 + 10) = v52;
  HIDWORD(v64) = a4;
  SLSeek(a4, 0, 0);
  if (!PDWriteRDHead(&v63))
  {
    v47 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
    if (v47)
    {
      v48 = v47;
      SLSeek(v62, 0, 0);
      while (!SLFRead(v62, 1024, v48, &v60))
      {
        if (v60 >= 1)
        {
          result = SLFWrite(a4, v60, v48, &v66 + 1);
          if (result == 8)
          {
            return result;
          }

          if (HIDWORD(v66) != v60)
          {
            return 8;
          }

          if (HIDWORD(v66) == 1024)
          {
            continue;
          }
        }

        if ((v61 & 0x80000000) == 0)
        {
          SLClose(v61);
          v61 = -2;
        }

        SLClose(v62);
        v62 = -2;
        SLremove(a1 + 1809, v71);
        free(v48);
        free(v59);
        free(__s);
        free(__s1);
        free(__s2);
        free(v49);
        free(v14);
        return 0;
      }
    }
  }

  return 8;
}

uint64_t output_counts(FILE **a1, unsigned __int16 *a2)
{
  v4 = 0;
  v5 = a2;
  while (1)
  {
    v6 = *v5;
    v5 += 4;
    if (v6)
    {
      break;
    }

    if (++v4 == 256)
    {
      return 8 * (putc(0, *a1) != 0);
    }
  }

  if (v4 > 0xFF)
  {
    return 8 * (putc(0, *a1) != 0);
  }

  while (1)
  {
    LOWORD(v7) = v4;
    v8 = v4;
    v4 = (v4 + 1);
    while (1)
    {
      if (v4 > 255)
      {
LABEL_19:
        v13 = v4 - 1;
        v14 = (v4 - 1);
        goto LABEL_20;
      }

      v9 = v4;
      v10 = v4 << 48;
      v11 = &a2[4 * v4];
      while (1)
      {
        v12 = *v11;
        v11 += 4;
        if (!v12)
        {
          break;
        }

        ++v9;
        v10 += 0x1000000000000;
        LOWORD(v4) = v4 + 1;
        if (v9 == 256)
        {
          LODWORD(v4) = 256;
          goto LABEL_19;
        }
      }

      v13 = v9 - 1;
      v14 = (v9 - 1);
      if (v9 > 255)
      {
        break;
      }

      v15 = &a2[4 * v4];
      v4 = v10 >> 48;
      while (1)
      {
        v16 = *v15;
        v15 += 4;
        if (v16)
        {
          break;
        }

        if (++v4 == 256)
        {
          goto LABEL_20;
        }
      }

      if (v4 - v14 >= 4)
      {
        goto LABEL_20;
      }
    }

    LODWORD(v4) = v9;
LABEL_20:
    if (putc(v8, *a1) != v8 || putc(v14, *a1) != v14)
    {
      return 8;
    }

    if (v8 <= v13)
    {
      while (putc(a2[4 * v7], *a1) == a2[4 * v7])
      {
        v7 = (v7 + 1);
        if (v7 > v13)
        {
          goto LABEL_25;
        }
      }

      return 8;
    }

LABEL_25:
    if (v4 > 255)
    {
      return 8 * (putc(0, *a1) != 0);
    }
  }
}

_DWORD *scale_counts(_DWORD *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0uLL;
  do
  {
    v3 = vmaxq_u32(*&result[v2], v3);
    v2 += 4;
  }

  while (v2 != 256);
  v4 = vmaxvq_u32(v3);
  if (!v4)
  {
    v4 = 1;
    *result = 1;
  }

  v5 = 0;
  v6 = v4 / 0xFF + 1;
  do
  {
    v7 = result[v5 / 4];
    if ((v7 / v6))
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      v9 = v7 / v6;
    }

    else
    {
      v9 = 1;
    }

    *(a2 + 2 * v5) = v9;
    v5 += 4;
  }

  while (v5 != 1024);
  *(a2 + 2048) = 1;
  return result;
}

uint64_t convert_tree_to_code(uint64_t result, uint64_t a2, int a3, __int16 a4, int a5)
{
  v6 = a3;
  if (a5 >= 257)
  {
    v9 = result;
    do
    {
      ++a4;
      v10 = v9 + 8 * a5;
      result = convert_tree_to_code(v9, a2, 2 * (v6 & 0x7FFFu), a4, *(v10 + 4));
      v8 = (2 * v6) | 1;
      a5 = *(v10 + 6);
      v6 = (2 * v6) | 1;
    }

    while (a5 >= 257);
  }

  else
  {
    v8 = a3;
  }

  v11 = (a2 + 4 * a5);
  *v11 = v8;
  v11[1] = a4;
  return result;
}

uint64_t compress_buffer(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  *(a3 + 8) = 2;
  *(a3 + 12) = 0;
  *(a3 + 10) = 0x80;
  **a3 = BYTE1(a2);
  *(*a3 + 1) = a2;
  do
  {
    v9 = (a4 + 4 * *(a1 + v8));
    OutputsBuffer(a3, *v9, v9[1]);
    ++v8;
  }

  while (a2 >= v8);
  OutputsBuffer(a3, *(a4 + 1024), *(a4 + 1026));
  return *(a3 + 8);
}

uint64_t *OutputsBuffer(uint64_t *result, int a2, int a3)
{
  if ((a3 - 1) <= 0x1F)
  {
    v3 = 1 << (a3 - 1);
    v4 = *(result + 10);
    do
    {
      if ((v3 & a2) != 0)
      {
        *(result + 6) |= v4;
      }

      v5 = v4;
      v4 >>= 1;
      *(result + 10) = v4;
      if (v5 <= 1)
      {
        v6 = *(result + 12);
        v7 = *result;
        v8 = *(result + 4);
        *(result + 4) = v8 + 1;
        *(v7 + v8) = v6;
        *(result + 6) = 0;
        v4 = 128;
        *(result + 10) = 0x80;
      }

      v9 = v3 > 1;
      LODWORD(v3) = v3 >> 1;
    }

    while (v9);
  }

  return result;
}

_WORD *OpenOutputBitFile(uint64_t a1, uint64_t a2)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405AD1273CuLL);
  if (v2)
  {
    v3 = malloc_type_malloc(0x101uLL, 0x100004077774924uLL);
    if (v3)
    {
      v4 = v3;
      __strcpy_chk();
      __strcat_chk();
      *v2 = fopen(v4, "wb");
      free(v4);
      v2[5] = 0;
      *(v2 + 8) = 0x80;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CloseOutputBuffer(uint64_t a1)
{
  if (*(a1 + 10) != 128)
  {
    v2 = *(a1 + 12);
    v3 = *a1;
    v4 = *(a1 + 8);
    *(a1 + 8) = v4 + 1;
    v3[v4] = v2;
  }

  free(*a1);

  free(a1);
}

uint64_t CloseOutputBitFile(uint64_t a1)
{
  if (*(a1 + 8) != 128 && putc(*(a1 + 10), *a1) != *(a1 + 10))
  {
    return 8;
  }

  fclose(*a1);
  free(a1);
  return 0;
}

uint64_t OutputBit(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    *(a1 + 10) |= v3;
  }

  *(a1 + 8) = v3 >> 1;
  if (v3 > 1)
  {
    return 0;
  }

  if (putc(*(a1 + 10), *a1) != *(a1 + 10))
  {
    return 8;
  }

  result = 0;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0x80;
  return result;
}

uint64_t OutputBits(uint64_t a1, int a2, int a3)
{
  if ((a3 - 1) > 0x1F)
  {
    return 0;
  }

  v6 = 1 << (a3 - 1);
  v7 = *(a1 + 8);
  while (1)
  {
    if ((v6 & a2) != 0)
    {
      *(a1 + 10) |= v7;
    }

    v8 = v7;
    v7 >>= 1;
    *(a1 + 8) = v7;
    if (v8 > 1)
    {
      goto LABEL_9;
    }

    if (putc(*(a1 + 10), *a1) != *(a1 + 10))
    {
      return 8;
    }

    *(a1 + 10) = 0;
    v7 = 128;
    *(a1 + 8) = 0x80;
LABEL_9:
    v9 = v6 > 1;
    LODWORD(v6) = v6 >> 1;
    if (!v9)
    {
      return 0;
    }
  }
}

uint64_t input_counts(FILE **a1, uint64_t a2)
{
  for (i = 0; i != 2048; i += 8)
  {
    *(a2 + i) = 0;
  }

  v5 = getc(*a1);
  if (v5 != 0xFFFF)
  {
    v6 = v5;
    v7 = getc(*a1);
    if (v7 != 0xFFFF)
    {
      v9 = v7;
      while (v9 << 16 < v6 << 16)
      {
LABEL_11:
        v12 = getc(*a1);
        if (!v12)
        {
          result = 0;
          *(a2 + 2048) = 1;
          return result;
        }

        if (v12 == 0xFFFF)
        {
          return 8;
        }

        v6 = v12;
        v9 = getc(*a1);
        result = 8;
        if (v9 == 0xFFFF)
        {
          return result;
        }
      }

      v10 = v9;
      while (1)
      {
        v11 = getc(*a1);
        if (v11 == -1)
        {
          break;
        }

        *(a2 + 8 * v6++) = v11;
        if (v10 < v6)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return 8;
}

_WORD *OpenInputBitFile(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405AD1273CuLL);
  if (v2)
  {
    v3 = fopen(a1, "rb");
    *v2 = v3;
    if (v3)
    {
      v2[5] = 0;
      *(v2 + 8) = 0x80;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CloseInputBitFile(FILE **a1)
{
  fclose(*a1);

  free(a1);
}

uint64_t expand_data(unsigned __int16 **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v9 = 0;
  *(a1 + 4) = 2;
  *(a1 + 6) = 0;
  *(a1 + 10) = 0x80;
  v10 = bswap32(**a1) >> 16;
  do
  {
    v11 = v9;
    LOWORD(v12) = a5;
    do
    {
      v13 = InputBit(a1);
      v14 = a4 + 8 * v12;
      v15 = (v14 + 6);
      v16 = (v14 + 4);
      if (v13)
      {
        v16 = v15;
      }

      v12 = *v16;
    }

    while (v12 > 255);
    v9 = v11 + 1;
    *(a3 + v11) = v12;
  }

  while (v10 >= (v11 + 1));
  return v11;
}

BOOL InputBit(uint64_t *a1)
{
  v1 = *(a1 + 10);
  if (v1 == 128)
  {
    v2 = *a1;
    v3 = *(a1 + 4);
    *(a1 + 4) = v3 + 1;
    v4 = *(v2 + v3);
    *(a1 + 6) = v4;
  }

  else
  {
    v4 = *(a1 + 6);
  }

  v5 = v1 >> 1;
  if (v1 < 2)
  {
    LOBYTE(v5) = 0x80;
  }

  *(a1 + 10) = v5;
  return (v4 & v1) != 0;
}

char *PDstrrev(char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = strlen(a1);
  if (v2)
  {
    v3 = __src;
    v4 = v2;
    do
    {
      *v3++ = a1[--v4];
    }

    while (v4);
  }

  __src[v2] = 0;
  return strcpy(a1, __src);
}

uint64_t sddiff(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  do
  {
    v3 = v2;
    v4 = *(a1 + v2);
    v5 = *(a2 + v2++);
    if (v4)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  return v3;
}

uint64_t StartDb(uint64_t a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x850uLL, 0x1090040FF1BFF1AuLL);
  if (!v4)
  {
    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      return 0;
    }

    v5 = 0;
    *(a1 + 2584) = 8;
    *(a1 + 2588) = 1030;
    return v5;
  }

  v5 = v4;
  v4[1032] = *(a1 + 2582);
  if (a2 == 2)
  {
    __strcpy_chk();
    __strcpy_chk();
    __strcpy_chk();
    v6 = 1548;
    v7 = 1544;
    v8 = 1552;
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_10;
    }

    __strcpy_chk();
    __strcpy_chk();
    __strcpy_chk();
    v6 = 772;
    v7 = 768;
    v8 = 776;
  }

  __strcpy_chk();
  __strcpy_chk();
  v9 = *(a1 + v8);
  *(v5 + 784) = v9;
  *(v5 + 785) = v9;
  *(v5 + 776) = *(a1 + v7);
  *(v5 + 780) = *(a1 + v6);
LABEL_10:
  *(v5 + 2078) = *(a1 + 2577);
  *(v5 + 772) = -2;
  *(v5 + 768) = 0;
  *(v5 + 2076) = 0;
  v10 = PDdb(v5, 1);
  v11 = *(v5 + 2120);
  v12 = *(v5 + 2104);
  *(a1 + 2584) = *(v5 + 2088);
  *(a1 + 2600) = v12;
  *(a1 + 2616) = v11;
  if (v10 == 8)
  {
    free(v5);
    return 0;
  }

  return v5;
}

uint64_t StartWord(void *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B00408E6C3DC5uLL);
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
    v5[1] = v6;
    if (v6)
    {
      v7 = malloc_type_calloc(0x14uLL, 8uLL, 0x10040436913F5uLL);
      v5[13] = v7;
      if (v7)
      {
        v8 = 0;
        while (1)
        {
          v9 = malloc_type_calloc(1uLL, 0x74uLL, 0x10000404AB42077uLL);
          *(v5[13] + v8) = v9;
          if (!v9)
          {
            break;
          }

          v8 += 8;
          if (v8 == 160)
          {
            *(v5 + 1) = *(a2 + 2064);
            *v5 = *(a2 + 2074);
            *(v5 + 42) = 0;
            *(v5 + 9) = 0xFFFF;
            result = PDword(v5, 8u, 1);
            if (result == 8)
            {
              v11 = *(v5 + 7);
              v12 = *(v5 + 8);
              *(a2 + 2120) = v5[18];
              *(a2 + 2088) = v11;
              *(a2 + 2104) = v12;
            }

            else
            {
              result = 0;
              *a1 = v5;
            }

            return result;
          }
        }
      }
    }
  }

  if (*(a2 + 2092) && *(a2 + 2088) > 7)
  {
    return 8;
  }

  result = 8;
  *(a2 + 2088) = 8;
  *(a2 + 2092) = 1030;
  return result;
}

uint64_t PDWriteRDHead(unsigned __int8 *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  qmemcpy(__buf, "#HEADER START#2#", 16);
  v2 = PDitoa(*a1, __src);
  __strncpy_chk();
  v3 = v2 + 17;
  *(__buf + (v2 + 16)) = 35;
  v4 = PDitoa(a1[8], __src);
  strncpy(__buf + v3, __src, v4);
  v5 = v4 + v3;
  v6 = v4 + v3 + 1;
  *(__buf + v5) = 35;
  v7 = PDitoa(a1[9], __src);
  strncpy(__buf + v6, __src, v7);
  *(__buf + (v7 + v6)) = 35;
  *(__buf + (v7 + v6 + 1)) = a1[1];
  v8 = v7 + v6 + 2;
  v9 = v7 + v6 + 3;
  *(__buf + v8) = 35;
  v10 = PDitoa(*(a1 + 5), __src);
  strncpy(__buf + v9, __src, v10);
  v11 = v10 + v9;
  v12 = v10 + v9 + 1;
  *(__buf + v11) = 35;
  v13 = PDitoa(a1[7], __src);
  strncpy(__buf + v12, __src, v13);
  v14 = v13 + v12;
  v15 = v13 + v12 + 1;
  *(__buf + v14) = 35;
  v16 = PDitoa(a1[6], __src);
  strncpy(__buf + v15, __src, v16);
  v17 = v16 + v15;
  v18 = v16 + v15 + 1;
  *(__buf + v17) = 35;
  v19 = PDitoa(*(a1 + 2), __src);
  strncpy(__buf + v18, __src, v19);
  v20 = v19 + v18;
  v21 = v19 + v18 + 1;
  *(__buf + v20) = 35;
  v22 = PDitoa(a1[2], __src);
  LOWORD(v19) = v22;
  strncpy(__buf + v21, __src, v22);
  *(__buf + (v19 + v21)) = 35;
  v23 = __buf + (v19 + v21 + 1);
  *(v23 + 7) = 591679045;
  *v23 = *"HEADER END#";
  *(__buf + (v19 + v21 + 12)) = 13;
  *(__buf + (v19 + v21 + 13)) = 10;
  v24 = SLFWrite(*(a1 + 3), (v19 + v21 + 14), __buf, &v26);
  result = 0;
  if (v24 == 8)
  {
    SLClose(*(a1 + 3));
    *(a1 + 3) = -2;
    return 8;
  }

  return result;
}

char *FillHeadStr(unsigned int a1, uint64_t a2, _WORD *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = PDitoa(a1, v9);
  v6 = v5;
  result = strncpy((a2 + *a3), v9, v5);
  v8 = *a3 + v6;
  *a3 = v8 + 1;
  *(a2 + v8) = 35;
  return result;
}

uint64_t PDWriteOldRDHead(unsigned __int8 *a1, _BYTE *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0;
  qmemcpy(__buf, "#HEADER START#1#", 16);
  v4 = PDitoa(*a1, __src);
  __strncpy_chk();
  v5 = v4 + 17;
  *(__buf + (v4 + 16)) = 35;
  v6 = PDitoa(0, __src);
  strncpy(__buf + v5, __src, v6);
  v7 = v6 + v5;
  v8 = v6 + v5 + 1;
  *(__buf + v7) = 35;
  v9 = PDitoa(0, __src);
  strncpy(__buf + v8, __src, v9);
  *(__buf + (v9 + v8)) = 35;
  *(__buf + (v9 + v8 + 1)) = a1[1];
  *(__buf + (v9 + v8 + 2)) = 35;
  v10 = __buf + (v9 + v8 + 3);
  *v10 = *"HEADER END#";
  *(v10 + 7) = 591679045;
  v11 = v9 + v8 + 15;
  *(__buf + (v9 + v8 + 14)) = 13;
  v12 = v9 + v8 + 16;
  *(__buf + v11) = 10;
  if (SLFWrite(*(a1 + 3), v12, __buf, &v14) == 8)
  {
    SLClose(*(a1 + 3));
    *(a1 + 3) = -2;
    return 8;
  }

  else
  {
    result = 0;
    *a2 = v12;
  }

  return result;
}

uint64_t BuildEntry(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = **(*a1 + 104);
  *v6 = 35;
  v9 = strlen(v8);
  v10 = v9;
  *(a1 + 9) = v9;
  if (*(v8 + 71))
  {
    SLrecap(v8, v9, *(v8 + 71), v8 + 80, *(v8 + 71), a3);
  }

  if (SLchcnv(v8, v10, v8, 0, *(v8 + 72)) == 8)
  {
    if (!*(v7 + 116) || *(v7 + 112) <= 7)
    {
      *(v7 + 112) = 8;
      *(v7 + 116) = 1120;
    }

    SLClose(a2);
    free(v6);
    return 8;
  }

  else
  {
    if (*(v8 + 88))
    {
      LOWORD(v10) = PDhypins(v8, (v8 + 88), *(a1 + 22));
    }

    strcpy(v6 + 1, v8);
    v6[(v10 + 1)] = 35;
    if (*(v8 + 70))
    {
      v12 = 49;
    }

    else
    {
      v12 = 48;
    }

    v6[(v10 + 2)] = v12;
    if (*(a1 + 10))
    {
      v13 = 0;
      v14 = v10 + 4;
      v6[(v10 + 3)] = 35;
      do
      {
        snprintf(__str, 3uLL, "%02X", *(v8 + 102 + v13));
        v15 = v14 + 1;
        v6[v14] = __str[0];
        v14 += 2;
        v6[v15] = __str[1];
        ++v13;
      }

      while (v13 != 12);
    }

    else
    {
      v14 = v10 + 3;
    }

    result = 0;
    *(a1 + 8) = v14;
  }

  return result;
}

uint64_t AltAndWrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v19 = 0;
  v6 = *(a2 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = **(*a2 + 104);
  if (!*v9 || !*(v9 + 100))
  {
    goto LABEL_10;
  }

  v8[v6] = 35;
  *a3 = *v7;
  *(a3 + 4) = *(v9 + 96);
  *(a3 + 16) = *(v9 + 100);
  if (PDalt(a3) != 8)
  {
    v13 = *(a3 + 16);
    v14 = *(a3 + 8);
    if (SLchcnv(v14, v13, v14, 0, *(v9 + 72)) == 8)
    {
      if (*(a1 + 2588) && *(a1 + 2584) > 7)
      {
        goto LABEL_15;
      }

      *(a1 + 2584) = 8;
      v15 = 1120;
LABEL_14:
      *(a1 + 2588) = v15;
LABEL_15:
      SLClose(a4);
      return 8;
    }

    v16 = v6 + 1;
    strncpy(&v8[v16], v14, v13);
    LOWORD(v6) = v13 + v16;
LABEL_10:
    v8[v6] = 13;
    v8[(v6 + 1)] = 10;
    v8[(v6 + 2)] = 0;
    v17 = SLFWrite(a4, (v6 + 2), v8, &v19);
    result = 0;
    if (v17 != 8)
    {
      return result;
    }

    if (*(a1 + 2588) && *(a1 + 2584) > 7)
    {
      goto LABEL_15;
    }

    *(a1 + 2584) = 8;
    v15 = 1011;
    goto LABEL_14;
  }

  SLClose(a4);
  v11 = *(a3 + 56);
  v12 = *(a3 + 40);
  *(a1 + 2584) = *(a3 + 24);
  *(a1 + 2600) = v12;
  *(a1 + 2616) = v11;
  return 8;
}

uint64_t GetBuildWord(uint64_t a1, unsigned __int16 **a2, _BYTE *a3, unsigned int a4, uint64_t a5)
{
  v10 = *a2;
  result = PDword(*a2, 8u, 5);
  if (result == 8)
  {
    v12 = (a1 + 2584);
    v13 = *(v10 + 7);
    v14 = *(v10 + 8);
    v15 = *(v10 + 18);
LABEL_3:
    *(a1 + 2616) = v15;
    *v12 = v13;
    v12[1] = v14;
    return result;
  }

  if ((v10[58] & 0xFFFE) == 0x13F8)
  {
    result = PDword(v10, 8u, 2);
    if (result != 8)
    {
      *a3 = 0;
      BuildEntry(a2, a4, a5);
      return 5113;
    }

    v12 = (a1 + 2584);
    v13 = *(v10 + 7);
    v14 = *(v10 + 8);
    v15 = *(v10 + 18);
    goto LABEL_3;
  }

  result = BuildEntry(a2, a4, a5);
  if (result != 8)
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t PDGets(unsigned __int8 *__dst, int a2, int *a3, uint64_t a4)
{
  v19 = 0;
  if (SLFRead(a4, a2, __dst, &v19) == 8 || v19 == 0)
  {
    return 8;
  }

  if (v19 < 1)
  {
    v13 = 0;
    LOWORD(v10) = -1;
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = __dst[v10];
      if (v11 == 13 || v11 == 10)
      {
        break;
      }

      if (v19 == ++v10)
      {
        LOWORD(v10) = -1;
        v13 = v19;
        goto LABEL_28;
      }
    }

    if (v19 <= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v19;
    }

    if (v19 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v19;
    }

    v15 = v10;
    while (v11 <= 0xDu && ((1 << v11) & 0x2401) != 0)
    {
      if (v14 == v15)
      {
        goto LABEL_28;
      }

      LOBYTE(v11) = __dst[++v15];
    }

    v13 = v15;
  }

LABEL_28:
  v16 = *a3 + v13;
  *a3 = v16;
  SLSeek(a4, v16, 0);
  if (v10 == 0xFFFF)
  {
    v18 = &__dst[v13];
  }

  else
  {
    v17 = v10 + 2;
    v18 = &__dst[v10];
    if (v17 <= a2)
    {
      *v18 = 2573;
      v18 = &__dst[v17];
    }
  }

  result = 0;
  *v18 = 0;
  return result;
}

uint64_t GetOldSDWord(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = PDword(a2, 8u, 5);
  if (result == 8)
  {
    v7 = (a1 + 2584);
    v8 = *(a2 + 112);
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
LABEL_3:
    *(a1 + 2616) = v10;
    *v7 = v8;
    v7[1] = v9;
    return result;
  }

  if ((*(a2 + 116) & 0xFFFE) == 0x13F8)
  {
    result = PDword(a2, 8u, 2);
    if (result == 8)
    {
      v7 = (a1 + 2584);
      v8 = *(a2 + 112);
      v9 = *(a2 + 128);
      v10 = *(a2 + 144);
      goto LABEL_3;
    }

    *a3 = 0;
    return 5113;
  }

  else
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t BuildForm(char *a1, _BYTE *a2, int a3, _WORD *a4, _BYTE *a5)
{
  v10 = malloc_type_malloc(0x881uLL, 0x100004077774924uLL);
  if (!v10)
  {
    return 8;
  }

  v11 = v10;
  v12 = malloc_type_malloc(0x19uLL, 0x100004077774924uLL);
  if (!v12)
  {
    return 8;
  }

  v13 = v12;
  v14 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  if (!v14)
  {
    return 8;
  }

  v15 = v14;
  if (*a1 != 35)
  {
    __strcpy_chk();
    *a1 = 35;
    strcat(a1, v11);
  }

  v29 = 0;
  v28 = 0;
  memset(v13, 48, 24);
  PDasparse(a1, v11, &v29, a5, v15, &v28, a3, v13);
  *a2 = 35;
  v16 = *v11;
  if (*v11)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      a2[v17 + 1] = v16;
      v17 = ++v18;
      v16 = v11[v18];
    }

    while (v16);
    LODWORD(v19) = v18;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v21 = &a2[v19];
  v21[1] = 35;
  if (*a5)
  {
    v22 = 49;
  }

  else
  {
    v22 = 48;
  }

  v21[2] = v22;
  if (a3)
  {
    v23 = 0;
    a2[v19 + 3] = 35;
    v19 = (v19 + 4);
    do
    {
      a2[v19++] = *(v13 + v23++);
    }

    while (v23 != 24);
  }

  else
  {
    LOWORD(v19) = v19 + 3;
  }

  *a4 = v19;
  if (v29)
  {
    v24 = v19 + 1;
    a2[v19] = 35;
    v25 = *v15;
    if (*v15)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        a2[v24 + v26] = v25;
        v26 = ++v27;
        v25 = v15[v27];
      }

      while (v25);
    }

    else
    {
      v27 = 0;
    }

    LOWORD(v19) = v27 + v24;
  }

  a2[v19] = 13;
  a2[(v19 + 1)] = 10;
  a2[(v19 + 2)] = 0;
  free(v13);
  free(v11);
  free(v15);
  return 0;
}

uint64_t Huffman_Comp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unsigned int a6, _WORD *a7, uint64_t a8)
{
  v75 = *MEMORY[0x1E69E9840];
  v72 = -2;
  v70 = -2;
  v71 = -2;
  v16 = malloc_type_malloc(0xC1uLL, 0x100004077774924uLL);
  if (!v16 || (v17 = v16, v68 = a7, (v18 = malloc_type_malloc(0xFD00uLL, 0x100004077774924uLL)) == 0) || (v19 = v18, (v67 = malloc_type_calloc(0xFD00uLL, 1uLL, 0x100004077774924uLL)) == 0) || (v20 = malloc_type_malloc(0x81uLL, 0x100004077774924uLL)) == 0)
  {
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v23 = 1030;
      goto LABEL_14;
    }

    return 8;
  }

  v21 = v20;
  v73 = 0;
  if (SLOpen(a1, a2, &v71, 0) == 8 || SLOpen(a1, a3, &v70, 0x602u) == 8 || SLOpen(a1, a4, &v72, 0x602u) == 8)
  {
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v23 = 1012;
LABEL_14:
      *(a8 + 4) = v23;
      return result;
    }

    return 8;
  }

  v65 = v21;
  *v68 = 0;
  v24 = OpenOutputBuffer(a6);
  v25 = OpenOutputBuffer(a6);
  LOWORD(v26) = 0;
  if (!SLFRead(v71, 8, __dst, &v73) && v73 == 8)
  {
    v27 = 0;
    v26 = 0;
    v66 = 0;
    v54 = v25;
    v28 = 0uLL;
    while (1)
    {
      v29 = __dst[1];
      v30 = __dst[3] | __dst[2];
      v61 = __dst[4];
      v63 = __dst[0];
      v59 = __dst[6];
      v60 = __dst[5];
      v57 = __dst[7];
      *v65 = v28;
      v65[1] = v28;
      v65[2] = v28;
      v65[3] = v28;
      v65[4] = v28;
      v65[5] = v28;
      v65[6] = v28;
      v65[7] = v28;
      *(v65 + 128) = 0;
      if (SLFRead(v71, v30, v65, &v73))
      {
        break;
      }

      v31 = v29 | v63;
      if (SLFRead(v71, v31, v17, &v73))
      {
        break;
      }

      v32 = (v57 | v59);
      v33 = (v57 | v59);
      if (v30 >= 4)
      {
        v34 = 4;
      }

      else
      {
        v34 = v30;
      }

      v64 = v34;
      v58 = (v30 - (v60 | v61));
      v62 = v33 + 1;
      v25 = v54;
      v56 = &v17[v32 + 1];
      v55 = ~v32 + v31;
      while (1)
      {
        v35 = v31;
        if (v27)
        {
          if (v31)
          {
            v36 = v17;
            do
            {
              v37 = *v36++;
              v38 = v26++;
              v19[v38] = v37;
              --v35;
            }

            while (v35);
          }
        }

        else
        {
          bzero(v19, 0xFD00uLL);
          __strncpy_chk();
          __s[v64] = 0;
          strlen(__s);
          __strncat_chk();
          v39 = strlen(__s);
          if (SLFWrite(v70, v39, __s, &v73) == 8)
          {
            goto LABEL_62;
          }

          v40 = v26 + 1;
          v19[v26] = *v17 & 0xC0;
          if (v58)
          {
            v43 = v58;
            v44 = v65;
            v42 = v31;
            do
            {
              v45 = *v44++;
              v41 = v40 + 1;
              v19[v40++] = v45;
              --v43;
            }

            while (v43);
          }

          else
          {
            v41 = v26 + 1;
            v42 = v31;
          }

          if (v62 >= v42)
          {
            v26 = v41;
          }

          else
          {
            v46 = v55;
            v47 = v56;
            do
            {
              v48 = *v47++;
              v26 = v41 + 1;
              v19[v41++] = v48;
              --v46;
            }

            while (v46);
          }

          ++*v68;
          v27 = v31 + 2;
        }

        if (a6 >= v26)
        {
          break;
        }

        compress_buffer(v19, v26, v54, a5);
        if (*(v54 + 8) < (a6 - 2))
        {
          __memcpy_chk();
          v66 = v26;
          break;
        }

        v24[4] = 0;
        compress_buffer(v67, v66, v24, a5);
        LODWORD(v49) = v24[4];
        if (v24[4])
        {
          v50 = 0;
          do
          {
            v19[v50] = *(*v24 + v50);
            ++v50;
            v49 = v24[4];
          }

          while (v50 < v49);
        }

        if (v49 < a6)
        {
          memset(&v19[v49], 255, (~v49 + a6) + 1);
        }

        if (SLFWrite(v72, a6, v19, &v73) == 8)
        {
          goto LABEL_62;
        }

        v26 = 0;
        v27 = 0;
        v24[4] = 0;
      }

      *v65 = 0;
      if (SLFRead(v71, 8, __dst, &v73))
      {
        v51 = 0;
      }

      else
      {
        v51 = v73 == 8;
      }

      v28 = 0uLL;
      if (!v51)
      {
        goto LABEL_56;
      }
    }

    v25 = v54;
  }

LABEL_56:
  free(v65);
  free(v67);
  free(v17);
  SLClose(v71);
  v24[4] = 0;
  compress_buffer(v19, v26, v24, a5);
  free(a5);
  LODWORD(v52) = v24[4];
  if (v24[4])
  {
    v53 = 0;
    do
    {
      v19[v53] = *(*v24 + v53);
      ++v53;
      v52 = v24[4];
    }

    while (v53 < v52);
  }

  if (v52 < a6)
  {
    memset(&v19[v52], 255, (~v52 + a6) + 1);
  }

  if (SLFWrite(v72, a6, v19, &v73) == 8)
  {
LABEL_62:
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v23 = 1011;
      goto LABEL_14;
    }

    return 8;
  }

  free(v19);
  CloseOutputBuffer(v25);
  CloseOutputBuffer(v24);
  SLClose(v70);
  SLClose(v72);
  return 0;
}

uint64_t Add_Tables(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, _DWORD *__buf, uint64_t a11)
{
  v27 = -2;
  v28 = -2;
  v26 = 0;
  if (SLOpen(a2, a3, &v27, 0x602u) == 8)
  {
LABEL_2:
    if (!*(a11 + 4) || *a11 <= 7)
    {
      result = 8;
      *a11 = 8;
      v19 = 1012;
LABEL_9:
      *(a11 + 4) = v19;
      return result;
    }

    return 8;
  }

  if (SLFWrite(v27, 1024, __buf, &v26) != 8)
  {
    v20 = v26;
    __buf[175] = bswap32(v26);
    if (SLOpen(a2, a4, &v28, 0) != 8)
    {
      v21 = malloc_type_malloc(0xFD00uLL, 0x100004077774924uLL);
      if (v21)
      {
        v22 = v21;
        while (SLFRead(v28, 64768, v22, &v26) != 8)
        {
          if (SLFWrite(v27, v26, v22, &v26) == 8)
          {
            goto LABEL_6;
          }

          v20 += v26;
          if (v26 != 64768)
          {
            SLClose(v28);
            v28 = -2;
            *(__buf + 708) = HIBYTE(v20);
            *(__buf + 709) = BYTE2(v20);
            *(__buf + 710) = BYTE1(v20);
            *(__buf + 711) = v20;
            if (SLOpen(a2, a5, &v28, 0) == 8)
            {
              goto LABEL_2;
            }

            v23 = v20;
            while (1)
            {
              if (SLFRead(v28, 64768, v22, &v26) == 8)
              {
                goto LABEL_40;
              }

              if (SLFWrite(v27, v26, v22, &v26) == 8)
              {
                break;
              }

              v23 += v26;
              if (v26 != 64768)
              {
                SLClose(v28);
                v28 = -2;
                *(__buf + 716) = HIBYTE(v23);
                *(__buf + 717) = BYTE2(v23);
                *(__buf + 718) = BYTE1(v23);
                *(__buf + 719) = v23;
                *(__buf + 512) = (v23 - v20) >> 8;
                *(__buf + 513) = v23 - v20;
                if (SLOpen(a2, a6, &v28, 0) == 8)
                {
                  goto LABEL_2;
                }

                v24 = v23;
                while (SLFRead(v28, 64768, v22, &v26) != 8)
                {
                  if (SLFWrite(v27, v26, v22, &v26) == 8)
                  {
                    v25 = v27;
                    goto LABEL_46;
                  }

                  v24 += v26;
                  if (v26 != 64768)
                  {
                    SLClose(v28);
                    v28 = -2;
                    *(__buf + 724) = HIBYTE(v24);
                    *(__buf + 725) = BYTE2(v24);
                    *(__buf + 726) = BYTE1(v24);
                    *(__buf + 727) = v24;
                    *(__buf + 490) = (v24 - v23) >> 8;
                    *(__buf + 491) = v24 - v23;
                    *a7 = 0;
                    *(__buf + 732) = HIBYTE(v24);
                    *(__buf + 733) = BYTE2(v24);
                    *(__buf + 734) = BYTE1(v24);
                    *(__buf + 735) = v24;
                    if (SLOpen(a2, a8, &v28, 0) == 8)
                    {
                      goto LABEL_2;
                    }

                    while (SLFRead(v28, 64768, v22, &v26) != 8)
                    {
                      if (SLFWrite(v27, v26, v22, &v26) == 8)
                      {
                        goto LABEL_45;
                      }

                      v24 += v26;
                      if (v26 != 64768)
                      {
                        SLClose(v28);
                        v28 = -2;
                        *(__buf + 740) = HIBYTE(v24);
                        *(__buf + 741) = BYTE2(v24);
                        *(__buf + 742) = BYTE1(v24);
                        *(__buf + 743) = v24;
                        if (a1 != 1)
                        {
LABEL_36:
                          free(v22);
                          SLClose(v27);
                          return 0;
                        }

                        if (SLOpen(a2, a9, &v28, 0) == 8)
                        {
                          goto LABEL_2;
                        }

                        while (SLFRead(v28, 64768, v22, &v26) != 8)
                        {
                          if (SLFWrite(v27, v26, v22, &v26) == 8)
                          {
                            goto LABEL_6;
                          }

                          if (v26 != 64768)
                          {
                            SLClose(v28);
                            v28 = -2;
                            goto LABEL_36;
                          }
                        }

                        goto LABEL_41;
                      }
                    }

                    goto LABEL_41;
                  }
                }

LABEL_40:
                SLClose(v28);
                goto LABEL_41;
              }
            }

LABEL_45:
            v25 = v28;
LABEL_46:
            SLClose(v25);
            goto LABEL_6;
          }
        }

LABEL_41:
        if (!*(a11 + 4) || *a11 <= 7)
        {
          result = 8;
          *a11 = 8;
          v19 = 1010;
          goto LABEL_9;
        }
      }

      else if (!*(a11 + 4) || *a11 <= 7)
      {
        result = 8;
        *a11 = 8;
        v19 = 1030;
        goto LABEL_9;
      }

      return 8;
    }

    goto LABEL_2;
  }

LABEL_6:
  if (!*(a11 + 4) || *a11 <= 7)
  {
    result = 8;
    *a11 = 8;
    v19 = 1011;
    goto LABEL_9;
  }

  return 8;
}

uint64_t Update_Header(char a1, char a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v18 = -2;
  v19 = 0;
  if (SLOpen(a5, a6, &v18, 2u) == 8)
  {
    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v16 = 1012;
LABEL_9:
      *(a8 + 4) = v16;
      return result;
    }
  }

  else
  {
    strcpy(a7, "Copyright [c] 1998  L & H Inc.      \x1A");
    *(a7 + 37) = 26;
    strcpy((a7 + 414), "#HEADER COMP START");
    *(a7 + 384) = 3072;
    *(a7 + 386) = 0;
    *(a7 + 387) = a2;
    *(a7 + 388) = 0;
    *(a7 + 392) = HIBYTE(a4);
    *(a7 + 393) = a4;
    *(a7 + 394) = 512;
    *(a7 + 404) = 0;
    *(a7 + 446) = 0;
    *(a7 + 488) = 0;
    *(a7 + 478) = 0;
    *(a7 + 492) = 0;
    *(a7 + 500) = 1024;
    *(a7 + 502) = HIBYTE(a3);
    *(a7 + 503) = a3;
    *(a7 + 504) = 0x8000;
    *(a7 + 748) = 0;
    *(a7 + 506) = 0;
    *(a7 + 510) = 0;
    *(a7 + 514) = 0;
    *(a7 + 522) = 0;
    *(a7 + 749) = a1;
    *(a7 + 756) = a9[5];
    *(a7 + 757) = a9[4];
    *(a7 + 768) = a9[6] >> 7;
    *(a7 + 769) = a9[6];
    *(a7 + 760) = 0;
    *(a7 + 761) = a9[7];
    *(a7 + 763) = a9[8];
    v17 = SLFWrite(v18, 1024, a7, &v19);
    result = 0;
    if (v17 != 8)
    {
      return result;
    }

    if (!*(a8 + 4) || *a8 <= 7)
    {
      result = 8;
      *a8 = 8;
      v16 = 1011;
      goto LABEL_9;
    }
  }

  return 8;
}

uint64_t isLowerCaseX(int a1, int a2)
{
  v2 = a1 - 97;
  v3 = (a1 - 97) < 0x1A;
  if (a2 > 1279)
  {
    v8 = a1 - 223;
    if ((a1 - 154) >= 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = a1 ^ 1;
    }

    if (v2 < 0x1A)
    {
      v9 = 1;
    }

    if (a1 > 247)
    {
      v9 = 1;
    }

    if (v8 >= 0x18)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if ((a1 - 154) >= 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = a1 ^ 1;
    }

    if (v2 >= 0x1A)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1;
    }

    if (a1 > 247)
    {
      v12 = 1;
    }

    if (v8 < 0x18)
    {
      v12 = 1;
    }

    if (a2 == 1280)
    {
      v3 = v12;
    }

    if (a2 == 1284)
    {
      return v10;
    }
  }

  else if (a2 == 514)
  {
    v3 = 1;
    if (v2 >= 0x1A && (a1 - 223) >= 0x18 && ((a1 - 177) > 0xE || ((1 << (a1 + 79)) & 0x6F35) == 0))
    {
      return (a1 - 248) < 7;
    }
  }

  else
  {
    v7 = (a1 - 208) < 0x20 || (a1 - 241) < 0xC || a1 > 253 || v2 < 0x1A;
    if (a2 == 517)
    {
      return v7;
    }
  }

  return v3;
}

uint64_t toLowerX_0(uint64_t result, int a2)
{
  v2 = result - 65;
  if (a2 <= 1279)
  {
    if (a2 == 514)
    {
      if (v2 >= 0x1A && (result - 192) >= 0x17 && ((result - 161) > 0x3D || ((1 << (result + 95)) & 0x3F80000000006F35) == 0))
      {
        return result;
      }

      if (result - 161) < 0xF && ((0x6F35u >> (result + 95)))
      {
        return dword_1D2BFAAF0[(result - 161)];
      }

      return (result + 32);
    }

    if (a2 == 517)
    {
      if (v2 >= 0x1A && (result - 176) > 0x1F)
      {
        if ((result & 0xFFFFFFFE) != 0xAE && (result - 161) >= 0xC)
        {
          return result;
        }

        else
        {
          return (result + 80);
        }
      }

      return (result + 32);
    }

LABEL_18:
    if (v2 >= 0x1A)
    {
      return result;
    }

    else
    {
      return (result + 32);
    }
  }

  if (a2 != 1284)
  {
    if (a2 != 1280)
    {
      goto LABEL_18;
    }

    if (v2 >= 0x1A && (result - 192) >= 0x17)
    {
      if ((result - 216) < 7)
      {
        return (result + 32);
      }

      goto LABEL_44;
    }

    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return (result + 32);
    }

LABEL_46:
    if (result == 159)
    {
      return 255;
    }

    else
    {
      return (result + 16);
    }
  }

  if (v2 < 0x1A || (result - 192) < 0x17)
  {
    if (result - 138 > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      if (result == 73)
      {
        return 253;
      }

      return (result + 32);
    }

    goto LABEL_46;
  }

  if (result <= 215)
  {
LABEL_44:
    if ((result - 138) > 0x15 || ((1 << (result + 118)) & 0x200015) == 0)
    {
      return result;
    }

    goto LABEL_46;
  }

  if ((result - 216) < 5)
  {
    return (result + 32);
  }

  if (result == 221)
  {
    return 105;
  }

  if (result == 222)
  {
    return (result + 32);
  }

  return result;
}

void sub_1D2B9A648(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Unwind_Resume(a1);
}

uint64_t PDExtSort(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5, _BYTE *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v106 = *MEMORY[0x1E69E9840];
  v100 = 0;
  v18 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v18)
  {
    return 1030;
  }

  v19 = v18;
  v20 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v20)
  {
    return 1030;
  }

  v95 = a8;
  v96 = v20;
  v21 = malloc_type_calloc(0x882uLL, 1uLL, 0x100004077774924uLL);
  if (!v21)
  {
    return 1030;
  }

  v22 = v21;
  v23 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v23)
  {
    return 1030;
  }

  __src = v23;
  v24 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
  if (!v24)
  {
    return 1030;
  }

  v90 = v24;
  v25 = malloc_type_calloc(0x3F40uLL, 1uLL, 0x100004077774924uLL);
  if (!v25)
  {
    return 1030;
  }

  v89 = v25;
  v26 = malloc_type_malloc(0xFD00uLL, 0x100004077774924uLL);
  if (!v26)
  {
    return 1030;
  }

  v27 = v26;
  v81 = a5;
  v94 = malloc_type_calloc(0x7E80uLL, 2uLL, 0x1000040BDFB0063uLL);
  if (!v94)
  {
    return 1030;
  }

  v28 = malloc_type_calloc(0x7E80uLL, 2uLL, 0x1000040BDFB0063uLL);
  if (!v28)
  {
    return 1030;
  }

  __b = v28;
  v29 = malloc_type_calloc(0x3F40uLL, 2uLL, 0x1000040BDFB0063uLL);
  if (!v29)
  {
    return 1030;
  }

  v75 = v29;
  v78 = a10 & 7;
  if (v78 == 2)
  {
    result = SLSeek(a1, a2, 0);
    if (result == 8)
    {
      return result;
    }
  }

  else
  {
    a2 = 0;
  }

  if (a3)
  {
    v82 = 0;
    if ((a10 & 0x38) == 0x10)
    {
      v31 = a4;
    }

    else
    {
      a2 = 0;
      v31 = 0;
    }

    v76 = v31;
    v32 = 1;
  }

  else
  {
    v76 = 0;
    v32 = 0;
    v82 = 1;
  }

  v103 = a2;
  v104 = 0;
  v101 = 0;
  v102 = 0;
  *v96 = 0;
  v105[0] = 0;
  if (SLtmpnam(a6, v105) == 8)
  {
    return 1019;
  }

  if (SLOpen(a6, v105, &v104, 0x602u) == 8)
  {
    return 1012;
  }

  v86 = v32;
  v33 = 0;
  v34 = 0;
  v85 = 0;
  v79 = a6;
LABEL_26:
  v35 = 0;
  v36 = 0;
  v74 = v34;
  v80 = v34;
LABEL_27:
  v37 = a7;
  v38 = v33;
  if (SLFpos(v104, &v102) == 8)
  {
    return 1010;
  }

  v89[v80] = v102;
  if (!v38)
  {
    v92 = 0;
    LODWORD(v83) = 0;
    HIDWORD(v83) = v86;
LABEL_34:
    a7 = v37;
    v39 = v85 == 0;
    while (1)
    {
LABEL_35:
      while (!v39)
      {
        v44 = strlen(v22);
        v39 = 1;
        LOWORD(v41) = v44;
        if (v44)
        {
          goto LABEL_46;
        }
      }

      if (PDGets(v22, 2177, &v103, a1) == 8)
      {
        v85 = 0;
        v33 = 1;
        goto LABEL_57;
      }

      v40 = strlen(v22);
      v39 = 1;
      v41 = v40;
      if (v40)
      {
        while (1)
        {
          v42 = v22[v41 - 1];
          if (v42 != 13 && v42 != 10)
          {
            break;
          }

          if (!--v41)
          {
            v39 = 1;
            goto LABEL_35;
          }
        }

LABEL_46:
        v22[v41] = 0;
        if (((v41 + v36) >> 8) > 0xFCu)
        {
          v85 = 1;
LABEL_56:
          v33 = v83;
LABEL_57:
          v86 = 1;
          a6 = v79;
          if (!HIDWORD(v83))
          {
            v84 = v33;
            if (PDsdsort(v27, v94, v35, v78, v95))
            {
              return 1030;
            }

            if (v35)
            {
              v51 = v35;
              v52 = v94;
              do
              {
                v93 = v51;
                v87 = v52 + 1;
                __strcpy_chk();
                v53 = strlen(__src);
                v54 = v53;
                if (a7)
                {
                  SLchcnv(__src, v53, __src, 0, a9);
                }

                v99 = 0;
                __buf = HIBYTE(v54);
                v98 = v54;
                if (SLFWrite(v104, 2, &__buf, &v101 + 1) == 8 || SLFWrite(v104, v54, __src, &v101 + 1) == 8)
                {
                  return 1011;
                }

                v51 = v93 - 1;
                v52 = v87;
              }

              while (v93 != 1);
            }

            v86 = 0;
            v75[v80] = v35;
            v34 = v74 + 1;
            v33 = v84;
            goto LABEL_26;
          }

          goto LABEL_27;
        }

        v45 = v35 + 1;
        v94[v35] = v36;
        __strcpy_chk();
        if ((v41 & 0xFFFE) != 0)
        {
          v46 = v41;
        }

        else
        {
          v46 = 1;
        }

        v47 = v19;
        v48 = v36;
        do
        {
          v49 = *v47++;
          v50 = v48++;
          v27[v50] = v49;
          --v46;
        }

        while (v46);
        v36 = v50 + 2;
        v27[v48] = 0;
        v39 = 1;
        ++v35;
        if ((((v45 >> 7) < 0xFDu) & ~v92) == 0)
        {
          v85 = 0;
          v35 = v45;
          goto LABEL_56;
        }
      }
    }
  }

  if (!v82)
  {
    if (v86 == 1)
    {
      v92 = 0;
      v83 = 0;
      v103 = v76;
      v82 = 1;
      a1 = a3;
      LOBYTE(v78) = (a10 >> 3) & 7;
    }

    else
    {
      v92 = 1;
      v82 = 0;
      v83 = 1;
    }

    goto LABEL_34;
  }

  *v90 = 0;
  SLClose(v104);
  if (SLOpen(a6, v105, &v104, 2u) == 8)
  {
    return 1012;
  }

  *v96 = 0;
  if (v74)
  {
    memset(__b, 255, 2 * v80);
    bzero(v27, 0xFD00uLL);
    v55 = 0;
    *v96 = 0;
    v56 = v74;
    v57 = v75;
    while (1)
    {
      if (v75[v55])
      {
        if (SLSeek(v104, v89[v55], 0) == 8 || SLFRead(v104, 2177, __src, &v101 + 1) == 8)
        {
          return 1010;
        }

        __buf = *__src;
        v98 = __src[1];
        v99 = 0;
        v58 = v98 | (__buf << 8);
        __memcpy_chk();
        __src[v58] = 0;
        v59 = v75[v55] - 1;
        if (v75[v55] == 1)
        {
          --v56;
        }

        else
        {
          v89[v55] += v58 + 2;
        }

        v75[v55] = v59;
        if (v58 > 0x881)
        {
          return 5109;
        }

        strcpy(&v27[(2177 * v55)], __src);
        __b[v55] = v55;
      }

      if (++v55 == v80)
      {
        goto LABEL_81;
      }
    }
  }

  bzero(v27, 0xFD00uLL);
  v56 = 0;
  v57 = v75;
LABEL_81:
  v88 = v56;
  v60 = 0;
  *v96 = 0;
  v61 = *__b;
  v62 = v74;
  do
  {
    if (!v57[v61])
    {
      *v96 = 0;
      if (v74)
      {
        v68 = 0;
        while (1)
        {
          if (v57[v68])
          {
            if (SLSeek(v104, v89[v68], 0) == 8 || SLFRead(v104, 129, __src, &v101 + 1) == 8)
            {
              return 1010;
            }

            __buf = *__src;
            v98 = __src[1];
            v99 = 0;
            v69 = v98 | (__buf << 8);
            __memcpy_chk();
            __src[v69] = 0;
            if (!*v96)
            {
              goto LABEL_106;
            }

            if (PDsdcmp(__src, v96, v78, v95, &v100))
            {
              return 1030;
            }

            if (v100 <= 0)
            {
LABEL_106:
              v60 = v68;
              __strcpy_chk();
            }
          }

          ++v68;
          v61 = v60;
          if (v62 == v68)
          {
            goto LABEL_83;
          }
        }
      }

      v61 = v60;
    }

LABEL_83:
    if (SLSeek(v104, v89[v61], 0) == 8 || SLFRead(v104, 2177, v22, &v101 + 1) == 8)
    {
      return 1010;
    }

    __buf = *v22;
    v98 = v22[1];
    v99 = 0;
    v63 = v98 | (__buf << 8);
    __memcpy_chk();
    v22[v63] = 0;
    v64 = v57[v61] - 1;
    if (v57[v61] == 1)
    {
      --v88;
    }

    else
    {
      v89[v61] += v63 + 2;
    }

    v57[v61] = v64;
    if (v74)
    {
      v65 = 0;
      v66 = __b;
      while (!PDsdcmp(&v27[v65], v22, v78, v95, &v100))
      {
        if (v100 <= 0)
        {
          v60 = *v66;
          __strcpy_chk();
          if (v63 > 0x881)
          {
            return 5109;
          }

          strcpy(&v27[v65], v22);
          *v66 = v61;
          __strcpy_chk();
          v61 = v60;
        }

        v65 += 2177;
        ++v66;
        if (2177 * v74 == v65)
        {
          goto LABEL_95;
        }
      }

      return 1030;
    }

LABEL_95:
    __strcat_chk();
    v67 = strlen(v22);
    if (SLFWrite(v81, v67, v22, &v101) == 8)
    {
      return 1011;
    }

    v57 = v75;
    v62 = v74;
  }

  while (v88);
  if (v74)
  {
    v70 = 2177 * v74 + 63359;
    v71 = v74 - 1;
    do
    {
      __strcpy_chk();
      __strcat_chk();
      v72 = strlen(__src);
      if (SLFWrite(v81, v72, __src, &v101) == 8)
      {
        return 1011;
      }

      v70 -= 2177;
    }

    while (v71--);
  }

  result = SLSeek(v81, 0, 0);
  if (result != 8)
  {
    SLClose(v104);
    SLremove(v79, v105);
    free(v19);
    free(v96);
    free(v22);
    free(__src);
    free(v90);
    free(v27);
    free(v94);
    free(__b);
    free(v75);
    free(v89);
    return 0;
  }

  return result;
}

uint64_t PDsdsort(uint64_t a1, __int16 *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return 0;
  }

  v7 = a4;
  v10 = a3 - 1;
  v11 = (a3 - 2) >> 1;
  if (v11 < 0)
  {
LABEL_6:
    v13 = v10;
    while (v13)
    {
      v14 = *a2;
      *a2 = a2[v13];
      v15 = v13 - 1;
      a2[v13] = v14;
      v16 = DownHeap(0, (v13 - 1), v7, a2, a1, a5);
      v13 = v15;
      if (v16)
      {
        return 1030;
      }
    }

    return 0;
  }

  else
  {
    while (!DownHeap(v11, v10, v7, a2, a1, a5))
    {
      v12 = v11;
      LOWORD(v11) = v11 - 1;
      if (v12 <= 0)
      {
        goto LABEL_6;
      }
    }

    return 1030;
  }
}

uint64_t PDsdcmp(char *__s, unsigned __int8 *a2, int a3, uint64_t a4, _WORD *a5)
{
  v7 = __s;
  v26 = 0;
  if (a3 == 3)
  {
    PDatoi(__s, &v26 + 1);
    PDatoi(a2, &v26);
    result = 0;
    *a5 = v26 - HIWORD(v26);
  }

  else
  {
    v10 = strlen(__s);
    v11 = malloc_type_calloc(v10 + 1, 1uLL, 0x100004077774924uLL);
    if (v11 && (v12 = v11, v13 = strlen(a2), (v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL)) != 0))
    {
      v15 = v14;
      if (v10)
      {
        v16 = v10;
        v17 = v12;
        do
        {
          v18 = *v7++;
          *v17++ = ((*(a4 + 4 * v18) >> 25) & 0x20) + v18;
          --v16;
        }

        while (v16);
      }

      if (v13)
      {
        v19 = v13;
        v20 = v14;
        do
        {
          v21 = *a2++;
          *v20++ = ((*(a4 + 4 * v21) >> 25) & 0x20) + v21;
          --v19;
        }

        while (v19);
      }

      v22 = 0;
      v23 = 0;
      while (2)
      {
        v24 = v12[v22];
        while (1)
        {
          v25 = v14[v23];
          if (v24 == v25)
          {
            break;
          }

          if (v24 == 61)
          {
            goto LABEL_19;
          }

          if (v25 != 61)
          {
            goto LABEL_22;
          }

          ++v23;
        }

        if (v12[v22])
        {
          ++v23;
LABEL_19:
          ++v22;
          continue;
        }

        break;
      }

      LOWORD(v25) = 0;
LABEL_22:
      *a5 = v24 - v25;
      free(v12);
      free(v15);
      return 0;
    }

    else
    {
      return 1030;
    }
  }

  return result;
}

uint64_t PDreadHead(char *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  if (!v4)
  {
    return 8;
  }

  v5 = v4;
  v6 = strlen(a1);
  if (v6 < -1)
  {
LABEL_3:
    v7 = 8;
    goto LABEL_50;
  }

  v8 = 0;
  v16 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  LOWORD(v12) = -1;
  while (1)
  {
    v13 = v12;
    v12 = v8;
    if (v10 > 0x17)
    {
      goto LABEL_13;
    }

    if (((1 << v10) & 0xAAAAAA) != 0)
    {
      break;
    }

    if (((1 << v10) & 0x555554) == 0)
    {
      if (a1[v8] != 35)
      {
        goto LABEL_3;
      }

      ++v9;
      v11 = v13 + 2;
      v10 = 1;
      goto LABEL_48;
    }

    ++v10;
    v11 = v8;
LABEL_13:
    if (v10 > 13)
    {
      if (v10 <= 19)
      {
        switch(v10)
        {
          case 14:
            __strncpy_chk();
            v5[v12 - v11] = 0;
            PDatoi(v5, (a2 + 4));
            v10 = 14;
            break;
          case 16:
            __strncpy_chk();
            v5[v12 - v11] = 0;
            PDatobyte(v5, (a2 + 6));
            v10 = 16;
            break;
          case 18:
            __strncpy_chk();
            v5[v12 - v11] = 0;
            PDatobyte(v5, (a2 + 7));
            v10 = 18;
            break;
        }

        goto LABEL_48;
      }

      if (v10 == 20)
      {
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatoi(v5, (a2 + 10));
        v10 = 20;
        goto LABEL_48;
      }

      if (v10 != 22)
      {
        if (v10 == 23)
        {
          if (SLstrncmp("HEADER END#", &a1[v11], 11))
          {
            goto LABEL_3;
          }

          v10 = 23;
        }

        goto LABEL_48;
      }

      goto LABEL_44;
    }

    if (v10 <= 7)
    {
      switch(v10)
      {
        case 2:
          if (SLstrncmp("#HEADER START", a1, 13))
          {
            goto LABEL_3;
          }

          v10 = 2;
          break;
        case 4:
          v14 = v16;
          if (a1[v11] < 0x32u)
          {
            v14 = 1;
          }

          v16 = v14;
          v10 = 4;
          break;
        case 6:
          __strncpy_chk();
          v5[v12 - v11] = 0;
          PDatobyte(v5, (a2 + 1));
          v10 = 6;
          break;
      }

      goto LABEL_48;
    }

    switch(v10)
    {
      case 8:
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatobyte(v5, (a2 + 2));
        v10 = 8;
        break;
      case 10:
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatobyte(v5, (a2 + 3));
        v10 = 10;
        break;
      case 12:
        *a2 = a1[v11];
        if (!v16)
        {
          break;
        }

        *(a2 + 8) = 0;
        *(a2 + 4) = 0;
LABEL_44:
        __strncpy_chk();
        v5[v12 - v11] = 0;
        PDatobyte(v5, (a2 + 8));
        v10 = 22;
        break;
      default:
        break;
    }

LABEL_48:
    v8 = v12 + 1;
    if (v6 < v12)
    {
      v7 = 8 * (v9 < 24);
      goto LABEL_50;
    }
  }

  if (a1[v8] != 35)
  {
    goto LABEL_13;
  }

  if (v10 <= 0x16)
  {
    ++v9;
    ++v10;
    goto LABEL_13;
  }

  v7 = 303;
LABEL_50:
  free(v5);
  return v7;
}

uint64_t DownHeap(unsigned int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v27 = 0;
  v25 = *(a4 + 2 * a1);
  v8 = (a2 - 1) >> 1;
  if (a1 <= ((a2 - 1) >> 1))
  {
    v12 = 0;
    v26 = a3 - 1;
    while (1)
    {
      v13 = 2 * v7;
      if (((2 * v7) & 0xFFFE) >= a2)
      {
        v14 = 0;
      }

      else
      {
        v14 = (a5 + *(a4 + 2 * ((2 * v7) | 1u)));
      }

      v15 = v13 + 2;
      if (a2 >= (v13 + 2))
      {
        v16 = (a5 + *(a4 + 2 * (v13 + 2)));
      }

      else
      {
        v16 = 0;
      }

      if (v26 >= 2)
      {
        if (a3 != 3)
        {
          goto LABEL_29;
        }

        v20 = IntCmp(v14, v16);
        if (v20 <= 0)
        {
          v12 = v15;
        }

        else
        {
          v12 = (2 * v7) | 1;
        }

        if (v20 <= 0)
        {
          v21 = v16;
        }

        else
        {
          v21 = v14;
        }

        v19 = IntCmp(a5 + v25, v21);
        v27 = v19;
      }

      else
      {
        if (AsciiCmp(v14, v16, a6, &v27))
        {
          return 1030;
        }

        v17 = v27;
        v18 = v27 <= 0 ? v16 : v14;
        if (AsciiCmp((a5 + v25), v18, a6, &v27))
        {
          return 1030;
        }

        if (v17 <= 0)
        {
          v12 = v15;
        }

        else
        {
          v12 = (2 * v7) | 1;
        }

        v19 = v27;
      }

      if (v19 >= 1)
      {
        v9 = v7;
        goto LABEL_33;
      }

LABEL_29:
      v9 = v12;
      *(a4 + 2 * v7) = *(a4 + 2 * v12);
      v7 = v12;
      if (v12 > v8)
      {
        goto LABEL_33;
      }
    }
  }

  v9 = a1;
LABEL_33:
  result = 0;
  *(a4 + 2 * v9) = v25;
  return result;
}

uint64_t AsciiCmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, _WORD *a4)
{
  if (a1 && a2)
  {
    v8 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL);
    if (v8 && (v9 = v8, (v10 = malloc_type_calloc(0x881uLL, 1uLL, 0x100004077774924uLL)) != 0))
    {
      v11 = v10;
      v12 = *a1;
      if (*a1)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v9[v13] = ((*(a3 + 4 * v12) >> 25) & 0x20) + v12;
          v13 = ++v14;
          v12 = a1[v14];
        }

        while (v12);
      }

      v15 = *a2;
      if (*a2)
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v10[v16] = ((*(a3 + 4 * v15) >> 25) & 0x20) + v15;
          v16 = ++v17;
          v15 = a2[v17];
        }

        while (v15);
      }

      v18 = *v9;
      if (*v9)
      {
        LOWORD(v19) = 0;
        v20 = 0;
        while (1)
        {
          v21 = v10[v19];
          if (!v10[v19])
          {
LABEL_21:
            v19 = v19;
            goto LABEL_25;
          }

          if (v18 == v21)
          {
            break;
          }

          if (v18 != 61)
          {
            if (v21 != 61)
            {
              goto LABEL_21;
            }

            goto LABEL_19;
          }

          ++v20;
LABEL_20:
          v18 = v9[v20];
          if (!v9[v20])
          {
            goto LABEL_21;
          }
        }

        ++v20;
LABEL_19:
        LOWORD(v19) = v19 + 1;
        goto LABEL_20;
      }

      v19 = 0;
LABEL_25:
      *a4 = v18 - v10[v19];
      free(v9);
      free(v11);
      return 0;
    }

    else
    {
      return 1030;
    }
  }

  else
  {
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t IntCmp(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 1;
  if (a1 && a2)
  {
    v5 = 0;
    v4 = 0;
    __strcpy_chk();
    __strcpy_chk();
    PDatoi(v7, &v5);
    PDatoi(v6, &v4);
    return (v4 - v5);
  }

  return v2;
}

uint64_t PDngrams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = 0;
  *v80 = 0;
  v79 = 0;
  if (SLOpen(a1, a2, v80, 0) == 8 || SLOpen(a3, a4, &v79, 0x602u) == 8)
  {
    return 1012;
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL);
  *&v84 = v7;
  if (!v7 || (v8 = v7, v9 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL), (*(&v84 + 1) = v9) == 0) || (v10 = v9, v11 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL), (*&v85 = v11) == 0) || (v12 = v11, v13 = malloc_type_calloc(1uLL, 0x7530uLL, 0x100004077774924uLL), (*(&v85 + 1) = v13) == 0) || (v14 = v13, v15 = malloc_type_calloc(1uLL, 0x8000uLL, 0x100004077774924uLL), (v87 = v15) == 0) || (v16 = v15, v17 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040BDFB0063uLL), (*&v83 = v17) == 0) || (v18 = v17, v19 = malloc_type_calloc(1uLL, 0x4000uLL, 0x1000040BDFB0063uLL), (*&v86 = v19) == 0) || (v20 = v19, v21 = malloc_type_calloc(1uLL, 0x4000uLL, 0x100004077774924uLL), (*(&v86 + 1) = v21) == 0))
  {
    v45 = v79;
    v44 = v80[0];
    v6 = 1030;
LABEL_46:
    clean_up(1030, &v83, v44, v45);
    return v6;
  }

  v22 = v21;
  v23 = malloc_type_calloc(1uLL, 0x4000uLL, 0x100004077774924uLL);
  *(&v83 + 1) = v23;
  if (!v23)
  {
    v45 = v79;
    v6 = 1030;
    v44 = v80[0];
    goto LABEL_46;
  }

  v24 = v23;
  v78 = v20;
  v25 = 0;
  if (SLFRead(v80[0], 4, __dst, &v81) != 8 && v81 == 4)
  {
    v25 = 0;
    do
    {
      v8[++v25] = __dst[0];
      v10[v25] = __dst[1];
      v12[v25] = __dst[2];
      v14[v25] = __dst[3];
      v26 = SLFRead(v80[0], 4, __dst, &v81) != 8 && v81 == 4;
    }

    while (v26);
  }

  v27 = (v25 + 1);
  v8[v27] = -1;
  v10[v27] = -1;
  v12[v27] = -1;
  v14[v27] = -1;
  v22[1] = v8[1];
  v22[2] = v10[1];
  *(v24 + 1) = v12[1];
  *(v24 + 2) = v14[1];
  v28 = 1;
  LOWORD(v29) = 1;
  if ((v25 + 1) >= 2)
  {
    v30 = 0;
    LODWORD(v31) = (v25 + 2);
    if (v31 <= 3)
    {
      v31 = 3;
    }

    else
    {
      v31 = v31;
    }

    v32 = 2;
    LOWORD(v29) = 1;
    v28 = 1;
    do
    {
      v33 = v12[v32];
      v34 = v14[v32];
      v35 = v8[v32];
      v36 = &v22[2 * v28];
      if (v35 == *(v36 - 1) && v10[v32] == *v36)
      {
        if (v12[v32 - 1] == v33)
        {
          v33 = 0;
        }

        if (v14[v32 - 1] == v34)
        {
          v34 = 0;
        }
      }

      else
      {
        v37 = &v22[2 * ++v28];
        *(v37 - 1) = v35;
        *v37 = v10[v32];
      }

      if (v29 < 1)
      {
        if (!v30)
        {
LABEL_40:
          v30 = 0;
          v29 = v29 + 1;
          v41 = (v24 + 2 * v29);
          *(v41 - 1) = v33;
          *v41 = v34;
          *(v18 + 2 * v29) = 1;
        }
      }

      else
      {
        LOWORD(v38) = 1;
        while (1)
        {
          v39 = v38;
          v40 = (v24 + 2 * v38);
          if (*(v40 - 1) == v33 && *v40 == v34)
          {
            break;
          }

          v38 = (v39 + 1);
          if (v38 > v29)
          {
            goto LABEL_40;
          }
        }

        ++*(v18 + 2 * v39);
        v30 = 1;
      }

      ++v32;
    }

    while (v32 != v31);
  }

  sort_fr(v29, v18, v24);
  if (v25 <= 0x7FFEu)
  {
    v47 = 0;
    v48 = 0;
    LODWORD(v49) = (v25 + 2);
    if (v49 <= 2)
    {
      v49 = 2;
    }

    else
    {
      v49 = v49;
    }

    v50 = 32;
    v42 = 16;
    v51 = 1;
    v52 = 32;
    v43 = v78;
    while (1)
    {
      v53 = v12[v51];
      v54 = v14[v51];
      v55 = v8[v51];
      if (v55 == v52 && v10[v51] == v50)
      {
        break;
      }

      v57 = &v22[2 * ++v48];
      v52 = *(v57 - 1);
      v50 = *v57;
      if (v55 == v52)
      {
        if (v10[v51] == v50)
        {
          v56 = 1;
          v52 = v8[v51];
LABEL_63:
          v58 = 1;
          v59 = 1;
LABEL_64:
          v60 = (v24 + 2 * v58);
          do
          {
            if (v53 == *(v60 - 1) && v54 == *v60)
            {
              v59 = 0;
              v47 = (v42 + 1);
              v16[(v42 + 1)] = v58;
              v42 = v47;
              v61 = v47;
              v26 = v58++ == 254;
              if (!v26)
              {
                goto LABEL_64;
              }

              goto LABEL_76;
            }

            v60 += 2;
            ++v58;
          }

          while (v58 != 255);
          if (v59)
          {
            v62 = (v42 + 1);
            v16[(v42 + 1)] = -1;
            v16[(v42 + 2)] = v53;
            v42 = (v42 + 3);
            v16[v42] = v54;
            v47 = v62;
            if (v56)
            {
              goto LABEL_79;
            }

            goto LABEL_80;
          }

          v61 = v42;
LABEL_76:
          v42 = v61;
          v62 = v47;
          if (v56)
          {
            goto LABEL_79;
          }

          goto LABEL_80;
        }

        v52 = v8[v51];
      }

LABEL_79:
      v78[v48] = v47;
      v62 = v47;
LABEL_80:
      ++v51;
      v47 = v62;
      if (v51 == v49)
      {
        goto LABEL_81;
      }
    }

    v56 = 0;
    if (v12[v51 - 1] == v53)
    {
      v53 = 0;
    }

    if (v14[v51 - 1] == v54)
    {
      v54 = 0;
    }

    goto LABEL_63;
  }

  LOWORD(v42) = 16;
  v43 = v78;
LABEL_81:
  v63 = v42;
  v16[1] = (v42 + 1) >> 8;
  v16[2] = v42 + 1;
  v16[4] = v28;
  v16[3] = BYTE1(v28);
  if (v28 >= 1)
  {
    v64 = 0;
    v65 = v42 + v28;
    v66 = v42 + 2 * v28;
    v67 = (v28 + 1);
    if (v67 <= 2)
    {
      v68 = 2;
    }

    else
    {
      v68 = v67;
    }

    v69 = v68 - 1;
    v70 = v22 + 2;
    do
    {
      v16[v63 + 1 + v64] = *(v70 - 1);
      v71 = *v70;
      v70 += 2;
      v16[v65 + 1 + v64] = v71;
      v72 = &v43[v64 + 1];
      v16[v66 + 1 + v64] = *(v72 + 1);
      v16[v66 + 1 + v28 + v64++] = *v72;
    }

    while (v69 != v64);
  }

  v73 = v63 + 4 * v28;
  *(v16 + 5) = bswap32(v73 + 1) >> 16;
  v74 = &v16[v73 + 257];
  v75 = (v24 + 2);
  v76 = 256;
  do
  {
    *(v74 - 256) = *(v75 - 1);
    v77 = *v75;
    v75 += 2;
    *v74++ = v77;
    --v76;
  }

  while (v76);
  v16[8] = v73;
  v16[7] = (v73 + 512) >> 8;
  SLFWrite(v79, (v73 + 512) - 1, v16 + 1, &v80[1]);
  clean_up(0, &v83, v80[0], v79);
  return 0;
}

uint64_t clean_up(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a2 + 16);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a2 + 32);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a2 + 64);
  if (v12)
  {
    free(v12);
  }

  if (*a2)
  {
    free(*a2);
  }

  v13 = *(a2 + 48);
  if (v13)
  {
    free(v13);
  }

  v14 = *(a2 + 56);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    free(v15);
  }

  SLClose(a3);
  SLClose(a4);
  return a1;
}

uint64_t sort_fr(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 2)
  {
    LOWORD(v3) = result;
    do
    {
      v4 = v3;
      v3 = v3 >> 1;
      v5 = (result - (v4 >> 1));
      LOWORD(v6) = 1;
      do
      {
        LOWORD(v7) = v6;
        do
        {
          v7 = v7;
          v8 = *(a2 + 2 * v7);
          v9 = (v7 + v3);
          v10 = *(a2 + 2 * v9);
          if (v8 >= v10)
          {
            break;
          }

          v11 = a3 + 2 * v7;
          v12 = *(v11 - 1);
          *(a2 + 2 * v7) = v10;
          v13 = a3 + 2 * v9;
          *(v11 - 1) = *(v13 - 1);
          *(a2 + 2 * v9) = v8;
          *(v13 - 1) = v12;
          LODWORD(v7) = (v7 - v3);
        }

        while (v7 > 0);
        v6 = (v6 + 1);
      }

      while (v6 <= v5);
    }

    while (v3 >= 2);
  }

  return result;
}

uint64_t PDSDinit(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 2176);
  v7 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v7)
  {
    return 8;
  }

  v8 = v7;
  v9 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v9)
  {
    return 8;
  }

  v10 = v9;
  v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  if (!v11)
  {
    return 8;
  }

  v12 = v11;
  v13 = 8;
  v14 = malloc_type_calloc(0x202uLL, 8uLL, 0x100004000313F17uLL);
  *(v6 + 48) = v14;
  if (v14)
  {
    v15 = malloc_type_calloc(1uLL, 0x100uLL, 0x100004077774924uLL);
    *(v6 + 96) = v15;
    if (!v15)
    {
      return 8;
    }

    *v41 = 0;
    if (a2)
    {
      v41[0] = a3;
      SLSeek(a3, *(a1 + 768), 0);
    }

    else
    {
      if (SLOpen(a1 + 1, a1 + 512, v41, 0) == 8)
      {
        return 8;
      }

      LODWORD(a3) = v41[0];
    }

    *(a1 + 776) = a3;
    *(*(a1 + 2184) + 64) = a3;
    if (SLFRead(a3, 1024, v8, &v41[1]) == 8)
    {
      return 8;
    }

    strcpy(v10, "#HEADER COMP START");
    v17 = strncpy(v12, v8 + 38, 0x11uLL);
    v18 = SLstrncmp(v17, v10, 17);
    free(v10);
    free(v12);
    if (v18)
    {
      v19 = bswap32(*(v8 + 175));
      *v6 = v19;
      v20 = *(a1 + 2184);
      *(v20 + 12) = bswap32(*(v8 + 175)) + *(a1 + 768);
      v21 = bswap32(*(v8 + 177));
      *(v6 + 8) = v21;
      v22 = bswap32(*(v8 + 179));
      *(v6 + 16) = v22;
      *(v6 + 24) = bswap32(*(v8 + 181));
      v23 = bswap32(*(v8 + 183));
      *(v6 + 32) = v23;
      v24 = bswap32(*(v8 + 185));
      *(v6 + 40) = v24;
      if (*a1 == 7)
      {
        *(v6 + 80) = bswap32(*(v8 + 187));
        *(a1 + 2094) = v8[757];
      }

      else
      {
        *(a1 + 2094) = v8[749];
        *(a1 + 2090) = v8[769];
        *(a1 + 2091) = v8[761];
        *(a1 + 2092) = v8[763];
      }

      v25 = v8[387];
      if (v25 > 0x25)
      {
        LOBYTE(v25) = 0;
      }

      *(a1 + 2069) = v25;
      *(v20 + 55) = v25;
      *(v20 + 68) = bswap32(*(v8 + 252)) >> 16;
      v26 = bswap32(*(v8 + 196)) >> 16;
      *(v20 + 2) = v26;
      *(v6 + 4) = v21 - v19;
      *(v20 + 4) = bswap32(*(v8 + 256)) >> 16;
      *(v6 + 12) = v22 - v21;
      *(v6 + 20) = bswap32(*(v8 + 245)) >> 16;
      *(v6 + 28) = 256;
      *(v20 + 48) = bswap32(*(v8 + 251)) >> 16;
      *(v20 + 54) = v8[501];
      *(v6 + 36) = v24 - v23;
      v27 = malloc_type_calloc(1uLL, 8 * v26, 0x100004077774924uLL);
      *(v6 + 88) = v27;
      if (!v27)
      {
        return 8;
      }

      if (*a1 != 7 && *(a1 + 2094))
      {
        v28 = 3 * *(a1 + 2094);
        if ((v28 & 7) != 0)
        {
          v29 = (v28 >> 3) + 1;
        }

        else
        {
          v29 = v28 >> 3;
        }

        *(v6 + 112) = v29;
        v30 = malloc_type_calloc(v29, 1uLL, 0x100004077774924uLL);
        *(v6 + 104) = v30;
        if (!v30)
        {
          return 8;
        }

        *(v6 + 112) *= 8;
      }

      v31 = malloc_type_calloc(*(v6 + 12), 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2184) + 1184) = v31;
      if (!v31)
      {
        return 8;
      }

      SLSeek(v41[0], *(a1 + 768) + *(v6 + 8), 0);
      if (SLFRead(v41[0], *(v6 + 12), *(*(a1 + 2184) + 1184), &v41[1]) == 8)
      {
        return 8;
      }

      v32 = *(*(a1 + 2184) + 1184);
      v33 = (bswap32(*v32) >> 16) - 1;
      v34 = *(a1 + 2192);
      v34[1065] = v33;
      v35 = bswap32(v32[1]) >> 16;
      v34[1063] = v35;
      v34[1064] = v33 + 2 * v35;
      v34[1066] = (bswap32(v32[2]) >> 16) - 1;
      v36 = malloc_type_calloc(*(v6 + 20), 1uLL, 0x100004077774924uLL);
      *(*(a1 + 2184) + 40) = v36;
      if (!v36)
      {
        return 8;
      }

      SLSeek(v41[0], *(a1 + 768) + *(v6 + 16), 0);
      if (SLFRead(v41[0], *(v6 + 20), *(*(a1 + 2184) + 40), &v41[1]) == 8)
      {
        return 8;
      }

      SLSeek(v41[0], *(a1 + 768) + *(v6 + 24), 0);
      if (SLFRead(v41[0], *(v6 + 28), *(v6 + 96), &v41[1]) == 8)
      {
        return 8;
      }

      v37 = malloc_type_calloc(*(v6 + 36), 1uLL, 0x100004077774924uLL);
      if (!v37)
      {
        return 8;
      }

      v38 = v37;
      SLSeek(v41[0], *(a1 + 768) + *(v6 + 32), 0);
      if (SLRead(v41[0], *(v6 + 36), v38, &v41[1]) == 8)
      {
        return 8;
      }

      *(v6 + 72) = OpenOutputBuffer(*(*(a1 + 2184) + 2));
      get_counts(v38, *(v6 + 48));
      free(v38);
      *(v6 + 64) = build_tree(*(v6 + 48));
      **(a1 + 2184) = 0;
      v39 = *(a1 + 2192);
      *(v39 + 16) = -1;
      *(v39 + 2) = 0;
      v40 = SLLngToA(*(a1 + 2069));
      v13 = 0;
      *(*(a1 + 2184) + 56) = v40;
      if (!v40)
      {
        return 8;
      }
    }

    else
    {
      v13 = 8;
    }

    free(v8);
  }

  return v13;
}

unsigned __int8 *get_counts(unsigned __int8 *result, uint64_t a2)
{
  for (i = 0; i != 2048; i += 8)
  {
    *(a2 + i) = 0;
  }

  v3 = *result;
  v4 = 2;
  for (j = 1; ; j = (v7 + 1))
  {
    v6 = result[j];
    if (v3 <= v6)
    {
      v3 = v3;
      do
      {
        v7 = v4 + 1;
        *(a2 + 8 * v3++) = result[v4++];
      }

      while (v6 >= v3);
    }

    else
    {
      v7 = v4;
    }

    v3 = result[v7];
    if (!result[v7])
    {
      break;
    }

    v4 = v7 + 2;
  }

  *(a2 + 2048) = 1;
  return result;
}

uint64_t PDsort(uint64_t a1)
{
  v1 = *(a1 + 2168);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  vpHash_index_tab = v2;
  vpRam_buff = v3;
  v4 = *(v1 + 4);
  if (*(v1 + 4))
  {
    v5 = 0;
    v6 = v2;
    v7 = v2 + 2 * v4;
    do
    {
      v8 = *v6;
      if (v8 <= 0xFFFD)
      {
        v9 = v5++;
        *(v2 + 2 * v9) = v8;
      }

      ++v6;
    }

    while (v6 < v7);
  }

  else
  {
    v5 = 0;
  }

  return HeapSort(v5);
}

uint64_t HeapSort(uint64_t result)
{
  if (result >= 2)
  {
    viHeapLast = result - 1;
    v1 = (result - 2) >> 1;
    do
    {
      v2 = v1;
      result = DownHeap_0(v1--);
    }

    while (v2);
    for (i = viHeapLast; viHeapLast; i = viHeapLast)
    {
      v4 = vpHash_index_tab;
      v5 = *vpHash_index_tab;
      *vpHash_index_tab = *(vpHash_index_tab + 2 * i);
      viHeapLast = i - 1;
      *(v4 + 2 * i) = v5;
      result = DownHeap_0(0);
    }
  }

  return result;
}

uint64_t DownHeap_0(uint64_t result)
{
  v1 = result;
  v2 = vpHash_index_tab;
  v3 = *(vpHash_index_tab + 2 * result);
  v4 = viHeapLast;
  v26 = (viHeapLast - 1) >> 1;
  if (v26 >= result)
  {
    v24 = vpRam_buff + 2;
    v25 = vpRam_buff;
    v20 = *(vpHash_index_tab + 2 * result);
    v23 = vpRam_buff + v3;
    v21 = viHeapLast;
    v22 = *(vpRam_buff + v3 + 2);
    while (1)
    {
      v6 = 2 * v1;
      if (((2 * v1) & 0xFFFEu) >= v4)
      {
        v10 = 0;
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v7 = *(v2 + 2 * ((2 * v1) | 1u));
        v8 = v25 + v7;
        v9 = *(v24 + v7);
        v10 = 3;
      }

      v11 = v6 + 2;
      if (v4 >= (v6 + 2))
      {
        v14 = *(v2 + 2 * (v6 + 2));
        v12 = v25 + v14;
        v13 = *(v24 + v14);
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v15 = AsciiStrCmp((v8 + v10), v9, (v12 + v10), v13);
      v16 = v15;
      v17 = v15 < 0 ? v12 : v8;
      v18 = v15 < 0 ? v13 : v9;
      result = AsciiStrCmp((v23 + 3), v22, (v17 + v10), v18);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      v19 = v1;
      if (v16 < 0)
      {
        v1 = v11;
      }

      else
      {
        v1 = (2 * v1) | 1;
      }

      v5 = v1;
      *(v2 + 2 * v19) = *(v2 + 2 * v1);
      v4 = v21;
      if (v26 < v1)
      {
        goto LABEL_23;
      }
    }

    v5 = v1;
LABEL_23:
    LOWORD(v3) = v20;
  }

  else
  {
    v5 = result;
  }

  *(v2 + 2 * v5) = v3;
  return result;
}

uint64_t AsciiStrCmp(unsigned __int8 *a1, __int16 a2, unsigned __int8 *a3, int a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  else if (a2 < 1)
  {
    return -1;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = *a1;
      v6 = *a3;
      if (((v6 ^ v5) & 0xFFFFFFDF) != 0)
      {
        break;
      }

      ++a1;
      ++a3;
      if (++v4 >= a2)
      {
        v4 = a2;
        goto LABEL_11;
      }
    }

    if (a4 > v4)
    {
      return ((v5 | 0x20) - (v6 | 0x20));
    }

LABEL_11:
    if (v4 == a2)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t PDsavsort(unsigned int a1, int a2)
{
  v3 = *(*(*pMCPbuff + 8 * a1) + 2168);
  if (a2)
  {
    v4 = malloc_type_calloc(1uLL, 2 * *(v3 + 2), 0x1000040BDFB0063uLL);
    v5 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 64) = v4;
    if (v4)
    {
      v6 = *(*(v5 + 8 * a1) + 2168);
      memcpy(*(v6 + 64), *(v6 + 32), *(v6 + 2));
      return 0;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    memcpy(*(v3 + 32), *(v3 + 64), *(v3 + 2));
    free(*(*(*(*pMCPbuff + 8 * a1) + 2168) + 64));
    result = 0;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 64) = 0;
  }

  return result;
}

uint64_t PDSFcorbru(void *a1, _WORD *a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6, unsigned int a7, unsigned int a8, int a9, __int16 a10)
{
  v12 = 0;
  v13 = (a7 + 0xFFFF) >> 16;
  v75 = (a7 - 1);
  v14 = a10;
  v66 = (a8 - 1);
  v67 = a1[7];
  v68 = v13 & ((a8 + 0xFFFF) >> 16);
  v70 = a10 - 1;
  v69 = v13 & ((a9 + 0xFFFF) >> 16);
  v15 = (a2 + 1082);
  v65 = a1 + 23;
  v72 = v13 & ((HIWORD(a9) + 0xFFFF) >> 16);
  v78 = a2;
  v76 = (a2 + 1082);
LABEL_2:
  v16 = 0;
  v17 = -v12;
  v18 = (a4 - a6);
  if (v18 >= 0)
  {
    v19 = (a4 - a6);
  }

  else
  {
    v19 = -v18;
  }

  v20 = 1;
  v71 = v19;
  while (1)
  {
    v21 = a6;
    v22 = a4;
    if (a6 < 0 || a4 < 0)
    {
      if ((v20 & (v12 != 0)) != 1)
      {
        return 0;
      }

      goto LABEL_107;
    }

    if (v19 > v14)
    {
      if ((v20 & (v12 != 0)) == 0)
      {
        return 0;
      }

      goto LABEL_107;
    }

    LOWORD(v23) = 0;
    v24 = a4 != 0;
    v25 = a6 != 0;
    if (a4 && a6)
    {
      v23 = 0;
      while (*(a3 + v23) == *(a5 + v23))
      {
        v25 = ++v23 < a6;
        v24 = v23 < a4;
        if (v23 >= a4 || v23 >= a6)
        {
          goto LABEL_21;
        }
      }

      v24 = 1;
      v25 = 1;
    }

LABEL_21:
    v26 = v23;
    if (v23 == a4 && a6 == v23)
    {
      return 1;
    }

    if (a7)
    {
      if (v24 && v25)
      {
        if (a8)
        {
          v27 = (a3 + v23);
          if ((*(v67 + 4 * *v27) & 0x10000000) != 0 && (*(v67 + 4 * *(a5 + v26)) & 0x10000000) != 0)
          {
            v28 = PDSFcorbru(a1, v78, (v27 + 1), a4 + ~v26, a5 + v26 + 1, a6 + ~v26, v75, v66, a9, a10);
            goto LABEL_42;
          }
        }

        if (a9)
        {
          HIWORD(v62) = HIWORD(a9);
          LOWORD(v62) = a9 - 1;
          v28 = PDSFcorbru(a1, v78, a3 + v26 + 1, a4 + ~v26, a5 + v26 + 1, a6 + ~v26, v75, a8, v62, a10);
LABEL_42:
          v15 = v76;
          a2 = v78;
          if (v28)
          {
            return 1;
          }
        }
      }

LABEL_43:
      if ((v16 & 1) == 0)
      {
        v38 = v26 + 1;
        if (v26 + 1 < v22 && v38 < v21 && *(a3 + v26) == *(a5 + v38) && *(a3 + v38) == *(a5 + v26) && a2[1073] != 4)
        {
          v59 = 2;
          goto LABEL_109;
        }

        v39 = v26 + 2;
        if (v26 + 2 < v22 && v39 < v21 && *(a3 + v26) == *(a5 + v39) && *(a3 + v38) == *(a5 + v38) && *(a3 + v39) == *(a5 + v26) && a2[1073] != 4)
        {
          v59 = 3;
LABEL_109:
          v60 = (v59 + v26);
          v12 += v60;
          a3 += v60;
          a4 = v22 - v60;
          a5 += v60;
          a6 = v21 - v60;
          v14 = a10;
          goto LABEL_2;
        }
      }

      if (v24)
      {
        if (v26 || a2[1075] > v22)
        {
          v30 = (a3 + v26);
          if (*v30 == *(v30 - 1))
          {
            *&v63[4] = a10 - 1;
            v31 = v21 - v26;
            v32 = v22 + ~v26;
            v33 = (v30 + 1);
            v34 = a5 + v26;
            v35 = a7;
            *v63 = a9;
            v36 = a1;
            v37 = v78;
            goto LABEL_65;
          }
        }

        if (v68)
        {
          v40 = (a3 + v26);
          if ((*(v67 + 4 * *v40) & 0x10000000) != 0)
          {
            *&v63[4] = a10 - 1;
            v31 = v21 - v26;
            v32 = v22 + ~v26;
            v33 = (v40 + 1);
            v34 = a5 + v26;
            *v63 = a9;
            v36 = a1;
            v37 = v78;
            v35 = v75;
            v41 = v66;
            goto LABEL_67;
          }
        }

        if (v69)
        {
          v34 = a5 + v26;
          *&v63[4] = a10 - 1;
          *&v63[2] = HIWORD(a9);
          v31 = v21 - v26;
          v32 = v22 + ~v26;
          v33 = a3 + v26 + 1;
          *v63 = a9 - 1;
          v36 = a1;
          v37 = v78;
          v35 = v75;
LABEL_65:
          v41 = a8;
LABEL_67:
          v42 = PDSFcorbru(v36, v37, v33, v32, v34, v31, v35, v41, *v63, *&v63[4]);
          v15 = v76;
          a2 = v78;
          if (v42)
          {
            return 1;
          }
        }
      }

      if (v25)
      {
        if ((v26 || a2[1076] > v21) && (v43 = (a5 + v26), *v43 == *(v43 - 1)))
        {
          v44 = PDSFcorbru(a1, v78, a3 + v26, v22 - v26, (v43 + 1), v21 + ~v26, a7, a8, a9, v70);
LABEL_76:
          v15 = v76;
          a2 = v78;
          if (v44)
          {
            return 1;
          }
        }

        else if (v68)
        {
          v45 = (a5 + v26);
          if ((*(v67 + 4 * *v45) & 0x10000000) != 0)
          {
            v44 = PDSFcorbru(a1, v78, a3 + v26, v22 - v26, (v45 + 1), v21 + ~v26, v75, v66, a9, v70);
            goto LABEL_76;
          }
        }

        if (v69)
        {
          HIWORD(v64) = HIWORD(a9);
          LOWORD(v64) = a9 - 1;
          v46 = PDSFcorbru(a1, v78, a3 + v26, v22 - v26, a5 + v26 + 1, v21 + ~v26, v75, a8, v64, v70);
          v15 = v76;
          a2 = v78;
          if (v46)
          {
            return 1;
          }
        }
      }

      v14 = a10;
      if (v72)
      {
        v47 = *v15;
        if (v47 != 255)
        {
          v48 = 0;
          while (1)
          {
            v49 = (v21 - v47);
            if (v26 < (v21 - v47))
            {
              if (v49 > v26)
              {
                goto LABEL_105;
              }

              goto LABEL_104;
            }

            v50 = v15[v48 + 1];
            v51 = *(a1[19] + 8 * v50);
            if (*v51 == *(a3 + (v21 - v47)))
            {
              break;
            }

LABEL_104:
            v48 += 2;
            v47 = v15[v48];
            if (v47 == 255)
            {
              goto LABEL_105;
            }
          }

          v52 = *(a1[21] + v50);
          if (v52 != 2)
          {
            if (v52 != 3)
            {
              if (v52 != 4)
              {
LABEL_92:
                v53 = v47;
                v54 = *(a1[22] + v50);
                if (a2[1] || (v54 + v49 == v21 ? (v55 = 1) : (v55 = 2), a2[1076] == v21 ? (v56 = v21 == v53) : (v56 = 0), !v56 ? (v57 = v55) : (v57 = 4), (v57 & *(v65 + v50 - 1)) != 0))
                {
                  v58 = PDSFcorbru(a1, v78, a3 + v49 + v52, v22 - v49 - v52, a5 + v49 + v54, v53 - v54, v75, a8, a9 - 0x10000, a10);
                  v15 = v76;
                  a2 = v78;
                  if (v58)
                  {
                    return 1;
                  }
                }

                goto LABEL_104;
              }

              if (v51[3] != *(a3 + v49 + 3))
              {
                goto LABEL_104;
              }
            }

            if (v51[2] != *(a3 + v49 + 2))
            {
              goto LABEL_104;
            }
          }

          if (v51[1] != *(a3 + v49 + 1))
          {
            goto LABEL_104;
          }

          goto LABEL_92;
        }
      }

LABEL_105:
      v29 = v20 & (v12 != 0);
      goto LABEL_106;
    }

    if ((!v25 || *(a3 + v23) == *(a5 + v23 + 1)) && (!v24 || *(a3 + v23 + 1) == *(a5 + v23)) || !v23 && a2[1075] <= a4 || *(a3 + v23) == *(a3 + v23 - 1) || !v23 && a2[1076] <= a6 || *(a5 + v23) == *(a5 + v23 - 1))
    {
      goto LABEL_43;
    }

    v29 = v20 & (v12 != 0);
    v14 = a10;
LABEL_106:
    v17 = -v12;
    v19 = v71;
    if ((v29 & 1) == 0)
    {
      return 0;
    }

LABEL_107:
    v20 = 0;
    a3 += v17;
    a5 += v17;
    a4 = v12 + v22;
    a6 = v12 + v21;
    v16 = 1;
  }
}

uint64_t PDSFaccent(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 55) != 8 || (a4[1741] & 0x40) == 0 || *a4 != 3;
  v102 = 0;
  v7 = *(a3 + 56);
  v8 = *(*(a4 + 4) + 32);
  v9 = *(a3 + 136);
  a4[1062] = 0;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
    v11 = a2;
    v12 = v8;
    do
    {
      v14 = *a1++;
      v13 = v14;
      v15 = *(v7 + 4 * v14);
      if ((v15 & 0x4064000) != 0 && ((v15 >> 18) & 1 & ~v6) == 0)
      {
        if (*(a3 + 55) == 15)
        {
          if (v13 == 1)
          {
            LOBYTE(v13) = 1;
          }

          else if ((v15 & 0x4020000) != 0)
          {
            LOBYTE(v13) = v13 - 1;
          }
        }

        else if (v13 != 0xE0 && ((0x61A300E8uLL >> (v13 + 32)) & 1) == 0)
        {
          LOBYTE(v13) = Lat_1_acc[v13 - 224];
        }
      }

      *v12++ = v13;
      --v11;
    }

    while (v11);
  }

  v16 = 0;
  v8[v10] = 0;
  memset(v104, 0, 224);
  memset(v103, 0, sizeof(v103));
  *(v103 + v8[1]) = 1;
  memset(&v104[14], 0, 32);
  *(v104 + *v8) = 1;
  if (!*(a3 + 104) || a2 < 1)
  {
    return v16;
  }

  v94 = v6;
  v17 = 0;
  v18 = 0;
  v92 = v9;
  v93 = a4 + 1082;
  v19 = a2;
  LOWORD(v20) = a4[1081];
  do
  {
    v21 = 0;
    do
    {
      if (SLstrncmp(*(*(a3 + 160) + 8 * ((v20 + v21) >> 1)), &v8[v17], *(*(a3 + 176) + ((v20 + v21) >> 1))) >= 0)
      {
        LOWORD(v20) = (v20 + v21) >> 1;
      }

      else
      {
        v21 = (v20 + v21) >> 1;
      }
    }

    while (v20 - v21 > 1);
    do
    {
      v22 = v20;
      if (*(*(a3 + 176) + v20) == 1 && *(*(a3 + 168) + v20) == 1 && **(*(a3 + 160) + 8 * v20) == v8[v17] && (*(v7 + 4 * **(*(a3 + 152) + 8 * v20)) & 0x4064000) != (*(v7 + 4 * **(*(a3 + 160) + 8 * v20)) & 0x4064000) && ((*(v7 + 4 * **(*(a3 + 152) + 8 * v20)) >> 18) & 1 & ~v94) == 0)
      {
        LOBYTE(v93[v18]) = a2 - v17;
        v23 = v18 * 2 + 1;
        ++v18;
        *(v93 + v23) = v20;
        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_38;
          }

          v24 = v103;
        }

        else
        {
          v24 = v104;
        }

        *(v24 + **(*(a3 + 152) + 8 * v20)) = 1;
      }

      else
      {
        v20 = a4[1081];
        if (v22 >= v20 || **(*(a3 + 160) + 8 * v22) > v8[v17])
        {
          goto LABEL_42;
        }
      }

LABEL_38:
      v20 = (v22 + 1);
    }

    while (v20 < a4[1081]);
    LOWORD(v20) = a4[1081];
LABEL_42:
    ++v17;
  }

  while (v17 != v19);
  if (v18 * 2)
  {
    LOBYTE(v93[v18]) = -1;
    *(v93 + (v18 * 2 + 1)) = -1;
    v101 = 0;
    v25 = *(a3 + 1184);
    v26 = a4[1064];
    v27 = a4[1063];
    v28 = (v25 + v27 + v26);
    v29 = *v28;
    v30 = (v25 + v26);
    v31 = *v30;
    v32 = v28[1];
    v33 = v30[1];
    v34 = a4[1065];
    v35 = *(v25 + v34);
    v36 = *(v25 + v34 + v27);
    v97 = *(v25 + v34);
    v98 = v36;
    if (v27 >= 2)
    {
      v37 = 0;
      v38 = 0;
      v39 = (v32 | (v33 << 8)) - 1;
      v40 = (v29 | (v31 << 8)) - 1;
      LOWORD(v41) = 1;
      do
      {
        v42 = *(a3 + 1184);
        if (v40 >= v39)
        {
          v41 = v41 + 1;
          v43 = a4[1065];
          v35 = *(v42 + v43 + v41 - 1);
          v44 = v27 + v41;
          v36 = *(v42 + v43 + v44 - 1);
          v97 = *(v42 + v43 + v41 - 1);
          v45 = a4[1064];
          v46 = *(v42 + v45 + v44);
          LODWORD(v45) = *(v42 + v45 + v41);
          v98 = v36;
          v47 = v46 | (v45 << 8);
          v40 = v39;
          v39 = v47 - 1;
        }

        v48 = v40 + 1;
        v49 = *(v42 + (v40 + 1) - 1);
        if (v49 == 255)
        {
          v40 += 3;
          v52 = v40;
          v51 = (v42 + v40 - 2);
        }

        else
        {
          v50 = a4[1066] + v49;
          v51 = (v42 + v50 - 1);
          v52 = v50 + 256;
          v40 = v48;
        }

        v53 = *(v42 + v52 - 1);
        if (*v51)
        {
          v37 = *v51;
        }

        v99 = v37;
        if (v53)
        {
          v38 = v53;
        }

        v100 = v38;
        v56 = v38 == 32 && v37 == 32 && v36 != 32;
        if (*(v104 + v35) && *(v103 + v36))
        {
          if (v56)
          {
            goto LABEL_82;
          }

          v57 = *v93;
          if (v57 == 255)
          {
            goto LABEL_80;
          }

          v58 = 0;
          v59 = 0;
          do
          {
            v60 = a2 - v57;
            if ((v60 & 0xFFFE) == 2 && *(&v97 + v60) == **(*(a3 + 152) + 8 * HIBYTE(v93[v59])))
            {
              ++v58;
            }

            v57 = LOBYTE(v93[++v59]);
          }

          while (v57 != 255);
          if (!v58)
          {
LABEL_80:
            if (v38 != 32 && v38 != v8[3])
            {
              continue;
            }
          }

          else if (v38 == 32 || v58 != 1 || v38 == v8[3])
          {
LABEL_82:
            if (a4[1062] > 499)
            {
              break;
            }

            v61 = 0;
            v62 = a4 + 60;
            do
            {
              LOBYTE(v62[2 * a4[1062]]) = *(&v97 + v61++);
              v62 = (v62 + 1);
            }

            while (v61 != 4);
            ++a4[1062];
            LOWORD(v27) = a4[1063];
            continue;
          }

          if (v37 == v8[2])
          {
            goto LABEL_82;
          }
        }

        else
        {
          v40 = v39;
        }
      }

      while (v41 < v27);
    }

    v63 = *a4;
    if (v63 <= 99)
    {
      *a4 = 101;
      a4[1742] |= 0x200u;
      v64 = *(a3 + 128);
      v65 = 255;
      do
      {
        *(a4 + 2148) = ++v65;
        v66 = (v64 + v65);
        v67 = *v66;
        v68 = &v66[v92];
        a4[1072] = v67;
        v69 = *v68;
        a4[1073] = v69;
        v70 = &v68[v92];
        v71 = *v70;
        v72 = &v70[v92];
        a4[1068] = v71;
        a4[1069] = *v72;
        v73 = &v72[v92];
        v74 = *v73;
        v75 = &v73[v92];
        a4[1070] = v74;
        a4[1071] = *v75;
        v76 = &v75[v92];
        v77 = *v76;
        v78 = &v76[v92];
        a4[1067] = v77;
        a4[1077] = *v78;
        v79 = &v78[v92];
        v80 = *v79;
        v81 = &v79[v92];
        a4[1078] = v80;
        a4[1079] = *v81;
        a4[1080] = v81[v92];
      }

      while (v69 != 4);
    }

    v82 = a4 + 60;
    *(a4 + 14) = a4 + 60;
    if (a4[1062] >= 1)
    {
      v83 = 0;
      do
      {
        if (SLstrncmp(*(a4 + 14), &v82[2 * v83], 4) <= 0)
        {
          *(a4 + 14) = &v82[2 * v83];
          v96[0] = *&v82[2 * v83];
          v84 = *(a3 + 54);
          if (v84 >= 5)
          {
            v85 = 4;
            do
            {
              *(v96 + v85++) = 0;
            }

            while (v84 > v85);
          }

          v86 = SFbisrch(v96, 0, v84 - 1, &v102, a3);
          v87 = *(a3 + 54);
          if (v87 >= 5)
          {
            v88 = 4;
            do
            {
              *(v96 + v88++) = -1;
            }

            while (v87 > v88);
          }

          v89 = SFbisrch(v96, 0, v87 - 1, &v102, a3);
          v90 = v89 - v86 + v102;
          v102 = v90;
          if (*(a4 + 3194) == 1)
          {
            PDdecod2(v8, a2, v86, v90, a3, a4);
          }
        }

        ++v83;
      }

      while (v83 < a4[1062]);
    }

    *a4 = v63;
    if (v63 == 3)
    {
      a4[1742] &= ~0x200u;
    }

    return a4[20];
  }

  else
  {
    return 0;
  }
}

uint64_t LMargin(uint64_t a1, int a2, unsigned int a3)
{
  if (!a3)
  {
    v3 = 1;
    return *(a1 + v3);
  }

  if (a2)
  {
    v3 = 2;
    return *(a1 + v3);
  }

  if (*(a1 + 4) <= a3)
  {
    v3 = 6;
    if (!*(a1 + 5) || *(a1 + 5) >= a3)
    {
      return *(a1 + v3);
    }
  }

  return 0;
}

uint64_t RMargin(unsigned __int8 *a1, int a2, unsigned int a3)
{
  if (a2)
  {
    return *a1;
  }

  if (!a3)
  {
    a1 += 3;
    return *a1;
  }

  if (a1[4] <= a3 && (!a1[5] || a1[5] >= a3))
  {
    a1 += 7;
    return *a1;
  }

  return 0;
}

uint64_t inithyphen(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 1116))
  {
    *(a3 + 1116) = 1;
    *(a3 + 1112) = 45;
    *(a3 + 1114) = 11520;
  }

  *v18 = 0;
  if (SLOpen(a1, a2, &v18[1], 0) == 8)
  {
    return 0;
  }

  result = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (result)
  {
    v5 = result;
    result = malloc_type_calloc(2uLL, 0x2454uLL, 0xA2DA24AEuLL);
    brtable = result;
    if (result)
    {
      result = malloc_type_malloc(0x2454uLL, 0xE7A63B4BuLL);
      keytable = result;
      if (result)
      {
        if (SLFRead(v18[1], 1024, v5, v18) == 8)
        {
LABEL_9:
          SLClose(v18[1]);
          free(v5);
          return 0;
        }

        v6 = v18[0];
        if (LOWORD(v18[0]))
        {
          v7 = 0;
          v8 = v5;
          while (1)
          {
            --v6;
            v10 = *v8++;
            v9 = v10;
            switch(v10)
            {
              case ' ':
                v9 = 115;
                break;
              case '$':
                goto LABEL_62;
              case '+':
                v9 = 55;
                break;
              case '-':
                v9 = 56;
                break;
              case '0':
                v9 = 32;
                break;
              case '1':
                v9 = 105;
                break;
              case '2':
                v9 = 104;
                break;
              case '3':
                v9 = 103;
                break;
              case '4':
                v9 = 102;
                break;
              case '5':
                v9 = 101;
                break;
              case '6':
                v9 = 100;
                break;
              case '7':
                v9 = 99;
                break;
              case '8':
                v9 = 98;
                break;
              case '9':
                v9 = 97;
                break;
              case '?':
                v9 = 57;
                break;
              case 'a':
                v9 = 106;
                break;
              case 'b':
                v9 = 116;
                break;
              case 'c':
                v9 = 117;
                break;
              case 'd':
                v9 = 118;
                break;
              case 'e':
                v9 = 107;
                break;
              case 'f':
                v9 = 119;
                break;
              case 'g':
                v9 = 120;
                break;
              case 'h':
                v9 = 121;
                break;
              case 'i':
                v9 = 108;
                break;
              case 'j':
                v9 = 122;
                break;
              case 'k':
                v9 = 125;
                break;
              case 'l':
                v9 = 123;
                break;
              case 'm':
                v9 = 124;
                break;
              case 'n':
                v9 = 43;
                break;
              case 'o':
                v9 = 109;
                break;
              case 'p':
                v9 = 45;
                break;
              case 'q':
                v9 = 63;
                break;
              case 'r':
                v9 = 48;
                break;
              case 's':
                v9 = 49;
                break;
              case 't':
                v9 = 50;
                break;
              case 'u':
                v9 = 110;
                break;
              case 'v':
                v9 = 51;
                break;
              case 'w':
                v9 = 52;
                break;
              case 'x':
                v9 = 53;
                break;
              case 'y':
                v9 = 111;
                break;
              case 'z':
                v9 = 54;
                break;
              case '{':
                v9 = 113;
                break;
              case '|':
                v9 = 114;
                break;
              case '}':
                v9 = 112;
                break;
              default:
                break;
            }

            *(keytable + v7) = v9;
            if (!v6)
            {
              if (SLFRead(v18[1], 1024, v5, v18) == 8)
              {
                free(v5);
                SLClose(v18[1]);
                return 0;
              }

              v6 = v18[0];
              v8 = v5;
            }

            ++v7;
            if (!v6)
            {
              v6 = -1;
              goto LABEL_62;
            }
          }
        }

        v6 = -1;
        v8 = v5;
LABEL_62:
        v11 = 0;
LABEL_63:
        v12 = 0;
        while (1)
        {
          if (!v6)
          {
            if (SLFRead(v18[1], 1024, v5, v18) == 8)
            {
              goto LABEL_9;
            }

            v6 = v18[0];
            v8 = v5;
          }

          v14 = *v8++;
          v13 = v14;
          if (v14 == 36)
          {
            break;
          }

          --v6;
          if (v13 == 32)
          {
            *(brtable + 2 * v11++) = v12;
            goto LABEL_63;
          }

          v12 *= 16;
          if (v13 > 55)
          {
            if (v13 > 98)
            {
              if (v13 > 100)
              {
                if (v13 == 101)
                {
                  v12 |= 0xEu;
                }

                else
                {
                  if (v13 != 102)
                  {
                    return 0;
                  }

                  v12 |= 0xFu;
                }
              }

              else if (v13 == 99)
              {
                v12 |= 0xCu;
              }

              else
              {
                v12 |= 0xDu;
              }
            }

            else if (v13 > 96)
            {
              if (v13 == 97)
              {
                v12 |= 0xAu;
              }

              else
              {
                v12 |= 0xBu;
              }
            }

            else if (v13 == 56)
            {
              v12 |= 8u;
            }

            else
            {
              if (v13 != 57)
              {
                return 0;
              }

              v12 |= 9u;
            }
          }

          else if (v13 > 51)
          {
            if (v13 > 53)
            {
              if (v13 == 54)
              {
                v12 |= 6u;
              }

              else
              {
                v12 |= 7u;
              }
            }

            else if (v13 == 52)
            {
              v12 |= 4u;
            }

            else
            {
              v12 |= 5u;
            }
          }

          else if (v13 > 49)
          {
            if (v13 == 50)
            {
              v12 |= 2u;
            }

            else
            {
              v12 |= 3u;
            }
          }

          else if (v13 != 48)
          {
            if (v13 != 49)
            {
              return 0;
            }

            v12 |= 1u;
          }
        }

        free(v5);
        SLClose(v18[1]);
        v15 = -1;
        do
        {
          ++v15;
        }

        while (*(keytable + v15) != 32);
        *(a3 + 1110) = v15;
        v16 = brtable;
        v17 = 9300;
        do
        {
          if (!*v16)
          {
            *v16 = v15;
          }

          ++v16;
          --v17;
        }

        while (v17);
        return 1;
      }
    }
  }

  return result;
}

uint64_t Hyphenate(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = a4;
  v14 = (a1 + a4);
  v15 = strlen(v14);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v10;
    do
    {
      *(a3 + 4 * (v17 >> 5)) &= ~(1 << ~v17);
      ++v17;
      ++v16;
    }

    while (v15 > v16);
  }

  if (!a7 || !a6 || v15 > 120 || v15 < a7 + a6)
  {
    if (a2)
    {
      strcpy(a2, v14);
    }

LABEL_10:
    LOWORD(v18) = 0;
    return v18;
  }

  v96 = a7;
  v97 = a1;
  v20 = a5 + 370;
  bzero((a5 + 370), 0x2E4uLL);
  *a5 = 46;
  *(a5 + 124) = 30;
  v21 = a5 + 124;
  v22 = 1;
  for (i = 2; ; ++i)
  {
    v25 = *v14++;
    v24 = v25;
    v26 = 6;
    v27 = 125;
    if (v25 > 195)
    {
      switch(v24)
      {
        case 196:
          goto LABEL_23;
        case 197:
          goto LABEL_24;
        case 214:
LABEL_21:
          v26 = 9;
          v27 = 124;
          goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v24 > 91)
    {
      if (v24 == 92)
      {
        goto LABEL_21;
      }

      if (v24 == 93)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (v24 == 91)
    {
LABEL_23:
      v26 = 8;
      v27 = 123;
      goto LABEL_24;
    }

    if (!v24)
    {
      break;
    }

LABEL_26:
    if (v24 > 0x7E)
    {
      goto LABEL_10;
    }

    v27 = __tolower(v24);
    if ((v27 - 97) >= 0x1Du)
    {
      v26 = 0;
    }

    else
    {
      v26 = word_1D2BFAB80[(v27 - 97)];
    }

LABEL_24:
    v28 = v22;
    *(a5 + v22++) = v27;
    *(v21 + 2 * v28) = v26;
  }

  *(a5 + v22) = 46;
  *(v21 + 2 * v22) = 30;
  v29 = (v22 + 1);
  if (v22 < 0x7FFFu)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = keytable;
    v98 = a5 + 618;
    v99 = a5 + 864;
    v35 = brtable;
    while (1)
    {
      if (v30 >= 4)
      {
        v33 = *(v30 + a5 - 1);
      }

      v36 = 0;
      v37 = *v34;
      v38 = *(a5 + v30);
      v39 = v30 - 1;
      for (j = v30; ; ++j)
      {
        v41 = *(a5 + j);
        if (v37 != 43)
        {
          goto LABEL_57;
        }

        if (v30 >= 4)
        {
          v42 = *(v21 + 2 * v39);
          v43 = v42 > 9 || v38 == v33;
          if (!v43 || v30 != 4 && v42 <= 11 && *(v21 + 2 * (v30 - 2)) < 10 || *(v99 + 2 * v39) == 5)
          {
            v44 = v34[(v36 + 1)];
            if (v44 == 49)
            {
              v45 = v36 + 2;
              v46 = v34[(v36 + 2)];
              if (v46 == 32)
              {
                v47 = 1;
LABEL_55:
                *(v98 + 2 * v30) = v47;
                goto LABEL_56;
              }

              LOBYTE(v44) = 49;
              do
              {
                if (v46 == v33)
                {
                  LOBYTE(v44) = 50;
                }

                v46 = v34[++v45];
              }

              while (v46 != 32);
            }

            if ((v44 - 49) <= 4u)
            {
              v47 = (v44 - 48);
              goto LABEL_55;
            }
          }
        }

LABEL_56:
        v48 = *(v35 + 2 * v36);
        v36 = *(v35 + 2 * v36);
        v37 = v34[v48];
LABEL_57:
        if (v37 != 45)
        {
          goto LABEL_72;
        }

        if (v29 - 3 > j && *(v21 + 2 * j) <= 9 && *(a5 + j - 1) != v41)
        {
          v49 = v34[(v36 + 1)];
          if (v49 == 49)
          {
            v50 = v36 + 2;
            v51 = v34[(v36 + 2)];
            if (v51 == 32)
            {
              v52 = 1;
LABEL_70:
              *(v99 + 2 * (j - 1)) = v52;
              goto LABEL_71;
            }

            LOBYTE(v49) = 49;
            do
            {
              if (v51 == v41)
              {
                LOBYTE(v49) = 53;
              }

              v51 = v34[++v50];
            }

            while (v51 != 32);
          }

          if ((v49 - 49) <= 4u)
          {
            v52 = (v49 - 48);
            goto LABEL_70;
          }
        }

LABEL_71:
        v53 = *(v35 + 2 * v36);
        v36 = *(v35 + 2 * v36);
        v37 = v34[v53];
LABEL_72:
        if (v37 == 63)
        {
          LOWORD(v54) = v36 + 1;
          v55 = *(a5 + 1110);
          if (v55 != (v36 + 1))
          {
            do
            {
              v56 = &v34[v54];
              if (*v56 - 48 < 0xA)
              {
                v32 = (*v56 - 48);
              }

              v57 = v56[1] - 48;
              v58 = (v56[1] - 48);
              if (v57 >= 0xA)
              {
                v59 = v31;
              }

              else
              {
                v59 = v58;
              }

              v31 = v59;
              v60 = v30 + v32;
              if (v59 > *(v20 + 2 * v60))
              {
                *(v20 + 2 * v60) = v59;
                LOWORD(v55) = *(a5 + 1110);
              }

              v54 = *(v35 + 2 * v54);
            }

            while (v54 != v55);
          }

          v61 = *(v35 + 2 * v36);
          v36 = *(v35 + 2 * v36);
          v37 = v34[v61];
        }

        if (j == v29)
        {
          break;
        }

        while (1)
        {
          if (v37 == 32)
          {
            goto LABEL_88;
          }

          if (v37 == v41)
          {
            break;
          }

          v62 = *(v35 + 2 * v36);
          v36 = *(v35 + 2 * v36);
          v37 = v34[v62];
        }

        v37 = v34[++v36];
      }

LABEL_88:
      if (++v30 == i)
      {
        v63 = v29 - 1;
        if (v29 >= 2)
        {
          v64 = 0;
          v65 = 0;
          do
          {
            v66 = v64;
            v67 = v64 + 1;
            v68 = *(v98 + 2 * v67);
            v69 = *(v99 + 2 * v65);
            if (v68 == 1 || v69 == 1)
            {
              if (*(v20 + 2 * v65) <= 7)
              {
                *(v20 + 2 * v65) = 8;
              }

              if (*(v20 + 2 * v67) < 7)
              {
                *(v20 + 2 * v67) = 7;
              }

              if (*(v20 + 2 * (v66 + 2)) <= 7)
              {
                *(v20 + 2 * (v66 + 2)) = 8;
              }
            }

            else if (v68 != 4 && v69 != 4)
            {
              if (v68 == 2)
              {
                if (*(v20 + 2 * (v66 + 2)) <= 1)
                {
                  *(v20 + 2 * (v66 + 2)) = 2;
                }

                if (*(v20 + 2 * v65) <= 1)
                {
                  *(v20 + 2 * v65) = 2;
                }
              }

              else if (v68 == 3 || v69 == 2)
              {
                if (*(v20 + 2 * v65) <= 1)
                {
                  *(v20 + 2 * v65) = 2;
                }

                if (v68 == 3 && *(v20 + 2 * (v66 + 2)) <= 1)
                {
                  if (*(a5 + 1114))
                  {
                    *(v20 + 2 * (v66 + 2)) = 2;
                  }

                  else
                  {
                    *(v98 + 2 * v67) = 6;
                  }
                }
              }
            }

            v64 = ++v65;
          }

          while (v63 > v65);
        }

        v79 = 0;
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v88 = (a5 + 368);
        v89 = i;
        v73 = v97;
        v74 = v96;
        while (1)
        {
          v90 = *(v88 - 122);
          v91 = v88[1];
          v92 = v87;
          if (v87 == 2)
          {
            if (v90 <= 9)
            {
              if (v81 || v83 && v82 != 1)
              {
                v83 = 0;
                v81 = 0;
                v87 = 1;
              }

              else
              {
                v87 = 1;
                v95 = ((v91 + ((v91 & 0x8000) >> 15)) & 0xFFFFFFFE) != v91 || v80 == 0;
                v83 = 0;
                v81 = 0;
                if (!v95)
                {
                  *v88 = 1;
                }
              }

              v85 = v84;
              v79 = 1;
              goto LABEL_193;
            }

            if (v90 <= 0x1D)
            {
              if (v90 > 0x18)
              {
                v83 = 1;
              }

              ++v82;
              if (((v91 + ((v91 & 0x8000) >> 15)) & 0xFFFFFFFE) != v91)
              {
                v81 = 1;
              }

              v80 = v91 == 0;
            }

            v87 = 2;
          }

          else
          {
            if (v87 != 1)
            {
              v93 = v90 <= 9;
              if (v90 <= 9)
              {
                v94 = 1;
              }

              else
              {
                LODWORD(v90) = v85;
                v94 = v79;
              }

              if (v87)
              {
                v90 = v85;
              }

              else
              {
                v87 = v93;
                v90 = v90;
              }

              if (!v92)
              {
                v79 = v94;
              }

              goto LABEL_192;
            }

            if (v90 <= 9)
            {
              ++v79;
              if (v90 == v85)
              {
                if (v84 < 1)
                {
                  v87 = 1;
                }

                else
                {
                  v87 = 1;
                  if (!*v88)
                  {
                    *v88 = 1;
                  }
                }

                v86 = 1;
                v90 = v85;
              }

              else if ((v85 > 3 || v90 <= 6) && (v85 < 7 || v90 > 3))
              {
                v87 = 1;
                if (v86)
                {
                  v86 = 0;
                  if (!v88[1])
                  {
                    v88[1] = 1;
                  }
                }
              }

              else
              {
                v86 = 0;
                *v88 = 589832;
                v88[2] = 8;
                v87 = 1;
              }

              goto LABEL_193;
            }

            if (v90 <= 0x1D)
            {
              if (v79 == 2 && *(a5 + 1113) && *v88 == 1)
              {
                *v88 = 0;
              }

              v86 = 0;
              v85 = 0;
              if (v90 > 0x18)
              {
                v83 = 1;
              }

              if (((v91 + ((v91 & 0x8000) >> 15)) & 0xFFFFFFFE) != v91)
              {
                v81 = 1;
              }

              v80 = v91 == 0;
              v82 = 1;
              v87 = 2;
              v90 = 0;
              goto LABEL_193;
            }

            if (v79 == 2)
            {
              if (*(a5 + 1113) && *v88 == 1)
              {
                *v88 = 0;
              }

              v79 = 2;
            }

            v87 = 1;
          }

          v90 = v85;
LABEL_192:
          v85 = v84;
LABEL_193:
          ++v88;
          v84 = v85;
          v85 = v90;
          if (!--v89)
          {
            goto LABEL_127;
          }
        }
      }
    }
  }

  LOWORD(v63) = v22;
  v73 = a1;
  v74 = v96;
LABEL_127:
  v75 = 2;
  if (a6 >= 2 && v63 >= 3)
  {
    v75 = 2;
    do
    {
      ++v75;
      LOWORD(v10) = v10 + 1;
    }

    while (a6 >= v75 && v63 > v75);
  }

  v76 = (v29 - v74);
  if (v76 <= v75)
  {
    goto LABEL_10;
  }

  v18 = 0;
  v77 = v75;
  do
  {
    if (((*(v20 + 2 * v77) + ((*(v20 + 2 * v77) & 0x8000u) >> 15)) & 0xFFFFFFFE) != *(v20 + 2 * v77))
    {
      v78 = (v73 + v10);
      if (v78[1] - 65 <= 0x1C && *v78 - 65 <= 0x1C)
      {
        *(a3 + 4 * (v10 >> 5)) |= 1 << ~v10;
        if (!v18)
        {
          v18 = v77;
        }
      }
    }

    ++v77;
    LOWORD(v10) = v10 + 1;
  }

  while (v77 < v76);
  return v18;
}