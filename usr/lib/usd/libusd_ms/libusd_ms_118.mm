uint64_t sub_29AB53BD8(uint64_t a1, int *a2)
{
  v5 = *(a1 + 192);
  v4 = *(a1 + 200);
  if (v5 >= v4)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_26;
    }

    v8 = (a1 + 56);
    v9 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v9)
    {
      v4 = &v8[v9];
      v7 = *v8;
    }

    else
    {
      v7 = 0;
      *(a1 + 48) = 0;
      v4 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v6 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v4;
  }

  else
  {
    v6 = v5 + 1;
    *(a1 + 192) = v5 + 1;
    v7 = *v5;
  }

  if (v7 != 66)
  {
    goto LABEL_26;
  }

  if (v6 < v4)
  {
    *(a1 + 192) = v6 + 1;
    v10 = *v6;
    goto LABEL_16;
  }

  if (!*(a1 + 48))
  {
LABEL_26:
    v22 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v23 = "not BMP";
    goto LABEL_27;
  }

  v11 = (a1 + 56);
  v12 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
  if (v12)
  {
    v13 = &v11[v12];
    v10 = *v11;
  }

  else
  {
    v10 = 0;
    *(a1 + 48) = 0;
    v13 = (a1 + 57);
    *(a1 + 56) = 0;
  }

  *(a1 + 192) = a1 + 57;
  *(a1 + 200) = v13;
LABEL_16:
  if (v10 != 77)
  {
    goto LABEL_26;
  }

  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  v14 = sub_29AB538DC(a1);
  a2[1] = v14 | (sub_29AB538DC(a1) << 16);
  v15 = sub_29AB538DC(a1);
  v16 = sub_29AB538DC(a1);
  *(a2 + 3) = 0;
  v17 = v15 | (v16 << 16);
  a2[2] = v17;
  *(a2 + 5) = 0;
  a2[8] = 14;
  if (a2[1] < 0)
  {
    goto LABEL_55;
  }

  if (v17 <= 55)
  {
    if (v17 == 12)
    {
      *a1 = sub_29AB538DC(a1);
      v20 = sub_29AB538DC(a1);
LABEL_23:
      *(a1 + 4) = v20;
      if (sub_29AB538DC(a1) == 1)
      {
        *a2 = sub_29AB538DC(a1);
        if (v17 == 12)
        {
          return 1;
        }

        v24 = sub_29AB538DC(a1);
        v25 = v24 | (sub_29AB538DC(a1) << 16);
        if ((v25 - 1) <= 1)
        {
          v22 = off_2A1B71BE0(off_2A1B71BE0);
          result = 0;
          v23 = "BMP RLE";
          goto LABEL_27;
        }

        if (v25 >= 4)
        {
          v22 = off_2A1B71BE0(off_2A1B71BE0);
          result = 0;
          v23 = "BMP JPEG/PNG";
          goto LABEL_27;
        }

        if (v25 != 3 || *a2 == 16 || *a2 == 32)
        {
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          sub_29AB540EC(a1);
          if (v17 > 107)
          {
            a2[3] = sub_29AB540EC(a1);
            a2[4] = sub_29AB540EC(a1);
            a2[5] = sub_29AB540EC(a1);
            a2[6] = sub_29AB540EC(a1);
            if (v25 != 3)
            {
              sub_29AB54120(a2, v25);
            }

            sub_29AB540EC(a1);
            v29 = 12;
            do
            {
              sub_29AB538DC(a1);
              sub_29AB538DC(a1);
              --v29;
            }

            while (v29);
            if (v17 != 108)
            {
              sub_29AB540EC(a1);
              sub_29AB540EC(a1);
              sub_29AB540EC(a1);
              sub_29AB540EC(a1);
            }

            return 1;
          }

          if (v17 != 40)
          {
            sub_29AB540EC(a1);
            sub_29AB540EC(a1);
            sub_29AB540EC(a1);
            sub_29AB540EC(a1);
          }

          v26 = *a2;
          if (*a2 != 32 && v26 != 16)
          {
            return 1;
          }

          if (!v25)
          {
            if (v26 == 32)
            {
              *(a2 + 3) = xmmword_29B6C2CD0;
              a2[7] = 0;
            }

            else if (v26 == 16)
            {
              *(a2 + 3) = 0x3E000007C00;
              a2[5] = 31;
            }

            else
            {
              *(a2 + 3) = 0;
              *(a2 + 5) = 0;
            }

            return 1;
          }

          if (v25 == 3)
          {
            a2[3] = sub_29AB540EC(a1);
            a2[4] = sub_29AB540EC(a1);
            v27 = sub_29AB540EC(a1);
            a2[5] = v27;
            a2[8] += 12;
            v28 = a2[4];
            if (a2[3] != v28 || v28 != v27)
            {
              return 1;
            }
          }
        }
      }

LABEL_55:
      v22 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      v23 = "bad BMP";
      goto LABEL_27;
    }

    if (v17 == 40)
    {
LABEL_22:
      v18 = sub_29AB538DC(a1);
      *a1 = v18 | (sub_29AB538DC(a1) << 16);
      v19 = sub_29AB538DC(a1);
      v20 = v19 | (sub_29AB538DC(a1) << 16);
      goto LABEL_23;
    }
  }

  else if (v17 == 56 || v17 == 108 || v17 == 124)
  {
    goto LABEL_22;
  }

  v22 = off_2A1B71BE0(off_2A1B71BE0);
  result = 0;
  v23 = "unknown BMP";
LABEL_27:
  *v22 = v23;
  return result;
}

uint64_t sub_29AB54120(uint64_t result, int a2)
{
  if (!a2)
  {
    if (*result == 32)
    {
      *(result + 12) = xmmword_29B6C2CD0;
      *(result + 28) = 0;
    }

    else if (*result == 16)
    {
      *(result + 12) = 0x3E000007C00;
      *(result + 20) = 31;
    }

    else
    {
      *(result + 12) = 0;
      *(result + 20) = 0;
    }
  }

  return result;
}

uint64_t sub_29AB54174(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 56);
  v6 = (a1 + 57);
  v8 = *(a1 + 192);
  v7 = *(a1 + 200);
  while (1)
  {
    if (v8 >= v7)
    {
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = (*(a1 + 16))(*(a1 + 40), v5, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v10)
        {
          v7 = &v5[v10];
          v9 = *v5;
        }

        else
        {
          v9 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v7 = v6;
        }

        *(a1 + 192) = v6;
        *(a1 + 200) = v7;
        v8 = v6;
      }
    }

    else
    {
      *(a1 + 192) = v8 + 1;
      v9 = *v8++;
    }

    if (v9 != *(a2 + v4))
    {
      break;
    }

    if (++v4 == 4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29AB54254(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = (result + 56);
  v5 = (result + 57);
  while (1)
  {
LABEL_2:
    if (*(v3 + 16))
    {
      result = (*(v3 + 32))(*(v3 + 40));
      if (!result)
      {
        goto LABEL_6;
      }

      if (!*(v3 + 48))
      {
        break;
      }
    }

    if (*(v3 + 192) >= *(v3 + 200))
    {
      break;
    }

LABEL_6:
    v6 = *a2;
    if ((v6 - 9) >= 5 && v6 != 32)
    {
      break;
    }

    v7 = *(v3 + 192);
    if (v7 >= *(v3 + 200))
    {
      LODWORD(v7) = *(v3 + 48);
      if (v7)
      {
        result = (*(v3 + 16))(*(v3 + 40), v4, *(v3 + 52));
        *(v3 + 184) += *(v3 + 192) - *(v3 + 208);
        if (result)
        {
          v8 = &v4[result];
          LOBYTE(v7) = *v4;
        }

        else
        {
          LOBYTE(v7) = 0;
          *(v3 + 48) = 0;
          *(v3 + 56) = 0;
          v8 = v5;
        }

        *(v3 + 192) = v5;
        *(v3 + 200) = v8;
      }
    }

    else
    {
      *(v3 + 192) = v7 + 1;
      LOBYTE(v7) = *v7;
    }

    *a2 = v7;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  result = (*(v3 + 32))(*(v3 + 40));
  if (!result)
  {
LABEL_17:
    if (*a2 != 35)
    {
      return result;
    }

    while (1)
    {
      if (*(v3 + 16))
      {
        result = (*(v3 + 32))(*(v3 + 40));
        if (!result)
        {
          goto LABEL_22;
        }

        if (!*(v3 + 48))
        {
          goto LABEL_2;
        }
      }

      if (*(v3 + 192) >= *(v3 + 200))
      {
        goto LABEL_2;
      }

LABEL_22:
      v9 = *a2;
      if (v9 == 10 || v9 == 13)
      {
        goto LABEL_2;
      }

      v11 = *(v3 + 192);
      if (v11 >= *(v3 + 200))
      {
        LODWORD(v11) = *(v3 + 48);
        if (v11)
        {
          result = (*(v3 + 16))(*(v3 + 40), v4, *(v3 + 52));
          *(v3 + 184) += *(v3 + 192) - *(v3 + 208);
          if (result)
          {
            v12 = &v4[result];
            LOBYTE(v11) = *v4;
          }

          else
          {
            LOBYTE(v11) = 0;
            *(v3 + 48) = 0;
            *(v3 + 56) = 0;
            v12 = v5;
          }

          *(v3 + 192) = v5;
          *(v3 + 200) = v12;
        }
      }

      else
      {
        *(v3 + 192) = v11 + 1;
        LOBYTE(v11) = *v11;
      }

      *a2 = v11;
    }
  }

  if (*(v3 + 48))
  {
LABEL_16:
    if (*(v3 + 192) < *(v3 + 200))
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_29AB5442C(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  v5 = (a1 + 56);
  v6 = (a1 + 57);
  do
  {
    if (*(a1 + 16))
    {
      if (!(*(a1 + 32))(*(a1 + 40)))
      {
        goto LABEL_6;
      }

      if (!*(a1 + 48))
      {
        return v4;
      }
    }

    if (*(a1 + 192) >= *(a1 + 200))
    {
      return v4;
    }

LABEL_6:
    v7 = *a2;
    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return v4;
    }

    v8 = *(a1 + 192);
    if (v8 >= *(a1 + 200))
    {
      LODWORD(v8) = *(a1 + 48);
      if (v8)
      {
        v9 = (*(a1 + 16))(*(a1 + 40), v5, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v9)
        {
          v10 = &v5[v9];
          LOBYTE(v8) = *v5;
        }

        else
        {
          LOBYTE(v8) = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v10 = v6;
        }

        *(a1 + 192) = v6;
        *(a1 + 200) = v10;
      }
    }

    else
    {
      *(a1 + 192) = v8 + 1;
      LOBYTE(v8) = *v8;
    }

    v4 = (v7 + 10 * v4 - 48);
    *a2 = v8;
  }

  while (v4 <= 214748364 && (v4 != 214748364 || v8 < 56));
  v4 = 0;
  *off_2A1B71BE0(off_2A1B71BE0) = "integer parse overflow";
  return v4;
}

__n128 sub_29AB54574(__n128 *a1)
{
  v2 = sub_29AB54820(a1, "#?RADIANCE\n");
  result = a1[13];
  a1[12] = result;
  if (!v2)
  {
    sub_29AB54820(a1, "#?RGBE\n");
    result = a1[13];
    a1[12] = result;
  }

  return result;
}

uint64_t sub_29AB545CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 192);
  v4 = *(a1 + 200);
  if (v5 >= v4)
  {
    if (*(a1 + 48))
    {
      v7 = (a1 + 56);
      v8 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v8)
      {
        v4 = &v7[v8];
        v6 = *v7;
      }

      else
      {
        v6 = 0;
        *(a1 + 48) = 0;
        v4 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v5 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v5 + 1;
    v6 = *v5++;
  }

  v9 = 0;
  v10 = (a1 + 56);
  v11 = a1 + 57;
  while (1)
  {
    if (*(a1 + 16))
    {
      if (!(*(a1 + 32))(*(a1 + 40)))
      {
        goto LABEL_15;
      }

      if (!*(a1 + 48))
      {
        break;
      }

      v5 = *(a1 + 192);
      v4 = *(a1 + 200);
    }

    if (v5 >= v4)
    {
      break;
    }

LABEL_15:
    if (v6 == 10)
    {
      break;
    }

    *(a2 + v9) = v6;
    if (v9 == 1022)
    {
      v9 = 1023;
      while (1)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_30;
        }

        if ((*(a1 + 32))(*(a1 + 40)))
        {
          break;
        }

        v13 = *(a1 + 192);
        v14 = *(a1 + 200);
LABEL_33:
        if (v13 >= v14)
        {
          v15 = *(a1 + 48);
          if (v15)
          {
            v16 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
            *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
            if (v16)
            {
              v17 = &v10[v16];
              v15 = *v10;
            }

            else
            {
              v15 = 0;
              *(a1 + 48) = 0;
              *(a1 + 56) = 0;
              v17 = (a1 + 57);
            }

            *(a1 + 192) = v11;
            *(a1 + 200) = v17;
          }
        }

        else
        {
          *(a1 + 192) = v13 + 1;
          v15 = *v13;
        }

        if (v15 == 10)
        {
          goto LABEL_41;
        }
      }

      if (!*(a1 + 48))
      {
        break;
      }

LABEL_30:
      v13 = *(a1 + 192);
      v14 = *(a1 + 200);
      if (v13 >= v14)
      {
        break;
      }

      goto LABEL_33;
    }

    v5 = *(a1 + 192);
    v4 = *(a1 + 200);
    if (v5 >= v4)
    {
      if (*(a1 + 48))
      {
        v12 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v12)
        {
          v4 = &v10[v12];
          v6 = *v10;
        }

        else
        {
          v6 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v4 = (a1 + 57);
        }

        *(a1 + 192) = v11;
        *(a1 + 200) = v4;
        v5 = (a1 + 57);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v5 + 1;
      v6 = *v5++;
    }

    ++v9;
  }

LABEL_41:
  *(a2 + v9) = 0;
  return a2;
}

uint64_t sub_29AB54820(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = (a1 + 56);
    v4 = a1 + 57;
    v6 = *(a1 + 192);
    v5 = *(a1 + 200);
    v7 = a2 + 1;
    while (1)
    {
      if (v6 >= v5)
      {
        v8 = *(a1 + 48);
        if (v8)
        {
          v9 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
          *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
          if (v9)
          {
            v5 = &v3[v9];
            v8 = *v3;
          }

          else
          {
            v8 = 0;
            *(a1 + 48) = 0;
            *(a1 + 56) = 0;
            v5 = (a1 + 57);
          }

          *(a1 + 192) = v4;
          *(a1 + 200) = v5;
          v6 = (a1 + 57);
        }
      }

      else
      {
        *(a1 + 192) = v6 + 1;
        v8 = *v6++;
      }

      if (v8 != *(v7 - 1))
      {
        return 0;
      }

      if (!*v7++)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    *(a1 + 192) = *(a1 + 208);
    return 1;
  }
}

float *sub_29AB54900(uint64_t a1, signed int *a2, signed int *a3, _DWORD *a4)
{
  v80 = *MEMORY[0x29EDCA608];
  sub_29AB545CC(a1, v79);
  if ((*v79 != 0x4E41494441523F23 || *&v79[3] != 0x45434E41494441) && (*v79 != 1196572451 || *&v79[3] != 4538951))
  {
    v10 = off_2A1B71BE0(off_2A1B71BE0);
    v11 = 0;
    v12 = "not HDR";
LABEL_36:
    *v10 = v12;
    return v11;
  }

  sub_29AB545CC(a1, v79);
  if (!v79[0])
  {
    goto LABEL_34;
  }

  v13 = 0;
  do
  {
    if (!(*v79 ^ 0x333D54414D524F46 | *&v79[8] ^ 0x6C725F7469622D32 | *&v79[15] ^ 0x656267725F656CLL))
    {
      v13 = 1;
    }

    sub_29AB545CC(a1, v79);
  }

  while (v79[0]);
  if (!v13)
  {
LABEL_34:
    v10 = off_2A1B71BE0(off_2A1B71BE0);
    v11 = 0;
    v12 = "unsupported format";
    goto LABEL_36;
  }

  sub_29AB545CC(a1, v79);
  if (*v79 != 22829 || v79[2] != 32)
  {
    goto LABEL_35;
  }

  __endptr = &v79[3];
  v15 = strtol(&v79[3], &__endptr, 10);
  v16 = __endptr + 2;
  do
  {
    v17 = *(v16 - 2);
    ++v16;
  }

  while (v17 == 32);
  if (v17 != 43 || *(v16 - 2) != 88 || *(v16 - 1) != 32)
  {
LABEL_35:
    v10 = off_2A1B71BE0(off_2A1B71BE0);
    v11 = 0;
    v12 = "unsupported data layout";
    goto LABEL_36;
  }

  __endptr = v16;
  v18 = strtol(v16, 0, 10);
  if (v15 >= 16777217)
  {
    goto LABEL_38;
  }

  v19 = v18;
  if (v18 >= 16777217)
  {
    goto LABEL_38;
  }

  *a2 = v18;
  *a3 = v15;
  if (a4)
  {
    *a4 = 3;
  }

  if (!sub_29AB5ABFC(v18, v15, 3u, 4u))
  {
LABEL_38:
    v10 = off_2A1B71BE0(off_2A1B71BE0);
    v11 = 0;
    v12 = "too large";
    goto LABEL_36;
  }

  v20 = sub_29AB5AC68(v19, v15, 3u, 4u);
  v11 = v20;
  if (!v20)
  {
    v10 = off_2A1B71BE0(off_2A1B71BE0);
LABEL_40:
    v12 = "outofmem";
    goto LABEL_36;
  }

  if ((v19 - 0x8000) >= 0xFFFF8008)
  {
    if (v15 < 1)
    {
      return v11;
    }

    v23 = 0;
    v73 = v20;
    v24 = (a1 + 56);
    v25 = a1 + 57;
    v72 = 0;
    while (1)
    {
      v26 = sub_29AB4FE84(a1);
      v27 = sub_29AB4FE84(a1);
      v28 = sub_29AB4FE84(a1);
      if (v26 != 2 || v27 != 2 || v28 < 0)
      {
        v58 = sub_29AB4FE84(a1);
        if (v58)
        {
          v59 = ldexpf(1.0, v58 - 136);
          v60 = v59 * v26;
          v61 = v59 * v27;
          v62 = v59 * v28;
        }

        else
        {
          v61 = 0.0;
          v60 = 0.0;
          v62 = 0.0;
        }

        *v11 = v60;
        v11[1] = v61;
        v11[2] = v62;
        free(v23);
        i = 0;
        v63 = 1;
        goto LABEL_103;
      }

      if ((sub_29AB4FE84(a1) | (v28 << 8)) != v19)
      {
        free(v11);
        free(v23);
        v10 = off_2A1B71BE0(off_2A1B71BE0);
        v11 = 0;
        v12 = "invalid decoded scanline length";
        goto LABEL_36;
      }

      if (!v23)
      {
        v23 = malloc(4 * (v19 & 0x3FFFFFFF));
        if (!v23)
        {
          break;
        }
      }

      v74 = v23;
      v75 = 0;
      v29 = v23;
      while (2)
      {
        v30 = 0;
        v31 = v19;
        do
        {
          v33 = *(a1 + 192);
          v32 = *(a1 + 200);
          if (v33 >= v32)
          {
            if (!*(a1 + 48))
            {
              goto LABEL_94;
            }

            v36 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
            *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
            if (v36)
            {
              v32 = &v24[v36];
              v35 = *v24;
            }

            else
            {
              v35 = 0;
              *(a1 + 48) = 0;
              *(a1 + 56) = 0;
              v32 = (a1 + 57);
            }

            *(a1 + 192) = v25;
            *(a1 + 200) = v32;
            v34 = (a1 + 57);
          }

          else
          {
            v34 = v33 + 1;
            *(a1 + 192) = v33 + 1;
            v35 = *v33;
          }

          if (v35 < 0x81)
          {
            if (v35)
            {
              v38 = v31 >= v35;
            }

            else
            {
              v38 = 0;
            }

            if (!v38)
            {
              goto LABEL_94;
            }

            v39 = &v29[4 * v30];
            v30 += v35;
            do
            {
              v40 = *(a1 + 192);
              if (v40 >= *(a1 + 200))
              {
                LODWORD(v40) = *(a1 + 48);
                if (v40)
                {
                  v41 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
                  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
                  if (v41)
                  {
                    v42 = &v24[v41];
                    LOBYTE(v40) = *v24;
                  }

                  else
                  {
                    LOBYTE(v40) = 0;
                    *(a1 + 48) = 0;
                    *(a1 + 56) = 0;
                    v42 = (a1 + 57);
                  }

                  *(a1 + 192) = v25;
                  *(a1 + 200) = v42;
                }
              }

              else
              {
                *(a1 + 192) = v40 + 1;
                LOBYTE(v40) = *v40;
              }

              *v39 = v40;
              v39 += 4;
              --v35;
            }

            while (v35);
          }

          else
          {
            if (v34 >= v32)
            {
              v37 = *(a1 + 48);
              if (v37)
              {
                v43 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
                *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
                if (v43)
                {
                  v44 = &v24[v43];
                  LOBYTE(v37) = *v24;
                }

                else
                {
                  LOBYTE(v37) = 0;
                  *(a1 + 48) = 0;
                  *(a1 + 56) = 0;
                  v44 = (a1 + 57);
                }

                *(a1 + 192) = v25;
                *(a1 + 200) = v44;
              }
            }

            else
            {
              *(a1 + 192) = v34 + 1;
              LOBYTE(v37) = *v34;
            }

            v45 = v35 & 0x7F;
            if (v31 < v45)
            {
LABEL_94:
              free(v11);
              free(v74);
              v10 = off_2A1B71BE0(off_2A1B71BE0);
              v11 = 0;
              v12 = "corrupt";
              goto LABEL_36;
            }

            if ((v35 & 0x7F) != 0)
            {
              v46 = 4 * v30;
              v30 += v45;
              do
              {
                v29[v46] = v37;
                v46 += 4;
                --v45;
              }

              while (v45);
            }
          }

          v31 = v19 - v30;
        }

        while (v19 > v30);
        ++v29;
        if (++v75 != 4)
        {
          continue;
        }

        break;
      }

      v47 = (v74 + 3);
      v48 = v19;
      v49 = v73;
      v50 = (v74 + 3);
      do
      {
        v52 = *v50;
        v50 += 4;
        v51 = v52;
        if (v52)
        {
          v53 = ldexpf(1.0, v51 - 136);
          LOBYTE(v54) = *(v47 - 3);
          *&v55 = v53 * v54;
          *v49 = *&v55;
          LOBYTE(v55) = *(v47 - 2);
          *&v56 = v53 * v55;
          v49[1] = *&v56;
          LOBYTE(v56) = *(v47 - 1);
          v57 = v53 * v56;
        }

        else
        {
          *v49 = 0;
          v57 = 0.0;
        }

        v49[2] = v57;
        v49 += 3;
        v47 = v50;
        --v48;
      }

      while (v48);
      ++v72;
      v73 += 3 * v19;
      v23 = v74;
      if (v72 == (v15 & 0x7FFFFFFF))
      {
        free(v74);
        return v11;
      }
    }

    free(v11);
    v10 = off_2A1B71BE0(off_2A1B71BE0);
    v11 = 0;
    goto LABEL_40;
  }

  for (i = 0; ; ++i)
  {
    v63 = 0;
    if (i >= v15)
    {
      break;
    }

    while (v63 < v19)
    {
LABEL_103:
      sub_29AB524E4(a1, __dst, 4);
      v64 = &v11[3 * v19 * i + 3 * v63];
      v65 = 0.0;
      v66 = 0.0;
      v67 = 0.0;
      if (v77)
      {
        v68 = ldexpf(1.0, v77 - 136);
        LOBYTE(v69) = __dst[0];
        v66 = v68 * v69;
        LOBYTE(v70) = __dst[1];
        v65 = v68 * v70;
        LOBYTE(v71) = __dst[2];
        v67 = v68 * v71;
      }

      *v64 = v66;
      v64[1] = v65;
      ++v63;
      v64[2] = v67;
    }
  }

  return v11;
}

