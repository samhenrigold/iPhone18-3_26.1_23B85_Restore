uint64_t PDupibuf(uint64_t a1)
{
  __strcpy_chk();
  __strcpy_chk();
  __strcpy_chk();
  __strcpy_chk();
  result = __strcpy_chk();
  v3 = *(a1 + 784);
  if ((v3 | 2) == 7)
  {
    *(a1 + 785) = v3;
    v4 = v3;
  }

  else
  {
    v4 = *(a1 + 785);
  }

  v5 = *(a1 + 2074);
  v6 = *(*pMCPbuff + 8 * v5);
  *v6 = v3;
  *(v6 + 782) = v4;
  *(v6 + 2064) = *(a1 + 2076);
  v7 = *(a1 + 2078);
  v8 = 1 << (v7 - 1);
  if (!v7)
  {
    LODWORD(v8) = -1;
  }

  *(v6 + 2072) = v8;
  *(v6 + 2069) = v7;
  *(v6 + 2068) = *(a1 + 2079);
  *(v6 + 2160) = *(a1 + 2064);
  *(v6 + 2162) = v5;
  *(v6 + 2061) = 0;
  *(v6 + 2094) = 0;
  *(v6 + 2092) = *(a1 + 2072);
  *(v6 + 2090) = *(a1 + 2070);
  HIDWORD(v9) = *(a1 + 2066);
  LODWORD(v9) = HIDWORD(v9);
  *(v6 + 2086) = v9 >> 16;
  return result;
}

void PDdbfree(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 0:
    case 1:
      v2 = a2;
      free(*(*(*(*pMCPbuff + 8 * a2) + 2184) + 176));
      goto LABEL_17;
    case 2:
      v2 = a2;
LABEL_17:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2184) + 168));
      goto LABEL_20;
    case 3:
      v2 = a2;
LABEL_20:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2184) + 160));
      goto LABEL_21;
    case 4:
      v2 = a2;
LABEL_21:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2184) + 152));
      goto LABEL_22;
    case 5:
      v2 = a2;
LABEL_22:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2184) + 128));
      goto LABEL_23;
    case 6:
      v2 = a2;
LABEL_23:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2184) + 112));
      goto LABEL_24;
    case 7:
      v2 = a2;
LABEL_24:
      PDSFmemory((*(*(*pMCPbuff + 8 * v2) + 2192) + 32), 65, 0);
      goto LABEL_25;
    case 8:
      v2 = a2;
LABEL_25:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 3168));
      goto LABEL_26;
    case 9:
      v2 = a2;
LABEL_26:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 72));
      goto LABEL_27;
    case 10:
      v2 = a2;
LABEL_27:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 80));
      goto LABEL_28;
    case 11:
      v2 = a2;
LABEL_28:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 64));
      goto LABEL_29;
    case 12:
      v2 = a2;
LABEL_29:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 48));
      goto LABEL_30;
    case 18:
      v2 = a2;
LABEL_30:
      free(*(*(*pMCPbuff + 8 * v2) + 2096));
      goto LABEL_31;
    case 19:
      v2 = a2;
LABEL_31:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 104));
      goto LABEL_32;
    case 20:
      v2 = a2;
LABEL_32:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 3488));
      goto LABEL_33;
    case 21:
      v2 = a2;
LABEL_33:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 3528));
      goto LABEL_34;
    case 22:
      v2 = a2;
LABEL_34:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 3520));
      goto LABEL_35;
    case 23:
      v2 = a2;
LABEL_35:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 3496));
      goto LABEL_36;
    case 24:
      v2 = a2;
LABEL_36:
      free(*(*(*(*pMCPbuff + 8 * v2) + 2192) + 3512));
      goto LABEL_37;
    case 25:
      v2 = a2;
LABEL_37:
      free(*(*(*pMCPbuff + 8 * v2) + 2192));
      goto LABEL_38;
    case 26:
      v2 = a2;
LABEL_38:
      free(*(*(*pMCPbuff + 8 * v2) + 2184));
      goto LABEL_39;
    case 30:
      v2 = a2;
LABEL_39:
      free(*(*(*pMCPbuff + 8 * v2) + 2128));
      goto LABEL_40;
    case 31:
      v2 = a2;
LABEL_40:
      free(*(*(*pMCPbuff + 8 * v2) + 2152));
      goto LABEL_41;
    case 32:
      v2 = a2;
LABEL_41:
      free(*(*(*pMCPbuff + 8 * v2) + 2144));
      goto LABEL_42;
    case 33:
      v2 = a2;
LABEL_42:
      free(*(*(*pMCPbuff + 8 * v2) + 2136));
      goto LABEL_43;
    case 34:
      v2 = a2;
LABEL_43:
      free(*(*(*pMCPbuff + 8 * v2) + 2120));
      goto LABEL_44;
    case 62:
      v2 = a2;
LABEL_44:
      free(*(*pMCPbuff + 8 * v2));
      break;
    default:
      v2 = a2;
      break;
  }

  v4 = *(pMCPbuff + 8);
  v3 = *(pMCPbuff + 16);
  *(v3 + 2 * v2) = 0;
  v5 = *v4;
  do
  {
    if (*(v3 + 2 * v5))
    {
      break;
    }

    *v4 = --v5;
  }

  while (v5);
}

void PDfreedid(unsigned int a1)
{
  v2 = *(*pMCPbuff + 8 * a1);
  if ((*v2 | 2) == 7)
  {
    free(*(*(v2 + 272) + 48));
    v3 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2176) + 48) = 0;
    free(*(*(*(v3 + 8 * a1) + 2176) + 88));
    v4 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2176) + 88) = 0;
    free(*(*(*(v4 + 8 * a1) + 2176) + 96));
    v5 = *pMCPbuff;
    *(*(*(v5 + 8 * a1) + 2176) + 96) = 0;
    v6 = *(v5 + 8 * a1);
    if (*v6 != 7 && *(v6 + 2094))
    {
      free(*(*(v6 + 2176) + 104));
      v6 = *(*pMCPbuff + 8 * a1);
    }

    v7 = *(v6 + 2176);
    v8 = v7[9];
    if (v8)
    {
      if (*v8)
      {
        free(*v8);
        v8 = *(*(*(*pMCPbuff + 8 * a1) + 2176) + 72);
      }

      free(v8);
      v9 = *pMCPbuff;
      *(*(*(*pMCPbuff + 8 * a1) + 2176) + 72) = 0;
      v7 = *(*(v9 + 8 * a1) + 2176);
    }

    free(v7);
    v10 = *pMCPbuff;
    *(*(*pMCPbuff + 8 * a1) + 2176) = 0;
    free(*(*(*(v10 + 8 * a1) + 2184) + 1184));
    free(*(*(*(*pMCPbuff + 8 * a1) + 2184) + 40));
    v11 = *pMCPbuff;
  }

  else
  {
    free(*(*(v2 + 271) + 40));
    v12 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 40) = 0;
    free(*(*(*(v12 + 8 * a1) + 2168) + 32));
    v13 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 32) = 0;
    free(*(*(*(v13 + 8 * a1) + 2168) + 48));
    v14 = *pMCPbuff;
    *(*(*(*pMCPbuff + 8 * a1) + 2168) + 48) = 0;
    free(*(*(v14 + 8 * a1) + 2168));
    v11 = *pMCPbuff;
    *(*(*pMCPbuff + 8 * a1) + 2168) = 0;
  }

  free(*(*(*(v11 + 8 * a1) + 2184) + 112));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2184) + 128));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 3168));
  v15 = *pMCPbuff;
  *(*(*(*pMCPbuff + 8 * a1) + 2192) + 3168) = 0;
  PDSFmemory((*(*(v15 + 8 * a1) + 2192) + 32), 0, 0);
  free(*(*(*(*pMCPbuff + 8 * a1) + 2184) + 152));
  v16 = *pMCPbuff;
  *(*(*(*pMCPbuff + 8 * a1) + 2184) + 152) = 0;
  free(*(*(*(v16 + 8 * a1) + 2184) + 160));
  v17 = *pMCPbuff;
  *(*(*(*pMCPbuff + 8 * a1) + 2184) + 160) = 0;
  free(*(*(*(v17 + 8 * a1) + 2184) + 168));
  v18 = *pMCPbuff;
  *(*(*(*pMCPbuff + 8 * a1) + 2184) + 168) = 0;
  free(*(*(*(v18 + 8 * a1) + 2184) + 176));
  v19 = *pMCPbuff;
  *(*(*(*pMCPbuff + 8 * a1) + 2184) + 176) = 0;
  free(*(*(*(v19 + 8 * a1) + 2192) + 3488));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 3528));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 3520));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 3496));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 3512));
  free(*(*(*pMCPbuff + 8 * a1) + 2096));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 104));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 48));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 64));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 80));
  free(*(*(*(*pMCPbuff + 8 * a1) + 2192) + 72));
  free(*(*(*pMCPbuff + 8 * a1) + 2184));
  v20 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2184) = 0;
  free(*(*(v20 + 8 * a1) + 2192));
  v21 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2192) = 0;
  free(*(*(v21 + 8 * a1) + 2128));
  v22 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2128) = 0;
  free(*(*(v22 + 8 * a1) + 2152));
  v23 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2152) = 0;
  free(*(*(v23 + 8 * a1) + 2144));
  v24 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2144) = 0;
  free(*(*(v24 + 8 * a1) + 2136));
  v25 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2136) = 0;
  free(*(*(v25 + 8 * a1) + 2120));
  v26 = *pMCPbuff;
  *(*(*pMCPbuff + 8 * a1) + 2120) = 0;
  free(*(v26 + 8 * a1));
  *(*pMCPbuff + 8 * a1) = 0;
  v28 = *(pMCPbuff + 8);
  v27 = *(pMCPbuff + 16);
  *(v27 + 2 * a1) = 0;
  v29 = *v28;
  do
  {
    if (*(v27 + 2 * v29))
    {
      break;
    }

    *v28 = --v29;
  }

  while (v29);
}

uint64_t PDsdneg(uint64_t a1)
{
  v1 = *(*pMCPbuff + 8 * *(a1 + 2074));
  if (!*(v1 + 2094))
  {
    return 0;
  }

  v3 = *(v1 + 2176);
  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B00408E6C3DC5uLL);
  if (!v4)
  {
    return 8;
  }

  v5 = v4;
  v6 = malloc_type_calloc(0x41uLL, 1uLL, 0x100004077774924uLL);
  *(v5 + 1) = v6;
  if (!v6)
  {
LABEL_12:
    free(v5);
    return 8;
  }

  v5[24] = 20;
  v7 = malloc_type_calloc(0x14uLL, 8uLL, 0x10040436913F5uLL);
  *(v5 + 13) = v7;
  if (!v7)
  {
    free(*(v5 + 1));
    goto LABEL_12;
  }

  for (i = 0; i != 160; i += 8)
  {
    v9 = malloc_type_calloc(1uLL, 0x74uLL, 0x10000404AB42077uLL);
    *(*(v5 + 13) + i) = v9;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v5[24] = 20;
  *v5 = *(a1 + 2074);
  v5[1] = *(a1 + 2064);
  *(v5 + 42) = 0;
  *(v5 + 9) = 0xFFFF;
  if (PDword(v5, 8u, 1) == 8)
  {
LABEL_9:
    PDFullCleanSDNeg(v5);
    return 8;
  }

  v17 = 0;
  v10 = 8;
  if (PDword(v5, 8u, 5) != 8)
  {
    while (1)
    {
      v12 = v5[25];
      if (!v12)
      {
        break;
      }

      for (j = 0; j < v12; ++j)
      {
        v14 = *(*(v5 + 13) + 8 * j);
        if (*(v14 + 70))
        {
          v15 = strlen(*(*(v5 + 13) + 8 * j));
          SLfun(v14, 0, (v15 - 1), &v17 + 1, &v17);
          v16 = (*(v3 + 112) - 1) & v17;
          LOWORD(v17) = (*(v3 + 112) - 1) & v17;
          *(*(v3 + 104) + (v16 >> 3)) |= 1 << (v16 & 7);
          v12 = v5[25];
        }
      }

      v10 = 8;
      if (PDword(v5, 8u, 5) == 8)
      {
        goto LABEL_24;
      }
    }

    v10 = 0;
  }

LABEL_24:
  PDword(v5, 8u, 2);
  PDFullCleanSDNeg(v5);
  return v10;
}

void PDFullCleanSDNeg(void **a1)
{
  for (i = 0; i != 160; i += 8)
  {
    v3 = *(a1[13] + i);
    if (v3)
    {
      free(v3);
    }
  }

  free(a1[1]);
  free(a1[13]);

  free(a1);
}

uint64_t PDdecode(unsigned __int8 *a1, uint64_t a2, void *a3, unsigned __int16 *a4)
{
  v50 = a2;
  v56 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 398);
  v8 = a4[1596];
  v54 = 0;
  v9 = *(*pMCPbuff + 8 * v8);
  v10 = *(v9 + 2144);
  v52 = *a4;
  v11 = SLLngToA(*(v9 + 2069));
  a3[7] = v11;
  v12 = *(*(*pMCPbuff + 8 * v8) + 2168);
  if (!*(v12 + 4))
  {
    return 0;
  }

  v13 = v11;
  v45 = 0;
  v14 = 0;
  v15 = *(v12 + 32);
  v53 = *(v12 + 40);
  v16 = &v15[*(v12 + 4)];
  v46 = v8;
  v17 = v52;
  v51 = v16;
  do
  {
    v18 = *v15;
    if (v18 > 0xFFFD)
    {
      goto LABEL_4;
    }

    v19 = (v53 + v18);
    v20 = v19[2];
    if (*a4 == 5 && (v20 < a4[1729] || v20 > a4[1730]))
    {
      goto LABEL_4;
    }

    if (v17 == 100)
    {
      v21 = v20 - v50;
      if (v20 - v50 < 0)
      {
        v21 = v50 - v20;
      }

      if (v21 > a4[1067])
      {
        goto LABEL_4;
      }
    }

    else if (v17 == 6 && (v20 > v50 || v20 < a4[1728]))
    {
      goto LABEL_4;
    }

    v47 = v19[1];
    v48 = *v19;
    __strncpy_chk();
    v55[v20] = 0;
    v22 = *(*(*pMCPbuff + 8 * v8) + 2069);
    v23 = a3;
    *(a3 + 55) = v22;
    v24 = PDhypstrip(v55, (*(*(v7 + 104) + 8 * *(v7 + 50)) + 88), *(v7 + 16));
    v25 = v24 - 1;
    *(*(*(v7 + 104) + 8 * *(v7 + 50)) + 71) = SLcap(v55, 0, v25, (*(*(v7 + 104) + 8 * *(v7 + 50)) + 80), v13);
    if (v24)
    {
      v26 = 0;
      do
      {
        v10[v26] = ((*(v13 + 4 * v55[v26]) >> 25) & 0x20) + v55[v26];
        ++v26;
      }

      while (v24 > v26);
    }

    v10[v24] = 0;
    v27 = *(*(v7 + 104) + 8 * *(v7 + 50));
    v28 = *(v27 + 71);
    v54 = *(v27 + 80);
    v17 = v52;
    v49 = v28;
    switch(v52)
    {
      case 5:
        v29 = SLwldcmp(v10, v24, a1, v50);
        goto LABEL_28;
      case 6:
        v29 = SFanachk(v10, v24, a4 + 3199);
LABEL_28:
        v14 = v29;
        break;
      case 100:
        if (*v10 != *a1 && v10[v25] != a1[v50 - 1])
        {
          a3 = v23;
          v8 = v46;
          v16 = v51;
          goto LABEL_4;
        }

        a3 = v23;
        v14 = PDSFcorbru(v23, a4, v10, v24, a1, v50, a4[1068], a4[1069], *(a4 + 535), a4[1067]);
        goto LABEL_30;
    }

    a3 = v23;
LABEL_30:
    v16 = v51;
    v8 = v46;
    if (v14)
    {
      v30 = *(a3 + 55);
      if (!*(a3 + 55))
      {
        v31 = 1;
        while ((*(v7 + 36) & v31) == 0)
        {
          v31 *= 2;
          if (v30++ >= 0x1F)
          {
            goto LABEL_39;
          }
        }

        *(a3 + 55) = v30 + 1;
      }

LABEL_39:
      PDSFdc(v10, v24, a3, a4);
      v14 = PDSFchkwrd(a3, a4, v10, v24, v49, &v54);
      *(a3 + 55) = *(*(*pMCPbuff + 8 * v46) + 2069);
      v17 = v52;
      v16 = v51;
      if (v14 == 10)
      {
        __strcpy_chk();
        __strcpy_chk();
        v33 = pMCPbuff;
        v34 = *(*pMCPbuff + 8 * v46);
        v35 = *(*(v34 + 2168) + 48);
        v36 = (v35 + 20 * (v47 - v48 + (v48 << 8)));
        v37 = *(v36 + 19);
        v38 = *(*(v7 + 104) + 8 * *(v7 + 50));
        *(v38 + 70) = v37 & 1;
        if ((v37 & 2) != 0)
        {
          *(v38 + 96) = *(v36 + 3);
          v39 = *(v35 + 20 * (v47 - v48 + (v48 << 8)) + 16);
        }

        else
        {
          v39 = 0;
          *(v38 + 96) = 0;
        }

        *(v38 + 100) = v39;
        *(v38 + 66) = v46;
        *(v38 + 72) = *(v34 + 2069);
        v40 = *v36;
        *(v38 + 110) = *(v36 + 2);
        *(v38 + 102) = v40;
        v41 = *(*v33 + 8 * v46);
        v42 = *(v7 + 50);
        v43 = *(*(v7 + 104) + 8 * v42);
        v43[34] = v41[1042];
        v43[37] = v41[1043];
        v43[38] = v41[1044];
        *(v7 + 50) = v42 + 1;
        if (*(v7 + 48) == (v42 + 1))
        {
          return 5113;
        }

        v45 = 1;
        v14 = 10;
        v17 = v52;
        v16 = v51;
      }
    }

    else
    {
      v17 = v52;
    }

LABEL_4:
    ++v15;
  }

  while (v15 < v16);
  if (v45)
  {
    return 304;
  }

  else
  {
    return 0;
  }
}

uint64_t PDdecod2(unsigned __int8 *a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned __int16 *a6)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v123[0] = 0;
  if (a2 < 1)
  {
    return 11;
  }

  v6 = a6;
  LOWORD(v9) = a3;
  v89 = a6[1596];
  v11 = *(a6 + 398);
  v112 = *(*pMCPbuff + 8 * v89);
  v12 = *(v112 + 2176);
  v100 = *(v12 + 118);
  v13 = *(v12 + 64);
  v14 = **(v12 + 72);
  v15 = *(v12 + 48);
  v117 = 0;
  v105 = *a6;
  v16 = *(a5 + 2);
  v94 = v11;
  v95 = v12;
  v17 = *(v12 + 88);
  v84 = *(a6 + 14);
  v96 = a2;
  if (a6[8] != a3)
  {
    if (SLSeek(*(a5 + 64), *(a5 + 12) + v16 * a3, 0) == 8)
    {
LABEL_135:
      v6[8] = 0;
    }

    else
    {
      if (SLFRead(*(a5 + 64), v16, v14, &v117))
      {
        v82 = 0;
      }

      else
      {
        v82 = v117 == v16;
      }

      if (v82)
      {
        v97 = a1;
        v6[8] = v9;
        goto LABEL_4;
      }
    }

    return 11;
  }

  v97 = a1;
LABEL_4:
  v90 = 0;
  v85 = v16;
  v86 = 0;
  v98 = a5;
  v99 = v6;
  do
  {
    v87 = a4;
    v88 = v9;
    __s[0] = 0;
    v111 = __rev16(*v14);
    if (v111)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 128;
      v22 = 2;
      do
      {
        v110 = v18;
        v23 = 0;
        v24 = 0;
        LOWORD(v25) = 0;
        v26 = 0;
        v27 = 0;
        do
        {
          v28 = v23;
          v29 = v27;
          do
          {
            v27 = v29;
            LOWORD(v30) = v13;
            do
            {
              if ((v21 & 0x80) != 0)
              {
                v19 = *(v14 + v22++);
              }

              v31 = v15 + 8 * v30;
              v32 = (v31 + 6);
              v33 = (v31 + 4);
              if ((v21 & v19) != 0)
              {
                v34 = v32;
              }

              else
              {
                v34 = v33;
              }

              v30 = *v34;
              if ((v21 & 0xFFFE) != 0)
              {
                v21 >>= 1;
              }

              else
              {
                v21 = 128;
              }
            }

            while (v30 > 255);
            v23 = v28 + 1;
            v17[v28] = v30;
            ++v20;
            v29 = 1;
            if (v30)
            {
              v35 = 0;
            }

            else
            {
              v35 = v27 == 0;
            }

            v36 = !v35 || v24 == 0;
            ++v28;
          }

          while (!v36);
          if (v24 && !v25 && v27)
          {
            v25 = (v30 & 1 | (8 * ((v30 >> 1) & 1))) + ((2 * v30) & 8);
            if ((v30 & 8) != 0)
            {
              LOWORD(v25) = v25 | 6;
            }

            v24 = 0;
            if ((v30 & 0x20) != 0)
            {
              LOWORD(v25) = v25 + *(v112 + 2092);
            }

            v26 = 1;
          }

          v35 = v25 == v24++;
        }

        while (!v35 || !v26);
        v123[0] = 0;
        v113 = *v17;
        v37 = v17[1];
        v38 = v17 + 1;
        if (v37 >= 0x11)
        {
          v39 = 0;
          v40 = v17[1];
          do
          {
            v122[v39] = v40;
            v41 = v39 + 1;
            v40 = v17[v39 + 2];
            if (!v40)
            {
              break;
            }

            v42 = v39++ >= 0x7F;
          }

          while (!v42);
          v122[v41] = 0;
          v38 = &v17[v41 + 1];
        }

        v106 = v37;
        v43 = strlen(__s);
        if (__s[0])
        {
          v44 = v43 - (v113 & 0x3F);
          if (v106 > 0x10)
          {
            if (v44 < 1)
            {
              v121[0] = 0;
            }

            else
            {
              v108 = v44 & 0x7FFF;
              __strncpy_chk();
              v121[v108] = 0;
            }

            __strcat_chk();
          }

          else if (v44 < 1)
          {
            v121[0] = 0;
          }

          else
          {
            v107 = v44 & 0x7FFF;
            __strncpy_chk();
            v121[v107] = 0;
          }
        }

        else
        {
          __strcpy_chk();
        }

        __strcpy_chk();
        if (v111 < v20)
        {
          break;
        }

        v45 = v38[1];
        if ((v45 & 2) != 0)
        {
          LODWORD(v123[0]) |= v38[2] << 24;
          v47 = HIDWORD(v123[0]) | (v38[6] << 24);
          LODWORD(v123[0]) |= (v38[4] << 8) | (v38[3] << 16) | v38[5];
          HIDWORD(v123[0]) = v47;
          v46 = (v38 + 10);
          HIDWORD(v123[0]) = (v38[8] << 8) | (v38[7] << 16) | v38[9] | v47;
        }

        else
        {
          v46 = (v38 + 2);
        }

        v48 = v105;
        if ((v45 & 4) != 0)
        {
          v49 = *v46;
          v50 = v46[1];
          v46 += 2;
          v109 = bswap32(v49);
          v104 = bswap32(v50);
          if ((v45 & 8) == 0)
          {
LABEL_63:
            v103 = 0;
            if ((v45 & 0x20) == 0)
            {
              goto LABEL_65;
            }

LABEL_64:
            v51 = v45;
            __memcpy_chk();
            v45 = v51;
            v48 = v105;
            goto LABEL_65;
          }
        }

        else
        {
          v109 = 0;
          v104 = 0;
          if ((v45 & 8) == 0)
          {
            goto LABEL_63;
          }
        }

        LODWORD(v103) = bswap32(*(v46 + 2)) >> 16;
        HIDWORD(v103) = bswap32(*v46);
        if ((v45 & 0x20) != 0)
        {
          goto LABEL_64;
        }

LABEL_65:
        v52 = v113 >> 6;
        v53 = v45 & 0x10;
        if (v48 != 3)
        {
          v115 = v45 & 0x10;
          v101 = v52;
          v61 = strlen(v121);
          v62 = v48;
          v63 = v61;
          v64 = v61;
          switch(v62)
          {
            case 100:
              v73 = v61 - v96;
              if (v73 < 0)
              {
                v73 = v96 - v61;
              }

              if (v73 > *(v99 + 2134))
              {
                goto LABEL_126;
              }

              v92 = v61;
              v74 = SLstrncmp(v121, v84, *(v98 + 54));
              if (v74 == 255)
              {
                goto LABEL_126;
              }

              if (v74 == 1)
              {
                return 11;
              }

              *(v98 + 55) = *(v112 + 2069);
              if (v121[0] != *v97 && v121[v63] != v97[v96])
              {
                goto LABEL_126;
              }

              v65 = v92;
              *(v99 + 2150) = v92;
              *(v99 + 2152) = v96;
              v66 = PDSFcorbru(v98, v99, v121, v92, v97, v96, *(v99 + 2136), *(v99 + 2138), *(v99 + 2140), *(v99 + 2134));
              goto LABEL_111;
            case 6:
              if (v61 > v96 || *(v99 + 3456) > v61)
              {
                goto LABEL_126;
              }

              *(v98 + 55) = *(v112 + 2069);
              v65 = v61;
              v66 = SFanachk(v121, v61, v99 + 3199);
              goto LABEL_111;
            case 5:
              if (*(v99 + 3458) > v61 || *(v99 + 3460) < v61)
              {
                goto LABEL_126;
              }

              *(v98 + 55) = *(v112 + 2069);
              v65 = v61;
              v66 = SLwldcmp(v121, v61, v97, v96);
LABEL_111:
              v64 = v65;
              if (!v66)
              {
LABEL_112:
                v90 = 0;
                goto LABEL_126;
              }

              break;
            default:
              *(v98 + 55) = *(v112 + 2069);
              if (!v90)
              {
                goto LABEL_112;
              }

              break;
          }

          v75 = *(v98 + 55);
          if (!*(v98 + 55))
          {
            v76 = 1;
            while ((*(v94 + 36) & v76) == 0)
            {
              v76 *= 2;
              v42 = v75++ >= 0x1F;
              if (v42)
              {
                goto LABEL_122;
              }
            }

            *(v98 + 55) = v75 + 1;
          }

LABEL_122:
          v93 = v64;
          PDSFdc(v121, v64, v98, v99);
          *(v98 + 55) = *(*(*pMCPbuff + 8 * v89) + 2069);
          v77 = PDSFchkwrd(v98, v99, v121, v93, v101, v123);
          if (v77 == 10)
          {
            __strcpy_chk();
            v78 = *(*(v94 + 104) + 8 * *(v94 + 50));
            *(v78 + 71) = v101;
            *(v78 + 80) = v123[0];
            *(v78 + 88) = v109;
            *(v78 + 92) = v104;
            *(v78 + 96) = HIDWORD(v103);
            *(v78 + 100) = v103;
            memcpy((v78 + 102), &__src, *(v112 + 2092));
            v79 = *(v94 + 50);
            v80 = *(*(v94 + 104) + 8 * v79);
            *(v80 + 70) = v115 >> 4;
            *(v80 + 66) = v89;
            *(v80 + 72) = *(v112 + 2069);
            *(v94 + 50) = v79 + 1;
            if (*(v94 + 48) == (v79 + 1))
            {
              return 5113;
            }

            v90 = 10;
          }

          else
          {
            v90 = v77;
          }

          goto LABEL_126;
        }

        if (!v100)
        {
          v116 = v45 & 0x10;
          v102 = v52;
          v67 = strlen(v121);
          v68 = v67;
          v91 = v67;
          if (v67 >= v96)
          {
            v68 = v96;
          }

          if (v68 >= 4)
          {
            v69 = 4;
          }

          else
          {
            v69 = v68;
          }

          if (SLstrncmp(v121, v97, v69) > 0)
          {
            return 11;
          }

          v53 = v116;
          if (v91 == v96)
          {
            v55 = *v97;
            if (v55 == v121[0] && (!v116 || *(v94 + 42) != 2))
            {
              v70 = v121;
              v54 = *v97;
              v71 = v97;
              while (1)
              {
                if ((((v54 & 0x80) >> 2) ^ 0x20 | v54) == (((v55 & 0x80) >> 2) ^ 0x20 | v55))
                {
                  if (!v54)
                  {
                    goto LABEL_120;
                  }

                  ++v71;
                }

                else
                {
                  v72 = *(v112 + 2068);
                  if (v54 == v72)
                  {
                    ++v71;
                    goto LABEL_99;
                  }

                  if (v55 != v72)
                  {
LABEL_120:
                    v18 = v110;
                    LOBYTE(v52) = v102;
                    goto LABEL_69;
                  }
                }

                ++v70;
LABEL_99:
                v54 = *v71;
                v55 = *v70;
              }
            }
          }

LABEL_126:
          v18 = v110;
          continue;
        }

        v18 = v110 + 1;
        if (*(v95 + 116) <= v110)
        {
          v54 = *v97;
          v55 = v121[0];
LABEL_69:
          if ((((v54 & 0x80) >> 2) ^ 0x20 | v54) == (((v55 & 0x80) >> 2) ^ 0x20 | v55) || v100)
          {
            v114 = v53 >> 4;
            v56 = *(*(v94 + 104) + 8 * *(v94 + 50));
            *(v56 + 71) = v52;
            *(v56 + 80) = v123[0];
            *(v56 + 88) = v109;
            *(v56 + 92) = v104;
            *(v56 + 72) = *(v112 + 2069);
            __strcpy_chk();
            v57 = *(*(v94 + 104) + 8 * *(v94 + 50));
            *(v57 + 96) = HIDWORD(v103);
            *(v57 + 100) = v103;
            *(v57 + 102) = __src;
            *(v57 + 110) = v119;
            v58 = *(v94 + 50);
            v59 = *(*(v94 + 104) + 8 * v58);
            *(v59 + 70) = v114;
            *(v59 + 66) = v89;
            v60 = *(*pMCPbuff + 8 * v89);
            *(v59 + 68) = *(v60 + 2084);
            *(v59 + 74) = *(v60 + 2086);
            *(v94 + 50) = v58 + 1;
            if (v100)
            {
              ++*(v95 + 116);
            }

            if (*(v94 + 48) == (v58 + 1))
            {
              return 5113;
            }

            ++v86;
          }
        }
      }

      while (v111 > v20);
    }

    v9 = (v88 + 1);
    v6 = v99;
    *(v99 + 16) = v88 + 1;
    *(v95 + 116) = 0;
    if (v9 >= *(v98 + 48))
    {
      v81 = v86 == 0;
      goto LABEL_144;
    }

    if (SLSeek(*(v98 + 64), *(v98 + 12) + v85 * v9, 0) == 8)
    {
      return 11;
    }

    if (SLFRead(*(v98 + 64), v85, v14, &v117) || v117 != v85)
    {
      goto LABEL_135;
    }

    a4 = v87 - 1;
  }

  while (v87 > 0);
  v81 = *(v94 + 50) == 0;
