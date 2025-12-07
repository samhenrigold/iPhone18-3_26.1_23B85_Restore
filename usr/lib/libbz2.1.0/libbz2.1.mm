int BZ2_bzCompressInit(bz_stream *strm, int blockSize100k, int verbosity, int workFactor)
{
  result = -2;
  if (strm && (blockSize100k - 10) >= 0xFFFFFFF7 && workFactor <= 0xFA)
  {
    if (workFactor)
    {
      v8 = workFactor;
    }

    else
    {
      v8 = 30;
    }

    bzalloc = strm->bzalloc;
    if (!bzalloc)
    {
      bzalloc = sub_298581920;
      strm->bzalloc = sub_298581920;
    }

    if (!strm->bzfree)
    {
      strm->bzfree = sub_298587ABC;
    }

    v10 = bzalloc(strm->opaque, 55768, 1);
    if (v10)
    {
      v11 = v10;
      *v10 = strm;
      v10[4] = 0;
      v10[5] = 0;
      v10[3] = 0;
      v10[3] = (strm->bzalloc)(strm->opaque, (400000 * blockSize100k), 1);
      v11[4] = (strm->bzalloc)(strm->opaque, (400000 * blockSize100k + 136), 1);
      v12 = (strm->bzalloc)(strm->opaque, 262148, 1);
      v11[5] = v12;
      v13 = v11[3];
      if (v13)
      {
        v14 = v11[4];
        if (v14 && v12)
        {
          result = 0;
          *(v11 + 166) = blockSize100k;
          v11[1] = 0x200000002;
          *(v11 + 28) = 100000 * blockSize100k - 19;
          *(v11 + 164) = verbosity;
          *(v11 + 22) = v8;
          v11[9] = v13;
          v11[10] = 0;
          v11[7] = v13;
          v11[8] = v14;
          strm->state = v11;
          *&strm->total_in_lo32 = 0;
          *&strm->total_out_lo32 = 0;
          *(v11 + 92) = 256;
          *(v11 + 27) = 0;
          *(v11 + 116) = 0;
          v11[81] = 0xFFFFFFFFLL;
          *(v11 + 8) = 0u;
          *(v11 + 9) = 0u;
          *(v11 + 10) = 0u;
          *(v11 + 11) = 0u;
          *(v11 + 12) = 0u;
          *(v11 + 13) = 0u;
          *(v11 + 14) = 0u;
          *(v11 + 15) = 0u;
          *(v11 + 16) = 0u;
          *(v11 + 17) = 0u;
          *(v11 + 18) = 0u;
          *(v11 + 19) = 0u;
          *(v11 + 20) = 0u;
          *(v11 + 21) = 0u;
          *(v11 + 22) = 0u;
          *(v11 + 23) = 0u;
          *(v11 + 165) = 1;
          return result;
        }

        (strm->bzfree)(strm->opaque);
      }

      if (v11[4])
      {
        (strm->bzfree)(strm->opaque);
      }

      if (v11[5])
      {
        (strm->bzfree)(strm->opaque);
      }

      (strm->bzfree)(strm->opaque, v11);
    }

    return -3;
  }

  return result;
}

int BZ2_bzBuffToBuffCompress(char *dest, unsigned int *destLen, char *source, unsigned int sourceLen, int blockSize100k, int verbosity, int workFactor)
{
  v7 = -2;
  if (workFactor <= 0xFA && verbosity <= 4 && dest && destLen && source && (blockSize100k - 10) >= 0xFFFFFFF7)
  {
    memset(&v15, 0, 64);
    v12 = workFactor ? workFactor : 30;
    v15.bzfree = 0;
    v15.opaque = 0;
    v7 = BZ2_bzCompressInit(&v15, blockSize100k, verbosity, v12);
    if (!v7)
    {
      v15.next_in = source;
      v15.next_out = dest;
      v15.avail_in = sourceLen;
      v15.avail_out = *destLen;
      v13 = BZ2_bzCompress(&v15, 2);
      if (v13 == 3)
      {
        v7 = -8;
      }

      else
      {
        v7 = v13;
        if (v13 == 4)
        {
          v7 = 0;
          *destLen -= v15.avail_out;
        }
      }

      BZ2_bzCompressEnd(&v15);
    }
  }

  return v7;
}

int BZ2_bzCompress(bz_stream *strm, int action)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state)
  {
    return -2;
  }

  v4 = *state;
  if (*state != strm)
  {
    return -2;
  }

  v6 = *(state + 2);
  result = -1;
  while (v6 == 2)
  {
    if (action == 1)
    {
      v6 = 3;
    }

    else
    {
      if (action != 2)
      {
        result = -2;
        if (!action)
        {
          if (sub_298581ACC(strm))
          {
            return 1;
          }

          else
          {
            return -2;
          }
        }

        return result;
      }

      v6 = 4;
    }

    *(state + 4) = strm->avail_in;
    *(state + 2) = v6;
  }

  if (v6 == 1)
  {
    return result;
  }

  if (v6 != 3)
  {
    if (v6 != 4)
    {
      return 0;
    }

    if (action == 2 && *(state + 4) == v4->avail_in && sub_298581ACC(strm))
    {
      if (*(state + 4) || *(state + 23) <= 0xFFu && *(state + 24) > 0 || *(state + 30) < *(state + 29))
      {
        return 3;
      }

      *(state + 2) = 1;
      return 4;
    }

    return -1;
  }

  if (action != 1 || *(state + 4) != v4->avail_in)
  {
    return -1;
  }

  sub_298581ACC(strm);
  if (*(state + 4) || *(state + 23) <= 0xFFu && *(state + 24) > 0)
  {
    return 2;
  }

  result = 2;
  if (*(state + 30) >= *(state + 29))
  {
    *(state + 2) = 2;
    return 1;
  }

  return result;
}

BOOL sub_298581ACC(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 48);
  v4 = (v3 + 128);
  while (1)
  {
    v5 = *(v3 + 12);
    do
    {
      if (v5 == 2)
      {
        goto LABEL_27;
      }
    }

    while (v5 != 1);
    v7 = *(v3 + 116);
    v6 = *(v3 + 120);
    if (*(*v3 + 32) && v6 < v7)
    {
      v10 = *(*v3 + 24);
      do
      {
        *v10 = *(*(v3 + 80) + v6);
        v6 = *(v3 + 120) + 1;
        *(v3 + 120) = v6;
        v11 = *v3;
        v10 = (*(*v3 + 24) + 1);
        v11[3] = v10;
        v12 = vadd_s32(v11[4], 0x1FFFFFFFFLL);
        v11[4] = v12;
        if (!v12.i32[1])
        {
          ++v11[5].i32[0];
        }

        v7 = *(v3 + 116);
        if (v12.i32[0])
        {
          v13 = v6 < v7;
        }

        else
        {
          v13 = 0;
        }
      }

      while (v13);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v1 |= v9;
    if (v6 < v7)
    {
      break;
    }

    v14 = *(v3 + 8);
    if (v14 == 4 && !*(v3 + 16) && (*(v3 + 92) > 0xFFu || *(v3 + 96) < 1))
    {
      break;
    }

    *(v3 + 108) = 0;
    *(v3 + 116) = 0;
    *(v3 + 120) = 0;
    *(v3 + 648) = -1;
    *v4 = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 224) = 0u;
    *(v3 + 240) = 0u;
    *(v3 + 256) = 0u;
    *(v3 + 272) = 0u;
    *(v3 + 288) = 0u;
    *(v3 + 304) = 0u;
    *(v3 + 320) = 0u;
    *(v3 + 336) = 0u;
    *(v3 + 352) = 0u;
    *(v3 + 368) = 0u;
    ++*(v3 + 660);
    *(v3 + 12) = 2;
    if (v14 == 3)
    {
      if (!*(v3 + 16) && (*(v3 + 92) > 0xFFu || *(v3 + 96) <= 0))
      {
        return (v2 | v1) != 0;
      }

LABEL_27:
      v14 = *(v3 + 8);
    }

    v15 = *(v3 + 108);
    v16 = *(v3 + 112);
    if (v14 == 2)
    {
      if (v15 < v16 && *(*v3 + 8))
      {
        v17 = **v3;
        v18 = *(v3 + 92);
        while (1)
        {
          v19 = *v17;
          v20 = *(v3 + 96);
          if (v18 == v19)
          {
            if (v20 == 255)
            {
              goto LABEL_38;
            }

            *(v3 + 96) = v20 + 1;
          }

          else
          {
            if (v20 != 1)
            {
              if (v18 <= 0xFF)
              {
LABEL_38:
                sub_298581EE0(v3);
              }

              *(v3 + 92) = v19;
              *(v3 + 96) = 1;
              goto LABEL_40;
            }

            *(v3 + 648) = dword_29858CAD0[v18 ^ HIBYTE(*(v3 + 648))] ^ (*(v3 + 648) << 8);
            *(v4 + v18) = 1;
            *(*(v3 + 64) + v15) = v18;
            ++*(v3 + 108);
            *(v3 + 92) = v19;
          }

LABEL_40:
          v21 = *v3;
          v17 = (**v3 + 1);
          *v21 = v17;
          v22 = vadd_s32(v21[1], 0x1FFFFFFFFLL);
          v21[1] = v22;
          if (!v22.i32[1])
          {
            ++v21[2].i32[0];
          }

          v15 = *(v3 + 108);
          v16 = *(v3 + 112);
          v23 = 1;
          if (v15 < v16)
          {
            v18 = v19;
            if (v22.i32[0])
            {
              continue;
            }
          }

          goto LABEL_63;
        }
      }
    }

    else if (v15 < v16)
    {
      v24 = *v3;
      v23 = *(*v3 + 8);
      if (!v23)
      {
        goto LABEL_63;
      }

      v23 = *(v3 + 16);
      if (!v23)
      {
        goto LABEL_63;
      }

      while (2)
      {
        v25 = **v24;
        v26 = *(v3 + 92);
        v27 = *(v3 + 96);
        if (v26 == v25)
        {
          if (v27 != 255)
          {
            *(v3 + 96) = v27 + 1;
            goto LABEL_56;
          }

LABEL_54:
          sub_298581EE0(v3);
LABEL_55:
          *(v3 + 92) = v25;
          *(v3 + 96) = 1;
        }

        else
        {
          if (v27 != 1)
          {
            if (v26 <= 0xFF)
            {
              goto LABEL_54;
            }

            goto LABEL_55;
          }

          *(v3 + 648) = dword_29858CAD0[*(v3 + 92) ^ HIBYTE(*(v3 + 648))] ^ (*(v3 + 648) << 8);
          *(v4 + v26) = 1;
          *(*(v3 + 64) + v15) = v26;
          ++*(v3 + 108);
          *(v3 + 92) = v25;
        }

LABEL_56:
        v24 = *v3;
        *v24 = (**v3 + 1);
        v28 = vadd_s32(v24[1], 0x1FFFFFFFFLL);
        v24[1] = v28;
        if (!v28.i32[1])
        {
          ++v24[2].i32[0];
        }

        v29 = *(v3 + 16) - 1;
        *(v3 + 16) = v29;
        v15 = *(v3 + 108);
        v16 = *(v3 + 112);
        v23 = 1;
        if (v15 >= v16 || !v28.i32[0] || !v29)
        {
          goto LABEL_63;
        }

        continue;
      }
    }

    v23 = 0;
LABEL_63:
    v2 |= v23;
    v30 = *(v3 + 8);
    if (v30 == 2 || *(v3 + 16))
    {
      if (v15 >= v16)
      {
        v31 = 0;
        goto LABEL_72;
      }

      if (!*(*v3 + 8))
      {
        return (v2 | v1) != 0;
      }
    }

    else
    {
      if (*(v3 + 92) <= 0xFFu)
      {
        sub_298581EE0(v3);
        v30 = *(v3 + 8);
      }

      *(v3 + 92) = 256;
      v31 = v30 == 4;
LABEL_72:
      sub_29858202C(v3, v31);
      *(v3 + 12) = 1;
    }
  }

  return (v2 | v1) != 0;
}

int *sub_298581EE0(uint64_t a1)
{
  v1 = *(a1 + 92);
  v2 = *(a1 + 96);
  if (v2 >= 1)
  {
    v3 = *(a1 + 648);
    v4 = *(a1 + 96);
    do
    {
      v3 = dword_29858CAD0[v1 ^ HIBYTE(v3)] ^ (v3 << 8);
      *(a1 + 648) = v3;
      --v4;
    }

    while (v4);
  }

  *(a1 + 128 + v1) = 1;
  switch(v2)
  {
    case 3:
      v12 = *(a1 + 64);
      v11 = (a1 + 64);
      *(v12 + v11[11]) = v1;
      v13 = v11[11] + 1;
      v11[11] = v13;
      *(*v11 + v13) = v1;
      v6 = v11[11] + 1;
      v11[11] = v6;
      v8 = v11;
      result = v11 + 11;
      break;
    case 2:
      v9 = *(a1 + 64);
      v8 = (a1 + 64);
      v10 = *(a1 + 108);
      result = (a1 + 108);
      *(v9 + v10) = v1;
      v6 = *result + 1;
      *result = v6;
      break;
    case 1:
      v7 = *(a1 + 108);
      result = (a1 + 108);
      v6 = v7;
      v8 = result - 11;
      break;
    default:
      *(v2 + a1 + 128 - 4) = 1;
      v14 = *(a1 + 108);
      result = (a1 + 108);
      v8 = result - 11;
      *(*(result - 11) + v14) = v1;
      v15 = *result + 1;
      *result = v15;
      *(*(result - 11) + v15) = v1;
      v16 = *result + 1;
      *result = v16;
      *(*(result - 11) + v16) = v1;
      v17 = *result + 1;
      *result = v17;
      *(*(result - 11) + v17) = v1;
      v6 = *result + 1;
      *result = v6;
      LOBYTE(v1) = *(result - 12) - 4;
      break;
  }

  *(*v8 + v6) = v1;
  ++*result;
  return result;
}

