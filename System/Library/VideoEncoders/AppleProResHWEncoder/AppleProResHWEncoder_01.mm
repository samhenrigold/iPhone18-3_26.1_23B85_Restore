uint64_t ProResHWAnalyzer::parseProResFrame(ThreadPool **a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a3 = bswap32(*a2);
  v5 = bswap32(*(a2 + 8)) >> 16;
  *(a3 + 4) = v5;
  *(a3 + 6) = bswap32(*(a2 + 16)) >> 16;
  *(a3 + 8) = bswap32(*(a2 + 18)) >> 16;
  *(a3 + 10) = *(a2 + 20) >> 6;
  *(a3 + 11) = (*(a2 + 20) >> 2) & 3;
  v6 = *(a2 + 27);
  *(a3 + 12) = (v6 & 2) != 0;
  if ((v6 & 2) != 0)
  {
    v7 = *(a2 + 28);
  }

  else
  {
    v7 = 4;
  }

  *(a3 + 13) = v7;
  ProResHWAnalyzer::parseProResPicture(a1, a2 + 8 + v5, a3, (a3 + 16), a4, a5);
  return 0;
}

uint64_t findIndexPow3below(unsigned int a1, unsigned __int16 *a2)
{
  if (a2[1] >= a1)
  {
    return 0;
  }

  if (a2[2] >= a1)
  {
    return 1;
  }

  if (a2[3] >= a1)
  {
    return 2;
  }

  if (a2[4] >= a1)
  {
    return 3;
  }

  if (a2[5] >= a1)
  {
    return 4;
  }

  if (a2[6] >= a1)
  {
    return 5;
  }

  return 6;
}

uint64_t extractEstSizeFromIndex(_WORD *a1, int a2)
{
  v2 = 0;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = a1[8] + *a1;
        v4 = a1[16];
        return (v3 + v4);
      case 1:
        v3 = a1[9] + a1[1];
        v4 = a1[17];
        return (v3 + v4);
      case 2:
        v3 = a1[10] + a1[2];
        v4 = a1[18];
        return (v3 + v4);
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = a1[11] + a1[3];
        v4 = a1[19];
      }

      else
      {
        v3 = a1[12] + a1[4];
        v4 = a1[20];
      }

      return (v3 + v4);
    }

    if (a2 == 5)
    {
      v3 = a1[13] + a1[5];
      v4 = a1[21];
      return (v3 + v4);
    }

    if (a2 == 6)
    {
      v3 = a1[14] + a1[6];
      v4 = a1[22];
      return (v3 + v4);
    }
  }

  return v2;
}

uint64_t ProResHWAnalyzer::interpolateSize(uint64_t a1, __int128 *a2, int a3, int a4, int a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v26[0] = a3;
  for (i = 1; i != 7; ++i)
  {
    a3 *= 3;
    v26[i] = a3;
  }

  v8 = qScale[a4];
  if (v26[1] >= v8)
  {
    v9 = 0;
  }

  else if (v26[2] >= v8)
  {
    v9 = 1;
  }

  else if (v26[3] >= v8)
  {
    v9 = 2;
  }

  else if (v26[4] >= v8)
  {
    v9 = 3;
  }

  else if (v26[5] >= v8)
  {
    v9 = 4;
  }

  else if (v26[6] >= v8)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = v9 + 1;
  v11 = a2[1];
  v23 = *a2;
  v24 = v11;
  v25 = a2[2];
  v12 = extractEstSizeFromIndex(&v23, v9);
  v13 = a2[1];
  v23 = *a2;
  v24 = v13;
  v25 = a2[2];
  v14 = extractEstSizeFromIndex(&v23, v9 + 1);
  switch(a5)
  {
    case 0:
      v22 = v26[v9];
      v21 = v12 + ((-(v12 - v14) / (v22 - v26[v10])) * (v22 - v8));
      return v21;
    case 1:
      v17 = (v12 - v14);
      LOWORD(v15) = v26[v9];
      *&v18 = log(v15);
      v19 = *&v18;
      LOWORD(v18) = v26[v10];
      v20 = v19 - log(v18);
      v21 = v12 - (v17 / v20) * (v19 - log(v8));
      return v21;
    case 2:
      return v12;
    default:
      return 0;
  }
}

uint64_t ProResHWAnalyzer::getEstimatedSizeForSlice(ProResHWAnalyzer *this, unsigned __int8 *a2, int a3, int a4, int a5)
{
  v5 = &a2[48 * a3];
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = v5[2];
  return ProResHWAnalyzer::interpolateSize(this, v8, a4, a5, 1);
}

void ProResHWAnalyzer::findMinMaxlastNZPos(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5)
{
  if ((a5 & 7) != 0)
  {
    ProResHWAnalyzer::findMinMaxlastNZPos();
  }

  *a3 = -1;
  *a4 = 0;
  if (a5)
  {
    v5 = a5 >> 3;
    if (a5 >> 3 <= 1)
    {
      v5 = 1;
    }

    v6 = vdupq_n_s64(0x3FuLL);
    do
    {
      v7 = *a3;
      v8 = *a2;
      v9 = (*a2 >> 6) & 0x3FLL;
      if ((*a2 & 0x3FuLL) < v9)
      {
        v9 = *a2 & 0x3FLL;
      }

      if (((v8 >> 12) & 0x3F) >= ((v8 >> 18) & 0x3F))
      {
        v10 = (v8 >> 18) & 0x3F;
      }

      else
      {
        v10 = (v8 >> 12) & 0x3F;
      }

      if (v9 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v9;
      }

      v12 = vdupq_n_s64(v8);
      v13 = vandq_s8(vshlq_u64(v12, xmmword_295393280), v6);
      v14 = vandq_s8(vshlq_u64(v12, xmmword_295393290), v6);
      v15 = vbslq_s8(vcgtq_u64(v14, v13), v13, v14);
      if (v15.i64[0] >= v15.i64[1])
      {
        v16 = v15.u64[1];
        if (v11 >= v15.i64[1])
        {
LABEL_16:
          if (v16 > v7)
          {
            goto LABEL_30;
          }

          if (v9 < v10)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        v16 = v15.i64[0];
        if (v11 >= v15.i64[0])
        {
          goto LABEL_16;
        }
      }

      if (v9 < v10)
      {
        if (v9 > v7)
        {
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      if (v10 > v7)
      {
        goto LABEL_30;
      }

LABEL_24:
      v9 = v10;
LABEL_25:
      if (v15.i64[0] >= v15.i64[1])
      {
        LOBYTE(v7) = v15.i8[8];
        if (v9 >= v15.i64[1])
        {
          goto LABEL_30;
        }

LABEL_29:
        LOBYTE(v7) = v11;
        goto LABEL_30;
      }

      LOBYTE(v7) = v15.i8[0];
      if (v9 < v15.i64[0])
      {
        goto LABEL_29;
      }

LABEL_30:
      *a3 = v7;
      v17 = *a4;
      v18 = *a2;
      v19 = (*a2 >> 6) & 0x3FLL;
      if ((*a2 & 0x3FuLL) > v19)
      {
        v19 = *a2 & 0x3FLL;
      }

      if (((v18 >> 12) & 0x3F) <= ((v18 >> 18) & 0x3F))
      {
        v20 = (v18 >> 18) & 0x3F;
      }

      else
      {
        v20 = (v18 >> 12) & 0x3F;
      }

      if (v19 <= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      v22 = vdupq_n_s64(v18);
      v23 = vdupq_n_s64(0x3FuLL);
      v24 = vandq_s8(vshlq_u64(v22, xmmword_295393280), v23);
      v25 = vandq_s8(vshlq_u64(v22, xmmword_295393290), v23);
      v26 = vbslq_s8(vcgtq_u64(v24, v25), v24, v25);
      if (v26.i64[0] <= v26.i64[1])
      {
        v27 = v26.u64[1];
        if (v21 > v26.i64[1])
        {
LABEL_44:
          if (v19 > v20)
          {
            if (v19 < v17)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          }

          if (v20 < v17)
          {
            goto LABEL_54;
          }

LABEL_48:
          v19 = v20;
          goto LABEL_49;
        }
      }

      else
      {
        v27 = v26.i64[0];
        if (v21 > v26.i64[0])
        {
          goto LABEL_44;
        }
      }

      if (v27 < v17)
      {
        goto LABEL_54;
      }

      if (v19 <= v20)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v26.i64[0] > v26.i64[1])
      {
        LOBYTE(v17) = v26.i8[0];
        if (v19 <= v26.i64[0])
        {
          goto LABEL_54;
        }

LABEL_53:
        LOBYTE(v17) = v21;
        goto LABEL_54;
      }

      LOBYTE(v17) = v26.i8[8];
      if (v19 > v26.i64[1])
      {
        goto LABEL_53;
      }

LABEL_54:
      *a4 = v17;
      a2 += 6;
      --v5;
    }

    while (v5);
  }
}

void ProResHWAnalyzer::parseHWStats(uint64_t result, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, int a6, int a7, int a8, char a9, char a10)
{
  v14 = 0;
  *(a2 + 4) = 148;
  *(a2 + 6) = a7;
  *(a2 + 8) = a8;
  *(a2 + 10) = a9;
  *(a2 + 11) = 256;
  *(a2 + 13) = 4;
  *(a2 + 16) = 8;
  *(a2 + 24) = a10;
  v15 = (a7 + 15) >> 4;
  *(a2 + 28) = a8;
  *(a2 + 32) = v15;
  v16 = 1 << a10;
  *(a2 + 36) = (a8 + 15) >> 4;
  do
  {
    if (v15 >= v16)
    {
      v17 = (a2 + 64 + v14);
      do
      {
        *v17++ = v16;
        v15 -= v16;
        ++v14;
      }

      while (v15 >= v16);
    }

    v16 >>= 1;
  }

  while (v15);
  *(a2 + 40) = v14;
  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = a4;
    do
    {
      v21 = ((*a3 >> 34) & 0x1FFF) + ((*(a3 + 20) >> 34) & 0x1FFF) + ((a3[5] >> 34) & 0x1FFF) + 6;
      v22 = *(a2 + 48);
      *(*(a2 + 56) + 2 * v18) = v21;
      v19 += v21;
      *(v22 + v18) = *(a5 + v18);
      v23 = *v20;
      v20 += 56;
      *(*(a2 + 336) + v18) = ((v23 + (v23 >> 15)) >> 8) ^ 0x80;
      ProResHWAnalyzer::findMinMaxlastNZPos(result, a4 + 2, (*(a2 + 320) + v18), (*(a2 + 328) + v18), 0x20u);
      a3 = (a3 + 60);
      ++v18;
      a4 = v20;
    }

    while (a6 != v18);
  }

  v24 = v19 + 2 * a6;
  *(a2 + 20) = v24 + 8;
  *a2 = v24 + 164;
}

uint64_t ProResHWAnalyzer::analyzeProResFrame(uint64_t a1, uint64_t a2, SliceList *this, unsigned __int8 *a4)
{
  v8 = 0;
  v9 = *(a1 + 16);
  LOBYTE(v10) = 1;
  do
  {
    v11 = v10;
    v12 = (this + 72 * v8 + 8);
    v10 = 3;
    do
    {
      *v12 = *(v12 - 1);
      v12 += 3;
      --v10;
    }

    while (v10);
    v8 = 1;
  }

  while ((v11 & 1) != 0);
  if (*(a2 + 28) == 16 * *(a2 + 36))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 40);
  }

  if (*(a1 + 24) == v13)
  {
    LODWORD(v14) = 0;
    v15 = 0;
    goto LABEL_42;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v16 = *(a2 + 40);
    v17 = v14 / v16;
    v18 = v14 % v16;
    if ((v14 / v16) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14 / v16;
    }

    if (*(a2 + 36) - 1 > v17)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = *(a2 + 36) - 1;
    }

    if (v18 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v14 % v16;
    }

    if (v16 - 1 > v18)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = v16 - 1;
    }

    if (*(a1 + 28) == 1)
    {
      v23 = *(a2 + 344);
      v24 = *(v23 + 2 * v14);
      if (v24 < 0x7D0)
      {
        goto LABEL_25;
      }

      if (v24 > 0xF9F)
      {
        goto LABEL_39;
      }

      if (*(v23 + 2 * (v18 + (v19 - 1) * v16)) < 0x190u || *(v23 + 2 * (v18 + v20 * v16)) < 0x190u || (v28 = v17 * v16, *(v23 + 2 * (v21 + v28 - 1)) < 0x190u))
      {
LABEL_25:
        v25 = 1;
      }

      else
      {
        v25 = *(v23 + 2 * (v28 + v22)) < 0x190u;
      }

      if (*(*(a2 + 48) + v14) > *a4 && v25)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *(*(a2 + 320) + v14);
      if (v26 <= 7)
      {
        v24 = *(*(a2 + 328) + v14) - v26;
        if (v24 >= 33 && *(*(a2 + 336) + v14) >= 0x81u && *(*(a2 + 48) + v14) > *a4)
        {
LABEL_33:
          *(v9 + v14) = 1;
          SliceList::add(this, v14, v24, 0, 0);
          v27 = (*(*(a2 + 56) + 2 * v14) - 6) * GAMMA[*(*(a2 + 48) + v14)] / GAMMA[*a4] + 6;
          goto LABEL_40;
        }
      }
    }

LABEL_39:
    *(v9 + v14) = 0;
    v27 = *(*(a2 + 56) + 2 * v14);
LABEL_40:
    v15 += v27;
    ++v14;
  }

  while (v14 < *(a1 + 24) - v13);
  v13 = *(a1 + 24);
LABEL_42:
  if (v14 >= v13)
  {
    v30 = v13;
  }

  else
  {
    v29 = v14;
    do
    {
      *(v9 + v29) = 0;
      v15 += *(*(a2 + 56) + 2 * v29++);
      v30 = *(a1 + 24);
    }

    while (v29 < v30);
    v13 = *(a1 + 24);
  }

  v31 = v15 + 2 * v13 + 8;
  memcpy((*(a1 + 16) + v30), *(a1 + 16), v30);
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (v33)
  {
    v34 = 0;
    while (1)
    {
      v35 = *(a2 + 40);
      v36 = v34 / v35;
      v37 = v34 % v35;
      if ((v34 / v35) <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v34 / v35;
      }

      if (*(a2 + 36) - 1 > v36)
      {
        v39 = v36 + 1;
      }

      else
      {
        v39 = *(a2 + 36) - 1;
      }

      if (v37 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = v34 % v35;
      }

      if (v35 - 1 > v37)
      {
        v41 = v37 + 1;
      }

      else
      {
        v41 = v35 - 1;
      }

      if (!v32[v34])
      {
        v42 = v37 + (v38 - 1) * v35;
        v43 = v37 + v39 * v35;
        v44 = v36 * v35;
        v45 = v40 + v44 - 1;
        v46 = v44 + v41;
        if (*(a1 + 28) == 1)
        {
          if ((v32[v43] + v32[v42] + v32[v45]) | v32[v46])
          {
            v47 = *(*(a2 + 344) + 2 * v34);
            if (v47 >> 3 <= 0x270)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          v47 = *(*(a2 + 328) + v34) - *(*(a2 + 320) + v34);
          if (v47 >= 9 && *(*(a2 + 336) + v34) >= 0x21u && (v32[v43] + v32[v42] + v32[v45]) | v32[v46])
          {
LABEL_71:
            if (*(*(a2 + 48) + v34) > *a4)
            {
              SliceList::add(this, v34, v47, 0, 1u);
              v48 = *(*(a2 + 56) + 2 * v34);
              v31 = (v31 - v48 + (v48 - 6) * GAMMA[*(*(a2 + 48) + v34)] / GAMMA[*a4] + 6);
              v32[(v34 + *(a1 + 24))] = 1;
              v33 = *(a1 + 24);
            }
          }
        }
      }

      if (++v34 >= v33)
      {
        v32 = *(a1 + 16);
        goto LABEL_74;
      }
    }
  }

  v33 = 0;
LABEL_74:
  memcpy(v32, &v32[v33], v33);
  v49 = *(a1 + 24);
  if (!v49)
  {
    return v31;
  }

  v50 = 0;
  v51 = *(a1 + 16);
  while (2)
  {
    if (!*(v51 + v50))
    {
      v52 = *(a2 + 40);
      v53 = *(a2 + 36) - 1;
      v54 = v50 / v52;
      if (v53 > v50 / v52)
      {
        v53 = v54 + 1;
      }

      if (v54 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v50 / v52;
      }

      v56 = *(v51 + (v50 % v52 + v53 * v52)) | *(v51 + (v50 % v52 + (v55 - 1) * v52));
      if (v56)
      {
        v56 = *(*(a2 + 48) + v50) >= *a4;
      }

      if (*(a1 + 28) == 1)
      {
        v57 = *(*(a2 + 344) + 2 * v50);
        if (!v56)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v57 = *(*(a2 + 328) + v50) - *(*(a2 + 320) + v50);
        if (!v56)
        {
          goto LABEL_89;
        }
      }

      SliceList::add(this, v50, v57, 0, 1u);
      v58 = *(*(a2 + 56) + 2 * v50);
      v31 = (v31 - v58 + (v58 - 6) * GAMMA[*(*(a2 + 48) + v50)] / GAMMA[*a4] + 6);
      *(v51 + (v50 + *(a1 + 24))) = 1;
      v49 = *(a1 + 24);
    }

LABEL_89:
    if (++v50 < v49)
    {
      continue;
    }

    break;
  }

  if (v49)
  {
    v59 = 0;
    v60 = *(a1 + 16) + v49;
    do
    {
      if (!*(v60 + v59))
      {
        if (*(a1 + 28) == 1)
        {
          v61 = *(*(a2 + 344) + 2 * v59);
        }

        else
        {
          v61 = *(*(a2 + 328) + v59) - *(*(a2 + 320) + v59);
        }

        SliceList::add(this, v59, v61, 0, 2u);
        v49 = *(a1 + 24);
      }

      ++v59;
    }

    while (v59 < v49);
  }

  return v31;
}

void SliceList::add(SliceList *this, int a2, int a3, int a4, unsigned int a5)
{
  v5 = this + 72 * a4 + 24 * a5;
  v6 = a3 | (a2 << 16);
  v8 = *(v5 + 1);
  v7 = *(v5 + 2);
  if (v8 >= v7)
  {
    v10 = (v8 - *v5) >> 2;
    if ((v10 + 1) >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - *v5;
    v12 = v11 >> 1;
    if (v11 >> 1 <= (v10 + 1))
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v13 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(this + 72 * a4 + 24 * a5, v13);
    }

    v14 = (4 * v10);
    *v14 = v6;
    v9 = 4 * v10 + 4;
    v15 = *(v5 + 1) - *v5;
    v16 = v14 - v15;
    memcpy(v14 - v15, *v5, v15);
    v17 = *v5;
    *v5 = v16;
    *(v5 + 1) = v9;
    *(v5 + 2) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = v6;
    v9 = (v8 + 1);
  }

  *(v5 + 1) = v9;
}

uint64_t ProResHWAnalyzer::getSliceToFix(uint64_t a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  *a6 = 0;
  v12 = *a3;
  bzero(*(a1 + 16), (2 * *(a1 + 24)));
  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = 0;
    v15 = *(a1 + 16);
    do
    {
      v16 = *(a5 + 2 * v14);
      v17 = *(*(a4 + 56) + 2 * v16) - *(*(a3 + 7) + 2 * v16);
      if (v17 >= 1)
      {
        v18 = (v17 + v12);
        if (v18 > a2)
        {
          return v12;
        }

        *(v15 + v16) = 1;
        ++*a6;
        v13 = *(a1 + 24);
        v12 = v18;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return v12;
}

uint64_t ProResHWAnalyzer::stitchProResFrame(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(unsigned __int8 *a1, unsigned int a2, unsigned int a3, void *a4), void *a8)
{
  v54[2] = *MEMORY[0x29EDCA608];
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = dummyCallback;
  }

  v54[0] = a3;
  v54[1] = a5;
  v51 = 0;
  v48 = v12;
  v46 = *(a1 + 16);
  v13 = *(a2 + 4);
  v14 = v13 + 8;
  if (v12(a3, 0, v13 + 8, a8))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "frame header";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  if (*(a2 + 11) != *(a4 + 11))
  {
    __assert_rtn("stitchProResFrame", "AppleProResHWAnalyzer.cpp", 1010, "frm[0]->interlace_mode == frm[1]->interlace_mode");
  }

  v15 = *(a4 + 4);
  v16 = (a2 + 16);
  v17 = (a4 + 16);
  v52[0] = a2 + 16;
  v52[1] = a4 + 16;
  v18 = *(a2 + 40) * *(a2 + 36);
  if (v18 != *(a4 + 40) * *(a4 + 36))
  {
    v31 = "numSlicesP0 == pic[1]->height_in_mb * pic[1]->number_of_slices_per_mb_row";
    v32 = 1021;
    goto LABEL_23;
  }

  if (v18 != *(a1 + 24))
  {
    v31 = "numSlicesP0 == m_numSlices";
    v32 = 1022;
LABEL_23:
    __assert_rtn("stitchProResFrame", "AppleProResHWAnalyzer.cpp", v32, v31);
  }

  v19 = *v16 + 2 * v18;
  if (v48(&a3[v14], v13 + 8, v19, a8))
  {
    v35 = __cxa_allocate_exception(8uLL);
    *v35 = "picture header and slice table";
    __cxa_throw(v35, MEMORY[0x29EDC9468], 0);
  }

  v40 = (a2 + 16);
  v41 = v13;
  v43 = v13 + 8;
  v20 = *v16 + v14;
  v21 = *(a1 + 24);
  v22 = v15 + 8 + 2 * v21 + *v17;
  v53[0] = v20 + 2 * v21;
  v53[1] = v22;
  v42 = a3;
  v39 = v20;
  if (v21)
  {
    v23 = 0;
    v24 = 0;
    v25 = v19 + v13 + 8;
    v44 = &a3[v20];
    do
    {
      v26 = *(v46 + v24);
      v27 = *(*(v52[v26] + 40) + v23);
      v28 = v53[v26];
      if (v48((v54[v26] + v28), v25, *(*(v52[v26] + 40) + v23), a8))
      {
        v33 = __cxa_allocate_exception(8uLL);
        *v33 = "slice data";
        __cxa_throw(v33, MEMORY[0x29EDC9468], 0);
      }

      v53[v26] = v28 + v27;
      if (a7 && v26)
      {
        *&v44[v23] = __rev16(v27);
      }

      v25 = v25 + v27;
      v19 += v27;
      v53[(1 - v26)] += *(*(v52[(1 - v26)] + 40) + v23);
      ++v24;
      v23 += 2;
    }

    while (*(a1 + 24) > v24);
  }

  v50 = bswap32(v19);
  if (v48(&v50, v41 + 9, 4u, a8))
  {
    v36 = __cxa_allocate_exception(8uLL);
    *v36 = "picture size";
    __cxa_throw(v36, MEMORY[0x29EDC9468], 0);
  }

  if (v48(&v42[v39], v43 + *v40, 2 * *(a1 + 24), a8))
  {
    v37 = __cxa_allocate_exception(8uLL);
    *v37 = "slice table";
    __cxa_throw(v37, MEMORY[0x29EDC9468], 0);
  }

  v29 = v43 + v19;
  *a6 = v29;
  v51 = bswap32(v29);
  if (v48(&v51, 0, 4u, a8))
  {
    v38 = __cxa_allocate_exception(8uLL);
    *v38 = "frame size";
    __cxa_throw(v38, MEMORY[0x29EDC9468], 0);
  }

  return 0;
}

void sub_295309E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int *a19, uint64_t a20, uint64_t a21, uint64_t a22, int buf, int a24, __int128 a25)
{
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v26 = *a19;
      buf = 67109634;
      a24 = v26;
      LOWORD(a25) = 2080;
      *(&a25 + 2) = "stitchProResFrame";
      WORD5(a25) = 2080;
      *(&a25 + 12) = v25;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: write %s failed", &buf, 0x1Cu);
    }

    __cxa_end_catch();
    JUMPOUT(0x295309C9CLL);
  }

  _Unwind_Resume(a1);
}