char *sub_29AB55098(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v842 = *MEMORY[0x29EDCA608];
  v816 = 0;
  v815 = 8;
  v9 = sub_29AB523AC(v1);
  v10 = *(v8 + 208);
  v11 = *(v8 + 216);
  *(v8 + 192) = v10;
  *(v8 + 200) = v11;
  if (v9)
  {
    *&v820 = v8;
    v824[0] = 0;
    if (!sub_29AB503E8(&v820))
    {
      v15 = 0;
      v16 = v822;
LABEL_11:
      free(v16);
      free(v821);
      v18 = *(&v820 + 1);
LABEL_12:
      free(v18);
      goto LABEL_13;
    }

    v12 = v823;
    if (v823 < 9)
    {
      v12 = 8;
      goto LABEL_9;
    }

    if (v823 == 16)
    {
LABEL_9:
      LODWORD(v815) = v12;
      v15 = v822;
      v17 = v820;
      *v7 = *v820;
      *v5 = *(v17 + 4);
      v16 = 0;
      if (v3)
      {
        *v3 = *(v17 + 8);
      }

      goto LABEL_11;
    }

    v27 = off_2A1B71BE0(off_2A1B71BE0);
    v15 = 0;
    v28 = "bad bits_per_channel";
LABEL_49:
    *v27 = v28;
    goto LABEL_13;
  }

  if (v10 >= v11)
  {
    if (!*(v8 + 48))
    {
      goto LABEL_50;
    }

    v25 = (v8 + 56);
    v26 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
    v10 = *(v8 + 208);
    *(v8 + 184) += *(v8 + 192) - v10;
    if (v26)
    {
      v11 = &v25[v26];
      v14 = *v25;
    }

    else
    {
      v14 = 0;
      *(v8 + 48) = 0;
      v11 = (v8 + 57);
      *(v8 + 56) = 0;
    }

    v13 = (v8 + 57);
    *(v8 + 192) = v8 + 57;
    *(v8 + 200) = v11;
  }

  else
  {
    v13 = v10 + 1;
    *(v8 + 192) = v10 + 1;
    v14 = *v10;
  }

  if (v14 != 66)
  {
    goto LABEL_50;
  }

  if (v13 < v11)
  {
    *(v8 + 192) = v13 + 1;
    v30 = *v13;
    goto LABEL_37;
  }

  if (!*(v8 + 48))
  {
LABEL_50:
    v38 = *(v8 + 216);
    *(v8 + 192) = v10;
    *(v8 + 200) = v38;
    goto LABEL_51;
  }

  v31 = (v8 + 56);
  v32 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
  v10 = *(v8 + 208);
  *(v8 + 184) += *(v8 + 192) - v10;
  if (v32)
  {
    v33 = &v31[v32];
    v30 = *v31;
  }

  else
  {
    v30 = 0;
    *(v8 + 48) = 0;
    v33 = (v8 + 57);
    *(v8 + 56) = 0;
  }

  *(v8 + 192) = v8 + 57;
  *(v8 + 200) = v33;
LABEL_37:
  if (v30 != 77)
  {
    goto LABEL_50;
  }

  sub_29AB538DC(v8);
  sub_29AB538DC(v8);
  sub_29AB538DC(v8);
  sub_29AB538DC(v8);
  sub_29AB538DC(v8);
  sub_29AB538DC(v8);
  v34 = sub_29AB538DC(v8);
  v35 = v34 | (sub_29AB538DC(v8) << 16);
  if (v35 <= 0x38 && ((1 << v35) & 0x100010000001000) != 0 || v35 == 108)
  {
    *(v8 + 192) = *(v8 + 208);
    goto LABEL_42;
  }

  v10 = *(v8 + 208);
  v38 = *(v8 + 216);
  *(v8 + 192) = v10;
  *(v8 + 200) = v38;
  if (v35 == 124)
  {
LABEL_42:
    HIDWORD(v818) = 255;
    if (!sub_29AB53BD8(v8, &v817))
    {
      v15 = 0;
      goto LABEL_13;
    }

    v36 = *(v8 + 4);
    if (v36 >= 0)
    {
      v37 = *(v8 + 4);
    }

    else
    {
      v37 = -v36;
    }

    *(v8 + 4) = v37;
    if (v37 >= 0x1000001 || *v8 >= 0x1000001u)
    {
      v27 = off_2A1B71BE0(off_2A1B71BE0);
      v15 = 0;
      v28 = "too large";
      goto LABEL_49;
    }

    v804 = v5;
    v778 = HIDWORD(v817);
    v51 = v818;
    v52 = DWORD2(v818);
    v53 = HIDWORD(v818);
    v54 = DWORD2(v817);
    v784 = DWORD2(v818);
    v801 = v817;
    if (DWORD2(v817) == 12)
    {
      if (v817 > 23)
      {
        goto LABEL_102;
      }

      v55 = DWORD1(v817);
      v56 = (DWORD1(v817) - v819 - 24) / 3;
    }

    else
    {
      if (v817 > 15)
      {
        goto LABEL_102;
      }

      v55 = DWORD1(v817);
      v56 = (DWORD1(v817) - (DWORD2(v817) + v819)) >> 2;
    }

    if (v56)
    {
      v759 = v55;
      v796 = v7;
      LOBYTE(v61) = 0;
      v62 = DWORD2(v818) == -16777216;
      goto LABEL_90;
    }

LABEL_102:
    v71 = *(v8 + 184) + *(v8 + 192) - *(v8 + 208);
    if ((v71 - 1025) <= 0xFFFFFBFF)
    {
      v15 = 0;
      *off_2A1B71BE0(off_2A1B71BE0) = "bad header";
      goto LABEL_13;
    }

    v72 = DWORD1(v817) - v71;
    if (SDWORD1(v817) < v71 || v72 >= 1025)
    {
      v27 = off_2A1B71BE0(off_2A1B71BE0);
      v15 = 0;
      v28 = "bad offset";
      goto LABEL_49;
    }

    v759 = DWORD1(v817);
    sub_29AB50224(v8, v72);
    v52 = v784;
    v56 = 0;
    v62 = v784 == -16777216;
    v61 = 1;
    v796 = v7;
    if (v801 == 24 && v784 == -16777216)
    {
      v720 = v36;
      v64 = 3;
      v801 = 24;
      v63 = 1;
      goto LABEL_94;
    }

LABEL_90:
    v720 = v36;
    v63 = v61;
    if (v52)
    {
      v64 = 4;
    }

    else
    {
      v64 = 3;
    }

    v61 = v62;
LABEL_94:
    *(v8 + 8) = v64;
    v65 = *v8;
    v66 = *(v8 + 4);
    if (!sub_29AB50270(v64, *v8, v66, 0))
    {
      v69 = off_2A1B71BE0(off_2A1B71BE0);
      v15 = 0;
      v70 = "too large";
      goto LABEL_828;
    }

    v809 = v64;
    v67 = sub_29AB5037C(v64, v65, v66, 0);
    v15 = v67;
    if (!v67)
    {
      v69 = off_2A1B71BE0(off_2A1B71BE0);
      v70 = "outofmem";
      goto LABEL_828;
    }

    if (v801 <= 15)
    {
      if (v56 > 256)
      {
        v68 = 1;
      }

      else
      {
        v68 = v63;
      }

      if (v68)
      {
        free(v67);
        v69 = off_2A1B71BE0(off_2A1B71BE0);
        v15 = 0;
        v70 = "invalid";
LABEL_828:
        *v69 = v70;
LABEL_829:
        v5 = v804;
        goto LABEL_830;
      }

      v794 = v3;
      if (v56 < 1)
      {
LABEL_892:
        if (v54 == 12)
        {
          v472 = -3;
        }

        else
        {
          v472 = -4;
        }

        sub_29AB50224(v8, v759 + v56 * v472 - (v54 + v819));
        if (v801 == 1)
        {
          v489 = *(v8 + 4);
          if (v489 >= 1)
          {
            v567 = 0;
            v568 = 0;
            v803 = -((*v8 + 7) >> 3);
            v569 = (v8 + 56);
            v570 = v8 + 57;
            do
            {
              v572 = *(v8 + 192);
              v571 = *(v8 + 200);
              v573 = v809;
              if (v572 >= v571)
              {
                v574 = *(v8 + 48);
                if (v574)
                {
                  v575 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                  if (v575)
                  {
                    v571 = &v569[v575];
                    v574 = *v569;
                  }

                  else
                  {
                    v574 = 0;
                    *(v8 + 48) = 0;
                    *(v8 + 56) = 0;
                    v571 = (v8 + 57);
                  }

                  v573 = v809;
                  *(v8 + 192) = v570;
                  *(v8 + 200) = v571;
                  v572 = (v8 + 57);
                }
              }

              else
              {
                *(v8 + 192) = v572 + 1;
                v574 = *v572++;
              }

              v576 = *v8;
              if (*v8 >= 1)
              {
                v577 = 0;
                v578 = 7;
                do
                {
                  v579 = &v820 + 4 * ((v574 >> v578) & 1);
                  v580 = &v15[v567];
                  *v580 = *v579;
                  *(v580 + 1) = *(v579 + 1);
                  v581 = v567 + 3;
                  if (v573 == 4)
                  {
                    v15[v581] = -1;
                    LODWORD(v581) = v567 + 4;
                  }

                  v567 = v581;
                  if (++v577 == v576)
                  {
                    break;
                  }

                  if (v578 <= 0)
                  {
                    if (v572 >= v571)
                    {
                      v574 = *(v8 + 48);
                      if (v574)
                      {
                        v582 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                        *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                        if (v582)
                        {
                          v571 = &v569[v582];
                          v574 = *v569;
                        }

                        else
                        {
                          v574 = 0;
                          *(v8 + 48) = 0;
                          *(v8 + 56) = 0;
                          v571 = (v8 + 57);
                        }

                        v573 = v809;
                        *(v8 + 192) = v570;
                        *(v8 + 200) = v571;
                        v578 = 7;
                        v572 = (v8 + 57);
                        v576 = *v8;
                      }

                      else
                      {
                        v578 = 7;
                      }
                    }

                    else
                    {
                      *(v8 + 192) = v572 + 1;
                      v574 = *v572;
                      v578 = 7;
                      ++v572;
                    }
                  }

                  else
                  {
                    --v578;
                  }
                }

                while (v577 < v576);
              }

              sub_29AB50224(v8, v803 & 3);
              ++v568;
              v489 = *(v8 + 4);
            }

            while (v568 < v489);
          }
        }

        else
        {
          if (v801 == 8)
          {
            v473 = *v8;
          }

          else
          {
            if (v801 != 4)
            {
              free(v15);
              v15 = 0;
              *off_2A1B71BE0(off_2A1B71BE0) = "bad bpp";
              v3 = v794;
              goto LABEL_829;
            }

            v473 = (*v8 + 1) >> 1;
          }

          v489 = *(v8 + 4);
          if (v489 >= 1)
          {
            v547 = 0;
            v548 = 0;
            v781 = -v473;
            v549 = (v8 + 56);
            v550 = v8 + 57;
            do
            {
              v787 = v548;
              if (*v8 < 1)
              {
                v566 = v547;
              }

              else
              {
                v551 = 0;
                v553 = *(v8 + 192);
                v552 = *(v8 + 200);
                v554 = v809;
                while (1)
                {
                  if (v553 >= v552)
                  {
                    v555 = *(v8 + 48);
                    v556 = v801;
                    if (v555)
                    {
                      v557 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                      if (v557)
                      {
                        v552 = &v549[v557];
                        v555 = *v549;
                      }

                      else
                      {
                        v555 = 0;
                        *(v8 + 48) = 0;
                        *(v8 + 56) = 0;
                        v552 = (v8 + 57);
                      }

                      v554 = v809;
                      *(v8 + 192) = v550;
                      *(v8 + 200) = v552;
                      v553 = (v8 + 57);
                    }
                  }

                  else
                  {
                    *(v8 + 192) = v553 + 1;
                    v555 = *v553++;
                    v556 = v801;
                  }

                  v558 = v555 >> 4;
                  if (v556 == 4)
                  {
                    v559 = v555 & 0xF;
                  }

                  else
                  {
                    v558 = v555;
                    v559 = 0;
                  }

                  v560 = &v820 + 4 * v558;
                  v561 = &v15[v547];
                  *v561 = *v560;
                  *(v561 + 1) = *(v560 + 1);
                  v562 = v547 + 3;
                  if (v554 == 4)
                  {
                    v562 = (v547 + 4);
                    v15[v547 + 3] = -1;
                  }

                  if (v551 + 1 == *v8)
                  {
                    break;
                  }

                  if (v556 == 8)
                  {
                    if (v553 >= v552)
                    {
                      v559 = *(v8 + 48);
                      if (v559)
                      {
                        v563 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                        *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                        if (v563)
                        {
                          v552 = &v549[v563];
                          v559 = *v549;
                        }

                        else
                        {
                          v559 = 0;
                          *(v8 + 48) = 0;
                          *(v8 + 56) = 0;
                          v552 = (v8 + 57);
                        }

                        v554 = v809;
                        *(v8 + 192) = v550;
                        *(v8 + 200) = v552;
                        v553 = (v8 + 57);
                      }
                    }

                    else
                    {
                      *(v8 + 192) = v553 + 1;
                      v559 = *v553++;
                    }
                  }

                  v564 = &v820 + 4 * v559;
                  v565 = &v15[v562];
                  *v565 = *v564;
                  *(v565 + 1) = *(v564 + 1);
                  v566 = v562 + 3;
                  if (v554 == 4)
                  {
                    v15[v566] = -1;
                    v566 = (v562 + 4);
                  }

                  v551 += 2;
                  LODWORD(v547) = v566;
                  if (v551 >= *v8)
                  {
                    goto LABEL_1103;
                  }
                }

                v566 = v562;
              }

LABEL_1103:
              sub_29AB50224(v8, v781 & 3);
              v548 = v787 + 1;
              v489 = *(v8 + 4);
              v547 = v566;
            }

            while (v787 + 1 < v489);
          }
        }

        v3 = v794;
        v7 = v796;
        v5 = v804;
        v447 = v809;
        goto LABEL_1132;
      }

      v459 = (v8 + 56);
      v460 = v8 + 57;
      v461 = v56;
      v463 = *(v8 + 192);
      v462 = *(v8 + 200);
      v464 = &v820 + 3;
      while (1)
      {
        if (v463 >= v462)
        {
          v465 = *(v8 + 48);
          if (v465)
          {
            v466 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
            *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
            if (v466)
            {
              v462 = &v459[v466];
              LOBYTE(v465) = *v459;
            }

            else
            {
              LOBYTE(v465) = 0;
              *(v8 + 48) = 0;
              *(v8 + 56) = 0;
              v462 = (v8 + 57);
            }

            *(v8 + 192) = v460;
            *(v8 + 200) = v462;
            v463 = (v8 + 57);
          }
        }

        else
        {
          *(v8 + 192) = v463 + 1;
          LOBYTE(v465) = *v463++;
        }

        *(v464 - 1) = v465;
        if (v463 >= v462)
        {
          v467 = *(v8 + 48);
          if (v467)
          {
            v468 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
            *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
            if (v468)
            {
              v462 = &v459[v468];
              LOBYTE(v467) = *v459;
            }

            else
            {
              LOBYTE(v467) = 0;
              *(v8 + 48) = 0;
              *(v8 + 56) = 0;
              v462 = (v8 + 57);
            }

            *(v8 + 192) = v460;
            *(v8 + 200) = v462;
            v463 = (v8 + 57);
          }
        }

        else
        {
          *(v8 + 192) = v463 + 1;
          LOBYTE(v467) = *v463++;
        }

        *(v464 - 2) = v467;
        if (v463 >= v462)
        {
          v469 = *(v8 + 48);
          if (v469)
          {
            v470 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
            *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
            if (v470)
            {
              v462 = &v459[v470];
              LOBYTE(v469) = *v459;
            }

            else
            {
              LOBYTE(v469) = 0;
              *(v8 + 48) = 0;
              *(v8 + 56) = 0;
              v462 = (v8 + 57);
            }

            *(v8 + 192) = v460;
            *(v8 + 200) = v462;
            v463 = (v8 + 57);
          }
        }

        else
        {
          *(v8 + 192) = v463 + 1;
          LOBYTE(v469) = *v463++;
        }

        *(v464 - 3) = v469;
        if (v54 == 12)
        {
          goto LABEL_891;
        }

        if (v463 < v462)
        {
          break;
        }

        if (*(v8 + 48))
        {
          v471 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
          *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
          if (v471)
          {
            v462 = &v459[v471];
          }

          else
          {
            *(v8 + 48) = 0;
            *(v8 + 56) = 0;
            v462 = (v8 + 57);
          }

          *(v8 + 200) = v462;
          v463 = (v8 + 57);
          goto LABEL_890;
        }

LABEL_891:
        *v464 = -1;
        v464 += 4;
        if (!--v461)
        {
          goto LABEL_892;
        }
      }

      ++v463;
LABEL_890:
      *(v8 + 192) = v463;
      goto LABEL_891;
    }

    sub_29AB50224(v8, v759 - (v54 + v819));
    if (v801 == 16)
    {
      v722 = 2 * (*v8 & 1);
      v5 = v804;
      v7 = v796;
    }

    else
    {
      v5 = v804;
      v7 = v796;
      v447 = v809;
      if (v801 == 32)
      {
        v484 = HIDWORD(v51) == 255 && v51 == 65280 && v778 == 16711680;
        if (v484 & v61)
        {
          v721 = 0;
          v722 = 0;
          v746 = 0;
          v751 = 0;
          v741 = 0;
          v738 = 0;
          v724 = 0;
          v764 = 0;
          v756 = 0;
          v736 = 1;
          goto LABEL_946;
        }
      }

      else if (v801 == 24)
      {
        v736 = 0;
        v746 = 0;
        v751 = 0;
        v741 = 0;
        v738 = 0;
        v724 = 0;
        v764 = 0;
        v756 = 0;
        v721 = 0;
        v722 = *v8 & 3;
LABEL_946:
        v489 = *(v8 + 4);
        if (v489 < 1)
        {
LABEL_1132:
          if (v447 == 4 && !v53)
          {
            v583 = 4 * v489 * *v8;
            if (v583 - 1 >= 0)
            {
              v584 = 0;
              v585 = (((v583 - 1) >> 2) + 16) & 0x3FFFFFF0;
              v586 = vdupq_n_s64((v583 - 1) >> 2);
              v587 = &v15[v583 - 4 - 25];
              do
              {
                v588 = vdupq_n_s64(v584);
                v589 = vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B430070)));
                if (vuzp1_s8(vuzp1_s16(v589, *v586.i8), *v586.i8).u8[0])
                {
                  v587[28] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(v589, *&v586), *&v586).i8[1])
                {
                  v587[24] = -1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v586, vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B433E10)))), *&v586).i8[2])
                {
                  v587[20] = -1;
                  v587[16] = -1;
                }

                v590 = vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B433E00)));
                if (vuzp1_s8(*&v586, vuzp1_s16(v590, *&v586)).i32[1])
                {
                  v587[12] = -1;
                }

                if (vuzp1_s8(*&v586, vuzp1_s16(v590, *&v586)).i8[5])
                {
                  v587[8] = -1;
                }

                if (vuzp1_s8(*&v586, vuzp1_s16(*&v586, vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B433DF0))))).i8[6])
                {
                  v587[4] = -1;
                  *v587 = -1;
                }

                v591 = vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B4BE240)));
                if (vuzp1_s8(vuzp1_s16(v591, *v586.i8), *v586.i8).u8[0])
                {
                  *(v587 - 4) = -1;
                }

                if (vuzp1_s8(vuzp1_s16(v591, *&v586), *&v586).i8[1])
                {
                  *(v587 - 8) = -1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v586, vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B4BE230)))), *&v586).i8[2])
                {
                  *(v587 - 12) = -1;
                  *(v587 - 16) = -1;
                }

                v592 = vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B4BE220)));
                if (vuzp1_s8(*&v586, vuzp1_s16(v592, *&v586)).i32[1])
                {
                  *(v587 - 20) = -1;
                }

                if (vuzp1_s8(*&v586, vuzp1_s16(v592, *&v586)).i8[5])
                {
                  *(v587 - 24) = -1;
                }

                if (vuzp1_s8(*&v586, vuzp1_s16(*&v586, vmovn_s64(vcgeq_u64(v586, vorrq_s8(v588, xmmword_29B4BE210))))).i8[6])
                {
                  *(v587 - 28) = -1;
                  *(v587 - 32) = -1;
                }

                v584 += 16;
                v587 -= 64;
              }

              while (v585 != v584);
            }
          }

          if (v720 <= 0)
          {
            v594 = *v8;
          }

          else
          {
            v593 = (v489 >> 1);
            v594 = *v8;
            if (v593 >= 1)
            {
              v595 = 0;
              v596 = 0;
              v597 = v594 * v447;
              v598 = v597 * (v489 - 1);
              do
              {
                if (v597 >= 1)
                {
                  v599 = &v15[v598];
                  v600 = v597;
                  v601 = &v15[v595];
                  do
                  {
                    v602 = *v601;
                    *v601++ = *v599;
                    *v599++ = v602;
                    --v600;
                  }

                  while (v600);
                }

                ++v596;
                v598 -= v597;
                v595 += v597;
              }

              while (v596 != v593);
            }
          }

          *v7 = v594;
          *v5 = *(v8 + 4);
          if (v3)
          {
            *v3 = *(v8 + 8);
          }

          goto LABEL_13;
        }

        v800 = v7;
        v490 = 0;
        v491 = 0;
        v492 = (v8 + 56);
        v493 = v8 + 57;
        v795 = v3;
        while (1)
        {
          v494 = *v8;
          v723 = v491;
          if (v721)
          {
            if (v494 >= 1)
            {
              v495 = 0;
              v496 = v490;
              do
              {
                v497 = sub_29AB538DC(v8);
                if (v801 != 16)
                {
                  v497 |= sub_29AB538DC(v8) << 16;
                }

                v498 = (v497 & v778) >> v746;
                if (v746 < 0)
                {
                  v498 = (v497 & v778) << -v746;
                }

                v499 = &v15[v496];
                *v499 = ((v498 >> (8 - v751)) * dword_29B6C3BAC[v751]) >> dword_29B6C3BD0[v751];
                v500 = (v497 & v51) >> v741;
                if (v741 < 0)
                {
                  v500 = (v497 & v51) << -v741;
                }

                v499[1] = (dword_29B6C3BAC[v764] * (v500 >> (8 - v764))) >> dword_29B6C3BD0[v764];
                v501 = (v497 & HIDWORD(v51)) >> v738;
                if (v738 < 0)
                {
                  v501 = (v497 & HIDWORD(v51)) << -v738;
                }

                v499[2] = (dword_29B6C3BAC[v756] * (v501 >> (8 - v756))) >> dword_29B6C3BD0[v756];
                if (v784)
                {
                  v502 = (v497 & v784) >> v724;
                  if (v724 < 0)
                  {
                    v502 = (v497 & v784) << -v724;
                  }

                  v503 = (dword_29B6C3BAC[HIDWORD(v724)] * (v502 >> (8 - BYTE4(v724)))) >> dword_29B6C3BD0[HIDWORD(v724)];
                }

                else
                {
                  v503 = 255;
                }

                v504 = v496 + 3;
                if (v809 == 4)
                {
                  v15[v504] = v503;
                  v504 = (v496 + 4);
                }

                v53 |= v503;
                ++v495;
                v496 = v504;
              }

              while (v495 < *v8);
              goto LABEL_1005;
            }
          }

          else if (v494 >= 1)
          {
            v505 = 0;
            v507 = *(v8 + 192);
            v506 = *(v8 + 200);
            do
            {
              if (v507 >= v506)
              {
                v508 = *(v8 + 48);
                if (v508)
                {
                  v509 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                  if (v509)
                  {
                    v506 = &v492[v509];
                    LOBYTE(v508) = *v492;
                  }

                  else
                  {
                    LOBYTE(v508) = 0;
                    *(v8 + 48) = 0;
                    *(v8 + 56) = 0;
                    v506 = (v8 + 57);
                  }

                  *(v8 + 192) = v493;
                  *(v8 + 200) = v506;
                  v507 = (v8 + 57);
                  v447 = v809;
                }
              }

              else
              {
                *(v8 + 192) = v507 + 1;
                LOBYTE(v508) = *v507++;
              }

              v510 = &v15[v490];
              v510[2] = v508;
              if (v507 >= v506)
              {
                v511 = *(v8 + 48);
                if (v511)
                {
                  v512 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                  if (v512)
                  {
                    v506 = &v492[v512];
                    LOBYTE(v511) = *v492;
                  }

                  else
                  {
                    LOBYTE(v511) = 0;
                    *(v8 + 48) = 0;
                    *(v8 + 56) = 0;
                    v506 = (v8 + 57);
                  }

                  v447 = v809;
                  *(v8 + 192) = v493;
                  *(v8 + 200) = v506;
                  v507 = (v8 + 57);
                }
              }

              else
              {
                *(v8 + 192) = v507 + 1;
                LOBYTE(v511) = *v507++;
              }

              v510[1] = v511;
              if (v507 >= v506)
              {
                v513 = *(v8 + 48);
                if (v513)
                {
                  v514 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                  if (v514)
                  {
                    v506 = &v492[v514];
                    LOBYTE(v513) = *v492;
                  }

                  else
                  {
                    LOBYTE(v513) = 0;
                    *(v8 + 48) = 0;
                    *(v8 + 56) = 0;
                    v506 = (v8 + 57);
                  }

                  v447 = v809;
                  *(v8 + 192) = v493;
                  *(v8 + 200) = v506;
                  v507 = (v8 + 57);
                }
              }

              else
              {
                *(v8 + 192) = v507 + 1;
                LOBYTE(v513) = *v507++;
              }

              *v510 = v513;
              if (v736)
              {
                if (v507 >= v506)
                {
                  v515 = *(v8 + 48);
                  if (v515)
                  {
                    v516 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                    *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                    if (v516)
                    {
                      v506 = &v492[v516];
                      v515 = *v492;
                    }

                    else
                    {
                      v515 = 0;
                      *(v8 + 48) = 0;
                      *(v8 + 56) = 0;
                      v506 = (v8 + 57);
                    }

                    v447 = v809;
                    *(v8 + 192) = v493;
                    *(v8 + 200) = v506;
                    v507 = (v8 + 57);
                  }
                }

                else
                {
                  *(v8 + 192) = v507 + 1;
                  v515 = *v507++;
                }
              }

              else
              {
                v515 = 255;
              }

              v504 = v490 + 3;
              if (v447 == 4)
              {
                v15[v504] = v515;
                v504 = (v490 + 4);
              }

              v53 |= v515;
              ++v505;
              LODWORD(v490) = v504;
            }

            while (v505 < *v8);
            goto LABEL_1005;
          }

          v504 = v490;
LABEL_1005:
          sub_29AB50224(v8, v722);
          v447 = v809;
          v491 = v723 + 1;
          v489 = *(v8 + 4);
          v490 = v504;
          v3 = v795;
          v5 = v804;
          if (v723 + 1 >= v489)
          {
            v7 = v800;
            goto LABEL_1132;
          }
        }
      }

      v722 = 0;
    }

    if (!v778 || !v51 || !HIDWORD(v51))
    {
      free(v15);
      v27 = off_2A1B71BE0(off_2A1B71BE0);
      v15 = 0;
      v28 = "bad masks";
      goto LABEL_49;
    }

    v485 = v3;
    v748 = sub_29AB5BDD0(v778);
    v486 = sub_29AB5BE3C(v778);
    v742 = sub_29AB5BDD0(v51);
    v764 = sub_29AB5BE3C(v51);
    v487 = sub_29AB5BDD0(HIDWORD(v51));
    v756 = sub_29AB5BE3C(HIDWORD(v51));
    v488 = sub_29AB5BDD0(v784);
    HIDWORD(v724) = sub_29AB5BE3C(v784);
    v751 = v486;
    if (v486 > 8 || v764 > 8 || v756 > 8 || HIDWORD(v724) >= 9)
    {
      free(v15);
      v15 = 0;
      *off_2A1B71BE0(off_2A1B71BE0) = "bad masks";
      v3 = v485;
      goto LABEL_13;
    }

    v736 = 0;
    v746 = v748 - 7;
    v741 = v742 - 7;
    v738 = v487 - 7;
    LODWORD(v724) = v488 - 7;
    v721 = 1;
    v3 = v485;
    v447 = v809;
    goto LABEL_946;
  }