LABEL_144:
  if (v81)
  {
    return 11;
  }

  else
  {
    return 10;
  }
}

uint64_t PDget(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 2184);
  if (*(v5 + 68) < a2)
  {
    return 5112;
  }

  v13 = v3;
  v14 = v4;
  v12 = 0;
  v10 = *(a3 + 2192);
  v10[9] = 0;
  v10[50] = 0;
  *v10 = 3;
  *(*(a3 + 2176) + 118) = 0;
  v11 = SFbisrch(a1, 0, (a2 - 1), &v12, v5);
  return PDdecod2(a1, a2, v11, v12, *(a3 + 2184), *(a3 + 2192));
}

uint64_t PDgetword(uint64_t a1)
{
  v1 = *(a1 + 2192);
  v1[9] = 0;
  v1[50] = 0;
  *v1 = 3;
  v2 = *(a1 + 2176);
  v3 = *(v2 + 114);
  *(v2 + 118) = 1;
  v4 = *(a1 + 2184);
  v5 = *(v4 + 48);
  if (v3 >= v5)
  {
    return 8;
  }

  v10 = 0;
  while (1)
  {
    v7 = v5 > (v3 + 1);
    result = *a1 == 7 ? PDdecodOldSD(&v10, 2, v3, v7, v4, v1) : PDdecod2(&v10, 2, v3, v7, v4, v1);
    v1 = *(a1 + 2192);
    v3 = v1[8];
    v9 = *(a1 + 2176);
    if (result == 5113)
    {
      break;
    }

    *(v9 + 116) = 0;
    v4 = *(a1 + 2184);
    v5 = *(v4 + 48);
    if (v3 >= v5)
    {
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_11:
  *(v9 + 114) = v3;
  return result;
}

uint64_t PDdecodOldSD(unsigned __int8 *a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned __int16 *a6)
{
  v107[1] = *MEMORY[0x1E69E9840];
  v107[0] = 0;
  if (a2 < 1)
  {
    return 11;
  }

  v6 = a6;
  LOWORD(v9) = a3;
  v80 = a6[1596];
  v11 = *(a6 + 398);
  v96 = *(*pMCPbuff + 8 * v80);
  v12 = *(v96 + 2176);
  v88 = *(v12 + 118);
  v92 = *(v12 + 64);
  v13 = **(v12 + 72);
  v14 = *(v12 + 48);
  v101 = 0;
  v90 = *a6;
  v15 = *(a5 + 2);
  v82 = v11;
  v83 = v12;
  v93 = *(v12 + 88);
  v75 = *(a6 + 14);
  v84 = a2;
  if (a6[8] != a3)
  {
    if (SLSeek(*(a5 + 64), *(a5 + 12) + v15 * a3, 0) == 8)
    {
LABEL_116:
      v6[8] = 0;
    }

    else
    {
      if (SLFRead(*(a5 + 64), v15, v13, &v101))
      {
        v72 = 0;
      }

      else
      {
        v72 = v101 == v15;
      }

      if (v72)
      {
        v86 = a1;
        v6[8] = v9;
        goto LABEL_4;
      }
    }

    return 11;
  }

  v86 = a1;
LABEL_4:
  v16 = 0;
  v81 = 0;
  v78 = 0;
  v85 = v6;
  v87 = a5;
  v74 = v15;
  do
  {
    v76 = a4;
    v77 = v9;
    __s[0] = 0;
    v91 = __rev16(*v13);
    if (v91)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 128;
      v21 = 2;
      v22 = v92;
      v23 = v93;
      do
      {
        v97 = v17;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        do
        {
          LOWORD(v28) = v22;
          do
          {
            if ((v20 & 0x80) != 0)
            {
              v18 = *(v13 + v21++);
            }

            v29 = v14 + 8 * v28;
            v30 = (v29 + 6);
            v31 = (v29 + 4);
            if ((v20 & v18) != 0)
            {
              v31 = v30;
            }

            v28 = *v31;
            if ((v20 & 0xFFFE) != 0)
            {
              v20 >>= 1;
            }

            else
            {
              v20 = 128;
            }
          }

          while (v28 > 255);
          v23[v24] = v28;
          if (v25 && !v26)
          {
            if ((v28 & 0xF0) != 0)
            {
              v26 = 0;
            }

            else
            {
              v25 = 0;
              v26 = ((v28 & 1 | (8 * ((v28 >> 1) & 1))) + ((2 * v28) & 8)) | 6;
              if ((v28 & 8) == 0)
              {
                v26 = (v28 & 1 | (8 * ((v28 >> 1) & 1))) + ((2 * v28) & 8);
              }

              v27 = 1;
            }
          }

          ++v24;
          ++v19;
          v71 = v26 == v25++;
        }

        while (!v71 || !v27);
        v107[0] = 0;
        v32 = *v23;
        v106[0] = 0;
        v33 = v23[1];
        if (v33 < 0x11)
        {
          v34 = v93 + 1;
        }

        else
        {
          v34 = v93 + 1;
          do
          {
            v106[v16] = v33;
            v35 = *++v34;
            LOBYTE(v33) = v35;
            ++v16;
          }

          while (v35 > 0xF);
          v106[v16] = 0;
        }

        v98 = v32;
        if (__s[0])
        {
          v36 = (strlen(__s) - (v32 & 0x3F));
          __strncpy_chk();
          v105[v36] = 0;
          if (!v16)
          {
            goto LABEL_37;
          }

          __strcat_chk();
        }

        else
        {
          __strcpy_chk();
        }

        __strcpy_chk();
LABEL_37:
        v37 = (v34 + 1);
        v38 = *v34;
        if ((*v34 & 2) != 0)
        {
          LODWORD(v107[0]) |= v34[1] << 24;
          LODWORD(v107[0]) |= v34[2] << 16;
          v39 = HIDWORD(v107[0]) | (v34[5] << 24);
          LODWORD(v107[0]) |= bswap32(*(v34 + 3)) >> 16;
          HIDWORD(v107[0]) = v39;
          HIDWORD(v107[0]) = v39 | (v34[6] << 16);
          v37 = (v34 + 9);
          HIDWORD(v107[0]) |= bswap32(*(v34 + 7)) >> 16;
        }

        if ((v38 & 4) != 0)
        {
          v40 = *v37;
          v41 = v37[1];
          v37 += 2;
          v95 = _byteswap_uint64(__PAIR64__(v41, v40));
          if ((v38 & 8) == 0)
          {
LABEL_44:
            v94 = 0;
            if ((v38 & 0x20) == 0)
            {
              goto LABEL_46;
            }

LABEL_45:
            __memcpy_chk();
            goto LABEL_46;
          }
        }

        else
        {
          v95 = 0;
          if ((v38 & 8) == 0)
          {
            goto LABEL_44;
          }
        }

        LODWORD(v94) = bswap32(*(v37 + 2)) >> 16;
        HIDWORD(v94) = bswap32(*v37);
        if ((v38 & 0x20) != 0)
        {
          goto LABEL_45;
        }

LABEL_46:
        v42 = v98 >> 6;
        v43 = v38 & 0x10;
        if (v90 != 3)
        {
          v100 = v38 & 0x10;
          v89 = v42;
          v51 = strlen(v105);
          v52 = v51;
          v53 = v51;
          switch(v90)
          {
            case 100:
              v62 = v51 - v84;
              if (v62 < 0)
              {
                v62 = v84 - v51;
              }

              if (v62 > *(v85 + 2134))
              {
                goto LABEL_107;
              }

              v54 = v51;
              v63 = SLstrncmp(v105, v75, *(v87 + 54));
              if (v63 == 255)
              {
                goto LABEL_107;
              }

              if (v63 == 1)
              {
                return 11;
              }

              *(v87 + 55) = *(v96 + 2069);
              if (v105[0] != *v86 && v105[v52] != v86[v84])
              {
                goto LABEL_107;
              }

              *(v85 + 2150) = v54;
              *(v85 + 2152) = v84;
              v55 = PDSFcorbru(v87, v85, v105, v54, v86, v84, *(v85 + 2136), *(v85 + 2138), *(v85 + 2140), *(v85 + 2134));
              goto LABEL_93;
            case 6:
              if (v51 > v84 || *(v85 + 3456) > v51)
              {
                goto LABEL_107;
              }

              *(v87 + 55) = *(v96 + 2069);
              v54 = v51;
              v55 = SFanachk(v105, v51, v85 + 3199);
              goto LABEL_93;
            case 5:
              if (*(v85 + 3458) > v51 || *(v85 + 3460) < v51)
              {
                goto LABEL_107;
              }

              *(v87 + 55) = *(v96 + 2069);
              v54 = v51;
              v55 = SLwldcmp(v105, v51, v86, v84);
LABEL_93:
              v53 = v54;
              if (!v55)
              {
LABEL_94:
                v81 = 0;
                goto LABEL_107;
              }

              break;
            default:
              *(v87 + 55) = *(v96 + 2069);
              if (!v81)
              {
                goto LABEL_94;
              }

              break;
          }

          v64 = v87;
          if (!*(v87 + 55))
          {
            v16 = 0;
            v65 = 1;
            while ((*(v82 + 36) & v65) == 0)
            {
              v66 = v16;
              v65 *= 2;
              ++v16;
              if (v66 >= 0x1F)
              {
                v16 = 32;
                v64 = v87;
                goto LABEL_103;
              }
            }

            v64 = v87;
            *(v87 + 55) = v16 + 1;
          }

LABEL_103:
          v79 = v53;
          PDSFdc(v105, v53, v64, v85);
          *(v64 + 55) = *(*(*pMCPbuff + 8 * v80) + 2069);
          v67 = PDSFchkwrd(v64, v85, v105, v79, v89, v107);
          if (v67 == 10)
          {
            __strcpy_chk();
            v68 = *(*(v82 + 104) + 8 * *(v82 + 50));
            *(v68 + 71) = v89;
            *(v68 + 80) = v107[0];
            *(v68 + 88) = HIDWORD(v95);
            *(v68 + 92) = v95;
            *(v68 + 96) = HIDWORD(v94);
            *(v68 + 100) = v94;
            memcpy((v68 + 102), &__src, *(v96 + 2092));
            v69 = *(v82 + 50);
            v70 = *(*(v82 + 104) + 8 * v69);
            *(v70 + 70) = v100 >> 4;
            *(v70 + 66) = v80;
            *(v70 + 72) = *(v96 + 2069);
            *(v82 + 50) = v69 + 1;
            if (*(v82 + 48) == (v69 + 1))
            {
              return 5113;
            }

            v81 = 10;
          }

          else
          {
            v81 = v67;
          }

          goto LABEL_107;
        }

        if (!v88)
        {
          v56 = strlen(v105);
          if (v56 >= v84)
          {
            v57 = v84;
          }

          else
          {
            v57 = v56;
          }

          if (v57 >= 4)
          {
            v58 = 4;
          }

          else
          {
            v58 = v57;
          }

          if (SLstrncmp(v105, v86, v58) > 0)
          {
            return 11;
          }

          v43 = v38 & 0x10;
          if (v56 == v84)
          {
            v45 = *v86;
            if (v45 == v105[0] && ((v38 & 0x10) == 0 || *(v82 + 42) != 2))
            {
              v59 = v105;
              v44 = *v86;
              v60 = v86;
              LOBYTE(v42) = v98 >> 6;
              while (1)
              {
                if ((((v44 & 0x80) >> 2) ^ 0x20 | v44) == (((v45 & 0x80) >> 2) ^ 0x20 | v45))
                {
                  if (!v44)
                  {
                    goto LABEL_101;
                  }

                  ++v60;
                }

                else
                {
                  v61 = *(v96 + 2068);
                  if (v44 == v61)
                  {
                    ++v60;
                    goto LABEL_81;
                  }

                  if (v45 != v61)
                  {
LABEL_101:
                    v17 = v97;
                    goto LABEL_50;
                  }
                }

                ++v59;
LABEL_81:
                v44 = *v60;
                v45 = *v59;
              }
            }
          }

LABEL_107:
          v17 = v97;
          goto LABEL_108;
        }

        v17 = v97 + 1;
        if (*(v83 + 116) <= v97)
        {
          v44 = *v86;
          v45 = v105[0];
LABEL_50:
          if ((((v44 & 0x80) >> 2) ^ 0x20 | v44) == (((v45 & 0x80) >> 2) ^ 0x20 | v45) || v88)
          {
            v99 = v43 >> 4;
            v46 = *(*(v82 + 104) + 8 * *(v82 + 50));
            *(v46 + 71) = v42;
            *(v46 + 80) = v107[0];
            *(v46 + 88) = HIDWORD(v95);
            *(v46 + 92) = v95;
            *(v46 + 72) = *(v96 + 2069);
            __strcpy_chk();
            v47 = *(*(v82 + 104) + 8 * *(v82 + 50));
            *(v47 + 96) = HIDWORD(v94);
            *(v47 + 100) = v94;
            *(v47 + 102) = __src;
            *(v47 + 110) = v103;
            v48 = *(v82 + 50);
            v49 = *(*(v82 + 104) + 8 * v48);
            *(v49 + 70) = v99;
            *(v49 + 66) = v80;
            v50 = *(*pMCPbuff + 8 * v80);
            *(v49 + 68) = *(v50 + 2084);
            *(v49 + 74) = *(v50 + 2086);
            *(v82 + 50) = v48 + 1;
            if (v88)
            {
              ++*(v83 + 116);
            }

            if (*(v82 + 48) == (v48 + 1))
            {
              return 5113;
            }

            ++v78;
          }
        }

LABEL_108:
        v22 = v92;
        v23 = v93;
      }

      while (v91 > v19);
    }

    v9 = (v77 + 1);
    v6 = v85;
    *(v85 + 16) = v77 + 1;
    *(v83 + 116) = 0;
    if (v9 >= *(v87 + 48))
    {
      v71 = v78 == 0;
      goto LABEL_125;
    }

    if (SLSeek(*(v87 + 64), *(v87 + 12) + v74 * v9, 0) == 8)
    {
      return 11;
    }

    if (SLFRead(*(v87 + 64), v74, v13, &v101) || v101 != v74)
    {
      goto LABEL_116;
    }

    a4 = v76 - 1;
  }

  while (v76);
  v71 = *(v82 + 50) == 0;
LABEL_125:
  if (v71)
  {
    return 11;
  }

  else
  {
    return 10;
  }
}

uint64_t PDdel(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 2168);
  v3 = *(*(v2 + 32) + 2 * a2);
  v4 = (*(v2 + 40) + v3);
  v5 = v4[1] - *v4 + (*v4 << 8);
  v6 = v4[2];
  *(*(v2 + 48) + 20 * v5 + 18) = 0;
  v7 = v3 + v6;
  v8 = *(v2 + 24);
  v9 = v8 - (v3 + v6);
  if (v8 != v3 + v6)
  {
    v10 = v3;
    do
    {
      --v9;
      *(*(v2 + 40) + v10++) = *(*(v2 + 40) + v7++);
    }

    while (v9);
    LOWORD(v8) = *(v2 + 24);
  }

  *(v2 + 24) = v8 - v6;
  v11 = *(v2 + 4);
  if (*(v2 + 4))
  {
    v12 = 0;
    v13 = *(v2 + 32);
    do
    {
      v14 = *(v13 + 2 * v12);
      if (v14 <= 0xFFFD && v14 > v3)
      {
        *(v13 + 2 * v12) = v14 - v6;
        v11 = *(v2 + 4);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  return 0;
}

uint64_t PDedit(unsigned __int16 *a1, int a2)
{
  v29 = 0;
  v28 = 0;
  v3 = pMCPbuff;
  v4 = *a1;
  v5 = *(*(*pMCPbuff + 8 * v4) + 2168);
  *(a1 + 16) = 0;
  a1[34] = 0;
  *(a1 + 18) = 0;
  a1[44] = 0;
  *(a1 + 12) = 0;
  if (**(*(v3 + 40) + 8 * a1[1]) != a1[1] || *(*(v3 + 32) + 2 * a1[1]) != 9090)
  {
    result = 8;
    *(a1 + 16) = 8;
    v8 = 5104;
    goto LABEL_8;
  }

  if (PDcheckDID(v4) != 8)
  {
    if (*(*(*pMCPbuff + 8 * *a1) + 2062) == 1)
    {
      if (!a1[34] || *(a1 + 16) <= 7)
      {
        result = 8;
        *(a1 + 16) = 8;
        v8 = 5114;
        goto LABEL_8;
      }

      return 8;
    }

    if (strlen(*(a1 + 1)) - 129 <= 0xFFFFFF7F)
    {
      if (!a1[34] || *(a1 + 16) <= 7)
      {
        result = 8;
        *(a1 + 16) = 8;
        v8 = 5102;
        goto LABEL_8;
      }

      return 8;
    }

    v9 = malloc_type_malloc(0x81uLL, 0x1A34C84CuLL);
    __strcpy_chk();
    switch(a2)
    {
      case 9:
        if (PDdefragalt() == 8)
        {
          if (!a1[34] || *(a1 + 16) <= 7)
          {
            result = 8;
            *(a1 + 16) = 8;
            v8 = 5101;
            goto LABEL_8;
          }

          return 8;
        }

        break;
      case 3:
        v17 = SLLngToA(*(*(*pMCPbuff + 8 * *a1) + 2069));
        v18 = strlen(v9);
        SLrecap(v9, v18, *(a1 + 18), (a1 + 10), *(a1 + 18), v17);
        v19 = PDsearch(*(*pMCPbuff + 8 * *a1), v9, &v29, &v28, 3, 0, a1 + 25);
        if (v19 == 5112 || v19 == 8)
        {
          if (a1[34] && *(a1 + 16) > 7)
          {
            goto LABEL_37;
          }

          *(a1 + 16) = 8;
          v21 = 5112;
          goto LABEL_36;
        }

        v22 = PDdel(*(*pMCPbuff + 8 * *a1), v29);
        if (v22 == 8)
        {
          if (a1[34] && *(a1 + 16) > 7)
          {
            goto LABEL_37;
          }

          *(a1 + 16) = 8;
          v21 = 5101;
          goto LABEL_36;
        }

        v23 = *pMCPbuff;
        *(*(*(*(v23 + 8 * *a1) + 2168) + 32) + 2 * v29) = -2;
        v24 = *(v23 + 8 * *a1);
        v25 = *(v24 + 2168);
        v26 = *(v25 + 22) - 1;
        *(v25 + 22) = v26;
        --*(v24 + 2112);
        *(v25 + 20) = v26;
        *(v24 + 2104) = *(v25 + 12) - v26;
        v27 = *(v25 + 6) - *(v25 + 24);
        *(v24 + 2106) = v27;
        *(a1 + 62) = (100 * v27) / *(v5 + 6);
        *v25 = 1;
        break;
      case 2:
        v10 = a1[24];
        v11 = a1[24] != 0;
        v12 = *a1;
        v13 = *(*pMCPbuff + 8 * v12);
        **(v13 + 2168) = 1;
        v14 = PDadd(v13, v9, *(a1 + 17), v11, *(a1 + 5), v10, (a1 + 14), (a1 + 10), *(a1 + 18), v12, (a1 + 25));
        v15 = *(*pMCPbuff + 8 * *a1);
        *(a1 + 62) = (100 * *(v15 + 2106)) / *(v5 + 6);
        if (v14 > 5155)
        {
          switch(v14)
          {
            case 5156:
              ++*(v15 + 2112);
              if (a1[34] && *(a1 + 16) > 3)
              {
                goto LABEL_71;
              }

              *(a1 + 16) = 4;
              v16 = 5156;
              break;
            case 5157:
              ++*(v15 + 2112);
              if (a1[34] && *(a1 + 16) > 3)
              {
                goto LABEL_71;
              }

              *(a1 + 16) = 4;
              v16 = 5157;
              break;
            case 5158:
              ++*(v15 + 2112);
              if (a1[34] && *(a1 + 16) > 3)
              {
                goto LABEL_71;
              }

              *(a1 + 16) = 4;
              v16 = 5158;
              break;
            default:
LABEL_61:
              if (!a1[34] || *(a1 + 16) <= 7)
              {
                *(a1 + 16) = 8;
                a1[34] = v14;
              }

              goto LABEL_37;
          }

LABEL_70:
          a1[34] = v16;
          break;
        }

        if (v14)
        {
          if (v14 != 5107)
          {
            if (v14 == 5152)
            {
              ++*(v15 + 2112);
              if (a1[34] && *(a1 + 16) > 3)
              {
                break;
              }

              *(a1 + 16) = 4;
              v16 = 5152;
              goto LABEL_70;
            }

            goto LABEL_61;
          }

          if (a1[34] && *(a1 + 16) > 7)
          {
LABEL_37:
            free(v9);
            return 8;
          }

          *(a1 + 16) = 8;
          v21 = 5107;
LABEL_36:
          a1[34] = v21;
          goto LABEL_37;
        }

        ++*(v15 + 2112);
        break;
      default:
        if (!a1[34] || *(a1 + 16) <= 7)
        {
          result = 8;
          *(a1 + 16) = 8;
          v8 = 1100;
          goto LABEL_8;
        }

        return 8;
    }

LABEL_71:
    free(v9);
    return 0;
  }

  if (a1[34] && *(a1 + 16) > 7)
  {
    return 8;
  }

  result = 8;
  *(a1 + 16) = 8;
  v8 = 5105;
LABEL_8:
  a1[34] = v8;
  return result;
}

unsigned __int8 *PDatoi(unsigned __int8 *result, _WORD *a2)
{
  v2 = *result;
  if ((v2 - 48) > 9)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 1;
    do
    {
      if (v3++ != 0)
      {
        v4 *= 10;
      }

      v4 = v4 + v2 - 48;
      v7 = *v5++;
      LOBYTE(v2) = v7;
    }

    while ((v7 - 48) < 0xA);
  }

  *a2 = v4;
  return result;
}

unsigned __int8 *PDatobyte(unsigned __int8 *result, _BYTE *a2)
{
  v2 = *result;
  if ((v2 - 48) > 9)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 1;
    do
    {
      if (v3++ != 0)
      {
        v4 *= 10;
      }

      v4 = v2 + v4 - 48;
      v7 = *v5++;
      v2 = v7;
    }

    while ((v7 - 48) < 0xA);
  }

  *a2 = v4;
  return result;
}

uint64_t PDreadas(uint64_t a1)
{
  v103[1] = *MEMORY[0x1E69E9840];
  v103[0] = 0;
  v101 = 0;
  v100 = 0;
  v1 = *(a1 + 784);
  if ((v1 - 3) > 1)
  {
    return 8;
  }

  v3 = *(*pMCPbuff + 8 * *(a1 + 2074));
  v102 = 0;
  v4 = v1 != 4;
  if (*(a1 + 768))
  {
    LODWORD(v102) = *(a1 + 772);
  }

  else if (SLOpen(a1 + 256, a1, &v102, 0) == 8)
  {
    if (*(a1 + 2092) && *(a1 + 2088) > 7)
    {
      return 8;
    }

    result = 8;
    *(a1 + 2088) = 8;
    v6 = 1012;
LABEL_8:
    *(a1 + 2092) = v6;
    return result;
  }

  v7 = malloc_type_calloc(0x7D3uLL, 1uLL, 0x100004077774924uLL);
  if (!v7)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    goto LABEL_142;
  }

  v8 = v7;
  v9 = malloc_type_malloc(0x43uLL, 0x100004077774924uLL);
  if (!v9)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    v79 = v8;
    goto LABEL_141;
  }

  v10 = v9;
  v11 = malloc_type_malloc(0x43uLL, 0x100004077774924uLL);
  if (!v11 || (v94 = v3, v95 = v11, (v12 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL)) == 0))
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v8);
    v79 = v10;
    goto LABEL_141;
  }

  v13 = v12;
  v96 = malloc_type_malloc(0x803uLL, 0x100004077774924uLL);
  if (!v96)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v8);
    free(v10);
    free(v95);
    v79 = v13;
    goto LABEL_141;
  }

  v14 = malloc_type_calloc(0x19uLL, 1uLL, 0x100004077774924uLL);
  if (!v14)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v8);
    free(v10);
    free(v95);
    free(v13);
    v79 = v96;