void SliceList::sort(SliceList *this, unsigned __int16 *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = this + 72 * v6;
    do
    {
      v12 = &v11[24 * v9];
      if (a3)
      {
        v13 = *(v12 + 1);
        v14 = 126 - 2 * __clz((v13 - *v12) >> 2);
        if (v13 == *v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(*v12, v13, &v22, v15, 1);
      }

      else
      {
        v16 = *(v12 + 1);
        v17 = 126 - 2 * __clz((v16 - *v12) >> 2);
        if (v16 == *v12)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(v16, *(v12 + 1), *v12, *v12, &v23, v18, 1);
      }

      v19 = *v12;
      v20 = *(v12 + 1);
      if (*v12 != v20)
      {
        v21 = &a2[v7];
        do
        {
          *v21++ = *(v19 + 2);
          v19 += 4;
          ++v7;
        }

        while (v19 != v20);
      }

      ++v9;
    }

    while (v9 != 3);
    v8 = 0;
    v6 = 1;
  }

  while ((v10 & 1) != 0);
}

unsigned int *RiceExpComboCode<unsigned int>::decodeUnsigned(unsigned int *result, int *a2, unsigned int a3, int a4)
{
  v4 = RiceExpComboCodeCatalog[a4];
  v5 = v4 & 3;
  v6 = v4 >> 5;
  v7 = __clz(a3);
  if (v7 <= v5)
  {
    v10 = v7 + 1;
    if (v4 > 0x1F)
    {
      *a2 = v10 + v6;
      *result = (a3 << v10 >> -v6) + (v7 << v6);
    }

    else
    {
      *a2 = v10;
      *result = v7;
    }
  }

  else
  {
    v8 = (v4 >> 2) & 7;
    v9 = v8 + 2 * (v7 - (v5 + 1)) + 1;
    *a2 = v9;
    *result = ((v5 + 1) << v6) + (-1 << v8) + (a3 >> ((v5 ^ 0x1F) - v9));
    *a2 += v5 + 1;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(uint64_t result, unsigned __int16 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 2;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < v89 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= v92 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= v109 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        LOWORD(v110) = v10[3];
      }

      *v10 = v91;
      v10[2] = v92;
      v111 = v10[1];
      v10[3] = v111;
      v10[1] = v110;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (v16 >= v17 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = v14 + 1, v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, v27 >= v28) && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = v14 - 1, v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = v10[2], v47 >= v48) && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = v55 + 1, v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = v10[4], v64 >= v65) && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  LODWORD(v70) = *v15;
                  v71 = *v39;
                  if (v70 >= v71 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (v75 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      LOWORD(v76) = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    *v55 = v70;
                    v15[1] = v77;
                    v70 = v15 + 1;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      LOWORD(v70) = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v80 = *v73;
                    *v73 = *v70;
                    *v70 = v80;
                    LOWORD(v70) = *v15;
LABEL_104:
                    v81 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v81;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (v72 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v78 = v15[1];
                    if (v55[1] < v78)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v70 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    LOWORD(v78) = v15[1];
                  }

                  *v39 = v70;
                  *v15 = v71;
                  v79 = v39[1];
                  v15[1] = v79;
                  v39[1] = v78;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v79))
                  {
                    LOWORD(v70) = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                LOWORD(v66) = v55[1];
              }

              v10[4] = v56;
              *v55 = v58;
              v67 = v10[5];
              v10[5] = v66;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            LOWORD(v49) = *(v14 - 1);
          }

          v10[2] = v40;
          *v39 = v41;
          v52 = v10[3];
          v10[3] = v49;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        LOWORD(v34) = v14[1];
      }

      *v10 = v16;
      *v14 = v17;
      v36 = v10[1];
      v10[1] = v34;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (v20 < v21 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        LOWORD(v35) = v10[1];
LABEL_59:
        *v15 = v20;
        *v10 = v21;
        v50 = v15[1];
        v15[1] = v35;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v82 = *v23;
      *v23 = *v30;
      *v30 = v82;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (v32 < v33 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v83 = *(v10 - 2);
      v84 = *v10;
      if (v83 >= v84 && (v84 < v83 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v100) = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[6] = v99;
    v10[5] = v101;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v103) = v10[3];
    }

    v10[2] = v98;
    v10[4] = v102;
    v10[3] = v101;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= v104)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      LOWORD(v105) = v10[1];
    }

    *v10 = v98;
    v10[2] = v104;
    v10[1] = v101;
    v10[3] = v105;
  }

  return result;
}

unsigned __int16 *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = *result;
  if (v4 < v5 || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (v6 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (v14 >= v5 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (v8 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (v11 < v12 || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (v16 < v17 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (v19 < v20 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (v22 < v23 || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[2];
        v7 = *v5;
        if (v6 < v7 || v7 >= v6 && v5[3] < v5[1])
        {
          v8 = *(v5 + 1);
          v5[2] = v7;
          v4[1] = v5[1];
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            do
            {
              v11 = *(result + v10 - 4);
              if (v11 <= v8)
              {
                if (v11 < v8)
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                v9 = (result + v10);
                v12 = *(result + v10 - 2);
                if (v12 <= HIWORD(v8))
                {
                  goto LABEL_17;
                }
              }

              else
              {
                LOWORD(v12) = *(result + v10 - 2);
              }

              v5 -= 2;
              v13 = (result + v10);
              *v13 = v11;
              v13[1] = v12;
              v10 -= 4;
            }

            while (v10);
            v9 = result;
          }

LABEL_17:
          *v9 = v8;
        }

        v2 = v4 + 2;
        v3 += 4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < v6 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = *result;
          for (i = v3; ; i -= 2)
          {
            i[1] = v6;
            i[2] = *i;
            v6 = *(i - 3);
            if (v6 <= v8 && (v6 < v8 || *(i - 2) <= HIWORD(v7)))
            {
              break;
            }
          }

          *(i - 1) = v8;
          *i = HIWORD(v7);
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

unsigned __int16 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = HIWORD(*a1);
  v4 = *(a2 - 2);
  if (v4 > v2 || v4 >= v2 && *(a2 - 1) > v3)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v2 && (v6 < v2 || i[1] <= v3));
  }

  else
  {
    for (i = a1 + 2; i < a2; i += 2)
    {
      v16 = *i;
      if (v16 > v2 || v16 >= v2 && i[1] > v3)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v2 || v4 >= v2 && a2[1] > v3; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    LOWORD(v9) = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v2 && (v9 < v2 || i[1] <= v3));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v2;
        }

        while (v13 > v2);
      }

      while (v14 && a2[1] > v3);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v2;
  *(i - 1) = v3;
  return i;
}

_WORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned short,unsigned short> *,std::__less<void,void> &>(_WORD *a1, _WORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIWORD(*a1);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    LOWORD(v12) = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          LOWORD(v5) = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = (a2 - a1) >> 2;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v13) = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[6] = v12;
      a1[5] = v14;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v16) = a1[3];
      }

      a1[2] = v11;
      a1[4] = v15;
      a1[3] = v14;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= v17)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        LOWORD(v18) = a1[1];
      }

      *a1 = v11;
      a1[2] = v17;
      a1[1] = v14;
      result = 1;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= v21 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= v33 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOWORD(v38) = a1[3];
    }

    *a1 = v20;
    a1[2] = v21;
    v40 = a1[1];
    a1[3] = v40;
    a1[1] = v38;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < v6 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < v27 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (v28 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_64:
      v37 = a1 + 5;
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LOWORD(v39) = a1[3];
    }

    *a1 = v26;
    a1[2] = v27;
    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    a1[1] = v39;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (v34 < v26)
  {
    LOWORD(v35) = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v45;
    v49 = *v25;
    if (v48 >= v49 && (v49 < v48 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v50 = *v45;
    v51 = *v45;
    *v45 = v49;
    v45[1] = v25[1];
    v52 = v46;
    while (1)
    {
      v53 = a1 + v52;
      v54 = *(a1 + v52 + 4);
      if (v54 <= v51)
      {
        break;
      }

      LOWORD(v55) = *(v53 + 3);
LABEL_74:
      *(v53 + 4) = v54;
      *(a1 + v52 + 10) = v55;
      v52 -= 4;
      if (v52 == -8)
      {
        v56 = a1;
        goto LABEL_80;
      }
    }

    if (v54 >= v51)
    {
      v55 = *(a1 + v52 + 6);
      if (v55 > HIWORD(v50))
      {
        goto LABEL_74;
      }
    }

    v56 = (a1 + v52 + 8);
LABEL_80:
    *v56 = v51;
    v56[1] = HIWORD(v50);
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 4;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

unsigned __int16 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,std::pair<unsigned short,unsigned short> *>(char *a1, char *a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 2;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (v13 < v14 || v14 >= v13 && v12[1] < *(a1 + 1))
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = *(a1 + 1);
          *(a1 + 1) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = (a2 - 4);
      do
      {
        v17 = *a1;
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, a4, v8);
        if (v16 == v18)
        {
          *v18 = v17;
        }

        else
        {
          *v18 = *v16;
          v18[1] = v16[1];
          *v16 = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 2);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        v11 = *v8;
        if (v11 < v10 || v10 >= v11 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      if (v12 >= v13 && (v13 < v12 || v8[1] >= a4[1]))
      {
        v14 = *a4;
        v15 = HIWORD(*a4);
        *a4 = v12;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 4 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[2];
              v20 = *v16;
              if (v20 < v19 || v19 >= v20 && v16[1] < v16[3])
              {
                v16 += 2;
                v7 = v18;
              }
            }

            v21 = *v16;
            if (v21 < v14 || v21 <= v14 && v16[1] < v15)
            {
              break;
            }

            *v8 = v21;
            v8[1] = v16[1];
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v16 = v8;
LABEL_13:
        *v16 = v14;
        v16[1] = v15;
      }
    }
  }

  return result;
}

_WORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(_WORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 4 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 4);
    if (v7 < v8 || v8 >= v7 && v6[1] < *(a2 - 2))
    {
      v9 = *(a2 - 4);
      v10 = HIWORD(*(a2 - 4));
      *(a2 - 4) = v7;
      *(a2 - 2) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 4 * v5);
          v13 = *v11;
          if (v13 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            LOWORD(v14) = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 4 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(uint64_t result, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, char a7)
{
  while (2)
  {
    while (2)
    {
      while (2)
      {
        for (i = 1 - a6; ; ++i)
        {
          v14 = (a2 - a4) >> 2;
          if (v14 <= 2)
          {
            if (v14 < 2)
            {
              return;
            }

            if (v14 == 2)
            {
              v105 = *a4;
              v106 = *(a2 - 2);
              if (v105 < v106 || v106 >= v105 && *(a4 + 1) < *(a2 - 1))
              {
                *(a2 - 2) = v105;
                *a4 = v106;
                v107 = *(a2 - 1);
                *(a2 - 1) = *(a4 + 1);
                *(a4 + 1) = v107;
              }

              return;
            }

            goto LABEL_9;
          }

          switch(v14)
          {
            case 3:
              v108 = *(a2 - 2);
              v109 = *(a2 - 4);
              if (v109 < v108 || v108 >= v109 && *(a2 - 3) < *(a2 - 1))
              {
                v110 = *a4;
                if (v110 >= v109 && (v109 < v110 || *(a4 + 1) >= *(a2 - 3)))
                {
                  *(a2 - 2) = v109;
                  *(a2 - 4) = v108;
                  v117 = *(a2 - 1);
                  *(a2 - 1) = *(a2 - 3);
                  *(a2 - 3) = v117;
                  v118 = *a4;
                  if (v118 >= v108 && (v108 < v118 || *(a4 + 1) >= v117))
                  {
                    return;
                  }

                  v116 = a2 - 6;
                  *(a2 - 4) = v118;
                  *a4 = v108;
                  v111 = a4 + 2;
LABEL_175:
                  v119 = *v116;
                  *v116 = *v111;
                  *v111 = v119;
                  return;
                }

                *(a2 - 2) = v110;
                *a4 = v108;
                v111 = a4 + 2;
              }

              else
              {
                v112 = *a4;
                if (v112 >= v109 && (v109 < v112 || *(a4 + 1) >= *(a2 - 3)))
                {
                  return;
                }

                *(a2 - 4) = v112;
                *a4 = v109;
                v113 = *(a2 - 3);
                *(a2 - 3) = *(a4 + 1);
                *(a4 + 1) = v113;
                v114 = *(a2 - 4);
                v115 = *(a2 - 2);
                if (v114 >= v115 && (v115 < v114 || *(a2 - 3) >= *(a2 - 1)))
                {
                  return;
                }

                v111 = a2 - 6;
                *(a2 - 2) = v114;
                *(a2 - 4) = v115;
              }

              v116 = a2 - 2;
              goto LABEL_175;
            case 4:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(result, a2, (a2 - 4), (a2 - 4), (a2 - 8), (a2 - 8), a3, (a4 + 4));
              return;
            case 5:
              std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(result, a2, (a2 - 4), (a2 - 4), (a2 - 8), (a2 - 8), (a2 - 12), (a2 - 12));
              v94 = *a4;
              v95 = *(a2 - 8);
              if (v94 < v95 || v95 >= v94 && *(a4 + 1) < *(a2 - 7))
              {
                *(a2 - 8) = v94;
                *a4 = v95;
                v96 = *(a2 - 7);
                *(a2 - 7) = *(a4 + 1);
                *(a4 + 1) = v96;
                v97 = *(a2 - 8);
                v98 = *(a2 - 6);
                if (v97 < v98 || v98 >= v97 && *(a2 - 7) < *(a2 - 5))
                {
                  *(a2 - 6) = v97;
                  *(a2 - 8) = v98;
                  v99 = *(a2 - 5);
                  *(a2 - 5) = *(a2 - 7);
                  *(a2 - 7) = v99;
                  v100 = *(a2 - 6);
                  v101 = *(a2 - 4);
                  if (v100 < v101 || v101 >= v100 && *(a2 - 5) < *(a2 - 3))
                  {
                    *(a2 - 4) = v100;
                    *(a2 - 6) = v101;
                    v102 = *(a2 - 3);
                    *(a2 - 3) = *(a2 - 5);
                    *(a2 - 5) = v102;
                    v103 = *(a2 - 2);
                    if (v100 < v103 || v103 >= v100 && *(a2 - 3) < *(a2 - 1))
                    {
                      *(a2 - 2) = v100;
                      *(a2 - 4) = v103;
                      v104 = *(a2 - 1);
                      *(a2 - 1) = *(a2 - 3);
                      *(a2 - 3) = v104;
                    }
                  }
                }
              }

              return;
          }

LABEL_9:
          if (v14 <= 23)
          {
            if (a7)
            {
              std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, a3, a4);
            }

            else
            {
              std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, a3, a4);
            }

            return;
          }

          if (i == 1)
          {
            if (a2 != a4)
            {
              std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, a3, a4, a3, a4, a5);
            }

            return;
          }

          v15 = ((a2 - a4) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
          v16 = &a2[-v15];
          if (v14 >= 0x81)
          {
            v17 = *(v16 - 2);
            v18 = *(a2 - 2);
            if (v17 < v18 || v18 >= v17 && *(v16 - 1) < *(a2 - 1))
            {
              v19 = *a4;
              if (v19 < v17 || v17 >= v19 && *(a4 + 1) < *(v16 - 1))
              {
                *(a2 - 2) = v19;
                *a4 = v18;
                v20 = a2 - 2;
              }

              else
              {
                *(a2 - 2) = v17;
                v20 = v16 - 2;
                v35 = *(v16 - 1);
                *(v16 - 2) = v18;
                v36 = *(a2 - 1);
                *(a2 - 1) = v35;
                *(v16 - 1) = v36;
                v37 = *a4;
                v38 = *(v16 - 2);
                if (v37 >= v38 && (v38 < v37 || *(a4 + 1) >= v36))
                {
                  goto LABEL_34;
                }

                *(v16 - 2) = v37;
                *a4 = v38;
              }

              v27 = a4 + 2;
            }

            else
            {
              v25 = *a4;
              if (v25 >= v17 && (v17 < v25 || *(a4 + 1) >= *(v16 - 1)) || (*(v16 - 2) = v25, *a4 = v17, v27 = v16 - 2, v26 = *(v16 - 1), *(v16 - 1) = *(a4 + 1), *(a4 + 1) = v26, v28 = *(v16 - 2), v29 = *(a2 - 2), v28 >= v29) && (v29 < v28 || *v27 >= *(a2 - 1)))
              {
LABEL_34:
                v40 = *v16;
                v41 = *(a2 - 4);
                if (v40 < v41 || v41 >= v40 && *(v16 + 1) < *(a2 - 3))
                {
                  v42 = *(a4 + 2);
                  if (v42 < v40 || v40 >= v42 && *(a4 + 3) < *(v16 + 1))
                  {
                    *(a2 - 4) = v42;
                    *(a4 + 2) = v41;
                    v43 = a2 - 6;
                  }

                  else
                  {
                    *(a2 - 4) = v40;
                    v43 = v16 + 2;
                    v53 = *(v16 + 1);
                    *v16 = v41;
                    v54 = *(a2 - 3);
                    *(a2 - 3) = v53;
                    *(v16 + 1) = v54;
                    v55 = *(a4 + 2);
                    v56 = *v16;
                    if (v55 >= v56 && (v56 < v55 || *(a4 + 3) >= v54))
                    {
                      goto LABEL_53;
                    }

                    *v16 = v55;
                    *(a4 + 2) = v56;
                  }

                  v46 = a4 + 6;
                }

                else
                {
                  v44 = *(a4 + 2);
                  if (v44 >= v40 && (v40 < v44 || *(a4 + 3) >= *(v16 + 1)) || (*v16 = v44, *(a4 + 2) = v40, v46 = v16 + 2, v45 = *(v16 + 1), *(v16 + 1) = *(a4 + 3), *(a4 + 3) = v45, v47 = *v16, v48 = *(a2 - 4), v47 >= v48) && (v48 < v47 || *v46 >= *(a2 - 3)))
                  {
LABEL_53:
                    v58 = &a2[-v15 - 4];
                    v59 = *(v58 - 2);
                    v60 = *(a2 - 6);
                    if (v59 < v60 || v60 >= v59 && *(v58 - 1) < *(a2 - 5))
                    {
                      v61 = *(a4 + 4);
                      if (v61 < v59 || v59 >= v61 && *(a4 + 5) < *(v58 - 1))
                      {
                        *(a2 - 6) = v61;
                        *(a4 + 4) = v60;
                        v62 = a2 - 10;
                      }

                      else
                      {
                        *(a2 - 6) = v59;
                        v62 = v58 - 2;
                        v68 = *(v58 - 1);
                        *(v58 - 2) = v60;
                        v69 = *(a2 - 5);
                        *(a2 - 5) = v68;
                        *(v58 - 1) = v69;
                        v70 = *(a4 + 4);
                        v71 = *(v58 - 2);
                        if (v70 >= v71 && (v71 < v70 || *(a4 + 5) >= v69))
                        {
                          goto LABEL_67;
                        }

                        *(v58 - 2) = v70;
                        *(a4 + 4) = v71;
                      }

                      v65 = a4 + 10;
                    }

                    else
                    {
                      v63 = *(a4 + 4);
                      if (v63 >= v59 && (v59 < v63 || *(a4 + 5) >= *(v58 - 1)) || (*(v58 - 2) = v63, *(a4 + 4) = v59, v65 = v58 - 2, v64 = *(v58 - 1), *(v58 - 1) = *(a4 + 5), *(a4 + 5) = v64, v66 = *(v58 - 2), v67 = *(a2 - 6), v66 >= v67) && (v67 < v66 || *v65 >= *(a2 - 5)))
                      {
LABEL_67:
                        v73 = *(v16 - 2);
                        v74 = *v16;
                        if (v73 < v74 || v74 >= v73 && *(v16 - 1) < *(v16 + 1))
                        {
                          v75 = *(v58 - 2);
                          if (v75 < v73 || v73 >= v75 && *(v58 - 1) < *(v16 - 1))
                          {
                            *v16 = v75;
                            *(v58 - 2) = v74;
                            v76 = v16 + 2;
                          }

                          else
                          {
                            *v16 = v73;
                            v76 = v16 - 2;
                            v81 = *(v16 - 1);
                            *(v16 - 2) = v74;
                            v82 = *(v16 + 1);
                            *(v16 + 1) = v81;
                            *(v16 - 1) = v82;
                            v83 = *(v58 - 2);
                            v73 = *(v16 - 2);
                            if (v83 >= v73 && (v73 < v83 || *(v58 - 1) >= v82))
                            {
                              goto LABEL_81;
                            }

                            *(v16 - 2) = v83;
                            *(v58 - 2) = v73;
                          }

                          v79 = v58 - 2;
                        }

                        else
                        {
                          v77 = *(v58 - 2);
                          if (v77 >= v73 && (v73 < v77 || *(v58 - 1) >= *(v16 - 1)) || (*(v16 - 2) = v77, *(v58 - 2) = v73, v79 = v16 - 2, v78 = *(v16 - 1), *(v16 - 1) = *(v58 - 1), *(v58 - 1) = v78, v73 = *(v16 - 2), v80 = *v16, v73 >= v80) && (v80 < v73 || *v79 >= *(v16 + 1)))
                          {
LABEL_81:
                            v85 = *(a2 - 2);
                            *(a2 - 2) = v73;
                            *(v16 - 2) = v85;
                            v24 = a2 - 2;
                            v32 = v16 - 2;
                            goto LABEL_82;
                          }

                          *v16 = v73;
                          *(v16 - 2) = v80;
                          v76 = v16 + 2;
                        }

                        v84 = *v76;
                        *v76 = *v79;
                        *v79 = v84;
                        LOWORD(v73) = *(v16 - 2);
                        goto LABEL_81;
                      }

                      *(a2 - 6) = v66;
                      *(v58 - 2) = v67;
                      v62 = a2 - 10;
                    }

                    v72 = *v62;
                    *v62 = *v65;
                    *v65 = v72;
                    goto LABEL_67;
                  }

                  *(a2 - 4) = v47;
                  *v16 = v48;
                  v43 = a2 - 6;
                }

                v57 = *v43;
                *v43 = *v46;
                *v46 = v57;
                goto LABEL_53;
              }

              *(a2 - 2) = v28;
              *(v16 - 2) = v29;
              v20 = a2 - 2;
            }

            v39 = *v20;
            *v20 = *v27;
            *v27 = v39;
            goto LABEL_34;
          }

          v21 = *(a2 - 2);
          v22 = *(v16 - 2);
          if (v21 < v22 || v22 >= v21 && *(a2 - 1) < *(v16 - 1))
          {
            v23 = *a4;
            if (v23 < v21 || v21 >= v23 && *(a4 + 1) < *(a2 - 1))
            {
              *(v16 - 2) = v23;
              *a4 = v22;
              v24 = v16 - 2;
LABEL_46:
              v32 = a4 + 2;
              goto LABEL_82;
            }

            *(v16 - 2) = v21;
            v24 = a2 - 2;
            v49 = *(a2 - 1);
            *(a2 - 2) = v22;
            v50 = *(v16 - 1);
            *(v16 - 1) = v49;
            *(a2 - 1) = v50;
            v51 = *a4;
            v52 = *(a2 - 2);
            if (v51 < v52 || v52 >= v51 && *(a4 + 1) < v50)
            {
              *(a2 - 2) = v51;
              *a4 = v52;
              goto LABEL_46;
            }
          }

          else
          {
            v30 = *a4;
            if (v30 < v21 || v21 >= v30 && *(a4 + 1) < *(a2 - 1))
            {
              *(a2 - 2) = v30;
              *a4 = v21;
              v32 = a2 - 2;
              v31 = *(a2 - 1);
              *(a2 - 1) = *(a4 + 1);
              *(a4 + 1) = v31;
              v33 = *(a2 - 2);
              v34 = *(v16 - 2);
              if (v33 < v34 || v34 >= v33 && *v32 < *(v16 - 1))
              {
                *(v16 - 2) = v33;
                *(a2 - 2) = v34;
                v24 = v16 - 2;
LABEL_82:
                v86 = *v24;
                *v24 = *v32;
                *v32 = v86;
              }
            }
          }

          if (a7)
          {
            break;
          }

          v87 = *a2;
          v88 = *(a2 - 2);
          if (v87 < v88 || v88 >= v87 && *(a2 + 1) < *(a2 - 1))
          {
            break;
          }

          std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(result, a2, a3, a4);
          result = v89;
          a2 = v90;
          a7 = 0;
        }

        std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(a2, a4, &v121);
        v91 = v121;
        v92 = v122;
        a6 = -i;
        if (v123 != 1)
        {
LABEL_139:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,false>(result, a2, v91, v92, a5, -i, a7 & 1);
          a7 = 0;
          a2 = v92 - 4;
          result = v91;
          continue;
        }

        break;
      }

      v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(result, a2, v121, v122);
      if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>((v92 - 4), v92 - 2, a3, a4))
      {
        if (v93)
        {
          result = v91;
          a2 = v92 - 4;
          continue;
        }

        goto LABEL_139;
      }

      break;
    }

    a3 = v91;
    a4 = v92;
    if ((v93 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a4 - 4);
  v9 = *(a2 - 4);
  if (v8 < v9 || v9 >= v8 && *(a4 - 2) < *(a2 - 2))
  {
    v10 = *(a6 - 4);
    if (v10 < v8 || v8 >= v10 && *(a6 - 2) < *(a4 - 2))
    {
      *(a2 - 4) = v10;
      *(a6 - 4) = v9;
      v11 = (a2 - 2);
    }

    else
    {
      *(a2 - 4) = v8;
      v11 = (a4 - 2);
      v17 = *(a4 - 2);
      *(a4 - 4) = v9;
      v18 = *(a2 - 2);
      *(a2 - 2) = v17;
      *(a4 - 2) = v18;
      v19 = *(a6 - 4);
      v20 = *(a4 - 4);
      if (v19 >= v20 && (v20 < v19 || *(a6 - 2) >= v18))
      {
        goto LABEL_15;
      }

      *(a4 - 4) = v19;
      *(a6 - 4) = v20;
    }

    v14 = (a6 - 2);
    goto LABEL_14;
  }

  v12 = *(a6 - 4);
  if (v12 < v8 || v8 >= v12 && *(a6 - 2) < *(a4 - 2))
  {
    *(a4 - 4) = v12;
    *(a6 - 4) = v8;
    v14 = (a4 - 2);
    v13 = *(a4 - 2);
    *(a4 - 2) = *(a6 - 2);
    *(a6 - 2) = v13;
    v15 = *(a4 - 4);
    v16 = *(a2 - 4);
    if (v15 < v16 || v16 >= v15 && *v14 < *(a2 - 2))
    {
      *(a2 - 4) = v15;
      *(a4 - 4) = v16;
      v11 = (a2 - 2);
LABEL_14:
      v21 = *v11;
      *v11 = *v14;
      *v14 = v21;
    }
  }

LABEL_15:
  v22 = *(a8 - 4);
  v23 = *(a6 - 4);
  if (v22 < v23 || v23 >= v22 && *(a8 - 2) < *(a6 - 2))
  {
    *(a6 - 4) = v22;
    *(a8 - 4) = v23;
    v24 = *(a6 - 2);
    *(a6 - 2) = *(a8 - 2);
    *(a8 - 2) = v24;
    v25 = *(a6 - 4);
    v26 = *(a4 - 4);
    if (v25 < v26 || v26 >= v25 && *(a6 - 2) < *(a4 - 2))
    {
      *(a4 - 4) = v25;
      *(a6 - 4) = v26;
      v27 = *(a4 - 2);
      *(a4 - 2) = *(a6 - 2);
      *(a6 - 2) = v27;
      v28 = *(a4 - 4);
      v29 = *(a2 - 4);
      if (v28 < v29 || v29 >= v28 && *(a4 - 2) < *(a2 - 2))
      {
        *(a2 - 4) = v28;
        *(a4 - 4) = v29;
        v30 = *(a2 - 2);
        *(a2 - 2) = *(a4 - 2);
        *(a4 - 2) = v30;
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 == a4)
  {
    return;
  }

  v4 = a2 - 2;
  if (a2 - 2 == a4)
  {
    return;
  }

  v5 = 0;
  v6 = a2 - 2;
  do
  {
    v7 = v4 + 2;
    v8 = *v4;
    v10 = *(v6 - 2);
    v6 -= 2;
    v9 = v10;
    if (v10 >= v8)
    {
      if (v8 < v9)
      {
        goto LABEL_17;
      }

      v11 = v4[1];
      if (*(v4 - 1) >= v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      LOWORD(v11) = v4[1];
    }

    v12 = *(v4 - 1);
    *(v4 - 2) = v8;
    *(v4 - 1) = v11;
    if (v7 == a2)
    {
LABEL_13:
      v7 = a2;
      goto LABEL_14;
    }

    v13 = v5;
    while (1)
    {
      v14 = *(a2 + v13);
      if (v14 <= v12)
      {
        break;
      }

      LOWORD(v15) = *(a2 + v13 + 2);
LABEL_12:
      v7 += 2;
      v16 = a2 + v13;
      *(v16 - 2) = v14;
      *(v16 - 1) = v15;
      v13 += 4;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_14;
    }

    v15 = *(a2 + v13 + 2);
    if (v15 > HIWORD(v12))
    {
      goto LABEL_12;
    }

    v7 = (a2 + v13);
LABEL_14:
    *(v7 - 1) = v12;
LABEL_17:
    v5 -= 4;
    v4 = v6;
  }

  while (v6 != a4);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  if (a2 != a4)
  {
    v4 = a2 - 2;
    while (v4 != a4)
    {
      v5 = v4;
      v7 = v4 + 2;
      v6 = *v4;
      v9 = *(v4 - 2);
      v4 -= 2;
      v8 = v9;
      if (v9 < v6 || v6 >= v8 && *(v5 - 1) < v5[1])
      {
        v10 = *v4;
        v11 = *v4;
        do
        {
          do
          {
            v12 = v7;
            *(v5 - 2) = v6;
            *(v5 - 1) = *(v7 - 1);
            v7 += 2;
            v6 = *v12;
            v5 = v12;
          }

          while (v6 > v11);
          if (v6 < v11)
          {
            break;
          }

          v5 = v12;
        }

        while (v12[1] > HIWORD(v10));
        *(v12 - 2) = v11;
        *(v12 - 1) = HIWORD(v10);
      }
    }
  }
}

void std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = a2 - 2;
  v5 = *(a2 - 1);
  v6 = v5;
  v7 = HIWORD(v5);
  v8 = *a4;
  if (v8 <= v5 && (v8 < v5 || a4[1] <= v7))
  {
    while (v4 > a4)
    {
      v12 = *(v4 - 2);
      if (v12 > v5 || v12 >= v5 && *(v4 - 1) > v7)
      {
        break;
      }

      v4 -= 2;
    }
  }

  else
  {
    v9 = *(a2 - 4);
    if (v9 <= v6)
    {
      v10 = a2 - 6;
      do
      {
        if (v9 >= v6 && v10[3] > v7)
        {
          break;
        }

        v11 = *v10;
        v10 -= 2;
        v9 = v11;
      }

      while (v11 <= v6);
      v4 = v10 + 4;
    }
  }

  if (v4 > a4)
  {
    do
    {
      do
      {
        a4 += 2;
        v13 = *(a4 - 2);
      }

      while (v13 > v6);
    }

    while (v13 >= v6 && *(a4 - 1) > v7);
  }

  if (a4 >= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = v4;
    do
    {
      v15 = *(v14 - 2);
      v14 -= 2;
      *v14 = *(a4 - 2);
      *(a4 - 2) = v15;
      v16 = v14[1];
      v14[1] = *(a4 - 1);
      *(a4 - 1) = v16;
      v17 = *(v14 - 2);
      if (v17 <= v6)
      {
        v18 = v4 - 6;
        do
        {
          if (v17 >= v6 && v18[3] > v7)
          {
            break;
          }

          v19 = *v18;
          v18 -= 2;
          v17 = v19;
        }

        while (v19 <= v6);
        v14 = v18 + 4;
      }

      do
      {
        do
        {
          a4 += 2;
          v20 = *(a4 - 2);
        }

        while (v20 > v6);
      }

      while (v20 >= v6 && *(a4 - 1) > v7);
      v4 = v14;
    }

    while (a4 < v14);
  }

  if (a2 != v14 + 2)
  {
    *(a2 - 2) = *v14;
    *(a2 - 1) = v14[1];
  }

  *v14 = v6;
  v14[1] = v7;
}

void std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::__less<void,void> &>(unint64_t a1@<X1>, unsigned __int16 *a2@<X3>, uint64_t a3@<X8>)
{
  v3 = a1 - 4;
  v4 = *(a1 - 4);
  v5 = HIWORD(*(a1 - 4));
  for (i = a1; ; i -= 4)
  {
    v7 = *(v3 - 4);
    if (v7 >= v4 && (v7 > v4 || *(v3 - 2) >= v5))
    {
      break;
    }

    v3 -= 4;
  }

  if (a1 == i)
  {
    if (v3 > a2)
    {
      while (1)
      {
        v9 = *a2;
        a2 += 2;
        v8 = v9;
        if (v9 < v4)
        {
          break;
        }

        if (v8 <= v4)
        {
          if (*(a2 - 1) < v5 || a2 >= v3)
          {
            break;
          }
        }

        else if (a2 >= v3)
        {
          break;
        }
      }
    }
  }

  else
  {
    do
    {
      v12 = *a2;
      a2 += 2;
      v11 = v12;
    }

    while (v12 >= v4 && (v11 > v4 || *(a2 - 1) >= v5));
  }

  if (a2 < v3)
  {
    v13 = v3;
    v14 = a2;
    do
    {
      v15 = *(v13 - 4);
      *(v13 - 4) = *(v14 - 2);
      *(v14 - 2) = v15;
      v16 = *(v13 - 2);
      *(v13 - 2) = *(v14 - 1);
      *(v14 - 1) = v16;
      i = v13;
      for (v13 -= 4; ; v13 -= 4)
      {
        v17 = *(v13 - 4);
        if (v17 >= v4 && (v17 > v4 || *(v13 - 2) >= v5))
        {
          break;
        }

        i -= 4;
      }

      do
      {
        v19 = *v14;
        v14 += 2;
        v18 = v19;
      }

      while (v19 >= v4 && (v18 > v4 || *(v14 - 1) >= v5));
    }

    while (v14 < v13);
  }

  if (a1 != i)
  {
    *(a1 - 4) = *(i - 4);
    *(a1 - 2) = *(i - 2);
  }

  *(i - 4) = v4;
  *(i - 2) = v5;
  *a3 = i;
  *(a3 + 8) = i;
  *(a3 + 16) = a2 >= v3;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4)
{
  v6 = (a2 - a4) >> 2;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), (a2 - 6), (a2 - 6));
          v10 = *a4;
          v11 = *(a2 - 8);
          if (v10 < v11 || v11 >= v10 && a4[1] < *(a2 - 7))
          {
            *(a2 - 8) = v10;
            *a4 = v11;
            v12 = *(a2 - 7);
            *(a2 - 7) = a4[1];
            a4[1] = v12;
            v13 = *(a2 - 8);
            v14 = *(a2 - 6);
            if (v13 < v14 || v14 >= v13 && *(a2 - 7) < *(a2 - 5))
            {
              *(a2 - 6) = v13;
              *(a2 - 8) = v14;
              v15 = *(a2 - 5);
              *(a2 - 5) = *(a2 - 7);
              *(a2 - 7) = v15;
              v16 = *(a2 - 6);
              v17 = *(a2 - 4);
              if (v16 < v17 || v17 >= v16 && *(a2 - 5) < *(a2 - 3))
              {
                *(a2 - 4) = v16;
                *(a2 - 6) = v17;
                v18 = *(a2 - 3);
                *(a2 - 3) = *(a2 - 5);
                *(a2 - 5) = v18;
                v19 = *(a2 - 2);
                if (v16 < v19 || v19 >= v16 && *(a2 - 3) < *(a2 - 1))
                {
                  *(a2 - 2) = v16;
                  *(a2 - 4) = v19;
                  v20 = *(a2 - 1);
                  *(a2 - 1) = *(a2 - 3);
                  *(a2 - 3) = v20;
                }
              }
            }
          }

          goto LABEL_43;
        }

        goto LABEL_17;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,0>(a1, a2, (a2 - 2), (a2 - 2), (a2 - 4), (a2 - 4), a3, (a4 + 2));
LABEL_43:
      v42 = 1;
      return v42 & 1;
    }

    v21 = *(a2 - 2);
    v22 = *(a2 - 4);
    if (v22 < v21 || v21 >= v22 && *(a2 - 3) < *(a2 - 1))
    {
      v23 = *a4;
      if (v23 >= v22 && (v22 < v23 || a4[1] >= *(a2 - 3)))
      {
        *(a2 - 2) = v22;
        *(a2 - 4) = v21;
        v39 = *(a2 - 1);
        *(a2 - 1) = *(a2 - 3);
        *(a2 - 3) = v39;
        v40 = *a4;
        if (v40 >= v21 && (v21 < v40 || a4[1] >= v39))
        {
          goto LABEL_43;
        }

        v34 = a2 - 3;
        *(a2 - 4) = v40;
        *a4 = v21;
        v24 = a4 + 1;
        goto LABEL_42;
      }

      *(a2 - 2) = v23;
      *a4 = v21;
      v24 = a4 + 1;
    }

    else
    {
      v30 = *a4;
      if (v30 >= v22 && (v22 < v30 || a4[1] >= *(a2 - 3)))
      {
        goto LABEL_43;
      }

      *(a2 - 4) = v30;
      *a4 = v22;
      v31 = *(a2 - 3);
      *(a2 - 3) = a4[1];
      a4[1] = v31;
      v32 = *(a2 - 4);
      v33 = *(a2 - 2);
      if (v32 >= v33 && (v33 < v32 || *(a2 - 3) >= *(a2 - 1)))
      {
        goto LABEL_43;
      }

      v24 = a2 - 3;
      *(a2 - 2) = v32;
      *(a2 - 4) = v33;
    }

    v34 = a2 - 1;