LABEL_51:
  if (v10 >= v38)
  {
    if (!*(v8 + 48))
    {
      goto LABEL_194;
    }

    v41 = (v8 + 56);
    v42 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
    v10 = *(v8 + 208);
    *(v8 + 184) += *(v8 + 192) - v10;
    if (v42)
    {
      v38 = &v41[v42];
      v40 = *v41;
    }

    else
    {
      v40 = 0;
      *(v8 + 48) = 0;
      v38 = (v8 + 57);
      *(v8 + 56) = 0;
    }

    v39 = (v8 + 57);
    *(v8 + 192) = v8 + 57;
    *(v8 + 200) = v38;
  }

  else
  {
    v39 = v10 + 1;
    *(v8 + 192) = v10 + 1;
    v40 = *v10;
  }

  if (v40 != 71)
  {
    goto LABEL_194;
  }

  if (v39 >= v38)
  {
    if (!*(v8 + 48))
    {
      goto LABEL_194;
    }

    v45 = (v8 + 56);
    v46 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
    v10 = *(v8 + 208);
    *(v8 + 184) += *(v8 + 192) - v10;
    if (v46)
    {
      v38 = &v45[v46];
      v44 = *v45;
    }

    else
    {
      v44 = 0;
      *(v8 + 48) = 0;
      v38 = (v8 + 57);
      *(v8 + 56) = 0;
    }

    v43 = (v8 + 57);
    *(v8 + 192) = v8 + 57;
    *(v8 + 200) = v38;
  }

  else
  {
    v43 = v39 + 1;
    *(v8 + 192) = v39 + 1;
    v44 = *v39;
  }

  if (v44 != 73)
  {
    goto LABEL_194;
  }

  if (v43 >= v38)
  {
    if (!*(v8 + 48))
    {
      goto LABEL_194;
    }

    v49 = (v8 + 56);
    v50 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
    v10 = *(v8 + 208);
    *(v8 + 184) += *(v8 + 192) - v10;
    if (v50)
    {
      v38 = &v49[v50];
      v48 = *v49;
    }

    else
    {
      v48 = 0;
      *(v8 + 48) = 0;
      v38 = (v8 + 57);
      *(v8 + 56) = 0;
    }

    v47 = (v8 + 57);
    *(v8 + 192) = v8 + 57;
    *(v8 + 200) = v38;
  }

  else
  {
    v47 = v43 + 1;
    *(v8 + 192) = v43 + 1;
    v48 = *v43;
  }

  if (v48 != 70)
  {
    goto LABEL_194;
  }

  if (v47 >= v38)
  {
    if (!*(v8 + 48))
    {
      goto LABEL_194;
    }

    v59 = (v8 + 56);
    v60 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
    v10 = *(v8 + 208);
    *(v8 + 184) += *(v8 + 192) - v10;
    if (v60)
    {
      v38 = &v59[v60];
      v58 = *v59;
    }

    else
    {
      v58 = 0;
      *(v8 + 48) = 0;
      v38 = (v8 + 57);
      *(v8 + 56) = 0;
    }

    v57 = (v8 + 57);
    *(v8 + 192) = v8 + 57;
    *(v8 + 200) = v38;
  }

  else
  {
    v57 = v47 + 1;
    *(v8 + 192) = v47 + 1;
    v58 = *v47;
  }

  if (v58 != 56)
  {
    goto LABEL_194;
  }

  if (v57 >= v38)
  {
    if (*(v8 + 48))
    {
      v75 = (v8 + 56);
      v76 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
      v10 = *(v8 + 208);
      *(v8 + 184) += *(v8 + 192) - v10;
      if (v76)
      {
        v38 = &v75[v76];
        v74 = *v75;
      }

      else
      {
        v74 = 0;
        *(v8 + 48) = 0;
        v38 = (v8 + 57);
        *(v8 + 56) = 0;
      }

      v73 = (v8 + 57);
      *(v8 + 192) = v8 + 57;
      *(v8 + 200) = v38;
      goto LABEL_118;
    }

LABEL_194:
    *(v8 + 192) = v10;
    v77 = *(v8 + 216);
LABEL_195:
    *(v8 + 200) = v77;
    goto LABEL_196;
  }

  v73 = v57 + 1;
  *(v8 + 192) = v57 + 1;
  v74 = *v57;
LABEL_118:
  if (v74 != 57 && v74 != 55)
  {
    goto LABEL_194;
  }

  if (v73 < v38)
  {
    *(v8 + 192) = v73 + 1;
    v77 = *(v8 + 216);
    goto LABEL_124;
  }

  if (!*(v8 + 48))
  {
    goto LABEL_194;
  }

  v73 = (v8 + 56);
  v78 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
  v10 = *(v8 + 208);
  v77 = *(v8 + 216);
  *(v8 + 184) += *(v8 + 192) - v10;
  if (!v78)
  {
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 192) = v10;
    goto LABEL_195;
  }

LABEL_124:
  v79 = *v73;
  *(v8 + 192) = v10;
  *(v8 + 200) = v77;
  if (v79 != 97)
  {
LABEL_196:
    v116 = sub_29AB4FF24(v8);
    v117 = sub_29AB4FF24(v8);
    *(v8 + 192) = *(v8 + 208);
    if ((v117 | (v116 << 16)) == 0x38425053)
    {
      v118 = sub_29AB4FF24(v8);
      if ((sub_29AB4FF24(v8) | (v118 << 16)) != 0x38425053)
      {
        v29 = off_2A1B71BE0(off_2A1B71BE0);
        v19 = 0;
        v187 = "not PSD";
        goto LABEL_782;
      }

      if (sub_29AB4FF24(v8) != 1)
      {
        v29 = off_2A1B71BE0(off_2A1B71BE0);
        v19 = 0;
        v187 = "wrong version";
        goto LABEL_782;
      }

      if (*(v8 + 16))
      {
        v119 = *(v8 + 192);
        v120 = *(v8 + 200);
        if (v120 - v119 <= 5)
        {
          *(v8 + 192) = v120;
          (*(v8 + 24))(*(v8 + 40), (6 - (v120 - v119)));
LABEL_685:
          v369 = sub_29AB4FF24(v8);
          if (v369 >= 0x11)
          {
            v29 = off_2A1B71BE0(off_2A1B71BE0);
            v19 = 0;
            v187 = "wrong channel count";
            goto LABEL_782;
          }

          v370 = v369;
          v793 = v3;
          v799 = v7;
          v807 = v5;
          v371 = sub_29AB4FF24(v8);
          v372 = sub_29AB4FF24(v8);
          v373 = v372 | (v371 << 16);
          v374 = sub_29AB4FF24(v8);
          v375 = sub_29AB4FF24(v8);
          if (v373 >= 16777217)
          {
            goto LABEL_689;
          }

          v376 = v375;
          v377 = v375 | (v374 << 16);
          if (v377 >= 16777217)
          {
            goto LABEL_689;
          }

          v389 = sub_29AB4FF24(v8);
          if (v389 != 8 && v389 != 16)
          {
            v29 = off_2A1B71BE0(off_2A1B71BE0);
            v19 = 0;
            v187 = "unsupported bit depth";
            goto LABEL_782;
          }

          if (sub_29AB4FF24(v8) != 3)
          {
            v29 = off_2A1B71BE0(off_2A1B71BE0);
            v19 = 0;
            v187 = "wrong color format";
            goto LABEL_782;
          }

          v390 = sub_29AB524B0(v8);
          sub_29AB50224(v8, v390);
          v391 = sub_29AB524B0(v8);
          sub_29AB50224(v8, v391);
          v392 = sub_29AB524B0(v8);
          sub_29AB50224(v8, v392);
          v393 = sub_29AB4FF24(v8);
          if (v393 >= 2)
          {
            v29 = off_2A1B71BE0(off_2A1B71BE0);
            v19 = 0;
            v187 = "bad compression";
            goto LABEL_782;
          }

          v420 = v393;
          if (!sub_29AB50270(4, v377, v373, 0))
          {
            goto LABEL_689;
          }

          v735 = v389;
          v421 = malloc(4 * v373 * v377);
          if (v421)
          {
            v15 = v421;
            v422 = v371 << 16;
            v423 = v374 << 16;
            v729 = v377;
            v731 = v373;
            v745 = v377 * v373;
            v726 = v422;
            v728 = v376;
            v725 = v423;
            if (!v420)
            {
              v517 = 0;
              v518 = (v8 + 56);
              v519 = vdupq_n_s64(((v376 | v423) * (v372 | v422)) - 1);
              v733 = (v376 + v423) * (v372 + v422);
              v752 = v519;
              v520 = v421 + 32;
              do
              {
                if (v517 >= v370)
                {
                  if (v517 == 3)
                  {
                    v524 = -1;
                  }

                  else
                  {
                    v524 = 0;
                  }

                  if (v745 >= 1)
                  {
                    v525 = 0;
                    v526 = v520;
                    do
                    {
                      v527 = vdupq_n_s64(v525);
                      v528 = vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B430070)));
                      if (vuzp1_s8(vuzp1_s16(v528, *v527.i8), *v527.i8).u8[0])
                      {
                        *(v526 - 32) = v524;
                      }

                      if (vuzp1_s8(vuzp1_s16(v528, *&v527), *&v527).i8[1])
                      {
                        *(v526 - 28) = v524;
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B433E10)))), *&v527).i8[2])
                      {
                        *(v526 - 24) = v524;
                        *(v526 - 20) = v524;
                      }

                      v529 = vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B433E00)));
                      if (vuzp1_s8(*&v527, vuzp1_s16(v529, *&v527)).i32[1])
                      {
                        *(v526 - 16) = v524;
                      }

                      if (vuzp1_s8(*&v527, vuzp1_s16(v529, *&v527)).i8[5])
                      {
                        *(v526 - 12) = v524;
                      }

                      if (vuzp1_s8(*&v527, vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B433DF0))))).i8[6])
                      {
                        *(v526 - 8) = v524;
                        *(v526 - 4) = v524;
                      }

                      v530 = vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B4BE240)));
                      if (vuzp1_s8(vuzp1_s16(v530, *v527.i8), *v527.i8).u8[0])
                      {
                        *v526 = v524;
                      }

                      if (vuzp1_s8(vuzp1_s16(v530, *&v527), *&v527).i8[1])
                      {
                        v526[4] = v524;
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B4BE230)))), *&v527).i8[2])
                      {
                        v526[8] = v524;
                        v526[12] = v524;
                      }

                      v531 = vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B4BE220)));
                      if (vuzp1_s8(*&v527, vuzp1_s16(v531, *&v527)).i32[1])
                      {
                        v526[16] = v524;
                      }

                      if (vuzp1_s8(*&v527, vuzp1_s16(v531, *&v527)).i8[5])
                      {
                        v526[20] = v524;
                      }

                      v532 = vmovn_s64(vcgeq_u64(v519, vorrq_s8(v527, xmmword_29B4BE210)));
                      if (vuzp1_s8(*&v532, vuzp1_s16(v532, v532)).i8[6])
                      {
                        v526[24] = v524;
                      }

                      v533 = vuzp1_s16(v532, v532);
                      if (vuzp1_s8(v533, v533).i8[7])
                      {
                        v526[28] = v524;
                      }

                      v525 += 16;
                      v526 += 64;
                    }

                    while (((v733 + 15) & 0x1FFFFFFF0) != v525);
                  }
                }

                else
                {
                  v521 = &v15[v517];
                  if (v735 == 16)
                  {
                    if (v745 >= 1)
                    {
                      v522 = v733;
                      do
                      {
                        v523 = sub_29AB4FF24(v8);
                        v519 = v752;
                        *v521 = BYTE1(v523);
                        v521 += 4;
                        --v522;
                      }

                      while (v522);
                    }
                  }

                  else if (v745 >= 1)
                  {
                    v535 = *(v8 + 192);
                    v534 = *(v8 + 200);
                    v536 = v733;
                    do
                    {
                      if (v535 >= v534)
                      {
                        v537 = *(v8 + 48);
                        if (v537)
                        {
                          v538 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                          *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                          if (v538)
                          {
                            v534 = &v518[v538];
                            LOBYTE(v537) = *v518;
                            v535 = (v8 + 57);
                          }

                          else
                          {
                            LOBYTE(v537) = 0;
                            *(v8 + 48) = 0;
                            *(v8 + 56) = 0;
                            v535 = (v8 + 57);
                            v534 = (v8 + 57);
                          }

                          v519 = v752;
                          *(v8 + 192) = v535;
                          *(v8 + 200) = v534;
                        }
                      }

                      else
                      {
                        *(v8 + 192) = v535 + 1;
                        LOBYTE(v537) = *v535++;
                      }

                      *v521 = v537;
                      v521 += 4;
                      --v536;
                    }

                    while (v536);
                  }
                }

                ++v517;
                ++v520;
                v3 = v793;
                v5 = v807;
              }

              while (v517 != 4);