LABEL_141:
    free(v79);
LABEL_142:
    v80 = pMCPbuff;
    goto LABEL_143;
  }

  v15 = v14;
  v16 = 0;
  v86 = 0;
  v99 = 0;
  v17 = 0;
  v87 = 0;
  v88 = v14;
  v92 = 0;
  v89 = 0;
  v84 = 0;
  v85 = v14 + 1;
  v97 = 1024;
  v98 = 0;
LABEL_16:
  v18 = *(a1 + 780);
  if (v18 >= 0x7D0)
  {
    v19 = 2000;
  }

  else
  {
    v19 = *(a1 + 780);
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 2000;
  }

  if (SLFRead(v102, v20, v8, &v102 + 1) == 8)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      LOWORD(v57) = 1010;
LABEL_205:
      *(a1 + 2092) = v57;
    }

    goto LABEL_206;
  }

  v21 = 0;
  v22 = v87;
  v23 = v17;
  v24 = v97;
LABEL_24:
  LODWORD(v87) = v22;
  v93 = v13;
  v97 = v24;
  while (1)
  {
    v25 = &v8[v21];
    v26 = *v25;
    v27 = v26 == 10 || v26 == 13;
    if (!v27)
    {
      break;
    }

    if (v16 > 0)
    {
      goto LABEL_39;
    }

    v28 = HIDWORD(v102);
    v29 = SWORD2(v102);
LABEL_108:
    if (v29 <= v21)
    {
      v70 = v21;
    }

    else
    {
      v68 = v21++;
      v69 = v16++;
      v13[v69] = v8[v68];
      v28 = HIDWORD(v102);
      v70 = v21;
      v29 = SWORD2(v102);
    }

    if (v29 <= v70)
    {
      if (v28 <= 1999)
      {
        v22 = 1;
        if (!v87)
        {
          goto LABEL_24;
        }
      }

      v17 = v23;
      if (v28 > 1999)
      {
        goto LABEL_16;
      }

      v76 = 0;
      v77 = v98;
      v78 = BYTE4(v98);
      goto LABEL_163;
    }

    if (v16 == 1 && ((v71 = *v13, v71 == 10) || v71 == 13))
    {
      v16 = 0;
      if (!v24)
      {
        v91 = v23;
        v16 = 0;
        v72 = 0;
        goto LABEL_123;
      }
    }

    else if (v16 == v24)
    {
      if (v24 == 2177)
      {
        v13[2177] = 13;
        v8[v21] = 13;
        LODWORD(v84) = 1;
        v24 = 2177;
        v16 = 2177;
        v22 = v87;
        goto LABEL_24;
      }

      v91 = v23;
      v72 = v24;
      v16 = v24;
LABEL_123:
      v73 = 2177 - v72;
      if (2177 - v72 >= 1024)
      {
        v73 = 1024;
      }

      v74 = (v73 + v72);
      v75 = malloc_type_realloc(v13, v74, 0x100004077774924uLL);
      if (v75)
      {
        v13 = v75;
        v22 = v87;
        v23 = v91;
        v24 = v74;
        goto LABEL_24;
      }

      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v6 = 1030;
        goto LABEL_8;
      }

      return 8;
    }
  }

  v28 = HIDWORD(v102);
  v29 = SWORD2(v102);
  if (SHIDWORD(v102) > 1999 || SWORD2(v102) != v21 || v16 <= 0)
  {
    goto LABEL_108;
  }

LABEL_39:
  v13[v16] = 0;
  if (!v4)
  {
    v44 = PDashead(v13, a1);
    if (v44)
    {
      if (v44 == 301)
      {
        HIDWORD(v84) = 1;
      }

      else if (v44 == 8)
      {
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          *(a1 + 2088) = 8;
          *(a1 + 2092) = 5115;
        }

        free(v8);
        free(v10);
        free(v95);
        free(v96);
        v83 = v13;
        goto LABEL_208;
      }

      v63 = HIDWORD(v87);
      if (v44 == 302)
      {
        v63 = 1;
      }

      HIDWORD(v87) = v63;
    }

LABEL_93:
    v64 = *v25;
    if (v64 == 13 || v64 == 10)
    {
      v66 = v25[1];
      if (v66 == 10 || v66 == 13)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }
    }

    else
    {
      v23 = 1;
    }

    v28 = HIDWORD(v102);
    v29 = SWORD2(v102);
    v16 = 0;
    if (v23 + v21 > SWORD2(v102))
    {
      v21 = WORD2(v102) + v23;
    }

    else
    {
      v21 += v23;
    }

    v4 = 1;
    v24 = v97;
    goto LABEL_108;
  }

  v90 = v23;
  if (*(a1 + 784) != 4)
  {
    if (strlen(v13) < 0x41uLL)
    {
      __strcpy_chk();
    }

    else
    {
      strncpy(v10, v13, 0x40uLL);
      v10[64] = 0;
    }

    goto LABEL_61;
  }

  v32 = PDasparse(v13, v10, &v100 + 1, &v100, v96, &v101, *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2092), v15);
  if (*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2092))
  {
    v33 = 12;
    v34 = v85;
    do
    {
      v35 = *(v34 - 1);
      v36 = v35 - 48;
      v37 = 16 * v35;
      if (v36 >= 0xA)
      {
        v37 -= 112;
      }

      v39 = *v34;
      v34 += 2;
      v38 = v39;
      if ((v39 - 48) >= 0xA)
      {
        v40 = -55;
      }

      else
      {
        v40 = -48;
      }

      *v15 = v37 + v38 + v40;
      v15 = (v15 + 1);
      --v33;
    }

    while (v33);
  }

  v41 = v89;
  v42 = v89 > 19;
  v43 = v92;
  if (v32 == 5153)
  {
    v43 = 1;
    v41 = v89 + 1;
  }

  else
  {
    v42 = v32 == 5101;
  }

  if (!v42)
  {
    v89 = v41;
    v92 = v43;
LABEL_61:
    v45 = strlen(v10);
    v46 = SLLngToA(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069));
    v47 = v95;
    if (SLchcnv(v10, v45, v95, 1, *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069)) == 8)
    {
      free(v8);
      free(v10);
      free(v95);
      free(v93);
      free(v96);
      return 5111;
    }

    v48 = PDhypstrip(v95, (v94 + 2076), *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2068));
    v49 = SLcap(v95, 0, v48 - 1, v103, v46);
    if (v48)
    {
      v50 = v48;
      v51 = v10;
      do
      {
        v52 = *v47++;
        *v51++ = ((*(v46 + 4 * v52) >> 25) & 0x20) + v52;
        --v50;
      }

      while (v50);
    }

    v10[v48] = 0;
    v53 = *(a1 + 2074);
    v54 = *(*pMCPbuff + 8 * v53);
    **(v54 + 2168) = 0;
    v15 = v88;
    v55 = PDadd(v54, v10, v100, SHIBYTE(v100), v96, v101, (v94 + 2076), v103, v49, v53, v88);
    v13 = v93;
    switch(v55)
    {
      case 5152:
        v55 = 0;
        v86 = 1;
        break;
      case 5107:
        if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
        {
          *(a1 + 2088) = 8;
          *(a1 + 2092) = 5107;
        }

        v76 = 1;
        v77 = v98;
        v78 = BYTE4(v98);
        LOBYTE(v17) = v90;
LABEL_163:
        v82 = *(*pMCPbuff + 8 * *(a1 + 2074));
        *(v82 + 2066) = v17;
        if (!*(v82 + 780))
        {
          SLClose(v102);
        }

        if (v84 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5109;
        }

        if (HIDWORD(v84) && (!*(a1 + 2092) || *(a1 + 2088) <= 7))
        {
          *(a1 + 2088) = 8;
          *(a1 + 2092) = 5115;
        }

        if (BYTE4(v87) && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5154;
        }

        if (v92 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5153;
        }

        if (v86 == 1 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5152;
        }

        if (v76 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5107;
        }

        if (v99 == 1 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5158;
        }

        if (v77 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5157;
        }

        if (v78 && (!*(a1 + 2092) || *(a1 + 2088) <= 3))
        {
          *(a1 + 2088) = 4;
          *(a1 + 2092) = 5156;
        }

        free(v8);
        free(v10);
        free(v95);
        free(v13);
        free(v96);
        free(v15);
        return 0;
      case 5158:
        v56 = 0;
        break;
      default:
        v56 = v55;
        break;
    }

    if (v56 == 5156)
    {
      v57 = 0;
    }

    else
    {
      v57 = v56;
    }

    if (v57)
    {
      v58 = v57 == 5157;
    }

    else
    {
      v58 = 1;
    }

    if (!v58)
    {
      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        *(a1 + 2088) = 8;
        goto LABEL_205;
      }

LABEL_206:
      free(v8);
      free(v10);
      free(v95);
      v81 = v13;
      goto LABEL_207;
    }

    v27 = v57 == 5157;
    v59 = v98;
    if (v27)
    {
      v59 = 1;
    }

    LODWORD(v98) = v59;
    if (v56 == 5156)
    {
      v60 = 1;
    }

    else
    {
      v60 = HIDWORD(v98);
    }

    v61 = v99;
    if (v55 == 5158)
    {
      v61 = 1;
    }

    HIDWORD(v98) = v60;
    v99 = v61;
    v62 = *(*pMCPbuff + 8 * *(a1 + 2074));
    ++*(v62 + 2112);
    goto LABEL_93;
  }

  if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
  {
    *(a1 + 2088) = 8;
    *(a1 + 2092) = 5101;
  }

  free(v8);
  free(v10);
  free(v95);
  v81 = v93;
LABEL_207:
  free(v81);
  v83 = v96;
LABEL_208:
  free(v83);
  v80 = pMCPbuff;
LABEL_143:
  if (!*(*(*v80 + 8 * *(a1 + 2074)) + 780))
  {
    SLClose(v102);
  }

  return 8;
}

uint64_t PDashead(char *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    v6 = strlen(a1);
    if (v6 < -1)
    {
      v7 = 8;
LABEL_94:
      free(v5);
      return v7;
    }

    v8 = 0;
    v54 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    LOWORD(v12) = -1;
    while (1)
    {
      v13 = v12;
      v12 = v8;
      if (v10 <= 0x18u)
      {
        if (((1 << v10) & 0xAAAAAA) != 0)
        {
          if (a1[v8] != 35)
          {
            goto LABEL_15;
          }

          ++v9;
          ++v10;
        }

        else
        {
          if (((1 << v10) & 0x1555554) == 0)
          {
            if (a1[v8] != 35)
            {
LABEL_96:
              free(v5);
              return 8;
            }

            ++v9;
            v11 = v13 + 2;
            v10 = 1;
            goto LABEL_89;
          }

          ++v10;
          v11 = v8;
        }
      }

      if (v10 >= 24)
      {
        free(v5);
        return 303;
      }

LABEL_15:
      if (v10 <= 0xBu)
      {
        if (v10 <= 5u)
        {
          if (v10 == 2)
          {
            if (SLstrncmp("#HEADER START", a1, 13))
            {
              goto LABEL_96;
            }

            v10 = 2;
          }

          else if (v10 == 4)
          {
            v21 = v54;
            if (a1[v11] < 0x32u)
            {
              v21 = 1;
            }

            v54 = v21;
            v10 = 4;
          }

          goto LABEL_89;
        }

        switch(v10)
        {
          case 6u:
            __strncpy_chk();
            LOBYTE(v27) = 0;
            v5[v12 - v11] = 0;
            v28 = *v5;
            if ((v28 - 48) <= 9)
            {
              v29 = 0;
              v27 = 0;
              v30 = v5 + 1;
              do
              {
                v18 = v29++ == 0;
                if (!v18)
                {
                  v27 *= 10;
                }

                v27 = v28 + v27 - 48;
                v31 = *v30++;
                v28 = v31;
              }

              while ((v31 - 48) < 0xA);
            }

            v20 = pMCPbuff;
            *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2069) = v27;
            break;
          case 8u:
            __strncpy_chk();
            LOBYTE(v22) = 0;
            v5[v12 - v11] = 0;
            v23 = *v5;
            if ((v23 - 48) <= 9)
            {
              v24 = 0;
              v22 = 0;
              v25 = v5 + 1;
              do
              {
                v18 = v24++ == 0;
                if (!v18)
                {
                  v22 *= 10;
                }

                v22 = v23 + v22 - 48;
                v26 = *v25++;
                v23 = v26;
              }

              while ((v26 - 48) < 0xA);
            }

            v20 = pMCPbuff;
            *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2084) = v22;
            break;
          case 0xAu:
            __strncpy_chk();
            LOBYTE(v14) = 0;
            v5[v12 - v11] = 0;
            v15 = *v5;
            if ((v15 - 48) <= 9)
            {
              v16 = 0;
              v14 = 0;
              v17 = v5 + 1;
              do
              {
                v18 = v16++ == 0;
                if (!v18)
                {
                  v14 *= 10;
                }

                v14 = v15 + v14 - 48;
                v19 = *v17++;
                v15 = v19;
              }

              while ((v19 - 48) < 0xA);
            }

            v20 = pMCPbuff;
            *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2085) = v14;
            break;
          default:
            goto LABEL_89;
        }

        if (v10 <= 0xFu)
        {
          if (v10 == 12)
          {
            goto LABEL_81;
          }

          if (v10 == 14)
          {
LABEL_74:
            __strncpy_chk();
            LOWORD(v42) = 0;
            v5[v12 - v11] = 0;
            v43 = *v5;
            if ((v43 - 48) <= 9)
            {
              v44 = 0;
              v42 = 0;
              v45 = v5 + 1;
              do
              {
                v18 = v44++ == 0;
                if (!v18)
                {
                  v42 *= 10;
                }

                v42 = v42 + v43 - 48;
                v46 = *v45++;
                LOBYTE(v43) = v46;
              }

              while ((v46 - 48) < 0xA);
            }

            *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2086) = v42;
          }
        }

        else
        {
          switch(v10)
          {
            case 0x10u:
              goto LABEL_60;
            case 0x12u:
LABEL_66:
              __strncpy_chk();
              LOBYTE(v37) = 0;
              v5[v12 - v11] = 0;
              v38 = *v5;
              if ((v38 - 48) <= 9)
              {
                v39 = 0;
                v37 = 0;
                v40 = v5 + 1;
                do
                {
                  v18 = v39++ == 0;
                  if (!v18)
                  {
                    v37 *= 10;
                  }

                  v37 = v38 + v37 - 48;
                  v41 = *v40++;
                  v38 = v41;
                }

                while ((v41 - 48) < 0xA);
              }

              *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2091) = v37;
              break;
            case 0x16u:
              goto LABEL_83;
          }
        }
      }

      else
      {
        if (v10 > 0x11u)
        {
          switch(v10)
          {
            case 0x12u:
              goto LABEL_66;
            case 0x16u:
              goto LABEL_83;
            case 0x17u:
              if (SLstrncmp("HEADER END#", &a1[v11], 11))
              {
                goto LABEL_96;
              }

              v10 = 23;
              break;
          }

          goto LABEL_89;
        }

        switch(v10)
        {
          case 0xCu:
            v20 = pMCPbuff;
LABEL_81:
            v47 = *(*v20 + 8 * *(a2 + 2074));
            *(v47 + 2068) = a1[v11];
            if (v54)
            {
              *(v47 + 2092) = 0;
LABEL_83:
              __strncpy_chk();
              LOBYTE(v48) = 0;
              v5[v12 - v11] = 0;
              v49 = *v5;
              if ((v49 - 48) <= 9)
              {
                v50 = 0;
                v48 = 0;
                v51 = v5 + 1;
                do
                {
                  v18 = v50++ == 0;
                  if (!v18)
                  {
                    v48 *= 10;
                  }

                  v48 = v49 + v48 - 48;
                  v52 = *v51++;
                  v49 = v52;
                }

                while ((v52 - 48) < 0xA);
              }

              *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2092) = v48;
              v10 = 22;
              break;
            }

            v54 = 0;
            v10 = 12;
            break;
          case 0xEu:
            goto LABEL_74;
          case 0x10u:
LABEL_60:
            __strncpy_chk();
            LOBYTE(v32) = 0;
            v5[v12 - v11] = 0;
            v33 = *v5;
            if ((v33 - 48) <= 9)
            {
              v34 = 0;
              v32 = 0;
              v35 = v5 + 1;
              do
              {
                v18 = v34++ == 0;
                if (!v18)
                {
                  v32 *= 10;
                }

                v32 = v33 + v32 - 48;
                v36 = *v35++;
                v33 = v36;
              }

              while ((v36 - 48) < 0xA);
            }

            *(*(*pMCPbuff + 8 * *(a2 + 2074)) + 2090) = v32;
            break;
        }
      }

LABEL_89:
      v8 = v12 + 1;
      if (v6 < v12)
      {
        v7 = 8 * (v9 < 24);
        goto LABEL_94;
      }
    }
  }

  if (*(a2 + 2092) && *(a2 + 2088) > 7)
  {
    return 8;
  }

  v7 = 8;
  *(a2 + 2088) = 8;
  *(a2 + 2092) = 1030;
  return v7;
}

uint64_t PDwriteas(uint64_t a1)
{
  if (*(a1 + 785) - 3 > 1)
  {
    return 8;
  }

  v77[11] = v1;
  v77[12] = v2;
  v4 = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168);
  v77[0] = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  if (*(a1 + 768))
  {
    v5 = *(a1 + 772);
    v76 = v5;
    if (SLSeek(v5, *(a1 + 776), 0) == 8)
    {
      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v7 = 1015;
LABEL_12:
        *(a1 + 2092) = v7;
        return result;
      }

      return 8;
    }
  }

  else if (SLOpen(a1 + 1042, a1 + 786, &v76, 0x602u) == 8)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v7 = 1012;
      goto LABEL_12;
    }

    return 8;
  }

  v8 = malloc_type_malloc(0x882uLL, 0x100004077774924uLL);
  if (!v8)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    goto LABEL_51;
  }

  v9 = v8;
  v10 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  if (!v10)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    v46 = v9;
    goto LABEL_50;
  }

  v11 = v10;
  v12 = malloc_type_malloc(0x44uLL, 0x100004077774924uLL);
  if (!v12)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v9);
    v46 = v11;
    goto LABEL_50;
  }

  v13 = v12;
  v14 = malloc_type_malloc(0x44uLL, 0x100004077774924uLL);
  if (!v14)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v9);
    free(v11);
    v46 = v13;
    goto LABEL_50;
  }

  v15 = v14;
  v16 = malloc_type_malloc(0x41uLL, 0x100004077774924uLL);
  if (!v16)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v9);
    free(v11);
    free(v13);
    v46 = v15;
    goto LABEL_50;
  }

  v17 = v16;
  v18 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  if (!v18)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v9);
    free(v11);
    free(v13);
    free(v15);
    v46 = v17;
    goto LABEL_50;
  }

  v19 = v18;
  __src = malloc_type_malloc(0x19uLL, 0x100004077774924uLL);
  if (!__src)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1030;
    }

    free(v9);
    free(v11);
    free(v13);
    free(v15);
    free(v17);
    v46 = v19;
LABEL_50:
    free(v46);
LABEL_51:
    if (!*(a1 + 768))
    {
      SLClose(v76);
    }

    return 8;
  }

  v64 = v19;
  v65 = v17;
  v66 = v13;
  v69 = v15;
  if (*(a1 + 785) == 4)
  {
    qmemcpy(v9, "#HEADER START#2#", 16);
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069), v11);
    strlen(v11);
    __strncpy_chk();
    v20 = strlen(v11);
    v21 = v20 + 17;
    v9[(v20 + 16)] = 35;
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2084), v11);
    v22 = strlen(v11);
    strncpy(&v9[v21], v11, v22);
    v23 = v21 + strlen(v11);
    v24 = v23 + 1;
    v9[v23] = 35;
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2085), v11);
    v25 = strlen(v11);
    strncpy(&v9[v24], v11, v25);
    v26 = strlen(v11);
    v9[(v24 + v26)] = 35;
    v27 = v24 + v26 + 2;
    v9[(v24 + v26 + 1)] = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2068);
    v28 = v24 + v26 + 3;
    v9[v27] = 35;
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2086), v11);
    v29 = strlen(v11);
    strncpy(&v9[v28], v11, v29);
    v30 = v28 + strlen(v11);
    v31 = v30 + 1;
    v9[v30] = 35;
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2090), v11);
    v32 = strlen(v11);
    strncpy(&v9[v31], v11, v32);
    v33 = v31 + strlen(v11);
    v34 = v33 + 1;
    v9[v33] = 35;
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2091), v11);
    v35 = strlen(v11);
    strncpy(&v9[v34], v11, v35);
    v36 = v34 + strlen(v11);
    v37 = v36 + 1;
    v9[v36] = 35;
    PDitoa(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2094), v11);
    v38 = strlen(v11);
    strncpy(&v9[v37], v11, v38);
    v39 = v37 + strlen(v11);
    v40 = v39 + 1;
    v9[v39] = 35;
    v41 = *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2092);
    PDitoa(v41, v11);
    v42 = strlen(v11);
    strncpy(&v9[v40], v11, v42);
    v43 = strlen(v11);
    v9[(v40 + v43)] = 35;
    v44 = &v9[(v40 + v43 + 1)];
    *(v44 + 7) = 591679045;
    *v44 = *"HEADER END#";
    v9[(v40 + v43 + 12)] = 13;
    v9[(v40 + v43 + 13)] = 10;
    if (SLFWrite(v76, (v40 + v43 + 14), v9, v77 + 1) == 8)
    {
      free(v9);
      free(v11);
      free(v66);
      free(v15);
      v45 = v17;
LABEL_73:
      free(v45);
      free(__src);
      free(v64);
      if (!*(a1 + 768))
      {
        SLClose(v76);
      }

      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v7 = 1011;
        goto LABEL_12;
      }

      return 8;
    }
  }

  else
  {
    v41 = 0;
  }

  __n = 2 * v41;
  *(*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168) + 18) = 0;
  v67 = v41;
  v68 = v15 - 3;
  v48 = v17;
  v47 = v66;
  while (1)
  {
    v49 = *(a1 + 785);
    if (v49 != 3)
    {
      break;
    }

    if (PDgetrdwrd(*(*pMCPbuff + 8 * *(a1 + 2074)), v48, &v72 + 1, &v73, v77, &v72, &v75, __src) == 8)
    {
      goto LABEL_78;
    }

    LODWORD(v51) = v72;
    v61 = strlen(v48);
    if (SLchcnv(v48, v61, v9, 0, *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069)) == 8)
    {
LABEL_81:
      free(v9);
      free(v11);
      free(v47);
      free(v15);
      free(v48);
      free(__src);
      free(v64);
      if (!*(a1 + 768))
      {
        SLClose(v76);
      }

      return 5111;
    }

    v62 = &v9[v51];
    *v62 = 13;
    v60 = v62 + 1;