void sub_29858202C(uint64_t result, int a2)
{
  v817 = *MEMORY[0x29EDCA608];
  v4 = *(result + 108);
  if (v4 >= 1)
  {
    v5 = *(result + 648);
    v6 = ~v5;
    *(result + 648) = ~v5;
    v7 = v5 ^ ~__ROR4__(*(result + 652), 31);
    *(result + 652) = v7;
    v8 = *(result + 660);
    if (v8 >= 2)
    {
      *(result + 116) = 0;
    }

    if (*(result + 656) >= 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n", v8, v6, v7, v4);
    }

    sub_298585CE8();
    v4 = *(result + 108);
  }

  *(result + 80) = *(result + 32) + v4;
  if (*(result + 660) == 1)
  {
    *(result + 640) = 0x842000000;
    v9 = *(result + 116);
    HIBYTE(v10) = 66;
    do
    {
      *(*(result + 80) + v9) = HIBYTE(v10);
      v9 = *(result + 116) + 1;
      *(result + 116) = v9;
      v10 = *(result + 640) << 8;
      *(result + 640) = v10;
      v11 = *(result + 644);
      *(result + 644) = v11 - 8;
    }

    while (v11 > 15);
    v12 = (90 << -v11) | v10;
    *(result + 640) = v12;
    *(result + 644) = v11;
    if (v11 >= 8)
    {
      do
      {
        *(*(result + 80) + v9) = HIBYTE(v12);
        v9 = *(result + 116) + 1;
        *(result + 116) = v9;
        v12 = *(result + 640) << 8;
        *(result + 640) = v12;
        v13 = *(result + 644);
        v11 = v13 - 8;
        *(result + 644) = v13 - 8;
      }

      while (v13 > 15);
    }

    v14 = v11 + 8;
    v15 = (104 << (24 - v11)) | v12;
    *(result + 640) = v15;
    *(result + 644) = v11 + 8;
    v16 = (*(result + 664) + 48);
    if ((v11 & 0x80000000) == 0)
    {
      do
      {
        *(*(result + 80) + v9) = HIBYTE(v15);
        v9 = *(result + 116) + 1;
        *(result + 116) = v9;
        v15 = *(result + 640) << 8;
        *(result + 640) = v15;
        v17 = *(result + 644);
        v14 = v17 - 8;
        *(result + 644) = v17 - 8;
      }

      while (v17 > 15);
    }

    *(result + 640) = (v16 << (24 - v14)) | v15;
    *(result + 644) = v14 + 8;
    v4 = *(result + 108);
  }

  if (v4 >= 1)
  {
    v18 = *(result + 644);
    if (v18 <= 7)
    {
      v19 = *(result + 640);
      v21 = v18 + 8;
    }

    else
    {
      v19 = *(result + 640);
      v20 = *(result + 116);
      do
      {
        *(*(result + 80) + v20) = HIBYTE(v19);
        v20 = *(result + 116) + 1;
        *(result + 116) = v20;
        v19 = *(result + 640) << 8;
        *(result + 640) = v19;
        v21 = *(result + 644);
        *(result + 644) = v21 - 8;
      }

      while (v21 > 15);
    }

    v22 = (49 << -v21) | v19;
    *(result + 640) = v22;
    *(result + 644) = v21;
    if (v21 >= 8)
    {
      v23 = *(result + 116);
      do
      {
        *(*(result + 80) + v23) = HIBYTE(v22);
        v23 = *(result + 116) + 1;
        *(result + 116) = v23;
        v22 = *(result + 640) << 8;
        *(result + 640) = v22;
        v24 = *(result + 644);
        v21 = v24 - 8;
        *(result + 644) = v24 - 8;
      }

      while (v24 > 15);
    }

    v25 = v21 + 8;
    v26 = (65 << (24 - v21)) | v22;
    *(result + 640) = v26;
    *(result + 644) = v21 + 8;
    if ((v21 & 0x80000000) == 0)
    {
      v27 = *(result + 116);
      do
      {
        *(*(result + 80) + v27) = HIBYTE(v26);
        v27 = *(result + 116) + 1;
        *(result + 116) = v27;
        v26 = *(result + 640) << 8;
        *(result + 640) = v26;
        v28 = *(result + 644);
        v25 = v28 - 8;
        *(result + 644) = v28 - 8;
      }

      while (v28 > 15);
    }

    v29 = v25 + 8;
    v30 = (89 << (24 - v25)) | v26;
    *(result + 640) = v30;
    *(result + 644) = v25 + 8;
    if ((v25 & 0x80000000) == 0)
    {
      v31 = *(result + 116);
      do
      {
        *(*(result + 80) + v31) = HIBYTE(v30);
        v31 = *(result + 116) + 1;
        *(result + 116) = v31;
        v30 = *(result + 640) << 8;
        *(result + 640) = v30;
        v32 = *(result + 644);
        v29 = v32 - 8;
        *(result + 644) = v32 - 8;
      }

      while (v32 > 15);
    }

    v33 = v29 + 8;
    v34 = (38 << (24 - v29)) | v30;
    *(result + 640) = v34;
    *(result + 644) = v29 + 8;
    v794 = a2;
    if ((v29 & 0x80000000) == 0)
    {
      v35 = *(result + 116);
      do
      {
        *(*(result + 80) + v35) = HIBYTE(v34);
        v35 = *(result + 116) + 1;
        *(result + 116) = v35;
        v34 = *(result + 640) << 8;
        *(result + 640) = v34;
        v36 = *(result + 644);
        v33 = v36 - 8;
        *(result + 644) = v36 - 8;
      }

      while (v36 > 15);
    }

    v37 = v33 + 8;
    v38 = (83 << (24 - v33)) | v34;
    *(result + 640) = v38;
    *(result + 644) = v33 + 8;
    if ((v33 & 0x80000000) == 0)
    {
      v39 = *(result + 116);
      do
      {
        *(*(result + 80) + v39) = HIBYTE(v38);
        v39 = *(result + 116) + 1;
        *(result + 116) = v39;
        v38 = *(result + 640) << 8;
        *(result + 640) = v38;
        v40 = *(result + 644);
        v37 = v40 - 8;
        *(result + 644) = v40 - 8;
      }

      while (v40 > 15);
    }

    *(result + 640) = (89 << (24 - v37)) | v38;
    *(result + 644) = v37 + 8;
    sub_2985874D8(result, *(result + 648));
    v41 = *(result + 644);
    if (v41 <= 7)
    {
      v42 = *(result + 640);
    }

    else
    {
      v42 = *(result + 640);
      v43 = *(result + 116);
      do
      {
        *(*(result + 80) + v43) = HIBYTE(v42);
        v43 = *(result + 116) + 1;
        *(result + 116) = v43;
        v42 = *(result + 640) << 8;
        *(result + 640) = v42;
        v44 = *(result + 644);
        v41 = v44 - 8;
        *(result + 644) = v44 - 8;
      }

      while (v44 > 15);
    }

    v45 = (result + 37708);
    v46 = v41 + 1;
    *(result + 640) = v42;
    *(result + 644) = v41 + 1;
    v47 = *(result + 48);
    if (v41 >= 7)
    {
      v48 = *(result + 116);
      do
      {
        *(*(result + 80) + v48) = HIBYTE(v42);
        v48 = *(result + 116) + 1;
        *(result + 116) = v48;
        v42 = *(result + 640) << 8;
        *(result + 640) = v42;
        v49 = *(result + 644);
        v46 = v49 - 8;
        *(result + 644) = v49 - 8;
      }

      while (v49 > 15);
    }

    v50 = 0;
    *(result + 640) = (v47 << (8 - v46)) | v42;
    *(result + 644) = v46 + 24;
    v51 = *(result + 56);
    v52 = *(result + 64);
    v53 = *(result + 72);
    *(result + 124) = 0;
    v793 = result + 128;
    v54 = 256;
    v55 = (result + 384);
    do
    {
      if (*(v55 - 256))
      {
        *v55 = v50++;
        *(result + 124) = v50;
      }

      ++v55;
      --v54;
    }

    while (v54);
    v805 = v53;
    if (v50 >= -1)
    {
      bzero((result + 672), 4 * (v50 + 2));
      v53 = v805;
      if (v50 >= 1)
      {
        v56 = vdupq_n_s64(v50 - 1);
        v57 = xmmword_29858CA50;
        v58 = xmmword_29858CA60;
        v59 = xmmword_29858CA70;
        v60 = xmmword_29858CA80;
        v61 = xmmword_29858CA90;
        v62 = xmmword_29858CAA0;
        v63 = xmmword_29858CAB0;
        v64 = v813;
        v65 = 15;
        v66 = xmmword_29858CAC0;
        v67 = vdupq_n_s64(0x10uLL);
        do
        {
          v68 = v65 - 15;
          v69 = vmovn_s64(vcgeq_u64(v56, v66));
          if (vuzp1_s8(vuzp1_s16(v69, *v56.i8), *v56.i8).u8[0])
          {
            *(v64 - 7) = v68;
          }

          if (vuzp1_s8(vuzp1_s16(v69, *&v56), *&v56).i8[1])
          {
            *(v64 - 6) = v68 | 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v63))), *&v56).i8[2])
          {
            *(v64 - 5) = v68 | 2;
            *(v64 - 4) = v68 | 3;
          }

          v70 = vmovn_s64(vcgeq_u64(v56, v62));
          if (vuzp1_s8(*&v56, vuzp1_s16(v70, *&v56)).i32[1])
          {
            *(v64 - 3) = v68 | 4;
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(v70, *&v56)).i8[5])
          {
            *(v64 - 2) = v68 | 5;
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v61)))).i8[6])
          {
            *(v64 - 1) = v68 | 6;
            *v64 = v68 | 7;
          }

          v71 = vmovn_s64(vcgeq_u64(v56, v60));
          if (vuzp1_s8(vuzp1_s16(v71, *v56.i8), *v56.i8).u8[0])
          {
            v64[1] = v68 | 8;
          }

          if (vuzp1_s8(vuzp1_s16(v71, *&v56), *&v56).i8[1])
          {
            v64[2] = v68 | 9;
          }

          if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v59))), *&v56).i8[2])
          {
            v64[3] = v68 | 0xA;
            v64[4] = v68 | 0xB;
          }

          v72 = vmovn_s64(vcgeq_u64(v56, v58));
          if (vuzp1_s8(*&v56, vuzp1_s16(v72, *&v56)).i32[1])
          {
            v64[5] = v68 | 0xC;
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(v72, *&v56)).i8[5])
          {
            v64[6] = v68 | 0xD;
          }

          if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, *&v57)))).i8[6])
          {
            v64[7] = v68 | 0xE;
            v64[8] = v68 | 0xF;
          }

          v62 = vaddq_s64(v62, v67);
          v63 = vaddq_s64(v63, v67);
          v66 = vaddq_s64(v66, v67);
          v61 = vaddq_s64(v61, v67);
          v60 = vaddq_s64(v60, v67);
          v59 = vaddq_s64(v59, v67);
          v58 = vaddq_s64(v58, v67);
          v57 = vaddq_s64(v57, v67);
          v65 += 16;
          v64 += 16;
        }

        while (v65 - ((v50 + 15) & 0xFFFFFFF0) != 15);
      }
    }

    v73 = *(result + 108);
    if (v73 < 1)
    {
      v76 = 0;
    }

    else
    {
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = (result + 672);
      v78 = v811;
      v79 = v811;
      do
      {
        v80 = v79;
        v79 = *(result + 384 + *(v52 + (v73 & ((*(v51 + 4 * v74) - 1) >> 31)) + *(v51 + 4 * v74) - 1));
        if (v80 == v79)
        {
          ++v75;
        }

        else
        {
          v81 = v75 - 1;
          if (v75 >= 1)
          {
            v82 = (v53 + 2 * v76++);
            if ((v81 & 1) == 0)
            {
LABEL_82:
              v83 = 0;
              ++*v77;
              goto LABEL_84;
            }

            while (1)
            {
              ++*(result + 676);
              v83 = 1;
LABEL_84:
              *v82 = v83;
              v84 = __OFSUB__(v81, 2);
              v85 = v81 - 2;
              if (v85 < 0 != v84)
              {
                break;
              }

              v81 = v85 >> 1;
              ++v76;
              ++v82;
              if ((v81 & 1) == 0)
              {
                goto LABEL_82;
              }
            }

            v75 = 0;
          }

          v86 = v812[0];
          v812[0] = v78;
          v87 = v812;
          if (v79 != v86)
          {
            v87 = v812;
            do
            {
              v88 = *++v87;
              *v87 = v86;
              LOBYTE(v86) = v88;
            }

            while (v79 != v88);
          }

          v89 = (v87 - &v811) + 1;
          *(v53 + 2 * v76++) = v89;
          ++v77[v89];
          v73 = *(result + 108);
          v78 = v79;
        }

        ++v74;
      }

      while (v74 < v73);
      v90 = v75 - 1;
      if (v75 >= 1)
      {
        v91 = (v53 + 2 * v76++);
        if (v90)
        {
          goto LABEL_96;
        }

LABEL_95:
        v92 = 0;
        ++*v77;
        while (1)
        {
          *v91 = v92;
          v84 = __OFSUB__(v90, 2);
          v93 = v90 - 2;
          if (v93 < 0 != v84)
          {
            break;
          }

          v90 = v93 >> 1;
          ++v76;
          ++v91;
          if ((v90 & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_96:
          ++*(result + 676);
          v92 = 1;
        }
      }
    }

    v94 = v50 + 1;
    *(v53 + 2 * v76) = v94;
    v95 = v76 + 1;
    ++*(result + 672 + 4 * v94);
    *(result + 668) = v95;
    if (*(result + 656) > 2)
    {
      fprintf(*MEMORY[0x29EDCA610], "      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n", *(result + 108), v95, *(result + 124));
    }

    v96 = 0;
    v97 = *(result + 124);
    v98 = v97 + 2;
    if (v97 + 2 <= 1)
    {
      v99 = 1;
    }

    else
    {
      v99 = v98;
    }

    v803 = *(result + 124);
    do
    {
      if (v97 >= -1)
      {
        memset(&v45[v96], 15, v99);
        v97 = v803;
      }

      v96 += 258;
    }

    while (v96 != 1548);
    v800 = v98;
    v100 = *(result + 668);
    if (v100 <= 0)
    {
      sub_298587E08(3001);
    }

    v101 = 0;
    v102 = v100 > 0x95F;
    if (v100 <= 0x95F)
    {
      v103 = 5;
    }

    else
    {
      v103 = 6;
    }

    if (v100 >= 0x4B0)
    {
      v104 = v103;
    }

    else
    {
      v102 = 0;
      v104 = 4;
    }

    if (v100 >= 0x258)
    {
      v105 = v104;
    }

    else
    {
      v102 = 0;
      v105 = 3;
    }

    v106 = v100 >= 200 && v102;
    v806 = v106;
    if (v100 >= 200)
    {
      v107 = v105;
    }

    else
    {
      v107 = 2;
    }

    v108 = (v99 + 15) & 0xFFFFFFF0;
    v798 = v99;
    v109 = vdupq_n_s64(v99 - 1);
    v110 = result + 258 * v107 + 37457;
    v111 = vdupq_n_s64(0x10uLL);
    v112 = v107;
    v808 = v107;
    v809 = v109;
    v796 = v111;
    v795 = v108;
    do
    {
      v113 = (v101 - 1);
      v114 = 0;
      v115 = v100 / v112 >= 1 && v113 <= v97;
      if (v115)
      {
        v116 = v113;
        v117 = v113 << 32;
        do
        {
          LODWORD(v113) = v116 + 1;
          v114 += *(result + 676 + 4 * v116);
          v117 += 0x100000000;
          if (v116 >= v97)
          {
            break;
          }

          ++v116;
        }

        while (v114 < v100 / v112);
        if (v101 < v113 && v112 != v107 && v112 != 1 && ((v107 - v112) & 0x80000001) == 1)
        {
          v114 -= *(result + 672 + (v117 >> 30));
          LODWORD(v113) = v113 - 1;
        }
      }

      if (*(result + 656) >= 3)
      {
        v118 = v45;
        v119 = v112;
        fprintf(*MEMORY[0x29EDCA610], "      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n", v112, v101, v113, v114, v114 * 100.0 / *(result + 668));
        v108 = v795;
        v112 = v119;
        v45 = v118;
        v111 = v796;
        v109 = v809;
        v107 = v808;
        v97 = v803;
      }

      if (v97 >= -1)
      {
        v120 = 0;
        v121 = xmmword_29858CAC0;
        v122 = xmmword_29858CAB0;
        v123 = xmmword_29858CAA0;
        v124 = xmmword_29858CA90;
        v125 = xmmword_29858CA80;
        v126 = xmmword_29858CA70;
        v127 = xmmword_29858CA60;
        v128 = xmmword_29858CA50;
        do
        {
          v129 = vmovn_s64(vcgeq_u64(v109, v121));
          if (vuzp1_s8(vuzp1_s16(v129, *v121.i8), *v121.i8).u8[0])
          {
            if (v120 > v113 || v120 < v101)
            {
              v131 = 15;
            }

            else
            {
              v131 = 0;
            }

            *(v110 + v120 - 7) = v131;
          }

          if (vuzp1_s8(vuzp1_s16(v129, *&v121), *&v121).i8[1])
          {
            if (v120 >= v113 || v120 + 1 < v101)
            {
              v133 = 15;
            }

            else
            {
              v133 = 0;
            }

            *(v110 + v120 - 6) = v133;
          }

          v134 = vmovn_s64(vcgeq_u64(v109, v122));
          if (vuzp1_s8(vuzp1_s16(*&v121, v134), *&v121).i8[2])
          {
            if (v120 + 2 > v113 || v120 + 2 < v101)
            {
              v136 = 15;
            }

            else
            {
              v136 = 0;
            }

            *(v110 + v120 - 5) = v136;
          }

          if (vuzp1_s8(vuzp1_s16(*&v121, v134), *&v121).i8[3])
          {
            if (v120 + 3 > v113 || v120 + 3 < v101)
            {
              v138 = 15;
            }

            else
            {
              v138 = 0;
            }

            *(v110 + v120 - 4) = v138;
          }

          v139 = vmovn_s64(vcgeq_u64(v109, v123));
          if (vuzp1_s8(*&v121, vuzp1_s16(v139, *&v121)).i32[1])
          {
            if (v120 + 4 > v113 || v120 + 4 < v101)
            {
              v141 = 15;
            }

            else
            {
              v141 = 0;
            }

            *(v110 + v120 - 3) = v141;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(v139, *&v121)).i8[5])
          {
            if (v120 + 5 > v113 || v120 + 5 < v101)
            {
              v143 = 15;
            }

            else
            {
              v143 = 0;
            }

            *(v110 + v120 - 2) = v143;
          }

          v144 = vmovn_s64(vcgeq_u64(v109, v124));
          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, v144)).i8[6])
          {
            if (v120 + 6 > v113 || v120 + 6 < v101)
            {
              v146 = 15;
            }

            else
            {
              v146 = 0;
            }

            *(v110 + v120 - 1) = v146;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, v144)).i8[7])
          {
            if (v120 + 7 > v113 || v120 + 7 < v101)
            {
              v148 = 15;
            }

            else
            {
              v148 = 0;
            }

            *(v110 + v120) = v148;
          }

          v149 = vmovn_s64(vcgeq_u64(v109, v125));
          if (vuzp1_s8(vuzp1_s16(v149, *v121.i8), *v121.i8).u8[0])
          {
            if (v120 + 8 > v113 || v120 + 8 < v101)
            {
              v151 = 15;
            }

            else
            {
              v151 = 0;
            }

            *(v110 + v120 + 1) = v151;
          }

          if (vuzp1_s8(vuzp1_s16(v149, *&v121), *&v121).i8[1])
          {
            if (v120 + 9 > v113 || v120 + 9 < v101)
            {
              v153 = 15;
            }

            else
            {
              v153 = 0;
            }

            *(v110 + v120 + 2) = v153;
          }

          v154 = vmovn_s64(vcgeq_u64(v109, v126));
          if (vuzp1_s8(vuzp1_s16(*&v121, v154), *&v121).i8[2])
          {
            if (v120 + 10 > v113 || v120 + 10 < v101)
            {
              v156 = 15;
            }

            else
            {
              v156 = 0;
            }

            *(v110 + v120 + 3) = v156;
          }

          if (vuzp1_s8(vuzp1_s16(*&v121, v154), *&v121).i8[3])
          {
            if (v120 + 11 > v113 || v120 + 11 < v101)
            {
              v158 = 15;
            }

            else
            {
              v158 = 0;
            }

            *(v110 + v120 + 4) = v158;
          }

          v159 = vmovn_s64(vcgeq_u64(v109, v127));
          if (vuzp1_s8(*&v121, vuzp1_s16(v159, *&v121)).i32[1])
          {
            if (v120 + 12 > v113 || v120 + 12 < v101)
            {
              v161 = 15;
            }

            else
            {
              v161 = 0;
            }

            *(v110 + v120 + 5) = v161;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(v159, *&v121)).i8[5])
          {
            if (v120 + 13 > v113 || v120 + 13 < v101)
            {
              v163 = 15;
            }

            else
            {
              v163 = 0;
            }

            *(v110 + v120 + 6) = v163;
          }

          v164 = vmovn_s64(vcgeq_u64(v109, v128));
          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, v164)).i8[6])
          {
            if (v120 + 14 > v113 || v120 + 14 < v101)
            {
              v166 = 15;
            }

            else
            {
              v166 = 0;
            }

            *(v110 + v120 + 7) = v166;
          }

          if (vuzp1_s8(*&v121, vuzp1_s16(*&v121, v164)).i8[7])
          {
            if (v120 + 15 > v113 || v120 + 15 < v101)
            {
              v168 = 15;
            }

            else
            {
              v168 = 0;
            }

            *(v110 + v120 + 8) = v168;
          }

          v123 = vaddq_s64(v123, v111);
          v120 += 16;
          v122 = vaddq_s64(v122, v111);
          v121 = vaddq_s64(v121, v111);
          v124 = vaddq_s64(v124, v111);
          v125 = vaddq_s64(v125, v111);
          v126 = vaddq_s64(v126, v111);
          v127 = vaddq_s64(v127, v111);
          v128 = vaddq_s64(v128, v111);
        }

        while (v108 != v120);
      }

      v101 = v113 + 1;
      v100 -= v114;
      v110 -= 258;
      v115 = v112-- <= 1;
    }

    while (!v115);
    v169 = 0;
    v170 = result + 51640;
    v807 = result + 1704;
    v171 = result + 45448;
    v799 = 4 * v107;
    v172 = 4 * v798;
    v804 = 2 * v107;
    v173 = v806;
    if (v97 <= -2)
    {
      v173 = 0;
    }

    v797 = v173;
    v801 = v45;
    do
    {
      bzero(&v811, v799);
      v174 = 0;
      v175 = v803;
      v176 = v808;
      do
      {
        while (v175 < -1)
        {
          if (++v174 == v176)
          {
            goto LABEL_288;
          }
        }

        bzero((v171 + 1032 * v174), v172);
        v176 = v808;
        v175 = v803;
        ++v174;
      }

      while (v174 != v808);
      if (v797)
      {
        v177 = (result + 51648);
        v178 = v45;
        v179 = v798;
        do
        {
          *(v177 - 2) = *v178 | (v178[258] << 16);
          *(v177 - 1) = v178[516] | (v178[774] << 16);
          *v177 = v178[1032] | (v178[1290] << 16);
          v177 += 4;
          ++v178;
          --v179;
        }

        while (v179);
      }

LABEL_288:
      v180 = *(result + 668);
      v802 = v169;
      if (v180 < 1)
      {
        LODWORD(v181) = 0;
        v330 = 0;
      }

      else
      {
        v181 = 0;
        v182 = 0;
        v183 = 0;
        do
        {
          bzero(v816, v804);
          if (v182 + 49 >= v180)
          {
            v184 = v180 - 1;
          }

          else
          {
            v184 = v182 + 49;
          }

          v185 = v806;
          if (v184 - v182 != 49)
          {
            v185 = 0;
          }

          if (v185)
          {
            v186 = v805;
            v187 = (v805 + 2 * v182);
            v188 = (v170 + 16 * *v187);
            v189 = (v170 + 16 * v187[1]);
            v190 = *v189 + *v188;
            v191 = v189[1] + v188[1];
            LODWORD(v188) = v189[2] + v188[2];
            v192 = (v170 + 16 * v187[2]);
            v193 = (v170 + 16 * v187[3]);
            v194 = v190 + *v192 + *v193;
            v195 = v191 + v192[1] + v193[1];
            LODWORD(v188) = v188 + v192[2] + v193[2];
            v196 = (v170 + 16 * v187[4]);
            v197 = (v170 + 16 * v187[5]);
            v198 = *v196 + *v197;
            v199 = v196[1] + v197[1];
            LODWORD(v196) = v196[2] + v197[2];
            v200 = (v170 + 16 * v187[6]);
            v201 = v194 + v198 + *v200;
            v202 = v195 + v199 + v200[1];
            LODWORD(v188) = v188 + v196 + v200[2];
            v203 = (v170 + 16 * v187[7]);
            v204 = (v170 + 16 * v187[8]);
            v205 = *v203 + *v204;
            v206 = v203[1] + v204[1];
            LODWORD(v203) = v203[2] + v204[2];
            v207 = (v170 + 16 * v187[9]);
            v208 = v205 + *v207;
            v209 = v206 + v207[1];
            LODWORD(v203) = v203 + v207[2];
            v210 = (v170 + 16 * v187[10]);
            v211 = v201 + v208 + *v210;
            v212 = v202 + v209 + v210[1];
            LODWORD(v203) = v188 + v203 + v210[2];
            v213 = (v170 + 16 * v187[11]);
            v214 = (v170 + 16 * v187[12]);
            v215 = *v213 + *v214;
            v216 = v213[1] + v214[1];
            LODWORD(v213) = v213[2] + v214[2];
            v217 = (v170 + 16 * v187[13]);
            v218 = v215 + *v217;
            v219 = v216 + v217[1];
            LODWORD(v213) = v213 + v217[2];
            v220 = (v170 + 16 * v187[14]);
            v221 = v218 + *v220;
            v222 = v219 + v220[1];
            LODWORD(v220) = v213 + v220[2];
            v223 = (v170 + 16 * v187[15]);
            LODWORD(v213) = v211 + v221 + *v223;
            v224 = v212 + v222 + v223[1];
            v225 = v203 + v220 + v223[2];
            v226 = (v170 + 16 * v187[16]);
            v227 = (v170 + 16 * v187[17]);
            v228 = *v226 + *v227;
            v229 = v226[1] + v227[1];
            LODWORD(v226) = v226[2] + v227[2];
            v230 = (v170 + 16 * v187[18]);
            v231 = v228 + *v230;
            v232 = v229 + v230[1];
            LODWORD(v226) = v226 + v230[2];
            v233 = (v170 + 16 * v187[19]);
            v234 = v231 + *v233;
            v235 = v232 + v233[1];
            LODWORD(v226) = v226 + v233[2];
            v236 = (v170 + 16 * v187[20]);
            v237 = v234 + *v236;
            v238 = v235 + v236[1];
            LODWORD(v226) = v226 + v236[2];
            v239 = (v170 + 16 * v187[21]);
            LODWORD(v213) = v213 + v237 + *v239;
            v240 = v224 + v238 + v239[1];
            v241 = v225 + v226 + v239[2];
            v242 = (v170 + 16 * v187[22]);
            v243 = (v170 + 16 * v187[23]);
            v244 = *v242 + *v243;
            v245 = v242[1] + v243[1];
            LODWORD(v242) = v242[2] + v243[2];
            v246 = (v170 + 16 * v187[24]);
            v247 = v244 + *v246;
            v248 = v245 + v246[1];
            LODWORD(v242) = v242 + v246[2];
            v249 = (v170 + 16 * v187[25]);
            v250 = v247 + *v249;
            v251 = v248 + v249[1];
            LODWORD(v242) = v242 + v249[2];
            v252 = (v170 + 16 * v187[26]);
            v253 = v250 + *v252;
            v254 = v251 + v252[1];
            LODWORD(v242) = v242 + v252[2];
            v255 = (v170 + 16 * v187[27]);
            v256 = v253 + *v255;
            v257 = v254 + v255[1];
            LODWORD(v242) = v242 + v255[2];
            v258 = (v170 + 16 * v187[28]);
            LODWORD(v213) = v213 + v256 + *v258;
            v259 = v240 + v257 + v258[1];
            v260 = v241 + v242 + v258[2];
            v261 = (v170 + 16 * v187[29]);
            v262 = (v170 + 16 * v187[30]);
            v263 = *v261 + *v262;
            v264 = v261[1] + v262[1];
            LODWORD(v261) = v261[2] + v262[2];
            v265 = (v170 + 16 * v187[31]);
            v266 = v263 + *v265;
            v267 = v264 + v265[1];
            LODWORD(v261) = v261 + v265[2];
            v268 = (v170 + 16 * v187[32]);
            v269 = v266 + *v268;
            v270 = v267 + v268[1];
            LODWORD(v261) = v261 + v268[2];
            v271 = (v170 + 16 * v187[33]);
            v272 = v269 + *v271;
            v273 = v270 + v271[1];
            LODWORD(v261) = v261 + v271[2];
            v274 = (v170 + 16 * v187[34]);
            v275 = v272 + *v274;
            v276 = v273 + v274[1];
            LODWORD(v261) = v261 + v274[2];
            v277 = (v170 + 16 * v187[35]);
            v278 = v275 + *v277;
            v279 = v276 + v277[1];
            LODWORD(v261) = v261 + v277[2];
            v280 = (v170 + 16 * v187[36]);
            LODWORD(v213) = v213 + v278 + *v280;
            v281 = v259 + v279 + v280[1];
            v282 = v260 + v261 + v280[2];
            v283 = (v170 + 16 * v187[37]);
            v284 = (v170 + 16 * v187[38]);
            v285 = *v283 + *v284;
            v286 = v283[1] + v284[1];
            LODWORD(v283) = v283[2] + v284[2];
            v287 = (v170 + 16 * v187[39]);
            v288 = v285 + *v287;
            v289 = v286 + v287[1];
            LODWORD(v283) = v283 + v287[2];
            v290 = (v170 + 16 * v187[40]);
            v291 = v288 + *v290;
            v292 = v289 + v290[1];
            LODWORD(v283) = v283 + v290[2];
            v293 = (v170 + 16 * v187[41]);
            v294 = v291 + *v293;
            v295 = v292 + v293[1];
            LODWORD(v283) = v283 + v293[2];
            v296 = (v170 + 16 * v187[42]);
            v297 = v294 + *v296;
            v298 = v295 + v296[1];
            LODWORD(v283) = v283 + v296[2];
            v299 = (v170 + 16 * v187[43]);
            v300 = v297 + *v299;
            v301 = v298 + v299[1];
            LODWORD(v283) = v283 + v299[2];
            v302 = (v170 + 16 * v187[44]);
            v303 = v300 + *v302;
            v304 = v301 + v302[1];
            LODWORD(v283) = v283 + v302[2];
            v305 = (v170 + 16 * v187[45]);
            LODWORD(v213) = v213 + v303 + *v305;
            v306 = v281 + v304 + v305[1];
            v307 = v282 + v283 + v305[2];
            v308 = (v170 + 16 * v187[46]);
            v309 = (v170 + 16 * v187[47]);
            v310 = *v308 + *v309;
            v311 = v308[1] + v309[1];
            LODWORD(v308) = v308[2] + v309[2];
            v312 = (v170 + 16 * v187[48]);
            v313 = (v170 + 16 * v187[49]);
            LODWORD(v213) = v213 + v310 + *v312 + *v313;
            v314 = v306 + v311 + v312[1] + v313[1];
            LODWORD(v313) = v307 + v308 + v312[2] + v313[2];
            v816[0] = v213;
            v816[1] = v314;
            v816[2] = v313;
            v176 = v808;
          }

          else
          {
            v186 = v805;
            v176 = v808;
            if (v184 >= v182)
            {
              v315 = v182;
              do
              {
                v316 = (result + 37708 + *(v805 + 2 * v315));
                v317 = v816;
                v318 = v808;
                do
                {
                  *v317++ += *v316;
                  v316 += 258;
                  --v318;
                }

                while (v318);
                ++v315;
              }

              while (v184 + 1 != v315);
            }
          }

          v319 = 0;
          v320 = 999999999;
          v321 = -1;
          do
          {
            v322 = *(v816 + v319);
            v323 = v320 <= v322;
            if (v320 >= v322)
            {
              v320 = *(v816 + v319);
            }

            if (!v323)
            {
              v321 = v319;
            }

            ++v319;
          }

          while (v176 != v319);
          v324 = v321;
          ++*&v812[4 * v321 - 1];
          *(v181 + v807) = v321;
          if (v185)
          {
            v325 = (v186 + 2 * v182);
            v326 = v171 + 1032 * v321;
            ++*(v326 + 4 * *v325);
            ++*(v326 + 4 * v325[1]);
            ++*(v326 + 4 * v325[2]);
            ++*(v326 + 4 * v325[3]);
            ++*(v326 + 4 * v325[4]);
            ++*(v326 + 4 * v325[5]);
            ++*(v326 + 4 * v325[6]);
            ++*(v326 + 4 * v325[7]);
            ++*(v326 + 4 * v325[8]);
            ++*(v326 + 4 * v325[9]);
            ++*(v326 + 4 * v325[10]);
            ++*(v326 + 4 * v325[11]);
            ++*(v326 + 4 * v325[12]);
            ++*(v326 + 4 * v325[13]);
            ++*(v326 + 4 * v325[14]);
            ++*(v326 + 4 * v325[15]);
            ++*(v326 + 4 * v325[16]);
            ++*(v326 + 4 * v325[17]);
            ++*(v326 + 4 * v325[18]);
            ++*(v326 + 4 * v325[19]);
            ++*(v326 + 4 * v325[20]);
            ++*(v326 + 4 * v325[21]);
            ++*(v326 + 4 * v325[22]);
            ++*(v326 + 4 * v325[23]);
            ++*(v326 + 4 * v325[24]);
            ++*(v326 + 4 * v325[25]);
            ++*(v326 + 4 * v325[26]);
            ++*(v326 + 4 * v325[27]);
            ++*(v326 + 4 * v325[28]);
            ++*(v326 + 4 * v325[29]);
            ++*(v326 + 4 * v325[30]);
            ++*(v326 + 4 * v325[31]);
            ++*(v326 + 4 * v325[32]);
            ++*(v326 + 4 * v325[33]);
            ++*(v326 + 4 * v325[34]);
            ++*(v326 + 4 * v325[35]);
            ++*(v326 + 4 * v325[36]);
            ++*(v326 + 4 * v325[37]);
            ++*(v326 + 4 * v325[38]);
            ++*(v326 + 4 * v325[39]);
            ++*(v326 + 4 * v325[40]);
            ++*(v326 + 4 * v325[41]);
            ++*(v326 + 4 * v325[42]);
            ++*(v326 + 4 * v325[43]);
            ++*(v326 + 4 * v325[44]);
            ++*(v326 + 4 * v325[45]);
            ++*(v326 + 4 * v325[46]);
            ++*(v326 + 4 * v325[47]);
            ++*(v326 + 4 * v325[48]);
            ++*(v326 + 4 * v325[49]);
          }

          else if (v184 >= v182)
          {
            v327 = v184 - v182 + 1;
            v328 = (v186 + 2 * v182);
            do
            {
              v329 = *v328++;
              ++*(v171 + 1032 * v324 + 4 * v329);
              --v327;
            }

            while (v327);
          }

          v183 += v320;
          v181 = (v181 + 1);
          v182 = v184 + 1;
          v180 = *(result + 668);
        }

        while (v184 + 1 < v180);
        v330 = v183 / 8;
        v169 = v802;
      }

      if (*(result + 656) >= 3)
      {
        v810 = v181;
        v181 = MEMORY[0x29EDCA610];
        v331 = v176;
        fprintf(*MEMORY[0x29EDCA610], "      pass %d: size is %d, grp uses are ", v169 + 1, v330);
        v332 = &v811;
        do
        {
          v333 = *v332++;
          fprintf(*v181, "%d ", v333);
          --v331;
        }

        while (v331);
        fputc(10, *v181);
        v176 = v808;
        LODWORD(v181) = v810;
      }

      v334 = v801;
      v335 = result + 45448;
      v336 = v176;
      do
      {
        sub_29858766C();
        v335 += 1032;
        v334 += 258;
        --v336;
      }

      while (v336);
      v169 = v802 + 1;
      v45 = v801;
      v172 = 4 * v798;
    }

    while (v802 != 3);
    if (v181 >= 0x4653)
    {
      sub_298587E08(3003);
    }

    v337 = vdupq_n_s64(v808 - 1);
    v338 = vmovn_s64(vcgeq_u64(v337, xmmword_29858CAC0));
    if (vuzp1_s8(vuzp1_s16(v338, *v337.i8), *v337.i8).u8[0])
    {
      v814 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v338, *&v337), *&v337).i8[1])
    {
      v815[0] = 1;
    }

    v339 = vmovn_s64(vcgeq_u64(v337, xmmword_29858CAB0));
    if (vuzp1_s8(vuzp1_s16(*&v337, v339), *&v337).i8[2])
    {
      v815[1] = 2;
    }

    v340 = v803;
    if (vuzp1_s8(vuzp1_s16(*&v337, v339), *&v337).i8[3])
    {
      v815[2] = 3;
    }

    v341 = vmovn_s64(vcgeq_u64(v337, xmmword_29858CAA0));
    if (vuzp1_s8(*&v337, vuzp1_s16(v341, *&v337)).i32[1])
    {
      v815[3] = 4;
    }

    if (vuzp1_s8(*&v337, vuzp1_s16(v341, *&v337)).i8[5])
    {
      v815[4] = 5;
    }

    v342 = vmovn_s64(vcgeq_u64(v337, xmmword_29858CA90));
    if (vuzp1_s8(*&v342, vuzp1_s16(v342, v342)).i8[6])
    {
      v815[5] = 6;
    }

    v343 = vuzp1_s16(v342, v342);
    if (vuzp1_s8(v343, v343).i8[7])
    {
      v815[6] = 7;
    }

    if (v181)
    {
      v344 = 0;
      v345 = v814;
      do
      {
        v346 = *(v807 + v344);
        if (v346 == v345)
        {
          LOBYTE(v347) = 0;
        }

        else
        {
          v347 = 0;
          do
          {
            v348 = v815[v347];
            v815[v347++] = v345;
            LOBYTE(v345) = v348;
          }

          while (v346 != v348);
          v345 = v346;
        }

        *(result + 19706 + v344++) = v347;
      }

      while (v344 != v181);
    }

    v349 = 0;
    v350 = result + 39256;
    v351 = v801;
    do
    {
      if (v340 < -1)
      {
        v352 = 0;
        v353 = 32;
      }

      else
      {
        v352 = 0;
        v353 = 32;
        v354 = v351;
        v355 = v798;
        do
        {
          v357 = *v354++;
          v356 = v357;
          if (v352 <= v357)
          {
            v352 = v356;
          }

          if (v353 >= v356)
          {
            v353 = v356;
          }

          --v355;
        }

        while (v355);
        if (v352 >= 0x12)
        {
          sub_298587E08(3004);
        }

        if (v353 <= 0)
        {
          sub_298587E08(3005);
        }
      }

      sub_298587A60((v350 + 1032 * v349), &v801[258 * v349], v353, v352, v800);
      ++v349;
      v351 += 258;
      v358 = v808;
      v340 = v803;
    }

    while (v349 != v808);
    v359 = 0;
    v360 = MEMORY[0x29EDCA610];
    do
    {
      v815[v359 - 1] = 0;
      v361 = vtstq_s8(*(v793 + 16 * v359), *(v793 + 16 * v359));
      if (v361.i8[0] & 1) != 0 || (v361.i8[1] & 1) != 0 || (v361.i8[2] & 1) != 0 || (v361.i8[3] & 1) != 0 || (v361.i8[4] & 1) != 0 || (v361.i8[5] & 1) != 0 || (v361.i8[6] & 1) != 0 || (v361.i8[7] & 1) != 0 || (v361.i8[8] & 1) != 0 || (v361.i8[9] & 1) != 0 || (v361.i8[10] & 1) != 0 || (v361.i8[11] & 1) != 0 || (v361.i8[12] & 1) != 0 || (v361.i8[13] & 1) != 0 || (v361.i8[14] & 1) != 0 || (v361.i8[15])
      {
        v815[v359 - 1] = 1;
      }

      ++v359;
    }

    while (v359 != 16);
    v362 = 0;
    v363 = *(result + 116);
    v364 = *(result + 644);
    v365 = *(result + 640);
    v366 = v363;
    do
    {
      if (v815[v362 - 1])
      {
        if (v364 >= 8)
        {
          do
          {
            *(*(result + 80) + v366) = HIBYTE(v365);
            v366 = *(result + 116) + 1;
            *(result + 116) = v366;
            v365 = *(result + 640) << 8;
            *(result + 640) = v365;
            v367 = *(result + 644);
            v364 = v367 - 8;
            *(result + 644) = v367 - 8;
          }

          while (v367 > 15);
        }

        v365 |= 0x80000000 >> v364;
      }

      else if (v364 >= 8)
      {
        do
        {
          *(*(result + 80) + v366) = HIBYTE(v365);
          v366 = *(result + 116) + 1;
          *(result + 116) = v366;
          v365 = *(result + 640) << 8;
          *(result + 640) = v365;
          v368 = *(result + 644);
          v364 = v368 - 8;
          *(result + 644) = v368 - 8;
        }

        while (v368 > 15);
      }

      ++v364;
      *(result + 640) = v365;
      *(result + 644) = v364;
      ++v362;
    }

    while (v362 != 16);
    for (i = 0; i != 16; ++i)
    {
      if (v815[i - 1])
      {
        for (j = 0; j != 16; ++j)
        {
          if (*(v793 + j + 16 * i))
          {
            if (v364 >= 8)
            {
              do
              {
                *(*(result + 80) + v366) = HIBYTE(v365);
                v366 = *(result + 116) + 1;
                *(result + 116) = v366;
                v365 = *(result + 640) << 8;
                *(result + 640) = v365;
                v371 = *(result + 644);
                v364 = v371 - 8;
                *(result + 644) = v371 - 8;
              }

              while (v371 > 15);
            }

            v365 |= 0x80000000 >> v364;
          }

          else if (v364 >= 8)
          {
            do
            {
              *(*(result + 80) + v366) = HIBYTE(v365);
              v366 = *(result + 116) + 1;
              *(result + 116) = v366;
              v365 = *(result + 640) << 8;
              *(result + 640) = v365;
              v372 = *(result + 644);
              v364 = v372 - 8;
              *(result + 644) = v372 - 8;
            }

            while (v372 > 15);
          }

          ++v364;
          *(result + 640) = v365;
          *(result + 644) = v364;
        }
      }
    }

    if (*(result + 656) >= 3)
    {
      fprintf(*v360, "      bytes: mapping %d, ", v366 - v363);
      v358 = v808;
      v366 = *(result + 116);
      v364 = *(result + 644);
      v365 = *(result + 640);
    }

    v373 = v366;
    if (v364 >= 8)
    {
      do
      {
        *(*(result + 80) + v373) = HIBYTE(v365);
        v373 = *(result + 116) + 1;
        *(result + 116) = v373;
        v365 = *(result + 640) << 8;
        *(result + 640) = v365;
        v374 = *(result + 644);
        v364 = v374 - 8;
        *(result + 644) = v374 - 8;
      }

      while (v374 > 15);
    }

    v375 = v364 + 3;
    v376 = (v358 << (29 - v364)) | v365;
    *(result + 640) = v376;
    *(result + 644) = v364 + 3;
    if (v364 >= 5)
    {
      do
      {
        *(*(result + 80) + v373) = HIBYTE(v376);
        v373 = *(result + 116) + 1;
        *(result + 116) = v373;
        v376 = *(result + 640) << 8;
        *(result + 640) = v376;
        v377 = *(result + 644);
        v375 = v377 - 8;
        *(result + 644) = v377 - 8;
      }

      while (v377 > 15);
    }

    v378 = v375 + 15;
    v379 = (v181 << (17 - v375)) | v376;
    *(result + 640) = v379;
    *(result + 644) = v375 + 15;
    if (v181)
    {
      v380 = 0;
      v381 = result + 19706;
      do
      {
        v382 = *(v381 + v380);
        if (v382)
        {
          for (k = 0; k < v382; ++k)
          {
            if (v378 >= 8)
            {
              do
              {
                *(*(result + 80) + v373) = HIBYTE(v379);
                v373 = *(result + 116) + 1;
                *(result + 116) = v373;
                v379 = *(result + 640) << 8;
                *(result + 640) = v379;
                v384 = *(result + 644);
                v378 = v384 - 8;
                *(result + 644) = v384 - 8;
              }

              while (v384 > 15);
              v382 = *(v381 + v380);
            }

            v385 = v378 + 1;
            v379 |= 0x80000000 >> v378;
            *(result + 640) = v379;
            *(result + 644) = ++v378;
          }
        }

        else
        {
          v385 = v378;
        }

        if (v385 >= 8)
        {
          do
          {
            *(*(result + 80) + v373) = HIBYTE(v379);
            v373 = *(result + 116) + 1;
            *(result + 116) = v373;
            v379 = *(result + 640) << 8;
            *(result + 640) = v379;
            v386 = *(result + 644);
            v385 = v386 - 8;
            *(result + 644) = v386 - 8;
          }

          while (v386 > 15);
        }

        v378 = v385 + 1;
        *(result + 640) = v379;
        *(result + 644) = v385 + 1;
        ++v380;
      }

      while (v380 != v181);
    }

    if (*(result + 656) >= 3)
    {
      fprintf(*v360, "selectors %d, ", v373 - v366);
      v358 = v808;
      v373 = *(result + 116);
      v378 = *(result + 644);
      v379 = *(result + 640);
    }

    v387 = 0;
    v388 = v373;
    do
    {
      v389 = v801[258 * v387];
      if (v378 >= 8)
      {
        do
        {
          *(*(result + 80) + v388) = HIBYTE(v379);
          v388 = *(result + 116) + 1;
          *(result + 116) = v388;
          v379 = *(result + 640) << 8;
          *(result + 640) = v379;
          v390 = *(result + 644);
          v378 = v390 - 8;
          *(result + 644) = v390 - 8;
        }

        while (v390 > 15);
      }

      v391 = v378 + 5;
      v379 |= v389 << (27 - v378);
      *(result + 640) = v379;
      *(result + 644) = v378 + 5;
      if (v803 >= -1)
      {
        v392 = 0;
        do
        {
          v393 = &v801[258 * v387];
          while (1)
          {
            v394 = v393[v392];
            if (v389 >= v394)
            {
              break;
            }

            if (v391 >= 8)
            {
              do
              {
                *(*(result + 80) + v388) = HIBYTE(v379);
                v388 = *(result + 116) + 1;
                *(result + 116) = v388;
                v379 = *(result + 640) << 8;
                *(result + 640) = v379;
                v395 = *(result + 644);
                v391 = v395 - 8;
                *(result + 644) = v395 - 8;
              }

              while (v395 > 15);
            }

            v396 = 30 - v391;
            v391 += 2;
            v379 |= 2 << v396;
            *(result + 640) = v379;
            *(result + 644) = v391;
            ++v389;
          }

          if (v389 > v394)
          {
            do
            {
              if (v391 >= 8)
              {
                do
                {
                  *(*(result + 80) + v388) = HIBYTE(v379);
                  v388 = *(result + 116) + 1;
                  *(result + 116) = v388;
                  v379 = *(result + 640) << 8;
                  *(result + 640) = v379;
                  v397 = *(result + 644);
                  v391 = v397 - 8;
                  *(result + 644) = v397 - 8;
                }

                while (v397 > 15);
              }

              v398 = 30 - v391;
              v391 += 2;
              v379 |= 3 << v398;
              *(result + 640) = v379;
              *(result + 644) = v391;
              --v389;
            }

            while (v389 > v393[v392]);
          }

          if (v391 >= 8)
          {
            do
            {
              *(*(result + 80) + v388) = HIBYTE(v379);
              v388 = *(result + 116) + 1;
              *(result + 116) = v388;
              v379 = *(result + 640) << 8;
              *(result + 640) = v379;
              v399 = *(result + 644);
              v391 = v399 - 8;
              *(result + 644) = v399 - 8;
            }

            while (v399 > 15);
          }

          ++v391;
          *(result + 640) = v379;
          *(result + 644) = v391;
          ++v392;
        }

        while (v392 != v798);
      }

      ++v387;
      v378 = v391;
    }

    while (v387 != v358);
    if (*(result + 656) >= 3)
    {
      fprintf(*v360, "code lengths %d, ", v388 - v373);
      LODWORD(v358) = v808;
      v388 = *(result + 116);
    }

    v400 = *(result + 668);
    if (v400 < 1)
    {
      LODWORD(v401) = 0;
    }

    else
    {
      v401 = 0;
      v402 = 0;
      do
      {
        if (v402 + 49 >= v400)
        {
          v403 = v400 - 1;
        }

        else
        {
          v403 = v402 + 49;
        }

        if (v358 <= *(v807 + v401))
        {
          sub_298587E08(3006);
        }

        v404 = v806;
        if (v403 - v402 != 49)
        {
          v404 = 0;
        }

        if (v404)
        {
          v405 = &v801[258 * *(v807 + v401)];
          v406 = (v805 + 2 * v402);
          v407 = *v406;
          v408 = v405[v407];
          v409 = v350 + 1032 * *(v807 + v401);
          v410 = *(v409 + 4 * v407);
          v411 = *(result + 644);
          v412 = *(result + 640);
          if (v411 >= 8)
          {
            v413 = *(result + 116);
            do
            {
              *(*(result + 80) + v413) = HIBYTE(v412);
              v413 = *(result + 116) + 1;
              *(result + 116) = v413;
              v412 = *(result + 640) << 8;
              *(result + 640) = v412;
              v414 = *(result + 644);
              v411 = v414 - 8;
              *(result + 644) = v414 - 8;
            }

            while (v414 > 15);
          }

          v415 = v411 + v408;
          v416 = (v410 << -v415) | v412;
          *(result + 640) = v416;
          *(result + 644) = v415;
          v417 = v406[1];
          v418 = v405[v417];
          v419 = *(v409 + 4 * v417);
          if (v415 >= 8)
          {
            v420 = *(result + 116);
            do
            {
              *(*(result + 80) + v420) = HIBYTE(v416);
              v420 = *(result + 116) + 1;
              *(result + 116) = v420;
              v416 = *(result + 640) << 8;
              *(result + 640) = v416;
              v421 = *(result + 644);
              v415 = v421 - 8;
              *(result + 644) = v421 - 8;
            }

            while (v421 > 15);
          }

          v422 = v415 + v418;
          v423 = (v419 << -v422) | v416;
          *(result + 640) = v423;
          *(result + 644) = v422;
          v424 = v406[2];
          v425 = v405[v424];
          v426 = *(v409 + 4 * v424);
          if (v422 >= 8)
          {
            v427 = *(result + 116);
            do
            {
              *(*(result + 80) + v427) = HIBYTE(v423);
              v427 = *(result + 116) + 1;
              *(result + 116) = v427;
              v423 = *(result + 640) << 8;
              *(result + 640) = v423;
              v428 = *(result + 644);
              v422 = v428 - 8;
              *(result + 644) = v428 - 8;
            }

            while (v428 > 15);
          }

          v429 = v422 + v425;
          v430 = (v426 << -v429) | v423;
          *(result + 640) = v430;
          *(result + 644) = v429;
          v431 = v406[3];
          v432 = v405[v431];
          v433 = *(v409 + 4 * v431);
          if (v429 >= 8)
          {
            v434 = *(result + 116);
            do
            {
              *(*(result + 80) + v434) = HIBYTE(v430);
              v434 = *(result + 116) + 1;
              *(result + 116) = v434;
              v430 = *(result + 640) << 8;
              *(result + 640) = v430;
              v435 = *(result + 644);
              v429 = v435 - 8;
              *(result + 644) = v435 - 8;
            }

            while (v435 > 15);
          }

          v436 = v429 + v432;
          v437 = (v433 << -v436) | v430;
          *(result + 640) = v437;
          *(result + 644) = v436;
          v438 = v406[4];
          v439 = v405[v438];
          v440 = *(v409 + 4 * v438);
          if (v436 >= 8)
          {
            v441 = *(result + 116);
            do
            {
              *(*(result + 80) + v441) = HIBYTE(v437);
              v441 = *(result + 116) + 1;
              *(result + 116) = v441;
              v437 = *(result + 640) << 8;
              *(result + 640) = v437;
              v442 = *(result + 644);
              v436 = v442 - 8;
              *(result + 644) = v442 - 8;
            }

            while (v442 > 15);
          }

          v443 = v436 + v439;
          v444 = (v440 << -v443) | v437;
          *(result + 640) = v444;
          *(result + 644) = v443;
          v445 = v406[5];
          v446 = v405[v445];
          v447 = *(v409 + 4 * v445);
          if (v443 >= 8)
          {
            v448 = *(result + 116);
            do
            {
              *(*(result + 80) + v448) = HIBYTE(v444);
              v448 = *(result + 116) + 1;
              *(result + 116) = v448;
              v444 = *(result + 640) << 8;
              *(result + 640) = v444;
              v449 = *(result + 644);
              v443 = v449 - 8;
              *(result + 644) = v449 - 8;
            }

            while (v449 > 15);
          }

          v450 = v443 + v446;
          v451 = (v447 << -v450) | v444;
          *(result + 640) = v451;
          *(result + 644) = v450;
          v452 = v406[6];
          v453 = v405[v452];
          v454 = *(v409 + 4 * v452);
          if (v450 >= 8)
          {
            v455 = *(result + 116);
            do
            {
              *(*(result + 80) + v455) = HIBYTE(v451);
              v455 = *(result + 116) + 1;
              *(result + 116) = v455;
              v451 = *(result + 640) << 8;
              *(result + 640) = v451;
              v456 = *(result + 644);
              v450 = v456 - 8;
              *(result + 644) = v456 - 8;
            }

            while (v456 > 15);
          }

          v457 = v450 + v453;
          v458 = (v454 << -v457) | v451;
          *(result + 640) = v458;
          *(result + 644) = v457;
          v459 = v406[7];
          v460 = v405[v459];
          v461 = *(v409 + 4 * v459);
          if (v457 >= 8)
          {
            v462 = *(result + 116);
            do
            {
              *(*(result + 80) + v462) = HIBYTE(v458);
              v462 = *(result + 116) + 1;
              *(result + 116) = v462;
              v458 = *(result + 640) << 8;
              *(result + 640) = v458;
              v463 = *(result + 644);
              v457 = v463 - 8;
              *(result + 644) = v463 - 8;
            }

            while (v463 > 15);
          }

          v464 = v457 + v460;
          v465 = (v461 << -v464) | v458;
          *(result + 640) = v465;
          *(result + 644) = v464;
          v466 = v406[8];
          v467 = v405[v466];
          v468 = *(v409 + 4 * v466);
          if (v464 >= 8)
          {
            v469 = *(result + 116);
            do
            {
              *(*(result + 80) + v469) = HIBYTE(v465);
              v469 = *(result + 116) + 1;
              *(result + 116) = v469;
              v465 = *(result + 640) << 8;
              *(result + 640) = v465;
              v470 = *(result + 644);
              v464 = v470 - 8;
              *(result + 644) = v470 - 8;
            }

            while (v470 > 15);
          }

          v471 = v464 + v467;
          v472 = (v468 << -v471) | v465;
          *(result + 640) = v472;
          *(result + 644) = v471;
          v473 = v406[9];
          v474 = v405[v473];
          v475 = *(v409 + 4 * v473);
          if (v471 >= 8)
          {
            v476 = *(result + 116);
            do
            {
              *(*(result + 80) + v476) = HIBYTE(v472);
              v476 = *(result + 116) + 1;
              *(result + 116) = v476;
              v472 = *(result + 640) << 8;
              *(result + 640) = v472;
              v477 = *(result + 644);
              v471 = v477 - 8;
              *(result + 644) = v477 - 8;
            }

            while (v477 > 15);
          }

          v478 = v471 + v474;
          v479 = (v475 << -v478) | v472;
          *(result + 640) = v479;
          *(result + 644) = v478;
          v480 = v406[10];
          v481 = v405[v480];
          v482 = *(v409 + 4 * v480);
          if (v478 >= 8)
          {
            v483 = *(result + 116);
            do
            {
              *(*(result + 80) + v483) = HIBYTE(v479);
              v483 = *(result + 116) + 1;
              *(result + 116) = v483;
              v479 = *(result + 640) << 8;
              *(result + 640) = v479;
              v484 = *(result + 644);
              v478 = v484 - 8;
              *(result + 644) = v484 - 8;
            }

            while (v484 > 15);
          }

          v485 = v478 + v481;
          v486 = (v482 << -v485) | v479;
          *(result + 640) = v486;
          *(result + 644) = v485;
          v487 = v406[11];
          v488 = v405[v487];
          v489 = *(v409 + 4 * v487);
          if (v485 >= 8)
          {
            v490 = *(result + 116);
            do
            {
              *(*(result + 80) + v490) = HIBYTE(v486);
              v490 = *(result + 116) + 1;
              *(result + 116) = v490;
              v486 = *(result + 640) << 8;
              *(result + 640) = v486;
              v491 = *(result + 644);
              v485 = v491 - 8;
              *(result + 644) = v491 - 8;
            }

            while (v491 > 15);
          }

          v492 = v485 + v488;
          v493 = (v489 << -v492) | v486;
          *(result + 640) = v493;
          *(result + 644) = v492;
          v494 = v406[12];
          v495 = v405[v494];
          v496 = *(v409 + 4 * v494);
          if (v492 >= 8)
          {
            v497 = *(result + 116);
            do
            {
              *(*(result + 80) + v497) = HIBYTE(v493);
              v497 = *(result + 116) + 1;
              *(result + 116) = v497;
              v493 = *(result + 640) << 8;
              *(result + 640) = v493;
              v498 = *(result + 644);
              v492 = v498 - 8;
              *(result + 644) = v498 - 8;
            }

            while (v498 > 15);
          }

          v499 = v492 + v495;
          v500 = (v496 << -v499) | v493;
          *(result + 640) = v500;
          *(result + 644) = v499;
          v501 = v406[13];
          v502 = v405[v501];
          v503 = *(v409 + 4 * v501);
          if (v499 >= 8)
          {
            v504 = *(result + 116);
            do
            {
              *(*(result + 80) + v504) = HIBYTE(v500);
              v504 = *(result + 116) + 1;
              *(result + 116) = v504;
              v500 = *(result + 640) << 8;
              *(result + 640) = v500;
              v505 = *(result + 644);
              v499 = v505 - 8;
              *(result + 644) = v505 - 8;
            }

            while (v505 > 15);
          }

          v506 = v499 + v502;
          v507 = (v503 << -v506) | v500;
          *(result + 640) = v507;
          *(result + 644) = v506;
          v508 = v406[14];
          v509 = v405[v508];
          v510 = *(v409 + 4 * v508);
          if (v506 >= 8)
          {
            v511 = *(result + 116);
            do
            {
              *(*(result + 80) + v511) = HIBYTE(v507);
              v511 = *(result + 116) + 1;
              *(result + 116) = v511;
              v507 = *(result + 640) << 8;
              *(result + 640) = v507;
              v512 = *(result + 644);
              v506 = v512 - 8;
              *(result + 644) = v512 - 8;
            }

            while (v512 > 15);
          }

          v513 = v506 + v509;
          v514 = (v510 << -v513) | v507;
          *(result + 640) = v514;
          *(result + 644) = v513;
          v515 = v406[15];
          v516 = v405[v515];
          v517 = *(v409 + 4 * v515);
          if (v513 >= 8)
          {
            v518 = *(result + 116);
            do
            {
              *(*(result + 80) + v518) = HIBYTE(v514);
              v518 = *(result + 116) + 1;
              *(result + 116) = v518;
              v514 = *(result + 640) << 8;
              *(result + 640) = v514;
              v519 = *(result + 644);
              v513 = v519 - 8;
              *(result + 644) = v519 - 8;
            }

            while (v519 > 15);
          }

          v520 = v513 + v516;
          v521 = (v517 << -v520) | v514;
          *(result + 640) = v521;
          *(result + 644) = v520;
          v522 = v406[16];
          v523 = v405[v522];
          v524 = *(v409 + 4 * v522);
          if (v520 >= 8)
          {
            v525 = *(result + 116);
            do
            {
              *(*(result + 80) + v525) = HIBYTE(v521);
              v525 = *(result + 116) + 1;
              *(result + 116) = v525;
              v521 = *(result + 640) << 8;
              *(result + 640) = v521;
              v526 = *(result + 644);
              v520 = v526 - 8;
              *(result + 644) = v526 - 8;
            }

            while (v526 > 15);
          }

          v527 = v520 + v523;
          v528 = (v524 << -v527) | v521;
          *(result + 640) = v528;
          *(result + 644) = v527;
          v529 = v406[17];
          v530 = v405[v529];
          v531 = *(v409 + 4 * v529);
          if (v527 >= 8)
          {
            v532 = *(result + 116);
            do
            {
              *(*(result + 80) + v532) = HIBYTE(v528);
              v532 = *(result + 116) + 1;
              *(result + 116) = v532;
              v528 = *(result + 640) << 8;
              *(result + 640) = v528;
              v533 = *(result + 644);
              v527 = v533 - 8;
              *(result + 644) = v533 - 8;
            }

            while (v533 > 15);
          }

          v534 = v527 + v530;
          v535 = (v531 << -v534) | v528;
          *(result + 640) = v535;
          *(result + 644) = v534;
          v536 = v406[18];
          v537 = v405[v536];
          v538 = *(v409 + 4 * v536);
          if (v534 >= 8)
          {
            v539 = *(result + 116);
            do
            {
              *(*(result + 80) + v539) = HIBYTE(v535);
              v539 = *(result + 116) + 1;
              *(result + 116) = v539;
              v535 = *(result + 640) << 8;
              *(result + 640) = v535;
              v540 = *(result + 644);
              v534 = v540 - 8;
              *(result + 644) = v540 - 8;
            }

            while (v540 > 15);
          }

          v541 = v534 + v537;
          v542 = (v538 << -v541) | v535;
          *(result + 640) = v542;
          *(result + 644) = v541;
          v543 = v406[19];
          v544 = v405[v543];
          v545 = *(v409 + 4 * v543);
          if (v541 >= 8)
          {
            v546 = *(result + 116);
            do
            {
              *(*(result + 80) + v546) = HIBYTE(v542);
              v546 = *(result + 116) + 1;
              *(result + 116) = v546;
              v542 = *(result + 640) << 8;
              *(result + 640) = v542;
              v547 = *(result + 644);
              v541 = v547 - 8;
              *(result + 644) = v547 - 8;
            }

            while (v547 > 15);
          }

          v548 = v541 + v544;
          v549 = (v545 << -v548) | v542;
          *(result + 640) = v549;
          *(result + 644) = v548;
          v550 = v406[20];
          v551 = v405[v550];
          v552 = *(v409 + 4 * v550);
          if (v548 >= 8)
          {
            v553 = *(result + 116);
            do
            {
              *(*(result + 80) + v553) = HIBYTE(v549);
              v553 = *(result + 116) + 1;
              *(result + 116) = v553;
              v549 = *(result + 640) << 8;
              *(result + 640) = v549;
              v554 = *(result + 644);
              v548 = v554 - 8;
              *(result + 644) = v554 - 8;
            }

            while (v554 > 15);
          }

          v555 = v548 + v551;
          v556 = (v552 << -v555) | v549;
          *(result + 640) = v556;
          *(result + 644) = v555;
          v557 = v406[21];
          v558 = v405[v557];
          v559 = *(v409 + 4 * v557);
          if (v555 >= 8)
          {
            v560 = *(result + 116);
            do
            {
              *(*(result + 80) + v560) = HIBYTE(v556);
              v560 = *(result + 116) + 1;
              *(result + 116) = v560;
              v556 = *(result + 640) << 8;
              *(result + 640) = v556;
              v561 = *(result + 644);
              v555 = v561 - 8;
              *(result + 644) = v561 - 8;
            }

            while (v561 > 15);
          }

          v562 = v555 + v558;
          v563 = (v559 << -v562) | v556;
          *(result + 640) = v563;
          *(result + 644) = v562;
          v564 = v406[22];
          v565 = v405[v564];
          v566 = *(v409 + 4 * v564);
          if (v562 >= 8)
          {
            v567 = *(result + 116);
            do
            {
              *(*(result + 80) + v567) = HIBYTE(v563);
              v567 = *(result + 116) + 1;
              *(result + 116) = v567;
              v563 = *(result + 640) << 8;
              *(result + 640) = v563;
              v568 = *(result + 644);
              v562 = v568 - 8;
              *(result + 644) = v568 - 8;
            }

            while (v568 > 15);
          }

          v569 = v562 + v565;
          v570 = (v566 << -v569) | v563;
          *(result + 640) = v570;
          *(result + 644) = v569;
          v571 = v406[23];
          v572 = v405[v571];
          v573 = *(v409 + 4 * v571);
          if (v569 >= 8)
          {
            v574 = *(result + 116);
            do
            {
              *(*(result + 80) + v574) = HIBYTE(v570);
              v574 = *(result + 116) + 1;
              *(result + 116) = v574;
              v570 = *(result + 640) << 8;
              *(result + 640) = v570;
              v575 = *(result + 644);
              v569 = v575 - 8;
              *(result + 644) = v575 - 8;
            }

            while (v575 > 15);
          }

          v576 = v569 + v572;
          v577 = (v573 << -v576) | v570;
          *(result + 640) = v577;
          *(result + 644) = v576;
          v578 = v406[24];
          v579 = v405[v578];
          v580 = *(v409 + 4 * v578);
          if (v576 >= 8)
          {
            v581 = *(result + 116);
            do
            {
              *(*(result + 80) + v581) = HIBYTE(v577);
              v581 = *(result + 116) + 1;
              *(result + 116) = v581;
              v577 = *(result + 640) << 8;
              *(result + 640) = v577;
              v582 = *(result + 644);
              v576 = v582 - 8;
              *(result + 644) = v582 - 8;
            }

            while (v582 > 15);
          }

          v583 = v576 + v579;
          v584 = (v580 << -v583) | v577;
          *(result + 640) = v584;
          *(result + 644) = v583;
          v585 = v406[25];
          v586 = v405[v585];
          v587 = *(v409 + 4 * v585);
          if (v583 >= 8)
          {
            v588 = *(result + 116);
            do
            {
              *(*(result + 80) + v588) = HIBYTE(v584);
              v588 = *(result + 116) + 1;
              *(result + 116) = v588;
              v584 = *(result + 640) << 8;
              *(result + 640) = v584;
              v589 = *(result + 644);
              v583 = v589 - 8;
              *(result + 644) = v589 - 8;
            }

            while (v589 > 15);
          }

          v590 = v583 + v586;
          v591 = (v587 << -v590) | v584;
          *(result + 640) = v591;
          *(result + 644) = v590;
          v592 = v406[26];
          v593 = v405[v592];
          v594 = *(v409 + 4 * v592);
          if (v590 >= 8)
          {
            v595 = *(result + 116);
            do
            {
              *(*(result + 80) + v595) = HIBYTE(v591);
              v595 = *(result + 116) + 1;
              *(result + 116) = v595;
              v591 = *(result + 640) << 8;
              *(result + 640) = v591;
              v596 = *(result + 644);
              v590 = v596 - 8;
              *(result + 644) = v596 - 8;
            }

            while (v596 > 15);
          }

          v597 = v590 + v593;
          v598 = (v594 << -v597) | v591;
          *(result + 640) = v598;
          *(result + 644) = v597;
          v599 = v406[27];
          v600 = v405[v599];
          v601 = *(v409 + 4 * v599);
          if (v597 >= 8)
          {
            v602 = *(result + 116);
            do
            {
              *(*(result + 80) + v602) = HIBYTE(v598);
              v602 = *(result + 116) + 1;
              *(result + 116) = v602;
              v598 = *(result + 640) << 8;
              *(result + 640) = v598;
              v603 = *(result + 644);
              v597 = v603 - 8;
              *(result + 644) = v603 - 8;
            }

            while (v603 > 15);
          }

          v604 = v597 + v600;
          v605 = (v601 << -v604) | v598;
          *(result + 640) = v605;
          *(result + 644) = v604;
          v606 = v406[28];
          v607 = v405[v606];
          v608 = *(v409 + 4 * v606);
          if (v604 >= 8)
          {
            v609 = *(result + 116);
            do
            {
              *(*(result + 80) + v609) = HIBYTE(v605);
              v609 = *(result + 116) + 1;
              *(result + 116) = v609;
              v605 = *(result + 640) << 8;
              *(result + 640) = v605;
              v610 = *(result + 644);
              v604 = v610 - 8;
              *(result + 644) = v610 - 8;
            }

            while (v610 > 15);
          }

          v611 = v604 + v607;
          v612 = (v608 << -v611) | v605;
          *(result + 640) = v612;
          *(result + 644) = v611;
          v613 = v406[29];
          v614 = v405[v613];
          v615 = *(v409 + 4 * v613);
          if (v611 >= 8)
          {
            v616 = *(result + 116);
            do
            {
              *(*(result + 80) + v616) = HIBYTE(v612);
              v616 = *(result + 116) + 1;
              *(result + 116) = v616;
              v612 = *(result + 640) << 8;
              *(result + 640) = v612;
              v617 = *(result + 644);
              v611 = v617 - 8;
              *(result + 644) = v617 - 8;
            }

            while (v617 > 15);
          }

          v618 = v611 + v614;
          v619 = (v615 << -v618) | v612;
          *(result + 640) = v619;
          *(result + 644) = v618;
          v620 = v406[30];
          v621 = v405[v620];
          v622 = *(v409 + 4 * v620);
          if (v618 >= 8)
          {
            v623 = *(result + 116);
            do
            {
              *(*(result + 80) + v623) = HIBYTE(v619);
              v623 = *(result + 116) + 1;
              *(result + 116) = v623;
              v619 = *(result + 640) << 8;
              *(result + 640) = v619;
              v624 = *(result + 644);
              v618 = v624 - 8;
              *(result + 644) = v624 - 8;
            }

            while (v624 > 15);
          }

          v625 = v618 + v621;
          v626 = (v622 << -v625) | v619;
          *(result + 640) = v626;
          *(result + 644) = v625;
          v627 = v406[31];
          v628 = v405[v627];
          v629 = *(v409 + 4 * v627);
          if (v625 >= 8)
          {
            v630 = *(result + 116);
            do
            {
              *(*(result + 80) + v630) = HIBYTE(v626);
              v630 = *(result + 116) + 1;
              *(result + 116) = v630;
              v626 = *(result + 640) << 8;
              *(result + 640) = v626;
              v631 = *(result + 644);
              v625 = v631 - 8;
              *(result + 644) = v631 - 8;
            }

            while (v631 > 15);
          }

          v632 = v625 + v628;
          v633 = (v629 << -v632) | v626;
          *(result + 640) = v633;
          *(result + 644) = v632;
          v634 = v406[32];
          v635 = v405[v634];
          v636 = *(v409 + 4 * v634);
          if (v632 >= 8)
          {
            v637 = *(result + 116);
            do
            {
              *(*(result + 80) + v637) = HIBYTE(v633);
              v637 = *(result + 116) + 1;
              *(result + 116) = v637;
              v633 = *(result + 640) << 8;
              *(result + 640) = v633;
              v638 = *(result + 644);
              v632 = v638 - 8;
              *(result + 644) = v638 - 8;
            }

            while (v638 > 15);
          }

          v639 = v632 + v635;
          v640 = (v636 << -v639) | v633;
          *(result + 640) = v640;
          *(result + 644) = v639;
          v641 = v406[33];
          v642 = v405[v641];
          v643 = *(v409 + 4 * v641);
          if (v639 >= 8)
          {
            v644 = *(result + 116);
            do
            {
              *(*(result + 80) + v644) = HIBYTE(v640);
              v644 = *(result + 116) + 1;
              *(result + 116) = v644;
              v640 = *(result + 640) << 8;
              *(result + 640) = v640;
              v645 = *(result + 644);
              v639 = v645 - 8;
              *(result + 644) = v645 - 8;
            }

            while (v645 > 15);
          }

          v646 = v639 + v642;
          v647 = (v643 << -v646) | v640;
          *(result + 640) = v647;
          *(result + 644) = v646;
          v648 = v406[34];
          v649 = v405[v648];
          v650 = *(v409 + 4 * v648);
          if (v646 >= 8)
          {
            v651 = *(result + 116);
            do
            {
              *(*(result + 80) + v651) = HIBYTE(v647);
              v651 = *(result + 116) + 1;
              *(result + 116) = v651;
              v647 = *(result + 640) << 8;
              *(result + 640) = v647;
              v652 = *(result + 644);
              v646 = v652 - 8;
              *(result + 644) = v652 - 8;
            }

            while (v652 > 15);
          }

          v653 = v646 + v649;
          v654 = (v650 << -v653) | v647;
          *(result + 640) = v654;
          *(result + 644) = v653;
          v655 = v406[35];
          v656 = v405[v655];
          v657 = *(v409 + 4 * v655);
          if (v653 >= 8)
          {
            v658 = *(result + 116);
            do
            {
              *(*(result + 80) + v658) = HIBYTE(v654);
              v658 = *(result + 116) + 1;
              *(result + 116) = v658;
              v654 = *(result + 640) << 8;
              *(result + 640) = v654;
              v659 = *(result + 644);
              v653 = v659 - 8;
              *(result + 644) = v659 - 8;
            }

            while (v659 > 15);
          }

          v660 = v653 + v656;
          v661 = (v657 << -v660) | v654;
          *(result + 640) = v661;
          *(result + 644) = v660;
          v662 = v406[36];
          v663 = v405[v662];
          v664 = *(v409 + 4 * v662);
          if (v660 >= 8)
          {
            v665 = *(result + 116);
            do
            {
              *(*(result + 80) + v665) = HIBYTE(v661);
              v665 = *(result + 116) + 1;
              *(result + 116) = v665;
              v661 = *(result + 640) << 8;
              *(result + 640) = v661;
              v666 = *(result + 644);
              v660 = v666 - 8;
              *(result + 644) = v666 - 8;
            }

            while (v666 > 15);
          }

          v667 = v660 + v663;
          v668 = (v664 << -v667) | v661;
          *(result + 640) = v668;
          *(result + 644) = v667;
          v669 = v406[37];
          v670 = v405[v669];
          v671 = *(v409 + 4 * v669);
          if (v667 >= 8)
          {
            v672 = *(result + 116);
            do
            {
              *(*(result + 80) + v672) = HIBYTE(v668);
              v672 = *(result + 116) + 1;
              *(result + 116) = v672;
              v668 = *(result + 640) << 8;
              *(result + 640) = v668;
              v673 = *(result + 644);
              v667 = v673 - 8;
              *(result + 644) = v673 - 8;
            }

            while (v673 > 15);
          }

          v674 = v667 + v670;
          v675 = (v671 << -v674) | v668;
          *(result + 640) = v675;
          *(result + 644) = v674;
          v676 = v406[38];
          v677 = v405[v676];
          v678 = *(v409 + 4 * v676);
          if (v674 >= 8)
          {
            v679 = *(result + 116);
            do
            {
              *(*(result + 80) + v679) = HIBYTE(v675);
              v679 = *(result + 116) + 1;
              *(result + 116) = v679;
              v675 = *(result + 640) << 8;
              *(result + 640) = v675;
              v680 = *(result + 644);
              v674 = v680 - 8;
              *(result + 644) = v680 - 8;
            }

            while (v680 > 15);
          }

          v681 = v674 + v677;
          v682 = (v678 << -v681) | v675;
          *(result + 640) = v682;
          *(result + 644) = v681;
          v683 = v406[39];
          v684 = v405[v683];
          v685 = *(v409 + 4 * v683);
          if (v681 >= 8)
          {
            v686 = *(result + 116);
            do
            {
              *(*(result + 80) + v686) = HIBYTE(v682);
              v686 = *(result + 116) + 1;
              *(result + 116) = v686;
              v682 = *(result + 640) << 8;
              *(result + 640) = v682;
              v687 = *(result + 644);
              v681 = v687 - 8;
              *(result + 644) = v687 - 8;
            }

            while (v687 > 15);
          }

          v688 = v681 + v684;
          v689 = (v685 << -v688) | v682;
          *(result + 640) = v689;
          *(result + 644) = v688;
          v690 = v406[40];
          v691 = v405[v690];
          v692 = *(v409 + 4 * v690);
          if (v688 >= 8)
          {
            v693 = *(result + 116);
            do
            {
              *(*(result + 80) + v693) = HIBYTE(v689);
              v693 = *(result + 116) + 1;
              *(result + 116) = v693;
              v689 = *(result + 640) << 8;
              *(result + 640) = v689;
              v694 = *(result + 644);
              v688 = v694 - 8;
              *(result + 644) = v694 - 8;
            }

            while (v694 > 15);
          }

          v695 = v688 + v691;
          v696 = (v692 << -v695) | v689;
          *(result + 640) = v696;
          *(result + 644) = v695;
          v697 = v406[41];
          v698 = v405[v697];
          v699 = *(v409 + 4 * v697);
          if (v695 >= 8)
          {
            v700 = *(result + 116);
            do
            {
              *(*(result + 80) + v700) = HIBYTE(v696);
              v700 = *(result + 116) + 1;
              *(result + 116) = v700;
              v696 = *(result + 640) << 8;
              *(result + 640) = v696;
              v701 = *(result + 644);
              v695 = v701 - 8;
              *(result + 644) = v701 - 8;
            }

            while (v701 > 15);
          }

          v702 = v695 + v698;
          v703 = (v699 << -v702) | v696;
          *(result + 640) = v703;
          *(result + 644) = v702;
          v704 = v406[42];
          v705 = v405[v704];
          v706 = *(v409 + 4 * v704);
          if (v702 >= 8)
          {
            v707 = *(result + 116);
            do
            {
              *(*(result + 80) + v707) = HIBYTE(v703);
              v707 = *(result + 116) + 1;
              *(result + 116) = v707;
              v703 = *(result + 640) << 8;
              *(result + 640) = v703;
              v708 = *(result + 644);
              v702 = v708 - 8;
              *(result + 644) = v708 - 8;
            }

            while (v708 > 15);
          }

          v709 = v702 + v705;
          v710 = (v706 << -v709) | v703;
          *(result + 640) = v710;
          *(result + 644) = v709;
          v711 = v406[43];
          v712 = v405[v711];
          v713 = *(v409 + 4 * v711);
          if (v709 >= 8)
          {
            v714 = *(result + 116);
            do
            {
              *(*(result + 80) + v714) = HIBYTE(v710);
              v714 = *(result + 116) + 1;
              *(result + 116) = v714;
              v710 = *(result + 640) << 8;
              *(result + 640) = v710;
              v715 = *(result + 644);
              v709 = v715 - 8;
              *(result + 644) = v715 - 8;
            }

            while (v715 > 15);
          }

          v716 = v709 + v712;
          v717 = (v713 << -v716) | v710;
          *(result + 640) = v717;
          *(result + 644) = v716;
          v718 = v406[44];
          v719 = v405[v718];
          v720 = *(v409 + 4 * v718);
          if (v716 >= 8)
          {
            v721 = *(result + 116);
            do
            {
              *(*(result + 80) + v721) = HIBYTE(v717);
              v721 = *(result + 116) + 1;
              *(result + 116) = v721;
              v717 = *(result + 640) << 8;
              *(result + 640) = v717;
              v722 = *(result + 644);
              v716 = v722 - 8;
              *(result + 644) = v722 - 8;
            }

            while (v722 > 15);
          }

          v723 = v716 + v719;
          v724 = (v720 << -v723) | v717;
          *(result + 640) = v724;
          *(result + 644) = v723;
          v725 = v406[45];
          v726 = v405[v725];
          v727 = *(v409 + 4 * v725);
          if (v723 >= 8)
          {
            v728 = *(result + 116);
            do
            {
              *(*(result + 80) + v728) = HIBYTE(v724);
              v728 = *(result + 116) + 1;
              *(result + 116) = v728;
              v724 = *(result + 640) << 8;
              *(result + 640) = v724;
              v729 = *(result + 644);
              v723 = v729 - 8;
              *(result + 644) = v729 - 8;
            }

            while (v729 > 15);
          }

          v730 = v723 + v726;
          v731 = (v727 << -v730) | v724;
          *(result + 640) = v731;
          *(result + 644) = v730;
          v732 = v406[46];
          v733 = v405[v732];
          v734 = *(v409 + 4 * v732);
          if (v730 >= 8)
          {
            v735 = *(result + 116);
            do
            {
              *(*(result + 80) + v735) = HIBYTE(v731);
              v735 = *(result + 116) + 1;
              *(result + 116) = v735;
              v731 = *(result + 640) << 8;
              *(result + 640) = v731;
              v736 = *(result + 644);
              v730 = v736 - 8;
              *(result + 644) = v736 - 8;
            }

            while (v736 > 15);
          }

          v737 = v730 + v733;
          v738 = (v734 << -v737) | v731;
          *(result + 640) = v738;
          *(result + 644) = v737;
          v739 = v406[47];
          v740 = v405[v739];
          v741 = *(v409 + 4 * v739);
          if (v737 >= 8)
          {
            v742 = *(result + 116);
            do
            {
              *(*(result + 80) + v742) = HIBYTE(v738);
              v742 = *(result + 116) + 1;
              *(result + 116) = v742;
              v738 = *(result + 640) << 8;
              *(result + 640) = v738;
              v743 = *(result + 644);
              v737 = v743 - 8;
              *(result + 644) = v743 - 8;
            }

            while (v743 > 15);
          }

          v744 = v737 + v740;
          v745 = (v741 << -v744) | v738;
          *(result + 640) = v745;
          *(result + 644) = v744;
          v746 = v406[48];
          v747 = v405[v746];
          v748 = *(v409 + 4 * v746);
          if (v744 >= 8)
          {
            v749 = *(result + 116);
            do
            {
              *(*(result + 80) + v749) = HIBYTE(v745);
              v749 = *(result + 116) + 1;
              *(result + 116) = v749;
              v745 = *(result + 640) << 8;
              *(result + 640) = v745;
              v750 = *(result + 644);
              v744 = v750 - 8;
              *(result + 644) = v750 - 8;
            }

            while (v750 > 15);
          }

          v751 = v744 + v747;
          v752 = (v748 << -v751) | v745;
          *(result + 640) = v752;
          *(result + 644) = v751;
          v753 = v406[49];
          v754 = v405[v753];
          v755 = *(v409 + 4 * v753);
          if (v751 >= 8)
          {
            v756 = *(result + 116);
            do
            {
              *(*(result + 80) + v756) = HIBYTE(v752);
              v756 = *(result + 116) + 1;
              *(result + 116) = v756;
              v752 = *(result + 640) << 8;
              *(result + 640) = v752;
              v757 = *(result + 644);
              v751 = v757 - 8;
              *(result + 644) = v757 - 8;
            }

            while (v757 > 15);
          }

          v758 = v751 + v754;
          *(result + 640) = (v755 << -v758) | v752;
          *(result + 644) = v758;
        }

        else if (v403 >= v402)
        {
          v759 = v402;
          v760 = *(result + 644);
          v761 = *(result + 640);
          do
          {
            v762 = *(v805 + 2 * v759);
            v763 = v801[258 * *(v807 + v401) + v762];
            v764 = *(v350 + 1032 * *(v807 + v401) + 4 * v762);
            if (v760 >= 8)
            {
              v765 = *(result + 116);
              do
              {
                *(*(result + 80) + v765) = HIBYTE(v761);
                v765 = *(result + 116) + 1;
                *(result + 116) = v765;
                v761 = *(result + 640) << 8;
                *(result + 640) = v761;
                v766 = *(result + 644);
                v760 = v766 - 8;
                *(result + 644) = v766 - 8;
              }

              while (v766 > 15);
            }

            v760 += v763;
            v761 |= v764 << -v760;
            *(result + 640) = v761;
            *(result + 644) = v760;
            ++v759;
          }

          while (v403 + 1 != v759);
        }

        v402 = v403 + 1;
        ++v401;
        v400 = *(result + 668);
      }

      while (v403 + 1 < v400);
      v360 = MEMORY[0x29EDCA610];
    }

    a2 = v794;
    if (v401 != v181)
    {
      sub_298587E08(3007);
    }

    if (*(result + 656) >= 3)
    {
      fprintf(*v360, "codes %d\n", *(result + 116) - v388);
    }
  }

  if (a2)
  {
    v767 = *(result + 644);
    if (v767 <= 7)
    {
      v768 = *(result + 640);
      v770 = v767 + 8;
    }

    else
    {
      v768 = *(result + 640);
      v769 = *(result + 116);
      do
      {
        *(*(result + 80) + v769) = HIBYTE(v768);
        v769 = *(result + 116) + 1;
        *(result + 116) = v769;
        v768 = *(result + 640) << 8;
        *(result + 640) = v768;
        v770 = *(result + 644);
        *(result + 644) = v770 - 8;
      }

      while (v770 > 15);
    }

    v771 = (23 << -v770) | v768;
    *(result + 640) = v771;
    *(result + 644) = v770;
    if (v770 >= 8)
    {
      v772 = *(result + 116);
      do
      {
        *(*(result + 80) + v772) = HIBYTE(v771);
        v772 = *(result + 116) + 1;
        *(result + 116) = v772;
        v771 = *(result + 640) << 8;
        *(result + 640) = v771;
        v773 = *(result + 644);
        v770 = v773 - 8;
        *(result + 644) = v773 - 8;
      }

      while (v773 > 15);
    }

    v774 = v770 + 8;
    v775 = (114 << (24 - v770)) | v771;
    *(result + 640) = v775;
    *(result + 644) = v770 + 8;
    if ((v770 & 0x80000000) == 0)
    {
      v776 = *(result + 116);
      do
      {
        *(*(result + 80) + v776) = HIBYTE(v775);
        v776 = *(result + 116) + 1;
        *(result + 116) = v776;
        v775 = *(result + 640) << 8;
        *(result + 640) = v775;
        v777 = *(result + 644);
        v774 = v777 - 8;
        *(result + 644) = v777 - 8;
      }

      while (v777 > 15);
    }

    v778 = v774 + 8;
    v779 = (69 << (24 - v774)) | v775;
    *(result + 640) = v779;
    *(result + 644) = v774 + 8;
    if ((v774 & 0x80000000) == 0)
    {
      v780 = *(result + 116);
      do
      {
        *(*(result + 80) + v780) = HIBYTE(v779);
        v780 = *(result + 116) + 1;
        *(result + 116) = v780;
        v779 = *(result + 640) << 8;
        *(result + 640) = v779;
        v781 = *(result + 644);
        v778 = v781 - 8;
        *(result + 644) = v781 - 8;
      }

      while (v781 > 15);
    }

    v782 = v778 + 8;
    v783 = (56 << (24 - v778)) | v779;
    *(result + 640) = v783;
    *(result + 644) = v778 + 8;
    if ((v778 & 0x80000000) == 0)
    {
      v784 = *(result + 116);
      do
      {
        *(*(result + 80) + v784) = HIBYTE(v783);
        v784 = *(result + 116) + 1;
        *(result + 116) = v784;
        v783 = *(result + 640) << 8;
        *(result + 640) = v783;
        v785 = *(result + 644);
        v782 = v785 - 8;
        *(result + 644) = v785 - 8;
      }

      while (v785 > 15);
    }

    v786 = v782 + 8;
    v787 = (80 << (24 - v782)) | v783;
    *(result + 640) = v787;
    *(result + 644) = v782 + 8;
    if ((v782 & 0x80000000) == 0)
    {
      v788 = *(result + 116);
      do
      {
        *(*(result + 80) + v788) = HIBYTE(v787);
        v788 = *(result + 116) + 1;
        *(result + 116) = v788;
        v787 = *(result + 640) << 8;
        *(result + 640) = v787;
        v789 = *(result + 644);
        v786 = v789 - 8;
        *(result + 644) = v789 - 8;
      }

      while (v789 > 15);
    }

    *(result + 640) = (144 << (24 - v786)) | v787;
    *(result + 644) = v786 + 8;
    sub_2985874D8(result, *(result + 652));
    if (*(result + 656) > 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "    final combined CRC = 0x%08x\n   ", *(result + 652));
    }

    if (*(result + 644) >= 1)
    {
      v790 = *(result + 640);
      v791 = *(result + 116);
      do
      {
        *(*(result + 80) + v791) = HIBYTE(v790);
        v791 = *(result + 116) + 1;
        *(result + 116) = v791;
        v790 = *(result + 640) << 8;
        *(result + 640) = v790;
        v792 = *(result + 644);
        v84 = __OFSUB__(v792, 8);
        v792 -= 8;
        *(result + 644) = v792;
      }

      while (!((v792 < 0) ^ v84 | (v792 == 0)));
    }
  }
}