LABEL_1060:
              if (v370 >= 4 && v745 >= 1)
              {
                v539 = (v728 + v725) * (v372 + v726);
                v540 = v15 + 1;
                do
                {
                  v541 = v540[2];
                  if (v540[2] && v541 != 255)
                  {
                    v542 = 1.0 / (v541 / 255.0);
                    *&v543 = 1.0 - v542;
                    v544 = (1.0 - v542) * 255.0;
                    LOBYTE(v543) = *(v540 - 1);
                    *&v545 = v544 + (v542 * v543);
                    *(v540 - 1) = *&v545;
                    LOBYTE(v545) = *v540;
                    *&v546 = v544 + (v542 * v545);
                    *v540 = *&v546;
                    LOBYTE(v546) = v540[1];
                    v540[1] = (v544 + (v542 * v546));
                  }

                  v540 += 4;
                  --v539;
                }

                while (v539);
              }

              if (v3)
              {
                *v3 = 4;
              }

              *v5 = v731;
              v7 = v799;
              *v799 = v729;
              goto LABEL_13;
            }

            sub_29AB50224(v8, 2 * v370 * v373);
            v424 = 0;
            v425 = vdupq_n_s64(((v376 | v423) * (v372 | v422)) - 1);
            v426 = ((v376 + v423) * (v372 + v422) + 15) & 0x1FFFFFFF0;
            v427 = xmmword_29B4BE210;
            v428 = xmmword_29B4BE220;
            v429 = xmmword_29B4BE230;
            v430 = xmmword_29B4BE240;
            v431 = xmmword_29B433DF0;
            v432 = xmmword_29B433E00;
            v433 = xmmword_29B433E10;
            v434 = xmmword_29B430070;
            v435 = v15 + 32;
            v3 = v793;
            v5 = v807;
            v813 = v425;
            while (1)
            {
              if (v424 >= v370)
              {
                if (v745 >= 1)
                {
                  v437 = 0;
                  if (v424 == 3)
                  {
                    v438 = -1;
                  }

                  else
                  {
                    v438 = 0;
                  }

                  v439 = v435;
                  do
                  {
                    v440 = vdupq_n_s64(v437);
                    v441 = vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v434)));
                    if (vuzp1_s8(vuzp1_s16(v441, *v440.i8), *v440.i8).u8[0])
                    {
                      *(v439 - 32) = v438;
                    }

                    if (vuzp1_s8(vuzp1_s16(v441, *&v440), *&v440).i8[1])
                    {
                      *(v439 - 28) = v438;
                    }

                    if (vuzp1_s8(vuzp1_s16(*&v440, vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v433)))), *&v440).i8[2])
                    {
                      *(v439 - 24) = v438;
                      *(v439 - 20) = v438;
                    }

                    v442 = vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v432)));
                    if (vuzp1_s8(*&v440, vuzp1_s16(v442, *&v440)).i32[1])
                    {
                      *(v439 - 16) = v438;
                    }

                    if (vuzp1_s8(*&v440, vuzp1_s16(v442, *&v440)).i8[5])
                    {
                      *(v439 - 12) = v438;
                    }

                    if (vuzp1_s8(*&v440, vuzp1_s16(*&v440, vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v431))))).i8[6])
                    {
                      *(v439 - 8) = v438;
                      *(v439 - 4) = v438;
                    }

                    v443 = vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v430)));
                    if (vuzp1_s8(vuzp1_s16(v443, *v440.i8), *v440.i8).u8[0])
                    {
                      *v439 = v438;
                    }

                    if (vuzp1_s8(vuzp1_s16(v443, *&v440), *&v440).i8[1])
                    {
                      v439[4] = v438;
                    }

                    if (vuzp1_s8(vuzp1_s16(*&v440, vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v429)))), *&v440).i8[2])
                    {
                      v439[8] = v438;
                      v439[12] = v438;
                    }

                    v444 = vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v428)));
                    if (vuzp1_s8(*&v440, vuzp1_s16(v444, *&v440)).i32[1])
                    {
                      v439[16] = v438;
                    }

                    if (vuzp1_s8(*&v440, vuzp1_s16(v444, *&v440)).i8[5])
                    {
                      v439[20] = v438;
                    }

                    v445 = vmovn_s64(vcgeq_u64(v425, vorrq_s8(v440, v427)));
                    if (vuzp1_s8(*&v445, vuzp1_s16(v445, v445)).i8[6])
                    {
                      v439[24] = v438;
                    }

                    v446 = vuzp1_s16(v445, v445);
                    if (vuzp1_s8(v446, v446).i8[7])
                    {
                      v439[28] = v438;
                    }

                    v437 += 16;
                    v439 += 64;
                  }

                  while (v426 != v437);
                }
              }

              else
              {
                v436 = sub_29AB5BF9C(v8, &v15[v424], v745);
                v434 = xmmword_29B430070;
                v433 = xmmword_29B433E10;
                v432 = xmmword_29B433E00;
                v431 = xmmword_29B433DF0;
                v430 = xmmword_29B4BE240;
                v429 = xmmword_29B4BE230;
                v428 = xmmword_29B4BE220;
                v427 = xmmword_29B4BE210;
                v425 = v813;
                if (!v436)
                {
                  free(v15);
                  v29 = off_2A1B71BE0(off_2A1B71BE0);
                  v19 = 0;
                  v187 = "corrupt";
                  goto LABEL_782;
                }
              }

              ++v424;
              ++v435;
              if (v424 == 4)
              {
                goto LABEL_1060;
              }
            }
          }

          goto LABEL_780;
        }
      }

      else
      {
        v119 = *(v8 + 192);
      }

      *(v8 + 192) = v119 + 6;
      goto LABEL_685;
    }

    if (!sub_29AB54174(v8, "S\x80\xF6\x34nvalid width"))
    {
      v128 = *(v8 + 208);
      v129 = *(v8 + 216);
      *(v8 + 192) = v128;
      *(v8 + 200) = v129;
      goto LABEL_356;
    }

    v121 = (v8 + 56);
    v122 = v8 + 57;
    v124 = *(v8 + 192);
    v123 = *(v8 + 200);
    v125 = 84;
    while (v124 >= v123)
    {
      if (*(v8 + 48))
      {
        v126 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
        *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
        if (v126)
        {
          v123 = &v121[v126];
        }

        else
        {
          *(v8 + 48) = 0;
          *(v8 + 56) = 0;
          v123 = (v8 + 57);
        }

        *(v8 + 200) = v123;
        v124 = v8 + 57;
        goto LABEL_211;
      }

LABEL_212:
      if (!--v125)
      {
        v127 = sub_29AB54174(v8, "PICT");
        v128 = *(v8 + 208);
        v129 = *(v8 + 216);
        *(v8 + 192) = v128;
        *(v8 + 200) = v129;
        if (v127)
        {
          v130 = 92;
          while (v128 >= v129)
          {
            if (*(v8 + 48))
            {
              v131 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
              *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
              if (v131)
              {
                v129 = &v121[v131];
              }

              else
              {
                *(v8 + 48) = 0;
                *(v8 + 56) = 0;
                v129 = (v8 + 57);
              }

              *(v8 + 200) = v129;
              v128 = (v8 + 57);
              goto LABEL_222;
            }

LABEL_223:
            if (!--v130)
            {
              v132 = sub_29AB4FF24(v8);
              v133 = sub_29AB4FF24(v8);
              if (!*(v8 + 16))
              {
                goto LABEL_227;
              }

              if ((*(v8 + 32))(*(v8 + 40)))
              {
                if (*(v8 + 48))
                {
LABEL_227:
                  if (*(v8 + 192) < *(v8 + 200))
                  {
                    goto LABEL_228;
                  }
                }

                v29 = off_2A1B71BE0(off_2A1B71BE0);
                v19 = 0;
                v187 = "bad file";
LABEL_782:
                *v29 = v187;
                return v19;
              }

LABEL_228:
              if (v133)
              {
                if (0x7FFFFFFF / v133 < v132 || (v133 * v132) >> 29 != 0)
                {
LABEL_689:
                  v29 = off_2A1B71BE0(off_2A1B71BE0);
                  v19 = 0;
                  v187 = "too large";
                  goto LABEL_782;
                }
              }

              sub_29AB4FF24(v8);
              sub_29AB4FF24(v8);
              sub_29AB4FF24(v8);
              sub_29AB4FF24(v8);
              v135 = sub_29AB5037C(v132, v133, 4u, 0);
              if (!v135)
              {
                goto LABEL_780;
              }

              v805 = v5;
              v811 = v132;
              v785 = v133;
              v802 = v135;
              memset(v135, 255, 4 * v133 * v132);
              v136 = 0;
              v137 = 0;
              v138 = &v820 + 2;
              v796 = v7;
              while (2)
              {
                if (v136 == 10)
                {
LABEL_708:
                  v387 = off_2A1B71BE0(off_2A1B71BE0);
                  v149 = 0;
                  v388 = "bad format";
                }

                else
                {
                  v140 = *(v8 + 192);
                  v139 = *(v8 + 200);
                  if (v140 >= v139)
                  {
                    if (*(v8 + 48))
                    {
                      v142 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                      if (v142)
                      {
                        v139 = &v121[v142];
                        v141 = *v121;
                      }

                      else
                      {
                        v141 = 0;
                        *(v8 + 48) = 0;
                        *(v8 + 56) = 0;
                        v139 = (v8 + 57);
                      }

                      *(v8 + 192) = v122;
                      *(v8 + 200) = v139;
                      v140 = (v8 + 57);
                    }

                    else
                    {
                      v141 = 0;
                    }
                  }

                  else
                  {
                    *(v8 + 192) = v140 + 1;
                    v141 = *v140++;
                  }

                  if (v140 >= v139)
                  {
                    if (*(v8 + 48))
                    {
                      v144 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                      if (v144)
                      {
                        v139 = &v121[v144];
                        v143 = *v121;
                      }

                      else
                      {
                        v143 = 0;
                        *(v8 + 48) = 0;
                        *(v8 + 56) = 0;
                        v139 = (v8 + 57);
                      }

                      *(v8 + 192) = v122;
                      *(v8 + 200) = v139;
                      v140 = (v8 + 57);
                    }

                    else
                    {
                      v143 = 0;
                    }
                  }

                  else
                  {
                    *(v8 + 192) = v140 + 1;
                    v143 = *v140++;
                  }

                  *(v138 - 2) = v143;
                  if (v140 >= v139)
                  {
                    v145 = *(v8 + 48);
                    if (v145)
                    {
                      v146 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                      if (v146)
                      {
                        v139 = &v121[v146];
                        LOBYTE(v145) = *v121;
                      }

                      else
                      {
                        LOBYTE(v145) = 0;
                        *(v8 + 48) = 0;
                        *(v8 + 56) = 0;
                        v139 = (v8 + 57);
                      }

                      *(v8 + 192) = v122;
                      *(v8 + 200) = v139;
                      v140 = (v8 + 57);
                    }
                  }

                  else
                  {
                    *(v8 + 192) = v140 + 1;
                    LOBYTE(v145) = *v140++;
                  }

                  *(v138 - 1) = v145;
                  if (v140 >= v139)
                  {
                    if (*(v8 + 48))
                    {
                      v148 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                      if (v148)
                      {
                        v139 = &v121[v148];
                        v147 = *v121;
                      }

                      else
                      {
                        v147 = 0;
                        *(v8 + 48) = 0;
                        *(v8 + 56) = 0;
                        v139 = (v8 + 57);
                      }

                      *(v8 + 192) = v122;
                      *(v8 + 200) = v139;
                      v140 = (v8 + 57);
                    }

                    else
                    {
                      v147 = 0;
                    }
                  }

                  else
                  {
                    *(v8 + 192) = v140 + 1;
                    v147 = *v140++;
                  }

                  *v138 = v147;
                  if (!*(v8 + 16))
                  {
                    goto LABEL_272;
                  }

                  if (!(*(v8 + 32))(*(v8 + 40)))
                  {
                    goto LABEL_273;
                  }

                  if (!*(v8 + 48))
                  {
                    goto LABEL_715;
                  }

                  v140 = *(v8 + 192);
                  v139 = *(v8 + 200);
LABEL_272:
                  if (v140 < v139)
                  {
LABEL_273:
                    if (v143 != 8)
                    {
                      goto LABEL_708;
                    }

                    v137 |= v147;
                    v138 += 3;
                    ++v136;
                    if (v141)
                    {
                      continue;
                    }

                    if ((v137 & 0x10) != 0)
                    {
                      v149 = 4;
                    }

                    else
                    {
                      v149 = 3;
                    }

                    if (v3)
                    {
                      *v3 = v149;
                      v149 = 0;
                    }

                    v5 = v805;
                    v150 = v785;
                    v151 = v802;
                    if (!v785)
                    {
                      goto LABEL_353;
                    }

                    v152 = 4 * v811;
                    v153 = 0;
                    v791 = v3;
                    while (1)
                    {
                      v154 = 0;
                      v760 = v153;
                      v774 = &v151[v152 * v153];
                      do
                      {
                        v155 = &v820 + 3 * v154;
                        v156 = v155[1];
                        v779 = v154;
                        if (v155[1])
                        {
                          if (v156 == 1)
                          {
                            v172 = v811;
                            v173 = v774;
                            if (!v811)
                            {
                              goto LABEL_351;
                            }

                            while (2)
                            {
                              v175 = *(v8 + 192);
                              v174 = *(v8 + 200);
                              if (v175 >= v174)
                              {
                                if (*(v8 + 48))
                                {
                                  v177 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                                  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                                  if (v177)
                                  {
                                    v174 = &v121[v177];
                                    v176 = *v121;
                                  }

                                  else
                                  {
                                    v176 = 0;
                                    *(v8 + 48) = 0;
                                    *(v8 + 56) = 0;
                                    v174 = (v8 + 57);
                                  }

                                  *(v8 + 192) = v122;
                                  *(v8 + 200) = v174;
                                  v175 = (v8 + 57);
                                }

                                else
                                {
                                  v176 = 0;
                                }
                              }

                              else
                              {
                                *(v8 + 192) = v175 + 1;
                                v176 = *v175++;
                              }

                              if (*(v8 + 16))
                              {
                                if ((*(v8 + 32))(*(v8 + 40)))
                                {
                                  if (!*(v8 + 48))
                                  {
                                    goto LABEL_840;
                                  }

                                  v175 = *(v8 + 192);
                                  v174 = *(v8 + 200);
                                  goto LABEL_333;
                                }
                              }

                              else
                              {
LABEL_333:
                                if (v175 >= v174)
                                {
LABEL_840:
                                  v448 = off_2A1B71BE0(off_2A1B71BE0);
                                  v449 = "bad file";
                                  goto LABEL_841;
                                }
                              }

                              if (!sub_29AB5C1D4(v8, v155[2], &v817))
                              {
                                goto LABEL_842;
                              }

                              if (v172 >= v176)
                              {
                                v178 = v176;
                              }

                              else
                              {
                                v178 = v172;
                              }

                              if (v178)
                              {
                                for (i = 0; i != v178; ++i)
                                {
                                  v180 = 0;
                                  v181 = v155[2];
                                  v182 = 128;
                                  do
                                  {
                                    if ((v182 & v181) != 0)
                                    {
                                      v173[v180] = *(&v817 + v180);
                                    }

                                    ++v180;
                                    v182 >>= 1;
                                  }

                                  while (v180 != 4);
                                  v173 += 4;
                                }
                              }

                              v172 -= v178;
                              if (v172 < 1)
                              {
                                goto LABEL_351;
                              }

                              continue;
                            }
                          }

                          if (v156 != 2)
                          {
                            v448 = off_2A1B71BE0(off_2A1B71BE0);
                            v449 = "bad format";
LABEL_841:
                            *v448 = v449;
                            goto LABEL_842;
                          }

                          v157 = v811;
                          v158 = v774;
                          if (v811)
                          {
                            do
                            {
                              v160 = *(v8 + 192);
                              v159 = *(v8 + 200);
                              if (v160 >= v159)
                              {
                                if (*(v8 + 48))
                                {
                                  v162 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                                  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                                  if (v162)
                                  {
                                    v159 = &v121[v162];
                                    v161 = *v121;
                                  }

                                  else
                                  {
                                    v161 = 0;
                                    *(v8 + 48) = 0;
                                    *(v8 + 56) = 0;
                                    v159 = (v8 + 57);
                                  }

                                  *(v8 + 192) = v122;
                                  *(v8 + 200) = v159;
                                  v160 = (v8 + 57);
                                }

                                else
                                {
                                  v161 = 0;
                                }
                              }

                              else
                              {
                                *(v8 + 192) = v160 + 1;
                                v161 = *v160++;
                              }

                              if (*(v8 + 16))
                              {
                                if (!(*(v8 + 32))(*(v8 + 40)))
                                {
                                  goto LABEL_300;
                                }

                                if (!*(v8 + 48))
                                {
                                  goto LABEL_840;
                                }

                                v160 = *(v8 + 192);
                                v159 = *(v8 + 200);
                              }

                              if (v160 >= v159)
                              {
                                goto LABEL_840;
                              }

LABEL_300:
                              if ((v161 & 0x80) != 0)
                              {
                                if (v161 == 128)
                                {
                                  v164 = sub_29AB4FF24(v8);
                                }

                                else
                                {
                                  v164 = v161 - 127;
                                }

                                if (v164 > v157)
                                {
                                  goto LABEL_840;
                                }

                                if (!sub_29AB5C1D4(v8, v155[2], &v817))
                                {
                                  goto LABEL_842;
                                }

                                if (v164 >= 1)
                                {
                                  for (j = 0; j != v164; ++j)
                                  {
                                    v168 = 0;
                                    v169 = v155[2];
                                    v170 = 128;
                                    do
                                    {
                                      if ((v170 & v169) != 0)
                                      {
                                        *(v158 + v168) = *(&v817 + v168);
                                      }

                                      ++v168;
                                      v170 >>= 1;
                                    }

                                    while (v168 != 4);
                                    v158 += 4;
                                  }
                                }
                              }

                              else
                              {
                                v163 = v161;
                                v164 = v161 + 1;
                                v165 = v157;
                                v166 = v164;
                                v750 = v165;
                                if (v165 <= v163)
                                {
                                  goto LABEL_840;
                                }

                                do
                                {
                                  if (!sub_29AB5C1D4(v8, v155[2], v158))
                                  {
                                    goto LABEL_842;
                                  }

                                  v158 += 4;
                                  --v166;
                                }

                                while (v166);
                                v157 = v750;
                              }

                              v171 = __OFSUB__(v157, v164);
                              v157 -= v164;
                            }

                            while (!((v157 < 0) ^ v171 | (v157 == 0)));
                          }
                        }

                        else if (v811)
                        {
                          v183 = v155[2];
                          v184 = v811;
                          v185 = v774;
                          while (sub_29AB5C1D4(v8, v183, v185))
                          {
                            v185 += 4;
                            if (!--v184)
                            {
                              goto LABEL_351;
                            }
                          }

LABEL_842:
                          v3 = v791;
LABEL_717:
                          v5 = v805;
                          v186 = v811;
                          v150 = v785;
                          free(v802);
                          v151 = 0;
                          goto LABEL_718;
                        }

LABEL_351:
                        v154 = v779 + 1;
                        v3 = v791;
                        v5 = v805;
                        v152 = 4 * v811;
                      }

                      while (v136 != v779 + 1);
                      v153 = v760 + 1;
                      v151 = v802;
                      v150 = v785;
                      if (v760 + 1 == v785)
                      {
LABEL_353:
                        v186 = v811;
LABEL_718:
                        *v796 = v186;
                        *v5 = v150;
                        if (v3)
                        {
                          v149 = *v3;
                        }

                        if (v149 == 4)
                        {
                          v15 = v151;
LABEL_830:
                          v7 = v796;
                          goto LABEL_13;
                        }

                        v394 = sub_29AB5037C(v149, v186, v150, 0);
                        if (v394)
                        {
                          v15 = v394;
                          if (!v150)
                          {
LABEL_778:
                            free(v151);
                            goto LABEL_830;
                          }

                          if ((v149 + 22) > 0x19 || ((1 << (v149 + 22)) & 0x3858687) == 0)
                          {
                            free(v151);
                            free(v15);
                            v29 = off_2A1B71BE0(off_2A1B71BE0);
                            v19 = 0;
                            v187 = "unsupported";
                            goto LABEL_782;
                          }

                          v395 = 0;
                          v396 = 0;
                          while (1)
                          {
                            v397 = &v394[v395 + 3];
                            v398 = &v151[4 * v186 * v396];
                            v399 = &v394[v186 * v396 * v149];
                            if (v149 <= -13)
                            {
                              break;
                            }

                            if (v149 > -5)
                            {
                              switch(v149)
                              {
                                case -4:
                                  v417 = v186 + 1;
                                  if (v186)
                                  {
                                    do
                                    {
                                      *v399 = *v398;
                                      *(v399 + 1) = *(v398 + 1);
                                      v399[3] = -1;
                                      v398 += 3;
                                      v399 += 4;
                                      --v417;
                                    }

                                    while (v417 > 1);
                                  }

                                  goto LABEL_777;
                                case 1:
                                  v412 = v186 + 1;
                                  if (v186)
                                  {
                                    do
                                    {
                                      *v399++ = (77 * *v398 + 150 * v398[1] + 29 * v398[2]) >> 8;
                                      v398 += 4;
                                      --v412;
                                    }

                                    while (v412 > 1);
                                  }

                                  goto LABEL_777;
                                case 2:
                                  v404 = v186 + 1;
                                  if (v186)
                                  {
                                    do
                                    {
                                      *v399 = (77 * *v398 + 150 * v398[1] + 29 * v398[2]) >> 8;
                                      v399[1] = v398[3];
                                      v398 += 4;
                                      v399 += 2;
                                      --v404;
                                    }

                                    while (v404 > 1);
                                  }

                                  goto LABEL_777;
                              }

                              goto LABEL_775;
                            }

                            if (v149 == -12)
                            {
                              v415 = v186 + 1;
                              if (v186)
                              {
                                do
                                {
                                  v416 = *v398;
                                  *(v397 - 1) = *v398;
                                  *(v397 - 2) = v416;
                                  *(v397 - 3) = v416;
                                  *v397 = v398[1];
                                  v397 += 4;
                                  v398 += 2;
                                  --v415;
                                }

                                while (v415 > 1);
                              }

                              goto LABEL_777;
                            }

                            if (v149 == -7)
                            {
                              v411 = v186 + 1;
                              if (v186)
                              {
                                do
                                {
                                  *v399++ = (77 * *v398 + 150 * v398[1] + 29 * v398[2]) >> 8;
                                  v398 += 3;
                                  --v411;
                                }

                                while (v411 > 1);
                              }

                              goto LABEL_777;
                            }

                            if (v149 != -6)
                            {
                              goto LABEL_775;
                            }

                            v400 = v186 + 1;
                            if (v186)
                            {
                              do
                              {
                                *v399 = (77 * *v398 + 150 * v398[1] + 29 * v398[2]) >> 8;
                                v399[1] = -1;
                                v398 += 3;
                                v399 += 2;
                                --v400;
                              }

                              while (v400 > 1);
                            }

LABEL_777:
                            ++v396;
                            v395 += v186 * v149;
                            if (v396 == v150)
                            {
                              goto LABEL_778;
                            }
                          }

                          v401 = &v394[v395 + 2];
                          if (v149 <= -21)
                          {
                            if (v149 == -22)
                            {
                              if (v186)
                              {
                                v407 = v186 + 1;
                                do
                                {
                                  v408 = *v398++;
                                  *v399 = v408;
                                  v399[1] = -1;
                                  v399 += 2;
                                  --v407;
                                }

                                while (v407 > 1);
                              }

                              goto LABEL_777;
                            }

                            if (v149 == -21)
                            {
                              v405 = v186 + 1;
                              if (v186)
                              {
                                do
                                {
                                  v406 = *v398++;
                                  *v401 = v406;
                                  *(v401 - 1) = v406;
                                  *(v401 - 2) = v406;
                                  v401 += 3;
                                  --v405;
                                }

                                while (v405 > 1);
                              }

                              goto LABEL_777;
                            }
                          }

                          else
                          {
                            switch(v149)
                            {
                              case -20:
                                v413 = v186 + 1;
                                if (v186)
                                {
                                  do
                                  {
                                    v414 = *v398++;
                                    *(v397 - 1) = v414;
                                    *(v397 - 2) = v414;
                                    *(v397 - 3) = v414;
                                    *v397 = -1;
                                    v397 += 4;
                                    --v413;
                                  }

                                  while (v413 > 1);
                                }

                                goto LABEL_777;
                              case -15:
                                v409 = v186 + 1;
                                if (v186)
                                {
                                  do
                                  {
                                    v410 = *v398;
                                    v398 += 2;
                                    *v399++ = v410;
                                    --v409;
                                  }

                                  while (v409 > 1);
                                }

                                goto LABEL_777;
                              case -13:
                                v402 = v186 + 1;
                                if (v186)
                                {
                                  do
                                  {
                                    v403 = *v398;
                                    v398 += 2;
                                    *v401 = v403;
                                    *(v401 - 1) = v403;
                                    *(v401 - 2) = v403;
                                    v401 += 3;
                                    --v402;
                                  }

                                  while (v402 > 1);
                                }

                                goto LABEL_777;
                            }
                          }

LABEL_775:
                          v418 = v186 + 1;
                          if (v186)
                          {
                            do
                            {
                              *v399 = *v398;
                              *(v399 + 1) = *(v398 + 1);
                              v398 += 4;
                              v399 += 3;
                              --v418;
                            }

                            while (v418 > 1);
                          }

                          goto LABEL_777;
                        }

                        free(v151);
LABEL_780:
                        v29 = off_2A1B71BE0(off_2A1B71BE0);
                        v19 = 0;
                        goto LABEL_781;
                      }
                    }
                  }

LABEL_715:
                  v387 = off_2A1B71BE0(off_2A1B71BE0);
                  v149 = 0;
                  v388 = "bad file";
                }

                break;
              }

              *v387 = v388;
              goto LABEL_717;
            }
          }

          ++v128;
LABEL_222:
          *(v8 + 192) = v128;
          goto LABEL_223;
        }

LABEL_356:
        v188 = malloc(0x4888uLL);
        if (v188)
        {
          v189 = v188;
          v190 = (v188 + 2048);
          bzero(v188 + 1, 0x4868uLL);
          *v189 = v8;
          v189[2318] = sub_29AB5C308;
          v189[2319] = sub_29AB5C6C4;
          v189[2320] = sub_29AB5C780;
          *(v190 + 531) = -1;
          v190[2088] = -1;
          if (sub_29AB4ED4C(v189) == 216)
          {
            *(v8 + 192) = *(v8 + 208);
            free(v189);
            v191 = malloc(0x4888uLL);
            if (!v191)
            {
              goto LABEL_780;
            }

            v192 = v191;
            v792 = v3;
            v798 = v7;
            v806 = v5;
            v193 = (v191 + 1);
            bzero(v191 + 1, 0x4868uLL);
            *v192 = v8;
            v192[2318] = sub_29AB5C308;
            v192[2319] = sub_29AB5C6C4;
            v192[2320] = sub_29AB5C780;
            *(v8 + 8) = 0;
            *(v192 + 2267) = 0u;
            *(v192 + 2279) = 0u;
            *(v192 + 2291) = 0u;
            *(v192 + 2303) = 0u;
            if (!sub_29AB4EBFC(v192, 0))
            {
              goto LABEL_1272;
            }

            v194 = (v192 + 2048);
            v195 = (v192 + 2260);
            v196 = sub_29AB4ED4C(v192);
            v812 = (v192 + 2315);
            v786 = (v192 + 841);
            v780 = (v192 + 1745);
            v197 = (v192 + 1681);
            v198 = v192 + 8308;
            v199 = "bad SOS component count";
LABEL_361:
            if (v196 != 218)
            {
              if (v196 == 220)
              {
                v200 = sub_29AB4FF24(*v192);
                v201 = sub_29AB4FF24(*v192);
                if (v200 != 4)
                {
                  v199 = "bad DNL len";
                  goto LABEL_1271;
                }

                if (v201 != *(*v192 + 4))
                {
                  v199 = "bad DNL height";
                  goto LABEL_1271;
                }

                goto LABEL_368;
              }

              if (v196 == 217)
              {
                v474 = *v192;
                if (!*(v194 + 524))
                {
                  goto LABEL_899;
                }

                v5 = v806;
                v7 = v798;
                if (v474[2] >= 1)
                {
                  v450 = 0;
                  do
                  {
                    v451 = &v195[12 * v450];
                    v452 = (*(v451 + 8) + 7) >> 3;
                    if (v452 >= 1)
                    {
                      v453 = 0;
                      v454 = ((*(v451 + 7) + 7) >> 3);
                      do
                      {
                        if (v454 >= 1)
                        {
                          for (k = 0; k != v454; ++k)
                          {
                            v456 = 0;
                            v457 = &v451[10][32 * (k + *(v451 + 22) * v453)];
                            v458 = &v197[16 * *(v451 + 3)];
                            do
                            {
                              *(v457 + v456) *= *(v458 + v456);
                              v456 += 2;
                            }

                            while (v456 != 128);
                            (v192[2318])(&v451[6][2 * k] + 8 * v453 * *(v451 + 9));
                          }
                        }

                        ++v453;
                      }

                      while (v453 != v452);
                      v474 = *v192;
                      v5 = v806;
                      v7 = v798;
                    }

                    ++v450;
                  }

                  while (v450 < v474[2]);
                }
              }

              else
              {
                if (sub_29AB4EEAC(v192, v196))
                {
                  goto LABEL_368;
                }

                v474 = *v192;
LABEL_899:
                v5 = v806;
                v7 = v798;
              }

              v475 = v474[2];
              if (v475 <= 2)
              {
                v476 = 1;
              }

              else
              {
                v476 = 3;
              }

              v765 = v476;
              if (v475 != 3)
              {
                if (v475 > 0)
                {
                  goto LABEL_919;
                }

                sub_29AB50308(v192, v475);
                v15 = 0;
                v3 = v792;
                goto LABEL_1274;
              }

              if (*(v192 + 4628) == 3)
              {
                v477 = 1;
                goto LABEL_1174;
              }

              if (*(v192 + 4627))
              {
LABEL_919:
                v747 = 0;
              }

              else
              {
                v477 = *(v192 + 4626) == 0;
LABEL_1174:
                v747 = v477;
              }

              v817 = 0u;
              v818 = 0u;
              v603 = *v474;
              v604 = *v474 - 1;
              v605 = &v822;
              v606 = 18084;
              v607 = 2269;
              v757 = v475;
              v608 = v475;
              while (2)
              {
                v609 = malloc(v603 + 3);
                v192[v607] = v609;
                if (v609)
                {
                  v610 = *(v192 + 4514) / *(v192 + v606);
                  v611 = *(v192 + 4515) / *(v192 + v606 + 4);
                  *v605 = v610;
                  *(v605 + 1) = v611;
                  *(v605 + 2) = (v604 + v610) / v610;
                  *(v605 + 3) = v611 >> 1;
                  *(v605 + 4) = 0;
                  v612 = v192[v607 - 3];
                  *(v605 - 2) = v612;
                  *(v605 - 1) = v612;
                  if (v610 == 2)
                  {
                    v614 = sub_29AB5C874;
                    if (v611 == 1)
                    {
                      goto LABEL_1188;
                    }

                    if (v611 == 2)
                    {
                      v614 = v192[2320];
                      goto LABEL_1188;
                    }
                  }

                  else if (v610 == 1)
                  {
                    v613 = sub_29AB5C92C;
                    if (v611 == 2)
                    {
                      v613 = sub_29AB5C83C;
                    }

                    v614 = sub_29AB5C834;
                    if (v611 != 1)
                    {
                      v614 = v613;
                    }

LABEL_1188:
                    *(v605 - 3) = v614;
                    v606 += 96;
                    v607 += 12;
                    v605 += 6;
                    if (--v608)
                    {
                      continue;
                    }

                    v615 = v474[1];
                    v616 = v765;
                    v617 = sub_29AB5037C(v765, v603, v615, 1);
                    v15 = v617;
                    v3 = v792;
                    v5 = v806;
                    if (v617)
                    {
                      if (v615)
                      {
                        v788 = 0;
                        v618 = 0;
                        v739 = v617 + 1;
                        v743 = v617 + 3;
                        while (1)
                        {
                          v619 = 0;
                          v782 = v618;
                          v772 = *v474;
                          v776 = v618 * v616 * *v474;
                          v620 = &v817;
                          v621 = (v192 + 2264);
                          do
                          {
                            v622 = &v820 + v619;
                            v623 = (&v820 + v619 + 16);
                            v624 = v824[v619 / 4];
                            v625 = *(&v822 + v619 + 4);
                            if (v624 >= v625 >> 1)
                            {
                              v626 = &v820 + v619 + 16;
                            }

                            else
                            {
                              v626 = &v820 + v619 + 8;
                            }

                            v627 = *v626;
                            if (v624 >= v625 >> 1)
                            {
                              v628 = &v820 + v619 + 8;
                            }

                            else
                            {
                              v628 = &v820 + v619 + 16;
                            }

                            *v620 = (*(&v820 + v619))(v621[5], v627, *v628, v824[v619 / 4 - 1], *(&v822 + v619));
                            *(v622 + 9) = v624 + 1;
                            if (v624 + 1 >= v625)
                            {
                              v629 = *v623;
                              *(&v820 + v619 + 8) = *v623;
                              v630 = *(v622 + 10) + 1;
                              *(v622 + 9) = 0;
                              *(v622 + 10) = v630;
                              if (v630 < *v621)
                              {
                                *v623 = v629 + *(v621 + 1);
                              }
                            }

                            v619 += 48;
                            v620 = (v620 + 8);
                            v621 += 12;
                          }

                          while (48 * v757 != v619);
                          if (v757 >= 3)
                          {
                            break;
                          }

                          v474 = *v192;
                          v7 = v798;
                          if (!v747)
                          {
                            v3 = v792;
                            v616 = v765;
                            v642 = v788;
                            v646 = v782;
                            if (v474[2] == 4)
                            {
                              v647 = *(v192 + 4627);
                              if (v647 == 2)
                              {
                                if (*v474)
                                {
                                  v669 = 0;
                                  v670 = v817;
                                  v671 = *(&v818 + 1);
                                  v672 = &v739[v772 * v788];
                                  do
                                  {
                                    v673 = *(v671 + v669) * (*(v670 + v669) ^ 0xFF) + 128;
                                    *(v672 - 1) = (v673 + (v673 >> 8)) >> 8;
                                    *v672 = -1;
                                    ++v669;
                                    v672 += v765;
                                  }

                                  while (v669 < *v474);
                                }

                                goto LABEL_1251;
                              }

                              if (!v647)
                              {
                                if (*v474)
                                {
                                  v648 = 0;
                                  v649 = v817;
                                  v650 = v818;
                                  v651 = &v739[v772 * v788];
                                  do
                                  {
                                    v652 = *(*(&v650 + 1) + v648);
                                    v653 = *(v649 + v648) * v652 + 128;
                                    v654 = *(*(&v649 + 1) + v648) * v652 + 128;
                                    *(v651 - 1) = (77 * ((v653 + (v653 >> 8)) >> 8) + 150 * ((v654 + (v654 >> 8)) >> 8) + 29 * ((*(v650 + v648) * v652 + 128 + ((*(v650 + v648) * v652 + 128) >> 8)) >> 8)) >> 8;
                                    *v651 = -1;
                                    ++v648;
                                    v651 += v765;
                                  }

                                  while (v648 < *v474);
                                }

LABEL_1251:
                                v5 = v806;
                                goto LABEL_1241;
                              }
                            }

                            if (*v474)
                            {
                              v659 = 0;
                              v660 = v817;
                              v5 = v806;
                              do
                              {
                                v15[v772 * v788 + v659] = *(v660 + v659);
                                ++v659;
                              }

                              while (v659 < *v474);
                              goto LABEL_1241;
                            }

                            goto LABEL_1251;
                          }

                          v3 = v792;
                          v642 = v788;
                          if (*v474)
                          {
                            v643 = 0;
                            v644 = v817;
                            v645 = v818;
                            v5 = v806;
                            v616 = v765;
                            v646 = v782;
                            do
                            {
                              v15[v772 * v788 + v643] = (77 * *(v644 + v643) + 150 * *(*(&v644 + 1) + v643) + 29 * *(v645 + v643)) >> 8;
                              ++v643;
                            }

                            while (v643 < *v474);
                            goto LABEL_1241;
                          }

                          v5 = v806;
                          v616 = v765;
LABEL_1240:
                          v646 = v782;
LABEL_1241:
                          v618 = v646 + 1;
                          v788 = v642 + v616;
                          if (v618 >= v474[1])
                          {
                            goto LABEL_1253;
                          }
                        }

                        v631 = &v15[v776];
                        v632 = v817;
                        v474 = *v192;
                        v633 = *(*v192 + 8);
                        v7 = v798;
                        if (v633 == 3)
                        {
                          v3 = v792;
                          v616 = v765;
                          if (!v747)
                          {
                            goto LABEL_1237;
                          }

                          if (!*v474)
                          {
                            goto LABEL_1238;
                          }

                          v655 = 0;
                          v656 = *(&v817 + 1);
                          v657 = v818;
                          v5 = v806;
                          do
                          {
                            *v631 = *(v632 + v655);
                            v631[1] = *(v656 + v655);
                            v658 = *(v657 + v655);
                            v631[3] = -1;
                            v631 += 3;
                            *(v631 - 1) = v658;
                            ++v655;
                          }

                          while (v655 < *v474);
                        }

                        else
                        {
                          v3 = v792;
                          v616 = v765;
                          if (v633 == 4)
                          {
                            v634 = *(v192 + 4627);
                            if (v634 != 2)
                            {
                              if (!v634)
                              {
                                if (*v474)
                                {
                                  v635 = 0;
                                  v636 = v818;
                                  v637 = *(&v817 + 1);
                                  do
                                  {
                                    v638 = *(*(&v636 + 1) + v635);
                                    v639 = *(v632 + v635) * v638 + 128;
                                    *v631 = (v639 + (v639 >> 8)) >> 8;
                                    v640 = *(v637 + v635) * v638 + 128;
                                    v631[1] = (v640 + (v640 >> 8)) >> 8;
                                    v641 = *(v636 + v635);
                                    v631[3] = -1;
                                    v631 += 3;
                                    *(v631 - 1) = (v641 * v638 + 128 + ((v641 * v638 + 128) >> 8)) >> 8;
                                    ++v635;
                                  }

                                  while (v635 < *v474);
                                }

                                goto LABEL_1238;
                              }

LABEL_1237:
                              (v192[2319])(&v15[v776], v817, *(&v817 + 1), v818, *v474, 3);
                              v474 = *v192;
                              goto LABEL_1238;
                            }

                            (v192[2319])(&v15[v776], v817, *(&v817 + 1), v818, *v474, 3);
                            v474 = *v192;
                            if (**v192)
                            {
                              v664 = 0;
                              v665 = *(&v818 + 1);
                              do
                              {
                                v666 = *(v665 + v664);
                                v667 = (*v631 ^ 0xFF) * v666 + 128;
                                *v631 = (v667 + (v667 >> 8)) >> 8;
                                v668 = (v631[1] ^ 0xFF) * v666 + 128;
                                v631[1] = (v668 + (v668 >> 8)) >> 8;
                                v631[2] = ((v631[2] ^ 0xFF) * v666 + 128 + (((v631[2] ^ 0xFFu) * v666 + 128) >> 8)) >> 8;
                                v631 += 3;
                                ++v664;
                              }

                              while (v664 < *v474);
                            }
                          }

                          else if (*v474)
                          {
                            v661 = 0;
                            v642 = v788;
                            v662 = &v743[v772 * v788];
                            v5 = v806;
                            do
                            {
                              v663 = *(v632 + v661);
                              *(v662 - 1) = v663;
                              *(v662 - 2) = v663;
                              *(v662 - 3) = v663;
                              *v662 = -1;
                              v662 += 3;
                              ++v661;
                            }

                            while (v661 < *v474);
                            goto LABEL_1240;
                          }

LABEL_1238:
                          v5 = v806;
                        }

                        v642 = v788;
                        goto LABEL_1240;
                      }

LABEL_1253:
                      sub_29AB50308(v192, v474[2]);
                      v674 = *v192;
                      *v7 = **v192;
                      *v5 = *(v674 + 4);
                      if (v3)
                      {
                        if (*(v674 + 8) < 3)
                        {
                          v675 = 1;
                        }

                        else
                        {
                          v675 = 3;
                        }

                        *v3 = v675;
                      }
                    }

                    else
                    {
                      sub_29AB50308(v192, v474[2]);
                      *off_2A1B71BE0(off_2A1B71BE0) = "outofmem";
                    }

LABEL_1274:
                    v18 = v192;
                    goto LABEL_12;
                  }

                  v614 = sub_29AB5C92C;
                  goto LABEL_1188;
                }

                break;
              }

              sub_29AB50308(v192, v474[2]);
              v15 = 0;
              *off_2A1B71BE0(off_2A1B71BE0) = "outofmem";
              v3 = v792;
LABEL_1273:
              v5 = v806;
              goto LABEL_1274;
            }

            v775 = v198;
            v202 = sub_29AB4FF24(*v192);
            v203 = *v192;
            v204 = *(*v192 + 192);
            if (v204 >= *(*v192 + 200))
            {
              if (!*(v203 + 48))
              {
                *(v194 + 533) = 0;
                v199 = "bad SOS component count";
                goto LABEL_1271;
              }

              v206 = (v203 + 56);
              v207 = (*(v203 + 16))(*(v203 + 40), v203 + 56, *(v203 + 52));
              *(v203 + 184) += *(v203 + 192) - *(v203 + 208);
              if (v207)
              {
                v208 = &v206[v207];
                v205 = *v206;
              }

              else
              {
                v205 = 0;
                *(v203 + 48) = 0;
                v208 = (v203 + 57);
                *(v203 + 56) = 0;
              }

              *(v203 + 192) = v203 + 57;
              *(v203 + 200) = v208;
            }

            else
            {
              *(v203 + 192) = v204 + 1;
              v205 = *v204;
            }

            *(v194 + 533) = v205;
            if ((v205 - 5) < 0xFFFFFFFC || (v209 = *v192, *(*v192 + 8) < v205))
            {
LABEL_1271:
              *off_2A1B71BE0(off_2A1B71BE0) = v199;
              goto LABEL_1272;
            }

            if (v202 != 2 * v205 + 6)
            {
              v199 = "bad SOS len";
              goto LABEL_1271;
            }

            v210 = 0;
            do
            {
              v211 = *(v209 + 192);
              v212 = *(v209 + 200);
              if (v211 >= v212)
              {
                if (*(v209 + 48))
                {
                  v214 = (v209 + 56);
                  v215 = (*(v209 + 16))(*(v209 + 40), v209 + 56, *(v209 + 52));
                  *(v209 + 184) += *(v209 + 192) - *(v209 + 208);
                  if (v215)
                  {
                    v216 = &v214[v215];
                    v213 = *v214;
                  }

                  else
                  {
                    v213 = 0;
                    *(v209 + 48) = 0;
                    v216 = (v209 + 57);
                    *(v209 + 56) = 0;
                  }

                  *(v209 + 192) = v209 + 57;
                  *(v209 + 200) = v216;
                  v209 = *v192;
                  v211 = *(*v192 + 192);
                  v212 = *(*v192 + 200);
                }

                else
                {
                  v213 = 0;
                }
              }

              else
              {
                *(v209 + 192) = v211 + 1;
                v213 = *v211++;
              }

              if (v211 >= v212)
              {
                v217 = *(v209 + 48);
                if (v217)
                {
                  v218 = (v209 + 56);
                  v219 = (*(v209 + 16))(*(v209 + 40), v209 + 56, *(v209 + 52));
                  *(v209 + 184) += *(v209 + 192) - *(v209 + 208);
                  if (v219)
                  {
                    v220 = &v218[v219];
                    v217 = *v218;
                  }

                  else
                  {
                    v217 = 0;
                    *(v209 + 48) = 0;
                    v220 = (v209 + 57);
                    *(v209 + 56) = 0;
                  }

                  *(v209 + 192) = v209 + 57;
                  *(v209 + 200) = v220;
                  v209 = *v192;
                }
              }

              else
              {
                *(v209 + 192) = v211 + 1;
                v217 = *v211;
              }

              v221 = *(v209 + 8);
              if (v221 < 1)
              {
                v222 = 0;
              }

              else
              {
                v222 = 0;
                v223 = (v192 + 2260);
                while (1)
                {
                  v224 = *v223;
                  v223 += 24;
                  if (v224 == v213)
                  {
                    break;
                  }

                  if (v221 == ++v222)
                  {
                    goto LABEL_1272;
                  }
                }

                v222 = v222;
              }

              if (v222 == v221)
              {
                goto LABEL_1272;
              }

              v225 = &v195[12 * v222];
              *(v225 + 4) = v217 >> 4;
              if (v217 > 0x3F)
              {
                v199 = "bad DC huff";
                goto LABEL_1271;
              }

              v226 = v217 & 0xF;
              *(v225 + 5) = v226;
              if (v226 > 3)
              {
                v199 = "bad AC huff";
                goto LABEL_1271;
              }

              v812[v210++] = v222;
            }

            while (v210 < *(v192 + 4629));
            v227 = *(v209 + 192);
            v228 = *(v209 + 200);
            if (v227 >= v228)
            {
              v229 = *(v209 + 48);
              v199 = "bad SOS";
              if (v229)
              {
                v230 = (v209 + 56);
                v231 = (*(v209 + 16))(*(v209 + 40), v209 + 56, *(v209 + 52));
                *(v209 + 184) += *(v209 + 192) - *(v209 + 208);
                if (v231)
                {
                  v232 = &v230[v231];
                  v229 = *v230;
                }

                else
                {
                  v229 = 0;
                  *(v209 + 48) = 0;
                  v232 = (v209 + 57);
                  *(v209 + 56) = 0;
                }

                *(v209 + 192) = v209 + 57;
                *(v209 + 200) = v232;
                v209 = *v192;
                v227 = *(*v192 + 192);
                v228 = *(*v192 + 200);
              }
            }

            else
            {
              *(v209 + 192) = v227 + 1;
              v229 = *v227++;
              v199 = "bad SOS";
            }

            *(v192 + 4621) = v229;
            if (v227 >= v228)
            {
              v233 = *(v209 + 48);
              if (v233)
              {
                v234 = (v209 + 56);
                v235 = (*(v209 + 16))(*(v209 + 40), v209 + 56, *(v209 + 52));
                *(v209 + 184) += *(v209 + 192) - *(v209 + 208);
                if (v235)
                {
                  v236 = &v234[v235];
                  v233 = *v234;
                }

                else
                {
                  v233 = 0;
                  *(v209 + 48) = 0;
                  v236 = (v209 + 57);
                  *(v209 + 56) = 0;
                }

                *(v209 + 192) = v209 + 57;
                *(v209 + 200) = v236;
                v209 = *v192;
                v227 = *(*v192 + 192);
                v228 = *(*v192 + 200);
              }
            }

            else
            {
              *(v209 + 192) = v227 + 1;
              v233 = *v227++;
            }

            *(v192 + 4622) = v233;
            if (v227 >= v228)
            {
              v237 = *(v209 + 48);
              if (v237)
              {
                v238 = (v209 + 56);
                v239 = (*(v209 + 16))(*(v209 + 40), v209 + 56, *(v209 + 52));
                *(v209 + 184) += *(v209 + 192) - *(v209 + 208);
                if (v239)
                {
                  v240 = &v238[v239];
                  v237 = *v238;
                }

                else
                {
                  v237 = 0;
                  *(v209 + 48) = 0;
                  v240 = (v209 + 57);
                  *(v209 + 56) = 0;
                }

                *(v209 + 192) = v209 + 57;
                *(v209 + 200) = v240;
              }
            }

            else
            {
              *(v209 + 192) = v227 + 1;
              v237 = *v227;
            }

            *(v192 + 4623) = v237 >> 4;
            *(v192 + 4624) = v237 & 0xF;
            v241 = *(v192 + 4620);
            v242 = *(v192 + 4621);
            if (v241)
            {
              if (v242 > 63)
              {
                goto LABEL_1271;
              }

              v243 = *(v192 + 4622);
              if (v243 > 63 || v242 > v243 || v237 > 0xDF || (v237 & 0xF) > 0xD)
              {
                goto LABEL_1271;
              }
            }

            else
            {
              if (v242 || v237 > 0xF || (v237 & 0xF) != 0)
              {
                goto LABEL_1271;
              }

              *(v192 + 4622) = 63;
            }

            v192[2308] = 0;
            *(v192 + 4619) = 0;
            *(v192 + 4598) = 0;
            *(v192 + 4574) = 0;
            *(v192 + 4550) = 0;
            *(v192 + 4526) = 0;
            *(v192 + 18472) = -1;
            v244 = *(v192 + 4634);
            if (!v244)
            {
              v244 = 0x7FFFFFFF;
            }

            *(v192 + 4635) = v244;
            *(v192 + 4625) = 0;
            v245 = *(v192 + 4629);
            if (v241)
            {
              if (v245 != 1)
              {
                v327 = *(v192 + 4517);
                if (v327 < 1)
                {
                  goto LABEL_642;
                }

                v328 = 0;
                v329 = *(v192 + 4516);
                while (1)
                {
                  if (v329 >= 1)
                  {
                    v330 = 0;
                    v331 = v192 + 2048;
                    do
                    {
                      v332 = v331[533];
                      if (v332 >= 1)
                      {
                        for (m = 0; m < v332; ++m)
                        {
                          v334 = v812[m];
                          v335 = &v195[12 * v334];
                          v336 = *(v335 + 2);
                          if (v336 >= 1)
                          {
                            v770 = m;
                            v337 = 0;
                            v338 = *(v335 + 1);
                            do
                            {
                              if (v338 >= 1)
                              {
                                for (n = 0; n < v338; ++n)
                                {
                                  if (!sub_29AB5D200(v192, &v335[10][32 * (n + *(v335 + 22) * (v337 + v328 * *(v335 + 2)) + v330 * v338)], &v193[1680 * *(v335 + 4)], v334))
                                  {
                                    goto LABEL_1272;
                                  }

                                  v338 = *(v335 + 1);
                                }

                                v336 = *(v335 + 2);
                              }

                              ++v337;
                            }

                            while (v337 < v336);
                            v332 = *(v192 + 4629);
                            m = v770;
                          }
                        }

                        v331 = v192 + 2048;
                        v244 = *(v192 + 4635);
                      }

                      v171 = __OFSUB__(v244--, 1);
                      v331[539] = v244;
                      if ((v244 < 0) ^ v171 | (v244 == 0))
                      {
                        if (v331[521] <= 23)
                        {
                          sub_29AB5D044(v192);
                        }

                        v315 = *(v192 + 18472);
                        if ((v315 & 0xF8) != 0xD0)
                        {
                          v194 = (v192 + 2048);
LABEL_643:
                          v199 = "bad SOS component count";
                          v198 = v775;
                          if (v315 != 255)
                          {
                            goto LABEL_671;
                          }

                          while (2)
                          {
                            v352 = *v192;
                            if (!*(*v192 + 16))
                            {
                              goto LABEL_647;
                            }

                            if ((*(v352 + 32))(*(v352 + 40)))
                            {
                              if (*(v352 + 48))
                              {
LABEL_647:
                                if (*(v352 + 192) < *(v352 + 200))
                                {
                                  goto LABEL_648;
                                }
                              }

LABEL_669:
                              LOBYTE(v355) = -1;
LABEL_670:
                              *(v194 + 2088) = v355;
                              v198 = v775;
LABEL_671:
                              v196 = sub_29AB4ED4C(v192);
                              if ((v196 & 0xF8) == 0xD0)
                              {
LABEL_368:
                                v196 = sub_29AB4ED4C(v192);
                              }

                              goto LABEL_361;
                            }

LABEL_648:
                            v353 = *v192;
                            v354 = *(*v192 + 192);
                            if (v354 >= *(*v192 + 200))
                            {
                              v355 = *(v353 + 48);
                              if (v355)
                              {
                                v356 = (v353 + 56);
                                v357 = (*(v353 + 16))(*(v353 + 40), v353 + 56, *(v353 + 52));
                                *(v353 + 184) += *(v353 + 192) - *(v353 + 208);
                                if (v357)
                                {
                                  v358 = &v356[v357];
                                  v355 = *v356;
                                }

                                else
                                {
                                  v355 = 0;
                                  *(v353 + 48) = 0;
                                  v358 = (v353 + 57);
                                  *(v353 + 56) = 0;
                                }

                                *(v353 + 192) = v353 + 57;
                                *(v353 + 200) = v358;
                                v194 = (v192 + 2048);
                                v199 = "bad SOS component count";
                              }
                            }

                            else
                            {
                              *(v353 + 192) = v354 + 1;
                              v355 = *v354;
                            }

LABEL_655:
                            if (v355 != 255)
                            {
                              continue;
                            }

                            break;
                          }

                          v359 = *v192;
                          if (*(*v192 + 16))
                          {
                            if ((*(v359 + 32))(*(v359 + 40)))
                            {
                              if (!*(v359 + 48))
                              {
                                goto LABEL_669;
                              }

                              goto LABEL_659;
                            }
                          }

                          else
                          {
LABEL_659:
                            if (*(v359 + 192) >= *(v359 + 200))
                            {
                              goto LABEL_669;
                            }
                          }

                          v360 = *v192;
                          v361 = *(*v192 + 192);
                          if (v361 >= *(*v192 + 200))
                          {
                            v355 = *(v360 + 48);
                            if (v355)
                            {
                              v362 = (v360 + 56);
                              v363 = (*(v360 + 16))(*(v360 + 40), v360 + 56, *(v360 + 52));
                              *(v360 + 184) += *(v360 + 192) - *(v360 + 208);
                              if (v363)
                              {
                                v364 = &v362[v363];
                                v355 = *v362;
                              }

                              else
                              {
                                v355 = 0;
                                *(v360 + 48) = 0;
                                v364 = (v360 + 57);
                                *(v360 + 56) = 0;
                              }

                              *(v360 + 192) = v360 + 57;
                              *(v360 + 200) = v364;
                            }
                          }

                          else
                          {
                            *(v360 + 192) = v361 + 1;
                            v355 = *v361;
                          }

                          if ((v355 - 1) <= 0xFD)
                          {
                            goto LABEL_670;
                          }

                          goto LABEL_655;
                        }

                        v331 = v192 + 2048;
                        v192[2308] = 0;
                        *(v192 + 4619) = 0;
                        *(v192 + 4598) = 0;
                        *(v192 + 4574) = 0;
                        *(v192 + 4550) = 0;
                        *(v192 + 4526) = 0;
                        *(v192 + 18472) = -1;
                        v244 = *(v192 + 4634);
                        if (!v244)
                        {
                          v244 = 0x7FFFFFFF;
                        }

                        *(v192 + 4635) = v244;
                        *(v192 + 4625) = 0;
                      }

                      ++v330;
                      v329 = v331[420];
                    }

                    while (v330 < v329);
                    v327 = v331[421];
                  }

                  if (++v328 >= v327)
                  {
LABEL_642:
                    v194 = (v192 + 2048);
                    v315 = *(v192 + 18472);
                    goto LABEL_643;
                  }
                }
              }

              v730 = *v812;
              v753 = &v195[12 * *v812];
              v727 = (*(v753 + 8) + 7) >> 3;
              if (v727 < 1)
              {
                goto LABEL_642;
              }

              v744 = 0;
              v737 = (*(v753 + 7) + 7) >> 3;
LABEL_444:
              v194 = (v192 + 2048);
              v246 = v753;
              if (v737 < 1)
              {
                goto LABEL_562;
              }

              v247 = 0;
LABEL_446:
              v248 = &v246[10][32 * (v247 + *(v246 + 22) * v744)];
              LODWORD(v249) = *(v194 + 525);
              v761 = v247;
              if (!v249)
              {
                if (sub_29AB5D200(v192, v248, &v193[1680 * *(v246 + 4)], v730))
                {
                  goto LABEL_545;
                }

                goto LABEL_1272;
              }

              v250 = *(v246 + 5);
              v767 = &v786[210 * v250];
              v251 = *(v194 + 528);
              v252 = *(v194 + 529);
              if (!*(v194 + 527))
              {
                if (v252)
                {
LABEL_464:
                  *(v194 + 529) = v252 - 1;
                  goto LABEL_545;
                }

                v287 = *(v194 + 521);
                v734 = &v775[1680 * v250];
                v288 = &v780[128 * v250];
                while (1)
                {
                  if (v287 <= 15)
                  {
                    sub_29AB5D044(v192);
                  }

                  v289 = (v192 + 2048);
                  v290 = *(v192 + 4616);
                  v291 = v290 >> 23;
                  v292 = *(v288 + (v290 >> 23));
                  if (*(v288 + (v290 >> 23)))
                  {
                    v293 = *(v192 + 4617);
                    v171 = __OFSUB__(v293, v292 & 0xF);
                    v287 = v293 - (v292 & 0xF);
                    if (v287 < 0 != v171)
                    {
                      goto LABEL_1270;
                    }

                    v294 = (v292 >> 4) + v249;
                    *(v192 + 4616) = v290 << (v292 & 0xF);
                    *(v192 + 4617) = v287;
                    LODWORD(v249) = v294 + 1;
                    *(v248 + byte_29B6C3784[v294]) = v292 >> 8 << v251;
                  }

                  else
                  {
                    if (*(v192 + 4617) <= 15)
                    {
                      sub_29AB5D044(v192);
                      v290 = *(v192 + 4616);
                      v291 = v290 >> 23;
                    }

                    v295 = *(v767 + v291);
                    if (v295 == 255)
                    {
                      v298 = 0;
                      v299 = v734;
                      do
                      {
                        v300 = *v299++;
                        ++v298;
                      }

                      while (WORD1(v290) >= v300);
                      v301 = *(v192 + 4617);
                      if (v298 == 8)
                      {
                        *(v192 + 4617) = v301 - 16;
LABEL_1270:
                        v199 = "bad huffman code";
                        goto LABEL_1271;
                      }

                      v302 = v298 + 9;
                      if (v301 < v298 + 9)
                      {
                        goto LABEL_1270;
                      }

                      v295 = (dword_29B6C3BF4[v298 + 9] & (v290 >> (23 - v298))) + v299[17];
                      if (v295 > 0xFF)
                      {
                        goto LABEL_1270;
                      }

                      v287 = v301 - v298 - 9;
                      *(v192 + 4617) = v287;
                      *(v192 + 4616) = v290 << v302;
                    }

                    else
                    {
                      v296 = *(v767 + v295 + 1280);
                      v297 = *(v192 + 4617);
                      v171 = __OFSUB__(v297, v296);
                      v287 = v297 - v296;
                      if (v287 < 0 != v171)
                      {
                        goto LABEL_1270;
                      }

                      *(v192 + 4616) = v290 << v296;
                      *(v192 + 4617) = v287;
                    }

                    v303 = *(v767 + v295 + 1024);
                    v304 = v303 >> 4;
                    v305 = v303 & 0xF;
                    if ((v303 & 0xF) != 0)
                    {
                      v249 = v304 + v249;
                      v306 = byte_29B6C3784[v249];
                      if (v287 < v305)
                      {
                        sub_29AB5D044(v192);
                        v287 = *(v192 + 4617);
                      }

                      v307 = v287 - v305;
                      if (v287 >= v305)
                      {
                        v309 = *(v192 + 4616);
                        v310 = __ROR4__(v309, -v305);
                        v311 = dword_29B6C3BF4[v305];
                        *(v192 + 4616) = v310 & ~v311;
                        v312 = v310 & v311;
                        *(v192 + 4617) = v307;
                        if (v309 >= 0)
                        {
                          v313 = dword_29B6C3C38[v305];
                        }

                        else
                        {
                          v313 = 0;
                        }

                        v308 = v313 + v312;
                        v287 = v307;
                      }

                      else
                      {
                        v308 = 0;
                      }

                      LODWORD(v249) = v249 + 1;
                      *(v248 + v306) = v308 << v251;
                    }

                    else
                    {
                      if (v303 <= 0xEF)
                      {
                        v252 = 1 << v304;
                        v194 = (v192 + 2048);
                        *(v192 + 4625) = 1 << v304;
                        if (v303 >= 0x10)
                        {
                          if (v287 < v304)
                          {
                            sub_29AB5D044(v192);
                            v287 = *(v192 + 4617);
                          }

                          v171 = __OFSUB__(v287, v304);
                          v317 = v287 - v304;
                          if (v317 < 0 != v171)
                          {
                            v320 = 0;
                          }

                          else
                          {
                            v318 = __ROR4__(*(v192 + 4616), -v304);
                            v319 = dword_29B6C3BF4[v304];
                            *(v192 + 4616) = v318 & ~v319;
                            v320 = v318 & v319;
                            *(v192 + 4617) = v317;
                          }

                          v194 = (v192 + 2048);
                          v252 = *(v192 + 4625) + v320;
                        }

                        goto LABEL_464;
                      }

                      LODWORD(v249) = v249 + 16;
                    }

                    v289 = (v192 + 2048);
                  }

                  if (v249 > *(v289 + 526))
                  {
                    goto LABEL_545;
                  }
                }
              }

              if (v252)
              {
                *(v194 + 529) = v252 - 1;
                if (v249 <= *(v194 + 526))
                {
                  v253 = v249;
                  v254 = 0x10000 << v251;
                  v255 = 0x10000 << v251 >> 16;
                  v768 = HIWORD(v254);
                  v256 = -(v254 >> 16);
                  do
                  {
                    v257 = byte_29B6C3784[v253];
                    if (*(v248 + v257))
                    {
                      v258 = *(v192 + 4617);
                      if (v258 > 0 || (sub_29AB5D044(v192), v258 = *(v192 + 4617), v258 >= 1))
                      {
                        v259 = *(v192 + 4616);
                        *(v192 + 4616) = 2 * v259;
                        *(v192 + 4617) = v258 - 1;
                        if (v259 < 0)
                        {
                          v260 = *(v248 + v257);
                          if ((v255 & v260) == 0)
                          {
                            v261 = v768;
                            if (v260 <= 0)
                            {
                              v261 = v256;
                            }

                            *(v248 + v257) = v261 + v260;
                          }
                        }
                      }
                    }
                  }

                  while (v253++ < *(v192 + 4622));
                }

                goto LABEL_545;
              }

              v263 = 0x10000 << v251 >> 16;
              v740 = 0x10000 << v251;
              v264 = *(v194 + 521);
              v732 = &v775[1680 * v250];
LABEL_466:
              if (v264 <= 15)
              {
                sub_29AB5D044(v192);
              }

              v265 = *(v192 + 4616);
              v266 = *(v767 + (v265 >> 23));
              if (v266 == 255)
              {
                v270 = 0;
                v271 = v732;
                do
                {
                  v272 = *v271++;
                  ++v270;
                }

                while (WORD1(v265) >= v272);
                v273 = *(v192 + 4617);
                if (v270 == 8)
                {
                  *(v192 + 4617) = v273 - 16;
                  goto LABEL_1270;
                }

                v274 = v270 + 9;
                if (v273 < v270 + 9)
                {
                  goto LABEL_1270;
                }

                v266 = (dword_29B6C3BF4[v270 + 9] & (v265 >> (23 - v270))) + v271[17];
                if (v266 > 0xFF)
                {
                  goto LABEL_1270;
                }

                v264 = v273 - v270 - 9;
                *(v192 + 4617) = v264;
                v269 = v265 << v274;
                *(v192 + 4616) = v269;
              }

              else
              {
                v267 = *(v767 + v266 + 1280);
                v268 = *(v192 + 4617);
                v171 = __OFSUB__(v268, v267);
                v264 = v268 - v267;
                if (v264 < 0 != v171)
                {
                  goto LABEL_1270;
                }

                v269 = v265 << v267;
                *(v192 + 4616) = v269;
                *(v192 + 4617) = v264;
              }

              v275 = *(v767 + v266 + 1024);
              v276 = v275 >> 4;
              if ((v275 & 0xF) != 1)
              {
                if ((v275 & 0xF) != 0)
                {
                  goto LABEL_1270;
                }

                if (v275 > 0xEF)
                {
                  v277 = 0;
                  LODWORD(v276) = 15;
                }

                else
                {
                  *(v192 + 4625) = ~(-1 << v276);
                  if (v275 >= 0x10)
                  {
                    if (v264 < v276)
                    {
                      sub_29AB5D044(v192);
                      v264 = *(v192 + 4617);
                    }

                    v278 = v264 - v276;
                    if (v264 >= v276)
                    {
                      v280 = dword_29B6C3BF4[v276];
                      v281 = __ROR4__(*(v192 + 4616), -v276);
                      *(v192 + 4616) = v281 & ~v280;
                      v279 = v281 & v280;
                      *(v192 + 4617) = v278;
                      v264 = v278;
                    }

                    else
                    {
                      v279 = 0;
                    }

                    v277 = 0;
                    *(v192 + 4625) += v279;
                  }

                  else
                  {
                    v277 = 0;
                  }

                  LODWORD(v276) = 64;
                }

                goto LABEL_496;
              }

              if (v264 > 0)
              {
LABEL_485:
                *(v192 + 4616) = 2 * v269;
                *(v192 + 4617) = --v264;
                if ((v269 & 0x80000000) == 0)
                {
                  goto LABEL_486;
                }

                v277 = v263;
              }

              else
              {
                sub_29AB5D044(v192);
                v264 = *(v192 + 4617);
                if (v264 >= 1)
                {
                  v269 = *(v192 + 4616);
                  goto LABEL_485;
                }

LABEL_486:
                v277 = -v263;
              }

LABEL_496:
              LODWORD(v282) = *(v192 + 4622);
              if (v249 > v282)
              {
                goto LABEL_512;
              }

              v249 = v249;
              while (1)
              {
                v283 = byte_29B6C3784[v249];
                if (*(v248 + v283))
                {
                  if (v264 > 0 || (sub_29AB5D044(v192), v264 = *(v192 + 4617), v264 >= 1))
                  {
                    v284 = *(v192 + 4616);
                    *(v192 + 4616) = 2 * v284;
                    *(v192 + 4617) = --v264;
                    if (v284 < 0)
                    {
                      v285 = *(v248 + v283);
                      if ((v263 & v285) == 0)
                      {
                        if (v285 < 1)
                        {
                          v286 = v285 - HIWORD(v740);
                        }

                        else
                        {
                          v286 = v285 + HIWORD(v740);
                        }

                        *(v248 + v283) = v286;
                      }
                    }
                  }
                }

                else
                {
                  if (!v276)
                  {
                    LODWORD(v249) = v249 + 1;
                    *(v248 + v283) = v277;
LABEL_512:
                    if (v249 > v282)
                    {
LABEL_545:
                      v194 = (v192 + 2048);
                      v314 = *(v192 + 4635);
                      v171 = __OFSUB__(v314--, 1);
                      *(v192 + 4635) = v314;
                      if (!((v314 < 0) ^ v171 | (v314 == 0)))
                      {
                        goto LABEL_553;
                      }

                      if (*(v192 + 4617) <= 23)
                      {
                        sub_29AB5D044(v192);
                      }

                      v315 = *(v192 + 18472);
                      if ((v315 & 0xF8) != 0xD0)
                      {
                        goto LABEL_643;
                      }

                      v192[2308] = 0;
                      *(v192 + 4619) = 0;
                      *(v192 + 4598) = 0;
                      *(v192 + 4574) = 0;
                      *(v192 + 4550) = 0;
                      *(v192 + 4526) = 0;
                      *(v192 + 18472) = -1;
                      v316 = *(v192 + 4634);
                      if (!v316)
                      {
                        v316 = 0x7FFFFFFF;
                      }

                      *(v192 + 4635) = v316;
                      *(v192 + 4625) = 0;
LABEL_553:
                      v247 = v761 + 1;
                      v246 = v753;
                      if (v761 + 1 == v737)
                      {
LABEL_562:
                        if (++v744 == v727)
                        {
                          goto LABEL_642;
                        }

                        goto LABEL_444;
                      }

                      goto LABEL_446;
                    }

                    goto LABEL_466;
                  }

                  LODWORD(v276) = v276 - 1;
                }

                ++v249;
                v282 = *(v192 + 4622);
                if (v249 - 1 >= v282)
                {
                  goto LABEL_512;
                }
              }
            }

            if (v245 == 1)
            {
              v321 = *v812;
              v322 = &v195[12 * *v812];
              v754 = (*(v322 + 8) + 7) >> 3;
              if (v754 >= 1)
              {
                v323 = 0;
                v769 = 0;
                v762 = (*(v322 + 7) + 7) >> 3;
                while (v762 < 1)
                {
LABEL_579:
                  v323 += 8;
                  if (++v769 == v754)
                  {
                    goto LABEL_640;
                  }
                }

                v324 = 0;
                while (sub_29AB5CB90(v192, &v820, &v193[1680 * *(v322 + 4)], &v786[210 * *(v322 + 5)], &v780[128 * *(v322 + 5)], v321, &v197[16 * *(v322 + 3)]))
                {
                  (v192[2318])(v322[6] + v323 * *(v322 + 9) + v324);
                  v325 = *(v192 + 4635);
                  v171 = __OFSUB__(v325--, 1);
                  *(v192 + 4635) = v325;
                  if ((v325 < 0) ^ v171 | (v325 == 0))
                  {
                    if (*(v192 + 4617) <= 23)
                    {
                      sub_29AB5D044(v192);
                    }

                    if ((v192[2309] & 0xF8) != 0xD0)
                    {
                      goto LABEL_640;
                    }

                    v192[2308] = 0;
                    *(v192 + 4619) = 0;
                    *(v192 + 4598) = 0;
                    *(v192 + 4574) = 0;
                    *(v192 + 4550) = 0;
                    *(v192 + 4526) = 0;
                    *(v192 + 18472) = -1;
                    v326 = *(v192 + 4634);
                    if (!v326)
                    {
                      v326 = 0x7FFFFFFF;
                    }

                    *(v192 + 4635) = v326;
                    *(v192 + 4625) = 0;
                  }

                  v324 += 8;
                  if (8 * v762 == v324)
                  {
                    goto LABEL_579;
                  }
                }

LABEL_639:
                v351 = 0;
                goto LABEL_641;
              }
            }

            else
            {
              v340 = *(v192 + 4517);
              if (v340 >= 1)
              {
                v771 = 0;
                v341 = *(v192 + 4516);
                do
                {
                  if (v341 >= 1)
                  {
                    for (ii = 0; ii < v341; ++ii)
                    {
                      v342 = *(v192 + 4629);
                      if (v342 >= 1)
                      {
                        for (jj = 0; jj < v342; ++jj)
                        {
                          v344 = v812[jj];
                          v345 = &v195[12 * v344];
                          v346 = *(v345 + 2);
                          if (v346 >= 1)
                          {
                            v755 = jj;
                            v347 = 0;
                            v348 = *(v345 + 1);
                            do
                            {
                              if (v348 >= 1)
                              {
                                for (kk = 0; kk < v348; ++kk)
                                {
                                  v350 = *(v345 + 2);
                                  if (!sub_29AB5CB90(v192, &v820, &v193[1680 * *(v345 + 4)], &v786[210 * *(v345 + 5)], &v780[128 * *(v345 + 5)], v344, &v197[16 * *(v345 + 3)]))
                                  {
                                    goto LABEL_639;
                                  }

                                  (v192[2318])(&v345[6][2 * (v347 + v350 * v771) * *(v345 + 9) + 2 * kk + 2 * ii * v348]);
                                  v348 = *(v345 + 1);
                                }

                                v346 = *(v345 + 2);
                              }

                              ++v347;
                            }

                            while (v347 < v346);
                            v342 = *(v192 + 4629);
                            jj = v755;
                          }
                        }

                        v244 = *(v192 + 4635);
                      }

                      v171 = __OFSUB__(v244--, 1);
                      *(v192 + 4635) = v244;
                      if ((v244 < 0) ^ v171 | (v244 == 0))
                      {
                        if (*(v192 + 4617) <= 23)
                        {
                          sub_29AB5D044(v192);
                        }

                        if ((v192[2309] & 0xF8) != 0xD0)
                        {
                          goto LABEL_640;
                        }

                        v192[2308] = 0;
                        *(v192 + 4619) = 0;
                        *(v192 + 4598) = 0;
                        *(v192 + 4574) = 0;
                        *(v192 + 4550) = 0;
                        *(v192 + 4526) = 0;
                        *(v192 + 18472) = -1;
                        v244 = *(v192 + 4634);
                        if (!v244)
                        {
                          v244 = 0x7FFFFFFF;
                        }

                        *(v192 + 4635) = v244;
                        *(v192 + 4625) = 0;
                      }

                      v341 = *(v192 + 4516);
                    }

                    v340 = *(v192 + 4517);
                  }

                  v351 = 1;
                  ++v771;
                }

                while (v771 < v340);
                goto LABEL_641;
              }
            }

LABEL_640:
            v351 = 1;
LABEL_641:
            if (v351)
            {
              goto LABEL_642;
            }

LABEL_1272:
            sub_29AB50308(v192, *(*v192 + 8));
            v15 = 0;
            v3 = v792;
            v7 = v798;
            goto LABEL_1273;
          }

          *off_2A1B71BE0(off_2A1B71BE0) = "no SOI";
          v128 = *(v8 + 208);
          v129 = *(v8 + 216);
          *(v8 + 192) = v128;
          *(v8 + 200) = v129;
          free(v189);
        }

        else
        {
          *off_2A1B71BE0(off_2A1B71BE0) = "outofmem";
        }

        if (v128 >= v129)
        {
          if (*(v8 + 48))
          {
            v367 = (v8 + 56);
            v368 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
            v128 = *(v8 + 208);
            *(v8 + 184) += *(v8 + 192) - v128;
            if (v368)
            {
              v129 = &v367[v368];
              v366 = *v367;
            }

            else
            {
              v366 = 0;
              *(v8 + 48) = 0;
              v129 = (v8 + 57);
              *(v8 + 56) = 0;
            }

            v365 = (v8 + 57);
            *(v8 + 192) = v8 + 57;
            *(v8 + 200) = v129;
          }

          else
          {
            v366 = 0;
            v365 = v128;
          }
        }

        else
        {
          v365 = v128 + 1;
          *(v8 + 192) = v128 + 1;
          v366 = *v128;
        }

        if (v365 < v129)
        {
          *(v8 + 192) = v365 + 1;
          v378 = *v365;
          goto LABEL_700;
        }

        if (!*(v8 + 48))
        {
          goto LABEL_703;
        }

        v379 = (v8 + 56);
        v380 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
        v128 = *(v8 + 208);
        *(v8 + 184) += *(v8 + 192) - v128;
        if (v380)
        {
          v381 = &v379[v380];
          v378 = *v379;
        }

        else
        {
          v378 = 0;
          *(v8 + 48) = 0;
          v381 = (v8 + 57);
          *(v8 + 56) = 0;
        }

        *(v8 + 192) = v8 + 57;
        *(v8 + 200) = v381;
LABEL_700:
        if (v366 == 80 && (v378 - 55) >= 0xFFFFFFFE)
        {
          v382 = sub_29AB5ACD8(v8, v7, v5, v3, &v815);
        }

        else
        {
LABEL_703:
          v383 = *(v8 + 216);
          *(v8 + 192) = v128;
          *(v8 + 200) = v383;
          sub_29AB54574(v8);
          if (v384)
          {
            v385 = sub_29AB54900(v8, v7, v5, v3);
            v382 = sub_29AB5AE1C(v385, *v7, *v5, *v3);
          }

          else
          {
            sub_29AB5AFD4(v8);
            if (!v386)
            {
              v29 = off_2A1B71BE0(off_2A1B71BE0);
              v19 = 0;
              v187 = "unknown image type";
              goto LABEL_782;
            }

            v382 = sub_29AB5B3C8(v8, v7, v5, v3);
          }
        }

        v15 = v382;
        goto LABEL_13;
      }
    }

    ++v124;
