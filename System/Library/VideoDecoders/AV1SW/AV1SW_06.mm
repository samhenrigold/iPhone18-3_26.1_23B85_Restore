_WORD *sub_2775AECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8;
  *&v32[27300] = *MEMORY[0x277D85DE8];
  sub_2775AE0C4(v32, v8, v15, v18, v19, v13, v11, v20);
  result = sub_2775AE40C(v31, v32, v14, v12, 9, *(v10 + 4), v21, v22);
  if (v12 >= 1)
  {
    v24 = 0;
    v25 = *(v10 + 10);
    v26 = v31;
    do
    {
      if (v14 >= 1)
      {
        v27 = 0;
        do
        {
          v28 = v17[v27] + ((*&v26[2 * v27] * v25 + 1024) >> 11);
          if (v28 >= 0xFF)
          {
            LOBYTE(v29) = -1;
          }

          else
          {
            v29 = v17[v27] + ((*&v26[2 * v27] * v25 + 1024) >> 11);
          }

          if (v28 >= 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          v17[v27++] = v30;
        }

        while (v14 != v27);
      }

      v17 += v16;
      ++v24;
      v26 += 768;
    }

    while (v24 != v12);
  }

  return result;
}

_WORD *sub_2775AEDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8;
  *&v32[27300] = *MEMORY[0x277D85DE8];
  sub_2775AE0C4(v32, v8, v15, v18, v19, v13, v11, v20);
  result = sub_2775AE40C(v31, v32, v14, v12, 25, *v10, v21, v22);
  if (v12 >= 1)
  {
    v24 = 0;
    v25 = *(v10 + 4);
    v26 = v31;
    do
    {
      if (v14 >= 1)
      {
        v27 = 0;
        do
        {
          v28 = v17[v27] + ((*&v26[2 * v27] * v25 + 1024) >> 11);
          if (v28 >= 0xFF)
          {
            LOBYTE(v29) = -1;
          }

          else
          {
            v29 = v17[v27] + ((*&v26[2 * v27] * v25 + 1024) >> 11);
          }

          if (v28 >= 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          v17[v27++] = v30;
        }

        while (v14 != v27);
      }

      v17 += v16;
      ++v24;
      v26 += 768;
    }

    while (v24 != v12);
  }

  return result;
}

uint64_t sub_2775AEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v8;
  *&v41[27300] = *MEMORY[0x277D85DE8];
  result = sub_2775AE0C4(v41, v8, v15, v18, v19, v13, v11, v20);
  if (v12 >= -5)
  {
    v22 = 0;
    v23 = &v40;
    v24 = v41;
    do
    {
      if (v14 >= 1)
      {
        v25 = 0;
        v26 = v24;
        do
        {
          v27 = 0;
          v28 = (v24[v25 + 3] << 7) + 0x4000;
          do
          {
            result = v26[v27];
            v28 += *(v10 + 2 * v27++) * result;
          }

          while (v27 != 7);
          v29 = (v28 + 4) >> 3;
          if (v29 >= 0x1FFF)
          {
            v29 = 0x1FFF;
          }

          *&v23[2 * v25++] = v29 & ~(v29 >> 31);
          ++v26;
        }

        while (v25 != v14);
      }

      v24 += 390;
      v23 += 780;
    }

    while (v22++ != ((v12 + 5) & ~((v12 + 5) >> 31)));
    if (v12 >= 1)
    {
      v31 = 0;
      v32 = &v40;
      do
      {
        if (v14 >= 1)
        {
          v33 = 0;
          v34 = v32;
          do
          {
            v35 = 0;
            v36 = -262144;
            v37 = v34;
            do
            {
              v36 += *(v10 + 16 + v35) * *v37;
              v35 += 2;
              v37 += 390;
            }

            while (v35 != 14);
            v38 = (v36 + 1024) >> 11;
            if (v38 >= 0xFF)
            {
              result = 255;
            }

            else
            {
              result = v38;
            }

            if (v38 >= 0)
            {
              v39 = result;
            }

            else
            {
              v39 = 0;
            }

            v17[v31 * v16 + v33++] = v39;
            ++v34;
          }

          while (v33 != v14);
        }

        ++v31;
        v32 += 390;
      }

      while (v31 != v12);
    }
  }

  return result;
}

uint64_t sub_2775AF124(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = 4294967274;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (a3 >= 1)
      {
        v21 = a2;
        v22 = a2;
        v6 = &a2[a3];
        v23 = &a2[a3];
        v3 = 4294967294;
        v19 = 0;
        v20 = 0;
        do
        {
          if (v4 >= v6)
          {
            v8 = 0;
            v20 = 0x1FFFFFFFFLL;
          }

          else
          {
            v21 = v4 + 1;
            v7 = *v4;
            LODWORD(v20) = 7;
            v8 = v7 << 57;
          }

          v19 = v8;
          v9 = sub_2775CF2C4(&v19, 4);
          if (v20)
          {
            v10 = 2 * v19;
            v11 = v19 >> 63;
            v12 = v20 - 1;
            if (v20 == 1)
            {
              if (v21 < v23)
              {
                v13 = *v21++;
                LODWORD(v20) = 7;
                v19 = v13 << 57;
                LODWORD(v14) = (v13 >> 7) & 1;
                goto LABEL_17;
              }

              HIDWORD(v20) = 1;
            }
          }

          else if (v21 >= v23)
          {
            HIDWORD(v20) = 1;
            v12 = -1;
            v10 = 2 * v19;
            v11 = v19 >> 63;
          }

          else
          {
            v15 = *v21++;
            v10 = v15 << 57;
            LODWORD(v11) = (v15 >> 7) & 1;
            v12 = 7;
          }

          LODWORD(v20) = v12 - 1;
          v19 = 2 * v10;
          v14 = v10 >> 63;
LABEL_17:
          sub_2775CF2C4(&v19, (8 * v11) | 1);
          v4 = v23;
          if (v14)
          {
            v16 = sub_2775CF3E4(&v19);
            if (v4 - v21 < v16)
            {
              return 4294967274;
            }

            v4 = &v21[v16];
          }

          if (v9 == 1)
          {
            v17 = sub_2775AF314(a1, &v19, 0);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            if (v21 > v4)
            {
              return 4294967274;
            }

            v3 = 0;
            LODWORD(v20) = 0;
            v19 = 0;
          }

          if (HIDWORD(v20))
          {
            return 4294967274;
          }

          v21 = v4;
          v6 = v23;
        }

        while (v4 < v23);
      }
    }
  }

  return v3;
}

uint64_t sub_2775AF314(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  bzero(a1, 0x328uLL);
  v6 = sub_2775CF2C4(a2, 3);
  *a1 = v6;
  if (v6 > 2u)
  {
    return 4294967274;
  }

  a1[356] = sub_2775CF264(a2);
  v8 = sub_2775CF264(a2);
  a1[357] = v8;
  if (!v8)
  {
    v9 = sub_2775CF264(a2);
    a1[358] = v9;
    if (v9)
    {
      *(a1 + 90) = sub_2775CF2C4(a2, 32);
      v10 = sub_2775CF2C4(a2, 32);
      *(a1 + 91) = v10;
      if (v3 && (!*(a1 + 90) || !v10))
      {
        return 4294967274;
      }

      v11 = sub_2775CF264(a2);
      a1[368] = v11;
      if (v11)
      {
        if (sub_2775CF264(a2))
        {
          v12 = 0;
        }

        else
        {
          v39 = -1;
          do
          {
            if (v39 == 30)
            {
              return 4294967274;
            }

            v40 = v39;
            v41 = sub_2775CF264(a2);
            v39 = v40 + 1;
          }

          while (!v41);
          v42 = 2 << (v40 + 1);
          v43 = sub_2775CF2C4(a2, v40 + 2);
          v12 = v42 + v43 - 1;
          if (!(v42 + v43))
          {
            return 4294967274;
          }
        }

        *(a1 + 93) = v12 + 1;
      }

      v13 = sub_2775CF264(a2);
      a1[376] = v13;
      if (v13)
      {
        a1[377] = sub_2775CF2C4(a2, 5) + 1;
        v14 = sub_2775CF2C4(a2, 32);
        *(a1 + 95) = v14;
        if (v3 && !v14)
        {
          return 4294967274;
        }

        a1[384] = sub_2775CF2C4(a2, 5) + 1;
        a1[385] = sub_2775CF2C4(a2, 5) + 1;
      }
    }

    a1[386] = sub_2775CF264(a2);
    v15 = sub_2775CF2C4(a2, 5);
    a1[34] = v15 + 1;
    if (((v15 + 1) & 0x100) != 0)
    {
      goto LABEL_34;
    }

    v16 = 0;
    v17 = a1 + 432;
    v18 = a1 + 44;
    while (1)
    {
      v19 = sub_2775CF2C4(a2, 12);
      *(v18 - 2) = v19;
      if (v19 && (!v19 || (v19 & 0xF00) == 0))
      {
        return 4294967274;
      }

      *(v18 - 8) = sub_2775CF2C4(a2, 3) + 2;
      *(v18 - 7) = sub_2775CF2C4(a2, 2);
      if (*(v18 - 8) >= 4u)
      {
        *(v18 - 2) = sub_2775CF264(a2);
      }

      if (a1[376])
      {
        v20 = sub_2775CF264(a2);
        *(v18 - 1) = v20;
        if (v20)
        {
          *(v17 - 2) = sub_2775CF2C4(a2, a1[377]);
          *(v17 - 1) = sub_2775CF2C4(a2, a1[377]);
          *v17 = sub_2775CF264(a2);
        }
      }

      if (a1[386])
      {
        v21 = sub_2775CF264(a2);
        *v18 = v21;
        if (!v21)
        {
          goto LABEL_32;
        }
      }

      else if (!*v18)
      {
LABEL_32:
        v22 = 10;
        goto LABEL_33;
      }

      v22 = sub_2775CF2C4(a2, 4) + 1;
LABEL_33:
      *(v18 - 6) = v22;
      ++v16;
      v17 += 12;
      v18 += 10;
      if (v16 >= a1[34])
      {
        goto LABEL_34;
      }
    }
  }

  if (!a1[356])
  {
    return 4294967274;
  }

  a1[34] = 1;
  a1[36] = sub_2775CF2C4(a2, 3);
  a1[37] = sub_2775CF2C4(a2, 2);
  a1[38] = 10;
LABEL_34:
  a1[387] = sub_2775CF2C4(a2, 4) + 1;
  a1[388] = sub_2775CF2C4(a2, 4) + 1;
  *(a1 + 1) = sub_2775CF2C4(a2, a1[387]) + 1;
  *(a1 + 2) = sub_2775CF2C4(a2, a1[388]) + 1;
  if (!a1[357])
  {
    v23 = sub_2775CF264(a2);
    a1[389] = v23;
    if (v23)
    {
      a1[390] = sub_2775CF2C4(a2, 4) + 2;
      a1[391] = sub_2775CF2C4(a2, 3) + a1[390] + 1;
    }
  }

  a1[392] = sub_2775CF264(a2);
  a1[393] = sub_2775CF264(a2);
  a1[394] = sub_2775CF264(a2);
  if (a1[357])
  {
    *(a1 + 404) = 0x200000002;
    goto LABEL_49;
  }

  a1[395] = sub_2775CF264(a2);
  a1[396] = sub_2775CF264(a2);
  a1[397] = sub_2775CF264(a2);
  a1[398] = sub_2775CF264(a2);
  v24 = sub_2775CF264(a2);
  a1[399] = v24;
  if (v24)
  {
    a1[400] = sub_2775CF264(a2);
    a1[401] = sub_2775CF264(a2);
  }

  if (sub_2775CF264(a2))
  {
    *(a1 + 101) = 2;
  }

  else
  {
    v25 = sub_2775CF264(a2);
    *(a1 + 101) = v25;
    if (!v25)
    {
LABEL_45:
      v26 = 2;
      goto LABEL_47;
    }
  }

  if (sub_2775CF264(a2))
  {
    goto LABEL_45;
  }

  v26 = sub_2775CF264(a2);
LABEL_47:
  *(a1 + 102) = v26;
  if (a1[399])
  {
    a1[412] = sub_2775CF2C4(a2, 3) + 1;
  }

LABEL_49:
  a1[413] = sub_2775CF264(a2);
  a1[414] = sub_2775CF264(a2);
  a1[415] = sub_2775CF264(a2);
  v27 = sub_2775CF264(a2);
  a1[32] = v27;
  v28 = *a1;
  if (v28 == 2 && v27)
  {
    a1[32] += sub_2775CF264(a2);
    v28 = *a1;
  }

  if (v28 != 1)
  {
    a1[418] = sub_2775CF264(a2);
  }

  v29 = sub_2775CF264(a2);
  a1[419] = v29;
  if (v29)
  {
    *(a1 + 4) = sub_2775CF2C4(a2, 8);
    *(a1 + 5) = sub_2775CF2C4(a2, 8);
    v30 = sub_2775CF2C4(a2, 8);
  }

  else
  {
    *(a1 + 2) = 0x200000002;
    v30 = 2;
  }

  *(a1 + 6) = v30;
  if (a1[418])
  {
    v31 = sub_2775CF264(a2);
    v32 = 0;
    a1[33] = v31;
    *(a1 + 3) = 0;
    *(a1 + 208) = 257;
LABEL_88:
    *(a1 + 7) = v32;
    goto LABEL_89;
  }

  if (*(a1 + 4) != 1 || *(a1 + 5) != 13 || v30)
  {
    a1[33] = sub_2775CF264(a2);
    v34 = *a1;
    if (v34 != 2)
    {
      if (v34 != 1)
      {
        if (!*a1)
        {
          *(a1 + 3) = 1;
          *(a1 + 208) = 257;
        }

        goto LABEL_85;
      }

      goto LABEL_74;
    }

    if (a1[32] == 2)
    {
      v35 = sub_2775CF264(a2);
      a1[416] = v35;
      if (!v35 || (v36 = sub_2775CF264(a2), a1[417] = v36, !a1[416]))
      {
LABEL_74:
        v38 = 3;
LABEL_84:
        *(a1 + 3) = v38;
LABEL_85:
        if ((a1[417] & a1[416]) != 0)
        {
          v32 = sub_2775CF2C4(a2, 2);
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_88;
      }

      v37 = v36;
    }

    else
    {
      a1[416] = 1;
      v37 = a1[417];
    }

    if (v37)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    goto LABEL_84;
  }

  *(a1 + 3) = 3;
  a1[33] = 1;
  v33 = *a1;
  if (v33 != 1 && (v33 != 2 || a1[32] != 2))
  {
    return 4294967274;
  }

LABEL_89:
  if (v3 && !*(a1 + 6) && *(a1 + 3) != 3)
  {
    return 4294967274;
  }

  if (!a1[418])
  {
    a1[420] = sub_2775CF264(a2);
  }

  a1[421] = sub_2775CF264(a2);

  return sub_2775AF9FC(a2, v3);
}

uint64_t sub_2775AF9FC(uint64_t a1, int a2)
{
  v4 = sub_2775CF264(a1);
  if (*(a1 + 12))
  {
    return 4294967274;
  }

  if (a2)
  {
    if (!v4 || *a1)
    {
      return 4294967274;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 32) - v6;
    if (v7 >= 1)
    {
      v8 = v6 - 1;
      while (!*(v8 + v7))
      {
        if (v7-- <= 1)
        {
          return 0;
        }
      }

      return 4294967274;
    }

    if (v7)
    {
      return 4294967274;
    }
  }

  return 0;
}

uint64_t sub_2775AFA78(uint64_t a1, char **a2)
{
  v2 = a2;
  v3 = a1;
  block[9] = *MEMORY[0x277D85DE8];
  v4 = (a1 + 63052);
  v5 = *a2;
  v6 = a2[1];
  __src = v5;
  v825 = v5;
  v826 = &v6[v5];
  v822 = 0;
  v823 = 0;
  if (v6 <= 0)
  {
    v823 = 0x1FFFFFFFFLL;
    v822 = 0;
    v8 = (a1 + 63072);
  }

  else
  {
    __src = v5 + 1;
    v7 = *v5;
    LODWORD(v823) = 7;
    v822 = v7 << 57;
    v8 = (a1 + 63072);
    if (*(a1 + 63072) && (v7 & 0x80000000) != 0)
    {
      goto LABEL_1096;
    }
  }

  v9 = sub_2775CF2C4(&v822, 4);
  v10 = v823;
  if (!v823)
  {
    v11 = __src;
    if (__src < v826)
    {
      __src = __src + 1;
      v12 = *v11;
      v13 = 7;
      LODWORD(v823) = 7;
      v14 = v12 << 57;
      v822 = v12 << 57;
      LODWORD(v15) = (v12 >> 7) & 1;
LABEL_17:
      v19 = v13 - 1;
      LODWORD(v823) = v19;
      v17 = 2 * v14;
      v822 = 2 * v14;
      v18 = v14 >> 63;
      goto LABEL_19;
    }

    HIDWORD(v823) = 1;
  }

  v16 = v822;
  v14 = 2 * v822;
  v822 *= 2;
  v15 = v16 >> 63;
  v13 = v823 - 1;
  LODWORD(v823) = v823 - 1;
  if (v10 == 1)
  {
    v23 = __src;
    if (__src >= v826)
    {
      HIDWORD(v823) = 1;
      goto LABEL_17;
    }

    __src = __src + 1;
    v24 = *v23;
    v19 = 7;
    LODWORD(v823) = 7;
    v17 = v24 << 57;
    v822 = v24 << 57;
    LODWORD(v18) = (v24 >> 7) & 1;
  }

  else
  {
    v17 = 2 * v14;
    v822 = 2 * v14;
    v18 = v14 >> 63;
    v19 = v13 - 1;
    LODWORD(v823) = v19;
    if (!v19)
    {
      v20 = __src;
      if (__src < v826)
      {
        __src = __src + 1;
        v21 = *v20;
        LODWORD(v823) = 7;
        v22 = v21 << 57;
        goto LABEL_20;
      }

      HIDWORD(v823) = 1;
    }
  }

LABEL_19:
  LODWORD(v823) = v19 - 1;
  v22 = 2 * v17;
LABEL_20:
  v822 = v22;
  if (v15)
  {
    v25 = sub_2775CF2C4(&v822, 3);
    v26 = sub_2775CF2C4(&v822, 2);
    sub_2775CF2C4(&v822, 3);
    if (!v18)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    if (!v18)
    {
      goto LABEL_26;
    }
  }

  v27 = sub_2775CF3E4(&v822);
  if (v826 - __src < v27)
  {
    goto LABEL_1096;
  }

  v826 = __src + v27;
LABEL_26:
  if (HIDWORD(v823))
  {
    goto LABEL_1096;
  }

  if ((v9 - 3) <= 0xFFFFFFFD)
  {
    if (v15)
    {
      v28 = v4[1];
      if (v28)
      {
        if ((((1 << (v26 + 8)) | (1 << v25)) & ~v28) != 0)
        {
          return v826 - v825;
        }
      }
    }
  }

  v29 = (v3 + 49920);
  v817 = v3;
  if (v9 <= 4)
  {
    if (v9 <= 2)
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v4[10] |= 4u;
          goto LABEL_904;
        }

LABEL_46:
        sub_2775E9DFC(v3, "Unknown OBU type %d of size %td\n");
        goto LABEL_904;
      }

      v34 = *(v3 + 72);
      v35 = sub_2775C68C0(v34, 0x350);
      if (v35)
      {
        v36 = *v35;
        *(v35 - 5) = *v35;
        v37 = v35 - 40;
        *(v35 - 4) = v34;
        *(v35 - 3) = 1;
        *(v35 - 2) = sub_2775DA1FC;
        *(v35 - 1) = v35;
        block[0] = (v35 - 40);
        if ((sub_2775AF314(v36, &v822, *v8) & 0x80000000) != 0)
        {
          sub_2775E9DFC(v3, "Error parsing sequence header\n");
          sub_2775DA200(block);
          goto LABEL_1096;
        }

        v38 = *v4;
        if (*v4 >= v36[34])
        {
          v38 = 0;
        }

        v39 = *&v36[10 * v38 + 40];
        v4[1] = v39;
        v40 = __clz(v39 >> 8) ^ 0x1F;
        if (v39 >= 0x100)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v4[3] = v41;
        v42 = *(v3 + 88);
        if (v42)
        {
          if (!memcmp(v36, *(v3 + 88), 0x1A8uLL))
          {
            if (!memcmp(v36 + 424, (v42 + 424), 0x180uLL))
            {
LABEL_123:
              sub_2775DA200((v3 + 80));
              *(v3 + 80) = v37;
              *(v3 + 88) = v36;
              goto LABEL_904;
            }

            v50 = 2;
          }

          else
          {
            v812 = v8;
            v43 = v2;
            *(v3 + 112) = 0;
            *(v3 + 144) = 0;
            *(v3 + 128) = 0;
            sub_2775DA200((v3 + 136));
            sub_2775DA200((v3 + 120));
            v44 = 0;
            v45 = 52696;
            v46 = v3 + 52696;
            v47 = 52704;
            do
            {
              v48 = v46 + v44;
              if (*(v46 + v44 - 2752))
              {
                sub_2775DE04C(v48 - 2760);
                *(v48 - 2472) = 0;
              }

              sub_2775DA200((v48 - 2464));
              sub_2775DA200((v48 - 2456));
              v49 = (v3 + v47);
              *v49 = 0;
              v49[1] = 0;
              sub_2775DA200((v3 + v45));
              v44 += 344;
              v45 += 24;
              v47 += 24;
            }

            while (v44 != 2752);
            v50 = 1;
            v2 = v43;
            v29 = (v3 + 49920);
            v8 = v812;
          }
        }

        else
        {
          *(v3 + 112) = 0;
          v50 = 1;
        }

        v4[10] |= v50;
        goto LABEL_123;
      }

      return -12;
    }

    if (v9 != 3)
    {
      v30 = *(v3 + 112);
      if (!v30)
      {
        goto LABEL_1096;
      }

      v31 = (v3 + 60);
      v32 = *(v3 + 60);
      if (*(v3 + 56) > v32)
      {
LABEL_890:
        v509 = v30[449] * v30[445];
        if (v509 >= 2)
        {
          v510 = __src;
          if (__src >= v826)
          {
            v522 = v822;
            v823 = 0x1FFFFFFFFLL;
            v822 *= 2;
            if (v522 < 0)
            {
              goto LABEL_893;
            }
          }

          else
          {
            __src = __src + 1;
            v511 = *v510;
            LODWORD(v823) = 7;
            v822 = v511 << 57;
            if ((v511 >> 7))
            {
LABEL_893:
              v512 = *(v3 + 112);
              v820 = v31;
              v513 = *(v512 + 444);
              v514 = *(v512 + 448);
              v515 = sub_2775CF2C4(&v822, v514 + v513);
              v516 = *(v3 + 48);
              v517 = v4;
              v518 = v29;
              v519 = v8;
              v520 = v516 + 80 * v32;
              *(v520 + 72) = v515;
              v521 = v514 + v513;
              v31 = v820;
              *(v520 + 76) = sub_2775CF2C4(&v822, v521);
              v8 = v519;
              v29 = v518;
              v4 = v517;
LABEL_896:
              LODWORD(v823) = 0;
              v822 = 0;
              if (HIDWORD(v823))
              {
                goto LABEL_1096;
              }

              v524 = v516 + 80 * v32;
              v525 = v2[2];
              if (v525)
              {
                atomic_fetch_add_explicit(v525 + 4, 1u, memory_order_relaxed);
              }

              v526 = v2[8];
              if (v526)
              {
                atomic_fetch_add_explicit(v526 + 4, 1u, memory_order_relaxed);
              }

              *v524 = *v2;
              v528 = *(v2 + 2);
              v527 = *(v2 + 3);
              v529 = *(v2 + 1);
              *(v524 + 64) = v2[8];
              *(v524 + 32) = v528;
              *(v524 + 48) = v527;
              *(v524 + 16) = v529;
              v530 = __src;
              v531 = *(v3 + 60);
              v532 = *(v3 + 48) + 80 * v531;
              *v532 = __src;
              *(v532 + 8) = v826 - v530;
              v534 = *(v532 + 72);
              v533 = *(v532 + 76);
              if (v534 > v533 || v534 != *(v3 + 64))
              {
                if ((v531 & 0x80000000) == 0)
                {
                  v553 = 0;
                  v554 = -1;
                  do
                  {
                    sub_2775A9300(*(v3 + 48) + v553);
                    ++v554;
                    v553 += 80;
                  }

                  while (v554 < *(v3 + 60));
                }

                *v31 = 0;
                goto LABEL_1096;
              }

              *(v3 + 60) = v531 + 1;
              *(v3 + 64) = v533 + 1;
              goto LABEL_904;
            }
          }
        }

        v516 = *(v3 + 48);
        v523 = v516 + 80 * v32;
        *(v523 + 72) = 0;
        *(v523 + 76) = v509 - 1;
        goto LABEL_896;
      }

      if (v32 > 26843544)
      {
        goto LABEL_1096;
      }

      v33 = v32 + 1;
LABEL_888:
      v507 = malloc_type_realloc(*(v3 + 48), 80 * v33, 0x10700408B15705AuLL);
      if (!v507)
      {
        goto LABEL_1096;
      }

      *(v3 + 48) = v507;
      v508 = &v507[80 * *(v3 + 60)];
      *(v508 + 3) = 0u;
      *(v508 + 4) = 0u;
      *(v508 + 1) = 0u;
      *(v508 + 2) = 0u;
      *v508 = 0u;
      v32 = *(v3 + 60);
      *(v3 + 56) = v32 + 1;
      v30 = *(v3 + 112);
      goto LABEL_890;
    }

LABEL_68:
    if (!*(v3 + 88))
    {
      goto LABEL_1096;
    }

    v813 = v8;
    v52 = *(v3 + 104);
    if (v52)
    {
      v53 = *v52;
    }

    else
    {
      v54 = *(v3 + 96);
      v55 = sub_2775C68C0(v54, 0x4A8);
      if (!v55)
      {
        *(v3 + 104) = 0;
        return -12;
      }

      v56 = v55;
      v53 = *v55;
      *(v56 - 5) = v53;
      *(v56 - 4) = v54;
      *(v56 - 3) = 1;
      *(v56 - 2) = sub_2775DA1FC;
      *(v56 - 1) = v56;
      *(v3 + 104) = v56 - 40;
    }

    *(v3 + 112) = v53;
    bzero(v53, 0x480uLL);
    v57 = *(v3 + 112);
    *(v57 + 249) = v25;
    *(v57 + 250) = v26;
    v818 = *(v3 + 88);
    v807 = v4;
    v810 = (v3 + 49920);
    v805 = v9;
    v806 = v2;
    if (*(v818 + 357))
    {
      v58 = 0;
      *(v57 + 232) = 0;
      v815 = (v57 + 232);
      *(v57 + 251) = 0;
LABEL_75:
      v804 = (v57 + 264);
      *(v57 + 264) = 1;
      goto LABEL_76;
    }

    if (!v823)
    {
      v66 = __src;
      if (__src < v826)
      {
        __src = __src + 1;
        v67 = *v66;
        LODWORD(v823) = 7;
        v822 = v67 << 57;
        LODWORD(v67) = (v67 >> 7) & 1;
        goto LABEL_126;
      }

      HIDWORD(v823) = 1;
    }

    v83 = v822;
    LODWORD(v823) = v823 - 1;
    v822 *= 2;
    v67 = v83 >> 63;
LABEL_126:
    *(v57 + 251) = v67;
    if (v67)
    {
      *(v57 + 252) = sub_2775CF2C4(&v822, 3);
      if (*(v818 + 376) && !*(v818 + 368))
      {
        *(v57 + 260) = sub_2775CF2C4(&v822, *(v818 + 385));
      }

      if (*(v818 + 389))
      {
        v84 = sub_2775CF2C4(&v822, *(v818 + 391));
        *(v57 + 256) = v84;
        v85 = *(v3 + 344 * *(v57 + 252) + 49944);
        if (!v85 || *(v85 + 256) != v84)
        {
          goto LABEL_1095;
        }
      }

      goto LABEL_876;
    }

    v58 = sub_2775CF2C4(&v822, 2);
    v86 = *(v818 + 357);
    *(v57 + 232) = v58;
    v815 = (v57 + 232);
    if (v86)
    {
      goto LABEL_75;
    }

    if (!v823)
    {
      v87 = __src;
      if (__src < v826)
      {
        __src = __src + 1;
        v88 = *v87;
        v89 = 7;
        LODWORD(v823) = 7;
        v90 = v88 << 57;
        v822 = v88 << 57;
        LODWORD(v88) = (v88 >> 7) & 1;
        v804 = (v57 + 264);
        *(v57 + 264) = v88;
        if (!v88)
        {
LABEL_1203:
          LODWORD(v823) = v89 - 1;
          v822 = 2 * v90;
          v59 = v90 >> 63;
          goto LABEL_80;
        }

        goto LABEL_76;
      }

      HIDWORD(v823) = 1;
    }

    v657 = v822;
    v89 = v823 - 1;
    LODWORD(v823) = v823 - 1;
    v90 = 2 * v822;
    v822 *= 2;
    v657 >>= 63;
    v804 = (v57 + 264);
    *(v57 + 264) = v657;
    if (!v657)
    {
      if (!v89)
      {
        v658 = __src;
        if (__src < v826)
        {
          __src = __src + 1;
          v59 = *v658;
          LODWORD(v823) = 7;
          v822 = v59 << 57;
          LODWORD(v59) = (v59 >> 7) & 1;
          goto LABEL_80;
        }

        HIDWORD(v823) = 1;
      }

      goto LABEL_1203;
    }

LABEL_76:
    if (*(v818 + 376) && !*(v818 + 368))
    {
      *(v57 + 260) = sub_2775CF2C4(&v822, *(v818 + 385));
      v58 = *(v57 + 232);
    }

    LOBYTE(v59) = v58 != 0;
LABEL_80:
    *(v57 + 265) = v59;
    if (v58 == 3 || !v58 && *v804 || *(v818 + 357))
    {
      LOBYTE(v60) = 1;
      goto LABEL_85;
    }

    if (!v823)
    {
      v73 = __src;
      if (__src < v826)
      {
        __src = __src + 1;
        v60 = *v73;
        LODWORD(v823) = 7;
        v822 = v60 << 57;
        LODWORD(v60) = (v60 >> 7) & 1;
        goto LABEL_85;
      }

      HIDWORD(v823) = 1;
    }

    v177 = v822;
    LODWORD(v823) = v823 - 1;
    v822 *= 2;
    v60 = v177 >> 63;
LABEL_85:
    *(v57 + 266) = v60;
    if (!v823)
    {
      v61 = __src;
      if (__src < v826)
      {
        __src = __src + 1;
        v65 = *v61;
        v62 = 7;
        LODWORD(v823) = 7;
        v63 = v65 << 57;
        v822 = v65 << 57;
        v64 = (v57 + 267);
        *(v57 + 267) = (v65 & 0x80) != 0;
        LODWORD(v65) = *(v818 + 404);
        if (v65 != 2)
        {
LABEL_141:
          *(v57 + 268) = v65;
          if (v65)
          {
            LODWORD(v91) = *(v818 + 408);
            if (v91 != 2)
            {
              goto LABEL_159;
            }

            if (!v62)
            {
              v91 = __src;
              if (__src < v826)
              {
                __src = __src + 1;
                v92 = *v91;
                LODWORD(v823) = 7;
                v822 = v92 << 57;
                LODWORD(v91) = (v92 >> 7) & 1;
                goto LABEL_159;
              }

              HIDWORD(v823) = 1;
            }

            LODWORD(v823) = v62 - 1;
            v822 = 2 * v63;
            v91 = (v63 >> 63);
          }

          else
          {
            LOBYTE(v91) = 0;
          }

LABEL_159:
          if (v58)
          {
            v100 = v91;
          }

          else
          {
            v100 = 1;
          }

          *(v57 + 269) = v100;
          if (*(v818 + 389))
          {
            *(v57 + 256) = sub_2775CF2C4(&v822, *(v818 + 391));
          }

          if (*(v818 + 357))
          {
            LOBYTE(v101) = 0;
            goto LABEL_177;
          }

          if (*v815 == 3)
          {
            LOBYTE(v101) = 1;
            goto LABEL_177;
          }

          if (!v823)
          {
            v102 = __src;
            if (__src < v826)
            {
              __src = __src + 1;
              v101 = *v102;
              LODWORD(v823) = 7;
              v822 = v101 << 57;
              LODWORD(v101) = (v101 >> 7) & 1;
              goto LABEL_177;
            }

            HIDWORD(v823) = 1;
          }

          v107 = v822;
          LODWORD(v823) = v823 - 1;
          v822 *= 2;
          v101 = v107 >> 63;
LABEL_177:
          *(v57 + 270) = v101;
          if (*(v818 + 399))
          {
            v108 = sub_2775CF2C4(&v822, *(v818 + 412));
          }

          else
          {
            v108 = 0;
          }

          *(v57 + 248) = v108;
          if (!*(v57 + 266) && (*v815 & 1) != 0)
          {
            v109 = sub_2775CF2C4(&v822, 3);
          }

          else
          {
            v109 = 7;
          }

          *(v57 + 271) = v109;
          v110 = v818;
          if (!*(v818 + 376))
          {
            goto LABEL_199;
          }

          if (!v823)
          {
            v111 = __src;
            if (__src < v826)
            {
              __src = __src + 1;
              v112 = *v111;
              LODWORD(v823) = 7;
              v822 = v112 << 57;
              LODWORD(v112) = (v112 >> 7) & 1;
LABEL_190:
              *(v57 + 272) = v112;
              if (v112)
              {
                v114 = *(v3 + 88);
                if (*(v114 + 34))
                {
                  v115 = 0;
                  v116 = (v818 + 40);
                  do
                  {
                    if (*(v116 + 3))
                    {
                      v117 = *v116;
                      if (!*v116 || ((v117 >> *(v57 + 249)) & 1) != 0 && ((256 << *(v57 + 250)) & v117) != 0)
                      {
                        *(v57 + 276 + 4 * v115) = sub_2775CF2C4(&v822, *(v818 + 384));
                      }
                    }

                    ++v115;
                    v116 += 5;
                  }

                  while (v115 < *(v114 + 34));
                }
              }

LABEL_199:
              v118 = *v815;
              if ((*v815 & 1) == 0)
              {
                if (v118 || !*v804)
                {
                  v119 = sub_2775CF2C4(&v822, 8);
                  v120 = (v57 + 404);
                  *(v57 + 404) = v119;
                  if (v119 != -1 && *(v57 + 266) && *(v818 + 399))
                  {
                    v121 = 8;
                    do
                    {
                      sub_2775CF2C4(&v822, *(v818 + 412));
                      --v121;
                    }

                    while (v121);
                    v110 = v818;
                  }
                }

                else
                {
                  v120 = (v57 + 404);
                  *(v57 + 404) = -1;
                }

                if (*v813 && *v815 == 2 && *v120 == 255 || (sub_2775B5504(v3, &v822, 0) & 0x80000000) != 0)
                {
                  goto LABEL_1095;
                }

                if (!*(v57 + 268) || *(v57 + 417))
                {
                  LOBYTE(v128) = 0;
LABEL_229:
                  LOBYTE(v129) = 0;
                  *(v57 + 419) = v128;
                  goto LABEL_338;
                }

                if (!v823)
                {
                  v128 = __src;
                  if (__src < v826)
                  {
                    __src = __src + 1;
                    v130 = *v128;
                    LODWORD(v823) = 7;
                    v822 = v130 << 57;
                    LODWORD(v128) = (v130 >> 7) & 1;
                    goto LABEL_229;
                  }

                  HIDWORD(v823) = 1;
                }

                v471 = v822;
                LODWORD(v823) = v823 - 1;
                v822 *= 2;
                v128 = (v471 >> 63);
                goto LABEL_229;
              }

              *(v57 + 419) = 0;
              if (v118 == 3)
              {
                v122 = -1;
              }

              else
              {
                v122 = sub_2775CF2C4(&v822, 8);
              }

              *(v57 + 404) = v122;
              v123 = *(v818 + 399);
              if (*(v57 + 266))
              {
                if (!*(v818 + 399))
                {
                  goto LABEL_219;
                }

                v124 = 8;
                do
                {
                  sub_2775CF2C4(&v822, *(v818 + 412));
                  --v124;
                }

                while (v124);
                v123 = *(v818 + 399);
                v110 = v818;
              }

              if (v123)
              {
                if (!v823)
                {
                  v125 = __src;
                  if (__src < v826)
                  {
                    __src = __src + 1;
                    v126 = *v125;
                    LODWORD(v823) = 7;
                    v822 = v126 << 57;
                    LODWORD(v126) = (v126 >> 7) & 1;
                    goto LABEL_235;
                  }

                  HIDWORD(v823) = 1;
                }

                v131 = v822;
                LODWORD(v823) = v823 - 1;
                v822 *= 2;
                v126 = v131 >> 63;
LABEL_235:
                v127 = (v57 + 420);
                *(v57 + 420) = v126;
                if (v126)
                {
                  v132 = (v57 + 421);
                  *(v57 + 421) = sub_2775CF2C4(&v822, 3);
                  *(v57 + 422) = -1;
                  v133 = sub_2775CF2C4(&v822, 3);
                  v134 = 0;
                  *(v57 + 424) = v133;
                  *(v57 + 427) = -1;
                  *(v57 + 425) = -1;
                  v110 = v818;
                  v135 = *(v818 + 412);
                  v136 = 1 << (v135 - 1);
                  v137 = v3 + 49944;
                  do
                  {
                    if (!*v137)
                    {
                      goto LABEL_1095;
                    }

                    if (v135)
                    {
                      v138 = *(*v137 + 248) - *(v57 + 248);
                      v139 = (v138 & (v136 - 1)) - (v138 & v136);
                    }

                    else
                    {
                      v139 = 0;
                    }

                    *(block + v134) = v139 + v136;
                    v134 += 4;
                    v137 += 344;
                  }

                  while (v134 != 32);
                  v140 = 0;
                  v827 = 0u;
                  v828 = 0u;
                  *(&v827 + *v132) = 1;
                  *(&v827 + v133) = 1;
                  v141 = -1;
                  v142 = -1;
                  do
                  {
                    v143 = *(block + v140);
                    if (*(&v827 + v140))
                    {
                      v144 = 1;
                    }

                    else
                    {
                      v144 = v143 < v136;
                    }

                    if (!v144 && v143 >= v141)
                    {
                      *(v57 + 427) = v140;
                      v142 = v140;
                      v141 = v143;
                    }

                    ++v140;
                  }

                  while (v140 != 8);
                  if (v141 != -1)
                  {
                    *(&v827 + v142) = 1;
                  }

                  v146 = 0;
                  v147 = 0x7FFFFFFF;
                  v148 = -1;
                  do
                  {
                    v149 = *(block + v146);
                    if (*(&v827 + v146))
                    {
                      v150 = 1;
                    }

                    else
                    {
                      v150 = v149 < v136;
                    }

                    if (!v150 && v149 < v147)
                    {
                      *(v57 + 425) = v146;
                      v148 = v146;
                      v147 = v149;
                    }

                    ++v146;
                  }

                  while (v146 != 8);
                  if (v147 != 0x7FFFFFFF)
                  {
                    *(&v827 + v148) = 1;
                  }

                  v152 = 0;
                  v153 = 0x7FFFFFFF;
                  v154 = -1;
                  do
                  {
                    v155 = *(block + v152);
                    if (*(&v827 + v152))
                    {
                      v156 = 1;
                    }

                    else
                    {
                      v156 = v155 < v136;
                    }

                    if (!v156 && v155 < v153)
                    {
                      *(v57 + 426) = v152;
                      v154 = v152;
                      v153 = v155;
                    }

                    ++v152;
                  }

                  while (v152 != 8);
                  if (v153 != 0x7FFFFFFF)
                  {
                    *(&v827 + v154) = 1;
                  }

                  for (i = 1; i != 7; ++i)
                  {
                    v159 = v132[i];
                    if (v159 < 0)
                    {
                      v160 = 0;
                      v161 = -1;
                      do
                      {
                        v162 = *(block + v160);
                        if (*(&v827 + v160))
                        {
                          v163 = 0;
                        }

                        else
                        {
                          v163 = v162 < v136;
                        }

                        if (v163 && v162 >= v161)
                        {
                          v132[i] = v160;
                          LOBYTE(v159) = v160;
                          v161 = v162;
                        }

                        ++v160;
                      }

                      while (v160 != 8);
                      if (v161 != -1)
                      {
                        *(&v827 + v159) = 1;
                      }
                    }
                  }

                  v165 = 0;
                  v166 = -1;
                  v167 = 0x7FFFFFFF;
                  do
                  {
                    if (*(block + v165) < v167)
                    {
                      v166 = v165;
                      v167 = *(block + v165);
                    }

                    ++v165;
                  }

                  while (v165 != 8);
                  for (j = 0; j != 7; ++j)
                  {
                    if (v132[j] < 0)
                    {
                      v132[j] = v166;
                    }
                  }
                }

LABEL_303:
                v169 = 0;
                v170 = v57 + 421;
                do
                {
                  if (!*v127)
                  {
                    *(v170 + v169) = sub_2775CF2C4(&v822, 3);
                  }

                  if (v110[389])
                  {
                    v171 = sub_2775CF2C4(&v822, v110[390]);
                    v172 = *(v3 + 49936 + 344 * *(v170 + v169) + 8);
                    if (!v172 || *(v172 + 256) != ((*(v57 + 256) + (1 << v110[391]) + ~v171) & ((1 << v110[391]) - 1)))
                    {
                      goto LABEL_1095;
                    }
                  }

                  ++v169;
                }

                while (v169 != 7);
                if (*(v57 + 266))
                {
                  v173 = 0;
                }

                else
                {
                  v173 = *(v57 + 270) != 0;
                }

                if ((sub_2775B5504(v3, &v822, v173) & 0x80000000) != 0)
                {
                  goto LABEL_1095;
                }

                v174 = v823;
                if (*(v57 + 269))
                {
                  LOBYTE(v175) = 0;
                  goto LABEL_323;
                }

                if (!v823)
                {
                  v176 = __src;
                  if (__src < v826)
                  {
                    __src = __src + 1;
                    v175 = *v176;
                    v174 = 7;
                    LODWORD(v823) = 7;
                    v822 = v175 << 57;
                    LODWORD(v175) = (v175 >> 7) & 1;
                    goto LABEL_323;
                  }

                  HIDWORD(v823) = 1;
                }

                v178 = v822;
                v174 = v823 - 1;
                LODWORD(v823) = v823 - 1;
                v822 *= 2;
                v175 = v178 >> 63;
LABEL_323:
                *(v57 + 428) = v175;
                if (!v174)
                {
                  v179 = __src;
                  if (__src < v826)
                  {
                    __src = __src + 1;
                    v181 = *v179;
                    v180 = 7;
                    LODWORD(v823) = 7;
                    v822 = v181 << 57;
                    LODWORD(v181) = (v181 >> 7) & 1;
                    goto LABEL_328;
                  }

                  HIDWORD(v823) = 1;
                }

                v182 = v822;
                v180 = v174 - 1;
                LODWORD(v823) = v180;
                v822 *= 2;
                v181 = v182 >> 63;
LABEL_328:
                if (v181)
                {
                  v183 = 4;
                }

                else
                {
                  v183 = sub_2775CF2C4(&v822, 2);
                  v180 = v823;
                }

                *(v57 + 432) = v183;
                if (!v180)
                {
                  v184 = __src;
                  if (__src < v826)
                  {
                    __src = __src + 1;
                    v187 = *v184;
                    v185 = 7;
                    LODWORD(v823) = 7;
                    v186 = v187 << 57;
                    v822 = v187 << 57;
                    LODWORD(v187) = (v187 >> 7) & 1;
LABEL_336:
                    *(v57 + 436) = v187;
                    if (*(v57 + 266) || !v110[401] || !v110[399] || (*v815 & 1) == 0)
                    {
                      LOBYTE(v129) = 0;
                      goto LABEL_338;
                    }

                    if (!v185)
                    {
                      v191 = __src;
                      if (__src < v826)
                      {
                        __src = __src + 1;
                        v129 = *v191;
                        LODWORD(v823) = 7;
                        v822 = v129 << 57;
                        LODWORD(v129) = (v129 >> 7) & 1;
                        goto LABEL_338;
                      }

                      HIDWORD(v823) = 1;
                    }

                    LODWORD(v823) = v185 - 1;
                    v822 = 2 * v186;
                    v129 = v186 >> 63;
LABEL_338:
                    *(v57 + 437) = v129;
                    if (v110[357])
                    {
                      v189 = 0;
                      v190 = v823;
                      goto LABEL_355;
                    }

                    v190 = v823;
                    if (*v64)
                    {
                      v189 = 0;
                      goto LABEL_355;
                    }

                    if (!v823)
                    {
                      v192 = __src;
                      if (__src < v826)
                      {
                        __src = __src + 1;
                        v193 = *v192;
                        v190 = 7;
                        LODWORD(v823) = 7;
                        v822 = v193 << 57;
                        LODWORD(v193) = (v193 >> 7) & 1;
LABEL_354:
                        v189 = v193 == 0;
LABEL_355:
                        *(v57 + 438) = v189;
                        if (!v190)
                        {
                          v195 = __src;
                          if (__src < v826)
                          {
                            __src = __src + 1;
                            v196 = *v195;
                            v197 = 7;
                            LODWORD(v823) = 7;
                            v198 = v196 << 57;
                            v822 = v196 << 57;
                            LODWORD(v199) = (v196 >> 7) & 1;
LABEL_360:
                            *(v57 + 440) = v199;
                            v201 = v110[392];
                            v202 = (64 << v201) - 1;
                            v203 = v201 + 6;
                            v204 = (v202 + *(v57 + 236)) >> (v201 + 6);
                            v205 = *(v57 + 244);
                            v206 = 0x40u >> v201;
                            v207 = -1;
                            do
                            {
                              ++v207;
                            }

                            while (v206 << v207 < v204);
                            v208 = 2 * v203;
                            v209 = v207;
                            *(v57 + 442) = v207;
                            if (v204 >= 64)
                            {
                              v210 = 64;
                            }

                            else
                            {
                              v210 = v204;
                            }

                            v211 = -1;
                            do
                            {
                              ++v211;
                            }

                            while (1 << v211 < v210);
                            v212 = (v202 + v205) >> v203;
                            *(v57 + 443) = v211;
                            if (v212 >= 64)
                            {
                              v213 = 64;
                            }

                            else
                            {
                              v213 = (v202 + v205) >> v203;
                            }

                            v214 = -1;
                            do
                            {
                              ++v214;
                            }

                            while (1 << v214 < v213);
                            v215 = 0x900000u >> v208;
                            v216 = v214;
                            *(v57 + 447) = v214;
                            v217 = v204 * v212;
                            v218 = -1;
                            do
                            {
                              ++v218;
                            }

                            while ((v215 << v218) < v217);
                            if (v218 <= v207)
                            {
                              v219 = v207;
                            }

                            else
                            {
                              v219 = v218;
                            }

                            if (v199)
                            {
                              *(v57 + 444) = v207;
                              if (v211 > v207)
                              {
                                v220 = v826;
                                v221 = __src;
                                while (1)
                                {
                                  if (!v197)
                                  {
                                    if (v221 < v220)
                                    {
                                      __src = v221 + 1;
                                      v222 = *v221;
                                      v197 = 7;
                                      LODWORD(v823) = 7;
                                      v198 = v222 << 57;
                                      v822 = v222 << 57;
                                      LODWORD(v223) = (v222 >> 7) & 1;
                                      v221 = __src;
                                      goto LABEL_385;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  LODWORD(v823) = --v197;
                                  v223 = v198 >> 63;
                                  v198 *= 2;
                                  v822 = v198;
LABEL_385:
                                  if (v223)
                                  {
                                    *(v57 + 444) = ++v209;
                                    if (v209 < v211)
                                    {
                                      continue;
                                    }
                                  }

                                  break;
                                }
                              }

                              if (v204 < 1)
                              {
                                v225 = 0;
                              }

                              else
                              {
                                v224 = 0;
                                v225 = 0;
                                do
                                {
                                  *(v57 + 450 + 2 * v225++) = v224;
                                  v224 += ((v204 - 1) >> v209) + 1;
                                }

                                while (v224 < v204);
                              }

                              *(v57 + 445) = v225;
                              v232 = (v219 - v209) & ~((v219 - v209) >> 31);
                              *(v57 + 446) = (v219 - v209) & ~((v219 - v209) >> 31);
                              *(v57 + 448) = (v219 - v209) & ~((v219 - v209) >> 31);
                              if (v216 > v232)
                              {
                                v233 = v826;
                                v234 = __src;
                                while (1)
                                {
                                  if (!v197)
                                  {
                                    if (v234 < v233)
                                    {
                                      __src = v234 + 1;
                                      v235 = *v234;
                                      v197 = 7;
                                      LODWORD(v823) = 7;
                                      v198 = v235 << 57;
                                      v822 = v235 << 57;
                                      LODWORD(v236) = (v235 >> 7) & 1;
                                      v234 = __src;
                                      goto LABEL_412;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  LODWORD(v823) = --v197;
                                  v236 = v198 >> 63;
                                  v198 *= 2;
                                  v822 = v198;
LABEL_412:
                                  if (v236)
                                  {
                                    *(v57 + 448) = ++v232;
                                    if (v232 < v216)
                                    {
                                      continue;
                                    }
                                  }

                                  break;
                                }
                              }

                              if (v212 < 1)
                              {
                                v238 = 0;
                              }

                              else
                              {
                                v237 = 0;
                                v238 = 0;
                                do
                                {
                                  *(v57 + 580 + 2 * v238++) = v237;
                                  v237 += ((v212 - 1) >> v232) + 1;
                                }

                                while (v237 < v212);
                              }

                              *(v57 + 449) = v238;
                            }

                            else
                            {
                              *(v57 + 445) = 0;
                              if (v204 < 1)
                              {
                                v231 = 0;
                                v227 = 0;
                              }

                              else
                              {
                                v226 = 0;
                                v227 = 0;
                                for (k = 0; k < v204; k += v230)
                                {
                                  if (v204 - k >= v206)
                                  {
                                    v229 = v206;
                                  }

                                  else
                                  {
                                    v229 = v204 - k;
                                  }

                                  if (v229 < 2)
                                  {
                                    v230 = 1;
                                  }

                                  else
                                  {
                                    v230 = sub_2775CF45C(&v822, v229) + 1;
                                    v226 = *(v57 + 445);
                                  }

                                  *(v57 + 450 + 2 * v226) = k;
                                  if (v227 <= v230)
                                  {
                                    v227 = v230;
                                  }

                                  v231 = ++v226;
                                  *(v57 + 445) = v226;
                                  if (v226 > 0x3Fu)
                                  {
                                    break;
                                  }
                                }
                              }

                              v239 = -1;
                              do
                              {
                                ++v239;
                              }

                              while (1 << v239 < v231);
                              *(v57 + 444) = v239;
                              if (v219)
                              {
                                v240 = v219 + 1;
                              }

                              else
                              {
                                v240 = 0;
                              }

                              v241 = (v217 >> v240) / v227;
                              if (v241 <= 1)
                              {
                                v242 = 1;
                              }

                              else
                              {
                                v242 = v241;
                              }

                              *(v57 + 449) = 0;
                              if (v212 < 1)
                              {
                                v238 = 0;
                              }

                              else
                              {
                                v238 = 0;
                                for (m = 0; m < v212; m += v245)
                                {
                                  if (v212 - m >= v242)
                                  {
                                    v244 = v242;
                                  }

                                  else
                                  {
                                    v244 = v212 - m;
                                  }

                                  if (v244 < 2)
                                  {
                                    v245 = 1;
                                  }

                                  else
                                  {
                                    v245 = sub_2775CF45C(&v822, v244) + 1;
                                    v238 = *(v57 + 449);
                                  }

                                  *(v57 + 580 + 2 * v238++) = m;
                                  *(v57 + 449) = v238;
                                  if (v238 > 0x3Fu)
                                  {
                                    break;
                                  }
                                }
                              }

                              v246 = -1;
                              do
                              {
                                ++v246;
                              }

                              while (1 << v246 < v238);
                              v232 = v246;
                              *(v57 + 448) = v246;
                              v225 = *(v57 + 445);
                              v209 = *(v57 + 444);
                            }

                            *(v57 + 2 * v225 + 450) = v204;
                            *(v57 + 2 * v238 + 580) = v212;
                            if (v209 | v232)
                            {
                              v247 = sub_2775CF2C4(&v822, v232 + v209);
                              *(v57 + 710) = v247;
                              if (*(v57 + 449) * *(v57 + 445) <= v247)
                              {
                                goto LABEL_1095;
                              }

                              *(v57 + 441) = sub_2775CF2C4(&v822, 2) + 1;
                            }

                            else
                            {
                              *(v57 + 441) = 0;
                              *(v57 + 710) = 0;
                            }

                            *(v57 + 712) = sub_2775CF2C4(&v822, 8);
                            if (!v823)
                            {
                              v248 = __src;
                              if (__src < v826)
                              {
                                __src = __src + 1;
                                v250 = *v248;
                                v249 = 7;
                                LODWORD(v823) = 7;
                                v822 = v250 << 57;
                                LODWORD(v250) = (v250 >> 7) & 1;
                                goto LABEL_453;
                              }

                              HIDWORD(v823) = 1;
                            }

                            v251 = v822;
                            v249 = v823 - 1;
                            LODWORD(v823) = v823 - 1;
                            v822 *= 2;
                            v250 = v251 >> 63;
LABEL_453:
                            if (v250)
                            {
                              v252 = sub_2775CF350(&v822, 7);
                              v249 = v823;
                            }

                            else
                            {
                              v252 = 0;
                            }

                            *(v57 + 713) = v252;
                            if (v110[418])
                            {
LABEL_500:
                              if (!v249)
                              {
                                v274 = __src;
                                if (__src < v826)
                                {
                                  __src = __src + 1;
                                  v276 = *v274;
                                  v275 = 7;
                                  LODWORD(v823) = 7;
                                  v822 = v276 << 57;
                                  LODWORD(v276) = (v276 >> 7) & 1;
                                  goto LABEL_505;
                                }

                                HIDWORD(v823) = 1;
                              }

                              v277 = v822;
                              v275 = v249 - 1;
                              LODWORD(v823) = v275;
                              v822 *= 2;
                              v276 = v277 >> 63;
LABEL_505:
                              *(v57 + 718) = v276;
                              if (v276)
                              {
                                *(v57 + 719) = sub_2775CF2C4(&v822, 4);
                                v278 = sub_2775CF2C4(&v822, 4);
                                *(v57 + 720) = v278;
                                if (v110[420])
                                {
                                  v278 = sub_2775CF2C4(&v822, 4);
                                }

                                *(v57 + 721) = v278;
                                v275 = v823;
                              }

                              if (!v275)
                              {
                                v279 = __src;
                                if (__src < v826)
                                {
                                  __src = __src + 1;
                                  v282 = *v279;
                                  v280 = 7;
                                  LODWORD(v823) = 7;
                                  v281 = v282 << 57;
                                  v822 = v282 << 57;
                                  LODWORD(v282) = (v282 >> 7) & 1;
                                  goto LABEL_514;
                                }

                                HIDWORD(v823) = 1;
                              }

                              v283 = v822;
                              v280 = v275 - 1;
                              LODWORD(v823) = v275 - 1;
                              v281 = 2 * v822;
                              v822 *= 2;
                              v282 = v283 >> 63;
LABEL_514:
                              *(v57 + 722) = v282;
                              if (!v282)
                              {
                                v285 = 0;
                                *(v57 + 806) = 0;
                                *(v57 + 774) = 0u;
                                *(v57 + 790) = 0u;
                                *(v57 + 742) = 0u;
                                *(v57 + 758) = 0u;
                                *(v57 + 726) = 0u;
                                do
                                {
                                  *(v57 + 732 + v285) = -1;
                                  v285 += 10;
                                }

                                while (v285 != 80);
                                goto LABEL_596;
                              }

                              v284 = *(v57 + 271);
                              if (v284 == 7)
                              {
                                *(v57 + 723) = 1;
                                *(v57 + 725) = 1;
LABEL_538:
                                v296 = 0;
                                *(v57 + 806) = -256;
                                v297 = (v57 + 734);
                                while (1)
                                {
                                  if (!v280)
                                  {
                                    v298 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v299 = *v298;
                                      v300 = 7;
                                      LODWORD(v823) = 7;
                                      v822 = v299 << 57;
                                      if (((v299 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_542;
                                      }

                                      goto LABEL_545;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v300 = v280 - 1;
                                  LODWORD(v823) = v300;
                                  v822 = 2 * v281;
                                  if (v281 >= 0)
                                  {
LABEL_542:
                                    v301 = 0;
                                    goto LABEL_546;
                                  }

LABEL_545:
                                  v301 = sub_2775CF350(&v822, 9);
                                  *(v57 + 807) = v296;
                                  v300 = v823;
LABEL_546:
                                  *(v297 - 4) = v301;
                                  if (!v300)
                                  {
                                    v302 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v303 = *v302;
                                      v304 = 7;
                                      LODWORD(v823) = 7;
                                      v822 = v303 << 57;
                                      if (((v303 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_549;
                                      }

                                      goto LABEL_552;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v306 = v822;
                                  v304 = v300 - 1;
                                  LODWORD(v823) = v300 - 1;
                                  v822 *= 2;
                                  if (v306 >= 0)
                                  {
LABEL_549:
                                    v305 = 0;
                                    goto LABEL_553;
                                  }

LABEL_552:
                                  v305 = sub_2775CF350(&v822, 7);
                                  *(v57 + 807) = v296;
                                  v304 = v823;
LABEL_553:
                                  *(v297 - 6) = v305;
                                  if (!v304)
                                  {
                                    v307 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v308 = *v307;
                                      v309 = 7;
                                      LODWORD(v823) = 7;
                                      v822 = v308 << 57;
                                      if (((v308 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_556;
                                      }

                                      goto LABEL_559;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v311 = v822;
                                  v309 = v304 - 1;
                                  LODWORD(v823) = v309;
                                  v822 *= 2;
                                  if (v311 >= 0)
                                  {
LABEL_556:
                                    v310 = 0;
                                    goto LABEL_560;
                                  }

LABEL_559:
                                  v310 = sub_2775CF350(&v822, 7);
                                  *(v57 + 807) = v296;
                                  v309 = v823;
LABEL_560:
                                  *(v297 - 5) = v310;
                                  if (!v309)
                                  {
                                    v312 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v313 = *v312;
                                      v314 = 7;
                                      LODWORD(v823) = 7;
                                      v822 = v313 << 57;
                                      if (((v313 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_563;
                                      }

                                      goto LABEL_566;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v316 = v822;
                                  v314 = v309 - 1;
                                  LODWORD(v823) = v314;
                                  v822 *= 2;
                                  if (v316 >= 0)
                                  {
LABEL_563:
                                    v315 = 0;
                                    goto LABEL_567;
                                  }

LABEL_566:
                                  v315 = sub_2775CF350(&v822, 7);
                                  *(v57 + 807) = v296;
                                  v314 = v823;
LABEL_567:
                                  *(v297 - 4) = v315;
                                  if (!v314)
                                  {
                                    v317 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v318 = *v317;
                                      v319 = 7;
                                      LODWORD(v823) = 7;
                                      v822 = v318 << 57;
                                      if (((v318 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_570;
                                      }

                                      goto LABEL_573;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v321 = v822;
                                  v319 = v314 - 1;
                                  LODWORD(v823) = v319;
                                  v822 *= 2;
                                  if (v321 >= 0)
                                  {
LABEL_570:
                                    v320 = 0;
                                    goto LABEL_574;
                                  }

LABEL_573:
                                  v320 = sub_2775CF350(&v822, 7);
                                  *(v57 + 807) = v296;
                                  v319 = v823;
LABEL_574:
                                  *(v297 - 3) = v320;
                                  if (!v319)
                                  {
                                    v322 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v323 = *v322;
                                      v324 = 7;
                                      LODWORD(v823) = 7;
                                      v822 = v323 << 57;
                                      if (((v323 >> 7) & 1) == 0)
                                      {
                                        goto LABEL_577;
                                      }

                                      goto LABEL_580;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v326 = v822;
                                  v324 = v319 - 1;
                                  LODWORD(v823) = v324;
                                  v822 *= 2;
                                  if (v326 >= 0)
                                  {
LABEL_577:
                                    v325 = -1;
                                    goto LABEL_581;
                                  }

LABEL_580:
                                  v325 = sub_2775CF2C4(&v822, 3);
                                  *(v57 + 807) = v296;
                                  *(v57 + 806) = 1;
                                  v324 = v823;
LABEL_581:
                                  *(v297 - 2) = v325;
                                  if (!v324)
                                  {
                                    v327 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v330 = *v327;
                                      v328 = 7;
                                      LODWORD(v823) = 7;
                                      v329 = v330 << 57;
                                      v822 = v330 << 57;
                                      LODWORD(v330) = (v330 >> 7) & 1;
                                      goto LABEL_586;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  v331 = v822;
                                  v328 = v324 - 1;
                                  LODWORD(v823) = v328;
                                  v329 = 2 * v822;
                                  v822 *= 2;
                                  v330 = v331 >> 63;
LABEL_586:
                                  *(v297 - 1) = v330;
                                  if (v330)
                                  {
                                    *(v57 + 807) = v296;
                                    *(v57 + 806) = 1;
                                  }

                                  if (v328)
                                  {
                                    goto LABEL_592;
                                  }

                                  v332 = __src;
                                  if (__src >= v826)
                                  {
                                    HIDWORD(v823) = 1;
LABEL_592:
                                    v280 = v328 - 1;
                                    LODWORD(v823) = v328 - 1;
                                    v281 = 2 * v329;
                                    v822 = 2 * v329;
                                    v333 = v329 >> 63;
                                    goto LABEL_593;
                                  }

                                  __src = __src + 1;
                                  v333 = *v332;
                                  v280 = 7;
                                  LODWORD(v823) = 7;
                                  v281 = v333 << 57;
                                  v822 = v333 << 57;
                                  LODWORD(v333) = (v333 >> 7) & 1;
LABEL_593:
                                  *v297 = v333;
                                  if (v333)
                                  {
                                    *(v57 + 807) = v296;
                                    *(v57 + 806) = 1;
                                  }

                                  ++v296;
                                  v297 += 10;
                                  if (v296 == 8)
                                  {
                                    goto LABEL_596;
                                  }
                                }
                              }

                              if (!v280)
                              {
                                v286 = __src;
                                if (__src < v826)
                                {
                                  __src = __src + 1;
                                  v287 = *v286;
                                  v288 = 7;
                                  LODWORD(v823) = 7;
                                  v289 = v287 << 57;
                                  v822 = v287 << 57;
                                  v290 = (v287 >> 7) & 1;
                                  *(v57 + 723) = v290;
                                  if (!v290)
                                  {
                                    goto LABEL_529;
                                  }

                                  goto LABEL_531;
                                }

                                HIDWORD(v823) = 1;
                              }

                              v288 = v280 - 1;
                              LODWORD(v823) = v288;
                              v289 = 2 * v281;
                              v822 = 2 * v281;
                              v291 = v281 >> 63;
                              *(v57 + 723) = v291;
                              if (!v291)
                              {
                                goto LABEL_532;
                              }

                              if (!v288)
                              {
                                v292 = __src;
                                if (__src < v826)
                                {
                                  __src = __src + 1;
                                  v293 = *v292;
                                  v288 = 7;
                                  LODWORD(v823) = 7;
                                  v289 = v293 << 57;
                                  v822 = v293 << 57;
                                  v290 = (v293 >> 7) & 1;
LABEL_529:
                                  *(v57 + 724) = v290;
                                  goto LABEL_536;
                                }

                                HIDWORD(v823) = 1;
                              }

LABEL_531:
                              LODWORD(v823) = --v288;
                              v291 = v289 >> 63;
                              v289 *= 2;
                              v822 = v289;
LABEL_532:
                              *(v57 + 724) = v291;
                              if (!v288)
                              {
                                v294 = __src;
                                if (__src < v826)
                                {
                                  __src = __src + 1;
                                  v295 = *v294;
                                  v280 = 7;
                                  LODWORD(v823) = 7;
                                  v281 = v295 << 57;
                                  v822 = v295 << 57;
                                  LODWORD(v295) = (v295 >> 7) & 1;
LABEL_537:
                                  *(v57 + 725) = v295;
                                  if (v295)
                                  {
                                    goto LABEL_538;
                                  }

                                  v337 = *(v817 + 344 * *(v57 + v284 + 421) + 49944);
                                  if (!v337)
                                  {
                                    goto LABEL_1095;
                                  }

                                  v338 = *(v337 + 742);
                                  *(v57 + 726) = *(v337 + 726);
                                  *(v57 + 742) = v338;
                                  v339 = *(v337 + 758);
                                  v340 = *(v337 + 774);
                                  v341 = *(v337 + 790);
                                  *(v57 + 806) = *(v337 + 806);
                                  *(v57 + 774) = v340;
                                  *(v57 + 790) = v341;
                                  *(v57 + 758) = v339;
LABEL_596:
                                  if (!*(v57 + 712))
                                  {
                                    *(v57 + 824) = 0;
                                    v334 = v817;
                                    goto LABEL_611;
                                  }

                                  v334 = v817;
                                  if (!v280)
                                  {
                                    v335 = __src;
                                    if (__src < v826)
                                    {
                                      __src = __src + 1;
                                      v336 = *v335;
                                      LODWORD(v823) = 7;
                                      v822 = v336 << 57;
                                      LODWORD(v336) = (v336 >> 7) & 1;
                                      goto LABEL_605;
                                    }

                                    HIDWORD(v823) = 1;
                                  }

                                  LODWORD(v823) = v280 - 1;
                                  v822 = 2 * v281;
                                  v336 = v281 >> 63;
LABEL_605:
                                  *(v57 + 824) = v336;
                                  if (v336)
                                  {
                                    v342 = sub_2775CF2C4(&v822, 2);
                                    v343 = *(v57 + 824);
                                    *(v57 + 825) = v342;
                                    if (v343 && !*(v57 + 419))
                                    {
                                      if (!v823)
                                      {
                                        v344 = __src;
                                        if (__src < v826)
                                        {
                                          __src = __src + 1;
                                          v345 = *v344;
                                          LODWORD(v823) = 7;
                                          v822 = v345 << 57;
                                          LODWORD(v345) = (v345 >> 7) & 1;
                                          goto LABEL_833;
                                        }

                                        HIDWORD(v823) = 1;
                                      }

                                      v473 = v822;
                                      LODWORD(v823) = v823 - 1;
                                      v822 *= 2;
                                      v345 = v473 >> 63;
LABEL_833:
                                      *(v57 + 826) = v345;
                                      if (v345)
                                      {
                                        v474 = sub_2775CF2C4(&v822, 2);
                                        LODWORD(v346) = *(v57 + 826);
                                        *(v57 + 827) = v474;
                                        if (!v346)
                                        {
                                          goto LABEL_614;
                                        }

                                        if (!v823)
                                        {
                                          v475 = __src;
                                          if (__src < v826)
                                          {
                                            __src = __src + 1;
                                            v346 = *v475;
                                            LODWORD(v823) = 7;
                                            v822 = v346 << 57;
                                            LODWORD(v346) = (v346 >> 7) & 1;
                                            goto LABEL_614;
                                          }

                                          HIDWORD(v823) = 1;
                                        }

                                        v714 = v822;
                                        LODWORD(v823) = v823 - 1;
                                        v822 *= 2;
                                        v346 = v714 >> 63;
LABEL_614:
                                        *(v57 + 828) = v346;
                                        v347 = !*(v57 + 713) && !*(v57 + 714) && !*(v57 + 715) && !*(v57 + 716) && *(v57 + 717) == 0;
                                        *(v57 + 829) = 1;
                                        v348 = (v57 + 816);
                                        v349 = *(v57 + 722);
                                        v350 = *(v57 + 712);
                                        for (n = 726; n != 806; n += 10)
                                        {
                                          v352 = v350;
                                          if (v349)
                                          {
                                            v353 = *(v57 + n) + v350;
                                            if (v353 >= 0xFF)
                                            {
                                              v354 = -1;
                                            }

                                            else
                                            {
                                              v354 = *(v57 + n) + v350;
                                            }

                                            if (v353 >= 0)
                                            {
                                              v352 = v354;
                                            }

                                            else
                                            {
                                              v352 = 0;
                                            }
                                          }

                                          *v348 = v352;
                                          v355 = v352 == 0 && v347;
                                          *(v348 - 8) = v355;
                                          v356 = v355 & *(v57 + 829);
                                          *(v57 + 829) = v356;
                                          ++v348;
                                        }

                                        if (v356 || *(v57 + 419))
                                        {
                                          *(v57 + 846) = 0;
                                          *(v57 + 830) = 0;
                                          *(v57 + 834) = 257;
                                          *(v57 + 836) = 0xFF000000010000;
                                          *(v57 + 844) = -1;
LABEL_631:
                                          if (*(v57 + 829) || !*(v818 + 414) || *(v57 + 419))
                                          {
                                            *(v57 + 848) = 0;
                                            *(v57 + 857) = 0;
                                          }

                                          else
                                          {
                                            *(v57 + 847) = sub_2775CF2C4(&v822, 2) + 3;
                                            v358 = sub_2775CF2C4(&v822, 2);
                                            *(v57 + 848) = v358;
                                            if (v358 != 31)
                                            {
                                              v359 = 0;
                                              v360 = (v57 + 857);
                                              do
                                              {
                                                *(v360 - 8) = sub_2775CF2C4(&v822, 6);
                                                if (!*(v818 + 418))
                                                {
                                                  *v360 = sub_2775CF2C4(&v822, 6);
                                                }

                                                ++v359;
                                                ++v360;
                                              }

                                              while (v359 < 1 << *(v57 + 848));
                                            }
                                          }

                                          if (*(v57 + 829) && !*(v57 + 417) || !*(v818 + 415) || *(v57 + 419))
                                          {
                                            *(v57 + 868) = 0;
                                            *(v57 + 872) = 0;
                                            goto LABEL_638;
                                          }

                                          v363 = sub_2775CF2C4(&v822, 2);
                                          *(v57 + 868) = v363;
                                          if (*(v818 + 418))
                                          {
                                            v364 = v363;
                                            v365 = 0;
                                            *(v57 + 872) = 0;
                                          }

                                          else
                                          {
                                            *(v57 + 872) = sub_2775CF2C4(&v822, 2);
                                            v365 = sub_2775CF2C4(&v822, 2);
                                            v364 = *(v57 + 868);
                                          }

                                          *(v57 + 876) = v365;
                                          if (!v364 && !(*(v57 + 872) | v365))
                                          {
                                            *(v57 + 880) = 8;
                                            goto LABEL_638;
                                          }

                                          v438 = *(v818 + 392);
                                          v439 = v438 + 6;
                                          *(v57 + 880) = v438 + 6;
                                          if (!v823)
                                          {
                                            v440 = __src;
                                            if (__src < v826)
                                            {
                                              __src = __src + 1;
                                              v443 = *v440;
                                              v441 = 7;
                                              LODWORD(v823) = 7;
                                              v442 = v443 << 57;
                                              v822 = v443 << 57;
                                              LODWORD(v443) = (v443 >> 7) & 1;
LABEL_814:
                                              if (!v443 || (v439 = v438 + 7, *(v57 + 880) = v438 + 7, *(v818 + 392)))
                                              {
LABEL_1191:
                                                *(v57 + 881) = v439;
                                                if (!(*(v57 + 872) | v365) || *(v818 + 416) != 1 || *(v818 + 417) != 1)
                                                {
LABEL_638:
                                                  if (*(v57 + 829))
                                                  {
                                                    v357 = 0;
                                                    goto LABEL_670;
                                                  }

                                                  if (!v823)
                                                  {
                                                    v361 = __src;
                                                    if (__src < v826)
                                                    {
                                                      __src = __src + 1;
                                                      v362 = *v361;
                                                      LODWORD(v823) = 7;
                                                      v822 = v362 << 57;
                                                      LODWORD(v362) = (v362 >> 7) & 1;
                                                      goto LABEL_667;
                                                    }

                                                    HIDWORD(v823) = 1;
                                                  }

                                                  v374 = v822;
                                                  LODWORD(v823) = v823 - 1;
                                                  v822 *= 2;
                                                  v362 = v374 >> 63;
LABEL_667:
                                                  if (v362)
                                                  {
                                                    v357 = 2;
                                                  }

                                                  else
                                                  {
                                                    v357 = 1;
                                                  }

LABEL_670:
                                                  *(v57 + 884) = v357;
                                                  if ((*(v57 + 232) & 1) == 0)
                                                  {
                                                    LOBYTE(v375) = 0;
                                                    *(v57 + 888) = 0;
                                                    goto LABEL_712;
                                                  }

                                                  if (!v823)
                                                  {
                                                    v376 = __src;
                                                    if (__src < v826)
                                                    {
                                                      __src = __src + 1;
                                                      v379 = *v376;
                                                      v377 = 7;
                                                      LODWORD(v823) = 7;
                                                      v378 = v379 << 57;
                                                      v822 = v379 << 57;
                                                      LODWORD(v379) = (v379 >> 7) & 1;
                                                      goto LABEL_677;
                                                    }

                                                    HIDWORD(v823) = 1;
                                                  }

                                                  v380 = v822;
                                                  v377 = v823 - 1;
                                                  LODWORD(v823) = v823 - 1;
                                                  v378 = 2 * v822;
                                                  v822 *= 2;
                                                  v379 = v380 >> 63;
LABEL_677:
                                                  *(v57 + 888) = v379;
                                                  *(v57 + 889) = 0;
                                                  if (v379 && *(v818 + 399))
                                                  {
                                                    v381 = 0;
                                                    v382 = 0;
                                                    v383 = 0;
                                                    v384 = v334 + 49936;
                                                    v385 = v57 + 421;
                                                    v386 = -1;
                                                    v387 = -1;
                                                    v388 = v818;
                                                    do
                                                    {
                                                      v389 = *(v384 + 344 * *(v385 + v381) + 8);
                                                      if (!v389)
                                                      {
                                                        goto LABEL_1095;
                                                      }

                                                      v390 = *(v818 + 412);
                                                      if (v390)
                                                      {
                                                        v391 = *(v389 + 248);
                                                        v392 = 1 << (v390 - 1);
                                                        v393 = v392 - 1;
                                                        v394 = ((v392 - 1) & (v391 - *(v57 + 248))) - (v392 & (v391 - *(v57 + 248)));
                                                        if (v394 < 1)
                                                        {
                                                          if (v394 < 0 && (v387 == -1 || (v393 & (v391 - v387)) > (v392 & (v391 - v387))))
                                                          {
                                                            v387 = v391;
                                                            v383 = v381;
                                                          }
                                                        }

                                                        else if (v386 == -1 || (v393 & (v386 - v391)) > (v392 & (v386 - v391)))
                                                        {
                                                          v386 = v391;
                                                          v382 = v381;
                                                        }
                                                      }

                                                      ++v381;
                                                    }

                                                    while (v381 != 7);
                                                    if (v387 == -1 || v386 == -1)
                                                    {
                                                      if (v387 == -1)
                                                      {
                                                        goto LABEL_791;
                                                      }

                                                      v395 = 0;
                                                      v382 = 0;
                                                      v396 = 1 << (v390 - 1);
                                                      v397 = v396 - 1;
                                                      v398 = -1;
                                                      do
                                                      {
                                                        v399 = *(v384 + 344 * *(v385 + v395) + 8);
                                                        if (!v399)
                                                        {
                                                          goto LABEL_1095;
                                                        }

                                                        if (*(v818 + 412))
                                                        {
                                                          v400 = *(v399 + 248);
                                                          if ((v397 & (v400 - v387)) < (v396 & (v400 - v387)) && (v398 == -1 || (v397 & (v400 - v398)) > (v396 & (v400 - v398))))
                                                          {
                                                            v398 = v400;
                                                            v382 = v395;
                                                          }
                                                        }

                                                        ++v395;
                                                      }

                                                      while (v395 != 7);
                                                      if (v398 == -1)
                                                      {
LABEL_791:
                                                        LOBYTE(v375) = 0;
                                                        goto LABEL_713;
                                                      }
                                                    }

                                                    if (v383 >= v382)
                                                    {
                                                      v401 = v382;
                                                    }

                                                    else
                                                    {
                                                      v401 = v383;
                                                    }

                                                    *(v57 + 891) = v401;
                                                    if (v383 <= v382)
                                                    {
                                                      LOBYTE(v383) = v382;
                                                    }

                                                    *(v57 + 892) = v383;
                                                    *(v57 + 889) = 1;
                                                    if (!v377)
                                                    {
                                                      v402 = __src;
                                                      if (__src < v826)
                                                      {
                                                        __src = __src + 1;
                                                        v375 = *v402;
                                                        LODWORD(v823) = 7;
                                                        v822 = v375 << 57;
                                                        LODWORD(v375) = (v375 >> 7) & 1;
LABEL_713:
                                                        *(v57 + 890) = v375;
                                                        if (*(v57 + 266) || (*v815 & 1) == 0)
                                                        {
                                                          LOBYTE(v403) = 0;
                                                          goto LABEL_716;
                                                        }

                                                        LOBYTE(v403) = v388[397];
                                                        if (v403)
                                                        {
                                                          if (!v823)
                                                          {
                                                            v406 = __src;
                                                            if (__src < v826)
                                                            {
                                                              __src = __src + 1;
                                                              v403 = *v406;
                                                              LODWORD(v823) = 7;
                                                              v822 = v403 << 57;
                                                              LODWORD(v403) = (v403 >> 7) & 1;
                                                              goto LABEL_716;
                                                            }

                                                            HIDWORD(v823) = 1;
                                                          }

                                                          v472 = v822;
                                                          LODWORD(v823) = v823 - 1;
                                                          v822 *= 2;
                                                          v403 = v472 >> 63;
                                                        }

LABEL_716:
                                                        *(v57 + 893) = v403;
                                                        if (!v823)
                                                        {
                                                          v404 = __src;
                                                          if (__src < v826)
                                                          {
                                                            __src = __src + 1;
                                                            v405 = *v404;
                                                            LODWORD(v823) = 7;
                                                            v822 = v405 << 57;
                                                            LODWORD(v405) = (v405 >> 7) & 1;
LABEL_725:
                                                            *(v57 + 894) = v405;
                                                            v408 = (v57 + 896);
                                                            for (ii = 896; ii != 1148; ii += 36)
                                                            {
                                                              v410 = v57 + ii;
                                                              *v410 = xmmword_2775EF554;
                                                              *(v410 + 16) = *&dword_2775EF564;
                                                              *(v410 + 32) = 0;
                                                            }

                                                            if (*v815)
                                                            {
                                                              for (jj = 896; jj != 1148; jj += 36)
                                                              {
                                                                if (!v823)
                                                                {
                                                                  v412 = __src;
                                                                  if (__src < v826)
                                                                  {
                                                                    __src = __src + 1;
                                                                    v413 = *v412;
                                                                    v414 = 7;
                                                                    LODWORD(v823) = 7;
                                                                    v415 = v413 << 57;
                                                                    v822 = v413 << 57;
                                                                    if ((v413 >> 7))
                                                                    {
                                                                      goto LABEL_741;
                                                                    }

                                                                    goto LABEL_739;
                                                                  }

                                                                  HIDWORD(v823) = 1;
                                                                }

                                                                v416 = v822;
                                                                v414 = v823 - 1;
                                                                LODWORD(v823) = v823 - 1;
                                                                v415 = 2 * v822;
                                                                v822 *= 2;
                                                                if (v416 < 0)
                                                                {
                                                                  if (!v414)
                                                                  {
                                                                    v417 = __src;
                                                                    if (__src < v826)
                                                                    {
                                                                      __src = __src + 1;
                                                                      v418 = *v417;
                                                                      v419 = 7;
                                                                      LODWORD(v823) = 7;
                                                                      v420 = v418 << 57;
                                                                      v822 = v418 << 57;
                                                                      if (((v418 >> 7) & 1) == 0)
                                                                      {
LABEL_747:
                                                                        LODWORD(v823) = v419 - 1;
                                                                        v822 = 2 * v420;
                                                                        v423 = v420 >> 63;
                                                                        goto LABEL_748;
                                                                      }

LABEL_742:
                                                                      v421 = 2;
                                                                      goto LABEL_751;
                                                                    }

                                                                    HIDWORD(v823) = 1;
                                                                  }

LABEL_741:
                                                                  v419 = v414 - 1;
                                                                  LODWORD(v823) = v414 - 1;
                                                                  v420 = 2 * v415;
                                                                  v822 = 2 * v415;
                                                                  if (v415 < 0)
                                                                  {
                                                                    goto LABEL_742;
                                                                  }

                                                                  if (v419)
                                                                  {
                                                                    goto LABEL_747;
                                                                  }

                                                                  v422 = __src;
                                                                  if (__src >= v826)
                                                                  {
                                                                    HIDWORD(v823) = 1;
                                                                    goto LABEL_747;
                                                                  }

                                                                  __src = __src + 1;
                                                                  v423 = *v422;
                                                                  LODWORD(v823) = 7;
                                                                  v822 = v423 << 57;
                                                                  LODWORD(v423) = (v423 >> 7) & 1;
LABEL_748:
                                                                  if (v423)
                                                                  {
                                                                    v421 = 1;
                                                                  }

                                                                  else
                                                                  {
                                                                    v421 = 3;
                                                                  }

LABEL_751:
                                                                  *v408 = v421;
                                                                  v424 = *(v57 + 271);
                                                                  v425 = &xmmword_2775EF554;
                                                                  if (v424 != 7)
                                                                  {
                                                                    v426 = *(v817 + 49936 + 344 * *(v57 + 421 + v424) + 8);
                                                                    if (!v426)
                                                                    {
                                                                      goto LABEL_1095;
                                                                    }

                                                                    v425 = (v426 + jj);
                                                                  }

                                                                  if (v421 <= 1)
                                                                  {
                                                                    if (*(v57 + 428))
                                                                    {
                                                                      v427 = 9;
                                                                    }

                                                                    else
                                                                    {
                                                                      v427 = 8;
                                                                    }

                                                                    if (*(v57 + 428))
                                                                    {
                                                                      v430 = 13;
                                                                    }

                                                                    else
                                                                    {
                                                                      v430 = 14;
                                                                    }

                                                                    v428 = v408[4];
                                                                  }

                                                                  else
                                                                  {
                                                                    v427 = 12;
                                                                    v408[3] = 2 * sub_2775CF4C0(&v822, (v425[3] - 0x10000) >> 1, 12) + 0x10000;
                                                                    v428 = 2 * sub_2775CF4C0(&v822, v425[4] >> 1, 12);
                                                                    v408[4] = v428;
                                                                    if (*v408 == 3)
                                                                    {
                                                                      v408[5] = 2 * sub_2775CF4C0(&v822, v425[5] >> 1, 12);
                                                                      v429 = 2 * sub_2775CF4C0(&v822, (v425[6] - 0x10000) >> 1, 12) + 0x10000;
                                                                      v430 = 10;
LABEL_766:
                                                                      v408[6] = v429;
                                                                      v408[1] = sub_2775CF4C0(&v822, v425[1] >> v430, v427) << v430;
                                                                      v408[2] = sub_2775CF4C0(&v822, v425[2] >> v430, v427) << v430;
                                                                      goto LABEL_767;
                                                                    }

                                                                    v430 = 10;
                                                                  }

                                                                  v408[5] = -v428;
                                                                  v429 = v408[3];
                                                                  goto LABEL_766;
                                                                }

LABEL_739:
                                                                *v408 = 0;
LABEL_767:
                                                                v408 += 9;
                                                              }
                                                            }

                                                            if (!v388[421] || !*v804 && !*(v57 + 265))
                                                            {
                                                              *(v57 + 224) = 0;
                                                              goto LABEL_782;
                                                            }

                                                            if (!v823)
                                                            {
                                                              v431 = __src;
                                                              if (__src < v826)
                                                              {
                                                                __src = __src + 1;
                                                                v432 = *v431;
                                                                LODWORD(v823) = 7;
                                                                v822 = v432 << 57;
                                                                LODWORD(v432) = (v432 >> 7) & 1;
                                                                goto LABEL_777;
                                                              }

                                                              HIDWORD(v823) = 1;
                                                            }

                                                            v433 = v822;
                                                            LODWORD(v823) = v823 - 1;
                                                            v822 *= 2;
                                                            v432 = v433 >> 63;
LABEL_777:
                                                            *(v57 + 224) = v432;
                                                            if (v432)
                                                            {
                                                              v434 = sub_2775CF2C4(&v822, 16);
                                                              v435 = v434;
                                                              if (*v815 != 1)
                                                              {
                                                                *(v57 + 225) = 1;
                                                                goto LABEL_795;
                                                              }

                                                              if (!v823)
                                                              {
                                                                v436 = __src;
                                                                if (__src < v826)
                                                                {
                                                                  __src = __src + 1;
                                                                  v437 = *v436;
                                                                  LODWORD(v823) = 7;
                                                                  v822 = v437 << 57;
                                                                  LODWORD(v437) = (v437 >> 7) & 1;
LABEL_794:
                                                                  *(v57 + 225) = v437;
                                                                  if (v437)
                                                                  {
LABEL_795:
                                                                    *v57 = v434;
                                                                    LODWORD(v445) = sub_2775CF2C4(&v822, 4);
                                                                    *(v57 + 4) = v445;
                                                                    if (v445 > 14)
                                                                    {
                                                                      goto LABEL_1095;
                                                                    }

                                                                    if (v445 >= 1)
                                                                    {
                                                                      v446 = 0;
                                                                      v447 = (v57 + 9);
                                                                      do
                                                                      {
                                                                        v448 = sub_2775CF2C4(&v822, 8);
                                                                        *(v447 - 1) = v448;
                                                                        if (v446)
                                                                        {
                                                                          if (*(v447 - 3) >= v448)
                                                                          {
                                                                            goto LABEL_1095;
                                                                          }
                                                                        }

                                                                        *v447 = sub_2775CF2C4(&v822, 8);
                                                                        v447 += 2;
                                                                        ++v446;
                                                                        v445 = *(v57 + 4);
                                                                      }

                                                                      while (v446 < v445);
                                                                    }

                                                                    if (v388[418])
                                                                    {
                                                                      *(v57 + 36) = 0;
                                                                      v819 = (v57 + 36);
LABEL_841:
                                                                      *(v57 + 40) = 0;
LABEL_842:
                                                                      if (v388[416] != 1 || v388[417] != 1 || (*(v57 + 40) != 0) != (*(v57 + 44) == 0))
                                                                      {
                                                                        *(v57 + 88) = sub_2775CF2C4(&v822, 2) + 8;
                                                                        v477 = sub_2775CF2C4(&v822, 2);
                                                                        *(v57 + 92) = v477;
                                                                        v478 = 2 * (v477 + v477 * v477);
                                                                        if (*(v57 + 4) && v478 >= 1)
                                                                        {
                                                                          v479 = (v57 + 96);
                                                                          v480 = (2 * (v477 + v477 * v477));
                                                                          do
                                                                          {
                                                                            *v479++ = sub_2775CF2C4(&v822, 8) ^ 0x80;
                                                                            --v480;
                                                                          }

                                                                          while (v480);
                                                                        }

                                                                        v481 = 0;
                                                                        v482 = v57 + 40;
                                                                        v483 = v57 + 120;
                                                                        v484 = 1;
                                                                        do
                                                                        {
                                                                          v485 = v484;
                                                                          if (*(v482 + 4 * v481) || *v819)
                                                                          {
                                                                            v486 = *(v57 + 4);
                                                                            if (v486)
                                                                            {
                                                                              v487 = (v478 + 1);
                                                                            }

                                                                            else
                                                                            {
                                                                              v487 = v478;
                                                                            }

                                                                            if (v487 >= 1)
                                                                            {
                                                                              v488 = (v483 + 28 * v481);
                                                                              v489 = v487;
                                                                              do
                                                                              {
                                                                                *v488++ = sub_2775CF2C4(&v822, 8) ^ 0x80;
                                                                                --v489;
                                                                              }

                                                                              while (v489);
                                                                              v486 = *(v57 + 4);
                                                                            }

                                                                            if (!v486)
                                                                            {
                                                                              *(v483 + 28 * v481 + v487) = 0;
                                                                            }
                                                                          }

                                                                          v484 = 0;
                                                                          v481 = 1;
                                                                        }

                                                                        while ((v485 & 1) != 0);
                                                                        *(v57 + 176) = sub_2775CF2C4(&v822, 2) + 6;
                                                                        v490 = 0;
                                                                        *(v57 + 184) = sub_2775CF2C4(&v822, 2);
                                                                        v491 = 1;
                                                                        do
                                                                        {
                                                                          v492 = v491;
                                                                          if (*(v482 + 4 * v490))
                                                                          {
                                                                            *(v57 + 188 + 4 * v490) = sub_2775CF2C4(&v822, 8) - 128;
                                                                            *(v57 + 196 + 4 * v490) = sub_2775CF2C4(&v822, 8) - 128;
                                                                            *(v57 + 204 + 4 * v490) = sub_2775CF2C4(&v822, 9) - 256;
                                                                          }

                                                                          v491 = 0;
                                                                          v490 = 1;
                                                                        }

                                                                        while ((v492 & 1) != 0);
                                                                        v493 = v823;
                                                                        if (!v823)
                                                                        {
                                                                          v494 = __src;
                                                                          if (__src < v826)
                                                                          {
                                                                            __src = __src + 1;
                                                                            v495 = *v494;
                                                                            v496 = 7;
                                                                            LODWORD(v823) = 7;
                                                                            v497 = v495 << 57;
                                                                            v822 = v495 << 57;
                                                                            *(v57 + 212) = (v495 >> 7) & 1;
                                                                            goto LABEL_874;
                                                                          }

                                                                          HIDWORD(v823) = 1;
                                                                        }

                                                                        v498 = v822;
                                                                        v497 = 2 * v822;
                                                                        v822 *= 2;
                                                                        *(v57 + 212) = v498 >> 63;
                                                                        v496 = v493 - 1;
                                                                        LODWORD(v823) = v496;
                                                                        if (!v496)
                                                                        {
                                                                          v499 = __src;
                                                                          if (__src < v826)
                                                                          {
                                                                            __src = __src + 1;
                                                                            v500 = *v499;
                                                                            LODWORD(v823) = 7;
                                                                            v822 = v500 << 57;
                                                                            LODWORD(v500) = (v500 >> 7) & 1;
LABEL_875:
                                                                            *(v57 + 216) = v500;
                                                                            goto LABEL_876;
                                                                          }

                                                                          HIDWORD(v823) = 1;
                                                                        }

LABEL_874:
                                                                        LODWORD(v823) = v496 - 1;
                                                                        v822 = 2 * v497;
                                                                        v500 = v497 >> 63;
                                                                        goto LABEL_875;
                                                                      }

LABEL_1095:
                                                                      v3 = v817;
                                                                      sub_2775E9DFC(v817, "Error parsing frame header\n");
                                                                      *(v817 + 112) = 0;
                                                                      v2 = v806;
                                                                      v4 = v807;
                                                                      goto LABEL_1096;
                                                                    }

                                                                    if (!v823)
                                                                    {
                                                                      v449 = __src;
                                                                      if (__src < v826)
                                                                      {
                                                                        __src = __src + 1;
                                                                        v450 = *v449;
                                                                        LODWORD(v823) = 7;
                                                                        v822 = v450 << 57;
                                                                        LODWORD(v450) = (v450 >> 7) & 1;
LABEL_840:
                                                                        *(v57 + 36) = v450;
                                                                        v819 = (v57 + 36);
                                                                        if (!v450 && (v388[417] != 1 || v388[416] != 1 || v445))
                                                                        {
                                                                          v646 = 0;
                                                                          v647 = v57 + 40;
                                                                          v648 = 1;
                                                                          while (1)
                                                                          {
                                                                            v649 = v648;
                                                                            v650 = sub_2775CF2C4(&v822, 4);
                                                                            *(v647 + 4 * v646) = v650;
                                                                            if (v650 > 10)
                                                                            {
                                                                              goto LABEL_1095;
                                                                            }

                                                                            if (v650 >= 1)
                                                                            {
                                                                              v651 = 0;
                                                                              v652 = (v57 + 49 + 20 * v646);
                                                                              do
                                                                              {
                                                                                v653 = sub_2775CF2C4(&v822, 8);
                                                                                *(v652 - 1) = v653;
                                                                                if (v651)
                                                                                {
                                                                                  if (*(v652 - 3) >= v653)
                                                                                  {
                                                                                    goto LABEL_1095;
                                                                                  }
                                                                                }

                                                                                *v652 = sub_2775CF2C4(&v822, 8);
                                                                                v652 += 2;
                                                                              }

                                                                              while (++v651 < *(v647 + 4 * v646));
                                                                            }

                                                                            v648 = 0;
                                                                            v646 = 1;
                                                                            if ((v649 & 1) == 0)
                                                                            {
                                                                              goto LABEL_842;
                                                                            }
                                                                          }
                                                                        }

                                                                        goto LABEL_841;
                                                                      }

                                                                      HIDWORD(v823) = 1;
                                                                    }

                                                                    v476 = v822;
                                                                    LODWORD(v823) = v823 - 1;
                                                                    v822 *= 2;
                                                                    v450 = v476 >> 63;
                                                                    goto LABEL_840;
                                                                  }

                                                                  v451 = sub_2775CF2C4(&v822, 3);
                                                                  v452 = 421;
                                                                  while (v451 != *(v57 + v452))
                                                                  {
                                                                    if (++v452 == 428)
                                                                    {
                                                                      goto LABEL_1095;
                                                                    }
                                                                  }

                                                                  v453 = *(v817 + 344 * v451 + 49944);
                                                                  if (!v453)
                                                                  {
                                                                    goto LABEL_1095;
                                                                  }

                                                                  v454 = v453[1];
                                                                  *v57 = *v453;
                                                                  *(v57 + 16) = v454;
                                                                  v455 = v453[2];
                                                                  v456 = v453[3];
                                                                  v457 = v453[5];
                                                                  *(v57 + 64) = v453[4];
                                                                  *(v57 + 80) = v457;
                                                                  *(v57 + 32) = v455;
                                                                  *(v57 + 48) = v456;
                                                                  v458 = v453[6];
                                                                  v459 = v453[7];
                                                                  v460 = v453[9];
                                                                  *(v57 + 128) = v453[8];
                                                                  *(v57 + 144) = v460;
                                                                  *(v57 + 96) = v458;
                                                                  *(v57 + 112) = v459;
                                                                  v461 = v453[10];
                                                                  v462 = v453[11];
                                                                  v463 = v453[13];
                                                                  *(v57 + 192) = v453[12];
                                                                  *(v57 + 208) = v463;
                                                                  *(v57 + 160) = v461;
                                                                  *(v57 + 176) = v462;
                                                                  *v57 = v435;
LABEL_876:
                                                                  v3 = v817;
                                                                  if (*(v817 + 60) >= 1)
                                                                  {
                                                                    v501 = 0;
                                                                    v502 = 0;
                                                                    do
                                                                    {
                                                                      sub_2775A9300(*(v817 + 48) + v501);
                                                                      ++v502;
                                                                      v501 += 80;
                                                                    }

                                                                    while (v502 < *(v817 + 60));
                                                                  }

                                                                  *(v817 + 60) = 0;
                                                                  *(v817 + 64) = 0;
                                                                  v2 = v806;
                                                                  v4 = v807;
                                                                  v29 = v810;
                                                                  v8 = v813;
                                                                  if (v805 != 6 && (sub_2775AF9FC(&v822, *v813) & 0x80000000) != 0)
                                                                  {
                                                                    goto LABEL_988;
                                                                  }

                                                                  v503 = v807[4];
                                                                  if (v503)
                                                                  {
                                                                    v504 = *(v817 + 112);
                                                                    v505 = *(v504 + 240);
                                                                    v506 = *(v504 + 244);
                                                                    if (v506 * v505 > v503)
                                                                    {
                                                                      sub_2775E9DFC(v817, "Frame size %dx%d exceeds limit %u\n", v505, v506, v503);
                                                                      *(v817 + 112) = 0;
                                                                      return -34;
                                                                    }
                                                                  }

                                                                  if (v805 != 6)
                                                                  {
                                                                    goto LABEL_904;
                                                                  }

                                                                  v30 = *(v817 + 112);
                                                                  if (v30[251])
                                                                  {
LABEL_988:
                                                                    *(v817 + 112) = 0;
                                                                    goto LABEL_1096;
                                                                  }

                                                                  LODWORD(v823) = 0;
                                                                  v822 = 0;
                                                                  v31 = (v817 + 60);
                                                                  if (*(v817 + 56) > 0)
                                                                  {
                                                                    v32 = 0;
                                                                    goto LABEL_890;
                                                                  }

                                                                  v33 = 1;
                                                                  goto LABEL_888;
                                                                }

                                                                HIDWORD(v823) = 1;
                                                              }

                                                              v444 = v822;
                                                              LODWORD(v823) = v823 - 1;
                                                              v822 *= 2;
                                                              v437 = v444 >> 63;
                                                              goto LABEL_794;
                                                            }

LABEL_782:
                                                            *(v57 + 192) = 0u;
                                                            *(v57 + 208) = 0u;
                                                            *(v57 + 160) = 0u;
                                                            *(v57 + 176) = 0u;
                                                            *(v57 + 128) = 0u;
                                                            *(v57 + 144) = 0u;
                                                            *(v57 + 96) = 0u;
                                                            *(v57 + 112) = 0u;
                                                            *(v57 + 64) = 0u;
                                                            *(v57 + 80) = 0u;
                                                            *(v57 + 32) = 0u;
                                                            *(v57 + 48) = 0u;
                                                            *v57 = 0u;
                                                            *(v57 + 16) = 0u;
                                                            goto LABEL_876;
                                                          }

                                                          HIDWORD(v823) = 1;
                                                        }

                                                        v407 = v822;
                                                        LODWORD(v823) = v823 - 1;
                                                        v822 *= 2;
                                                        v405 = v407 >> 63;
                                                        goto LABEL_725;
                                                      }

                                                      HIDWORD(v823) = 1;
                                                    }

                                                    LODWORD(v823) = v377 - 1;
                                                    v822 = 2 * v378;
                                                    v375 = v378 >> 63;
                                                    goto LABEL_713;
                                                  }

                                                  LOBYTE(v375) = 0;
LABEL_712:
                                                  v388 = v818;
                                                  goto LABEL_713;
                                                }

                                                if (!v441)
                                                {
                                                  v715 = __src;
                                                  if (__src < v826)
                                                  {
                                                    __src = __src + 1;
                                                    v716 = *v715;
                                                    LODWORD(v823) = 7;
                                                    v822 = v716 << 57;
                                                    LODWORD(v716) = v716 >> 7;
LABEL_1226:
                                                    *(v57 + 881) = v716 + v439;
                                                    goto LABEL_638;
                                                  }

                                                  HIDWORD(v823) = 1;
                                                }

                                                LODWORD(v823) = v441 - 1;
                                                v822 = 2 * v442;
                                                v716 = v442 >> 63;
                                                goto LABEL_1226;
                                              }

                                              if (!v441)
                                              {
                                                v465 = __src;
                                                if (__src < v826)
                                                {
                                                  __src = __src + 1;
                                                  v467 = *v465;
                                                  v441 = 7;
                                                  LODWORD(v823) = 7;
                                                  v466 = v467 << 57;
                                                  v822 = v467 << 57;
                                                  LODWORD(v467) = (v467 >> 7) & 1;
LABEL_1190:
                                                  v439 += v467;
                                                  *(v57 + 880) = v439;
                                                  v442 = v466;
                                                  goto LABEL_1191;
                                                }

                                                HIDWORD(v823) = 1;
                                              }

                                              LODWORD(v823) = --v441;
                                              v466 = 2 * v442;
                                              v822 = 2 * v442;
                                              v467 = v442 >> 63;
                                              goto LABEL_1190;
                                            }

                                            HIDWORD(v823) = 1;
                                          }

                                          v464 = v822;
                                          v441 = v823 - 1;
                                          LODWORD(v823) = v823 - 1;
                                          v442 = 2 * v822;
                                          v822 *= 2;
                                          v443 = v464 >> 63;
                                          goto LABEL_814;
                                        }

                                        *(v57 + 830) = sub_2775CF2C4(&v822, 6);
                                        v366 = sub_2775CF2C4(&v822, 6);
                                        *(v57 + 831) = v366;
                                        if (!*(v818 + 418) && (*(v57 + 830) || v366))
                                        {
                                          *(v57 + 832) = sub_2775CF2C4(&v822, 6);
                                          *(v57 + 833) = sub_2775CF2C4(&v822, 6);
                                        }

                                        *(v57 + 846) = sub_2775CF2C4(&v822, 3);
                                        v367 = *(v57 + 271);
                                        if (v367 == 7)
                                        {
                                          *(v57 + 836) = 0xFF000000010000;
                                          *(v57 + 844) = -1;
                                        }

                                        else
                                        {
                                          v368 = *(v334 + 344 * *(v57 + v367 + 421) + 49944);
                                          if (!v368)
                                          {
                                            goto LABEL_1095;
                                          }

                                          v369 = *(v368 + 836);
                                          *(v57 + 844) = *(v368 + 844);
                                          *(v57 + 836) = v369;
                                          v334 = v817;
                                        }

                                        if (!v823)
                                        {
                                          v370 = __src;
                                          if (__src < v826)
                                          {
                                            __src = __src + 1;
                                            v371 = *v370;
                                            v372 = 7;
                                            LODWORD(v823) = 7;
                                            v373 = v371 << 57;
                                            v822 = v371 << 57;
                                            LODWORD(v371) = (v371 >> 7) & 1;
                                            *(v57 + 834) = v371;
                                            if (!v371)
                                            {
                                              goto LABEL_631;
                                            }

                                            goto LABEL_1114;
                                          }

                                          HIDWORD(v823) = 1;
                                        }

                                        v468 = v822;
                                        v372 = v823 - 1;
                                        LODWORD(v823) = v823 - 1;
                                        v373 = 2 * v822;
                                        v822 *= 2;
                                        v468 >>= 63;
                                        *(v57 + 834) = v468;
                                        if (!v468)
                                        {
                                          goto LABEL_631;
                                        }

                                        if (!v372)
                                        {
                                          v469 = __src;
                                          if (__src < v826)
                                          {
                                            __src = __src + 1;
                                            v470 = *v469;
                                            LODWORD(v823) = 7;
                                            v822 = v470 << 57;
                                            LODWORD(v470) = (v470 >> 7) & 1;
LABEL_1115:
                                            *(v57 + 835) = v470;
                                            if (!v470)
                                            {
                                              goto LABEL_631;
                                            }

                                            v659 = 0;
                                            while (1)
                                            {
                                              if (v823)
                                              {
                                                goto LABEL_1121;
                                              }

                                              v660 = __src;
                                              if (__src >= v826)
                                              {
                                                break;
                                              }

                                              __src = __src + 1;
                                              v661 = *v660;
                                              LODWORD(v823) = 7;
                                              v822 = v661 << 57;
                                              LODWORD(v661) = (v661 >> 7) & 1;
LABEL_1122:
                                              if (v661)
                                              {
                                                *(v57 + 838 + v659) = sub_2775CF350(&v822, 7);
                                              }

                                              if (++v659 == 8)
                                              {
                                                v663 = 0;
                                                v664 = 1;
                                                while (1)
                                                {
                                                  v665 = v664;
                                                  if (v823)
                                                  {
                                                    goto LABEL_1130;
                                                  }

                                                  v666 = __src;
                                                  if (__src >= v826)
                                                  {
                                                    break;
                                                  }

                                                  __src = __src + 1;
                                                  v667 = *v666;
                                                  LODWORD(v823) = 7;
                                                  v822 = v667 << 57;
                                                  LODWORD(v667) = (v667 >> 7) & 1;
LABEL_1131:
                                                  if (v667)
                                                  {
                                                    *(v57 + 836 + v663) = sub_2775CF350(&v822, 7);
                                                  }

                                                  v664 = 0;
                                                  v663 = 1;
                                                  if ((v665 & 1) == 0)
                                                  {
                                                    goto LABEL_631;
                                                  }
                                                }

                                                HIDWORD(v823) = 1;
LABEL_1130:
                                                v668 = v822;
                                                LODWORD(v823) = v823 - 1;
                                                v822 *= 2;
                                                v667 = v668 >> 63;
                                                goto LABEL_1131;
                                              }
                                            }

                                            HIDWORD(v823) = 1;
LABEL_1121:
                                            v662 = v822;
                                            LODWORD(v823) = v823 - 1;
                                            v822 *= 2;
                                            v661 = v662 >> 63;
                                            goto LABEL_1122;
                                          }

                                          HIDWORD(v823) = 1;
                                        }

LABEL_1114:
                                        LODWORD(v823) = v372 - 1;
                                        v822 = 2 * v373;
                                        v470 = v373 >> 63;
                                        goto LABEL_1115;
                                      }

LABEL_613:
                                      LOBYTE(v346) = 0;
                                      *(v57 + 827) = 0;
                                      goto LABEL_614;
                                    }

LABEL_612:
                                    *(v57 + 826) = 0;
                                    goto LABEL_613;
                                  }

LABEL_611:
                                  *(v57 + 825) = 0;
                                  goto LABEL_612;
                                }

                                HIDWORD(v823) = 1;
                              }

LABEL_536:
                              v280 = v288 - 1;
                              LODWORD(v823) = v280;
                              v281 = 2 * v289;
                              v822 = 2 * v289;
                              v295 = v289 >> 63;
                              goto LABEL_537;
                            }

                            if (!v110[420])
                            {
                              v255 = 1;
                              goto LABEL_465;
                            }

                            if (!v249)
                            {
                              v253 = __src;
                              if (__src < v826)
                              {
                                __src = __src + 1;
                                v254 = *v253;
                                v249 = 7;
                                LODWORD(v823) = 7;
                                v822 = v254 << 57;
                                LODWORD(v254) = (v254 >> 7) & 1;
LABEL_464:
                                v255 = v254 == 0;
LABEL_465:
                                if (!v249)
                                {
                                  v257 = __src;
                                  if (__src < v826)
                                  {
                                    __src = __src + 1;
                                    v259 = *v257;
                                    v258 = 7;
                                    LODWORD(v823) = 7;
                                    v822 = v259 << 57;
                                    LODWORD(v259) = (v259 >> 7) & 1;
                                    goto LABEL_470;
                                  }

                                  HIDWORD(v823) = 1;
                                }

                                v260 = v822;
                                v258 = v249 - 1;
                                LODWORD(v823) = v258;
                                v822 *= 2;
                                v259 = v260 >> 63;
LABEL_470:
                                if (v259)
                                {
                                  v261 = sub_2775CF350(&v822, 7);
                                  v258 = v823;
                                }

                                else
                                {
                                  v261 = 0;
                                }

                                *(v57 + 714) = v261;
                                if (!v258)
                                {
                                  v262 = __src;
                                  if (__src < v826)
                                  {
                                    __src = __src + 1;
                                    v263 = *v262;
                                    LODWORD(v823) = 7;
                                    v822 = v263 << 57;
                                    LODWORD(v263) = (v263 >> 7) & 1;
                                    goto LABEL_478;
                                  }

                                  HIDWORD(v823) = 1;
                                }

                                v264 = v822;
                                LODWORD(v823) = v258 - 1;
                                v822 *= 2;
                                v263 = v264 >> 63;
LABEL_478:
                                if (v263)
                                {
                                  v265 = sub_2775CF350(&v822, 7);
                                }

                                else
                                {
                                  v265 = 0;
                                }

                                *(v57 + 715) = v265;
                                if (v255)
                                {
                                  *(v57 + 716) = *(v57 + 714);
LABEL_499:
                                  *(v57 + 717) = v265;
                                  v249 = v823;
                                  goto LABEL_500;
                                }

                                if (!v823)
                                {
                                  v266 = __src;
                                  if (__src < v826)
                                  {
                                    __src = __src + 1;
                                    v268 = *v266;
                                    v267 = 7;
                                    LODWORD(v823) = 7;
                                    v822 = v268 << 57;
                                    LODWORD(v268) = (v268 >> 7) & 1;
                                    goto LABEL_488;
                                  }

                                  HIDWORD(v823) = 1;
                                }

                                v269 = v822;
                                v267 = v823 - 1;
                                LODWORD(v823) = v823 - 1;
                                v822 *= 2;
                                v268 = v269 >> 63;
LABEL_488:
                                if (v268)
                                {
                                  v270 = sub_2775CF350(&v822, 7);
                                  v267 = v823;
                                }

                                else
                                {
                                  v270 = 0;
                                }

                                *(v57 + 716) = v270;
                                if (!v267)
                                {
                                  v271 = __src;
                                  if (__src < v826)
                                  {
                                    __src = __src + 1;
                                    v272 = *v271;
                                    LODWORD(v823) = 7;
                                    v822 = v272 << 57;
                                    LODWORD(v272) = (v272 >> 7) & 1;
                                    goto LABEL_496;
                                  }

                                  HIDWORD(v823) = 1;
                                }

                                v273 = v822;
                                LODWORD(v823) = v267 - 1;
                                v822 *= 2;
                                v272 = v273 >> 63;
LABEL_496:
                                if (v272)
                                {
                                  v265 = sub_2775CF350(&v822, 7);
                                }

                                else
                                {
                                  v265 = 0;
                                }

                                goto LABEL_499;
                              }

                              HIDWORD(v823) = 1;
                            }

                            v256 = v822;
                            LODWORD(v823) = --v249;
                            v822 *= 2;
                            v254 = v256 >> 63;
                            goto LABEL_464;
                          }

                          HIDWORD(v823) = 1;
                        }

                        v200 = v822;
                        v197 = v190 - 1;
                        LODWORD(v823) = v190 - 1;
                        v198 = 2 * v822;
                        v822 *= 2;
                        v199 = v200 >> 63;
                        goto LABEL_360;
                      }

                      HIDWORD(v823) = 1;
                    }

                    v194 = v822;
                    v190 = v823 - 1;
                    LODWORD(v823) = v823 - 1;
                    v822 *= 2;
                    v193 = v194 >> 63;
                    goto LABEL_354;
                  }

                  HIDWORD(v823) = 1;
                }

                v188 = v822;
                v185 = v180 - 1;
                LODWORD(v823) = v185;
                v186 = 2 * v822;
                v822 *= 2;
                v187 = v188 >> 63;
                goto LABEL_336;
              }

LABEL_219:
              v127 = (v57 + 420);
              *(v57 + 420) = 0;
              goto LABEL_303;
            }

            HIDWORD(v823) = 1;
          }

          v113 = v822;
          LODWORD(v823) = v823 - 1;
          v822 *= 2;
          v112 = v113 >> 63;
          goto LABEL_190;
        }

LABEL_140:
        LODWORD(v823) = --v62;
        v65 = v63 >> 63;
        v63 *= 2;
        v822 = v63;
        goto LABEL_141;
      }

      HIDWORD(v823) = 1;
    }

    v65 = v822;
    v62 = v823 - 1;
    LODWORD(v823) = v823 - 1;
    v63 = 2 * v822;
    v822 *= 2;
    v64 = (v57 + 267);
    *(v57 + 267) = v65 < 0;
    LODWORD(v65) = *(v818 + 404);
    if (v65 != 2)
    {
      goto LABEL_141;
    }

    if (!v62)
    {
      v72 = __src;
      if (__src < v826)
      {
        __src = __src + 1;
        v65 = *v72;
        v62 = 7;
        LODWORD(v823) = 7;
        v63 = v65 << 57;
        v822 = v65 << 57;
        LODWORD(v65) = (v65 >> 7) & 1;
        goto LABEL_141;
      }

      HIDWORD(v823) = 1;
    }

    goto LABEL_140;
  }

  if (v9 > 6)
  {
    if (v9 != 7)
    {
      if (v9 == 15)
      {
        goto LABEL_904;
      }

      goto LABEL_46;
    }

    if (*(v3 + 112))
    {
      goto LABEL_904;
    }

    goto LABEL_68;
  }

  if (v9 != 5)
  {
    goto LABEL_68;
  }

  v51 = sub_2775CF3E4(&v822);
  if (HIDWORD(v823))
  {
    goto LABEL_1096;
  }

  if (v51 <= 2)
  {
    if (v51 == 1)
    {
      sub_2775DA114(4);
      block[0] = v74;
      if (v74)
      {
        v75 = v74;
        v76 = *v74;
        *v76 = sub_2775CF2C4(&v822, 16);
        v76[1] = sub_2775CF2C4(&v822, 16);
        if ((sub_2775AF9FC(&v822, *v8) & 0x80000000) == 0)
        {
          sub_2775DA200((v3 + 120));
          *(v3 + 120) = v75;
          *(v3 + 128) = v76;
          goto LABEL_904;
        }

LABEL_154:
        sub_2775DA200(block);
        v82 = 2;
LABEL_155:
        if (v82 == 2)
        {
          goto LABEL_1096;
        }

        return -12;
      }
    }

    else
    {
      if (v51 != 2)
      {
        goto LABEL_1183;
      }

      sub_2775DA114(24);
      block[0] = v68;
      if (v68)
      {
        v69 = v68;
        v70 = 0;
        v71 = *v68;
        do
        {
          *(v71 + v70) = sub_2775CF2C4(&v822, 16);
          *(v71 + v70 + 2) = sub_2775CF2C4(&v822, 16);
          v70 += 4;
        }

        while (v70 != 12);
        *(v71 + 12) = sub_2775CF2C4(&v822, 16);
        *(v71 + 14) = sub_2775CF2C4(&v822, 16);
        *(v71 + 16) = sub_2775CF2C4(&v822, 32);
        *(v71 + 20) = sub_2775CF2C4(&v822, 32);
        if ((sub_2775AF9FC(&v822, *v8) & 0x80000000) == 0)
        {
          sub_2775DA200((v3 + 136));
          *(v3 + 136) = v69;
          *(v3 + 144) = v71;
          goto LABEL_904;
        }

        goto LABEL_154;
      }
    }

    v82 = 1;
    goto LABEL_155;
  }

  if (v51 == 3)
  {
    goto LABEL_904;
  }

  if (v51 != 4)
  {
    if (v51 == 5)
    {
      goto LABEL_904;
    }

LABEL_1183:
    sub_2775E9DFC(v3, "Unknown Metadata OBU type %d\n");
    goto LABEL_904;
  }

  v77 = v826 - __src;
  if (v826 - __src >= 1)
  {
    while (!*(__src + v77 - 1))
    {
      v144 = v77-- <= 1;
      if (v144)
      {
        v77 = 0;
        break;
      }
    }
  }

  v78 = sub_2775CF2C4(&v822, 8);
  v79 = v78;
  if (v78 == 255)
  {
    v80 = sub_2775CF2C4(&v822, 8);
    v81 = v77 - 3;
  }

  else
  {
    v80 = 0;
    v81 = v77 - 2;
  }

  if (v81 >= 1 && *(__src + v81) == 128)
  {
    v93 = *(v3 + 168);
    if (v93 > 89478484)
    {
      goto LABEL_1096;
    }

    v94 = malloc_type_realloc(*(v3 + 160), 24 * v93 + 24, 0x10100400AE50DADuLL);
    if (!v94)
    {
      goto LABEL_1096;
    }

    *(v3 + 160) = v94;
    v95 = &v94[24 * *(v3 + 168)];
    *v95 = 0;
    *(v95 + 1) = 0;
    *(v95 + 2) = 0;
    if (*(v3 + 168))
    {
      atomic_load((*(v3 + 152) + 16));
      v97 = *(v3 + 152);
      v96 = *(v3 + 160);
      v98 = *(v97 + 32);
      *(v97 + 8) = v96;
    }

    else
    {
      v98 = malloc_type_malloc(0x38uLL, 0x10E004079E7A845uLL);
      if (!v98)
      {
        goto LABEL_1096;
      }

      v103 = *(v3 + 160);
      v98[2] = 0;
      v98[3] = v103;
      v98[4] = 1;
      v98[5] = sub_2775DDBC0;
      v98[6] = v98;
      *(v3 + 152) = v98 + 2;
      v96 = *(v3 + 160);
    }

    *v98 = v96;
    v104 = *(v3 + 168);
    v98[1] = v104 + 1;
    v105 = v96 + 24 * v104;
    v106 = malloc_type_malloc(v81, 0x127FE049uLL);
    *(v105 + 16) = v106;
    if (!v106)
    {
      goto LABEL_1096;
    }

    *v105 = v79;
    *(v105 + 1) = v80;
    *(v105 + 8) = v81;
    memcpy(v106, __src, v81);
    ++*(v3 + 168);
  }

  else
  {
    sub_2775E9DFC(v3, "Malformed ITU-T T.35 metadata message format\n");
  }

LABEL_904:
  if (!*(v3 + 88))
  {
    return v826 - v825;
  }

  v535 = *(v3 + 112);
  if (!v535)
  {
    return v826 - v825;
  }

  if (!*(v535 + 251))
  {
    if (*(v3 + 64) != *(v535 + 449) * *(v535 + 445))
    {
      return v826 - v825;
    }

    v540 = *(v535 + 232);
    if (v540 != 3)
    {
      if (v540 == 2)
      {
        v572 = v4[8];
        if (v572 > 2)
        {
          goto LABEL_980;
        }

        v542 = v572 == 1;
LABEL_966:
        if (v542 && !*(v535 + 404))
        {
LABEL_980:
          v580 = 0;
          v581 = v29 + 2;
          do
          {
            if ((*(*(v3 + 112) + 404) >> v580))
            {
              sub_2775DE04C(v581);
              v581[36] = 0;
              v581[1] = *(v3 + 112);
              *v581 = *(v3 + 88);
              v582 = *(v3 + 104);
              v581[23] = v582;
              v581[24] = *(v3 + 80);
              atomic_fetch_add_explicit((v582 + 16), 1u, memory_order_relaxed);
              atomic_fetch_add_explicit((*(v3 + 80) + 16), 1u, memory_order_relaxed);
            }

            ++v580;
            v581 += 43;
          }

          while (v580 != 8);
          sub_2775DA200((v3 + 104));
LABEL_985:
          *(v3 + 112) = 0;
          *(v3 + 64) = 0;
          return v826 - v825;
        }

LABEL_969:
        if (!*(v3 + 60))
        {
          goto LABEL_1096;
        }

        if (*(v3 + 8) < 2u)
        {
          v576 = 0;
          v575 = *v3;
          goto LABEL_1003;
        }

        pthread_mutex_lock((v3 + 896));
        v573 = *(v3 + 864);
        if (v573 + 1 == *(v3 + 8))
        {
          v574 = 0;
        }

        else
        {
          v574 = v573 + 1;
        }

        *(v3 + 864) = v574;
        v575 = *v3 + 5712 * v573;
        if (*(v575 + 3124) >= 1)
        {
          do
          {
            pthread_cond_wait((v575 + 5424), (v3 + 896));
          }

          while (*(v575 + 3124) > 0);
        }

        v576 = *(v3 + 856) + 296 * v573;
        if (*(v576 + 16) || (v577 = atomic_load((v575 + 5564))) != 0)
        {
          v578 = (v3 + 1008);
          v579 = atomic_load((v3 + 1008));
          if (v579 + 1 >= *(v3 + 8))
          {
            atomic_store(0, v578);
          }

          else
          {
            atomic_fetch_add(v578, 1u);
          }

          atomic_compare_exchange_strong((v3 + 1016), &v579, 0xFFFFFFFF);
          v583 = *(v3 + 1012);
          if (v583)
          {
            if (v583 < *(v3 + 8))
            {
              *(v3 + 1012) = v583 - 1;
            }
          }
        }

        v584 = *(v575 + 5556);
        if (v584)
        {
          *(v575 + 5556) = 0;
          v4[25] = v584;
          sub_2775DA200((v4 + 23));
          v585 = *(v576 + 72);
          v586 = *(v576 + 88);
          *(v3 + 63136) = *(v576 + 104);
          *(v3 + 63120) = v586;
          *(v3 + 63104) = v585;
          v587 = *(v4 + 23);
          if (v587)
          {
            atomic_fetch_add_explicit((v587 + 16), 1u, memory_order_relaxed);
          }
        }

        else
        {
          if (!*(v576 + 16))
          {
            goto LABEL_1003;
          }

          if ((*(v576 + 272) || v4[6]) && *(*(v576 + 288) + 4) != -2)
          {
            sub_2775DDFB8((v3 + 248), v576);
            *(v3 + 520) = *(v576 + 272);
            *(v3 + 536) = *(v576 + 288);
            v588 = *(v576 + 280);
            *(v3 + 528) = v588;
            v4[11] |= v588 & 3;
          }
        }

        sub_2775DE04C(v576);
        *(v576 + 288) = 0;
LABEL_1003:
        v589 = *(v3 + 80);
        *v575 = v589;
        atomic_fetch_add_explicit((v589 + 16), 1u, memory_order_relaxed);
        *(v575 + 16) = *(v3 + 104);
        v590 = (v575 + 16);
        *(v3 + 104) = 0;
        *(v3 + 112) = 0;
        v591 = *(*(v575 + 8) + 32);
        v592 = (v3 + 3368 * *(*(v575 + 8) + 32) + 52888);
        *(v575 + 3280) = v592;
        v593 = 2 * v591 + 8;
        v594 = v592 + 8;
        if (v592[8])
        {
          goto LABEL_1004;
        }

        if ((v591 - 1) >= 2)
        {
          if (v591)
          {
            sub_2775E9DFC(v3, "Compiled without support for %d-bit decoding\n", 2 * v591 + 8);
            v642 = -42;
            goto LABEL_1286;
          }

          v592[412] = sub_2775D0028;
          v592[413] = sub_2775CFFF4;
          v592[414] = sub_2775CFFBC;
          v592[415] = sub_2775CF850;
          v717 = dword_280B9A7E0;
          if (dword_280B9A7E0)
          {
            v592[412] = sub_277575298;
            v592[413] = sub_2775CF778;
            v592[414] = sub_2775CF6A0;
            v592[415] = sub_2775CF5C8;
          }

          sub_2775E984C(v594);
          sub_2775E6B94(v592 + 85);
          v592[408] = sub_277594424;
          v592[409] = sub_277594340;
          v592[410] = sub_277594274;
          v592[411] = sub_2775939E0;
          if (v717)
          {
            v592[408] = sub_27754D554;
            v592[409] = sub_27754D440;
            v592[410] = sub_27754D768;
            v592[411] = sub_27754D678;
            v592[416] = sub_27754EEB4;
            v592[417] = sub_27754F438;
            v592[418] = sub_2775AD864;
            v592[419] = sub_2775AD1E8;
            v718 = sub_2775AC39C;
          }

          else
          {
            v592[417] = sub_2775AEF3C;
            v592[416] = sub_2775AEF3C;
            v592[418] = sub_2775AEDF0;
            v592[419] = sub_2775AECA4;
            v718 = sub_2775ADF3C;
          }

          v592[420] = v718;
          sub_2775E8034(v592 + 32);
          sub_2775EC764(v592);
LABEL_1004:
          if (*(*(v575 + 8) + 32))
          {
            v595 = sub_2775D54C4;
          }

          else
          {
            v595 = sub_2775A4950;
          }

          if (*(*(v575 + 8) + 32))
          {
            v596 = sub_2775D3DD4;
          }

          else
          {
            v596 = sub_2775A32F0;
          }

          if (*(*(v575 + 8) + 32))
          {
            v597 = sub_2775D9614;
          }

          else
          {
            v597 = sub_2775A894C;
          }

          if (*(*(v575 + 8) + 32))
          {
            v598 = sub_2775D7E5C;
          }

          else
          {
            v598 = sub_2775A7250;
          }

          if (*(*(v575 + 8) + 32))
          {
            v599 = sub_2775D8774;
          }

          else
          {
            v599 = sub_2775A7B60;
          }

          if (*(*(v575 + 8) + 32))
          {
            v600 = sub_2775D9044;
          }

          else
          {
            v600 = sub_2775A83D4;
          }

          if (*(*(v575 + 8) + 32))
          {
            v601 = sub_2775D91D0;
          }

          else
          {
            v601 = sub_2775A8554;
          }

          if (*(*(v575 + 8) + 32))
          {
            v602 = sub_2775D93F8;
          }

          else
          {
            v602 = sub_2775A8750;
          }

          if (*(*(v575 + 8) + 32))
          {
            v603 = sub_2775D96AC;
          }

          else
          {
            v603 = sub_2775A89E4;
          }

          if (*(*(v575 + 8) + 32))
          {
            v604 = sub_2775D10F8;
          }

          else
          {
            v604 = sub_2775A05A0;
          }

          if (*(*(v575 + 8) + 32))
          {
            v605 = sub_2775D97E4;
          }

          else
          {
            v605 = sub_2775A8B08;
          }

          if (*(*(v575 + 8) + 32))
          {
            v606 = sub_2775D9894;
          }

          else
          {
            v606 = sub_2775A8BB8;
          }

          if (*(*(v575 + 8) + 32))
          {
            v607 = sub_2775D9968;
          }

          else
          {
            v607 = sub_2775A8C8C;
          }

          v608 = sub_2775D9F50;
          if (!*(*(v575 + 8) + 32))
          {
            v608 = sub_2775A9158;
          }

          *(v575 + 3296) = v595;
          *(v575 + 3288) = v596;
          *(v575 + 3304) = v597;
          *(v575 + 3312) = v598;
          *(v575 + 3320) = v599;
          *(v575 + 3328) = v600;
          *(v575 + 3336) = v601;
          *(v575 + 3344) = v602;
          *(v575 + 3352) = v603;
          *(v575 + 3360) = v604;
          *(v575 + 3368) = v605;
          *(v575 + 3376) = v606;
          *(v575 + 3384) = v607;
          *(v575 + 3392) = v608;
          v609 = *(v575 + 24);
          if (v609[232])
          {
            v613 = v609[271];
            if (v613 != 7 && !*(v3 + 344 * v609[v613 + 421] + 49952))
            {
              v642 = -22;
              goto LABEL_1286;
            }

            v814 = (v575 + 16);
            v816 = v576;
            v808 = v4;
            v811 = v29;
            v614 = 0;
            v615 = 0;
            v616 = v3 + 49936;
            v617 = 896;
            v618 = 3140;
            while (1)
            {
              v619 = *(v575 + 24);
              v620 = v616 + 344 * *(v619 + v615 + 421);
              if (!*(v620 + 16))
              {
                break;
              }

              v621 = *(v619 + 236);
              v622 = *(v620 + 56);
              if (v622 > 2 * v621)
              {
                break;
              }

              v623 = *(v619 + 244);
              v624 = *(v620 + 60);
              v625 = 16 * v622;
              v626 = v624 <= 2 * v623 && v621 <= v625;
              v627 = v626 && v623 <= 16 * v624;
              if (!v627 || *(*(v575 + 8) + 12) != *(v620 + 64) || v593 != *(v620 + 68))
              {
                break;
              }

              v628 = v575 + v614;
              sub_2775DDFB8((v575 + v614 + 32), v620);
              *(v628 + 304) = *(v620 + 272);
              *(v628 + 320) = *(v620 + 288);
              *(v628 + 312) = *(v620 + 280);
              *(&block[5] + v615 + 1) = *(*(v620 + 8) + 236);
              v629 = *(v575 + 24);
              v630 = *(v629 + 236);
              v632 = *(v620 + 56);
              v631 = *(v620 + 60);
              v633 = *(v629 + 244);
              if (v630 == v632 && v633 == v631)
              {
                v638 = v575 + v618;
                *(v638 - 4) = 0;
                *(v638 - 12) = 0;
              }

              else
              {
                v635 = ((v632 << 14) + (v630 >> 1)) / v630;
                v636 = (v575 + v618);
                *(v636 - 3) = v635;
                *(v636 - 2) = (v635 + 8) >> 4;
                v637 = ((v633 >> 1) + (v631 << 14)) / v633;
                *(v636 - 1) = v637;
                *v636 = (v637 + 8) >> 4;
              }

              v639 = *(v629 + v617) >= 2u && !*(v629 + 269) && !sub_2775CF000(v629 + v617) && *(v575 + v618 - 12) == 0;
              v640 = v575 + v615++;
              *(v640 + 3056) = v639;
              v614 += 296;
              v617 += 36;
              v618 += 16;
              if (v615 == 7)
              {
                v609 = *(v575 + 24);
                v576 = v816;
                v3 = v817;
                v4 = v808;
                v29 = v811;
                v590 = (v575 + 16);
                goto LABEL_1046;
              }
            }

            if (v615)
            {
              v641 = (v575 + 320);
              v3 = v817;
              v4 = v808;
              do
              {
                sub_2775DE04C((v641 - 36));
                *v641 = 0;
                v641 += 37;
                --v615;
              }

              while (v615);
              v642 = -22;
            }

            else
            {
              v642 = -22;
              v3 = v817;
              v4 = v808;
            }

LABEL_1105:
            v590 = v814;
            v576 = v816;
            goto LABEL_1286;
          }

LABEL_1046:
          v610 = v609[271];
          if (v610 == 7)
          {
            v611 = v609[712];
            *(v575 + 3064) = 0;
            if (v611 >= 0x15)
            {
              if (v611 >= 0x3D)
              {
                if (v611 < 0x79)
                {
                  v612 = 2;
                }

                else
                {
                  v612 = 3;
                }
              }

              else
              {
                v612 = 1;
              }
            }

            else
            {
              v612 = 0;
            }

            *(v575 + 3072) = v612;
          }

          else
          {
            v643 = v3 + 24 * v609[v610 + 421] + 52696;
            v644 = *v643;
            *(v575 + 3080) = *(v643 + 16);
            *(v575 + 3064) = v644;
            v645 = *v643;
            if (v645)
            {
              atomic_fetch_add_explicit((v645 + 16), 1u, memory_order_relaxed);
              v609 = *(v575 + 24);
            }
          }

          if (v609[438])
          {
            v669 = *(v3 + 8);
            v670 = v29[346];
            v671 = sub_2775C68C0(v670, 0x3630);
            if (!v671)
            {
              *(v575 + 3088) = 0;
              goto LABEL_1285;
            }

            v672 = *v671;
            *(v671 - 5) = *v671;
            *(v671 - 4) = v670;
            *(v671 - 3) = 1;
            *(v671 - 2) = sub_2775DA1FC;
            *(v671 - 1) = v671;
            *(v575 + 3088) = v671 - 40;
            *(v575 + 3096) = v672;
            if (v669 >= 2)
            {
              *(v575 + 3104) = v672 + 13824;
              *(v672 + 13824) = 0;
            }
          }

          v673 = *(v3 + 60);
          v674 = *(v575 + 3112);
          if (*(v575 + 3120) < v673)
          {
            free(v674);
            v674 = malloc_type_malloc(80 * *(v3 + 60), 0x10700408B15705AuLL);
            *(v575 + 3112) = v674;
            if (!v674)
            {
              *(v575 + 3120) = 0;
              goto LABEL_1285;
            }

            v673 = *(v3 + 60);
            *(v575 + 3120) = v673;
          }

          memcpy(v674, *(v3 + 48), 80 * v673);
          bzero(*(v3 + 48), 80 * *(v3 + 60));
          *(v575 + 3124) = *(v3 + 60);
          *(v3 + 60) = 0;
          v675 = sub_2775DDD24(v3, (v575 + 2376), *(*(v575 + 24) + 240), *(*(v575 + 24) + 244), *(v575 + 8), *v575, *(v575 + 24), *(v575 + 16), v593, (v3 + 63024), (v575 + 2664));
          if (v675)
          {
LABEL_1147:
            v642 = v675;
            goto LABEL_1286;
          }

          sub_2775DDC34(v575 + 2376, *(v3 + 128), *(v3 + 120), *(v3 + 144), *(v3 + 136), *(v3 + 160), *(v3 + 152), *(v3 + 168), (*(v575 + 3112) + 24));
          sub_2775DA200((v3 + 152));
          *(v3 + 160) = 0;
          *(v3 + 168) = 0;
          v676 = *(v575 + 24);
          v677 = *(v676 + 264);
          if (*(v676 + 264) || v4[6])
          {
            if (v4[3] == *(v676 + 250))
            {
              v678 = 0;
            }

            else
            {
              v678 = 3;
            }
          }

          else
          {
            v678 = 3;
          }

          v679 = v4[10];
          *(v575 + 2656) = v679;
          v4[10] = v679 & v678;
          *(v575 + 2648) = v677;
          *(v575 + 2652) = *(v676 + 265);
          if (*(v3 + 8) >= 2u)
          {
            **(v575 + 2664) = 0;
            *(*(v575 + 2664) + 4) = 0;
            v676 = *(v575 + 24);
          }

          v680 = *(v676 + 236);
          if (v680 == *(v676 + 240))
          {
            sub_2775DDFB8((v575 + 2104), (v575 + 2376));
          }

          else
          {
            v675 = sub_2775DDF30(v3, (v575 + 2104), v680, v575 + 2376);
            if (v675 < 0)
            {
              goto LABEL_1147;
            }
          }

          v688 = *(v575 + 24);
          if (*(v688 + 236) != *(v688 + 240))
          {
            v689 = *(v575 + 2160);
            v690 = *(v575 + 2432);
            v691 = ((v690 >> 1) + (v689 << 14)) / v690;
            *(v575 + 3240) = v691;
            v692 = *(v575 + 2168);
            v693 = v692 == 3;
            v694 = v692 != 3;
            if (v693)
            {
              v695 = v689;
            }

            else
            {
              v695 = v689 + 1;
            }

            v696 = v695 >> v694;
            if (v693)
            {
              v697 = v690;
            }

            else
            {
              v697 = v690 + 1;
            }

            v698 = v697 >> v694;
            v699 = ((v696 << 14) + (v698 >> 1)) / v698;
            *(v575 + 3244) = v699;
            *(v575 + 3248) = (((((v689 - v690) << 13) + (v690 >> 1)) / v690) - ((v691 * v690 - (v689 << 14)) / 2) + 128) & 0x3FFF;
            *(v575 + 3252) = (((((v696 - v698) << 13) + (v698 >> 1)) / v698) - ((v698 * v699 - (v696 << 14)) / 2) + 128) & 0x3FFF;
          }

          if (*(v3 + 8) == 1)
          {
            if (*(v688 + 264) || v4[6])
            {
              sub_2775DDFB8((v3 + 248), (v575 + 2376));
              *(v3 + 520) = *(v575 + 2648);
              *(v3 + 536) = *(v575 + 2664);
              v700 = *(v575 + 2656);
              *(v3 + 528) = v700;
              v4[11] |= v700 & 3;
            }
          }

          else
          {
            sub_2775DDFB8(v576, (v575 + 2376));
            *(v576 + 272) = *(v575 + 2648);
            *(v576 + 288) = *(v575 + 2664);
            *(v576 + 280) = *(v575 + 2656);
          }

          v703 = *(v575 + 24);
          *(v575 + 3440) = (*(v703 + 236) + 3) >> 2;
          v704 = *(v703 + 244);
          *(v575 + 3444) = (v704 + 3) >> 2;
          v705 = ((*(v703 + 236) + 7) >> 2) & 0xFFFFFFFE;
          *(v575 + 3448) = v705;
          v706 = ((v704 + 7) >> 2) & 0xFFFFFFFE;
          *(v575 + 3452) = v706;
          v705 += 31;
          *(v575 + 3456) = v705 >> 5;
          v707 = (v706 + 31) >> 5;
          *(v575 + 3460) = v707;
          v708 = *(*(v575 + 8) + 392);
          v709 = v708 + 4;
          *(v575 + 3468) = v708 + 4;
          v710 = 16 << v708;
          *(v575 + 3472) = v710;
          v711 = (v706 + v710 - 1) >> v709;
          *(v575 + 3464) = v711;
          v712 = (v705 & 0xFFFFFFE0);
          *(v575 + 3432) = v712;
          *(v575 + 4324) = ~(-1 << *(v575 + 2172));
          *(v575 + 5564) = 0;
          atomic_store((v711 + *(v703 + 449) * *(v703 + 445)) << (*(v3 + 8) > 1u), (v575 + 5568));
          if ((*(v703 + 232) & 1) == 0 && !*(v703 + 419))
          {
            *(v575 + 2672) = 0;
            *(v575 + 2792) = 0;
            *&v731 = 0;
            *(v575 + 2744) = 0u;
            *(v575 + 2760) = 0u;
            *(v575 + 2776) = 0u;
            goto LABEL_1217;
          }

          sub_2775DA19C(v29[1], 80 * v707 * (v712 >> 1));
          *(v575 + 2672) = v713;
          if (v713)
          {
            *(v575 + 2680) = *v713;
            v703 = *(v575 + 24);
            if (*(v703 + 419))
            {
              *(v575 + 2856) = 0;
              *(v575 + 2848) = 0;
              *(v575 + 2832) = 0u;
            }

            else
            {
              v719 = 40;
              v720 = 2832;
              do
              {
                *(v575 + v720) = *(*(v575 + v719) + 248);
                v719 += 296;
                v720 += 4;
              }

              while (v719 != 2112);
            }

            if (*(v703 + 437))
            {
              v721 = 0;
              v722 = 2860;
              v723 = 2688;
              v724 = 92;
              do
              {
                v725 = v3 + 49936 + 344 * *(*(v575 + 24) + v721 + 421);
                v726 = *(v725 + 304);
                if (v726 && (((*(&block[5] + v721 + 1) + 7) >> 2) & 0xFFFFFFFE) == *(v575 + 3448) && (((*(v575 + v724) + 7) >> 2) & 0xFFFFFFFE) == *(v575 + 3452))
                {
                  *(v575 + v723 + 56) = v726;
                  atomic_fetch_add_explicit((v726 + 16), 1u, memory_order_relaxed);
                  v727 = **(v725 + 304);
                  v728 = 2688;
                }

                else
                {
                  v727 = 0;
                  *(v575 + v723) = 0;
                  v728 = 2744;
                }

                *(v575 + v728 + 8 * v721) = v727;
                v729 = (v575 + v722);
                v730 = (v725 + 312);
                v731 = *v730;
                v681 = *(v730 + 12);
                ++v721;
                *(v729 + 12) = v681;
                *v729 = v731;
                v722 += 28;
                v723 += 8;
                v724 += 296;
              }

              while (v721 != 7);
              v703 = *(v575 + 24);
            }

            else
            {
              *(v575 + 2792) = 0;
              *&v731 = 0;
              *(v575 + 2760) = 0u;
              *(v575 + 2776) = 0u;
              *(v575 + 2744) = 0u;
            }

LABEL_1217:
            if (!*(v703 + 722))
            {
              v814 = v590;
              v816 = v576;
              v809 = v4;
              *(v575 + 2816) = 0;
              *&v731 = 0;
              *(v575 + 2800) = 0u;
              goto LABEL_1236;
            }

            *(v575 + 2808) = 0;
            *(v575 + 2824) = 0;
            if ((*(v703 + 724) || !*(v703 + 723)) && (v732 = *(v703 + 271), (((*(&block[5] + v732 + 1) + 7) >> 2) & 0xFFFFFFFE) == *(v575 + 3448)) && (((*(v575 + 296 * *(v703 + 271) + 92) + 7) >> 2) & 0xFFFFFFFE) == *(v575 + 3452))
            {
              v733 = *(v3 + 344 * *(v703 + v732 + 421) + 50232);
              *(v575 + 2808) = v733;
              if (v733)
              {
                atomic_fetch_add_explicit((v733 + 16), 1u, memory_order_relaxed);
                v733 = *(v575 + 2808);
                *(v575 + 2824) = *v733;
                v703 = *(v575 + 24);
              }
            }

            else
            {
              v733 = 0;
            }

            if (*(v703 + 723))
            {
              *&v731 = sub_2775DA19C(*v29, 32 * *(v575 + 3432) * *(v575 + 3460));
              *(v575 + 2800) = v734;
              if (v734)
              {
                v814 = v590;
                v816 = v576;
                v809 = v4;
                v735 = *v734;
LABEL_1235:
                *(v575 + 2816) = v735;
                goto LABEL_1236;
              }

              sub_2775DA200((v575 + 2808));
            }

            else
            {
              if (v733)
              {
                v814 = v590;
                v816 = v576;
                v809 = v4;
                *(v575 + 2800) = v733;
                atomic_fetch_add_explicit((v733 + 16), 1u, memory_order_relaxed);
                v735 = **(v575 + 2808);
                goto LABEL_1235;
              }

              v783 = 32 * *(v575 + 3432) * *(v575 + 3460);
              sub_2775DA19C(*v29, v783);
              *(v575 + 2800) = v784;
              if (v784)
              {
                v814 = v590;
                v816 = v576;
                v809 = v4;
                v785 = *v784;
                *(v575 + 2816) = v785;
                bzero(v785, v783);
LABEL_1236:
                v736 = 0;
                v737 = 0;
                v738 = 0;
                v821 = *(*(v575 + 24) + 404);
                v739 = v3;
                v740 = v3 + 52696;
                v741 = v739 + 52704;
                do
                {
                  if ((v821 >> v738))
                  {
                    v742 = v740 + v736;
                    if (*(v740 + v736 - 2752))
                    {
                      sub_2775DE04C(v740 + v736 - 2760);
                      *(v742 - 2472) = 0;
                    }

                    sub_2775DDFB8((v740 + v736 - 2760), (v575 + 2376));
                    *(v742 - 2488) = *(v575 + 2648);
                    *(v742 - 2472) = *(v575 + 2664);
                    *(v742 - 2480) = *(v575 + 2656);
                    v743 = (v741 + v737);
                    *v743 = 0;
                    v743[1] = 0;
                    sub_2775DA200((v740 + v737));
                    v744 = 3088;
                    if (!*(*(v575 + 24) + 438))
                    {
                      v744 = 3064;
                    }

                    v745 = v575 + v744;
                    v746 = *v745;
                    v743[1] = *(v745 + 16);
                    *(v743 - 1) = v746;
                    v747 = *v745;
                    if (v747)
                    {
                      atomic_fetch_add_explicit((v747 + 16), 1u, memory_order_relaxed);
                    }

                    v748 = v740 + v736;
                    sub_2775DA200((v740 + v736 - 2464));
                    v749 = *(v575 + 2800);
                    *(v740 + v736 - 2464) = v749;
                    if (v749)
                    {
                      atomic_fetch_add_explicit((v749 + 16), 1u, memory_order_relaxed);
                    }

                    sub_2775DA200((v748 - 2456));
                    if (!*(*(v575 + 24) + 419))
                    {
                      v750 = *(v575 + 2672);
                      *(v748 - 2456) = v750;
                      if (v750)
                      {
                        atomic_fetch_add_explicit((v750 + 16), 1u, memory_order_relaxed);
                      }
                    }

                    v751 = (v740 + v736 - 2448);
                    v731 = *(v575 + 2832);
                    v681 = *(v575 + 2844);
                    *(v751 + 12) = v681;
                    *v751 = v731;
                  }

                  ++v738;
                  v737 += 24;
                  v736 += 344;
                }

                while (v738 != 8);
                v752 = *(*(v575 + 24) + 449) * *(*(v575 + 24) + 445);
                v3 = v817;
                v753 = *(v817 + 24);
                if (v752 + 1 < v753)
                {
                  v754 = v752 + 1;
                }

                else
                {
                  v754 = *(v817 + 24);
                }

                if (*(v817 + 8) != 1)
                {
                  v770 = *(v575 + 3256);
                  atomic_store(0, (v575 + 5544));
                  *(v575 + 5504) = 1828669549 * ((v575 - *v770) >> 4);
                  *(v575 + 5508) = 0u;
                  sub_2775DF624(v575, (v575 + 5504), 1);
                  pthread_mutex_unlock((v817 + 896));
                  if (*(v817 + 32))
                  {
                    v771 = *(v817 + 28);
                    v772 = (v771 + v754) >= *(v817 + 24) ? *(v817 + 24) : v771 + v754;
                    if (v771 < v772)
                    {
                      v773 = MEMORY[0x277D85DD0];
                      do
                      {
                        v774 = *(v817 + 16) + 258752 * v771;
                        v775 = *(v817 + 32);
                        v776 = *(v817 + 40);
                        *&v827 = v773;
                        *(&v827 + 1) = 0x40000000;
                        *&v828 = sub_2775C3930;
                        *(&v828 + 1) = &unk_27A717508;
                        v829 = v774;
                        dispatch_group_async(v775, v776, &v827);
                        v771 = *(v817 + 28) + 1;
                        *(v817 + 28) = v771;
                      }

                      while (v771 < v772);
                    }
                  }

                  goto LABEL_985;
                }

                if (*(v817 + 32))
                {
                  if (v753 >= 2)
                  {
                    v755 = *(v817 + 28);
                    if (v755 < v754)
                    {
                      v756 = MEMORY[0x277D85DD0];
                      do
                      {
                        v757 = *(v817 + 16) + 258752 * v755;
                        v758 = *(v817 + 32);
                        v759 = *(v817 + 40);
                        block[0] = v756;
                        block[1] = 0x40000000;
                        block[2] = sub_2775C3928;
                        block[3] = &unk_27A7174E8;
                        block[4] = v757;
                        dispatch_group_async(v758, v759, block);
                        v755 = *(v817 + 28) + 1;
                        *(v817 + 28) = v755;
                      }

                      while (v755 < v754);
                    }
                  }
                }

                v760 = sub_2775C1C00(v575, *&v731, *&v681, v682, v683, v684, v685, v686, v687);
                v4 = v809;
                if (v760 || (v760 = sub_2775C2F00(v575)) != 0)
                {
                  v761 = v760;
                }

                else
                {
                  v786 = *(v575 + 3256);
                  if (*(v786 + 24) < 2u)
                  {
                    v788 = *(v786 + 16) + 0x58EB3458EB345BC0 * ((v575 - *v786) >> 4);
                    *(v788 + 258564) = 0;
                    *(v788 + 8) = v575;
                    v789 = *(v575 + 24);
                    v790 = *(v789 + 449);
                    if (*(v575 + 3456) * v790 >= 1)
                    {
                      v791 = 0;
                      v792 = 0;
                      do
                      {
                        sub_2775B6D74((*(v575 + 4032) + v791), (*(v789 + 232) & 1) == 0, 0);
                        ++v792;
                        v789 = *(v575 + 24);
                        v790 = *(v789 + 449);
                        v791 += 624;
                      }

                      while (v792 < (*(v575 + 3456) * *(v789 + 449)));
                    }

                    if (v790)
                    {
                      v793 = 0;
                      while (1)
                      {
                        v794 = v793 + 1;
                        v795 = *(v789 + 580 + 2 * (v793 + 1)) >= *(v575 + 3464) ? *(v575 + 3464) : *(v789 + 580 + 2 * (v793 + 1));
                        if (v795 > *(v789 + 580 + 2 * v793))
                        {
                          break;
                        }

LABEL_1331:
                        ++v793;
                        if (v794 >= *(v789 + 449))
                        {
                          goto LABEL_1332;
                        }
                      }

                      v796 = *(v789 + 580 + 2 * v793);
                      while (1)
                      {
                        v797 = v796;
                        v798 = v796 << (*(*(v575 + 8) + 392) + 4);
                        *(v788 + 28) = v798;
                        v799 = *(v575 + 24);
                        if (v799[437])
                        {
                          (*(*(v575 + 3256) + 63000))(v575 + 4048, v793, 0, (*(v575 + 3448) >> 1), (v798 >> 1));
                          v799 = *(v575 + 24);
                        }

                        v800 = v799[445];
                        if (v799[445])
                        {
                          break;
                        }

LABEL_1327:
                        if (v799[232])
                        {
                          (*(*(v575 + 3256) + 63008))(*(*(v788 + 664) + 160) + 5 * *(*(v788 + 664) + 184) * (*(v788 + 28) >> 1));
                        }

                        (*(v575 + 3304))(v575, v797);
                        v796 = (v797 + 1);
                        if (v796 == v795)
                        {
                          v789 = *(v575 + 24);
                          goto LABEL_1331;
                        }
                      }

                      v801 = 0;
                      while (1)
                      {
                        *(v788 + 16) = *(v575 + 3264) + 14624 * (v801 + v793 * v800);
                        if (sub_2775B648C(v788))
                        {
                          break;
                        }

                        ++v801;
                        v799 = *(v575 + 24);
                        v800 = v799[445];
                        if (v801 >= v800)
                        {
                          goto LABEL_1327;
                        }
                      }

                      v761 = -22;
                    }

                    else
                    {
LABEL_1332:
                      if (*(v789 + 438) && *(v575 + 5560))
                      {
                        sub_2775DAA94(v789, *(v575 + 3096), *(v575 + 3264) + 14624 * *(v789 + 710));
                      }

                      v761 = 0;
                    }
                  }

                  else
                  {
                    v787 = sub_2775DF28C(v575, 0);
                    pthread_mutex_lock(*(v575 + 5472));
                    pthread_cond_signal((*(v575 + 5472) + 64));
                    if (!v787)
                    {
                      while (1)
                      {
                        if (atomic_load((v575 + 5548)))
                        {
                          v803 = atomic_load((v575 + 5568));
                          if (v803 < 1)
                          {
                            break;
                          }
                        }

                        pthread_cond_wait((v575 + 5424), *(v575 + 5472));
                      }
                    }

                    pthread_mutex_unlock(*(v575 + 5472));
                    v761 = *(v575 + 5556);
                  }

                  v4 = v809;
                  v3 = v817;
                }

                sub_2775C375C(v575, v761);
                v642 = *(v575 + 5556);
                *(v575 + 3124) = 0;
                if ((v642 & 0x80000000) == 0)
                {
                  goto LABEL_985;
                }

                sub_2775DE04C(v3 + 248);
                v762 = 0;
                v763 = 0;
                *(v3 + 536) = 0;
                v764 = 52696;
                v765 = v3 + 52696;
                v766 = 52704;
                do
                {
                  if ((v821 >> v763))
                  {
                    v767 = v765 + v762;
                    if (*(v765 + v762 - 2752))
                    {
                      sub_2775DE04C(v767 - 2760);
                      *(v767 - 2472) = 0;
                    }

                    v768 = (v817 + v766);
                    *v768 = 0;
                    v768[1] = 0;
                    sub_2775DA200((v817 + v764));
                    sub_2775DA200((v767 - 2464));
                    v769 = (v767 - 2456);
                    v3 = v817;
                    sub_2775DA200(v769);
                  }

                  ++v763;
                  v764 += 24;
                  v766 += 24;
                  v762 += 344;
                }

                while (v763 != 8);
                goto LABEL_1105;
              }
            }
          }

LABEL_1285:
          v642 = -12;
LABEL_1286:
          *(v575 + 5564) = 1;
          *(v575 + 3072) = 0u;
          sub_2775DA200((v575 + 3064));
          if (*(*(v575 + 24) + 438))
          {
            *(v575 + 3096) = 0u;
            sub_2775DA200((v575 + 3088));
          }

          v777 = 0;
          v778 = v575;
          do
          {
            if (*(v778 + 40))
            {
              sub_2775DE04C(v778 + 32);
              *(v778 + 320) = 0;
            }

            sub_2775DA200((v575 + 2744 + v777));
            v777 += 8;
            v778 += 296;
          }

          while (v777 != 56);
          if (*(v3 + 8) == 1)
          {
            sub_2775DE04C(v3 + 248);
            v779 = (v3 + 536);
          }

          else
          {
            sub_2775DE04C(v576);
            v779 = (v576 + 288);
          }

          *v779 = 0;
          sub_2775DE04C(v575 + 2104);
          sub_2775DE04C(v575 + 2376);
          *(v575 + 2664) = 0;
          sub_2775DA200((v575 + 2672));
          sub_2775DA200(v575);
          sub_2775DA200(v590);
          sub_2775DA200((v4 + 23));
          *(v3 + 63136) = *(v3 + 232);
          *(v3 + 63104) = *(v3 + 200);
          *(v3 + 63120) = *(v3 + 216);
          v780 = *(v4 + 23);
          if (v780)
          {
            atomic_fetch_add_explicit((v780 + 16), 1u, memory_order_relaxed);
          }

          if (*(v575 + 3124) >= 1)
          {
            v781 = 0;
            v782 = 0;
            do
            {
              sub_2775A9300(*(v575 + 3112) + v781);
              ++v782;
              v781 += 80;
            }

            while (v782 < *(v575 + 3124));
          }

          *(v575 + 3124) = 0;
          if (*(v3 + 8) > 1u)
          {
            pthread_mutex_unlock((v3 + 896));
          }

          if (v642 < 0)
          {
            return v642;
          }

          goto LABEL_985;
        }

        v592[412] = sub_2775D0DE4;
        v592[413] = sub_2775D0DAC;
        v592[414] = sub_2775D0D70;
        v592[415] = sub_2775D05C4;
        v701 = dword_280B9A7E0;
        if (dword_280B9A7E0)
        {
          v592[412] = sub_27757F284;
          v592[413] = sub_2775D04E4;
          v592[414] = sub_2775D0404;
          v592[415] = sub_2775D0324;
        }

        sub_2775E9B1C(v594);
        sub_2775E9E40(v592 + 85, v593);
        v592[408] = sub_2775E2424;
        v592[409] = sub_2775E2328;
        v592[410] = sub_2775E224C;
        v592[411] = sub_2775E1970;
        if (v701)
        {
          v592[408] = sub_27754EA84;
          v592[409] = sub_27754E93C;
          v592[410] = sub_27754ECF4;
          v592[411] = sub_27754EBD4;
          v592[418] = sub_2775E67E4;
          v592[419] = sub_2775E6694;
          v592[420] = sub_2775E5928;
          v592[416] = sub_2775503A8;
          v592[417] = sub_277550A14;
          if (v593 != 10)
          {
LABEL_1282:
            sub_2775E914C(v592 + 32);
            sub_2775E7F24(v592);
            goto LABEL_1004;
          }

          v592[418] = sub_2775E51E0;
          v592[419] = sub_2775E4AB4;
          v702 = sub_2775E3BE4;
        }

        else
        {
          v592[417] = sub_2775E6934;
          v592[416] = sub_2775E6934;
          v592[418] = sub_2775E67E4;
          v592[419] = sub_2775E6694;
          v702 = sub_2775E5928;
        }

        v592[420] = v702;
        goto LABEL_1282;
      }

      if (v540 != 1)
      {
        goto LABEL_969;
      }
    }

    v541 = v4[8];
    v542 = v541 == 1;
    if (v541 > 1)
    {
      goto LABEL_980;
    }

    goto LABEL_966;
  }

  v536 = v3 + 49936;
  v537 = *(v535 + 252);
  v538 = *(v3 + 49936 + 344 * v537 + 8);
  if (!v538)
  {
    goto LABEL_1096;
  }

  v539 = *(v538 + 232);
  if (v539 != 3)
  {
    if (v539 == 2)
    {
      if (v4[8] > 2)
      {
        goto LABEL_980;
      }

      goto LABEL_920;
    }

    if (v539 != 1)
    {
      goto LABEL_920;
    }
  }

  if (v4[8] > 1)
  {
    goto LABEL_980;
  }

LABEL_920:
  v543 = v536 + 344 * v537;
  if (*(v543 + 16) && (!*v8 || *(v543 + 276)))
  {
    if (*(v3 + 8) == 1)
    {
      sub_2775DDFB8((v3 + 248), v543);
      v544 = *(v3 + 152);
      *(v3 + 520) = *(v543 + 272);
      *(v3 + 536) = *(v543 + 288);
      *(v3 + 528) = *(v543 + 280);
      sub_2775DDC34(v3 + 248, *(v3 + 128), *(v3 + 120), *(v3 + 144), *(v3 + 136), *(v3 + 160), v544, *(v3 + 168), (v2 + 3));
      sub_2775DA200((v3 + 152));
      *(v3 + 160) = 0;
      *(v3 + 168) = 0;
      v545 = *(*(v3 + 112) + 252);
      v4[11] |= *(v536 + 344 * *(*(v3 + 112) + 252) + 280) & 3;
LABEL_952:
      if (!*(*(v536 + 344 * v545 + 8) + 232))
      {
        v562 = 0;
        v563 = 0;
        v564 = v536 + 344 * v545;
        v565 = 344 * v545;
        *(v564 + 276) = 0;
        v566 = v817 + 52696;
        v567 = (v817 + 52696 + 24 * v545);
        do
        {
          if (v565 != v563)
          {
            v568 = v566 + v563;
            if (*(v566 + v563 - 2752))
            {
              sub_2775DE04C(v566 + v563 - 2760);
              *(v568 - 2472) = 0;
            }

            sub_2775DDFB8((v566 + v563 - 2760), v564);
            *(v568 - 2488) = *(v564 + 272);
            *(v568 - 2472) = *(v564 + 288);
            *(v568 - 2480) = *(v564 + 280);
            v569 = (v817 + 52704 + v562);
            *v569 = 0;
            v569[1] = 0;
            sub_2775DA200((v566 + v562));
            v570 = *v567;
            v569[1] = v567[2];
            *(v569 - 1) = v570;
            if (*v567)
            {
              atomic_fetch_add_explicit((*v567 + 16), 1u, memory_order_relaxed);
            }

            sub_2775DA200((v566 + v563 - 2464));
            v571 = *(v564 + 296);
            *(v566 + v563 - 2464) = v571;
            if (v571)
            {
              atomic_fetch_add_explicit((v571 + 16), 1u, memory_order_relaxed);
            }

            sub_2775DA200((v566 + v563 - 2456));
          }

          v563 += 344;
          v562 += 24;
        }

        while (v563 != 2752);
      }

      *(v817 + 112) = 0;
      return v826 - v825;
    }

    pthread_mutex_lock((v3 + 896));
    v546 = *(v3 + 864);
    if (v546 + 1 == *(v3 + 8))
    {
      v547 = 0;
    }

    else
    {
      v547 = v546 + 1;
    }

    *(v3 + 864) = v547;
    v548 = *v3 + 5712 * v546;
    if (*(v548 + 3124) >= 1)
    {
      do
      {
        pthread_cond_wait((v548 + 5424), *(v548 + 5472));
      }

      while (*(v548 + 3124) > 0);
    }

    v549 = *(v3 + 856) + 296 * v546;
    if (*(v549 + 16) || (v550 = atomic_load((v548 + 5564))) != 0)
    {
      v551 = (v3 + 1008);
      v552 = atomic_load((v3 + 1008));
      if (v552 + 1 >= *(v3 + 8))
      {
        atomic_store(0, v551);
      }

      else
      {
        atomic_fetch_add(v551, 1u);
      }

      atomic_compare_exchange_strong((v3 + 1016), &v552, 0xFFFFFFFF);
      v555 = *(v3 + 1012);
      if (v555)
      {
        if (v555 < *(v3 + 8))
        {
          *(v3 + 1012) = v555 - 1;
        }
      }
    }

    v556 = *(v548 + 5556);
    if (v556)
    {
      v4[25] = v556;
      *(v548 + 5556) = 0;
      sub_2775DA200((v4 + 23));
      v557 = *(v549 + 72);
      v558 = *(v549 + 88);
      *(v3 + 63136) = *(v549 + 104);
      *(v3 + 63120) = v558;
      *(v3 + 63104) = v557;
      v559 = *(v4 + 23);
      if (v559)
      {
        atomic_fetch_add_explicit((v559 + 16), 1u, memory_order_relaxed);
      }
    }

    else
    {
      if (!*(v549 + 16))
      {
LABEL_951:
        v561 = v536 + 344 * *(*(v3 + 112) + 252);
        sub_2775DDFB8(v549, v561);
        *(v549 + 272) = *(v561 + 272);
        *(v549 + 288) = *(v561 + 288);
        *(v549 + 280) = *(v561 + 280);
        *(v549 + 272) = 1;
        sub_2775DDC34(v549, *(v3 + 128), *(v3 + 120), *(v3 + 144), *(v3 + 136), *(v3 + 160), *(v3 + 152), *(v3 + 168), (v2 + 3));
        sub_2775DA200((v3 + 152));
        *(v3 + 160) = 0;
        *(v3 + 168) = 0;
        pthread_mutex_unlock((v3 + 896));
        v545 = *(*(v3 + 112) + 252);
        goto LABEL_952;
      }

      if ((*(v549 + 272) || v4[6]) && *(*(v549 + 288) + 4) != -2)
      {
        sub_2775DDFB8((v3 + 248), v549);
        *(v3 + 520) = *(v549 + 272);
        *(v3 + 536) = *(v549 + 288);
        v560 = *(v549 + 280);
        *(v3 + 528) = v560;
        v4[11] |= v560 & 3;
      }
    }

    sub_2775DE04C(v549);
    *(v549 + 288) = 0;
    goto LABEL_951;
  }

LABEL_1096:
  sub_2775DA200((v4 + 23));
  v654 = *(v2 + 3);
  v655 = *(v2 + 5);
  *(v3 + 63136) = *(v2 + 7);
  *(v3 + 63120) = v655;
  *(v3 + 63104) = v654;
  v656 = *(v4 + 23);
  if (v656)
  {
    atomic_fetch_add_explicit((v656 + 16), 1u, memory_order_relaxed);
  }

  if (HIDWORD(v823))
  {
    sub_2775E9DFC(v3, "Overrun in OBU bit buffer\n");
  }

  else
  {
    sub_2775E9DFC(v3, "Error parsing OBU data\n");
  }

  return -22;
}

unint64_t sub_2775B5504(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 88);
  v5 = *(a1 + 112);
  if (a3)
  {
    v7 = 0;
    while (!sub_2775CF264(a2))
    {
      if (++v7 == 7)
      {
        goto LABEL_5;
      }
    }

    v9 = *(a1 + 344 * *(*(a1 + 112) + v7 + 421) + 49944);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = *(v9 + 240);
    *(v5 + 240) = v10;
    *(v5 + 244) = *(v9 + 244);
    *(v5 + 408) = *(v9 + 408);
    if (*(v4 + 413))
    {
      v11 = sub_2775CF264(a2);
      *(v5 + 417) = v11;
      if (v11)
      {
        v12 = sub_2775CF2C4(a2, 3);
        *(v5 + 416) = v12 + 9;
        v13 = *(v5 + 240);
        v10 = (((v12 + 9) >> 1) + 8 * v13) / (v12 + 9);
        if (v13 >= 16)
        {
          v14 = 16;
        }

        else
        {
          v14 = *(v5 + 240);
        }

        if (v10 <= v14)
        {
          v10 = v14;
        }

        goto LABEL_32;
      }

      v10 = *(v5 + 240);
    }

    else
    {
      *(v5 + 417) = 0;
    }

    *(v5 + 416) = 8;
LABEL_32:
    result = 0;
    *(v5 + 236) = v10;
    return result;
  }

LABEL_5:
  if (*(v5 + 270))
  {
    *(v5 + 240) = sub_2775CF2C4(a2, *(v4 + 387)) + 1;
    v8 = sub_2775CF2C4(a2, *(v4 + 388)) + 1;
  }

  else
  {
    *(v5 + 240) = *(v4 + 4);
    v8 = *(v4 + 8);
  }

  *(v5 + 244) = v8;
  if (*(v4 + 413))
  {
    v15 = sub_2775CF264(a2);
    *(v5 + 417) = v15;
    if (v15)
    {
      v16 = sub_2775CF2C4(a2, 3);
      *(v5 + 416) = v16 + 9;
      v17 = *(v5 + 240);
      v18 = (((v16 + 9) >> 1) + 8 * v17) / (v16 + 9);
      if (v17 >= 16)
      {
        v19 = 16;
      }

      else
      {
        v19 = *(v5 + 240);
      }

      if (v18 <= v19)
      {
        v18 = v19;
      }

      goto LABEL_25;
    }
  }

  else
  {
    *(v5 + 417) = 0;
  }

  *(v5 + 416) = 8;
  v18 = *(v5 + 240);
LABEL_25:
  *(v5 + 236) = v18;
  result = sub_2775CF264(a2);
  *(v5 + 418) = result;
  if (result)
  {
    *(v5 + 408) = sub_2775CF2C4(a2, 16) + 1;
    v21 = sub_2775CF2C4(a2, 16);
    result = 0;
    *(v5 + 412) = v21 + 1;
  }

  else
  {
    *(v5 + 408) = *(v5 + 240);
  }

  return result;
}

uint64_t sub_2775B5710(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v176[13] = *MEMORY[0x277D85DE8];
  v116 = result;
  v7 = *(result + 8);
  v8 = *(v7 + 2168);
  v144 = v8 != 3;
  v153 = v8;
  v9 = v8 == 2;
  if (a4 < a5)
  {
    v172 = 0;
    v10 = *(v7 + 24);
    v130 = &unk_277601AF0 + 8 * v9;
    v11 = *(*(v7 + 3256) + 24);
    v12 = *(v10 + 236);
    v13 = *(v10 + 240);
    v14 = *(v7 + 2152);
    v15 = *(v7 + 2144);
    v16 = a4;
    if (a4 <= 0)
    {
      v17 = 8;
    }

    else
    {
      v17 = 12;
    }

    v18 = a6 != 0;
    if (v153 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

    v20 = *(*(v7 + 8) + 392);
    v21 = 7;
    if (v153 == 1)
    {
      v21 = 3;
    }

    v109 = v21;
    v110 = v19;
    v22 = 4 * a7;
    v23 = (4 << v20) * a7;
    v24 = v23 - 4;
    v171 = *(*(v7 + 3256) + 24);
    if (v11 < 2)
    {
      v18 = 1;
    }

    v115 = v18;
    if (v11 >= 2)
    {
      v25 = a7;
    }

    else
    {
      v25 = 0;
    }

    v111 = v14 * 8 * v25;
    v127 = v15 * v22;
    if (v11 >= 2)
    {
      v26 = v15 * v22;
    }

    else
    {
      v26 = 0;
    }

    v143 = v26;
    v169 = v14 * (8u >> (v153 == 1));
    if (v11 >= 2)
    {
      v27 = v14 * 8 * a7;
    }

    else
    {
      v27 = 0;
    }

    v141 = v27;
    v142 = v14 * 8 * a7;
    v136 = *(v10 + 240);
    v137 = *(v10 + 236);
    if (v12 == v13)
    {
      v28 = (4 * v20 + v23) | 2;
    }

    else
    {
      v28 = (4 * a7) | 2;
    }

    v29 = v14 * v28;
    if (v12 == v13)
    {
      v30 = v24;
    }

    else
    {
      v30 = 4 * a7 - 4;
    }

    v139 = v14 * v30;
    v140 = v29;
    v134 = 2 * *(v7 + 3456);
    v31 = a5;
    result = *(v10 + 847);
    v120 = a2[2];
    v119 = a2[1];
    v121 = *a2;
    v168 = v7 + 5192;
    v112 = v15 * 4 * v25;
    v123 = v15 * ((4 * a7) | 2);
    v122 = v15 * ((4 * v20 + v23) | 2);
    v126 = v15 * (4 * a7 - 4);
    v125 = v15 * v24;
    v158 = 8u >> v144;
    v131 = 0x40u >> v144;
    v152 = (v7 + 2144);
    v170 = result - 1;
    v151 = 8 * v15;
    v138 = *(v7 + 3280);
    v32 = (v138 + 3304);
    v33 = *(v116 + 258544);
    v128 = (v7 + 5264);
    v129 = (v7 + 5240);
    if (v12 == v13)
    {
      v34 = v7 + 5264;
    }

    else
    {
      v34 = v7 + 5240;
    }

    v165 = v34;
    v35 = v7;
    while (1)
    {
      if ((v16 + 2) >= *(v7 + 3452))
      {
        v36 = v17 & 0xFFFFFFF7;
      }

      else
      {
        v36 = v17;
      }

      v118 = v16 + 2;
      v37 = v115;
      if ((v16 + 2) < v31)
      {
        v37 = 1;
      }

      if (v37 == 1 && (v36 & 8) != 0)
      {
        v39 = (v168 + 24 * (v33 == 0));
        v40 = v39[1];
        v41 = (*v39 + v112);
        v42 = v39[2];
        if (v15 < 0)
        {
          v43 = (v121 - v15 + 8 * v15);
          v44 = -2 * v15;
          v41 += v15;
        }

        else
        {
          v43 = (v121 + 6 * v15);
          v44 = 2 * v15;
        }

        result = memcpy(v41, v43, v44);
        v31 = a5;
        if (v153)
        {
          v45 = (v40 + v111);
          v46 = (v42 + v111);
          v47 = *(v7 + 2152);
          if (v47 < 0)
          {
            v48 = -2 * v47;
            memcpy(&v45[v47], (v119 + v47 * v109), -2 * v47);
            v50 = &v46[v47];
            v49 = (v120 + v47 * v109);
          }

          else
          {
            v48 = 2 * v47;
            memcpy(v45, (v119 + v47 * v110), 2 * v47);
            v49 = (v120 + v47 * v110);
            v50 = v46;
          }

          result = memcpy(v50, v49, v48);
          v31 = a5;
        }
      }

      v51 = v36 & 0xFFFFFFFC | 2;
      if (v134 >= 1)
      {
        break;
      }

LABEL_137:
      v15 = *(v7 + 2144);
      v121 += 8 * v15;
      v108 = (8 * *(v7 + 2152)) >> (v153 == 1);
      v119 += v108;
      v120 += v108;
      v33 = *(v116 + 258544) ^ 1;
      *(v116 + 258544) = v33;
      v17 = v51 | 4;
      v31 = a5;
      v16 = v118;
      if (v118 >= a5)
      {
        return result;
      }
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    v124 = (v16 >> 1) & 0xF;
    v55 = a6 != 0;
    v56 = v16 == a4 && a6 != 0;
    v166 = v56;
    v133 = (v16 >> 3) & 2;
    if (v118 < v31)
    {
      v55 = 1;
    }

    v164 = v55;
    v167 = v33;
    v150 = (v168 + 24 * v33);
    v57 = 1;
    v58 = v120;
    v59 = v121;
    v60 = v119;
    while (1)
    {
      v61 = v52;
      v62 = a3 + 1348 * (v54 >> 1);
      v63 = *(v62 + (v54 & 1 | v133) + 1280);
      v149 = v54;
      v147 = v60;
      v148 = v59;
      v145 = v61;
      v146 = v58;
      if (v63 != -1)
      {
        v64 = *(v7 + 24) + v63;
        result = *(v64 + 849);
        v65 = *(v64 + 857);
        if (result | v65)
        {
          break;
        }
      }

      v57 = 1;
LABEL_58:
      v59 = v148 + 64;
      v60 = v147 + v131;
      v58 = v146 + v131;
      v54 = v149 + 1;
      v51 |= 1u;
      v52 = v145 + 16;
      if (v149 + 1 == v134)
      {
        goto LABEL_137;
      }
    }

    v161 = *(v62 + 4 * v124 + 1284);
    v66 = result & 3;
    if (v66 == 3)
    {
      v66 = 4;
    }

    v157 = v66;
    if ((v65 & 3) == 3)
    {
      v67 = 4;
    }

    else
    {
      v67 = v65 & 3;
    }

    v174 = v59;
    v175 = v60;
    v176[0] = v58;
    v68 = 16 * v54;
    v69 = v68 + 16;
    v70 = *(v7 + 3448);
    v160 = v68 + 16;
    if (v68 + 16 >= v70)
    {
      v69 = *(v7 + 3448);
    }

    if (v68 >= v69)
    {
      goto LABEL_58;
    }

    v71 = (result != 0) | (2 * (v65 != 0));
    v135 = result >> 2;
    v72 = v65 >> 2;
    v156 = result;
    v159 = v65;
    v74 = result > 3 || v65 > 3;
    v154 = v74;
    v75 = v58;
    v76 = v60;
    v155 = (result != 0) | (2 * (v65 != 0));
    while (1)
    {
      v77 = v61 + 2;
      if (v70 <= v61 + 2)
      {
        v78 = v51 & 0xFFFFFFFD;
      }

      else
      {
        v78 = v51;
      }

      if (((v161 >> (v61 & 0x1E)) & 3) == 0)
      {
        v57 = 1;
        goto LABEL_131;
      }

      v162 = v61 + 2;
      if (v57)
      {
        v79 = 3;
      }

      else
      {
        v79 = ~v53;
      }

      if (v79 & v71) != 0 && (v78)
      {
        result = sub_2775B60E8(&v176[6 * v172 + 1], &v174, v152, 0, v153, v79 & v71);
      }

      if ((v78 & 2) != 0)
      {
        result = sub_2775B60E8(&v176[6 * (v172 == 0) + 1], &v174, v152, 8u, v153, v71);
      }

      v80 = 0;
      v173 = 0;
      if (v154)
      {
        result = (*(v138 + 3296))(v59, *v152, &v173);
        v80 = result;
      }

      if (v171 > 1)
      {
        v82 = v157;
        if (v166)
        {
          if (v137 == v136)
          {
            v84 = *v128;
            v85 = v125;
          }

          else
          {
            v84 = *v129;
            v85 = v126;
          }

          v81 = v84 + v85;
          v83 = (4 * v61) & 0xFFFFFFF8;
          goto LABEL_101;
        }

        v81 = *v150;
        if (!v164)
        {
          v86 = (4 * v61) & 0xFFFFFFF8;
          v87 = v81 + v127 + v86;
          if (v137 == v136)
          {
            v88 = *v128;
            v89 = v122;
          }

          else
          {
            v88 = *v129;
            v89 = v123;
          }

          v90 = v89 + v86;
          goto LABEL_102;
        }
      }

      else
      {
        v81 = *v150;
        v82 = v157;
      }

      v83 = v143 + ((4 * v61) & 0xFFFFFFF8);
LABEL_101:
      v87 = v81 + v83;
      v88 = v174;
      v90 = v151;
LABEL_102:
      v91 = v88 + v90;
      if (v156 < 4)
      {
        if (v82)
        {
          result = (*v32)(v174, *v152, &v176[6 * v172 + 1], v87, v91, 0);
        }
      }

      else
      {
        if (v173)
        {
          if (v173 >= 0x40)
          {
            v94 = __clz(v173 >> 6) ^ 0x1F;
            if (v94 >= 0xC)
            {
              v94 = 12;
            }

            v92 = v94 + 4;
          }

          else
          {
            v92 = 4;
          }

          v93 = (v92 * v135 + 8) >> 4;
        }

        else
        {
          v93 = 0;
        }

        if (v93 | v82)
        {
          result = (*v32)(v174, *v152, &v176[6 * v172 + 1], v87, v91, v93);
        }
      }

      if (v159)
      {
        if (v159 < 4)
        {
          v95 = 0;
        }

        else
        {
          v95 = v130[v80];
        }

        v96 = 0;
        v97 = (4 * v61) >> v144;
        v98 = v141 + v97;
        v99 = v139 + v97;
        v163 = v142 + v97;
        v100 = v140 + v97;
        v101 = &v175;
        v102 = 1;
        do
        {
          v103 = v96;
          if (v171 > 1)
          {
            if (v166)
            {
              v105 = *(v165 + 8 * v102) + v99;
              v104 = *v101;
              goto LABEL_125;
            }

            v104 = *v101;
            if (!v164)
            {
              v105 = *(v168 + 24 * v167 + 8 * v102) + v163;
              v106 = *(v165 + 8 * v102) + v100;
              goto LABEL_126;
            }
          }

          else
          {
            v104 = *v101;
          }

          v105 = *(v168 + 24 * v167 + 8 * v102) + v98;
LABEL_125:
          v106 = v104 + v169;
LABEL_126:
          result = (v32[3 - v153])(v104, *(v35 + 2152), &v176[6 * v172 + 1 + 2 * v102], v105, v106, v72, v67, v95, __PAIR64__(v78, v170));
          v96 = 1;
          v101 = v176;
          v102 = 2;
        }

        while ((v103 & 1) == 0);
      }

      v57 = 0;
      v172 ^= 1uLL;
      v59 = v174;
      v76 = v175;
      v75 = v176[0];
      v71 = v155;
      v53 = v155;
      v7 = v35;
      v70 = *(v35 + 3448);
      v77 = v162;
LABEL_131:
      v59 += 8;
      v76 += v158;
      v174 = v59;
      v175 = v76;
      v75 += v158;
      v176[0] = v75;
      v51 = v78 | 1;
      v107 = v160;
      if (v160 >= v70)
      {
        v107 = v70;
      }

      v61 = v77;
      if (v107 <= v77)
      {
        goto LABEL_58;
      }
    }
  }

  return result;
}

uint64_t sub_2775B60E8(uint64_t result, void *a2, void *a3, unsigned int a4, int a5, char a6)
{
  if (a6)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *(result + v6) = *(*a2 + v7 + a4 - 2);
      v7 += *a3;
      v6 += 2;
    }

    while (v6 != 16);
  }

  if (a5 && (a6 & 2) != 0)
  {
    v8 = 0;
    v9 = 8u >> (a5 == 1);
    v10 = (a4 >> (a5 != 3)) - 2;
    v11 = (result + 32);
    do
    {
      *(v11 - 8) = *(a2[1] + v10 + v8);
      *v11++ = *(a2[2] + v10 + v8);
      v8 += a3[1];
      --v9;
    }

    while (v9);
  }

  return result;
}

_DWORD *sub_2775B6180(_DWORD *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, int a8, int a9, int a10, int a11, int a12, int a13)
{
  v15 = __dst;
  v16 = result;
  v17 = a13;
  v18 = *(result + 3);
  v40 = a10;
  if (*(v18 + 417))
  {
    v40 = (*(v18 + 240) + a12) >> a12;
  }

  v19 = 64 << (a7 & 1);
  if (a13)
  {
    v19 = 64;
  }

  if (a8)
  {
    v20 = 0;
  }

  else
  {
    v20 = -8;
  }

  v21 = (v19 + v20) >> a6;
  v22 = a5 >> 1;
  v23 = (a4 + 2 * (a5 >> 1) * (v21 - 2));
  if (*(*(result + 407) + 24) == 1)
  {
    if (a8)
    {
      v24 = 4 << a7;
      v25 = a3 >> 1;
      v26 = (2 * v40);
      v42 = a8;
      memcpy(__dst, &__dst[2 * (a3 >> 1) * (4 << a7)], v26);
      memcpy(&v15[a3], &v15[2 * v25 * (v24 | 1)], v26);
      memcpy(&v15[2 * a3], &v15[2 * v25 * (v24 | 2)], v26);
      result = memcpy(&v15[6 * v25], &v15[2 * v25 * (v24 | 3)], v26);
      v17 = a13;
      v22 = a5 >> 1;
      a8 = v42;
    }

    v15 += 4 * a3;
  }

  if (v17 && *(*(v16 + 3) + 236) != *(*(v16 + 3) + 240))
  {
    v33 = v21 + a8;
    if ((v21 + a8) <= a9)
    {
      v34 = a11 - 1;
      v35 = 0x40u >> a6;
      v36 = 2 * v22 * v35;
      do
      {
        if (v34 == v33)
        {
          v37 = 3;
        }

        else
        {
          v37 = 4;
        }

        LODWORD(v38) = v16[a12 + 812];
        HIDWORD(v38) = v16[1081];
        result = (*(*(v16 + 410) + 672))(v15, a3, v23, a5, v40, v37, a10, v16[a12 + 810], v38);
        v15 += 2 * (a3 >> 1) * v37;
        if (v34 == v33)
        {
          result = memcpy(v15, &v15[-2 * (a3 >> 1)], (2 * v40));
          v15 += a3;
        }

        v33 += v35;
        v23 += v36;
      }

      while (v33 <= a9);
    }
  }

  else
  {
    v27 = v21 + a8;
    if ((v21 + a8) <= a9)
    {
      v41 = 0x40u >> a6;
      v28 = v22 * ((0x40u >> a6) - 4);
      v29 = 2 * v22;
      do
      {
        if (v27 + 1 == a11)
        {
          v30 = 3;
        }

        else
        {
          v30 = 4;
        }

        v31 = 4;
        do
        {
          if (v30 + v31 == 4)
          {
            v32 = &v15[-a3];
          }

          else
          {
            v32 = v23;
          }

          result = memcpy(v15, v32, 2 * a10);
          v15 += a3;
          v23 += v29;
          --v31;
        }

        while (v31);
        v23 += 2 * v28;
        v27 += v41;
      }

      while (v27 <= a9);
    }
  }

  return result;
}

uint64_t sub_2775B648C(uint64_t a1)
{
  v2 = a1 + 258048;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v103 = *(*(v3 + 8) + 392);
  v5 = v103 == 0;
  v6 = *(v3 + 3256);
  __n = *(v3 + 3472);
  v7 = *(v4 + 13884);
  v8 = *(v4 + 13880);
  v9 = *(v3 + 24);
  v10 = *(v9 + 2 * v8 + 450);
  v101 = a1 + 258048;
  v102 = v6;
  if ((*(v9 + 232) & 1) == 0 && !*(v9 + 419))
  {
    goto LABEL_21;
  }

  v11 = *(v4 + 13864);
  v12 = *(v4 + 13868);
  v13 = *(v4 + 13872);
  v14 = *(v4 + 13876);
  v15 = *(a1 + 28);
  v16 = *(v3 + 3468);
  v17 = v15 >> v16;
  v18 = *(a1 + 258564);
  v19 = *(v3 + 4260);
  v20 = v19 == 1 ? 0 : *(v4 + 13884);
  *(a1 + 968) = *(v3 + 4224) + 80 * *(v3 + 4232) * v20;
  if (v19 <= 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    if (v18 == 2 && *(v3 + 4264) > 1)
    {
      v21 = 35 * *(v3 + 4248) * *(v3 + 4256);
    }
  }

  v22 = *(v3 + 4248);
  v23 = *(v3 + 4240) + 420 * v20 * v22 + 12 * v21;
  v24 = *(v3 + 4072);
  v25 = (v24 * v17) & 0x10;
  v26 = 3 * v22;
  if (v24 >= 1)
  {
    v27 = (a1 + ((((v24 * v17) >> 4) & 1) << 7) + 712);
    v28 = *(v3 + 4072);
    do
    {
      *v27++ = v23;
      v23 += 4 * v26;
      --v28;
    }

    while (v28);
  }

  v29 = a1 + 672;
  *(a1 + 672 + 8 * ((v24 * v17) & 0x10)) = v23;
  v30 = v23 + 4 * v26;
  *(a1 + 672 + 8 * (v25 | 1)) = 0;
  v31 = v25 | 2;
  *(a1 + 672 + 8 * (v25 | 2)) = v30;
  v32 = v30 + 4 * v26;
  *(a1 + 672 + 8 * (v25 | 3)) = 0;
  v33 = v25 | 4;
  *(a1 + 672 + 8 * (v25 | 4)) = v32;
  if (v17)
  {
    v34 = (v29 + 8 * (v25 + v24));
    *(v29 + 8 * v25) = *v34;
    *v34 = v23;
    v35 = *(v29 + 8 * v31);
    *(v29 + 8 * v31) = v34[2];
    v34[2] = v35;
    v36 = *(v29 + 8 * v33);
    *(v29 + 8 * v33) = v34[4];
    v34[4] = v36;
  }

  *(a1 + 664) = v3 + 4048;
  *(a1 + 984) = v13;
  if (v14 >= *(v3 + 4060))
  {
    v14 = *(v3 + 4060);
  }

  *(a1 + 988) = v14;
  *(a1 + 976) = v11;
  if (v12 >= *(v3 + 4056))
  {
    v12 = *(v3 + 4056);
  }

  *(a1 + 980) = v12;
  v37 = *(v3 + 24);
  if (*(v37 + 232))
  {
    if (*(v6 + 8) < 2u)
    {
      v38 = 0;
    }

    else
    {
      v39 = (*(v4 + 13944) + 56 * ((v15 - v13) >> v16));
      v40 = 7;
      do
      {
        memset_pattern16(v39, &unk_2775ED570, 8uLL);
        v39 += 8;
        --v40;
      }

      while (v40);
      v38 = (*(v37 + 232) & 1) == 0;
      v2 = v101;
      v6 = v102;
      v5 = v103 == 0;
    }
  }

  else
  {
LABEL_21:
    v38 = 1;
  }

  v41 = v10 >> v5;
  sub_2775B6D74((a1 + 32), v38, *(v2 + 516));
  if (*(v2 + 516) == 2)
  {
    v51 = *(v3 + 3456);
    if (*(v6 + 24) < 2u)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51 * *(*(v3 + 24) + 449);
    }

    v95 = *(v4 + 13864);
    *(a1 + 24) = v95;
    *(a1 + 656) = *(v3 + 4032) + 624 * v52 + 624 * v41 + 624 * v51 * v7;
    if (v95 < *(v4 + 13868))
    {
      while (!atomic_load_explicit(*(v6 + 848), memory_order_acquire) && !sub_2775B6DFC(a1, v5, *(&off_27A717528 + (v103 == 0)), v42, v43, v44, v45, v46))
      {
        v96 = *(a1 + 24);
        if ((v96 & 0x10) != 0 || *(*(v3 + 8) + 392))
        {
          *(a1 + 656) += 624;
        }

        v97 = v96 + __n;
        *(a1 + 24) = v97;
        if (v97 >= *(v4 + 13868))
        {
          goto LABEL_85;
        }
      }

      return 1;
    }

LABEL_85:
    (*(v3 + 3352))(a1);
    return 0;
  }

  v53 = *(v3 + 3256);
  if (*(v53 + 24) >= 2u && *(*(v3 + 24) + 437))
  {
    (*(v53 + 63000))(v3 + 4048, *(v4 + 13884), (*(v4 + 13864) >> 1), (*(v4 + 13868) >> 1), (*(a1 + 28) >> 1), ((*(a1 + 28) + __n) >> 1));
  }

  v54 = 0.0;
  *(a1 + 8240) = 0u;
  *(a1 + 8224) = 0u;
  v55 = *(a1 + 28) >> 5;
  v56 = *(v4 + 13864);
  *(a1 + 24) = v56;
  v57 = *(v3 + 3456);
  *(a1 + 656) = *(v3 + 4032) + 624 * v41 + 624 * v57 * v7;
  *(v2 + 488) = *(v3 + 4440) + 1348 * v57 * v55 + 1348 * v41;
  if (v56 < *(v4 + 13868))
  {
    v100 = v4;
    while (!atomic_load_explicit(*(v6 + 848), memory_order_acquire))
    {
      v58 = (*(v2 + 488) + 1280);
      if (v103)
      {
        *(v2 + 504) = v58;
        *v58 = -1;
        *(*(v2 + 504) + 1) = -1;
        *(*(v2 + 504) + 2) = -1;
        v59 = (*(v2 + 504) + 3);
      }

      else
      {
        v60 = vand_s8(vshl_u32(*(a1 + 24), 0xFFFFFFFDFFFFFFFCLL), 0x200000001);
        v47 = vdup_lane_s32(v60, 1);
        v54 = COERCE_DOUBLE(vorr_s8(v47, v60));
        v59 = &v58[LODWORD(v54)];
        *(v2 + 504) = v59;
      }

      v61 = 0;
      *v59 = -1;
      do
      {
        if ((*(v3 + 5352) >> v61))
        {
          if (v61)
          {
            v62 = *(v3 + 2168);
            v63 = v62 == 1;
            v64 = v62 != 3;
          }

          else
          {
            v63 = 0;
            v64 = 0;
          }

          v65 = *(v3 + 24);
          v66 = v61 ? v65 + 1 : *(v3 + 24);
          v67 = *(v66 + 880);
          v68 = *(a1 + 28);
          v69 = (4 * v68) >> v63;
          v70 = 1 << v67;
          v71 = (1 << v67) - 1;
          if ((v69 & v71) == 0 && (!v68 || v69 + (v70 >> 1) <= (*(v3 + 2164) + v63) >> v63))
          {
            v72 = v70 >> 1;
            v73 = *(v65 + 4 * v61 + 868);
            if (*(v65 + 236) == *(v65 + 240))
            {
              v74 = *(a1 + 24);
              v75 = (4 * v74) >> v64;
              if ((v75 & v71) == 0 && (!v74 || v75 + v72 <= (*(v3 + 2160) + v64) >> v64))
              {
                v76 = *(v3 + 3476) * (v68 >> 5) + (v74 >> 5);
                v77 = (v68 >> 3) & 2 | (v74 >> 4) & 1;
                sub_2775B7994(*(a1 + 16), *(v3 + 4448) + 108 * v76 + 36 * v61 + (v77 | (8 * v77)), v61, v73, v54, *&v47, v48, v49, v50);
              }
            }

            else
            {
              v78 = (((*(v3 + 2432) + v64) >> v64) + v72) >> v67;
              if (v78 <= 1)
              {
                v78 = 1;
              }

              v79 = *(v65 + 416);
              v80 = (8 << v67) - 1;
              v81 = *(a1 + 24);
              v82 = (((4 * v81 * v79) >> v64) + v80) >> (v67 + 3);
              v83 = (((4 * v79 * (v81 + __n)) >> v64) + v80) >> (v67 + 3);
              if (v83 >= v78)
              {
                v84 = v78;
              }

              else
              {
                v84 = v83;
              }

              if (v82 < v84)
              {
                v85 = v64 + v67;
                do
                {
                  v86 = *(a1 + 28);
                  v87 = (v86 >> 5) * *(v3 + 3476) + (v82 << v85 >> 7);
                  v88 = (v86 >> 3) & 2 | ((v82 << v85) >> 6) & 1;
                  sub_2775B7994(*(a1 + 16), *(v3 + 4448) + 108 * v87 + 36 * v61 + (v88 | (8 * v88)), v61, v73, v54, *&v47, v48, v49, v50);
                  ++v82;
                }

                while (v84 != v82);
              }
            }
          }
        }

        ++v61;
      }

      while (v61 != 3);
      if (sub_2775B6DFC(a1, v103 == 0, *(&off_27A717528 + (v103 == 0)), v42, v43, v44, v45, v46))
      {
        break;
      }

      v89 = *(a1 + 24);
      v2 = v101;
      if ((v89 & 0x10) != 0 || *(*(v3 + 8) + 392))
      {
        *(a1 + 656) += 624;
        *(v101 + 488) += 1348;
      }

      v90 = v89 + __n;
      *(a1 + 24) = v90;
      v4 = v100;
      v6 = v102;
      if (v90 >= *(v100 + 13868))
      {
        goto LABEL_69;
      }
    }

    return 1;
  }

LABEL_69:
  if (*(*(v3 + 8) + 401))
  {
    v91 = *(v3 + 3256);
    if (*(v91 + 24) >= 2u && (*(*(v3 + 24) + 232) & 1) != 0)
    {
      (*(v91 + 63008))(*(*(a1 + 664) + 160) + 5 * *(*(a1 + 664) + 184) * (*(a1 + 28) >> 1));
    }
  }

  if (*(v2 + 516) != 1)
  {
    (*(v3 + 3352))(a1);
  }

  v92 = (*(v3 + 3452) + 31) & 0xFFFFFFE0;
  memcpy((*(v3 + 5160) + *(a1 + 28) + v92 * v8), (a1 + (*(a1 + 28) & 0x10) + 512), __n);
  memcpy((*(v3 + 5168) + (*(a1 + 28) >> (*(v3 + 2168) == 1)) + (v92 >> (*(v3 + 2168) == 1)) * v8), (a1 + ((*(a1 + 28) & 0x10u) >> (*(v3 + 2168) == 1)) + 544), __n >> (*(v3 + 2168) == 1));
  v93 = *(v4 + 13852);
  if (v93 < -14)
  {
    return 1;
  }

  if (!*(v6 + 63072) || (*(a1 + 28) >> *(v3 + 3468)) + 1 < *(*(v3 + 24) + 2 * v7 + 582))
  {
    return 0;
  }

  v98 = (*(v4 + 13824) + ((-7 - v93) >> 3));
  result = 1;
  if (((2 * (0x80u >> ((1 - v93) & 7)) - 1) & *(v98 - 1)) == 0x80u >> ((1 - v93) & 7))
  {
    v99 = *(v4 + 13832);
    if (v98 < v99)
    {
      while (!*v98)
      {
        result = 0;
        if (++v98 >= v99)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

_OWORD *sub_2775B6D74(_OWORD *result, unsigned int a2, int a3)
{
  v3 = vdupq_n_s8(a2);
  result[14] = v3;
  result[15] = v3;
  result[35] = 0u;
  result[36] = 0u;
  if (a2)
  {
    *result = 0uLL;
    result[1] = 0uLL;
  }

  if (a3 != 2)
  {
    result[10] = 0uLL;
    result[11] = 0uLL;
    result[12] = 0uLL;
    result[13] = 0uLL;
    *&v4 = 0x202020202020202;
    *(&v4 + 1) = 0x202020202020202;
    result[30] = v4;
    result[31] = v4;
    *&v4 = 0x101010101010101;
    *(&v4 + 1) = 0x101010101010101;
    result[32] = v4;
    result[33] = v4;
    result[34] = 0uLL;
    *&v5 = -1;
    *(&v5 + 1) = -1;
    result[26] = v5;
    result[27] = v5;
    *&v6 = 0x404040404040404;
    *(&v6 + 1) = 0x404040404040404;
    result[28] = v6;
    result[29] = v6;
    if (!a2)
    {
      result[20] = v5;
      result[21] = v5;
      result[18] = v5;
      result[19] = v5;
      result[16] = 0uLL;
      result[17] = 0uLL;
      *result = 0uLL;
      result[1] = 0uLL;
    }

    *&v7 = 0x4040404040404040;
    *(&v7 + 1) = 0x4040404040404040;
    result[6] = v7;
    result[7] = v7;
    result[4] = v7;
    result[5] = v7;
    result[2] = v7;
    result[3] = v7;
    *&v7 = 0x303030303030303;
    *(&v7 + 1) = 0x303030303030303;
    result[22] = v7;
    result[23] = v7;
    result[24] = v7;
    result[25] = v7;
    result[8] = 0uLL;
    result[9] = 0uLL;
    result[37] = 0uLL;
    result[38] = 0uLL;
  }

  return result;
}

uint64_t sub_2775B6DFC(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = a1 + 32256;
  v12 = a1[1];
  v13 = *(*&v12 + 3448);
  v14 = a1[3].u32[0];
  v15 = a1[3].u32[1];
  v16 = *(*&v12 + 3452);
  v17 = 0x10u >> a2;
  v18 = v14 + (0x10u >> a2);
  v19 = v15 + (0x10u >> a2);
  v20 = v16 > v19;
  v22 = v13 <= v18;
  v21 = v13 > v18;
  v22 = v22 && v16 <= v19;
  if (v22)
  {
    do
    {
      v17 = 8u >> v9;
      v9 = (v9 + 1);
      a3 += *(a3 + 4);
      v20 = v16 > v15 + v17;
      v21 = v13 > v14 + v17;
    }

    while (v13 <= v14 + v17 && v16 <= v15 + v17);
  }

  if (a1[32320].i32[1] != 2)
  {
    v26 = (v14 >> 1) & 0xF;
    v25 = (v15 >> 1) & 0xF;
    v28 = v9;
    if (v21 && v20)
    {
      sub_27758434C(*&a1[2] + 13824, *&a1[2] + (v9 << 7) + 32 * ((*(*&a1[82] + v26 + 544) >> (4 - v9)) & 1 | (2 * ((a1[72].u8[v25] >> (4 - v9)) & 1u))) + 1248, byte_2775F13D9[v9]);
      if (*(*&v12 + 2168) == 2 && (v27 - 2) < 8 && ((0xB1u >> (v27 - 2)) & 1) != 0)
      {
        return 1;
      }

      goto LABEL_18;
    }

    if (v21)
    {
      sub_277584618();
      if (v40)
      {
LABEL_28:
        if (sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 4)]))
        {
          return 1;
        }

        a1[3].i32[0] += v17;
        if (sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 5)]))
        {
          return 1;
        }

        v38 = 0;
        a1[3].i32[0] -= v17;
        goto LABEL_57;
      }

LABEL_33:
      v41 = a3[1];
      v39 = 1;
      if (!sub_2775B7C18(a1, v9, byte_2775EF58E[20 * v9 + 2], 1, v41, a6, a7, a8))
      {
        v38 = 1;
        goto LABEL_72;
      }

      return 0xFFFFFFFFLL;
    }

    sub_277584618();
    if (*(*&v12 + 2168) == 2 && !v65)
    {
      return 1;
    }

LABEL_53:
    if (!v65)
    {
      v68 = a3[3];
      v39 = 2;
      if (sub_2775B7C18(a1, v9, byte_2775EF58E[20 * v9 + 4], 2, v68, a6, a7, a8))
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_71;
    }

    if (sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 4)]))
    {
      return 1;
    }

    a1[3].i32[1] += v17;
    if (sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 6)]))
    {
      return 1;
    }

    v38 = 0;
    a1[3].i32[1] -= v17;
LABEL_57:
    v39 = 3;
    goto LABEL_72;
  }

  if (!v21 || !v20)
  {
    LODWORD(v26) = 0;
    LODWORD(v25) = 0;
    if (v21)
    {
      if (v9 != *(*(*&v12 + 4360) + 32 * *(*&v12 + 3432) * v15 + 32 * v14))
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v65 = v9 != *(*(*&v12 + 4360) + 32 * *(*&v12 + 3432) * v15 + 32 * v14);
    goto LABEL_53;
  }

  v24 = (*(*&v12 + 4360) + 32 * *(*&v12 + 3432) * v15 + 32 * v14);
  if (v9 != *v24)
  {
    LODWORD(v26) = 0;
    LODWORD(v25) = 0;
    goto LABEL_46;
  }

  LODWORD(v25) = 0;
  LODWORD(v26) = 0;
  v27 = v24[2];
  v28 = v9;
LABEL_18:
  v29 = &byte_2775EF58E[20 * v28 + 2 * v27];
  if (v27 > 4)
  {
    if (v27 <= 6)
    {
      if (v27 == 5)
      {
        if (!sub_2775B7C18(a1, v9, *v29, 5, a3[1], a6, a7, a8))
        {
          a1[3].i32[1] += v17;
          v75 = v29[1];
          if (!sub_2775B7C18(a1, v9, v75, 5, a3[3], v72, v73, v74))
          {
            a1[3].i32[0] += v17;
            if (!sub_2775B7C18(a1, v9, v75, 5, 0, v76, v77, v78))
            {
              a1[3] = vsub_s32(a1[3], vdup_n_s32(v17));
              v38 = 1;
              v39 = 5;
              goto LABEL_72;
            }
          }
        }
      }

      else
      {
        v106 = *v29;
        if (!sub_2775B7C18(a1, v9, v106, 6, 63, a6, a7, a8))
        {
          a1[3].i32[1] += v17;
          if (!sub_2775B7C18(a1, v9, v106, 6, a3[2], v107, v108, v109))
          {
            v113 = a1[3].i32[1] - v17;
            a1[3].i32[0] += v17;
            a1[3].i32[1] = v113;
            if (!sub_2775B7C18(a1, v9, v29[1], 6, a3[4], v110, v111, v112))
            {
              a1[3].i32[0] -= v17;
              v38 = 1;
              v39 = 6;
              goto LABEL_72;
            }
          }
        }
      }
    }

    else
    {
      if (v27 != 7)
      {
        if (v27 != 8)
        {
          v90 = *v29;
          if (sub_2775B7C18(a1, v9, v90, 9, a3[3], a6, a7, a8))
          {
            return 0xFFFFFFFFLL;
          }

          v94 = 8u >> v9;
          a1[3].i32[0] += 8u >> v9;
          if (sub_2775B7C18(a1, v9, v90, 9, a3[6], v91, v92, v93))
          {
            return 0xFFFFFFFFLL;
          }

          a1[3].i32[0] += v94;
          if (sub_2775B7C18(a1, v9, v90, 9, 7, v95, v96, v97))
          {
            return 0xFFFFFFFFLL;
          }

          v101 = a1[3].i32[0] + v94;
          a1[3].i32[0] = v101;
          if (v101 < *(*&v12 + 3448))
          {
            if (sub_2775B7C18(a1, v9, v90, 9, a3[4], v98, v99, v100))
            {
              return 0xFFFFFFFFLL;
            }

            v101 = a1[3].i32[0];
          }

          a1[3].i32[0] = v101 - (v17 + v94);
          v38 = 1;
          v39 = 9;
          goto LABEL_72;
        }

        v42 = *v29;
        if (sub_2775B7C18(a1, v9, v42, 8, a3[1], a6, a7, a8))
        {
          return 0xFFFFFFFFLL;
        }

        v46 = 8u >> v9;
        a1[3].i32[1] += 8u >> v9;
        if (sub_2775B7C18(a1, v9, v42, 8, a3[5], v43, v44, v45))
        {
          return 0xFFFFFFFFLL;
        }

        a1[3].i32[1] += v46;
        if (sub_2775B7C18(a1, v9, v42, 8, 56, v47, v48, v49))
        {
          return 0xFFFFFFFFLL;
        }

        v53 = a1[3].i32[1] + v46;
        a1[3].i32[1] = v53;
        if (v53 < *(*&v12 + 3452))
        {
          if (sub_2775B7C18(a1, v9, v42, 8, a3[2], v50, v51, v52))
          {
            return 0xFFFFFFFFLL;
          }

          v53 = a1[3].i32[1];
        }

        a1[3].i32[1] = v53 - (v17 + v46);
        v38 = 1;
        v39 = 8;
        goto LABEL_72;
      }

      if (!sub_2775B7C18(a1, v9, *v29, 7, a3[3], a6, a7, a8))
      {
        a1[3].i32[0] += v17;
        v86 = v29[1];
        if (!sub_2775B7C18(a1, v9, v86, 7, a3[1], v83, v84, v85))
        {
          a1[3].i32[1] += v17;
          if (!sub_2775B7C18(a1, v9, v86, 7, 0, v87, v88, v89))
          {
            a1[3] = vsub_s32(a1[3], vdup_n_s32(v17));
            v38 = 1;
            v39 = 7;
            goto LABEL_72;
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      v102 = *v29;
      if (!sub_2775B7C18(a1, v9, v102, 1, a3[1], a6, a7, a8))
      {
        a1[3].i32[1] += v17;
        if (!sub_2775B7C18(a1, v9, v102, 1, a3[2], v103, v104, v105))
        {
          a1[3].i32[1] -= v17;
          v38 = 1;
          v39 = 1;
          goto LABEL_72;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (sub_2775B7C18(a1, v9, *v29, 0, *a3, a6, a7, a8))
    {
      return 0xFFFFFFFFLL;
    }

    v39 = 0;
LABEL_71:
    v38 = 1;
    goto LABEL_72;
  }

  if (v27 == 2)
  {
    v79 = *v29;
    if (!sub_2775B7C18(a1, v9, v79, 2, a3[3], a6, a7, a8))
    {
      a1[3].i32[0] += v17;
      if (!sub_2775B7C18(a1, v9, v79, 2, a3[4], v80, v81, v82))
      {
        a1[3].i32[0] -= v17;
        v38 = 1;
        v39 = 2;
        goto LABEL_72;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v27 == 3)
  {
LABEL_46:
    if (v9 == 4)
    {
      if (sub_2775B7C18(a1, 4, 21, 3, 63, a6, a7, a8))
      {
        return 0xFFFFFFFFLL;
      }

      v57 = v11[64].i32[0];
      ++a1[3].i32[0];
      if (sub_2775B7C18(a1, 4, 21, 3, a3[5], v54, v55, v56))
      {
        return 0xFFFFFFFFLL;
      }

      a1[3] = vadd_s32(a1[3], 0x1FFFFFFFFLL);
      if (sub_2775B7C18(a1, 4, 21, 3, a3[6], v58, v59, v60))
      {
        return 0xFFFFFFFFLL;
      }

      ++a1[3].i32[0];
      v11[64].i32[0] = v57;
      if (sub_2775B7C18(a1, 4, 21, 3, a3[7], v61, v62, v63))
      {
        return 0xFFFFFFFFLL;
      }

      v38 = 0;
      v64 = vadd_s32(a1[3], -1);
      goto LABEL_116;
    }

    if (!sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 4)]))
    {
      a1[3].i32[0] += v17;
      if (!sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 5)]))
      {
        v66 = a1[3].i32[1] + v17;
        a1[3].i32[0] -= v17;
        a1[3].i32[1] = v66;
        if (!sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 6)]))
        {
          a1[3].i32[0] += v17;
          if (!sub_2775B6DFC(a1, (v9 + 1), &a3[*(a3 + 7)]))
          {
            v38 = 0;
            v64 = vsub_s32(a1[3], vdup_n_s32(v17));
LABEL_116:
            a1[3] = v64;
            goto LABEL_57;
          }
        }
      }
    }

    return 1;
  }

  v30 = *v29;
  if (sub_2775B7C18(a1, v9, v30, 4, 63, a6, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  a1[3].i32[0] += v17;
  if (sub_2775B7C18(a1, v9, v30, 4, a3[4], v31, v32, v33))
  {
    return 0xFFFFFFFFLL;
  }

  v37 = a1[3].i32[1] + v17;
  a1[3].i32[0] -= v17;
  a1[3].i32[1] = v37;
  if (sub_2775B7C18(a1, v9, v29[1], 4, a3[2], v34, v35, v36))
  {
    return 0xFFFFFFFFLL;
  }

  a1[3].i32[1] -= v17;
  v38 = 1;
  v39 = 4;
LABEL_72:
  result = 0;
  v69 = v38 ^ 1;
  if (v9 == 4)
  {
    v69 = 0;
  }

  if ((v69 & 1) == 0 && v11[64].i32[1] != 2)
  {
    result = 0;
    if (v17 <= 3)
    {
      if (v17 == 1)
      {
        result = 0;
        v117 = &unk_2775EF5F2 + 10 * v9 + v39;
        *(*&a1[82] + v26 + 544) = *v117;
        a1[72].i8[v25] = v117[50];
      }

      else if (v17 == 2)
      {
        result = 0;
        v114 = &unk_2775EF5F2 + 10 * v9 + v39;
        *(*&a1[82] + v26 + 544) = *v114 | (*v114 << 8);
        *(a1[72].i16 + v25) = v114[50] | (v114[50] << 8);
      }
    }

    else
    {
      switch(v17)
      {
        case 4:
          result = 0;
          v115 = &unk_2775EF5F2 + 10 * v9 + v39;
          *(*&a1[82] + v26 + 544) = 16843009 * *v115;
          *(a1[72].i32 + v25) = 16843009 * v115[50];
          break;
        case 8:
          result = 0;
          v116 = &unk_2775EF5F2 + 10 * v9 + v39;
          *(*&a1[82] + v26 + 544) = 0x101010101010101 * *v116;
          *(&a1[72] + v25) = (0x101010101010101 * v116[50]);
          break;
        case 16:
          result = 0;
          v70 = &unk_2775EF5F2 + 10 * v9 + v39;
          v71 = 0x101010101010101 * *v70;
          *(*&a1[82] + v26 + 544) = v71;
          *(*&a1[82] + v26 + 552) = v71;
          *&a1[72].i8[v25] = vdupq_n_s64(0x101010101010101 * v70[50]);
          break;
      }
    }
  }

  return result;
}

void sub_2775B7994(int16x4_t *a1, uint64_t a2, unsigned int a3, int a4, double a5, double a6, double a7, double a8, uint16x8_t a9)
{
  if (a4 == 1)
  {
    v12 = sub_2775840FC(&a1[1728], a1 + 672, 2, a5, a6, a7, a8, a9);
    if (v12)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = a4;
    v14 = 5388;
    if (a4 == 2)
    {
      v14 = 5384;
    }

    sub_277584658(&a1[1728], (a1 + v14));
    if (!v15)
    {
      *a2 = 0;
      return;
    }
  }

  *a2 = v13;
  if (v13 == 2)
  {
    if (a3)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_2775CB7F4(&a1[1728], *(*&a1[1823] + 4) + 5, 16, 1) - 5;
    }

    *(a2 + 4) = v24;
    v30 = a1 + 1823;
    *(a2 + 5) = sub_2775CB7F4(&a1[1728], *(*&a1[a3 + 1823] + 5) + 23, 32, 2) - 23;
    *(a2 + 6) = sub_2775CB7F4(&a1[1728], *(*&a1[a3 + 1823] + 6) + 17, 64, 3) - 17;
    if (a3)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_2775CB7F4(&a1[1728], *(*v30 + 1) + 5, 16, 1) - 5;
    }

    *(a2 + 1) = v31;
    *(a2 + 2) = sub_2775CB7F4(&a1[1728], *(*&v30[a3] + 2) + 23, 32, 2) - 23;
    *(a2 + 3) = sub_2775CB7F4(&a1[1728], *(*&v30[a3] + 3) + 17, 64, 3) - 17;
    *(a2 + 7) = *(*&v30[a3] + 7);
    v30[a3] = a2;
  }

  else if (v13 == 3)
  {
    v16 = 0;
    v17 = -4;
    do
    {
      sub_2775845E0();
      v16 = v18 | (2 * v16);
    }

    while (!__CFADD__(v17++, 1));
    v20 = (&unk_277601B00 + 4 * v16);
    *a2 += v16;
    v21 = *v20;
    v22 = &a1[a3];
    if (*v20)
    {
      LOBYTE(v21) = sub_2775CB7F4(&a1[1728], *(*&v22[1823] + 7) + 96, 128, 4) - 96;
    }

    *(a2 + 7) = v21;
    if (v20[1])
    {
      v23 = sub_2775CB7F4(&a1[1728], *(*&v22[1823] + 8) + 32, 128, 4) - 32;
    }

    else
    {
      v23 = 95;
    }

    *(a2 + 8) = v23;
    v25 = &a1[a3];
    v26 = v25[1823];
    v27 = *(*&v26 + 4);
    *(a2 + 6) = *(*&v26 + 6);
    *(a2 + 4) = v27;
    v28 = v25[1823];
    v29 = *(*&v28 + 1);
    *(a2 + 3) = *(*&v28 + 3);
    *(a2 + 1) = v29;
    v25[1823] = a2;
  }
}

uint64_t sub_2775B7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  __b = v12;
  v17 = v8;
  v1004 = *MEMORY[0x277D85DE8];
  v18 = *(v8 + 8);
  v991 = *(v8 + 16);
  v988 = (v8 + 258048);
  v19 = *(v8 + 258564);
  v20 = *(v8 + 28);
  if (v19)
  {
    v993 = (*(v18 + 4360) + 32 * *(v18 + 3432) * v20 + 32 * *(v8 + 24));
    v21 = *(v8 + 24);
  }

  else
  {
    v21 = *(v8 + 24);
    v993 = v996;
  }

  v22 = &byte_277601B40[4 * v10];
  v23 = v21 & 0x1F;
  v24 = *(v18 + 2168);
  v25 = *v22;
  v986 = v22;
  v26 = v22[1];
  v27 = *(v18 + 3448) - v21;
  if (v25 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v29 = *(v18 + 3452) - v20;
  if (v26 < v29)
  {
    v29 = v26;
  }

  v967 = v29;
  v30 = v24 != 3;
  if (v24 == 3)
  {
    v31 = v25;
  }

  else
  {
    v31 = v25 + 1;
  }

  v32 = v24 == 1;
  v982 = v23 >> v30;
  v989 = v20 & 0x1F;
  v981 = v989 >> v32;
  v992 = v26;
  if (v24 == 1)
  {
    v33 = v26 + 1;
  }

  else
  {
    v33 = v26;
  }

  v968 = *(v991 + 13864);
  v964 = *(v991 + 13872);
  v975 = v20;
  if (v24 && (v25 > v30 || (v21 & 1) != 0))
  {
    if (v26 <= v32)
    {
      v34 = v20 & 1;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
  }

  v979 = v31 >> v30;
  v35 = v33 >> v32;
  v36 = 0.0;
  memset(v996, 0, sizeof(v996));
  v987 = v21 & 0x1F;
  v990 = v10;
  if (v19 != 2)
  {
    v985 = v25;
    *v993 = v9;
    *(v993 + 2) = v11;
    *(v993 + 1) = v10;
    v40 = *(v18 + 24);
    v980 = v34;
    v959 = v28;
    v960 = v24 == 1;
    v947 = v24 != 3;
    v951 = v21 > v968;
    __dst = v20 > v964;
    v954 = v24;
    if (v40[722])
    {
      if (!v40[723])
      {
        v56 = *(v18 + 2824);
        if (v56)
        {
          v57 = *(v18 + 3432);
          v58 = v56 + v57 * v20 + v21;
          v59 = 8;
          v60 = v967;
          do
          {
            if (v28 >= 1)
            {
              for (i = 0; i != v28; ++i)
              {
                if (v59 >= *(v58 + i))
                {
                  v59 = *(v58 + i);
                }
              }
            }

            v49 = __OFSUB__(v60--, 1);
            if ((v60 < 0) ^ v49 | (v60 == 0))
            {
              break;
            }

            v58 += v57;
          }

          while (v59);
          *(v993 + 4) = v59;
          LODWORD(v44) = v59;
        }

        else
        {
          LODWORD(v44) = 0;
          *(v993 + 4) = 0;
        }

        v962 = 0;
        goto LABEL_163;
      }

      if (v40[806])
      {
        v41 = v20;
        v42 = v21;
        if (v40[724])
        {
          sub_277584658(v991 + 13824, (v991 + 4 * (*(v17 + v989 + 160) + *(*(v17 + 656) + v23 + 128)) + 6036));
          if (v43)
          {
            v962 = v43;
            v44 = *(v18 + 2824);
            if (v44)
            {
              v45 = *(v18 + 3432);
              v40 = *(v18 + 24);
              v46 = v44 + v45 * *(v17 + 28) + *(v17 + 24);
              LODWORD(v44) = 8;
              v47 = v967;
              LODWORD(v10) = v990;
              do
              {
                if (v959 >= 1)
                {
                  for (j = 0; j != v959; ++j)
                  {
                    if (v44 >= *(v46 + j))
                    {
                      LODWORD(v44) = *(v46 + j);
                    }
                  }
                }

                v49 = __OFSUB__(v47--, 1);
                if ((v47 < 0) ^ v49 | (v47 == 0))
                {
                  break;
                }

                v46 += v45;
              }

              while (v44);
              *(v993 + 4) = v44;
              goto LABEL_162;
            }

            *(v993 + 4) = 0;
            v40 = *(v18 + 24);
LABEL_161:
            LODWORD(v10) = v990;
LABEL_162:
            LODWORD(v44) = v44;
LABEL_163:
            v51 = &v40[10 * v44 + 726];
            if (v40[10 * v44 + 734] || v40[10 * v44 + 732] != 255 || v40[10 * v44 + 733])
            {
              *(v993 + 5) = 0;
              v66 = v993 + 5;
              goto LABEL_167;
            }

            v62 = 0;
LABEL_69:
            if (v985 >= v992)
            {
              v63 = v992;
            }

            else
            {
              v63 = v985;
            }

            if (v40[890] && v63 > 1)
            {
              v64 = v51;
              sub_277584658(v991 + 13824, (v991 + 4 * (*(v17 + v989 + 224) + *(*(v17 + 656) + v23 + 192)) + 6024));
              *(v993 + 5) = v65;
              v66 = v993 + 5;
              if (v65)
              {
                v67 = 1;
                LODWORD(v10) = v990;
                v51 = v64;
LABEL_170:
                *(v993 + 6) = v67;
                v109 = *(v18 + 24);
                if (!v109[722] || !v109[723] || v109[806])
                {
                  goto LABEL_258;
                }

                if (!v67 && v109[724])
                {
                  sub_277584658(v991 + 13824, (v991 + 4 * (*(v17 + v989 + 160) + *(*(v17 + 656) + v23 + 128)) + 6036));
                  if (v122)
                  {
                    v962 = v122;
                    v123 = *(v18 + 2824);
                    LODWORD(v10) = v990;
                    if (v123)
                    {
                      v124 = *(v18 + 3432);
                      v125 = v123 + v124 * *(v17 + 28) + *(v17 + 24);
                      v126 = 8;
                      v127 = v967;
                      do
                      {
                        if (v959 >= 1)
                        {
                          for (k = 0; k != v959; ++k)
                          {
                            if (v126 >= *(v125 + k))
                            {
                              v126 = *(v125 + k);
                            }
                          }
                        }

                        v49 = __OFSUB__(v127--, 1);
                        if ((v127 < 0) ^ v49 | (v127 == 0))
                        {
                          break;
                        }

                        v125 += v124;
                      }

                      while (v126);
                      LODWORD(v123) = v126;
                    }

LABEL_257:
                    *(v993 + 4) = v123;
                    v109 = *(v18 + 24);
                    v51 = &v109[10 * v123 + 726];
                    v67 = *(v993 + 6);
LABEL_258:
                    v963 = v35;
                    v961 = v21;
                    if (!v67)
                    {
                      if (*(*(v18 + 8) + 392))
                      {
                        v162 = vand_s8(vshl_u32(*(v17 + 24), 0xFFFFFFFDFFFFFFFCLL), 0x200000001);
                        v13 = vdup_lane_s32(v162, 1);
                        v36 = COERCE_DOUBLE(vorr_s8(v13, v162));
                        v163 = LODWORD(v36);
                      }

                      else
                      {
                        v163 = 0;
                      }

                      v164 = v988[63];
                      if (*(*&v164 + v163) == 255)
                      {
                        v165 = v109[848];
                        if (v109[848])
                        {
                          v935 = v66;
                          v166 = v51;
                          v167 = 0;
                          do
                          {
                            --v165;
                            sub_2775845E0();
                            v167 = v168 | (2 * v167);
                          }

                          while (v165);
                          v164 = v988[63];
                          LODWORD(v10) = v990;
                          v51 = v166;
                          v66 = v935;
                        }

                        else
                        {
                          v167 = 0;
                        }

                        *(*&v164 + v163) = v167;
                        v35 = v963;
                        if (v985 >= 0x11)
                        {
                          *(*&v988[63] + v163 + 1) = v167;
                        }

                        if (v992 >= 0x11)
                        {
                          *(*&v988[63] + v163 + 2) = v167;
                          if (v985 == 32 && v992 == 32)
                          {
                            *(*&v988[63] + v163 + 3) = v167;
                          }
                        }
                      }
                    }

                    v169 = v10;
                    v170 = 0x1Fu >> (*(*(v18 + 8) + 392) == 0);
                    v171 = v980;
                    if ((v170 & *(v17 + 24)) != 0 || (*(v17 + 28) & v170) != 0)
                    {
                      goto LABEL_343;
                    }

                    v957 = v51;
                    v172 = *(v991 + 14056);
                    v173 = *(v18 + 24);
                    if (v173[824])
                    {
                      if (*(*(v18 + 8) + 392))
                      {
                        v174 = 0;
                      }

                      else
                      {
                        v174 = 3;
                      }

                      if (v174 == v10)
                      {
                        v175 = *(v993 + 6);
                        v939 = (v991 + 14060);
                        LODWORD(v998) = *(v991 + 14060);
                        v176 = v172;
                        if (v175)
                        {
                          goto LABEL_333;
                        }
                      }

                      else
                      {
                        v939 = (v991 + 14060);
                        LODWORD(v998) = *(v991 + 14060);
                      }

                      v932 = v172;
                      v971 = v18;
                      v177 = sub_2775840FC(v991 + 13824, (v991 + 5296), 3, v36, *&v13, v14, v15, v16);
                      if (v177 == 3)
                      {
                        v183 = 0;
                        v184 = -3;
                        do
                        {
                          sub_2775845E0();
                          v183 = v185 | (2 * v183);
                          v230 = __CFADD__(v184++, 1);
                        }

                        while (!v230);
                        v186 = 0;
                        v230 = __CFADD__(v183, 1);
                        v187 = v183 + 1;
                        if (!v230)
                        {
                          v188 = v187;
                          do
                          {
                            --v188;
                            sub_2775845E0();
                            v186 = v189 | (2 * v186);
                          }

                          while (v188);
                        }

                        v177 = (1 << v187) + v186 + 1;
                        v35 = v963;
                      }

                      if (v177)
                      {
                        v190 = v991;
                        sub_2775845E0();
                        if (v191)
                        {
                          v192 = -v177;
                        }

                        else
                        {
                          v192 = v177;
                        }

                        v18 = v971;
                        v173 = *(v971 + 24);
                        v193 = v192 << v173[825];
                      }

                      else
                      {
                        v193 = 0;
                        v18 = v971;
                        v173 = *(v971 + 24);
                        v190 = v991;
                      }

                      v194 = *(v190 + 14056) + v193;
                      if (v194 >= 255)
                      {
                        v194 = 255;
                      }

                      if (v194 <= 1)
                      {
                        v176 = 1;
                      }

                      else
                      {
                        v176 = v194;
                      }

                      *(v190 + 14056) = v176;
                      if (v173[826])
                      {
                        v936 = v66;
                        v942 = v17;
                        if (v173[828])
                        {
                          if (*(v18 + 2168))
                          {
                            v195 = 4;
                          }

                          else
                          {
                            v195 = 2;
                          }
                        }

                        else
                        {
                          v195 = 1;
                        }

                        v196 = 0;
                        v197 = v991 + 14060;
                        do
                        {
                          v198 = sub_2775840FC(v991 + 13824, (v991 + 5304 + 8 * (v196 + *(*(v18 + 24) + 828))), 3, v178, v179, v180, v181, v182);
                          if (v198 == 3)
                          {
                            v199 = 0;
                            v200 = -3;
                            do
                            {
                              sub_2775845E0();
                              v199 = v201 | (2 * v199);
                              v230 = __CFADD__(v200++, 1);
                            }

                            while (!v230);
                            v202 = 0;
                            v203 = v199 + 1;
                            if (v199 != -1)
                            {
                              v204 = v199 + 1;
                              do
                              {
                                --v204;
                                sub_2775845E0();
                                v202 = v205 | (2 * v202);
                              }

                              while (v204);
                            }

                            v198 = (1 << v203) + v202 + 1;
                            v35 = v963;
                            v23 = v987;
                          }

                          if (v198)
                          {
                            sub_2775845E0();
                            if (v206)
                            {
                              v207 = -v198;
                            }

                            else
                            {
                              v207 = v198;
                            }

                            v18 = v971;
                            v208 = v207 << *(*(v971 + 24) + 827);
                          }

                          else
                          {
                            v208 = 0;
                            v18 = v971;
                          }

                          v209 = v208 + *(v197 + v196);
                          if (v209 >= 63)
                          {
                            v209 = 63;
                          }

                          if (v209 <= -63)
                          {
                            LOBYTE(v209) = -63;
                          }

                          *(v197 + v196++) = v209;
                        }

                        while (v196 != v195);
                        v176 = *(v991 + 14056);
                        v173 = *(v18 + 24);
                        v17 = v942;
                        v171 = v980;
                        v66 = v936;
                      }

                      else
                      {
                        v171 = v980;
                      }

                      v172 = v932;
                    }

                    else
                    {
                      v939 = (v991 + 14060);
                      LODWORD(v998) = *(v991 + 14060);
                      v176 = v172;
                    }

LABEL_333:
                    if (v176 == v173[712])
                    {
                      v210 = v18;
                      v211 = v18 + 3480;
                    }

                    else
                    {
                      v212 = v939;
                      if (v176 == v172)
                      {
LABEL_338:
                        v995[1] = 0;
                        if (*v212)
                        {
                          LODWORD(v10) = v990;
                          v51 = v957;
                          if (*v212 == v998)
                          {
                            goto LABEL_343;
                          }

                          v214 = v171;
                          v215 = v169;
                          v216 = v18;
                          v217 = v991;
                          v218 = v991 + 14064;
                          v219 = v216;
                          sub_2775E2C2C((v991 + 14064), *(v216 + 24), v212);
                          v51 = v957;
                          LODWORD(v10) = v990;
                        }

                        else
                        {
                          v214 = v171;
                          v215 = v169;
                          v219 = v18;
                          v218 = v18 + 4644;
                          v217 = v991;
                          LODWORD(v10) = v990;
                          v51 = v957;
                        }

                        *(v217 + 14576) = v218;
                        v18 = v219;
                        v169 = v215;
                        v171 = v214;
LABEL_343:
                        v220 = v985;
                        if (*v66)
                        {
LABEL_344:
                          *(v993 + 3) = 0;
                          v958 = v993 + 3;
                          goto LABEL_345;
                        }

                        v251 = *(v18 + 24);
                        if (*(v251 + 232))
                        {
                          if (v51)
                          {
                            v266 = v51[6];
                            if ((v266 & 0x80000000) == 0)
                            {
                              *(v993 + 3) = v266 == 0;
                              v958 = v993 + 3;
                              if (!v266)
                              {
                                goto LABEL_588;
                              }

                              goto LABEL_345;
                            }

                            if (v51[8])
                            {
                              goto LABEL_344;
                            }
                          }

                          v423 = v66;
                          v424 = v171;
                          v425 = *(v17 + 656);
                          v426 = v51;
                          if (v961 <= v968)
                          {
                            if (v975 <= v964)
                            {
                              v428 = 0;
                            }

                            else
                            {
                              v428 = 2 * *(v425 + v23 + 224);
                            }
                          }

                          else
                          {
                            v427 = *(v17 + v989 + 256);
                            if (v975 <= v964)
                            {
                              v428 = 2 * v427;
                            }

                            else
                            {
                              v428 = *(v425 + v23 + 224) + v427;
                              if (v428 == 2)
                              {
                                v428 = 3;
                              }
                            }
                          }

                          sub_277584658(v991 + 13824, (v991 + 4 * v428 + 5620));
                          *(v993 + 3) = v455 == 0;
                          v958 = v993 + 3;
                          LODWORD(v10) = v990;
                          v51 = v426;
                          v171 = v424;
                          v66 = v423;
                          if (!v455)
                          {
                            goto LABEL_588;
                          }
                        }

                        else
                        {
                          if (!*(v251 + 419))
                          {
                            *(v993 + 3) = 1;
                            v958 = v993 + 3;
                            goto LABEL_588;
                          }

                          v252 = v66;
                          v253 = v171;
                          v254 = v51;
                          sub_277584658(v991 + 13824, (v991 + 6228));
                          v51 = v254;
                          v171 = v253;
                          v66 = v252;
                          LODWORD(v10) = v990;
                          *(v993 + 3) = v255 == 0;
                          v958 = v993 + 3;
                          if (!v255)
                          {
LABEL_588:
                            if (*(*(v18 + 24) + 232))
                            {
                              v457 = v991 + 32 * byte_2775EF66A[v169];
                              v232 = v989;
                            }

                            else
                            {
                              v456 = v991 + 160 * byte_2775EF680[*(*(v17 + 656) + v23)];
                              v232 = v989;
                              v457 = v456 + 32 * byte_2775EF680[*(v17 + v989 + 32)] + 6240;
                            }

                            sub_27758434C(v991 + 13824, v457, 12);
                            *(v993 + 8) = v458;
                            v464 = v986[2];
                            v465 = v986[3];
                            v466 = v465 + v464;
                            if ((v465 + v464) < 2 || (v467 = v458 - 1, v467 > 7))
                            {
                              v469 = 0;
                            }

                            else
                            {
                              sub_27758428C(v991 + 13824, (v991 + 16 * v467 + 3232), 6);
                              v469 = v468 - 3;
                            }

                            v470 = v990;
                            *(v993 + 13) = v469;
                            v973 = v18;
                            if (v171)
                            {
                              v977 = v464;
                              v471 = v171;
                              v472 = v232;
                              if (*(*(v18 + 24) + *(v993 + 4) + 808))
                              {
                                v473 = v169;
                                v475 = v979 == 1 && v963 == 1;
                              }

                              else
                              {
                                v473 = v169;
                                v475 = (0x3FFB80u >> v990) & 1;
                              }

                              sub_27758434C(v991 + 13824, v991 + 416 * v475 + 32 * *(v993 + 8) + 128, v475 | 0xC);
                              *(v993 + 9) = v476;
                              *(v993 + 14) = 0;
                              if (v476 == 13)
                              {
                                sub_27758428C(v991 + 13824, (v991 + 3216), 7);
                                v478 = 86 * (v477 + 1);
                                v479 = v478 >> 8;
                                v480 = -3 * (v478 >> 8) + v477 + 1;
                                if (v478 >= 0x100)
                                {
                                  if (v479 == 2)
                                  {
                                    v484 = 3;
                                  }

                                  else
                                  {
                                    v484 = 0;
                                  }

                                  sub_27758434C(v991 + 13824, v991 + 32 * (v484 + v480) + 1888, 15);
                                  v481 = ~v485;
                                  if (v479 != 1)
                                  {
                                    v481 = v485 + 1;
                                  }
                                }

                                else
                                {
                                  v481 = 0;
                                }

                                LODWORD(v464) = v977;
                                *(v993 + 15) = v481;
                                v169 = v473;
                                if (v480)
                                {
                                  if (v480 == 2)
                                  {
                                    v486 = 3;
                                  }

                                  else
                                  {
                                    v486 = 0;
                                  }

                                  sub_27758434C(v991 + 13824, v991 + 32 * (v486 + v479) + 1888, 15);
                                  v488 = ~v487;
                                  if (v480 != 1)
                                  {
                                    v488 = v487 + 1;
                                  }

                                  *(v993 + 16) = v488;
                                }

                                else
                                {
                                  *(v993 + 16) = 0;
                                }

                                v18 = v973;
                                v171 = v980;
                                v232 = v989;
                                v470 = v990;
                              }

                              else
                              {
                                v470 = v990;
                                v169 = v473;
                                v232 = v472;
                                v171 = v471;
                                LODWORD(v464) = v977;
                                if (v466 >= 2)
                                {
                                  v482 = v476 - 1;
                                  if (v482 <= 7)
                                  {
                                    sub_27758428C(v991 + 13824, (v991 + 16 * v482 + 3232), 6);
                                    v470 = v990;
                                    *(v993 + 14) = v483 - 3;
                                  }
                                }
                              }
                            }

                            *(v993 + 11) = 0;
                            if (*(*(v18 + 24) + 268))
                            {
                              v505 = v985 <= v992 ? v992 : v985;
                              if (v505 <= 0x10 && (v992 + v985) >= 4)
                              {
                                v506 = v466 - 2;
                                if (!*(v993 + 8))
                                {
                                  v507 = *(*(v17 + 656) + v987 + 592) ? (*(v17 + v232 + 624) != 0) + 1 : *(v17 + v232 + 624) != 0;
                                  sub_277584658(v991 + 13824, (v991 + 12 * v506 + 4 * v507 + 6136));
                                  v470 = v990;
                                  if (v508)
                                  {
                                    (*(v18 + 3384))(v17, v993, 0, v506, v987, v232);
                                    v470 = v990;
                                  }
                                }

                                if (v171)
                                {
                                  if (!*(v993 + 9))
                                  {
                                    sub_277584658(v991 + 13824, (v991 + 4 * (*(v993 + 11) != 0) + 6220));
                                    v470 = v990;
                                    if (v509)
                                    {
                                      (*(v18 + 3392))(v17, v993, v506, v987, v232);
                                      v470 = v990;
                                    }
                                  }
                                }
                              }
                            }

                            if (!*(v993 + 8))
                            {
                              if (*(v993 + 11))
                              {
LABEL_691:
                                v510 = v988[64].i32[1];
                                if (v510)
                                {
                                  v511 = v991 + 24 * (v510 & 1);
                                  v512 = *(v511 + 13896);
                                  v513 = v985;
                                  *(v511 + 13896) = v512 + (8 * v985 * v992);
                                }

                                else
                                {
                                  v512 = v17 + 11392;
                                  v513 = v985;
                                }

                                sub_2775BF050(v17, v512, v993, 0, v959, v967, v513, v992);
                                v470 = v990;
                                goto LABEL_695;
                              }

                              if (v464 <= v465)
                              {
                                v519 = v465;
                              }

                              else
                              {
                                v519 = v464;
                              }

                              if (v519 > 3)
                              {
LABEL_695:
                                if (v171 && *(v993 + 12))
                                {
                                  v514 = v988[64].i32[1];
                                  if (v514)
                                  {
                                    v515 = v991 + 24 * (v514 & 1);
                                    v516 = *(v515 + 13896);
                                    v517 = v963;
                                    v518 = v979;
                                    *(v515 + 13896) = v516 + (8 * v979 * v963);
                                  }

                                  else
                                  {
                                    v516 = v17 + 13440;
                                    v517 = v963;
                                    v518 = v979;
                                  }

                                  sub_2775BF050(v17, v516, v993, 1u, (v959 + v947) >> v947, (v967 + v960) >> v960, v518, v517);
                                  v470 = v990;
                                }

                                if (*(*(v18 + 24) + *(v993 + 4) + 808))
                                {
                                  *(v993 + 7) = 0;
                                  *(v993 + 10) = 0;
                                  v522 = &unk_277601B98;
                                }

                                else
                                {
                                  v523 = &byte_2775EF68D[4 * v169];
                                  v524 = *v523;
                                  *(v993 + 10) = v524;
                                  *(v993 + 7) = v523[*(v18 + 2168)];
                                  v522 = &unk_277601B98 + 8 * v524;
                                  if (*(*(v18 + 24) + 884) == 2)
                                  {
                                    v525 = v522[5];
                                    if (v522[5])
                                    {
                                      v526 = *(*(v17 + 656) + v987 + 416) >= v522[2];
                                      if (*(v17 + v232 + 448) >= v522[3])
                                      {
                                        ++v526;
                                      }

                                      v527 = (v991 + 24 * (v525 - 1) + 8 * v526);
                                      if (v525 >= 2)
                                      {
                                        v528 = 2;
                                      }

                                      else
                                      {
                                        v528 = v522[5];
                                      }

                                      v529 = sub_2775840FC(v991 + 13824, v527 + 628, v528, v459, v460, v461, v462, v463);
                                      v470 = v990;
                                      if (v529)
                                      {
                                        do
                                        {
                                          v524 = *(&unk_277601B98 + 8 * v524 + 6);
                                          *(v993 + 10) = v524;
                                          --v529;
                                        }

                                        while (v529);
                                        v522 = &unk_277601B98 + 8 * v524;
                                      }
                                    }
                                  }
                                }

                                if (v988[64].i32[1] == 1)
                                {
                                  (*(v18 + 3360))(v17, v470, v993);
                                }

                                else
                                {
                                  (*(v18 + 3288))(v17, v470, __b, v993);
                                }

                                v530 = *(v18 + 24);
                                if (!*(v530 + 830) && !*(v530 + 831))
                                {
                                  goto LABEL_835;
                                }

                                v531 = v988[61];
                                v532 = *(v973 + 4432);
                                v533 = *(v973 + 3432);
                                v534 = (*(v991 + 14576) + (*(v993 + 4) << 6));
                                v535 = *(v17 + 24);
                                v536 = *(v17 + 28);
                                v537 = v535;
                                v538 = v536;
                                v539 = *(v973 + 3440);
                                v540 = *(v973 + 3444);
                                v541 = *(v993 + 7);
                                v542 = *(v973 + 2168);
                                v543 = *(v17 + 656);
                                if (v980)
                                {
                                  v544 = (v543 + v982 + 512);
                                }

                                else
                                {
                                  v544 = 0;
                                }

                                if (v980)
                                {
                                  v545 = (v17 + v981 + 544);
                                }

                                else
                                {
                                  v545 = 0;
                                }

                                v546 = *v986;
                                if (v539 - v535 >= v546)
                                {
                                  v547 = *v986;
                                }

                                else
                                {
                                  v547 = (v539 - v535);
                                }

                                v548 = v986[1];
                                if (v540 - v536 >= v548)
                                {
                                  v549 = v986[1];
                                }

                                else
                                {
                                  v549 = (v540 - v536);
                                }

                                v550 = *(v17 + 24) & 0x1F;
                                v551 = *(v17 + 28) & 0x1F;
                                if (!v547 || !v549)
                                {
LABEL_809:
                                  v232 = v989;
                                  if (v980)
                                  {
                                    v612 = v542 != 3;
                                    v613 = v542 == 3 ? v539 : v539 + 1;
                                    v614 = v613 >> v612;
                                    v615 = v537 >> v612;
                                    v616 = v542 == 3 ? v546 : v546 + 1;
                                    v617 = v614 - v615;
                                    v618 = v616 >> v612;
                                    v619 = v617 >= v618 ? v618 : v617;
                                    v620 = v542 == 1;
                                    v621 = v542 == 1 ? v540 + 1 : v540;
                                    v622 = v621 >> v620;
                                    v623 = v538 >> v620;
                                    v624 = v542 == 1 ? v548 + 1 : v548;
                                    v625 = v622 - v623;
                                    v626 = v624 >> v620;
                                    v627 = v625 >= v626 ? v626 : v625;
                                    if (v619 && v627)
                                    {
                                      v628 = 0;
                                      v629 = 4 * v533 * v623 + 4 * v615 + v532 + 3;
                                      do
                                      {
                                        v630 = v629;
                                        v631 = v619;
                                        do
                                        {
                                          *(v630 - 1) = v534[32];
                                          *v630 = v534[48];
                                          v630 += 4;
                                          --v631;
                                        }

                                        while (v631);
                                        ++v628;
                                        v629 += 4 * v533;
                                      }

                                      while (v628 != v627);
                                      sub_2775E251C((*&v531 + 768), v551 >> v620, v550 >> (v542 != 3), v619, v627, 0, v541, v544, v545, v542 != 3, 0, 0, v620);
                                    }
                                  }

LABEL_835:
                                  if (*(v993 + 8) == 13)
                                  {
                                    v632 = 0;
                                  }

                                  else
                                  {
                                    v632 = *(v993 + 8);
                                  }

                                  if (v992 > 7)
                                  {
                                    v35 = v963;
                                    v171 = v980;
                                    v220 = v985;
                                    v633 = v962;
                                    if (v992 == 8)
                                    {
                                      v657 = 0;
                                      v658 = 0x101010101010101 * v522[3];
                                      v659 = (v17 + v232);
                                      v659[56] = v658;
                                      v659[60] = v658;
                                      v659[4] = 0x101010101010101 * v632;
                                      v659[78] = 0x101010101010101 * *(v993 + 11);
                                      v659[20] = 0x101010101010101 * v962;
                                      v659[28] = 0;
                                      v659[32] = 0x101010101010101;
                                      v659[24] = 0x101010101010101 * *(v993 + 6);
                                      v18 = v973;
                                      if (v980)
                                      {
                                        v657 = 0x101010101010101 * *(v993 + 12);
                                      }

                                      v659[1028] = v657;
                                      if (*(*(v973 + 24) + 232))
                                      {
                                        v660 = (v17 + v232);
                                        v660[36] = 0;
                                        v660[40] = -1;
                                        v660[44] = -1;
                                        v660[48] = 0x303030303030303;
                                        v660[52] = 0x303030303030303;
                                      }
                                    }

                                    else
                                    {
                                      v18 = v973;
                                      if (v992 == 16)
                                      {
                                        v665 = 0;
                                        v666 = vdupq_n_s64(0x101010101010101 * v522[3]);
                                        v667 = (v17 + v232);
                                        v667[28] = v666;
                                        v667[30] = v666;
                                        v667[2] = vdupq_n_s64(0x101010101010101 * v632);
                                        v667[39] = vdupq_n_s64(0x101010101010101 * *(v993 + 11));
                                        v667[10] = vdupq_n_s64(0x101010101010101 * v962);
                                        v667[14].i64[0] = 0;
                                        v667[14].i64[1] = 0;
                                        v666.i64[0] = 0x101010101010101;
                                        v666.i64[1] = 0x101010101010101;
                                        v667[16] = v666;
                                        v667[12] = vdupq_n_s64(0x101010101010101 * *(v993 + 6));
                                        if (v980)
                                        {
                                          v665 = 0x101010101010101 * *(v993 + 12);
                                        }

                                        v667[514] = vdupq_n_s64(v665);
                                        if (*(*(v973 + 24) + 232))
                                        {
                                          v668 = v17 + v232;
                                          *(v668 + 288) = 0;
                                          *(v668 + 296) = 0;
                                          *&v669 = -1;
                                          *(&v669 + 1) = -1;
                                          *(v668 + 320) = v669;
                                          *(v668 + 352) = v669;
                                          *&v669 = 0x303030303030303;
                                          *(&v669 + 1) = 0x303030303030303;
                                          *(v668 + 384) = v669;
                                          *(v668 + 416) = v669;
                                        }
                                      }

                                      else if (v992 == 32)
                                      {
                                        v638 = v17 + 32;
                                        v639 = v17 + 448;
                                        v640 = vdupq_n_s64(0x101010101010101 * v522[3]);
                                        *(v639 + v232) = v640;
                                        v641 = v232 + 16;
                                        *(v639 + v641) = v640;
                                        v642 = v17 + 480;
                                        *(v642 + v232) = v640;
                                        *(v642 + v641) = v640;
                                        v643 = vdupq_n_s64(0x101010101010101 * v632);
                                        *(v638 + v232) = v643;
                                        *(v638 + v641) = v643;
                                        v644 = v17 + 624;
                                        v645 = vdupq_n_s64(0x101010101010101 * *(v993 + 11));
                                        *(v644 + v232) = v645;
                                        *(v644 + v641) = v645;
                                        v646 = v17 + 160;
                                        v647 = vdupq_n_s64(0x101010101010101 * v962);
                                        *(v646 + v232) = v647;
                                        *(v646 + v641) = v647;
                                        v648 = v17 + 224;
                                        *(v648 + v232) = 0u;
                                        *(v648 + v641) = 0u;
                                        v649 = v17 + 256;
                                        v647.i64[0] = 0x101010101010101;
                                        v647.i64[1] = 0x101010101010101;
                                        *(v649 + v232) = v647;
                                        *(v649 + v641) = v647;
                                        v650 = v17 + 192;
                                        v651 = vdupq_n_s64(0x101010101010101 * *(v993 + 6));
                                        *(v650 + v232) = v651;
                                        *(v650 + v641) = v651;
                                        v652 = v980 ? 0x101010101010101 * *(v993 + 12) : 0;
                                        v670 = v17 + 8224;
                                        v671 = vdupq_n_s64(v652);
                                        *(v670 + v232) = v671;
                                        *(v670 + v641) = v671;
                                        if (*(*(v973 + 24) + 232))
                                        {
                                          v672 = v17 + 288;
                                          *(v672 + v232) = 0u;
                                          *(v672 + v641) = 0u;
                                          v673 = v17 + 320;
                                          *&v674 = -1;
                                          *(&v674 + 1) = -1;
                                          *(v673 + v232) = v674;
                                          *(v673 + v641) = v674;
                                          v675 = v17 + 352;
                                          *(v675 + v232) = v674;
                                          *(v675 + v641) = v674;
                                          v676 = v17 + 384;
                                          *&v674 = 0x303030303030303;
                                          *(&v674 + 1) = 0x303030303030303;
                                          *(v676 + v232) = v674;
                                          *(v676 + v641) = v674;
                                          v677 = v17 + 416;
                                          *(v677 + v232) = v674;
                                          *(v677 + v641) = v674;
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v35 = v963;
                                    v171 = v980;
                                    v220 = v985;
                                    v633 = v962;
                                    if (v992 == 1)
                                    {
                                      v653 = 0;
                                      v654 = v522[3];
                                      v655 = (v17 + v232);
                                      v655[448] = v654;
                                      v655[480] = v654;
                                      v655[32] = v632;
                                      v655[624] = *(v993 + 11);
                                      v655[160] = v962;
                                      v655[224] = 0;
                                      v655[256] = 1;
                                      v655[192] = *(v993 + 6);
                                      v18 = v973;
                                      if (v980)
                                      {
                                        v653 = *(v993 + 12);
                                      }

                                      v655[8224] = v653;
                                      if (*(*(v973 + 24) + 232))
                                      {
                                        v656 = (v17 + v232);
                                        v656[288] = 0;
                                        v656[320] = -1;
                                        v656[352] = -1;
                                        v656[384] = 3;
                                        v656[416] = 3;
                                      }
                                    }

                                    else
                                    {
                                      v18 = v973;
                                      if (v992 == 2)
                                      {
                                        v661 = 0;
                                        v662 = v522[3] | (v522[3] << 8);
                                        v663 = (v17 + v232);
                                        v663[224] = v662;
                                        v663[240] = v662;
                                        v663[16] = v632 | (v632 << 8);
                                        v663[312] = *(v993 + 11) | (*(v993 + 11) << 8);
                                        v663[80] = 257 * v962;
                                        v663[112] = 0;
                                        v663[128] = 257;
                                        v663[96] = *(v993 + 6) | (*(v993 + 6) << 8);
                                        if (v980)
                                        {
                                          v661 = *(v993 + 12) | (*(v993 + 12) << 8);
                                        }

                                        v663[4112] = v661;
                                        if (*(*(v973 + 24) + 232))
                                        {
                                          v664 = (v17 + v232);
                                          v664[144] = 0;
                                          v664[160] = -1;
                                          v664[176] = -1;
                                          v664[192] = 771;
                                          v664[208] = 771;
                                        }
                                      }

                                      else if (v992 == 4)
                                      {
                                        v634 = 0;
                                        v635 = 16843009 * v522[3];
                                        v636 = (v17 + v232);
                                        v636[112] = v635;
                                        v636[120] = v635;
                                        v636[8] = 16843009 * v632;
                                        v636[156] = 16843009 * *(v993 + 11);
                                        v636[40] = 16843009 * v962;
                                        v636[56] = 0;
                                        v636[64] = 16843009;
                                        v636[48] = 16843009 * *(v993 + 6);
                                        if (v980)
                                        {
                                          v634 = 16843009 * *(v993 + 12);
                                        }

                                        v636[2056] = v634;
                                        if (*(*(v973 + 24) + 232))
                                        {
                                          v637 = (v17 + v232);
                                          v637[72] = 0;
                                          v637[80] = -1;
                                          v637[88] = -1;
                                          v637[96] = 50529027;
                                          v637[104] = 50529027;
                                        }
                                      }
                                    }
                                  }

                                  if (v220 > 7)
                                  {
                                    switch(v220)
                                    {
                                      case 8:
                                        v693 = 0;
                                        v694 = 0x101010101010101 * v522[2];
                                        *(*(v17 + 656) + v987 + 416) = v694;
                                        *(*(v17 + 656) + v987 + 448) = v694;
                                        *(*(v17 + 656) + v987) = 0x101010101010101 * v632;
                                        *(*(v17 + 656) + v987 + 592) = 0x101010101010101 * *(v993 + 11);
                                        *(*(v17 + 656) + v987 + 128) = 0x101010101010101 * v633;
                                        *(*(v17 + 656) + v987 + 192) = 0;
                                        *(*(v17 + 656) + v987 + 224) = 0x101010101010101;
                                        *(*(v17 + 656) + v987 + 160) = 0x101010101010101 * *(v993 + 6);
                                        if (v171)
                                        {
                                          v693 = 0x101010101010101 * *(v993 + 12);
                                        }

                                        *(v17 + v987 + 0x2000) = v693;
                                        if (*(*(v18 + 24) + 232))
                                        {
                                          *(*(v17 + 656) + v987 + 256) = 0;
                                          *(*(v17 + 656) + v987 + 288) = -1;
                                          *(*(v17 + 656) + v987 + 320) = -1;
                                          *(*(v17 + 656) + v987 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v987 + 384) = 0x303030303030303;
                                        }

                                        break;
                                      case 0x10:
                                        v697 = 0;
                                        v698 = 0x101010101010101 * v522[2];
                                        *(*(v17 + 656) + v987 + 416) = v698;
                                        v699 = v987 + 8;
                                        *(*(v17 + 656) + v699 + 416) = v698;
                                        *(*(v17 + 656) + v987 + 448) = v698;
                                        *(*(v17 + 656) + v699 + 448) = v698;
                                        v700 = 0x101010101010101 * v632;
                                        *(*(v17 + 656) + v987) = v700;
                                        *(*(v17 + 656) + v699) = v700;
                                        v701 = 0x101010101010101 * *(v993 + 11);
                                        *(*(v17 + 656) + v987 + 592) = v701;
                                        *(*(v17 + 656) + v699 + 592) = v701;
                                        v702 = 0x101010101010101 * v633;
                                        *(*(v17 + 656) + v987 + 128) = v702;
                                        *(*(v17 + 656) + v699 + 128) = v702;
                                        *(*(v17 + 656) + v987 + 192) = 0;
                                        *(*(v17 + 656) + v699 + 192) = 0;
                                        *(*(v17 + 656) + v987 + 224) = 0x101010101010101;
                                        *(*(v17 + 656) + v699 + 224) = 0x101010101010101;
                                        v703 = 0x101010101010101 * *(v993 + 6);
                                        *(*(v17 + 656) + v987 + 160) = v703;
                                        *(*(v17 + 656) + v699 + 160) = v703;
                                        if (v171)
                                        {
                                          v697 = 0x101010101010101 * *(v993 + 12);
                                        }

                                        *(v17 + v987 + 0x2000) = vdupq_n_s64(v697);
                                        if (*(*(v18 + 24) + 232))
                                        {
                                          *(*(v17 + 656) + v987 + 256) = 0;
                                          *(*(v17 + 656) + v699 + 256) = 0;
                                          *(*(v17 + 656) + v987 + 288) = -1;
                                          *(*(v17 + 656) + v699 + 288) = -1;
                                          *(*(v17 + 656) + v987 + 320) = -1;
                                          *(*(v17 + 656) + v699 + 320) = -1;
                                          *(*(v17 + 656) + v987 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v699 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v987 + 384) = 0x303030303030303;
                                          *(*(v17 + 656) + v699 + 384) = 0x303030303030303;
                                        }

                                        break;
                                      case 0x20:
                                        v680 = 0;
                                        v681 = 0x101010101010101 * v522[2];
                                        *(*(v17 + 656) + v987 + 416) = v681;
                                        v682 = v987 + 8;
                                        *(*(v17 + 656) + v682 + 416) = v681;
                                        v683 = v987 + 16;
                                        *(*(v17 + 656) + v683 + 416) = v681;
                                        v684 = v987 + 24;
                                        *(*(v17 + 656) + v684 + 416) = v681;
                                        *(*(v17 + 656) + v987 + 448) = v681;
                                        *(*(v17 + 656) + v682 + 448) = v681;
                                        *(*(v17 + 656) + v683 + 448) = v681;
                                        *(*(v17 + 656) + v684 + 448) = v681;
                                        v685 = 0x101010101010101 * v632;
                                        *(*(v17 + 656) + v987) = v685;
                                        *(*(v17 + 656) + v682) = v685;
                                        *(*(v17 + 656) + v683) = v685;
                                        *(*(v17 + 656) + v684) = v685;
                                        v686 = 0x101010101010101 * *(v993 + 11);
                                        *(*(v17 + 656) + v987 + 592) = v686;
                                        *(*(v17 + 656) + v682 + 592) = v686;
                                        *(*(v17 + 656) + v683 + 592) = v686;
                                        *(*(v17 + 656) + v684 + 592) = v686;
                                        v687 = 0x101010101010101 * v633;
                                        *(*(v17 + 656) + v987 + 128) = v687;
                                        *(*(v17 + 656) + v682 + 128) = v687;
                                        *(*(v17 + 656) + v683 + 128) = v687;
                                        *(*(v17 + 656) + v684 + 128) = v687;
                                        *(*(v17 + 656) + v987 + 192) = 0;
                                        *(*(v17 + 656) + v682 + 192) = 0;
                                        *(*(v17 + 656) + v683 + 192) = 0;
                                        *(*(v17 + 656) + v684 + 192) = 0;
                                        *(*(v17 + 656) + v987 + 224) = 0x101010101010101;
                                        *(*(v17 + 656) + v682 + 224) = 0x101010101010101;
                                        *(*(v17 + 656) + v683 + 224) = 0x101010101010101;
                                        *(*(v17 + 656) + v684 + 224) = 0x101010101010101;
                                        v688 = 0x101010101010101 * *(v993 + 6);
                                        *(*(v17 + 656) + v987 + 160) = v688;
                                        *(*(v17 + 656) + v682 + 160) = v688;
                                        *(*(v17 + 656) + v683 + 160) = v688;
                                        *(*(v17 + 656) + v684 + 160) = v688;
                                        if (v171)
                                        {
                                          v680 = 0x101010101010101 * *(v993 + 12);
                                        }

                                        v689 = v17 + 0x2000;
                                        v690 = vdupq_n_s64(v680);
                                        *(v689 + v987) = v690;
                                        *(v689 + v683) = v690;
                                        if (*(*(v18 + 24) + 232))
                                        {
                                          *(*(v17 + 656) + v987 + 256) = 0;
                                          *(*(v17 + 656) + v682 + 256) = 0;
                                          *(*(v17 + 656) + v683 + 256) = 0;
                                          *(*(v17 + 656) + v684 + 256) = 0;
                                          *(*(v17 + 656) + v987 + 288) = -1;
                                          *(*(v17 + 656) + v682 + 288) = -1;
                                          *(*(v17 + 656) + v683 + 288) = -1;
                                          *(*(v17 + 656) + v684 + 288) = -1;
                                          *(*(v17 + 656) + v987 + 320) = -1;
                                          *(*(v17 + 656) + v682 + 320) = -1;
                                          *(*(v17 + 656) + v683 + 320) = -1;
                                          *(*(v17 + 656) + v684 + 320) = -1;
                                          *(*(v17 + 656) + v987 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v682 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v683 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v684 + 352) = 0x303030303030303;
                                          *(*(v17 + 656) + v987 + 384) = 0x303030303030303;
                                          *(*(v17 + 656) + v682 + 384) = 0x303030303030303;
                                          *(*(v17 + 656) + v683 + 384) = 0x303030303030303;
                                          *(*(v17 + 656) + v684 + 384) = 0x303030303030303;
                                        }

                                        break;
                                    }
                                  }

                                  else
                                  {
                                    switch(v220)
                                    {
                                      case 1:
                                        v691 = 0;
                                        v692 = v522[2];
                                        *(*(v17 + 656) + v987 + 416) = v692;
                                        *(*(v17 + 656) + v987 + 448) = v692;
                                        *(*(v17 + 656) + v987) = v632;
                                        *(*(v17 + 656) + v987 + 592) = *(v993 + 11);
                                        *(*(v17 + 656) + v987 + 128) = v633;
                                        *(*(v17 + 656) + v987 + 192) = 0;
                                        *(*(v17 + 656) + v987 + 224) = 1;
                                        *(*(v17 + 656) + v987 + 160) = *(v993 + 6);
                                        if (v171)
                                        {
                                          v691 = *(v993 + 12);
                                        }

                                        *(v17 + v987 + 0x2000) = v691;
                                        if (*(*(v18 + 24) + 232))
                                        {
                                          *(*(v17 + 656) + v987 + 256) = 0;
                                          *(*(v17 + 656) + v987 + 288) = -1;
                                          *(*(v17 + 656) + v987 + 320) = -1;
                                          *(*(v17 + 656) + v987 + 352) = 3;
                                          *(*(v17 + 656) + v987 + 384) = 3;
                                        }

                                        break;
                                      case 2:
                                        v695 = 0;
                                        v696 = v522[2] | (v522[2] << 8);
                                        *(*(v17 + 656) + v987 + 416) = v696;
                                        *(*(v17 + 656) + v987 + 448) = v696;
                                        *(*(v17 + 656) + v987) = v632 | (v632 << 8);
                                        *(*(v17 + 656) + v987 + 592) = *(v993 + 11) | (*(v993 + 11) << 8);
                                        *(*(v17 + 656) + v987 + 128) = 257 * v633;
                                        *(*(v17 + 656) + v987 + 192) = 0;
                                        *(*(v17 + 656) + v987 + 224) = 257;
                                        *(*(v17 + 656) + v987 + 160) = *(v993 + 6) | (*(v993 + 6) << 8);
                                        if (v171)
                                        {
                                          v695 = *(v993 + 12) | (*(v993 + 12) << 8);
                                        }

                                        *(v17 + v987 + 0x2000) = v695;
                                        if (*(*(v18 + 24) + 232))
                                        {
                                          *(*(v17 + 656) + v987 + 256) = 0;
                                          *(*(v17 + 656) + v987 + 288) = -1;
                                          *(*(v17 + 656) + v987 + 320) = -1;
                                          *(*(v17 + 656) + v987 + 352) = 771;
                                          *(*(v17 + 656) + v987 + 384) = 771;
                                        }

                                        break;
                                      case 4:
                                        v678 = 0;
                                        v679 = 16843009 * v522[2];
                                        *(*(v17 + 656) + v987 + 416) = v679;
                                        *(*(v17 + 656) + v987 + 448) = v679;
                                        *(*(v17 + 656) + v987) = 16843009 * v632;
                                        *(*(v17 + 656) + v987 + 592) = 16843009 * *(v993 + 11);
                                        *(*(v17 + 656) + v987 + 128) = 16843009 * v633;
                                        *(*(v17 + 656) + v987 + 192) = 0;
                                        *(*(v17 + 656) + v987 + 224) = 16843009;
                                        *(*(v17 + 656) + v987 + 160) = 16843009 * *(v993 + 6);
                                        if (v171)
                                        {
                                          v678 = 16843009 * *(v993 + 12);
                                        }

                                        *(v17 + v987 + 0x2000) = v678;
                                        if (*(*(v18 + 24) + 232))
                                        {
                                          *(*(v17 + 656) + v987 + 256) = 0;
                                          *(*(v17 + 656) + v987 + 288) = -1;
                                          *(*(v17 + 656) + v987 + 320) = -1;
                                          *(*(v17 + 656) + v987 + 352) = 50529027;
                                          *(*(v17 + 656) + v987 + 384) = 50529027;
                                        }

                                        break;
                                    }
                                  }

                                  if (*(v993 + 11))
                                  {
                                    (*(v18 + 3368))(v17, v987, v232, v220, v992);
                                  }

                                  v704 = v990;
                                  if (v171)
                                  {
                                    if (v35 > 7)
                                    {
                                      switch(v35)
                                      {
                                        case 8:
                                          *(v17 + v981 + 592) = 0x101010101010101 * *(v993 + 9);
                                          break;
                                        case 16:
                                          *(v17 + v981 + 592) = vdupq_n_s64(0x101010101010101 * *(v993 + 9));
                                          break;
                                        case 32:
                                          v705 = vdupq_n_s64(0x101010101010101 * *(v993 + 9));
                                          *(v17 + 592 + v981) = v705;
                                          *(v17 + 592 + v981 + 16) = v705;
                                          break;
                                      }
                                    }

                                    else
                                    {
                                      switch(v35)
                                      {
                                        case 1:
                                          *(v17 + v981 + 592) = *(v993 + 9);
                                          break;
                                        case 2:
                                          *(v17 + v981 + 592) = *(v993 + 9) | (*(v993 + 9) << 8);
                                          break;
                                        case 4:
                                          *(v17 + v981 + 592) = 16843009 * *(v993 + 9);
                                          break;
                                      }
                                    }

                                    if (v979 > 7)
                                    {
                                      switch(v979)
                                      {
                                        case 8:
                                          *(*(v17 + 656) + v982 + 560) = 0x101010101010101 * *(v993 + 9);
                                          break;
                                        case 16:
                                          v707 = 0x101010101010101 * *(v993 + 9);
                                          *(*(v17 + 656) + v982 + 560) = v707;
                                          *(*(v17 + 656) + v982 + 568) = v707;
                                          break;
                                        case 32:
                                          v706 = 0x101010101010101 * *(v993 + 9);
                                          *(*(v17 + 656) + v982 + 560) = v706;
                                          *(*(v17 + 656) + v982 + 568) = v706;
                                          *(*(v17 + 656) + v982 + 576) = v706;
                                          *(*(v17 + 656) + v982 + 584) = v706;
                                          break;
                                      }
                                    }

                                    else
                                    {
                                      switch(v979)
                                      {
                                        case 1:
                                          *(*(v17 + 656) + v982 + 560) = *(v993 + 9);
                                          break;
                                        case 2:
                                          *(*(v17 + 656) + v982 + 560) = *(v993 + 9) | (*(v993 + 9) << 8);
                                          break;
                                        case 4:
                                          *(*(v17 + 656) + v982 + 560) = 16843009 * *(v993 + 9);
                                          break;
                                      }
                                    }

                                    if (*(v993 + 12))
                                    {
                                      (*(v18 + 3376))(v17, v987, v232, v220, v992);
                                      v704 = v990;
                                    }
                                  }

                                  v708 = *(v18 + 24);
                                  if ((*(v708 + 232) & 1) != 0 || *(v708 + 419))
                                  {
                                    v709 = *(v18 + 3256);
                                    v998 = 2147516416;
                                    LOWORD(v999) = -256;
                                    HIWORD(v999) = v704;
                                    (*(v709 + 63016))(v17 + 8 * (*(v17 + 28) & 0x1FLL) + 712, &v998, *(v17 + 24), v220, v992);
                                  }

LABEL_935:
                                  v710 = *(v18 + 24);
                                  if (*(v710 + 722) && *(v710 + 723))
                                  {
                                    v711 = (*(v18 + 2816) + *(v18 + 3432) * *(v17 + 28) + *(v17 + 24));
                                    if (v220 > 7)
                                    {
                                      switch(v220)
                                      {
                                        case 8:
                                          if (!v992)
                                          {
                                            goto LABEL_975;
                                          }

                                          v717 = v992;
                                          do
                                          {
                                            *v711 = 0x101010101010101 * *(v993 + 4);
                                            v711 = (v711 + *(v18 + 3432));
                                            --v717;
                                          }

                                          while (v717);
                                          break;
                                        case 0x10:
                                          if (!v992)
                                          {
                                            goto LABEL_975;
                                          }

                                          v719 = v992;
                                          do
                                          {
                                            v720 = 0x101010101010101 * *(v993 + 4);
                                            *v711 = v720;
                                            v711[1] = v720;
                                            v711 = (v711 + *(v18 + 3432));
                                            --v719;
                                          }

                                          while (v719);
                                          break;
                                        case 0x20:
                                          if (!v992)
                                          {
                                            goto LABEL_975;
                                          }

                                          v713 = v992;
                                          do
                                          {
                                            v714 = 0x101010101010101 * *(v993 + 4);
                                            *v711 = v714;
                                            v711[1] = v714;
                                            v711[2] = v714;
                                            v711[3] = v714;
                                            v711 = (v711 + *(v18 + 3432));
                                            --v713;
                                          }

                                          while (v713);
                                          break;
                                      }
                                    }

                                    else
                                    {
                                      switch(v220)
                                      {
                                        case 1:
                                          if (!v992)
                                          {
                                            goto LABEL_975;
                                          }

                                          v715 = *(v993 + 4);
                                          v716 = v992;
                                          do
                                          {
                                            *v711 = v715;
                                            v711 = (v711 + *(v18 + 3432));
                                            --v716;
                                          }

                                          while (v716);
                                          break;
                                        case 2:
                                          if (!v992)
                                          {
                                            goto LABEL_975;
                                          }

                                          v718 = v992;
                                          do
                                          {
                                            *v711 = *(v993 + 4) | (*(v993 + 4) << 8);
                                            v711 = (v711 + *(v18 + 3432));
                                            --v718;
                                          }

                                          while (v718);
                                          break;
                                        case 4:
                                          if (!v992)
                                          {
                                            goto LABEL_975;
                                          }

                                          v712 = v992;
                                          do
                                          {
                                            *v711 = 16843009 * *(v993 + 4);
                                            v711 = (v711 + *(v18 + 3432));
                                            --v712;
                                          }

                                          while (v712);
                                          break;
                                      }
                                    }
                                  }

                                  if (*(v993 + 6))
                                  {
                                    v721 = 1;
                                  }

                                  else
                                  {
                                    v721 = v992 == 0;
                                  }

                                  if (!v721)
                                  {
                                    v722 = 0;
                                    v723 = 0xFFFFFFFF >> -v220 << (v961 & 0xF);
                                    v724 = v988[61];
                                    do
                                    {
                                      v726 = ((4 * (v232 >> 1)) | (2 * ((v961 >> 4) & 1))) + *&v724 + 1284;
                                      *(v726 + 2 * v722) |= v723;
                                      if (v220 == 32)
                                      {
                                        v725 = *&v724 + 4 * (v232 >> 1) + 1286;
                                        *(v725 + 2 * v722) |= v723;
                                      }

                                      v722 += 2;
                                    }

                                    while (v722 < v992);
                                  }

LABEL_975:
                                  if (v988[64].i32[1] != 1)
                                  {
                                    return 0;
                                  }

                                  if (*v958)
                                  {
                                    return 0;
                                  }

                                  v727 = *(v18 + 24);
                                  if ((*(v727 + 232) & 1) == 0)
                                  {
                                    return 0;
                                  }

                                  v728 = *(v17 + 28);
                                  v729 = *(v991 + 13944) + 56 * ((v728 - *(v991 + 13872)) >> *(v18 + 3468));
                                  if (*(v993 + 20))
                                  {
                                    v730 = 0;
                                    v731 = v993 + 8;
                                    v732 = v18 + 3056;
                                    v733 = v993 + 24;
                                    v974 = v18;
                                    v734 = v18 + 3128;
                                    v735 = 1;
                                    do
                                    {
                                      v736 = v735;
                                      v737 = v733[v730];
                                      if (*(v993 + 21) == 6 && *(v732 + v737))
                                      {
                                        sub_2775C1280(v17, (v729 + 8 * v737), v986, (*(v974 + 24) + 36 * v733[v730] + 896));
                                      }

                                      else
                                      {
                                        sub_2775C1304((v729 + 8 * v737), *(v17 + 28), v992, *&v731[4 * v730], 0, (v734 + 16 * v737 + 8));
                                      }

                                      v735 = 0;
                                      v730 = 1;
                                    }

                                    while ((v736 & 1) != 0);
                                    if (v980)
                                    {
                                      v738 = 0;
                                      if (v979 >= v963)
                                      {
                                        v739 = v963;
                                      }

                                      else
                                      {
                                        v739 = v979;
                                      }

                                      v740 = 1;
                                      do
                                      {
                                        v741 = v740;
                                        v742 = v733[v738];
                                        v743 = *(v993 + 21) == 6 && v739 >= 2;
                                        v744 = v729 + 8 * v742;
                                        if (v743 && *(v732 + v742))
                                        {
                                          sub_2775C1650(v17, (v744 + 4), v986, (*(v974 + 24) + 36 * v733[v738] + 896));
                                        }

                                        else
                                        {
                                          sub_2775C1304((v744 + 4), *(v17 + 28), v992, *&v731[4 * v738], v960, (v734 + 16 * v742 + 8));
                                        }

                                        v740 = 0;
                                        result = 0;
                                        v738 = 1;
                                      }

                                      while ((v741 & 1) != 0);
                                      return result;
                                    }

                                    return 0;
                                  }

                                  v745 = v992;
                                  if (v220 < v992)
                                  {
                                    v745 = v220;
                                  }

                                  if (v745 >= 2)
                                  {
                                    if (*(v993 + 21) == 2)
                                    {
                                      v746 = *(v993 + 24);
                                      if (*(v18 + v746 + 3056))
                                      {
                                        v747 = (v729 + 8 * v746);
                                        if (*(v993 + 22) != 2)
                                        {
                                          v748 = (v727 + 36 * *(v993 + 24) + 896);
LABEL_1031:
                                          sub_2775C1280(v17, v747, v986, v748);
                                          goto LABEL_1034;
                                        }

LABEL_1030:
                                        v748 = (v17 + 258496);
                                        goto LABEL_1031;
                                      }
                                    }

                                    if (*(v993 + 22) == 2 && v988[56].i32[0] >= 2u)
                                    {
                                      v747 = (v729 + 8 * *(v993 + 24));
                                      goto LABEL_1030;
                                    }
                                  }

                                  sub_2775C1304((v729 + 8 * *(v993 + 24)), v728, v992, *(v993 + 4), 0, (v18 + 16 * *(v993 + 24) + 3136));
                                  if (*(v993 + 22) == 1)
                                  {
                                    sub_2775C13AC(v17, v729, 0, v986, v959, v967);
                                  }

LABEL_1034:
                                  if (!v171)
                                  {
                                    return 0;
                                  }

                                  if (v220 != v947 && v992 != v960)
                                  {
LABEL_1037:
                                    v757 = v979;
                                    if (v979 >= v35)
                                    {
                                      v757 = v35;
                                    }

                                    if (v757 >= 2)
                                    {
                                      if (*(v993 + 21) == 2)
                                      {
                                        v758 = *(v993 + 24);
                                        if (*(v18 + v758 + 3056))
                                        {
                                          v759 = (v729 + 8 * v758 + 4);
                                          if (*(v993 + 22) != 2)
                                          {
                                            v760 = (*(v18 + 24) + 36 * *(v993 + 24) + 896);
LABEL_1183:
                                            sub_2775C1650(v17, v759, v986, v760);
                                            return 0;
                                          }

LABEL_1182:
                                          v760 = (v17 + 258496);
                                          goto LABEL_1183;
                                        }
                                      }

                                      if (*(v993 + 22) == 2 && v988[56].i32[0] >= 2u)
                                      {
                                        v759 = (v729 + 8 * *(v993 + 24) + 4);
                                        goto LABEL_1182;
                                      }
                                    }

                                    sub_2775C1304((v729 + 8 * *(v993 + 24) + 4), *(v17 + 28) & ~v960, v992 << (v992 == v960), *(v993 + 4), v960, (v18 + 16 * *(v993 + 24) + 3136));
                                    if (*(v993 + 22) == 1)
                                    {
                                      sub_2775C13AC(v17, v729, 1u, v986, v959, v967);
                                    }

                                    return 0;
                                  }

                                  v761 = *(v17 + 28);
                                  v762 = v220;
                                  v763 = (v17 + 8 * (v761 & 0x1F) + 712);
                                  if (v762 == 1)
                                  {
                                    v764 = *v763;
                                    v765 = *(v17 + 24);
                                    v766 = *(*v763 + 12 * v765 - 4);
                                    if (v992 == v960)
                                    {
                                      v767 = *(v17 + 8 * (v761 & 0x1F) + 704);
                                      v768 = v767 + 12 * v765;
                                      v769 = *(v768 - 4);
                                      v771 = v769 < 1;
                                      v770 = v769 - 1;
                                      if (v771)
                                      {
                                        goto LABEL_1037;
                                      }

                                      v771 = *(v767 + 12 * v765 + 8) < 1 || v766 < 1;
                                      if (v771)
                                      {
                                        goto LABEL_1037;
                                      }

                                      sub_2775C1304((v729 + 8 * v770 + 4), v761 - 1, v960, *(v768 - 12), v960, (v18 + 16 * v770 + 3136));
                                      v764 = *v763;
                                      v761 = *(v17 + 28);
                                      v765 = *(v17 + 24);
                                      LOBYTE(v766) = *(*v763 + 12 * v765 - 4);
                                    }

                                    else if (v766 < 1)
                                    {
                                      goto LABEL_1037;
                                    }

                                    v917 = v960;
                                    sub_2775C1304((v729 + 8 * (v766 - 1) + 4), v761, v992, *(v764 + 12 * v765 - 12), v960, (v18 + 16 * (v766 - 1) + 3136));
                                    v761 = *(v17 + 28);
                                    if (v992 != v960)
                                    {
LABEL_1261:
                                      sub_2775C1304((v729 + 8 * *(v993 + 24) + 4), v761, v992, *(v993 + 4), v917, (v18 + 16 * *(v993 + 24) + 3136));
                                      return 0;
                                    }

                                    v875 = *(v763 - 1);
                                    v876 = *(v17 + 24);
                                  }

                                  else
                                  {
                                    if (v992 != v960)
                                    {
                                      v917 = v960;
                                      goto LABEL_1261;
                                    }

                                    v875 = *(v17 + 8 * (v761 & 0x1F) + 704);
                                    v876 = *(v17 + 24);
                                    if (*(v875 + 12 * v876 + 8) <= 0)
                                    {
                                      goto LABEL_1037;
                                    }
                                  }

                                  v917 = v960;
                                  sub_2775C1304((v729 + 8 * (*(v875 + 12 * v876 + 8) - 1) + 4), v761 - 1, v960, *(v875 + 12 * v876), v960, (v18 + 16 * (*(v875 + 12 * v876 + 8) - 1) + 3136));
                                  v761 = *(v17 + 28);
                                  goto LABEL_1261;
                                }

                                v552 = 0;
                                v553 = *(v993 + 10);
                                v554 = (v543 + v987 + 480);
                                v555 = 4 * v533 * v538 + 4 * v537 + v532 + 1;
                                do
                                {
                                  v556 = v555;
                                  v557 = v547;
                                  do
                                  {
                                    *(v556 - 1) = *v534;
                                    *v556 = v534[16];
                                    v556 += 4;
                                    --v557;
                                  }

                                  while (v557);
                                  ++v552;
                                  v555 += 4 * v533;
                                }

                                while (v552 != v549);
                                __dstb = v539;
                                v953 = v542;
                                v956 = v537;
                                v966 = v540;
                                v970 = v532;
                                v978 = v522;
                                v558 = &unk_277601B98 + 8 * v553;
                                v559 = v558[3];
                                if (v558[2] >= 2u)
                                {
                                  v560 = 2;
                                }

                                else
                                {
                                  v560 = v558[2];
                                }

                                v561 = (v17 + v989 + 512);
                                v562 = v561;
                                v563 = v549;
                                v564 = 1 << v551;
                                do
                                {
                                  v566 = *v562++;
                                  v565 = v566;
                                  if (v560 < v566)
                                  {
                                    v565 = v560;
                                  }

                                  *(*&v531 + 12 * v550 + 4 * v565 + 2 * ((v564 & 0xFFFF0000) != 0)) |= v564 >> (16 * ((v564 & 0xFFFF0000) != 0));
                                  v564 *= 2;
                                  --v563;
                                }

                                while (v563);
                                if (v559 >= 2)
                                {
                                  v567 = 2;
                                }

                                else
                                {
                                  v567 = v559;
                                }

                                v568 = v554;
                                v569 = v547;
                                v570 = 1 << v550;
                                do
                                {
                                  v572 = *v568++;
                                  v571 = v572;
                                  if (v567 < v572)
                                  {
                                    v571 = v567;
                                  }

                                  v573 = *&v531 + 384 + 12 * v551 + 4 * v571;
                                  *(v573 + 2 * ((v570 & 0xFFFF0000) != 0)) |= v570 >> (16 * ((v570 & 0xFFFF0000) != 0));
                                  v570 *= 2;
                                  --v569;
                                }

                                while (v569);
                                v574 = *v558;
                                if (v547 > v574)
                                {
                                  v575 = ((1 << v551) << v549) - (1 << v551);
                                  v576 = (12 * (v574 + v550) + 4 * v560 + *&v531 + 2);
                                  v577 = *v558;
                                  do
                                  {
                                    if (((1 << v551) << v549) != 1 << v551)
                                    {
                                      *(v576 - 1) |= v575;
                                    }

                                    if (v575 >= 0x10000)
                                    {
                                      *v576 |= HIWORD(v575);
                                    }

                                    v577 += v574;
                                    v576 += 6 * v574;
                                  }

                                  while (v577 < v547);
                                }

                                v578 = v558[1];
                                if (v549 > v578)
                                {
                                  v579 = ((1 << v550) << v547) - (1 << v550);
                                  v580 = (12 * (v578 + v551) + 4 * v567 + *&v531 + 386);
                                  v581 = v578;
                                  do
                                  {
                                    if (((1 << v550) << v547) != 1 << v550)
                                    {
                                      *(v580 - 1) |= v579;
                                    }

                                    if (v579 >= 0x10000)
                                    {
                                      *v580 |= HIWORD(v579);
                                    }

                                    v581 += v578;
                                    v580 += 6 * v578;
                                  }

                                  while (v581 < v549);
                                }

                                if (v547 > 7u)
                                {
                                  if (v547 == 8)
                                  {
                                    *v554 = 0x101010101010101 * v567;
                                    goto LABEL_794;
                                  }

                                  if (v547 != 16)
                                  {
                                    if (v547 == 32)
                                    {
                                      *v554 = 0x101010101010101 * v567;
                                      *(v554 + 1) = 0x101010101010101 * v567;
                                      *(v554 + 2) = 0x101010101010101 * v567;
                                      *(v554 + 3) = 0x101010101010101 * v567;
                                      goto LABEL_794;
                                    }

                                    goto LABEL_791;
                                  }

                                  *v554 = 0x101010101010101 * v567;
                                  *(v554 + 1) = 0x101010101010101 * v567;
                                }

                                else
                                {
                                  if (v547 == 1)
                                  {
                                    *v554 = v567;
                                    goto LABEL_794;
                                  }

                                  if (v547 != 2)
                                  {
                                    if (v547 == 4)
                                    {
                                      *v554 = 16843009 * v567;
                                      goto LABEL_794;
                                    }

LABEL_791:
                                    v602 = v541;
                                    v945 = v545;
                                    v603 = v544;
                                    v938 = v550;
                                    v604 = v531;
                                    v934 = v538;
                                    memset(v554, v567, v547);
                                    v531 = v604;
                                    LODWORD(v538) = v934;
                                    v550 = v938;
                                    v544 = v603;
                                    v545 = v945;
                                    v541 = v602;
                                    v561 = (v17 + v989 + 512);
                                    goto LABEL_794;
                                  }

                                  *v554 = v567 | (v567 << 8);
                                }

LABEL_794:
                                if (v549 > 7u)
                                {
                                  switch(v549)
                                  {
                                    case 8u:
                                      *v561 = 0x101010101010101 * v560;
                                      goto LABEL_808;
                                    case 0x10u:
                                      *v561 = 0x101010101010101 * v560;
                                      *(v561 + 1) = 0x101010101010101 * v560;
                                      goto LABEL_808;
                                    case 0x20u:
                                      *v561 = 0x101010101010101 * v560;
                                      *(v561 + 1) = 0x101010101010101 * v560;
                                      *(v561 + 2) = 0x101010101010101 * v560;
                                      *(v561 + 3) = 0x101010101010101 * v560;
                                      goto LABEL_808;
                                  }
                                }

                                else
                                {
                                  switch(v549)
                                  {
                                    case 1u:
                                      *v561 = v560;
                                      goto LABEL_808;
                                    case 2u:
                                      *v561 = v560 | (v560 << 8);
                                      goto LABEL_808;
                                    case 4u:
                                      *v561 = 16843009 * v560;
LABEL_808:
                                      v522 = v978;
                                      v532 = v970;
                                      v540 = v966;
                                      LODWORD(v537) = v956;
                                      v542 = v953;
                                      v539 = __dstb;
                                      goto LABEL_809;
                                  }
                                }

                                v605 = v561;
                                v606 = v560;
                                v607 = v541;
                                v946 = v545;
                                v608 = v544;
                                v941 = v551;
                                v609 = v550;
                                v610 = v531;
                                v611 = v538;
                                memset(v605, v606, v549);
                                LODWORD(v538) = v611;
                                v531 = v610;
                                v550 = v609;
                                v551 = v941;
                                v544 = v608;
                                v545 = v946;
                                v541 = v607;
                                goto LABEL_808;
                              }

                              if (*(*(v18 + 8) + 393))
                              {
                                sub_277584658(v991 + 13824, (v991 + 4 * v169 + 5464));
                                v470 = v990;
                                if (v520)
                                {
                                  *(v993 + 8) = 13;
                                  v521 = sub_2775840FC(v991 + 13824, (v991 + 3360), 4, v459, v460, v461, v462, v463);
                                  v470 = v990;
                                  *(v993 + 13) = v521;
                                }
                              }
                            }

                            if (!*(v993 + 11))
                            {
                              goto LABEL_695;
                            }

                            goto LABEL_691;
                          }
                        }

LABEL_345:
                        v221 = *(v18 + 24);
                        if ((v221[232] & 1) == 0)
                        {
                          v995[0] = 0;
                          v994 = 0;
                          sub_27759E444((v17 + 664), &v998, v995, &v994, 65280, v10, __b, *(v17 + 28), *(v17 + 24));
                          v227 = v998;
                          if (v998 || (v227 = v1000) != 0)
                          {
                            *(v993 + 2) = v227;
                          }

                          else
                          {
                            v422 = *(*(v18 + 8) + 392);
                            if ((-16 << v422) + *(v17 + 28) >= *(v991 + 13872))
                            {
                              *(v993 + 2) = (-512 << v422);
                            }

                            else
                            {
                              *(v993 + 4) = 0;
                              *(v993 + 5) = (-512 << *(*(v18 + 8) + 392)) - 2048;
                            }
                          }

                          sub_2775BF40C(v17, v993 + 4, (v991 + 13536), 0, v222, v223, v224, v225, v226);
                          v228 = 4 * *(v991 + 13864);
                          v229 = 4 * *(v991 + 13872);
                          if (v171)
                          {
                            v230 = v954 == 3 || v985 >= 2;
                            if (!v230)
                            {
                              v228 += 4;
                            }

                            if (v954 == 1 && v992 < 2)
                            {
                              v229 += 4;
                            }
                          }

                          LODWORD(v232) = v989;
                          v233 = *(v17 + 24);
                          v234 = *(v17 + 28);
                          v235 = *(v993 + 5);
                          v236 = 4 * v233 + (v235 >> 3);
                          v237 = *(v993 + 4);
                          v238 = 4 * v234 + (v237 >> 3);
                          v239 = 4 * (v233 + v985);
                          v240 = v239 + (v235 >> 3);
                          v241 = 4 * (v234 + v992) + (v237 >> 3);
                          if (v228 <= v236)
                          {
                            v256 = 4 * ((v985 + *(v991 + 13868) - 1) & -v985);
                            if (v240 > v256)
                            {
                              v236 = 4 * v233 - v239 + v256;
                              v240 = 4 * ((v985 + *(v991 + 13868) - 1) & -v985);
                            }
                          }

                          else
                          {
                            v240 += v228 - v236;
                            v236 = v228;
                          }

                          v257 = v229 - v238;
                          if (v229 <= v238)
                          {
                            v257 = 0;
                          }

                          v258 = v241 + v257;
                          if (v238 <= v229)
                          {
                            v238 = v229;
                          }

                          v259 = *(*(v18 + 8) + 392);
                          v260 = v233 >> (v259 + 4) << (v259 + 6);
                          v261 = v234 >> (v259 + 4) << (v259 + 6);
                          v262 = 64 << v259;
                          v263 = v258 - v261;
                          if (v258 > v261)
                          {
                            v264 = v240 - v260;
                            if (v240 > v260)
                            {
                              if (v238 - v229 >= v263)
                              {
                                LOWORD(v238) = v238 - v263;
                                v258 = v261;
                              }

                              else
                              {
                                if (v236 - v228 < v264)
                                {
                                  v265 = 0;
                                }

                                else
                                {
                                  v240 = v260;
                                  v265 = v264;
                                }

                                LOWORD(v236) = v236 - v265;
                              }
                            }
                          }

                          v273 = v261 + v262;
                          if (v258 >= v261 + v262)
                          {
                            v274 = v261 + v262;
                          }

                          else
                          {
                            v274 = v258;
                          }

                          if (v274 > v261 && v240 > v260)
                          {
                            return 0xFFFFFFFFLL;
                          }

                          v275 = v273 - v258;
                          if (v273 >= v258)
                          {
                            v275 = 0;
                          }

                          *(v993 + 5) = 8 * v236 - 32 * v233;
                          *(v993 + 4) = 8 * (v238 + v275) - 32 * *(v17 + 28);
                          sub_2775BF4E4(v17, v993, v990, v987, v989);
                          if (v988[64].i32[1] == 1)
                          {
                            (*(v18 + 3360))(v17, v990, v993);
                            *(v993 + 27) = 9;
                          }

                          else if ((*(v18 + 3296))(v17, v990, v993))
                          {
                            return 0xFFFFFFFFLL;
                          }

                          v276 = *(v18 + 3256);
                          *&v997 = *(v993 + 2);
                          WORD4(v997) = -256;
                          WORD5(v997) = v990;
                          (*(v276 + 63016))(v17 + 8 * (*(v17 + 28) & 0x1FLL) + 712, &v997, *(v17 + 24), v985, v992);
                          if (v992 > 7)
                          {
                            v277 = v962;
                            switch(v992)
                            {
                              case 8:
                                v490 = (v17 + v989);
                                v490[56] = 0x101010101010101 * v986[3];
                                v490[4] = 0;
                                v490[78] = 0;
                                v490[1028] = 0;
                                v490[20] = 0x101010101010101 * v962;
                                v490[28] = 0;
                                v490[32] = 0;
                                v490[24] = 0x101010101010101 * *(v993 + 6);
                                break;
                              case 16:
                                v492 = v17 + v989;
                                *(v492 + 448) = vdupq_n_s64(0x101010101010101 * v986[3]);
                                *(v492 + 32) = 0u;
                                *(v492 + 624) = 0u;
                                *(v492 + 8224) = 0u;
                                *(v492 + 160) = vdupq_n_s64(0x101010101010101 * v962);
                                *(v492 + 224) = 0u;
                                *(v492 + 256) = 0u;
                                *(v492 + 192) = vdupq_n_s64(0x101010101010101 * *(v993 + 6));
                                break;
                              case 32:
                                v403 = v17 + 32;
                                v404 = v17 + 448;
                                v405 = vdupq_n_s64(0x101010101010101 * v986[3]);
                                *(v404 + v989) = v405;
                                v406 = v989 + 16;
                                *(v404 + v406) = v405;
                                *(v403 + v989) = 0u;
                                *(v403 + v406) = 0u;
                                v407 = v17 + 624;
                                *(v407 + v989) = 0u;
                                *(v407 + v406) = 0u;
                                v408 = v17 + 8224;
                                *(v408 + v989) = 0u;
                                *(v408 + v406) = 0u;
                                v409 = v17 + 160;
                                v410 = vdupq_n_s64(0x101010101010101 * v962);
                                *(v409 + v989) = v410;
                                *(v409 + v406) = v410;
                                v411 = v17 + 224;
                                *(v411 + v989) = 0u;
                                *(v411 + v406) = 0u;
                                v412 = v17 + 256;
                                *(v412 + v989) = 0u;
                                *(v412 + v406) = 0u;
                                v413 = v17 + 192;
                                v414 = vdupq_n_s64(0x101010101010101 * *(v993 + 6));
                                *(v413 + v989) = v414;
                                *(v413 + v406) = v414;
                                break;
                            }
                          }

                          else
                          {
                            v277 = v962;
                            switch(v992)
                            {
                              case 1:
                                v489 = (v17 + v989);
                                v489[448] = v986[3];
                                v489[32] = 0;
                                v489[8224] = 0;
                                v489[624] = 0;
                                v489[160] = v962;
                                v489[224] = 0;
                                v489[256] = 0;
                                v489[192] = *(v993 + 6);
                                break;
                              case 2:
                                v491 = (v17 + v989);
                                v491[224] = v986[3] | (v986[3] << 8);
                                v491[16] = 0;
                                v491[312] = 0;
                                v491[4112] = 0;
                                v491[80] = 257 * v962;
                                v491[112] = 0;
                                v491[128] = 0;
                                v491[96] = *(v993 + 6) | (*(v993 + 6) << 8);
                                break;
                              case 4:
                                v278 = (v17 + v989);
                                v278[112] = 16843009 * v986[3];
                                v278[8] = 0;
                                v278[156] = 0;
                                v278[2056] = 0;
                                v278[40] = 16843009 * v962;
                                v278[56] = 0;
                                v278[64] = 0;
                                v278[48] = 16843009 * *(v993 + 6);
                                break;
                            }
                          }

                          if (v985 > 7)
                          {
                            if (v985 == 8)
                            {
                              v496 = v987;
                              *(*(v17 + 656) + v987 + 416) = 0x101010101010101 * v986[2];
                              *(*(v17 + 656) + v987) = 0;
                              *(*(v17 + 656) + v987 + 592) = 0;
                              *(v17 + v987 + 0x2000) = 0;
                              *(*(v17 + 656) + v987 + 128) = 0x101010101010101 * v277;
                              *(*(v17 + 656) + v987 + 192) = 0;
                              *(*(v17 + 656) + v987 + 224) = 0;
                              v499 = 0x101010101010101 * *(v993 + 6);
                            }

                            else
                            {
                              if (v985 == 16)
                              {
                                v501 = 0x101010101010101 * v986[2];
                                *(*(v17 + 656) + v987 + 416) = v501;
                                v496 = v987 + 8;
                                *(*(v17 + 656) + v496 + 416) = v501;
                                *(*(v17 + 656) + v987) = 0;
                                *(*(v17 + 656) + v496) = 0;
                                *(*(v17 + 656) + v987 + 592) = 0;
                                *(*(v17 + 656) + v496 + 592) = 0;
                                v502 = v17 + v987;
                                *(v502 + 8200) = 0;
                                *(v502 + 0x2000) = 0;
                                v503 = 0x101010101010101 * v277;
                                *(*(v17 + 656) + v987 + 128) = v503;
                                *(*(v17 + 656) + v496 + 128) = v503;
                                *(*(v17 + 656) + v987 + 192) = 0;
                                *(*(v17 + 656) + v496 + 192) = 0;
                                *(*(v17 + 656) + v987 + 224) = 0;
                                *(*(v17 + 656) + v496 + 224) = 0;
                                v499 = 0x101010101010101 * *(v993 + 6);
                                v500 = *(v17 + 656) + v987;
                              }

                              else
                              {
                                if (v985 != 32)
                                {
                                  goto LABEL_641;
                                }

                                v493 = 0x101010101010101 * v986[2];
                                *(*(v17 + 656) + v987 + 416) = v493;
                                v494 = v987 + 8;
                                *(*(v17 + 656) + v494 + 416) = v493;
                                v495 = v987 + 16;
                                *(*(v17 + 656) + v495 + 416) = v493;
                                v496 = v987 + 24;
                                *(*(v17 + 656) + v496 + 416) = v493;
                                *(*(v17 + 656) + v987) = 0;
                                *(*(v17 + 656) + v494) = 0;
                                *(*(v17 + 656) + v495) = 0;
                                *(*(v17 + 656) + v496) = 0;
                                *(*(v17 + 656) + v987 + 592) = 0;
                                *(*(v17 + 656) + v494 + 592) = 0;
                                *(*(v17 + 656) + v495 + 592) = 0;
                                *(*(v17 + 656) + v496 + 592) = 0;
                                v497 = v17 + 0x2000;
                                *(v497 + v987) = 0u;
                                *(v497 + v495) = 0u;
                                v498 = 0x101010101010101 * v277;
                                *(*(v17 + 656) + v987 + 128) = v498;
                                *(*(v17 + 656) + v494 + 128) = v498;
                                *(*(v17 + 656) + v495 + 128) = v498;
                                *(*(v17 + 656) + v496 + 128) = v498;
                                *(*(v17 + 656) + v987 + 192) = 0;
                                *(*(v17 + 656) + v494 + 192) = 0;
                                *(*(v17 + 656) + v495 + 192) = 0;
                                *(*(v17 + 656) + v496 + 192) = 0;
                                *(*(v17 + 656) + v987 + 224) = 0;
                                *(*(v17 + 656) + v494 + 224) = 0;
                                *(*(v17 + 656) + v495 + 224) = 0;
                                *(*(v17 + 656) + v496 + 224) = 0;
                                v499 = 0x101010101010101 * *(v993 + 6);
                                *(*(v17 + 656) + v987 + 160) = v499;
                                *(*(v17 + 656) + v494 + 160) = v499;
                                v500 = *(v17 + 656) + v495;
                              }

                              *(v500 + 160) = v499;
                            }

                            *(*(v17 + 656) + v496 + 160) = v499;
                          }

                          else
                          {
                            switch(v985)
                            {
                              case 1:
                                *(*(v17 + 656) + v987 + 416) = v986[2];
                                *(*(v17 + 656) + v987) = 0;
                                *(*(v17 + 656) + v987 + 592) = 0;
                                *(v17 + v987 + 0x2000) = 0;
                                *(*(v17 + 656) + v987 + 128) = v277;
                                *(*(v17 + 656) + v987 + 192) = 0;
                                *(*(v17 + 656) + v987 + 224) = 0;
                                *(*(v17 + 656) + v987 + 160) = *(v993 + 6);
                                break;
                              case 2:
                                *(*(v17 + 656) + v987 + 416) = v986[2] | (v986[2] << 8);
                                *(*(v17 + 656) + v987) = 0;
                                *(*(v17 + 656) + v987 + 592) = 0;
                                *(v17 + v987 + 0x2000) = 0;
                                *(*(v17 + 656) + v987 + 128) = 257 * v277;
                                *(*(v17 + 656) + v987 + 192) = 0;
                                *(*(v17 + 656) + v987 + 224) = 0;
                                *(*(v17 + 656) + v987 + 160) = *(v993 + 6) | (*(v993 + 6) << 8);
                                break;
                              case 4:
                                *(*(v17 + 656) + v987 + 416) = 16843009 * v986[2];
                                *(*(v17 + 656) + v987) = 0;
                                *(*(v17 + 656) + v987 + 592) = 0;
                                *(v17 + v987 + 0x2000) = 0;
                                *(*(v17 + 656) + v987 + 128) = 16843009 * v277;
                                *(*(v17 + 656) + v987 + 192) = 0;
                                *(*(v17 + 656) + v987 + 224) = 0;
                                *(*(v17 + 656) + v987 + 160) = 16843009 * *(v993 + 6);
                                break;
                            }
                          }

LABEL_641:
                          if (!v171)
                          {
                            goto LABEL_935;
                          }

LABEL_642:
                          if (v35 > 7)
                          {
                            if (v35 == 8)
                            {
                              v504 = v17 + v981;
                            }

                            else
                            {
                              if (v35 != 16)
                              {
                                if (v35 == 32)
                                {
                                  *(v17 + 592 + v981) = 0u;
                                  *(v17 + 592 + v981 + 16) = 0u;
                                }

                                goto LABEL_656;
                              }

                              v504 = v17 + v981;
                              *(v17 + v981 + 600) = 0;
                            }

                            *(v504 + 592) = 0;
                          }

                          else
                          {
                            switch(v35)
                            {
                              case 1:
                                *(v17 + v981 + 592) = 0;
                                break;
                              case 2:
                                *(v17 + v981 + 592) = 0;
                                break;
                              case 4:
                                *(v17 + v981 + 592) = 0;
                                break;
                            }
                          }

LABEL_656:
                          if (v979 > 7)
                          {
                            switch(v979)
                            {
                              case 8:
                                *(*(v17 + 656) + v982 + 560) = 0;
                                break;
                              case 16:
                                *(*(v17 + 656) + v982 + 560) = 0;
                                *(*(v17 + 656) + v982 + 568) = 0;
                                break;
                              case 32:
                                *(*(v17 + 656) + v982 + 560) = 0;
                                *(*(v17 + 656) + v982 + 568) = 0;
                                *(*(v17 + 656) + v982 + 576) = 0;
                                *(*(v17 + 656) + v982 + 584) = 0;
                                break;
                            }
                          }

                          else
                          {
                            switch(v979)
                            {
                              case 1:
                                *(*(v17 + 656) + v982 + 560) = 0;
                                break;
                              case 2:
                                *(*(v17 + 656) + v982 + 560) = 0;
                                break;
                              case 4:
                                *(*(v17 + 656) + v982 + 560) = 0;
                                break;
                            }
                          }

                          goto LABEL_935;
                        }

                        if (*v66)
                        {
                          v242 = 0;
                          goto LABEL_364;
                        }

                        v943 = v169;
                        if (v51 && (v51[6] != 255 || v51[8] || v51[7]))
                        {
                          v267 = v993 + 4;
                          *(v993 + 20) = 0;
                          v268 = v961;
                          v269 = v975;
LABEL_395:
                          v270 = v51[6];
                          v271 = v270 - 1;
                          if (v270 >= 1)
                          {
                            v272 = v51;
                            goto LABEL_1057;
                          }

                          if (v51[8] || v51[7])
                          {
                            v272 = v51;
                            v271 = 0;
                            goto LABEL_1057;
                          }

LABEL_786:
                          v272 = v51;
                          v595 = sub_2775C02A4(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                          sub_277584658(v991 + 13824, (v991 + 4 * v595 + 5760));
                          v597 = v596;
                          v598 = *(v17 + 656);
                          v599 = v17 + 32;
                          if (v597)
                          {
                            v600 = sub_2775C0030(v598, v599, v989, v987, __dst, v951);
                            sub_277584658(v991 + 13824, (v991 + 4 * v600 + 5772));
                            if (v601)
                            {
                              v271 = 6;
                            }

                            else
                            {
                              v772 = sub_2775C0170(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                              sub_277584658(v991 + 13824, (v991 + 4 * v772 + 5820));
                              v271 = v773 + 4;
                            }
                          }

                          else
                          {
                            v750 = sub_2775BFCA4(v598, v599, v989, v987, __dst, v951);
                            sub_277584658(v991 + 13824, (v991 + 4 * v750 + 5784));
                            v752 = v751;
                            v753 = *(v17 + 656);
                            v754 = v17 + 32;
                            if (v752)
                            {
                              v755 = sub_2775BFDD0(v753, v754, v989, v987, __dst, v951);
                              sub_277584658(v991 + 13824, (v991 + 4 * v755 + 5808));
                              v271 = v756 + 2;
                            }

                            else
                            {
                              v777 = sub_2775BFF10(v753, v754, v989, v987, __dst, v951);
                              sub_277584658(v991 + 13824, (v991 + 4 * v777 + 5796));
                            }
                          }

                          v269 = v975;
LABEL_1057:
                          *(v993 + 24) = v271;
                          *(v993 + 25) = -1;
                          v995[0] = 0;
                          v994 = 0;
                          sub_27759E444((v17 + 664), &v998, v995, &v994, (v271 + 1) | 0xFF00, v990, __b, *(v17 + 28), *(v17 + 24));
                          if (!v272 || !v272[7] && !v272[8])
                          {
                            v782 = v994;
                            sub_277584658(v991 + 13824, (v991 + 4 * (v994 & 7) + 5552));
                            if (!v783)
                            {
                              v814 = v269;
                              *(v993 + 21) = 3;
                              *(v993 + 23) = 0;
                              v815 = v995[0];
                              if (v995[0] < 2)
                              {
                                *v267 = v998;
                                sub_2775C04F8(*(v18 + 24), v267);
                                v232 = v989;
                                v269 = v814;
                              }

                              else
                              {
                                v816 = v1001;
                                if (v999 <= 639)
                                {
                                  v817 = 2 * (v1001 < 640);
                                }

                                else
                                {
                                  v817 = v1001 < 640;
                                }

                                sub_277584658(v991 + 13824, (v991 + 5608 + 4 * v817));
                                v824 = *(v993 + 23) + v823;
                                *(v993 + 23) = v824;
                                v232 = v989;
                                if (v824 == 1)
                                {
                                  v96 = v815 == 2;
                                  v269 = v814;
                                  if (!v96)
                                  {
                                    v825 = v1002 < 640;
                                    if (v816 <= 639)
                                    {
                                      v825 = 2 * (v1002 < 640);
                                    }

                                    sub_277584658(v991 + 13824, (v991 + 5608 + 4 * v825));
                                    v824 = *(v993 + 23) + v826;
                                    *(v993 + 23) = v824;
                                  }
                                }

                                else
                                {
                                  v269 = v814;
                                }

                                *v267 = *(&v998 + 4 * v824);
                                v268 = v961;
                              }

                              sub_2775BF40C(v17, v267, (v991 + 13248), *(*(v18 + 24) + 269) == 0, v818, v819, v820, v821, v822);
                              v813 = 1;
                              v802 = v959;
                              v249 = v990;
                              v799 = v943;
LABEL_1112:
                              if (*(*(v18 + 8) + 395) && ((1 << v249) & 0x33980) != 0)
                              {
                                v828 = v813;
                                v829 = byte_2775EF66A[v799];
                                sub_277584658(v991 + 13824, (v991 + 4 * v829 + 5392));
                                if (v830)
                                {
                                  *(v993 + 18) = sub_2775840FC(v991 + 13824, (v991 + 8 * v829 + 5344), 3, *&v790, *&v778, *&v779, *&v780, v781);
                                  v831 = byte_2775EF6F5[v799];
                                  sub_277584658(v991 + 13824, (v991 + 4 * v831 + 5420));
                                  *(v993 + 28) = v832 + 1;
                                  v802 = v959;
                                  v833 = v961;
                                  v249 = v990;
                                  v813 = v828;
                                  if ((v832 + 1) != 2)
                                  {
LABEL_1119:
                                    v835 = *(v18 + 24);
                                    if (v835[436])
                                    {
                                      v836 = v985 >= v992 ? v992 : v985;
                                      if (!*(v993 + 28) && v836 >= 2)
                                      {
                                        v837 = v835[269];
                                        if (v835[269] || *(v993 + 21) != 2 || *&v835[36 * *(v993 + 24) + 896] <= 1u)
                                        {
                                          if (v833 > v968)
                                          {
                                            v838 = (v967 >> 1);
                                            if (v838 >= 1)
                                            {
                                              if (!*(v17 + 256 + v232 + 1))
                                              {
                                                goto LABEL_1142;
                                              }

                                              v839 = 0;
                                              v840 = ((v269 & 0x1F) + v17 + 259);
                                              while (v838 - 1 != v839)
                                              {
                                                v841 = *v840;
                                                v840 += 2;
                                                ++v839;
                                                if (!v841)
                                                {
                                                  if (v839 < v838)
                                                  {
                                                    goto LABEL_1142;
                                                  }

                                                  break;
                                                }
                                              }
                                            }
                                          }

                                          if (v269 > v964)
                                          {
                                            v842 = (v802 >> 1);
                                            if (v842 >= 1)
                                            {
                                              v843 = *(v17 + 656);
                                              if (*(v843 + 224 + v987 + 1))
                                              {
                                                v844 = 0;
                                                v845 = ((v833 & 0x1F) + v843 + 227);
                                                while (v842 - 1 != v844)
                                                {
                                                  v846 = *v845;
                                                  v845 += 2;
                                                  ++v844;
                                                  if (!v846)
                                                  {
                                                    if (v844 >= v842)
                                                    {
                                                      goto LABEL_1147;
                                                    }

                                                    goto LABEL_1142;
                                                  }
                                                }

                                                goto LABEL_1147;
                                              }

LABEL_1142:
                                              v847 = v813;
                                              v997 = 0uLL;
                                              sub_2775C0728(v17, __b, v985, v992, v802, v967, v951, __dst, *(v993 + 24), &v997);
                                              if (v837 || *(v18 + 16 * *(v993 + 24) + 3128) || !v835[893] || v997 == 0)
                                              {
                                                sub_277584658(v991 + 13824, (v991 + 4 * v943 + 6048));
                                              }

                                              else
                                              {
                                                v853 = sub_2775840FC(v991 + 13824, (v991 + 8 * v943 + 5120), 2, v848, v849, v850, v851, v852);
                                              }

                                              *(v993 + 22) = v853;
                                              v171 = v980;
                                              v220 = v985;
                                              v249 = v990;
                                              v813 = v847;
                                              if (v853 == 2)
                                              {
                                                sub_2775C0A00(v17, v985, v992, v997, *(&v997 + 1), *v267, v988 + 56, *&v790, *&v778, *&v779, *&v780, *v781.i64, v854, v855, v856);
                                                if (v988[64].i32[1])
                                                {
                                                  v813 = 0;
                                                  if (v988[56].i32[0] == 3)
                                                  {
                                                    *(v993 + 6) = v988[57].i32[1];
                                                    *(v993 + 7) = v988[58].i32[0];
                                                    *(v993 + 8) = v988[58].i32[1];
                                                    *(v993 + 9) = v988[59].i32[0];
                                                  }

                                                  else
                                                  {
                                                    *(v993 + 6) = 0x8000;
                                                  }
                                                }

                                                else
                                                {
                                                  v813 = 0;
                                                }

                                                v249 = v990;
                                              }

                                              goto LABEL_1148;
                                            }
                                          }
                                        }
                                      }
                                    }

LABEL_1147:
                                    *(v993 + 22) = 0;
                                    v171 = v980;
                                    v220 = v985;
LABEL_1148:
                                    v242 = 1;
                                    goto LABEL_1149;
                                  }

                                  sub_27758434C(v991 + 13824, v991 + 32 * v831 + 960, 15);
                                  v813 = v828;
                                  v249 = v990;
                                  v802 = v959;
                                  v834 = 16;
                                }

                                else
                                {
                                  v834 = 28;
                                  v802 = v959;
                                  v833 = v961;
                                  v249 = v990;
                                  v813 = v828;
                                }
                              }

                              else
                              {
                                LOBYTE(v830) = 0;
                                v834 = 28;
                                v833 = v268;
                              }

                              *(v993 + v834) = v830;
                              goto LABEL_1119;
                            }

                            if (v272)
                            {
                              if (v272[7] || v272[8])
                              {
                                goto LABEL_1076;
                              }

                              v782 = v994;
                            }

                            sub_277584658(v991 + 13824, (v991 + 4 * ((v782 >> 3) & 1) + 5576));
                            if (v784)
                            {
                              sub_277584658(v991 + 13824, (v991 + 4 * (v782 >> 4) + 5584));
                              if (v785)
                              {
                                v786 = v269;
                                *(v993 + 21) = 1;
                                *(v993 + 23) = 1;
                                v787 = v995[0];
                                if (v995[0] >= 3)
                                {
                                  v788 = v1002;
                                  if (v1001 <= 639)
                                  {
                                    v789 = 2 * (v1002 < 640);
                                  }

                                  else
                                  {
                                    v789 = v1002 < 640;
                                  }

                                  sub_277584658(v991 + 13824, (v991 + 5608 + 4 * v789));
                                  v792 = *(v993 + 23) + v791;
                                  *(v993 + 23) = v792;
                                  if (v792 == 2)
                                  {
                                    v96 = v787 == 3;
                                    v232 = v989;
                                    v269 = v786;
                                    if (!v96)
                                    {
                                      v793 = v1003[0] < 640;
                                      if (v788 <= 639)
                                      {
                                        v793 = 2 * (v1003[0] < 640);
                                      }

                                      sub_277584658(v991 + 13824, (v991 + 5608 + 4 * v793));
                                      v792 = *(v993 + 23) + v794;
                                      *(v993 + 23) = v792;
                                    }
                                  }

                                  else
                                  {
                                    v232 = v989;
                                    v269 = v786;
                                  }

                                  *v267 = *(&v998 + 4 * v792);
                                  v799 = v943;
                                  v268 = v961;
                                  if (v792 > 1u)
                                  {
                                    goto LABEL_1108;
                                  }

                                  goto LABEL_1107;
                                }

                                v827 = &v1000;
                                v799 = v943;
                                v269 = v786;
                              }

                              else
                              {
                                *(v993 + 21) = 0;
                                *(v993 + 23) = 0;
                                v827 = &v998;
                                v799 = v943;
                              }

                              *v267 = *v827;
                              v232 = v989;
LABEL_1107:
                              sub_2775C04F8(*(v18 + 24), v267);
LABEL_1108:
                              v813 = 1;
                              v802 = v959;
                              v249 = v990;
                              goto LABEL_1112;
                            }
                          }

LABEL_1076:
                          *(v993 + 21) = 2;
                          v795 = *(v18 + 24);
                          v796 = *(v993 + 24);
                          v797 = v795 + 36 * v796;
                          v798 = *(v797 + 896);
                          v232 = v989;
                          v799 = v943;
                          if (v798)
                          {
                            v800 = v797 + 896;
                            v801 = v985;
                            v802 = v959;
                            if (v798 == 1)
                            {
                              v790 = vrev64_s32(vshr_n_u32(*(v800 + 4), 0xDuLL));
                              v249 = v990;
                              if (!*(v795 + 269))
                              {
                                goto LABEL_1089;
                              }
                            }

                            else
                            {
                              if (v798 == 2)
                              {
                                v803 = (v800 + 24);
                                v804 = *(v800 + 16);
                                v805 = vld1_dup_f32(v803);
                              }

                              else
                              {
                                v804 = *(v800 + 16);
                                v805.i32[0] = *(v800 + 12);
                                v805.i32[1] = *(v800 + 24);
                              }

                              v249 = v990;
                              v806 = vshl_n_s32(*(v17 + 24), 2uLL);
                              v807 = vadd_s32(__PAIR64__(v992, v985), __PAIR64__(v992, v985));
                              v808 = vadd_s32(v805, 0xFFFF0000FFFF0000);
                              if (*(v795 + 428))
                              {
                                v809 = 13;
                              }

                              else
                              {
                                v809 = 14;
                              }

                              v781.i64[0] = -1;
                              v781.i64[1] = -1;
                              v810 = vadd_s32(vadd_s32(v806, -1), v807);
                              v811 = vadd_s32(vmla_s32(vmul_s32(v804, vrev64_s32(v810)), v808, v810), *(v800 + 4));
                              v780 = vdup_n_s32(*(v795 + 428) == 0);
                              v778 = vshl_u32(vshl_u32(vadd_s32(vdup_n_s32((1 << v809) >> 1), vabs_s32(v811)), vneg_s32(vdup_n_s32(v809))), v780);
                              v779 = vneg_s32(v778);
                              v790 = vbsl_s8(vcltz_s32(v811), v779, v778);
                              if (!*(v795 + 269))
                              {
                                goto LABEL_1089;
                              }
                            }

                            v778 = vdup_n_s32(0xFFF8u);
                            v790 = vand_s8(vadd_s32(vsra_n_u32(v790, vand_s8(v790, 0xFFFF0000FFFFLL), 0xFuLL), 0x300000003), v778);
                          }

                          else
                          {
                            v790 = 0;
                            v801 = v985;
                            v802 = v959;
                            v249 = v990;
                          }

LABEL_1089:
                          *v267 = v790.u16[2] | (v790.u16[0] << 16);
                          v812 = v992;
                          if (v801 < v992)
                          {
                            v812 = v801;
                          }

                          v813 = v812 == 1 || *(*(v18 + 24) + 36 * v796 + 896) == 1;
                          goto LABEL_1112;
                        }

                        v415 = v221[888];
                        v416 = v992;
                        if (v985 < v992)
                        {
                          v416 = v985;
                        }

                        v269 = v975;
                        if (!v415 || v416 < 2)
                        {
                          goto LABEL_785;
                        }

                        v417 = v66;
                        v418 = v171;
                        v419 = v51;
                        v420 = sub_2775BF9F8(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                        sub_277584658(v991 + 13824, (v991 + 4 * v420 + 5636));
                        if (*v417)
                        {
                          v221 = *(v18 + 24);
                          v171 = v418;
                          v242 = v421 == 0;
LABEL_364:
                          v243 = v221[891];
                          *(v993 + 24) = v243;
                          v244 = *(*(v18 + 24) + 892);
                          *(v993 + 25) = v244;
                          *(v993 + 10) = 2;
                          *(v993 + 23) = 0;
                          LODWORD(v997) = 0;
                          sub_27759E444((v17 + 664), &v998, &v997, v995, (v243 + 1) | ((v244 + 1) << 8), v990, __b, *(v17 + 28), *(v17 + 24));
                          v245 = v998;
                          v246 = HIDWORD(v998);
                          *(v993 + 2) = v998;
                          *(v993 + 3) = v246;
                          v247 = *(v18 + 24);
                          v232 = v989;
                          if (*(v247 + 269))
                          {
                            *(v993 + 5) = (HIWORD(v245) + (v245 >> 31) + 3) & 0xFFF8;
                            v248 = (v245 + ((v245 & 0x8000) >> 15) + 3) & 0xFFFFFFF8;
                            v249 = v990;
                          }

                          else
                          {
                            v249 = v990;
                            if (*(v247 + 428))
                            {
                              goto LABEL_416;
                            }

                            *(v993 + 5) = ((v245 >> 31) + HIWORD(v245)) & 0xFFFE;
                            v248 = (v245 + ((v245 & 0x8000) >> 15)) & 0xFFFFFFFE;
                          }

                          *(v993 + 4) = v248;
                          v247 = *(v18 + 24);
                          if (*(v247 + 269))
                          {
                            *(v993 + 7) = (HIWORD(v246) + (v246 >> 31) + 3) & 0xFFF8;
                            v250 = (v246 + ((v246 & 0x8000) >> 15) + 3) & 0xFFFFFFF8;
LABEL_368:
                            *(v993 + 6) = v250;
                            v247 = *(v18 + 24);
                            goto LABEL_416;
                          }

                          if (!*(v247 + 428))
                          {
                            *(v993 + 7) = ((v246 >> 31) + HIWORD(v246)) & 0xFFFE;
                            v250 = (v246 + ((v246 & 0x8000) >> 15)) & 0xFFFFFFFE;
                            goto LABEL_368;
                          }

LABEL_416:
                          if (*(v247 + 432) == 4)
                          {
                            v279 = 0;
                          }

                          else
                          {
                            v279 = *(v247 + 432);
                          }

                          goto LABEL_419;
                        }

                        v51 = v419;
                        if (!v421)
                        {
LABEL_785:
                          v267 = v993 + 4;
                          *(v993 + 20) = 0;
                          v268 = v961;
                          if (!v51)
                          {
                            goto LABEL_786;
                          }

                          goto LABEL_395;
                        }

                        v582 = sub_2775BFAB8(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                        sub_277584658(v991 + 13824, (v991 + 4 * v582 + 5656));
                        v584 = v583;
                        v585 = *(v17 + 656);
                        v586 = v17 + 32;
                        if (v584)
                        {
                          v587 = sub_2775BFCA4(v585, v586, v989, v987, __dst, v951);
                          sub_277584658(v991 + 13824, (v991 + 4 * v587 + 5832));
                          v589 = v588;
                          v590 = *(v17 + 656);
                          v591 = v17 + 32;
                          if (v589)
                          {
                            v592 = sub_2775BFDD0(v590, v591, v989, v987, __dst, v951);
                            sub_277584658(v991 + 13824, (v991 + 4 * v592 + 5856));
                            v594 = v593 + 2;
                          }

                          else
                          {
                            v877 = sub_2775BFF10(v590, v591, v989, v987, __dst, v951);
                            sub_277584658(v991 + 13824, (v991 + 4 * v877 + 5844));
                          }

                          *(v993 + 24) = v594;
                          v878 = sub_2775C0030(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                          sub_277584658(v991 + 13824, (v991 + 4 * v878 + 5868));
                          if (v879)
                          {
                            v776 = 6;
                          }

                          else
                          {
                            v880 = sub_2775C0170(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                            sub_277584658(v991 + 13824, (v991 + 4 * v880 + 5880));
                            v776 = v881 + 4;
                          }

                          v882 = v993;
                        }

                        else
                        {
                          v774 = sub_2775C02A4(v585, v586, v989, v987, __dst, v951);
                          sub_277584658(v991 + 13824, (v991 + 4 * v774 + 5892));
                          if (v775)
                          {
                            *(v993 + 12) = 1540;
                            v776 = 6;
                            goto LABEL_1193;
                          }

                          v919 = sub_2775C03BC(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                          *(v993 + 24) = 0;
                          sub_277584658(v991 + 13824, (v991 + 4 * v919 + 5904));
                          v776 = v920 + 1;
                          *(v993 + 25) = v920 + 1;
                          if ((v920 + 1) != 2)
                          {
LABEL_1193:
                            LODWORD(v997) = 0;
                            v995[0] = 0;
                            sub_27759E444((v17 + 664), &v998, &v997, v995, (*(v993 + 24) + 1) | ((v776 + 1) << 8), v990, __b, *(v17 + 28), *(v17 + 24));
                            sub_27758428C(v991 + 13824, (v991 + 16 * v995[0] + 3376), 7);
                            *(v993 + 21) = v883;
                            v884 = &unk_2775EF6E5 + 2 * v883;
                            *(v993 + 23) = 0;
                            if (v883 == 7)
                            {
                              v885 = v997;
                              if (v997 >= 2)
                              {
                                v886 = v1001;
                                if (v999 <= 639)
                                {
                                  v887 = 2 * (v1001 < 640);
                                }

                                else
                                {
                                  v887 = v1001 < 640;
                                }

                                sub_277584658(v991 + 13824, (v991 + 4 * v887 + 5608));
                                v889 = *(v993 + 23) + v888;
                                *(v993 + 23) = v889;
                                if (v889 != 1 || v885 == 2)
                                {
                                  goto LABEL_1214;
                                }

                                v890 = &v1002;
                                goto LABEL_1210;
                              }
                            }

                            else if (*v884 == 1 || v884[1] == 1)
                            {
                              v889 = 1;
                              *(v993 + 23) = 1;
                              v891 = v997;
                              if (v997 < 3)
                              {
                                goto LABEL_1214;
                              }

                              v886 = v1002;
                              v892 = v1001 <= 639 ? 2 * (v1002 < 640) : v1002 < 640;
                              sub_277584658(v991 + 13824, (v991 + 4 * v892 + 5608));
                              v889 = *(v993 + 23) + v893;
                              *(v993 + 23) = v889;
                              if (v889 != 2 || v891 == 3)
                              {
                                goto LABEL_1214;
                              }

                              v890 = v1003;
LABEL_1210:
                              v894 = *v890 < 640;
                              if (v886 <= 639)
                              {
                                v894 = 2 * v894;
                              }

                              sub_277584658(v991 + 13824, (v991 + 4 * v894 + 5608));
                              v889 = *(v993 + 23) + v895;
                              *(v993 + 23) = v889;
LABEL_1214:
                              v896 = *(v993 + 21) != 6;
                              v897 = *v884;
                              if (v897 < 2)
                              {
                                *(v993 + 2) = *(&v998 + 4 * v889);
                                sub_2775C04F8(*(v18 + 24), v993 + 4);
                                v171 = v980;
                                v232 = v989;
                                v898 = v943;
                              }

                              else
                              {
                                v232 = v989;
                                v898 = v943;
                                if (v897 == 2)
                                {
                                  v899 = *(v18 + 24);
                                  v900 = v899 + 36 * *(v993 + 24);
                                  if (*(v900 + 896) == 1)
                                  {
                                    v896 = 1;
                                  }

                                  *(v993 + 2) = sub_2775C0558((v900 + 896), *(v17 + 24), *(v17 + 28), v985, v992, v899);
                                }

                                else if (v897 == 3)
                                {
                                  *(v993 + 2) = *(&v998 + 4 * v889);
                                  sub_2775BF40C(v17, v993 + 4, (v991 + 13248), *(*(v18 + 24) + 269) == 0, *&v790, *&v778, *&v779, *&v780, v781);
                                }

                                v171 = v980;
                              }

                              v901 = v884[1];
                              if (v901 < 2)
                              {
                                *(v993 + 3) = *(&v998 + 4 * *(v993 + 23) + 1);
                                v902 = v18;
                                sub_2775C04F8(*(v18 + 24), v993 + 6);
                              }

                              else if (v901 == 2)
                              {
                                v902 = v18;
                                v903 = *(v18 + 24);
                                v904 = v903 + 36 * *(v993 + 25);
                                if (*(v904 + 896) == 1)
                                {
                                  v896 = 1;
                                }

                                *(v993 + 3) = sub_2775C0558((v904 + 896), *(v17 + 24), *(v17 + 28), v985, v992, v903);
                              }

                              else if (v901 == 3)
                              {
                                *(v993 + 3) = *(&v998 + 4 * *(v993 + 23) + 1);
                                v902 = v18;
                                sub_2775BF40C(v17, v993 + 6, (v991 + 13248), *(*(v18 + 24) + 269) == 0, *&v790, *&v778, *&v779, *&v780, v781);
                              }

                              else
                              {
                                v902 = v18;
                              }

                              v905 = *(v902 + 8);
                              if (v905[396])
                              {
                                v906 = *(v17 + 656) + v987;
                                v220 = v985;
                                if (*(v906 + 256) <= 2u)
                                {
                                  if (*(v906 + 288) == 6)
                                  {
                                    v907 = 3;
                                  }

                                  else
                                  {
                                    v907 = 0;
                                  }
                                }

                                else
                                {
                                  v907 = 1;
                                }

                                if (*(v17 + v232 + 288) <= 2u)
                                {
                                  if (*(v17 + v232 + 320) == 6)
                                  {
                                    v908 = 3;
                                  }

                                  else
                                  {
                                    v908 = 0;
                                  }
                                }

                                else
                                {
                                  v908 = 1;
                                }

                                v909 = v908 + v907;
                                if (v909 >= 5)
                                {
                                  v909 = 5;
                                }

                                sub_277584658(v991 + 13824, (v991 + 4 * v909 + 5700));
                                if (v910)
                                {
                                  if (((1 << v990) & 0x3BB80) != 0)
                                  {
                                    v911 = byte_2775EF6F5[v898];
                                    sub_277584658(v991 + 13824, (v991 + 4 * v911 + 5724));
                                    *(v993 + 20) = 4 - v912;
                                    if (v912)
                                    {
LABEL_1266:
                                      sub_2775845E0();
                                      *(v993 + 17) = v918;
                                      v220 = v985;
LABEL_1267:
                                      v249 = v990;
                                      v813 = v896;
                                      v242 = 0;
LABEL_1149:
                                      v279 = *(*(v18 + 24) + 432);
                                      if (v279 == 4)
                                      {
                                        if (v813)
                                        {
                                          v857 = *(v993 + 20);
                                          v858 = *(v993 + 20) != 0;
                                          v859 = *(v993 + 24);
                                          v860 = (*(v17 + 656) + v987);
                                          if (v860[288] == v859 || v860[320] == v859)
                                          {
                                            v861 = v860[352];
                                          }

                                          else
                                          {
                                            v861 = 3;
                                          }

                                          v862 = v17 + v232;
                                          if (*(v17 + v232 + 320) == v859 || *(v862 + 352) == v859)
                                          {
                                            v863 = *(v862 + 384);
                                          }

                                          else
                                          {
                                            v863 = 3;
                                          }

                                          v864 = 4 * (v857 != 0);
                                          v865 = v864 | 3;
                                          v866 = v861 + v864;
                                          if (v863 != 3)
                                          {
                                            v866 = v865;
                                          }

                                          if (v861 == 3)
                                          {
                                            v866 = v863 + 4 * (v857 != 0);
                                          }

                                          v867 = v861 + 4 * (v857 != 0);
                                          if (v861 != v863)
                                          {
                                            v867 = v866;
                                          }

                                          v868 = sub_2775840FC(v991 + 13824, (v991 + 8 * v867 + 4896), 2, *&v790, *&v778, *&v779, *&v780, v781);
                                          v279 = v868;
                                          if (*(*(v18 + 8) + 398))
                                          {
                                            v869 = sub_2775C11E8(*(v17 + 656), v17 + 32, v858, *(v993 + 24), v232, v987);
                                            v280 = sub_2775840FC(v991 + 13824, (v991 + 8 * v869 + 4960), 2, v870, v871, v872, v873, v874);
                                          }

                                          else
                                          {
                                            v280 = v868;
                                          }

                                          v220 = v985;
                                          v249 = v990;
                                        }

                                        else
                                        {
                                          v279 = 0;
                                          v280 = 0;
                                        }

LABEL_420:
                                        *(v993 + 27) = byte_2775F12E8[4 * v280 + v279];
                                        v281 = v249;
                                        sub_2775BF4E4(v17, v993, v249, v987, v232);
                                        if (v988[64].i32[1] == 1)
                                        {
                                          (*(v18 + 3360))(v17, v281, v993);
                                        }

                                        else if ((*(v18 + 3296))(v17, v281, v993))
                                        {
                                          return 0xFFFFFFFFLL;
                                        }

                                        __ba = v279;
                                        v282 = *(v18 + 24);
                                        v283 = v990;
                                        if (*(v282 + 830) || *(v282 + 831))
                                        {
                                          v969 = v280;
                                          v976 = v242;
                                          if (v242)
                                          {
                                            v284 = 2;
                                          }

                                          else
                                          {
                                            v284 = 6;
                                          }

                                          v96 = v284 == *(v993 + 21);
                                          v285 = *(v993 + 4);
                                          v286 = *(v993 + 24);
                                          if (v96)
                                          {
                                            v287 = (*(v991 + 14576) + (v285 << 6) + 2 * v286);
                                          }

                                          else
                                          {
                                            v287 = (*(v991 + 14576) + (v285 << 6) + 2 * v286 + 1);
                                          }

                                          LOWORD(v997) = *(v993 + 29);
                                          WORD1(v997) = *(v993 + 15);
                                          v288 = *(v993 + 26);
                                          v289 = *(v282 + v285 + 808);
                                          if (v289)
                                          {
                                            v290 = 0;
                                          }

                                          else
                                          {
                                            v290 = *(v993 + 7);
                                          }

                                          if (v289)
                                          {
                                            v288 = 0;
                                          }

                                          v291 = v988[61];
                                          v292 = *(v18 + 4432);
                                          v293 = *(v18 + 3432);
                                          v294 = *(v17 + 24);
                                          v295 = *(v17 + 28);
                                          v296 = v294;
                                          v297 = v295;
                                          v298 = *(v18 + 3440);
                                          v299 = *(v18 + 3444);
                                          v300 = *(v993 + 6);
                                          v301 = *(v18 + 2168);
                                          v302 = *(v17 + 656);
                                          if (v171)
                                          {
                                            v303 = (v302 + v982 + 512);
                                          }

                                          else
                                          {
                                            v303 = 0;
                                          }

                                          if (v171)
                                          {
                                            v304 = (v17 + v981 + 544);
                                          }

                                          else
                                          {
                                            v304 = 0;
                                          }

                                          v965 = *v986;
                                          if (v298 - v294 >= v965)
                                          {
                                            v305 = *v986;
                                          }

                                          else
                                          {
                                            v305 = (v298 - v294);
                                          }

                                          v306 = v986[1];
                                          if (v299 - v295 >= v306)
                                          {
                                            v307 = v986[1];
                                          }

                                          else
                                          {
                                            v307 = (v299 - v295);
                                          }

                                          v308 = *(v17 + 24) & 0x1F;
                                          v309 = v295 & 0x1F;
                                          if (v305 && v307)
                                          {
                                            v923 = v986[1];
                                            v937 = v988[61];
                                            v972 = v18;
                                            v310 = 0;
                                            v311 = v288;
                                            __dsta = (v302 + v987 + 480);
                                            v944 = v17 + v232 + 512;
                                            v312 = 4 * v293 * v295 + 4 * v296 + v292 + 1;
                                            do
                                            {
                                              v313 = v312;
                                              v314 = v305;
                                              do
                                              {
                                                *(v313 - 1) = v287[2];
                                                *v313 = v287[18];
                                                v313 += 4;
                                                --v314;
                                              }

                                              while (v314);
                                              ++v310;
                                              v312 += 4 * v293;
                                            }

                                            while (v310 != v307);
                                            v924 = v301;
                                            v925 = v296;
                                            v926 = v299;
                                            v927 = v297;
                                            v928 = v292;
                                            v929 = v293;
                                            v930 = v304;
                                            v952 = v309;
                                            v955 = v308;
                                            v931 = v303;
                                            v933 = v300;
                                            v940 = v290;
                                            v315 = 0;
                                            v316 = 0;
                                            v317 = &unk_277601B98 + 8 * v311;
                                            do
                                            {
                                              v318 = 0;
                                              v319 = 0;
                                              v320 = v316;
                                              do
                                              {
                                                sub_2775E28F8(&v998 + 32 * v320 + v319, v311, 0, v315, v318, &v997);
                                                v319 += *v317;
                                                ++v318;
                                              }

                                              while (v319 < v305);
                                              v316 = v320 + v317[1];
                                              ++v315;
                                            }

                                            while (v316 < v307);
                                            v321 = 0;
                                            v322 = 1 << v952;
                                            v323 = v307;
                                            v291 = v937;
                                            v324 = v944;
                                            v325 = v944;
                                            v326 = 1 << v952;
                                            v300 = v933;
                                            do
                                            {
                                              v327 = *(&v998 + v321);
                                              v329 = *v325++;
                                              v328 = v329;
                                              if (v327 >= v329)
                                              {
                                                v327 = v328;
                                              }

                                              *(*&v937 + 12 * v955 + 4 * v327 + 2 * ((v326 & 0xFFFF0000) != 0)) |= v326 >> (16 * ((v326 & 0xFFFF0000) != 0));
                                              v326 *= 2;
                                              v321 += 32;
                                            }

                                            while (32 * v307 != v321);
                                            v330 = 1 << v955;
                                            v331 = 2048;
                                            v332 = __dsta;
                                            v333 = __dsta;
                                            v334 = v305;
                                            v335 = 1 << v955;
                                            v18 = v972;
                                            v171 = v980;
                                            do
                                            {
                                              v336 = *(&v998 + v331);
                                              v338 = *v333++;
                                              v337 = v338;
                                              if (v336 >= v338)
                                              {
                                                v336 = v337;
                                              }

                                              v339 = *&v937 + 384 + 12 * v952 + 4 * v336;
                                              *(v339 + 2 * ((v335 & 0xFFFF0000) != 0)) |= v335 >> (16 * ((v335 & 0xFFFF0000) != 0));
                                              v335 *= 2;
                                              ++v331;
                                              --v334;
                                            }

                                            while (v334);
                                            v220 = v985;
                                            v232 = v989;
                                            if (!v933)
                                            {
                                              for (m = 0; m != v307; ++m)
                                              {
                                                v341 = LOBYTE(v1003[8 * m + 242]);
                                                if (v305 > v341)
                                                {
                                                  v342 = *(&v998 + 32 * m);
                                                  do
                                                  {
                                                    v343 = *(&v998 + 32 * m + v341);
                                                    if (v343 < v342)
                                                    {
                                                      v342 = *(&v998 + 32 * m + v341);
                                                    }

                                                    v344 = *&v937 + 12 * (v341 + v955) + 4 * v342;
                                                    *(v344 + 2 * ((v322 & 0xFFFF0000) != 0)) |= v322 >> (16 * ((v322 & 0xFFFF0000) != 0));
                                                    v341 += *(&v1003[8 * m + 242] + v341);
                                                    v342 = v343;
                                                  }

                                                  while (v341 < v305);
                                                }

                                                v322 *= 2;
                                              }

                                              v345 = 0;
                                              v332 = __dsta;
                                              v324 = v944;
                                              do
                                              {
                                                v346 = *(&v1003[754] + v345);
                                                if (v307 > v346)
                                                {
                                                  v347 = *(&v1003[498] + v345);
                                                  do
                                                  {
                                                    v348 = *(&v1003[8 * v346 + 498] + v345);
                                                    if (v347 >= v348)
                                                    {
                                                      v347 = *(&v1003[8 * v346 + 498] + v345);
                                                    }

                                                    v349 = *&v937 + 384 + 12 * (v346 + v952) + 4 * v347;
                                                    *(v349 + 2 * ((v330 & 0xFFFF0000) != 0)) |= v330 >> (16 * ((v330 & 0xFFFF0000) != 0));
                                                    v346 += *(&v1003[8 * v346 + 754] + v345);
                                                    v347 = v348;
                                                  }

                                                  while (v346 < v307);
                                                }

                                                ++v345;
                                                v330 *= 2;
                                              }

                                              while (v345 != v305);
                                            }

                                            v350 = (v305 - 1);
                                            do
                                            {
                                              *v324++ = *(&v998 + v350);
                                              v350 += 32;
                                              --v323;
                                            }

                                            while (v323);
                                            memcpy(v332, &v1003[8 * (v307 - 1) + 498], v305);
                                            v283 = v990;
                                            v290 = v940;
                                            v304 = v930;
                                            v303 = v931;
                                            v309 = v952;
                                            v308 = v955;
                                            v292 = v928;
                                            v293 = v929;
                                            v297 = v927;
                                            v299 = v926;
                                            LODWORD(v296) = v925;
                                            v301 = v924;
                                            v306 = v923;
                                          }

                                          LOBYTE(v242) = v976;
                                          v280 = v969;
                                          if (v171)
                                          {
                                            v351 = v301 != 3;
                                            if (v301 == 3)
                                            {
                                              v352 = v298;
                                            }

                                            else
                                            {
                                              v352 = v298 + 1;
                                            }

                                            v353 = v352 >> v351;
                                            v354 = v296 >> v351;
                                            v355 = v965;
                                            if (v301 != 3)
                                            {
                                              v355 = v965 + 1;
                                            }

                                            v356 = v353 - v354;
                                            v357 = v355 >> v351;
                                            if (v356 >= v357)
                                            {
                                              v358 = v357;
                                            }

                                            else
                                            {
                                              v358 = v356;
                                            }

                                            v359 = v301 == 1;
                                            if (v301 == 1)
                                            {
                                              v360 = v299 + 1;
                                            }

                                            else
                                            {
                                              v360 = v299;
                                            }

                                            v361 = v360 >> v359;
                                            v362 = v297 >> v359;
                                            if (v301 == 1)
                                            {
                                              ++v306;
                                            }

                                            v363 = v361 - v362;
                                            v364 = v306 >> v359;
                                            if (v363 >= v364)
                                            {
                                              v365 = v364;
                                            }

                                            else
                                            {
                                              v365 = v363;
                                            }

                                            if (v358 && v365)
                                            {
                                              v366 = 0;
                                              v367 = 4 * v293 * v362 + 4 * v354 + v292 + 3;
                                              do
                                              {
                                                v368 = v367;
                                                v369 = v358;
                                                do
                                                {
                                                  *(v368 - 1) = v287[34];
                                                  *v368 = v287[50];
                                                  v368 += 4;
                                                  --v369;
                                                }

                                                while (v369);
                                                ++v366;
                                                v367 += 4 * v293;
                                              }

                                              while (v366 != v365);
                                              sub_2775E251C((*&v291 + 768), v309 >> v359, v308 >> v351, v358, v365, v300, v290, v303, v304, v301 != 3, 0, 0, v359);
                                              v283 = v990;
                                            }
                                          }
                                        }

                                        v370 = *(v18 + 3256);
                                        if (v242)
                                        {
                                          v371 = *(v993 + 21);
                                          v998 = *(v993 + 2);
                                          LOBYTE(v999) = *(v993 + 24) + 1;
                                          if (*(v993 + 28))
                                          {
                                            v372 = 0;
                                          }

                                          else
                                          {
                                            v372 = -1;
                                          }

                                          BYTE1(v999) = v372;
                                          BYTE2(v999) = v283;
                                          if (v220 >= v992)
                                          {
                                            v373 = v992;
                                          }

                                          else
                                          {
                                            v373 = v220;
                                          }

                                          v375 = v373 > 1 && v371 == 2;
                                          HIBYTE(v999) = v375 | (2 * (v371 == 3));
                                          (*(v370 + 63016))(v17 + 8 * (*(v17 + 28) & 0x1FLL) + 712, &v998, *(v17 + 24), v220);
                                        }

                                        else
                                        {
                                          v376 = *(v993 + 21);
                                          v96 = v376 == 6;
                                          v998 = *(v993 + 1);
                                          LOBYTE(v999) = *(v993 + 24) + 1;
                                          BYTE1(v999) = *(v993 + 25) + 1;
                                          BYTE2(v999) = v283;
                                          v377 = (0x178u >> v376) & 2;
                                          if (v96)
                                          {
                                            LOBYTE(v377) = v377 + 1;
                                          }

                                          HIBYTE(v999) = v377;
                                          (*(v370 + 63016))(v17 + 8 * (*(v17 + 28) & 0x1FLL) + 712, &v998, *(v17 + 24), v220);
                                        }

                                        if (v992 > 7)
                                        {
                                          switch(v992)
                                          {
                                            case 8:
                                              v430 = (v17 + v232);
                                              v430[20] = 0x101010101010101 * v962;
                                              v430[28] = 0x101010101010101 * *(v993 + 5);
                                              v430[32] = 0;
                                              v430[24] = 0x101010101010101 * *(v993 + 6);
                                              v430[78] = 0;
                                              v430[1028] = 0;
                                              v430[56] = 0x101010101010101 * v986[3];
                                              v430[36] = 0x101010101010101 * *(v993 + 20);
                                              v430[48] = 0x101010101010101 * __ba;
                                              v430[52] = 0x101010101010101 * v280;
                                              v430[4] = 0x101010101010101 * *(v993 + 21);
                                              v430[40] = 0x101010101010101 * *(v993 + 24);
                                              v430[44] = 0x101010101010101 * *(v993 + 25);
                                              break;
                                            case 16:
                                              v432 = v17 + v232;
                                              *(v432 + 160) = vdupq_n_s64(0x101010101010101 * v962);
                                              *(v432 + 224) = vdupq_n_s64(0x101010101010101 * *(v993 + 5));
                                              *(v432 + 256) = 0u;
                                              *(v432 + 192) = vdupq_n_s64(0x101010101010101 * *(v993 + 6));
                                              *(v432 + 624) = 0u;
                                              *(v432 + 8224) = 0u;
                                              *(v432 + 448) = vdupq_n_s64(0x101010101010101 * v986[3]);
                                              *(v432 + 288) = vdupq_n_s64(0x101010101010101 * *(v993 + 20));
                                              *(v432 + 384) = vdupq_n_s64(0x101010101010101 * __ba);
                                              *(v432 + 416) = vdupq_n_s64(0x101010101010101 * v280);
                                              *(v432 + 32) = vdupq_n_s64(0x101010101010101 * *(v993 + 21));
                                              *(v432 + 320) = vdupq_n_s64(0x101010101010101 * *(v993 + 24));
                                              *(v432 + 352) = vdupq_n_s64(0x101010101010101 * *(v993 + 25));
                                              break;
                                            case 32:
                                              v379 = v17 + 160;
                                              v380 = vdupq_n_s64(0x101010101010101 * v962);
                                              *(v379 + v232) = v380;
                                              v381 = v232 + 16;
                                              *(v379 + v381) = v380;
                                              v382 = vdupq_n_s64(0x101010101010101 * *(v993 + 5));
                                              v383 = v17 + 224;
                                              *(v383 + v232) = v382;
                                              *(v383 + v381) = v382;
                                              v384 = v17 + 256;
                                              *(v384 + v232) = 0u;
                                              *(v384 + v381) = 0u;
                                              v385 = v17 + 192;
                                              v386 = vdupq_n_s64(0x101010101010101 * *(v993 + 6));
                                              *(v385 + v232) = v386;
                                              *(v385 + v381) = v386;
                                              v387 = v17 + 624;
                                              *(v387 + v232) = 0u;
                                              *(v387 + v381) = 0u;
                                              v388 = v17 + 8224;
                                              *(v388 + v232) = 0u;
                                              *(v388 + v381) = 0u;
                                              v389 = v17 + 448;
                                              v390 = vdupq_n_s64(0x101010101010101 * v986[3]);
                                              *(v389 + v232) = v390;
                                              *(v389 + v381) = v390;
                                              v391 = v17 + 288;
                                              v392 = vdupq_n_s64(0x101010101010101 * *(v993 + 20));
                                              *(v391 + v232) = v392;
                                              *(v391 + v381) = v392;
                                              v393 = v17 + 384;
                                              v394 = vdupq_n_s64(0x101010101010101 * __ba);
                                              *(v393 + v232) = v394;
                                              *(v393 + v381) = v394;
                                              v395 = v17 + 416;
                                              v396 = vdupq_n_s64(0x101010101010101 * v280);
                                              *(v395 + v232) = v396;
                                              *(v395 + v381) = v396;
                                              v397 = vdupq_n_s64(0x101010101010101 * *(v993 + 21));
                                              v398 = v17 + 32;
                                              *(v398 + v232) = v397;
                                              *(v398 + v381) = v397;
                                              v399 = v17 + 320;
                                              v400 = vdupq_n_s64(0x101010101010101 * *(v993 + 24));
                                              *(v399 + v232) = v400;
                                              *(v399 + v381) = v400;
                                              v401 = v17 + 352;
                                              v402 = vdupq_n_s64(0x101010101010101 * *(v993 + 25));
                                              *(v401 + v232) = v402;
                                              *(v401 + v381) = v402;
                                              break;
                                          }
                                        }

                                        else
                                        {
                                          switch(v992)
                                          {
                                            case 1:
                                              v429 = (v17 + v232);
                                              v429[160] = v962;
                                              v429[224] = *(v993 + 5);
                                              v429[256] = 0;
                                              v429[192] = *(v993 + 6);
                                              v429[624] = 0;
                                              v429[8224] = 0;
                                              v429[448] = v986[3];
                                              v429[288] = *(v993 + 20);
                                              v429[384] = __ba;
                                              v429[416] = v280;
                                              v429[32] = *(v993 + 21);
                                              v429[320] = *(v993 + 24);
                                              v429[352] = *(v993 + 25);
                                              break;
                                            case 2:
                                              v431 = (v17 + v232);
                                              v431[80] = 257 * v962;
                                              v431[112] = *(v993 + 5) | (*(v993 + 5) << 8);
                                              v431[128] = 0;
                                              v431[96] = *(v993 + 6) | (*(v993 + 6) << 8);
                                              v431[312] = 0;
                                              v431[4112] = 0;
                                              v431[224] = v986[3] | (v986[3] << 8);
                                              v431[144] = *(v993 + 20) | (*(v993 + 20) << 8);
                                              v431[192] = 257 * __ba;
                                              v431[208] = 257 * v280;
                                              v431[16] = *(v993 + 21) | (*(v993 + 21) << 8);
                                              v431[160] = 257 * *(v993 + 24);
                                              v431[176] = *(v993 + 25) | (*(v993 + 25) << 8);
                                              break;
                                            case 4:
                                              v378 = (v17 + v232);
                                              v378[40] = 16843009 * v962;
                                              v378[56] = 16843009 * *(v993 + 5);
                                              v378[64] = 0;
                                              v378[48] = 16843009 * *(v993 + 6);
                                              v378[156] = 0;
                                              v378[2056] = 0;
                                              v378[112] = 16843009 * v986[3];
                                              v378[72] = 16843009 * *(v993 + 20);
                                              v378[96] = 16843009 * __ba;
                                              v378[104] = 16843009 * v280;
                                              v378[8] = 16843009 * *(v993 + 21);
                                              v378[80] = 16843009 * *(v993 + 24);
                                              v378[88] = 16843009 * *(v993 + 25);
                                              break;
                                          }
                                        }

                                        if (v220 <= 7)
                                        {
                                          switch(v220)
                                          {
                                            case 1:
                                              *(*(v17 + 656) + v987 + 128) = v962;
                                              *(*(v17 + 656) + v987 + 192) = *(v993 + 5);
                                              *(*(v17 + 656) + v987 + 224) = 0;
                                              *(*(v17 + 656) + v987 + 160) = *(v993 + 6);
                                              *(*(v17 + 656) + v987 + 592) = 0;
                                              *(v17 + v987 + 0x2000) = 0;
                                              *(*(v17 + 656) + v987 + 416) = v986[2];
                                              *(*(v17 + 656) + v987 + 256) = *(v993 + 20);
                                              *(*(v17 + 656) + v987 + 352) = __ba;
                                              *(*(v17 + 656) + v987 + 384) = v280;
                                              *(*(v17 + 656) + v987) = *(v993 + 21);
                                              *(*(v17 + 656) + v987 + 288) = *(v993 + 24);
                                              *(*(v17 + 656) + v987 + 320) = *(v993 + 25);
                                              if (!v171)
                                              {
                                                goto LABEL_582;
                                              }

                                              goto LABEL_579;
                                            case 2:
                                              *(*(v17 + 656) + v987 + 128) = 257 * v962;
                                              *(*(v17 + 656) + v987 + 192) = *(v993 + 5) | (*(v993 + 5) << 8);
                                              *(*(v17 + 656) + v987 + 224) = 0;
                                              *(*(v17 + 656) + v987 + 160) = *(v993 + 6) | (*(v993 + 6) << 8);
                                              *(*(v17 + 656) + v987 + 592) = 0;
                                              *(v17 + v987 + 0x2000) = 0;
                                              *(*(v17 + 656) + v987 + 416) = v986[2] | (v986[2] << 8);
                                              *(*(v17 + 656) + v987 + 256) = *(v993 + 20) | (*(v993 + 20) << 8);
                                              *(*(v17 + 656) + v987 + 352) = 257 * __ba;
                                              *(*(v17 + 656) + v987 + 384) = 257 * v280;
                                              *(*(v17 + 656) + v987) = *(v993 + 21) | (*(v993 + 21) << 8);
                                              *(*(v17 + 656) + v987 + 288) = 257 * *(v993 + 24);
                                              *(*(v17 + 656) + v987 + 320) = *(v993 + 25) | (*(v993 + 25) << 8);
                                              break;
                                            case 4:
                                              *(*(v17 + 656) + v987 + 128) = 16843009 * v962;
                                              *(*(v17 + 656) + v987 + 192) = 16843009 * *(v993 + 5);
                                              *(*(v17 + 656) + v987 + 224) = 0;
                                              *(*(v17 + 656) + v987 + 160) = 16843009 * *(v993 + 6);
                                              *(*(v17 + 656) + v987 + 592) = 0;
                                              *(v17 + v987 + 0x2000) = 0;
                                              *(*(v17 + 656) + v987 + 416) = 16843009 * v986[2];
                                              *(*(v17 + 656) + v987 + 256) = 16843009 * *(v993 + 20);
                                              *(*(v17 + 656) + v987 + 352) = 16843009 * __ba;
                                              *(*(v17 + 656) + v987 + 384) = 16843009 * v280;
                                              *(*(v17 + 656) + v987) = 16843009 * *(v993 + 21);
                                              *(*(v17 + 656) + v987 + 288) = 16843009 * *(v993 + 24);
                                              *(*(v17 + 656) + v987 + 320) = 16843009 * *(v993 + 25);
                                              if (!v171)
                                              {
                                                goto LABEL_582;
                                              }

LABEL_579:
                                              v35 = v963;
                                              goto LABEL_642;
                                          }

                                          goto LABEL_578;
                                        }

                                        switch(v220)
                                        {
                                          case 8:
                                            v436 = v987;
                                            *(*(v17 + 656) + v987 + 128) = 0x101010101010101 * v962;
                                            *(*(v17 + 656) + v987 + 192) = 0x101010101010101 * *(v993 + 5);
                                            *(*(v17 + 656) + v987 + 224) = 0;
                                            *(*(v17 + 656) + v987 + 160) = 0x101010101010101 * *(v993 + 6);
                                            *(*(v17 + 656) + v987 + 592) = 0;
                                            *(v17 + v987 + 0x2000) = 0;
                                            *(*(v17 + 656) + v987 + 416) = 0x101010101010101 * v986[2];
                                            *(*(v17 + 656) + v987 + 256) = 0x101010101010101 * *(v993 + 20);
                                            *(*(v17 + 656) + v987 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v987 + 384) = 0x101010101010101 * v280;
                                            *(*(v17 + 656) + v987) = 0x101010101010101 * *(v993 + 21);
                                            *(*(v17 + 656) + v987 + 288) = 0x101010101010101 * *(v993 + 24);
                                            v444 = 0x101010101010101 * *(v993 + 25);
                                            break;
                                          case 0x10:
                                            v446 = 0x101010101010101 * v962;
                                            *(*(v17 + 656) + v987 + 128) = v446;
                                            v447 = v987 + 8;
                                            *(*(v17 + 656) + v447 + 128) = v446;
                                            v448 = 0x101010101010101 * *(v993 + 5);
                                            *(*(v17 + 656) + v987 + 192) = v448;
                                            *(*(v17 + 656) + v447 + 192) = v448;
                                            *(*(v17 + 656) + v987 + 224) = 0;
                                            *(*(v17 + 656) + v447 + 224) = 0;
                                            v449 = 0x101010101010101 * *(v993 + 6);
                                            *(*(v17 + 656) + v987 + 160) = v449;
                                            *(*(v17 + 656) + v447 + 160) = v449;
                                            *(*(v17 + 656) + v987 + 592) = 0;
                                            *(*(v17 + 656) + v447 + 592) = 0;
                                            v450 = v17 + v987;
                                            *(v450 + 8200) = 0;
                                            *(v450 + 0x2000) = 0;
                                            v451 = 0x101010101010101 * v986[2];
                                            *(*(v17 + 656) + v987 + 416) = v451;
                                            *(*(v17 + 656) + v447 + 416) = v451;
                                            v452 = 0x101010101010101 * *(v993 + 20);
                                            *(*(v17 + 656) + v987 + 256) = v452;
                                            *(*(v17 + 656) + v447 + 256) = v452;
                                            *(*(v17 + 656) + v987 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v447 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v987 + 384) = 0x101010101010101 * v280;
                                            *(*(v17 + 656) + v447 + 384) = 0x101010101010101 * v280;
                                            v453 = 0x101010101010101 * *(v993 + 21);
                                            *(*(v17 + 656) + v987) = v453;
                                            *(*(v17 + 656) + v447) = v453;
                                            v454 = 0x101010101010101 * *(v993 + 24);
                                            *(*(v17 + 656) + v987 + 288) = v454;
                                            *(*(v17 + 656) + v447 + 288) = v454;
                                            v444 = 0x101010101010101 * *(v993 + 25);
                                            *(*(v17 + 656) + v987 + 320) = v444;
                                            v445 = *(v17 + 656) + v447;
LABEL_581:
                                            *(v445 + 320) = v444;
                                            if (v171)
                                            {
                                              goto LABEL_579;
                                            }

                                            goto LABEL_582;
                                          case 0x20:
                                            v433 = 0x101010101010101 * v962;
                                            *(*(v17 + 656) + v987 + 128) = v433;
                                            v434 = v987 + 8;
                                            *(*(v17 + 656) + v434 + 128) = v433;
                                            v435 = v987 + 16;
                                            *(*(v17 + 656) + v435 + 128) = v433;
                                            v436 = v987 + 24;
                                            *(*(v17 + 656) + v436 + 128) = v433;
                                            v437 = 0x101010101010101 * *(v993 + 5);
                                            *(*(v17 + 656) + v987 + 192) = v437;
                                            *(*(v17 + 656) + v434 + 192) = v437;
                                            *(*(v17 + 656) + v435 + 192) = v437;
                                            *(*(v17 + 656) + v436 + 192) = v437;
                                            *(*(v17 + 656) + v987 + 224) = 0;
                                            *(*(v17 + 656) + v434 + 224) = 0;
                                            *(*(v17 + 656) + v435 + 224) = 0;
                                            *(*(v17 + 656) + v436 + 224) = 0;
                                            v438 = 0x101010101010101 * *(v993 + 6);
                                            *(*(v17 + 656) + v987 + 160) = v438;
                                            *(*(v17 + 656) + v434 + 160) = v438;
                                            *(*(v17 + 656) + v435 + 160) = v438;
                                            *(*(v17 + 656) + v436 + 160) = v438;
                                            *(*(v17 + 656) + v987 + 592) = 0;
                                            *(*(v17 + 656) + v434 + 592) = 0;
                                            *(*(v17 + 656) + v435 + 592) = 0;
                                            *(*(v17 + 656) + v436 + 592) = 0;
                                            v439 = v17 + 0x2000;
                                            *(v439 + v987) = 0u;
                                            *(v439 + v435) = 0u;
                                            v440 = 0x101010101010101 * v986[2];
                                            *(*(v17 + 656) + v987 + 416) = v440;
                                            *(*(v17 + 656) + v434 + 416) = v440;
                                            *(*(v17 + 656) + v435 + 416) = v440;
                                            *(*(v17 + 656) + v436 + 416) = v440;
                                            v441 = 0x101010101010101 * *(v993 + 20);
                                            *(*(v17 + 656) + v987 + 256) = v441;
                                            *(*(v17 + 656) + v434 + 256) = v441;
                                            *(*(v17 + 656) + v435 + 256) = v441;
                                            *(*(v17 + 656) + v436 + 256) = v441;
                                            *(*(v17 + 656) + v987 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v434 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v435 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v436 + 352) = 0x101010101010101 * __ba;
                                            *(*(v17 + 656) + v987 + 384) = 0x101010101010101 * v280;
                                            *(*(v17 + 656) + v434 + 384) = 0x101010101010101 * v280;
                                            *(*(v17 + 656) + v435 + 384) = 0x101010101010101 * v280;
                                            *(*(v17 + 656) + v436 + 384) = 0x101010101010101 * v280;
                                            v442 = 0x101010101010101 * *(v993 + 21);
                                            *(*(v17 + 656) + v987) = v442;
                                            *(*(v17 + 656) + v434) = v442;
                                            *(*(v17 + 656) + v435) = v442;
                                            *(*(v17 + 656) + v436) = v442;
                                            v443 = 0x101010101010101 * *(v993 + 24);
                                            *(*(v17 + 656) + v987 + 288) = v443;
                                            *(*(v17 + 656) + v434 + 288) = v443;
                                            *(*(v17 + 656) + v435 + 288) = v443;
                                            *(*(v17 + 656) + v436 + 288) = v443;
                                            v444 = 0x101010101010101 * *(v993 + 25);
                                            *(*(v17 + 656) + v987 + 320) = v444;
                                            *(*(v17 + 656) + v434 + 320) = v444;
                                            *(*(v17 + 656) + v435 + 320) = v444;
                                            break;
                                          default:
LABEL_578:
                                            if (v171)
                                            {
                                              goto LABEL_579;
                                            }

LABEL_582:
                                            v35 = v963;
                                            goto LABEL_935;
                                        }

                                        v445 = *(v17 + 656) + v436;
                                        goto LABEL_581;
                                      }

LABEL_419:
                                      v280 = v279;
                                      goto LABEL_420;
                                    }

                                    sub_27758434C(v991 + 13824, v991 + 32 * v911 + 960, 15);
                                    v914 = 16;
                                  }

                                  else
                                  {
                                    v913 = 3;
                                    v914 = 20;
                                  }

                                  *(v993 + v914) = v913;
                                  goto LABEL_1266;
                                }

                                v905 = *(v18 + 8);
                              }

                              else
                              {
                                v220 = v985;
                              }

                              if (v905[400])
                              {
                                v915 = sub_2775C066C(v905[412], *(*(v18 + 2112) + 248), *(*(v18 + 32 + 296 * *(v993 + 24) + 8) + 248), *(*(v18 + 32 + 296 * *(v993 + 25) + 8) + 248), *(v17 + 656), v17 + 32, v232, v987);
                                sub_277584658(v991 + 13824, (v991 + 4 * v915 + 5676));
                                *(v993 + 20) = v916 + 1;
                              }

                              else
                              {
                                *(v993 + 20) = 2;
                              }

                              goto LABEL_1267;
                            }

                            v889 = 0;
                            goto LABEL_1214;
                          }

                          v921 = sub_2775BFDD0(*(v17 + 656), v17 + 32, v989, v987, __dst, v951);
                          sub_277584658(v991 + 13824, (v991 + 4 * v921 + 5916));
                          v882 = v993;
                          v776 = *(v993 + 25) + v922;
                        }

                        *(v882 + 25) = v776;
                        goto LABEL_1193;
                      }

                      v210 = v18;
                      v213 = *(v18 + 8);
                      v211 = v991 + 13952;
                      sub_2775BEF24(*(v213 + 32), v173, v176, v991 + 13952);
                    }

                    v212 = v939;
                    *(v991 + 14048) = v211;
                    v18 = v210;
                    goto LABEL_338;
                  }

                  v962 = 0;
                  LODWORD(v10) = v990;
                }

                v110 = *(v18 + 3432);
                v111 = *(v18 + 2816) + v110 * *(v17 + 28) + *(v17 + 24);
                if (v21 <= v968 || v975 <= v964)
                {
                  if (v21 <= v968)
                  {
                    v121 = 0;
                    if (v975 <= v964)
                    {
                      v120 = 0;
                    }

                    else
                    {
                      v120 = *(v111 - v110);
                    }
                  }

                  else
                  {
                    v121 = 0;
                    v120 = *(v111 - 1);
                  }
                }

                else
                {
                  v112 = *(v111 - 1);
                  v113 = *(v111 - v110);
                  v114 = *(v111 + ~v110);
                  v115 = v112 == v113;
                  v116 = v114 == v112;
                  v117 = v113 == v114;
                  v118 = v113 == v114 || v114 == v112;
                  v119 = (v112 == v113) | v118;
                  if (v117)
                  {
                    v120 = v113;
                  }

                  else
                  {
                    v120 = v112;
                  }

                  v121 = 2;
                  if (!v115 || !v116)
                  {
                    v121 = v119;
                  }
                }

                if (*(v993 + 6) || (sub_27758428C(v991 + 13824, (v991 + 16 * v121 + 3504), 7), v159 = *(*(v18 + 24) + 807), v161 = sub_2775BEEC8(v160, v120, v159 + 1), LODWORD(v10) = v990, v120 = v161, v161 <= v159))
                {
                  if (v120 <= 7)
                  {
                    LODWORD(v123) = v120;
                  }

                  else
                  {
                    LODWORD(v123) = 0;
                  }
                }

                else
                {
                  LODWORD(v123) = 0;
                }

                goto LABEL_257;
              }

              LODWORD(v10) = v990;
              v51 = v64;
              if (v62)
              {
LABEL_169:
                v107 = v51;
                sub_277584658(v991 + 13824, (v991 + 4 * (*(v17 + v989 + 192) + *(*(v17 + 656) + v23 + 160)) + 6012));
                v51 = v107;
                LODWORD(v10) = v990;
                v67 = v108;
                goto LABEL_170;
              }
            }

            else
            {
              *(v993 + 5) = 0;
              v66 = v993 + 5;
              if (v62)
              {
                goto LABEL_169;
              }
            }

LABEL_167:
            if (v51[7])
            {
              v67 = 1;
              goto LABEL_170;
            }

            goto LABEL_169;
          }

          v42 = *(v17 + 24);
          v41 = *(v17 + 28);
        }

        v89 = *(v18 + 3432);
        v90 = *(v18 + 2816) + v89 * v41 + v42;
        if (v21 <= v968 || v975 <= v964)
        {
          if (v21 <= v968)
          {
            v100 = 0;
            if (v975 <= v964)
            {
              v99 = 0;
            }

            else
            {
              v99 = *(v90 - v89);
            }
          }

          else
          {
            v100 = 0;
            v99 = *(v90 - 1);
          }
        }

        else
        {
          v91 = *(v90 - 1);
          v92 = *(v90 - v89);
          v93 = *(v90 + ~v89);
          v94 = v91 == v92;
          v95 = v93 == v91;
          v96 = v92 == v93;
          v97 = v92 == v93 || v93 == v91;
          v98 = (v91 == v92) | v97;
          if (v96)
          {
            v99 = v92;
          }

          else
          {
            v99 = v91;
          }

          v100 = 2;
          if (!v94 || !v95)
          {
            v100 = v98;
          }
        }

        sub_27758428C(v991 + 13824, (v991 + 16 * v100 + 3504), 7);
        v40 = *(v18 + 24);
        v104 = v40[807];
        v106 = sub_2775BEEC8(v105, v99, v104 + 1);
        v962 = 0;
        if (v104 >= v106)
        {
          LOBYTE(v44) = v106;
        }

        else
        {
          LOBYTE(v44) = 0;
        }

        if ((v44 & 0xF8) != 0)
        {
          LOBYTE(v44) = 0;
        }

        *(v993 + 4) = v44;
        goto LABEL_161;
      }

      v51 = 0;
      v962 = 0;
    }

    else
    {
      v51 = 0;
      v962 = 0;
      *(v993 + 4) = 0;
    }

    v62 = 1;
    goto LABEL_69;
  }

  if (*(v993 + 3))
  {
    (*(v18 + 3288))(v17, v10, v12, v993);
    if (*(v993 + 8) == 13)
    {
      v37 = 0;
    }

    else
    {
      v37 = *(v993 + 8);
    }

    if (v992 > 7)
    {
      if (v992 != 8)
      {
        v38 = v990;
        if (v992 == 16)
        {
          v71 = v17 + v989;
          *(v71 + 32) = vdupq_n_s64(0x101010101010101 * v37);
          *&v72 = 0x101010101010101;
          *(&v72 + 1) = 0x101010101010101;
          *(v71 + 256) = v72;
        }

        else if (v992 == 32)
        {
          v52 = v17 + 32;
          v53 = vdupq_n_s64(0x101010101010101 * v37);
          *(v52 + v989) = v53;
          v54 = v989 + 16;
          *(v52 + v54) = v53;
          v55 = v17 + 256;
          v53.i64[0] = 0x101010101010101;
          v53.i64[1] = 0x101010101010101;
          *(v55 + v989) = v53;
          *(v55 + v54) = v53;
        }

LABEL_85:
        if (v25 > 7)
        {
          if (v25 == 8)
          {
            *(*(v17 + 656) + v23) = 0x101010101010101 * v37;
            v78 = *(v17 + 656) + v23;
          }

          else
          {
            if (v25 == 16)
            {
              v79 = 0x101010101010101 * v37;
              *(*(v17 + 656) + v23) = v79;
              v76 = (v21 & 0x1F) + 8;
              *(*(v17 + 656) + v76) = v79;
              v77 = *(v17 + 656) + v23;
            }

            else
            {
              if (v25 != 32)
              {
                goto LABEL_100;
              }

              v73 = 0x101010101010101 * v37;
              *(*(v17 + 656) + v23) = v73;
              v74 = (v21 & 0x1F) + 8;
              *(*(v17 + 656) + v74) = v73;
              v75 = (v21 & 0x1F) + 16;
              *(*(v17 + 656) + v75) = v73;
              v76 = (v21 & 0x1F) + 24;
              *(*(v17 + 656) + v76) = v73;
              *(*(v17 + 656) + v23 + 224) = 0x101010101010101;
              *(*(v17 + 656) + v74 + 224) = 0x101010101010101;
              v77 = *(v17 + 656) + v75;
            }

            *(v77 + 224) = 0x101010101010101;
            v78 = *(v17 + 656) + v76;
          }

          *(v78 + 224) = 0x101010101010101;
        }

        else
        {
          switch(v25)
          {
            case 1:
              *(*(v17 + 656) + v23) = v37;
              *(*(v17 + 656) + v23 + 224) = 1;
              break;
            case 2:
              *(*(v17 + 656) + v23) = v37 | (v37 << 8);
              *(*(v17 + 656) + v23 + 224) = 257;
              break;
            case 4:
              *(*(v17 + 656) + v23) = 16843009 * v37;
              *(*(v17 + 656) + v23 + 224) = 16843009;
              break;
          }
        }

LABEL_100:
        if (*(*(v18 + 24) + 232))
        {
          v80 = v17 + 672;
          v81 = *(v17 + 28) & 0x1F;
          if (v25)
          {
            v82 = (*(v80 + 8 * (v992 + v81 + 4)) + 12 * *(v17 + 24) + 10);
            v83 = v25;
            do
            {
              *(v82 - 2) = 0;
              *v82 = v38;
              v82 += 12;
              --v83;
            }

            while (v83);
            v81 = *(v17 + 28) & 0x1F;
          }

          if (v992 >= 2)
          {
            v84 = (v80 + 8 * (v81 + 5));
            v85 = (v992 - 1);
            v86 = *(v17 + 24);
            do
            {
              *(*v84 + 12 * (v86 + v25) - 4) = 0;
              v87 = *v84++;
              v86 = *(v17 + 24);
              *(v87 + 12 * (v86 + v25) - 2) = v38;
              --v85;
            }

            while (v85);
          }
        }

        if (v34)
        {
          if (v35 > 7)
          {
            switch(v35)
            {
              case 8:
                *(v17 + v981 + 592) = 0x101010101010101 * *(v993 + 9);
                break;
              case 16:
                *(v17 + v981 + 592) = vdupq_n_s64(0x101010101010101 * *(v993 + 9));
                break;
              case 32:
                v88 = vdupq_n_s64(0x101010101010101 * *(v993 + 9));
                *(v17 + 592 + v981) = v88;
                *(v17 + 592 + v981 + 16) = v88;
                break;
            }
          }

          else
          {
            switch(v35)
            {
              case 1:
                *(v17 + v981 + 592) = *(v993 + 9);
                break;
              case 2:
                *(v17 + v981 + 592) = *(v993 + 9) | (*(v993 + 9) << 8);
                break;
              case 4:
                *(v17 + v981 + 592) = 16843009 * *(v993 + 9);
                break;
            }
          }

          result = 0;
          if (v979 > 7)
          {
            switch(v979)
            {
              case 8:
                result = 0;
                *(*(v17 + 656) + v982 + 560) = 0x101010101010101 * *(v993 + 9);
                break;
              case 16:
                result = 0;
                v103 = 0x101010101010101 * *(v993 + 9);
                *(*(v17 + 656) + v982 + 560) = v103;
                *(*(v17 + 656) + v982 + 568) = v103;
                break;
              case 32:
                result = 0;
                v102 = 0x101010101010101 * *(v993 + 9);
                *(*(v17 + 656) + v982 + 560) = v102;
                *(*(v17 + 656) + v982 + 568) = v102;
                *(*(v17 + 656) + v982 + 576) = v102;
                *(*(v17 + 656) + v982 + 584) = v102;
                break;
            }
          }

          else
          {
            switch(v979)
            {
              case 1:
                result = 0;
                *(*(v17 + 656) + v982 + 560) = *(v993 + 9);
                break;
              case 2:
                result = 0;
                *(*(v17 + 656) + v982 + 560) = *(v993 + 9) | (*(v993 + 9) << 8);
                break;
              case 4:
                result = 0;
                *(*(v17 + 656) + v982 + 560) = 16843009 * *(v993 + 9);
                break;
            }
          }

          return result;
        }

        return 0;
      }

      v69 = v17 + v989;
      *(v69 + 32) = 0x101010101010101 * v37;
      *(v69 + 256) = 0x101010101010101;
    }

    else
    {
      if (v992 != 1)
      {
        v38 = v990;
        if (v992 == 2)
        {
          v70 = v17 + v989;
          *(v70 + 32) = v37 | (v37 << 8);
          *(v70 + 256) = 257;
        }

        else if (v992 == 4)
        {
          v39 = v17 + v989;
          *(v39 + 32) = 16843009 * v37;
          *(v39 + 256) = 16843009;
        }

        goto LABEL_85;
      }

      v68 = v17 + v989;
      *(v68 + 32) = v37;
      *(v68 + 256) = 1;
    }

    v38 = v990;
    goto LABEL_85;
  }

  if ((*(*(v18 + 24) + 232) & 1) != 0 && !*(v993 + 20) && *(v993 + 22) == 2)
  {
    v50 = v988 + 56;
    if (*(v993 + 6) == -32768)
    {
      v50->i32[0] = 0;
    }

    else
    {
      v988[56].i32[0] = 3;
      v988[57].i32[1] = *(v993 + 6) + 0x10000;
      v988[58].i32[0] = *(v993 + 7);
      v988[58].i32[1] = *(v993 + 8);
      v988[59].i32[0] = *(v993 + 9) + 0x10000;
      sub_2775CF1E8(v25, v26, *(v993 + 2), v50, v21, v20);
      sub_2775CF000(v50);
      v10 = v990;
    }
  }

  if ((*(v18 + 3296))(v17, v10, v993))
  {
    return 0xFFFFFFFFLL;
  }

  v129 = &unk_2775EF656 + 2 * *(v993 + 27);
  if (v992 > 7)
  {
    v130 = v990;
    switch(v992)
    {
      case 8:
        v139 = (v17 + v989);
        v139[48] = 0x101010101010101 * *v129;
        v139[52] = 0x101010101010101 * v129[1];
        v139[32] = 0;
        break;
      case 16:
        v141 = (v17 + v989);
        v141[24] = vdupq_n_s64(0x101010101010101 * *v129);
        v141[26] = vdupq_n_s64(0x101010101010101 * v129[1]);
        v141[16].i64[0] = 0;
        v141[16].i64[1] = 0;
        break;
      case 32:
        v132 = v17 + 384;
        v133 = vdupq_n_s64(0x101010101010101 * *v129);
        *(v132 + v989) = v133;
        v134 = v989 + 16;
        *(v132 + v134) = v133;
        v135 = v17 + 416;
        v136 = vdupq_n_s64(0x101010101010101 * v129[1]);
        *(v135 + v989) = v136;
        *(v135 + v134) = v136;
        v137 = v17 + 256;
        *(v137 + v989) = 0u;
        *(v137 + v134) = 0u;
        break;
    }
  }

  else
  {
    v130 = v990;
    switch(v992)
    {
      case 1:
        v138 = (v17 + v989);
        v138[384] = *v129;
        v138[416] = v129[1];
        v138[256] = 0;
        break;
      case 2:
        v140 = (v17 + v989);
        v140[192] = *v129 | (*v129 << 8);
        v140[208] = v129[1] | (v129[1] << 8);
        v140[128] = 0;
        break;
      case 4:
        v131 = (v17 + v989);
        v131[96] = 16843009 * *v129;
        v131[104] = 16843009 * v129[1];
        v131[64] = 0;
        break;
    }
  }

  if (v25 > 7)
  {
    if (v25 == 8)
    {
      *(*(v17 + 656) + v987 + 352) = 0x101010101010101 * *v129;
      *(*(v17 + 656) + v987 + 384) = 0x101010101010101 * v129[1];
      v148 = *(v17 + 656) + v987;
    }

    else
    {
      if (v25 == 16)
      {
        v149 = 0x101010101010101 * *v129;
        *(*(v17 + 656) + v987 + 352) = v149;
        v145 = (v21 & 0x1F) + 8;
        *(*(v17 + 656) + v145 + 352) = v149;
        v150 = 0x101010101010101 * v129[1];
        *(*(v17 + 656) + v987 + 384) = v150;
        *(*(v17 + 656) + v145 + 384) = v150;
        v147 = *(v17 + 656) + v987;
      }

      else
      {
        if (v25 != 32)
        {
          goto LABEL_232;
        }

        v142 = 0x101010101010101 * *v129;
        *(*(v17 + 656) + v987 + 352) = v142;
        v143 = (v21 & 0x1F) + 8;
        *(*(v17 + 656) + v143 + 352) = v142;
        v144 = (v21 & 0x1F) + 16;
        *(*(v17 + 656) + v144 + 352) = v142;
        v145 = (v21 & 0x1F) + 24;
        *(*(v17 + 656) + v145 + 352) = v142;
        v146 = 0x101010101010101 * v129[1];
        *(*(v17 + 656) + v987 + 384) = v146;
        *(*(v17 + 656) + v143 + 384) = v146;
        *(*(v17 + 656) + v144 + 384) = v146;
        *(*(v17 + 656) + v145 + 384) = v146;
        *(*(v17 + 656) + v987 + 224) = 0;
        *(*(v17 + 656) + v143 + 224) = 0;
        v147 = *(v17 + 656) + v144;
      }

      *(v147 + 224) = 0;
      v148 = *(v17 + 656) + v145;
    }

    *(v148 + 224) = 0;
  }

  else
  {
    switch(v25)
    {
      case 1:
        *(*(v17 + 656) + v987 + 352) = *v129;
        *(*(v17 + 656) + v987 + 384) = v129[1];
        *(*(v17 + 656) + v987 + 224) = 0;
        break;
      case 2:
        *(*(v17 + 656) + v987 + 352) = *v129 | (*v129 << 8);
        *(*(v17 + 656) + v987 + 384) = v129[1] | (v129[1] << 8);
        *(*(v17 + 656) + v987 + 224) = 0;
        break;
      case 4:
        *(*(v17 + 656) + v987 + 352) = 16843009 * *v129;
        *(*(v17 + 656) + v987 + 384) = 16843009 * v129[1];
        *(*(v17 + 656) + v987 + 224) = 0;
        break;
    }
  }

LABEL_232:
  if (*(*(v18 + 24) + 232))
  {
    v151 = v17 + 672;
    v152 = *(v17 + 28) & 0x1F;
    if (v25)
    {
      v153 = (*(v151 + 8 * (v992 + v152 + 4)) + 12 * *(v17 + 24) + 10);
      v154 = v25;
      do
      {
        *(v153 - 2) = *(v993 + 24) + 1;
        *(v153 - 10) = *(v993 + 2);
        *v153 = v130;
        v153 += 12;
        --v154;
      }

      while (v154);
      v152 = *(v17 + 28) & 0x1F;
    }

    if (v992 >= 2)
    {
      v155 = (v151 + 8 * (v152 + 5));
      v156 = (v992 - 1);
      v157 = *(v17 + 24);
      do
      {
        *(*v155 + 12 * (v157 + v25) - 4) = *(v993 + 24) + 1;
        *(*v155 + 12 * (*(v17 + 24) + v25) - 12) = *(v993 + 2);
        v158 = *v155++;
        v157 = *(v17 + 24);
        *(v158 + 12 * (v157 + v25) - 2) = v130;
        --v156;
      }

      while (v156);
    }
  }

  if (!v34)
  {
    return 0;
  }

  if (v35 > 7)
  {
    if (v35 == 8)
    {
      v749 = v17 + v981;
    }

    else
    {
      if (v35 != 16)
      {
        if (v35 == 32)
        {
          *(v17 + 592 + v981) = 0u;
          *(v17 + 592 + v981 + 16) = 0u;
        }

        goto LABEL_1012;
      }

      v749 = v17 + v981;
      *(v17 + v981 + 600) = 0;
    }

    *(v749 + 592) = 0;
  }

  else
  {
    switch(v35)
    {
      case 1:
        *(v17 + v981 + 592) = 0;
        break;
      case 2:
        *(v17 + v981 + 592) = 0;
        break;
      case 4:
        *(v17 + v981 + 592) = 0;
        break;
    }
  }

LABEL_1012:
  result = 0;
  if (v979 > 7)
  {
    switch(v979)
    {
      case 8:
        result = 0;
        *(*(v17 + 656) + v982 + 560) = 0;
        break;
      case 16:
        result = 0;
        *(*(v17 + 656) + v982 + 560) = 0;
        *(*(v17 + 656) + v982 + 568) = 0;
        break;
      case 32:
        result = 0;
        *(*(v17 + 656) + v982 + 560) = 0;
        *(*(v17 + 656) + v982 + 568) = 0;
        *(*(v17 + 656) + v982 + 576) = 0;
        *(*(v17 + 656) + v982 + 584) = 0;
        break;
    }
  }

  else
  {
    switch(v979)
    {
      case 1:
        result = 0;
        *(*(v17 + 656) + v982 + 560) = 0;
        break;
      case 2:
        result = 0;
        *(*(v17 + 656) + v982 + 560) = 0;
        break;
      case 4:
        result = 0;
        *(*(v17 + 656) + v982 + 560) = 0;
        break;
    }
  }

  return result;
}