LABEL_42:
    v41 = *v34;
    *v34 = *v24;
    *v24 = v41;
    goto LABEL_43;
  }

  if (v6 < 2)
  {
    goto LABEL_43;
  }

  if (v6 == 2)
  {
    v7 = *a4;
    v8 = *(a2 - 2);
    if (v7 < v8 || v8 >= v7 && a4[1] < *(a2 - 1))
    {
      *(a2 - 2) = v7;
      *a4 = v8;
      v9 = *(a2 - 1);
      *(a2 - 1) = a4[1];
      a4[1] = v9;
    }

    goto LABEL_43;
  }

LABEL_17:
  v25 = a2 - 4;
  v26 = *(a2 - 4);
  v27 = *(a2 - 2);
  if (v26 < v27 || v27 >= v26 && *(a2 - 3) < *(a2 - 1))
  {
    v28 = *(a2 - 6);
    if (v28 < v26 || v26 >= v28 && *(a2 - 5) < *(a2 - 3))
    {
      *(a2 - 2) = v28;
      *(a2 - 6) = v27;
      v29 = a2 - 1;
    }

    else
    {
      *(a2 - 2) = v26;
      *(a2 - 4) = v27;
      v44 = *(a2 - 1);
      *(a2 - 1) = *(a2 - 3);
      *(a2 - 3) = v44;
      v45 = *(a2 - 6);
      if (v45 >= v27 && (v27 < v45 || *(a2 - 5) >= v44))
      {
        goto LABEL_51;
      }

      v29 = a2 - 3;
      *(a2 - 4) = v45;
      *(a2 - 6) = v27;
    }

    v38 = a2 - 5;
  }

  else
  {
    v35 = *(a2 - 6);
    if (v35 >= v26 && (v26 < v35 || *(a2 - 5) >= *(a2 - 3)))
    {
      goto LABEL_51;
    }

    *(a2 - 4) = v35;
    *(a2 - 6) = v26;
    v36 = *(a2 - 3);
    *(a2 - 3) = *(a2 - 5);
    *(a2 - 5) = v36;
    v37 = *(a2 - 2);
    if (v35 >= v37 && (v37 < v35 || *(a2 - 3) >= *(a2 - 1)))
    {
      goto LABEL_51;
    }

    v38 = a2 - 3;
    *(a2 - 2) = v35;
    *(a2 - 4) = v37;
    v29 = a2 - 1;
  }

  v46 = *v29;
  *v29 = *v38;
  *v38 = v46;
LABEL_51:
  v47 = a2 - 6;
  if (a2 - 6 == a4)
  {
LABEL_69:
    v59 = 1;
  }

  else
  {
    v48 = 0;
    v49 = a2 - 6;
    while (1)
    {
      v51 = *(v49 - 2);
      v49 -= 2;
      v50 = v51;
      v52 = *(v25 - 2);
      if (v51 < v52 || v52 >= v50 && *(v47 - 1) < *(v25 - 1))
      {
        v53 = *(v47 - 1);
        *(v47 - 2) = v52;
        *(v47 - 1) = *(v25 - 1);
        if (v25 != a2)
        {
          v54 = v25;
          while (1)
          {
            v56 = *v54;
            v54 += 2;
            v55 = v56;
            v57 = v56 >= v53;
            if (v56 <= v53)
            {
              if (!v57)
              {
                break;
              }

              v58 = v25[1];
              if (v58 <= HIWORD(v53))
              {
                break;
              }
            }

            else
            {
              LOWORD(v58) = v25[1];
            }

            *(v25 - 2) = v55;
            *(v25 - 1) = v58;
            v25 = v54;
            if (v54 == a2)
            {
              goto LABEL_67;
            }
          }
        }

        v54 = v25;
LABEL_67:
        *(v54 - 1) = v53;
        if (++v48 == 8)
        {
          break;
        }
      }

      v25 = v47;
      v47 = v49;
      if (v49 == a4)
      {
        goto LABEL_69;
      }
    }

    v59 = 0;
    LOBYTE(v47) = v49 == a4;
  }

  v42 = v59 | v47;
  return v42 & 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - a4;
  if (a2 != a4)
  {
    a5 = a3;
    v14 = v8 >> 2;
    v15 = __OFSUB__(v8 >> 2, 2);
    v16 = (v8 >> 2) - 2;
    if (v16 < 0 == v15)
    {
      v17 = v16 >> 1;
      v18 = v17 + 1;
      v19 = a2 - 4 * v17;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14, v19, v19);
        v19 += 4;
        --v18;
      }

      while (v18);
    }

    if (a4 != a6)
    {
      v20 = a4;
      v21 = a4;
      do
      {
        v23 = *(v21 - 4);
        v21 -= 4;
        v22 = v23;
        v24 = *(a2 - 4);
        if (v23 < v24 || v24 >= v22 && *(v20 - 2) < *(a2 - 2))
        {
          *(v20 - 4) = v24;
          *(a2 - 4) = v22;
          v25 = *(v20 - 2);
          *(v20 - 2) = *(a2 - 2);
          *(a2 - 2) = v25;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14, a1, a2);
        }

        v20 = v21;
      }

      while (v21 != a6);
    }

    if (v14 >= 2)
    {
      v26 = a4 + 4;
      do
      {
        v27 = *(a2 - 4);
        std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, a7, v14);
        if (v26 == v29)
        {
          *(v29 - 4) = v27;
        }

        else
        {
          *(v29 - 4) = *(v26 - 4);
          *(v29 - 2) = *(v26 - 2);
          *(v26 - 4) = v27;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(a1, a2, v28, (v29 - 4), a7, (a2 - (v29 - 4)) >> 2);
        }

        v26 += 4;
      }

      while (v14-- > 2);
    }
  }

  return a5;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v6 = a2 - a6;
    v7 = (a4 - 2) >> 1;
    if (v7 >= (a2 - a6) >> 2)
    {
      v8 = v6 >> 1;
      v9 = (v6 >> 1) | 1;
      v10 = a2 - 4 * v9;
      v11 = v8 + 2;
      if (v8 + 2 < a4 && ((v12 = v10 - 4, v13 = *(v10 - 4), v14 = *(v10 - 8), v13 < v14) || v14 >= v13 && *(v10 - 2) < *(v10 - 6)))
      {
        v9 = v11;
      }

      else
      {
        v12 = a2 - 4 * v9;
      }

      v15 = *(v12 - 4);
      v16 = *(a6 - 4);
      if (v15 >= v16 && (v16 < v15 || *(v12 - 2) >= *(a6 - 2)))
      {
        v17 = *(a6 - 4);
        v18 = HIWORD(*(a6 - 4));
        *(a6 - 4) = v15;
        *(a6 - 2) = *(v12 - 2);
        if (v7 >= v9)
        {
          while (1)
          {
            v20 = 2 * v9;
            v9 = (2 * v9) | 1;
            v21 = a2 - 4 * v9;
            v22 = v20 + 2;
            if (v20 + 2 < a4 && ((v19 = v21 - 4, v23 = *(v21 - 4), v24 = *(v21 - 8), v23 < v24) || v24 >= v23 && *(v21 - 2) < *(v21 - 6)))
            {
              v9 = v22;
            }

            else
            {
              v19 = a2 - 4 * v9;
            }

            v25 = *(v19 - 4);
            if (v25 < v17 || v25 <= v17 && *(v19 - 2) < v18)
            {
              break;
            }

            *(v12 - 4) = v25;
            *(v12 - 2) = *(v19 - 2);
            v12 = v19;
            if (v7 < v9)
            {
              goto LABEL_14;
            }
          }
        }

        v19 = v12;
LABEL_14:
        *(v19 - 4) = v17;
        *(v19 - 2) = v18;
      }
    }
  }
}