LABEL_211:
    *(v8 + 192) = v124;
    goto LABEL_212;
  }

  v80 = v5;
  bzero(&v820, 0x8870uLL);
  v790 = v3;
  if (!sub_29AB53344(v8, &v820, v3, 0))
  {
    goto LABEL_913;
  }

  v797 = v7;
  v81 = v820;
  v82 = DWORD1(v820);
  if (!sub_29AB50270(4, v820, DWORD1(v820), 0))
  {
    v89 = "too large";
    goto LABEL_912;
  }

  v83 = 4 * v82 * v81;
  v84 = malloc(v83);
  *(&v820 + 1) = v84;
  v85 = malloc(v83);
  v821 = v85;
  v86 = v82 * v81;
  v87 = malloc(v86);
  v822 = v87;
  if (!v84)
  {
    v89 = "outofmem";
    goto LABEL_912;
  }

  v88 = v81;
  v89 = "outofmem";
  if (!v85 || (v90 = v87) == 0)
  {
LABEL_912:
    *off_2A1B71BE0(off_2A1B71BE0) = v89;
    v7 = v797;
    goto LABEL_913;
  }

  bzero(v84, v83);
  bzero(v85, v83);
  v810 = v825;
  bzero(v90, v86);
  v91 = (v8 + 56);
  v92 = v8 + 57;
  v89 = "unknown code";