LABEL_71:
    *v60 = 10;
    if (SLFWrite(v76, (v51 + 2), v9, v77 + 1) == 8)
    {
      free(v9);
      free(v11);
      free(v47);
      free(v15);
      v45 = v48;
      goto LABEL_73;
    }
  }

  if (v49 != 4)
  {
    return 8;
  }

  if (PDgetrdraw(*(*pMCPbuff + 8 * *(a1 + 2074)), v47, &v74) != 8)
  {
    *v9 = 35;
    __strncpy_chk();
    v68[v74] = 0;
    v50 = strlen(v15);
    if (SLchcnv(v15, v50, v48, 0, *(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2069)) == 8)
    {
      goto LABEL_81;
    }

    __strcpy_chk();
    v51 = v74;
    v52 = *v47;
    v53 = v47[1];
    v54 = v53 - v52 + (v52 << 8);
    v55 = *(*(v4 + 48) + 20 * v54 + 19);
    v9[(v74 - 2)] = 35;
    v9[(v51 - 1)] = v55 & 1 | 0x30;
    if (*(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2092))
    {
      v9[v51] = 35;
      if (v67)
      {
        v56 = 20 * v53 + 5100 * v52;
        v57 = v67;
        v58 = __src;
        do
        {
          snprintf(__str, 3uLL, "%02X", *(*(v4 + 48) + v56));
          *v58++ = *__str;
          ++v56;
          --v57;
        }

        while (v57);
      }

      memcpy(&v9[v51 + 1], __src, __n);
      LODWORD(v51) = v51 + 1 + __n;
      v48 = v65;
      v47 = v66;
    }

    if ((*(*(v4 + 48) + 20 * v54 + 19) & 2) != 0)
    {
      v59 = (v51 + 1);
      v9[v51] = 35;
      PDgetalt(v64, *(*(v4 + 48) + 20 * v54 + 16), *(*(v4 + 48) + 20 * v54 + 12), *(a1 + 2074));
      v51 = *(*(v4 + 48) + 20 * v54 + 16);
      strncpy(&v9[v59], v64, v51);
      LOWORD(v51) = v51 + v59;
    }

    v15 = v69;
    v9[v51] = 13;
    v60 = &v9[(v51 + 1)];
    goto LABEL_71;
  }

LABEL_78:
  if (!*(a1 + 768))
  {
    SLClose(v76);
  }

  free(v9);
  free(v11);
  free(v47);
  free(v15);
  free(v48);
  free(__src);
  free(v64);
  result = 0;
  **(*(*pMCPbuff + 8 * *(a1 + 2074)) + 2168) = 0;
  return result;
}

uint64_t PDfiletype(uint64_t a1)
{
  v2 = malloc_type_malloc(0x7D1uLL, 0x100004077774924uLL);
  if (!v2)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      result = 8;
      *(a1 + 2088) = 8;
      v6 = 1030;
      goto LABEL_10;
    }

    return 8;
  }

  v3 = v2;
  *v11 = 0;
  if (*(a1 + 768))
  {
    v11[1] = *(a1 + 772);
    v4 = v11[1];
    if (SLSeek(v11[1], *(a1 + 776), 0) == 8)
    {
LABEL_4:
      if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
      {
        result = 8;
        *(a1 + 2088) = 8;
        v6 = 1015;
LABEL_10:
        *(a1 + 2092) = v6;
        return result;
      }

      return 8;
    }
  }

  else
  {
    if (SLOpen(a1 + 256, a1, &v11[1], 0) == 8)
    {
      if (*(a1 + 2092) && *(a1 + 2088) > 7)
      {
        goto LABEL_16;
      }

      *(a1 + 2088) = 8;
      v7 = 1012;
      goto LABEL_15;
    }

    v4 = v11[1];
  }

  if (SLFRead(v4, 2000, v3, v11) == 8)
  {
    if (!*(a1 + 2092) || *(a1 + 2088) <= 7)
    {
      *(a1 + 2088) = 8;
      *(a1 + 2092) = 1010;
    }

    free(v3);
    if (!*(a1 + 768))
    {
      SLClose(v11[1]);
    }

    return 8;
  }

  if (*(a1 + 768))
  {
    if (SLSeek(v11[1], *(a1 + 776), 0) == 8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    SLClose(v11[1]);
  }

  if (SLstrncmp(v3, "#HEADER START", 13))
  {
    if (SLstrncmp(v3 + 414, "#HEADER COMP START", 18))
    {
      if (v11[0] < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *v3;
        if (*v3)
        {
          v9 = 0;
          do
          {
            v8 = ++v9;
          }

          while (v11[0] > v9 && v3[v9]);
        }
      }

      if (v8 < SLOWORD(v11[0]))
      {
        if (*(a1 + 2092) && *(a1 + 2088) > 7)
        {
          goto LABEL_16;
        }

        *(a1 + 2088) = 8;
        v7 = 5118;
LABEL_15:
        *(a1 + 2092) = v7;
LABEL_16:
        free(v3);
        return 8;
      }

      v10 = 3;
    }

    else
    {
      v10 = 5;
    }
  }

  else
  {
    v10 = 4;
  }

  *(a1 + 784) = v10;
  *(a1 + 785) = v10;
  free(v3);
  return 0;
}

uint64_t PDinit()
{
  pMCPbuff = malloc_type_calloc(1uLL, 0x30uLL, 0x90040FD959A3FuLL);
  if (pMCPbuff)
  {
    v0 = malloc_type_calloc(0x1AuLL, 8uLL, 0x10040436913F5uLL);
    *pMCPbuff = v0;
    if (v0)
    {
      v1 = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
      v2 = pMCPbuff;
      *(pMCPbuff + 8) = v1;
      if (v1)
      {
        *v1 = 0;
        v3 = malloc_type_calloc(0x1AuLL, 2uLL, 0x1000040BDFB0063uLL);
        v4 = pMCPbuff;
        *(pMCPbuff + 16) = v3;
        if (v3)
        {
          *v3 = 0;
          v5 = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
          v6 = pMCPbuff;
          *(pMCPbuff + 24) = v5;
          if (v5)
          {
            *v5 = 0;
            v7 = malloc_type_calloc(6uLL, 2uLL, 0x1000040BDFB0063uLL);
            v8 = pMCPbuff;
            *(pMCPbuff + 32) = v7;
            if (v7)
            {
              *v7 = 0;
              v9 = malloc_type_calloc(6uLL, 8uLL, 0x10040436913F5uLL);
              v10 = pMCPbuff;
              *(pMCPbuff + 40) = v9;
              if (v9)
              {
                result = 0;
                pdmcpsta = 1;
                return result;
              }

              free(v10);
              free(*pMCPbuff);
              free(*(pMCPbuff + 8));
              free(*(pMCPbuff + 16));
              free(*(pMCPbuff + 24));
              v12 = *(pMCPbuff + 40);
            }

            else
            {
              free(v8);
              free(*pMCPbuff);
              free(*(pMCPbuff + 8));
              free(*(pMCPbuff + 16));
              v12 = *(pMCPbuff + 24);
            }
          }

          else
          {
            free(v6);
            free(*pMCPbuff);
            free(*(pMCPbuff + 8));
            v12 = *(pMCPbuff + 16);
          }
        }

        else
        {
          free(v4);
          free(*pMCPbuff);
          v12 = *(pMCPbuff + 8);
        }
      }

      else
      {
        free(v2);
        v12 = *pMCPbuff;
      }
    }

    else
    {
      v12 = pMCPbuff;
    }

    free(v12);
  }

  return 1030;
}

void PDterm()
{
  free(*pMCPbuff);
  *pMCPbuff = 0;
  free(*(pMCPbuff + 8));
  v0 = pMCPbuff;
  *(pMCPbuff + 8) = 0;
  free(*(v0 + 16));
  v1 = pMCPbuff;
  *(pMCPbuff + 16) = 0;
  free(*(v1 + 24));
  v2 = pMCPbuff;
  *(pMCPbuff + 24) = 0;
  free(*(v2 + 32));
  v3 = pMCPbuff;
  *(pMCPbuff + 32) = 0;
  free(*(v3 + 40));
  free(pMCPbuff);
  pMCPbuff = 0;
  pdmcpsta = 0;
}

uint64_t baseLanguageForLanguage(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:a1];
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  v4 = [v2 rangeOfString:@"-"];
  if (!v5)
  {
    return v3;
  }

  return [v3 substringToIndex:v4];
}

uint64_t PDRDinit(uint64_t a1)
{
  v2 = *(a1 + 2064);
  if (v2)
  {
    if ((v2 - 96) < 0xFFA1u)
    {
      return 8;
    }
  }

  else
  {
    v2 = 10;
    *(a1 + 2064) = 10;
  }

  v3 = *(a1 + 2168);
  *(v3 + 8) = v2 << 10;
  v4 = (1869917735 * (v2 << 15)) >> 38;
  *(v3 + 2) = v4;
  v5 = 101376 * v2 / 0x93;
  if (v2 > 0x5Eu)
  {
    LOWORD(v5) = -36;
  }

  *(v3 + 6) = v5;
  if (v2 <= 6u)
  {
    v6 = (v4 >> 6) + 10;
  }

  else
  {
    v6 = 32;
  }

  *(v3 + 14) = v6;
  *(v3 + 4) = v4 >> 1;
  v7 = 2 * (v4 >> 3) + (v4 >> 3);
  *(a1 + 2116) = 3 * (v4 >> 3);
  *(v3 + 12) = 3 * (v4 >> 3);
  v8 = *(v3 + 6);
  v9 = malloc_type_calloc(1uLL, *(v3 + 2), 0xD94BA963uLL);
  *(v3 + 32) = v9;
  if (!v9)
  {
LABEL_21:
    free(v3);
    return 8;
  }

  v10 = malloc_type_calloc(1uLL, v8, 0x100004077774924uLL);
  *(v3 + 40) = v10;
  if (!v10)
  {
LABEL_20:
    free(*(v3 + 32));
    goto LABEL_21;
  }

  v11 = malloc_type_calloc(v7, 0x14uLL, 0x1000040A86A77D5uLL);
  *(v3 + 48) = v11;
  if (!v11)
  {
    free(*(v3 + 40));
    *(v3 + 40) = 0;
    goto LABEL_20;
  }

  *(v3 + 56) = *(a1 + 2116);
  *(v3 + 58) = 0;
  v12 = *(v3 + 4);
  v13 = 0x8000;
  do
  {
    v14 = v13;
    v15 = v13;
    v13 >>= 1;
  }

  while ((v15 & v12) == 0);
  *(v3 + 16) = 2 * v14 - 1;
  if (v12)
  {
    v16 = 0;
    v17 = *(v3 + 32);
    do
    {
      *(v17 + 2 * v16++) = -1;
    }

    while (v16 < *(v3 + 4));
  }

  result = 0;
  *(v3 + 22) = 0;
  *(a1 + 2104) = *(v3 + 12);
  v19 = *(v3 + 6);
  *(a1 + 2106) = v19;
  *(a1 + 2108) = v19;
  return result;
}

_WORD *CalculateSize(_WORD *result, _WORD *a2, __int16 *a3, _WORD *a4, _WORD *a5, int a6)
{
  *result = 32 * a6 / 0x93u;
  v6 = 99 * a6 / 0x93u;
  if (v6 > 0xFFDCu)
  {
    LOWORD(v6) = -36;
  }

  *a2 = v6;
  if (*result <= 0x5BFu)
  {
    v7 = (*result >> 6) + 10;
  }

  else
  {
    v7 = 32;
  }

  *a3 = v7;
  v8 = *result;
  *a4 = *result >> 1;
  *a5 = 3 * (v8 >> 3);
  return result;
}

uint64_t InitializeMask(uint64_t result)
{
  v1 = 0x8000;
  do
  {
    v2 = v1;
    v3 = v1;
    v1 >>= 1;
  }

  while ((v3 & *(result + 4)) == 0);
  *(result + 16) = 2 * v2 - 1;
  return result;
}

uint64_t PDgetrdwrd(uint64_t a1, char *__dst, _BYTE *a3, _BYTE *a4, _DWORD *a5, _BYTE *a6, _WORD *a7, uint64_t a8)
{
  v8 = *(a1 + 2168);
  if (*(v8 + 20) >= *(a1 + 2112))
  {
    return 8;
  }

  v16 = *(v8 + 32);
  v17 = *(v8 + 18);
  v18 = *(v16 + 2 * v17);
  if (v18 >= 0xFFFE)
  {
    do
    {
      LODWORD(v17) = v17 + 1;
      *(v8 + 18) = v17;
      v18 = *(v16 + 2 * v17);
    }

    while (v18 > 0xFFFD);
  }

  if (*(*(v8 + 40) + v18 + 2) >= 0x40u)
  {
    v19 = 64;
  }

  else
  {
    v19 = *(*(v8 + 40) + v18 + 2);
  }

  *a6 = v19;
  strncpy(__dst, (*(v8 + 40) + v18 + 3), v19);
  __dst[*a6] = 0;
  v20 = *(*(v8 + 40) + v18 + 1) - *(*(v8 + 40) + v18) + (*(*(v8 + 40) + v18) << 8);
  *a3 = *(*(v8 + 48) + 20 * v20 + 19) & 1;
  v21 = *(*(v8 + 48) + 20 * v20 + 19);
  *a4 = v21 & 2;
  v22 = *(v8 + 48);
  if ((v21 & 2) != 0)
  {
    v26 = v22 + 20 * v20;
    v23 = *(v26 + 12);
    v24 = *(v26 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  result = 0;
  *a5 = v23;
  *a7 = v24;
  v27 = (v22 + 20 * v20);
  v28 = *v27;
  *(a8 + 8) = *(v27 + 2);
  *a8 = v28;
  ++*(v8 + 18);
  ++*(v8 + 20);
  return result;
}

uint64_t PDgetrdraw(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a1 + 2168);
  if (*(v3 + 20) >= *(a1 + 2112))
  {
    return 8;
  }

  v4 = *(v3 + 32);
  v5 = *(v3 + 18);
  v6 = *(v4 + 2 * v5);
  if (v6 >= 0xFFFE)
  {
    do
    {
      LODWORD(v5) = v5 + 1;
      *(v3 + 18) = v5;
      v6 = *(v4 + 2 * v5);
    }

    while (v6 > 0xFFFD);
  }

  v7 = 0;
  *a3 = *(*(v3 + 40) + v6 + 2) + 3;
  do
  {
    *(a2 + v7) = *(*(v3 + 40) + *(*(v3 + 32) + 2 * *(v3 + 18)) + v7);
    ++v7;
  }

  while (*a3 >= v7);
  result = 0;
  ++*(v3 + 18);
  ++*(v3 + 20);
  return result;
}

uint64_t PDcmp(unsigned __int8 *a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  while (2)
  {
    v4 = *a2;
    v5 = ~(v4 >> 2) & 0x20;
    while (1)
    {
      v6 = *a1;
      v7 = v6;
      v8 = ~(v6 >> 2) & 0x20 | v6;
      if (v8 == (v5 | (((*(a4 + 4 * v4) >> 25) & 0x20) + v4)))
      {
        break;
      }

      if (a3 != v7)
      {
        if (v4 == a3)
        {
          goto LABEL_8;
        }

        return v8 - (v5 | v4);
      }

      ++a1;
    }

    if (v7)
    {
      ++a1;
LABEL_8:
      ++a2;
      continue;
    }

    return 0;
  }
}

uint64_t PDcapcmp(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  while (2)
  {
    v3 = *a1;
    while (1)
    {
      v4 = *a2;
      v5 = (v3 - v4);
      if (v3 == v4)
      {
        break;
      }

      if (v3 == a3)
      {
        goto LABEL_8;
      }

      if (v4 != a3)
      {
        return v5;
      }

      ++a2;
    }

    if (*a1)
    {
      ++a2;
LABEL_8:
      ++a1;
      continue;
    }

    return 0;
  }
}

uint64_t PDsearch(uint64_t a1, char *__s, _WORD *a3, __int16 *a4, int a5, uint64_t a6, const void *a7)
{
  v64 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 2168);
  v12 = *(v11 + 14);
  v61 = 0;
  v62 = 0;
  v13 = *(a1 + 2128);
  v14 = strlen(__s);
  v15 = SLLngToA(*(a1 + 2069));
  v16 = v15;
  if (v14)
  {
    v17 = v14;
    v18 = v13;
    v19 = __s;
    do
    {
      v20 = *v19++;
      *v18++ = ((*(v15 + 4 * v20) >> 25) & 0x20) + v20;
      --v17;
    }

    while (v17);
  }

  v59 = __s;
  *(v13 + v14) = 0;
  SLfun(v13, 0, (v14 - 1), &v61 + 1, &v61);
  v21 = 0;
  v22 = *(v11 + 4);
  if (v22 > (v61 & *(v11 + 16)))
  {
    v22 = 0;
  }

  v23 = (v61 & *(v11 + 16)) - v22;
  v24 = BYTE2(v61);
  v25 = 3 - BYTE2(v61);
  *a4 = -1;
  v58 = a3;
  *a3 = -1;
  *(a1 + 2110) = 0;
  *(a1 + 2114) = -1;
  v26 = 2 * v24;
  while (v12)
  {
    v25 += v26;
    v27 = *(v11 + 16) & (v23 + v25);
    LOWORD(v61) = v27;
    v28 = *(v11 + 4);
    if (v28 <= v27)
    {
      v27 -= v28;
      LOWORD(v61) = v27;
    }

    if (v23 == v27)
    {
      if (v23)
      {
        v27 = v23 - 1;
      }

      else
      {
        v27 = 1;
      }

      LOWORD(v61) = v27;
    }

    --v12;
    v29 = *(*(v11 + 32) + 2 * v23);
    if (v29 < 0xFFFE)
    {
      v55 = v21;
      v30 = (*(v11 + 40) + v29);
      v31 = v30[2];
      v54 = v30[1] - *v30 + (*v30 << 8);
      __strncpy_chk();
      v63[v31] = 0;
      v32 = PDhypstrip(v63, &v62, *(a1 + 2068));
      v33 = *(a1 + 2068);
      if (a5 == 3)
      {
        v34 = v63;
        v35 = v59;
        v21 = v55;
        while (2)
        {
          v36 = *v35;
          while (1)
          {
            v37 = *v34;
            if (v36 == v37)
            {
              break;
            }

            if (v36 == v33)
            {
              goto LABEL_29;
            }

            if (v37 != v33)
            {
              goto LABEL_48;
            }

            ++v34;
          }

          if (*v35)
          {
            ++v34;
LABEL_29:
            ++v35;
            continue;
          }

          break;
        }

        if (!*(a1 + 2092))
        {
          result = 0;
LABEL_53:
          *v58 = v23;
          return result;
        }

        result = memcmp((*(v11 + 48) + 20 * v54), a7, *(a1 + 2092));
        if (!result)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v53 = v32;
        v21 = v55;
        if (!PDcmp(v59, v63, v33, v16))
        {
          v21 = v55 + 1;
          *v58 = v23;
          if (a5 != 2)
          {
            if (a5 != 1)
            {
              break;
            }

            v38 = *(a6 + 42);
            if (v38 == 1)
            {
              v39 = v53;
              if ((*(*(v11 + 48) + 20 * v54 + 19) & 1) == 0)
              {
                goto LABEL_48;
              }
            }

            else
            {
              v39 = v53;
              if (v38 == 2 && (*(*(v11 + 48) + 20 * v54 + 19) & 1) != 0)
              {
                goto LABEL_48;
              }
            }

            *(*(*(a6 + 104) + 8 * *(a6 + 50)) + 71) = SLcap(v63, 0, (v39 - 1), (*(*(a6 + 104) + 8 * *(a6 + 50)) + 80), v16);
            if (v53)
            {
              v40 = v53;
              v41 = v63;
              v42 = v13;
              do
              {
                v43 = *v41++;
                *v42++ = ((*(v16 + 4 * v43) >> 25) & 0x20) + v43;
                --v40;
              }

              while (v40);
            }

            *(v13 + v53) = 0;
            *(*(*(a6 + 104) + 8 * *(a6 + 50)) + 88) = v62;
            __strcpy_chk();
            v44 = *(v11 + 48);
            v45 = (v44 + 20 * v54);
            v46 = *(v45 + 19);
            v47 = *(*(a6 + 104) + 8 * *(a6 + 50));
            *(v47 + 70) = v46 & 1;
            if ((v46 & 2) != 0)
            {
              *(v47 + 96) = *(v45 + 3);
              v48 = *(v44 + 20 * v54 + 16);
            }

            else
            {
              v48 = 0;
              *(v47 + 96) = 0;
            }

            *(v47 + 100) = v48;
            *(v47 + 66) = *(a1 + 2162);
            *(v47 + 72) = *(a1 + 2069);
            v49 = *v45;
            *(v47 + 110) = *(v45 + 2);
            *(v47 + 102) = v49;
            v50 = *(a6 + 50);
            v51 = *(*(a6 + 104) + 8 * v50);
            *(v51 + 68) = *(a1 + 2084);
            *(v51 + 74) = *(a1 + 2086);
            *(a6 + 50) = v50 + 1;
            if (*(a6 + 48) == (v50 + 1))
            {
              return 5113;
            }
          }
        }
      }

LABEL_48:
      v23 = v61;
    }

    else
    {
      if (*a4 == -1)
      {
        *a4 = v23;
      }

      v23 = v27;
      if (v29 == 0xFFFF)
      {
        break;
      }
    }
  }

  if (v21)
  {
    return 0;
  }

  else
  {
    return 5112;
  }
}

