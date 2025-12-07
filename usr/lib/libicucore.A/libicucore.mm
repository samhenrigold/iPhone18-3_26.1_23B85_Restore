uint64_t icu::Appendable::appendCodePoint(icu::Appendable *this, unsigned int a2)
{
  v2 = a2;
  if (a2 >= 0x10000)
  {
    result = (*(*this + 24))(this, ((a2 >> 10) - 10304));
    if (result)
    {
      return (*(*this + 24))(this, v2 & 0x3FF | 0xDC00u) != 0;
    }
  }

  else
  {
    v4 = *(*this + 24);

    return v4();
  }

  return result;
}

uint64_t icu::Appendable::appendString(uint64_t a1, _WORD *a2, int a3)
{
  v3 = a2;
  if (a3 < 0)
  {
    while (*v3)
    {
      ++v3;
      result = (*(*a1 + 24))(a1);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = &a2[a3];
  v6 = a2 + 1;
  do
  {
    result = (*(*a1 + 24))(a1, *(v6 - 1));
    if (result)
    {
      v8 = v6 >= v5;
    }

    else
    {
      v8 = 1;
    }

    ++v6;
  }

  while (!v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t icu::Appendable::getAppendBuffer(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v7 = a2 < 1 || a5 < a2;
  v8 = !v7;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  if (v8)
  {
    result = a4;
  }

  else
  {
    result = 0;
  }

  *a6 = v9;
  return result;
}

uint64_t sub_1951C9A6C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F09312B0;
  *(a1 + 856) = a2;
  *(a1 + 864) = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 748) = 0u;
  *(a1 + 764) = 0u;
  *(a1 + 716) = 0u;
  *(a1 + 732) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0u;
  *(a1 + 652) = 0u;
  *(a1 + 668) = 0u;
  *(a1 + 620) = 0u;
  *(a1 + 636) = 0u;
  *(a1 + 588) = 0u;
  *(a1 + 604) = 0u;
  *(a1 + 556) = 0u;
  *(a1 + 572) = 0u;
  *(a1 + 524) = 0u;
  *(a1 + 540) = 0u;
  *(a1 + 492) = 0u;
  *(a1 + 508) = 0u;
  *(a1 + 460) = 0u;
  *(a1 + 476) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 300) = 0u;
  *(a1 + 316) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 284) = 0u;
  v4 = sub_1951C9BC8(a1, 2048, 0, (a3 - 1));
  *(a1 + 780) = v4;
  v5 = 4096;
  for (i = 784; i != 848; i += 4)
  {
    v4 = sub_1951C9BC8(a1, v5, v4, (*(a1 + 864) - 1));
    *(a1 + i) = v4;
    v5 += 4096;
  }

  *(a1 + 848) = *(a1 + 864) - 1;
  *(a1 + 264) = sub_1951C9BC8(a1, 65533, *(a1 + 840), *(a1 + 844)) & 1;
  sub_1951C9C2C(a1);
  sub_1951C9E90(a1);
  return a1;
}

uint64_t sub_1951C9BC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 856);
  if (*(v4 + 4 * a3) > a2)
  {
    return a3;
  }

  if (a3 < a4)
  {
    v5 = (a4 + a3) >> 1;
    if (*(v4 + 4 * a4 - 4) > a2 && v5 != a3)
    {
      do
      {
        if (*(v4 + 4 * v5) > a2)
        {
          a4 = v5;
        }

        else
        {
          LODWORD(a3) = v5;
          a4 = a4;
        }

        v5 = (a4 + a3) >> 1;
      }

      while (v5 != a3);
    }
  }

  return a4;
}

char *sub_1951C9C2C(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 8;
  while (1)
  {
    v4 = *(v1 + 107);
    v5 = v2 + 1;
    v6 = *(v1 + 216);
    if (v5 >= v6)
    {
      v7 = 1114112;
    }

    else
    {
      v7 = *(v4 + 4 * v5);
      LODWORD(v5) = v2 + 2;
    }

    v8 = *(v4 + 4 * v2);
    if (v8 > 255)
    {
      break;
    }

    if (v7 <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v7;
    }

    LODWORD(v10) = v9 + ~v8;
    if (v10 >= 255 - v8)
    {
      v10 = (255 - v8);
    }

    else
    {
      v10 = v10;
    }

    result = memset(&v3[v8], 1, v10 + 1);
    v2 = v5;
    if (v7 >= 257)
    {
      v4 = *(v1 + 107);
      v6 = *(v1 + 216);
      break;
    }
  }

  v11 = 0;
  v12 = (v4 + 4);
  while (1)
  {
    v13 = v12;
    if (v11 + 1 >= v6)
    {
      break;
    }

    v11 += 2;
    v12 += 2;
    v14 = *v13;
    if (*v13 > 128)
    {
      goto LABEL_19;
    }
  }

  LODWORD(v11) = v11 + 1;
  v14 = 1114112;
LABEL_19:
  v15 = *(v13 - 1);
  if (v15 <= 128)
  {
    v16 = 128;
  }

  else
  {
    v16 = v15;
  }

  if (v15 <= 2047)
  {
    while (1)
    {
      v17 = v14 >= 2048 ? 2048 : v14;
      result = sub_1951CA0A8(v1 + 67, v16, v17);
      if (v14 > 2048)
      {
        break;
      }

      v18 = *(v1 + 107);
      v19 = v11 + 1;
      if (v19 >= *(v1 + 216))
      {
        v14 = 1114112;
      }

      else
      {
        v14 = *(v18 + 4 * v19);
        LODWORD(v19) = v11 + 2;
      }

      v16 = *(v18 + 4 * v11);
      LODWORD(v11) = v19;
      if (v16 >= 2048)
      {
        goto LABEL_33;
      }
    }

    v16 = 2048;
    goto LABEL_36;
  }

  LODWORD(v19) = v11;
LABEL_33:
  LODWORD(v11) = v19;
  if (!HIWORD(v16))
  {
LABEL_36:
    v20 = v1 + 524;
    v21 = 2048;
    do
    {
      if (v14 >= 0x10000)
      {
        v14 = 0x10000;
      }

      if (v16 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v16;
      }

      if (v22 < v14)
      {
        if ((v22 & 0x3F) != 0)
        {
          *&v20[4 * ((v22 >> 6) & 0x3F)] |= 65537 << (v22 >> 12);
          v22 = (v22 & 0xFFFFFFC0) + 64;
          v21 = v22;
        }

        if (v22 < v14)
        {
          v23 = v14 & 0xFFFFFFC0;
          if (v22 < (v14 & 0xFFFFFFC0))
          {
            result = sub_1951CA0A8(v1 + 131, v22 >> 6, v14 >> 6);
          }

          if ((v14 & 0x3F) != 0)
          {
            *&v20[4 * ((v14 >> 6) & 0x3F)] |= 65537 << (v14 >> 12);
            v14 = v23 + 64;
            v21 = v23 + 64;
          }
        }
      }

      if (v14 == 0x10000)
      {
        break;
      }

      v24 = *(v1 + 107);
      v25 = v11 + 1;
      if (v25 >= *(v1 + 216))
      {
        v14 = 1114112;
      }

      else
      {
        v14 = *(v24 + 4 * v25);
        LODWORD(v25) = v11 + 2;
      }

      v16 = *(v24 + 4 * v11);
      LODWORD(v11) = v25;
    }

    while (v16 < 0x10000);
  }

  return result;
}

__n128 sub_1951C9E90(uint64_t a1)
{
  if (*(a1 + 264))
  {
    for (i = 0; i != 256; i += 16)
    {
      *(a1 + 268 + i) |= __PAIR128__(0x300000003, 0x300000003);
    }

    for (j = 0; j != 128; j += 16)
    {
      *(a1 + 524 + j) |= __PAIR128__(0x100000001, 0x100000001);
    }

    v3 = 0;
    v4 = a1 + 652;
    do
    {
      result = (*(v4 + v3) & __PAIR128__(0xDFFFDFFFDFFFDFFFLL, 0xDFFFDFFFDFFFDFFFLL) | __PAIR128__(0x200000002000, 0x200000002000));
      *(v4 + v3) = result;
      v3 += 16;
    }

    while (v3 != 128);
  }

  else
  {
    v6 = 0;
    v7 = a1 + 652;
    do
    {
      result = (*(v7 + v6) & __PAIR128__(0xDFFFDFFFDFFFDFFFLL, 0xDFFFDFFFDFFFDFFFLL));
      *(v7 + v6) = result;
      v6 += 16;
    }

    while (v6 != 128);
  }

  return result;
}

__n128 sub_1951C9F28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F09312B0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 856) = a3;
  *(a1 + 864) = a4;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  v13 = *(a2 + 200);
  v14 = *(a2 + 216);
  v15 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v15;
  *(a1 + 216) = v14;
  *(a1 + 200) = v13;
  v16 = *(a2 + 268);
  v17 = *(a2 + 284);
  v18 = *(a2 + 316);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 316) = v18;
  *(a1 + 268) = v16;
  *(a1 + 284) = v17;
  v19 = *(a2 + 332);
  v20 = *(a2 + 348);
  v21 = *(a2 + 380);
  *(a1 + 364) = *(a2 + 364);
  *(a1 + 380) = v21;
  *(a1 + 332) = v19;
  *(a1 + 348) = v20;
  v22 = *(a2 + 396);
  v23 = *(a2 + 412);
  v24 = *(a2 + 444);
  *(a1 + 428) = *(a2 + 428);
  *(a1 + 444) = v24;
  *(a1 + 396) = v22;
  *(a1 + 412) = v23;
  v25 = *(a2 + 460);
  v26 = *(a2 + 476);
  v27 = *(a2 + 508);
  *(a1 + 492) = *(a2 + 492);
  *(a1 + 508) = v27;
  *(a1 + 460) = v25;
  *(a1 + 476) = v26;
  v28 = *(a2 + 524);
  v29 = *(a2 + 540);
  v30 = *(a2 + 572);
  *(a1 + 556) = *(a2 + 556);
  *(a1 + 572) = v30;
  *(a1 + 524) = v28;
  *(a1 + 540) = v29;
  v31 = *(a2 + 588);
  v32 = *(a2 + 604);
  v33 = *(a2 + 636);
  *(a1 + 620) = *(a2 + 620);
  *(a1 + 636) = v33;
  *(a1 + 588) = v31;
  *(a1 + 604) = v32;
  v34 = *(a2 + 652);
  v35 = *(a2 + 668);
  v36 = *(a2 + 700);
  *(a1 + 684) = *(a2 + 684);
  *(a1 + 700) = v36;
  *(a1 + 652) = v34;
  *(a1 + 668) = v35;
  v37 = *(a2 + 716);
  v38 = *(a2 + 732);
  v39 = *(a2 + 764);
  *(a1 + 748) = *(a2 + 748);
  *(a1 + 764) = v39;
  *(a1 + 716) = v37;
  *(a1 + 732) = v38;
  *(a1 + 780) = *(a2 + 780);
  result = *(a2 + 796);
  v41 = *(a2 + 812);
  v42 = *(a2 + 828);
  *(a1 + 844) = *(a2 + 844);
  *(a1 + 812) = v41;
  *(a1 + 828) = v42;
  *(a1 + 796) = result;
  return result;
}