LABEL_131:
  v7 = v797;
  while (1)
  {
    v94 = *(v8 + 192);
    v93 = *(v8 + 200);
    if (v94 >= v93)
    {
      if (!*(v8 + 48))
      {
        goto LABEL_912;
      }

      v97 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
      if (v97)
      {
        v93 = &v91[v97];
        v96 = *v91;
      }

      else
      {
        v96 = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        v93 = (v8 + 57);
      }

      *(v8 + 192) = v92;
      *(v8 + 200) = v93;
      v95 = (v8 + 57);
    }

    else
    {
      v95 = v94 + 1;
      *(v8 + 192) = v94 + 1;
      v96 = *v94;
    }

    if (v96 != 33)
    {
      break;
    }

    if (v95 >= v93)
    {
      if (!*(v8 + 48))
      {
        goto LABEL_185;
      }

      v100 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
      if (v100)
      {
        v93 = &v91[v100];
        v99 = *v91;
      }

      else
      {
        v99 = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        v93 = (v8 + 57);
      }

      *(v8 + 192) = v92;
      *(v8 + 200) = v93;
      v98 = (v8 + 57);
    }

    else
    {
      v98 = v95 + 1;
      *(v8 + 192) = v95 + 1;
      v99 = *v95;
    }

    if (v99 != 249)
    {
      while (1)
      {
LABEL_185:
        v112 = *(v8 + 192);
        if (v112 >= *(v8 + 200))
        {
          if (!*(v8 + 48))
          {
            goto LABEL_131;
          }

          v114 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
          *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
          if (v114)
          {
            v115 = &v91[v114];
            v113 = *v91;
          }

          else
          {
            v113 = 0;
            *(v8 + 48) = 0;
            *(v8 + 56) = 0;
            v115 = (v8 + 57);
          }

          *(v8 + 192) = v92;
          *(v8 + 200) = v115;
        }

        else
        {
          *(v8 + 192) = v112 + 1;
          v113 = *v112;
        }

        if (!v113)
        {
          goto LABEL_131;
        }

        sub_29AB50224(v8, v113);
      }
    }

    if (v98 >= v93)
    {
      if (!*(v8 + 48))
      {
        v102 = 0;
        goto LABEL_157;
      }

      v103 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
      *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
      if (v103)
      {
        v93 = &v91[v103];
        v102 = *v91;
      }

      else
      {
        v102 = 0;
        *(v8 + 48) = 0;
        *(v8 + 56) = 0;
        v93 = (v8 + 57);
      }

      *(v8 + 192) = v92;
      *(v8 + 200) = v93;
      v101 = (v8 + 57);
    }

    else
    {
      v101 = v98 + 1;
      *(v8 + 192) = v98 + 1;
      v102 = *v98;
    }

    if (v102 == 4)
    {
      if (v101 >= v93)
      {
        if (*(v8 + 48))
        {
          v105 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
          *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
          if (v105)
          {
            v106 = &v91[v105];
            v104 = *v91;
          }

          else
          {
            v104 = 0;
            *(v8 + 48) = 0;
            *(v8 + 56) = 0;
            v106 = (v8 + 57);
          }

          *(v8 + 192) = v92;
          *(v8 + 200) = v106;
        }

        else
        {
          v104 = 0;
        }
      }

      else
      {
        *(v8 + 192) = v101 + 1;
        v104 = *v101;
      }

      v826 = v104;
      v841 = 10 * sub_29AB538DC(v8);
      if ((v810 & 0x80000000) == 0)
      {
        HIBYTE(v827[v810]) = -1;
      }

      if (v104)
      {
        v109 = *(v8 + 192);
        if (v109 >= *(v8 + 200))
        {
          if (*(v8 + 48))
          {
            v110 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
            *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
            if (v110)
            {
              v111 = &v91[v110];
              v810 = *v91;
            }

            else
            {
              v810 = 0;
              *(v8 + 48) = 0;
              *(v8 + 56) = 0;
              v111 = (v8 + 57);
            }

            *(v8 + 192) = v92;
            *(v8 + 200) = v111;
          }

          else
          {
            v810 = 0;
          }
        }

        else
        {
          *(v8 + 192) = v109 + 1;
          v810 = *v109;
        }

        v825 = v810;
        HIBYTE(v827[v810]) = 0;
        goto LABEL_185;
      }

      if (*(v8 + 16))
      {
        v107 = *(v8 + 192);
        v108 = *(v8 + 200);
        if (v108 - v107 <= 0)
        {
          *(v8 + 192) = v108;
          (*(v8 + 24))(*(v8 + 40), (1 - (v108 - v107)));
LABEL_179:
          v810 = -1;
          v825 = -1;
          goto LABEL_185;
        }
      }

      else
      {
        v107 = *(v8 + 192);
      }

      *(v8 + 192) = v107 + 1;
      goto LABEL_179;
    }

LABEL_157:
    sub_29AB50224(v8, v102);
  }

  if (v96 == 59)
  {
    goto LABEL_913;
  }

  if (v96 != 44)
  {
    goto LABEL_912;
  }

  v478 = sub_29AB538DC(v8);
  v479 = sub_29AB538DC(v8);
  v480 = sub_29AB538DC(v8);
  v481 = sub_29AB538DC(v8);
  if (v480 + v478 > v88 || v481 + v479 > v82)
  {
    v89 = "bad Image Descriptor";
    goto LABEL_912;
  }

  v840 = 4 * v88;
  v834 = 4 * v478;
  v835 = v479 * 4 * v88;
  v836 = 4 * (v480 + v478);
  v676 = (v481 + v479) * 4 * v88;
  v837 = v676;
  v838 = 4 * v478;
  if (v480)
  {
    v676 = v479 * 4 * v88;
  }

  v839 = v676;
  v678 = *(v8 + 192);
  v677 = *(v8 + 200);
  if (v678 < v677)
  {
    *(v8 + 192) = v678 + 1;
    v679 = *v678++;
    goto LABEL_1277;
  }

  if (!*(v8 + 48))
  {
    v833 = 0;
    v832 = 4 * v88;
    v831 = 0;
    goto LABEL_1280;
  }

  v680 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
  if (v680)
  {
    v677 = &v91[v680];
    v679 = *v91;
  }

  else
  {
    v679 = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    v677 = (v8 + 57);
  }

  *(v8 + 192) = v92;
  *(v8 + 200) = v677;
  v678 = (v8 + 57);
LABEL_1277:
  v833 = v679;
  v681 = 32 * v88;
  if ((v679 & 0x40) == 0)
  {
    v681 = 4 * v88;
  }

  v832 = v681;
  v831 = (v679 << 25 >> 31) & 3;
  if ((v679 & 0x80) != 0)
  {
    if (v826)
    {
      v682 = v810;
    }

    else
    {
      v682 = -1;
    }

    sub_29AB53A08(v8, v828, 2 << (v679 & 7), v682);
    v830 = v828;
    v678 = *(v8 + 192);
    v677 = *(v8 + 200);
  }

  else
  {
LABEL_1280:
    if ((v823 & 0x80) == 0)
    {
      v89 = "missing color table";
      goto LABEL_912;
    }

    v830 = v827;
  }

  if (v678 < v677)
  {
    *(v8 + 192) = v678 + 1;
    v683 = *v678;
    goto LABEL_1294;
  }

  v683 = *(v8 + 48);
  if (!v683)
  {
    goto LABEL_1295;
  }

  v684 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
  *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
  if (v684)
  {
    v685 = &v91[v684];
    v683 = *v91;
  }

  else
  {
    v683 = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    v685 = (v8 + 57);
  }

  *(v8 + 192) = v92;
  *(v8 + 200) = v685;
LABEL_1294:
  v7 = v797;
  if (v683 > 0xC)
  {
LABEL_913:
    if (*(&v820 + 1))
    {
      free(*(&v820 + 1));
    }

    v15 = 0;
    v5 = v80;
  }

  else
  {
LABEL_1295:
    v686 = 0;
    v687 = (1 << v683);
    v688 = &v829;
    do
    {
      *(v688 - 3) = -1;
      *(v688 - 1) = v686;
      *v688 = v686;
      v688 += 4;
      ++v686;
    }

    while (v687 != v686);
    v749 = 0;
    v814 = 0;
    v689 = 0;
    v690 = v683 + 1;
    v691 = ((2 << v683) - 1);
    v692 = (v687 + 2);
    v783 = 1 << v683;
    v758 = v687 + 1;
    v789 = 1;
    v89 = "illegal code in raster";
    v777 = v683 + 1;
    v773 = (2 << v683) - 1;
    v766 = v687 + 2;
    v808 = -1;
    while (2)
    {
      v693 = v789;
      v694 = v690;
      v695 = v691;
      v696 = v692;
      v697 = v808;
      while (1)
      {
        v808 = v697;
        v692 = v696;
        v691 = v695;
        v690 = v694;
        v789 = v693;
        v698 = v689 - v694;
        if (v689 < v694)
        {
          break;
        }

        v693 = 0;
        v699 = v814 & v695;
        v814 >>= v694;
        v697 = -1;
        v694 = v777;
        v695 = v773;
        v696 = v766;
        v689 = v698;
        if (v699 != v783)
        {
          if (v699 == v758)
          {
            v712 = v8;
            v713 = v749;
            while (1)
            {
              sub_29AB50224(v712, v713);
              v714 = *(v8 + 192);
              if (v714 >= *(v8 + 200))
              {
                if (!*(v8 + 48))
                {
                  goto LABEL_1344;
                }

                v715 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
                *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
                if (v715)
                {
                  v716 = &v91[v715];
                  v713 = *v91;
                }

                else
                {
                  v713 = 0;
                  *(v8 + 48) = 0;
                  *(v8 + 56) = 0;
                  v716 = (v8 + 57);
                }

                *(v8 + 192) = v92;
                *(v8 + 200) = v716;
              }

              else
              {
                *(v8 + 192) = v714 + 1;
                v713 = *v714;
              }

              if (!v713)
              {
                goto LABEL_1344;
              }

              v712 = v8;
            }
          }

          if (v699 > v692)
          {
            goto LABEL_912;
          }

          if (v789)
          {
            v89 = "no clear code";
            goto LABEL_912;
          }

          if (v808 < 0)
          {
            if (v699 == v692)
            {
              goto LABEL_912;
            }
          }

          else
          {
            if (v692 >= 0x2000)
            {
              v89 = "too many codes";
              goto LABEL_912;
            }

            v700 = &v828[4 * v692 + 1024];
            *v700 = v808;
            v701 = v828[4 * v808 + 1026];
            v700[2] = v701;
            if (v699 != v692 + 1)
            {
              v701 = v828[4 * v699 + 1026];
            }

            v700[3] = v701;
            v692 = (v692 + 1);
          }

          sub_29AB5BE74(&v820, v699);
          v693 = 0;
          v702 = (v692 & v691) == 0;
          v703 = v692 < 4096;
          v704 = !v703 || !v702;
          if (v703 && v702)
          {
            v694 = (v690 + 1);
          }

          else
          {
            v694 = v690;
          }

          if (v704)
          {
            v695 = v691;
          }

          else
          {
            v695 = ~(-1 << (v690 + 1));
          }

          v696 = v692;
          v697 = v699;
          v689 = v698;
        }
      }

      v705 = v689;
      v707 = *(v8 + 192);
      v706 = *(v8 + 200);
      if (v749)
      {
        goto LABEL_1326;
      }

      if (v707 >= v706)
      {
        if (!*(v8 + 48))
        {
          break;
        }

        v708 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
        *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
        if (v708)
        {
          v706 = &v91[v708];
          v749 = *v91;
        }

        else
        {
          v749 = 0;
          *(v8 + 48) = 0;
          *(v8 + 56) = 0;
          v706 = (v8 + 57);
        }

        *(v8 + 192) = v92;
        *(v8 + 200) = v706;
        v707 = (v8 + 57);
      }

      else
      {
        *(v8 + 192) = v707 + 1;
        v749 = *v707++;
      }

      if (v749)
      {
LABEL_1326:
        if (v707 >= v706)
        {
          v709 = *(v8 + 48);
          if (v709)
          {
            v710 = (*(v8 + 16))(*(v8 + 40), v8 + 56, *(v8 + 52));
            *(v8 + 184) += *(v8 + 192) - *(v8 + 208);
            if (v710)
            {
              v711 = &v91[v710];
              v709 = *v91;
            }

            else
            {
              v709 = 0;
              *(v8 + 48) = 0;
              *(v8 + 56) = 0;
              v711 = (v8 + 57);
            }

            *(v8 + 192) = v92;
            *(v8 + 200) = v711;
          }
        }

        else
        {
          *(v8 + 192) = v707 + 1;
          v709 = *v707;
        }

        --v749;
        v814 |= v709 << v705;
        v689 = v705 + 8;
        continue;
      }

      break;
    }

LABEL_1344:
    v15 = *(&v820 + 1);
    if (*(&v820 + 1))
    {
      if (v824[0] >= 1)
      {
        v717 = (DWORD1(v820) * v820);
        if (v717 >= 1)
        {
          for (mm = 0; mm != v717; ++mm)
          {
            if (!*(v822 + mm))
            {
              HIBYTE(v827[v824[0]]) = -1;
              *(*(&v820 + 1) + 4 * mm) = v827[v824[0]];
            }
          }
        }
      }

      v7 = v797;
      if (v15 != v8)
      {
        v719 = DWORD1(v820);
        *v797 = v820;
        v5 = v80;
        *v80 = v719;
        goto LABEL_916;
      }

      goto LABEL_913;
    }

    v5 = v80;
    v7 = v797;
  }