void sub_298585CE8()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v218 = *MEMORY[0x29EDCA608];
  v204 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 108);
  v4 = *(v0 + 656);
  if (v3 < 10000)
  {
LABEL_2:
    sub_298586C14(*(v1 + 24), *(v1 + 32), v2, v3, v4);
    v5 = v204;
    goto LABEL_215;
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 108) + (*(v0 + 108) & 1u) + 34;
  v212 = *(v0 + 64);
  v8 = &v212[v7];
  if (v6 <= 1)
  {
    v6 = 1;
  }

  if (v6 >= 100)
  {
    LOBYTE(v6) = 100;
  }

  v9 = v3 * ((v6 - 1) / 3u);
  v213[0] = v9;
  if (v4 >= 4)
  {
    fwrite("        main sort initialise ...\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  bzero(v2, 0x40004uLL);
  v10 = *v212;
  v11 = (v3 - 1);
  v12 = v11 - 3;
  v13 = &v212[2 * v11 - 8 + v7];
  v14 = v11;
  do
  {
    v15 = v14;
    *&v8[2 * v14] = 0;
    v16 = v212[v14];
    ++v2[v10 | (v16 << 8)];
    v17 = v14 - 1;
    *&v8[2 * v17] = 0;
    v18 = v12;
    LODWORD(v17) = v212[v17];
    ++v2[v16 | (v17 << 8)];
    *&v8[2 * v15 - 4] = 0;
    v19 = v13;
    v20 = v212[v15 - 2];
    ++v2[v17 | (v20 << 8)];
    *&v8[2 * v15 - 6] = 0;
    v10 = v212[v15 - 3];
    v21 = v20 | (v10 << 8);
    ++v2[v21];
    v14 = v15 - 4;
    v12 -= 4;
    v13 -= 8;
  }

  while (v15 > 6);
  if (v15 >= 4)
  {
    v22 = v212;
    do
    {
      *v19-- = 0;
      v21 = (v22[v14] << 8) | (v21 >> 8);
      ++v2[v21];
      --v22;
      --v18;
    }

    while (v18);
  }

  v23 = 0;
  v24 = v7 + 2 * v3;
  v25 = v212;
  v26 = &v212[v24];
  do
  {
    v212[v3 + v23] = v212[v23];
    *&v26[2 * v23++] = 0;
  }

  while (v23 != 34);
  if (v4 >= 4)
  {
    fwrite("        bucket sorting ...\n", 0x1BuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v27 = 0;
  v28 = v2 + 1;
  v29 = *v2;
  v5 = v204;
  do
  {
    v29 += v28[v27];
    v28[v27++] = v29;
  }

  while (v27 != 0x10000);
  v30 = 0;
  v31 = *v212 << 8;
  v32 = &v212[v11];
  v33 = v3 - 1;
  do
  {
    HIDWORD(v34) = v32[v30];
    LODWORD(v34) = v31 << 16;
    v35 = (v34 >> 24);
    v36 = v2[v35] - 1;
    v2[v35] = v36;
    *(v204 + 4 * v36) = v33;
    v37 = (v34 >> 24) << 16;
    HIDWORD(v34) = v32[v30 - 1];
    LODWORD(v34) = v37;
    v38 = (v34 >> 24);
    v39 = v2[v38] - 1;
    v2[v38] = v39;
    *(v204 + 4 * v39) = v3 - 2 + v30;
    v40 = (v34 >> 24) << 16;
    HIDWORD(v34) = v32[v30 - 2];
    LODWORD(v34) = v40;
    v41 = (v34 >> 24);
    v42 = v2[v41] - 1;
    v2[v41] = v42;
    *(v204 + 4 * v42) = v3 - 3 + v30;
    v43 = (v34 >> 24) << 16;
    HIDWORD(v34) = v32[v30 - 3];
    LODWORD(v34) = v43;
    v31 = v34 >> 24;
    v44 = (v34 >> 24);
    LODWORD(v41) = v2[v44] - 1;
    v2[v44] = v41;
    *(v204 + 4 * v41) = v3 - 4 + v30;
    v33 -= 4;
    v30 -= 4;
    v45 = v11 + v30;
    v46 = v11 + v30 + 4;
  }

  while (v46 > 6);
  if (v46 >= 4)
  {
    do
    {
      HIDWORD(v47) = v212[v45];
      LODWORD(v47) = v31 << 16;
      v31 = v47 >> 24;
      v48 = (v47 >> 24);
      v49 = v2[v48] - 1;
      v2[v48] = v49;
      *(v204 + 4 * v49) = v33;
      --v45;
      --v33;
    }

    while (v45 != -1);
  }

  v50 = 0;
  memset(v214, 0, 256);
  v51 = xmmword_29858C9F0;
  v52.i64[0] = 0x400000004;
  v52.i64[1] = 0x400000004;
  do
  {
    *&v214[v50 + 264] = v51;
    v51 = vaddq_s32(v51, v52);
    v50 += 16;
  }

  while (v50 != 1024);
  v53 = 364;
  do
  {
    v54 = v53 / 3;
    if (v53 <= 767)
    {
      v55 = 0;
      v56 = v54;
      if (v54 <= 255)
      {
        v57 = 255;
      }

      else
      {
        v57 = v53 / 3;
      }

      v58 = (v57 + 1);
      do
      {
        v59 = *&v214[4 * v56 + 264];
        v60 = v2[256 * v59 + 256] - v2[256 * v59];
        v61 = v55;
        while (1)
        {
          v62 = *&v214[4 * v61 + 264];
          if (v2[256 * v62 + 256] - v2[256 * v62] <= v60)
          {
            break;
          }

          v63 = v61;
          *&v214[4 * v54 + 264 + 4 * v61] = v62;
          v64 = __OFSUB__(v61, v54);
          v61 -= v54;
          if (v61 < 0 != v64)
          {
            goto LABEL_38;
          }
        }

        v63 = v54 + v61;
LABEL_38:
        *&v214[4 * v63 + 264] = v59;
        ++v56;
        ++v55;
      }

      while (v56 != v58);
    }

    v65 = v53 - 3;
    v53 /= 3;
  }

  while (v65 > 2);
  v66 = 0;
  v67 = 0;
  v192 = v1;
  v187 = v9;
  v191 = v4;
  v211 = v8;
  v185 = v3 - 1;
  while (2)
  {
    v189 = v66;
    v68 = *&v214[4 * v66 + 264];
    v197 = v68;
    v203 = v68;
    v186 = v68 << 8;
    v69 = &v2[v68 << 8];
    v70 = 0;
    v190 = v69;
    do
    {
      if (v70 != v203)
      {
        v201 = v70;
        v71 = &v69[v70];
        v72 = *v71;
        v200 = v71;
        v202 = *v71;
        if ((*v71 & 0x200000) == 0)
        {
          v73 = v71[1] & 0xFFDFFFFF;
          v193 = v73 - 1;
          if ((v73 - 1) > v72)
          {
            if (v4 >= 4)
            {
              fprintf(*MEMORY[0x29EDCA610], "        qsort [0x%x, 0x%x]   done %d   this %d\n", v203, v201, v67, v73 - v202);
              v5 = v204;
            }

            v217[0] = v202;
            v216[0] = v193;
            v74 = 1;
            v215[0] = 2;
            while (2)
            {
              v75 = v74 - 1;
              for (i = v74 - 1; ; v215[i] = v106)
              {
                if (v74 >= 0x62)
                {
                  sub_298587E08(1001);
                }

                v76 = v217[v75];
                v77 = v216[v75];
                v78 = v77;
                v79 = v215[v75];
                v80 = v77 - v76;
                v81 = v77 - v76 >= 20 && v79 < 15;
                if (!v81)
                {
                  break;
                }

                v82 = v76;
                v83 = v25[*(v5 + 4 * v76) + v79];
                v84 = v25[*(v5 + 4 * v77) + v79];
                v85 = v25[*(v5 + 4 * ((v77 + v76) >> 1)) + v79];
                if (v83 <= v84)
                {
                  v86 = v25[*(v5 + 4 * v77) + v79];
                }

                else
                {
                  v86 = v25[*(v5 + 4 * v76) + v79];
                }

                if (v83 >= v84)
                {
                  v83 = v25[*(v5 + 4 * v77) + v79];
                }

                if (v83 <= v85)
                {
                  v83 = v25[*(v5 + 4 * ((v77 + v76) >> 1)) + v79];
                }

                if (v86 > v85)
                {
                  v86 = v83;
                }

                LODWORD(v87) = v77;
                LODWORD(v88) = v76;
                v89 = v77;
                v90 = v76;
                v91 = v76;
LABEL_66:
                if (v91 <= v89)
                {
                  v88 = v88;
                  do
                  {
                    if (v91 <= v89)
                    {
                      v92 = v89;
                    }

                    else
                    {
                      v92 = v91;
                    }

                    v93 = (v5 + 4 * v91);
                    v94 = v92 - v91 + 1;
                    while (1)
                    {
                      v95 = *v93;
                      v96 = v25[*v93 + v79];
                      if (v96 == v86)
                      {
                        break;
                      }

                      if (v96 > v86)
                      {
                        goto LABEL_79;
                      }

                      ++v91;
                      ++v93;
                      if (!--v94)
                      {
                        v91 = v92 + 1;
                        goto LABEL_79;
                      }
                    }

                    *v93 = *(v5 + 4 * v88);
                    *(v5 + 4 * v88++) = v95;
                    v97 = v91 + 1;
                    v81 = v89 <= v91++;
                  }

                  while (!v81);
                  v91 = v97;
                }

LABEL_79:
                if (v91 <= v89)
                {
                  v87 = v87;
                  while (2)
                  {
                    v98 = v89;
                    v99 = (v5 + 4 * v89);
                    v100 = v89 + 1;
                    while (1)
                    {
                      v101 = *v99;
                      v102 = v25[*v99 + v79];
                      if (v102 == v86)
                      {
                        break;
                      }

                      if (v102 < v86)
                      {
                        v104 = *(v5 + 4 * v91);
                        *(v5 + 4 * v91) = v101;
                        *v99 = v104;
                        ++v91;
                        --v89;
                        goto LABEL_66;
                      }

                      --v89;
                      --v99;
                      if (--v100 <= v91)
                      {
                        if (v98 >= v91)
                        {
                          v105 = v91;
                        }

                        else
                        {
                          v105 = v98;
                        }

                        v89 = v105 - 1;
                        goto LABEL_93;
                      }
                    }

                    *v99 = *(v5 + 4 * v87);
                    *(v5 + 4 * v87--) = v101;
                    v103 = v89 - 1;
                    v81 = v91 < v89--;
                    if (v81)
                    {
                      continue;
                    }

                    break;
                  }

                  v89 = v103;
                }

LABEL_93:
                if (v87 >= v88)
                {
                  v133 = v91 - v88;
                  if (v88 - v90 < v91 - v88)
                  {
                    v133 = v88 - v90;
                  }

                  if (v133 >= 1)
                  {
                    v134 = (v5 + 4 * v82);
                    v135 = (v5 + 4 * (v91 - v133));
                    v136 = v133 + 1;
                    do
                    {
                      v137 = *v134;
                      *v134++ = *v135;
                      *v135++ = v137;
                      --v136;
                    }

                    while (v136 > 1);
                  }

                  v138 = v87 - v89;
                  if (v77 - v87 >= v87 - v89)
                  {
                    v139 = v87 - v89;
                  }

                  else
                  {
                    v139 = v77 - v87;
                  }

                  if (v139 >= 1)
                  {
                    v140 = (v5 + 4 * v91);
                    v141 = (v204 + 4 + 4 * (v77 - v139));
                    v142 = v139 + 1;
                    do
                    {
                      v143 = *v140;
                      *v140++ = *v141;
                      *v141++ = v143;
                      --v142;
                    }

                    while (v142 > 1);
                  }

                  v144 = v90 - v88 + v91;
                  v145 = v77 - v138;
                  v146 = v144 - 1 - v90;
                  v147 = v77 - (v145 + 1);
                  v148 = v146 < v147;
                  if (v146 >= v147)
                  {
                    v149 = v145 + 1;
                  }

                  else
                  {
                    v147 = v144 - 1 - v90;
                    v149 = v90;
                  }

                  if (v148)
                  {
                    v150 = v145 + 1;
                  }

                  else
                  {
                    v150 = v90;
                  }

                  if (v148)
                  {
                    v151 = v144 - 1;
                  }

                  else
                  {
                    v151 = v77;
                  }

                  if (!v148)
                  {
                    v77 = v144 - 1;
                  }

                  v152 = v145 - v144;
                  v153 = v147 < v145 - v144;
                  if (v147 < v145 - v144)
                  {
                    v154 = v149;
                  }

                  else
                  {
                    v152 = v147;
                    v154 = v144;
                  }

                  if (v153)
                  {
                    v155 = v151;
                  }

                  else
                  {
                    v144 = v149;
                    v155 = v145;
                  }

                  if (v153)
                  {
                    v156 = v79;
                  }

                  else
                  {
                    v145 = v151;
                    v156 = v79 + 1;
                  }

                  if (v153)
                  {
                    v157 = v79 + 1;
                  }

                  else
                  {
                    v157 = v79;
                  }

                  v158 = v77 - v150 < v152;
                  if (v77 - v150 < v152)
                  {
                    v159 = v144;
                  }

                  else
                  {
                    v159 = v150;
                  }

                  v217[i] = v159;
                  if (v158)
                  {
                    v160 = v145;
                  }

                  else
                  {
                    v160 = v77;
                  }

                  if (v158)
                  {
                    v161 = v157;
                  }

                  else
                  {
                    v161 = v79;
                  }

                  v216[i] = v160;
                  v215[i] = v161;
                  if (v158)
                  {
                    v144 = v150;
                  }

                  if (!v158)
                  {
                    v77 = v145;
                  }

                  v217[v74] = v144;
                  v216[v74] = v77;
                  if (v158)
                  {
                    v162 = v79;
                  }

                  else
                  {
                    v162 = v157;
                  }

                  v215[v74] = v162;
                  v217[v74 + 1] = v154;
                  v216[v74 + 1] = v155;
                  v215[v74 + 1] = v156;
                  v132 = v74 + 2;
                  goto LABEL_177;
                }

                v106 = v79 + 1;
                v75 = v74 - 1;
              }

              if (v80 >= 1)
              {
                v107 = -1;
                v108 = dword_29858CA00;
                do
                {
                  v109 = *v108++;
                  ++v107;
                }

                while (v109 <= v80);
                if (v107)
                {
                  v188 = v67;
                  v110 = v3;
                  v195 = v76 + 2;
                  v196 = v76 + 1;
                  v194 = v76;
                  v207 = v78;
                  do
                  {
                    v198 = v107;
                    v199 = v107 - 1;
                    v111 = dword_29858CA00[(v107 - 1)];
                    v112 = v111 + v76;
                    v206 = v195;
                    v208 = v196;
                    v209 = v76;
                    v113 = v111 + v76;
                    while (v113 <= v78)
                    {
                      v210 = v113;
                      v114 = *(v5 + 4 * v113);
                      v115 = v209;
                      while (1)
                      {
                        v116 = v111 + v115;
                        v117 = *(v5 + 4 * v115);
                        v118 = v5;
                        if (!sub_298587B5C(v117 + v79, v114 + v79, v212, v211, v110, v213))
                        {
                          break;
                        }

                        v119 = v115;
                        *(v118 + 4 * v116) = v117;
                        v115 -= v111;
                        v5 = v118;
                        if (v119 < v112)
                        {
                          goto LABEL_107;
                        }
                      }

                      v119 = v116;
                      v5 = v118;
LABEL_107:
                      *(v5 + 4 * v119) = v114;
                      v78 = v207;
                      if (v210 >= v207)
                      {
                        break;
                      }

                      v120 = *(v5 + 4 * v210 + 4);
                      v121 = v208;
                      while (1)
                      {
                        v122 = v111 + v121;
                        v123 = *(v5 + 4 * v121);
                        v124 = v5;
                        if (!sub_298587B5C(v123 + v79, v120 + v79, v212, v211, v110, v213))
                        {
                          break;
                        }

                        v125 = v121;
                        *(v124 + 4 * v122) = v123;
                        v121 -= v111;
                        v5 = v124;
                        if (v125 < v112)
                        {
                          goto LABEL_113;
                        }
                      }

                      v125 = v122;
                      v5 = v124;
LABEL_113:
                      *(v5 + 4 * v125) = v120;
                      v78 = v207;
                      if (v210 + 2 > v207)
                      {
                        break;
                      }

                      v126 = *(v5 + 4 * (v210 + 2));
                      v127 = v206;
                      while (1)
                      {
                        v128 = v111 + v127;
                        v129 = *(v5 + 4 * v127);
                        v130 = v5;
                        if (!sub_298587B5C(v129 + v79, v126 + v79, v212, v211, v110, v213))
                        {
                          break;
                        }

                        v131 = v127;
                        *(v130 + 4 * v128) = v129;
                        v127 -= v111;
                        v5 = v130;
                        if (v131 < v112)
                        {
                          goto LABEL_119;
                        }
                      }

                      v131 = v128;
                      v5 = v130;
LABEL_119:
                      *(v5 + 4 * v131) = v126;
                      v113 = v210 + 3;
                      v9 = v213[0];
                      v208 += 3;
                      v209 += 3;
                      v206 += 3;
                      v78 = v207;
                      if ((v213[0] & 0x80000000) != 0)
                      {
                        v1 = v192;
                        LODWORD(v3) = v110;
                        v4 = v191;
                        goto LABEL_212;
                      }
                    }

                    v107 = v199;
                    v76 = v194;
                  }

                  while (v198 > 1);
                  v9 = v213[0];
                  v1 = v192;
                  v3 = v110;
                  v4 = v191;
                  v25 = v212;
                  v67 = v188;
                }
              }

              v132 = i;
              if (v9 < 0)
              {
                goto LABEL_212;
              }

LABEL_177:
              v74 = v132;
              if (v132 > 0)
              {
                continue;
              }

              break;
            }

            if ((v9 & 0x80000000) == 0)
            {
              v67 = v67 - v202 + v193 + 1;
              v202 = *v200;
              v8 = v211;
              LODWORD(v11) = v185;
              v69 = v190;
              goto LABEL_180;
            }

            goto LABEL_212;
          }
        }

LABEL_180:
        *v200 = v202 | 0x200000;
        v70 = v201;
      }

      ++v70;
    }

    while (v70 != 256);
    if (v214[v197])
    {
      sub_298587E08(1006);
    }

    v163 = 0;
    v164 = &v2[v197 + 1];
    do
    {
      v213[v163 + 257] = *(v164 - 1) & 0xFFDFFFFF;
      v213[++v163] = (*v164 & 0xFFDFFFFF) - 1;
      v164 += 256;
    }

    while (v163 != 256);
    v165 = *v190 & 0xFFFFFFFFFFDFFFFFLL;
    v166 = v213[v197 + 257];
    if (v165 < v166)
    {
      do
      {
        v167 = (v3 & ((*(v5 + 4 * v165) - 1) >> 31)) + *(v5 + 4 * v165) - 1;
        v168 = v25[v167];
        if (!v214[v168])
        {
          v169 = v213[v168 + 257];
          v213[v168 + 257] = v169 + 1;
          *(v5 + 4 * v169) = v167;
          v166 = v213[v197 + 257];
        }

        ++v165;
      }

      while (v165 < v166);
    }

    LODWORD(v170) = (v2[v186 + 256] & 0xFFDFFFFF) - 1;
    v171 = v213[v197 + 1];
    if (v170 > v171)
    {
      v170 = v170;
      do
      {
        v172 = (v3 & ((*(v5 + 4 * v170) - 1) >> 31)) + *(v5 + 4 * v170) - 1;
        v173 = v212[v172];
        if (!v214[v173])
        {
          v174 = v213[v173 + 1];
          v213[v173 + 1] = v174 - 1;
          *(v5 + 4 * v174) = v172;
          v171 = v213[v197 + 1];
        }

        --v170;
      }

      while (v170 > v171);
    }

    if (v166 - 1 != v171 && (v166 || v171 != v11))
    {
      sub_298587E08(1007);
    }

    for (j = 0; j != 0x10000; j += 256)
    {
      v2[v197 + j] |= 0x200000u;
    }

    v214[v197] = 1;
    if (v189 != 255)
    {
      v176 = *v190 & 0xFFFFFFFFFFDFFFFFLL;
      v177 = (v2[v186 + 256] & 0xFFDFFFFF) - v176;
      v178 = -1;
      do
      {
        ++v178;
      }

      while (v177 >> v178 > 65534);
      v179 = v177 - 1;
      v25 = v212;
      if (v177 >= 1)
      {
        v180 = v204 - 4 + 4 * v176;
        do
        {
          v181 = v177 - 1;
          v182 = *(v180 + 4 * v177);
          *&v8[2 * v182] = v181 >> v178;
          if (v182 <= 33)
          {
            *&v8[2 * v182 + 2 * v3] = v181 >> v178;
          }

          v177 = v181;
        }

        while ((v181 + 1) > 1);
      }

      if (v179 >> v178 >= 0x10000)
      {
        sub_298587E08(1002);
      }

      v66 = v189 + 1;
      continue;
    }

    break;
  }

  if (v4 > 3)
  {
    fprintf(*MEMORY[0x29EDCA610], "        %d pointers, %d sorted, %d scanned\n", v3, v67, v3 - v67);
    goto LABEL_213;
  }

LABEL_212:
  if (v4 < 3)
  {
    goto LABEL_214;
  }

LABEL_213:
  fprintf(*MEMORY[0x29EDCA610], "      %d work, %d block, ratio %5.2f\n", v187 - v9, v3, ((v187 - v9) / v3));
  v5 = v204;
LABEL_214:
  if (v9 < 0)
  {
    if (v4 >= 2)
    {
      fwrite("    too repetitive; using fallback sorting algorithm\n", 0x35uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    goto LABEL_2;
  }

LABEL_215:
  *(v1 + 48) = -1;
  v183 = *(v1 + 108);
  if (v183 < 1)
  {
LABEL_219:

    sub_298587E08(1003);
  }

  v184 = 0;
  while (*(v5 + 4 * v184))
  {
    if (v183 == ++v184)
    {
      goto LABEL_219;
    }
  }

  *(v1 + 48) = v184;
}

void sub_298586C14(uint64_t a1, unsigned __int8 *a2, void *a3, int a4, int a5)
{
  v115 = *MEMORY[0x29EDCA608];
  if (a5 >= 4)
  {
    fwrite("        bucket sorting ...\n", 0x1BuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v9 = a4;
  bzero(__src, 0x404uLL);
  if (a4 < 1)
  {
    v13 = 0;
  }

  else
  {
    v10 = a4;
    v11 = a2;
    do
    {
      v12 = *v11++;
      ++__src[v12];
      --v10;
    }

    while (v10);
    v13 = __src[0];
  }

  memcpy(__dst, __src, sizeof(__dst));
  for (i = 1; i != 257; ++i)
  {
    v13 += __src[i];
    __src[i] = v13;
  }

  if (a4 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = a2[v15];
      v17 = __src[v16] - 1;
      __src[v16] = v17;
      *(a1 + 4 * v17) = v15++;
    }

    while (a4 != v15);
  }

  if (a4 >= -63)
  {
    bzero(a3, 4 * (a4 / 32 + 1) + 4);
  }

  for (j = 0; j != 256; ++j)
  {
    *(a3 + (__src[j] >> 5)) |= 1 << __src[j];
  }

  for (k = 0; k != 64; k += 2)
  {
    *(a3 + ((a4 + k) >> 5)) |= 1 << (a4 + k);
    *(a3 + ((a4 + k + 1) >> 5)) &= ~(1 << (a4 + k + 1));
  }

  v20 = 1;
  v105 = a4;
  v108 = a4;
  do
  {
    while (1)
    {
      if (a5 >= 4)
      {
        fprintf(*MEMORY[0x29EDCA610], "        depth %6d has ", v20);
      }

      if (a4 >= 1)
      {
        v21 = 0;
        v22 = 0;
        do
        {
          if ((*(a3 + (v21 >> 5)) >> v21))
          {
            v22 = v21;
          }

          *&a2[4 * ((v9 & ((*(a1 + 4 * v21) - v20) >> 31)) + *(a1 + 4 * v21) - v20)] = v22;
          ++v21;
        }

        while (v9 != v21);
      }

      v106 = v20;
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = v23 - 32;
        v26 = v23 - 1;
        do
        {
          v27 = v25;
          v28 = v26;
          v29 = (1 << v23) & *(a3 + (v23 >> 5));
          v30 = (v23++ & 0x1F) == 0;
          if (v30)
          {
            break;
          }

          ++v25;
          ++v26;
        }

        while (v29);
        if (v29)
        {
          do
          {
            v31 = v28;
            v27 += 32;
            v28 += 32;
          }

          while (*(a3 + (v27 >> 5)) == -1);
          do
          {
            ++v31;
          }

          while (((*(a3 + (v31 >> 5)) >> v31) & 1) != 0);
        }

        else
        {
          v31 = v23 - 1;
        }

        if (v31 > a4)
        {
          break;
        }

        v32 = v31 - 1;
        v33 = v31 - 32;
        v34 = v31 - 1;
        v35 = v31;
        do
        {
          v36 = v33;
          v37 = v34;
          v38 = (1 << v35) & *(a3 + (v35 >> 5));
          v30 = (v35++ & 0x1F) == 0;
          if (v30)
          {
            break;
          }

          ++v33;
          ++v34;
        }

        while (!v38);
        if (v38)
        {
          v23 = v35 - 1;
        }

        else
        {
          do
          {
            v23 = v37;
            v36 += 32;
            v37 += 32;
          }

          while (!*(a3 + (v36 >> 5)));
          do
          {
            ++v23;
          }

          while (((*(a3 + (v23 >> 5)) >> v23) & 1) == 0);
        }

        if (v23 > a4)
        {
          break;
        }

        if (v23 > v31)
        {
          v110 = 0;
          v109 = v24 - v31 + v23 + 1;
          v114[0] = v31 - 1;
          v113[0] = v23 - 1;
          v39 = 1;
          do
          {
            v40 = v39;
            while (1)
            {
              v41 = v40;
              if (v40 >= 0x63)
              {
                sub_298587E08(1004);
              }

              --v40;
              v42 = v114[v41 - 1];
              v43 = v42;
              v44 = v113[v41 - 1];
              if (v44 - v42 > 9)
              {
                break;
              }

              if (v44 != v42)
              {
                v45 = v44 - 4;
                v46 = v44 - v42 < 4 || v45 < v42;
                if (!v46)
                {
                  v47 = v45;
                  v48 = v44;
                  do
                  {
                    v49 = *(a1 + 4 * v47);
                    if (v47 <= v44 - 4)
                    {
                      v51 = *&a2[4 * v49];
                      v50 = v47;
                      v52 = v48;
                      do
                      {
                        v53 = *(a1 + 4 * v52);
                        if (v51 <= *&a2[4 * v53])
                        {
                          break;
                        }

                        *(a1 + 4 * v50) = v53;
                        v52 += 4;
                        v50 += 4;
                      }

                      while (v52 <= v44);
                    }

                    else
                    {
                      v50 = v47;
                    }

                    *(a1 + 4 * v50) = v49;
                    --v48;
                    v46 = v47-- <= v42;
                  }

                  while (!v46);
                }

                if (v44 > v42)
                {
                  v54 = 0;
                  v55 = v44;
                  v56 = (a1 + 4 * v44);
                  do
                  {
                    v57 = v55--;
                    v58 = *(a1 + 4 * v55);
                    if (v57 <= v44)
                    {
                      v59 = *&a2[4 * v58];
                      v60 = v56;
                      v61 = v54;
                      while (1)
                      {
                        v62 = *v60;
                        if (v59 <= *&a2[4 * v62])
                        {
                          break;
                        }

                        *(v60 - 1) = v62;
                        --v61;
                        ++v60;
                        if (v61 == -1)
                        {
                          LODWORD(v57) = v44 + 1;
                          goto LABEL_72;
                        }
                      }

                      LODWORD(v57) = v44 - v61;
                    }

LABEL_72:
                    *(a1 - 4 + 4 * v57) = v58;
                    ++v54;
                    --v56;
                  }

                  while (v55 > v43);
                }
              }

              if (v41 <= 1)
              {
                goto LABEL_124;
              }
            }

            v63 = (7621 * v110 + 1) & 0x7FFF;
            v110 = v63;
            v64 = v42;
            if (v63 != 3 * ((21846 * v63) >> 16))
            {
              if ((v63 - 3 * ((21846 * v63) >> 16)) == 1)
              {
                v64 = (v44 + v42) >> 1;
              }

              else
              {
                v64 = v44;
              }
            }

            v39 = v40;
            v65 = *&a2[4 * *(a1 + 4 * v64)];
            LODWORD(v66) = v44;
            LODWORD(v67) = v42;
            v68 = v44;
            v69 = v42;
LABEL_80:
            if (v69 <= v68)
            {
              v67 = v67;
              do
              {
                if (v69 <= v68)
                {
                  v70 = v68;
                }

                else
                {
                  v70 = v69;
                }

                v71 = (a1 + 4 * v69);
                v72 = v70 - v69 + 1;
                while (1)
                {
                  v73 = *v71;
                  v74 = *&a2[4 * v73];
                  if (v74 == v65)
                  {
                    break;
                  }

                  if (v74 > v65)
                  {
                    goto LABEL_93;
                  }

                  ++v69;
                  ++v71;
                  if (!--v72)
                  {
                    v69 = v70 + 1;
                    goto LABEL_93;
                  }
                }

                *v71 = *(a1 + 4 * v67);
                *(a1 + 4 * v67++) = v73;
                v75 = v69 + 1;
                v46 = v68 <= v69++;
              }

              while (!v46);
              v69 = v75;
            }

LABEL_93:
            if (v69 <= v68)
            {
              v66 = v66;
              while (2)
              {
                v76 = v68;
                v77 = (a1 + 4 * v68);
                v78 = v68 + 1;
                while (1)
                {
                  v79 = *v77;
                  v80 = *&a2[4 * v79];
                  if (v80 == v65)
                  {
                    break;
                  }

                  if (v80 < v65)
                  {
                    v82 = *(a1 + 4 * v69);
                    *(a1 + 4 * v69) = v79;
                    *v77 = v82;
                    ++v69;
                    --v68;
                    goto LABEL_80;
                  }

                  --v68;
                  --v77;
                  if (--v78 <= v69)
                  {
                    if (v76 >= v69)
                    {
                      v83 = v69;
                    }

                    else
                    {
                      v83 = v76;
                    }

                    v68 = v83 - 1;
                    goto LABEL_107;
                  }
                }

                *v77 = *(a1 + 4 * v66);
                *(a1 + 4 * v66--) = v79;
                v81 = v68 - 1;
                v46 = v69 < v68--;
                if (v46)
                {
                  continue;
                }

                break;
              }

              v68 = v81;
            }

LABEL_107:
            if (v66 >= v67)
            {
              v84 = v69 - v67;
              if (v67 - v42 < v69 - v67)
              {
                v84 = v67 - v42;
              }

              if (v84 >= 1)
              {
                v85 = (a1 + 4 * v42);
                v86 = (a1 + 4 * (v69 - v84));
                v87 = v84 + 1;
                do
                {
                  v88 = *v85;
                  *v85++ = *v86;
                  *v86++ = v88;
                  --v87;
                }

                while (v87 > 1);
              }

              v89 = v66 - v68;
              if (v44 - v66 >= v66 - v68)
              {
                v90 = v66 - v68;
              }

              else
              {
                v90 = v44 - v66;
              }

              if (v90 >= 1)
              {
                v91 = (a1 + 4 * v69);
                v92 = (a1 + 4 + 4 * (v44 - v90));
                v93 = v90 + 1;
                do
                {
                  v94 = *v91;
                  *v91++ = *v92;
                  *v92++ = v94;
                  --v93;
                }

                while (v93 > 1);
              }

              v95 = v44 - v89 + 1;
              if (v69 + ~v67 <= v44 - v95)
              {
                v114[v40] = v95;
                v95 = v42;
                v44 = v42 + ~v67 + v69;
              }

              else
              {
                v113[v40] = v42 + ~v67 + v69;
              }

              v114[v41] = v95;
              v113[v41] = v44;
              v39 = v41 + 1;
            }
          }

          while (v39 > 0);
LABEL_124:
          v96 = (a1 + 4 * v32);
          v97 = -1;
          a4 = v108;
          v24 = v109;
          do
          {
            v98 = *v96++;
            v99 = *&a2[4 * v98];
            if (v97 != v99)
            {
              *(a3 + (v32 >> 5)) |= 1 << v32;
              v97 = v99;
            }

            ++v32;
          }

          while (v23 != v32);
        }
      }

      if (a5 >= 4)
      {
        break;
      }

      v9 = v105;
      v20 = 2 * v106;
      if (2 * v106 > a4 || !v24)
      {
        goto LABEL_137;
      }
    }

    v100 = v24;
    fprintf(*MEMORY[0x29EDCA610], "%6d unresolved strings\n", v24);
    v101 = v100;
    v9 = v105;
    v20 = 2 * v106;
  }

  while (2 * v106 <= a4 && v101);
  fwrite("        reconstructing block ...\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
LABEL_137:
  if (a4 >= 1)
  {
    v102 = 0;
    LODWORD(v103) = 0;
    do
    {
      v103 = v103;
      do
      {
        v104 = __dst[v103++];
      }

      while (!v104);
      __dst[--v103] = v104 - 1;
      a2[*(a1 + 4 * v102++)] = v103;
    }

    while (v102 != v9);
    if (v103 >= 256)
    {

      sub_298587E08(1005);
    }
  }
}

uint64_t sub_2985874D8(uint64_t result, unsigned int a2)
{
  v2 = *(result + 644);
  if (v2 <= 7)
  {
    v3 = *(result + 640);
    v5 = v2 + 8;
  }

  else
  {
    v3 = *(result + 640);
    v4 = *(result + 116);
    do
    {
      *(*(result + 80) + v4) = HIBYTE(v3);
      v4 = *(result + 116) + 1;
      *(result + 116) = v4;
      v3 = *(result + 640) << 8;
      *(result + 640) = v3;
      v5 = *(result + 644);
      *(result + 644) = v5 - 8;
    }

    while (v5 > 15);
  }

  v6 = (HIBYTE(a2) << -v5) | v3;
  *(result + 640) = v6;
  *(result + 644) = v5;
  if (v5 >= 8)
  {
    v7 = *(result + 116);
    do
    {
      *(*(result + 80) + v7) = HIBYTE(v6);
      v7 = *(result + 116) + 1;
      *(result + 116) = v7;
      v6 = *(result + 640) << 8;
      *(result + 640) = v6;
      v8 = *(result + 644);
      v5 = v8 - 8;
      *(result + 644) = v8 - 8;
    }

    while (v8 > 15);
  }

  v9 = v5 + 8;
  v10 = (BYTE2(a2) << (24 - v5)) | v6;
  *(result + 640) = v10;
  *(result + 644) = v5 + 8;
  if ((v5 & 0x80000000) == 0)
  {
    v11 = *(result + 116);
    do
    {
      *(*(result + 80) + v11) = HIBYTE(v10);
      v11 = *(result + 116) + 1;
      *(result + 116) = v11;
      v10 = *(result + 640) << 8;
      *(result + 640) = v10;
      v12 = *(result + 644);
      v9 = v12 - 8;
      *(result + 644) = v12 - 8;
    }

    while (v12 > 15);
  }

  v13 = v9 + 8;
  v14 = (BYTE1(a2) << (24 - v9)) | v10;
  *(result + 640) = v14;
  *(result + 644) = v9 + 8;
  if ((v9 & 0x80000000) == 0)
  {
    v15 = *(result + 116);
    do
    {
      *(*(result + 80) + v15) = HIBYTE(v14);
      v15 = *(result + 116) + 1;
      *(result + 116) = v15;
      v14 = *(result + 640) << 8;
      *(result + 640) = v14;
      v16 = *(result + 644);
      v13 = v16 - 8;
      *(result + 644) = v16 - 8;
    }

    while (v16 > 15);
  }

  *(result + 640) = (a2 << (24 - v13)) | v14;
  *(result + 644) = v13 + 8;
  return result;
}

uint64_t sub_29858766C()
{
  result = MEMORY[0x2A1C7C4A8]();
  v4 = v3;
  v5 = v2;
  v60 = *MEMORY[0x29EDCA608];
  v6 = v2;
  if (v2 >= 1)
  {
    v7 = &v57[1];
    v8 = v2;
    do
    {
      v9 = *v1++;
      v10 = v9 << 8;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 256;
      }

      *v7++ = v11;
      --v8;
    }

    while (v8);
  }

  v58 = 0;
  v57[0] = 0;
  v56[0] = -2;
  if (v2 >= 1)
  {
    v12 = result - 1;
    v54 = v2;
    __len = 4 * v2;
    v13 = (v2 + 1);
    while (1)
    {
      result = memset(&v56[1], 255, __len);
      v14 = 0;
      v15 = 1;
      do
      {
        ++v14;
        *(&v58 + v14) = v15;
        v16 = v57[v15];
        v17 = v14;
        v18 = v14 >> 1;
        v19 = *(&v58 + v18);
        if (v16 >= v57[v19])
        {
          v20 = v14;
        }

        else
        {
          do
          {
            v20 = v18;
            *(&v58 + v17) = v19;
            v18 >>= 1;
            v19 = *(&v58 + v18);
            v17 = v20;
          }

          while (v16 < v57[v19]);
        }

        *(&v58 + v20) = v15++;
      }

      while (v14 != v6);
      if (v5 >= 0x104)
      {
        sub_298587E08(2001);
      }

      if (v5 >= 2)
      {
        break;
      }

LABEL_53:
      v49 = 0;
      v50 = 1;
      do
      {
        v51 = v50;
        v52 = -1;
        do
        {
          LODWORD(v51) = v56[v51];
          ++v52;
        }

        while ((v51 & 0x80000000) == 0);
        *(v12 + v50) = v52;
        if (v52 > v4)
        {
          v49 = 1;
        }

        ++v50;
      }

      while (v50 != v13);
      if (v49)
      {
        v53 = 1;
        do
        {
          v57[v53] = ((((v57[v53] >> 8) + (v57[v53] >> 31)) << 7) & 0xFFFFFF00) + 256;
          ++v53;
        }

        while (v13 != v53);
        v58 = 0;
        v57[0] = 0;
        v56[0] = -2;
        if (v5 >= 1)
        {
          continue;
        }
      }

      return result;
    }

    v21 = v54;
    v22 = v6;
    while (1)
    {
      v23 = v21;
      v24 = v59;
      v25 = *(&v58 + v22);
      v59 = v25;
      v26 = v22 - 1;
      v27 = v22 - 2;
      if (v22 <= 2)
      {
        v59 = v25;
        v34 = *(&v58 + v26);
        v59 = v34;
      }

      else
      {
        v28 = v57[v25];
        v29 = 1;
        v30 = 2;
        while (1)
        {
          v31 = v30;
          if (v26 <= v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = v30 | 1;
            if (v57[*(&v58 + (v30 | 1))] >= v57[*(&v58 + v30)])
            {
              v32 = v30;
            }

            v31 = v32;
          }

          v33 = *(&v58 + v31);
          result = v57[v33];
          if (v28 < result)
          {
            break;
          }

          *(&v58 + v29) = v33;
          v30 = 2 * v32;
          v29 = v32;
          if (v22 <= 2 * v32)
          {
            goto LABEL_31;
          }
        }

        v32 = v29;
LABEL_31:
        *(&v58 + v32) = v25;
        v25 = v59;
        v34 = *(&v58 + v26);
        v59 = v34;
        if (v22 >= 4)
        {
          v36 = v57[v34];
          v37 = 1;
          LODWORD(result) = 2;
          while (1)
          {
            v38 = result;
            if (v27 <= result)
            {
              v39 = result;
            }

            else
            {
              v39 = result | 1;
              if (v57[*(&v58 + (result | 1))] >= v57[*(&v58 + result)])
              {
                v39 = result;
              }

              v38 = v39;
            }

            result = *(&v58 + v38);
            if (v36 < v57[result])
            {
              break;
            }

            *(&v58 + v37) = result;
            result = (2 * v39);
            v37 = v39;
            if (v27 < result)
            {
              goto LABEL_43;
            }
          }

          v39 = v37;
LABEL_43:
          v35 = v39;
          goto LABEL_44;
        }
      }

      v35 = 1;
LABEL_44:
      *(&v58 + v35) = v34;
      v21 = v23 + 1;
      v56[v25] = v23 + 1;
      v56[v24] = v23 + 1;
      v42 = v57[v24];
      v40 = v57[v25];
      v41 = (v40 & 0xFFFFFF00) + (v42 & 0xFFFFFF00);
      v42 = v42;
      if (v42 <= v40)
      {
        v42 = v40;
      }

      v43 = (v42 + 1) | v41;
      v57[v21] = v43;
      v56[v21] = -1;
      *(&v58 + v26) = v21;
      v44 = v26;
      v45 = v26 >> 1;
      v46 = *(&v58 + v45);
      if (v43 >= v57[v46])
      {
        v47 = v26;
      }

      else
      {
        do
        {
          v47 = v45;
          *(&v58 + v44) = v46;
          v45 >>= 1;
          v46 = *(&v58 + v45);
          v44 = v47;
        }

        while (v43 < v57[v46]);
      }

      *(&v58 + v47) = v21;
      if (v22-- <= 2)
      {
        if (v23 >= 515)
        {
          sub_298587E08(2002);
        }

        goto LABEL_53;
      }
    }
  }

  return result;
}

_DWORD *sub_298587A60(_DWORD *result, unsigned __int8 *a2, int a3, int a4, unsigned int a5)
{
  if (a3 <= a4)
  {
    v5 = 0;
    do
    {
      if (a5 >= 1)
      {
        v6 = a5;
        v7 = a2;
        v8 = result;
        do
        {
          v9 = *v7++;
          if (a3 == v9)
          {
            *v8 = v5++;
          }

          ++v8;
          --v6;
        }

        while (v6);
      }

      v5 *= 2;
    }

    while (a3++ != a4);
  }

  return result;
}

void sub_298587ABC(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

int BZ2_bzCompressEnd(bz_stream *strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state || *state != strm)
  {
    return -2;
  }

  if (state[3])
  {
    (strm->bzfree)(strm->opaque);
  }

  if (state[4])
  {
    (strm->bzfree)(strm->opaque);
  }

  if (state[5])
  {
    (strm->bzfree)(strm->opaque);
  }

  (strm->bzfree)(strm->opaque, strm->state);
  result = 0;
  strm->state = 0;
  return result;
}

BOOL sub_298587B5C(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, _DWORD *a6)
{
  v6 = *(a3 + a1);
  v7 = *(a3 + a2);
  v8 = v6 > v7;
  if (v6 == v7)
  {
    v9 = *(a3 + a1 + 1);
    v10 = *(a3 + a2 + 1);
    v8 = v9 > v10;
    if (v9 == v10)
    {
      v11 = *(a3 + a1 + 2);
      v12 = *(a3 + a2 + 2);
      v8 = v11 > v12;
      if (v11 == v12)
      {
        v13 = *(a3 + a1 + 3);
        v14 = *(a3 + a2 + 3);
        v8 = v13 > v14;
        if (v13 == v14)
        {
          v15 = *(a3 + a1 + 4);
          v16 = *(a3 + a2 + 4);
          v8 = v15 > v16;
          if (v15 == v16)
          {
            v17 = *(a3 + a1 + 5);
            v18 = *(a3 + a2 + 5);
            v8 = v17 > v18;
            if (v17 == v18)
            {
              v19 = *(a3 + a1 + 6);
              v20 = *(a3 + a2 + 6);
              v8 = v19 > v20;
              if (v19 == v20)
              {
                v21 = *(a3 + a1 + 7);
                v22 = *(a3 + a2 + 7);
                v8 = v21 > v22;
                if (v21 == v22)
                {
                  v23 = *(a3 + a1 + 8);
                  v24 = *(a3 + a2 + 8);
                  v8 = v23 > v24;
                  if (v23 == v24)
                  {
                    v25 = *(a3 + a1 + 9);
                    v26 = *(a3 + a2 + 9);
                    v8 = v25 > v26;
                    if (v25 == v26)
                    {
                      v27 = *(a3 + a1 + 10);
                      v28 = *(a3 + a2 + 10);
                      v8 = v27 > v28;
                      if (v27 == v28)
                      {
                        v29 = *(a3 + a1 + 11);
                        v30 = *(a3 + a2 + 11);
                        v8 = v29 > v30;
                        if (v29 == v30)
                        {
                          v31 = a1 + 12;
                          v32 = a2 + 12;
                          v33 = a5 + 16;
                          while (1)
                          {
                            v34 = *(a3 + v31);
                            v35 = *(a3 + v32);
                            v8 = v34 > v35;
                            if (v34 != v35)
                            {
                              break;
                            }

                            v36 = *(a4 + 2 * v31);
                            v37 = *(a4 + 2 * v32);
                            v8 = v36 > v37;
                            if (v36 != v37)
                            {
                              break;
                            }

                            v38 = *(a3 + v31 + 1);
                            v39 = *(a3 + v32 + 1);
                            v8 = v38 > v39;
                            if (v38 != v39)
                            {
                              break;
                            }

                            v40 = *(a4 + 2 * (v31 + 1));
                            v41 = *(a4 + 2 * (v32 + 1));
                            v8 = v40 > v41;
                            if (v40 != v41)
                            {
                              break;
                            }

                            v42 = *(a3 + v31 + 2);
                            v43 = *(a3 + v32 + 2);
                            v8 = v42 > v43;
                            if (v42 != v43)
                            {
                              break;
                            }

                            v44 = *(a4 + 2 * (v31 + 2));
                            v45 = *(a4 + 2 * (v32 + 2));
                            v8 = v44 > v45;
                            if (v44 != v45)
                            {
                              break;
                            }

                            v46 = *(a3 + v31 + 3);
                            v47 = *(a3 + v32 + 3);
                            v8 = v46 > v47;
                            if (v46 != v47)
                            {
                              break;
                            }

                            v48 = *(a4 + 2 * (v31 + 3));
                            v49 = *(a4 + 2 * (v32 + 3));
                            v8 = v48 > v49;
                            if (v48 != v49)
                            {
                              break;
                            }

                            v50 = *(a3 + v31 + 4);
                            v51 = *(a3 + v32 + 4);
                            v8 = v50 > v51;
                            if (v50 != v51)
                            {
                              break;
                            }

                            v52 = *(a4 + 2 * (v31 + 4));
                            v53 = *(a4 + 2 * (v32 + 4));
                            v8 = v52 > v53;
                            if (v52 != v53)
                            {
                              break;
                            }

                            v54 = *(a3 + v31 + 5);
                            v55 = *(a3 + v32 + 5);
                            v8 = v54 > v55;
                            if (v54 != v55)
                            {
                              break;
                            }

                            v56 = *(a4 + 2 * (v31 + 5));
                            v57 = *(a4 + 2 * (v32 + 5));
                            v8 = v56 > v57;
                            if (v56 != v57)
                            {
                              break;
                            }

                            v58 = *(a3 + v31 + 6);
                            v59 = *(a3 + v32 + 6);
                            v8 = v58 > v59;
                            if (v58 != v59)
                            {
                              break;
                            }

                            v60 = *(a4 + 2 * (v31 + 6));
                            v61 = *(a4 + 2 * (v32 + 6));
                            v8 = v60 > v61;
                            if (v60 != v61)
                            {
                              break;
                            }

                            v62 = *(a3 + v31 + 7);
                            v63 = *(a3 + v32 + 7);
                            v8 = v62 > v63;
                            if (v62 != v63)
                            {
                              break;
                            }

                            v64 = *(a4 + 2 * (v31 + 7));
                            v65 = *(a4 + 2 * (v32 + 7));
                            v8 = v64 > v65;
                            if (v64 != v65)
                            {
                              break;
                            }

                            result = 0;
                            v67 = v31 + 8;
                            v68 = v32 + 8;
                            if (v67 >= a5)
                            {
                              v69 = a5;
                            }

                            else
                            {
                              v69 = 0;
                            }

                            v31 = v67 - v69;
                            if (v68 >= a5)
                            {
                              v70 = a5;
                            }

                            else
                            {
                              v70 = 0;
                            }

                            v32 = v68 - v70;
                            --*a6;
                            v33 -= 8;
                            if (v33 <= 7)
                            {
                              return result;
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
      }
    }
  }

  return v8;
}

void sub_298587E08(int a1)
{
  v2 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "\n\nbzip2/libbzip2: internal error number %d.\nThis is a bug in bzip2/libbzip2, %s.\nPlease report it to: bzip2-devel@sourceware.org.  If this happened\nwhen you were using some program which uses libbzip2 as a\ncomponent, you should also report this bug to the author(s)\nof that program.  Please make an effort to report this bug;\ntimely and accurate bug reports eventually lead to higher\nquality software.  Thanks.\n\n", a1, "1.0.8, 13-Jul-2019");
  if (a1 == 1007)
  {
    fwrite("\n*** A special note about internal error number 1007 ***\n\nExperience suggests that a common cause of i.e. 1007\nis unreliable memory or other hardware.  The 1007 assertion\njust happens to cross-check the results of huge numbers of\nmemory reads/writes, and so acts (unintendedly) as a stress\ntest of your memory system.\n\nI suggest the following: try compressing the file again,\npossibly monitoring progress in detail with the -vv flag.\n\n* If the error cannot be reproduced, and/or happens at different\n  points in compression, you may have a flaky memory system.\n  Try a memory-test program.  I have used Memtest86\n  (www.memtest86.com).  At the time of writing it is free (GPLd).\n  Memtest86 tests memory much more thorougly than your BIOSs\n  power-on test, and may find failures that the BIOS doesn't.\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n", 0x420uLL, 1uLL, *v2);
  }

  exit(3);
}

float sub_298587F10(__int32 a1, int8x16_t *a2, int a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v8 = *a2;
  v7 = a2 + 1;
  v9 = veorq_s8(a4, a4);
  v10 = vrev64q_s8(v8);
  v9.i32[3] = a1;
  v11 = veorq_s8(v9, vextq_s8(v10, v10, 8uLL));
  v12 = __OFSUB__(a3, 16);
  v13 = a3 - 16;
  if (!((v13 < 0) ^ v12 | (v13 == 0)))
  {
    if (v13 >= 48)
    {
      v14 = *v7;
      v15 = v7[1];
      v16 = v7[2];
      v7 += 3;
      v17 = vrev64q_s8(v14);
      v18 = vrev64q_s8(v15);
      v19 = vrev64q_s8(v16);
      v20 = vextq_s8(v17, v17, 8uLL);
      a6 = vextq_s8(v18, v18, 8uLL);
      a7 = vextq_s8(v19, v19, 8uLL);
      v12 = __OFSUB__(v13, 112);
      v21 = v13 - 112;
      if (v21 < 0 == v12)
      {
        do
        {
          v23 = *v7;
          v24 = v7[1];
          v22 = v7 + 2;
          v25 = vrev64q_s8(v23);
          v26 = vrev64q_s8(v24);
          v11 = veorq_s8(vmull_high_p64(v11, qword_29858CEE0), veorq_s8(vextq_s8(v25, v25, 8uLL), vmull_p64(v11.u64[0], 0xE6228B11uLL)));
          v20 = veorq_s8(vmull_high_p64(v20, qword_29858CEE0), veorq_s8(vextq_s8(v26, v26, 8uLL), vmull_p64(v20.u64[0], 0xE6228B11uLL)));
          v27 = *v22;
          v28 = v22[1];
          v7 = v22 + 2;
          v29 = vrev64q_s8(v27);
          v30 = vrev64q_s8(v28);
          a6 = veorq_s8(vmull_high_p64(a6, qword_29858CEE0), veorq_s8(vextq_s8(v29, v29, 8uLL), vmull_p64(a6.u64[0], 0xE6228B11uLL)));
          a7 = veorq_s8(vmull_high_p64(a7, qword_29858CEE0), veorq_s8(vextq_s8(v30, v30, 8uLL), vmull_p64(a7.u64[0], 0xE6228B11uLL)));
          v12 = __OFSUB__(v21, 64);
          v21 -= 64;
        }

        while (!((v21 < 0) ^ v12 | (v21 == 0)));
      }

      v31 = veorq_s8(vmull_high_p64(v11, qword_29858CEF0), veorq_s8(vmull_p64(v11.u64[0], 0xE8A45605uLL), v20));
      v32 = veorq_s8(vmull_high_p64(v31, qword_29858CEF0), veorq_s8(vmull_p64(v31.u64[0], 0xE8A45605uLL), a6));
      v11 = veorq_s8(vmull_high_p64(v32, qword_29858CEF0), veorq_s8(vmull_p64(v32.u64[0], 0xE8A45605uLL), a7));
      v13 = v21 + 64;
    }

    v12 = __OFSUB__(v13, 16);
    for (i = v13 - 16; i < 0 == v12; i -= 16)
    {
      v34 = *v7++;
      v35 = vrev64q_s8(v34);
      v11 = veorq_s8(vmull_high_p64(v11, qword_29858CEF0), veorq_s8(vmull_p64(v11.u64[0], 0xE8A45605uLL), vextq_s8(v35, v35, 8uLL)));
      v12 = __OFSUB__(i, 16);
    }
  }

  v36 = veorq_s8(a6, a6);
  v37 = veorq_s8(a7, a7);
  *(v36.i64 + 4) = v11.i64[0];
  v38 = veorq_s8(v36, vmull_high_p64(v11, qword_29858CF00));
  v37.i32[0] = v38.i32[2];
  v39 = veorq_s8(v38, vmull_p64(v37.u64[0], 0x490D678DuLL));
  v37.i32[0] = v39.i32[1];
  v37.i32[2] = vmull_p64(*&v37, 0x104D101DFuLL).i32[1];
  LODWORD(result) = veorq_s8(v39, vmull_high_p64(v37, qword_29858CF10)).u32[0];
  return result;
}

int BZ2_bzDecompressInit(bz_stream *strm, int verbosity, int small)
{
  result = -2;
  if (verbosity <= 4)
  {
    if (strm)
    {
      v5 = small;
      if (small <= 1)
      {
        bzalloc = strm->bzalloc;
        if (!bzalloc)
        {
          bzalloc = sub_298581920;
          strm->bzalloc = sub_298581920;
        }

        if (!strm->bzfree)
        {
          strm->bzfree = sub_298587ABC;
        }

        v8 = bzalloc(strm->opaque, 64144, 1);
        if (v8)
        {
          v9 = v8;
          result = 0;
          *(v9 + 8) = 10;
          *v9 = strm;
          strm->state = v9;
          *(v9 + 32) = 0;
          *(v9 + 3188) = 0;
          *&strm->total_in_lo32 = 0;
          *&strm->total_out_lo32 = 0;
          *(v9 + 44) = v5;
          *(v9 + 3152) = 0;
          *(v9 + 3168) = 0;
          *(v9 + 3160) = 0;
          *(v9 + 48) = 0;
          *(v9 + 52) = verbosity;
        }

        else
        {
          return -3;
        }
      }
    }
  }

  return result;
}

uint64_t sub_29858815C(int a1, uint64_t a2)
{
  LODWORD(result) = 0;
  v4 = 256;
  do
  {
    v5 = (v4 + result) >> 1;
    v6 = *(a2 + 4 * v5);
    if (v6 <= a1)
    {
      result = v5;
    }

    else
    {
      result = result;
    }

    if (v6 > a1)
    {
      v4 = v5;
    }
  }

  while (v4 - result != 1);
  return result;
}

int BZ2_bzDecompress(bz_stream *strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state || *state != strm)
  {
    return -2;
  }

  v7 = (state + 274);
  v8 = state[2];
  v9 = dword_2A13BAD10;
  v10 = MEMORY[0x29EDCA610];
  while (1)
  {
    if (v8 == 1)
    {
      return -1;
    }

    if (v8 == 2)
    {
      break;
    }

    if (v8 >= 10)
    {
LABEL_235:
      result = sub_298589DD4(state);
      if (result == 4)
      {
        if (state[13] >= 3)
        {
          fprintf(*v10, "\n    combined CRCs: stored = 0x%08x, computed = 0x%08x", state[795], state[797]);
        }

        if (state[797] == state[795])
        {
          return 4;
        }

        else
        {
          return -4;
        }
      }

      v8 = 2;
      if (state[2] != 2)
      {
        return result;
      }
    }
  }

  v11 = *state;
  v12 = *(*state + 24);
  if (*(state + 44))
  {
    v13 = *(v11 + 8);
    if (*(state + 20))
    {
      if (v13)
      {
        v14 = state[4];
        while (1)
        {
          if (!v14)
          {
            v15 = state[273];
            v16 = state[16020];
            if (v15 == v16 + 1)
            {
              goto LABEL_188;
            }

            if (v15 > v16 + 1)
            {
              goto LABEL_189;
            }

            state[4] = 1;
            v18 = state[15];
            v17 = state[16];
            *(state + 12) = v17;
            v19 = 100000 * state[10];
            if (v18 >= v19)
            {
              goto LABEL_189;
            }

            v20 = 0;
            v21 = 256;
            do
            {
              if (*&v7[4 * ((v21 + v20) >> 1)] > v18)
              {
                v21 = (v21 + v20) >> 1;
              }

              else
              {
                v20 = (v21 + v20) >> 1;
              }
            }

            while (v21 - v20 != 1);
            v22 = *(state + 395);
            v23 = *(v22 + 2 * v18);
            v24 = *(state + 396);
            v25 = v23 & 0xFFF0FFFF | (((*(v24 + (v18 >> 1)) >> (4 * (v18 & 1))) & 0xF) << 16);
            state[15] = v25;
            v26 = state[6];
            if (!v26)
            {
              v27 = state[7];
              v26 = v9[v27];
              if (v27 == 511)
              {
                v28 = 0;
              }

              else
              {
                v28 = v27 + 1;
              }

              state[7] = v28;
            }

            v29 = v26 - 1;
            state[6] = v26 - 1;
            state[273] = v15 + 1;
            if (v15 != v16)
            {
              v30 = v20 ^ (v29 == 1);
              if (v30 == v17)
              {
                state[4] = 2;
                if (v25 >= v19)
                {
                  goto LABEL_189;
                }

                v31 = 0;
                v32 = 256;
                do
                {
                  if (*&v7[4 * ((v32 + v31) >> 1)] > v25)
                  {
                    v32 = (v32 + v31) >> 1;
                  }

                  else
                  {
                    v31 = (v32 + v31) >> 1;
                  }
                }

                while (v32 - v31 != 1);
                v33 = *(v22 + 2 * v25);
                v34 = v33 & 0xFFF0FFFF | (((*(v24 + (v25 >> 1)) >> (4 * (v23 & 1))) & 0xF) << 16);
                state[15] = v34;
                if (v26 == 1)
                {
                  v35 = state[7];
                  v29 = v9[v35];
                  if (v35 == 511)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v35 + 1;
                  }

                  state[7] = v36;
                }

                v37 = v29 - 1;
                state[6] = v29 - 1;
                state[273] = v15 + 2;
                if (v15 + 1 != v16)
                {
                  v38 = v31 ^ (v37 == 1);
                  if (v38 == v17)
                  {
                    state[4] = 3;
                    if (v34 >= v19)
                    {
                      goto LABEL_189;
                    }

                    v39 = 0;
                    v40 = 256;
                    do
                    {
                      if (*&v7[4 * ((v40 + v39) >> 1)] > v34)
                      {
                        v40 = (v40 + v39) >> 1;
                      }

                      else
                      {
                        v39 = (v40 + v39) >> 1;
                      }
                    }

                    while (v40 - v39 != 1);
                    v41 = *(v22 + 2 * v34);
                    v42 = v41 | (((*(v24 + (v34 >> 1)) >> (4 * (v33 & 1))) & 0xFu) << 16);
                    state[15] = v42;
                    if (!v37)
                    {
                      v43 = state[7];
                      v37 = v9[v43];
                      if (v43 == 511)
                      {
                        v44 = 0;
                      }

                      else
                      {
                        v44 = v43 + 1;
                      }

                      state[7] = v44;
                    }

                    v45 = v37 - 1;
                    state[6] = v37 - 1;
                    state[273] = v15 + 3;
                    if (v15 + 2 != v16)
                    {
                      v46 = v39 ^ (v45 == 1);
                      if (v46 == v17)
                      {
                        if (v42 >= v19)
                        {
                          goto LABEL_189;
                        }

                        v47 = 0;
                        v48 = 256;
                        do
                        {
                          if (*&v7[4 * ((v48 + v47) >> 1)] > v42)
                          {
                            v48 = (v48 + v47) >> 1;
                          }

                          else
                          {
                            v47 = (v48 + v47) >> 1;
                          }
                        }

                        while (v48 - v47 != 1);
                        v49 = *(v22 + 2 * v42);
                        v50 = v49 | (((*(v24 + (v42 >> 1)) >> (4 * (v41 & 1))) & 0xFu) << 16);
                        state[15] = v50;
                        if (!v45)
                        {
                          v51 = state[7];
                          v45 = v9[v51];
                          if (v51 == 511)
                          {
                            v52 = 0;
                          }

                          else
                          {
                            v52 = v51 + 1;
                          }

                          state[7] = v52;
                        }

                        v53 = v45 - 1;
                        state[6] = v45 - 1;
                        state[273] = v15 + 4;
                        state[4] = (v47 ^ (v45 == 2)) + 4;
                        if (v50 >= v19)
                        {
                          goto LABEL_189;
                        }

                        v54 = 0;
                        v55 = 256;
                        do
                        {
                          if (*&v7[4 * ((v55 + v54) >> 1)] > v50)
                          {
                            v55 = (v55 + v54) >> 1;
                          }

                          else
                          {
                            v54 = (v55 + v54) >> 1;
                          }
                        }

                        while (v55 - v54 != 1);
                        state[16] = v54;
                        state[15] = *(v22 + 2 * v50) | (((*(v24 + (v50 >> 1)) >> (4 * (v49 & 1))) & 0xF) << 16);
                        if (v45 == 1)
                        {
                          v56 = state[7];
                          v53 = v9[v56];
                          if (v56 == 511)
                          {
                            v57 = 0;
                          }

                          else
                          {
                            v57 = v56 + 1;
                          }

                          state[7] = v57;
                        }

                        state[6] = v53 - 1;
                        state[16] = v54 ^ (v53 == 2);
                        state[273] = v15 + 5;
                      }

                      else
                      {
                        state[16] = v46;
                      }
                    }
                  }

                  else
                  {
                    state[16] = v38;
                  }
                }
              }

              else
              {
                state[16] = v30;
              }
            }

            if (!*(v11 + 8))
            {
              goto LABEL_188;
            }
          }

          *v11[3] = *(state + 12);
          v14 = state[4] - 1;
          state[4] = v14;
          v11 = *state;
          v11[3] = *(*state + 24) + 1;
          *v1.i8 = vadd_s32(v11[4], 0x1FFFFFFFFLL);
          v11[4] = v1.i64[0];
          if (!v1.i32[1])
          {
            ++*(v11 + 10);
          }

          if (!v1.i32[0])
          {
            goto LABEL_188;
          }
        }
      }
    }

    else if (v13)
    {
      v93 = state[4];
      while (1)
      {
        if (!v93)
        {
          v94 = state[273];
          v95 = state[16020];
          if (v94 == v95 + 1)
          {
            goto LABEL_188;
          }

          if (v94 > v95 + 1)
          {
            goto LABEL_189;
          }

          state[4] = 1;
          v97 = state[15];
          v96 = state[16];
          *(state + 12) = v96;
          v98 = 100000 * state[10];
          if (v97 >= v98)
          {
            goto LABEL_189;
          }

          v99 = 0;
          v100 = 256;
          do
          {
            if (*&v7[4 * ((v100 + v99) >> 1)] > v97)
            {
              v100 = (v100 + v99) >> 1;
            }

            else
            {
              v99 = (v100 + v99) >> 1;
            }
          }

          while (v100 - v99 != 1);
          v101 = *(state + 395);
          v102 = *(v101 + 2 * v97);
          v103 = *(state + 396);
          v104 = v102 & 0xFFF0FFFF | (((*(v103 + (v97 >> 1)) >> (4 * (v97 & 1))) & 0xF) << 16);
          state[15] = v104;
          state[273] = v94 + 1;
          if (v94 != v95)
          {
            if (v99 == v96)
            {
              state[4] = 2;
              if (v104 >= v98)
              {
                goto LABEL_189;
              }

              v105 = 0;
              v106 = 256;
              do
              {
                if (*&v7[4 * ((v106 + v105) >> 1)] > v104)
                {
                  v106 = (v106 + v105) >> 1;
                }

                else
                {
                  v105 = (v106 + v105) >> 1;
                }
              }

              while (v106 - v105 != 1);
              v107 = *(v101 + 2 * v104);
              v108 = v107 | (((*(v103 + (v104 >> 1)) >> (4 * (v102 & 1))) & 0xFu) << 16);
              state[15] = v108;
              state[273] = v94 + 2;
              if (v94 + 1 != v95)
              {
                if (v105 == v96)
                {
                  state[4] = 3;
                  if (v108 >= v98)
                  {
                    goto LABEL_189;
                  }

                  v109 = 0;
                  v110 = 256;
                  do
                  {
                    if (*&v7[4 * ((v110 + v109) >> 1)] > v108)
                    {
                      v110 = (v110 + v109) >> 1;
                    }

                    else
                    {
                      v109 = (v110 + v109) >> 1;
                    }
                  }

                  while (v110 - v109 != 1);
                  v111 = *(v101 + 2 * v108);
                  v112 = v111 & 0xFFF0FFFF | (((*(v103 + (v108 >> 1)) >> (4 * (v107 & 1))) & 0xF) << 16);
                  state[15] = v112;
                  state[273] = v94 + 3;
                  if (v94 + 2 != v95)
                  {
                    if (v109 == v96)
                    {
                      if (v112 >= v98)
                      {
                        goto LABEL_189;
                      }

                      v113 = 0;
                      v114 = 256;
                      do
                      {
                        if (*&v7[4 * ((v114 + v113) >> 1)] > v112)
                        {
                          v114 = (v114 + v113) >> 1;
                        }

                        else
                        {
                          v113 = (v114 + v113) >> 1;
                        }
                      }

                      while (v114 - v113 != 1);
                      v115 = *(v101 + 2 * v112);
                      v116 = v115 | (((*(v103 + (v112 >> 1)) >> (4 * (v111 & 1))) & 0xFu) << 16);
                      state[15] = v116;
                      state[273] = v94 + 4;
                      state[4] = v113 + 4;
                      if (v116 >= v98)
                      {
                        goto LABEL_189;
                      }

                      v117 = 0;
                      v118 = 256;
                      do
                      {
                        if (*&v7[4 * ((v118 + v117) >> 1)] > v116)
                        {
                          v118 = (v118 + v117) >> 1;
                        }

                        else
                        {
                          v117 = (v118 + v117) >> 1;
                        }
                      }

                      while (v118 - v117 != 1);
                      state[16] = v117;
                      state[15] = *(v101 + 2 * v116) | (((*(v103 + (v116 >> 1)) >> (4 * (v115 & 1))) & 0xF) << 16);
                      state[273] = v94 + 5;
                    }

                    else
                    {
                      state[16] = v109;
                    }
                  }
                }

                else
                {
                  state[16] = v105;
                }
              }
            }

            else
            {
              state[16] = v99;
            }
          }

          if (!*(v11 + 8))
          {
            goto LABEL_188;
          }
        }

        *v11[3] = *(state + 12);
        v93 = state[4] - 1;
        state[4] = v93;
        v11 = *state;
        v11[3] = *(*state + 24) + 1;
        *v1.i8 = vadd_s32(v11[4], 0x1FFFFFFFFLL);
        v11[4] = v1.i64[0];
        if (!v1.i32[1])
        {
          ++*(v11 + 10);
        }

        if (!v1.i32[0])
        {
          goto LABEL_188;
        }
      }
    }

    goto LABEL_188;
  }

  if (*(state + 20))
  {
    if (*(v11 + 8))
    {
      v58 = state[4];
      do
      {
        if (!v58)
        {
          v59 = state[273];
          v60 = state[16020];
          if (v59 == v60 + 1)
          {
            break;
          }

          if (v59 > v60 + 1 || (state[4] = 1, v62 = state[15], v61 = state[16], *(state + 12) = v61, v63 = 100000 * state[10], v62 >= v63))
          {
LABEL_189:
            v119 = v9;
            v120 = 0;
            goto LABEL_221;
          }

          v64 = *(state + 394);
          v65 = *(v64 + 4 * v62);
          v66 = v65 >> 8;
          state[15] = *(v64 + 4 * v62) >> 8;
          v67 = state[6];
          if (!v67)
          {
            v68 = state[7];
            v67 = v9[v68];
            if (v68 == 511)
            {
              v69 = 0;
            }

            else
            {
              v69 = v68 + 1;
            }

            state[7] = v69;
          }

          v70 = v67 - 1;
          state[6] = v67 - 1;
          state[273] = v59 + 1;
          if (v59 != v60)
          {
            v71 = v65 ^ (v70 == 1);
            if (v71 == v61)
            {
              state[4] = 2;
              if (v66 >= v63)
              {
                goto LABEL_189;
              }

              v72 = *(v64 + 4 * v66);
              v73 = v72 >> 8;
              state[15] = *(v64 + 4 * v66) >> 8;
              if (v67 == 1)
              {
                v74 = state[7];
                v70 = v9[v74];
                if (v74 == 511)
                {
                  v75 = 0;
                }

                else
                {
                  v75 = v74 + 1;
                }

                state[7] = v75;
              }

              v76 = v70 - 1;
              state[6] = v76;
              state[273] = v59 + 2;
              if (v59 + 1 != v60)
              {
                v77 = v72 ^ (v76 == 1);
                if (v77 == v61)
                {
                  state[4] = 3;
                  if (v73 >= v63)
                  {
                    goto LABEL_189;
                  }

                  v78 = *(v64 + 4 * v73);
                  v79 = v78 >> 8;
                  state[15] = *(v64 + 4 * v73) >> 8;
                  if (!v76)
                  {
                    v80 = state[7];
                    v76 = v9[v80];
                    if (v80 == 511)
                    {
                      v81 = 0;
                    }

                    else
                    {
                      v81 = v80 + 1;
                    }

                    state[7] = v81;
                  }

                  v82 = v76 - 1;
                  state[6] = v76 - 1;
                  state[273] = v59 + 3;
                  if (v59 + 2 != v60)
                  {
                    v83 = v78 ^ (v82 == 1);
                    if (v83 == v61)
                    {
                      if (v79 >= v63)
                      {
                        goto LABEL_189;
                      }

                      v84 = *(v64 + 4 * v79);
                      v85 = v84 >> 8;
                      state[15] = v84 >> 8;
                      if (v76 == 1)
                      {
                        v86 = state[7];
                        v82 = v9[v86];
                        if (v86 == 511)
                        {
                          v87 = 0;
                        }

                        else
                        {
                          v87 = v86 + 1;
                        }

                        state[7] = v87;
                      }

                      v88 = v82 - 1;
                      state[6] = v82 - 1;
                      state[273] = v59 + 4;
                      state[4] = (v84 ^ (v82 == 2)) + 4;
                      if (v85 >= v63)
                      {
                        goto LABEL_189;
                      }

                      v89 = *(v64 + 4 * v85);
                      v90 = v89;
                      state[15] = v89 >> 8;
                      state[16] = v89;
                      if (v82 == 1)
                      {
                        v91 = state[7];
                        v88 = v9[v91];
                        if (v91 == 511)
                        {
                          v92 = 0;
                        }

                        else
                        {
                          v92 = v91 + 1;
                        }

                        state[7] = v92;
                      }

                      state[6] = v88 - 1;
                      state[16] = v90 ^ (v88 == 2);
                      state[273] = v59 + 5;
                    }

                    else
                    {
                      state[16] = v83;
                    }
                  }
                }

                else
                {
                  state[16] = v77;
                }
              }
            }

            else
            {
              state[16] = v71;
            }
          }

          if (!*(v11 + 8))
          {
            break;
          }
        }

        *v11[3] = *(state + 12);
        v58 = state[4] - 1;
        state[4] = v58;
        v11 = *state;
        v11[3] = *(*state + 24) + 1;
        *v1.i8 = vadd_s32(v11[4], 0x1FFFFFFFFLL);
        v11[4] = v1.i64[0];
        if (!v1.i32[1])
        {
          ++*(v11 + 10);
        }
      }

      while (v1.i32[0]);
    }

LABEL_188:
    v119 = v9;
    v120 = 1;
    goto LABEL_221;
  }

  v121 = *(state + 12);
  v122 = state[4];
  v123 = state[273];
  v124 = *(state + 394);
  LODWORD(v125) = state[15];
  v126 = state[16];
  v127 = *(v11 + 8);
  v128 = state[16020];
  v129 = v128 + 1;
  v130 = 100000 * state[10];
  v131 = *(*state + 24);
  v132 = v127;
LABEL_191:
  if (v122 >= 1)
  {
    if (v132)
    {
      v133 = 0;
      do
      {
        if (v122 - 1 == v133)
        {
          v132 -= v133;
          v131 += v133;
          goto LABEL_198;
        }

        v131[v133++] = v121;
      }

      while (v132 != v133);
      v132 = 0;
      v131 += v133;
      v122 -= v133;
    }

    goto LABEL_216;
  }

  while (1)
  {
    v134 = v123;
    v135 = v126;
    if (v123 > v129)
    {
      goto LABEL_220;
    }

    if (v123 == v129)
    {
      v122 = 0;
      v123 = v128 + 1;
      goto LABEL_216;
    }

    if (v125 >= v130)
    {
      goto LABEL_220;
    }

    v126 = *(v124 + 4 * v125);
    v125 = v126 >> 8;
    ++v123;
    v126 = v126;
    if (v126 == v135)
    {
      if (v134 != v128)
      {
        if (v125 >= v130)
        {
          goto LABEL_220;
        }

        v136 = *(v124 + 4 * v125);
        v125 = v136 >> 8;
        v122 = 2;
        v123 = v128 + 1;
        v126 = v135;
        v121 = v135;
        if (v134 + 2 != v129)
        {
          v126 = v136;
          v123 = v134 + 2;
          v121 = v135;
          if (v136 == v135)
          {
            if (v125 >= v130)
            {
              goto LABEL_220;
            }

            v137 = *(v124 + 4 * v125);
            v138 = v137 >> 8;
            v122 = 3;
            v123 = v128 + 1;
            v126 = v135;
            v121 = v135;
            v125 = v137 >> 8;
            if (v134 + 3 != v129)
            {
              v126 = v137;
              v123 = v134 + 3;
              v121 = v135;
              v125 = v137 >> 8;
              if (v137 == v135)
              {
                if (v138 < v130 && *(v124 + 4 * v138) >> 8 < v130)
                {
                  v122 = *(v124 + 4 * v138) + 4;
                  v139 = *(v124 + 4 * (*(v124 + 4 * v138) >> 8));
                  v126 = v139;
                  LODWORD(v125) = v139 >> 8;
                  v123 = v134 + 5;
                  v121 = v135;
                  goto LABEL_191;
                }

LABEL_220:
                v119 = v9;
                v120 = 0;
                v11 = *state;
                goto LABEL_221;
              }
            }
          }
        }

        goto LABEL_191;
      }

      v126 = v135;
    }

    v121 = v135;
LABEL_198:
    if (!v132)
    {
      break;
    }

    *v131++ = v121;
    --v132;
  }

  v122 = 1;
LABEL_216:
  v119 = v9;
  v11 = *state;
  v140 = *(*state + 36);
  v141 = v127 - v132;
  *(*state + 36) = v140 + v141;
  if (__CFADD__(v140, v141))
  {
    ++*(v11 + 10);
  }

  *(state + 12) = v121;
  state[4] = v122;
  state[273] = v123;
  *(state + 394) = v124;
  state[15] = v125;
  state[16] = v126;
  v11[3] = v131;
  v120 = 1;
  *(v11 + 8) = v132;
LABEL_221:
  v142 = v11[3] - v12;
  if (v142 >= 16)
  {
    sub_298587F10(state[796], v12, v142 & 0x7FFFFFF0, v1, v2, v3, v4);
    state[796] = v143;
    v12 = (v12 + (v142 & 0x7FFFFFF0));
    v142 &= 0xFu;
  }

  if (v142)
  {
    v144 = state[796];
    do
    {
      v145 = v12->u8[0];
      v12 = (v12 + 1);
      v144 = dword_29858CAD0[v145 ^ HIBYTE(v144)] ^ (v144 << 8);
      state[796] = v144;
      --v142;
    }

    while (v142);
  }

  if (!v120)
  {
    return -4;
  }

  if (state[273] != state[16020] + 1 || state[4])
  {
    return 0;
  }

  v146 = ~state[796];
  state[796] = v146;
  v147 = state[13];
  if (v147 > 2)
  {
    fprintf(*v10, " {0x%08x, 0x%08x}", state[794], v146);
    v147 = state[13];
  }

  v9 = v119;
  if (v147 >= 2)
  {
    fputc(93, *v10);
  }

  v148 = state[796];
  if (v148 == state[794])
  {
    state[797] = v148 ^ __ROR4__(state[797], 31);
    state[2] = 14;
    goto LABEL_235;
  }

  return -4;
}

int BZ2_bzDecompressEnd(bz_stream *strm)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state || *state != strm)
  {
    return -2;
  }

  if (state[394])
  {
    (strm->bzfree)(strm->opaque);
  }

  if (state[395])
  {
    (strm->bzfree)(strm->opaque);
  }

  if (state[396])
  {
    (strm->bzfree)(strm->opaque);
  }

  (strm->bzfree)(strm->opaque, strm->state);
  result = 0;
  strm->state = 0;
  return result;
}

BZFILE *__cdecl BZ2_bzWriteOpen(int *bzerror, FILE *f, int blockSize100k, int verbosity, int workFactor)
{
  if (bzerror)
  {
    *bzerror = 0;
  }

  if (verbosity > 4 || !f || (blockSize100k - 10) < 0xFFFFFFF7 || workFactor >= 0xFB)
  {
    if (bzerror)
    {
      v10 = 0;
      v11 = -2;
      goto LABEL_12;
    }

    return 0;
  }

  if (!ferror(f))
  {
    v12 = malloc_type_malloc(0x13F0uLL, 0x10B004010B7758FuLL);
    if (v12)
    {
      v10 = v12;
      v13 = v12 + 4096;
      if (bzerror)
      {
        *bzerror = 0;
      }

      *(v12 + 1274) = 0;
      v12[5100] = 0;
      *(v12 + 1252) = 0;
      *v12 = f;
      v12[5012] = 1;
      if (workFactor)
      {
        v14 = workFactor;
      }

      else
      {
        v14 = 30;
      }

      *(v12 + 634) = 0;
      *(v12 + 636) = 0;
      *(v12 + 635) = 0;
      v15 = BZ2_bzCompressInit((v12 + 5016), blockSize100k, verbosity, v14);
      if (!v15)
      {
        v10[1256] = 0;
        v13[1004] = 1;
        return v10;
      }

      if (bzerror)
      {
        *bzerror = v15;
      }

      free(v10);
    }

    else if (bzerror)
    {
      v10 = 0;
      v11 = -3;
      goto LABEL_12;
    }

    return 0;
  }

  if (!bzerror)
  {
    return 0;
  }

  v10 = 0;
  v11 = -6;
LABEL_12:
  *bzerror = v11;
  return v10;
}

void BZ2_bzWrite(int *bzerror, BZFILE *b, void *buf, int len)
{
  if (bzerror)
  {
    *bzerror = 0;
  }

  if (b && (*(b + 1274) = 0, buf) && (len & 0x80000000) == 0)
  {
    if (!*(b + 5012))
    {
      if (bzerror)
      {
        *bzerror = -1;
      }

      v8 = -1;
      goto LABEL_18;
    }

    if (ferror(*b))
    {
LABEL_8:
      if (bzerror)
      {
        *bzerror = -6;
      }

      v8 = -6;
      goto LABEL_18;
    }

    if (len)
    {
      *(b + 1256) = len;
      *(b + 627) = buf;
      while (1)
      {
        *(b + 1262) = 5000;
        *(b + 630) = b + 8;
        v9 = BZ2_bzCompress((b + 5016), 0);
        if (v9 != 1)
        {
          break;
        }

        v10 = *(b + 1262);
        if (v10 >> 3 <= 0x270 && (5000 - v10 != fwrite(b + 8, 1uLL, 5000 - v10, *b) || ferror(*b)))
        {
          goto LABEL_8;
        }

        if (!*(b + 1256))
        {
          goto LABEL_27;
        }
      }

      if (bzerror)
      {
        *bzerror = v9;
      }

      *(b + 1274) = v9;
    }

    else
    {
LABEL_27:
      if (bzerror)
      {
        *bzerror = 0;
      }

      *(b + 1274) = 0;
    }
  }

  else
  {
    if (bzerror)
    {
      *bzerror = -2;
    }

    if (b)
    {
      v8 = -2;
LABEL_18:
      *(b + 1274) = v8;
    }
  }
}

void BZ2_bzWriteClose64(int *bzerror, BZFILE *b, int abandon, unsigned int *nbytes_in_lo32, unsigned int *nbytes_in_hi32, unsigned int *nbytes_out_lo32, unsigned int *nbytes_out_hi32)
{
  if (b)
  {
    if (!*(b + 5012))
    {
      if (bzerror)
      {
        *bzerror = -1;
      }

      v15 = -1;
      goto LABEL_12;
    }

    v14 = *b;
    if (ferror(*b))
    {
LABEL_4:
      if (bzerror)
      {
        *bzerror = -6;
      }

      v15 = -6;
LABEL_12:
      *(b + 1274) = v15;
      return;
    }

    if (nbytes_in_lo32)
    {
      *nbytes_in_lo32 = 0;
    }

    if (nbytes_in_hi32)
    {
      *nbytes_in_hi32 = 0;
    }

    if (nbytes_out_lo32)
    {
      *nbytes_out_lo32 = 0;
    }

    if (nbytes_out_hi32)
    {
      *nbytes_out_hi32 = 0;
    }

    if (abandon)
    {
      goto LABEL_25;
    }

    if (*(b + 1274))
    {
LABEL_24:
      if (!ferror(v14))
      {
        fflush(v14);
        if (ferror(*b))
        {
          goto LABEL_4;
        }
      }

LABEL_25:
      if (nbytes_in_lo32)
      {
        *nbytes_in_lo32 = *(b + 1257);
      }

      if (nbytes_in_hi32)
      {
        *nbytes_in_hi32 = *(b + 1258);
      }

      if (nbytes_out_lo32)
      {
        *nbytes_out_lo32 = *(b + 1263);
      }

      if (nbytes_out_hi32)
      {
        *nbytes_out_hi32 = *(b + 1264);
      }

      if (bzerror)
      {
        *bzerror = 0;
      }

      *(b + 1274) = 0;
      BZ2_bzCompressEnd((b + 5016));

      free(b);
      return;
    }

    while (1)
    {
      *(b + 1262) = 5000;
      *(b + 630) = b + 8;
      v16 = BZ2_bzCompress((b + 5016), 2);
      v17 = v16;
      if ((v16 - 5) <= 0xFFFFFFFD)
      {
        break;
      }

      v18 = *(b + 1262);
      if (v18 >> 3 <= 0x270 && (5000 - v18 != fwrite(b + 8, 1uLL, 5000 - v18, *b) || ferror(*b)))
      {
        goto LABEL_4;
      }

      if (v17 == 4)
      {
        v14 = *b;
        goto LABEL_24;
      }
    }

    if (bzerror)
    {
      *bzerror = v16;
    }

    *(b + 1274) = v16;
  }

  else if (bzerror)
  {
    *bzerror = 0;
  }
}

BZFILE *__cdecl BZ2_bzReadOpen(int *bzerror, FILE *f, int verbosity, int small, void *unused, int nUnused)
{
  v7 = unused;
  if (bzerror)
  {
    *bzerror = 0;
  }

  if (f && verbosity <= 4 && small <= 1 && (unused || !nUnused) && (!unused || nUnused < 0x1389))
  {
    if (ferror(f))
    {
      if (bzerror)
      {
        v12 = 0;
        v13 = -6;
        goto LABEL_12;
      }
    }

    else
    {
      v14 = malloc_type_malloc(0x13F0uLL, 0x10B004010B7758FuLL);
      if (v14)
      {
        v12 = v14;
        v15 = v14 + 4096;
        if (bzerror)
        {
          *bzerror = 0;
        }

        *(v14 + 1274) = 0;
        v14[5100] = 0;
        *v14 = f;
        *(v14 + 1252) = 0;
        v14[5012] = 0;
        *(v14 + 634) = 0;
        *(v14 + 636) = 0;
        *(v14 + 635) = 0;
        if (nUnused >= 1)
        {
          v16 = 0;
          v17 = nUnused + 1;
          do
          {
            v18 = *v7++;
            v14[v16 + 8] = v18;
            v16 = *(v14 + 1252) + 1;
            *(v14 + 1252) = v16;
            --v17;
          }

          while (v17 > 1);
        }

        v19 = BZ2_bzDecompressInit((v14 + 5016), verbosity, small);
        if (!v19)
        {
          *(v12 + 1256) = *(v12 + 1252);
          *(v12 + 627) = v12 + 8;
          v15[1004] = 1;
          return v12;
        }

        if (bzerror)
        {
          *bzerror = v19;
        }

        free(v12);
      }

      else if (bzerror)
      {
        v12 = 0;
        v13 = -3;
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (!bzerror)
  {
    return 0;
  }

  v12 = 0;
  v13 = -2;
LABEL_12:
  *bzerror = v13;
  return v12;
}

void BZ2_bzReadClose(int *bzerror, BZFILE *b)
{
  if (bzerror)
  {
    *bzerror = 0;
    if (!b)
    {
      return;
    }

    *(b + 1274) = 0;
    if (*(b + 5012))
    {
      *bzerror = -1;
LABEL_7:
      *(b + 1274) = -1;
      return;
    }
  }

  else
  {
    if (!b)
    {
      return;
    }

    *(b + 1274) = 0;
    if (*(b + 5012))
    {
      goto LABEL_7;
    }
  }

  if (*(b + 5100))
  {
    BZ2_bzDecompressEnd((b + 5016));
  }

  free(b);
}

int BZ2_bzRead(int *bzerror, BZFILE *b, void *buf, int len)
{
  v4 = len;
  if (bzerror)
  {
    *bzerror = 0;
  }

  if (!b || (*(b + 1274) = 0, !buf) || len < 0)
  {
    if (bzerror)
    {
      *bzerror = -2;
    }

    v4 = 0;
    if (b)
    {
      v7 = -2;
      goto LABEL_14;
    }

    return v4;
  }

  if (*(b + 5012))
  {
    if (bzerror)
    {
      *bzerror = -1;
    }

    v4 = 0;
    v7 = -1;
    goto LABEL_14;
  }

  if (!len)
  {
    if (bzerror)
    {
      *bzerror = 0;
    }

    v4 = 0;
LABEL_35:
    *(b + 1274) = 0;
    return v4;
  }

  *(b + 1262) = len;
  *(b + 630) = buf;
  v9 = b + 8;
  while (1)
  {
    v10 = *b;
    if (ferror(*b))
    {
LABEL_36:
      if (bzerror)
      {
        *bzerror = -6;
      }

      v4 = 0;
      v7 = -6;
      goto LABEL_14;
    }

    if (!*(b + 1256) && !sub_298589840(v10))
    {
      v11 = fread(b + 8, 1uLL, 0x1388uLL, *b);
      if (ferror(*b))
      {
        goto LABEL_36;
      }

      *(b + 1252) = v11;
      *(b + 1256) = v11;
      *(b + 627) = v9;
    }

    v12 = BZ2_bzDecompress((b + 5016));
    if ((v12 & 0xFFFFFFFB) != 0)
    {
      if (bzerror)
      {
        *bzerror = v12;
      }

      v4 = 0;
      *(b + 1274) = v12;
      return v4;
    }

    if (v12)
    {
      if (v12 == 4)
      {
        if (bzerror)
        {
          *bzerror = 4;
        }

        *(b + 1274) = 4;
        v4 -= *(b + 1262);
        return v4;
      }

      goto LABEL_29;
    }

    if (sub_298589840(*b) && !*(b + 1256))
    {
      break;
    }

LABEL_29:
    if (!*(b + 1262))
    {
      goto LABEL_30;
    }
  }

  if (!*(b + 1262))
  {
LABEL_30:
    if (bzerror)
    {
      *bzerror = 0;
    }

    goto LABEL_35;
  }

  if (bzerror)
  {
    *bzerror = -7;
  }

  v4 = 0;
  v7 = -7;
LABEL_14:
  *(b + 1274) = v7;
  return v4;
}

uint64_t sub_298589840(FILE *a1)
{
  v2 = fgetc(a1);
  if (v2 == -1)
  {
    return 1;
  }

  ungetc(v2, a1);
  return 0;
}

void BZ2_bzReadGetUnused(int *bzerror, BZFILE *b, void **unused, int *nUnused)
{
  if (b)
  {
    if (*(b + 1274) == 4)
    {
      if (unused && nUnused)
      {
        if (bzerror)
        {
          *bzerror = 0;
        }

        *(b + 1274) = 0;
        *nUnused = *(b + 1256);
        *unused = *(b + 627);
        return;
      }

      if (bzerror)
      {
        *bzerror = -2;
      }

      v4 = -2;
    }

    else
    {
      if (bzerror)
      {
        *bzerror = -1;
      }

      v4 = -1;
    }

    *(b + 1274) = v4;
    return;
  }

  if (bzerror)
  {
    *bzerror = -2;
  }
}

int BZ2_bzBuffToBuffDecompress(char *dest, unsigned int *destLen, char *source, unsigned int sourceLen, int small, int verbosity)
{
  v6 = -2;
  if (dest)
  {
    if (destLen)
    {
      if (source)
      {
        if (small <= 1 && verbosity <= 4)
        {
          memset(&v14, 0, sizeof(v14));
          v6 = BZ2_bzDecompressInit(&v14, verbosity, small);
          if (!v6)
          {
            v14.next_in = source;
            v14.next_out = dest;
            v14.avail_in = sourceLen;
            v14.avail_out = *destLen;
            v12 = BZ2_bzDecompress(&v14);
            if (v12)
            {
              v6 = v12;
              if (v12 == 4)
              {
                *destLen -= v14.avail_out;
                BZ2_bzDecompressEnd(&v14);
                return 0;
              }

              else
              {
                BZ2_bzDecompressEnd(&v14);
              }
            }

            else
            {
              avail_out = v14.avail_out;
              BZ2_bzDecompressEnd(&v14);
              if (avail_out)
              {
                return -7;
              }

              else
              {
                return -8;
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

BZFILE *sub_298589A0C()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v22 = *MEMORY[0x29EDCA608];
  v20 = 0;
  *__mode = 0;
  if (!v2)
  {
    return 0;
  }

  v4 = v3;
  v5 = v1;
  v6 = v0;
  v7 = 0;
  v8 = 0;
  v9 = 9;
  while (1)
  {
    v10 = *v2;
    if (v10 <= 0x72)
    {
      break;
    }

    if (v10 == 115)
    {
      v8 = 1;
      goto LABEL_13;
    }

    if (v10 == 119)
    {
      v7 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v11 = v10 - 48;
    if (v11 < 0xA)
    {
      v9 = v11;
    }

LABEL_13:
    ++v2;
  }

  if (v10 == 114)
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (*v2)
  {
    goto LABEL_11;
  }

  bzerror = 0;
  __strlcat_chk();
  __strlcat_chk();
  if (v4)
  {
    v12 = fdopen(v5, __mode);
    goto LABEL_16;
  }

  if (v6 && *v6)
  {
    v12 = fopen(v6, __mode);
LABEL_16:
    v13 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    v14 = MEMORY[0x29EDCA620];
    if (!v7)
    {
      v14 = MEMORY[0x29EDCA618];
    }

    v13 = *v14;
    if (!*v14)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (v9 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v9;
    }

    if (v15 >= 9)
    {
      v16 = 9;
    }

    else
    {
      v16 = v15;
    }

    result = BZ2_bzWriteOpen(&bzerror, v13, v16, 0, 30);
    if (!result)
    {
      goto LABEL_34;
    }
  }

  else
  {
    result = BZ2_bzReadOpen(&bzerror, v13, 0, v8, unused, 0);
    if (result)
    {
      return result;
    }

LABEL_34:
    if (v13 != *MEMORY[0x29EDCA618] && v13 != *MEMORY[0x29EDCA620])
    {
      fclose(v13);
      return 0;
    }
  }

  return result;
}

int BZ2_bzread(BZFILE *b, void *buf, int len)
{
  if (*(b + 1274) == 4)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6 = 0;
  result = BZ2_bzRead(&v6, b, buf, len);
  if ((v6 & 0xFFFFFFFB) != 0)
  {
    return -1;
  }

  return result;
}

int BZ2_bzwrite(BZFILE *b, void *buf, int len)
{
  bzerror = 0;
  BZ2_bzWrite(&bzerror, b, buf, len);
  if (bzerror)
  {
    return -1;
  }

  else
  {
    return len;
  }
}

void BZ2_bzclose(BZFILE *b)
{
  if (b)
  {
    bzerror = 0;
    v2 = *b;
    if (*(b + 5012))
    {
      BZ2_bzWriteClose64(&bzerror, b, 0, 0, 0, 0, 0);
      if (bzerror)
      {
        BZ2_bzWriteClose64(0, b, 1, 0, 0, 0, 0);
      }
    }

    else
    {
      BZ2_bzReadClose(&bzerror, b);
    }

    if (v2 != *MEMORY[0x29EDCA618] && v2 != *MEMORY[0x29EDCA620])
    {
      fclose(v2);
    }
  }
}

const char *__cdecl BZ2_bzerror(BZFILE *b, int *errnum)
{
  v2 = *(b + 1274) & (*(b + 1274) >> 31);
  *errnum = v2;
  return (&off_29EE9DF78)[-v2];
}

uint64_t sub_298589DD4(uint64_t **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = (a1 + 64036);
  if (v3 == 10)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v424 = 0;
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v420 = 0;
    v421 = 0;
    v12 = 0;
    v422 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v425 = 0;
    v20 = 0;
    m = 0;
    k = 0;
    LODWORD(v426) = 0;
    *(a1 + 4008) = 0u;
    *(a1 + 64100) = 0u;
    *(a1 + 64116) = 0u;
    *(a1 + 64068) = 0u;
    *(a1 + 64084) = 0u;
    *v4 = 0u;
    *(a1 + 64052) = 0u;
  }

  else
  {
    LODWORD(v426) = *(a1 + 16009);
    k = *(a1 + 16010);
    m = *(a1 + 16011);
    v20 = *(a1 + 16012);
    v425 = *(a1 + 16013);
    v19 = *(a1 + 16014);
    v18 = *(a1 + 16016);
    v17 = *(a1 + 16017);
    v16 = *(a1 + 16018);
    v15 = *(a1 + 16019);
    v14 = *(a1 + 16020);
    v13 = *(a1 + 16021);
    v422 = *(a1 + 16022);
    v12 = *(a1 + 16023);
    v420 = *(a1 + 16024);
    v421 = *(a1 + 16015);
    v11 = *(a1 + 16025);
    v10 = *(a1 + 16026);
    v9 = *(a1 + 16027);
    LODWORD(v8) = *(a1 + 16028);
    v424 = *(a1 + 16029);
    v7 = a1[8015];
    v6 = a1[8016];
    v5 = a1[8017];
  }

  v423 = v16;
  switch(v3)
  {
    case 10:
      *(a1 + 2) = 10;
      v23 = *(a1 + 9);
      v24 = __OFSUB__(v23, 8);
      v25 = v23 - 8;
      if (v25 < 0 != v24)
      {
        v61 = *(v2 + 2) - 1;
        do
        {
          if (v61 == -1)
          {
            goto LABEL_25;
          }

          v62 = *v2 + 1;
          v26 = **v2 | (*(a1 + 8) << 8);
          *(a1 + 8) = v26;
          *(a1 + 9) = v25 + 16;
          *v2 = v62;
          LODWORD(v62) = *(v2 + 3);
          *(v2 + 2) = v61;
          *(v2 + 3) = v62 + 1;
          if (v62 == -1)
          {
            ++*(v2 + 4);
          }

          --v61;
          v25 += 8;
        }

        while (v25 < 0);
      }

      else
      {
        v26 = *(a1 + 8);
      }

      *(a1 + 9) = v25;
      if ((v26 >> v25) != 66)
      {
        goto LABEL_77;
      }

LABEL_53:
      *(a1 + 2) = 11;
      v24 = __OFSUB__(v25, 8);
      v45 = v25 - 8;
      if (v45 < 0 != v24)
      {
        v64 = *(v2 + 2) - 1;
        do
        {
          if (v64 == -1)
          {
            goto LABEL_25;
          }

          v65 = *v2 + 1;
          v63 = **v2 | (*(a1 + 8) << 8);
          *(a1 + 8) = v63;
          *(a1 + 9) = v45 + 16;
          *v2 = v65;
          LODWORD(v65) = *(v2 + 3);
          *(v2 + 2) = v64;
          *(v2 + 3) = v65 + 1;
          if (v65 == -1)
          {
            ++*(v2 + 4);
          }

          --v64;
          v45 += 8;
        }

        while (v45 < 0);
      }

      else
      {
        v63 = *(a1 + 8);
      }

      *(a1 + 9) = v45;
      if ((v63 >> v45) != 90)
      {
        goto LABEL_77;
      }

LABEL_61:
      *(a1 + 2) = 12;
      v24 = __OFSUB__(v45, 8);
      v34 = v45 - 8;
      if (v34 < 0 != v24)
      {
        v67 = *(v2 + 2) - 1;
        do
        {
          if (v67 == -1)
          {
            goto LABEL_25;
          }

          v68 = *v2 + 1;
          v66 = **v2 | (*(a1 + 8) << 8);
          *(a1 + 8) = v66;
          *(a1 + 9) = v34 + 16;
          *v2 = v68;
          LODWORD(v68) = *(v2 + 3);
          *(v2 + 2) = v67;
          *(v2 + 3) = v68 + 1;
          if (v68 == -1)
          {
            ++*(v2 + 4);
          }

          --v67;
          v34 += 8;
        }

        while (v34 < 0);
      }

      else
      {
        v66 = *(a1 + 8);
      }

      *(a1 + 9) = v34;
      if ((v66 >> v34) != 104)
      {
        goto LABEL_77;
      }

LABEL_69:
      *(a1 + 2) = 13;
      v24 = __OFSUB__(v34, 8);
      v69 = v34 - 8;
      if (v69 < 0 != v24)
      {
        v71 = *(v2 + 2) - 1;
        do
        {
          if (v71 == -1)
          {
            goto LABEL_25;
          }

          v72 = *v2 + 1;
          v70 = **v2 | (*(a1 + 8) << 8);
          *(a1 + 8) = v70;
          *(a1 + 9) = v69 + 16;
          *v2 = v72;
          LODWORD(v72) = *(v2 + 3);
          *(v2 + 2) = v71;
          *(v2 + 3) = v72 + 1;
          if (v72 == -1)
          {
            ++*(v2 + 4);
          }

          --v71;
          v69 += 8;
        }

        while (v69 < 0);
      }

      else
      {
        v70 = *(a1 + 8);
      }

      v73 = (v70 >> v69);
      *(a1 + 9) = v69;
      *(a1 + 10) = v73;
      if ((v73 - 58) < 0xFFFFFFF7)
      {
LABEL_77:
        result = 4294967291;
        goto LABEL_306;
      }

      v389 = v19;
      v390 = v13;
      v399 = v18;
      v402 = v17;
      v407 = m;
      v404 = v11;
      v392 = v10;
      v394 = v15;
      v413 = v9;
      v416 = v8;
      v74 = v12;
      v75 = v20;
      v76 = v73 - 48;
      *(a1 + 10) = v76;
      v77 = v2[7];
      v78 = v2[9];
      if (*(a1 + 44))
      {
        a1[395] = (v77)(v78, (200000 * v76), 1);
        v79 = (v2[7])(v2[9], ((100000 * *(a1 + 10)) >> 1), 1);
        a1[396] = v79;
        result = 4294967293;
        v20 = v75;
        v12 = v74;
        if (!a1[395])
        {
          LODWORD(v8) = v416;
          v9 = v413;
          goto LABEL_275;
        }

        LODWORD(v8) = v416;
        v9 = v413;
        v10 = v392;
        v15 = v394;
        LODWORD(v19) = v389;
        v13 = v390;
        v11 = v404;
        m = v407;
        LODWORD(v18) = v399;
        if (!v79)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v80 = (v77)(v78, (400000 * v76), 1);
        a1[394] = v80;
        v20 = v75;
        v12 = v74;
        LODWORD(v8) = v416;
        v9 = v413;
        v10 = v392;
        v15 = v394;
        LODWORD(v19) = v389;
        v13 = v390;
        v11 = v404;
        m = v407;
        LODWORD(v18) = v399;
        if (!v80)
        {
          result = 4294967293;
          goto LABEL_306;
        }
      }

LABEL_83:
      *(a1 + 2) = 14;
      v81 = *(a1 + 9);
      v24 = __OFSUB__(v81, 8);
      v39 = v81 - 8;
      if (v39 < 0 != v24)
      {
        v83 = *a1;
        v84 = *(*a1 + 2) - 1;
        do
        {
          if (v84 == -1)
          {
            goto LABEL_25;
          }

          v85 = *v83 + 1;
          v82 = **v83 | (*(a1 + 8) << 8);
          *(a1 + 8) = v82;
          *(a1 + 9) = v39 + 16;
          *v83 = v85;
          LODWORD(v85) = *(v83 + 3);
          *(v83 + 2) = v84;
          *(v83 + 3) = v85 + 1;
          if (v85 == -1)
          {
            ++*(v83 + 4);
          }

          --v84;
          v39 += 8;
        }

        while (v39 < 0);
      }

      else
      {
        v82 = *(a1 + 8);
      }

      *(a1 + 9) = v39;
      v86 = (v82 >> v39);
      if (v86 == 23)
      {
LABEL_94:
        *(a1 + 2) = 42;
        v24 = __OFSUB__(v39, 8);
        v35 = v39 - 8;
        if (v35 < 0 != v24)
        {
          v157 = *a1;
          v158 = *(*a1 + 2) - 1;
          do
          {
            if (v158 == -1)
            {
              goto LABEL_25;
            }

            v159 = *v157 + 1;
            v88 = **v157 | (*(a1 + 8) << 8);
            *(a1 + 8) = v88;
            *(a1 + 9) = v35 + 16;
            *v157 = v159;
            LODWORD(v159) = *(v157 + 3);
            *(v157 + 2) = v158;
            *(v157 + 3) = v159 + 1;
            if (v159 == -1)
            {
              ++*(v157 + 4);
            }

            --v158;
            v35 += 8;
          }

          while (v35 < 0);
        }

        else
        {
          v88 = *(a1 + 8);
        }

        *(a1 + 9) = v35;
        if ((v88 >> v35) == 114)
        {
LABEL_209:
          *(a1 + 2) = 43;
          v24 = __OFSUB__(v35, 8);
          v32 = v35 - 8;
          if (v32 < 0 != v24)
          {
            v161 = *a1;
            v162 = *(*a1 + 2) - 1;
            do
            {
              if (v162 == -1)
              {
                goto LABEL_25;
              }

              v163 = *v161 + 1;
              v160 = **v161 | (*(a1 + 8) << 8);
              *(a1 + 8) = v160;
              *(a1 + 9) = v32 + 16;
              *v161 = v163;
              LODWORD(v163) = *(v161 + 3);
              *(v161 + 2) = v162;
              *(v161 + 3) = v163 + 1;
              if (v163 == -1)
              {
                ++*(v161 + 4);
              }

              --v162;
              v32 += 8;
            }

            while (v32 < 0);
          }

          else
          {
            v160 = *(a1 + 8);
          }

          *(a1 + 9) = v32;
          if ((v160 >> v32) == 69)
          {
LABEL_217:
            *(a1 + 2) = 44;
            v24 = __OFSUB__(v32, 8);
            v28 = v32 - 8;
            if (v28 < 0 != v24)
            {
              v165 = *a1;
              v166 = *(*a1 + 2) - 1;
              do
              {
                if (v166 == -1)
                {
                  goto LABEL_25;
                }

                v167 = *v165 + 1;
                v164 = **v165 | (*(a1 + 8) << 8);
                *(a1 + 8) = v164;
                *(a1 + 9) = v28 + 16;
                *v165 = v167;
                LODWORD(v167) = *(v165 + 3);
                *(v165 + 2) = v166;
                *(v165 + 3) = v167 + 1;
                if (v167 == -1)
                {
                  ++*(v165 + 4);
                }

                --v166;
                v28 += 8;
              }

              while (v28 < 0);
            }

            else
            {
              v164 = *(a1 + 8);
            }

            *(a1 + 9) = v28;
            if ((v164 >> v28) == 56)
            {
LABEL_225:
              *(a1 + 2) = 45;
              v24 = __OFSUB__(v28, 8);
              v29 = v28 - 8;
              if (v29 < 0 != v24)
              {
                v169 = *a1;
                v170 = *(*a1 + 2) - 1;
                do
                {
                  if (v170 == -1)
                  {
                    goto LABEL_25;
                  }

                  v171 = *v169 + 1;
                  v168 = **v169 | (*(a1 + 8) << 8);
                  *(a1 + 8) = v168;
                  *(a1 + 9) = v29 + 16;
                  *v169 = v171;
                  LODWORD(v171) = *(v169 + 3);
                  *(v169 + 2) = v170;
                  *(v169 + 3) = v171 + 1;
                  if (v171 == -1)
                  {
                    ++*(v169 + 4);
                  }

                  --v170;
                  v29 += 8;
                }

                while (v29 < 0);
              }

              else
              {
                v168 = *(a1 + 8);
              }

              *(a1 + 9) = v29;
              if ((v168 >> v29) == 80)
              {
LABEL_233:
                *(a1 + 2) = 46;
                v24 = __OFSUB__(v29, 8);
                v27 = v29 - 8;
                if (v27 < 0 != v24)
                {
                  v173 = *a1;
                  v174 = *(*a1 + 2) - 1;
                  do
                  {
                    if (v174 == -1)
                    {
                      goto LABEL_25;
                    }

                    v175 = *v173 + 1;
                    v172 = **v173 | (*(a1 + 8) << 8);
                    *(a1 + 8) = v172;
                    *(a1 + 9) = v27 + 16;
                    *v173 = v175;
                    LODWORD(v175) = *(v173 + 3);
                    *(v173 + 2) = v174;
                    *(v173 + 3) = v175 + 1;
                    if (v175 == -1)
                    {
                      ++*(v173 + 4);
                    }

                    --v174;
                    v27 += 8;
                  }

                  while (v27 < 0);
                }

                else
                {
                  v172 = *(a1 + 8);
                }

                *(a1 + 9) = v27;
                if ((v172 >> v27) == 144)
                {
                  *(a1 + 795) = 0;
LABEL_242:
                  *(a1 + 2) = 47;
                  v24 = __OFSUB__(v27, 8);
                  v54 = v27 - 8;
                  if (v54 < 0 != v24)
                  {
                    v177 = *a1;
                    v178 = *(*a1 + 2) - 1;
                    do
                    {
                      if (v178 == -1)
                      {
                        goto LABEL_25;
                      }

                      v179 = *v177 + 1;
                      v176 = **v177 | (*(a1 + 8) << 8);
                      *(a1 + 8) = v176;
                      *(a1 + 9) = v54 + 16;
                      *v177 = v179;
                      LODWORD(v179) = *(v177 + 3);
                      *(v177 + 2) = v178;
                      *(v177 + 3) = v179 + 1;
                      if (v179 == -1)
                      {
                        ++*(v177 + 4);
                      }

                      --v178;
                      v54 += 8;
                    }

                    while (v54 < 0);
                  }

                  else
                  {
                    v176 = *(a1 + 8);
                  }

                  *(a1 + 9) = v54;
                  *(a1 + 795) = (v176 >> v54) | (*(a1 + 795) << 8);
LABEL_250:
                  *(a1 + 2) = 48;
                  v24 = __OFSUB__(v54, 8);
                  v49 = v54 - 8;
                  if (v49 < 0 != v24)
                  {
                    v181 = *a1;
                    v182 = *(*a1 + 2) - 1;
                    do
                    {
                      if (v182 == -1)
                      {
                        goto LABEL_25;
                      }

                      v183 = *v181 + 1;
                      v180 = **v181 | (*(a1 + 8) << 8);
                      *(a1 + 8) = v180;
                      *(a1 + 9) = v49 + 16;
                      *v181 = v183;
                      LODWORD(v183) = *(v181 + 3);
                      *(v181 + 2) = v182;
                      *(v181 + 3) = v183 + 1;
                      if (v183 == -1)
                      {
                        ++*(v181 + 4);
                      }

                      --v182;
                      v49 += 8;
                    }

                    while (v49 < 0);
                  }

                  else
                  {
                    v180 = *(a1 + 8);
                  }

                  *(a1 + 9) = v49;
                  *(a1 + 795) = (v180 >> v49) | (*(a1 + 795) << 8);
LABEL_258:
                  *(a1 + 2) = 49;
                  v24 = __OFSUB__(v49, 8);
                  v36 = v49 - 8;
                  if (v36 < 0 != v24)
                  {
                    v185 = *a1;
                    v186 = *(*a1 + 2) - 1;
                    do
                    {
                      if (v186 == -1)
                      {
                        goto LABEL_25;
                      }

                      v187 = *v185 + 1;
                      v184 = **v185 | (*(a1 + 8) << 8);
                      *(a1 + 8) = v184;
                      *(a1 + 9) = v36 + 16;
                      *v185 = v187;
                      LODWORD(v187) = *(v185 + 3);
                      *(v185 + 2) = v186;
                      *(v185 + 3) = v187 + 1;
                      if (v187 == -1)
                      {
                        ++*(v185 + 4);
                      }

                      --v186;
                      v36 += 8;
                    }

                    while (v36 < 0);
                  }

                  else
                  {
                    v184 = *(a1 + 8);
                  }

                  *(a1 + 9) = v36;
                  *(a1 + 795) = (v184 >> v36) | (*(a1 + 795) << 8);
LABEL_266:
                  *(a1 + 2) = 50;
                  v24 = __OFSUB__(v36, 8);
                  v188 = v36 - 8;
                  if (v188 < 0 != v24)
                  {
                    v190 = *a1;
                    v191 = *(*a1 + 2) - 1;
                    do
                    {
                      if (v191 == -1)
                      {
                        goto LABEL_25;
                      }

                      v192 = *v190 + 1;
                      v189 = **v190 | (*(a1 + 8) << 8);
                      *(a1 + 8) = v189;
                      *(a1 + 9) = v188 + 16;
                      *v190 = v192;
                      LODWORD(v192) = *(v190 + 3);
                      *(v190 + 2) = v191;
                      *(v190 + 3) = v192 + 1;
                      if (v192 == -1)
                      {
                        ++*(v190 + 4);
                      }

                      --v191;
                      v188 += 8;
                    }

                    while (v188 < 0);
                  }

                  else
                  {
                    v189 = *(a1 + 8);
                  }

                  *(a1 + 9) = v188;
                  *(a1 + 795) = (v189 >> v188) | (*(a1 + 795) << 8);
                  *(a1 + 2) = 1;
                  result = 4;
                  goto LABEL_306;
                }
              }
            }
          }
        }

LABEL_305:
        result = 4294967292;
        goto LABEL_306;
      }

      if (v86 != 49)
      {
        goto LABEL_305;
      }

LABEL_92:
      *(a1 + 2) = 15;
      v24 = __OFSUB__(v39, 8);
      v33 = v39 - 8;
      if (v33 < 0 != v24)
      {
        v89 = *a1;
        v90 = *(*a1 + 2) - 1;
        do
        {
          if (v90 == -1)
          {
            goto LABEL_25;
          }

          v91 = *v89 + 1;
          v87 = **v89 | (*(a1 + 8) << 8);
          *(a1 + 8) = v87;
          *(a1 + 9) = v33 + 16;
          *v89 = v91;
          LODWORD(v91) = *(v89 + 3);
          *(v89 + 2) = v90;
          *(v89 + 3) = v91 + 1;
          if (v91 == -1)
          {
            ++*(v89 + 4);
          }

          --v90;
          v33 += 8;
        }

        while (v33 < 0);
      }

      else
      {
        v87 = *(a1 + 8);
      }

      *(a1 + 9) = v33;
      if ((v87 >> v33) != 65)
      {
        goto LABEL_305;
      }

LABEL_102:
      *(a1 + 2) = 16;
      v24 = __OFSUB__(v33, 8);
      v41 = v33 - 8;
      if (v41 < 0 != v24)
      {
        v93 = *a1;
        v94 = *(*a1 + 2) - 1;
        do
        {
          if (v94 == -1)
          {
            goto LABEL_25;
          }

          v95 = *v93 + 1;
          v92 = **v93 | (*(a1 + 8) << 8);
          *(a1 + 8) = v92;
          *(a1 + 9) = v41 + 16;
          *v93 = v95;
          LODWORD(v95) = *(v93 + 3);
          *(v93 + 2) = v94;
          *(v93 + 3) = v95 + 1;
          if (v95 == -1)
          {
            ++*(v93 + 4);
          }

          --v94;
          v41 += 8;
        }

        while (v41 < 0);
      }

      else
      {
        v92 = *(a1 + 8);
      }

      *(a1 + 9) = v41;
      if ((v92 >> v41) != 89)
      {
        goto LABEL_305;
      }

LABEL_110:
      *(a1 + 2) = 17;
      v24 = __OFSUB__(v41, 8);
      v46 = v41 - 8;
      if (v46 < 0 != v24)
      {
        v97 = *a1;
        v98 = *(*a1 + 2) - 1;
        do
        {
          if (v98 == -1)
          {
            goto LABEL_25;
          }

          v99 = *v97 + 1;
          v96 = **v97 | (*(a1 + 8) << 8);
          *(a1 + 8) = v96;
          *(a1 + 9) = v46 + 16;
          *v97 = v99;
          LODWORD(v99) = *(v97 + 3);
          *(v97 + 2) = v98;
          *(v97 + 3) = v99 + 1;
          if (v99 == -1)
          {
            ++*(v97 + 4);
          }

          --v98;
          v46 += 8;
        }

        while (v46 < 0);
      }

      else
      {
        v96 = *(a1 + 8);
      }

      *(a1 + 9) = v46;
      if ((v96 >> v46) != 38)
      {
        goto LABEL_305;
      }

LABEL_118:
      *(a1 + 2) = 18;
      v24 = __OFSUB__(v46, 8);
      v50 = v46 - 8;
      if (v50 < 0 != v24)
      {
        v101 = *a1;
        v102 = *(*a1 + 2) - 1;
        do
        {
          if (v102 == -1)
          {
            goto LABEL_25;
          }

          v103 = *v101 + 1;
          v100 = **v101 | (*(a1 + 8) << 8);
          *(a1 + 8) = v100;
          *(a1 + 9) = v50 + 16;
          *v101 = v103;
          LODWORD(v103) = *(v101 + 3);
          *(v101 + 2) = v102;
          *(v101 + 3) = v103 + 1;
          if (v103 == -1)
          {
            ++*(v101 + 4);
          }

          --v102;
          v50 += 8;
        }

        while (v50 < 0);
      }

      else
      {
        v100 = *(a1 + 8);
      }

      *(a1 + 9) = v50;
      if ((v100 >> v50) != 83)
      {
        goto LABEL_305;
      }

LABEL_126:
      *(a1 + 2) = 19;
      v24 = __OFSUB__(v50, 8);
      v104 = v50 - 8;
      if (v104 < 0 != v24)
      {
        v106 = *a1;
        v107 = *(*a1 + 2) - 1;
        do
        {
          if (v107 == -1)
          {
            goto LABEL_25;
          }

          v108 = *v106 + 1;
          v105 = **v106 | (*(a1 + 8) << 8);
          *(a1 + 8) = v105;
          *(a1 + 9) = v104 + 16;
          *v106 = v108;
          LODWORD(v108) = *(v106 + 3);
          *(v106 + 2) = v107;
          *(v106 + 3) = v108 + 1;
          if (v108 == -1)
          {
            ++*(v106 + 4);
          }

          --v107;
          v104 += 8;
        }

        while (v104 < 0);
      }

      else
      {
        v105 = *(a1 + 8);
      }

      *(a1 + 9) = v104;
      if ((v105 >> v104) != 89)
      {
        goto LABEL_305;
      }

      v109 = *(a1 + 13);
      v110 = *(a1 + 12) + 1;
      *(a1 + 12) = v110;
      if (v109 >= 2)
      {
        v395 = v15;
        v111 = v12;
        v406 = v6;
        v408 = v4;
        v410 = k;
        v414 = v9;
        v405 = v7;
        v417 = v8;
        v112 = v20;
        v400 = v14;
        v113 = v10;
        v114 = v13;
        v115 = v11;
        v116 = m;
        v117 = v18;
        v118 = v19;
        fprintf(*MEMORY[0x29EDCA610], "\n    [%d: huff+mtf ", v110);
        LODWORD(v19) = v118;
        LODWORD(v18) = v117;
        m = v116;
        v11 = v115;
        v13 = v114;
        v15 = v395;
        v10 = v113;
        v14 = v400;
        v20 = v112;
        LODWORD(v8) = v417;
        k = v410;
        v9 = v414;
        v7 = v405;
        v6 = v406;
        v4 = v408;
        v12 = v111;
      }

      *(a1 + 794) = 0;
LABEL_137:
      *(a1 + 2) = 20;
      v119 = *(a1 + 9);
      v24 = __OFSUB__(v119, 8);
      v43 = v119 - 8;
      if (v43 < 0 != v24)
      {
        v121 = *a1;
        v122 = *(*a1 + 2) - 1;
        do
        {
          if (v122 == -1)
          {
            goto LABEL_25;
          }

          v123 = *v121 + 1;
          v120 = **v121 | (*(a1 + 8) << 8);
          *(a1 + 8) = v120;
          *(a1 + 9) = v43 + 16;
          *v121 = v123;
          LODWORD(v123) = *(v121 + 3);
          *(v121 + 2) = v122;
          *(v121 + 3) = v123 + 1;
          if (v123 == -1)
          {
            ++*(v121 + 4);
          }

          --v122;
          v43 += 8;
        }

        while (v43 < 0);
      }

      else
      {
        v120 = *(a1 + 8);
      }

      *(a1 + 9) = v43;
      *(a1 + 794) = (v120 >> v43) | (*(a1 + 794) << 8);
LABEL_145:
      *(a1 + 2) = 21;
      v24 = __OFSUB__(v43, 8);
      v44 = v43 - 8;
      if (v44 < 0 != v24)
      {
        v125 = *a1;
        v126 = *(*a1 + 2) - 1;
        do
        {
          if (v126 == -1)
          {
            goto LABEL_25;
          }

          v127 = *v125 + 1;
          v124 = **v125 | (*(a1 + 8) << 8);
          *(a1 + 8) = v124;
          *(a1 + 9) = v44 + 16;
          *v125 = v127;
          LODWORD(v127) = *(v125 + 3);
          *(v125 + 2) = v126;
          *(v125 + 3) = v127 + 1;
          if (v127 == -1)
          {
            ++*(v125 + 4);
          }

          --v126;
          v44 += 8;
        }

        while (v44 < 0);
      }

      else
      {
        v124 = *(a1 + 8);
      }

      *(a1 + 9) = v44;
      *(a1 + 794) = (v124 >> v44) | (*(a1 + 794) << 8);
LABEL_153:
      *(a1 + 2) = 22;
      v24 = __OFSUB__(v44, 8);
      v48 = v44 - 8;
      if (v48 < 0 != v24)
      {
        v129 = *a1;
        v130 = *(*a1 + 2) - 1;
        do
        {
          if (v130 == -1)
          {
            goto LABEL_25;
          }

          v131 = *v129 + 1;
          v128 = **v129 | (*(a1 + 8) << 8);
          *(a1 + 8) = v128;
          *(a1 + 9) = v48 + 16;
          *v129 = v131;
          LODWORD(v131) = *(v129 + 3);
          *(v129 + 2) = v130;
          *(v129 + 3) = v131 + 1;
          if (v131 == -1)
          {
            ++*(v129 + 4);
          }

          --v130;
          v48 += 8;
        }

        while (v48 < 0);
      }

      else
      {
        v128 = *(a1 + 8);
      }

      *(a1 + 9) = v48;
      *(a1 + 794) = (v128 >> v48) | (*(a1 + 794) << 8);
LABEL_161:
      *(a1 + 2) = 23;
      v24 = __OFSUB__(v48, 8);
      v51 = v48 - 8;
      if (v51 < 0 != v24)
      {
        v133 = *a1;
        v134 = *(*a1 + 2) - 1;
        do
        {
          if (v134 == -1)
          {
            goto LABEL_25;
          }

          v135 = *v133 + 1;
          v132 = **v133 | (*(a1 + 8) << 8);
          *(a1 + 8) = v132;
          *(a1 + 9) = v51 + 16;
          *v133 = v135;
          LODWORD(v135) = *(v133 + 3);
          *(v133 + 2) = v134;
          *(v133 + 3) = v135 + 1;
          if (v135 == -1)
          {
            ++*(v133 + 4);
          }

          --v134;
          v51 += 8;
        }

        while (v51 < 0);
      }

      else
      {
        v132 = *(a1 + 8);
      }

      *(a1 + 9) = v51;
      *(a1 + 794) = (v132 >> v51) | (*(a1 + 794) << 8);
LABEL_169:
      *(a1 + 2) = 24;
      if (v51 < 1)
      {
        v137 = *a1;
        v138 = *(*a1 + 2) - 1;
        do
        {
          if (v138 == -1)
          {
            goto LABEL_25;
          }

          v139 = *v137 + 1;
          v136 = **v137 | (*(a1 + 8) << 8);
          v51 += 8;
          *(a1 + 8) = v136;
          *(a1 + 9) = v51;
          *v137 = v139;
          LODWORD(v139) = *(v137 + 3);
          *(v137 + 2) = v138;
          *(v137 + 3) = v139 + 1;
          if (v139 == -1)
          {
            ++*(v137 + 4);
          }

          --v138;
        }

        while (v51 - 8 <= -8);
      }

      else
      {
        v136 = *(a1 + 8);
      }

      v38 = v51 - 1;
      *(a1 + 9) = v38;
      *(a1 + 20) = (v136 >> v38) & 1;
      *(a1 + 14) = 0;
LABEL_177:
      *(a1 + 2) = 25;
      v24 = __OFSUB__(v38, 8);
      v37 = v38 - 8;
      if (v37 < 0 != v24)
      {
        v141 = *a1;
        v142 = *(*a1 + 2) - 1;
        do
        {
          if (v142 == -1)
          {
            goto LABEL_25;
          }

          v143 = *v141 + 1;
          v140 = **v141 | (*(a1 + 8) << 8);
          *(a1 + 8) = v140;
          *(a1 + 9) = v37 + 16;
          *v141 = v143;
          LODWORD(v143) = *(v141 + 3);
          *(v141 + 2) = v142;
          *(v141 + 3) = v143 + 1;
          if (v143 == -1)
          {
            ++*(v141 + 4);
          }

          --v142;
          v37 += 8;
        }

        while (v37 < 0);
      }

      else
      {
        v140 = *(a1 + 8);
      }

      *(a1 + 9) = v37;
      *(a1 + 14) = (v140 >> v37) | (*(a1 + 14) << 8);
LABEL_185:
      *(a1 + 2) = 26;
      v24 = __OFSUB__(v37, 8);
      v55 = v37 - 8;
      if (v55 < 0 != v24)
      {
        v145 = *a1;
        v146 = *(*a1 + 2) - 1;
        do
        {
          if (v146 == -1)
          {
            goto LABEL_25;
          }

          v147 = *v145 + 1;
          v144 = **v145 | (*(a1 + 8) << 8);
          *(a1 + 8) = v144;
          *(a1 + 9) = v55 + 16;
          *v145 = v147;
          LODWORD(v147) = *(v145 + 3);
          *(v145 + 2) = v146;
          *(v145 + 3) = v147 + 1;
          if (v147 == -1)
          {
            ++*(v145 + 4);
          }

          --v146;
          v55 += 8;
        }

        while (v55 < 0);
      }

      else
      {
        v144 = *(a1 + 8);
      }

      *(a1 + 9) = v55;
      *(a1 + 14) = (v144 >> v55) | (*(a1 + 14) << 8);
LABEL_193:
      *(a1 + 2) = 27;
      v24 = __OFSUB__(v55, 8);
      v148 = v55 - 8;
      if (v148 < 0 != v24)
      {
        v150 = *a1;
        v151 = *(*a1 + 2) - 1;
        do
        {
          if (v151 == -1)
          {
            goto LABEL_25;
          }

          v152 = *v150 + 1;
          v149 = **v150 | (*(a1 + 8) << 8);
          *(a1 + 8) = v149;
          *(a1 + 9) = v148 + 16;
          *v150 = v152;
          LODWORD(v152) = *(v150 + 3);
          *(v150 + 2) = v151;
          *(v150 + 3) = v152 + 1;
          if (v152 == -1)
          {
            ++*(v150 + 4);
          }

          --v151;
          v148 += 8;
        }

        while (v148 < 0);
      }

      else
      {
        v149 = *(a1 + 8);
      }

      v153 = v149 >> v148;
      *(a1 + 9) = v148;
      v154 = *(a1 + 14);
      v155 = v153 | (v154 << 8);
      *(a1 + 14) = v155;
      if (v154 << 8 < 0 || v155 > ((100000 * *(a1 + 10)) | 0xA))
      {
        goto LABEL_305;
      }

      for (i = 0; ; i = v426 + 1)
      {
        LODWORD(v426) = i;
        if (i >= 16)
        {
          break;
        }

LABEL_309:
        *(a1 + 2) = 28;
        v206 = *(a1 + 9);
        if (v206 < 1)
        {
          v208 = *a1;
          v209 = *(*a1 + 2) - 1;
          while (v209 != -1)
          {
            v210 = *v208 + 1;
            v207 = **v208 | (*(a1 + 8) << 8);
            v206 += 8;
            *(a1 + 8) = v207;
            *(a1 + 9) = v206;
            *v208 = v210;
            LODWORD(v210) = *(v208 + 3);
            *(v208 + 2) = v209;
            *(v208 + 3) = v210 + 1;
            if (v210 == -1)
            {
              ++*(v208 + 4);
            }

            --v209;
            if (v206 - 8 > -8)
            {
              goto LABEL_316;
            }
          }

          goto LABEL_25;
        }

        v207 = *(a1 + 8);
LABEL_316:
        v211 = v206 - 1;
        *(a1 + 9) = v211;
        *(a1 + v426 + 3452) = (v207 >> v211) & 1;
      }

      *(a1 + 3420) = 0u;
      *(a1 + 3436) = 0u;
      *(a1 + 3388) = 0u;
      *(a1 + 3404) = 0u;
      *(a1 + 3356) = 0u;
      *(a1 + 3372) = 0u;
      *(a1 + 3324) = 0u;
      *(a1 + 3340) = 0u;
      *(a1 + 3292) = 0u;
      *(a1 + 3308) = 0u;
      *(a1 + 3260) = 0u;
      *(a1 + 3276) = 0u;
      *(a1 + 3228) = 0u;
      *(a1 + 3244) = 0u;
      *(a1 + 3196) = 0u;
      *(a1 + 3212) = 0u;
      for (j = 0; ; j = v426 + 1)
      {
        LODWORD(v426) = j;
        if (j > 15)
        {
          break;
        }

        if (*(a1 + j + 3452))
        {
          for (k = 0; ; ++k)
          {
            if (k > 15)
            {
              goto LABEL_339;
            }

LABEL_337:
            *(a1 + 2) = 29;
            v220 = *(a1 + 9);
            if (v220 < 1)
            {
              break;
            }

            v221 = *(a1 + 8);
LABEL_345:
            v225 = v220 - 1;
            *(a1 + 9) = v225;
            if ((v221 >> v225))
            {
              *(&a1[2 * v426 + 399] + k + 4) = 1;
            }
          }

          v222 = *a1;
          v223 = *(*a1 + 2) - 1;
          while (v223 != -1)
          {
            v224 = *v222 + 1;
            v221 = **v222 | (*(a1 + 8) << 8);
            v220 += 8;
            *(a1 + 8) = v221;
            *(a1 + 9) = v220;
            *v222 = v224;
            LODWORD(v224) = *(v222 + 3);
            *(v222 + 2) = v223;
            *(v222 + 3) = v224 + 1;
            if (v224 == -1)
            {
              ++*(v222 + 4);
            }

            --v223;
            if (v220 - 8 > -8)
            {
              goto LABEL_345;
            }
          }

          goto LABEL_25;
        }

LABEL_339:
        ;
      }

      v213 = 0;
      v214 = 0;
      *(a1 + 798) = 0;
      do
      {
        if (*(a1 + v214 + 3196))
        {
          *(a1 + v213 + 3468) = v214;
          v213 = *(a1 + 798) + 1;
          *(a1 + 798) = v213;
        }

        ++v214;
      }

      while (v214 != 256);
      if (!v213)
      {
        goto LABEL_305;
      }

      v20 = v213 + 2;
LABEL_327:
      *(a1 + 2) = 30;
      v215 = *(a1 + 9);
      if (v215 < 3)
      {
        v217 = *a1;
        v218 = *(*a1 + 2) - 1;
        do
        {
          if (v218 == -1)
          {
            goto LABEL_25;
          }

          v219 = *v217 + 1;
          v216 = **v217 | (*(a1 + 8) << 8);
          v215 += 8;
          *(a1 + 8) = v216;
          *(a1 + 9) = v215;
          *v217 = v219;
          LODWORD(v219) = *(v217 + 3);
          *(v217 + 2) = v218;
          *(v217 + 3) = v219 + 1;
          if (v219 == -1)
          {
            ++*(v217 + 4);
          }

          --v218;
        }

        while (v215 - 8 <= -6);
      }

      else
      {
        v216 = *(a1 + 8);
      }

      v30 = v215 - 3;
      *(a1 + 9) = v30;
      v425 = (v216 >> v30) & 7;
      if (((1 << ((v216 >> v30) & 7)) & 0x83) != 0)
      {
        goto LABEL_305;
      }

LABEL_11:
      *(a1 + 2) = 31;
      if (v30 < 15)
      {
        v56 = *a1;
        v57 = *(*a1 + 2) - 1;
        do
        {
          if (v57 == -1)
          {
            goto LABEL_25;
          }

          v58 = *v56 + 1;
          v31 = **v56 | (*(a1 + 8) << 8);
          v30 += 8;
          *(a1 + 8) = v31;
          *(a1 + 9) = v30;
          *v56 = v58;
          LODWORD(v58) = *(v56 + 3);
          *(v56 + 2) = v57;
          *(v56 + 3) = v58 + 1;
          if (v58 == -1)
          {
            ++*(v56 + 4);
          }

          --v57;
        }

        while (v30 - 8 <= 6);
      }

      else
      {
        v31 = *(a1 + 8);
      }

      v59 = 0;
      v60 = v30 - 15;
      *(a1 + 9) = v60;
      LODWORD(v19) = (v31 >> v60) & 0x7FFF;
      if (!v19)
      {
        result = 4294967292;
        LODWORD(v19) = 0;
        goto LABEL_306;
      }

LABEL_348:
      if (v59 < v19)
      {
        k = 0;
        LODWORD(v426) = v59;
LABEL_350:
        v226 = *(a1 + 9);
        result = 4294967292;
        while (1)
        {
          *(a1 + 2) = 32;
          if (v226 < 1)
          {
            break;
          }

          v227 = *(a1 + 8);
LABEL_358:
          *(a1 + 9) = --v226;
          if (((v227 >> v226) & 1) == 0)
          {
            v231 = v426;
            if (v426 <= 18001)
            {
              *(a1 + v426 + 25886) = k;
              v231 = v426;
            }

            v59 = v231 + 1;
            goto LABEL_348;
          }

          if (++k >= v425)
          {
            goto LABEL_306;
          }
        }

        v228 = *a1;
        v229 = *(*a1 + 2) - 1;
        while (v229 != -1)
        {
          v230 = *v228 + 1;
          v227 = **v228 | (*(a1 + 8) << 8);
          v226 += 8;
          *(a1 + 8) = v227;
          *(a1 + 9) = v226;
          *v228 = v230;
          LODWORD(v230) = *(v228 + 3);
          *(v228 + 2) = v229;
          *(v228 + 3) = v230 + 1;
          if (v230 == -1)
          {
            ++*(v228 + 4);
          }

          --v229;
          if (v226 - 8 > -8)
          {
            goto LABEL_358;
          }
        }

        result = 0;
        goto LABEL_306;
      }

      if (v19 >= 18002)
      {
        v232 = 18002;
      }

      else
      {
        v232 = v19;
      }

      if (v425 >= 1)
      {
        v233 = 0;
        do
        {
          v427[v233] = v233;
          ++v233;
        }

        while (v425 > v233);
      }

      if (v19 < 1)
      {
        LODWORD(v426) = 0;
      }

      else
      {
        v234 = v18;
        v235 = 0;
        v236 = a1 + 25886;
        do
        {
          v237 = v236[v235];
          v238 = v427[v237];
          if (v236[v235])
          {
            v239 = v237 + 0xFFFFFFFFLL;
            v240 = &v427[v237];
            v241 = v237 - 1;
            do
            {
              *v240-- = v427[v239--];
            }

            while (v241--);
          }

          v427[0] = v238;
          *(a1 + v235++ + 7884) = v238;
        }

        while (v235 != v232);
        LODWORD(v426) = v232;
        LODWORD(v18) = v234;
      }

      for (m = 0; m < v425; ++m)
      {
        v19 = v232;
LABEL_382:
        *(a1 + 2) = 33;
        v243 = *(a1 + 9);
        if (v243 < 5)
        {
          v245 = *a1;
          v246 = *(*a1 + 2) - 1;
          do
          {
            if (v246 == -1)
            {
              goto LABEL_25;
            }

            v247 = *v245 + 1;
            v244 = **v245 | (*(a1 + 8) << 8);
            v243 += 8;
            *(a1 + 8) = v244;
            *(a1 + 9) = v243;
            *v245 = v247;
            LODWORD(v247) = *(v245 + 3);
            *(v245 + 2) = v246;
            *(v245 + 3) = v247 + 1;
            if (v247 == -1)
            {
              ++*(v245 + 4);
            }

            --v246;
          }

          while (v243 - 8 <= -4);
        }

        else
        {
          v244 = *(a1 + 8);
        }

        v248 = v243 - 5;
        v12 = (v244 >> v248) & 0x1F;
        *(a1 + 9) = v248;
        v249 = 0;
LABEL_418:
        if (v249 < v20)
        {
          LODWORD(v426) = v249;
          while (1)
          {
            if ((v12 - 21) < 0xFFFFFFEC)
            {
              goto LABEL_305;
            }

LABEL_422:
            *(a1 + 2) = 34;
            v271 = *(a1 + 9);
            if (v271 < 1)
            {
              break;
            }

            v272 = *(a1 + 8);
LABEL_429:
            v52 = v271 - 1;
            *(a1 + 9) = v52;
            if (((v272 >> v52) & 1) == 0)
            {
              *(a1 + 258 * m + v426 + 43888) = v12;
              v249 = v426 + 1;
              goto LABEL_418;
            }

LABEL_430:
            *(a1 + 2) = 35;
            if (v52 < 1)
            {
              v277 = *a1;
              v278 = *(*a1 + 2) - 1;
              while (v278 != -1)
              {
                v279 = *v277 + 1;
                v276 = **v277 | (*(a1 + 8) << 8);
                v52 += 8;
                *(a1 + 8) = v276;
                *(a1 + 9) = v52;
                *v277 = v279;
                LODWORD(v279) = *(v277 + 3);
                *(v277 + 2) = v278;
                *(v277 + 3) = v279 + 1;
                if (v279 == -1)
                {
                  ++*(v277 + 4);
                }

                --v278;
                if (v52 - 8 > -8)
                {
                  goto LABEL_437;
                }
              }

              goto LABEL_25;
            }

            v276 = *(a1 + 8);
LABEL_437:
            v280 = v52 - 1;
            *(a1 + 9) = v280;
            if ((v276 >> v280))
            {
              --v12;
            }

            else
            {
              ++v12;
            }
          }

          v273 = *a1;
          v274 = *(*a1 + 2) - 1;
          while (v274 != -1)
          {
            v275 = *v273 + 1;
            v272 = **v273 | (*(a1 + 8) << 8);
            v271 += 8;
            *(a1 + 8) = v272;
            *(a1 + 9) = v271;
            *v273 = v275;
            LODWORD(v275) = *(v273 + 3);
            *(v273 + 2) = v274;
            *(v273 + 3) = v275 + 1;
            if (v275 == -1)
            {
              ++*(v273 + 4);
            }

            --v274;
            if (v271 - 8 > -8)
            {
              goto LABEL_429;
            }
          }

LABEL_25:
          result = 0;
          goto LABEL_306;
        }

        LODWORD(v426) = v249;
        v232 = v19;
      }

      v396 = v232;
      v391 = v13;
      v393 = v10;
      v411 = k;
      v418 = v8;
      v397 = v12;
      v250 = v20;
      if (v425 < 1)
      {
        LODWORD(v253) = v11;
        v409 = 0;
      }

      else
      {
        v403 = v5;
        v415 = v9;
        v251 = 0;
        v252 = a1 + 5486;
        v401 = v20;
        do
        {
          v253 = v11;
          if (v20 < 1)
          {
            v254 = 0;
            v255 = 32;
          }

          else
          {
            v254 = 0;
            v255 = 32;
            v256 = v401;
            v257 = v252;
            do
            {
              v259 = *v257;
              v257 = (v257 + 1);
              v258 = v259;
              if (v254 <= v259)
              {
                v254 = v258;
              }

              if (v255 >= v258)
              {
                v255 = v258;
              }

              --v256;
            }

            while (v256);
          }

          sub_29858C744((&a1[129 * v251 + 5679] + 4), (&a1[129 * v251 + 6453] + 4), &a1[129 * v251 + 7227] + 4, a1 + 258 * v251 + 43888, v255, v254, v250);
          v20 = v250;
          *(a1 + v251++ + 16003) = v255;
          v252 = (v252 + 258);
          v11 = v253;
        }

        while (v251 != v425);
        v409 = v425;
        v9 = v415;
        v5 = v403;
      }

      v260 = *(a1 + 798);
      v261 = *(a1 + 10);
      bzero(a1 + 68, 0x400uLL);
      v262 = 0;
      v15 = 100000 * v261;
      v263 = 4095;
      do
      {
        v264 = vrev64q_s8(vorrq_s8(vdupq_n_s8(16 * v262 - 16), xmmword_29858CED0));
        *(a1 + v263 + 3709) = vextq_s8(v264, v264, 8uLL);
        *(a1 + v262-- + 1970) = v263 - 15;
        v263 -= 16;
      }

      while (v262 != -16);
      v421 = v260 + 1;
      v20 = v250;
      k = v411;
      v13 = v391;
      v10 = v393;
      if (v396 < 1)
      {
        LODWORD(v11) = v253;
        v14 = 0;
        v17 = 0;
        LODWORD(v18) = 0;
        result = 4294967292;
        LODWORD(v426) = 256;
        LODWORD(v19) = v396;
        v12 = v397;
        LODWORD(v8) = v418;
        m = v409;
        goto LABEL_306;
      }

      v14 = 0;
      v18 = 0;
      LODWORD(v8) = *(a1 + 7884);
      v265 = &a1[129 * *(a1 + 7884)];
      v6 = (v265 + 51628);
      v5 = (v265 + 57820);
      v7 = (v265 + 45436);
      LODWORD(v426) = 256;
      v17 = 49;
      v424 = *(a1 + *(a1 + 7884) + 16003);
      LODWORD(v11) = v424;
      v19 = v396;
      v12 = v397;
      m = v409;
LABEL_408:
      *(a1 + 2) = 36;
      v266 = *(a1 + 9);
      if (v266 >= v11)
      {
        v270 = *(a1 + 8);
      }

      else
      {
        v267 = *a1;
        v268 = *(*a1 + 2) - 1;
        do
        {
          if (v268 == -1)
          {
            goto LABEL_25;
          }

          v269 = *v267 + 1;
          v270 = **v267 | (*(a1 + 8) << 8);
          v266 += 8;
          *(a1 + 8) = v270;
          *(a1 + 9) = v266;
          *v267 = v269;
          LODWORD(v269) = *(v267 + 3);
          *(v267 + 2) = v268;
          *(v267 + 3) = v269 + 1;
          if (v269 == -1)
          {
            ++*(v267 + 4);
          }

          --v268;
        }

        while (v266 < v11);
      }

      v53 = v266 - v11;
      v10 = (v270 >> v53) & ~(-1 << v11);
      *(a1 + 9) = v53;
      while (1)
      {
        if (v11 > 20)
        {
          goto LABEL_305;
        }

        if (v10 <= *(v7 + v11))
        {
          break;
        }

        LODWORD(v11) = v11 + 1;
LABEL_277:
        *(a1 + 2) = 37;
        if (v53 < 1)
        {
          v194 = *a1;
          v195 = *(*a1 + 2) - 1;
          do
          {
            if (v195 == -1)
            {
              goto LABEL_25;
            }

            v196 = *v194 + 1;
            v193 = **v194 | (*(a1 + 8) << 8);
            v53 += 8;
            *(a1 + 8) = v193;
            *(a1 + 9) = v53;
            *v194 = v196;
            LODWORD(v196) = *(v194 + 3);
            *(v194 + 2) = v195;
            *(v194 + 3) = v196 + 1;
            if (v196 == -1)
            {
              ++*(v194 + 4);
            }

            --v195;
          }

          while (v53 - 8 <= -8);
        }

        else
        {
          v193 = *(a1 + 8);
        }

        v9 = (v193 >> --v53) & 1;
        *(a1 + 9) = v53;
        v10 = v9 | (2 * v10);
      }

      v197 = *(v6 + v11);
LABEL_441:
      v281 = v10 - v197;
      if (v281 > 0x101)
      {
        goto LABEL_305;
      }

      v282 = *(v5 + v281);
      while (v282 != v421)
      {
        v283 = v282 - 1;
        if (v282 > 1)
        {
          v423 = v282;
          if (v14 >= v15)
          {
            goto LABEL_305;
          }

          v285 = v19;
          if (v282 > 0x10)
          {
            v301 = v18;
            v302 = v283 >> 4;
            v303 = a1 + 1955;
            v304 = a1 + v302 + 1955;
            v305 = *v304;
            v306 = a1 + 3724;
            v288 = *(a1 + (v283 & 0xF) + *v304 + 3724);
            if ((v283 & 0xF) != 0)
            {
              v307 = v305 + (v283 & 0xF);
              v308 = a1 + v307 + 3724;
              v309 = v308;
              do
              {
                --v307;
                v310 = *--v309;
                *v308 = v310;
                v308 = v309;
              }

              while (v307 > *v304);
              v305 = *v304;
            }

            *v304 = v305 + 1;
            v311 = v302 + 1;
            do
            {
              v312 = *v304 - 1;
              *v304 = v312;
              v313 = *--v304;
              v306[v312] = v306[v313 + 15];
              --v311;
            }

            while (v311 > 1);
            v314 = *v303 - 1;
            *v303 = v314;
            v306[v314] = v288;
            if (!*v303)
            {
              v315 = 4095;
              v316 = 15;
              do
              {
                v317 = 0;
                v318 = v316;
                v319 = a1 + 3724;
                do
                {
                  v319[v315] = v319[v303[v318] + 15];
                  ++v317;
                  --v319;
                }

                while (v317 != 16);
                v303[v318] = v315 - 15;
                v316 = v318 - 1;
                v315 -= 16;
              }

              while (v318);
            }

            v18 = v301;
          }

          else
          {
            v286 = *(a1 + 1955);
            v287 = a1 + 3724;
            v288 = *(a1 + v286 + v283 + 3724);
            if (v283 < 4)
            {
              goto LABEL_452;
            }

            v289 = v18;
            v290 = v286 - 1;
            v291 = v282;
            do
            {
              v292 = v290 + v291 - 1;
              v287[v290 + v291] = v287[v292];
              v293 = v290 + v291 - 2;
              v287[v292] = v287[v293];
              v294 = v290 + v291 - 3;
              v287[v293] = v287[v294];
              v295 = v291 - 4;
              v287[v294] = v287[v291 - 4 + v290];
              v296 = v291 - 5;
              v291 -= 4;
            }

            while (v296 > 3);
            v283 = v295 - 1;
            v18 = v289;
            if (v295 != 1)
            {
LABEL_452:
              v297 = v283;
              v298 = v283 + v286;
              v299 = v297 - 1;
              do
              {
                v287[v298] = v287[v298 - 1];
                v300 = v299--;
                --v298;
              }

              while (v300);
            }

            v287[v286] = v288;
          }

          v320 = *(a1 + v288 + 3468);
          ++*(a1 + v320 + 17);
          v19 = v285;
          if (*(a1 + 44))
          {
            *(a1[395] + v14) = v320;
          }

          else
          {
            *(a1[394] + v14) = v320;
          }

          ++v14;
          v321 = v18;
          if (v17)
          {
            v322 = v424;
          }

          else
          {
            v321 = v18 + 1;
            if (v321 >= v285)
            {
              v17 = 0;
              result = 4294967292;
              LODWORD(v18) = v18 + 1;
              goto LABEL_306;
            }

            v322 = *(a1 + *(a1 + v321 + 7884) + 16003);
            v323 = &a1[129 * *(a1 + v321 + 7884)];
            v7 = (v323 + 45436);
            v5 = (v323 + 57820);
            v6 = (v323 + 51628);
            v17 = 50;
            LODWORD(v8) = *(a1 + v321 + 7884);
          }

          --v17;
          v424 = v322;
          LODWORD(v11) = v322;
          v18 = v321;
LABEL_475:
          *(a1 + 2) = 40;
          v324 = *(a1 + 9);
          if (v324 >= v11)
          {
            v328 = *(a1 + 8);
          }

          else
          {
            v325 = *a1;
            v326 = *(*a1 + 2) - 1;
            do
            {
              if (v326 == -1)
              {
                goto LABEL_25;
              }

              v327 = *v325 + 1;
              v328 = **v325 | (*(a1 + 8) << 8);
              v324 += 8;
              *(a1 + 8) = v328;
              *(a1 + 9) = v324;
              *v325 = v327;
              LODWORD(v327) = *(v325 + 3);
              *(v325 + 2) = v326;
              *(v325 + 3) = v327 + 1;
              if (v327 == -1)
              {
                ++*(v325 + 4);
              }

              --v326;
            }

            while (v324 < v11);
          }

          v40 = v324 - v11;
          v10 = (v328 >> v40) & ~(-1 << v11);
          *(a1 + 9) = v40;
          while (1)
          {
            if (v11 > 20)
            {
              goto LABEL_305;
            }

            if (v10 <= *(v7 + v11))
            {
              break;
            }

            LODWORD(v11) = v11 + 1;
LABEL_297:
            *(a1 + 2) = 41;
            if (v40 < 1)
            {
              v203 = *a1;
              v204 = *(*a1 + 2) - 1;
              do
              {
                if (v204 == -1)
                {
                  goto LABEL_25;
                }

                v205 = *v203 + 1;
                v202 = **v203 | (*(a1 + 8) << 8);
                v40 += 8;
                *(a1 + 8) = v202;
                *(a1 + 9) = v40;
                *v203 = v205;
                LODWORD(v205) = *(v203 + 3);
                *(v203 + 2) = v204;
                *(v203 + 3) = v205 + 1;
                if (v205 == -1)
                {
                  ++*(v203 + 4);
                }

                --v204;
              }

              while (v40 - 8 <= -8);
            }

            else
            {
              v202 = *(a1 + 8);
            }

            v9 = (v202 >> --v40) & 1;
            *(a1 + 9) = v40;
            v10 = v9 | (2 * v10);
          }

          v197 = *(v6 + v11);
          goto LABEL_441;
        }

        v13 = -1;
        for (n = 1; ; n = v422)
        {
          v423 = v282;
          if (n >= 0x200000)
          {
            result = 4294967292;
            v422 = n;
            goto LABEL_306;
          }

          v422 = 2 * n;
          if (v282)
          {
            n *= 2;
          }

          v13 += n;
          if (v17)
          {
            v376 = v424;
          }

          else
          {
            v18 = v18 + 1;
            if (v18 >= v19)
            {
              v17 = 0;
              goto LABEL_305;
            }

            v8 = *(a1 + v18 + 7884);
            v376 = *(a1 + v8 + 16003);
            v377 = &a1[129 * v8];
            v7 = (v377 + 45436);
            v5 = (v377 + 57820);
            v6 = (v377 + 51628);
            v17 = 50;
          }

          --v17;
          v424 = v376;
          LODWORD(v11) = v376;
LABEL_550:
          *(a1 + 2) = 38;
          v378 = *(a1 + 9);
          if (v378 >= v11)
          {
            v382 = *(a1 + 8);
          }

          else
          {
            v379 = *a1;
            v380 = *(*a1 + 2) - 1;
            do
            {
              if (v380 == -1)
              {
                goto LABEL_25;
              }

              v381 = *v379 + 1;
              v382 = **v379 | (*(a1 + 8) << 8);
              v378 += 8;
              *(a1 + 8) = v382;
              *(a1 + 9) = v378;
              *v379 = v381;
              LODWORD(v381) = *(v379 + 3);
              *(v379 + 2) = v380;
              *(v379 + 3) = v381 + 1;
              if (v381 == -1)
              {
                ++*(v379 + 4);
              }

              --v380;
            }

            while (v378 < v11);
          }

          v47 = v378 - v11;
          v10 = (v382 >> v47) & ~(-1 << v11);
          *(a1 + 9) = v47;
          while (1)
          {
            if (v11 > 20)
            {
              goto LABEL_305;
            }

            if (v10 <= *(v7 + v11))
            {
              break;
            }

            LODWORD(v11) = v11 + 1;
LABEL_289:
            *(a1 + 2) = 39;
            if (v47 < 1)
            {
              v199 = *a1;
              v200 = *(*a1 + 2) - 1;
              do
              {
                if (v200 == -1)
                {
                  goto LABEL_25;
                }

                v201 = *v199 + 1;
                v198 = **v199 | (*(a1 + 8) << 8);
                v47 += 8;
                *(a1 + 8) = v198;
                *(a1 + 9) = v47;
                *v199 = v201;
                LODWORD(v201) = *(v199 + 3);
                *(v199 + 2) = v200;
                *(v199 + 3) = v201 + 1;
                if (v201 == -1)
                {
                  ++*(v199 + 4);
                }

                --v200;
              }

              while (v47 - 8 <= -8);
            }

            else
            {
              v198 = *(a1 + 8);
            }

            v9 = (v198 >> --v47) & 1;
            *(a1 + 9) = v47;
            v10 = v9 | (2 * v10);
          }

          v383 = v10 - *(v6 + v11);
          if (v383 > 0x101)
          {
            goto LABEL_305;
          }

          v282 = *(v5 + v383);
          if (v282 >= 2)
          {
            break;
          }
        }

        v384 = v13 + 1;
        v385 = *(a1 + *(a1 + *(a1 + 1955) + 3724) + 3468);
        *(a1 + v385 + 17) += v13 + 1;
        if (*(a1 + 44))
        {
          if ((v13 & 0x80000000) == 0)
          {
            if (v14 <= v15)
            {
              v386 = v15;
            }

            else
            {
              v386 = v14;
            }

            v387 = v14;
            v14 = v386;
            while (v386 != v387)
            {
              *(a1[395] + v387++) = v385;
              v24 = __OFSUB__(v384--, 1);
              if ((v384 < 0) ^ v24 | (v384 == 0))
              {
                goto LABEL_583;
              }
            }

LABEL_585:
            v423 = v282;
            result = 4294967292;
            v13 = v384;
LABEL_306:
            *v4 = v426;
            *(a1 + 16010) = k;
            *(a1 + 16011) = m;
            *(a1 + 16012) = v20;
            *(a1 + 16013) = v425;
            *(a1 + 16014) = v19;
            *(a1 + 16015) = v421;
            *(a1 + 16016) = v18;
            *(a1 + 16017) = v17;
            *(a1 + 16018) = v423;
            *(a1 + 16019) = v15;
            *(a1 + 16020) = v14;
            *(a1 + 16021) = v13;
            *(a1 + 16022) = v422;
            *(a1 + 16023) = v12;
            *(a1 + 16024) = v420;
            *(a1 + 16025) = v11;
            *(a1 + 16026) = v10;
            *(a1 + 16027) = v9;
            *(a1 + 16028) = v8;
            *(a1 + 16029) = v424;
            a1[8015] = v7;
            a1[8016] = v6;
            a1[8017] = v5;
            return result;
          }

LABEL_584:
          ++v13;
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_584;
          }

          if (v14 <= v15)
          {
            v388 = v15;
          }

          else
          {
            v388 = v14;
          }

          v387 = v14;
          v14 = v388;
          do
          {
            if (v388 == v387)
            {
              goto LABEL_585;
            }

            *(a1[394] + v387++) = v385;
            v24 = __OFSUB__(v384--, 1);
          }

          while (!((v384 < 0) ^ v24 | (v384 == 0)));
LABEL_583:
          v13 = v384;
          v14 = v387;
        }
      }

      v423 = v282;
      v329 = *(a1 + 14);
      result = 4294967292;
      if (v329 < 0 || v329 >= v14)
      {
LABEL_529:
        v421 = v282;
        goto LABEL_306;
      }

      v412 = k;
      for (ii = 0; ii != 256; ++ii)
      {
        v331 = *(a1 + ii + 17);
        if (v331 < 0 || v331 > v14)
        {
          result = 4294967292;
          v421 = v282;
          LODWORD(v426) = ii;
          k = v412;
          goto LABEL_306;
        }
      }

      v332 = a1 + 137;
      *(a1 + 274) = 0;
      v333 = 256;
      v334 = a1;
      do
      {
        *(v334 + 1100) = *(v334 + 68);
        v334 += 2;
        v333 -= 4;
      }

      while (v333);
      v335 = 0;
      v336 = a1 + 1100;
      k = v412;
      do
      {
        v335 += *&v336[v333];
        *&v336[v333] = v335;
        v333 += 4;
      }

      while (v333 != 1024);
      v337 = 0;
      do
      {
        v426 = v337;
        v338 = *(v332 + v337);
        if (v338 < 0 || v338 > v14)
        {
          goto LABEL_528;
        }

        v337 = v426 + 1;
      }

      while (v426 != 256);
      v339 = 0;
      v340 = 0;
      do
      {
        v341 = *(a1 + v339 + 275);
        if (v340 > v341)
        {
          LODWORD(v426) = v339 + 1;
LABEL_528:
          result = 4294967292;
          goto LABEL_529;
        }

        ++v339;
        v340 = v341;
      }

      while (v339 != 256);
      v389 = v19;
      v390 = v13;
      v399 = v18;
      v419 = v20;
      v398 = v12;
      *(a1 + 4) = 0;
      *(a1 + 12) = 0;
      *(a1 + 796) = -1;
      *(a1 + 2) = 2;
      v392 = v10;
      v394 = v15;
      LODWORD(v404) = v11;
      v407 = m;
      v402 = v17;
      if (*(a1 + 13) >= 2)
      {
        fwrite("rt+rld", 6uLL, 1uLL, *MEMORY[0x29EDCA610]);
        v332 = a1 + 137;
      }

      if (!*(a1 + 44))
      {
        v367 = 0;
        v368 = 0;
        v369 = a1[394];
        do
        {
          v370 = *(v369 + 4 * v368);
          *(v369 + (*(v332 + v370))++) |= v367;
          ++v368;
          v367 += 256;
        }

        while (v14 != v368);
        v371 = *(v369 + *(a1 + 14)) >> 8;
        *(a1 + 15) = v371;
        *(a1 + 273) = 0;
        if (*(a1 + 20))
        {
          a1[3] = 0;
          result = 1;
          if (v371 >= 100000 * *(a1 + 10))
          {
            return result;
          }

          v372 = *(v369 + v371);
          *(a1 + 273) = 1;
          v373 = dword_2A13BAD10[0] - 1;
          *(a1 + 6) = dword_2A13BAD10[0] - 1;
          *(a1 + 7) = 1;
          *(a1 + 15) = v372 >> 8;
          *(a1 + 16) = v372 ^ (v373 == 1);
        }

        else
        {
          result = 1;
          if (v371 >= 100000 * *(a1 + 10))
          {
            return result;
          }

          v375 = *(v369 + v371);
          *(a1 + 15) = v375 >> 8;
          *(a1 + 16) = v375;
          *(a1 + 273) = 1;
        }

        v421 = v423;
        LODWORD(v426) = v14;
        result = 0;
        v20 = v419;
        v12 = v398;
        k = v412;
        goto LABEL_275;
      }

      v342 = a1 + 2124;
      v343 = 257;
      v344 = v332;
      do
      {
        *(v344 + 257) = *v344;
        v344 = (v344 + 4);
        --v343;
      }

      while (v343);
      do
      {
        v345 = a1[395];
        v346 = *(v345 + 2 * v343);
        v347 = *&v342[4 * v346];
        *(v345 + v343) = v347;
        v348 = a1[396];
        v349 = v343 >> 1;
        v350 = *(v348 + v349) & 0xF | (16 * HIWORD(v347));
        v351 = *(v348 + v349) & 0xF0 | HIWORD(v347);
        if (v343)
        {
          LOBYTE(v351) = v350;
        }

        *(v348 + v349) = v351;
        ++*&v342[4 * v346];
        ++v343;
      }

      while (v14 != v343);
      v352 = *(a1 + 14);
      k = *(a1[395] + v352) | (((*(a1[396] + (v352 >> 1)) >> (4 * (v352 & 1))) & 0xF) << 16);
      do
      {
        v353 = k;
        v354 = a1[395];
        v355 = k;
        v356 = *(v354 + k);
        v357 = a1[396];
        v358 = v355 >> 1;
        v359 = *(v357 + v358) >> (4 * (v353 & 1));
        *(v354 + v353) = v352;
        k = v356 & 0xFFF0FFFF | ((v359 & 0xF) << 16);
        v360 = *(v357 + v358) & 0xF | (16 * HIWORD(v352));
        v361 = *(v357 + v358) & 0xF0 | HIWORD(v352);
        if (v353)
        {
          LOBYTE(v361) = v360;
        }

        *(v357 + v358) = v361;
        v352 = v353;
      }

      while (v353 != *(a1 + 14));
      *(a1 + 15) = v353;
      *(a1 + 273) = 0;
      LODWORD(v426) = v353;
      if (*(a1 + 20))
      {
        a1[3] = 0;
        if (v353 < 100000 * *(a1 + 10))
        {
          v362 = sub_29858815C(v353, v332);
          *(a1 + 16) = v362;
          *(a1 + 15) = *(a1[395] + *(a1 + 15)) | (((*(a1[396] + (*(a1 + 15) >> 1)) >> (4 * (*(a1 + 15) & 1))) & 0xF) << 16);
          ++*(a1 + 273);
          v363 = *(a1 + 6);
          if (!v363)
          {
            v364 = *(a1 + 7);
            v363 = dword_2A13BAD10[v364];
            if (v364 == 511)
            {
              v365 = 0;
            }

            else
            {
              v365 = v364 + 1;
            }

            *(a1 + 7) = v365;
          }

          result = 0;
          v366 = v363 - 1;
          *(a1 + 6) = v366;
          *(a1 + 16) = v362 ^ (v366 == 1);
LABEL_537:
          v421 = v423;
          v20 = v419;
          v12 = v398;
LABEL_275:
          v10 = v392;
          v15 = v394;
          LODWORD(v19) = v389;
          v13 = v390;
          LODWORD(v11) = v404;
          m = v407;
          v17 = v402;
          LODWORD(v18) = v399;
          goto LABEL_306;
        }
      }

      else if (v353 < 100000 * *(a1 + 10))
      {
        v374 = sub_29858815C(v353, v332);
        result = 0;
        *(a1 + 16) = v374;
        *(a1 + 15) = *(a1[395] + *(a1 + 15)) | (((*(a1[396] + (*(a1 + 15) >> 1)) >> (4 * (*(a1 + 15) & 1))) & 0xF) << 16);
        ++*(a1 + 273);
        goto LABEL_537;
      }

      return 1;
    case 11:
      v25 = *(a1 + 9);
      goto LABEL_53;
    case 12:
      v45 = *(a1 + 9);
      goto LABEL_61;
    case 13:
      v34 = *(a1 + 9);
      goto LABEL_69;
    case 14:
      goto LABEL_83;
    case 15:
      v39 = *(a1 + 9);
      goto LABEL_92;
    case 16:
      v33 = *(a1 + 9);
      goto LABEL_102;
    case 17:
      v41 = *(a1 + 9);
      goto LABEL_110;
    case 18:
      v46 = *(a1 + 9);
      goto LABEL_118;
    case 19:
      v50 = *(a1 + 9);
      goto LABEL_126;
    case 20:
      goto LABEL_137;
    case 21:
      v43 = *(a1 + 9);
      goto LABEL_145;
    case 22:
      v44 = *(a1 + 9);
      goto LABEL_153;
    case 23:
      v48 = *(a1 + 9);
      goto LABEL_161;
    case 24:
      v51 = *(a1 + 9);
      goto LABEL_169;
    case 25:
      v38 = *(a1 + 9);
      goto LABEL_177;
    case 26:
      v37 = *(a1 + 9);
      goto LABEL_185;
    case 27:
      v55 = *(a1 + 9);
      goto LABEL_193;
    case 28:
      goto LABEL_309;
    case 29:
      goto LABEL_337;
    case 30:
      goto LABEL_327;
    case 31:
      v30 = *(a1 + 9);
      goto LABEL_11;
    case 32:
      goto LABEL_350;
    case 33:
      goto LABEL_382;
    case 34:
      goto LABEL_422;
    case 35:
      v52 = *(a1 + 9);
      goto LABEL_430;
    case 36:
      goto LABEL_408;
    case 37:
      v53 = *(a1 + 9);
      goto LABEL_277;
    case 38:
      goto LABEL_550;
    case 39:
      v47 = *(a1 + 9);
      goto LABEL_289;
    case 40:
      goto LABEL_475;
    case 41:
      v40 = *(a1 + 9);
      goto LABEL_297;
    case 42:
      v39 = *(a1 + 9);
      goto LABEL_94;
    case 43:
      v35 = *(a1 + 9);
      goto LABEL_209;
    case 44:
      v32 = *(a1 + 9);
      goto LABEL_217;
    case 45:
      v28 = *(a1 + 9);
      goto LABEL_225;
    case 46:
      v29 = *(a1 + 9);
      goto LABEL_233;
    case 47:
      v27 = *(a1 + 9);
      goto LABEL_242;
    case 48:
      v54 = *(a1 + 9);
      goto LABEL_250;
    case 49:
      v49 = *(a1 + 9);
      goto LABEL_258;
    case 50:
      v36 = *(a1 + 9);
      goto LABEL_266;
    default:
      sub_298587E08(4001);
  }
}

_OWORD *sub_29858C744(_OWORD *result, _OWORD *a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6, int a7)
{
  if (a5 <= a6)
  {
    v7 = 0;
    v8 = a5;
    do
    {
      if (a7 >= 1)
      {
        for (i = 0; i != a7; ++i)
        {
          if (v8 == a4[i])
          {
            *(a3 + 4 * v7++) = i;
          }
        }
      }
    }

    while (v8++ != a6);
  }

  *(a2 + 76) = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (a7 > 0)
  {
    v11 = a7;
    do
    {
      v12 = *a4++;
      ++*(a2 + v12 + 1);
      --v11;
    }

    while (v11);
  }

  v13 = *a2;
  for (j = 4; j != 92; j += 4)
  {
    v13 += *(a2 + j);
    *(a2 + j) = v13;
  }

  *(result + 76) = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  if (a5 <= a6)
  {
    v15 = 0;
    v16 = a2 + a5 + 1;
    v17 = result + a5;
    v18 = a6 - a5 + 1;
    do
    {
      v19 = *v16 - *(v16 - 1) + v15;
      *v17++ = v19 - 1;
      v15 = 2 * v19;
      ++v16;
      --v18;
    }

    while (v18);
  }

  if (a5 < a6)
  {
    v20 = result + a5;
    v21 = a2 + a5 + 1;
    v22 = a6 - a5;
    do
    {
      v23 = *v20++;
      *v21 = 2 * v23 - *v21 + 2;
      ++v21;
      --v22;
    }

    while (v22);
  }

  return result;
}