void std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  do
  {
    v5 = a2;
    a2 += 4 * ~v4;
    v6 = 2 * v4;
    v4 = (2 * v4) | 1;
    v7 = v6 + 2;
    if (v7 < a4)
    {
      v8 = *(a2 - 4);
      v9 = *(a2 - 8);
      if (v8 < v9 || v9 >= v8 && *(a2 - 2) < *(a2 - 6))
      {
        a2 -= 4;
        v4 = v7;
      }
    }

    *(v5 - 4) = *(a2 - 4);
    *(v5 - 2) = *(a2 - 2);
  }

  while (v4 <= (a4 - 2) / 2);
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::reverse_iterator<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6 - 2;
  if (a6 >= 2)
  {
    v7 = v6 >> 1;
    v8 = a2 - 4 * (v6 >> 1);
    v9 = *(v8 - 4);
    v10 = *a4;
    if (v9 < v10 || v10 >= v9 && *(v8 - 2) < a4[1])
    {
      v11 = *a4;
      v12 = HIWORD(*a4);
      *a4 = v9;
      a4[1] = *(v8 - 2);
      if (v6 >= 2)
      {
        v13 = a2 - 4 * (v6 >> 1);
        while (1)
        {
          v14 = v7 - 1;
          v7 = (v7 - 1) >> 1;
          v8 = a2 - 4 * v7;
          v15 = *(v8 - 4);
          if (v15 >= v11 && (v15 > v11 || *(v8 - 2) >= v12))
          {
            break;
          }

          *(v13 - 4) = v15;
          *(v13 - 2) = *(v8 - 2);
          v13 = a2 - 4 * v7;
          if (v14 <= 1)
          {
            goto LABEL_14;
          }
        }

        v8 = v13;
      }

LABEL_14:
      *(v8 - 4) = v11;
      *(v8 - 2) = v12;
    }
  }
}

uint64_t ProResEncoder_CreateInstance(int a1, uint64_t a2, CFTypeRef *a3)
{
  v75 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDB8ED8];
  v6 = CFUUIDCreate(*MEMORY[0x29EDB8ED8]);
  v7 = *&CFUUIDGetUUIDBytes(v6);
  CFRelease(v6);
  v8 = 2;
  v9 = 3;
  if (a1 <= 1634755431)
  {
    if (a1 != 1634743400 && a1 != 1634743416)
    {
      goto LABEL_19;
    }
  }

  else if ((a1 - 1634755432) > 0xB || ((1 << (a1 - 104)) & 0x8C1) == 0)
  {
    if (a1 == 1634759272 || a1 == 1634759278)
    {
      v8 = 3;
      v9 = 4;
      goto LABEL_9;
    }

LABEL_19:
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *&buf[4] = v7;
      LOWORD(v54) = 2080;
      *(&v54 + 2) = "ProResEncoder_CreateInstance";
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): AppleProResHW Encoder cannot encode unsupported codecType", buf, 0x12u);
    }

    v10 = 4294954396;
LABEL_12:
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *&buf[4] = -1;
      LOWORD(v54) = 2080;
      *(&v54 + 2) = "ProResEncoder_CreateInstance";
      WORD5(v54) = 1024;
      HIDWORD(v54) = v10;
      v11 = MEMORY[0x29EDCA988];
LABEL_38:
      _os_log_impl(&dword_2952FC000, v11, OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): returning err = %d\n", buf, 0x18u);
      return v10;
    }

    return v10;
  }

LABEL_9:
  kdebug_trace();
  VTVideoEncoderGetClassID();
  if (CMDerivedObjectCreate())
  {
    v10 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CreateInstance_cold_1();
    }

    goto LABEL_12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  bzero(DerivedStorage, 0x3E0uLL);
  *(DerivedStorage + 640) = 33686017;
  *(DerivedStorage + 648) = 2;
  *(DerivedStorage + 653) = 0;
  *(DerivedStorage + 664) = 1;
  *(DerivedStorage + 673) = 1;
  *(DerivedStorage + 560) = 0x3F9000003F800000;
  *(DerivedStorage + 464) = -1;
  *(DerivedStorage + 724) = 0;
  *(DerivedStorage + 928) = 0xFFFFFFFF00000000;
  *(DerivedStorage + 668) = v9;
  *(DerivedStorage + 481) = 0;
  *(DerivedStorage + 662) = 1;
  *(DerivedStorage + 676) = -1;
  *(DerivedStorage + 617) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(DerivedStorage + 944) = _D0;
  *(DerivedStorage + 456) = v8;
  *(DerivedStorage + 448) = a1;
  v18 = (DerivedStorage + 988);
  *(DerivedStorage + 988) = v7;
  printCodecType(a1, v7);
  Connection = createConnection(*(DerivedStorage + 456), (DerivedStorage + 400), *(DerivedStorage + 988));
  if (Connection)
  {
    v10 = Connection;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CreateInstance_cold_2();
    }
  }

  else
  {
    v20 = *(DerivedStorage + 448);
    v21 = *MEMORY[0x29EDBCD58];
    *buf = *MEMORY[0x29EDBCDE0];
    *&v54 = v21;
    v22 = *MEMORY[0x29EDBCDE8];
    *(&v54 + 1) = *MEMORY[0x29EDBCDD8];
    v55 = v22;
    v23 = *MEMORY[0x29EDBCD90];
    v56 = *MEMORY[0x29EDBCDC8];
    v57 = v23;
    v24 = *MEMORY[0x29EDBCD40];
    v58 = *MEMORY[0x29EDBCD98];
    v59 = v24;
    v25 = *MEMORY[0x29EDBCD60];
    v60 = *MEMORY[0x29EDBCD78];
    v61 = v25;
    v26 = *MEMORY[0x29EDB96C0];
    v62 = *MEMORY[0x29EDBCD70];
    v63 = v26;
    v64 = *MEMORY[0x29EDBCDB0];
    v65 = @"ProResHW_TestSettings";
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *values = 0u;
    v38 = 0u;
    if ((v20 & 0xFFFFFFEF) == 0x61703468)
    {
      v27 = *MEMORY[0x29EDBCD38];
      *&v66 = *MEMORY[0x29EDBCDA8];
      *(&v66 + 1) = v27;
      v28 = *MEMORY[0x29EDBCDD0];
      *&v67 = @"kVTCodecPropertyKey_AlphaMode";
      *(&v67 + 1) = v28;
      v29 = 18;
    }

    else
    {
      v29 = 14;
    }

    *&buf[8 * v29] = *MEMORY[0x29EDBCD48];
    v30 = CFDictionaryCreate(v5, 0, 0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      do
      {
        values[v32++] = v30;
      }

      while (v29 >= v32);
      v33 = CFDictionaryCreate(v5, buf, values, v29 | 1u, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      *(DerivedStorage + 440) = v33;
      if (!v33 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_CreateInstance_cold_3();
      }

      CFRelease(v31);
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CreateInstance_cold_4();
    }

    v10 = 0;
    *a3 = 0;
  }

  kdebug_trace();
  if (v10)
  {
    v34 = *(DerivedStorage + 400);
    if (v34)
    {
      closeUserClient(v34, *v18);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v35 = *v18;
      *buf = 67109634;
      *&buf[4] = v35;
      LOWORD(v54) = 2080;
      *(&v54 + 2) = "ProResEncoder_CreateInstance";
      WORD5(v54) = 1024;
      HIDWORD(v54) = v10;
      v11 = MEMORY[0x29EDCA988];
      goto LABEL_38;
    }
  }

  return v10;
}

uint64_t ProResEncoder_SetTestCallback(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *a2;
    *(DerivedStorage + 608) = *(a2 + 2);
    *(DerivedStorage + 592) = v4;
  }

  return 0;
}

__CFDictionary *createFormatDescriptionExtensions(__CVBuffer *a1, uint64_t a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    valuePtr = 1;
    v8 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB95D8], v8);
    CFRelease(v8);
    valuePtr = 0;
    v9 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92D8], v9);
    CFRelease(v9);
    valuePtr = 1023;
    v10 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92D0], v10);
    CFRelease(v10);
    v11 = CVBufferCopyAttachment(a1, *MEMORY[0x29EDB9558], 0);
    if (v11)
    {
      Copy = CFDataCreateCopy(v6, v11);
    }

    else
    {
      if (*(a2 + 653) != 1)
      {
        goto LABEL_9;
      }

      Copy = CFDataCreate(v6, (a2 + 654), 8);
    }

    v13 = Copy;
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92A8], Copy);
    CFRelease(v13);
LABEL_9:
    v14 = *(a2 + 448);
    if (v14 > 1634755438)
    {
      if (v14 > 1634759271)
      {
        if (v14 == 1634759272)
        {
          v15 = @"Apple ProRes RAW HQ";
        }

        else
        {
          if (v14 != 1634759278)
          {
            goto LABEL_29;
          }

          v15 = @"Apple ProRes RAW";
        }
      }

      else if (v14 == 1634755439)
      {
        v15 = @"Apple ProRes 422 Proxy";
      }

      else
      {
        if (v14 != 1634755443)
        {
          goto LABEL_29;
        }

        v15 = @"Apple ProRes 422 LT";
      }
    }

    else if (v14 > 1634755431)
    {
      if (v14 == 1634755432)
      {
        v15 = @"Apple ProRes 422 HQ";
      }

      else
      {
        if (v14 != 1634755438)
        {
          goto LABEL_29;
        }

        v15 = @"Apple ProRes 422";
      }
    }

    else if (v14 == 1634743400)
    {
      v15 = @"Apple ProRes 4444";
    }

    else
    {
      if (v14 != 1634743416)
      {
        goto LABEL_29;
      }

      v15 = @"Apple ProRes 4444 XQ";
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92B8], v15);
LABEL_29:
    if (!a3)
    {
      goto LABEL_45;
    }

    valuePtr = 32;
    v16 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92B0], v16);
    CFRelease(v16);
    if ((*(a2 + 481) & 1) == 0)
    {
      v17 = CVBufferCopyAttachment(a1, *MEMORY[0x29EDB9540], 0);
      if (v17)
      {
        v18 = v17;
        if (CFEqual(v17, *MEMORY[0x29EDB9550]))
        {
          v19 = 1;
        }

        else
        {
          v19 = 2 * (CFEqual(v18, *MEMORY[0x29EDB9548]) != 0);
        }

        if (*(a2 + 476) == v19)
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            v20 = *(a2 + 988);
            *buf = 67109634;
            v28 = v20;
            v29 = 2080;
            v30 = "createFormatDescriptionExtensions";
            v31 = 1024;
            v32 = v19;
            _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Invalid/Unsupported attachement for kCVImageBufferAlphaChannelModeKey, previously stored %d", buf, 0x18u);
          }
        }

        else
        {
          *(a2 + 476) = v19;
        }

        CFRelease(v18);
      }
    }

    v21 = *(a2 + 476);
    if (v21 == 1)
    {
      v22 = MEMORY[0x29EDB9280];
    }

    else
    {
      if (v21 != 2)
      {
        goto LABEL_45;
      }

      v22 = MEMORY[0x29EDB9278];
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x29EDB92A0], *v22);
LABEL_45:
    v23 = CVBufferCopyAttachment(a1, *MEMORY[0x29EDB95E8], 0);
    if (v23)
    {
      v24 = v23;
      if (CFEqual(v23, *MEMORY[0x29EDB95F0]))
      {
        *(a2 + 675) = 1;
      }

      CFRelease(v24);
    }

    return Mutable;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    createFormatDescriptionExtensions();
  }

  return Mutable;
}

uint64_t ProResEncoder_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 536);
    if (*(DerivedStorage + 724))
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || (v6 = *(DerivedStorage + 104)) == 0)
    {
      NumSkipP2Toggled = 0;
      v9 = 0;
    }

    else
    {
      v7 = (ProResFrameReceiver::getNumDoubleEncodeFrames(v6) / v4) * 100.0;
      NumSkipP2Toggled = ProResFrameReceiver::getNumSkipP2Toggled(*(v3 + 104));
      v9 = v7;
    }

    v10 = *(v3 + 104);
    if (v10)
    {
      if (v4)
      {
        NumFramesOverTargetSize = ProResFrameReceiver::getNumFramesOverTargetSize(v10);
        v12 = (ProResFrameReceiver::getSumOfFramesOvershootPerc(*(v3 + 104)) / NumFramesOverTargetSize);
        if (NumFramesOverTargetSize)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = ((NumFramesOverTargetSize / v4) * 100.0);
        v10 = *(v3 + 104);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      HasHWError = ProResFrameReceiver::getHasHWError(v10);
      IsNonCompliant = ProResFrameReceiver::getIsNonCompliant(*(v3 + 104));
    }

    else
    {
      v13 = 0;
      v14 = 0;
      IsNonCompliant = 0;
      HasHWError = 0;
    }

    ProResEncoder_Finalize(a1);
    result = 0;
    if ((*(v3 + 616) & 1) == 0 && v4)
    {
      if ((*(v3 + 984) & 1) == 0)
      {
        v32 = NumSkipP2Toggled;
        v33 = v9;
        FrameRateCode = GetFrameRateCode(*(v3 + 488), *(v3 + 484));
        getRtMpeStr(1, *(v3 + 648), *(v3 + 652), &__p);
        v18 = *(v3 + 512);
        v19 = *(v3 + 516);
        v20 = *(v3 + 448);
        v21 = *(v3 + 548);
        v22 = *(v3 + 452);
        v23 = *(v3 + 724);
        v24 = *(v3 + 675);
        v25 = *(v3 + 988);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v28 = *(v3 + 448);
          v29 = *(v3 + 516);
          v30 = *(v3 + 512);
          v26 = *(v3 + 452);
          v27 = *(v3 + 548);
          std::string::__init_copy_ctor_external(&v34, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          v21 = v27;
          v20 = v28;
          v22 = v26;
          v19 = v29;
          v18 = v30;
        }

        else
        {
          v34 = __p;
        }

        reportEncodeSessionInfo(v18, v19, v20, v21, v22, FrameRateCode, v23 != 0, v33, v32, v14, v13, v24, v4, v25, HasHWError, IsNonCompliant, &v34);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        *(v3 + 984) = 1;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_Invalidate();
    }

    return 4294954384;
  }

  return result;
}

void sub_29530E50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProResEncoder_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ProResEncoder_CompleteFrames(a1);
  DestroyFrameInfoQueue(DerivedStorage + 112);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 424);
  if (v4)
  {
    CVPixelBufferPoolFlush(v4, 1uLL);
    CVPixelBufferPoolRelease(*(DerivedStorage + 424));
    *(DerivedStorage + 424) = 0;
  }

  if (*(DerivedStorage + 432))
  {
    CVDataBufferPoolFlush();
    CFRelease(*(DerivedStorage + 432));
    *(DerivedStorage + 432) = 0;
  }

  v5 = *(DerivedStorage + 712);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 712) = 0;
  }

  freeEncodeStatsBuffers(DerivedStorage + 856, *(DerivedStorage + 920));
  *(DerivedStorage + 920) = 0;
  v6 = *(DerivedStorage + 440);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 440) = 0;
  }

  if (*(DerivedStorage + 408))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 408) = 0;
  }

  if (*(DerivedStorage + 416))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 416) = 0;
  }

  v7 = *(DerivedStorage + 104);
  if (v7)
  {
    DestroyProResFrameReceiver(v7, (DerivedStorage + 24));
    *(DerivedStorage + 104) = 0;
  }

  v8 = *(DerivedStorage + 400);
  if (v8)
  {
    closeUserClient(v8, *(DerivedStorage + 988));
    *(DerivedStorage + 400) = 0;
  }

  v9 = *(DerivedStorage + 960);
  if (v9 != *(DerivedStorage + 968))
  {
    *(DerivedStorage + 968) = v9;
    std::vector<unsigned char>::shrink_to_fit((DerivedStorage + 960));
  }

  pthread_cond_destroy((DerivedStorage + 352));
  pthread_mutex_destroy((DerivedStorage + 288));
  pthread_cond_destroy((DerivedStorage + 232));
  pthread_mutex_destroy((DerivedStorage + 168));
  pthread_cond_destroy((DerivedStorage + 800));

  return pthread_mutex_destroy((DerivedStorage + 736));
}

__CFString *ProResEncoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  CFStringAppendFormat(Mutable, 0, @"<AppleProResHWEncoder %p>", a1);
  return Mutable;
}

uint64_t ProResEncoder_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFNumberRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CopyProperty();
    }

    return 4294954384;
  }

  v8 = DerivedStorage;
  if (!CFDictionaryContainsKey(*(DerivedStorage + 440), a2))
  {
    return 4294954396;
  }

  if (CFEqual(a2, @"ProResHW_TestSettings"))
  {
    result = 0;
    v10 = *(v8 + 616);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDC0]))
  {
    v13 = *(v8 + 456);
    if (v13 == 2)
    {
      v14 = *(v8 + 560) + -0.5;
    }

    else
    {
      if (v13 != 3)
      {
        v12 = 0;
        goto LABEL_23;
      }

      v14 = (*(v8 + 560) + -0.75) * 4.0;
    }

    *(&valuePtr + 1) = v14;
    v15 = &valuePtr + 4;
    v16 = a3;
    v17 = kCFNumberFloatType;
    goto LABEL_20;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDE0]))
  {
    goto LABEL_17;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD58]))
  {
    StringForIntegerCodePoint = CVColorPrimariesGetStringForIntegerCodePoint(*(v8 + 641));
    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDD8]))
  {
    StringForIntegerCodePoint = CVTransferFunctionGetStringForIntegerCodePoint(*(v8 + 642));
    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDE8]))
  {
    StringForIntegerCodePoint = CVYCbCrMatrixGetStringForIntegerCodePoint(*(v8 + 643));
    goto LABEL_21;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDC8]))
  {
    v19 = *(v8 + 648);
    switch(v19)
    {
      case 0:
        result = 0;
        v11 = MEMORY[0x29EDB8EF8];
        goto LABEL_8;
      case 1:
LABEL_17:
        result = 0;
        v11 = MEMORY[0x29EDB8F00];
LABEL_8:
        v12 = *v11;
LABEL_24:
        *a4 = v12;
        return result;
      case 2:
        goto LABEL_35;
    }

    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD90]))
  {
    result = 0;
    v10 = *(v8 + 652);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD98]))
  {
    result = 0;
    v10 = *(v8 + 508);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCD40]))
  {
    if (*(v8 + 653) == 1)
    {
      StringForIntegerCodePoint = CFDataCreate(a3, (v8 + 654), 8);
      goto LABEL_21;
    }

LABEL_35:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDB0]))
  {
    result = 0;
    if (*(v8 + 724))
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    else
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, *MEMORY[0x29EDBCDA8]))
  {
    result = 0;
    v10 = *(v8 + 662);
LABEL_5:
    if (v10)
    {
      v11 = MEMORY[0x29EDB8F00];
    }

    else
    {
      v11 = MEMORY[0x29EDB8EF8];
    }

    goto LABEL_8;
  }

  if (!CFEqual(a2, *MEMORY[0x29EDBCD60]))
  {
    if (CFEqual(a2, *MEMORY[0x29EDBCD78]))
    {
      v15 = (v8 + 664);
LABEL_61:
      v16 = a3;
      v17 = kCFNumberSInt32Type;
LABEL_20:
      StringForIntegerCodePoint = CFNumberCreate(v16, v17, v15);
LABEL_21:
      v12 = StringForIntegerCodePoint;
LABEL_23:
      result = 0;
      goto LABEL_24;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD70]))
    {
      if (*(v8 + 484) == 0.0)
      {
        v24 = *(v8 + 488);
        *(&valuePtr + 1) = v24;
        v15 = &valuePtr + 4;
      }

      else
      {
        v15 = (v8 + 484);
      }

      v16 = a3;
      v17 = kCFNumberFloat32Type;
      goto LABEL_20;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD48]))
    {
      v15 = (v8 + 928);
      goto LABEL_61;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDD0]))
    {
      v15 = (v8 + 472);
      goto LABEL_61;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD38]))
    {
      v25 = *(v8 + 476);
      switch(v25)
      {
        case 2:
          result = 0;
          v11 = MEMORY[0x29EDBCD20];
          goto LABEL_8;
        case 1:
          result = 0;
          v11 = MEMORY[0x29EDBCD28];
          goto LABEL_8;
        case 0:
          goto LABEL_35;
      }

      return 0;
    }

    result = CFEqual(a2, @"kVTCodecPropertyKey_AlphaMode");
    if (!result)
    {
      return result;
    }

    v26 = *(v8 + 476);
    if (v26)
    {
      if (v26 == 1)
      {
        v27 = 256;
      }

      else
      {
        if (v26 != 2)
        {
          return 0;
        }

        v27 = 258;
      }

      HIDWORD(valuePtr) = v27;
      v28 = CFNumberCreate(a3, kCFNumberSInt32Type, &valuePtr + 4);
    }

    else
    {
      v28 = 0;
    }

    *a4 = v28;
    return 0;
  }

  if (*(v8 + 662) == 1 && (*(v8 + 448) | 0x10) == 0x61703478)
  {
    return 4294954396;
  }

  if (*(v8 + 575))
  {
LABEL_56:
    valuePtr = 0;
    v21 = *(v8 + 512) * *(v8 + 516);
    v22 = ProResEncoder_AdjustBitRateAndTargetSizeMultiplier(v8, v21, -1);
    CompressedFrameSize = GetCompressedFrameSize(*(v8 + 448), v21, v22, *(v8 + 564), &valuePtr + 1, &valuePtr, *(v8 + 617), *(v8 + 988));
    v29 = valuePtr;
    v12 = CFNumberCreate(a3, kCFNumberFloat32Type, &v29);
    result = CompressedFrameSize;
    goto LABEL_24;
  }

  v20 = *(v8 + 448);
  if (v20 == 1634759272)
  {
    return 4294954396;
  }

  result = 4294954396;
  if (v20 != 1634759278)
  {
    goto LABEL_56;
  }

  return result;
}