LABEL_916:
  free(v822);
  free(v821);
  v3 = v790;
LABEL_13:
  if (!v15)
  {
    return 0;
  }

  if (v815 == 8)
  {
    return v15;
  }

  v20 = *v5 * *v7 * *v3;
  v21 = malloc(*v5 * *v7 * *v3);
  v19 = v21;
  if (!v21)
  {
    v29 = off_2A1B71BE0(off_2A1B71BE0);
LABEL_781:
    v187 = "outofmem";
    goto LABEL_782;
  }

  if (v20 >= 1)
  {
    v22 = v20;
    v23 = v15;
    v24 = v21;
    do
    {
      *v24++ = v23[1];
      v23 += 2;
      --v22;
    }

    while (v22);
  }

  free(v15);
  return v19;
}

BOOL sub_29AB5ABFC(signed int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  result = 0;
  if (((a2 | a1) & 0x80000000) == 0 && (!a2 || (0x7FFFFFFF / a2) >= a1))
  {
    v4 = a2 * a1;
    if ((((a2 * a1) | a3) & 0x80000000) == 0 && (!a3 || (0x7FFFFFFF / a3) >= v4))
    {
      v5 = v4 * a3;
      if (((v5 | a4) & 0x80000000) == 0 && (!a4 || (0x7FFFFFFF / a4) >= v5))
      {
        return 1;
      }
    }
  }

  return result;
}

void *sub_29AB5AC68(signed int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (!sub_29AB5ABFC(a1, a2, a3, a4))
  {
    return 0;
  }

  return malloc((a2 * a1 * a3 * a4));
}

char *sub_29AB5ACD8(_DWORD *a1, _DWORD *a2, unsigned int *a3, signed int *a4, _DWORD *a5)
{
  v10 = sub_29AB4E24C(a1, a1, a1 + 1, a1 + 2);
  *a5 = v10;
  if (!v10)
  {
    return 0;
  }

  if (a1[1] > 0x1000000u || *a1 > 0x1000000u)
  {
    goto LABEL_10;
  }

  *a2 = *a1;
  v11 = a1[1];
  *a3 = v11;
  v12 = a1[2];
  if (a4)
  {
    *a4 = v12;
    v11 = a1[1];
  }

  v13 = *a1;
  v14 = *a5 / 8;
  if (!sub_29AB5ABFC(v12, *a1, v11, v14))
  {
LABEL_10:
    v17 = "too large";
    goto LABEL_11;
  }

  v15 = sub_29AB5AC68(v12, v13, v11, v14);
  if (!v15)
  {
    v17 = "outofmem";
    goto LABEL_11;
  }

  v16 = v15;
  if (!sub_29AB524E4(a1, v15, v13 * v12 * v11 * v14))
  {
    free(v16);
    v17 = "bad PNM";
LABEL_11:
    v18 = off_2A1B71BE0(v17);
    v16 = 0;
    *v18 = v19;
  }

  return v16;
}

_BYTE *sub_29AB5AE1C(float *a1, signed int a2, unsigned int a3, signed int a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = sub_29AB5037C(a2, a3, a4, 0);
  if (v7)
  {
    v22 = v7;
    v24 = a3 * a2;
    if (v24 >= 1)
    {
      v8 = 0;
      v9 = v7;
      v10 = a1;
      do
      {
        if (a4 + (a4 & 1) - 1 < 1)
        {
          v16 = 0;
        }

        else
        {
          v11 = a4 + (a4 & 1u) - 1;
          v12 = v9;
          v13 = v10;
          do
          {
            v14 = *v13++;
            v15 = (powf(v14, 0.45455) * 255.0) + 0.5;
            if (v15 < 0.0)
            {
              v15 = 0.0;
            }

            if (v15 > 255.0)
            {
              v15 = 255.0;
            }

            *v12++ = v15;
            --v11;
          }

          while (v11);
          v16 = a4 + (a4 & 1) - 1;
        }

        if (v16 < a4)
        {
          v17 = v8 * a4 + v16;
          v18 = (a1[v17] * 255.0) + 0.5;
          if (v18 < 0.0)
          {
            v18 = 0.0;
          }

          if (v18 > 255.0)
          {
            v18 = 255.0;
          }

          v22[v17] = v18;
        }

        ++v8;
        v10 += a4;
        v9 += a4;
      }

      while (v8 != v24);
    }

    free(a1);
    return v22;
  }

  else
  {
    free(a1);
    v20 = off_2A1B71BE0(off_2A1B71BE0);
    v19 = 0;
    *v20 = "outofmem";
  }

  return v19;
}

__n128 sub_29AB5AFD4(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  if (v3 >= v2)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_9;
    }

    v4 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v4)
    {
      v2 = a1 + 56 + v4;
    }

    else
    {
      *(a1 + 48) = 0;
      v2 = a1 + 57;
      *(a1 + 56) = 0;
    }

    *(a1 + 200) = v2;
    v3 = (a1 + 57);
  }

  else
  {
    ++v3;
  }

  *(a1 + 192) = v3;
LABEL_9:
  if (v3 >= v2)
  {
    if (!*(a1 + 48))
    {
      v5 = 0;
      goto LABEL_18;
    }

    v6 = (a1 + 56);
    v7 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v7)
    {
      v2 = &v6[v7];
      v5 = *v6;
    }

    else
    {
      v5 = 0;
      *(a1 + 48) = 0;
      v2 = a1 + 57;
      *(a1 + 56) = 0;
    }

    v3 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v2;
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v5 = *v3++;
  }

  if (v5 > 1)
  {
    goto LABEL_40;
  }

LABEL_18:
  if (v3 >= v2)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = (a1 + 56);
      v10 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v10)
      {
        v2 = &v9[v10];
        v8 = *v9;
      }

      else
      {
        v8 = 0;
        *(a1 + 48) = 0;
        v2 = a1 + 57;
        *(a1 + 56) = 0;
      }

      *(a1 + 200) = v2;
      v3 = (a1 + 57);
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v8 = *v3++;
  }

  if (!v5)
  {
    if ((v8 & 0xF6) != 2)
    {
      goto LABEL_40;
    }

    if (*(a1 + 16) && v2 - v3 <= 8)
    {
      *(a1 + 192) = v2;
      (*(a1 + 24))(*(a1 + 40), (9 - (v2 - v3)));
LABEL_51:
      if (sub_29AB538DC(a1) && sub_29AB538DC(a1))
      {
        v18 = *(a1 + 192);
        if (v18 >= *(a1 + 200))
        {
          if (*(a1 + 48))
          {
            v19 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
            *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
            if (v19)
            {
              v20 = a1 + 56 + v19;
            }

            else
            {
              *(a1 + 48) = 0;
              v20 = a1 + 57;
              *(a1 + 56) = 0;
            }

            *(a1 + 192) = a1 + 57;
            *(a1 + 200) = v20;
          }
        }

        else
        {
          *(a1 + 192) = v18 + 1;
        }
      }

      goto LABEL_40;
    }

    v17 = v3 + 9;
LABEL_50:
    *(a1 + 192) = v17;
    goto LABEL_51;
  }

  if ((v8 & 0xFFFFFFF7) == 1)
  {
    if (*(a1 + 16) && v2 - v3 <= 3)
    {
      *(a1 + 192) = v2;
      (*(a1 + 24))(*(a1 + 40), (4 - (v2 - v3)));
      v11 = *(a1 + 192);
      v2 = *(a1 + 200);
    }

    else
    {
      v11 = v3 + 4;
      *(a1 + 192) = v3 + 4;
    }

    if (v11 >= v2)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_40;
      }

      v14 = (a1 + 56);
      v15 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v15)
      {
        v2 = &v14[v15];
        v13 = *v14;
      }

      else
      {
        v13 = 0;
        *(a1 + 48) = 0;
        v2 = a1 + 57;
        *(a1 + 56) = 0;
      }

      *(a1 + 200) = v2;
      v12 = (a1 + 57);
    }

    else
    {
      v12 = v11 + 1;
      *(a1 + 192) = v11 + 1;
      v13 = *v11;
    }

    if (v13 <= 0x20 && ((1 << v13) & 0x101018100) != 0)
    {
      if (*(a1 + 16) && v2 - v12 <= 3)
      {
        *(a1 + 192) = v2;
        (*(a1 + 24))(*(a1 + 40), (4 - (v2 - v12)));
        goto LABEL_51;
      }

      v17 = v12 + 4;
      goto LABEL_50;
    }
  }

LABEL_40:
  result = *(a1 + 208);
  *(a1 + 192) = result;
  return result;
}

char *sub_29AB5B3C8(uint64_t a1, signed int *a2, unsigned int *a3, unsigned int *a4)
{
  v9 = *(a1 + 192);
  v8 = *(a1 + 200);
  if (v9 >= v8)
  {
    if (*(a1 + 48))
    {
      v10 = (a1 + 56);
      v11 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v11)
      {
        v8 = &v10[v11];
        v94 = *v10;
      }

      else
      {
        v94 = 0;
        *(a1 + 48) = 0;
        v8 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v9 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v8;
    }

    else
    {
      v94 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v9 + 1;
    v94 = *v9++;
  }

  if (v9 >= v8)
  {
    if (*(a1 + 48))
    {
      v13 = (a1 + 56);
      v14 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v14)
      {
        v8 = &v13[v14];
        v12 = *v13;
      }

      else
      {
        v12 = 0;
        *(a1 + 48) = 0;
        v8 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v9 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v8;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v9 + 1;
    v12 = *v9++;
  }

  if (v9 >= v8)
  {
    if (*(a1 + 48))
    {
      v15 = (a1 + 56);
      v16 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v16)
      {
        v17 = &v15[v16];
        v97 = *v15;
      }

      else
      {
        v97 = 0;
        *(a1 + 48) = 0;
        v17 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v17;
    }

    else
    {
      v97 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v9 + 1;
    v97 = *v9;
  }

  v18 = sub_29AB538DC(a1);
  v96 = sub_29AB538DC(a1);
  v19 = *(a1 + 192);
  __n = v18;
  if (v19 >= *(a1 + 200))
  {
    if (*(a1 + 48))
    {
      v21 = (a1 + 56);
      v22 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v22)
      {
        v23 = &v21[v22];
        v20 = *v21;
      }

      else
      {
        v20 = 0;
        *(a1 + 48) = 0;
        v23 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v23;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v19 + 1;
    v20 = *v19;
  }

  sub_29AB538DC(a1);
  sub_29AB538DC(a1);
  v24 = sub_29AB538DC(a1);
  v92 = sub_29AB538DC(a1);
  v26 = *(a1 + 192);
  v25 = *(a1 + 200);
  if (v26 >= v25)
  {
    if (*(a1 + 48))
    {
      v28 = (a1 + 56);
      v29 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v29)
      {
        v25 = &v28[v29];
        v27 = *v28;
      }

      else
      {
        v27 = 0;
        *(a1 + 48) = 0;
        v25 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v26 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v25;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v26 + 1;
    v27 = *v26++;
  }

  v98 = v27;
  if (v26 >= v25)
  {
    if (*(a1 + 48))
    {
      v31 = (a1 + 56);
      v32 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v32)
      {
        v33 = &v31[v32];
        v30 = *v31;
      }

      else
      {
        v30 = 0;
        *(a1 + 48) = 0;
        v33 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v27 = v98;
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v33;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v26 + 1;
    v30 = *v26;
  }

  __dst = 0;
  v34 = "bad format";
  if (!v12)
  {
    if (v27 <= 15)
    {
      if (v27 == 8)
      {
LABEL_68:
        v36 = 0;
        v89 = 1;
        v37 = 1;
        goto LABEL_71;
      }

      if (v27 == 15)
      {
LABEL_67:
        v89 = 0;
        v37 = 3;
        v36 = 1;
        goto LABEL_71;
      }
    }

    else
    {
      if (v27 == 32 || v27 == 24)
      {
        v36 = 0;
        v37 = v27 >> 3;
        goto LABEL_70;
      }

      if (v27 == 16)
      {
        v35 = v97 - 8;
        if (v97 <= 7)
        {
          v35 = v97;
        }

        if (v35 != 3)
        {
          goto LABEL_67;
        }

        v36 = 0;
        v37 = 2;
        goto LABEL_70;
      }
    }

LABEL_101:
    v42 = 0;
    *off_2A1B71BE0(off_2A1B71BE0) = v34;
    return v42;
  }

  if (v20 <= 23)
  {
    if ((v20 - 15) >= 2)
    {
      if (v20 != 8)
      {
        goto LABEL_101;
      }

      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v20 != 24 && v20 != 32)
  {
    goto LABEL_101;
  }

  v36 = 0;
  v37 = v20 >> 3;
LABEL_70:
  v89 = 1;
LABEL_71:
  *a2 = v24;
  v38 = v92;
  *a3 = v92;
  v39 = v96;
  if (a4)
  {
    *a4 = v37;
  }

  v40 = v97;
  if (!sub_29AB50270(v24, v92, v37, 0))
  {
    v34 = "too large";
    goto LABEL_101;
  }

  v41 = sub_29AB5037C(v24, v92, v37, 0);
  if (!v41)
  {
    v34 = "outofmem";
    goto LABEL_101;
  }

  v42 = v41;
  sub_29AB50224(a1, v94);
  if (v12)
  {
    v43 = 1;
  }

  else
  {
    v43 = v97 > 7;
  }

  if (v43)
  {
    v44 = 1;
  }

  else
  {
    v44 = v36;
  }

  if (v44)
  {
    if (v12)
    {
      if (!v96)
      {
        v34 = "bad palette";
        goto LABEL_100;
      }

      sub_29AB50224(a1, __n);
      v88 = sub_29AB502C8(v96, v37, 0);
      if (!v88)
      {
        v34 = "outofmem";
        goto LABEL_100;
      }

      v90 = v12;
      if (v89)
      {
        if (!sub_29AB524E4(a1, v88, v96 * v37))
        {
          free(v42);
          v34 = "bad palette";
          v42 = v88;
LABEL_100:
          free(v42);
          goto LABEL_101;
        }
      }

      else
      {
        v49 = v96;
        v50 = v88 + 2;
        do
        {
          v51 = sub_29AB538DC(a1);
          *(v50 - 2) = (2156535 * ((v51 >> 10) & 0x1F)) >> 18;
          *(v50 - 1) = (2156535 * ((v51 >> 5) & 0x1F)) >> 18;
          *v50 = (2156535 * (v51 & 0x1F)) >> 18;
          v50 += v37;
          --v49;
        }

        while (v49);
        v38 = v92;
        v39 = v96;
      }
    }

    else
    {
      v90 = 0;
      v88 = 0;
    }

    v86 = v36;
    v87 = v24;
    v95 = v38 * v24;
    if (v95)
    {
      v52 = 0;
      v91 = 0;
      v53 = 0;
      v54 = (a1 + 56);
      v55 = a1 + 57;
      v56 = 1;
      do
      {
        if (v40 >= 8)
        {
          if (v53)
          {
            v57 = v91 == 0;
            v91 = v91 != 0;
            v58 = v57;
            if (((v58 | v56) & 1) == 0)
            {
              v91 = 1;
LABEL_141:
              if (!v37)
              {
                goto LABEL_155;
              }

LABEL_154:
              memcpy(&v42[v37 * v52], &__dst, v37);
              goto LABEL_155;
            }
          }

          else
          {
            v59 = *(a1 + 192);
            if (v59 >= *(a1 + 200))
            {
              v60 = *(a1 + 48);
              if (v60)
              {
                v61 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
                *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
                if (v61)
                {
                  v62 = &v54[v61];
                  v60 = *v54;
                }

                else
                {
                  v60 = 0;
                  *(a1 + 48) = 0;
                  *(a1 + 56) = 0;
                  v62 = (a1 + 57);
                }

                *(a1 + 192) = v55;
                *(a1 + 200) = v62;
              }
            }

            else
            {
              *(a1 + 192) = v59 + 1;
              v60 = *v59;
            }

            v53 = (v60 & 0x7F) + 1;
            v91 = v60 >> 7;
          }
        }

        if (v90)
        {
          if (v98 == 8)
          {
            v63 = *(a1 + 192);
            if (v63 >= *(a1 + 200))
            {
              if (*(a1 + 48))
              {
                v64 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
                *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
                if (v64)
                {
                  v72 = &v54[v64];
                  v64 = *v54;
                }

                else
                {
                  *(a1 + 48) = 0;
                  *(a1 + 56) = 0;
                  v72 = (a1 + 57);
                }

                *(a1 + 192) = v55;
                *(a1 + 200) = v72;
              }

              else
              {
                v64 = 0;
              }
            }

            else
            {
              *(a1 + 192) = v63 + 1;
              v64 = *v63;
            }
          }

          else
          {
            v64 = sub_29AB538DC(a1);
          }

          if (!v37)
          {
            goto LABEL_155;
          }

          if (v64 >= v39)
          {
            v73 = 0;
          }

          else
          {
            v73 = v64;
          }

          memcpy(&__dst, &v88[v73 * v37], v37);
          goto LABEL_154;
        }

        if (!v89)
        {
          v71 = sub_29AB538DC(a1);
          LOBYTE(__dst) = (2156535 * ((v71 >> 10) & 0x1F)) >> 18;
          BYTE1(__dst) = (2156535 * ((v71 >> 5) & 0x1F)) >> 18;
          BYTE2(__dst) = (2156535 * (v71 & 0x1F)) >> 18;
          goto LABEL_141;
        }

        if (v37)
        {
          v66 = *(a1 + 192);
          v65 = *(a1 + 200);
          p_dst = &__dst;
          v68 = v37;
          do
          {
            if (v66 >= v65)
            {
              v69 = *(a1 + 48);
              if (v69)
              {
                v70 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
                *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
                if (v70)
                {
                  v65 = &v54[v70];
                  LOBYTE(v69) = *v54;
                }

                else
                {
                  LOBYTE(v69) = 0;
                  *(a1 + 48) = 0;
                  *(a1 + 56) = 0;
                  v65 = (a1 + 57);
                }

                *(a1 + 192) = v55;
                *(a1 + 200) = v65;
                v66 = (a1 + 57);
              }
            }

            else
            {
              *(a1 + 192) = v66 + 1;
              LOBYTE(v69) = *v66++;
            }

            *p_dst = v69;
            p_dst = (p_dst + 1);
            --v68;
          }

          while (v68);
          v39 = v96;
          v40 = v97;
          goto LABEL_141;
        }

LABEL_155:
        v56 = 0;
        --v53;
        ++v52;
      }

      while (v52 != v95);
    }

    v38 = v92;
    if ((v30 & 0x20) == 0 && v92)
    {
      v74 = 0;
      v75 = 0;
      v76 = v87 * v37;
      v77 = v87 * v37 * (v92 - 1);
      do
      {
        if (v76)
        {
          v78 = &v42[v74];
          v79 = v76 + 1;
          v80 = &v42[v77];
          do
          {
            v81 = *v78;
            *v78++ = *v80;
            *v80++ = v81;
            --v79;
          }

          while (v79 > 1);
        }

        v77 -= v76;
        v74 += v76;
        v57 = v75++ == (v92 - 1) >> 1;
      }

      while (!v57);
    }

    if (v88)
    {
      free(v88);
    }
  }

  else
  {
    v86 = v36;
    v87 = v24;
    if (v92)
    {
      v45 = 0;
      v46 = v92 - 1;
      do
      {
        if ((v30 >> 5))
        {
          v47 = v45;
        }

        else
        {
          v47 = v46;
        }

        sub_29AB524E4(a1, &v42[v24 * v37 * v47], v24 * v37);
        ++v45;
        --v46;
      }

      while (v46 != -1);
    }
  }

  v82 = v86;
  if (v37 < 3)
  {
    v82 = 1;
  }

  if ((v82 & 1) == 0)
  {
    v83 = v38 * v87;
    if (v38 * v87)
    {
      v84 = v42 + 2;
      do
      {
        v85 = *(v84 - 2);
        *(v84 - 2) = *v84;
        *v84 = v85;
        v84 += v37;
        --v83;
      }

      while (v83);
    }
  }

  return v42;
}

uint64_t sub_29AB5BDD0(unsigned int a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = HIWORD(a1);
  if (!HIWORD(a1))
  {
    v1 = a1;
  }

  if (v1 <= 0xFF)
  {
    v2 = 16 * (HIWORD(a1) != 0);
  }

  else
  {
    v1 >>= 8;
    v2 = (16 * (HIWORD(a1) != 0)) | 8;
  }

  if (v1 > 0xF)
  {
    v1 >>= 4;
    v2 |= 4u;
  }

  if (v1 > 3)
  {
    v1 >>= 2;
    v2 |= 2u;
  }

  if (v1 <= 1)
  {
    return v2;
  }

  else
  {
    return v2 + 1;
  }
}

uint64_t sub_29AB5BE74(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = result + 0x8000;
  v4 = result + 4 * a2;
  if ((*(v4 + 2100) & 0x80000000) == 0)
  {
    result = sub_29AB5BE74(result, *(v4 + 2100));
  }

  v5 = *(v3 + 2144);
  if (v5 < *(v3 + 2136))
  {
    v6 = *(v3 + 2140) + v5;
    v7 = *(v2 + 8);
    *(*(v2 + 24) + v6 / 4) = 1;
    v8 = (*(v3 + 2104) + 4 * *(v4 + 2103));
    if (v8[3] >= 0x81u)
    {
      v9 = (v7 + v6);
      *v9 = v8[2];
      v9[1] = v8[1];
      v9[2] = *v8;
      v9[3] = v8[3];
    }

    v10 = *(v3 + 2140) + 4;
    *(v3 + 2140) = v10;
    if (v10 >= *(v3 + 2132))
    {
      *(v3 + 2140) = *(v3 + 2124);
      v11 = *(v3 + 2144) + *(v3 + 2116);
      *(v3 + 2144) = v11;
      v12 = *(v3 + 2136);
      if (v11 >= v12)
      {
        v13 = *(v3 + 2112);
        do
        {
          v14 = v13 - 1;
          if (v13 < 1)
          {
            break;
          }

          v15 = *(v3 + 2148) << v13;
          *(v3 + 2116) = v15;
          v16 = *(v3 + 2128) + (v15 >> 1);
          *(v3 + 2144) = v16;
          *(v3 + 2112) = v14;
          v13 = v14;
        }

        while (v16 >= v12);
      }
    }
  }

  return result;
}

uint64_t sub_29AB5BF9C(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = (a1 + 56);
  v8 = (a1 + 57);
  v9 = a3;
  while (1)
  {
    v11 = *(a1 + 192);
    v10 = *(a1 + 200);
    if (v11 >= v10)
    {
      if (!*(a1 + 48))
      {
        v13 = 0;
LABEL_14:
        v15 = v13 + 1;
        v16 = v15;
        do
        {
          v17 = *(a1 + 192);
          if (v17 >= *(a1 + 200))
          {
            LODWORD(v17) = *(a1 + 48);
            if (v17)
            {
              v18 = (*(a1 + 16))(*(a1 + 40), v7, *(a1 + 52));
              *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
              if (v18)
              {
                v19 = &v7[v18];
                LOBYTE(v17) = *v7;
              }

              else
              {
                LOBYTE(v17) = 0;
                *(a1 + 48) = 0;
                *(a1 + 56) = 0;
                v19 = v8;
              }

              *(a1 + 192) = v8;
              *(a1 + 200) = v19;
            }
          }

          else
          {
            *(a1 + 192) = v17 + 1;
            LOBYTE(v17) = *v17;
          }

          *a2 = v17;
          a2 += 4;
          --v16;
        }

        while (v16);
        v6 += v15;
        goto LABEL_36;
      }

      v14 = (*(a1 + 16))(*(a1 + 40), v7, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v14)
      {
        v10 = &v7[v14];
        v13 = *v7;
      }

      else
      {
        v13 = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v10 = v8;
      }

      *(a1 + 192) = v8;
      *(a1 + 200) = v10;
      v12 = v8;
    }

    else
    {
      v12 = v11 + 1;
      *(a1 + 192) = v11 + 1;
      v13 = *v11;
    }

    if (v13 != 128)
    {
      break;
    }

LABEL_36:
    v9 = a3 - v6;
    if (a3 <= v6)
    {
      return 1;
    }
  }

  if ((v13 & 0x80) == 0)
  {
    if (v9 <= v13)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (257 - v13 <= v9)
  {
    if (v12 >= v10)
    {
      v20 = *(a1 + 48);
      if (v20)
      {
        v21 = (*(a1 + 16))(*(a1 + 40), v7, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v21)
        {
          v22 = &v7[v21];
          LOBYTE(v20) = *v7;
        }

        else
        {
          LOBYTE(v20) = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = v8;
        }

        *(a1 + 192) = v8;
        *(a1 + 200) = v22;
      }
    }

    else
    {
      *(a1 + 192) = v12 + 1;
      LOBYTE(v20) = *v12;
    }

    v23 = v13 - 257;
    do
    {
      *a2 = v20;
      a2 += 4;
    }

    while (!__CFADD__(v23++, 1));
    v6 += 257 - v13;
    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_29AB5C1D4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a1 + 56);
  v8 = (a1 + 57);
  for (i = 128; (i & a2) == 0; i >>= 1)
  {
LABEL_17:
    if (++v6 == 4)
    {
      return a3;
    }
  }

  if (*(a1 + 16))
  {
    if (!(*(a1 + 32))(*(a1 + 40)))
    {
      v10 = *(a1 + 192);
      v11 = *(a1 + 200);
      goto LABEL_9;
    }

    if (!*(a1 + 48))
    {
      goto LABEL_19;
    }
  }

  v10 = *(a1 + 192);
  v11 = *(a1 + 200);
  if (v10 < v11)
  {
LABEL_9:
    if (v10 >= v11)
    {
      LODWORD(v10) = *(a1 + 48);
      if (v10)
      {
        v12 = (*(a1 + 16))(*(a1 + 40), v7, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v12)
        {
          v13 = &v7[v12];
          LOBYTE(v10) = *v7;
        }

        else
        {
          LOBYTE(v10) = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v13 = v8;
        }

        *(a1 + 192) = v8;
        *(a1 + 200) = v13;
      }
    }

    else
    {
      *(a1 + 192) = v10 + 1;
      LOBYTE(v10) = *v10;
    }

    *(a3 + v6) = v10;
    goto LABEL_17;
  }

LABEL_19:
  a3 = 0;
  *off_2A1B71BE0(off_2A1B71BE0) = "bad file";
  return a3;
}

int8x8_t *sub_29AB5C308(int8x8_t *result, int a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, int16x8_t a9)
{
  v9 = (a3 + 64);
  v70 = *MEMORY[0x29EDCA608];
  v10 = 128;
  do
  {
    v11 = &v69[v10];
    v12 = *(v9 - 24);
    v13 = *(v9 - 16);
    if (*(v9 - 24) | v13)
    {
      goto LABEL_9;
    }

    if (*(v9 - 8) || *v9 || v9[8] || v9[16] || v9[24])
    {
      v13 = 0;
LABEL_9:
      v14 = v13;
      v15 = v9[16];
      v16 = 2217 * (v15 + v13);
      v17 = v16 - 7567 * v15;
      v18 = v16 + 3135 * v14;
      v19 = *(v9 - 32);
      v20 = *v9;
      v21 = v20 + v19;
      v22 = v19 - v20;
      v23 = (v21 << 12) - v18;
      v24 = v9[24];
      v25 = v9[8];
      v26 = *(v9 - 8);
      v27 = v26 + v24;
      v28 = 4816 * (v26 + v24 + v25 + v12);
      v29 = v28 - 3685 * (v24 + v12);
      v30 = v28 - 10497 * (v26 + v25);
      v31 = -1597 * (v25 + v12);
      v32 = v31 + 6149 * v12 + v29;
      v33 = -8034 * (v26 + v24) + 12586 * v26 + v30;
      v34 = v31 + 8410 * v25 + v30;
      v35 = -8034 * v27 + 1223 * v24 + v29;
      v36 = v18 + (v21 << 12) + 512;
      v37 = v17 + (v22 << 12) + 512;
      v38 = (v22 << 12) - v17 + 512;
      *(v11 - 32) = (v32 + v36) >> 10;
      v11[24] = (v36 - v32) >> 10;
      *(v11 - 24) = (v33 + v37) >> 10;
      v11[16] = (v37 - v33) >> 10;
      *(v11 - 16) = (v34 + v38) >> 10;
      v11[8] = (v38 - v34) >> 10;
      *(v11 - 8) = (v35 + v23 + 512) >> 10;
      *v11 = (v23 + 512 - v35) >> 10;
      goto LABEL_10;
    }

    v39 = 4 * *(v9 - 32);
    v40 = &v69[v10];
    v40[24] = v39;
    v40[16] = v39;
    v40[8] = v39;
    *v40 = v39;
    *(v40 - 8) = v39;
    *(v40 - 16) = v39;
    *(v40 - 24) = v39;
    *(v11 - 32) = v39;
LABEL_10:
    v10 += 4;
    ++v9;
  }

  while (v10 != 160);
  v41 = 16;
  v42 = vdupq_n_s32(0x1010000u);
  v43.i64[0] = 0xFF000000FFLL;
  v43.i64[1] = 0xFF000000FFLL;
  do
  {
    v44 = *&v69[v41 + 12];
    v45 = *&v69[v41 - 4];
    v46 = *&v69[v41];
    v47 = *&v69[v41 + 4];
    v49 = *&v69[v41 - 16];
    v48 = *&v69[v41 - 12];
    v50 = (v46 + v49) << 12;
    v51 = (v49 - v46) << 12;
    v52 = v48 + v47;
    v53 = v48 + v44;
    v54.i64[0] = __PAIR64__(v45, v48);
    v55 = 4816 * (v48 + v47 + v45 + v44);
    v54.i64[1] = __PAIR64__(v44, v47);
    v56.i64[0] = v42.i64[0];
    v56.i64[1] = __PAIR64__(v50, v51);
    a9.i64[0] = __PAIR64__(v51, v50);
    v57.i64[0] = __PAIR64__(v51, v50);
    v57.i64[1] = __PAIR64__(2217 * (*&v69[v41 + 8] + *&v69[v41 - 8]) + 3135 * *&v69[v41 - 8], 2217 * (*&v69[v41 + 8] + *&v69[v41 - 8]) - 7567 * *&v69[v41 + 8]);
    LODWORD(v58) = -1597 * v52;
    HIDWORD(v58) = -8034 * (v45 + v44);
    v59 = vaddq_s32(v57, v42);
    v60 = vextq_s8(v57, vextq_s8(v57, v57, 8uLL), 0xCuLL);
    v61 = vsubq_s32(a9, v60).u64[0];
    v60.i32[0] = v55 - 3685 * v53;
    v60.i32[1] = v55 - 10497 * (v45 + v47);
    v59.i64[0] = v61;
    v62 = vaddq_s32(vmlaq_s32(vdupq_lane_s64(v58, 0), v54, xmmword_29B6C2CE0), vzip1q_s32(v60, vrev64q_s32(v60)));
    v63 = vaddq_s32(v59, v56);
    v64 = vrev64q_s32(v62);
    v65 = vrev64q_s32(v63);
    v66 = vshrq_n_s32(vaddq_s32(v62, vextq_s8(v65, v65, 8uLL)), 0x11uLL);
    v67 = vshrq_n_s32(vsubq_s32(v63, vextq_s8(v64, v64, 8uLL)), 0x11uLL);
    a9 = vuzp1q_s16(vcgtq_u32(v66, v43), vcgtq_u32(v67, v43));
    *result = vorr_s8(vmovn_s16(vandq_s8(vuzp1q_s16(vcgezq_s32(v66), vcgezq_s32(v67)), a9)), vbic_s8(vmovn_s16(vuzp1q_s16(v66, v67)), vmovn_s16(a9)));
    result = (result + a2);
    v41 += 32;
  }

  while (v41 != 272);
  return result;
}

uint64_t sub_29AB5C6C4(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int a5, int a6)
{
  if (a5 >= 1)
  {
    v6 = a6;
    v7 = (result + 1);
    v8 = a5;
    do
    {
      v9 = *a2++;
      v10 = (v9 << 20) | 0x80000;
      v11 = *a4++;
      v12 = v11 - 128;
      v13 = *a3++;
      v14 = v10 + 1470208 * v12;
      v15 = v10 - 748800 * v12 + ((-360960 * (v13 - 128)) & 0xFFFF0000);
      v16 = v10 + 1858048 * (v13 - 128);
      v17 = (v14 >> 20) & ~(v14 >> 31);
      if (v17 >= 255)
      {
        LOBYTE(v17) = -1;
      }

      LODWORD(result) = (v15 >> 20) & ~(v15 >> 31);
      if (result >= 255)
      {
        result = 255;
      }

      else
      {
        result = result;
      }

      v18 = (v16 >> 20) & ~(v16 >> 31);
      *(v7 - 1) = v17;
      *v7 = result;
      if (v18 >= 255)
      {
        LOBYTE(v18) = -1;
      }

      v7[1] = v18;
      v7[2] = -1;
      v7 += v6;
      --v8;
    }

    while (v8);
  }

  return result;
}

_BYTE *sub_29AB5C780(_BYTE *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = *a3;
  v5 = 3 * *a2;
  if (a4 == 1)
  {
    v6 = (v4 + v5 + 2) >> 2;
    result[1] = v6;
    *result = v6;
  }

  else
  {
    v7 = v5 + v4;
    v8 = (v7 + 2) >> 2;
    *result = v8;
    if (a4 >= 2)
    {
      v9 = a3 + 1;
      v10 = a2 + 1;
      v11 = result + 2;
      v12 = a4 - 1;
      do
      {
        v13 = *v10++;
        v14 = 3 * v13;
        v15 = *v9++;
        v16 = v14 + v15;
        *(v11 - 1) = (3 * v7 + v16 + 8) >> 4;
        *v11 = (v7 + 3 * v16 + 8) >> 4;
        v11 += 2;
        v7 = v16;
        --v12;
      }

      while (v12);
      v8 = (v16 + 2) >> 2;
    }

    result[2 * a4 - 1] = v8;
  }

  return result;
}

_BYTE *sub_29AB5C83C(_BYTE *result, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    v5 = result;
    do
    {
      v6 = *a2++;
      v7 = 3 * v6;
      v8 = *a3++;
      *v5++ = (v8 + v7 + 2) >> 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *sub_29AB5C874(_BYTE *result, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v4 = *a2;
  v5 = (a4 - 1);
  if (a4 == 1)
  {
    result[1] = v4;
    *result = v4;
  }

  else
  {
    *result = v4;
    result[1] = (a2[1] + 3 * v4 + 2) >> 2;
    if (a4 < 3)
    {
      v11 = 2;
    }

    else
    {
      v6 = a2 + 2;
      v7 = result + 3;
      v8 = v5 - 1;
      do
      {
        v9 = 3 * *(v6 - 1) + 2;
        *(v7 - 1) = (v9 + *(v6 - 2)) >> 2;
        v10 = *v6++;
        *v7 = (v9 + v10) >> 2;
        v7 += 2;
        --v8;
      }

      while (v8);
      v11 = 2 * v5;
    }

    v12 = &result[v11];
    *v12 = (a2[v5] + 3 * a2[a4 - 2] + 2) >> 2;
    v12[1] = a2[v5];
  }

  return result;
}

uint64_t sub_29AB5C92C(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a4 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(a5 - 1);
    v7 = vdupq_n_s64(0x10uLL);
    v8 = (result + 7);
    do
    {
      if (a5 >= 1)
      {
        v9 = *(a2 + v5);
        v10 = v8;
        v11 = (a5 + 15) & 0xFFFFFFF0;
        v12 = xmmword_29B430070;
        v13 = xmmword_29B433E10;
        v14 = xmmword_29B433E00;
        v15 = xmmword_29B433DF0;
        v16 = xmmword_29B4BE240;
        v17 = xmmword_29B4BE230;
        v18 = xmmword_29B4BE220;
        v19 = xmmword_29B4BE210;
        do
        {
          v20 = vmovn_s64(vcgeq_u64(v6, v12));
          if (vuzp1_s8(vuzp1_s16(v20, *v6.i8), *v6.i8).u8[0])
          {
            *(v10 - 7) = v9;
          }

          if (vuzp1_s8(vuzp1_s16(v20, *&v6), *&v6).i8[1])
          {
            *(v10 - 6) = v9;
          }

          if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v13))), *&v6).i8[2])
          {
            *(v10 - 5) = v9;
            *(v10 - 4) = v9;
          }

          v21 = vmovn_s64(vcgeq_u64(v6, v14));
          if (vuzp1_s8(*&v6, vuzp1_s16(v21, *&v6)).i32[1])
          {
            *(v10 - 3) = v9;
          }

          if (vuzp1_s8(*&v6, vuzp1_s16(v21, *&v6)).i8[5])
          {
            *(v10 - 2) = v9;
          }

          if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v15)))).i8[6])
          {
            *(v10 - 1) = v9;
            *v10 = v9;
          }

          v22 = vmovn_s64(vcgeq_u64(v6, v16));
          if (vuzp1_s8(vuzp1_s16(v22, *v6.i8), *v6.i8).u8[0])
          {
            v10[1] = v9;
          }

          if (vuzp1_s8(vuzp1_s16(v22, *&v6), *&v6).i8[1])
          {
            v10[2] = v9;
          }

          if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v17))), *&v6).i8[2])
          {
            v10[3] = v9;
            v10[4] = v9;
          }

          v23 = vmovn_s64(vcgeq_u64(v6, v18));
          if (vuzp1_s8(*&v6, vuzp1_s16(v23, *&v6)).i32[1])
          {
            v10[5] = v9;
          }

          if (vuzp1_s8(*&v6, vuzp1_s16(v23, *&v6)).i8[5])
          {
            v10[6] = v9;
          }

          if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v19)))).i8[6])
          {
            v10[7] = v9;
            v10[8] = v9;
          }

          v14 = vaddq_s64(v14, v7);
          v13 = vaddq_s64(v13, v7);
          v12 = vaddq_s64(v12, v7);
          v15 = vaddq_s64(v15, v7);
          v16 = vaddq_s64(v16, v7);
          v17 = vaddq_s64(v17, v7);
          v18 = vaddq_s64(v18, v7);
          v10 += 16;
          v19 = vaddq_s64(v19, v7);
          v11 -= 16;
        }

        while (v11);
      }

      ++v5;
      v8 += a5;
    }

    while (v5 != a4);
  }

  return result;
}