uint64_t PDSFcorrec(char *__src, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v75 = *(a4 + 42);
  if (*(a4 + 40) > v75)
  {
    return 0;
  }

  v6 = a2;
  v7 = *(*(a4 + 32) + 24);
  v8 = strcpy(v7, __src);
  v9 = strlen(v8);
  *(a4 + 2152) = v9;
  v10 = *(a4 + 40);
  v11 = *(a3 + 136);
  if (*(a4 + 2148) == 255)
  {
    *(a4 + 2149) = v11;
    *(a4 + 3164) = 0;
  }

  v82 = 0;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 >= 2;
  }

  v13 = !v12;
  v14 = *(a4 + 2148);
  if (v14 == v11)
  {
    LOWORD(v15) = v10;
    goto LABEL_12;
  }

  v69 = v11;
  v78 = 0;
  v79 = a4 + 2164;
  __s = v7 + 2;
  v80 = a4 + 120;
  v64 = v10;
  v65 = v6 & 0xFFFFFFFD;
  v66 = v13 ^ 1;
  v67 = v6;
  v17 = v10;
  LOWORD(v15) = v10;
  while (2)
  {
    if (*(a4 + 2149) == v14)
    {
      LOWORD(v10) = v17;
      break;
    }

    *(a4 + 2148) = v14 + 1;
    *(a4 + 2124) = 0;
    v18 = (*(a3 + 128) + (v14 + 1));
    *(a4 + 2144) = *v18;
    v19 = &v18[v69];
    v20 = *v19;
    *(a4 + 2146) = v20;
    v21 = &v19[v69];
    *(a4 + 2136) = *v21;
    v22 = &v21[v69];
    *(a4 + 2138) = *v22;
    v23 = &v22[v69];
    *(a4 + 2140) = *v23;
    v24 = &v23[v69];
    *(a4 + 2142) = *v24;
    v25 = &v24[v69];
    *(a4 + 2134) = *v25;
    v26 = &v25[v69];
    *(a4 + 2154) = *v26;
    v27 = &v26[v69];
    *(a4 + 2156) = *v27;
    v28 = &v27[v69];
    *(a4 + 2158) = *v28;
    v29 = &v28[v69];
    *(a4 + 2160) = *v29;
    v73 = v20;
    v74 = v29[v69];
    v72 = v17;
    if ((v14 + 1) == 2)
    {
      v76 = v9;
      if (*(a3 + 104) && v9 >= 1)
      {
        v30 = 0;
        v31 = 0;
        v71 = v9;
        LOWORD(v9) = *(a4 + 2162);
        do
        {
          v32 = 0;
          do
          {
            if (SLstrncmp(*(*(a3 + 160) + 8 * ((v9 + v32) >> 1)), &v7[v30], *(*(a3 + 176) + ((v9 + v32) >> 1))) >= 0)
            {
              LODWORD(v9) = (v9 + v32) >> 1;
            }

            else
            {
              v32 = (v9 + v32) >> 1;
            }
          }

          while (v9 - v32 > 1);
          LOWORD(v33) = v9 - (*(a4 + 2162) == v9);
          v34 = *(*(a3 + 160) + 8 * v33);
          do
          {
            if (!SLstrncmp(v34, &v7[v30], *(*(a3 + 176) + v33)) && v31 <= 999)
            {
              v35 = (v79 + v31);
              *v35 = v76 - v30;
              v31 += 2;
              v35[1] = v33;
            }

            v33 = (v33 + 1);
            LODWORD(v9) = *(a4 + 2162);
            if (v33 >= v9)
            {
              break;
            }

            v34 = *(*(a3 + 160) + 8 * v33);
          }

          while (*v34 <= v7[v30]);
          ++v30;
        }

        while (v30 != v71);
      }

      else
      {
        v31 = 0;
      }

      *(v79 + v31) = -1;
      *(v79 + (v31 + 1)) = -1;
      v9 = v76;
      v20 = v73;
    }

    do
    {
      if (*(a3 + 55) != 1)
      {
        goto LABEL_49;
      }

      if (*(a4 + 3504))
      {
        if ((v9 & 0x8000) == 0)
        {
          v36 = v9 + 1;
          v37 = &__s[v9];
          do
          {
            *v37 = *(v37 - 2);
            --v37;
            --v36;
          }

          while (v36);
        }

        *v7 = 25966;
        v9 = strlen(v7);
        v38 = 0;
        goto LABEL_42;
      }

      if (*v7 == 110 && v7[1] == 101 && v9 >= 3)
      {
        v9 = (v9 - 2);
        v60 = strlen(__s);
        memmove(v7, __s, v60 + 1);
        v38 = 1;
LABEL_42:
        *(a4 + 3504) = v38;
      }

LABEL_49:
      v40 = v9;
      if (*(a4 + 40))
      {
        v41 = 1;
      }

      else
      {
        v41 = v40 <= 8;
      }

      if (v41 && *(a4 + 2140) == 2)
      {
        *(a4 + 2140) = 1;
      }

      v42 = *(a4 + 2148);
      if (v42 == 14 && *(a4 + 2140) == 1)
      {
        *(a4 + 2140) = 0;
      }

      v43 = *(a3 + 55);
      if (v43 != 5 && v43 != 16)
      {
        v48 = *(a4 + 2146);
        if (v48 == 1)
        {
          v49 = 3;
          goto LABEL_94;
        }

        if (v48 != 8 && *(a4 + 2134))
        {
          if (v42 < 12)
          {
            v49 = 1;
LABEL_94:
            *(a4 + 2134) = v49;
            goto LABEL_64;
          }

          if (v42 <= 0xD)
          {
            v49 = 2;
            goto LABEL_94;
          }
        }
      }

LABEL_64:
      v45 = v74 == 0;
      v46 = v20 == 8;
      if (v40 <= 4)
      {
        v46 = 0;
      }

      if (v40 >= 4)
      {
        v45 = 0;
      }

      v47 = (v9 - 7) < 0xFFFBu && v20 == 7;
      v77 = v9;
      if (v47 || v46 || v45)
      {
        goto LABEL_115;
      }

      *(a4 + 112) = "";
      if (v20 <= 4)
      {
        if (v20 > 2)
        {
          if (v20 != 3)
          {
            goto LABEL_97;
          }

          PDSFcor3qd(v7, a3, a4);
          goto LABEL_100;
        }

        if (v20 == 1)
        {
          PDSFcor1qd(v7, a3, a4);
          goto LABEL_100;
        }

        if (v20 != 2)
        {
LABEL_100:
          *(v80 + 4 * *(a4 + 2124)) = 0;
          v50 = *(a4 + 2124);
          if (v50 >= 1)
          {
            v51 = 0;
            while (1)
            {
              v52 = (v80 + 4 * v51);
              v53 = *v52;
              if (SLstrncmp(*(a4 + 112), v52, 4) <= 0)
              {
                *(a4 + 112) = v52;
                v81 = v53;
                v54 = *(a3 + 54);
                if (v54 >= 5)
                {
                  v55 = 4;
                  do
                  {
                    *(&v81 + v55++) = 0;
                  }

                  while (v54 > v55);
                }

                v56 = SFbisrch(&v81, 0, v54 - 1, &v82, a3);
                v57 = *(a3 + 54);
                if (v57 >= 5)
                {
                  v58 = 4;
                  do
                  {
                    *(&v81 + v58++) = -1;
                  }

                  while (v57 > v58);
                  v59 = SFbisrch(&v81, 0, v57 - 1, &v82, a3);
                  v82 += v59 - v56;
                }

                if (*(a4 + 3194) == 1)
                {
                  v78 = PDdecod2(v7, v40, v56, v82, a3, a4);
                }

                if (v78 == 8)
                {
                  return 0;
                }

                if (*(a4 + 40) == v75)
                {
                  goto LABEL_115;
                }
              }

              if (++v51 == v50)
              {
                goto LABEL_115;
              }
            }
          }

          goto LABEL_115;
        }

        goto LABEL_92;
      }

      if (v20 > 6)
      {
        if (v20 != 7)
        {
          if (v20 == 8)
          {
            PDSFcor8qd(v7, a3, a4);
          }

          goto LABEL_100;
        }

LABEL_92:
        PDSFcor2qd(v7, a3, a4);
        goto LABEL_100;
      }

      if (v20 != 5)
      {
        PDSFcor6qd(v7, a3, a4);
        goto LABEL_100;
      }

      if (*(a4 + 3194) == 1)
      {
LABEL_97:
        if ((v43 - 1) >= 2)
        {
          PDSFaccent(v7, v9, a3, a4);
        }

        goto LABEL_115;
      }

      if (PDSFcorrig(v7, a3, a4) == 10)
      {
        goto LABEL_141;
      }

LABEL_115:
      v9 = v77;
      v20 = v73;
    }

    while (*(a4 + 3504));
    v15 = *(a4 + 40);
    if (v67 != 2 || v15 == v75)
    {
      v10 = *(a4 + 40);
      if (v15 > v72)
      {
        PDSFcorsrt(__src, v72, (v15 - 1), a3, a4);
        LOWORD(v15) = *(a4 + 40);
        v10 = v15;
      }
    }

    else
    {
      v10 = v72;
    }

    if (v15 == v75)
    {
      return 0;
    }

    v61 = v66;
    if (v15 < 1)
    {
      v61 = 1;
    }

    if ((v61 & 1) == 0)
    {
      v62 = *(a4 + 2148);
      if (v62 <= 4)
      {
        v63 = 8;
      }

      else
      {
        v63 = v62 + 4;
      }

      *(a4 + 2149) = v63;
      goto LABEL_135;
    }

    if (v67 != 2)
    {
LABEL_135:
      if (!*(a4 + 3164) && v64 < v15)
      {
LABEL_141:
        result = 1;
        *(a4 + 3164) = 1;
        return result;
      }
    }

    if (v65 == 1)
    {
      return 1;
    }

    v14 = *(a4 + 2148);
    v17 = v10;
    if (v14 != v69)
    {
      continue;
    }

    break;
  }

LABEL_12:
  if (v10 < v15)
  {
    PDSFcorsrt(__src, v10, (v15 - 1), a3, a4);
  }

  return 0;
}

uint64_t PDSFchkwrd(uint64_t a1, uint64_t a2, char *__src, int a4, unsigned int a5, uint64_t a6)
{
  v6 = a5;
  v7 = __src;
  v10 = *(a2 + 104);
  v11 = *(a2 + 32);
  v12 = v11[7];
  v13 = *(a1 + 56);
  __dst = v11[6];
  v14 = v11[5];
  v15 = *(a2 + 3184);
  if (!*(a2 + 2))
  {
    if (*(a1 + 55) == 2 && *(a2 + 3482) == 64 && **(a2 + 3488))
    {
      __src[a4 - **(a2 + 3488)] = -95;
    }

    v24 = *(a2 + 18);
    if ((v24 & 0x40) != 0 && !*(a2 + 3464))
    {
      return 11;
    }

    v25 = *(a1 + 55);
    if (v25 == 5 && (**(a2 + 3488) & 0x30) != 0)
    {
      v26 = *(a2 + 3482);
      if ((v26 & 0x30) != 0 && ((**(a2 + 3488) & 0x10) == 0 && (v26 & 0x10) != 0 || (**(a2 + 3488) & 0x20) == 0 && (v26 & 0x20) != 0))
      {
        return 11;
      }
    }

    if ((v24 & 1) != 0 || (a5 & 0xFFFFFFFB) == 0 && (v24 & 0x20) != 0)
    {
      return 11;
    }

    if (v25 == 1 && *(a2 + 3504))
    {
      if (!**(a2 + 3488))
      {
        return 11;
      }

      v57 = v13;
      v27 = *(*(a2 + 32) + 32);
      strcpy(v27, "ne");
      v28 = v12;
      v29 = a6;
      v30 = a4;
      strcpy(v27 + 2, __src);
      a6 = v29;
      v12 = v28;
      LOWORD(a4) = v30 + 2;
      v7 = v27;
      v13 = v57;
    }
  }

  v60 = a4;
  if (*(a2 + 3176) && *(a2 + 3198))
  {
    v16 = v12;
    v17 = a6;
    strcpy(*(v15 + 8), v7);
    *(v15 + 17) = *(a2 + 88);
    *(v15 + 20) = *(a2 + 92);
    *(v15 + 24) = *(a2 + 96);
    *(v15 + 2) = *(a2 + 3196);
    *v15 = 0;
    *(v15 + 42) = 1;
    v18 = 1 << (*(a1 + 55) - 1);
    if (!*(a1 + 55))
    {
      LODWORD(v18) = -1;
    }

    *(v15 + 36) = v18;
    PDword(v15, 1, 1);
    LOWORD(a4) = v60;
    a6 = v17;
    v12 = v16;
    v19 = *(v15 + 50);
    if (*(v15 + 50))
    {
      *(a2 + 100) = v19;
      if (v19 >= 1)
      {
        v20 = *(v15 + 104);
        while (*(*v20 + 71) != v6 || !*(*v20 + 70))
        {
          v20 += 8;
          if (!--v19)
          {
            goto LABEL_12;
          }
        }

        return 11;
      }
    }
  }

LABEL_12:
  if (!*(a2 + 2))
  {
    if (!v10)
    {
      v56 = v12;
      v58 = v13;
      v35 = (a2 + 88);
      if (v6 || *(a2 + 88) != 3)
      {
        v40 = a6;
        strcpy(v14, v7);
        v39 = v60;
        v38 = v40;
        goto LABEL_63;
      }

      v34 = a6;
      v36 = 0;
      goto LABEL_49;
    }

    if (!*(v10 + 34) && !*(v10 + 44) || (*(a2 + 3484) & 0x200) != 0 || (v31 = v12, v32 = a6, PDSFcltcmp(a1, a2) == 10) && (v33 = PDSFcltscr(v7, v60, a1, v10), a6 = v32, v12 = v31, v33 == 10))
    {
      v34 = a6;
      v56 = v12;
      v58 = v13;
      v35 = (a2 + 88);
      if (v6 || *(a2 + 88) != 3)
      {
        strcpy(v14, v7);
        v38 = v34;
        v39 = v60;
LABEL_56:
        if (*v10 && (*(v10 + 34) || *(v10 + 44)))
        {
          if (v6 == 4)
          {
            v41 = 0;
          }

          else
          {
            v41 = v6;
          }

          v42 = *(v10 + 76);
          v43 = v39;
          v38 = v10 + 80;
LABEL_67:
          SLrecap(v14, v43, v41, v38, v42, v58);
          v44 = *(a1 + 55);
          switch(v44)
          {
            case 5:
              goto LABEL_70;
            case 15:
              if (*v35 == 2 || (*(a2 + 3482) & 0x40) != 0 && (*(a2 + 92) & 0x80000000) != 0)
              {
                PDSFremacc(v14, v58, 15);
              }

              v45 = v60 - 1;
              if (v7[v45] == 253 && *v35 == 2)
              {
                v14[v45] = -81;
              }

              break;
            case 8:
LABEL_70:
              if ((*(a2 + 3482) & 0x40) != 0)
              {
                PDSFremacc(v14, v58, v44);
              }

              break;
          }

          if (v10 && (*(a2 + 3484) & 0x200) == 0)
          {
            if (*(v10 + 34))
            {
              v46 = __dst;
              v47 = strcpy(__dst, (v10 + 34));
              v48 = strlen(v47);
              v49 = *(v10 + 16);
              if (v49 == 4)
              {
                v50 = 0;
              }

              else
              {
                v50 = *(v10 + 16);
              }

              v51 = v58;
              SLrecap(__dst, v48, v50, 0, v49, v58);
              strcat(__dst, v14);
            }

            else
            {
              v46 = __dst;
              strcpy(__dst, v14);
              v51 = v58;
            }

            if (*(v10 + 44))
            {
              v52 = strcpy(v56, (v10 + 44));
              v53 = strlen(v52);
              v54 = *(v10 + 17);
              if (v54 == 4)
              {
                v55 = 0;
              }

              else
              {
                v55 = *(v10 + 17);
              }

              SLrecap(v56, v53, v55, 0, v54, v51);
              strcat(v46, v56);
            }

            strcpy(v14, v46);
          }

          v23 = strlen(v14);
          v22 = v14;
          goto LABEL_94;
        }

LABEL_63:
        if (v6 == 4)
        {
          v41 = 0;
        }

        else
        {
          v41 = v6;
        }

        v42 = *v35;
        v43 = v39;
        goto LABEL_67;
      }

      v36 = strlen((v10 + 34));
LABEL_49:
      if ((*(a2 + 92 + 4 * (v36 >> 5)) >> ~v36))
      {
        if ((*(a2 + 92 + 4 * ((v36 + 1) >> 5)) >> ~(v36 + 1)))
        {
          v6 = 1;
        }
      }

      else
      {
        v6 = 0;
      }

      strcpy(v14, v7);
      v38 = v34;
      v39 = v60;
      if (!v10)
      {
        goto LABEL_63;
      }

      goto LABEL_56;
    }

    return 11;
  }

  v21 = a4;
  if (v6)
  {
    SLrecap(v7, a4, v6, a6, v6, v13);
  }

  v22 = v7;
  v23 = v21;
LABEL_94:

  return SFadd1(v22, v23, a2, 1);
}

uint64_t PDSFwild(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 68) < a2)
  {
    return 8;
  }

  v45 = v4;
  v46 = v5;
  v11 = *(a3 + 54);
  v12 = *(a3 + 1192);
  if (*a4 != 5)
  {
    *a4 = 5;
  }

  v44 = 0;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = a1;
    while (1)
    {
      v16 = *v15;
      if (v11 - 1 == v13 && v12 == 2)
      {
        break;
      }

      if (v12 != 2 || (v16 - 129) >= 0x1F)
      {
        goto LABEL_18;
      }

      if (v16 != 129)
      {
        goto LABEL_24;
      }

      v18 = v15[1];
      if (v18 == 72)
      {
        v26 = v14 + 1;
        *(*(*(a4 + 32) + 24) + v14) = 1;
        v14 += 2;
        *(*(*(a4 + 32) + 24) + v26) = 1;
LABEL_35:
        v21 = *v15;
        v22 = v21 - 129;
        if (v21 >= 0xF0)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v21 >= 0xE0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        if (v22 < 0x1F)
        {
          v24 = 2;
        }

        goto LABEL_45;
      }

      if (v18 != 150)
      {
        v16 = 129;
LABEL_24:
        if (a2 <= v14)
        {
          if (v12 == 2 && ((v16 - 129) < 0x1F || (v16 & 0xF0) == 0xE0))
          {
            v25 = v14 + 1;
            *(*(*(a4 + 32) + 24) + v14) = 32;
            v14 += 2;
            *(*(*(a4 + 32) + 24) + v25) = 32;
            goto LABEL_35;
          }

          LOBYTE(v16) = 32;
        }

        else if (v12 == 2 && ((v16 - 129) < 0x1F || (v16 & 0xF0) == 0xE0))
        {
          v19 = v14;
          *(*(*(a4 + 32) + 24) + v14) = v16;
          v14 += 2;
          *(*(*(a4 + 32) + 24) + v19 + 1) = v15[1];
          goto LABEL_35;
        }

LABEL_33:
        v20 = v14++;
        *(*(*(a4 + 32) + 24) + v20) = v16;
        goto LABEL_34;
      }

LABEL_22:
      while (v11 > v14)
      {
        *(*(*(a4 + 32) + 24) + v14++) = 1;
      }

LABEL_34:
      if (v12 == 2)
      {
        goto LABEL_35;
      }

      v24 = 1;
LABEL_45:
      v15 += v24;
      v13 = v14;
      if (v14 >= v11)
      {
        goto LABEL_49;
      }
    }

    v17 = -1;
    if ((v16 - 129) < 0x1F || (v16 & 0xF0) == 0xE0)
    {
      goto LABEL_50;
    }

LABEL_18:
    if (v16 != 42)
    {
      if (v16 != 63)
      {
        goto LABEL_24;
      }

      LOBYTE(v16) = 1;
      goto LABEL_33;
    }

    goto LABEL_22;
  }

LABEL_49:
  v17 = 0;
LABEL_50:
  v27 = SFbisrch(*(*(a4 + 32) + 24), 0, v17 + v11 - 1, &v44, a3);
  if (v11 <= a2)
  {
    v28 = v11;
  }

  else
  {
    v28 = a2;
  }

  if (v28 >= 1)
  {
    v29 = 0;
    v30 = a1;
    while (1)
    {
      v31 = *v30;
      if (v28 - 1 == v29 && v12 == 2)
      {
        break;
      }

      if (v12 == 2)
      {
        if ((v31 - 129) < 0x1F)
        {
          if (v31 != 129)
          {
            goto LABEL_68;
          }

          v32 = v30[1];
          if (v32 == 72)
          {
            v33 = v29;
            v34 = -1;
            *(*(*(a4 + 32) + 24) + v29) = -1;
            goto LABEL_71;
          }

          if (v32 != 150)
          {
            LOBYTE(v31) = -127;
LABEL_70:
            v33 = v29;
            *(*(*(a4 + 32) + 24) + v29) = v31;
            v34 = v30[1];
LABEL_71:
            v29 += 2;
            *(*(*(a4 + 32) + 24) + v33 + 1) = v34;
LABEL_77:
            v36 = *v30;
            v37 = v36 - 129;
            if (v36 >= 0xF0)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
            }

            if (v36 >= 0xE0)
            {
              v39 = v38;
            }

            else
            {
              v39 = 1;
            }

            if (v37 < 0x1F)
            {
              v39 = 2;
            }

            goto LABEL_87;
          }

          goto LABEL_90;
        }

        goto LABEL_66;
      }

      if (v31 != 42)
      {
        if (v31 == 63)
        {
LABEL_74:
          LOBYTE(v31) = -1;
        }

LABEL_75:
        v35 = v29++;
        *(*(*(a4 + 32) + 24) + v35) = v31;
        goto LABEL_76;
      }

LABEL_90:
      while (v11 > v29)
      {
        *(*(*(a4 + 32) + 24) + v29++) = -1;
      }

LABEL_76:
      if (v12 == 2)
      {
        goto LABEL_77;
      }

      v39 = 1;
LABEL_87:
      v30 += v39;
      if (v29 >= v28)
      {
        goto LABEL_96;
      }
    }

    if ((v31 - 129) < 0x1F || (v31 & 0xF0) == 0xE0)
    {
      goto LABEL_96;
    }

LABEL_66:
    if (v31 == 63)
    {
      goto LABEL_74;
    }

    if ((v31 & 0xF0) == 0xE0 || v31 != 42)
    {
LABEL_68:
      if ((v31 - 129) < 0x1F || (v31 & 0xF0) == 0xE0)
      {
        goto LABEL_70;
      }

      goto LABEL_75;
    }

    goto LABEL_90;
  }

  v29 = 0;
LABEL_96:
  while (v11 > v29)
  {
    *(*(*(a4 + 32) + 24) + v29++) = 32;
  }

  v40 = *(*(a4 + 32) + 24);
  v41 = v11 - 1;
  if (*(v40 + v11 - 1) == 255)
  {
    *(v40 + v41) = -2;
    v40 = *(*(a4 + 32) + 24);
  }

  v42 = SFbisrch(v40, 0, v41, &v44, a3);
  v43 = v42 - v27 + v44;
  v44 = v43;
  *(a4 + 40) = 0;
  *(a4 + 44) = 0;
  if (*(a4 + 3194) != 1)
  {
    return 11;
  }

  PDdecod2(a1, a2, v27, v43, a3, a4);
  if (*(a4 + 40))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

uint64_t PDSFanagrm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 68) < a2)
  {
    return 8;
  }

  v23 = v4;
  v24 = v5;
  *(a3 + 3423) = 0u;
  *(a3 + 3439) = 0u;
  *(a3 + 3391) = 0u;
  *(a3 + 3407) = 0u;
  *(a3 + 3359) = 0u;
  *(a3 + 3375) = 0u;
  *(a3 + 3327) = 0u;
  *(a3 + 3343) = 0u;
  *(a3 + 3295) = 0u;
  *(a3 + 3311) = 0u;
  *(a3 + 3263) = 0u;
  *(a3 + 3279) = 0u;
  *(a3 + 3231) = 0u;
  *(a3 + 3247) = 0u;
  *(a3 + 3199) = 0u;
  *(a3 + 3215) = 0u;
  if (a2 < 1)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = *a1;
  v13 = *a1;
  do
  {
    v14 = a1[v11];
    if (v14 < v13)
    {
      v13 = a1[v11];
    }

    if (v14 > v12)
    {
      v12 = a1[v11];
    }

    ++*(a3 + 3199 + v14);
    ++v11;
  }

  while (a2 != v11);
  if (a2 > 24)
  {
    v22 = 0;
    **(*(a3 + 32) + 24) = v13;
    v15 = *(a4 + 54);
    if (v15 >= 2)
    {
      v16 = 1;
      do
      {
        *(*(*(a3 + 32) + 24) + v16++) = 0;
        v15 = *(a4 + 54);
      }

      while (v15 > v16);
    }

    v17 = SFbisrch(*(*(a3 + 32) + 24), 0, v15 - 1, &v22, a4);
    **(*(a3 + 32) + 24) = v12;
    v18 = *(a4 + 54);
    if (v18 >= 2)
    {
      v19 = 1;
      do
      {
        *(*(*(a3 + 32) + 24) + v19++) = -1;
        v18 = *(a4 + 54);
      }

      while (v18 > v19);
    }

    v20 = SFbisrch(*(*(a3 + 32) + 24), 0, v18 - 1, &v22, a4);
    v21 = v20 - v17 + v22;
    v22 = v21;
    *(a3 + 40) = 0;
    *(a3 + 44) = 0;
    if (*(a3 + 3194) == 1)
    {
      PDdecod2(a1, a2, v17, v21, a4, a3);
    }
  }

  else
  {
LABEL_11:
    PDSFanaqua(a1, a2, a3, a4);
  }

  if (*(a3 + 40))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