_DWORD *sub_1951CA0A8(_DWORD *result, int a2, int a3)
{
  v3 = a2 >> 6;
  v4 = 1 << (a2 >> 6);
  if (a2 + 1 == a3)
  {
    result[a2 & 0x3F] |= v4;
  }

  else
  {
    v5 = a3 & 0x3F;
    if (v3 == a3 >> 6)
    {
      if ((a2 & 0x3Fu) < v5)
      {
        v6 = &result[a2 & 0x3F];
        v7 = v5 - (a2 & 0x3F);
        do
        {
          *v6++ |= v4;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v8 = a3 >> 6;
      if ((a2 & 0x3F) != 0)
      {
        v9 = a2 & 0x3F;
        do
        {
          result[v9++] |= v4;
        }

        while (v9 != 64);
        ++v3;
      }

      if (v3 < v8)
      {
        v10 = 0;
        v11 = -1 << v3;
        if (v8 < 32)
        {
          v12 = ~(-1 << v8);
        }

        else
        {
          v12 = -1;
        }

        v13 = vdupq_n_s32(v11 & v12);
        do
        {
          *&result[v10] = vorrq_s8(*&result[v10], v13);
          v10 += 4;
        }

        while (v10 != 64);
      }

      if (v8 == 32)
      {
        v14 = 0x80000000;
      }

      else
      {
        v14 = 1 << v8;
      }

      if ((a3 & 0x3F) != 0)
      {
        do
        {
          *result++ |= v14;
          --v5;
        }

        while (v5);
      }
    }
  }

  return result;
}

uint64_t sub_1951CA1A0(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFF)
  {
    if (a2 > 0x7FF)
    {
      if (a2 >> 11 < 0x1B || (a2 & 0xFFFFE000) == 0xE000)
      {
        v5 = a2 >> 12;
        v2 = (*(a1 + 4 * ((a2 >> 6) & 0x3F) + 524) >> (a2 >> 12)) & 0x10001;
        if (v2 <= 1)
        {
          return v2;
        }

        v3 = *(a1 + 780 + 4 * v5);
        v4 = *(a1 + 780 + 4 * (v5 + 1));
      }

      else
      {
        if (HIWORD(a2) > 0x10u)
        {
          LOBYTE(v2) = 0;
          return v2;
        }

        v3 = *(a1 + 832);
        v4 = *(a1 + 848);
      }

      LOBYTE(v2) = sub_1951C9BC8(a1, a2, v3, v4) & 1;
      return v2;
    }

    v2 = (*(a1 + 4 * (a2 & 0x3F) + 268) >> (a2 >> 6)) & 1;
  }

  else
  {
    LOBYTE(v2) = *(a1 + a2 + 8);
  }

  return v2;
}

unsigned __int16 *sub_1951CA260(unsigned int *a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4)
{
  v7 = a1 + 195;
  v8 = a1 + 67;
  v9 = a1 + 2;
  v10 = a1 + 131;
  if (a4)
  {
    while (1)
    {
      v11 = *a2;
      if (v11 > 0xFF)
      {
        if (v11 > 0x7FF)
        {
          if ((v11 - 57344) > 0xFFFFF7FF)
          {
            v12 = a2 + 1;
            v15 = v11 >> 10 > 0x36 || v12 == a3;
            if (v15 || (v18 = *v12, (v18 - 57344) <= 0xFFFFFBFF))
            {
              v16 = a1[208];
              v17 = a1[209];
              goto LABEL_19;
            }

            if ((sub_1951C9BC8(a1, v18 + (v11 << 10) - 56613888, a1[211], a1[212]) & 1) == 0)
            {
              return a2;
            }
          }

          else
          {
            v13 = v11 >> 12;
            v14 = (v10[(v11 >> 6) & 0x3F] >> (v11 >> 12)) & 0x10001;
            if (v14 > 1)
            {
              v16 = v7[v13];
              v17 = v7[(v13 + 1)];
LABEL_19:
              v12 = a2;
              if ((sub_1951C9BC8(a1, v11, v16, v17) & 1) == 0)
              {
                return a2;
              }

              goto LABEL_20;
            }

            v12 = a2;
            if (!v14)
            {
              return a2;
            }
          }
        }

        else
        {
          v12 = a2;
          if (((v8[v11 & 0x3F] >> (v11 >> 6)) & 1) == 0)
          {
            return a2;
          }
        }
      }

      else
      {
        v12 = a2;
        if (!*(v9 + v11))
        {
          return a2;
        }
      }

LABEL_20:
      a2 = v12 + 1;
      if (v12 + 1 >= a3)
      {
        return a2;
      }
    }
  }

  do
  {
    v20 = *a2;
    if (v20 <= 0xFF)
    {
      v21 = a2;
      if (*(v9 + v20))
      {
        return a2;
      }

      goto LABEL_46;
    }

    if (v20 <= 0x7FF)
    {
      v21 = a2;
      if ((v8[v20 & 0x3F] >> (v20 >> 6)))
      {
        return a2;
      }

      goto LABEL_46;
    }

    if ((v20 - 57344) > 0xFFFFF7FF)
    {
      v21 = a2 + 1;
      if (v20 >> 10 <= 0x36 && v21 != a3)
      {
        v19 = *v21;
        if ((v19 - 57344) > 0xFFFFFBFF)
        {
          if (sub_1951C9BC8(a1, v19 + (v20 << 10) - 56613888, a1[211], a1[212]))
          {
            return a2;
          }

          goto LABEL_46;
        }
      }

      v25 = a1[208];
      v26 = a1[209];
    }

    else
    {
      v22 = v20 >> 12;
      v23 = (v10[(v20 >> 6) & 0x3F] >> (v20 >> 12)) & 0x10001;
      if (v23 <= 1)
      {
        v21 = a2;
        if (v23)
        {
          return a2;
        }

        goto LABEL_46;
      }

      v25 = v7[v22];
      v26 = v7[(v22 + 1)];
    }

    v21 = a2;
    if (sub_1951C9BC8(a1, v20, v25, v26))
    {
      return a2;
    }

LABEL_46:
    a2 = v21 + 1;
  }

  while (v21 + 1 < a3);
  return a2;
}

uint64_t sub_1951CA4A8(unsigned int *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v7 = a1 + 131;
  v8 = a1 + 195;
  v9 = a1 + 67;
  v10 = a1 + 2;
  if (a4)
  {
    v11 = a3;
    while (1)
    {
      v13 = *(v11 - 2);
      v11 -= 2;
      v12 = v13;
      if (v13 > 0xFF)
      {
        if (v12 > 0x7FF)
        {
          if ((v12 - 57344) > 0xFFFFF7FF)
          {
            v16 = v12 >> 10 < 0x37 || v11 == a2;
            if (v16 || (v17 = *(v4 - 4), ((v17 + 9216) >> 10) <= 0x3Eu))
            {
              v18 = a1[208];
              v19 = a1[209];
              goto LABEL_20;
            }

            v11 = v4 - 4;
            if ((sub_1951C9BC8(a1, v12 + (v17 << 10) - 56613888, a1[211], a1[212]) & 1) == 0)
            {
              return v4;
            }
          }

          else
          {
            v14 = v12 >> 12;
            v15 = (v7[(v12 >> 6) & 0x3F] >> (v12 >> 12)) & 0x10001;
            if (v15 > 1)
            {
              v18 = v8[v14];
              v19 = v8[(v14 + 1)];
LABEL_20:
              if ((sub_1951C9BC8(a1, v12, v18, v19) & 1) == 0)
              {
                return v4;
              }

              goto LABEL_21;
            }

            if (!v15)
            {
              return v4;
            }
          }
        }

        else if (((v9[v12 & 0x3F] >> (v12 >> 6)) & 1) == 0)
        {
          return v4;
        }
      }

      else if (!*(v10 + v12))
      {
        return v4;
      }

LABEL_21:
      v4 = v11;
      if (v11 == a2)
      {
        return a2;
      }
    }
  }

  v20 = a3;
  do
  {
    v22 = *(v20 - 2);
    v20 -= 2;
    v21 = v22;
    if (v22 <= 0xFF)
    {
      if (*(v10 + v21))
      {
        return v4;
      }

      goto LABEL_44;
    }

    if (v21 <= 0x7FF)
    {
      if ((v9[v21 & 0x3F] >> (v21 >> 6)))
      {
        return v4;
      }

      goto LABEL_44;
    }

    if ((v21 - 57344) <= 0xFFFFF7FF)
    {
      v23 = v21 >> 12;
      v24 = (v7[(v21 >> 6) & 0x3F] >> (v21 >> 12)) & 0x10001;
      if (v24 <= 1)
      {
        if (v24)
        {
          return v4;
        }

        goto LABEL_44;
      }

      v27 = v8[v23];
      v28 = v8[(v23 + 1)];
      goto LABEL_43;
    }

    v25 = v21 >> 10 < 0x37 || v20 == a2;
    if (v25 || (v26 = *(v4 - 4), ((v26 + 9216) >> 10) <= 0x3Eu))
    {
      v27 = a1[208];
      v28 = a1[209];
LABEL_43:
      if (sub_1951C9BC8(a1, v21, v27, v28))
      {
        return v4;
      }

      goto LABEL_44;
    }

    v20 = v4 - 4;
    if (sub_1951C9BC8(a1, v21 + (v26 << 10) - 56613888, a1[211], a1[212]))
    {
      return v4;
    }

LABEL_44:
    v4 = v20;
  }

  while (v20 != a2);
  return a2;
}

char *sub_1951CA700(uint64_t a1, char *a2, int a3, int a4)
{
  v5 = a2;
  v7 = &a2[a3];
  if ((*a2 & 0x80000000) == 0)
  {
    v8 = *a2;
    v9 = a1 + 8;
    v10 = a3 - 1;
    if (a4)
    {
      while (1)
      {
        if (!*(v9 + v8))
        {
          return v5;
        }

        if (!v10)
        {
          return &a2[a3];
        }

        v8 = *++v5;
        --v10;
        if (*v5 < 0)
        {
          goto LABEL_6;
        }
      }
    }

    do
    {
      if (*(v9 + v8))
      {
        return v5;
      }

      if (!v10)
      {
        return &a2[a3];
      }

      v8 = *++v5;
      --v10;
    }

    while ((*v5 & 0x80000000) == 0);
LABEL_6:
    a3 = v7 - v5;
  }

  v11 = a4 != 0;
  v12 = v7 - 1;
  if ((*(v7 - 1) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  if (*(v7 - 1) > 0xBFu)
  {
LABEL_16:
    if (*(a1 + 264) == v11)
    {
      v13 = v7;
    }

    else
    {
      v13 = v12;
    }

    v7 = v12;
    goto LABEL_20;
  }

  if (a3 >= 2)
  {
    v12 = v7 - 2;
    v14 = *(v7 - 2);
    if (v14 > 0xDF)
    {
      goto LABEL_16;
    }

    if (v14 <= -65 && a3 != 2)
    {
      v12 = v7 - 3;
      v13 = v7;
      if (*(v7 - 3) < 0xF0u)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

LABEL_8:
  v13 = v7;
LABEL_20:
  if (v5 >= v7)
  {
    return v13;
  }

  v15 = a1 + 8;
  v16 = a1 + 780;
  while (1)
  {
    v17 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
      break;
    }

LABEL_32:
    v21 = v5 + 1;
    if (v17 < 0xE0)
    {
      if (v17 < 0xC0 || (v26 = *v21 ^ 0x80, v26 > 0x3F))
      {
LABEL_48:
        if (*(a1 + 264) != v11)
        {
          return v5;
        }

        goto LABEL_49;
      }

      if (((a4 != 0) ^ (*(a1 + 268 + 4 * v26) >> v17)))
      {
        return v5;
      }

      v21 = v5 + 2;
    }

    else
    {
      v22 = *v21 ^ 0x80;
      if (v17 > 0xEF)
      {
        if (v22 > 0x3F)
        {
          goto LABEL_48;
        }

        v27 = v5[2] ^ 0x80;
        if (v27 > 0x3F)
        {
          goto LABEL_48;
        }

        v28 = v5[3] ^ 0x80;
        if (v28 > 0x3F)
        {
          goto LABEL_48;
        }

        v29 = (v17 << 18) + (v22 << 12);
        if ((v29 - 62980096) >> 20)
        {
          v30 = *(a1 + 264);
        }

        else
        {
          v30 = sub_1951C9BC8(a1, v28 | (v27 << 6) | (v29 - 62914560), *(a1 + 844), *(a1 + 848)) & 1;
        }

        if (v11 != v30)
        {
          return v5;
        }

        v21 = v5 + 4;
      }

      else
      {
        if (v22 > 0x3F)
        {
          goto LABEL_48;
        }

        v23 = v5[2] ^ 0x80;
        if (v23 > 0x3F)
        {
          goto LABEL_48;
        }

        v24 = v17 & 0xF;
        v25 = (*(a1 + 524 + 4 * v22) >> v24) & 0x10001;
        if (v25 > 1)
        {
          if (((a4 != 0) ^ sub_1951C9BC8(a1, (v22 << 6) | (v24 << 12) | v23, *(v16 + 4 * v24), *(v16 + 4 * (v24 + 1)))))
          {
            return v5;
          }
        }

        else if (v25 != v11)
        {
          return v5;
        }

        v21 = v5 + 3;
      }
    }

LABEL_49:
    v5 = v21;
    if (v21 >= v7)
    {
      return v13;
    }
  }

  v18 = v5 + 1;
  if (a4)
  {
    while (*(v15 + v17))
    {
      if (v18 == v7)
      {
        return v13;
      }

      v19 = *v18++;
      v17 = v19;
      if (v19 < 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    while (!*(v15 + v17))
    {
      if (v18 == v7)
      {
        return v13;
      }

      v20 = *v18++;
      v17 = v20;
      if (v20 < 0)
      {
LABEL_31:
        v5 = v18 - 1;
        goto LABEL_32;
      }
    }
  }

  return v18 - 1;
}

uint64_t sub_1951CAA2C(uint64_t a1, uint8_t *s, uint64_t a3, int a4)
{
  v7 = a4 != 0;
  v8 = a1 + 8;
  v9 = a1 + 524;
  v19 = a1 + 780;
  v10 = a1 + 268;
  v11 = s - 2;
  while (1)
  {
    v12 = a3 - 1;
    pi = a3 - 1;
    v13 = s[v12];
    if ((v13 & 0x80) == 0)
    {
      break;
    }

LABEL_16:
    v16 = utf8_prevCharSafeBody(s, 0, &pi, v13, -3);
    if (v16 > 2047)
    {
      if (HIWORD(v16))
      {
        if ((a4 != 0) != (sub_1951C9BC8(a1, v16, *(a1 + 844), *(a1 + 848)) & 1))
        {
          return (v12 + 1);
        }
      }

      else
      {
        v17 = (*(v9 + 4 * ((v16 >> 6) & 0x3F)) >> (v16 >> 12)) & 0x10001;
        if (v17 > 1)
        {
          if (((a4 != 0) ^ sub_1951C9BC8(a1, v16, *(v19 + 4 * (v16 >> 12)), *(v19 + 4 * ((v16 >> 12) + 1)))))
          {
            return (v12 + 1);
          }
        }

        else if (v17 != v7)
        {
          return (v12 + 1);
        }
      }
    }

    else if ((a4 != 0) != ((*(v10 + 4 * (v16 & 0x3F)) >> (v16 >> 6)) & 1))
    {
      return (v12 + 1);
    }

    a3 = pi;
    if (pi <= 0)
    {
      return 0;
    }
  }

  if (a4)
  {
    if (*(v8 + s[v12]))
    {
      v14 = a3;
      LODWORD(v12) = a3 - 2;
      do
      {
        a3 = v14 - 1;
        if (v14 == 1)
        {
          break;
        }

        pi = v12;
        v13 = v11[v14];
        if ((v13 & 0x80) != 0)
        {
          goto LABEL_16;
        }

        LODWORD(v12) = v12 - 1;
        --v14;
      }

      while (*(v8 + v13));
    }
  }

  else if (!*(v8 + s[v12]))
  {
    v15 = a3;
    LODWORD(v12) = a3 - 2;
    do
    {
      a3 = v15 - 1;
      if (v15 == 1)
      {
        break;
      }

      pi = v12;
      v13 = v11[v15];
      if ((v13 & 0x80) != 0)
      {
        goto LABEL_16;
      }

      LODWORD(v12) = v12 - 1;
      --v15;
    }

    while (!*(v8 + v13));
  }

  return a3;
}

void *sub_1951CAC4C(void *result)
{
  *result = &unk_1F0931338;
  result[1] = 0;
  return result;
}

void sub_1951CAC6C(icu::UObject *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F0931338;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = icu::UnicodeSet::~UnicodeSet(a2, v3);
    MEMORY[0x19A8B2600](v4, 0x10B1C403432821BLL);
  }

  *(this + 1) = 0;

  icu::UObject::~UObject(this);
}

void sub_1951CACE4(icu::UObject *a1@<X0>, void *a2@<X8>)
{
  sub_1951CAC6C(a1, a2);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeSet *sub_1951CAD1C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (icu::UnicodeSet::contains(result, a2) != 0);
  }

  return result;
}

uint64_t sub_1951CAD48(uint64_t a1, UText *ut, int a3, int a4, uint64_t a5, uint64_t a6, int *a7)
{
  if (*a7 <= 0)
  {
    utext_setNativeIndex(ut, a3);
    while (1)
    {
      v10 = utext_current32(ut);
      if (utext_getNativeIndex(ut) >= a4 || !icu::UnicodeSet::contains(*(a1 + 8), v10))
      {
        break;
      }

      utext_next32(ut);
    }
  }

  return 0;
}

icu::UnicodeSet *sub_1951CADD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (!v4)
  {
    operator new();
  }

  result = icu::UnicodeSet::contains(v4, a2);
  if (!result)
  {
    pErrorCode = U_ZERO_ERROR;
    IntPropertyValue = u_getIntPropertyValue(v2, UCHAR_SCRIPT);
    return icu::UnicodeSet::applyIntPropertyValue(*(a1 + 8), 4106, IntPropertyValue, &pErrorCode);
  }

  return result;
}

void *sub_1951CAE54(void *result)
{
  *result = &unk_1F0931378;
  result[1] = 0;
  return result;
}

void *sub_1951CAE74(void *a1)
{
  *a1 = &unk_1F0931378;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_1951CAEE0(void *a1)
{
  *a1 = &unk_1F0931378;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

void sub_1951CAF6C(uint64_t a1, int *a2)
{
  umtx_lock(&unk_1EAEC94C0);
  if (!*(a1 + 8))
  {
    operator new();
  }

  umtx_unlock(&unk_1EAEC94C0);
}

uint64_t sub_1951CB028(uint64_t (***a1)(icu::UVector **, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v13 = U_ZERO_ERROR;
  sub_1951CAF6C(a1, &v13);
  if (v13 > U_ZERO_ERROR)
  {
    return 0;
  }

  umtx_lock(&unk_1EAEC9510);
  v7 = *(a1[1] + 2);
  if (v7 < 1)
  {
LABEL_8:
    v10 = (*a1)[4](a1, a2, a3);
    if (v10)
    {
      v11 = a1[1];
      if (*(v11 + 3))
      {
        icu::UVector::adoptElement(v11, v10, &v13);
      }

      else
      {
        icu::UVector::addElement(v11, v10, &v13);
      }
    }

    if (v13 <= U_ZERO_ERROR)
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v8 = v7 + 1;
    while (1)
    {
      v9 = icu::UVector::elementAt(a1[1], v8 - 2);
      if (v9)
      {
        v6 = v9;
        if ((*(*v9 + 24))(v9, a2, a3))
        {
          break;
        }
      }

      if (--v8 <= 1)
      {
        goto LABEL_8;
      }
    }
  }

  umtx_unlock(&unk_1EAEC9510);
  return v6;
}

void *sub_1951CB174(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  Script = uscript_getScript(a2, &v9);
  if (v9 > 0)
  {
    return 0;
  }

  v5 = Script;
  LSTMDataForScript = CreateLSTMDataForScript(Script, &v9);
  if (v9 <= 0 && LSTMDataForScript != 0)
  {
    v8 = LSTMDataForScript;
    result = CreateLSTMBreakEngine(v5, LSTMDataForScript, &v9);
    if (v9 <= 0 && result)
    {
      return result;
    }

    if (result)
    {
      (*(*result + 8))(result);
    }

    else
    {
      DeleteLSTMData(v8);
    }
  }

  v9 = 0;
  result = (*(*a1 + 40))(a1, v5);
  if (result)
  {
    if (v5 > 22)
    {
      if (v5 > 27)
      {
        if (v5 == 28)
        {
          operator new();
        }

        if (v5 == 38)
        {
          operator new();
        }
      }

      else
      {
        if (v5 == 23)
        {
          operator new();
        }

        if (v5 == 24)
        {
          operator new();
        }
      }

      goto LABEL_31;
    }

    if (v5 > 19)
    {
      if (v5 != 20 && v5 != 22)
      {
        goto LABEL_31;
      }
    }

    else if (v5 != 17)
    {
      if (v5 == 18)
      {
        operator new();
      }

LABEL_31:
      (*(*result + 8))(result);
      return 0;
    }

    operator new();
  }

  return result;
}

const UChar *sub_1951CB41C(uint64_t a1, int32_t a2)
{
  v23[8] = *MEMORY[0x1E69E9840];
  v20 = U_ZERO_ERROR;
  v3 = ures_open("icudt76l-brkitr", "", &v20);
  v4 = ures_getByKeyWithFallback(v3, "dictionaries", v3, &v20);
  count = 0;
  ShortName = uscript_getShortName(a2);
  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v4, ShortName, &count, &v20);
  if (v20 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    v7 = StringByKeyWithFallback;
    memset(&v23[1], 0, 56);
    v23[0] = &v23[1] + 5;
    LODWORD(v23[1]) = 40;
    memset(&v22[1], 0, 56);
    v22[0] = &v22[1] + 5;
    LODWORD(v22[1]) = 40;
    v8 = u_memrchr(StringByKeyWithFallback, 0x2Eu, count);
    v9 = count;
    if (v8)
    {
      v10 = (v8 - v7) >> 1;
      v18 = v8 + 1;
      icu::UnicodeString::UnicodeString(v21, 0, &v18, count + ~v10);
      icu::CharString::appendInvariantChars(v22, v21, &v20);
      icu::UnicodeString::~UnicodeString(v11, v21);
      count = v10;
      v9 = v10;
    }

    v17 = v7;
    icu::UnicodeString::UnicodeString(v21, 0, &v17, v9);
    icu::CharString::appendInvariantChars(v23, v21, &v20);
    icu::UnicodeString::~UnicodeString(v12, v21);
    ures_close(v4);
    v13 = udata_open("icudt76l-brkitr", v22[0], v23[0], &v20);
    if (v20 <= U_ZERO_ERROR)
    {
      v14 = v13;
      v15 = *(udata_getMemory(v13) + 16) & 7;
      if (!v15)
      {
        operator new();
      }

      if (v15 == 1)
      {
        operator new();
      }

      udata_close(v14);
      v7 = 0;
    }

    else if (v7)
    {
      v7 = 0;
      v20 = U_ZERO_ERROR;
    }

    if (BYTE4(v22[1]))
    {
      free(v22[0]);
    }

    if (BYTE4(v23[1]))
    {
      free(v23[0]);
    }
  }

  else
  {
    ures_close(v4);
    return 0;
  }

  return v7;
}

void sub_1951CB728(uint64_t a1, uint64_t a2, int *a3)
{
  if (!a2 && *a3 <= 0)
  {
    *a3 = 7;
  }

  sub_1951CAF6C(a1, a3);
  operator new();
}

void sub_1951CB818(icu::UObject *this)
{
  *this = &unk_1F09313B8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UObject::~UObject(this);
}

void sub_1951CB898(icu::UObject *a1)
{
  sub_1951CB818(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951CB90C(uint64_t a1, UText *ut, int a3, int a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  utext_setNativeIndex(ut, a3);
  NativeIndex = utext_getNativeIndex(ut);
  while (1)
  {
    v13 = utext_current32(ut);
    v14 = utext_getNativeIndex(ut);
    if (v14 >= a4 || !(*(**(a1 + 8) + 32))(*(a1 + 8), v13))
    {
      break;
    }

    utext_next32(ut);
  }

  v15 = *(a5 + 8);
  v16 = (v14 - NativeIndex + 1);
  v17 = v15 + v16;
  if (v15 + v16 < 0 || *(a5 + 12) < v17)
  {
    icu::UVector32::expandCapacity(a5, v17, a7);
  }

  if (*a7 > 0)
  {
    return 0;
  }

  icu::UVector32::setSize(a5, v16 + 2 * v15);
  v18 = (*(**(a1 + 8) + 40))(*(a1 + 8), ut, NativeIndex, v14, *(a5 + 24) + 4 * v15, v16, a7);
  if (*a7 > 0)
  {
    return 0;
  }

  v19 = v18;
  icu::UVector32::setSize(a5, v18 + v15);
  utext_setNativeIndex(ut, v14);
  return v19;
}

char *icu::BreakIterator::buildInstance(char **this, const icu::Locale *a2, UErrorCode *a3, UErrorCode *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  *v20 = 0;
  memset(&__src[1], 0, 56);
  __src[0] = &__src[1] + 5;
  LODWORD(__src[1]) = 40;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  if (*a3 <= 0)
  {
    v7 = v23;
    ures_initStackObject(v23);
    v8 = v21;
    ures_initStackObject(v21);
    v9 = ures_openNoDefault("icudt76l-brkitr", this[5], a3);
    v10 = v9;
    if (*a3 <= 0)
    {
      v7 = ures_getByKeyWithFallback(v9, "boundaries", v23, a3);
      v8 = ures_getByKeyWithFallback(v7, a2, v21, a3);
      String = ures_getString(v8, v20, a3);
      v12 = *a3;
      if (*v20 < 0x100u)
      {
        if (v12 <= U_ZERO_ERROR)
        {
          v14 = String;
          if (String)
          {
            LocaleInternal = ures_getLocaleInternal(v8, a3);
            icu::CharString::append(__src, LocaleInternal, -1, a3);
            v16 = u_strchr(v14, 0x2Eu);
            if (v16)
            {
              v17 = v16 - v14;
              v18 = (v16 - v14) >> 1;
              u_UCharsToChars(v16 + 1, &v20[4], 4);
              u_UCharsToChars(v14, v26, v18);
              v19 = (v17 >> 1);
            }

            else
            {
              v19 = 0;
            }

            v26[v19] = 0;
          }
        }
      }

      else
      {
        *v20 = 0;
        if (v12 <= U_ZERO_ERROR)
        {
          *a3 = U_BUFFER_OVERFLOW_ERROR;
        }
      }
    }

    ures_close(v7);
    ures_close(v8);
    udata_open("icudt76l-brkitr", &v20[4], v26, a3);
    if (*a3 < 1)
    {
      operator new();
    }

    ures_close(v10);
  }

  if (BYTE4(__src[1]))
  {
    free(__src[0]);
  }

  return 0;
}

char *icu::BreakIterator::createWordInstance(char **this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a2 <= 0)
  {
    return icu::BreakIterator::makeInstance(this, 1, a2, a4);
  }

  else
  {
    return 0;
  }
}

char *icu::BreakIterator::createInstance(char **this, const icu::Locale *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a3 <= 0)
  {
    return icu::BreakIterator::makeInstance(this, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

char *icu::BreakIterator::createLineInstance(char **this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a2 <= 0)
  {
    return icu::BreakIterator::makeInstance(this, 2, a2, a4);
  }

  else
  {
    return 0;
  }
}

char *icu::BreakIterator::createCharacterInstance(char **this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a2 <= 0)
  {
    return icu::BreakIterator::makeInstance(this, 0, a2, a4);
  }

  else
  {
    return 0;
  }
}

char *icu::BreakIterator::createSentenceInstance(char **this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a2 <= 0)
  {
    return icu::BreakIterator::makeInstance(this, 3, a2, a4);
  }

  else
  {
    return 0;
  }
}

char *icu::BreakIterator::createTitleInstance(char **this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a2 <= 0)
  {
    return icu::BreakIterator::makeInstance(this, 4, a2, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::BreakIterator::BreakIterator(uint64_t this)
{
  *this = &unk_1F0931468;
  *(this + 8) = 0;
  *(this + 326) = 0;
  *(this + 12) = 0;
  *(this + 169) = 0;
  return this;
}

icu::BreakIterator *icu::BreakIterator::BreakIterator(icu::BreakIterator *this, const icu::BreakIterator *a2)
{
  *this = &unk_1F0931468;
  v4 = this + 169;
  strncpy(this + 12, a2 + 12, 0x9DuLL);
  strncpy(v4, a2 + 169, 0x9DuLL);
  strncpy(this + 326, a2 + 326, 0x9DuLL);
  return this;
}

char *icu::BreakIterator::operator=(char *a1, char *a2)
{
  if (a1 != a2)
  {
    strncpy(a1 + 12, a2 + 12, 0x9DuLL);
    strncpy(a1 + 169, a2 + 169, 0x9DuLL);
    strncpy(a1 + 326, a2 + 326, 0x9DuLL);
  }

  return a1;
}

char *icu::BreakIterator::makeInstance(char **this, const icu::Locale *a2, UErrorCode *a3, UErrorCode *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v8 = icu::BreakIterator::buildInstance(this, "sentence", a3, a4);
        memset(v31, 0, 32);
        v28[0] = U_ZERO_ERROR;
        KeywordValue = icu::Locale::getKeywordValue(this, "ss", v31, 32, v28);
        if (v28[0] <= U_ZERO_ERROR && KeywordValue >= 1 && !(*v31 ^ 0x647261646E617473 | v31[8]))
        {
          Instance = icu::FilteredBreakIteratorBuilder::createInstance(this, v28, v10);
          if (v28[0] <= U_ZERO_ERROR)
          {
            v12 = Instance;
            v8 = (*(*Instance + 40))(Instance, v8, a3);
            (*(*v12 + 8))(v12);
          }
        }

        goto LABEL_63;
      }

      if (a2 == 4)
      {
        v7 = "title";
LABEL_18:
        v8 = icu::BreakIterator::buildInstance(this, v7, a3, a4);
        goto LABEL_63;
      }

      goto LABEL_19;
    }

    v34 = 0;
    v33 = 0;
    memset(v35, 0, sizeof(v35));
    strcpy(__s, "line");
    v24 = 0;
    memset(v31, 0, 64);
    icu::StringPiece::StringPiece(&v25, "lb");
    v13 = v25;
    v14 = v26;
    memset(&v31[8], 0, 56);
    *v31 = v31 | 0xD;
    *&v31[8] = 40;
    *v28 = 0;
    v29[0] = 0;
    icu::CharStringByteSink::CharStringByteSink(v28, v31);
    *v28 = &unk_1F0931548;
    icu::Locale::getKeywordValue(this, v13, v14, v28, &v24);
    icu::CharStringByteSink::~CharStringByteSink(v28);
    if (v24 <= 0)
    {
      if ((icu::StringPiece::StringPiece(v15, "strict"), *&v31[56] == LODWORD(v29[0])) && (!LODWORD(v29[0]) || !memcmp(*v31, *v28, SLODWORD(v29[0]))) || (icu::StringPiece::StringPiece(v28, "normal"), *&v31[56] == LODWORD(v29[0])) && (!LODWORD(v29[0]) || !memcmp(*v31, *v28, SLODWORD(v29[0]))) || (icu::StringPiece::StringPiece(v28, "loose"), *&v31[56] == LODWORD(v29[0])) && (!LODWORD(v29[0]) || !memcmp(*v31, *v28, SLODWORD(v29[0]))))
      {
        *&__s[strlen(__s)] = 95;
        strcat(__s, *v31);
      }
    }

    if (*(this + 4) ^ 0x616A | *(this + 10) && *(this + 4) ^ 0x6F6B | *(this + 10))
    {
      goto LABEL_45;
    }

    icu::StringPiece::StringPiece(&v22, "lw");
    if (v24 < 1)
    {
      v17 = v22;
      v18 = v23;
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      *v28 = v29 + 5;
      LODWORD(v29[0]) = 40;
      v25 = 0;
      v26 = 0;
      icu::CharStringByteSink::CharStringByteSink(&v25, v28);
      v25 = &unk_1F0931548;
      icu::Locale::getKeywordValue(this, v17, v18, &v25, &v24);
      icu::CharStringByteSink::~CharStringByteSink(&v25);
    }

    else
    {
      *v28 = v29 + 5;
      LODWORD(v29[0]) = 40;
      WORD2(v29[0]) = 0;
      LODWORD(v30) = 0;
    }

    icu::CharString::operator=(v31, v28);
    if (BYTE4(v29[0]))
    {
      free(*v28);
    }

    if (v24 > 0)
    {
      goto LABEL_45;
    }

    icu::StringPiece::StringPiece(v28, "phrase");
    if (*&v31[56] != LODWORD(v29[0]))
    {
      goto LABEL_45;
    }

    if (LODWORD(v29[0]))
    {
      v19 = *v31;
      if (memcmp(*v31, *v28, SLODWORD(v29[0])))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v19 = *v31;
    }

    *&__s[strlen(__s)] = 95;
    strcat(__s, v19);
LABEL_45:
    v8 = icu::BreakIterator::buildInstance(this, __s, a3, v16);
    if (!v8 || *a3 > 0)
    {
LABEL_61:
      if (v31[12])
      {
        free(*v31);
      }

      goto LABEL_63;
    }

    if (v24 > 0)
    {
      goto LABEL_48;
    }

    icu::StringPiece::StringPiece(v28, "keepall");
    if (*&v31[56] == LODWORD(v29[0]) && (!LODWORD(v29[0]) || !memcmp(*v31, *v28, SLODWORD(v29[0]))) || (icu::StringPiece::StringPiece(v28, "keep-all"), *&v31[56] == LODWORD(v29[0])) && (!LODWORD(v29[0]) || !memcmp(*v31, *v28, SLODWORD(v29[0]))))
    {
      v20 = 127;
      goto LABEL_60;
    }

    icu::StringPiece::StringPiece(v28, "keep-hangul");
    if (*&v31[56] == LODWORD(v29[0]) && (!LODWORD(v29[0]) || !memcmp(*v31, *v28, SLODWORD(v29[0]))))
    {
      v20 = 1;
    }

    else
    {
LABEL_48:
      v20 = 0;
    }

LABEL_60:
    *(v8 + 2) = v20;
    icu::Locale::Locale(v27, this);
    (*(*v8 + 208))(v8, v27);
    icu::Locale::~Locale(v21, v27);
    goto LABEL_61;
  }

  if (!a2)
  {
    v7 = "grapheme";
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v7 = "word";
    goto LABEL_18;
  }

LABEL_19:
  v8 = 0;
  *a3 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_63:
  if (*a3 >= 1)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

icu::Locale *icu::BreakIterator::getLocale@<X0>(const char *a1@<X0>, int a2@<W1>, icu::Locale *a3@<X8>, int *a4@<X2>)
{
  if (a2 == 2)
  {

    return icu::Locale::Locale(a3, a1 + 326, 0, 0, 0);
  }

  else
  {
    v7[2] = v4;
    v7[3] = v5;
    v7[0] = a1 + 169;
    v7[1] = a1 + 12;
    return icu::LocaleBased::getLocale(v7, a2, a4, a3);
  }
}

uint64_t icu::BreakIterator::getLocaleID(uint64_t a1, int a2, int *a3)
{
  if (a2 == 2)
  {
    return a1 + 326;
  }

  v6[2] = v3;
  v6[3] = v4;
  v6[0] = a1 + 169;
  v6[1] = a1 + 12;
  return icu::LocaleBased::getLocaleID(v6, a2, a3);
}

uint64_t icu::BreakIterator::getRuleStatusVec(icu::BreakIterator *this, int *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 <= 0)
  {
    *a4 = U_BUFFER_OVERFLOW_ERROR;
  }

  else
  {
    *a2 = 0;
  }

  return 1;
}

icu::BreakIterator *icu::BreakIterator::BreakIterator(icu::BreakIterator *this, const icu::Locale *a2, const icu::Locale *a3)
{
  *this = &unk_1F0931468;
  v5[0] = this + 169;
  v5[1] = this + 12;
  icu::LocaleBased::setLocaleIDs(v5, a2, a3);
  return this;
}

void sub_1951CC750(icu::CharStringByteSink *a1)
{
  icu::CharStringByteSink::~CharStringByteSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::ByteSinkUtil::appendChange(int a1, uint64_t a2, int a3, uint64_t a4, icu::Edits *a5, int *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    return 0;
  }

  v28 = 0;
  memset(v27, 0, sizeof(v27));
  if (a3 < 1)
  {
    v10 = 0;
    goto LABEL_30;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v26 = 0;
    v12 = 2 * (a3 - v11);
    if (a3 - v11 >= 0x3FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    if (a3 - v11 >= 715827882)
    {
      v13 = v12;
    }

    else
    {
      v13 = (3 * (a3 - v11));
    }

    v14 = (*(*a4 + 24))(a4, 4, v13, v27, 200, &v26);
    v15 = v26;
    v26 -= 3;
    if (v15 < 4)
    {
      v16 = 0;
      goto LABEL_27;
    }

    LODWORD(v16) = 0;
    do
    {
      v17 = v11 + 1;
      v18 = *(a2 + 2 * v11);
      if ((v18 & 0xFC00) == 0xD800)
      {
        v19 = *(a2 + 2 * v17);
        LODWORD(v17) = v11 + 2;
        v18 = v19 + (v18 << 10) - 56613888;
        if (HIWORD(v18))
        {
          v20 = (v14 + v16);
          *v20 = (v18 >> 18) | 0xF0;
          v21 = v16 + 2;
          v20[1] = (v18 >> 12) & 0x3F | 0x80;
LABEL_20:
          v22 = (v18 >> 6) & 0x3F | 0xFFFFFF80;
          LODWORD(v16) = v21;
          goto LABEL_21;
        }

LABEL_19:
        v21 = v16 + 1;
        *(v14 + v16) = (v18 >> 12) | 0xE0;
        goto LABEL_20;
      }

      if (v18 > 0x7F)
      {
        if (v18 <= 0x7FF)
        {
          v22 = (v18 >> 6) | 0xFFFFFFC0;
LABEL_21:
          *(v14 + v16) = v22;
          *(v14 + 1 + v16) = v18 & 0x3F | 0x80;
          v16 = (v16 + 2);
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      *(v14 + v16) = v18;
      v16 = (v16 + 1);
LABEL_22:
      v11 = v17;
    }

    while (v17 < a3 && v16 < v26);
    if (v16 > (v10 ^ 0x7FFFFFFF))
    {
      result = 0;
      *a6 = 8;
      return result;
    }

LABEL_27:
    (*(*a4 + 16))(a4, v14, v16);
    v10 += v16;
  }

  while (v11 < a3);
LABEL_30:
  if (a5)
  {
    icu::Edits::addReplace(a5, a1, v10);
  }

  return 1;
}

uint64_t icu::ByteSinkUtil::appendChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, icu::Edits *a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = a2 - a1;
  if (v7 >= 0x80000000)
  {
    *a7 = 8;
    return 0;
  }

  return icu::ByteSinkUtil::appendChange(v7, a3, a4, a5, a6, a7);
}

uint64_t icu::ByteSinkUtil::appendCodePoint(icu::ByteSinkUtil *this, unsigned int a2, uint64_t a3, icu::ByteSink *a4, icu::Edits *a5)
{
  v11 = 0;
  if (a2 <= 0x7F)
  {
    LOBYTE(v11) = a2;
    v6 = 1;
    if (!a4)
    {
      return (*(*a3 + 16))(a3, &v11, v6);
    }

    goto LABEL_11;
  }

  if (a2 > 0x7FF)
  {
    if (HIWORD(a2))
    {
      v8 = (a2 >> 18) | 0xFFFFFFF0;
      BYTE1(v11) = (a2 >> 12) & 0x3F | 0x80;
      v9 = 2;
    }

    else
    {
      v8 = (a2 >> 12) | 0xFFFFFFE0;
      v9 = 1;
    }

    LOBYTE(v11) = v8;
    v7 = v9 + 1;
    *(&v11 | v9) = (a2 >> 6) & 0x3F | 0x80;
  }

  else
  {
    LOBYTE(v11) = (a2 >> 6) | 0xC0;
    v7 = 1;
  }

  v6 = v7 + 1;
  *(&v11 + v7) = a2 & 0x3F | 0x80;
  if (a4)
  {
LABEL_11:
    icu::Edits::addReplace(a4, this, v6);
  }

  return (*(*a3 + 16))(a3, &v11, v6);
}

uint64_t icu::ByteSinkUtil::appendTwoBytes(unsigned int a1, uint64_t a2)
{
  v3[0] = (a1 >> 6) | 0xC0;
  v3[1] = a1 & 0x3F | 0x80;
  return (*(*a2 + 16))(a2, v3, 2);
}

icu::Edits *icu::ByteSinkUtil::appendNonEmptyUnchanged(icu::Edits *this, const unsigned __int8 *a2, uint64_t a3, icu::ByteSink *a4, icu::Edits *a5, icu::Edits *a6)
{
  v6 = a4;
  v9 = this;
  if (a5)
  {
    this = icu::Edits::addUnchanged(a5, a2);
  }

  if ((v6 & 0x4000) == 0)
  {
    v10 = *(*a3 + 16);

    return v10(a3, v9, a2);
  }

  return this;
}

uint64_t icu::ByteSinkUtil::appendUnchanged(icu::ByteSinkUtil *this, const unsigned __int8 *a2, const unsigned __int8 *a3, icu::ByteSink *a4, icu::Edits *a5, icu::Edits *a6, UErrorCode *a7)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v8 = (a2 - this);
  if (v8 < 0x80000000)
  {
    if (v8 >= 1)
    {
      icu::ByteSinkUtil::appendNonEmptyUnchanged(this, v8, a3, a4, a5, a6);
    }

    return 1;
  }

  else
  {
    result = 0;
    *a6 = 8;
  }

  return result;
}

void *icu::CharStringByteSink::CharStringByteSink(void *result, uint64_t a2)
{
  *result = &unk_1F0931598;
  result[1] = a2;
  return result;
}

{
  *result = &unk_1F0931598;
  result[1] = a2;
  return result;
}

void icu::CharStringByteSink::~CharStringByteSink(icu::CharStringByteSink *this)
{
  icu::ByteSink::~ByteSink(this);

  JUMPOUT(0x19A8B2600);
}

char *icu::CharStringByteSink::GetAppendBuffer(icu::CharString **this, int a2, int a3, char *a4, int a5, int *a6)
{
  if (a2 < 1 || a5 < a2)
  {
    a4 = 0;
    *a6 = 0;
  }

  else
  {
    v11 = U_ZERO_ERROR;
    AppendBuffer = icu::CharString::getAppendBuffer(this[1], a2, a3, a6, &v11);
    if (v11 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      return AppendBuffer;
    }

    else
    {
      *a6 = a5;
    }
  }

  return a4;
}

char *icu::ByteSink::GetAppendBuffer(icu::ByteSink *this, int a2, int a3, char *a4, int a5, int *a6)
{
  v7 = a2 < 1 || a5 < a2;
  v8 = !v7;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  if (v8)
  {
    result = a4;
  }

  else
  {
    result = 0;
  }

  *a6 = v9;
  return result;
}

uint64_t icu::CheckedArrayByteSink::CheckedArrayByteSink(uint64_t this, char *a2, int a3)
{
  *this = &unk_1F09315E8;
  *(this + 8) = a2;
  *(this + 16) = a3 & ~(a3 >> 31);
  *(this + 20) = 0;
  *(this + 28) = 0;
  return this;
}

{
  *this = &unk_1F09315E8;
  *(this + 8) = a2;
  *(this + 16) = a3 & ~(a3 >> 31);
  *(this + 20) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t icu::CheckedArrayByteSink::Reset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 20) = 0;
  return this;
}

char *icu::CheckedArrayByteSink::Append(char *this, char *a2, size_t __n)
{
  if (__n >= 1)
  {
    v3 = __n;
    v4 = this;
    v5 = *(this + 6);
    if ((v5 ^ 0x7FFFFFFFu) >= __n)
    {
      *(this + 6) = v5 + __n;
      v6 = *(this + 5);
      v7 = *(this + 4) - v6;
      if (v7 < __n && (this[28] = 1, v3 = v7, v7 < 1))
      {
        v3 = v7;
      }

      else
      {
        this = (*(this + 1) + v6);
        if (this != a2)
        {
          this = memcpy(this, a2, v3);
          v6 = *(v4 + 5);
        }
      }

      *(v4 + 5) = v6 + v3;
    }

    else
    {
      *(this + 6) = 0x7FFFFFFF;
      this[28] = 1;
    }
  }

  return this;
}

char *icu::CheckedArrayByteSink::GetAppendBuffer(icu::CheckedArrayByteSink *this, int a2, int a3, char *a4, int a5, int *a6)
{
  if (a2 < 1 || a5 < a2)
  {
    a4 = 0;
    *a6 = 0;
  }

  else
  {
    v6 = *(this + 4) - *(this + 5);
    if (v6 >= a2)
    {
      *a6 = v6;
      return (*(this + 1) + *(this + 5));
    }

    else
    {
      *a6 = a5;
    }
  }

  return a4;
}

void icu::BytesTrie::~BytesTrie(void **this)
{
  free(*this);
}

{
  free(*this);
}

uint64_t icu::BytesTrie::readValue(icu::BytesTrie *this, const unsigned __int8 *a2)
{
  if (a2 <= 80)
  {
    return (a2 - 16);
  }

  if (a2 <= 0x6B)
  {
    return (*this | (a2 << 8)) - 20736;
  }

  if (a2 <= 0x7D)
  {
    return ((*this << 8) | (a2 << 16) | *(this + 1)) - 7077888;
  }

  v3 = *this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (a2 == 126)
  {
    return (v3 << 16) | (v4 << 8) | v5;
  }

  else
  {
    return (v3 << 24) | (v4 << 16) | (v5 << 8) | *(this + 3);
  }
}

char *icu::BytesTrie::jumpByDelta(icu::BytesTrie *this, const unsigned __int8 *a2)
{
  v3 = this + 1;
  v2 = *this;
  if (v2 >= 0xC0)
  {
    if (v2 > 0xEF)
    {
      if (v2 > 0xFD)
      {
        v4 = *(this + 1);
        v5 = *(this + 2);
        v6 = *(this + 3);
        if (v2 == 254)
        {
          v2 = (v4 << 16) | (v5 << 8) | v6;
          v3 = this + 4;
        }

        else
        {
          v2 = (v4 << 24) | (v5 << 16) | (v6 << 8) | *(this + 4);
          v3 = this + 5;
        }
      }

      else
      {
        v2 = ((*(this + 1) << 8) | (v2 << 16) | *(this + 2)) - 15728640;
        v3 = this + 3;
      }
    }

    else
    {
      v3 = this + 2;
      v2 = (*(this + 1) | (v2 << 8)) - 49152;
    }
  }

  return &v3[v2];
}

uint64_t icu::BytesTrie::current(icu::BytesTrie *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  if ((*(this + 6) & 0x80000000) != 0)
  {
    v2 = *v1;
    if (v2 >= 0x20)
    {
      return v2 & 1 ^ 3;
    }
  }

  return 1;
}

uint64_t icu::BytesTrie::branchNext(icu::BytesTrie *this, const unsigned __int8 *a2, int a3, int a4)
{
  if (!a3)
  {
    v6 = *a2++;
    a3 = v6;
  }

  v7 = a3 + 1;
  if (a3 < 5)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v8 = v7 >> 1;
      if (*a2 <= a4)
      {
        v7 -= v8;
        v9 = a2 + 2;
        v10 = a2[1];
        if (v10 >= 0xC0)
        {
          v11 = &v9[(v10 & 1) + 3];
          if (v10 <= 0xFD)
          {
            v11 = a2 + 4;
          }

          if (v10 <= 0xEF)
          {
            v9 = a2 + 3;
          }

          else
          {
            v9 = v11;
          }
        }
      }

      else
      {
        v9 = icu::BytesTrie::jumpByDelta((a2 + 1), a2);
        v7 = v8;
      }

      a2 = v9;
    }

    while (v7 > 5);
  }

  v12 = v7 + 1;
  while (1)
  {
    v13 = v9;
    v14 = v9 + 1;
    if (*v9 == a4)
    {
      break;
    }

    v9 += 2;
    v15 = v13[1];
    if (v15 >= 0xA2)
    {
      if (v15 > 0xD7)
      {
        v16 = v15 > 0xFB;
        v17 = &v9[((v15 >> 1) & 1) + 3];
        v18 = v13 + 4;
        if (v16)
        {
          v9 = v17;
        }

        else
        {
          v9 = v18;
        }
      }

      else
      {
        v9 = v13 + 3;
      }
    }

    if (--v12 <= 2)
    {
      if (*v9 == a4)
      {
        *(this + 2) = v9 + 1;
        v19 = v9[1];
        v20 = v19 >= 0x20;
        v21 = v19 & 1 ^ 3;
        if (v20)
        {
          return v21;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        result = 0;
        *(this + 2) = 0;
      }

      return result;
    }
  }

  v23 = *v14;
  if (v23)
  {
    result = 2;
  }

  else
  {
    if (v23 > 0xA1)
    {
      if (v23 > 0xD7)
      {
        if (v23 > 0xFB)
        {
          v26 = v9[2];
          v27 = v9[3];
          v28 = v9[4];
          if (v23 == 252)
          {
            v25 = (v26 << 16) | (v27 << 8) | v28;
            v24 = v9 + 5;
          }

          else
          {
            v25 = (v26 << 24) | (v27 << 16) | (v28 << 8) | v9[5];
            v24 = v9 + 6;
          }
        }

        else
        {
          v25 = (((v23 << 15) + (v9[2] << 8)) | v9[3]) - 7077888;
          v24 = v9 + 4;
        }
      }

      else
      {
        v24 = v9 + 3;
        v25 = v9[2] + (v23 << 7) - 20736;
      }
    }

    else
    {
      v24 = v9 + 2;
      v25 = (v23 >> 1) - 16;
    }

    v14 = &v24[v25];
    v29 = *v14;
    if (v29 < 0x20)
    {
      result = 1;
    }

    else
    {
      result = v29 & 1 ^ 3;
    }
  }

  *(this + 2) = v14;
  return result;
}

uint64_t icu::BytesTrie::nextImpl(icu::BytesTrie *this, const unsigned __int8 *a2, int a3)
{
  for (i = a2; ; a2 = i)
  {
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    if (v7 < 0x10)
    {
      return icu::BytesTrie::branchNext(this, v5, v6, a3);
    }

    if (v6 <= 0x1F)
    {
      break;
    }

    if (v6)
    {
      goto LABEL_18;
    }

    v8 = &v5[((v6 >> 1) & 1) + 3];
    if (v6 <= 0xFB)
    {
      v8 = (i + 3);
    }

    i += 2;
    if (v6 > 0xD7)
    {
      i = v8;
    }

    if (v6 < 0xA2)
    {
      i = v5;
    }
  }

  if (*v5 != a3)
  {
LABEL_18:
    v10 = 0;
    *(this + 2) = 0;
    return v10;
  }

  v10 = (i + 2);
  *(this + 6) = v6 - 17;
  *(this + 2) = v10;
  if (v6 != 16)
  {
    return 1;
  }

  v11 = *v10;
  v12 = v11 >= 0x20;
  LODWORD(v10) = v11 & 1 ^ 3;
  if (v12)
  {
    return v10;
  }

  else
  {
    return 1;
  }
}

uint64_t icu::BytesTrie::next(icu::BytesTrie *this, unsigned int a2)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 + (a2 >> 31 << 8);
  v5 = *(this + 6);
  if (v5 < 0)
  {
    return icu::BytesTrie::nextImpl(this, v3, v4);
  }

  v7 = *v3;
  v6 = (v3 + 1);
  if (v4 == v7)
  {
    *(this + 6) = v5 - 1;
    *(this + 2) = v6;
    if (v5)
    {
      return 1;
    }

    v8 = *v6;
    if (v8 < 0x20)
    {
      return 1;
    }

    else
    {
      return v8 & 1 ^ 3;
    }
  }

  else
  {
    v9 = 0;
    *(this + 2) = 0;
  }

  return v9;
}

uint64_t icu::BytesTrie::next(icu::BytesTrie *this, const char *a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  if ((a3 & 0x80000000) == 0)
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_45:
    v19 = *(this + 2);
    if (v19)
    {
      if ((*(this + 6) & 0x80000000) != 0)
      {
        v20 = *v19;
        if (v20 >= 0x20)
        {
          return v20 & 1 ^ 3;
        }
      }

      return 1;
    }

    return 0;
  }

  if (!*a2)
  {
    goto LABEL_45;
  }

LABEL_3:
  v6 = *(this + 2);
  if (!v6)
  {
    return 0;
  }

  v7 = *(this + 6);
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (!v3)
  {
LABEL_51:
    *(this + 6) = v7;
    *(this + 2) = v6;
    if (v7 < 0)
    {
      v21 = *v6;
      v22 = v21 >= 0x20;
      v23 = v21 & 1 ^ 3;
      if (v22)
      {
        return v23;
      }

      else
      {
        return 1;
      }
    }

    return 1;
  }

  v8 = 0;
  if (v7 >= -1)
  {
    v9 = -1;
  }

  else
  {
    v9 = v7;
  }

  v10 = v7;
  while (1)
  {
    v11 = v4[v8];
    if (v10 < 0)
    {
      break;
    }

    if (v11 != v6[v8])
    {
      goto LABEL_50;
    }

    --v10;
    if (v3 == ++v8)
    {
      v6 += v3;
      v7 -= v3;
      goto LABEL_51;
    }
  }

  v4 += v8 + 1;
  v6 += v8;
  v3 += ~v8;
  while (1)
  {
    *(this + 6) = v9;
    while (1)
    {
      while (1)
      {
        v14 = v6;
        v16 = *v6++;
        v15 = v16;
        if (v16 > 0xF)
        {
          break;
        }

        result = icu::BytesTrie::branchNext(this, v6, v15, v11);
        if (!result)
        {
          return result;
        }

        if ((v3 & 0x80000000) != 0)
        {
          v18 = *v4;
          if (!*v4)
          {
            return result;
          }
        }

        else
        {
          if (!v3)
          {
            return result;
          }

          v18 = *v4;
          --v3;
        }

        if (result == 2)
        {
          goto LABEL_50;
        }

        v11 = v18;
        ++v4;
        v6 = *(this + 2);
      }

      if (v15 <= 0x1F)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_50;
      }

      if (v15 >= 0xA2)
      {
        if (v15 > 0xD7)
        {
          if (v15 > 0xFB)
          {
            v14 = &v6[(v15 >> 1) & 1];
          }

          v6 = v14 + 3;
        }

        else
        {
          v6 = v14 + 2;
        }
      }
    }

    if (v11 != *v6)
    {
      break;
    }

    v6 = v14 + 2;
    v7 = v15 - 17;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v12 = *v4;
    if (!*v4)
    {
      goto LABEL_51;
    }

    if (v7 >= -1)
    {
      v9 = -1;
    }

    else
    {
      v9 = v7;
    }

    ++v4;
    while (1)
    {
      v11 = v12;
      if (v7 < 0)
      {
        break;
      }

      if (v12 != *v6)
      {
        goto LABEL_50;
      }

      ++v6;
      --v7;
      v13 = *v4++;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_50:
  result = 0;
  *(this + 2) = 0;
  return result;
}

uint64_t icu::BytesTrie::findUniqueValueFromBranch(icu::BytesTrie *this, const unsigned __int8 *a2, int a3, _DWORD *a4, int *a5)
{
  v7 = a2;
  v8 = this;
  if (a2 < 6)
  {
    v12 = this;
  }

  else
  {
    do
    {
      v9 = icu::BytesTrie::jumpByDelta((v8 + 1), a2);
      result = icu::BytesTrie::findUniqueValueFromBranch(v9, (v7 >> 1), a3, a4, v10);
      if (!result)
      {
        return result;
      }

      v12 = (v8 + 2);
      v13 = *(v8 + 1);
      if (v13 >= 0xC0)
      {
        v14 = v12 + (v13 & 1) + 3;
        if (v13 <= 0xFD)
        {
          v14 = v8 + 4;
        }

        if (v13 <= 0xEF)
        {
          v12 = (v8 + 3);
        }

        else
        {
          v12 = v14;
        }
      }

      v7 -= v7 >> 1;
      v8 = v12;
    }

    while (v7 > 5);
  }

  v15 = v7 + 1;
  while (1)
  {
    v16 = *(v12 + 1);
    Value = icu::BytesTrie::readValue((v12 + 2), (v16 >> 1));
    v20 = v12 + ((v16 >> 1) & 1) + 5;
    if (v16 <= 0xFB)
    {
      v20 = v12 + 4;
    }

    if (v16 <= 0xD7)
    {
      v20 = v12 + 3;
    }

    if (v16 >= 0xA2)
    {
      v12 = v20;
    }

    else
    {
      v12 = (v12 + 2);
    }

    if ((v16 & 1) == 0)
    {
      if (!icu::BytesTrie::findUniqueValue((v12 + Value), a3, a4, v18, v19))
      {
        return 0;
      }

      goto LABEL_27;
    }

    if (!a3)
    {
      *a4 = Value;
LABEL_27:
      LOBYTE(a3) = 1;
      goto LABEL_28;
    }

    if (Value != *a4)
    {
      return 0;
    }

LABEL_28:
    if (--v15 <= 2)
    {
      return v12 + 1;
    }
  }
}

uint64_t icu::BytesTrie::findUniqueValue(icu::BytesTrie *this, const unsigned __int8 *a2, _DWORD *a3, int *a4, int *a5)
{
  v6 = a2;
  do
  {
LABEL_2:
    for (i = this; ; this = i)
    {
      v10 = *this;
      this = (this + 1);
      v9 = v10;
      if (v10 <= 0xF)
      {
        break;
      }

      if (v9 > 0x1F)
      {
        Value = icu::BytesTrie::readValue(this, (v9 >> 1));
        if (v6)
        {
          if (Value != *a3)
          {
            return 0;
          }

          if (v9)
          {
            return 1;
          }
        }

        else
        {
          *a3 = Value;
          v6 = 1;
          if (v9)
          {
            return 1;
          }
        }

        if (v9 >= 0xA2)
        {
          if (v9 > 0xD7)
          {
            if (v9 > 0xFB)
            {
              this = (this + ((v9 >> 1) & 1) + 3);
            }

            else
            {
              this = (i + 3);
            }
          }

          else
          {
            this = (i + 2);
          }
        }

        goto LABEL_2;
      }

      i = this + v9 - 15;
    }

    if (!v9)
    {
      this = (i + 2);
      LODWORD(v9) = i[1];
    }

    result = icu::BytesTrie::findUniqueValueFromBranch(this, (v9 + 1), v6, a3, a5);
    this = result;
    v6 = 1;
  }

  while (result);
  return result;
}

uint64_t icu::BytesTrie::getNextBytes(icu::BytesTrie *this, icu::ByteSink *a2, uint64_t a3, icu::ByteSink *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  if ((*(this + 6) & 0x80000000) == 0)
  {
    v11 = *v4;
    v5 = 1;
    (*(*a2 + 16))(a2, &v11, 1, a4);
    return v5;
  }

  v6 = (v4 + 1);
  v7 = *v4;
  if (v7 < 0x20)
  {
    goto LABEL_16;
  }

  if (v7)
  {
    return 0;
  }

  if (v7 >= 0xA2)
  {
    if (v7 > 0xD7)
    {
      if (v7 > 0xFB)
      {
        v6 = (v6 + ((v7 >> 1) & 1) + 3);
      }

      else
      {
        v6 = (v4 + 3);
      }
    }

    else
    {
      v6 = (v4 + 2);
    }
  }

  v9 = *v6;
  v6 = (v6 + 1);
  LODWORD(v7) = v9;
LABEL_16:
  if (v7 > 0xF)
  {
    v12 = *v6;
    v5 = 1;
    (*(*a2 + 16))(a2, &v12, 1, a4);
  }

  else
  {
    if (!v7)
    {
      v10 = *v6;
      v6 = (v6 + 1);
      LODWORD(v7) = v10;
    }

    v5 = (v7 + 1);
    icu::BytesTrie::getNextBranchBytes(v6, v5, a2, a4);
  }

  return v5;
}

uint64_t icu::BytesTrie::getNextBranchBytes(icu::BytesTrie *this, const unsigned __int8 *a2, uint64_t a3, icu::ByteSink *a4)
{
  v5 = a2;
  v6 = this;
  if (a2 < 6)
  {
    v9 = this;
  }

  else
  {
    do
    {
      v7 = icu::BytesTrie::jumpByDelta((v6 + 1), a2);
      icu::BytesTrie::getNextBranchBytes(v7, (v5 >> 1), a3, v8);
      v9 = (v6 + 2);
      v10 = *(v6 + 1);
      if (v10 >= 0xC0)
      {
        v9 = (v9 + (v10 & 1) + 3);
        if (v10 <= 0xFD)
        {
          v9 = (v6 + 4);
        }

        if (v10 <= 0xEF)
        {
          v9 = (v6 + 3);
        }
      }

      v5 -= v5 >> 1;
      v6 = v9;
    }

    while (v5 > 5);
  }

  v11 = v5 + 1;
  do
  {
    v12 = v9;
    v15 = *v9;
    (*(*a3 + 16))(a3, &v15, 1);
    v9 = (v12 + 2);
    v13 = v12[1];
    if (v13 >= 0xA2)
    {
      if (v13 > 0xD7)
      {
        v9 = (v9 + ((v13 >> 1) & 1) + 3);
        if (v13 <= 0xFB)
        {
          v9 = (v12 + 4);
        }
      }

      else
      {
        v9 = (v12 + 3);
      }
    }

    --v11;
  }

  while (v11 > 2);
  v16 = *v9;
  return (*(*a3 + 16))(a3, &v16, 1);
}

icu::CharString *sub_1951CDBC4(icu::CharString *result, const char *a2, int a3, int a4, icu::CharString *this, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    if (a3 < 0x10000)
    {
      v11 = result;
      v12 = *(this + 14);
      if (a3 >= 256)
      {
        v12 = ~v12;
        icu::CharString::append(this, SBYTE1(a3), a6);
      }

      icu::CharString::append(this, a3, a6);
      *v11 = v12;
      v11[1] = a4;

      return icu::CharString::append(this, a2, a3, a6);
    }

    else
    {
      *a6 = U_INDEX_OUTOFBOUNDS_ERROR;
    }
  }

  return result;
}

uint64_t sub_1951CDC98(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  if ((v3 & 0x80000000) != 0)
  {
    v6 = *(v4 + -v3) | (*(v4 + ~v3) << 8);
    v5 = 1 - v3;
  }

  else
  {
    v5 = v3 + 1;
    v6 = *(v4 + v3);
  }

  v7 = *a2;
  if ((v7 & 0x80000000) != 0)
  {
    v9 = *(v4 + -v7) | (*(v4 + ~v7) << 8);
    v8 = 1 - v7;
  }

  else
  {
    v8 = v7 + 1;
    v9 = *(v4 + v7);
  }

  v10 = v6 - v9;
  if ((v6 - v9) >= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  LODWORD(result) = memcmp((v4 + v5), (v4 + v8), v11);
  if (result)
  {
    return result;
  }

  else
  {
    return v10;
  }
}

icu::BytesTrieBuilder *icu::BytesTrieBuilder::BytesTrieBuilder(icu::BytesTrieBuilder *this, UErrorCode *a2)
{
  v4 = icu::StringTrieBuilder::StringTrieBuilder(this);
  *v4 = &unk_1F0931690;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[6] = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return this;
}

void icu::BytesTrieBuilder::~BytesTrieBuilder(icu::BytesTrieBuilder *this)
{
  *this = &unk_1F0931690;
  v2 = *(this + 2);
  if (v2)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x19A8B25E0](v3, 0x1000C8000313F17);
  }

  free(*(this + 5));

  icu::StringTrieBuilder::~StringTrieBuilder(this);
}