uint64_t ProResEncoder_SetProperty(uint64_t a1, const __CFString *a2, const __CFBoolean *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_SetProperty();
    }

    return 4294954394;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    CFStringGetCString(a2, buffer, 100, 0);
    v7 = *(v6 + 440);
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_SetProperty();
      }

      return 4294954396;
    }

    if (!CFDictionaryContainsKey(v7, a2))
    {
      return 4294954396;
    }

    if (CFEqual(a2, @"ProResHW_TestSettings"))
    {
      if (a3 && CFBooleanGetValue(a3))
      {
        v8 = *(v6 + 569);
        v9 = 1;
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v11 = v8 & 1;
      v12 = (*(v6 + 705) & 1) != 0 || *(v6 + 617) != v11;
      result = 0;
      *(v6 + 705) = v12;
      *(v6 + 617) = v11;
      *(v6 + 616) = v9;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDC0]))
    {
      if (!a3)
      {
        *(v6 + 560) = 1065353216;
        goto LABEL_52;
      }

      LODWORD(valuePtr) = 0;
      CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr);
      if (*&valuePtr >= 0.0 && *&valuePtr <= 1.0)
      {
        v13 = *(v6 + 456);
        if (v13 == 2)
        {
          v14 = *&valuePtr + 0.5;
          goto LABEL_51;
        }

        if (v13 == 3)
        {
          v14 = *&valuePtr * 0.25 + 0.75;
LABEL_51:
          *(v6 + 560) = v14;
        }

LABEL_52:
        result = 0;
LABEL_53:
        *(v6 + 705) = 1;
        return result;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_SetProperty();
      }

      return 4294954394;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD58]))
    {
      if (!a3)
      {
        result = 0;
        v16 = 2;
LABEL_49:
        *(v6 + 641) = v16;
        return result;
      }

      IntegerCodePointForString = CVColorPrimariesGetIntegerCodePointForString(a3);
      v16 = IntegerCodePointForString;
      v17 = IntegerCodePointForString - 3;
      if ((IntegerCodePointForString - 3) < 8u)
      {
        result = 0;
        if (v16 > 0xCu || ((0xB3u >> v17) & 1) != 0)
        {
          return result;
        }

        goto LABEL_48;
      }

      if (IntegerCodePointForString <= 0xCu)
      {
LABEL_48:
        result = 0;
        goto LABEL_49;
      }

      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDD8]))
    {
      if (a3)
      {
        v18 = CVTransferFunctionGetIntegerCodePointForString(a3);
        v19 = v18;
        v20 = v18 - 3;
        if ((v18 - 3) >= 0xAu)
        {
          if (v18 > 0x12u)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v19 > 0x12u || ((0x3CFu >> v20) & 1) != 0)
          {
            return result;
          }
        }

        result = 0;
        if ((v19 & 0xFE) == 0xE)
        {
          v19 = 1;
        }
      }

      else
      {
        result = 0;
        v19 = 2;
      }

      *(v6 + 642) = v19;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDE8]))
    {
      if (a3)
      {
        v21 = CVYCbCrMatrixGetIntegerCodePointForString(a3);
        if (v21 > 9u)
        {
          v22 = 2;
        }

        else
        {
          v22 = byte_2953939D0[v21 & 0xF];
        }

        result = 0;
        *(v6 + 643) = v22;
        *(v6 + 644) = 1;
      }

      else
      {
        result = 0;
        *(v6 + 643) = 2;
      }

      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDC8]))
    {
      if (a3)
      {
        v23 = CFEqual(a3, *MEMORY[0x29EDB8F00]);
        result = 0;
        v24 = v23 != 0;
      }

      else
      {
        result = 0;
        v24 = 2;
      }

      *(v6 + 648) = v24;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD90]))
    {
      if (a3)
      {
        v25 = CFEqual(a3, *MEMORY[0x29EDB8F00]);
        result = 0;
        *(v6 + 652) = v25 != 0;
      }

      else
      {
        result = 0;
        *(v6 + 652) = 0;
      }

      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD98]))
    {
      if (a3)
      {
        Value = CFBooleanGetValue(a3);
        result = 0;
        *(v6 + 508) = Value != 0;
      }

      else
      {
        result = 0;
        *(v6 + 508) = 0;
      }

      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD40]))
    {
      if (!a3)
      {
        result = 0;
        *(v6 + 653) = 0;
        return result;
      }

      if (CFDataGetLength(a3) == 8)
      {
        v43.location = 0;
        v43.length = 8;
        CFDataGetBytes(a3, v43, (v6 + 654));
        result = 0;
        *(v6 + 653) = 1;
        return result;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v27 = *(v6 + 988);
        LODWORD(valuePtr) = 67109634;
        HIDWORD(valuePtr) = v27;
        v37 = 2080;
        v38 = "ProResEncoder_SetProperty";
        v39 = 1024;
        Length = CFDataGetLength(a3);
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Error: ValueLen = %d bytes, Wrongly sized property value for AmbientViewingEnvironment attached, should be 8 bytes\n", &valuePtr, 0x18u);
      }

      return 4294954396;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDB0]))
    {
      if (*(v6 + 448) == 1634755432 && *(v6 + 516) * *(v6 + 512) <= 8847360)
      {
        if ((*(v6 + 728) & 1) == 0)
        {
          if (a3 && !CFBooleanGetValue(a3))
          {
            if (*(v6 + 576))
            {
              v32 = 3;
              *(v6 + 724) = 3;
              *(v6 + 852) = 1;
            }

            else
            {
              v32 = 1;
              *(v6 + 724) = 1;
            }

            if ((ProResFrameReceiver::InitializeDoubleEncode(*(v6 + 104), *(v6 + 848), v32) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                ProResEncoder_SetProperty();
              }

              return 4294954394;
            }
          }

          else
          {
            *(v6 + 724) = 0;
          }

          result = 0;
          *(v6 + 728) = 1;
          goto LABEL_53;
        }

        return 0;
      }

      return 4294954396;
    }

    if (CFEqual(a2, *MEMORY[0x29EDB96C0]))
    {
      valuePtr = 0;
      if (!a3)
      {
        return 0;
      }

      v35 = 0;
      CFNumberGetValue(a3, kCFNumberSInt32Type, &v35);
      v28 = v35;
      if ((v35 & 0x80000000) != 0)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResEncoder_SetProperty();
        }

        return 4294954394;
      }

      *(v6 + 528) = v35;
      createPixelBufferAttributesDictionary(&valuePtr, *(v6 + 512), *(v6 + 516), v28, *(v6 + 532), *(v6 + 452), *(v6 + 456), *(v6 + 662), *(v6 + 616), (v6 + 568));
      VTEncoderSessionSetPixelBufferAttributes();
      result = valuePtr;
      if (!valuePtr)
      {
        return result;
      }

LABEL_113:
      CFRelease(result);
      return 0;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDA8]))
    {
      valuePtr = 0;
      if (a3)
      {
        v29 = CFEqual(a3, *MEMORY[0x29EDB8F00]) != 0;
      }

      else
      {
        v29 = 1;
      }

      *(v6 + 662) = v29;
      if ((*(v6 + 448) | 0x10) != 0x61703478)
      {
        return 0;
      }

      createPixelBufferAttributesDictionary(&valuePtr, *(v6 + 512), *(v6 + 516), *(v6 + 528), *(v6 + 532), 875836448, *(v6 + 456), v29, *(v6 + 616), (v6 + 568));
      VTEncoderSessionSetPixelBufferAttributes();
      result = valuePtr;
      if (!valuePtr)
      {
        return 0;
      }

      goto LABEL_113;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCDD0]))
    {
      LODWORD(valuePtr) = 0;
      v30 = 0;
      if (a3)
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          v30 = 1;
        }
      }

      ProResFrameReceiver::SetDynamicAlphaBitDepth(*(v6 + 104), v30);
      result = 0;
      *(v6 + 472) = valuePtr;
      return result;
    }

    if (CFEqual(a2, *MEMORY[0x29EDBCD38]))
    {
      if (a3)
      {
        if (CFEqual(a3, *MEMORY[0x29EDBCD28]))
        {
          v31 = 1;
        }

        else
        {
          v31 = 2 * (CFEqual(a3, *MEMORY[0x29EDBCD20]) != 0);
        }

        goto LABEL_133;
      }
    }

    else
    {
      if (!CFEqual(a2, @"kVTCodecPropertyKey_AlphaMode"))
      {
        if (CFEqual(a2, *MEMORY[0x29EDBCD78]))
        {
          if (a3)
          {
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
            v34 = valuePtr;
            *(v6 + 664) = valuePtr;
            if (v34 == 1)
            {
              return 0;
            }

            else
            {
              return 4294954394;
            }
          }

          else
          {
            result = 0;
            *(v6 + 664) = 1;
          }

          return result;
        }

        if (!CFEqual(a2, *MEMORY[0x29EDBCD70]))
        {
          if (!CFEqual(a2, *MEMORY[0x29EDBCD48]))
          {
            return 4294954395;
          }

          if (a3)
          {
            LODWORD(valuePtr) = 0;
            CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
            result = 0;
            *(v6 + 928) = valuePtr;
          }

          else
          {
            result = 0;
            *(v6 + 928) = 0;
          }

          return result;
        }

        if (!a3)
        {
          result = 0;
          *(v6 + 484) = 0;
          return result;
        }

        LODWORD(valuePtr) = 0;
        CFNumberGetValue(a3, kCFNumberFloat32Type, &valuePtr);
        if (*&valuePtr >= 0.0)
        {
          result = 0;
          *(v6 + 484) = valuePtr;
          return result;
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResEncoder_SetProperty();
        }

        return 4294954394;
      }

      if (a3)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == 256)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2 * (valuePtr == 258);
        }

LABEL_133:
        if (v31 != *(v6 + 476))
        {
          if (v31 == 2)
          {
            result = 0;
            *(v6 + 480) = 257;
            v33 = 2;
          }

          else
          {
            if (v31 != 1)
            {
              return 0;
            }

            result = 0;
            *(v6 + 480) = 257;
            v33 = 1;
          }

          *(v6 + 476) = v33;
          return result;
        }

        return 0;
      }
    }

    v31 = 0;
    goto LABEL_133;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResEncoder_SetProperty();
  }

  return 4294954384;
}

uint64_t GetFrameRateCode(double a1, double a2)
{
  v2 = 0;
  v3 = fabs(a1);
  if (a2 > 0.0 && v3 <= 0.000001)
  {
    a1 = a2;
  }

  v5 = &qword_295393748;
  v6 = 12;
  while (1)
  {
    if (a2 <= 0.0)
    {
      v7 = *v5;
    }

    else
    {
      v7 = *v5;
      if (vabdd_f64(a2, *v5) <= 0.01)
      {
        v2 = *(v5 - 8);
      }
    }

    if (vabdd_f64(a1, v7) <= 0.01)
    {
      break;
    }

    v5 += 2;
    if (!--v6)
    {
      v8 = 0;
      goto LABEL_15;
    }
  }

  v8 = *(v5 - 8);
LABEL_15:
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2 <= 0.0;
  }

  if (v9)
  {
    return v8;
  }

  return v2;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t ProResEncoder_CompleteFrames(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CompleteFrames();
    }

    return 4294954384;
  }

  v2 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 168));
  gettimeofday(&v11, 0);
  v3 = 1200;
  if (*(v2 + 616) == 1)
  {
    v4 = atomic_load((v2 + 160));
    v3 = 1200 * v4;
  }

  v12.tv_sec = v3 + v11.tv_sec;
  v12.tv_nsec = 1000 * v11.tv_usec;
  if (atomic_load((v2 + 160)))
  {
    do
    {
      v6 = pthread_cond_timedwait((v2 + 232), (v2 + 168), &v12);
      if (atomic_load((v2 + 160)))
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 0;
      }
    }

    while (v8);
    v9 = v6;
    pthread_mutex_unlock((v2 + 168));
    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_CompleteFrames();
      }

      return 4294954384;
    }
  }

  else
  {
    pthread_mutex_unlock((v2 + 168));
  }

  return 0;
}

void std::vector<unsigned char>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = (v4 + v2 - v7);
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

float ProResEncoder_AdjustBitRateAndTargetSizeMultiplier(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 488);
  if (v3 == 0.0)
  {
    v4 = *(a1 + 484);
    v5 = v4;
    v6 = v4 <= 0.0;
    v3 = 30.0;
    if (!v6)
    {
      v3 = v5;
    }
  }

  v7 = *(a1 + 560);
  if (*(a1 + 456) != 2 || a2 <= 0xE1000 || !*(a1 + 724))
  {
    v15 = *(a1 + 448);
    if (a2 > 0x240000 && v15 == 1634759278)
    {
      if (fabs(v3 + -120.0) >= 5.0 || (*(a1 + 616) & 1) != 0)
      {
        return v7;
      }

      v16 = *(a1 + 928);
      if (v16)
      {
        v17 = v3 * a2;
        v18 = v17 * 3.5526;
        v19 = v17 * 2.66445;
        if (v16 <= v18)
        {
          v20 = v16;
        }

        else
        {
          v20 = v18;
        }

        if (v16 >= v19)
        {
          v19 = v20;
        }

        *(a1 + 928) = v19;
        v7 = v19 / v18;
        *(a1 + 560) = v7;
      }
    }

    else if (a2 <= 0x240000 || v15 != 1634759272 || v3 + -60.0 >= 5.0 || (*(a1 + 616) & 1) != 0)
    {
      return v7;
    }

    *(a1 + 564) = 1065940419;
    return v7;
  }

  v8 = *(a1 + 928);
  if (!v8)
  {
    return v7;
  }

  v9 = v3 * a2;
  v10 = v9 * dbl_2953936C0[a2 > 0x240000];
  v11 = v9 * dbl_2953936D0[a2 > 0x240000];
  v12 = v10;
  if (v8 <= v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v11;
  }

  if (v8 >= v12)
  {
    v12 = v13;
  }

  *(a1 + 928) = v12;
  result = v12 / v11;
  if (a3 != -1)
  {
    *(a1 + 705) |= result != v7;
  }

  return result;
}

uint64_t ProResEncoder_StartSession(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v4 = a3;
  outputStructCnt = 24;
  v77 = 0;
  v74 = 0u;
  v75 = 0u;
  v6 = HIDWORD(a3);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  memset(v57, 0, sizeof(v57));
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  memset(v48, 0, sizeof(v48));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  pthread_mutex_init((DerivedStorage + 288), 0);
  pthread_cond_init((DerivedStorage + 352), 0);
  *(DerivedStorage + 280) = 1;
  pthread_mutex_init((DerivedStorage + 168), 0);
  pthread_cond_init((DerivedStorage + 232), 0);
  atomic_store(0, (DerivedStorage + 160));
  pthread_mutex_init((DerivedStorage + 736), 0);
  pthread_cond_init((DerivedStorage + 800), 0);
  *(DerivedStorage + 729) = 0;
  *DerivedStorage = a2;
  *(DerivedStorage + 512) = v4;
  *(DerivedStorage + 516) = v6;
  *(DerivedStorage + 528) = ((v4 + 15) & 0xFFFFFFF0) - v4;
  *(DerivedStorage + 532) = ((v6 + 15) & 0xFFFFFFF0) - v6;
  if (v4 > 0x10000)
  {
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  if (v6 > 0x10000)
  {
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  if (v6 * v4 >= 67108865)
  {
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  NumSlices = getNumSlices(v4, v6, 1 << *(DerivedStorage + 668));
  *(DerivedStorage + 848) = NumSlices;
  if (NumSlices > 0x8000)
  {
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  v10 = *(DerivedStorage + 516) * *(DerivedStorage + 512);
  if (*(DerivedStorage + 648) || v10 >> 10 < 0x7E9 || *(DerivedStorage + 724) || (*(DerivedStorage + 652) & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  *(DerivedStorage + 504) = v11;
  *(DerivedStorage + 16) = a4;
  if (a4)
  {
    CFRetain(a4);
    v11 = *(DerivedStorage + 504);
  }

  inputStruct[0] = *(DerivedStorage + 456);
  inputStruct[1] = v11;
  v46 = 0xFFFFFFFFLL;
  v47 = *(DerivedStorage + 988);
  if (IOConnectCallStructMethod(*(DerivedStorage + 400), 0, inputStruct, 0x14uLL, &outputStruct, &outputStructCnt))
  {
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  *(DerivedStorage + 584) = v44;
  v24 = (DerivedStorage + 568);
  *(DerivedStorage + 568) = outputStruct;
  v12 = 3;
  if (*(DerivedStorage + 456) == 3)
  {
    if (*(DerivedStorage + 575))
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  *(DerivedStorage + 460) = v12;
  if (*(DerivedStorage + 571) == 1 && *(DerivedStorage + 448) == 1634759276)
  {
    *(DerivedStorage + 460) = 1;
    *(DerivedStorage + 674) = 1;
  }

  if (v10 <= 0x870000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  *(DerivedStorage + 496) = v13;
  if (v10 > 0x870000)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  CreateFrameInfoQueue(DerivedStorage + 112, *(DerivedStorage + 568) << v14);
  v26[0] = *(DerivedStorage + 400);
  v28 = 0;
  v29 = *(DerivedStorage + 97);
  v30 = DerivedStorage + 112;
  v31 = DerivedStorage + 160;
  v32 = DerivedStorage + 168;
  v33 = DerivedStorage + 232;
  v34 = DerivedStorage + 280;
  v35 = DerivedStorage + 288;
  v36 = DerivedStorage + 352;
  v27 = *DerivedStorage;
  v38 = 0;
  v40 = DerivedStorage + 729;
  v41 = DerivedStorage + 736;
  v42 = DerivedStorage + 800;
  v37 = (*(DerivedStorage + 504) & 0xFFFFFFFE) == 2;
  v39 = *(DerivedStorage + 568);
  if (v27 == 2)
  {
    v38 = DerivedStorage + 592;
  }

  ProResFrameReceiver = CreateProResFrameReceiver((DerivedStorage + 104), v26, (DerivedStorage + 24), (DerivedStorage + 88), *(DerivedStorage + 456), *(DerivedStorage + 988));
  if (ProResFrameReceiver)
  {
    v8 = ProResFrameReceiver;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  v16 = *(DerivedStorage + 456);
  if (v16 == 3)
  {
    v17 = 1380013856;
    goto LABEL_57;
  }

  v17 = 875836448;
  v18 = *(DerivedStorage + 448);
  if (v18 > 1634743415)
  {
    if ((v18 - 1634755432) <= 0xB && ((1 << (v18 - 104)) & 0x8C1) != 0)
    {
      v17 = 875704864;
      goto LABEL_57;
    }

    if (v18 == 1634743416)
    {
      goto LABEL_57;
    }

    if (v18 == 1634759276)
    {
      v17 = 1634759276;
      goto LABEL_57;
    }

LABEL_77:
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_StartSession();
    }

    goto LABEL_81;
  }

  if (v18 == 1634742376)
  {
    v17 = 875573280;
    goto LABEL_57;
  }

  if (v18 == 1634742888)
  {
    v17 = 875704352;
    goto LABEL_57;
  }

  if (v18 != 1634743400)
  {
    goto LABEL_77;
  }

LABEL_57:
  *(DerivedStorage + 452) = v17;
  if (a2 == 2)
  {
    v19 = *(DerivedStorage + 600);
    *(DerivedStorage + 424) = v19;
    if (!v19)
    {
      v8 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_StartSession();
      }

      goto LABEL_81;
    }

    CVPixelBufferPoolRetain(v19);
  }

  else
  {
    createPixelBufferAttributesDictionary(&v77, *(DerivedStorage + 512), *(DerivedStorage + 516), *(DerivedStorage + 528), *(DerivedStorage + 532), v17, v16, *(DerivedStorage + 662), *(DerivedStorage + 616), v24);
    VTEncoderSessionSetPixelBufferAttributes();
  }

  if (*(DerivedStorage + 456) == 3)
  {
    v20 = (16386 * getNumSlices(*(DerivedStorage + 512), *(DerivedStorage + 516), 1 << *(DerivedStorage + 668)) + 287) & 0xFFFFFF80;
LABEL_67:
    v22 = v20;
    if (CVDataBufferPoolCreate() || !*(DerivedStorage + 432))
    {
      v8 = 3758097105;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_StartSession();
      }
    }

    else
    {
      *(DerivedStorage + 552) = v22;
      if (CVDataBufferPoolCreateDataBuffer() || !*(DerivedStorage + 712))
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResEncoder_StartSession();
        }

        v8 = 3758097085;
      }

      else
      {
        v8 = 0;
      }
    }

    goto LABEL_81;
  }

  *(&v49 + 4) = *(DerivedStorage + 512);
  HIDWORD(v65) = *(DerivedStorage + 668);
  LODWORD(v73) = 0;
  if (!ProResEncoder_GetInInfoSizes(v48, *(DerivedStorage + 448), *(DerivedStorage + 674), v24, *(DerivedStorage + 730) & 0x7F, 0, (DerivedStorage + 720), *(DerivedStorage + 988), *(DerivedStorage + 560), *(DerivedStorage + 564), 0))
  {
    v20 = (v57[2] + 127) & 0xFFFFFF80;
    *(DerivedStorage + 684) = v20;
    *&v21 = *&v57[3];
    *(&v21 + 1) = *(&v73 + 1);
    *(DerivedStorage + 688) = v21;
    *(DerivedStorage + 704) = *(DerivedStorage + 730) & 0x7F;
    goto LABEL_67;
  }

  v8 = 3758097090;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResEncoder_StartSession();
  }

LABEL_81:
  if (v77)
  {
    CFRelease(v77);
  }

  kdebug_trace();
  return v8;
}

uint64_t ProResEncoder_EncodeFrame(uint64_t a1, uint64_t a2, __CVBuffer *a3, __int128 *a4, __int128 *a5, uint64_t a6, _DWORD *a7)
{
  v221 = *MEMORY[0x29EDCA608];
  memset(__src, 0, sizeof(__src));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v205 = 0;
  v203 = 0u;
  v204 = 0u;
  v12 = *(DerivedStorage + 536);
  v13 = v12 << (*(DerivedStorage + 724) != 0);
  kdebug_trace();
  BYTE8(__src[30]) = *(DerivedStorage + 616);
  CVPixelBufferRetain(a3);
  if (*(DerivedStorage + 664) != 1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_EncodeFrame();
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_94;
  }

  v199 = (DerivedStorage + 988);
  if (!*(DerivedStorage + 408))
  {
    FormatDescriptionExtensions = createFormatDescriptionExtensions(a3, DerivedStorage, 0);
    if (!FormatDescriptionExtensions)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_EncodeFrame();
      }

      v33 = 0;
      goto LABEL_102;
    }

    v36 = FormatDescriptionExtensions;
    if (*DerivedStorage == 2)
    {
      VideoFormatDescription = CMVideoFormatDescriptionCreate(*MEMORY[0x29EDB8ED8], *(DerivedStorage + 448), *(DerivedStorage + 512), *(DerivedStorage + 516), FormatDescriptionExtensions, (DerivedStorage + 408));
    }

    else
    {
      VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
    }

    v44 = VideoFormatDescription;
    CFRelease(v36);
    if (v44)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_EncodeFrame();
      }

      v33 = 0;
      v34 = 0;
      goto LABEL_94;
    }
  }

  pixelBuffer = a3;
  if (!*(DerivedStorage + 536))
  {
    v14 = *(DerivedStorage + 648);
    v15 = *(DerivedStorage + 652);
    if (v14)
    {
      if (v14 != 2)
      {
        v15 = 0;
      }

      *(DerivedStorage + 500) = v15;
      v16 = *(DerivedStorage + 724);
    }

    else
    {
      v42 = *(DerivedStorage + 516) * *(DerivedStorage + 512);
      v19 = 3;
      if (*(DerivedStorage + 652))
      {
        v43 = 1;
      }

      else
      {
        v43 = 3;
      }

      *(DerivedStorage + 500) = v43;
      v16 = *(DerivedStorage + 724);
      if (v42 >> 10 >= 0x7E9 && !v16 && !v15)
      {
        v18 = 1;
        v17 = 1;
LABEL_9:
        *(DerivedStorage + 504) = v19;
        v20 = *(DerivedStorage + 104);
        if (v20 && v18)
        {
          ProResFrameReceiver::SetOutOfOrderFrameProcessing(v20, v17);
        }

        if (v17)
        {
          *(DerivedStorage + 496) *= *(DerivedStorage + 568);
        }

        goto LABEL_14;
      }
    }

    v17 = 0;
    v18 = v16 == 0;
    v19 = 1;
    goto LABEL_9;
  }

LABEL_14:
  *(&__src[13] + 1) = *(DerivedStorage + 500);
  *&v203 = *(DerivedStorage + 128);
  v21 = *(DerivedStorage + 496);
  DWORD2(v203) = *(DerivedStorage + 536);
  HIDWORD(v203) = v21;
  *&v204 = DerivedStorage + 280;
  *(&v204 + 1) = DerivedStorage + 288;
  v205 = DerivedStorage + 352;
  EmptySpotInFrameInfoArray = GetEmptySpotInFrameInfoArray(&v203, *(DerivedStorage + 988));
  if (EmptySpotInFrameInfoArray == -1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_EncodeFrame();
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_93;
  }

  v23 = EmptySpotInFrameInfoArray;
  v24 = *(DerivedStorage + 128) + 800 * EmptySpotInFrameInfoArray;
  *(DerivedStorage + 540) = CVPixelBufferGetWidth(pixelBuffer);
  *(DerivedStorage + 544) = CVPixelBufferGetHeight(pixelBuffer);
  *(DerivedStorage + 452) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  v26 = APR_ImgFmt_4CC(*(DerivedStorage + 452));
  v197 = v24;
  if (!v26)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_EncodeFrame();
    }

    v33 = 0;
    a3 = pixelBuffer;
    goto LABEL_32;
  }

  v189 = PlaneCount;
  v195 = v26;
  *(DerivedStorage + 548) = v26[1];
  v192 = *(DerivedStorage + 540);
  cf = *(DerivedStorage + 544);
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  LODWORD(__src[6]) = IOSurfaceGetID(IOSurface);
  v196 = IOSurface;
  IOSurfaceGetPixelFormat(IOSurface);
  *(v24 + 8) = *(DerivedStorage + 536);
  *(v24 + 16) = a2;
  if (!*(DerivedStorage + 724))
  {
    *(v24 + 24) |= 1u;
  }

  *(v24 + 72) = pixelBuffer;
  *(v24 + 88) = *(DerivedStorage + 408);
  v28 = *a4;
  *(v24 + 768) = *(a4 + 2);
  *(v24 + 752) = v28;
  v29 = *a5;
  *(v24 + 744) = *(a5 + 2);
  *(v24 + 728) = v29;
  v30 = *MEMORY[0x29EDB9398];
  *(v24 + 792) = *(MEMORY[0x29EDB9398] + 16);
  *(v24 + 776) = v30;
  if (*(DerivedStorage + 616) == 1)
  {
    BYTE4(__src[13]) = 0;
    v31 = *(DerivedStorage + 488);
    v32 = *(DerivedStorage + 484);
    v33 = IOSurface;
    goto LABEL_58;
  }

  v38 = *(DerivedStorage + 536);
  v39 = *(v24 + 752);
  *(DerivedStorage + 624 + 8 * (v38 & 1)) = v39;
  if (!v38 || (v40 = *(v24 + 760)) == 0)
  {
    *(DerivedStorage + 640) = 1;
    v31 = 0.0;
    v33 = IOSurface;
    goto LABEL_57;
  }

  v41 = v39 - *(DerivedStorage + 624 + 8 * !(v38 & 1));
  v33 = IOSurface;
  if (v41 <= 0.0)
  {
    *(DerivedStorage + 640) = 0;
LABEL_56:
    v31 = 0.0;
    goto LABEL_57;
  }

  if ((*(DerivedStorage + 640) & 1) == 0)
  {
    *(DerivedStorage + 640) = 1;
    goto LABEL_56;
  }

  v31 = v40 / v41;
  *(DerivedStorage + 640) = 1;