uint64_t PDSFmemory(void **a1, int a2, int a3)
{
  if (a3)
  {
    result = malloc_type_calloc(1uLL, 0x40uLL, 0x1004098A284A9uLL);
    *a1 = result;
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = malloc_type_calloc(8uLL, a2, 0xDF1F52EuLL);
    if (v7)
    {
      *v6 = v7;
      v6[1] = &v7[a2];
      v8 = &v7[a2 + a2];
      v6[4] = v8;
      v6[5] = &v8[a2];
      v9 = &v8[a2 + a2];
      v6[6] = v9;
      v6[7] = &v9[a2];
      v10 = &v9[a2 + a2];
      v6[2] = &v10[a2];
      v6[3] = v10;
      return 1;
    }

    free(*a1);
    result = 0;
    *a1 = 0;
  }

  else
  {
    v11 = *a1;
    if (*a1)
    {
      if (*v11)
      {
        free(*v11);
      }

      free(v11);
      *a1 = 0;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t PDSFdc(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 55);
  v8 = SLLngToA(*(a3 + 55));
  if (a2 > 64)
  {
    return 0;
  }

  v9 = v8;
  v10 = **(a4 + 72);
  __strcpy_chk();
  if (v10)
  {
    SLrecap(v19, a2, v10, *(a4 + 80), v10, v9);
  }

  v18 = 0;
  *v17 = 0;
  *(a4 + 18) = 0;
  if (v7)
  {
    v11 = 1 << (v7 - 1);
  }

  else
  {
    LODWORD(v11) = -1;
  }

  if ((v11 & 0x8000) != 0)
  {
    PDDCengan(v19, v10, v9, v17);
    v17[1] = 0;
    **(a4 + 3488) = atoi(v17);
    return 0;
  }

  if ((v11 & 0x994) != 0)
  {
    PDDCposclt(v7, v19, a2, v17);
    if ((v11 & 0x814) == 0 || v17[0] != 49)
    {
      goto LABEL_26;
    }

    PDDCposcls(v7, v19, a2, v9, v17);
    v17[1] = 0;
    v12 = atoi(v17);
    if ((v11 & 0x94) != 0)
    {
      v13 = *(a4 + 104);
      v14 = 16 * (*(v13 + 62) | v12 & 7);
    }

    else
    {
      if ((v11 & 0x800) == 0)
      {
LABEL_26:
        if ((v11 & 0x114) != 0)
        {
          PDDCpreclt(v19, v9, v17);
          PDDCprecls(v7, v17);
          *(*(a4 + 104) + 62) |= atoi(v17) & 0xF;
        }

        if ((v11 & 0x80) != 0)
        {
          PDDCposacc(v19, a2, v9, v17);
          *(*(a4 + 104) + 62) |= atoi(v17) & 0xF;
        }

        PDSFcltdb(a3, a4);
        return 0;
      }

      v13 = *(a4 + 104);
      v14 = *(v13 + 62) | v12 & 7;
    }

    *(v13 + 62) = v14;
    goto LABEL_26;
  }

  if ((v11 & 0x11660) != 0 && *(a4 + 100) >= 1)
  {
    v15 = 0;
    do
    {
      PDDCrmcc(v7, *(*(a4 + 72) + v15), v17);
      if (v17[0] == 49)
      {
        *(*(a4 + 3512) + 2 * v15) |= 8u;
      }

      *(*(a4 + 3520) + v15) = 0;
      *(*(a4 + 3528) + v15) = 0;
      if ((v11 & 0x1060) != 0)
      {
        *(*(a4 + 3528) + v15) |= PDDCdblend(v7, v19, v9, a2) & 3;
      }

      ++v15;
    }

    while (v15 < *(a4 + 100));
  }

  return 0;
}

uint64_t PDSFcorqbr(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, __int16 a9, __int16 a10)
{
  if (a4 < 1)
  {
    return 10;
  }

  v14 = a1;
  if (a6 < 1)
  {
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    LOWORD(v15) = 0;
    while (*(a3 + v15) == *(a5 + v15))
    {
      v15 = (v15 + 1);
      v16 = v15 < a6;
      v17 = v15 < a4;
      if (v15 >= a4 || v15 >= a6)
      {
        goto LABEL_11;
      }
    }

    v17 = 1;
    v16 = 1;
  }

LABEL_11:
  v19 = a1[7];
  v20 = v15;
  v21 = (a3 + v15);
  v22 = *v21;
  if (v22 == 32)
  {
    if (a6 == v15)
    {
      return 10;
    }
  }

  else if (!v17)
  {
    return 10;
  }

  if (!a7)
  {
    return 11;
  }

  v23 = a10;
  v24 = a9;
  v25 = v15;
  if (v17 && v16)
  {
    if (a8 && (*(v19 + 4 * *v21) & 0x10000000) != 0 && (v26 = a5 + v15, (*(v19 + 4 * *(a5 + v20)) & 0x10000000) != 0))
    {
      v113 = v19;
      v118 = v20;
      v127 = v25;
      v104 = a7;
      v102 = a8;
      v32 = a2;
      v33 = v14;
      v34 = v21;
      v35 = *v21;
      v36 = PDSFcorqbr(v14, a2, (v21 + 1), (~v20 + a4), v26 + 1, (~v20 + a6), (a7 - 1), (a8 - 1), 0, a10);
      a7 = v104;
      v24 = a9;
      v22 = v35;
      v21 = v34;
      v23 = a10;
      v25 = v127;
      v14 = v33;
      a2 = v32;
      a8 = v102;
      v88 = v36 == 10;
      v19 = v113;
      v20 = v118;
      if (v88)
      {
        return 10;
      }
    }

    else if (a9)
    {
      v27 = (~v25 + a4);
      if (v27 < 1)
      {
        return 10;
      }

      v28 = v21 + 1;
      v29 = (~v25 + a6);
      if (v29 < 1)
      {
        LOWORD(v30) = 0;
      }

      else
      {
        LOWORD(v30) = 0;
        while (v28[v30] == *(a5 + v20 + 1 + v30))
        {
          v30 = (v30 + 1);
          v31 = v30 < v27;
          if (v30 >= v27 || v30 >= v29)
          {
            goto LABEL_33;
          }
        }
      }

      v31 = 1;
LABEL_33:
      if (v28[v30] == 32)
      {
        if (v30 == v29)
        {
          return 10;
        }
      }

      else if (!v31)
      {
        return 10;
      }
    }
  }

  v37 = v20 + 1;
  v38 = *(a5 + v20 + 1);
  if (v22 == v38 && *(a3 + v37) == *(a5 + v20))
  {
    v95 = v23;
    v114 = v19;
    v119 = v20;
    v123 = v23;
    v128 = v25;
    v105 = v22;
    v109 = v24;
    v100 = v14;
    v103 = a2;
    v39 = a7;
    v40 = a8;
    v99 = v21;
    v41 = PDSFcorqbr(v14, a2, (v21 + 2), (a4 - v20 - 2), a5 + v20 + 2, (a6 - v25 - 2), a7, a8, v24, v95);
    v22 = v105;
    v24 = v109;
    v21 = v99;
    v14 = v100;
    a7 = v39;
    v23 = v123;
    v25 = v128;
    a2 = v103;
    a8 = v40;
    v88 = v41 == 10;
    v19 = v114;
    v20 = v119;
    if (v88)
    {
      return 10;
    }
  }

  if (v22 == *(a5 + v20 + 2) && *(a3 + v37) == v38 && a6 >= 3 && a4 >= 3 && *(a3 + v20 + 2) == *(a5 + v20))
  {
    v96 = v23;
    v115 = v19;
    v120 = v20;
    v124 = v23;
    v129 = v25;
    v106 = v22;
    v110 = v24;
    v42 = a2;
    v43 = a7;
    v44 = a8;
    v101 = v14;
    v45 = v21;
    v46 = PDSFcorqbr(v14, a2, (v21 + 3), (a4 - v20 - 3), a5 + v20 + 3, (a6 - v25 - 3), a7, a8, v24, v96);
    v22 = v106;
    v24 = v110;
    v21 = v45;
    a7 = v43;
    v23 = v124;
    v25 = v129;
    v14 = v101;
    a2 = v42;
    a8 = v44;
    v88 = v46 == 10;
    v19 = v115;
    v20 = v120;
    if (v88)
    {
      return 10;
    }
  }

  if (v17)
  {
    if ((v25 || *(a2 + 2150) > a4) && v22 == *(v21 - 1))
    {
      v97 = v23;
      v116 = v19;
      v121 = v20;
      v125 = v23;
      v130 = v25;
      v107 = v22;
      v111 = v24;
      v47 = a2;
      v48 = a7;
      v49 = a8;
      v50 = v14;
      v51 = v21;
      v52 = PDSFcorqbr(v14, a2, (v21 + 1), (~v20 + a4), a5 + v20, (a6 - v25), a7, a8, 0, v97);
      v22 = v107;
      v24 = v111;
      v19 = v116;
      v21 = v51;
      a7 = v48;
    }

    else
    {
      if (!a8 || (*(v19 + 4 * v22) & 0x10000000) == 0)
      {
        if (v24)
        {
          v53 = (~v20 + a4);
          if (v53 < 1)
          {
            return 10;
          }

          v54 = v21 + 1;
          v55 = (a6 - v25);
          if (v55 < 1)
          {
            LOWORD(v56) = 0;
          }

          else
          {
            LOWORD(v56) = 0;
            while (v54[v56] == *(a5 + v20 + v56))
            {
              v56 = (v56 + 1);
              v57 = v56 < v53;
              if (v56 >= v53 || v56 >= v55)
              {
                goto LABEL_111;
              }
            }
          }

          v57 = 1;
LABEL_111:
          if (v54[v56] == 32)
          {
            if (v56 == v55)
            {
              return 10;
            }
          }

          else if (!v57)
          {
            return 10;
          }
        }

        goto LABEL_63;
      }

      v98 = v23;
      v117 = v19;
      v121 = v20;
      v125 = v23;
      v130 = v25;
      v108 = a7;
      v112 = v24;
      v49 = a8;
      v47 = a2;
      v50 = v14;
      v58 = v21;
      v59 = v22;
      v52 = PDSFcorqbr(v14, a2, (v21 + 1), (~v20 + a4), a5 + v20, (a6 - v25), (a7 - 1), (a8 - 1), 0, v98);
      a7 = v108;
      v24 = v112;
      v19 = v117;
      v22 = v59;
      v21 = v58;
    }

    v23 = v125;
    v25 = v130;
    v14 = v50;
    a2 = v47;
    a8 = v49;
    v88 = v52 == 10;
    v20 = v121;
    if (v88)
    {
      return 10;
    }
  }

LABEL_63:
  if (!v16)
  {
    goto LABEL_80;
  }

  if ((v20 || *(a2 + 2152) > a6) && *(a5 + v20) == *(a5 + v20 - 1))
  {
    HIWORD(v94) = v23;
    LOWORD(v94) = 0;
    v60 = (a4 - v25);
    v61 = (~v20 + a6);
    v62 = a5 + v20 + 1;
    v63 = a8;
    v64 = (a8 - 1);
    v65 = v14;
    v66 = a2;
    v67 = v25;
    v68 = v21;
    v69 = a7;
    goto LABEL_79;
  }

  if (a8 && (*(v19 + 4 * *(a5 + v20)) & 0x10000000) != 0)
  {
    HIWORD(v94) = v23;
    LOWORD(v94) = 0;
    v60 = (a4 - v25);
    v61 = (~v20 + a6);
    v62 = a5 + v20 + 1;
    v69 = a7;
    a7 = (a7 - 1);
    v63 = a8;
    v64 = (a8 - 1);
    v65 = v14;
    v66 = a2;
    v67 = v25;
    v68 = v21;
LABEL_79:
    v75 = v14;
    result = PDSFcorqbr(v65, a2, v68, v60, v62, v61, a7, v64, v94, SHIWORD(v94));
    LOWORD(a7) = v69;
    v25 = v67;
    v14 = v75;
    a2 = v66;
    a8 = v63;
    if (result == 10)
    {
      return result;
    }

    goto LABEL_80;
  }

  if (!v24)
  {
    goto LABEL_80;
  }

  v70 = (a4 - v25);
  if (v70 >= 1)
  {
    v71 = (~v20 + a6);
    if (v71 < 1)
    {
      LOWORD(v72) = 0;
    }

    else
    {
      LOWORD(v72) = 0;
      while (1)
      {
        v22 = v21[v72];
        if (v22 != *(a5 + v20 + 1 + v72))
        {
          break;
        }

        v73 = v72 + 1;
        v72 = (v72 + 1);
        v74 = v72 < v70;
        if (v72 >= v70 || v72 >= v71)
        {
          v22 = v21[v73];
          goto LABEL_118;
        }
      }
    }

    v74 = 1;
LABEL_118:
    if (v22 == 32)
    {
      if (v72 == v71)
      {
        return 10;
      }

      goto LABEL_80;
    }

    if (v74)
    {
LABEL_80:
      if (!v23)
      {
        return 11;
      }

      v76 = *(a2 + 2164);
      if (v76 == 255)
      {
        return 11;
      }

      v77 = 0;
      v78 = a2 + 2164;
      v122 = v14 + 23;
      v126 = v23 - 1;
      v131 = (a7 - 1);
      while (1)
      {
        v79 = a6 - v76;
        if (v79 < 0)
        {
          goto LABEL_107;
        }

        if (v79 > v25)
        {
          goto LABEL_107;
        }

        v80 = *(v78 + v77 + 1);
        v81 = *(v14[19] + 8 * v80);
        v82 = (a3 + v79);
        if (*v81 != *v82)
        {
          goto LABEL_107;
        }

        v83 = *(v14[21] + v80);
        v84 = (a4 - v79);
        if (v84 >= v83)
        {
          v84 = *(v14[21] + v80);
        }

        if (v84 == 2)
        {
          goto LABEL_94;
        }

        if (v84 == 3)
        {
          goto LABEL_93;
        }

        if (v84 == 4)
        {
          break;
        }

LABEL_95:
        v85 = v76;
        v86 = *(v14[22] + v80);
        if (*(a2 + 2) || (v86 + v79 == a6 ? (v87 = 1) : (v87 = 2), *(a2 + 2152) == a6 ? (v88 = a6 == v85) : (v88 = 0), !v88 ? (v89 = v87) : (v89 = 4), (v89 & *(v122 + v80 - 1)) != 0))
        {
          v90 = v25;
          v91 = a2;
          v92 = a8;
          v93 = v14;
          result = PDSFcorqbr(v14, a2, a3 + v79 + v83, (a4 - v79 - v83), a5 + v79 + v86, v85 - v86, v131, a8, 0, v126);
          v25 = v90;
          v14 = v93;
          a2 = v91;
          a8 = v92;
          if (result == 10)
          {
            return result;
          }
        }

LABEL_107:
        v77 += 2;
        v76 = *(v78 + v77);
        result = 11;
        if (v76 == 255)
        {
          return result;
        }
      }

      if (v81[3] != v82[3])
      {
        goto LABEL_107;
      }

LABEL_93:
      if (v81[2] != v82[2])
      {
        goto LABEL_107;
      }

LABEL_94:
      if (v81[1] != v82[1])
      {
        goto LABEL_107;
      }

      goto LABEL_95;
    }
  }

  return 10;
}

uint64_t PDSFcorrig(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 138))
  {
    return 11;
  }

  v6 = 0;
  v7 = *(a2 + 144);
  while (1)
  {
    v8 = (v7 + v6);
    v9 = SLstrcmp(a1, v8);
    v10 = strlen(v8);
    if (!v9)
    {
      break;
    }

    v11 = v6 + v10 + 1;
    v7 = *(a2 + 144);
    v12 = strlen((v7 + (v6 + v10 + 1)));
    v6 = v12 + v11 + 1;
    if (*(a2 + 138) <= (v12 + v11 + 1))
    {
      return 11;
    }
  }

  v14 = &v8[v10];
  v15 = strlen(&v8[v10 + 1]);

  return SFadd1(v14 + 1, v15, a3, 1);
}

unsigned __int8 *PDDCengan(unsigned __int8 *result, unsigned int a2, uint64_t a3, _WORD *a4)
{
  v4 = *result;
  v5 = result[1];
  qmemcpy(v12, "AEIOaeio", sizeof(v12));
  *a4 = 12336;
  if (a2 <= 3 && a2 != 2)
  {
    LODWORD(v4) = ((*(a3 + 4 * v4) >> 25) & 0x20) + v4;
    if ((*(a3 + 4 * v4) & 0x10000000) != 0 && (v4 != 101 || (((*(a3 + 4 * v5) >> 25) & 0x20) + v5) != 117))
    {
      v6 = 0;
      while (*(&v12[1] + v6) != v4)
      {
        if (++v6 == 4)
        {
          v7 = 50;
          goto LABEL_12;
        }
      }

      v7 = 49;
LABEL_12:
      *a4 = v7;
    }
  }

  if (a2 == 2)
  {
    for (i = 0; i != 13; ++i)
    {
      if (aBcdgjkpqtvwyzf[i] == v4)
      {
        v11 = 48;
        goto LABEL_27;
      }
    }

    for (j = 0; j != 4; ++j)
    {
      if (*(v12 + j) == v4)
      {
        v11 = 49;
        goto LABEL_27;
      }
    }

    v10 = 0;
    while (aBcdgjkpqtvwyzf[v10 + 13] != v4)
    {
      if (++v10 == 9)
      {
        return result;
      }
    }

    v11 = 50;
LABEL_27:
    *a4 = v11;
  }

  return result;
}