{
  icu::BytesTrieBuilder::~BytesTrieBuilder(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::BytesTrieBuilder::add(uint64_t a1, const char *a2, int a3, int a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (*(a1 + 52) < 1)
    {
      v6 = *(a1 + 36);
      if (v6 == *(a1 + 32))
      {
        operator new[]();
      }

      v7 = *(a1 + 24);
      *(a1 + 36) = v6 + 1;
      sub_1951CDBC4((v7 + 8 * v6), a2, a3, a4, *(a1 + 16), a5);
    }

    else
    {
      *a5 = U_NO_WRITE_PERMISSION;
    }
  }

  return a1;
}

uint64_t icu::BytesTrieBuilder::build(_DWORD *a1, uint64_t a2, UErrorCode *a3)
{
  icu::BytesTrieBuilder::buildBytes(a1, a2, a3);
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::BytesTrieBuilder::buildBytes(_DWORD *result, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v29 = v3;
    v30 = v4;
    v6 = result[13];
    if (!*(result + 5) || v6 <= 0)
    {
      if (!v6)
      {
        v14 = result[9];
        if (!v14)
        {
          v13 = U_INDEX_OUTOFBOUNDS_ERROR;
          goto LABEL_21;
        }

        uprv_sortArray(*(result + 3), v14, 8, sub_1951CE2C8, *(result + 2), 0, a3);
        if (*a3 > 0)
        {
          return;
        }

        v28 = 0;
        v15 = **(result + 3);
        v16 = **(result + 2);
        if ((v15 & 0x80000000) != 0)
        {
          v18 = *(v16 + -v15) | (*(v16 + ~v15) << 8);
          v17 = 1 - v15;
        }

        else
        {
          v17 = v15 + 1;
          v18 = *(v16 + v15);
        }

        v27 = (v16 + v17);
        LODWORD(v28) = v18;
        if (result[9] >= 2)
        {
          v19 = 8;
          v20 = 1;
          while (1)
          {
            v25 = 0;
            v26 = 0;
            v21 = *(*(result + 3) + v19);
            v22 = **(result + 2);
            if ((v21 & 0x80000000) != 0)
            {
              v24 = *(v22 + -v21) | (*(v22 + ~v21) << 8);
              v23 = 1 - v21;
            }

            else
            {
              v23 = v21 + 1;
              v24 = *(v22 + v21);
            }

            v25 = (v22 + v23);
            LODWORD(v26) = v24;
            if (icu::operator==(&v27, &v25))
            {
              break;
            }

            v27 = v25;
            LODWORD(v28) = v26;
            ++v20;
            v19 += 8;
            if (v20 >= result[9])
            {
              goto LABEL_8;
            }
          }

          v13 = U_ILLEGAL_ARGUMENT_ERROR;
          goto LABEL_21;
        }
      }

LABEL_8:
      result[13] = 0;
      v10 = *(*(result + 2) + 56);
      if (v10 <= 1024)
      {
        v11 = 1024;
      }

      else
      {
        v11 = v10;
      }

      if (result[12] < v11)
      {
        free(*(result + 5));
        v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
        *(result + 5) = v12;
        if (!v12)
        {
          *a3 = U_MEMORY_ALLOCATION_ERROR;
          result[12] = 0;
          return;
        }

        result[12] = v11;
      }

      icu::StringTrieBuilder::build(result, a2, result[9], a3);
      if (*(result + 5))
      {
        return;
      }

      v13 = U_MEMORY_ALLOCATION_ERROR;
LABEL_21:
      *a3 = v13;
    }
  }
}

uint64_t icu::BytesTrieBuilder::buildStringPiece(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  icu::BytesTrieBuilder::buildBytes(a1, a2, a3);
  if (*a3 <= 0)
  {
    return *(a1 + 40) - *(a1 + 52) + *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::BytesTrieBuilder::clear(uint64_t this)
{
  v1 = *(this + 16);
  *(v1 + 56) = 0;
  **v1 = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  return this;
}

uint64_t icu::BytesTrieBuilder::getElementStringLength(icu::BytesTrieBuilder *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(*(this + 3) + 8 * a2);
  if ((v3 & 0x80000000) != 0)
  {
    return *(*v2 + -v3) | (*(*v2 + ~v3) << 8);
  }

  else
  {
    return *(*v2 + v3);
  }
}

uint64_t icu::BytesTrieBuilder::getElementUnit(icu::BytesTrieBuilder *this, int a2, int a3)
{
  LODWORD(v3) = *(*(this + 3) + 8 * a2);
  if (v3 >= 0)
  {
    v3 = v3;
  }

  else
  {
    v3 = -v3;
  }

  return *(v3 + **(this + 2) + a3 + 1);
}

uint64_t icu::BytesTrieBuilder::getLimitOfLinearMatch(icu::BytesTrieBuilder *this, int a2, int a3, uint64_t a4)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  v6 = *(v4 + 8 * a2);
  v7 = *v5;
  if ((v6 & 0x80000000) != 0)
  {
    LODWORD(v5) = *(*v5 + -v6) | (*(*v5 + ~v6) << 8);
  }

  else
  {
    LODWORD(v5) = *(*v5 + v6);
  }

  v8 = (v4 + 8 * a3);
  if (v6 < 0)
  {
    LODWORD(v6) = -v6;
  }

  v9 = (v6 + 1);
  v10 = v5;
  if (v5 <= a4 + 1)
  {
    v5 = (a4 + 1);
  }

  else
  {
    v5 = v5;
  }

  v11 = v7 + v9;
  v12 = a4 + 1;
  v13 = v7 + a4 + 2;
  while (v12 < v10)
  {
    v14 = *(v11 + v12);
    v15 = *v8;
    if ((*v8 & 0x80000000) != 0)
    {
      v15 = -v15;
    }

    v16 = *(v13 + v15);
    a4 = (a4 + 1);
    ++v12;
    ++v13;
    if (v14 != v16)
    {
      return a4;
    }
  }

  return v5;
}

uint64_t icu::BytesTrieBuilder::countElementUnits(icu::BytesTrieBuilder *this, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = *(this + 3);
  v6 = **(this + 2) + a4;
LABEL_2:
  LODWORD(v7) = *(v5 + 8 * a2);
  v8 = a2;
  if (v7 >= 0)
  {
    v7 = v7;
  }

  else
  {
    v7 = -v7;
  }

  v9 = *(v7 + v6 + 1);
  v10 = (v5 + 8 + 8 * a2);
  while (++v8 < a3)
  {
    v12 = *v10;
    v10 += 2;
    LODWORD(v11) = v12;
    if (v12 >= 0)
    {
      v11 = v11;
    }

    else
    {
      v11 = -v11;
    }

    if (v9 != *(v11 + v6 + 1))
    {
      ++v4;
      a2 = v8;
      goto LABEL_2;
    }
  }

  return (v4 + 1);
}

uint64_t icu::BytesTrieBuilder::skipElementsBySomeUnits(icu::BytesTrieBuilder *this, uint64_t a2, int a3, int a4)
{
  v4 = *(this + 3);
  v5 = **(this + 2) + a3;
  do
  {
    LODWORD(v6) = *(v4 + 8 * a2);
    if (v6 >= 0)
    {
      v6 = v6;
    }

    else
    {
      v6 = -v6;
    }

    v7 = *(v6 + v5 + 1);
    v8 = (v4 + 8 + 8 * a2);
    do
    {
      v10 = *v8;
      v8 += 2;
      LODWORD(v9) = v10;
      if (v10 >= 0)
      {
        v9 = v9;
      }

      else
      {
        v9 = -v9;
      }

      a2 = (a2 + 1);
    }

    while (v7 == *(v9 + v5 + 1));
    v11 = __OFSUB__(a4--, 1);
  }

  while (!((a4 < 0) ^ v11 | (a4 == 0)));
  return a2;
}

uint64_t icu::BytesTrieBuilder::indexOfElementWithNextUnit(uint64_t result, int a2, int a3, char a4)
{
  v4 = *(result + 24);
  v5 = **(result + 16) + a3;
  LODWORD(result) = a2 - 1;
  v6 = (v4 + 8 * a2);
  do
  {
    v8 = *v6;
    v6 += 2;
    LODWORD(v7) = v8;
    if (v8 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = -v7;
    }

    result = (result + 1);
  }

  while (a4 == *(v7 + v5 + 1));
  return result;
}

icu::BytesTrieBuilder::BTLinearMatchNode *icu::BytesTrieBuilder::BTLinearMatchNode::BTLinearMatchNode(icu::BytesTrieBuilder::BTLinearMatchNode *this, char *a2, uint64_t a3, icu::StringTrieBuilder::Node *a4)
{
  if (a4)
  {
    v5 = *(a4 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + 37 * a3 + 298634171;
  *(this + 1) = v6;
  *(this + 16) = 0;
  *(this + 5) = 0;
  *(this + 6) = a3;
  *(this + 4) = a4;
  *(this + 5) = a2;
  *this = &unk_1F0931740;
  *(this + 2) = ustr_hashCharsN(a2, a3) + 37 * v6;
  return this;
}

BOOL icu::BytesTrieBuilder::BTLinearMatchNode::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::StringTrieBuilder::LinearMatchNode::operator==(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 40), *(a2 + 40), *(a1 + 24)) == 0;
  }

  return result;
}

uint64_t icu::BytesTrieBuilder::BTLinearMatchNode::write(icu::BytesTrieBuilder::BTLinearMatchNode *this, icu::StringTrieBuilder *a2)
{
  (*(**(this + 4) + 40))(*(this + 4));
  icu::BytesTrieBuilder::write(a2, *(this + 5), *(this + 6));
  v4 = (*(*a2 + 96))(a2);
  result = (*(*a2 + 120))(a2, (v4 + *(this + 6) - 1));
  *(this + 3) = result;
  return result;
}

uint64_t icu::BytesTrieBuilder::write(icu::BytesTrieBuilder *this, const char *a2, int a3)
{
  v6 = *(this + 13);
  v7 = v6 + a3;
  if (icu::BytesTrieBuilder::ensureCapacity(this, v6 + a3))
  {
    *(this + 13) = v7;
    memcpy((*(this + 5) - v7 + *(this + 12)), a2, a3);
  }

  return *(this + 13);
}

uint64_t icu::BytesTrieBuilder::ensureCapacity(icu::BytesTrieBuilder *this, int a2)
{
  if (!*(this + 5))
  {
    return 0;
  }

  LODWORD(v3) = *(this + 12);
  if (v3 >= a2)
  {
    return 1;
  }

  do
  {
    v3 = 2 * v3;
  }

  while (v3 <= a2);
  v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    memcpy(&v4[v3 - *(this + 13)], (*(this + 5) - *(this + 13) + *(this + 12)), *(this + 13));
    v6 = 1;
  }

  else
  {
    LODWORD(v3) = 0;
    v6 = 0;
  }

  free(*(this + 5));
  *(this + 5) = v5;
  *(this + 12) = v3;
  return v6;
}