LABEL_57:
  *(DerivedStorage + 488) = v31;
  v32 = *(DerivedStorage + 484);
  BYTE4(__src[13]) = GetFrameRateCode(v31, v32);
LABEL_58:
  BYTE9(__src[30]) = *(DerivedStorage + 648) == 1;
  BYTE10(__src[30]) = 0;
  *&__src[31] = v31;
  DWORD2(__src[31]) = v32;
  *(&__src[13] + 5) = *(DerivedStorage + 641);
  if (*(DerivedStorage + 644) == 1)
  {
    v45 = *(DerivedStorage + 643);
    v46 = *(DerivedStorage + 544);
  }

  else
  {
    v46 = *(DerivedStorage + 544);
    if (v46 > 0x2CF)
    {
      v45 = 1;
    }

    else
    {
      v45 = 6;
    }
  }

  BYTE7(__src[13]) = v45;
  *&__src[0] = __PAIR64__(v23, v13);
  WORD4(__src[0]) = v13;
  DWORD1(__src[4]) = *(DerivedStorage + 540);
  DWORD2(__src[4]) = v46;
  DWORD1(__src[29]) = 0;
  BYTE4(__src[1]) = *(DerivedStorage + 460);
  BYTE1(__src[1]) = IOSurfaceGetCompressionTypeOfPlane() != 0;
  BYTE11(__src[0]) = 1;
  v49 = *(DerivedStorage + 464);
  if (v49 == -1)
  {
    v50 = (DerivedStorage + 988);
    BYTE10(__src[0]) = BYTE4(__src[1]) >= 2u;
  }

  else
  {
    BYTE10(__src[0]) = v49 != 0;
    v50 = (DerivedStorage + 988);
  }

  v51 = cf * v192;
  v52 = *(DerivedStorage + 548) - 8;
  if (v52 <= 8 && ((0x115u >> v52) & 1) != 0)
  {
    HIDWORD(__src[1]) = dword_2953939DC[v52];
  }

  v53 = v195;
  if (!*(v195 + 33))
  {
    if (*(DerivedStorage + 456) != 3)
    {
      HIDWORD(__src[21]) = 3;
LABEL_104:
      if (*(DerivedStorage + 674) == 1)
      {
        HIDWORD(__src[0]) = 5;
        LOBYTE(__src[1]) = HIDWORD(__src[1]) != 0;
        if (HIDWORD(__src[1]))
        {
          v69 = 2;
        }

        else
        {
          v69 = 1;
        }

        LODWORD(__src[29]) = v69;
      }

      else
      {
        HIDWORD(__src[0]) = 6;
        LOBYTE(__src[1]) = 0;
        LODWORD(__src[29]) = 0;
      }

LABEL_193:
      if (*(DerivedStorage + 573) == 1 && BYTE1(__src[1]) == 1)
      {
        v103 = v53[10];
        if (HIDWORD(__src[1]) == 1)
        {
          if (v103 == 3)
          {
            goto LABEL_198;
          }
        }

        else if (!HIDWORD(__src[1]) && v103 == 2)
        {
LABEL_198:
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResEncoder_EncodeFrame();
          }

          goto LABEL_92;
        }

        DWORD2(__src[2]) = v53[10];
        v104 = v53[10];
        LODWORD(__src[2]) = 0;
        DWORD1(__src[2]) = v104;
      }

      v47.i32[0] = 0;
      v48.i32[0] = *(DerivedStorage + 724);
      v105.i64[0] = 0x4000000040;
      v105.i64[1] = 0x4000000040;
      *(&__src[14] + 4) = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v48, v47), 0), xmmword_2953936E0, v105);
      LODWORD(__src[14]) = 12;
      DWORD1(__src[15]) = 64;
      DWORD2(__src[21]) = 1;
      *(&__src[16] + 8) = xmmword_2953936F0;
      *(&__src[15] + 1) = 0x4300000043000000;
      LODWORD(__src[16]) = 1110441984;
      v106 = v51;
      memset_pattern16(&__src[17] + 8, &unk_295393720, 0x40uLL);
      *(DerivedStorage + 560) = ProResEncoder_AdjustBitRateAndTargetSizeMultiplier(DerivedStorage, v106, *(v197 + 8));
      if (*(DerivedStorage + 724))
      {
        if (*(v197 + 8))
        {
          pthread_mutex_lock((DerivedStorage + 736));
          gettimeofday(&v208, 0);
          buffer.tv_sec = v208.tv_sec + 3;
          buffer.tv_nsec = 1000 * v208.tv_usec;
          v107 = *(DerivedStorage + 729);
          if (v107)
          {
            *(DerivedStorage + 729) = 0;
            pthread_mutex_unlock((DerivedStorage + 736));
            v108 = DerivedStorage + 500;
            goto LABEL_209;
          }

          do
          {
            v113 = pthread_cond_timedwait((DerivedStorage + 800), (DerivedStorage + 736), &buffer);
            v114 = v113;
            v107 = *(DerivedStorage + 729);
          }

          while ((v107 & 1) == 0 && !v113);
          *(DerivedStorage + 729) = 0;
          pthread_mutex_unlock((DerivedStorage + 736));
          if (v114)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

            a3 = pixelBuffer;
LABEL_225:
            v33 = v196;
LABEL_32:
            v34 = v197;
LABEL_94:
            if (*DerivedStorage != 1)
            {
              ProResEncoder_CompleteFrames(a1);
              VTEncoderSessionEmitEncodedFrame();
              *a7 |= 2u;
            }

            if (a3)
            {
              CVPixelBufferRelease(a3);
            }

            v67 = *(DerivedStorage + 712);
            if (v67)
            {
              CFRelease(v67);
            }

            freeEncodeStatsBuffers(DerivedStorage + 856, 0);
            if (v34)
            {
              bzero(v34, 0x320uLL);
            }

            goto LABEL_102;
          }

          v108 = DerivedStorage + 500;
LABEL_209:
          v109 = (v107 >> 8) & 0x7F;
          if (*(DerivedStorage + 705) == 1)
          {
            *(DerivedStorage + 705) = 1;
            *(DerivedStorage + 704) = v109;
          }

          else
          {
            v110 = *(DerivedStorage + 704);
            *(DerivedStorage + 704) = v109;
            *(DerivedStorage + 705) = v109 != v110;
            if (v109 == v110 && (v12 || !LODWORD(__src[29])))
            {
              *(&__src[12] + 1) = *(v108 + 184);
              LODWORD(__src[13]) = *(DerivedStorage + 692);
              *(&__src[29] + 1) = *(DerivedStorage + 696);
              v111 = DWORD2(__src[12]);
              goto LABEL_227;
            }
          }

          if (ProResEncoder_GetInInfoSizes(__src, *(DerivedStorage + 448), *(DerivedStorage + 674), DerivedStorage + 568, v109, *(DerivedStorage + 617), (DerivedStorage + 720), *(DerivedStorage + 988), *(DerivedStorage + 560), *(DerivedStorage + 564), v12 == 0))
          {
            a3 = pixelBuffer;
            v34 = v197;
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

LABEL_217:
            v33 = v196;
            goto LABEL_94;
          }

          v111 = (DWORD2(__src[12]) + 127) & 0xFFFFFF80;
          DWORD2(__src[12]) = v111;
          *(DerivedStorage + 684) = v111;
          *&v112 = *(&__src[12] + 12);
          *(&v112 + 1) = *(&__src[29] + 1);
          *(DerivedStorage + 688) = v112;
          *(DerivedStorage + 705) = 0;
LABEL_227:
          a3 = pixelBuffer;
          v34 = v197;
          v115 = *(DerivedStorage + 724);
          if ((v115 - 1) < 2)
          {
            v111 *= 4;
          }

          *(v197 + 28) = v111;
          v116 = *(DerivedStorage + 448);
          if (v116 <= 1634755431)
          {
            if (v116 <= 1634743399)
            {
              if (v116 == 1634742376)
              {
                v117 = 0;
                v118 = 0;
              }

              else
              {
                if (v116 != 1634742888)
                {
                  goto LABEL_256;
                }

                v118 = 0;
                v117 = 1;
              }

              v119 = 1;
              goto LABEL_258;
            }

            if (v116 != 1634743400)
            {
              if (v116 == 1634743416)
              {
                v118 = 0;
                v119 = 1;
                v117 = 3;
LABEL_258:
                DWORD2(__src[1]) = v117;
                BYTE4(__src[12]) = v119;
                HIDWORD(__src[28]) = v118;
                if (*(DerivedStorage + 579) == 1)
                {
                  v120 = *(DerivedStorage + 468);
                  if ((v115 & 0xFFFFFFFE) == 2)
                  {
                    v120 = (v107 & 2 | v120) != 0;
                  }

                  DWORD1(__src[3]) = v120;
                }

                v121 = &__src[28] + 12;
                if ((v115 - 1) < 2)
                {
                  v122 = 2;
LABEL_266:
                  *v121 = v122;
                  goto LABEL_267;
                }

                if (v115 == 3)
                {
                  v122 = 1;
                  goto LABEL_266;
                }

LABEL_267:
                if (*(DerivedStorage + 432) && *(DerivedStorage + 552) < v111)
                {
                  v123 = v111;
                  CVDataBufferPoolFlush();
                  CFRelease(*(DerivedStorage + 432));
                  if (CVDataBufferPoolCreate() || !*(DerivedStorage + 432))
                  {
                    v33 = v196;
                    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                    {
                      ProResEncoder_EncodeFrame();
                    }

                    goto LABEL_94;
                  }

                  *(DerivedStorage + 552) = v123;
                  v124 = *(DerivedStorage + 712);
                  if (v124)
                  {
                    CFRelease(v124);
                  }

                  *(DerivedStorage + 712) = 0;
                }

                if (!*(DerivedStorage + 712))
                {
                  kdebug_trace();
                  DataBuffer = CVDataBufferPoolCreateDataBuffer();
                  kdebug_trace();
                  if (DataBuffer || !*(DerivedStorage + 712))
                  {
                    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                    {
                      ProResEncoder_EncodeFrame();
                    }

                    goto LABEL_217;
                  }
                }

                v125 = CVDataBufferGetIOSurface();
                *IOSurfaceGetBaseAddress(v125) = 0;
                LODWORD(__src[7]) = IOSurfaceGetID(v125);
                *(v34 + 104) = __src[7];
                *(v34 + 80) = *(DerivedStorage + 712);
                LODWORD(__src[12]) = 0;
                *(v34 + 4) = HIDWORD(__src[0]);
                *(v34 + 208) = *(DerivedStorage + 720);
                DWORD2(__src[28]) = 3;
                v126 = *(DerivedStorage + 848);
                LOBYTE(buffer.tv_sec) = 0;
                std::vector<unsigned char>::assign((DerivedStorage + 960), v126, &buffer);
                CVBufferAttachmentData = getCVBufferAttachmentData(a3, @"ProRes_QPMap", kCFNumberSInt8Type, *(DerivedStorage + 960), *(DerivedStorage + 848), 1u);
                *(DerivedStorage + 954) = CVBufferAttachmentData;
                if (*(DerivedStorage + 852) == 1)
                {
                  v128 = (DerivedStorage + 856);
                  if (createEncodeStatsBuffers(*(DerivedStorage + 848), DerivedStorage + 856, (DerivedStorage + 920), *(DerivedStorage + 448), *(DerivedStorage + 988)))
                  {
                    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                    {
                      ProResEncoder_EncodeFrame();
                    }

                    goto LABEL_217;
                  }

                  v130 = *(DerivedStorage + 456);
                  if (v130 == 3)
                  {
                    DWORD1(__src[3]) = 1;
                  }

                  else if (v130 == 2)
                  {
                    LODWORD(__src[3]) = 1;
                  }

                  v134 = *v128;
                  v135 = *(DerivedStorage + 872);
                  v136 = *(DerivedStorage + 904);
                  *(v34 + 144) = *(DerivedStorage + 888);
                  *(v34 + 160) = v136;
                  *(v34 + 112) = v134;
                  *(v34 + 128) = v135;
                  v137 = *(DerivedStorage + 872);
                  __src[8] = *v128;
                  __src[9] = v137;
                  v138 = *(DerivedStorage + 904);
                  __src[10] = *(DerivedStorage + 888);
                  __src[11] = v138;
                  if ((*(DerivedStorage + 954) & 1) == 0)
                  {
LABEL_311:
                    if (*(DerivedStorage + 724))
                    {
                      memcpy((v34 + 216), __src, 0x200uLL);
                    }

                    if (BYTE4(__src[1]) == 1 && (BYTE10(__src[0]) & 1) != 0 || DWORD1(__src[3]))
                    {
                      *(v34 + 176) = 1;
                    }

                    IOSurfaceGetID(v125);
                    IOSurfaceGetPixelFormat(v125);
                    if (ProResEncoder_CheckEncodeCmd(DerivedStorage, __src, __src + 8, *(DerivedStorage + 988)))
                    {
                      v33 = v196;
                      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                      {
                        ProResEncoder_EncodeFrame();
                      }
                    }

                    else
                    {
                      atomic_fetch_add((DerivedStorage + 160), 1u);
                      IOSurfaceGetWidth(v125);
                      IOSurfaceGetHeight(v125);
                      kdebug_trace();
                      v150 = IOConnectCallStructMethod(*(DerivedStorage + 400), 3u, __src, 0x200uLL, 0, 0);
                      IOSurfaceGetWidth(v125);
                      IOSurfaceGetHeight(v125);
                      kdebug_trace();
                      if (!v150)
                      {
                        *a7 |= 1u;
                        *(DerivedStorage + 876) = 0;
                        ++*(DerivedStorage + 536);
                        v33 = v196;
                        goto LABEL_102;
                      }

                      atomic_fetch_add((DerivedStorage + 160), 0xFFFFFFFF);
                      v33 = v196;
                      v34 = v197;
                      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                      {
                        ProResEncoder_EncodeFrame();
                      }

                      a3 = pixelBuffer;
                    }

                    goto LABEL_94;
                  }
                }

                else if (!CVBufferAttachmentData)
                {
                  goto LABEL_311;
                }

                v139 = (DerivedStorage + 856);
                if (createEncodeStatsBuffers(*(DerivedStorage + 848), DerivedStorage + 856, (DerivedStorage + 920), *(DerivedStorage + 448), *(DerivedStorage + 988)))
                {
                  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                  {
                    ProResEncoder_EncodeFrame();
                  }

                  goto LABEL_217;
                }

                v140 = CVDataBufferGetIOSurface();
                BaseAddress = IOSurfaceGetBaseAddress(v140);
                memcpy(&BaseAddress[*(DerivedStorage + 872)], *(DerivedStorage + 960), *(DerivedStorage + 968) - *(DerivedStorage + 960));
                v142 = *(DerivedStorage + 456);
                if (v142 == 3)
                {
                  LODWORD(__src[3]) = 1;
                }

                else if (v142 == 2)
                {
                  HIDWORD(__src[2]) = 1;
                }

                BYTE10(__src[0]) = 0;
                BYTE4(__src[1]) = 1;
                v145 = *v139;
                v146 = *(DerivedStorage + 872);
                v147 = *(DerivedStorage + 904);
                *(v34 + 144) = *(DerivedStorage + 888);
                *(v34 + 160) = v147;
                *(v34 + 112) = v145;
                *(v34 + 128) = v146;
                v148 = *(DerivedStorage + 872);
                __src[8] = *v139;
                __src[9] = v148;
                v149 = *(DerivedStorage + 904);
                __src[10] = *(DerivedStorage + 888);
                __src[11] = v149;
                goto LABEL_311;
              }

              goto LABEL_256;
            }

            v119 = 1;
            v117 = 3;
          }

          else
          {
            if (v116 > 1634755438)
            {
              switch(v116)
              {
                case 1634755439:
                  v118 = 4;
                  v119 = 8;
LABEL_257:
                  v117 = 2;
                  goto LABEL_258;
                case 1634755443:
                  v119 = 3;
                  v117 = 2;
                  v118 = 3;
                  goto LABEL_258;
                case 1634759276:
                  v117 = 0;
LABEL_245:
                  v119 = 2;
                  v118 = 2;
                  goto LABEL_258;
              }

LABEL_256:
              v118 = 0;
              v119 = 1;
              goto LABEL_257;
            }

            if (v116 != 1634755432)
            {
              if (v116 == 1634755438)
              {
                v117 = 2;
                goto LABEL_245;
              }

              goto LABEL_256;
            }

            v119 = 1;
            v117 = 2;
          }

          v118 = 1;
          goto LABEL_258;
        }

        v107 = 4096;
      }

      else
      {
        v107 = 0;
      }

      v108 = DerivedStorage + 500;
      goto LABEL_209;
    }