uint64_t sub_29AB5CB90(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _WORD *a7)
{
  v14 = a1 + 0x4000;
  if (*(a1 + 18468) <= 15)
  {
    sub_29AB5D044(a1);
    if (*(v14 + 2084) <= 15)
    {
      sub_29AB5D044(a1);
    }
  }

  v15 = *(v14 + 2080);
  v16 = *(a3 + (v15 >> 23));
  if (v16 == 255)
  {
    v27 = 0;
    v28 = (a3 + 1580);
    do
    {
      v29 = *v28++;
      ++v27;
    }

    while (WORD1(v15) >= v29);
    v30 = *(v14 + 2084);
    if (v27 == 8)
    {
LABEL_17:
      *(v14 + 2084) = v30 - 16;
      goto LABEL_20;
    }

    if (v30 < v27 + 9)
    {
      goto LABEL_20;
    }

    v31 = (dword_29B6C3BF4[v27 + 9] & (v15 >> (23 - v27))) + v28[17];
    if (v31 > 0xFF)
    {
      goto LABEL_20;
    }

    *(v14 + 2084) = v30 - v27 - 9;
    *(v14 + 2080) = v15 << (v27 + 9);
    v22 = (a3 + v31 + 1024);
  }

  else
  {
    v17 = a3 + v16;
    v18 = *(v17 + 1280);
    v19 = *(v14 + 2084);
    v20 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (v21 < 0 != v20)
    {
LABEL_20:
      v32 = "bad huffman code";
LABEL_21:
      v33 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      *v33 = v32;
      return result;
    }

    *(v14 + 2080) = v15 << v18;
    *(v14 + 2084) = v21;
    v22 = (v17 + 1024);
  }

  v23 = *v22;
  if (v23 > 0xF)
  {
    goto LABEL_20;
  }

  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = *(v14 + 2084);
  if (v24 < v23)
  {
    sub_29AB5D044(a1);
    v24 = *(v14 + 2084);
  }

  v20 = __OFSUB__(v24, v23);
  v25 = v24 - v23;
  if (v25 < 0 != v20)
  {
LABEL_13:
    v26 = 0;
  }

  else
  {
    v35 = *(v14 + 2080);
    v36 = dword_29B6C3BF4[v23];
    v37 = __ROR4__(v35, -v23);
    *(v14 + 2080) = v37 & ~v36;
    v38 = v37 & v36;
    *(v14 + 2084) = v25;
    v39 = dword_29B6C3C38[v23];
    if (v35 < 0)
    {
      v39 = 0;
    }

    v26 = v39 + v38;
  }

  v40 = a1 + 96 * a6;
  v41 = *(v40 + 18104);
  if (((v41 ^ v26) & 0x80000000) == 0)
  {
    v42 = (0x80000000 - v26) > v41;
    if ((v41 & v26) < 0 == __OFSUB__(v26 ^ 0x7FFFFFFF, v41))
    {
      v42 = (v26 ^ 0x7FFFFFFF) < v41;
    }

    if (v42)
    {
      v32 = "bad delta";
      goto LABEL_21;
    }
  }

  v43 = v41 + v26;
  *(v40 + 18104) = v43;
  v44 = *a7;
  if (*a7)
  {
    if ((v43 & 0x80000000) != 0)
    {
      if ((v43 + 0x8000 / v44) < 0 != __OFADD__(v43, 0x8000 / v44))
      {
        goto LABEL_33;
      }
    }

    else if (v43 > 0x7FFF / v44)
    {
LABEL_33:
      v32 = "can't merge dc and ac";
      goto LABEL_21;
    }
  }

  *a2 = v44 * v43;
  v74 = a7;
  v45 = *(v14 + 2084);
  v46 = 1;
  v32 = "bad huffman code";
  v47 = byte_29B6C3784;
  do
  {
    if (v45 <= 15)
    {
      sub_29AB5D044(a1);
    }

    v48 = *(v14 + 2080);
    v49 = v48 >> 23;
    v50 = *(a5 + 2 * (v48 >> 23));
    if (v50)
    {
      v51 = v50 & 0xF;
      v52 = *(v14 + 2084);
      v20 = __OFSUB__(v52, v50 & 0xF);
      v45 = v52 - (v50 & 0xF);
      if (v45 < 0 != v20)
      {
        goto LABEL_21;
      }

      v53 = v50;
      v54 = (v50 >> 4) + v46;
      *(v14 + 2080) = v48 << v51;
      *(v14 + 2084) = v45;
      v46 = v54 + 1;
      *(a2 + v47[v54]) = a7[v47[v54]] * (v53 >> 8);
    }

    else
    {
      if (*(v14 + 2084) <= 15)
      {
        sub_29AB5D044(a1);
        v48 = *(v14 + 2080);
        v49 = v48 >> 23;
      }

      v55 = *(a4 + v49);
      if (v55 == 255)
      {
        v58 = 0;
        v59 = (a4 + 1580);
        do
        {
          v60 = *v59++;
          ++v58;
        }

        while (WORD1(v48) >= v60);
        v30 = *(v14 + 2084);
        if (v58 == 8)
        {
          goto LABEL_17;
        }

        v61 = v58 + 9;
        if (v30 < v58 + 9)
        {
          goto LABEL_21;
        }

        v55 = (dword_29B6C3BF4[v58 + 9] & (v48 >> (23 - v58))) + v59[17];
        if (v55 > 0xFF)
        {
          goto LABEL_21;
        }

        v45 = v30 - v58 - 9;
        *(v14 + 2084) = v45;
        *(v14 + 2080) = v48 << v61;
      }

      else
      {
        v56 = *(a4 + 1280 + v55);
        v57 = *(v14 + 2084);
        v20 = __OFSUB__(v57, v56);
        v45 = v57 - v56;
        if (v45 < 0 != v20)
        {
          goto LABEL_21;
        }

        *(v14 + 2080) = v48 << v56;
        *(v14 + 2084) = v45;
      }

      v62 = *(a4 + 1024 + v55);
      v63 = v62 & 0xF;
      if ((v62 & 0xF) != 0)
      {
        v64 = (v62 >> 4) + v46;
        v65 = v47;
        v66 = v47[v64];
        if (v45 < v63)
        {
          sub_29AB5D044(a1);
          v45 = *(v14 + 2084);
        }

        v67 = v45 - v63;
        if (v45 >= v63)
        {
          v69 = *(v14 + 2080);
          v70 = __ROR4__(v69, -v63);
          v71 = dword_29B6C3BF4[v63];
          *(v14 + 2080) = v70 & ~v71;
          v72 = v70 & v71;
          *(v14 + 2084) = v67;
          if (v69 >= 0)
          {
            v73 = dword_29B6C3C38[v63];
          }

          else
          {
            LOWORD(v73) = 0;
          }

          v68 = v73 + v72;
          v45 = v67;
        }

        else
        {
          v68 = 0;
        }

        v46 = v64 + 1;
        a7 = v74;
        *(a2 + v66) = v74[v66] * v68;
        v47 = v65;
      }

      else
      {
        if (v62 != 240)
        {
          return 1;
        }

        v46 += 16;
        a7 = v74;
      }
    }
  }

  while (v46 < 64);
  return 1;
}

uint64_t sub_29AB5D044(uint64_t result)
{
  v1 = result;
  v2 = result + 0x4000;
  while (1)
  {
    if (*(v2 + 2092))
    {
      v3 = 0;
      goto LABEL_4;
    }

    v5 = *v1;
    v6 = *(*v1 + 192);
    if (v6 < *(*v1 + 200))
    {
      *(v5 + 192) = v6 + 1;
      v3 = *v6;
      goto LABEL_13;
    }

    v3 = *(v5 + 48);
    if (v3)
    {
      break;
    }

LABEL_4:
    v4 = *(v2 + 2084);
    *(v2 + 2080) |= v3 << (24 - v4);
    *(v2 + 2084) = v4 + 8;
    if (v4 >= 17)
    {
      return result;
    }
  }

  v7 = (v5 + 56);
  result = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
  *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
  if (result)
  {
    v8 = &v7[result];
    v3 = *v7;
  }

  else
  {
    v3 = 0;
    *(v5 + 48) = 0;
    v8 = (v5 + 57);
    *(v5 + 56) = 0;
  }

  *(v5 + 192) = v5 + 57;
  *(v5 + 200) = v8;
LABEL_13:
  if (v3 != 255)
  {
    goto LABEL_4;
  }

  v9 = *v1;
  v10 = *(*v1 + 192);
  if (v10 < *(*v1 + 200))
  {
    goto LABEL_15;
  }

  LODWORD(v10) = *(v9 + 48);
  if (v10)
  {
    goto LABEL_20;
  }

  while (v10 == 255)
  {
    v9 = *v1;
    v10 = *(*v1 + 192);
    if (v10 < *(*v1 + 200))
    {
LABEL_15:
      *(v9 + 192) = v10 + 1;
      LOBYTE(v10) = *v10;
      continue;
    }

    LOBYTE(v10) = 0;
    if (*(v9 + 48))
    {
LABEL_20:
      v11 = (v9 + 56);
      result = (*(v9 + 16))(*(v9 + 40), v9 + 56, *(v9 + 52));
      *(v9 + 184) += *(v9 + 192) - *(v9 + 208);
      if (result)
      {
        v12 = &v11[result];
        LOBYTE(v10) = *v11;
      }

      else
      {
        LOBYTE(v10) = 0;
        *(v9 + 48) = 0;
        v12 = (v9 + 57);
        *(v9 + 56) = 0;
      }

      *(v9 + 192) = v9 + 57;
      *(v9 + 200) = v12;
    }
  }

  if (!v10)
  {
    v3 = 255;
    goto LABEL_4;
  }

  *(v2 + 2088) = v10;
  *(v2 + 2092) = 1;
  return result;
}

uint64_t sub_29AB5D200(_DWORD *a1, _OWORD *a2, uint64_t a3, int a4)
{
  v4 = a1 + 4096;
  if (a1[4622])
  {
    goto LABEL_2;
  }

  if (a1[4617] <= 15)
  {
    sub_29AB5D044(a1);
  }

  if (!v4[527])
  {
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    if (v4[521] <= 15)
    {
      sub_29AB5D044(a1);
    }

    v14 = v4[520];
    v15 = *(a3 + (v14 >> 23));
    if (v15 == 255)
    {
      v25 = 0;
      v26 = (a3 + 1580);
      do
      {
        v27 = *v26++;
        ++v25;
      }

      while (WORD1(v14) >= v27);
      v28 = v4[521];
      if (v25 == 8)
      {
        v4[521] = v28 - 16;
        goto LABEL_2;
      }

      v29 = v25 + 9;
      if (v28 < v25 + 9)
      {
        goto LABEL_2;
      }

      v30 = (dword_29B6C3BF4[v25 + 9] & (v14 >> (23 - v25))) + v26[17];
      if (v30 > 0xFF)
      {
        goto LABEL_2;
      }

      v20 = v28 - v25 - 9;
      v4[521] = v20;
      v4[520] = v14 << v29;
      v21 = (a3 + v30 + 1024);
    }

    else
    {
      v16 = a3 + v15;
      v17 = *(a3 + v15 + 1280);
      v18 = v4[521];
      v19 = __OFSUB__(v18, v17);
      v20 = v18 - v17;
      if (v20 < 0 != v19)
      {
        goto LABEL_2;
      }

      v4[520] = v14 << v17;
      v4[521] = v20;
      v21 = (v16 + 1024);
    }

    v22 = *v21;
    if (v22 < 0x10)
    {
      if (!*v21)
      {
        goto LABEL_22;
      }

      if (v20 < v22)
      {
        sub_29AB5D044(a1);
        v20 = v4[521];
      }

      v23 = v20 - v22;
      if (v20 >= v22)
      {
        v31 = v4[520];
        v32 = dword_29B6C3BF4[v22];
        v33 = __ROR4__(v31, -v22);
        v4[520] = v33 & ~v32;
        v34 = v33 & v32;
        v4[521] = v23;
        v35 = dword_29B6C3C38[v22];
        if (v31 < 0)
        {
          v35 = 0;
        }

        v24 = v35 + v34;
      }

      else
      {
LABEL_22:
        v24 = 0;
      }

      v36 = &a1[24 * a4];
      v37 = v36[4526];
      if (((v37 ^ v24) & 0x80000000) == 0)
      {
        v38 = (0x80000000 - v24) > v37;
        if ((v37 & v24) < 0 == __OFSUB__(v24 ^ 0x7FFFFFFF, v37))
        {
          v38 = (v24 ^ 0x7FFFFFFF) < v37;
        }

        if (v38)
        {
          v5 = off_2A1B71BE0(off_2A1B71BE0);
          result = 0;
          v7 = "bad delta";
          goto LABEL_3;
        }
      }

      v39 = v37 + v24;
      v36[4526] = v39;
      v40 = v4[528];
      if (((1 << v40) ^ v39) < 0)
      {
        if (v40 == 31)
        {
          if (v39 < 1)
          {
            goto LABEL_45;
          }
        }

        else if ((v39 + (0x8000u >> v40)) < 0 == __OFADD__(v39, 0x8000u >> v40))
        {
LABEL_45:
          *a2 = v39 << v40;
          return 1;
        }
      }

      else if ((0x7FFFu >> v40) >= v39)
      {
        goto LABEL_45;
      }
    }

LABEL_2:
    v5 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v7 = "can't merge dc and ac";
LABEL_3:
    *v5 = v7;
    return result;
  }

  v12 = v4[521];
  if (v12 <= 0)
  {
    sub_29AB5D044(a1);
    v12 = v4[521];
    if (v12 < 1)
    {
      return 1;
    }
  }

  v13 = v4[520];
  v4[520] = 2 * v13;
  v4[521] = v12 - 1;
  result = 1;
  if (v13 < 0)
  {
    *a2 += 1 << v4[528];
  }

  return result;
}