uint64_t icu::BytesTrieBuilder::write(icu::BytesTrieBuilder *this, char a2)
{
  v4 = *(this + 13);
  v5 = v4 + 1;
  if (icu::BytesTrieBuilder::ensureCapacity(this, v4 + 1))
  {
    *(this + 13) = v5;
    *(*(this + 5) - v5 + *(this + 12)) = a2;
  }

  return *(this + 13);
}

uint64_t icu::BytesTrieBuilder::writeElementUnits(icu::BytesTrieBuilder *this, int a2, int a3, int a4)
{
  v4 = *(*(this + 3) + 8 * a2);
  if (v4 < 0)
  {
    v4 = -v4;
  }

  return icu::BytesTrieBuilder::write(this, (**(this + 2) + (v4 + 1) + a3), a4);
}

uint64_t icu::BytesTrieBuilder::writeValueAndFinal(icu::BytesTrieBuilder *this, unsigned int a2, char a3)
{
  if (a2 > 0x40)
  {
    v14 = v3;
    v15 = v4;
    v13 = 0;
    if (HIBYTE(a2))
    {
      v13 = bswap32(a2);
      v7 = 5;
      v8 = -2;
    }

    else
    {
      if (a2 >> 8 > 0x1A)
      {
        if (a2 >> 17 > 8)
        {
          LOBYTE(v13) = BYTE2(a2);
          v11 = 2;
          LOBYTE(v9) = 126;
        }

        else
        {
          v9 = HIWORD(a2) + 108;
          v11 = 1;
        }

        v10 = v11 + 1;
        *(&v12 + v11) = BYTE1(a2);
      }

      else
      {
        LOBYTE(v9) = BYTE1(a2) + 81;
        v10 = 1;
      }

      v7 = v10 + 1;
      *(&v12 + v10) = a2;
      v8 = 2 * v9;
    }

    v12 = v8 | a3;
    return icu::BytesTrieBuilder::write(this, &v12, v7);
  }

  else
  {
    v5 = *(*this + 120);

    return v5();
  }
}

uint64_t icu::BytesTrieBuilder::writeValueAndType(icu::BytesTrieBuilder *this, int a2, uint64_t a3, uint64_t a4)
{
  result = (*(*this + 120))(this, a4);
  if (a2)
  {
    v8 = *(*this + 136);

    return v8(this, a3, 0);
  }

  return result;
}

uint64_t icu::BytesTrieBuilder::writeDeltaTo(icu::BytesTrieBuilder *this, int a2, char *a3)
{
  v4 = (*(this + 13) - a2);
  if (v4 > 191)
  {
    v10 = 0;
    *v9 = 0;
    v8 = icu::BytesTrieBuilder::internalEncodeDelta(v4, v9, a3);
    return icu::BytesTrieBuilder::write(this, v9, v8);
  }

  else
  {
    v5 = *(*this + 120);
    v6 = (*(this + 13) - a2);

    return v5(this, v6);
  }
}

uint64_t icu::BytesTrieBuilder::internalEncodeDelta(icu::BytesTrieBuilder *this, char *a2, char *a3)
{
  if (this > 191)
  {
    if (this >> 12 > 2)
    {
      if (this >> 17 > 6)
      {
        if (this >> 24)
        {
          a2[1] = BYTE3(this);
          v6 = 2;
          v7 = -1;
        }

        else
        {
          v6 = 1;
          v7 = -2;
        }

        *a2 = v7;
        v5 = v6 + 1;
        a2[v6] = BYTE2(this);
      }

      else
      {
        *a2 = BYTE2(this) | 0xF0;
        v5 = 1;
      }

      v4 = v5 + 1;
      a2[v5] = BYTE1(this);
    }

    else
    {
      *a2 = BYTE1(this) | 0xC0;
      v4 = 1;
    }

    v3 = (v4 + 1);
    a2[v4] = this;
  }

  else
  {
    *a2 = this;
    return 1;
  }

  return v3;
}

void sub_1951CEC04(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

icu::BytesTrie::Iterator *icu::BytesTrie::Iterator::Iterator(icu::BytesTrie::Iterator *this, const void *a2, int a3, UErrorCode *a4)
{
  *this = a2;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = -1;
  *(this + 4) = 0;
  *(this + 10) = a3;
  *(this + 11) = 0;
  *(this + 6) = 0;
  if (*a4 <= 0)
  {
    operator new();
  }

  return this;
}

icu::BytesTrie::Iterator *icu::BytesTrie::Iterator::Iterator(icu::BytesTrie::Iterator *this, const icu::BytesTrie *a2, int a3, UErrorCode *a4)
{
  v4 = *(a2 + 2);
  *this = *(a2 + 1);
  *(this + 1) = v4;
  *(this + 2) = v4;
  v5 = *(a2 + 6);
  *(this + 6) = v5;
  *(this + 7) = v5;
  *(this + 4) = 0;
  *(this + 10) = a3;
  *(this + 11) = 0;
  *(this + 6) = 0;
  if (*a4 <= 0)
  {
    operator new();
  }

  return this;
}

void icu::BytesTrie::Iterator::~Iterator(icu::BytesTrie::Iterator *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

icu::BytesTrie::Iterator *icu::BytesTrie::Iterator::reset(icu::BytesTrie::Iterator *this)
{
  *(this + 1) = *(this + 2);
  v2 = *(this + 7);
  *(this + 6) = v2;
  v3 = *(this + 10);
  if (v2 < v3 || v3 < 1)
  {
    v5 = v2 + 1;
  }

  else
  {
    v5 = *(this + 10);
  }

  icu::CharString::truncate(*(this + 4), v5);
  *(this + 1) += v5;
  *(this + 6) -= v5;
  icu::UVector32::setSize(*(this + 6), 0);
  return this;
}

uint64_t icu::BytesTrie::Iterator::next(icu::BytesTrie::Iterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v13 = *(this + 6);
    v14 = *(v13 + 8);
    if (!v14)
    {
      return 0;
    }

    if (v14 <= 0)
    {
      v16 = 0;
      v18 = 0;
      v17 = *this;
      v19 = v14 - 2;
    }

    else
    {
      v15 = *(v13 + 24);
      v16 = *(v15 + 4 * v14 - 4);
      v17 = *this;
      if (v14 == 1)
      {
        v18 = 0;
        v19 = -1;
      }

      else
      {
        v19 = v14 - 2;
        v18 = *(v15 + 4 * (v14 - 2));
      }
    }

    v20 = (v17 + v18);
    icu::UVector32::setSize(v13, v19);
    icu::CharString::truncate(*(this + 4), v16);
    if (v16 < 0x20000)
    {
      v21 = *v20;
      v5 = v20 + 1;
      icu::CharString::append(*(this + 4), v21, a2);
    }

    else
    {
      v5 = icu::BytesTrie::Iterator::branchNext(this, v20, HIWORD(v16), a2);
      if (!v5)
      {
        return 1;
      }
    }
  }

  if ((*(this + 6) & 0x80000000) == 0)
  {
LABEL_5:
    *(this + 1) = 0;
    *(this + 11) = -1;
    return 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    v10 = *v5;
    if (v10 > 0x1F)
    {
      break;
    }

    v6 = *(this + 10);
    if (v6 < 1)
    {
      if (v10 >= 0x10)
      {
        v9 = v10 - 15;
        v7 = *(this + 4);
        goto LABEL_17;
      }

LABEL_12:
      if (!*v5)
      {
        v10 = *v11;
        v11 = v5 + 2;
      }

      v5 = icu::BytesTrie::Iterator::branchNext(this, v11, v10 + 1, a2);
      if (!v5)
      {
        return 1;
      }
    }

    else
    {
      v7 = *(this + 4);
      v8 = *(v7 + 14);
      if (v6 == v8)
      {
        goto LABEL_5;
      }

      if (v10 < 0x10)
      {
        goto LABEL_12;
      }

      v9 = v10 - 15;
      if ((v8 + v10 - 15) > v6)
      {
        icu::CharString::append(v7, v11, v6 - v8, a2);
        goto LABEL_5;
      }

LABEL_17:
      icu::CharString::append(v7, v11, v9, a2);
      v5 = &v11[v9];
    }
  }

  *(this + 11) = icu::BytesTrie::readValue((v5 + 1), (v10 >> 1));
  if ((v10 & 1) != 0 || (v12 = *(this + 10), v12 >= 1) && *(*(this + 4) + 56) == v12)
  {
    v11 = 0;
  }

  else if (v10 >= 0xA2)
  {
    if (v10 > 0xD7)
    {
      if (v10 > 0xFB)
      {
        v11 += ((v10 >> 1) & 1) + 3;
      }

      else
      {
        v11 = v5 + 3;
      }
    }

    else
    {
      v11 = v5 + 2;
    }
  }

  *(this + 1) = v11;
  return 1;
}

char *icu::BytesTrie::Iterator::branchNext(icu::BytesTrie::Iterator *this, char *a2, int a3, UErrorCode *a4)
{
  v5 = a3;
  v6 = a2;
  if (a3 >= 6)
  {
    while (1)
    {
      v9 = (v6 + 1);
      v8 = v6[1];
      v10 = v6 + 2;
      if (v8 >= 0xC0)
      {
        if (v8 > 0xEF)
        {
          if (v8 > 0xFD)
          {
            v10 += (v8 & 1) + 3;
          }

          else
          {
            v10 = v6 + 4;
          }
        }

        else
        {
          v10 = v6 + 3;
        }
      }

      v11 = *(this + 6);
      v12 = *this;
      v13 = *(v11 + 8);
      if (v13 >= -1 && *(v11 + 12) > v13)
      {
        goto LABEL_12;
      }

      if (icu::UVector32::expandCapacity(*(this + 6), v13 + 1, a4))
      {
        break;
      }

LABEL_13:
      v14 = *(this + 6);
      v15 = *(*(this + 4) + 56);
      v16 = *(v14 + 8);
      if (v16 >= -1 && *(v14 + 12) > v16)
      {
        goto LABEL_17;
      }

      if (icu::UVector32::expandCapacity(*(this + 6), v16 + 1, a4))
      {
        v16 = *(v14 + 8);
LABEL_17:
        *(*(v14 + 24) + 4 * v16) = v15 | ((v5 - (v5 >> 1)) << 16);
        ++*(v14 + 8);
      }

      v17 = v5 >> 1;
      v6 = icu::BytesTrie::jumpByDelta(v9, a2);
      v18 = v5 > 0xB;
      v5 >>= 1;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v13 = *(v11 + 8);
LABEL_12:
    *(*(v11 + 24) + 4 * v13) = v10 - v12;
    ++*(v11 + 8);
    goto LABEL_13;
  }

  v17 = a3;
LABEL_21:
  v19 = *v6;
  v20 = v6 + 2;
  v21 = v6[1];
  Value = icu::BytesTrie::readValue((v6 + 2), (v21 >> 1));
  if (v21 >= 0xA2)
  {
    if (v21 > 0xD7)
    {
      if (v21 > 0xFB)
      {
        v20 += ((v21 >> 1) & 1) + 3;
      }

      else
      {
        v20 = v6 + 4;
      }
    }

    else
    {
      v20 = v6 + 3;
    }
  }

  v23 = *(this + 6);
  v24 = *this;
  v25 = *(v23 + 8);
  if (v25 >= -1 && *(v23 + 12) > v25)
  {
    goto LABEL_31;
  }

  if (icu::UVector32::expandCapacity(*(this + 6), v25 + 1, a4))
  {
    v25 = *(v23 + 8);
LABEL_31:
    *(*(v23 + 24) + 4 * v25) = v20 - v24;
    ++*(v23 + 8);
  }

  v26 = *(this + 6);
  v27 = *(*(this + 4) + 56);
  v28 = *(v26 + 8);
  if (v28 < -1 || *(v26 + 12) <= v28)
  {
    if (!icu::UVector32::expandCapacity(*(this + 6), v28 + 1, a4))
    {
      goto LABEL_37;
    }

    v28 = *(v26 + 8);
  }

  *(*(v26 + 24) + 4 * v28) = v27 | ((v17 << 16) - 0x10000);
  ++*(v26 + 8);
LABEL_37:
  icu::CharString::append(*(this + 4), v19, a4);
  if ((v21 & 1) == 0)
  {
    return &v20[Value];
  }

  result = 0;
  *(this + 1) = 0;
  *(this + 11) = Value;
  return result;
}

uint64_t icu::BytesTrie::Iterator::truncateAndStop(icu::BytesTrie::Iterator *this)
{
  *(this + 1) = 0;
  *(this + 11) = -1;
  return 1;
}

uint64_t icu::BytesTrie::Iterator::getString(icu::BytesTrie::Iterator *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

icu::CanonicalIterator *icu::CanonicalIterator::CanonicalIterator(icu::CanonicalIterator *this, UErrorCode *a2, UErrorCode *a3)
{
  *this = &unk_1F09317B0;
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = &unk_1F0935D00;
  *(this + 64) = 2;
  *(this + 23) = icu::Normalizer2::getNFDInstance(a3, a2);
  NFCImpl = icu::Normalizer2Factory::getNFCImpl(a3, v6);
  *(this + 24) = NFCImpl;
  if (*a3 <= 0 && icu::Normalizer2Impl::ensureCanonIterData(NFCImpl, a3))
  {
    icu::CanonicalIterator::setSource(this, a2, a3);
  }

  return this;
}

void icu::CanonicalIterator::setSource(icu::CanonicalIterator *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  (*(**(this + 23) + 24))(*(this + 23), a2, this + 8, a3);
  if (*a3 <= 0)
  {
    *(this + 72) = 0;
    icu::CanonicalIterator::cleanPieces(this);
    v6 = *(a2 + 4);
    v7 = v6;
    v8 = v6 >> 5;
    if (v7 < 0)
    {
      v8 = *(a2 + 3);
    }

    if (v8)
    {
      operator new[]();
    }

    *(this + 10) = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    *(this + 12) = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *(this + 22) = 1;
    v9 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *(this + 13) = v9;
    *(this + 28) = 1;
    if (*(this + 10) && v9 && *(this + 12))
    {
      *v9 = 0;
      operator new[]();
    }

    *a3 = U_MEMORY_ALLOCATION_ERROR;

    icu::CanonicalIterator::cleanPieces(this);
  }
}

void icu::CanonicalIterator::~CanonicalIterator(icu::CanonicalIterator *this)
{
  icu::CanonicalIterator::cleanPieces(this);
  icu::UnicodeString::~UnicodeString(v2, (this + 120));
  icu::UnicodeString::~UnicodeString(v3, (this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::CanonicalIterator::~CanonicalIterator(this);

  JUMPOUT(0x19A8B2600);
}

void icu::CanonicalIterator::cleanPieces(icu::CanonicalIterator *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 22);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(this + 10) + 8 * i);
        if (v5)
        {
          v6 = *(v5 - 8);
          if (v6)
          {
            v7 = (v5 + (v6 << 6) - 64);
            v8 = -64 * v6;
            do
            {
              v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
              v8 += 64;
            }

            while (v8);
          }

          MEMORY[0x19A8B25E0](v5 - 16, 0x1093C808E78F3FDLL);
          v3 = *(this + 22);
        }
      }

      v2 = *(this + 10);
    }

    free(v2);
    *(this + 10) = 0;
    *(this + 22) = 0;
  }

  v9 = *(this + 12);
  if (v9)
  {
    free(v9);
    *(this + 12) = 0;
  }

  v10 = *(this + 13);
  if (v10)
  {
    free(v10);
    *(this + 13) = 0;
    *(this + 28) = 0;
  }
}