LABEL_82:
    v194 = cf * v192;
    HIDWORD(__src[21]) = 4;
    HIDWORD(__src[0]) = 4;
    BYTE3(__src[1]) = 1;
    v198 = *v50;
    a3 = pixelBuffer;
    v60 = getCVBufferAttachmentData(pixelBuffer, *MEMORY[0x29EDB9720], kCFNumberFloat32Type, &v208, 0x10u, 4u);
    v61 = vmovn_s32(vcvtq_s32_f32(v208));
    v62 = vuzp1_s8(v61, v61).u32[0];
    if (!v60)
    {
      v62 = 0;
    }

    LODWORD(__src[22]) = v62;
    v63 = *MEMORY[0x29EDB9748];
    if (!CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9748]) && (*(DerivedStorage + 616) & 1) == 0)
    {
      v34 = v197;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_EncodeFrame();
      }

      goto LABEL_185;
    }

    v64 = CVBufferCopyAttachment(pixelBuffer, v63, 0);
    LOBYTE(valuePtr) = 0;
    v34 = v197;
    if (v64)
    {
      v65 = v64;
      if (!CFNumberGetValue(v64, kCFNumberSInt8Type, &valuePtr))
      {
        CFStringGetCString(v63, &buffer, 100, 0);
        LOBYTE(valuePtr) = 1;
      }

      CFRelease(v65);
      v66 = valuePtr;
    }

    else
    {
      CFStringGetCString(v63, &buffer, 100, 0);
      v66 = 1;
    }

    BYTE4(__src[22]) = v66;
    v70 = *MEMORY[0x29EDB9740];
    if (CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9740]) || (*(DerivedStorage + 616) & 1) != 0)
    {
      CVBufferAttachment = getCVBufferAttachmentNumber<unsigned int>(pixelBuffer, v70, 0xFFFFu >> (16 - *(DerivedStorage + 548)));
      v72 = *MEMORY[0x29EDB9700];
      if (CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9700]) || (*(DerivedStorage + 616) & 1) != 0)
      {
        v73 = getCVBufferAttachmentNumber<unsigned int>(pixelBuffer, v72, 0x100u >> (16 - *(DerivedStorage + 548)));
        v74 = v73;
        if (*(v197 + 8))
        {
          v75 = *(DerivedStorage + 936);
          v76 = BYTE4(__src[22]);
          if ((v75 != BYTE4(__src[22]) || CVBufferAttachment != *(DerivedStorage + 938) || v73 != *(DerivedStorage + 940)) && (*(DerivedStorage + 616) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              v143 = *(DerivedStorage + 938);
              v144 = *(DerivedStorage + 940);
              LODWORD(buffer.tv_sec) = 67111170;
              HIDWORD(buffer.tv_sec) = v198;
              buffer.tv_nsec = 0x8200000024B0400;
              v210 = "getRAWAttachments";
              v211 = 1024;
              *v212 = v75;
              *&v212[4] = 1024;
              *&v212[6] = v76;
              LOWORD(v213) = 1024;
              *(&v213 + 2) = v143;
              HIWORD(v213) = 1024;
              *v214 = CVBufferAttachment;
              *&v214[4] = 1024;
              *&v214[6] = v144;
              v215 = 1024;
              LODWORD(v216) = v74;
              _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR AppleProResHW (0x%x): %d: %s(): ProRes RAW encode parameters changed mid-session: CFA/BayerPattern=%d -> %d, whiteLevel=%d -> %d, blackLevel=%d -> %d, it needs to be locked\n", &buffer, 0x3Cu);
            }

            v33 = v196;
            v34 = v197;
            goto LABEL_185;
          }

LABEL_125:
          if (*(DerivedStorage + 616))
          {
            v77 = 0xFFFF;
          }

          else
          {
            v77 = (CVBufferAttachment - v73) << (16 - *(DerivedStorage + 548));
          }

          v33 = v196;
          v34 = v197;
          DWORD2(__src[22]) = v77;
          v78 = *MEMORY[0x29EDB9738];
          if (!CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9738]) && (*(DerivedStorage + 616) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

            goto LABEL_185;
          }

          v79 = getCVBufferAttachmentNumber<float>(pixelBuffer, v78, 1.0);
          HIDWORD(__src[22]) = 1065353216;
          v80 = *MEMORY[0x29EDB9728];
          if (!CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9728]) && (*(DerivedStorage + 616) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

            goto LABEL_185;
          }

          v81 = getCVBufferAttachmentNumber<float>(pixelBuffer, v80, 1.0);
          LODWORD(__src[23]) = 1065353216;
          v82 = *MEMORY[0x29EDB9730];
          if (!CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9730]) && (*(DerivedStorage + 616) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

            goto LABEL_185;
          }

          v83 = CVBufferCopyAttachment(pixelBuffer, v82, 0);
          valuePtr = 0;
          if (v83)
          {
            v84 = v83;
            if (!CFNumberGetValue(v83, kCFNumberSInt16Type, &valuePtr))
            {
              CFStringGetCString(v82, &buffer, 100, 0);
              valuePtr = 0;
            }

            CFRelease(v84);
            v85 = valuePtr;
          }

          else
          {
            CFStringGetCString(v82, &buffer, 100, 0);
            v85 = 0;
          }

          WORD6(__src[25]) = v85;
          v33 = v196;
          if (*(v197 + 8))
          {
            v86 = *(DerivedStorage + 944);
            if ((v86 != v79 || *(DerivedStorage + 948) != v81 || *(DerivedStorage + 952) != v85) && (*(DerivedStorage + 616) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                v171 = *(DerivedStorage + 948);
                v172 = *(DerivedStorage + 952);
                LODWORD(buffer.tv_sec) = 67111170;
                HIDWORD(buffer.tv_sec) = v198;
                buffer.tv_nsec = 0x820000002840400;
                v210 = "getRAWAttachments";
                v211 = 2048;
                *v212 = v86;
                *&v212[8] = 2048;
                v213 = v79;
                *v214 = 2048;
                *&v214[2] = v171;
                v215 = 2048;
                v216 = v81;
                v217 = 1024;
                v218 = v172;
                v219 = 1024;
                v220 = v85;
                _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR AppleProResHW (0x%x): %d: %s(): whiteBalance changed mid-session: WBRedFactor=%f -> %f, WBBlueFactor=%f -> %f, WBCCT=%d -> %d, it needs to be locked\n", &buffer, 0x4Cu);
              }

              goto LABEL_185;
            }
          }

          else
          {
            *(DerivedStorage + 944) = v79;
            *(DerivedStorage + 948) = v81;
            *(DerivedStorage + 952) = v85;
          }

          v87 = *MEMORY[0x29EDB9708];
          if (!CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9708]) && (*(DerivedStorage + 616) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

            goto LABEL_185;
          }

          if (!getCVBufferAttachmentData(pixelBuffer, v87, kCFNumberFloat32Type, &__src[23] + 4, 0x24u, 4u))
          {
            if (*(DerivedStorage + 616) != 1)
            {
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                ProResEncoder_EncodeFrame();
              }

              goto LABEL_185;
            }

            v88 = 0;
            v89 = xmmword_295323F10;
            v90 = vdupq_n_s64(9uLL);
            v91 = &__src[23] + 2;
            v92 = vdupq_n_s64(2uLL);
            do
            {
              if (vmovn_s64(vcgtq_u64(v90, v89)).u8[0])
              {
                if ((v88 & 2) != 0)
                {
                  v93 = 0.0;
                }

                else
                {
                  v93 = 1.0;
                }

                *(v91 - 1) = v93;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v89)).i32[1])
              {
                *v91 = 0.0;
              }

              v88 += 2;
              v89 = vaddq_s64(v89, v92);
              v91 += 2;
            }

            while (v88 != 10);
          }

          v94 = *MEMORY[0x29EDB9710];
          if (!CVBufferHasAttachment(pixelBuffer, *MEMORY[0x29EDB9710]) && (*(DerivedStorage + 616) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
            {
              ProResEncoder_EncodeFrame();
            }

            goto LABEL_185;
          }

          DWORD2(__src[25]) = getCVBufferAttachmentNumber<float>(pixelBuffer, v94, 16.0);
          v95 = *MEMORY[0x29EDB9718];
          v96 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x29EDB9718], 0);
          if (!v96)
          {
            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buffer.tv_sec) = 67109634;
              HIDWORD(buffer.tv_sec) = v198;
              buffer.tv_nsec = 0x8200000029E0400;
              v210 = "getRAWAttachments";
              _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): Skipping missing attachment - kCVPixelBufferProResRAWKey_MetadataExtension\n", &buffer, 0x18u);
            }

LABEL_330:
            v33 = v196;
            if (BYTE4(__src[22]) >= 4u && (*(DerivedStorage + 581) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                ProResEncoder_EncodeFrame();
              }

              goto LABEL_94;
            }

            if (*(DerivedStorage + 616) == 1)
            {
              BYTE6(__src[27]) = *(DerivedStorage + 672);
              v151 = v195;
            }

            else
            {
              BYTE6(__src[27]) = *(DerivedStorage + 673);
              v151 = v195;
              if (BYTE6(__src[27]) == 1)
              {
                v152 = 0.0;
                if (DWORD2(__src[22]))
                {
                  v152 = log2(DWORD2(__src[22]));
                }

                v153 = 16.0 - v152;
                v154 = *(&__src[25] + 2);
                v155 = log2f(*(&__src[25] + 2));
                if (v154 <= 0.0)
                {
                  v155 = 0.0;
                }

                v156 = (v153 + v155);
                v157 = *(&__src[22] + 3);
                v158 = log2f(*(&__src[22] + 3));
                if (v157 <= 0.0)
                {
                  v159 = 0.0;
                }

                else
                {
                  v159 = v158;
                }

                v160 = *&__src[23];
                v161 = log2f(*&__src[23]);
                if (v160 <= 0.0)
                {
                  v161 = 0.0;
                }

                v162 = (v159 + v161) * 0.25 + v156;
                v163 = 7.0;
                if (v162 <= 7.0)
                {
                  v163 = v162;
                }

                if (v162 >= 0.0)
                {
                  v164 = v163;
                }

                else
                {
                  v164 = 0.0;
                }

                *(&__src[27] + 8) = recommendedTransferFunctions[vcvtd_n_s64_f64(v164 + 0.125, 2uLL)];
              }
            }

            NumSlices = getNumSlices(SDWORD1(__src[4]), SDWORD2(__src[4]), 1 << *(DerivedStorage + 668));
            v166 = *(DerivedStorage + 448);
            if (v166 == 1634759278)
            {
              v167 = 7;
              v168 = 3;
            }

            else
            {
              if (v166 == 1634759272)
              {
                v167 = 6;
              }

              else
              {
                v167 = 8;
              }

              v168 = 1;
            }

            BYTE4(__src[12]) = v168;
            HIDWORD(__src[28]) = v167;
            if (*(DerivedStorage + 575) == 1)
            {
              *(DerivedStorage + 560) = ProResEncoder_AdjustBitRateAndTargetSizeMultiplier(DerivedStorage, v194, *(v197 + 8));
              if (ProResEncoder_CalculateRawBitRates(__src, DerivedStorage))
              {
                if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                {
                  ProResEncoder_EncodeFrame();
                }

                goto LABEL_217;
              }

              *(&__src[27] + 2) = 50463233;
              __src[14] = xmmword_295393700;
              LODWORD(__src[16]) = 1110441984;
              *(&__src[16] + 8) = xmmword_295393710;
              *&__src[15] = 0x4000000040;
              *(&__src[15] + 1) = 0x4300000043000000;
              HIBYTE(__src[25]) = 1;
              LOWORD(__src[26]) = 2048;
              DWORD2(__src[21]) = 0;
              memset_pattern16(&__src[17] + 8, &unk_295393730, 0x40uLL);
              v151 = v195;
            }

            if (*(DerivedStorage + 676) != -1)
            {
              BYTE4(__src[12]) = *(DerivedStorage + 676);
            }

            if (*(DerivedStorage + 680) != -1)
            {
              HIDWORD(__src[28]) = *(DerivedStorage + 680);
            }

            DWORD2(__src[12]) = 16386 * NumSlices + 160;
            if (*(DerivedStorage + 570) != 1)
            {
              v33 = v196;
              if (v189 != 4)
              {
                if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                {
                  ProResEncoder_EncodeFrame();
                }

                goto LABEL_94;
              }

              v111 = 0;
              goto LABEL_267;
            }

            v33 = v196;
            if ((v189 & 0xFFFFFFFFFFFFFFFBLL) != 0)
            {
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                ProResEncoder_EncodeFrame();
              }

              goto LABEL_94;
            }

            v169 = v151[9];
            if (v169 <= 1652056887)
            {
              if (v169 > 1650946097)
              {
                if (v169 != 1650946098)
                {
                  if (v169 == 1651519798)
                  {
                    v187 = BYTE4(__src[22]);
                    if (BYTE4(__src[22]) >= 4u && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                    {
                      v188 = *v199;
                      LODWORD(buffer.tv_sec) = 67110146;
                      HIDWORD(buffer.tv_sec) = v188;
                      buffer.tv_nsec = 0x82000000A120400;
                      v210 = "ProResEncoder_EncodeFrame";
                      v211 = 1024;
                      *v212 = v187;
                      *&v212[4] = 1024;
                      *&v212[6] = 3;
                      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input cfa_pattern %d does not match with output format CFA/bayer_pattern [0,%d].\n", &buffer, 0x24u);
                    }

                    DWORD1(__src[2]) = 1;
                    goto LABEL_442;
                  }

                  v34 = v197;
                  a3 = pixelBuffer;
                  if (v169 != 1651798066)
                  {
                    goto LABEL_443;
                  }
                }

LABEL_395:
                v173 = BYTE4(__src[22]);
                if (v169 == 1919381552 && BYTE4(__src[22]))
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_419;
                  }

                  v174 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v174;
                  buffer.tv_nsec = 0x82000000A3D0400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v173;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 0.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v173 = BYTE4(__src[22]);
                }

                if (v169 == 1735553072 && v173 != 1)
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_419;
                  }

                  v175 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v175;
                  buffer.tv_nsec = 0x82000000A410400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v173;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 1.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v173 = BYTE4(__src[22]);
                }

                if (v169 == 1734504496 && v173 != 2)
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_419;
                  }

                  v176 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v176;
                  buffer.tv_nsec = 0x82000000A450400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v173;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 2.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v173 = BYTE4(__src[22]);
                }

                if (v169 == 1650946096 && v173 != 3)
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_419;
                  }

                  v177 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v177;
                  buffer.tv_nsec = 0x82000000A490400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v173;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 3.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v173 = BYTE4(__src[22]);
                }

                if (v169 != 1650946098 || v173 == 3)
                {
LABEL_415:
                  if (v169 == 1651798066 && v173 >= 4 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    v179 = *v199;
                    LODWORD(buffer.tv_sec) = 67110146;
                    HIDWORD(buffer.tv_sec) = v179;
                    buffer.tv_nsec = 0x82000000A510400;
                    v210 = "ProResEncoder_EncodeFrame";
                    v211 = 1024;
                    *v212 = v173;
                    *&v212[4] = 1024;
                    *&v212[6] = 3;
                    _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input cfa_pattern %d does not match with output format CFA/bayer_pattern [0,%d].\n", &buffer, 0x24u);
                  }

                  goto LABEL_419;
                }

                if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                {
                  v178 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v178;
                  buffer.tv_nsec = 0x82000000A4D0400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v173;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 3.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v173 = BYTE4(__src[22]);
                  goto LABEL_415;
                }

LABEL_419:
                *&__src[2] = 0x100000001;
LABEL_442:
                v34 = v197;
                a3 = pixelBuffer;
                goto LABEL_443;
              }

              if (v169 == 1647392369)
              {
                v185 = BYTE4(__src[22]);
                if (BYTE4(__src[22]) >= 4u && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                {
                  v186 = *v199;
                  LODWORD(buffer.tv_sec) = 67110146;
                  HIDWORD(buffer.tv_sec) = v186;
                  buffer.tv_nsec = 0x82000000A0C0400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v185;
                  *&v212[4] = 1024;
                  *&v212[6] = 3;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input cfa_pattern %d does not match with output format CFA/bayer_pattern [0,%d].\n", &buffer, 0x24u);
                }

                DWORD1(__src[2]) = 0;
                goto LABEL_442;
              }

              v34 = v197;
              a3 = pixelBuffer;
              if (v169 == 1650942776)
              {
                goto LABEL_420;
              }

              v170 = 1650946096;
            }

            else if (v169 <= 1735549751)
            {
              if (v169 == 1652056888 || v169 == 1734501176)
              {
                goto LABEL_420;
              }

              v170 = 1734504496;
            }

            else
            {
              if (v169 <= 1919378231)
              {
                if (v169 != 1735549752)
                {
                  v170 = 1735553072;
                  goto LABEL_394;
                }

LABEL_420:
                v180 = BYTE4(__src[22]);
                if (v169 == 1919378232 && BYTE4(__src[22]))
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_441;
                  }

                  v181 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v181;
                  buffer.tv_nsec = 0x82000000A1E0400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v180;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 0.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v180 = BYTE4(__src[22]);
                }

                if (v169 == 1735549752 && v180 != 1)
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_441;
                  }

                  v182 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v182;
                  buffer.tv_nsec = 0x82000000A220400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v180;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 1.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v180 = BYTE4(__src[22]);
                }

                if (v169 == 1734501176 && v180 != 2)
                {
                  if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_441;
                  }

                  v183 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v183;
                  buffer.tv_nsec = 0x82000000A260400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v180;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 2.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v180 = BYTE4(__src[22]);
                }

                if (v169 != 1650942776 || v180 == 3)
                {
LABEL_436:
                  if (v169 == 1652056888 && v180 >= 4)
                  {
                    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                    {
                      ProResEncoder_EncodeFrame();
                    }

                    a3 = pixelBuffer;
                    goto LABEL_225;
                  }

                  goto LABEL_441;
                }

                if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
                {
                  v184 = *v199;
                  LODWORD(buffer.tv_sec) = 67109890;
                  HIDWORD(buffer.tv_sec) = v184;
                  buffer.tv_nsec = 0x82000000A2A0400;
                  v210 = "ProResEncoder_EncodeFrame";
                  v211 = 1024;
                  *v212 = v180;
                  _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): input bayer_pattern %d does not match with output format bayer_pattern 3.\n", &buffer, 0x1Eu);
                  v169 = v195[9];
                  v180 = BYTE4(__src[22]);
                  goto LABEL_436;
                }

LABEL_441:
                *(&__src[2] + 4) = 0x200000001;
                goto LABEL_442;
              }

              if (v169 == 1919378232)
              {
                goto LABEL_420;
              }

              v170 = 1919381552;
            }

LABEL_394:
            if (v169 != v170)
            {
LABEL_443:
              v111 = 0;
              v121 = &__src[2] + 12;
              v122 = BYTE4(__src[22]);
              goto LABEL_266;
            }

            goto LABEL_395;
          }

          v97 = v96;
          v98 = CFGetTypeID(v96);
          cfa = v97;
          if (v98 == CFDataGetTypeID())
          {
            Length = CFDataGetLength(v97);
            if (Length)
            {
              v100 = *(v197 + 192) - *(v197 + 184);
              v101 = Length;
              std::vector<unsigned char>::resize(v197 + 184, v100 + Length);
              if (getCVBufferAttachmentData(pixelBuffer, v95, kCFNumberCharType, (*(v197 + 184) + v100), v101, 1u))
              {
                BYTE14(__src[25]) = 1;
              }

              else
              {
                std::vector<unsigned char>::resize(v197 + 184, v100);
              }

              goto LABEL_329;
            }

            if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buffer.tv_sec) = 67109890;
              HIDWORD(buffer.tv_sec) = v198;
              buffer.tv_nsec = 0x820000002B20400;
              v210 = "getRAWAttachments";
              v211 = 1024;
              *v212 = 0;
              v131 = MEMORY[0x29EDCA988];
              v132 = "WARNING AppleProResHW (0x%x): %d: %s(): Attachment CFData length %u is invalid. Skip kCVPixelBufferProResRAWKey_MetadataExtension\n\n";
              v133 = 30;
              goto LABEL_327;
            }
          }

          else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buffer.tv_sec) = 67109634;
            HIDWORD(buffer.tv_sec) = v198;
            buffer.tv_nsec = 0x820000002B70400;
            v210 = "getRAWAttachments";
            v131 = MEMORY[0x29EDCA988];
            v132 = "WARNING AppleProResHW (0x%x): %d: %s(): Attachment type is not CFData. Skip kCVPixelBufferProResRAWKey_MetadataExtension\n";
            v133 = 24;
LABEL_327:
            _os_log_impl(&dword_2952FC000, v131, OS_LOG_TYPE_DEFAULT, v132, &buffer, v133);
          }

LABEL_329:
          CFRelease(cfa);
          goto LABEL_330;
        }

        if (CVBufferAttachment > v73)
        {
          *(DerivedStorage + 936) = BYTE4(__src[22]);
          *(DerivedStorage + 938) = CVBufferAttachment;
          *(DerivedStorage + 940) = v73;
          goto LABEL_125;
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResEncoder_EncodeFrame();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_EncodeFrame();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_EncodeFrame();
    }

    v33 = v196;
LABEL_185:
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_EncodeFrame();
    }

    goto LABEL_94;
  }

  if (v195[3] != 3)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_EncodeFrame();
    }

    goto LABEL_92;
  }

  if (*(DerivedStorage + 456) == 3)
  {
    goto LABEL_82;
  }

  HIDWORD(__src[21]) = 3;
  if (*(DerivedStorage + 662) != 1)
  {
    goto LABEL_104;
  }

  v193 = cf * v192;
  HIDWORD(__src[0]) = 7;
  BitDepthOfComponentOfPlane = IOSurfaceGetBitDepthOfComponentOfPlane(v33, 2uLL, 0);
  LOBYTE(__src[1]) = BitDepthOfComponentOfPlane == 16;
  if (BitDepthOfComponentOfPlane == 16)
  {
    v55 = 2;
  }

  else
  {
    v55 = 1;
  }

  LODWORD(__src[29]) = v55;
  v56 = *(DerivedStorage + 416);
  if (v56 && *(DerivedStorage + 480) != 1)
  {
LABEL_192:
    *(v197 + 96) = v56;
    v51 = v193;
    goto LABEL_193;
  }

  v57 = createFormatDescriptionExtensions(pixelBuffer, DerivedStorage, 1);
  if (v57)
  {
    v58 = v57;
    if (*DerivedStorage == 2)
    {
      v59 = CMVideoFormatDescriptionCreate(*MEMORY[0x29EDB8ED8], *(DerivedStorage + 448), *(DerivedStorage + 512), *(DerivedStorage + 516), v57, (DerivedStorage + 416));
    }

    else
    {
      v59 = VTEncoderSessionCreateVideoFormatDescription();
    }

    v102 = v59;
    CFRelease(v58);
    if (v102)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_EncodeFrame();
      }

LABEL_92:
      v34 = v197;
LABEL_93:
      a3 = pixelBuffer;
      goto LABEL_94;
    }

    *(DerivedStorage + 480) = 0;
    v56 = *(DerivedStorage + 416);
    v53 = v195;
    goto LABEL_192;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResEncoder_EncodeFrame();
  }

LABEL_102:
  *(DerivedStorage + 712) = 0;
  IOSurfaceGetWidth(v33);
  IOSurfaceGetHeight(v33);
  kdebug_trace();
  return 0;
}

uint64_t ProResEncoder_CopySupportedPropertyDictionary(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v4 = DerivedStorage;
    v5 = *(DerivedStorage + 440);
    if (v5)
    {
      CFRetain(v5);
      result = 0;
      *a2 = *(v4 + 440);
    }

    else
    {
      *a2 = 0;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 988);
        v8[0] = 67109634;
        v8[1] = v7;
        v9 = 1024;
        v10 = 3433;
        v11 = 2080;
        v12 = "ProResEncoder_CopySupportedPropertyDictionary";
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "WARNING AppleProResHW (0x%x): %d: %s(): AppleProResHW property dictionary is NULL - encoder configuration may be incomplete\n", v8, 0x18u);
      }

      return 4294954392;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CopySupportedPropertyDictionary();
    }

    return 4294954384;
  }

  return result;
}

uint64_t ProResEncoder_GetInInfoSizes(_DWORD *a1, int a2, int a3, uint64_t a4, int a5, int a6, _DWORD *a7, uint64_t a8, float a9, float a10, BOOL a11)
{
  v14 = a3;
  *v42 = 0;
  v16 = a1[18] * a1[17];
  if (a3)
  {
    if (a1[116] == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    a9 = v17;
  }

  if (GetCompressedFrameSize(a2, v16, a9, a10, &v42[1], v42, a6, a8))
  {
    v18 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_GetInInfoSizes();
    }
  }

  else
  {
    v20 = a1[116];
    if (!v20 || (v14 & 1) != 0)
    {
      v22 = v42[1];
      v23 = (v42[1] * 1.1);
    }

    else
    {
      v21 = v16 << (v20 == 2);
      v22 = v42[1];
      v23 = v42[1] + v21;
    }

    a1[50] = v23;
    v24 = v42[0];
    *a7 = v42[0];
    v25 = v22 - 156;
    if ((v22 - 156) <= 0)
    {
      v18 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_GetInInfoSizes();
      }
    }

    else
    {
      v26 = v24 - 156;
      if ((v24 - 156) <= 0)
      {
        v18 = 3758097084;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResEncoder_GetInInfoSizes();
        }
      }

      else
      {
        v27 = (a1[17] + 15) >> 4;
        v28 = (a1[18] + 15) >> 4;
        v29 = a1[87];
        v30 = v27 & ~(-1 << v29);
        if (v30)
        {
          v31 = 0;
          do
          {
            v31 += v30 & 1;
            v32 = v30 > 1;
            v30 >>= 1;
          }

          while (v32);
        }

        else
        {
          v31 = 0;
        }

        a1[118] = v25;
        a1[119] = v26;
        v33 = 8 * v28 * (v31 + (v27 >> v29)) + 8;
        v34 = v25 - v33;
        v35 = v26 - v33;
        if (a5)
        {
          v35 = (v35 * (128 - a5)) >> 7;
          v34 = (v34 * (128 - a5)) >> 7;
        }

        if (v34 <= 1)
        {
          v34 = 1;
        }

        if (v35 <= v34)
        {
          if (v35 <= 1)
          {
            v35 = 1;
          }

          v36 = v28 * v27;
          v37 = v35 / v36;
          v38 = 8 * (v35 / v36);
          if ((v37 >> 13))
          {
            v39 = 0x3FFF;
          }

          else
          {
            v39 = v38;
          }

          v40 = v34 / v36;
          if ((v40 >> 13))
          {
            v41 = 0x3FFF;
          }

          else
          {
            v41 = 8 * v40;
          }

          a1[51] = v39;
          a1[52] = v41;
          if (*(a4 + 4) == 1)
          {
            if (v39 >= 0x3000)
            {
              v39 = 12288;
            }

            if (v41 >= 0x3000)
            {
              v41 = 12288;
            }

            a1[51] = v39;
            a1[52] = v41;
          }

          v18 = 0;
          if (v41 < v39)
          {
            a1[52] = v39;
          }
        }

        else
        {
          v18 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResEncoder_GetInInfoSizes();
          }
        }
      }
    }
  }

  return v18;
}