uint64_t PDDCposclt(int a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  result = memcpy(__dst, "arei", sizeof(__dst));
  v15 = 0x72646E736F696561;
  v9 = *(a2 + a3 - 1);
  *a4 = 12336;
  if (a1 == 8)
  {
    v14 = 0;
    while (__dst[v14 - 8] != v9)
    {
      if (++v14 == 8)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  if (a1 != 12)
  {
LABEL_15:
    *a4 = 49;
    return result;
  }

  v10 = 0;
  v11 = __dst;
  while (1)
  {
    v12 = byte_1D2BFAA16[v10];
    if (a3 >= v12)
    {
      result = SLstrncmp((a2 + (a3 - v12)), v11, v12);
      if (!result)
      {
        return result;
      }
    }

    ++v10;
    v11 += 8;
    if (v10 == 44)
    {
      v13 = 0;
      while (byte_1D2BFAA42[v13] != v9)
      {
        if (++v13 == 13)
        {
          return result;
        }
      }

      goto LABEL_15;
    }
  }
}

uint64_t PDDCposcls(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, _WORD *a5)
{
  qmemcpy(v14, "mos", 3);
  v7 = *(a2 + a3 - 1);
  *a5 = 12336;
  if (a3 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + a3 - 2);
  }

  if (result == 12)
  {
    result = SLstrncmp((a2 + (a3 - 3)), v14, 3);
    if (result)
    {
      for (i = 0; i != 5; ++i)
      {
        if (byte_1D2BFAA5A[i] == v7)
        {
          goto LABEL_17;
        }
      }

      if ((v7 & 0xFFFFFFF7) == 0x72)
      {
LABEL_17:
        v10 = 50;
        goto LABEL_19;
      }

      if (v7 == 109)
      {
        v10 = 52;
      }

      else
      {
        if (v8 == 210 || v8 == 245)
        {
          v13 = 52;
        }

        else
        {
          v13 = 51;
        }

        if ((*(a4 + 4 * v7) & 0x10000000) != 0)
        {
          v10 = v13;
        }

        else
        {
          v10 = 51;
        }
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (result != 5)
  {
    if (result != 3)
    {
      return result;
    }

    v9 = 0;
    while (byte_1D2BFAA4F[v9] != v7)
    {
      if (++v9 == 11)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    v10 = 49;
    goto LABEL_19;
  }

  v10 = 53;
LABEL_19:
  *a5 = v10;
  return result;
}

_BYTE *PDDCpreclt(_BYTE *result, uint64_t a2, _WORD *a3)
{
  v3 = ((*(a2 + 4 * *result) >> 25) & 0x20) + *result;
  v4 = (((*(a2 + 4 * *result) >> 25) & 0x20) + *result);
  *a3 = 12336;
  if (v4 == 104 || (*(a2 + 4 * v3) & 0x10000000) != 0)
  {
    *a3 = 49;
  }

  return result;
}

uint64_t PDDCprecls(uint64_t result, uint64_t a2)
{
  *a2 = 12336;
  switch(result)
  {
    case 3:
      v2 = 51;
      break;
    case 5:
      v2 = 56;
      break;
    case 9:
      v2 = 54;
      break;
    default:
      return result;
  }

  *(a2 + 1) = v2;
  return result;
}

unsigned __int8 *PDDCposacc(unsigned __int8 *result, unsigned int a2, uint64_t a3, char *a4)
{
  v7 = result;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = result[a2 - 1];
  qmemcpy(v14, "mos", 3);
  qmemcpy(v13, "ndo", 3);
  v17[0] = 0x656F616F65656165;
  v15 = *"eaneenoenua";
  v16 = 110;
  *a4 = 12336;
  if (!a2)
  {
    if (v8 == 114 || v8 == 100)
    {
      goto LABEL_7;
    }

LABEL_5:
    result = SLstrncmp(&result[(a2 - 3)], v13, 3);
    if (!result || (result = SLstrncmp((v7 + (a2 - 3)), v14, 3), !result))
    {
      v12 = 52;
      goto LABEL_20;
    }

    result = SLstrncmp((v7 + (a2 - 2)), v17, 2);
    if (result && (result = SLstrncmp((v7 + (a2 - 2)), v17 + 2, 2), result) && (result = SLstrncmp((v7 + (a2 - 2)), v17 + 4, 2), result) && (result = SLstrncmp((v7 + (a2 - 2)), v17 + 6, 2), result))
    {
      result = SLstrncmp((v7 + (a2 - 3)), &v15, 3);
      if (result)
      {
        result = SLstrncmp((v7 + (a2 - 3)), &v15 + 3, 3);
        if (result)
        {
          result = SLstrncmp((v7 + (a2 - 3)), &v15 + 6, 3);
          if (result)
          {
            if (a2 >= 3)
            {
              return PDDCcalacc(v7, a2, a3, a4);
            }

            return result;
          }
        }
      }

      v12 = 51;
    }

    else
    {
LABEL_7:
      v12 = 50;
    }

LABEL_20:
    a4[1] = v12;
    return result;
  }

  v9 = a2;
  v10 = result;
  while (1)
  {
    v11 = *v10++;
    if ((*(a3 + 4 * v11) & 0x4000000) != 0)
    {
      return result;
    }

    if (!--v9)
    {
      goto LABEL_5;
    }
  }
}

uint64_t PDDCcalacc(uint64_t a1, unsigned int a2, uint64_t a3, char *__str)
{
  v5 = a2;
  v6 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v19[0] = *"ua";
  v19[1] = *"o";
  v19[2] = xmmword_1D2BFAA8E;
  memset(v20, 0, sizeof(v20));
  v7 = xmmword_1D2BF7920;
  v8 = vdupq_n_s64(v19);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    v10.i64[0] = 3 * v7.i64[0];
    v10.i64[1] = 3 * v7.i64[1];
    v20[v6] = vaddq_s64(v8, v10);
    v7 = vaddq_s64(v7, v9);
    ++v6;
  }

  while (v6 != 8);
  v18[2] = 0;
  *__str = 12336;
  if (!a2)
  {
    return snprintf(__str, 3uLL, "%02d", v5);
  }

  v11 = 0;
  v12 = 0;
  v13 = a2 - 1;
  while (1)
  {
    if ((*(a3 + 4 * *(a1 + v13)) & 0x10000000) == 0)
    {
      if (v12)
      {
        v11 = v13;
      }

      goto LABEL_13;
    }

    if (!v12)
    {
      v12 = v13;
      goto LABEL_13;
    }

    if (!v13)
    {
      return snprintf(__str, 3uLL, "%02d", v5);
    }

    if (v11)
    {
      break;
    }

    v11 = 0;
LABEL_13:
    v14 = v13-- + 1;
    if (v14 <= 1)
    {
      v5 = 0;
      return snprintf(__str, 3uLL, "%02d", v5);
    }
  }

  v16 = (a1 + v13);
  if ((*(a3 + 4 * *(v16 - 1)) & 0x10000000) != 0)
  {
    v17 = 0;
    v18[0] = *(v16 - 1);
    v18[1] = *v16;
    while (SLstrncmp(v18, *(v20 + v17), 2))
    {
      v17 += 8;
      if (v17 == 128)
      {
        v5 = v5 - v13 + 1;
        return snprintf(__str, 3uLL, "%02d", v5);
      }
    }
  }

  v5 -= v13;
  return snprintf(__str, 3uLL, "%02d", v5);
}

uint64_t PDDCrmcc(uint64_t result, int a2, char *a3)
{
  a3[1] = 48;
  if (a2 != 1 && result == 6)
  {
    v4 = 48;
  }

  else
  {
    v4 = 49;
  }

  *a3 = v4;
  return result;
}

uint64_t DCSFlnkcod(uint64_t result, uint64_t a2)
{
  *a2 = 12336;
  if (result > 10)
  {
    if (result != 13)
    {
      if (result != 11)
      {
        return result;
      }

      v2 = 49;
      *a2 = 49;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((result - 6) >= 2)
  {
    if (result != 10)
    {
      return result;
    }

LABEL_8:
    v2 = 50;
    goto LABEL_9;
  }

  v2 = 51;
LABEL_9:
  *(a2 + 1) = v2;
  return result;
}

uint64_t PDDCdblend(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + a4 - 2);
  }

  v5 = 48;
  if (v4 == *(a2 + a4 - 1))
  {
    v6 = *(a3 + 4 * *(a2 + a4 - 1));
    v7 = (v6 & 0x10000000) == 0;
    if ((v6 & 0x10000000) != 0)
    {
      v8 = 48;
    }

    else
    {
      v8 = 49;
    }

    if (v7)
    {
      v5 = 49;
    }

    else
    {
      v5 = 50;
    }

    if (a1 != 6)
    {
      return v8;
    }
  }

  return v5;
}

uint64_t PDSFcltdb(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 55);
  v3 = *(a2 + 104);
  if ((*(a2 + 3484) & 0x200) == 0 || *(a2 + 40) <= 0)
  {
    *(v3 + 58) = 0;
  }

  if (v2 <= 7)
  {
    if (v2 == 3)
    {
      v15 = *(v3 + 62);
      v16 = (v15 & 0xF) - 1;
      if (v16 <= 3)
      {
        *(v3 + 58) |= 0x400020000020001uLL >> (16 * v16);
      }

      v17 = (v15 >> 4) & 7;
      if (v17 == 2)
      {
        v8 = *(v3 + 60) | 2;
        goto LABEL_47;
      }

      if (v17 == 1)
      {
        v8 = *(v3 + 60) | 1;
        goto LABEL_47;
      }

      return 1;
    }

    if (v2 != 5)
    {
      return 1;
    }

    v5 = *(v3 + 62);
    v6 = (v5 & 0xF) - 1;
    if (v6 <= 7 && ((0xEFu >> v6) & 1) != 0)
    {
      *(v3 + 58) |= word_1D2BF7860[v6];
    }

    v7 = (v5 >> 4) & 7;
    if (v7 > 3)
    {
      switch(v7)
      {
        case 4:
LABEL_44:
          v8 = *(v3 + 60) | 0x400;
          goto LABEL_47;
        case 5:
LABEL_46:
          v8 = *(v3 + 60) | 0x800;
          goto LABEL_47;
        case 6:
          v8 = *(v3 + 60) | 0x1000;
          goto LABEL_47;
      }

      return 1;
    }

    switch(v7)
    {
      case 1:
        goto LABEL_45;
      case 2:
LABEL_42:
        v8 = *(v3 + 60) | 0x100;
        goto LABEL_47;
      case 3:
LABEL_22:
        v8 = *(v3 + 60) | 0x200;
LABEL_47:
        *(v3 + 60) = v8;
        break;
    }
  }

  else
  {
    switch(v2)
    {
      case 8:
        v9 = *(v3 + 62);
        *(v3 + 92) = v9 & 0xF;
        v10 = (32 * v9) & 0xE00;
        *(v3 + 60) = (32 * v9) & 0xE00;
        v11 = *(a2 + 40);
        if (v11 <= 2)
        {
          if ((v9 & 0xF) != 0)
          {
            *(v3 + 2 * v11 + 64) |= v9 << 12;
          }

          if (v10)
          {
            v12 = v3 + 2 * *(a2 + 40);
            *(v12 + 64) |= v10 >> 8;
          }
        }

        return 1;
      case 9:
        v13 = *(v3 + 62);
        v14 = (v13 & 0xF) - 1;
        if (v14 <= 0xA)
        {
          *(v3 + 58) |= word_1D2BFAA9E[v14];
        }

        v8 = *(v3 + 60) | (16 * v13) & 0x100;
        goto LABEL_47;
      case 12:
        v4 = *(v3 + 62) & 7;
        if (v4 > 1)
        {
          if (v4 != 2)
          {
            if (v4 != 3)
            {
              if (v4 != 4)
              {
                return 1;
              }

              goto LABEL_46;
            }

            goto LABEL_44;
          }

          goto LABEL_22;
        }

        if ((*(v3 + 62) & 7) != 0)
        {
          if (v4 == 1)
          {
            goto LABEL_42;
          }

          return 1;
        }

LABEL_45:
        v8 = *(v3 + 60) | 0x80;
        goto LABEL_47;
    }
  }

  return 1;
}

uint64_t PDSFremacc(char *a1, uint64_t a2, int a3)
{
  v5 = a1;
  v6 = strlen(a1);
  if (v6)
  {
    while (1)
    {
      v7 = *v5;
      v8 = *(a2 + 4 * v7);
      if (a3 != 8)
      {
        break;
      }

      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_6;
      }

LABEL_12:
      ++v5;
      if (!--v6)
      {
        return 0;
      }
    }

    if (a3 == 15)
    {
      v9 = v7 - ((v8 & 0x4020000) != 0);
    }

    else
    {
LABEL_6:
      if ((~*(a2 + 4 * v7) & 0x50000000) != 0 || (v8 & 0x4064000) == 0)
      {
        goto LABEL_12;
      }

      v9 = PDSFchkaccent[v7 - 192];
    }

    *v5 = v9;
    goto LABEL_12;
  }

  return 0;
}

uint64_t PDSFanaqua(unsigned __int8 *a1, uint64_t a2, _WORD *a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  memset(v53, 0, 256);
  if (a2 >= 1)
  {
    v8 = a2;
    v9 = a1;
    do
    {
      v10 = *v9++;
      ++v53[v10];
      --v8;
    }

    while (v8);
  }

  a3[1062] = 0;
  v51 = 0;
  v11 = *(a4 + 1184);
  v12 = a3[1064];
  v13 = a3[1063];
  v14 = (v11 + v13 + v12);
  v15 = *v14;
  v16 = v11 + v12;
  v17 = *(v11 + v12);
  v18 = v14[1];
  v19 = *(v16 + 1);
  v20 = a3[1065];
  v21 = *(v11 + v20);
  v22 = *(v11 + v20 + v13);
  v47 = *(v11 + v20);
  v48 = v22;
  if (v13 >= 1)
  {
    v23 = (v18 | (v19 << 8)) - 1;
    v24 = (v15 | (v17 << 8)) - 1;
    v43 = a3 + 60;
    v25 = 32;
    v26 = 1;
    v27 = 0uLL;
    v28 = 32;
    while (1)
    {
      v29 = v24 + 1;
      v30 = *(a4 + 1184);
      v31 = *(v30 + (v24 + 1) - 1);
      if (v31 == 255)
      {
        v29 = v24 + 3;
        v34 = (v24 + 3);
        v33 = (v30 + v34 - 2);
      }

      else
      {
        v32 = a3[1066] + v31;
        v33 = (v30 + v32 - 1);
        v34 = v32 + 256;
      }

      if (!v53[v21] || !v53[v22])
      {
        goto LABEL_38;
      }

      v35 = *(v30 + v34 - 1);
      if (*v33)
      {
        v25 = *v33;
      }

      v49 = v25;
      if (v35)
      {
        v28 = v35;
      }

      v50 = v28;
      if ((v25 == 32 || v53[v25]) && (v28 == 32 || v53[v28]))
      {
        v36 = 0;
        v52[14] = v27;
        v52[15] = v27;
        v52[12] = v27;
        v52[13] = v27;
        v52[10] = v27;
        v52[11] = v27;
        v52[8] = v27;
        v52[9] = v27;
        v52[6] = v27;
        v52[7] = v27;
        v52[4] = v27;
        v52[5] = v27;
        v52[2] = v27;
        v52[3] = v27;
        v52[0] = v27;
        v52[1] = v27;
        while (1)
        {
          v37 = *(&v47 + v36);
          if (v37 == 32)
          {
            break;
          }

          ++*(v52 + v37);
          if (++v36 == 4)
          {
            goto LABEL_27;
          }
        }

        if (v36 == a2)
        {
LABEL_27:
          v36 = 0;
          while (*(v52 + v36) <= v53[v36])
          {
            if (++v36 == 256)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_25;
        }

        if (v36 == 256)
        {
          goto LABEL_30;
        }

LABEL_25:
        if (*(&v47 + v36) != 32)
        {
          goto LABEL_35;
        }

LABEL_30:
        if (a3[1062] > 498)
        {
          v45 = v28;
          v46 = v25;
          v44 = v22;
          icgetana_0(a1, a2, a3, a4);
          v22 = v44;
          v28 = v45;
          v25 = v46;
          v27 = 0uLL;
        }

        else
        {
          v38 = 0;
          v39 = v43;
          do
          {
            LOBYTE(v39[2 * a3[1062]]) = *(&v47 + v38++);
            v39 = (v39 + 1);
          }

          while (v38 != 4);
          ++a3[1062];
        }
      }

LABEL_35:
      LOWORD(v13) = a3[1063];
      if (v29 >= v23)
      {
        break;
      }

      v40 = v23;
      LODWORD(v23) = v29;
LABEL_39:
      v24 = v23;
      v23 = v40;
      if (v26 > v13)
      {
        goto LABEL_40;
      }
    }

    v30 = *(a4 + 1184);
LABEL_38:
    v41 = a3[1065] + ++v26;
    v21 = *(v30 + v41 - 1);
    v22 = *(v30 + v41 + v13 - 1);
    v47 = *(v30 + v41 - 1);
    v48 = v22;
    v40 = (*(v30 + v13 + v26 + a3[1064]) | (*(v30 + a3[1064] + v26) << 8)) - 1;
    goto LABEL_39;
  }

LABEL_40:
  icgetana_0(a1, a2, a3, a4);
  return 10;
}

unsigned __int8 *icgetana_0(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3 + 120;
  *(a3 + 120 + 4 * *(a3 + 2124)) = 0;
  v6 = *(a3 + 2124);
  *(a3 + 112) = a3 + 120;
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v17 = 0;
    do
    {
      result = SLstrncmp(*(a3 + 112), (v5 + 4 * v10), 4);
      if (result <= 0)
      {
        *(a3 + 112) = v5 + 4 * v10;
        v18[0] = *(v5 + 4 * v10);
        v11 = *(a4 + 54);
        if (v11 >= 5)
        {
          v12 = 4;
          do
          {
            *(v18 + v12++) = 0;
          }

          while (v11 > v12);
        }

        v13 = SFbisrch(v18, 0, v11 - 1, &v17, a4);
        v14 = *(a4 + 54);
        if (v14 >= 5)
        {
          v15 = 4;
          do
          {
            *(v18 + v15++) = -1;
          }

          while (v14 > v15);
        }

        result = SFbisrch(v18, 0, v14 - 1, &v17, a4);
        v16 = result - v13 + v17;
        v17 = v16;
        if (*(a3 + 3194) == 1)
        {
          result = PDdecod2(v9, a2, v13, v16, a4, a3);
        }
      }

      ++v10;
    }

    while (v10 != v6);
  }

  *(a3 + 2124) = 0;
  return result;
}

void sub_1D2B891E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B89C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8A9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8B504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 200), 8);
  _Block_object_dispose((v33 - 168), 8);
  _Block_object_dispose((v33 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8B878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8C49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8CBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8D90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8DC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D2B8E3D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t heapCorrectionCursorCompare(void *a1, void *a2)
{
  [a1 prefixProbability];
  v5 = v4;
  [a2 prefixProbability];
  v7 = 1;
  v8 = -1;
  if (a1 <= a2)
  {
    v8 = a2 > a1;
  }

  if (v6 <= v5)
  {
    v7 = v8;
  }

  if (v5 <= v6)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t PDSFcltcmp(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 104);
  __strcpy_chk();
  v5 = *(a1 + 55);
  v6 = 1;
  if (v5 > 0xC || ((1 << v5) & 0x1228) == 0)
  {
    goto LABEL_13;
  }

  if (*(v4 + 34))
  {
    v6 = (*(v4 + 88) & *(v4 + 58)) != 0;
  }

  if (!*(v4 + 44))
  {
LABEL_13:
    v9 = 1;
  }

  else
  {
    v8 = (*(v4 + 90) & *(v4 + 60));
    v9 = v8 != 0;
    if (v5 == 5 && (*(a2 + 3482) & 0x40) != 0 && *(a2 + 88) == 2 && !SLstrcmp(v11, "-la"))
    {
      v9 = (*(v4 + 60) & 0x1A00 | v8) != 0;
    }
  }

  if (v6 && v9)
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

uint64_t PDSFcltscr(unsigned __int8 *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 55);
  v7 = a4 + 34;
  v8 = *(a3 + 56);
  if (*(a4 + 34))
  {
    v9 = *a1;
    if (v9 != 104 && (*(v8 + 4 * v9) & 0x10000000) == 0)
    {
      if (v6 != 5 || SLstrcmp((a4 + 34), "d'"))
      {
        return 11;
      }

      v15 = "yeux";
      v16 = a1;
      goto LABEL_32;
    }
  }

  if (*(a3 + 55) > 8u)
  {
    if (v6 != 12)
    {
      if (v6 != 9 || (!*(a4 + 34) || (*(a4 + 88) & 0x40) == 0 || *a1 == 105 || (*(v8 + 4 * a1[1]) & 0x10000000) == 0) && (SLstrcmp((a4 + 34), "c'") || (*(v8 + 4 * *a1) & 0x800) != 0))
      {
        return 10;
      }

      return 11;
    }

    if ((*(a4 + 90) & 0x80000000) == 0)
    {
      return 10;
    }

    v23 = &a1[a2];
    v24 = *(v23 - 1);
    if ((*(a4 + 90) & 0x20) != 0)
    {
      if (v24 == 114 && (((*(v23 - 2) - 97) >> 1) | ((*(v23 - 2) - 97) << 7)) < 8u)
      {
        return dword_1D2BFAAB4[(((*(v23 - 2) - 97) >> 1) | ((*(v23 - 2) - 97) << 7))];
      }

      return 11;
    }

    result = 10;
    if ((v24 - 224) > 0x14 || ((1 << (v24 + 32)) & 0x101401) == 0)
    {
      if (v24 == 105)
      {
        return 10;
      }

      else
      {
        return 11;
      }
    }

    return result;
  }

  if (v6 == 3)
  {
    if (!*(a4 + 44))
    {
      return 10;
    }

    v17 = *(a4 + 60);
    if (v17 == 3)
    {
      return 10;
    }

    v18 = a1[a2 - 1];
    v19 = (*(v8 + 4 * v18) & 0x10000000) == 0 || v18 == 117;
    v20 = v19 || v18 == 249;
    v21 = v20;
    if (((v17 & 1) != 0 || v21) && ((v17 & 2) != 0 || !v21))
    {
      return 10;
    }

    return 11;
  }

  if (v6 != 5 || !*(a4 + 44) || (*(a4 + 90) & 0x80000000) == 0)
  {
    return 10;
  }

  v11 = &a1[a2];
  v12 = *(v11 - 1);
  result = 11;
  if (v12 > 0x72)
  {
    if (*(v11 - 1) <= 0x77u)
    {
      if (v12 != 115)
      {
        if (v12 != 116)
        {
          return result;
        }

        goto LABEL_81;
      }

      if (!SLstrcmp((a4 + 44), "-je") || !SLstrcmp((v7 + 10), "-tu"))
      {
        return 10;
      }
    }

    else
    {
      if (v12 == 120)
      {
        goto LABEL_70;
      }

      if (v12 != 122)
      {
        if (v12 != 233)
        {
          return result;
        }

LABEL_70:
        if (!SLstrcmp((a4 + 44), "-je") || !SLstrcmp((v7 + 10), "-tu") && *(v11 - 1) == 120)
        {
          return 10;
        }

        return 11;
      }
    }

    if (!SLstrcmp((v7 + 10), "-y") || !SLstrcmp((v7 + 10), "-en"))
    {
      return 10;
    }

    v15 = "-y-en";
LABEL_93:
    v16 = (v7 + 10);
LABEL_32:
    if (!SLstrcmp(v16, v15))
    {
      return 10;
    }

    return 11;
  }

  if (*(v11 - 1) > 0x63u)
  {
    if (v12 != 100)
    {
      if (v12 != 101)
      {
        if (v12 != 105)
        {
          return result;
        }

        v14 = SLstrcmp((a4 + 44), "-je");
        result = 11;
        if (a2 < 2 || v14 || *(v11 - 2) != 97)
        {
          return result;
        }

        return 10;
      }

      goto LABEL_76;
    }

LABEL_81:
    if (!SLstrcmp((a4 + 44), "-il") || !SLstrcmp((v7 + 10), "-elle") || !SLstrcmp((v7 + 10), "-on"))
    {
      return 10;
    }

    if (SLstrcmp((v7 + 10), "-ils"))
    {
      v26 = SLstrcmp((v7 + 10), "-elles");
      result = 11;
      if (a2 < 2 || v26)
      {
        return result;
      }
    }

    else if (a2 < 2)
    {
      return 11;
    }

    if (*(v11 - 2) == 110)
    {
      return 10;
    }

    return 11;
  }

  if (v12 == 97 || v12 == 99)
  {
LABEL_76:
    if (!SLstrcmp((a4 + 44), "-t-il") || !SLstrcmp((v7 + 10), "-t-elle"))
    {
      return 10;
    }

    v15 = "-t-on";
    goto LABEL_93;
  }

  return result;
}

uint64_t PDSFcor1qd(const char *a1, void *a2, uint64_t a3)
{
  v5 = a2[148];
  v6 = *(a3 + 2126);
  v7 = *(a3 + 2128);
  v8 = *(a3 + 2130) - 1;
  LODWORD(v9) = *(a3 + 2132);
  v10 = strlen(a1);
  v65 = 0;
  v11 = (v5 + (v7 + v6));
  v12 = *v11;
  v13 = *(v5 + v7);
  v14 = v11[1];
  v15 = *(v5 + v7 + 1);
  v16 = *(v5 + v8 + 1);
  v17 = *(v5 + (v8 + v6) + 1);
  v61 = *(v5 + v8 + 1);
  v62 = v17;
  if (v6 >= 2)
  {
    v18 = v10;
    v19 = (v7 + v6);
    v20 = v8;
    v21 = (v8 + v6);
    v22 = (v14 | (v15 << 8)) - 1;
    v23 = (v12 | (v13 << 8)) - 1;
    v24 = vshr_n_s32(vshl_n_s32(vadd_s32(vdup_n_s32(v9), 0xFF0000FFFFLL), 0x10uLL), 0x10uLL);
    LOWORD(v9) = 1;
    v25 = 32;
    v26 = 32;
    do
    {
      v27 = *(a1 + 1);
      v28 = *a1;
      while (1)
      {
        if (v23 >= v22)
        {
          v9 = v9 + 1;
          v16 = *(v5 + v9 + v20);
          v17 = *(v5 + v21 + v9);
          v61 = *(v5 + v9 + v20);
          v62 = v17;
          v23 = v22;
          v22 = (*(v5 + v19 + v9) | (*(v5 + v7 + v9) << 8)) - 1;
        }

        v29 = *(v5 - 1 + (v23 + 1));
        v30 = v5 + (v23 + 3);
        v31 = (v30 - 2);
        v32 = (v30 - 1);
        v33 = vadd_s32(vdup_n_s32(v29), v24);
        v34 = v29 == 255;
        if (v29 == 255)
        {
          v23 += 3;
        }

        else
        {
          ++v23;
        }

        if (v29 == 255)
        {
          v35 = v32;
        }

        else
        {
          v35 = (v5 + v33.i32[1]);
        }

        if (v34)
        {
          v36 = v31;
        }

        else
        {
          v36 = (v5 + v33.i32[0]);
        }

        v37 = *v36;
        v38 = *v35;
        if (v16 == v27 && v17 == v28)
        {
          v39 = v16;
          goto LABEL_25;
        }

        if (v16 == v28 && (v17 == v27 || v17 == *(a1 + 2) || v17 == v16))
        {
          break;
        }

        v23 = v22;
        if (v6 <= v9)
        {
          return 10;
        }
      }

      v39 = v27;
LABEL_25:
      if (v37)
      {
        v25 = v37;
      }

      v63 = v25;
      if (v38)
      {
        v26 = v38;
      }

      v64 = v26;
      if (v26 == 32)
      {
        if (v25 == 32)
        {
          v40 = v17 != 32;
          if (v17 == 32)
          {
            v41 = 1;
          }

          else
          {
            v41 = 2;
          }
        }

        else
        {
          v40 = 0;
          v41 = 3;
        }
      }

      else
      {
        v40 = 0;
        v41 = 4;
      }

      if (v16 == v28)
      {
        v42 = v17 == v16 && v25 == v39;
        v43 = *(a1 + 2);
        v45 = v42 && v26 == v43;
        if (v17 == v39)
        {
          if (v26 == v43 && v25 == v17)
          {
            v45 = 1;
          }

          if (v25 == v43 && (v26 == v25 || v26 == *(a1 + 4) || v26 == *(a1 + 3)))
          {
            v45 = 1;
          }

          if (v25 == *(a1 + 3) && (v26 == v43 || v26 == *(a1 + 4)))
          {
            v45 = 1;
          }
        }

        if (v17 == v43)
        {
          v47 = *(a1 + 3);
          if ((v26 == v47 || v26 == 32) && v25 == v39)
          {
            v45 = 1;
          }

LABEL_82:
          if (v25 == v47 && v26 == *(a1 + 4))
          {
LABEL_85:
            v56 = v25;
            v57 = v21;
            v58 = v7;
            v59 = v19;
            v55 = v20;
            v50 = v26;
            v51 = PDSFcorqbr(a2, a3, &v61, v41, a1, v18, *(a3 + 2154), *(a3 + 2156), *(a3 + 2158), HIWORD(*(a3 + 2158)));
            v26 = v50;
            v25 = v56;
            v21 = v57;
            v7 = v58;
            v20 = v55;
            v34 = v51 == 10;
            v19 = v59;
            if (v34)
            {
              if (*(a3 + 2124) > 499)
              {
                return 10;
              }

              v52 = 0;
              v53 = a3 + 120;
              do
              {
                *(v53 + 4 * *(a3 + 2124)) = *(&v61 + v52++);
                ++v53;
              }

              while (v52 != 4);
              ++*(a3 + 2124);
            }

            goto LABEL_91;
          }
        }
      }

      else
      {
        if (v16 != v27)
        {
          goto LABEL_91;
        }

        v45 = v17 == v28 && (v40 || v25 == *(a1 + 2) && (v26 == 32 || v26 == *(a1 + 3)));
        if (v17 == *(a1 + 2))
        {
          v47 = *(a1 + 3);
          goto LABEL_82;
        }
      }

      if (v45)
      {
        goto LABEL_85;
      }

LABEL_91:
      v16 = v61;
      v17 = v62;
    }

    while (v6 > v9);
  }

  return 10;
}

uint64_t PDSFcor2qd(const char *a1, void *a2, uint64_t a3)
{
  v5 = a2[148];
  v6 = *(a3 + 2126);
  v7 = *(a3 + 2128);
  v8 = *(a3 + 2130) - 1;
  v9 = *(a3 + 2132);
  v10 = v7 + *(a3 + 2126);
  v11 = v8 + *(a3 + 2126);
  v12 = strlen(a1);
  v75 = 0;
  v13 = (v5 + v10);
  v14 = *v13;
  v15 = *(v5 + v7);
  v16 = v13[1];
  v17 = *(v5 + v7 + 1);
  v18 = *(v5 + v11 + 1);
  v71 = *(v5 + v8 + 1);
  v72 = v18;
  if (v6 >= 2)
  {
    v19 = a1;
    v20 = v6;
    v21 = (v9 - 1);
    v66 = v12;
    v22 = v5 - 1;
    v23 = (v16 | (v17 << 8)) - 1;
    v24 = (v14 | (v15 << 8)) - 1;
    v25 = v10;
    v26 = 32;
    v27 = v8;
    v28 = v11;
    v29 = (v9 + 255);
    v30 = 1;
    v31 = 32;
    v64 = v28;
    v65 = v8;
    v63 = v29;
    do
    {
      if (v24 >= v23)
      {
        v30 = v30 + 1;
        v32 = *(v5 + v28 + v30);
        v71 = *(v5 + v30 + v27);
        v72 = v32;
        v24 = v23;
        v23 = (*(v5 + v25 + v30) | (*(v5 + v7 + v30) << 8)) - 1;
      }

      v33 = *(v22 + (v24 + 1));
      v34 = v5 + (v24 + 3);
      v35 = (v34 - 2);
      v36 = (v34 - 1);
      v37 = (v5 + v33 + v21);
      v38 = v33 == 255;
      if (v33 == 255)
      {
        v24 += 3;
      }

      else
      {
        ++v24;
      }

      if (v33 == 255)
      {
        v39 = v36;
      }

      else
      {
        v39 = (v5 + v33 + v29);
      }

      if (v38)
      {
        v40 = v35;
      }

      else
      {
        v40 = v37;
      }

      v41 = *v40;
      v42 = *v39;
      v43 = *(a3 + 2144);
      if (*(a3 + 2144) >= 1)
      {
        v44 = *v19;
        if (v71 < v44)
        {
          goto LABEL_16;
        }

        if (v71 > v44)
        {
          return 10;
        }

        v45 = *(v19 + 1);
        if (v43 == 1)
        {
          if (v72 == v45)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v72 < v45)
          {
            goto LABEL_16;
          }

          if (v72 > v45)
          {
            return 10;
          }
        }
      }

      if (v41)
      {
        v26 = v41;
      }

      v73 = v26;
      if (v42)
      {
        v31 = v42;
      }

      v74 = v31;
      if (!v43 && v71 == *v19 && v72 == *(v19 + 1) && v26 == *(v19 + 2))
      {
        continue;
      }

      if (v31 == 32)
      {
        if (v26 == 32)
        {
          v46 = 0;
          if (v72 == 32)
          {
            v47 = 1;
          }

          else
          {
            v47 = 2;
          }
        }

        else
        {
          v47 = 3;
          v46 = 1;
        }
      }

      else
      {
        v46 = 0;
        v47 = 4;
      }

      if (v43 >= 3)
      {
        if (v26 == *(v19 + 2) && (v43 == 3 || v31 == *(v19 + 3)))
        {
          goto LABEL_47;
        }
      }

      else if (v43 == 2)
      {
        if (v26 != *(v19 + 2))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v43)
        {
          goto LABEL_47;
        }

        v55 = *v19;
        if (v71 == v55)
        {
LABEL_16:
          v24 = v23;
          continue;
        }

        v56 = *(v19 + 1);
        if (v72 == v55)
        {
          v57 = *(v19 + 2);
          v58 = v31 == v57;
          if (v26 != v56)
          {
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
          v57 = *(v19 + 2);
        }

        if (v72 == v56 && v26 == v57 && ((v46 & 1) != 0 || v31 == *(v19 + 3)))
        {
          v58 = 1;
        }

        if (v71 == v56 && v72 == v57 && v26 == *(v19 + 3))
        {
          if (v31 == *(v19 + 4) || v58)
          {
LABEL_47:
            v68 = v30;
            v69 = v31;
            v70 = v26;
            v48 = v23;
            v49 = v25;
            v50 = v22;
            v51 = v20;
            v52 = v19;
            if (PDSFcorqbr(a2, a3, &v71, v47, v19, v66, *(a3 + 2154), *(a3 + 2156), *(a3 + 2158), HIWORD(*(a3 + 2158))) == 10)
            {
              v22 = v50;
              v25 = v49;
              v23 = v48;
              v31 = v69;
              v26 = v70;
              v28 = v64;
              v27 = v65;
              v29 = v63;
              v30 = v68;
              if (*(a3 + 2124) > 499)
              {
                return 10;
              }

              v20 = v51;
              v19 = v52;
              v53 = 0;
              v54 = a3 + 120;
              do
              {
                *(v54 + 4 * *(a3 + 2124)) = *(&v71 + v53++);
                ++v54;
              }

              while (v53 != 4);
              ++*(a3 + 2124);
            }

            else
            {
              v20 = v51;
              v19 = v52;
              v22 = v50;
              v25 = v49;
              v23 = v48;
              v31 = v69;
              v26 = v70;
              v28 = v64;
              v27 = v65;
              v29 = v63;
              v30 = v68;
            }

            continue;
          }
        }

        else if (v58)
        {
          goto LABEL_47;
        }

        if (v72 != v57 && v72 != v56 && v72 != v55)
        {
          v24 = v23;
        }
      }
    }

    while (v20 > v30);
  }

  return 10;
}

uint64_t PDSFcor3qd(const char *a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v6 = a2[148];
  v7 = *(a3 + 2126);
  v8 = *(a3 + 2128);
  v9 = *(a3 + 2130);
  v10 = *(a3 + 2132);
  v11 = strlen(a1);
  v12 = *(a3 + 2164);
  if (v11 - v12 <= 1)
  {
    v13 = v8;
    v14 = v7;
    v15 = v8 + v7;
    v16 = (v9 - 1);
    v17 = v9 - 1 + v7;
    v18 = (a3 + 2164);
    memset(v84, 0, 256);
    memset(v83, 0, sizeof(v83));
    if (v12 != 255)
    {
      v19 = 0;
      do
      {
        if (v11 == v12)
        {
          v20 = v18[v19 + 1];
          v21 = *(a2[21] + v20);
          v22 = *(a2[22] + v20);
          v23 = *(a2[19] + 8 * v20);
          v84[*v23] = 1;
          if (v21 == 1)
          {
            v24 = &a1[v22];
          }

          else
          {
            v24 = (v23 + 1);
          }
        }

        else
        {
          if ((v11 - v12) != 1)
          {
            break;
          }

          v84[*a1] = 1;
          v24 = *(a2[19] + 8 * v18[v19 + 1]);
        }

        *(v83 + *v24) = 1;
        v19 += 2;
        v12 = v18[v19];
      }

      while (v12 != 255);
    }

    v82 = 0;
    v25 = (v6 + v15);
    v26 = *v25;
    v27 = (v6 + v8);
    v28 = *v27;
    v29 = v25[1];
    v30 = v27[1];
    v31 = *(v6 + v17 + 1);
    v78 = *(v6 + (v9 - 1) + 1);
    v79 = v31;
    if (v7 >= 2)
    {
      v32 = v6 - 1;
      v33 = (v10 - 1);
      v34 = (v29 | (v30 << 8)) - 1;
      v35 = (v26 | (v28 << 8)) - 1;
      v74 = v17;
      v75 = v15;
      v36 = 32;
      v76 = (v10 + 255);
      LOWORD(v37) = 1;
      v38 = 32;
      v72 = v14;
      v73 = v11;
      v71 = v16;
      while (1)
      {
        if (v35 >= v34)
        {
          v37 = v37 + 1;
          v39 = *(v6 + v37 + v74);
          v78 = *(v6 + v37 + v16);
          v79 = v39;
          v35 = v34;
          v34 = (*(v6 + v75 + v37) | (*(v6 + v37 + v13) << 8)) - 1;
        }

        v40 = *(v32 + (v35 + 1));
        v41 = v6 + (v35 + 3);
        v42 = (v41 - 2);
        v43 = (v41 - 1);
        v44 = (v6 + v40 + v33);
        v45 = v40 == 255;
        if (v40 == 255)
        {
          v46 = v35 + 3;
        }

        else
        {
          v46 = v35 + 1;
        }

        if (v40 == 255)
        {
          v47 = v43;
        }

        else
        {
          v47 = (v6 + v40 + v76);
        }

        if (v45)
        {
          v48 = v42;
        }

        else
        {
          v48 = v44;
        }

        v49 = *v48;
        v50 = *v47;
        if (v49)
        {
          v36 = v49;
        }

        v80 = v36;
        if (v50)
        {
          v38 = v50;
        }

        v81 = v38;
        v77 = v46;
        if (v38 == 32)
        {
          if (v36 == 32)
          {
            v51 = v79 == 32 ? 1 : 2;
          }

          else
          {
            v51 = 3;
          }
        }

        else
        {
          v51 = 4;
        }

        v35 = v34;
        if (v84[v78])
        {
          v35 = v34;
          if (*(v83 + v79))
          {
            v52 = *v18;
            v35 = v34;
            if (v52 != 255)
            {
              break;
            }
          }
        }

LABEL_70:
        if (v14 <= v37)
        {
          return 10;
        }
      }

      v53 = 0;
      v54 = 0;
      while (1)
      {
        v55 = (v11 - v52);
        if (v55 > 1)
        {
LABEL_60:
          if (v53 == 1)
          {
            v35 = v77;
          }

          else
          {
            v35 = v34;
          }

          goto LABEL_70;
        }

        if (v55 == 1 && *a1 != v78)
        {
          goto LABEL_69;
        }

        v56 = v18[v54 + 1];
        v57 = a2[21];
        v58 = *(v57 + v56);
        v59 = *(a2[22] + v56);
        if (!*(v57 + v56))
        {
          break;
        }

        if (v55 >= v51)
        {
          v60 = 0;
          v61 = 0;
        }

        else
        {
          v60 = 0;
          v61 = 0;
          v62 = *(a2[19] + 8 * v56);
          v63 = v55;
          do
          {
            if (*(&v78 + v63) != *(v62 + v60))
            {
              break;
            }

            v61 = ++v60;
            v53 = 1;
            if (v60 >= v58)
            {
              break;
            }

            v63 = v55 + v60;
          }

          while (v63 < v51);
        }

        if (v61 + v55 == v51)
        {
          goto LABEL_63;
        }

        if (v61 == v58)
        {
          goto LABEL_54;
        }

LABEL_59:
        v54 += 2;
        v52 = v18[v54];
        if (v52 == 255)
        {
          goto LABEL_60;
        }
      }

      if (v55 == v51)
      {
        goto LABEL_63;
      }

      v60 = 0;
LABEL_54:
      v64 = v55 + v60;
      if (v64 < v51)
      {
        v65 = v59 - v58;
        do
        {
          if (*(&v78 + v64) != a1[v65 + v64])
          {
            break;
          }

          v64 = v55 + ++v60;
        }

        while (v64 < v51);
      }

      if (v64 == v51)
      {
LABEL_63:
        if (v38 != 32 || (v66 = PDSFcorqbr(a2, a3, &v78, v51, a1, v73, *(a3 + 2154), *(a3 + 2156), *(a3 + 2158), HIWORD(*(a3 + 2158))), v33 = v70, v32 = v6 - 1, v16 = v71, v13 = v8, LOWORD(v11) = v73, v14 = v72, v66 == 10))
        {
          if (*(a3 + 2124) > 499)
          {
            return 10;
          }

          v67 = 0;
          v68 = a3 + 120;
          do
          {
            *(v68 + 4 * *(a3 + 2124)) = *(&v78 + v67++);
            ++v68;
          }

          while (v67 != 4);
          ++*(a3 + 2124);
        }

LABEL_69:
        v35 = v77;
        goto LABEL_70;
      }

      goto LABEL_59;
    }
  }

  return 10;
}

uint64_t PDSFcor6qd(const char *a1, void *a2, __int16 *a3)
{
  v4 = a2;
  v158 = *MEMORY[0x1E69E9840];
  v6 = a2[7];
  v7 = a2[148];
  v116 = a3[1063];
  v117 = a3[1064];
  v8 = a3[1065];
  v9 = a3[1066];
  v10 = strlen(a1);
  v11 = a1;
  v12 = a3;
  v13 = v10;
  v14 = *(v12 + 2164);
  v15 = *a1;
  v16 = *(v6 + 4 * v15);
  if (v10 <= v14)
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v18 = v116;
    v17 = v117;
    if ((v16 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v18 = v116;
    v17 = v117;
    if ((v16 & 0x10000000) == 0)
    {
      return 10;
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
  }

  v19 = 0;
  v20 = vdupq_n_s64(v15);
  v21 = xmmword_1D2BF78B0;
  v22 = xmmword_1D2BF78C0;
  v23 = xmmword_1D2BF78D0;
  v24 = xmmword_1D2BF78E0;
  v25 = xmmword_1D2BF78F0;
  v26 = xmmword_1D2BF7900;
  v27 = xmmword_1D2BF7910;
  v28 = &v142 + 7;
  v29 = xmmword_1D2BF7920;
  v30.i64[0] = 0x1000000010000000;
  v30.i64[1] = 0x1000000010000000;
  v31 = vdupq_n_s64(0x10uLL);
  do
  {
    v32 = vbicq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v29, v20), vceqq_s64(v27, v20)), vuzp1q_s32(vceqq_s64(v26, v20), vceqq_s64(v25, v20)))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v24, v20), vceqq_s64(v23, v20)), vuzp1q_s32(vceqq_s64(v22, v20), vceqq_s64(v21, v20))))), vuzp1q_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v19), v30)), vceqzq_s32(vandq_s8(*(v6 + v19 + 16), v30))), vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v19 + 32), v30)), vceqzq_s32(vandq_s8(*(v6 + v19 + 48), v30)))));
    if (v32.i8[0])
    {
      *(v28 - 7) = 1;
    }

    if (v32.i8[1])
    {
      *(v28 - 6) = 1;
    }

    if (v32.i8[2])
    {
      *(v28 - 5) = 1;
    }

    if (v32.i8[3])
    {
      *(v28 - 4) = 1;
    }

    if (v32.i8[4])
    {
      *(v28 - 3) = 1;
    }

    if (v32.i8[5])
    {
      *(v28 - 2) = 1;
    }

    if (v32.i8[6])
    {
      *(v28 - 1) = 1;
    }

    if (v32.i8[7])
    {
      *v28 = 1;
    }

    if (v32.i8[8])
    {
      v28[1] = 1;
    }

    if (v32.i8[9])
    {
      v28[2] = 1;
    }

    if (v32.i8[10])
    {
      v28[3] = 1;
    }

    if (v32.i8[11])
    {
      v28[4] = 1;
    }

    if (v32.i8[12])
    {
      v28[5] = 1;
    }

    if (v32.i8[13])
    {
      v28[6] = 1;
    }

    if (v32.i8[14])
    {
      v28[7] = 1;
    }

    if (v32.i8[15])
    {
      v28[8] = 1;
    }

    v26 = vaddq_s64(v26, v31);
    v27 = vaddq_s64(v27, v31);
    v29 = vaddq_s64(v29, v31);
    v25 = vaddq_s64(v25, v31);
    v24 = vaddq_s64(v24, v31);
    v23 = vaddq_s64(v23, v31);
    v19 += 64;
    v22 = vaddq_s64(v22, v31);
    v28 += 16;
    v21 = vaddq_s64(v21, v31);
  }

  while (v19 != 1024);
  *(&v126 + *(a1 + 1)) = 1;