uint64_t icu::CanonicalIterator::reset(uint64_t this)
{
  *(this + 72) = 0;
  if (*(this + 112) >= 1)
  {
    v1 = 0;
    v2 = *(this + 104);
    do
    {
      *(v2 + 4 * v1++) = 0;
    }

    while (v1 < *(this + 112));
  }

  return this;
}

UChar **icu::CanonicalIterator::next@<X0>(icu::CanonicalIterator *this@<X0>, icu::UnicodeString *a2@<X8>)
{
  if (*(this + 72))
  {
    icu::UnicodeString::setToBogus((this + 120));
  }

  else
  {
    if (*(this + 64))
    {
      v4 = 2;
    }

    else
    {
      v4 = *(this + 64) & 0x1E;
    }

    *(this + 64) = v4;
    if (*(this + 22) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(this + 10) + 8 * v5) + (*(*(this + 13) + 4 * v5) << 6);
        v7 = *(v6 + 8);
        v8 = v7;
        v9 = v7 >> 5;
        if (v8 >= 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = *(v6 + 12);
        }

        icu::UnicodeString::doAppend(this + 120, v6, 0, v10);
        ++v5;
      }

      while (v5 < *(this + 22));
    }

    v11 = *(this + 28);
    if (v11 < 1)
    {
LABEL_16:
      *(this + 72) = 1;
    }

    else
    {
      v13 = *(this + 12);
      v12 = *(this + 13);
      v14 = v11 - 1;
      while (1)
      {
        v15 = *(v12 + 4 * v14) + 1;
        *(v12 + 4 * v14) = v15;
        if (v15 < *(v13 + 4 * v14))
        {
          break;
        }

        *(v12 + 4 * v14--) = 0;
        if (v14 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return icu::UnicodeString::UnicodeString(a2, this + 15);
}

void *icu::CanonicalIterator::getEquivalents(icu::CanonicalIterator *this, const icu::UnicodeString *a2, int *a3, UErrorCode *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  if (*a4 <= 0)
  {
    uhash_init(v37 + 1, uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
    if (*a4 < 1)
    {
      *&v37[0] = v37 + 8;
      uhash_setKeyDeleter(v37 + 8, uprv_deleteUObject);
      v8 = *a4;
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *v31 = 0u;
      if (v8 <= 0)
      {
        uhash_init(&v31[1], uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
        if (*a4 < 1)
        {
          v31[0] = &v31[1];
          uhash_setKeyDeleter(&v31[1], uprv_deleteUObject);
          v9 = *a4;
          v30 = 0;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *v25 = 0u;
          if (v9 <= 0)
          {
            uhash_init(&v25[1], uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
            if (*a4 <= 0)
            {
              v25[0] = &v25[1];
              uhash_setKeyDeleter(&v25[1], uprv_deleteUObject);
              if (*a4 <= 0)
              {
                uhash_setValueDeleter(*&v37[0], uprv_deleteUObject);
                uhash_setValueDeleter(v31[0], uprv_deleteUObject);
                uhash_setValueDeleter(v25[0], uprv_deleteUObject);
                memset(v46, 0, 512);
                v24 = v46;
                v10 = icu::UnicodeString::extract(a2, &v24, 256, a4);
                icu::CanonicalIterator::getEquivalents2(this, v25, v46, v10, a4);
                if (*a4 <= 0)
                {
                  v23 = -1;
                  v11 = uhash_nextElement(v25[0], &v23);
                  if (v11)
                  {
                    v12 = v11;
                    do
                    {
                      memset(v45, 0, sizeof(v45));
                      icu::UnicodeString::UnicodeString(v45, *(v12 + 8));
                      uhash_removeAll(v31[0]);
                      icu::CanonicalIterator::permute(v45, 1u, v31, a4, 0);
                      v22 = -1;
                      v13 = uhash_nextElement(v31[0], &v22);
                      if (v13)
                      {
                        v14 = v13;
                        do
                        {
                          memset(v44, 0, sizeof(v44));
                          icu::UnicodeString::UnicodeString(v44, *(v14 + 8));
                          v43 = 0;
                          v42 = 0u;
                          v41 = 0u;
                          v40 = 0u;
                          v39 = &unk_1F0935D00;
                          LOWORD(v40) = 2;
                          (*(**(this + 23) + 24))(*(this + 23), v44, &v39, a4);
                          if (v40)
                          {
                            if (*(a2 + 4))
                            {
                              goto LABEL_33;
                            }
                          }

                          else
                          {
                            if ((v40 & 0x8000u) == 0)
                            {
                              v15 = v40 >> 5;
                            }

                            else
                            {
                              v15 = DWORD1(v40);
                            }

                            v16 = *(a2 + 4);
                            if ((v16 & 0x8000u) == 0)
                            {
                              v17 = v16 >> 5;
                            }

                            else
                            {
                              v17 = *(a2 + 3);
                            }

                            if ((v16 & 1) == 0 && v15 == v17)
                            {
                              v18 = (v16 & 2) != 0 ? (a2 + 10) : *(a2 + 3);
                              if (icu::UnicodeString::doEquals(&v39, v18, v15))
                              {
LABEL_33:
                                operator new();
                              }
                            }
                          }

                          v14 = uhash_nextElement(v31[0], &v22);
                          icu::UnicodeString::~UnicodeString(v19, &v39);
                          icu::UnicodeString::~UnicodeString(v20, v44);
                        }

                        while (v14);
                      }

                      v12 = uhash_nextElement(v25[0], &v23);
                      icu::UnicodeString::~UnicodeString(v21, v45);
                    }

                    while (v12);
                  }

                  if (*a4 <= 0)
                  {
                    if (uhash_count(*&v37[0]))
                    {
                      operator new[]();
                    }

                    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
                  }
                }
              }
            }

            if (v25[0])
            {
              uhash_close(v25[0]);
            }
          }
        }
      }

      if (v31[0])
      {
        uhash_close(v31[0]);
      }
    }
  }

  if (*&v37[0])
  {
    uhash_close(*&v37[0]);
  }

  return 0;
}

double icu::CanonicalIterator::permute(uint64_t a1, unsigned int a2, uint64_t *a3, int *a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return result;
  }

  if (a5 >= 9)
  {
    *a4 = 16;
    return result;
  }

  v9 = *(a1 + 8);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 < 0)
  {
    v11 = *(a1 + 12);
  }

  if (v11 > 2)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
  }

  else
  {
    if (icu::UnicodeString::countChar32(a1, 0, 0x7FFFFFFF) < 2)
    {
      operator new();
    }

    v13 = *a4;
    v34 = 0;
    result = 0.0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    if (v13 > 0)
    {
      return result;
    }
  }

  uhash_init(&v29[1], uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
  if (*a4 <= 0)
  {
    v29[0] = &v29[1];
    uhash_setKeyDeleter(&v29[1], uprv_deleteUObject);
    if (*a4 <= 0)
    {
      uhash_setValueDeleter(v29[0], uprv_deleteUObject);
      v14 = *(a1 + 8);
      v15 = v14;
      v16 = v14 >> 5;
      if (v15 < 0)
      {
        v16 = *(a1 + 12);
      }

      if (v16 >= 1)
      {
        v17 = 0;
        v27 = a2;
        do
        {
          v18 = icu::UnicodeString::char32At(a1, v17);
          v28 = -1;
          memset(v35, 0, sizeof(v35));
          icu::UnicodeString::UnicodeString(v35, a1);
          if (!a2 || !v17 || u_getCombiningClass(v18))
          {
            uhash_removeAll(v29[0]);
            if (v18 < 0x10000)
            {
              v20 = 1;
            }

            else
            {
              v20 = 2;
            }

            v21 = icu::UnicodeString::doReplace(v35, v17, v20, 0, 0, 0);
            icu::CanonicalIterator::permute(v21, v27, v29, a4, a5 + 1);
            v22 = *a4;
            if (v22 > 0)
            {
              icu::UnicodeString::~UnicodeString(v22, v35);
              break;
            }

            if (uhash_nextElement(v29[0], &v28))
            {
              operator new();
            }
          }

          icu::UnicodeString::~UnicodeString(v19, v35);
          if (v18 < 0x10000)
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          v17 = (v23 + v17);
          v24 = *(a1 + 8);
          v25 = v24;
          v26 = v24 >> 5;
          if (v25 < 0)
          {
            v26 = *(a1 + 12);
          }

          a2 = v27;
        }

        while (v17 < v26);
      }
    }
  }

  if (v29[0])
  {
    uhash_close(v29[0]);
  }

  return result;
}

void *icu::CanonicalIterator::getEquivalents2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    memset(v6, 0, 64);
    icu::UnicodeString::UnicodeString(v6, a3, a4);
    operator new();
  }

  return 0;
}

uint64_t *icu::CanonicalIterator::extract(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, int a5, int a6, int *a7)
{
  v59 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    return 0;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  icu::UnicodeString::UnicodeString(&v55, a3);
  if ((SWORD4(v55) & 0x8000u) == 0)
  {
    v14 = WORD4(v55) >> 5;
  }

  else
  {
    v14 = HIDWORD(v55);
  }

  v51 = 0u;
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  v50 = &unk_1F0935D00;
  LOWORD(v51) = 2;
  (*(**(a1 + 184) + 24))(*(a1 + 184), &v55, &v50, a7);
  v15 = *a7;
  if (v15 > 0)
  {
    goto LABEL_7;
  }

  if (v51)
  {
    Equivalents2 = 0;
    v15 = 7;
    *a7 = 7;
    goto LABEL_8;
  }

  v41 = v14;
  v42 = a6;
  if ((v51 & 0x10) != 0)
  {
    v18 = 0;
  }

  else if ((v51 & 2) != 0)
  {
    v18 = &v51 + 1;
  }

  else
  {
    v18 = v52;
  }

  if ((v51 & 0x8000u) == 0)
  {
    v19 = v51 >> 5;
  }

  else
  {
    v19 = DWORD1(v51);
  }

  v20 = *v18;
  v21 = 1;
  if ((v20 & 0xFC00) == 0xD800 && v19 != 1)
  {
    v22 = v18[1];
    v23 = (v22 & 0xFC00) == 56320;
    v24 = v22 + (v20 << 10) - 56613888;
    v21 = v23 ? 2 : 1;
    if (v23)
    {
      v20 = v24;
    }
  }

  v15 = v42;
  if (a5 <= v42)
  {
LABEL_7:
    Equivalents2 = 0;
    goto LABEL_8;
  }

  v25 = v42;
  while (1)
  {
    v26 = v25 + 1;
    v27 = *(a4 + 2 * v25);
    if ((v27 & 0xFC00) != 0xD800 || v26 == a5)
    {
      ++v25;
    }

    else
    {
      v29 = *(a4 + 2 * v26);
      v30 = (v29 & 0xFC00) == 56320;
      v31 = (v27 << 10) - 56613888 + v29;
      if (v30)
      {
        v27 = v31;
      }

      if (v30)
      {
        v25 += 2;
      }

      else
      {
        ++v25;
      }
    }

    if (v27 == v20)
    {
      break;
    }

    icu::UnicodeString::append(&v55, v27);
LABEL_57:
    if (a5 <= v25)
    {
      goto LABEL_7;
    }
  }

  if (v21 != v19)
  {
    v15 = v21 + 1;
    v20 = v18[v21];
    if ((v20 & 0xFC00) != 0xD800 || v15 == v19)
    {
      ++v21;
    }

    else
    {
      v33 = v18[v15];
      v34 = (v33 & 0xFC00) == 56320;
      v35 = (v20 << 10) - 56613888 + v33;
      if (v34)
      {
        v21 += 2;
      }

      else
      {
        ++v21;
      }

      if (v34)
      {
        v20 = v35;
      }
    }

    goto LABEL_57;
  }

  icu::UnicodeString::doAppend(&v55, a4 + 2 * v25, 0, (a5 - v25));
  v43[1] = a4 + 2 * v25;
  v36 = WORD4(v55) >> 5;
  if (SWORD4(v55) < 0)
  {
    v36 = HIDWORD(v55);
  }

  if (v41 == v36)
  {
    v45 = &unk_1F0935D00;
    LOWORD(v46) = 2;
    operator new();
  }

  v46 = 0u;
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  v45 = &unk_1F0935D00;
  LOWORD(v46) = 2;
  (*(**(a1 + 184) + 24))(*(a1 + 184), &v55, &v45, a7);
  v37 = *a7;
  if (v37 > 0 || (v44 = a4 + 2 * v42, v38 = sub_1951D0FDC(&v45, &v44, (a5 - v42)), v43[0] = v44, v37 = v43, v38))
  {
    Equivalents2 = 0;
  }

  else
  {
    if ((BYTE8(v55) & 0x11) != 0)
    {
      v39 = 0;
    }

    else if ((BYTE8(v55) & 2) != 0)
    {
      v39 = &v55 | 0xA;
    }

    else
    {
      v39 = *(&v56 + 1);
    }

    v40 = WORD4(v55) >> 5;
    if (SWORD4(v55) < 0)
    {
      v40 = HIDWORD(v55);
    }

    Equivalents2 = icu::CanonicalIterator::getEquivalents2(a1, a2, v39 + 2 * v41, (v40 - v41), a7);
  }

  icu::UnicodeString::~UnicodeString(v37, &v45);
LABEL_8:
  icu::UnicodeString::~UnicodeString(v15, &v50);
  icu::UnicodeString::~UnicodeString(v16, &v55);
  return Equivalents2;
}

uint64_t sub_1951D0FDC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  if (*(a1 + 8) < 0)
  {
    v4 = *(a1 + 12);
  }

  else
  {
    v4 = *(a1 + 8) >> 5;
  }

  return icu::UnicodeString::doCompare(a1, 0, v4, *a2, 0, v3);
}

uint64_t sub_1951D1008(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if ((a1 - 4096) > 0x1A)
  {
    v5 = sub_195288408(a1);

    return sub_1951D12B8(v5, a2);
  }

  else
  {
    v4 = &qword_1ED441B58[2 * (a1 - 4076)];
    sub_1951D10A4(v4 + 2, sub_1951D1144, a1, a2);
    return *v4;
  }
}

void sub_1951D10A4(atomic_uint *result, void (*a2)(uint64_t, int *), uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (atomic_load_explicit(result, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(result))
    {
      v8 = result[1];
      if (v8 >= 1)
      {
        *a4 = v8;
      }
    }

    else
    {
      a2(a3, a4);
      result[1] = *a4;

      icu::umtx_initImplPostInit(result);
    }
  }
}

uint64_t sub_1951D1144(uint64_t a1, int *a2)
{
  v3 = sub_195288408(a1);
  result = sub_1951D12B8(v3, a2);
  if (*a2 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1951D12B8(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (a1 < 0x14)
  {
    v3 = &qword_1ED441B58[2 * a1];
    sub_1951D10A4(v3 + 2, sub_1951D1928, a1, a2);
    return *v3;
  }

  else
  {
    result = 0;
    *a2 = 1;
  }

  return result;
}

icu::UnicodeSet *sub_1951D1334(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = a1;
  if (a1 < 0x4C)
  {
    umtx_lock(&unk_1ED4420A8);
    v2 = qword_1ED441E48[v4];
    if (!v2)
    {
      if (*a2 <= 0)
      {
        operator new();
      }

      v2 = 0;
      qword_1ED441E48[v4] = 0;
    }

    umtx_unlock(&unk_1ED4420A8);
  }

  else
  {
    v2 = 0;
    *a2 = 1;
  }

  return v2;
}

const USet *__cdecl u_getBinaryPropertySet(UProperty property, UErrorCode *pErrorCode)
{
  result = sub_1951D1334(*&property, pErrorCode);
  if (*pErrorCode > 0)
  {
    return 0;
  }

  return result;
}

const UCPMap *__cdecl u_getIntPropertyMap(UProperty property, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  v4 = *&property;
  if ((property - 4123) > 0xFFFFFFE4)
  {
    umtx_lock(&unk_1ED4420A8);
    v5 = v4 - 4096;
    v2 = qword_1EAEC95B8[(v4 - 4096)];
    if (!v2)
    {
      if (*pErrorCode <= 0)
      {
        if (v4 == 4106)
        {
          v6 = 103;
        }

        else
        {
          v6 = 0;
        }

        v7 = umutablecptrie_open(v6, v6, pErrorCode);
        v8 = sub_1951D1008(v4, pErrorCode);
        if (*pErrorCode <= 0)
        {
          v9 = v8;
          RangeCount = icu::UnicodeSet::getRangeCount(v8);
          if (RangeCount < 1)
          {
            v10 = 0;
            LODWORD(v15) = v6;
          }

          else
          {
            v10 = 0;
            v11 = 0;
            v12 = v6;
            v20 = v9;
            do
            {
              RangeEnd = icu::UnicodeSet::getRangeEnd(v9, v11);
              RangeStart = icu::UnicodeSet::getRangeStart(v9, v11);
              if (RangeStart <= RangeEnd)
              {
                v16 = RangeStart;
                v17 = RangeEnd + 1;
                do
                {
                  IntPropertyValue = u_getIntPropertyValue(v16, v4);
                  if (v12 == IntPropertyValue)
                  {
                    v15 = v12;
                  }

                  else
                  {
                    v15 = IntPropertyValue;
                    if (v12 != v6)
                    {
                      umutablecptrie_setRange(v7, v10, (v16 - 1), v12, pErrorCode);
                    }

                    v10 = v16;
                  }

                  ++v16;
                  v12 = v15;
                }

                while (v17 != v16);
              }

              else
              {
                v15 = v12;
              }

              ++v11;
              v12 = v15;
              v9 = v20;
            }

            while (v11 != RangeCount);
          }

          if (v15)
          {
            umutablecptrie_setRange(v7, v10, 1114111, v15, pErrorCode);
          }

          u_getIntPropertyMaxValue(v4);
          v2 = umutablecptrie_buildImmutable(v7);
          v5 = v4 - 4096;
        }

        else
        {
          v2 = 0;
        }

        if (v7)
        {
          umutablecptrie_close(v7);
        }
      }

      else
      {
        v2 = 0;
      }

      qword_1EAEC95B8[v5] = v2;
    }

    umtx_unlock(&unk_1ED4420A8);
  }

  else
  {
    v2 = 0;
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return v2;
}

uint64_t sub_1951D1824@<X0>(void *a1@<X8>)
{
  v1 = qword_1ED441B58;
  v2 = 752;
  do
  {
    if (*v1)
    {
      v3 = icu::UnicodeSet::~UnicodeSet(a1, *v1);
      MEMORY[0x19A8B2600](v3, 0x10B1C403432821BLL);
    }

    a1 = v1 + 1;
    *v1 = 0;
    v1 += 2;
    atomic_store(0, a1);
    v2 -= 16;
  }

  while (v2);
  for (i = 0; i != 76; ++i)
  {
    v5 = qword_1ED441E48[i];
    if (v5)
    {
      v6 = icu::UnicodeSet::~UnicodeSet(a1, v5);
      MEMORY[0x19A8B2600](v6, 0x10B1C403432821BLL);
    }

    qword_1ED441E48[i] = 0;
  }

  for (j = 0; j != 27; ++j)
  {
    ucptrie_close(qword_1EAEC95B8[j]);
    qword_1EAEC95B8[j] = 0;
  }

  return 1;
}

icu::UnicodeSet **sub_1951D18E4@<X0>(icu::UnicodeSet **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = icu::UnicodeSet::~UnicodeSet(a2, v3);
    MEMORY[0x19A8B2600](v4, 0x10B1C403432821BLL);
  }

  return a1;
}

icu::UnicodeSet **sub_1951D1928(icu::UnicodeSet **result, icu::Normalizer2Factory *a2)
{
  if (result)
  {
    operator new();
  }

  *a2 = 5;
  return result;
}

void sub_1951D1BD4(icu::UnicodeSet *a1, const UChar *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a2;
  icu::UnicodeString::UnicodeString(v6, a3 >> 31, &v5, a3);
  icu::UnicodeSet::add(a1, v6);
  icu::UnicodeString::~UnicodeString(v4, v6);
}

void *icu::CharacterIterator::CharacterIterator(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F0931840;
  return this;
}

uint64_t icu::CharacterIterator::CharacterIterator(uint64_t this, int a2)
{
  *this = &unk_1F0931840;
  *(this + 8) = a2;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 20) = a2;
  if (a2 < 0)
  {
    *(this + 20) = 0;
    *(this + 8) = 0;
  }

  return this;
}

uint64_t icu::CharacterIterator::CharacterIterator(uint64_t this, unsigned int a2, unsigned int a3)
{
  *this = &unk_1F0931840;
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 20) = a2;
  if ((a2 & 0x80000000) == 0)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    a2 = 0;
    goto LABEL_7;
  }

  a2 = 0;
  *(this + 20) = 0;
  *(this + 8) = 0;
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (a2 < a3)
  {
LABEL_7:
    *(this + 12) = a2;
  }

  return this;
}