uint64_t ProResEncoder_CalculateRawBitRates(uint64_t a1, uint64_t a2)
{
  *v27 = 0;
  v4 = *(a1 + 68);
  v5 = *(a1 + 72);
  v6 = (v4 + 15) >> 4;
  if (v6 >= v4)
  {
    v7 = *(a1 + 68);
  }

  else
  {
    v7 = (v4 + 15) >> 4;
  }

  if (v4 + 15 >= 0x10)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a1 + 68);
  }

  v9 = (v5 + 15) >> 4;
  if (v9 >= v5)
  {
    v9 = *(a1 + 72);
  }

  if (v5 + 15 >= 0x10)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + 72);
  }

  v11 = numSlicesPerRow(0x10u, v6);
  if (GetCompressedFrameSize(*(a2 + 448), (v8 * v10) << 8, *(a2 + 560), *(a2 + 564), &v27[1], v27, *(a2 + 617), *(a2 + 988)))
  {
    v12 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CalculateRawBitRates();
    }
  }

  else
  {
    v13 = v10 * v8;
    v14 = v27[0];
    *(a2 + 720) = v27[0];
    v15 = 10 * v11 * v10 + 8;
    v16 = v27[1] - v15;
    v17 = v14 - v15;
    v18 = 8 * v17;
    if (v17 < 0)
    {
      v18 = 8;
    }

    v19 = v18 / v13;
    if (v16 >= 0)
    {
      v20 = 8 * v16;
    }

    else
    {
      v20 = 8;
    }

    v21 = v20 / v13;
    *(a1 + 204) = v19;
    *(a1 + 208) = v21;
    if (v19 <= v21)
    {
      v12 = 0;
      v22 = v10 / 5;
      if (v10 / 5 <= 0x1F / v11 + 1)
      {
        v23 = 0x1F / v11 + 1;
      }

      else
      {
        v23 = v10 / 5;
      }

      *(a1 + 418) = v22;
      v24 = v23 + v22;
      *(a1 + 420) = v24;
      v25 = v24 + v23;
      *(a1 + 422) = v25;
      *(a1 + 424) = v25 + v23;
    }

    else
    {
      v12 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResEncoder_CalculateRawBitRates();
      }
    }
  }

  return v12;
}

void *std::vector<unsigned char>::assign(uint64_t *a1, size_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = v15 + v14;
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

uint64_t ProResEncoder_CheckEncodeCmd(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v45 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 4);
  if (v6 >= 6)
  {
    if (v6 == 7)
    {
      v7 = *(a2 + 464);
      if (*(a3 + 8) == 1)
      {
        if (v7 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v7 == 2 || !v7)
      {
LABEL_27:
        v8 = 3758097084;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResEncoder_CheckEncodeCmd();
        }

        return v8;
      }
    }

    else if ((v6 & 0x7FFFFFFE) != 6)
    {
      return 0;
    }

    if (a1[576] != 1)
    {
      goto LABEL_69;
    }

    v9 = *(a3 + 2);
    v11 = *(a3 + 36);
    v10 = *(a3 + 40);
    v12 = *(a3 + 44);
    v13 = *(a3 + 12);
    switch(v13)
    {
      case 3u:
        v15 = v11 != 0;
        v26 = v11 == 0;
        if (!v10)
        {
          v26 = 0;
        }

        v27 = v9 == 0;
        break;
      case 2u:
        v15 = 1;
        v26 = (v10 != 0) & ~v9;
        v27 = v11 == 0;
        break;
      case 1u:
        if ((v9 & 1) == 0)
        {
          if (v12)
          {
            goto LABEL_78;
          }

          goto LABEL_69;
        }

        if (v11)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 == 0;
        }

        v15 = v14;
        if (v12)
        {
          goto LABEL_78;
        }

LABEL_77:
        if (v15)
        {
LABEL_78:
          v8 = 3758097084;
          if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            return v8;
          }

          v29 = 67110914;
          v30 = v4;
          v32 = 2019;
          v33 = 2080;
          v31 = 1024;
          v34 = "ProResEncoder_CheckEncodeCmd";
          v35 = 1024;
          v36 = v13;
          v37 = 1024;
          v38 = v9;
          v39 = 1024;
          v40 = v11;
          v41 = 1024;
          v42 = v10;
          v43 = 1024;
          v44 = v12;
          v25 = MEMORY[0x29EDCA988];
          goto LABEL_80;
        }

LABEL_69:
        if (v6 == 6 && *(a2 + 464) && a1[662] == 1)
        {
          v8 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResEncoder_CheckEncodeCmd();
          }

          return v8;
        }

        return 0;
      default:
        v15 = 1;
        if (!v12)
        {
          goto LABEL_77;
        }

LABEL_66:
        if (v13 < 2 || !*(a3 + 2) || !v10)
        {
          goto LABEL_78;
        }

        goto LABEL_69;
    }

    if (v27)
    {
      v15 = v26;
    }

    if (!v12)
    {
      goto LABEL_77;
    }

    goto LABEL_66;
  }

  if (a1[575] != 1)
  {
    goto LABEL_32;
  }

  if (*(a2 + 416) > 0x1000u)
  {
    v8 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResEncoder_CheckEncodeCmd();
    }

    return v8;
  }

  if (!*(a3 + 16))
  {
LABEL_32:
    if (a1[576] == 1)
    {
      v16 = *(a3 + 2);
      v17 = *(a3 + 40);
      v18 = *(a3 + 44);
      v19 = *(a3 + 12);
      if (v19 == 1)
      {
        v8 = 0;
        if (v17)
        {
          v22 = 1;
        }

        else
        {
          v22 = v18 == 0;
        }

        v23 = v22;
        if (!*(a3 + 2) || !v23)
        {
          return v8;
        }
      }

      else if (v19 == 3)
      {
        if (v17)
        {
          v20 = *(a3 + 2);
        }

        else
        {
          v20 = 0;
        }

        if (v17)
        {
          v21 = 1;
        }

        else
        {
          v21 = *(a3 + 2);
        }

        if ((v20 & 1) == 0 && v21)
        {
          return 0;
        }
      }

      else if (v19 == 2 && *(a3 + 2) && !v17)
      {
        return 0;
      }

      v8 = 3758097084;
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        return v8;
      }

      v24 = *(a3 + 36);
      v29 = 67110914;
      v30 = v4;
      v32 = 2066;
      v33 = 2080;
      v31 = 1024;
      v34 = "ProResEncoder_CheckEncodeCmd";
      v35 = 1024;
      v36 = v19;
      v37 = 1024;
      v38 = v16;
      v39 = 1024;
      v40 = v24;
      v41 = 1024;
      v42 = v17;
      v43 = 1024;
      v44 = v18;
      v25 = MEMORY[0x29EDCA988];
LABEL_80:
      _os_log_error_impl(&dword_2952FC000, v25, OS_LOG_TYPE_ERROR, "ERROR AppleProResHW (0x%x): %d: %s(): Illegal combination of numPasses %d, fastPass %d, QpmEn %d, SwrEn %d BsWrDis %d\n", &v29, 0x36u);
      return v8;
    }

    return 0;
  }

  v8 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResEncoder_CheckEncodeCmd();
  }

  return v8;
}

BOOL getCVBufferAttachmentData(__CVBuffer *a1, const __CFString *a2, CFNumberType a3, UInt8 *a4, unsigned int a5, unsigned int a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v11 = CVBufferCopyAttachment(a1, a2, 0);
  CFStringGetCString(a2, buffer, 100, 0);
  if (v11)
  {
    v12 = CFGetTypeID(v11);
    if (v12 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v11);
      if (Length == a5)
      {
        v26.length = Length;
        v26.location = 0;
        CFDataGetBytes(v11, v26, a4);
        v14 = 1;
LABEL_13:
        CFRelease(v11);
        return v14;
      }
    }

    else
    {
      v15 = CFGetTypeID(v11);
      if (v15 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v11);
        if (Count == a5 / a6 && a6 <= a5)
        {
          v19 = Count;
          v20 = 1;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v20 - 1);
            Value = CFNumberGetValue(ValueAtIndex, a3, a4);
            v14 = Value != 0;
            a4 += a6;
            if (Value)
            {
              v23 = v20 >= v19;
            }

            else
            {
              v23 = 1;
            }

            ++v20;
          }

          while (!v23);
          goto LABEL_13;
        }
      }
    }

    v14 = 0;
    goto LABEL_13;
  }

  return 0;
}

uint64_t getCVBufferAttachmentNumber<unsigned int>(__CVBuffer *a1, const __CFString *a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = CVBufferCopyAttachment(a1, a2, 0);
  v8 = 0;
  if (v5)
  {
    v6 = v5;
    if (!CFNumberGetValue(v5, kCFNumberSInt32Type, &v8))
    {
      CFStringGetCString(a2, buffer, 100, 0);
      v8 = a3;
    }

    CFRelease(v6);
    return v8;
  }

  else
  {
    CFStringGetCString(a2, buffer, 100, 0);
  }

  return a3;
}

float getCVBufferAttachmentNumber<float>(__CVBuffer *a1, const __CFString *a2, float a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = CVBufferCopyAttachment(a1, a2, 0);
  v8 = 0.0;
  if (v5)
  {
    v6 = v5;
    if (!CFNumberGetValue(v5, kCFNumberFloat32Type, &v8))
    {
      CFStringGetCString(a2, buffer, 100, 0);
      v8 = a3;
    }

    CFRelease(v6);
    return v8;
  }

  else
  {
    CFStringGetCString(a2, buffer, 100, 0);
  }

  return a3;
}

void std::vector<unsigned char>::resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

uint64_t ProResFrameReceiver::MakeCurrentThreadTimeConstraintThread(ProResFrameReceiver *this)
{
  mach_timebase_info(&info);
  LODWORD(v2) = info.numer;
  LODWORD(v1) = info.denom;
  *policy_info = vmovn_s64(vcvtq_u64_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(v1 / v2 * 1000000000.0), 0), xmmword_295393A10)));
  v8 = policy_info[0];
  v9 = 1;
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  return thread_policy_set(v4, 2u, policy_info, 4u);
}

void ProResFrameReceiver::ProResFrameReceiver(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = *a2;
  *(a1 + 120) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 96) = *(a2 + 64);
  *(a1 + 112) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 40);
  *(a1 + 88) = *(a2 + 56);
  *(a1 + 130) = 0;
  *(a1 + 66) = *(a2 + 25);
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 129) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 240) = *(a2 + 128);
  *(a1 + 256) = *(a2 + 144);
  *(a1 + 264) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 312) = a4;
  *(a1 + 316) = a3;
  *(a1 + 192) = 0;
  *(a1 + 132) = 4 * *(a2 + 120);
  *(a1 + 208) = *(a2 + 96);
  operator new[]();
}

void ProResFrameReceiver::~ProResFrameReceiver(ThreadPool **this)
{
  if (*this)
  {
    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
  }

  v2 = this[29];
  if (v2)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v2);
    MEMORY[0x29C24C730]();
    this[29] = 0;
  }

  v3 = this[27];
  if (v3)
  {
    freeProResFrame(v3);
    this[27] = 0;
  }

  v4 = this[28];
  if (v4)
  {
    freeProResFrame(v4);
    this[28] = 0;
  }

  v5 = this[34];
  if (v5)
  {
    MEMORY[0x29C24C710](v5, 0x1000C80BDFB0063);
    this[34] = 0;
    *(this + 70) = 0;
  }

  v6 = this[25];
  if (v6)
  {
    MEMORY[0x29C24C710](v6, 0x1020C80E121CA55);
    this[25] = 0;
  }

  v7 = this[17];
  if (v7)
  {
    ThreadPool::~ThreadPool(v7);
    MEMORY[0x29C24C730]();
  }
}

void ProResFrameReceiver::RemoveIODispatcherFromRunLoop(ProResFrameReceiver *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRunLoopRemoveSource(*this, v2, *MEMORY[0x29EDB8FC0]);
    CFRelease(*(this + 1));
    *(this + 1) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 3));
    *(this + 3) = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v4, 1u, -1);
    *(this + 4) = 0;
  }
}

void freeProResFrame(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    MEMORY[0x29C24C710](v2, 0x1000C8077774924);
  }

  v3 = a1[7];
  if (v3)
  {
    MEMORY[0x29C24C710](v3, 0x1000C80BDFB0063);
  }

  v4 = a1[40];
  if (v4)
  {
    MEMORY[0x29C24C710](v4, 0x1000C8077774924);
  }

  v5 = a1[41];
  if (v5)
  {
    MEMORY[0x29C24C710](v5, 0x1000C8077774924);
  }

  v6 = a1[42];
  if (v6)
  {
    MEMORY[0x29C24C710](v6, 0x1000C8077774924);
  }

  v7 = a1[43];
  if (v7)
  {
    MEMORY[0x29C24C710](v7, 0x1000C80BDFB0063);
  }

  v8 = a1[44];
  if (v8)
  {
    MEMORY[0x29C24C710](v8, 0x1000C80BDFB0063);
  }

  free(a1);
}

uint64_t ProResFrameReceiver::InitializeDoubleEncode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 284) >= a2)
  {
    return 1;
  }

  v3 = a2;
  *(a1 + 264) = 0;
  v5 = *(a1 + 232);
  if (v5)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v5);
    MEMORY[0x29C24C730]();
    *(a1 + 232) = 0;
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    freeProResFrame(v6);
    *(a1 + 216) = 0;
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    freeProResFrame(v7);
    *(a1 + 224) = 0;
  }

  v8 = *(a1 + 272);
  if (v8)
  {
    MEMORY[0x29C24C710](v8, 0x1000C80BDFB0063, a3);
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  if (v3 < 0x4651)
  {
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::InitializeDoubleEncode();
  }

  v9 = *(a1 + 232);
  if (v9)
  {
    ProResHWAnalyzer::~ProResHWAnalyzer(v9);
    MEMORY[0x29C24C730]();
    *(a1 + 232) = 0;
  }

  v10 = *(a1 + 216);
  if (v10)
  {
    freeProResFrame(v10);
    *(a1 + 216) = 0;
  }

  v11 = *(a1 + 224);
  if (v11)
  {
    freeProResFrame(v11);
    *(a1 + 224) = 0;
  }

  result = *(a1 + 272);
  if (result)
  {
    MEMORY[0x29C24C710](result, 0x1000C80BDFB0063);
    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
  }

  return result;
}

void *allocateProResFrame(unsigned int a1)
{
  if (malloc_type_calloc(0x168uLL, 1uLL, 0x10100406F847EBDuLL))
  {
    operator new[]();
  }

  return 0;
}

uint64_t ProResFrameReceiver::RegisterCallback(ProResFrameReceiver *this)
{
  v16 = *MEMORY[0x29EDCA608];
  inputStruct[0] = ProResFrameReceiver::FrameDone;
  inputStruct[1] = this;
  *reference = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = IOConnectCallAsyncMethod(*(this + 8), 1u, *(this + 4), reference, 8u, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v3 = *(this + 78);
      *buf = 67109634;
      v7 = v3;
      v8 = 2080;
      v9 = "RegisterCallback";
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): IOConnectCallAsyncMethod failed -> Dispatcher cannot be installed err 0x%x\n", buf, 0x18u);
    }

    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
  }

  return v2;
}

void ProResFrameReceiver::FrameDone(ProResFrameReceiver *this, void *a2, int32x4_t *a3, unint64_t *a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = 0uLL;
  v17 = 0;
  if (a3)
  {
    v8 = a4;
    v10 = a3->i32[0];
    v11 = a3->u32[2];
    v12 = a3[1].i32[0];
    v15 = a3[1].i64[1];
    v13 = a3[2].i32[0];
    v14 = a3[2].i32[2];
    if (v8 >= 8)
    {
      v16 = vuzp1q_s32(a3[3], a3[4]);
      v17 = a3[5].i64[0];
    }

    ProResFrameReceiver::ProcessFrameDone(this, v11, v10, v12, v13, &v15, v14);
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::FrameDone();
  }
}

uint64_t ProResFrameReceiver::Setup(mach_port_t *this)
{
  Current = CFRunLoopGetCurrent();
  *this = Current;
  if (!Current)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::Setup();
    }

    return 3758097085;
  }

  v3 = ProResFrameReceiver::AddIODispatcherToRunLoop(this);
  if (v3)
  {
    v4 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::Setup();
    }

    return v4;
  }

  if (*(this + 64) == 1)
  {
    setpriority(3, 0, 4096);
  }

  else
  {
    ProResFrameReceiver::MakeCurrentThreadTimeConstraintThread(v3);
  }

  return ProResFrameReceiver::RegisterCallback(this);
}

uint64_t ProResFrameReceiver::AddIODispatcherToRunLoop(mach_port_t *this)
{
  v17 = *MEMORY[0x29EDCA608];
  if (!IOCreateReceivePort(0x39u, this + 4))
  {
    buf.version = 1;
    buf.info = this;
    memset(&buf.retain, 0, 24);
    v4 = *MEMORY[0x29EDB8ED8];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x29EDB8ED8], this[4], MEMORY[0x29EDBB0D0], &buf, 0);
    *(this + 3) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 1) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*this, RunLoopSource, *MEMORY[0x29EDB8FC0]);
        return 0;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v8 = this[78];
        v10 = 67109378;
        v11 = v8;
        v12 = 2080;
        v13 = "AddIODispatcherToRunLoop";
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: CFMachPortCreateRunLoopSource failed -> Dispatcher cannot be installed\n", &v10, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v7 = this[78];
        v10 = 67109634;
        v11 = v7;
        v12 = 2080;
        v13 = "AddIODispatcherToRunLoop";
        v14 = 2048;
        v15 = 0;
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: CFMachPortCreateWithPort failed m_CFAsyncPort %p\n", &v10, 0x1Cu);
      }

      *(this + 3) = 0;
    }

    ProResFrameReceiver::RemoveIODispatcherFromRunLoop(this);
    return 3758097085;
  }

  v2 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = this[78];
    LODWORD(buf.version) = 67109378;
    HIDWORD(buf.version) = v3;
    LOWORD(buf.info) = 2080;
    *(&buf.info + 2) = "AddIODispatcherToRunLoop";
    _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: IOCreateReceivePort failed -> Dispatcher cannot be installed\n", &buf, 0x12u);
  }

  return v2;
}

uint64_t ProResFrameReceiver::ChangeBackgroundPolicy(uint64_t this, int a2)
{
  if (*(this + 64) != a2)
  {
    *(this + 64) = a2;
  }

  return this;
}

uint64_t stitchCallback(unsigned __int8 *a1, size_t offsetIntoDestination, size_t dataLength, CMBlockBufferRef *a4)
{
  v4 = CMBlockBufferReplaceDataBytes(a1, *a4, offsetIntoDestination, dataLength);
  if (v4 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    stitchCallback();
  }

  return v4;
}

uint64_t ProResFrameReceiver::EmitPendingFrames(ProResFrameReceiver *this)
{
  v27 = *MEMORY[0x29EDCA608];
  v1 = *(this + 48);
  v2 = *(this + 25) + 32 * (v1 % *(this + 33));
  v3 = 1;
  if (*v2 == 1)
  {
    v5 = (this + 312);
    v6 = MEMORY[0x29EDCA988];
    while (*(v2 + 4) == v1)
    {
      v7 = *(v2 + 16);
      v8 = *(v2 + 8);
      if (v7 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = *v5;
        v10 = *(v8 + 56);
        *buf = 67109890;
        v20 = v9;
        v21 = 2080;
        v22 = "EmitPendingFrames";
        v23 = 1024;
        v24 = v7;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_2952FC000, v6, OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Emit to client status=0x%x for subFrameId=%d \n", buf, 0x1Eu);
      }

      v11 = *(v2 + 24);
      if (*(v8 + 4) > 3)
      {
        ProResFrameReceiver::EmitEncodedFrame(this, v8, v11, v1, v7);
        v14 = *(v2 + 24);
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = *(v8 + 72);
        if (v15)
        {
          CVPixelBufferRelease(v15);
        }

        v16 = *(v8 + 80);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      else
      {
        ProResFrameReceiver::EmitDecodedFrame(this, v8, v11, v1, v7, 0);
        v12 = *(v2 + 24);
        if (v12)
        {
          CVPixelBufferRelease(v12);
        }

        v13 = *(v8 + 40);
        if (v13)
        {
          CFRelease(v13);
        }

        VTDecoderSessionCleanUpAfterDecode();
      }

      ++*(this + 48);
      pthread_mutex_lock(*(this + 13));
      bzero(v8, 0x320uLL);
      **(this + 12) = 1;
      pthread_cond_signal(*(this + 14));
      pthread_mutex_unlock(*(this + 13));
      atomic_fetch_add(*(this + 9), 0xFFFFFFFF);
      pthread_mutex_lock(*(this + 10));
      if (!atomic_load(*(this + 9)))
      {
        pthread_cond_signal(*(this + 11));
      }

      pthread_mutex_unlock(*(this + 10));
      *v2 = 0u;
      *(v2 + 16) = 0u;
      v1 = *(this + 48);
      v2 = *(this + 25) + 32 * (v1 % *(this + 33));
      if ((*v2 & 1) == 0)
      {
        return 1;
      }
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::EmitPendingFrames();
    }

    return 0;
  }

  return v3;
}

uint64_t ProResFrameReceiver::EmitDecodedFrame(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  if (a6)
  {
    kdebug_trace();
  }

  if (a1[5] == 1)
  {
    v11 = a1[18];
    if (v11)
    {
      v12 = a1[20];
      if (v12)
      {
        v12(v11, *(a2 + 16), a5);
      }
    }
  }

  else
  {
    VTDecoderSessionEmitDecodedFrame();
  }

  if (a6)
  {
    kdebug_trace();
  }

  return 1;
}