LABEL_40:
  v33 = v17 + v18;
  v115 = (v8 - 1);
  v34 = v8 - 1 + v18;
  v35 = (v12 + 1082);
  if (v14 != 255 && v10 == v14)
  {
    v36 = 0;
    v37 = v4[21];
    v38 = v4[22];
    v39.i64[0] = 0x1000000010000000;
    v39.i64[1] = 0x1000000010000000;
    v40 = vdupq_n_s64(0x10uLL);
    v41 = v4[19];
    do
    {
      v42 = v35[v36 + 1];
      v43 = *(v37 + v42);
      v44 = *(v38 + v42);
      v45 = *(v41 + 8 * v42);
      *(&v142 + *v45) = 1;
      if (v44 == 1)
      {
        v46 = *(a1 + 1);
        if ((*(v6 + 4 * v46) & 0x10000000) != 0)
        {
          v47 = 0;
          v48 = &v126 + 7;
          v49 = vdupq_n_s64(v46);
          v50 = xmmword_1D2BF7920;
          v51 = xmmword_1D2BF7910;
          v52 = xmmword_1D2BF7900;
          v53 = xmmword_1D2BF78F0;
          v54 = xmmword_1D2BF78E0;
          v55 = xmmword_1D2BF78D0;
          v56 = xmmword_1D2BF78C0;
          v57 = xmmword_1D2BF78B0;
          do
          {
            v58 = vbicq_s8(vuzp1q_s8(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v50, v49), vceqq_s64(v51, v49)), vuzp1q_s32(vceqq_s64(v52, v49), vceqq_s64(v53, v49)))), vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v54, v49), vceqq_s64(v55, v49)), vuzp1q_s32(vceqq_s64(v56, v49), vceqq_s64(v57, v49))))), vuzp1q_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v47), v39)), vceqzq_s32(vandq_s8(*(v6 + v47 + 16), v39))), vuzp1q_s16(vceqzq_s32(vandq_s8(*(v6 + v47 + 32), v39)), vceqzq_s32(vandq_s8(*(v6 + v47 + 48), v39)))));
            if (v58.i8[0])
            {
              *(v48 - 7) = 1;
            }

            if (v58.i8[1])
            {
              *(v48 - 6) = 1;
            }

            if (v58.i8[2])
            {
              *(v48 - 5) = 1;
            }

            if (v58.i8[3])
            {
              *(v48 - 4) = 1;
            }

            if (v58.i8[4])
            {
              *(v48 - 3) = 1;
            }

            if (v58.i8[5])
            {
              *(v48 - 2) = 1;
            }

            if (v58.i8[6])
            {
              *(v48 - 1) = 1;
            }

            if (v58.i8[7])
            {
              *v48 = 1;
            }

            if (v58.i8[8])
            {
              v48[1] = 1;
            }

            if (v58.i8[9])
            {
              v48[2] = 1;
            }

            if (v58.i8[10])
            {
              v48[3] = 1;
            }

            if (v58.i8[11])
            {
              v48[4] = 1;
            }

            if (v58.i8[12])
            {
              v48[5] = 1;
            }

            if (v58.i8[13])
            {
              v48[6] = 1;
            }

            if (v58.i8[14])
            {
              v48[7] = 1;
            }

            if (v58.i8[15])
            {
              v48[8] = 1;
            }

            v52 = vaddq_s64(v52, v40);
            v51 = vaddq_s64(v51, v40);
            v50 = vaddq_s64(v50, v40);
            v53 = vaddq_s64(v53, v40);
            v54 = vaddq_s64(v54, v40);
            v55 = vaddq_s64(v55, v40);
            v47 += 64;
            v56 = vaddq_s64(v56, v40);
            v48 += 16;
            v57 = vaddq_s64(v57, v40);
          }

          while (v47 != 1024);
        }
      }

      if (v43 == 1)
      {
        v59 = &a1[v44];
      }

      else
      {
        v59 = (v45 + 1);
      }

      *(&v126 + *v59) = 1;
      v36 += 2;
      v60 = v35[v36];
    }

    while (v60 != 255 && v13 == v60);
  }

  v119 = v13;
  v125 = 0;
  v62 = (v7 + v33);
  v63 = *v62;
  v64 = v117;
  v65 = (v7 + v117);
  v66 = *v65;
  v67 = v62[1];
  v68 = v65[1];
  v69 = (v8 - 1);
  v70 = *(v7 + v34 + 1);
  v121 = *(v7 + (v8 - 1) + 1);
  v122 = v70;
  if (v18 >= 2)
  {
    v71 = v7 - 1;
    v72 = (v9 - 1);
    v73 = v33;
    v74 = (v67 | (v68 << 8)) - 1;
    v75 = (v63 | (v66 << 8)) - 1;
    v110 = v12 + 60;
    v118 = v34;
    v76 = 32;
    v120 = (v9 + 255);
    LOWORD(v77) = 1;
    v78 = 32;
    v112 = v11;
    v113 = v4;
    v111 = v72;
    v114 = v33;
    do
    {
      if (v75 >= v74)
      {
        v77 = v77 + 1;
        v79 = *(v7 + v77 + v118);
        v121 = *(v7 + v77 + v69);
        v122 = v79;
        v75 = v74;
        v74 = (*(v7 + v73 + v77) | (*(v7 + v77 + v64) << 8)) - 1;
      }

      v80 = *(v71 + (v75 + 1));
      v81 = v7 + (v75 + 3);
      v82 = (v81 - 2);
      v83 = (v81 - 1);
      v84 = (v7 + v80 + v72);
      v85 = v80 == 255;
      if (v80 == 255)
      {
        v75 += 3;
      }

      else
      {
        ++v75;
      }

      if (v80 == 255)
      {
        v86 = v83;
      }

      else
      {
        v86 = (v7 + v80 + v120);
      }

      if (v85)
      {
        v87 = v82;
      }

      else
      {
        v87 = v84;
      }

      v88 = *v87;
      v89 = *v86;
      v90 = v12[1072];
      if (v12[1072] >= 1)
      {
        v91 = *v11;
        if (v121 < v91)
        {
          goto LABEL_128;
        }

        if (v121 > v91)
        {
          return 10;
        }

        v92 = *(v11 + 1);
        if (v90 == 1)
        {
          if (v122 == v92)
          {
            goto LABEL_128;
          }
        }

        else
        {
          if (v122 < v92)
          {
            goto LABEL_128;
          }

          if (v122 > v92)
          {
            return 10;
          }
        }
      }

      if (v88)
      {
        v76 = v88;
      }

      v123 = v76;
      if (v89)
      {
        v78 = v89;
      }

      v124 = v78;
      if (!v90 && v121 == *v11 && v122 == *(v11 + 1) && v76 == *(v11 + 2))
      {
        continue;
      }

      if (v78 == 32)
      {
        if (v76 == 32)
        {
          if (v122 == 32)
          {
            v93 = 1;
          }

          else
          {
            v93 = 2;
          }
        }

        else
        {
          v93 = 3;
        }
      }

      else
      {
        v93 = 4;
      }

      if (!*(&v142 + v121) || !*(&v126 + v122))
      {
LABEL_128:
        v75 = v74;
        continue;
      }

      if ((*(v6 + 4 * v121) & 0x10000000) == 0 || (*(v6 + 4 * *v11) & 0x10000000) == 0)
      {
        v94 = *v35;
        if (v94 == 255)
        {
          v75 = v74;
        }

        else
        {
          v95 = 0;
          v96 = 0;
          do
          {
            v97 = (v119 - v94);
            if (v97 > 1)
            {
              break;
            }

            if (v97 == 1 && *v11 != v121)
            {
              goto LABEL_152;
            }

            v98 = 0;
            v99 = v35[v96 + 1];
            v100 = *(v4[21] + v99);
            if (*(v4[21] + v99) && v97 < v93)
            {
              v101 = 0;
              v98 = 0;
              v102 = *(v4[19] + 8 * v99);
              v103 = v97;
              do
              {
                if (*(&v121 + v103) != *(v102 + v101))
                {
                  break;
                }

                v98 = ++v101;
                v95 = 1;
                if (v101 >= v100)
                {
                  break;
                }

                v103 = v97 + v101;
              }

              while (v103 < v93);
            }

            if (v98 == v100 || v98 + v97 == v93)
            {
              goto LABEL_146;
            }

            v96 += 2;
            v94 = v35[v96];
          }

          while (v94 != 255);
          if (v95 != 1)
          {
            v75 = v74;
          }
        }

        goto LABEL_152;
      }

LABEL_146:
      v104 = v4;
      v105 = v12;
      if (PDSFcorqbr(v104, v12, &v121, v93, v11, v119, v12[1068], v12[1069], *(v12 + 535), HIWORD(*(v12 + 535))) != 10)
      {
        v12 = v105;
        v11 = v112;
        v4 = v113;
        v18 = v116;
        v64 = v117;
        v69 = v115;
        v71 = v7 - 1;
        v72 = v111;
LABEL_152:
        v73 = v114;
        continue;
      }

      v106 = v105[1062];
      v12 = v105;
      v11 = v112;
      v4 = v113;
      v18 = v116;
      v64 = v117;
      v69 = v115;
      v71 = v7 - 1;
      v72 = v111;
      v73 = v114;
      if (v106 > 499)
      {
        return 10;
      }

      v107 = 0;
      v108 = v110;
      do
      {
        LOBYTE(v108[2 * v12[1062]]) = *(&v121 + v107++);
        v108 = (v108 + 1);
      }

      while (v107 != 4);
      ++v12[1062];
    }

    while (v18 > v77);
  }

  return 10;
}

uint64_t PDSFcor8qd(const char *a1, void *a2, uint64_t a3)
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = a2[148];
  v7 = *(a3 + 2126);
  v8 = *(a3 + 2130) - 1;
  v9 = *(a3 + 2132);
  v73 = *(a3 + 2128);
  v10 = v73 + v7;
  v72 = v8;
  v11 = v8 + v7;
  v12 = strlen(a1);
  memset(v94, 0, 256);
  memset(v79, 0, sizeof(v79));
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v13 = *(a1 + 1);
  *(v79 + v13) = 1;
  v14 = *a1;
  v94[v14] = 1;
  *(v79 + *(a1 + 2)) = 1;
  v94[v13] = 1;
  BYTE14(v80) = 1;
  v15 = (a3 + 2164);
  v16 = *(a3 + 2164);
  if (v16 != 255)
  {
    v17 = 0;
    do
    {
      if (v16 == v12)
      {
        v18 = v15[v17 + 1];
        v19 = *(a2[21] + v18);
        v20 = *(a2[22] + v18);
        v21 = *(a2[19] + 8 * v18);
        v94[*v21] = 1;
        if (v19 == 1)
        {
          v22 = &a1[v20];
        }

        else
        {
          v22 = (v21 + 1);
        }
      }

      else
      {
        if ((v12 - v16) != 1)
        {
          break;
        }

        v94[v14] = 1;
        v22 = *(a2[19] + 8 * v15[v17 + 1]);
      }

      *(v79 + *v22) = 1;
      v17 += 2;
      v16 = v15[v17];
    }

    while (v16 != 255);
  }

  v78 = 0;
  v23 = (v6 + v10);
  v24 = *v23;
  v25 = (v6 + v73);
  v26 = *v25;
  v27 = v23[1];
  v28 = v25[1];
  v29 = *(v6 + v72 + 1);
  v30 = *(v6 + v11 + 1);
  v74 = *(v6 + v72 + 1);
  v75 = v30;
  if (v7 < 2)
  {
    return 10;
  }

  v71 = v10;
  v31 = (v27 | (v28 << 8)) - 1;
  v32 = (v24 | (v26 << 8)) - 1;
  v70 = v11;
  v33 = 32;
  LOWORD(v34) = 1;
  v35 = 32;
  while (1)
  {
    if (v32 >= v31)
    {
      v34 = v34 + 1;
      v29 = *(v6 + v34 + v72);
      v30 = *(v6 + v34 + v70);
      v74 = *(v6 + v34 + v72);
      v36 = *(v6 + v71 + v34);
      v37 = *(v6 + v34 + v73);
      v75 = v30;
      v32 = v31;
      v31 = (v36 | (v37 << 8)) - 1;
    }

    v38 = *(v6 - 1 + (v32 + 1));
    v39 = v6 + (v32 + 3);
    v40 = (v39 - 2);
    v41 = (v39 - 1);
    v42 = (v6 + v38 + (v9 - 1));
    v43 = v38 == 255;
    if (v38 == 255)
    {
      v44 = v32 + 3;
    }

    else
    {
      v44 = v32 + 1;
    }

    if (v38 == 255)
    {
      v45 = v41;
    }

    else
    {
      v45 = (v6 + v38 + (v9 + 255));
    }

    if (v43)
    {
      v46 = v40;
    }

    else
    {
      v46 = v42;
    }

    v47 = *v46;
    v48 = *v45;
    if (v47)
    {
      v33 = v47;
    }

    v76 = v33;
    if (v48)
    {
      v35 = v48;
    }

    v77 = v35;
    if (v35 == 32)
    {
      if (v33 == 32)
      {
        v49 = v30 == 32 ? 1 : 2;
      }

      else
      {
        v49 = 3;
      }
    }

    else
    {
      v49 = 4;
    }

    v32 = v31;
    if (v94[v29])
    {
      v32 = v31;
      if (*(v79 + v30))
      {
        break;
      }
    }

LABEL_56:
    if (v7 <= v34)
    {
      return 10;
    }
  }

  v50 = *v15;
  if (v50 == 255)
  {
LABEL_37:
    if (v49 + 1 == v12)
    {
      v51 = 0;
      for (i = 0; ; ++i)
      {
        if (a1[i] == *(&v74 + v51))
        {
          ++v51;
        }

        else
        {
          if (v49 == v51)
          {
            goto LABEL_52;
          }

          if (i != v51)
          {
            break;
          }
        }
      }
    }

    v53 = 0;
    v54 = 0;
    while (1)
    {
      v55 = a1[v53];
      v56 = *(&v74 + v54);
      if (v55 == v56)
      {
        break;
      }

      if (v55 != 46)
      {
        if (v56 != 46)
        {
          v32 = v44;
          goto LABEL_56;
        }

        goto LABEL_50;
      }

      ++v53;
LABEL_51:
      if (v49 == v54)
      {
        goto LABEL_52;
      }
    }

    ++v53;
LABEL_50:
    ++v54;
    goto LABEL_51;
  }

  v59 = 0;
  while (1)
  {
    v60 = (v12 - v50);
    if (v60 > 1 || v60 == 1 && *a1 != v29)
    {
      goto LABEL_37;
    }

    v61 = v15[v59 + 1];
    v62 = a2[21];
    v63 = *(v62 + v61);
    v64 = *(a2[22] + v61);
    if (!*(v62 + v61))
    {
      break;
    }

    v65 = 0;
    v66 = 0;
    do
    {
      if (v65 + v60 >= v49)
      {
        break;
      }

      if (*(&v74 + v65 + v60) != *(*(a2[19] + 8 * v61) + v66))
      {
        break;
      }

      v65 = ++v66;
    }

    while (v66 < v63);
    if (v65 + v60 == v49)
    {
      goto LABEL_52;
    }

    if (v65 == v63)
    {
      goto LABEL_72;
    }

LABEL_77:
    v59 += 2;
    v50 = v15[v59];
    if (v50 == 255)
    {
      goto LABEL_37;
    }
  }

  if (v49 == v60)
  {
    goto LABEL_52;
  }

  v66 = 0;
LABEL_72:
  v67 = v60 + v66;
  if (v67 < v49)
  {
    v68 = v64 - v63;
    do
    {
      if (*(&v74 + v67) != a1[v68 + v67])
      {
        break;
      }

      v67 = v60 + ++v66;
    }

    while (v67 < v49);
  }

  if (v67 != v49)
  {
    goto LABEL_77;
  }

LABEL_52:
  if (*(a3 + 2124) <= 499)
  {
    v57 = 0;
    v58 = a3 + 120;
    do
    {
      *(v58 + 4 * *(a3 + 2124)) = *(&v74 + v57++);
      ++v58;
    }

    while (v57 != 4);
    ++*(a3 + 2124);
    v32 = v44;
    goto LABEL_56;
  }

  return 10;
}