uint64_t icu::CharacterIterator::CharacterIterator(uint64_t this, unsigned int a2, int a3, int a4, int a5)
{
  *this = &unk_1F0931840;
  *(this + 8) = a2;
  *(this + 12) = a5;
  *(this + 16) = a3;
  *(this + 20) = a4;
  if ((a2 & 0x80000000) != 0)
  {
    a2 = 0;
    *(this + 8) = 0;
    if ((a3 & 0x80000000) == 0)
    {
LABEL_3:
      v5 = a2;
      if (a2 >= a3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v5 = 0;
LABEL_7:
  *(this + 16) = v5;
  a3 = v5;
LABEL_8:
  v6 = a3;
  if (a3 > a4 || (v6 = a2, a2 < a4))
  {
    *(this + 20) = v6;
    a4 = v6;
  }

  if (a3 > a5 || (a3 = a4, a4 < a5))
  {
    *(this + 12) = a3;
  }

  return this;
}

__n128 icu::CharacterIterator::CharacterIterator(icu::CharacterIterator *this, const icu::CharacterIterator *a2)
{
  *this = &unk_1F0931840;
  result = *(a2 + 8);
  *(this + 8) = result;
  return result;
}

__n128 icu::CharacterIterator::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t icu::CharacterIterator::firstPostInc(icu::CharacterIterator *this)
{
  (*(*this + 192))(this, 0, 0);
  v2 = *(*this + 40);

  return v2(this);
}

uint64_t icu::CharacterIterator::first32PostInc(icu::CharacterIterator *this)
{
  (*(*this + 192))(this, 0, 0);
  v2 = *(*this + 48);

  return v2(this);
}

uint64_t icu::CharString::CharString(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  v6 = (a2 + 13);
  if (v4 == v6)
  {
    *a1 = a1 + 13;
    memcpy((a1 + 13), v6, v5);
  }

  else
  {
    *a2 = v6;
    *(a2 + 8) = 40;
    *(a2 + 12) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  return a1;
}

{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  v6 = (a2 + 13);
  if (v4 == v6)
  {
    *a1 = a1 + 13;
    memcpy((a1 + 13), v6, v5);
  }

  else
  {
    *a2 = v6;
    *(a2 + 8) = 40;
    *(a2 + 12) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  return a1;
}

uint64_t icu::CharString::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    free(*a1);
  }

  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = *(a2 + 12);
  v5 = (a2 + 13);
  if (*a2 == a2 + 13)
  {
    *a1 = a1 + 13;
    memcpy((a1 + 13), v5, v4);
  }

  else
  {
    *a1 = *a2;
    *a2 = v5;
    *(a2 + 8) = 40;
    *(a2 + 12) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  return a1;
}

void *icu::CharString::cloneData(const void **this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = malloc_type_malloc(*(this + 14) + 1, 0x100004077774924uLL);
  if (!v5)
  {
    *a2 = U_MEMORY_ALLOCATION_ERROR;
    return 0;
  }

  v6 = *this;
  v7 = *(this + 14) + 1;

  return memcpy(v5, v6, v7);
}

uint64_t icu::CharString::extract(char **this, char *__dst, uint64_t a3, UErrorCode *a4)
{
  if (*a4 >= 1)
  {
    return *(this + 14);
  }

  v6 = a3;
  if ((a3 & 0x80000000) != 0 || !__dst && a3)
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return *(this + 14);
  }

  v9 = *this;
  v10 = *(this + 14);
  if (v10 >= 1 && v10 <= v6 && v9 != __dst)
  {
    memcpy(__dst, v9, v10);
    v10 = *(this + 14);
  }

  return u_terminateChars(__dst, v6, v10, a4);
}

const void **icu::CharString::copyFrom(const void **this, const void **a2, UErrorCode *a3)
{
  if (this != a2 && *a3 <= 0 && icu::CharString::ensureCapacity(this, (*(a2 + 14) + 1), 0, a3))
  {
    v5 = *(a2 + 14);
    *(this + 14) = v5;
    memcpy(*this, *a2, v5 + 1);
  }

  return this;
}

uint64_t icu::CharString::ensureCapacity(icu::CharString *this, size_t size, unsigned int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v5 = size;
  v7 = *(this + 2);
  if (v7 >= size)
  {
    return 1;
  }

  v9 = v7 + size;
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if (v10 > size && v10 >= 1)
  {
    v11 = *(this + 14);
    v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
    if (v12)
    {
      v13 = v12;
      if ((v11 & 0x80000000) == 0)
      {
        v14 = v11 + 1;
        if (*(this + 2) < v11 + 1)
        {
          v14 = *(this + 2);
        }

        if (v14 >= v10)
        {
          v14 = v10;
        }

        memcpy(v12, *this, v14);
      }

      if (*(this + 12))
      {
        free(*this);
      }

      *this = v13;
      *(this + 2) = v10;
LABEL_31:
      result = 1;
      *(this + 12) = 1;
      return result;
    }
  }

  if (v5 >= 1)
  {
    v15 = *(this + 14);
    v16 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (v16)
    {
      v17 = v16;
      if ((v15 & 0x80000000) == 0)
      {
        v18 = v15 + 1;
        if (*(this + 2) < v15 + 1)
        {
          v18 = *(this + 2);
        }

        if (v18 >= v5)
        {
          v18 = v5;
        }

        memcpy(v16, *this, v18);
      }

      if (*(this + 12))
      {
        free(*this);
      }

      *this = v17;
      *(this + 2) = v5;
      goto LABEL_31;
    }
  }

  result = 0;
  *a4 = U_MEMORY_ALLOCATION_ERROR;
  return result;
}

uint64_t icu::CharString::lastIndexOf(icu::CharString *this, unsigned __int8 a2)
{
  result = *(this + 14);
  v4 = result - 1;
  while (1)
  {
    v5 = __OFSUB__(result, 1);
    result = (result - 1);
    if (result < 0 != v5)
    {
      break;
    }

    v6 = *(*this + v4--);
    if (v6 == a2)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

BOOL icu::CharString::contains(char **a1, void *__s2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = *(a1 + 14);
  v4 = __OFSUB__(v3, a3);
  v5 = v3 - a3;
  if (v5 < 0 != v4)
  {
    return 0;
  }

  v8 = *a1;
  v9 = a3;
  v10 = (v5 + 1) - 1;
  do
  {
    v11 = v10;
    v12 = memcmp(v8, __s2, v9);
    result = v12 == 0;
    if (!v12)
    {
      break;
    }

    v10 = v11 - 1;
    ++v8;
  }

  while (v11);
  return result;
}

uint64_t icu::CharString::truncate(uint64_t this, int a2)
{
  v2 = a2 & ~(a2 >> 31);
  if (v2 < *(this + 56))
  {
    *(this + 56) = v2;
    *(*this + v2) = 0;
  }

  return this;
}

icu::CharString *icu::CharString::append(icu::CharString *this, char a2, UErrorCode *a3)
{
  if (icu::CharString::ensureCapacity(this, (*(this + 14) + 2), 0, a3))
  {
    v5 = *(this + 14);
    *(this + 14) = v5 + 1;
    *(*this + v5) = a2;
    *(*this + *(this + 14)) = 0;
  }

  return this;
}

icu::CharString *icu::CharString::append(icu::CharString *this, const char *a2, int a3, UErrorCode *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v6 = a3;
    if (a3 < -1 || !a2 && a3)
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_6:
      *a4 = v8;
      return this;
    }

    if (a3 < 0)
    {
      v6 = strlen(a2);
    }

    if (v6 >= 1)
    {
      v10 = *this;
      v11 = *(this + 14);
      v12 = (*this + v11);
      if (v12 == a2)
      {
        if (v6 < *(this + 2) - v11)
        {
          v14 = v11 + v6;
          *(this + 14) = v14;
          *(v10 + v14) = 0;
          return this;
        }

        v8 = U_INTERNAL_PROGRAM_ERROR;
        goto LABEL_6;
      }

      if (v10 <= a2 && v12 > a2 && v6 >= *(this + 2) - v11)
      {
        v15 = &v17 + 1;
        v16 = 40;
        v17 = 0;
        v18 = 0;
        icu::CharString::append(&v15, a2, v6, a4);
        this = icu::CharString::append(this, v15, v18, a4);
        if (v17)
        {
          free(v15);
        }
      }

      else if (icu::CharString::ensureCapacity(this, (v6 + v11 + 1), 0, a4))
      {
        memcpy((*this + *(this + 14)), a2, v6);
        v13 = *(this + 14) + v6;
        *(this + 14) = v13;
        *(*this + v13) = 0;
      }
    }
  }

  return this;
}

icu::CharString *icu::CharString::appendNumber(icu::CharString *this, int a2, UErrorCode *a3)
{
  v4 = a2;
  if (a2 < 0)
  {
    this = icu::CharString::append(this, 45, a3);
    if (*a3 >= 1)
    {
      return this;
    }
  }

  else if (!a2)
  {
    return icu::CharString::append(this, 48, a3);
  }

  v5 = 0;
  while (v4)
  {
    v6 = v4 % 10;
    if (v4 % 10 < 0)
    {
      v6 = -v6;
    }

    this = icu::CharString::append(this, v6 + 48, a3);
    --v5;
    v4 /= 10;
    if (*a3 >= 1)
    {
      return this;
    }
  }

  v7 = *(this + 14);
  if (v7 + v5 < v7 - 1)
  {
    v8 = v7 - 1;
    v9 = v7 + v5;
    do
    {
      v10 = *this;
      v11 = *(*this + v9);
      *(v10 + v9) = *(*this + v8);
      *(v10 + v8--) = v11;
      ++v9;
    }

    while (v9 < v8);
  }

  return this;
}

uint64_t icu::CharString::getAppendBuffer(icu::CharString *this, int a2, int a3, int *a4, UErrorCode *a5)
{
  if (*a5 >= 1)
  {
    goto LABEL_2;
  }

  v8 = *(this + 14);
  v9 = *(this + 2) + ~v8;
  if (v9 >= a2)
  {
    *a4 = v9;
  }

  else
  {
    if (!icu::CharString::ensureCapacity(this, (a2 + v8 + 1), a3 + v8 + 1, a5))
    {
LABEL_2:
      result = 0;
      *a4 = 0;
      return result;
    }

    *a4 = *(this + 2) + ~*(this + 14);
  }

  return *this + *(this + 14);
}

icu::CharString *icu::CharString::appendInvariantChars(icu::CharString *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v5 = *(a2 + 4);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = (a2 + 10);
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = v5;
  v8 = v5 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 3);
  }

  return icu::CharString::appendInvariantChars(this, v6, v9, a3);
}

icu::CharString *icu::CharString::appendInvariantChars(icu::CharString *a1, UChar *a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v7 = a3;
    if (uprv_isInvariantUString(a2, a3))
    {
      if (icu::CharString::ensureCapacity(a1, (v7 + *(a1 + 14) + 1), 0, a4))
      {
        u_UCharsToChars(a2, (*a1 + *(a1 + 14)), v7);
        v9 = *(a1 + 14) + v7;
        *(a1 + 14) = v9;
        *(*a1 + v9) = 0;
      }
    }

    else
    {
      *a4 = U_INVARIANT_CONVERSION_ERROR;
    }
  }

  return a1;
}

icu::CharString *icu::CharString::appendPathPart(icu::CharString *a1, const char *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0 && a3 != 0)
  {
    v9 = *(a1 + 14);
    if (v9 >= 1 && *(*a1 + v9 - 1) != 47)
    {
      icu::CharString::append(a1, 47, a4);
    }

    icu::CharString::append(a1, a2, a3, a4);
  }

  return a1;
}

icu::CharString *icu::CharString::ensureEndsWithFileSeparator(icu::CharString *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = *(this + 14);
    if (v2 >= 1 && *(*this + v2 - 1) != 47)
    {
      return icu::CharString::append(this, 47, a2);
    }
  }

  return this;
}

void u_setMemoryFunctions()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_19542FCE8();
  }
}

icu::CStr *icu::CStr::CStr(icu::CStr *this, const icu::UnicodeString *a2)
{
  *(this + 1) = this + 21;
  v4 = (this + 8);
  *(this + 4) = 40;
  *(this + 10) = 0;
  *(this + 16) = 0;
  v18 = U_ZERO_ERROR;
  v5 = *(a2 + 4);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  v9 = icu::UnicodeString::extract(a2, 0, v8, 0, 0);
  v17 = 0;
  AppendBuffer = icu::CharString::getAppendBuffer(v4, v9, v9, &v17, &v18);
  if (v18 <= U_ZERO_ERROR)
  {
    v11 = AppendBuffer;
    v12 = *(a2 + 4);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a2 + 3);
    }

    icu::UnicodeString::extract(a2, 0, v15, AppendBuffer, v17);
    icu::CharString::append(v4, v11, v9, &v18);
  }

  return this;
}

void icu::CStr::~CStr(void **this)
{
  if (*(this + 20))
  {
    free(this[1]);
  }
}

{
  if (*(this + 20))
  {
    free(this[1]);
  }
}

uint64_t uprv_toupper(int a1)
{
  if ((a1 - 97) >= 0x1A)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

uint64_t uprv_asciitolower(signed __int8 a1)
{
  v1 = a1;
  if (a1 - 65 < 0x1A)
  {
    return (a1 | 0x20);
  }

  return v1;
}

uint64_t uprv_ebcdictolower(char a1)
{
  if (((a1 & 0xEF) + 63) >= 9u && (a1 + 30) >= 8u)
  {
    return a1;
  }

  else
  {
    return (a1 - 64);
  }
}

unsigned __int8 *T_CString_toLowerCase(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      if ((v2 - 65) < 0x1A)
      {
        v2 |= 0x20u;
      }

      *v1++ = v2;
    }

    while (v2);
  }

  return result;
}

unsigned __int8 *T_CString_toUpperCase(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      if ((v2 - 97) < 0x1A)
      {
        LOBYTE(v2) = v2 - 32;
      }

      *v1++ = v2;
    }

    while (v2);
  }

  return result;
}

uint64_t T_CString_integerToString(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  v11 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) != 0 && a3 == 10)
  {
    a2 = -a2;
    *a1 = 45;
    v3 = 1;
  }

  HIBYTE(v9) = 0;
  v4 = &v10;
  LODWORD(v5) = v3;
  v10 = 0;
  do
  {
    v6 = a2 % a3 + 55;
    if (((a2 % a3) & 0xFE) < 0xA)
    {
      LOBYTE(v6) = (a2 % a3) | 0x30;
    }

    *--v4 = v6;
    v5 = (v5 + 1);
    v7 = a2 >= a3;
    a2 /= a3;
  }

  while (v7);
  strcpy(&a1[v3], v4);
  return v5;
}

uint64_t T_CString_int64ToString(_BYTE *a1, unint64_t a2, unsigned int a3)
{
  v3 = 0;
  v13 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x8000000000000000) != 0 && a3 == 10)
  {
    a2 = -a2;
    *a1 = 45;
    v3 = 1;
  }

  HIBYTE(v11) = 0;
  v4 = &v12;
  LODWORD(v5) = v3;
  v12 = 0;
  do
  {
    v6 = a2 % a3;
    v7 = v6 | 0x30;
    v8 = v6 + 55;
    if (((a2 % a3) & 0xFE) < 0xA)
    {
      v8 = v7;
    }

    *--v4 = v8;
    v5 = (v5 + 1);
    v9 = a2 >= a3;
    a2 /= a3;
  }

  while (v9);
  strcpy(&a1[v3], v4);
  return v5;
}

uint64_t uprv_stricmp(_BYTE *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (!a2)
    {
      return 1;
    }

    v2 = *a1;
    v3 = *a2;
    if (*a1)
    {
      v4 = a2 + 1;
      v5 = a1 + 1;
      while (v3)
      {
        if ((v2 - 65) < 0x1A)
        {
          v2 |= 0x20u;
        }

        if ((v3 - 65) < 0x1A)
        {
          v3 |= 0x20u;
        }

        result = (v2 - v3);
        if (v2 != v3)
        {
          return result;
        }

        v7 = *v5++;
        v2 = v7;
        v8 = *v4++;
        v3 = v8;
        if (!v2)
        {
          goto LABEL_12;
        }
      }

      return 1;
    }

LABEL_12:
    v9 = v3 == 0;
  }

  else
  {
    v9 = a2 == 0;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uprv_strnicmp(_BYTE *a1, _BYTE *a2, int a3)
{
  if (a1)
  {
    if (!a2)
    {
      return 1;
    }

    if (!a3)
    {
      return 0;
    }

    while (1)
    {
      v3 = *a1;
      v4 = *a2;
      if (!*a1)
      {
        break;
      }

      if (!*a2)
      {
        return 1;
      }

      if ((v3 - 65) < 0x1A)
      {
        v3 |= 0x20u;
      }

      if ((v4 - 65) < 0x1A)
      {
        v4 |= 0x20u;
      }

      v5 = (v3 - v4);
      if (v5)
      {
        return v5;
      }

      ++a1;
      ++a2;
      if (!--a3)
      {
        return 0;
      }
    }

    v6 = v4 == 0;
  }

  else
  {
    v6 = a2 == 0;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *uprv_strdup(const char *a1)
{
  v2 = strlen(a1);
  result = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (result)
  {

    return memcpy(result, a1, v2 + 1);
  }

  return result;
}

_BYTE *uprv_strndup(const char *a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {

    return uprv_strdup(a1);
  }

  else
  {
    v4 = malloc_type_malloc(a2 + 1, 0x100004077774924uLL);
    v5 = v4;
    if (v4)
    {
      memcpy(v4, a1, a2);
      v5[a2] = 0;
    }

    return v5;
  }
}

void *sub_1951D3040(void *a1)
{
  v2 = sub_1951CAC20(a1);
  *v2 = &unk_1F0931958;
  icu::UnicodeSet::UnicodeSet((v2 + 1));
  return a1;
}

void sub_1951D3088(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0931958;
  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 8));

  icu::UObject::~UObject(a1);
}

uint64_t sub_1951D30EC(uint64_t a1, UText *ut, int a3, int a4, uint64_t a5, uint64_t a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  utext_setNativeIndex(ut, a3);
  NativeIndex = utext_getNativeIndex(ut);
  while (1)
  {
    v15 = utext_current32(ut);
    v16 = utext_getNativeIndex(ut);
    if (v16 >= a4 || !icu::UnicodeSet::contains((a1 + 8), v15))
    {
      break;
    }

    utext_next32(ut);
  }

  v17 = (*(*a1 + 48))(a1, ut, NativeIndex, v16, a5, a6, a7);
  utext_setNativeIndex(ut, v16);
  return v17;
}

icu::UnicodeSet *sub_1951D31FC(uint64_t a1, const icu::UnicodeSet *a2)
{
  icu::UnicodeSet::operator=((a1 + 8), a2);

  return icu::UnicodeSet::compact((a1 + 8));
}

uint64_t sub_1951D3238(unsigned int *a1, UText *ut, uint64_t a3, int a4)
{
  NativeIndex = utext_getNativeIndex(ut);
  v9 = NativeIndex;
  if (a1[2] != NativeIndex)
  {
    a1[2] = NativeIndex;
    LODWORD(result) = (*(*a3 + 16))(a3, ut, a4 - NativeIndex, 20, a1 + 5, a1 + 25, 0, a1 + 1);
    *a1 = result;
    if (result > 0)
    {
LABEL_5:
      utext_setNativeIndex(ut, a1[(result - 1) + 5] + v9);
      result = *a1;
      goto LABEL_6;
    }

    utext_setNativeIndex(ut, v9);
  }

  result = *a1;
  if (result >= 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  a1[3] = result - 1;
  a1[4] = result - 1;
  return result;
}

void *sub_1951D331C(void *a1, uint64_t a2, UErrorCode *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = sub_1951CAC20(a1);
  *v6 = &unk_1F0931958;
  icu::UnicodeSet::UnicodeSet((v6 + 1));
  *a1 = &unk_1F09319A0;
  icu::UnicodeSet::UnicodeSet((a1 + 26));
  icu::UnicodeSet::UnicodeSet((a1 + 51));
  icu::UnicodeSet::UnicodeSet((a1 + 76));
  icu::UnicodeSet::UnicodeSet((a1 + 101));
  a1[126] = a2;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1951D6EE0(v13, "[");
  icu::UnicodeSet::UnicodeSet(v11, v13, a3);
  icu::UnicodeString::~UnicodeString(v7, v13);
  if (*a3 <= 0)
  {
    (*(*a1 + 40))(a1, v11);
  }

  sub_1951D6EE0(v13, "[");
  icu::UnicodeSet::applyPattern((a1 + 101), v13, a3);
  icu::UnicodeString::~UnicodeString(v8, v13);
  icu::UnicodeSet::add((a1 + 101), 0x20u);
  icu::UnicodeSet::operator=((a1 + 26), v11);
  icu::UnicodeSet::remove((a1 + 26), 0xE31u);
  icu::UnicodeSet::remove((a1 + 26), 0xE40u, 0xE44u);
  icu::UnicodeSet::add((a1 + 51), 3585, 0xE2Eu);
  icu::UnicodeSet::add((a1 + 51), 3648, 0xE44u);
  icu::UnicodeSet::add((a1 + 76), 0xE2Fu);
  icu::UnicodeSet::add((a1 + 76), 0xE46u);
  icu::UnicodeSet::compact((a1 + 101));
  icu::UnicodeSet::compact((a1 + 26));
  icu::UnicodeSet::compact((a1 + 51));
  icu::UnicodeSet::compact((a1 + 76));
  icu::UnicodeSet::~UnicodeSet(v9, v11);
  return a1;
}

void sub_1951D3528(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09319A0;
  v3 = a1[126];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 101));
  icu::UnicodeSet::~UnicodeSet(v4, (a1 + 76));
  icu::UnicodeSet::~UnicodeSet(v5, (a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v6, (a1 + 26));
  *a1 = &unk_1F0931958;
  icu::UnicodeSet::~UnicodeSet(v7, (a1 + 1));

  icu::UObject::~UObject(a1);
}

void sub_1951D35EC(void *a1@<X0>, void *a2@<X8>)
{
  sub_1951D3528(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951D3624(uint64_t *a1, UText *ut, int a3, int a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = a7;
  v12 = a3;
  utext_setNativeIndex(ut, a3);
  utext_moveIndex32(ut, 4);
  if (utext_getNativeIndex(ut) >= a4)
  {
    return 0;
  }

  utext_setNativeIndex(ut, v12);
  bzero(v56, 0x21CuLL);
  for (i = 0; i != 135; i += 45)
  {
    v14 = &v56[i];
    *v14 = xmmword_195430900;
    v14[4] = 0;
  }

  utext_setNativeIndex(ut, v12);
  if (*v7 <= 0)
  {
    v15 = 0;
    v54 = v7;
    v55 = a5;
    while (1)
    {
      NativeIndex = utext_getNativeIndex(ut);
      if (NativeIndex >= a4)
      {
        goto LABEL_64;
      }

      v18 = &v56[45 * (v15 % 3)];
      v19 = sub_1951D3238(v18, ut, a1[126], a4);
      if (v19 == 1)
      {
        utext_setNativeIndex(ut, v18[v18[3] + 5] + v18[2]);
        v20 = v18[3];
        v21 = v18[v20 + 5];
        v22 = v18[v20 + 25];
        v15 = (v15 + 1);
      }

      else if (v19 < 2)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v23 = (v15 + 1);
        if (utext_getNativeIndex(ut) < a4)
        {
          v24 = &v56[45 * (v23 % 3)];
          v25 = &v56[45 * ((v15 + 2) % 3u)];
          while (sub_1951D3238(&v56[45 * (v23 % 3)], ut, a1[126], a4) < 1)
          {
LABEL_21:
            v30 = v18[4];
            v27 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 != v27)
            {
              goto LABEL_25;
            }

            v32 = v18[2];
            v18[4] = v31;
            utext_setNativeIndex(ut, v18[v31 + 5] + v32);
          }

          v18[3] = v18[4];
          if (utext_getNativeIndex(ut) < a4)
          {
            while (!sub_1951D3238(v25, ut, a1[126], a4))
            {
              v26 = v24[4];
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 != v27)
              {
                goto LABEL_21;
              }

              v29 = v24[2];
              v24[4] = v28;
              utext_setNativeIndex(ut, v24[v28 + 5] + v29);
            }

            v18[3] = v18[4];
          }
        }

LABEL_25:
        utext_setNativeIndex(ut, v18[v18[3] + 5] + v18[2]);
        v33 = v18[3];
        v21 = v18[v33 + 5];
        v22 = v18[v33 + 25];
        v15 = v23;
        v7 = v54;
        a5 = v55;
      }

      if (utext_getNativeIndex(ut) < a4 && v22 <= 2)
      {
        if (sub_1951D3238(&v56[45 * (v15 % 3)], ut, a1[126], a4) > 0 || v21 && v56[45 * (v15 % 3) + 1] > 2)
        {
          utext_setNativeIndex(ut, v21 + NativeIndex);
        }

        else
        {
          v34 = utext_getNativeIndex(ut);
          v35 = utext_next32(ut);
          v36 = utext_getNativeIndex(ut) - v34;
          v37 = a4 - v36 - (v21 + NativeIndex);
          if (v37 >= 1)
          {
            do
            {
              v38 = utext_current32(ut);
              if (icu::UnicodeSet::contains((a1 + 26), v35))
              {
                if (icu::UnicodeSet::contains((a1 + 51), v38))
                {
                  v39 = sub_1951D3238(&v56[45 * ((v15 + 1) % 3u)], ut, a1[126], a4);
                  utext_setNativeIndex(ut, v36 + v21 + NativeIndex);
                  if (v39 > 0)
                  {
                    break;
                  }
                }
              }

              v40 = utext_getNativeIndex(ut);
              v35 = utext_next32(ut);
              v41 = utext_getNativeIndex(ut);
              v36 += v41 - v40;
              v27 = __OFSUB__(v37, v41 - v40);
              v37 -= v41 - v40;
            }

            while (!((v37 < 0) ^ v27 | (v37 == 0)));
          }

          if (v21 >= 1)
          {
            v15 = v15;
          }

          else
          {
            v15 = (v15 + 1);
          }

          v21 += v36;
          v7 = v54;
          a5 = v55;
        }
      }

      v42 = utext_getNativeIndex(ut);
      if (v42 < a4)
      {
        v43 = v42;
        do
        {
          v44 = utext_current32(ut);
          if (!icu::UnicodeSet::contains((a1 + 101), v44))
          {
            break;
          }

          utext_next32(ut);
          v21 = v21 - v43 + utext_getNativeIndex(ut);
          v43 = utext_getNativeIndex(ut);
        }

        while (v43 < a4);
      }

      if (utext_getNativeIndex(ut) >= a4 || v21 < 1)
      {
        goto LABEL_57;
      }

      if (sub_1951D3238(&v56[45 * (v15 % 3)], ut, a1[126], a4) <= 0 && (v45 = utext_current32(ut), v46 = v45, icu::UnicodeSet::contains((a1 + 76), v45)))
      {
        if (v46 != 3631)
        {
          goto LABEL_54;
        }

        v47 = utext_previous32(ut);
        v48 = icu::UnicodeSet::contains((a1 + 76), v47);
        utext_next32(ut);
        if (!v48)
        {
          v49 = utext_getNativeIndex(ut);
          utext_next32(ut);
          v21 = v21 - v49 + utext_getNativeIndex(ut);
          v46 = utext_current32(ut);
LABEL_54:
          if (v46 == 3654)
          {
            v50 = utext_previous32(ut);
            utext_next32(ut);
            if (v50 != 3654)
            {
              v51 = utext_getNativeIndex(ut);
              utext_next32(ut);
              v21 = v21 - v51 + utext_getNativeIndex(ut);
            }
          }

LABEL_57:
          if (v21 < 1)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        utext_setNativeIndex(ut, v21 + NativeIndex);
      }

      v52 = *(a5 + 8);
      if (v52 >= -1 && *(a5 + 12) > v52)
      {
        goto LABEL_62;
      }

      if (icu::UVector32::expandCapacity(a5, v52 + 1, v7))
      {
        v52 = *(a5 + 8);
LABEL_62:
        *(*(a5 + 24) + 4 * v52) = v21 + NativeIndex;
        ++*(a5 + 8);
      }

LABEL_63:
      if (*v7 >= 1)
      {
        goto LABEL_64;
      }
    }
  }

  v15 = 0;
LABEL_64:
  v53 = *(a5 + 8);
  if (v53 < 1)
  {
    if (a4 <= 0)
    {
      return (v15 - 1);
    }
  }

  else if (*(*(a5 + 24) + 4 * v53 - 4) >= a4)
  {
    *(a5 + 8) = v53 - 1;
    return (v15 - 1);
  }

  return v15;
}

void *sub_1951D3CB0(void *a1, uint64_t a2, UErrorCode *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = sub_1951CAC20(a1);
  *v6 = &unk_1F0931958;
  icu::UnicodeSet::UnicodeSet((v6 + 1));
  *a1 = &unk_1F09319E8;
  icu::UnicodeSet::UnicodeSet((a1 + 26));
  icu::UnicodeSet::UnicodeSet((a1 + 51));
  icu::UnicodeSet::UnicodeSet((a1 + 76));
  a1[101] = a2;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1951D6EE0(v13, "[");
  icu::UnicodeSet::UnicodeSet(v11, v13, a3);
  icu::UnicodeString::~UnicodeString(v7, v13);
  if (*a3 <= 0)
  {
    (*(*a1 + 40))(a1, v11);
  }

  sub_1951D6EE0(v13, "[");
  icu::UnicodeSet::applyPattern((a1 + 76), v13, a3);
  icu::UnicodeString::~UnicodeString(v8, v13);
  icu::UnicodeSet::add((a1 + 76), 0x20u);
  icu::UnicodeSet::operator=((a1 + 26), v11);
  icu::UnicodeSet::remove((a1 + 26), 0xEC0u, 0xEC4u);
  icu::UnicodeSet::add((a1 + 51), 3713, 0xEAEu);
  icu::UnicodeSet::add((a1 + 51), 3804, 0xEDDu);
  icu::UnicodeSet::add((a1 + 51), 3776, 0xEC4u);
  icu::UnicodeSet::compact((a1 + 76));
  icu::UnicodeSet::compact((a1 + 26));
  icu::UnicodeSet::compact((a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v9, v11);
  return a1;
}

void sub_1951D3E98(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09319E8;
  v3 = a1[101];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 76));
  icu::UnicodeSet::~UnicodeSet(v4, (a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v5, (a1 + 26));
  *a1 = &unk_1F0931958;
  icu::UnicodeSet::~UnicodeSet(v6, (a1 + 1));

  icu::UObject::~UObject(a1);
}

void sub_1951D3F54(void *a1@<X0>, void *a2@<X8>)
{
  sub_1951D3E98(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951D3F8C(uint64_t *a1, UText *a2, int a3, int a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a7 > 0 || a4 - a3 < 4)
  {
    return 0;
  }

  v9 = a7;
  bzero(v51, 0x21CuLL);
  for (i = 0; i != 135; i += 45)
  {
    v16 = &v51[i];
    *v16 = xmmword_195430900;
    v16[4] = 0;
  }

  utext_setNativeIndex(a2, a3);
  if (*v9 <= 0)
  {
    v8 = 0;
    v49 = v9;
    v50 = a5;
    while (1)
    {
      NativeIndex = utext_getNativeIndex(a2);
      if (NativeIndex >= a4)
      {
        goto LABEL_57;
      }

      v18 = &v51[45 * (v8 % 3)];
      v19 = sub_1951D3238(v18, a2, a1[101], a4);
      if (v19 == 1)
      {
        utext_setNativeIndex(a2, v18[v18[3] + 5] + v18[2]);
        v20 = v18[3];
        v21 = v18[v20 + 5];
        v22 = v18[v20 + 25];
        v8 = (v8 + 1);
      }

      else if (v19 < 2)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v23 = (v8 + 1);
        if (utext_getNativeIndex(a2) < a4)
        {
          v24 = &v51[45 * (v23 % 3)];
          v25 = &v51[45 * ((v8 + 2) % 3u)];
          while (sub_1951D3238(&v51[45 * (v23 % 3)], a2, a1[101], a4) < 1)
          {
LABEL_22:
            v30 = v18[4];
            v27 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 != v27)
            {
              goto LABEL_26;
            }

            v32 = v18[2];
            v18[4] = v31;
            utext_setNativeIndex(a2, v18[v31 + 5] + v32);
          }

          v18[3] = v18[4];
          if (utext_getNativeIndex(a2) < a4)
          {
            while (!sub_1951D3238(v25, a2, a1[101], a4))
            {
              v26 = v24[4];
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 != v27)
              {
                goto LABEL_22;
              }

              v29 = v24[2];
              v24[4] = v28;
              utext_setNativeIndex(a2, v24[v28 + 5] + v29);
            }

            v18[3] = v18[4];
          }
        }

LABEL_26:
        utext_setNativeIndex(a2, v18[v18[3] + 5] + v18[2]);
        v33 = v18[3];
        v21 = v18[v33 + 5];
        v22 = v18[v33 + 25];
        v8 = v23;
        v9 = v49;
        a5 = v50;
      }

      if (utext_getNativeIndex(a2) < a4 && v22 <= 2)
      {
        if (sub_1951D3238(&v51[45 * (v8 % 3)], a2, a1[101], a4) > 0 || v21 && v51[45 * (v8 % 3) + 1] > 2)
        {
          utext_setNativeIndex(a2, v21 + NativeIndex);
        }

        else
        {
          v34 = utext_getNativeIndex(a2);
          v35 = utext_next32(a2);
          v36 = utext_getNativeIndex(a2) - v34;
          v37 = a4 - v36 - (v21 + NativeIndex);
          if (v37 >= 1)
          {
            do
            {
              v38 = utext_current32(a2);
              if (icu::UnicodeSet::contains((a1 + 26), v35))
              {
                if (icu::UnicodeSet::contains((a1 + 51), v38))
                {
                  v39 = sub_1951D3238(&v51[45 * ((v8 + 1) % 3u)], a2, a1[101], a4);
                  utext_setNativeIndex(a2, v36 + v21 + NativeIndex);
                  if (v39 > 0)
                  {
                    break;
                  }
                }
              }

              v40 = utext_getNativeIndex(a2);
              v35 = utext_next32(a2);
              v41 = utext_getNativeIndex(a2);
              v36 += v41 - v40;
              v27 = __OFSUB__(v37, v41 - v40);
              v37 -= v41 - v40;
            }

            while (!((v37 < 0) ^ v27 | (v37 == 0)));
          }

          if (v21 >= 1)
          {
            v8 = v8;
          }

          else
          {
            v8 = (v8 + 1);
          }

          v21 += v36;
          v9 = v49;
          a5 = v50;
        }
      }

      v42 = utext_getNativeIndex(a2);
      if (v42 < a4)
      {
        v43 = v42;
        do
        {
          v44 = utext_current32(a2);
          if (!icu::UnicodeSet::contains((a1 + 76), v44))
          {
            break;
          }

          utext_next32(a2);
          v21 = v21 - v43 + utext_getNativeIndex(a2);
          v43 = utext_getNativeIndex(a2);
        }

        while (v43 < a4);
      }

      if (v21 >= 1)
      {
        v45 = *(a5 + 8);
        if (v45 >= -1 && *(a5 + 12) > v45)
        {
          goto LABEL_55;
        }

        if (icu::UVector32::expandCapacity(a5, v45 + 1, v9))
        {
          break;
        }
      }

LABEL_56:
      if (*v9 >= 1)
      {
        goto LABEL_57;
      }
    }

    v45 = *(a5 + 8);
LABEL_55:
    *(*(a5 + 24) + 4 * v45) = v21 + NativeIndex;
    ++*(a5 + 8);
    goto LABEL_56;
  }

  v8 = 0;
LABEL_57:
  v47 = *(a5 + 8);
  if (v47 < 1)
  {
    if (a4 <= 0)
    {
      return (v8 - 1);
    }
  }

  else if (*(*(a5 + 24) + 4 * v47 - 4) >= a4)
  {
    *(a5 + 8) = v47 - 1;
    return (v8 - 1);
  }

  return v8;
}

void *sub_1951D44C8(void *a1, uint64_t a2, UErrorCode *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = sub_1951CAC20(a1);
  *v6 = &unk_1F0931958;
  icu::UnicodeSet::UnicodeSet((v6 + 1));
  *a1 = &unk_1F0931A30;
  icu::UnicodeSet::UnicodeSet((a1 + 26));
  icu::UnicodeSet::UnicodeSet((a1 + 51));
  icu::UnicodeSet::UnicodeSet((a1 + 76));
  a1[101] = a2;
  icu::UnicodeSet::add((a1 + 51), 4096, 0x102Au);
  sub_1951D6EE0(v10, "[");
  icu::UnicodeSet::applyPattern((a1 + 26), v10, a3);
  icu::UnicodeString::~UnicodeString(v7, v10);
  sub_1951D6EE0(v10, "[");
  icu::UnicodeSet::applyPattern((a1 + 76), v10, a3);
  icu::UnicodeString::~UnicodeString(v8, v10);
  icu::UnicodeSet::add((a1 + 76), 0x20u);
  if (*a3 <= 0)
  {
    (*(*a1 + 40))(a1, a1 + 26);
  }

  icu::UnicodeSet::compact((a1 + 76));
  icu::UnicodeSet::compact((a1 + 26));
  icu::UnicodeSet::compact((a1 + 51));
  return a1;
}

void sub_1951D464C(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0931A30;
  v3 = a1[101];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 76));
  icu::UnicodeSet::~UnicodeSet(v4, (a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v5, (a1 + 26));
  *a1 = &unk_1F0931958;
  icu::UnicodeSet::~UnicodeSet(v6, (a1 + 1));

  icu::UObject::~UObject(a1);
}

void sub_1951D4708(void *a1@<X0>, void *a2@<X8>)
{
  sub_1951D464C(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951D4740(uint64_t *a1, UText *a2, int a3, int a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a7 > 0 || a4 - a3 < 4)
  {
    return 0;
  }

  v9 = a7;
  bzero(v51, 0x21CuLL);
  for (i = 0; i != 135; i += 45)
  {
    v16 = &v51[i];
    *v16 = xmmword_195430900;
    v16[4] = 0;
  }

  utext_setNativeIndex(a2, a3);
  if (*v9 <= 0)
  {
    v8 = 0;
    v49 = v9;
    v50 = a5;
    while (1)
    {
      NativeIndex = utext_getNativeIndex(a2);
      if (NativeIndex >= a4)
      {
        goto LABEL_57;
      }

      v18 = &v51[45 * (v8 % 3)];
      v19 = sub_1951D3238(v18, a2, a1[101], a4);
      if (v19 == 1)
      {
        utext_setNativeIndex(a2, v18[v18[3] + 5] + v18[2]);
        v20 = v18[3];
        v21 = v18[v20 + 5];
        v22 = v18[v20 + 25];
        v8 = (v8 + 1);
      }

      else if (v19 < 2)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v23 = (v8 + 1);
        if (utext_getNativeIndex(a2) < a4)
        {
          v24 = &v51[45 * (v23 % 3)];
          v25 = &v51[45 * ((v8 + 2) % 3u)];
          while (sub_1951D3238(&v51[45 * (v23 % 3)], a2, a1[101], a4) < 1)
          {
LABEL_22:
            v30 = v18[4];
            v27 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 != v27)
            {
              goto LABEL_26;
            }

            v32 = v18[2];
            v18[4] = v31;
            utext_setNativeIndex(a2, v18[v31 + 5] + v32);
          }

          v18[3] = v18[4];
          if (utext_getNativeIndex(a2) < a4)
          {
            while (!sub_1951D3238(v25, a2, a1[101], a4))
            {
              v26 = v24[4];
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 != v27)
              {
                goto LABEL_22;
              }

              v29 = v24[2];
              v24[4] = v28;
              utext_setNativeIndex(a2, v24[v28 + 5] + v29);
            }

            v18[3] = v18[4];
          }
        }

LABEL_26:
        utext_setNativeIndex(a2, v18[v18[3] + 5] + v18[2]);
        v33 = v18[3];
        v21 = v18[v33 + 5];
        v22 = v18[v33 + 25];
        v8 = v23;
        v9 = v49;
        a5 = v50;
      }

      if (utext_getNativeIndex(a2) < a4 && v22 <= 2)
      {
        if (sub_1951D3238(&v51[45 * (v8 % 3)], a2, a1[101], a4) > 0 || v21 && v51[45 * (v8 % 3) + 1] > 2)
        {
          utext_setNativeIndex(a2, v21 + NativeIndex);
        }

        else
        {
          v34 = utext_getNativeIndex(a2);
          v35 = utext_next32(a2);
          v36 = utext_getNativeIndex(a2) - v34;
          v37 = a4 - v36 - (v21 + NativeIndex);
          if (v37 >= 1)
          {
            do
            {
              v38 = utext_current32(a2);
              if (icu::UnicodeSet::contains((a1 + 26), v35))
              {
                if (icu::UnicodeSet::contains((a1 + 51), v38))
                {
                  v39 = sub_1951D3238(&v51[45 * ((v8 + 1) % 3u)], a2, a1[101], a4);
                  utext_setNativeIndex(a2, v36 + v21 + NativeIndex);
                  if (v39 > 0)
                  {
                    break;
                  }
                }
              }

              v40 = utext_getNativeIndex(a2);
              v35 = utext_next32(a2);
              v41 = utext_getNativeIndex(a2);
              v36 += v41 - v40;
              v27 = __OFSUB__(v37, v41 - v40);
              v37 -= v41 - v40;
            }

            while (!((v37 < 0) ^ v27 | (v37 == 0)));
          }

          if (v21 >= 1)
          {
            v8 = v8;
          }

          else
          {
            v8 = (v8 + 1);
          }

          v21 += v36;
          v9 = v49;
          a5 = v50;
        }
      }

      v42 = utext_getNativeIndex(a2);
      if (v42 < a4)
      {
        v43 = v42;
        do
        {
          v44 = utext_current32(a2);
          if (!icu::UnicodeSet::contains((a1 + 76), v44))
          {
            break;
          }

          utext_next32(a2);
          v21 = v21 - v43 + utext_getNativeIndex(a2);
          v43 = utext_getNativeIndex(a2);
        }

        while (v43 < a4);
      }

      if (v21 >= 1)
      {
        v45 = *(a5 + 8);
        if (v45 >= -1 && *(a5 + 12) > v45)
        {
          goto LABEL_55;
        }

        if (icu::UVector32::expandCapacity(a5, v45 + 1, v9))
        {
          break;
        }
      }

LABEL_56:
      if (*v9 >= 1)
      {
        goto LABEL_57;
      }
    }

    v45 = *(a5 + 8);
LABEL_55:
    *(*(a5 + 24) + 4 * v45) = v21 + NativeIndex;
    ++*(a5 + 8);
    goto LABEL_56;
  }

  v8 = 0;
LABEL_57:
  v47 = *(a5 + 8);
  if (v47 < 1)
  {
    if (a4 <= 0)
    {
      return (v8 - 1);
    }
  }

  else if (*(*(a5 + 24) + 4 * v47 - 4) >= a4)
  {
    *(a5 + 8) = v47 - 1;
    return (v8 - 1);
  }

  return v8;
}

void *sub_1951D4C7C(void *a1, uint64_t a2, UErrorCode *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = sub_1951CAC20(a1);
  *v6 = &unk_1F0931958;
  icu::UnicodeSet::UnicodeSet((v6 + 1));
  *a1 = &unk_1F0931A78;
  icu::UnicodeSet::UnicodeSet((a1 + 26));
  icu::UnicodeSet::UnicodeSet((a1 + 51));
  icu::UnicodeSet::UnicodeSet((a1 + 76));
  a1[101] = a2;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1951D6EE0(v13, "[");
  icu::UnicodeSet::UnicodeSet(v11, v13, a3);
  icu::UnicodeString::~UnicodeString(v7, v13);
  if (*a3 <= 0)
  {
    (*(*a1 + 40))(a1, v11);
  }

  sub_1951D6EE0(v13, "[");
  icu::UnicodeSet::applyPattern((a1 + 76), v13, a3);
  icu::UnicodeString::~UnicodeString(v8, v13);
  icu::UnicodeSet::add((a1 + 76), 0x20u);
  icu::UnicodeSet::operator=((a1 + 26), v11);
  icu::UnicodeSet::add((a1 + 51), 6016, 0x17B3u);
  icu::UnicodeSet::remove((a1 + 26), 0x17D2u);
  icu::UnicodeSet::compact((a1 + 76));
  icu::UnicodeSet::compact((a1 + 26));
  icu::UnicodeSet::compact((a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v9, v11);
  return a1;
}

void sub_1951D4E40(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0931A78;
  v3 = a1[101];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 76));
  icu::UnicodeSet::~UnicodeSet(v4, (a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v5, (a1 + 26));
  *a1 = &unk_1F0931958;
  icu::UnicodeSet::~UnicodeSet(v6, (a1 + 1));

  icu::UObject::~UObject(a1);
}

void sub_1951D4EFC(void *a1@<X0>, void *a2@<X8>)
{
  sub_1951D4E40(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951D4F34(uint64_t *a1, UText *a2, int a3, int a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a7 > 0 || a4 - a3 < 4)
  {
    return 0;
  }

  v9 = a7;
  bzero(v51, 0x21CuLL);
  for (i = 0; i != 135; i += 45)
  {
    v16 = &v51[i];
    *v16 = xmmword_195430900;
    v16[4] = 0;
  }

  utext_setNativeIndex(a2, a3);
  if (*v9 <= 0)
  {
    v8 = 0;
    v49 = v9;
    v50 = a5;
    while (1)
    {
      NativeIndex = utext_getNativeIndex(a2);
      if (NativeIndex >= a4)
      {
        goto LABEL_57;
      }

      v18 = &v51[45 * (v8 % 3)];
      v19 = sub_1951D3238(v18, a2, a1[101], a4);
      if (v19 == 1)
      {
        utext_setNativeIndex(a2, v18[v18[3] + 5] + v18[2]);
        v20 = v18[3];
        v21 = v18[v20 + 5];
        v22 = v18[v20 + 25];
        v8 = (v8 + 1);
      }

      else if (v19 < 2)
      {
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v23 = (v8 + 1);
        if (utext_getNativeIndex(a2) < a4)
        {
          v24 = &v51[45 * (v23 % 3)];
          v25 = &v51[45 * ((v8 + 2) % 3u)];
          while (sub_1951D3238(&v51[45 * (v23 % 3)], a2, a1[101], a4) < 1)
          {
LABEL_22:
            v30 = v18[4];
            v27 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 != v27)
            {
              goto LABEL_26;
            }

            v32 = v18[2];
            v18[4] = v31;
            utext_setNativeIndex(a2, v18[v31 + 5] + v32);
          }

          v18[3] = v18[4];
          if (utext_getNativeIndex(a2) < a4)
          {
            while (!sub_1951D3238(v25, a2, a1[101], a4))
            {
              v26 = v24[4];
              v27 = __OFSUB__(v26, 1);
              v28 = v26 - 1;
              if (v28 < 0 != v27)
              {
                goto LABEL_22;
              }

              v29 = v24[2];
              v24[4] = v28;
              utext_setNativeIndex(a2, v24[v28 + 5] + v29);
            }

            v18[3] = v18[4];
          }
        }

LABEL_26:
        utext_setNativeIndex(a2, v18[v18[3] + 5] + v18[2]);
        v33 = v18[3];
        v21 = v18[v33 + 5];
        v22 = v18[v33 + 25];
        v8 = v23;
        v9 = v49;
        a5 = v50;
      }

      if (utext_getNativeIndex(a2) < a4 && v22 <= 2)
      {
        if (sub_1951D3238(&v51[45 * (v8 % 3)], a2, a1[101], a4) > 0 || v21 && v51[45 * (v8 % 3) + 1] > 2)
        {
          utext_setNativeIndex(a2, v21 + NativeIndex);
        }

        else
        {
          v34 = utext_getNativeIndex(a2);
          v35 = utext_next32(a2);
          v36 = utext_getNativeIndex(a2) - v34;
          v37 = a4 - v36 - (v21 + NativeIndex);
          if (v37 >= 1)
          {
            do
            {
              v38 = utext_current32(a2);
              if (icu::UnicodeSet::contains((a1 + 26), v35))
              {
                if (icu::UnicodeSet::contains((a1 + 51), v38))
                {
                  v39 = sub_1951D3238(&v51[45 * ((v8 + 1) % 3u)], a2, a1[101], a4);
                  utext_setNativeIndex(a2, v36 + v21 + NativeIndex);
                  if (v39 > 0)
                  {
                    break;
                  }
                }
              }

              v40 = utext_getNativeIndex(a2);
              v35 = utext_next32(a2);
              v41 = utext_getNativeIndex(a2);
              v36 += v41 - v40;
              v27 = __OFSUB__(v37, v41 - v40);
              v37 -= v41 - v40;
            }

            while (!((v37 < 0) ^ v27 | (v37 == 0)));
          }

          if (v21 >= 1)
          {
            v8 = v8;
          }

          else
          {
            v8 = (v8 + 1);
          }

          v21 += v36;
          v9 = v49;
          a5 = v50;
        }
      }

      v42 = utext_getNativeIndex(a2);
      if (v42 < a4)
      {
        v43 = v42;
        do
        {
          v44 = utext_current32(a2);
          if (!icu::UnicodeSet::contains((a1 + 76), v44))
          {
            break;
          }

          utext_next32(a2);
          v21 = v21 - v43 + utext_getNativeIndex(a2);
          v43 = utext_getNativeIndex(a2);
        }

        while (v43 < a4);
      }

      if (v21 >= 1)
      {
        v45 = *(a5 + 8);
        if (v45 >= -1 && *(a5 + 12) > v45)
        {
          goto LABEL_55;
        }

        if (icu::UVector32::expandCapacity(a5, v45 + 1, v9))
        {
          break;
        }
      }

LABEL_56:
      if (*v9 >= 1)
      {
        goto LABEL_57;
      }
    }

    v45 = *(a5 + 8);
LABEL_55:
    *(*(a5 + 24) + 4 * v45) = v21 + NativeIndex;
    ++*(a5 + 8);
    goto LABEL_56;
  }

  v8 = 0;
LABEL_57:
  v47 = *(a5 + 8);
  if (v47 < 1)
  {
    if (a4 <= 0)
    {
      return (v8 - 1);
    }
  }

  else if (*(*(a5 + 24) + 4 * v47 - 4) >= a4)
  {
    *(a5 + 8) = v47 - 1;
    return (v8 - 1);
  }

  return v8;
}

int32x2_t *sub_1951D5464(int32x2_t *a1, uint64_t a2, int a3, icu::Normalizer2 *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = sub_1951CAC20(a1);
  *v8 = &unk_1F0931958;
  icu::UnicodeSet::UnicodeSet((v8 + 1));
  *a1 = &unk_1F0931AC0;
  icu::UnicodeSet::UnicodeSet(&a1[26]);
  icu::UnicodeSet::UnicodeSet(&a1[51]);
  icu::UnicodeSet::UnicodeSet(&a1[76]);
  a1[101] = a2;
  a1[104].i8[0] = 0;
  a1[105] = 0;
  LODWORD(v17[0]) = 0;
  uhash_init(a1 + 106, uhash_hashUnicodeString, uhash_compareUnicodeString, 0, v17);
  if (SLODWORD(v17[0]) <= 0)
  {
    a1[105] = &a1[106];
    uhash_setKeyDeleter(&a1[106], uprv_deleteUObject);
  }

  a1[103] = 0;
  a1[102] = icu::Normalizer2::getNFKCInstance(a4, v9);
  sub_1951D6EE0(v17, "[");
  icu::UnicodeSet::applyPattern(&a1[26], v17, a4);
  icu::UnicodeString::~UnicodeString(v10, v17);
  icu::UnicodeSet::compact(&a1[26]);
  sub_1951D6EE0(v17, "[");
  icu::UnicodeSet::applyPattern(&a1[51], v17, a4);
  icu::UnicodeString::~UnicodeString(v11, v17);
  icu::UnicodeSet::compact(&a1[51]);
  sub_1951D6EE0(v17, L"[[:Pc:][:Pd:][:Pe:][:Pf:][:Po:]]");
  icu::UnicodeSet::applyPattern(&a1[76], v17, a4);
  icu::UnicodeString::~UnicodeString(v12, v17);
  icu::UnicodeSet::compact(&a1[76]);
  if (a3)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1951D6EE0(v16, "[");
    icu::UnicodeSet::UnicodeSet(v17, v16, a4);
    icu::UnicodeString::~UnicodeString(v13, v16);
    a1[104].i8[0] = 1;
    v14 = *a4;
    if (v14 <= 0)
    {
      (*(*a1 + 40))(a1, v17);
      sub_1951D6C34(a1, a4);
      sub_1951D6D98(a1, a4);
    }

    icu::UnicodeSet::~UnicodeSet(v14, v17);
  }

  else if (*a4 <= 0)
  {
    (*(*a1 + 40))(a1, a1 + 26);
  }

  return a1;
}

void sub_1951D5728(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0931AC0;
  v3 = a1[101];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[103];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[105];
  if (v5)
  {
    uhash_close(v5);
  }

  icu::UnicodeSet::~UnicodeSet(a2, (a1 + 76));
  icu::UnicodeSet::~UnicodeSet(v6, (a1 + 51));
  icu::UnicodeSet::~UnicodeSet(v7, (a1 + 26));
  *a1 = &unk_1F0931958;
  icu::UnicodeSet::~UnicodeSet(v8, (a1 + 1));

  icu::UObject::~UObject(a1);
}

void sub_1951D581C(void *a1@<X0>, void *a2@<X8>)
{
  sub_1951D5728(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951D5854(uint64_t a1, UText *ut, int a3, int a4, icu::UVector32 *a5, int a6, UErrorCode *a7)
{
  v8 = 0;
  v125 = *MEMORY[0x1E69E9840];
  v9 = __OFSUB__(a4, a3);
  v10 = a4 - a3;
  if ((v10 < 0) ^ v9 | (v10 == 0) || *a7 > 0)
  {
    return v8;
  }

  v121 = 0u;
  v124 = 0;
  v123 = 0u;
  v122 = 0u;
  v120 = &unk_1F0935D00;
  LOWORD(v121) = 2;
  v115 = 0;
  v103 = a4;
  if ((ut->providerProperties & 4) == 0)
  {
    v16 = a3;
LABEL_8:
    utext_setNativeIndex(ut, v16);
    if (utext_nativeLength(ut) < a4)
    {
      utext_nativeLength(ut);
    }

    operator new();
  }

  chunkNativeStart = ut->chunkNativeStart;
  v16 = a3;
  if (chunkNativeStart > a3 || ut->chunkNativeLimit < a4 || a4 - chunkNativeStart > ut->nativeIndexingLimit)
  {
    goto LABEL_8;
  }

  v114 = &ut->chunkContents[a3 - chunkNativeStart];
  icu::UnicodeString::setTo(&v120, 0, &v114, v10);
  if (!(*(**(a1 + 816) + 88))(*(a1 + 816), &v120, a7))
  {
    memset(&uta.providerProperties, 0, 56);
    *&uta.magic = &unk_1F0935D00;
    LOWORD(uta.providerProperties) = 2;
    operator new();
  }

  v101 = ut;
  v18 = icu::UnicodeString::countChar32(&v120, 0, 0x7FFFFFFF);
  v19 = v121 >> 5;
  if ((v121 & 0x8000u) != 0)
  {
    v19 = DWORD1(v121);
  }

  v105 = v18;
  if (v18 != v19)
  {
    v72 = v115;
    if (!v115)
    {
      operator new();
    }

    v73 = 0;
    for (i = 0; ; ++i)
    {
      v75 = v115;
      if (v72)
      {
        if (v73 < 0 || *(v115 + 2) <= v73)
        {
          v76 = 0;
        }

        else
        {
          v76 = *(*(v115 + 3) + 4 * v73);
        }

        icu::UVector32::setElementAt(v115, v76, i);
      }

      else
      {
        v77 = *(v115 + 2);
        if (v77 < -1 || *(v115 + 3) <= v77)
        {
          if (!icu::UVector32::expandCapacity(v115, v77 + 1, a7))
          {
            goto LABEL_158;
          }

          v77 = *(v75 + 2);
        }

        *(*(v75 + 3) + 4 * v77) = v73 + a3;
        ++*(v75 + 2);
      }

LABEL_158:
      v78 = v121 >> 5;
      if ((v121 & 0x8000u) != 0)
      {
        v78 = DWORD1(v121);
      }

      if (v73 == v78)
      {
        break;
      }

      v73 = icu::UnicodeString::moveIndex32(&v120, v73, 1);
    }
  }

  v117 = 0u;
  v118 = 0u;
  icu::UVector32::UVector32(&v117, v105 + 1, a7);
  v20 = DWORD2(v117);
  if (SDWORD2(v117) < -1 || SHIDWORD(v117) <= SDWORD2(v117))
  {
    if (!icu::UVector32::expandCapacity(&v117, DWORD2(v117) + 1, a7))
    {
      goto LABEL_20;
    }

    v20 = DWORD2(v117);
  }

  *(*(&v118 + 1) + 4 * v20) = 0;
  ++DWORD2(v117);
LABEL_20:
  if (v105 >= 1)
  {
    v21 = v105;
    while (1)
    {
      v22 = DWORD2(v117);
      if (SDWORD2(v117) >= -1 && SHIDWORD(v117) > SDWORD2(v117))
      {
        goto LABEL_29;
      }

      if (icu::UVector32::expandCapacity(&v117, DWORD2(v117) + 1, a7))
      {
        break;
      }

LABEL_30:
      if (!--v21)
      {
        goto LABEL_31;
      }
    }

    v22 = DWORD2(v117);
LABEL_29:
    *(*(&v118 + 1) + 4 * v22) = -1;
    ++DWORD2(v117);
    goto LABEL_30;
  }

LABEL_31:
  v112 = 0u;
  v113 = 0u;
  icu::UVector32::UVector32(&v112, v105 + 1, a7);
  if ((v105 & 0x80000000) == 0)
  {
    v24 = v105 + 1;
    while (1)
    {
      v25 = DWORD2(v112);
      if (SDWORD2(v112) >= -1 && SHIDWORD(v112) > SDWORD2(v112))
      {
        goto LABEL_40;
      }

      if (icu::UVector32::expandCapacity(&v112, DWORD2(v112) + 1, a7))
      {
        break;
      }

LABEL_41:
      if (!--v24)
      {
        goto LABEL_42;
      }
    }

    v25 = DWORD2(v112);
LABEL_40:
    *(*(&v113 + 1) + 4 * v25) = -1;
    ++DWORD2(v112);
    goto LABEL_41;
  }

LABEL_42:
  v102 = a5;
  v110 = 0u;
  v111 = 0u;
  icu::UVector32::UVector32(&v110, v105, a7);
  icu::UVector32::setSize(&v110, v105);
  v108 = 0u;
  v109 = 0u;
  icu::UVector32::UVector32(&v108, v105, a7);
  icu::UVector32::setSize(&v108, v105);
  memset(&uta, 0, sizeof(uta));
  uta.magic = 878368812;
  uta.sizeOfStruct = 144;
  utext_openUnicodeString(&uta, &v120, a7);
  if (v105 >= 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      if (v27 < SDWORD2(v117) && *(*(&v118 + 1) + 4 * v27) == -1)
      {
        v40 = v28;
      }

      else
      {
        utext_setNativeIndex(&uta, v29);
        v30 = (*(**(a1 + 808) + 16))(*(a1 + 808), &uta, 20, v105, 0, *(&v109 + 1), *(&v111 + 1), 0);
        if (v30)
        {
          v31 = SDWORD2(v108) < 1;
        }

        else
        {
          v31 = 1;
        }

        if (v31 || **(&v109 + 1) != 1)
        {
          v32 = icu::UnicodeString::char32At(&v120, v29);
          if (!icu::UnicodeSet::contains((a1 + 208), v32))
          {
            icu::UVector32::setElementAt(&v110, 255, v30);
            icu::UVector32::setElementAt(&v108, 1, v30++);
          }
        }

        if (v30 >= 1)
        {
          v33 = 0;
          v34 = v30;
          do
          {
            if (v27 >= SDWORD2(v117))
            {
              v35 = 0;
            }

            else
            {
              v35 = *(*(&v118 + 1) + 4 * v27);
            }

            if (v33 >= SDWORD2(v110))
            {
              v36 = 0;
            }

            else
            {
              v36 = *(*(&v111 + 1) + 4 * v33);
            }

            if (v33 >= SDWORD2(v108))
            {
              v37 = 0;
            }

            else
            {
              v37 = *(*(&v109 + 1) + 4 * v33);
            }

            v38 = v37 + v27;
            if (v37 + v27 >= 0 && SDWORD2(v117) > v38 && (v36 + v35) < *(*(&v118 + 1) + 4 * v38))
            {
              icu::UVector32::setElementAt(&v117, v36 + v35, v37 + v27);
              icu::UVector32::setElementAt(&v112, v27, v38);
            }

            ++v33;
          }

          while (v34 != v33);
        }

        v39 = icu::UnicodeString::char32At(&v120, v29);
        v40 = v39 != 12539 && (v39 - 12449) < 0x5E || (v39 - 65382) < 0x3A;
        if (!v28 && v40)
        {
          v41 = 1;
          v42 = icu::UnicodeString::moveIndex32(&v120, v29, 1);
          v43 = v121 >> 5;
          if ((v121 & 0x8000u) != 0)
          {
            v43 = DWORD1(v121);
          }

          if (v42 < v43)
          {
            v44 = v42;
            while (1)
            {
              v45 = v41;
              v46 = icu::UnicodeString::char32At(&v120, v44);
              v47 = v46 == 12539 || (v46 - 12449) >= 0x5E;
              v48 = !v47;
              if ((v46 - 65382) >= 0x3A && !v48)
              {
                break;
              }

              v50 = icu::UnicodeString::moveIndex32(&v120, v44, 1);
              v44 = v50;
              ++v41;
              v51 = v121 >> 5;
              if ((v121 & 0x8000u) != 0)
              {
                v51 = DWORD1(v121);
              }

              if (v50 >= v51 || v45 >= 0x13)
              {
                if (v45 <= 0x12)
                {
                  break;
                }

                goto LABEL_107;
              }
            }
          }

          if (v27 >= SDWORD2(v117))
          {
            v53 = 0;
          }

          else
          {
            v53 = *(*(&v118 + 1) + 4 * v27);
          }

          if (v41 <= 8)
          {
            v54 = dword_1954309A8[v41];
          }

          else
          {
            v54 = 0x2000;
          }

          if (SDWORD2(v117) > (v41 + v27) && (v54 + v53) < *(*(&v118 + 1) + 4 * (v41 + v27)))
          {
            icu::UVector32::setElementAt(&v117, v54 + v53, v41 + v27);
            icu::UVector32::setElementAt(&v112, v27, v41 + v27);
          }
        }
      }

LABEL_107:
      ++v27;
      v29 = icu::UnicodeString::moveIndex32(&v120, v29, 1);
      v28 = v40;
    }

    while (v27 != v105);
  }

  utext_close(&uta);
  v106 = 0u;
  v107 = 0u;
  v55 = v105;
  icu::UVector32::UVector32(&v106, v105 + 1, a7);
  if ((v105 & 0x80000000) == 0 && SDWORD2(v117) > v105 && *(*(&v118 + 1) + 4 * v105) == -1)
  {
    v82 = DWORD2(v106);
    v56 = v101;
    if (SDWORD2(v106) < -1 || SHIDWORD(v106) <= SDWORD2(v106))
    {
      if (!icu::UVector32::expandCapacity(&v106, DWORD2(v106) + 1, a7))
      {
LABEL_184:
        LODWORD(v58) = 1;
        goto LABEL_185;
      }

      v82 = DWORD2(v106);
    }

    *(*(&v107 + 1) + 4 * v82) = v105;
    ++DWORD2(v106);
    goto LABEL_184;
  }

  v56 = v101;
  if (!a6)
  {
    if (v105 < 1)
    {
      goto LABEL_176;
    }

    v79 = 1;
    while (1)
    {
      LODWORD(v58) = v79;
      v80 = DWORD2(v106);
      if (SDWORD2(v106) < -1 || SHIDWORD(v106) <= SDWORD2(v106))
      {
        if (!icu::UVector32::expandCapacity(&v106, DWORD2(v106) + 1, a7))
        {
          goto LABEL_173;
        }

        v80 = DWORD2(v106);
      }

      *(*(&v107 + 1) + 4 * v80) = v55;
      ++DWORD2(v106);
LABEL_173:
      if (SDWORD2(v112) > v55)
      {
        v55 = *(*(&v113 + 1) + 4 * v55);
        v79 = v58 + 1;
        if (v55 > 0)
        {
          continue;
        }
      }

      goto LABEL_185;
    }
  }

  v57 = DWORD2(v106);
  if (SDWORD2(v106) < -1 || SHIDWORD(v106) <= SDWORD2(v106))
  {
    if (!icu::UVector32::expandCapacity(&v106, DWORD2(v106) + 1, a7))
    {
      goto LABEL_117;
    }

    v57 = DWORD2(v106);
  }

  *(*(&v107 + 1) + 4 * v57) = v105;
  ++DWORD2(v106);
LABEL_117:
  if (*a7 > 0)
  {
LABEL_176:
    LODWORD(v58) = 0;
    goto LABEL_185;
  }

  LODWORD(v58) = 1;
  if ((v105 & 0x80000000) == 0 && SDWORD2(v112) > v105)
  {
    v59 = *(*(&v113 + 1) + 4 * v105);
    if (v59 >= 1)
    {
      while (1)
      {
        v60 = v59;
        v61 = icu::UnicodeString::moveIndex32(&v120, 0, v59);
        v62 = icu::UnicodeString::moveIndex32(&v120, 0, v55);
        icu::UnicodeString::tempSubString(&v119, &v120, v61, v62 - v61);
        if (uhash_containsKey(*(a1 + 840), &v119))
        {
          icu::UnicodeString::~UnicodeString(v63, &v119);
          v55 = v60;
          goto LABEL_142;
        }

        v64 = icu::UnicodeString::moveIndex32(&v120, v61, -1);
        v65 = icu::UnicodeString::char32At(&v120, v64);
        v66 = v65 == 12539 || (v65 - 12449) >= 0x5E;
        v67 = !v66;
        if ((v65 - 65382) >= 0x3A && !v67)
        {
          break;
        }

        v69 = icu::UnicodeString::char32At(&v120, v61);
        v55 = v60;
        if (v69 == 12539 || (v70 = (v69 - 12449), v70 > 0x5D))
        {
          v71 = v69 - 65382;
          icu::UnicodeString::~UnicodeString(v70, &v119);
          if (v71 >= 0x3A)
          {
            goto LABEL_132;
          }
        }

        else
        {
          icu::UnicodeString::~UnicodeString(v70, &v119);
        }

LABEL_142:
        if (SDWORD2(v112) > v55)
        {
          v59 = *(*(&v113 + 1) + 4 * v55);
          if (v59 > 0)
          {
            continue;
          }
        }

        goto LABEL_185;
      }

      icu::UnicodeString::~UnicodeString(v67, &v119);
      v55 = v60;
LABEL_132:
      v68 = DWORD2(v106);
      if (SDWORD2(v106) < -1 || SHIDWORD(v106) <= SDWORD2(v106))
      {
        if (!icu::UVector32::expandCapacity(&v106, DWORD2(v106) + 1, a7))
        {
LABEL_137:
          LODWORD(v58) = v58 + 1;
          goto LABEL_142;
        }

        v68 = DWORD2(v106);
      }

      *(*(&v107 + 1) + 4 * v68) = v55;
      ++DWORD2(v106);
      goto LABEL_137;
    }
  }

LABEL_185:
  v83 = *(v102 + 2);
  if (!v83 || (v83 < 1 ? (v84 = 0) : (v84 = *(*(v102 + 3) + 4 * v83 - 4)), v84 < a3))
  {
    v85 = DWORD2(v106);
    if (SDWORD2(v106) < -1 || SHIDWORD(v106) <= SDWORD2(v106))
    {
      if (!icu::UVector32::expandCapacity(&v106, DWORD2(v106) + 1, a7))
      {
LABEL_195:
        LODWORD(v58) = v58 + 1;
        goto LABEL_196;
      }

      v85 = DWORD2(v106);
    }

    *(*(&v107 + 1) + 4 * v85) = 0;
    ++DWORD2(v106);
    goto LABEL_195;
  }

LABEL_196:
  if (v58 >= 1)
  {
    v8 = 0;
    v58 = v58;
    if (a6)
    {
      v86 = a3 <= 0;
    }

    else
    {
      v86 = 1;
    }

    v87 = !v86;
    v88 = -1;
    while (1)
    {
      v89 = v88;
      if (v58 <= SDWORD2(v106))
      {
        v90 = *(*(&v107 + 1) + 4 * v58 - 4);
        v91 = v115;
        if (!v115)
        {
LABEL_211:
          v88 = v90 + a3;
          goto LABEL_213;
        }

        if ((v90 & 0x80000000) != 0)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v90 = 0;
        v91 = v115;
        if (!v115)
        {
          goto LABEL_211;
        }
      }

      if (*(v91 + 2) <= v90)
      {
LABEL_212:
        v88 = 0;
        goto LABEL_213;
      }

      v88 = *(*(v91 + 3) + 4 * v90);
LABEL_213:
      if (v88 <= v89)
      {
        goto LABEL_223;
      }

      if (v88 == a3)
      {
        if (!v87)
        {
          goto LABEL_223;
        }

        v92 = utext_char32At(v56, (a3 - 1));
        if (!icu::UnicodeSet::contains((a1 + 608), v92))
        {
          goto LABEL_223;
        }
      }

      v93 = *(v102 + 2);
      if (v93 >= -1 && *(v102 + 3) > v93)
      {
        goto LABEL_221;
      }

      if (icu::UVector32::expandCapacity(v102, v93 + 1, a7))
      {
        v93 = *(v102 + 2);
LABEL_221:
        *(*(v102 + 3) + 4 * v93) = v88;
        ++*(v102 + 2);
      }

      v8 = (v8 + 1);
LABEL_223:
      if (v58-- <= 1)
      {
        goto LABEL_226;
      }
    }
  }

  v8 = 0;
LABEL_226:
  v94 = utext_char32At(v56, v103);
  v95 = *(v102 + 2);
  if (!v95)
  {
    goto LABEL_240;
  }

  v96 = v95 < 1 ? 0 : *(*(v102 + 3) + 4 * v95 - 4);
  if (v96 != v103)
  {
    goto LABEL_240;
  }

  if (!a6)
  {
    if (v95 < 1)
    {
LABEL_239:
      v8 = (v8 - 1);
      goto LABEL_240;
    }

    v98 = v95 - 1;
LABEL_238:
    *(v102 + 2) = v98;
    goto LABEL_239;
  }

  if (!icu::UnicodeSet::contains((a1 + 408), v94))
  {
    v97 = *(v102 + 2);
    v9 = __OFSUB__(v97, 1);
    v98 = v97 - 1;
    if (v98 < 0 != v9)
    {
      goto LABEL_239;
    }

    goto LABEL_238;
  }

LABEL_240:
  icu::UVector32::~UVector32(&v106);
  icu::UVector32::~UVector32(&v108);
  icu::UVector32::~UVector32(&v110);
  icu::UVector32::~UVector32(&v112);
  icu::UVector32::~UVector32(&v117);
  if (v115)
  {
    (*(*v115 + 8))(v115);
  }

  icu::UnicodeString::~UnicodeString(v99, &v120);
  return v8;
}

void *sub_1951D6B10(void *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v6 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v6 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    v4 = *(*a2 + 8);

    return v4(a2);
  }

  return result;
}

icu::UVector32 *sub_1951D6BD0(icu::UVector32 *this, int a2, UErrorCode *a3)
{
  v4 = this;
  v5 = *(this + 2);
  if (v5 < -1 || *(this + 3) <= v5)
  {
    this = icu::UVector32::expandCapacity(this, v5 + 1, a3);
    if (!this)
    {
      return this;
    }

    v5 = *(v4 + 2);
  }

  *(*(v4 + 3) + 4 * v5) = a2;
  ++*(v4 + 2);
  return this;
}

void sub_1951D6C34(uint64_t a1, UErrorCode *a2)
{
  v8[28] = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  icu::Locale::Locale(v8, "ja", 0, 0, 0);
  icu::ResourceBundle::ResourceBundle(v7, "icudt76l-brkitr", v8, a2);
  icu::Locale::~Locale(v3, v8);
  v4 = *a2;
  if (v4 <= 0)
  {
    memset(v6, 0, sizeof(v6));
    icu::ResourceBundle::get(v6, v7, "extensions", a2);
    v5 = *a2;
    if (v5 <= 0 && icu::ResourceBundle::hasNext(v6))
    {
      icu::ResourceBundle::getNextString(v8, v6, a2);
      operator new();
    }

    icu::ResourceBundle::~ResourceBundle(v6, v5);
  }

  icu::ResourceBundle::~ResourceBundle(v7, v4);
}

void sub_1951D6D98(uint64_t a1, UErrorCode *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_1951D6EE0(v9, "[");
  icu::UnicodeSet::UnicodeSet(v6, v9, a2);
  icu::UnicodeString::~UnicodeString(v3, v9);
  icu::UnicodeSet::compact(v6);
  memset(v9, 0, sizeof(v9));
  v4 = icu::UnicodeSetIterator::UnicodeSetIterator(v9, v6);
  if (icu::UnicodeSetIterator::next(v4))
  {
    icu::UnicodeString::UnicodeString(v8, DWORD2(v9[0]));
    operator new();
  }

  icu::UnicodeSetIterator::~UnicodeSetIterator(v9);
  icu::UnicodeSet::~UnicodeSet(v5, v6);
}

icu::UnicodeString *sub_1951D6EE0(icu::UnicodeString *this, _WORD *a2)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (*a2)
  {
    v3 = 0;
    do
    {
      v4 = v3 + 1;
    }

    while (a2[++v3]);
  }

  else
  {
    v4 = 0;
  }

  icu::UnicodeString::doAppend(this, a2, v4);
  return this;
}

void icu::UCharsDictionaryMatcher::~UCharsDictionaryMatcher(icu::UCharsDictionaryMatcher *this)
{
  *this = &unk_1F0931B98;
  udata_close(*(this + 2));
}

{
  *this = &unk_1F0931B98;
  udata_close(*(this + 2));
}

{
  *this = &unk_1F0931B98;
  udata_close(*(this + 2));

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UCharsDictionaryMatcher::matches(icu::UCharsDictionaryMatcher *this, UText *ut, int a3, int a4, int *a5, int *a6, int *a7, int *a8)
{
  v14 = *(this + 1);
  v31 = 0;
  v32 = v14;
  v33 = v14;
  v34 = 0xFFFFFFFFLL;
  NativeIndex = utext_getNativeIndex(ut);
  v16 = utext_next32(ut);
  if ((v16 & 0x80000000) == 0)
  {
    v17 = v16;
    v18 = 0;
    v19 = 1;
    while (1)
    {
      v20 = v19;
      if (v19 == 1)
      {
        LODWORD(v34) = -1;
        Impl = icu::UCharsTrie::nextImpl(&v31, v32, v17);
      }

      else
      {
        Impl = icu::UCharsTrie::next(&v31, v17);
      }

      v22 = Impl;
      v23 = utext_getNativeIndex(ut) - NativeIndex;
      if (v22 < 2)
      {
        if (!v22)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v18 < a4)
        {
          if (a7)
          {
            v24 = v33 + 1;
            v25 = *v33;
            if (*v33 < 0)
            {
              v27 = v25 & 0x7FFF;
              if (v27 >= 0x4000)
              {
                if (v27 == 0x7FFF)
                {
                  v28 = v33[1] << 16;
                  v24 = v33 + 2;
                }

                else
                {
                  v28 = (v27 << 16) - 0x40000000;
                }

                v27 = v28 | *v24;
              }
            }

            else
            {
              v26 = v25 >> 6;
              if (v26 > 0x100)
              {
                if (v26 > 0x1FE)
                {
                  v27 = v33[2] | (v33[1] << 16);
                }

                else
                {
                  v27 = (*v24 | ((v26 & 0x1FF) << 16)) - 16842752;
                }
              }

              else
              {
                v27 = v26 - 1;
              }
            }

            a7[v18] = v27;
          }

          if (a5)
          {
            a5[v18] = v23;
          }

          if (a6)
          {
            a6[v18] = v20;
          }

          v18 = (v18 + 1);
        }

        if (v22 == 2)
        {
          goto LABEL_33;
        }
      }

      if (v23 < a3)
      {
        v17 = utext_next32(ut);
        v19 = v20 + 1;
        if ((v17 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_33;
    }
  }

  v20 = 0;
  v18 = 0;
LABEL_33:
  if (a8)
  {
    *a8 = v20;
  }

  icu::UCharsTrie::~UCharsTrie(&v31);
  return v18;
}

void icu::BytesDictionaryMatcher::~BytesDictionaryMatcher(icu::BytesDictionaryMatcher *this)
{
  *this = &unk_1F0931BC8;
  udata_close(*(this + 3));
}

{
  *this = &unk_1F0931BC8;
  udata_close(*(this + 3));
}

{
  *this = &unk_1F0931BC8;
  udata_close(*(this + 3));

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::BytesDictionaryMatcher::transform(icu::BytesDictionaryMatcher *this, uint64_t a2)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F000000) == 0x1000000)
  {
    if (a2 == 8205)
    {
      return 255;
    }

    else if (a2 == 8204)
    {
      return 254;
    }

    else
    {
      v3 = a2 - (v2 & 0x1FFFFF);
      if (v3 > 0xFD)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v3;
      }
    }
  }

  return a2;
}

uint64_t icu::BytesDictionaryMatcher::matches(icu::BytesDictionaryMatcher *this, UText *ut, int a3, int a4, int *a5, int *a6, int *a7, int *a8)
{
  v14 = *(this + 1);
  v32 = 0;
  v33 = v14;
  v34 = v14;
  v35 = 0xFFFFFFFFLL;
  NativeIndex = utext_getNativeIndex(ut);
  v15 = utext_next32(ut);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = v15;
    v29 = a7;
    v17 = 0;
    v18 = 1;
    while (1)
    {
      v19 = v18;
      v20 = *(this + 4);
      v21 = v20 & 0x7F000000;
      if (v19 == 1)
      {
        if (v21 == 0x1000000)
        {
          if (v16 == 8205)
          {
            v16 = 255;
          }

          else
          {
            v22 = v16 - (v20 & 0x1FFFFF);
            if (v22 > 0xFD)
            {
              v22 = -1;
            }

            if (v16 == 8204)
            {
              v16 = 254;
            }

            else
            {
              v16 = v22;
            }
          }
        }

        LODWORD(v35) = -1;
        Impl = icu::BytesTrie::nextImpl(&v32, v33, v16 + (v16 >> 31 << 8));
      }

      else
      {
        if (v21 == 0x1000000)
        {
          if (v16 == 8205)
          {
            v16 = 255;
          }

          else
          {
            v23 = v16 - (v20 & 0x1FFFFF);
            if (v23 > 0xFD)
            {
              v23 = -1;
            }

            if (v16 == 8204)
            {
              v16 = 254;
            }

            else
            {
              v16 = v23;
            }
          }
        }

        Impl = icu::BytesTrie::next(&v32, v16);
      }

      v25 = Impl;
      v26 = utext_getNativeIndex(ut) - NativeIndex;
      if (v25 < 2)
      {
        if (!v25)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v17 < a4)
        {
          if (v29)
          {
            v29[v17] = icu::BytesTrie::readValue((v34 + 1), (*v34 >> 1));
          }

          if (a5)
          {
            a5[v17] = v26;
          }

          if (a6)
          {
            a6[v17] = v19;
          }

          v17 = (v17 + 1);
        }

        if (v25 == 2)
        {
          goto LABEL_38;
        }
      }

      if (v26 < a3)
      {
        v16 = utext_next32(ut);
        v18 = v19 + 1;
        if ((v16 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_38;
    }
  }

  v19 = 0;
  v17 = 0;
LABEL_38:
  if (a8)
  {
    *a8 = v19;
  }

  icu::BytesTrie::~BytesTrie(&v32);
  return v17;
}